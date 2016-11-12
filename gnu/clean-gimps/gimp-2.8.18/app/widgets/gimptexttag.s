	.text
	.file	"gimptexttag.bc"
	.globl	gimp_text_tag_get_size
	.align	16, 0x90
	.type	gimp_text_tag_get_size,@function
gimp_text_tag_get_size:                 # @gimp_text_tag_get_size
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gtk_text_tag_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_text_tag_get_size, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB0_13
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	movabsq	$.L.str.2, %rsi
	leaq	-20(%rbp), %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdi
	movb	$0, %al
	callq	g_object_get
	movl	-20(%rbp), %r8d
	movl	%r8d, -4(%rbp)
.LBB0_13:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_text_tag_get_size, .Lfunc_end0-gimp_text_tag_get_size
	.cfi_endproc

	.globl	gimp_text_tag_get_baseline
	.align	16, 0x90
	.type	gimp_text_tag_get_baseline,@function
gimp_text_tag_get_baseline:             # @gimp_text_tag_get_baseline
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
	movabsq	$.L.str.3, %rsi
	leaq	-12(%rbp), %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movb	$0, %al
	callq	g_object_get
	movl	-12(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_text_tag_get_baseline, .Lfunc_end1-gimp_text_tag_get_baseline
	.cfi_endproc

	.globl	gimp_text_tag_get_kerning
	.align	16, 0x90
	.type	gimp_text_tag_get_kerning,@function
gimp_text_tag_get_kerning:              # @gimp_text_tag_get_kerning
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
	subq	$16, %rsp
	movabsq	$.L.str.3, %rsi
	leaq	-12(%rbp), %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movb	$0, %al
	callq	g_object_get
	movl	-12(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_text_tag_get_kerning, .Lfunc_end2-gimp_text_tag_get_kerning
	.cfi_endproc

	.globl	gimp_text_tag_get_font
	.align	16, 0x90
	.type	gimp_text_tag_get_font,@function
gimp_text_tag_get_font:                 # @gimp_text_tag_get_font
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
	subq	$16, %rsp
	movabsq	$.L.str.4, %rsi
	leaq	-16(%rbp), %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movb	$0, %al
	callq	g_object_get
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_text_tag_get_font, .Lfunc_end3-gimp_text_tag_get_font
	.cfi_endproc

	.globl	gimp_text_tag_get_color
	.align	16, 0x90
	.type	gimp_text_tag_get_color,@function
gimp_text_tag_get_color:                # @gimp_text_tag_get_color
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
	movabsq	$.L.str.5, %rax
	leaq	-24(%rbp), %rdx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_object_get
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_rgb_set_gdk_color
	movq	-24(%rbp), %rdi
	callq	gdk_color_free
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_text_tag_get_color, .Lfunc_end4-gimp_text_tag_get_color
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Widgets"
	.size	.L.str, 13

	.type	.L__func__.gimp_text_tag_get_size,@object # @__func__.gimp_text_tag_get_size
.L__func__.gimp_text_tag_get_size:
	.asciz	"gimp_text_tag_get_size"
	.size	.L__func__.gimp_text_tag_get_size, 23

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GTK_IS_TEXT_TAG (tag)"
	.size	.L.str.1, 22

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"size"
	.size	.L.str.2, 5

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"rise"
	.size	.L.str.3, 5

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"font"
	.size	.L.str.4, 5

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"foreground-gdk"
	.size	.L.str.5, 15


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
