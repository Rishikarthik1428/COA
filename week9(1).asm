org 100h

jmp start

msg_input db 0dh,0ah, 'Enter the number: $' 
msg_equal db 0dh,0ah, 'Equal $'
msg_notequal db 0dh,0ah, 'Not Equal $'  

start:
    
    mov dx,offset msg_input
    mov ah,09h
    int 21h
    
    mov ah,01h
    int 21h 
    mov bl,al
    
    mov dx,offset msg_input
    mov ah,09h
    int 21h
    
    mov ah,01h
    int 21h
    
    cmp bl,al
    je equal
    
    mov dx,offset msg_notequal
    mov ah,09h
    int 21h
    jmp end
    
equal:
    mov dx,offset msg_equal
    mov ah,09h
    int 21h
end:
    mov ah,4ch
    int 21h