include 'emu8086.inc'
.model small
.stack 100h
.code
main proc
      
    mov al, 11         
    mov bl, 11    

    cmp al, bl        
    jg num1_larger 
    
    je num_equal
    
    printn 'Number 2 is Larger' 
  
    jmp end_program   ; Jump to end of program

num1_larger:
    printn 'Number 1 is Larger'  
    
num_equal: 
    printn 'Both Number is Equal'
   

end_program:
    mov ah, 4Ch
    int 21h  
    end main
main endp


