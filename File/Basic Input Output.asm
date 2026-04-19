include 'emu8086.inc'
.model small
.stack 100h
main proc
    
print 'Enter a number:'
mov ah,1
int 21h
mov bl,al

printn
print 'Output is:'

mov ah,2
mov dl,bl
int 21h






    exit:
    mov ah,4ch
    int 21h
    main endp
end main