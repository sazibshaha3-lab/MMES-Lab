include 'Emu8086.inc'
.model small
.stack 100h
.data
.code

main proc
    
    call function_one
    
    Printn 'Main function'
    
    mov ah, 4ch
    int 21h
     main endp 
    
    
    function_one proc
    ;statements
    printn 'function one'
    
    ret
        
        function_one endp
    
    
   
end main