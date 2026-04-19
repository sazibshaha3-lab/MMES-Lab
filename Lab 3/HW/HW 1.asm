include 'emu8086.inc'
.model small
.stack 100h 
.data
.code
main proc
    ; Set up loop counter (starting from 9)
    mov cl, 9      ; Loop counter set to 9
countdown_loop:  

    mov ah, 2
    mov dl, cl
    add dl, 48
    int 21h
    
    Printn  
    dec cl
    cmp cl, 0            ; Compare counter with 0
    je end_program       ; If counter is 0, jump to end_program
    
    jmp countdown_loop   ; Loop

end_program:
    mov ah, 4Ch
    int 21h
    main endp
end main