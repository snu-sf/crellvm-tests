	.text
	.file	"gdevxini.bc"
	.globl	x_catch_free_colors
	.align	16, 0x90
	.type	x_catch_free_colors,@function
x_catch_free_colors:                    # @x_catch_free_colors
	.cfi_startproc
# BB#0:                                 # %entry
	movzbl	33(%rsi), %eax
	cmpl	$88, %eax
	jne	.LBB0_2
# BB#1:                                 # %return
	xorl	%eax, %eax
	retq
.LBB0_2:                                # %if.end
	movq	x_error_handler.1(%rip), %rax
	jmpq	*%rax                   # TAILCALL
.Lfunc_end0:
	.size	x_catch_free_colors, .Lfunc_end0-x_catch_free_colors
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI1_0:
	.long	1116733440              # float 72
.LCPI1_2:
	.long	1150287872              # float 1152
.LCPI1_4:
	.long	1117126656              # float 75
.LCPI1_5:
	.long	1106247680              # float 30
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI1_1:
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_3:
	.quad	4627842682090579558     # double 25.399999999999999
.LCPI1_6:
	.quad	4606732058837280358     # double 0.94999999999999996
	.text
	.globl	gdev_x_open
	.align	16, 0x90
	.type	gdev_x_open,@function
gdev_x_open:                            # @gdev_x_open
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp2:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp3:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp4:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp5:
	.cfi_def_cfa_offset 56
	subq	$792, %rsp              # imm = 0x318
.Ltmp6:
	.cfi_def_cfa_offset 848
.Ltmp7:
	.cfi_offset %rbx, -56
.Ltmp8:
	.cfi_offset %r12, -48
.Ltmp9:
	.cfi_offset %r13, -40
.Ltmp10:
	.cfi_offset %r14, -32
.Ltmp11:
	.cfi_offset %r15, -24
.Ltmp12:
	.cfi_offset %rbp, -16
	movq	%rdi, %r13
	movl	$0, 428(%rsp)
	xorl	%edi, %edi
	callq	XOpenDisplay@PLT
	movq	%rax, 1992(%r13)
	testq	%rax, %rax
	je	.LBB1_1
# BB#2:                                 # %if.end
	leaq	2160(%r13), %r14
	movq	$0, 2160(%r13)
	leaq	.L.str.3(%rip), %rdi
	callq	getenv@PLT
	movq	%rax, %rcx
	testq	%rcx, %rcx
	je	.LBB1_6
# BB#3:                                 # %if.then.9
	leaq	2024(%r13), %rdx
	leaq	.L.str.4(%rip), %rsi
	xorl	%eax, %eax
	movq	%rcx, %rdi
	movq	%r14, %rcx
	callq	__isoc99_sscanf@PLT
	movl	%eax, 2056(%r13)
	testl	%eax, %eax
	je	.LBB1_4
.LBB1_6:                                # %if.end.20
	movq	2040(%r13), %rsi
	testq	%rsi, %rsi
	je	.LBB1_9
# BB#7:                                 # %if.then.22
	movq	%rsi, 2024(%r13)
	movq	1992(%r13), %rdi
	leaq	288(%rsp), %rdx
	callq	XGetWindowAttributes@PLT
	xorl	%r12d, %r12d
	testl	%eax, %eax
	movl	$0, %r15d
	je	.LBB1_46
# BB#8:                                 # %if.then.29
	movq	416(%rsp), %rax
	movq	%rax, 2000(%r13)
	movq	312(%rsp), %rax
	movq	%rax, 456(%rsp)
	movq	368(%rsp), %rax
	movq	%rax, 2016(%r13)
	movq	296(%rsp), %r12
	movq	%r12, %r15
	shrq	$32, %r15
	jmp	.LBB1_46
.LBB1_1:                                # %if.then
	leaq	.L.str(%rip), %rdi
	callq	getenv@PLT
	movq	%rax, %rbp
	movq	24(%r13), %r14
	callq	gs_program_name@PLT
	movq	%rax, %rbx
	callq	gs_revision_number@PLT
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident@PLT
	movq	24(%r13), %rdi
	testq	%rbp, %rbp
	leaq	.L.str.2(%rip), %rdx
	cmovneq	%rbp, %rdx
	leaq	.L.str.1(%rip), %rsi
	xorl	%eax, %eax
	callq	errprintf@PLT
	movl	$-12, %ebp
	jmp	.LBB1_90
.LBB1_9:                                # %if.else.32
	cmpl	$0, 2056(%r13)
	je	.LBB1_39
# BB#10:                                # %if.then.35
	movq	1992(%r13), %rdi
	leaq	.L.str.3(%rip), %rsi
	xorl	%edx, %edx
	callq	XInternAtom@PLT
	movq	%rax, %rbp
	movq	1992(%r13), %rdi
	movq	2024(%r13), %rsi
	leaq	288(%rsp), %rdx
	callq	XGetWindowAttributes@PLT
	testl	%eax, %eax
	je	.LBB1_12
# BB#11:                                # %if.then.44
	movq	416(%rsp), %rax
	movq	%rax, 2000(%r13)
	movq	312(%rsp), %rax
	movq	%rax, 456(%rsp)
	movq	368(%rsp), %rax
	movq	%rax, 2016(%r13)
	movq	296(%rsp), %rax
	movl	%eax, 832(%r13)
	shrq	$32, %rax
	movl	%eax, 836(%r13)
.LBB1_12:                               # %if.end.55
	movq	1992(%r13), %rdi
	movq	2024(%r13), %rsi
	cmpq	$0, 2160(%r13)
	setne	%al
	movzbl	%al, %r9d
	leaq	264(%rsp), %rax
	movq	%rax, 40(%rsp)
	leaq	272(%rsp), %rax
	movq	%rax, 32(%rsp)
	leaq	96(%rsp), %rax
	movq	%rax, 24(%rsp)
	leaq	284(%rsp), %rax
	movq	%rax, 16(%rsp)
	leaq	136(%rsp), %rax
	movq	%rax, 8(%rsp)
	movq	$31, (%rsp)
	xorl	%ecx, %ecx
	movl	$256, %r8d              # imm = 0x100
	movq	%rbp, %rdx
	callq	XGetWindowProperty@PLT
	testl	%eax, %eax
	jne	.LBB1_35
# BB#13:                                # %if.end.55
	cmpq	$31, 136(%rsp)
	jne	.LBB1_35
# BB#14:                                # %if.then.65
	movl	$0, 244(%rsp)
	movl	$0, 240(%rsp)
	movl	$0, 236(%rsp)
	movl	$0, 232(%rsp)
	movq	264(%rsp), %rdi
	leaq	2048(%r13), %rbp
	leaq	884(%r13), %rbx
	leaq	888(%r13), %r15
	leaq	232(%rsp), %rax
	movq	%rax, 56(%rsp)
	leaq	236(%rsp), %rax
	movq	%rax, 48(%rsp)
	leaq	240(%rsp), %rax
	movq	%rax, 40(%rsp)
	leaq	244(%rsp), %rax
	movq	%rax, 32(%rsp)
	movq	%r15, 24(%rsp)
	movq	%rbx, 16(%rsp)
	leaq	248(%rsp), %rax
	movq	%rax, 8(%rsp)
	leaq	252(%rsp), %rax
	movq	%rax, (%rsp)
	leaq	.L.str.6(%rip), %rsi
	leaq	228(%rsp), %rcx
	leaq	260(%rsp), %r8
	leaq	256(%rsp), %r9
	xorl	%eax, %eax
	movq	%rbp, %rdx
	callq	__isoc99_sscanf@PLT
	cltq
	movq	%rax, 96(%rsp)
	andl	$-5, %eax
	cmpl	$8, %eax
	jne	.LBB1_15
# BB#18:                                # %if.end.80
	movq	(%r14), %rsi
	testq	%rsi, %rsi
	je	.LBB1_23
# BB#19:                                # %land.lhs.true.83
	cmpq	$0, (%rbp)
	je	.LBB1_21
# BB#20:                                # %if.then.86
	movq	24(%r13), %rbx
	callq	gs_program_name@PLT
	movq	%rax, %rbp
	callq	gs_revision_number@PLT
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident@PLT
	movq	24(%r13), %rdi
	leaq	.L.str.8(%rip), %rsi
	xorl	%ebx, %ebx
	xorl	%eax, %eax
	callq	errprintf@PLT
	movl	$-15, %ebp
	jmp	.LBB1_16
.LBB1_4:                                # %if.then.13
	movq	24(%r13), %rbx
	callq	gs_program_name@PLT
	movq	%rax, %rbp
	callq	gs_revision_number@PLT
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident@PLT
	movq	24(%r13), %rdi
	leaq	.L.str.5(%rip), %rsi
	jmp	.LBB1_5
.LBB1_39:                               # %if.else.227
	movq	1992(%r13), %rdi
	movslq	224(%rdi), %rax
	movq	232(%rdi), %rcx
	shlq	$7, %rax
	leaq	(%rcx,%rax), %rdx
	movq	%rdx, 2000(%r13)
	movq	64(%rcx,%rax), %rdx
	movq	%rdx, 456(%rsp)
	movq	80(%rcx,%rax), %rax
	movq	%rax, 2016(%r13)
	xorl	%r12d, %r12d
	cmpl	$4, 16(%rdx)
	je	.LBB1_45
# BB#40:                                # %if.then.239
	movl	224(%rdi), %ebp
	leaq	456(%rsp), %r8
	movl	$24, %edx
	movl	$4, %ecx
	movl	%ebp, %esi
	callq	XMatchVisualInfo@PLT
	testl	%eax, %eax
	jne	.LBB1_44
# BB#41:                                # %lor.lhs.false.245
	movq	1992(%r13), %rdi
	leaq	456(%rsp), %r8
	movl	$32, %edx
	movl	$4, %ecx
	movl	%ebp, %esi
	callq	XMatchVisualInfo@PLT
	testl	%eax, %eax
	jne	.LBB1_44
# BB#42:                                # %lor.lhs.false.249
	movq	1992(%r13), %rdi
	leaq	456(%rsp), %r8
	movl	$16, %edx
	movl	$4, %ecx
	movl	%ebp, %esi
	callq	XMatchVisualInfo@PLT
	testl	%eax, %eax
	jne	.LBB1_44
# BB#43:                                # %lor.lhs.false.253
	movq	1992(%r13), %rdi
	leaq	456(%rsp), %r8
	movl	$15, %edx
	movl	$4, %ecx
	movl	%ebp, %esi
	callq	XMatchVisualInfo@PLT
	testl	%eax, %eax
	movl	$0, %r15d
	je	.LBB1_46
.LBB1_44:                               # %if.then.257
	movq	1992(%r13), %rdi
	movslq	224(%rdi), %rax
	movq	232(%rdi), %rcx
	shlq	$7, %rax
	movq	16(%rcx,%rax), %rsi
	movq	456(%rsp), %rdx
	xorl	%r12d, %r12d
	xorl	%ecx, %ecx
	callq	XCreateColormap@PLT
	movq	%rax, 2016(%r13)
.LBB1_45:                               # %if.end.272
	xorl	%r15d, %r15d
	jmp	.LBB1_46
.LBB1_35:                               # %if.else.206
	cmpq	$0, 2040(%r13)
                                        # implicit-def: EBP
	jne	.LBB1_37
# BB#36:                                # %if.then.210
	movq	24(%r13), %rbx
	callq	gs_program_name@PLT
	movq	%rax, %rbp
	callq	gs_revision_number@PLT
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident@PLT
	movq	24(%r13), %rdi
	leaq	.L.str.7(%rip), %rsi
	xorl	%ebx, %ebx
	xorl	%eax, %eax
	callq	errprintf@PLT
	movl	$-12, %ebp
	jmp	.LBB1_38
.LBB1_15:                               # %if.then.74
	movq	24(%r13), %rbx
	callq	gs_program_name@PLT
	movq	%rax, %rbp
	callq	gs_revision_number@PLT
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident@PLT
	movq	24(%r13), %rdi
	leaq	.L.str.7(%rip), %rsi
	xorl	%ebx, %ebx
	xorl	%eax, %eax
	callq	errprintf@PLT
	movl	$-12, %ebp
	jmp	.LBB1_16
.LBB1_21:                               # %if.then.95
	movq	1992(%r13), %rdi
	leaq	192(%rsp), %rax
	movq	%rax, 16(%rsp)
	leaq	196(%rsp), %rax
	movq	%rax, 8(%rsp)
	leaq	200(%rsp), %rax
	movq	%rax, (%rsp)
	leaq	216(%rsp), %rdx
	leaq	212(%rsp), %rcx
	leaq	208(%rsp), %r8
	leaq	204(%rsp), %r9
	callq	XGetGeometry@PLT
	testl	%eax, %eax
	je	.LBB1_23
# BB#22:                                # %if.then.102
	movl	204(%rsp), %eax
	movl	%eax, 832(%r13)
	movl	200(%rsp), %eax
	movl	%eax, 836(%r13)
.LBB1_23:                               # %if.end.106
	movss	(%rbx), %xmm1           # xmm1 = mem[0],zero,zero,zero
	movss	.LCPI1_0(%rip), %xmm2   # xmm2 = mem[0],zero,zero,zero
	divss	%xmm2, %xmm1
	movss	(%r15), %xmm0           # xmm0 = mem[0],zero,zero,zero
	divss	%xmm2, %xmm0
	movl	228(%rsp), %eax
	cmpl	$179, %eax
	jg	.LBB1_28
# BB#24:                                # %if.end.106
	testl	%eax, %eax
	jne	.LBB1_25
# BB#33:                                # %sw.bb
	movss	%xmm1, 2072(%r13)
	movl	$0, 2076(%r13)
	movl	$0, 2080(%r13)
	movaps	.LCPI1_1(%rip), %xmm2   # xmm2 = [2147483648,2147483648,2147483648,2147483648]
	xorps	%xmm0, %xmm2
	movss	%xmm2, 2084(%r13)
	xorl	%eax, %eax
	subl	260(%rsp), %eax
	xorps	%xmm2, %xmm2
	cvtsi2ssl	%eax, %xmm2
	mulss	%xmm1, %xmm2
	movss	%xmm2, 2088(%r13)
	cvtsi2ssl	248(%rsp), %xmm1
	jmp	.LBB1_31
.LBB1_28:                               # %if.end.106
	cmpl	$180, %eax
	jne	.LBB1_29
# BB#34:                                # %sw.bb.144
	movaps	.LCPI1_1(%rip), %xmm2   # xmm2 = [2147483648,2147483648,2147483648,2147483648]
	xorps	%xmm1, %xmm2
	movss	%xmm2, 2072(%r13)
	movl	$0, 2076(%r13)
	movl	$0, 2080(%r13)
	movss	%xmm0, 2084(%r13)
	xorps	%xmm2, %xmm2
	cvtsi2ssl	252(%rsp), %xmm2
	mulss	%xmm1, %xmm2
	movss	%xmm2, 2088(%r13)
	xorl	%eax, %eax
	subl	256(%rsp), %eax
	cvtsi2ssl	%eax, %xmm1
	jmp	.LBB1_31
.LBB1_25:                               # %if.end.106
	cmpl	$90, %eax
	jne	.LBB1_32
# BB#26:                                # %sw.bb.125
	movl	$0, 2072(%r13)
	movss	%xmm0, 2076(%r13)
	movss	%xmm1, 2080(%r13)
	movl	$0, 2084(%r13)
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	subl	256(%rsp), %ecx
	cvtsi2ssl	%ecx, %xmm2
	mulss	%xmm1, %xmm2
	movss	%xmm2, 2088(%r13)
	subl	260(%rsp), %eax
	cvtsi2ssl	%eax, %xmm1
	jmp	.LBB1_31
.LBB1_29:                               # %if.end.106
	cmpl	$270, %eax              # imm = 0x10E
	jne	.LBB1_32
# BB#30:                                # %sw.bb.163
	movl	$0, 2072(%r13)
	movaps	.LCPI1_1(%rip), %xmm2   # xmm2 = [2147483648,2147483648,2147483648,2147483648]
	movaps	%xmm0, %xmm3
	xorps	%xmm2, %xmm3
	movss	%xmm3, 2076(%r13)
	xorps	%xmm1, %xmm2
	movss	%xmm2, 2080(%r13)
	movl	$0, 2084(%r13)
	xorps	%xmm2, %xmm2
	cvtsi2ssl	248(%rsp), %xmm2
	mulss	%xmm1, %xmm2
	movss	%xmm2, 2088(%r13)
	cvtsi2ssl	252(%rsp), %xmm1
.LBB1_31:                               # %sw.epilog
	mulss	%xmm0, %xmm1
	movss	%xmm1, 2092(%r13)
.LBB1_32:                               # %sw.epilog
	movl	260(%rsp), %eax
	subl	244(%rsp), %eax
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	movss	%xmm0, 864(%r13)
	movl	256(%rsp), %eax
	subl	240(%rsp), %eax
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	movss	%xmm0, 868(%r13)
	movl	236(%rsp), %eax
	addl	252(%rsp), %eax
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	movss	%xmm0, 872(%r13)
	movl	232(%rsp), %eax
	addl	248(%rsp), %eax
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	movss	%xmm0, 876(%r13)
	movl	$1, 880(%r13)
	movb	$1, %bl
                                        # implicit-def: EBP
.LBB1_16:                               # %cleanup
	testb	%bl, %bl
	je	.LBB1_17
.LBB1_37:                               # %if.end.217
	movb	$1, %bl
	jmp	.LBB1_38
.LBB1_17:
	xorl	%ebx, %ebx
.LBB1_38:                               # %cleanup.218
	xorl	%r12d, %r12d
	testb	%bl, %bl
	movl	$0, %r15d
	je	.LBB1_90
.LBB1_46:                               # %if.end.272
	movq	456(%rsp), %rdi
	callq	XVisualIDFromVisual@PLT
	movq	%rax, 464(%rsp)
	movq	1992(%r13), %rdi
	leaq	456(%rsp), %rdx
	leaq	452(%rsp), %rcx
	movl	$1, %esi
	callq	XGetVisualInfo@PLT
	movq	%rax, 2008(%r13)
	testq	%rax, %rax
	je	.LBB1_47
# BB#48:                                # %if.end.286
	movq	x_catch_free_colors@GOTPCREL(%rip), %rdi
	callq	XSetErrorHandler@PLT
	movq	%rax, x_error_handler.1(%rip)
	callq	XtToolkitInitialize@PLT
	callq	XtCreateApplicationContext@PLT
	movq	%rax, %r14
	movq	gdev_x_fallback_resources@GOTPCREL(%rip), %rsi
	movq	%r14, %rdi
	callq	XtAppSetFallbackResources@PLT
	leaq	428(%rsp), %rax
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	leaq	.L.str.10(%rip), %rdx
	leaq	.L.str.11(%rip), %rbx
	xorl	%esi, %esi
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movq	%r14, %rdi
	movq	%rbx, %rcx
	callq	XtOpenDisplay@PLT
	movq	applicationShellWidgetClass@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rdx
	xorl	%edi, %edi
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movq	%rbx, %rsi
	movq	%rax, %rbx
	movq	%rbx, %rcx
	callq	XtAppCreateShell@PLT
	movq	%rax, 88(%rsp)          # 8-byte Spill
	movq	gdev_x_resource_count@GOTPCREL(%rip), %rcx
	movl	(%rcx), %ecx
	movq	gdev_x_resources@GOTPCREL(%rip), %rdx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movq	%rax, %rdi
	movq	%r13, %rsi
	callq	XtGetApplicationResources@PLT
	movq	2304(%r13), %rax
	movq	%rax, 432(%rsp)
	movq	1992(%r13), %rdi
	movslq	224(%rdi), %rax
	movq	232(%rdi), %rcx
	shlq	$7, %rax
	movq	80(%rcx,%rax), %rsi
	leaq	432(%rsp), %rbp
	movq	%rbp, %rdx
	callq	XQueryColor@PLT
	movq	1992(%r13), %rdi
	movq	2016(%r13), %rsi
	movq	%rbp, %rdx
	callq	XAllocColor@PLT
	movq	432(%rsp), %rax
	movq	%rax, 2304(%r13)
	movq	2296(%r13), %rax
	movq	%rax, 432(%rsp)
	movq	1992(%r13), %rdi
	movslq	224(%rdi), %rax
	movq	232(%rdi), %rcx
	shlq	$7, %rax
	movq	80(%rcx,%rax), %rsi
	movq	%rbp, %rdx
	callq	XQueryColor@PLT
	movq	1992(%r13), %rdi
	movq	2016(%r13), %rsi
	movq	%rbp, %rdx
	callq	XAllocColor@PLT
	movq	432(%rsp), %rax
	movq	%rax, 2296(%r13)
	movq	%r13, %rdi
	callq	gdev_x_setup_colors@PLT
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_49
# BB#50:                                # %if.end.326
	movq	%r13, %rdi
	callq	check_device_separable@PLT
	cmpl	$0, 2056(%r13)
	jne	.LBB1_84
# BB#51:                                # %if.then.329
	movss	884(%r13), %xmm1        # xmm1 = mem[0],zero,zero,zero
	movss	888(%r13), %xmm2        # xmm2 = mem[0],zero,zero,zero
	ucomiss	.LCPI1_2(%rip), %xmm1
	jne	.LBB1_52
	jnp	.LBB1_54
.LBB1_52:                               # %lor.lhs.false.334
	movss	.LCPI1_2(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm2
	movaps	%xmm0, %xmm2
	jne	.LBB1_53
	jnp	.LBB1_54
.LBB1_53:                               # %lor.lhs.false.334.if.end.475_crit_edge
	movl	832(%r13), %edx
	movl	836(%r13), %ecx
	jmp	.LBB1_75
.LBB1_47:                               # %if.then.280
	movq	24(%r13), %rbx
	callq	gs_program_name@PLT
	movq	%rax, %rbp
	callq	gs_revision_number@PLT
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident@PLT
	movq	24(%r13), %rdi
	leaq	.L.str.9(%rip), %rsi
.LBB1_5:                                # %cleanup.602
	xorl	%eax, %eax
	callq	errprintf@PLT
	movl	$-12, %ebp
	jmp	.LBB1_90
.LBB1_49:                               # %if.then.323
	movq	1992(%r13), %rdi
	callq	XCloseDisplay@PLT
	jmp	.LBB1_90
.LBB1_54:                               # %if.then.339
	movss	%xmm2, 64(%rsp)         # 4-byte Spill
	movss	%xmm1, 68(%rsp)         # 4-byte Spill
	xorps	%xmm0, %xmm0
	cvtsi2ssl	832(%r13), %xmm0
	movss	%xmm0, 72(%rsp)         # 4-byte Spill
	xorps	%xmm0, %xmm0
	cvtsi2ssl	836(%r13), %xmm0
	movss	%xmm0, 76(%rsp)         # 4-byte Spill
	movq	2000(%r13), %rax
	movl	24(%rax), %ecx
	movl	%ecx, 80(%rsp)          # 4-byte Spill
	movl	28(%rax), %ebp
	leaq	.L.str.21(%rip), %rsi
	movq	%r13, %rdi
	callq	x_get_win_property
	testq	%rax, %rax
	jne	.LBB1_56
# BB#55:                                # %lor.lhs.false.i
	leaq	.L.str.22(%rip), %rsi
	movq	%r13, %rdi
	callq	x_get_win_property
	testq	%rax, %rax
	je	.LBB1_57
.LBB1_56:                               # %if.then.i
	movl	16(%rax), %ecx
	movl	%ecx, 80(%rsp)          # 4-byte Spill
	movl	24(%rax), %ebp
	movq	%rax, %rdi
	callq	XFree@PLT
.LBB1_57:                               # %x_get_work_area.exit
	movss	72(%rsp), %xmm5         # 4-byte Reload
                                        # xmm5 = mem[0],zero,zero,zero
	divss	68(%rsp), %xmm5         # 4-byte Folded Reload
	movss	76(%rsp), %xmm4         # 4-byte Reload
                                        # xmm4 = mem[0],zero,zero,zero
	divss	64(%rsp), %xmm4         # 4-byte Folded Reload
	movss	2848(%r13), %xmm1       # xmm1 = mem[0],zero,zero,zero
	xorps	%xmm0, %xmm0
	ucomiss	%xmm0, %xmm1
	jne	.LBB1_58
	jnp	.LBB1_60
.LBB1_58:                               # %x_get_work_area.exit.if.else.410_crit_edge
	movl	2852(%r13), %eax
	jmp	.LBB1_59
.LBB1_60:                               # %land.lhs.true.357
	movss	2852(%r13), %xmm2       # xmm2 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm2
	jne	.LBB1_61
	jnp	.LBB1_62
.LBB1_61:                               # %land.lhs.true.357.if.else.410_crit_edge
	movd	%xmm2, %eax
.LBB1_59:                               # %if.else.410
	movl	80(%rsp), %ecx          # 4-byte Reload
	movss	%xmm1, 884(%r13)
	movl	%eax, 888(%r13)
	movd	%eax, %xmm0
	jmp	.LBB1_70
.LBB1_62:                               # %if.then.361
	movq	2000(%r13), %rdx
	movl	24(%rdx), %ecx
	movl	28(%rdx), %eax
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%ecx, %xmm0
	movsd	.LCPI1_3(%rip), %xmm1   # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	xorps	%xmm2, %xmm2
	cvtsi2sdl	32(%rdx), %xmm2
	divsd	%xmm2, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	xorps	%xmm2, %xmm2
	cvtsi2sdl	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	xorps	%xmm1, %xmm1
	cvtsi2sdl	36(%rdx), %xmm1
	divsd	%xmm1, %xmm2
	xorps	%xmm1, %xmm1
	cvtsd2ss	%xmm2, %xmm1
	minss	%xmm1, %xmm0
	movss	.LCPI1_5(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jbe	.LBB1_64
# BB#63:
	movss	.LCPI1_4(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	movl	80(%rsp), %ecx          # 4-byte Reload
	jmp	.LBB1_69
.LBB1_64:                               # %while.cond.preheader
	addl	$-32, %ecx
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%ecx, %xmm1
	addl	$-32, %eax
	xorps	%xmm2, %xmm2
	cvtsi2ssl	%eax, %xmm2
	movaps	%xmm5, %xmm3
	mulss	%xmm0, %xmm3
	ucomiss	%xmm1, %xmm3
	ja	.LBB1_65
# BB#66:                                # %while.cond.preheader
	movaps	%xmm4, %xmm3
	mulss	%xmm0, %xmm3
	ucomiss	%xmm2, %xmm3
	movl	80(%rsp), %ecx          # 4-byte Reload
	jbe	.LBB1_69
	jmp	.LBB1_67
.LBB1_65:
	movl	80(%rsp), %ecx          # 4-byte Reload
.LBB1_67:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	cvtss2sd	%xmm0, %xmm0
	mulsd	.LCPI1_6(%rip), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movaps	%xmm5, %xmm3
	mulss	%xmm0, %xmm3
	ucomiss	%xmm1, %xmm3
	movaps	%xmm4, %xmm3
	mulss	%xmm0, %xmm3
	ja	.LBB1_67
# BB#68:                                # %while.body
                                        #   in Loop: Header=BB1_67 Depth=1
	ucomiss	%xmm2, %xmm3
	ja	.LBB1_67
.LBB1_69:                               # %if.end.405
	movss	%xmm0, 884(%r13)
	movss	%xmm0, 888(%r13)
	movaps	%xmm0, %xmm1
.LBB1_70:                               # %if.end.417
	movl	832(%r13), %edx
	cmpl	%ecx, %edx
	jle	.LBB1_72
# BB#71:                                # %if.then.421
	mulss	%xmm1, %xmm5
	xorps	%xmm2, %xmm2
	cvtsi2ssl	%ecx, %xmm2
	minss	%xmm2, %xmm5
	cvttss2si	%xmm5, %edx
	movl	%edx, 832(%r13)
.LBB1_72:                               # %if.end.438
	movl	836(%r13), %ecx
	cmpl	%ebp, %ecx
	jle	.LBB1_74
# BB#73:                                # %if.then.442
	mulss	%xmm0, %xmm4
	xorps	%xmm2, %xmm2
	cvtsi2ssl	%ebp, %xmm2
	minss	%xmm2, %xmm4
	cvttss2si	%xmm4, %ecx
	movl	%ecx, 836(%r13)
.LBB1_74:                               # %if.end.459
	xorps	%xmm2, %xmm2
	cvtsi2ssl	%edx, %xmm2
	divss	%xmm1, %xmm2
	movss	.LCPI1_0(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm2
	movss	%xmm2, 856(%r13)
	xorps	%xmm2, %xmm2
	cvtsi2ssl	%ecx, %xmm2
	divss	%xmm0, %xmm2
	mulss	%xmm1, %xmm2
	movss	%xmm2, 860(%r13)
.LBB1_75:                               # %if.end.475
	movl	$0, 720(%rsp)
	movl	$0, 724(%rsp)
	movl	%edx, 728(%rsp)
	movl	%ecx, 732(%rsp)
	movq	$0, 712(%rsp)
	cmpq	$0, 2824(%r13)
	je	.LBB1_78
# BB#76:                                # %if.then.484
	leaq	.L.str.12(%rip), %rsi
	leaq	96(%rsp), %rbp
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	xorl	%eax, %eax
	movq	%rbp, %rdi
	callq	gs_sprintf@PLT
	movq	1992(%r13), %rdi
	movl	224(%rdi), %esi
	movq	2824(%r13), %rdx
	movzwl	2816(%r13), %r8d
	leaq	784(%rsp), %rax
	movq	%rax, 32(%rsp)
	leaq	732(%rsp), %rax
	movq	%rax, 24(%rsp)
	leaq	728(%rsp), %rax
	movq	%rax, 16(%rsp)
	leaq	724(%rsp), %rax
	movq	%rax, 8(%rsp)
	leaq	720(%rsp), %rax
	movq	%rax, (%rsp)
	leaq	712(%rsp), %r9
	movq	%rbp, %rcx
	callq	XWMGeometry@PLT
	testb	$3, %al
	je	.LBB1_78
# BB#77:                                # %if.then.502
	orb	$1, 712(%rsp)
.LBB1_78:                               # %if.end.505
	movq	%rbx, 80(%rsp)          # 8-byte Spill
	leaq	2072(%r13), %rsi
	movq	%r13, %rdi
	callq	gx_default_get_initial_matrix@PLT
	testl	%r15d, %r15d
	je	.LBB1_82
# BB#79:                                # %if.end.505
	testl	%r12d, %r12d
	je	.LBB1_82
# BB#80:                                # %if.end.505
	movq	2040(%r13), %rax
	testq	%rax, %rax
	je	.LBB1_82
# BB#81:                                # %if.then.516
	movl	%r12d, 832(%r13)
	movl	%r15d, 836(%r13)
	cvtsi2ssl	%r15d, %xmm0
	movss	%xmm0, 2092(%r13)
	jmp	.LBB1_83
.LBB1_82:                               # %if.else.523
	movq	$32768, 360(%rsp)       # imm = 0x8000
	movq	2296(%r13), %rax
	movq	%rax, 296(%rsp)
	movq	2808(%r13), %rax
	movq	%rax, 312(%rsp)
	movq	2016(%r13), %rax
	movq	%rax, 384(%rsp)
	movq	1992(%r13), %rdi
	movq	2000(%r13), %rax
	movq	16(%rax), %rsi
	movq	720(%rsp), %rdx
	movq	%rdx, %rcx
	shrq	$32, %rcx
	movl	832(%r13), %r8d
	movl	836(%r13), %r9d
	movzwl	2816(%r13), %r10d
	movq	2008(%r13), %rbp
	movl	20(%rbp), %ebx
	movq	(%rbp), %rbp
	leaq	288(%rsp), %rax
	movq	%rax, 40(%rsp)
	movq	%rbp, 24(%rsp)
	movl	%ebx, 8(%rsp)
	movl	%r10d, (%rsp)
	movq	$10250, 32(%rsp)        # imm = 0x280A
	movl	$1, 16(%rsp)
	callq	XCreateWindow@PLT
	movq	%rax, 2024(%r13)
	movq	1992(%r13), %rdi
	leaq	.L.str.10(%rip), %rdx
	movq	%rax, %rsi
	callq	XStoreName@PLT
	movq	1992(%r13), %rdi
	movq	2024(%r13), %rsi
	leaq	712(%rsp), %rdx
	callq	XSetWMNormalHints@PLT
	movq	$1, 136(%rsp)
	movl	$0, 144(%rsp)
	movq	1992(%r13), %rdi
	movq	2024(%r13), %rsi
	leaq	136(%rsp), %rdx
	callq	XSetWMHints@PLT
.LBB1_83:                               # %if.end.551
	movq	80(%rsp), %rbx          # 8-byte Reload
.LBB1_84:                               # %if.end.552
	movq	88(%rsp), %rdi          # 8-byte Reload
	callq	XtDestroyWidget@PLT
	movq	%rbx, %rdi
	callq	XtCloseDisplay@PLT
	movq	%r14, %rdi
	callq	XtDestroyApplicationContext@PLT
	movq	$0, 2208(%r13)
	movq	$0, 2224(%r13)
	movl	$0, 2268(%r13)
	movl	$3, 2264(%r13)
	movq	$0, 2272(%r13)
	movq	1992(%r13), %rdi
	movq	2024(%r13), %rsi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	XCreateGC@PLT
	movq	%rax, 2032(%r13)
	movq	1992(%r13), %rdi
	movl	$3, %edx
	movq	%rax, %rsi
	callq	XSetFunction@PLT
	movq	1992(%r13), %rdi
	movq	2032(%r13), %rsi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movl	$1, %r8d
	xorl	%r9d, %r9d
	callq	XSetLineAttributes@PLT
	movq	%r13, %rdi
	callq	gdev_x_clear_window@PLT
	cmpl	$0, 2056(%r13)
	je	.LBB1_85
# BB#88:                                # %if.else.584
	movl	$1, 376(%rsp)
	movq	1992(%r13), %rdi
	movq	2000(%r13), %rax
	movq	16(%rax), %rsi
	leaq	288(%rsp), %rax
	movq	%rax, 40(%rsp)
	movq	$512, 32(%rsp)          # imm = 0x200
	movq	$0, 24(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 8(%rsp)
	movl	$0, (%rsp)
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movl	$1, %r8d
	movl	$1, %r9d
	callq	XCreateWindow@PLT
	movq	%rax, 2064(%r13)
	movq	1992(%r13), %rdi
	leaq	.L.str.13(%rip), %rsi
	xorl	%edx, %edx
	callq	XInternAtom@PLT
	movq	%rax, 2096(%r13)
	movq	1992(%r13), %rdi
	leaq	.L.str.14(%rip), %rsi
	xorl	%edx, %edx
	callq	XInternAtom@PLT
	movq	%rax, 2104(%r13)
	movq	1992(%r13), %rdi
	leaq	.L.str.15(%rip), %rsi
	xorl	%edx, %edx
	callq	XInternAtom@PLT
	movq	%rax, 2112(%r13)
	jmp	.LBB1_89
.LBB1_85:                               # %if.then.565
	movq	1992(%r13), %rdi
	movq	2024(%r13), %rsi
	callq	XMapWindow@PLT
	movq	1992(%r13), %rdi
	xorl	%esi, %esi
	callq	XSync@PLT
	cmpq	$0, 2040(%r13)
	jne	.LBB1_87
# BB#86:                                # %if.then.574
	movq	1992(%r13), %rdi
	leaq	520(%rsp), %rsi
	callq	XNextEvent@PLT
.LBB1_87:                               # %if.end.577
	movq	1992(%r13), %rdi
	movq	2032(%r13), %rsi
	xorl	%edx, %edx
	callq	XSetGraphicsExposures@PLT
	movq	1992(%r13), %rdi
	movq	2024(%r13), %rsi
	xorl	%edx, %edx
	callq	XSelectInput@PLT
.LBB1_89:                               # %if.end.595
	movq	2024(%r13), %rsi
	movq	1992(%r13), %rdi
	movq	2008(%r13), %rax
	movl	20(%rax), %r8d
	movl	$1, %edx
	movl	$1, %ecx
	callq	XCreatePixmap@PLT
	movq	%rax, 2216(%r13)
	xorl	%ebp, %ebp
.LBB1_90:                               # %cleanup.602
	movl	%ebp, %eax
	addq	$792, %rsp              # imm = 0x318
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gdev_x_open, .Lfunc_end1-gdev_x_open
	.cfi_endproc

	.globl	gdev_x_clear_window
	.align	16, 0x90
	.type	gdev_x_clear_window,@function
gdev_x_clear_window:                    # @gdev_x_clear_window
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
	pushq	%r12
.Ltmp16:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp17:
	.cfi_def_cfa_offset 48
	subq	$16, %rsp
.Ltmp18:
	.cfi_def_cfa_offset 64
.Ltmp19:
	.cfi_offset %rbx, -48
.Ltmp20:
	.cfi_offset %r12, -40
.Ltmp21:
	.cfi_offset %r14, -32
.Ltmp22:
	.cfi_offset %r15, -24
.Ltmp23:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	cmpl	$0, 2056(%rbx)
	jne	.LBB2_9
# BB#1:                                 # %if.then
	cmpb	$0, 2856(%rbx)
	movq	2048(%rbx), %rsi
	je	.LBB2_7
# BB#2:                                 # %if.then.2
	testq	%rsi, %rsi
	jne	.LBB2_9
# BB#3:                                 # %if.then.3
	leaq	x_catch_alloc(%rip), %rdi
	callq	XSetErrorHandler@PLT
	movq	%rax, x_error_handler.2(%rip)
	movb	$0, x_error_handler.0(%rip)
	movq	1992(%rbx), %rdi
	movq	2024(%rbx), %rsi
	movl	832(%rbx), %edx
	movl	836(%rbx), %ecx
	movq	2008(%rbx), %rax
	movl	20(%rax), %r8d
	callq	XCreatePixmap@PLT
	movq	%rax, 2048(%rbx)
	movq	1992(%rbx), %rdi
	xorl	%esi, %esi
	callq	XSync@PLT
	movzbl	x_error_handler.0(%rip), %eax
	andl	$1, %eax
	cmpl	$1, %eax
	jne	.LBB2_6
# BB#4:                                 # %if.then.9
	movb	$0, 2856(%rbx)
	movq	2048(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB2_6
# BB#5:                                 # %if.then.13
	movq	1992(%rbx), %rdi
	callq	XFreePixmap@PLT
	movq	$0, 2048(%rbx)
	movq	1992(%rbx), %rdi
	xorl	%esi, %esi
	callq	XSync@PLT
.LBB2_6:                                # %if.end.20
	movq	x_error_handler.2(%rip), %rdi
	callq	XSetErrorHandler@PLT
	movq	%rax, x_error_handler.2(%rip)
	jmp	.LBB2_9
.LBB2_7:                                # %if.else
	testq	%rsi, %rsi
	je	.LBB2_9
# BB#8:                                 # %if.then.25
	movq	1992(%rbx), %rdi
	callq	XFreePixmap@PLT
	movq	$0, 2048(%rbx)
.LBB2_9:                                # %if.end.32
	movq	24(%rbx), %rdi
	callq	*32(%rdi)
	movq	%rax, %r15
	cmpq	$0, 1064(%rbx)
	jle	.LBB2_31
# BB#10:                                # %if.then.i
	movq	1728(%rbx), %r14
	testq	%r14, %r14
	je	.LBB2_11
# BB#12:                                # %lor.lhs.false.i
	movzwl	108(%rbx), %eax
	movzwl	108(%r14), %ecx
	cmpl	%eax, %ecx
	je	.LBB2_18
	jmp	.LBB2_13
.LBB2_11:                               # %if.then.if.then.11_crit_edge.i
	movzwl	108(%rbx), %eax
.LBB2_13:                               # %if.then.11.i
	movzwl	%ax, %edi
	callq	gdev_mem_device_for_bits@PLT
	movq	%rax, %r12
	testq	%r12, %r12
	je	.LBB2_31
# BB#14:                                # %if.end.i
	testq	%r14, %r14
	je	.LBB2_16
# BB#15:                                # %if.then.19.i
	xorl	%esi, %esi
	movq	%r14, %rdi
	callq	gx_device_set_target@PLT
	jmp	.LBB2_17
.LBB2_16:                               # %if.else.i
	movq	st_device_memory@GOTPCREL(%rip), %rsi
	leaq	.L.str.23(%rip), %rdx
	movq	%r15, %rdi
	callq	*72(%r15)
	movq	%rax, %r14
	testq	%r14, %r14
	je	.LBB2_31
.LBB2_17:                               # %cleanup.i
	xorl	%ecx, %ecx
	movq	%r14, %rdi
	movq	%r12, %rsi
	movq	%r15, %rdx
	movq	%rbx, %r8
	callq	gs_make_mem_device@PLT
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	gx_device_set_target@PLT
	movl	$1, 1832(%rbx)
.LBB2_18:                               # %if.end.27.i
	movl	832(%rbx), %esi
	cmpl	%esi, 832(%r14)
	jne	.LBB2_19
# BB#20:                                # %lor.lhs.false.31.i
	movl	836(%rbx), %edx
	cmpl	%edx, 836(%r14)
	je	.LBB2_30
	jmp	.LBB2_21
.LBB2_19:                               # %if.end.27.if.then.35_crit_edge.i
	movl	836(%rbx), %edx
.LBB2_21:                               # %if.then.35.i
	leaq	8(%rsp), %rcx
	movq	%r14, %rdi
	callq	gdev_mem_data_size@PLT
	testl	%eax, %eax
	js	.LBB2_31
# BB#22:                                # %lor.lhs.false.41.i
	movq	8(%rsp), %rdx
	cmpq	1064(%rbx), %rdx
	ja	.LBB2_31
# BB#23:                                # %if.end.47.i
	movq	1840(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB2_25
# BB#24:                                # %cond.true.i
	leaq	.L.str.24(%rip), %rcx
	movq	%r15, %rdi
	callq	*16(%r15)
	jmp	.LBB2_26
.LBB2_25:                               # %cond.false.i
	leaq	.L.str.24(%rip), %rax
	movq	%r15, %rdi
	movl	%edx, %esi
	movq	%rax, %rdx
	callq	*64(%r15)
.LBB2_26:                               # %cond.end.i
	testq	%rax, %rax
	je	.LBB2_31
# BB#27:                                # %if.end.59.i
	movq	8(%rsp), %rcx
	movq	%rcx, 1848(%rbx)
	movq	%rax, 1840(%rbx)
	movl	832(%rbx), %eax
	movl	%eax, 832(%r14)
	movl	836(%rbx), %eax
	movl	%eax, 836(%r14)
	movq	1104(%rbx), %rax
	movq	%rax, 1104(%r14)
	testq	%rax, %rax
	je	.LBB2_29
# BB#28:                                # %do.body.69.i
	incq	200(%rax)
.LBB2_29:                               # %cleanup.82.i
	leaq	96(%r14), %rdi
	leaq	96(%rbx), %rsi
	movl	$720, %edx              # imm = 0x2D0
	callq	memcpy@PLT
	movq	1840(%rbx), %rax
	movq	%rax, 1744(%r14)
	movl	836(%rbx), %esi
	movq	%r14, %rdi
	callq	gdev_mem_open_scan_lines@PLT
.LBB2_30:                               # %cleanup.89.i
	movq	%rbx, %rdi
	callq	gx_device_white@PLT
	movq	%rax, 1816(%rbx)
	movq	%rbx, %rdi
	callq	gx_device_black@PLT
	movq	%rax, 1808(%rbx)
	movl	$1144, %eax             # imm = 0x478
	addq	gs_bbox_device@GOTPCREL(%rip), %rax
	jmp	.LBB2_33
.LBB2_31:                               # %if.else.92.i
	movq	1840(%rbx), %rsi
	leaq	.L.str.24(%rip), %rdx
	movq	%r15, %rdi
	callq	*24(%r15)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 1840(%rbx)
	cmpl	$0, 1832(%rbx)
	je	.LBB2_37
# BB#32:                                # %if.end.100.i
	movq	1728(%rbx), %rdi
	xorl	%esi, %esi
	callq	gx_device_set_target@PLT
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	gx_device_set_target@PLT
	movl	$0, 1832(%rbx)
	movl	$1144, %eax             # imm = 0x478
	addq	gs_x11_device@GOTPCREL(%rip), %rax
.LBB2_33:                               # %if.end.103.i
	movq	56(%rax), %rcx
	cmpq	%rcx, 1200(%rbx)
	je	.LBB2_37
# BB#34:                                # %if.then.108.i
	movq	%rcx, 1200(%rbx)
	movups	72(%rax), %xmm0
	movups	%xmm0, 1216(%rbx)
	movq	168(%rax), %rcx
	movq	%rcx, 1312(%rbx)
	movups	192(%rax), %xmm0
	movups	%xmm0, 1336(%rbx)
	movups	208(%rax), %xmm0
	movups	%xmm0, 1352(%rbx)
	movups	224(%rax), %xmm0
	movups	%xmm0, 1368(%rbx)
	movq	240(%rax), %rcx
	movq	%rcx, 1384(%rbx)
	movups	272(%rax), %xmm0
	movups	%xmm0, 1416(%rbx)
	movq	296(%rax), %rcx
	movq	%rcx, 1440(%rbx)
	movq	336(%rax), %rax
	movq	%rax, 1480(%rbx)
	movl	1832(%rbx), %ebp
	movq	%rbx, %rdi
	callq	check_device_separable@PLT
	movq	%rbx, %rdi
	cmpl	$0, %ebp
	je	.LBB2_36
# BB#35:                                # %if.then.142.i
	callq	gx_device_forward_fill_in_procs@PLT
	movq	gdev_x_box_procs@GOTPCREL(%rip), %rax
	movups	(%rax), %xmm0
	movups	16(%rax), %xmm1
	movups	%xmm1, 1760(%rbx)
	movups	%xmm0, 1744(%rbx)
	movq	%rbx, 1776(%rbx)
	jmp	.LBB2_37
.LBB2_36:                               # %if.else.143.i
	callq	gx_device_fill_in_procs@PLT
.LBB2_37:                               # %x_set_buffer.exit
	cmpq	$0, 2160(%rbx)
	jne	.LBB2_41
# BB#38:                                # %if.then.35
	movq	2048(%rbx), %rax
	testq	%rax, %rax
	je	.LBB2_40
# BB#39:                                # %if.end.41.thread60
	movq	%rax, 2160(%rbx)
	jmp	.LBB2_41
.LBB2_40:                               # %if.end.41
	movq	2024(%rbx), %rax
	movq	%rax, 2160(%rbx)
	testq	%rax, %rax
	je	.LBB2_45
.LBB2_41:                               # %if.end.53
	movq	1992(%rbx), %rdi
	movq	2032(%rbx), %rsi
	movq	2296(%rbx), %rdx
	callq	XSetForeground@PLT
	movq	1992(%rbx), %rdi
	movq	2160(%rbx), %rsi
	movq	2032(%rbx), %rdx
	movl	832(%rbx), %r9d
	movl	836(%rbx), %eax
	movl	%eax, (%rsp)
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	callq	XFillRectangle@PLT
	movq	2048(%rbx), %rdx
	testq	%rdx, %rdx
	je	.LBB2_45
# BB#42:                                # %if.then.56
	cmpl	$0, 2056(%rbx)
	jne	.LBB2_44
# BB#43:                                # %if.then.59
	movq	1992(%rbx), %rdi
	movq	2024(%rbx), %rsi
	callq	XSetWindowBackgroundPixmap@PLT
.LBB2_44:                               # %if.end.64
	movq	1992(%rbx), %rdi
	movq	2032(%rbx), %rsi
	movq	2296(%rbx), %rdx
	callq	XSetForeground@PLT
	movq	1992(%rbx), %rdi
	movq	2048(%rbx), %rsi
	movq	2032(%rbx), %rdx
	movl	832(%rbx), %r9d
	movl	836(%rbx), %eax
	movl	%eax, (%rsp)
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	callq	XFillRectangle@PLT
.LBB2_45:                               # %if.end.75
	movq	2296(%rbx), %rdx
	movq	%rdx, 2280(%rbx)
	movq	1992(%rbx), %rdi
	movq	2032(%rbx), %rsi
	callq	XSetBackground@PLT
	movq	2296(%rbx), %rdx
	movq	%rdx, 2288(%rbx)
	movq	1992(%rbx), %rdi
	movq	2032(%rbx), %rsi
	callq	XSetForeground@PLT
	movq	2296(%rbx), %rax
	movq	%rax, 2176(%rbx)
	movq	%rax, 2168(%rbx)
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gdev_x_clear_window, .Lfunc_end2-gdev_x_clear_window
	.cfi_endproc

	.align	16, 0x90
	.type	x_catch_alloc,@function
x_catch_alloc:                          # @x_catch_alloc
	.cfi_startproc
# BB#0:                                 # %entry
	movzbl	32(%rsi), %eax
	cmpl	$11, %eax
	jne	.LBB3_2
# BB#1:                                 # %if.end.thread
	movb	$1, x_error_handler.0(%rip)
	xorl	%eax, %eax
	retq
.LBB3_2:                                # %if.end
	movb	x_error_handler.0(%rip), %al
	andb	$1, %al
	je	.LBB3_4
# BB#3:                                 # %return
	xorl	%eax, %eax
	retq
.LBB3_4:                                # %if.end.3
	movq	x_error_handler.2(%rip), %rax
	jmpq	*%rax                   # TAILCALL
.Lfunc_end3:
	.size	x_catch_alloc, .Lfunc_end3-x_catch_alloc
	.cfi_endproc

	.globl	gdev_x_finish_copydevice
	.align	16, 0x90
	.type	gdev_x_finish_copydevice,@function
gdev_x_finish_copydevice:               # @gdev_x_finish_copydevice
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$0, 84(%rdi)
	movq	$0, 1728(%rdi)
	movq	$0, 1840(%rdi)
	movq	$0, 1992(%rdi)
	movq	$0, 2000(%rdi)
	movq	$0, 2008(%rdi)
	movq	$0, 2024(%rdi)
	movq	$0, 2048(%rdi)
	movq	$0, 2160(%rdi)
	movq	$0, 2184(%rdi)
	movq	$0, 2208(%rdi)
	movl	$0, 1832(%rdi)
	movq	gs_x11_device@GOTPCREL(%rip), %rax
	movq	1200(%rax), %rax
	movq	%rax, 1200(%rdi)
	xorl	%eax, %eax
	retq
.Lfunc_end4:
	.size	gdev_x_finish_copydevice, .Lfunc_end4-gdev_x_finish_copydevice
	.cfi_endproc

	.globl	gdev_x_get_params
	.align	16, 0x90
	.type	gdev_x_get_params,@function
gdev_x_get_params:                      # @gdev_x_get_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp24:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp25:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp26:
	.cfi_def_cfa_offset 32
.Ltmp27:
	.cfi_offset %rbx, -24
.Ltmp28:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	gx_default_get_params@PLT
	movq	2040(%rbx), %rcx
	movq	%rcx, (%rsp)
	testl	%eax, %eax
	js	.LBB5_5
# BB#1:                                 # %lor.lhs.false
	leaq	.L.str.16(%rip), %rsi
	leaq	(%rsp), %rdx
	movq	%r14, %rdi
	callq	param_write_long@PLT
	testl	%eax, %eax
	js	.LBB5_5
# BB#2:                                 # %lor.lhs.false.3
	leaq	1836(%rbx), %rdx
	leaq	.L.str.17(%rip), %rsi
	movq	%r14, %rdi
	callq	param_write_bool@PLT
	testl	%eax, %eax
	js	.LBB5_5
# BB#3:                                 # %lor.lhs.false.6
	leaq	2864(%rbx), %rdx
	leaq	.L.str.18(%rip), %rsi
	movq	%r14, %rdi
	callq	param_write_int@PLT
	testl	%eax, %eax
	js	.LBB5_5
# BB#4:                                 # %lor.lhs.false.9
	addq	$2868, %rbx             # imm = 0xB34
	leaq	.L.str.19(%rip), %rsi
	movq	%r14, %rdi
	movq	%rbx, %rdx
	callq	param_write_int@PLT
.LBB5_5:                                # %if.end
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end5:
	.size	gdev_x_get_params, .Lfunc_end5-gdev_x_get_params
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI6_0:
	.long	1116733440              # float 72
	.text
	.globl	gdev_x_put_params
	.align	16, 0x90
	.type	gdev_x_put_params,@function
gdev_x_put_params:                      # @gdev_x_put_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp29:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp30:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp31:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp32:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp33:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp34:
	.cfi_def_cfa_offset 56
	subq	$3224, %rsp             # imm = 0xC98
.Ltmp35:
	.cfi_def_cfa_offset 3280
.Ltmp36:
	.cfi_offset %rbx, -56
.Ltmp37:
	.cfi_offset %r12, -48
.Ltmp38:
	.cfi_offset %r13, -40
.Ltmp39:
	.cfi_offset %r14, -32
.Ltmp40:
	.cfi_offset %r15, -24
.Ltmp41:
	.cfi_offset %rbp, -16
	movq	%rsi, %rbp
	movq	%rdi, %r15
	movq	1064(%r15), %r12
	movq	2040(%r15), %rax
	movq	%rax, (%rsp)
	movl	1836(%r15), %r14d
	leaq	8(%rsp), %rdi
	movl	$3216, %edx             # imm = 0xC90
	movq	%r15, %rsi
	callq	memcpy@PLT
	leaq	.L.str.16(%rip), %rsi
	leaq	(%rsp), %rdx
	xorl	%ecx, %ecx
	movq	%rbp, %rdi
	callq	param_put_long@PLT
	leaq	1844(%rsp), %rdx
	leaq	.L.str.17(%rip), %rsi
	movq	%rbp, %rdi
	movl	%eax, %ecx
	callq	param_put_bool@PLT
	leaq	2872(%rsp), %rdx
	leaq	.L.str.18(%rip), %rsi
	movq	%rbp, %rdi
	movl	%eax, %ecx
	callq	param_put_int@PLT
	leaq	2876(%rsp), %rdx
	leaq	.L.str.19(%rip), %rsi
	movq	%rbp, %rdi
	movl	%eax, %ecx
	callq	param_put_int@PLT
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB6_38
# BB#1:                                 # %if.end
	movq	(%rsp), %rax
	cmpq	2040(%r15), %rax
	jne	.LBB6_3
# BB#2:                                 # %if.then.10
	movl	$0, 84(%r15)
.LBB6_3:                                # %if.end.11
	movl	1844(%rsp), %eax
	movl	%eax, 1836(%r15)
	movq	%r15, %rdi
	movq	%rbp, %rsi
	callq	gx_default_put_params@PLT
	movl	%eax, %ebx
	movl	92(%rsp), %ecx
	movl	%ecx, 84(%r15)
	testl	%ebx, %ebx
	js	.LBB6_4
# BB#5:                                 # %if.end.21
	movq	(%rsp), %rax
	cmpq	2040(%r15), %rax
	je	.LBB6_9
# BB#6:                                 # %if.then.25
	xorl	%edx, %edx
	testl	%ecx, %ecx
	je	.LBB6_8
# BB#7:                                 # %if.then.27
	movq	%r15, %rdi
	callq	gs_closedevice@PLT
	movq	(%rsp), %rax
	movl	84(%r15), %edx
.LBB6_8:                                # %if.end.29
	movq	%rax, 2040(%r15)
	movl	%edx, %ecx
.LBB6_9:                                # %if.end.31
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	.LBB6_12
# BB#10:                                # %land.lhs.true
	cmpl	$0, 2056(%r15)
	je	.LBB6_16
# BB#11:                                # %land.lhs.true.62
	movq	840(%rsp), %rcx
	movl	%ecx, 832(%r15)
	shrq	$32, %rcx
	movl	%ecx, 836(%r15)
	movl	892(%rsp), %ecx
	movl	896(%rsp), %edx
	movl	%ecx, 884(%r15)
	movl	%edx, 888(%r15)
	movq	864(%rsp), %rcx
	movl	%ecx, 856(%r15)
	shrq	$32, %rcx
	movl	%ecx, 860(%r15)
.LBB6_12:                               # %if.end.205
	movq	2872(%rsp), %rcx
	movl	%ecx, 2864(%r15)
	shrq	$32, %rcx
	movl	%ecx, 2868(%r15)
	testl	%eax, %eax
	jne	.LBB6_14
# BB#13:                                # %lor.lhs.false.211
	movslq	%r12d, %rax
	xorl	%ebx, %ebx
	cmpq	%rax, 1064(%r15)
	je	.LBB6_38
.LBB6_14:                               # %if.then.217
	xorl	%ebx, %ebx
	cmpl	$0, 84(%r15)
	je	.LBB6_38
# BB#15:                                # %if.then.220
	movq	%r15, %rdi
	callq	gdev_x_clear_window@PLT
	jmp	.LBB6_38
.LBB6_4:                                # %if.then.19
	movl	%r14d, 1836(%r15)
.LBB6_38:                               # %cleanup.223
	movl	%ebx, %eax
	addq	$3224, %rsp             # imm = 0xC98
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB6_16:                               # %land.lhs.true.65
	movq	840(%rsp), %rcx
	cmpl	%ecx, 832(%r15)
	jne	.LBB6_20
# BB#17:                                # %lor.lhs.false
	shrq	$32, %rcx
	cmpl	%ecx, 836(%r15)
	jne	.LBB6_20
# BB#18:                                # %lor.lhs.false.74
	movss	884(%r15), %xmm0        # xmm0 = mem[0],zero,zero,zero
	ucomiss	892(%rsp), %xmm0
	jne	.LBB6_20
	jp	.LBB6_20
# BB#19:                                # %lor.lhs.false.81
	movss	888(%r15), %xmm0        # xmm0 = mem[0],zero,zero,zero
	ucomiss	896(%rsp), %xmm0
	jne	.LBB6_20
	jnp	.LBB6_12
.LBB6_20:                               # %if.then.88
	movq	2000(%r15), %rax
	movl	24(%rax), %ebp
	movl	28(%rax), %r14d
	leaq	.L.str.21(%rip), %rsi
	movq	%r15, %rdi
	callq	x_get_win_property
	testq	%rax, %rax
	jne	.LBB6_22
# BB#21:                                # %lor.lhs.false.i
	leaq	.L.str.22(%rip), %rsi
	movq	%r15, %rdi
	callq	x_get_win_property
	testq	%rax, %rax
	je	.LBB6_23
.LBB6_22:                               # %if.then.i
	movl	16(%rax), %ebp
	movl	24(%rax), %r14d
	movq	%rax, %rdi
	callq	XFree@PLT
.LBB6_23:                               # %x_get_work_area.exit
	movl	892(%rsp), %eax
	movl	896(%rsp), %ecx
	movl	%eax, 884(%r15)
	movl	%ecx, 888(%r15)
	movl	832(%r15), %edx
	cmpl	%ebp, %edx
	cmovlel	%edx, %ebp
	movl	%ebp, 832(%r15)
	movl	836(%r15), %edx
	cmpl	%r14d, %edx
	cmovlel	%edx, %r14d
	movl	%r14d, 836(%r15)
	testl	%ebp, %ebp
	jle	.LBB6_37
# BB#24:                                # %x_get_work_area.exit
	testl	%r14d, %r14d
	jle	.LBB6_37
# BB#25:                                # %if.end.136
	movd	%ecx, %xmm0
	movd	%eax, %xmm1
	cvtsi2ssl	%ebp, %xmm2
	divss	%xmm1, %xmm2
	movss	.LCPI6_0(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm2
	movss	%xmm2, 856(%r15)
	xorps	%xmm2, %xmm2
	cvtsi2ssl	%r14d, %xmm2
	divss	%xmm0, %xmm2
	mulss	%xmm1, %xmm2
	movss	%xmm2, 860(%r15)
	movq	840(%rsp), %rax
	movq	%rax, %rbx
	shrq	$32, %rbx
	movl	%ebp, %r13d
	subl	%eax, %r13d
	jne	.LBB6_27
# BB#26:                                # %if.end.136
	xorl	%eax, %eax
	cmpl	%ebx, %r14d
	je	.LBB6_30
.LBB6_27:                               # %if.then.159
	movq	1992(%r15), %rdi
	movq	2024(%r15), %rsi
	movl	%ebp, %edx
	movl	%r14d, %ecx
	callq	XResizeWindow@PLT
	movq	2048(%r15), %rsi
	testq	%rsi, %rsi
	je	.LBB6_29
# BB#28:                                # %if.then.165
	movq	1992(%r15), %rdi
	callq	XFreePixmap@PLT
	movq	$0, 2048(%r15)
.LBB6_29:                               # %if.end.170
	movq	$0, 2160(%r15)
	movl	$1, %eax
.LBB6_30:                               # %if.end.171
	subl	%ebx, %r14d
	movss	2076(%r15), %xmm1       # xmm1 = mem[0],zero,zero,zero
	xorps	%xmm0, %xmm0
	ucomiss	%xmm0, %xmm1
	jne	.LBB6_35
	jp	.LBB6_35
# BB#31:                                # %if.then.174
	ucomiss	2072(%r15), %xmm0
	jbe	.LBB6_33
# BB#32:                                # %if.then.178
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%r13d, %xmm0
	addss	2088(%r15), %xmm0
	movss	%xmm0, 2088(%r15)
	jmp	.LBB6_12
.LBB6_37:                               # %cleanup
	movq	24(%r15), %rbx
	callq	gs_program_name@PLT
	movq	%rax, %rbp
	callq	gs_revision_number@PLT
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident@PLT
	movq	16(%r15), %r8
	movq	24(%r15), %rdi
	movl	832(%r15), %edx
	movl	836(%r15), %ecx
	leaq	.L.str.20(%rip), %rsi
	xorl	%eax, %eax
	callq	errprintf@PLT
	movl	$-15, %ebx
	jmp	.LBB6_38
.LBB6_35:                               # %if.else.185
	ucomiss	%xmm1, %xmm0
	jbe	.LBB6_12
# BB#36:                                # %if.then.190
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%r14d, %xmm0
	addss	2088(%r15), %xmm0
	movss	%xmm0, 2088(%r15)
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%r13d, %xmm0
	jmp	.LBB6_34
.LBB6_33:                               # %if.else
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%r14d, %xmm0
.LBB6_34:                               # %if.end.205
	addss	2092(%r15), %xmm0
	movss	%xmm0, 2092(%r15)
	jmp	.LBB6_12
.Lfunc_end6:
	.size	gdev_x_put_params, .Lfunc_end6-gdev_x_put_params
	.cfi_endproc

	.globl	gdev_x_close
	.align	16, 0x90
	.type	gdev_x_close,@function
gdev_x_close:                           # @gdev_x_close
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp42:
	.cfi_def_cfa_offset 16
.Ltmp43:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	cmpl	$0, 2056(%rbx)
	je	.LBB7_2
# BB#1:                                 # %if.then
	movq	2112(%rbx), %rsi
	movq	%rbx, %rdi
	callq	gdev_x_send_event@PLT
.LBB7_2:                                # %if.end
	movq	2008(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB7_4
# BB#3:                                 # %if.then.2
	callq	XFree@PLT
	movq	$0, 2008(%rbx)
.LBB7_4:                                # %if.end.5
	movq	%rbx, %rdi
	callq	gdev_x_free_colors@PLT
	movq	2000(%rbx), %rax
	movq	2016(%rbx), %rsi
	cmpq	80(%rax), %rsi
	je	.LBB7_6
# BB#5:                                 # %if.then.7
	movq	1992(%rbx), %rdi
	callq	XFreeColormap@PLT
.LBB7_6:                                # %if.end.10
	movq	1992(%rbx), %rdi
	callq	XCloseDisplay@PLT
	xorl	%eax, %eax
	popq	%rbx
	retq
.Lfunc_end7:
	.size	gdev_x_close, .Lfunc_end7-gdev_x_close
	.cfi_endproc

	.align	16, 0x90
	.type	x_get_win_property,@function
x_get_win_property:                     # @x_get_win_property
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp44:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp45:
	.cfi_def_cfa_offset 24
	subq	$88, %rsp
.Ltmp46:
	.cfi_def_cfa_offset 112
.Ltmp47:
	.cfi_offset %rbx, -24
.Ltmp48:
	.cfi_offset %r14, -16
	movq	$0, 80(%rsp)
	movl	$0, 76(%rsp)
	movq	$0, 64(%rsp)
	movq	1992(%rdi), %rbx
	movq	2000(%rdi), %rax
	movq	16(%rax), %r14
	xorl	%edx, %edx
	movq	%rbx, %rdi
	callq	XInternAtom@PLT
	leaq	48(%rsp), %rcx
	movq	%rcx, 40(%rsp)
	leaq	56(%rsp), %rcx
	movq	%rcx, 32(%rsp)
	leaq	64(%rsp), %rcx
	movq	%rcx, 24(%rsp)
	leaq	76(%rsp), %rcx
	movq	%rcx, 16(%rsp)
	leaq	80(%rsp), %rcx
	movq	%rcx, 8(%rsp)
	movq	$6, (%rsp)
	xorl	%ecx, %ecx
	movl	$4, %r8d
	xorl	%r9d, %r9d
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movq	%rax, %rdx
	callq	XGetWindowProperty@PLT
	movl	%eax, %ecx
	movq	48(%rsp), %rax
	testl	%ecx, %ecx
	jne	.LBB8_6
# BB#1:                                 # %entry
	testq	%rax, %rax
	je	.LBB8_6
# BB#2:                                 # %entry
	cmpq	$6, 80(%rsp)
	jne	.LBB8_6
# BB#3:                                 # %entry
	cmpl	$32, 76(%rsp)
	jne	.LBB8_6
# BB#4:                                 # %entry
	cmpq	$4, 64(%rsp)
	jne	.LBB8_6
# BB#5:                                 # %entry
	movq	56(%rsp), %rcx
	testq	%rcx, %rcx
	je	.LBB8_7
.LBB8_6:                                # %if.end
	movq	%rax, %rdi
	callq	XFree@PLT
	xorl	%eax, %eax
.LBB8_7:                                # %cleanup
	addq	$88, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end8:
	.size	x_get_win_property, .Lfunc_end8-x_get_win_property
	.cfi_endproc

	.type	x_error_handler.0,@object # @x_error_handler.0
	.local	x_error_handler.0
	.comm	x_error_handler.0,1,1
	.type	x_error_handler.1,@object # @x_error_handler.1
	.local	x_error_handler.1
	.comm	x_error_handler.1,8,8
	.type	x_error_handler.2,@object # @x_error_handler.2
	.local	x_error_handler.2
	.comm	x_error_handler.2,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"DISPLAY"
	.size	.L.str, 8

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Cannot open X display `%s'.\n"
	.size	.L.str.1, 29

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"(null)"
	.size	.L.str.2, 7

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"GHOSTVIEW"
	.size	.L.str.3, 10

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"%ld %ld"
	.size	.L.str.4, 8

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Cannot get Window ID from ghostview.\n"
	.size	.L.str.5, 38

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"%ld %d %d %d %d %d %f %f %d %d %d %d"
	.size	.L.str.6, 37

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Cannot get ghostview property.\n"
	.size	.L.str.7, 32

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Both destination and backing pixmap specified.\n"
	.size	.L.str.8, 48

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Cannot get XVisualInfo.\n"
	.size	.L.str.9, 25

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"ghostscript"
	.size	.L.str.10, 12

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Ghostscript"
	.size	.L.str.11, 12

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"%dx%d+%d+%d"
	.size	.L.str.12, 12

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"NEXT"
	.size	.L.str.13, 5

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"PAGE"
	.size	.L.str.14, 5

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"DONE"
	.size	.L.str.15, 5

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"WindowID"
	.size	.L.str.16, 9

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	".IsPageDevice"
	.size	.L.str.17, 14

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"MaxTempPixmap"
	.size	.L.str.18, 14

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"MaxTempImage"
	.size	.L.str.19, 13

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"Requested pagesize %d x %d not supported by %s device\n"
	.size	.L.str.20, 55

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"_NET_WORKAREA"
	.size	.L.str.21, 14

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"_WIN_WORKAREA"
	.size	.L.str.22, 14

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"memory device"
	.size	.L.str.23, 14

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"buffer"
	.size	.L.str.24, 7


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
