	.text
	.file	"gimpcanvashandle.bc"
	.globl	gimp_canvas_handle_get_type
	.align	16, 0x90
	.type	gimp_canvas_handle_get_type,@function
gimp_canvas_handle_get_type:            # @gimp_canvas_handle_get_type
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
	movq	gimp_canvas_handle_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_canvas_handle_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_canvas_item_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$208, %edx
	movabsq	$gimp_canvas_handle_class_intern_init, %rdi
	movl	$32, %r8d
	movabsq	$gimp_canvas_handle_init, %rcx
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
	movabsq	$gimp_canvas_handle_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_canvas_handle_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_canvas_handle_get_type, .Lfunc_end0-gimp_canvas_handle_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_canvas_handle_class_intern_init,@function
gimp_canvas_handle_class_intern_init:   # @gimp_canvas_handle_class_intern_init
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
	movq	%rax, gimp_canvas_handle_parent_class
	cmpl	$0, GimpCanvasHandle_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpCanvasHandle_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_canvas_handle_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_canvas_handle_class_intern_init, .Lfunc_end1-gimp_canvas_handle_class_intern_init
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4618760256179416344     # double 6.2831853071795862
	.text
	.align	16, 0x90
	.type	gimp_canvas_handle_init,@function
gimp_canvas_handle_init:                # @gimp_canvas_handle_init
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_canvas_handle_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_canvas_item_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gimp_canvas_item_set_line_cap
	movsd	.LCPI2_0, %xmm0         # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movq	-16(%rbp), %rax
	movsd	%xmm1, 32(%rax)
	movq	-16(%rbp), %rax
	movsd	%xmm0, 40(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_canvas_handle_init, .Lfunc_end2-gimp_canvas_handle_init
	.cfi_endproc

	.globl	gimp_canvas_handle_new
	.align	16, 0x90
	.type	gimp_canvas_handle_new,@function
gimp_canvas_handle_new:                 # @gimp_canvas_handle_new
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$168, %rsp
.Ltmp12:
	.cfi_offset %rbx, -56
.Ltmp13:
	.cfi_offset %r12, -48
.Ltmp14:
	.cfi_offset %r13, -40
.Ltmp15:
	.cfi_offset %r14, -32
.Ltmp16:
	.cfi_offset %r15, -24
	movq	%rdi, -56(%rbp)
	movl	%esi, -60(%rbp)
	movl	%edx, -64(%rbp)
	movsd	%xmm0, -72(%rbp)
	movsd	%xmm1, -80(%rbp)
	movl	%ecx, -84(%rbp)
	movl	%r8d, -88(%rbp)
# BB#1:                                 # %do.body
	movq	-56(%rbp), %rax
	movq	%rax, -96(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -104(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then
	movl	$0, -108(%rbp)
	jmp	.LBB3_8
.LBB3_3:                                # %if.else
	movq	-96(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_6
# BB#4:                                 # %land.lhs.true
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-104(%rbp), %rax
	jne	.LBB3_6
# BB#5:                                 # %if.then.3
	movl	$1, -108(%rbp)
	jmp	.LBB3_7
.LBB3_6:                                # %if.else.4
	movq	-96(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -108(%rbp)
.LBB3_7:                                # %if.end
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.6
	movl	-108(%rbp), %eax
	movl	%eax, -112(%rbp)
	cmpl	$0, -112(%rbp)
	je	.LBB3_10
# BB#9:                                 # %if.then.8
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_canvas_handle_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB3_13
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	callq	gimp_canvas_handle_get_type
	movabsq	$.L.str.3, %rsi
	movabsq	$.L.str.4, %rcx
	movabsq	$.L.str.5, %r9
	movabsq	$.L.str.6, %rdx
	movabsq	$.L.str.7, %rdi
	movabsq	$.L.str.8, %r8
	movabsq	$.L.str.9, %r10
	xorl	%r11d, %r11d
	movl	%r11d, %ebx
	movq	-56(%rbp), %r14
	movl	-60(%rbp), %r11d
	movl	-64(%rbp), %r15d
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	movl	-84(%rbp), %r12d
	movl	-88(%rbp), %r13d
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rdx, -128(%rbp)        # 8-byte Spill
	movq	%r14, %rdx
	movq	%r8, -136(%rbp)         # 8-byte Spill
	movl	%r11d, %r8d
	movl	%r15d, (%rsp)
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	-120(%rbp), %r14        # 8-byte Reload
	movq	%r14, 16(%rsp)
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	%rax, 24(%rsp)
	movl	%r12d, 32(%rsp)
	movq	%r10, 40(%rsp)
	movl	%r13d, 48(%rsp)
	movq	$0, 56(%rsp)
	movb	$2, %al
	movq	%rbx, -144(%rbp)        # 8-byte Spill
	callq	g_object_new
	movq	%rax, -48(%rbp)
.LBB3_13:                               # %return
	movq	-48(%rbp), %rax
	addq	$168, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_canvas_handle_new, .Lfunc_end3-gimp_canvas_handle_new
	.cfi_endproc

	.globl	gimp_canvas_handle_get_position
	.align	16, 0x90
	.type	gimp_canvas_handle_get_position,@function
gimp_canvas_handle_get_position:        # @gimp_canvas_handle_get_position
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_canvas_handle_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB4_8
.LBB4_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB4_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.8
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_canvas_handle_get_position, %rsi
	movabsq	$.L.str.10, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_23
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	jmp	.LBB4_13
.LBB4_13:                               # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB4_15
# BB#14:                                # %if.then.13
	jmp	.LBB4_16
.LBB4_15:                               # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_canvas_handle_get_position, %rsi
	movabsq	$.L.str.11, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_23
.LBB4_16:                               # %if.end.15
	jmp	.LBB4_17
.LBB4_17:                               # %do.end.16
	jmp	.LBB4_18
.LBB4_18:                               # %do.body.17
	cmpq	$0, -24(%rbp)
	je	.LBB4_20
# BB#19:                                # %if.then.19
	jmp	.LBB4_21
.LBB4_20:                               # %if.else.20
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_canvas_handle_get_position, %rsi
	movabsq	$.L.str.12, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_23
.LBB4_21:                               # %if.end.21
	jmp	.LBB4_22
.LBB4_22:                               # %do.end.22
	movabsq	$.L.str.6, %rsi
	movabsq	$.L.str.7, %rcx
	xorl	%eax, %eax
	movl	%eax, %r9d
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %r8
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movb	$0, %al
	callq	g_object_get
.LBB4_23:                               # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_canvas_handle_get_position, .Lfunc_end4-gimp_canvas_handle_get_position
	.cfi_endproc

	.globl	gimp_canvas_handle_set_position
	.align	16, 0x90
	.type	gimp_canvas_handle_set_position,@function
gimp_canvas_handle_set_position:        # @gimp_canvas_handle_set_position
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
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_canvas_handle_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB5_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB5_8
.LBB5_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB5_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB5_7
.LBB5_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB5_7:                                # %if.end
	jmp	.LBB5_8
.LBB5_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB5_10
# BB#9:                                 # %if.then.8
	jmp	.LBB5_11
.LBB5_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_canvas_handle_set_position, %rsi
	movabsq	$.L.str.10, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_13
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	movq	-8(%rbp), %rdi
	callq	gimp_canvas_item_begin_change
	movabsq	$.L.str.6, %rsi
	movabsq	$.L.str.7, %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdi
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	movb	$2, %al
	callq	g_object_set
	movq	-8(%rbp), %rdi
	callq	gimp_canvas_item_end_change
.LBB5_13:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_canvas_handle_set_position, .Lfunc_end5-gimp_canvas_handle_set_position
	.cfi_endproc

	.globl	gimp_canvas_handle_set_angles
	.align	16, 0x90
	.type	gimp_canvas_handle_set_angles,@function
gimp_canvas_handle_set_angles:          # @gimp_canvas_handle_set_angles
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp23:
	.cfi_def_cfa_offset 16
.Ltmp24:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp25:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_canvas_handle_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB6_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB6_8
.LBB6_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB6_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB6_7
.LBB6_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB6_7:                                # %if.end
	jmp	.LBB6_8
.LBB6_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB6_10
# BB#9:                                 # %if.then.8
	jmp	.LBB6_11
.LBB6_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_canvas_handle_set_angles, %rsi
	movabsq	$.L.str.10, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB6_13
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	movq	-8(%rbp), %rdi
	callq	gimp_canvas_item_begin_change
	movabsq	$.L.str.13, %rsi
	movabsq	$.L.str.14, %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdi
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	movb	$2, %al
	callq	g_object_set
	movq	-8(%rbp), %rdi
	callq	gimp_canvas_item_end_change
.LBB6_13:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_canvas_handle_set_angles, .Lfunc_end6-gimp_canvas_handle_set_angles
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI7_0:
	.quad	-4571364728013586432    # double -1000
.LCPI7_1:
	.quad	4652007308841189376     # double 1000
.LCPI7_2:
	.quad	4618760256179416344     # double 6.2831853071795862
.LCPI7_3:
	.quad	-4535124824762089472    # double -262144
.LCPI7_4:
	.quad	4688247212092686336     # double 262144
	.text
	.align	16, 0x90
	.type	gimp_canvas_handle_class_init,@function
gimp_canvas_handle_class_init:          # @gimp_canvas_handle_class_init
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
	subq	$128, %rsp
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_canvas_item_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$gimp_canvas_handle_hit, %rsi
	movabsq	$gimp_canvas_handle_get_extents, %rdi
	movabsq	$gimp_canvas_handle_draw, %rcx
	movabsq	$gimp_canvas_handle_get_property, %rdx
	movabsq	$gimp_canvas_handle_set_property, %r8
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%r8, 24(%rax)
	movq	-16(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-24(%rbp), %rax
	movq	%rcx, 168(%rax)
	movq	-24(%rbp), %rax
	movq	%rdi, 176(%rax)
	movq	-24(%rbp), %rax
	movq	%rsi, 200(%rax)
	movq	-16(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gimp_handle_type_get_type
	movabsq	$.L.str.4, %rdi
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	movl	$4, %r8d
	movl	$227, %r9d
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movl	$1, %esi
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-16(%rbp), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	callq	gimp_handle_anchor_get_type
	movabsq	$.L.str.5, %rdi
	xorl	%esi, %esi
	movl	%esi, %ecx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movl	$2, %esi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.6, %rdi
	xorl	%esi, %esi
	movl	%esi, %eax
	movsd	.LCPI7_3, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI7_4, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-16(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	callq	g_param_spec_double
	movl	$3, %esi
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.7, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movsd	.LCPI7_3, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI7_4, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-16(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	callq	g_param_spec_double
	movl	$4, %esi
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.8, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movl	$3, %ecx
	movl	$1001, %r8d             # imm = 0x3E9
	movl	$7, %r9d
	movl	$227, %esi
	movq	-16(%rbp), %rdx
	movl	%esi, -68(%rbp)         # 4-byte Spill
	movq	%rax, %rsi
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movl	$227, (%rsp)
	callq	g_param_spec_int
	movl	$5, %esi
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.9, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movl	$3, %ecx
	movl	$1001, %r8d             # imm = 0x3E9
	movl	$7, %r9d
	movl	$227, %esi
	movq	-16(%rbp), %rdx
	movl	%esi, -84(%rbp)         # 4-byte Spill
	movq	%rax, %rsi
	movq	%rdx, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movl	$227, (%rsp)
	callq	g_param_spec_int
	movl	$6, %esi
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.13, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movsd	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI7_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-16(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	callq	g_param_spec_double
	movl	$7, %esi
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.14, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movsd	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI7_1, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI7_2, %xmm2         # xmm2 = mem[0],zero
	movl	$227, %ecx
	movq	-16(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -112(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	callq	g_param_spec_double
	movl	$8, %esi
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movl	$48, %ecx
	movl	%ecx, %esi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_class_add_private
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_canvas_handle_class_init, .Lfunc_end7-gimp_canvas_handle_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_canvas_handle_set_property,@function
gimp_canvas_handle_set_property:        # @gimp_canvas_handle_set_property
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_canvas_handle_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	decl	%r8d
	movl	%r8d, %eax
	subl	$7, %r8d
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movl	%r8d, -84(%rbp)         # 4-byte Spill
	ja	.LBB8_9
# BB#13:                                # %entry
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	.LJTI8_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB8_1:                                # %sw.bb
	movq	-24(%rbp), %rdi
	callq	g_value_get_enum
	movq	-40(%rbp), %rdi
	movl	%eax, (%rdi)
	jmp	.LBB8_12
.LBB8_2:                                # %sw.bb.3
	movq	-24(%rbp), %rdi
	callq	g_value_get_enum
	movq	-40(%rbp), %rdi
	movl	%eax, 4(%rdi)
	jmp	.LBB8_12
.LBB8_3:                                # %sw.bb.5
	movq	-24(%rbp), %rdi
	callq	g_value_get_double
	movq	-40(%rbp), %rdi
	movsd	%xmm0, 8(%rdi)
	jmp	.LBB8_12
.LBB8_4:                                # %sw.bb.7
	movq	-24(%rbp), %rdi
	callq	g_value_get_double
	movq	-40(%rbp), %rdi
	movsd	%xmm0, 16(%rdi)
	jmp	.LBB8_12
.LBB8_5:                                # %sw.bb.9
	movq	-24(%rbp), %rdi
	callq	g_value_get_int
	movq	-40(%rbp), %rdi
	movl	%eax, 24(%rdi)
	jmp	.LBB8_12
.LBB8_6:                                # %sw.bb.11
	movq	-24(%rbp), %rdi
	callq	g_value_get_int
	movq	-40(%rbp), %rdi
	movl	%eax, 28(%rdi)
	jmp	.LBB8_12
.LBB8_7:                                # %sw.bb.13
	movq	-24(%rbp), %rdi
	callq	g_value_get_double
	movq	-40(%rbp), %rdi
	movsd	%xmm0, 32(%rdi)
	jmp	.LBB8_12
.LBB8_8:                                # %sw.bb.15
	movq	-24(%rbp), %rdi
	callq	g_value_get_double
	movq	-40(%rbp), %rdi
	movsd	%xmm0, 40(%rdi)
	jmp	.LBB8_12
.LBB8_9:                                # %sw.default
	jmp	.LBB8_10
.LBB8_10:                               # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)
	movl	-12(%rbp), %ecx
	movl	%ecx, -60(%rbp)
	movl	-60(%rbp), %r8d
	movq	-56(%rbp), %rax
	movq	8(%rax), %r9
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	movl	%r8d, -88(%rbp)         # 4-byte Spill
	movq	%r9, -96(%rbp)          # 8-byte Spill
	callq	g_type_name
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.15, %rdi
	movabsq	$.L.str.16, %rsi
	movl	$208, %edx
	movabsq	$.L.str.17, %rcx
	movl	-88(%rbp), %r8d         # 4-byte Reload
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	-104(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#11:                                # %do.end
	jmp	.LBB8_12
.LBB8_12:                               # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_canvas_handle_set_property, .Lfunc_end8-gimp_canvas_handle_set_property
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI8_0:
	.quad	.LBB8_1
	.quad	.LBB8_2
	.quad	.LBB8_3
	.quad	.LBB8_4
	.quad	.LBB8_5
	.quad	.LBB8_6
	.quad	.LBB8_7
	.quad	.LBB8_8

	.text
	.align	16, 0x90
	.type	gimp_canvas_handle_get_property,@function
gimp_canvas_handle_get_property:        # @gimp_canvas_handle_get_property
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_canvas_handle_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	decl	%r8d
	movl	%r8d, %eax
	subl	$7, %r8d
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movl	%r8d, -84(%rbp)         # 4-byte Spill
	ja	.LBB9_9
# BB#13:                                # %entry
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	.LJTI9_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB9_1:                                # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	(%rax), %esi
	callq	g_value_set_enum
	jmp	.LBB9_12
.LBB9_2:                                # %sw.bb.2
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	4(%rax), %esi
	callq	g_value_set_enum
	jmp	.LBB9_12
.LBB9_3:                                # %sw.bb.3
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	callq	g_value_set_double
	jmp	.LBB9_12
.LBB9_4:                                # %sw.bb.4
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	callq	g_value_set_double
	jmp	.LBB9_12
.LBB9_5:                                # %sw.bb.5
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	24(%rax), %esi
	callq	g_value_set_int
	jmp	.LBB9_12
.LBB9_6:                                # %sw.bb.6
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	28(%rax), %esi
	callq	g_value_set_int
	jmp	.LBB9_12
.LBB9_7:                                # %sw.bb.7
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movsd	32(%rax), %xmm0         # xmm0 = mem[0],zero
	callq	g_value_set_double
	jmp	.LBB9_12
.LBB9_8:                                # %sw.bb.8
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movsd	40(%rax), %xmm0         # xmm0 = mem[0],zero
	callq	g_value_set_double
	jmp	.LBB9_12
.LBB9_9:                                # %sw.default
	jmp	.LBB9_10
.LBB9_10:                               # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)
	movl	-12(%rbp), %ecx
	movl	%ecx, -60(%rbp)
	movl	-60(%rbp), %r8d
	movq	-56(%rbp), %rax
	movq	8(%rax), %r9
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	movl	%r8d, -88(%rbp)         # 4-byte Spill
	movq	%r9, -96(%rbp)          # 8-byte Spill
	callq	g_type_name
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.15, %rdi
	movabsq	$.L.str.16, %rsi
	movl	$249, %edx
	movabsq	$.L.str.17, %rcx
	movl	-88(%rbp), %r8d         # 4-byte Reload
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	-104(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#11:                                # %do.end
	jmp	.LBB9_12
.LBB9_12:                               # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_canvas_handle_get_property, .Lfunc_end9-gimp_canvas_handle_get_property
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI9_0:
	.quad	.LBB9_1
	.quad	.LBB9_2
	.quad	.LBB9_3
	.quad	.LBB9_4
	.quad	.LBB9_5
	.quad	.LBB9_6
	.quad	.LBB9_7
	.quad	.LBB9_8

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI10_0:
	.quad	4611686018427387904     # double 2
.LCPI10_1:
	.quad	4602678819172646912     # double 0.5
.LCPI10_2:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gimp_canvas_handle_draw,@function
gimp_canvas_handle_draw:                # @gimp_canvas_handle_draw
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp35:
	.cfi_def_cfa_offset 16
.Ltmp36:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp37:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	callq	gimp_canvas_handle_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	leaq	-40(%rbp), %rdx
	leaq	-48(%rbp), %rcx
	callq	gimp_canvas_handle_transform
	movq	-32(%rbp), %rax
	movl	(%rax), %r8d
	movl	%r8d, %eax
	movq	%rax, %rcx
	subq	$4, %rcx
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	ja	.LBB10_6
# BB#8:                                 # %entry
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	.LJTI10_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB10_1:                               # %sw.bb
	movsd	.LCPI10_2, %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rdi
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-48(%rbp), %xmm2        # xmm2 = mem[0],zero
	movq	-32(%rbp), %rax
	cvtsi2sdl	24(%rax), %xmm3
	subsd	%xmm0, %xmm3
	movq	-32(%rbp), %rax
	cvtsi2sdl	28(%rax), %xmm4
	subsd	%xmm0, %xmm4
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	movaps	%xmm3, %xmm2
	movaps	%xmm4, %xmm3
	callq	cairo_rectangle
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	_gimp_canvas_item_stroke
	jmp	.LBB10_7
.LBB10_2:                               # %sw.bb.4
	movsd	.LCPI10_1, %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rdi
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	-48(%rbp), %xmm2        # xmm2 = mem[0],zero
	subsd	%xmm0, %xmm2
	movq	-32(%rbp), %rax
	cvtsi2sdl	24(%rax), %xmm0
	movq	-32(%rbp), %rax
	cvtsi2sdl	28(%rax), %xmm3
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	movsd	-80(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	cairo_rectangle
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	_gimp_canvas_item_fill
	jmp	.LBB10_7
.LBB10_3:                               # %sw.bb.11
	movl	$2, %eax
	movq	-24(%rbp), %rdi
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-32(%rbp), %rcx
	movl	24(%rcx), %edx
	movl	%eax, -84(%rbp)         # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-84(%rbp), %esi         # 4-byte Reload
	idivl	%esi
	cvtsi2sdl	%eax, %xmm2
	movq	-32(%rbp), %rcx
	movsd	32(%rcx), %xmm3         # xmm3 = mem[0],zero
	movq	-32(%rbp), %rcx
	movsd	40(%rcx), %xmm4         # xmm4 = mem[0],zero
	callq	gimp_cairo_add_arc
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	_gimp_canvas_item_stroke
	jmp	.LBB10_7
.LBB10_4:                               # %sw.bb.14
	movq	-24(%rbp), %rdi
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	cairo_move_to
	movsd	.LCPI10_0, %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rdi
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-48(%rbp), %xmm2        # xmm2 = mem[0],zero
	movq	-32(%rbp), %rax
	cvtsi2sdl	24(%rax), %xmm3
	divsd	%xmm0, %xmm3
	movq	-32(%rbp), %rax
	movsd	32(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movsd	40(%rax), %xmm4         # xmm4 = mem[0],zero
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	movaps	%xmm3, %xmm2
	movsd	-96(%rbp), %xmm3        # 8-byte Reload
                                        # xmm3 = mem[0],zero
	callq	gimp_cairo_add_arc
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	_gimp_canvas_item_fill
	jmp	.LBB10_7
.LBB10_5:                               # %sw.bb.20
	movl	$2, %eax
	movq	-24(%rbp), %rdi
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rcx
	movl	24(%rcx), %edx
	movl	%eax, -100(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-100(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	cvtsi2sdl	%eax, %xmm1
	subsd	%xmm1, %xmm0
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	cairo_move_to
	movl	$2, %eax
	movq	-24(%rbp), %rdi
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rcx
	movl	24(%rcx), %esi
	movl	%eax, -104(%rbp)        # 4-byte Spill
	movl	%esi, %eax
	cltd
	movl	-104(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	cvtsi2sdl	%eax, %xmm1
	addsd	%xmm1, %xmm0
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	cairo_line_to
	movl	$2, %eax
	movq	-24(%rbp), %rdi
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-32(%rbp), %rcx
	movl	28(%rcx), %esi
	movl	%eax, -108(%rbp)        # 4-byte Spill
	movl	%esi, %eax
	cltd
	movl	-108(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	cvtsi2sdl	%eax, %xmm2
	subsd	%xmm2, %xmm1
	callq	cairo_move_to
	movl	$2, %eax
	movq	-24(%rbp), %rdi
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-32(%rbp), %rcx
	movl	28(%rcx), %esi
	movl	%eax, -112(%rbp)        # 4-byte Spill
	movl	%esi, %eax
	cltd
	movl	-112(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	cvtsi2sdl	%eax, %xmm2
	addsd	%xmm2, %xmm1
	callq	cairo_line_to
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	_gimp_canvas_item_stroke
	jmp	.LBB10_7
.LBB10_6:                               # %sw.default
	jmp	.LBB10_7
.LBB10_7:                               # %sw.epilog
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_canvas_handle_draw, .Lfunc_end10-gimp_canvas_handle_draw
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI10_0:
	.quad	.LBB10_1
	.quad	.LBB10_2
	.quad	.LBB10_3
	.quad	.LBB10_4
	.quad	.LBB10_5

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI11_0:
	.quad	4613937818241073152     # double 3
.LCPI11_1:
	.quad	4609434218613702656     # double 1.5
	.text
	.align	16, 0x90
	.type	gimp_canvas_handle_get_extents,@function
gimp_canvas_handle_get_extents:         # @gimp_canvas_handle_get_extents
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp38:
	.cfi_def_cfa_offset 16
.Ltmp39:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp40:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	callq	gimp_canvas_handle_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	leaq	-48(%rbp), %rdx
	leaq	-56(%rbp), %rcx
	callq	gimp_canvas_handle_transform
	movq	-24(%rbp), %rax
	movl	(%rax), %r8d
	movl	%r8d, %r9d
	subl	$2, %r9d
	movl	%r8d, -68(%rbp)         # 4-byte Spill
	movl	%r9d, -72(%rbp)         # 4-byte Spill
	jb	.LBB11_1
	jmp	.LBB11_5
.LBB11_5:                               # %entry
	movl	-68(%rbp), %eax         # 4-byte Reload
	addl	$-2, %eax
	subl	$3, %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
	jb	.LBB11_2
	jmp	.LBB11_3
.LBB11_1:                               # %sw.bb
	movsd	.LCPI11_0, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI11_1, %xmm1        # xmm1 = mem[0],zero
	movsd	-48(%rbp), %xmm2        # xmm2 = mem[0],zero
	subsd	%xmm1, %xmm2
	cvttsd2si	%xmm2, %eax
	movl	%eax, -40(%rbp)
	movsd	-56(%rbp), %xmm2        # xmm2 = mem[0],zero
	subsd	%xmm1, %xmm2
	cvttsd2si	%xmm2, %eax
	movl	%eax, -36(%rbp)
	movq	-24(%rbp), %rcx
	cvtsi2sdl	24(%rcx), %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, -32(%rbp)
	movq	-24(%rbp), %rcx
	cvtsi2sdl	28(%rcx), %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB11_4
.LBB11_2:                               # %sw.bb.13
	movsd	.LCPI11_0, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI11_1, %xmm1        # xmm1 = mem[0],zero
	movl	$2, %eax
	movsd	-48(%rbp), %xmm2        # xmm2 = mem[0],zero
	movq	-24(%rbp), %rcx
	movl	24(%rcx), %edx
	movl	%eax, -80(%rbp)         # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-80(%rbp), %esi         # 4-byte Reload
	idivl	%esi
	cvtsi2sdl	%eax, %xmm3
	subsd	%xmm3, %xmm2
	subsd	%xmm1, %xmm2
	cvttsd2si	%xmm2, %eax
	movl	%eax, -40(%rbp)
	movsd	-56(%rbp), %xmm2        # xmm2 = mem[0],zero
	movq	-24(%rbp), %rcx
	movl	28(%rcx), %eax
	cltd
	idivl	%esi
	cvtsi2sdl	%eax, %xmm3
	subsd	%xmm3, %xmm2
	subsd	%xmm1, %xmm2
	cvttsd2si	%xmm2, %eax
	movl	%eax, -36(%rbp)
	movq	-24(%rbp), %rcx
	cvtsi2sdl	24(%rcx), %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, -32(%rbp)
	movq	-24(%rbp), %rcx
	cvtsi2sdl	28(%rcx), %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB11_4
.LBB11_3:                               # %sw.default
	jmp	.LBB11_4
.LBB11_4:                               # %sw.epilog
	leaq	-40(%rbp), %rdi
	callq	cairo_region_create_rectangle
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_canvas_handle_get_extents, .Lfunc_end11-gimp_canvas_handle_get_extents
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_canvas_handle_hit,@function
gimp_canvas_handle_hit:                 # @gimp_canvas_handle_hit
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp41:
	.cfi_def_cfa_offset 16
.Ltmp42:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp43:
	.cfi_def_cfa_register %rbp
	subq	$176, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movsd	%xmm0, -32(%rbp)
	movsd	%xmm1, -40(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	callq	gimp_canvas_handle_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	leaq	-56(%rbp), %rdx
	leaq	-64(%rbp), %rcx
	callq	gimp_canvas_handle_transform
	movq	-24(%rbp), %rdi
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	leaq	-72(%rbp), %rsi
	leaq	-80(%rbp), %rdx
	callq	gimp_display_shell_transform_xy_f
	movq	-48(%rbp), %rax
	movl	(%rax), %r8d
	movl	%r8d, %r9d
	subl	$2, %r9d
	movl	%r8d, -100(%rbp)        # 4-byte Spill
	movl	%r9d, -104(%rbp)        # 4-byte Spill
	jb	.LBB12_1
	jmp	.LBB12_22
.LBB12_22:                              # %entry
	movl	-100(%rbp), %eax        # 4-byte Reload
	addl	$-2, %eax
	subl	$3, %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
	jb	.LBB12_16
	jmp	.LBB12_19
.LBB12_1:                               # %sw.bb
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-56(%rbp), %xmm2        # xmm2 = mem[0],zero
	movq	-48(%rbp), %rax
	cvtsi2sdl	24(%rax), %xmm3
	addsd	%xmm3, %xmm2
	ucomisd	%xmm2, %xmm1
	movsd	%xmm0, -120(%rbp)       # 8-byte Spill
	jbe	.LBB12_3
# BB#2:                                 # %cond.true
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	cvtsi2sdl	24(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -128(%rbp)       # 8-byte Spill
	jmp	.LBB12_7
.LBB12_3:                               # %cond.false
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB12_5
# BB#4:                                 # %cond.true.8
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -136(%rbp)       # 8-byte Spill
	jmp	.LBB12_6
.LBB12_5:                               # %cond.false.9
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -136(%rbp)       # 8-byte Spill
.LBB12_6:                               # %cond.end
	movsd	-136(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -128(%rbp)       # 8-byte Spill
.LBB12_7:                               # %cond.end.10
	movsd	-128(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	xorl	%eax, %eax
	movb	%al, %cl
	movsd	-120(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	movb	%cl, -137(%rbp)         # 1-byte Spill
	jne	.LBB12_15
	jp	.LBB12_15
# BB#8:                                 # %land.rhs
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-64(%rbp), %xmm2        # xmm2 = mem[0],zero
	movq	-48(%rbp), %rax
	cvtsi2sdl	28(%rax), %xmm3
	addsd	%xmm3, %xmm2
	ucomisd	%xmm2, %xmm1
	movsd	%xmm0, -152(%rbp)       # 8-byte Spill
	jbe	.LBB12_10
# BB#9:                                 # %cond.true.18
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	cvtsi2sdl	28(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -160(%rbp)       # 8-byte Spill
	jmp	.LBB12_14
.LBB12_10:                              # %cond.false.22
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB12_12
# BB#11:                                # %cond.true.25
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -168(%rbp)       # 8-byte Spill
	jmp	.LBB12_13
.LBB12_12:                              # %cond.false.26
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -168(%rbp)       # 8-byte Spill
.LBB12_13:                              # %cond.end.27
	movsd	-168(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -160(%rbp)       # 8-byte Spill
.LBB12_14:                              # %cond.end.29
	movsd	-160(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-152(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	sete	%al
	setnp	%cl
	andb	%cl, %al
	movb	%al, -137(%rbp)         # 1-byte Spill
.LBB12_15:                              # %land.end
	movb	-137(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB12_21
.LBB12_16:                              # %sw.bb.33
	movq	-48(%rbp), %rax
	movl	24(%rax), %ecx
	movl	%ecx, -84(%rbp)
	movl	-84(%rbp), %ecx
	movq	-48(%rbp), %rax
	cmpl	28(%rax), %ecx
	je	.LBB12_18
# BB#17:                                # %if.then
	movl	$2, %eax
	movl	-84(%rbp), %ecx
	movq	-48(%rbp), %rdx
	addl	28(%rdx), %ecx
	movl	%eax, -172(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-172(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movl	%eax, -84(%rbp)
.LBB12_18:                              # %if.end
	movl	$2, %eax
	movl	-84(%rbp), %ecx
	movl	%eax, -176(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-176(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movl	%eax, -84(%rbp)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-72(%rbp), %xmm0
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	-72(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	-80(%rbp), %xmm1
	movsd	-64(%rbp), %xmm2        # xmm2 = mem[0],zero
	subsd	-80(%rbp), %xmm2
	mulsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	movl	-84(%rbp), %eax
	imull	-84(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	ucomisd	%xmm0, %xmm1
	seta	%sil
	andb	$1, %sil
	movzbl	%sil, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB12_21
.LBB12_19:                              # %sw.default
	jmp	.LBB12_20
.LBB12_20:                              # %sw.epilog
	movl	$0, -4(%rbp)
.LBB12_21:                              # %return
	movl	-4(%rbp), %eax
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_canvas_handle_hit, .Lfunc_end12-gimp_canvas_handle_hit
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp44:
	.cfi_def_cfa_offset 16
.Ltmp45:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp46:
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
	je	.LBB13_2
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
.LBB13_2:                               # %entry
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
	movl	$.L.str.1, %r9d
	movl	%r9d, %edi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end13:
	.size	g_warning, .Lfunc_end13-g_warning
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI14_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	gimp_canvas_handle_transform,@function
gimp_canvas_handle_transform:           # @gimp_canvas_handle_transform
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp47:
	.cfi_def_cfa_offset 16
.Ltmp48:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp49:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	callq	gimp_canvas_handle_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rdi
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movsd	16(%rax), %xmm1         # xmm1 = mem[0],zero
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	gimp_display_shell_transform_xy_f
	movq	-40(%rbp), %rax
	movl	(%rax), %r8d
	movl	%r8d, %r9d
	subl	$2, %r9d
	movl	%r8d, -52(%rbp)         # 4-byte Spill
	movl	%r9d, -56(%rbp)         # 4-byte Spill
	jb	.LBB14_1
	jmp	.LBB14_5
.LBB14_5:                               # %entry
	movl	-52(%rbp), %eax         # 4-byte Reload
	addl	$-2, %eax
	subl	$3, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	jb	.LBB14_2
	jmp	.LBB14_3
.LBB14_1:                               # %sw.bb
	movq	-40(%rbp), %rax
	movl	4(%rax), %edi
	movq	-24(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	movq	-40(%rbp), %rax
	movl	24(%rax), %esi
	movq	-40(%rbp), %rax
	movl	28(%rax), %edx
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %r8
	callq	gimp_canvas_item_shift_to_north_west
	jmp	.LBB14_4
.LBB14_2:                               # %sw.bb.4
	movq	-40(%rbp), %rax
	movl	4(%rax), %edi
	movq	-24(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	movq	-40(%rbp), %rax
	movl	24(%rax), %esi
	movq	-40(%rbp), %rax
	movl	28(%rax), %edx
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %r8
	callq	gimp_canvas_item_shift_to_center
	jmp	.LBB14_4
.LBB14_3:                               # %sw.default
	jmp	.LBB14_4
.LBB14_4:                               # %sw.epilog
	movsd	.LCPI14_0, %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	floor
	movsd	-72(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	movq	-24(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-32(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	callq	floor
	movsd	-72(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	movq	-32(%rbp), %rax
	movsd	%xmm0, (%rax)
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_canvas_handle_transform, .Lfunc_end14-gimp_canvas_handle_transform
	.cfi_endproc

	.type	gimp_canvas_handle_get_type.g_define_type_id__volatile,@object # @gimp_canvas_handle_get_type.g_define_type_id__volatile
	.local	gimp_canvas_handle_get_type.g_define_type_id__volatile
	.comm	gimp_canvas_handle_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpCanvasHandle"
	.size	.L.str, 17

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Display"
	.size	.L.str.1, 13

	.type	.L__func__.gimp_canvas_handle_new,@object # @__func__.gimp_canvas_handle_new
.L__func__.gimp_canvas_handle_new:
	.asciz	"gimp_canvas_handle_new"
	.size	.L__func__.gimp_canvas_handle_new, 23

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_DISPLAY_SHELL (shell)"
	.size	.L.str.2, 30

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"shell"
	.size	.L.str.3, 6

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"type"
	.size	.L.str.4, 5

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"anchor"
	.size	.L.str.5, 7

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"x"
	.size	.L.str.6, 2

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"y"
	.size	.L.str.7, 2

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"width"
	.size	.L.str.8, 6

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"height"
	.size	.L.str.9, 7

	.type	.L__func__.gimp_canvas_handle_get_position,@object # @__func__.gimp_canvas_handle_get_position
.L__func__.gimp_canvas_handle_get_position:
	.asciz	"gimp_canvas_handle_get_position"
	.size	.L__func__.gimp_canvas_handle_get_position, 32

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"GIMP_IS_CANVAS_HANDLE (handle)"
	.size	.L.str.10, 31

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"x != NULL"
	.size	.L.str.11, 10

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"y != NULL"
	.size	.L.str.12, 10

	.type	.L__func__.gimp_canvas_handle_set_position,@object # @__func__.gimp_canvas_handle_set_position
.L__func__.gimp_canvas_handle_set_position:
	.asciz	"gimp_canvas_handle_set_position"
	.size	.L__func__.gimp_canvas_handle_set_position, 32

	.type	.L__func__.gimp_canvas_handle_set_angles,@object # @__func__.gimp_canvas_handle_set_angles
.L__func__.gimp_canvas_handle_set_angles:
	.asciz	"gimp_canvas_handle_set_angles"
	.size	.L__func__.gimp_canvas_handle_set_angles, 30

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"start-angle"
	.size	.L.str.13, 12

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"slice-angle"
	.size	.L.str.14, 12

	.type	gimp_canvas_handle_parent_class,@object # @gimp_canvas_handle_parent_class
	.local	gimp_canvas_handle_parent_class
	.comm	gimp_canvas_handle_parent_class,8,8
	.type	GimpCanvasHandle_private_offset,@object # @GimpCanvasHandle_private_offset
	.local	GimpCanvasHandle_private_offset
	.comm	GimpCanvasHandle_private_offset,4,4
	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.15, 54

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"gimpcanvashandle.c"
	.size	.L.str.16, 19

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"property"
	.size	.L.str.17, 9


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
