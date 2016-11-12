	.text
	.file	"faxg3.bc"
	.align	16, 0x90
	.type	query,@function
query:                                  # @query
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp0:
	.cfi_def_cfa_offset 16
.Ltmp1:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp2:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$88, %rsp
.Ltmp3:
	.cfi_offset %rbx, -40
.Ltmp4:
	.cfi_offset %r14, -32
.Ltmp5:
	.cfi_offset %r15, -24
	movabsq	$.L.str.7, %rdi
	movabsq	$.L.str.8, %rsi
	movabsq	$.L.str.9, %rdx
	movabsq	$.L.str.10, %rcx
	movabsq	$.L.str.11, %r8
	movabsq	$.L.str.12, %r9
	movabsq	$.L.str.13, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %r11d
	movl	$1, %r10d
	movl	$3, %ebx
	movabsq	$query.load_args, %r14
	movabsq	$query.load_return_vals, %r15
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$3, 24(%rsp)
	movl	$1, 32(%rsp)
	movq	%r14, 40(%rsp)
	movq	%r15, 48(%rsp)
	movl	%r10d, -28(%rbp)        # 4-byte Spill
	movq	%r11, -40(%rbp)         # 8-byte Spill
	movl	%ebx, -44(%rbp)         # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.7, %rdi
	movabsq	$.L.str.14, %rsi
	callq	gimp_register_file_handler_mime
	movabsq	$.L.str.7, %rdi
	movabsq	$.L.str.15, %rsi
	movabsq	$.L.str.16, %rdx
	movabsq	$.L.str.17, %rcx
	movl	%eax, -48(%rbp)         # 4-byte Spill
	callq	gimp_register_magic_load_handler
	movl	%eax, -52(%rbp)         # 4-byte Spill
	addq	$88, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	query, .Lfunc_end0-query
	.cfi_endproc

	.align	16, 0x90
	.type	run,@function
run:                                    # @run
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp6:
	.cfi_def_cfa_offset 16
.Ltmp7:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp8:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movabsq	$run.values, %rax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	$0, -56(%rbp)
	movq	-32(%rbp), %rcx
	movl	$1, (%rcx)
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	$21, run.values
	movl	$1, run.values+8
	movq	-8(%rbp), %rdi
	movl	$.L.str.7, %esi
                                        # kill: RSI<def> ESI<kill>
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_9
# BB#1:                                 # %if.then
	jmp	.LBB1_2
.LBB1_2:                                # %do.body
	callq	gimp_locale_directory
	movabsq	$.L.str.18, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.18, %rdi
	movabsq	$.L.str.19, %rsi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.18, %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	textdomain
	movq	%rax, -80(%rbp)         # 8-byte Spill
# BB#3:                                 # %do.end
	leaq	-56(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	48(%rax), %rdi
	callq	load_image
	movl	%eax, -44(%rbp)
	cmpl	$-1, -44(%rbp)
	je	.LBB1_5
# BB#4:                                 # %if.then.7
	movq	-32(%rbp), %rax
	movl	$2, (%rax)
	movl	$3, run.values+8
	movl	$13, run.values+40
	movl	-44(%rbp), %ecx
	movl	%ecx, run.values+48
	jmp	.LBB1_8
.LBB1_5:                                # %if.else
	movl	$0, run.values+8
	cmpq	$0, -56(%rbp)
	je	.LBB1_7
# BB#6:                                 # %if.then.8
	movq	-32(%rbp), %rax
	movl	$2, (%rax)
	movl	$4, run.values+40
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, run.values+48
.LBB1_7:                                # %if.end
	jmp	.LBB1_8
.LBB1_8:                                # %if.end.9
	jmp	.LBB1_9
.LBB1_9:                                # %if.end.10
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	run, .Lfunc_end1-run
	.cfi_endproc

	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp9:
	.cfi_def_cfa_offset 16
.Ltmp10:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp11:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movabsq	$PLUG_IN_INFO, %rax
	movl	$0, -4(%rbp)
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	-8(%rbp), %esi
	movq	-16(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_main
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	main, .Lfunc_end2-main
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_0:
	.quad	4611686018427387904     # double 2
	.text
	.align	16, 0x90
	.type	load_image,@function
load_image:                             # @load_image
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp12:
	.cfi_def_cfa_offset 16
.Ltmp13:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp14:
	.cfi_def_cfa_register %rbp
	subq	$256, %rsp              # imm = 0x100
	movabsq	$.L.str.20, %rax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	$216, -76(%rbp)
	movq	%rax, %rdi
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	gimp_progress_init_printf
	movabsq	$white, %rdi
	movabsq	$t_white, %rsi
	movl	%eax, -148(%rbp)        # 4-byte Spill
	callq	build_tree
	movabsq	$white, %rdi
	movabsq	$m_white, %rsi
	callq	build_tree
	movabsq	$black, %rdi
	movabsq	$t_black, %rsi
	callq	build_tree
	movabsq	$black, %rdi
	movabsq	$m_black, %rsi
	callq	build_tree
	xorl	%edi, %edi
	movabsq	$byte_tab, %rsi
	callq	init_byte_tab
	xorl	%eax, %eax
	movq	-16(%rbp), %rdi
	movl	%eax, %esi
	movl	%eax, %edx
	movb	$0, %al
	callq	open
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	jge	.LBB3_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rdi
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	callq	g_file_error_quark
	movl	%eax, -164(%rbp)        # 4-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_file_error_from_errno
	movabsq	$.L.str.21, %rdi
	movl	%eax, -168(%rbp)        # 4-byte Spill
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_strerror
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movl	-164(%rbp), %esi        # 4-byte Reload
	movl	-168(%rbp), %edx        # 4-byte Reload
	movq	-176(%rbp), %rcx        # 8-byte Reload
	movq	-184(%rbp), %r8         # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	g_set_error
	movl	$-1, -4(%rbp)
	jmp	.LBB3_87
.LBB3_2:                                # %if.end
	xorl	%eax, %eax
	movl	%eax, %esi
	movl	$2, %edx
	movl	$0, -32(%rbp)
	movl	$0, -28(%rbp)
	movl	$0, -68(%rbp)
	movl	$0, -52(%rbp)
	movl	$0, -60(%rbp)
	movl	-48(%rbp), %edi
	callq	lseek
	xorl	%edx, %edx
	movl	%edx, %esi
	xorl	%edx, %edx
	movl	%eax, %edi
	movl	%edi, -64(%rbp)
	movl	-48(%rbp), %edi
	callq	lseek
	movabsq	$rbuf, %rsi
	movl	$2048, %edx             # imm = 0x800
                                        # kill: RDX<def> EDX<kill>
	movl	-48(%rbp), %edi
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	read
	movl	%eax, %edi
	movl	%edi, rs
	cmpl	$0, rs
	jge	.LBB3_4
# BB#3:                                 # %if.then.17
	movabsq	$.L.str.22, %rdi
	callq	perror
	movl	rs, %edi
	callq	close
	movl	%eax, -196(%rbp)        # 4-byte Spill
	callq	gimp_quit
.LBB3_4:                                # %if.end.19
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	movl	rs, %eax
	addl	-60(%rbp), %eax
	movl	%eax, -60(%rbp)
	cvtsi2ssl	-60(%rbp), %xmm1
	cvtsi2ssl	-64(%rbp), %xmm2
	divss	%xmm2, %xmm1
	cvtss2sd	%xmm1, %xmm1
	divsd	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	callq	gimp_progress_update
	xorl	%ecx, %ecx
	movb	%cl, %dl
	cmpl	$64, rs
	movl	%eax, -200(%rbp)        # 4-byte Spill
	movb	%dl, -201(%rbp)         # 1-byte Spill
	jl	.LBB3_6
# BB#5:                                 # %land.rhs
	movl	$.L.str.23, %eax
	movl	%eax, %esi
	movl	$rbuf+1, %eax
	movl	%eax, %edi
	callq	strcmp
	cmpl	$0, %eax
	sete	%cl
	movb	%cl, -201(%rbp)         # 1-byte Spill
.LBB3_6:                                # %land.end
	movb	-201(%rbp), %al         # 1-byte Reload
	movl	$928800, %ecx           # imm = 0xE2C20
	movl	%ecx, %edi
	movl	$1, %ecx
	movl	%ecx, %esi
	xorl	%ecx, %ecx
	movl	$64, %edx
	testb	$1, %al
	cmovnel	%edx, %ecx
	movl	%ecx, rp
	movl	$0, -112(%rbp)
	movl	$0, -108(%rbp)
	movl	$0, -100(%rbp)
	movl	$4300, -104(%rbp)       # imm = 0x10CC
	callq	g_malloc0_n
	movl	$8, %ecx
	movq	%rax, -88(%rbp)
	imull	$1728, -100(%rbp), %eax # imm = 0x6C0
	cltd
	idivl	%ecx
	movslq	%eax, %rsi
	addq	-88(%rbp), %rsi
	movq	%rsi, -96(%rbp)
.LBB3_7:                                # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_11 Depth 2
                                        #     Child Loop BB3_23 Depth 2
                                        #     Child Loop BB3_29 Depth 2
                                        #     Child Loop BB3_43 Depth 2
                                        #     Child Loop BB3_73 Depth 2
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, rs
	movb	%cl, -202(%rbp)         # 1-byte Spill
	jle	.LBB3_9
# BB#8:                                 # %land.rhs.34
                                        #   in Loop: Header=BB3_7 Depth=1
	cmpl	$4, -68(%rbp)
	setl	%al
	movb	%al, -202(%rbp)         # 1-byte Spill
.LBB3_9:                                # %land.end.37
                                        #   in Loop: Header=BB3_7 Depth=1
	movb	-202(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB3_10
	jmp	.LBB3_83
.LBB3_10:                               # %while.body
                                        #   in Loop: Header=BB3_7 Depth=1
	jmp	.LBB3_11
.LBB3_11:                               # %while.cond.38
                                        #   Parent Loop BB3_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$20, -32(%rbp)
	jge	.LBB3_19
# BB#12:                                # %while.body.41
                                        #   in Loop: Header=BB3_11 Depth=2
	movl	rp, %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, rp
	movslq	%eax, %rdx
	movzbl	rbuf(,%rdx), %eax
	movslq	%eax, %rdx
	movl	byte_tab(,%rdx,4), %eax
	movl	-32(%rbp), %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %eax
	orl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	addl	$8, %eax
	movl	%eax, -32(%rbp)
	movl	rp, %eax
	cmpl	rs, %eax
	jl	.LBB3_18
# BB#13:                                # %if.then.50
                                        #   in Loop: Header=BB3_11 Depth=2
	movabsq	$rbuf, %rsi
	movl	$2048, %eax             # imm = 0x800
	movl	%eax, %edx
	movl	-48(%rbp), %edi
	callq	read
	movl	%eax, %edi
	movl	%edi, rs
	cmpl	$0, rs
	jge	.LBB3_15
# BB#14:                                # %if.then.55
                                        #   in Loop: Header=BB3_7 Depth=1
	movabsq	$.L.str.24, %rdi
	callq	perror
	jmp	.LBB3_19
.LBB3_15:                               # %if.end.56
                                        #   in Loop: Header=BB3_11 Depth=2
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	movl	rs, %eax
	addl	-60(%rbp), %eax
	movl	%eax, -60(%rbp)
	cvtsi2ssl	-60(%rbp), %xmm1
	cvtsi2ssl	-64(%rbp), %xmm2
	divss	%xmm2, %xmm1
	cvtss2sd	%xmm1, %xmm1
	divsd	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	$0, rp
	cmpl	$0, rs
	movl	%eax, -208(%rbp)        # 4-byte Spill
	jne	.LBB3_17
# BB#16:                                # %if.then.66
	jmp	.LBB3_84
.LBB3_17:                               # %if.end.67
                                        #   in Loop: Header=BB3_11 Depth=2
	jmp	.LBB3_18
.LBB3_18:                               # %if.end.68
                                        #   in Loop: Header=BB3_11 Depth=2
	jmp	.LBB3_11
.LBB3_19:                               # %while.end
                                        #   in Loop: Header=BB3_7 Depth=1
	cmpl	$0, -52(%rbp)
	jne	.LBB3_21
# BB#20:                                # %if.then.71
                                        #   in Loop: Header=BB3_7 Depth=1
	movl	-28(%rbp), %eax
	andl	$255, %eax
	movslq	%eax, %rcx
	movq	white, %rdx
	movq	8(%rdx,%rcx,8), %rcx
	movq	%rcx, -40(%rbp)
	jmp	.LBB3_22
.LBB3_21:                               # %if.else
                                        #   in Loop: Header=BB3_7 Depth=1
	movl	-28(%rbp), %eax
	andl	$255, %eax
	movslq	%eax, %rcx
	movq	black, %rdx
	movq	8(%rdx,%rcx,8), %rcx
	movq	%rcx, -40(%rbp)
.LBB3_22:                               # %if.end.78
                                        #   in Loop: Header=BB3_7 Depth=1
	jmp	.LBB3_23
.LBB3_23:                               # %while.cond.79
                                        #   Parent Loop BB3_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, -40(%rbp)
	movb	%cl, -209(%rbp)         # 1-byte Spill
	je	.LBB3_25
# BB#24:                                # %land.rhs.82
                                        #   in Loop: Header=BB3_23 Depth=2
	movq	-40(%rbp), %rax
	cmpl	$0, (%rax)
	setne	%cl
	xorb	$-1, %cl
	movb	%cl, -209(%rbp)         # 1-byte Spill
.LBB3_25:                               # %land.end.83
                                        #   in Loop: Header=BB3_23 Depth=2
	movb	-209(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB3_26
	jmp	.LBB3_27
.LBB3_26:                               # %while.body.84
                                        #   in Loop: Header=BB3_23 Depth=2
	movl	-28(%rbp), %eax
	sarl	$8, %eax
	movl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	$8, %eax
	movl	%eax, -32(%rbp)
	movl	-28(%rbp), %eax
	andl	$255, %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rdx
	movq	8(%rdx,%rcx,8), %rcx
	movq	%rcx, -40(%rbp)
	jmp	.LBB3_23
.LBB3_27:                               # %while.end.89
                                        #   in Loop: Header=BB3_7 Depth=1
	cmpq	$0, -40(%rbp)
	jne	.LBB3_40
# BB#28:                                # %if.then.92
                                        #   in Loop: Header=BB3_7 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	movl	$1, %edx
	movl	-100(%rbp), %eax
	movl	-108(%rbp), %ecx
	movl	-48(%rbp), %edi
	movl	%ecx, -216(%rbp)        # 4-byte Spill
	movl	%eax, -220(%rbp)        # 4-byte Spill
	callq	lseek
	movabsq	$.L.str.25, %rdi
	movslq	rs, %rsi
	subq	%rsi, %rax
	movslq	rp, %rsi
	addq	%rsi, %rax
	movl	-220(%rbp), %esi        # 4-byte Reload
	movl	-216(%rbp), %edx        # 4-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	g_printerr
.LBB3_29:                               # %while.cond.98
                                        #   Parent Loop BB3_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-28(%rbp), %eax
	andl	$63, %eax
	cmpl	$0, %eax
	je	.LBB3_39
# BB#30:                                # %while.body.102
                                        #   in Loop: Header=BB3_29 Depth=2
	movl	-28(%rbp), %eax
	sarl	$1, %eax
	movl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -32(%rbp)
	cmpl	$20, -32(%rbp)
	jge	.LBB3_38
# BB#31:                                # %if.then.106
                                        #   in Loop: Header=BB3_29 Depth=2
	movl	rp, %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, rp
	movslq	%eax, %rdx
	movzbl	rbuf(,%rdx), %eax
	movslq	%eax, %rdx
	movl	byte_tab(,%rdx,4), %eax
	movl	-32(%rbp), %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %eax
	orl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	addl	$8, %eax
	movl	%eax, -32(%rbp)
	movl	rp, %eax
	cmpl	rs, %eax
	jl	.LBB3_37
# BB#32:                                # %if.then.118
                                        #   in Loop: Header=BB3_29 Depth=2
	movabsq	$rbuf, %rsi
	movl	$2048, %eax             # imm = 0x800
	movl	%eax, %edx
	movl	-48(%rbp), %edi
	callq	read
	movl	%eax, %edi
	movl	%edi, rs
	cmpl	$0, rs
	jge	.LBB3_34
# BB#33:                                # %if.then.123
                                        #   in Loop: Header=BB3_7 Depth=1
	movabsq	$.L.str.26, %rdi
	callq	perror
	jmp	.LBB3_39
.LBB3_34:                               # %if.end.124
                                        #   in Loop: Header=BB3_29 Depth=2
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	movl	rs, %eax
	addl	-60(%rbp), %eax
	movl	%eax, -60(%rbp)
	cvtsi2ssl	-60(%rbp), %xmm1
	cvtsi2ssl	-64(%rbp), %xmm2
	divss	%xmm2, %xmm1
	cvtss2sd	%xmm1, %xmm1
	divsd	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	$0, rp
	cmpl	$0, rs
	movl	%eax, -224(%rbp)        # 4-byte Spill
	jne	.LBB3_36
# BB#35:                                # %if.then.134
	jmp	.LBB3_84
.LBB3_36:                               # %if.end.135
                                        #   in Loop: Header=BB3_29 Depth=2
	jmp	.LBB3_37
.LBB3_37:                               # %if.end.136
                                        #   in Loop: Header=BB3_29 Depth=2
	jmp	.LBB3_38
.LBB3_38:                               # %if.end.137
                                        #   in Loop: Header=BB3_29 Depth=2
	jmp	.LBB3_29
.LBB3_39:                               # %while.end.138
                                        #   in Loop: Header=BB3_7 Depth=1
	movl	$-1, -44(%rbp)
	jmp	.LBB3_41
.LBB3_40:                               # %if.else.139
                                        #   in Loop: Header=BB3_7 Depth=1
	movq	-40(%rbp), %rax
	movl	(%rax), %ecx
	movl	-28(%rbp), %edx
                                        # kill: CL<def> ECX<kill>
	sarl	%cl, %edx
	movl	%edx, -28(%rbp)
	movq	-40(%rbp), %rax
	movl	(%rax), %edx
	movl	-32(%rbp), %esi
	subl	%edx, %esi
	movl	%esi, -32(%rbp)
	movq	-40(%rbp), %rax
	movl	4(%rax), %edx
	movl	%edx, -44(%rbp)
.LBB3_41:                               # %if.end.145
                                        #   in Loop: Header=BB3_7 Depth=1
	cmpl	$-1, -44(%rbp)
	jne	.LBB3_68
# BB#42:                                # %if.then.148
                                        #   in Loop: Header=BB3_7 Depth=1
	jmp	.LBB3_43
.LBB3_43:                               # %while.cond.149
                                        #   Parent Loop BB3_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-28(%rbp), %eax
	andl	$1, %eax
	cmpl	$1, %eax
	je	.LBB3_56
# BB#44:                                # %while.body.153
                                        #   in Loop: Header=BB3_43 Depth=2
	movl	-28(%rbp), %eax
	andl	$15, %eax
	cmpl	$0, %eax
	jne	.LBB3_46
# BB#45:                                # %if.then.157
                                        #   in Loop: Header=BB3_43 Depth=2
	movl	-32(%rbp), %eax
	subl	$4, %eax
	movl	%eax, -32(%rbp)
	movl	-28(%rbp), %eax
	sarl	$4, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB3_47
.LBB3_46:                               # %if.else.160
                                        #   in Loop: Header=BB3_43 Depth=2
	movl	-32(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -32(%rbp)
	movl	-28(%rbp), %eax
	sarl	$1, %eax
	movl	%eax, -28(%rbp)
.LBB3_47:                               # %if.end.163
                                        #   in Loop: Header=BB3_43 Depth=2
	cmpl	$20, -32(%rbp)
	jge	.LBB3_55
# BB#48:                                # %if.then.166
                                        #   in Loop: Header=BB3_43 Depth=2
	movl	rp, %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, rp
	movslq	%eax, %rdx
	movzbl	rbuf(,%rdx), %eax
	movslq	%eax, %rdx
	movl	byte_tab(,%rdx,4), %eax
	movl	-32(%rbp), %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %eax
	orl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	addl	$8, %eax
	movl	%eax, -32(%rbp)
	movl	rp, %eax
	cmpl	rs, %eax
	jl	.LBB3_54
# BB#49:                                # %if.then.178
                                        #   in Loop: Header=BB3_43 Depth=2
	movabsq	$rbuf, %rsi
	movl	$2048, %eax             # imm = 0x800
	movl	%eax, %edx
	movl	-48(%rbp), %edi
	callq	read
	movl	%eax, %edi
	movl	%edi, rs
	cmpl	$0, rs
	jge	.LBB3_51
# BB#50:                                # %if.then.183
                                        #   in Loop: Header=BB3_7 Depth=1
	movabsq	$.L.str.27, %rdi
	callq	perror
	jmp	.LBB3_56
.LBB3_51:                               # %if.end.184
                                        #   in Loop: Header=BB3_43 Depth=2
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	movl	rs, %eax
	addl	-60(%rbp), %eax
	movl	%eax, -60(%rbp)
	cvtsi2ssl	-60(%rbp), %xmm1
	cvtsi2ssl	-64(%rbp), %xmm2
	divss	%xmm2, %xmm1
	cvtss2sd	%xmm1, %xmm1
	divsd	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	$0, rp
	cmpl	$0, rs
	movl	%eax, -228(%rbp)        # 4-byte Spill
	jne	.LBB3_53
# BB#52:                                # %if.then.194
	jmp	.LBB3_84
.LBB3_53:                               # %if.end.195
                                        #   in Loop: Header=BB3_43 Depth=2
	jmp	.LBB3_54
.LBB3_54:                               # %if.end.196
                                        #   in Loop: Header=BB3_43 Depth=2
	jmp	.LBB3_55
.LBB3_55:                               # %if.end.197
                                        #   in Loop: Header=BB3_43 Depth=2
	jmp	.LBB3_43
.LBB3_56:                               # %while.end.198
                                        #   in Loop: Header=BB3_7 Depth=1
	movl	-32(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -32(%rbp)
	movl	-28(%rbp), %eax
	sarl	$1, %eax
	movl	%eax, -28(%rbp)
	movl	$0, -52(%rbp)
	cmpl	$0, -108(%rbp)
	jne	.LBB3_58
# BB#57:                                # %if.then.203
                                        #   in Loop: Header=BB3_7 Depth=1
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB3_67
.LBB3_58:                               # %if.else.205
                                        #   in Loop: Header=BB3_7 Depth=1
	movl	-108(%rbp), %eax
	cmpl	-112(%rbp), %eax
	jle	.LBB3_61
# BB#59:                                # %land.lhs.true
                                        #   in Loop: Header=BB3_7 Depth=1
	cmpl	$1728, -108(%rbp)       # imm = 0x6C0
	jg	.LBB3_61
# BB#60:                                # %if.then.210
                                        #   in Loop: Header=BB3_7 Depth=1
	movl	-108(%rbp), %eax
	movl	%eax, -112(%rbp)
.LBB3_61:                               # %if.end.211
                                        #   in Loop: Header=BB3_7 Depth=1
	movl	-100(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -100(%rbp)
	movl	-100(%rbp), %eax
	cmpl	-104(%rbp), %eax
	jl	.LBB3_66
# BB#62:                                # %if.then.215
                                        #   in Loop: Header=BB3_7 Depth=1
	movl	$8, %eax
	movq	-88(%rbp), %rdi
	movl	-104(%rbp), %ecx
	addl	$500, %ecx              # imm = 0x1F4
	movl	%ecx, -104(%rbp)
	imull	$1728, %ecx, %ecx       # imm = 0x6C0
	movl	%eax, -232(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-232(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movslq	%eax, %rsi
	callq	g_try_realloc
	movq	%rax, -120(%rbp)
	cmpq	$0, -120(%rbp)
	jne	.LBB3_64
# BB#63:                                # %if.then.224
                                        #   in Loop: Header=BB3_7 Depth=1
	movabsq	$.L.str.28, %rdi
	callq	perror
	movl	$0, rs
	jmp	.LBB3_65
.LBB3_64:                               # %if.else.225
                                        #   in Loop: Header=BB3_7 Depth=1
	xorl	%esi, %esi
	movl	$8, %eax
	movq	-120(%rbp), %rcx
	movq	%rcx, -88(%rbp)
	imull	$1728, -100(%rbp), %edx # imm = 0x6C0
	movl	%eax, -236(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-236(%rbp), %edi        # 4-byte Reload
	idivl	%edi
	movslq	%eax, %rcx
	addq	-88(%rbp), %rcx
	movl	-104(%rbp), %eax
	subl	-100(%rbp), %eax
	imull	$1728, %eax, %eax       # imm = 0x6C0
	cltd
	idivl	%edi
	movslq	%eax, %r8
	movq	%rcx, %rdi
	movq	%r8, %rdx
	callq	memset
.LBB3_65:                               # %if.end.234
                                        #   in Loop: Header=BB3_7 Depth=1
	jmp	.LBB3_66
.LBB3_66:                               # %if.end.235
                                        #   in Loop: Header=BB3_7 Depth=1
	movl	$8, %eax
	movl	$0, -108(%rbp)
	imull	$1728, -100(%rbp), %ecx # imm = 0x6C0
	movl	%eax, -240(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-240(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movslq	%eax, %rsi
	addq	-88(%rbp), %rsi
	movq	%rsi, -96(%rbp)
	movl	$0, -68(%rbp)
.LBB3_67:                               # %if.end.240
                                        #   in Loop: Header=BB3_7 Depth=1
	jmp	.LBB3_82
.LBB3_68:                               # %if.else.241
                                        #   in Loop: Header=BB3_7 Depth=1
	movl	-108(%rbp), %eax
	addl	-44(%rbp), %eax
	cmpl	$1728, %eax             # imm = 0x6C0
	jle	.LBB3_70
# BB#69:                                # %if.then.245
                                        #   in Loop: Header=BB3_7 Depth=1
	movl	$1728, %eax             # imm = 0x6C0
	subl	-108(%rbp), %eax
	movl	%eax, -44(%rbp)
.LBB3_70:                               # %if.end.247
                                        #   in Loop: Header=BB3_7 Depth=1
	cmpl	$0, -52(%rbp)
	jne	.LBB3_72
# BB#71:                                # %if.then.250
                                        #   in Loop: Header=BB3_7 Depth=1
	movl	-44(%rbp), %eax
	addl	-108(%rbp), %eax
	movl	%eax, -108(%rbp)
	jmp	.LBB3_79
.LBB3_72:                               # %if.else.252
                                        #   in Loop: Header=BB3_7 Depth=1
	movl	$128, %eax
	movl	-108(%rbp), %ecx
	andl	$7, %ecx
                                        # kill: CL<def> ECX<kill>
	sarl	%cl, %eax
	movl	%eax, -124(%rbp)
	movl	-108(%rbp), %eax
	sarl	$3, %eax
	movslq	%eax, %rdx
	addq	-96(%rbp), %rdx
	movq	%rdx, -136(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, -56(%rbp)
.LBB3_73:                               # %for.cond
                                        #   Parent Loop BB3_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$0, -56(%rbp)
	jle	.LBB3_78
# BB#74:                                # %for.body
                                        #   in Loop: Header=BB3_73 Depth=2
	movl	-124(%rbp), %eax
	movq	-136(%rbp), %rcx
	movsbl	(%rcx), %edx
	orl	%eax, %edx
	movb	%dl, %sil
	movb	%sil, (%rcx)
	movl	-124(%rbp), %eax
	sarl	$1, %eax
	movl	%eax, -124(%rbp)
	cmpl	$0, -124(%rbp)
	jne	.LBB3_76
# BB#75:                                # %if.then.266
                                        #   in Loop: Header=BB3_73 Depth=2
	movl	$128, -124(%rbp)
	movq	-136(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -136(%rbp)
.LBB3_76:                               # %if.end.267
                                        #   in Loop: Header=BB3_73 Depth=2
	movl	-108(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -108(%rbp)
# BB#77:                                # %for.inc
                                        #   in Loop: Header=BB3_73 Depth=2
	movl	-56(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB3_73
.LBB3_78:                               # %for.end
                                        #   in Loop: Header=BB3_7 Depth=1
	jmp	.LBB3_79
.LBB3_79:                               # %if.end.270
                                        #   in Loop: Header=BB3_7 Depth=1
	cmpl	$64, -44(%rbp)
	jge	.LBB3_81
# BB#80:                                # %if.then.273
                                        #   in Loop: Header=BB3_7 Depth=1
	cmpl	$0, -52(%rbp)
	setne	%al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -52(%rbp)
.LBB3_81:                               # %if.end.276
                                        #   in Loop: Header=BB3_7 Depth=1
	jmp	.LBB3_82
.LBB3_82:                               # %if.end.277
                                        #   in Loop: Header=BB3_7 Depth=1
	jmp	.LBB3_7
.LBB3_83:                               # %while.end.278
	jmp	.LBB3_84
.LBB3_84:                               # %do_write
	cmpl	$0, -48(%rbp)
	je	.LBB3_86
# BB#85:                                # %if.then.281
	movl	-48(%rbp), %edi
	callq	close
	movl	%eax, -244(%rbp)        # 4-byte Spill
.LBB3_86:                               # %if.end.283
	movl	-112(%rbp), %edi
	movl	-100(%rbp), %esi
	movq	-88(%rbp), %rdx
	movl	-76(%rbp), %ecx
	movq	-16(%rbp), %r8
	callq	emitgimp
	movl	%eax, -72(%rbp)
	movq	-88(%rbp), %rdi
	callq	g_free
	movl	-72(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB3_87:                               # %return
	movl	-4(%rbp), %eax
	addq	$256, %rsp              # imm = 0x100
	popq	%rbp
	retq
.Lfunc_end3:
	.size	load_image, .Lfunc_end3-load_image
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4636737291354636288     # double 100
.LCPI4_1:
	.quad	4607182418800017408     # double 1
.LCPI4_2:
	.quad	4602678819172646912     # double 0.5
.LCPI4_3:
	.quad	4611686018427387904     # double 2
	.text
	.align	16, 0x90
	.type	emitgimp,@function
emitgimp:                               # @emitgimp
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp15:
	.cfi_def_cfa_offset 16
.Ltmp16:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp17:
	.cfi_def_cfa_register %rbp
	subq	$176, %rsp
	movl	$1, %eax
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	%r8, -32(%rbp)
	movb	$0, -105(%rbp)
	movl	-4(%rbp), %edi
	movl	-8(%rbp), %esi
	movl	%eax, %edx
	callq	gimp_image_new
	movl	%eax, -92(%rbp)
	movl	-92(%rbp), %edi
	movq	-32(%rbp), %rsi
	callq	gimp_image_set_filename
	movabsq	$.L.str.29, %rdi
	movl	-92(%rbp), %ecx
	movl	%eax, -132(%rbp)        # 4-byte Spill
	movl	%ecx, -136(%rbp)        # 4-byte Spill
	callq	gettext
	movl	$2, %r8d
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	xorl	%r9d, %r9d
	movl	-4(%rbp), %edx
	movl	-8(%rbp), %ecx
	movl	-136(%rbp), %edi        # 4-byte Reload
	movq	%rax, %rsi
	callq	gimp_layer_new
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	xorl	%ecx, %ecx
	movl	%eax, -96(%rbp)
	movl	-92(%rbp), %edi
	movl	-96(%rbp), %esi
	callq	gimp_image_insert_layer
	movl	-96(%rbp), %edi
	movl	%eax, -140(%rbp)        # 4-byte Spill
	callq	gimp_drawable_get
	leaq	-80(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rsi
	movq	-88(%rbp), %rax
	movl	4(%rax), %r8d
	movq	-88(%rbp), %rax
	movl	8(%rax), %r9d
	movl	%edx, -144(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	$1, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	callq	gimp_tile_height
	movl	$1, %ecx
	movl	%ecx, %esi
	movl	%eax, -128(%rbp)
	movl	-4(%rbp), %eax
	imull	-128(%rbp), %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	movq	%rax, -104(%rbp)
	movl	$0, -120(%rbp)
	movl	$0, -124(%rbp)
	movl	$0, -116(%rbp)
.LBB4_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_3 Depth 2
	movl	-116(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jge	.LBB4_12
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	$0, -112(%rbp)
.LBB4_3:                                # %for.cond.14
                                        #   Parent Loop BB4_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-112(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	.LBB4_8
# BB#4:                                 # %for.body.17
                                        #   in Loop: Header=BB4_3 Depth=2
	movl	-112(%rbp), %eax
	andl	$7, %eax
	cmpl	$0, %eax
	jne	.LBB4_6
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB4_3 Depth=2
	movl	-116(%rbp), %eax
	imull	-20(%rbp), %eax
	movl	-112(%rbp), %ecx
	sarl	$3, %ecx
	addl	%ecx, %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rsi
	movb	(%rsi,%rdx), %dil
	movb	%dil, -105(%rbp)
.LBB4_6:                                # %if.end
                                        #   in Loop: Header=BB4_3 Depth=2
	movl	$255, %eax
	xorl	%ecx, %ecx
	movl	$128, %edx
	movzbl	-105(%rbp), %esi
	movl	-112(%rbp), %edi
	andl	$7, %edi
	movl	%ecx, -148(%rbp)        # 4-byte Spill
	movl	%edi, %ecx
                                        # kill: CL<def> ECX<kill>
	sarl	%cl, %edx
	andl	%edx, %esi
	cmpl	$0, %esi
	movl	-148(%rbp), %edx        # 4-byte Reload
	cmovnel	%edx, %eax
	movb	%al, %cl
	movl	-120(%rbp), %eax
	movl	%eax, %esi
	addl	$1, %esi
	movl	%esi, -120(%rbp)
	movslq	%eax, %r8
	movq	-104(%rbp), %r9
	movb	%cl, (%r9,%r8)
# BB#7:                                 # %for.inc
                                        #   in Loop: Header=BB4_3 Depth=2
	movl	-112(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -112(%rbp)
	jmp	.LBB4_3
.LBB4_8:                                # %for.end
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-116(%rbp), %eax
	subl	-124(%rbp), %eax
	movl	-128(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jne	.LBB4_10
# BB#9:                                 # %if.then.32
                                        #   in Loop: Header=BB4_1 Depth=1
	leaq	-80(%rbp), %rdi
	xorl	%edx, %edx
	movq	-104(%rbp), %rsi
	movl	-124(%rbp), %ecx
	movl	-4(%rbp), %r8d
	movl	-128(%rbp), %r9d
	callq	gimp_pixel_rgn_set_rect
	movsd	.LCPI4_2, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI4_3, %xmm1         # xmm1 = mem[0],zero
	cvtsi2ssl	-116(%rbp), %xmm2
	cvtsi2ssl	-8(%rbp), %xmm3
	divss	%xmm3, %xmm2
	cvtss2sd	%xmm2, %xmm2
	divsd	%xmm1, %xmm2
	addsd	%xmm2, %xmm0
	callq	gimp_progress_update
	movl	$0, -120(%rbp)
	movl	-128(%rbp), %ecx
	addl	-124(%rbp), %ecx
	movl	%ecx, -124(%rbp)
	movl	%eax, -152(%rbp)        # 4-byte Spill
.LBB4_10:                               # %if.end.40
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_11
.LBB4_11:                               # %for.inc.41
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-116(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -116(%rbp)
	jmp	.LBB4_1
.LBB4_12:                               # %for.end.43
	movl	-8(%rbp), %eax
	subl	-124(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB4_14
# BB#13:                                # %if.then.46
	leaq	-80(%rbp), %rdi
	xorl	%edx, %edx
	movq	-104(%rbp), %rsi
	movl	-124(%rbp), %ecx
	movl	-4(%rbp), %r8d
	movl	-8(%rbp), %eax
	subl	-124(%rbp), %eax
	movl	%eax, %r9d
	callq	gimp_pixel_rgn_set_rect
.LBB4_14:                               # %if.end.48
	movsd	.LCPI4_1, %xmm0         # xmm0 = mem[0],zero
	callq	gimp_progress_update
	movq	-104(%rbp), %rdi
	movl	%eax, -156(%rbp)        # 4-byte Spill
	callq	g_free
	movq	-88(%rbp), %rdi
	callq	gimp_drawable_flush
	movl	-92(%rbp), %eax
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	emitgimp, .Lfunc_end4-emitgimp
	.cfi_endproc

	.type	PLUG_IN_INFO,@object    # @PLUG_IN_INFO
	.section	.rodata,"a",@progbits
	.globl	PLUG_IN_INFO
	.align	8
PLUG_IN_INFO:
	.quad	0
	.quad	0
	.quad	query
	.quad	run
	.size	PLUG_IN_INFO, 32

	.type	black,@object           # @black
	.bss
	.globl	black
	.align	8
black:
	.quad	0
	.size	black, 8

	.type	white,@object           # @white
	.globl	white
	.align	8
white:
	.quad	0
	.size	white, 8

	.type	query.load_args,@object # @query.load_args
	.section	.rodata,"a",@progbits
	.align	16
query.load_args:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str
	.quad	.L.str.1
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.2
	.quad	.L.str.3
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.4
	.quad	.L.str.3
	.size	query.load_args, 72

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"run-mode"
	.size	.L.str, 9

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }"
	.size	.L.str.1, 61

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"filename"
	.size	.L.str.2, 9

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"The name of the file to load"
	.size	.L.str.3, 29

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"raw-filename"
	.size	.L.str.4, 13

	.type	query.load_return_vals,@object # @query.load_return_vals
	.section	.rodata,"a",@progbits
	.align	16
query.load_return_vals:
	.long	13                      # 0xd
	.zero	4
	.quad	.L.str.5
	.quad	.L.str.6
	.size	query.load_return_vals, 24

	.type	.L.str.5,@object        # @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"image"
	.size	.L.str.5, 6

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Output image"
	.size	.L.str.6, 13

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"file-faxg3-load"
	.size	.L.str.7, 16

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"loads g3 fax files"
	.size	.L.str.8, 19

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"This plug-in loads Fax G3 Image files."
	.size	.L.str.9, 39

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Jochen Friedrich"
	.size	.L.str.10, 17

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Jochen Friedrich, Gert Doering, Spencer Kimball & Peter Mattis"
	.size	.L.str.11, 63

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"0.6"
	.size	.L.str.12, 4

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"G3 fax image"
	.size	.L.str.13, 13

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"image/g3-fax"
	.size	.L.str.14, 13

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"g3"
	.size	.L.str.15, 3

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.zero	1
	.size	.L.str.16, 1

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"4,string,Research"
	.size	.L.str.17, 18

	.type	run.values,@object      # @run.values
	.local	run.values
	.comm	run.values,80,16
	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"gimp20-std-plug-ins"
	.size	.L.str.18, 20

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"UTF-8"
	.size	.L.str.19, 6

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"Opening '%s'"
	.size	.L.str.20, 13

	.type	byte_tab,@object        # @byte_tab
	.local	byte_tab
	.comm	byte_tab,1024,16
	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Could not open '%s' for reading: %s"
	.size	.L.str.21, 36

	.type	rbuf,@object            # @rbuf
	.local	rbuf
	.comm	rbuf,2048,16
	.type	rs,@object              # @rs
	.local	rs
	.comm	rs,4,4
	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"read"
	.size	.L.str.22, 5

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"PC Research, Inc"
	.size	.L.str.23, 17

	.type	rp,@object              # @rp
	.local	rp
	.comm	rp,4,4
	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"read2"
	.size	.L.str.24, 6

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"invalid code, row=%d, col=%d, file offset=%lx, skip to eol\n"
	.size	.L.str.25, 60

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"read4"
	.size	.L.str.26, 6

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"read3"
	.size	.L.str.27, 6

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"realloc() failed, page truncated"
	.size	.L.str.28, 33

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"Background"
	.size	.L.str.29, 11


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
