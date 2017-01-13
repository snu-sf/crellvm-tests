	.text
	.file	"value-invert.bc"
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
	movl	$3, -44(%rbp)
# BB#1:                                 # %do.body
	callq	gimp_locale_directory
	movabsq	$.L.str.14, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.14, %rdi
	movabsq	$.L.str.15, %rsi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.14, %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	textdomain
	movq	%rax, -88(%rbp)         # 8-byte Spill
# BB#2:                                 # %do.end
	movabsq	$run.values, %rax
	movq	-24(%rbp), %rcx
	movl	8(%rcx), %edx
	movl	%edx, -48(%rbp)
	movq	-32(%rbp), %rcx
	movl	$1, (%rcx)
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	$21, run.values
	movl	-44(%rbp), %edx
	movl	%edx, run.values+8
	movq	-8(%rbp), %rdi
	movl	$.L.str.6, %edx
	movl	%edx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_14
# BB#3:                                 # %if.then
	movq	-24(%rbp), %rax
	movl	88(%rax), %edi
	callq	gimp_drawable_get
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rax
	movl	48(%rax), %edi
	movl	%edi, -60(%rbp)
	movq	-56(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_is_rgb
	cmpl	$0, %eax
	je	.LBB1_7
# BB#4:                                 # %if.then.11
	movq	-56(%rbp), %rdi
	callq	vinvert
	cmpl	$1, -48(%rbp)
	je	.LBB1_6
# BB#5:                                 # %if.then.13
	callq	gimp_displays_flush
	movl	%eax, -92(%rbp)         # 4-byte Spill
.LBB1_6:                                # %if.end
	jmp	.LBB1_13
.LBB1_7:                                # %if.else
	movq	-56(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_is_indexed
	cmpl	$0, %eax
	je	.LBB1_11
# BB#8:                                 # %if.then.18
	movl	-60(%rbp), %edi
	callq	vinvert_indexed
	cmpl	$1, -48(%rbp)
	je	.LBB1_10
# BB#9:                                 # %if.then.20
	callq	gimp_displays_flush
	movl	%eax, -96(%rbp)         # 4-byte Spill
.LBB1_10:                               # %if.end.22
	jmp	.LBB1_12
.LBB1_11:                               # %if.else.23
	movl	$0, -44(%rbp)
.LBB1_12:                               # %if.end.24
	jmp	.LBB1_13
.LBB1_13:                               # %if.end.25
	movq	-56(%rbp), %rdi
	callq	gimp_drawable_detach
	jmp	.LBB1_15
.LBB1_14:                               # %if.else.26
	movl	$1, -44(%rbp)
.LBB1_15:                               # %if.end.27
	movl	-44(%rbp), %eax
	movl	%eax, run.values+8
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
	.type	vinvert,@function
vinvert:                                # @vinvert
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
	subq	$224, %rsp
	leaq	-12(%rbp), %rsi
	leaq	-16(%rbp), %rdx
	leaq	-20(%rbp), %rcx
	leaq	-24(%rbp), %r8
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	(%rdi), %edi
	callq	gimp_drawable_mask_intersect
	cmpl	$0, %eax
	jne	.LBB3_2
# BB#1:                                 # %if.then
	jmp	.LBB3_13
.LBB3_2:                                # %if.end
	movabsq	$.L.str.16, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_progress_init
	movq	-8(%rbp), %rdi
	movl	(%rdi), %edi
	movl	%eax, -180(%rbp)        # 4-byte Spill
	callq	gimp_drawable_bpp
	leaq	-96(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	%eax, -48(%rbp)
	movq	-8(%rbp), %rsi
	movl	-12(%rbp), %edx
	movl	-16(%rbp), %eax
	movl	-20(%rbp), %r8d
	movl	-24(%rbp), %r9d
	movl	%ecx, -184(%rbp)        # 4-byte Spill
	movl	%eax, %ecx
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	leaq	-144(%rbp), %rdi
	movl	$1, %eax
	movq	-8(%rbp), %rsi
	movl	-12(%rbp), %edx
	movl	-16(%rbp), %ecx
	movl	-20(%rbp), %r8d
	movl	-24(%rbp), %r9d
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	movl	%eax, -188(%rbp)        # 4-byte Spill
	callq	gimp_pixel_rgn_init
	movl	$2, %edi
	leaq	-96(%rbp), %rsi
	leaq	-144(%rbp), %rdx
	xorps	%xmm0, %xmm0
	movl	-20(%rbp), %eax
	imull	-24(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	movsd	%xmm1, -32(%rbp)
	movsd	%xmm0, -40(%rbp)
	movb	$0, %al
	callq	gimp_pixel_rgns_register
	movq	%rax, -176(%rbp)
	movl	$0, -44(%rbp)
.LBB3_3:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_5 Depth 2
	cmpq	$0, -176(%rbp)
	je	.LBB3_12
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB3_3 Depth=1
	movq	-96(%rbp), %rax
	movq	%rax, -152(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -160(%rbp)
	movl	$0, -164(%rbp)
.LBB3_5:                                # %for.cond.8
                                        #   Parent Loop BB3_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-164(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jge	.LBB3_8
# BB#6:                                 # %for.body.11
                                        #   in Loop: Header=BB3_5 Depth=2
	movq	-152(%rbp), %rdi
	movq	-160(%rbp), %rsi
	movl	-64(%rbp), %edx
	movl	-48(%rbp), %ecx
	callq	vinvert_render_row
	movl	-76(%rbp), %ecx
	movq	-152(%rbp), %rsi
	movslq	%ecx, %rdi
	addq	%rdi, %rsi
	movq	%rsi, -152(%rbp)
	movl	-124(%rbp), %ecx
	movq	-160(%rbp), %rsi
	movslq	%ecx, %rdi
	addq	%rdi, %rsi
	movq	%rsi, -160(%rbp)
# BB#7:                                 # %for.inc
                                        #   in Loop: Header=BB3_5 Depth=2
	movl	-164(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -164(%rbp)
	jmp	.LBB3_5
.LBB3_8:                                # %for.end
                                        #   in Loop: Header=BB3_3 Depth=1
	movl	$16, %eax
	movl	-64(%rbp), %ecx
	imull	-60(%rbp), %ecx
	cvtsi2sdl	%ecx, %xmm0
	addsd	-40(%rbp), %xmm0
	movsd	%xmm0, -40(%rbp)
	movl	-44(%rbp), %ecx
	movl	%eax, -192(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-192(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movl	%edx, -44(%rbp)
	cmpl	$0, -44(%rbp)
	jne	.LBB3_10
# BB#9:                                 # %if.then.21
                                        #   in Loop: Header=BB3_3 Depth=1
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	divsd	-32(%rbp), %xmm0
	callq	gimp_progress_update
	movl	%eax, -196(%rbp)        # 4-byte Spill
.LBB3_10:                               # %if.end.23
                                        #   in Loop: Header=BB3_3 Depth=1
	jmp	.LBB3_11
.LBB3_11:                               # %for.inc.24
                                        #   in Loop: Header=BB3_3 Depth=1
	movq	-176(%rbp), %rdi
	callq	gimp_pixel_rgns_process
	movq	%rax, -176(%rbp)
	movl	-44(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -44(%rbp)
	jmp	.LBB3_3
.LBB3_12:                               # %for.end.27
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	callq	gimp_progress_update
	movq	-8(%rbp), %rdi
	movl	%eax, -200(%rbp)        # 4-byte Spill
	callq	gimp_drawable_flush
	movl	$1, %esi
	movq	-8(%rbp), %rdi
	movl	(%rdi), %edi
	callq	gimp_drawable_merge_shadow
	movq	-8(%rbp), %rcx
	movl	(%rcx), %edi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %ecx
	movl	-24(%rbp), %r8d
	movl	%eax, -204(%rbp)        # 4-byte Spill
	callq	gimp_drawable_update
	movl	%eax, -208(%rbp)        # 4-byte Spill
.LBB3_13:                               # %return
	addq	$224, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	vinvert, .Lfunc_end3-vinvert
	.cfi_endproc

	.align	16, 0x90
	.type	vinvert_indexed,@function
vinvert_indexed:                        # @vinvert_indexed
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
	subq	$32, %rsp
	leaq	-20(%rbp), %rsi
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	callq	gimp_image_get_colormap
	movq	%rax, -16(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB4_3
# BB#2:                                 # %if.then
	jmp	.LBB4_4
.LBB4_3:                                # %if.else
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L__func__.vinvert_indexed, %rsi
	movabsq	$.L.str.17, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_6
.LBB4_4:                                # %if.end
	jmp	.LBB4_5
.LBB4_5:                                # %do.end
	movl	$3, %ecx
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	callq	vinvert_render_row
	movl	-4(%rbp), %edi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	callq	gimp_image_set_colormap
	movq	-16(%rbp), %rdi
	movl	%eax, -24(%rbp)         # 4-byte Spill
	callq	g_free
.LBB4_6:                                # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	vinvert_indexed, .Lfunc_end4-vinvert_indexed
	.cfi_endproc

	.align	16, 0x90
	.type	vinvert_render_row,@function
vinvert_render_row:                     # @vinvert_render_row
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	$0, -28(%rbp)
.LBB5_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB5_31
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -8(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -8(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -36(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -8(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -40(%rbp)
	movl	-32(%rbp), %edx
	cmpl	-36(%rbp), %edx
	jle	.LBB5_10
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	-32(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jle	.LBB5_5
# BB#4:                                 # %cond.true
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	-32(%rbp), %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	jmp	.LBB5_6
.LBB5_5:                                # %cond.false
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	-40(%rbp), %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
.LBB5_6:                                # %cond.end
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	-60(%rbp), %eax         # 4-byte Reload
	movl	%eax, -44(%rbp)
	movl	-36(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jge	.LBB5_8
# BB#7:                                 # %cond.true.11
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	-36(%rbp), %eax
	movl	%eax, -64(%rbp)         # 4-byte Spill
	jmp	.LBB5_9
.LBB5_8:                                # %cond.false.12
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	-40(%rbp), %eax
	movl	%eax, -64(%rbp)         # 4-byte Spill
.LBB5_9:                                # %cond.end.13
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	-64(%rbp), %eax         # 4-byte Reload
	movl	%eax, -52(%rbp)
	jmp	.LBB5_17
.LBB5_10:                               # %if.else
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	-36(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jle	.LBB5_12
# BB#11:                                # %cond.true.17
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	-36(%rbp), %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	jmp	.LBB5_13
.LBB5_12:                               # %cond.false.18
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	-40(%rbp), %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
.LBB5_13:                               # %cond.end.19
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	-68(%rbp), %eax         # 4-byte Reload
	movl	%eax, -44(%rbp)
	movl	-32(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jge	.LBB5_15
# BB#14:                                # %cond.true.23
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	-32(%rbp), %eax
	movl	%eax, -72(%rbp)         # 4-byte Spill
	jmp	.LBB5_16
.LBB5_15:                               # %cond.false.24
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	-40(%rbp), %eax
	movl	%eax, -72(%rbp)         # 4-byte Spill
.LBB5_16:                               # %cond.end.25
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	-72(%rbp), %eax         # 4-byte Reload
	movl	%eax, -52(%rbp)
.LBB5_17:                               # %if.end
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	-44(%rbp), %eax
	subl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -44(%rbp)
	je	.LBB5_19
# BB#18:                                # %lor.lhs.false
                                        #   in Loop: Header=BB5_1 Depth=1
	cmpl	$0, -56(%rbp)
	jne	.LBB5_20
.LBB5_19:                               # %if.then.31
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	$255, %eax
	movl	%eax, %ecx
	subl	-44(%rbp), %ecx
	movl	%ecx, -32(%rbp)
	movl	%eax, %ecx
	subl	-44(%rbp), %ecx
	movl	%ecx, -36(%rbp)
	subl	-44(%rbp), %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB5_27
.LBB5_20:                               # %if.else.35
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	$2, %eax
	movl	-44(%rbp), %ecx
	movl	%eax, -76(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-76(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	movl	%eax, -48(%rbp)
	movl	-32(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jne	.LBB5_22
# BB#21:                                # %if.then.38
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	$255, %eax
	subl	-32(%rbp), %eax
	movl	%eax, -32(%rbp)
	movl	-32(%rbp), %eax
	imull	-40(%rbp), %eax
	addl	-48(%rbp), %eax
	cltd
	idivl	-44(%rbp)
	movl	%eax, -40(%rbp)
	movl	-32(%rbp), %eax
	imull	-36(%rbp), %eax
	addl	-48(%rbp), %eax
	cltd
	idivl	-44(%rbp)
	movl	%eax, -36(%rbp)
	jmp	.LBB5_26
.LBB5_22:                               # %if.else.44
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	-36(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jne	.LBB5_24
# BB#23:                                # %if.then.47
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	$255, %eax
	subl	-36(%rbp), %eax
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %eax
	imull	-32(%rbp), %eax
	addl	-48(%rbp), %eax
	cltd
	idivl	-44(%rbp)
	movl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	imull	-40(%rbp), %eax
	addl	-48(%rbp), %eax
	cltd
	idivl	-44(%rbp)
	movl	%eax, -40(%rbp)
	jmp	.LBB5_25
.LBB5_24:                               # %if.else.55
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	$255, %eax
	subl	-40(%rbp), %eax
	movl	%eax, -40(%rbp)
	movl	-40(%rbp), %eax
	imull	-36(%rbp), %eax
	addl	-48(%rbp), %eax
	cltd
	idivl	-44(%rbp)
	movl	%eax, -36(%rbp)
	movl	-40(%rbp), %eax
	imull	-32(%rbp), %eax
	addl	-48(%rbp), %eax
	cltd
	idivl	-44(%rbp)
	movl	%eax, -32(%rbp)
.LBB5_25:                               # %if.end.63
                                        #   in Loop: Header=BB5_1 Depth=1
	jmp	.LBB5_26
.LBB5_26:                               # %if.end.64
                                        #   in Loop: Header=BB5_1 Depth=1
	jmp	.LBB5_27
.LBB5_27:                               # %if.end.65
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	-32(%rbp), %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -16(%rbp)
	movb	%cl, (%rdx)
	movl	-36(%rbp), %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -16(%rbp)
	movb	%cl, (%rdx)
	movl	-40(%rbp), %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -16(%rbp)
	movb	%cl, (%rdx)
	cmpl	$4, -24(%rbp)
	jne	.LBB5_29
# BB#28:                                # %if.then.74
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -8(%rbp)
	movb	(%rax), %dl
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movb	%dl, (%rax)
.LBB5_29:                               # %if.end.77
                                        #   in Loop: Header=BB5_1 Depth=1
	jmp	.LBB5_30
.LBB5_30:                               # %for.inc
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB5_1
.LBB5_31:                               # %for.end
	popq	%rbp
	retq
.Lfunc_end5:
	.size	vinvert_render_row, .Lfunc_end5-vinvert_render_row
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
	.asciz	"Input image (used for indexed images)"
	.size	.L.str.3, 38

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
	.asciz	"plug-in-vinvert"
	.size	.L.str.6, 16

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Invert the brightness of each pixel"
	.size	.L.str.7, 36

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"This function takes an indexed/RGB image and inverts its 'value' in HSV space.  The upshot of this is that the color and saturation at any given point remains the same, but its brightness is effectively inverted.  Quite strange.  Sometimes produces unpleasant color artifacts on images from lossy sources (ie. JPEG)."
	.size	.L.str.8, 317

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Adam D. Moss (adam@foxbox.org), Mukund Sivaraman <muks@mukund.org>"
	.size	.L.str.9, 67

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"27th March 1997, 12th June 2006"
	.size	.L.str.10, 32

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"_Value Invert"
	.size	.L.str.11, 14

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"RGB*, INDEXED*"
	.size	.L.str.12, 15

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"<Image>/Colors/Invert"
	.size	.L.str.13, 22

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
	.asciz	"Value Invert"
	.size	.L.str.16, 13

	.type	.L__func__.vinvert_indexed,@object # @__func__.vinvert_indexed
.L__func__.vinvert_indexed:
	.asciz	"vinvert_indexed"
	.size	.L__func__.vinvert_indexed, 16

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"cmap != NULL"
	.size	.L.str.17, 13


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
