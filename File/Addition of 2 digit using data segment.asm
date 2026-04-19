include 'emu8086.inc'
.model small
.stack 100h
.data
a db 0
main proc
    
    mov ax,@data
    mov ds,ax
    
    print 'First Number:'
    mov ah,1
    int 21h
    mov a,al
    
    printn
    print 'Second Number:'
    mov ah,1
    int 21h
    
    
    add al,a
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
    
    mov ah,4ch
    int 21h
    main endp
end main