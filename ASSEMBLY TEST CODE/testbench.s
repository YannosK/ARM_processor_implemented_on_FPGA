main:
    LDR r3, [r0, #4]        ; e5903004
    STR r2, [r1, #16]       ; e5812010
    LDR r15, [r2, #-0x10]   ; e512f010
    B TEST                  ; ea000003      TEST is a fake address with offset imm24 = 3 => #0x14 = #20
    BLEQ TEST               ; 0b000003
    BLNE TEzt               ; 1bfffff9      TEzt is a fake address with offset imm24 #-20
    CMPHS r2, r3            ; 21520003
    CMPLO r4, #0xB2         ; 335400b2
    ADDMI r3, r4, r15       ; 4084300f
    ADDPL r7, r15, #17      ; 528F7017
    SUBVS r15, r2, r6       ; 6042f006
    SUBVC r15, r5, #5       ; 7245f005
    AND(S)HI r0, r9, r8     ; 80190008      (S) should and will not have parenthesis in a normal instruction 
    AND(S)LS r1, r15, #7    ; 921f1007
    EOR(S)LS r15, r15, r1   ; 903ff001
    EORGE r15, r2, #0xff    ; a222f0ff
    MVNGE r10, r6           ; a1e0a006
    MVN(S)LT r2, #0xf8      ; b3f020f8
    MOVGT r15, r14          ; c1a0f00e
    MOV(S)GT r3, #0xa3      ; c3b030a3
    LSLLE r15, r2, #0x16    ; d1a0fb02
    ASR(S)LE r15, r4, #4    ; d1b0f244
    STRGT r15, [r8, #-2]    ; c508f002
    LDR r14, [r0, #-0x2]    ; f510e002      strange case where I added the 1111 mnemonic - not sure if ever generated
    MOV r2, #0x50           ; E3A020A0
    MOV r2, r3              ; E1A02003
    LSL r2, r3, #1          ; E1A02083