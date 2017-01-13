	.text
	.file	"gimperaser.bc"
	.globl	gimp_eraser_get_type
	.align	16, 0x90
	.type	gimp_eraser_get_type,@function
gimp_eraser_get_type:                   # @gimp_eraser_get_type
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
	movq	gimp_eraser_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_eraser_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_brush_core_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$248, %edx
	movabsq	$gimp_eraser_class_intern_init, %rdi
	movl	$6480, %r8d             # imm = 0x1950
	movabsq	$gimp_eraser_init, %rcx
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
	movabsq	$gimp_eraser_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_eraser_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_eraser_get_type, .Lfunc_end0-gimp_eraser_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_eraser_class_intern_init,@function
gimp_eraser_class_intern_init:          # @gimp_eraser_class_intern_init
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
	movq	%rax, gimp_eraser_parent_class
	cmpl	$0, GimpEraser_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpEraser_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_eraser_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_eraser_class_intern_init, .Lfunc_end1-gimp_eraser_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_eraser_init,@function
gimp_eraser_init:                       # @gimp_eraser_init
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
	.size	gimp_eraser_init, .Lfunc_end2-gimp_eraser_init
	.cfi_endproc

	.globl	gimp_eraser_register
	.align	16, 0x90
	.type	gimp_eraser_register,@function
gimp_eraser_register:                   # @gimp_eraser_register
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_eraser_get_type
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_eraser_options_get_type
	movabsq	$.L.str.2, %rdi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.1, %rcx
	movabsq	$.L.str.3, %r9
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	-40(%rbp), %rsi         # 8-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	%rax, %r8
	movq	-24(%rbp), %rax         # 8-byte Reload
	callq	*%rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_eraser_register, .Lfunc_end3-gimp_eraser_register
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_eraser_class_init,@function
gimp_eraser_class_init:                 # @gimp_eraser_class_init
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_paint_core_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_brush_core_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$gimp_eraser_paint, %rsi
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rsi, 176(%rax)
	movq	-24(%rbp), %rax
	movl	$1, 216(%rax)
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_eraser_class_init, .Lfunc_end4-gimp_eraser_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_eraser_paint,@function
gimp_eraser_paint:                      # @gimp_eraser_paint
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movl	%r9d, -40(%rbp)
	movl	-36(%rbp), %r8d
	subl	$1, %r8d
	movl	%r8d, -44(%rbp)         # 4-byte Spill
	jne	.LBB5_2
	jmp	.LBB5_1
.LBB5_1:                                # %sw.bb
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	callq	gimp_eraser_motion
	jmp	.LBB5_3
.LBB5_2:                                # %sw.default
	jmp	.LBB5_3
.LBB5_3:                                # %sw.epilog
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_eraser_paint, .Lfunc_end5-gimp_eraser_paint
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gimp_eraser_motion,@function
gimp_eraser_motion:                     # @gimp_eraser_motion
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
	subq	$256, %rsp              # imm = 0x100
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-24(%rbp), %rcx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	callq	gimp_eraser_options_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_context_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_brush_core_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	368(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	xorl	%esi, %esi
	movq	%rax, -80(%rbp)
	movq	-56(%rbp), %rdi
	callq	gimp_dynamics_get_output
	movq	%rax, -64(%rbp)
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	movq	-8(%rbp), %rcx
	movsd	264(%rcx), %xmm0        # xmm0 = mem[0],zero
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_paint_options_get_fade
	movsd	%xmm0, -88(%rbp)
	movq	-64(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_dynamics_output_get_linear_value
	xorps	%xmm1, %xmm1
	movsd	%xmm0, -96(%rbp)
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jne	.LBB6_2
	jp	.LBB6_2
# BB#1:                                 # %if.then
	jmp	.LBB6_8
.LBB6_2:                                # %if.end
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	callq	gimp_paint_core_get_paint_area
	movq	%rax, -104(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.LBB6_4
# BB#3:                                 # %if.then.17
	jmp	.LBB6_8
.LBB6_4:                                # %if.end.18
	movq	-80(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -184(%rbp)        # 8-byte Spill
	callq	gimp_drawable_type
	leaq	-108(%rbp), %rcx
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	-184(%rbp), %rsi        # 8-byte Reload
	movl	%eax, %edx
	callq	gimp_image_get_background
	movq	-104(%rbp), %rcx
	movl	(%rcx), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movb	$-1, -108(%rbp,%rcx)
	movq	-104(%rbp), %rdi
	callq	temp_buf_get_data
	leaq	-108(%rbp), %rsi
	movq	-104(%rbp), %rcx
	movl	4(%rcx), %edx
	movq	-104(%rbp), %rcx
	imull	8(%rcx), %edx
	movq	-104(%rbp), %rcx
	movl	(%rcx), %ecx
	movq	%rax, %rdi
	callq	color_pixels
	movl	$5, %esi
	movq	-56(%rbp), %rdi
	callq	gimp_dynamics_get_output
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_dynamics_output_get_linear_value
	movsd	%xmm0, -120(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gimp_brush_core_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movsd	.LCPI6_0, %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rsi
	movq	-32(%rbp), %rdx
	ucomisd	-96(%rbp), %xmm0
	movq	%rdx, -200(%rbp)        # 8-byte Spill
	movq	%rax, -208(%rbp)        # 8-byte Spill
	movq	%rsi, -216(%rbp)        # 8-byte Spill
	jbe	.LBB6_6
# BB#5:                                 # %cond.true
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -224(%rbp)       # 8-byte Spill
	jmp	.LBB6_7
.LBB6_6:                                # %cond.false
	movsd	.LCPI6_0, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -224(%rbp)       # 8-byte Spill
	jmp	.LBB6_7
.LBB6_7:                                # %cond.end
	movsd	-224(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movq	-48(%rbp), %rdi
	movsd	%xmm0, -232(%rbp)       # 8-byte Spill
	callq	gimp_context_get_opacity
	movl	$23, %eax
	movl	$25, %ecx
	movq	-40(%rbp), %rdi
	cmpl	$0, 472(%rdi)
	cmovnel	%ecx, %eax
	movq	-24(%rbp), %rdi
	movsd	%xmm0, -240(%rbp)       # 8-byte Spill
	movl	%eax, -244(%rbp)        # 4-byte Spill
	callq	gimp_paint_options_get_brush_mode
	movsd	-120(%rbp), %xmm2       # xmm2 = mem[0],zero
	movq	-24(%rbp), %rdi
	movl	384(%rdi), %r9d
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	-216(%rbp), %rsi        # 8-byte Reload
	movq	-200(%rbp), %rdx        # 8-byte Reload
	movsd	-232(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-240(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	-244(%rbp), %ecx        # 4-byte Reload
	movl	%eax, %r8d
	callq	gimp_brush_core_paste_canvas
.LBB6_8:                                # %return
	addq	$256, %rsp              # imm = 0x100
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_eraser_motion, .Lfunc_end6-gimp_eraser_motion
	.cfi_endproc

	.type	gimp_eraser_get_type.g_define_type_id__volatile,@object # @gimp_eraser_get_type.g_define_type_id__volatile
	.local	gimp_eraser_get_type.g_define_type_id__volatile
	.comm	gimp_eraser_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpEraser"
	.size	.L.str, 11

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"gimp-eraser"
	.size	.L.str.1, 12

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Eraser"
	.size	.L.str.2, 7

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gimp-tool-eraser"
	.size	.L.str.3, 17

	.type	gimp_eraser_parent_class,@object # @gimp_eraser_parent_class
	.local	gimp_eraser_parent_class
	.comm	gimp_eraser_parent_class,8,8
	.type	GimpEraser_private_offset,@object # @GimpEraser_private_offset
	.local	GimpEraser_private_offset
	.comm	GimpEraser_private_offset,4,4

	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
