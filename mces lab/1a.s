	AREA RESET,CODE
	ENTRY
	LDR R0,=VALUE1
	LDR R1,[R0]
	LDR R2,[R0,#4]
	LDR R0,=VALUE2
	LDR R3,[R0]
	LDR R4,[R0,#4]
	ADDS R6,R2,R4
	ADC R5,R1,R3
	LDR R0,=RESULT
	STR R5,[R0]
	STR R6,[R0,#4]
STOP B STOP
VALUE1 DCD &BBBBBBBB,&AAAAAAAA
VALUE2 DCD &CCCCCCCC,&FFFFFFFF
	AREA MEMORY,DATA
RESULT SPACE 4
	END
		