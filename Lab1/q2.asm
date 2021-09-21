DATA SEGMENT
	    SRC DW 15H, 25H, 35H, 45H, 55H
	    DES DW 5 DUP(0)
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
	    LEA DI, DES
	

	COPY:
	    MOV AX, [SI]
	    MOV [DI], AX
	    INC SI
	    INC SI
	    INC DI
	    INC DI
	    LOOP COPY
	

	    MOV AH, 4CH
	    INT 21H
	

	CODE ENDS
	END START