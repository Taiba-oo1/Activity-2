

.MODEL SMALL                 ; SMALL memory model

.STACK 100H                  ; Reserve 256 bytes for stack memory

.DATA                         ; DATA segment
                              ; No variables declared

.CODE                         ; CODE segment starts
MAIN PROC                    ; MAIN procedure

    MOV AX, @DATA             ; AX = address of DATA segment
    MOV DS, AX                ; DS = AX

    MOV AH, 4CH               ; AH = 4CH (DOS terminate program function)
    INT 21H                   ; Call DOS interrupt 21H to exit program

MAIN ENDP                    ; End of MAIN procedure
END MAIN                     ; Program execution ends here