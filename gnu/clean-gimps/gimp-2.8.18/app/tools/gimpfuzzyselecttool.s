	.text
	.file	"gimpfuzzyselecttool.bc"
	.globl	gimp_fuzzy_select_tool_get_type
	.align	16, 0x90
	.type	gimp_fuzzy_select_tool_get_type,@function
gimp_fuzzy_select_tool_get_type:        # @gimp_fuzzy_select_tool_get_type
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
	movq	gimp_fuzzy_select_tool_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_fuzzy_select_tool_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_region_select_tool_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$304, %ecx              # imm = 0x130
	movabsq	$gimp_fuzzy_select_tool_class_intern_init, %rdi
	movabsq	$gimp_fuzzy_select_tool_init, %rdx
	xorl	%esi, %esi
	movq	-40(%rbp), %r8          # 8-byte Reload
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%r8, %rdi
	movl	%esi, -52(%rbp)         # 4-byte Spill
	movq	%rax, %rsi
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	movl	%ecx, %edx
	movq	-48(%rbp), %rax         # 8-byte Reload
	movl	%ecx, -68(%rbp)         # 4-byte Spill
	movq	%rax, %rcx
	movl	-68(%rbp), %r8d         # 4-byte Reload
	movq	-64(%rbp), %r9          # 8-byte Reload
	movl	$0, (%rsp)
	callq	g_type_register_static_simple
	movabsq	$gimp_fuzzy_select_tool_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_fuzzy_select_tool_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_fuzzy_select_tool_get_type, .Lfunc_end0-gimp_fuzzy_select_tool_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_fuzzy_select_tool_class_intern_init,@function
gimp_fuzzy_select_tool_class_intern_init: # @gimp_fuzzy_select_tool_class_intern_init
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
	movq	%rax, gimp_fuzzy_select_tool_parent_class
	cmpl	$0, GimpFuzzySelectTool_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpFuzzySelectTool_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_fuzzy_select_tool_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_fuzzy_select_tool_class_intern_init, .Lfunc_end1-gimp_fuzzy_select_tool_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_fuzzy_select_tool_init,@function
gimp_fuzzy_select_tool_init:            # @gimp_fuzzy_select_tool_init
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
	callq	gimp_tool_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$5, %esi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_set_tool_cursor
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_fuzzy_select_tool_init, .Lfunc_end2-gimp_fuzzy_select_tool_init
	.cfi_endproc

	.globl	gimp_fuzzy_select_tool_register
	.align	16, 0x90
	.type	gimp_fuzzy_select_tool_register,@function
gimp_fuzzy_select_tool_register:        # @gimp_fuzzy_select_tool_register
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
	subq	$128, %rsp
.Ltmp12:
	.cfi_offset %rbx, -48
.Ltmp13:
	.cfi_offset %r12, -40
.Ltmp14:
	.cfi_offset %r14, -32
.Ltmp15:
	.cfi_offset %r15, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-40(%rbp), %rsi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	gimp_fuzzy_select_tool_get_type
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_region_select_options_get_type
	movabsq	$.L.str.2, %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.3, %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$gimp_region_select_options_gui, %rdx
	xorl	%ecx, %ecx
	movabsq	$.L.str.1, %r8
	movabsq	$.L.str.4, %rsi
	movabsq	$.L.str.5, %rdi
	xorl	%r9d, %r9d
	movl	%r9d, %r10d
	movabsq	$.L.str.6, %r11
	movq	-48(%rbp), %rbx
	movq	-64(%rbp), %r14         # 8-byte Reload
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%r14, %rdi
	movq	-72(%rbp), %r15         # 8-byte Reload
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	movq	%r15, %rsi
	movq	-80(%rbp), %r9          # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	-88(%rbp), %r12         # 8-byte Reload
	movq	%r12, 16(%rsp)
	movq	$0, 24(%rsp)
	movq	%r11, 32(%rsp)
	movq	%r11, 40(%rsp)
	movq	%rbx, 48(%rsp)
	movq	-56(%rbp), %r11         # 8-byte Reload
	movq	%r10, -104(%rbp)        # 8-byte Spill
	callq	*%r11
	addq	$128, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_fuzzy_select_tool_register, .Lfunc_end3-gimp_fuzzy_select_tool_register
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_fuzzy_select_tool_class_init,@function
gimp_fuzzy_select_tool_class_init:      # @gimp_fuzzy_select_tool_class_init
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_region_select_tool_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movabsq	$.L.str.7, %rsi
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rax, -16(%rbp)
	callq	g_dpgettext
	movabsq	$gimp_fuzzy_select_tool_get_mask, %rdx
	movq	-16(%rbp), %rsi
	movq	%rax, 288(%rsi)
	movq	-16(%rbp), %rax
	movq	%rdx, 296(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_fuzzy_select_tool_class_init, .Lfunc_end4-gimp_fuzzy_select_tool_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_fuzzy_select_tool_get_mask,@function
gimp_fuzzy_select_tool_get_mask:        # @gimp_fuzzy_select_tool_get_mask
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
	pushq	%rbx
	subq	$152, %rsp
.Ltmp22:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tool_get_options
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_selection_options_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tool_get_options
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_region_select_options_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_display_get_image
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	gimp_image_get_active_drawable
	movq	%rax, -64(%rbp)
	movq	-16(%rbp), %rax
	movl	264(%rax), %ecx
	movl	%ecx, -68(%rbp)
	movq	-16(%rbp), %rax
	movl	268(%rax), %ecx
	movl	%ecx, -72(%rbp)
	movq	-48(%rbp), %rax
	cmpl	$0, 388(%rax)
	jne	.LBB5_2
# BB#1:                                 # %if.then
	movq	-64(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-76(%rbp), %rsi
	leaq	-80(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_item_get_offset
	movl	-76(%rbp), %ecx
	movl	-68(%rbp), %r8d
	subl	%ecx, %r8d
	movl	%r8d, -68(%rbp)
	movl	-80(%rbp), %ecx
	movl	-72(%rbp), %r8d
	subl	%ecx, %r8d
	movl	%r8d, -72(%rbp)
.LBB5_2:                                # %if.end
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-48(%rbp), %rax
	movl	388(%rax), %edx
	movq	-40(%rbp), %rax
	movl	356(%rax), %ecx
	movq	-48(%rbp), %rax
	cvttsd2si	392(%rax), %r8d
	movq	-48(%rbp), %rax
	movl	384(%rax), %r9d
	movq	-48(%rbp), %rax
	movl	400(%rax), %r10d
	movl	-68(%rbp), %r11d
	movl	-72(%rbp), %ebx
	movl	%r10d, (%rsp)
	movl	%r11d, 8(%rsp)
	movl	%ebx, 16(%rsp)
	callq	gimp_image_contiguous_region_by_seed
	addq	$152, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_fuzzy_select_tool_get_mask, .Lfunc_end5-gimp_fuzzy_select_tool_get_mask
	.cfi_endproc

	.type	gimp_fuzzy_select_tool_get_type.g_define_type_id__volatile,@object # @gimp_fuzzy_select_tool_get_type.g_define_type_id__volatile
	.local	gimp_fuzzy_select_tool_get_type.g_define_type_id__volatile
	.comm	gimp_fuzzy_select_tool_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpFuzzySelectTool"
	.size	.L.str, 20

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"gimp-fuzzy-select-tool"
	.size	.L.str.1, 23

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Fuzzy Select"
	.size	.L.str.2, 13

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Fuzzy Select Tool: Select a contiguous region on the basis of color"
	.size	.L.str.3, 68

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Fu_zzy Select"
	.size	.L.str.4, 14

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"U"
	.size	.L.str.5, 2

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gimp-tool-fuzzy-select"
	.size	.L.str.6, 23

	.type	gimp_fuzzy_select_tool_parent_class,@object # @gimp_fuzzy_select_tool_parent_class
	.local	gimp_fuzzy_select_tool_parent_class
	.comm	gimp_fuzzy_select_tool_parent_class,8,8
	.type	GimpFuzzySelectTool_private_offset,@object # @GimpFuzzySelectTool_private_offset
	.local	GimpFuzzySelectTool_private_offset
	.comm	GimpFuzzySelectTool_private_offset,4,4
	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"command\004Fuzzy Select"
	.size	.L.str.7, 21


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
