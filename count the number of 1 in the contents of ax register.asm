.model small
.stack 100h
.code
main proc
    mov ax,5
    call proc1 
    add bl,48
    mov ah,2
    mov dx,bx
    int 21h
    
  exit:
    mov ah,4ch
    int 21h
    
      
      



proc1 proc
    
    mov bx,0
    start:
    cmp ax,0
    jz end
    test ax,1
    jz increm
    inc bx
    
    increm:
    shr ax,1
    jmp start
    
     end:ret
    