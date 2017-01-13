	.text
	.file	"gimpmenudock.bc"
	.globl	gimp_menu_dock_get_type
	.align	16, 0x90
	.type	gimp_menu_dock_get_type,@function
gimp_menu_dock_get_type:                # @gimp_menu_dock_get_type
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
	movq	gimp_menu_dock_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_menu_dock_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_dock_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$872, %edx              # imm = 0x368
	movabsq	$gimp_menu_dock_class_intern_init, %rdi
	movl	$144, %r8d
	movabsq	$gimp_menu_dock_init, %rcx
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
	movabsq	$gimp_menu_dock_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_menu_dock_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_menu_dock_get_type, .Lfunc_end0-gimp_menu_dock_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_menu_dock_class_intern_init,@function
gimp_menu_dock_class_intern_init:       # @gimp_menu_dock_class_intern_init
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
	movq	%rax, gimp_menu_dock_parent_class
	cmpl	$0, GimpMenuDock_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpMenuDock_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_menu_dock_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_menu_dock_class_intern_init, .Lfunc_end1-gimp_menu_dock_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_menu_dock_init,@function
gimp_menu_dock_init:                    # @gimp_menu_dock_init
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
	.size	gimp_menu_dock_init, .Lfunc_end2-gimp_menu_dock_init
	.cfi_endproc

	.globl	gimp_menu_dock_new
	.align	16, 0x90
	.type	gimp_menu_dock_new,@function
gimp_menu_dock_new:                     # @gimp_menu_dock_new
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
	callq	gimp_menu_dock_get_type
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_menu_dock_new, .Lfunc_end3-gimp_menu_dock_new
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_menu_dock_class_init,@function
gimp_menu_dock_class_init:              # @gimp_menu_dock_class_init
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$.L.str.1, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	xorl	%ecx, %ecx
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	movl	$200, %r9d
	movl	$225, %edx
	movabsq	$gimp_menu_dock_style_set, %r10
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%r10, 280(%rax)
	movq	-16(%rbp), %rax
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	movq	-32(%rbp), %r10         # 8-byte Reload
	movl	%edx, -36(%rbp)         # 4-byte Spill
	movq	%r10, %rdx
	movl	$225, (%rsp)
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	g_param_spec_int
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_widget_class_install_style_property
	movl	$4, %ecx
	movl	%ecx, %esi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_class_add_private
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_menu_dock_class_init, .Lfunc_end4-gimp_menu_dock_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_menu_dock_style_set,@function
gimp_menu_dock_style_set:               # @gimp_menu_dock_style_set
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
	movq	%rsi, -16(%rbp)
	movl	$-1, -20(%rbp)
	movq	gimp_menu_dock_parent_class, %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	280(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
	movabsq	$.L.str.1, %rsi
	leaq	-20(%rbp), %rdx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-8(%rbp), %rdi
	movb	$0, %al
	callq	gtk_widget_style_get
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	-8(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gtk_widget_set_size_request
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_menu_dock_style_set, .Lfunc_end5-gimp_menu_dock_style_set
	.cfi_endproc

	.type	gimp_menu_dock_get_type.g_define_type_id__volatile,@object # @gimp_menu_dock_get_type.g_define_type_id__volatile
	.local	gimp_menu_dock_get_type.g_define_type_id__volatile
	.comm	gimp_menu_dock_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpMenuDock"
	.size	.L.str, 13

	.type	gimp_menu_dock_parent_class,@object # @gimp_menu_dock_parent_class
	.local	gimp_menu_dock_parent_class
	.comm	gimp_menu_dock_parent_class,8,8
	.type	GimpMenuDock_private_offset,@object # @GimpMenuDock_private_offset
	.local	GimpMenuDock_private_offset
	.comm	GimpMenuDock_private_offset,4,4
	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"minimal-width"
	.size	.L.str.1, 14


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
