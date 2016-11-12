	.text
	.file	"tile-seamless.bc"
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	$3, -56(%rbp)
	movq	-24(%rbp), %rcx
	movl	8(%rcx), %esi
	movl	%esi, -52(%rbp)
# BB#1:                                 # %do.body
	callq	gimp_locale_directory
	movabsq	$.L.str.14, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.14, %rdi
	movabsq	$.L.str.15, %rsi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.14, %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	textdomain
	movq	%rax, -80(%rbp)         # 8-byte Spill
# BB#2:                                 # %do.end
	movq	-24(%rbp), %rax
	movl	88(%rax), %edi
	callq	gimp_drawable_get
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_is_rgb
	cmpl	$0, %eax
	jne	.LBB1_4
# BB#3:                                 # %lor.lhs.false
	movq	-48(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_is_gray
	cmpl	$0, %eax
	je	.LBB1_7
.LBB1_4:                                # %if.then
	movq	-48(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	callq	gimp_tile_width
	movl	-84(%rbp), %ecx         # 4-byte Reload
	movl	%eax, -88(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	xorl	%edx, %edx
	movl	-88(%rbp), %esi         # 4-byte Reload
	divl	%esi
	addl	$1, %eax
	shll	$1, %eax
	movl	%eax, %eax
	movl	%eax, %edi
	callq	gimp_tile_cache_ntiles
	movq	-48(%rbp), %rdi
	callq	tile
	cmpl	$1, -52(%rbp)
	je	.LBB1_6
# BB#5:                                 # %if.then.13
	callq	gimp_displays_flush
	movl	%eax, -92(%rbp)         # 4-byte Spill
.LBB1_6:                                # %if.end
	jmp	.LBB1_8
.LBB1_7:                                # %if.else
	movl	$0, -56(%rbp)
.LBB1_8:                                # %if.end.15
	movabsq	$run.values, %rax
	movq	-32(%rbp), %rcx
	movl	$1, (%rcx)
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	$21, run.values
	movl	-56(%rbp), %edx
	movl	%edx, run.values+8
	movq	-48(%rbp), %rdi
	callq	gimp_drawable_detach
	addq	$96, %rsp
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
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	tile,@function
tile:                                   # @tile
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
	subq	$80, %rsp
	leaq	-28(%rbp), %rsi
	leaq	-32(%rbp), %rdx
	leaq	-36(%rbp), %rcx
	leaq	-40(%rbp), %r8
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	(%rdi), %edi
	callq	gimp_drawable_mask_bounds
	movabsq	$.L.str.16, %rdi
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_progress_init
	movl	-40(%rbp), %r9d
	subl	-32(%rbp), %r9d
	movslq	%r9d, %rcx
	movq	%rcx, -24(%rbp)
	movl	-36(%rbp), %r9d
	subl	-28(%rbp), %r9d
	movslq	%r9d, %rcx
	movq	%rcx, -16(%rbp)
	movq	-16(%rbp), %rcx
	andq	$1, %rcx
	cmpq	$0, %rcx
	movl	%eax, -48(%rbp)         # 4-byte Spill
	je	.LBB3_2
# BB#1:                                 # %if.then
	movl	$1, %ecx
	movl	$2, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rdi
	movslq	-28(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	cqto
	movq	-56(%rbp), %r8          # 8-byte Reload
	idivq	%r8
	addq	%rax, %rsi
	movl	%esi, %r9d
	movl	-32(%rbp), %r10d
	movq	-24(%rbp), %rax
	movl	%eax, %r11d
	movl	%r9d, %esi
	movl	%r10d, %edx
	movl	%r11d, %r8d
	callq	copy_region
.LBB3_2:                                # %if.end
	movq	-24(%rbp), %rax
	andq	$1, %rax
	cmpq	$0, %rax
	je	.LBB3_4
# BB#3:                                 # %if.then.10
	movl	$1, %r8d
	movl	$2, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdi
	movl	-28(%rbp), %esi
	movslq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	cqto
	idivq	%rcx
	movq	-64(%rbp), %rcx         # 8-byte Reload
	addq	%rax, %rcx
	movl	%ecx, %r9d
	movq	-16(%rbp), %rax
	movl	%eax, %r10d
	movl	%r9d, %edx
	movl	%r10d, %ecx
	callq	copy_region
.LBB3_4:                                # %if.end.16
	movl	$1, %esi
	movq	-8(%rbp), %rdi
	movl	-28(%rbp), %edx
	movl	-32(%rbp), %ecx
	movl	-36(%rbp), %r8d
	movl	-40(%rbp), %r9d
	callq	tile_region
	xorl	%esi, %esi
	movq	-8(%rbp), %rdi
	movl	-28(%rbp), %edx
	movl	-32(%rbp), %ecx
	movl	-36(%rbp), %r8d
	movl	-40(%rbp), %r9d
	callq	tile_region
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	callq	gimp_progress_update
	movq	-8(%rbp), %rdi
	movl	%eax, -68(%rbp)         # 4-byte Spill
	callq	gimp_drawable_flush
	movl	$1, %esi
	movq	-8(%rbp), %rdi
	movl	(%rdi), %edi
	callq	gimp_drawable_merge_shadow
	movq	-8(%rbp), %r10
	movl	(%r10), %edi
	movl	-28(%rbp), %esi
	movl	-32(%rbp), %edx
	movq	-16(%rbp), %r10
	movl	%r10d, %ecx
	movq	-24(%rbp), %r10
	movl	%r10d, %r8d
	movl	%eax, -72(%rbp)         # 4-byte Spill
	callq	gimp_drawable_update
	movl	%eax, -76(%rbp)         # 4-byte Spill
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	tile, .Lfunc_end3-tile
	.cfi_endproc

	.align	16, 0x90
	.type	copy_region,@function
copy_region:                            # @copy_region
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
	subq	$176, %rsp
	leaq	-72(%rbp), %rax
	xorl	%r9d, %r9d
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movq	-8(%rbp), %rsi
	movl	-12(%rbp), %edx
	movl	-16(%rbp), %ecx
	movl	-20(%rbp), %r8d
	movl	-24(%rbp), %r10d
	movq	%rax, %rdi
	movl	%r9d, -136(%rbp)        # 4-byte Spill
	movl	%r10d, %r9d
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	leaq	-120(%rbp), %rdi
	movl	$1, %ecx
	movq	-8(%rbp), %rsi
	movl	-12(%rbp), %edx
	movl	-16(%rbp), %r8d
	movl	-20(%rbp), %r9d
	movl	-24(%rbp), %r10d
	movl	%ecx, -140(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	callq	gimp_pixel_rgn_init
	movl	$2, %edi
	leaq	-72(%rbp), %rsi
	leaq	-120(%rbp), %rdx
	movb	$0, %al
	callq	gimp_pixel_rgns_register
	movq	%rax, -128(%rbp)
.LBB4_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_3 Depth 2
	cmpq	$0, -128(%rbp)
	je	.LBB4_8
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	$0, -132(%rbp)
.LBB4_3:                                # %for.cond.1
                                        #   Parent Loop BB4_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-132(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB4_6
# BB#4:                                 # %for.body.4
                                        #   in Loop: Header=BB4_3 Depth=2
	movq	-120(%rbp), %rax
	movl	-132(%rbp), %ecx
	imull	-100(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	-72(%rbp), %rdx
	movl	-132(%rbp), %ecx
	imull	-52(%rbp), %ecx
	movslq	%ecx, %rsi
	addq	%rsi, %rdx
	movl	-40(%rbp), %ecx
	imull	-56(%rbp), %ecx
	movslq	%ecx, %rsi
	movq	%rax, %rdi
	movq	%rsi, -152(%rbp)        # 8-byte Spill
	movq	%rdx, %rsi
	movq	-152(%rbp), %rdx        # 8-byte Reload
	callq	memcpy
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB4_3 Depth=2
	movl	-132(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -132(%rbp)
	jmp	.LBB4_3
.LBB4_6:                                # %for.end
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_7
.LBB4_7:                                # %for.inc.12
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	-128(%rbp), %rdi
	callq	gimp_pixel_rgns_process
	movq	%rax, -128(%rbp)
	jmp	.LBB4_1
.LBB4_8:                                # %for.end.14
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	copy_region, .Lfunc_end4-copy_region
	.cfi_endproc

	.align	16, 0x90
	.type	tile_region,@function
tile_region:                            # @tile_region
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
	pushq	%rbx
	subq	$440, %rsp              # imm = 0x1B8
.Ltmp23:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%r8d, -32(%rbp)
	movl	%r9d, -36(%rbp)
	movq	-16(%rbp), %rdi
	movl	(%rdi), %edi
	callq	gimp_drawable_bpp
	movl	%eax, -60(%rbp)
	movq	-16(%rbp), %r10
	movl	(%r10), %edi
	callq	gimp_drawable_has_alpha
	movl	$2, %ecx
	movl	%ecx, %r10d
	movl	%eax, -300(%rbp)
	movl	-36(%rbp), %eax
	subl	-28(%rbp), %eax
	movslq	%eax, %r11
	movq	%r11, -56(%rbp)
	movl	-32(%rbp), %eax
	subl	-24(%rbp), %eax
	movslq	%eax, %r11
	movq	%r11, -48(%rbp)
	movq	-48(%rbp), %r11
	andq	$1, %r11
	movl	%r11d, %eax
	movl	%eax, -64(%rbp)
	movq	-56(%rbp), %r11
	andq	$1, %r11
	movl	%r11d, %eax
	movl	%eax, -68(%rbp)
	movq	-48(%rbp), %rax
	cqto
	idivq	%r10
	movl	%eax, %ecx
	movl	%ecx, -72(%rbp)
	movq	-56(%rbp), %rax
	cqto
	idivq	%r10
	movl	%eax, %ecx
	movl	%ecx, -76(%rbp)
	cmpl	$0, -20(%rbp)
	je	.LBB5_2
# BB#1:                                 # %if.then
	movl	-24(%rbp), %eax
	movl	%eax, -88(%rbp)
	movl	-24(%rbp), %eax
	addl	-72(%rbp), %eax
	addl	-64(%rbp), %eax
	movl	%eax, -92(%rbp)
	jmp	.LBB5_3
.LBB5_2:                                # %if.else
	movl	-24(%rbp), %eax
	addl	-72(%rbp), %eax
	addl	-64(%rbp), %eax
	movl	%eax, -88(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -92(%rbp)
.LBB5_3:                                # %if.end
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -64(%rbp)
	movb	%cl, -381(%rbp)         # 1-byte Spill
	jne	.LBB5_5
# BB#4:                                 # %land.rhs
	cmpl	$0, -20(%rbp)
	setne	%al
	xorb	$-1, %al
	movb	%al, -381(%rbp)         # 1-byte Spill
.LBB5_5:                                # %land.end
	movb	-381(%rbp), %al         # 1-byte Reload
	leaq	-144(%rbp), %rdi
	xorl	%ecx, %ecx
	andb	$1, %al
	movzbl	%al, %edx
	movl	%edx, -304(%rbp)
	movq	-16(%rbp), %rsi
	movl	-88(%rbp), %edx
	movl	-28(%rbp), %r8d
	movl	-72(%rbp), %r9d
	movl	-76(%rbp), %r10d
	movl	%ecx, -388(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	leaq	-240(%rbp), %rdi
	movl	$1, %ecx
	movq	-16(%rbp), %rsi
	movl	-88(%rbp), %edx
	movl	-28(%rbp), %r8d
	movl	-72(%rbp), %r9d
	movl	-76(%rbp), %r10d
	movl	%ecx, -392(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	callq	gimp_pixel_rgn_init
	leaq	-192(%rbp), %rdi
	xorl	%ecx, %ecx
	movq	-16(%rbp), %rsi
	movl	-92(%rbp), %edx
	movl	-28(%rbp), %r8d
	addl	-76(%rbp), %r8d
	addl	-68(%rbp), %r8d
	movl	-72(%rbp), %r9d
	movl	-76(%rbp), %r10d
	movl	%ecx, -396(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	leaq	-288(%rbp), %rdi
	movl	$1, %ecx
	movq	-16(%rbp), %rsi
	movl	-92(%rbp), %edx
	movl	-28(%rbp), %r8d
	addl	-76(%rbp), %r8d
	addl	-68(%rbp), %r8d
	movl	-72(%rbp), %r9d
	movl	-76(%rbp), %r10d
	movl	%ecx, -400(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	callq	gimp_pixel_rgn_init
	movl	$4, %edi
	leaq	-144(%rbp), %rsi
	leaq	-240(%rbp), %rdx
	leaq	-192(%rbp), %rcx
	leaq	-288(%rbp), %r8
	movl	$2, %r9d
	movl	%r9d, %r11d
	movq	-48(%rbp), %rbx
	imulq	-56(%rbp), %rbx
	movq	%rbx, %rax
	movq	%rdx, -408(%rbp)        # 8-byte Spill
	cqto
	idivq	%r11
	movl	%eax, %r9d
	movl	%r9d, -96(%rbp)
	movq	-408(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	gimp_pixel_rgns_register
	movq	%rax, -296(%rbp)
.LBB5_6:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_8 Depth 2
                                        #       Child Loop BB5_11 Depth 3
                                        #       Child Loop BB5_16 Depth 3
	cmpq	$0, -296(%rbp)
	je	.LBB5_24
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB5_6 Depth=1
	movq	-144(%rbp), %rax
	movq	%rax, -312(%rbp)
	movq	-240(%rbp), %rax
	movq	%rax, -320(%rbp)
	movq	-192(%rbp), %rax
	movq	%rax, -328(%rbp)
	movq	-288(%rbp), %rax
	movq	%rax, -336(%rbp)
	movl	-116(%rbp), %ecx
	subl	-28(%rbp), %ecx
	movl	%ecx, -340(%rbp)
	movl	$0, -84(%rbp)
.LBB5_8:                                # %for.cond.29
                                        #   Parent Loop BB5_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_11 Depth 3
                                        #       Child Loop BB5_16 Depth 3
	movl	-84(%rbp), %eax
	cmpl	-108(%rbp), %eax
	jge	.LBB5_22
# BB#9:                                 # %for.body.33
                                        #   in Loop: Header=BB5_8 Depth=2
	movq	-312(%rbp), %rax
	movq	%rax, -352(%rbp)
	movq	-328(%rbp), %rax
	movq	%rax, -360(%rbp)
	movq	-320(%rbp), %rax
	movq	%rax, -368(%rbp)
	movq	-336(%rbp), %rax
	movq	%rax, -376(%rbp)
	movl	-120(%rbp), %ecx
	subl	-24(%rbp), %ecx
	movl	%ecx, -380(%rbp)
	cmpl	$0, -300(%rbp)
	je	.LBB5_15
# BB#10:                                # %if.then.37
                                        #   in Loop: Header=BB5_8 Depth=2
	movl	$0, -80(%rbp)
.LBB5_11:                               # %for.cond.38
                                        #   Parent Loop BB5_6 Depth=1
                                        #     Parent Loop BB5_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-80(%rbp), %eax
	cmpl	-112(%rbp), %eax
	jge	.LBB5_14
# BB#12:                                # %for.body.42
                                        #   in Loop: Header=BB5_11 Depth=3
	movq	-368(%rbp), %rdi
	movq	-376(%rbp), %rsi
	movl	-72(%rbp), %edx
	movl	-76(%rbp), %ecx
	movl	-380(%rbp), %eax
	addl	-304(%rbp), %eax
	movl	-340(%rbp), %r9d
	movl	-60(%rbp), %r8d
	movq	-352(%rbp), %r10
	movq	-360(%rbp), %r11
	movl	%r8d, -412(%rbp)        # 4-byte Spill
	movl	%eax, %r8d
	movl	-412(%rbp), %eax        # 4-byte Reload
	movl	%eax, (%rsp)
	movq	%r10, 8(%rsp)
	movq	%r11, 16(%rsp)
	callq	weld_pixels_alpha
	movl	-60(%rbp), %eax
	movq	-352(%rbp), %rsi
	movslq	%eax, %rdi
	addq	%rdi, %rsi
	movq	%rsi, -352(%rbp)
	movl	-60(%rbp), %eax
	movq	-360(%rbp), %rsi
	movslq	%eax, %rdi
	addq	%rdi, %rsi
	movq	%rsi, -360(%rbp)
	movl	-60(%rbp), %eax
	movq	-368(%rbp), %rsi
	movslq	%eax, %rdi
	addq	%rdi, %rsi
	movq	%rsi, -368(%rbp)
	movl	-60(%rbp), %eax
	movq	-376(%rbp), %rsi
	movslq	%eax, %rdi
	addq	%rdi, %rsi
	movq	%rsi, -376(%rbp)
# BB#13:                                # %for.inc
                                        #   in Loop: Header=BB5_11 Depth=3
	movl	-80(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -80(%rbp)
	movl	-380(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -380(%rbp)
	jmp	.LBB5_11
.LBB5_14:                               # %for.end
                                        #   in Loop: Header=BB5_8 Depth=2
	jmp	.LBB5_20
.LBB5_15:                               # %if.else.51
                                        #   in Loop: Header=BB5_8 Depth=2
	movl	$0, -80(%rbp)
.LBB5_16:                               # %for.cond.52
                                        #   Parent Loop BB5_6 Depth=1
                                        #     Parent Loop BB5_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-80(%rbp), %eax
	cmpl	-112(%rbp), %eax
	jge	.LBB5_19
# BB#17:                                # %for.body.56
                                        #   in Loop: Header=BB5_16 Depth=3
	movq	-368(%rbp), %rdi
	movq	-376(%rbp), %rsi
	movl	-72(%rbp), %edx
	movl	-76(%rbp), %ecx
	movl	-380(%rbp), %eax
	addl	-304(%rbp), %eax
	movl	-340(%rbp), %r9d
	movl	-60(%rbp), %r8d
	movq	-352(%rbp), %r10
	movq	-360(%rbp), %r11
	movl	%r8d, -416(%rbp)        # 4-byte Spill
	movl	%eax, %r8d
	movl	-416(%rbp), %eax        # 4-byte Reload
	movl	%eax, (%rsp)
	movq	%r10, 8(%rsp)
	movq	%r11, 16(%rsp)
	callq	weld_pixels
	movl	-60(%rbp), %eax
	movq	-352(%rbp), %rsi
	movslq	%eax, %rdi
	addq	%rdi, %rsi
	movq	%rsi, -352(%rbp)
	movl	-60(%rbp), %eax
	movq	-360(%rbp), %rsi
	movslq	%eax, %rdi
	addq	%rdi, %rsi
	movq	%rsi, -360(%rbp)
	movl	-60(%rbp), %eax
	movq	-368(%rbp), %rsi
	movslq	%eax, %rdi
	addq	%rdi, %rsi
	movq	%rsi, -368(%rbp)
	movl	-60(%rbp), %eax
	movq	-376(%rbp), %rsi
	movslq	%eax, %rdi
	addq	%rdi, %rsi
	movq	%rsi, -376(%rbp)
# BB#18:                                # %for.inc.66
                                        #   in Loop: Header=BB5_16 Depth=3
	movl	-80(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -80(%rbp)
	movl	-380(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -380(%rbp)
	jmp	.LBB5_16
.LBB5_19:                               # %for.end.69
                                        #   in Loop: Header=BB5_8 Depth=2
	jmp	.LBB5_20
.LBB5_20:                               # %if.end.70
                                        #   in Loop: Header=BB5_8 Depth=2
	movl	-124(%rbp), %eax
	movq	-312(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -312(%rbp)
	movl	-172(%rbp), %eax
	movq	-328(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -328(%rbp)
	movl	-220(%rbp), %eax
	movq	-320(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -320(%rbp)
	movl	-268(%rbp), %eax
	movq	-336(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -336(%rbp)
# BB#21:                                # %for.inc.82
                                        #   in Loop: Header=BB5_8 Depth=2
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	movl	-340(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -340(%rbp)
	jmp	.LBB5_8
.LBB5_22:                               # %for.end.85
                                        #   in Loop: Header=BB5_6 Depth=1
	movl	-112(%rbp), %eax
	imull	-108(%rbp), %eax
	addl	tile_region.progress, %eax
	movl	%eax, tile_region.progress
	cvtsi2sdl	tile_region.progress, %xmm0
	cvtsi2sdl	-96(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -420(%rbp)        # 4-byte Spill
# BB#23:                                # %for.inc.94
                                        #   in Loop: Header=BB5_6 Depth=1
	movq	-296(%rbp), %rdi
	callq	gimp_pixel_rgns_process
	movq	%rax, -296(%rbp)
	jmp	.LBB5_6
.LBB5_24:                               # %for.end.96
	addq	$440, %rsp              # imm = 0x1B8
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end5:
	.size	tile_region, .Lfunc_end5-tile_region
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	4487126258331716666     # double 1.0E-8
.LCPI6_1:
	.quad	4607182418709945415     # double 0.99999998999999994
.LCPI6_2:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	weld_pixels_alpha,@function
weld_pixels_alpha:                      # @weld_pixels_alpha
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp24:
	.cfi_def_cfa_offset 16
.Ltmp25:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp26:
	.cfi_def_cfa_register %rbp
	movq	32(%rbp), %rax
	movq	24(%rbp), %r10
	movl	16(%rbp), %r11d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movl	%r9d, -32(%rbp)
	movl	%r11d, -36(%rbp)
	movq	%r10, -48(%rbp)
	movq	%rax, -56(%rbp)
	movl	-28(%rbp), %ecx
	subl	-20(%rbp), %ecx
	cmpl	$0, %ecx
	jge	.LBB6_2
# BB#1:                                 # %cond.true
	xorl	%eax, %eax
	movl	-28(%rbp), %ecx
	subl	-20(%rbp), %ecx
	subl	%ecx, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jmp	.LBB6_3
.LBB6_2:                                # %cond.false
	movl	-28(%rbp), %eax
	subl	-20(%rbp), %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
.LBB6_3:                                # %cond.end
	movl	-100(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	cvtsi2sdl	%eax, %xmm0
	movl	-20(%rbp), %eax
	subl	$1, %eax
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -64(%rbp)
	movl	-32(%rbp), %eax
	subl	-24(%rbp), %eax
	cmpl	$0, %eax
	jge	.LBB6_5
# BB#4:                                 # %cond.true.10
	xorl	%eax, %eax
	movl	-32(%rbp), %ecx
	subl	-24(%rbp), %ecx
	subl	%ecx, %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
	jmp	.LBB6_6
.LBB6_5:                                # %cond.false.13
	movl	-32(%rbp), %eax
	subl	-24(%rbp), %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
.LBB6_6:                                # %cond.end.15
	movl	-104(%rbp), %eax        # 4-byte Reload
	movsd	.LCPI6_0, %xmm0         # xmm0 = mem[0],zero
	subl	$1, %eax
	cvtsi2sdl	%eax, %xmm1
	movl	-24(%rbp), %eax
	subl	$1, %eax
	cvtsi2sdl	%eax, %xmm2
	divsd	%xmm2, %xmm1
	movsd	%xmm1, -72(%rbp)
	movl	-36(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -92(%rbp)
	ucomisd	-64(%rbp), %xmm0
	jbe	.LBB6_9
# BB#7:                                 # %land.lhs.true
	movsd	.LCPI6_1, %xmm0         # xmm0 = mem[0],zero
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB6_9
# BB#8:                                 # %if.then
	movsd	.LCPI6_2, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -80(%rbp)
	jmp	.LBB6_14
.LBB6_9:                                # %if.else
	movsd	.LCPI6_1, %xmm0         # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB6_12
# BB#10:                                # %land.lhs.true.29
	movsd	.LCPI6_0, %xmm0         # xmm0 = mem[0],zero
	ucomisd	-72(%rbp), %xmm0
	jbe	.LBB6_12
# BB#11:                                # %if.then.32
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -80(%rbp)
	jmp	.LBB6_13
.LBB6_12:                               # %if.else.33
	movsd	.LCPI6_2, %xmm0         # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-72(%rbp), %xmm1
	movsd	-64(%rbp), %xmm2        # xmm2 = mem[0],zero
	mulsd	-72(%rbp), %xmm2
	movaps	%xmm0, %xmm3
	subsd	-64(%rbp), %xmm3
	movaps	%xmm0, %xmm4
	subsd	-72(%rbp), %xmm4
	mulsd	%xmm4, %xmm3
	addsd	%xmm3, %xmm2
	divsd	%xmm2, %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -80(%rbp)
.LBB6_13:                               # %if.end
	jmp	.LBB6_14
.LBB6_14:                               # %if.end.40
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-92(%rbp), %eax
	movl	%eax, %ecx
	movq	-48(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm1
	movaps	%xmm0, %xmm2
	mulsd	%xmm1, %xmm2
	movsd	.LCPI6_2(%rip), %xmm1   # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movq	-56(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm0
	mulsd	%xmm0, %xmm1
	addsd	%xmm1, %xmm2
	movsd	%xmm2, -88(%rbp)
	cvttsd2si	%xmm2, %eax
	movb	%al, %sil
	movl	-92(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movb	%sil, (%rdx,%rcx)
	movl	-92(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movb	%sil, (%rdx,%rcx)
	movl	-92(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	cmpb	$0, (%rdx,%rcx)
	je	.LBB6_20
# BB#15:                                # %if.then.58
	movl	$0, -96(%rbp)
.LBB6_16:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-96(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jae	.LBB6_19
# BB#17:                                # %for.body
                                        #   in Loop: Header=BB6_16 Depth=1
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-96(%rbp), %eax
	movl	%eax, %ecx
	movq	-48(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm1
	movaps	%xmm0, %xmm2
	mulsd	%xmm1, %xmm2
	movl	-92(%rbp), %eax
	movl	%eax, %esi
	movzbl	(%rdx,%rsi), %eax
	cvtsi2sdl	%eax, %xmm1
	mulsd	%xmm1, %xmm2
	movsd	.LCPI6_2(%rip), %xmm1   # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movq	-56(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm0
	mulsd	%xmm0, %xmm1
	movzbl	(%rdx,%rsi), %eax
	cvtsi2sdl	%eax, %xmm0
	mulsd	%xmm0, %xmm1
	addsd	%xmm1, %xmm2
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	divsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movb	%al, %dil
	movl	-96(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movb	%dil, (%rdx,%rcx)
	movl	-96(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movb	%dil, (%rdx,%rcx)
# BB#18:                                # %for.inc
                                        #   in Loop: Header=BB6_16 Depth=1
	movl	-96(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -96(%rbp)
	jmp	.LBB6_16
.LBB6_19:                               # %for.end
	jmp	.LBB6_20
.LBB6_20:                               # %if.end.89
	popq	%rbp
	retq
.Lfunc_end6:
	.size	weld_pixels_alpha, .Lfunc_end6-weld_pixels_alpha
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI7_0:
	.quad	4487126258331716666     # double 1.0E-8
.LCPI7_1:
	.quad	4607182418709945415     # double 0.99999998999999994
.LCPI7_2:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	weld_pixels,@function
weld_pixels:                            # @weld_pixels
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp27:
	.cfi_def_cfa_offset 16
.Ltmp28:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp29:
	.cfi_def_cfa_register %rbp
	movq	32(%rbp), %rax
	movq	24(%rbp), %r10
	movl	16(%rbp), %r11d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movl	%r9d, -32(%rbp)
	movl	%r11d, -36(%rbp)
	movq	%r10, -48(%rbp)
	movq	%rax, -56(%rbp)
	movl	-28(%rbp), %ecx
	subl	-20(%rbp), %ecx
	cmpl	$0, %ecx
	jge	.LBB7_2
# BB#1:                                 # %cond.true
	xorl	%eax, %eax
	movl	-28(%rbp), %ecx
	subl	-20(%rbp), %ecx
	subl	%ecx, %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	jmp	.LBB7_3
.LBB7_2:                                # %cond.false
	movl	-28(%rbp), %eax
	subl	-20(%rbp), %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
.LBB7_3:                                # %cond.end
	movl	-88(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	cvtsi2sdl	%eax, %xmm0
	movl	-20(%rbp), %eax
	subl	$1, %eax
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -64(%rbp)
	movl	-32(%rbp), %eax
	subl	-24(%rbp), %eax
	cmpl	$0, %eax
	jge	.LBB7_5
# BB#4:                                 # %cond.true.10
	xorl	%eax, %eax
	movl	-32(%rbp), %ecx
	subl	-24(%rbp), %ecx
	subl	%ecx, %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	jmp	.LBB7_6
.LBB7_5:                                # %cond.false.13
	movl	-32(%rbp), %eax
	subl	-24(%rbp), %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
.LBB7_6:                                # %cond.end.15
	movl	-92(%rbp), %eax         # 4-byte Reload
	movsd	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero
	subl	$1, %eax
	cvtsi2sdl	%eax, %xmm1
	movl	-24(%rbp), %eax
	subl	$1, %eax
	cvtsi2sdl	%eax, %xmm2
	divsd	%xmm2, %xmm1
	movsd	%xmm1, -72(%rbp)
	ucomisd	-64(%rbp), %xmm0
	jbe	.LBB7_9
# BB#7:                                 # %land.lhs.true
	movsd	.LCPI7_1, %xmm0         # xmm0 = mem[0],zero
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB7_9
# BB#8:                                 # %if.then
	movsd	.LCPI7_2, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -80(%rbp)
	jmp	.LBB7_14
.LBB7_9:                                # %if.else
	movsd	.LCPI7_1, %xmm0         # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB7_12
# BB#10:                                # %land.lhs.true.28
	movsd	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero
	ucomisd	-72(%rbp), %xmm0
	jbe	.LBB7_12
# BB#11:                                # %if.then.31
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -80(%rbp)
	jmp	.LBB7_13
.LBB7_12:                               # %if.else.32
	movsd	.LCPI7_2, %xmm0         # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-72(%rbp), %xmm1
	movsd	-64(%rbp), %xmm2        # xmm2 = mem[0],zero
	mulsd	-72(%rbp), %xmm2
	movaps	%xmm0, %xmm3
	subsd	-64(%rbp), %xmm3
	movaps	%xmm0, %xmm4
	subsd	-72(%rbp), %xmm4
	mulsd	%xmm4, %xmm3
	addsd	%xmm3, %xmm2
	divsd	%xmm2, %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -80(%rbp)
.LBB7_13:                               # %if.end
	jmp	.LBB7_14
.LBB7_14:                               # %if.end.39
	movl	$0, -84(%rbp)
.LBB7_15:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-84(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jae	.LBB7_18
# BB#16:                                # %for.body
                                        #   in Loop: Header=BB7_15 Depth=1
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-84(%rbp), %eax
	movl	%eax, %ecx
	movq	-48(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm1
	movaps	%xmm0, %xmm2
	mulsd	%xmm1, %xmm2
	movsd	.LCPI7_2(%rip), %xmm1   # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movq	-56(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm0
	mulsd	%xmm0, %xmm1
	addsd	%xmm1, %xmm2
	cvttsd2si	%xmm2, %eax
	movb	%al, %sil
	movl	-84(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movb	%sil, (%rdx,%rcx)
	movl	-84(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movb	%sil, (%rdx,%rcx)
# BB#17:                                # %for.inc
                                        #   in Loop: Header=BB7_15 Depth=1
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB7_15
.LBB7_18:                               # %for.end
	popq	%rbp
	retq
.Lfunc_end7:
	.size	weld_pixels, .Lfunc_end7-weld_pixels
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
	.asciz	"Input image (unused)"
	.size	.L.str.3, 21

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
	.asciz	"plug-in-make-seamless"
	.size	.L.str.6, 22

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Alters edges to make the image seamlessly tileable"
	.size	.L.str.7, 51

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"This plugin creates a seamless tileable from the input drawable"
	.size	.L.str.8, 64

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Tim Rowley"
	.size	.L.str.9, 11

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"1997"
	.size	.L.str.10, 5

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"_Make Seamless"
	.size	.L.str.11, 15

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"RGB*, GRAY*"
	.size	.L.str.12, 12

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"<Image>/Filters/Map"
	.size	.L.str.13, 20

	.type	run.values,@object      # @run.values
	.local	run.values
	.comm	run.values,40,16
	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"gimp20-std-plug-ins"
	.size	.L.str.14, 20

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"UTF-8"
	.size	.L.str.15, 6

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Tiler"
	.size	.L.str.16, 6

	.type	tile_region.progress,@object # @tile_region.progress
	.local	tile_region.progress
	.comm	tile_region.progress,4,4

	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
