	.text
	.file	"gimpimageparasiteview.bc"
	.globl	gimp_image_parasite_view_get_type
	.align	16, 0x90
	.type	gimp_image_parasite_view_get_type,@function
gimp_image_parasite_view_get_type:      # @gimp_image_parasite_view_get_type
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
	movq	gimp_image_parasite_view_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_image_parasite_view_get_type.g_define_type_id__volatile, %rax
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
	callq	gtk_box_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$832, %edx              # imm = 0x340
	movabsq	$gimp_image_parasite_view_class_intern_init, %rdi
	movl	$144, %r8d
	movabsq	$gimp_image_parasite_view_init, %rcx
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
	movabsq	$gimp_image_parasite_view_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_image_parasite_view_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_image_parasite_view_get_type, .Lfunc_end0-gimp_image_parasite_view_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_parasite_view_class_intern_init,@function
gimp_image_parasite_view_class_intern_init: # @gimp_image_parasite_view_class_intern_init
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
	movq	%rax, gimp_image_parasite_view_parent_class
	cmpl	$0, GimpImageParasiteView_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpImageParasiteView_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_image_parasite_view_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_image_parasite_view_class_intern_init, .Lfunc_end1-gimp_image_parasite_view_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_parasite_view_init,@function
gimp_image_parasite_view_init:          # @gimp_image_parasite_view_init
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	callq	gtk_orientable_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_orientable_set_orientation
	movq	-8(%rbp), %rax
	movq	$0, 136(%rax)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_image_parasite_view_init, .Lfunc_end2-gimp_image_parasite_view_init
	.cfi_endproc

	.globl	gimp_image_parasite_view_new
	.align	16, 0x90
	.type	gimp_image_parasite_view_new,@function
gimp_image_parasite_view_new:           # @gimp_image_parasite_view_new
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB3_8
.LBB3_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB3_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB3_7
.LBB3_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB3_7:                                # %if.end
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB3_10
# BB#9:                                 # %if.then.8
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_image_parasite_view_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_18
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	jmp	.LBB3_13
.LBB3_13:                               # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB3_15
# BB#14:                                # %if.then.13
	jmp	.LBB3_16
.LBB3_15:                               # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_image_parasite_view_new, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_18
.LBB3_16:                               # %if.end.15
	jmp	.LBB3_17
.LBB3_17:                               # %do.end.16
	callq	gimp_image_parasite_view_get_type
	movabsq	$.L.str.4, %rsi
	movabsq	$.L.str.5, %rcx
	xorl	%edx, %edx
	movl	%edx, %r9d
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %r8
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -8(%rbp)
.LBB3_18:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_image_parasite_view_new, .Lfunc_end3-gimp_image_parasite_view_new
	.cfi_endproc

	.globl	gimp_image_parasite_view_get_image
	.align	16, 0x90
	.type	gimp_image_parasite_view_get_image,@function
gimp_image_parasite_view_get_image:     # @gimp_image_parasite_view_get_image
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_image_parasite_view_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB4_8
.LBB4_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB4_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.8
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_image_parasite_view_get_image, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB4_13
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB4_13:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_image_parasite_view_get_image, .Lfunc_end4-gimp_image_parasite_view_get_image
	.cfi_endproc

	.globl	gimp_image_parasite_view_get_parasite
	.align	16, 0x90
	.type	gimp_image_parasite_view_get_parasite,@function
gimp_image_parasite_view_get_parasite:  # @gimp_image_parasite_view_get_parasite
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
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_image_parasite_view_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB5_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB5_8
.LBB5_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB5_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB5_7
.LBB5_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB5_7:                                # %if.end
	jmp	.LBB5_8
.LBB5_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB5_10
# BB#9:                                 # %if.then.8
	jmp	.LBB5_11
.LBB5_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_image_parasite_view_get_parasite, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB5_13
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	128(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	136(%rax), %rsi
	callq	gimp_image_parasite_find
	movq	%rax, -8(%rbp)
.LBB5_13:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_image_parasite_view_get_parasite, .Lfunc_end5-gimp_image_parasite_view_get_parasite
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_parasite_view_class_init,@function
gimp_image_parasite_view_class_init:    # @gimp_image_parasite_view_class_init
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
	subq	$96, %rsp
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_class_cast
	movabsq	$.L.str.7, %rdi
	movl	$1, %edx
	movl	$824, %ecx              # imm = 0x338
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movabsq	$g_cclosure_marshal_VOID__VOID, %r9
	movl	$4, %r8d
	movl	%r8d, %r10d
	xorl	%r8d, %r8d
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movq	-24(%rbp), %rax         # 8-byte Reload
	movl	%r8d, -28(%rbp)         # 4-byte Spill
	movq	%rax, %r8
	movq	%r9, -40(%rbp)          # 8-byte Spill
	movq	%rax, %r9
	movq	-40(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	movq	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movb	$0, %al
	movq	%r10, -48(%rbp)         # 8-byte Spill
	callq	g_signal_new
	movabsq	$gimp_image_parasite_view_get_property, %rsi
	movabsq	$gimp_image_parasite_view_set_property, %rdi
	movabsq	$gimp_image_parasite_view_finalize, %r8
	movabsq	$gimp_image_parasite_view_constructed, %r9
	movl	%eax, view_signals
	movq	-16(%rbp), %r10
	movq	%r9, 72(%r10)
	movq	-16(%rbp), %r9
	movq	%r8, 48(%r9)
	movq	-16(%rbp), %r8
	movq	%rdi, 24(%r8)
	movq	-16(%rbp), %rdi
	movq	%rsi, 32(%rdi)
	movq	-8(%rbp), %rsi
	movq	$0, 824(%rsi)
	movq	-16(%rbp), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movabsq	$.L.str.4, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$235, %r8d
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	movq	-64(%rbp), %rdx         # 8-byte Reload
	movq	%rax, %rcx
	callq	g_param_spec_object
	movl	$1, %esi
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.5, %rdi
	xorl	%esi, %esi
	movl	%esi, %eax
	movl	$235, %r8d
	movq	-16(%rbp), %rcx
	movq	%rax, %rsi
	movq	%rax, %rdx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rcx
	callq	g_param_spec_string
	movl	$2, %esi
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_image_parasite_view_class_init, .Lfunc_end6-gimp_image_parasite_view_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_parasite_view_constructed,@function
gimp_image_parasite_view_constructed:   # @gimp_image_parasite_view_constructed
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_image_parasite_view_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -16(%rbp)
	movq	gimp_image_parasite_view_parent_class, %rax
	movq	%rax, %rdi
	callq	g_type_check_class_cast
	cmpq	$0, 72(%rax)
	je	.LBB7_2
# BB#1:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_image_parasite_view_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	72(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
.LBB7_2:                                # %if.end
	jmp	.LBB7_3
.LBB7_3:                                # %do.body
	movq	-16(%rbp), %rax
	cmpq	$0, 136(%rax)
	je	.LBB7_5
# BB#4:                                 # %if.then.5
	jmp	.LBB7_6
.LBB7_5:                                # %if.else
	movabsq	$.L.str.1, %rdi
	movabsq	$.L.str.8, %rsi
	movl	$127, %edx
	movabsq	$.L__func__.gimp_image_parasite_view_constructed, %rcx
	movabsq	$.L.str.9, %r8
	callq	g_assertion_message_expr
.LBB7_6:                                # %if.end.6
	jmp	.LBB7_7
.LBB7_7:                                # %do.end
	jmp	.LBB7_8
.LBB7_8:                                # %do.body.7
	movq	-16(%rbp), %rax
	cmpq	$0, 128(%rax)
	je	.LBB7_10
# BB#9:                                 # %if.then.9
	jmp	.LBB7_11
.LBB7_10:                               # %if.else.10
	movabsq	$.L.str.1, %rdi
	movabsq	$.L.str.8, %rsi
	movl	$128, %edx
	movabsq	$.L__func__.gimp_image_parasite_view_constructed, %rcx
	movabsq	$.L.str.10, %r8
	callq	g_assertion_message_expr
.LBB7_11:                               # %if.end.11
	jmp	.LBB7_12
.LBB7_12:                               # %do.end.12
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	128(%rcx), %rcx
	movq	-16(%rbp), %rdx
	movq	%rdx, %rdi
	movq	%rcx, -32(%rbp)         # 8-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$.L.str.11, %rsi
	movabsq	$gimp_image_parasite_view_parasite_changed, %rcx
	movl	$2, %r8d
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_signal_connect_object
	movl	$80, %r8d
	movl	%r8d, %esi
	movq	-16(%rbp), %rcx
	movq	128(%rcx), %rcx
	movq	-16(%rbp), %rdx
	movq	%rdx, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$.L.str.12, %rsi
	movabsq	$gimp_image_parasite_view_parasite_changed, %rcx
	movl	$2, %r8d
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_signal_connect_object
	movq	-16(%rbp), %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_image_parasite_view_update
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_image_parasite_view_constructed, .Lfunc_end7-gimp_image_parasite_view_constructed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_parasite_view_finalize,@function
gimp_image_parasite_view_finalize:      # @gimp_image_parasite_view_finalize
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
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_image_parasite_view_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 136(%rax)
	je	.LBB8_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	136(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	$0, 136(%rax)
.LBB8_2:                                # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_image_parasite_view_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_image_parasite_view_finalize, .Lfunc_end8-gimp_image_parasite_view_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_parasite_view_set_property,@function
gimp_image_parasite_view_set_property:  # @gimp_image_parasite_view_set_property
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_image_parasite_view_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	movl	%r8d, %r9d
	subl	$1, %r9d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	movl	%r9d, -80(%rbp)         # 4-byte Spill
	je	.LBB9_1
	jmp	.LBB9_7
.LBB9_7:                                # %entry
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	je	.LBB9_2
	jmp	.LBB9_3
.LBB9_1:                                # %sw.bb
	movq	-24(%rbp), %rdi
	callq	g_value_get_object
	movq	-40(%rbp), %rdi
	movq	%rax, 128(%rdi)
	jmp	.LBB9_6
.LBB9_2:                                # %sw.bb.3
	movq	-24(%rbp), %rdi
	callq	g_value_dup_string
	movq	-40(%rbp), %rdi
	movq	%rax, 136(%rdi)
	jmp	.LBB9_6
.LBB9_3:                                # %sw.default
	jmp	.LBB9_4
.LBB9_4:                                # %do.body
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
	movabsq	$.L.str.13, %rdi
	movabsq	$.L.str.8, %rsi
	movl	$174, %edx
	movabsq	$.L.str.14, %rcx
	movl	-88(%rbp), %r8d         # 4-byte Reload
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	-104(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#5:                                 # %do.end
	jmp	.LBB9_6
.LBB9_6:                                # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_image_parasite_view_set_property, .Lfunc_end9-gimp_image_parasite_view_set_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_parasite_view_get_property,@function
gimp_image_parasite_view_get_property:  # @gimp_image_parasite_view_get_property
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_image_parasite_view_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	movl	%r8d, %r9d
	subl	$1, %r9d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	movl	%r9d, -80(%rbp)         # 4-byte Spill
	je	.LBB10_1
	jmp	.LBB10_7
.LBB10_7:                               # %entry
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	je	.LBB10_2
	jmp	.LBB10_3
.LBB10_1:                               # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, %rsi
	callq	g_value_set_object
	jmp	.LBB10_6
.LBB10_2:                               # %sw.bb.2
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	136(%rax), %rsi
	callq	g_value_set_string
	jmp	.LBB10_6
.LBB10_3:                               # %sw.default
	jmp	.LBB10_4
.LBB10_4:                               # %do.body
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
	movabsq	$.L.str.13, %rdi
	movabsq	$.L.str.8, %rsi
	movl	$196, %edx
	movabsq	$.L.str.14, %rcx
	movl	-88(%rbp), %r8d         # 4-byte Reload
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	-104(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#5:                                 # %do.end
	jmp	.LBB10_6
.LBB10_6:                               # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_image_parasite_view_get_property, .Lfunc_end10-gimp_image_parasite_view_get_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_parasite_view_parasite_changed,@function
gimp_image_parasite_view_parasite_changed: # @gimp_image_parasite_view_parasite_changed
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB11_4
# BB#1:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	cmpq	$0, 136(%rax)
	je	.LBB11_4
# BB#2:                                 # %land.lhs.true.2
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	136(%rax), %rsi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB11_4
# BB#3:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	gimp_image_parasite_view_update
.LBB11_4:                               # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_image_parasite_view_parasite_changed, .Lfunc_end11-gimp_image_parasite_view_parasite_changed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_parasite_view_update,@function
gimp_image_parasite_view_update:        # @gimp_image_parasite_view_update
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
	xorl	%edx, %edx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	view_signals, %esi
	movb	$0, %al
	callq	g_signal_emit
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_image_parasite_view_update, .Lfunc_end12-gimp_image_parasite_view_update
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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

	.type	gimp_image_parasite_view_get_type.g_define_type_id__volatile,@object # @gimp_image_parasite_view_get_type.g_define_type_id__volatile
	.local	gimp_image_parasite_view_get_type.g_define_type_id__volatile
	.comm	gimp_image_parasite_view_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpImageParasiteView"
	.size	.L.str, 22

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Widgets"
	.size	.L.str.1, 13

	.type	.L__func__.gimp_image_parasite_view_new,@object # @__func__.gimp_image_parasite_view_new
.L__func__.gimp_image_parasite_view_new:
	.asciz	"gimp_image_parasite_view_new"
	.size	.L__func__.gimp_image_parasite_view_new, 29

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_IMAGE (image)"
	.size	.L.str.2, 22

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"parasite != NULL"
	.size	.L.str.3, 17

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"image"
	.size	.L.str.4, 6

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"parasite"
	.size	.L.str.5, 9

	.type	.L__func__.gimp_image_parasite_view_get_image,@object # @__func__.gimp_image_parasite_view_get_image
.L__func__.gimp_image_parasite_view_get_image:
	.asciz	"gimp_image_parasite_view_get_image"
	.size	.L__func__.gimp_image_parasite_view_get_image, 35

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"GIMP_IS_IMAGE_PARASITE_VIEW (view)"
	.size	.L.str.6, 35

	.type	.L__func__.gimp_image_parasite_view_get_parasite,@object # @__func__.gimp_image_parasite_view_get_parasite
.L__func__.gimp_image_parasite_view_get_parasite:
	.asciz	"gimp_image_parasite_view_get_parasite"
	.size	.L__func__.gimp_image_parasite_view_get_parasite, 38

	.type	gimp_image_parasite_view_parent_class,@object # @gimp_image_parasite_view_parent_class
	.local	gimp_image_parasite_view_parent_class
	.comm	gimp_image_parasite_view_parent_class,8,8
	.type	GimpImageParasiteView_private_offset,@object # @GimpImageParasiteView_private_offset
	.local	GimpImageParasiteView_private_offset
	.comm	GimpImageParasiteView_private_offset,4,4
	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"update"
	.size	.L.str.7, 7

	.type	view_signals,@object    # @view_signals
	.local	view_signals
	.comm	view_signals,4,4
	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"gimpimageparasiteview.c"
	.size	.L.str.8, 24

	.type	.L__func__.gimp_image_parasite_view_constructed,@object # @__func__.gimp_image_parasite_view_constructed
.L__func__.gimp_image_parasite_view_constructed:
	.asciz	"gimp_image_parasite_view_constructed"
	.size	.L__func__.gimp_image_parasite_view_constructed, 37

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"view->parasite != NULL"
	.size	.L.str.9, 23

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"view->image != NULL"
	.size	.L.str.10, 20

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"parasite-attached"
	.size	.L.str.11, 18

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"parasite-detached"
	.size	.L.str.12, 18

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.13, 54

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"property"
	.size	.L.str.14, 9


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
