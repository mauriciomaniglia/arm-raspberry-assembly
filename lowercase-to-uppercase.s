.global _start

_start:
    MOV R7, #3 @Syscall read from keyboard
    MOV R0, #0 @Input stream keyboard
    MOV R2, #1 @Read 1 character
    LDR R1, =character @Put character into caracter data
    SWI 0    

_uppercase:
    LDR R1, =character @Get address to character
    LDR R0, [R1] @Load character into R0
    
    @Zero out 6th bit
	@a : 0110 0001
	@  : 0010 0000
	@A : 0100 0001
    BIC R0, R0, #32

    STR R0, [R1] @Store character with address stored in R1 in R0

_write:
    MOV R7, #4 @Syscall to output to screen
    MOV R0, #1 @Output to monitor
    MOV R2, #1 @ # of character to write
    LDR R1, =character @Print character in character data
    SWI 0

end:
    MOV R7, #1
    SWI 0

.data
    character: .ascii " " 
