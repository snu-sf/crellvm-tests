	.text
	.file	"gimpimageundo.bc"
	.globl	gimp_image_undo_get_type
	.align	16, 0x90
	.type	gimp_image_undo_get_type,@function
gimp_image_undo_get_type:               # @gimp_image_undo_get_type
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
	movq	gimp_image_undo_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_image_undo_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_undo_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$296, %edx              # imm = 0x128
	movabsq	$gimp_image_undo_class_intern_init, %rdi
	movl	$168, %r8d
	movabsq	$gimp_image_undo_init, %rcx
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
	movabsq	$gimp_image_undo_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_image_undo_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_image_undo_get_type, .Lfunc_end0-gimp_image_undo_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_undo_class_intern_init,@function
gimp_image_undo_class_intern_init:      # @gimp_image_undo_class_intern_init
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
	movq	%rax, gimp_image_undo_parent_class
	cmpl	$0, GimpImageUndo_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpImageUndo_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_image_undo_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_image_undo_class_intern_init, .Lfunc_end1-gimp_image_undo_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_undo_init,@function
gimp_image_undo_init:                   # @gimp_image_undo_init
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
	.size	gimp_image_undo_init, .Lfunc_end2-gimp_image_undo_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_undo_class_init,@function
gimp_image_undo_class_init:             # @gimp_image_undo_class_init
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
	pushq	%r12
	pushq	%rbx
	subq	$144, %rsp
.Ltmp12:
	.cfi_offset %rbx, -48
.Ltmp13:
	.cfi_offset %r12, -40
.Ltmp14:
	.cfi_offset %r14, -32
.Ltmp15:
	.cfi_offset %r15, -24
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_undo_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$.L.str.1, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$4294705152, %ecx       # imm = 0xFFFC0000
	movl	$262144, %r8d           # imm = 0x40000
	xorl	%r9d, %r9d
	movl	$227, %edx
	movabsq	$gimp_image_undo_free, %r10
	movabsq	$gimp_image_undo_pop, %r11
	movabsq	$gimp_image_undo_get_memsize, %rbx
	movabsq	$gimp_image_undo_get_property, %r14
	movabsq	$gimp_image_undo_set_property, %r15
	movabsq	$gimp_image_undo_constructed, %r12
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rax
	movq	%r12, 72(%rax)
	movq	-48(%rbp), %rax
	movq	%r15, 24(%rax)
	movq	-48(%rbp), %rax
	movq	%r14, 32(%rax)
	movq	-56(%rbp), %rax
	movq	%rbx, 152(%rax)
	movq	-64(%rbp), %rax
	movq	%r11, 280(%rax)
	movq	-64(%rbp), %rax
	movq	%r10, 288(%rax)
	movq	-48(%rbp), %rax
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	movq	-88(%rbp), %r10         # 8-byte Reload
	movl	%edx, -92(%rbp)         # 4-byte Spill
	movq	%r10, %rdx
	movl	$227, (%rsp)
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	g_param_spec_int
	movl	$1, %esi
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.2, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movl	$4294705152, %ecx       # imm = 0xFFFC0000
	movl	$262144, %r8d           # imm = 0x40000
	xorl	%r9d, %r9d
	movl	$227, %esi
	movq	-48(%rbp), %rdx
	movl	%esi, -108(%rbp)        # 4-byte Spill
	movq	%rax, %rsi
	movq	%rdx, -120(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movl	$227, (%rsp)
	callq	g_param_spec_int
	movl	$2, %esi
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.3, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movl	$4294705152, %ecx       # imm = 0xFFFC0000
	movl	$262144, %r8d           # imm = 0x40000
	xorl	%r9d, %r9d
	movl	$227, %esi
	movq	-48(%rbp), %rdx
	movl	%esi, -124(%rbp)        # 4-byte Spill
	movq	%rax, %rsi
	movq	%rdx, -136(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movl	$227, (%rsp)
	callq	g_param_spec_int
	movl	$3, %esi
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.4, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movl	$4294705152, %ecx       # imm = 0xFFFC0000
	movl	$262144, %r8d           # imm = 0x40000
	xorl	%r9d, %r9d
	movl	$227, %esi
	movq	-48(%rbp), %rdx
	movl	%esi, -140(%rbp)        # 4-byte Spill
	movq	%rax, %rsi
	movq	%rdx, -152(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movl	$227, (%rsp)
	callq	g_param_spec_int
	movl	$4, %esi
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-48(%rbp), %rdi
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	callq	gimp_grid_get_type
	movabsq	$.L.str.5, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movl	$235, %r8d
	movq	%rdx, %rsi
	movq	%rax, %rcx
	callq	g_param_spec_object
	movl	$5, %esi
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.6, %rdi
	xorl	%esi, %esi
	movl	%esi, %eax
	movl	$235, %r8d
	movq	-48(%rbp), %rcx
	movq	%rax, %rsi
	movq	%rax, %rdx
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	callq	g_param_spec_string
	movl	$6, %esi
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	addq	$144, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_image_undo_class_init, .Lfunc_end3-gimp_image_undo_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_undo_constructed,@function
gimp_image_undo_constructed:            # @gimp_image_undo_constructed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp16:
	.cfi_def_cfa_offset 16
.Ltmp17:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp18:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	callq	gimp_image_undo_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -16(%rbp)
	movq	gimp_image_undo_parent_class, %rax
	movq	%rax, %rdi
	callq	g_type_check_class_cast
	cmpq	$0, 72(%rax)
	je	.LBB4_2
# BB#1:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_image_undo_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	72(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
.LBB4_2:                                # %if.end
	movq	-8(%rbp), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	callq	gimp_undo_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	32(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_undo_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	44(%rax), %ecx
	movl	%ecx, %edx
	subl	$38, %edx
	movl	%ecx, -76(%rbp)         # 4-byte Spill
	movl	%edx, -80(%rbp)         # 4-byte Spill
	je	.LBB4_3
	jmp	.LBB4_29
.LBB4_29:                               # %if.end
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$39, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	je	.LBB4_4
	jmp	.LBB4_30
.LBB4_30:                               # %if.end
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$40, %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	je	.LBB4_5
	jmp	.LBB4_31
.LBB4_31:                               # %if.end
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$41, %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	je	.LBB4_6
	jmp	.LBB4_32
.LBB4_32:                               # %if.end
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$42, %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
	je	.LBB4_19
	jmp	.LBB4_33
.LBB4_33:                               # %if.end
	movl	-76(%rbp), %eax         # 4-byte Reload
	addl	$-78, %eax
	subl	$2, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jb	.LBB4_20
	jmp	.LBB4_26
.LBB4_3:                                # %sw.bb
	movq	-24(%rbp), %rdi
	callq	gimp_image_base_type
	movq	-16(%rbp), %rdi
	movl	%eax, 72(%rdi)
	jmp	.LBB4_28
.LBB4_4:                                # %sw.bb.11
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_width
	movq	-16(%rbp), %rdi
	movl	%eax, 76(%rdi)
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_height
	movq	-16(%rbp), %rdi
	movl	%eax, 80(%rdi)
	jmp	.LBB4_28
.LBB4_5:                                # %sw.bb.14
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	addq	$104, %rax
	movq	-16(%rbp), %rcx
	addq	$112, %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	gimp_image_get_resolution
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_unit
	movq	-16(%rbp), %rcx
	movl	%eax, 120(%rcx)
	jmp	.LBB4_28
.LBB4_6:                                # %sw.bb.16
	jmp	.LBB4_7
.LBB4_7:                                # %do.body
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_grid_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB4_9
# BB#8:                                 # %if.then.19
	movl	$0, -44(%rbp)
	jmp	.LBB4_14
.LBB4_9:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_12
# BB#10:                                # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB4_12
# BB#11:                                # %if.then.22
	movl	$1, -44(%rbp)
	jmp	.LBB4_13
.LBB4_12:                               # %if.else.23
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB4_13:                               # %if.end.25
	jmp	.LBB4_14
.LBB4_14:                               # %if.end.26
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB4_16
# BB#15:                                # %if.then.28
	jmp	.LBB4_17
.LBB4_16:                               # %if.else.29
	movabsq	$.L.str.7, %rdi
	movabsq	$.L.str.8, %rsi
	movl	$176, %edx
	movabsq	$.L__func__.gimp_image_undo_constructed, %rcx
	movabsq	$.L.str.9, %r8
	callq	g_assertion_message_expr
.LBB4_17:                               # %if.end.30
	jmp	.LBB4_18
.LBB4_18:                               # %do.end
	jmp	.LBB4_28
.LBB4_19:                               # %sw.bb.31
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_colormap_size
	movq	-16(%rbp), %rdi
	movl	%eax, 136(%rdi)
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_colormap
	movl	$768, %esi              # imm = 0x300
	movq	%rax, %rdi
	callq	g_memdup
	movq	-16(%rbp), %rdi
	movq	%rax, 144(%rdi)
	jmp	.LBB4_28
.LBB4_20:                               # %sw.bb.35
	jmp	.LBB4_21
.LBB4_21:                               # %do.body.36
	movq	-16(%rbp), %rax
	cmpq	$0, 152(%rax)
	je	.LBB4_23
# BB#22:                                # %if.then.38
	jmp	.LBB4_24
.LBB4_23:                               # %if.else.39
	movabsq	$.L.str.7, %rdi
	movabsq	$.L.str.8, %rsi
	movl	$187, %edx
	movabsq	$.L__func__.gimp_image_undo_constructed, %rcx
	movabsq	$.L.str.10, %r8
	callq	g_assertion_message_expr
.LBB4_24:                               # %if.end.40
	jmp	.LBB4_25
.LBB4_25:                               # %do.end.41
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	152(%rax), %rsi
	callq	gimp_image_parasite_find
	movq	%rax, %rdi
	callq	gimp_parasite_copy
	movq	-16(%rbp), %rsi
	movq	%rax, 160(%rsi)
	jmp	.LBB4_28
.LBB4_26:                               # %sw.default
	jmp	.LBB4_27
.LBB4_27:                               # %do.body.45
	movabsq	$.L.str.7, %rdi
	movabsq	$.L.str.8, %rsi
	movl	$194, %edx
	movabsq	$.L__func__.gimp_image_undo_constructed, %rcx
	xorl	%eax, %eax
	movl	%eax, %r8d
	callq	g_assertion_message_expr
.LBB4_28:                               # %sw.epilog
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_image_undo_constructed, .Lfunc_end4-gimp_image_undo_constructed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_undo_set_property,@function
gimp_image_undo_set_property:           # @gimp_image_undo_set_property
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp19:
	.cfi_def_cfa_offset 16
.Ltmp20:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp21:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gimp_image_undo_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	decl	%r8d
	movl	%r8d, %eax
	subl	$5, %r8d
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movl	%r8d, -92(%rbp)         # 4-byte Spill
	ja	.LBB5_9
# BB#13:                                # %entry
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	.LJTI5_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB5_1:                                # %sw.bb
	movq	-24(%rbp), %rdi
	callq	g_value_get_int
	movq	-40(%rbp), %rdi
	movl	%eax, 84(%rdi)
	jmp	.LBB5_12
.LBB5_2:                                # %sw.bb.3
	movq	-24(%rbp), %rdi
	callq	g_value_get_int
	movq	-40(%rbp), %rdi
	movl	%eax, 88(%rdi)
	jmp	.LBB5_12
.LBB5_3:                                # %sw.bb.5
	movq	-24(%rbp), %rdi
	callq	g_value_get_int
	movq	-40(%rbp), %rdi
	movl	%eax, 92(%rdi)
	jmp	.LBB5_12
.LBB5_4:                                # %sw.bb.7
	movq	-24(%rbp), %rdi
	callq	g_value_get_int
	movq	-40(%rbp), %rdi
	movl	%eax, 96(%rdi)
	jmp	.LBB5_12
.LBB5_5:                                # %sw.bb.9
	movq	-24(%rbp), %rdi
	callq	g_value_get_object
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB5_7
# BB#6:                                 # %if.then
	movq	-48(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_config_duplicate
	movq	-40(%rbp), %rsi
	movq	%rax, 128(%rsi)
.LBB5_7:                                # %if.end
	jmp	.LBB5_12
.LBB5_8:                                # %sw.bb.15
	movq	-24(%rbp), %rdi
	callq	g_value_dup_string
	movq	-40(%rbp), %rdi
	movq	%rax, 152(%rdi)
	jmp	.LBB5_12
.LBB5_9:                                # %sw.default
	jmp	.LBB5_10
.LBB5_10:                               # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)
	movl	-12(%rbp), %ecx
	movl	%ecx, -68(%rbp)
	movl	-68(%rbp), %r8d
	movq	-64(%rbp), %rax
	movq	8(%rax), %r9
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	movl	%r8d, -108(%rbp)        # 4-byte Spill
	movq	%r9, -120(%rbp)         # 8-byte Spill
	callq	g_type_name
	movq	-56(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.11, %rdi
	movabsq	$.L.str.8, %rsi
	movl	$233, %edx
	movabsq	$.L.str.12, %rcx
	movl	-108(%rbp), %r8d        # 4-byte Reload
	movq	-120(%rbp), %r9         # 8-byte Reload
	movq	-128(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#11:                                # %do.end
	jmp	.LBB5_12
.LBB5_12:                               # %sw.epilog
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_image_undo_set_property, .Lfunc_end5-gimp_image_undo_set_property
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI5_0:
	.quad	.LBB5_1
	.quad	.LBB5_2
	.quad	.LBB5_3
	.quad	.LBB5_4
	.quad	.LBB5_5
	.quad	.LBB5_8

	.text
	.align	16, 0x90
	.type	gimp_image_undo_get_property,@function
gimp_image_undo_get_property:           # @gimp_image_undo_get_property
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp22:
	.cfi_def_cfa_offset 16
.Ltmp23:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp24:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_image_undo_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	decl	%r8d
	movl	%r8d, %eax
	subl	$5, %r8d
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movl	%r8d, -84(%rbp)         # 4-byte Spill
	ja	.LBB6_7
# BB#11:                                # %entry
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	.LJTI6_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB6_1:                                # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	84(%rax), %esi
	callq	g_value_set_int
	jmp	.LBB6_10
.LBB6_2:                                # %sw.bb.2
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	88(%rax), %esi
	callq	g_value_set_int
	jmp	.LBB6_10
.LBB6_3:                                # %sw.bb.3
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	92(%rax), %esi
	callq	g_value_set_int
	jmp	.LBB6_10
.LBB6_4:                                # %sw.bb.4
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	96(%rax), %esi
	callq	g_value_set_int
	jmp	.LBB6_10
.LBB6_5:                                # %sw.bb.5
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, %rsi
	callq	g_value_set_object
	jmp	.LBB6_10
.LBB6_6:                                # %sw.bb.6
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	152(%rax), %rsi
	callq	g_value_set_string
	jmp	.LBB6_10
.LBB6_7:                                # %sw.default
	jmp	.LBB6_8
.LBB6_8:                                # %do.body
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
	movabsq	$.L.str.11, %rdi
	movabsq	$.L.str.8, %rsi
	movl	$268, %edx              # imm = 0x10C
	movabsq	$.L.str.12, %rcx
	movl	-88(%rbp), %r8d         # 4-byte Reload
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	-104(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#9:                                 # %do.end
	jmp	.LBB6_10
.LBB6_10:                               # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_image_undo_get_property, .Lfunc_end6-gimp_image_undo_get_property
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI6_0:
	.quad	.LBB6_1
	.quad	.LBB6_2
	.quad	.LBB6_3
	.quad	.LBB6_4
	.quad	.LBB6_5
	.quad	.LBB6_6

	.text
	.align	16, 0x90
	.type	gimp_image_undo_get_memsize,@function
gimp_image_undo_get_memsize:            # @gimp_image_undo_get_memsize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp25:
	.cfi_def_cfa_offset 16
.Ltmp26:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp27:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_image_undo_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, 144(%rax)
	je	.LBB7_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	addq	$768, %rax              # imm = 0x300
	movq	%rax, -32(%rbp)
.LBB7_2:                                # %if.end
	movq	-24(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_object_get_memsize
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	152(%rax), %rdi
	callq	gimp_string_get_memsize
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	160(%rax), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_parasite_get_memsize
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	gimp_image_undo_parent_class, %rsi
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
	.size	gimp_image_undo_get_memsize, .Lfunc_end7-gimp_image_undo_get_memsize
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI8_0:
	.quad	4532020583610935537     # double 1.0000000000000001E-5
	.text
	.align	16, 0x90
	.type	gimp_image_undo_pop,@function
gimp_image_undo_pop:                    # @gimp_image_undo_pop
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp28:
	.cfi_def_cfa_offset 16
.Ltmp29:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp30:
	.cfi_def_cfa_register %rbp
	subq	$256, %rsp              # imm = 0x100
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	callq	gimp_image_undo_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_image_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -48(%rbp)
	movq	gimp_image_undo_parent_class(%rip), %rdi
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	callq	gimp_undo_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
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
	subl	$38, %ecx
	movl	%esi, -172(%rbp)        # 4-byte Spill
	movl	%ecx, -176(%rbp)        # 4-byte Spill
	je	.LBB8_1
	jmp	.LBB8_41
.LBB8_41:                               # %entry
	movl	-172(%rbp), %eax        # 4-byte Reload
	subl	$39, %eax
	movl	%eax, -180(%rbp)        # 4-byte Spill
	je	.LBB8_4
	jmp	.LBB8_42
.LBB8_42:                               # %entry
	movl	-172(%rbp), %eax        # 4-byte Reload
	subl	$40, %eax
	movl	%eax, -184(%rbp)        # 4-byte Spill
	je	.LBB8_8
	jmp	.LBB8_43
.LBB8_43:                               # %entry
	movl	-172(%rbp), %eax        # 4-byte Reload
	subl	$41, %eax
	movl	%eax, -188(%rbp)        # 4-byte Spill
	je	.LBB8_20
	jmp	.LBB8_44
.LBB8_44:                               # %entry
	movl	-172(%rbp), %eax        # 4-byte Reload
	subl	$42, %eax
	movl	%eax, -192(%rbp)        # 4-byte Spill
	je	.LBB8_21
	jmp	.LBB8_45
.LBB8_45:                               # %entry
	movl	-172(%rbp), %eax        # 4-byte Reload
	addl	$-78, %eax
	subl	$2, %eax
	movl	%eax, -196(%rbp)        # 4-byte Spill
	jb	.LBB8_27
	jmp	.LBB8_38
.LBB8_1:                                # %sw.bb
	movq	-32(%rbp), %rax
	movl	72(%rax), %ecx
	movl	%ecx, -52(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_image_base_type
	movabsq	$.L.str.13, %rsi
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-32(%rbp), %rdi
	movl	%eax, 72(%rdi)
	movq	-40(%rbp), %rdi
	movl	-52(%rbp), %edx
	movb	$0, %al
	callq	g_object_set
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	movq	-40(%rbp), %rdi
	callq	gimp_image_colormap_changed
	movq	-32(%rbp), %rcx
	movl	72(%rcx), %edx
	movq	-40(%rbp), %rdi
	movl	%edx, -200(%rbp)        # 4-byte Spill
	callq	gimp_image_base_type
	movl	-200(%rbp), %edx        # 4-byte Reload
	cmpl	%eax, %edx
	je	.LBB8_3
# BB#2:                                 # %if.then
	movq	-24(%rbp), %rax
	movl	$1, (%rax)
.LBB8_3:                                # %if.end
	jmp	.LBB8_40
.LBB8_4:                                # %sw.bb.12
	movq	-32(%rbp), %rax
	movl	76(%rax), %ecx
	movl	%ecx, -56(%rbp)
	movq	-32(%rbp), %rax
	movl	80(%rax), %ecx
	movl	%ecx, -60(%rbp)
	movq	-32(%rbp), %rax
	movl	84(%rax), %ecx
	movl	%ecx, -64(%rbp)
	movq	-32(%rbp), %rax
	movl	88(%rax), %ecx
	movl	%ecx, -68(%rbp)
	movq	-32(%rbp), %rax
	movl	92(%rax), %ecx
	movl	%ecx, -72(%rbp)
	movq	-32(%rbp), %rax
	movl	96(%rax), %ecx
	movl	%ecx, -76(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_image_get_width
	movq	-32(%rbp), %rdi
	movl	%eax, 76(%rdi)
	movq	-40(%rbp), %rdi
	callq	gimp_image_get_height
	movabsq	$.L.str.14, %rsi
	movabsq	$.L.str.15, %rcx
	xorl	%edx, %edx
	movl	%edx, %r9d
	xorl	%edx, %edx
	movq	-32(%rbp), %rdi
	movl	%eax, 80(%rdi)
	movl	%edx, %eax
	subl	-64(%rbp), %eax
	movq	-32(%rbp), %rdi
	movl	%eax, 84(%rdi)
	subl	-68(%rbp), %edx
	movq	-32(%rbp), %rdi
	movl	%edx, 88(%rdi)
	movl	-56(%rbp), %eax
	movq	-32(%rbp), %rdi
	movl	%eax, 92(%rdi)
	movl	-60(%rbp), %eax
	movq	-32(%rbp), %rdi
	movl	%eax, 96(%rdi)
	movq	-40(%rbp), %rdi
	movl	-56(%rbp), %edx
	movl	-60(%rbp), %r8d
	movb	$0, %al
	callq	g_object_set
	movq	-40(%rbp), %rdi
	callq	gimp_image_get_mask
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_invalidate_boundary
	movq	-40(%rbp), %rdi
	callq	gimp_image_get_width
	movq	-32(%rbp), %rcx
	cmpl	76(%rcx), %eax
	jne	.LBB8_6
# BB#5:                                 # %lor.lhs.false
	movq	-40(%rbp), %rdi
	callq	gimp_image_get_height
	movq	-32(%rbp), %rdi
	cmpl	80(%rdi), %eax
	je	.LBB8_7
.LBB8_6:                                # %if.then.37
	movq	-24(%rbp), %rax
	movl	$1, 4(%rax)
	movl	-64(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 8(%rax)
	movl	-68(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 12(%rax)
	movl	-72(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 16(%rax)
	movl	-76(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 20(%rax)
.LBB8_7:                                # %if.end.42
	jmp	.LBB8_40
.LBB8_8:                                # %sw.bb.43
	leaq	-88(%rbp), %rsi
	leaq	-96(%rbp), %rdx
	movq	-40(%rbp), %rdi
	callq	gimp_image_get_resolution
	xorps	%xmm0, %xmm0
	movq	-32(%rbp), %rdx
	movsd	104(%rdx), %xmm1        # xmm1 = mem[0],zero
	subsd	-88(%rbp), %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB8_10
# BB#9:                                 # %cond.true
	movq	-32(%rbp), %rax
	movsd	104(%rax), %xmm0        # xmm0 = mem[0],zero
	subsd	-88(%rbp), %xmm0
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movsd	%xmm0, -216(%rbp)       # 8-byte Spill
	jmp	.LBB8_11
.LBB8_10:                               # %cond.false
	movq	-32(%rbp), %rax
	movsd	104(%rax), %xmm0        # xmm0 = mem[0],zero
	subsd	-88(%rbp), %xmm0
	movsd	%xmm0, -216(%rbp)       # 8-byte Spill
.LBB8_11:                               # %cond.end
	movsd	-216(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI8_0, %xmm1         # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jae	.LBB8_16
# BB#12:                                # %lor.lhs.false.52
	xorps	%xmm0, %xmm0
	movq	-32(%rbp), %rax
	movsd	112(%rax), %xmm1        # xmm1 = mem[0],zero
	subsd	-96(%rbp), %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB8_14
# BB#13:                                # %cond.true.55
	movq	-32(%rbp), %rax
	movsd	112(%rax), %xmm0        # xmm0 = mem[0],zero
	subsd	-96(%rbp), %xmm0
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movsd	%xmm0, -224(%rbp)       # 8-byte Spill
	jmp	.LBB8_15
.LBB8_14:                               # %cond.false.59
	movq	-32(%rbp), %rax
	movsd	112(%rax), %xmm0        # xmm0 = mem[0],zero
	subsd	-96(%rbp), %xmm0
	movsd	%xmm0, -224(%rbp)       # 8-byte Spill
.LBB8_15:                               # %cond.end.62
	movsd	-224(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI8_0, %xmm1         # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jb	.LBB8_17
.LBB8_16:                               # %if.then.65
	movq	-32(%rbp), %rax
	movsd	104(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	movsd	%xmm0, 56(%rax)
	movq	-32(%rbp), %rax
	movsd	112(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	movsd	%xmm0, 64(%rax)
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movsd	%xmm0, 104(%rax)
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movsd	%xmm0, 112(%rax)
	movq	-24(%rbp), %rax
	movl	$1, 24(%rax)
.LBB8_17:                               # %if.end.72
	movq	-32(%rbp), %rax
	movl	120(%rax), %ecx
	movq	-40(%rbp), %rdi
	movl	%ecx, -228(%rbp)        # 4-byte Spill
	callq	gimp_image_get_unit
	movl	-228(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	je	.LBB8_19
# BB#18:                                # %if.then.75
	movq	-40(%rbp), %rdi
	callq	gimp_image_get_unit
	movl	%eax, -100(%rbp)
	movq	-32(%rbp), %rdi
	movl	120(%rdi), %eax
	movq	-48(%rbp), %rdi
	movl	%eax, 72(%rdi)
	movl	-100(%rbp), %eax
	movq	-32(%rbp), %rdi
	movl	%eax, 120(%rdi)
	movq	-24(%rbp), %rdi
	movl	$1, 28(%rdi)
.LBB8_19:                               # %if.end.80
	jmp	.LBB8_40
.LBB8_20:                               # %sw.bb.81
	movq	-40(%rbp), %rdi
	callq	gimp_image_get_grid
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_config_duplicate
	xorl	%edx, %edx
	movq	%rax, -112(%rbp)
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	128(%rax), %rsi
	callq	gimp_image_set_grid
	movq	-32(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-112(%rbp), %rax
	movq	-32(%rbp), %rsi
	movq	%rax, 128(%rsi)
	jmp	.LBB8_40
.LBB8_21:                               # %sw.bb.89
	movq	-40(%rbp), %rdi
	callq	gimp_image_get_colormap_size
	movl	%eax, -124(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_image_get_colormap
	movl	$768, %esi              # imm = 0x300
	movq	%rax, %rdi
	callq	g_memdup
	movq	%rax, -120(%rbp)
	movq	-32(%rbp), %rax
	cmpq	$0, 144(%rax)
	je	.LBB8_23
# BB#22:                                # %if.then.94
	xorl	%ecx, %ecx
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	144(%rax), %rsi
	movq	-32(%rbp), %rax
	movl	136(%rax), %edx
	callq	gimp_image_set_colormap
	jmp	.LBB8_24
.LBB8_23:                               # %if.else
	xorl	%esi, %esi
	movq	-40(%rbp), %rdi
	callq	gimp_image_unset_colormap
.LBB8_24:                               # %if.end.97
	movq	-32(%rbp), %rax
	cmpq	$0, 144(%rax)
	je	.LBB8_26
# BB#25:                                # %if.then.100
	movq	-32(%rbp), %rax
	movq	144(%rax), %rdi
	callq	g_free
.LBB8_26:                               # %if.end.102
	movl	-124(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, 136(%rcx)
	movq	-120(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	%rcx, 144(%rdx)
	jmp	.LBB8_40
.LBB8_27:                               # %sw.bb.105
	movq	-32(%rbp), %rax
	movq	160(%rax), %rax
	movq	%rax, -136(%rbp)
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	152(%rax), %rsi
	callq	gimp_image_parasite_find
	movq	%rax, %rdi
	callq	gimp_parasite_copy
	movq	-32(%rbp), %rsi
	movq	%rax, 160(%rsi)
	cmpq	$0, -136(%rbp)
	je	.LBB8_29
# BB#28:                                # %if.then.111
	movq	-48(%rbp), %rax
	movq	240(%rax), %rdi
	movq	-136(%rbp), %rsi
	callq	gimp_parasite_list_add
	jmp	.LBB8_30
.LBB8_29:                               # %if.else.112
	movq	-48(%rbp), %rax
	movq	240(%rax), %rdi
	movq	-32(%rbp), %rax
	movq	152(%rax), %rsi
	callq	gimp_parasite_list_remove
.LBB8_30:                               # %if.end.115
	cmpq	$0, -136(%rbp)
	je	.LBB8_32
# BB#31:                                # %cond.true.117
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	jmp	.LBB8_33
.LBB8_32:                               # %cond.false.119
	movq	-32(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
.LBB8_33:                               # %cond.end.121
	movq	-248(%rbp), %rax        # 8-byte Reload
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rdi
	movl	$.L.str.16, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB8_35
# BB#34:                                # %if.then.125
	movq	-40(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gimp_color_managed_interface_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_color_managed_profile_changed
.LBB8_35:                               # %if.end.128
	cmpq	$0, -136(%rbp)
	je	.LBB8_37
# BB#36:                                # %if.then.130
	movq	-136(%rbp), %rdi
	callq	gimp_parasite_free
.LBB8_37:                               # %if.end.131
	jmp	.LBB8_40
.LBB8_38:                               # %sw.default
	jmp	.LBB8_39
.LBB8_39:                               # %do.body
	movabsq	$.L.str.7, %rdi
	movabsq	$.L.str.8, %rsi
	movl	$459, %edx              # imm = 0x1CB
	movabsq	$.L__func__.gimp_image_undo_pop, %rcx
	xorl	%eax, %eax
	movl	%eax, %r8d
	callq	g_assertion_message_expr
.LBB8_40:                               # %sw.epilog
	addq	$256, %rsp              # imm = 0x100
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_image_undo_pop, .Lfunc_end8-gimp_image_undo_pop
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_undo_free,@function
gimp_image_undo_free:                   # @gimp_image_undo_free
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp31:
	.cfi_def_cfa_offset 16
.Ltmp32:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp33:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_image_undo_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, 128(%rax)
	je	.LBB9_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-24(%rbp), %rax
	movq	$0, 128(%rax)
.LBB9_2:                                # %if.end
	movq	-24(%rbp), %rax
	cmpq	$0, 144(%rax)
	je	.LBB9_4
# BB#3:                                 # %if.then.5
	movq	-24(%rbp), %rax
	movq	144(%rax), %rdi
	callq	g_free
	movq	-24(%rbp), %rax
	movq	$0, 144(%rax)
.LBB9_4:                                # %if.end.8
	movq	-24(%rbp), %rax
	cmpq	$0, 152(%rax)
	je	.LBB9_6
# BB#5:                                 # %if.then.10
	movq	-24(%rbp), %rax
	movq	152(%rax), %rdi
	callq	g_free
	movq	-24(%rbp), %rax
	movq	$0, 152(%rax)
.LBB9_6:                                # %if.end.13
	movq	-24(%rbp), %rax
	cmpq	$0, 160(%rax)
	je	.LBB9_8
# BB#7:                                 # %if.then.15
	movq	-24(%rbp), %rax
	movq	160(%rax), %rdi
	callq	gimp_parasite_free
	movq	-24(%rbp), %rax
	movq	$0, 160(%rax)
.LBB9_8:                                # %if.end.18
	movq	gimp_image_undo_parent_class, %rax
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
	.size	gimp_image_undo_free, .Lfunc_end9-gimp_image_undo_free
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	movl	$.L.str.7, %r9d
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

	.type	gimp_image_undo_get_type.g_define_type_id__volatile,@object # @gimp_image_undo_get_type.g_define_type_id__volatile
	.local	gimp_image_undo_get_type.g_define_type_id__volatile
	.comm	gimp_image_undo_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpImageUndo"
	.size	.L.str, 14

	.type	gimp_image_undo_parent_class,@object # @gimp_image_undo_parent_class
	.local	gimp_image_undo_parent_class
	.comm	gimp_image_undo_parent_class,8,8
	.type	GimpImageUndo_private_offset,@object # @GimpImageUndo_private_offset
	.local	GimpImageUndo_private_offset
	.comm	GimpImageUndo_private_offset,4,4
	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"previous-origin-x"
	.size	.L.str.1, 18

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"previous-origin-y"
	.size	.L.str.2, 18

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"previous-width"
	.size	.L.str.3, 15

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"previous-height"
	.size	.L.str.4, 16

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"grid"
	.size	.L.str.5, 5

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"parasite-name"
	.size	.L.str.6, 14

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Gimp-Core"
	.size	.L.str.7, 10

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"gimpimageundo.c"
	.size	.L.str.8, 16

	.type	.L__func__.gimp_image_undo_constructed,@object # @__func__.gimp_image_undo_constructed
.L__func__.gimp_image_undo_constructed:
	.asciz	"gimp_image_undo_constructed"
	.size	.L__func__.gimp_image_undo_constructed, 28

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"GIMP_IS_GRID (image_undo->grid)"
	.size	.L.str.9, 32

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"image_undo->parasite_name != NULL"
	.size	.L.str.10, 34

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.11, 54

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"property"
	.size	.L.str.12, 9

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"base-type"
	.size	.L.str.13, 10

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"width"
	.size	.L.str.14, 6

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"height"
	.size	.L.str.15, 7

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"icc-profile"
	.size	.L.str.16, 12

	.type	.L__func__.gimp_image_undo_pop,@object # @__func__.gimp_image_undo_pop
.L__func__.gimp_image_undo_pop:
	.asciz	"gimp_image_undo_pop"
	.size	.L__func__.gimp_image_undo_pop, 20


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
