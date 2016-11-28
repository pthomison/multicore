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
  
  mainp0:
    # Locking SP
    ori   $a0, $zero, lock1
    jal   lockSR

    # save return address 
    push  $ra

    # Unlocking SP
    ori   $a0, $zero, lock1
    jal   unlockSR

    # seeding crc generator                 
    ori   $t0, $zero, seed
    lw    $a0, 0($t0)
    jal   crc32SR
    add   $s0, $zero, $v0

    # Locking SP
    ori   $a0, $zero, lock1
    jal   lockSR

    # Pushing First CRC Val onto Stack
    push $s0

    # Unlocking SP
    ori   $a0, $zero, lock1
    jal   unlockSR

    loop:
      # generating crc val
      add   $a0, $zero, $s0
      jal   crc32SR
      add    $s0, $zero, $v0

      # Locking SP
      ori   $a0, $zero, lock1
      jal   lockSR

      # Pushing CRC Val onto Stack
      push $s0

      # Unlocking SP
      ori   $a0, $zero, lock1      # move lock to arguement register
      jal   unlockSR              # release the lock

      # Incrementing counter
      ori   $t0, $zero, numCount
      lw    $t1, 0($t0)
      addi  $t1, $t1, 0x0001
      sw    $t1, 0($t0)

      ori   $t0, $zero, 0x0100
      bne   $t1, $t0, loop

    pop   $ra                 # get return address
    jr    $ra                 # return to caller


#----------------------------------------------------------
# Second Processor -- Consumer
#----------------------------------------------------------
    org   0x500               # second processor p1
    ori $sp, $zero, 0x3ffc
    jal   mainp1              # go to program
    halt

  mainp1:	
    push  $ra                 # save return address

  waitForData:
    # Unlocking SP if it is locked
    ori   $a0, $zero, lock1
    jal   unlockSR

    # Locking SP
    ori   $a0, $zero, lock1
    jal   lockSR

    # Waiting for data
    beq $sp, $s0, waitForData

    # Grabbing Data
    pop $s1

    # Unlocking SP
    ori   $a0, $zero, lock1
    jal   unlockSR

    # Masking off top 16
    lui $t0, FFFF
    srl $t0, $t0, 4
    or  $s1, $s1, $t0

    # Adding To Total
    ori $t0, $zero, total
    lw  $t1, 0($t0)
    add $t1, $t1, $s1
    sw  $t1, 0($t0)

    # Checking Min
    ori $t0, $zero, min
    lw  $t1, 0($t0)

    # Checking Max



    pop   $ra                 # get return address
    jr    $ra                 # return to callerpushSS

#----------------------------------------------------------
# Subroutines
#----------------------------------------------------------

  # pass in an address to lock function in argument register 0
  # returns when lock is available
  lockSR:
    ll    $t0, 0($a0)         # load lock location
    bne   $t0, $0, lockSR     # wait on lock to be open
    addiu $t0, $t0, 1
    sc    $t0, 0($a0)
    beq   $t0, $0, lockSR     # if sc failed retry
    jr    $ra


  # pass in an address to unlock function in argument register 0
  # returns when lock is free
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
  max:
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
  min:
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
  pushSS:
    push $ra
    push $a0

    # Locking SSP
    ori   $a0, $zero, SSPlock
    jal   lockSR

    lw    $t0, 0(SSP) 
    addiu $t0, $t0, -4
    sw    $a0, 0($t0)
    sw    $t0, 0(SSP)

    # Unlocking SP
    ori   $a0, $zero, SSPlock
    jal   unlockSR

    pop $a0
    pop $ra
    jr  $ra

  # Pop Synced Stack (1 arg, 1 return)
  popSS:
    push $ra
    push $a0

    # Locking SSP
    ori   $a0, $zero, SSPlock
    jal   lockSR

    lw    $t0, 0(SSP) 
    lw    $v0, 0($t0)
    addiu $t0, $t0, 4
    sw    $t0, 0(SSP)

    # Unlocking SP
    ori   $a0, $zero, SSPlock
    jal   unlockSR

    pop $a0
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



