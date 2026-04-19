include 'emu8086.inc'
.model small
.stack 100h
main proc
    
print 'First Number:'
mov ah,1
int 21h
mov bl,al


printn
print 'Second Number:'
mov ah,1
int 21h 


add al,bl
mov ah,0
aaa

add al,48
add ah,48

mov bx,ax

printn
print 'Sum is:'
mov ah,2
mov dl,bh
int 21h

mov ah,2
mov dl,bl
int 21h

    exit:
    mov ah,4ch
    int 21h
    main endp
end main
    add ah,48
    
    mov bx,ax ;storing value of ax to bx
    
    printn
    print 'Result is:'
    
    mov ah,2
    mov dl,bh
    int 21h
    
    mov ah,2
    mov dl,bl
    int 21h
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end mainain endp
end main