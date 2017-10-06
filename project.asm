.model small
.stack 100h

.data


.code
main proc
    include 'emu8086.inc'; library
    define_scan_num
    define_clear_screen
    mov ax, @data
    mov ds, ax 
    
    MOV AX,0600h          ;06 is for row and 00 is for column
    MOV BH,17H            ;1 is used for blue background and 7 is used for white text
    MOV CX,0000H          
    MOV DX,184FH
    INT 10H 
    
          MOV AX,0h   
          MOV BX,0h
          MOV CX,0h
          MOV DX,0h 
    
    printn ''
    printn ''
    printn ''
    printn ''
    printn ''
    printn ''
    printn ''
    print '                 >>>>>>>>>> Hello!Welcome to this funny test <<<<<<<<<<'
    printn ''
    printn ''
    printn ''
    printn ''
    call clear_screen
    MOV AX,0600h          ;06 is for row and 00 is for column
    MOV BH,17H            ;1 is used for blue background and 7 is used for white text
    MOV CX,0000H          
    MOV DX,184FH
    INT 10H 
    
          MOV AX,0h   
          MOV BX,0h
          MOV CX,0h
          MOV DX,0h
          
          
    printn ''
    printn '' 
    print '             So,are you a king or queen? I mean Are you a male or female?'
    printn ''
    printn ''
    printn ''
    printn ''
    printn '' 
    print '1: if you are male'
    printn '' 
    print '2: if you are female'
    printn ''
    printn ''
    printn ''
    printn ''
    printn ''
    print '          Enter what you are 1 or 2 :'
    call scan_num
    mov dx,ax 
 
              
              
              
    
    
    
    
    ;;;;;;;;;;;;;;;;Gender determination;;;;;;;;;;   
    
    
    
    

        
    
        cmp cx, 1
        je male
        cmp cx, 2
        je female
        male:
        printn ''
        print 'So, You are a harami male. Now, to go forward we need to know your birth month!'
        printn ''
        printn ''
        printn ''
        printn ''
        printn ''
        
        
        call clear_screen
        jmp month
        

        female: 
        printn ''
        print 'So, You are sweet female. Now, to go forward we need to know your birth month!'
        printn ''
        printn ''
        printn ''
        printn ''
        printn ''
        
        
        
        call clear_screen
        jmp month
        
        
        month:
        
        
    MOV AX,0600h          ;06 is for row and 00 is for column
    MOV BH,17H            ;1 is used for blue background and 7 is used for white text
    MOV CX,0000H          
    MOV DX,184FH
    INT 10H
    
    
          MOV AX,0h   
          MOV BX,0h
          MOV CX,0h
          MOV DX,0h
          
           
        GOTOXY 20, 2
        printn 'INFO: January = 1 , February = 2 Continue Like This'
        printn ''
        printn ''
        printn ''
        printn ''
        printn ''
        print 'Give which month you born:'
        call scan_num
        mov dx,ax
        

        cmp cx, 1
        je jan
        
        cmp cx, 2
        je fab
        
        cmp cx, 3
        je mar
        
        cmp cx, 4
        je apr
        
        cmp cx, 5
        je may
        
        cmp cx, 6
        je june
        
        cmp cx, 7
        je jul
        
        cmp cx, 8
        je aug
        
        cmp cx, 9
        je sep
        
        cmp cx, 10
        je oct
        
        cmp cx, 11
        je nov
        
        cmp cx, 12
        je dece
        
        jan:
        GOTOXY 3, 12
        print 'you born in January'
        jmp exit1
        
        
        fab:
        GOTOXY 3, 12
        print 'you born in February'
        jmp exit1
        
        
        mar:
        GOTOXY 3, 12
        print 'you born in March'
        jmp exit1
        
        
        apr:
        GOTOXY 3, 12
        print 'you born in April'
        jmp exit1
        
        
        may:
        GOTOXY 3, 12
        print 'you born in May'
        jmp exit1
        
        
        june:
        GOTOXY 3, 12
        print 'you born in June'
        jmp exit1
        
        
        jul:
        GOTOXY 3, 12
        print 'you born in July'
        jmp exit1
        
        
        aug:
        GOTOXY 3, 12
        print 'you born in August'
        jmp exit1
        
        
        sep:
        GOTOXY 3, 12
        print 'you born in September'
        jmp exit1
        
        
        oct:
        GOTOXY 3, 12
        print 'you born in October'
        jmp exit1
        
        
        nov:
        GOTOXY 3, 12
        print 'you born in November'
        jmp exit1
        
        
        dece:
        GOTOXY 3, 12
        print 'you born in December'
        jmp exit1
        
        
    exit1:   
    GOTOXY 27, 23
    print "Press any key to exit.." 
    jmp exit
        exit:
        mov ah, 0
        int 16h
        mov ah, 4ch
        int 21h
        
        