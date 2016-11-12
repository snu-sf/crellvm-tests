	.text
	.file	"gimpellipseselecttool.bc"
	.globl	gimp_ellipse_select_tool_get_type
	.align	16, 0x90
	.type	gimp_ellipse_select_tool_get_type,@function
gimp_ellipse_select_tool_get_type:      # @gimp_ellipse_select_tool_get_type
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
	movq	gimp_ellipse_select_tool_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_ellipse_select_tool_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_rectangle_select_tool_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$296, %edx              # imm = 0x128
	movabsq	$gimp_ellipse_select_tool_class_intern_init, %rdi
	movl	$272, %r8d              # imm = 0x110
	movabsq	$gimp_ellipse_select_tool_init, %rcx
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
	movabsq	$gimp_ellipse_select_tool_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_ellipse_select_tool_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_ellipse_select_tool_get_type, .Lfunc_end0-gimp_ellipse_select_tool_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_ellipse_select_tool_class_intern_init,@function
gimp_ellipse_select_tool_class_intern_init: # @gimp_ellipse_select_tool_class_intern_init
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
	movq	%rax, gimp_ellipse_select_tool_parent_class
	cmpl	$0, GimpEllipseSelectTool_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpEllipseSelectTool_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_ellipse_select_tool_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_ellipse_select_tool_class_intern_init, .Lfunc_end1-gimp_ellipse_select_tool_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_ellipse_select_tool_init,@function
gimp_ellipse_select_tool_init:          # @gimp_ellipse_select_tool_init
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
	movl	$2, %esi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_set_tool_cursor
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_ellipse_select_tool_init, .Lfunc_end2-gimp_ellipse_select_tool_init
	.cfi_endproc

	.globl	gimp_ellipse_select_tool_register
	.align	16, 0x90
	.type	gimp_ellipse_select_tool_register,@function
gimp_ellipse_select_tool_register:      # @gimp_ellipse_select_tool_register
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
	callq	gimp_ellipse_select_tool_get_type
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_rectangle_select_options_get_type
	movabsq	$.L.str.2, %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.3, %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$gimp_rectangle_select_options_gui, %rdx
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
	.size	gimp_ellipse_select_tool_register, .Lfunc_end3-gimp_ellipse_select_tool_register
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_ellipse_select_tool_class_init,@function
gimp_ellipse_select_tool_class_init:    # @gimp_ellipse_select_tool_class_init
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_rectangle_select_tool_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$gimp_ellipse_select_tool_select, %rsi
	movabsq	$gimp_ellipse_select_tool_draw, %rdi
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rdi, 280(%rax)
	movq	-24(%rbp), %rax
	movq	%rsi, 288(%rax)
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_ellipse_select_tool_class_init, .Lfunc_end4-gimp_ellipse_select_tool_class_init
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_0:
	.quad	4618760256179416344     # double 6.2831853071795862
	.text
	.align	16, 0x90
	.type	gimp_ellipse_select_tool_draw,@function
gimp_ellipse_select_tool_draw:          # @gimp_ellipse_select_tool_draw
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
	pushq	%r14
	pushq	%rbx
	subq	$96, %rsp
.Ltmp22:
	.cfi_offset %rbx, -32
.Ltmp23:
	.cfi_offset %r14, -24
	movq	%rdi, -24(%rbp)
	movq	gimp_ellipse_select_tool_parent_class, %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	280(%rax), %rax
	movq	-24(%rbp), %rdi
	callq	*%rax
	movabsq	$.L.str.7, %rsi
	leaq	-28(%rbp), %rdx
	movabsq	$.L.str.8, %rcx
	leaq	-32(%rbp), %r8
	movabsq	$.L.str.9, %r9
	leaq	-36(%rbp), %rax
	movabsq	$.L.str.10, %rdi
	leaq	-40(%rbp), %r10
	xorl	%r11d, %r11d
	movl	%r11d, %ebx
	movq	-24(%rbp), %r14
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%r14, %rdi
	movq	%rax, (%rsp)
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	%r10, 16(%rsp)
	movq	$0, 24(%rsp)
	movb	$0, %al
	movq	%rbx, -64(%rbp)         # 8-byte Spill
	callq	g_object_get
	xorl	%esi, %esi
	xorps	%xmm4, %xmm4
	movsd	.LCPI5_0, %xmm5         # xmm5 = mem[0],zero
	movq	-24(%rbp), %rdi
	cvtsi2sdl	-28(%rbp), %xmm0
	cvtsi2sdl	-32(%rbp), %xmm1
	movl	-36(%rbp), %r11d
	subl	-28(%rbp), %r11d
	cvtsi2sdl	%r11d, %xmm2
	movl	-40(%rbp), %r11d
	subl	-32(%rbp), %r11d
	cvtsi2sdl	%r11d, %xmm3
	callq	gimp_draw_tool_add_arc
	movq	%rax, -72(%rbp)         # 8-byte Spill
	addq	$96, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_ellipse_select_tool_draw, .Lfunc_end5-gimp_ellipse_select_tool_draw
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_ellipse_select_tool_select,@function
gimp_ellipse_select_tool_select:        # @gimp_ellipse_select_tool_select
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
	pushq	%rbx
	subq	$120, %rsp
.Ltmp27:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%r8d, -32(%rbp)
	movl	%r9d, -36(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tool_get_options
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_selection_options_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	56(%rax), %rdi
	callq	gimp_display_get_image
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	callq	gimp_image_get_mask
	movl	$1, %ecx
	movl	-24(%rbp), %esi
	movl	-28(%rbp), %edx
	movl	-32(%rbp), %r8d
	movl	-36(%rbp), %r9d
	movl	-20(%rbp), %r10d
	movq	-56(%rbp), %rdi
	movl	356(%rdi), %r11d
	movq	-56(%rbp), %rdi
	movl	360(%rdi), %ebx
	movq	-56(%rbp), %rdi
	movsd	368(%rdi), %xmm0        # xmm0 = mem[0],zero
	movq	-56(%rbp), %rdi
	movsd	368(%rdi), %xmm1        # xmm1 = mem[0],zero
	movq	%rax, %rdi
	movl	%ecx, -92(%rbp)         # 4-byte Spill
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	%r11d, (%rsp)
	movl	%ebx, 8(%rsp)
	movl	$1, 16(%rsp)
	callq	gimp_channel_select_ellipse
	addq	$120, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_ellipse_select_tool_select, .Lfunc_end6-gimp_ellipse_select_tool_select
	.cfi_endproc

	.type	gimp_ellipse_select_tool_get_type.g_define_type_id__volatile,@object # @gimp_ellipse_select_tool_get_type.g_define_type_id__volatile
	.local	gimp_ellipse_select_tool_get_type.g_define_type_id__volatile
	.comm	gimp_ellipse_select_tool_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpEllipseSelectTool"
	.size	.L.str, 22

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"gimp-ellipse-select-tool"
	.size	.L.str.1, 25

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Ellipse Select"
	.size	.L.str.2, 15

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Ellipse Select Tool: Select an elliptical region"
	.size	.L.str.3, 49

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"_Ellipse Select"
	.size	.L.str.4, 16

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"E"
	.size	.L.str.5, 2

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gimp-tool-ellipse-select"
	.size	.L.str.6, 25

	.type	gimp_ellipse_select_tool_parent_class,@object # @gimp_ellipse_select_tool_parent_class
	.local	gimp_ellipse_select_tool_parent_class
	.comm	gimp_ellipse_select_tool_parent_class,8,8
	.type	GimpEllipseSelectTool_private_offset,@object # @GimpEllipseSelectTool_private_offset
	.local	GimpEllipseSelectTool_private_offset
	.comm	GimpEllipseSelectTool_private_offset,4,4
	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"x1"
	.size	.L.str.7, 3

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"y1"
	.size	.L.str.8, 3

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"x2"
	.size	.L.str.9, 3

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"y2"
	.size	.L.str.10, 3


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
