	AREA RESET,CODE
	LDR R0,=LIST
	LDR R1,[R0],#4
	LDR R2,[R0]
	LDR R4,=RESULT
LOOP	CMP R1,R2
	BEQ EXIT
	BGT GREATER
	SUB R2,R2,R1
	B LOOP
GREATER SUB R1,R1,R2
	B LOOP
EXIT STR R1,[R4]
STOP B STOP
LIST DCD 30,45
	AREA MEMORY,DATA
RESULT SPACE 4
	END