org 100h
mov dl,'z'
mov cx,26

print_char:
     mov ah,02h
     int 21h
            
     dec dl
     loop print_char
            
     mov ah,4ch
     int 21h