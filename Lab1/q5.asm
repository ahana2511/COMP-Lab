DATA SEGMENT
	    SRC DB 01H, 02H, 03H, 04H, 05H, 06H, 07H, 08H, 09H, 0AH
	    COUNT DB 10
	    RES DW ?
	DATA ENDS
	

	CODE SEGMENT
	    ASSUME CS: CODE, DS: DATA
	START:
	    MOV AX, DATA
	    MOV DS, AX
	

	    MOV CH, 00
	    MOV CL, COUNT
	

	    LEA SI, SRC
	    MOV BX, 0
	    
	    CLC
	SUM:
	    mov AX, 0
	    MOV AL, BYTE PTR [SI]
	    ADC BX, AX
	    INC SI
	    LOOP SUM
	    MOV RES, BX
	    
	    MOV AH, 4CH
	    INT 21H
	

	CODE ENDS
	END START
