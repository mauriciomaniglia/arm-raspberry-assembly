.global _start

_start:
    MOV R1, #5
    MOV R2, #10
    CMP R1, R2
    BEQ values_equal
    BGT r1_isGreaterThanR2
    BLT r1_isLessThanR2
    
r1_isLessThanR2:
    MOV R0, #2
    B end

r1_isGreaterThanR2:
    MOV R0, #3
    B end

values_equal:
    MOV R0, #1

end:
    MOV R7, #1
    SWI 0
