DATA SEGMENT
	    SRC DW 11H, 22H, 33H, 44H, 55H
	    DES DW 3 DUP (0)
	    DES_START DW 3
	    COUNT DB 5
	DATA ENDS
	

	CODE SEGMENT
	    ASSUME CS: CODE, DS: DATA
	START:
	    MOV AX, DATA
	    MOV DS, AX
	

	    MOV CH, 00H
	    MOV CL, COUNT
	

	    LEA SI, SRC
	    ADD SI, CX
	    ADD SI, CX
	    DEC SI
	    DEC SI
	    LEA DI, DES
	    ADD DI, DES_START
	    ADD DI, DES_START
	    DEC DI
	    DEC DI
	

	COPY:
	    MOV AX, [SI]
	    MOV [DI], AX
	    DEC SI
	    DEC SI
	    DEC DI
	    DEC DI
	    LOOP COPY
	

	    MOV AH, 4CH
	    INT 21H
	

	CODE ENDS
	END START
