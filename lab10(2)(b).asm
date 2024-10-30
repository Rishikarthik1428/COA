org 100h
mov dl,'A'
mov cl,26

print:
    mov ah,02h
    int 21h
    
    inc dl
    loop print
    
    mov ah,4ch
    int 21h
