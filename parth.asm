global main
extern printf, scanf

section .text
main:
    push rbp
    mov rbp,rsp
    sub rsp, 16
    ;body

    mov eax, 0
    lea rdi, [msg1]
    call printf ;ask string

    mov eax, 0
    lea rdi, [str_fmt]
    lea rsi, [str_len]
    call scanf ;input string

    mov eax, 0
    lea rdi,[str_var]
    lea rsi, [str_len]
    call printf ;print string

    mov eax, 0
    lea rdi, [msg2]
    call printf ;ask integer

    mov eax, 0
    lea rdi, [int_fmt]
    lea rsi, [int_len]
    call scanf ;input integer

    mov eax, 0
    lea rdi, [int_var]
    mov rsi, [int_len]
    call printf ;print integer

    ;end
    add rsp, 16
    leave
    mov eax, 0
    ret

section .bss
    str_len resb 1000
    int_len resb 4

section .data
    msg1 db "Input String: ", 0
    msg2 db "Input Number: ", 0

    str_var db "%s", 10, 0
    int_var db "%d", 10, 0

    str_fmt db "%s", 0
    int_fmt db "%d", 0