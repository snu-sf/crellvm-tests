	.text
	.file	"ico-save.bc"
	.globl	ico_cmap_contains_black
	.align	16, 0x90
	.type	ico_cmap_contains_black,@function
ico_cmap_contains_black:                # @ico_cmap_contains_black
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
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	$0, -24(%rbp)
.LBB0_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-24(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB0_8
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB0_1 Depth=1
	imull	$3, -24(%rbp), %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cmpl	$0, %eax
	jne	.LBB0_6
# BB#3:                                 # %land.lhs.true
                                        #   in Loop: Header=BB0_1 Depth=1
	imull	$3, -24(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cmpl	$0, %eax
	jne	.LBB0_6
# BB#4:                                 # %land.lhs.true.9
                                        #   in Loop: Header=BB0_1 Depth=1
	imull	$3, -24(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cmpl	$0, %eax
	jne	.LBB0_6
# BB#5:                                 # %if.then
	movl	$1, -4(%rbp)
	jmp	.LBB0_9
.LBB0_6:                                # %if.end
                                        #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_7
.LBB0_7:                                # %for.inc
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB0_1
.LBB0_8:                                # %for.end
	movl	$0, -4(%rbp)
.LBB0_9:                                # %return
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end0:
	.size	ico_cmap_contains_black, .Lfunc_end0-ico_cmap_contains_black
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	ico_save_image
	.align	16, 0x90
	.type	ico_save_image,@function
ico_save_image:                         # @ico_save_image
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp3:
	.cfi_def_cfa_offset 16
.Ltmp4:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp5:
	.cfi_def_cfa_register %rbp
	subq	$208, %rsp
	leaq	-96(%rbp), %rax
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	-20(%rbp), %edi
	movq	%rax, %rsi
	callq	ico_save_init
	cmpl	$0, -24(%rbp)
	jne	.LBB1_4
# BB#1:                                 # %if.then
	leaq	-96(%rbp), %rsi
	movl	-20(%rbp), %edi
	callq	ico_save_dialog
	cmpl	$0, %eax
	jne	.LBB1_3
# BB#2:                                 # %if.then.1
	movl	$4, -4(%rbp)
	jmp	.LBB1_36
.LBB1_3:                                # %if.end
	jmp	.LBB1_4
.LBB1_4:                                # %if.end.2
	movabsq	$.L.str, %rdi
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	gimp_progress_init_printf
	movabsq	$.L.str.1, %rsi
	movq	-16(%rbp), %rdi
	movl	%eax, -132(%rbp)        # 4-byte Spill
	callq	fopen
	movq	%rax, -40(%rbp)
	cmpq	$0, %rax
	jne	.LBB1_6
# BB#5:                                 # %if.then.8
	movq	-32(%rbp), %rdi
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	callq	g_file_error_quark
	movl	%eax, -148(%rbp)        # 4-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_file_error_from_errno
	movabsq	$.L.str.2, %rdi
	movl	%eax, -152(%rbp)        # 4-byte Spill
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_strerror
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movl	-148(%rbp), %esi        # 4-byte Reload
	movl	-152(%rbp), %edx        # 4-byte Reload
	movq	-160(%rbp), %rcx        # 8-byte Reload
	movq	-168(%rbp), %r8         # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	g_set_error
	movl	$0, -4(%rbp)
	jmp	.LBB1_36
.LBB1_6:                                # %if.end.16
	movl	$1, %edx
	leaq	-104(%rbp), %rsi
	movw	$0, -104(%rbp)
	movw	$1, -102(%rbp)
	movl	-64(%rbp), %eax
	movw	%ax, %cx
	movw	%cx, -100(%rbp)
	movq	-40(%rbp), %rdi
	callq	ico_write_int16
	cmpl	$0, %eax
	je	.LBB1_9
# BB#7:                                 # %lor.lhs.false
	movl	$1, %edx
	leaq	-104(%rbp), %rax
	movq	-40(%rbp), %rdi
	addq	$2, %rax
	movq	%rax, %rsi
	callq	ico_write_int16
	cmpl	$0, %eax
	je	.LBB1_9
# BB#8:                                 # %lor.lhs.false.23
	movl	$1, %edx
	leaq	-104(%rbp), %rax
	movq	-40(%rbp), %rdi
	addq	$4, %rax
	movq	%rax, %rsi
	callq	ico_write_int16
	cmpl	$0, %eax
	jne	.LBB1_10
.LBB1_9:                                # %if.then.27
	leaq	-96(%rbp), %rdi
	callq	ico_save_info_free
	movq	-40(%rbp), %rdi
	callq	fclose
	movl	$0, -4(%rbp)
	movl	%eax, -172(%rbp)        # 4-byte Spill
	jmp	.LBB1_36
.LBB1_10:                               # %if.end.29
	movl	$16, %eax
	movl	%eax, %esi
	movslq	-64(%rbp), %rdi
	callq	g_malloc0_n
	movl	$16, %ecx
	movl	%ecx, %esi
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movslq	-64(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	%rax, %rdi
	callq	fwrite
	cmpq	$0, %rax
	ja	.LBB1_12
# BB#11:                                # %if.then.38
	leaq	-96(%rbp), %rdi
	callq	ico_save_info_free
	movq	-112(%rbp), %rdi
	callq	g_free
	movq	-40(%rbp), %rdi
	callq	fclose
	movl	$0, -4(%rbp)
	movl	%eax, -176(%rbp)        # 4-byte Spill
	jmp	.LBB1_36
.LBB1_12:                               # %if.end.40
	movl	$0, -44(%rbp)
.LBB1_13:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	cmpl	-64(%rbp), %eax
	jge	.LBB1_28
# BB#14:                                # %for.body
                                        #   in Loop: Header=BB1_13 Depth=1
	cvtsi2sdl	-44(%rbp), %xmm0
	cvtsi2sdl	-64(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movslq	-44(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movl	(%rdx,%rcx,4), %edi
	movl	%eax, -180(%rbp)        # 4-byte Spill
	callq	gimp_drawable_width
	movl	%eax, -48(%rbp)
	movslq	-44(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movl	(%rdx,%rcx,4), %edi
	callq	gimp_drawable_height
	movl	%eax, -52(%rbp)
	cmpl	$255, -48(%rbp)
	jg	.LBB1_17
# BB#15:                                # %land.lhs.true
                                        #   in Loop: Header=BB1_13 Depth=1
	cmpl	$255, -52(%rbp)
	jg	.LBB1_17
# BB#16:                                # %if.then.57
                                        #   in Loop: Header=BB1_13 Depth=1
	movl	-48(%rbp), %eax
	movb	%al, %cl
	movslq	-44(%rbp), %rdx
	shlq	$4, %rdx
	addq	-112(%rbp), %rdx
	movb	%cl, (%rdx)
	movl	-52(%rbp), %eax
	movb	%al, %cl
	movslq	-44(%rbp), %rdx
	shlq	$4, %rdx
	addq	-112(%rbp), %rdx
	movb	%cl, 1(%rdx)
	jmp	.LBB1_18
.LBB1_17:                               # %if.else
                                        #   in Loop: Header=BB1_13 Depth=1
	movslq	-44(%rbp), %rax
	shlq	$4, %rax
	addq	-112(%rbp), %rax
	movb	$0, (%rax)
	movslq	-44(%rbp), %rax
	shlq	$4, %rax
	addq	-112(%rbp), %rax
	movb	$0, 1(%rax)
.LBB1_18:                               # %if.end.72
                                        #   in Loop: Header=BB1_13 Depth=1
	movslq	-44(%rbp), %rax
	movq	-96(%rbp), %rcx
	cmpl	$8, (%rcx,%rax,4)
	jg	.LBB1_20
# BB#19:                                # %if.then.77
                                        #   in Loop: Header=BB1_13 Depth=1
	movl	$1, %eax
	movslq	-44(%rbp), %rcx
	movq	-96(%rbp), %rdx
	movl	(%rdx,%rcx,4), %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %eax
	movb	%al, %cl
	movslq	-44(%rbp), %rdx
	shlq	$4, %rdx
	addq	-112(%rbp), %rdx
	movb	%cl, 2(%rdx)
	jmp	.LBB1_21
.LBB1_20:                               # %if.else.84
                                        #   in Loop: Header=BB1_13 Depth=1
	movslq	-44(%rbp), %rax
	shlq	$4, %rax
	addq	-112(%rbp), %rax
	movb	$0, 2(%rax)
.LBB1_21:                               # %if.end.88
                                        #   in Loop: Header=BB1_13 Depth=1
	movslq	-44(%rbp), %rax
	shlq	$4, %rax
	addq	-112(%rbp), %rax
	movb	$0, 3(%rax)
	movslq	-44(%rbp), %rax
	shlq	$4, %rax
	addq	-112(%rbp), %rax
	movw	$1, 4(%rax)
	movslq	-44(%rbp), %rax
	movq	-96(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	movw	%dx, %si
	movslq	-44(%rbp), %rax
	shlq	$4, %rax
	addq	-112(%rbp), %rax
	movw	%si, 6(%rax)
	movq	-40(%rbp), %rdi
	callq	ftell
	movl	%eax, %edx
	movslq	-44(%rbp), %rax
	shlq	$4, %rax
	addq	-112(%rbp), %rax
	movl	%edx, 12(%rax)
	movslq	-44(%rbp), %rax
	movq	-80(%rbp), %rcx
	cmpl	$0, (%rcx,%rax,4)
	je	.LBB1_23
# BB#22:                                # %if.then.107
                                        #   in Loop: Header=BB1_13 Depth=1
	movq	-40(%rbp), %rdi
	movslq	-44(%rbp), %rax
	movq	-72(%rbp), %rcx
	movl	(%rcx,%rax,4), %esi
	movslq	-44(%rbp), %rax
	movq	-96(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	callq	ico_write_png
	movl	%eax, -116(%rbp)
	jmp	.LBB1_24
.LBB1_23:                               # %if.else.115
                                        #   in Loop: Header=BB1_13 Depth=1
	movq	-40(%rbp), %rdi
	movslq	-44(%rbp), %rax
	movq	-72(%rbp), %rcx
	movl	(%rcx,%rax,4), %esi
	movslq	-44(%rbp), %rax
	movq	-96(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	callq	ico_write_icon
	movl	%eax, -116(%rbp)
.LBB1_24:                               # %if.end.123
                                        #   in Loop: Header=BB1_13 Depth=1
	cmpl	$0, -116(%rbp)
	jne	.LBB1_26
# BB#25:                                # %if.then.125
	leaq	-96(%rbp), %rdi
	callq	ico_save_info_free
	movq	-40(%rbp), %rdi
	callq	fclose
	movl	$0, -4(%rbp)
	movl	%eax, -184(%rbp)        # 4-byte Spill
	jmp	.LBB1_36
.LBB1_26:                               # %if.end.127
                                        #   in Loop: Header=BB1_13 Depth=1
	movq	-40(%rbp), %rdi
	callq	ftell
	movslq	-44(%rbp), %rdi
	shlq	$4, %rdi
	addq	-112(%rbp), %rdi
	movl	12(%rdi), %ecx
	movl	%ecx, %edi
	subq	%rdi, %rax
	movl	%eax, %ecx
	movslq	-44(%rbp), %rax
	shlq	$4, %rax
	addq	-112(%rbp), %rax
	movl	%ecx, 8(%rax)
# BB#27:                                # %for.inc
                                        #   in Loop: Header=BB1_13 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB1_13
.LBB1_28:                               # %for.end
	movl	$0, -44(%rbp)
.LBB1_29:                               # %for.cond.136
                                        # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	cmpl	-64(%rbp), %eax
	jge	.LBB1_32
# BB#30:                                # %for.body.140
                                        #   in Loop: Header=BB1_29 Depth=1
	movslq	-44(%rbp), %rax
	shlq	$4, %rax
	addq	-112(%rbp), %rax
	movw	4(%rax), %cx
	movslq	-44(%rbp), %rax
	shlq	$4, %rax
	addq	-112(%rbp), %rax
	movw	%cx, 4(%rax)
	movslq	-44(%rbp), %rax
	shlq	$4, %rax
	addq	-112(%rbp), %rax
	movw	6(%rax), %cx
	movslq	-44(%rbp), %rax
	shlq	$4, %rax
	addq	-112(%rbp), %rax
	movw	%cx, 6(%rax)
	movslq	-44(%rbp), %rax
	shlq	$4, %rax
	addq	-112(%rbp), %rax
	movl	8(%rax), %edx
	movslq	-44(%rbp), %rax
	shlq	$4, %rax
	addq	-112(%rbp), %rax
	movl	%edx, 8(%rax)
	movslq	-44(%rbp), %rax
	shlq	$4, %rax
	addq	-112(%rbp), %rax
	movl	12(%rax), %edx
	movslq	-44(%rbp), %rax
	shlq	$4, %rax
	addq	-112(%rbp), %rax
	movl	%edx, 12(%rax)
# BB#31:                                # %for.inc.165
                                        #   in Loop: Header=BB1_29 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB1_29
.LBB1_32:                               # %for.end.167
	movl	$6, %eax
	movl	%eax, %esi
	xorl	%edx, %edx
	movq	-40(%rbp), %rdi
	callq	fseek
	cmpl	$0, %eax
	jl	.LBB1_34
# BB#33:                                # %lor.lhs.false.171
	movl	$16, %eax
	movl	%eax, %esi
	movq	-112(%rbp), %rcx
	movslq	-64(%rbp), %rdx
	movq	-40(%rbp), %rdi
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	-192(%rbp), %rcx        # 8-byte Reload
	callq	fwrite
	cmpq	$0, %rax
	ja	.LBB1_35
.LBB1_34:                               # %if.then.177
	leaq	-96(%rbp), %rdi
	callq	ico_save_info_free
	movq	-40(%rbp), %rdi
	callq	fclose
	movl	$0, -4(%rbp)
	movl	%eax, -196(%rbp)        # 4-byte Spill
	jmp	.LBB1_36
.LBB1_35:                               # %if.end.179
	movsd	.LCPI1_0, %xmm0         # xmm0 = mem[0],zero
	callq	gimp_progress_update
	leaq	-96(%rbp), %rdi
	movl	%eax, -200(%rbp)        # 4-byte Spill
	callq	ico_save_info_free
	movq	-40(%rbp), %rdi
	callq	fclose
	movq	-112(%rbp), %rdi
	movl	%eax, -204(%rbp)        # 4-byte Spill
	callq	g_free
	movl	$3, -4(%rbp)
.LBB1_36:                               # %return
	movl	-4(%rbp), %eax
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	ico_save_image, .Lfunc_end1-ico_save_image
	.cfi_endproc

	.align	16, 0x90
	.type	ico_save_init,@function
ico_save_init:                          # @ico_save_init
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
	subq	$48, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	-4(%rbp), %edi
	movq	-16(%rbp), %rsi
	addq	$32, %rsi
	callq	gimp_image_get_layers
	movl	$4, %edi
	movl	%edi, %esi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 24(%rcx)
	movq	-16(%rbp), %rax
	movslq	32(%rax), %rdi
	callq	g_malloc_n
	movl	$4, %edx
	movl	%edx, %esi
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	movslq	32(%rax), %rdi
	callq	g_malloc_n
	movl	$4, %edx
	movl	%edx, %esi
	movq	-16(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-16(%rbp), %rax
	movslq	32(%rax), %rdi
	callq	g_malloc_n
	movq	-16(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movl	$0, -28(%rbp)
.LBB2_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	32(%rcx), %eax
	jge	.LBB2_20
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB2_1 Depth=1
	leaq	-36(%rbp), %rsi
	movslq	-28(%rbp), %rax
	movq	-24(%rbp), %rcx
	movl	(%rcx,%rax,4), %edi
	callq	ico_get_layer_num_colors
	movl	%eax, -32(%rbp)
	cmpl	$0, -36(%rbp)
	jne	.LBB2_13
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB2_1 Depth=1
	cmpl	$2, -32(%rbp)
	jg	.LBB2_5
# BB#4:                                 # %if.then.15
                                        #   in Loop: Header=BB2_1 Depth=1
	movslq	-28(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rcx
	movl	$1, (%rcx,%rax,4)
	jmp	.LBB2_12
.LBB2_5:                                # %if.else
                                        #   in Loop: Header=BB2_1 Depth=1
	cmpl	$16, -32(%rbp)
	jg	.LBB2_7
# BB#6:                                 # %if.then.21
                                        #   in Loop: Header=BB2_1 Depth=1
	movslq	-28(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rcx
	movl	$4, (%rcx,%rax,4)
	jmp	.LBB2_11
.LBB2_7:                                # %if.else.25
                                        #   in Loop: Header=BB2_1 Depth=1
	cmpl	$256, -32(%rbp)         # imm = 0x100
	jg	.LBB2_9
# BB#8:                                 # %if.then.28
                                        #   in Loop: Header=BB2_1 Depth=1
	movslq	-28(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rcx
	movl	$8, (%rcx,%rax,4)
	jmp	.LBB2_10
.LBB2_9:                                # %if.else.32
                                        #   in Loop: Header=BB2_1 Depth=1
	movslq	-28(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rcx
	movl	$24, (%rcx,%rax,4)
.LBB2_10:                               # %if.end
                                        #   in Loop: Header=BB2_1 Depth=1
	jmp	.LBB2_11
.LBB2_11:                               # %if.end.36
                                        #   in Loop: Header=BB2_1 Depth=1
	jmp	.LBB2_12
.LBB2_12:                               # %if.end.37
                                        #   in Loop: Header=BB2_1 Depth=1
	jmp	.LBB2_14
.LBB2_13:                               # %if.else.38
                                        #   in Loop: Header=BB2_1 Depth=1
	movslq	-28(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rcx
	movl	$32, (%rcx,%rax,4)
.LBB2_14:                               # %if.end.42
                                        #   in Loop: Header=BB2_1 Depth=1
	movslq	-28(%rbp), %rax
	movq	-24(%rbp), %rcx
	movl	(%rcx,%rax,4), %edi
	callq	gimp_drawable_width
	cmpl	$255, %eax
	jg	.LBB2_16
# BB#15:                                # %lor.lhs.false
                                        #   in Loop: Header=BB2_1 Depth=1
	movslq	-28(%rbp), %rax
	movq	-24(%rbp), %rcx
	movl	(%rcx,%rax,4), %edi
	callq	gimp_drawable_height
	cmpl	$255, %eax
	jle	.LBB2_17
.LBB2_16:                               # %if.then.53
                                        #   in Loop: Header=BB2_1 Depth=1
	movslq	-28(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	16(%rcx), %rcx
	movl	$1, (%rcx,%rax,4)
	jmp	.LBB2_18
.LBB2_17:                               # %if.else.57
                                        #   in Loop: Header=BB2_1 Depth=1
	movslq	-28(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	16(%rcx), %rcx
	movl	$0, (%rcx,%rax,4)
.LBB2_18:                               # %if.end.61
                                        #   in Loop: Header=BB2_1 Depth=1
	jmp	.LBB2_19
.LBB2_19:                               # %for.inc
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB2_1
.LBB2_20:                               # %for.end
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	-16(%rbp), %rdx
	movslq	32(%rdx), %rdx
	shlq	$2, %rdx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	memcpy
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	ico_save_init, .Lfunc_end2-ico_save_init
	.cfi_endproc

	.align	16, 0x90
	.type	ico_save_dialog,@function
ico_save_dialog:                        # @ico_save_dialog
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
	subq	$64, %rsp
	movabsq	$.L.str.3, %rax
	movl	$1, %ecx
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rax, %rdi
	movl	%ecx, %esi
	callq	gimp_ui_init
	movq	-16(%rbp), %rdi
	callq	ico_dialog_new
	movq	%rax, -24(%rbp)
	movl	$0, -28(%rbp)
.LBB3_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	32(%rcx), %eax
	jge	.LBB3_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-24(%rbp), %rdi
	movslq	-28(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	24(%rcx), %rcx
	movl	(%rcx,%rax,4), %esi
	movl	-28(%rbp), %edx
	callq	ico_dialog_add_icon
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB3_1
.LBB3_4:                                # %for.end
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	cmpl	$4, 32(%rsi)
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jle	.LBB3_6
# BB#5:                                 # %cond.true
	movl	$500, %eax              # imm = 0x1F4
	movl	%eax, -52(%rbp)         # 4-byte Spill
	jmp	.LBB3_7
.LBB3_6:                                # %cond.false
	movq	-16(%rbp), %rax
	imull	$120, 32(%rax), %ecx
	movl	%ecx, -52(%rbp)         # 4-byte Spill
.LBB3_7:                                # %cond.end
	movl	-52(%rbp), %eax         # 4-byte Reload
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	addl	$200, %eax
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	%eax, %edx
	callq	gtk_window_set_default_size
	movq	-24(%rbp), %rdi
	callq	gtk_widget_show
	movq	-24(%rbp), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	callq	gimp_dialog_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dialog_run
	movl	%eax, -32(%rbp)
	movq	-24(%rbp), %rdi
	callq	gtk_widget_destroy
	cmpl	$-5, -32(%rbp)
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	ico_save_dialog, .Lfunc_end3-ico_save_dialog
	.cfi_endproc

	.align	16, 0x90
	.type	ico_write_int16,@function
ico_write_int16:                        # @ico_write_int16
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	-20(%rbp), %edx
	movl	%edx, -24(%rbp)
	cmpl	$0, -20(%rbp)
	jle	.LBB4_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	-20(%rbp), %ecx
	shll	$1, %ecx
	movq	%rax, %rsi
	movl	%ecx, %edx
	callq	ico_write_int8
	movl	%eax, -28(%rbp)         # 4-byte Spill
.LBB4_2:                                # %if.end
	movl	-24(%rbp), %eax
	shll	$1, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	ico_write_int16, .Lfunc_end4-ico_write_int16
	.cfi_endproc

	.align	16, 0x90
	.type	ico_save_info_free,@function
ico_save_info_free:                     # @ico_save_info_free
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	callq	g_free
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	callq	g_free
	movq	-8(%rbp), %rdi
	movq	16(%rdi), %rdi
	callq	g_free
	movq	-8(%rbp), %rdi
	movq	24(%rdi), %rdi
	callq	g_free
	xorl	%esi, %esi
	movl	$40, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rdi
	callq	memset
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	ico_save_info_free, .Lfunc_end5-ico_save_info_free
	.cfi_endproc

	.align	16, 0x90
	.type	ico_write_png,@function
ico_write_png:                          # @ico_write_png
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
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -88(%rbp)
	movl	-20(%rbp), %edi
	callq	gimp_drawable_width
	movl	%eax, -60(%rbp)
	movl	-20(%rbp), %edi
	callq	gimp_drawable_height
	movabsq	$.L.str.4, %rdi
	xorl	%edx, %edx
	movl	%edx, %ecx
	movl	%eax, -64(%rbp)
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	callq	png_create_write_struct
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB6_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB6_17
.LBB6_2:                                # %if.end
	movq	-32(%rbp), %rdi
	callq	png_create_info_struct
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB6_4
# BB#3:                                 # %if.then.5
	leaq	-32(%rbp), %rdi
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	png_destroy_write_struct
	movl	$0, -4(%rbp)
	jmp	.LBB6_17
.LBB6_4:                                # %if.end.6
	movabsq	$longjmp, %rsi
	movl	$200, %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rdi
	callq	png_set_longjmp_fn
	movq	%rax, %rdi
	callq	_setjmp
	cmpl	$0, %eax
	je	.LBB6_12
# BB#5:                                 # %if.then.10
	leaq	-32(%rbp), %rdi
	leaq	-40(%rbp), %rsi
	callq	png_destroy_write_struct
	cmpq	$0, -48(%rbp)
	je	.LBB6_7
# BB#6:                                 # %if.then.12
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
.LBB6_7:                                # %if.end.13
	cmpq	$0, -80(%rbp)
	je	.LBB6_9
# BB#8:                                 # %if.then.15
	movq	-80(%rbp), %rdi
	callq	g_free
.LBB6_9:                                # %if.end.16
	cmpq	$0, -88(%rbp)
	je	.LBB6_11
# BB#10:                                # %if.then.18
	movq	-88(%rbp), %rdi
	callq	g_free
.LBB6_11:                               # %if.end.19
	movl	$0, -4(%rbp)
	jmp	.LBB6_17
.LBB6_12:                               # %if.end.20
	leaq	-68(%rbp), %rdx
	leaq	-80(%rbp), %rcx
	leaq	-88(%rbp), %r8
	movl	-20(%rbp), %edi
	movl	-24(%rbp), %esi
	callq	ico_image_get_reduced_buf
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	png_init_io
	movl	$8, %r8d
	movl	$6, %r9d
	xorl	%eax, %eax
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movl	-60(%rbp), %edx
	movl	-64(%rbp), %ecx
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	%eax, -92(%rbp)         # 4-byte Spill
	callq	png_set_IHDR
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	png_write_info
	movl	$32, %esi
	movl	-60(%rbp), %edi
	callq	ico_rowstride
	movl	$8, %ecx
	movl	%ecx, %esi
	movl	%eax, -56(%rbp)
	movslq	-64(%rbp), %rdi
	callq	g_malloc_n
	movq	%rax, -48(%rbp)
	movl	$0, -52(%rbp)
.LBB6_13:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-52(%rbp), %eax
	cmpl	-64(%rbp), %eax
	jge	.LBB6_16
# BB#14:                                # %for.body
                                        #   in Loop: Header=BB6_13 Depth=1
	movq	-88(%rbp), %rax
	movl	-56(%rbp), %ecx
	imull	-52(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movslq	-52(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	%rax, (%rsi,%rdx,8)
# BB#15:                                # %for.inc
                                        #   in Loop: Header=BB6_13 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB6_13
.LBB6_16:                               # %for.end
	movq	-32(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	png_write_image
	movq	$0, -48(%rbp)
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	png_write_end
	leaq	-32(%rbp), %rdi
	leaq	-40(%rbp), %rsi
	callq	png_destroy_write_struct
	movq	-48(%rbp), %rsi
	movq	%rsi, %rdi
	callq	g_free
	movq	-80(%rbp), %rdi
	callq	g_free
	movq	-88(%rbp), %rdi
	callq	g_free
	movl	$1, -4(%rbp)
.LBB6_17:                               # %return
	movl	-4(%rbp), %eax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	ico_write_png, .Lfunc_end6-ico_write_png
	.cfi_endproc

	.align	16, 0x90
	.type	ico_write_icon,@function
ico_write_icon:                         # @ico_write_icon
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
	subq	$256, %rsp              # imm = 0x100
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	$0, -80(%rbp)
	movl	$0, -84(%rbp)
	movl	$0, -88(%rbp)
	movq	$0, -104(%rbp)
	movq	$0, -136(%rbp)
	movq	$0, -160(%rbp)
	movl	$0, -164(%rbp)
	movl	-12(%rbp), %edi
	callq	gimp_drawable_width
	movl	%eax, -92(%rbp)
	movl	-12(%rbp), %edi
	callq	gimp_drawable_height
	leaq	-84(%rbp), %rdx
	leaq	-128(%rbp), %rcx
	leaq	-104(%rbp), %r8
	movl	$1, %esi
	movl	%esi, %r9d
	movl	%eax, -96(%rbp)
	movl	$40, -56(%rbp)
	movl	-92(%rbp), %eax
	movl	%eax, -52(%rbp)
	movl	-96(%rbp), %eax
	shll	$1, %eax
	movl	%eax, -48(%rbp)
	movw	$1, -44(%rbp)
	movl	-16(%rbp), %eax
	movw	%ax, %r10w
	movw	%r10w, -42(%rbp)
	movl	$0, -40(%rbp)
	movl	$0, -36(%rbp)
	movl	$0, -32(%rbp)
	movl	$0, -28(%rbp)
	movl	$0, -24(%rbp)
	movl	$0, -20(%rbp)
	movzwl	-42(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %r11d
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	movq	%r11, %rcx
                                        # kill: CL<def> RCX<kill>
	shlq	%cl, %r9
	movl	%r9d, %eax
	movl	%eax, -80(%rbp)
	movl	-12(%rbp), %edi
	movzwl	-42(%rbp), %esi
	movq	-184(%rbp), %rcx        # 8-byte Reload
	callq	ico_image_get_reduced_buf
	movq	-104(%rbp), %rcx
	movq	%rcx, -120(%rbp)
	movzwl	-42(%rbp), %eax
	cmpl	$8, %eax
	jg	.LBB7_2
# BB#1:                                 # %if.then
	leaq	-88(%rbp), %rcx
	movq	-128(%rbp), %rdi
	movl	-80(%rbp), %esi
	movl	-84(%rbp), %edx
	callq	ico_create_palette
	movq	%rax, -160(%rbp)
	movl	-80(%rbp), %edx
	shll	$2, %edx
	movl	%edx, -164(%rbp)
	movq	-160(%rbp), %rdi
	movl	-84(%rbp), %esi
	callq	ico_create_color_to_palette_map
	movq	%rax, -136(%rbp)
.LBB7_2:                                # %if.end
	movl	$1, %edx
	leaq	-60(%rbp), %rcx
	movl	-92(%rbp), %edi
	movl	-96(%rbp), %esi
	callq	ico_alloc_map
	xorl	%edx, %edx
	movl	$127, %esi
	movq	%rax, -152(%rbp)
	movzwl	-42(%rbp), %edi
	cmpl	$32, %edi
	cmovll	%esi, %edx
	movb	%dl, %r8b
	movb	%r8b, -165(%rbp)
	movl	$0, -76(%rbp)
.LBB7_3:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_5 Depth 2
	movl	-76(%rbp), %eax
	cmpl	-96(%rbp), %eax
	jge	.LBB7_10
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB7_3 Depth=1
	movl	$0, -72(%rbp)
.LBB7_5:                                # %for.cond.23
                                        #   Parent Loop BB7_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-72(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jge	.LBB7_8
# BB#6:                                 # %for.body.26
                                        #   in Loop: Header=BB7_5 Depth=2
	movl	$1, %eax
	xorl	%ecx, %ecx
	movl	-76(%rbp), %edx
	imull	-92(%rbp), %edx
	addl	-72(%rbp), %edx
	movslq	%edx, %rsi
	shlq	$2, %rsi
	addq	-120(%rbp), %rsi
	movq	%rsi, -112(%rbp)
	movq	-152(%rbp), %rdi
	movl	-92(%rbp), %esi
	movl	-96(%rbp), %edx
	subl	-76(%rbp), %edx
	subl	$1, %edx
	imull	-92(%rbp), %edx
	addl	-72(%rbp), %edx
	movq	-112(%rbp), %r8
	movzbl	3(%r8), %r9d
	movzbl	-165(%rbp), %r10d
	cmpl	%r10d, %r9d
	cmovgl	%ecx, %eax
	movl	%eax, %ecx
	callq	ico_set_bit_in_data
# BB#7:                                 # %for.inc
                                        #   in Loop: Header=BB7_5 Depth=2
	movl	-72(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -72(%rbp)
	jmp	.LBB7_5
.LBB7_8:                                # %for.end
                                        #   in Loop: Header=BB7_3 Depth=1
	jmp	.LBB7_9
.LBB7_9:                                # %for.inc.37
                                        #   in Loop: Header=BB7_3 Depth=1
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB7_3
.LBB7_10:                               # %for.end.39
	movl	-92(%rbp), %edi
	movl	-96(%rbp), %esi
	movzwl	-42(%rbp), %edx
	leaq	-64(%rbp), %rcx
	callq	ico_alloc_map
	movq	%rax, -144(%rbp)
	movzwl	-42(%rbp), %edx
	movl	%edx, %esi
	subl	$1, %esi
	movl	%edx, -188(%rbp)        # 4-byte Spill
	movl	%esi, -192(%rbp)        # 4-byte Spill
	je	.LBB7_11
	jmp	.LBB7_70
.LBB7_70:                               # %for.end.39
	movl	-188(%rbp), %eax        # 4-byte Reload
	subl	$4, %eax
	movl	%eax, -196(%rbp)        # 4-byte Spill
	je	.LBB7_23
	jmp	.LBB7_71
.LBB7_71:                               # %for.end.39
	movl	-188(%rbp), %eax        # 4-byte Reload
	subl	$8, %eax
	movl	%eax, -200(%rbp)        # 4-byte Spill
	je	.LBB7_35
	jmp	.LBB7_72
.LBB7_72:                               # %for.end.39
	movl	-188(%rbp), %eax        # 4-byte Reload
	subl	$24, %eax
	movl	%eax, -204(%rbp)        # 4-byte Spill
	je	.LBB7_47
	jmp	.LBB7_56
.LBB7_11:                               # %sw.bb
	movl	$0, -76(%rbp)
.LBB7_12:                               # %for.cond.45
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_14 Depth 2
	movl	-76(%rbp), %eax
	cmpl	-96(%rbp), %eax
	jge	.LBB7_22
# BB#13:                                # %for.body.48
                                        #   in Loop: Header=BB7_12 Depth=1
	movl	$0, -72(%rbp)
.LBB7_14:                               # %for.cond.49
                                        #   Parent Loop BB7_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-72(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jge	.LBB7_20
# BB#15:                                # %for.body.52
                                        #   in Loop: Header=BB7_14 Depth=2
	movl	-76(%rbp), %eax
	imull	-92(%rbp), %eax
	addl	-72(%rbp), %eax
	movslq	%eax, %rcx
	shlq	$2, %rcx
	addq	-120(%rbp), %rcx
	movq	%rcx, -112(%rbp)
	movq	-136(%rbp), %rdi
	movq	-112(%rbp), %rcx
	movzbl	(%rcx), %esi
	movq	-112(%rbp), %rcx
	movzbl	1(%rcx), %edx
	movq	-112(%rbp), %rcx
	movzbl	2(%rcx), %ecx
	callq	ico_get_palette_index
	movl	%eax, -68(%rbp)
	movq	-152(%rbp), %rdi
	movl	-92(%rbp), %esi
	movl	-96(%rbp), %eax
	subl	-76(%rbp), %eax
	subl	$1, %eax
	imull	-92(%rbp), %eax
	addl	-72(%rbp), %eax
	movl	%eax, %edx
	callq	ico_get_bit_from_data
	cmpl	$0, %eax
	je	.LBB7_17
# BB#16:                                # %if.then.69
                                        #   in Loop: Header=BB7_14 Depth=2
	movq	-144(%rbp), %rdi
	movl	-92(%rbp), %esi
	movl	-96(%rbp), %eax
	subl	-76(%rbp), %eax
	subl	$1, %eax
	imull	-92(%rbp), %eax
	addl	-72(%rbp), %eax
	movl	-88(%rbp), %ecx
	movl	%eax, %edx
	callq	ico_set_bit_in_data
	jmp	.LBB7_18
.LBB7_17:                               # %if.else
                                        #   in Loop: Header=BB7_14 Depth=2
	movq	-144(%rbp), %rdi
	movl	-92(%rbp), %esi
	movl	-96(%rbp), %eax
	subl	-76(%rbp), %eax
	subl	$1, %eax
	imull	-92(%rbp), %eax
	addl	-72(%rbp), %eax
	movl	-68(%rbp), %ecx
	movl	%eax, %edx
	callq	ico_set_bit_in_data
.LBB7_18:                               # %if.end.78
                                        #   in Loop: Header=BB7_14 Depth=2
	jmp	.LBB7_19
.LBB7_19:                               # %for.inc.79
                                        #   in Loop: Header=BB7_14 Depth=2
	movl	-72(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -72(%rbp)
	jmp	.LBB7_14
.LBB7_20:                               # %for.end.81
                                        #   in Loop: Header=BB7_12 Depth=1
	jmp	.LBB7_21
.LBB7_21:                               # %for.inc.82
                                        #   in Loop: Header=BB7_12 Depth=1
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB7_12
.LBB7_22:                               # %for.end.84
	jmp	.LBB7_65
.LBB7_23:                               # %sw.bb.85
	movl	$0, -76(%rbp)
.LBB7_24:                               # %for.cond.86
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_26 Depth 2
	movl	-76(%rbp), %eax
	cmpl	-96(%rbp), %eax
	jge	.LBB7_34
# BB#25:                                # %for.body.89
                                        #   in Loop: Header=BB7_24 Depth=1
	movl	$0, -72(%rbp)
.LBB7_26:                               # %for.cond.90
                                        #   Parent Loop BB7_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-72(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jge	.LBB7_32
# BB#27:                                # %for.body.93
                                        #   in Loop: Header=BB7_26 Depth=2
	movl	-76(%rbp), %eax
	imull	-92(%rbp), %eax
	addl	-72(%rbp), %eax
	movslq	%eax, %rcx
	shlq	$2, %rcx
	addq	-120(%rbp), %rcx
	movq	%rcx, -112(%rbp)
	movq	-136(%rbp), %rdi
	movq	-112(%rbp), %rcx
	movzbl	(%rcx), %esi
	movq	-112(%rbp), %rcx
	movzbl	1(%rcx), %edx
	movq	-112(%rbp), %rcx
	movzbl	2(%rcx), %ecx
	callq	ico_get_palette_index
	movl	%eax, -68(%rbp)
	movq	-152(%rbp), %rdi
	movl	-92(%rbp), %esi
	movl	-96(%rbp), %eax
	subl	-76(%rbp), %eax
	subl	$1, %eax
	imull	-92(%rbp), %eax
	addl	-72(%rbp), %eax
	movl	%eax, %edx
	callq	ico_get_bit_from_data
	cmpl	$0, %eax
	je	.LBB7_29
# BB#28:                                # %if.then.111
                                        #   in Loop: Header=BB7_26 Depth=2
	movq	-144(%rbp), %rdi
	movl	-92(%rbp), %esi
	movl	-96(%rbp), %eax
	subl	-76(%rbp), %eax
	subl	$1, %eax
	imull	-92(%rbp), %eax
	addl	-72(%rbp), %eax
	movl	-88(%rbp), %ecx
	movl	%eax, %edx
	callq	ico_set_nibble_in_data
	jmp	.LBB7_30
.LBB7_29:                               # %if.else.116
                                        #   in Loop: Header=BB7_26 Depth=2
	movq	-144(%rbp), %rdi
	movl	-92(%rbp), %esi
	movl	-96(%rbp), %eax
	subl	-76(%rbp), %eax
	subl	$1, %eax
	imull	-92(%rbp), %eax
	addl	-72(%rbp), %eax
	movl	-68(%rbp), %ecx
	movl	%eax, %edx
	callq	ico_set_nibble_in_data
.LBB7_30:                               # %if.end.121
                                        #   in Loop: Header=BB7_26 Depth=2
	jmp	.LBB7_31
.LBB7_31:                               # %for.inc.122
                                        #   in Loop: Header=BB7_26 Depth=2
	movl	-72(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -72(%rbp)
	jmp	.LBB7_26
.LBB7_32:                               # %for.end.124
                                        #   in Loop: Header=BB7_24 Depth=1
	jmp	.LBB7_33
.LBB7_33:                               # %for.inc.125
                                        #   in Loop: Header=BB7_24 Depth=1
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB7_24
.LBB7_34:                               # %for.end.127
	jmp	.LBB7_65
.LBB7_35:                               # %sw.bb.128
	movl	$0, -76(%rbp)
.LBB7_36:                               # %for.cond.129
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_38 Depth 2
	movl	-76(%rbp), %eax
	cmpl	-96(%rbp), %eax
	jge	.LBB7_46
# BB#37:                                # %for.body.132
                                        #   in Loop: Header=BB7_36 Depth=1
	movl	$0, -72(%rbp)
.LBB7_38:                               # %for.cond.133
                                        #   Parent Loop BB7_36 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-72(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jge	.LBB7_44
# BB#39:                                # %for.body.136
                                        #   in Loop: Header=BB7_38 Depth=2
	movl	-76(%rbp), %eax
	imull	-92(%rbp), %eax
	addl	-72(%rbp), %eax
	movslq	%eax, %rcx
	shlq	$2, %rcx
	addq	-120(%rbp), %rcx
	movq	%rcx, -112(%rbp)
	movq	-136(%rbp), %rdi
	movq	-112(%rbp), %rcx
	movzbl	(%rcx), %esi
	movq	-112(%rbp), %rcx
	movzbl	1(%rcx), %edx
	movq	-112(%rbp), %rcx
	movzbl	2(%rcx), %ecx
	callq	ico_get_palette_index
	movl	%eax, -68(%rbp)
	movq	-152(%rbp), %rdi
	movl	-92(%rbp), %esi
	movl	-96(%rbp), %eax
	subl	-76(%rbp), %eax
	subl	$1, %eax
	imull	-92(%rbp), %eax
	addl	-72(%rbp), %eax
	movl	%eax, %edx
	callq	ico_get_bit_from_data
	cmpl	$0, %eax
	je	.LBB7_41
# BB#40:                                # %if.then.154
                                        #   in Loop: Header=BB7_38 Depth=2
	movq	-144(%rbp), %rdi
	movl	-92(%rbp), %esi
	movl	-96(%rbp), %eax
	subl	-76(%rbp), %eax
	subl	$1, %eax
	imull	-92(%rbp), %eax
	addl	-72(%rbp), %eax
	movl	-88(%rbp), %ecx
	movl	%eax, %edx
	callq	ico_set_byte_in_data
	jmp	.LBB7_42
.LBB7_41:                               # %if.else.159
                                        #   in Loop: Header=BB7_38 Depth=2
	movq	-144(%rbp), %rdi
	movl	-92(%rbp), %esi
	movl	-96(%rbp), %eax
	subl	-76(%rbp), %eax
	subl	$1, %eax
	imull	-92(%rbp), %eax
	addl	-72(%rbp), %eax
	movl	-68(%rbp), %ecx
	movl	%eax, %edx
	callq	ico_set_byte_in_data
.LBB7_42:                               # %if.end.164
                                        #   in Loop: Header=BB7_38 Depth=2
	jmp	.LBB7_43
.LBB7_43:                               # %for.inc.165
                                        #   in Loop: Header=BB7_38 Depth=2
	movl	-72(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -72(%rbp)
	jmp	.LBB7_38
.LBB7_44:                               # %for.end.167
                                        #   in Loop: Header=BB7_36 Depth=1
	jmp	.LBB7_45
.LBB7_45:                               # %for.inc.168
                                        #   in Loop: Header=BB7_36 Depth=1
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB7_36
.LBB7_46:                               # %for.end.170
	jmp	.LBB7_65
.LBB7_47:                               # %sw.bb.171
	movl	$0, -76(%rbp)
.LBB7_48:                               # %for.cond.172
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_50 Depth 2
	movl	-76(%rbp), %eax
	cmpl	-96(%rbp), %eax
	jge	.LBB7_55
# BB#49:                                # %for.body.175
                                        #   in Loop: Header=BB7_48 Depth=1
	movq	-144(%rbp), %rax
	movl	-64(%rbp), %ecx
	movl	-96(%rbp), %edx
	subl	-76(%rbp), %edx
	subl	$1, %edx
	imull	%edx, %ecx
	movq	%rax, -216(%rbp)        # 8-byte Spill
	movl	%ecx, %eax
	cltd
	idivl	-96(%rbp)
	movslq	%eax, %rsi
	movq	-216(%rbp), %rdi        # 8-byte Reload
	addq	%rsi, %rdi
	movq	%rdi, -176(%rbp)
	movl	$0, -72(%rbp)
.LBB7_50:                               # %for.cond.179
                                        #   Parent Loop BB7_48 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-72(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jge	.LBB7_53
# BB#51:                                # %for.body.182
                                        #   in Loop: Header=BB7_50 Depth=2
	movl	-76(%rbp), %eax
	imull	-92(%rbp), %eax
	addl	-72(%rbp), %eax
	movslq	%eax, %rcx
	shlq	$2, %rcx
	addq	-120(%rbp), %rcx
	movq	%rcx, -112(%rbp)
	movq	-112(%rbp), %rcx
	movb	2(%rcx), %dl
	movq	-176(%rbp), %rcx
	movb	%dl, (%rcx)
	movq	-112(%rbp), %rcx
	movb	1(%rcx), %dl
	movq	-176(%rbp), %rcx
	movb	%dl, 1(%rcx)
	movq	-112(%rbp), %rcx
	movb	(%rcx), %dl
	movq	-176(%rbp), %rcx
	movb	%dl, 2(%rcx)
	movq	-176(%rbp), %rcx
	addq	$3, %rcx
	movq	%rcx, -176(%rbp)
# BB#52:                                # %for.inc.194
                                        #   in Loop: Header=BB7_50 Depth=2
	movl	-72(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -72(%rbp)
	jmp	.LBB7_50
.LBB7_53:                               # %for.end.196
                                        #   in Loop: Header=BB7_48 Depth=1
	jmp	.LBB7_54
.LBB7_54:                               # %for.inc.197
                                        #   in Loop: Header=BB7_48 Depth=1
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB7_48
.LBB7_55:                               # %for.end.199
	jmp	.LBB7_65
.LBB7_56:                               # %sw.default
	movl	$0, -76(%rbp)
.LBB7_57:                               # %for.cond.200
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_59 Depth 2
	movl	-76(%rbp), %eax
	cmpl	-96(%rbp), %eax
	jge	.LBB7_64
# BB#58:                                # %for.body.203
                                        #   in Loop: Header=BB7_57 Depth=1
	movl	$0, -72(%rbp)
.LBB7_59:                               # %for.cond.204
                                        #   Parent Loop BB7_57 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-72(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jge	.LBB7_62
# BB#60:                                # %for.body.207
                                        #   in Loop: Header=BB7_59 Depth=2
	movl	-76(%rbp), %eax
	imull	-92(%rbp), %eax
	addl	-72(%rbp), %eax
	movslq	%eax, %rcx
	shlq	$2, %rcx
	addq	-120(%rbp), %rcx
	movq	%rcx, -112(%rbp)
	movq	-112(%rbp), %rcx
	movzbl	(%rcx), %eax
	shll	$16, %eax
	movq	-112(%rbp), %rcx
	movzbl	1(%rcx), %edx
	shll	$8, %edx
	orl	%edx, %eax
	movq	-112(%rbp), %rcx
	movzbl	2(%rcx), %edx
	orl	%edx, %eax
	movq	-112(%rbp), %rcx
	movzbl	3(%rcx), %edx
	shll	$24, %edx
	orl	%edx, %eax
	movl	-96(%rbp), %edx
	subl	-76(%rbp), %edx
	subl	$1, %edx
	imull	-92(%rbp), %edx
	addl	-72(%rbp), %edx
	movslq	%edx, %rcx
	movq	-144(%rbp), %rsi
	movl	%eax, (%rsi,%rcx,4)
# BB#61:                                # %for.inc.231
                                        #   in Loop: Header=BB7_59 Depth=2
	movl	-72(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -72(%rbp)
	jmp	.LBB7_59
.LBB7_62:                               # %for.end.233
                                        #   in Loop: Header=BB7_57 Depth=1
	jmp	.LBB7_63
.LBB7_63:                               # %for.inc.234
                                        #   in Loop: Header=BB7_57 Depth=1
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB7_57
.LBB7_64:                               # %for.end.236
	jmp	.LBB7_65
.LBB7_65:                               # %sw.epilog
	cmpq	$0, -136(%rbp)
	je	.LBB7_67
# BB#66:                                # %if.then.238
	movq	-136(%rbp), %rdi
	callq	g_hash_table_destroy
.LBB7_67:                               # %if.end.239
	movq	-128(%rbp), %rdi
	callq	g_free
	movq	-104(%rbp), %rdi
	callq	g_free
	movl	$3, %edx
	leaq	-56(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -224(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-224(%rbp), %rsi        # 8-byte Reload
	callq	ico_write_int32
	movl	$2, %edx
	leaq	-56(%rbp), %rsi
	movq	-8(%rbp), %rdi
	addq	$12, %rsi
	movl	%eax, -228(%rbp)        # 4-byte Spill
	callq	ico_write_int16
	movl	$6, %edx
	leaq	-56(%rbp), %rsi
	movq	-8(%rbp), %rdi
	addq	$16, %rsi
	movl	%eax, -232(%rbp)        # 4-byte Spill
	callq	ico_write_int32
	cmpl	$0, -164(%rbp)
	movl	%eax, -236(%rbp)        # 4-byte Spill
	je	.LBB7_69
# BB#68:                                # %if.then.246
	movq	-8(%rbp), %rdi
	movq	-160(%rbp), %rax
	movl	-164(%rbp), %edx
	movq	%rax, %rsi
	callq	ico_write_int8
	movl	%eax, -240(%rbp)        # 4-byte Spill
.LBB7_69:                               # %if.end.248
	movq	-8(%rbp), %rdi
	movq	-144(%rbp), %rsi
	movl	-64(%rbp), %edx
	callq	ico_write_int8
	movq	-8(%rbp), %rdi
	movq	-152(%rbp), %rsi
	movl	-60(%rbp), %edx
	movl	%eax, -244(%rbp)        # 4-byte Spill
	callq	ico_write_int8
	movq	-160(%rbp), %rsi
	movq	%rsi, %rdi
	movl	%eax, -248(%rbp)        # 4-byte Spill
	callq	g_free
	movq	-144(%rbp), %rdi
	callq	g_free
	movq	-152(%rbp), %rdi
	callq	g_free
	movl	$1, %eax
	addq	$256, %rsp              # imm = 0x100
	popq	%rbp
	retq
.Lfunc_end7:
	.size	ico_write_icon, .Lfunc_end7-ico_write_icon
	.cfi_endproc

	.align	16, 0x90
	.type	ico_get_layer_num_colors,@function
ico_get_layer_num_colors:               # @ico_get_layer_num_colors
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
	subq	$208, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -80(%rbp)
	movl	-4(%rbp), %edi
	callq	gimp_drawable_get
	movq	%rax, -136(%rbp)
	movl	-4(%rbp), %edi
	callq	gimp_drawable_width
	movl	%eax, -68(%rbp)
	movl	-4(%rbp), %edi
	callq	gimp_drawable_height
	movl	%eax, -72(%rbp)
	movl	-68(%rbp), %edi
	imull	%eax, %edi
	movl	%edi, -84(%rbp)
	movl	-4(%rbp), %edi
	callq	gimp_drawable_bpp
	movl	%eax, -76(%rbp)
	movl	-84(%rbp), %edi
	imull	%eax, %edi
                                        # kill: RDI<def> EDI<kill>
	movl	$1, %eax
	movl	%eax, %esi
	callq	g_malloc_n
	movq	%rax, -104(%rbp)
	movq	%rax, -96(%rbp)
	movq	-136(%rbp), %rsi
	movl	-68(%rbp), %r8d
	movl	-72(%rbp), %r9d
	movq	%rsp, %rax
	movl	$0, 8(%rax)
	movl	$0, (%rax)
	leaq	-64(%rbp), %rax
	xorl	%ecx, %ecx
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -140(%rbp)        # 4-byte Spill
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_pixel_rgn_init
	movq	-96(%rbp), %rsi
	movl	-68(%rbp), %r8d
	movl	-72(%rbp), %r9d
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movl	-140(%rbp), %edx        # 4-byte Reload
	movl	-140(%rbp), %ecx        # 4-byte Reload
	callq	gimp_pixel_rgn_get_rect
	movq	-136(%rbp), %rdi
	callq	gimp_drawable_detach
	movl	$g_int_hash, %ecx
	movl	%ecx, %edi
	movl	$g_int_equal, %ecx
	movl	%ecx, %esi
	callq	g_hash_table_new
	movq	%rax, -128(%rbp)
	movq	-16(%rbp), %rax
	movl	$0, (%rax)
	movl	-84(%rbp), %ecx
	movl	%ecx, %edi
	movl	$4, %ecx
	movl	%ecx, %esi
	callq	g_malloc_n
	movq	%rax, -120(%rbp)
	movq	%rax, -112(%rbp)
	movl	-76(%rbp), %ecx
	decl	%ecx
	movl	%ecx, %eax
	subl	$3, %ecx
	movq	%rax, -160(%rbp)        # 8-byte Spill
	movl	%ecx, -164(%rbp)        # 4-byte Spill
	ja	.LBB8_23
# BB#24:                                # %entry
	movq	-160(%rbp), %rax        # 8-byte Reload
	movq	.LJTI8_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB8_1:                                # %sw.bb
	jmp	.LBB8_2
.LBB8_2:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-84(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -84(%rbp)
	cmpl	$0, %eax
	je	.LBB8_4
# BB#3:                                 # %while.body
                                        #   in Loop: Header=BB8_2 Depth=1
	movq	-104(%rbp), %rax
	movzbl	(%rax), %ecx
	movq	-120(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-128(%rbp), %rdi
	movq	-120(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	%rax, %rsi
	callq	g_hash_table_insert
	movq	-104(%rbp), %rdx
	addq	$1, %rdx
	movq	%rdx, -104(%rbp)
	movq	-120(%rbp), %rdx
	addq	$4, %rdx
	movq	%rdx, -120(%rbp)
	movl	%eax, -168(%rbp)        # 4-byte Spill
	jmp	.LBB8_2
.LBB8_4:                                # %while.end
	jmp	.LBB8_23
.LBB8_5:                                # %sw.bb.12
	jmp	.LBB8_6
.LBB8_6:                                # %while.cond.13
                                        # =>This Inner Loop Header: Depth=1
	movl	-84(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -84(%rbp)
	cmpl	$0, %eax
	je	.LBB8_11
# BB#7:                                 # %while.body.16
                                        #   in Loop: Header=BB8_6 Depth=1
	movq	-104(%rbp), %rax
	movzbl	1(%rax), %ecx
	shll	$8, %ecx
	movq	-104(%rbp), %rax
	movzbl	(%rax), %edx
	orl	%edx, %ecx
	movq	-120(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-104(%rbp), %rax
	movzbl	1(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB8_10
# BB#8:                                 # %land.lhs.true
                                        #   in Loop: Header=BB8_6 Depth=1
	movq	-104(%rbp), %rax
	movzbl	1(%rax), %ecx
	cmpl	$255, %ecx
	je	.LBB8_10
# BB#9:                                 # %if.then
                                        #   in Loop: Header=BB8_6 Depth=1
	movq	-16(%rbp), %rax
	movl	$1, (%rax)
.LBB8_10:                               # %if.end
                                        #   in Loop: Header=BB8_6 Depth=1
	movq	-128(%rbp), %rdi
	movq	-120(%rbp), %rax
	movq	-120(%rbp), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	g_hash_table_insert
	movq	-104(%rbp), %rcx
	addq	$2, %rcx
	movq	%rcx, -104(%rbp)
	movq	-120(%rbp), %rcx
	addq	$4, %rcx
	movq	%rcx, -120(%rbp)
	movl	%eax, -172(%rbp)        # 4-byte Spill
	jmp	.LBB8_6
.LBB8_11:                               # %while.end.29
	jmp	.LBB8_23
.LBB8_12:                               # %sw.bb.30
	jmp	.LBB8_13
.LBB8_13:                               # %while.cond.31
                                        # =>This Inner Loop Header: Depth=1
	movl	-84(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -84(%rbp)
	cmpl	$0, %eax
	je	.LBB8_15
# BB#14:                                # %while.body.34
                                        #   in Loop: Header=BB8_13 Depth=1
	movq	-104(%rbp), %rax
	movzbl	2(%rax), %ecx
	shll	$16, %ecx
	movq	-104(%rbp), %rax
	movzbl	1(%rax), %edx
	shll	$8, %edx
	orl	%edx, %ecx
	movq	-104(%rbp), %rax
	movzbl	(%rax), %edx
	orl	%edx, %ecx
	movq	-120(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-128(%rbp), %rdi
	movq	-120(%rbp), %rax
	movq	-120(%rbp), %rsi
	movq	%rsi, -184(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	-184(%rbp), %rdx        # 8-byte Reload
	callq	g_hash_table_insert
	movq	-104(%rbp), %rdx
	addq	$3, %rdx
	movq	%rdx, -104(%rbp)
	movq	-120(%rbp), %rdx
	addq	$4, %rdx
	movq	%rdx, -120(%rbp)
	movl	%eax, -188(%rbp)        # 4-byte Spill
	jmp	.LBB8_13
.LBB8_15:                               # %while.end.48
	jmp	.LBB8_23
.LBB8_16:                               # %sw.bb.49
	jmp	.LBB8_17
.LBB8_17:                               # %while.cond.50
                                        # =>This Inner Loop Header: Depth=1
	movl	-84(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -84(%rbp)
	cmpl	$0, %eax
	je	.LBB8_22
# BB#18:                                # %while.body.53
                                        #   in Loop: Header=BB8_17 Depth=1
	movq	-104(%rbp), %rax
	movzbl	3(%rax), %ecx
	shll	$24, %ecx
	movq	-104(%rbp), %rax
	movzbl	2(%rax), %edx
	shll	$16, %edx
	orl	%edx, %ecx
	movq	-104(%rbp), %rax
	movzbl	1(%rax), %edx
	shll	$8, %edx
	orl	%edx, %ecx
	movq	-104(%rbp), %rax
	movzbl	(%rax), %edx
	orl	%edx, %ecx
	movq	-120(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-104(%rbp), %rax
	movzbl	3(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB8_21
# BB#19:                                # %land.lhs.true.72
                                        #   in Loop: Header=BB8_17 Depth=1
	movq	-104(%rbp), %rax
	movzbl	3(%rax), %ecx
	cmpl	$255, %ecx
	je	.LBB8_21
# BB#20:                                # %if.then.77
                                        #   in Loop: Header=BB8_17 Depth=1
	movq	-16(%rbp), %rax
	movl	$1, (%rax)
.LBB8_21:                               # %if.end.78
                                        #   in Loop: Header=BB8_17 Depth=1
	movq	-128(%rbp), %rdi
	movq	-120(%rbp), %rax
	movq	-120(%rbp), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	g_hash_table_insert
	movq	-104(%rbp), %rcx
	addq	$4, %rcx
	movq	%rcx, -104(%rbp)
	movq	-120(%rbp), %rcx
	addq	$4, %rcx
	movq	%rcx, -120(%rbp)
	movl	%eax, -192(%rbp)        # 4-byte Spill
	jmp	.LBB8_17
.LBB8_22:                               # %while.end.82
	jmp	.LBB8_23
.LBB8_23:                               # %sw.epilog
	movq	-128(%rbp), %rdi
	callq	g_hash_table_size
	movl	%eax, -80(%rbp)
	movq	-128(%rbp), %rdi
	callq	g_hash_table_destroy
	movq	-112(%rbp), %rdi
	callq	g_free
	movq	-96(%rbp), %rdi
	callq	g_free
	movl	-80(%rbp), %eax
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	ico_get_layer_num_colors, .Lfunc_end8-ico_get_layer_num_colors
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI8_0:
	.quad	.LBB8_1
	.quad	.LBB8_5
	.quad	.LBB8_12
	.quad	.LBB8_16

	.text
	.align	16, 0x90
	.type	ico_write_int8,@function
ico_write_int8:                         # @ico_write_int8
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	-20(%rbp), %edx
	movl	%edx, -24(%rbp)
.LBB9_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -20(%rbp)
	jle	.LBB9_5
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	$1, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	movslq	-20(%rbp), %rdx
	movq	-8(%rbp), %rcx
	callq	fwrite
	movl	%eax, %r8d
	movl	%r8d, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jg	.LBB9_4
# BB#3:                                 # %if.then
	jmp	.LBB9_5
.LBB9_4:                                # %if.end
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-28(%rbp), %eax
	movl	-20(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -20(%rbp)
	movl	-28(%rbp), %eax
	movq	-16(%rbp), %rdx
	movslq	%eax, %rsi
	addq	%rsi, %rdx
	movq	%rdx, -16(%rbp)
	jmp	.LBB9_1
.LBB9_5:                                # %while.end
	movl	-24(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	ico_write_int8, .Lfunc_end9-ico_write_int8
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI10_0:
	.quad	4636737291354636288     # double 100
	.text
	.align	16, 0x90
	.type	ico_image_get_reduced_buf,@function
ico_image_get_reduced_buf:              # @ico_image_get_reduced_buf
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp30:
	.cfi_def_cfa_offset 16
.Ltmp31:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp32:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$392, %rsp              # imm = 0x188
.Ltmp33:
	.cfi_offset %rbx, -24
	movl	%edi, -12(%rbp)
	movl	%esi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	$0, -168(%rbp)
	movl	-12(%rbp), %edi
	callq	gimp_drawable_get
	movq	%rax, -176(%rbp)
	movl	-12(%rbp), %edi
	callq	gimp_drawable_width
	movl	%eax, -148(%rbp)
	movl	-12(%rbp), %edi
	callq	gimp_drawable_height
	movl	$1, %esi
                                        # kill: RSI<def> ESI<kill>
	movl	%eax, -152(%rbp)
	movq	-24(%rbp), %rcx
	movl	$0, (%rcx)
	movl	-148(%rbp), %eax
	imull	-152(%rbp), %eax
	shll	$2, %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	movq	%rax, -160(%rbp)
	cmpl	$8, -16(%rbp)
	jle	.LBB10_3
# BB#1:                                 # %lor.lhs.false
	cmpl	$24, -16(%rbp)
	je	.LBB10_3
# BB#2:                                 # %lor.lhs.false.8
	movq	-176(%rbp), %rax
	cmpl	$4, 12(%rax)
	je	.LBB10_24
.LBB10_3:                               # %if.then
	movl	-12(%rbp), %edi
	callq	gimp_item_get_image
	movl	%eax, -180(%rbp)
	movl	-12(%rbp), %edi
	callq	gimp_drawable_width
	movl	-12(%rbp), %edi
	movl	%eax, -224(%rbp)        # 4-byte Spill
	callq	gimp_drawable_height
	movl	-180(%rbp), %edi
	movl	%eax, -228(%rbp)        # 4-byte Spill
	callq	gimp_image_base_type
	movl	-224(%rbp), %edi        # 4-byte Reload
	movl	-228(%rbp), %esi        # 4-byte Reload
	movl	%eax, %edx
	callq	gimp_image_new
	movl	%eax, -140(%rbp)
	movl	-140(%rbp), %edi
	callq	gimp_image_undo_disable
	movl	-12(%rbp), %edi
	movl	%eax, -232(%rbp)        # 4-byte Spill
	callq	gimp_drawable_is_indexed
	cmpl	$0, %eax
	je	.LBB10_5
# BB#4:                                 # %if.then.19
	leaq	-204(%rbp), %rsi
	movl	-180(%rbp), %edi
	callq	gimp_image_get_colormap
	movq	%rax, -200(%rbp)
	movl	-140(%rbp), %edi
	movq	-200(%rbp), %rsi
	movl	-204(%rbp), %edx
	callq	gimp_image_set_colormap
	movq	-200(%rbp), %rdi
	movl	%eax, -236(%rbp)        # 4-byte Spill
	callq	g_free
.LBB10_5:                               # %if.end
	movl	-140(%rbp), %edi
	movl	-148(%rbp), %edx
	movl	-152(%rbp), %ecx
	movl	-12(%rbp), %eax
	movl	%edi, -240(%rbp)        # 4-byte Spill
	movl	%eax, %edi
	movl	%ecx, -244(%rbp)        # 4-byte Spill
	movl	%edx, -248(%rbp)        # 4-byte Spill
	callq	gimp_drawable_type
	movabsq	$.L.str.5, %rsi
	movsd	.LCPI10_0, %xmm0        # xmm0 = mem[0],zero
	xorl	%r9d, %r9d
	movl	-240(%rbp), %edi        # 4-byte Reload
	movl	-248(%rbp), %edx        # 4-byte Reload
	movl	-244(%rbp), %ecx        # 4-byte Reload
	movl	%eax, %r8d
	callq	gimp_layer_new
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	xorl	%ecx, %ecx
	movl	%eax, -144(%rbp)
	movl	-140(%rbp), %edi
	movl	-144(%rbp), %esi
	callq	gimp_image_insert_layer
	movl	-144(%rbp), %edi
	movl	%eax, -252(%rbp)        # 4-byte Spill
	callq	gimp_drawable_get
	leaq	-88(%rbp), %rdi
	xorl	%ecx, %ecx
	movq	%rax, -192(%rbp)
	movq	-176(%rbp), %rsi
	movl	-148(%rbp), %r8d
	movl	-152(%rbp), %r9d
	movl	%ecx, %edx
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	leaq	-136(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	-192(%rbp), %rsi
	movl	-148(%rbp), %r8d
	movl	-152(%rbp), %r9d
	movl	%edx, -256(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	$1, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	leaq	-88(%rbp), %rdi
	xorl	%ecx, %ecx
	movq	-160(%rbp), %rsi
	movl	-148(%rbp), %r8d
	movl	-152(%rbp), %r9d
	movl	%ecx, %edx
	callq	gimp_pixel_rgn_get_rect
	leaq	-136(%rbp), %rdi
	xorl	%ecx, %ecx
	movq	-160(%rbp), %rsi
	movl	-148(%rbp), %r8d
	movl	-152(%rbp), %r9d
	movl	%ecx, %edx
	callq	gimp_pixel_rgn_set_rect
	movq	-192(%rbp), %rdi
	callq	gimp_drawable_detach
	movl	-144(%rbp), %edi
	callq	gimp_drawable_is_rgb
	cmpl	$0, %eax
	jne	.LBB10_7
# BB#6:                                 # %if.then.32
	movl	-140(%rbp), %edi
	callq	gimp_image_convert_rgb
	movl	%eax, -260(%rbp)        # 4-byte Spill
.LBB10_7:                               # %if.end.34
	cmpl	$8, -16(%rbp)
	jg	.LBB10_20
# BB#8:                                 # %if.then.37
	movl	$1, %eax
	xorl	%ecx, %ecx
	movabsq	$.L.str.6, %rdx
	movl	-140(%rbp), %edi
	movl	-16(%rbp), %esi
	movl	%ecx, -264(%rbp)        # 4-byte Spill
	movl	%esi, %ecx
                                        # kill: CL<def> ECX<kill>
	movl	%eax, %esi
	shll	%cl, %esi
	movl	%esi, -268(%rbp)        # 4-byte Spill
	movl	%eax, %esi
	movl	-264(%rbp), %r8d        # 4-byte Reload
	movq	%rdx, -280(%rbp)        # 8-byte Spill
	movl	%r8d, %edx
	movl	-268(%rbp), %ecx        # 4-byte Reload
	movl	%eax, %r8d
	movl	-264(%rbp), %r9d        # 4-byte Reload
	movq	-280(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	callq	gimp_image_convert_indexed
	movl	-140(%rbp), %edi
	movq	-24(%rbp), %rsi
	movl	%eax, -284(%rbp)        # 4-byte Spill
	callq	gimp_image_get_colormap
	movl	$1, %ecx
	movq	%rax, -168(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %edx
	movl	-16(%rbp), %edi
	movl	%ecx, -288(%rbp)        # 4-byte Spill
	movl	%edi, %ecx
                                        # kill: CL<def> ECX<kill>
	movl	-288(%rbp), %edi        # 4-byte Reload
	shll	%cl, %edi
	cmpl	%edi, %edx
	jne	.LBB10_19
# BB#9:                                 # %land.lhs.true
	movq	-168(%rbp), %rdi
	movq	-24(%rbp), %rax
	movl	(%rax), %esi
	callq	ico_cmap_contains_black
	cmpl	$0, %eax
	jne	.LBB10_19
# BB#10:                                # %if.then.45
	movl	-12(%rbp), %edi
	callq	gimp_drawable_is_indexed
	cmpl	$0, %eax
	je	.LBB10_12
# BB#11:                                # %if.then.48
	movq	-168(%rbp), %rdi
	callq	g_free
	movl	-180(%rbp), %edi
	movq	-24(%rbp), %rsi
	callq	gimp_image_get_colormap
	movq	%rax, -168(%rbp)
	movl	-140(%rbp), %edi
	movq	-168(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	(%rax), %edx
	callq	gimp_image_set_colormap
	movl	%eax, -292(%rbp)        # 4-byte Spill
	jmp	.LBB10_16
.LBB10_12:                              # %if.else
	movl	-12(%rbp), %edi
	callq	gimp_drawable_is_gray
	cmpl	$0, %eax
	je	.LBB10_14
# BB#13:                                # %if.then.53
	movl	-140(%rbp), %edi
	callq	gimp_image_convert_grayscale
	movl	%eax, -296(%rbp)        # 4-byte Spill
	jmp	.LBB10_15
.LBB10_14:                              # %if.else.55
	movl	-140(%rbp), %edi
	callq	gimp_image_convert_rgb
	movl	%eax, -300(%rbp)        # 4-byte Spill
.LBB10_15:                              # %if.end.57
	jmp	.LBB10_16
.LBB10_16:                              # %if.end.58
	movl	-144(%rbp), %edi
	callq	gimp_drawable_get
	leaq	-136(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	%rax, -192(%rbp)
	movq	-192(%rbp), %rsi
	movl	-148(%rbp), %r8d
	movl	-152(%rbp), %r9d
	movl	%edx, -304(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	$1, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	leaq	-136(%rbp), %rdi
	xorl	%ecx, %ecx
	movq	-160(%rbp), %rsi
	movl	-148(%rbp), %r8d
	movl	-152(%rbp), %r9d
	movl	%ecx, %edx
	callq	gimp_pixel_rgn_set_rect
	movq	-192(%rbp), %rdi
	callq	gimp_drawable_detach
	movl	-12(%rbp), %edi
	callq	gimp_drawable_is_rgb
	cmpl	$0, %eax
	jne	.LBB10_18
# BB#17:                                # %if.then.62
	movl	-140(%rbp), %edi
	callq	gimp_image_convert_rgb
	movl	%eax, -308(%rbp)        # 4-byte Spill
.LBB10_18:                              # %if.end.64
	movl	$1, %eax
	xorl	%ecx, %ecx
	movabsq	$.L.str.6, %rdx
	movl	-140(%rbp), %edi
	movl	-16(%rbp), %esi
	movl	%ecx, -312(%rbp)        # 4-byte Spill
	movl	%esi, %ecx
                                        # kill: CL<def> ECX<kill>
	movl	%eax, %esi
	shll	%cl, %esi
	subl	$1, %esi
	movl	%esi, -316(%rbp)        # 4-byte Spill
	movl	%eax, %esi
	movl	-312(%rbp), %r8d        # 4-byte Reload
	movq	%rdx, -328(%rbp)        # 8-byte Spill
	movl	%r8d, %edx
	movl	-316(%rbp), %ecx        # 4-byte Reload
	movl	%eax, %r8d
	movl	-312(%rbp), %r9d        # 4-byte Reload
	movq	-328(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	callq	gimp_image_convert_indexed
	movq	-168(%rbp), %rdi
	movl	%eax, -332(%rbp)        # 4-byte Spill
	callq	g_free
	movl	-140(%rbp), %edi
	movq	-24(%rbp), %rsi
	callq	gimp_image_get_colormap
	movq	%rax, -168(%rbp)
.LBB10_19:                              # %if.end.68
	movl	-140(%rbp), %edi
	callq	gimp_image_convert_rgb
	movl	%eax, -336(%rbp)        # 4-byte Spill
	jmp	.LBB10_23
.LBB10_20:                              # %if.else.70
	cmpl	$24, -16(%rbp)
	jne	.LBB10_22
# BB#21:                                # %if.then.73
	movabsq	$.L.str.7, %rdi
	leaq	-220(%rbp), %rsi
	xorl	%edx, %edx
	movl	$1, %ecx
	movl	$13, %r8d
	movl	$16, %eax
	movl	$127, %r9d
	movl	$22, %r10d
	movl	-140(%rbp), %r11d
	movl	-144(%rbp), %ebx
	movl	%r9d, -340(%rbp)        # 4-byte Spill
	movl	%r11d, %r9d
	movl	$16, (%rsp)
	movl	%ebx, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$127, 24(%rsp)
	movl	$22, 32(%rsp)
	movl	%eax, -344(%rbp)        # 4-byte Spill
	movb	$0, %al
	movl	%r10d, -348(%rbp)       # 4-byte Spill
	callq	gimp_run_procedure
	movq	%rax, -216(%rbp)
	movq	-216(%rbp), %rdi
	movl	-220(%rbp), %esi
	callq	gimp_destroy_params
.LBB10_22:                              # %if.end.77
	jmp	.LBB10_23
.LBB10_23:                              # %if.end.78
	movl	-144(%rbp), %edi
	callq	gimp_layer_add_alpha
	movl	-144(%rbp), %edi
	movl	%eax, -352(%rbp)        # 4-byte Spill
	callq	gimp_drawable_get
	leaq	-88(%rbp), %rdi
	xorl	%ecx, %ecx
	movq	%rax, -192(%rbp)
	movq	-192(%rbp), %rsi
	movl	-148(%rbp), %r8d
	movl	-152(%rbp), %r9d
	movl	%ecx, %edx
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	leaq	-88(%rbp), %rdi
	xorl	%ecx, %ecx
	movq	-160(%rbp), %rsi
	movl	-148(%rbp), %r8d
	movl	-152(%rbp), %r9d
	movl	%ecx, %edx
	callq	gimp_pixel_rgn_get_rect
	movq	-192(%rbp), %rdi
	callq	gimp_drawable_detach
	movl	-140(%rbp), %edi
	callq	gimp_image_delete
	movl	%eax, -356(%rbp)        # 4-byte Spill
	jmp	.LBB10_25
.LBB10_24:                              # %if.else.82
	leaq	-88(%rbp), %rdi
	xorl	%eax, %eax
	movq	-176(%rbp), %rsi
	movl	-148(%rbp), %r8d
	movl	-152(%rbp), %r9d
	movl	%eax, %edx
	movl	%eax, %ecx
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	leaq	-88(%rbp), %rdi
	xorl	%eax, %eax
	movq	-160(%rbp), %rsi
	movl	-148(%rbp), %r8d
	movl	-152(%rbp), %r9d
	movl	%eax, %edx
	movl	%eax, %ecx
	callq	gimp_pixel_rgn_get_rect
.LBB10_25:                              # %if.end.83
	movq	-176(%rbp), %rdi
	callq	gimp_drawable_detach
	movq	-168(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	%rdi, (%rax)
	movq	-160(%rbp), %rax
	movq	-40(%rbp), %rdi
	movq	%rax, (%rdi)
	addq	$392, %rsp              # imm = 0x188
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end10:
	.size	ico_image_get_reduced_buf, .Lfunc_end10-ico_image_get_reduced_buf
	.cfi_endproc

	.align	16, 0x90
	.type	ico_create_palette,@function
ico_create_palette:                     # @ico_create_palette
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp34:
	.cfi_def_cfa_offset 16
.Ltmp35:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp36:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movq	%rcx, -32(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	jne	.LBB11_3
# BB#2:                                 # %lor.lhs.false
	cmpl	$0, -24(%rbp)
	jne	.LBB11_4
.LBB11_3:                               # %if.then
	jmp	.LBB11_5
.LBB11_4:                               # %if.else
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L__func__.ico_create_palette, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB11_25
.LBB11_5:                               # %if.end
	jmp	.LBB11_6
.LBB11_6:                               # %do.end
	jmp	.LBB11_7
.LBB11_7:                               # %do.body.2
	movl	-24(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jg	.LBB11_9
# BB#8:                                 # %if.then.4
	jmp	.LBB11_10
.LBB11_9:                               # %if.else.5
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L__func__.ico_create_palette, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB11_25
.LBB11_10:                              # %if.end.6
	jmp	.LBB11_11
.LBB11_11:                              # %do.end.7
	movl	$1, %eax
	movl	%eax, %esi
	movl	-20(%rbp), %eax
	shll	$2, %eax
	movslq	%eax, %rdi
	callq	g_malloc0_n
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movl	$-1, (%rax)
	movl	$0, -44(%rbp)
.LBB11_12:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jge	.LBB11_19
# BB#13:                                # %for.body
                                        #   in Loop: Header=BB11_12 Depth=1
	imull	$3, -44(%rbp), %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movl	-44(%rbp), %eax
	shll	$2, %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rdx
	movb	%sil, (%rdx,%rcx)
	imull	$3, -44(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movl	-44(%rbp), %eax
	shll	$2, %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rdx
	movb	%sil, (%rdx,%rcx)
	imull	$3, -44(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movl	-44(%rbp), %eax
	shll	$2, %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rdx
	movb	%sil, (%rdx,%rcx)
	imull	$3, -44(%rbp), %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cmpl	$0, %eax
	jne	.LBB11_17
# BB#14:                                # %land.lhs.true
                                        #   in Loop: Header=BB11_12 Depth=1
	imull	$3, -44(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cmpl	$0, %eax
	jne	.LBB11_17
# BB#15:                                # %land.lhs.true.42
                                        #   in Loop: Header=BB11_12 Depth=1
	imull	$3, -44(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cmpl	$0, %eax
	jne	.LBB11_17
# BB#16:                                # %if.then.50
                                        #   in Loop: Header=BB11_12 Depth=1
	movl	-44(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB11_17:                              # %if.end.51
                                        #   in Loop: Header=BB11_12 Depth=1
	jmp	.LBB11_18
.LBB11_18:                              # %for.inc
                                        #   in Loop: Header=BB11_12 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB11_12
.LBB11_19:                              # %for.end
	movq	-32(%rbp), %rax
	cmpl	$-1, (%rax)
	jne	.LBB11_24
# BB#20:                                # %if.then.54
	movl	-24(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jne	.LBB11_22
# BB#21:                                # %if.then.57
	movl	-20(%rbp), %eax
	subl	$1, %eax
	movq	-32(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	-20(%rbp), %eax
	subl	$1, %eax
	shll	$2, %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rdx
	movb	$0, (%rdx,%rcx)
	movl	-20(%rbp), %eax
	subl	$1, %eax
	shll	$2, %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rdx
	movb	$0, (%rdx,%rcx)
	movl	-20(%rbp), %eax
	subl	$1, %eax
	shll	$2, %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rdx
	movb	$0, (%rdx,%rcx)
	jmp	.LBB11_23
.LBB11_22:                              # %if.else.72
	movl	-24(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB11_23:                              # %if.end.73
	jmp	.LBB11_24
.LBB11_24:                              # %if.end.74
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB11_25:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	ico_create_palette, .Lfunc_end11-ico_create_palette
	.cfi_endproc

	.align	16, 0x90
	.type	ico_create_color_to_palette_map,@function
ico_create_color_to_palette_map:        # @ico_create_color_to_palette_map
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
	subq	$80, %rsp
	movabsq	$g_int_hash, %rax
	movabsq	$g_int_equal, %rcx
	movabsq	$g_free, %rdx
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rax, %rdi
	movq	%rcx, %rsi
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	movq	-64(%rbp), %rcx         # 8-byte Reload
	callq	g_hash_table_new_full
	movq	%rax, -24(%rbp)
	movl	$0, -28(%rbp)
.LBB12_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB12_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB12_1 Depth=1
	movl	$1, %eax
	movl	%eax, %edi
	movl	$4, %eax
	movl	%eax, %esi
	movslq	-28(%rbp), %rcx
	shlq	$2, %rcx
	addq	-8(%rbp), %rcx
	movq	%rcx, -40(%rbp)
	callq	g_malloc_n
	movl	$1, %edx
	movl	%edx, %edi
	movl	$4, %edx
	movl	%edx, %esi
	movq	%rax, -48(%rbp)
	callq	g_malloc_n
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	movzbl	2(%rax), %edx
	shll	$16, %edx
	movq	-40(%rbp), %rax
	movzbl	1(%rax), %r8d
	shll	$8, %r8d
	orl	%r8d, %edx
	movq	-40(%rbp), %rax
	movzbl	(%rax), %r8d
	orl	%r8d, %edx
	movq	-48(%rbp), %rax
	movl	%edx, (%rax)
	movl	-28(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, (%rax)
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	g_hash_table_insert
	movl	%eax, -68(%rbp)         # 4-byte Spill
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB12_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB12_1
.LBB12_4:                               # %for.end
	movq	-24(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	ico_create_color_to_palette_map, .Lfunc_end12-ico_create_color_to_palette_map
	.cfi_endproc

	.align	16, 0x90
	.type	ico_set_bit_in_data,@function
ico_set_bit_in_data:                    # @ico_set_bit_in_data
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
	movl	$32, %eax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	-12(%rbp), %ecx
	movl	%eax, -36(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-36(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB13_2
# BB#1:                                 # %cond.true
	movl	$32, %eax
	movl	-12(%rbp), %ecx
	movl	%eax, -40(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-40(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	movl	%eax, -44(%rbp)         # 4-byte Spill
	jmp	.LBB13_3
.LBB13_2:                               # %cond.false
	movl	$32, %eax
	movl	-12(%rbp), %ecx
	movl	%eax, -48(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-48(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	addl	$1, %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
.LBB13_3:                               # %cond.end
	movl	-44(%rbp), %eax         # 4-byte Reload
	movl	$8, %ecx
	movl	$7, %edx
	movl	%eax, -28(%rbp)
	movl	-16(%rbp), %eax
	movl	%edx, -52(%rbp)         # 4-byte Spill
	cltd
	idivl	-12(%rbp)
	movl	%eax, -24(%rbp)
	movl	-16(%rbp), %eax
	cltd
	idivl	-12(%rbp)
	movl	%edx, -32(%rbp)
	movl	-20(%rbp), %edx
	andl	$1, %edx
	movl	%edx, -20(%rbp)
	movl	-20(%rbp), %edx
	movl	-32(%rbp), %esi
	movl	%esi, %eax
	movl	%edx, -56(%rbp)         # 4-byte Spill
	cltd
	idivl	%ecx
	movl	-52(%rbp), %esi         # 4-byte Reload
	subl	%edx, %esi
	movl	%ecx, -60(%rbp)         # 4-byte Spill
	movl	%esi, %ecx
                                        # kill: CL<def> ECX<kill>
	movl	-56(%rbp), %edx         # 4-byte Reload
	shll	%cl, %edx
	movl	-24(%rbp), %esi
	imull	-28(%rbp), %esi
	shll	$2, %esi
	movl	-32(%rbp), %edi
	movl	%edi, %eax
	movl	%edx, -64(%rbp)         # 4-byte Spill
	cltd
	movl	-60(%rbp), %edi         # 4-byte Reload
	idivl	%edi
	addl	%eax, %esi
	movslq	%esi, %r8
	movq	-8(%rbp), %r9
	movzbl	(%r9,%r8), %eax
	movl	-64(%rbp), %esi         # 4-byte Reload
	orl	%esi, %eax
	movb	%al, %cl
	movb	%cl, (%r9,%r8)
	popq	%rbp
	retq
.Lfunc_end13:
	.size	ico_set_bit_in_data, .Lfunc_end13-ico_set_bit_in_data
	.cfi_endproc

	.align	16, 0x90
	.type	ico_get_palette_index,@function
ico_get_palette_index:                  # @ico_get_palette_index
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp43:
	.cfi_def_cfa_offset 16
.Ltmp44:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp45:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	leaq	-32(%rbp), %rax
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	$0, -32(%rbp)
	movl	-20(%rbp), %ecx
	shll	$16, %ecx
	movl	-24(%rbp), %edx
	shll	$8, %edx
	orl	%edx, %ecx
	orl	-28(%rbp), %ecx
	movl	%ecx, -32(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rax, %rsi
	callq	g_hash_table_lookup
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB14_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB14_3
.LBB14_2:                               # %if.end
	movq	-40(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB14_3:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	ico_get_palette_index, .Lfunc_end14-ico_get_palette_index
	.cfi_endproc

	.align	16, 0x90
	.type	ico_set_nibble_in_data,@function
ico_set_nibble_in_data:                 # @ico_set_nibble_in_data
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp46:
	.cfi_def_cfa_offset 16
.Ltmp47:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp48:
	.cfi_def_cfa_register %rbp
	movl	$8, %eax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	-12(%rbp), %ecx
	movl	%eax, -36(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-36(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB15_2
# BB#1:                                 # %cond.true
	movl	$8, %eax
	movl	-12(%rbp), %ecx
	movl	%eax, -40(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-40(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	movl	%eax, -44(%rbp)         # 4-byte Spill
	jmp	.LBB15_3
.LBB15_2:                               # %cond.false
	movl	$8, %eax
	movl	-12(%rbp), %ecx
	movl	%eax, -48(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-48(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	addl	$1, %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
.LBB15_3:                               # %cond.end
	movl	-44(%rbp), %eax         # 4-byte Reload
	movl	$2, %ecx
	movl	$1, %edx
	movl	%eax, -28(%rbp)
	movl	-16(%rbp), %eax
	movl	%edx, -52(%rbp)         # 4-byte Spill
	cltd
	idivl	-12(%rbp)
	movl	%eax, -24(%rbp)
	movl	-16(%rbp), %eax
	cltd
	idivl	-12(%rbp)
	movl	%edx, -32(%rbp)
	movl	-20(%rbp), %edx
	andl	$15, %edx
	movl	%edx, -20(%rbp)
	movl	-20(%rbp), %edx
	movl	-32(%rbp), %esi
	movl	%esi, %eax
	movl	%edx, -56(%rbp)         # 4-byte Spill
	cltd
	idivl	%ecx
	movl	-52(%rbp), %esi         # 4-byte Reload
	subl	%edx, %esi
	shll	$2, %esi
	movl	%ecx, -60(%rbp)         # 4-byte Spill
	movl	%esi, %ecx
                                        # kill: CL<def> ECX<kill>
	movl	-56(%rbp), %edx         # 4-byte Reload
	shll	%cl, %edx
	movl	-24(%rbp), %esi
	imull	-28(%rbp), %esi
	shll	$2, %esi
	movl	-32(%rbp), %edi
	movl	%edi, %eax
	movl	%edx, -64(%rbp)         # 4-byte Spill
	cltd
	movl	-60(%rbp), %edi         # 4-byte Reload
	idivl	%edi
	addl	%eax, %esi
	movslq	%esi, %r8
	movq	-8(%rbp), %r9
	movzbl	(%r9,%r8), %eax
	movl	-64(%rbp), %esi         # 4-byte Reload
	orl	%esi, %eax
	movb	%al, %cl
	movb	%cl, (%r9,%r8)
	popq	%rbp
	retq
.Lfunc_end15:
	.size	ico_set_nibble_in_data, .Lfunc_end15-ico_set_nibble_in_data
	.cfi_endproc

	.align	16, 0x90
	.type	ico_set_byte_in_data,@function
ico_set_byte_in_data:                   # @ico_set_byte_in_data
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp49:
	.cfi_def_cfa_offset 16
.Ltmp50:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp51:
	.cfi_def_cfa_register %rbp
	movl	$4, %eax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	-12(%rbp), %ecx
	movl	%eax, -40(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-40(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB16_2
# BB#1:                                 # %cond.true
	movl	$4, %eax
	movl	-12(%rbp), %ecx
	movl	%eax, -44(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-44(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	movl	%eax, -48(%rbp)         # 4-byte Spill
	jmp	.LBB16_3
.LBB16_2:                               # %cond.false
	movl	$4, %eax
	movl	-12(%rbp), %ecx
	movl	%eax, -52(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-52(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	addl	$1, %eax
	movl	%eax, -48(%rbp)         # 4-byte Spill
.LBB16_3:                               # %cond.end
	movl	-48(%rbp), %eax         # 4-byte Reload
	movl	%eax, -28(%rbp)
	movl	-16(%rbp), %eax
	cltd
	idivl	-12(%rbp)
	movl	%eax, -24(%rbp)
	movl	-16(%rbp), %eax
	cltd
	idivl	-12(%rbp)
	movl	%edx, -32(%rbp)
	movl	-20(%rbp), %edx
	andl	$255, %edx
	movl	%edx, -36(%rbp)
	movl	-36(%rbp), %edx
	movb	%dl, %cl
	movl	-24(%rbp), %edx
	imull	-28(%rbp), %edx
	shll	$2, %edx
	addl	-32(%rbp), %edx
	movslq	%edx, %rsi
	movq	-8(%rbp), %rdi
	movb	%cl, (%rdi,%rsi)
	popq	%rbp
	retq
.Lfunc_end16:
	.size	ico_set_byte_in_data, .Lfunc_end16-ico_set_byte_in_data
	.cfi_endproc

	.align	16, 0x90
	.type	ico_write_int32,@function
ico_write_int32:                        # @ico_write_int32
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp52:
	.cfi_def_cfa_offset 16
.Ltmp53:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp54:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	-20(%rbp), %edx
	movl	%edx, -24(%rbp)
	cmpl	$0, -20(%rbp)
	jle	.LBB17_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	-20(%rbp), %ecx
	shll	$2, %ecx
	movq	%rax, %rsi
	movl	%ecx, %edx
	callq	ico_write_int8
	movl	%eax, -28(%rbp)         # 4-byte Spill
.LBB17_2:                               # %if.end
	movl	-24(%rbp), %eax
	shll	$2, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	ico_write_int32, .Lfunc_end17-ico_write_int32
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Saving '%s'"
	.size	.L.str, 12

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"wb"
	.size	.L.str.1, 3

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Could not open '%s' for writing: %s"
	.size	.L.str.2, 36

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"file-ico"
	.size	.L.str.3, 9

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"1.5.13"
	.size	.L.str.4, 7

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"tmp"
	.size	.L.str.5, 4

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"dummy"
	.size	.L.str.6, 6

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"plug-in-threshold-alpha"
	.size	.L.str.7, 24

	.type	.L__func__.ico_create_palette,@object # @__func__.ico_create_palette
.L__func__.ico_create_palette:
	.asciz	"ico_create_palette"
	.size	.L__func__.ico_create_palette, 19

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"cmap != NULL || num_colors_used == 0"
	.size	.L.str.8, 37

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"num_colors_used <= num_colors"
	.size	.L.str.9, 30


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
