;
;
;
;

.model small
.stack 100h

.data

    BrandName db 0Ah, 1bh, '[1;34;100m',"    __        _______ _     ____ ___  __  __ _____   _____ ___", 1bh, '[0m'
              db 0Ah, 1bh, '[1;34;100m',"    \ \      / / ____| |   / ___/ _ \|  \/  | ____| |_   _/ _ \  ", 1bh, '[0m'
              db 0Ah, 1bh, '[1;34;100m',"     \ \ /\ / /|  _| | |  | |  | | | | |\/| |  _|     | || | | |", 1bh, '[0m'
              db 0Ah, 1bh, '[1;34;100m',"      \ V  V / | |___| |__| |__| |_| | |  | | |___    | || |_| |", 1bh, '[0m'
              db 0Ah, 1bh, '[1;34;100m',"       \_/\_/  |_____|_____\____\___/|_| _|_|_____|   |_| \___/", 1bh, '[0m'
              db 0Ah, ""
              db 0Ah, 1bh, '[1;33;100m',"   ___ ______  ___   _   ____ __   __  ______________________________ ", 1bh, '[0m'
              db 0Ah, 1bh, '[1;33;100m',"  | __ )_ _| \ | |  / \  |  _ \ \ / /  | __ )_ _|_   _| ____/ ___|| |", 1bh, '[0m'
              db 0Ah, 1bh, '[1;33;100m',"  |  _ \| ||  \| | / _ \ | |_) \ V /   |  _ \| |  | | |  _| \___ \| |", 1bh, '[0m'
              db 0Ah, 1bh, '[1;33;100m',"  | |_) | || |\  |/ ___ \|  _ < | |    | |_) | |  | | | |___ ___) |_|", 1bh, '[0m'
              db 0Ah, 1bh, '[1;33;100m',"  |____/___|_| \_/_/   \_\_| \_\|_|    |____/___| |_| |_____|____/(_)", 1bh, '[0m'
              db 0Ah, ""
              db 0Ah, 1bh, '[1;37;100m', "           Name: Pinca, Jamiel Kyne R.  Date: Nov 29, 2024           ",1bh,'[0m'
              db 0Ah, ""
              db 0Ah, 1bh, '[1;37;100m',"  --------------------------------------------------------------------",1bh,'[0m'
              db 0Ah, ""
              db 0Ah, 1bh, '[1;34;100m',"                                [1] LOGIN    ",1bh, '[0m'
              db 0Ah, 1bh, '[1;34;100m',"                                [2] SIGN UP  ",1bh, '[0m'
              db 0Ah, 1bh, '[1;34;100m',"                                [3] EXIT     ",1bh, '[0m'
              db 0ah, ""
              db 0Ah, 1bh, '[1;37;100m',"                               Enter Option: ",1bh, '[0m', 0

    menu db 0Ah,1bh, '[1;33;100m', " Menu:", 1bh, '[0m', 0Ah

         db 0Ah,1bh, '[1;37;100m', " [1] Add Item to Cart", 1bh, '[0m'
         db 0Ah,1bh, '[1;37;100m', " [2] Dispaly Items from Cart", 1bh, '[0m'
         db 0Ah,1bh, '[1;37;100m', " [3] Remove Item from Cart", 1bh, '[0m'
         db 0Ah,1bh, '[1;37;100m', " [4] Logout Account", 1bh, '[0m'
         db 0Ah, ""
         db 0Ah,1bh, '[1;34;100m', " Enter Option: ", 1bh, '[0m', 0

    storeMenu              db 0ah, '                                   ', 1bh, '[1;33;97m','Food Menu', 1bh, '[0m', 0dh, 0ah, 0                
    storeMenu1             db 1bh, '[1;37;100m', 201, 205, 205, 205, 205, 205, 205, 205,205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 203, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 187, 1bh, '[0m', 0dh, 0ah, 0
    storeMenu2             db 1bh, '[1;37;100m', 186, ' 1 Alogrithm ships     -  Php 110  ', 186, ' 4 Debug Brew Coffee         -  Php 225  ', 186, 1bh, '[0m', 0dh, 0ah, 0
    storeMenu3             db 1bh, '[1;37;100m', 186, ' 2 Data Byte Bars      -  Php 115  ', 186, ' 5 Kernel Krunch Popcorn     -  Php 230  ', 186, 1bh, '[0m', 0dh, 0ah, 0
    storeMenu4             db 1bh, '[1;37;100m', 186, ' 3 RAMen Noodles       -  Php 120  ', 186, ' 6 Stack Overflow Soda       -  Php 240  ', 186, 1bh, '[0m', 0dh, 0ah, 0
    storeMenu5             db 1bh, '[1;37;100m', 200, 205, 205, 205, 205, 205, 205, 205,205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 202, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205,205, 205, 205, 205, 205, 205, 205, 188, 1bh, '[0m', 0dh, 0ah, 0
    storeMenuPadding       db  '                                      ','                                      ', 0dh, 0ah, 0
    
    addPrompt           db ' ',1bh, '[1;5;34;97m','Add Item to Cart', 1bh, '[0m', '                         [p - Go to Previous Menu]', 0dh, 0ah
                        db ' Input Choice: ',0
    addFoodQuery        db ' ',1bh, '[1;5;34;97m','Add Item to Cart', 1bh, '[0m', '                         [p - Go to Previous Menu]', 0dh, 0ah
                        db ' Input code: ',0
    addedFood           db '                          Added [Food Code: ', 0
    addFail             db '                                ', 1bh, '[1;5;33;41m', 'Invalid Input!', 1bh, '[0m', 0dh, 0ah, 0
    addGoPrevious       db '                          ', 1bh, '[1;5;33;41m', '   Going back...   ', 1bh, '[0m', 0dh, 0ah, 0

    removeFoodQuery    db '',1bh, '[1;5;34;97m','Remove Item from Cart', 1bh, '[0m', '                                 [p - Previous Menu]', 0dh, 0ah
                           db 'Input Choice: ',0
    removeFailMsg       db '                                ', 1bh, '[1;5;33;41m', 'Invalid Input!', 1bh, '[0m', 0dh, 0ah, 0
    removedFood         db '                                       Removed [Item Choice: ', 0
    removeZero          db '                                       ', 1bh, '[1;5;33;41m', 'Non-existent order', 1bh, '[0m', 0dh, 0ah, 0
    removeGoPrevious    db '                                       ', 1bh, '[1;5;33;41m', '   Going back...   ', 1bh, '[0m', 0dh, 0ah, 0


    DisplayItem1    db 0ah,1bh, '[1;33;100m', '   List of Items:                Price:     Quantity:',1bh, '[0m'
                    db 0ah, ''
                    db 0ah, 1bh, '[1;34;100m',' [1] Alogrithm ships          |  Php 110   |   ',1bh, '[0m', 0
    DisplayItem2    db      1bh, '[1;34;100m',' [2] Data Byte Bars           |  Php 115   |   ',1bh, '[0m', 0
    DisplayItem3    db      1bh, '[1;34;100m',' [3] RAMen Noodles            |  Php 120   |   ',1bh, '[0m', 0
    DisplayItem4    db      1bh, '[1;34;100m',' [4] Debug Brew Coffee        |  Php 225   |   ',1bh, '[0m', 0
    DisplayItem5    db      1bh, '[1;34;100m',' [5] Kernel Krunch Popcorn    |  Php 230   |   ',1bh, '[0m', 0
    DisplayItem6    db      1bh, '[1;34;100m',' [6] Stack Overflow Soda      |  Php 240   |   ',1bh, '[0m', 0
    DisplayTotal    db 0ah, 1bh, '[1;33;100m','     Total Amount:            |  [Php ',1bh, '[0m', 0
    equalSymbol     db      1bh, '[1;37;100m','   =  ',1bh, '[0m', 0     

    DisplayQuery        db '',1bh, '[1;5;34;97m','Preview Order', 1bh, '[0m', ' [a - Add Item] [r - Remove Item] [p - Previous Item]', 0dh, 0ah
                        db 'Input Choice: ', 0
    DisplayResponseA    db '                                Choice: ', 1bh, '[1;5;33;100m','Add Item to Cart', 1bh, '[0m', 0
    DisplayResponseR    db '                                Choice: ', 1bh, '[1;5;33;100m','Remove Item from Cart', 1bh, '[0m', 0 
    DisplayResponseD    db '                                ', 1bh, '[1;5;33;41m', '   Going back...   ', 1bh, '[0m', 0                
    DisplayInvalid      db '                                ', 1bh, '[1;5;33;41m', 'Invalid Input!', 1bh, '[0m', 0dh, 0ah, 0


    loginChoice db ?
    DisplayChoice db ? 

    loginName db 50 dup(0)
    loginPassword db 50 dup(0)
    menuChoice db ?
    foodChoice db ?
    pressEnter db 13, 10, 1bh, '[1;33;100m', " Press enter to continue",1bh, '[0m', 0

    Customer struc
        customername db 10 DUP(0)
        password db 10 DUP(0)

        AlogrithmShips      dw 0 
        DataByteBars        dw 0 
        RAMenNoodles        dw 0

        DebugBrewCoffee     dw 0
        KernelKrunchPopcorn dw 0
        StackOverflowSoda   dw 0
        total               dw 0

    Customer ends

    Customer1 Customer <>
    Customer2 Customer <>
    Customer3 Customer <>

    MenuA db 0Ah, 1bh, '[1;5;33;41m'," Add Item to Cart ", 1bh,'[0m',0
    MenuD db 0Ah, 1bh, '[1;5;33;41m'," Display Item from Cart ", 1bh,'[0m',0
    MenuR db 0Ah, 1bh, '[1;5;33;41m'," Remove Item from Cart ", 1bh,'[0m',0
    MenuL db 0ah, 1bh, '[1;5;33;41m'," Log out Account ", 1bh,'[0m',0

    NamePrompt              db 13,10, 13, 10, 1bh, '[1;37;100m', ' Enter Name: ',1bh,'[0m', 0
    PasswordPrompt          db 13, 10,1bh, '[1;37;100m', ' Enter Password: ',1bh,'[0m', 0

    InvalidInputMsg         db 13, 10,1bh, '[1;5;37;41m', " Invalid Input ",1bh,'[0m', 0
    InvalidEmptyMsg         db 13, 10, 13, 10, 1bh, '[1;5;37;41m', " Input is Empty, Please Try Again ", 1bh,'[0m', 0ah, 0
    ErrorFullMsg            db 13, 10, 'Customer database is full!', 0
    SignUpSuccessMsg        db 13, 10, 1bh, '[1;5;33;41m', ' Signup successful! ', 1bh,'[0m', 0
    SignUpNotSuccessMsg     db 13, 10, 1bh, '[1;5;33;41m', ' Signup unsuccessful! ', 1bh,'[0m', 0

    failLogin                   db 13,10,0ah, 1bh, '[1;5;33;41m'," Login Fail ", 1bh,'[0m', 0ah, 0
    failLoginWrongPassword      db 13,10,0ah, 1bh, '[1;5;33;41m'," Login Fail ", 1bh,'[0m', 0ah, 0
    successLogin                db 13,10,0ah, 1bh, '[1;5;33;41m'," Login Successful ", 1bh,'[0m', 0ah, 0
    addFailMsg                  db '                                ', 1bh, '[1;5;33;41m', 'Invalid Input!', 1bh, '[0m', 0dh, 0ah, 0  
    addCorrectMsg               db 13,10,0ah, 1bh, '[1;5;33;41m'," Added Item was successful ", 1bh,'[0m', 0ah, 0

    LoginHeader             db 13, 10, 1bh, '[1;33;100m',  " Login: ",1bh,'[0m', 0
    SignUpHeader            db 13,10,1bh, '[1;33;100m', " SignUp Account: ",1bh,'[0m', 0
    DisplayNameLabel        db 13, 10, 0ah, 1bh, '[1;37;100m', ' Name: ',1bh,'[0m', 0
    DisplayPasswordLabel    db 13, 10,1bh, '[1;37;100m', ' Password: ',1bh,'[0m', 0

    counter db 0
    newline db 0ah, 0

.code
    include io.mac

; ???????????????????????????????????????????????????
;    Helper                                         ?
; ???????????????????????????????????????????????????

clearScreen proc
    mov ax, 03h
    int 10h
    ret
clearScreen endp

pressEnterPrompt proc
    PutStr pressEnter
    GetCh  al
    ret
pressEnterPrompt endp

terminate proc
    call clearScreen
    mov ah, 4ch
    int 21h
terminate endp

InvalidEmpty proc 
    PutStr InvalidEmptyMsg
    call pressEnterPrompt
    call MainActivity
InvalidEmpty endp

compareStrings proc
    compareLoop:
    mov al, [di]
    mov ah, [bx]
    cmp al, ah
    jne nuhUhEqual
    
    cmp al, 0
    je equal
    
    inc di
    inc bx
    loop compareLoop

    equal:
        clc   
        ret

    nuhUhEqual:
        stc     
        ret
compareStrings endp

failLoginNotFound proc
    PutStr failLogin
    call pressEnterPrompt
    call MainActivity
failLoginNotFound endp

failLoginWrongPass proc 
    PutStr failLoginWrongPassword
    call pressEnterPrompt
    call MainActivity
failLoginWrongPass endp

validSuccessLogin proc
    PutStr successLogin
    call pressEnterPrompt
    ret
validSuccessLogin endp

; ???????????????????????????????????????????????????
;   Main                                            ?
; ???????????????????????????????????????????????????

main proc
    mov ax, @data
    mov ds, ax

MainActivity proc
    call clearScreen    
    cmp counter, 3        
    je ExitProgram            

    PutStr BrandName
    GetCh loginChoice

    cmp loginChoice, '1'
    je DoLogin
    cmp loginChoice, '2'
    je DoSignUp
    cmp loginChoice, '3'
    je ExitProgram            
    jne ErrorInput

DoLogin:
    call Login

DoSignUp:
    call SignUp
    inc counter                     

ErrorInput:
    call InvalidInputDisplay

ExitProgram:
    call terminate
MainActivity endp

; ???????????????????????????????????????????????????
;   Valid && Inva  && Full                          ?
; ???????????????????????????????????????????????????
validDetailsSignUp proc
    inc counter
    PutCh 0ah
    PutStr SignUpSuccessMsg
    PutCh 0ah
    PutCh 0ah
    PutCh 0ah
    PutCh 0ah
    PutCh 0ah
    PutCh 0ah
    call pressEnterPrompt
    call MainActivity
validDetailsSignUp endp

invalidDetailsSignUp proc
    PutCh 0ah
    PutCh 0ah
    PutStr InvalidInputMsg  
    PutCh 0ah
    PutCh 0ah
    PutCh 0ah
    PutCh 0ah
    PutCh 0ah
    PutCh 0ah
    call pressEnterPrompt
    call MainActivity
invalidDetailsSignUp endp

DataBaseFull proc 
    PutStr ErrorFullMsg
    ret
DataBaseFull endp

InvalidInputDisplay proc    
    PutStr InvalidInputMsg
    call pressEnterPrompt
    call MainActivity
InvalidInputDisplay endp

; ???????????????????????????????????????????????????
; SIGN UP                                           ?
; ???????????????????????????????????????????????????

SignUp proc
    call clearScreen

    PutStr SignUpHeader

SignUpPerson:
    cmp customer1.customername, 0
    je customer1Signup
    cmp customer2.customername, 0
    je customer2Signup
    cmp customer3.customername, 0
    je customer3Signup

    call DataBaseFull

Customer1Signup:
    call Customer1Forms
Customer2Signup:
    call Customer2Forms
Customer3Signup:
    call Customer3Forms

SignUp endp

Customer1Forms: 
    PutStr NamePrompt
    GetStr Customer1.customername,10      
    PutStr PasswordPrompt 
    GetStr Customer1.password,10

    cmp word ptr Customer1.customername, 0
    je  FormsEmptyMsg
    cmp word ptr Customer1.password, 0
    je  FormsEmptyMsg

    call validDetailsSignUp

    FormsEmptyMsg:
        mov word ptr [Customer1.customername], 0
        mov word ptr [Customer1.password], 0
        call InvalidEmpty

Customer2Forms: 
    PutStr NamePrompt
    GetStr Customer2.customername,10      
    PutStr PasswordPrompt 
    GetStr Customer2.password,10

    cmp word ptr Customer2.customername, 0
    je  FormsEmptyMsg2
    cmp word ptr Customer2.password, 0
    je  FormsEmptyMsg2

    call validDetailsSignUp

    FormsEmptyMsg2:
        mov word ptr [Customer2.customername], 0
        mov word ptr [Customer2.password], 0
        call InvalidEmpty

Customer3Forms: 
    PutStr NamePrompt
    GetStr Customer3.customername,10      
    PutStr PasswordPrompt 
    GetStr Customer3.password,10

    cmp word ptr Customer3.customername, 0
    je  FormsEmptyMsg3
    cmp word ptr Customer3.password, 0
    je  FormsEmptyMsg3

    call validDetailsSignUp

    FormsEmptyMsg3:
        mov word ptr [Customer3.customername], 0
        mov word ptr [Customer3.password], 0
        call InvalidEmpty

; ???????????????????????????????????????????????????
; Login Forms                                       ?
; ???????????????????????????????????????????????????

Login proc  
    call clearScreen   

    PutStr LoginHeader

    PutStr DisplayNameLabel
    GetStr loginName, 10
    PutStr DisplayPasswordLabel
    GetStr loginPassword, 10

    cmp word ptr loginName, 0
    je invalidDetails
    cmp word ptr loginPassword, 0
    je invalidDetails
    jne lookAtDataBase

    invalidDetails:
        mov word ptr [loginName], 0
        mov word ptr [LoginPassword], 0
        call InvalidEmpty

    lookAtDataBase:
        lea bx, loginName
        lea di, Customer1.customername
        call compareStrings
        je isP1

        lea bx, loginName
        lea di, Customer2.customername
        call compareStrings
        je isP2

        lea bx, loginName
        lea di, Customer3.customername
        call compareStrings
        je isP3

        call failLoginNotFound

    isP1:
        call checkPassP1
    isP2:
        call checkPassP2  
    isP3:
        call checkPassP3    

checkPassP1:
    lea bx, loginPassword
    lea di, Customer1.password
    call compareStrings
    je loginSuccess1 

    loginFailed1:
        call failLoginWrongPass

    loginSuccess1:
        call validSuccessLogin
        call Customer1Menu

checkPassP2:
    lea bx, loginPassword
    lea di, Customer2.password
    call compareStrings
    je loginSuccess2

    loginFailed2:
        call failLoginWrongPass

    loginSuccess2:
        call validSuccessLogin
        ; call CustomerMenu1 

checkPassP3:
    lea bx, loginPassword
    lea di, Customer3.password
    call compareStrings
    je loginSuccess3

    loginFailed3:
        call failLoginWrongPass

    loginSuccess3:
        call validSuccessLogin
        ; call CustomerMenu1    

Login endp

; ???????????????????????????????????????????????????
; Customer Menu                                     ?
; ???????????????????????????????????????????????????

Customer1Menu proc
    call clearScreen

    PutStr menu  
    GetCh menuChoice 

    cmp menuChoice, '1'
    je isOne1
    cmp menuChoice, '2'
    je isTwo1
    cmp menuChoice, '3'
    je isThree1
    cmp menuChoice, '4'
    je isFour1
    jne invalidChoiceLogIn1

isOne1:
    PutCh 0ah
    PutStr MenuA
    PutCh 0ah
    call pressEnterPrompt
    call addFoodMenuCustomer1
isTwo1:
    PutCh 0ah
    PutStr MenuD
    PutCh 0ah
    call pressEnterPrompt
    call DisplayFoodMenuCustomer1
isThree1:
    PutCh 0ah
    PutStr MenuR
    PutCh 0ah
    call pressEnterPrompt
    call removeFoodCustomer1
isFour1:
    PutCh 0ah
    PutStr MenuL
    PutCh 0ah
    call pressEnterPrompt
    call MainActivity 

    invalidChoiceLogIn1:
        PutCh 0ah
        PutStr InvalidInputMsg    
        PutCh 0ah
        call pressEnterPrompt
        call Customer1Menu

Customer1Menu endp

; ???????????????????????????????????????????????????
; Add Item Customer                                 ?
; ???????????????????????????????????????????????????

addFoodMenuCustomer1 proc  
    call clearScreen

    PutStr storeMenu
    PutStr storeMenu1
    PutStr storeMenu2
    PutStr storeMenu3
    PutStr storeMenu4
    PutStr storeMenu5
    PutStr storeMenuPadding

    PutStr addPrompt
    GetCh foodChoice

    cmp foodChoice, '1'
    je isafc1u1

    cmp foodChoice, '2'
    je isafc2u1

    cmp foodChoice, '3'
    je isafc3u1

    cmp foodChoice, '4'
    je isafc4u1

    cmp foodChoice, '5'
    je isafc5u1

    cmp foodChoice, '6'
    je isafc6u1

    cmp foodChoice, 'p'
    je addGoPreviousMenu1

    jne invalidChoiceAddFood

    invalidChoiceAddFood:
        call addIncorrectFoodCode1

    isafc1u1:
        call add1User1
        jmp addCorrectFoodCode1

    isafc2u1:
        call add2User1
        jmp addCorrectFoodCode1

    isafc3u1:
        call add3User1
        jmp addcorrectFoodCode1

    isafc4u1:
        call add4User1
        jmp addCorrectFoodCode1

    isafc5u1:
        call add5User1
        jmp addCorrectFoodCode1

    isafc6u1:
        call add6User1
        jmp addCorrectFoodCode1

    addGoPreviousMenu1:
        PutStr addGoPrevious
        PutCh 0ah
        call pressEnterPrompt
        call Customer1Menu

    addCorrectFoodCode1:
        PutStr addedFood

        PutCh foodChoice
        PutCh 0ah 
        jmp addResetMenu1

    addIncorrectFoodCode1:
        PutStr addFailMsg

    addResetMenu1: 
        PutCh 0ah 
        call pressEnterPrompt   
        call addFoodMenuCustomer1

;-------------------------------------------------------------------------
    add1User1 proc 
        inc word ptr [Customer1.AlogrithmShips]
        add word ptr [Customer1.total], 110
        ret
    add1User1 endp

;-------------------------------------------------------------------------
    add2User1 proc 
        inc word ptr [Customer1.DataByteBars]
        add word ptr [Customer1.total], 115
        ret
    add2User1 endp

;-------------------------------------------------------------------------
    add3User1 proc 
        inc word ptr [Customer1.RAMenNoodles]
        add word ptr [Customer1.total], 120
        ret
    add3User1 endp

;-------------------------------------------------------------------------
    add4User1 proc 
        inc word ptr [Customer1.DebugBrewCoffee]
        add word ptr [Customer1.total], 225
        ret
    add4User1 endp

;-------------------------------------------------------------------------
    add5User1 proc 
        inc word ptr [Customer1.KernelKrunchPopcorn]
        add word ptr [Customer1.total], 230
        ret
    add5User1 endp

;-------------------------------------------------------------------------
    add6User1 proc 
        inc word ptr [Customer1.StackOverflowSoda]
        add word ptr [Customer1.total], 240
        ret
    add6User1 endp

addFoodMenuCustomer1 endp

; ???????????????????????????????????????????????????
; Display Item Customer                             ?
; ???????????????????????????????????????????????????

DisplayFoodMenuCustomer1 proc 
    call clearScreen

    PutStr DisplayItem1 
    PutInt Customer1.AlogrithmShips 
    PutStr equalSymbol
    mov ax, 110
    mov bx, Customer1.AlogrithmShips 
    mul bx
    PutInt ax
    PutCh 0ah 

    PutStr DisplayItem2 
    PutInt Customer1.DataByteBars 
    PutStr equalSymbol
    mov ax, 115
    mov bx, Customer1.DataByteBars 
    mul bx
    PutInt ax
    PutCh 0ah 

    PutStr DisplayItem3
    PutInt Customer1.RAMenNoodles 
    PutStr equalSymbol
    mov ax, 120
    mov bx, Customer1.RAMenNoodles 
    mul bx
    PutInt ax
    PutCh 0ah 

    PutStr DisplayItem4
    PutInt Customer1.DebugBrewCoffee 
    PutStr equalSymbol
    mov ax, 225
    mov bx, Customer1.DebugBrewCoffee 
    mul bx
    PutInt ax
    PutCh 0ah 

    PutStr DisplayItem5
    PutInt Customer1.KernelKrunchPopcorn 
    PutStr equalSymbol
    mov ax, 230
    mov bx, Customer1.KernelKrunchPopcorn 
    mul bx
    PutInt ax
    PutCh 0ah 

    PutStr DisplayItem6
    PutInt Customer1.StackOverflowSoda 
    PutStr equalSymbol
    mov ax, 240
    mov bx, Customer1.StackOverflowSoda 
    mul bx
    PutInt ax
    PutCh 0ah 

    PutStr DisplayTotal 
    PutInt Customer1.total
    PutCh ']'
    PutCh 0ah
    PutCh 0ah

    PutStr DisplayQuery
    GetCh DisplayChoice

    cmp DisplayChoice, 'a'
    je ispa1

    cmp DisplayChoice, 'r'
    je ispr1

    cmp DisplayChoice, 'p'
    je ispp1

    invalidChoicePrev1:
        PutStr DisplayInvalid
        call pressEnterPrompt
        call DisplayFoodMenuCustomer1

    ispa1:
        PutStr DisplayResponseA
        PutCh 0ah 
        call pressEnterPrompt
        call addFoodMenuCustomer1

    ispr1:
        PutStr DisplayResponseR
        PutCh 0ah
        call pressEnterPrompt
        call removeFoodCustomer1

    ispp1:
        PutStr DisplayResponseD
        PutCh 0ah
        call pressEnterPrompt
        call Customer1Menu    

DisplayFoodMenuCustomer1 endp

; ???????????????????????????????????????????????????
; remove Item Customer                              ?
; ???????????????????????????????????????????????????

removeFoodCustomer1 proc
    call clearScreen

    PutStr storeMenu
    PutStr storeMenu1
    PutStr storeMenu2
    PutStr storeMenu3
    PutStr storeMenu4
    PutStr storeMenu5
    PutStr storeMenuPadding

    PutStr removeFoodQuery
    GetCh foodChoice 

    cmp foodChoice, '1'
    je remove1OrderCustomer1

    cmp foodChoice, '2'
    je remove2OrderCustomer1

    cmp foodChoice, '3'
    je remove3OrderCustomer1

    cmp foodChoice, '4'
    je remove4OrderCustomer1

    cmp foodChoice, '5'
    je remove5OrderCustomer1

    cmp foodChoice, '6'
    je remove6OrderCustomer1

    cmp foodChoice, 'p'
    je removePreviousMenu1

    invalidChoiceRemoveFood:
        call removeIncorrectFoodCode1

    remove1OrderCustomer1:
        call remove1Customer1
        jmp removeCorrectFoodCode1

    remove2OrderCustomer1:
        call remove2Customer1
        jmp removeCorrectFoodCode1

    remove3OrderCustomer1:
        call remove3Customer1
        jmp removeCorrectFoodCode1

    remove4OrderCustomer1:
        call remove4Customer1
        jmp removeCorrectFoodCode1

    remove5OrderCustomer1:
        call remove5Customer1
        jmp removeCorrectFoodCode1

    remove6OrderCustomer1:
        call remove6Customer1
        jmp removeCorrectFoodCode1

    removePreviousMenu1:
        PutStr removeGoPrevious
        PutCh 0ah
        call pressEnterPrompt
        call Customer1Menu

    removeIncorrectFoodCode1:
        PutStr removeFailMsg 

    removeResetMenu1: 
        PutCh 0ah 
        call pressEnterPrompt   
        call removeFoodCustomer1

    removeCorrectFoodCode1:
        PutStr removedFood


        PutCh foodChoice
        PutCh 0ah 
        jmp removeResetMenu1


    remove1Customer1 proc
        dec word ptr [Customer1.AlogrithmShips]
        sub word ptr [Customer1.total], 110
        ret
    remove1Customer1 endp

    remove2Customer1 proc
        dec word ptr [Customer1.DataByteBars]
        sub word ptr [Customer1.total], 115
        ret
    remove2Customer1 endp

    remove3Customer1 proc
        dec word ptr [Customer1.RAMenNoodles]
        sub word ptr [Customer1.total], 120
        ret
    remove3Customer1 endp

    remove4Customer1 proc
        dec word ptr [Customer1.DebugBrewCoffee]
        sub word ptr [Customer1.total], 225
        ret
    remove4Customer1 endp

    remove5Customer1 proc
        dec word ptr [Customer1.KernelKrunchPopcorn]
        sub word ptr [Customer1.total], 230
        ret
    remove5Customer1 endp

    remove6Customer1 proc
        dec word ptr [Customer1.StackOverflowSoda]
        sub word ptr [Customer1.total], 240
        ret
    remove6Customer1 endp
    
removeFoodCustomer1 endp

main endp 
end main