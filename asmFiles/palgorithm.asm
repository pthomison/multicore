#------------------------------------------
# Parallel Algorithm
# - Patrick Thomison
#------------------------------------------

#----------------------------------------------------------
# First Processor -- Producer
#----------------------------------------------------------
    org   0x0000               # first processor p0
    ori   $sp, $zero, 0x3ffc
    jal   mainp0               # go to program
    halt


#----------------------------------------------------------
# Second Processor -- Consumer
#----------------------------------------------------------
    org   0x200               # second processor p1
    ori   $sp, $zero, 0x3ffc
    jal   mainp1              # go to program
    halt


  mainp0:
    # save return address 
    push  $ra

    # seeding crc generator                 
    ori   $t0, $zero, seed
    lw    $a0, 0($t0)
    jal   crc32SR
    add   $s0, $zero, $v0

    # Pushing First CRC Val onto Stack
    or   $a0, $zero, $s0
    jal ssPushSR

    loop:
      # generating crc val
      add   $a0, $zero, $s0
      jal   crc32SR
      add    $s0, $zero, $v0

      # Pushing CRC Val onto Stack
      or   $a0, $zero, $s0
      jal ssPushSR


      # Incrementing counter
      ori   $t0, $zero, numCountOne
      lw    $t1, 0($t0)
      addi  $t1, $t1, 1
      sw    $t1, 0($t0)

      ori   $t0, $zero, 0x00FF
      bne   $t1, $t0, loop

    pop   $ra                 # get return address
    jr    $ra                 # return to caller

  mainp1:	
    push  $ra                 # save return address

    waitForData:
    # Unlocking SP if it is locked
    ori   $a0, $zero, SSPlock
    jal   unlockSR

    # Unlocked SP gives P0 a chance to process data

    # Locking SP
    ori   $a0, $zero, SSPlock
    jal   lockSR

    # Waiting for data
    ori $t0, $zero, SSP
    ori $t2, $zero, 0x2000
    lw  $t1, 0($t0)
    beq $t1, $t2, waitForData

    # Unlocking SP if it is locked
    ori   $a0, $zero, SSPlock
    jal   unlockSR

    # Grabbing Data
    jal ssPopSR
    or $s0, $zero, $v0

    # Masking off top 16
    lui $t0, 0xFFFF
    srl $t0, $t0, 16
    and $s0, $s0, $s0
    and $s0, $t0, $s0

    # Adding To Total
    ori $t0, $zero, total
    lw  $t1, 0($t0)
    add $t1, $t1, $s0
    sw  $t1, 0($t0)

    # Checking Min
    ori $t0, $zero, min
    lw  $a0, 0($t0)
    or  $a1, $zero, $s0
    jal minSR
    ori $t0, $zero, min
    sw  $v0, 0($t0)

    # Checking Max
    ori $t0, $zero, max
    lw  $a0, 0($t0)
    or  $a1, $zero, $s0
    jal maxSR
    ori $t0, $zero, max
    sw  $v0, 0($t0)

    # Incrementing counter
    ori   $t0, $zero, numCountTwo
    lw    $t1, 0($t0)
    addi  $t1, $t1, -1
    sw    $t1, 0($t0)

    ori   $t0, $zero, 0x0000
    bne   $t1, $t0, waitForData

    ori $t0, $zero, min
    ori $t1, $zero, max
    ori $t2, $zero, total

    lw $s0, 0($t0)
    lw $s1, 0($t1)
    lw $s2, 0($t2)
    srl $s3, $s2, 8

    pop   $ra                 # get return address
    jr    $ra                 # return to callerpushSS

#----------------------------------------------------------
# Subroutines
#----------------------------------------------------------

  # pass in an address to lock function in argument register 0
  lockSR:
    ll    $t0, 0($a0)         # load lock location
    bne   $t0, $0, lockSR     # wait on lock to be open
    addiu $t0, $t0, 1
    sc    $t0, 0($a0)
    beq   $t0, $0, lockSR     # if sc failed retry
    jr    $ra


  # pass in an address to unlock function in argument register 0
  unlockSR:
    sw    $0, 0($a0)
    jr    $ra

  # crc gen: $v0 = crc32($a0)
  crc32SR:
    lui $t1, 0x04C1
    ori $t1, $t1, 0x1DB7
    or $t2, $0, $0
    ori $t3, $0, 32
  l1:
    slt $t4, $t2, $t3
    beq $t4, $zero, l2

    srl $t4, $a0, 31
    sll $a0, $a0, 1
    beq $t4, $0, l3
    xor $a0, $a0, $t1
  l3:
    addiu $t2, $t2, 1
    j l1
  l2:
    or $v0, $a0, $0
    jr $ra

  # max (a0=a,a1=b) returns v0=max(a,b)
  maxSR:
    push  $ra
    push  $a0
    push  $a1
    or    $v0, $0, $a0
    slt   $t0, $a0, $a1
    beq   $t0, $0, maxrtn
    or    $v0, $0, $a1
  maxrtn:
    pop   $a1
    pop   $a0
    pop   $ra
    jr    $ra

  # min (a0=a,a1=b) returns v0=min(a,b)
  minSR:
    push  $ra
    push  $a0
    push  $a1
    or    $v0, $0, $a0
    slt   $t0, $a1, $a0
    beq   $t0, $0, minrtn
    or    $v0, $0, $a1
  minrtn:
    pop   $a1
    pop   $a0
    pop   $ra
    jr    $ra

  # Push Synced Stack (1 arg, 0 return)
  ssPushSR:
    push $ra
    push $a0
    or   $t7, $zero, $a0

    # Locking SSP
    ori   $a0, $zero, SSPlock
    jal   lockSR

    ori   $t0, $zero, SSP
    lw    $t1, 0($t0) 
    addiu $t1, $t1, -4
    sw    $t7, 0($t1)
    sw    $t1, 0($t0)

    # Unlocking SP
    ori   $a0, $zero, SSPlock
    jal   unlockSR

    pop $a0
    pop $ra
    jr  $ra

  # Pop Synced Stack (0 arg, 1 return)
  ssPopSR:
    push $ra

    # Locking SSP
    ori   $a0, $zero, SSPlock
    jal   lockSR

    ori   $t1, $zero, SSP
    lw    $t0, 0($t1) 
    lw    $v0, 0($t0)
    addiu $t0, $t0, 4
    sw    $t0, 0($t1)

    # Unlocking SP
    ori   $a0, $zero, SSPlock
    jal   unlockSR

    pop $ra
    jr  $ra

#----------------------------------------------------------
# Memory Locations
#----------------------------------------------------------

  seed:
    cfw 0x12345678

  numCountOne:
    cfw 0x0000

  numCountTwo:
    cfw 0x0100

  total:
    cfw 0x0000

  average:
    cfw 0x0000

  min:
    cfw 0xFFFF

  max:
    cfw 0x0000

  SSPlock:
    cfw 0x0

  SSP:
    cfw 0x2000



