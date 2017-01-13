	.text
	.file	"gimptextundo.bc"
	.globl	gimp_text_undo_get_type
	.align	16, 0x90
	.type	gimp_text_undo_get_type,@function
gimp_text_undo_get_type:                # @gimp_text_undo_get_type
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
	movq	gimp_text_undo_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_text_undo_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_item_undo_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$576, %edx              # imm = 0x240
	movabsq	$gimp_text_undo_class_intern_init, %rdi
	movl	$112, %r8d
	movabsq	$gimp_text_undo_init, %rcx
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
	movabsq	$gimp_text_undo_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_text_undo_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_text_undo_get_type, .Lfunc_end0-gimp_text_undo_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_undo_class_intern_init,@function
gimp_text_undo_class_intern_init:       # @gimp_text_undo_class_intern_init
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
	movq	%rax, gimp_text_undo_parent_class
	cmpl	$0, GimpTextUndo_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpTextUndo_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_text_undo_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_text_undo_class_intern_init, .Lfunc_end1-gimp_text_undo_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_undo_init,@function
gimp_text_undo_init:                    # @gimp_text_undo_init
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
	.size	gimp_text_undo_init, .Lfunc_end2-gimp_text_undo_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_undo_class_init,@function
gimp_text_undo_class_init:              # @gimp_text_undo_class_init
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
	pushq	%r14
	pushq	%rbx
	subq	$64, %rsp
.Ltmp12:
	.cfi_offset %rbx, -32
.Ltmp13:
	.cfi_offset %r14, -24
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_undo_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$.L.str.1, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$76, %ecx
                                        # kill: RCX<def> ECX<kill>
	movl	$235, %r8d
	movabsq	$gimp_text_undo_free, %rdx
	movabsq	$gimp_text_undo_pop, %r9
	movabsq	$gimp_text_undo_get_memsize, %r10
	movabsq	$gimp_text_undo_get_property, %r11
	movabsq	$gimp_text_undo_set_property, %rbx
	movabsq	$gimp_text_undo_constructed, %r14
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%r14, 72(%rax)
	movq	-32(%rbp), %rax
	movq	%rbx, 24(%rax)
	movq	-32(%rbp), %rax
	movq	%r11, 32(%rax)
	movq	-40(%rbp), %rax
	movq	%r10, 152(%rax)
	movq	-48(%rbp), %rax
	movq	%r9, 280(%rax)
	movq	-48(%rbp), %rax
	movq	%rdx, 288(%rax)
	movq	-32(%rbp), %rax
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	movq	-72(%rbp), %rdx         # 8-byte Reload
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	g_param_spec_param
	movl	$1, %esi
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	addq	$64, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_text_undo_class_init, .Lfunc_end3-gimp_text_undo_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_undo_constructed,@function
gimp_text_undo_constructed:             # @gimp_text_undo_constructed
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	callq	gimp_text_undo_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -16(%rbp)
	movq	gimp_text_undo_parent_class, %rax
	movq	%rax, %rdi
	callq	g_type_check_class_cast
	cmpq	$0, 72(%rax)
	je	.LBB4_2
# BB#1:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_text_undo_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	72(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
.LBB4_2:                                # %if.end
	jmp	.LBB4_3
.LBB4_3:                                # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_item_undo_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	72(%rax), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_text_layer_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB4_5
# BB#4:                                 # %if.then.9
	movl	$0, -44(%rbp)
	jmp	.LBB4_10
.LBB4_5:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_8
# BB#6:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB4_8
# BB#7:                                 # %if.then.12
	movl	$1, -44(%rbp)
	jmp	.LBB4_9
.LBB4_8:                                # %if.else.13
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB4_9:                                # %if.end.15
	jmp	.LBB4_10
.LBB4_10:                               # %if.end.16
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB4_12
# BB#11:                                # %if.then.18
	jmp	.LBB4_13
.LBB4_12:                               # %if.else.19
	movabsq	$.L.str.2, %rdi
	movabsq	$.L.str.3, %rsi
	movl	$104, %edx
	movabsq	$.L__func__.gimp_text_undo_constructed, %rcx
	movabsq	$.L.str.4, %r8
	callq	g_assertion_message_expr
.LBB4_13:                               # %if.end.20
	jmp	.LBB4_14
.LBB4_14:                               # %do.end
	movq	-16(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_item_undo_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	72(%rax), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gimp_text_layer_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	callq	gimp_undo_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	44(%rax), %ecx
	movl	%ecx, %edx
	subl	$61, %edx
	movl	%ecx, -92(%rbp)         # 4-byte Spill
	movl	%edx, -96(%rbp)         # 4-byte Spill
	je	.LBB4_15
	jmp	.LBB4_30
.LBB4_30:                               # %do.end
	movl	-92(%rbp), %eax         # 4-byte Reload
	subl	$62, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	je	.LBB4_26
	jmp	.LBB4_27
.LBB4_15:                               # %sw.bb
	movq	-16(%rbp), %rax
	cmpq	$0, 88(%rax)
	je	.LBB4_22
# BB#16:                                # %if.then.29
	jmp	.LBB4_17
.LBB4_17:                               # %do.body.30
	movq	-16(%rbp), %rax
	movq	88(%rax), %rax
	movq	32(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_text_get_type
	movq	-112(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB4_19
# BB#18:                                # %if.then.34
	jmp	.LBB4_20
.LBB4_19:                               # %if.else.35
	movabsq	$.L.str.2, %rdi
	movabsq	$.L.str.3, %rsi
	movl	$113, %edx
	movabsq	$.L__func__.gimp_text_undo_constructed, %rcx
	movabsq	$.L.str.5, %r8
	callq	g_assertion_message_expr
.LBB4_20:                               # %if.end.36
	jmp	.LBB4_21
.LBB4_21:                               # %do.end.37
	movl	$24, %eax
	movl	%eax, %edi
	callq	g_slice_alloc0
	movq	-16(%rbp), %rdi
	movq	%rax, 96(%rdi)
	movq	-16(%rbp), %rax
	movq	96(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	88(%rax), %rax
	movq	24(%rax), %rsi
	callq	g_value_init
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-24(%rbp), %rdi
	movq	104(%rdi), %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	88(%rsi), %rsi
	movq	8(%rsi), %rsi
	movq	-16(%rbp), %rdi
	movq	96(%rdi), %rdx
	movq	%rax, %rdi
	callq	g_object_get_property
	jmp	.LBB4_25
.LBB4_22:                               # %if.else.45
	movq	-24(%rbp), %rax
	cmpq	$0, 104(%rax)
	je	.LBB4_24
# BB#23:                                # %if.then.48
	movq	-24(%rbp), %rax
	movq	104(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_config_duplicate
	movq	-16(%rbp), %rsi
	movq	%rax, 80(%rsi)
.LBB4_24:                               # %if.end.54
	jmp	.LBB4_25
.LBB4_25:                               # %if.end.55
	jmp	.LBB4_29
.LBB4_26:                               # %sw.bb.56
	movq	-24(%rbp), %rax
	movl	124(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 104(%rax)
	jmp	.LBB4_29
.LBB4_27:                               # %sw.default
	jmp	.LBB4_28
.LBB4_28:                               # %do.body.58
	movabsq	$.L.str.2, %rdi
	movabsq	$.L.str.3, %rsi
	movl	$132, %edx
	movabsq	$.L__func__.gimp_text_undo_constructed, %rcx
	xorl	%eax, %eax
	movl	%eax, %r8d
	callq	g_assertion_message_expr
.LBB4_29:                               # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_text_undo_constructed, .Lfunc_end4-gimp_text_undo_constructed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_undo_set_property,@function
gimp_text_undo_set_property:            # @gimp_text_undo_set_property
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_text_undo_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	subl	$1, %r8d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	jne	.LBB5_2
	jmp	.LBB5_1
.LBB5_1:                                # %sw.bb
	movq	-24(%rbp), %rdi
	callq	g_value_get_param
	movq	-40(%rbp), %rdi
	movq	%rax, 88(%rdi)
	jmp	.LBB5_5
.LBB5_2:                                # %sw.default
	jmp	.LBB5_3
.LBB5_3:                                # %do.body
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
	movl	%r8d, -80(%rbp)         # 4-byte Spill
	movq	%r9, -88(%rbp)          # 8-byte Spill
	callq	g_type_name
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.6, %rdi
	movabsq	$.L.str.3, %rsi
	movl	$151, %edx
	movabsq	$.L.str.7, %rcx
	movl	-80(%rbp), %r8d         # 4-byte Reload
	movq	-88(%rbp), %r9          # 8-byte Reload
	movq	-96(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#4:                                 # %do.end
	jmp	.LBB5_5
.LBB5_5:                                # %sw.epilog
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_text_undo_set_property, .Lfunc_end5-gimp_text_undo_set_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_undo_get_property,@function
gimp_text_undo_get_property:            # @gimp_text_undo_get_property
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_text_undo_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	subl	$1, %r8d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	jne	.LBB6_2
	jmp	.LBB6_1
.LBB6_1:                                # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	88(%rax), %rsi
	callq	g_value_set_param
	jmp	.LBB6_5
.LBB6_2:                                # %sw.default
	jmp	.LBB6_3
.LBB6_3:                                # %do.body
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
	movl	%r8d, -80(%rbp)         # 4-byte Spill
	movq	%r9, -88(%rbp)          # 8-byte Spill
	callq	g_type_name
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.6, %rdi
	movabsq	$.L.str.3, %rsi
	movl	$171, %edx
	movabsq	$.L.str.7, %rcx
	movl	-80(%rbp), %r8d         # 4-byte Reload
	movq	-88(%rbp), %r9          # 8-byte Reload
	movq	-96(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#4:                                 # %do.end
	jmp	.LBB6_5
.LBB6_5:                                # %sw.epilog
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_text_undo_get_property, .Lfunc_end6-gimp_text_undo_get_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_undo_get_memsize,@function
gimp_text_undo_get_memsize:             # @gimp_text_undo_get_memsize
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_text_undo_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	96(%rax), %rdi
	callq	gimp_g_value_get_memsize
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	gimp_object_get_memsize
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	gimp_text_undo_parent_class, %rsi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	152(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
	movq	-56(%rbp), %rsi         # 8-byte Reload
	addq	%rax, %rsi
	movq	%rsi, %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_text_undo_get_memsize, .Lfunc_end7-gimp_text_undo_get_memsize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_undo_pop,@function
gimp_text_undo_pop:                     # @gimp_text_undo_pop
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
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_text_undo_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gimp_item_undo_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	72(%rax), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	callq	gimp_text_layer_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	gimp_text_undo_parent_class(%rip), %rdi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	callq	gimp_undo_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	280(%rax), %rax
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movq	-24(%rbp), %rdx
	callq	*%rax
	movq	-8(%rbp), %rax
	movl	44(%rax), %esi
	movl	%esi, %ecx
	subl	$61, %ecx
	movl	%esi, -100(%rbp)        # 4-byte Spill
	movl	%ecx, -104(%rbp)        # 4-byte Spill
	je	.LBB8_1
	jmp	.LBB8_25
.LBB8_25:                               # %entry
	movl	-100(%rbp), %eax        # 4-byte Reload
	subl	$62, %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
	je	.LBB8_21
	jmp	.LBB8_22
.LBB8_1:                                # %sw.bb
	movq	-32(%rbp), %rax
	cmpq	$0, 88(%rax)
	je	.LBB8_10
# BB#2:                                 # %if.then
	jmp	.LBB8_3
.LBB8_3:                                # %do.body
	movq	-40(%rbp), %rax
	cmpq	$0, 104(%rax)
	je	.LBB8_5
# BB#4:                                 # %if.then.8
	jmp	.LBB8_6
.LBB8_5:                                # %if.else
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_text_undo_pop, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB8_24
.LBB8_6:                                # %if.end
	jmp	.LBB8_7
.LBB8_7:                                # %do.end
	movl	$24, %eax
	movl	%eax, %edi
	callq	g_slice_alloc0
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	88(%rax), %rax
	movq	24(%rax), %rsi
	callq	g_value_init
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-40(%rbp), %rdi
	movq	104(%rdi), %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movq	88(%rsi), %rsi
	movq	8(%rsi), %rsi
	movq	-48(%rbp), %rdx
	movq	%rax, %rdi
	callq	g_object_get_property
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-40(%rbp), %rax
	movq	104(%rax), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rdx
	movq	88(%rdx), %rdx
	movq	8(%rdx), %rsi
	movq	-32(%rbp), %rdx
	movq	96(%rdx), %rdx
	movq	%rax, %rdi
	callq	g_object_set_property
	movq	-32(%rbp), %rax
	movq	96(%rax), %rdi
	callq	g_value_unset
# BB#8:                                 # %do.body.21
	movl	$24, %eax
	movl	%eax, %edi
	movq	-32(%rbp), %rcx
	movq	96(%rcx), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1
# BB#9:                                 # %do.end.23
	movq	-48(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 96(%rcx)
	jmp	.LBB8_20
.LBB8_10:                               # %if.else.25
	movq	-40(%rbp), %rax
	cmpq	$0, 104(%rax)
	je	.LBB8_12
# BB#11:                                # %cond.true
	movq	-40(%rbp), %rax
	movq	104(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_config_duplicate
	movq	%rax, -136(%rbp)        # 8-byte Spill
	jmp	.LBB8_13
.LBB8_12:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	jmp	.LBB8_13
.LBB8_13:                               # %cond.end
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$0, 104(%rax)
	je	.LBB8_16
# BB#14:                                # %land.lhs.true
	movq	-32(%rbp), %rax
	cmpq	$0, 80(%rax)
	je	.LBB8_16
# BB#15:                                # %if.then.37
	movl	$80, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rcx
	movq	80(%rcx), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movl	$80, %edx
	movl	%edx, %esi
	movq	-40(%rbp), %rcx
	movq	104(%rcx), %rcx
	movq	%rcx, %rdi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_config_sync
	movl	%eax, -148(%rbp)        # 4-byte Spill
	jmp	.LBB8_17
.LBB8_16:                               # %if.else.43
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	80(%rax), %rsi
	callq	gimp_text_layer_set_text
.LBB8_17:                               # %if.end.45
	movq	-32(%rbp), %rax
	cmpq	$0, 80(%rax)
	je	.LBB8_19
# BB#18:                                # %if.then.48
	movq	-32(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB8_19:                               # %if.end.50
	movq	-56(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 80(%rcx)
.LBB8_20:                               # %if.end.52
	jmp	.LBB8_24
.LBB8_21:                               # %sw.bb.53
	movabsq	$.L.str.9, %rsi
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-40(%rbp), %rdx
	movl	124(%rdx), %eax
	movl	%eax, -60(%rbp)
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rdi
	movl	104(%rdi), %eax
	movq	%rdx, %rdi
	movl	%eax, %edx
	movb	$0, %al
	callq	g_object_set
	movl	-60(%rbp), %edx
	movq	-32(%rbp), %rcx
	movl	%edx, 104(%rcx)
	movq	-40(%rbp), %rcx
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_viewable_invalidate_preview
	jmp	.LBB8_24
.LBB8_22:                               # %sw.default
	jmp	.LBB8_23
.LBB8_23:                               # %do.body.59
	movabsq	$.L.str.2, %rdi
	movabsq	$.L.str.3, %rsi
	movl	$262, %edx              # imm = 0x106
	movabsq	$.L__func__.gimp_text_undo_pop, %rcx
	xorl	%eax, %eax
	movl	%eax, %r8d
	callq	g_assertion_message_expr
.LBB8_24:                               # %sw.epilog
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_text_undo_pop, .Lfunc_end8-gimp_text_undo_pop
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_undo_free,@function
gimp_text_undo_free:                    # @gimp_text_undo_free
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_text_undo_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, 80(%rax)
	je	.LBB9_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-24(%rbp), %rax
	movq	$0, 80(%rax)
.LBB9_2:                                # %if.end
	movq	-24(%rbp), %rax
	cmpq	$0, 88(%rax)
	je	.LBB9_6
# BB#3:                                 # %if.then.5
	movq	-24(%rbp), %rax
	movq	96(%rax), %rdi
	callq	g_value_unset
# BB#4:                                 # %do.body
	movl	$24, %eax
	movl	%eax, %edi
	movq	-24(%rbp), %rcx
	movq	96(%rcx), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1
# BB#5:                                 # %do.end
	movq	-24(%rbp), %rax
	movq	$0, 96(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 88(%rax)
.LBB9_6:                                # %if.end.9
	movq	gimp_text_undo_parent_class, %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_undo_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	288(%rax), %rax
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	*%rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_text_undo_free, .Lfunc_end9-gimp_text_undo_free
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB10_2
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
.LBB10_2:                               # %entry
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
	movl	$.L.str.2, %r9d
	movl	%r9d, %edi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end10:
	.size	g_warning, .Lfunc_end10-g_warning
	.cfi_endproc

	.type	gimp_text_undo_get_type.g_define_type_id__volatile,@object # @gimp_text_undo_get_type.g_define_type_id__volatile
	.local	gimp_text_undo_get_type.g_define_type_id__volatile
	.comm	gimp_text_undo_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpTextUndo"
	.size	.L.str, 13

	.type	gimp_text_undo_parent_class,@object # @gimp_text_undo_parent_class
	.local	gimp_text_undo_parent_class
	.comm	gimp_text_undo_parent_class,8,8
	.type	GimpTextUndo_private_offset,@object # @GimpTextUndo_private_offset
	.local	GimpTextUndo_private_offset
	.comm	GimpTextUndo_private_offset,4,4
	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"param"
	.size	.L.str.1, 6

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Gimp-Text"
	.size	.L.str.2, 10

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gimptextundo.c"
	.size	.L.str.3, 15

	.type	.L__func__.gimp_text_undo_constructed,@object # @__func__.gimp_text_undo_constructed
.L__func__.gimp_text_undo_constructed:
	.asciz	"gimp_text_undo_constructed"
	.size	.L__func__.gimp_text_undo_constructed, 27

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"GIMP_IS_TEXT_LAYER (GIMP_ITEM_UNDO (text_undo)->item)"
	.size	.L.str.4, 54

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"text_undo->pspec->owner_type == GIMP_TYPE_TEXT"
	.size	.L.str.5, 47

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.6, 54

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"property"
	.size	.L.str.7, 9

	.type	.L__func__.gimp_text_undo_pop,@object # @__func__.gimp_text_undo_pop
.L__func__.gimp_text_undo_pop:
	.asciz	"gimp_text_undo_pop"
	.size	.L__func__.gimp_text_undo_pop, 19

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"layer->text != NULL"
	.size	.L.str.8, 20

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"modified"
	.size	.L.str.9, 9


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
