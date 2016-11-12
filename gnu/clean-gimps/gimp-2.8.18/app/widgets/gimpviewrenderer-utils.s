	.text
	.file	"gimpviewrenderer-utils.bc"
	.globl	gimp_view_renderer_type_from_viewable_type
	.align	16, 0x90
	.type	gimp_view_renderer_type_from_viewable_type,@function
gimp_view_renderer_type_from_viewable_type: # @gimp_view_renderer_type_from_viewable_type
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
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	callq	gimp_view_renderer_get_type
	movq	%rax, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_is_a
	cmpl	$0, %eax
	je	.LBB0_3
# BB#2:                                 # %if.then
	jmp	.LBB0_4
.LBB0_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_view_renderer_type_from_viewable_type, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$4, -8(%rbp)
	jmp	.LBB0_32
.LBB0_4:                                # %if.end
	jmp	.LBB0_5
.LBB0_5:                                # %do.end
	movq	-16(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gimp_brush_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_is_a
	cmpl	$0, %eax
	je	.LBB0_7
# BB#6:                                 # %if.then.6
	callq	gimp_view_renderer_brush_get_type
	movq	%rax, -24(%rbp)
	jmp	.LBB0_31
.LBB0_7:                                # %if.else.8
	movq	-16(%rbp), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	callq	gimp_buffer_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_is_a
	cmpl	$0, %eax
	je	.LBB0_9
# BB#8:                                 # %if.then.12
	callq	gimp_view_renderer_buffer_get_type
	movq	%rax, -24(%rbp)
	jmp	.LBB0_30
.LBB0_9:                                # %if.else.14
	movq	-16(%rbp), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_is_a
	cmpl	$0, %eax
	je	.LBB0_11
# BB#10:                                # %if.then.18
	callq	gimp_view_renderer_image_get_type
	movq	%rax, -24(%rbp)
	jmp	.LBB0_29
.LBB0_11:                               # %if.else.20
	movq	-16(%rbp), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	callq	gimp_layer_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_is_a
	cmpl	$0, %eax
	je	.LBB0_13
# BB#12:                                # %if.then.24
	callq	gimp_view_renderer_layer_get_type
	movq	%rax, -24(%rbp)
	jmp	.LBB0_28
.LBB0_13:                               # %if.else.26
	movq	-16(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_is_a
	cmpl	$0, %eax
	je	.LBB0_15
# BB#14:                                # %if.then.30
	callq	gimp_view_renderer_drawable_get_type
	movq	%rax, -24(%rbp)
	jmp	.LBB0_27
.LBB0_15:                               # %if.else.32
	movq	-16(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gimp_gradient_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_is_a
	cmpl	$0, %eax
	je	.LBB0_17
# BB#16:                                # %if.then.36
	callq	gimp_view_renderer_gradient_get_type
	movq	%rax, -24(%rbp)
	jmp	.LBB0_26
.LBB0_17:                               # %if.else.38
	movq	-16(%rbp), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	callq	gimp_vectors_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_is_a
	cmpl	$0, %eax
	je	.LBB0_19
# BB#18:                                # %if.then.42
	callq	gimp_view_renderer_vectors_get_type
	movq	%rax, -24(%rbp)
	jmp	.LBB0_25
.LBB0_19:                               # %if.else.44
	movq	-16(%rbp), %rdi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	callq	gimp_imagefile_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_is_a
	cmpl	$0, %eax
	je	.LBB0_21
# BB#20:                                # %if.then.48
	callq	gimp_view_renderer_imagefile_get_type
	movq	%rax, -24(%rbp)
	jmp	.LBB0_24
.LBB0_21:                               # %if.else.50
	movq	-16(%rbp), %rdi
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	callq	gimp_palette_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_is_a
	cmpl	$0, %eax
	je	.LBB0_23
# BB#22:                                # %if.then.54
	callq	gimp_view_renderer_palette_get_type
	movq	%rax, -24(%rbp)
.LBB0_23:                               # %if.end.56
	jmp	.LBB0_24
.LBB0_24:                               # %if.end.57
	jmp	.LBB0_25
.LBB0_25:                               # %if.end.58
	jmp	.LBB0_26
.LBB0_26:                               # %if.end.59
	jmp	.LBB0_27
.LBB0_27:                               # %if.end.60
	jmp	.LBB0_28
.LBB0_28:                               # %if.end.61
	jmp	.LBB0_29
.LBB0_29:                               # %if.end.62
	jmp	.LBB0_30
.LBB0_30:                               # %if.end.63
	jmp	.LBB0_31
.LBB0_31:                               # %if.end.64
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB0_32:                               # %return
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_view_renderer_type_from_viewable_type, .Lfunc_end0-gimp_view_renderer_type_from_viewable_type
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Widgets"
	.size	.L.str, 13

	.type	.L__func__.gimp_view_renderer_type_from_viewable_type,@object # @__func__.gimp_view_renderer_type_from_viewable_type
.L__func__.gimp_view_renderer_type_from_viewable_type:
	.asciz	"gimp_view_renderer_type_from_viewable_type"
	.size	.L__func__.gimp_view_renderer_type_from_viewable_type, 43

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"g_type_is_a (viewable_type, GIMP_TYPE_VIEWABLE)"
	.size	.L.str.1, 48


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
