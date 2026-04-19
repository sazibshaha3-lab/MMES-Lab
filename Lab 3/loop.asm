;Conditional jump and unconditional jump
; switch case, if case, goto function

include 'emu8086.inc'  
.model small
.stack 100h
.code
main proc


inc bx ;bx++ = bx=bx+1;
dec bx ;bx-- = bx=bx-1;

mov cx, 5    ; given
mov bx, 0    ; given

;for (int i=0; i<=n ; i++)

Start:
cmp bx, cx 
JE Last  
printn "CSE"
inc bx
jne start  








Last:
Printn "The program Ended!"
mov ah, 4ch
int 21h
main endp
end main 


;JE=Jump Equal
;JNE=jump Not Equal
;JG=Jump Greater
;JGE=Jump Greater Equal