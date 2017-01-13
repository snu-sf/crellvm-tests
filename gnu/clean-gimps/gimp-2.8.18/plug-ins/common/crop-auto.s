	.text
	.file	"crop-auto.bc"
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
	subq	$152, %rsp
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
	movabsq	$.L.str.6, %rdi
	movabsq	$.L.str.7, %rsi
	movabsq	$.L.str.8, %rdx
	movabsq	$.L.str.9, %rax
	movabsq	$.L.str.10, %r9
	movabsq	$.L.str.11, %rcx
	movabsq	$.L.str.12, %r8
	movl	$1, %r10d
	movl	$3, %r11d
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
	movl	$3, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%r14, 40(%rsp)
	movq	$0, 48(%rsp)
	movq	%r12, -64(%rbp)         # 8-byte Spill
	movl	%ebx, -68(%rbp)         # 4-byte Spill
	movl	%r10d, -72(%rbp)        # 4-byte Spill
	movl	%r11d, -76(%rbp)        # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.6, %rdi
	movabsq	$.L.str.13, %rsi
	callq	gimp_plugin_menu_register
	movabsq	$.L.str.14, %rdi
	movabsq	$.L.str.15, %rsi
	movabsq	$.L.str.16, %rdx
	movabsq	$.L.str.9, %rcx
	movabsq	$.L.str.10, %r9
	movabsq	$.L.str.17, %r8
	movabsq	$.L.str.12, %r14
	movl	$1, %r10d
	movl	$3, %r11d
	xorl	%ebx, %ebx
	movabsq	$query.args, %r12
	xorl	%r15d, %r15d
	movl	%r15d, %r13d
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	movq	-88(%rbp), %r15         # 8-byte Reload
	movq	%r8, -96(%rbp)          # 8-byte Spill
	movq	%r15, %r8
	movq	-96(%rbp), %r15         # 8-byte Reload
	movq	%r15, (%rsp)
	movq	%r14, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$3, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%r12, 40(%rsp)
	movq	$0, 48(%rsp)
	movl	%eax, -100(%rbp)        # 4-byte Spill
	movq	%r13, -112(%rbp)        # 8-byte Spill
	movl	%ebx, -116(%rbp)        # 4-byte Spill
	movl	%r11d, -120(%rbp)       # 4-byte Spill
	movl	%r10d, -124(%rbp)       # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.14, %rdi
	movabsq	$.L.str.18, %rsi
	callq	gimp_plugin_menu_register
	movl	%eax, -128(%rbp)        # 4-byte Spill
	addq	$152, %rsp
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
	movabsq	$run.values, %rax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	$3, -56(%rbp)
	movq	-32(%rbp), %rcx
	movl	$1, (%rcx)
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	movl	8(%rax), %esi
	movl	%esi, -52(%rbp)
	cmpl	$1, -52(%rbp)
	setne	%r9b
	andb	$1, %r9b
	movzbl	%r9b, %esi
	movl	%esi, -64(%rbp)
# BB#1:                                 # %do.body
	callq	gimp_locale_directory
	movabsq	$.L.str.19, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.19, %rdi
	movabsq	$.L.str.20, %rsi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.19, %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	textdomain
	movq	%rax, -88(%rbp)         # 8-byte Spill
# BB#2:                                 # %do.end
	cmpl	$3, -12(%rbp)
	je	.LBB1_4
# BB#3:                                 # %if.then
	movl	$1, -56(%rbp)
	jmp	.LBB1_17
.LBB1_4:                                # %if.end
	movq	-24(%rbp), %rax
	movl	88(%rax), %edi
	callq	gimp_drawable_get
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rax
	movl	48(%rax), %edi
	movl	%edi, -60(%rbp)
	movq	-48(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_is_rgb
	cmpl	$0, %eax
	jne	.LBB1_7
# BB#5:                                 # %lor.lhs.false
	movq	-48(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_is_gray
	cmpl	$0, %eax
	jne	.LBB1_7
# BB#6:                                 # %lor.lhs.false.15
	movq	-48(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_is_indexed
	cmpl	$0, %eax
	je	.LBB1_15
.LBB1_7:                                # %if.then.19
	cmpl	$0, -64(%rbp)
	je	.LBB1_9
# BB#8:                                 # %if.then.21
	movabsq	$.L.str.21, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_progress_init
	movl	%eax, -92(%rbp)         # 4-byte Spill
.LBB1_9:                                # %if.end.24
	movq	-48(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
	callq	gimp_tile_width
	movl	-96(%rbp), %ecx         # 4-byte Reload
	movl	%eax, -100(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	xorl	%edx, %edx
	movl	-100(%rbp), %esi        # 4-byte Reload
	divl	%esi
	movq	-48(%rbp), %rdi
	movl	8(%rdi), %r8d
	movl	%eax, -104(%rbp)        # 4-byte Spill
	movl	%r8d, -108(%rbp)        # 4-byte Spill
	callq	gimp_tile_height
	movl	-108(%rbp), %ecx        # 4-byte Reload
	movl	%eax, -112(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	xorl	%esi, %esi
	movl	%esi, %edx
	movl	-112(%rbp), %esi        # 4-byte Reload
	divl	%esi
	movl	-104(%rbp), %r8d        # 4-byte Reload
	cmpl	%eax, %r8d
	jbe	.LBB1_11
# BB#10:                                # %cond.true
	movq	-48(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
	callq	gimp_tile_width
	movl	-116(%rbp), %ecx        # 4-byte Reload
	movl	%eax, -120(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	xorl	%edx, %edx
	movl	-120(%rbp), %esi        # 4-byte Reload
	divl	%esi
	movl	%eax, -124(%rbp)        # 4-byte Spill
	jmp	.LBB1_12
.LBB1_11:                               # %cond.false
	movq	-48(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -128(%rbp)        # 4-byte Spill
	callq	gimp_tile_height
	movl	-128(%rbp), %ecx        # 4-byte Reload
	movl	%eax, -132(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	xorl	%edx, %edx
	movl	-132(%rbp), %esi        # 4-byte Reload
	divl	%esi
	movl	%eax, -124(%rbp)        # 4-byte Spill
.LBB1_12:                               # %cond.end
	movl	-124(%rbp), %eax        # 4-byte Reload
	addl	$1, %eax
	movl	%eax, %eax
	movl	%eax, %edi
	callq	gimp_tile_cache_ntiles
	movq	-48(%rbp), %rdi
	movl	-60(%rbp), %esi
	movl	-64(%rbp), %edx
	movq	-8(%rbp), %rcx
	movl	$.L.str.14, %eax
	movl	%eax, %r8d
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movl	%esi, -148(%rbp)        # 4-byte Spill
	movq	%r8, %rsi
	movl	%edx, -152(%rbp)        # 4-byte Spill
	callq	strcmp
	cmpl	$0, %eax
	sete	%r9b
	andb	$1, %r9b
	movzbl	%r9b, %ecx
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movl	-148(%rbp), %esi        # 4-byte Reload
	movl	-152(%rbp), %edx        # 4-byte Reload
	callq	autocrop
	cmpl	$0, -64(%rbp)
	je	.LBB1_14
# BB#13:                                # %if.then.41
	callq	gimp_displays_flush
	movl	%eax, -156(%rbp)        # 4-byte Spill
.LBB1_14:                               # %if.end.43
	jmp	.LBB1_16
.LBB1_15:                               # %if.else
	movl	$0, -56(%rbp)
.LBB1_16:                               # %if.end.44
	jmp	.LBB1_17
.LBB1_17:                               # %out
	movl	$21, run.values
	movl	-56(%rbp), %eax
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

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_0:
	.quad	4598175219545276416     # double 0.25
.LCPI3_1:
	.quad	4602678819172646912     # double 0.5
.LCPI3_2:
	.quad	4604930618986332160     # double 0.75
.LCPI3_3:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	autocrop,@function
autocrop:                               # @autocrop
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
	pushq	%rbx
	subq	$264, %rsp              # imm = 0x108
.Ltmp17:
	.cfi_offset %rbx, -24
	leaq	-92(%rbp), %rax
	leaq	-96(%rbp), %r8
	xorl	%r9d, %r9d
	movl	$4, %r10d
	movl	%r10d, %r11d
	leaq	-132(%rbp), %rbx
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	%rbx, %rdi
	movl	%r9d, %esi
	movq	%r11, %rdx
	movq	%r8, -144(%rbp)         # 8-byte Spill
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	memset
	movl	$0, -136(%rbp)
	movq	-16(%rbp), %rax
	movl	4(%rax), %ecx
	movl	%ecx, -84(%rbp)
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -88(%rbp)
	movq	-16(%rbp), %rax
	movl	12(%rax), %ecx
	movl	%ecx, bytes
	movq	-16(%rbp), %rax
	movl	(%rax), %edi
	movq	-152(%rbp), %rsi        # 8-byte Reload
	movq	-144(%rbp), %rdx        # 8-byte Reload
	callq	gimp_drawable_offsets
	cmpl	$0, -28(%rbp)
	movl	%eax, -156(%rbp)        # 4-byte Spill
	je	.LBB3_4
# BB#1:                                 # %if.then
	movl	-20(%rbp), %edi
	callq	gimp_image_get_active_layer
	movl	%eax, -136(%rbp)
	cmpl	$-1, -136(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then.4
	movq	-16(%rbp), %rdi
	callq	gimp_drawable_detach
	jmp	.LBB3_86
.LBB3_3:                                # %if.end
	jmp	.LBB3_4
.LBB3_4:                                # %if.end.5
	leaq	-80(%rbp), %rdi
	xorl	%eax, %eax
	movq	-16(%rbp), %rsi
	movl	-84(%rbp), %r8d
	movl	-88(%rbp), %r9d
	movl	%eax, %edx
	movl	%eax, %ecx
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	movl	-84(%rbp), %eax
	cmpl	-88(%rbp), %eax
	jle	.LBB3_6
# BB#5:                                 # %cond.true
	movl	-84(%rbp), %eax
	movl	%eax, -160(%rbp)        # 4-byte Spill
	jmp	.LBB3_7
.LBB3_6:                                # %cond.false
	movl	-88(%rbp), %eax
	movl	%eax, -160(%rbp)        # 4-byte Spill
.LBB3_7:                                # %cond.end
	movl	-160(%rbp), %eax        # 4-byte Reload
	imull	bytes, %eax
	movslq	%eax, %rdi
	callq	g_malloc
	movq	%rax, -128(%rbp)
	movl	-84(%rbp), %esi
	movl	-88(%rbp), %edx
	movl	bytes, %ecx
	movq	-16(%rbp), %rax
	movl	(%rax), %edi
	movl	%esi, -164(%rbp)        # 4-byte Spill
	movl	%edx, -168(%rbp)        # 4-byte Spill
	movl	%ecx, -172(%rbp)        # 4-byte Spill
	callq	gimp_drawable_has_alpha
	leaq	-80(%rbp), %rdi
	leaq	-132(%rbp), %r9
	movl	-164(%rbp), %esi        # 4-byte Reload
	movl	-168(%rbp), %edx        # 4-byte Reload
	movl	-172(%rbp), %ecx        # 4-byte Reload
	movl	%eax, %r8d
	callq	guess_bgcolor
	movl	$0, -120(%rbp)
	movl	$0, -104(%rbp)
	movl	%eax, -176(%rbp)        # 4-byte Spill
.LBB3_8:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_12 Depth 2
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-104(%rbp), %eax
	cmpl	-88(%rbp), %eax
	movb	%cl, -177(%rbp)         # 1-byte Spill
	jge	.LBB3_10
# BB#9:                                 # %land.rhs
                                        #   in Loop: Header=BB3_8 Depth=1
	cmpl	$0, -120(%rbp)
	setne	%al
	xorb	$-1, %al
	movb	%al, -177(%rbp)         # 1-byte Spill
.LBB3_10:                               # %land.end
                                        #   in Loop: Header=BB3_8 Depth=1
	movb	-177(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB3_11
	jmp	.LBB3_19
.LBB3_11:                               # %for.body
                                        #   in Loop: Header=BB3_8 Depth=1
	leaq	-80(%rbp), %rdi
	xorl	%edx, %edx
	movq	-128(%rbp), %rsi
	movl	-104(%rbp), %ecx
	movl	-84(%rbp), %r8d
	callq	gimp_pixel_rgn_get_row
	movl	$0, -116(%rbp)
.LBB3_12:                               # %for.cond.14
                                        #   Parent Loop BB3_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-116(%rbp), %eax
	cmpl	-84(%rbp), %eax
	movb	%cl, -178(%rbp)         # 1-byte Spill
	jge	.LBB3_14
# BB#13:                                # %land.rhs.17
                                        #   in Loop: Header=BB3_12 Depth=2
	cmpl	$0, -120(%rbp)
	setne	%al
	xorb	$-1, %al
	movb	%al, -178(%rbp)         # 1-byte Spill
.LBB3_14:                               # %land.end.20
                                        #   in Loop: Header=BB3_12 Depth=2
	movb	-178(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB3_15
	jmp	.LBB3_17
.LBB3_15:                               # %for.body.21
                                        #   in Loop: Header=BB3_12 Depth=2
	leaq	-132(%rbp), %rdi
	movq	-128(%rbp), %rax
	movl	-116(%rbp), %ecx
	imull	bytes, %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movl	bytes, %edx
	movq	%rax, %rsi
	callq	colors_equal
	cmpl	$0, %eax
	setne	%r8b
	xorb	$-1, %r8b
	andb	$1, %r8b
	movzbl	%r8b, %eax
	movl	%eax, -120(%rbp)
# BB#16:                                # %for.inc
                                        #   in Loop: Header=BB3_12 Depth=2
	movl	-116(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -116(%rbp)
	jmp	.LBB3_12
.LBB3_17:                               # %for.end
                                        #   in Loop: Header=BB3_8 Depth=1
	jmp	.LBB3_18
.LBB3_18:                               # %for.inc.27
                                        #   in Loop: Header=BB3_8 Depth=1
	movl	-104(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -104(%rbp)
	jmp	.LBB3_8
.LBB3_19:                               # %for.end.29
	movl	-104(%rbp), %eax
	cmpl	-88(%rbp), %eax
	jne	.LBB3_22
# BB#20:                                # %land.lhs.true
	cmpl	$0, -120(%rbp)
	jne	.LBB3_22
# BB#21:                                # %if.then.33
	movl	$0, -100(%rbp)
	movl	-84(%rbp), %eax
	movl	%eax, -108(%rbp)
	movl	$0, -104(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, -112(%rbp)
	jmp	.LBB3_73
.LBB3_22:                               # %if.end.34
	cmpl	$0, -24(%rbp)
	je	.LBB3_24
# BB#23:                                # %if.then.36
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	callq	gimp_progress_update
	movl	%eax, -184(%rbp)        # 4-byte Spill
.LBB3_24:                               # %if.end.38
	movl	$0, -120(%rbp)
	movl	-88(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -112(%rbp)
.LBB3_25:                               # %for.cond.39
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_29 Depth 2
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -112(%rbp)
	movb	%cl, -185(%rbp)         # 1-byte Spill
	jl	.LBB3_27
# BB#26:                                # %land.rhs.42
                                        #   in Loop: Header=BB3_25 Depth=1
	cmpl	$0, -120(%rbp)
	setne	%al
	xorb	$-1, %al
	movb	%al, -185(%rbp)         # 1-byte Spill
.LBB3_27:                               # %land.end.46
                                        #   in Loop: Header=BB3_25 Depth=1
	movb	-185(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB3_28
	jmp	.LBB3_36
.LBB3_28:                               # %for.body.47
                                        #   in Loop: Header=BB3_25 Depth=1
	leaq	-80(%rbp), %rdi
	xorl	%edx, %edx
	movq	-128(%rbp), %rsi
	movl	-112(%rbp), %ecx
	movl	-84(%rbp), %r8d
	callq	gimp_pixel_rgn_get_row
	movl	$0, -116(%rbp)
.LBB3_29:                               # %for.cond.48
                                        #   Parent Loop BB3_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-116(%rbp), %eax
	cmpl	-84(%rbp), %eax
	movb	%cl, -186(%rbp)         # 1-byte Spill
	jge	.LBB3_31
# BB#30:                                # %land.rhs.51
                                        #   in Loop: Header=BB3_29 Depth=2
	cmpl	$0, -120(%rbp)
	setne	%al
	xorb	$-1, %al
	movb	%al, -186(%rbp)         # 1-byte Spill
.LBB3_31:                               # %land.end.55
                                        #   in Loop: Header=BB3_29 Depth=2
	movb	-186(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB3_32
	jmp	.LBB3_34
.LBB3_32:                               # %for.body.56
                                        #   in Loop: Header=BB3_29 Depth=2
	leaq	-132(%rbp), %rdi
	movq	-128(%rbp), %rax
	movl	-116(%rbp), %ecx
	imull	bytes, %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movl	bytes, %edx
	movq	%rax, %rsi
	callq	colors_equal
	cmpl	$0, %eax
	setne	%r8b
	xorb	$-1, %r8b
	andb	$1, %r8b
	movzbl	%r8b, %eax
	movl	%eax, -120(%rbp)
# BB#33:                                # %for.inc.65
                                        #   in Loop: Header=BB3_29 Depth=2
	movl	-116(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -116(%rbp)
	jmp	.LBB3_29
.LBB3_34:                               # %for.end.67
                                        #   in Loop: Header=BB3_25 Depth=1
	jmp	.LBB3_35
.LBB3_35:                               # %for.inc.68
                                        #   in Loop: Header=BB3_25 Depth=1
	movl	-112(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -112(%rbp)
	jmp	.LBB3_25
.LBB3_36:                               # %for.end.69
	movl	-112(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -112(%rbp)
	cmpl	$0, -104(%rbp)
	jle	.LBB3_38
# BB#37:                                # %if.then.73
	movl	-104(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -104(%rbp)
.LBB3_38:                               # %if.end.75
	movl	-112(%rbp), %eax
	cmpl	-88(%rbp), %eax
	jge	.LBB3_40
# BB#39:                                # %if.then.78
	movl	-112(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -112(%rbp)
.LBB3_40:                               # %if.end.80
	cmpl	$0, -24(%rbp)
	je	.LBB3_42
# BB#41:                                # %if.then.82
	movsd	.LCPI3_1, %xmm0         # xmm0 = mem[0],zero
	callq	gimp_progress_update
	movl	%eax, -192(%rbp)        # 4-byte Spill
.LBB3_42:                               # %if.end.84
	movl	$0, -120(%rbp)
	movl	$0, -100(%rbp)
.LBB3_43:                               # %for.cond.85
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_47 Depth 2
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-100(%rbp), %eax
	cmpl	-84(%rbp), %eax
	movb	%cl, -193(%rbp)         # 1-byte Spill
	jge	.LBB3_45
# BB#44:                                # %land.rhs.88
                                        #   in Loop: Header=BB3_43 Depth=1
	cmpl	$0, -120(%rbp)
	setne	%al
	xorb	$-1, %al
	movb	%al, -193(%rbp)         # 1-byte Spill
.LBB3_45:                               # %land.end.92
                                        #   in Loop: Header=BB3_43 Depth=1
	movb	-193(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB3_46
	jmp	.LBB3_54
.LBB3_46:                               # %for.body.93
                                        #   in Loop: Header=BB3_43 Depth=1
	leaq	-80(%rbp), %rdi
	movq	-128(%rbp), %rsi
	movl	-100(%rbp), %edx
	movl	-104(%rbp), %ecx
	movl	-112(%rbp), %eax
	subl	-104(%rbp), %eax
	movl	%eax, %r8d
	callq	gimp_pixel_rgn_get_col
	movl	$0, -116(%rbp)
.LBB3_47:                               # %for.cond.95
                                        #   Parent Loop BB3_43 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-116(%rbp), %eax
	movl	-112(%rbp), %edx
	subl	-104(%rbp), %edx
	cmpl	%edx, %eax
	movb	%cl, -194(%rbp)         # 1-byte Spill
	jge	.LBB3_49
# BB#48:                                # %land.rhs.99
                                        #   in Loop: Header=BB3_47 Depth=2
	cmpl	$0, -120(%rbp)
	setne	%al
	xorb	$-1, %al
	movb	%al, -194(%rbp)         # 1-byte Spill
.LBB3_49:                               # %land.end.103
                                        #   in Loop: Header=BB3_47 Depth=2
	movb	-194(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB3_50
	jmp	.LBB3_52
.LBB3_50:                               # %for.body.104
                                        #   in Loop: Header=BB3_47 Depth=2
	leaq	-132(%rbp), %rdi
	movq	-128(%rbp), %rax
	movl	-116(%rbp), %ecx
	imull	bytes, %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movl	bytes, %edx
	movq	%rax, %rsi
	callq	colors_equal
	cmpl	$0, %eax
	setne	%r8b
	xorb	$-1, %r8b
	andb	$1, %r8b
	movzbl	%r8b, %eax
	movl	%eax, -120(%rbp)
# BB#51:                                # %for.inc.113
                                        #   in Loop: Header=BB3_47 Depth=2
	movl	-116(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -116(%rbp)
	jmp	.LBB3_47
.LBB3_52:                               # %for.end.115
                                        #   in Loop: Header=BB3_43 Depth=1
	jmp	.LBB3_53
.LBB3_53:                               # %for.inc.116
                                        #   in Loop: Header=BB3_43 Depth=1
	movl	-100(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -100(%rbp)
	jmp	.LBB3_43
.LBB3_54:                               # %for.end.118
	cmpl	$0, -24(%rbp)
	je	.LBB3_56
# BB#55:                                # %if.then.120
	movsd	.LCPI3_2, %xmm0         # xmm0 = mem[0],zero
	callq	gimp_progress_update
	movl	%eax, -200(%rbp)        # 4-byte Spill
.LBB3_56:                               # %if.end.122
	movl	$0, -120(%rbp)
	movl	-84(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -108(%rbp)
.LBB3_57:                               # %for.cond.124
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_61 Depth 2
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -108(%rbp)
	movb	%cl, -201(%rbp)         # 1-byte Spill
	jl	.LBB3_59
# BB#58:                                # %land.rhs.127
                                        #   in Loop: Header=BB3_57 Depth=1
	cmpl	$0, -120(%rbp)
	setne	%al
	xorb	$-1, %al
	movb	%al, -201(%rbp)         # 1-byte Spill
.LBB3_59:                               # %land.end.131
                                        #   in Loop: Header=BB3_57 Depth=1
	movb	-201(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB3_60
	jmp	.LBB3_68
.LBB3_60:                               # %for.body.132
                                        #   in Loop: Header=BB3_57 Depth=1
	leaq	-80(%rbp), %rdi
	movq	-128(%rbp), %rsi
	movl	-108(%rbp), %edx
	movl	-104(%rbp), %ecx
	movl	-112(%rbp), %eax
	subl	-104(%rbp), %eax
	movl	%eax, %r8d
	callq	gimp_pixel_rgn_get_col
	movl	$0, -116(%rbp)
.LBB3_61:                               # %for.cond.134
                                        #   Parent Loop BB3_57 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-116(%rbp), %eax
	movl	-112(%rbp), %edx
	subl	-104(%rbp), %edx
	cmpl	%edx, %eax
	movb	%cl, -202(%rbp)         # 1-byte Spill
	jge	.LBB3_63
# BB#62:                                # %land.rhs.138
                                        #   in Loop: Header=BB3_61 Depth=2
	cmpl	$0, -120(%rbp)
	setne	%al
	xorb	$-1, %al
	movb	%al, -202(%rbp)         # 1-byte Spill
.LBB3_63:                               # %land.end.142
                                        #   in Loop: Header=BB3_61 Depth=2
	movb	-202(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB3_64
	jmp	.LBB3_66
.LBB3_64:                               # %for.body.143
                                        #   in Loop: Header=BB3_61 Depth=2
	leaq	-132(%rbp), %rdi
	movq	-128(%rbp), %rax
	movl	-116(%rbp), %ecx
	imull	bytes, %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movl	bytes, %edx
	movq	%rax, %rsi
	callq	colors_equal
	cmpl	$0, %eax
	setne	%r8b
	xorb	$-1, %r8b
	andb	$1, %r8b
	movzbl	%r8b, %eax
	movl	%eax, -120(%rbp)
# BB#65:                                # %for.inc.152
                                        #   in Loop: Header=BB3_61 Depth=2
	movl	-116(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -116(%rbp)
	jmp	.LBB3_61
.LBB3_66:                               # %for.end.154
                                        #   in Loop: Header=BB3_57 Depth=1
	jmp	.LBB3_67
.LBB3_67:                               # %for.inc.155
                                        #   in Loop: Header=BB3_57 Depth=1
	movl	-108(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -108(%rbp)
	jmp	.LBB3_57
.LBB3_68:                               # %for.end.157
	movl	-108(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -108(%rbp)
	cmpl	$0, -100(%rbp)
	jle	.LBB3_70
# BB#69:                                # %if.then.161
	movl	-100(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -100(%rbp)
.LBB3_70:                               # %if.end.163
	movl	-108(%rbp), %eax
	cmpl	-84(%rbp), %eax
	jge	.LBB3_72
# BB#71:                                # %if.then.166
	movl	-108(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -108(%rbp)
.LBB3_72:                               # %if.end.168
	jmp	.LBB3_73
.LBB3_73:                               # %done
	movq	-128(%rbp), %rdi
	callq	g_free
	movq	-16(%rbp), %rdi
	callq	gimp_drawable_detach
	cmpl	$0, -28(%rbp)
	je	.LBB3_78
# BB#74:                                # %if.then.170
	movl	-108(%rbp), %eax
	subl	-100(%rbp), %eax
	cmpl	-84(%rbp), %eax
	jne	.LBB3_76
# BB#75:                                # %lor.lhs.false
	movl	-112(%rbp), %eax
	subl	-104(%rbp), %eax
	cmpl	-88(%rbp), %eax
	je	.LBB3_77
.LBB3_76:                               # %if.then.177
	xorl	%eax, %eax
	movl	-136(%rbp), %edi
	movl	-108(%rbp), %ecx
	subl	-100(%rbp), %ecx
	movl	-112(%rbp), %edx
	subl	-104(%rbp), %edx
	movl	%eax, %esi
	subl	-100(%rbp), %esi
	subl	-104(%rbp), %eax
	movl	%esi, -208(%rbp)        # 4-byte Spill
	movl	%ecx, %esi
	movl	-208(%rbp), %ecx        # 4-byte Reload
	movl	%eax, %r8d
	callq	gimp_layer_resize
	movl	%eax, -212(%rbp)        # 4-byte Spill
.LBB3_77:                               # %if.end.183
	jmp	.LBB3_84
.LBB3_78:                               # %if.else
	movl	-92(%rbp), %eax
	addl	-100(%rbp), %eax
	movl	%eax, -100(%rbp)
	movl	-92(%rbp), %eax
	addl	-108(%rbp), %eax
	movl	%eax, -108(%rbp)
	movl	-96(%rbp), %eax
	addl	-104(%rbp), %eax
	movl	%eax, -104(%rbp)
	movl	-96(%rbp), %eax
	addl	-112(%rbp), %eax
	movl	%eax, -112(%rbp)
	movl	-20(%rbp), %edi
	callq	gimp_image_undo_group_start
	cmpl	$0, -100(%rbp)
	movl	%eax, -216(%rbp)        # 4-byte Spill
	jl	.LBB3_82
# BB#79:                                # %lor.lhs.false.190
	cmpl	$0, -104(%rbp)
	jl	.LBB3_82
# BB#80:                                # %lor.lhs.false.193
	movl	-108(%rbp), %eax
	movl	-20(%rbp), %edi
	movl	%eax, -220(%rbp)        # 4-byte Spill
	callq	gimp_image_width
	movl	-220(%rbp), %edi        # 4-byte Reload
	cmpl	%eax, %edi
	jg	.LBB3_82
# BB#81:                                # %lor.lhs.false.197
	movl	-112(%rbp), %eax
	movl	-20(%rbp), %edi
	movl	%eax, -224(%rbp)        # 4-byte Spill
	callq	gimp_image_height
	movl	-224(%rbp), %edi        # 4-byte Reload
	cmpl	%eax, %edi
	jle	.LBB3_83
.LBB3_82:                               # %if.then.201
	xorl	%eax, %eax
	movl	-20(%rbp), %edi
	movl	-108(%rbp), %ecx
	subl	-100(%rbp), %ecx
	movl	-112(%rbp), %edx
	subl	-104(%rbp), %edx
	movl	%eax, %esi
	subl	-100(%rbp), %esi
	subl	-104(%rbp), %eax
	movl	%esi, -228(%rbp)        # 4-byte Spill
	movl	%ecx, %esi
	movl	-228(%rbp), %ecx        # 4-byte Reload
	movl	%eax, %r8d
	callq	gimp_image_resize
	movl	-100(%rbp), %ecx
	movl	-108(%rbp), %edx
	subl	%ecx, %edx
	movl	%edx, -108(%rbp)
	movl	-104(%rbp), %ecx
	movl	-112(%rbp), %edx
	subl	%ecx, %edx
	movl	%edx, -112(%rbp)
	movl	$0, -104(%rbp)
	movl	$0, -100(%rbp)
	movl	%eax, -232(%rbp)        # 4-byte Spill
.LBB3_83:                               # %if.end.209
	movl	-20(%rbp), %edi
	movl	-108(%rbp), %eax
	subl	-100(%rbp), %eax
	movl	-112(%rbp), %ecx
	subl	-104(%rbp), %ecx
	movl	-100(%rbp), %edx
	movl	-104(%rbp), %r8d
	movl	%eax, %esi
	movl	%edx, -236(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-236(%rbp), %ecx        # 4-byte Reload
	callq	gimp_image_crop
	movl	-20(%rbp), %edi
	movl	%eax, -240(%rbp)        # 4-byte Spill
	callq	gimp_image_undo_group_end
	movl	%eax, -244(%rbp)        # 4-byte Spill
.LBB3_84:                               # %if.end.214
	cmpl	$0, -24(%rbp)
	je	.LBB3_86
# BB#85:                                # %if.then.216
	movsd	.LCPI3_3, %xmm0         # xmm0 = mem[0],zero
	callq	gimp_progress_update
	movl	%eax, -248(%rbp)        # 4-byte Spill
.LBB3_86:                               # %if.end.218
	addq	$264, %rsp              # imm = 0x108
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end3:
	.size	autocrop, .Lfunc_end3-autocrop
	.cfi_endproc

	.align	16, 0x90
	.type	guess_bgcolor,@function
guess_bgcolor:                          # @guess_bgcolor
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp18:
	.cfi_def_cfa_offset 16
.Ltmp19:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp20:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	xorl	%eax, %eax
	leaq	-44(%rbp), %r10
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%r8d, -32(%rbp)
	movq	%r9, -40(%rbp)
	movq	-16(%rbp), %rdi
	movq	%r10, %rsi
	movl	%eax, %edx
	movl	%eax, %ecx
	callq	gimp_pixel_rgn_get_pixel
	xorl	%ecx, %ecx
	leaq	-48(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %eax
	subl	$1, %eax
	movl	%eax, %edx
	callq	gimp_pixel_rgn_get_pixel
	xorl	%edx, %edx
	leaq	-52(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movl	-24(%rbp), %eax
	subl	$1, %eax
	movl	%eax, %ecx
	callq	gimp_pixel_rgn_get_pixel
	leaq	-56(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %eax
	subl	$1, %eax
	movl	-24(%rbp), %ecx
	subl	$1, %ecx
	movl	%eax, %edx
	callq	gimp_pixel_rgn_get_pixel
	cmpl	$0, -32(%rbp)
	je	.LBB4_11
# BB#1:                                 # %if.then
	movl	-28(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -60(%rbp)
	movslq	-60(%rbp), %rcx
	movzbl	-44(%rbp,%rcx), %eax
	cmpl	$0, %eax
	jne	.LBB4_3
# BB#2:                                 # %land.lhs.true
	movslq	-60(%rbp), %rax
	movzbl	-48(%rbp,%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB4_9
.LBB4_3:                                # %lor.lhs.false
	movslq	-60(%rbp), %rax
	movzbl	-44(%rbp,%rax), %ecx
	cmpl	$0, %ecx
	jne	.LBB4_5
# BB#4:                                 # %land.lhs.true.19
	movslq	-60(%rbp), %rax
	movzbl	-52(%rbp,%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB4_9
.LBB4_5:                                # %lor.lhs.false.25
	movslq	-60(%rbp), %rax
	movzbl	-48(%rbp,%rax), %ecx
	cmpl	$0, %ecx
	jne	.LBB4_7
# BB#6:                                 # %land.lhs.true.31
	movslq	-60(%rbp), %rax
	movzbl	-56(%rbp,%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB4_9
.LBB4_7:                                # %lor.lhs.false.37
	movslq	-60(%rbp), %rax
	movzbl	-52(%rbp,%rax), %ecx
	cmpl	$0, %ecx
	jne	.LBB4_10
# BB#8:                                 # %land.lhs.true.43
	movslq	-60(%rbp), %rax
	movzbl	-56(%rbp,%rax), %ecx
	cmpl	$0, %ecx
	jne	.LBB4_10
.LBB4_9:                                # %if.then.49
	movl	$2, -4(%rbp)
	jmp	.LBB4_36
.LBB4_10:                               # %if.end
	jmp	.LBB4_11
.LBB4_11:                               # %if.end.50
	leaq	-52(%rbp), %rsi
	leaq	-48(%rbp), %rdi
	movl	-28(%rbp), %edx
	callq	colors_equal
	cmpl	$0, %eax
	je	.LBB4_14
# BB#12:                                # %land.lhs.true.54
	leaq	-56(%rbp), %rsi
	leaq	-48(%rbp), %rdi
	movl	-28(%rbp), %edx
	callq	colors_equal
	cmpl	$0, %eax
	je	.LBB4_14
# BB#13:                                # %if.then.59
	leaq	-48(%rbp), %rax
	movq	-40(%rbp), %rdi
	movslq	-28(%rbp), %rdx
	movq	%rax, %rsi
	callq	memcpy
	movl	$3, -4(%rbp)
	jmp	.LBB4_36
.LBB4_14:                               # %if.else
	leaq	-52(%rbp), %rsi
	leaq	-44(%rbp), %rdi
	movl	-28(%rbp), %edx
	callq	colors_equal
	cmpl	$0, %eax
	je	.LBB4_17
# BB#15:                                # %land.lhs.true.65
	leaq	-56(%rbp), %rsi
	leaq	-44(%rbp), %rdi
	movl	-28(%rbp), %edx
	callq	colors_equal
	cmpl	$0, %eax
	je	.LBB4_17
# BB#16:                                # %if.then.70
	leaq	-44(%rbp), %rax
	movq	-40(%rbp), %rdi
	movslq	-28(%rbp), %rdx
	movq	%rax, %rsi
	callq	memcpy
	movl	$3, -4(%rbp)
	jmp	.LBB4_36
.LBB4_17:                               # %if.else.72
	leaq	-48(%rbp), %rsi
	leaq	-44(%rbp), %rdi
	movl	-28(%rbp), %edx
	callq	colors_equal
	cmpl	$0, %eax
	je	.LBB4_20
# BB#18:                                # %land.lhs.true.77
	leaq	-56(%rbp), %rsi
	leaq	-44(%rbp), %rdi
	movl	-28(%rbp), %edx
	callq	colors_equal
	cmpl	$0, %eax
	je	.LBB4_20
# BB#19:                                # %if.then.82
	leaq	-44(%rbp), %rax
	movq	-40(%rbp), %rdi
	movslq	-28(%rbp), %rdx
	movq	%rax, %rsi
	callq	memcpy
	movl	$3, -4(%rbp)
	jmp	.LBB4_36
.LBB4_20:                               # %if.else.84
	leaq	-48(%rbp), %rsi
	leaq	-44(%rbp), %rdi
	movl	-28(%rbp), %edx
	callq	colors_equal
	cmpl	$0, %eax
	je	.LBB4_23
# BB#21:                                # %land.lhs.true.89
	leaq	-52(%rbp), %rsi
	leaq	-44(%rbp), %rdi
	movl	-28(%rbp), %edx
	callq	colors_equal
	cmpl	$0, %eax
	je	.LBB4_23
# BB#22:                                # %if.then.94
	leaq	-44(%rbp), %rax
	movq	-40(%rbp), %rdi
	movslq	-28(%rbp), %rdx
	movq	%rax, %rsi
	callq	memcpy
	movl	$3, -4(%rbp)
	jmp	.LBB4_36
.LBB4_23:                               # %if.else.96
	leaq	-48(%rbp), %rsi
	leaq	-44(%rbp), %rdi
	movl	-28(%rbp), %edx
	callq	colors_equal
	cmpl	$0, %eax
	jne	.LBB4_26
# BB#24:                                # %lor.lhs.false.101
	leaq	-52(%rbp), %rsi
	leaq	-44(%rbp), %rdi
	movl	-28(%rbp), %edx
	callq	colors_equal
	cmpl	$0, %eax
	jne	.LBB4_26
# BB#25:                                # %lor.lhs.false.106
	leaq	-56(%rbp), %rsi
	leaq	-44(%rbp), %rdi
	movl	-28(%rbp), %edx
	callq	colors_equal
	cmpl	$0, %eax
	je	.LBB4_27
.LBB4_26:                               # %if.then.111
	leaq	-44(%rbp), %rax
	movq	-40(%rbp), %rdi
	movslq	-28(%rbp), %rdx
	movq	%rax, %rsi
	callq	memcpy
	movl	$2, -4(%rbp)
	jmp	.LBB4_36
.LBB4_27:                               # %if.else.113
	leaq	-52(%rbp), %rsi
	leaq	-48(%rbp), %rdi
	movl	-28(%rbp), %edx
	callq	colors_equal
	cmpl	$0, %eax
	jne	.LBB4_29
# BB#28:                                # %lor.lhs.false.118
	leaq	-52(%rbp), %rsi
	leaq	-48(%rbp), %rdi
	movl	-28(%rbp), %edx
	callq	colors_equal
	cmpl	$0, %eax
	je	.LBB4_30
.LBB4_29:                               # %if.then.123
	leaq	-48(%rbp), %rax
	movq	-40(%rbp), %rdi
	movslq	-28(%rbp), %rdx
	movq	%rax, %rsi
	callq	memcpy
	movl	$2, -4(%rbp)
	jmp	.LBB4_36
.LBB4_30:                               # %if.else.125
	leaq	-52(%rbp), %rsi
	leaq	-56(%rbp), %rdi
	movl	-28(%rbp), %edx
	callq	colors_equal
	cmpl	$0, %eax
	je	.LBB4_32
# BB#31:                                # %if.then.130
	leaq	-56(%rbp), %rax
	movq	-40(%rbp), %rdi
	movslq	-28(%rbp), %rdx
	movq	%rax, %rsi
	callq	memcpy
	movl	$2, -4(%rbp)
	jmp	.LBB4_36
.LBB4_32:                               # %if.else.132
	jmp	.LBB4_33
.LBB4_33:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -28(%rbp)
	cmpl	$0, %eax
	je	.LBB4_35
# BB#34:                                # %while.body
                                        #   in Loop: Header=BB4_33 Depth=1
	movl	$4, %eax
	movslq	-28(%rbp), %rcx
	movzbl	-44(%rbp,%rcx), %edx
	movslq	-28(%rbp), %rcx
	movzbl	-48(%rbp,%rcx), %esi
	addl	%esi, %edx
	movslq	-28(%rbp), %rcx
	movzbl	-52(%rbp,%rcx), %esi
	addl	%esi, %edx
	movslq	-28(%rbp), %rcx
	movzbl	-56(%rbp,%rcx), %esi
	addl	%esi, %edx
	movl	%eax, -64(%rbp)         # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-64(%rbp), %esi         # 4-byte Reload
	idivl	%esi
	movb	%al, %dil
	movslq	-28(%rbp), %rcx
	movq	-40(%rbp), %r8
	movb	%dil, (%r8,%rcx)
	jmp	.LBB4_33
.LBB4_35:                               # %while.end
	movl	$0, -4(%rbp)
.LBB4_36:                               # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	guess_bgcolor, .Lfunc_end4-guess_bgcolor
	.cfi_endproc

	.align	16, 0x90
	.type	colors_equal,@function
colors_equal:                           # @colors_equal
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp21:
	.cfi_def_cfa_offset 16
.Ltmp22:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp23:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	$1, -32(%rbp)
	cmpl	$2, -28(%rbp)
	je	.LBB5_2
# BB#1:                                 # %lor.lhs.false
	cmpl	$4, -28(%rbp)
	jne	.LBB5_5
.LBB5_2:                                # %land.lhs.true
	movl	-28(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cmpl	$0, %eax
	jne	.LBB5_5
# BB#3:                                 # %land.lhs.true.4
	movl	-28(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-24(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cmpl	$0, %eax
	jne	.LBB5_5
# BB#4:                                 # %if.then
	movl	$1, -4(%rbp)
	jmp	.LBB5_12
.LBB5_5:                                # %if.end
	movl	$0, -36(%rbp)
.LBB5_6:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB5_11
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB5_6 Depth=1
	movslq	-36(%rbp), %rax
	movq	-16(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movslq	-36(%rbp), %rax
	movq	-24(%rbp), %rcx
	movzbl	(%rcx,%rax), %esi
	cmpl	%esi, %edx
	je	.LBB5_9
# BB#8:                                 # %if.then.21
	movl	$0, -32(%rbp)
	jmp	.LBB5_11
.LBB5_9:                                # %if.end.22
                                        #   in Loop: Header=BB5_6 Depth=1
	jmp	.LBB5_10
.LBB5_10:                               # %for.inc
                                        #   in Loop: Header=BB5_6 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB5_6
.LBB5_11:                               # %for.end
	movl	-32(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB5_12:                               # %return
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end5:
	.size	colors_equal, .Lfunc_end5-colors_equal
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
	.size	query.args, 72

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
	.asciz	"Input image"
	.size	.L.str.3, 12

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"drawable"
	.size	.L.str.4, 9

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Input drawable"
	.size	.L.str.5, 15

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"plug-in-autocrop"
	.size	.L.str.6, 17

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Remove empty borders from the image"
	.size	.L.str.7, 36

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Crop the active layer of the input \"image\" based on empty borders of the input \"drawable\". The input drawable serves as a base for detecting cropping extents (transparency or background color), and is not necessarily the cropped layer (the current active layer)."
	.size	.L.str.8, 263

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Tim Newsome"
	.size	.L.str.9, 12

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"1997"
	.size	.L.str.10, 5

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Autocrop Imag_e"
	.size	.L.str.11, 16

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"RGB*, GRAY*, INDEXED*"
	.size	.L.str.12, 22

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"<Image>/Image/Crop"
	.size	.L.str.13, 19

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"plug-in-autocrop-layer"
	.size	.L.str.14, 23

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Remove empty borders from the layer"
	.size	.L.str.15, 36

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.zero	1
	.size	.L.str.16, 1

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Autocrop Lay_er"
	.size	.L.str.17, 16

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"<Image>/Layer/Crop"
	.size	.L.str.18, 19

	.type	run.values,@object      # @run.values
	.local	run.values
	.comm	run.values,40,16
	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"gimp20-std-plug-ins"
	.size	.L.str.19, 20

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"UTF-8"
	.size	.L.str.20, 6

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Cropping"
	.size	.L.str.21, 9

	.type	bytes,@object           # @bytes
	.local	bytes
	.comm	bytes,4,4

	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
