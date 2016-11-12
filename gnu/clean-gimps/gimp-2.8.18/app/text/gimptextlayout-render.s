	.text
	.file	"gimptextlayout-render.bc"
	.globl	gimp_text_layout_render
	.align	16, 0x90
	.type	gimp_text_layout_render,@function
gimp_text_layout_render:                # @gimp_text_layout_render
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -96(%rbp)
	callq	gimp_text_layout_get_type
	movq	%rax, -104(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -108(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-96(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-104(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -108(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-96(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -108(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-108(%rbp), %eax
	movl	%eax, -112(%rbp)
	cmpl	$0, -112(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_text_layout_render, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_21
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	jmp	.LBB0_13
.LBB0_13:                               # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB0_15
# BB#14:                                # %if.then.13
	jmp	.LBB0_16
.LBB0_15:                               # %if.else.14
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_text_layout_render, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_21
.LBB0_16:                               # %if.end.15
	jmp	.LBB0_17
.LBB0_17:                               # %do.end.16
	movq	-16(%rbp), %rdi
	callq	cairo_save
	leaq	-84(%rbp), %rsi
	leaq	-88(%rbp), %rdx
	movq	-8(%rbp), %rdi
	callq	gimp_text_layout_get_offsets
	movq	-16(%rbp), %rdi
	cvtsi2sdl	-84(%rbp), %xmm0
	cvtsi2sdl	-88(%rbp), %xmm1
	callq	cairo_translate
	leaq	-80(%rbp), %rsi
	movq	-8(%rbp), %rdi
	callq	gimp_text_layout_get_transform
	leaq	-80(%rbp), %rsi
	movq	-16(%rbp), %rdi
	callq	cairo_transform
	movq	-8(%rbp), %rdi
	callq	gimp_text_layout_get_pango_layout
	movq	%rax, -32(%rbp)
	cmpl	$0, -24(%rbp)
	je	.LBB0_19
# BB#18:                                # %if.then.20
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	pango_cairo_layout_path
	jmp	.LBB0_20
.LBB0_19:                               # %if.else.21
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	pango_cairo_show_layout
.LBB0_20:                               # %if.end.22
	movq	-16(%rbp), %rdi
	callq	cairo_restore
.LBB0_21:                               # %return
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_text_layout_render, .Lfunc_end0-gimp_text_layout_render
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Text"
	.size	.L.str, 10

	.type	.L__func__.gimp_text_layout_render,@object # @__func__.gimp_text_layout_render
.L__func__.gimp_text_layout_render:
	.asciz	"gimp_text_layout_render"
	.size	.L__func__.gimp_text_layout_render, 24

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_TEXT_LAYOUT (layout)"
	.size	.L.str.1, 29

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"cr != NULL"
	.size	.L.str.2, 11


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
