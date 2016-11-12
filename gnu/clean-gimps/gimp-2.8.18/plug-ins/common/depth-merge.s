	.text
	.file	"depth-merge.bc"
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
	subq	$104, %rsp
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
	movabsq	$.L.str.22, %rdi
	movabsq	$.L.str.23, %rsi
	movabsq	$.L.str.24, %rdx
	movabsq	$.L.str.25, %rax
	movabsq	$.L.str.26, %r9
	movabsq	$.L.str.27, %rcx
	movabsq	$.L.str.28, %r8
	movl	$1, %r10d
	movl	$11, %r11d
	xorl	%ebx, %ebx
	movabsq	$query.args, %r14
	xorl	%r15d, %r15d
	movl	%r15d, %r12d
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rcx
	movq	%r8, -56(%rbp)          # 8-byte Spill
	movq	%rax, %r8
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-56(%rbp), %r13         # 8-byte Reload
	movq	%r13, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$11, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%r14, 40(%rsp)
	movq	$0, 48(%rsp)
	movq	%r12, -64(%rbp)         # 8-byte Spill
	movl	%ebx, -68(%rbp)         # 4-byte Spill
	movl	%r10d, -72(%rbp)        # 4-byte Spill
	movl	%r11d, -76(%rbp)        # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.22, %rdi
	movabsq	$.L.str.29, %rsi
	callq	gimp_plugin_menu_register
	movl	%eax, -80(%rbp)         # 4-byte Spill
	addq	$104, %rsp
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
	subq	$224, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
# BB#1:                                 # %do.body
	callq	gimp_locale_directory
	movabsq	$.L.str.30, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.30, %rdi
	movabsq	$.L.str.31, %rsi
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.30, %rdi
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	textdomain
	movq	%rax, -184(%rbp)        # 8-byte Spill
# BB#2:                                 # %do.end
	movq	-24(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -44(%rbp)
	movl	$3, -48(%rbp)
	movq	-32(%rbp), %rax
	movl	$1, (%rax)
	movq	-40(%rbp), %rax
	movq	$run.values, (%rax)
	movl	-44(%rbp), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -188(%rbp)        # 4-byte Spill
	je	.LBB1_3
	jmp	.LBB1_29
.LBB1_29:                               # %do.end
	movl	-188(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -192(%rbp)        # 4-byte Spill
	je	.LBB1_8
	jmp	.LBB1_30
.LBB1_30:                               # %do.end
	movl	-188(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -196(%rbp)        # 4-byte Spill
	je	.LBB1_14
	jmp	.LBB1_17
.LBB1_3:                                # %sw.bb
	leaq	-160(%rbp), %rdi
	callq	DepthMerge_initParams
	movabsq	$.L.str.22, %rdi
	leaq	-160(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	leaq	-160(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	88(%rsi), %ecx
	movl	%ecx, -152(%rbp)
	movl	%eax, -200(%rbp)        # 4-byte Spill
	callq	DepthMerge_construct
	cmpl	$0, %eax
	jne	.LBB1_5
# BB#4:                                 # %if.then
	jmp	.LBB1_28
.LBB1_5:                                # %if.end
	leaq	-160(%rbp), %rdi
	callq	DepthMerge_dialog
	cmpl	$0, %eax
	jne	.LBB1_7
# BB#6:                                 # %if.then.11
	movl	$21, run.values
	movl	$3, run.values+8
	jmp	.LBB1_28
.LBB1_7:                                # %if.end.12
	jmp	.LBB1_18
.LBB1_8:                                # %sw.bb.13
	leaq	-160(%rbp), %rdi
	callq	DepthMerge_initParams
	cmpl	$11, -12(%rbp)
	je	.LBB1_10
# BB#9:                                 # %if.then.14
	movl	$1, -48(%rbp)
	jmp	.LBB1_11
.LBB1_10:                               # %if.else
	movq	-24(%rbp), %rax
	movl	88(%rax), %ecx
	movl	%ecx, -152(%rbp)
	movq	-24(%rbp), %rax
	movl	128(%rax), %ecx
	movl	%ecx, -148(%rbp)
	movq	-24(%rbp), %rax
	movl	168(%rax), %ecx
	movl	%ecx, -144(%rbp)
	movq	-24(%rbp), %rax
	movl	208(%rax), %ecx
	movl	%ecx, -140(%rbp)
	movq	-24(%rbp), %rax
	movl	248(%rax), %ecx
	movl	%ecx, -136(%rbp)
	movq	-24(%rbp), %rax
	cvtsd2ss	288(%rax), %xmm0
	movss	%xmm0, -132(%rbp)
	movq	-24(%rbp), %rax
	cvtsd2ss	328(%rax), %xmm0
	movss	%xmm0, -128(%rbp)
	movq	-24(%rbp), %rax
	cvtsd2ss	368(%rax), %xmm0
	movss	%xmm0, -124(%rbp)
	movq	-24(%rbp), %rax
	cvtsd2ss	408(%rax), %xmm0
	movss	%xmm0, -120(%rbp)
.LBB1_11:                               # %if.end.54
	leaq	-160(%rbp), %rdi
	callq	DepthMerge_construct
	cmpl	$0, %eax
	jne	.LBB1_13
# BB#12:                                # %if.then.57
	jmp	.LBB1_28
.LBB1_13:                               # %if.end.58
	jmp	.LBB1_18
.LBB1_14:                               # %sw.bb.59
	leaq	-160(%rbp), %rdi
	callq	DepthMerge_initParams
	movabsq	$.L.str.22, %rdi
	leaq	-160(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	leaq	-160(%rbp), %rdi
	movl	%eax, -204(%rbp)        # 4-byte Spill
	callq	DepthMerge_construct
	cmpl	$0, %eax
	jne	.LBB1_16
# BB#15:                                # %if.then.64
	jmp	.LBB1_28
.LBB1_16:                               # %if.end.65
	jmp	.LBB1_18
.LBB1_17:                               # %sw.default
	movl	$1, -48(%rbp)
.LBB1_18:                               # %sw.epilog
	cmpl	$3, -48(%rbp)
	jne	.LBB1_27
# BB#19:                                # %if.then.68
	movq	-112(%rbp), %rax
	movl	4(%rax), %ecx
	movl	%ecx, -208(%rbp)        # 4-byte Spill
	callq	gimp_tile_width
	movl	-208(%rbp), %ecx        # 4-byte Reload
	addl	%eax, %ecx
	subl	$1, %ecx
	movl	%ecx, -212(%rbp)        # 4-byte Spill
	callq	gimp_tile_width
	movl	-212(%rbp), %ecx        # 4-byte Reload
	movl	%eax, -216(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	xorl	%edx, %edx
	movl	-216(%rbp), %esi        # 4-byte Reload
	divl	%esi
	movl	%eax, %eax
	movl	%eax, %edi
	callq	gimp_tile_cache_ntiles
	leaq	-160(%rbp), %rdi
	callq	DepthMerge_execute
	cmpl	$0, %eax
	jne	.LBB1_21
# BB#20:                                # %if.then.74
	movl	$0, -48(%rbp)
	jmp	.LBB1_26
.LBB1_21:                               # %if.else.75
	cmpl	$1, -44(%rbp)
	je	.LBB1_23
# BB#22:                                # %if.then.78
	callq	gimp_displays_flush
	movl	%eax, -220(%rbp)        # 4-byte Spill
.LBB1_23:                               # %if.end.80
	cmpl	$0, -44(%rbp)
	jne	.LBB1_25
# BB#24:                                # %if.then.83
	movabsq	$.L.str.22, %rdi
	movl	$36, %edx
	leaq	-160(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_set_data
	movl	%eax, -224(%rbp)        # 4-byte Spill
.LBB1_25:                               # %if.end.86
	jmp	.LBB1_26
.LBB1_26:                               # %if.end.87
	jmp	.LBB1_27
.LBB1_27:                               # %if.end.88
	leaq	-160(%rbp), %rdi
	callq	DepthMerge_destroy
	movl	-48(%rbp), %eax
	movl	%eax, run.values+8
.LBB1_28:                               # %return
	addq	$224, %rsp
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

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI3_0:
	.long	1065353216              # float 1
	.text
	.align	16, 0x90
	.type	DepthMerge_initParams,@function
DepthMerge_initParams:                  # @DepthMerge_initParams
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
	movss	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	$-1, 8(%rdi)
	movq	-8(%rbp), %rdi
	movl	$-1, 12(%rdi)
	movq	-8(%rbp), %rdi
	movl	$-1, 16(%rdi)
	movq	-8(%rbp), %rdi
	movl	$-1, 20(%rdi)
	movq	-8(%rbp), %rdi
	movl	$-1, 24(%rdi)
	movq	-8(%rbp), %rdi
	movss	%xmm1, 28(%rdi)
	movq	-8(%rbp), %rdi
	movss	%xmm1, 32(%rdi)
	movq	-8(%rbp), %rdi
	movss	%xmm0, 36(%rdi)
	movq	-8(%rbp), %rdi
	movss	%xmm0, 40(%rdi)
	popq	%rbp
	retq
.Lfunc_end3:
	.size	DepthMerge_initParams, .Lfunc_end3-DepthMerge_initParams
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI4_0:
	.long	1073741824              # float 2
.LCPI4_1:
	.long	1065353216              # float 1
.LCPI4_2:
	.long	3212836864              # float -1
	.text
	.align	16, 0x90
	.type	DepthMerge_construct,@function
DepthMerge_construct:                   # @DepthMerge_construct
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
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	$0, (%rdi)
	movq	-16(%rbp), %rdi
	movl	8(%rdi), %edi
	callq	gimp_drawable_get
	movq	-16(%rbp), %rcx
	movq	%rax, 48(%rcx)
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	movl	(%rax), %edi
	movq	-16(%rbp), %rax
	addq	$88, %rax
	movq	-16(%rbp), %rcx
	addq	$92, %rcx
	movq	-16(%rbp), %rdx
	addq	$96, %rdx
	movq	-16(%rbp), %rsi
	addq	$100, %rsi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movq	%rdx, -32(%rbp)         # 8-byte Spill
	movq	%rcx, %rdx
	movq	-32(%rbp), %rcx         # 8-byte Reload
	movq	-24(%rbp), %r8          # 8-byte Reload
	callq	gimp_drawable_mask_intersect
	cmpl	$0, %eax
	jne	.LBB4_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB4_39
.LBB4_2:                                # %if.end
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_has_alpha
	movq	-16(%rbp), %rcx
	movl	%eax, 104(%rcx)
	movq	-16(%rbp), %rcx
	cmpl	$-1, 12(%rcx)
	jne	.LBB4_4
# BB#3:                                 # %cond.true
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -40(%rbp)         # 8-byte Spill
	jmp	.LBB4_5
.LBB4_4:                                # %cond.false
	movq	-16(%rbp), %rax
	movl	12(%rax), %edi
	callq	gimp_drawable_get
	movq	%rax, -40(%rbp)         # 8-byte Spill
.LBB4_5:                                # %cond.end
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	-16(%rbp), %rcx
	movq	%rax, 56(%rcx)
	movq	-16(%rbp), %rax
	cmpl	$-1, 16(%rax)
	jne	.LBB4_7
# BB#6:                                 # %cond.true.12
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	jmp	.LBB4_8
.LBB4_7:                                # %cond.false.13
	movq	-16(%rbp), %rax
	movl	16(%rax), %edi
	callq	gimp_drawable_get
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB4_8:                                # %cond.end.17
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	-16(%rbp), %rcx
	movq	%rax, 64(%rcx)
	movq	-16(%rbp), %rax
	cmpl	$-1, 20(%rax)
	jne	.LBB4_10
# BB#9:                                 # %cond.true.21
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	jmp	.LBB4_11
.LBB4_10:                               # %cond.false.22
	movq	-16(%rbp), %rax
	movl	20(%rax), %edi
	callq	gimp_drawable_get
	movq	%rax, -56(%rbp)         # 8-byte Spill
.LBB4_11:                               # %cond.end.26
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	-16(%rbp), %rcx
	movq	%rax, 72(%rcx)
	movq	-16(%rbp), %rax
	cmpl	$-1, 24(%rax)
	jne	.LBB4_13
# BB#12:                                # %cond.true.30
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	jmp	.LBB4_14
.LBB4_13:                               # %cond.false.31
	movq	-16(%rbp), %rax
	movl	24(%rax), %edi
	callq	gimp_drawable_get
	movq	%rax, -64(%rbp)         # 8-byte Spill
.LBB4_14:                               # %cond.end.35
	movq	-64(%rbp), %rax         # 8-byte Reload
	movss	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rcx
	movq	%rax, 80(%rcx)
	movq	-16(%rbp), %rax
	movss	28(%rax), %xmm1         # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jbe	.LBB4_16
# BB#15:                                # %cond.true.39
	movss	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -68(%rbp)        # 4-byte Spill
	jmp	.LBB4_20
.LBB4_16:                               # %cond.false.40
	xorps	%xmm0, %xmm0
	movq	-16(%rbp), %rax
	ucomiss	28(%rax), %xmm0
	jbe	.LBB4_18
# BB#17:                                # %cond.true.44
	xorps	%xmm0, %xmm0
	movss	%xmm0, -72(%rbp)        # 4-byte Spill
	jmp	.LBB4_19
.LBB4_18:                               # %cond.false.45
	movq	-16(%rbp), %rax
	movss	28(%rax), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -72(%rbp)        # 4-byte Spill
.LBB4_19:                               # %cond.end.48
	movss	-72(%rbp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -68(%rbp)        # 4-byte Spill
.LBB4_20:                               # %cond.end.50
	movss	-68(%rbp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI4_1, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rax
	movss	%xmm0, 28(%rax)
	movq	-16(%rbp), %rax
	movss	32(%rax), %xmm0         # xmm0 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm0
	jbe	.LBB4_22
# BB#21:                                # %cond.true.56
	movss	.LCPI4_1, %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -76(%rbp)        # 4-byte Spill
	jmp	.LBB4_26
.LBB4_22:                               # %cond.false.57
	movss	.LCPI4_2, %xmm0         # xmm0 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rax
	ucomiss	32(%rax), %xmm0
	jbe	.LBB4_24
# BB#23:                                # %cond.true.61
	movss	.LCPI4_2, %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -80(%rbp)        # 4-byte Spill
	jmp	.LBB4_25
.LBB4_24:                               # %cond.false.62
	movq	-16(%rbp), %rax
	movss	32(%rax), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -80(%rbp)        # 4-byte Spill
.LBB4_25:                               # %cond.end.65
	movss	-80(%rbp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -76(%rbp)        # 4-byte Spill
.LBB4_26:                               # %cond.end.67
	movss	-76(%rbp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI4_1, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rax
	movss	%xmm0, 32(%rax)
	movq	-16(%rbp), %rax
	movss	36(%rax), %xmm0         # xmm0 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm0
	jbe	.LBB4_28
# BB#27:                                # %cond.true.73
	movss	.LCPI4_1, %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -84(%rbp)        # 4-byte Spill
	jmp	.LBB4_32
.LBB4_28:                               # %cond.false.74
	movss	.LCPI4_2, %xmm0         # xmm0 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rax
	ucomiss	36(%rax), %xmm0
	jbe	.LBB4_30
# BB#29:                                # %cond.true.78
	movss	.LCPI4_2, %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -88(%rbp)        # 4-byte Spill
	jmp	.LBB4_31
.LBB4_30:                               # %cond.false.79
	movq	-16(%rbp), %rax
	movss	36(%rax), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -88(%rbp)        # 4-byte Spill
.LBB4_31:                               # %cond.end.82
	movss	-88(%rbp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -84(%rbp)        # 4-byte Spill
.LBB4_32:                               # %cond.end.84
	movss	-84(%rbp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI4_1, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rax
	movss	%xmm0, 36(%rax)
	movq	-16(%rbp), %rax
	movss	40(%rax), %xmm0         # xmm0 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm0
	jbe	.LBB4_34
# BB#33:                                # %cond.true.90
	movss	.LCPI4_1, %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -92(%rbp)        # 4-byte Spill
	jmp	.LBB4_38
.LBB4_34:                               # %cond.false.91
	movss	.LCPI4_2, %xmm0         # xmm0 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rax
	ucomiss	40(%rax), %xmm0
	jbe	.LBB4_36
# BB#35:                                # %cond.true.95
	movss	.LCPI4_2, %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -96(%rbp)        # 4-byte Spill
	jmp	.LBB4_37
.LBB4_36:                               # %cond.false.96
	movq	-16(%rbp), %rax
	movss	40(%rax), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -96(%rbp)        # 4-byte Spill
.LBB4_37:                               # %cond.end.99
	movss	-96(%rbp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -92(%rbp)        # 4-byte Spill
.LBB4_38:                               # %cond.end.101
	movss	-92(%rbp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rax
	movss	%xmm0, 40(%rax)
	movl	$1, -4(%rbp)
.LBB4_39:                               # %return
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	DepthMerge_construct, .Lfunc_end4-DepthMerge_construct
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_0:
	.quad	-4616189618054758400    # double -1
.LCPI5_1:
	.quad	4607182418800017408     # double 1
.LCPI5_2:
	.quad	4562254508917369340     # double 0.001
.LCPI5_3:
	.quad	4576918229304087675     # double 0.01
.LCPI5_4:
	.quad	4611686018427387904     # double 2
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI5_5:
	.long	1056964608              # float 0.5
	.text
	.align	16, 0x90
	.type	DepthMerge_dialog,@function
DepthMerge_dialog:                      # @DepthMerge_dialog
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
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$824, %rsp              # imm = 0x338
.Ltmp23:
	.cfi_offset %rbx, -40
.Ltmp24:
	.cfi_offset %r14, -32
.Ltmp25:
	.cfi_offset %r15, -24
	movl	$1, %eax
	movl	%eax, %ecx
	movl	$64, %eax
	movl	%eax, %esi
	movq	%rdi, -32(%rbp)
	movq	%rcx, %rdi
	callq	g_malloc0_n
	movabsq	$.L.str.32, %rdi
	movl	$1, %esi
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	callq	gimp_ui_init
	movabsq	$.L.str.33, %rdi
	callq	gettext
	movabsq	$.L.str.34, %rsi
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	xorl	%ecx, %ecx
	movabsq	$gimp_standard_help_func, %r8
	movabsq	$.L.str.22, %r9
	movabsq	$.L.str.35, %rdi
	movl	$4294967290, %r10d      # imm = 0xFFFFFFFA
	movabsq	$.L.str.36, %r11
	movl	$4294967291, %ebx       # imm = 0xFFFFFFFB
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$-6, 8(%rsp)
	movq	%r11, 16(%rsp)
	movl	$-5, 24(%rsp)
	movq	$0, 32(%rsp)
	movb	$0, %al
	movl	%ebx, -116(%rbp)        # 4-byte Spill
	movl	%r10d, -120(%rbp)       # 4-byte Spill
	callq	gimp_dialog_new
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rax, 8(%rdx)
	movq	-40(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	movq	-40(%rbp), %rdi
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_window_set_transient
	movl	$1, %edi
	movl	$12, %esi
	callq	gtk_box_new
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-40(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -164(%rbp)        # 4-byte Spill
	movl	-164(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movl	%ecx, %esi
	callq	gtk_box_new
	movq	%rax, -72(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -180(%rbp)        # 4-byte Spill
	movl	-180(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	callq	gtk_frame_new
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gtk_frame_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_frame_set_shadow_type
	movq	-72(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -204(%rbp)        # 4-byte Spill
	movl	-204(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movq	-32(%rbp), %rax
	cmpl	$256, 96(%rax)          # imm = 0x100
	jge	.LBB5_2
# BB#1:                                 # %cond.true
	movq	-32(%rbp), %rax
	movl	96(%rax), %ecx
	movl	%ecx, -208(%rbp)        # 4-byte Spill
	jmp	.LBB5_3
.LBB5_2:                                # %cond.false
	movl	$256, %eax              # imm = 0x100
	movl	%eax, -208(%rbp)        # 4-byte Spill
	jmp	.LBB5_3
.LBB5_3:                                # %cond.end
	movl	-208(%rbp), %eax        # 4-byte Reload
	movq	-32(%rbp), %rcx
	movq	(%rcx), %rcx
	movl	%eax, 24(%rcx)
	movq	-32(%rbp), %rcx
	cmpl	$256, 100(%rcx)         # imm = 0x100
	jge	.LBB5_5
# BB#4:                                 # %cond.true.28
	movq	-32(%rbp), %rax
	movl	100(%rax), %ecx
	movl	%ecx, -212(%rbp)        # 4-byte Spill
	jmp	.LBB5_6
.LBB5_5:                                # %cond.false.30
	movl	$256, %eax              # imm = 0x100
	movl	%eax, -212(%rbp)        # 4-byte Spill
	jmp	.LBB5_6
.LBB5_6:                                # %cond.end.31
	movl	-212(%rbp), %eax        # 4-byte Reload
	movq	-32(%rbp), %rcx
	movq	(%rcx), %rcx
	movl	%eax, 28(%rcx)
	callq	gimp_preview_area_new
	movq	-32(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rax, 16(%rcx)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rdi
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	24(%rax), %esi
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	28(%rax), %edx
	callq	gtk_widget_set_size_request
	movq	-56(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	16(%rcx), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rdi
	callq	gtk_widget_show
	movq	-32(%rbp), %rdi
	callq	DepthMerge_buildPreviewSourceImage
	movl	$8, %edi
	movl	$3, %esi
	xorl	%edx, %edx
	callq	gtk_table_new
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-64(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-64(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movl	$12, %edx
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacing
	movq	-64(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$3, %esi
	movl	$12, %edx
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacing
	movq	-48(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -268(%rbp)        # 4-byte Spill
	movl	-268(%rbp), %ecx        # 4-byte Reload
	movl	-268(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.37, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorps	%xmm0, %xmm0
	movss	.LCPI5_5, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment
	movq	-64(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	$1, %edx
	movl	$4, %r8d
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -292(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-292(%rbp), %r9d        # 4-byte Reload
	movl	%ecx, -296(%rbp)        # 4-byte Spill
	movl	%r9d, %ecx
	movl	-296(%rbp), %r10d       # 4-byte Reload
	movl	%r8d, -300(%rbp)        # 4-byte Spill
	movl	%r10d, %r8d
	movl	$4, (%rsp)
	movl	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	callq	gtk_table_attach
	movq	-80(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$dm_constraint, %rdi
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	callq	gimp_drawable_combo_box_new
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$dialogSource1ChangedCallback, %rsi
	movq	-32(%rbp), %rdi
	movl	12(%rdi), %ecx
	movq	-32(%rbp), %rdi
	movq	%rdi, -320(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -328(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movq	-328(%rbp), %rdx        # 8-byte Reload
	movq	-320(%rbp), %rcx        # 8-byte Reload
	callq	gimp_int_combo_box_connect
	movq	-64(%rbp), %rcx
	movq	%rax, -336(%rbp)        # 8-byte Spill
	movq	%rcx, -344(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r8d
	movl	$3, %ecx
	xorl	%r9d, %r9d
	movl	$5, %r10d
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r8d, %edx
	movl	%r8d, -348(%rbp)        # 4-byte Spill
	movl	%r9d, %r8d
	movl	-348(%rbp), %r9d        # 4-byte Reload
	movl	$5, (%rsp)
	movl	$5, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%r10d, -352(%rbp)       # 4-byte Spill
	callq	gtk_table_attach
	movq	-88(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.38, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorps	%xmm0, %xmm0
	movss	.LCPI5_5, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment
	movq	-64(%rbp), %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	$1, %ecx
	movl	$2, %r9d
	movl	$4, %r8d
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, -372(%rbp)        # 4-byte Spill
	movl	-372(%rbp), %r10d       # 4-byte Reload
	movl	%r8d, -376(%rbp)        # 4-byte Spill
	movl	%r10d, %r8d
	movl	$4, (%rsp)
	movl	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	callq	gtk_table_attach
	movq	-80(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$dm_constraint, %rdi
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	callq	gimp_drawable_combo_box_new
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$dialogDepthMap1ChangedCallback, %rsi
	movq	-32(%rbp), %rdi
	movl	20(%rdi), %ecx
	movq	-32(%rbp), %rdi
	movq	%rdi, -392(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -400(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movq	-400(%rbp), %rdx        # 8-byte Reload
	movq	-392(%rbp), %rcx        # 8-byte Reload
	callq	gimp_int_combo_box_connect
	movq	-64(%rbp), %rcx
	movq	%rax, -408(%rbp)        # 8-byte Spill
	movq	%rcx, -416(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r8d
	movl	$3, %ecx
	movl	$2, %r9d
	movl	$5, %r10d
	xorl	%r11d, %r11d
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r8d, %edx
	movl	$5, (%rsp)
	movl	$5, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%r11d, -420(%rbp)       # 4-byte Spill
	movl	%r10d, -424(%rbp)       # 4-byte Spill
	callq	gtk_table_attach
	movq	-88(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.39, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-432(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorps	%xmm0, %xmm0
	movss	.LCPI5_5, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment
	movq	-64(%rbp), %rax
	movq	%rax, -440(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-440(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	$1, %ecx
	movl	$2, %r8d
	movl	$3, %r9d
	movl	$4, %r10d
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	movl	$4, (%rsp)
	movl	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%r10d, -444(%rbp)       # 4-byte Spill
	callq	gtk_table_attach
	movq	-80(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$dm_constraint, %rdi
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	callq	gimp_drawable_combo_box_new
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -456(%rbp)        # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-456(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$dialogSource2ChangedCallback, %rsi
	movq	-32(%rbp), %rdi
	movl	16(%rdi), %ecx
	movq	-32(%rbp), %rdi
	movq	%rdi, -464(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -472(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movq	-472(%rbp), %rdx        # 8-byte Reload
	movq	-464(%rbp), %rcx        # 8-byte Reload
	callq	gimp_int_combo_box_connect
	movq	-64(%rbp), %rcx
	movq	%rax, -480(%rbp)        # 8-byte Spill
	movq	%rcx, -488(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-488(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	movl	$3, %r8d
	movl	$2, %r9d
	movl	$5, %r10d
	xorl	%r11d, %r11d
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r8d, %ecx
	movl	%r8d, -492(%rbp)        # 4-byte Spill
	movl	%r9d, %r8d
	movl	-492(%rbp), %r9d        # 4-byte Reload
	movl	$5, (%rsp)
	movl	$5, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%r11d, -496(%rbp)       # 4-byte Spill
	movl	%r10d, -500(%rbp)       # 4-byte Spill
	callq	gtk_table_attach
	movq	-88(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.38, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -512(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-512(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorps	%xmm0, %xmm0
	movss	.LCPI5_5, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment
	movq	-64(%rbp), %rax
	movq	%rax, -520(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-520(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	$1, %ecx
	movl	$3, %r8d
	movl	$4, %r9d
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	movl	$4, (%rsp)
	movl	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	callq	gtk_table_attach
	movq	-80(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$dm_constraint, %rdi
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	callq	gimp_drawable_combo_box_new
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -528(%rbp)        # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-528(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$dialogDepthMap2ChangedCallback, %rsi
	movq	-32(%rbp), %rdi
	movl	24(%rdi), %ecx
	movq	-32(%rbp), %rdi
	movq	%rdi, -536(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -544(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movq	-544(%rbp), %rdx        # 8-byte Reload
	movq	-536(%rbp), %rcx        # 8-byte Reload
	callq	gimp_int_combo_box_connect
	movq	-64(%rbp), %rcx
	movq	%rax, -552(%rbp)        # 8-byte Spill
	movq	%rcx, -560(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-560(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	movl	$3, %r8d
	movl	$4, %r9d
	movl	$5, %r10d
	xorl	%r11d, %r11d
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r8d, %ecx
	movl	$5, (%rsp)
	movl	$5, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%r11d, -564(%rbp)       # 4-byte Spill
	movl	%r10d, -568(%rbp)       # 4-byte Spill
	callq	gtk_table_attach
	movq	-88(%rbp), %rdi
	callq	gtk_widget_show
	movq	-64(%rbp), %rax
	movq	%rax, -576(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-576(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.40, %rdi
	movq	%rax, -584(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	$4, %edx
	movl	$6, %r9d
	xorps	%xmm0, %xmm0
	movsd	.LCPI5_4, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI5_2, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI5_3, %xmm4         # xmm4 = mem[0],zero
	movl	$3, %r8d
	movl	$1, %r10d
	xorl	%r11d, %r11d
	movl	%r11d, %esi
	movq	-32(%rbp), %rdi
	cvtss2sd	28(%rdi), %xmm1
	movq	-584(%rbp), %rdi        # 8-byte Reload
	movq	%rsi, -592(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movl	%ecx, -596(%rbp)        # 4-byte Spill
	movq	%rax, %rcx
	movl	-596(%rbp), %r11d       # 4-byte Reload
	movl	%r8d, -600(%rbp)        # 4-byte Spill
	movl	%r11d, %r8d
	movsd	%xmm0, -608(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-608(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	$3, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-608(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-608(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r10d, -612(%rbp)       # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.41, %rsi
	movabsq	$dialogValueScaleUpdateCallback, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	-32(%rbp), %rdi
	addq	$8, %rdi
	addq	$20, %rdi
	movq	%rdi, -624(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-624(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movl	$80, %r9d
	movl	%r9d, %esi
	movq	-96(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -632(%rbp)        # 8-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$.L.str.42, %rsi
	movq	-32(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	g_object_set_data
	movq	-64(%rbp), %rax
	movq	%rax, -640(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-640(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.43, %rdi
	movq	%rax, -648(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	movl	$5, %edx
	movl	$6, %r10d
	movsd	.LCPI5_0, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI5_1, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI5_2, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI5_3, %xmm4         # xmm4 = mem[0],zero
	movl	$3, %r11d
	movl	$1, %ebx
	xorps	%xmm0, %xmm0
	xorl	%r14d, %r14d
	movl	%r14d, %ecx
	movq	-32(%rbp), %rsi
	cvtss2sd	32(%rsi), %xmm5
	movq	-648(%rbp), %rdi        # 8-byte Reload
	movl	%r9d, %esi
	movq	%rcx, -656(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movsd	%xmm0, -664(%rbp)       # 8-byte Spill
	movaps	%xmm5, %xmm0
	movl	$3, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-664(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-664(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r11d, -668(%rbp)       # 4-byte Spill
	movl	%ebx, -672(%rbp)        # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.41, %rsi
	movabsq	$dialogValueScaleUpdateCallback, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	-32(%rbp), %rdi
	addq	$8, %rdi
	addq	$24, %rdi
	movq	%rdi, -680(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-680(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movl	$80, %r9d
	movl	%r9d, %esi
	movq	-96(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -688(%rbp)        # 8-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$.L.str.42, %rsi
	movq	-32(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	g_object_set_data
	movq	-64(%rbp), %rax
	movq	%rax, -696(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-696(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.44, %rdi
	movq	%rax, -704(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	movl	$6, %r10d
	movsd	.LCPI5_0, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI5_1, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI5_2, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI5_3, %xmm4         # xmm4 = mem[0],zero
	movl	$3, %r11d
	movl	$1, %ebx
	xorps	%xmm0, %xmm0
	xorl	%r14d, %r14d
	movl	%r14d, %ecx
	movq	-32(%rbp), %rdx
	cvtss2sd	36(%rdx), %xmm5
	movq	-704(%rbp), %rdi        # 8-byte Reload
	movl	%r9d, %esi
	movl	%r10d, %edx
	movq	%rcx, -712(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movsd	%xmm0, -720(%rbp)       # 8-byte Spill
	movaps	%xmm5, %xmm0
	movl	$3, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-720(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-720(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r11d, -724(%rbp)       # 4-byte Spill
	movl	%ebx, -728(%rbp)        # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.41, %rsi
	movabsq	$dialogValueScaleUpdateCallback, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	-32(%rbp), %rdi
	addq	$8, %rdi
	addq	$28, %rdi
	movq	%rdi, -736(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-736(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movl	$80, %r9d
	movl	%r9d, %esi
	movq	-96(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -744(%rbp)        # 8-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$.L.str.42, %rsi
	movq	-32(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	g_object_set_data
	movq	-64(%rbp), %rax
	movq	%rax, -752(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-752(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.45, %rdi
	movq	%rax, -760(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	movl	$7, %edx
	movl	$6, %r10d
	movsd	.LCPI5_0, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI5_1, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI5_2, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI5_3, %xmm4         # xmm4 = mem[0],zero
	movl	$3, %r11d
	movl	$1, %ebx
	xorps	%xmm0, %xmm0
	xorl	%r14d, %r14d
	movl	%r14d, %ecx
	movq	-32(%rbp), %rsi
	cvtss2sd	40(%rsi), %xmm5
	movq	-760(%rbp), %rdi        # 8-byte Reload
	movl	%r9d, %esi
	movq	%rcx, -768(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movsd	%xmm0, -776(%rbp)       # 8-byte Spill
	movaps	%xmm5, %xmm0
	movl	$3, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-776(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-776(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r11d, -780(%rbp)       # 4-byte Spill
	movl	%ebx, -784(%rbp)        # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.41, %rsi
	movabsq	$dialogValueScaleUpdateCallback, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	-32(%rbp), %rdi
	addq	$8, %rdi
	addq	$32, %rdi
	movq	%rdi, -792(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-792(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movl	$80, %r9d
	movl	%r9d, %esi
	movq	-96(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -800(%rbp)        # 8-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$.L.str.42, %rsi
	movq	-32(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	g_object_set_data
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	$1, (%rax)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rdi
	callq	gtk_widget_show
	movq	-32(%rbp), %rdi
	callq	DepthMerge_updatePreview
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -808(%rbp)        # 8-byte Spill
	callq	gimp_dialog_get_type
	movq	-808(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dialog_run
	cmpl	$-5, %eax
	sete	%r15b
	andb	$1, %r15b
	movzbl	%r15b, %eax
	movl	%eax, -100(%rbp)
	movq	-32(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	8(%rcx), %rdi
	callq	gtk_widget_destroy
	movq	-32(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	$0, 8(%rcx)
	movl	-100(%rbp), %eax
	addq	$824, %rsp              # imm = 0x338
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	DepthMerge_dialog, .Lfunc_end5-DepthMerge_dialog
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	DepthMerge_execute,@function
DepthMerge_execute:                     # @DepthMerge_execute
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp26:
	.cfi_def_cfa_offset 16
.Ltmp27:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp28:
	.cfi_def_cfa_register %rbp
	subq	$384, %rsp              # imm = 0x180
	movabsq	$.L.str.46, %rax
	movq	%rdi, -8(%rbp)
	movl	$0, -308(%rbp)
	movl	$0, -312(%rbp)
	movl	$0, -316(%rbp)
	movl	$0, -320(%rbp)
	movq	%rax, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_progress_init
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	-8(%rbp), %rdi
	movl	96(%rdi), %ecx
	shll	$2, %ecx
	movslq	%ecx, %rdi
	movl	%eax, -324(%rbp)        # 4-byte Spill
	callq	g_malloc_n
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	%rax, -296(%rbp)
	movq	-8(%rbp), %rax
	movl	96(%rax), %ecx
	shll	$2, %ecx
	movslq	%ecx, %rdi
	callq	g_malloc_n
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	%rax, -264(%rbp)
	movq	-8(%rbp), %rax
	movl	96(%rax), %ecx
	shll	$2, %ecx
	movslq	%ecx, %rdi
	callq	g_malloc_n
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	%rax, -272(%rbp)
	movq	-8(%rbp), %rax
	movslq	96(%rax), %rdi
	callq	g_malloc_n
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	%rax, -280(%rbp)
	movq	-8(%rbp), %rax
	movslq	96(%rax), %rdi
	callq	g_malloc_n
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	%rax, -288(%rbp)
	movq	-8(%rbp), %rax
	movl	96(%rax), %ecx
	shll	$2, %ecx
	movslq	%ecx, %rdi
	callq	g_malloc_n
	movq	%rax, -304(%rbp)
	movq	-8(%rbp), %rax
	cmpq	$0, 56(%rax)
	je	.LBB6_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_has_alpha
	leaq	-64(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	%eax, -308(%rbp)
	movq	-8(%rbp), %rdx
	movq	56(%rdx), %rsi
	movq	-8(%rbp), %rdx
	movl	88(%rdx), %edx
	movq	-8(%rbp), %r8
	movl	92(%r8), %eax
	movq	-8(%rbp), %r8
	movl	96(%r8), %r8d
	movq	-8(%rbp), %r9
	movl	100(%r9), %r9d
	movl	%ecx, -328(%rbp)        # 4-byte Spill
	movl	%eax, %ecx
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	jmp	.LBB6_7
.LBB6_2:                                # %if.else
	movl	$0, -12(%rbp)
.LBB6_3:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	96(%rcx), %eax
	jge	.LBB6_6
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB6_3 Depth=1
	movl	-12(%rbp), %eax
	shll	$2, %eax
	movslq	%eax, %rcx
	movq	-264(%rbp), %rdx
	movb	$0, (%rdx,%rcx)
	movl	-12(%rbp), %eax
	shll	$2, %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-264(%rbp), %rdx
	movb	$0, (%rdx,%rcx)
	movl	-12(%rbp), %eax
	shll	$2, %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	-264(%rbp), %rdx
	movb	$0, (%rdx,%rcx)
	movl	-12(%rbp), %eax
	shll	$2, %eax
	addl	$3, %eax
	movslq	%eax, %rcx
	movq	-264(%rbp), %rdx
	movb	$-1, (%rdx,%rcx)
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB6_3 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB6_3
.LBB6_6:                                # %for.end
	jmp	.LBB6_7
.LBB6_7:                                # %if.end
	movq	-8(%rbp), %rax
	cmpq	$0, 64(%rax)
	je	.LBB6_9
# BB#8:                                 # %if.then.43
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_has_alpha
	leaq	-112(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	%eax, -312(%rbp)
	movq	-8(%rbp), %rdx
	movq	64(%rdx), %rsi
	movq	-8(%rbp), %rdx
	movl	88(%rdx), %edx
	movq	-8(%rbp), %r8
	movl	92(%r8), %eax
	movq	-8(%rbp), %r8
	movl	96(%r8), %r8d
	movq	-8(%rbp), %r9
	movl	100(%r9), %r9d
	movl	%ecx, -332(%rbp)        # 4-byte Spill
	movl	%eax, %ecx
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	jmp	.LBB6_14
.LBB6_9:                                # %if.else.52
	movl	$0, -12(%rbp)
.LBB6_10:                               # %for.cond.53
                                        # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	96(%rcx), %eax
	jge	.LBB6_13
# BB#11:                                # %for.body.57
                                        #   in Loop: Header=BB6_10 Depth=1
	movl	-12(%rbp), %eax
	shll	$2, %eax
	movslq	%eax, %rcx
	movq	-272(%rbp), %rdx
	movb	$0, (%rdx,%rcx)
	movl	-12(%rbp), %eax
	shll	$2, %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-272(%rbp), %rdx
	movb	$0, (%rdx,%rcx)
	movl	-12(%rbp), %eax
	shll	$2, %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	-272(%rbp), %rdx
	movb	$0, (%rdx,%rcx)
	movl	-12(%rbp), %eax
	shll	$2, %eax
	addl	$3, %eax
	movslq	%eax, %rcx
	movq	-272(%rbp), %rdx
	movb	$-1, (%rdx,%rcx)
# BB#12:                                # %for.inc.73
                                        #   in Loop: Header=BB6_10 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB6_10
.LBB6_13:                               # %for.end.75
	jmp	.LBB6_14
.LBB6_14:                               # %if.end.76
	movq	-8(%rbp), %rax
	cmpq	$0, 72(%rax)
	je	.LBB6_16
# BB#15:                                # %if.then.79
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_has_alpha
	leaq	-160(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	%eax, -316(%rbp)
	movq	-8(%rbp), %rdx
	movq	72(%rdx), %rsi
	movq	-8(%rbp), %rdx
	movl	88(%rdx), %edx
	movq	-8(%rbp), %r8
	movl	92(%r8), %eax
	movq	-8(%rbp), %r8
	movl	96(%r8), %r8d
	movq	-8(%rbp), %r9
	movl	100(%r9), %r9d
	movl	%ecx, -336(%rbp)        # 4-byte Spill
	movl	%eax, %ecx
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	jmp	.LBB6_21
.LBB6_16:                               # %if.else.88
	movl	$0, -12(%rbp)
.LBB6_17:                               # %for.cond.89
                                        # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	96(%rcx), %eax
	jge	.LBB6_20
# BB#18:                                # %for.body.93
                                        #   in Loop: Header=BB6_17 Depth=1
	movslq	-12(%rbp), %rax
	movq	-280(%rbp), %rcx
	movb	$0, (%rcx,%rax)
# BB#19:                                # %for.inc.96
                                        #   in Loop: Header=BB6_17 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB6_17
.LBB6_20:                               # %for.end.98
	jmp	.LBB6_21
.LBB6_21:                               # %if.end.99
	movq	-8(%rbp), %rax
	cmpq	$0, 80(%rax)
	je	.LBB6_23
# BB#22:                                # %if.then.102
	movq	-8(%rbp), %rax
	movq	80(%rax), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_has_alpha
	leaq	-208(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	%eax, -320(%rbp)
	movq	-8(%rbp), %rdx
	movq	80(%rdx), %rsi
	movq	-8(%rbp), %rdx
	movl	88(%rdx), %edx
	movq	-8(%rbp), %r8
	movl	92(%r8), %eax
	movq	-8(%rbp), %r8
	movl	96(%r8), %r8d
	movq	-8(%rbp), %r9
	movl	100(%r9), %r9d
	movl	%ecx, -340(%rbp)        # 4-byte Spill
	movl	%eax, %ecx
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	jmp	.LBB6_28
.LBB6_23:                               # %if.else.111
	movl	$0, -12(%rbp)
.LBB6_24:                               # %for.cond.112
                                        # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	96(%rcx), %eax
	jge	.LBB6_27
# BB#25:                                # %for.body.116
                                        #   in Loop: Header=BB6_24 Depth=1
	movslq	-12(%rbp), %rax
	movq	-288(%rbp), %rcx
	movb	$0, (%rcx,%rax)
# BB#26:                                # %for.inc.119
                                        #   in Loop: Header=BB6_24 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB6_24
.LBB6_27:                               # %for.end.121
	jmp	.LBB6_28
.LBB6_28:                               # %if.end.122
	leaq	-256(%rbp), %rdi
	movl	$1, %eax
	movq	-8(%rbp), %rcx
	movq	48(%rcx), %rsi
	movq	-8(%rbp), %rcx
	movl	88(%rcx), %edx
	movq	-8(%rbp), %rcx
	movl	92(%rcx), %ecx
	movq	-8(%rbp), %r8
	movl	96(%r8), %r8d
	movq	-8(%rbp), %r9
	movl	100(%r9), %r9d
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	movl	%eax, -344(%rbp)        # 4-byte Spill
	callq	gimp_pixel_rgn_init
	movq	-8(%rbp), %rsi
	movl	92(%rsi), %eax
	movl	%eax, -16(%rbp)
.LBB6_29:                               # %for.cond.128
                                        # =>This Inner Loop Header: Depth=1
	movl	-16(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	92(%rcx), %edx
	movq	-8(%rbp), %rcx
	addl	100(%rcx), %edx
	cmpl	%edx, %eax
	jge	.LBB6_40
# BB#30:                                # %for.body.134
                                        #   in Loop: Header=BB6_29 Depth=1
	movq	-8(%rbp), %rax
	cmpq	$0, 56(%rax)
	je	.LBB6_32
# BB#31:                                # %if.then.138
                                        #   in Loop: Header=BB6_29 Depth=1
	leaq	-64(%rbp), %rdi
	movq	-304(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	88(%rax), %edx
	movl	-16(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	96(%rax), %r8d
	callq	gimp_pixel_rgn_get_row
	movl	$4, %esi
	movl	$1, %edx
	movq	-264(%rbp), %rdi
	movq	-304(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	movl	12(%rax), %r8d
	movl	-308(%rbp), %r9d
	movq	-8(%rbp), %rax
	movl	96(%rax), %r10d
	movl	%r10d, (%rsp)
	callq	util_convertColorspace
.LBB6_32:                               # %if.end.143
                                        #   in Loop: Header=BB6_29 Depth=1
	movq	-8(%rbp), %rax
	cmpq	$0, 64(%rax)
	je	.LBB6_34
# BB#33:                                # %if.then.147
                                        #   in Loop: Header=BB6_29 Depth=1
	leaq	-112(%rbp), %rdi
	movq	-304(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	88(%rax), %edx
	movl	-16(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	96(%rax), %r8d
	callq	gimp_pixel_rgn_get_row
	movl	$4, %esi
	movl	$1, %edx
	movq	-272(%rbp), %rdi
	movq	-304(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	movl	12(%rax), %r8d
	movl	-312(%rbp), %r9d
	movq	-8(%rbp), %rax
	movl	96(%rax), %r10d
	movl	%r10d, (%rsp)
	callq	util_convertColorspace
.LBB6_34:                               # %if.end.153
                                        #   in Loop: Header=BB6_29 Depth=1
	movq	-8(%rbp), %rax
	cmpq	$0, 72(%rax)
	je	.LBB6_36
# BB#35:                                # %if.then.157
                                        #   in Loop: Header=BB6_29 Depth=1
	leaq	-160(%rbp), %rdi
	movq	-304(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	88(%rax), %edx
	movl	-16(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	96(%rax), %r8d
	callq	gimp_pixel_rgn_get_row
	movl	$1, %esi
	xorl	%edx, %edx
	movq	-280(%rbp), %rdi
	movq	-304(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movl	12(%rax), %r8d
	movl	-316(%rbp), %r9d
	movq	-8(%rbp), %rax
	movl	96(%rax), %r10d
	movl	%r10d, (%rsp)
	callq	util_convertColorspace
.LBB6_36:                               # %if.end.163
                                        #   in Loop: Header=BB6_29 Depth=1
	movq	-8(%rbp), %rax
	cmpq	$0, 80(%rax)
	je	.LBB6_38
# BB#37:                                # %if.then.167
                                        #   in Loop: Header=BB6_29 Depth=1
	leaq	-208(%rbp), %rdi
	movq	-304(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	88(%rax), %edx
	movl	-16(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	96(%rax), %r8d
	callq	gimp_pixel_rgn_get_row
	movl	$1, %esi
	xorl	%edx, %edx
	movq	-288(%rbp), %rdi
	movq	-304(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	80(%rax), %rax
	movl	12(%rax), %r8d
	movl	-320(%rbp), %r9d
	movq	-8(%rbp), %rax
	movl	96(%rax), %r10d
	movl	%r10d, (%rsp)
	callq	util_convertColorspace
.LBB6_38:                               # %if.end.173
                                        #   in Loop: Header=BB6_29 Depth=1
	movq	-8(%rbp), %rdi
	movq	-264(%rbp), %rsi
	movq	-272(%rbp), %rdx
	movq	-280(%rbp), %rcx
	movq	-288(%rbp), %r8
	movq	-296(%rbp), %r9
	movq	-8(%rbp), %rax
	movl	96(%rax), %r10d
	movl	%r10d, (%rsp)
	callq	DepthMerge_executeRegion
	movl	$4, %r8d
	movl	$1, %r9d
	movq	-304(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movl	12(%rax), %esi
	movq	-8(%rbp), %rax
	movl	104(%rax), %edx
	movq	-296(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	96(%rax), %r10d
	movl	%r10d, (%rsp)
	callq	util_convertColorspace
	leaq	-256(%rbp), %rdi
	movq	-304(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	88(%rax), %edx
	movl	-16(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	96(%rax), %r8d
	callq	gimp_pixel_rgn_set_row
	movl	-16(%rbp), %ecx
	movq	-8(%rbp), %rax
	subl	92(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm0
	movq	-8(%rbp), %rax
	movl	100(%rax), %ecx
	subl	$1, %ecx
	cvtsi2sdl	%ecx, %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -348(%rbp)        # 4-byte Spill
# BB#39:                                # %for.inc.186
                                        #   in Loop: Header=BB6_29 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB6_29
.LBB6_40:                               # %for.end.188
	movq	-296(%rbp), %rdi
	callq	g_free
	movq	-264(%rbp), %rdi
	callq	g_free
	movq	-272(%rbp), %rdi
	callq	g_free
	movq	-280(%rbp), %rdi
	callq	g_free
	movq	-288(%rbp), %rdi
	callq	g_free
	movq	-304(%rbp), %rdi
	callq	g_free
	movsd	.LCPI6_0, %xmm0         # xmm0 = mem[0],zero
	callq	gimp_progress_update
	movq	-8(%rbp), %rdi
	movq	48(%rdi), %rdi
	movl	%eax, -352(%rbp)        # 4-byte Spill
	callq	gimp_drawable_flush
	movl	$1, %esi
	movq	-8(%rbp), %rdi
	movq	48(%rdi), %rdi
	movl	(%rdi), %edi
	callq	gimp_drawable_merge_shadow
	movq	-8(%rbp), %rcx
	movq	48(%rcx), %rcx
	movl	(%rcx), %edi
	movq	-8(%rbp), %rcx
	movl	88(%rcx), %esi
	movq	-8(%rbp), %rcx
	movl	92(%rcx), %edx
	movq	-8(%rbp), %rcx
	movl	96(%rcx), %ecx
	movq	-8(%rbp), %r8
	movl	100(%r8), %r8d
	movl	%eax, -356(%rbp)        # 4-byte Spill
	callq	gimp_drawable_update
	movl	$1, %ecx
	movl	%eax, -360(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end6:
	.size	DepthMerge_execute, .Lfunc_end6-DepthMerge_execute
	.cfi_endproc

	.align	16, 0x90
	.type	DepthMerge_destroy,@function
DepthMerge_destroy:                     # @DepthMerge_destroy
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp29:
	.cfi_def_cfa_offset 16
.Ltmp30:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp31:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpq	$0, (%rdi)
	je	.LBB7_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	32(%rax), %rdi
	callq	g_free
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	40(%rax), %rdi
	callq	g_free
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	48(%rax), %rdi
	callq	g_free
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	56(%rax), %rdi
	callq	g_free
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	g_free
.LBB7_2:                                # %if.end
	movq	-8(%rbp), %rax
	cmpq	$0, 48(%rax)
	je	.LBB7_4
# BB#3:                                 # %if.then.7
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_drawable_detach
.LBB7_4:                                # %if.end.9
	movq	-8(%rbp), %rax
	cmpq	$0, 56(%rax)
	je	.LBB7_6
# BB#5:                                 # %if.then.11
	movq	-8(%rbp), %rax
	movq	56(%rax), %rdi
	callq	gimp_drawable_detach
.LBB7_6:                                # %if.end.13
	movq	-8(%rbp), %rax
	cmpq	$0, 64(%rax)
	je	.LBB7_8
# BB#7:                                 # %if.then.15
	movq	-8(%rbp), %rax
	movq	64(%rax), %rdi
	callq	gimp_drawable_detach
.LBB7_8:                                # %if.end.17
	movq	-8(%rbp), %rax
	cmpq	$0, 72(%rax)
	je	.LBB7_10
# BB#9:                                 # %if.then.19
	movq	-8(%rbp), %rax
	movq	72(%rax), %rdi
	callq	gimp_drawable_detach
.LBB7_10:                               # %if.end.21
	movq	-8(%rbp), %rax
	cmpq	$0, 80(%rax)
	je	.LBB7_12
# BB#11:                                # %if.then.23
	movq	-8(%rbp), %rax
	movq	80(%rax), %rdi
	callq	gimp_drawable_detach
.LBB7_12:                               # %if.end.25
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	DepthMerge_destroy, .Lfunc_end7-DepthMerge_destroy
	.cfi_endproc

	.align	16, 0x90
	.type	DepthMerge_buildPreviewSourceImage,@function
DepthMerge_buildPreviewSourceImage:     # @DepthMerge_buildPreviewSourceImage
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp32:
	.cfi_def_cfa_offset 16
.Ltmp33:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp34:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$48, %rsp
.Ltmp35:
	.cfi_offset %rbx, -32
.Ltmp36:
	.cfi_offset %r14, -24
	movl	$1, %eax
	movl	%eax, %esi
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	(%rdi), %rdi
	movl	24(%rdi), %eax
	movq	-24(%rbp), %rdi
	movq	(%rdi), %rdi
	imull	28(%rdi), %eax
	shll	$2, %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	movl	$4, %ecx
	movl	$1, %r8d
	movq	-24(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rax, 32(%rsi)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	32(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	24(%rax), %esi
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	28(%rax), %edx
	movq	-24(%rbp), %rax
	movq	56(%rax), %r9
	movq	-24(%rbp), %rax
	movl	88(%rax), %r10d
	movq	-24(%rbp), %rax
	movl	92(%rax), %r11d
	movq	-24(%rbp), %rax
	movl	96(%rax), %ebx
	movq	-24(%rbp), %rax
	movl	100(%rax), %r14d
	movl	%r10d, (%rsp)
	movl	%r11d, 8(%rsp)
	movl	%ebx, 16(%rsp)
	movl	%r14d, 24(%rsp)
	callq	util_fillReducedBuffer
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	24(%rax), %ecx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	imull	28(%rax), %ecx
	shll	$2, %ecx
	movslq	%ecx, %rdi
	callq	g_malloc_n
	movl	$4, %ecx
	movl	$1, %r8d
	movq	-24(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rax, 40(%rsi)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	40(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	24(%rax), %esi
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	28(%rax), %edx
	movq	-24(%rbp), %rax
	movq	64(%rax), %r9
	movq	-24(%rbp), %rax
	movl	88(%rax), %r10d
	movq	-24(%rbp), %rax
	movl	92(%rax), %r11d
	movq	-24(%rbp), %rax
	movl	96(%rax), %ebx
	movq	-24(%rbp), %rax
	movl	100(%rax), %r14d
	movl	%r10d, (%rsp)
	movl	%r11d, 8(%rsp)
	movl	%ebx, 16(%rsp)
	movl	%r14d, 24(%rsp)
	callq	util_fillReducedBuffer
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	24(%rax), %ecx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	imull	28(%rax), %ecx
	shll	$0, %ecx
	movslq	%ecx, %rdi
	callq	g_malloc_n
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-24(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rax, 48(%rsi)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	48(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	24(%rax), %esi
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	28(%rax), %edx
	movq	-24(%rbp), %rax
	movq	72(%rax), %r9
	movq	-24(%rbp), %rax
	movl	88(%rax), %r10d
	movq	-24(%rbp), %rax
	movl	92(%rax), %r11d
	movq	-24(%rbp), %rax
	movl	96(%rax), %ebx
	movq	-24(%rbp), %rax
	movl	100(%rax), %r14d
	movl	%r10d, (%rsp)
	movl	%r11d, 8(%rsp)
	movl	%ebx, 16(%rsp)
	movl	%r14d, 24(%rsp)
	callq	util_fillReducedBuffer
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	24(%rax), %ecx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	imull	28(%rax), %ecx
	shll	$0, %ecx
	movslq	%ecx, %rdi
	callq	g_malloc_n
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-24(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rax, 56(%rsi)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	56(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	24(%rax), %esi
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	28(%rax), %edx
	movq	-24(%rbp), %rax
	movq	80(%rax), %r9
	movq	-24(%rbp), %rax
	movl	88(%rax), %r10d
	movq	-24(%rbp), %rax
	movl	92(%rax), %r11d
	movq	-24(%rbp), %rax
	movl	96(%rax), %ebx
	movq	-24(%rbp), %rax
	movl	100(%rax), %r14d
	movl	%r10d, (%rsp)
	movl	%r11d, 8(%rsp)
	movl	%ebx, 16(%rsp)
	movl	%r14d, 24(%rsp)
	callq	util_fillReducedBuffer
	addq	$48, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end8:
	.size	DepthMerge_buildPreviewSourceImage, .Lfunc_end8-DepthMerge_buildPreviewSourceImage
	.cfi_endproc

	.align	16, 0x90
	.type	dm_constraint,@function
dm_constraint:                          # @dm_constraint
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp37:
	.cfi_def_cfa_offset 16
.Ltmp38:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp39:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movb	$1, %al
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, -24(%rbp)
	cmpl	$-1, -8(%rbp)
	movb	%al, -25(%rbp)          # 1-byte Spill
	je	.LBB9_8
# BB#1:                                 # %lor.rhs
	movl	-8(%rbp), %edi
	callq	gimp_drawable_width
	movq	-24(%rbp), %rcx
	movl	8(%rcx), %edi
	movl	%eax, -32(%rbp)         # 4-byte Spill
	callq	gimp_drawable_width
	xorl	%edi, %edi
	movb	%dil, %dl
	movl	-32(%rbp), %edi         # 4-byte Reload
	cmpl	%eax, %edi
	movb	%dl, -33(%rbp)          # 1-byte Spill
	jne	.LBB9_7
# BB#2:                                 # %land.lhs.true
	movl	-8(%rbp), %edi
	callq	gimp_drawable_height
	movq	-24(%rbp), %rcx
	movl	8(%rcx), %edi
	movl	%eax, -40(%rbp)         # 4-byte Spill
	callq	gimp_drawable_height
	xorl	%edi, %edi
	movb	%dil, %dl
	movl	-40(%rbp), %edi         # 4-byte Reload
	cmpl	%eax, %edi
	movb	%dl, -33(%rbp)          # 1-byte Spill
	jne	.LBB9_7
# BB#3:                                 # %land.rhs
	movl	-8(%rbp), %edi
	callq	gimp_drawable_is_rgb
	cmpl	$0, %eax
	je	.LBB9_5
# BB#4:                                 # %land.lhs.true.9
	movq	-24(%rbp), %rax
	movl	8(%rax), %edi
	callq	gimp_drawable_is_rgb
	movb	$1, %cl
	cmpl	$0, %eax
	movb	%cl, -41(%rbp)          # 1-byte Spill
	jne	.LBB9_6
.LBB9_5:                                # %lor.rhs.14
	movl	-8(%rbp), %edi
	callq	gimp_drawable_is_gray
	cmpl	$0, %eax
	setne	%cl
	movb	%cl, -41(%rbp)          # 1-byte Spill
.LBB9_6:                                # %lor.end
	movb	-41(%rbp), %al          # 1-byte Reload
	movb	%al, -33(%rbp)          # 1-byte Spill
.LBB9_7:                                # %land.end
	movb	-33(%rbp), %al          # 1-byte Reload
	movb	%al, -25(%rbp)          # 1-byte Spill
.LBB9_8:                                # %lor.end.17
	movb	-25(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	dm_constraint, .Lfunc_end9-dm_constraint
	.cfi_endproc

	.align	16, 0x90
	.type	dialogSource1ChangedCallback,@function
dialogSource1ChangedCallback:           # @dialogSource1ChangedCallback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp40:
	.cfi_def_cfa_offset 16
.Ltmp41:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp42:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$80, %rsp
.Ltmp43:
	.cfi_offset %rbx, -32
.Ltmp44:
	.cfi_offset %r14, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rsi
	cmpq	$0, 56(%rsi)
	je	.LBB10_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	56(%rax), %rdi
	callq	gimp_drawable_detach
.LBB10_2:                               # %if.end
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	addq	$8, %rsi
	addq	$4, %rsi
	movq	%rax, %rdi
	callq	gimp_int_combo_box_get_active
	movq	-32(%rbp), %rsi
	cmpl	$-1, 12(%rsi)
	movl	%eax, -44(%rbp)         # 4-byte Spill
	jne	.LBB10_4
# BB#3:                                 # %cond.true
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	jmp	.LBB10_5
.LBB10_4:                               # %cond.false
	movq	-32(%rbp), %rax
	movl	12(%rax), %edi
	callq	gimp_drawable_get
	movq	%rax, -56(%rbp)         # 8-byte Spill
.LBB10_5:                               # %cond.end
	movq	-56(%rbp), %rax         # 8-byte Reload
	movl	$4, %ecx
	movl	$1, %r8d
	movq	-32(%rbp), %rdx
	movq	%rax, 56(%rdx)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	32(%rax), %rdi
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	24(%rax), %esi
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	28(%rax), %edx
	movq	-32(%rbp), %rax
	movq	56(%rax), %r9
	movq	-32(%rbp), %rax
	movl	88(%rax), %r10d
	movq	-32(%rbp), %rax
	movl	92(%rax), %r11d
	movq	-32(%rbp), %rax
	movl	96(%rax), %ebx
	movq	-32(%rbp), %rax
	movl	100(%rax), %r14d
	movl	%r10d, (%rsp)
	movl	%r11d, 8(%rsp)
	movl	%ebx, 16(%rsp)
	movl	%r14d, 24(%rsp)
	callq	util_fillReducedBuffer
	movq	-32(%rbp), %rdi
	callq	DepthMerge_updatePreview
	addq	$80, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end10:
	.size	dialogSource1ChangedCallback, .Lfunc_end10-dialogSource1ChangedCallback
	.cfi_endproc

	.align	16, 0x90
	.type	dialogDepthMap1ChangedCallback,@function
dialogDepthMap1ChangedCallback:         # @dialogDepthMap1ChangedCallback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp45:
	.cfi_def_cfa_offset 16
.Ltmp46:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp47:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$80, %rsp
.Ltmp48:
	.cfi_offset %rbx, -32
.Ltmp49:
	.cfi_offset %r14, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rsi
	cmpq	$0, 72(%rsi)
	je	.LBB11_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	72(%rax), %rdi
	callq	gimp_drawable_detach
.LBB11_2:                               # %if.end
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	addq	$8, %rsi
	addq	$12, %rsi
	movq	%rax, %rdi
	callq	gimp_int_combo_box_get_active
	movq	-32(%rbp), %rsi
	cmpl	$-1, 20(%rsi)
	movl	%eax, -44(%rbp)         # 4-byte Spill
	jne	.LBB11_4
# BB#3:                                 # %cond.true
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	jmp	.LBB11_5
.LBB11_4:                               # %cond.false
	movq	-32(%rbp), %rax
	movl	20(%rax), %edi
	callq	gimp_drawable_get
	movq	%rax, -56(%rbp)         # 8-byte Spill
.LBB11_5:                               # %cond.end
	movq	-56(%rbp), %rax         # 8-byte Reload
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-32(%rbp), %rdx
	movq	%rax, 72(%rdx)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	48(%rax), %rdi
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	24(%rax), %esi
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	28(%rax), %edx
	movq	-32(%rbp), %rax
	movq	72(%rax), %r9
	movq	-32(%rbp), %rax
	movl	88(%rax), %r10d
	movq	-32(%rbp), %rax
	movl	92(%rax), %r11d
	movq	-32(%rbp), %rax
	movl	96(%rax), %ebx
	movq	-32(%rbp), %rax
	movl	100(%rax), %r14d
	movl	%r10d, (%rsp)
	movl	%r11d, 8(%rsp)
	movl	%ebx, 16(%rsp)
	movl	%r14d, 24(%rsp)
	callq	util_fillReducedBuffer
	movq	-32(%rbp), %rdi
	callq	DepthMerge_updatePreview
	addq	$80, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end11:
	.size	dialogDepthMap1ChangedCallback, .Lfunc_end11-dialogDepthMap1ChangedCallback
	.cfi_endproc

	.align	16, 0x90
	.type	dialogSource2ChangedCallback,@function
dialogSource2ChangedCallback:           # @dialogSource2ChangedCallback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp50:
	.cfi_def_cfa_offset 16
.Ltmp51:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp52:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$80, %rsp
.Ltmp53:
	.cfi_offset %rbx, -32
.Ltmp54:
	.cfi_offset %r14, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rsi
	cmpq	$0, 64(%rsi)
	je	.LBB12_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	64(%rax), %rdi
	callq	gimp_drawable_detach
.LBB12_2:                               # %if.end
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	addq	$8, %rsi
	addq	$8, %rsi
	movq	%rax, %rdi
	callq	gimp_int_combo_box_get_active
	movq	-32(%rbp), %rsi
	cmpl	$-1, 16(%rsi)
	movl	%eax, -44(%rbp)         # 4-byte Spill
	jne	.LBB12_4
# BB#3:                                 # %cond.true
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	jmp	.LBB12_5
.LBB12_4:                               # %cond.false
	movq	-32(%rbp), %rax
	movl	16(%rax), %edi
	callq	gimp_drawable_get
	movq	%rax, -56(%rbp)         # 8-byte Spill
.LBB12_5:                               # %cond.end
	movq	-56(%rbp), %rax         # 8-byte Reload
	movl	$4, %ecx
	movl	$1, %r8d
	movq	-32(%rbp), %rdx
	movq	%rax, 64(%rdx)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	40(%rax), %rdi
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	24(%rax), %esi
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	28(%rax), %edx
	movq	-32(%rbp), %rax
	movq	64(%rax), %r9
	movq	-32(%rbp), %rax
	movl	88(%rax), %r10d
	movq	-32(%rbp), %rax
	movl	92(%rax), %r11d
	movq	-32(%rbp), %rax
	movl	96(%rax), %ebx
	movq	-32(%rbp), %rax
	movl	100(%rax), %r14d
	movl	%r10d, (%rsp)
	movl	%r11d, 8(%rsp)
	movl	%ebx, 16(%rsp)
	movl	%r14d, 24(%rsp)
	callq	util_fillReducedBuffer
	movq	-32(%rbp), %rdi
	callq	DepthMerge_updatePreview
	addq	$80, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end12:
	.size	dialogSource2ChangedCallback, .Lfunc_end12-dialogSource2ChangedCallback
	.cfi_endproc

	.align	16, 0x90
	.type	dialogDepthMap2ChangedCallback,@function
dialogDepthMap2ChangedCallback:         # @dialogDepthMap2ChangedCallback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp55:
	.cfi_def_cfa_offset 16
.Ltmp56:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp57:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$80, %rsp
.Ltmp58:
	.cfi_offset %rbx, -32
.Ltmp59:
	.cfi_offset %r14, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rsi
	cmpq	$0, 80(%rsi)
	je	.LBB13_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	80(%rax), %rdi
	callq	gimp_drawable_detach
.LBB13_2:                               # %if.end
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	addq	$8, %rsi
	addq	$16, %rsi
	movq	%rax, %rdi
	callq	gimp_int_combo_box_get_active
	movq	-32(%rbp), %rsi
	cmpl	$-1, 24(%rsi)
	movl	%eax, -44(%rbp)         # 4-byte Spill
	jne	.LBB13_4
# BB#3:                                 # %cond.true
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	jmp	.LBB13_5
.LBB13_4:                               # %cond.false
	movq	-32(%rbp), %rax
	movl	24(%rax), %edi
	callq	gimp_drawable_get
	movq	%rax, -56(%rbp)         # 8-byte Spill
.LBB13_5:                               # %cond.end
	movq	-56(%rbp), %rax         # 8-byte Reload
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-32(%rbp), %rdx
	movq	%rax, 80(%rdx)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	56(%rax), %rdi
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	24(%rax), %esi
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	28(%rax), %edx
	movq	-32(%rbp), %rax
	movq	80(%rax), %r9
	movq	-32(%rbp), %rax
	movl	88(%rax), %r10d
	movq	-32(%rbp), %rax
	movl	92(%rax), %r11d
	movq	-32(%rbp), %rax
	movl	96(%rax), %ebx
	movq	-32(%rbp), %rax
	movl	100(%rax), %r14d
	movl	%r10d, (%rsp)
	movl	%r11d, 8(%rsp)
	movl	%ebx, 16(%rsp)
	movl	%r14d, 24(%rsp)
	callq	util_fillReducedBuffer
	movq	-32(%rbp), %rdi
	callq	DepthMerge_updatePreview
	addq	$80, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end13:
	.size	dialogDepthMap2ChangedCallback, .Lfunc_end13-dialogDepthMap2ChangedCallback
	.cfi_endproc

	.align	16, 0x90
	.type	dialogValueScaleUpdateCallback,@function
dialogValueScaleUpdateCallback:         # @dialogValueScaleUpdateCallback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp60:
	.cfi_def_cfa_offset 16
.Ltmp61:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp62:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	$80, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.42, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_float_adjustment_update
	movq	-24(%rbp), %rdi
	callq	DepthMerge_updatePreview
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	dialogValueScaleUpdateCallback, .Lfunc_end14-dialogValueScaleUpdateCallback
	.cfi_endproc

	.align	16, 0x90
	.type	DepthMerge_updatePreview,@function
DepthMerge_updatePreview:               # @DepthMerge_updatePreview
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp63:
	.cfi_def_cfa_offset 16
.Ltmp64:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp65:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	cmpl	$0, (%rdi)
	jne	.LBB15_2
# BB#1:                                 # %if.then
	jmp	.LBB15_7
.LBB15_2:                               # %if.end
	movl	$1, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movl	24(%rcx), %eax
	shll	$2, %eax
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	imull	28(%rcx), %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	movq	%rax, -56(%rbp)
	movl	$0, -12(%rbp)
.LBB15_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	cmpl	28(%rcx), %eax
	jge	.LBB15_6
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB15_3 Depth=1
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	imull	24(%rcx), %eax
	shll	$2, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movq	(%rdx), %rdx
	addq	32(%rdx), %rcx
	movq	%rcx, -24(%rbp)
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	imull	24(%rcx), %eax
	shll	$2, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movq	(%rdx), %rdx
	addq	40(%rdx), %rcx
	movq	%rcx, -32(%rbp)
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	imull	24(%rcx), %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movq	(%rdx), %rdx
	addq	48(%rdx), %rcx
	movq	%rcx, -40(%rbp)
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	imull	24(%rcx), %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movq	(%rdx), %rdx
	addq	56(%rdx), %rcx
	movq	%rcx, -48(%rbp)
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-48(%rbp), %r8
	movq	-56(%rbp), %r9
	movl	-12(%rbp), %eax
	shll	$2, %eax
	movq	-8(%rbp), %r10
	movq	(%r10), %r10
	imull	24(%r10), %eax
	movslq	%eax, %r10
	addq	%r10, %r9
	movq	-8(%rbp), %r10
	movq	(%r10), %r10
	movl	24(%r10), %eax
	movl	%eax, (%rsp)
	callq	DepthMerge_executeRegion
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB15_3 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB15_3
.LBB15_6:                               # %for.end
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_preview_area_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	$1, %r9d
	movq	-8(%rbp), %rsi
	movq	(%rsi), %rsi
	movl	24(%rsi), %edx
	movq	-8(%rbp), %rsi
	movq	(%rsi), %rsi
	movl	28(%rsi), %r8d
	movq	-56(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movl	24(%rdi), %r10d
	shll	$2, %r10d
	movq	%rax, %rdi
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	movl	%ecx, %esi
	movl	%edx, -76(%rbp)         # 4-byte Spill
	movl	%ecx, %edx
	movl	-76(%rbp), %ecx         # 4-byte Reload
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movl	%r10d, 8(%rsp)
	callq	gimp_preview_area_draw
	movq	-56(%rbp), %rdi
	callq	g_free
.LBB15_7:                               # %return
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	DepthMerge_updatePreview, .Lfunc_end15-DepthMerge_updatePreview
	.cfi_endproc

	.align	16, 0x90
	.type	util_fillReducedBuffer,@function
util_fillReducedBuffer:                 # @util_fillReducedBuffer
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp66:
	.cfi_def_cfa_offset 16
.Ltmp67:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp68:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$200, %rsp
.Ltmp69:
	.cfi_offset %rbx, -24
	movl	40(%rbp), %eax
	movl	32(%rbp), %r10d
	movl	24(%rbp), %r11d
	movl	16(%rbp), %ebx
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%r8d, -32(%rbp)
	movq	%r9, -40(%rbp)
	movl	%ebx, -44(%rbp)
	movl	%r11d, -48(%rbp)
	movl	%r10d, -52(%rbp)
	movl	%eax, -56(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB16_3
# BB#1:                                 # %lor.lhs.false
	cmpl	$0, -52(%rbp)
	je	.LBB16_3
# BB#2:                                 # %lor.lhs.false.2
	cmpl	$0, -56(%rbp)
	jne	.LBB16_8
.LBB16_3:                               # %if.then
	movl	$0, -148(%rbp)
.LBB16_4:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-148(%rbp), %eax
	movl	-20(%rbp), %ecx
	imull	-24(%rbp), %ecx
	imull	-28(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB16_7
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB16_4 Depth=1
	movslq	-148(%rbp), %rax
	movq	-16(%rbp), %rcx
	movb	$0, (%rcx,%rax)
# BB#6:                                 # %for.inc
                                        #   in Loop: Header=BB16_4 Depth=1
	movl	-148(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -148(%rbp)
	jmp	.LBB16_4
.LBB16_7:                               # %for.end
	jmp	.LBB16_25
.LBB16_8:                               # %if.end
	movl	$1, %eax
	movl	%eax, %esi
	movq	-40(%rbp), %rcx
	movl	12(%rcx), %eax
	movl	%eax, -168(%rbp)
	movl	-52(%rbp), %eax
	imull	-56(%rbp), %eax
	imull	-168(%rbp), %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	movl	$1, %edx
	movl	%edx, %esi
	movq	%rax, -112(%rbp)
	movl	-20(%rbp), %edx
	imull	-168(%rbp), %edx
	movslq	%edx, %rdi
	callq	g_malloc_n
	movl	$4, %edx
	movl	%edx, %esi
	movq	%rax, -120(%rbp)
	movslq	-20(%rbp), %rdi
	callq	g_malloc_n
	leaq	-104(%rbp), %rdi
	xorl	%edx, %edx
	movq	%rax, -176(%rbp)
	movq	-40(%rbp), %rsi
	movl	-44(%rbp), %r8d
	movl	-48(%rbp), %ecx
	movl	-52(%rbp), %r9d
	movl	-56(%rbp), %r10d
	movl	%edx, -180(%rbp)        # 4-byte Spill
	movl	%r8d, %edx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	movq	-40(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_has_alpha
	movl	%eax, -164(%rbp)
	movl	$0, -148(%rbp)
.LBB16_9:                               # %for.cond.14
                                        # =>This Inner Loop Header: Depth=1
	movl	-148(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB16_12
# BB#10:                                # %for.body.17
                                        #   in Loop: Header=BB16_9 Depth=1
	movl	-148(%rbp), %eax
	movl	-52(%rbp), %ecx
	subl	$1, %ecx
	imull	%ecx, %eax
	movl	-20(%rbp), %ecx
	subl	$1, %ecx
	cltd
	idivl	%ecx
	imull	-168(%rbp), %eax
	movslq	-148(%rbp), %rsi
	movq	-176(%rbp), %rdi
	movl	%eax, (%rdi,%rsi,4)
# BB#11:                                # %for.inc.23
                                        #   in Loop: Header=BB16_9 Depth=1
	movl	-148(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -148(%rbp)
	jmp	.LBB16_9
.LBB16_12:                              # %for.end.25
	leaq	-104(%rbp), %rdi
	movq	-112(%rbp), %rsi
	movl	-44(%rbp), %edx
	movl	-48(%rbp), %ecx
	movl	-52(%rbp), %r8d
	movl	-56(%rbp), %r9d
	callq	gimp_pixel_rgn_get_rect
	movl	$0, -152(%rbp)
.LBB16_13:                              # %for.cond.26
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_15 Depth 2
                                        #       Child Loop BB16_17 Depth 3
	movl	-152(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jge	.LBB16_24
# BB#14:                                # %for.body.29
                                        #   in Loop: Header=BB16_13 Depth=1
	movl	-152(%rbp), %eax
	movl	-56(%rbp), %ecx
	subl	$1, %ecx
	imull	%ecx, %eax
	movl	-24(%rbp), %ecx
	subl	$1, %ecx
	cltd
	idivl	%ecx
	movl	%eax, -160(%rbp)
	movl	-160(%rbp), %eax
	imull	-52(%rbp), %eax
	imull	-168(%rbp), %eax
	movslq	%eax, %rsi
	addq	-112(%rbp), %rsi
	movq	%rsi, -144(%rbp)
	movq	-120(%rbp), %rsi
	movq	%rsi, -136(%rbp)
	movl	$0, -148(%rbp)
.LBB16_15:                              # %for.cond.38
                                        #   Parent Loop BB16_13 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB16_17 Depth 3
	movl	-148(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB16_22
# BB#16:                                # %for.body.41
                                        #   in Loop: Header=BB16_15 Depth=2
	movq	-144(%rbp), %rax
	movslq	-148(%rbp), %rcx
	movq	-176(%rbp), %rdx
	movslq	(%rdx,%rcx,4), %rcx
	addq	%rcx, %rax
	movq	%rax, -128(%rbp)
	movl	$0, -156(%rbp)
.LBB16_17:                              # %for.cond.44
                                        #   Parent Loop BB16_13 Depth=1
                                        #     Parent Loop BB16_15 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-156(%rbp), %eax
	cmpl	-168(%rbp), %eax
	jge	.LBB16_20
# BB#18:                                # %for.body.47
                                        #   in Loop: Header=BB16_17 Depth=3
	movslq	-156(%rbp), %rax
	movq	-128(%rbp), %rcx
	movb	(%rcx,%rax), %dl
	movslq	-156(%rbp), %rax
	movq	-136(%rbp), %rcx
	movb	%dl, (%rcx,%rax)
# BB#19:                                # %for.inc.52
                                        #   in Loop: Header=BB16_17 Depth=3
	movl	-156(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -156(%rbp)
	jmp	.LBB16_17
.LBB16_20:                              # %for.end.54
                                        #   in Loop: Header=BB16_15 Depth=2
	movl	-168(%rbp), %eax
	movq	-136(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -136(%rbp)
# BB#21:                                # %for.inc.57
                                        #   in Loop: Header=BB16_15 Depth=2
	movl	-148(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -148(%rbp)
	jmp	.LBB16_15
.LBB16_22:                              # %for.end.59
                                        #   in Loop: Header=BB16_13 Depth=1
	movl	-152(%rbp), %eax
	imull	-20(%rbp), %eax
	imull	-28(%rbp), %eax
	movslq	%eax, %rcx
	addq	-16(%rbp), %rcx
	movl	-28(%rbp), %esi
	movl	-32(%rbp), %edx
	movq	-120(%rbp), %rdi
	movq	-40(%rbp), %r8
	movl	12(%r8), %r8d
	movl	-164(%rbp), %r9d
	movl	-20(%rbp), %eax
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	-192(%rbp), %rcx        # 8-byte Reload
	movl	%eax, (%rsp)
	callq	util_convertColorspace
# BB#23:                                # %for.inc.65
                                        #   in Loop: Header=BB16_13 Depth=1
	movl	-152(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -152(%rbp)
	jmp	.LBB16_13
.LBB16_24:                              # %for.end.67
	movq	-112(%rbp), %rdi
	callq	g_free
	movq	-120(%rbp), %rdi
	callq	g_free
	movq	-176(%rbp), %rdi
	callq	g_free
.LBB16_25:                              # %return
	addq	$200, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end16:
	.size	util_fillReducedBuffer, .Lfunc_end16-util_fillReducedBuffer
	.cfi_endproc

	.align	16, 0x90
	.type	util_convertColorspace,@function
util_convertColorspace:                 # @util_convertColorspace
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp70:
	.cfi_def_cfa_offset 16
.Ltmp71:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp72:
	.cfi_def_cfa_register %rbp
	movl	16(%rbp), %eax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movl	%r9d, -32(%rbp)
	movl	%eax, -36(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB17_2
# BB#1:                                 # %cond.true
	movl	-28(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	jmp	.LBB17_3
.LBB17_2:                               # %cond.false
	movl	-28(%rbp), %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
.LBB17_3:                               # %cond.end
	movl	-68(%rbp), %eax         # 4-byte Reload
	movl	%eax, -60(%rbp)
	cmpl	$0, -16(%rbp)
	je	.LBB17_5
# BB#4:                                 # %cond.true.2
	movl	-12(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -72(%rbp)         # 4-byte Spill
	jmp	.LBB17_6
.LBB17_5:                               # %cond.false.4
	movl	-12(%rbp), %eax
	movl	%eax, -72(%rbp)         # 4-byte Spill
.LBB17_6:                               # %cond.end.5
	movl	-72(%rbp), %eax         # 4-byte Reload
	movl	%eax, -64(%rbp)
	movl	-60(%rbp), %eax
	cmpl	-64(%rbp), %eax
	jne	.LBB17_13
# BB#7:                                 # %land.lhs.true
	movl	-28(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jne	.LBB17_13
# BB#8:                                 # %if.then
	movl	-36(%rbp), %eax
	imull	-28(%rbp), %eax
	movl	%eax, -44(%rbp)
	movl	$0, -40(%rbp)
.LBB17_9:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-40(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jge	.LBB17_12
# BB#10:                                # %for.body
                                        #   in Loop: Header=BB17_9 Depth=1
	movslq	-40(%rbp), %rax
	movq	-24(%rbp), %rcx
	movb	(%rcx,%rax), %dl
	movslq	-40(%rbp), %rax
	movq	-8(%rbp), %rcx
	movb	%dl, (%rcx,%rax)
# BB#11:                                # %for.inc
                                        #   in Loop: Header=BB17_9 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB17_9
.LBB17_12:                              # %for.end
	jmp	.LBB17_82
.LBB17_13:                              # %if.end
	movl	-60(%rbp), %eax
	cmpl	-64(%rbp), %eax
	jne	.LBB17_23
# BB#14:                                # %if.then.12
	movl	$0, -48(%rbp)
	movl	$0, -52(%rbp)
	movl	$0, -40(%rbp)
.LBB17_15:                              # %for.cond.13
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_17 Depth 2
	movl	-40(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB17_22
# BB#16:                                # %for.body.15
                                        #   in Loop: Header=BB17_15 Depth=1
	movl	$0, -44(%rbp)
.LBB17_17:                              # %for.cond.16
                                        #   Parent Loop BB17_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-44(%rbp), %eax
	cmpl	-64(%rbp), %eax
	jge	.LBB17_20
# BB#18:                                # %for.body.18
                                        #   in Loop: Header=BB17_17 Depth=2
	movl	-48(%rbp), %eax
	addl	-44(%rbp), %eax
	movslq	%eax, %rcx
	movq	-24(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movl	-52(%rbp), %eax
	addl	-44(%rbp), %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movb	%sil, (%rdx,%rcx)
# BB#19:                                # %for.inc.24
                                        #   in Loop: Header=BB17_17 Depth=2
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB17_17
.LBB17_20:                              # %for.end.26
                                        #   in Loop: Header=BB17_15 Depth=1
	jmp	.LBB17_21
.LBB17_21:                              # %for.inc.27
                                        #   in Loop: Header=BB17_15 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	movl	-12(%rbp), %eax
	addl	-52(%rbp), %eax
	movl	%eax, -52(%rbp)
	movl	-28(%rbp), %eax
	addl	-48(%rbp), %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB17_15
.LBB17_22:                              # %for.end.31
	jmp	.LBB17_69
.LBB17_23:                              # %if.else
	cmpl	$1, -60(%rbp)
	jne	.LBB17_33
# BB#24:                                # %if.then.33
	movl	$0, -48(%rbp)
	movl	$0, -52(%rbp)
	movl	$0, -40(%rbp)
.LBB17_25:                              # %for.cond.34
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_27 Depth 2
	movl	-40(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB17_32
# BB#26:                                # %for.body.36
                                        #   in Loop: Header=BB17_25 Depth=1
	movl	$0, -44(%rbp)
.LBB17_27:                              # %for.cond.37
                                        #   Parent Loop BB17_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-44(%rbp), %eax
	cmpl	-64(%rbp), %eax
	jge	.LBB17_30
# BB#28:                                # %for.body.39
                                        #   in Loop: Header=BB17_27 Depth=2
	movslq	-48(%rbp), %rax
	movq	-24(%rbp), %rcx
	movb	(%rcx,%rax), %dl
	movl	-52(%rbp), %esi
	addl	-44(%rbp), %esi
	movslq	%esi, %rax
	movq	-8(%rbp), %rcx
	movb	%dl, (%rcx,%rax)
# BB#29:                                # %for.inc.45
                                        #   in Loop: Header=BB17_27 Depth=2
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB17_27
.LBB17_30:                              # %for.end.47
                                        #   in Loop: Header=BB17_25 Depth=1
	jmp	.LBB17_31
.LBB17_31:                              # %for.inc.48
                                        #   in Loop: Header=BB17_25 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	movl	-12(%rbp), %eax
	addl	-52(%rbp), %eax
	movl	%eax, -52(%rbp)
	movl	-28(%rbp), %eax
	addl	-48(%rbp), %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB17_25
.LBB17_32:                              # %for.end.52
	jmp	.LBB17_68
.LBB17_33:                              # %if.else.53
	cmpl	$1, -64(%rbp)
	jne	.LBB17_43
# BB#34:                                # %if.then.55
	movl	$0, -48(%rbp)
	movl	$0, -52(%rbp)
	movl	$0, -40(%rbp)
.LBB17_35:                              # %for.cond.56
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_37 Depth 2
	movl	-40(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB17_42
# BB#36:                                # %for.body.58
                                        #   in Loop: Header=BB17_35 Depth=1
	movl	$0, -56(%rbp)
	movl	$0, -44(%rbp)
.LBB17_37:                              # %for.cond.59
                                        #   Parent Loop BB17_35 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-44(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jge	.LBB17_40
# BB#38:                                # %for.body.61
                                        #   in Loop: Header=BB17_37 Depth=2
	movl	-48(%rbp), %eax
	addl	-44(%rbp), %eax
	movslq	%eax, %rcx
	movq	-24(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	addl	-56(%rbp), %eax
	movl	%eax, -56(%rbp)
# BB#39:                                # %for.inc.66
                                        #   in Loop: Header=BB17_37 Depth=2
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB17_37
.LBB17_40:                              # %for.end.68
                                        #   in Loop: Header=BB17_35 Depth=1
	movl	-56(%rbp), %eax
	cltd
	idivl	-60(%rbp)
	movb	%al, %cl
	movslq	-52(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movb	%cl, (%rdi,%rsi)
# BB#41:                                # %for.inc.72
                                        #   in Loop: Header=BB17_35 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	movl	-12(%rbp), %eax
	addl	-52(%rbp), %eax
	movl	%eax, -52(%rbp)
	movl	-28(%rbp), %eax
	addl	-48(%rbp), %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB17_35
.LBB17_42:                              # %for.end.76
	jmp	.LBB17_67
.LBB17_43:                              # %if.else.77
	movl	-64(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jge	.LBB17_53
# BB#44:                                # %if.then.80
	movl	$0, -48(%rbp)
	movl	$0, -52(%rbp)
	movl	$0, -40(%rbp)
.LBB17_45:                              # %for.cond.81
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_47 Depth 2
	movl	-40(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB17_52
# BB#46:                                # %for.body.84
                                        #   in Loop: Header=BB17_45 Depth=1
	movl	$0, -44(%rbp)
.LBB17_47:                              # %for.cond.85
                                        #   Parent Loop BB17_45 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-44(%rbp), %eax
	cmpl	-64(%rbp), %eax
	jge	.LBB17_50
# BB#48:                                # %for.body.88
                                        #   in Loop: Header=BB17_47 Depth=2
	movl	-48(%rbp), %eax
	addl	-44(%rbp), %eax
	movslq	%eax, %rcx
	movq	-24(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movl	-52(%rbp), %eax
	addl	-44(%rbp), %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movb	%sil, (%rdx,%rcx)
# BB#49:                                # %for.inc.95
                                        #   in Loop: Header=BB17_47 Depth=2
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB17_47
.LBB17_50:                              # %for.end.97
                                        #   in Loop: Header=BB17_45 Depth=1
	jmp	.LBB17_51
.LBB17_51:                              # %for.inc.98
                                        #   in Loop: Header=BB17_45 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	movl	-12(%rbp), %eax
	addl	-52(%rbp), %eax
	movl	%eax, -52(%rbp)
	movl	-28(%rbp), %eax
	addl	-48(%rbp), %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB17_45
.LBB17_52:                              # %for.end.102
	jmp	.LBB17_66
.LBB17_53:                              # %if.else.103
	movl	$0, -48(%rbp)
	movl	$0, -52(%rbp)
	movl	$0, -40(%rbp)
.LBB17_54:                              # %for.cond.104
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_56 Depth 2
                                        #     Child Loop BB17_60 Depth 2
	movl	-40(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB17_65
# BB#55:                                # %for.body.107
                                        #   in Loop: Header=BB17_54 Depth=1
	movl	$0, -44(%rbp)
.LBB17_56:                              # %for.cond.108
                                        #   Parent Loop BB17_54 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-44(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jge	.LBB17_59
# BB#57:                                # %for.body.111
                                        #   in Loop: Header=BB17_56 Depth=2
	movl	-52(%rbp), %eax
	addl	-44(%rbp), %eax
	movslq	%eax, %rcx
	movq	-24(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movl	-52(%rbp), %eax
	addl	-44(%rbp), %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movb	%sil, (%rdx,%rcx)
# BB#58:                                # %for.inc.118
                                        #   in Loop: Header=BB17_56 Depth=2
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB17_56
.LBB17_59:                              # %for.end.120
                                        #   in Loop: Header=BB17_54 Depth=1
	jmp	.LBB17_60
.LBB17_60:                              # %for.cond.121
                                        #   Parent Loop BB17_54 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-44(%rbp), %eax
	cmpl	-64(%rbp), %eax
	jge	.LBB17_63
# BB#61:                                # %for.body.124
                                        #   in Loop: Header=BB17_60 Depth=2
	movl	-52(%rbp), %eax
	addl	-44(%rbp), %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movb	$0, (%rdx,%rcx)
# BB#62:                                # %for.inc.128
                                        #   in Loop: Header=BB17_60 Depth=2
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB17_60
.LBB17_63:                              # %for.end.130
                                        #   in Loop: Header=BB17_54 Depth=1
	jmp	.LBB17_64
.LBB17_64:                              # %for.inc.131
                                        #   in Loop: Header=BB17_54 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	movl	-12(%rbp), %eax
	addl	-52(%rbp), %eax
	movl	%eax, -52(%rbp)
	movl	-28(%rbp), %eax
	addl	-48(%rbp), %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB17_54
.LBB17_65:                              # %for.end.135
	jmp	.LBB17_66
.LBB17_66:                              # %if.end.136
	jmp	.LBB17_67
.LBB17_67:                              # %if.end.137
	jmp	.LBB17_68
.LBB17_68:                              # %if.end.138
	jmp	.LBB17_69
.LBB17_69:                              # %if.end.139
	cmpl	$0, -16(%rbp)
	je	.LBB17_82
# BB#70:                                # %if.then.141
	cmpl	$0, -32(%rbp)
	je	.LBB17_76
# BB#71:                                # %if.then.143
	movl	$0, -40(%rbp)
	movl	-64(%rbp), %eax
	movl	%eax, -52(%rbp)
	movl	-60(%rbp), %eax
	movl	%eax, -48(%rbp)
.LBB17_72:                              # %for.cond.144
                                        # =>This Inner Loop Header: Depth=1
	movl	-40(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB17_75
# BB#73:                                # %for.body.147
                                        #   in Loop: Header=BB17_72 Depth=1
	movslq	-48(%rbp), %rax
	movq	-24(%rbp), %rcx
	movb	(%rcx,%rax), %dl
	movslq	-52(%rbp), %rax
	movq	-8(%rbp), %rcx
	movb	%dl, (%rcx,%rax)
# BB#74:                                # %for.inc.152
                                        #   in Loop: Header=BB17_72 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	movl	-12(%rbp), %eax
	addl	-52(%rbp), %eax
	movl	%eax, -52(%rbp)
	movl	-28(%rbp), %eax
	addl	-48(%rbp), %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB17_72
.LBB17_75:                              # %for.end.156
	jmp	.LBB17_81
.LBB17_76:                              # %if.else.157
	movl	$0, -40(%rbp)
	movl	-64(%rbp), %eax
	movl	%eax, -52(%rbp)
.LBB17_77:                              # %for.cond.158
                                        # =>This Inner Loop Header: Depth=1
	movl	-40(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB17_80
# BB#78:                                # %for.body.161
                                        #   in Loop: Header=BB17_77 Depth=1
	movslq	-52(%rbp), %rax
	movq	-8(%rbp), %rcx
	movb	$-1, (%rcx,%rax)
# BB#79:                                # %for.inc.164
                                        #   in Loop: Header=BB17_77 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	movl	-12(%rbp), %eax
	addl	-52(%rbp), %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB17_77
.LBB17_80:                              # %for.end.167
	jmp	.LBB17_81
.LBB17_81:                              # %if.end.168
	jmp	.LBB17_82
.LBB17_82:                              # %if.end.169
	popq	%rbp
	retq
.Lfunc_end17:
	.size	util_convertColorspace, .Lfunc_end17-util_convertColorspace
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI18_0:
	.quad	4562254508917369340     # double 0.001
.LCPI18_2:
	.quad	4607182418800017408     # double 1
.LCPI18_3:
	.quad	4643176031446892544     # double 255
.LCPI18_4:
	.quad	4602678819172646912     # double 0.5
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI18_1:
	.long	1132396544              # float 255
.LCPI18_5:
	.long	1065353216              # float 1
	.text
	.align	16, 0x90
	.type	DepthMerge_executeRegion,@function
DepthMerge_executeRegion:               # @DepthMerge_executeRegion
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp73:
	.cfi_def_cfa_offset 16
.Ltmp74:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp75:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$264, %rsp              # imm = 0x108
.Ltmp76:
	.cfi_offset %rbx, -40
.Ltmp77:
	.cfi_offset %r14, -32
.Ltmp78:
	.cfi_offset %r15, -24
	movl	16(%rbp), %eax
	movsd	.LCPI18_0, %xmm0        # xmm0 = mem[0],zero
	xorl	%r10d, %r10d
	movl	$8, %r11d
	movl	%r11d, %ebx
	leaq	-136(%rbp), %r14
	leaq	-128(%rbp), %r15
	movq	%rdi, -32(%rbp)
	movq	%rsi, -40(%rbp)
	movq	%rdx, -48(%rbp)
	movq	%rcx, -56(%rbp)
	movq	%r8, -64(%rbp)
	movq	%r9, -72(%rbp)
	movl	%eax, -76(%rbp)
	movq	%r15, %rdi
	movl	%r10d, %esi
	movq	%rbx, %rdx
	movq	%r14, -168(%rbp)        # 8-byte Spill
	movq	%rbx, -176(%rbp)        # 8-byte Spill
	movsd	%xmm0, -184(%rbp)       # 8-byte Spill
	movl	%r10d, -188(%rbp)       # 4-byte Spill
	callq	memset
	movq	-168(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, %rdi
	movl	-188(%rbp), %esi        # 4-byte Reload
	movq	-176(%rbp), %rdx        # 8-byte Reload
	callq	memset
	movq	-32(%rbp), %rcx
	cvtss2sd	28(%rcx), %xmm0
	movsd	-184(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB18_2
# BB#1:                                 # %cond.true
	movq	-32(%rbp), %rax
	cvtss2sd	28(%rax), %xmm0
	movsd	%xmm0, -200(%rbp)       # 8-byte Spill
	jmp	.LBB18_3
.LBB18_2:                               # %cond.false
	movsd	.LCPI18_0, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -200(%rbp)       # 8-byte Spill
	jmp	.LBB18_3
.LBB18_3:                               # %cond.end
	movsd	-200(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movss	.LCPI18_1, %xmm1        # xmm1 = mem[0],zero,zero,zero
	movsd	.LCPI18_2, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI18_3, %xmm3        # xmm3 = mem[0],zero
	mulsd	%xmm3, %xmm0
	divsd	%xmm0, %xmm2
	cvtsd2ss	%xmm2, %xmm0
	movss	%xmm0, -92(%rbp)
	movq	-32(%rbp), %rax
	mulss	32(%rax), %xmm1
	movss	%xmm1, -88(%rbp)
	movq	-32(%rbp), %rax
	movss	36(%rax), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -80(%rbp)
	movq	-32(%rbp), %rax
	movss	40(%rax), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -84(%rbp)
	movl	$0, -152(%rbp)
.LBB18_4:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-152(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jge	.LBB18_59
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB18_4 Depth=1
	movsd	.LCPI18_2, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI18_4, %xmm1        # xmm1 = mem[0],zero
	movslq	-152(%rbp), %rax
	movq	-56(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cvtsi2ssl	%edx, %xmm2
	movss	%xmm2, -100(%rbp)
	movslq	-152(%rbp), %rax
	movq	-64(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cvtsi2ssl	%edx, %xmm2
	movss	%xmm2, -104(%rbp)
	movss	-104(%rbp), %xmm2       # xmm2 = mem[0],zero,zero,zero
	mulss	-84(%rbp), %xmm2
	movss	-100(%rbp), %xmm3       # xmm3 = mem[0],zero,zero,zero
	mulss	-80(%rbp), %xmm3
	addss	-88(%rbp), %xmm3
	subss	%xmm3, %xmm2
	mulss	-92(%rbp), %xmm2
	movss	%xmm2, -96(%rbp)
	cvtss2sd	-96(%rbp), %xmm2
	addsd	%xmm0, %xmm2
	mulsd	%xmm2, %xmm1
	cvtsd2ss	%xmm1, %xmm1
	movss	%xmm1, -96(%rbp)
	cvtss2sd	-96(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB18_7
# BB#6:                                 # %cond.true.28
                                        #   in Loop: Header=BB18_4 Depth=1
	movsd	.LCPI18_2, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -208(%rbp)       # 8-byte Spill
	jmp	.LBB18_11
.LBB18_7:                               # %cond.false.29
                                        #   in Loop: Header=BB18_4 Depth=1
	xorps	%xmm0, %xmm0
	cvtss2sd	-96(%rbp), %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB18_9
# BB#8:                                 # %cond.true.33
                                        #   in Loop: Header=BB18_4 Depth=1
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -216(%rbp)       # 8-byte Spill
	jmp	.LBB18_10
.LBB18_9:                               # %cond.false.34
                                        #   in Loop: Header=BB18_4 Depth=1
	cvtss2sd	-96(%rbp), %xmm0
	movsd	%xmm0, -216(%rbp)       # 8-byte Spill
.LBB18_10:                              # %cond.end.36
                                        #   in Loop: Header=BB18_4 Depth=1
	movsd	-216(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -208(%rbp)       # 8-byte Spill
.LBB18_11:                              # %cond.end.38
                                        #   in Loop: Header=BB18_4 Depth=1
	movsd	-208(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -96(%rbp)
	movl	-152(%rbp), %eax
	shll	$2, %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movw	%ax, %si
	movw	%si, -112(%rbp)
	movl	-152(%rbp), %eax
	movl	%eax, %ecx
	leal	1(,%rcx,4), %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movw	%ax, %si
	movw	%si, -110(%rbp)
	movl	-152(%rbp), %eax
	movl	%eax, %ecx
	leal	2(,%rcx,4), %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movw	%ax, %si
	movw	%si, -108(%rbp)
	movl	-152(%rbp), %eax
	movl	%eax, %ecx
	leal	3(,%rcx,4), %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movw	%ax, %si
	movw	%si, -106(%rbp)
	movl	-152(%rbp), %eax
	shll	$2, %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movw	%ax, %si
	movw	%si, -120(%rbp)
	movl	-152(%rbp), %eax
	movl	%eax, %ecx
	leal	1(,%rcx,4), %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movw	%ax, %si
	movw	%si, -118(%rbp)
	movl	-152(%rbp), %eax
	movl	%eax, %ecx
	leal	2(,%rcx,4), %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movw	%ax, %si
	movw	%si, -116(%rbp)
	movl	-152(%rbp), %eax
	movl	%eax, %ecx
	leal	3(,%rcx,4), %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rdx
	movb	(%rdx,%rcx), %dil
	movzbl	%dil, %eax
	movw	%ax, %si
	movw	%si, -114(%rbp)
	movss	-96(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm0
	jne	.LBB18_12
	jp	.LBB18_12
	jmp	.LBB18_13
.LBB18_12:                              # %if.then
                                        #   in Loop: Header=BB18_4 Depth=1
	movl	$255, %eax
	movzwl	-106(%rbp), %ecx
	movzwl	-112(%rbp), %edx
	imull	%edx, %ecx
	movzwl	-106(%rbp), %edx
	movl	%eax, %esi
	subl	%edx, %esi
	movzwl	-120(%rbp), %edx
	imull	%edx, %esi
	addl	%esi, %ecx
	movw	%cx, %di
	movw	%di, -128(%rbp)
	movzwl	-106(%rbp), %ecx
	movzwl	-110(%rbp), %edx
	imull	%edx, %ecx
	movzwl	-106(%rbp), %edx
	movl	%eax, %esi
	subl	%edx, %esi
	movzwl	-118(%rbp), %edx
	imull	%edx, %esi
	addl	%esi, %ecx
	movw	%cx, %di
	movw	%di, -126(%rbp)
	movzwl	-106(%rbp), %ecx
	movzwl	-108(%rbp), %edx
	imull	%edx, %ecx
	movzwl	-106(%rbp), %edx
	movl	%eax, %esi
	subl	%edx, %esi
	movzwl	-116(%rbp), %edx
	imull	%edx, %esi
	addl	%esi, %ecx
	movw	%cx, %di
	movw	%di, -124(%rbp)
	movzwl	-106(%rbp), %ecx
	shll	$8, %ecx
	movzwl	-106(%rbp), %edx
	subl	%edx, %ecx
	movzwl	-106(%rbp), %edx
	subl	%edx, %eax
	movzwl	-114(%rbp), %edx
	imull	%edx, %eax
	addl	%eax, %ecx
	movw	%cx, %di
	movw	%di, -122(%rbp)
.LBB18_13:                              # %if.end
                                        #   in Loop: Header=BB18_4 Depth=1
	movss	.LCPI18_5, %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	-96(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jne	.LBB18_14
	jp	.LBB18_14
	jmp	.LBB18_15
.LBB18_14:                              # %if.then.148
                                        #   in Loop: Header=BB18_4 Depth=1
	movl	$255, %eax
	movzwl	-114(%rbp), %ecx
	movzwl	-120(%rbp), %edx
	imull	%edx, %ecx
	movzwl	-114(%rbp), %edx
	movl	%eax, %esi
	subl	%edx, %esi
	movzwl	-112(%rbp), %edx
	imull	%edx, %esi
	addl	%esi, %ecx
	movw	%cx, %di
	movw	%di, -136(%rbp)
	movzwl	-114(%rbp), %ecx
	movzwl	-118(%rbp), %edx
	imull	%edx, %ecx
	movzwl	-114(%rbp), %edx
	movl	%eax, %esi
	subl	%edx, %esi
	movzwl	-110(%rbp), %edx
	imull	%edx, %esi
	addl	%esi, %ecx
	movw	%cx, %di
	movw	%di, -134(%rbp)
	movzwl	-114(%rbp), %ecx
	movzwl	-116(%rbp), %edx
	imull	%edx, %ecx
	movzwl	-114(%rbp), %edx
	movl	%eax, %esi
	subl	%edx, %esi
	movzwl	-108(%rbp), %edx
	imull	%edx, %esi
	addl	%esi, %ecx
	movw	%cx, %di
	movw	%di, -132(%rbp)
	movzwl	-114(%rbp), %ecx
	shll	$8, %ecx
	movzwl	-114(%rbp), %edx
	subl	%edx, %ecx
	movzwl	-114(%rbp), %edx
	subl	%edx, %eax
	movzwl	-106(%rbp), %edx
	imull	%edx, %eax
	addl	%eax, %ecx
	movw	%cx, %di
	movw	%di, -130(%rbp)
.LBB18_15:                              # %if.end.206
                                        #   in Loop: Header=BB18_4 Depth=1
	movss	.LCPI18_5, %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	-96(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jne	.LBB18_17
	jp	.LBB18_17
# BB#16:                                # %if.then.209
                                        #   in Loop: Header=BB18_4 Depth=1
	movw	-128(%rbp), %ax
	movw	%ax, -144(%rbp)
	movw	-126(%rbp), %ax
	movw	%ax, -142(%rbp)
	movw	-124(%rbp), %ax
	movw	%ax, -140(%rbp)
	movw	-122(%rbp), %ax
	movw	%ax, -138(%rbp)
	jmp	.LBB18_45
.LBB18_17:                              # %if.else
                                        #   in Loop: Header=BB18_4 Depth=1
	xorps	%xmm0, %xmm0
	movss	-96(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jne	.LBB18_19
	jp	.LBB18_19
# BB#18:                                # %if.then.220
                                        #   in Loop: Header=BB18_4 Depth=1
	movw	-136(%rbp), %ax
	movw	%ax, -144(%rbp)
	movw	-134(%rbp), %ax
	movw	%ax, -142(%rbp)
	movw	-132(%rbp), %ax
	movw	%ax, -140(%rbp)
	movw	-130(%rbp), %ax
	movw	%ax, -138(%rbp)
	jmp	.LBB18_44
.LBB18_19:                              # %if.else.229
                                        #   in Loop: Header=BB18_4 Depth=1
	movss	.LCPI18_5, %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	-96(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	movzwl	-128(%rbp), %eax
	cvtsi2ssl	%eax, %xmm2
	mulss	%xmm2, %xmm1
	subss	-96(%rbp), %xmm0
	movzwl	-136(%rbp), %eax
	cvtsi2ssl	%eax, %xmm2
	mulss	%xmm2, %xmm0
	addss	%xmm0, %xmm1
	cvttss2si	%xmm1, %eax
	movl	%eax, -156(%rbp)
	cmpl	$65025, -156(%rbp)      # imm = 0xFE01
	jle	.LBB18_21
# BB#20:                                # %cond.true.243
                                        #   in Loop: Header=BB18_4 Depth=1
	movl	$65025, %eax            # imm = 0xFE01
	movl	%eax, -220(%rbp)        # 4-byte Spill
	jmp	.LBB18_25
.LBB18_21:                              # %cond.false.244
                                        #   in Loop: Header=BB18_4 Depth=1
	cmpl	$0, -156(%rbp)
	jge	.LBB18_23
# BB#22:                                # %cond.true.247
                                        #   in Loop: Header=BB18_4 Depth=1
	xorl	%eax, %eax
	movl	%eax, -224(%rbp)        # 4-byte Spill
	jmp	.LBB18_24
.LBB18_23:                              # %cond.false.248
                                        #   in Loop: Header=BB18_4 Depth=1
	movl	-156(%rbp), %eax
	movl	%eax, -224(%rbp)        # 4-byte Spill
.LBB18_24:                              # %cond.end.249
                                        #   in Loop: Header=BB18_4 Depth=1
	movl	-224(%rbp), %eax        # 4-byte Reload
	movl	%eax, -220(%rbp)        # 4-byte Spill
.LBB18_25:                              # %cond.end.251
                                        #   in Loop: Header=BB18_4 Depth=1
	movl	-220(%rbp), %eax        # 4-byte Reload
	movss	.LCPI18_5, %xmm0        # xmm0 = mem[0],zero,zero,zero
	movw	%ax, %cx
	movw	%cx, -144(%rbp)
	movss	-96(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	movzwl	-126(%rbp), %eax
	cvtsi2ssl	%eax, %xmm2
	mulss	%xmm2, %xmm1
	subss	-96(%rbp), %xmm0
	movzwl	-134(%rbp), %eax
	cvtsi2ssl	%eax, %xmm2
	mulss	%xmm2, %xmm0
	addss	%xmm0, %xmm1
	cvttss2si	%xmm1, %eax
	movl	%eax, -156(%rbp)
	cmpl	$65025, -156(%rbp)      # imm = 0xFE01
	jle	.LBB18_27
# BB#26:                                # %cond.true.268
                                        #   in Loop: Header=BB18_4 Depth=1
	movl	$65025, %eax            # imm = 0xFE01
	movl	%eax, -228(%rbp)        # 4-byte Spill
	jmp	.LBB18_31
.LBB18_27:                              # %cond.false.269
                                        #   in Loop: Header=BB18_4 Depth=1
	cmpl	$0, -156(%rbp)
	jge	.LBB18_29
# BB#28:                                # %cond.true.272
                                        #   in Loop: Header=BB18_4 Depth=1
	xorl	%eax, %eax
	movl	%eax, -232(%rbp)        # 4-byte Spill
	jmp	.LBB18_30
.LBB18_29:                              # %cond.false.273
                                        #   in Loop: Header=BB18_4 Depth=1
	movl	-156(%rbp), %eax
	movl	%eax, -232(%rbp)        # 4-byte Spill
.LBB18_30:                              # %cond.end.274
                                        #   in Loop: Header=BB18_4 Depth=1
	movl	-232(%rbp), %eax        # 4-byte Reload
	movl	%eax, -228(%rbp)        # 4-byte Spill
.LBB18_31:                              # %cond.end.276
                                        #   in Loop: Header=BB18_4 Depth=1
	movl	-228(%rbp), %eax        # 4-byte Reload
	movss	.LCPI18_5, %xmm0        # xmm0 = mem[0],zero,zero,zero
	movw	%ax, %cx
	movw	%cx, -142(%rbp)
	movss	-96(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	movzwl	-124(%rbp), %eax
	cvtsi2ssl	%eax, %xmm2
	mulss	%xmm2, %xmm1
	subss	-96(%rbp), %xmm0
	movzwl	-132(%rbp), %eax
	cvtsi2ssl	%eax, %xmm2
	mulss	%xmm2, %xmm0
	addss	%xmm0, %xmm1
	cvttss2si	%xmm1, %eax
	movl	%eax, -156(%rbp)
	cmpl	$65025, -156(%rbp)      # imm = 0xFE01
	jle	.LBB18_33
# BB#32:                                # %cond.true.293
                                        #   in Loop: Header=BB18_4 Depth=1
	movl	$65025, %eax            # imm = 0xFE01
	movl	%eax, -236(%rbp)        # 4-byte Spill
	jmp	.LBB18_37
.LBB18_33:                              # %cond.false.294
                                        #   in Loop: Header=BB18_4 Depth=1
	cmpl	$0, -156(%rbp)
	jge	.LBB18_35
# BB#34:                                # %cond.true.297
                                        #   in Loop: Header=BB18_4 Depth=1
	xorl	%eax, %eax
	movl	%eax, -240(%rbp)        # 4-byte Spill
	jmp	.LBB18_36
.LBB18_35:                              # %cond.false.298
                                        #   in Loop: Header=BB18_4 Depth=1
	movl	-156(%rbp), %eax
	movl	%eax, -240(%rbp)        # 4-byte Spill
.LBB18_36:                              # %cond.end.299
                                        #   in Loop: Header=BB18_4 Depth=1
	movl	-240(%rbp), %eax        # 4-byte Reload
	movl	%eax, -236(%rbp)        # 4-byte Spill
.LBB18_37:                              # %cond.end.301
                                        #   in Loop: Header=BB18_4 Depth=1
	movl	-236(%rbp), %eax        # 4-byte Reload
	movss	.LCPI18_5, %xmm0        # xmm0 = mem[0],zero,zero,zero
	movw	%ax, %cx
	movw	%cx, -140(%rbp)
	movss	-96(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	movzwl	-122(%rbp), %eax
	cvtsi2ssl	%eax, %xmm2
	mulss	%xmm2, %xmm1
	subss	-96(%rbp), %xmm0
	movzwl	-130(%rbp), %eax
	cvtsi2ssl	%eax, %xmm2
	mulss	%xmm2, %xmm0
	addss	%xmm0, %xmm1
	cvttss2si	%xmm1, %eax
	movl	%eax, -156(%rbp)
	cmpl	$65025, -156(%rbp)      # imm = 0xFE01
	jle	.LBB18_39
# BB#38:                                # %cond.true.318
                                        #   in Loop: Header=BB18_4 Depth=1
	movl	$65025, %eax            # imm = 0xFE01
	movl	%eax, -244(%rbp)        # 4-byte Spill
	jmp	.LBB18_43
.LBB18_39:                              # %cond.false.319
                                        #   in Loop: Header=BB18_4 Depth=1
	cmpl	$0, -156(%rbp)
	jge	.LBB18_41
# BB#40:                                # %cond.true.322
                                        #   in Loop: Header=BB18_4 Depth=1
	xorl	%eax, %eax
	movl	%eax, -248(%rbp)        # 4-byte Spill
	jmp	.LBB18_42
.LBB18_41:                              # %cond.false.323
                                        #   in Loop: Header=BB18_4 Depth=1
	movl	-156(%rbp), %eax
	movl	%eax, -248(%rbp)        # 4-byte Spill
.LBB18_42:                              # %cond.end.324
                                        #   in Loop: Header=BB18_4 Depth=1
	movl	-248(%rbp), %eax        # 4-byte Reload
	movl	%eax, -244(%rbp)        # 4-byte Spill
.LBB18_43:                              # %cond.end.326
                                        #   in Loop: Header=BB18_4 Depth=1
	movl	-244(%rbp), %eax        # 4-byte Reload
	movw	%ax, %cx
	movw	%cx, -138(%rbp)
.LBB18_44:                              # %if.end.330
                                        #   in Loop: Header=BB18_4 Depth=1
	jmp	.LBB18_45
.LBB18_45:                              # %if.end.331
                                        #   in Loop: Header=BB18_4 Depth=1
	movl	$256, %eax              # imm = 0x100
	movzwl	-144(%rbp), %ecx
	movzwl	-144(%rbp), %edx
	movl	%eax, -252(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-252(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	addl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, %eax
	cltd
	idivl	%esi
	movw	%ax, %di
	movw	%di, -146(%rbp)
	movzwl	-146(%rbp), %eax
	cmpl	$255, %eax
	jge	.LBB18_47
# BB#46:                                # %cond.true.344
                                        #   in Loop: Header=BB18_4 Depth=1
	movzwl	-146(%rbp), %eax
	movl	%eax, -256(%rbp)        # 4-byte Spill
	jmp	.LBB18_48
.LBB18_47:                              # %cond.false.346
                                        #   in Loop: Header=BB18_4 Depth=1
	movl	$255, %eax
	movl	%eax, -256(%rbp)        # 4-byte Spill
	jmp	.LBB18_48
.LBB18_48:                              # %cond.end.347
                                        #   in Loop: Header=BB18_4 Depth=1
	movl	-256(%rbp), %eax        # 4-byte Reload
	movl	$256, %ecx              # imm = 0x100
	movb	%al, %dl
	movl	-152(%rbp), %eax
	shll	$2, %eax
	movslq	%eax, %rsi
	movq	-72(%rbp), %rdi
	movb	%dl, (%rdi,%rsi)
	movzwl	-142(%rbp), %eax
	movzwl	-142(%rbp), %r8d
	movl	%eax, -260(%rbp)        # 4-byte Spill
	movl	%r8d, %eax
	cltd
	idivl	%ecx
	movl	-260(%rbp), %r8d        # 4-byte Reload
	addl	%eax, %r8d
	addl	$1, %r8d
	movl	%r8d, %eax
	cltd
	idivl	%ecx
	movw	%ax, %r9w
	movw	%r9w, -146(%rbp)
	movzwl	-146(%rbp), %eax
	cmpl	$255, %eax
	jge	.LBB18_50
# BB#49:                                # %cond.true.365
                                        #   in Loop: Header=BB18_4 Depth=1
	movzwl	-146(%rbp), %eax
	movl	%eax, -264(%rbp)        # 4-byte Spill
	jmp	.LBB18_51
.LBB18_50:                              # %cond.false.367
                                        #   in Loop: Header=BB18_4 Depth=1
	movl	$255, %eax
	movl	%eax, -264(%rbp)        # 4-byte Spill
	jmp	.LBB18_51
.LBB18_51:                              # %cond.end.368
                                        #   in Loop: Header=BB18_4 Depth=1
	movl	-264(%rbp), %eax        # 4-byte Reload
	movl	$256, %ecx              # imm = 0x100
	movb	%al, %dl
	movl	-152(%rbp), %eax
	shll	$2, %eax
	addl	$1, %eax
	movslq	%eax, %rsi
	movq	-72(%rbp), %rdi
	movb	%dl, (%rdi,%rsi)
	movzwl	-140(%rbp), %eax
	movzwl	-140(%rbp), %r8d
	movl	%eax, -268(%rbp)        # 4-byte Spill
	movl	%r8d, %eax
	cltd
	idivl	%ecx
	movl	-268(%rbp), %r8d        # 4-byte Reload
	addl	%eax, %r8d
	addl	$1, %r8d
	movl	%r8d, %eax
	cltd
	idivl	%ecx
	movw	%ax, %r9w
	movw	%r9w, -146(%rbp)
	movzwl	-146(%rbp), %eax
	cmpl	$255, %eax
	jge	.LBB18_53
# BB#52:                                # %cond.true.387
                                        #   in Loop: Header=BB18_4 Depth=1
	movzwl	-146(%rbp), %eax
	movl	%eax, -272(%rbp)        # 4-byte Spill
	jmp	.LBB18_54
.LBB18_53:                              # %cond.false.389
                                        #   in Loop: Header=BB18_4 Depth=1
	movl	$255, %eax
	movl	%eax, -272(%rbp)        # 4-byte Spill
	jmp	.LBB18_54
.LBB18_54:                              # %cond.end.390
                                        #   in Loop: Header=BB18_4 Depth=1
	movl	-272(%rbp), %eax        # 4-byte Reload
	movl	$256, %ecx              # imm = 0x100
	movb	%al, %dl
	movl	-152(%rbp), %eax
	shll	$2, %eax
	addl	$2, %eax
	movslq	%eax, %rsi
	movq	-72(%rbp), %rdi
	movb	%dl, (%rdi,%rsi)
	movzwl	-138(%rbp), %eax
	movzwl	-138(%rbp), %r8d
	movl	%eax, -276(%rbp)        # 4-byte Spill
	movl	%r8d, %eax
	cltd
	idivl	%ecx
	movl	-276(%rbp), %r8d        # 4-byte Reload
	addl	%eax, %r8d
	addl	$1, %r8d
	movl	%r8d, %eax
	cltd
	idivl	%ecx
	movw	%ax, %r9w
	movw	%r9w, -146(%rbp)
	movzwl	-146(%rbp), %eax
	cmpl	$255, %eax
	jge	.LBB18_56
# BB#55:                                # %cond.true.409
                                        #   in Loop: Header=BB18_4 Depth=1
	movzwl	-146(%rbp), %eax
	movl	%eax, -280(%rbp)        # 4-byte Spill
	jmp	.LBB18_57
.LBB18_56:                              # %cond.false.411
                                        #   in Loop: Header=BB18_4 Depth=1
	movl	$255, %eax
	movl	%eax, -280(%rbp)        # 4-byte Spill
	jmp	.LBB18_57
.LBB18_57:                              # %cond.end.412
                                        #   in Loop: Header=BB18_4 Depth=1
	movl	-280(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movl	-152(%rbp), %eax
	shll	$2, %eax
	addl	$3, %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
# BB#58:                                # %for.inc
                                        #   in Loop: Header=BB18_4 Depth=1
	movl	-152(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -152(%rbp)
	jmp	.LBB18_4
.LBB18_59:                              # %for.end
	addq	$264, %rsp              # imm = 0x108
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end18:
	.size	DepthMerge_executeRegion, .Lfunc_end18-DepthMerge_executeRegion
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

	.type	query.args,@object      # @query.args
	.align	16
query.args:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str
	.quad	.L.str.1
	.long	13                      # 0xd
	.zero	4
	.quad	.L.str.2
	.quad	.L.str.3
	.long	16                      # 0x10
	.zero	4
	.quad	.L.str.4
	.quad	.L.str.5
	.long	16                      # 0x10
	.zero	4
	.quad	.L.str.6
	.quad	.L.str.7
	.long	16                      # 0x10
	.zero	4
	.quad	.L.str.8
	.quad	.L.str.9
	.long	16                      # 0x10
	.zero	4
	.quad	.L.str.10
	.quad	.L.str.11
	.long	16                      # 0x10
	.zero	4
	.quad	.L.str.12
	.quad	.L.str.13
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.14
	.quad	.L.str.15
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.16
	.quad	.L.str.17
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.18
	.quad	.L.str.19
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.20
	.quad	.L.str.21
	.size	query.args, 264

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
	.asciz	"image"
	.size	.L.str.2, 6

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Input image (unused)"
	.size	.L.str.3, 21

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"result"
	.size	.L.str.4, 7

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Result"
	.size	.L.str.5, 7

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"source1"
	.size	.L.str.6, 8

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Source 1"
	.size	.L.str.7, 9

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"source2"
	.size	.L.str.8, 8

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Source 2"
	.size	.L.str.9, 9

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"depthMap1"
	.size	.L.str.10, 10

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Depth map 1"
	.size	.L.str.11, 12

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"depthMap2"
	.size	.L.str.12, 10

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Depth map 2"
	.size	.L.str.13, 12

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"overlap"
	.size	.L.str.14, 8

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Overlap"
	.size	.L.str.15, 8

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"offset"
	.size	.L.str.16, 7

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Depth relative offset"
	.size	.L.str.17, 22

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"scale1"
	.size	.L.str.18, 7

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Depth relative scale 1"
	.size	.L.str.19, 23

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"scale2"
	.size	.L.str.20, 7

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Depth relative scale 2"
	.size	.L.str.21, 23

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"plug-in-depth-merge"
	.size	.L.str.22, 20

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Combine two images using depth maps (z-buffers)"
	.size	.L.str.23, 48

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"Taking as input two full-color, full-alpha images and two corresponding grayscale depth maps, this plug-in combines the images based on which is closer (has a lower depth map value) at each point."
	.size	.L.str.24, 197

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Sean Cier"
	.size	.L.str.25, 10

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"August 1998"
	.size	.L.str.26, 12

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"_Depth Merge..."
	.size	.L.str.27, 16

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"RGB*, GRAY*"
	.size	.L.str.28, 12

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"<Image>/Filters/Combine"
	.size	.L.str.29, 24

	.type	run.values,@object      # @run.values
	.local	run.values
	.comm	run.values,40,16
	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"gimp20-std-plug-ins"
	.size	.L.str.30, 20

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"UTF-8"
	.size	.L.str.31, 6

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"depth-merge"
	.size	.L.str.32, 12

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"Depth Merge"
	.size	.L.str.33, 12

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"gimp-depth-merge"
	.size	.L.str.34, 17

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"gtk-cancel"
	.size	.L.str.35, 11

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"gtk-ok"
	.size	.L.str.36, 7

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"Source 1:"
	.size	.L.str.37, 10

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"Depth map:"
	.size	.L.str.38, 11

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"Source 2:"
	.size	.L.str.39, 10

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"O_verlap:"
	.size	.L.str.40, 10

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"value-changed"
	.size	.L.str.41, 14

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"dm"
	.size	.L.str.42, 3

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"O_ffset:"
	.size	.L.str.43, 9

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"Sc_ale 1:"
	.size	.L.str.44, 10

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"Sca_le 2:"
	.size	.L.str.45, 10

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"Depth-merging"
	.size	.L.str.46, 14


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
