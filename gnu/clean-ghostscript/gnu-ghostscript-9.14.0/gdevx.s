	.text
	.file	"gdevx.bc"
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI0_0:
	.long	8388607                 # 0x7fffff
	.long	8388607                 # 0x7fffff
	.long	4286578688              # 0xff800000
	.long	4286578688              # 0xff800000
	.text
	.align	16, 0x90
	.type	x_open,@function
x_open:                                 # @x_open
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp0:
	.cfi_def_cfa_offset 16
.Ltmp1:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	cmpl	$1, 128(%rbx)
	jg	.LBB0_2
# BB#1:                                 # %lor.lhs.false
	cmpl	$2, 132(%rbx)
	jl	.LBB0_3
.LBB0_2:                                # %if.then
	movq	$50000000, 1064(%rbx)   # imm = 0x2FAF080
.LBB0_3:                                # %if.end
	movq	%rbx, %rdi
	callq	gdev_x_open@PLT
	testl	%eax, %eax
	js	.LBB0_5
# BB#4:                                 # %if.end.6
	movaps	.LCPI0_0(%rip), %xmm0   # xmm0 = [8388607,8388607,4286578688,4286578688]
	movups	%xmm0, 2120(%rbx)
	movl	$0, 2152(%rbx)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 2136(%rbx)
	xorl	%eax, %eax
.LBB0_5:                                # %cleanup
	popq	%rbx
	retq
.Lfunc_end0:
	.size	x_open, .Lfunc_end0-x_open
	.cfi_endproc

	.align	16, 0x90
	.type	x_get_initial_matrix,@function
x_get_initial_matrix:                   # @x_get_initial_matrix
	.cfi_startproc
# BB#0:                                 # %entry
	cmpl	$0, 2056(%rdi)
	je	.LBB1_2
# BB#1:                                 # %cleanup
	movups	2072(%rdi), %xmm0
	movups	%xmm0, (%rsi)
	movl	2088(%rdi), %eax
	movl	%eax, 16(%rsi)
	movl	2092(%rdi), %eax
	movl	%eax, 20(%rsi)
	retq
.LBB1_2:                                # %if.then
	jmp	gx_default_get_initial_matrix@PLT # TAILCALL
.Lfunc_end1:
	.size	x_get_initial_matrix, .Lfunc_end1-x_get_initial_matrix
	.cfi_endproc

	.align	16, 0x90
	.type	x_sync,@function
x_sync:                                 # @x_sync
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp2:
	.cfi_def_cfa_offset 16
.Ltmp3:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	callq	update_do_flush
	movq	1992(%rbx), %rdi
	xorl	%esi, %esi
	callq	XSync@PLT
	xorl	%eax, %eax
	popq	%rbx
	retq
.Lfunc_end2:
	.size	x_sync, .Lfunc_end2-x_sync
	.cfi_endproc

	.align	16, 0x90
	.type	x_output_page,@function
x_output_page:                          # @x_output_page
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp4:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp5:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp6:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp7:
	.cfi_def_cfa_offset 40
	subq	$392, %rsp              # imm = 0x188
.Ltmp8:
	.cfi_def_cfa_offset 432
.Ltmp9:
	.cfi_offset %rbx, -40
.Ltmp10:
	.cfi_offset %r14, -32
.Ltmp11:
	.cfi_offset %r15, -24
.Ltmp12:
	.cfi_offset %rbp, -16
	movl	%edx, %r14d
	movl	%esi, %r15d
	movq	%rdi, %rbx
	callq	update_do_flush
	movq	1992(%rbx), %rdi
	xorl	%esi, %esi
	callq	XSync@PLT
	cmpl	$0, 2056(%rbx)
	je	.LBB3_5
# BB#1:                                 # %if.then
	movq	2104(%rbx), %rax
	movl	$33, 200(%rsp)
	movq	1992(%rbx), %rdi
	movq	%rdi, 224(%rsp)
	movq	2024(%rbx), %rsi
	movq	%rsi, 232(%rsp)
	movq	%rax, 240(%rsp)
	movl	$32, 248(%rsp)
	movq	2064(%rbx), %rax
	movq	%rax, 256(%rsp)
	movq	2160(%rbx), %rax
	movq	%rax, 264(%rsp)
	leaq	200(%rsp), %r8
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	XSendEvent@PLT
	movq	1992(%rbx), %rdi
	leaq	8(%rsp), %rbp
	jmp	.LBB3_2
	.align	16, 0x90
.LBB3_4:                                # %while.body
                                        #   in Loop: Header=BB3_2 Depth=1
	movq	1992(%rbx), %rdi
.LBB3_2:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbp, %rsi
	callq	XNextEvent@PLT
	cmpl	$33, 8(%rsp)
	jne	.LBB3_4
# BB#3:                                 # %lor.rhs
                                        #   in Loop: Header=BB3_2 Depth=1
	movq	48(%rsp), %rax
	cmpq	2096(%rbx), %rax
	jne	.LBB3_4
.LBB3_5:                                # %if.end
	movq	%rbx, %rdi
	movl	%r15d, %esi
	movl	%r14d, %edx
	callq	gx_finish_output_page@PLT
	addq	$392, %rsp              # imm = 0x188
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	x_output_page, .Lfunc_end3-x_output_page
	.cfi_endproc

	.align	16, 0x90
	.type	x_close,@function
x_close:                                # @x_close
	.cfi_startproc
# BB#0:                                 # %entry
	jmp	gdev_x_close@PLT        # TAILCALL
.Lfunc_end4:
	.size	x_close, .Lfunc_end4-x_close
	.cfi_endproc

	.align	16, 0x90
	.type	x_fill_rectangle,@function
x_fill_rectangle:                       # @x_fill_rectangle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp13:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp14:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp15:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp16:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp17:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp18:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp19:
	.cfi_def_cfa_offset 64
.Ltmp20:
	.cfi_offset %rbx, -56
.Ltmp21:
	.cfi_offset %r12, -48
.Ltmp22:
	.cfi_offset %r13, -40
.Ltmp23:
	.cfi_offset %r14, -32
.Ltmp24:
	.cfi_offset %r15, -24
.Ltmp25:
	.cfi_offset %rbp, -16
	movq	%r9, %r15
	movl	%edx, %r14d
	movl	%esi, %r12d
	movq	%rdi, %rbx
	movl	%r14d, %eax
	orl	%r12d, %eax
	jns	.LBB5_2
# BB#1:                                 # %if.then
	movl	%r12d, %eax
	sarl	$31, %eax
	andl	%r12d, %eax
	addl	%eax, %ecx
	xorl	%eax, %eax
	testl	%r12d, %r12d
	cmovsl	%eax, %r12d
	movl	%r14d, %edx
	sarl	$31, %edx
	andl	%r14d, %edx
	addl	%edx, %r8d
	testl	%r14d, %r14d
	cmovsl	%eax, %r14d
.LBB5_2:                                # %do.body.10
	movl	832(%rbx), %ebp
	movl	836(%rbx), %r13d
	subl	%r12d, %ebp
	cmpl	%ebp, %ecx
	cmovlel	%ecx, %ebp
	subl	%r14d, %r13d
	cmpl	%r13d, %r8d
	cmovlel	%r8d, %r13d
	testl	%ebp, %ebp
	jle	.LBB5_21
# BB#3:                                 # %do.body.10
	testl	%r13d, %r13d
	jle	.LBB5_21
# BB#4:                                 # %do.end.34
	movl	2872(%rbx), %eax
	testl	%eax, %eax
	je	.LBB5_6
# BB#5:                                 # %if.end.i
	movq	2160(%rbx), %rsi
	movq	1992(%rbx), %rdi
	movq	2032(%rbx), %rdx
	movl	2880(%rbx), %ecx
	movl	2884(%rbx), %r8d
	leaq	2896(%rbx), %r9
	movl	%eax, (%rsp)
	callq	XDrawText@PLT
	movl	$0, 2876(%rbx)
	movl	$0, 2872(%rbx)
.LBB5_6:                                # %do.body.38
	cmpl	$0, 2268(%rbx)
	je	.LBB5_8
# BB#7:                                 # %if.then.40
	movq	1992(%rbx), %rdi
	movq	2032(%rbx), %rsi
	movl	$0, 2268(%rbx)
	xorl	%edx, %edx
	callq	XSetFillStyle@PLT
.LBB5_8:                                # %do.body.45
	cmpq	%r15, 2288(%rbx)
	je	.LBB5_10
# BB#9:                                 # %if.then.47
	movq	%r15, 2288(%rbx)
	orq	%r15, 2168(%rbx)
	andq	%r15, 2176(%rbx)
	movq	1992(%rbx), %rdi
	movq	2032(%rbx), %rsi
	movq	%r15, %rdx
	callq	XSetForeground@PLT
.LBB5_10:                               # %do.body.56
	cmpl	$3, 2264(%rbx)
	je	.LBB5_12
# BB#11:                                # %if.then.58
	movq	1992(%rbx), %rdi
	movq	2032(%rbx), %rsi
	movl	$3, 2264(%rbx)
	movl	$3, %edx
	callq	XSetFunction@PLT
.LBB5_12:                               # %do.end.65
	movq	2160(%rbx), %rsi
	movq	1992(%rbx), %rdi
	movq	2032(%rbx), %rdx
	movl	%r13d, (%rsp)
	movl	%r12d, %ecx
	movl	%r14d, %r8d
	movl	%ebp, %r9d
	callq	XFillRectangle@PLT
	movl	%r12d, %eax
	orl	%r14d, %eax
	jne	.LBB5_19
# BB#13:                                # %land.lhs.true.71
	cmpl	832(%rbx), %ebp
	jne	.LBB5_19
# BB#14:                                # %land.lhs.true.74
	cmpl	836(%rbx), %r13d
	jne	.LBB5_19
# BB#15:                                # %if.then.77
	cmpq	%r15, 2304(%rbx)
	je	.LBB5_17
# BB#16:                                # %lor.lhs.false.79
	cmpq	%r15, 2296(%rbx)
	jne	.LBB5_18
.LBB5_17:                               # %if.then.81
	movq	%rbx, %rdi
	callq	gdev_x_free_dynamic_colors@PLT
.LBB5_18:                               # %if.end.82
	movq	%r15, 2176(%rbx)
	movq	%r15, 2168(%rbx)
.LBB5_19:                               # %if.end.85
	cmpq	$0, 2048(%rbx)
	je	.LBB5_21
# BB#20:                                # %if.then.87
	movq	%rbx, %rdi
	movl	%r12d, %esi
	movl	%r14d, %edx
	movl	%ebp, %ecx
	movl	%r13d, %r8d
	callq	x_update_add@PLT
.LBB5_21:                               # %cleanup
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	x_fill_rectangle, .Lfunc_end5-x_fill_rectangle
	.cfi_endproc

	.align	16, 0x90
	.type	x_copy_mono,@function
x_copy_mono:                            # @x_copy_mono
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp26:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp27:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp28:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp29:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp30:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp31:
	.cfi_def_cfa_offset 56
	subq	$72, %rsp
.Ltmp32:
	.cfi_def_cfa_offset 128
.Ltmp33:
	.cfi_offset %rbx, -56
.Ltmp34:
	.cfi_offset %r12, -48
.Ltmp35:
	.cfi_offset %r13, -40
.Ltmp36:
	.cfi_offset %r14, -32
.Ltmp37:
	.cfi_offset %r15, -24
.Ltmp38:
	.cfi_offset %rbp, -16
	movl	%r9d, %ebp
	movl	%ecx, %r8d
	movq	%rdi, %r12
	movl	144(%rsp), %eax
	movl	136(%rsp), %ecx
	movl	128(%rsp), %ebx
	movl	%ebx, %edi
	orl	%ebp, %edi
	js	.LBB6_2
# BB#1:
	movl	%ebx, %r14d
	jmp	.LBB6_5
.LBB6_2:                                # %if.then
	movl	%ebp, %edi
	sarl	$31, %edi
	andl	%ebp, %edi
	leal	(%rcx,%rdi), %ecx
	xorl	%r14d, %r14d
	testl	%ebp, %ebp
	cmovsl	%r14d, %ebp
	subl	%edi, %edx
	testl	%ebx, %ebx
	js	.LBB6_4
# BB#3:
	movl	%ebx, %r14d
	jmp	.LBB6_5
.LBB6_4:                                # %if.then.5
	addl	%ebx, %eax
	imull	%r8d, %ebx
	movslq	%ebx, %rdi
	subq	%rdi, %rsi
.LBB6_5:                                # %if.end.8
	movl	832(%r12), %r15d
	movl	836(%r12), %edi
	subl	%ebp, %r15d
	cmpl	%r15d, %ecx
	cmovlel	%ecx, %r15d
	subl	%r14d, %edi
	cmpl	%edi, %eax
	cmovlel	%eax, %edi
	testl	%r15d, %r15d
	jle	.LBB6_65
# BB#6:                                 # %if.end.8
	testl	%edi, %edi
	jle	.LBB6_65
# BB#7:                                 # %do.end.26
	movl	%edi, 64(%rsp)          # 4-byte Spill
	movq	%rsi, %rbx
	movq	%rdx, 56(%rsp)          # 8-byte Spill
	movl	2872(%r12), %eax
	testl	%eax, %eax
	je	.LBB6_9
# BB#8:                                 # %if.end.i
	movq	2160(%r12), %rsi
	movq	1992(%r12), %rdi
	movq	2032(%r12), %rdx
	movl	2880(%r12), %ecx
	movq	%r8, %r13
	movl	2884(%r12), %r8d
	leaq	2896(%r12), %r9
	movl	%eax, (%rsp)
	callq	XDrawText@PLT
	movq	%r13, %r8
	movl	$0, 2876(%r12)
	movl	$0, 2872(%r12)
.LBB6_9:                                # %if.end.29
	movq	%r8, 32(%rsp)           # 8-byte Spill
	movq	152(%rsp), %r13
	movq	56(%rsp), %rax          # 8-byte Reload
	leal	(%r15,%rax), %eax
	movl	%eax, 1856(%r12)
	movl	64(%rsp), %eax          # 4-byte Reload
	movl	%eax, 1860(%r12)
	movq	%rbx, 1872(%r12)
	movl	%r8d, 1900(%r12)
	cmpl	$0, 2268(%r12)
	je	.LBB6_11
# BB#10:                                # %if.then.38
	movq	1992(%r12), %rdi
	movq	2032(%r12), %rsi
	movl	$0, 2268(%r12)
	xorl	%edx, %edx
	callq	XSetFillStyle@PLT
.LBB6_11:                               # %do.end.42
	movq	160(%rsp), %r8
	leaq	1856(%r12), %rcx
	cmpq	$-1, %r13
	je	.LBB6_15
# BB#12:                                # %if.then.44
	movq	%rcx, 40(%rsp)          # 8-byte Spill
	movl	%ebp, 52(%rsp)          # 4-byte Spill
	movl	%r14d, 48(%rsp)         # 4-byte Spill
	movl	$3, %edx
	cmpq	$-1, %r8
	movq	%r13, %r14
	movq	%r8, %r13
	movl	64(%rsp), %ebx          # 4-byte Reload
	jne	.LBB6_19
# BB#13:                                # %if.else
	movq	2176(%r12), %rax
	notq	%rax
	movq	152(%rsp), %rcx
	testq	%rcx, %rax
	je	.LBB6_14
# BB#33:                                # %if.else.48
	movq	%rcx, %rax
	notq	%rax
	movl	$7, %edx
	movq	%rcx, %r14
	xorl	%r13d, %r13d
	testq	2168(%r12), %rax
	jne	.LBB6_34
	jmp	.LBB6_19
.LBB6_15:                               # %if.else.57
	cmpq	$-1, %r8
	je	.LBB6_65
# BB#16:                                # %if.else.60
	movq	2176(%r12), %rax
	notq	%rax
	testq	%r8, %rax
	je	.LBB6_17
# BB#18:                                # %if.else.66
	movq	%rcx, 40(%rsp)          # 8-byte Spill
	movl	%ebp, 52(%rsp)          # 4-byte Spill
	movl	%r14d, 48(%rsp)         # 4-byte Spill
	movq	%r8, %rax
	notq	%rax
	movl	$7, %edx
	xorl	%r14d, %r14d
	testq	2168(%r12), %rax
	movq	%r8, %r13
	movl	64(%rsp), %ebx          # 4-byte Reload
	je	.LBB6_19
.LBB6_34:                               # %hard
	movq	32(%rsp), %rax          # 8-byte Reload
	cmpl	%eax, 2200(%r12)
	movl	48(%rsp), %r14d         # 4-byte Reload
	jl	.LBB6_36
# BB#35:                                # %lor.lhs.false.144
	cmpl	2204(%r12), %ebx
	jle	.LBB6_46
.LBB6_36:                               # %if.then.149
	movq	%r8, %r13
	movq	%rax, %rbp
	movq	2192(%r12), %rsi
	testq	%rsi, %rsi
	je	.LBB6_38
# BB#37:                                # %if.then.i
	movq	1992(%r12), %rdi
	callq	XFreeGC@PLT
	movq	$0, 2192(%r12)
.LBB6_38:                               # %if.end.i.203
	movq	2184(%r12), %rsi
	testq	%rsi, %rsi
	je	.LBB6_40
# BB#39:                                # %if.then.7.i
	movq	1992(%r12), %rdi
	callq	XFreePixmap@PLT
	movq	$0, 2184(%r12)
.LBB6_40:                               # %free_cp.exit
	movl	$-1, 2200(%r12)
	movq	1992(%r12), %rdi
	movq	2024(%r12), %rsi
	leal	(,%rbp,8), %edx
	movl	$1, %r8d
	movl	%ebx, %ecx
	callq	XCreatePixmap@PLT
	movq	%rax, 2184(%r12)
	testq	%rax, %rax
	je	.LBB6_41
# BB#43:                                # %if.end.161
	movq	1992(%r12), %rdi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movq	%rax, %rsi
	callq	XCreateGC@PLT
	movq	%rax, 2192(%r12)
	testq	%rax, %rax
	je	.LBB6_44
# BB#45:                                # %if.end.176
	movq	%rbp, %rax
	movl	%eax, 2200(%r12)
	movl	%ebx, 2204(%r12)
	movq	%r13, %r8
.LBB6_46:                               # %if.end.181
	movq	%rax, %r13
	movl	$0, 1868(%r12)
	cmpl	$3, 2264(%r12)
	je	.LBB6_48
# BB#47:                                # %if.then.188
	movq	1992(%r12), %rdi
	movq	2032(%r12), %rsi
	movl	$3, 2264(%r12)
	movl	$3, %edx
	movq	%r8, %rbp
	callq	XSetFunction@PLT
	movq	%rbp, %r8
.LBB6_48:                               # %do.end.195
	movq	1992(%r12), %rdi
	movq	2192(%r12), %rsi
	cmpq	$-1, %r8
	je	.LBB6_49
# BB#50:                                # %if.else.223
	xorl	%edx, %edx
	movq	%r8, %rbp
	callq	XSetBackground@PLT
	movq	1992(%r12), %rdi
	movq	2192(%r12), %rsi
	movl	$1, %edx
	callq	XSetForeground@PLT
	movq	%rbp, %rdx
	jmp	.LBB6_51
.LBB6_14:
	movq	%rcx, %r14
	movq	$-1, %r13
	movl	$1, %edx
	jmp	.LBB6_19
.LBB6_17:
	movq	%rcx, 40(%rsp)          # 8-byte Spill
	movl	%ebp, 52(%rsp)          # 4-byte Spill
	movl	%r14d, 48(%rsp)         # 4-byte Spill
	movq	$-1, %r14
	movl	$1, %edx
	movq	%r8, %r13
	movl	64(%rsp), %ebx          # 4-byte Reload
.LBB6_19:                               # %if.end.76
	movq	%r8, %rbp
	movl	$0, 1868(%r12)
	cmpl	%edx, 2264(%r12)
	je	.LBB6_21
# BB#20:                                # %if.then.81
	movq	1992(%r12), %rdi
	movq	2032(%r12), %rsi
	movl	%edx, 2264(%r12)
	callq	XSetFunction@PLT
.LBB6_21:                               # %do.end.88
	cmpq	2280(%r12), %r14
	je	.LBB6_23
# BB#22:                                # %if.then.90
	movq	1992(%r12), %rdi
	movq	2032(%r12), %rsi
	movq	%r14, 2280(%r12)
	movq	%r14, %rdx
	callq	XSetBackground@PLT
.LBB6_23:                               # %if.end.95
	cmpq	2288(%r12), %r13
	je	.LBB6_25
# BB#24:                                # %if.then.97
	movq	1992(%r12), %rdi
	movq	2032(%r12), %rsi
	movq	%r13, 2288(%r12)
	movq	%r13, %rdx
	callq	XSetForeground@PLT
.LBB6_25:                               # %if.end.102
	movq	152(%rsp), %rax
	cmpq	$-1, %rax
	movl	48(%rsp), %r14d         # 4-byte Reload
	movq	%rbp, %rcx
	je	.LBB6_27
# BB#26:                                # %if.then.104
	orq	%rax, 2168(%r12)
	andq	%rax, 2176(%r12)
.LBB6_27:                               # %if.end.109
	cmpq	$-1, %rcx
	movq	40(%rsp), %rbp          # 8-byte Reload
	je	.LBB6_29
# BB#28:                                # %if.then.111
	orq	%rcx, 2168(%r12)
	andq	%rcx, 2176(%r12)
.LBB6_29:                               # %do.body.117
	cmpb	$0, 2857(%r12)
	je	.LBB6_32
# BB#30:                                # %land.lhs.true
	movq	%rbp, %rdi
	callq	XInitImage@PLT
	testl	%eax, %eax
	je	.LBB6_32
# BB#31:                                # %if.then.123
	movq	2160(%r12), %rsi
	movq	1992(%r12), %rdi
	movq	2032(%r12), %rdx
	movl	%ebx, 24(%rsp)
	movl	%r15d, 16(%rsp)
	movl	%r14d, 8(%rsp)
	movl	52(%rsp), %eax          # 4-byte Reload
	movl	%eax, (%rsp)
	xorl	%r9d, %r9d
	movq	%rbp, %rcx
	movq	56(%rsp), %r8           # 8-byte Reload
	callq	XPutImage@PLT
	jmp	.LBB6_63
.LBB6_32:                               # %if.else.128
	movq	2160(%r12), %rsi
	movq	1992(%r12), %rdi
	movq	2032(%r12), %rdx
	movl	%ebx, 16(%rsp)
	movl	%r15d, 8(%rsp)
	movl	%r14d, (%rsp)
	movq	%rbp, %rcx
	movq	56(%rsp), %r8           # 8-byte Reload
	movl	52(%rsp), %r9d          # 4-byte Reload
	callq	alt_put_image
	testl	%eax, %eax
	jns	.LBB6_63
	jmp	.LBB6_66
.LBB6_41:                               # %if.then.157
	callq	gs_program_name@PLT
	movq	%rax, %rbx
	callq	gs_revision_number@PLT
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	eprintf_program_ident@PLT
	leaq	.L.str.4(%rip), %rdi
	movl	$469, %esi              # imm = 0x1D5
	callq	lprintf_file_and_line@PLT
	leaq	.L.str.5(%rip), %rdi
	jmp	.LBB6_42
.LBB6_49:                               # %if.then.198
	movl	$1, %edx
	callq	XSetBackground@PLT
	movq	1992(%r12), %rdi
	movq	2192(%r12), %rsi
	xorl	%edx, %edx
	callq	XSetForeground@PLT
	movq	152(%rsp), %rdx
.LBB6_51:                               # %if.else.223
	cmpq	%rdx, 2288(%r12)
	je	.LBB6_53
# BB#52:                                # %if.then.236
	movq	%rdx, 2288(%r12)
	orq	%rdx, 2168(%r12)
	andq	%rdx, 2176(%r12)
	movq	1992(%r12), %rdi
	movq	2032(%r12), %rsi
	callq	XSetForeground@PLT
.LBB6_53:                               # %do.body.249
	cmpb	$0, 2857(%r12)
	movq	40(%rsp), %rbp          # 8-byte Reload
	je	.LBB6_56
# BB#54:                                # %land.lhs.true.253
	movq	%rbp, %rdi
	callq	XInitImage@PLT
	testl	%eax, %eax
	je	.LBB6_56
# BB#55:                                # %if.then.258
	movq	1992(%r12), %rdi
	movq	2184(%r12), %rsi
	movq	2192(%r12), %rdx
	movl	%ebx, 24(%rsp)
	movl	%r15d, 16(%rsp)
	movl	$0, 8(%rsp)
	movl	$0, (%rsp)
	xorl	%r9d, %r9d
	movq	%rbp, %rcx
	movq	56(%rsp), %r8           # 8-byte Reload
	callq	XPutImage@PLT
	jmp	.LBB6_57
.LBB6_56:                               # %if.else.266
	movq	1992(%r12), %rdi
	movq	2184(%r12), %rsi
	movq	2192(%r12), %rdx
	movl	%ebx, 16(%rsp)
	movl	%r15d, 8(%rsp)
	movl	$0, (%rsp)
	xorl	%r9d, %r9d
	movq	%rbp, %rcx
	movq	56(%rsp), %r8           # 8-byte Reload
	callq	alt_put_image
	testl	%eax, %eax
	js	.LBB6_66
.LBB6_57:                               # %do.end.284
	movq	1992(%r12), %rdi
	movq	2032(%r12), %rsi
	movq	2184(%r12), %rdx
	callq	XSetClipMask@PLT
	movq	1992(%r12), %rdi
	movq	2032(%r12), %rsi
	movl	52(%rsp), %ebp          # 4-byte Reload
	movl	%ebp, %edx
	movl	%r14d, %ecx
	callq	XSetClipOrigin@PLT
	movq	2160(%r12), %rsi
	movq	1992(%r12), %rdi
	movq	2032(%r12), %rdx
	movl	%ebx, (%rsp)
	movl	%ebp, %ecx
	movl	%r14d, %r8d
	movl	%r15d, %r9d
	callq	XFillRectangle@PLT
	movq	1992(%r12), %rdi
	movq	2032(%r12), %rsi
	xorl	%edx, %edx
	callq	XSetClipMask@PLT
	imull	%ebx, %r13d
	cmpl	2864(%r12), %r13d
	jle	.LBB6_63
# BB#58:                                # %if.then.303
	movq	2192(%r12), %rsi
	testq	%rsi, %rsi
	je	.LBB6_60
# BB#59:                                # %if.then.i.209
	movq	1992(%r12), %rdi
	callq	XFreeGC@PLT
	movq	$0, 2192(%r12)
.LBB6_60:                               # %if.end.i.211
	movq	2184(%r12), %rsi
	testq	%rsi, %rsi
	je	.LBB6_62
# BB#61:                                # %if.then.7.i.214
	movq	1992(%r12), %rdi
	callq	XFreePixmap@PLT
	movq	$0, 2184(%r12)
.LBB6_62:                               # %free_cp.exit216
	movl	$-1, 2200(%r12)
.LBB6_63:                               # %out
	cmpq	$0, 2048(%r12)
	je	.LBB6_65
# BB#64:                                # %if.then.307
	movq	%r12, %rdi
	movl	52(%rsp), %esi          # 4-byte Reload
	movl	%r14d, %edx
	movl	%r15d, %ecx
	movl	%ebx, %r8d
	callq	x_update_add@PLT
.LBB6_65:                               # %cleanup.309
	xorl	%eax, %eax
.LBB6_66:                               # %cleanup.309
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB6_44:                               # %if.then.172
	callq	gs_program_name@PLT
	movq	%rax, %rbx
	callq	gs_revision_number@PLT
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	eprintf_program_ident@PLT
	leaq	.L.str.4(%rip), %rdi
	movl	$474, %esi              # imm = 0x1DA
	callq	lprintf_file_and_line@PLT
	leaq	.L.str.6(%rip), %rdi
.LBB6_42:                               # %cleanup.309
	xorl	%eax, %eax
	callq	errprintf_nomem@PLT
	movl	$-25, %eax
	jmp	.LBB6_66
.Lfunc_end6:
	.size	x_copy_mono, .Lfunc_end6-x_copy_mono
	.cfi_endproc

	.align	16, 0x90
	.type	x_copy_color,@function
x_copy_color:                           # @x_copy_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp39:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp40:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp41:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp42:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp43:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp44:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp45:
	.cfi_def_cfa_offset 80
.Ltmp46:
	.cfi_offset %rbx, -56
.Ltmp47:
	.cfi_offset %r12, -48
.Ltmp48:
	.cfi_offset %r13, -40
.Ltmp49:
	.cfi_offset %r14, -32
.Ltmp50:
	.cfi_offset %r15, -24
.Ltmp51:
	.cfi_offset %rbp, -16
	movl	%r9d, %ebp
	movq	%rdi, %rbx
	movl	96(%rsp), %r9d
	movl	88(%rsp), %r8d
	movl	80(%rsp), %eax
	movl	%eax, %edi
	orl	%ebp, %edi
	js	.LBB7_2
# BB#1:
	movl	%eax, %r13d
	movl	%r8d, %edi
	jmp	.LBB7_5
.LBB7_2:                                # %if.then
	movl	%ebp, %edi
	sarl	$31, %edi
	andl	%ebp, %edi
	subl	%edi, %edx
	xorl	%r13d, %r13d
	testl	%ebp, %ebp
	cmovsl	%r13d, %ebp
	addl	%r8d, %edi
	testl	%eax, %eax
	js	.LBB7_4
# BB#3:
	movl	%eax, %r13d
	jmp	.LBB7_5
.LBB7_4:                                # %if.then.5
	addl	%eax, %r9d
	imull	%ecx, %eax
	cltq
	subq	%rax, %rsi
.LBB7_5:                                # %if.end.8
	movl	832(%rbx), %r14d
	movl	836(%rbx), %r12d
	subl	%ebp, %r14d
	cmpl	%r14d, %edi
	cmovlel	%edi, %r14d
	subl	%r13d, %r12d
	cmpl	%r12d, %r9d
	cmovlel	%r9d, %r12d
	xorl	%r15d, %r15d
	testl	%r14d, %r14d
	jle	.LBB7_11
# BB#6:                                 # %if.end.8
	testl	%r12d, %r12d
	jle	.LBB7_11
# BB#7:                                 # %do.end.26
	movq	%rsi, %r15
	movl	%edx, 16(%rsp)          # 4-byte Spill
	movl	%ecx, 20(%rsp)          # 4-byte Spill
	movl	2872(%rbx), %eax
	testl	%eax, %eax
	je	.LBB7_9
# BB#8:                                 # %if.end.i
	movq	2160(%rbx), %rsi
	movq	1992(%rbx), %rdi
	movq	2032(%rbx), %rdx
	movl	2880(%rbx), %ecx
	movl	2884(%rbx), %r8d
	leaq	2896(%rbx), %r9
	movl	%eax, (%rsp)
	callq	XDrawText@PLT
	movl	$0, 2876(%rbx)
	movl	$0, 2872(%rbx)
.LBB7_9:                                # %if.end.29
	movl	%r12d, 8(%rsp)
	movl	%r14d, (%rsp)
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movl	16(%rsp), %edx          # 4-byte Reload
	movl	20(%rsp), %ecx          # 4-byte Reload
	movl	%ebp, %r8d
	movl	%r13d, %r9d
	callq	x_copy_image
	movl	%eax, %r15d
	cmpq	$0, 2048(%rbx)
	je	.LBB7_11
# BB#10:                                # %if.then.31
	movq	%rbx, %rdi
	movl	%ebp, %esi
	movl	%r13d, %edx
	movl	%r14d, %ecx
	movl	%r12d, %r8d
	callq	x_update_add@PLT
.LBB7_11:                               # %cleanup
	movl	%r15d, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	x_copy_color, .Lfunc_end7-x_copy_color
	.cfi_endproc

	.align	16, 0x90
	.type	x_get_page_device,@function
x_get_page_device:                      # @x_get_page_device
	.cfi_startproc
# BB#0:                                 # %entry
	cmpl	$0, 1836(%rdi)
	jne	.LBB8_2
# BB#1:                                 # %select.mid
	xorl	%edi, %edi
.LBB8_2:                                # %select.end
	movq	%rdi, %rax
	retq
.Lfunc_end8:
	.size	x_get_page_device, .Lfunc_end8-x_get_page_device
	.cfi_endproc

	.align	16, 0x90
	.type	x_strip_tile_rectangle,@function
x_strip_tile_rectangle:                 # @x_strip_tile_rectangle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp52:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp53:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp54:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp55:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp56:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp57:
	.cfi_def_cfa_offset 56
	subq	$88, %rsp
.Ltmp58:
	.cfi_def_cfa_offset 144
.Ltmp59:
	.cfi_offset %rbx, -56
.Ltmp60:
	.cfi_offset %r12, -48
.Ltmp61:
	.cfi_offset %r13, -40
.Ltmp62:
	.cfi_offset %r14, -32
.Ltmp63:
	.cfi_offset %r15, -24
.Ltmp64:
	.cfi_offset %rbp, -16
	movl	%ecx, %ebp
	movl	%edx, %r14d
	movq	%rsi, %rbx
	movq	%rdi, %r13
	movq	144(%rsp), %rsi
	cmpq	$-1, %rsi
	je	.LBB9_2
# BB#1:                                 # %entry
	movq	152(%rsp), %rdx
	cmpq	$-1, %rdx
	je	.LBB9_2
# BB#4:                                 # %if.end
	movl	160(%rsp), %eax
	movzwl	38(%rbx), %ecx
	orl	168(%rsp), %eax
	orl	%ecx, %eax
	je	.LBB9_5
.LBB9_2:                                # %if.then
	movq	%r13, %rdi
	movq	%rbx, %rsi
	movl	%r14d, %edx
	movl	%ebp, %ecx
.LBB9_3:                                # %if.then
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	gx_default_strip_tile_rectangle@PLT # TAILCALL
.LBB9_5:                                # %do.body.7
	movl	%ebp, %eax
	orl	%r14d, %eax
	js	.LBB9_7
# BB#6:
	movq	%rsi, 72(%rsp)          # 8-byte Spill
	movq	%rdx, 80(%rsp)          # 8-byte Spill
	jmp	.LBB9_8
.LBB9_7:                                # %if.then.11
	movq	%rsi, 72(%rsp)          # 8-byte Spill
	movq	%rdx, 80(%rsp)          # 8-byte Spill
	movl	%r14d, %eax
	sarl	$31, %eax
	andl	%r14d, %eax
	addl	%eax, %r8d
	xorl	%eax, %eax
	testl	%r14d, %r14d
	cmovsl	%eax, %r14d
	movl	%ebp, %ecx
	sarl	$31, %ecx
	andl	%ebp, %ecx
	addl	%ecx, %r9d
	testl	%ebp, %ebp
	cmovsl	%eax, %ebp
.LBB9_8:                                # %do.body.22
	movq	%rbp, 56(%rsp)          # 8-byte Spill
	movl	832(%r13), %r15d
	movl	836(%r13), %r12d
	movl	%r15d, %eax
	subl	%r14d, %eax
	cmpl	%eax, %r8d
	cmovlel	%r8d, %eax
	movl	%eax, 68(%rsp)          # 4-byte Spill
	subl	%ebp, %r12d
	cmpl	%r12d, %r9d
	cmovlel	%r9d, %r12d
	testl	%eax, %eax
	jle	.LBB9_63
# BB#9:                                 # %do.body.22
	testl	%r12d, %r12d
	jle	.LBB9_63
# BB#10:                                # %do.end.51
	movq	%r8, 48(%rsp)           # 8-byte Spill
	movl	2872(%r13), %eax
	testl	%eax, %eax
	je	.LBB9_12
# BB#11:                                # %if.end.i
	movq	2160(%r13), %rsi
	movq	1992(%r13), %rdi
	movq	2032(%r13), %rdx
	movl	2880(%r13), %ecx
	movl	2884(%r13), %r8d
	leaq	2896(%r13), %r9
	movl	%eax, (%rsp)
	callq	XDrawText@PLT
	movl	$0, 2876(%r13)
	movl	$0, 2872(%r13)
.LBB9_12:                               # %if.end.55
	cmpl	$2, 68(%rsp)            # 4-byte Folded Reload
	jg	.LBB9_28
# BB#13:                                # %if.end.55
	cmpl	$2, %r12d
	jg	.LBB9_28
# BB#14:                                # %if.then.60
	movq	%r12, 40(%rsp)          # 8-byte Spill
	cmpl	$0, 2268(%r13)
	je	.LBB9_16
# BB#15:                                # %if.then.64
	movq	1992(%r13), %rdi
	movq	2032(%r13), %rsi
	movl	$0, 2268(%r13)
	xorl	%edx, %edx
	callq	XSetFillStyle@PLT
.LBB9_16:                               # %do.body.70
	movq	%r14, %r12
	cmpl	$3, 2264(%r13)
	je	.LBB9_18
# BB#17:                                # %if.then.73
	movq	1992(%r13), %rdi
	movq	2032(%r13), %rsi
	movl	$3, 2264(%r13)
	movl	$3, %edx
	callq	XSetFunction@PLT
.LBB9_18:                               # %do.end.80
	movq	40(%rsp), %rax          # 8-byte Reload
	testl	%eax, %eax
	movq	48(%rsp), %rcx          # 8-byte Reload
	jle	.LBB9_26
# BB#19:                                # %for.body.lr.ph
	movq	40(%rsp), %rax          # 8-byte Reload
	leal	(%rax,%rbp), %r14d
	leal	-1(%r12), %eax
	subl	%r15d, %eax
	notl	%ecx
	cmpl	%ecx, %eax
	cmovgel	%eax, %ecx
	negl	%ecx
	leal	-2(%r12,%rcx), %eax
	movl	%eax, 48(%rsp)          # 4-byte Spill
	.align	16, 0x90
.LBB9_21:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_23 Depth 2
	decl	%r14d
	movzwl	34(%rbx), %ecx
	movl	%r14d, %eax
	cltd
	idivl	%ecx
	cmpl	$0, 68(%rsp)            # 4-byte Folded Reload
	jle	.LBB9_20
# BB#22:                                #   in Loop: Header=BB9_21 Depth=1
	movslq	8(%rbx), %rax
	movslq	%edx, %rbp
	imulq	%rax, %rbp
	addq	(%rbx), %rbp
	movl	48(%rsp), %eax          # 4-byte Reload
	movl	%eax, %r15d
	.align	16, 0x90
.LBB9_23:                               # %for.body.90
                                        #   Parent Loop BB9_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	32(%rbx), %ecx
	movl	%r15d, %eax
	cltd
	idivl	%ecx
	movb	%dl, %cl
	andb	$7, %cl
	movl	$128, %eax
	shrl	%cl, %eax
	shrl	$3, %edx
	movzbl	(%rbp,%rdx), %ecx
	testl	%ecx, %eax
	movq	72(%rsp), %rdx          # 8-byte Reload
	cmovneq	80(%rsp), %rdx          # 8-byte Folded Reload
	cmpq	%rdx, 2288(%r13)
	je	.LBB9_25
# BB#24:                                # %if.then.102
                                        #   in Loop: Header=BB9_23 Depth=2
	movq	%rdx, 2288(%r13)
	orq	%rdx, 2168(%r13)
	andq	%rdx, 2176(%r13)
	movq	1992(%r13), %rdi
	movq	2032(%r13), %rsi
	callq	XSetForeground@PLT
.LBB9_25:                               # %do.end.111
                                        #   in Loop: Header=BB9_23 Depth=2
	movq	2160(%r13), %rsi
	movq	1992(%r13), %rdi
	movq	2032(%r13), %rdx
	movl	%r15d, %ecx
	movl	%r14d, %r8d
	callq	XDrawPoint@PLT
	cmpl	%r12d, %r15d
	leal	-1(%r15), %eax
	movl	%eax, %r15d
	jg	.LBB9_23
.LBB9_20:                               # %for.cond.loopexit
                                        #   in Loop: Header=BB9_21 Depth=1
	movq	56(%rsp), %rbp          # 8-byte Reload
	cmpl	%ebp, %r14d
	jg	.LBB9_21
.LBB9_26:                               # %for.end.115
	cmpq	$0, 2048(%r13)
	movq	40(%rsp), %r8           # 8-byte Reload
	je	.LBB9_63
# BB#27:                                # %if.then.118
	movq	%r13, %rdi
	movl	%r12d, %esi
	movl	%ebp, %edx
	movl	68(%rsp), %ecx          # 4-byte Reload
	jmp	.LBB9_62
.LBB9_28:                               # %if.end.120
	movq	72(%rsp), %rdx          # 8-byte Reload
	cmpq	%rdx, 2256(%r13)
	movq	80(%rsp), %r15          # 8-byte Reload
	jne	.LBB9_30
# BB#29:                                # %lor.lhs.false.123
	cmpq	%r15, 2248(%r13)
	je	.LBB9_31
.LBB9_30:                               # %if.then.127
	movq	24(%rbx), %rax
	notq	%rax
	movq	%rax, 2224(%r13)
.LBB9_31:                               # %do.body.131
	cmpq	%rdx, 2280(%r13)
	je	.LBB9_33
# BB#32:                                # %if.then.134
	movq	%rdx, 2280(%r13)
	orq	%rdx, 2168(%r13)
	andq	%rdx, 2176(%r13)
	movq	1992(%r13), %rdi
	movq	2032(%r13), %rsi
	callq	XSetBackground@PLT
.LBB9_33:                               # %do.body.146
	cmpq	%r15, 2288(%r13)
	je	.LBB9_35
# BB#34:                                # %if.then.150
	movq	%r15, 2288(%r13)
	orq	%r15, 2168(%r13)
	andq	%r15, 2176(%r13)
	movq	1992(%r13), %rdi
	movq	2032(%r13), %rsi
	movq	%r15, %rdx
	callq	XSetForeground@PLT
.LBB9_35:                               # %do.end.161
	movq	24(%rbx), %rax
	testq	%rax, %rax
	je	.LBB9_37
# BB#36:                                # %do.end.161
	cmpq	2224(%r13), %rax
	je	.LBB9_53
.LBB9_37:                               # %if.end.i.157
	movl	12(%rbx), %edx
	cmpl	2232(%r13), %edx
	jne	.LBB9_41
# BB#38:                                # %lor.lhs.false.i
	movl	16(%rbx), %eax
	cmpl	2236(%r13), %eax
	jne	.LBB9_41
# BB#39:                                # %lor.lhs.false.11.i
	cmpq	$0, 2208(%r13)
	je	.LBB9_43
# BB#40:                                # %lor.lhs.false.11.if.end.48_crit_edge.i
	movl	8(%rbx), %ecx
	jmp	.LBB9_45
.LBB9_41:                               # %if.then.15.i
	movq	2208(%r13), %rsi
	testq	%rsi, %rsi
	je	.LBB9_43
# BB#42:                                # %if.then.20.i
	movq	1992(%r13), %rdi
	callq	XFreePixmap@PLT
	movl	12(%rbx), %edx
.LBB9_43:                               # %if.end.23.i
	movq	2024(%r13), %rsi
	movl	16(%rbx), %ecx
	movq	1992(%r13), %rdi
	movq	2008(%r13), %rax
	movl	20(%rax), %r8d
	callq	XCreatePixmap@PLT
	movq	%rax, 2208(%r13)
	testq	%rax, %rax
	je	.LBB9_54
# BB#44:                                # %if.end.37.i
	movl	12(%rbx), %edx
	movl	%edx, 2232(%r13)
	movl	16(%rbx), %eax
	movl	%eax, 2236(%r13)
	movl	8(%rbx), %ecx
	movl	%ecx, 2240(%r13)
.LBB9_45:                               # %if.end.48.i
	movq	2288(%r13), %rsi
	movq	%rsi, 2248(%r13)
	movq	2280(%r13), %rsi
	movq	%rsi, 2256(%r13)
	movq	(%rbx), %rsi
	movq	%rsi, 1872(%r13)
	movl	%edx, 1856(%r13)
	movl	%eax, 1860(%r13)
	movl	%ecx, 1900(%r13)
	movl	$0, 1868(%r13)
	cmpl	$0, 2268(%r13)
	je	.LBB9_47
# BB#46:                                # %if.then.65.i
	movq	1992(%r13), %rdi
	movq	2032(%r13), %rsi
	movl	$0, 2268(%r13)
	xorl	%edx, %edx
	callq	XSetFillStyle@PLT
.LBB9_47:                               # %do.end.i
	movq	%r14, %r15
	movq	1992(%r13), %rdi
	movq	2032(%r13), %rsi
	movq	2216(%r13), %rdx
	callq	XSetTile@PLT
	cmpl	$3, 2264(%r13)
	je	.LBB9_49
# BB#48:                                # %if.then.77.i
	movq	1992(%r13), %rdi
	movq	2032(%r13), %rsi
	movl	$3, 2264(%r13)
	movl	$3, %edx
	callq	XSetFunction@PLT
.LBB9_49:                               # %do.body.85.i
	leaq	1856(%r13), %r14
	cmpb	$0, 2857(%r13)
	je	.LBB9_55
# BB#50:                                # %land.lhs.true.87.i
	movq	%r14, %rdi
	callq	XInitImage@PLT
	testl	%eax, %eax
	je	.LBB9_55
# BB#51:                                # %if.then.92.i
	movq	2208(%r13), %rsi
	movq	1992(%r13), %rdi
	movq	2032(%r13), %rdx
	movl	12(%rbx), %eax
	movl	16(%rbx), %ecx
	movl	%ecx, 24(%rsp)
	movl	%eax, 16(%rsp)
	movl	$0, 8(%rsp)
	movl	$0, (%rsp)
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movq	%r14, %rcx
	callq	XPutImage@PLT
	movq	%r15, %r14
	jmp	.LBB9_52
.LBB9_55:                               # %if.else.i
	movq	2208(%r13), %rsi
	movq	1992(%r13), %rdi
	movq	2032(%r13), %rdx
	movl	12(%rbx), %eax
	movl	16(%rbx), %ecx
	movl	%ecx, 16(%rsp)
	movl	%eax, 8(%rsp)
	movl	$0, (%rsp)
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movq	%r14, %rcx
	callq	alt_put_image
	testl	%eax, %eax
	movq	%r15, %r14
	js	.LBB9_56
.LBB9_52:                               # %do.end.119.i
	movq	1992(%r13), %rdi
	movq	2032(%r13), %rsi
	movq	2208(%r13), %rdx
	callq	XSetTile@PLT
	movq	24(%rbx), %rax
	movq	%rax, 2224(%r13)
.LBB9_53:                               # %set_tile.exit
	cmpb	$0, 2858(%r13)
	je	.LBB9_54
.LBB9_56:
	leaq	2268(%r13), %rax
	cmpl	$1, (%rax)
	je	.LBB9_58
# BB#57:                                # %if.then.171
	movq	1992(%r13), %rdi
	movq	2032(%r13), %rsi
	movl	$1, 2268(%r13)
	movl	$1, %edx
	callq	XSetFillStyle@PLT
.LBB9_58:                               # %do.body.179
	cmpl	$3, 2264(%r13)
	je	.LBB9_60
# BB#59:                                # %if.then.183
	movq	1992(%r13), %rdi
	movq	2032(%r13), %rsi
	movl	$3, 2264(%r13)
	movl	$3, %edx
	callq	XSetFunction@PLT
.LBB9_60:                               # %do.end.190
	movq	2160(%r13), %rsi
	movq	1992(%r13), %rdi
	movq	2032(%r13), %rdx
	movl	%r12d, (%rsp)
	movl	%r14d, %ecx
	movl	%ebp, %r8d
	movl	68(%rsp), %r9d          # 4-byte Reload
	callq	XFillRectangle@PLT
	cmpq	$0, 2048(%r13)
	je	.LBB9_63
# BB#61:                                # %if.then.198
	movq	%r13, %rdi
	movl	%r14d, %esi
	movl	%ebp, %edx
	movl	68(%rsp), %ecx          # 4-byte Reload
	movl	%r12d, %r8d
.LBB9_62:                               # %cleanup
	callq	x_update_add@PLT
.LBB9_63:                               # %cleanup
	xorl	%eax, %eax
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB9_54:                               # %if.then.164
	movq	%r13, %rdi
	movq	%rbx, %rsi
	movl	%r14d, %edx
	movl	%ebp, %ecx
	movl	68(%rsp), %r8d          # 4-byte Reload
	movl	%r12d, %r9d
	jmp	.LBB9_3
.Lfunc_end9:
	.size	x_strip_tile_rectangle, .Lfunc_end9-x_strip_tile_rectangle
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI10_0:
	.quad	4643211215818981376     # double 256
.LCPI10_1:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	x_begin_typed_image,@function
x_begin_typed_image:                    # @x_begin_typed_image
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp65:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp66:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp67:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp68:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp69:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp70:
	.cfi_def_cfa_offset 56
	subq	$232, %rsp
.Ltmp71:
	.cfi_def_cfa_offset 288
.Ltmp72:
	.cfi_offset %rbx, -56
.Ltmp73:
	.cfi_offset %r12, -48
.Ltmp74:
	.cfi_offset %r13, -40
.Ltmp75:
	.cfi_offset %r14, -32
.Ltmp76:
	.cfi_offset %r15, -24
.Ltmp77:
	.cfi_offset %rbp, -16
	movq	%r9, %rbp
	movq	%r8, %r12
	movq	%rcx, %r14
	movq	%rdx, %r13
	movq	%rdi, %r15
	movq	288(%rsp), %rbx
	movq	(%r14), %rax
	cmpl	$2, 48(%rax)
	jne	.LBB10_26
# BB#1:                                 # %if.end
	cmpl	$0, 64(%r14)
	je	.LBB10_26
# BB#2:                                 # %if.end.2
	movq	32(%r14), %rdi
	movq	%rdi, 56(%rsp)          # 8-byte Spill
	movq	%r14, 64(%rsp)          # 8-byte Spill
	movq	%r13, %r14
	movq	%r15, %r13
	movq	%r12, %r15
	movq	%rsi, %r12
	callq	gs_currentdevice@PLT
	movq	%r12, %rsi
	movq	%r15, %r12
	movq	%r13, %r15
	movq	%r14, %r13
	movq	64(%rsp), %r14          # 8-byte Reload
	movq	16(%r15), %rcx
	cmpq	16(%rax), %rcx
	jne	.LBB10_26
# BB#3:                                 # %lor.lhs.false
	leaq	96(%r15), %rdi
	addq	$96, %rax
	movq	%rsi, 48(%rsp)          # 8-byte Spill
	movl	$720, %edx              # imm = 0x2D0
	movq	%rax, %rsi
	callq	memcmp@PLT
	movq	48(%rsp), %rsi          # 8-byte Reload
	testl	%eax, %eax
	jne	.LBB10_26
# BB#4:                                 # %if.end.9
	movl	2872(%r15), %eax
	testl	%eax, %eax
	je	.LBB10_6
# BB#5:                                 # %if.end.i
	movq	2160(%r15), %rsi
	movq	1992(%r15), %rdi
	movq	2032(%r15), %rdx
	movl	2880(%r15), %ecx
	movl	2884(%r15), %r8d
	leaq	2896(%r15), %r9
	movl	%eax, (%rsp)
	callq	XDrawText@PLT
	movl	$0, 2876(%r15)
	movl	$0, 2872(%r15)
.LBB10_6:                               # %if.end.12
	movq	%r15, 40(%rsp)          # 8-byte Spill
	leaq	208(%rsp), %r15
	movq	56(%rsp), %rdi          # 8-byte Reload
	movq	%r15, %rsi
	callq	gs_currentmatrix@PLT
	leaq	8(%r14), %rdi
	movq	%r15, %rsi
	movq	%r15, %rdx
	callq	gs_matrix_multiply@PLT
	movq	48(%rsp), %rdi          # 8-byte Reload
	testq	%rdi, %rdi
	je	.LBB10_7
# BB#8:                                 # %if.else
	leaq	176(%rsp), %rsi
	movq	%rdi, %r15
	callq	gs_currentmatrix@PLT
	jmp	.LBB10_9
.LBB10_7:                               # %if.then.16
	movq	%rdi, %r15
	movq	16(%r13), %rax
	movq	%rax, 192(%rsp)
	movups	(%r13), %xmm0
	movaps	%xmm0, 176(%rsp)
.LBB10_9:                               # %if.end.18
	movss	180(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm2, %xmm2
	ucomiss	%xmm2, %xmm0
	jne	.LBB10_12
	jp	.LBB10_12
# BB#10:                                # %land.lhs.true
	movss	184(%rsp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm2, %xmm1
	jne	.LBB10_12
	jp	.LBB10_12
# BB#11:                                # %land.lhs.true.land.lhs.true.32_crit_edge
	movss	176(%rsp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	movq	%r15, %rsi
	movq	40(%rsp), %r15          # 8-byte Reload
	jmp	.LBB10_14
.LBB10_12:                              # %lor.lhs.false.24
	movss	176(%rsp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm2, %xmm1
	movq	%r15, %rsi
	movq	40(%rsp), %r15          # 8-byte Reload
	jne	.LBB10_26
	jp	.LBB10_26
# BB#13:                                # %land.lhs.true.28
	movss	188(%rsp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	xorps	%xmm3, %xmm3
	ucomiss	%xmm3, %xmm2
	jne	.LBB10_26
	jp	.LBB10_26
.LBB10_14:                              # %land.lhs.true.32
	movss	208(%rsp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm2
	jne	.LBB10_26
	jp	.LBB10_26
# BB#15:                                # %land.lhs.true.37
	movss	212(%rsp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jne	.LBB10_26
	jp	.LBB10_26
# BB#16:                                # %land.lhs.true.42
	movss	216(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	ucomiss	184(%rsp), %xmm0
	jne	.LBB10_26
	jp	.LBB10_26
# BB#17:                                # %land.lhs.true.47
	movss	220(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	ucomiss	188(%rsp), %xmm0
	jne	.LBB10_26
	jp	.LBB10_26
# BB#18:                                # %if.end.53
	movq	%r15, 40(%rsp)          # 8-byte Spill
	movq	%rbx, %r15
	movq	%rsi, 48(%rsp)          # 8-byte Spill
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 144(%rsp)
	cvtps2pd	48(%r14), %xmm0
	movapd	%xmm0, 160(%rsp)
	leaq	144(%rsp), %rdi
	leaq	176(%rsp), %rsi
	leaq	80(%rsp), %rdx
	callq	gs_bbox_transform@PLT
	testq	%r15, %r15
	je	.LBB10_20
# BB#19:                                # %land.lhs.true.63
	movsd	.LCPI10_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	80(%rsp), %xmm1         # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %esi
	movsd	88(%rsp), %xmm1         # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %edx
	movsd	96(%rsp), %xmm1         # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %ecx
	mulsd	104(%rsp), %xmm0
	cvttsd2si	%xmm0, %r8d
	movq	%r15, %rdi
	callq	gx_cpath_includes_rectangle@PLT
	testl	%eax, %eax
	je	.LBB10_25
.LBB10_20:                              # %if.end.82
	cvtps2pd	40(%r14), %xmm0
	movapd	%xmm0, 144(%rsp)
	addpd	160(%rsp), %xmm0
	movapd	%xmm0, 160(%rsp)
	leaq	144(%rsp), %rdi
	leaq	208(%rsp), %rsi
	leaq	112(%rsp), %rdx
	callq	gs_bbox_transform@PLT
	movq	(%r14), %rax
	leaq	72(%rsp), %rdx
	movq	48(%rsp), %rdi          # 8-byte Reload
	movq	%r14, %rsi
	callq	*16(%rax)
	movq	40(%rsp), %rbx          # 8-byte Reload
	cmpl	$0, 2268(%rbx)
	je	.LBB10_22
# BB#21:                                # %if.then.99
	movq	1992(%rbx), %rdi
	movq	2032(%rbx), %rsi
	movl	$0, 2268(%rbx)
	xorl	%edx, %edx
	callq	XSetFillStyle@PLT
.LBB10_22:                              # %do.body.103
	cmpl	$3, 2264(%rbx)
	je	.LBB10_24
# BB#23:                                # %if.then.106
	movq	1992(%rbx), %rdi
	movq	2032(%rbx), %rsi
	movl	$3, 2264(%rbx)
	movl	$3, %edx
	callq	XSetFunction@PLT
.LBB10_24:                              # %do.end.113
	movsd	.LCPI10_1(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	112(%rsp), %xmm1        # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %r8d
	movsd	120(%rsp), %xmm1        # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %r9d
	movsd	80(%rsp), %xmm1         # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %r14d
	addsd	88(%rsp), %xmm0
	cvttsd2si	%xmm0, %ebp
	movq	2048(%rbx), %rsi
	movq	1992(%rbx), %rdi
	movq	2032(%rbx), %rcx
	movl	72(%rsp), %eax
	movl	76(%rsp), %edx
	movl	%ebp, 24(%rsp)
	movl	%r14d, 16(%rsp)
	movl	%edx, 8(%rsp)
	movl	%eax, (%rsp)
	movq	%rsi, %rdx
	callq	XCopyArea@PLT
	movl	72(%rsp), %ecx
	movl	76(%rsp), %r8d
	movq	%rbx, %rdi
	movl	%r14d, %esi
	movl	%ebp, %edx
	callq	x_update_add@PLT
	xorl	%eax, %eax
	jmp	.LBB10_27
.LBB10_25:                              # %cleanup
	movq	48(%rsp), %rsi          # 8-byte Reload
	movq	%r15, %rbx
	movq	40(%rsp), %r15          # 8-byte Reload
.LBB10_26:                              # %punt
	movq	304(%rsp), %rax
	movq	296(%rsp), %rcx
	movq	%rax, 16(%rsp)
	movq	%rcx, 8(%rsp)
	movq	%rbx, (%rsp)
	movq	%r15, %rdi
	movq	%r13, %rdx
	movq	%r14, %rcx
	movq	%r12, %r8
	movq	%rbp, %r9
	callq	gx_default_begin_typed_image@PLT
.LBB10_27:                              # %cleanup.146
	addq	$232, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end10:
	.size	x_begin_typed_image, .Lfunc_end10-x_begin_typed_image
	.cfi_endproc

	.align	16, 0x90
	.type	x_get_bits_rectangle,@function
x_get_bits_rectangle:                   # @x_get_bits_rectangle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp78:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp79:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp80:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp81:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp82:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp83:
	.cfi_def_cfa_offset 56
	subq	$168, %rsp
.Ltmp84:
	.cfi_def_cfa_offset 224
.Ltmp85:
	.cfi_offset %rbx, -56
.Ltmp86:
	.cfi_offset %r12, -48
.Ltmp87:
	.cfi_offset %r13, -40
.Ltmp88:
	.cfi_offset %r14, -32
.Ltmp89:
	.cfi_offset %r15, -24
.Ltmp90:
	.cfi_offset %rbp, -16
	movq	%rcx, 56(%rsp)          # 8-byte Spill
	movq	%rdx, %r9
	movq	%rdi, %rbx
	movzwl	108(%rbx), %ecx
	movl	(%rsi), %r13d
	movl	4(%rsi), %r10d
	movl	8(%rsi), %r8d
	movl	12(%rsi), %r11d
	movl	%r8d, %ebp
	subl	%r13d, %ebp
	movl	%ecx, %edi
	imull	%ebp, %edi
	leal	7(%rdi), %r15d
	sarl	$3, %r15d
	movl	2868(%rbx), %eax
	xorl	%edx, %edx
	divl	%r15d
	movl	%eax, %r14d
	movq	(%r9), %rax
	testl	$536870912, %eax        # imm = 0x20000000
	jne	.LBB11_1
# BB#2:                                 # %cond.false
	addl	$63, %edi
	sarl	$6, %edi
	shll	$3, %edi
	movq	%rdi, 96(%rsp)          # 8-byte Spill
	movl	%edi, 528(%r9)
	jmp	.LBB11_3
.LBB11_1:                               # %cond.true
	movl	528(%r9), %edx
	movq	%rdx, 96(%rsp)          # 8-byte Spill
.LBB11_3:                               # %cond.end
	movl	$1, %edi
	shlq	%cl, %rdi
	movl	$-15, %r12d
	movl	%r10d, %ecx
	orl	%r13d, %ecx
	js	.LBB11_65
# BB#4:                                 # %lor.lhs.false.19
	cmpl	832(%rbx), %r8d
	jg	.LBB11_65
# BB#5:                                 # %lor.lhs.false.22
	cmpl	836(%rbx), %r11d
	jg	.LBB11_65
# BB#6:                                 # %if.end
	testl	$33554432, %eax         # imm = 0x2000000
	je	.LBB11_9
# BB#7:                                 # %land.lhs.true
	cmpl	$0, 520(%r9)
	jne	.LBB11_9
# BB#8:                                 # %if.then.29
	andq	$-50331649, %rax        # imm = 0xFFFFFFFFFCFFFFFF
	orq	$16777216, %rax         # imm = 0x1000000
.LBB11_9:                               # %if.end.31
	movl	%eax, %ecx
	andl	$17891329, %ecx         # imm = 0x1110001
	cmpq	$17891329, %rcx         # imm = 0x1110001
	jne	.LBB11_66
# BB#10:                                # %lor.lhs.false.34
	movl	%eax, %edx
	andl	$1879048192, %edx       # imm = 0x70000000
	movq	%rax, %rcx
	andq	$12582912, %rcx         # imm = 0xC00000
	je	.LBB11_66
# BB#11:                                # %lor.lhs.false.34
	testq	%rdx, %rdx
	je	.LBB11_66
# BB#12:                                # %if.end.41
	shrq	%rax
	andl	$268435456, %eax        # imm = 0x10000000
	addq	$268435456, %rax        # imm = 0x10000000
	orq	%rax, %rcx
	orq	$17891345, %rcx         # imm = 0x1110011
	movq	%rcx, (%r9)
	xorl	%r12d, %r12d
	movl	%r8d, %eax
	subl	%r13d, %eax
	movq	%rax, 88(%rsp)          # 8-byte Spill
	jle	.LBB11_65
# BB#13:                                # %if.end.41
	cmpl	%r11d, %r10d
	jge	.LBB11_65
# BB#14:                                # %if.end.55
	movq	%rdi, 40(%rsp)          # 8-byte Spill
	cmpl	2120(%rbx), %r8d
	jle	.LBB11_18
# BB#15:                                # %lor.lhs.false.60
	cmpl	2128(%rbx), %r13d
	jge	.LBB11_18
# BB#16:                                # %lor.lhs.false.67
	cmpl	2124(%rbx), %r11d
	jle	.LBB11_18
# BB#17:                                # %lor.lhs.false.74
	cmpl	2132(%rbx), %r10d
	jge	.LBB11_18
# BB#20:                                # %if.else
	movl	%ebp, 28(%rsp)          # 4-byte Spill
	movl	%r11d, 36(%rsp)         # 4-byte Spill
	movq	%r9, 72(%rsp)           # 8-byte Spill
	movq	%r8, %r12
	movq	%rbx, %rdi
	movl	%r10d, %ebp
	callq	update_do_flush
	movq	%r12, %r8
	movl	%ebp, %r10d
	jmp	.LBB11_21
.LBB11_66:                              # %if.then.40
	movq	%rbx, %rdi
	movq	%r9, %rdx
	movq	56(%rsp), %rcx          # 8-byte Reload
	addq	$168, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	gx_default_get_bits_rectangle@PLT # TAILCALL
.LBB11_18:                              # %if.then.81
	movl	%ebp, 28(%rsp)          # 4-byte Spill
	movl	%r11d, 36(%rsp)         # 4-byte Spill
	movq	%r9, 72(%rsp)           # 8-byte Spill
	movl	2872(%rbx), %eax
	testl	%eax, %eax
	je	.LBB11_21
# BB#19:                                # %if.end.i
	movq	2160(%rbx), %rsi
	movq	%r8, %r12
	movq	1992(%rbx), %rdi
	movq	2032(%rbx), %rdx
	movl	2880(%rbx), %ecx
	movl	2884(%rbx), %r8d
	leaq	2896(%rbx), %r9
	movl	%eax, (%rsp)
	movl	%r10d, %ebp
	callq	XDrawText@PLT
	movq	%r12, %r8
	movl	%ebp, %r10d
	movl	$0, 2876(%rbx)
	movl	$0, 2872(%rbx)
.LBB11_21:                              # %for.body.lr.ph
	movq	%r8, 128(%rsp)          # 8-byte Spill
	decq	40(%rsp)                # 8-byte Folded Spill
	testl	%r14d, %r14d
	movl	$1, %eax
	cmovnel	%r14d, %eax
	movl	%eax, 32(%rsp)          # 4-byte Spill
	movl	%r15d, %eax
	movq	%rax, 104(%rsp)         # 8-byte Spill
	leal	-1(%r8), %eax
	movl	%eax, 84(%rsp)          # 4-byte Spill
	subl	%r13d, %eax
	movl	%eax, 140(%rsp)         # 4-byte Spill
	movq	88(%rsp), %rax          # 8-byte Reload
	movl	%eax, %ecx
	andl	$1, %ecx
	movl	%ecx, 80(%rsp)          # 4-byte Spill
	leal	1(%r13), %ecx
	movl	%ecx, 52(%rsp)          # 4-byte Spill
	movl	%eax, %ecx
	andl	$3, %ecx
	movl	%ecx, 136(%rsp)         # 4-byte Spill
	negl	%ecx
	movl	%ecx, 124(%rsp)         # 4-byte Spill
	movl	%r10d, %ecx
	negl	%ecx
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	andl	$3, %eax
	movq	%rax, 88(%rsp)          # 8-byte Spill
	xorl	%r12d, %r12d
	movl	%r10d, %r14d
	movl	%r10d, %ebp
	movl	36(%rsp), %eax          # 4-byte Reload
	.align	16, 0x90
.LBB11_22:                              # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_25 Depth 2
                                        #       Child Loop BB11_39 Depth 3
                                        #       Child Loop BB11_45 Depth 3
                                        #       Child Loop BB11_48 Depth 3
                                        #       Child Loop BB11_51 Depth 3
                                        #       Child Loop BB11_55 Depth 3
                                        #       Child Loop BB11_59 Depth 3
	movq	%r14, 152(%rsp)         # 8-byte Spill
	movq	%r13, 144(%rsp)         # 8-byte Spill
	movq	%rbx, 64(%rsp)          # 8-byte Spill
	movl	%eax, %r15d
	subl	%r14d, %r15d
	movl	32(%rsp), %eax          # 4-byte Reload
	cmpl	%r15d, %eax
	cmovbl	%eax, %r15d
	movq	1992(%rbx), %rdi
	movq	2160(%rbx), %rsi
	movq	40(%rsp), %rax          # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$2, 8(%rsp)
	movl	%r13d, %edx
	movl	%r14d, %ecx
	movl	28(%rsp), %r8d          # 4-byte Reload
	movl	%r15d, %r9d
	callq	XGetImage@PLT
	movq	%r14, %rcx
	movq	%rax, %r13
	movq	%r13, 112(%rsp)         # 8-byte Spill
	leal	(%r15,%rcx), %r11d
	testl	%r15d, %r15d
	jle	.LBB11_23
# BB#24:                                # %for.body.107.lr.ph
                                        #   in Loop: Header=BB11_22 Depth=1
	movq	16(%rsp), %rax          # 8-byte Reload
	leal	(%rax,%rcx), %r15d
	movq	96(%rsp), %r10          # 8-byte Reload
	imull	%r10d, %r15d
	movl	%ecx, %r14d
	movl	%r12d, %eax
	movq	72(%rsp), %r8           # 8-byte Reload
	movl	%ebp, %r9d
	.align	16, 0x90
.LBB11_25:                              # %for.body.107
                                        #   Parent Loop BB11_22 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB11_39 Depth 3
                                        #       Child Loop BB11_45 Depth 3
                                        #       Child Loop BB11_48 Depth 3
                                        #       Child Loop BB11_51 Depth 3
                                        #       Child Loop BB11_55 Depth 3
                                        #       Child Loop BB11_59 Depth 3
	movl	%eax, 164(%rsp)         # 4-byte Spill
	movl	%r15d, %r15d
	movl	%r14d, %eax
	subl	%ecx, %eax
	movslq	44(%r13), %rcx
	movslq	%eax, %rsi
	imulq	%rcx, %rsi
	addq	16(%r13), %rsi
	movq	8(%r8), %rcx
	movl	%r14d, %eax
	subl	%r9d, %eax
	imull	%r10d, %eax
	leaq	(%rax,%rcx), %rdi
	movl	40(%r13), %edx
	movl	48(%r13), %eax
	cmpl	%edx, %eax
	jne	.LBB11_31
# BB#26:                                # %land.lhs.true.119
                                        #   in Loop: Header=BB11_25 Depth=2
	cmpl	$1, %eax
	jg	.LBB11_28
# BB#27:                                # %lor.lhs.false.123
                                        #   in Loop: Header=BB11_25 Depth=2
	cmpl	$1, 32(%r13)
	jne	.LBB11_31
.LBB11_28:                              # %land.lhs.true.126
                                        #   in Loop: Header=BB11_25 Depth=2
	cmpl	$1, 24(%r13)
	je	.LBB11_30
# BB#29:                                # %land.lhs.true.126
                                        #   in Loop: Header=BB11_25 Depth=2
	cmpl	$8, %eax
	jle	.LBB11_30
.LBB11_31:                              # %if.else.136
                                        #   in Loop: Header=BB11_25 Depth=2
	leal	-15(%rdx), %ebp
	cmpl	$2, %ebp
	jae	.LBB11_32
# BB#46:                                # %if.then.191
                                        #   in Loop: Header=BB11_25 Depth=2
	sarl	$3, %eax
	cmpl	$1, 24(%r13)
	jne	.LBB11_47
# BB#52:                                # %for.body.208.lr.ph
                                        #   in Loop: Header=BB11_25 Depth=2
	leal	-2(%rax), %edx
	movslq	%edx, %rdx
	addq	%rdx, %rsi
	cmpl	$0, 136(%rsp)           # 4-byte Folded Reload
	cltq
	je	.LBB11_53
# BB#54:                                # %for.body.208.prol.preheader
                                        #   in Loop: Header=BB11_25 Depth=2
	movl	%r11d, %r12d
	addq	%r15, %rcx
	xorl	%edx, %edx
	movq	88(%rsp), %r11          # 8-byte Reload
	.align	16, 0x90
.LBB11_55:                              # %for.body.208.prol
                                        #   Parent Loop BB11_22 Depth=1
                                        #     Parent Loop BB11_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%rdi, %rbp
	movb	(%rsi), %bl
	movb	%bl, (%rcx,%rdx,2)
	movb	1(%rsi), %bl
	movb	%bl, 1(%rcx,%rdx,2)
	addq	%rax, %rsi
	leaq	2(%rcx,%rdx,2), %rdi
	incq	%rdx
	cmpl	%edx, %r11d
	jne	.LBB11_55
# BB#56:                                #   in Loop: Header=BB11_25 Depth=2
	addq	$2, %rbp
	movq	144(%rsp), %rcx         # 8-byte Reload
	leal	(%rcx,%rdx), %edx
	movq	%rbp, %rdi
	movl	%r12d, %r11d
	jmp	.LBB11_57
	.align	16, 0x90
.LBB11_32:                              # %if.else.136
                                        #   in Loop: Header=BB11_25 Depth=2
	movl	$-15, %r12d
	cmpl	$24, %edx
	jne	.LBB11_61
# BB#33:                                # %if.then.140
                                        #   in Loop: Header=BB11_25 Depth=2
	sarl	$3, %eax
	cmpl	$1, 24(%r13)
	jne	.LBB11_34
# BB#40:                                # %for.body.155.lr.ph
                                        #   in Loop: Header=BB11_25 Depth=2
	leal	-3(%rax), %ecx
	movslq	%ecx, %rcx
	addq	%rcx, %rsi
	cmpl	$0, 80(%rsp)            # 4-byte Folded Reload
	cltq
	jne	.LBB11_42
# BB#41:                                #   in Loop: Header=BB11_25 Depth=2
	movq	144(%rsp), %rcx         # 8-byte Reload
	movl	%ecx, %edx
	jmp	.LBB11_43
	.align	16, 0x90
.LBB11_47:                              # %for.body.223.lr.ph
                                        #   in Loop: Header=BB11_25 Depth=2
	cmpl	$0, 136(%rsp)           # 4-byte Folded Reload
	cltq
	movl	124(%rsp), %edx         # 4-byte Reload
	movq	144(%rsp), %rcx         # 8-byte Reload
	je	.LBB11_49
	.align	16, 0x90
.LBB11_48:                              # %for.body.223.prol
                                        #   Parent Loop BB11_22 Depth=1
                                        #     Parent Loop BB11_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movb	1(%rsi), %bl
	movb	%bl, (%rdi)
	movb	(%rsi), %bl
	movb	%bl, 1(%rdi)
	addq	%rax, %rsi
	addq	$2, %rdi
	incl	%ecx
	incl	%edx
	jne	.LBB11_48
.LBB11_49:                              # %for.body.223.lr.ph.split
                                        #   in Loop: Header=BB11_25 Depth=2
	cmpl	$3, 140(%rsp)           # 4-byte Folded Reload
	jb	.LBB11_60
# BB#50:                                # %for.body.223.lr.ph.split.split
                                        #   in Loop: Header=BB11_25 Depth=2
	incq	%rsi
	leaq	(,%rax,4), %rdx
	leaq	(%rax,%rax,2), %rbx
	movq	128(%rsp), %rbp         # 8-byte Reload
	subl	%ecx, %ebp
	.align	16, 0x90
.LBB11_51:                              # %for.body.223
                                        #   Parent Loop BB11_22 Depth=1
                                        #     Parent Loop BB11_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movb	(%rsi), %cl
	movb	%cl, (%rdi)
	movb	-1(%rsi), %cl
	movb	%cl, 1(%rdi)
	movb	(%rax,%rsi), %cl
	movb	%cl, 2(%rdi)
	movb	-1(%rax,%rsi), %cl
	movb	%cl, 3(%rdi)
	movb	(%rsi,%rax,2), %cl
	movb	%cl, 4(%rdi)
	movb	-1(%rsi,%rax,2), %cl
	movb	%cl, 5(%rdi)
	movb	(%rbx,%rsi), %cl
	movb	%cl, 6(%rdi)
	movb	-1(%rbx,%rsi), %cl
	movb	%cl, 7(%rdi)
	addq	%rdx, %rsi
	addq	$8, %rdi
	addl	$-4, %ebp
	jne	.LBB11_51
	jmp	.LBB11_60
.LBB11_30:                              # %if.then.133
                                        #   in Loop: Header=BB11_25 Depth=2
	movq	104(%rsp), %rdx         # 8-byte Reload
	movq	%r8, %rbx
	movl	%r9d, %ebp
	movq	%r10, %r12
	movl	%r11d, %r13d
	callq	memcpy@PLT
	movl	%r13d, %r11d
	movq	112(%rsp), %r13         # 8-byte Reload
	movq	%r12, %r10
	movl	%ebp, %r9d
	movq	%rbx, %r8
	jmp	.LBB11_60
.LBB11_53:                              #   in Loop: Header=BB11_25 Depth=2
	movq	144(%rsp), %rcx         # 8-byte Reload
	movl	%ecx, %edx
.LBB11_57:                              # %for.body.208.lr.ph.split
                                        #   in Loop: Header=BB11_25 Depth=2
	cmpl	$3, 140(%rsp)           # 4-byte Folded Reload
	jb	.LBB11_60
# BB#58:                                # %for.body.208.lr.ph.split.split
                                        #   in Loop: Header=BB11_25 Depth=2
	movq	128(%rsp), %rcx         # 8-byte Reload
	subl	%edx, %ecx
	.align	16, 0x90
.LBB11_59:                              # %for.body.208
                                        #   Parent Loop BB11_22 Depth=1
                                        #     Parent Loop BB11_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movb	(%rsi), %dl
	movb	%dl, (%rdi)
	movb	1(%rsi), %dl
	movb	%dl, 1(%rdi)
	movb	(%rsi,%rax), %dl
	movb	%dl, 2(%rdi)
	movb	1(%rsi,%rax), %dl
	leaq	(%rsi,%rax), %rsi
	movb	%dl, 3(%rdi)
	movb	(%rax,%rsi), %dl
	movb	%dl, 4(%rdi)
	movb	1(%rax,%rsi), %dl
	leaq	(%rsi,%rax), %rsi
	movb	%dl, 5(%rdi)
	movb	(%rax,%rsi), %dl
	movb	%dl, 6(%rdi)
	movb	1(%rax,%rsi), %dl
	leaq	(%rsi,%rax), %rsi
	movb	%dl, 7(%rdi)
	addq	%rax, %rsi
	addq	$8, %rdi
	addl	$-4, %ecx
	jne	.LBB11_59
	jmp	.LBB11_60
.LBB11_34:                              # %for.body.169.lr.ph
                                        #   in Loop: Header=BB11_25 Depth=2
	cmpl	$0, 80(%rsp)            # 4-byte Folded Reload
	cltq
	jne	.LBB11_36
# BB#35:                                #   in Loop: Header=BB11_25 Depth=2
	movq	144(%rsp), %rcx         # 8-byte Reload
	movl	%ecx, %ebp
	jmp	.LBB11_37
.LBB11_42:                              # %for.body.155.prol
                                        #   in Loop: Header=BB11_25 Depth=2
	movb	(%rsi), %cl
	movb	%cl, (%rdi)
	movb	1(%rsi), %cl
	movb	%cl, 1(%rdi)
	movb	2(%rsi), %cl
	movb	%cl, 2(%rdi)
	addq	%rax, %rsi
	addq	$3, %rdi
	movl	52(%rsp), %edx          # 4-byte Reload
	movq	144(%rsp), %rcx         # 8-byte Reload
.LBB11_43:                              # %for.body.155.lr.ph.split
                                        #   in Loop: Header=BB11_25 Depth=2
	cmpl	%ecx, 84(%rsp)          # 4-byte Folded Reload
	je	.LBB11_60
# BB#44:                                # %for.body.155.lr.ph.split.split
                                        #   in Loop: Header=BB11_25 Depth=2
	movq	128(%rsp), %rcx         # 8-byte Reload
	subl	%edx, %ecx
	.align	16, 0x90
.LBB11_45:                              # %for.body.155
                                        #   Parent Loop BB11_22 Depth=1
                                        #     Parent Loop BB11_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movb	(%rsi), %dl
	movb	%dl, (%rdi)
	movb	1(%rsi), %dl
	movb	%dl, 1(%rdi)
	movb	2(%rsi), %dl
	movb	%dl, 2(%rdi)
	movb	(%rsi,%rax), %dl
	movb	%dl, 3(%rdi)
	movb	1(%rsi,%rax), %dl
	movb	%dl, 4(%rdi)
	movb	2(%rsi,%rax), %dl
	leaq	(%rsi,%rax), %rsi
	movb	%dl, 5(%rdi)
	addq	%rax, %rsi
	addq	$6, %rdi
	addl	$-2, %ecx
	jne	.LBB11_45
	jmp	.LBB11_60
.LBB11_36:                              # %for.body.169.prol
                                        #   in Loop: Header=BB11_25 Depth=2
	movb	2(%rsi), %cl
	movb	%cl, (%rdi)
	movb	1(%rsi), %cl
	movb	%cl, 1(%rdi)
	movb	(%rsi), %cl
	movb	%cl, 2(%rdi)
	addq	%rax, %rsi
	addq	$3, %rdi
	movl	52(%rsp), %ebp          # 4-byte Reload
	movq	144(%rsp), %rcx         # 8-byte Reload
.LBB11_37:                              # %for.body.169.lr.ph.split
                                        #   in Loop: Header=BB11_25 Depth=2
	cmpl	%ecx, 84(%rsp)          # 4-byte Folded Reload
	je	.LBB11_60
# BB#38:                                # %for.body.169.lr.ph.split.split
                                        #   in Loop: Header=BB11_25 Depth=2
	addq	$2, %rsi
	leaq	(%rax,%rax), %rcx
	movq	128(%rsp), %rdx         # 8-byte Reload
	subl	%ebp, %edx
	.align	16, 0x90
.LBB11_39:                              # %for.body.169
                                        #   Parent Loop BB11_22 Depth=1
                                        #     Parent Loop BB11_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movb	(%rsi), %bl
	movb	%bl, (%rdi)
	movb	-1(%rsi), %bl
	movb	%bl, 1(%rdi)
	movb	-2(%rsi), %bl
	movb	%bl, 2(%rdi)
	movb	(%rax,%rsi), %bl
	movb	%bl, 3(%rdi)
	movb	-1(%rax,%rsi), %bl
	movb	%bl, 4(%rdi)
	movb	-2(%rax,%rsi), %bl
	movb	%bl, 5(%rdi)
	addq	%rcx, %rsi
	addq	$6, %rdi
	addl	$-2, %edx
	jne	.LBB11_39
	.align	16, 0x90
.LBB11_60:                              #   in Loop: Header=BB11_25 Depth=2
	movl	164(%rsp), %eax         # 4-byte Reload
	movl	%eax, %r12d
.LBB11_61:                              # %if.end.238
                                        #   in Loop: Header=BB11_25 Depth=2
	incl	%r14d
	addl	%r10d, %r15d
	cmpl	%r11d, %r14d
	movl	%r12d, %eax
	movq	152(%rsp), %rcx         # 8-byte Reload
	jl	.LBB11_25
	jmp	.LBB11_62
	.align	16, 0x90
.LBB11_23:                              #   in Loop: Header=BB11_22 Depth=1
	movq	72(%rsp), %r8           # 8-byte Reload
	movl	%ebp, %r9d
	movq	96(%rsp), %r10          # 8-byte Reload
.LBB11_62:                              # %for.end.241
                                        #   in Loop: Header=BB11_22 Depth=1
	movq	%r10, 96(%rsp)          # 8-byte Spill
	movl	%r9d, %ebp
	movq	%r8, 72(%rsp)           # 8-byte Spill
	movq	%r13, %rdi
	movl	%r11d, %ebx
	callq	*96(%r13)
	movl	36(%rsp), %eax          # 4-byte Reload
	cmpl	%ebx, %eax
	movl	%ebx, %r14d
	movq	64(%rsp), %rbx          # 8-byte Reload
	movq	144(%rsp), %r13         # 8-byte Reload
	jg	.LBB11_22
# BB#63:                                # %for.end.245
	movq	56(%rsp), %rax          # 8-byte Reload
	testq	%rax, %rax
	je	.LBB11_65
# BB#64:                                # %if.then.247
	movq	$0, (%rax)
.LBB11_65:                              # %cleanup
	movl	%r12d, %eax
	addq	$168, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end11:
	.size	x_get_bits_rectangle, .Lfunc_end11-x_get_bits_rectangle
	.cfi_endproc

	.globl	gdev_x_send_event
	.align	16, 0x90
	.type	gdev_x_send_event,@function
gdev_x_send_event:                      # @gdev_x_send_event
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$200, %rsp
.Ltmp91:
	.cfi_def_cfa_offset 208
	movl	$33, 8(%rsp)
	movq	1992(%rdi), %r9
	movq	%r9, 32(%rsp)
	movq	2024(%rdi), %rax
	movq	%rax, 40(%rsp)
	movq	%rsi, 48(%rsp)
	movl	$32, 56(%rsp)
	movq	2064(%rdi), %rcx
	movq	%rcx, 64(%rsp)
	movq	2160(%rdi), %rcx
	movq	%rcx, 72(%rsp)
	leaq	8(%rsp), %r8
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movq	%r9, %rdi
	movq	%rax, %rsi
	callq	XSendEvent@PLT
	addq	$200, %rsp
	retq
.Lfunc_end12:
	.size	gdev_x_send_event, .Lfunc_end12-gdev_x_send_event
	.cfi_endproc

	.globl	x_update_add
	.align	16, 0x90
	.type	x_update_add,@function
x_update_add:                           # @x_update_add
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp92:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp93:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp94:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp95:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp96:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp97:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp98:
	.cfi_def_cfa_offset 64
.Ltmp99:
	.cfi_offset %rbx, -56
.Ltmp100:
	.cfi_offset %r12, -48
.Ltmp101:
	.cfi_offset %r13, -40
.Ltmp102:
	.cfi_offset %r14, -32
.Ltmp103:
	.cfi_offset %r15, -24
.Ltmp104:
	.cfi_offset %rbp, -16
	movl	%r8d, %r14d
	movl	%ecx, %r15d
	movl	%esi, %r12d
	movq	%rdi, %rbx
	movslq	%r15d, %rax
	addl	%r12d, %r15d
	movslq	%r14d, %r13
	addl	%edx, %r14d
	imulq	%rax, %r13
	movq	2136(%rbx), %r8
	movl	2120(%rbx), %r10d
	movl	2124(%rbx), %r9d
	cmpl	%r12d, %r10d
	cmovgl	%r12d, %r10d
	cmpl	%edx, %r9d
	cmovgl	%edx, %r9d
	movl	2128(%rbx), %r11d
	cmpl	%r11d, %r15d
	cmovgel	%r15d, %r11d
	movl	2132(%rbx), %esi
	cmpl	%esi, %r14d
	cmovgel	%r14d, %esi
	movl	%r11d, %eax
	subl	%r10d, %eax
	movl	%esi, %ecx
	subl	%r9d, %ecx
	movslq	%eax, %rbp
	movslq	%ecx, %rdi
	imulq	%rbp, %rdi
	incl	2152(%rbx)
	movq	%rdi, 2136(%rbx)
	addq	%r13, 2144(%rbx)
	cmpl	$0, 2860(%rbx)
	jne	.LBB13_5
# BB#1:                                 # %if.then
	leal	(%rcx,%rax), %ebp
	cmpl	$70, %ebp
	jl	.LBB13_4
# BB#2:                                 # %if.then
	orl	%eax, %ecx
	cmpl	$16, %ecx
	jl	.LBB13_4
# BB#3:                                 # %land.lhs.true.79
	addq	%r13, %r8
	movq	%rdi, %rax
	sarq	$2, %rax
	subq	%rax, %rdi
	cmpq	%rdi, %r8
	jge	.LBB13_4
.LBB13_5:                               # %if.end.87
	movl	%edx, %ebp
	cmpl	$0, 1832(%rbx)
	je	.LBB13_7
# BB#6:                                 # %land.lhs.true.89
	cmpq	$0, 1728(%rbx)
	je	.LBB13_4
.LBB13_7:                               # %if.else.95
	movq	%rbx, %rdi
	callq	update_do_flush
	movl	%r12d, 2120(%rbx)
	movl	%ebp, 2124(%rbx)
	movl	%r15d, 2128(%rbx)
	movl	%r14d, 2132(%rbx)
	movl	$1, 2152(%rbx)
	movq	%r13, 2144(%rbx)
	movq	%r13, 2136(%rbx)
	jmp	.LBB13_8
.LBB13_4:                               # %if.else
	movl	%r10d, 2120(%rbx)
	movl	%r9d, 2124(%rbx)
	movl	%r11d, 2128(%rbx)
	movl	%esi, 2132(%rbx)
.LBB13_8:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end13:
	.size	x_update_add, .Lfunc_end13-x_update_add
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI14_0:
	.long	8388607                 # 0x7fffff
	.long	8388607                 # 0x7fffff
	.long	4286578688              # 0xff800000
	.long	4286578688              # 0xff800000
	.text
	.align	16, 0x90
	.type	update_do_flush,@function
update_do_flush:                        # @update_do_flush
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp105:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp106:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp107:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp108:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp109:
	.cfi_def_cfa_offset 48
	subq	$32, %rsp
.Ltmp110:
	.cfi_def_cfa_offset 80
.Ltmp111:
	.cfi_offset %rbx, -48
.Ltmp112:
	.cfi_offset %r12, -40
.Ltmp113:
	.cfi_offset %r14, -32
.Ltmp114:
	.cfi_offset %r15, -24
.Ltmp115:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movl	2872(%rbx), %eax
	testl	%eax, %eax
	je	.LBB14_2
# BB#1:                                 # %do_flush_text.exit
	movq	2160(%rbx), %rsi
	movq	1992(%rbx), %rdi
	movq	2032(%rbx), %rdx
	movl	2880(%rbx), %ecx
	movl	2884(%rbx), %r8d
	leaq	2896(%rbx), %r9
	movl	%eax, (%rsp)
	callq	XDrawText@PLT
	movl	$0, 2876(%rbx)
	movl	$0, 2872(%rbx)
.LBB14_2:                               # %if.end
	movl	2128(%rbx), %edi
	cmpl	$-8388608, %edi         # imm = 0xFFFFFFFFFF800000
	je	.LBB14_24
# BB#3:                                 # %lor.lhs.false
	movl	2132(%rbx), %esi
	cmpl	$-8388608, %esi         # imm = 0xFFFFFFFFFF800000
	je	.LBB14_24
# BB#4:                                 # %if.end.7
	movl	2120(%rbx), %ebp
	cmpl	$8388607, %ebp          # imm = 0x7FFFFF
	je	.LBB14_24
# BB#5:                                 # %lor.lhs.false.12
	movl	2124(%rbx), %r14d
	cmpl	$8388607, %r14d         # imm = 0x7FFFFF
	je	.LBB14_24
# BB#6:                                 # %if.end.19
	cmpl	$0, 2152(%rbx)
	je	.LBB14_24
# BB#7:                                 # %if.then.22
	movl	%edi, %ecx
	subl	%ebp, %ecx
	movl	%esi, %eax
	subl	%r14d, %eax
	cmpl	$0, 1832(%rbx)
	je	.LBB14_12
# BB#8:                                 # %if.then.42
	movq	1728(%rbx), %r8
	testq	%r8, %r8
	je	.LBB14_24
# BB#9:                                 # %do.body.49
	movl	%r14d, %edx
	orl	%ebp, %edx
	jns	.LBB14_11
# BB#10:                                # %if.then.51
	xorl	%edx, %edx
	testl	%ebp, %ebp
	cmovsl	%edx, %ebp
	cmovsl	%edi, %ecx
	testl	%r14d, %r14d
	cmovsl	%edx, %r14d
	cmovsl	%esi, %eax
.LBB14_11:                              # %do.body.60
	movl	832(%r8), %r15d
	movl	836(%r8), %r12d
	subl	%ebp, %r15d
	cmpl	%r15d, %ecx
	cmovlel	%ecx, %r15d
	subl	%r14d, %r12d
	cmpl	%r12d, %eax
	cmovlel	%eax, %r12d
	movb	$1, %al
	jmp	.LBB14_15
.LBB14_12:                              # %do.body.81
	movl	%r14d, %edx
	orl	%ebp, %edx
	jns	.LBB14_14
# BB#13:                                # %if.then.84
	xorl	%edx, %edx
	testl	%ebp, %ebp
	cmovsl	%edx, %ebp
	cmovsl	%edi, %ecx
	testl	%r14d, %r14d
	cmovsl	%edx, %r14d
	cmovsl	%esi, %eax
.LBB14_14:                              # %do.body.96
	movl	832(%rbx), %r15d
	movl	836(%rbx), %r12d
	subl	%ebp, %r15d
	cmpl	%r15d, %ecx
	cmovlel	%ecx, %r15d
	subl	%r14d, %r12d
	cmpl	%r12d, %eax
	cmovlel	%eax, %r12d
	xorl	%eax, %eax
	xorl	%r8d, %r8d
.LBB14_15:                              # %if.end.118
	testl	%r15d, %r15d
	jle	.LBB14_23
# BB#16:                                # %if.end.118
	testl	%r12d, %r12d
	jle	.LBB14_23
# BB#17:                                # %if.then.121
	testb	%al, %al
	je	.LBB14_19
# BB#18:                                # %if.then.123
	movslq	%r14d, %r9
	movq	2576(%r8), %rax
	movq	(%rax,%r9,8), %rsi
	movl	1736(%r8), %ecx
	movl	%r12d, 8(%rsp)
	movl	%r15d, (%rsp)
	movq	%rbx, %rdi
	movl	%ebp, %edx
	movl	%ebp, %r8d
	callq	x_copy_image
.LBB14_19:                              # %if.end.124
	movq	2048(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB14_23
# BB#20:                                # %do.body.127
	cmpl	$3, 2264(%rbx)
	je	.LBB14_22
# BB#21:                                # %if.then.129
	movq	1992(%rbx), %rdi
	movq	2032(%rbx), %rsi
	movl	$3, 2264(%rbx)
	movl	$3, %edx
	callq	XSetFunction@PLT
	movq	2048(%rbx), %rsi
.LBB14_22:                              # %do.end.134
	movq	1992(%rbx), %rdi
	movq	2024(%rbx), %rdx
	movq	2032(%rbx), %rcx
	movl	%r14d, 24(%rsp)
	movl	%ebp, 16(%rsp)
	movl	%r12d, 8(%rsp)
	movl	%r15d, (%rsp)
	movl	%ebp, %r8d
	movl	%r14d, %r9d
	callq	XCopyArea@PLT
.LBB14_23:                              # %if.end.140
	movaps	.LCPI14_0(%rip), %xmm0  # xmm0 = [8388607,8388607,4286578688,4286578688]
	movups	%xmm0, 2120(%rbx)
	movl	$0, 2152(%rbx)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 2136(%rbx)
.LBB14_24:                              # %cleanup
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end14:
	.size	update_do_flush, .Lfunc_end14-update_do_flush
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI15_0:
	.long	8388607                 # 0x7fffff
	.long	8388607                 # 0x7fffff
	.long	4286578688              # 0xff800000
	.long	4286578688              # 0xff800000
	.text
	.align	16, 0x90
	.type	x_bbox_init_box,@function
x_bbox_init_box:                        # @x_bbox_init_box
	.cfi_startproc
# BB#0:                                 # %entry
	movaps	.LCPI15_0(%rip), %xmm0  # xmm0 = [8388607,8388607,4286578688,4286578688]
	movups	%xmm0, 2120(%rdi)
	movl	$0, 2152(%rdi)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 2136(%rdi)
	movl	$1, %eax
	retq
.Lfunc_end15:
	.size	x_bbox_init_box, .Lfunc_end15-x_bbox_init_box
	.cfi_endproc

	.align	16, 0x90
	.type	x_bbox_get_box,@function
x_bbox_get_box:                         # @x_bbox_get_box
	.cfi_startproc
# BB#0:                                 # %entry
	movdqu	2120(%rdi), %xmm0
	pslld	$8, %xmm0
	movdqu	%xmm0, (%rsi)
	retq
.Lfunc_end16:
	.size	x_bbox_get_box, .Lfunc_end16-x_bbox_get_box
	.cfi_endproc

	.align	16, 0x90
	.type	x_bbox_add_rect,@function
x_bbox_add_rect:                        # @x_bbox_add_rect
	.cfi_startproc
# BB#0:                                 # %entry
	sarl	$8, %esi
	sarl	$8, %edx
	addl	$255, %ecx
	sarl	$8, %ecx
	subl	%esi, %ecx
	addl	$255, %r8d
	sarl	$8, %r8d
	subl	%edx, %r8d
	jmp	x_update_add@PLT        # TAILCALL
.Lfunc_end17:
	.size	x_bbox_add_rect, .Lfunc_end17-x_bbox_add_rect
	.cfi_endproc

	.align	16, 0x90
	.type	x_bbox_in_rect,@function
x_bbox_in_rect:                         # @x_bbox_in_rect
	.cfi_startproc
# BB#0:                                 # %entry
	movl	2132(%rdi), %eax
	shll	$8, %eax
	cmpl	%eax, 12(%rsi)
	jle	.LBB18_2
# BB#1:
	xorl	%eax, %eax
	movzbl	%al, %eax
	retq
.LBB18_2:                               # %land.lhs.true
	movl	2128(%rdi), %eax
	shll	$8, %eax
	cmpl	%eax, 8(%rsi)
	jle	.LBB18_4
# BB#3:
	xorl	%eax, %eax
	movzbl	%al, %eax
	retq
.LBB18_4:                               # %land.lhs.true.7
	movl	2124(%rdi), %eax
	shll	$8, %eax
	cmpl	%eax, 4(%rsi)
	jge	.LBB18_6
# BB#5:
	xorl	%eax, %eax
	movzbl	%al, %eax
	retq
.LBB18_6:                               # %land.rhs
	movl	2120(%rdi), %eax
	shll	$8, %eax
	cmpl	%eax, (%rsi)
	setge	%al
	movzbl	%al, %eax
	retq
.Lfunc_end18:
	.size	x_bbox_in_rect, .Lfunc_end18-x_bbox_in_rect
	.cfi_endproc

	.align	16, 0x90
	.type	alt_put_image,@function
alt_put_image:                          # @alt_put_image
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp116:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp117:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp118:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp119:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp120:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp121:
	.cfi_def_cfa_offset 56
	subq	$536, %rsp              # imm = 0x218
.Ltmp122:
	.cfi_def_cfa_offset 592
.Ltmp123:
	.cfi_offset %rbx, -56
.Ltmp124:
	.cfi_offset %r12, -48
.Ltmp125:
	.cfi_offset %r13, -40
.Ltmp126:
	.cfi_offset %r14, -32
.Ltmp127:
	.cfi_offset %r15, -24
.Ltmp128:
	.cfi_offset %rbp, -16
	movl	%r9d, %r15d
	movq	%rdx, %r14
	movq	%rsi, 48(%rsp)          # 8-byte Spill
	movq	%rdi, %rbx
	movl	600(%rsp), %ebp
	movslq	44(%rcx), %rax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	movl	%r8d, %eax
	sarl	$3, %eax
	movslq	%eax, %r12
	addq	16(%rcx), %r12
	andb	$7, %r8b
	movl	$128, %eax
	movb	%r8b, %cl
	shrl	%cl, %eax
	movl	%eax, 64(%rsp)          # 4-byte Spill
	leaq	80(%rsp), %rcx
	movl	$13, %edx
	movq	%r14, %rsi
	callq	XGetGCValues@PLT
	movl	80(%rsp), %eax
	cmpl	$1, %eax
	je	.LBB19_4
# BB#1:                                 # %entry
	cmpl	$7, %eax
	jne	.LBB19_2
# BB#6:                                 # %if.then.19
	movq	104(%rsp), %rdx
	xorl	%r13d, %r13d
	testq	%rdx, %rdx
	jne	.LBB19_5
	jmp	.LBB19_7
.LBB19_4:                               # %if.then.10
	movq	104(%rsp), %rdx
	xorl	%r13d, %r13d
	cmpq	$-1, %rdx
	je	.LBB19_7
.LBB19_5:                               # %if.then.13
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	XSetForeground@PLT
	movl	$255, %r13d
	jmp	.LBB19_7
.LBB19_2:                               # %entry
	cmpl	$3, %eax
	jne	.LBB19_24
# BB#3:                                 # %if.then
	movq	104(%rsp), %rdx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	XSetForeground@PLT
	movl	608(%rsp), %eax
	movl	%eax, (%rsp)
	movq	%rbx, %rdi
	movq	48(%rsp), %rsi          # 8-byte Reload
	movq	%r14, %rdx
	movl	%r15d, %ecx
	movl	592(%rsp), %r8d
	movl	%ebp, %r9d
	callq	XFillRectangle@PLT
	movq	96(%rsp), %rdx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	XSetForeground@PLT
	xorl	%r13d, %r13d
.LBB19_7:                               # %if.end.32
	movq	%rbx, 24(%rsp)          # 8-byte Spill
	movq	%r14, 32(%rsp)          # 8-byte Spill
	leaq	208(%rsp), %r8
	movl	608(%rsp), %edi
	testl	%edi, %edi
	movq	%r15, %r9
	movq	%r9, 16(%rsp)           # 8-byte Spill
	movl	592(%rsp), %esi
	movq	40(%rsp), %r10          # 8-byte Reload
	movq	%r12, %r11
	je	.LBB19_21
# BB#8:                                 # %while.cond.preheader.lr.ph
	leaq	208(%rsp), %r8
	xorl	%ecx, %ecx
	movl	$128, %r12d
	.align	16, 0x90
.LBB19_9:                               # %while.cond.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB19_11 Depth 2
                                        #       Child Loop BB19_12 Depth 3
                                        #       Child Loop BB19_16 Depth 3
	testl	%ebp, %ebp
	je	.LBB19_20
# BB#10:                                # %while.body.lr.ph.lr.ph
                                        #   in Loop: Header=BB19_9 Depth=1
	leal	(%rcx,%rsi), %eax
	movl	%eax, 68(%rsp)          # 4-byte Spill
	xorl	%eax, %eax
	movq	%r11, %r14
	movl	64(%rsp), %r15d         # 4-byte Reload
.LBB19_11:                              # %while.body.lr.ph
                                        #   Parent Loop BB19_9 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB19_12 Depth 3
                                        #       Child Loop BB19_16 Depth 3
	movl	%eax, %ebx
	.align	16, 0x90
.LBB19_12:                              # %while.body
                                        #   Parent Loop BB19_9 Depth=1
                                        #     Parent Loop BB19_11 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzbl	(%r14), %eax
	xorl	%r13d, %eax
	testl	%r15d, %eax
	jne	.LBB19_13
# BB#19:                                # %if.else.59
                                        #   in Loop: Header=BB19_12 Depth=3
	sarl	%r15d
	leaq	1(%r14), %rax
	testl	%r15d, %r15d
	cmovel	%r12d, %r15d
	cmoveq	%rax, %r14
	incl	%ebx
	cmpl	%ebp, %ebx
	jb	.LBB19_12
	jmp	.LBB19_20
	.align	16, 0x90
.LBB19_13:                              # %if.then.36
                                        #   in Loop: Header=BB19_11 Depth=2
	movq	%rcx, 72(%rsp)          # 8-byte Spill
	leaq	528(%rsp), %rax
	cmpq	%rax, %r8
	jne	.LBB19_15
# BB#14:                                # %if.then.39
                                        #   in Loop: Header=BB19_11 Depth=2
	movl	$40, %r8d
	movq	24(%rsp), %rdi          # 8-byte Reload
	movq	48(%rsp), %rsi          # 8-byte Reload
	movq	32(%rsp), %rdx          # 8-byte Reload
	leaq	208(%rsp), %rax
	movq	%rax, %rcx
	movq	%r11, 56(%rsp)          # 8-byte Spill
	callq	XFillRectangles@PLT
	movq	56(%rsp), %r11          # 8-byte Reload
	movq	40(%rsp), %r10          # 8-byte Reload
	movl	592(%rsp), %esi
	movl	608(%rsp), %edi
	movq	16(%rsp), %r9           # 8-byte Reload
	leaq	208(%rsp), %r8
.LBB19_15:                              # %if.end.43
                                        #   in Loop: Header=BB19_11 Depth=2
	leal	(%rbx,%r9), %eax
	movw	%ax, (%r8)
	movl	68(%rsp), %eax          # 4-byte Reload
	movw	%ax, 2(%r8)
	leal	1(%rbx), %ecx
	.align	16, 0x90
.LBB19_16:                              # %do.body
                                        #   Parent Loop BB19_9 Depth=1
                                        #     Parent Loop BB19_11 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%r14, %rdx
	movl	%ecx, %eax
	sarl	%r15d
	leaq	1(%rdx), %r14
	testl	%r15d, %r15d
	cmovel	%r12d, %r15d
	cmovneq	%rdx, %r14
	cmpl	%ebp, %eax
	jae	.LBB19_18
# BB#17:                                # %land.rhs
                                        #   in Loop: Header=BB19_16 Depth=3
	movzbl	(%r14), %edx
	xorl	%r13d, %edx
	leal	1(%rax), %ecx
	testl	%r15d, %edx
	jne	.LBB19_16
.LBB19_18:                              # %do.end
                                        #   in Loop: Header=BB19_11 Depth=2
	movl	%eax, %ecx
	subl	%ebx, %ecx
	cmpl	%ebp, %eax
	movw	%cx, 4(%r8)
	movw	$1, 6(%r8)
	leaq	8(%r8), %r8
	movq	72(%rsp), %rcx          # 8-byte Reload
	jb	.LBB19_11
	.align	16, 0x90
.LBB19_20:                              # %while.end
                                        #   in Loop: Header=BB19_9 Depth=1
	incl	%ecx
	addq	%r10, %r11
	cmpl	%edi, %ecx
	jne	.LBB19_9
.LBB19_21:                              # %for.end
	leaq	208(%rsp), %rcx
	subq	%rcx, %r8
	shrq	$3, %r8
	movq	24(%rsp), %rbx          # 8-byte Reload
	movq	%rbx, %rdi
	movq	48(%rsp), %rsi          # 8-byte Reload
	movq	32(%rsp), %rbp          # 8-byte Reload
	movq	%rbp, %rdx
	callq	XFillRectangles@PLT
	xorl	%r14d, %r14d
	testl	%r13d, %r13d
	je	.LBB19_23
# BB#22:                                # %if.then.75
	movq	96(%rsp), %rdx
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	XSetForeground@PLT
	jmp	.LBB19_23
.LBB19_24:                              # %if.else.26
	callq	gs_program_name@PLT
	movq	%rax, %rbx
	callq	gs_revision_number@PLT
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	eprintf_program_ident@PLT
	leaq	.L.str.4(%rip), %rdi
	movl	$1252, %esi             # imm = 0x4E4
	callq	lprintf_file_and_line@PLT
	leaq	.L.str.7(%rip), %rdi
	xorl	%eax, %eax
	callq	errprintf_nomem@PLT
	movl	$-15, %r14d
.LBB19_23:                              # %cleanup
	movl	%r14d, %eax
	addq	$536, %rsp              # imm = 0x218
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end19:
	.size	alt_put_image, .Lfunc_end19-alt_put_image
	.cfi_endproc

	.align	16, 0x90
	.type	x_copy_image,@function
x_copy_image:                           # @x_copy_image
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp129:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp130:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp131:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp132:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp133:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp134:
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
.Ltmp135:
	.cfi_def_cfa_offset 112
.Ltmp136:
	.cfi_offset %rbx, -56
.Ltmp137:
	.cfi_offset %r12, -48
.Ltmp138:
	.cfi_offset %r13, -40
.Ltmp139:
	.cfi_offset %r14, -32
.Ltmp140:
	.cfi_offset %r15, -24
.Ltmp141:
	.cfi_offset %rbp, -16
	movl	%r9d, %r14d
	movl	%r8d, 52(%rsp)          # 4-byte Spill
	movl	%ecx, %r13d
	movl	%edx, %r12d
	movq	%rsi, %rbp
	movq	%rdi, %rbx
	movzwl	108(%rbx), %r15d
	cmpl	$0, 2268(%rbx)
	je	.LBB20_2
# BB#1:                                 # %if.then
	movq	1992(%rbx), %rdi
	movq	2032(%rbx), %rsi
	movl	$0, 2268(%rbx)
	xorl	%edx, %edx
	callq	XSetFillStyle@PLT
.LBB20_2:                               # %do.body.4
	movl	112(%rsp), %eax
	cmpl	$3, 2264(%rbx)
	je	.LBB20_4
# BB#3:                                 # %if.then.7
	movq	1992(%rbx), %rdi
	movq	2032(%rbx), %rsi
	movl	$3, 2264(%rbx)
	movl	$3, %edx
	movq	%r13, 40(%rsp)          # 8-byte Spill
	movq	%r12, %r13
	movl	%r14d, %r12d
	movq	%rax, %r14
	callq	XSetFunction@PLT
	movq	%r14, %rax
	movl	%r12d, %r14d
	movq	%r13, %r12
	movq	40(%rsp), %r13          # 8-byte Reload
.LBB20_4:                               # %do.end.14
	movl	120(%rsp), %edx
	cmpl	$1, %eax
	jne	.LBB20_18
# BB#5:                                 # %do.end.14
	cmpl	$1, %edx
	jne	.LBB20_18
# BB#6:                                 # %if.then.19
	imull	%r15d, %r12d
	movl	%r12d, %eax
	shrl	$3, %eax
	movzbl	(%rbp,%rax), %edx
	cmpl	$7, %r15d
	ja	.LBB20_8
# BB#7:                                 # %if.then.22
	andb	$7, %r12b
	movb	%r12b, %cl
	shll	%cl, %edx
	movzbl	%dl, %eax
	movl	$8, %ecx
	subl	%r15d, %ecx
	shrl	%cl, %eax
	movslq	%eax, %rdx
	movl	52(%rsp), %r12d         # 4-byte Reload
	jmp	.LBB20_15
.LBB20_18:                              # %if.else.51
	movl	%r14d, 40(%rsp)         # 4-byte Spill
	movq	%rax, %r14
	leal	(%r14,%r12), %eax
	movq	2008(%rbx), %rcx
	movl	20(%rcx), %ecx
	leaq	1856(%rbx), %rsi
	movl	%eax, 1856(%rbx)
	movl	%edx, 1860(%rbx)
	movl	$2, 1868(%rbx)
	movq	%rbp, 1872(%rbx)
	movl	%ecx, 1896(%rbx)
	movl	$8, 1892(%rbx)
	imull	%eax, %ecx
	leal	(,%r13,8), %eax
	xorl	%ebp, %ebp
	cmpl	%eax, %ecx
	cmovgel	%ebp, %r13d
	movl	%r13d, 1900(%rbx)
	movl	%r15d, 1904(%rbx)
	movq	%rsi, %r15
	movq	%r15, %rdi
	callq	XInitImage@PLT
	testl	%eax, %eax
	je	.LBB20_19
# BB#20:                                # %if.end.78
	movq	2160(%rbx), %rsi
	movq	1992(%rbx), %rdi
	movq	2032(%rbx), %rdx
	movl	120(%rsp), %eax
	movl	%eax, 24(%rsp)
	movl	%r14d, 16(%rsp)
	movl	40(%rsp), %eax          # 4-byte Reload
	movl	%eax, 8(%rsp)
	movl	52(%rsp), %eax          # 4-byte Reload
	movl	%eax, (%rsp)
	xorl	%r9d, %r9d
	movq	%r15, %rcx
	movl	%r12d, %r8d
	callq	XPutImage@PLT
	movl	$1, 1904(%rbx)
	movl	$1, 1896(%rbx)
	movq	$-1, %rax
	movd	%rax, %xmm0
	movups	%xmm0, 2168(%rbx)
	jmp	.LBB20_21
.LBB20_8:                               # %if.else
	cmpl	$9, %r15d
	movl	52(%rsp), %r12d         # 4-byte Reload
	jb	.LBB20_15
# BB#9:                                 # %while.body.preheader
	addq	%rax, %rbp
	movl	$7, %esi
	subl	%r15d, %esi
	cmpl	$-10, %esi
	movl	$-9, %ecx
	movl	$-9, %eax
	cmovgl	%esi, %eax
	addl	%r15d, %eax
	movl	%eax, %edi
	shrl	$3, %edi
	incl	%edi
	testb	$3, %dil
	je	.LBB20_12
# BB#10:                                # %while.body.prol.preheader
	cmpl	$-10, %esi
	cmovgl	%esi, %ecx
	addl	%r15d, %ecx
	shrl	$3, %ecx
	incl	%ecx
	andl	$3, %ecx
	negl	%ecx
	.align	16, 0x90
.LBB20_11:                              # %while.body.prol
                                        # =>This Inner Loop Header: Depth=1
	addl	$-8, %r15d
	shlq	$8, %rdx
	movzbl	1(%rbp), %esi
	incq	%rbp
	orq	%rsi, %rdx
	incl	%ecx
	jne	.LBB20_11
.LBB20_12:                              # %while.body.preheader.split
	cmpl	$24, %eax
	jb	.LBB20_15
# BB#13:                                # %while.body.preheader.split.split
	addq	$4, %rbp
	.align	16, 0x90
.LBB20_14:                              # %while.body
                                        # =>This Inner Loop Header: Depth=1
	shlq	$8, %rdx
	movzbl	-3(%rbp), %eax
	orq	%rdx, %rax
	shlq	$8, %rax
	movzbl	-2(%rbp), %ecx
	orq	%rax, %rcx
	shlq	$8, %rcx
	movzbl	-1(%rbp), %eax
	orq	%rcx, %rax
	addl	$-32, %r15d
	shlq	$8, %rax
	movzbl	(%rbp), %edx
	orq	%rax, %rdx
	addq	$4, %rbp
	cmpl	$8, %r15d
	jg	.LBB20_14
.LBB20_15:                              # %do.body.36
	cmpq	%rdx, 2288(%rbx)
	je	.LBB20_17
# BB#16:                                # %if.then.39
	movq	%rdx, 2288(%rbx)
	orq	%rdx, 2168(%rbx)
	andq	%rdx, 2176(%rbx)
	movq	1992(%rbx), %rdi
	movq	2032(%rbx), %rsi
	callq	XSetForeground@PLT
.LBB20_17:                              # %do.end.47
	movq	2160(%rbx), %rsi
	movq	1992(%rbx), %rdi
	movq	2032(%rbx), %rdx
	movl	%r12d, %ecx
	movl	%r14d, %r8d
	callq	XDrawPoint@PLT
	xorl	%ebp, %ebp
	jmp	.LBB20_21
.LBB20_19:                              # %if.then.76
	movq	24(%rbx), %rdi
	leaq	.L.str.8(%rip), %rsi
	xorl	%eax, %eax
	callq	errprintf@PLT
	movl	$-1, %ebp
.LBB20_21:                              # %cleanup.92
	movl	%ebp, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end20:
	.size	x_copy_image, .Lfunc_end20-x_copy_image
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gx_device_X"
	.size	.L.str, 12

	.type	device_x_reloc_ptrs,@object # @device_x_reloc_ptrs
	.section	.data.rel.ro,"aw",@progbits
	.align	8
device_x_reloc_ptrs:
	.short	1                       # 0x1
	.short	0                       # 0x0
	.zero	4
	.quad	st_device_bbox
	.quad	device_x_enum_ptrs
	.size	device_x_reloc_ptrs, 24

	.type	st_device_X,@object     # @st_device_X
	.globl	st_device_X
	.align	8
st_device_X:
	.long	3216                    # 0xc90
	.zero	4
	.quad	.L.str
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	gx_device_finalize
	.quad	device_x_reloc_ptrs
	.size	st_device_X, 64

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"x11"
	.size	.L.str.1, 4

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"DeviceRGB"
	.size	.L.str.2, 10

	.type	gs_x11_device,@object   # @gs_x11_device
	.section	.data.rel.ro,"aw",@progbits
	.globl	gs_x11_device
	.align	8
gs_x11_device:
	.long	3216                    # 0xc90
	.zero	4
	.quad	0
	.quad	.L.str.1
	.quad	0
	.quad	st_device_X
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	1                       # 0x1
	.short	24                      # 0x18
	.byte	255                     # 0xff
	.zero	1
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	256                     # 0x100
	.long	256                     # 0x100
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.2
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	9792                    # 0x2640
	.long	12672                   # 0x3180
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1150287872              # float 1.152000e+03
	.long	1150287872              # float 1.152000e+03
	.long	1150287872              # float 1.152000e+03
	.long	1150287872              # float 1.152000e+03
	.zero	8
	.zero	16
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	68
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	10000000                # 0x989680
	.quad	4000000                 # 0x3d0900
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	gx_default_install
	.quad	gx_default_begin_page
	.quad	gx_default_end_page
	.quad	x_open
	.quad	x_get_initial_matrix
	.quad	x_sync
	.quad	x_output_page
	.quad	x_close
	.quad	gdev_x_map_rgb_color
	.quad	gdev_x_map_color_rgb
	.quad	x_fill_rectangle
	.quad	0
	.quad	x_copy_mono
	.quad	x_copy_color
	.quad	0
	.quad	0
	.quad	gdev_x_get_params
	.quad	gdev_x_put_params
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	x_get_page_device
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	x_strip_tile_rectangle
	.quad	0
	.quad	0
	.quad	x_begin_typed_image
	.quad	x_get_bits_rectangle
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gdev_x_finish_copydevice
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.zero	32
	.quad	0
	.long	1                       # 0x1
	.zero	16
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	0
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.long	1                       # 0x1
	.long	8                       # 0x8
	.long	1                       # 0x1
	.long	8                       # 0x8
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	0
	.zero	48
	.quad	0
	.quad	0
	.quad	0
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	0
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.long	1065353216              # float 1
	.long	0                       # float 0
	.long	0                       # float 0
	.long	1065353216              # float 1
	.long	0                       # float 0
	.long	0                       # float 0
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	8388607                 # 0x7fffff
	.long	8388607                 # 0x7fffff
	.long	4286578688              # 0xff800000
	.long	4286578688              # 0xff800000
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	-1                      # 0xffffffffffffffff
	.quad	0                       # 0x0
	.quad	0
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.zero	56
	.long	3                       # 0x3
	.long	0                       # 0x0
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	496
	.quad	0                       # 0x0
	.short	0                       # 0x0
	.zero	6
	.quad	0
	.long	128                     # 0x80
	.long	5                       # 0x5
	.quad	0
	.long	0                       # float 0
	.long	0                       # float 0
	.byte	1                       # 0x1
	.byte	1                       # 0x1
	.byte	1                       # 0x1
	.zero	1
	.long	0                       # 0x0
	.long	20000                   # 0x4e20
	.long	5000                    # 0x1388
	.zero	344
	.size	gs_x11_device, 3216

	.type	.L.str.3,@object        # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"x11alpha"
	.size	.L.str.3, 9

	.type	gs_x11alpha_device,@object # @gs_x11alpha_device
	.section	.data.rel.ro,"aw",@progbits
	.globl	gs_x11alpha_device
	.align	8
gs_x11alpha_device:
	.long	3216                    # 0xc90
	.zero	4
	.quad	0
	.quad	.L.str.3
	.quad	0
	.quad	st_device_X
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	1                       # 0x1
	.short	24                      # 0x18
	.byte	255                     # 0xff
	.zero	1
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	256                     # 0x100
	.long	256                     # 0x100
	.long	4                       # 0x4
	.long	4                       # 0x4
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.2
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	9792                    # 0x2640
	.long	12672                   # 0x3180
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1150287872              # float 1.152000e+03
	.long	1150287872              # float 1.152000e+03
	.long	1150287872              # float 1.152000e+03
	.long	1150287872              # float 1.152000e+03
	.zero	8
	.zero	16
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	68
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	10000000                # 0x989680
	.quad	4000000                 # 0x3d0900
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	gx_default_install
	.quad	gx_default_begin_page
	.quad	gx_default_end_page
	.quad	x_open
	.quad	x_get_initial_matrix
	.quad	x_sync
	.quad	x_output_page
	.quad	x_close
	.quad	gdev_x_map_rgb_color
	.quad	gdev_x_map_color_rgb
	.quad	x_fill_rectangle
	.quad	0
	.quad	x_copy_mono
	.quad	x_copy_color
	.quad	0
	.quad	0
	.quad	gdev_x_get_params
	.quad	gdev_x_put_params
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	x_get_page_device
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	x_strip_tile_rectangle
	.quad	0
	.quad	0
	.quad	x_begin_typed_image
	.quad	x_get_bits_rectangle
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gdev_x_finish_copydevice
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.zero	32
	.quad	0
	.long	1                       # 0x1
	.zero	16
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	0
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.long	1                       # 0x1
	.long	8                       # 0x8
	.long	1                       # 0x1
	.long	8                       # 0x8
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	0
	.zero	48
	.quad	0
	.quad	0
	.quad	0
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	0
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.long	1065353216              # float 1
	.long	0                       # float 0
	.long	0                       # float 0
	.long	1065353216              # float 1
	.long	0                       # float 0
	.long	0                       # float 0
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	8388607                 # 0x7fffff
	.long	8388607                 # 0x7fffff
	.long	4286578688              # 0xff800000
	.long	4286578688              # 0xff800000
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	-1                      # 0xffffffffffffffff
	.quad	0                       # 0x0
	.quad	0
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.zero	56
	.long	3                       # 0x3
	.long	0                       # 0x0
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	496
	.quad	0                       # 0x0
	.short	0                       # 0x0
	.zero	6
	.quad	0
	.long	128                     # 0x80
	.long	5                       # 0x5
	.quad	0
	.long	0                       # float 0
	.long	0                       # float 0
	.byte	1                       # 0x1
	.byte	1                       # 0x1
	.byte	1                       # 0x1
	.zero	1
	.long	0                       # 0x0
	.long	20000                   # 0x4e20
	.long	5000                    # 0x1388
	.zero	344
	.size	gs_x11alpha_device, 3216

	.type	gdev_x_box_procs,@object # @gdev_x_box_procs
	.section	.data.rel.ro.local,"aw",@progbits
	.globl	gdev_x_box_procs
	.align	8
gdev_x_box_procs:
	.quad	x_bbox_init_box
	.quad	x_bbox_get_box
	.quad	x_bbox_add_rect
	.quad	x_bbox_in_rect
	.size	gdev_x_box_procs, 32

	.type	device_x_enum_ptrs,@object # @device_x_enum_ptrs
	.section	.rodata,"a",@progbits
	.align	2
device_x_enum_ptrs:
	.short	0                       # 0x0
	.short	1840                    # 0x730
	.size	device_x_enum_ptrs, 4

	.type	.L.str.4,@object        # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"./devices/gdevx.c"
	.size	.L.str.4, 18

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"x_copy_mono: can't allocate pixmap\n"
	.size	.L.str.5, 36

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"x_copy_mono: can't allocate GC\n"
	.size	.L.str.6, 32

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"alt_put_image: unimplemented function.\n"
	.size	.L.str.7, 40

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"XInitImage failed in x_copy_image.\n"
	.size	.L.str.8, 36


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
