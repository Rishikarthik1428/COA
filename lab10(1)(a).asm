org 100h  
 
mov bl,0
mov cl,10
l1:
    mov ah,02h 
    mov dl,bl 
    add dl,30h
    int 21h
    inc bl    
    loop l1
    
 mov ah,4ch
 int 21h
 end
