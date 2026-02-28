

.MODEL SMALL                  ; SMALL memory model definition

.STACK 100H                   ; Allocate 256 bytes stack memory

.DATA                          ; DATA segment begins
MSG DB 'ENTER UPPERCASE LETTER: $' ; Prompt message

.CODE                          ; CODE segment begins
MAIN PROC                     ; MAIN procedure starts

    MOV AX, @DATA              ; Load DATA segment address into AX
    MOV DS, AX                 ; Initialize DATA segment register DS

    MOV AH, 09H                ; Select DOS function to display string
    LEA DX, MSG                ; Load address of MSG into DX
    INT 21H                    ; Display message using DOS interrupt

    MOV AH, 01H                ; Select DOS function to read character
    INT 21H                    ; Read character into AL register

    MOV DL, AL                 ; Transfer character from AL to DL
    MOV AH, 02H                ; Select DOS function to display character
    INT 21H                    ; Display character on screen

    MOV AH, 4CH                ; Select DOS function to exit program
    INT 21H                    ; Terminate execution

MAIN ENDP                     ; End of MAIN procedure
END MAIN                      ; End of program