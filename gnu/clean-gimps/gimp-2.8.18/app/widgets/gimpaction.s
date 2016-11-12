	.text
	.file	"gimpaction.bc"
	.globl	gimp_action_get_type
	.align	16, 0x90
	.type	gimp_action_get_type,@function
gimp_action_get_type:                   # @gimp_action_get_type
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
	movq	gimp_action_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_action_get_type.g_define_type_id__volatile, %rax
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
	callq	gtk_action_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$224, %edx
	movabsq	$gimp_action_class_intern_init, %rdi
	movl	$64, %r8d
	movabsq	$gimp_action_init, %rcx
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
	movabsq	$gimp_action_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_action_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_action_get_type, .Lfunc_end0-gimp_action_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_action_class_intern_init,@function
gimp_action_class_intern_init:          # @gimp_action_class_intern_init
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
	movq	%rax, gimp_action_parent_class
	cmpl	$0, GimpAction_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpAction_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_action_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_action_class_intern_init, .Lfunc_end1-gimp_action_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_action_init,@function
gimp_action_init:                       # @gimp_action_init
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
	movabsq	$.L.str.14, %rsi
	movabsq	$gimp_action_tooltip_notify, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%r9d, %r9d
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	$0, 40(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 48(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 56(%rdi)
	movq	-8(%rbp), %rdi
	movl	$-1, 60(%rdi)
	movq	-8(%rbp), %rdi
	movq	%rdx, -16(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movq	-16(%rbp), %rcx         # 8-byte Reload
	movq	-16(%rbp), %r8          # 8-byte Reload
	callq	g_signal_connect_data
	movq	%rax, -24(%rbp)         # 8-byte Spill
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_action_init, .Lfunc_end2-gimp_action_init
	.cfi_endproc

	.globl	gimp_action_new
	.align	16, 0x90
	.type	gimp_action_new,@function
gimp_action_new:                        # @gimp_action_new
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
	pushq	%rbx
	subq	$104, %rsp
.Ltmp12:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	callq	gimp_action_get_type
	movabsq	$.L.str.1, %rsi
	movabsq	$.L.str.2, %rcx
	movabsq	$.L.str.3, %r9
	movabsq	$.L.str.4, %rdx
	xorl	%r8d, %r8d
	movl	%r8d, %edi
	movq	-16(%rbp), %r10
	movq	-24(%rbp), %r8
	movq	-32(%rbp), %r11
	movq	-40(%rbp), %rbx
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	movq	%r10, %rdx
	movq	%r11, (%rsp)
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	%rbx, 16(%rsp)
	movq	$0, 24(%rsp)
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB3_4
# BB#1:                                 # %if.then
	callq	gtk_icon_theme_get_default
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_icon_theme_has_icon
	cmpl	$0, %eax
	je	.LBB3_3
# BB#2:                                 # %if.then.5
	movq	-48(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_action_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_action_set_icon_name
.LBB3_3:                                # %if.end
	jmp	.LBB3_4
.LBB3_4:                                # %if.end.8
	movq	-48(%rbp), %rax
	addq	$104, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_action_new, .Lfunc_end3-gimp_action_new
	.cfi_endproc

	.globl	gimp_action_name_compare
	.align	16, 0x90
	.type	gimp_action_name_compare,@function
gimp_action_name_compare:               # @gimp_action_name_compare
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp13:
	.cfi_def_cfa_offset 16
.Ltmp14:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp15:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, %rdi
	callq	gtk_action_get_name
	movq	-16(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gtk_action_get_name
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	strcmp
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_action_name_compare, .Lfunc_end4-gimp_action_name_compare
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gimp_action_class_init,@function
gimp_action_class_init:                 # @gimp_action_class_init
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
	subq	$144, %rsp
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_action_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	leaq	-56(%rbp), %rdi
	xorps	%xmm0, %xmm0
	movsd	.LCPI5_0, %xmm3         # xmm3 = mem[0],zero
	movabsq	$gimp_action_connect_proxy, %rsi
	movabsq	$gimp_action_get_property, %rcx
	movabsq	$gimp_action_set_property, %rdx
	movabsq	$gimp_action_finalize, %r8
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%r8, 48(%rax)
	movq	-16(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-16(%rbp), %rax
	movq	%rcx, 32(%rax)
	movq	-24(%rbp), %rax
	movq	%rsi, 176(%rax)
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	movsd	-72(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-72(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	gimp_rgba_set
	movq	-16(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gimp_context_get_type
	movabsq	$.L.str.5, %rdi
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	movl	$227, %r8d
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_object
	movl	$1, %esi
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.6, %rdi
	xorl	%esi, %esi
	movl	%esi, %eax
	movl	$1, %ecx
	leaq	-56(%rbp), %r8
	movl	$227, %r9d
	movq	-16(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	callq	gimp_param_spec_rgb
	movl	$2, %esi
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-16(%rbp), %rdi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	callq	gimp_viewable_get_type
	movabsq	$.L.str.7, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movl	$227, %r8d
	movq	%rdx, %rsi
	movq	%rax, %rcx
	callq	g_param_spec_object
	movl	$3, %esi
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-16(%rbp), %rdi
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	callq	pango_ellipsize_mode_get_type
	movabsq	$.L.str.8, %rdi
	xorl	%esi, %esi
	movl	%esi, %ecx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movl	$4, %esi
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.9, %rdi
	xorl	%esi, %esi
	movl	%esi, %eax
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	movl	$227, %r9d
	movq	-16(%rbp), %rcx
	movl	%esi, -108(%rbp)        # 4-byte Spill
	movq	%rax, %rsi
	movq	%rax, %rdx
	movl	-108(%rbp), %r10d       # 4-byte Reload
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	movl	%r10d, %ecx
	movl	%r9d, -124(%rbp)        # 4-byte Spill
	movl	%r10d, %r9d
	movl	$227, (%rsp)
	callq	g_param_spec_int
	movl	$5, %esi
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_action_class_init, .Lfunc_end5-gimp_action_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_action_finalize,@function
gimp_action_finalize:                   # @gimp_action_finalize
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_action_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB6_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, 32(%rax)
.LBB6_2:                                # %if.end
	movq	-16(%rbp), %rax
	cmpq	$0, 40(%rax)
	je	.LBB6_4
# BB#3:                                 # %if.then.5
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	$0, 40(%rax)
.LBB6_4:                                # %if.end.8
	movq	-16(%rbp), %rax
	cmpq	$0, 48(%rax)
	je	.LBB6_6
# BB#5:                                 # %if.then.10
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, 48(%rax)
.LBB6_6:                                # %if.end.13
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_action_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_action_finalize, .Lfunc_end6-gimp_action_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_action_set_property,@function
gimp_action_set_property:               # @gimp_action_set_property
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
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	callq	gimp_action_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	$0, -44(%rbp)
	movl	-12(%rbp), %r8d
	decl	%r8d
	movl	%r8d, %eax
	subl	$4, %r8d
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movl	%r8d, -100(%rbp)        # 4-byte Spill
	ja	.LBB7_12
# BB#25:                                # %entry
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	.LJTI7_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB7_1:                                # %sw.bb
	movq	-40(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB7_3
# BB#2:                                 # %if.then
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB7_3:                                # %if.end
	movq	-24(%rbp), %rdi
	callq	g_value_dup_object
	movq	-40(%rbp), %rdi
	movq	%rax, 32(%rdi)
	jmp	.LBB7_15
.LBB7_4:                                # %sw.bb.5
	movq	-40(%rbp), %rax
	cmpq	$0, 40(%rax)
	je	.LBB7_6
# BB#5:                                 # %if.then.7
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	callq	g_free
.LBB7_6:                                # %if.end.9
	movq	-24(%rbp), %rdi
	callq	g_value_dup_boxed
	movq	-40(%rbp), %rdi
	movq	%rax, 40(%rdi)
	movl	$1, -44(%rbp)
	jmp	.LBB7_15
.LBB7_7:                                # %sw.bb.12
	movq	-40(%rbp), %rax
	cmpq	$0, 48(%rax)
	je	.LBB7_9
# BB#8:                                 # %if.then.14
	movq	-40(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB7_9:                                # %if.end.16
	movq	-24(%rbp), %rdi
	callq	g_value_dup_object
	movq	-40(%rbp), %rdi
	movq	%rax, 48(%rdi)
	movl	$1, -44(%rbp)
	jmp	.LBB7_15
.LBB7_10:                               # %sw.bb.19
	movq	-24(%rbp), %rdi
	callq	g_value_get_enum
	movq	-40(%rbp), %rdi
	movl	%eax, 56(%rdi)
	movl	$1, -44(%rbp)
	jmp	.LBB7_15
.LBB7_11:                               # %sw.bb.21
	movq	-24(%rbp), %rdi
	callq	g_value_get_int
	movq	-40(%rbp), %rdi
	movl	%eax, 60(%rdi)
	movl	$1, -44(%rbp)
	jmp	.LBB7_15
.LBB7_12:                               # %sw.default
	jmp	.LBB7_13
.LBB7_13:                               # %do.body
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
	movabsq	$.L.str.10, %rdi
	movabsq	$.L.str.11, %rsi
	movl	$244, %edx
	movabsq	$.L.str.12, %rcx
	movl	-104(%rbp), %r8d        # 4-byte Reload
	movq	-112(%rbp), %r9         # 8-byte Reload
	movq	-120(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#14:                                # %do.end
	jmp	.LBB7_15
.LBB7_15:                               # %sw.epilog
	cmpl	$0, -44(%rbp)
	je	.LBB7_24
# BB#16:                                # %if.then.28
	movq	-40(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_action_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_action_get_proxies
	movq	%rax, -80(%rbp)
.LBB7_17:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -80(%rbp)
	je	.LBB7_23
# BB#18:                                # %for.body
                                        #   in Loop: Header=BB7_17 Depth=1
	movq	-40(%rbp), %rdi
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	callq	gimp_action_set_proxy
# BB#19:                                # %for.inc
                                        #   in Loop: Header=BB7_17 Depth=1
	cmpq	$0, -80(%rbp)
	je	.LBB7_21
# BB#20:                                # %cond.true
                                        #   in Loop: Header=BB7_17 Depth=1
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	jmp	.LBB7_22
.LBB7_21:                               # %cond.false
                                        #   in Loop: Header=BB7_17 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	jmp	.LBB7_22
.LBB7_22:                               # %cond.end
                                        #   in Loop: Header=BB7_17 Depth=1
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	%rax, -80(%rbp)
	jmp	.LBB7_17
.LBB7_23:                               # %for.end
	jmp	.LBB7_24
.LBB7_24:                               # %if.end.34
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_action_set_property, .Lfunc_end7-gimp_action_set_property
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI7_0:
	.quad	.LBB7_1
	.quad	.LBB7_4
	.quad	.LBB7_7
	.quad	.LBB7_10
	.quad	.LBB7_11

	.text
	.align	16, 0x90
	.type	gimp_action_get_property,@function
gimp_action_get_property:               # @gimp_action_get_property
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_action_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	decl	%r8d
	movl	%r8d, %eax
	subl	$4, %r8d
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movl	%r8d, -84(%rbp)         # 4-byte Spill
	ja	.LBB8_6
# BB#10:                                # %entry
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	.LJTI8_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB8_1:                                # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rsi
	callq	g_value_set_object
	jmp	.LBB8_9
.LBB8_2:                                # %sw.bb.2
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rsi
	callq	g_value_set_boxed
	jmp	.LBB8_9
.LBB8_3:                                # %sw.bb.3
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rsi
	callq	g_value_set_object
	jmp	.LBB8_9
.LBB8_4:                                # %sw.bb.4
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	56(%rax), %esi
	callq	g_value_set_enum
	jmp	.LBB8_9
.LBB8_5:                                # %sw.bb.5
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	60(%rax), %esi
	callq	g_value_set_int
	jmp	.LBB8_9
.LBB8_6:                                # %sw.default
	jmp	.LBB8_7
.LBB8_7:                                # %do.body
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
	movabsq	$.L.str.10, %rdi
	movabsq	$.L.str.11, %rsi
	movl	$197, %edx
	movabsq	$.L.str.12, %rcx
	movl	-88(%rbp), %r8d         # 4-byte Reload
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	-104(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#8:                                 # %do.end
	jmp	.LBB8_9
.LBB8_9:                                # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_action_get_property, .Lfunc_end8-gimp_action_get_property
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI8_0:
	.quad	.LBB8_1
	.quad	.LBB8_2
	.quad	.LBB8_3
	.quad	.LBB8_4
	.quad	.LBB8_5

	.text
	.align	16, 0x90
	.type	gimp_action_connect_proxy,@function
gimp_action_connect_proxy:              # @gimp_action_connect_proxy
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	gimp_action_parent_class, %rsi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	callq	gtk_action_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	176(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_action_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_action_set_proxy
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_action_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_action_set_proxy_tooltip
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_action_connect_proxy, .Lfunc_end9-gimp_action_connect_proxy
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	movl	$.L.str.13, %r9d
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

	.align	16, 0x90
	.type	gimp_action_set_proxy,@function
gimp_action_set_proxy:                  # @gimp_action_set_proxy
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	callq	gtk_image_menu_item_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB11_2
# BB#1:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB11_7
.LBB11_2:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_5
# BB#3:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB11_5
# BB#4:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB11_6
.LBB11_5:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB11_6:                               # %if.end
	jmp	.LBB11_7
.LBB11_7:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	jne	.LBB11_9
# BB#8:                                 # %if.then.8
	jmp	.LBB11_72
.LBB11_9:                               # %if.end.9
	movq	-8(%rbp), %rax
	cmpq	$0, 40(%rax)
	je	.LBB11_21
# BB#10:                                # %if.then.11
	movq	-16(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gtk_image_menu_item_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_image_menu_item_get_image
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_color_area_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB11_12
# BB#11:                                # %if.then.24
	movl	$0, -68(%rbp)
	jmp	.LBB11_17
.LBB11_12:                              # %if.else.25
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_15
# BB#13:                                # %land.lhs.true.28
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB11_15
# BB#14:                                # %if.then.32
	movl	$1, -68(%rbp)
	jmp	.LBB11_16
.LBB11_15:                              # %if.else.33
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB11_16:                              # %if.end.35
	jmp	.LBB11_17
.LBB11_17:                              # %if.end.36
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB11_19
# BB#18:                                # %if.then.39
	movq	-48(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gimp_color_area_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	movq	40(%rsi), %rsi
	movq	%rax, %rdi
	callq	gimp_color_area_set_color
	jmp	.LBB11_20
.LBB11_19:                              # %if.else.43
	movl	$1, %esi
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdi
	callq	gimp_color_area_new
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gimp_color_area_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gimp_color_area_set_draw_border
	movq	-16(%rbp), %rdi
	callq	gtk_widget_get_settings
	movl	$1, %esi
	leaq	-76(%rbp), %rdx
	leaq	-80(%rbp), %rcx
	movq	%rax, %rdi
	callq	gtk_icon_size_lookup_for_settings
	movq	-48(%rbp), %rdi
	movl	-76(%rbp), %esi
	movl	-80(%rbp), %edx
	movl	%eax, -276(%rbp)        # 4-byte Spill
	callq	gtk_widget_set_size_request
	movq	-16(%rbp), %rcx
	movq	%rcx, -288(%rbp)        # 8-byte Spill
	callq	gtk_image_menu_item_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_image_menu_item_set_image
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
.LBB11_20:                              # %if.end.54
	jmp	.LBB11_63
.LBB11_21:                              # %if.else.55
	movq	-8(%rbp), %rax
	cmpq	$0, 48(%rax)
	je	.LBB11_44
# BB#22:                                # %if.then.57
	movq	-16(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gtk_image_menu_item_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_image_menu_item_get_image
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -96(%rbp)
	callq	gimp_view_get_type
	movq	%rax, -104(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.LBB11_24
# BB#23:                                # %if.then.70
	movl	$0, -108(%rbp)
	jmp	.LBB11_29
.LBB11_24:                              # %if.else.71
	movq	-96(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_27
# BB#25:                                # %land.lhs.true.74
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-104(%rbp), %rax
	jne	.LBB11_27
# BB#26:                                # %if.then.78
	movl	$1, -108(%rbp)
	jmp	.LBB11_28
.LBB11_27:                              # %if.else.79
	movq	-96(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -108(%rbp)
.LBB11_28:                              # %if.end.81
	jmp	.LBB11_29
.LBB11_29:                              # %if.end.82
	movl	-108(%rbp), %eax
	movl	%eax, -112(%rbp)
	cmpl	$0, -112(%rbp)
	je	.LBB11_32
# BB#30:                                # %land.lhs.true.85
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	movq	-88(%rbp), %rax
	movq	%rdi, -304(%rbp)        # 8-byte Spill
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gimp_view_get_type
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	112(%rax), %rax
	movq	32(%rax), %rsi
	movq	-304(%rbp), %rdi        # 8-byte Reload
	callq	g_type_is_a
	cmpl	$0, %eax
	je	.LBB11_32
# BB#31:                                # %if.then.93
	movq	-88(%rbp), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	gimp_view_get_type
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	movq	48(%rsi), %rsi
	movq	%rax, %rdi
	callq	gimp_view_set_viewable
	jmp	.LBB11_43
.LBB11_32:                              # %if.else.97
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -136(%rbp)
	callq	gimp_imagefile_get_type
	movq	%rax, -144(%rbp)
	cmpq	$0, -136(%rbp)
	jne	.LBB11_34
# BB#33:                                # %if.then.113
	movl	$0, -148(%rbp)
	jmp	.LBB11_39
.LBB11_34:                              # %if.else.114
	movq	-136(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_37
# BB#35:                                # %land.lhs.true.117
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-144(%rbp), %rax
	jne	.LBB11_37
# BB#36:                                # %if.then.121
	movl	$1, -148(%rbp)
	jmp	.LBB11_38
.LBB11_37:                              # %if.else.122
	movq	-136(%rbp), %rdi
	movq	-144(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -148(%rbp)
.LBB11_38:                              # %if.end.124
	jmp	.LBB11_39
.LBB11_39:                              # %if.end.125
	movl	-148(%rbp), %eax
	movl	%eax, -152(%rbp)
	cmpl	$0, -152(%rbp)
	je	.LBB11_41
# BB#40:                                # %if.then.128
	movl	$3, -116(%rbp)
	movl	$0, -128(%rbp)
	jmp	.LBB11_42
.LBB11_41:                              # %if.else.129
	movl	$1, -116(%rbp)
	movl	$1, -128(%rbp)
.LBB11_42:                              # %if.end.130
	movq	-16(%rbp), %rdi
	callq	gtk_widget_get_settings
	leaq	-120(%rbp), %rdx
	leaq	-124(%rbp), %rcx
	movl	-116(%rbp), %esi
	movq	%rax, %rdi
	callq	gtk_icon_size_lookup_for_settings
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rdi
	movq	-8(%rbp), %rcx
	movq	48(%rcx), %rsi
	movl	-120(%rbp), %edx
	movl	-124(%rbp), %ecx
	movl	-128(%rbp), %r8d
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	movl	%eax, -324(%rbp)        # 4-byte Spill
	callq	gimp_view_new_full
	movq	%rax, -88(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	gtk_image_menu_item_get_type
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_image_menu_item_set_image
	movq	-88(%rbp), %rdi
	callq	gtk_widget_show
.LBB11_43:                              # %if.end.137
	jmp	.LBB11_62
.LBB11_44:                              # %if.else.138
	movq	-16(%rbp), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	gtk_image_menu_item_get_type
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_image_menu_item_get_image
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, -168(%rbp)
	callq	gimp_view_get_type
	movq	%rax, -176(%rbp)
	cmpq	$0, -168(%rbp)
	jne	.LBB11_46
# BB#45:                                # %if.then.151
	movl	$0, -180(%rbp)
	jmp	.LBB11_51
.LBB11_46:                              # %if.else.152
	movq	-168(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_49
# BB#47:                                # %land.lhs.true.155
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-176(%rbp), %rax
	jne	.LBB11_49
# BB#48:                                # %if.then.159
	movl	$1, -180(%rbp)
	jmp	.LBB11_50
.LBB11_49:                              # %if.else.160
	movq	-168(%rbp), %rdi
	movq	-176(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -180(%rbp)
.LBB11_50:                              # %if.end.162
	jmp	.LBB11_51
.LBB11_51:                              # %if.end.163
	movl	-180(%rbp), %eax
	movl	%eax, -184(%rbp)
	cmpl	$0, -184(%rbp)
	jne	.LBB11_60
# BB#52:                                # %lor.lhs.false
	movq	-160(%rbp), %rax
	movq	%rax, -192(%rbp)
	callq	gimp_color_area_get_type
	movq	%rax, -200(%rbp)
	cmpq	$0, -192(%rbp)
	jne	.LBB11_54
# BB#53:                                # %if.then.174
	movl	$0, -204(%rbp)
	jmp	.LBB11_59
.LBB11_54:                              # %if.else.175
	movq	-192(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_57
# BB#55:                                # %land.lhs.true.178
	movq	-192(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-200(%rbp), %rax
	jne	.LBB11_57
# BB#56:                                # %if.then.182
	movl	$1, -204(%rbp)
	jmp	.LBB11_58
.LBB11_57:                              # %if.else.183
	movq	-192(%rbp), %rdi
	movq	-200(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -204(%rbp)
.LBB11_58:                              # %if.end.185
	jmp	.LBB11_59
.LBB11_59:                              # %if.end.186
	movl	-204(%rbp), %eax
	movl	%eax, -208(%rbp)
	cmpl	$0, -208(%rbp)
	je	.LBB11_61
.LBB11_60:                              # %if.then.189
	movq	-16(%rbp), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	gtk_image_menu_item_get_type
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	gtk_image_menu_item_set_image
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.4, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
.LBB11_61:                              # %if.end.193
	jmp	.LBB11_62
.LBB11_62:                              # %if.end.194
	jmp	.LBB11_63
.LBB11_63:                              # %if.end.195
	movq	-16(%rbp), %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	gtk_bin_get_type
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_bin_get_child
	movq	%rax, -216(%rbp)
	movq	-216(%rbp), %rax
	movq	%rax, -224(%rbp)
	callq	gtk_label_get_type
	movq	%rax, -232(%rbp)
	cmpq	$0, -224(%rbp)
	jne	.LBB11_65
# BB#64:                                # %if.then.208
	movl	$0, -236(%rbp)
	jmp	.LBB11_70
.LBB11_65:                              # %if.else.209
	movq	-224(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_68
# BB#66:                                # %land.lhs.true.212
	movq	-224(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-232(%rbp), %rax
	jne	.LBB11_68
# BB#67:                                # %if.then.216
	movl	$1, -236(%rbp)
	jmp	.LBB11_69
.LBB11_68:                              # %if.else.217
	movq	-224(%rbp), %rdi
	movq	-232(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -236(%rbp)
.LBB11_69:                              # %if.end.219
	jmp	.LBB11_70
.LBB11_70:                              # %if.end.220
	movl	-236(%rbp), %eax
	movl	%eax, -240(%rbp)
	cmpl	$0, -240(%rbp)
	je	.LBB11_72
# BB#71:                                # %if.then.223
	movq	-216(%rbp), %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -248(%rbp)
	movq	-248(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	56(%rax), %esi
	callq	gtk_label_set_ellipsize
	movq	-248(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	60(%rax), %esi
	callq	gtk_label_set_max_width_chars
.LBB11_72:                              # %if.end.227
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_action_set_proxy, .Lfunc_end11-gimp_action_set_proxy
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_action_set_proxy_tooltip,@function
gimp_action_set_proxy_tooltip:          # @gimp_action_set_proxy_tooltip
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp37:
	.cfi_def_cfa_offset 16
.Ltmp38:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp39:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gtk_action_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_action_get_tooltip
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB12_2
# BB#1:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	callq	g_type_check_instance_cast
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_help_id_quark
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movl	%eax, %esi
	callq	g_object_get_qdata
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_help_set_help_data
.LBB12_2:                               # %if.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_action_set_proxy_tooltip, .Lfunc_end12-gimp_action_set_proxy_tooltip
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_action_tooltip_notify,@function
gimp_action_tooltip_notify:             # @gimp_action_tooltip_notify
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp40:
	.cfi_def_cfa_offset 16
.Ltmp41:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp42:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	callq	gtk_action_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_action_get_proxies
	movq	%rax, -32(%rbp)
.LBB13_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB13_7
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB13_1 Depth=1
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	callq	gimp_action_set_proxy_tooltip
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB13_1 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB13_5
# BB#4:                                 # %cond.true
                                        #   in Loop: Header=BB13_1 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB13_6
.LBB13_5:                               # %cond.false
                                        #   in Loop: Header=BB13_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	jmp	.LBB13_6
.LBB13_6:                               # %cond.end
                                        #   in Loop: Header=BB13_1 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, -32(%rbp)
	jmp	.LBB13_1
.LBB13_7:                               # %for.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_action_tooltip_notify, .Lfunc_end13-gimp_action_tooltip_notify
	.cfi_endproc

	.type	gimp_action_get_type.g_define_type_id__volatile,@object # @gimp_action_get_type.g_define_type_id__volatile
	.local	gimp_action_get_type.g_define_type_id__volatile
	.comm	gimp_action_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpAction"
	.size	.L.str, 11

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"name"
	.size	.L.str.1, 5

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"label"
	.size	.L.str.2, 6

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"tooltip"
	.size	.L.str.3, 8

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"stock-id"
	.size	.L.str.4, 9

	.type	gimp_action_parent_class,@object # @gimp_action_parent_class
	.local	gimp_action_parent_class
	.comm	gimp_action_parent_class,8,8
	.type	GimpAction_private_offset,@object # @GimpAction_private_offset
	.local	GimpAction_private_offset
	.comm	GimpAction_private_offset,4,4
	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"context"
	.size	.L.str.5, 8

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"color"
	.size	.L.str.6, 6

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"viewable"
	.size	.L.str.7, 9

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"ellipsize"
	.size	.L.str.8, 10

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"max-width-chars"
	.size	.L.str.9, 16

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.10, 54

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"gimpaction.c"
	.size	.L.str.11, 13

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"property"
	.size	.L.str.12, 9

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Gimp-Widgets"
	.size	.L.str.13, 13

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"notify::tooltip"
	.size	.L.str.14, 16


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
