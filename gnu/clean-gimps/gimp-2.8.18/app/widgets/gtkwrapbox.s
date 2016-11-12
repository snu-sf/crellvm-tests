	.text
	.file	"gtkwrapbox.bc"
	.globl	gtk_wrap_box_get_type
	.align	16, 0x90
	.type	gtk_wrap_box_get_type,@function
gtk_wrap_box_get_type:                  # @gtk_wrap_box_get_type
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
	cmpq	$0, gtk_wrap_box_get_type.wrap_box_type
	jne	.LBB0_2
# BB#1:                                 # %if.then
	callq	gtk_container_get_type
	movabsq	$.L.str, %rsi
	movabsq	$gtk_wrap_box_get_type.wrap_box_info, %rdx
	xorl	%ecx, %ecx
	movq	%rax, %rdi
	callq	g_type_register_static
	movq	%rax, gtk_wrap_box_get_type.wrap_box_type
.LBB0_2:                                # %if.end
	movq	gtk_wrap_box_get_type.wrap_box_type, %rax
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gtk_wrap_box_get_type, .Lfunc_end0-gtk_wrap_box_get_type
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI1_0:
	.long	2139095039              # float 3.40282347E+38
.LCPI1_1:
	.long	1065353216              # float 1
	.text
	.align	16, 0x90
	.type	gtk_wrap_box_class_init,@function
gtk_wrap_box_class_init:                # @gtk_wrap_box_class_init
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$248, %rsp
.Ltmp6:
	.cfi_offset %rbx, -56
.Ltmp7:
	.cfi_offset %r12, -48
.Ltmp8:
	.cfi_offset %r13, -40
.Ltmp9:
	.cfi_offset %r14, -32
.Ltmp10:
	.cfi_offset %r15, -24
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	%rax, -72(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_class_peek_parent
	movabsq	$.L.str.7, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	xorl	%ecx, %ecx
	movl	$3, %r8d
	movabsq	$gtk_wrap_box_get_child_property, %rdx
	movabsq	$gtk_wrap_box_set_child_property, %r9
	movabsq	$gtk_wrap_box_child_type, %r10
	movabsq	$gtk_wrap_box_forall, %r11
	movabsq	$gtk_wrap_box_remove, %rbx
	movabsq	$gtk_wrap_box_add, %r14
	movabsq	$gtk_wrap_box_expose, %r15
	movabsq	$gtk_wrap_box_unmap, %r12
	movabsq	$gtk_wrap_box_map, %r13
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movabsq	$gtk_wrap_box_get_property, %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movabsq	$gtk_wrap_box_set_property, %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, parent_class
	movq	-56(%rbp), %rax
	movq	%rdx, -120(%rbp)        # 8-byte Spill
	movq	-112(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, 24(%rax)
	movq	-56(%rbp), %rax
	movq	-104(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, 32(%rax)
	movq	-64(%rbp), %rax
	movq	%r13, 208(%rax)
	movq	-64(%rbp), %rax
	movq	%r12, 216(%rax)
	movq	-64(%rbp), %rax
	movq	%r15, 392(%rax)
	movq	-72(%rbp), %rax
	movq	%r14, 720(%rax)
	movq	-72(%rbp), %rax
	movq	%rbx, 728(%rax)
	movq	-72(%rbp), %rax
	movq	%r11, 744(%rax)
	movq	-72(%rbp), %rax
	movq	%r10, 760(%rax)
	movq	-72(%rbp), %rax
	movq	%r9, 776(%rax)
	movq	-72(%rbp), %rax
	movq	-120(%rbp), %r9         # 8-byte Reload
	movq	%r9, 784(%rax)
	movq	-48(%rbp), %rax
	movq	$0, 824(%rax)
	movq	-56(%rbp), %rax
	movq	%rsi, -128(%rbp)        # 8-byte Spill
	movq	-128(%rbp), %rdx        # 8-byte Reload
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	g_param_spec_boolean
	movl	$1, %esi
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-56(%rbp), %rdi
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	callq	gtk_justification_get_type
	movabsq	$.L.str.8, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%r8d, %r8d
	movl	$3, %r9d
	movq	%rdx, %rsi
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movl	$2, %esi
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.9, %rdi
	xorl	%esi, %esi
	movl	%esi, %eax
	xorl	%esi, %esi
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	movl	$3, %r9d
	movq	-56(%rbp), %rcx
	movl	%esi, -148(%rbp)        # 4-byte Spill
	movq	%rax, %rsi
	movq	%rax, %rdx
	movl	-148(%rbp), %r10d       # 4-byte Reload
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	movl	%r10d, %ecx
	movl	%r9d, -164(%rbp)        # 4-byte Spill
	movl	%r10d, %r9d
	movl	$3, (%rsp)
	callq	g_param_spec_uint
	movl	$3, %esi
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.10, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	xorl	%ecx, %ecx
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	movl	$3, %esi
	movq	-56(%rbp), %rdx
	movl	%esi, -168(%rbp)        # 4-byte Spill
	movq	%rax, %rsi
	movq	%rdx, -176(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movl	%ecx, -180(%rbp)        # 4-byte Spill
	movl	-180(%rbp), %r9d        # 4-byte Reload
	movl	$3, (%rsp)
	callq	g_param_spec_uint
	movl	$4, %esi
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-56(%rbp), %rdi
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	callq	gtk_justification_get_type
	movabsq	$.L.str.11, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movl	$1, %r8d
	movl	$3, %r9d
	movq	%rdx, %rsi
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movl	$5, %esi
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.12, %rdi
	xorl	%esi, %esi
	movl	%esi, %eax
	xorps	%xmm0, %xmm0
	movss	.LCPI1_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movss	.LCPI1_1, %xmm2         # xmm2 = mem[0],zero,zero,zero
	movl	$3, %ecx
	movq	-56(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -200(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	callq	g_param_spec_float
	movl	$6, %esi
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.13, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	xorps	%xmm0, %xmm0
	movss	.LCPI1_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movss	.LCPI1_1, %xmm2         # xmm2 = mem[0],zero,zero,zero
	movl	$1, %ecx
	movq	-56(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -208(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	callq	g_param_spec_float
	movl	$7, %esi
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.14, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movl	$1, %ecx
	movl	$32767, %esi            # imm = 0x7FFF
	movl	$3, %r8d
	movq	-56(%rbp), %rdx
	movl	%esi, -212(%rbp)        # 4-byte Spill
	movq	%rax, %rsi
	movq	%rdx, -224(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movl	-212(%rbp), %r9d        # 4-byte Reload
	movl	%r8d, -228(%rbp)        # 4-byte Spill
	movl	%r9d, %r8d
	movl	$3, (%rsp)
	callq	g_param_spec_uint
	movl	$8, %esi
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.15, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	xorl	%r9d, %r9d
	movl	$3, %esi
	movq	-72(%rbp), %rdx
	movl	%esi, -232(%rbp)        # 4-byte Spill
	movq	%rax, %rsi
	movq	%rdx, -240(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movl	$3, (%rsp)
	callq	g_param_spec_int
	movl	$1, %esi
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gtk_container_class_install_child_property
	movabsq	$.L.str.16, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	xorl	%ecx, %ecx
	movl	$3, %r8d
	movq	-72(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -248(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	callq	g_param_spec_boolean
	movl	$2, %esi
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gtk_container_class_install_child_property
	movabsq	$.L.str.17, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	xorl	%ecx, %ecx
	movl	$3, %r8d
	movq	-72(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -256(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	callq	g_param_spec_boolean
	movl	$3, %esi
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gtk_container_class_install_child_property
	movabsq	$.L.str.18, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	xorl	%ecx, %ecx
	movl	$3, %r8d
	movq	-72(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -264(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	callq	g_param_spec_boolean
	movl	$4, %esi
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gtk_container_class_install_child_property
	movabsq	$.L.str.19, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	xorl	%ecx, %ecx
	movl	$3, %r8d
	movq	-72(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -272(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	callq	g_param_spec_boolean
	movl	$5, %esi
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gtk_container_class_install_child_property
	movabsq	$.L.str.20, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	xorl	%ecx, %ecx
	movl	$3, %r8d
	movq	-72(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -280(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	callq	g_param_spec_boolean
	movl	$6, %esi
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gtk_container_class_install_child_property
	addq	$248, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gtk_wrap_box_class_init, .Lfunc_end1-gtk_wrap_box_class_init
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI2_0:
	.long	1065353216              # float 1
	.text
	.align	16, 0x90
	.type	gtk_wrap_box_init,@function
gtk_wrap_box_init:                      # @gtk_wrap_box_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp11:
	.cfi_def_cfa_offset 16
.Ltmp12:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp13:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	gtk_object_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	24(%rax), %ecx
	orl	$32, %ecx
	movl	%ecx, 24(%rax)
# BB#2:                                 # %do.end
	movss	.LCPI2_0, %xmm0         # xmm0 = mem[0],zero,zero,zero
	movq	-8(%rbp), %rax
	movw	112(%rax), %cx
	andw	$-2, %cx
	movw	%cx, 112(%rax)
	movq	-8(%rbp), %rax
	movb	$0, 114(%rax)
	movq	-8(%rbp), %rax
	movb	$0, 115(%rax)
	movq	-8(%rbp), %rax
	movw	112(%rax), %cx
	andw	$-31, %cx
	movw	%cx, 112(%rax)
	movq	-8(%rbp), %rax
	movw	112(%rax), %cx
	andw	$-481, %cx              # imm = 0xFFFFFFFFFFFFFE1F
	orw	$32, %cx
	movw	%cx, 112(%rax)
	movq	-8(%rbp), %rax
	movw	$0, 116(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 120(%rax)
	movq	-8(%rbp), %rax
	movss	%xmm0, 128(%rax)
	movq	-8(%rbp), %rax
	movl	$32767, 132(%rax)       # imm = 0x7FFF
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gtk_wrap_box_init, .Lfunc_end2-gtk_wrap_box_init
	.cfi_endproc

	.globl	gtk_wrap_box_set_homogeneous
	.align	16, 0x90
	.type	gtk_wrap_box_set_homogeneous,@function
gtk_wrap_box_set_homogeneous:           # @gtk_wrap_box_set_homogeneous
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gtk_wrap_box_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB3_8
.LBB3_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB3_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB3_7
.LBB3_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB3_7:                                # %if.end
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB3_10
# BB#9:                                 # %if.then.8
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gtk_wrap_box_set_homogeneous, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB3_14
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	cmpl	$0, -12(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -12(%rbp)
	movq	-8(%rbp), %rdx
	movw	112(%rdx), %si
	andw	$1, %si
	movzwl	%si, %ecx
	cmpl	-12(%rbp), %ecx
	je	.LBB3_14
# BB#13:                                # %if.then.15
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movw	%ax, %dx
	movw	112(%rcx), %si
	andw	$1, %dx
	andw	$-2, %si
	orw	%dx, %si
	movw	%si, 112(%rcx)
	movq	-8(%rbp), %rcx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_queue_resize
.LBB3_14:                               # %if.end.21
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gtk_wrap_box_set_homogeneous, .Lfunc_end3-gtk_wrap_box_set_homogeneous
	.cfi_endproc

	.globl	gtk_wrap_box_set_hspacing
	.align	16, 0x90
	.type	gtk_wrap_box_set_hspacing,@function
gtk_wrap_box_set_hspacing:              # @gtk_wrap_box_set_hspacing
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gtk_wrap_box_get_type
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
	movabsq	$.L__func__.gtk_wrap_box_set_hspacing, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_14
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	movq	-8(%rbp), %rax
	movzbl	114(%rax), %ecx
	cmpl	-12(%rbp), %ecx
	je	.LBB4_14
# BB#13:                                # %if.then.14
	movl	-12(%rbp), %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movb	%cl, 114(%rdx)
	movq	-8(%rbp), %rdx
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_queue_resize
.LBB4_14:                               # %if.end.19
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gtk_wrap_box_set_hspacing, .Lfunc_end4-gtk_wrap_box_set_hspacing
	.cfi_endproc

	.globl	gtk_wrap_box_set_vspacing
	.align	16, 0x90
	.type	gtk_wrap_box_set_vspacing,@function
gtk_wrap_box_set_vspacing:              # @gtk_wrap_box_set_vspacing
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
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gtk_wrap_box_get_type
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
	movabsq	$.L__func__.gtk_wrap_box_set_vspacing, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_14
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	movq	-8(%rbp), %rax
	movzbl	115(%rax), %ecx
	cmpl	-12(%rbp), %ecx
	je	.LBB5_14
# BB#13:                                # %if.then.14
	movl	-12(%rbp), %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movb	%cl, 115(%rdx)
	movq	-8(%rbp), %rdx
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_queue_resize
.LBB5_14:                               # %if.end.19
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gtk_wrap_box_set_vspacing, .Lfunc_end5-gtk_wrap_box_set_vspacing
	.cfi_endproc

	.globl	gtk_wrap_box_set_justify
	.align	16, 0x90
	.type	gtk_wrap_box_set_justify,@function
gtk_wrap_box_set_justify:               # @gtk_wrap_box_set_justify
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
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gtk_wrap_box_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB6_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB6_8
.LBB6_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB6_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB6_7
.LBB6_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB6_7:                                # %if.end
	jmp	.LBB6_8
.LBB6_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB6_10
# BB#9:                                 # %if.then.8
	jmp	.LBB6_11
.LBB6_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gtk_wrap_box_set_justify, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB6_19
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	jmp	.LBB6_13
.LBB6_13:                               # %do.body.11
	cmpl	$3, -12(%rbp)
	ja	.LBB6_15
# BB#14:                                # %if.then.13
	jmp	.LBB6_16
.LBB6_15:                               # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gtk_wrap_box_set_justify, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB6_19
.LBB6_16:                               # %if.end.15
	jmp	.LBB6_17
.LBB6_17:                               # %do.end.16
	movq	-8(%rbp), %rax
	movw	112(%rax), %cx
	shrw	$1, %cx
	andw	$15, %cx
	movzwl	%cx, %edx
	cmpl	-12(%rbp), %edx
	je	.LBB6_19
# BB#18:                                # %if.then.19
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movw	%ax, %dx
	movw	112(%rcx), %si
	andw	$15, %dx
	shlw	$1, %dx
	andw	$-31, %si
	orw	%dx, %si
	movw	%si, 112(%rcx)
	movq	-8(%rbp), %rcx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_queue_resize
.LBB6_19:                               # %if.end.25
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gtk_wrap_box_set_justify, .Lfunc_end6-gtk_wrap_box_set_justify
	.cfi_endproc

	.globl	gtk_wrap_box_set_line_justify
	.align	16, 0x90
	.type	gtk_wrap_box_set_line_justify,@function
gtk_wrap_box_set_line_justify:          # @gtk_wrap_box_set_line_justify
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gtk_wrap_box_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB7_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB7_8
.LBB7_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB7_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB7_7
.LBB7_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB7_7:                                # %if.end
	jmp	.LBB7_8
.LBB7_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB7_10
# BB#9:                                 # %if.then.8
	jmp	.LBB7_11
.LBB7_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gtk_wrap_box_set_line_justify, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB7_19
.LBB7_11:                               # %if.end.10
	jmp	.LBB7_12
.LBB7_12:                               # %do.end
	jmp	.LBB7_13
.LBB7_13:                               # %do.body.11
	cmpl	$3, -12(%rbp)
	ja	.LBB7_15
# BB#14:                                # %if.then.13
	jmp	.LBB7_16
.LBB7_15:                               # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gtk_wrap_box_set_line_justify, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB7_19
.LBB7_16:                               # %if.end.15
	jmp	.LBB7_17
.LBB7_17:                               # %do.end.16
	movq	-8(%rbp), %rax
	movw	112(%rax), %cx
	shrw	$5, %cx
	andw	$15, %cx
	movzwl	%cx, %edx
	cmpl	-12(%rbp), %edx
	je	.LBB7_19
# BB#18:                                # %if.then.19
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movw	%ax, %dx
	movw	112(%rcx), %si
	andw	$15, %dx
	shlw	$5, %dx
	andw	$-481, %si              # imm = 0xFFFFFFFFFFFFFE1F
	orw	%dx, %si
	movw	%si, 112(%rcx)
	movq	-8(%rbp), %rcx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_queue_resize
.LBB7_19:                               # %if.end.25
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gtk_wrap_box_set_line_justify, .Lfunc_end7-gtk_wrap_box_set_line_justify
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI8_0:
	.quad	4643211215818981376     # double 256
.LCPI8_1:
	.quad	4571153621781053440     # double 0.00390625
	.text
	.globl	gtk_wrap_box_set_aspect_ratio
	.align	16, 0x90
	.type	gtk_wrap_box_set_aspect_ratio,@function
gtk_wrap_box_set_aspect_ratio:          # @gtk_wrap_box_set_aspect_ratio
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movss	%xmm0, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gtk_wrap_box_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB8_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB8_8
.LBB8_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB8_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB8_7
.LBB8_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB8_7:                                # %if.end
	jmp	.LBB8_8
.LBB8_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB8_10
# BB#9:                                 # %if.then.8
	jmp	.LBB8_11
.LBB8_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gtk_wrap_box_set_aspect_ratio, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB8_20
.LBB8_11:                               # %if.end.10
	jmp	.LBB8_12
.LBB8_12:                               # %do.end
	movsd	.LCPI8_0, %xmm0         # xmm0 = mem[0],zero
	cvtss2sd	-12(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB8_14
# BB#13:                                # %cond.true
	movsd	.LCPI8_0, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
	jmp	.LBB8_18
.LBB8_14:                               # %cond.false
	movsd	.LCPI8_1, %xmm0         # xmm0 = mem[0],zero
	cvtss2sd	-12(%rbp), %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB8_16
# BB#15:                                # %cond.true.16
	movsd	.LCPI8_1, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
	jmp	.LBB8_17
.LBB8_16:                               # %cond.false.17
	cvtss2sd	-12(%rbp), %xmm0
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
.LBB8_17:                               # %cond.end
	movsd	-56(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
.LBB8_18:                               # %cond.end.19
	movsd	-48(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -12(%rbp)
	movq	-8(%rbp), %rax
	movss	128(%rax), %xmm0        # xmm0 = mem[0],zero,zero,zero
	ucomiss	-12(%rbp), %xmm0
	jne	.LBB8_19
	jp	.LBB8_19
	jmp	.LBB8_20
.LBB8_19:                               # %if.then.25
	movss	-12(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movq	-8(%rbp), %rax
	movss	%xmm0, 128(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_queue_resize
.LBB8_20:                               # %if.end.29
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gtk_wrap_box_set_aspect_ratio, .Lfunc_end8-gtk_wrap_box_set_aspect_ratio
	.cfi_endproc

	.globl	gtk_wrap_box_pack
	.align	16, 0x90
	.type	gtk_wrap_box_pack,@function
gtk_wrap_box_pack:                      # @gtk_wrap_box_pack
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movl	%r9d, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gtk_wrap_box_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB9_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB9_8
.LBB9_3:                                # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB9_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB9_7
.LBB9_6:                                # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB9_7:                                # %if.end
	jmp	.LBB9_8
.LBB9_8:                                # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB9_10
# BB#9:                                 # %if.then.8
	jmp	.LBB9_11
.LBB9_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gtk_wrap_box_pack, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB9_30
.LBB9_11:                               # %if.end.10
	jmp	.LBB9_12
.LBB9_12:                               # %do.end
	jmp	.LBB9_13
.LBB9_13:                               # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gtk_widget_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB9_15
# BB#14:                                # %if.then.20
	movl	$0, -76(%rbp)
	jmp	.LBB9_20
.LBB9_15:                               # %if.else.21
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_18
# BB#16:                                # %land.lhs.true.24
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB9_18
# BB#17:                                # %if.then.28
	movl	$1, -76(%rbp)
	jmp	.LBB9_19
.LBB9_18:                               # %if.else.29
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB9_19:                               # %if.end.31
	jmp	.LBB9_20
.LBB9_20:                               # %if.end.32
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB9_22
# BB#21:                                # %if.then.35
	jmp	.LBB9_23
.LBB9_22:                               # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gtk_wrap_box_pack, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB9_30
.LBB9_23:                               # %if.end.37
	jmp	.LBB9_24
.LBB9_24:                               # %do.end.38
	jmp	.LBB9_25
.LBB9_25:                               # %do.body.39
	movq	-16(%rbp), %rax
	cmpq	$0, 88(%rax)
	jne	.LBB9_27
# BB#26:                                # %if.then.41
	jmp	.LBB9_28
.LBB9_27:                               # %if.else.42
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gtk_wrap_box_pack, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB9_30
.LBB9_28:                               # %if.end.43
	jmp	.LBB9_29
.LBB9_29:                               # %do.end.44
	xorl	%eax, %eax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	movl	-28(%rbp), %r8d
	movl	-32(%rbp), %r9d
	movl	$0, (%rsp)
	movl	%eax, -84(%rbp)         # 4-byte Spill
	callq	gtk_wrap_box_pack_wrapped
.LBB9_30:                               # %return
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gtk_wrap_box_pack, .Lfunc_end9-gtk_wrap_box_pack
	.cfi_endproc

	.globl	gtk_wrap_box_pack_wrapped
	.align	16, 0x90
	.type	gtk_wrap_box_pack_wrapped,@function
gtk_wrap_box_pack_wrapped:              # @gtk_wrap_box_pack_wrapped
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
	subq	$160, %rsp
	movl	16(%rbp), %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movl	%r9d, -32(%rbp)
	movl	%eax, -36(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gtk_wrap_box_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB10_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB10_8
.LBB10_3:                               # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB10_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB10_6
# BB#5:                                 # %if.then.3
	movl	$1, -68(%rbp)
	jmp	.LBB10_7
.LBB10_6:                               # %if.else.4
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB10_7:                               # %if.end
	jmp	.LBB10_8
.LBB10_8:                               # %if.end.6
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB10_10
# BB#9:                                 # %if.then.8
	jmp	.LBB10_11
.LBB10_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gtk_wrap_box_pack_wrapped, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB10_42
.LBB10_11:                              # %if.end.10
	jmp	.LBB10_12
.LBB10_12:                              # %do.end
	jmp	.LBB10_13
.LBB10_13:                              # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gtk_widget_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB10_15
# BB#14:                                # %if.then.20
	movl	$0, -92(%rbp)
	jmp	.LBB10_20
.LBB10_15:                              # %if.else.21
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB10_18
# BB#16:                                # %land.lhs.true.24
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB10_18
# BB#17:                                # %if.then.28
	movl	$1, -92(%rbp)
	jmp	.LBB10_19
.LBB10_18:                              # %if.else.29
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB10_19:                              # %if.end.31
	jmp	.LBB10_20
.LBB10_20:                              # %if.end.32
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB10_22
# BB#21:                                # %if.then.35
	jmp	.LBB10_23
.LBB10_22:                              # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gtk_wrap_box_pack_wrapped, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB10_42
.LBB10_23:                              # %if.end.37
	jmp	.LBB10_24
.LBB10_24:                              # %do.end.38
	jmp	.LBB10_25
.LBB10_25:                              # %do.body.39
	movq	-16(%rbp), %rax
	cmpq	$0, 88(%rax)
	jne	.LBB10_27
# BB#26:                                # %if.then.41
	jmp	.LBB10_28
.LBB10_27:                              # %if.else.42
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gtk_wrap_box_pack_wrapped, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB10_42
.LBB10_28:                              # %if.end.43
	jmp	.LBB10_29
.LBB10_29:                              # %do.end.44
	movl	$24, %eax
	movl	%eax, %edi
	callq	g_slice_alloc
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	movq	-48(%rbp), %rdi
	movq	%rax, (%rdi)
	cmpl	$0, -20(%rbp)
	movl	%ecx, %esi
	cmovnel	%edx, %esi
	movq	-48(%rbp), %rax
	movb	%sil, %r8b
	movb	8(%rax), %r9b
	andb	$1, %r8b
	andb	$-2, %r9b
	orb	%r8b, %r9b
	movb	%r9b, 8(%rax)
	cmpl	$0, -24(%rbp)
	movl	%ecx, %esi
	cmovnel	%edx, %esi
	movq	-48(%rbp), %rax
	movb	%sil, %r8b
	movb	8(%rax), %r9b
	andb	$1, %r8b
	shlb	$1, %r8b
	andb	$-3, %r9b
	orb	%r8b, %r9b
	movb	%r9b, 8(%rax)
	cmpl	$0, -28(%rbp)
	movl	%ecx, %esi
	cmovnel	%edx, %esi
	movq	-48(%rbp), %rax
	movb	%sil, %r8b
	movb	8(%rax), %r9b
	andb	$1, %r8b
	shlb	$2, %r8b
	andb	$-5, %r9b
	orb	%r8b, %r9b
	movb	%r9b, 8(%rax)
	cmpl	$0, -32(%rbp)
	movl	%ecx, %esi
	cmovnel	%edx, %esi
	movq	-48(%rbp), %rax
	movb	%sil, %r8b
	movb	8(%rax), %r9b
	andb	$1, %r8b
	shlb	$3, %r8b
	andb	$-9, %r9b
	orb	%r8b, %r9b
	movb	%r9b, 8(%rax)
	cmpl	$0, -36(%rbp)
	cmovnel	%edx, %ecx
	movq	-48(%rbp), %rax
	movb	%cl, %r8b
	movb	8(%rax), %r9b
	andb	$1, %r8b
	shlb	$4, %r8b
	andb	$-17, %r9b
	orb	%r8b, %r9b
	movb	%r9b, 8(%rax)
	movq	-48(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-8(%rbp), %rax
	cmpq	$0, 120(%rax)
	je	.LBB10_34
# BB#30:                                # %if.then.84
	movq	-8(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, -104(%rbp)
.LBB10_31:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-104(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB10_33
# BB#32:                                # %while.body
                                        #   in Loop: Header=BB10_31 Depth=1
	movq	-104(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -104(%rbp)
	jmp	.LBB10_31
.LBB10_33:                              # %while.end
	movq	-48(%rbp), %rax
	movq	-104(%rbp), %rcx
	movq	%rax, 16(%rcx)
	jmp	.LBB10_35
.LBB10_34:                              # %if.else.91
	movq	-48(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 120(%rcx)
.LBB10_35:                              # %if.end.93
	movq	-8(%rbp), %rax
	movw	116(%rax), %cx
	addw	$1, %cx
	movw	%cx, 116(%rax)
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_widget_set_parent
	movq	-8(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_object_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	24(%rax), %edx
	andl	$64, %edx
	cmpl	$0, %edx
	je	.LBB10_37
# BB#36:                                # %if.then.99
	movq	-16(%rbp), %rdi
	callq	gtk_widget_realize
.LBB10_37:                              # %if.end.100
	movq	-8(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_object_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	24(%rax), %ecx
	andl	$256, %ecx              # imm = 0x100
	cmpl	$0, %ecx
	je	.LBB10_42
# BB#38:                                # %land.lhs.true.106
	movq	-16(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_object_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	24(%rax), %ecx
	andl	$256, %ecx              # imm = 0x100
	cmpl	$0, %ecx
	je	.LBB10_42
# BB#39:                                # %if.then.112
	movq	-8(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_object_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	24(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	je	.LBB10_41
# BB#40:                                # %if.then.118
	movq	-16(%rbp), %rdi
	callq	gtk_widget_map
.LBB10_41:                              # %if.end.119
	movq	-16(%rbp), %rdi
	callq	gtk_widget_queue_resize
.LBB10_42:                              # %if.end.120
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gtk_wrap_box_pack_wrapped, .Lfunc_end10-gtk_wrap_box_pack_wrapped
	.cfi_endproc

	.globl	gtk_wrap_box_reorder_child
	.align	16, 0x90
	.type	gtk_wrap_box_reorder_child,@function
gtk_wrap_box_reorder_child:             # @gtk_wrap_box_reorder_child
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	$0, -40(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gtk_wrap_box_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB11_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB11_8
.LBB11_3:                               # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB11_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB11_7
.LBB11_6:                               # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB11_7:                               # %if.end
	jmp	.LBB11_8
.LBB11_8:                               # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB11_10
# BB#9:                                 # %if.then.8
	jmp	.LBB11_11
.LBB11_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gtk_wrap_box_reorder_child, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB11_50
.LBB11_11:                              # %if.end.10
	jmp	.LBB11_12
.LBB11_12:                              # %do.end
	jmp	.LBB11_13
.LBB11_13:                              # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gtk_widget_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB11_15
# BB#14:                                # %if.then.20
	movl	$0, -84(%rbp)
	jmp	.LBB11_20
.LBB11_15:                              # %if.else.21
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_18
# BB#16:                                # %land.lhs.true.24
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB11_18
# BB#17:                                # %if.then.28
	movl	$1, -84(%rbp)
	jmp	.LBB11_19
.LBB11_18:                              # %if.else.29
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB11_19:                              # %if.end.31
	jmp	.LBB11_20
.LBB11_20:                              # %if.end.32
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB11_22
# BB#21:                                # %if.then.35
	jmp	.LBB11_23
.LBB11_22:                              # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gtk_wrap_box_reorder_child, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB11_50
.LBB11_23:                              # %if.end.37
	jmp	.LBB11_24
.LBB11_24:                              # %do.end.38
	movq	-8(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB11_25:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB11_30
# BB#26:                                # %for.body
                                        #   in Loop: Header=BB11_25 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-16(%rbp), %rax
	jne	.LBB11_28
# BB#27:                                # %if.then.41
	jmp	.LBB11_30
.LBB11_28:                              # %if.end.42
                                        #   in Loop: Header=BB11_25 Depth=1
	jmp	.LBB11_29
.LBB11_29:                              # %for.inc
                                        #   in Loop: Header=BB11_25 Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB11_25
.LBB11_30:                              # %for.end
	cmpq	$0, -32(%rbp)
	je	.LBB11_50
# BB#31:                                # %land.lhs.true.44
	movq	-8(%rbp), %rax
	movq	120(%rax), %rax
	cmpq	$0, 16(%rax)
	je	.LBB11_50
# BB#32:                                # %if.then.48
	cmpq	$0, -40(%rbp)
	je	.LBB11_34
# BB#33:                                # %if.then.52
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, 16(%rcx)
	jmp	.LBB11_35
.LBB11_34:                              # %if.else.55
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 120(%rcx)
.LBB11_35:                              # %if.end.58
	movq	$0, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, -96(%rbp)
.LBB11_36:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -20(%rbp)
	movb	%cl, -97(%rbp)          # 1-byte Spill
	je	.LBB11_38
# BB#37:                                # %land.rhs
                                        #   in Loop: Header=BB11_36 Depth=1
	movq	-96(%rbp), %rax
	cmpq	$0, 16(%rax)
	setne	%cl
	movb	%cl, -97(%rbp)          # 1-byte Spill
.LBB11_38:                              # %land.end
                                        #   in Loop: Header=BB11_36 Depth=1
	movb	-97(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB11_39
	jmp	.LBB11_40
.LBB11_39:                              # %while.body
                                        #   in Loop: Header=BB11_36 Depth=1
	movl	-20(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -20(%rbp)
	movq	-96(%rbp), %rcx
	movq	%rcx, -40(%rbp)
	movq	-40(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	%rcx, -96(%rbp)
	jmp	.LBB11_36
.LBB11_40:                              # %while.end
	cmpl	$0, -20(%rbp)
	je	.LBB11_42
# BB#41:                                # %if.then.65
	movq	-32(%rbp), %rax
	movq	-96(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	-32(%rbp), %rax
	movq	$0, 16(%rax)
	jmp	.LBB11_46
.LBB11_42:                              # %if.else.68
	movq	-96(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 16(%rcx)
	cmpq	$0, -40(%rbp)
	je	.LBB11_44
# BB#43:                                # %if.then.71
	movq	-32(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, 16(%rcx)
	jmp	.LBB11_45
.LBB11_44:                              # %if.else.73
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 120(%rcx)
.LBB11_45:                              # %if.end.75
	jmp	.LBB11_46
.LBB11_46:                              # %if.end.76
	movq	-16(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_object_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	24(%rax), %ecx
	andl	$256, %ecx              # imm = 0x100
	cmpl	$0, %ecx
	je	.LBB11_49
# BB#47:                                # %land.lhs.true.80
	movq	-8(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_object_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	24(%rax), %ecx
	andl	$256, %ecx              # imm = 0x100
	cmpl	$0, %ecx
	je	.LBB11_49
# BB#48:                                # %if.then.86
	movq	-16(%rbp), %rdi
	callq	gtk_widget_queue_resize
.LBB11_49:                              # %if.end.87
	jmp	.LBB11_50
.LBB11_50:                              # %if.end.88
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gtk_wrap_box_reorder_child, .Lfunc_end11-gtk_wrap_box_reorder_child
	.cfi_endproc

	.globl	gtk_wrap_box_query_child_packing
	.align	16, 0x90
	.type	gtk_wrap_box_query_child_packing,@function
gtk_wrap_box_query_child_packing:       # @gtk_wrap_box_query_child_packing
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
	subq	$112, %rsp
	movq	16(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	%rax, -56(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gtk_wrap_box_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB12_3
# BB#2:                                 # %if.then
	movl	$0, -84(%rbp)
	jmp	.LBB12_8
.LBB12_3:                               # %if.else
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB12_6
# BB#4:                                 # %land.lhs.true
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB12_6
# BB#5:                                 # %if.then.3
	movl	$1, -84(%rbp)
	jmp	.LBB12_7
.LBB12_6:                               # %if.else.4
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB12_7:                               # %if.end
	jmp	.LBB12_8
.LBB12_8:                               # %if.end.6
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB12_10
# BB#9:                                 # %if.then.8
	jmp	.LBB12_11
.LBB12_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gtk_wrap_box_query_child_packing, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB12_42
.LBB12_11:                              # %if.end.10
	jmp	.LBB12_12
.LBB12_12:                              # %do.end
	jmp	.LBB12_13
.LBB12_13:                              # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -96(%rbp)
	callq	gtk_widget_get_type
	movq	%rax, -104(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.LBB12_15
# BB#14:                                # %if.then.20
	movl	$0, -108(%rbp)
	jmp	.LBB12_20
.LBB12_15:                              # %if.else.21
	movq	-96(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB12_18
# BB#16:                                # %land.lhs.true.24
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-104(%rbp), %rax
	jne	.LBB12_18
# BB#17:                                # %if.then.28
	movl	$1, -108(%rbp)
	jmp	.LBB12_19
.LBB12_18:                              # %if.else.29
	movq	-96(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -108(%rbp)
.LBB12_19:                              # %if.end.31
	jmp	.LBB12_20
.LBB12_20:                              # %if.end.32
	movl	-108(%rbp), %eax
	movl	%eax, -112(%rbp)
	cmpl	$0, -112(%rbp)
	je	.LBB12_22
# BB#21:                                # %if.then.35
	jmp	.LBB12_23
.LBB12_22:                              # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gtk_wrap_box_query_child_packing, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB12_42
.LBB12_23:                              # %if.end.37
	jmp	.LBB12_24
.LBB12_24:                              # %do.end.38
	movq	-8(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, -64(%rbp)
.LBB12_25:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -64(%rbp)
	je	.LBB12_30
# BB#26:                                # %for.body
                                        #   in Loop: Header=BB12_25 Depth=1
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-16(%rbp), %rax
	jne	.LBB12_28
# BB#27:                                # %if.then.41
	jmp	.LBB12_30
.LBB12_28:                              # %if.end.42
                                        #   in Loop: Header=BB12_25 Depth=1
	jmp	.LBB12_29
.LBB12_29:                              # %for.inc
                                        #   in Loop: Header=BB12_25 Depth=1
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB12_25
.LBB12_30:                              # %for.end
	cmpq	$0, -64(%rbp)
	je	.LBB12_42
# BB#31:                                # %if.then.44
	cmpq	$0, -24(%rbp)
	je	.LBB12_33
# BB#32:                                # %if.then.46
	movq	-64(%rbp), %rax
	movb	8(%rax), %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
.LBB12_33:                              # %if.end.48
	cmpq	$0, -32(%rbp)
	je	.LBB12_35
# BB#34:                                # %if.then.50
	movq	-64(%rbp), %rax
	movb	8(%rax), %cl
	shrb	$1, %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movq	-32(%rbp), %rax
	movl	%edx, (%rax)
.LBB12_35:                              # %if.end.55
	cmpq	$0, -40(%rbp)
	je	.LBB12_37
# BB#36:                                # %if.then.57
	movq	-64(%rbp), %rax
	movb	8(%rax), %cl
	shrb	$2, %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
.LBB12_37:                              # %if.end.63
	cmpq	$0, -48(%rbp)
	je	.LBB12_39
# BB#38:                                # %if.then.65
	movq	-64(%rbp), %rax
	movb	8(%rax), %cl
	shrb	$3, %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movq	-48(%rbp), %rax
	movl	%edx, (%rax)
.LBB12_39:                              # %if.end.71
	cmpq	$0, -56(%rbp)
	je	.LBB12_41
# BB#40:                                # %if.then.73
	movq	-64(%rbp), %rax
	movb	8(%rax), %cl
	shrb	$4, %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movq	-56(%rbp), %rax
	movl	%edx, (%rax)
.LBB12_41:                              # %if.end.79
	jmp	.LBB12_42
.LBB12_42:                              # %if.end.80
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gtk_wrap_box_query_child_packing, .Lfunc_end12-gtk_wrap_box_query_child_packing
	.cfi_endproc

	.globl	gtk_wrap_box_set_child_packing
	.align	16, 0x90
	.type	gtk_wrap_box_set_child_packing,@function
gtk_wrap_box_set_child_packing:         # @gtk_wrap_box_set_child_packing
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
	subq	$112, %rsp
	movl	16(%rbp), %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movl	%r9d, -32(%rbp)
	movl	%eax, -36(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gtk_wrap_box_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB13_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB13_8
.LBB13_3:                               # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB13_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB13_6
# BB#5:                                 # %if.then.3
	movl	$1, -68(%rbp)
	jmp	.LBB13_7
.LBB13_6:                               # %if.else.4
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB13_7:                               # %if.end
	jmp	.LBB13_8
.LBB13_8:                               # %if.end.6
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB13_10
# BB#9:                                 # %if.then.8
	jmp	.LBB13_11
.LBB13_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gtk_wrap_box_set_child_packing, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB13_40
.LBB13_11:                              # %if.end.10
	jmp	.LBB13_12
.LBB13_12:                              # %do.end
	jmp	.LBB13_13
.LBB13_13:                              # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gtk_widget_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB13_15
# BB#14:                                # %if.then.20
	movl	$0, -92(%rbp)
	jmp	.LBB13_20
.LBB13_15:                              # %if.else.21
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB13_18
# BB#16:                                # %land.lhs.true.24
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB13_18
# BB#17:                                # %if.then.28
	movl	$1, -92(%rbp)
	jmp	.LBB13_19
.LBB13_18:                              # %if.else.29
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB13_19:                              # %if.end.31
	jmp	.LBB13_20
.LBB13_20:                              # %if.end.32
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB13_22
# BB#21:                                # %if.then.35
	jmp	.LBB13_23
.LBB13_22:                              # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gtk_wrap_box_set_child_packing, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB13_40
.LBB13_23:                              # %if.end.37
	jmp	.LBB13_24
.LBB13_24:                              # %do.end.38
	cmpl	$0, -20(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -20(%rbp)
	cmpl	$0, -24(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -24(%rbp)
	cmpl	$0, -28(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -28(%rbp)
	cmpl	$0, -32(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -32(%rbp)
	cmpl	$0, -36(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -36(%rbp)
	movq	-8(%rbp), %rdx
	movq	120(%rdx), %rdx
	movq	%rdx, -48(%rbp)
.LBB13_25:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB13_30
# BB#26:                                # %for.body
                                        #   in Loop: Header=BB13_25 Depth=1
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-16(%rbp), %rax
	jne	.LBB13_28
# BB#27:                                # %if.then.51
	jmp	.LBB13_30
.LBB13_28:                              # %if.end.52
                                        #   in Loop: Header=BB13_25 Depth=1
	jmp	.LBB13_29
.LBB13_29:                              # %for.inc
                                        #   in Loop: Header=BB13_25 Depth=1
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB13_25
.LBB13_30:                              # %for.end
	cmpq	$0, -48(%rbp)
	je	.LBB13_40
# BB#31:                                # %land.lhs.true.54
	movq	-48(%rbp), %rax
	movb	8(%rax), %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	cmpl	-20(%rbp), %edx
	jne	.LBB13_36
# BB#32:                                # %lor.lhs.false
	movq	-48(%rbp), %rax
	movb	8(%rax), %cl
	shrb	$2, %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	cmpl	-28(%rbp), %edx
	jne	.LBB13_36
# BB#33:                                # %lor.lhs.false.64
	movq	-48(%rbp), %rax
	movb	8(%rax), %cl
	shrb	$1, %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	cmpl	-24(%rbp), %edx
	jne	.LBB13_36
# BB#34:                                # %lor.lhs.false.72
	movq	-48(%rbp), %rax
	movb	8(%rax), %cl
	shrb	$3, %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	cmpl	-32(%rbp), %edx
	jne	.LBB13_36
# BB#35:                                # %lor.lhs.false.80
	movq	-48(%rbp), %rax
	movb	8(%rax), %cl
	shrb	$4, %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	cmpl	-36(%rbp), %edx
	je	.LBB13_40
.LBB13_36:                              # %if.then.88
	movl	-20(%rbp), %eax
	movq	-48(%rbp), %rcx
	movb	%al, %dl
	movb	8(%rcx), %sil
	andb	$1, %dl
	andb	$-2, %sil
	orb	%dl, %sil
	movb	%sil, 8(%rcx)
	movl	-24(%rbp), %eax
	movq	-48(%rbp), %rcx
	movb	%al, %dl
	movb	8(%rcx), %sil
	andb	$1, %dl
	shlb	$1, %dl
	andb	$-3, %sil
	orb	%dl, %sil
	movb	%sil, 8(%rcx)
	movl	-28(%rbp), %eax
	movq	-48(%rbp), %rcx
	movb	%al, %dl
	movb	8(%rcx), %sil
	andb	$1, %dl
	shlb	$2, %dl
	andb	$-5, %sil
	orb	%dl, %sil
	movb	%sil, 8(%rcx)
	movl	-32(%rbp), %eax
	movq	-48(%rbp), %rcx
	movb	%al, %dl
	movb	8(%rcx), %sil
	andb	$1, %dl
	shlb	$3, %dl
	andb	$-9, %sil
	orb	%dl, %sil
	movb	%sil, 8(%rcx)
	movl	-36(%rbp), %eax
	movq	-48(%rbp), %rcx
	movb	%al, %dl
	movb	8(%rcx), %sil
	andb	$1, %dl
	shlb	$4, %dl
	andb	$-17, %sil
	orb	%dl, %sil
	movb	%sil, 8(%rcx)
	movq	-16(%rbp), %rcx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	callq	gtk_object_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	24(%rax), %r8d
	andl	$256, %r8d              # imm = 0x100
	cmpl	$0, %r8d
	je	.LBB13_39
# BB#37:                                # %land.lhs.true.123
	movq	-8(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_object_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	24(%rax), %ecx
	andl	$256, %ecx              # imm = 0x100
	cmpl	$0, %ecx
	je	.LBB13_39
# BB#38:                                # %if.then.130
	movq	-16(%rbp), %rdi
	callq	gtk_widget_queue_resize
.LBB13_39:                              # %if.end.131
	jmp	.LBB13_40
.LBB13_40:                              # %if.end.132
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gtk_wrap_box_set_child_packing, .Lfunc_end13-gtk_wrap_box_set_child_packing
	.cfi_endproc

	.globl	gtk_wrap_box_query_line_lengths
	.align	16, 0x90
	.type	gtk_wrap_box_query_line_lengths,@function
gtk_wrap_box_query_line_lengths:        # @gtk_wrap_box_query_line_lengths
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
	subq	$176, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	$0, -32(%rbp)
	movl	$0, -84(%rbp)
	movq	$0, -96(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB14_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movl	$0, (%rax)
.LBB14_2:                               # %if.end
	jmp	.LBB14_3
.LBB14_3:                               # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -104(%rbp)
	callq	gtk_wrap_box_get_type
	movq	%rax, -112(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.LBB14_5
# BB#4:                                 # %if.then.2
	movl	$0, -116(%rbp)
	jmp	.LBB14_10
.LBB14_5:                               # %if.else
	movq	-104(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB14_8
# BB#6:                                 # %land.lhs.true
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-112(%rbp), %rax
	jne	.LBB14_8
# BB#7:                                 # %if.then.5
	movl	$1, -116(%rbp)
	jmp	.LBB14_9
.LBB14_8:                               # %if.else.6
	movq	-104(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -116(%rbp)
.LBB14_9:                               # %if.end.8
	jmp	.LBB14_10
.LBB14_10:                              # %if.end.9
	movl	-116(%rbp), %eax
	movl	%eax, -120(%rbp)
	cmpl	$0, -120(%rbp)
	je	.LBB14_12
# BB#11:                                # %if.then.11
	jmp	.LBB14_13
.LBB14_12:                              # %if.else.12
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gtk_wrap_box_query_line_lengths, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB14_26
.LBB14_13:                              # %if.end.13
	jmp	.LBB14_14
.LBB14_14:                              # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	addq	$64, %rax
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	movl	104(%rax), %edx
	andl	$65535, %edx            # imm = 0xFFFF
	movl	%edx, -80(%rbp)
	movq	-56(%rbp), %rax
	movl	(%rax), %edx
	addl	-80(%rbp), %edx
	movl	%edx, -48(%rbp)
	movq	-56(%rbp), %rax
	movl	4(%rax), %edx
	addl	-80(%rbp), %edx
	movl	%edx, -44(%rbp)
	movq	-56(%rbp), %rax
	movl	8(%rax), %edx
	movl	-80(%rbp), %r8d
	shll	$1, %r8d
	subl	%r8d, %edx
	cmpl	%edx, %ecx
	jbe	.LBB14_16
# BB#15:                                # %cond.true
	movl	$1, %eax
	movl	%eax, -148(%rbp)        # 4-byte Spill
	jmp	.LBB14_17
.LBB14_16:                              # %cond.false
	movq	-56(%rbp), %rax
	movl	8(%rax), %ecx
	movl	-80(%rbp), %edx
	shll	$1, %edx
	subl	%edx, %ecx
	movl	%ecx, -148(%rbp)        # 4-byte Spill
.LBB14_17:                              # %cond.end
	movl	-148(%rbp), %eax        # 4-byte Reload
	movl	$1, %ecx
	movl	%eax, -40(%rbp)
	movq	-56(%rbp), %rdx
	movl	12(%rdx), %eax
	movl	-80(%rbp), %esi
	shll	$1, %esi
	subl	%esi, %eax
	cmpl	%eax, %ecx
	jbe	.LBB14_19
# BB#18:                                # %cond.true.30
	movl	$1, %eax
	movl	%eax, -152(%rbp)        # 4-byte Spill
	jmp	.LBB14_20
.LBB14_19:                              # %cond.false.31
	movq	-56(%rbp), %rax
	movl	12(%rax), %ecx
	movl	-80(%rbp), %edx
	shll	$1, %edx
	subl	%edx, %ecx
	movl	%ecx, -152(%rbp)        # 4-byte Spill
.LBB14_20:                              # %cond.end.35
	movl	-152(%rbp), %eax        # 4-byte Reload
	leaq	-32(%rbp), %rsi
	leaq	-48(%rbp), %rdx
	leaq	-76(%rbp), %rcx
	leaq	-60(%rbp), %r8
	movl	%eax, -36(%rbp)
	movq	-16(%rbp), %rdi
	movq	120(%rdi), %rdi
	movq	%rdi, -32(%rbp)
	movq	-16(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	824(%rdi), %rdi
	movq	-16(%rbp), %r9
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movq	-160(%rbp), %r9         # 8-byte Reload
	callq	*%r9
	movq	%rax, -72(%rbp)
.LBB14_21:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -72(%rbp)
	je	.LBB14_23
# BB#22:                                # %while.body
                                        #   in Loop: Header=BB14_21 Depth=1
	movl	$4, %eax
	movl	%eax, %edx
	movl	-84(%rbp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -84(%rbp)
	movl	%eax, -124(%rbp)
	movq	-96(%rbp), %rsi
	movl	-84(%rbp), %eax
	movl	%eax, %edi
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movq	%rsi, %rdi
	movq	-168(%rbp), %rsi        # 8-byte Reload
	callq	g_realloc_n
	movq	%rax, -96(%rbp)
	movq	-72(%rbp), %rdi
	callq	g_slist_length
	movl	-124(%rbp), %ecx
	movl	%ecx, %edx
	movq	-96(%rbp), %rsi
	movl	%eax, (%rsi,%rdx,4)
	movq	-72(%rbp), %rdi
	callq	g_slist_free
	leaq	-32(%rbp), %rsi
	leaq	-48(%rbp), %rdx
	leaq	-76(%rbp), %rcx
	leaq	-60(%rbp), %r8
	movq	-16(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	824(%rdi), %rdi
	movq	-16(%rbp), %r9
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movq	-176(%rbp), %r9         # 8-byte Reload
	callq	*%r9
	movq	%rax, -72(%rbp)
	jmp	.LBB14_21
.LBB14_23:                              # %while.end
	cmpq	$0, -24(%rbp)
	je	.LBB14_25
# BB#24:                                # %if.then.48
	movl	-84(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB14_25:                              # %if.end.49
	movq	-96(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB14_26:                              # %return
	movq	-8(%rbp), %rax
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gtk_wrap_box_query_line_lengths, .Lfunc_end14-gtk_wrap_box_query_line_lengths
	.cfi_endproc

	.align	16, 0x90
	.type	gtk_wrap_box_set_property,@function
gtk_wrap_box_set_property:              # @gtk_wrap_box_set_property
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp50:
	.cfi_def_cfa_offset 16
.Ltmp51:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp52:
	.cfi_def_cfa_register %rbp
	subq	$192, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gtk_wrap_box_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	decl	%r8d
	movl	%r8d, %eax
	subl	$7, %r8d
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movl	%r8d, -84(%rbp)         # 4-byte Spill
	ja	.LBB15_10
# BB#14:                                # %entry
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	.LJTI15_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB15_1:                               # %sw.bb
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	g_value_get_boolean
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movl	%eax, %esi
	callq	gtk_wrap_box_set_homogeneous
	jmp	.LBB15_13
.LBB15_2:                               # %sw.bb.3
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_value_get_enum
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %esi
	callq	gtk_wrap_box_set_justify
	jmp	.LBB15_13
.LBB15_3:                               # %sw.bb.5
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_value_get_enum
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %esi
	callq	gtk_wrap_box_set_line_justify
	jmp	.LBB15_13
.LBB15_4:                               # %sw.bb.7
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_value_get_uint
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %esi
	callq	gtk_wrap_box_set_hspacing
	jmp	.LBB15_13
.LBB15_5:                               # %sw.bb.9
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_value_get_uint
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %esi
	callq	gtk_wrap_box_set_vspacing
	jmp	.LBB15_13
.LBB15_6:                               # %sw.bb.11
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_value_get_float
	movq	-136(%rbp), %rdi        # 8-byte Reload
	callq	gtk_wrap_box_set_aspect_ratio
	jmp	.LBB15_13
.LBB15_7:                               # %sw.bb.13
	movq	-40(%rbp), %rax
	movl	132(%rax), %ecx
	movq	-24(%rbp), %rdi
	movl	%ecx, -140(%rbp)        # 4-byte Spill
	callq	g_value_get_uint
	movl	-140(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	je	.LBB15_9
# BB#8:                                 # %if.then
	movq	-40(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_queue_resize
.LBB15_9:                               # %if.end
	jmp	.LBB15_13
.LBB15_10:                              # %sw.default
	jmp	.LBB15_11
.LBB15_11:                              # %do.body
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
	movl	%r8d, -156(%rbp)        # 4-byte Spill
	movq	%r9, -168(%rbp)         # 8-byte Spill
	callq	g_type_name
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.21, %rdi
	movabsq	$.L.str.22, %rsi
	movl	$318, %edx              # imm = 0x13E
	movabsq	$.L.str.23, %rcx
	movl	-156(%rbp), %r8d        # 4-byte Reload
	movq	-168(%rbp), %r9         # 8-byte Reload
	movq	-176(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#12:                                # %do.end
	jmp	.LBB15_13
.LBB15_13:                              # %sw.epilog
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gtk_wrap_box_set_property, .Lfunc_end15-gtk_wrap_box_set_property
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI15_0:
	.quad	.LBB15_1
	.quad	.LBB15_2
	.quad	.LBB15_4
	.quad	.LBB15_5
	.quad	.LBB15_3
	.quad	.LBB15_6
	.quad	.LBB15_10
	.quad	.LBB15_7

	.text
	.align	16, 0x90
	.type	gtk_wrap_box_get_property,@function
gtk_wrap_box_get_property:              # @gtk_wrap_box_get_property
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp53:
	.cfi_def_cfa_offset 16
.Ltmp54:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp55:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gtk_wrap_box_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movl	-12(%rbp), %r8d
	decl	%r8d
	movl	%r8d, %eax
	subl	$7, %r8d
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movl	%r8d, -100(%rbp)        # 4-byte Spill
	ja	.LBB16_9
# BB#13:                                # %entry
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	.LJTI16_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB16_1:                               # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movw	112(%rax), %cx
	andw	$1, %cx
	movzwl	%cx, %esi
	callq	g_value_set_boolean
	jmp	.LBB16_12
.LBB16_2:                               # %sw.bb.4
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movw	112(%rax), %cx
	shrw	$1, %cx
	andw	$15, %cx
	movzwl	%cx, %esi
	callq	g_value_set_enum
	jmp	.LBB16_12
.LBB16_3:                               # %sw.bb.8
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movw	112(%rax), %cx
	shrw	$5, %cx
	andw	$15, %cx
	movzwl	%cx, %esi
	callq	g_value_set_enum
	jmp	.LBB16_12
.LBB16_4:                               # %sw.bb.13
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movzbl	114(%rax), %esi
	callq	g_value_set_uint
	jmp	.LBB16_12
.LBB16_5:                               # %sw.bb.14
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movzbl	115(%rax), %esi
	callq	g_value_set_uint
	jmp	.LBB16_12
.LBB16_6:                               # %sw.bb.16
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movss	128(%rax), %xmm0        # xmm0 = mem[0],zero,zero,zero
	callq	g_value_set_float
	jmp	.LBB16_12
.LBB16_7:                               # %sw.bb.17
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rax
	cvtsi2ssl	72(%rax), %xmm0
	movq	-48(%rbp), %rax
	cvtsi2ssl	76(%rax), %xmm1
	divss	%xmm1, %xmm0
	callq	g_value_set_float
	jmp	.LBB16_12
.LBB16_8:                               # %sw.bb.21
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	132(%rax), %esi
	callq	g_value_set_uint
	jmp	.LBB16_12
.LBB16_9:                               # %sw.default
	jmp	.LBB16_10
.LBB16_10:                              # %do.body
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
	movl	%r8d, -104(%rbp)        # 4-byte Spill
	movq	%r9, -112(%rbp)         # 8-byte Spill
	callq	g_type_name
	movq	-56(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.21, %rdi
	movabsq	$.L.str.22, %rsi
	movl	$360, %edx              # imm = 0x168
	movabsq	$.L.str.23, %rcx
	movl	-104(%rbp), %r8d        # 4-byte Reload
	movq	-112(%rbp), %r9         # 8-byte Reload
	movq	-120(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#11:                                # %do.end
	jmp	.LBB16_12
.LBB16_12:                              # %sw.epilog
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gtk_wrap_box_get_property, .Lfunc_end16-gtk_wrap_box_get_property
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI16_0:
	.quad	.LBB16_1
	.quad	.LBB16_2
	.quad	.LBB16_4
	.quad	.LBB16_5
	.quad	.LBB16_3
	.quad	.LBB16_6
	.quad	.LBB16_7
	.quad	.LBB16_8

	.text
	.align	16, 0x90
	.type	gtk_wrap_box_map,@function
gtk_wrap_box_map:                       # @gtk_wrap_box_map
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp56:
	.cfi_def_cfa_offset 16
.Ltmp57:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp58:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gtk_wrap_box_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_object_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	24(%rax), %ecx
	orl	$128, %ecx
	movl	%ecx, 24(%rax)
# BB#2:                                 # %do.end
	movq	-16(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, -24(%rbp)
.LBB17_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB17_9
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB17_3 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_object_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	24(%rax), %ecx
	andl	$256, %ecx              # imm = 0x100
	cmpl	$0, %ecx
	je	.LBB17_7
# BB#5:                                 # %land.lhs.true
                                        #   in Loop: Header=BB17_3 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_object_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	24(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB17_7
# BB#6:                                 # %if.then
                                        #   in Loop: Header=BB17_3 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	callq	gtk_widget_map
.LBB17_7:                               # %if.end
                                        #   in Loop: Header=BB17_3 Depth=1
	jmp	.LBB17_8
.LBB17_8:                               # %for.inc
                                        #   in Loop: Header=BB17_3 Depth=1
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB17_3
.LBB17_9:                               # %for.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gtk_wrap_box_map, .Lfunc_end17-gtk_wrap_box_map
	.cfi_endproc

	.align	16, 0x90
	.type	gtk_wrap_box_unmap,@function
gtk_wrap_box_unmap:                     # @gtk_wrap_box_unmap
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp59:
	.cfi_def_cfa_offset 16
.Ltmp60:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp61:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gtk_wrap_box_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_object_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	24(%rax), %ecx
	andl	$-129, %ecx
	movl	%ecx, 24(%rax)
# BB#2:                                 # %do.end
	movq	-16(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, -24(%rbp)
.LBB18_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB18_9
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB18_3 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_object_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	24(%rax), %ecx
	andl	$256, %ecx              # imm = 0x100
	cmpl	$0, %ecx
	je	.LBB18_7
# BB#5:                                 # %land.lhs.true
                                        #   in Loop: Header=BB18_3 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_object_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	24(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	je	.LBB18_7
# BB#6:                                 # %if.then
                                        #   in Loop: Header=BB18_3 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	callq	gtk_widget_unmap
.LBB18_7:                               # %if.end
                                        #   in Loop: Header=BB18_3 Depth=1
	jmp	.LBB18_8
.LBB18_8:                               # %for.inc
                                        #   in Loop: Header=BB18_3 Depth=1
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB18_3
.LBB18_9:                               # %for.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gtk_wrap_box_unmap, .Lfunc_end18-gtk_wrap_box_unmap
	.cfi_endproc

	.align	16, 0x90
	.type	gtk_wrap_box_expose,@function
gtk_wrap_box_expose:                    # @gtk_wrap_box_expose
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp62:
	.cfi_def_cfa_offset 16
.Ltmp63:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp64:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	parent_class, %rsi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	392(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gtk_wrap_box_expose, .Lfunc_end19-gtk_wrap_box_expose
	.cfi_endproc

	.align	16, 0x90
	.type	gtk_wrap_box_add,@function
gtk_wrap_box_add:                       # @gtk_wrap_box_add
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp65:
	.cfi_def_cfa_offset 16
.Ltmp66:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp67:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	callq	gtk_wrap_box_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -28(%rbp)         # 4-byte Spill
	movl	%ecx, %edx
	movl	-28(%rbp), %r8d         # 4-byte Reload
	movl	%ecx, -32(%rbp)         # 4-byte Spill
	movl	%r8d, %ecx
	movl	-32(%rbp), %r8d         # 4-byte Reload
	movl	-28(%rbp), %r9d         # 4-byte Reload
	callq	gtk_wrap_box_pack
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gtk_wrap_box_add, .Lfunc_end20-gtk_wrap_box_add
	.cfi_endproc

	.align	16, 0x90
	.type	gtk_wrap_box_remove,@function
gtk_wrap_box_remove:                    # @gtk_wrap_box_remove
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp68:
	.cfi_def_cfa_offset 16
.Ltmp69:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp70:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	gtk_wrap_box_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	$0, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB21_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB21_12
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB21_1 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-16(%rbp), %rax
	jne	.LBB21_11
# BB#3:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_object_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	24(%rax), %ecx
	andl	$256, %ecx              # imm = 0x100
	cmpl	$0, %ecx
	setne	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	movl	%ecx, -44(%rbp)
	movq	-16(%rbp), %rdi
	callq	gtk_widget_unparent
	cmpq	$0, -40(%rbp)
	je	.LBB21_5
# BB#4:                                 # %if.then.7
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, 16(%rcx)
	jmp	.LBB21_6
.LBB21_5:                               # %if.else
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 120(%rcx)
.LBB21_6:                               # %if.end
	jmp	.LBB21_7
.LBB21_7:                               # %do.body
	movl	$24, %eax
	movl	%eax, %edi
	movq	-32(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1
# BB#8:                                 # %do.end
	movq	-24(%rbp), %rax
	movw	116(%rax), %cx
	addw	$-1, %cx
	movw	%cx, 116(%rax)
	cmpl	$0, -44(%rbp)
	je	.LBB21_10
# BB#9:                                 # %if.then.12
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_queue_resize
.LBB21_10:                              # %if.end.15
	jmp	.LBB21_12
.LBB21_11:                              # %if.end.16
                                        #   in Loop: Header=BB21_1 Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB21_1
.LBB21_12:                              # %while.end
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gtk_wrap_box_remove, .Lfunc_end21-gtk_wrap_box_remove
	.cfi_endproc

	.align	16, 0x90
	.type	gtk_wrap_box_forall,@function
gtk_wrap_box_forall:                    # @gtk_wrap_box_forall
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp71:
	.cfi_def_cfa_offset 16
.Ltmp72:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp73:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	callq	gtk_wrap_box_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, -48(%rbp)
.LBB22_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB22_3
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB22_1 Depth=1
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rax
	movq	-56(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	*%rax
	jmp	.LBB22_1
.LBB22_3:                               # %while.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gtk_wrap_box_forall, .Lfunc_end22-gtk_wrap_box_forall
	.cfi_endproc

	.align	16, 0x90
	.type	gtk_wrap_box_child_type,@function
gtk_wrap_box_child_type:                # @gtk_wrap_box_child_type
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp74:
	.cfi_def_cfa_offset 16
.Ltmp75:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp76:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	callq	gtk_widget_get_type
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	gtk_wrap_box_child_type, .Lfunc_end23-gtk_wrap_box_child_type
	.cfi_endproc

	.align	16, 0x90
	.type	gtk_wrap_box_set_child_property,@function
gtk_wrap_box_set_child_property:        # @gtk_wrap_box_set_child_property
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp77:
	.cfi_def_cfa_offset 16
.Ltmp78:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp79:
	.cfi_def_cfa_register %rbp
	subq	$336, %rsp              # imm = 0x150
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	callq	gtk_wrap_box_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movl	$0, -52(%rbp)
	movl	$0, -56(%rbp)
	movl	$0, -60(%rbp)
	movl	$0, -64(%rbp)
	movl	$0, -68(%rbp)
	cmpl	$1, -20(%rbp)
	je	.LBB24_2
# BB#1:                                 # %if.then
	leaq	-52(%rbp), %rdx
	leaq	-56(%rbp), %rcx
	leaq	-60(%rbp), %r8
	leaq	-64(%rbp), %r9
	leaq	-68(%rbp), %rax
	movq	-48(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	%rax, (%rsp)
	callq	gtk_wrap_box_query_child_packing
.LBB24_2:                               # %if.end
	movl	-20(%rbp), %eax
	decl	%eax
	movl	%eax, %ecx
	subl	$5, %eax
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	movl	%eax, -116(%rbp)        # 4-byte Spill
	ja	.LBB24_9
# BB#13:                                # %if.end
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	.LJTI24_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB24_3:                               # %sw.bb
	movq	-48(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -136(%rbp)        # 8-byte Spill
	callq	g_value_get_int
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	-136(%rbp), %rsi        # 8-byte Reload
	movl	%eax, %edx
	callq	gtk_wrap_box_reorder_child
	jmp	.LBB24_12
.LBB24_4:                               # %sw.bb.3
	movq	-48(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -152(%rbp)        # 8-byte Spill
	callq	g_value_get_boolean
	movl	-56(%rbp), %ecx
	movl	-60(%rbp), %r8d
	movl	-64(%rbp), %r9d
	movl	-68(%rbp), %edx
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	-152(%rbp), %rsi        # 8-byte Reload
	movl	%edx, -156(%rbp)        # 4-byte Spill
	movl	%eax, %edx
	movl	-156(%rbp), %eax        # 4-byte Reload
	movl	%eax, (%rsp)
	callq	gtk_wrap_box_set_child_packing
	jmp	.LBB24_12
.LBB24_5:                               # %sw.bb.5
	movq	-48(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-52(%rbp), %edx
	movq	-32(%rbp), %rax
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	%edx, -172(%rbp)        # 4-byte Spill
	movq	%rsi, -184(%rbp)        # 8-byte Spill
	callq	g_value_get_boolean
	movl	-60(%rbp), %r8d
	movl	-64(%rbp), %r9d
	movl	-68(%rbp), %edx
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	-184(%rbp), %rsi        # 8-byte Reload
	movl	-172(%rbp), %ecx        # 4-byte Reload
	movl	%edx, -188(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	%eax, %ecx
	movl	-188(%rbp), %eax        # 4-byte Reload
	movl	%eax, (%rsp)
	callq	gtk_wrap_box_set_child_packing
	jmp	.LBB24_12
.LBB24_6:                               # %sw.bb.7
	movq	-48(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-52(%rbp), %edx
	movl	-56(%rbp), %ecx
	movq	-32(%rbp), %rax
	movq	%rdi, -200(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	%ecx, -204(%rbp)        # 4-byte Spill
	movq	%rsi, -216(%rbp)        # 8-byte Spill
	movl	%edx, -220(%rbp)        # 4-byte Spill
	callq	g_value_get_boolean
	movl	-64(%rbp), %r9d
	movl	-68(%rbp), %ecx
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	-216(%rbp), %rsi        # 8-byte Reload
	movl	-220(%rbp), %edx        # 4-byte Reload
	movl	-204(%rbp), %r8d        # 4-byte Reload
	movl	%ecx, -224(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	%eax, %r8d
	movl	-224(%rbp), %eax        # 4-byte Reload
	movl	%eax, (%rsp)
	callq	gtk_wrap_box_set_child_packing
	jmp	.LBB24_12
.LBB24_7:                               # %sw.bb.9
	movq	-48(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-52(%rbp), %edx
	movl	-56(%rbp), %ecx
	movl	-60(%rbp), %r8d
	movq	-32(%rbp), %rax
	movq	%rdi, -232(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	%r8d, -236(%rbp)        # 4-byte Spill
	movq	%rsi, -248(%rbp)        # 8-byte Spill
	movl	%edx, -252(%rbp)        # 4-byte Spill
	movl	%ecx, -256(%rbp)        # 4-byte Spill
	callq	g_value_get_boolean
	movl	-68(%rbp), %ecx
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	-248(%rbp), %rsi        # 8-byte Reload
	movl	-252(%rbp), %edx        # 4-byte Reload
	movl	-256(%rbp), %r8d        # 4-byte Reload
	movl	%ecx, -260(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	-236(%rbp), %r8d        # 4-byte Reload
	movl	%eax, %r9d
	movl	-260(%rbp), %eax        # 4-byte Reload
	movl	%eax, (%rsp)
	callq	gtk_wrap_box_set_child_packing
	jmp	.LBB24_12
.LBB24_8:                               # %sw.bb.11
	movq	-48(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-52(%rbp), %edx
	movl	-56(%rbp), %ecx
	movl	-60(%rbp), %r8d
	movl	-64(%rbp), %r9d
	movq	-32(%rbp), %rax
	movq	%rdi, -272(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	%r9d, -276(%rbp)        # 4-byte Spill
	movq	%rsi, -288(%rbp)        # 8-byte Spill
	movl	%edx, -292(%rbp)        # 4-byte Spill
	movl	%ecx, -296(%rbp)        # 4-byte Spill
	movl	%r8d, -300(%rbp)        # 4-byte Spill
	callq	g_value_get_boolean
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	-288(%rbp), %rsi        # 8-byte Reload
	movl	-292(%rbp), %edx        # 4-byte Reload
	movl	-296(%rbp), %ecx        # 4-byte Reload
	movl	-300(%rbp), %r8d        # 4-byte Reload
	movl	-276(%rbp), %r9d        # 4-byte Reload
	movl	%eax, (%rsp)
	callq	gtk_wrap_box_set_child_packing
	jmp	.LBB24_12
.LBB24_9:                               # %sw.default
	jmp	.LBB24_10
.LBB24_10:                              # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -88(%rbp)
	movl	-20(%rbp), %ecx
	movl	%ecx, -92(%rbp)
	movl	-92(%rbp), %r8d
	movq	-88(%rbp), %rax
	movq	8(%rax), %r9
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	movl	%r8d, -304(%rbp)        # 4-byte Spill
	movq	%r9, -312(%rbp)         # 8-byte Spill
	callq	g_type_name
	movq	-80(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.21, %rdi
	movabsq	$.L.str.22, %rsi
	movl	$419, %edx              # imm = 0x1A3
	movabsq	$.L.str.24, %rcx
	movl	-304(%rbp), %r8d        # 4-byte Reload
	movq	-312(%rbp), %r9         # 8-byte Reload
	movq	-320(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#11:                                # %do.end
	jmp	.LBB24_12
.LBB24_12:                              # %sw.epilog
	addq	$336, %rsp              # imm = 0x150
	popq	%rbp
	retq
.Lfunc_end24:
	.size	gtk_wrap_box_set_child_property, .Lfunc_end24-gtk_wrap_box_set_child_property
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI24_0:
	.quad	.LBB24_3
	.quad	.LBB24_4
	.quad	.LBB24_5
	.quad	.LBB24_6
	.quad	.LBB24_7
	.quad	.LBB24_8

	.text
	.align	16, 0x90
	.type	gtk_wrap_box_get_child_property,@function
gtk_wrap_box_get_child_property:        # @gtk_wrap_box_get_child_property
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp80:
	.cfi_def_cfa_offset 16
.Ltmp81:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp82:
	.cfi_def_cfa_register %rbp
	subq	$192, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	callq	gtk_wrap_box_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movl	$0, -52(%rbp)
	movl	$0, -56(%rbp)
	movl	$0, -60(%rbp)
	movl	$0, -64(%rbp)
	movl	$0, -68(%rbp)
	cmpl	$1, -20(%rbp)
	je	.LBB25_2
# BB#1:                                 # %if.then
	leaq	-52(%rbp), %rdx
	leaq	-56(%rbp), %rcx
	leaq	-60(%rbp), %r8
	leaq	-64(%rbp), %r9
	leaq	-68(%rbp), %rax
	movq	-48(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	%rax, (%rsp)
	callq	gtk_wrap_box_query_child_packing
.LBB25_2:                               # %if.end
	movl	-20(%rbp), %eax
	decl	%eax
	movl	%eax, %ecx
	subl	$5, %eax
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	movl	%eax, -132(%rbp)        # 4-byte Spill
	ja	.LBB25_18
# BB#22:                                # %if.end
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	.LJTI25_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB25_3:                               # %sw.bb
	movl	$0, -84(%rbp)
	movq	-48(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, -80(%rbp)
.LBB25_4:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -80(%rbp)
	je	.LBB25_9
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB25_4 Depth=1
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-16(%rbp), %rax
	jne	.LBB25_7
# BB#6:                                 # %if.then.3
	jmp	.LBB25_9
.LBB25_7:                               # %if.end.4
                                        #   in Loop: Header=BB25_4 Depth=1
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
# BB#8:                                 # %for.inc
                                        #   in Loop: Header=BB25_4 Depth=1
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -80(%rbp)
	jmp	.LBB25_4
.LBB25_9:                               # %for.end
	movq	-32(%rbp), %rdi
	cmpq	$0, -80(%rbp)
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	je	.LBB25_11
# BB#10:                                # %cond.true
	movl	-84(%rbp), %eax
	movl	%eax, -148(%rbp)        # 4-byte Spill
	jmp	.LBB25_12
.LBB25_11:                              # %cond.false
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, -148(%rbp)        # 4-byte Spill
	jmp	.LBB25_12
.LBB25_12:                              # %cond.end
	movl	-148(%rbp), %eax        # 4-byte Reload
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %esi
	callq	g_value_set_int
	jmp	.LBB25_21
.LBB25_13:                              # %sw.bb.6
	movq	-32(%rbp), %rdi
	movl	-52(%rbp), %esi
	callq	g_value_set_boolean
	jmp	.LBB25_21
.LBB25_14:                              # %sw.bb.7
	movq	-32(%rbp), %rdi
	movl	-56(%rbp), %esi
	callq	g_value_set_boolean
	jmp	.LBB25_21
.LBB25_15:                              # %sw.bb.8
	movq	-32(%rbp), %rdi
	movl	-60(%rbp), %esi
	callq	g_value_set_boolean
	jmp	.LBB25_21
.LBB25_16:                              # %sw.bb.9
	movq	-32(%rbp), %rdi
	movl	-64(%rbp), %esi
	callq	g_value_set_boolean
	jmp	.LBB25_21
.LBB25_17:                              # %sw.bb.10
	movq	-32(%rbp), %rdi
	movl	-68(%rbp), %esi
	callq	g_value_set_boolean
	jmp	.LBB25_21
.LBB25_18:                              # %sw.default
	jmp	.LBB25_19
.LBB25_19:                              # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -104(%rbp)
	movl	-20(%rbp), %ecx
	movl	%ecx, -108(%rbp)
	movl	-108(%rbp), %r8d
	movq	-104(%rbp), %rax
	movq	8(%rax), %r9
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	movl	%r8d, -152(%rbp)        # 4-byte Spill
	movq	%r9, -160(%rbp)         # 8-byte Spill
	callq	g_type_name
	movq	-96(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.21, %rdi
	movabsq	$.L.str.22, %rsi
	movl	$472, %edx              # imm = 0x1D8
	movabsq	$.L.str.24, %rcx
	movl	-152(%rbp), %r8d        # 4-byte Reload
	movq	-160(%rbp), %r9         # 8-byte Reload
	movq	-168(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#20:                                # %do.end
	jmp	.LBB25_21
.LBB25_21:                              # %sw.epilog
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	gtk_wrap_box_get_child_property, .Lfunc_end25-gtk_wrap_box_get_child_property
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI25_0:
	.quad	.LBB25_3
	.quad	.LBB25_13
	.quad	.LBB25_14
	.quad	.LBB25_15
	.quad	.LBB25_16
	.quad	.LBB25_17

	.text
	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp83:
	.cfi_def_cfa_offset 16
.Ltmp84:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp85:
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
	je	.LBB26_2
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
.LBB26_2:                               # %entry
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
.Lfunc_end26:
	.size	g_warning, .Lfunc_end26-g_warning
	.cfi_endproc

	.type	gtk_wrap_box_get_type.wrap_box_type,@object # @gtk_wrap_box_get_type.wrap_box_type
	.local	gtk_wrap_box_get_type.wrap_box_type
	.comm	gtk_wrap_box_get_type.wrap_box_type,8,8
	.type	gtk_wrap_box_get_type.wrap_box_info,@object # @gtk_wrap_box_get_type.wrap_box_info
	.section	.rodata,"a",@progbits
	.align	8
gtk_wrap_box_get_type.wrap_box_info:
	.short	832                     # 0x340
	.zero	6
	.quad	0
	.quad	0
	.quad	gtk_wrap_box_class_init
	.quad	0
	.quad	0
	.short	136                     # 0x88
	.short	0                       # 0x0
	.zero	4
	.quad	gtk_wrap_box_init
	.quad	0
	.size	gtk_wrap_box_get_type.wrap_box_info, 72

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GtkWrapBox"
	.size	.L.str, 11

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Widgets"
	.size	.L.str.1, 13

	.type	.L__func__.gtk_wrap_box_set_homogeneous,@object # @__func__.gtk_wrap_box_set_homogeneous
.L__func__.gtk_wrap_box_set_homogeneous:
	.asciz	"gtk_wrap_box_set_homogeneous"
	.size	.L__func__.gtk_wrap_box_set_homogeneous, 29

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GTK_IS_WRAP_BOX (wbox)"
	.size	.L.str.2, 23

	.type	.L__func__.gtk_wrap_box_set_hspacing,@object # @__func__.gtk_wrap_box_set_hspacing
.L__func__.gtk_wrap_box_set_hspacing:
	.asciz	"gtk_wrap_box_set_hspacing"
	.size	.L__func__.gtk_wrap_box_set_hspacing, 26

	.type	.L__func__.gtk_wrap_box_set_vspacing,@object # @__func__.gtk_wrap_box_set_vspacing
.L__func__.gtk_wrap_box_set_vspacing:
	.asciz	"gtk_wrap_box_set_vspacing"
	.size	.L__func__.gtk_wrap_box_set_vspacing, 26

	.type	.L__func__.gtk_wrap_box_set_justify,@object # @__func__.gtk_wrap_box_set_justify
.L__func__.gtk_wrap_box_set_justify:
	.asciz	"gtk_wrap_box_set_justify"
	.size	.L__func__.gtk_wrap_box_set_justify, 25

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"justify <= GTK_JUSTIFY_FILL"
	.size	.L.str.3, 28

	.type	.L__func__.gtk_wrap_box_set_line_justify,@object # @__func__.gtk_wrap_box_set_line_justify
.L__func__.gtk_wrap_box_set_line_justify:
	.asciz	"gtk_wrap_box_set_line_justify"
	.size	.L__func__.gtk_wrap_box_set_line_justify, 30

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"line_justify <= GTK_JUSTIFY_FILL"
	.size	.L.str.4, 33

	.type	.L__func__.gtk_wrap_box_set_aspect_ratio,@object # @__func__.gtk_wrap_box_set_aspect_ratio
.L__func__.gtk_wrap_box_set_aspect_ratio:
	.asciz	"gtk_wrap_box_set_aspect_ratio"
	.size	.L__func__.gtk_wrap_box_set_aspect_ratio, 30

	.type	.L__func__.gtk_wrap_box_pack,@object # @__func__.gtk_wrap_box_pack
.L__func__.gtk_wrap_box_pack:
	.asciz	"gtk_wrap_box_pack"
	.size	.L__func__.gtk_wrap_box_pack, 18

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"GTK_IS_WIDGET (child)"
	.size	.L.str.5, 22

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"child->parent == NULL"
	.size	.L.str.6, 22

	.type	.L__func__.gtk_wrap_box_pack_wrapped,@object # @__func__.gtk_wrap_box_pack_wrapped
.L__func__.gtk_wrap_box_pack_wrapped:
	.asciz	"gtk_wrap_box_pack_wrapped"
	.size	.L__func__.gtk_wrap_box_pack_wrapped, 26

	.type	.L__func__.gtk_wrap_box_reorder_child,@object # @__func__.gtk_wrap_box_reorder_child
.L__func__.gtk_wrap_box_reorder_child:
	.asciz	"gtk_wrap_box_reorder_child"
	.size	.L__func__.gtk_wrap_box_reorder_child, 27

	.type	.L__func__.gtk_wrap_box_query_child_packing,@object # @__func__.gtk_wrap_box_query_child_packing
.L__func__.gtk_wrap_box_query_child_packing:
	.asciz	"gtk_wrap_box_query_child_packing"
	.size	.L__func__.gtk_wrap_box_query_child_packing, 33

	.type	.L__func__.gtk_wrap_box_set_child_packing,@object # @__func__.gtk_wrap_box_set_child_packing
.L__func__.gtk_wrap_box_set_child_packing:
	.asciz	"gtk_wrap_box_set_child_packing"
	.size	.L__func__.gtk_wrap_box_set_child_packing, 31

	.type	.L__func__.gtk_wrap_box_query_line_lengths,@object # @__func__.gtk_wrap_box_query_line_lengths
.L__func__.gtk_wrap_box_query_line_lengths:
	.asciz	"gtk_wrap_box_query_line_lengths"
	.size	.L__func__.gtk_wrap_box_query_line_lengths, 32

	.type	parent_class,@object    # @parent_class
	.local	parent_class
	.comm	parent_class,8,8
	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"homogeneous"
	.size	.L.str.7, 12

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"justify"
	.size	.L.str.8, 8

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"hspacing"
	.size	.L.str.9, 9

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"vspacing"
	.size	.L.str.10, 9

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"line-justify"
	.size	.L.str.11, 13

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"aspect-ratio"
	.size	.L.str.12, 13

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"current-ratio"
	.size	.L.str.13, 14

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"max-children-per-line"
	.size	.L.str.14, 22

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"position"
	.size	.L.str.15, 9

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"hexpand"
	.size	.L.str.16, 8

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"hfill"
	.size	.L.str.17, 6

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"vexpand"
	.size	.L.str.18, 8

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"vfill"
	.size	.L.str.19, 6

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"wrapped"
	.size	.L.str.20, 8

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.21, 54

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"gtkwrapbox.c"
	.size	.L.str.22, 13

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"property"
	.size	.L.str.23, 9

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"child property id"
	.size	.L.str.24, 18


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
