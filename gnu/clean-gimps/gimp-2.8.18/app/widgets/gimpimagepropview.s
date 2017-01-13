	.text
	.file	"gimpimagepropview.bc"
	.globl	gimp_image_prop_view_get_type
	.align	16, 0x90
	.type	gimp_image_prop_view_get_type,@function
gimp_image_prop_view_get_type:          # @gimp_image_prop_view_get_type
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
	movq	gimp_image_prop_view_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_image_prop_view_get_type.g_define_type_id__volatile, %rax
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
	callq	gtk_table_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$824, %edx              # imm = 0x338
	movabsq	$gimp_image_prop_view_class_intern_init, %rdi
	movl	$272, %r8d              # imm = 0x110
	movabsq	$gimp_image_prop_view_init, %rcx
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
	movabsq	$gimp_image_prop_view_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_image_prop_view_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_image_prop_view_get_type, .Lfunc_end0-gimp_image_prop_view_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_prop_view_class_intern_init,@function
gimp_image_prop_view_class_intern_init: # @gimp_image_prop_view_class_intern_init
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
	movq	%rax, gimp_image_prop_view_parent_class
	cmpl	$0, GimpImagePropView_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpImagePropView_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_image_prop_view_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_image_prop_view_class_intern_init, .Lfunc_end1-gimp_image_prop_view_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_prop_view_init,@function
gimp_image_prop_view_init:              # @gimp_image_prop_view_init
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
	subq	$288, %rsp              # imm = 0x120
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gtk_table_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$14, %esi
	movl	$2, %edx
	movq	%rax, -16(%rbp)
	movl	$0, -20(%rbp)
	movq	-16(%rbp), %rdi
	callq	gtk_table_resize
	movl	$6, %esi
	movq	-16(%rbp), %rdi
	callq	gtk_table_set_col_spacings
	movl	$3, %esi
	movq	-16(%rbp), %rdi
	callq	gtk_table_set_row_spacings
	movabsq	$.L.str.27, %rdi
	movq	-16(%rbp), %rax
	movl	-20(%rbp), %edx
	movl	%edx, %esi
	addl	$1, %esi
	movl	%esi, -20(%rbp)
	movl	%edx, -36(%rbp)         # 4-byte Spill
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gettext
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	-36(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_image_prop_view_add_label
	movabsq	$.L.str.28, %rdi
	movq	-8(%rbp), %rdx
	movq	%rax, 160(%rdx)
	movq	-16(%rbp), %rax
	movl	-20(%rbp), %esi
	movl	%esi, %ecx
	addl	$1, %ecx
	movl	%ecx, -20(%rbp)
	movl	%esi, -52(%rbp)         # 4-byte Spill
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gettext
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movl	-52(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_image_prop_view_add_label
	movabsq	$.L.str.29, %rdi
	movq	-8(%rbp), %rdx
	movq	%rax, 168(%rdx)
	movq	-16(%rbp), %rax
	movl	-20(%rbp), %ecx
	movl	%ecx, %esi
	addl	$1, %esi
	movl	%esi, -20(%rbp)
	movl	%ecx, -68(%rbp)         # 4-byte Spill
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gettext
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movl	-68(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_image_prop_view_add_label
	movabsq	$.L.str.30, %rdi
	movq	-8(%rbp), %rdx
	movq	%rax, 176(%rdx)
	movq	-16(%rbp), %rax
	movl	-20(%rbp), %esi
	movl	%esi, -84(%rbp)         # 4-byte Spill
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gettext
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movl	-84(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_image_prop_view_add_label
	movq	-8(%rbp), %rdx
	movq	%rax, 184(%rdx)
	movq	-8(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %edx
	movl	-20(%rbp), %ecx
	movl	%ecx, %r8d
	addl	$1, %r8d
	movl	%r8d, -20(%rbp)
	movq	%rax, %rdi
	movl	%ecx, %esi
	callq	gtk_table_set_row_spacing
	movabsq	$.L.str.31, %rdi
	movq	-16(%rbp), %rax
	movl	-20(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -20(%rbp)
	movl	%ecx, -108(%rbp)        # 4-byte Spill
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movl	-108(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_image_prop_view_add_label
	movq	-8(%rbp), %rdx
	movq	%rax, 192(%rdx)
	movq	-8(%rbp), %rax
	movq	192(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gtk_label_set_ellipsize
	movabsq	$.L.str.32, %rdi
	movq	-16(%rbp), %rax
	movl	-20(%rbp), %ecx
	movl	%ecx, %esi
	addl	$1, %esi
	movl	%esi, -20(%rbp)
	movl	%ecx, -132(%rbp)        # 4-byte Spill
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movl	-132(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_image_prop_view_add_label
	movabsq	$.L.str.33, %rdi
	movq	-8(%rbp), %rdx
	movq	%rax, 200(%rdx)
	movq	-16(%rbp), %rax
	movl	-20(%rbp), %esi
	movl	%esi, -148(%rbp)        # 4-byte Spill
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movl	-148(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_image_prop_view_add_label
	movq	-8(%rbp), %rdx
	movq	%rax, 208(%rdx)
	movq	-8(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %edx
	movl	-20(%rbp), %ecx
	movl	%ecx, %r8d
	addl	$1, %r8d
	movl	%r8d, -20(%rbp)
	movq	%rax, %rdi
	movl	%ecx, %esi
	callq	gtk_table_set_row_spacing
	movabsq	$.L.str.34, %rdi
	movq	-16(%rbp), %rax
	movl	-20(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -20(%rbp)
	movl	%ecx, -172(%rbp)        # 4-byte Spill
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movl	-172(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_image_prop_view_add_label
	movabsq	$.L.str.35, %rdi
	movq	-8(%rbp), %rdx
	movq	%rax, 216(%rdx)
	movq	-16(%rbp), %rax
	movl	-20(%rbp), %ecx
	movl	%ecx, %esi
	addl	$1, %esi
	movl	%esi, -20(%rbp)
	movl	%ecx, -188(%rbp)        # 4-byte Spill
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movl	-188(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_image_prop_view_add_label
	movabsq	$.L.str.36, %rdi
	movq	-8(%rbp), %rdx
	movq	%rax, 224(%rdx)
	movq	-16(%rbp), %rax
	movl	-20(%rbp), %esi
	movl	%esi, -204(%rbp)        # 4-byte Spill
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movl	-204(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_image_prop_view_add_label
	movq	-8(%rbp), %rdx
	movq	%rax, 232(%rdx)
	movq	-8(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %edx
	movl	-20(%rbp), %ecx
	movl	%ecx, %r8d
	addl	$1, %r8d
	movl	%r8d, -20(%rbp)
	movq	%rax, %rdi
	movl	%ecx, %esi
	callq	gtk_table_set_row_spacing
	movabsq	$.L.str.37, %rdi
	movq	-16(%rbp), %rax
	movl	-20(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -20(%rbp)
	movl	%ecx, -228(%rbp)        # 4-byte Spill
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movl	-228(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_image_prop_view_add_label
	movabsq	$.L.str.38, %rdi
	movq	-8(%rbp), %rdx
	movq	%rax, 240(%rdx)
	movq	-16(%rbp), %rax
	movl	-20(%rbp), %ecx
	movl	%ecx, %esi
	addl	$1, %esi
	movl	%esi, -20(%rbp)
	movl	%ecx, -244(%rbp)        # 4-byte Spill
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movl	-244(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_image_prop_view_add_label
	movabsq	$.L.str.39, %rdi
	movq	-8(%rbp), %rdx
	movq	%rax, 248(%rdx)
	movq	-16(%rbp), %rax
	movl	-20(%rbp), %ecx
	movl	%ecx, %esi
	addl	$1, %esi
	movl	%esi, -20(%rbp)
	movl	%ecx, -260(%rbp)        # 4-byte Spill
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movl	-260(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_image_prop_view_add_label
	movabsq	$.L.str.40, %rdi
	movq	-8(%rbp), %rdx
	movq	%rax, 256(%rdx)
	movq	-16(%rbp), %rax
	movl	-20(%rbp), %ecx
	movl	%ecx, %esi
	addl	$1, %esi
	movl	%esi, -20(%rbp)
	movl	%ecx, -276(%rbp)        # 4-byte Spill
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movl	-276(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_image_prop_view_add_label
	movq	-8(%rbp), %rdx
	movq	%rax, 264(%rdx)
	addq	$288, %rsp              # imm = 0x120
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_image_prop_view_init, .Lfunc_end2-gimp_image_prop_view_init
	.cfi_endproc

	.globl	gimp_image_prop_view_new
	.align	16, 0x90
	.type	gimp_image_prop_view_new,@function
gimp_image_prop_view_new:               # @gimp_image_prop_view_new
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
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_image_get_type
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
	movabsq	$.L__func__.gimp_image_prop_view_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_13
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	callq	gimp_image_prop_view_get_type
	movabsq	$.L.str.3, %rsi
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-16(%rbp), %rdx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -8(%rbp)
.LBB3_13:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_image_prop_view_new, .Lfunc_end3-gimp_image_prop_view_new
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_prop_view_class_init,@function
gimp_image_prop_view_class_init:        # @gimp_image_prop_view_class_init
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
	movabsq	$gimp_image_prop_view_get_property, %rsi
	movabsq	$gimp_image_prop_view_set_property, %rdi
	movabsq	$gimp_image_prop_view_constructed, %rcx
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rcx, 72(%rax)
	movq	-16(%rbp), %rax
	movq	%rdi, 24(%rax)
	movq	-16(%rbp), %rax
	movq	%rsi, 32(%rax)
	movq	-16(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movabsq	$.L.str.3, %rdi
	xorl	%edx, %edx
	movl	%edx, %ecx
	movl	$235, %r8d
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_object
	movl	$1, %esi
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_image_prop_view_class_init, .Lfunc_end4-gimp_image_prop_view_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_prop_view_constructed,@function
gimp_image_prop_view_constructed:       # @gimp_image_prop_view_constructed
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_image_prop_view_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -16(%rbp)
	movq	gimp_image_prop_view_parent_class, %rax
	movq	%rax, %rdi
	callq	g_type_check_class_cast
	cmpq	$0, 72(%rax)
	je	.LBB5_2
# BB#1:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_image_prop_view_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	72(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
.LBB5_2:                                # %if.end
	jmp	.LBB5_3
.LBB5_3:                                # %do.body
	movq	-16(%rbp), %rax
	cmpq	$0, 152(%rax)
	je	.LBB5_5
# BB#4:                                 # %if.then.5
	jmp	.LBB5_6
.LBB5_5:                                # %if.else
	movabsq	$.L.str.1, %rdi
	movabsq	$.L.str.4, %rsi
	movl	$173, %edx
	movabsq	$.L__func__.gimp_image_prop_view_constructed, %rcx
	movabsq	$.L.str.5, %r8
	callq	g_assertion_message_expr
.LBB5_6:                                # %if.end.6
	jmp	.LBB5_7
.LBB5_7:                                # %do.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	152(%rcx), %rcx
	movq	-16(%rbp), %rdx
	movq	%rdx, %rdi
	movq	%rcx, -32(%rbp)         # 8-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$.L.str.6, %rsi
	movabsq	$gimp_image_prop_view_file_update, %rcx
	movl	$2, %r8d
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_signal_connect_object
	movl	$80, %r8d
	movl	%r8d, %esi
	movq	-16(%rbp), %rcx
	movq	152(%rcx), %rcx
	movq	-16(%rbp), %rdx
	movq	%rdx, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$.L.str.7, %rsi
	movabsq	$gimp_image_prop_view_update, %rcx
	movl	$2, %r8d
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_signal_connect_object
	movl	$80, %r8d
	movl	%r8d, %esi
	movq	-16(%rbp), %rcx
	movq	152(%rcx), %rcx
	movq	-16(%rbp), %rdx
	movq	%rdx, %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$.L.str.8, %rsi
	movabsq	$gimp_image_prop_view_update, %rcx
	movl	$2, %r8d
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_signal_connect_object
	movl	$80, %r8d
	movl	%r8d, %esi
	movq	-16(%rbp), %rcx
	movq	152(%rcx), %rcx
	movq	-16(%rbp), %rdx
	movq	%rdx, %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$.L.str.9, %rsi
	movabsq	$gimp_image_prop_view_update, %rcx
	movl	$2, %r8d
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_signal_connect_object
	movl	$80, %r8d
	movl	%r8d, %esi
	movq	-16(%rbp), %rcx
	movq	152(%rcx), %rcx
	movq	-16(%rbp), %rdx
	movq	%rdx, %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$.L.str.10, %rsi
	movabsq	$gimp_image_prop_view_update, %rcx
	movl	$2, %r8d
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_signal_connect_object
	movl	$80, %r8d
	movl	%r8d, %esi
	movq	-16(%rbp), %rcx
	movq	152(%rcx), %rcx
	movq	-16(%rbp), %rdx
	movq	%rdx, %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$.L.str.11, %rsi
	movabsq	$gimp_image_prop_view_undo_event, %rcx
	xorl	%r8d, %r8d
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_signal_connect_object
	movq	-16(%rbp), %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_image_prop_view_update
	movq	-16(%rbp), %rdi
	callq	gimp_image_prop_view_file_update
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_image_prop_view_constructed, .Lfunc_end5-gimp_image_prop_view_constructed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_prop_view_set_property,@function
gimp_image_prop_view_set_property:      # @gimp_image_prop_view_set_property
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_image_prop_view_get_type
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
	callq	g_value_get_object
	movq	-40(%rbp), %rdi
	movq	%rax, 152(%rdi)
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
	movabsq	$.L.str.25, %rdi
	movabsq	$.L.str.4, %rsi
	movl	$219, %edx
	movabsq	$.L.str.26, %rcx
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
	.size	gimp_image_prop_view_set_property, .Lfunc_end6-gimp_image_prop_view_set_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_prop_view_get_property,@function
gimp_image_prop_view_get_property:      # @gimp_image_prop_view_get_property
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_image_prop_view_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	subl	$1, %r8d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	jne	.LBB7_2
	jmp	.LBB7_1
.LBB7_1:                                # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, %rsi
	callq	g_value_set_object
	jmp	.LBB7_5
.LBB7_2:                                # %sw.default
	jmp	.LBB7_3
.LBB7_3:                                # %do.body
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
	movabsq	$.L.str.25, %rdi
	movabsq	$.L.str.4, %rsi
	movl	$238, %edx
	movabsq	$.L.str.26, %rcx
	movl	-80(%rbp), %r8d         # 4-byte Reload
	movq	-88(%rbp), %r9          # 8-byte Reload
	movq	-96(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#4:                                 # %do.end
	jmp	.LBB7_5
.LBB7_5:                                # %sw.epilog
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_image_prop_view_get_property, .Lfunc_end7-gimp_image_prop_view_get_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_prop_view_file_update,@function
gimp_image_prop_view_file_update:       # @gimp_image_prop_view_file_update
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	152(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	192(%rdi), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_image_prop_view_label_set_filename
	movq	-8(%rbp), %rsi
	movq	200(%rsi), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_image_prop_view_label_set_filesize
	movq	-8(%rbp), %rsi
	movq	208(%rsi), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_image_prop_view_label_set_filetype
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_image_prop_view_file_update, .Lfunc_end8-gimp_image_prop_view_file_update
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_prop_view_update,@function
gimp_image_prop_view_update:            # @gimp_image_prop_view_update
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
	subq	$736, %rsp              # imm = 0x2E0
	leaq	-344(%rbp), %rsi
	leaq	-352(%rbp), %rdx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	152(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_resolution
	leaq	-336(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movq	%rdi, -360(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	callq	gimp_image_get_height
	movabsq	$.L.str.13, %rdi
	movabsq	$.L.str.14, %rsi
	movslq	%eax, %rdx
	callq	ngettext
	movq	-16(%rbp), %rdi
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	gimp_image_get_width
	movq	-16(%rbp), %rdi
	movl	%eax, -372(%rbp)        # 4-byte Spill
	callq	gimp_image_get_height
	movl	$256, %ecx              # imm = 0x100
	movl	%ecx, %esi
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	-368(%rbp), %rdx        # 8-byte Reload
	movl	-372(%rbp), %ecx        # 4-byte Reload
	movl	%eax, %r8d
	movb	$0, %al
	callq	g_snprintf
	movq	-8(%rbp), %rdx
	movq	160(%rdx), %rdx
	movl	%eax, -376(%rbp)        # 4-byte Spill
	movq	%rdx, -384(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-336(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_text
	callq	gimp_get_default_unit
	movl	%eax, -24(%rbp)
	movl	-24(%rbp), %edi
	callq	gimp_unit_get_digits
	leaq	-80(%rbp), %rdi
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	-36(%rbp), %ecx
	addl	$1, %ecx
	movl	-24(%rbp), %r8d
	movq	%rdi, -392(%rbp)        # 8-byte Spill
	movl	%r8d, %edi
	movl	%ecx, -396(%rbp)        # 4-byte Spill
	movl	%eax, -400(%rbp)        # 4-byte Spill
	callq	gimp_unit_get_plural
	movl	$32, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.15, %rdx
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movl	-400(%rbp), %ecx        # 4-byte Reload
	movl	-396(%rbp), %r8d        # 4-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	g_snprintf
	leaq	-80(%rbp), %rdx
	leaq	-336(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	%rdi, -408(%rbp)        # 8-byte Spill
	movq	%rsi, %rdi
	movl	%eax, -412(%rbp)        # 4-byte Spill
	movq	%rdx, -424(%rbp)        # 8-byte Spill
	callq	gimp_image_get_width
	cvtsi2sdl	%eax, %xmm0
	movl	-24(%rbp), %edi
	movsd	-344(%rbp), %xmm1       # xmm1 = mem[0],zero
	callq	gimp_pixels_to_units
	movq	-16(%rbp), %rdi
	movsd	%xmm0, -432(%rbp)       # 8-byte Spill
	callq	gimp_image_get_height
	cvtsi2sdl	%eax, %xmm0
	movl	-24(%rbp), %edi
	movsd	-352(%rbp), %xmm1       # xmm1 = mem[0],zero
	callq	gimp_pixels_to_units
	movl	$256, %eax              # imm = 0x100
	movl	%eax, %esi
	movq	-408(%rbp), %rdi        # 8-byte Reload
	movq	-424(%rbp), %rdx        # 8-byte Reload
	movsd	-432(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm0, -440(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-440(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movb	$2, %al
	callq	g_snprintf
	movq	-8(%rbp), %rdx
	movq	168(%rdx), %rdx
	movl	%eax, -444(%rbp)        # 4-byte Spill
	movq	%rdx, -456(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-456(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-336(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_text
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_unit
	movl	%eax, -24(%rbp)
	movl	-24(%rbp), %edi
	callq	gimp_unit_get_factor
	movabsq	$.L.str.16, %rdi
	leaq	-80(%rbp), %rdx
	movsd	%xmm0, -32(%rbp)
	movq	%rdx, -464(%rbp)        # 8-byte Spill
	callq	gettext
	movl	-24(%rbp), %edi
	movq	%rax, -472(%rbp)        # 8-byte Spill
	callq	gimp_unit_get_abbreviation
	movl	$32, %ecx
	movl	%ecx, %esi
	movq	-464(%rbp), %rdi        # 8-byte Reload
	movq	-472(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	g_snprintf
	movabsq	$.L.str.17, %rdi
	leaq	-336(%rbp), %rcx
	movl	%eax, -476(%rbp)        # 4-byte Spill
	movq	%rcx, -488(%rbp)        # 8-byte Spill
	callq	gettext
	movsd	-344(%rbp), %xmm0       # xmm0 = mem[0],zero
	divsd	-32(%rbp), %xmm0
	movsd	-352(%rbp), %xmm1       # xmm1 = mem[0],zero
	divsd	-32(%rbp), %xmm1
	cmpl	$1, -24(%rbp)
	movq	%rax, -496(%rbp)        # 8-byte Spill
	movsd	%xmm0, -504(%rbp)       # 8-byte Spill
	movsd	%xmm1, -512(%rbp)       # 8-byte Spill
	jne	.LBB9_2
# BB#1:                                 # %cond.true
	movabsq	$.L.str.18, %rdi
	callq	gettext
	movq	%rax, -520(%rbp)        # 8-byte Spill
	jmp	.LBB9_3
.LBB9_2:                                # %cond.false
	leaq	-80(%rbp), %rax
	movq	%rax, -520(%rbp)        # 8-byte Spill
.LBB9_3:                                # %cond.end
	movq	-520(%rbp), %rax        # 8-byte Reload
	movl	$256, %ecx              # imm = 0x100
	movl	%ecx, %esi
	movb	$2, %dl
	movq	-488(%rbp), %rdi        # 8-byte Reload
	movq	-496(%rbp), %r8         # 8-byte Reload
	movb	%dl, -521(%rbp)         # 1-byte Spill
	movq	%r8, %rdx
	movsd	-504(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-512(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movq	%rax, %rcx
	movb	-521(%rbp), %al         # 1-byte Reload
	callq	g_snprintf
	movq	-8(%rbp), %rcx
	movq	176(%rcx), %rdi
	movl	%eax, -528(%rbp)        # 4-byte Spill
	movq	%rdi, -536(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-536(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-336(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_text
	movq	-16(%rbp), %rdi
	callq	gimp_image_base_type
	movl	%eax, -20(%rbp)
	callq	gimp_image_base_type_get_type
	movl	-20(%rbp), %esi
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	leaq	-48(%rbp), %r8
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	%rcx, -544(%rbp)        # 8-byte Spill
	movq	-544(%rbp), %r9         # 8-byte Reload
	callq	gimp_enum_get_value
	movl	-20(%rbp), %esi
	movl	%esi, %r10d
	subl	$2, %r10d
	movl	%eax, -548(%rbp)        # 4-byte Spill
	movl	%esi, -552(%rbp)        # 4-byte Spill
	movl	%r10d, -556(%rbp)       # 4-byte Spill
	jb	.LBB9_4
	jmp	.LBB9_7
.LBB9_7:                                # %cond.end
	movl	-552(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -560(%rbp)        # 4-byte Spill
	je	.LBB9_5
	jmp	.LBB9_6
.LBB9_4:                                # %sw.bb
	movl	$256, %eax              # imm = 0x100
	movl	%eax, %esi
	movabsq	$.L.str.19, %rdx
	leaq	-336(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movb	$0, %al
	callq	g_snprintf
	movl	%eax, -564(%rbp)        # 4-byte Spill
	jmp	.LBB9_6
.LBB9_5:                                # %sw.bb.48
	leaq	-336(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rdi, -576(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, -584(%rbp)        # 8-byte Spill
	callq	gimp_image_get_colormap_size
	movabsq	$.L.str.21, %rdi
	movl	%eax, -588(%rbp)        # 4-byte Spill
	callq	gettext
	movl	$256, %edx              # imm = 0x100
	movl	%edx, %esi
	movabsq	$.L.str.20, %rdx
	movq	-576(%rbp), %rdi        # 8-byte Reload
	movq	-584(%rbp), %rcx        # 8-byte Reload
	movl	-588(%rbp), %r8d        # 4-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	g_snprintf
	movl	%eax, -592(%rbp)        # 4-byte Spill
.LBB9_6:                                # %sw.epilog
	movq	-8(%rbp), %rax
	movq	184(%rax), %rax
	movq	%rax, -600(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-600(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-336(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_text
	movq	-8(%rbp), %rax
	movq	216(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -608(%rbp)        # 8-byte Spill
	movq	%rax, -616(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-616(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-608(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_image_prop_view_label_set_memsize
	movq	-8(%rbp), %rax
	movq	224(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -624(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_image_get_undo_stack
	movq	-624(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_image_prop_view_label_set_undo
	movq	-8(%rbp), %rax
	movq	232(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -632(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_image_get_redo_stack
	movq	-632(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_image_prop_view_label_set_undo
	leaq	-336(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -640(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_image_get_width
	movq	-16(%rbp), %rdi
	movl	%eax, -644(%rbp)        # 4-byte Spill
	callq	gimp_image_get_height
	movl	$256, %ecx              # imm = 0x100
	movl	%ecx, %esi
	movabsq	$.L.str.22, %rdx
	movl	-644(%rbp), %ecx        # 4-byte Reload
	imull	%eax, %ecx
	movq	-640(%rbp), %rdi        # 8-byte Reload
	movb	$0, %al
	callq	g_snprintf
	movq	-8(%rbp), %rdx
	movq	240(%rdx), %rdx
	movl	%eax, -648(%rbp)        # 4-byte Spill
	movq	%rdx, -656(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-656(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-336(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_text
	leaq	-336(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -664(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_image_get_n_layers
	movl	$256, %ecx              # imm = 0x100
	movl	%ecx, %esi
	movabsq	$.L.str.22, %rdx
	movq	-664(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %ecx
	movb	$0, %al
	callq	g_snprintf
	movq	-8(%rbp), %rdx
	movq	248(%rdx), %rdx
	movl	%eax, -668(%rbp)        # 4-byte Spill
	movq	%rdx, -680(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-680(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-336(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_text
	leaq	-336(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -688(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_image_get_n_channels
	movl	$256, %ecx              # imm = 0x100
	movl	%ecx, %esi
	movabsq	$.L.str.22, %rdx
	movq	-688(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %ecx
	movb	$0, %al
	callq	g_snprintf
	movq	-8(%rbp), %rdx
	movq	256(%rdx), %rdx
	movl	%eax, -692(%rbp)        # 4-byte Spill
	movq	%rdx, -704(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-704(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-336(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_text
	leaq	-336(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -712(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_image_get_n_vectors
	movl	$256, %ecx              # imm = 0x100
	movl	%ecx, %esi
	movabsq	$.L.str.22, %rdx
	movq	-712(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %ecx
	movb	$0, %al
	callq	g_snprintf
	movq	-8(%rbp), %rdx
	movq	264(%rdx), %rdx
	movl	%eax, -716(%rbp)        # 4-byte Spill
	movq	%rdx, -728(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-728(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-336(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_text
	addq	$736, %rsp              # imm = 0x2E0
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_image_prop_view_update, .Lfunc_end9-gimp_image_prop_view_update
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_prop_view_undo_event,@function
gimp_image_prop_view_undo_event:        # @gimp_image_prop_view_undo_event
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_image_prop_view_update
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_image_prop_view_undo_event, .Lfunc_end10-gimp_image_prop_view_undo_event
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_prop_view_label_set_filename,@function
gimp_image_prop_view_label_set_filename: # @gimp_image_prop_view_label_set_filename
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_any_uri
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB11_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rdi
	callq	file_utils_uri_display_name
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_label_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_text
	movq	-32(%rbp), %rdi
	callq	g_free
	jmp	.LBB11_3
.LBB11_2:                               # %if.else
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_label_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	gtk_label_set_text
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_parent
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	movq	-56(%rbp), %rdx         # 8-byte Reload
	callq	gimp_help_set_help_data
.LBB11_3:                               # %if.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_image_prop_view_label_set_filename, .Lfunc_end11-gimp_image_prop_view_label_set_filename
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_prop_view_label_set_filesize,@function
gimp_image_prop_view_label_set_filesize: # @gimp_image_prop_view_label_set_filesize
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_any_uri
	movq	%rax, -24(%rbp)
	movq	$0, -32(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB12_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rdi
	callq	g_file_new_for_uri
	movq	%rax, -32(%rbp)
.LBB12_2:                               # %if.end
	cmpq	$0, -32(%rbp)
	je	.LBB12_7
# BB#3:                                 # %if.then.3
	movabsq	$.L.str.12, %rsi
	xorl	%edx, %edx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rdi
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	movq	-64(%rbp), %r8          # 8-byte Reload
	callq	g_file_query_info
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB12_5
# BB#4:                                 # %if.then.6
	movq	-40(%rbp), %rdi
	callq	g_file_info_get_size
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	g_format_size
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_label_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_text
	movq	-56(%rbp), %rdi
	callq	g_free
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	jmp	.LBB12_6
.LBB12_5:                               # %if.else
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_label_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	gtk_label_set_text
.LBB12_6:                               # %if.end.13
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	jmp	.LBB12_8
.LBB12_7:                               # %if.else.14
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_label_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	gtk_label_set_text
.LBB12_8:                               # %if.end.17
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_image_prop_view_label_set_filesize, .Lfunc_end12-gimp_image_prop_view_label_set_filesize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_prop_view_label_set_filetype,@function
gimp_image_prop_view_label_set_filetype: # @gimp_image_prop_view_label_set_filetype
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	32(%rsi), %rsi
	movq	376(%rsi), %rsi
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_save_proc
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB13_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_load_proc
	movq	%rax, -32(%rbp)
.LBB13_2:                               # %if.end
	cmpq	$0, -32(%rbp)
	jne	.LBB13_6
# BB#3:                                 # %if.then.3
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_filename
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB13_5
# BB#4:                                 # %if.then.6
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rcx
	movq	64(%rcx), %rdi
	movq	-40(%rbp), %rsi
	callq	file_procedure_find
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rdi
	callq	g_free
.LBB13_5:                               # %if.end.8
	jmp	.LBB13_6
.LBB13_6:                               # %if.end.9
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_label_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	cmpq	$0, -32(%rbp)
	movq	%rax, -56(%rbp)         # 8-byte Spill
	je	.LBB13_8
# BB#7:                                 # %cond.true
	movq	-32(%rbp), %rdi
	callq	gimp_plug_in_procedure_get_label
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB13_9
.LBB13_8:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	jmp	.LBB13_9
.LBB13_9:                               # %cond.end
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_label_set_text
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_image_prop_view_label_set_filetype, .Lfunc_end13-gimp_image_prop_view_label_set_filetype
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_prop_view_label_set_memsize,@function
gimp_image_prop_view_label_set_memsize: # @gimp_image_prop_view_label_set_memsize
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
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rcx, %rsi
	callq	gimp_object_get_memsize
	movq	%rax, %rdi
	callq	g_format_size
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_label_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_text
	movq	-24(%rbp), %rdi
	callq	g_free
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_image_prop_view_label_set_memsize, .Lfunc_end14-gimp_image_prop_view_label_set_memsize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_prop_view_label_set_undo,@function
gimp_image_prop_view_label_set_undo:    # @gimp_image_prop_view_label_set_undo
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
	subq	$352, %rsp              # imm = 0x160
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_undo_stack_get_depth
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jle	.LBB15_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_object_get_memsize
	movq	%rax, %rdi
	callq	g_format_size
	movl	$256, %ecx              # imm = 0x100
	movl	%ecx, %esi
	movabsq	$.L.str.23, %rdx
	leaq	-304(%rbp), %rdi
	movq	%rax, -40(%rbp)
	movl	-20(%rbp), %ecx
	movq	-40(%rbp), %r8
	movb	$0, %al
	callq	g_snprintf
	movq	-40(%rbp), %rdi
	movl	%eax, -316(%rbp)        # 4-byte Spill
	callq	g_free
	movq	-8(%rbp), %rdx
	movq	%rdx, -328(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-304(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_text
	jmp	.LBB15_3
.LBB15_2:                               # %if.else
	movq	-8(%rbp), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.24, %rdi
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_label_set_text
.LBB15_3:                               # %if.end
	addq	$352, %rsp              # imm = 0x160
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_image_prop_view_label_set_undo, .Lfunc_end15-gimp_image_prop_view_label_set_undo
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB16_2
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
.LBB16_2:                               # %entry
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
.Lfunc_end16:
	.size	g_warning, .Lfunc_end16-g_warning
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI17_0:
	.quad	4602678819172646912     # double 0.5
.LCPI17_1:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gimp_image_prop_view_add_label,@function
gimp_image_prop_view_add_label:         # @gimp_image_prop_view_add_label
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
	pushq	%r14
	pushq	%rbx
	subq	$96, %rsp
.Ltmp54:
	.cfi_offset %rbx, -32
.Ltmp55:
	.cfi_offset %r14, -24
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	callq	gtk_label_get_type
	movabsq	$.L.str.41, %rsi
	movabsq	$.L.str.42, %rcx
	movsd	.LCPI17_1, %xmm0        # xmm0 = mem[0],zero
	movabsq	$.L.str.43, %r8
	movsd	.LCPI17_0, %xmm1        # xmm1 = mem[0],zero
	xorl	%r9d, %r9d
                                        # kill: R9<def> R9D<kill>
	movq	-40(%rbp), %rdx
	movq	%rax, %rdi
	movb	$2, %al
	callq	g_object_new
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_label_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4, %esi
	movl	$700, %edx              # imm = 0x2BC
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_label_set_attributes
	xorl	%edx, %edx
	movl	$1, %ecx
	movl	$4, %esi
	movq	-24(%rbp), %rdi
	movq	-56(%rbp), %r8
	movl	-28(%rbp), %r10d
	movl	-28(%rbp), %r11d
	addl	$1, %r11d
	movl	%esi, -68(%rbp)         # 4-byte Spill
	movq	%r8, %rsi
	movl	%r10d, %r8d
	movl	%r11d, %r9d
	movl	$4, (%rsp)
	movl	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	callq	gtk_table_attach
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	callq	gtk_label_get_type
	movabsq	$.L.str.42, %rsi
	xorps	%xmm0, %xmm0
	movabsq	$.L.str.43, %rdx
	movsd	.LCPI17_0, %xmm1        # xmm1 = mem[0],zero
	movabsq	$.L.str.44, %rcx
	movl	$1, %r8d
	xorl	%r9d, %r9d
                                        # kill: R9<def> R9D<kill>
	movq	%rax, %rdi
	movb	$2, %al
	callq	g_object_new
	movl	$1, %edx
	movl	$2, %ecx
	movl	$5, %r8d
	movl	$4, %r10d
	xorl	%r11d, %r11d
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movl	-28(%rbp), %ebx
	movl	-28(%rbp), %r14d
	addl	$1, %r14d
	movl	%r8d, -72(%rbp)         # 4-byte Spill
	movl	%ebx, %r8d
	movl	%r14d, %r9d
	movl	$5, (%rsp)
	movl	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%r11d, -76(%rbp)        # 4-byte Spill
	movl	%r10d, -80(%rbp)        # 4-byte Spill
	callq	gtk_table_attach
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movq	-48(%rbp), %rax
	addq	$96, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_image_prop_view_add_label, .Lfunc_end17-gimp_image_prop_view_add_label
	.cfi_endproc

	.type	gimp_image_prop_view_get_type.g_define_type_id__volatile,@object # @gimp_image_prop_view_get_type.g_define_type_id__volatile
	.local	gimp_image_prop_view_get_type.g_define_type_id__volatile
	.comm	gimp_image_prop_view_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpImagePropView"
	.size	.L.str, 18

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Widgets"
	.size	.L.str.1, 13

	.type	.L__func__.gimp_image_prop_view_new,@object # @__func__.gimp_image_prop_view_new
.L__func__.gimp_image_prop_view_new:
	.asciz	"gimp_image_prop_view_new"
	.size	.L__func__.gimp_image_prop_view_new, 25

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_IMAGE (image)"
	.size	.L.str.2, 22

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"image"
	.size	.L.str.3, 6

	.type	gimp_image_prop_view_parent_class,@object # @gimp_image_prop_view_parent_class
	.local	gimp_image_prop_view_parent_class
	.comm	gimp_image_prop_view_parent_class,8,8
	.type	GimpImagePropView_private_offset,@object # @GimpImagePropView_private_offset
	.local	GimpImagePropView_private_offset
	.comm	GimpImagePropView_private_offset,4,4
	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"gimpimagepropview.c"
	.size	.L.str.4, 20

	.type	.L__func__.gimp_image_prop_view_constructed,@object # @__func__.gimp_image_prop_view_constructed
.L__func__.gimp_image_prop_view_constructed:
	.asciz	"gimp_image_prop_view_constructed"
	.size	.L__func__.gimp_image_prop_view_constructed, 33

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"view->image != NULL"
	.size	.L.str.5, 20

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"name-changed"
	.size	.L.str.6, 13

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"size-changed"
	.size	.L.str.7, 13

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"resolution-changed"
	.size	.L.str.8, 19

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"unit-changed"
	.size	.L.str.9, 13

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"mode-changed"
	.size	.L.str.10, 13

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"undo-event"
	.size	.L.str.11, 11

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"standard::size"
	.size	.L.str.12, 15

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"%d \303\227 %d pixel"
	.size	.L.str.13, 15

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"%d \303\227 %d pixels"
	.size	.L.str.14, 16

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"%%.%df \303\227 %%.%df %s"
	.size	.L.str.15, 20

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"pixels/%s"
	.size	.L.str.16, 10

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"%g \303\227 %g %s"
	.size	.L.str.17, 12

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"ppi"
	.size	.L.str.18, 4

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"%s"
	.size	.L.str.19, 3

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"%s (%d %s)"
	.size	.L.str.20, 11

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"colors"
	.size	.L.str.21, 7

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"%d"
	.size	.L.str.22, 3

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"%d (%s)"
	.size	.L.str.23, 8

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"None"
	.size	.L.str.24, 5

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.25, 54

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"property"
	.size	.L.str.26, 9

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"Size in pixels:"
	.size	.L.str.27, 16

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"Print size:"
	.size	.L.str.28, 12

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"Resolution:"
	.size	.L.str.29, 12

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"Color space:"
	.size	.L.str.30, 13

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"File Name:"
	.size	.L.str.31, 11

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"File Size:"
	.size	.L.str.32, 11

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"File Type:"
	.size	.L.str.33, 11

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"Size in memory:"
	.size	.L.str.34, 16

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"Undo steps:"
	.size	.L.str.35, 12

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"Redo steps:"
	.size	.L.str.36, 12

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"Number of pixels:"
	.size	.L.str.37, 18

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"Number of layers:"
	.size	.L.str.38, 18

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"Number of channels:"
	.size	.L.str.39, 20

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"Number of paths:"
	.size	.L.str.40, 17

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"label"
	.size	.L.str.41, 6

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"xalign"
	.size	.L.str.42, 7

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"yalign"
	.size	.L.str.43, 7

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"selectable"
	.size	.L.str.44, 11


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
