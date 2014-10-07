#  Team Members hyujghj:     
#  % Effort    :   
#
# ECE369,  
# 

########################################################################################################################
### data
########################################################################################################################
.data
# test input
# asize : dimension of the frame [i,j], Generation counts, Row_No (for output), Column_No(for output)
#         i: number of rows, j: number of cols
#         Generation Count: For number of Generations frames need to be updated. Initial Generation is consider to be 0(seed generation).  
#         Row_No: Output Should count number of live cells in this given Row Number(Row_No)
#         Column_No: Output Should count number of live cells in this given column number(Column_No)
# frame : frame data. Each bit of the word represents 1 cell i.e. Each word contains 32 bits. Each word is part of a Row.(second dimension is multiple of 32)
# 
# Display on console the cell status(whole memory word) after given number of Generations are complete.
# Also display number of alive cells in given Row_No using $v0 and in coloumn_No using $v1. 
# $v0 is for number of cells alive in Row_No / $v1 is for number of cells alive in Column_No

# test 0 For the 5X32 frame size, Iteration Count 6, Row_No:3, Column_No: 20
# The result should be: $v0:6, $v1:1
#on qtspim console you print the matrix after given number of generation is completed:
#542482432
#1342222336
#-1878433792
#1611014144
#6537216
asize0:  .word    5,32,5,3,20    
frame0:  .word    0x1637aabb, 
         .word    0xa0a0a0a0,
		 .word    0x20203030,
		 .word    0x80,
		 .word    0x30020
		 
		 .word    0x1637aabb, 
         .word    0xa0a0a0a0,
		 .word    0x20203030,
		 .word    0x80,
		 .word    0x30020
		 
		 
# test 1 For the 20X64 frame size, Iteration Count 25, Row_No:13, Column_No:60
# The result should be: $v0:15, $v1:0
#on qtspim console you print the matrix after given number of generation is completed:
#134656 1545
#3584 4210696
#0 11554947
#1052 22119296
#1044 94504960
#51090 96747520
#16818484 265094656
#25178900 1570304
#65024512 3792896
#23172096 590368
#75504640 885606
#103646208 1074069830
#117801984 -536739258
#62956288 -1879047736
#21236867 -805306304
#25216006 536871072
#15794306 536887108
#218113 -268419580
#294400 -402633214
#334336 671106562
asize1:  .word    20,64,25,13,60    
frame1:  .word    0xababcdcd, 0x1111ff00,
         .word    0x00,0xf0,
         .word    0x101010, 0x20202020,
         .word    0xa1001, 0x998,
         .word    0x927332, 0xa1a10000,
         .word    0x7676aa, 0x552622,
         .word    0xa0a0a0, 0x2223338,
         .word    0x1111ffff, 0xff1100,
         .word    0x7232, 0x445533,
         .word    0x63bcd, 0xbcd89,
         .word    0x1234abc, 0x1122,
         .word    0x345abc, 0x4536abc,
         .word    0x12346, 0x9090,
         .word    0xbbbb000, 0xdddd00,
         .word    0x909090, 0x12032d,
         .word    0x234512, 0x56736,
		 .word    0xabcd22, 0x123bc,
		 .word    0x56765, 0x787878,
		 .word    0x444490, 0x676723,
		 .word    0x2345, 0x5432
		    
		 
		 .word    0xababcdcd, 0x1111ff00,
         .word    0x00,0xf0,
         .word    0x101010, 0x20202020,
         .word    0xa1001, 0x998,
         .word    0x927332, 0xa1a10000,
         .word    0x7676aa, 0x552622,
         .word    0xa0a0a0, 0x2223338,
         .word    0x1111ffff, 0xff1100,
         .word    0x7232, 0x445533,
         .word    0x63bcd, 0xbcd89,
         .word    0x1234abc, 0x1122,
         .word    0x345abc, 0x4536abc,
         .word    0x12346, 0x9090,
         .word    0xbbbb000, 0xdddd00,
         .word    0x909090, 0x12032d,
         .word    0x234512, 0x56736,
		 .word    0xabcd22, 0x123bc,
		 .word    0x56765, 0x787878,
		 .word    0x444490, 0x676723,
		 .word    0x2345, 0x5432

# test 2 For the 32X32 frame size, Iteration Count 100, Row_No:16, Column_No:16
# The result should be:$v0:8 , $v1:6
#0
#0
#0
#0
#0
#16777216
#16785408
#16785408
#36864
#65536
#147576
#66004
#836
#16777432
#-2118074128
#-2147378848
#-1895714432
#151035904
#83951616
#67584
#7168
#11264
#12288
#0
#0
#0
#0
#0
#0
#0
#0
#0
asize2:  .word    32,32,100,16,16
frame2:  .word    0xbbbb000, 
         .word    0x927332, 
         .word    0x1234abc, 
         .word    0x56765, 
         .word    0x345abc, 
         .word    0x2345,
         .word    0x20203030,
         .word    0x1122,
         .word    0xfa0110af,
         .word    0x5432,
         .word    0xdddd00,
         .word    0x909090, 
         .word    0xdddd00,
         .word    0x4536abc,
         .word    0x445533,
         .word    0xa1a10000,
         .word    0x12032d,
		 .word    0x787878,
         .word    0xababcdcd, 
         .word    0x1111ff00,
         .word    0xa0a0a0, 
         .word    0x20203030,
         .word    0x2223338,
         .word    0x1111ff00,
         .word    0x12032d,
         .word    0x2223338,
         .word    0x1111ff00,
         .word    0xdddd00,
         .word    0x445533,
         .word    0x4536abc,
         .word    0x20203030,
         .word    0x20203030
		 
		 
		 .word    0xbbbb000, 
         .word    0x927332, 
         .word    0x1234abc, 
         .word    0x56765, 
         .word    0x345abc, 
         .word    0x2345,
         .word    0x20203030,
         .word    0x1122,
         .word    0xfa0110af,
         .word    0x5432,
         .word    0xdddd00,
         .word    0x909090, 
         .word    0xdddd00,
         .word    0x4536abc,
         .word    0x445533,
         .word    0xa1a10000,
         .word    0x12032d,
		 .word    0x787878,
         .word    0xababcdcd, 
         .word    0x1111ff00,
         .word    0xa0a0a0, 
         .word    0x20203030,
         .word    0x2223338,
         .word    0x1111ff00,
         .word    0x12032d,
         .word    0x2223338,
         .word    0x1111ff00,
         .word    0xdddd00,
         .word    0x445533,
         .word    0x4536abc,
         .word    0x20203030,
         .word    0x20203030
         
newline: .asciiz     "\n" 


########################################################################################################################
### main
########################################################################################################################

.text

.globl main

main: 
    addi    $sp, $sp, -4    # Make space on stack
    sw      $ra, 0($sp)     # Save return address
         
    # Start test 0 
    ############################################################
    la      $a0, asize0     # 1st parameter: address of asize0[0]
    la      $a1, frame0     # 2nd parameter: address of frame0[0]
       
    jal     GOL             # call function
    jal     print_result    # print results to console
    
    ############################################################
    # End of test 0   

   
    # Start test 1
    ############################################################
    la      $a0, asize1     # 1st parameter: address of asize1[0]
    la      $a1, frame1     # 2nd parameter: address of frame1[0]
       
    jal     GOL           # call function
    jal     print_result    # print results to console
    ############################################################
    # End of test 1   
                    
               
    # Start test 2
    ############################################################
    la      $a0, asize2     # 1st parameter: address of asize2[0]
    la      $a1, frame2     # 2nd parameter: address of frame2[0]
    
    jal     GOL             # call function
    jal     print_result    # print results to console 
    ############################################################
    # End of test 2   
      
   
    lw      $ra, 0($sp)         # Restore return address
    addi    $sp, $sp, 4         # Restore stack pointer
    jr      $ra                 # Return

################### Print Result ####################################
print_result:
    # Printing $v0
    add     $a0, $v0, $zero     # Load $v0 for printing
    li      $v0, 1              # Load the system call numbers
    syscall
   
    # Print newline.
    la      $a0, newline          # Load value for printing
    li      $v0, 4                # Load the system call numbers
    syscall
   
    # Printing $v1
    add     $a0, $v1, $zero      # Load $v1 for printing
    li      $v0, 1                # Load the system call numbers
    syscall

    # Print newline.
    la      $a0, newline          # Load value for printing
    li      $v0, 4                # Load the system call numbers
    syscall
   
    # Print newline.
    la      $a0, newline          # Load value for printing
    li      $v0, 4                # Load the system call numbers
    syscall
   
    jr      $ra                   #function return

#####################################################################
### Game of Life
#####################################################################


# game_of_life.s 
#The Conway’s Game of Life, also known as no player game,It was 
#inspired from the idea of Von Neumans self-replicating machine in cellular automata.

#Rules of the Game are:
#At each generation, the following transitions should happen
#1. Any live cell with fewer than two live neighbors dies, as if caused by under-population.
#2. Any live cell with two or three live neighbors, lives on to the next generation.
#3. Any live cell with more than three live neighbors dies, as if by overcrowding.
#4. Any dead cell with exactly three live neighbors becomes a live cell, as if by reproduction.
#Additional rules needs to be followed:
#5. All the dead cells are represented by ‘0’ and all the alive cells  by '1'
#6. Each memory location is holding 32 cells.
#7. Matrix is a wrap around matrix i.e. opposite edges of a matrix are considered as adjacent edges.
#
#The initial pattern constitutes the seed of the system. The first generation is created by applying 
#the above rules simultaneously to every cell in the seed. Births and deaths occur simultaneously. 
#Each Generation is a pure function of the preceding one. The rules continue to be applied 
#repeatedly to create further generations. 



# Sample Inputs and Output shown below:
# Test 0 For the 5X32 frame size, Iteration Count 5, Row_No:3, Column_No: 20
#asize0: .word    5,32,6,3,20       row dimension, column dimension, Generation count, Row_No (Code should find out total number of alive cell in this row), Column_No(Code should find out total number of alive cell in this Column)
#frame0: .word    0x1637aabb,   ##Generation 0
         .word    0xa0a0a0a0,
		 .word    0x20203030,
		 .word    0x80,
		 .word    0x30020

## The result should be: $v0:6, $v1:1
#on qtspim console you print the matrix after given number of generation is completed:
#542482432
#1342222336
#-1878433792
#1611014144
#6537216

.text
.globl  GOL


# Preconditions:
#   1st parameter (a0) address of the first element of the dimension info (address of asize[0])
#   2nd parameter (a1) address of the first element of the frame array (address of frame[0][0])
# Postconditions:	
# Display on console the cell status(whole memory word) after given number of Generations are complete.
#   result (v0) number of cells alive in Row_No
#          (v1) number of cells alive in Column_No


# Begin subroutine
GOL:  
    li      $v0, 0              # reset $v0 and $V1
    li      $v1, 0

    # insert your code here
    #your code begin
	#$t0 is Checker Number
	#$t1 is the address after the last address
	#$t2 is the word we're analyzing
	#$t3 is num of rows
	#$t4 is num of cols
	#$t5 the new value	
	#$t6 is last word address
	#$t7 is the current address
	#$t8 is the count of alive neighbors
	#$t9 is the current cell, alive (1) or dead (0)
	
	# 4(a0), access number of columns
	lw $t3, 0($a0)
	lw $t4, 4($a0)
	# Load t2, a1 to keep track of the original address
	lw $t2, 0($a1)
	#Get offset last row address
	
	la $t7, $a1 #Current Address
	
	srl $t6, $t4, 4
	mult $t6, $t6, $t3
	add $t6, $a1, $t6
	# $t1 = 4(rows+1) + a1
	addi $t1, $t6, 4
	# $t0 = 1 , checker number
	addi $t0, $zero, 1
	and $t5, $t2, $t0
	
	
	
toprowCheck:
	add $t8, $zero, $zero
	bne $a1, $t7, bottomRowCheck
	beq $t0, 1, cornerTopRight
	bne $t0, 10000000000000000000000000000000, aliveTopCheck
	j cornerTopLeft  #Get rid of jump and fill in code here
bottomRowCheck:
	bne $t6, $t7, aliveCheck
	beq $t0, 1, cornerBottomRight
	bne $t0, 10000000000000000000000000000000, aliveBottomCheck
	j cornerBottomLeft #Get rid of jump and fill in code here
cornerTopRight:
cornerBottomRight:	
cornerTopLeft:	
cornerBottomLeft:

aliveTopCheck:
	and $t5, $t0, $t2 #stores Main Cell's alive or dead status in t5
	lw $t2, 0($t6)	#loads last word
	add $t9, $zero, $zero #initialize t9 to 0
	beq $t5, $zero, ContTopCheck #if dead
	addi $t9, $zero, 1 #if alive, set t9 to 1
ContTopCheck:
	srl $t0, 1 #go to top right cell as per t6 loaded into t2
	and $t5, $t0, $t2 #stores top-right cell's status
	beq $t5, $zero, ContTopCheck1 #if dead
	addi $t8, $t8, 1 #else, add 1 to count
ContTopCheck1:	
	sll $t0, 1 #top middle
	and $t5, $t0, $t2
	beq $t5, $zero, ContTopCheck2
	addi $t8, $t8, 1
ContTopCheck2:
	sll $t0, 1 #top left
	and $t5, $t0, $t2
	beq $t5, $zero, ContTopCheck3
	addi $t8, $t8, 1
ContTopCheck3:
	lw $t2 0($a1) #load first row (word)
	srl $t0, 2 #go to right cell
	and $t5, $t0, $t2
	beq $t5, $zero, ContTopCheck4
	addi $t8, $t8, 1
ContTopCheck4:`
	sll $t0, 2 #left cell
	and $t5, $t0, $t2
	beq $t5, $zero, ContTopCheck5
	addi $t8, $t8, 1
ContTopCheck5:
	srl $t7, $t4, 4 #divide num of cols by 8
	add $t7, $t7, $a1 #load next word's address into t7; add (# rows/8) to t7
	lw $t2, $t7	#load word beneath Main Cell
	srl $t0, 2	#go to bottom right cell
	and $t5, $t0, $t2 #store bottom-right cell's status
	beq $t5, $zero, ContTopCheck7 #if dead
	addi $t8, $t8, 1 #else add 1 to count
ContTopCheck7:	
	sll $t0, 1 #go to bottom middle cell
	and $t5, $t0, $t2
	beq $t5, $zero, ContTopCheck8
	addi $t8, $t8, 1
ContTopCheck8:
	sll $t0, 1 #go to bottom left cell
	and $t5, $t0, $t2
	lw $t2 0($a1) #reload the first word
	srl $t0, 1 #move checker number back to Main Cell position
	beq $t5, $zero, setAliveOrDead
	addi $t8, $t8, 1
	j setAliveOrDead
setAliveOrDead:
	beq $t9, 1, CellIsAlive
	j CellIsDead
CellIsAlive:
	
CellIsDead:
	
	
	
	
aliveBottomCheck:


aliveCheck:
	bne $t2,$zero, alive
	
	#dead
	

	
alive:	
	
	
	# addi t2, 4
	# bne $t1, t2, GOL
	# Call back to GOL to go to the next frame word 
	
	#Loop that left shifts until $t0 is zero
Shifter: 
    # Your code end
