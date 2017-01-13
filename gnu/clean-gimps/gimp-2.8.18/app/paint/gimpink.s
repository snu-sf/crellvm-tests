	.text
	.file	"gimpink.bc"
	.globl	gimp_ink_get_type
	.align	16, 0x90
	.type	gimp_ink_get_type,@function
gimp_ink_get_type:                      # @gimp_ink_get_type
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
	subq	$80, %rsp
	xorl	%eax, %eax
	movb	%al, %cl
	mfence
	movq	gimp_ink_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_ink_get_type.g_define_type_id__volatile, %rax
	movq	%rax, %rdi
	callq	g_once_init_enter
	cmpl	$0, %eax
	setne	%cl
	movb	%cl, -25(%rbp)          # 1-byte Spill
.LBB0_2:                                # %land.end
	movb	-25(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.LBB0_4
# BB#3:                                 # %if.then
	callq	gimp_paint_core_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$216, %edx
	movabsq	$gimp_ink_class_intern_init, %rdi
	movl	$376, %r8d              # imm = 0x178
	movabsq	$gimp_ink_init, %rcx
	xorl	%esi, %esi
	movq	-40(%rbp), %r9          # 8-byte Reload
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%esi, -52(%rbp)         # 4-byte Spill
	movq	%rax, %rsi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rcx
	movq	-64(%rbp), %r9          # 8-byte Reload
	movl	$0, (%rsp)
	callq	g_type_register_static_simple
	movabsq	$gimp_ink_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_ink_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_ink_get_type, .Lfunc_end0-gimp_ink_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_ink_class_intern_init,@function
gimp_ink_class_intern_init:             # @gimp_ink_class_intern_init
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_class_peek_parent
	movq	%rax, gimp_ink_parent_class
	cmpl	$0, GimpInk_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpInk_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_ink_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_ink_class_intern_init, .Lfunc_end1-gimp_ink_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_ink_init,@function
gimp_ink_init:                          # @gimp_ink_init
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
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_ink_init, .Lfunc_end2-gimp_ink_init
	.cfi_endproc

	.globl	gimp_ink_register
	.align	16, 0x90
	.type	gimp_ink_register,@function
gimp_ink_register:                      # @gimp_ink_register
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_ink_get_type
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_ink_options_get_type
	movabsq	$.L.str.2, %rdi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.1, %rcx
	movabsq	$.L.str.3, %r9
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	-40(%rbp), %rsi         # 8-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	%rax, %r8
	movq	-24(%rbp), %rax         # 8-byte Reload
	callq	*%rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_ink_register, .Lfunc_end3-gimp_ink_register
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_ink_class_init,@function
gimp_ink_class_init:                    # @gimp_ink_class_init
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
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_paint_core_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$gimp_ink_push_undo, %rsi
	movabsq	$gimp_ink_get_paint_area, %rdi
	movabsq	$gimp_ink_paint, %rcx
	movabsq	$gimp_ink_finalize, %rdx
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rdx, 48(%rax)
	movq	-24(%rbp), %rax
	movq	%rcx, 176(%rax)
	movq	-24(%rbp), %rax
	movq	%rdi, 200(%rax)
	movq	-24(%rbp), %rax
	movq	%rsi, 208(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_ink_class_init, .Lfunc_end4-gimp_ink_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_ink_finalize,@function
gimp_ink_finalize:                      # @gimp_ink_finalize
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_ink_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 352(%rax)
	je	.LBB5_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	352(%rax), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	$0, 352(%rax)
.LBB5_2:                                # %if.end
	movq	-16(%rbp), %rax
	cmpq	$0, 368(%rax)
	je	.LBB5_4
# BB#3:                                 # %if.then.5
	movq	-16(%rbp), %rax
	movq	368(%rax), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	$0, 368(%rax)
.LBB5_4:                                # %if.end.8
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_ink_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_ink_finalize, .Lfunc_end5-gimp_ink_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_ink_paint,@function
gimp_ink_paint:                         # @gimp_ink_paint
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movl	%r9d, -40(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	callq	gimp_ink_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rdi
	leaq	-112(%rbp), %rsi
	callq	gimp_paint_core_get_last_coords
	movl	-36(%rbp), %r8d
	testl	%r8d, %r8d
	movl	%r8d, -124(%rbp)        # 4-byte Spill
	je	.LBB6_1
	jmp	.LBB6_17
.LBB6_17:                               # %entry
	movl	-124(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -128(%rbp)        # 4-byte Spill
	je	.LBB6_14
	jmp	.LBB6_18
.LBB6_18:                               # %entry
	movl	-124(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -132(%rbp)        # 4-byte Spill
	je	.LBB6_15
	jmp	.LBB6_16
.LBB6_1:                                # %sw.bb
	movq	-32(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	ucomisd	-112(%rbp), %xmm0
	jne	.LBB6_8
	jp	.LBB6_8
# BB#2:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	ucomisd	-104(%rbp), %xmm0
	jne	.LBB6_8
	jp	.LBB6_8
# BB#3:                                 # %if.then
	movq	-48(%rbp), %rax
	cmpq	$0, 352(%rax)
	je	.LBB6_5
# BB#4:                                 # %if.then.5
	movq	-48(%rbp), %rax
	movq	352(%rax), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-48(%rbp), %rax
	movq	$0, 352(%rax)
.LBB6_5:                                # %if.end
	movq	-48(%rbp), %rax
	cmpq	$0, 368(%rax)
	je	.LBB6_7
# BB#6:                                 # %if.then.9
	movq	-48(%rbp), %rax
	movq	368(%rax), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-48(%rbp), %rax
	movq	$0, 368(%rax)
.LBB6_7:                                # %if.end.12
	jmp	.LBB6_13
.LBB6_8:                                # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, 368(%rax)
	je	.LBB6_12
# BB#9:                                 # %if.then.15
	movq	-48(%rbp), %rax
	cmpq	$0, 352(%rax)
	je	.LBB6_11
# BB#10:                                # %if.then.18
	movq	-48(%rbp), %rax
	movq	352(%rax), %rax
	movq	%rax, %rdi
	callq	g_free
.LBB6_11:                               # %if.end.20
	movq	-48(%rbp), %rax
	movq	368(%rax), %rdi
	callq	gimp_blob_duplicate
	movq	-48(%rbp), %rdi
	movq	%rax, 352(%rdi)
.LBB6_12:                               # %if.end.24
	jmp	.LBB6_13
.LBB6_13:                               # %if.end.25
	jmp	.LBB6_16
.LBB6_14:                               # %sw.bb.26
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movl	-40(%rbp), %r8d
	callq	gimp_ink_motion
	jmp	.LBB6_16
.LBB6_15:                               # %sw.bb.27
	jmp	.LBB6_16
.LBB6_16:                               # %sw.epilog
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_ink_paint, .Lfunc_end6-gimp_ink_paint
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_ink_get_paint_area,@function
gimp_ink_get_paint_area:                # @gimp_ink_get_paint_area
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
	subq	$192, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	-16(%rbp), %rcx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	callq	gimp_ink_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_drawable_bytes_with_alpha
	leaq	-52(%rbp), %rsi
	leaq	-56(%rbp), %rdx
	leaq	-60(%rbp), %rcx
	leaq	-64(%rbp), %r8
	movl	%eax, -92(%rbp)
	movq	-48(%rbp), %rdi
	movq	360(%rdi), %rdi
	callq	gimp_blob_bounds
	movq	-24(%rbp), %rcx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movl	%eax, -68(%rbp)
	movq	-24(%rbp), %rcx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	movl	$8, %r9d
	movl	%eax, -72(%rbp)
	movl	-52(%rbp), %eax
	cltd
	idivl	%r9d
	subl	$1, %eax
	cmpl	-68(%rbp), %eax
	jle	.LBB7_2
# BB#1:                                 # %cond.true
	movl	-68(%rbp), %eax
	movl	%eax, -124(%rbp)        # 4-byte Spill
	jmp	.LBB7_6
.LBB7_2:                                # %cond.false
	movl	$8, %eax
	movl	-52(%rbp), %ecx
	movl	%eax, -128(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-128(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB7_4
# BB#3:                                 # %cond.true.12
	xorl	%eax, %eax
	movl	%eax, -132(%rbp)        # 4-byte Spill
	jmp	.LBB7_5
.LBB7_4:                                # %cond.false.13
	movl	$8, %eax
	movl	-52(%rbp), %ecx
	movl	%eax, -136(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-136(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	subl	$1, %eax
	movl	%eax, -132(%rbp)        # 4-byte Spill
.LBB7_5:                                # %cond.end
	movl	-132(%rbp), %eax        # 4-byte Reload
	movl	%eax, -124(%rbp)        # 4-byte Spill
.LBB7_6:                                # %cond.end.16
	movl	-124(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	movl	%eax, -76(%rbp)
	movl	-56(%rbp), %eax
	cltd
	idivl	%ecx
	subl	$1, %eax
	cmpl	-72(%rbp), %eax
	jle	.LBB7_8
# BB#7:                                 # %cond.true.21
	movl	-72(%rbp), %eax
	movl	%eax, -140(%rbp)        # 4-byte Spill
	jmp	.LBB7_12
.LBB7_8:                                # %cond.false.22
	movl	$8, %eax
	movl	-56(%rbp), %ecx
	movl	%eax, -144(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-144(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB7_10
# BB#9:                                 # %cond.true.26
	xorl	%eax, %eax
	movl	%eax, -148(%rbp)        # 4-byte Spill
	jmp	.LBB7_11
.LBB7_10:                               # %cond.false.27
	movl	$8, %eax
	movl	-56(%rbp), %ecx
	movl	%eax, -152(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-152(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	subl	$1, %eax
	movl	%eax, -148(%rbp)        # 4-byte Spill
.LBB7_11:                               # %cond.end.30
	movl	-148(%rbp), %eax        # 4-byte Reload
	movl	%eax, -140(%rbp)        # 4-byte Spill
.LBB7_12:                               # %cond.end.32
	movl	-140(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	movl	%eax, -80(%rbp)
	movl	-52(%rbp), %eax
	addl	-60(%rbp), %eax
	cltd
	idivl	%ecx
	addl	$2, %eax
	cmpl	-68(%rbp), %eax
	jle	.LBB7_14
# BB#13:                                # %cond.true.37
	movl	-68(%rbp), %eax
	movl	%eax, -156(%rbp)        # 4-byte Spill
	jmp	.LBB7_18
.LBB7_14:                               # %cond.false.38
	movl	$8, %eax
	movl	-52(%rbp), %ecx
	addl	-60(%rbp), %ecx
	movl	%eax, -160(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-160(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	addl	$2, %eax
	cmpl	$0, %eax
	jge	.LBB7_16
# BB#15:                                # %cond.true.43
	xorl	%eax, %eax
	movl	%eax, -164(%rbp)        # 4-byte Spill
	jmp	.LBB7_17
.LBB7_16:                               # %cond.false.44
	movl	$8, %eax
	movl	-52(%rbp), %ecx
	addl	-60(%rbp), %ecx
	movl	%eax, -168(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-168(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	addl	$2, %eax
	movl	%eax, -164(%rbp)        # 4-byte Spill
.LBB7_17:                               # %cond.end.48
	movl	-164(%rbp), %eax        # 4-byte Reload
	movl	%eax, -156(%rbp)        # 4-byte Spill
.LBB7_18:                               # %cond.end.50
	movl	-156(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	movl	%eax, -84(%rbp)
	movl	-56(%rbp), %eax
	addl	-64(%rbp), %eax
	cltd
	idivl	%ecx
	addl	$2, %eax
	cmpl	-72(%rbp), %eax
	jle	.LBB7_20
# BB#19:                                # %cond.true.56
	movl	-72(%rbp), %eax
	movl	%eax, -172(%rbp)        # 4-byte Spill
	jmp	.LBB7_24
.LBB7_20:                               # %cond.false.57
	movl	$8, %eax
	movl	-56(%rbp), %ecx
	addl	-64(%rbp), %ecx
	movl	%eax, -176(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-176(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	addl	$2, %eax
	cmpl	$0, %eax
	jge	.LBB7_22
# BB#21:                                # %cond.true.62
	xorl	%eax, %eax
	movl	%eax, -180(%rbp)        # 4-byte Spill
	jmp	.LBB7_23
.LBB7_22:                               # %cond.false.63
	movl	$8, %eax
	movl	-56(%rbp), %ecx
	addl	-64(%rbp), %ecx
	movl	%eax, -184(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-184(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	addl	$2, %eax
	movl	%eax, -180(%rbp)        # 4-byte Spill
.LBB7_23:                               # %cond.end.67
	movl	-180(%rbp), %eax        # 4-byte Reload
	movl	%eax, -172(%rbp)        # 4-byte Spill
.LBB7_24:                               # %cond.end.69
	movl	-172(%rbp), %eax        # 4-byte Reload
	movl	%eax, -88(%rbp)
	movl	-84(%rbp), %eax
	subl	-76(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB7_27
# BB#25:                                # %land.lhs.true
	movl	-88(%rbp), %eax
	subl	-80(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB7_27
# BB#26:                                # %if.then
	movq	-16(%rbp), %rax
	movq	336(%rax), %rdi
	movl	-92(%rbp), %esi
	movl	-76(%rbp), %edx
	movl	-80(%rbp), %ecx
	movl	-84(%rbp), %r8d
	subl	-76(%rbp), %r8d
	movl	-88(%rbp), %r9d
	subl	-80(%rbp), %r9d
	callq	temp_buf_resize
	movq	-16(%rbp), %rdi
	movq	%rax, 336(%rdi)
	jmp	.LBB7_28
.LBB7_27:                               # %if.else
	movq	$0, -8(%rbp)
	jmp	.LBB7_29
.LBB7_28:                               # %if.end
	movq	-16(%rbp), %rax
	movq	336(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB7_29:                               # %return
	movq	-8(%rbp), %rax
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_ink_get_paint_area, .Lfunc_end7-gimp_ink_get_paint_area
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_ink_push_undo,@function
gimp_ink_push_undo:                     # @gimp_ink_push_undo
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_ink_undo_get_type
	movl	$76, %edx
	xorl	%r8d, %r8d
	movabsq	$.L.str.7, %r9
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %r10         # 8-byte Reload
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%r10, %rdi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, %al
	callq	gimp_image_undo_push
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_ink_push_undo, .Lfunc_end8-gimp_ink_push_undo
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI9_0:
	.quad	4636737291354636288     # double 100
.LCPI9_1:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gimp_ink_motion,@function
gimp_ink_motion:                        # @gimp_ink_motion
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
	subq	$272, %rsp              # imm = 0x110
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	callq	gimp_ink_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gimp_ink_options_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gimp_context_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -64(%rbp)
	movq	$0, -80(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	movq	%rax, -72(%rbp)
	movq	-48(%rbp), %rax
	cmpq	$0, 368(%rax)
	jne	.LBB9_4
# BB#1:                                 # %if.then
	movsd	.LCPI9_0, %xmm5         # xmm5 = mem[0],zero
	movq	-56(%rbp), %rdi
	movq	-32(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	movq	-32(%rbp), %rax
	movsd	16(%rax), %xmm2         # xmm2 = mem[0],zero
	movq	-32(%rbp), %rax
	movsd	24(%rax), %xmm3         # xmm3 = mem[0],zero
	movq	-32(%rbp), %rax
	movsd	32(%rax), %xmm4         # xmm4 = mem[0],zero
	callq	ink_pen_ellipse
	movq	-48(%rbp), %rdi
	movq	%rax, 368(%rdi)
	movq	-48(%rbp), %rax
	cmpq	$0, 352(%rax)
	je	.LBB9_3
# BB#2:                                 # %if.then.12
	movq	-48(%rbp), %rax
	movq	352(%rax), %rax
	movq	%rax, %rdi
	callq	g_free
.LBB9_3:                                # %if.end
	movq	-48(%rbp), %rax
	movq	368(%rax), %rdi
	callq	gimp_blob_duplicate
	movq	-48(%rbp), %rdi
	movq	%rax, 352(%rdi)
	movq	-48(%rbp), %rax
	movq	368(%rax), %rax
	movq	%rax, -88(%rbp)
	jmp	.LBB9_5
.LBB9_4:                                # %if.else
	movsd	.LCPI9_0, %xmm0         # xmm0 = mem[0],zero
	movq	-56(%rbp), %rdi
	movq	-32(%rbp), %rax
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	movq	-32(%rbp), %rax
	movsd	8(%rax), %xmm2          # xmm2 = mem[0],zero
	movq	-32(%rbp), %rax
	movsd	16(%rax), %xmm3         # xmm3 = mem[0],zero
	movq	-32(%rbp), %rax
	movsd	24(%rax), %xmm4         # xmm4 = mem[0],zero
	movq	-32(%rbp), %rax
	movsd	32(%rax), %xmm5         # xmm5 = mem[0],zero
	movq	-32(%rbp), %rax
	mulsd	48(%rax), %xmm0
	movsd	%xmm0, -216(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	movaps	%xmm3, %xmm2
	movaps	%xmm4, %xmm3
	movaps	%xmm5, %xmm4
	movsd	-216(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	callq	ink_pen_ellipse
	movq	%rax, -176(%rbp)
	movq	-48(%rbp), %rax
	movq	368(%rax), %rdi
	movq	-176(%rbp), %rsi
	callq	gimp_blob_convex_union
	movq	%rax, -80(%rbp)
	movq	-48(%rbp), %rax
	movq	368(%rax), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-176(%rbp), %rax
	movq	-48(%rbp), %rsi
	movq	%rax, 368(%rsi)
	movq	-80(%rbp), %rax
	movq	%rax, -88(%rbp)
.LBB9_5:                                # %if.end.28
	movq	-88(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, 360(%rcx)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	callq	gimp_paint_core_get_paint_area
	movq	%rax, -96(%rbp)
	movq	-48(%rbp), %rax
	movq	$0, 360(%rax)
	cmpq	$0, -96(%rbp)
	jne	.LBB9_7
# BB#6:                                 # %if.then.32
	jmp	.LBB9_9
.LBB9_7:                                # %if.end.33
	movq	-72(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdi, -224(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -232(%rbp)        # 8-byte Spill
	callq	gimp_drawable_type
	leaq	-100(%rbp), %rcx
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	-232(%rbp), %rsi        # 8-byte Reload
	movl	%eax, %edx
	callq	gimp_image_get_foreground
	movq	-8(%rbp), %rcx
	movq	336(%rcx), %rcx
	movl	(%rcx), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movb	$-1, -100(%rbp,%rcx)
	movq	-8(%rbp), %rcx
	movq	336(%rcx), %rdi
	callq	temp_buf_get_data
	leaq	-100(%rbp), %rsi
	movq	-96(%rbp), %rcx
	movl	4(%rcx), %edx
	movq	-96(%rbp), %rcx
	imull	8(%rcx), %edx
	movq	-96(%rbp), %rcx
	movl	(%rcx), %ecx
	movq	%rax, %rdi
	callq	color_pixels
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	336(%rax), %rax
	movl	12(%rax), %esi
	movq	-8(%rbp), %rax
	movq	336(%rax), %rax
	movl	16(%rax), %edx
	movq	-8(%rbp), %rax
	movq	336(%rax), %rax
	movl	4(%rax), %ecx
	movq	-8(%rbp), %rax
	movq	336(%rax), %rax
	movl	8(%rax), %r8d
	callq	gimp_paint_core_validate_canvas_tiles
	leaq	-168(%rbp), %rdi
	movl	$1, %ecx
	movq	-8(%rbp), %rax
	movq	312(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	336(%rax), %rax
	movl	12(%rax), %edx
	movq	-8(%rbp), %rax
	movq	336(%rax), %rax
	movl	16(%rax), %r8d
	movq	-8(%rbp), %rax
	movq	336(%rax), %rax
	movl	4(%rax), %r9d
	movq	-8(%rbp), %rax
	movq	336(%rax), %rax
	movl	8(%rax), %r10d
	movl	%ecx, -236(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$1, (%rsp)
	callq	pixel_region_init
	leaq	-168(%rbp), %rsi
	movq	-88(%rbp), %rdi
	callq	render_blob
	leaq	-168(%rbp), %rdi
	xorl	%ecx, %ecx
	movq	-8(%rbp), %rax
	movq	312(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	336(%rax), %rax
	movl	12(%rax), %edx
	movq	-8(%rbp), %rax
	movq	336(%rax), %rax
	movl	16(%rax), %r8d
	movq	-8(%rbp), %rax
	movq	336(%rax), %rax
	movl	4(%rax), %r9d
	movq	-8(%rbp), %rax
	movq	336(%rax), %rax
	movl	8(%rax), %r10d
	movl	%ecx, -240(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$0, (%rsp)
	callq	pixel_region_init
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdi, -248(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rdx, -256(%rbp)        # 8-byte Spill
	callq	gimp_context_get_opacity
	movq	-64(%rbp), %rdi
	movsd	%xmm0, -264(%rbp)       # 8-byte Spill
	callq	gimp_context_get_paint_mode
	leaq	-168(%rbp), %rsi
	movsd	.LCPI9_1, %xmm0         # xmm0 = mem[0],zero
	xorl	%r8d, %r8d
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	-256(%rbp), %rdx        # 8-byte Reload
	movsd	-264(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	%eax, %ecx
	callq	gimp_paint_core_paste
	cmpq	$0, -80(%rbp)
	je	.LBB9_9
# BB#8:                                 # %if.then.68
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
.LBB9_9:                                # %if.end.69
	addq	$272, %rsp              # imm = 0x110
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_ink_motion, .Lfunc_end9-gimp_ink_motion
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI10_0:
	.quad	4613937818241073152     # double 3
.LCPI10_1:
	.quad	4607182418800017408     # double 1
.LCPI10_2:
	.quad	4611686018427387904     # double 2
.LCPI10_3:
	.quad	4616752568008179712     # double 4.5
.LCPI10_4:
	.quad	4620693217682128896     # double 8
.LCPI10_5:
	.quad	4593671619917905920     # double 0.125
.LCPI10_6:
	.quad	4645040803167600640     # double 360
.LCPI10_7:
	.quad	4618760256179416344     # double 6.2831853071795862
.LCPI10_8:
	.quad	4621819117588971520     # double 10
	.text
	.align	16, 0x90
	.type	ink_pen_ellipse,@function
ink_pen_ellipse:                        # @ink_pen_ellipse
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
	subq	$256, %rsp              # imm = 0x100
	movsd	.LCPI10_0, %xmm6        # xmm6 = mem[0],zero
	movsd	.LCPI10_1, %xmm7        # xmm7 = mem[0],zero
	movsd	.LCPI10_2, %xmm8        # xmm8 = mem[0],zero
	movq	%rdi, -16(%rbp)
	movsd	%xmm0, -24(%rbp)
	movsd	%xmm1, -32(%rbp)
	movsd	%xmm2, -40(%rbp)
	movsd	%xmm3, -48(%rbp)
	movsd	%xmm4, -56(%rbp)
	movsd	%xmm5, -64(%rbp)
	movq	-16(%rbp), %rdi
	movsd	472(%rdi), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rdi
	movsd	488(%rdi), %xmm1        # xmm1 = mem[0],zero
	mulsd	-40(%rbp), %xmm8
	subsd	%xmm7, %xmm8
	mulsd	%xmm8, %xmm1
	addsd	%xmm1, %xmm7
	mulsd	%xmm7, %xmm0
	movsd	%xmm0, -80(%rbp)
	ucomisd	-64(%rbp), %xmm6
	jbe	.LBB10_2
# BB#1:                                 # %if.then
	movsd	.LCPI10_0, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -64(%rbp)
.LBB10_2:                               # %if.end
	movsd	.LCPI10_1, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI10_2, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI10_3, %xmm2        # xmm2 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	496(%rax), %xmm3        # xmm3 = mem[0],zero
	mulsd	-80(%rbp), %xmm2
	movq	-16(%rbp), %rax
	movsd	496(%rax), %xmm4        # xmm4 = mem[0],zero
	mulsd	-64(%rbp), %xmm1
	mulsd	%xmm1, %xmm4
	movaps	%xmm0, %xmm1
	addsd	%xmm4, %xmm1
	divsd	%xmm1, %xmm2
	mulsd	%xmm2, %xmm3
	movq	-16(%rbp), %rax
	movaps	%xmm0, %xmm1
	subsd	496(%rax), %xmm1
	mulsd	-80(%rbp), %xmm1
	addsd	%xmm1, %xmm3
	movsd	%xmm3, -80(%rbp)
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	472(%rax), %xmm2        # xmm2 = mem[0],zero
	movq	-16(%rbp), %rax
	addsd	488(%rax), %xmm0
	mulsd	%xmm0, %xmm2
	ucomisd	%xmm2, %xmm1
	jbe	.LBB10_4
# BB#3:                                 # %if.then.19
	movsd	.LCPI10_1, %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	472(%rax), %xmm1        # xmm1 = mem[0],zero
	movq	-16(%rbp), %rax
	addsd	488(%rax), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -80(%rbp)
.LBB10_4:                               # %if.end.24
	movsd	.LCPI10_1, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI10_4, %xmm1        # xmm1 = mem[0],zero
	mulsd	-80(%rbp), %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB10_6
# BB#5:                                 # %if.then.27
	movsd	.LCPI10_5, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -80(%rbp)
.LBB10_6:                               # %if.end.28
	xorps	%xmm0, %xmm0
	movsd	.LCPI10_6, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI10_7, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI10_8, %xmm3        # xmm3 = mem[0],zero
	movq	-16(%rbp), %rax
	mulsd	504(%rax), %xmm3
	movsd	%xmm3, -136(%rbp)
	movsd	-136(%rbp), %xmm3       # xmm3 = mem[0],zero
	movq	-16(%rbp), %rax
	movaps	%xmm2, %xmm4
	mulsd	480(%rax), %xmm4
	divsd	%xmm1, %xmm4
	movsd	%xmm0, -160(%rbp)       # 8-byte Spill
	movaps	%xmm4, %xmm0
	movsd	%xmm3, -168(%rbp)       # 8-byte Spill
	movsd	%xmm1, -176(%rbp)       # 8-byte Spill
	movsd	%xmm2, -184(%rbp)       # 8-byte Spill
	callq	cos
	movsd	-168(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -144(%rbp)
	movsd	-136(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	-184(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	480(%rax), %xmm1
	movsd	-176(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	divsd	%xmm2, %xmm1
	movsd	%xmm0, -192(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	sin
	movsd	-192(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -152(%rbp)
	movq	-16(%rbp), %rax
	movsd	520(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	528(%rax), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -200(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	cos
	movsd	-200(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-144(%rbp), %xmm0
	addsd	%xmm0, %xmm1
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-152(%rbp), %xmm0
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -120(%rbp)
	movq	-16(%rbp), %rax
	movsd	520(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	528(%rax), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -208(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	sin
	movsd	-208(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-144(%rbp), %xmm0
	addsd	%xmm0, %xmm1
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-152(%rbp), %xmm0
	addsd	%xmm0, %xmm1
	movsd	%xmm1, -128(%rbp)
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-120(%rbp), %xmm0
	movsd	-128(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-128(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	callq	sqrt
	movsd	%xmm0, -104(%rbp)
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-160(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jne	.LBB10_7
	jp	.LBB10_7
	jmp	.LBB10_8
.LBB10_7:                               # %if.then.57
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	divsd	-104(%rbp), %xmm0
	movsd	%xmm0, -96(%rbp)
	movsd	-128(%rbp), %xmm0       # xmm0 = mem[0],zero
	divsd	-104(%rbp), %xmm0
	movsd	%xmm0, -88(%rbp)
	jmp	.LBB10_9
.LBB10_8:                               # %if.else
	movq	-16(%rbp), %rax
	movsd	528(%rax), %xmm0        # xmm0 = mem[0],zero
	callq	sin
	movsd	%xmm0, -88(%rbp)
	movq	-16(%rbp), %rax
	movsd	528(%rax), %xmm0        # xmm0 = mem[0],zero
	callq	cos
	movsd	%xmm0, -96(%rbp)
.LBB10_9:                               # %if.end.64
	movsd	.LCPI10_8, %xmm0        # xmm0 = mem[0],zero
	movsd	-104(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB10_11
# BB#10:                                # %cond.true
	movsd	.LCPI10_8, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -216(%rbp)       # 8-byte Spill
	jmp	.LBB10_15
.LBB10_11:                              # %cond.false
	movsd	.LCPI10_1, %xmm0        # xmm0 = mem[0],zero
	ucomisd	-104(%rbp), %xmm0
	jbe	.LBB10_13
# BB#12:                                # %cond.true.67
	movsd	.LCPI10_1, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -224(%rbp)       # 8-byte Spill
	jmp	.LBB10_14
.LBB10_13:                              # %cond.false.68
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -224(%rbp)       # 8-byte Spill
.LBB10_14:                              # %cond.end
	movsd	-224(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -216(%rbp)       # 8-byte Spill
.LBB10_15:                              # %cond.end.69
	movsd	-216(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI10_1, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI10_4, %xmm2        # xmm2 = mem[0],zero
	movsd	%xmm0, -104(%rbp)
	mulsd	-80(%rbp), %xmm2
	divsd	-104(%rbp), %xmm2
	ucomisd	%xmm2, %xmm1
	jbe	.LBB10_17
# BB#16:                                # %cond.true.74
	movsd	.LCPI10_1, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -232(%rbp)       # 8-byte Spill
	jmp	.LBB10_18
.LBB10_17:                              # %cond.false.75
	movsd	.LCPI10_4, %xmm0        # xmm0 = mem[0],zero
	mulsd	-80(%rbp), %xmm0
	divsd	-104(%rbp), %xmm0
	movsd	%xmm0, -232(%rbp)       # 8-byte Spill
.LBB10_18:                              # %cond.end.78
	movsd	-232(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -112(%rbp)
	movq	-16(%rbp), %rax
	movl	512(%rax), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -236(%rbp)        # 4-byte Spill
	je	.LBB10_19
	jmp	.LBB10_26
.LBB10_26:                              # %cond.end.78
	movl	-236(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -240(%rbp)        # 4-byte Spill
	je	.LBB10_20
	jmp	.LBB10_27
.LBB10_27:                              # %cond.end.78
	movl	-236(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -244(%rbp)        # 4-byte Spill
	je	.LBB10_21
	jmp	.LBB10_22
.LBB10_19:                              # %sw.bb
	movabsq	$gimp_blob_ellipse, %rax
	movq	%rax, -72(%rbp)
	jmp	.LBB10_24
.LBB10_20:                              # %sw.bb.80
	movabsq	$gimp_blob_square, %rax
	movq	%rax, -72(%rbp)
	jmp	.LBB10_24
.LBB10_21:                              # %sw.bb.81
	movabsq	$gimp_blob_diamond, %rax
	movq	%rax, -72(%rbp)
	jmp	.LBB10_24
.LBB10_22:                              # %sw.default
	jmp	.LBB10_23
.LBB10_23:                              # %do.body
	movabsq	$.L.str.4, %rdi
	movl	$8, %esi
	movabsq	$.L.str.5, %rdx
	movabsq	$.L.str.6, %rcx
	movl	$455, %r8d              # imm = 0x1C7
	movabsq	$.L__func__.ink_pen_ellipse, %r9
	movb	$0, %al
	callq	g_log
	movq	$0, -8(%rbp)
	jmp	.LBB10_25
.LBB10_24:                              # %sw.epilog
	movsd	.LCPI10_4, %xmm0        # xmm0 = mem[0],zero
	movq	-72(%rbp), %rax
	movaps	%xmm0, %xmm1
	mulsd	-24(%rbp), %xmm1
	mulsd	-32(%rbp), %xmm0
	movsd	-112(%rbp), %xmm2       # xmm2 = mem[0],zero
	mulsd	-104(%rbp), %xmm2
	mulsd	-96(%rbp), %xmm2
	movsd	-112(%rbp), %xmm3       # xmm3 = mem[0],zero
	mulsd	-104(%rbp), %xmm3
	mulsd	-88(%rbp), %xmm3
	movsd	-112(%rbp), %xmm4       # xmm4 = mem[0],zero
	movd	%xmm4, %rcx
	movabsq	$-9223372036854775808, %rdx # imm = 0x8000000000000000
	xorq	%rdx, %rcx
	movd	%rcx, %xmm4
	mulsd	-88(%rbp), %xmm4
	movsd	-112(%rbp), %xmm5       # xmm5 = mem[0],zero
	mulsd	-96(%rbp), %xmm5
	movsd	%xmm0, -256(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-256(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	*%rax
	movq	%rax, -8(%rbp)
.LBB10_25:                              # %return
	movq	-8(%rbp), %rax
	addq	$256, %rsp              # imm = 0x100
	popq	%rbp
	retq
.Lfunc_end10:
	.size	ink_pen_ellipse, .Lfunc_end10-ink_pen_ellipse
	.cfi_endproc

	.align	16, 0x90
	.type	render_blob,@function
render_blob:                            # @render_blob
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
	movl	$1, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movl	%eax, %edi
	movb	$0, %al
	callq	pixel_regions_register
	movq	%rax, -24(%rbp)
.LBB11_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_3 Depth 2
	cmpq	$0, -24(%rbp)
	je	.LBB11_8
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -36(%rbp)
	movl	$0, -40(%rbp)
.LBB11_3:                               # %for.cond.2
                                        #   Parent Loop BB11_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-40(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB11_6
# BB#4:                                 # %for.body.4
                                        #   in Loop: Header=BB11_3 Depth=2
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	36(%rax), %edx
	movq	-16(%rbp), %rax
	movl	40(%rax), %ecx
	addl	-40(%rbp), %ecx
	movq	-16(%rbp), %rax
	movl	44(%rax), %r8d
	callq	render_blob_line
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB11_3 Depth=2
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	movq	-16(%rbp), %rcx
	movl	32(%rcx), %eax
	movq	-32(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -32(%rbp)
	jmp	.LBB11_3
.LBB11_6:                               # %for.end
                                        #   in Loop: Header=BB11_1 Depth=1
	jmp	.LBB11_7
.LBB11_7:                               # %for.inc.6
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	pixel_regions_process
	movq	%rax, -24(%rbp)
	jmp	.LBB11_1
.LBB11_8:                               # %for.end.8
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	render_blob, .Lfunc_end11-render_blob
	.cfi_endproc

	.align	16, 0x90
	.type	render_blob_line,@function
render_blob_line:                       # @render_blob_line
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
	subq	$240, %rsp
	leaq	-160(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movq	%rax, -168(%rbp)
	movl	$0, -172(%rbp)
	movl	$0, -184(%rbp)
	movl	-24(%rbp), %ecx
	shll	$3, %ecx
	movq	-8(%rbp), %rax
	subl	(%rax), %ecx
	movl	%ecx, -180(%rbp)
	movl	$0, -176(%rbp)
.LBB12_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$8, -176(%rbp)
	jge	.LBB12_9
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB12_1 Depth=1
	movl	-180(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	4(%rcx), %eax
	jl	.LBB12_4
# BB#3:                                 # %if.then
	jmp	.LBB12_9
.LBB12_4:                               # %if.end
                                        #   in Loop: Header=BB12_1 Depth=1
	cmpl	$0, -180(%rbp)
	jle	.LBB12_7
# BB#5:                                 # %land.lhs.true
                                        #   in Loop: Header=BB12_1 Depth=1
	movslq	-180(%rbp), %rax
	movq	-8(%rbp), %rcx
	movl	8(%rcx,%rax,8), %edx
	movslq	-180(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpl	12(%rcx,%rax,8), %edx
	jg	.LBB12_7
# BB#6:                                 # %if.then.9
                                        #   in Loop: Header=BB12_1 Depth=1
	movslq	-180(%rbp), %rax
	movq	-8(%rbp), %rcx
	movl	8(%rcx,%rax,8), %edx
	movl	-172(%rbp), %esi
	shll	$1, %esi
	movslq	%esi, %rax
	movq	-168(%rbp), %rcx
	movl	%edx, (%rcx,%rax,4)
	movl	-172(%rbp), %edx
	shll	$1, %edx
	addl	$1, %edx
	movslq	%edx, %rax
	movq	-168(%rbp), %rcx
	movl	$0, (%rcx,%rax,4)
	movslq	-180(%rbp), %rax
	movq	-8(%rbp), %rcx
	movl	12(%rcx,%rax,8), %edx
	movl	-172(%rbp), %esi
	shll	$1, %esi
	addl	$16, %esi
	movslq	%esi, %rax
	movq	-168(%rbp), %rcx
	movl	%edx, (%rcx,%rax,4)
	movl	-172(%rbp), %edx
	shll	$1, %edx
	addl	$16, %edx
	addl	$1, %edx
	movslq	%edx, %rax
	movq	-168(%rbp), %rcx
	movl	$1, (%rcx,%rax,4)
	movl	-172(%rbp), %edx
	addl	$1, %edx
	movl	%edx, -172(%rbp)
.LBB12_7:                               # %if.end.33
                                        #   in Loop: Header=BB12_1 Depth=1
	movl	-180(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -180(%rbp)
# BB#8:                                 # %for.inc
                                        #   in Loop: Header=BB12_1 Depth=1
	movl	-176(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -176(%rbp)
	jmp	.LBB12_1
.LBB12_9:                               # %for.end
	cmpl	$8, -172(%rbp)
	jge	.LBB12_15
# BB#10:                                # %if.then.37
	movl	$0, -176(%rbp)
.LBB12_11:                              # %for.cond.38
                                        # =>This Inner Loop Header: Depth=1
	movl	-176(%rbp), %eax
	movl	-172(%rbp), %ecx
	shll	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB12_14
# BB#12:                                # %for.body.41
                                        #   in Loop: Header=BB12_11 Depth=1
	movl	-176(%rbp), %eax
	addl	$16, %eax
	movslq	%eax, %rcx
	movq	-168(%rbp), %rdx
	movl	(%rdx,%rcx,4), %eax
	movl	-172(%rbp), %esi
	shll	$1, %esi
	addl	-176(%rbp), %esi
	movslq	%esi, %rcx
	movq	-168(%rbp), %rdx
	movl	%eax, (%rdx,%rcx,4)
# BB#13:                                # %for.inc.49
                                        #   in Loop: Header=BB12_11 Depth=1
	movl	-176(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -176(%rbp)
	jmp	.LBB12_11
.LBB12_14:                              # %for.end.51
	jmp	.LBB12_15
.LBB12_15:                              # %if.end.52
	movl	-172(%rbp), %eax
	shll	$1, %eax
	movl	%eax, -172(%rbp)
	movq	-168(%rbp), %rdi
	movl	-172(%rbp), %esi
	callq	insert_sort
.LBB12_16:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -172(%rbp)
	movb	%cl, -201(%rbp)         # 1-byte Spill
	jle	.LBB12_18
# BB#17:                                # %land.rhs
                                        #   in Loop: Header=BB12_16 Depth=1
	movq	-168(%rbp), %rax
	movl	(%rax), %ecx
	movl	-20(%rbp), %edx
	shll	$3, %edx
	cmpl	%edx, %ecx
	setl	%sil
	movb	%sil, -201(%rbp)        # 1-byte Spill
.LBB12_18:                              # %land.end
                                        #   in Loop: Header=BB12_16 Depth=1
	movb	-201(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB12_19
	jmp	.LBB12_23
.LBB12_19:                              # %while.body
                                        #   in Loop: Header=BB12_16 Depth=1
	movq	-168(%rbp), %rax
	cmpl	$0, 4(%rax)
	jne	.LBB12_21
# BB#20:                                # %if.then.60
                                        #   in Loop: Header=BB12_16 Depth=1
	movl	-184(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -184(%rbp)
	jmp	.LBB12_22
.LBB12_21:                              # %if.else
                                        #   in Loop: Header=BB12_16 Depth=1
	movl	-184(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -184(%rbp)
.LBB12_22:                              # %if.end.62
                                        #   in Loop: Header=BB12_16 Depth=1
	movq	-168(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -168(%rbp)
	movl	-172(%rbp), %ecx
	addl	$-1, %ecx
	movl	%ecx, -172(%rbp)
	jmp	.LBB12_16
.LBB12_23:                              # %while.end
	jmp	.LBB12_24
.LBB12_24:                              # %while.cond.64
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -172(%rbp)
	movb	%cl, -202(%rbp)         # 1-byte Spill
	jle	.LBB12_26
# BB#25:                                # %land.rhs.66
                                        #   in Loop: Header=BB12_24 Depth=1
	movl	-172(%rbp), %eax
	subl	$1, %eax
	shll	$1, %eax
	movslq	%eax, %rcx
	movq	-168(%rbp), %rdx
	movl	(%rdx,%rcx,4), %eax
	movl	-20(%rbp), %esi
	addl	-28(%rbp), %esi
	shll	$3, %esi
	cmpl	%esi, %eax
	setge	%dil
	movb	%dil, -202(%rbp)        # 1-byte Spill
.LBB12_26:                              # %land.end.74
                                        #   in Loop: Header=BB12_24 Depth=1
	movb	-202(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB12_27
	jmp	.LBB12_28
.LBB12_27:                              # %while.body.75
                                        #   in Loop: Header=BB12_24 Depth=1
	movl	-172(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -172(%rbp)
	jmp	.LBB12_24
.LBB12_28:                              # %while.end.77
	movl	$0, -188(%rbp)
	movl	$0, -176(%rbp)
.LBB12_29:                              # %for.cond.78
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_34 Depth 2
	movl	-176(%rbp), %eax
	cmpl	-172(%rbp), %eax
	jge	.LBB12_45
# BB#30:                                # %for.body.80
                                        #   in Loop: Header=BB12_29 Depth=1
	movl	$8, %eax
	movl	-176(%rbp), %ecx
	shll	$1, %ecx
	movslq	%ecx, %rdx
	movq	-168(%rbp), %rsi
	movl	(%rsi,%rdx,4), %ecx
	movl	%eax, -208(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-208(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	subl	-20(%rbp), %eax
	movl	%eax, -192(%rbp)
	cmpl	$0, -184(%rbp)
	je	.LBB12_33
# BB#31:                                # %land.lhs.true.85
                                        #   in Loop: Header=BB12_29 Depth=1
	movl	-192(%rbp), %eax
	cmpl	-188(%rbp), %eax
	je	.LBB12_33
# BB#32:                                # %if.then.87
                                        #   in Loop: Header=BB12_29 Depth=1
	movl	$8, %eax
	movq	-16(%rbp), %rcx
	movslq	-188(%rbp), %rdx
	addq	%rdx, %rcx
	imull	$255, -184(%rbp), %esi
	movl	%eax, -212(%rbp)        # 4-byte Spill
	movl	%esi, %eax
	cltd
	movl	-212(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	movb	%al, %dil
	movl	-192(%rbp), %eax
	subl	-188(%rbp), %eax
	movb	%dil, -213(%rbp)        # 1-byte Spill
	movq	%rcx, %rdi
	movb	-213(%rbp), %r8b        # 1-byte Reload
	movzbl	%r8b, %esi
	movl	%eax, %edx
	callq	fill_run
.LBB12_33:                              # %if.end.92
                                        #   in Loop: Header=BB12_29 Depth=1
	movl	-184(%rbp), %eax
	shll	$3, %eax
	movl	%eax, -196(%rbp)
.LBB12_34:                              # %while.cond.94
                                        #   Parent Loop BB12_29 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-176(%rbp), %eax
	cmpl	-172(%rbp), %eax
	jge	.LBB12_41
# BB#35:                                # %while.body.97
                                        #   in Loop: Header=BB12_34 Depth=2
	movl	$8, %eax
	movl	-176(%rbp), %ecx
	shll	$1, %ecx
	movslq	%ecx, %rdx
	movq	-168(%rbp), %rsi
	movl	(%rsi,%rdx,4), %ecx
	movl	%eax, -220(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-220(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movl	%eax, -200(%rbp)
	movl	-200(%rbp), %eax
	subl	-20(%rbp), %eax
	cmpl	-192(%rbp), %eax
	je	.LBB12_37
# BB#36:                                # %if.then.105
                                        #   in Loop: Header=BB12_29 Depth=1
	jmp	.LBB12_41
.LBB12_37:                              # %if.end.106
                                        #   in Loop: Header=BB12_34 Depth=2
	movl	-176(%rbp), %eax
	shll	$1, %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-168(%rbp), %rdx
	cmpl	$0, (%rdx,%rcx,4)
	jne	.LBB12_39
# BB#38:                                # %if.then.113
                                        #   in Loop: Header=BB12_34 Depth=2
	movl	-184(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -184(%rbp)
	movl	-200(%rbp), %eax
	addl	$1, %eax
	shll	$3, %eax
	movl	-176(%rbp), %ecx
	shll	$1, %ecx
	movslq	%ecx, %rdx
	movq	-168(%rbp), %rsi
	subl	(%rsi,%rdx,4), %eax
	addl	-196(%rbp), %eax
	movl	%eax, -196(%rbp)
	jmp	.LBB12_40
.LBB12_39:                              # %if.else.122
                                        #   in Loop: Header=BB12_34 Depth=2
	movl	-184(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -184(%rbp)
	movl	-200(%rbp), %eax
	addl	$1, %eax
	shll	$3, %eax
	movl	-176(%rbp), %ecx
	shll	$1, %ecx
	movslq	%ecx, %rdx
	movq	-168(%rbp), %rsi
	subl	(%rsi,%rdx,4), %eax
	movl	-196(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -196(%rbp)
.LBB12_40:                              # %if.end.131
                                        #   in Loop: Header=BB12_34 Depth=2
	movl	-176(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -176(%rbp)
	jmp	.LBB12_34
.LBB12_41:                              # %while.end.133
                                        #   in Loop: Header=BB12_29 Depth=1
	movl	$64, %eax
	movslq	-192(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movzbl	(%rdx,%rcx), %esi
	imull	$255, -196(%rbp), %edi
	movl	%eax, -224(%rbp)        # 4-byte Spill
	movl	%edi, %eax
	cltd
	movl	-224(%rbp), %edi        # 4-byte Reload
	idivl	%edi
	cmpl	%eax, %esi
	jle	.LBB12_43
# BB#42:                                # %cond.true
                                        #   in Loop: Header=BB12_29 Depth=1
	movslq	-192(%rbp), %rax
	movq	-16(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movl	%edx, -228(%rbp)        # 4-byte Spill
	jmp	.LBB12_44
.LBB12_43:                              # %cond.false
                                        #   in Loop: Header=BB12_29 Depth=1
	movl	$64, %eax
	imull	$255, -196(%rbp), %ecx
	movl	%eax, -232(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-232(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movl	%eax, -228(%rbp)        # 4-byte Spill
.LBB12_44:                              # %cond.end
                                        #   in Loop: Header=BB12_29 Depth=1
	movl	-228(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movslq	-192(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
	movl	-192(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -188(%rbp)
	jmp	.LBB12_29
.LBB12_45:                              # %for.end.150
	cmpl	$0, -184(%rbp)
	je	.LBB12_47
# BB#46:                                # %if.then.153
	movl	$8, %eax
	movq	-16(%rbp), %rcx
	movslq	-188(%rbp), %rdx
	addq	%rdx, %rcx
	imull	$255, -184(%rbp), %esi
	movl	%eax, -236(%rbp)        # 4-byte Spill
	movl	%esi, %eax
	cltd
	movl	-236(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	movb	%al, %dil
	movl	-28(%rbp), %eax
	subl	-188(%rbp), %eax
	movb	%dil, -237(%rbp)        # 1-byte Spill
	movq	%rcx, %rdi
	movb	-237(%rbp), %r8b        # 1-byte Reload
	movzbl	%r8b, %esi
	movl	%eax, %edx
	callq	fill_run
.LBB12_47:                              # %if.end.160
	addq	$240, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	render_blob_line, .Lfunc_end12-render_blob_line
	.cfi_endproc

	.align	16, 0x90
	.type	insert_sort,@function
insert_sort:                            # @insert_sort
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	$2, -16(%rbp)
.LBB13_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_3 Depth 2
                                        #     Child Loop BB13_6 Depth 2
	movl	-16(%rbp), %eax
	movl	-12(%rbp), %ecx
	shll	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB13_11
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB13_1 Depth=1
	movslq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	movl	%edx, -28(%rbp)
	movl	-16(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rax
	movq	-8(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	movl	%edx, -32(%rbp)
	movl	$0, -20(%rbp)
.LBB13_3:                               # %while.cond
                                        #   Parent Loop BB13_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	-20(%rbp), %rax
	movq	-8(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	cmpl	-28(%rbp), %edx
	jge	.LBB13_5
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB13_3 Depth=2
	movl	-20(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB13_3
.LBB13_5:                               # %while.end
                                        #   in Loop: Header=BB13_1 Depth=1
	movl	-16(%rbp), %eax
	movl	%eax, -24(%rbp)
.LBB13_6:                               # %for.cond.7
                                        #   Parent Loop BB13_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-24(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jle	.LBB13_9
# BB#7:                                 # %for.body.9
                                        #   in Loop: Header=BB13_6 Depth=2
	movl	-24(%rbp), %eax
	subl	$2, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movl	(%rdx,%rcx,4), %eax
	movslq	-24(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movl	%eax, (%rdx,%rcx,4)
	movl	-24(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movl	(%rdx,%rcx,4), %eax
	movl	-24(%rbp), %esi
	addl	$1, %esi
	movslq	%esi, %rcx
	movq	-8(%rbp), %rdx
	movl	%eax, (%rdx,%rcx,4)
# BB#8:                                 # %for.inc
                                        #   in Loop: Header=BB13_6 Depth=2
	movl	-24(%rbp), %eax
	subl	$2, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB13_6
.LBB13_9:                               # %for.end
                                        #   in Loop: Header=BB13_1 Depth=1
	movl	-28(%rbp), %eax
	movslq	-20(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movl	%eax, (%rdx,%rcx,4)
	movl	-32(%rbp), %eax
	movl	-20(%rbp), %esi
	addl	$1, %esi
	movslq	%esi, %rcx
	movq	-8(%rbp), %rdx
	movl	%eax, (%rdx,%rcx,4)
# BB#10:                                # %for.inc.26
                                        #   in Loop: Header=BB13_1 Depth=1
	movl	-16(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB13_1
.LBB13_11:                              # %for.end.28
	popq	%rbp
	retq
.Lfunc_end13:
	.size	insert_sort, .Lfunc_end13-insert_sort
	.cfi_endproc

	.align	16, 0x90
	.type	fill_run,@function
fill_run:                               # @fill_run
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
	subq	$32, %rsp
	movb	%sil, %al
	movq	%rdi, -8(%rbp)
	movb	%al, -9(%rbp)
	movl	%edx, -16(%rbp)
	movzbl	-9(%rbp), %edx
	cmpl	$255, %edx
	jne	.LBB14_2
# BB#1:                                 # %if.then
	movl	$255, %esi
	movq	-8(%rbp), %rdi
	movslq	-16(%rbp), %rdx
	callq	memset
	jmp	.LBB14_9
.LBB14_2:                               # %if.else
	jmp	.LBB14_3
.LBB14_3:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-16(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -16(%rbp)
	cmpl	$0, %eax
	je	.LBB14_8
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB14_3 Depth=1
	movq	-8(%rbp), %rax
	movzbl	(%rax), %ecx
	movzbl	-9(%rbp), %edx
	cmpl	%edx, %ecx
	jle	.LBB14_6
# BB#5:                                 # %cond.true
                                        #   in Loop: Header=BB14_3 Depth=1
	movq	-8(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -20(%rbp)         # 4-byte Spill
	jmp	.LBB14_7
.LBB14_6:                               # %cond.false
                                        #   in Loop: Header=BB14_3 Depth=1
	movzbl	-9(%rbp), %eax
	movl	%eax, -20(%rbp)         # 4-byte Spill
.LBB14_7:                               # %cond.end
                                        #   in Loop: Header=BB14_3 Depth=1
	movl	-20(%rbp), %eax         # 4-byte Reload
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movb	%cl, (%rdx)
	movq	-8(%rbp), %rdx
	addq	$1, %rdx
	movq	%rdx, -8(%rbp)
	jmp	.LBB14_3
.LBB14_8:                               # %while.end
	jmp	.LBB14_9
.LBB14_9:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	fill_run, .Lfunc_end14-fill_run
	.cfi_endproc

	.type	gimp_ink_get_type.g_define_type_id__volatile,@object # @gimp_ink_get_type.g_define_type_id__volatile
	.local	gimp_ink_get_type.g_define_type_id__volatile
	.comm	gimp_ink_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpInk"
	.size	.L.str, 8

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"gimp-ink"
	.size	.L.str.1, 9

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Ink"
	.size	.L.str.2, 4

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gimp-tool-ink"
	.size	.L.str.3, 14

	.type	gimp_ink_parent_class,@object # @gimp_ink_parent_class
	.local	gimp_ink_parent_class
	.comm	gimp_ink_parent_class,8,8
	.type	GimpInk_private_offset,@object # @GimpInk_private_offset
	.local	GimpInk_private_offset
	.comm	GimpInk_private_offset,4,4
	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Gimp-Paint"
	.size	.L.str.4, 11

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"file %s: line %d (%s): should not be reached"
	.size	.L.str.5, 45

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gimpink.c"
	.size	.L.str.6, 10

	.type	.L__func__.ink_pen_ellipse,@object # @__func__.ink_pen_ellipse
.L__func__.ink_pen_ellipse:
	.asciz	"ink_pen_ellipse"
	.size	.L__func__.ink_pen_ellipse, 16

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"paint-core"
	.size	.L.str.7, 11


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
