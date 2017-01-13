	.text
	.file	"gfig-arc.bc"
	.globl	d_arc_object_class_init
	.align	16, 0x90
	.type	d_arc_object_class_init,@function
d_arc_object_class_init:                # @d_arc_object_class_init
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
	movabsq	$d_update_arc, %rax
	movabsq	$d_copy_arc, %rcx
	movabsq	$d_paint_arc, %rdx
	movabsq	$d_draw_arc, %rsi
	movabsq	$.L.str, %rdi
	movabsq	$dobj_class, %r8
	addq	$240, %r8
	movq	%r8, -8(%rbp)
	movq	-8(%rbp), %r8
	movl	$5, (%r8)
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
	.size	d_arc_object_class_init, .Lfunc_end0-d_arc_object_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	d_draw_arc,@function
d_draw_arc:                             # @d_draw_arc
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB1_3
# BB#2:                                 # %if.then
	jmp	.LBB1_4
.LBB1_3:                                # %if.else
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.1, %rsi
	movl	$444, %edx              # imm = 0x1BC
	movabsq	$.L__func__.d_draw_arc, %rcx
	movabsq	$.L.str.2, %r8
	callq	g_assertion_message_expr
.LBB1_4:                                # %if.end
	jmp	.LBB1_5
.LBB1_5:                                # %do.end
	cmpq	$0, -8(%rbp)
	jne	.LBB1_7
# BB#6:                                 # %if.then.1
	jmp	.LBB1_16
.LBB1_7:                                # %if.end.2
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB1_9
# BB#8:                                 # %cond.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB1_10
.LBB1_9:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	jmp	.LBB1_10
.LBB1_10:                               # %cond.end
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB1_12
# BB#11:                                # %cond.true.5
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB1_13
.LBB1_12:                               # %cond.false.7
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	jmp	.LBB1_13
.LBB1_13:                               # %cond.end.8
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB1_15
# BB#14:                                # %if.then.11
	jmp	.LBB1_16
.LBB1_15:                               # %if.end.12
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
	movq	-32(%rbp), %rax
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
	leaq	-64(%rbp), %rsi
	leaq	-48(%rbp), %rdx
	leaq	-72(%rbp), %rcx
	leaq	-56(%rbp), %r8
	movl	$1, %r9d
	xorl	%r10d, %r10d
	movq	-8(%rbp), %rdi
	movl	$0, (%rsp)
	movl	%r10d, -92(%rbp)        # 4-byte Spill
	callq	arc_drawing_details
	movl	-48(%rbp), %edi
	movl	-44(%rbp), %esi
	cvttsd2si	-56(%rbp), %edx
	cvttsd2si	-56(%rbp), %ecx
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %r8 # imm = 0x8000000000000000
	xorq	%r8, %rax
	movd	%rax, %xmm0
	cvttsd2si	%xmm0, %r8d
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	addsd	-72(%rbp), %xmm0
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %r11 # imm = 0x8000000000000000
	xorq	%r11, %rax
	movd	%rax, %xmm0
	cvttsd2si	%xmm0, %r9d
	movq	-16(%rbp), %rax
	movq	%rax, (%rsp)
	callq	gfig_draw_arc
.LBB1_16:                               # %return
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	d_draw_arc, .Lfunc_end1-d_draw_arc
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4580687790476533049     # double 0.017453292519943295
	.text
	.align	16, 0x90
	.type	d_paint_arc,@function
d_paint_arc:                            # @d_paint_arc
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
	subq	$160, %rsp
	xorl	%esi, %esi
	movl	$8, %eax
	movl	%eax, %edx
	leaq	-64(%rbp), %rcx
	movq	%rdi, -8(%rbp)
	movl	$0, -20(%rbp)
	movl	$0, -24(%rbp)
	movq	%rcx, %rdi
	callq	memset
	movl	$1, -68(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB2_3
# BB#2:                                 # %if.then
	jmp	.LBB2_4
.LBB2_3:                                # %if.else
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.1, %rsi
	movl	$482, %edx              # imm = 0x1E2
	movabsq	$.L__func__.d_paint_arc, %rcx
	movabsq	$.L.str.2, %r8
	callq	g_assertion_message_expr
.LBB2_4:                                # %if.end
	jmp	.LBB2_5
.LBB2_5:                                # %do.end
	cmpq	$0, -8(%rbp)
	jne	.LBB2_7
# BB#6:                                 # %if.then.1
	jmp	.LBB2_23
.LBB2_7:                                # %if.end.2
	leaq	-88(%rbp), %rsi
	leaq	-80(%rbp), %rdx
	leaq	-96(%rbp), %rcx
	leaq	-48(%rbp), %r8
	xorl	%r9d, %r9d
	movl	$1, %eax
	movq	-8(%rbp), %rdi
	movl	$1, (%rsp)
	movl	%eax, -124(%rbp)        # 4-byte Spill
	callq	arc_drawing_details
	movl	$8, %eax
	movl	%eax, %esi
	movl	$360, -20(%rbp)         # imm = 0x168
	movl	-20(%rbp), %eax
	shll	$1, %eax
	addl	$3, %eax
	movslq	%eax, %rdi
	callq	g_malloc0_n
	xorps	%xmm0, %xmm0
	movsd	.LCPI2_0, %xmm1         # xmm1 = mem[0],zero
	movq	%rax, -16(%rbp)
	movsd	%xmm1, -32(%rbp)
	ucomisd	-96(%rbp), %xmm0
	jbe	.LBB2_9
# BB#8:                                 # %if.then.5
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	addsd	-88(%rbp), %xmm0
	movsd	%xmm0, -88(%rbp)
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movsd	%xmm0, -96(%rbp)
.LBB2_9:                                # %if.end.7
	movsd	.LCPI2_0, %xmm0         # xmm0 = mem[0],zero
	mulsd	-88(%rbp), %xmm0
	movsd	%xmm0, -88(%rbp)
	movl	$0, -52(%rbp)
.LBB2_10:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-52(%rbp), %eax
	cvttsd2si	-96(%rbp), %edi
	movl	%eax, -128(%rbp)        # 4-byte Spill
	callq	abs
	movl	-128(%rbp), %edi        # 4-byte Reload
	cmpl	%eax, %edi
	jge	.LBB2_20
# BB#11:                                # %for.body
                                        #   in Loop: Header=BB2_10 Depth=1
	cvtsi2sdl	-52(%rbp), %xmm0
	mulsd	-32(%rbp), %xmm0
	addsd	-88(%rbp), %xmm0
	movsd	%xmm0, -40(%rbp)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -136(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	cos
	movsd	-136(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -104(%rbp)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -144(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	sin
	movsd	-144(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -112(%rbp)
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	cvtsi2sdl	-80(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	callq	rint
	cvttsd2si	%xmm0, %edx
	movl	%edx, -120(%rbp)
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	cvtsi2sdl	-76(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	callq	rint
	cvttsd2si	%xmm0, %edx
	movl	%edx, -116(%rbp)
	cmpl	$0, -68(%rbp)
	jne	.LBB2_16
# BB#12:                                # %if.then.32
                                        #   in Loop: Header=BB2_10 Depth=1
	movl	-120(%rbp), %eax
	cmpl	-64(%rbp), %eax
	jne	.LBB2_15
# BB#13:                                # %land.lhs.true
                                        #   in Loop: Header=BB2_10 Depth=1
	movl	-116(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jne	.LBB2_15
# BB#14:                                # %if.then.41
                                        #   in Loop: Header=BB2_10 Depth=1
	jmp	.LBB2_19
.LBB2_15:                               # %if.end.42
                                        #   in Loop: Header=BB2_10 Depth=1
	jmp	.LBB2_16
.LBB2_16:                               # %if.end.43
                                        #   in Loop: Header=BB2_10 Depth=1
	cvtsi2sdl	-120(%rbp), %xmm0
	movl	-24(%rbp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -24(%rbp)
	movslq	%eax, %rdx
	movq	-16(%rbp), %rsi
	movsd	%xmm0, (%rsi,%rdx,8)
	cvtsi2sdl	-116(%rbp), %xmm0
	movl	-24(%rbp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -24(%rbp)
	movslq	%eax, %rdx
	movq	-16(%rbp), %rsi
	movsd	%xmm0, (%rsi,%rdx,8)
	movq	-120(%rbp), %rdx
	movq	%rdx, -64(%rbp)
	cmpl	$0, -68(%rbp)
	je	.LBB2_18
# BB#17:                                # %if.then.52
                                        #   in Loop: Header=BB2_10 Depth=1
	movl	$0, -68(%rbp)
.LBB2_18:                               # %if.end.53
                                        #   in Loop: Header=BB2_10 Depth=1
	jmp	.LBB2_19
.LBB2_19:                               # %for.inc
                                        #   in Loop: Header=BB2_10 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB2_10
.LBB2_20:                               # %for.end
	movq	-8(%rbp), %rax
	cmpl	$1, 120(%rax)
	jne	.LBB2_22
# BB#21:                                # %if.then.57
	movl	selvals+136, %edi
	movq	gfig_context, %rax
	movl	12(%rax), %esi
	movl	-24(%rbp), %edx
	movq	-16(%rbp), %rcx
	callq	gfig_paint
.LBB2_22:                               # %if.end.58
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
.LBB2_23:                               # %return
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	d_paint_arc, .Lfunc_end2-d_paint_arc
	.cfi_endproc

	.align	16, 0x90
	.type	d_copy_arc,@function
d_copy_arc:                             # @d_copy_arc
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
	cmpl	$5, (%rax)
	jne	.LBB3_3
# BB#2:                                 # %if.then
	jmp	.LBB3_4
.LBB3_3:                                # %if.else
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.1, %rsi
	movl	$556, %edx              # imm = 0x22C
	movabsq	$.L__func__.d_copy_arc, %rcx
	movabsq	$.L.str.3, %r8
	callq	g_assertion_message_expr
.LBB3_4:                                # %if.end
	jmp	.LBB3_5
.LBB3_5:                                # %do.end
	movl	$5, %edi
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
	.size	d_copy_arc, .Lfunc_end3-d_copy_arc
	.cfi_endproc

	.align	16, 0x90
	.type	d_update_arc,@function
d_update_arc:                           # @d_update_arc
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
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	obj_creating, %rdi
	movq	24(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB4_3
# BB#1:                                 # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, %rax
	je	.LBB4_3
# BB#2:                                 # %lor.lhs.false.2
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	cmpq	$0, %rax
	jne	.LBB4_4
.LBB4_3:                                # %if.then
	movq	-8(%rbp), %rdi
	callq	d_update_arc_line
.LBB4_4:                                # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	d_update_arc, .Lfunc_end4-d_update_arc
	.cfi_endproc

	.globl	d_arc_start
	.align	16, 0x90
	.type	d_arc_start,@function
d_arc_start:                            # @d_arc_start
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
	movl	$1, %eax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movl	%eax, %esi
	callq	d_arc_line_start
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	d_arc_start, .Lfunc_end5-d_arc_start
	.cfi_endproc

	.align	16, 0x90
	.type	d_arc_line_start,@function
d_arc_line_start:                       # @d_arc_line_start
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpq	$0, obj_creating
	je	.LBB6_2
# BB#1:                                 # %lor.lhs.false
	cmpl	$0, -12(%rbp)
	jne	.LBB6_3
.LBB6_2:                                # %if.then
	movl	$1, %edi
	movq	-8(%rbp), %rax
	movl	(%rax), %esi
	movq	-8(%rbp), %rax
	movl	4(%rax), %edx
	callq	d_new_object
	movq	%rax, obj_creating
	jmp	.LBB6_4
.LBB6_3:                                # %if.else
	movq	-8(%rbp), %rdi
	callq	d_update_arc_line
.LBB6_4:                                # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	d_arc_line_start, .Lfunc_end6-d_arc_line_start
	.cfi_endproc

	.globl	d_arc_end
	.align	16, 0x90
	.type	d_arc_end,@function
d_arc_end:                              # @d_arc_end
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
	cmpq	$0, tmp_line
	je	.LBB7_3
# BB#1:                                 # %lor.lhs.false
	movq	tmp_line, %rax
	cmpq	$0, 24(%rax)
	je	.LBB7_3
# BB#2:                                 # %lor.lhs.false.2
	movq	tmp_line, %rax
	movq	24(%rax), %rax
	cmpq	$0, (%rax)
	jne	.LBB7_4
.LBB7_3:                                # %if.then
	movl	$1, %esi
	movq	-8(%rbp), %rdi
	callq	d_arc_line_end
	jmp	.LBB7_9
.LBB7_4:                                # %if.else
	xorl	%esi, %esi
	movabsq	$dobj_class, %rax
	addq	$240, %rax
	movq	tmp_line, %rcx
	movl	$5, (%rcx)
	movq	tmp_line, %rcx
	movq	%rax, 8(%rcx)
	movq	-8(%rbp), %rdi
	callq	d_arc_line_end
	cmpl	$0, need_to_scale
	je	.LBB7_6
# BB#5:                                 # %if.then.6
	movl	$0, selvals+120
.LBB7_6:                                # %if.end
	movq	gfig_context, %rax
	movq	32(%rax), %rdi
	callq	gtk_widget_queue_draw
	cmpl	$0, need_to_scale
	je	.LBB7_8
# BB#7:                                 # %if.then.8
	movl	$1, selvals+120
.LBB7_8:                                # %if.end.9
	jmp	.LBB7_9
.LBB7_9:                                # %if.end.10
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	d_arc_end, .Lfunc_end7-d_arc_end
	.cfi_endproc

	.align	16, 0x90
	.type	d_arc_line_end,@function
d_arc_line_end:                         # @d_arc_line_end
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpl	$0, -12(%rbp)
	je	.LBB8_7
# BB#1:                                 # %if.then
	cmpq	$0, tmp_line
	je	.LBB8_5
# BB#2:                                 # %if.then.2
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	cmpl	$0, need_to_scale
	je	.LBB8_4
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
.LBB8_4:                                # %if.end
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	tmp_line, %rdi
	movl	-24(%rbp), %esi
	movl	-20(%rbp), %edx
	callq	d_pnt_add_line
	movq	obj_creating, %rdi
	callq	free_one_obj
	jmp	.LBB8_6
.LBB8_5:                                # %if.else
	movq	obj_creating, %rax
	movq	%rax, tmp_line
	movq	gfig_context, %rax
	movq	16(%rax), %rdi
	movq	obj_creating, %rsi
	callq	add_to_all_obj
.LBB8_6:                                # %if.end.13
	movl	$1, %edi
	movq	-8(%rbp), %rax
	movl	(%rax), %esi
	movq	-8(%rbp), %rax
	movl	4(%rax), %edx
	callq	d_new_object
	movq	%rax, obj_creating
	jmp	.LBB8_13
.LBB8_7:                                # %if.else.16
	cmpq	$0, tmp_line
	je	.LBB8_11
# BB#8:                                 # %if.then.18
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	cmpl	$0, need_to_scale
	je	.LBB8_10
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
.LBB8_10:                               # %if.end.32
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	tmp_line, %rdi
	movl	-32(%rbp), %esi
	movl	-28(%rbp), %edx
	callq	d_pnt_add_line
	movq	obj_creating, %rdi
	callq	free_one_obj
	jmp	.LBB8_12
.LBB8_11:                               # %if.else.35
	movq	gfig_context, %rax
	movq	16(%rax), %rdi
	movq	obj_creating, %rsi
	callq	add_to_all_obj
.LBB8_12:                               # %if.end.37
	movq	$0, obj_creating
	movq	$0, tmp_line
.LBB8_13:                               # %if.end.38
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	d_arc_line_end, .Lfunc_end8-d_arc_line_end
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI9_0:
	.quad	4645040803167600640     # double 360
	.text
	.align	16, 0x90
	.type	arc_drawing_details,@function
arc_drawing_details:                    # @arc_drawing_details
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
	subq	$208, %rsp
	movl	16(%rbp), %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	%r9d, -44(%rbp)
	movl	%eax, -48(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -72(%rbp)
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rcx
	movq	%rcx, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB9_2
# BB#1:                                 # %if.then
	jmp	.LBB9_23
.LBB9_2:                                # %if.end
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB9_4
# BB#3:                                 # %if.then.2
	jmp	.LBB9_23
.LBB9_4:                                # %if.end.3
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB9_6
# BB#5:                                 # %if.then.6
	jmp	.LBB9_23
.LBB9_6:                                # %if.end.7
	cmpl	$0, -48(%rbp)
	je	.LBB9_15
# BB#7:                                 # %if.then.9
	leaq	-144(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	(%rcx), %rdx
	movq	%rdx, -144(%rbp)
	movq	8(%rcx), %rdx
	movq	%rdx, -136(%rbp)
	movq	16(%rcx), %rcx
	movq	%rcx, -128(%rbp)
	movq	-64(%rbp), %rcx
	movq	(%rcx), %rdx
	movq	%rdx, -120(%rbp)
	movq	8(%rcx), %rdx
	movq	%rdx, -112(%rbp)
	movq	16(%rcx), %rcx
	movq	%rcx, -104(%rbp)
	movq	-72(%rbp), %rcx
	movq	(%rcx), %rdx
	movq	%rdx, -96(%rbp)
	movq	8(%rcx), %rdx
	movq	%rdx, -88(%rbp)
	movq	16(%rcx), %rcx
	movq	%rcx, -80(%rbp)
	movq	%rax, -56(%rbp)
	movq	%rax, %rcx
	addq	$24, %rcx
	movq	%rcx, -64(%rbp)
	addq	$48, %rax
	movq	%rax, -72(%rbp)
	movl	$0, -196(%rbp)
.LBB9_8:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$3, -196(%rbp)
	jge	.LBB9_14
# BB#9:                                 # %for.body
                                        #   in Loop: Header=BB9_8 Depth=1
	leaq	-144(%rbp), %rax
	movslq	-196(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	cvtsi2sdl	8(%rdx), %xmm0
	movsd	%xmm0, -192(%rbp)
	movslq	-196(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	cvtsi2sdl	12(%rax), %xmm0
	movsd	%xmm0, -184(%rbp)
	cmpl	$0, selvals+120
	je	.LBB9_11
# BB#10:                                # %if.then.23
                                        #   in Loop: Header=BB9_8 Depth=1
	movl	$1, %esi
	leaq	-192(%rbp), %rdi
	callq	scale_to_original_xy
	jmp	.LBB9_12
.LBB9_11:                               # %if.else
                                        #   in Loop: Header=BB9_8 Depth=1
	movl	$1, %esi
	leaq	-192(%rbp), %rdi
	callq	scale_to_xy
.LBB9_12:                               # %if.end.26
                                        #   in Loop: Header=BB9_8 Depth=1
	leaq	-144(%rbp), %rax
	cvttsd2si	-192(%rbp), %ecx
	movslq	-196(%rbp), %rdx
	imulq	$24, %rdx, %rdx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	movl	%ecx, 8(%rsi)
	cvttsd2si	-184(%rbp), %ecx
	movslq	-196(%rbp), %rdx
	imulq	$24, %rdx, %rdx
	addq	%rdx, %rax
	movl	%ecx, 12(%rax)
# BB#13:                                # %for.inc
                                        #   in Loop: Header=BB9_8 Depth=1
	movl	-196(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -196(%rbp)
	jmp	.LBB9_8
.LBB9_14:                               # %for.end
	jmp	.LBB9_15
.LBB9_15:                               # %if.end.39
	movq	-56(%rbp), %rax
	addq	$8, %rax
	movq	-64(%rbp), %rcx
	addq	$8, %rcx
	movq	-72(%rbp), %rdx
	addq	$8, %rdx
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %r8
	movq	%rax, %rdi
	movq	%rsi, -208(%rbp)        # 8-byte Spill
	movq	%rcx, %rsi
	movq	-208(%rbp), %rcx        # 8-byte Reload
	callq	arc_details
	movq	-56(%rbp), %rax
	addq	$8, %rax
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	arc_angle
	movsd	%xmm0, -152(%rbp)
	movq	-64(%rbp), %rax
	addq	$8, %rax
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	arc_angle
	movsd	%xmm0, -160(%rbp)
	movq	-72(%rbp), %rax
	addq	$8, %rax
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	arc_angle
	movsd	%xmm0, -168(%rbp)
	movsd	-152(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -176(%rbp)
	movsd	-168(%rbp), %xmm0       # xmm0 = mem[0],zero
	ucomisd	-176(%rbp), %xmm0
	jbe	.LBB9_17
# BB#16:                                # %if.then.50
	movsd	-168(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -176(%rbp)
.LBB9_17:                               # %if.end.51
	movsd	-152(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	%xmm0, (%rax)
	movsd	-168(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB9_19
# BB#18:                                # %if.then.54
	movsd	-168(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	%xmm0, (%rax)
.LBB9_19:                               # %if.end.55
	movsd	-160(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	ucomisd	(%rax), %xmm0
	jbe	.LBB9_22
# BB#20:                                # %land.lhs.true
	movsd	-160(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-176(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB9_22
# BB#21:                                # %if.then.60
	movsd	-176(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	subsd	(%rax), %xmm0
	movq	-32(%rbp), %rax
	movsd	%xmm0, (%rax)
	jmp	.LBB9_23
.LBB9_22:                               # %if.else.61
	movsd	.LCPI9_0, %xmm0         # xmm0 = mem[0],zero
	movsd	-176(%rbp), %xmm1       # xmm1 = mem[0],zero
	movq	-16(%rbp), %rax
	subsd	(%rax), %xmm1
	subsd	%xmm0, %xmm1
	movq	-32(%rbp), %rax
	movsd	%xmm1, (%rax)
.LBB9_23:                               # %if.end.64
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	arc_drawing_details, .Lfunc_end9-arc_drawing_details
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI10_0:
	.quad	4616189618054758400     # double 4
.LCPI10_1:
	.quad	4611686018427387904     # double 2
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI10_2:
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.text
	.align	16, 0x90
	.type	arc_details,@function
arc_details:                            # @arc_details
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
	subq	$240, %rsp
	xorps	%xmm0, %xmm0
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movsd	%xmm0, -144(%rbp)
	movsd	%xmm0, -152(%rbp)
	movsd	%xmm0, -160(%rbp)
	movsd	%xmm0, -168(%rbp)
	movsd	%xmm0, -176(%rbp)
	movsd	%xmm0, -184(%rbp)
	movl	$0, -188(%rbp)
	movl	$0, -192(%rbp)
	movq	-8(%rbp), %rcx
	cvtsi2sdl	(%rcx), %xmm0
	movsd	%xmm0, -48(%rbp)
	movq	-8(%rbp), %rcx
	cvtsi2sdl	4(%rcx), %xmm0
	movsd	%xmm0, -56(%rbp)
	movq	-16(%rbp), %rcx
	cvtsi2sdl	(%rcx), %xmm0
	movsd	%xmm0, -64(%rbp)
	movq	-16(%rbp), %rcx
	cvtsi2sdl	4(%rcx), %xmm0
	movsd	%xmm0, -72(%rbp)
	movq	-24(%rbp), %rcx
	cvtsi2sdl	(%rcx), %xmm0
	movsd	%xmm0, -80(%rbp)
	movq	-24(%rbp), %rcx
	cvtsi2sdl	4(%rcx), %xmm0
	movsd	%xmm0, -88(%rbp)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-64(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-72(%rbp), %xmm3        # xmm3 = mem[0],zero
	callq	dist
	movsd	%xmm0, -96(%rbp)
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-80(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-88(%rbp), %xmm3        # xmm3 = mem[0],zero
	callq	dist
	movsd	%xmm0, -104(%rbp)
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-88(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-48(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-56(%rbp), %xmm3        # xmm3 = mem[0],zero
	callq	dist
	movsd	.LCPI10_0, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI10_1, %xmm2        # xmm2 = mem[0],zero
	movsd	%xmm0, -112(%rbp)
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	movapd	.LCPI10_2(%rip), %xmm3  # xmm3 = [9223372036854775807,9223372036854775807]
	andpd	%xmm3, %xmm0
	movsd	-104(%rbp), %xmm3       # xmm3 = mem[0],zero
	movapd	.LCPI10_2(%rip), %xmm4  # xmm4 = [9223372036854775807,9223372036854775807]
	andpd	%xmm4, %xmm3
	addsd	%xmm3, %xmm0
	movsd	-112(%rbp), %xmm3       # xmm3 = mem[0],zero
	movapd	.LCPI10_2(%rip), %xmm4  # xmm4 = [9223372036854775807,9223372036854775807]
	andpd	%xmm4, %xmm3
	addsd	%xmm3, %xmm0
	divsd	%xmm2, %xmm0
	movsd	%xmm0, -120(%rbp)
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-120(%rbp), %xmm2       # xmm2 = mem[0],zero
	subsd	-96(%rbp), %xmm2
	mulsd	%xmm2, %xmm0
	movsd	-120(%rbp), %xmm2       # xmm2 = mem[0],zero
	subsd	-104(%rbp), %xmm2
	mulsd	%xmm2, %xmm0
	movsd	-120(%rbp), %xmm2       # xmm2 = mem[0],zero
	subsd	-112(%rbp), %xmm2
	mulsd	%xmm2, %xmm0
	movsd	%xmm1, -232(%rbp)       # 8-byte Spill
	callq	sqrt
	movsd	%xmm0, -128(%rbp)
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-104(%rbp), %xmm0
	mulsd	-112(%rbp), %xmm0
	movsd	-232(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	-128(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -136(%rbp)
	movsd	-136(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-40(%rbp), %rcx
	movsd	%xmm0, (%rcx)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-64(%rbp), %xmm0
	jne	.LBB10_1
	jp	.LBB10_1
	jmp	.LBB10_3
.LBB10_1:                               # %lor.lhs.false
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-80(%rbp), %xmm0
	jne	.LBB10_2
	jp	.LBB10_2
	jmp	.LBB10_3
.LBB10_2:                               # %lor.lhs.false.28
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-64(%rbp), %xmm0
	jne	.LBB10_22
	jp	.LBB10_22
.LBB10_3:                               # %if.then
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-64(%rbp), %xmm0
	jne	.LBB10_14
	jp	.LBB10_14
# BB#4:                                 # %land.lhs.true
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-80(%rbp), %xmm0
	jne	.LBB10_14
	jp	.LBB10_14
# BB#5:                                 # %if.then.35
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -200(%rbp)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -208(%rbp)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-208(%rbp), %xmm0
	jbe	.LBB10_7
# BB#6:                                 # %if.then.38
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -208(%rbp)
.LBB10_7:                               # %if.end
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-200(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB10_9
# BB#8:                                 # %if.then.41
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -200(%rbp)
.LBB10_9:                               # %if.end.42
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-208(%rbp), %xmm0
	jbe	.LBB10_11
# BB#10:                                # %if.then.45
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -208(%rbp)
.LBB10_11:                              # %if.end.46
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-200(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB10_13
# BB#12:                                # %if.then.49
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -200(%rbp)
.LBB10_13:                              # %if.end.50
	movsd	.LCPI10_1, %xmm0        # xmm0 = mem[0],zero
	movsd	-208(%rbp), %xmm1       # xmm1 = mem[0],zero
	subsd	-200(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	addsd	-200(%rbp), %xmm1
	movsd	%xmm1, -184(%rbp)
	jmp	.LBB10_21
.LBB10_14:                              # %if.else
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-64(%rbp), %xmm0
	jne	.LBB10_16
	jp	.LBB10_16
# BB#15:                                # %if.then.56
	movsd	.LCPI10_1, %xmm0        # xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	-72(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	addsd	-72(%rbp), %xmm1
	movsd	%xmm1, -184(%rbp)
	jmp	.LBB10_20
.LBB10_16:                              # %if.else.60
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-80(%rbp), %xmm0
	jne	.LBB10_18
	jp	.LBB10_18
# BB#17:                                # %if.then.63
	movsd	.LCPI10_1, %xmm0        # xmm0 = mem[0],zero
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	-88(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	addsd	-88(%rbp), %xmm1
	movsd	%xmm1, -184(%rbp)
	jmp	.LBB10_19
.LBB10_18:                              # %if.else.67
	movsd	.LCPI10_1, %xmm0        # xmm0 = mem[0],zero
	movsd	-88(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	-56(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	addsd	-56(%rbp), %xmm1
	movsd	%xmm1, -184(%rbp)
.LBB10_19:                              # %if.end.71
	jmp	.LBB10_20
.LBB10_20:                              # %if.end.72
	jmp	.LBB10_21
.LBB10_21:                              # %if.end.73
	movl	$1, -192(%rbp)
.LBB10_22:                              # %if.end.74
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-72(%rbp), %xmm0
	jne	.LBB10_23
	jp	.LBB10_23
	jmp	.LBB10_25
.LBB10_23:                              # %lor.lhs.false.77
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-88(%rbp), %xmm0
	jne	.LBB10_24
	jp	.LBB10_24
	jmp	.LBB10_25
.LBB10_24:                              # %lor.lhs.false.80
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-88(%rbp), %xmm0
	jne	.LBB10_44
	jp	.LBB10_44
.LBB10_25:                              # %if.then.83
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-64(%rbp), %xmm0
	jne	.LBB10_36
	jp	.LBB10_36
# BB#26:                                # %land.lhs.true.86
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-80(%rbp), %xmm0
	jne	.LBB10_36
	jp	.LBB10_36
# BB#27:                                # %if.then.89
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -216(%rbp)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -224(%rbp)
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-224(%rbp), %xmm0
	jbe	.LBB10_29
# BB#28:                                # %if.then.92
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -224(%rbp)
.LBB10_29:                              # %if.end.93
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-216(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB10_31
# BB#30:                                # %if.then.96
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -216(%rbp)
.LBB10_31:                              # %if.end.97
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-224(%rbp), %xmm0
	jbe	.LBB10_33
# BB#32:                                # %if.then.100
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -224(%rbp)
.LBB10_33:                              # %if.end.101
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-216(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB10_35
# BB#34:                                # %if.then.104
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -216(%rbp)
.LBB10_35:                              # %if.end.105
	movsd	.LCPI10_1, %xmm0        # xmm0 = mem[0],zero
	movsd	-224(%rbp), %xmm1       # xmm1 = mem[0],zero
	subsd	-216(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	addsd	-216(%rbp), %xmm1
	movsd	%xmm1, -176(%rbp)
	jmp	.LBB10_43
.LBB10_36:                              # %if.else.109
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-72(%rbp), %xmm0
	jne	.LBB10_38
	jp	.LBB10_38
# BB#37:                                # %if.then.112
	movsd	.LCPI10_1, %xmm0        # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	-64(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	addsd	-64(%rbp), %xmm1
	movsd	%xmm1, -176(%rbp)
	jmp	.LBB10_42
.LBB10_38:                              # %if.else.116
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-88(%rbp), %xmm0
	jne	.LBB10_40
	jp	.LBB10_40
# BB#39:                                # %if.then.119
	movsd	.LCPI10_1, %xmm0        # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	-80(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	addsd	-80(%rbp), %xmm1
	movsd	%xmm1, -176(%rbp)
	jmp	.LBB10_41
.LBB10_40:                              # %if.else.123
	movsd	.LCPI10_1, %xmm0        # xmm0 = mem[0],zero
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	-48(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	addsd	-48(%rbp), %xmm1
	movsd	%xmm1, -176(%rbp)
.LBB10_41:                              # %if.end.127
	jmp	.LBB10_42
.LBB10_42:                              # %if.end.128
	jmp	.LBB10_43
.LBB10_43:                              # %if.end.129
	movl	$1, -188(%rbp)
.LBB10_44:                              # %if.end.130
	cmpl	$0, -188(%rbp)
	je	.LBB10_46
# BB#45:                                # %lor.lhs.false.131
	cmpl	$0, -192(%rbp)
	jne	.LBB10_55
.LBB10_46:                              # %if.then.133
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-64(%rbp), %xmm0
	jne	.LBB10_47
	jp	.LBB10_47
	jmp	.LBB10_49
.LBB10_47:                              # %land.lhs.true.136
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-72(%rbp), %xmm0
	jne	.LBB10_48
	jp	.LBB10_48
	jmp	.LBB10_49
.LBB10_48:                              # %if.then.139
	leaq	-144(%rbp), %rdi
	leaq	-152(%rbp), %rsi
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-64(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-72(%rbp), %xmm3        # xmm3 = mem[0],zero
	callq	line_definition
	jmp	.LBB10_50
.LBB10_49:                              # %if.else.140
	leaq	-144(%rbp), %rdi
	leaq	-152(%rbp), %rsi
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-80(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-88(%rbp), %xmm3        # xmm3 = mem[0],zero
	callq	line_definition
.LBB10_50:                              # %if.end.141
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-80(%rbp), %xmm0
	jne	.LBB10_51
	jp	.LBB10_51
	jmp	.LBB10_53
.LBB10_51:                              # %land.lhs.true.144
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-88(%rbp), %xmm0
	jne	.LBB10_52
	jp	.LBB10_52
	jmp	.LBB10_53
.LBB10_52:                              # %if.then.147
	leaq	-160(%rbp), %rdi
	leaq	-168(%rbp), %rsi
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-80(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-88(%rbp), %xmm3        # xmm3 = mem[0],zero
	callq	line_definition
	jmp	.LBB10_54
.LBB10_53:                              # %if.else.148
	leaq	-160(%rbp), %rdi
	leaq	-168(%rbp), %rsi
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-80(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-88(%rbp), %xmm3        # xmm3 = mem[0],zero
	callq	line_definition
.LBB10_54:                              # %if.end.149
	jmp	.LBB10_55
.LBB10_55:                              # %if.end.150
	cmpl	$0, -188(%rbp)
	jne	.LBB10_57
# BB#56:                                # %if.then.152
	movsd	-168(%rbp), %xmm0       # xmm0 = mem[0],zero
	subsd	-152(%rbp), %xmm0
	movsd	-144(%rbp), %xmm1       # xmm1 = mem[0],zero
	subsd	-160(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -176(%rbp)
.LBB10_57:                              # %if.end.156
	cmpl	$0, -192(%rbp)
	jne	.LBB10_59
# BB#58:                                # %if.then.158
	movsd	-144(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-176(%rbp), %xmm0
	addsd	-152(%rbp), %xmm0
	movsd	%xmm0, -184(%rbp)
.LBB10_59:                              # %if.end.161
	cvttsd2si	-176(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, (%rcx)
	cvttsd2si	-184(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, 4(%rcx)
	addq	$240, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	arc_details, .Lfunc_end10-arc_details
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI11_0:
	.quad	4618760256179416344     # double 6.2831853071795862
.LCPI11_1:
	.quad	4645040803167600640     # double 360
	.text
	.align	16, 0x90
	.type	arc_angle,@function
arc_angle:                              # @arc_angle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp33:
	.cfi_def_cfa_offset 16
.Ltmp34:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp35:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movl	(%rdi), %eax
	movl	(%rsi), %ecx
	subl	%ecx, %eax
	movw	%ax, %dx
	movw	%dx, -18(%rbp)
	movq	-8(%rbp), %rsi
	movl	4(%rsi), %eax
	movq	-16(%rbp), %rsi
	movl	4(%rsi), %ecx
	subl	%eax, %ecx
	movw	%cx, %dx
	movw	%dx, -20(%rbp)
	movswl	%dx, %eax
	cvtsi2sdl	%eax, %xmm0
	movswl	-18(%rbp), %eax
	movw	%ax, %dx
	cvtsi2sdl	%eax, %xmm1
	movw	%dx, -34(%rbp)          # 2-byte Spill
	callq	atan2
	xorps	%xmm1, %xmm1
	movsd	%xmm0, -32(%rbp)
	ucomisd	-32(%rbp), %xmm1
	jbe	.LBB11_2
# BB#1:                                 # %if.then
	movsd	.LCPI11_0, %xmm0        # xmm0 = mem[0],zero
	addsd	-32(%rbp), %xmm0
	movsd	%xmm0, -32(%rbp)
.LBB11_2:                               # %if.end
	movsd	.LCPI11_0, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI11_1, %xmm1        # xmm1 = mem[0],zero
	mulsd	-32(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	arc_angle, .Lfunc_end11-arc_angle
	.cfi_endproc

	.align	16, 0x90
	.type	dist,@function
dist:                                   # @dist
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp36:
	.cfi_def_cfa_offset 16
.Ltmp37:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp38:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movsd	%xmm0, -8(%rbp)
	movsd	%xmm1, -16(%rbp)
	movsd	%xmm2, -24(%rbp)
	movsd	%xmm3, -32(%rbp)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	subsd	-24(%rbp), %xmm0
	movsd	%xmm0, -40(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-32(%rbp), %xmm0
	movsd	%xmm0, -48(%rbp)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-40(%rbp), %xmm0
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-48(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	callq	sqrt
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	dist, .Lfunc_end12-dist
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI13_0:
	.quad	-4616189618054758400    # double -1
	.text
	.align	16, 0x90
	.type	line_definition,@function
line_definition:                        # @line_definition
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp39:
	.cfi_def_cfa_offset 16
.Ltmp40:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp41:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movsd	%xmm0, -8(%rbp)
	movsd	%xmm1, -16(%rbp)
	movsd	%xmm2, -24(%rbp)
	movsd	%xmm3, -32(%rbp)
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-24(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-32(%rbp), %xmm3        # xmm3 = mem[0],zero
	callq	line_grad
	xorps	%xmm1, %xmm1
	movsd	%xmm0, -56(%rbp)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jne	.LBB13_2
	jp	.LBB13_2
# BB#1:                                 # %if.then
	jmp	.LBB13_3
.LBB13_2:                               # %if.end
	leaq	-64(%rbp), %rdi
	leaq	-72(%rbp), %rsi
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-24(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-32(%rbp), %xmm3        # xmm3 = mem[0],zero
	callq	mid_point
	movsd	.LCPI13_0, %xmm0        # xmm0 = mem[0],zero
	divsd	-56(%rbp), %xmm0
	movq	-40(%rbp), %rsi
	movsd	%xmm0, (%rsi)
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-40(%rbp), %rsi
	movsd	(%rsi), %xmm2           # xmm2 = mem[0],zero
	callq	line_cons
	movq	-48(%rbp), %rsi
	movsd	%xmm0, (%rsi)
.LBB13_3:                               # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	line_definition, .Lfunc_end13-line_definition
	.cfi_endproc

	.align	16, 0x90
	.type	line_grad,@function
line_grad:                              # @line_grad
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp42:
	.cfi_def_cfa_offset 16
.Ltmp43:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp44:
	.cfi_def_cfa_register %rbp
	xorps	%xmm4, %xmm4
	movsd	%xmm0, -8(%rbp)
	movsd	%xmm1, -16(%rbp)
	movsd	%xmm2, -24(%rbp)
	movsd	%xmm3, -32(%rbp)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	subsd	-24(%rbp), %xmm0
	movsd	%xmm0, -40(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-32(%rbp), %xmm0
	movsd	%xmm0, -48(%rbp)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	%xmm4, %xmm0
	jne	.LBB14_2
	jp	.LBB14_2
# BB#1:                                 # %cond.true
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
	jmp	.LBB14_3
.LBB14_2:                               # %cond.false
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	divsd	-40(%rbp), %xmm0
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
.LBB14_3:                               # %cond.end
	movsd	-56(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	popq	%rbp
	retq
.Lfunc_end14:
	.size	line_grad, .Lfunc_end14-line_grad
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI15_0:
	.quad	4611686018427387904     # double 2
	.text
	.align	16, 0x90
	.type	mid_point,@function
mid_point:                              # @mid_point
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
	movsd	.LCPI15_0, %xmm4        # xmm4 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
	movsd	%xmm1, -16(%rbp)
	movsd	%xmm2, -24(%rbp)
	movsd	%xmm3, -32(%rbp)
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	addsd	-24(%rbp), %xmm0
	divsd	%xmm4, %xmm0
	movq	-40(%rbp), %rsi
	movsd	%xmm0, (%rsi)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	addsd	-32(%rbp), %xmm0
	divsd	%xmm4, %xmm0
	movq	-48(%rbp), %rsi
	movsd	%xmm0, (%rsi)
	popq	%rbp
	retq
.Lfunc_end15:
	.size	mid_point, .Lfunc_end15-mid_point
	.cfi_endproc

	.align	16, 0x90
	.type	line_cons,@function
line_cons:                              # @line_cons
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp48:
	.cfi_def_cfa_offset 16
.Ltmp49:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp50:
	.cfi_def_cfa_register %rbp
	movsd	%xmm0, -8(%rbp)
	movsd	%xmm1, -16(%rbp)
	movsd	%xmm2, -24(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-8(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	popq	%rbp
	retq
.Lfunc_end16:
	.size	line_cons, .Lfunc_end16-line_cons
	.cfi_endproc

	.align	16, 0x90
	.type	d_update_arc_line,@function
d_update_arc_line:                      # @d_update_arc_line
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp51:
	.cfi_def_cfa_offset 16
.Ltmp52:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp53:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	obj_creating, %rdi
	movq	24(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB17_2
# BB#1:                                 # %if.then
	jmp	.LBB17_5
.LBB17_2:                               # %if.end
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, %rax
	je	.LBB17_4
# BB#3:                                 # %if.then.2
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
.LBB17_4:                               # %if.end.3
	movq	-8(%rbp), %rax
	movl	(%rax), %edi
	movq	-8(%rbp), %rax
	movl	4(%rax), %esi
	callq	new_dobjpoint
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB17_5:                               # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	d_update_arc_line, .Lfunc_end17-d_update_arc_line
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"ARC"
	.size	.L.str, 4

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"gfig-arc.c"
	.size	.L.str.1, 11

	.type	.L__func__.d_draw_arc,@object # @__func__.d_draw_arc
.L__func__.d_draw_arc:
	.asciz	"d_draw_arc"
	.size	.L__func__.d_draw_arc, 11

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"obj != NULL"
	.size	.L.str.2, 12

	.type	.L__func__.d_paint_arc,@object # @__func__.d_paint_arc
.L__func__.d_paint_arc:
	.asciz	"d_paint_arc"
	.size	.L__func__.d_paint_arc, 12

	.type	.L__func__.d_copy_arc,@object # @__func__.d_copy_arc
.L__func__.d_copy_arc:
	.asciz	"d_copy_arc"
	.size	.L__func__.d_copy_arc, 11

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"obj->type == ARC"
	.size	.L.str.3, 17


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
