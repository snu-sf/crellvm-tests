	.text
	.file	"ico.bc"
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
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$184, %rsp
.Ltmp3:
	.cfi_offset %rbx, -56
.Ltmp4:
	.cfi_offset %r12, -48
.Ltmp5:
	.cfi_offset %r13, -40
.Ltmp6:
	.cfi_offset %r14, -32
.Ltmp7:
	.cfi_offset %r15, -24
	movabsq	$.L.str.21, %rdi
	movabsq	$.L.str.22, %rax
	movabsq	$.L.str.23, %rcx
	movabsq	$.L.str.24, %r9
	movabsq	$.L.str.25, %rdx
	xorl	%esi, %esi
	movl	%esi, %r8d
	movl	$1, %esi
	movl	$3, %r10d
	movabsq	$query.load_args, %r11
	movabsq	$query.load_return_vals, %rbx
	movl	%esi, -44(%rbp)         # 4-byte Spill
	movq	%rax, %rsi
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	%r8, -72(%rbp)          # 8-byte Spill
	movq	%rax, %r8
	movq	-56(%rbp), %r14         # 8-byte Reload
	movq	%r14, (%rsp)
	movq	$0, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$3, 24(%rsp)
	movl	$1, 32(%rsp)
	movq	%r11, 40(%rsp)
	movq	%rbx, 48(%rsp)
	movl	%r10d, -76(%rbp)        # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.21, %rdi
	movabsq	$.L.str.26, %rsi
	callq	gimp_register_file_handler_mime
	movabsq	$.L.str.21, %rdi
	movabsq	$.L.str.27, %rsi
	movabsq	$.L.str.28, %rdx
	movabsq	$.L.str.29, %rcx
	movl	%eax, -80(%rbp)         # 4-byte Spill
	callq	gimp_register_magic_load_handler
	movabsq	$.L.str.30, %rdi
	movabsq	$.L.str.31, %rsi
	movabsq	$.L.str.28, %rdx
	movabsq	$.L.str.32, %rcx
	movabsq	$.L.str.33, %r8
	movabsq	$.L.str.34, %r9
	xorl	%r10d, %r10d
	movl	%r10d, %r11d
	movl	$1, %r10d
	movl	$2, %r15d
	movl	$3, %r12d
	movabsq	$query.thumb_args, %rbx
	movabsq	$query.thumb_return_vals, %r14
	movq	$0, (%rsp)
	movq	$0, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$2, 24(%rsp)
	movl	$3, 32(%rsp)
	movq	%rbx, 40(%rsp)
	movq	%r14, 48(%rsp)
	movl	%eax, -84(%rbp)         # 4-byte Spill
	movl	%r10d, -88(%rbp)        # 4-byte Spill
	movq	%r11, -96(%rbp)         # 8-byte Spill
	movl	%r12d, -100(%rbp)       # 4-byte Spill
	movl	%r15d, -104(%rbp)       # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.21, %rdi
	movabsq	$.L.str.30, %rsi
	callq	gimp_register_thumbnail_loader
	movabsq	$.L.str.35, %rdi
	movabsq	$.L.str.36, %rcx
	movabsq	$.L.str.23, %rdx
	movabsq	$.L.str.24, %r9
	movabsq	$.L.str.25, %rsi
	movabsq	$.L.str.37, %r8
	movl	$1, %r10d
	movl	$5, %r15d
	xorl	%r12d, %r12d
	movabsq	$query.save_args, %r11
	xorl	%r13d, %r13d
	movl	%r13d, %ebx
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	movq	%rcx, %rsi
	movq	%rdx, -120(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-120(%rbp), %rcx        # 8-byte Reload
	movq	-120(%rbp), %r14        # 8-byte Reload
	movq	%r8, -128(%rbp)         # 8-byte Spill
	movq	%r14, %r8
	movq	-112(%rbp), %r14        # 8-byte Reload
	movq	%r14, (%rsp)
	movq	-128(%rbp), %r14        # 8-byte Reload
	movq	%r14, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$5, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%r11, 40(%rsp)
	movq	$0, 48(%rsp)
	movl	%eax, -132(%rbp)        # 4-byte Spill
	movq	%rbx, -144(%rbp)        # 8-byte Spill
	movl	%r12d, -148(%rbp)       # 4-byte Spill
	movl	%r15d, -152(%rbp)       # 4-byte Spill
	movl	%r10d, -156(%rbp)       # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.35, %rdi
	movabsq	$.L.str.26, %rsi
	callq	gimp_register_file_handler_mime
	movabsq	$.L.str.35, %rdi
	movabsq	$.L.str.27, %rsi
	movabsq	$.L.str.28, %rdx
	movl	%eax, -160(%rbp)        # 4-byte Spill
	callq	gimp_register_save_handler
	movl	%eax, -164(%rbp)        # 4-byte Spill
	addq	$184, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
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
.Ltmp8:
	.cfi_def_cfa_offset 16
.Ltmp9:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp10:
	.cfi_def_cfa_register %rbp
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	$3, -48(%rbp)
	movl	$0, -52(%rbp)
	movq	$0, -64(%rbp)
# BB#1:                                 # %do.body
	callq	gimp_locale_directory
	movabsq	$.L.str.38, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.38, %rdi
	movabsq	$.L.str.39, %rsi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.38, %rdi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	textdomain
	movq	%rax, -136(%rbp)        # 8-byte Spill
# BB#2:                                 # %do.end
	movabsq	$run.values, %rax
	movq	-24(%rbp), %rcx
	movl	8(%rcx), %edx
	movl	%edx, -44(%rbp)
	movq	-32(%rbp), %rcx
	movl	$1, (%rcx)
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	$21, run.values
	movl	$0, run.values+8
	movq	-8(%rbp), %rdi
	movl	$.L.str.21, %edx
	movl	%edx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_15
# BB#3:                                 # %if.then
	movl	-44(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -140(%rbp)        # 4-byte Spill
	je	.LBB1_4
	jmp	.LBB1_45
.LBB1_45:                               # %if.then
	movl	-140(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -144(%rbp)        # 4-byte Spill
	je	.LBB1_5
	jmp	.LBB1_8
.LBB1_4:                                # %sw.bb
	jmp	.LBB1_9
.LBB1_5:                                # %sw.bb.5
	cmpl	$3, -12(%rbp)
	je	.LBB1_7
# BB#6:                                 # %if.then.7
	movl	$1, -48(%rbp)
.LBB1_7:                                # %if.end
	jmp	.LBB1_9
.LBB1_8:                                # %sw.default
	jmp	.LBB1_9
.LBB1_9:                                # %sw.epilog
	cmpl	$3, -48(%rbp)
	jne	.LBB1_14
# BB#10:                                # %if.then.9
	leaq	-64(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	48(%rax), %rdi
	callq	ico_load_image
	movl	%eax, -68(%rbp)
	cmpl	$-1, -68(%rbp)
	je	.LBB1_12
# BB#11:                                # %if.then.14
	movq	-32(%rbp), %rax
	movl	$2, (%rax)
	movl	$13, run.values+40
	movl	-68(%rbp), %ecx
	movl	%ecx, run.values+48
	jmp	.LBB1_13
.LBB1_12:                               # %if.else
	movl	$0, -48(%rbp)
.LBB1_13:                               # %if.end.15
	jmp	.LBB1_14
.LBB1_14:                               # %if.end.16
	jmp	.LBB1_39
.LBB1_15:                               # %if.else.17
	movq	-8(%rbp), %rdi
	movl	$.L.str.30, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_23
# BB#16:                                # %if.then.20
	cmpl	$2, -12(%rbp)
	jge	.LBB1_18
# BB#17:                                # %if.then.22
	movl	$1, -48(%rbp)
	jmp	.LBB1_22
.LBB1_18:                               # %if.else.23
	leaq	-84(%rbp), %rsi
	leaq	-88(%rbp), %rdx
	leaq	-64(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-24(%rbp), %rax
	movl	48(%rax), %edi
	movl	%edi, -84(%rbp)
	movq	-24(%rbp), %rax
	movl	48(%rax), %edi
	movl	%edi, -88(%rbp)
	movq	-80(%rbp), %rdi
	callq	ico_load_thumbnail_image
	movl	%eax, -92(%rbp)
	cmpl	$-1, -92(%rbp)
	je	.LBB1_20
# BB#19:                                # %if.then.36
	movq	-32(%rbp), %rax
	movl	$4, (%rax)
	movl	$13, run.values+40
	movl	-92(%rbp), %ecx
	movl	%ecx, run.values+48
	movl	$0, run.values+80
	movl	-84(%rbp), %ecx
	movl	%ecx, run.values+88
	movl	$0, run.values+120
	movl	-88(%rbp), %ecx
	movl	%ecx, run.values+128
	jmp	.LBB1_21
.LBB1_20:                               # %if.else.37
	movl	$0, -48(%rbp)
.LBB1_21:                               # %if.end.38
	jmp	.LBB1_22
.LBB1_22:                               # %if.end.39
	jmp	.LBB1_38
.LBB1_23:                               # %if.else.40
	movq	-8(%rbp), %rdi
	movl	$.L.str.35, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_36
# BB#24:                                # %if.then.43
	movq	-24(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -108(%rbp)
	movq	-24(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -104(%rbp)
	movl	-44(%rbp), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -148(%rbp)        # 4-byte Spill
	je	.LBB1_25
	jmp	.LBB1_43
.LBB1_43:                               # %if.then.43
	movl	-148(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -152(%rbp)        # 4-byte Spill
	je	.LBB1_26
	jmp	.LBB1_44
.LBB1_44:                               # %if.then.43
	movl	-148(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -156(%rbp)        # 4-byte Spill
	je	.LBB1_29
	jmp	.LBB1_30
.LBB1_25:                               # %sw.bb.51
	jmp	.LBB1_31
.LBB1_26:                               # %sw.bb.52
	cmpl	$5, -12(%rbp)
	jge	.LBB1_28
# BB#27:                                # %if.then.54
	movl	$1, -48(%rbp)
.LBB1_28:                               # %if.end.55
	jmp	.LBB1_31
.LBB1_29:                               # %sw.bb.56
	jmp	.LBB1_31
.LBB1_30:                               # %sw.default.57
	jmp	.LBB1_31
.LBB1_31:                               # %sw.epilog.58
	cmpl	$3, -48(%rbp)
	jne	.LBB1_33
# BB#32:                                # %if.then.60
	leaq	-64(%rbp), %rcx
	movq	-104(%rbp), %rdi
	movl	-108(%rbp), %esi
	movl	-44(%rbp), %edx
	callq	ico_save_image
	movl	%eax, -48(%rbp)
.LBB1_33:                               # %if.end.62
	cmpl	$2, -52(%rbp)
	jne	.LBB1_35
# BB#34:                                # %if.then.64
	movl	-108(%rbp), %edi
	callq	gimp_image_delete
	movl	%eax, -160(%rbp)        # 4-byte Spill
.LBB1_35:                               # %if.end.66
	jmp	.LBB1_37
.LBB1_36:                               # %if.else.67
	movl	$1, -48(%rbp)
.LBB1_37:                               # %if.end.68
	jmp	.LBB1_38
.LBB1_38:                               # %if.end.69
	jmp	.LBB1_39
.LBB1_39:                               # %if.end.70
	cmpl	$3, -48(%rbp)
	je	.LBB1_42
# BB#40:                                # %land.lhs.true
	cmpq	$0, -64(%rbp)
	je	.LBB1_42
# BB#41:                                # %if.then.72
	movq	-32(%rbp), %rax
	movl	$2, (%rax)
	movl	$4, run.values+40
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, run.values+48
.LBB1_42:                               # %if.end.73
	movl	-48(%rbp), %eax
	movl	%eax, run.values+8
	addq	$160, %rsp
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
.Ltmp11:
	.cfi_def_cfa_offset 16
.Ltmp12:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp13:
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

	.globl	ico_rowstride
	.align	16, 0x90
	.type	ico_rowstride,@function
ico_rowstride:                          # @ico_rowstride
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp14:
	.cfi_def_cfa_offset 16
.Ltmp15:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp16:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movl	%edi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%esi, %edi
	subl	$1, %esi
	movl	%edi, -16(%rbp)         # 4-byte Spill
	movl	%esi, -20(%rbp)         # 4-byte Spill
	je	.LBB3_1
	jmp	.LBB3_17
.LBB3_17:                               # %entry
	movl	-16(%rbp), %eax         # 4-byte Reload
	subl	$4, %eax
	movl	%eax, -24(%rbp)         # 4-byte Spill
	je	.LBB3_4
	jmp	.LBB3_18
.LBB3_18:                               # %entry
	movl	-16(%rbp), %eax         # 4-byte Reload
	subl	$8, %eax
	movl	%eax, -28(%rbp)         # 4-byte Spill
	je	.LBB3_7
	jmp	.LBB3_19
.LBB3_19:                               # %entry
	movl	-16(%rbp), %eax         # 4-byte Reload
	subl	$24, %eax
	movl	%eax, -32(%rbp)         # 4-byte Spill
	je	.LBB3_10
	jmp	.LBB3_20
.LBB3_20:                               # %entry
	movl	-16(%rbp), %eax         # 4-byte Reload
	subl	$32, %eax
	movl	%eax, -36(%rbp)         # 4-byte Spill
	je	.LBB3_13
	jmp	.LBB3_14
.LBB3_1:                                # %sw.bb
	movl	$32, %eax
	movl	-8(%rbp), %ecx
	movl	%eax, -40(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-40(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB3_3
# BB#2:                                 # %if.then
	movl	$8, %eax
	movl	-8(%rbp), %ecx
	movl	%eax, -44(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-44(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	movl	%eax, -4(%rbp)
	jmp	.LBB3_16
.LBB3_3:                                # %if.else
	movl	$32, %eax
	movl	-8(%rbp), %ecx
	movl	%eax, -48(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-48(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	addl	$1, %eax
	shll	$2, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB3_16
.LBB3_4:                                # %sw.bb.2
	movl	$8, %eax
	movl	-8(%rbp), %ecx
	movl	%eax, -52(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-52(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB3_6
# BB#5:                                 # %if.then.5
	movl	$2, %eax
	movl	-8(%rbp), %ecx
	movl	%eax, -56(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-56(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	movl	%eax, -4(%rbp)
	jmp	.LBB3_16
.LBB3_6:                                # %if.else.7
	movl	$8, %eax
	movl	-8(%rbp), %ecx
	movl	%eax, -60(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-60(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	addl	$1, %eax
	shll	$2, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB3_16
.LBB3_7:                                # %sw.bb.11
	movl	$4, %eax
	movl	-8(%rbp), %ecx
	movl	%eax, -64(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-64(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB3_9
# BB#8:                                 # %if.then.14
	movl	-8(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB3_16
.LBB3_9:                                # %if.else.15
	movl	$4, %eax
	movl	-8(%rbp), %ecx
	movl	%eax, -68(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-68(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	addl	$1, %eax
	shll	$2, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB3_16
.LBB3_10:                               # %sw.bb.19
	movl	$4, %eax
	imull	$3, -8(%rbp), %ecx
	movl	%eax, -72(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-72(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB3_12
# BB#11:                                # %if.then.23
	imull	$3, -8(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB3_16
.LBB3_12:                               # %if.else.25
	movl	$4, %eax
	imull	$3, -8(%rbp), %ecx
	movl	%eax, -76(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-76(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	addl	$1, %eax
	shll	$2, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB3_16
.LBB3_13:                               # %sw.bb.30
	movl	-8(%rbp), %eax
	shll	$2, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB3_16
.LBB3_14:                               # %sw.default
	movabsq	$.L.str, %rdi
	movl	-12(%rbp), %esi
	movb	$0, %al
	callq	g_warning
# BB#15:                                # %do.body
	xorl	%eax, %eax
	movl	%eax, %ecx
	movabsq	$.L.str.1, %rsi
	movl	$322, %edx              # imm = 0x142
	movabsq	$.L__func__.ico_rowstride, %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	-88(%rbp), %r8          # 8-byte Reload
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	movq	%r8, %rcx
	movq	-96(%rbp), %r8          # 8-byte Reload
	callq	g_assertion_message_expr
.LBB3_16:                               # %return
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	ico_rowstride, .Lfunc_end3-ico_rowstride
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp17:
	.cfi_def_cfa_offset 16
.Ltmp18:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp19:
	.cfi_def_cfa_register %rbp
	subq	$384, %rsp              # imm = 0x180
	testb	%al, %al
	movaps	%xmm7, -224(%rbp)       # 16-byte Spill
	movaps	%xmm6, -240(%rbp)       # 16-byte Spill
	movaps	%xmm5, -256(%rbp)       # 16-byte Spill
	movaps	%xmm4, -272(%rbp)       # 16-byte Spill
	movaps	%xmm3, -288(%rbp)       # 16-byte Spill
	movaps	%xmm2, -304(%rbp)       # 16-byte Spill
	movaps	%xmm1, -320(%rbp)       # 16-byte Spill
	movaps	%xmm0, -336(%rbp)       # 16-byte Spill
	movq	%rdi, -344(%rbp)        # 8-byte Spill
	movq	%r9, -352(%rbp)         # 8-byte Spill
	movq	%r8, -360(%rbp)         # 8-byte Spill
	movq	%rcx, -368(%rbp)        # 8-byte Spill
	movq	%rdx, -376(%rbp)        # 8-byte Spill
	movq	%rsi, -384(%rbp)        # 8-byte Spill
	je	.LBB4_2
# BB#1:                                 # %entry
	movaps	-336(%rbp), %xmm0       # 16-byte Reload
	movaps	%xmm0, -160(%rbp)
	movaps	-320(%rbp), %xmm1       # 16-byte Reload
	movaps	%xmm1, -144(%rbp)
	movaps	-304(%rbp), %xmm2       # 16-byte Reload
	movaps	%xmm2, -128(%rbp)
	movaps	-288(%rbp), %xmm3       # 16-byte Reload
	movaps	%xmm3, -112(%rbp)
	movaps	-272(%rbp), %xmm4       # 16-byte Reload
	movaps	%xmm4, -96(%rbp)
	movaps	-256(%rbp), %xmm5       # 16-byte Reload
	movaps	%xmm5, -80(%rbp)
	movaps	-240(%rbp), %xmm6       # 16-byte Reload
	movaps	%xmm6, -64(%rbp)
	movaps	-224(%rbp), %xmm7       # 16-byte Reload
	movaps	%xmm7, -48(%rbp)
.LBB4_2:                                # %entry
	movq	-352(%rbp), %rax        # 8-byte Reload
	movq	%rax, -168(%rbp)
	movq	-360(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -176(%rbp)
	movq	-368(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, -184(%rbp)
	movq	-376(%rbp), %rsi        # 8-byte Reload
	movq	%rsi, -192(%rbp)
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rdi, -200(%rbp)
	movq	-344(%rbp), %r8         # 8-byte Reload
	movq	%r8, -8(%rbp)
	leaq	-208(%rbp), %r8
	movq	%r8, -16(%rbp)
	leaq	16(%rbp), %r8
	movq	%r8, -24(%rbp)
	movl	$48, -28(%rbp)
	movl	$8, -32(%rbp)
	movq	-8(%rbp), %rdx
	xorl	%r9d, %r9d
	movl	%r9d, %edi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end4:
	.size	g_warning, .Lfunc_end4-g_warning
	.cfi_endproc

	.globl	ico_alloc_map
	.align	16, 0x90
	.type	ico_alloc_map,@function
ico_alloc_map:                          # @ico_alloc_map
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp20:
	.cfi_def_cfa_offset 16
.Ltmp21:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp22:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movq	%rcx, -24(%rbp)
	movl	$0, -28(%rbp)
	movq	$0, -40(%rbp)
	movl	-4(%rbp), %edi
	movl	-12(%rbp), %esi
	callq	ico_rowstride
	movl	$1, %edx
	movl	%edx, %esi
	imull	-8(%rbp), %eax
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, (%rcx)
	movslq	-28(%rbp), %rdi
	callq	g_malloc0_n
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	ico_alloc_map, .Lfunc_end5-ico_alloc_map
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

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"invalid bitrate: %d\n"
	.size	.L.str, 21

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"ico.c"
	.size	.L.str.1, 6

	.type	.L__func__.ico_rowstride,@object # @__func__.ico_rowstride
.L__func__.ico_rowstride:
	.asciz	"ico_rowstride"
	.size	.L__func__.ico_rowstride, 14

	.type	query.load_args,@object # @query.load_args
	.section	.rodata,"a",@progbits
	.align	16
query.load_args:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.2
	.quad	.L.str.3
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.4
	.quad	.L.str.5
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.6
	.quad	.L.str.7
	.size	query.load_args, 72

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"run-mode"
	.size	.L.str.2, 9

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }"
	.size	.L.str.3, 61

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"filename"
	.size	.L.str.4, 9

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"The name of the file to load"
	.size	.L.str.5, 29

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"raw-filename"
	.size	.L.str.6, 13

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"The name entered"
	.size	.L.str.7, 17

	.type	query.load_return_vals,@object # @query.load_return_vals
	.section	.rodata,"a",@progbits
	.align	16
query.load_return_vals:
	.long	13                      # 0xd
	.zero	4
	.quad	.L.str.8
	.quad	.L.str.9
	.size	query.load_return_vals, 24

	.type	.L.str.8,@object        # @.str.8
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.8:
	.asciz	"image"
	.size	.L.str.8, 6

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Output image"
	.size	.L.str.9, 13

	.type	query.thumb_args,@object # @query.thumb_args
	.section	.rodata,"a",@progbits
	.align	16
query.thumb_args:
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.4
	.quad	.L.str.5
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.10
	.quad	.L.str.11
	.size	query.thumb_args, 48

	.type	.L.str.10,@object       # @.str.10
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.10:
	.asciz	"thumb-size"
	.size	.L.str.10, 11

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Preferred thumbnail size"
	.size	.L.str.11, 25

	.type	query.thumb_return_vals,@object # @query.thumb_return_vals
	.section	.rodata,"a",@progbits
	.align	16
query.thumb_return_vals:
	.long	13                      # 0xd
	.zero	4
	.quad	.L.str.8
	.quad	.L.str.12
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.13
	.quad	.L.str.14
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.15
	.quad	.L.str.16
	.size	query.thumb_return_vals, 72

	.type	.L.str.12,@object       # @.str.12
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.12:
	.asciz	"Thumbnail image"
	.size	.L.str.12, 16

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"image-width"
	.size	.L.str.13, 12

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Width of full-sized image"
	.size	.L.str.14, 26

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"image-height"
	.size	.L.str.15, 13

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Height of full-sized image"
	.size	.L.str.16, 27

	.type	query.save_args,@object # @query.save_args
	.section	.rodata,"a",@progbits
	.align	16
query.save_args:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.2
	.quad	.L.str.3
	.long	13                      # 0xd
	.zero	4
	.quad	.L.str.8
	.quad	.L.str.17
	.long	16                      # 0x10
	.zero	4
	.quad	.L.str.18
	.quad	.L.str.19
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.4
	.quad	.L.str.20
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.6
	.quad	.L.str.7
	.size	query.save_args, 120

	.type	.L.str.17,@object       # @.str.17
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.17:
	.asciz	"Input image"
	.size	.L.str.17, 12

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"drawable"
	.size	.L.str.18, 9

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Drawable to save"
	.size	.L.str.19, 17

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"The name of the file to save the image in"
	.size	.L.str.20, 42

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"file-ico-load"
	.size	.L.str.21, 14

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Loads files of Windows ICO file format"
	.size	.L.str.22, 39

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Christian Kreibich <christian@whoop.org>"
	.size	.L.str.23, 41

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"2002"
	.size	.L.str.24, 5

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Microsoft Windows icon"
	.size	.L.str.25, 23

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"image/x-ico"
	.size	.L.str.26, 12

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"ico"
	.size	.L.str.27, 4

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.zero	1
	.size	.L.str.28, 1

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"0,string,\\000\\001\\000\\000,0,string,\\000\\002\\000\\000"
	.size	.L.str.29, 52

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"file-ico-load-thumb"
	.size	.L.str.30, 20

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"Loads a preview from an Windows ICO file"
	.size	.L.str.31, 41

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"Dom Lachowicz, Sven Neumann"
	.size	.L.str.32, 28

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"Sven Neumann <sven@gimp.org>"
	.size	.L.str.33, 29

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"2005"
	.size	.L.str.34, 5

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"file-ico-save"
	.size	.L.str.35, 14

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"Saves files in Windows ICO file format"
	.size	.L.str.36, 39

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"*"
	.size	.L.str.37, 2

	.type	run.values,@object      # @run.values
	.local	run.values
	.comm	run.values,160,16
	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"gimp20-std-plug-ins"
	.size	.L.str.38, 20

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"UTF-8"
	.size	.L.str.39, 6


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
