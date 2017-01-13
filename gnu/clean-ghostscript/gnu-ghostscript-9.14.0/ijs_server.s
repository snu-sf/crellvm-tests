	.text
	.file	"ijs_server.bc"
	.globl	ijs_server_init
	.align	16, 0x90
	.type	ijs_server_init,@function
ijs_server_init:                        # @ijs_server_init
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
	subq	$24, %rsp
.Ltmp4:
	.cfi_def_cfa_offset 64
.Ltmp5:
	.cfi_offset %rbx, -40
.Ltmp6:
	.cfi_offset %r12, -32
.Ltmp7:
	.cfi_offset %r14, -24
.Ltmp8:
	.cfi_offset %r15, -16
	movl	$4294967295, %r15d      # imm = 0xFFFFFFFF
	movl	$8392, %edi             # imm = 0x20C8
	callq	malloc
	movq	%rax, %rbx
	leaq	8(%rsp), %rdi
	movl	$.L.str, %esi
	movl	$8, %edx
	callq	memcpy
	leaq	4112(%rbx), %rdi
	xorl	%esi, %esi
	callq	ijs_recv_init
	leaq	8(%rbx), %r14
	movl	$1, %esi
	movq	%r14, %rdi
	callq	ijs_send_init
	movl	4112(%rbx), %edi
	leaq	16(%rsp), %rsi
	movl	$8, %edx
	callq	read
	movl	%eax, %r12d
	cmpq	$8, %r12
	jne	.LBB0_2
# BB#1:                                 # %if.then.7
	movl	(%r14), %edi
	leaq	8(%rsp), %rsi
	movl	$8, %edx
	callq	write
.LBB0_2:                                # %if.end.13
	andq	%r15, %rax
	movl	$0, 8336(%rbx)
	movl	$-1, 8340(%rbx)
	movq	$0, 8344(%rbx)
	movl	$0, 8356(%rbx)
	movq	$0, 8360(%rbx)
	movq	$0, 8376(%rbx)
	movq	$ijs_server_dummy_begin_cb, 8224(%rbx)
	movq	$ijs_server_dummy_end_cb, 8240(%rbx)
	cmpq	$8, %r12
	setne	%cl
	cmpq	$8, %rax
	jne	.LBB0_4
# BB#3:                                 # %if.end.13
	testb	%cl, %cl
	je	.LBB0_7
.LBB0_4:                                # %if.else
	xorl	%esi, %esi
	movq	%r14, %rdi
	callq	ijs_send_begin
	testl	%eax, %eax
	js	.LBB0_6
# BB#5:                                 # %if.end.i.i
	movq	%r14, %rdi
	callq	ijs_send_buf
.LBB0_6:                                # %ijs_server_done.exit
	movq	%rbx, %rdi
	callq	free
	xorl	%ebx, %ebx
.LBB0_7:                                # %cleanup
	movq	%rbx, %rax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end0:
	.size	ijs_server_init, .Lfunc_end0-ijs_server_init
	.cfi_endproc

	.align	16, 0x90
	.type	ijs_server_dummy_begin_cb,@function
ijs_server_dummy_begin_cb:              # @ijs_server_dummy_begin_cb
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end1:
	.size	ijs_server_dummy_begin_cb, .Lfunc_end1-ijs_server_dummy_begin_cb
	.cfi_endproc

	.align	16, 0x90
	.type	ijs_server_dummy_end_cb,@function
ijs_server_dummy_end_cb:                # @ijs_server_dummy_end_cb
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end2:
	.size	ijs_server_dummy_end_cb, .Lfunc_end2-ijs_server_dummy_end_cb
	.cfi_endproc

	.globl	ijs_server_done
	.align	16, 0x90
	.type	ijs_server_done,@function
ijs_server_done:                        # @ijs_server_done
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp9:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp10:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp11:
	.cfi_def_cfa_offset 32
.Ltmp12:
	.cfi_offset %rbx, -24
.Ltmp13:
	.cfi_offset %r14, -16
	movq	%rdi, %r14
	leaq	8(%r14), %rbx
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	ijs_send_begin
	testl	%eax, %eax
	js	.LBB3_2
# BB#1:                                 # %if.end.i
	movq	%rbx, %rdi
	callq	ijs_send_buf
.LBB3_2:                                # %ijs_server_ack.exit
	movq	%r14, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	free                    # TAILCALL
.Lfunc_end3:
	.size	ijs_server_done, .Lfunc_end3-ijs_server_done
	.cfi_endproc

	.globl	ijs_server_install_begin_cb
	.align	16, 0x90
	.type	ijs_server_install_begin_cb,@function
ijs_server_install_begin_cb:            # @ijs_server_install_begin_cb
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, 8224(%rdi)
	movq	%rdx, 8232(%rdi)
	xorl	%eax, %eax
	retq
.Lfunc_end4:
	.size	ijs_server_install_begin_cb, .Lfunc_end4-ijs_server_install_begin_cb
	.cfi_endproc

	.globl	ijs_server_install_end_cb
	.align	16, 0x90
	.type	ijs_server_install_end_cb,@function
ijs_server_install_end_cb:              # @ijs_server_install_end_cb
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, 8240(%rdi)
	movq	%rdx, 8248(%rdi)
	xorl	%eax, %eax
	retq
.Lfunc_end5:
	.size	ijs_server_install_end_cb, .Lfunc_end5-ijs_server_install_end_cb
	.cfi_endproc

	.globl	ijs_server_install_status_cb
	.align	16, 0x90
	.type	ijs_server_install_status_cb,@function
ijs_server_install_status_cb:           # @ijs_server_install_status_cb
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, 8256(%rdi)
	movq	%rdx, 8264(%rdi)
	xorl	%eax, %eax
	retq
.Lfunc_end6:
	.size	ijs_server_install_status_cb, .Lfunc_end6-ijs_server_install_status_cb
	.cfi_endproc

	.globl	ijs_server_install_list_cb
	.align	16, 0x90
	.type	ijs_server_install_list_cb,@function
ijs_server_install_list_cb:             # @ijs_server_install_list_cb
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, 8272(%rdi)
	movq	%rdx, 8280(%rdi)
	xorl	%eax, %eax
	retq
.Lfunc_end7:
	.size	ijs_server_install_list_cb, .Lfunc_end7-ijs_server_install_list_cb
	.cfi_endproc

	.globl	ijs_server_install_enum_cb
	.align	16, 0x90
	.type	ijs_server_install_enum_cb,@function
ijs_server_install_enum_cb:             # @ijs_server_install_enum_cb
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, 8288(%rdi)
	movq	%rdx, 8296(%rdi)
	xorl	%eax, %eax
	retq
.Lfunc_end8:
	.size	ijs_server_install_enum_cb, .Lfunc_end8-ijs_server_install_enum_cb
	.cfi_endproc

	.globl	ijs_server_install_set_cb
	.align	16, 0x90
	.type	ijs_server_install_set_cb,@function
ijs_server_install_set_cb:              # @ijs_server_install_set_cb
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, 8304(%rdi)
	movq	%rdx, 8312(%rdi)
	xorl	%eax, %eax
	retq
.Lfunc_end9:
	.size	ijs_server_install_set_cb, .Lfunc_end9-ijs_server_install_set_cb
	.cfi_endproc

	.globl	ijs_server_install_get_cb
	.align	16, 0x90
	.type	ijs_server_install_get_cb,@function
ijs_server_install_get_cb:              # @ijs_server_install_get_cb
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, 8320(%rdi)
	movq	%rdx, 8328(%rdi)
	xorl	%eax, %eax
	retq
.Lfunc_end10:
	.size	ijs_server_install_get_cb, .Lfunc_end10-ijs_server_install_get_cb
	.cfi_endproc

	.align	16, 0x90
	.type	ijs_server_proc_ack,@function
ijs_server_proc_ack:                    # @ijs_server_proc_ack
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$-3, %eax
	retq
.Lfunc_end11:
	.size	ijs_server_proc_ack, .Lfunc_end11-ijs_server_proc_ack
	.cfi_endproc

	.align	16, 0x90
	.type	ijs_server_proc_nak,@function
ijs_server_proc_nak:                    # @ijs_server_proc_nak
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$-3, %eax
	retq
.Lfunc_end12:
	.size	ijs_server_proc_nak, .Lfunc_end12-ijs_server_proc_nak
	.cfi_endproc

	.align	16, 0x90
	.type	ijs_server_proc_ping,@function
ijs_server_proc_ping:                   # @ijs_server_proc_ping
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp14:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp15:
	.cfi_def_cfa_offset 32
.Ltmp16:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	leaq	4112(%rbx), %rdi
	leaq	12(%rsp), %rsi
	callq	ijs_recv_int
	testl	%eax, %eax
	js	.LBB13_6
# BB#1:                                 # %if.end
	movl	12(%rsp), %eax
	cmpl	$36, %eax
	jl	.LBB13_3
# BB#2:                                 # %if.then.2
	movl	$35, 12(%rsp)
	movl	$35, %eax
.LBB13_3:                               # %if.end.3
	movl	%eax, 8220(%rbx)
	addq	$8, %rbx
	movl	$3, %esi
	movq	%rbx, %rdi
	callq	ijs_send_begin
	testl	%eax, %eax
	js	.LBB13_6
# BB#4:                                 # %if.end.8
	movl	$35, %esi
	movq	%rbx, %rdi
	callq	ijs_send_int
	testl	%eax, %eax
	js	.LBB13_6
# BB#5:                                 # %if.end.13
	movq	%rbx, %rdi
	callq	ijs_send_buf
.LBB13_6:                               # %cleanup
	addq	$16, %rsp
	popq	%rbx
	retq
.Lfunc_end13:
	.size	ijs_server_proc_ping, .Lfunc_end13-ijs_server_proc_ping
	.cfi_endproc

	.align	16, 0x90
	.type	ijs_server_proc_pong,@function
ijs_server_proc_pong:                   # @ijs_server_proc_pong
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$-3, %eax
	retq
.Lfunc_end14:
	.size	ijs_server_proc_pong, .Lfunc_end14-ijs_server_proc_pong
	.cfi_endproc

	.align	16, 0x90
	.type	ijs_server_proc_open,@function
ijs_server_proc_open:                   # @ijs_server_proc_open
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp17:
	.cfi_def_cfa_offset 16
.Ltmp18:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	addq	$8, %rbx
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	ijs_send_begin
	testl	%eax, %eax
	js	.LBB15_1
# BB#2:                                 # %if.end.i
	movq	%rbx, %rdi
	popq	%rbx
	jmp	ijs_send_buf            # TAILCALL
.LBB15_1:                               # %ijs_server_ack.exit
	popq	%rbx
	retq
.Lfunc_end15:
	.size	ijs_server_proc_open, .Lfunc_end15-ijs_server_proc_open
	.cfi_endproc

	.align	16, 0x90
	.type	ijs_server_proc_close,@function
ijs_server_proc_close:                  # @ijs_server_proc_close
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp19:
	.cfi_def_cfa_offset 16
.Ltmp20:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	addq	$8, %rbx
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	ijs_send_begin
	testl	%eax, %eax
	js	.LBB16_1
# BB#2:                                 # %if.end.i
	movq	%rbx, %rdi
	popq	%rbx
	jmp	ijs_send_buf            # TAILCALL
.LBB16_1:                               # %ijs_server_ack.exit
	popq	%rbx
	retq
.Lfunc_end16:
	.size	ijs_server_proc_close, .Lfunc_end16-ijs_server_proc_close
	.cfi_endproc

	.align	16, 0x90
	.type	ijs_server_proc_begin_job,@function
ijs_server_proc_begin_job:              # @ijs_server_proc_begin_job
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp21:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp22:
	.cfi_def_cfa_offset 32
.Ltmp23:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	leaq	4112(%rbx), %rdi
	leaq	12(%rsp), %rsi
	callq	ijs_recv_int
	testl	%eax, %eax
	js	.LBB17_7
# BB#1:                                 # %if.end
	cmpl	$0, 8336(%rbx)
	je	.LBB17_4
# BB#2:                                 # %if.then.1
	addq	$8, %rbx
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	ijs_send_begin
	testl	%eax, %eax
	js	.LBB17_7
# BB#3:                                 # %if.end.i
	movl	$-11, %esi
	movq	%rbx, %rdi
	callq	ijs_send_int
	jmp	.LBB17_5
.LBB17_4:                               # %if.end.3
	movl	$1, 8336(%rbx)
	movl	12(%rsp), %eax
	movl	%eax, 8340(%rbx)
	addq	$8, %rbx
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	ijs_send_begin
.LBB17_5:                               # %if.end.3
	testl	%eax, %eax
	js	.LBB17_7
# BB#6:                                 # %if.end.i.11
	movq	%rbx, %rdi
	callq	ijs_send_buf
.LBB17_7:                               # %cleanup
	addq	$16, %rsp
	popq	%rbx
	retq
.Lfunc_end17:
	.size	ijs_server_proc_begin_job, .Lfunc_end17-ijs_server_proc_begin_job
	.cfi_endproc

	.align	16, 0x90
	.type	ijs_server_proc_end_job,@function
ijs_server_proc_end_job:                # @ijs_server_proc_end_job
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp24:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp25:
	.cfi_def_cfa_offset 32
.Ltmp26:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	leaq	4112(%rbx), %rdi
	leaq	12(%rsp), %rsi
	callq	ijs_recv_int
	testl	%eax, %eax
	js	.LBB18_8
# BB#1:                                 # %if.end
	cmpl	$0, 8336(%rbx)
	je	.LBB18_3
# BB#2:                                 # %lor.lhs.false
	movl	12(%rsp), %eax
	cmpl	8340(%rbx), %eax
	jne	.LBB18_3
# BB#5:                                 # %if.end.5
	movl	$0, 8336(%rbx)
	addq	$8, %rbx
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	ijs_send_begin
	jmp	.LBB18_6
.LBB18_3:                               # %if.then.3
	addq	$8, %rbx
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	ijs_send_begin
	testl	%eax, %eax
	js	.LBB18_8
# BB#4:                                 # %if.end.i
	movl	$-10, %esi
	movq	%rbx, %rdi
	callq	ijs_send_int
.LBB18_6:                               # %if.end.5
	testl	%eax, %eax
	js	.LBB18_8
# BB#7:                                 # %if.end.i.12
	movq	%rbx, %rdi
	callq	ijs_send_buf
.LBB18_8:                               # %cleanup
	addq	$16, %rsp
	popq	%rbx
	retq
.Lfunc_end18:
	.size	ijs_server_proc_end_job, .Lfunc_end18-ijs_server_proc_end_job
	.cfi_endproc

	.align	16, 0x90
	.type	ijs_server_proc_cancel_job,@function
ijs_server_proc_cancel_job:             # @ijs_server_proc_cancel_job
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp27:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp28:
	.cfi_def_cfa_offset 32
.Ltmp29:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	leaq	4112(%rbx), %rdi
	leaq	12(%rsp), %rsi
	callq	ijs_recv_int
	testl	%eax, %eax
	js	.LBB19_8
# BB#1:                                 # %if.end
	cmpl	$0, 8336(%rbx)
	je	.LBB19_3
# BB#2:                                 # %lor.lhs.false
	movl	12(%rsp), %eax
	cmpl	8340(%rbx), %eax
	jne	.LBB19_3
# BB#5:                                 # %if.end.5
	movl	$0, 8336(%rbx)
	addq	$8, %rbx
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	ijs_send_begin
	jmp	.LBB19_6
.LBB19_3:                               # %if.then.3
	addq	$8, %rbx
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	ijs_send_begin
	testl	%eax, %eax
	js	.LBB19_8
# BB#4:                                 # %if.end.i
	movl	$-10, %esi
	movq	%rbx, %rdi
	callq	ijs_send_int
.LBB19_6:                               # %if.end.5
	testl	%eax, %eax
	js	.LBB19_8
# BB#7:                                 # %if.end.i.12
	movq	%rbx, %rdi
	callq	ijs_send_buf
.LBB19_8:                               # %cleanup
	addq	$16, %rsp
	popq	%rbx
	retq
.Lfunc_end19:
	.size	ijs_server_proc_cancel_job, .Lfunc_end19-ijs_server_proc_cancel_job
	.cfi_endproc

	.align	16, 0x90
	.type	ijs_server_proc_query_status,@function
ijs_server_proc_query_status:           # @ijs_server_proc_query_status
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp30:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp31:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp32:
	.cfi_def_cfa_offset 32
.Ltmp33:
	.cfi_offset %rbx, -24
.Ltmp34:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	leaq	4112(%rbx), %rdi
	leaq	4(%rsp), %rsi
	callq	ijs_recv_int
	testl	%eax, %eax
	js	.LBB20_12
# BB#1:                                 # %if.end
	cmpl	$0, 8336(%rbx)
	je	.LBB20_3
# BB#2:                                 # %lor.lhs.false
	movl	8340(%rbx), %edx
	cmpl	4(%rsp), %edx
	jne	.LBB20_3
# BB#5:                                 # %if.end.5
	movq	8280(%rbx), %rdi
	movq	%rbx, %rsi
	callq	*8256(%rbx)
	movl	%eax, %ebp
	addq	$8, %rbx
	testl	%ebp, %ebp
	js	.LBB20_6
# BB#7:                                 # %if.else
	xorl	%esi, %esi
	jmp	.LBB20_8
.LBB20_3:                               # %if.then.3
	addq	$8, %rbx
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	ijs_send_begin
	testl	%eax, %eax
	js	.LBB20_12
# BB#4:                                 # %if.end.i
	movl	$-10, %esi
	movq	%rbx, %rdi
	jmp	.LBB20_10
.LBB20_6:                               # %if.then.8
	movl	$1, %esi
.LBB20_8:                               # %if.else
	movq	%rbx, %rdi
	callq	ijs_send_begin
	testl	%eax, %eax
	js	.LBB20_12
# BB#9:                                 # %if.end.13
	movq	%rbx, %rdi
	movl	%ebp, %esi
.LBB20_10:                              # %if.end.13
	callq	ijs_send_int
	testl	%eax, %eax
	js	.LBB20_12
# BB#11:                                # %if.end.18
	movq	%rbx, %rdi
	callq	ijs_send_buf
.LBB20_12:                              # %cleanup.21
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end20:
	.size	ijs_server_proc_query_status, .Lfunc_end20-ijs_server_proc_query_status
	.cfi_endproc

	.align	16, 0x90
	.type	ijs_server_proc_list_params,@function
ijs_server_proc_list_params:            # @ijs_server_proc_list_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp35:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp36:
	.cfi_def_cfa_offset 24
	subq	$4120, %rsp             # imm = 0x1018
.Ltmp37:
	.cfi_def_cfa_offset 4144
.Ltmp38:
	.cfi_offset %rbx, -24
.Ltmp39:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	leaq	4112(%rbx), %rdi
	leaq	12(%rsp), %rsi
	callq	ijs_recv_int
	testl	%eax, %eax
	js	.LBB21_13
# BB#1:                                 # %if.end
	cmpl	$0, 8336(%rbx)
	je	.LBB21_3
# BB#2:                                 # %lor.lhs.false
	movl	8340(%rbx), %edx
	cmpl	12(%rsp), %edx
	jne	.LBB21_3
# BB#6:                                 # %if.end.5
	movq	8280(%rbx), %rdi
	leaq	16(%rsp), %rcx
	movl	$4096, %r8d             # imm = 0x1000
	movq	%rbx, %rsi
	callq	*8272(%rbx)
	movl	%eax, %ebp
	addq	$8, %rbx
	testl	%ebp, %ebp
	js	.LBB21_7
# BB#9:                                 # %if.else
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	ijs_send_begin
	testl	%eax, %eax
	js	.LBB21_13
# BB#10:                                # %if.end.13
	leaq	16(%rsp), %rsi
	movq	%rbx, %rdi
	movl	%ebp, %edx
	callq	ijs_send_block
	jmp	.LBB21_11
.LBB21_3:                               # %if.then.3
	addq	$8, %rbx
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	ijs_send_begin
	testl	%eax, %eax
	js	.LBB21_13
# BB#4:                                 # %if.end.i
	movl	$-10, %esi
	movq	%rbx, %rdi
	callq	ijs_send_int
.LBB21_11:                              # %if.end.13
	testl	%eax, %eax
	js	.LBB21_13
# BB#12:                                # %if.end.19
	movq	%rbx, %rdi
	callq	ijs_send_buf
.LBB21_13:                              # %cleanup.22
	addq	$4120, %rsp             # imm = 0x1018
	popq	%rbx
	popq	%rbp
	retq
.LBB21_7:                               # %if.then.8
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	ijs_send_begin
	testl	%eax, %eax
	js	.LBB21_13
# BB#8:                                 # %if.end.i.25
	movq	%rbx, %rdi
	movl	%ebp, %esi
	callq	ijs_send_int
	jmp	.LBB21_11
.Lfunc_end21:
	.size	ijs_server_proc_list_params, .Lfunc_end21-ijs_server_proc_list_params
	.cfi_endproc

	.align	16, 0x90
	.type	ijs_server_proc_enum_param,@function
ijs_server_proc_enum_param:             # @ijs_server_proc_enum_param
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp40:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp41:
	.cfi_def_cfa_offset 24
	subq	$4120, %rsp             # imm = 0x1018
.Ltmp42:
	.cfi_def_cfa_offset 4144
.Ltmp43:
	.cfi_offset %rbx, -24
.Ltmp44:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	leaq	4112(%rbx), %rdi
	leaq	12(%rsp), %rsi
	callq	ijs_recv_int
	testl	%eax, %eax
	js	.LBB22_15
# BB#1:                                 # %if.end
	cmpl	$0, 8336(%rbx)
	je	.LBB22_3
# BB#2:                                 # %lor.lhs.false
	movl	8340(%rbx), %edx
	cmpl	12(%rsp), %edx
	jne	.LBB22_3
# BB#6:                                 # %if.end.5
	movslq	8216(%rbx), %rsi
	movl	8212(%rbx), %edi
	movl	$-7, %eax
	cmpl	%esi, %edi
	je	.LBB22_15
# BB#7:                                 # %lor.lhs.false.13
	leaq	4116(%rbx,%rsi), %rcx
	notl	%esi
	addl	%esi, %edi
	movslq	%edi, %rsi
	cmpb	$0, (%rcx,%rsi)
	jne	.LBB22_15
# BB#8:                                 # %if.end.17
	movq	8296(%rbx), %rdi
	leaq	16(%rsp), %r8
	movl	$4096, %r9d             # imm = 0x1000
	movq	%rbx, %rsi
	callq	*8288(%rbx)
	movl	%eax, %ebp
	addq	$8, %rbx
	testl	%ebp, %ebp
	js	.LBB22_9
# BB#11:                                # %if.else
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	ijs_send_begin
	testl	%eax, %eax
	js	.LBB22_15
# BB#12:                                # %if.end.28
	leaq	16(%rsp), %rsi
	movq	%rbx, %rdi
	movl	%ebp, %edx
	callq	ijs_send_block
	jmp	.LBB22_13
.LBB22_3:                               # %if.then.3
	addq	$8, %rbx
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	ijs_send_begin
	testl	%eax, %eax
	js	.LBB22_15
# BB#4:                                 # %if.end.i
	movl	$-10, %esi
	movq	%rbx, %rdi
	callq	ijs_send_int
.LBB22_13:                              # %if.end.28
	testl	%eax, %eax
	js	.LBB22_15
# BB#14:                                # %if.end.35
	movq	%rbx, %rdi
	callq	ijs_send_buf
.LBB22_15:                              # %cleanup.38
	addq	$4120, %rsp             # imm = 0x1018
	popq	%rbx
	popq	%rbp
	retq
.LBB22_9:                               # %if.then.22
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	ijs_send_begin
	testl	%eax, %eax
	js	.LBB22_15
# BB#10:                                # %if.end.i.33
	movq	%rbx, %rdi
	movl	%ebp, %esi
	callq	ijs_send_int
	jmp	.LBB22_13
.Lfunc_end22:
	.size	ijs_server_proc_enum_param, .Lfunc_end22-ijs_server_proc_enum_param
	.cfi_endproc

	.align	16, 0x90
	.type	ijs_server_proc_set_param,@function
ijs_server_proc_set_param:              # @ijs_server_proc_set_param
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp45:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp46:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp47:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp48:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp49:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp50:
	.cfi_def_cfa_offset 56
	subq	$296, %rsp              # imm = 0x128
.Ltmp51:
	.cfi_def_cfa_offset 352
.Ltmp52:
	.cfi_offset %rbx, -56
.Ltmp53:
	.cfi_offset %r12, -48
.Ltmp54:
	.cfi_offset %r13, -40
.Ltmp55:
	.cfi_offset %r14, -32
.Ltmp56:
	.cfi_offset %r15, -24
.Ltmp57:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	leaq	4112(%rbx), %rbp
	leaq	28(%rsp), %rsi
	movq	%rbp, %rdi
	callq	ijs_recv_int
	testl	%eax, %eax
	js	.LBB23_119
# BB#1:                                 # %if.end
	cmpl	$0, 8336(%rbx)
	je	.LBB23_3
# BB#2:                                 # %lor.lhs.false
	movl	8340(%rbx), %eax
	cmpl	28(%rsp), %eax
	jne	.LBB23_3
# BB#5:                                 # %if.end.5
	leaq	24(%rsp), %rsi
	movq	%rbp, %rdi
	callq	ijs_recv_int
	testl	%eax, %eax
	js	.LBB23_119
# BB#6:                                 # %if.end.10
	movl	24(%rsp), %r15d
	movl	8212(%rbx), %r13d
	movslq	8216(%rbx), %r14
	movl	%r13d, %ecx
	subl	%r14d, %ecx
	movl	$-3, %eax
	cmpl	%ecx, %r15d
	jne	.LBB23_119
# BB#7:                                 # %if.end.15
	testl	%r13d, %r13d
	jle	.LBB23_12
# BB#8:                                 # %for.body.lr.ph.i
	movslq	%r13d, %rdx
	leaq	4116(%r14,%rbx), %rsi
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB23_9:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	cmpb	$0, (%rsi,%rcx)
	je	.LBB23_11
# BB#10:                                # %for.inc.i
                                        #   in Loop: Header=BB23_9 Depth=1
	incq	%rcx
	cmpq	%rdx, %rcx
	jl	.LBB23_9
	jmp	.LBB23_12
.LBB23_3:                               # %if.then.3
	addq	$8, %rbx
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	ijs_send_begin
	testl	%eax, %eax
	js	.LBB23_119
# BB#4:                                 # %if.end.i
	movl	$-10, %esi
	movq	%rbx, %rdi
.LBB23_116:                             # %if.end.i.40
	callq	ijs_send_int
.LBB23_117:                             # %if.end.i.40
	testl	%eax, %eax
	js	.LBB23_119
# BB#118:                               # %if.end.i.49
	movq	%rbx, %rdi
	callq	ijs_send_buf
.LBB23_119:                             # %cleanup
	addq	$296, %rsp              # imm = 0x128
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB23_11:                              # %for.body.cleanup_crit_edge.i
	movl	%ecx, %r13d
.LBB23_12:                              # %ijs_strnlen.exit
	cmpl	%r15d, %r13d
	je	.LBB23_119
# BB#13:                                # %if.end.24
	leaq	4116(%rbx,%r14), %r12
	movslq	%r13d, %rbp
	incl	%r13d
	movl	28(%rsp), %eax
	movl	%eax, 12(%rsp)          # 4-byte Spill
	movl	$.L.str.1, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$3, %rcx
	ja	.LBB23_21
# BB#14:                                # %cond.true.i
	movzbl	(%r12), %eax
	addl	$-78, %eax
	testq	%rcx, %rcx
	je	.LBB23_22
# BB#15:                                # %cond.true.i
	testl	%eax, %eax
	jne	.LBB23_22
# BB#16:                                # %if.then.i
	movzbl	1(%r12), %eax
	addl	$-117, %eax
	cmpq	$2, %rcx
	jb	.LBB23_22
# BB#17:                                # %if.then.i
	testl	%eax, %eax
	jne	.LBB23_22
# BB#18:                                # %if.then.18.i
	movzbl	2(%r12), %eax
	addl	$-109, %eax
	cmpq	$3, %rcx
	jb	.LBB23_22
# BB#19:                                # %if.then.18.i
	testl	%eax, %eax
	jne	.LBB23_22
# BB#20:                                # %if.then.28.i
	movzbl	3(%r12), %eax
	addl	$-67, %eax
	jmp	.LBB23_22
.LBB23_21:                              # %cond.false.i
	movl	$.L.str.1, %esi
	movq	%r12, %rdi
	callq	strcmp
.LBB23_22:                              # %cond.end.i
	leaq	1(%r12,%rbp), %rcx
	movq	%rbp, 16(%rsp)          # 8-byte Spill
	movl	%r15d, %ebp
	subl	%r13d, %ebp
	testl	%eax, %eax
	je	.LBB23_23
# BB#30:                                # %land.lhs.true.48.i
	movq	%rcx, (%rsp)            # 8-byte Spill
	movl	$.L.str.2, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$3, %rcx
	ja	.LBB23_38
# BB#31:                                # %cond.true.52.i
	movzbl	(%r12), %eax
	addl	$-66, %eax
	testq	%rcx, %rcx
	je	.LBB23_39
# BB#32:                                # %cond.true.52.i
	testl	%eax, %eax
	jne	.LBB23_39
# BB#33:                                # %if.then.66.i
	movzbl	1(%r12), %eax
	addl	$-105, %eax
	cmpq	$2, %rcx
	jb	.LBB23_39
# BB#34:                                # %if.then.66.i
	testl	%eax, %eax
	jne	.LBB23_39
# BB#35:                                # %if.then.76.i
	movzbl	2(%r12), %eax
	addl	$-116, %eax
	cmpq	$3, %rcx
	jb	.LBB23_39
# BB#36:                                # %if.then.76.i
	testl	%eax, %eax
	jne	.LBB23_39
# BB#37:                                # %if.then.86.i
	movzbl	3(%r12), %eax
	addl	$-115, %eax
	jmp	.LBB23_39
.LBB23_23:                              # %if.then.37.i
	movl	$-7, %r12d
	cmpl	%r13d, %r15d
	je	.LBB23_114
# BB#24:                                # %if.end.i.i
	movzbl	(%rcx), %ecx
	cmpl	$45, %ecx
	sete	%al
	movzbl	%al, %edx
	cmpl	%ebp, %edx
	je	.LBB23_114
# BB#25:                                # %for.cond.preheader.i.i
	movq	8344(%rbx), %r8
	xorl	%esi, %esi
	cmpl	%ebp, %edx
	jge	.LBB23_29
# BB#26:                                # %for.body.lr.ph.i.i
	movzbl	%cl, %ecx
	cmpl	$45, %ecx
	sete	%cl
	movzbl	%cl, %ecx
	movslq	%ebp, %rdx
	movq	16(%rsp), %rax          # 8-byte Reload
	addq	%r14, %rax
	leaq	4117(%rbx,%rax), %rdi
	xorl	%esi, %esi
.LBB23_27:                              # %for.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	movsbl	(%rdi,%rcx), %ebp
	movb	%bpl, %al
	addb	$-48, %al
	movzbl	%al, %eax
	cmpl	$9, %eax
	ja	.LBB23_114
# BB#28:                                # %for.inc.i.i
                                        #   in Loop: Header=BB23_27 Depth=1
	leal	(%rsi,%rsi,4), %eax
	leal	-48(%rbp,%rax,2), %esi
	incq	%rcx
	cmpq	%rdx, %rcx
	jl	.LBB23_27
.LBB23_29:                              # %if.then.41.i
	movl	%esi, (%r8)
	orb	$1, 8352(%rbx)
	jmp	.LBB23_112
.LBB23_38:                              # %cond.false.95.i
	movl	$.L.str.2, %esi
	movq	%r12, %rdi
	callq	strcmp
.LBB23_39:                              # %cond.end.97.i
	testl	%eax, %eax
	je	.LBB23_40
# BB#47:                                # %land.lhs.true.115.i
	movl	$.L.str.3, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$3, %rcx
	ja	.LBB23_55
# BB#48:                                # %cond.true.119.i
	movzbl	(%r12), %eax
	addl	$-67, %eax
	testq	%rcx, %rcx
	je	.LBB23_56
# BB#49:                                # %cond.true.119.i
	testl	%eax, %eax
	jne	.LBB23_56
# BB#50:                                # %if.then.133.i
	movzbl	1(%r12), %eax
	addl	$-111, %eax
	cmpq	$2, %rcx
	jb	.LBB23_56
# BB#51:                                # %if.then.133.i
	testl	%eax, %eax
	jne	.LBB23_56
# BB#52:                                # %if.then.143.i
	movzbl	2(%r12), %eax
	addl	$-108, %eax
	cmpq	$3, %rcx
	jb	.LBB23_56
# BB#53:                                # %if.then.143.i
	testl	%eax, %eax
	jne	.LBB23_56
# BB#54:                                # %if.then.153.i
	movzbl	3(%r12), %eax
	addl	$-111, %eax
	jmp	.LBB23_56
.LBB23_40:                              # %if.then.100.i
	movl	$-7, %r12d
	cmpl	%r13d, %r15d
	je	.LBB23_114
# BB#41:                                # %if.end.i.166.i
	movq	(%rsp), %rax            # 8-byte Reload
	movzbl	(%rax), %ecx
	cmpl	$45, %ecx
	sete	%al
	movzbl	%al, %edx
	cmpl	%ebp, %edx
	je	.LBB23_114
# BB#42:                                # %for.cond.preheader.i.168.i
	movq	8344(%rbx), %r8
	xorl	%esi, %esi
	cmpl	%ebp, %edx
	jge	.LBB23_46
# BB#43:                                # %for.body.lr.ph.i.169.i
	movzbl	%cl, %ecx
	cmpl	$45, %ecx
	sete	%cl
	movzbl	%cl, %ecx
	movslq	%ebp, %rdx
	movq	16(%rsp), %rax          # 8-byte Reload
	addq	%r14, %rax
	leaq	4117(%rbx,%rax), %rdi
	xorl	%esi, %esi
.LBB23_44:                              # %for.body.i.174.i
                                        # =>This Inner Loop Header: Depth=1
	movsbl	(%rdi,%rcx), %ebp
	movb	%bpl, %al
	addb	$-48, %al
	movzbl	%al, %eax
	cmpl	$9, %eax
	ja	.LBB23_114
# BB#45:                                # %for.inc.i.181.i
                                        #   in Loop: Header=BB23_44 Depth=1
	leal	(%rsi,%rsi,4), %eax
	leal	-48(%rbp,%rax,2), %esi
	incq	%rcx
	cmpq	%rdx, %rcx
	jl	.LBB23_44
.LBB23_46:                              # %if.then.105.i
	movl	%esi, 4(%r8)
	orb	$2, 8352(%rbx)
	jmp	.LBB23_112
.LBB23_55:                              # %cond.false.162.i
	movl	$.L.str.3, %esi
	movq	%r12, %rdi
	callq	strcmp
.LBB23_56:                              # %cond.end.164.i
	testl	%eax, %eax
	je	.LBB23_57
# BB#58:                                # %land.lhs.true.187.i
	movl	$.L.str.4, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$3, %rcx
	ja	.LBB23_66
# BB#59:                                # %cond.true.191.i
	movzbl	(%r12), %eax
	addl	$-87, %eax
	testq	%rcx, %rcx
	je	.LBB23_67
# BB#60:                                # %cond.true.191.i
	testl	%eax, %eax
	jne	.LBB23_67
# BB#61:                                # %if.then.205.i
	movzbl	1(%r12), %eax
	addl	$-105, %eax
	cmpq	$2, %rcx
	jb	.LBB23_67
# BB#62:                                # %if.then.205.i
	testl	%eax, %eax
	jne	.LBB23_67
# BB#63:                                # %if.then.215.i
	movzbl	2(%r12), %eax
	addl	$-100, %eax
	cmpq	$3, %rcx
	jb	.LBB23_67
# BB#64:                                # %if.then.215.i
	testl	%eax, %eax
	jne	.LBB23_67
# BB#65:                                # %if.then.225.i
	movzbl	3(%r12), %eax
	addl	$-116, %eax
	jmp	.LBB23_67
.LBB23_57:                              # %if.then.167.i
	cmpl	$255, %ebp
	movl	$255, %eax
	cmovlel	%ebp, %eax
	movq	8344(%rbx), %rdi
	addq	$8, %rdi
	movslq	%eax, %rbp
	movq	(%rsp), %rsi            # 8-byte Reload
	movq	%rbp, %rdx
	callq	memcpy
	movq	8344(%rbx), %rax
	movb	$0, 8(%rax,%rbp)
	orb	$4, 8352(%rbx)
.LBB23_112:                             # %if.else
	addq	$8, %rbx
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	ijs_send_begin
	jmp	.LBB23_117
.LBB23_66:                              # %cond.false.234.i
	movl	$.L.str.4, %esi
	movq	%r12, %rdi
	callq	strcmp
.LBB23_67:                              # %cond.end.236.i
	testl	%eax, %eax
	je	.LBB23_68
# BB#75:                                # %land.lhs.true.254.i
	movl	$.L.str.5, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$3, %rcx
	ja	.LBB23_83
# BB#76:                                # %cond.true.258.i
	movzbl	(%r12), %eax
	addl	$-72, %eax
	testq	%rcx, %rcx
	je	.LBB23_84
# BB#77:                                # %cond.true.258.i
	testl	%eax, %eax
	jne	.LBB23_84
# BB#78:                                # %if.then.272.i
	movzbl	1(%r12), %eax
	addl	$-101, %eax
	cmpq	$2, %rcx
	jb	.LBB23_84
# BB#79:                                # %if.then.272.i
	testl	%eax, %eax
	jne	.LBB23_84
# BB#80:                                # %if.then.282.i
	movzbl	2(%r12), %eax
	addl	$-105, %eax
	cmpq	$3, %rcx
	jb	.LBB23_84
# BB#81:                                # %if.then.282.i
	testl	%eax, %eax
	jne	.LBB23_84
# BB#82:                                # %if.then.292.i
	movzbl	3(%r12), %eax
	addl	$-103, %eax
	jmp	.LBB23_84
.LBB23_68:                              # %if.then.239.i
	movl	$-7, %r12d
	cmpl	%r13d, %r15d
	je	.LBB23_114
# BB#69:                                # %if.end.i.194.i
	movq	(%rsp), %rax            # 8-byte Reload
	movzbl	(%rax), %ecx
	cmpl	$45, %ecx
	sete	%al
	movzbl	%al, %edx
	cmpl	%ebp, %edx
	je	.LBB23_114
# BB#70:                                # %for.cond.preheader.i.196.i
	movq	8344(%rbx), %r8
	xorl	%esi, %esi
	cmpl	%ebp, %edx
	jge	.LBB23_74
# BB#71:                                # %for.body.lr.ph.i.197.i
	movzbl	%cl, %ecx
	cmpl	$45, %ecx
	sete	%cl
	movzbl	%cl, %ecx
	movslq	%ebp, %rdx
	movq	16(%rsp), %rax          # 8-byte Reload
	addq	%r14, %rax
	leaq	4117(%rbx,%rax), %rdi
	xorl	%esi, %esi
.LBB23_72:                              # %for.body.i.202.i
                                        # =>This Inner Loop Header: Depth=1
	movsbl	(%rdi,%rcx), %ebp
	movb	%bpl, %al
	addb	$-48, %al
	movzbl	%al, %eax
	cmpl	$9, %eax
	ja	.LBB23_114
# BB#73:                                # %for.inc.i.209.i
                                        #   in Loop: Header=BB23_72 Depth=1
	leal	(%rsi,%rsi,4), %eax
	leal	-48(%rbp,%rax,2), %esi
	incq	%rcx
	cmpq	%rdx, %rcx
	jl	.LBB23_72
.LBB23_74:                              # %if.then.244.i
	movl	%esi, 264(%r8)
	orb	$8, 8352(%rbx)
	jmp	.LBB23_112
.LBB23_83:                              # %cond.false.301.i
	movl	$.L.str.5, %esi
	movq	%r12, %rdi
	callq	strcmp
.LBB23_84:                              # %cond.end.303.i
	testl	%eax, %eax
	je	.LBB23_85
# BB#92:                                # %land.lhs.true.321.i
	movl	$.L.str.6, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$3, %rcx
	ja	.LBB23_100
# BB#93:                                # %cond.true.325.i
	movzbl	(%r12), %eax
	addl	$-68, %eax
	testq	%rcx, %rcx
	je	.LBB23_101
# BB#94:                                # %cond.true.325.i
	testl	%eax, %eax
	jne	.LBB23_101
# BB#95:                                # %if.then.339.i
	movzbl	1(%r12), %eax
	addl	$-112, %eax
	cmpq	$2, %rcx
	jb	.LBB23_101
# BB#96:                                # %if.then.339.i
	testl	%eax, %eax
	jne	.LBB23_101
# BB#97:                                # %if.then.349.i
	movzbl	2(%r12), %eax
	addl	$-105, %eax
	cmpq	$3, %rcx
	jb	.LBB23_101
# BB#98:                                # %if.then.349.i
	testl	%eax, %eax
	jne	.LBB23_101
# BB#99:                                # %if.then.359.i
	movzbl	3(%r12), %eax
	jmp	.LBB23_101
.LBB23_85:                              # %if.then.306.i
	movl	$-7, %r12d
	cmpl	%r13d, %r15d
	je	.LBB23_114
# BB#86:                                # %if.end.i.218.i
	movq	(%rsp), %rax            # 8-byte Reload
	movzbl	(%rax), %ecx
	cmpl	$45, %ecx
	sete	%al
	movzbl	%al, %edx
	cmpl	%ebp, %edx
	je	.LBB23_114
# BB#87:                                # %for.cond.preheader.i.220.i
	movq	8344(%rbx), %r8
	xorl	%esi, %esi
	cmpl	%ebp, %edx
	jge	.LBB23_91
# BB#88:                                # %for.body.lr.ph.i.221.i
	movzbl	%cl, %ecx
	cmpl	$45, %ecx
	sete	%cl
	movzbl	%cl, %ecx
	movslq	%ebp, %rdx
	movq	16(%rsp), %rax          # 8-byte Reload
	addq	%r14, %rax
	leaq	4117(%rbx,%rax), %rdi
	xorl	%esi, %esi
.LBB23_89:                              # %for.body.i.226.i
                                        # =>This Inner Loop Header: Depth=1
	movsbl	(%rdi,%rcx), %ebp
	movb	%bpl, %al
	addb	$-48, %al
	movzbl	%al, %eax
	cmpl	$9, %eax
	ja	.LBB23_114
# BB#90:                                # %for.inc.i.233.i
                                        #   in Loop: Header=BB23_89 Depth=1
	leal	(%rsi,%rsi,4), %eax
	leal	-48(%rbp,%rax,2), %esi
	incq	%rcx
	cmpq	%rdx, %rcx
	jl	.LBB23_89
.LBB23_91:                              # %if.then.311.i
	movl	%esi, 268(%r8)
	orb	$16, 8352(%rbx)
	jmp	.LBB23_112
.LBB23_100:                             # %cond.false.368.i
	movl	$.L.str.6, %esi
	movq	%r12, %rdi
	callq	strcmp
.LBB23_101:                             # %cond.end.370.i
	testl	%eax, %eax
	je	.LBB23_102
# BB#113:                               # %ijs_server_set_param.exit
	movq	8312(%rbx), %rdi
	movq	%rbx, %rsi
	movl	12(%rsp), %edx          # 4-byte Reload
	movq	%r12, %rcx
	movq	(%rsp), %r8             # 8-byte Reload
	movl	%ebp, %r9d
	callq	*8304(%rbx)
	movl	%eax, %r12d
	testl	%r12d, %r12d
	jne	.LBB23_114
	jmp	.LBB23_112
.LBB23_102:                             # %for.cond.preheader.i
	xorl	%eax, %eax
	testl	%ebp, %ebp
	jle	.LBB23_106
# BB#103:                               # %for.body.lr.ph.i.30
	movslq	%ebp, %rcx
	movq	16(%rsp), %rax          # 8-byte Reload
	addq	%r14, %rax
	leaq	4117(%rbx,%rax), %rdx
	xorl	%eax, %eax
.LBB23_104:                             # %for.body.i.32
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rdx,%rax), %esi
	cmpl	$120, %esi
	je	.LBB23_106
# BB#105:                               # %for.inc.i.34
                                        #   in Loop: Header=BB23_104 Depth=1
	incq	%rax
	cmpq	%rcx, %rax
	jl	.LBB23_104
.LBB23_106:                             # %for.end.i
	movl	$-7, %r12d
	cmpl	%ebp, %eax
	je	.LBB23_114
# BB#107:                               # %if.end.387.i
	leal	1(%rax), %r14d
	movl	$-12, %r12d
	cmpl	$256, %r14d             # imm = 0x100
	ja	.LBB23_114
# BB#108:                               # %if.end.i.248.i
	movq	8344(%rbx), %r12
	movslq	%eax, %r13
	leaq	32(%rsp), %r15
	movq	%r15, %rdi
	movq	(%rsp), %rsi            # 8-byte Reload
	movq	%r13, %rdx
	callq	memcpy
	movb	$0, 32(%rsp,%r13)
	leaq	288(%rsp), %rsi
	movq	%r15, %rdi
	callq	strtod
	movsd	%xmm0, 272(%r12)
	movl	$-7, %r12d
	cmpq	%r15, 288(%rsp)
	je	.LBB23_114
# BB#109:                               # %if.end.393.i
	subl	%r14d, %ebp
	leal	1(%rbp), %eax
	movl	$-12, %r12d
	cmpl	$256, %eax              # imm = 0x100
	ja	.LBB23_114
# BB#110:                               # %if.end.i.189.i
	movq	8344(%rbx), %r12
	movq	(%rsp), %rax            # 8-byte Reload
	leaq	1(%rax,%r13), %rsi
	movslq	%ebp, %r14
	movq	%r15, %rdi
	movq	%r14, %rdx
	callq	memcpy
	movb	$0, 32(%rsp,%r14)
	leaq	288(%rsp), %rsi
	movq	%r15, %rdi
	callq	strtod
	movsd	%xmm0, 280(%r12)
	movl	$-7, %r12d
	cmpq	%r15, 288(%rsp)
	je	.LBB23_114
# BB#111:                               # %if.end.401.i
	orb	$32, 8352(%rbx)
	jmp	.LBB23_112
.LBB23_114:                             # %if.then.31
	addq	$8, %rbx
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	ijs_send_begin
	testl	%eax, %eax
	js	.LBB23_119
# BB#115:                               # %if.end.i.40
	movq	%rbx, %rdi
	movl	%r12d, %esi
	jmp	.LBB23_116
.Lfunc_end23:
	.size	ijs_server_proc_set_param, .Lfunc_end23-ijs_server_proc_set_param
	.cfi_endproc

	.align	16, 0x90
	.type	ijs_server_proc_get_param,@function
ijs_server_proc_get_param:              # @ijs_server_proc_get_param
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp58:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp59:
	.cfi_def_cfa_offset 24
	subq	$4120, %rsp             # imm = 0x1018
.Ltmp60:
	.cfi_def_cfa_offset 4144
.Ltmp61:
	.cfi_offset %rbx, -24
.Ltmp62:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	leaq	4112(%rbx), %rdi
	leaq	12(%rsp), %rsi
	callq	ijs_recv_int
	testl	%eax, %eax
	js	.LBB24_15
# BB#1:                                 # %if.end
	cmpl	$0, 8336(%rbx)
	je	.LBB24_3
# BB#2:                                 # %lor.lhs.false
	movl	8340(%rbx), %edx
	cmpl	12(%rsp), %edx
	jne	.LBB24_3
# BB#6:                                 # %if.end.5
	movslq	8216(%rbx), %rsi
	movl	8212(%rbx), %edi
	movl	$-7, %eax
	cmpl	%esi, %edi
	je	.LBB24_15
# BB#7:                                 # %lor.lhs.false.13
	leaq	4116(%rbx,%rsi), %rcx
	notl	%esi
	addl	%esi, %edi
	movslq	%edi, %rsi
	cmpb	$0, (%rcx,%rsi)
	jne	.LBB24_15
# BB#8:                                 # %if.end.17
	movq	8328(%rbx), %rdi
	leaq	16(%rsp), %r8
	movl	$4096, %r9d             # imm = 0x1000
	movq	%rbx, %rsi
	callq	*8320(%rbx)
	movl	%eax, %ebp
	addq	$8, %rbx
	testl	%ebp, %ebp
	js	.LBB24_9
# BB#11:                                # %if.else
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	ijs_send_begin
	testl	%eax, %eax
	js	.LBB24_15
# BB#12:                                # %if.end.28
	leaq	16(%rsp), %rsi
	movq	%rbx, %rdi
	movl	%ebp, %edx
	callq	ijs_send_block
	jmp	.LBB24_13
.LBB24_3:                               # %if.then.3
	addq	$8, %rbx
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	ijs_send_begin
	testl	%eax, %eax
	js	.LBB24_15
# BB#4:                                 # %if.end.i
	movl	$-10, %esi
	movq	%rbx, %rdi
	callq	ijs_send_int
.LBB24_13:                              # %if.end.28
	testl	%eax, %eax
	js	.LBB24_15
# BB#14:                                # %if.end.35
	movq	%rbx, %rdi
	callq	ijs_send_buf
.LBB24_15:                              # %cleanup.38
	addq	$4120, %rsp             # imm = 0x1018
	popq	%rbx
	popq	%rbp
	retq
.LBB24_9:                               # %if.then.22
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	ijs_send_begin
	testl	%eax, %eax
	js	.LBB24_15
# BB#10:                                # %if.end.i.32
	movq	%rbx, %rdi
	movl	%ebp, %esi
	callq	ijs_send_int
	jmp	.LBB24_13
.Lfunc_end24:
	.size	ijs_server_proc_get_param, .Lfunc_end24-ijs_server_proc_get_param
	.cfi_endproc

	.align	16, 0x90
	.type	ijs_server_proc_begin_page,@function
ijs_server_proc_begin_page:             # @ijs_server_proc_begin_page
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp63:
	.cfi_def_cfa_offset 16
.Ltmp64:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	cmpq	$0, 8344(%rbx)
	je	.LBB25_5
# BB#1:                                 # %entry
	movl	8352(%rbx), %eax
	andl	$63, %eax
	cmpl	$63, %eax
	jne	.LBB25_5
# BB#2:                                 # %if.then.5
	movl	$1, 8356(%rbx)
	addq	$8, %rbx
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	ijs_send_begin
	jmp	.LBB25_3
.LBB25_5:                               # %if.else
	addq	$8, %rbx
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	ijs_send_begin
	testl	%eax, %eax
	js	.LBB25_7
# BB#6:                                 # %if.end.i.11
	movl	$-3, %esi
	movq	%rbx, %rdi
	callq	ijs_send_int
.LBB25_3:                               # %if.then.5
	testl	%eax, %eax
	js	.LBB25_7
# BB#4:                                 # %if.end.i
	movq	%rbx, %rdi
	popq	%rbx
	jmp	ijs_send_buf            # TAILCALL
.LBB25_7:                               # %cleanup
	popq	%rbx
	retq
.Lfunc_end25:
	.size	ijs_server_proc_begin_page, .Lfunc_end25-ijs_server_proc_begin_page
	.cfi_endproc

	.align	16, 0x90
	.type	ijs_server_proc_send_data_block,@function
ijs_server_proc_send_data_block:        # @ijs_server_proc_send_data_block
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp65:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp66:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp67:
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
.Ltmp68:
	.cfi_def_cfa_offset 48
.Ltmp69:
	.cfi_offset %rbx, -32
.Ltmp70:
	.cfi_offset %r14, -24
.Ltmp71:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	leaq	4112(%rbx), %r14
	leaq	8(%rsp), %rsi
	movq	%r14, %rdi
	callq	ijs_recv_int
	testl	%eax, %eax
	js	.LBB26_15
# BB#1:                                 # %if.end
	movl	$-10, %ebp
	cmpl	$0, 8336(%rbx)
	je	.LBB26_6
# BB#2:                                 # %lor.lhs.false
	movl	8(%rsp), %ecx
	cmpl	8340(%rbx), %ecx
	jne	.LBB26_6
# BB#3:                                 # %if.else
	movl	$-3, %ebp
	cmpq	$0, 8360(%rbx)
	je	.LBB26_6
# BB#4:                                 # %if.end.7
	testl	%eax, %eax
	movl	%eax, %ebp
	jne	.LBB26_6
# BB#5:                                 # %if.end.12
	leaq	12(%rsp), %rsi
	movq	%r14, %rdi
	callq	ijs_recv_int
	movl	%eax, %ebp
	testl	%ebp, %ebp
	je	.LBB26_8
.LBB26_6:                               # %if.then.14
	addq	$8, %rbx
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	ijs_send_begin
	testl	%eax, %eax
	js	.LBB26_15
# BB#7:                                 # %if.end.i
	movq	%rbx, %rdi
	movl	%ebp, %esi
	callq	ijs_send_int
.LBB26_13:                              # %if.end.46
	testl	%eax, %eax
	js	.LBB26_15
# BB#14:                                # %if.end.i.49
	movq	%rbx, %rdi
	callq	ijs_send_buf
.LBB26_15:                              # %cleanup
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB26_8:                               # %if.end.16
	movl	12(%rsp), %edx
	movl	8368(%rbx), %ecx
	movslq	8372(%rbx), %rsi
	subl	%esi, %ecx
	movl	%edx, %eax
	subl	%ecx, %eax
	jle	.LBB26_9
# BB#10:                                # %if.else.23
	movl	%eax, 8384(%rbx)
	movslq	%eax, %rdi
	callq	malloc
	movq	%rax, 8376(%rbx)
	movl	$0, 8388(%rbx)
	movslq	8372(%rbx), %rsi
	movl	8368(%rbx), %ebp
	subl	%esi, %ebp
	addq	8360(%rbx), %rsi
	movq	%r14, %rdi
	movl	%ebp, %edx
	callq	ijs_recv_read
	movl	8368(%rbx), %ecx
	movl	%ecx, 8372(%rbx)
	cmpl	%ebp, %eax
	jne	.LBB26_12
# BB#11:                                # %if.then.41
	movq	8376(%rbx), %rsi
	movl	8384(%rbx), %edx
	movq	%r14, %rdi
	callq	ijs_recv_read
	jmp	.LBB26_12
.LBB26_9:                               # %if.then.18
	addq	8360(%rbx), %rsi
	movq	%r14, %rdi
	callq	ijs_recv_read
	movl	12(%rsp), %eax
	addl	%eax, 8372(%rbx)
.LBB26_12:                              # %if.end.46
	addq	$8, %rbx
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	ijs_send_begin
	jmp	.LBB26_13
.Lfunc_end26:
	.size	ijs_server_proc_send_data_block, .Lfunc_end26-ijs_server_proc_send_data_block
	.cfi_endproc

	.align	16, 0x90
	.type	ijs_server_proc_end_page,@function
ijs_server_proc_end_page:               # @ijs_server_proc_end_page
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp72:
	.cfi_def_cfa_offset 16
.Ltmp73:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	addq	$8, %rbx
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	ijs_send_begin
	testl	%eax, %eax
	js	.LBB27_1
# BB#2:                                 # %if.end.i
	movq	%rbx, %rdi
	popq	%rbx
	jmp	ijs_send_buf            # TAILCALL
.LBB27_1:                               # %ijs_server_ack.exit
	popq	%rbx
	retq
.Lfunc_end27:
	.size	ijs_server_proc_end_page, .Lfunc_end27-ijs_server_proc_end_page
	.cfi_endproc

	.align	16, 0x90
	.type	ijs_server_proc_exit,@function
ijs_server_proc_exit:                   # @ijs_server_proc_exit
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$1, %eax
	retq
.Lfunc_end28:
	.size	ijs_server_proc_exit, .Lfunc_end28-ijs_server_proc_exit
	.cfi_endproc

	.globl	ijs_server_iter
	.align	16, 0x90
	.type	ijs_server_iter,@function
ijs_server_iter:                        # @ijs_server_iter
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp74:
	.cfi_def_cfa_offset 16
.Ltmp75:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	leaq	4112(%rbx), %rdi
	callq	ijs_recv_buf
	testl	%eax, %eax
	js	.LBB29_3
# BB#1:                                 # %if.end
	leaq	4116(%rbx), %rdi
	callq	ijs_get_int
	movl	%eax, %ecx
	testl	%ecx, %ecx
	movl	$-1, %eax
	js	.LBB29_3
# BB#2:                                 # %if.end
	cmpl	$17, %ecx
	ja	.LBB29_3
# BB#4:                                 # %if.end.7
	movslq	%ecx, %rax
	movq	%rbx, %rdi
	popq	%rbx
	jmpq	*ijs_server_procs(,%rax,8) # TAILCALL
.LBB29_3:                               # %cleanup
	popq	%rbx
	retq
.Lfunc_end29:
	.size	ijs_server_iter, .Lfunc_end29-ijs_server_iter
	.cfi_endproc

	.globl	ijs_server_get_page_header
	.align	16, 0x90
	.type	ijs_server_get_page_header,@function
ijs_server_get_page_header:             # @ijs_server_get_page_header
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp76:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp77:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp78:
	.cfi_def_cfa_offset 32
.Ltmp79:
	.cfi_offset %rbx, -32
.Ltmp80:
	.cfi_offset %r14, -24
.Ltmp81:
	.cfi_offset %r15, -16
	movq	%rdi, %rbx
	movq	%rsi, 8344(%rbx)
	movl	$0, 8356(%rbx)
	leaq	4112(%rbx), %r14
	leaq	4116(%rbx), %r15
	.align	16, 0x90
.LBB30_1:                               # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%r14, %rdi
	callq	ijs_recv_buf
	testl	%eax, %eax
	js	.LBB30_6
# BB#2:                                 # %if.end.i
                                        #   in Loop: Header=BB30_1 Depth=1
	movq	%r15, %rdi
	callq	ijs_get_int
	movl	%eax, %ecx
	testl	%ecx, %ecx
	movl	$-1, %eax
	js	.LBB30_6
# BB#3:                                 # %if.end.i
                                        #   in Loop: Header=BB30_1 Depth=1
	cmpl	$17, %ecx
	ja	.LBB30_6
# BB#4:                                 # %ijs_server_iter.exit
                                        #   in Loop: Header=BB30_1 Depth=1
	movslq	%ecx, %rax
	movq	%rbx, %rdi
	callq	*ijs_server_procs(,%rax,8)
	testl	%eax, %eax
	jne	.LBB30_6
# BB#5:                                 # %land.rhs
                                        #   in Loop: Header=BB30_1 Depth=1
	xorl	%eax, %eax
	cmpl	$0, 8356(%rbx)
	je	.LBB30_1
.LBB30_6:                               # %do.end
	movq	$0, 8344(%rbx)
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end30:
	.size	ijs_server_get_page_header, .Lfunc_end30-ijs_server_get_page_header
	.cfi_endproc

	.globl	ijs_server_get_data
	.align	16, 0x90
	.type	ijs_server_get_data,@function
ijs_server_get_data:                    # @ijs_server_get_data
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp82:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp83:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp84:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp85:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp86:
	.cfi_def_cfa_offset 48
.Ltmp87:
	.cfi_offset %rbx, -48
.Ltmp88:
	.cfi_offset %r12, -40
.Ltmp89:
	.cfi_offset %r14, -32
.Ltmp90:
	.cfi_offset %r15, -24
.Ltmp91:
	.cfi_offset %rbp, -16
	movl	%edx, %r15d
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	8376(%rbx), %rsi
	testq	%rsi, %rsi
	movl	$0, %ebp
	je	.LBB31_3
# BB#1:                                 # %if.then
	movl	8384(%rbx), %ebp
	movslq	8388(%rbx), %rax
	subl	%eax, %ebp
	cmpl	%r15d, %ebp
	cmovgl	%r15d, %ebp
	addq	%rax, %rsi
	movslq	%ebp, %r12
	movq	%r14, %rdi
	movq	%r12, %rdx
	callq	memcpy
	addl	8388(%rbx), %r12d
	movl	%r12d, 8388(%rbx)
	cmpl	8384(%rbx), %r12d
	jne	.LBB31_3
# BB#2:                                 # %if.then.10
	movq	8376(%rbx), %rdi
	callq	free
	xorps	%xmm0, %xmm0
	movups	%xmm0, 8376(%rbx)
.LBB31_3:                               # %if.end.16
	movq	%r14, 8360(%rbx)
	movl	%r15d, 8368(%rbx)
	movl	%ebp, 8372(%rbx)
	cmpl	%r15d, %ebp
	jge	.LBB31_10
# BB#4:
	leaq	4112(%rbx), %rbp
	leaq	4116(%rbx), %r14
	.align	16, 0x90
.LBB31_5:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbp, %rdi
	callq	ijs_recv_buf
	testl	%eax, %eax
	js	.LBB31_11
# BB#6:                                 # %if.end.i
                                        #   in Loop: Header=BB31_5 Depth=1
	movq	%r14, %rdi
	callq	ijs_get_int
	movl	%eax, %ecx
	testl	%ecx, %ecx
	movl	$-1, %eax
	js	.LBB31_11
# BB#7:                                 # %if.end.i
                                        #   in Loop: Header=BB31_5 Depth=1
	cmpl	$18, %ecx
	jae	.LBB31_11
# BB#8:                                 # %while.cond.backedge
                                        #   in Loop: Header=BB31_5 Depth=1
	movslq	%ecx, %rax
	movq	%rbx, %rdi
	callq	*ijs_server_procs(,%rax,8)
	testl	%eax, %eax
	jne	.LBB31_11
# BB#9:                                 # %while.cond.backedge.land.rhs_crit_edge
                                        #   in Loop: Header=BB31_5 Depth=1
	cmpl	%r15d, 8372(%rbx)
	jl	.LBB31_5
.LBB31_10:
	xorl	%eax, %eax
.LBB31_11:                              # %while.end
	movq	$0, 8360(%rbx)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end31:
	.size	ijs_server_get_data, .Lfunc_end31-ijs_server_get_data
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"IJS\n\253v1\n"
	.size	.L.str, 9

	.type	ijs_server_procs,@object # @ijs_server_procs
	.data
	.globl	ijs_server_procs
	.align	16
ijs_server_procs:
	.quad	ijs_server_proc_ack
	.quad	ijs_server_proc_nak
	.quad	ijs_server_proc_ping
	.quad	ijs_server_proc_pong
	.quad	ijs_server_proc_open
	.quad	ijs_server_proc_close
	.quad	ijs_server_proc_begin_job
	.quad	ijs_server_proc_end_job
	.quad	ijs_server_proc_cancel_job
	.quad	ijs_server_proc_query_status
	.quad	ijs_server_proc_list_params
	.quad	ijs_server_proc_enum_param
	.quad	ijs_server_proc_set_param
	.quad	ijs_server_proc_get_param
	.quad	ijs_server_proc_begin_page
	.quad	ijs_server_proc_send_data_block
	.quad	ijs_server_proc_end_page
	.quad	ijs_server_proc_exit
	.size	ijs_server_procs, 144

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"NumChan"
	.size	.L.str.1, 8

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"BitsPerSample"
	.size	.L.str.2, 14

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"ColorSpace"
	.size	.L.str.3, 11

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Width"
	.size	.L.str.4, 6

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Height"
	.size	.L.str.5, 7

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Dpi"
	.size	.L.str.6, 4


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
