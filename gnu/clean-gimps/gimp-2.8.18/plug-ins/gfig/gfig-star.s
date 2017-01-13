	.text
	.file	"gfig-star.bc"
	.globl	tool_options_star
	.align	16, 0x90
	.type	tool_options_star,@function
tool_options_star:                      # @tool_options_star
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
	subq	$32, %rsp
	movabsq	$.L.str, %rax
	movq	%rdi, -8(%rbp)
	movq	%rax, %rdi
	callq	gettext
	movabsq	$star_num_sides, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movl	$3, %ecx
	movl	$200, %r8d
	movq	%rax, %rdi
	callq	num_sides_widget
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_notebook_append_page
	movl	%eax, -28(%rbp)         # 4-byte Spill
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	tool_options_star, .Lfunc_end0-tool_options_star
	.cfi_endproc

	.globl	d_star_object_class_init
	.align	16, 0x90
	.type	d_star_object_class_init,@function
d_star_object_class_init:               # @d_star_object_class_init
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
	movabsq	$d_update_star, %rax
	movabsq	$d_copy_star, %rcx
	movabsq	$d_paint_star, %rdx
	movabsq	$d_draw_star, %rsi
	movabsq	$.L.str.1, %rdi
	movabsq	$dobj_class, %r8
	addq	$336, %r8               # imm = 0x150
	movq	%r8, -8(%rbp)
	movq	-8(%rbp), %r8
	movl	$7, (%r8)
	movq	-8(%rbp), %r8
	movq	%rdi, 8(%r8)
	movq	-8(%rbp), %rdi
	movq	%rsi, 16(%rdi)
	movq	-8(%rbp), %rsi
	movq	%rdx, 24(%rsi)
	movq	-8(%rbp), %rdx
	movq	%rcx, 32(%rdx)
	movq	-8(%rbp), %rcx
	movq	%rax, 40(%rcx)
	popq	%rbp
	retq
.Lfunc_end1:
	.size	d_star_object_class_init, .Lfunc_end1-d_star_object_class_init
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4618760256179416344     # double 6.2831853071795862
	.text
	.align	16, 0x90
	.type	d_draw_star,@function
d_draw_star:                            # @d_draw_star
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
	subq	$208, %rsp
	xorl	%eax, %eax
	movl	$8, %ecx
	movl	%ecx, %edx
	leaq	-112(%rbp), %r8
	leaq	-104(%rbp), %r9
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%r9, %rdi
	movl	%eax, %esi
	movq	%rdx, -152(%rbp)        # 8-byte Spill
	movl	%eax, -156(%rbp)        # 4-byte Spill
	movq	%r8, -168(%rbp)         # 8-byte Spill
	callq	memset
	movq	-168(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, %rdi
	movl	-156(%rbp), %esi        # 4-byte Reload
	movq	-152(%rbp), %rdx        # 8-byte Reload
	callq	memset
	movl	$0, -116(%rbp)
	movq	-8(%rbp), %rdx
	movq	24(%rdx), %rdx
	movq	%rdx, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB2_2
# BB#1:                                 # %if.then
	jmp	.LBB2_23
.LBB2_2:                                # %if.end
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movq	-8(%rbp), %rcx
	movq	gfig_context, %rdx
	cmpq	24(%rdx), %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %esi
	movq	-16(%rbp), %rdx
	movq	%rax, %rdi
	callq	draw_sqr
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB2_4
# BB#3:                                 # %if.then.2
	jmp	.LBB2_23
.LBB2_4:                                # %if.end.3
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB2_6
# BB#5:                                 # %if.then.6
	jmp	.LBB2_23
.LBB2_6:                                # %if.end.7
	movq	-8(%rbp), %rax
	cmpq	obj_creating, %rax
	jne	.LBB2_8
# BB#7:                                 # %if.then.10
	movl	$1, %esi
	movq	-32(%rbp), %rax
	addq	$8, %rax
	movq	-16(%rbp), %rdx
	movq	%rax, %rdi
	callq	draw_circle
	movl	$1, %esi
	movq	-40(%rbp), %rax
	addq	$8, %rax
	movq	-16(%rbp), %rdx
	movq	%rax, %rdi
	callq	draw_circle
	jmp	.LBB2_9
.LBB2_8:                                # %if.else
	movq	-32(%rbp), %rax
	addq	$8, %rax
	movq	-8(%rbp), %rcx
	movq	gfig_context, %rdx
	cmpq	24(%rdx), %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %esi
	movq	-16(%rbp), %rdx
	movq	%rax, %rdi
	callq	draw_sqr
	movq	-40(%rbp), %rax
	addq	$8, %rax
	movq	-8(%rbp), %rcx
	movq	gfig_context, %rdx
	cmpq	24(%rdx), %rcx
	sete	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %esi
	movq	-16(%rbp), %rdx
	movq	%rax, %rdi
	callq	draw_sqr
.LBB2_9:                                # %if.end.21
	movq	-32(%rbp), %rax
	movl	8(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	8(%rax), %edx
	subl	%edx, %ecx
	movw	%cx, %si
	movw	%si, -42(%rbp)
	movq	-32(%rbp), %rax
	movl	12(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	12(%rax), %edx
	subl	%edx, %ecx
	movw	%cx, %si
	movw	%si, -44(%rbp)
	movswl	-42(%rbp), %ecx
	imull	%ecx, %ecx
	movswl	-44(%rbp), %edx
	imull	%edx, %edx
	addl	%edx, %ecx
	cvtsi2sdl	%ecx, %xmm0
	callq	sqrt
	movsd	%xmm0, -72(%rbp)
	movq	-8(%rbp), %rax
	cvtsi2sdl	16(%rax), %xmm0
	addsd	%xmm0, %xmm0
	movsd	.LCPI2_0(%rip), %xmm1   # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -56(%rbp)
	movswl	-44(%rbp), %ecx
	cvtsi2sdl	%ecx, %xmm0
	movswl	-42(%rbp), %ecx
	movw	%cx, %si
	cvtsi2sdl	%ecx, %xmm1
	movw	%si, -170(%rbp)         # 2-byte Spill
	callq	atan2
	movsd	%xmm0, -88(%rbp)
	movq	-40(%rbp), %rax
	movl	8(%rax), %ecx
	movq	-24(%rbp), %rax
	subl	8(%rax), %ecx
	movw	%cx, %si
	movw	%si, -42(%rbp)
	movq	-40(%rbp), %rax
	movl	12(%rax), %ecx
	movq	-24(%rbp), %rax
	subl	12(%rax), %ecx
	movw	%cx, %si
	movw	%si, -44(%rbp)
	movswl	-42(%rbp), %ecx
	movswl	-42(%rbp), %edx
	imull	%edx, %ecx
	movswl	-44(%rbp), %edx
	movswl	-44(%rbp), %edi
	imull	%edi, %edx
	addl	%edx, %ecx
	cvtsi2sdl	%ecx, %xmm0
	callq	sqrt
	movsd	%xmm0, -80(%rbp)
	movl	$0, -92(%rbp)
.LBB2_10:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-92(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	16(%rcx), %edx
	shll	$1, %edx
	cmpl	%edx, %eax
	jge	.LBB2_22
# BB#11:                                # %for.body
                                        #   in Loop: Header=BB2_10 Depth=1
	movl	$2, %eax
	cvtsi2sdl	-92(%rbp), %xmm0
	mulsd	-56(%rbp), %xmm0
	addsd	-88(%rbp), %xmm0
	movsd	%xmm0, -64(%rbp)
	movl	-92(%rbp), %ecx
	movl	%eax, -176(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-176(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	je	.LBB2_13
# BB#12:                                # %if.then.71
                                        #   in Loop: Header=BB2_10 Depth=1
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -184(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	cos
	movsd	-184(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -128(%rbp)
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -192(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	sin
	movsd	-192(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -136(%rbp)
	jmp	.LBB2_14
.LBB2_13:                               # %if.else.76
                                        #   in Loop: Header=BB2_10 Depth=1
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -200(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	cos
	movsd	-200(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -128(%rbp)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -208(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	sin
	movsd	-208(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -136(%rbp)
.LBB2_14:                               # %if.end.81
                                        #   in Loop: Header=BB2_10 Depth=1
	movsd	-128(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	cvtsi2sdl	8(%rax), %xmm1
	addsd	%xmm1, %xmm0
	callq	rint
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, -144(%rbp)
	movsd	-136(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	cvtsi2sdl	12(%rax), %xmm1
	addsd	%xmm1, %xmm0
	callq	rint
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, -140(%rbp)
	cmpl	$0, -116(%rbp)
	je	.LBB2_19
# BB#15:                                # %if.then.97
                                        #   in Loop: Header=BB2_10 Depth=1
	movl	-144(%rbp), %eax
	cmpl	-104(%rbp), %eax
	jne	.LBB2_18
# BB#16:                                # %land.lhs.true
                                        #   in Loop: Header=BB2_10 Depth=1
	movl	-140(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jne	.LBB2_18
# BB#17:                                # %if.then.106
                                        #   in Loop: Header=BB2_10 Depth=1
	jmp	.LBB2_21
.LBB2_18:                               # %if.end.107
                                        #   in Loop: Header=BB2_10 Depth=1
	movl	-144(%rbp), %edi
	movl	-140(%rbp), %esi
	movl	-104(%rbp), %edx
	movl	-100(%rbp), %ecx
	movq	-16(%rbp), %r8
	callq	gfig_draw_line
	jmp	.LBB2_20
.LBB2_19:                               # %if.else.112
                                        #   in Loop: Header=BB2_10 Depth=1
	movl	$1, -116(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -112(%rbp)
.LBB2_20:                               # %if.end.113
                                        #   in Loop: Header=BB2_10 Depth=1
	movq	-144(%rbp), %rax
	movq	%rax, -104(%rbp)
.LBB2_21:                               # %for.inc
                                        #   in Loop: Header=BB2_10 Depth=1
	movl	-92(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -92(%rbp)
	jmp	.LBB2_10
.LBB2_22:                               # %for.end
	movl	-112(%rbp), %edi
	movl	-108(%rbp), %esi
	movl	-104(%rbp), %edx
	movl	-100(%rbp), %ecx
	movq	-16(%rbp), %r8
	callq	gfig_draw_line
.LBB2_23:                               # %return
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	d_draw_star, .Lfunc_end2-d_draw_star
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_0:
	.quad	4618760256179416344     # double 6.2831853071795862
	.text
	.align	16, 0x90
	.type	d_paint_star,@function
d_paint_star:                           # @d_paint_star
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
	subq	$304, %rsp              # imm = 0x130
	xorl	%eax, %eax
	movl	$8, %ecx
	movl	%ecx, %edx
	leaq	-120(%rbp), %rsi
	leaq	-112(%rbp), %r8
	movq	%rdi, -8(%rbp)
	movl	$0, -20(%rbp)
	movl	$0, -24(%rbp)
	movq	%r8, %rdi
	movq	%rsi, -168(%rbp)        # 8-byte Spill
	movl	%eax, %esi
	movq	%rdx, -176(%rbp)        # 8-byte Spill
	movl	%eax, -180(%rbp)        # 4-byte Spill
	callq	memset
	movq	-168(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, %rdi
	movl	-180(%rbp), %esi        # 4-byte Reload
	movq	-176(%rbp), %rdx        # 8-byte Reload
	callq	memset
	movl	$1, -124(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB3_3
# BB#2:                                 # %if.then
	jmp	.LBB3_4
.LBB3_3:                                # %if.else
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.2, %rsi
	movl	$194, %edx
	movabsq	$.L__func__.d_paint_star, %rcx
	movabsq	$.L.str.3, %r8
	callq	g_assertion_message_expr
.LBB3_4:                                # %if.end
	jmp	.LBB3_5
.LBB3_5:                                # %do.end
	movq	-8(%rbp), %rax
	movl	16(%rax), %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	%ecx, -20(%rbp)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB3_7
# BB#6:                                 # %lor.lhs.false
	cmpl	$0, -20(%rbp)
	jne	.LBB3_8
.LBB3_7:                                # %if.then.2
	jmp	.LBB3_47
.LBB3_8:                                # %if.end.3
	movl	$8, %eax
	movl	%eax, %esi
	movl	-20(%rbp), %eax
	shll	$1, %eax
	addl	$1, %eax
	movslq	%eax, %rdi
	callq	g_malloc0_n
	movl	$4, %ecx
	movl	%ecx, %edi
	movl	$8, %ecx
	movl	%ecx, %esi
	movq	%rax, -16(%rbp)
	callq	g_malloc_n
	movq	%rax, -136(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB3_10
# BB#9:                                 # %if.then.8
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	jmp	.LBB3_47
.LBB3_10:                               # %if.end.9
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB3_12
# BB#11:                                # %if.then.12
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	jmp	.LBB3_47
.LBB3_12:                               # %if.end.13
	movq	-40(%rbp), %rax
	movl	8(%rax), %ecx
	movq	-32(%rbp), %rax
	movl	8(%rax), %edx
	subl	%edx, %ecx
	movw	%cx, %si
	movw	%si, -50(%rbp)
	movq	-40(%rbp), %rax
	movl	12(%rax), %ecx
	movq	-32(%rbp), %rax
	movl	12(%rax), %edx
	subl	%edx, %ecx
	movw	%cx, %si
	movw	%si, -52(%rbp)
	movswl	-50(%rbp), %ecx
	imull	%ecx, %ecx
	movswl	-52(%rbp), %edx
	imull	%edx, %edx
	addl	%edx, %ecx
	cvtsi2sdl	%ecx, %xmm0
	callq	sqrt
	movsd	%xmm0, -80(%rbp)
	movq	-8(%rbp), %rax
	cvtsi2sdl	16(%rax), %xmm0
	addsd	%xmm0, %xmm0
	movsd	.LCPI3_0(%rip), %xmm1   # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -64(%rbp)
	movswl	-52(%rbp), %ecx
	cvtsi2sdl	%ecx, %xmm0
	movswl	-50(%rbp), %ecx
	movw	%cx, %si
	cvtsi2sdl	%ecx, %xmm1
	movw	%si, -182(%rbp)         # 2-byte Spill
	callq	atan2
	movsd	%xmm0, -96(%rbp)
	movq	-48(%rbp), %rax
	movl	8(%rax), %ecx
	movq	-32(%rbp), %rax
	subl	8(%rax), %ecx
	movw	%cx, %si
	movw	%si, -50(%rbp)
	movq	-48(%rbp), %rax
	movl	12(%rax), %ecx
	movq	-32(%rbp), %rax
	subl	12(%rax), %ecx
	movw	%cx, %si
	movw	%si, -52(%rbp)
	movswl	-50(%rbp), %ecx
	movswl	-50(%rbp), %edx
	imull	%edx, %ecx
	movswl	-52(%rbp), %edx
	movswl	-52(%rbp), %edi
	imull	%edi, %edx
	addl	%edx, %ecx
	cvtsi2sdl	%ecx, %xmm0
	callq	sqrt
	movsd	%xmm0, -88(%rbp)
	movl	$0, -100(%rbp)
.LBB3_13:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-100(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	16(%rcx), %edx
	shll	$1, %edx
	cmpl	%edx, %eax
	jge	.LBB3_39
# BB#14:                                # %for.body
                                        #   in Loop: Header=BB3_13 Depth=1
	movl	$2, %eax
	cvtsi2sdl	-100(%rbp), %xmm0
	mulsd	-64(%rbp), %xmm0
	addsd	-96(%rbp), %xmm0
	movsd	%xmm0, -72(%rbp)
	movl	-100(%rbp), %ecx
	movl	%eax, -188(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-188(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	je	.LBB3_16
# BB#15:                                # %if.then.66
                                        #   in Loop: Header=BB3_13 Depth=1
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -200(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	cos
	movsd	-200(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -144(%rbp)
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -208(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	sin
	movsd	-208(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -152(%rbp)
	jmp	.LBB3_17
.LBB3_16:                               # %if.else.71
                                        #   in Loop: Header=BB3_13 Depth=1
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -216(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	cos
	movsd	-216(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -144(%rbp)
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -224(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	sin
	movsd	-224(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -152(%rbp)
.LBB3_17:                               # %if.end.76
                                        #   in Loop: Header=BB3_13 Depth=1
	movsd	-144(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	cvtsi2sdl	8(%rax), %xmm1
	addsd	%xmm1, %xmm0
	callq	rint
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, -160(%rbp)
	movsd	-152(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	cvtsi2sdl	12(%rax), %xmm1
	addsd	%xmm1, %xmm0
	callq	rint
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, -156(%rbp)
	cmpl	$0, -124(%rbp)
	jne	.LBB3_22
# BB#18:                                # %if.then.92
                                        #   in Loop: Header=BB3_13 Depth=1
	movl	-160(%rbp), %eax
	cmpl	-120(%rbp), %eax
	jne	.LBB3_21
# BB#19:                                # %land.lhs.true
                                        #   in Loop: Header=BB3_13 Depth=1
	movl	-156(%rbp), %eax
	cmpl	-116(%rbp), %eax
	jne	.LBB3_21
# BB#20:                                # %if.then.101
                                        #   in Loop: Header=BB3_13 Depth=1
	jmp	.LBB3_38
.LBB3_21:                               # %if.end.102
                                        #   in Loop: Header=BB3_13 Depth=1
	jmp	.LBB3_22
.LBB3_22:                               # %if.end.103
                                        #   in Loop: Header=BB3_13 Depth=1
	cvtsi2sdl	-160(%rbp), %xmm0
	movl	-24(%rbp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -24(%rbp)
	movslq	%eax, %rdx
	movq	-16(%rbp), %rsi
	movsd	%xmm0, (%rsi,%rdx,8)
	cvtsi2sdl	-156(%rbp), %xmm0
	movl	-24(%rbp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -24(%rbp)
	movslq	%eax, %rdx
	movq	-16(%rbp), %rsi
	movsd	%xmm0, (%rsi,%rdx,8)
	movq	-160(%rbp), %rdx
	movq	%rdx, -120(%rbp)
	cmpl	$0, -124(%rbp)
	je	.LBB3_24
# BB#23:                                # %if.then.112
                                        #   in Loop: Header=BB3_13 Depth=1
	movq	-160(%rbp), %rax
	movq	%rax, -112(%rbp)
	movl	$0, -124(%rbp)
	cvtsi2sdl	-160(%rbp), %xmm0
	movq	-136(%rbp), %rax
	movsd	%xmm0, 16(%rax)
	movq	-136(%rbp), %rax
	movsd	%xmm0, (%rax)
	cvtsi2sdl	-156(%rbp), %xmm0
	movq	-136(%rbp), %rax
	movsd	%xmm0, 24(%rax)
	movq	-136(%rbp), %rax
	movsd	%xmm0, 8(%rax)
	jmp	.LBB3_37
.LBB3_24:                               # %if.else.121
                                        #   in Loop: Header=BB3_13 Depth=1
	movq	-136(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	cvtsi2sdl	-160(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB3_26
# BB#25:                                # %cond.true
                                        #   in Loop: Header=BB3_13 Depth=1
	movq	-136(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -232(%rbp)       # 8-byte Spill
	jmp	.LBB3_27
.LBB3_26:                               # %cond.false
                                        #   in Loop: Header=BB3_13 Depth=1
	cvtsi2sdl	-160(%rbp), %xmm0
	movsd	%xmm0, -232(%rbp)       # 8-byte Spill
.LBB3_27:                               # %cond.end
                                        #   in Loop: Header=BB3_13 Depth=1
	movsd	-232(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movq	-136(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-136(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	cvtsi2sdl	-156(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB3_29
# BB#28:                                # %cond.true.136
                                        #   in Loop: Header=BB3_13 Depth=1
	movq	-136(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movsd	%xmm0, -240(%rbp)       # 8-byte Spill
	jmp	.LBB3_30
.LBB3_29:                               # %cond.false.138
                                        #   in Loop: Header=BB3_13 Depth=1
	cvtsi2sdl	-156(%rbp), %xmm0
	movsd	%xmm0, -240(%rbp)       # 8-byte Spill
.LBB3_30:                               # %cond.end.141
                                        #   in Loop: Header=BB3_13 Depth=1
	movsd	-240(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movq	-136(%rbp), %rax
	movsd	%xmm0, 8(%rax)
	movq	-136(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	-160(%rbp), %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB3_32
# BB#31:                                # %cond.true.149
                                        #   in Loop: Header=BB3_13 Depth=1
	movq	-136(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -248(%rbp)       # 8-byte Spill
	jmp	.LBB3_33
.LBB3_32:                               # %cond.false.151
                                        #   in Loop: Header=BB3_13 Depth=1
	cvtsi2sdl	-160(%rbp), %xmm0
	movsd	%xmm0, -248(%rbp)       # 8-byte Spill
.LBB3_33:                               # %cond.end.154
                                        #   in Loop: Header=BB3_13 Depth=1
	movsd	-248(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movq	-136(%rbp), %rax
	movsd	%xmm0, 16(%rax)
	movq	-136(%rbp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	-156(%rbp), %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB3_35
# BB#34:                                # %cond.true.162
                                        #   in Loop: Header=BB3_13 Depth=1
	movq	-136(%rbp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -256(%rbp)       # 8-byte Spill
	jmp	.LBB3_36
.LBB3_35:                               # %cond.false.164
                                        #   in Loop: Header=BB3_13 Depth=1
	cvtsi2sdl	-156(%rbp), %xmm0
	movsd	%xmm0, -256(%rbp)       # 8-byte Spill
.LBB3_36:                               # %cond.end.167
                                        #   in Loop: Header=BB3_13 Depth=1
	movsd	-256(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movq	-136(%rbp), %rax
	movsd	%xmm0, 24(%rax)
.LBB3_37:                               # %if.end.170
                                        #   in Loop: Header=BB3_13 Depth=1
	jmp	.LBB3_38
.LBB3_38:                               # %for.inc
                                        #   in Loop: Header=BB3_13 Depth=1
	movl	-100(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -100(%rbp)
	jmp	.LBB3_13
.LBB3_39:                               # %for.end
	cvtsi2sdl	-112(%rbp), %xmm0
	movl	-24(%rbp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -24(%rbp)
	movslq	%eax, %rdx
	movq	-16(%rbp), %rsi
	movsd	%xmm0, (%rsi,%rdx,8)
	cvtsi2sdl	-108(%rbp), %xmm0
	movl	-24(%rbp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -24(%rbp)
	movslq	%eax, %rdx
	movq	-16(%rbp), %rsi
	movsd	%xmm0, (%rsi,%rdx,8)
	cmpl	$0, selvals+120
	je	.LBB3_41
# BB#40:                                # %if.then.183
	movl	$2, %eax
	movq	-16(%rbp), %rdi
	movl	-24(%rbp), %ecx
	movl	%eax, -260(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-260(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movl	%eax, %esi
	callq	scale_to_original_xy
	movl	$2, %esi
	movq	-136(%rbp), %rdi
	callq	scale_to_original_xy
	jmp	.LBB3_42
.LBB3_41:                               # %if.else.186
	movl	$2, %eax
	movq	-16(%rbp), %rdi
	movl	-24(%rbp), %ecx
	movl	%eax, -264(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-264(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movl	%eax, %esi
	callq	scale_to_xy
	movl	$2, %esi
	movq	-136(%rbp), %rdi
	callq	scale_to_xy
.LBB3_42:                               # %if.end.189
	callq	gfig_context_get_current_style
	cmpl	$0, 56(%rax)
	je	.LBB3_44
# BB#43:                                # %if.then.193
	callq	gimp_context_push
	movl	selopt+4, %edi
	movl	%eax, -268(%rbp)        # 4-byte Spill
	callq	gimp_context_set_antialias
	movl	selopt+8, %edi
	movl	%eax, -272(%rbp)        # 4-byte Spill
	callq	gimp_context_set_feather
	movsd	selopt+16, %xmm0        # xmm0 = mem[0],zero
	movsd	selopt+16, %xmm1        # xmm1 = mem[0],zero
	movl	%eax, -276(%rbp)        # 4-byte Spill
	callq	gimp_context_set_feather_radius
	movq	gfig_context, %rcx
	movl	8(%rcx), %edi
	movl	selopt, %esi
	movl	-24(%rbp), %edx
	movq	-16(%rbp), %rcx
	movl	%eax, -280(%rbp)        # 4-byte Spill
	callq	gimp_image_select_polygon
	movl	%eax, -284(%rbp)        # 4-byte Spill
	callq	gimp_context_pop
	movq	-136(%rbp), %rcx
	movsd	(%rcx), %xmm0           # xmm0 = mem[0],zero
	movq	-136(%rbp), %rcx
	movsd	8(%rcx), %xmm1          # xmm1 = mem[0],zero
	movq	-136(%rbp), %rcx
	movsd	16(%rcx), %xmm2         # xmm2 = mem[0],zero
	movq	-136(%rbp), %rcx
	movsd	24(%rcx), %xmm3         # xmm3 = mem[0],zero
	movl	%eax, -288(%rbp)        # 4-byte Spill
	callq	paint_layer_fill
	movq	gfig_context, %rcx
	movl	8(%rcx), %edi
	callq	gimp_selection_none
	movl	%eax, -292(%rbp)        # 4-byte Spill
.LBB3_44:                               # %if.end.206
	movq	-8(%rbp), %rax
	cmpl	$1, 120(%rax)
	jne	.LBB3_46
# BB#45:                                # %if.then.209
	movl	selvals+136, %edi
	movq	gfig_context, %rax
	movl	12(%rax), %esi
	movl	-24(%rbp), %edx
	movq	-16(%rbp), %rcx
	callq	gfig_paint
.LBB3_46:                               # %if.end.210
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
.LBB3_47:                               # %return
	addq	$304, %rsp              # imm = 0x130
	popq	%rbp
	retq
.Lfunc_end3:
	.size	d_paint_star, .Lfunc_end3-d_paint_star
	.cfi_endproc

	.align	16, 0x90
	.type	d_copy_star,@function
d_copy_star:                            # @d_copy_star
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	cmpl	$7, (%rax)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	jmp	.LBB4_4
.LBB4_3:                                # %if.else
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.2, %rsi
	movl	$339, %edx              # imm = 0x153
	movabsq	$.L__func__.d_copy_star, %rcx
	movabsq	$.L.str.4, %r8
	callq	g_assertion_message_expr
.LBB4_4:                                # %if.end
	jmp	.LBB4_5
.LBB4_5:                                # %do.end
	movl	$7, %edi
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movl	8(%rax), %esi
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movl	12(%rax), %edx
	callq	d_new_object
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rdi
	callq	d_copy_dobjpoints
	movq	-16(%rbp), %rdi
	movq	24(%rdi), %rdi
	movq	%rax, (%rdi)
	movq	-8(%rbp), %rax
	movl	16(%rax), %edx
	movq	-16(%rbp), %rax
	movl	%edx, 16(%rax)
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	d_copy_star, .Lfunc_end4-d_copy_star
	.cfi_endproc

	.align	16, 0x90
	.type	d_update_star,@function
d_update_star:                          # @d_update_star
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	obj_creating, %rdi
	movq	24(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB5_2
# BB#1:                                 # %if.then
	jmp	.LBB5_5
.LBB5_2:                                # %if.end
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	cmpq	$0, %rax
	je	.LBB5_4
# BB#3:                                 # %if.then.2
	movl	$3, %eax
	movq	-32(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -24(%rbp)
	movq	-32(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, 8(%rcx)
	movq	-8(%rbp), %rcx
	movl	(%rcx), %esi
	movq	-16(%rbp), %rcx
	movl	8(%rcx), %edi
	movq	-8(%rbp), %rcx
	subl	(%rcx), %edi
	shll	$1, %edi
	movl	%eax, -36(%rbp)         # 4-byte Spill
	movl	%edi, %eax
	cltd
	movl	-36(%rbp), %edi         # 4-byte Reload
	idivl	%edi
	addl	%eax, %esi
	movq	-24(%rbp), %rcx
	movl	%esi, 8(%rcx)
	movq	-8(%rbp), %rcx
	movl	4(%rcx), %eax
	movq	-16(%rbp), %rcx
	movl	12(%rcx), %esi
	movq	-8(%rbp), %rcx
	subl	4(%rcx), %esi
	shll	$1, %esi
	movl	%eax, -40(%rbp)         # 4-byte Spill
	movl	%esi, %eax
	cltd
	idivl	%edi
	movl	-40(%rbp), %esi         # 4-byte Reload
	addl	%eax, %esi
	movq	-24(%rbp), %rcx
	movl	%esi, 12(%rcx)
	jmp	.LBB5_5
.LBB5_4:                                # %if.else
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	obj_creating, %rdi
	movq	-8(%rbp), %rax
	movl	(%rax), %esi
	movq	-8(%rbp), %rax
	movl	4(%rax), %edx
	callq	d_pnt_add_line
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movl	$3, %edx
	movq	obj_creating, %rdi
	movq	-8(%rbp), %rax
	movl	(%rax), %esi
	movq	-16(%rbp), %rax
	movl	8(%rax), %r8d
	movq	-8(%rbp), %rax
	subl	(%rax), %r8d
	shll	$1, %r8d
	movl	%r8d, %eax
	movl	%edx, -44(%rbp)         # 4-byte Spill
	cltd
	movl	-44(%rbp), %r8d         # 4-byte Reload
	idivl	%r8d
	addl	%eax, %esi
	movq	-8(%rbp), %r9
	movl	4(%r9), %eax
	movq	-16(%rbp), %r9
	movl	12(%r9), %r10d
	movq	-8(%rbp), %r9
	subl	4(%r9), %r10d
	shll	$1, %r10d
	movl	%eax, -48(%rbp)         # 4-byte Spill
	movl	%r10d, %eax
	cltd
	idivl	%r8d
	movl	-48(%rbp), %r10d        # 4-byte Reload
	addl	%eax, %r10d
	movl	%r10d, %edx
	callq	d_pnt_add_line
.LBB5_5:                                # %if.end.37
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	d_update_star, .Lfunc_end5-d_update_star
	.cfi_endproc

	.globl	d_star_start
	.align	16, 0x90
	.type	d_star_start,@function
d_star_start:                           # @d_star_start
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
	subq	$16, %rsp
	movl	$7, %eax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movl	(%rdi), %esi
	movq	-8(%rbp), %rdi
	movl	4(%rdi), %edx
	movl	%eax, %edi
	callq	d_new_object
	movq	%rax, obj_creating
	movl	star_num_sides, %edx
	movq	obj_creating, %rax
	movl	%edx, 16(%rax)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	d_star_start, .Lfunc_end6-d_star_start
	.cfi_endproc

	.globl	d_star_end
	.align	16, 0x90
	.type	d_star_end,@function
d_star_end:                             # @d_star_end
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	gfig_context, %rdi
	movq	16(%rdi), %rdi
	movq	obj_creating, %rsi
	callq	add_to_all_obj
	movq	$0, obj_creating
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	d_star_end, .Lfunc_end7-d_star_end
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Star Number of Points"
	.size	.L.str, 22

	.type	star_num_sides,@object  # @star_num_sides
	.data
	.align	4
star_num_sides:
	.long	3                       # 0x3
	.size	star_num_sides, 4

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"STAR"
	.size	.L.str.1, 5

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"gfig-star.c"
	.size	.L.str.2, 12

	.type	.L__func__.d_paint_star,@object # @__func__.d_paint_star
.L__func__.d_paint_star:
	.asciz	"d_paint_star"
	.size	.L__func__.d_paint_star, 13

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"obj != NULL"
	.size	.L.str.3, 12

	.type	.L__func__.d_copy_star,@object # @__func__.d_copy_star
.L__func__.d_copy_star:
	.asciz	"d_copy_star"
	.size	.L__func__.d_copy_star, 12

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"obj->type == STAR"
	.size	.L.str.4, 18


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
