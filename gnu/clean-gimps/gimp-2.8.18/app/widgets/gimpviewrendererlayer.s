	.text
	.file	"gimpviewrendererlayer.bc"
	.globl	gimp_view_renderer_layer_get_type
	.align	16, 0x90
	.type	gimp_view_renderer_layer_get_type,@function
gimp_view_renderer_layer_get_type:      # @gimp_view_renderer_layer_get_type
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
	movq	gimp_view_renderer_layer_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_view_renderer_layer_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_view_renderer_drawable_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$200, %edx
	movabsq	$gimp_view_renderer_layer_class_intern_init, %rdi
	movl	$152, %r8d
	movabsq	$gimp_view_renderer_layer_init, %rcx
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
	movabsq	$gimp_view_renderer_layer_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_view_renderer_layer_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_view_renderer_layer_get_type, .Lfunc_end0-gimp_view_renderer_layer_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_view_renderer_layer_class_intern_init,@function
gimp_view_renderer_layer_class_intern_init: # @gimp_view_renderer_layer_class_intern_init
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
	movq	%rax, gimp_view_renderer_layer_parent_class
	cmpl	$0, GimpViewRendererLayer_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpViewRendererLayer_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_view_renderer_layer_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_view_renderer_layer_class_intern_init, .Lfunc_end1-gimp_view_renderer_layer_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_view_renderer_layer_init,@function
gimp_view_renderer_layer_init:          # @gimp_view_renderer_layer_init
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
	.size	gimp_view_renderer_layer_init, .Lfunc_end2-gimp_view_renderer_layer_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_view_renderer_layer_class_init,@function
gimp_view_renderer_layer_class_init:    # @gimp_view_renderer_layer_class_init
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_view_renderer_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$gimp_view_renderer_layer_render, %rsi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rsi, 192(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_view_renderer_layer_class_init, .Lfunc_end3-gimp_view_renderer_layer_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_view_renderer_layer_render,@function
gimp_view_renderer_layer_render:        # @gimp_view_renderer_layer_render
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
	movq	%rsi, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	-8(%rbp), %rsi
	movq	40(%rsi), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_layer_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_layer_is_floating_sel
	cmpl	$0, %eax
	je	.LBB4_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.1, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB4_9
.LBB4_2:                                # %if.else
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_text_layer
	cmpl	$0, %eax
	je	.LBB4_4
# BB#3:                                 # %if.then.8
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdi
	callq	gimp_viewable_get_stock_id
	movq	%rax, -24(%rbp)
	jmp	.LBB4_8
.LBB4_4:                                # %if.else.11
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdi
	callq	gimp_viewable_get_children
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB4_7
# BB#5:                                 # %land.lhs.true
	movq	-32(%rbp), %rdi
	callq	gimp_container_get_n_children
	cmpl	$0, %eax
	jne	.LBB4_7
# BB#6:                                 # %if.then.16
	movabsq	$.L.str.2, %rax
	movq	%rax, -24(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.17
	jmp	.LBB4_9
.LBB4_9:                                # %if.end.18
	cmpq	$0, -24(%rbp)
	je	.LBB4_11
# BB#10:                                # %if.then.20
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	gimp_view_renderer_render_stock
	jmp	.LBB4_12
.LBB4_11:                               # %if.else.21
	movq	gimp_view_renderer_layer_parent_class, %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_view_renderer_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	192(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
.LBB4_12:                               # %if.end.24
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_view_renderer_layer_render, .Lfunc_end4-gimp_view_renderer_layer_render
	.cfi_endproc

	.type	gimp_view_renderer_layer_get_type.g_define_type_id__volatile,@object # @gimp_view_renderer_layer_get_type.g_define_type_id__volatile
	.local	gimp_view_renderer_layer_get_type.g_define_type_id__volatile
	.comm	gimp_view_renderer_layer_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpViewRendererLayer"
	.size	.L.str, 22

	.type	gimp_view_renderer_layer_parent_class,@object # @gimp_view_renderer_layer_parent_class
	.local	gimp_view_renderer_layer_parent_class
	.comm	gimp_view_renderer_layer_parent_class,8,8
	.type	GimpViewRendererLayer_private_offset,@object # @GimpViewRendererLayer_private_offset
	.local	GimpViewRendererLayer_private_offset
	.comm	GimpViewRendererLayer_private_offset,4,4
	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"gimp-floating-selection"
	.size	.L.str.1, 24

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"gtk-directory"
	.size	.L.str.2, 14


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
