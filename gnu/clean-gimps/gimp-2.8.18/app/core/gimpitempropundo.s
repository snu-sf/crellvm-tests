	.text
	.file	"gimpitempropundo.bc"
	.globl	gimp_item_prop_undo_get_type
	.align	16, 0x90
	.type	gimp_item_prop_undo_get_type,@function
gimp_item_prop_undo_get_type:           # @gimp_item_prop_undo_get_type
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
	movq	gimp_item_prop_undo_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_item_prop_undo_get_type.g_define_type_id__volatile, %rax
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
	movl	$296, %edx              # imm = 0x128
	movabsq	$gimp_item_prop_undo_class_intern_init, %rdi
	movl	$136, %r8d
	movabsq	$gimp_item_prop_undo_init, %rcx
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
	movabsq	$gimp_item_prop_undo_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_item_prop_undo_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_item_prop_undo_get_type, .Lfunc_end0-gimp_item_prop_undo_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_item_prop_undo_class_intern_init,@function
gimp_item_prop_undo_class_intern_init:  # @gimp_item_prop_undo_class_intern_init
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
	movq	%rax, gimp_item_prop_undo_parent_class
	cmpl	$0, GimpItemPropUndo_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpItemPropUndo_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_item_prop_undo_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_item_prop_undo_class_intern_init, .Lfunc_end1-gimp_item_prop_undo_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_item_prop_undo_init,@function
gimp_item_prop_undo_init:               # @gimp_item_prop_undo_init
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
	.size	gimp_item_prop_undo_init, .Lfunc_end2-gimp_item_prop_undo_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_item_prop_undo_class_init,@function
gimp_item_prop_undo_class_init:         # @gimp_item_prop_undo_class_init
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
	movl	$235, %r8d
	movabsq	$gimp_item_prop_undo_free, %rdx
	movabsq	$gimp_item_prop_undo_pop, %r9
	movabsq	$gimp_item_prop_undo_get_memsize, %r10
	movabsq	$gimp_item_prop_undo_get_property, %r11
	movabsq	$gimp_item_prop_undo_set_property, %rbx
	movabsq	$gimp_item_prop_undo_constructed, %r14
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
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	g_param_spec_string
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
	.size	gimp_item_prop_undo_class_init, .Lfunc_end3-gimp_item_prop_undo_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_item_prop_undo_constructed,@function
gimp_item_prop_undo_constructed:        # @gimp_item_prop_undo_constructed
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_item_prop_undo_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -16(%rbp)
	movq	gimp_item_prop_undo_parent_class, %rax
	movq	%rax, %rdi
	callq	g_type_check_class_cast
	cmpq	$0, 72(%rax)
	je	.LBB4_2
# BB#1:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_item_prop_undo_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	72(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
.LBB4_2:                                # %if.end
	movq	-8(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gimp_item_undo_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	72(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	callq	gimp_undo_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	44(%rax), %ecx
	movl	%ecx, %edx
	subl	$48, %edx
	movl	%ecx, -52(%rbp)         # 4-byte Spill
	movl	%edx, -56(%rbp)         # 4-byte Spill
	je	.LBB4_3
	jmp	.LBB4_17
.LBB4_17:                               # %if.end
	movl	-52(%rbp), %eax         # 4-byte Reload
	subl	$49, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	je	.LBB4_4
	jmp	.LBB4_18
.LBB4_18:                               # %if.end
	movl	-52(%rbp), %eax         # 4-byte Reload
	subl	$50, %eax
	movl	%eax, -64(%rbp)         # 4-byte Spill
	je	.LBB4_5
	jmp	.LBB4_19
.LBB4_19:                               # %if.end
	movl	-52(%rbp), %eax         # 4-byte Reload
	subl	$51, %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	je	.LBB4_6
	jmp	.LBB4_20
.LBB4_20:                               # %if.end
	movl	-52(%rbp), %eax         # 4-byte Reload
	subl	$52, %eax
	movl	%eax, -72(%rbp)         # 4-byte Spill
	je	.LBB4_7
	jmp	.LBB4_21
.LBB4_21:                               # %if.end
	movl	-52(%rbp), %eax         # 4-byte Reload
	addl	$-78, %eax
	subl	$2, %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
	jb	.LBB4_8
	jmp	.LBB4_14
.LBB4_3:                                # %sw.bb
	movq	-24(%rbp), %rdi
	callq	gimp_item_get_parent
	movq	-16(%rbp), %rdi
	movq	%rax, 80(%rdi)
	movq	-24(%rbp), %rdi
	callq	gimp_item_get_index
	movq	-16(%rbp), %rdi
	movl	%eax, 88(%rdi)
	jmp	.LBB4_16
.LBB4_4:                                # %sw.bb.12
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	%rax, %rdi
	callq	g_strdup
	movq	-16(%rbp), %rdi
	movq	%rax, 96(%rdi)
	jmp	.LBB4_16
.LBB4_5:                                # %sw.bb.15
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	addq	$104, %rax
	movq	-16(%rbp), %rcx
	addq	$108, %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	gimp_item_get_offset
	jmp	.LBB4_16
.LBB4_6:                                # %sw.bb.16
	movq	-24(%rbp), %rdi
	callq	gimp_item_get_visible
	movq	-16(%rbp), %rdi
	movl	%eax, 112(%rdi)
	jmp	.LBB4_16
.LBB4_7:                                # %sw.bb.18
	movq	-24(%rbp), %rdi
	callq	gimp_item_get_linked
	movq	-16(%rbp), %rdi
	movl	%eax, 116(%rdi)
	jmp	.LBB4_16
.LBB4_8:                                # %sw.bb.20
	jmp	.LBB4_9
.LBB4_9:                                # %do.body
	movq	-16(%rbp), %rax
	cmpq	$0, 120(%rax)
	je	.LBB4_11
# BB#10:                                # %if.then.21
	jmp	.LBB4_12
.LBB4_11:                               # %if.else
	movabsq	$.L.str.2, %rdi
	movabsq	$.L.str.3, %rsi
	movl	$132, %edx
	movabsq	$.L__func__.gimp_item_prop_undo_constructed, %rcx
	movabsq	$.L.str.4, %r8
	callq	g_assertion_message_expr
.LBB4_12:                               # %if.end.22
	jmp	.LBB4_13
.LBB4_13:                               # %do.end
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	120(%rax), %rsi
	callq	gimp_item_parasite_find
	movq	%rax, %rdi
	callq	gimp_parasite_copy
	movq	-16(%rbp), %rsi
	movq	%rax, 128(%rsi)
	jmp	.LBB4_16
.LBB4_14:                               # %sw.default
	jmp	.LBB4_15
.LBB4_15:                               # %do.body.26
	movabsq	$.L.str.2, %rdi
	movabsq	$.L.str.3, %rsi
	movl	$139, %edx
	movabsq	$.L__func__.gimp_item_prop_undo_constructed, %rcx
	xorl	%eax, %eax
	movl	%eax, %r8d
	callq	g_assertion_message_expr
.LBB4_16:                               # %sw.epilog
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_item_prop_undo_constructed, .Lfunc_end4-gimp_item_prop_undo_constructed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_item_prop_undo_set_property,@function
gimp_item_prop_undo_set_property:       # @gimp_item_prop_undo_set_property
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
	callq	gimp_item_prop_undo_get_type
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
	callq	g_value_dup_string
	movq	-40(%rbp), %rdi
	movq	%rax, 120(%rdi)
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
	movabsq	$.L.str.5, %rdi
	movabsq	$.L.str.3, %rsi
	movl	$158, %edx
	movabsq	$.L.str.6, %rcx
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
	.size	gimp_item_prop_undo_set_property, .Lfunc_end5-gimp_item_prop_undo_set_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_item_prop_undo_get_property,@function
gimp_item_prop_undo_get_property:       # @gimp_item_prop_undo_get_property
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
	callq	gimp_item_prop_undo_get_type
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
	movq	120(%rax), %rsi
	callq	g_value_set_string
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
	movabsq	$.L.str.5, %rdi
	movabsq	$.L.str.3, %rsi
	movl	$178, %edx
	movabsq	$.L.str.6, %rcx
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
	.size	gimp_item_prop_undo_get_property, .Lfunc_end6-gimp_item_prop_undo_get_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_item_prop_undo_get_memsize,@function
gimp_item_prop_undo_get_memsize:        # @gimp_item_prop_undo_get_memsize
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
	callq	gimp_item_prop_undo_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	96(%rax), %rdi
	callq	gimp_string_get_memsize
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	120(%rax), %rdi
	callq	gimp_string_get_memsize
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	128(%rax), %rdi
	callq	gimp_parasite_get_memsize
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	gimp_item_prop_undo_parent_class, %rsi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	152(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
	movq	-48(%rbp), %rsi         # 8-byte Reload
	addq	%rax, %rsi
	movq	%rsi, %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_item_prop_undo_get_memsize, .Lfunc_end7-gimp_item_prop_undo_get_memsize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_item_prop_undo_pop,@function
gimp_item_prop_undo_pop:                # @gimp_item_prop_undo_pop
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	callq	gimp_item_prop_undo_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	callq	gimp_item_undo_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	72(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	gimp_item_prop_undo_parent_class(%rip), %rdi
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	callq	gimp_undo_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
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
	subl	$48, %ecx
	movl	%esi, -116(%rbp)        # 4-byte Spill
	movl	%ecx, -120(%rbp)        # 4-byte Spill
	je	.LBB8_1
	jmp	.LBB8_15
.LBB8_15:                               # %entry
	movl	-116(%rbp), %eax        # 4-byte Reload
	subl	$49, %eax
	movl	%eax, -124(%rbp)        # 4-byte Spill
	je	.LBB8_2
	jmp	.LBB8_16
.LBB8_16:                               # %entry
	movl	-116(%rbp), %eax        # 4-byte Reload
	subl	$50, %eax
	movl	%eax, -128(%rbp)        # 4-byte Spill
	je	.LBB8_3
	jmp	.LBB8_17
.LBB8_17:                               # %entry
	movl	-116(%rbp), %eax        # 4-byte Reload
	subl	$51, %eax
	movl	%eax, -132(%rbp)        # 4-byte Spill
	je	.LBB8_4
	jmp	.LBB8_18
.LBB8_18:                               # %entry
	movl	-116(%rbp), %eax        # 4-byte Reload
	subl	$52, %eax
	movl	%eax, -136(%rbp)        # 4-byte Spill
	je	.LBB8_5
	jmp	.LBB8_19
.LBB8_19:                               # %entry
	movl	-116(%rbp), %eax        # 4-byte Reload
	addl	$-78, %eax
	subl	$2, %eax
	movl	%eax, -140(%rbp)        # 4-byte Spill
	jb	.LBB8_6
	jmp	.LBB8_12
.LBB8_1:                                # %sw.bb
	movq	-40(%rbp), %rdi
	callq	gimp_item_get_parent
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_item_get_index
	movl	%eax, -52(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_item_get_tree
	xorl	%r8d, %r8d
	xorl	%ecx, %ecx
	movl	%ecx, %r9d
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rdi
	movq	80(%rdi), %rdx
	movq	-32(%rbp), %rdi
	movl	88(%rdi), %ecx
	movq	%rax, %rdi
	callq	gimp_item_tree_reorder_item
	movq	-48(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	%rdx, 80(%rsi)
	movl	-52(%rbp), %ecx
	movq	-32(%rbp), %rdx
	movl	%ecx, 88(%rdx)
	movl	%eax, -144(%rbp)        # 4-byte Spill
	jmp	.LBB8_14
.LBB8_2:                                # %sw.bb.15
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	%rax, %rdi
	callq	g_strdup
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_item_get_tree
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rdi
	movq	96(%rdi), %rdx
	movq	%rax, %rdi
	callq	gimp_item_tree_rename_item
	movq	-32(%rbp), %rax
	movq	96(%rax), %rdi
	callq	g_free
	movq	-64(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rax, 96(%rdx)
	jmp	.LBB8_14
.LBB8_3:                                # %sw.bb.22
	leaq	-68(%rbp), %rsi
	leaq	-72(%rbp), %rdx
	movq	-40(%rbp), %rdi
	callq	gimp_item_get_offset
	xorl	%ecx, %ecx
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rdx
	movl	104(%rdx), %eax
	subl	-68(%rbp), %eax
	movq	-32(%rbp), %rdx
	movl	108(%rdx), %r8d
	subl	-72(%rbp), %r8d
	movl	%eax, %esi
	movl	%r8d, %edx
	callq	gimp_item_translate
	movl	-68(%rbp), %eax
	movq	-32(%rbp), %rdi
	movl	%eax, 104(%rdi)
	movl	-72(%rbp), %eax
	movq	-32(%rbp), %rdi
	movl	%eax, 108(%rdi)
	jmp	.LBB8_14
.LBB8_4:                                # %sw.bb.28
	movq	-40(%rbp), %rdi
	callq	gimp_item_get_visible
	xorl	%edx, %edx
	movl	%eax, -76(%rbp)
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movl	112(%rcx), %esi
	callq	gimp_item_set_visible
	movl	-76(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, 112(%rcx)
	jmp	.LBB8_14
.LBB8_5:                                # %sw.bb.32
	movq	-40(%rbp), %rdi
	callq	gimp_item_get_linked
	xorl	%edx, %edx
	movl	%eax, -80(%rbp)
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movl	116(%rcx), %esi
	callq	gimp_item_set_linked
	movl	-80(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, 116(%rcx)
	jmp	.LBB8_14
.LBB8_6:                                # %sw.bb.36
	movq	-32(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	120(%rax), %rsi
	callq	gimp_item_parasite_find
	movq	%rax, %rdi
	callq	gimp_parasite_copy
	movq	-32(%rbp), %rsi
	movq	%rax, 128(%rsi)
	cmpq	$0, -88(%rbp)
	je	.LBB8_8
# BB#7:                                 # %if.then
	xorl	%edx, %edx
	movq	-40(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	gimp_item_parasite_attach
	jmp	.LBB8_9
.LBB8_8:                                # %if.else
	xorl	%edx, %edx
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	120(%rax), %rsi
	callq	gimp_item_parasite_detach
.LBB8_9:                                # %if.end
	cmpq	$0, -88(%rbp)
	je	.LBB8_11
# BB#10:                                # %if.then.43
	movq	-88(%rbp), %rdi
	callq	gimp_parasite_free
.LBB8_11:                               # %if.end.44
	jmp	.LBB8_14
.LBB8_12:                               # %sw.default
	jmp	.LBB8_13
.LBB8_13:                               # %do.body
	movabsq	$.L.str.2, %rdi
	movabsq	$.L.str.3, %rsi
	movl	$301, %edx              # imm = 0x12D
	movabsq	$.L__func__.gimp_item_prop_undo_pop, %rcx
	xorl	%eax, %eax
	movl	%eax, %r8d
	callq	g_assertion_message_expr
.LBB8_14:                               # %sw.epilog
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_item_prop_undo_pop, .Lfunc_end8-gimp_item_prop_undo_pop
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_item_prop_undo_free,@function
gimp_item_prop_undo_free:               # @gimp_item_prop_undo_free
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
	callq	gimp_item_prop_undo_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, 96(%rax)
	je	.LBB9_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	96(%rax), %rdi
	callq	g_free
	movq	-24(%rbp), %rax
	movq	$0, 96(%rax)
.LBB9_2:                                # %if.end
	movq	-24(%rbp), %rax
	cmpq	$0, 120(%rax)
	je	.LBB9_4
# BB#3:                                 # %if.then.5
	movq	-24(%rbp), %rax
	movq	120(%rax), %rdi
	callq	g_free
	movq	-24(%rbp), %rax
	movq	$0, 120(%rax)
.LBB9_4:                                # %if.end.8
	movq	-24(%rbp), %rax
	cmpq	$0, 128(%rax)
	je	.LBB9_6
# BB#5:                                 # %if.then.10
	movq	-24(%rbp), %rax
	movq	128(%rax), %rdi
	callq	gimp_parasite_free
	movq	-24(%rbp), %rax
	movq	$0, 128(%rax)
.LBB9_6:                                # %if.end.13
	movq	gimp_item_prop_undo_parent_class, %rax
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
	.size	gimp_item_prop_undo_free, .Lfunc_end9-gimp_item_prop_undo_free
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

	.type	gimp_item_prop_undo_get_type.g_define_type_id__volatile,@object # @gimp_item_prop_undo_get_type.g_define_type_id__volatile
	.local	gimp_item_prop_undo_get_type.g_define_type_id__volatile
	.comm	gimp_item_prop_undo_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpItemPropUndo"
	.size	.L.str, 17

	.type	gimp_item_prop_undo_parent_class,@object # @gimp_item_prop_undo_parent_class
	.local	gimp_item_prop_undo_parent_class
	.comm	gimp_item_prop_undo_parent_class,8,8
	.type	GimpItemPropUndo_private_offset,@object # @GimpItemPropUndo_private_offset
	.local	GimpItemPropUndo_private_offset
	.comm	GimpItemPropUndo_private_offset,4,4
	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"parasite-name"
	.size	.L.str.1, 14

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Gimp-Core"
	.size	.L.str.2, 10

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gimpitempropundo.c"
	.size	.L.str.3, 19

	.type	.L__func__.gimp_item_prop_undo_constructed,@object # @__func__.gimp_item_prop_undo_constructed
.L__func__.gimp_item_prop_undo_constructed:
	.asciz	"gimp_item_prop_undo_constructed"
	.size	.L__func__.gimp_item_prop_undo_constructed, 32

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"item_prop_undo->parasite_name != NULL"
	.size	.L.str.4, 38

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.5, 54

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"property"
	.size	.L.str.6, 9

	.type	.L__func__.gimp_item_prop_undo_pop,@object # @__func__.gimp_item_prop_undo_pop
.L__func__.gimp_item_prop_undo_pop:
	.asciz	"gimp_item_prop_undo_pop"
	.size	.L__func__.gimp_item_prop_undo_pop, 24


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
