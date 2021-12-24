.global _start

_start:
    MOV R0, #50
    MOV R1, #2
    B _loop

_loop:
    CMP R0, R1 @Compare R0 t0 R1
    BNE _decrement @If Not Equal jump to decrement
    
_decrement:
    SUBGT R0, R0, R1 @If R0 is Greater Then R1 subtract 2(R1 ==2)

_end:
    MOV R7, #1
    SWI 0
