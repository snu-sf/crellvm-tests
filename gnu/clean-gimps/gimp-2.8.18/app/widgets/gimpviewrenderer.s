	.text
	.file	"gimpviewrenderer.bc"
	.globl	gimp_view_renderer_get_type
	.align	16, 0x90
	.type	gimp_view_renderer_get_type,@function
gimp_view_renderer_get_type:            # @gimp_view_renderer_get_type
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
	subq	$64, %rsp
	xorl	%eax, %eax
	movb	%al, %cl
	mfence
	movq	gimp_view_renderer_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_view_renderer_get_type.g_define_type_id__volatile, %rax
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
	movabsq	$.L.str, %rdi
	callq	g_intern_static_string
	movl	$80, %ecx
	movl	%ecx, %edi
	movl	$200, %edx
	movabsq	$gimp_view_renderer_class_intern_init, %rsi
	movl	$152, %r8d
	movabsq	$gimp_view_renderer_init, %r9
	xorl	%ecx, %ecx
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movq	-40(%rbp), %rax         # 8-byte Reload
	movl	%ecx, -44(%rbp)         # 4-byte Spill
	movq	%rax, %rcx
	movl	$0, (%rsp)
	callq	g_type_register_static_simple
	movabsq	$gimp_view_renderer_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_view_renderer_get_type.g_define_type_id__volatile, %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_view_renderer_get_type, .Lfunc_end0-gimp_view_renderer_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_view_renderer_class_intern_init,@function
gimp_view_renderer_class_intern_init:   # @gimp_view_renderer_class_intern_init
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
	movq	%rax, gimp_view_renderer_parent_class
	cmpl	$0, GimpViewRenderer_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpViewRenderer_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_view_renderer_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_view_renderer_class_intern_init, .Lfunc_end1-gimp_view_renderer_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_view_renderer_init,@function
gimp_view_renderer_init:                # @gimp_view_renderer_init
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
	movq	-8(%rbp), %rdi
	movq	$0, 24(%rdi)
	movq	-8(%rbp), %rdi
	movq	$4, 32(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 40(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 48(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 52(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 56(%rdi)
	movq	-8(%rbp), %rdi
	movb	60(%rdi), %al
	andb	$-2, %al
	orb	$1, %al
	movb	%al, 60(%rdi)
	movq	-8(%rbp), %rdi
	movb	60(%rdi), %al
	andb	$-3, %al
	movb	%al, 60(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 64(%rdi)
	movq	-8(%rbp), %rdi
	movq	black_color, %rcx
	movq	%rcx, 72(%rdi)
	movq	black_color+8, %rcx
	movq	%rcx, 80(%rdi)
	movq	black_color+16, %rcx
	movq	%rcx, 88(%rdi)
	movq	black_color+24, %rcx
	movq	%rcx, 96(%rdi)
	movq	-8(%rbp), %rcx
	movq	$0, 104(%rcx)
	movq	-8(%rbp), %rcx
	movq	$0, 112(%rcx)
	movq	-8(%rbp), %rcx
	movq	$0, 120(%rcx)
	movq	-8(%rbp), %rcx
	movq	$0, 128(%rcx)
	movq	-8(%rbp), %rcx
	movl	$-1, 136(%rcx)
	movq	-8(%rbp), %rcx
	movl	$1, 140(%rcx)
	movq	-8(%rbp), %rcx
	movl	$0, 144(%rcx)
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_view_renderer_init, .Lfunc_end2-gimp_view_renderer_init
	.cfi_endproc

	.globl	gimp_view_renderer_new
	.align	16, 0x90
	.type	gimp_view_renderer_new,@function
gimp_view_renderer_new:                 # @gimp_view_renderer_new
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
	movl	%r8d, -36(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB3_10
# BB#2:                                 # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB3_4
# BB#3:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB3_9
.LBB3_4:                                # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_7
# BB#5:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB3_7
# BB#6:                                 # %if.then.4
	movl	$1, -68(%rbp)
	jmp	.LBB3_8
.LBB3_7:                                # %if.else.5
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB3_8:                                # %if.end
	jmp	.LBB3_9
.LBB3_9:                                # %if.end.7
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB3_11
.LBB3_10:                               # %if.then.9
	jmp	.LBB3_12
.LBB3_11:                               # %if.else.10
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_view_renderer_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_31
.LBB3_12:                               # %if.end.11
	jmp	.LBB3_13
.LBB3_13:                               # %do.end
	jmp	.LBB3_14
.LBB3_14:                               # %do.body.12
	movq	-24(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_is_a
	cmpl	$0, %eax
	je	.LBB3_16
# BB#15:                                # %if.then.16
	jmp	.LBB3_17
.LBB3_16:                               # %if.else.17
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_view_renderer_new, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_31
.LBB3_17:                               # %if.end.18
	jmp	.LBB3_18
.LBB3_18:                               # %do.end.19
	jmp	.LBB3_19
.LBB3_19:                               # %do.body.20
	cmpl	$0, -28(%rbp)
	jle	.LBB3_22
# BB#20:                                # %land.lhs.true.22
	cmpl	$2048, -28(%rbp)        # imm = 0x800
	jg	.LBB3_22
# BB#21:                                # %if.then.24
	jmp	.LBB3_23
.LBB3_22:                               # %if.else.25
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_view_renderer_new, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_31
.LBB3_23:                               # %if.end.26
	jmp	.LBB3_24
.LBB3_24:                               # %do.end.27
	jmp	.LBB3_25
.LBB3_25:                               # %do.body.28
	cmpl	$0, -32(%rbp)
	jl	.LBB3_28
# BB#26:                                # %land.lhs.true.30
	cmpl	$16, -32(%rbp)
	jg	.LBB3_28
# BB#27:                                # %if.then.32
	jmp	.LBB3_29
.LBB3_28:                               # %if.else.33
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_view_renderer_new, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_31
.LBB3_29:                               # %if.end.34
	jmp	.LBB3_30
.LBB3_30:                               # %do.end.35
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	-36(%rbp), %edx
	callq	gimp_view_renderer_new_internal
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	movl	-28(%rbp), %esi
	movl	-32(%rbp), %edx
	callq	gimp_view_renderer_set_size
	movq	-48(%rbp), %rdi
	callq	gimp_view_renderer_remove_idle
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB3_31:                               # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_view_renderer_new, .Lfunc_end3-gimp_view_renderer_new
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_view_renderer_new_internal,@function
gimp_view_renderer_new_internal:        # @gimp_view_renderer_new_internal
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
	movq	-16(%rbp), %rdi
	callq	gimp_view_renderer_type_from_viewable_type
	xorl	%edx, %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	xorl	%edx, %edx
	movl	$1, %ecx
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rsi
	movq	%rax, 32(%rsi)
	cmpl	$0, -20(%rbp)
	cmovnel	%ecx, %edx
	movq	-32(%rbp), %rax
	movb	%dl, %r8b
	movb	60(%rax), %r9b
	andb	$1, %r8b
	shlb	$1, %r8b
	andb	$-3, %r9b
	orb	%r8b, %r9b
	movb	%r9b, 60(%rax)
	cmpq	$0, -8(%rbp)
	je	.LBB4_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	gimp_view_renderer_set_context
.LBB4_2:                                # %if.end
	movq	-32(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_view_renderer_new_internal, .Lfunc_end4-gimp_view_renderer_new_internal
	.cfi_endproc

	.globl	gimp_view_renderer_set_size
	.align	16, 0x90
	.type	gimp_view_renderer_set_size,@function
gimp_view_renderer_set_size:            # @gimp_view_renderer_set_size
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
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_view_renderer_get_type
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
	movabsq	$.L__func__.gimp_view_renderer_set_size, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_28
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	jmp	.LBB5_13
.LBB5_13:                               # %do.body.11
	cmpl	$0, -12(%rbp)
	jle	.LBB5_16
# BB#14:                                # %land.lhs.true.13
	cmpl	$2048, -12(%rbp)        # imm = 0x800
	jg	.LBB5_16
# BB#15:                                # %if.then.15
	jmp	.LBB5_17
.LBB5_16:                               # %if.else.16
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_view_renderer_set_size, %rsi
	movabsq	$.L.str.13, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_28
.LBB5_17:                               # %if.end.17
	jmp	.LBB5_18
.LBB5_18:                               # %do.end.18
	jmp	.LBB5_19
.LBB5_19:                               # %do.body.19
	cmpl	$0, -16(%rbp)
	jl	.LBB5_22
# BB#20:                                # %land.lhs.true.21
	cmpl	$16, -16(%rbp)
	jg	.LBB5_22
# BB#21:                                # %if.then.23
	jmp	.LBB5_23
.LBB5_22:                               # %if.else.24
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_view_renderer_set_size, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_28
.LBB5_23:                               # %if.end.25
	jmp	.LBB5_24
.LBB5_24:                               # %do.end.26
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 136(%rcx)
	movq	-8(%rbp), %rcx
	cmpq	$0, 40(%rcx)
	je	.LBB5_26
# BB#25:                                # %if.then.28
	leaq	-20(%rbp), %r8
	leaq	-24(%rbp), %r9
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdi
	movl	-12(%rbp), %esi
	movq	-8(%rbp), %rax
	movb	60(%rax), %cl
	shrb	$1, %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movq	-8(%rbp), %rax
	movb	60(%rax), %cl
	andb	$1, %cl
	movzbl	%cl, %ecx
	callq	gimp_viewable_get_preview_size
	jmp	.LBB5_27
.LBB5_26:                               # %if.else.33
	movl	-12(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, -24(%rbp)
.LBB5_27:                               # %if.end.34
	movq	-8(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	movl	-16(%rbp), %ecx
	callq	gimp_view_renderer_set_size_full
.LBB5_28:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_view_renderer_set_size, .Lfunc_end5-gimp_view_renderer_set_size
	.cfi_endproc

	.globl	gimp_view_renderer_remove_idle
	.align	16, 0x90
	.type	gimp_view_renderer_remove_idle,@function
gimp_view_renderer_remove_idle:         # @gimp_view_renderer_remove_idle
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_view_renderer_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB6_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB6_8
.LBB6_3:                                # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB6_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB6_7
.LBB6_6:                                # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB6_7:                                # %if.end
	jmp	.LBB6_8
.LBB6_8:                                # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB6_10
# BB#9:                                 # %if.then.8
	jmp	.LBB6_11
.LBB6_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_view_renderer_remove_idle, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB6_14
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	movq	-8(%rbp), %rax
	cmpl	$0, 144(%rax)
	je	.LBB6_14
# BB#13:                                # %if.then.12
	movq	-8(%rbp), %rax
	movl	144(%rax), %edi
	callq	g_source_remove
	movq	-8(%rbp), %rcx
	movl	$0, 144(%rcx)
	movl	%eax, -36(%rbp)         # 4-byte Spill
.LBB6_14:                               # %if.end.16
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_view_renderer_remove_idle, .Lfunc_end6-gimp_view_renderer_remove_idle
	.cfi_endproc

	.globl	gimp_view_renderer_new_full
	.align	16, 0x90
	.type	gimp_view_renderer_new_full,@function
gimp_view_renderer_new_full:            # @gimp_view_renderer_new_full
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movl	%r9d, -40(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB7_10
# BB#2:                                 # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB7_4
# BB#3:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB7_9
.LBB7_4:                                # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_7
# BB#5:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB7_7
# BB#6:                                 # %if.then.4
	movl	$1, -68(%rbp)
	jmp	.LBB7_8
.LBB7_7:                                # %if.else.5
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB7_8:                                # %if.end
	jmp	.LBB7_9
.LBB7_9:                                # %if.end.7
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB7_11
.LBB7_10:                               # %if.then.9
	jmp	.LBB7_12
.LBB7_11:                               # %if.else.10
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_view_renderer_new_full, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB7_37
.LBB7_12:                               # %if.end.11
	jmp	.LBB7_13
.LBB7_13:                               # %do.end
	jmp	.LBB7_14
.LBB7_14:                               # %do.body.12
	movq	-24(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_is_a
	cmpl	$0, %eax
	je	.LBB7_16
# BB#15:                                # %if.then.16
	jmp	.LBB7_17
.LBB7_16:                               # %if.else.17
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_view_renderer_new_full, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB7_37
.LBB7_17:                               # %if.end.18
	jmp	.LBB7_18
.LBB7_18:                               # %do.end.19
	jmp	.LBB7_19
.LBB7_19:                               # %do.body.20
	cmpl	$0, -28(%rbp)
	jle	.LBB7_22
# BB#20:                                # %land.lhs.true.22
	cmpl	$2048, -28(%rbp)        # imm = 0x800
	jg	.LBB7_22
# BB#21:                                # %if.then.24
	jmp	.LBB7_23
.LBB7_22:                               # %if.else.25
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_view_renderer_new_full, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB7_37
.LBB7_23:                               # %if.end.26
	jmp	.LBB7_24
.LBB7_24:                               # %do.end.27
	jmp	.LBB7_25
.LBB7_25:                               # %do.body.28
	cmpl	$0, -32(%rbp)
	jle	.LBB7_28
# BB#26:                                # %land.lhs.true.30
	cmpl	$2048, -32(%rbp)        # imm = 0x800
	jg	.LBB7_28
# BB#27:                                # %if.then.32
	jmp	.LBB7_29
.LBB7_28:                               # %if.else.33
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_view_renderer_new_full, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB7_37
.LBB7_29:                               # %if.end.34
	jmp	.LBB7_30
.LBB7_30:                               # %do.end.35
	jmp	.LBB7_31
.LBB7_31:                               # %do.body.36
	cmpl	$0, -36(%rbp)
	jl	.LBB7_34
# BB#32:                                # %land.lhs.true.38
	cmpl	$16, -36(%rbp)
	jg	.LBB7_34
# BB#33:                                # %if.then.40
	jmp	.LBB7_35
.LBB7_34:                               # %if.else.41
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_view_renderer_new_full, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB7_37
.LBB7_35:                               # %if.end.42
	jmp	.LBB7_36
.LBB7_36:                               # %do.end.43
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	-40(%rbp), %edx
	callq	gimp_view_renderer_new_internal
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	movl	-28(%rbp), %esi
	movl	-32(%rbp), %edx
	movl	-36(%rbp), %ecx
	callq	gimp_view_renderer_set_size_full
	movq	-48(%rbp), %rdi
	callq	gimp_view_renderer_remove_idle
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB7_37:                               # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_view_renderer_new_full, .Lfunc_end7-gimp_view_renderer_new_full
	.cfi_endproc

	.globl	gimp_view_renderer_set_size_full
	.align	16, 0x90
	.type	gimp_view_renderer_set_size_full,@function
gimp_view_renderer_set_size_full:       # @gimp_view_renderer_set_size_full
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_view_renderer_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB8_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB8_8
.LBB8_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB8_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB8_7
.LBB8_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB8_7:                                # %if.end
	jmp	.LBB8_8
.LBB8_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB8_10
# BB#9:                                 # %if.then.8
	jmp	.LBB8_11
.LBB8_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_view_renderer_set_size_full, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB8_38
.LBB8_11:                               # %if.end.10
	jmp	.LBB8_12
.LBB8_12:                               # %do.end
	jmp	.LBB8_13
.LBB8_13:                               # %do.body.11
	cmpl	$0, -12(%rbp)
	jle	.LBB8_16
# BB#14:                                # %land.lhs.true.13
	cmpl	$2048, -12(%rbp)        # imm = 0x800
	jg	.LBB8_16
# BB#15:                                # %if.then.15
	jmp	.LBB8_17
.LBB8_16:                               # %if.else.16
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_view_renderer_set_size_full, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB8_38
.LBB8_17:                               # %if.end.17
	jmp	.LBB8_18
.LBB8_18:                               # %do.end.18
	jmp	.LBB8_19
.LBB8_19:                               # %do.body.19
	cmpl	$0, -16(%rbp)
	jle	.LBB8_22
# BB#20:                                # %land.lhs.true.21
	cmpl	$2048, -16(%rbp)        # imm = 0x800
	jg	.LBB8_22
# BB#21:                                # %if.then.23
	jmp	.LBB8_23
.LBB8_22:                               # %if.else.24
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_view_renderer_set_size_full, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB8_38
.LBB8_23:                               # %if.end.25
	jmp	.LBB8_24
.LBB8_24:                               # %do.end.26
	jmp	.LBB8_25
.LBB8_25:                               # %do.body.27
	cmpl	$0, -20(%rbp)
	jl	.LBB8_28
# BB#26:                                # %land.lhs.true.29
	cmpl	$16, -20(%rbp)
	jg	.LBB8_28
# BB#27:                                # %if.then.31
	jmp	.LBB8_29
.LBB8_28:                               # %if.else.32
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_view_renderer_set_size_full, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB8_38
.LBB8_29:                               # %if.end.33
	jmp	.LBB8_30
.LBB8_30:                               # %do.end.34
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	48(%rcx), %eax
	jne	.LBB8_33
# BB#31:                                # %lor.lhs.false
	movl	-16(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	52(%rcx), %eax
	jne	.LBB8_33
# BB#32:                                # %lor.lhs.false.39
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	56(%rcx), %eax
	je	.LBB8_38
.LBB8_33:                               # %if.then.42
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 48(%rcx)
	movl	-16(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 52(%rcx)
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 56(%rcx)
	movq	-8(%rbp), %rcx
	cmpq	$0, 104(%rcx)
	je	.LBB8_35
# BB#34:                                # %if.then.47
	movq	-8(%rbp), %rax
	movq	104(%rax), %rdi
	callq	cairo_surface_destroy
	movq	-8(%rbp), %rax
	movq	$0, 104(%rax)
.LBB8_35:                               # %if.end.50
	movq	-8(%rbp), %rax
	cmpq	$0, 40(%rax)
	je	.LBB8_37
# BB#36:                                # %if.then.52
	movq	-8(%rbp), %rdi
	callq	gimp_view_renderer_invalidate
.LBB8_37:                               # %if.end.53
	jmp	.LBB8_38
.LBB8_38:                               # %if.end.54
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_view_renderer_set_size_full, .Lfunc_end8-gimp_view_renderer_set_size_full
	.cfi_endproc

	.globl	gimp_view_renderer_set_context
	.align	16, 0x90
	.type	gimp_view_renderer_set_context,@function
gimp_view_renderer_set_context:         # @gimp_view_renderer_set_context
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_view_renderer_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB9_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB9_8
.LBB9_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB9_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB9_7
.LBB9_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB9_7:                                # %if.end
	jmp	.LBB9_8
.LBB9_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB9_10
# BB#9:                                 # %if.then.8
	jmp	.LBB9_11
.LBB9_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_view_renderer_set_context, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB9_29
.LBB9_11:                               # %if.end.10
	jmp	.LBB9_12
.LBB9_12:                               # %do.end
	jmp	.LBB9_13
.LBB9_13:                               # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB9_22
# BB#14:                                # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB9_16
# BB#15:                                # %if.then.21
	movl	$0, -60(%rbp)
	jmp	.LBB9_21
.LBB9_16:                               # %if.else.22
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_19
# BB#17:                                # %land.lhs.true.25
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB9_19
# BB#18:                                # %if.then.29
	movl	$1, -60(%rbp)
	jmp	.LBB9_20
.LBB9_19:                               # %if.else.30
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB9_20:                               # %if.end.32
	jmp	.LBB9_21
.LBB9_21:                               # %if.end.33
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB9_23
.LBB9_22:                               # %if.then.36
	jmp	.LBB9_24
.LBB9_23:                               # %if.else.37
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_view_renderer_set_context, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB9_29
.LBB9_24:                               # %if.end.38
	jmp	.LBB9_25
.LBB9_25:                               # %do.end.39
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	24(%rcx), %rax
	je	.LBB9_29
# BB#26:                                # %if.then.42
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	168(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
	movq	-8(%rbp), %rax
	cmpq	$0, 40(%rax)
	je	.LBB9_28
# BB#27:                                # %if.then.45
	movq	-8(%rbp), %rdi
	callq	gimp_view_renderer_invalidate
.LBB9_28:                               # %if.end.46
	jmp	.LBB9_29
.LBB9_29:                               # %if.end.47
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_view_renderer_set_context, .Lfunc_end9-gimp_view_renderer_set_context
	.cfi_endproc

	.globl	gimp_view_renderer_invalidate
	.align	16, 0x90
	.type	gimp_view_renderer_invalidate,@function
gimp_view_renderer_invalidate:          # @gimp_view_renderer_invalidate
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_view_renderer_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB10_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB10_8
.LBB10_3:                               # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB10_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB10_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB10_7
.LBB10_6:                               # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB10_7:                               # %if.end
	jmp	.LBB10_8
.LBB10_8:                               # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB10_10
# BB#9:                                 # %if.then.8
	jmp	.LBB10_11
.LBB10_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_view_renderer_invalidate, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB10_15
.LBB10_11:                              # %if.end.10
	jmp	.LBB10_12
.LBB10_12:                              # %do.end
	movq	-8(%rbp), %rax
	cmpl	$0, 144(%rax)
	je	.LBB10_14
# BB#13:                                # %if.then.12
	movq	-8(%rbp), %rax
	movl	144(%rax), %edi
	callq	g_source_remove
	movq	-8(%rbp), %rcx
	movl	$0, 144(%rcx)
	movl	%eax, -36(%rbp)         # 4-byte Spill
.LBB10_14:                              # %if.end.16
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	176(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	movl	$300, %edi              # imm = 0x12C
	movabsq	$gimp_view_renderer_idle_update, %rax
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-8(%rbp), %rdx
	movq	%rax, %rsi
	callq	g_idle_add_full
	movq	-8(%rbp), %rcx
	movl	%eax, 144(%rcx)
.LBB10_15:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_view_renderer_invalidate, .Lfunc_end10-gimp_view_renderer_invalidate
	.cfi_endproc

	.globl	gimp_view_renderer_set_viewable
	.align	16, 0x90
	.type	gimp_view_renderer_set_viewable,@function
gimp_view_renderer_set_viewable:        # @gimp_view_renderer_set_viewable
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
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_view_renderer_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB11_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB11_8
.LBB11_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB11_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB11_7
.LBB11_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB11_7:                               # %if.end
	jmp	.LBB11_8
.LBB11_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB11_10
# BB#9:                                 # %if.then.8
	jmp	.LBB11_11
.LBB11_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_view_renderer_set_viewable, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB11_45
.LBB11_11:                              # %if.end.10
	jmp	.LBB11_12
.LBB11_12:                              # %do.end
	jmp	.LBB11_13
.LBB11_13:                              # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB11_22
# BB#14:                                # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_viewable_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB11_16
# BB#15:                                # %if.then.21
	movl	$0, -60(%rbp)
	jmp	.LBB11_21
.LBB11_16:                              # %if.else.22
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_19
# BB#17:                                # %land.lhs.true.25
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB11_19
# BB#18:                                # %if.then.29
	movl	$1, -60(%rbp)
	jmp	.LBB11_20
.LBB11_19:                              # %if.else.30
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB11_20:                              # %if.end.32
	jmp	.LBB11_21
.LBB11_21:                              # %if.end.33
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB11_23
.LBB11_22:                              # %if.then.36
	jmp	.LBB11_24
.LBB11_23:                              # %if.else.37
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_view_renderer_set_viewable, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB11_45
.LBB11_24:                              # %if.end.38
	jmp	.LBB11_25
.LBB11_25:                              # %do.end.39
	cmpq	$0, -16(%rbp)
	je	.LBB11_32
# BB#26:                                # %if.then.41
	jmp	.LBB11_27
.LBB11_27:                              # %do.body.42
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	32(%rax), %rsi
	callq	g_type_is_a
	cmpl	$0, %eax
	je	.LBB11_29
# BB#28:                                # %if.then.47
	jmp	.LBB11_30
.LBB11_29:                              # %if.else.48
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_view_renderer_set_viewable, %rsi
	movabsq	$.L.str.10, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB11_45
.LBB11_30:                              # %if.end.49
	jmp	.LBB11_31
.LBB11_31:                              # %do.end.50
	jmp	.LBB11_32
.LBB11_32:                              # %if.end.51
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	40(%rcx), %rax
	jne	.LBB11_34
# BB#33:                                # %if.then.54
	jmp	.LBB11_45
.LBB11_34:                              # %if.end.55
	movq	-8(%rbp), %rax
	cmpq	$0, 104(%rax)
	je	.LBB11_36
# BB#35:                                # %if.then.57
	movq	-8(%rbp), %rax
	movq	104(%rax), %rdi
	callq	cairo_surface_destroy
	movq	-8(%rbp), %rax
	movq	$0, 104(%rax)
.LBB11_36:                              # %if.end.60
	movq	-8(%rbp), %rax
	cmpq	$0, 120(%rax)
	je	.LBB11_38
# BB#37:                                # %if.then.62
	movq	-8(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-8(%rbp), %rax
	movq	$0, 120(%rax)
.LBB11_38:                              # %if.end.65
	movq	-8(%rbp), %rax
	cmpq	$0, 40(%rax)
	je	.LBB11_40
# BB#39:                                # %if.then.68
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	40(%rcx), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$gimp_view_renderer_weak_notify, %rcx
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	movq	%rcx, %rsi
	movq	-72(%rbp), %rdx         # 8-byte Reload
	callq	g_object_weak_unref
	movl	$24, %esi
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movl	%r9d, %eax
	movabsq	$gimp_view_renderer_invalidate, %rcx
	movq	-8(%rbp), %rdx
	movq	40(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movl	%r8d, %edx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	movl	%r8d, %ecx
	movq	%rax, %r8
	movq	-88(%rbp), %r9          # 8-byte Reload
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_view_renderer_size_changed, %rdi
	movq	-8(%rbp), %r9
	movq	40(%r9), %r9
	movq	-8(%rbp), %r10
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%ecx, %edx
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	%r10, (%rsp)
	movl	%eax, -100(%rbp)        # 4-byte Spill
	callq	g_signal_handlers_disconnect_matched
	movl	%eax, -104(%rbp)        # 4-byte Spill
.LBB11_40:                              # %if.end.75
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 40(%rcx)
	movq	-8(%rbp), %rax
	cmpq	$0, 40(%rax)
	je	.LBB11_44
# BB#41:                                # %if.then.79
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	40(%rcx), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$gimp_view_renderer_weak_notify, %rcx
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	movq	%rcx, %rsi
	movq	-112(%rbp), %rdx        # 8-byte Reload
	callq	g_object_weak_ref
	movabsq	$.L.str.11, %rsi
	movabsq	$gimp_view_renderer_invalidate, %rax
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	movl	$2, %r9d
	movq	-8(%rbp), %rcx
	movq	40(%rcx), %rcx
	movq	-8(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rdx, -120(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-120(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.12, %rsi
	movabsq	$gimp_view_renderer_size_changed, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-8(%rbp), %rdx
	movq	40(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-128(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-8(%rbp), %rcx
	cmpl	$-1, 136(%rcx)
	movq	%rax, -144(%rbp)        # 8-byte Spill
	je	.LBB11_43
# BB#42:                                # %if.then.87
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	136(%rax), %esi
	movq	-8(%rbp), %rax
	movl	56(%rax), %edx
	callq	gimp_view_renderer_set_size
.LBB11_43:                              # %if.end.89
	movq	-8(%rbp), %rdi
	callq	gimp_view_renderer_invalidate
	jmp	.LBB11_45
.LBB11_44:                              # %if.else.90
	movq	-8(%rbp), %rdi
	callq	gimp_view_renderer_update_idle
.LBB11_45:                              # %if.end.91
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_view_renderer_set_viewable, .Lfunc_end11-gimp_view_renderer_set_viewable
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_view_renderer_weak_notify,@function
gimp_view_renderer_weak_notify:         # @gimp_view_renderer_weak_notify
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	$0, 40(%rsi)
	movq	-8(%rbp), %rdi
	callq	gimp_view_renderer_update_idle
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_view_renderer_weak_notify, .Lfunc_end12-gimp_view_renderer_weak_notify
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_view_renderer_size_changed,@function
gimp_view_renderer_size_changed:        # @gimp_view_renderer_size_changed
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	cmpl	$-1, 136(%rsi)
	je	.LBB13_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	136(%rax), %esi
	movq	-8(%rbp), %rax
	movl	56(%rax), %edx
	callq	gimp_view_renderer_set_size
.LBB13_2:                               # %if.end
	movq	-8(%rbp), %rdi
	callq	gimp_view_renderer_invalidate
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_view_renderer_size_changed, .Lfunc_end13-gimp_view_renderer_size_changed
	.cfi_endproc

	.globl	gimp_view_renderer_update_idle
	.align	16, 0x90
	.type	gimp_view_renderer_update_idle,@function
gimp_view_renderer_update_idle:         # @gimp_view_renderer_update_idle
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_view_renderer_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB14_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB14_8
.LBB14_3:                               # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB14_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB14_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB14_7
.LBB14_6:                               # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB14_7:                               # %if.end
	jmp	.LBB14_8
.LBB14_8:                               # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB14_10
# BB#9:                                 # %if.then.8
	jmp	.LBB14_11
.LBB14_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_view_renderer_update_idle, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB14_15
.LBB14_11:                              # %if.end.10
	jmp	.LBB14_12
.LBB14_12:                              # %do.end
	movq	-8(%rbp), %rax
	cmpl	$0, 144(%rax)
	je	.LBB14_14
# BB#13:                                # %if.then.12
	movq	-8(%rbp), %rax
	movl	144(%rax), %edi
	callq	g_source_remove
	movl	%eax, -36(%rbp)         # 4-byte Spill
.LBB14_14:                              # %if.end.15
	movl	$300, %edi              # imm = 0x12C
	movabsq	$gimp_view_renderer_idle_update, %rax
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-8(%rbp), %rdx
	movq	%rax, %rsi
	callq	g_idle_add_full
	movq	-8(%rbp), %rcx
	movl	%eax, 144(%rcx)
.LBB14_15:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_view_renderer_update_idle, .Lfunc_end14-gimp_view_renderer_update_idle
	.cfi_endproc

	.globl	gimp_view_renderer_set_dot_for_dot
	.align	16, 0x90
	.type	gimp_view_renderer_set_dot_for_dot,@function
gimp_view_renderer_set_dot_for_dot:     # @gimp_view_renderer_set_dot_for_dot
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_view_renderer_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB15_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB15_8
.LBB15_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB15_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB15_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB15_7
.LBB15_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB15_7:                               # %if.end
	jmp	.LBB15_8
.LBB15_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB15_10
# BB#9:                                 # %if.then.8
	jmp	.LBB15_11
.LBB15_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_view_renderer_set_dot_for_dot, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB15_16
.LBB15_11:                              # %if.end.10
	jmp	.LBB15_12
.LBB15_12:                              # %do.end
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movb	60(%rcx), %dl
	andb	$1, %dl
	movzbl	%dl, %esi
	cmpl	%esi, %eax
	je	.LBB15_16
# BB#13:                                # %if.then.13
	xorl	%eax, %eax
	movl	$1, %ecx
	cmpl	$0, -12(%rbp)
	cmovnel	%ecx, %eax
	movq	-8(%rbp), %rdx
	movb	%al, %sil
	movb	60(%rdx), %dil
	andb	$1, %sil
	andb	$-2, %dil
	orb	%sil, %dil
	movb	%dil, 60(%rdx)
	movq	-8(%rbp), %rdx
	cmpl	$-1, 136(%rdx)
	je	.LBB15_15
# BB#14:                                # %if.then.19
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	136(%rax), %esi
	movq	-8(%rbp), %rax
	movl	56(%rax), %edx
	callq	gimp_view_renderer_set_size
.LBB15_15:                              # %if.end.21
	movq	-8(%rbp), %rdi
	callq	gimp_view_renderer_invalidate
.LBB15_16:                              # %if.end.22
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_view_renderer_set_dot_for_dot, .Lfunc_end15-gimp_view_renderer_set_dot_for_dot
	.cfi_endproc

	.globl	gimp_view_renderer_set_border_type
	.align	16, 0x90
	.type	gimp_view_renderer_set_border_type,@function
gimp_view_renderer_set_border_type:     # @gimp_view_renderer_set_border_type
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
	subq	$64, %rsp
	movabsq	$black_color, %rax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rax, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_view_renderer_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB16_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB16_8
.LBB16_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB16_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB16_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB16_7
.LBB16_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB16_7:                               # %if.end
	jmp	.LBB16_8
.LBB16_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB16_10
# BB#9:                                 # %if.then.8
	jmp	.LBB16_11
.LBB16_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_view_renderer_set_border_type, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB16_18
.LBB16_11:                              # %if.end.10
	jmp	.LBB16_12
.LBB16_12:                              # %do.end
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 64(%rcx)
	movl	-12(%rbp), %eax
	movl	%eax, %ecx
	movq	%rcx, %rdx
	subq	$3, %rdx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	ja	.LBB16_17
# BB#19:                                # %do.end
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	.LJTI16_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB16_13:                              # %sw.bb
	movabsq	$black_color, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB16_17
.LBB16_14:                              # %sw.bb.12
	movabsq	$white_color, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB16_17
.LBB16_15:                              # %sw.bb.13
	movabsq	$green_color, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB16_17
.LBB16_16:                              # %sw.bb.14
	movabsq	$red_color, %rax
	movq	%rax, -24(%rbp)
.LBB16_17:                              # %sw.epilog
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_view_renderer_set_border_color
.LBB16_18:                              # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_view_renderer_set_border_type, .Lfunc_end16-gimp_view_renderer_set_border_type
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI16_0:
	.quad	.LBB16_13
	.quad	.LBB16_14
	.quad	.LBB16_16
	.quad	.LBB16_15

	.text
	.globl	gimp_view_renderer_set_border_color
	.align	16, 0x90
	.type	gimp_view_renderer_set_border_color,@function
gimp_view_renderer_set_border_color:    # @gimp_view_renderer_set_border_color
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_view_renderer_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB17_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB17_8
.LBB17_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB17_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB17_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB17_7
.LBB17_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB17_7:                               # %if.end
	jmp	.LBB17_8
.LBB17_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB17_10
# BB#9:                                 # %if.then.8
	jmp	.LBB17_11
.LBB17_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_view_renderer_set_border_color, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB17_19
.LBB17_11:                              # %if.end.10
	jmp	.LBB17_12
.LBB17_12:                              # %do.end
	jmp	.LBB17_13
.LBB17_13:                              # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB17_15
# BB#14:                                # %if.then.13
	jmp	.LBB17_16
.LBB17_15:                              # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_view_renderer_set_border_color, %rsi
	movabsq	$.L.str.14, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB17_19
.LBB17_16:                              # %if.end.15
	jmp	.LBB17_17
.LBB17_17:                              # %do.end.16
	movq	-8(%rbp), %rax
	addq	$72, %rax
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_rgb_distance
	xorps	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jne	.LBB17_18
	jp	.LBB17_18
	jmp	.LBB17_19
.LBB17_18:                              # %if.then.19
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rdx
	movq	%rdx, 72(%rax)
	movq	8(%rcx), %rdx
	movq	%rdx, 80(%rax)
	movq	16(%rcx), %rdx
	movq	%rdx, 88(%rax)
	movq	24(%rcx), %rcx
	movq	%rcx, 96(%rax)
	movq	-8(%rbp), %rdi
	callq	gimp_view_renderer_update_idle
.LBB17_19:                              # %if.end.21
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_view_renderer_set_border_color, .Lfunc_end17-gimp_view_renderer_set_border_color
	.cfi_endproc

	.globl	gimp_view_renderer_set_background
	.align	16, 0x90
	.type	gimp_view_renderer_set_background,@function
gimp_view_renderer_set_background:      # @gimp_view_renderer_set_background
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp54:
	.cfi_def_cfa_offset 16
.Ltmp55:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp56:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_view_renderer_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB18_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB18_8
.LBB18_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB18_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB18_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB18_7
.LBB18_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB18_7:                               # %if.end
	jmp	.LBB18_8
.LBB18_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB18_10
# BB#9:                                 # %if.then.8
	jmp	.LBB18_11
.LBB18_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_view_renderer_set_background, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB18_16
.LBB18_11:                              # %if.end.10
	jmp	.LBB18_12
.LBB18_12:                              # %do.end
	movq	-8(%rbp), %rax
	cmpq	$0, 128(%rax)
	je	.LBB18_14
# BB#13:                                # %if.then.12
	movq	-8(%rbp), %rax
	movq	128(%rax), %rdi
	callq	g_free
.LBB18_14:                              # %if.end.14
	movq	-16(%rbp), %rdi
	callq	g_strdup
	movq	-8(%rbp), %rdi
	movq	%rax, 128(%rdi)
	movq	-8(%rbp), %rax
	cmpq	$0, 112(%rax)
	je	.LBB18_16
# BB#15:                                # %if.then.18
	movq	-8(%rbp), %rax
	movq	112(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-8(%rbp), %rax
	movq	$0, 112(%rax)
.LBB18_16:                              # %if.end.21
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_view_renderer_set_background, .Lfunc_end18-gimp_view_renderer_set_background
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_view_renderer_idle_update,@function
gimp_view_renderer_idle_update:         # @gimp_view_renderer_idle_update
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp57:
	.cfi_def_cfa_offset 16
.Ltmp58:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp59:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	$0, 144(%rdi)
	movq	-8(%rbp), %rdi
	callq	gimp_view_renderer_update
	xorl	%eax, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_view_renderer_idle_update, .Lfunc_end19-gimp_view_renderer_idle_update
	.cfi_endproc

	.globl	gimp_view_renderer_update
	.align	16, 0x90
	.type	gimp_view_renderer_update,@function
gimp_view_renderer_update:              # @gimp_view_renderer_update
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_view_renderer_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB20_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB20_8
.LBB20_3:                               # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB20_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB20_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB20_7
.LBB20_6:                               # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB20_7:                               # %if.end
	jmp	.LBB20_8
.LBB20_8:                               # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB20_10
# BB#9:                                 # %if.then.8
	jmp	.LBB20_11
.LBB20_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_view_renderer_update, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB20_15
.LBB20_11:                              # %if.end.10
	jmp	.LBB20_12
.LBB20_12:                              # %do.end
	movq	-8(%rbp), %rax
	cmpl	$0, 144(%rax)
	je	.LBB20_14
# BB#13:                                # %if.then.12
	movq	-8(%rbp), %rax
	movl	144(%rax), %edi
	callq	g_source_remove
	movq	-8(%rbp), %rcx
	movl	$0, 144(%rcx)
	movl	%eax, -36(%rbp)         # 4-byte Spill
.LBB20_14:                              # %if.end.16
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	movl	renderer_signals, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
.LBB20_15:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_view_renderer_update, .Lfunc_end20-gimp_view_renderer_update
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI21_0:
	.quad	4611686018427387904     # double 2
	.text
	.globl	gimp_view_renderer_draw
	.align	16, 0x90
	.type	gimp_view_renderer_draw,@function
gimp_view_renderer_draw:                # @gimp_view_renderer_draw
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%r8d, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_view_renderer_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB21_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB21_8
.LBB21_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB21_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB21_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB21_7
.LBB21_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB21_7:                               # %if.end
	jmp	.LBB21_8
.LBB21_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB21_10
# BB#9:                                 # %if.then.8
	jmp	.LBB21_11
.LBB21_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_view_renderer_draw, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB21_38
.LBB21_11:                              # %if.end.10
	jmp	.LBB21_12
.LBB21_12:                              # %do.end
	jmp	.LBB21_13
.LBB21_13:                              # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gtk_widget_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB21_15
# BB#14:                                # %if.then.20
	movl	$0, -76(%rbp)
	jmp	.LBB21_20
.LBB21_15:                              # %if.else.21
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB21_18
# BB#16:                                # %land.lhs.true.24
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB21_18
# BB#17:                                # %if.then.28
	movl	$1, -76(%rbp)
	jmp	.LBB21_19
.LBB21_18:                              # %if.else.29
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB21_19:                              # %if.end.31
	jmp	.LBB21_20
.LBB21_20:                              # %if.end.32
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB21_22
# BB#21:                                # %if.then.35
	jmp	.LBB21_23
.LBB21_22:                              # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_view_renderer_draw, %rsi
	movabsq	$.L.str.15, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB21_38
.LBB21_23:                              # %if.end.37
	jmp	.LBB21_24
.LBB21_24:                              # %do.end.38
	jmp	.LBB21_25
.LBB21_25:                              # %do.body.39
	cmpq	$0, -24(%rbp)
	je	.LBB21_27
# BB#26:                                # %if.then.41
	jmp	.LBB21_28
.LBB21_27:                              # %if.else.42
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_view_renderer_draw, %rsi
	movabsq	$.L.str.16, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB21_38
.LBB21_28:                              # %if.end.43
	jmp	.LBB21_29
.LBB21_29:                              # %do.end.44
	movq	-8(%rbp), %rax
	cmpq	$0, 24(%rax)
	jne	.LBB21_31
# BB#30:                                # %if.then.46
	movabsq	$.L.str.17, %rdi
	movabsq	$.L__func__.gimp_view_renderer_draw, %rsi
	movb	$0, %al
	callq	g_warning
.LBB21_31:                              # %if.end.47
	movq	-16(%rbp), %rdi
	callq	gtk_widget_is_drawable
	cmpl	$0, %eax
	jne	.LBB21_33
# BB#32:                                # %if.then.50
	jmp	.LBB21_38
.LBB21_33:                              # %if.end.51
	movq	-8(%rbp), %rax
	cmpq	$0, 40(%rax)
	je	.LBB21_35
# BB#34:                                # %if.then.53
	movq	-24(%rbp), %rdi
	callq	cairo_save
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	184(%rdi), %rdi
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movl	-28(%rbp), %ecx
	movl	-32(%rbp), %r8d
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-120(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	movq	-24(%rbp), %rdi
	callq	cairo_restore
	jmp	.LBB21_36
.LBB21_35:                              # %if.else.55
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	callq	g_type_class_ref
	movq	%rax, -88(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-88(%rbp), %rax
	movq	160(%rax), %rdx
	callq	gimp_view_renderer_render_stock
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_class_unref
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movl	-28(%rbp), %ecx
	movl	-32(%rbp), %r8d
	callq	gimp_view_renderer_real_draw
.LBB21_36:                              # %if.end.58
	movq	-8(%rbp), %rax
	cmpl	$0, 56(%rax)
	jle	.LBB21_38
# BB#37:                                # %if.then.60
	movq	-8(%rbp), %rax
	movl	48(%rax), %ecx
	movq	-8(%rbp), %rax
	addl	56(%rax), %ecx
	movl	%ecx, -92(%rbp)
	movq	-8(%rbp), %rax
	movl	52(%rax), %ecx
	movq	-8(%rbp), %rax
	addl	56(%rax), %ecx
	movl	%ecx, -96(%rbp)
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rax
	cvtsi2sdl	56(%rax), %xmm0
	callq	cairo_set_line_width
	movl	$1, %esi
	movq	-24(%rbp), %rdi
	callq	cairo_set_line_join
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rax
	addq	$72, %rax
	movq	%rax, %rsi
	callq	gimp_cairo_set_source_rgb
	movsd	.LCPI21_0, %xmm0        # xmm0 = mem[0],zero
	movl	-28(%rbp), %ecx
	subl	-92(%rbp), %ecx
	cvtsi2sdl	%ecx, %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -104(%rbp)
	movl	-32(%rbp), %ecx
	subl	-96(%rbp), %ecx
	cvtsi2sdl	%ecx, %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -112(%rbp)
	movq	-24(%rbp), %rdi
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-112(%rbp), %xmm1       # xmm1 = mem[0],zero
	cvtsi2sdl	-92(%rbp), %xmm2
	cvtsi2sdl	-96(%rbp), %xmm3
	callq	cairo_rectangle
	movq	-24(%rbp), %rdi
	callq	cairo_stroke
.LBB21_38:                              # %if.end.77
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_view_renderer_draw, .Lfunc_end21-gimp_view_renderer_draw
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB22_2
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
.LBB22_2:                               # %entry
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
.Lfunc_end22:
	.size	g_warning, .Lfunc_end22-g_warning
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI23_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	gimp_view_renderer_render_stock
	.align	16, 0x90
	.type	gimp_view_renderer_render_stock,@function
gimp_view_renderer_render_stock:        # @gimp_view_renderer_render_stock
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp69:
	.cfi_def_cfa_offset 16
.Ltmp70:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp71:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	$0, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_view_renderer_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB23_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB23_8
.LBB23_3:                               # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB23_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB23_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB23_7
.LBB23_6:                               # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB23_7:                               # %if.end
	jmp	.LBB23_8
.LBB23_8:                               # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB23_10
# BB#9:                                 # %if.then.8
	jmp	.LBB23_11
.LBB23_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_view_renderer_render_stock, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB23_41
.LBB23_11:                              # %if.end.10
	jmp	.LBB23_12
.LBB23_12:                              # %do.end
	jmp	.LBB23_13
.LBB23_13:                              # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gtk_widget_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB23_15
# BB#14:                                # %if.then.20
	movl	$0, -84(%rbp)
	jmp	.LBB23_20
.LBB23_15:                              # %if.else.21
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB23_18
# BB#16:                                # %land.lhs.true.24
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB23_18
# BB#17:                                # %if.then.28
	movl	$1, -84(%rbp)
	jmp	.LBB23_19
.LBB23_18:                              # %if.else.29
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB23_19:                              # %if.end.31
	jmp	.LBB23_20
.LBB23_20:                              # %if.end.32
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB23_22
# BB#21:                                # %if.then.35
	jmp	.LBB23_23
.LBB23_22:                              # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_view_renderer_render_stock, %rsi
	movabsq	$.L.str.15, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB23_41
.LBB23_23:                              # %if.end.37
	jmp	.LBB23_24
.LBB23_24:                              # %do.end.38
	jmp	.LBB23_25
.LBB23_25:                              # %do.body.39
	cmpq	$0, -24(%rbp)
	je	.LBB23_27
# BB#26:                                # %if.then.41
	jmp	.LBB23_28
.LBB23_27:                              # %if.else.42
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_view_renderer_render_stock, %rsi
	movabsq	$.L.str.19, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB23_41
.LBB23_28:                              # %if.end.43
	jmp	.LBB23_29
.LBB23_29:                              # %do.end.44
	movq	-8(%rbp), %rax
	cmpq	$0, 120(%rax)
	je	.LBB23_31
# BB#30:                                # %if.then.47
	movq	-8(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-8(%rbp), %rax
	movq	$0, 120(%rax)
.LBB23_31:                              # %if.end.50
	movq	-8(%rbp), %rax
	cmpq	$0, 104(%rax)
	je	.LBB23_33
# BB#32:                                # %if.then.52
	movq	-8(%rbp), %rax
	movq	104(%rax), %rdi
	callq	cairo_surface_destroy
	movq	-8(%rbp), %rax
	movq	$0, 104(%rax)
.LBB23_33:                              # %if.end.55
	xorl	%edx, %edx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	48(%rax), %ecx
	movq	-8(%rbp), %rax
	movl	52(%rax), %r8d
	callq	gimp_get_icon_size
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	je	.LBB23_35
# BB#34:                                # %if.then.58
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	-36(%rbp), %edx
	callq	gtk_widget_render_icon
	movq	%rax, -32(%rbp)
.LBB23_35:                              # %if.end.60
	cmpq	$0, -32(%rbp)
	je	.LBB23_40
# BB#36:                                # %if.then.62
	movq	-32(%rbp), %rdi
	callq	gdk_pixbuf_get_width
	movl	%eax, -92(%rbp)
	movq	-32(%rbp), %rdi
	callq	gdk_pixbuf_get_height
	movl	%eax, -96(%rbp)
	movl	-92(%rbp), %eax
	movq	-8(%rbp), %rdi
	cmpl	48(%rdi), %eax
	jg	.LBB23_38
# BB#37:                                # %lor.lhs.false
	movl	-96(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	52(%rcx), %eax
	jle	.LBB23_39
.LBB23_38:                              # %if.then.73
	movl	$1, %r8d
	movsd	.LCPI23_0, %xmm0        # xmm0 = mem[0],zero
	leaq	-92(%rbp), %r9
	leaq	-96(%rbp), %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movl	-92(%rbp), %edi
	movl	-96(%rbp), %esi
	movq	-8(%rbp), %r10
	movl	48(%r10), %ecx
	movq	-8(%rbp), %r10
	movl	52(%r10), %r11d
	movq	%rdx, -112(%rbp)        # 8-byte Spill
	movl	%ecx, %edx
	movl	%r11d, %ecx
	movsd	%xmm0, -120(%rbp)       # 8-byte Spill
	movsd	-120(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_viewable_calc_preview_size
	movl	$2, %ecx
	movq	-32(%rbp), %rdi
	movl	-92(%rbp), %esi
	movl	-96(%rbp), %edx
	callq	gdk_pixbuf_scale_simple
	movq	%rax, -104(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-104(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB23_39:                              # %if.end.78
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 120(%rcx)
.LBB23_40:                              # %if.end.80
	movq	-8(%rbp), %rax
	movl	$0, 140(%rax)
.LBB23_41:                              # %return
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	gimp_view_renderer_render_stock, .Lfunc_end23-gimp_view_renderer_render_stock
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_view_renderer_real_draw,@function
gimp_view_renderer_real_draw:           # @gimp_view_renderer_real_draw
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp72:
	.cfi_def_cfa_offset 16
.Ltmp73:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp74:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%r8d, -32(%rbp)
	movq	-8(%rbp), %rdx
	cmpl	$0, 140(%rdx)
	je	.LBB24_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	192(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
.LBB24_2:                               # %if.end
	movq	-8(%rbp), %rax
	cmpq	$0, 120(%rax)
	je	.LBB24_8
# BB#3:                                 # %if.then.2
	movq	-8(%rbp), %rax
	movq	120(%rax), %rdi
	callq	gdk_pixbuf_get_width
	movl	%eax, -36(%rbp)
	movq	-8(%rbp), %rdi
	movq	120(%rdi), %rdi
	callq	gdk_pixbuf_get_height
	movl	%eax, -40(%rbp)
	movq	-8(%rbp), %rdi
	cmpq	$0, 128(%rdi)
	je	.LBB24_7
# BB#4:                                 # %if.then.7
	movq	-8(%rbp), %rax
	cmpq	$0, 112(%rax)
	jne	.LBB24_6
# BB#5:                                 # %if.then.9
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_view_renderer_create_background
	movq	-8(%rbp), %rsi
	movq	%rax, 112(%rsi)
.LBB24_6:                               # %if.end.12
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	112(%rax), %rsi
	callq	cairo_set_source
	movq	-24(%rbp), %rdi
	callq	cairo_paint
.LBB24_7:                               # %if.end.14
	movl	$2, %eax
	movl	-28(%rbp), %ecx
	subl	-36(%rbp), %ecx
	movl	%eax, -72(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-72(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	movl	%eax, -44(%rbp)
	movl	-32(%rbp), %eax
	subl	-40(%rbp), %eax
	cltd
	idivl	%ecx
	movl	%eax, -48(%rbp)
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	120(%rsi), %rsi
	cvtsi2sdl	-44(%rbp), %xmm0
	cvtsi2sdl	-48(%rbp), %xmm1
	callq	gdk_cairo_set_source_pixbuf
	movq	-24(%rbp), %rdi
	cvtsi2sdl	-44(%rbp), %xmm0
	cvtsi2sdl	-48(%rbp), %xmm1
	cvtsi2sdl	-36(%rbp), %xmm2
	cvtsi2sdl	-40(%rbp), %xmm3
	callq	cairo_rectangle
	movq	-24(%rbp), %rdi
	callq	cairo_fill
	jmp	.LBB24_15
.LBB24_8:                               # %if.else
	movq	-8(%rbp), %rax
	cmpq	$0, 104(%rax)
	je	.LBB24_14
# BB#9:                                 # %if.then.24
	movq	-8(%rbp), %rax
	movq	104(%rax), %rdi
	callq	cairo_surface_get_content
	movl	$2, %ecx
	movl	%eax, -52(%rbp)
	movq	-8(%rbp), %rdi
	movl	48(%rdi), %eax
	movl	%eax, -56(%rbp)
	movq	-8(%rbp), %rdi
	movl	52(%rdi), %eax
	movl	%eax, -60(%rbp)
	movl	-28(%rbp), %eax
	subl	-56(%rbp), %eax
	cltd
	idivl	%ecx
	movl	%eax, -64(%rbp)
	movl	-32(%rbp), %eax
	subl	-60(%rbp), %eax
	cltd
	idivl	%ecx
	movl	%eax, -68(%rbp)
	movq	-24(%rbp), %rdi
	cvtsi2sdl	-64(%rbp), %xmm0
	cvtsi2sdl	-68(%rbp), %xmm1
	callq	cairo_translate
	xorps	%xmm0, %xmm0
	movq	-24(%rbp), %rdi
	cvtsi2sdl	-56(%rbp), %xmm2
	cvtsi2sdl	-60(%rbp), %xmm3
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
	movsd	-80(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	cairo_rectangle
	cmpl	$12288, -52(%rbp)       # imm = 0x3000
	jne	.LBB24_13
# BB#10:                                # %if.then.40
	movq	-8(%rbp), %rax
	cmpq	$0, 112(%rax)
	jne	.LBB24_12
# BB#11:                                # %if.then.43
	movq	-24(%rbp), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	callq	gimp_render_light_check_color
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_render_dark_check_color
	movl	$4, %esi
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	%rax, %rcx
	callq	gimp_cairo_checkerboard_create
	movq	-8(%rbp), %rcx
	movq	%rax, 112(%rcx)
.LBB24_12:                              # %if.end.48
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	112(%rax), %rsi
	callq	cairo_set_source
	movq	-24(%rbp), %rdi
	callq	cairo_fill_preserve
.LBB24_13:                              # %if.end.50
	xorps	%xmm0, %xmm0
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	104(%rax), %rsi
	movsd	%xmm0, -104(%rbp)       # 8-byte Spill
	movsd	-104(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	cairo_set_source_surface
	movq	-24(%rbp), %rdi
	callq	cairo_fill
	xorl	%ecx, %ecx
	movq	-24(%rbp), %rdi
	movl	%ecx, %edx
	subl	-64(%rbp), %edx
	cvtsi2sdl	%edx, %xmm0
	subl	-68(%rbp), %ecx
	cvtsi2sdl	%ecx, %xmm1
	callq	cairo_translate
.LBB24_14:                              # %if.end.56
	jmp	.LBB24_15
.LBB24_15:                              # %if.end.57
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	gimp_view_renderer_real_draw, .Lfunc_end24-gimp_view_renderer_real_draw
	.cfi_endproc

	.globl	gimp_view_renderer_render_temp_buf_simple
	.align	16, 0x90
	.type	gimp_view_renderer_render_temp_buf_simple,@function
gimp_view_renderer_render_temp_buf_simple: # @gimp_view_renderer_render_temp_buf_simple
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp75:
	.cfi_def_cfa_offset 16
.Ltmp76:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp77:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_view_renderer_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB25_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB25_8
.LBB25_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB25_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB25_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB25_7
.LBB25_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB25_7:                               # %if.end
	jmp	.LBB25_8
.LBB25_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB25_10
# BB#9:                                 # %if.then.8
	jmp	.LBB25_11
.LBB25_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_view_renderer_render_temp_buf_simple, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB25_22
.LBB25_11:                              # %if.end.10
	jmp	.LBB25_12
.LBB25_12:                              # %do.end
	jmp	.LBB25_13
.LBB25_13:                              # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB25_15
# BB#14:                                # %if.then.13
	jmp	.LBB25_16
.LBB25_15:                              # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_view_renderer_render_temp_buf_simple, %rsi
	movabsq	$.L.str.18, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB25_22
.LBB25_16:                              # %if.end.15
	jmp	.LBB25_17
.LBB25_17:                              # %do.end.16
	movq	-16(%rbp), %rax
	movl	4(%rax), %ecx
	movq	-8(%rbp), %rax
	cmpl	48(%rax), %ecx
	jge	.LBB25_19
# BB#18:                                # %if.then.19
	movl	$2, %eax
	movq	-8(%rbp), %rcx
	movl	48(%rcx), %edx
	movq	-16(%rbp), %rcx
	subl	4(%rcx), %edx
	movl	%eax, -44(%rbp)         # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-44(%rbp), %esi         # 4-byte Reload
	idivl	%esi
	movq	-16(%rbp), %rcx
	movl	%eax, 12(%rcx)
.LBB25_19:                              # %if.end.22
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	movq	-8(%rbp), %rax
	cmpl	52(%rax), %ecx
	jge	.LBB25_21
# BB#20:                                # %if.then.25
	movl	$2, %eax
	movq	-8(%rbp), %rcx
	movl	52(%rcx), %edx
	movq	-16(%rbp), %rcx
	subl	8(%rcx), %edx
	movl	%eax, -48(%rbp)         # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-48(%rbp), %esi         # 4-byte Reload
	idivl	%esi
	movq	-16(%rbp), %rcx
	movl	%eax, 16(%rcx)
.LBB25_21:                              # %if.end.30
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	xorl	%ecx, %ecx
	movl	$1, %r8d
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_view_renderer_render_temp_buf
.LBB25_22:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	gimp_view_renderer_render_temp_buf_simple, .Lfunc_end25-gimp_view_renderer_render_temp_buf_simple
	.cfi_endproc

	.globl	gimp_view_renderer_render_temp_buf
	.align	16, 0x90
	.type	gimp_view_renderer_render_temp_buf,@function
gimp_view_renderer_render_temp_buf:     # @gimp_view_renderer_render_temp_buf
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp78:
	.cfi_def_cfa_offset 16
.Ltmp79:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp80:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movq	-8(%rbp), %rsi
	cmpq	$0, 120(%rsi)
	je	.LBB26_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-8(%rbp), %rax
	movq	$0, 120(%rax)
.LBB26_2:                               # %if.end
	movq	-8(%rbp), %rax
	cmpq	$0, 104(%rax)
	jne	.LBB26_4
# BB#3:                                 # %if.then.4
	movl	$1, %edi
	movq	-8(%rbp), %rax
	movl	48(%rax), %esi
	movq	-8(%rbp), %rax
	movl	52(%rax), %edx
	callq	cairo_image_surface_create
	movq	-8(%rbp), %rcx
	movq	%rax, 104(%rcx)
.LBB26_4:                               # %if.end.6
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	movl	-28(%rbp), %ecx
	movq	-8(%rbp), %rax
	movq	104(%rax), %r8
	movq	-8(%rbp), %rax
	movl	48(%rax), %r9d
	movq	-8(%rbp), %rax
	movl	52(%rax), %r10d
	movl	%r10d, (%rsp)
	callq	gimp_view_render_temp_buf_to_surface
	movq	-8(%rbp), %rax
	movl	$0, 140(%rax)
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	gimp_view_renderer_render_temp_buf, .Lfunc_end26-gimp_view_renderer_render_temp_buf
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_view_render_temp_buf_to_surface,@function
gimp_view_render_temp_buf_to_surface:   # @gimp_view_render_temp_buf_to_surface
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp81:
	.cfi_def_cfa_offset 16
.Ltmp82:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp83:
	.cfi_def_cfa_register %rbp
	subq	$208, %rsp
	movl	16(%rbp), %eax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	%r8, -32(%rbp)
	movl	%r9d, -36(%rbp)
	movl	%eax, -40(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB27_3
# BB#2:                                 # %if.then
	jmp	.LBB27_4
.LBB27_3:                               # %if.else
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_view_render_temp_buf_to_surface, %rsi
	movabsq	$.L.str.18, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB27_108
.LBB27_4:                               # %if.end
	jmp	.LBB27_5
.LBB27_5:                               # %do.end
	jmp	.LBB27_6
.LBB27_6:                               # %do.body.1
	cmpq	$0, -32(%rbp)
	je	.LBB27_8
# BB#7:                                 # %if.then.3
	jmp	.LBB27_9
.LBB27_8:                               # %if.else.4
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_view_render_temp_buf_to_surface, %rsi
	movabsq	$.L.str.21, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB27_108
.LBB27_9:                               # %if.end.5
	jmp	.LBB27_10
.LBB27_10:                              # %do.end.6
	cmpq	$0, gimp_render_check_buf
	je	.LBB27_13
# BB#11:                                # %lor.lhs.false
	cmpq	$0, gimp_render_empty_buf
	je	.LBB27_13
# BB#12:                                # %lor.lhs.false.8
	cmpq	$0, gimp_render_white_buf
	jne	.LBB27_14
.LBB27_13:                              # %if.then.10
	jmp	.LBB27_108
.LBB27_14:                              # %if.end.11
	movq	-32(%rbp), %rdi
	callq	cairo_surface_flush
	movq	-32(%rbp), %rdi
	callq	cairo_image_surface_get_data
	movq	%rax, -64(%rbp)
	movq	-32(%rbp), %rdi
	callq	cairo_image_surface_get_stride
	movb	$1, %cl
	movl	%eax, -96(%rbp)
	movq	-8(%rbp), %rdi
	cmpl	$3, (%rdi)
	movb	%cl, -165(%rbp)         # 1-byte Spill
	je	.LBB27_16
# BB#15:                                # %lor.rhs
	movq	-8(%rbp), %rax
	cmpl	$4, (%rax)
	sete	%cl
	movb	%cl, -165(%rbp)         # 1-byte Spill
.LBB27_16:                              # %lor.end
	movb	-165(%rbp), %al         # 1-byte Reload
	movb	$1, %cl
	andb	$1, %al
	movzbl	%al, %edx
	movl	%edx, -100(%rbp)
	movq	-8(%rbp), %rsi
	cmpl	$2, (%rsi)
	movb	%cl, -166(%rbp)         # 1-byte Spill
	je	.LBB27_18
# BB#17:                                # %lor.rhs.18
	movq	-8(%rbp), %rax
	cmpl	$4, (%rax)
	sete	%cl
	movb	%cl, -166(%rbp)         # 1-byte Spill
.LBB27_18:                              # %lor.end.21
	movb	-166(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -104(%rbp)
	cmpl	$-1, -12(%rbp)
	sete	%al
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -108(%rbp)
	movq	-8(%rbp), %rdx
	movl	4(%rdx), %ecx
	movq	-8(%rbp), %rdx
	imull	(%rdx), %ecx
	movl	%ecx, -92(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB27_22
# BB#19:                                # %land.lhs.true
	cmpl	$0, -108(%rbp)
	je	.LBB27_22
# BB#20:                                # %land.lhs.true.27
	cmpl	$0, -20(%rbp)
	jne	.LBB27_22
# BB#21:                                # %if.then.30
	movq	gimp_render_check_buf, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB27_26
.LBB27_22:                              # %if.else.31
	cmpl	$1, -20(%rbp)
	jne	.LBB27_24
# BB#23:                                # %if.then.34
	movq	gimp_render_white_buf, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB27_25
.LBB27_24:                              # %if.else.35
	movq	gimp_render_empty_buf, %rax
	movq	%rax, -56(%rbp)
.LBB27_25:                              # %if.end.36
	jmp	.LBB27_26
.LBB27_26:                              # %if.end.37
	cmpl	$0, -108(%rbp)
	je	.LBB27_31
# BB#27:                                # %if.then.39
	cmpl	$0, -100(%rbp)
	je	.LBB27_29
# BB#28:                                # %if.then.41
	movl	$0, -112(%rbp)
	movl	$1, -116(%rbp)
	movl	$2, -120(%rbp)
	movl	$3, -124(%rbp)
	jmp	.LBB27_30
.LBB27_29:                              # %if.else.42
	movl	$0, -112(%rbp)
	movl	$0, -116(%rbp)
	movl	$0, -120(%rbp)
	movl	$1, -124(%rbp)
.LBB27_30:                              # %if.end.43
	jmp	.LBB27_32
.LBB27_31:                              # %if.else.44
	movl	-12(%rbp), %eax
	movl	%eax, -112(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, -116(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, -120(%rbp)
	movl	$0, -124(%rbp)
.LBB27_32:                              # %if.end.45
	movq	-8(%rbp), %rax
	movl	12(%rax), %ecx
	cmpl	-36(%rbp), %ecx
	jle	.LBB27_34
# BB#33:                                # %cond.true
	movl	-36(%rbp), %eax
	movl	%eax, -172(%rbp)        # 4-byte Spill
	jmp	.LBB27_38
.LBB27_34:                              # %cond.false
	movq	-8(%rbp), %rax
	cmpl	$0, 12(%rax)
	jge	.LBB27_36
# BB#35:                                # %cond.true.51
	xorl	%eax, %eax
	movl	%eax, -176(%rbp)        # 4-byte Spill
	jmp	.LBB27_37
.LBB27_36:                              # %cond.false.52
	movq	-8(%rbp), %rax
	movl	12(%rax), %ecx
	movl	%ecx, -176(%rbp)        # 4-byte Spill
.LBB27_37:                              # %cond.end
	movl	-176(%rbp), %eax        # 4-byte Reload
	movl	%eax, -172(%rbp)        # 4-byte Spill
.LBB27_38:                              # %cond.end.54
	movl	-172(%rbp), %eax        # 4-byte Reload
	movl	%eax, -76(%rbp)
	movq	-8(%rbp), %rcx
	movl	16(%rcx), %eax
	cmpl	-40(%rbp), %eax
	jle	.LBB27_40
# BB#39:                                # %cond.true.58
	movl	-40(%rbp), %eax
	movl	%eax, -180(%rbp)        # 4-byte Spill
	jmp	.LBB27_44
.LBB27_40:                              # %cond.false.59
	movq	-8(%rbp), %rax
	cmpl	$0, 16(%rax)
	jge	.LBB27_42
# BB#41:                                # %cond.true.63
	xorl	%eax, %eax
	movl	%eax, -184(%rbp)        # 4-byte Spill
	jmp	.LBB27_43
.LBB27_42:                              # %cond.false.64
	movq	-8(%rbp), %rax
	movl	16(%rax), %ecx
	movl	%ecx, -184(%rbp)        # 4-byte Spill
.LBB27_43:                              # %cond.end.66
	movl	-184(%rbp), %eax        # 4-byte Reload
	movl	%eax, -180(%rbp)        # 4-byte Spill
.LBB27_44:                              # %cond.end.68
	movl	-180(%rbp), %eax        # 4-byte Reload
	movl	%eax, -80(%rbp)
	movq	-8(%rbp), %rcx
	movl	12(%rcx), %eax
	movq	-8(%rbp), %rcx
	addl	4(%rcx), %eax
	cmpl	-36(%rbp), %eax
	jle	.LBB27_46
# BB#45:                                # %cond.true.74
	movl	-36(%rbp), %eax
	movl	%eax, -188(%rbp)        # 4-byte Spill
	jmp	.LBB27_50
.LBB27_46:                              # %cond.false.75
	movq	-8(%rbp), %rax
	movl	12(%rax), %ecx
	movq	-8(%rbp), %rax
	addl	4(%rax), %ecx
	cmpl	$0, %ecx
	jge	.LBB27_48
# BB#47:                                # %cond.true.81
	xorl	%eax, %eax
	movl	%eax, -192(%rbp)        # 4-byte Spill
	jmp	.LBB27_49
.LBB27_48:                              # %cond.false.82
	movq	-8(%rbp), %rax
	movl	12(%rax), %ecx
	movq	-8(%rbp), %rax
	addl	4(%rax), %ecx
	movl	%ecx, -192(%rbp)        # 4-byte Spill
.LBB27_49:                              # %cond.end.86
	movl	-192(%rbp), %eax        # 4-byte Reload
	movl	%eax, -188(%rbp)        # 4-byte Spill
.LBB27_50:                              # %cond.end.88
	movl	-188(%rbp), %eax        # 4-byte Reload
	movl	%eax, -84(%rbp)
	movq	-8(%rbp), %rcx
	movl	16(%rcx), %eax
	movq	-8(%rbp), %rcx
	addl	8(%rcx), %eax
	cmpl	-40(%rbp), %eax
	jle	.LBB27_52
# BB#51:                                # %cond.true.94
	movl	-40(%rbp), %eax
	movl	%eax, -196(%rbp)        # 4-byte Spill
	jmp	.LBB27_56
.LBB27_52:                              # %cond.false.95
	movq	-8(%rbp), %rax
	movl	16(%rax), %ecx
	movq	-8(%rbp), %rax
	addl	8(%rax), %ecx
	cmpl	$0, %ecx
	jge	.LBB27_54
# BB#53:                                # %cond.true.101
	xorl	%eax, %eax
	movl	%eax, -200(%rbp)        # 4-byte Spill
	jmp	.LBB27_55
.LBB27_54:                              # %cond.false.102
	movq	-8(%rbp), %rax
	movl	16(%rax), %ecx
	movq	-8(%rbp), %rax
	addl	8(%rax), %ecx
	movl	%ecx, -200(%rbp)        # 4-byte Spill
.LBB27_55:                              # %cond.end.106
	movl	-200(%rbp), %eax        # 4-byte Reload
	movl	%eax, -196(%rbp)        # 4-byte Spill
.LBB27_56:                              # %cond.end.108
	movl	-196(%rbp), %eax        # 4-byte Reload
	movl	%eax, -88(%rbp)
	movq	-8(%rbp), %rdi
	callq	temp_buf_get_data
	movl	-80(%rbp), %ecx
	movq	-8(%rbp), %rdi
	subl	16(%rdi), %ecx
	imull	-92(%rbp), %ecx
	movl	-76(%rbp), %edx
	movq	-8(%rbp), %rdi
	subl	12(%rdi), %edx
	movq	-8(%rbp), %rdi
	imull	(%rdi), %edx
	addl	%edx, %ecx
	movslq	%ecx, %rdi
	addq	%rdi, %rax
	movq	%rax, -48(%rbp)
	movl	$0, -68(%rbp)
.LBB27_57:                              # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB27_64 Depth 2
                                        #     Child Loop BB27_70 Depth 2
                                        #     Child Loop BB27_92 Depth 2
                                        #     Child Loop BB27_99 Depth 2
	movl	-68(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jge	.LBB27_107
# BB#58:                                # %for.body
                                        #   in Loop: Header=BB27_57 Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, -136(%rbp)
	movl	-68(%rbp), %ecx
	andl	$4, %ecx
	cmpl	$0, %ecx
	je	.LBB27_60
# BB#59:                                # %if.then.121
                                        #   in Loop: Header=BB27_57 Depth=1
	movl	$4, -148(%rbp)
	movq	-56(%rbp), %rax
	imull	$3, -148(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -144(%rbp)
	jmp	.LBB27_61
.LBB27_60:                              # %if.else.125
                                        #   in Loop: Header=BB27_57 Depth=1
	movl	$0, -148(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -144(%rbp)
.LBB27_61:                              # %if.end.126
                                        #   in Loop: Header=BB27_57 Depth=1
	movl	-68(%rbp), %eax
	cmpl	-80(%rbp), %eax
	jl	.LBB27_98
# BB#62:                                # %land.lhs.true.129
                                        #   in Loop: Header=BB27_57 Depth=1
	movl	-68(%rbp), %eax
	cmpl	-88(%rbp), %eax
	jge	.LBB27_98
# BB#63:                                # %if.then.132
                                        #   in Loop: Header=BB27_57 Depth=1
	movq	-48(%rbp), %rax
	movq	%rax, -160(%rbp)
	movl	$0, -72(%rbp)
.LBB27_64:                              # %for.cond.133
                                        #   Parent Loop BB27_57 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-72(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jge	.LBB27_69
# BB#65:                                # %for.body.136
                                        #   in Loop: Header=BB27_64 Depth=2
	jmp	.LBB27_66
.LBB27_66:                              # %do.body.137
                                        #   in Loop: Header=BB27_64 Depth=2
	movq	-144(%rbp), %rax
	movb	2(%rax), %cl
	movq	-136(%rbp), %rax
	movb	%cl, (%rax)
	movq	-144(%rbp), %rax
	movb	1(%rax), %cl
	movq	-136(%rbp), %rax
	movb	%cl, 1(%rax)
	movq	-144(%rbp), %rax
	movb	(%rax), %cl
	movq	-136(%rbp), %rax
	movb	%cl, 2(%rax)
# BB#67:                                # %do.end.143
                                        #   in Loop: Header=BB27_64 Depth=2
	jmp	.LBB27_68
.LBB27_68:                              # %for.inc
                                        #   in Loop: Header=BB27_64 Depth=2
	movl	-72(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -72(%rbp)
	movq	-136(%rbp), %rcx
	addq	$4, %rcx
	movq	%rcx, -136(%rbp)
	movq	-144(%rbp), %rcx
	addq	$3, %rcx
	movq	%rcx, -144(%rbp)
	jmp	.LBB27_64
.LBB27_69:                              # %for.end
                                        #   in Loop: Header=BB27_57 Depth=1
	movl	-76(%rbp), %eax
	movl	%eax, -72(%rbp)
.LBB27_70:                              # %for.cond.146
                                        #   Parent Loop BB27_57 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-72(%rbp), %eax
	cmpl	-84(%rbp), %eax
	jge	.LBB27_91
# BB#71:                                # %for.body.149
                                        #   in Loop: Header=BB27_70 Depth=2
	cmpl	$0, -104(%rbp)
	je	.LBB27_86
# BB#72:                                # %land.lhs.true.151
                                        #   in Loop: Header=BB27_70 Depth=2
	cmpl	$0, -108(%rbp)
	je	.LBB27_86
# BB#73:                                # %if.then.153
                                        #   in Loop: Header=BB27_70 Depth=2
	movslq	-124(%rbp), %rax
	movq	-160(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	shll	$8, %edx
	movl	%edx, -164(%rbp)
	cmpl	$0, -16(%rbp)
	jne	.LBB27_82
# BB#74:                                # %if.then.158
                                        #   in Loop: Header=BB27_70 Depth=2
	movl	-72(%rbp), %eax
	addl	-148(%rbp), %eax
	andl	$4, %eax
	cmpl	$0, %eax
	je	.LBB27_78
# BB#75:                                # %if.then.162
                                        #   in Loop: Header=BB27_70 Depth=2
	jmp	.LBB27_76
.LBB27_76:                              # %do.body.163
                                        #   in Loop: Header=BB27_70 Depth=2
	movl	-164(%rbp), %eax
	movslq	-120(%rbp), %rcx
	movq	-160(%rbp), %rdx
	movzbl	(%rdx,%rcx), %esi
	orl	%esi, %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	gimp_render_blend_dark_check, %rdx
	movb	(%rdx,%rcx), %dil
	movq	-136(%rbp), %rcx
	movb	%dil, (%rcx)
	movl	-164(%rbp), %eax
	movslq	-116(%rbp), %rcx
	movq	-160(%rbp), %rdx
	movzbl	(%rdx,%rcx), %esi
	orl	%esi, %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	gimp_render_blend_dark_check, %rdx
	movb	(%rdx,%rcx), %dil
	movq	-136(%rbp), %rcx
	movb	%dil, 1(%rcx)
	movl	-164(%rbp), %eax
	movslq	-112(%rbp), %rcx
	movq	-160(%rbp), %rdx
	movzbl	(%rdx,%rcx), %esi
	orl	%esi, %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	gimp_render_blend_dark_check, %rdx
	movb	(%rdx,%rcx), %dil
	movq	-136(%rbp), %rcx
	movb	%dil, 2(%rcx)
# BB#77:                                # %do.end.184
                                        #   in Loop: Header=BB27_70 Depth=2
	jmp	.LBB27_81
.LBB27_78:                              # %if.else.185
                                        #   in Loop: Header=BB27_70 Depth=2
	jmp	.LBB27_79
.LBB27_79:                              # %do.body.186
                                        #   in Loop: Header=BB27_70 Depth=2
	movl	-164(%rbp), %eax
	movslq	-120(%rbp), %rcx
	movq	-160(%rbp), %rdx
	movzbl	(%rdx,%rcx), %esi
	orl	%esi, %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	gimp_render_blend_light_check, %rdx
	movb	(%rdx,%rcx), %dil
	movq	-136(%rbp), %rcx
	movb	%dil, (%rcx)
	movl	-164(%rbp), %eax
	movslq	-116(%rbp), %rcx
	movq	-160(%rbp), %rdx
	movzbl	(%rdx,%rcx), %esi
	orl	%esi, %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	gimp_render_blend_light_check, %rdx
	movb	(%rdx,%rcx), %dil
	movq	-136(%rbp), %rcx
	movb	%dil, 1(%rcx)
	movl	-164(%rbp), %eax
	movslq	-112(%rbp), %rcx
	movq	-160(%rbp), %rdx
	movzbl	(%rdx,%rcx), %esi
	orl	%esi, %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	gimp_render_blend_light_check, %rdx
	movb	(%rdx,%rcx), %dil
	movq	-136(%rbp), %rcx
	movb	%dil, 2(%rcx)
# BB#80:                                # %do.end.208
                                        #   in Loop: Header=BB27_70 Depth=2
	jmp	.LBB27_81
.LBB27_81:                              # %if.end.209
                                        #   in Loop: Header=BB27_70 Depth=2
	jmp	.LBB27_85
.LBB27_82:                              # %if.else.210
                                        #   in Loop: Header=BB27_70 Depth=2
	jmp	.LBB27_83
.LBB27_83:                              # %do.body.211
                                        #   in Loop: Header=BB27_70 Depth=2
	movl	-164(%rbp), %eax
	movslq	-120(%rbp), %rcx
	movq	-160(%rbp), %rdx
	movzbl	(%rdx,%rcx), %esi
	orl	%esi, %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	gimp_render_blend_white, %rdx
	movb	(%rdx,%rcx), %dil
	movq	-136(%rbp), %rcx
	movb	%dil, (%rcx)
	movl	-164(%rbp), %eax
	movslq	-116(%rbp), %rcx
	movq	-160(%rbp), %rdx
	movzbl	(%rdx,%rcx), %esi
	orl	%esi, %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	gimp_render_blend_white, %rdx
	movb	(%rdx,%rcx), %dil
	movq	-136(%rbp), %rcx
	movb	%dil, 1(%rcx)
	movl	-164(%rbp), %eax
	movslq	-112(%rbp), %rcx
	movq	-160(%rbp), %rdx
	movzbl	(%rdx,%rcx), %esi
	orl	%esi, %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	gimp_render_blend_white, %rdx
	movb	(%rdx,%rcx), %dil
	movq	-136(%rbp), %rcx
	movb	%dil, 2(%rcx)
# BB#84:                                # %do.end.233
                                        #   in Loop: Header=BB27_70 Depth=2
	jmp	.LBB27_85
.LBB27_85:                              # %if.end.234
                                        #   in Loop: Header=BB27_70 Depth=2
	jmp	.LBB27_89
.LBB27_86:                              # %if.else.235
                                        #   in Loop: Header=BB27_70 Depth=2
	jmp	.LBB27_87
.LBB27_87:                              # %do.body.236
                                        #   in Loop: Header=BB27_70 Depth=2
	movslq	-120(%rbp), %rax
	movq	-160(%rbp), %rcx
	movb	(%rcx,%rax), %dl
	movq	-136(%rbp), %rax
	movb	%dl, (%rax)
	movslq	-116(%rbp), %rax
	movq	-160(%rbp), %rcx
	movb	(%rcx,%rax), %dl
	movq	-136(%rbp), %rax
	movb	%dl, 1(%rax)
	movslq	-112(%rbp), %rax
	movq	-160(%rbp), %rcx
	movb	(%rcx,%rax), %dl
	movq	-136(%rbp), %rax
	movb	%dl, 2(%rax)
# BB#88:                                # %do.end.246
                                        #   in Loop: Header=BB27_70 Depth=2
	jmp	.LBB27_89
.LBB27_89:                              # %if.end.247
                                        #   in Loop: Header=BB27_70 Depth=2
	jmp	.LBB27_90
.LBB27_90:                              # %for.inc.248
                                        #   in Loop: Header=BB27_70 Depth=2
	movl	-72(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -72(%rbp)
	movq	-136(%rbp), %rcx
	addq	$4, %rcx
	movq	%rcx, -136(%rbp)
	movq	-8(%rbp), %rcx
	movl	(%rcx), %eax
	movq	-160(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -160(%rbp)
	jmp	.LBB27_70
.LBB27_91:                              # %for.end.254
                                        #   in Loop: Header=BB27_57 Depth=1
	movl	-84(%rbp), %eax
	movl	%eax, -72(%rbp)
.LBB27_92:                              # %for.cond.255
                                        #   Parent Loop BB27_57 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-72(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB27_97
# BB#93:                                # %for.body.258
                                        #   in Loop: Header=BB27_92 Depth=2
	jmp	.LBB27_94
.LBB27_94:                              # %do.body.259
                                        #   in Loop: Header=BB27_92 Depth=2
	movq	-144(%rbp), %rax
	movb	2(%rax), %cl
	movq	-136(%rbp), %rax
	movb	%cl, (%rax)
	movq	-144(%rbp), %rax
	movb	1(%rax), %cl
	movq	-136(%rbp), %rax
	movb	%cl, 1(%rax)
	movq	-144(%rbp), %rax
	movb	(%rax), %cl
	movq	-136(%rbp), %rax
	movb	%cl, 2(%rax)
# BB#95:                                # %do.end.266
                                        #   in Loop: Header=BB27_92 Depth=2
	jmp	.LBB27_96
.LBB27_96:                              # %for.inc.267
                                        #   in Loop: Header=BB27_92 Depth=2
	movl	-72(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -72(%rbp)
	movq	-136(%rbp), %rcx
	addq	$4, %rcx
	movq	%rcx, -136(%rbp)
	movq	-144(%rbp), %rcx
	addq	$3, %rcx
	movq	%rcx, -144(%rbp)
	jmp	.LBB27_92
.LBB27_97:                              # %for.end.271
                                        #   in Loop: Header=BB27_57 Depth=1
	movl	-92(%rbp), %eax
	movq	-48(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -48(%rbp)
	jmp	.LBB27_105
.LBB27_98:                              # %if.else.274
                                        #   in Loop: Header=BB27_57 Depth=1
	movl	$0, -72(%rbp)
.LBB27_99:                              # %for.cond.275
                                        #   Parent Loop BB27_57 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-72(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB27_104
# BB#100:                               # %for.body.278
                                        #   in Loop: Header=BB27_99 Depth=2
	jmp	.LBB27_101
.LBB27_101:                             # %do.body.279
                                        #   in Loop: Header=BB27_99 Depth=2
	movq	-144(%rbp), %rax
	movb	2(%rax), %cl
	movq	-136(%rbp), %rax
	movb	%cl, (%rax)
	movq	-144(%rbp), %rax
	movb	1(%rax), %cl
	movq	-136(%rbp), %rax
	movb	%cl, 1(%rax)
	movq	-144(%rbp), %rax
	movb	(%rax), %cl
	movq	-136(%rbp), %rax
	movb	%cl, 2(%rax)
# BB#102:                               # %do.end.286
                                        #   in Loop: Header=BB27_99 Depth=2
	jmp	.LBB27_103
.LBB27_103:                             # %for.inc.287
                                        #   in Loop: Header=BB27_99 Depth=2
	movl	-72(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -72(%rbp)
	movq	-136(%rbp), %rcx
	addq	$4, %rcx
	movq	%rcx, -136(%rbp)
	movq	-144(%rbp), %rcx
	addq	$3, %rcx
	movq	%rcx, -144(%rbp)
	jmp	.LBB27_99
.LBB27_104:                             # %for.end.291
                                        #   in Loop: Header=BB27_57 Depth=1
	jmp	.LBB27_105
.LBB27_105:                             # %if.end.292
                                        #   in Loop: Header=BB27_57 Depth=1
	movl	-96(%rbp), %eax
	movq	-64(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -64(%rbp)
# BB#106:                               # %for.inc.295
                                        #   in Loop: Header=BB27_57 Depth=1
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB27_57
.LBB27_107:                             # %for.end.297
	movq	-32(%rbp), %rdi
	callq	cairo_surface_mark_dirty
.LBB27_108:                             # %return
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	gimp_view_render_temp_buf_to_surface, .Lfunc_end27-gimp_view_render_temp_buf_to_surface
	.cfi_endproc

	.globl	gimp_view_renderer_render_pixbuf
	.align	16, 0x90
	.type	gimp_view_renderer_render_pixbuf,@function
gimp_view_renderer_render_pixbuf:       # @gimp_view_renderer_render_pixbuf
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp84:
	.cfi_def_cfa_offset 16
.Ltmp85:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp86:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	cmpq	$0, 104(%rsi)
	je	.LBB28_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	104(%rax), %rdi
	callq	cairo_surface_destroy
	movq	-8(%rbp), %rax
	movq	$0, 104(%rax)
.LBB28_2:                               # %if.end
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_ref
	movq	-8(%rbp), %rdi
	cmpq	$0, 120(%rdi)
	movq	%rax, -24(%rbp)         # 8-byte Spill
	je	.LBB28_4
# BB#3:                                 # %if.then.5
	movq	-8(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB28_4:                               # %if.end.7
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 120(%rcx)
	movq	-8(%rbp), %rax
	movl	$0, 140(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	gimp_view_renderer_render_pixbuf, .Lfunc_end28-gimp_view_renderer_render_pixbuf
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI29_0:
	.quad	4607182418800017408     # double 1
.LCPI29_1:
	.quad	4606641986844732948     # double 0.93999999999999994
	.text
	.align	16, 0x90
	.type	gimp_view_renderer_class_init,@function
gimp_view_renderer_class_init:          # @gimp_view_renderer_class_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp87:
	.cfi_def_cfa_offset 16
.Ltmp88:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp89:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$112, %rsp
.Ltmp90:
	.cfi_offset %rbx, -32
.Ltmp91:
	.cfi_offset %r14, -24
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	g_type_check_class_cast
	movabsq	$.L.str.20, %rdi
	movl	$1, %edx
	movl	$160, %ecx
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movabsq	$g_cclosure_marshal_VOID__VOID, %r9
	movl	$4, %r8d
	movl	%r8d, %r10d
	xorl	%r8d, %r8d
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movq	-40(%rbp), %rax         # 8-byte Reload
	movl	%r8d, -44(%rbp)         # 4-byte Spill
	movq	%rax, %r8
	movq	%r9, -56(%rbp)          # 8-byte Spill
	movq	%rax, %r9
	movq	-56(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	movq	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movb	$0, %al
	movq	%r10, -64(%rbp)         # 8-byte Spill
	callq	g_signal_new
	movabsq	$black_color, %rdi
	xorps	%xmm0, %xmm0
	movsd	.LCPI29_0, %xmm3        # xmm3 = mem[0],zero
	movabsq	$gimp_view_renderer_real_render, %rsi
	movabsq	$gimp_view_renderer_real_draw, %r8
	movabsq	$gimp_view_renderer_real_invalidate, %r9
	movabsq	$gimp_view_renderer_real_set_context, %r10
	movabsq	$gimp_view_renderer_finalize, %r11
	movabsq	$gimp_view_renderer_dispose, %rbx
	movl	%eax, renderer_signals
	movq	-32(%rbp), %r14
	movq	%rbx, 40(%r14)
	movq	-32(%rbp), %rbx
	movq	%r11, 48(%rbx)
	movq	-24(%rbp), %r11
	movq	$0, 160(%r11)
	movq	-24(%rbp), %r11
	movq	%r10, 168(%r11)
	movq	-24(%rbp), %r10
	movq	%r9, 176(%r10)
	movq	-24(%rbp), %r9
	movq	%r8, 184(%r9)
	movq	-24(%rbp), %r8
	movq	%rsi, 192(%r8)
	movq	-24(%rbp), %rsi
	movq	$0, 136(%rsi)
	movq	-24(%rbp), %rsi
	movl	$0, 144(%rsi)
	movq	-24(%rbp), %rsi
	movl	$0, 148(%rsi)
	movq	-24(%rbp), %rsi
	movl	$0, 156(%rsi)
	movq	-24(%rbp), %rsi
	movl	$0, 152(%rsi)
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	movsd	-72(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-72(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	gimp_rgba_set
	movabsq	$white_color, %rdi
	movsd	.LCPI29_0, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
	movsd	-80(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-80(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	-80(%rbp), %xmm3        # 8-byte Reload
                                        # xmm3 = mem[0],zero
	callq	gimp_rgba_set
	movabsq	$green_color, %rdi
	xorps	%xmm0, %xmm0
	movsd	.LCPI29_1, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI29_0, %xmm3        # xmm3 = mem[0],zero
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
	movsd	-88(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	gimp_rgba_set
	movabsq	$red_color, %rdi
	movsd	.LCPI29_0, %xmm0        # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
	movsd	%xmm1, -104(%rbp)       # 8-byte Spill
	movsd	-104(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	-96(%rbp), %xmm3        # 8-byte Reload
                                        # xmm3 = mem[0],zero
	callq	gimp_rgba_set
	addq	$112, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end29:
	.size	gimp_view_renderer_class_init, .Lfunc_end29-gimp_view_renderer_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_view_renderer_dispose,@function
gimp_view_renderer_dispose:             # @gimp_view_renderer_dispose
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp92:
	.cfi_def_cfa_offset 16
.Ltmp93:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp94:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_view_renderer_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 40(%rax)
	je	.LBB30_2
# BB#1:                                 # %if.then
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	gimp_view_renderer_set_viewable
.LBB30_2:                               # %if.end
	movq	-16(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB30_4
# BB#3:                                 # %if.then.3
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	gimp_view_renderer_set_context
.LBB30_4:                               # %if.end.4
	movq	-16(%rbp), %rdi
	callq	gimp_view_renderer_remove_idle
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_view_renderer_parent_class, %rdi
	callq	g_type_check_class_cast
	movq	40(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	gimp_view_renderer_dispose, .Lfunc_end30-gimp_view_renderer_dispose
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_view_renderer_finalize,@function
gimp_view_renderer_finalize:            # @gimp_view_renderer_finalize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp95:
	.cfi_def_cfa_offset 16
.Ltmp96:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp97:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_view_renderer_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 112(%rax)
	je	.LBB31_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	112(%rax), %rdi
	callq	cairo_pattern_destroy
	movq	-16(%rbp), %rax
	movq	$0, 112(%rax)
.LBB31_2:                               # %if.end
	movq	-16(%rbp), %rax
	cmpq	$0, 104(%rax)
	je	.LBB31_4
# BB#3:                                 # %if.then.5
	movq	-16(%rbp), %rax
	movq	104(%rax), %rdi
	callq	cairo_surface_destroy
	movq	-16(%rbp), %rax
	movq	$0, 104(%rax)
.LBB31_4:                               # %if.end.8
	movq	-16(%rbp), %rax
	cmpq	$0, 120(%rax)
	je	.LBB31_6
# BB#5:                                 # %if.then.10
	movq	-16(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, 120(%rax)
.LBB31_6:                               # %if.end.13
	movq	-16(%rbp), %rax
	cmpq	$0, 128(%rax)
	je	.LBB31_8
# BB#7:                                 # %if.then.15
	movq	-16(%rbp), %rax
	movq	128(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	$0, 128(%rax)
.LBB31_8:                               # %if.end.18
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_view_renderer_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end31:
	.size	gimp_view_renderer_finalize, .Lfunc_end31-gimp_view_renderer_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_view_renderer_real_set_context,@function
gimp_view_renderer_real_set_context:    # @gimp_view_renderer_real_set_context
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp98:
	.cfi_def_cfa_offset 16
.Ltmp99:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp100:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	cmpq	$0, 24(%rsi)
	je	.LBB32_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB32_2:                               # %if.end
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 24(%rcx)
	movq	-8(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB32_4
# BB#3:                                 # %if.then.6
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_ref
	movq	%rax, -24(%rbp)         # 8-byte Spill
.LBB32_4:                               # %if.end.8
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end32:
	.size	gimp_view_renderer_real_set_context, .Lfunc_end32-gimp_view_renderer_real_set_context
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_view_renderer_real_invalidate,@function
gimp_view_renderer_real_invalidate:     # @gimp_view_renderer_real_invalidate
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp101:
	.cfi_def_cfa_offset 16
.Ltmp102:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp103:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	$1, 140(%rdi)
	popq	%rbp
	retq
.Lfunc_end33:
	.size	gimp_view_renderer_real_invalidate, .Lfunc_end33-gimp_view_renderer_real_invalidate
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_view_renderer_real_render,@function
gimp_view_renderer_real_render:         # @gimp_view_renderer_real_render
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp104:
	.cfi_def_cfa_offset 16
.Ltmp105:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp106:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	40(%rsi), %rdi
	movq	-8(%rbp), %rsi
	movq	24(%rsi), %rsi
	movq	-8(%rbp), %rax
	movl	48(%rax), %edx
	movq	-8(%rbp), %rax
	movl	52(%rax), %ecx
	callq	gimp_viewable_get_pixbuf
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB34_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_view_renderer_render_pixbuf
	jmp	.LBB34_5
.LBB34_2:                               # %if.end
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	24(%rax), %rsi
	movq	-8(%rbp), %rax
	movl	48(%rax), %edx
	movq	-8(%rbp), %rax
	movl	52(%rax), %ecx
	callq	gimp_viewable_get_preview
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB34_4
# BB#3:                                 # %if.then.7
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_view_renderer_render_temp_buf_simple
	jmp	.LBB34_5
.LBB34_4:                               # %if.end.8
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdi
	callq	gimp_viewable_get_stock_id
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-40(%rbp), %rdx
	callq	gimp_view_renderer_render_stock
.LBB34_5:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end34:
	.size	gimp_view_renderer_real_render, .Lfunc_end34-gimp_view_renderer_real_render
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_view_renderer_create_background,@function
gimp_view_renderer_create_background:   # @gimp_view_renderer_create_background
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp107:
	.cfi_def_cfa_offset 16
.Ltmp108:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp109:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	-8(%rbp), %rsi
	cmpq	$0, 128(%rsi)
	je	.LBB35_4
# BB#1:                                 # %if.then
	movl	$6, %edx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	128(%rsi), %rsi
	callq	gtk_widget_render_icon
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB35_3
# BB#2:                                 # %if.then.3
	movq	-32(%rbp), %rdi
	callq	gimp_cairo_surface_create_from_pixbuf
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-40(%rbp), %rdi
	callq	cairo_pattern_create_for_surface
	movl	$1, %esi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	cairo_pattern_set_extend
	movq	-40(%rbp), %rdi
	callq	cairo_surface_destroy
.LBB35_3:                               # %if.end
	jmp	.LBB35_4
.LBB35_4:                               # %if.end.6
	movq	-24(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end35:
	.size	gimp_view_renderer_create_background, .Lfunc_end35-gimp_view_renderer_create_background
	.cfi_endproc

	.type	gimp_view_renderer_get_type.g_define_type_id__volatile,@object # @gimp_view_renderer_get_type.g_define_type_id__volatile
	.local	gimp_view_renderer_get_type.g_define_type_id__volatile
	.comm	gimp_view_renderer_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpViewRenderer"
	.size	.L.str, 17

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Widgets"
	.size	.L.str.1, 13

	.type	.L__func__.gimp_view_renderer_new,@object # @__func__.gimp_view_renderer_new
.L__func__.gimp_view_renderer_new:
	.asciz	"gimp_view_renderer_new"
	.size	.L__func__.gimp_view_renderer_new, 23

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"context == NULL || GIMP_IS_CONTEXT (context)"
	.size	.L.str.2, 45

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"g_type_is_a (viewable_type, GIMP_TYPE_VIEWABLE)"
	.size	.L.str.3, 48

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"size > 0 && size <= GIMP_VIEWABLE_MAX_PREVIEW_SIZE"
	.size	.L.str.4, 51

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"border_width >= 0 && border_width <= GIMP_VIEW_MAX_BORDER_WIDTH"
	.size	.L.str.5, 64

	.type	.L__func__.gimp_view_renderer_new_full,@object # @__func__.gimp_view_renderer_new_full
.L__func__.gimp_view_renderer_new_full:
	.asciz	"gimp_view_renderer_new_full"
	.size	.L__func__.gimp_view_renderer_new_full, 28

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"width > 0 && width <= GIMP_VIEWABLE_MAX_PREVIEW_SIZE"
	.size	.L.str.6, 53

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"height > 0 && height <= GIMP_VIEWABLE_MAX_PREVIEW_SIZE"
	.size	.L.str.7, 55

	.type	.L__func__.gimp_view_renderer_set_context,@object # @__func__.gimp_view_renderer_set_context
.L__func__.gimp_view_renderer_set_context:
	.asciz	"gimp_view_renderer_set_context"
	.size	.L__func__.gimp_view_renderer_set_context, 31

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"GIMP_IS_VIEW_RENDERER (renderer)"
	.size	.L.str.8, 33

	.type	.L__func__.gimp_view_renderer_set_viewable,@object # @__func__.gimp_view_renderer_set_viewable
.L__func__.gimp_view_renderer_set_viewable:
	.asciz	"gimp_view_renderer_set_viewable"
	.size	.L__func__.gimp_view_renderer_set_viewable, 32

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"viewable == NULL || GIMP_IS_VIEWABLE (viewable)"
	.size	.L.str.9, 48

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"g_type_is_a (G_TYPE_FROM_INSTANCE (viewable), renderer->viewable_type)"
	.size	.L.str.10, 71

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"invalidate-preview"
	.size	.L.str.11, 19

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"size-changed"
	.size	.L.str.12, 13

	.type	.L__func__.gimp_view_renderer_set_size,@object # @__func__.gimp_view_renderer_set_size
.L__func__.gimp_view_renderer_set_size:
	.asciz	"gimp_view_renderer_set_size"
	.size	.L__func__.gimp_view_renderer_set_size, 28

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"view_size > 0 && view_size <= GIMP_VIEWABLE_MAX_PREVIEW_SIZE"
	.size	.L.str.13, 61

	.type	.L__func__.gimp_view_renderer_set_size_full,@object # @__func__.gimp_view_renderer_set_size_full
.L__func__.gimp_view_renderer_set_size_full:
	.asciz	"gimp_view_renderer_set_size_full"
	.size	.L__func__.gimp_view_renderer_set_size_full, 33

	.type	.L__func__.gimp_view_renderer_set_dot_for_dot,@object # @__func__.gimp_view_renderer_set_dot_for_dot
.L__func__.gimp_view_renderer_set_dot_for_dot:
	.asciz	"gimp_view_renderer_set_dot_for_dot"
	.size	.L__func__.gimp_view_renderer_set_dot_for_dot, 35

	.type	black_color,@object     # @black_color
	.local	black_color
	.comm	black_color,32,8
	.type	.L__func__.gimp_view_renderer_set_border_type,@object # @__func__.gimp_view_renderer_set_border_type
.L__func__.gimp_view_renderer_set_border_type:
	.asciz	"gimp_view_renderer_set_border_type"
	.size	.L__func__.gimp_view_renderer_set_border_type, 35

	.type	white_color,@object     # @white_color
	.local	white_color
	.comm	white_color,32,8
	.type	green_color,@object     # @green_color
	.local	green_color
	.comm	green_color,32,8
	.type	red_color,@object       # @red_color
	.local	red_color
	.comm	red_color,32,8
	.type	.L__func__.gimp_view_renderer_set_border_color,@object # @__func__.gimp_view_renderer_set_border_color
.L__func__.gimp_view_renderer_set_border_color:
	.asciz	"gimp_view_renderer_set_border_color"
	.size	.L__func__.gimp_view_renderer_set_border_color, 36

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"color != NULL"
	.size	.L.str.14, 14

	.type	.L__func__.gimp_view_renderer_set_background,@object # @__func__.gimp_view_renderer_set_background
.L__func__.gimp_view_renderer_set_background:
	.asciz	"gimp_view_renderer_set_background"
	.size	.L__func__.gimp_view_renderer_set_background, 34

	.type	.L__func__.gimp_view_renderer_invalidate,@object # @__func__.gimp_view_renderer_invalidate
.L__func__.gimp_view_renderer_invalidate:
	.asciz	"gimp_view_renderer_invalidate"
	.size	.L__func__.gimp_view_renderer_invalidate, 30

	.type	.L__func__.gimp_view_renderer_update,@object # @__func__.gimp_view_renderer_update
.L__func__.gimp_view_renderer_update:
	.asciz	"gimp_view_renderer_update"
	.size	.L__func__.gimp_view_renderer_update, 26

	.type	renderer_signals,@object # @renderer_signals
	.local	renderer_signals
	.comm	renderer_signals,4,4
	.type	.L__func__.gimp_view_renderer_update_idle,@object # @__func__.gimp_view_renderer_update_idle
.L__func__.gimp_view_renderer_update_idle:
	.asciz	"gimp_view_renderer_update_idle"
	.size	.L__func__.gimp_view_renderer_update_idle, 31

	.type	.L__func__.gimp_view_renderer_remove_idle,@object # @__func__.gimp_view_renderer_remove_idle
.L__func__.gimp_view_renderer_remove_idle:
	.asciz	"gimp_view_renderer_remove_idle"
	.size	.L__func__.gimp_view_renderer_remove_idle, 31

	.type	.L__func__.gimp_view_renderer_draw,@object # @__func__.gimp_view_renderer_draw
.L__func__.gimp_view_renderer_draw:
	.asciz	"gimp_view_renderer_draw"
	.size	.L__func__.gimp_view_renderer_draw, 24

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"GTK_IS_WIDGET (widget)"
	.size	.L.str.15, 23

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"cr != NULL"
	.size	.L.str.16, 11

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"%s: renderer->context is NULL"
	.size	.L.str.17, 30

	.type	.L__func__.gimp_view_renderer_render_temp_buf_simple,@object # @__func__.gimp_view_renderer_render_temp_buf_simple
.L__func__.gimp_view_renderer_render_temp_buf_simple:
	.asciz	"gimp_view_renderer_render_temp_buf_simple"
	.size	.L__func__.gimp_view_renderer_render_temp_buf_simple, 42

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"temp_buf != NULL"
	.size	.L.str.18, 17

	.type	.L__func__.gimp_view_renderer_render_stock,@object # @__func__.gimp_view_renderer_render_stock
.L__func__.gimp_view_renderer_render_stock:
	.asciz	"gimp_view_renderer_render_stock"
	.size	.L__func__.gimp_view_renderer_render_stock, 32

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"stock_id != NULL"
	.size	.L.str.19, 17

	.type	gimp_view_renderer_parent_class,@object # @gimp_view_renderer_parent_class
	.local	gimp_view_renderer_parent_class
	.comm	gimp_view_renderer_parent_class,8,8
	.type	GimpViewRenderer_private_offset,@object # @GimpViewRenderer_private_offset
	.local	GimpViewRenderer_private_offset
	.comm	GimpViewRenderer_private_offset,4,4
	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"update"
	.size	.L.str.20, 7

	.type	.L__func__.gimp_view_render_temp_buf_to_surface,@object # @__func__.gimp_view_render_temp_buf_to_surface
.L__func__.gimp_view_render_temp_buf_to_surface:
	.asciz	"gimp_view_render_temp_buf_to_surface"
	.size	.L__func__.gimp_view_render_temp_buf_to_surface, 37

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"surface != NULL"
	.size	.L.str.21, 16


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
