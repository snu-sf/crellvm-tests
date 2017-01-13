	.text
	.file	"gfig-line.bc"
	.globl	d_line_object_class_init
	.align	16, 0x90
	.type	d_line_object_class_init,@function
d_line_object_class_init:               # @d_line_object_class_init
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
	movabsq	$d_update_line, %rax
	movabsq	$d_copy_line, %rcx
	movabsq	$d_paint_line, %rdx
	movabsq	$d_draw_line, %rsi
	movabsq	$.L.str, %rdi
	movabsq	$dobj_class, %r8
	addq	$48, %r8
	movq	%r8, -8(%rbp)
	movq	-8(%rbp), %r8
	movl	$1, (%r8)
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
.Lfunc_end0:
	.size	d_line_object_class_init, .Lfunc_end0-d_line_object_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	d_draw_line,@function
d_draw_line:                            # @d_draw_line
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	24(%rsi), %rsi
	movq	%rsi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB1_2
# BB#1:                                 # %if.then
	jmp	.LBB1_10
.LBB1_2:                                # %if.end
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB1_3:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, -24(%rbp)
	movb	%cl, -33(%rbp)          # 1-byte Spill
	je	.LBB1_5
# BB#4:                                 # %land.rhs
                                        #   in Loop: Header=BB1_3 Depth=1
	cmpq	$0, -32(%rbp)
	setne	%al
	movb	%al, -33(%rbp)          # 1-byte Spill
.LBB1_5:                                # %land.end
                                        #   in Loop: Header=BB1_3 Depth=1
	movb	-33(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB1_6
	jmp	.LBB1_7
.LBB1_6:                                # %while.body
                                        #   in Loop: Header=BB1_3 Depth=1
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
	movl	8(%rax), %edi
	movq	-24(%rbp), %rax
	movl	12(%rax), %esi
	movq	-32(%rbp), %rax
	movl	8(%rax), %edx
	movq	-32(%rbp), %rax
	movl	12(%rax), %ecx
	movq	-16(%rbp), %r8
	callq	gfig_draw_line
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB1_3
.LBB1_7:                                # %while.end
	movq	obj_creating, %rax
	cmpq	-8(%rbp), %rax
	jne	.LBB1_9
# BB#8:                                 # %if.then.12
	movl	$1, %esi
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movq	-16(%rbp), %rdx
	movq	%rax, %rdi
	callq	draw_circle
	jmp	.LBB1_10
.LBB1_9:                                # %if.else
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
.LBB1_10:                               # %if.end.18
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	d_draw_line, .Lfunc_end1-d_draw_line
	.cfi_endproc

	.align	16, 0x90
	.type	d_paint_line,@function
d_paint_line:                           # @d_paint_line
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
	movq	%rdi, -8(%rbp)
	movl	$0, -28(%rbp)
	movl	$0, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	24(%rdi), %rdi
	movq	%rdi, -16(%rbp)
.LBB2_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB2_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB2_1
.LBB2_4:                                # %for.end
	cmpl	$0, -28(%rbp)
	jne	.LBB2_6
# BB#5:                                 # %if.then
	jmp	.LBB2_16
.LBB2_6:                                # %if.end
	movl	$8, %eax
	movl	%eax, %esi
	movl	-28(%rbp), %eax
	shll	$1, %eax
	addl	$1, %eax
	movslq	%eax, %rdi
	callq	g_malloc0_n
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -16(%rbp)
.LBB2_7:                                # %for.cond.3
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB2_10
# BB#8:                                 # %for.body.5
                                        #   in Loop: Header=BB2_7 Depth=1
	movq	-16(%rbp), %rax
	cvtsi2sdl	8(%rax), %xmm0
	movl	-32(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -32(%rbp)
	movslq	%ecx, %rax
	movq	-24(%rbp), %rsi
	movsd	%xmm0, (%rsi,%rax,8)
	movq	-16(%rbp), %rax
	cvtsi2sdl	12(%rax), %xmm0
	movl	-32(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -32(%rbp)
	movslq	%ecx, %rax
	movq	-24(%rbp), %rsi
	movsd	%xmm0, (%rsi,%rax,8)
# BB#9:                                 # %for.inc.13
                                        #   in Loop: Header=BB2_7 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB2_7
.LBB2_10:                               # %for.end.15
	cmpl	$0, selvals+120
	je	.LBB2_12
# BB#11:                                # %if.then.17
	movl	$2, %eax
	movq	-24(%rbp), %rdi
	movl	-32(%rbp), %ecx
	movl	%eax, -36(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-36(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	movl	%eax, %esi
	callq	scale_to_original_xy
	jmp	.LBB2_13
.LBB2_12:                               # %if.else
	movl	$2, %eax
	movq	-24(%rbp), %rdi
	movl	-32(%rbp), %ecx
	movl	%eax, -40(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-40(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	movl	%eax, %esi
	callq	scale_to_xy
.LBB2_13:                               # %if.end.21
	movq	-8(%rbp), %rax
	cmpl	$1, 120(%rax)
	jne	.LBB2_15
# BB#14:                                # %if.then.23
	movl	selvals+136, %edi
	movq	gfig_context, %rax
	movl	12(%rax), %esi
	movl	-28(%rbp), %ecx
	shll	$1, %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, %edx
	movq	%rax, %rcx
	callq	gfig_paint
.LBB2_15:                               # %if.end.25
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
.LBB2_16:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	d_paint_line, .Lfunc_end2-d_paint_line
	.cfi_endproc

	.align	16, 0x90
	.type	d_copy_line,@function
d_copy_line:                            # @d_copy_line
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
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	cmpl	$1, (%rax)
	jne	.LBB3_3
# BB#2:                                 # %if.then
	jmp	.LBB3_4
.LBB3_3:                                # %if.else
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.1, %rsi
	movl	$49, %edx
	movabsq	$.L__func__.d_copy_line, %rcx
	movabsq	$.L.str.2, %r8
	callq	g_assertion_message_expr
.LBB3_4:                                # %if.end
	jmp	.LBB3_5
.LBB3_5:                                # %do.end
	movl	$1, %edi
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
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	d_copy_line, .Lfunc_end3-d_copy_line
	.cfi_endproc

	.align	16, 0x90
	.type	d_update_line,@function
d_update_line:                          # @d_update_line
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
	movq	obj_creating, %rdi
	movq	24(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB4_2
# BB#1:                                 # %if.then
	jmp	.LBB4_5
.LBB4_2:                                # %if.end
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, %rax
	je	.LBB4_4
# BB#3:                                 # %if.then.2
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
.LBB4_4:                                # %if.end.3
	movq	-8(%rbp), %rax
	movl	(%rax), %edi
	movq	-8(%rbp), %rax
	movl	4(%rax), %esi
	callq	new_dobjpoint
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB4_5:                                # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	d_update_line, .Lfunc_end4-d_update_line
	.cfi_endproc

	.globl	d_line_start
	.align	16, 0x90
	.type	d_line_start,@function
d_line_start:                           # @d_line_start
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
	movl	%esi, -12(%rbp)
	cmpq	$0, obj_creating
	je	.LBB5_2
# BB#1:                                 # %lor.lhs.false
	cmpl	$0, -12(%rbp)
	jne	.LBB5_3
.LBB5_2:                                # %if.then
	movl	$1, %edi
	movq	-8(%rbp), %rax
	movl	(%rax), %esi
	movq	-8(%rbp), %rax
	movl	4(%rax), %edx
	callq	d_new_object
	movq	%rax, obj_creating
	jmp	.LBB5_4
.LBB5_3:                                # %if.else
	movq	-8(%rbp), %rdi
	callq	d_update_line
.LBB5_4:                                # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	d_line_start, .Lfunc_end5-d_line_start
	.cfi_endproc

	.globl	d_line_end
	.align	16, 0x90
	.type	d_line_end,@function
d_line_end:                             # @d_line_end
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpl	$0, -12(%rbp)
	je	.LBB6_7
# BB#1:                                 # %if.then
	cmpq	$0, tmp_line
	je	.LBB6_5
# BB#2:                                 # %if.then.2
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	cmpl	$0, need_to_scale
	je	.LBB6_4
# BB#3:                                 # %if.then.4
	movq	-8(%rbp), %rax
	cvtsi2sdl	(%rax), %xmm0
	mulsd	scale_x_factor, %xmm0
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, -24(%rbp)
	movq	-8(%rbp), %rax
	cvtsi2sdl	4(%rax), %xmm0
	mulsd	scale_y_factor, %xmm0
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, -20(%rbp)
.LBB6_4:                                # %if.end
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	tmp_line, %rdi
	movl	-24(%rbp), %esi
	movl	-20(%rbp), %edx
	callq	d_pnt_add_line
	movq	obj_creating, %rdi
	callq	free_one_obj
	jmp	.LBB6_6
.LBB6_5:                                # %if.else
	movq	obj_creating, %rax
	movq	%rax, tmp_line
	movq	gfig_context, %rax
	movq	16(%rax), %rdi
	movq	obj_creating, %rsi
	callq	add_to_all_obj
.LBB6_6:                                # %if.end.13
	movl	$1, %edi
	movq	-8(%rbp), %rax
	movl	(%rax), %esi
	movq	-8(%rbp), %rax
	movl	4(%rax), %edx
	callq	d_new_object
	movq	%rax, obj_creating
	jmp	.LBB6_13
.LBB6_7:                                # %if.else.16
	cmpq	$0, tmp_line
	je	.LBB6_11
# BB#8:                                 # %if.then.18
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	cmpl	$0, need_to_scale
	je	.LBB6_10
# BB#9:                                 # %if.then.21
	movq	-8(%rbp), %rax
	cvtsi2sdl	(%rax), %xmm0
	mulsd	scale_x_factor, %xmm0
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, -32(%rbp)
	movq	-8(%rbp), %rax
	cvtsi2sdl	4(%rax), %xmm0
	mulsd	scale_y_factor, %xmm0
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, -28(%rbp)
.LBB6_10:                               # %if.end.32
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	tmp_line, %rdi
	movl	-32(%rbp), %esi
	movl	-28(%rbp), %edx
	callq	d_pnt_add_line
	movq	obj_creating, %rdi
	callq	free_one_obj
	jmp	.LBB6_12
.LBB6_11:                               # %if.else.35
	movq	gfig_context, %rax
	movq	16(%rax), %rdi
	movq	obj_creating, %rsi
	callq	add_to_all_obj
.LBB6_12:                               # %if.end.37
	movq	$0, obj_creating
	movq	$0, tmp_line
.LBB6_13:                               # %if.end.38
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	d_line_end, .Lfunc_end6-d_line_end
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"LINE"
	.size	.L.str, 5

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"gfig-line.c"
	.size	.L.str.1, 12

	.type	.L__func__.d_copy_line,@object # @__func__.d_copy_line
.L__func__.d_copy_line:
	.asciz	"d_copy_line"
	.size	.L__func__.d_copy_line, 12

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"obj->type == LINE"
	.size	.L.str.2, 18


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
