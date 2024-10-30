org 100h

mov dl,'9'
mov cl,10

print:
    mov ah,02h
    int 21h
    
    dec dl
    loop print
    
    mov ah,4ch
    int 21h
    