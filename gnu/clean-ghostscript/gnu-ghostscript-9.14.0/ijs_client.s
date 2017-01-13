	.text
	.file	"ijs_client.bc"
	.globl	ijs_invoke_server
	.align	16, 0x90
	.type	ijs_invoke_server,@function
ijs_invoke_server:                      # @ijs_invoke_server
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp2:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp3:
	.cfi_def_cfa_offset 40
	subq	$56, %rsp
.Ltmp4:
	.cfi_def_cfa_offset 96
.Ltmp5:
	.cfi_offset %rbx, -40
.Ltmp6:
	.cfi_offset %r12, -32
.Ltmp7:
	.cfi_offset %r14, -24
.Ltmp8:
	.cfi_offset %r15, -16
	movabsq	$734498686927850057, %rax # imm = 0xA3176AA0A534A49
	movq	%rax, 24(%rsp)
	leaq	52(%rsp), %rsi
	leaq	40(%rsp), %rdx
	leaq	36(%rsp), %rcx
	callq	ijs_exec_server
	xorl	%ebx, %ebx
	testl	%eax, %eax
	js	.LBB0_13
# BB#1:                                 # %if.end
	movl	$4294967295, %r12d      # imm = 0xFFFFFFFF
	movl	$8224, %edi             # imm = 0x2020
	callq	malloc
	movq	%rax, %rbx
	movl	40(%rsp), %eax
	movl	%eax, (%rbx)
	movl	36(%rsp), %eax
	movl	%eax, 4(%rbx)
	leaq	8(%rbx), %r15
	movl	52(%rsp), %esi
	movq	%r15, %rdi
	callq	ijs_send_init
	leaq	4112(%rbx), %r14
	movl	40(%rsp), %esi
	movq	%r14, %rdi
	callq	ijs_recv_init
	movl	8(%rbx), %edi
	leaq	24(%rsp), %rsi
	movl	$8, %edx
	callq	write
	cmpl	$8, %eax
	jne	.LBB0_12
# BB#2:                                 # %if.then.14
	movl	(%r14), %edi
	leaq	16(%rsp), %rsi
	movl	$8, %edx
	callq	read
	andq	%r12, %rax
	cmpq	$8, %rax
	jne	.LBB0_12
# BB#3:                                 # %lor.lhs.false
	leaq	16(%rsp), %rdi
	movl	$ijs_invoke_server.exp_resp_buf, %esi
	movl	$8, %edx
	callq	memcmp
	testl	%eax, %eax
	jne	.LBB0_12
# BB#4:                                 # %if.end.34
	movl	$2, %esi
	movq	%r15, %rdi
	callq	ijs_send_begin
	testl	%eax, %eax
	js	.LBB0_12
# BB#5:                                 # %if.end.41
	movl	$35, %esi
	movq	%r15, %rdi
	callq	ijs_send_int
	testl	%eax, %eax
	js	.LBB0_12
# BB#6:                                 # %if.then.43
	movq	%r15, %rdi
	callq	ijs_send_buf
	testl	%eax, %eax
	js	.LBB0_12
# BB#7:                                 # %if.end.47
	movq	%r14, %rdi
	callq	ijs_recv_ack
	testl	%eax, %eax
	js	.LBB0_12
# BB#8:                                 # %if.end.54
	leaq	12(%rsp), %rsi
	movq	%r14, %rdi
	callq	ijs_recv_int
	testl	%eax, %eax
	js	.LBB0_12
# BB#9:                                 # %if.then.56
	movl	12(%rsp), %eax
	cmpl	$36, %eax
	jl	.LBB0_11
# BB#10:                                # %if.then.59
	movl	$35, 12(%rsp)
	movl	$35, %eax
.LBB0_11:                               # %if.end.60
	movl	%eax, 8220(%rbx)
	jmp	.LBB0_13
.LBB0_12:                               # %if.then.64
	movl	8(%rbx), %edi
	callq	close
	movl	4112(%rbx), %edi
	callq	close
	movq	%rbx, %rdi
	callq	free
	xorl	%ebx, %ebx
.LBB0_13:                               # %cleanup
	movq	%rbx, %rax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end0:
	.size	ijs_invoke_server, .Lfunc_end0-ijs_invoke_server
	.cfi_endproc

	.globl	ijs_client_begin_cmd
	.align	16, 0x90
	.type	ijs_client_begin_cmd,@function
ijs_client_begin_cmd:                   # @ijs_client_begin_cmd
	.cfi_startproc
# BB#0:                                 # %entry
	addq	$8, %rdi
	jmp	ijs_send_begin          # TAILCALL
.Lfunc_end1:
	.size	ijs_client_begin_cmd, .Lfunc_end1-ijs_client_begin_cmd
	.cfi_endproc

	.globl	ijs_client_send_cmd_wait
	.align	16, 0x90
	.type	ijs_client_send_cmd_wait,@function
ijs_client_send_cmd_wait:               # @ijs_client_send_cmd_wait
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp9:
	.cfi_def_cfa_offset 16
.Ltmp10:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	leaq	8(%rbx), %rdi
	callq	ijs_send_buf
	testl	%eax, %eax
	js	.LBB2_1
# BB#2:                                 # %if.then
	addq	$4112, %rbx             # imm = 0x1010
	movq	%rbx, %rdi
	popq	%rbx
	jmp	ijs_recv_ack            # TAILCALL
.LBB2_1:                                # %if.end
	popq	%rbx
	retq
.Lfunc_end2:
	.size	ijs_client_send_cmd_wait, .Lfunc_end2-ijs_client_send_cmd_wait
	.cfi_endproc

	.globl	ijs_client_send_int
	.align	16, 0x90
	.type	ijs_client_send_int,@function
ijs_client_send_int:                    # @ijs_client_send_int
	.cfi_startproc
# BB#0:                                 # %entry
	addq	$8, %rdi
	jmp	ijs_send_int            # TAILCALL
.Lfunc_end3:
	.size	ijs_client_send_int, .Lfunc_end3-ijs_client_send_int
	.cfi_endproc

	.globl	ijs_client_send_cmd
	.align	16, 0x90
	.type	ijs_client_send_cmd,@function
ijs_client_send_cmd:                    # @ijs_client_send_cmd
	.cfi_startproc
# BB#0:                                 # %entry
	addq	$8, %rdi
	jmp	ijs_send_buf            # TAILCALL
.Lfunc_end4:
	.size	ijs_client_send_cmd, .Lfunc_end4-ijs_client_send_cmd
	.cfi_endproc

	.globl	ijs_client_send_data_wait
	.align	16, 0x90
	.type	ijs_client_send_data_wait,@function
ijs_client_send_data_wait:              # @ijs_client_send_data_wait
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp11:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp12:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp13:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp14:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp15:
	.cfi_def_cfa_offset 48
.Ltmp16:
	.cfi_offset %rbx, -48
.Ltmp17:
	.cfi_offset %r12, -40
.Ltmp18:
	.cfi_offset %r14, -32
.Ltmp19:
	.cfi_offset %r15, -24
.Ltmp20:
	.cfi_offset %rbp, -16
	movl	%ecx, %r12d
	movq	%rdx, %r14
	movl	%esi, %ebp
	movq	%rdi, %r15
	leaq	8(%r15), %rbx
	movl	$15, %esi
	movq	%rbx, %rdi
	callq	ijs_send_begin
	movq	%rbx, %rdi
	movl	%ebp, %esi
	callq	ijs_send_int
	movq	%rbx, %rdi
	movl	%r12d, %esi
	callq	ijs_send_int
	movq	%rbx, %rdi
	callq	ijs_send_buf
	testl	%eax, %eax
	jne	.LBB5_2
# BB#1:                                 # %if.end
	movl	(%rbx), %edi
	movslq	%r12d, %rdx
	movq	%r14, %rsi
	callq	write
	movq	%rax, %rcx
	movl	$-2, %eax
	cmpl	%r12d, %ecx
	jne	.LBB5_2
# BB#3:                                 # %if.end.10
	addq	$4112, %r15             # imm = 0x1010
	movq	%r15, %rdi
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	ijs_recv_ack            # TAILCALL
.LBB5_2:                                # %cleanup
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	ijs_client_send_data_wait, .Lfunc_end5-ijs_client_send_data_wait
	.cfi_endproc

	.globl	ijs_client_open
	.align	16, 0x90
	.type	ijs_client_open,@function
ijs_client_open:                        # @ijs_client_open
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp21:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp22:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp23:
	.cfi_def_cfa_offset 32
.Ltmp24:
	.cfi_offset %rbx, -24
.Ltmp25:
	.cfi_offset %r14, -16
	movq	%rdi, %r14
	leaq	8(%r14), %rbx
	movl	$4, %esi
	movq	%rbx, %rdi
	callq	ijs_send_begin
	movq	%rbx, %rdi
	callq	ijs_send_buf
	testl	%eax, %eax
	js	.LBB6_1
# BB#2:                                 # %if.then.i
	addq	$4112, %r14             # imm = 0x1010
	movq	%r14, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	ijs_recv_ack            # TAILCALL
.LBB6_1:                                # %ijs_client_send_cmd_wait.exit
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end6:
	.size	ijs_client_open, .Lfunc_end6-ijs_client_open
	.cfi_endproc

	.globl	ijs_client_close
	.align	16, 0x90
	.type	ijs_client_close,@function
ijs_client_close:                       # @ijs_client_close
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp26:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp27:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp28:
	.cfi_def_cfa_offset 32
.Ltmp29:
	.cfi_offset %rbx, -24
.Ltmp30:
	.cfi_offset %r14, -16
	movq	%rdi, %r14
	leaq	8(%r14), %rbx
	movl	$5, %esi
	movq	%rbx, %rdi
	callq	ijs_send_begin
	movq	%rbx, %rdi
	callq	ijs_send_buf
	testl	%eax, %eax
	js	.LBB7_1
# BB#2:                                 # %if.then.i
	addq	$4112, %r14             # imm = 0x1010
	movq	%r14, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	ijs_recv_ack            # TAILCALL
.LBB7_1:                                # %ijs_client_send_cmd_wait.exit
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end7:
	.size	ijs_client_close, .Lfunc_end7-ijs_client_close
	.cfi_endproc

	.globl	ijs_client_begin_job
	.align	16, 0x90
	.type	ijs_client_begin_job,@function
ijs_client_begin_job:                   # @ijs_client_begin_job
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp31:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp32:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp33:
	.cfi_def_cfa_offset 32
.Ltmp34:
	.cfi_offset %rbx, -32
.Ltmp35:
	.cfi_offset %r14, -24
.Ltmp36:
	.cfi_offset %rbp, -16
	movl	%esi, %r14d
	movq	%rdi, %rbx
	leaq	8(%rbx), %rbp
	movl	$6, %esi
	movq	%rbp, %rdi
	callq	ijs_send_begin
	movq	%rbp, %rdi
	movl	%r14d, %esi
	callq	ijs_send_int
	movq	%rbp, %rdi
	callq	ijs_send_buf
	testl	%eax, %eax
	js	.LBB8_1
# BB#2:                                 # %if.then.i
	addq	$4112, %rbx             # imm = 0x1010
	movq	%rbx, %rdi
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	ijs_recv_ack            # TAILCALL
.LBB8_1:                                # %ijs_client_send_cmd_wait.exit
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end8:
	.size	ijs_client_begin_job, .Lfunc_end8-ijs_client_begin_job
	.cfi_endproc

	.globl	ijs_client_end_job
	.align	16, 0x90
	.type	ijs_client_end_job,@function
ijs_client_end_job:                     # @ijs_client_end_job
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp37:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp38:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp39:
	.cfi_def_cfa_offset 32
.Ltmp40:
	.cfi_offset %rbx, -32
.Ltmp41:
	.cfi_offset %r14, -24
.Ltmp42:
	.cfi_offset %rbp, -16
	movl	%esi, %r14d
	movq	%rdi, %rbx
	leaq	8(%rbx), %rbp
	movl	$7, %esi
	movq	%rbp, %rdi
	callq	ijs_send_begin
	movq	%rbp, %rdi
	movl	%r14d, %esi
	callq	ijs_send_int
	movq	%rbp, %rdi
	callq	ijs_send_buf
	testl	%eax, %eax
	js	.LBB9_1
# BB#2:                                 # %if.then.i
	addq	$4112, %rbx             # imm = 0x1010
	movq	%rbx, %rdi
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	ijs_recv_ack            # TAILCALL
.LBB9_1:                                # %ijs_client_send_cmd_wait.exit
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end9:
	.size	ijs_client_end_job, .Lfunc_end9-ijs_client_end_job
	.cfi_endproc

	.globl	ijs_client_list_params
	.align	16, 0x90
	.type	ijs_client_list_params,@function
ijs_client_list_params:                 # @ijs_client_list_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp43:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp44:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp45:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp46:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp47:
	.cfi_def_cfa_offset 48
.Ltmp48:
	.cfi_offset %rbx, -48
.Ltmp49:
	.cfi_offset %r12, -40
.Ltmp50:
	.cfi_offset %r14, -32
.Ltmp51:
	.cfi_offset %r15, -24
.Ltmp52:
	.cfi_offset %rbp, -16
	movl	%ecx, %r14d
	movq	%rdx, %r15
	movl	%esi, %ebx
	movq	%rdi, %r12
	leaq	8(%r12), %rbp
	movl	$10, %esi
	movq	%rbp, %rdi
	callq	ijs_send_begin
	movq	%rbp, %rdi
	movl	%ebx, %esi
	callq	ijs_send_int
	movq	%rbp, %rdi
	callq	ijs_send_buf
	testl	%eax, %eax
	jne	.LBB10_2
# BB#1:                                 # %if.end
	addq	$4112, %r12             # imm = 0x1010
	movq	%r12, %rdi
	callq	ijs_recv_ack
	testl	%eax, %eax
	je	.LBB10_3
.LBB10_2:                               # %cleanup
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB10_3:                               # %if.end.6
	movq	%r12, %rdi
	movq	%r15, %rsi
	movl	%r14d, %edx
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	ijs_recv_block          # TAILCALL
.Lfunc_end10:
	.size	ijs_client_list_params, .Lfunc_end10-ijs_client_list_params
	.cfi_endproc

	.globl	ijs_client_enum_param
	.align	16, 0x90
	.type	ijs_client_enum_param,@function
ijs_client_enum_param:                  # @ijs_client_enum_param
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp53:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp54:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp55:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp56:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp57:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp58:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp59:
	.cfi_def_cfa_offset 64
.Ltmp60:
	.cfi_offset %rbx, -56
.Ltmp61:
	.cfi_offset %r12, -48
.Ltmp62:
	.cfi_offset %r13, -40
.Ltmp63:
	.cfi_offset %r14, -32
.Ltmp64:
	.cfi_offset %r15, -24
.Ltmp65:
	.cfi_offset %rbp, -16
	movl	%r8d, 4(%rsp)           # 4-byte Spill
	movq	%rcx, %r15
	movq	%rdx, %rbp
	movl	%esi, %r13d
	movq	%rdi, %r12
	movq	%rbp, %rdi
	callq	strlen
	movq	%rax, %r14
	leaq	8(%r12), %rbx
	movl	$11, %esi
	movq	%rbx, %rdi
	callq	ijs_send_begin
	movq	%rbx, %rdi
	movl	%r13d, %esi
	callq	ijs_send_int
	leal	1(%r14), %edx
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	ijs_send_block
	movl	%eax, %ecx
	movl	$-2, %eax
	testl	%ecx, %ecx
	js	.LBB11_3
# BB#1:                                 # %if.end
	movq	%rbx, %rdi
	callq	ijs_send_buf
	testl	%eax, %eax
	jne	.LBB11_3
# BB#2:                                 # %if.end.8
	addq	$4112, %r12             # imm = 0x1010
	movq	%r12, %rdi
	callq	ijs_recv_ack
	testl	%eax, %eax
	je	.LBB11_4
.LBB11_3:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB11_4:                               # %if.end.12
	movq	%r12, %rdi
	movq	%r15, %rsi
	movl	4(%rsp), %edx           # 4-byte Reload
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	ijs_recv_block          # TAILCALL
.Lfunc_end11:
	.size	ijs_client_enum_param, .Lfunc_end11-ijs_client_enum_param
	.cfi_endproc

	.globl	ijs_client_set_param
	.align	16, 0x90
	.type	ijs_client_set_param,@function
ijs_client_set_param:                   # @ijs_client_set_param
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp66:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp67:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp68:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp69:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp70:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp71:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp72:
	.cfi_def_cfa_offset 64
.Ltmp73:
	.cfi_offset %rbx, -56
.Ltmp74:
	.cfi_offset %r12, -48
.Ltmp75:
	.cfi_offset %r13, -40
.Ltmp76:
	.cfi_offset %r14, -32
.Ltmp77:
	.cfi_offset %r15, -24
.Ltmp78:
	.cfi_offset %rbp, -16
	movl	%r8d, %r15d
	movq	%rcx, (%rsp)            # 8-byte Spill
	movq	%rdx, %r13
	movl	%esi, %ebp
	movq	%rdi, %r14
	movq	%r13, %rdi
	callq	strlen
	movq	%rax, %r12
	leaq	8(%r14), %rbx
	movl	$12, %esi
	movq	%rbx, %rdi
	callq	ijs_send_begin
	movq	%rbx, %rdi
	movl	%ebp, %esi
	callq	ijs_send_int
	leal	1(%r12), %ebp
	leal	1(%r12,%r15), %esi
	movq	%rbx, %rdi
	callq	ijs_send_int
	movq	%rbx, %rdi
	movq	%r13, %rsi
	movl	%ebp, %edx
	callq	ijs_send_block
	testl	%eax, %eax
	jne	.LBB12_3
# BB#1:                                 # %if.end
	movq	%rbx, %rdi
	movq	(%rsp), %rsi            # 8-byte Reload
	movl	%r15d, %edx
	callq	ijs_send_block
	testl	%eax, %eax
	jne	.LBB12_3
# BB#2:                                 # %if.end.13
	movq	%rbx, %rdi
	callq	ijs_send_buf
	testl	%eax, %eax
	je	.LBB12_4
.LBB12_3:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB12_4:                               # %if.end.17
	addq	$4112, %r14             # imm = 0x1010
	movq	%r14, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	ijs_recv_ack            # TAILCALL
.Lfunc_end12:
	.size	ijs_client_set_param, .Lfunc_end12-ijs_client_set_param
	.cfi_endproc

	.globl	ijs_client_get_param
	.align	16, 0x90
	.type	ijs_client_get_param,@function
ijs_client_get_param:                   # @ijs_client_get_param
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp79:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp80:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp81:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp82:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp83:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp84:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp85:
	.cfi_def_cfa_offset 64
.Ltmp86:
	.cfi_offset %rbx, -56
.Ltmp87:
	.cfi_offset %r12, -48
.Ltmp88:
	.cfi_offset %r13, -40
.Ltmp89:
	.cfi_offset %r14, -32
.Ltmp90:
	.cfi_offset %r15, -24
.Ltmp91:
	.cfi_offset %rbp, -16
	movl	%r8d, 4(%rsp)           # 4-byte Spill
	movq	%rcx, %r15
	movq	%rdx, %rbp
	movl	%esi, %r13d
	movq	%rdi, %r12
	movq	%rbp, %rdi
	callq	strlen
	movq	%rax, %r14
	leaq	8(%r12), %rbx
	movl	$13, %esi
	movq	%rbx, %rdi
	callq	ijs_send_begin
	movq	%rbx, %rdi
	movl	%r13d, %esi
	callq	ijs_send_int
	leal	1(%r14), %edx
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	ijs_send_block
	movl	%eax, %ecx
	movl	$-2, %eax
	testl	%ecx, %ecx
	js	.LBB13_3
# BB#1:                                 # %if.end
	movq	%rbx, %rdi
	callq	ijs_send_buf
	testl	%eax, %eax
	jne	.LBB13_3
# BB#2:                                 # %if.end.8
	addq	$4112, %r12             # imm = 0x1010
	movq	%r12, %rdi
	callq	ijs_recv_ack
	testl	%eax, %eax
	je	.LBB13_4
.LBB13_3:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB13_4:                               # %if.end.12
	movq	%r12, %rdi
	movq	%r15, %rsi
	movl	4(%rsp), %edx           # 4-byte Reload
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	ijs_recv_block          # TAILCALL
.Lfunc_end13:
	.size	ijs_client_get_param, .Lfunc_end13-ijs_client_get_param
	.cfi_endproc

	.globl	ijs_client_begin_page
	.align	16, 0x90
	.type	ijs_client_begin_page,@function
ijs_client_begin_page:                  # @ijs_client_begin_page
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp92:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp93:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp94:
	.cfi_def_cfa_offset 32
.Ltmp95:
	.cfi_offset %rbx, -32
.Ltmp96:
	.cfi_offset %r14, -24
.Ltmp97:
	.cfi_offset %rbp, -16
	movl	%esi, %r14d
	movq	%rdi, %rbx
	leaq	8(%rbx), %rbp
	movl	$14, %esi
	movq	%rbp, %rdi
	callq	ijs_send_begin
	movq	%rbp, %rdi
	movl	%r14d, %esi
	callq	ijs_send_int
	movq	%rbp, %rdi
	callq	ijs_send_buf
	testl	%eax, %eax
	js	.LBB14_1
# BB#2:                                 # %if.then.i
	addq	$4112, %rbx             # imm = 0x1010
	movq	%rbx, %rdi
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	ijs_recv_ack            # TAILCALL
.LBB14_1:                               # %ijs_client_send_cmd_wait.exit
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end14:
	.size	ijs_client_begin_page, .Lfunc_end14-ijs_client_begin_page
	.cfi_endproc

	.globl	ijs_client_end_page
	.align	16, 0x90
	.type	ijs_client_end_page,@function
ijs_client_end_page:                    # @ijs_client_end_page
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp98:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp99:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp100:
	.cfi_def_cfa_offset 32
.Ltmp101:
	.cfi_offset %rbx, -32
.Ltmp102:
	.cfi_offset %r14, -24
.Ltmp103:
	.cfi_offset %rbp, -16
	movl	%esi, %r14d
	movq	%rdi, %rbx
	leaq	8(%rbx), %rbp
	movl	$16, %esi
	movq	%rbp, %rdi
	callq	ijs_send_begin
	movq	%rbp, %rdi
	movl	%r14d, %esi
	callq	ijs_send_int
	movq	%rbp, %rdi
	callq	ijs_send_buf
	testl	%eax, %eax
	js	.LBB15_1
# BB#2:                                 # %if.then.i
	addq	$4112, %rbx             # imm = 0x1010
	movq	%rbx, %rdi
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	ijs_recv_ack            # TAILCALL
.LBB15_1:                               # %ijs_client_send_cmd_wait.exit
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end15:
	.size	ijs_client_end_page, .Lfunc_end15-ijs_client_end_page
	.cfi_endproc

	.globl	ijs_client_get_version
	.align	16, 0x90
	.type	ijs_client_get_version,@function
ijs_client_get_version:                 # @ijs_client_get_version
	.cfi_startproc
# BB#0:                                 # %entry
	movl	8220(%rdi), %eax
	retq
.Lfunc_end16:
	.size	ijs_client_get_version, .Lfunc_end16-ijs_client_get_version
	.cfi_endproc

	.type	ijs_invoke_server.exp_resp_buf,@object # @ijs_invoke_server.exp_resp_buf
	.section	.rodata,"a",@progbits
ijs_invoke_server.exp_resp_buf:
	.ascii	"IJS\n\253v1\n"
	.size	ijs_invoke_server.exp_resp_buf, 8


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
