org 100h
.model small
.stack 100h
.data

msg1 db 009h,09h," Calculator $"
msg2 db 0dh,0ah,0ah,0ah,"Please Choose One:  $"
msg3 db 0dh,0ah,0ah,09h,"1. Addition $"
msg4 db 0dh,0ah,09h,"2. Subtraction $"
msg5 db 0dh,0ah,09h,"3. Multiplication $"
msg6 db 0dh,0ah,09h,"4. Division $"
msg7 db 0dh,0ah,09h,"0. Exit $"

stetment1 db 0dh,0ah,0ah,"Please Enter 1st Number: $"
stetment2 db 0dh,0ah,"Please Enter 2nd Number: $"
stetment3 db "Do you want Exit? $"
stetment4 db "1. Yes        2.No $"
stetment5 db "Press Any Key For Contenue....................... $"
stetment6 db 0dh,0ah,0ah,"Choose One: $"
stetment7 db 0dh,0ah,0ah,"Sara jibon Ki bal korchos Ai simple calculat tao korte paris nah? $" 

.code
main proc
    mov ax, @data
    mov ds, ax
    
    
    
    lea dx, msg1
    mov ah, 09h
    int 21h
    
    lea dx, msg2
    mov ah, 09h
    int 21h
    
    lea dx, msg3
    mov ah, 09h
    int 21h
    
    lea dx, msg4
    mov ah, 09h
    int 21h
    
    lea dx, msg5
    mov ah, 09h
    int 21h
    
    lea dx, msg6
    mov ah, 09h
    int 21h
    
    lea dx, msg7
    mov ah, 09h
    int 21h
    
    lea dx, stetment1
    mov ah, 09h
    int 21h
    
    mov ah,01h
    int 21h
    mov bl, al
    
    lea dx, stetment2
    mov ah, 09h
    int 21h
    
    mov ah,01h
    int 21h
    mov cl, al
    
    lea dx, stetment6
    mov ah, 09h
    int 21h
    
    mov ah,01h
    int 21h
    mov cl, al
    
    lea dx, stetment7
    mov ah, 09h
    int 21h
    
ret




