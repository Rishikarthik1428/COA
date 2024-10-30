org 100h

jmp start
msg_input db 0dh,0ah, 'Enter the number: $'
msg_even db 0dh,0ah, 'Number is even $'
msg_odd db 0dh,0ah, 'Number is odd $'

start:
    mov dx,offset msg_input
    mov ah,09h
    int 21h
    
    mov ah,01h
    int 21h
    mov bl,al
           
    and bl,1
    jz even 
    
    jmp odd
    
even:
    mov dx,offset msg_even
    mov ah,09h
    int 21h
    jmp end
    
odd:
    mov dx,offset msg_odd
    mov ah,09h
    int 21h
    jmp end 
end:
    
    mov ah,4ch
    int 21h