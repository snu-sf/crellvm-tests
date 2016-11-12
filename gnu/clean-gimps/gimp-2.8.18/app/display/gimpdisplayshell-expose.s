	.text
	.file	"gimpdisplayshell-expose.bc"
	.globl	gimp_display_shell_expose_area
	.align	16, 0x90
	.type	gimp_display_shell_expose_area,@function
gimp_display_shell_expose_area:         # @gimp_display_shell_expose_area
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_display_shell_get_type
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
	movabsq	$.L__func__.gimp_display_shell_expose_area, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_13
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	movq	-8(%rbp), %rax
	movq	328(%rax), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %ecx
	movl	-24(%rbp), %r8d
	callq	gtk_widget_queue_draw_area
.LBB0_13:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_display_shell_expose_area, .Lfunc_end0-gimp_display_shell_expose_area
	.cfi_endproc

	.globl	gimp_display_shell_expose_region
	.align	16, 0x90
	.type	gimp_display_shell_expose_region,@function
gimp_display_shell_expose_region:       # @gimp_display_shell_expose_region
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB1_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB1_8
.LBB1_3:                                # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB1_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB1_7
.LBB1_6:                                # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB1_7:                                # %if.end
	jmp	.LBB1_8
.LBB1_8:                                # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB1_10
# BB#9:                                 # %if.then.8
	jmp	.LBB1_11
.LBB1_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_expose_region, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB1_24
.LBB1_11:                               # %if.end.10
	jmp	.LBB1_12
.LBB1_12:                               # %do.end
	jmp	.LBB1_13
.LBB1_13:                               # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB1_15
# BB#14:                                # %if.then.13
	jmp	.LBB1_16
.LBB1_15:                               # %if.else.14
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_expose_region, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB1_24
.LBB1_16:                               # %if.end.15
	jmp	.LBB1_17
.LBB1_17:                               # %do.end.16
	movq	-8(%rbp), %rax
	movq	328(%rax), %rdi
	callq	gtk_widget_get_realized
	cmpl	$0, %eax
	jne	.LBB1_19
# BB#18:                                # %if.then.19
	jmp	.LBB1_24
.LBB1_19:                               # %if.end.20
	callq	gdk_region_new
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	cairo_region_num_rectangles
	movl	%eax, -28(%rbp)
	movl	$0, -32(%rbp)
.LBB1_20:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB1_23
# BB#21:                                # %for.body
                                        #   in Loop: Header=BB1_20 Depth=1
	leaq	-72(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movl	-32(%rbp), %esi
	callq	cairo_region_get_rectangle
	leaq	-72(%rbp), %rdx
	movq	-24(%rbp), %rdi
	movq	%rdx, %rsi
	callq	gdk_region_union_with_rect
# BB#22:                                # %for.inc
                                        #   in Loop: Header=BB1_20 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB1_20
.LBB1_23:                               # %for.end
	movq	-8(%rbp), %rax
	movq	328(%rax), %rdi
	callq	gtk_widget_get_window
	movl	$1, %edx
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	gdk_window_invalidate_region
	movq	-24(%rbp), %rdi
	callq	gdk_region_destroy
.LBB1_24:                               # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_display_shell_expose_region, .Lfunc_end1-gimp_display_shell_expose_region
	.cfi_endproc

	.globl	gimp_display_shell_expose_full
	.align	16, 0x90
	.type	gimp_display_shell_expose_full,@function
gimp_display_shell_expose_full:         # @gimp_display_shell_expose_full
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
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB2_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB2_8
.LBB2_3:                                # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB2_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB2_7
.LBB2_6:                                # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB2_7:                                # %if.end
	jmp	.LBB2_8
.LBB2_8:                                # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB2_10
# BB#9:                                 # %if.then.8
	jmp	.LBB2_11
.LBB2_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_expose_full, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB2_13
.LBB2_11:                               # %if.end.10
	jmp	.LBB2_12
.LBB2_12:                               # %do.end
	movq	-8(%rbp), %rax
	movq	328(%rax), %rdi
	callq	gtk_widget_queue_draw
.LBB2_13:                               # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_display_shell_expose_full, .Lfunc_end2-gimp_display_shell_expose_full
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Display"
	.size	.L.str, 13

	.type	.L__func__.gimp_display_shell_expose_area,@object # @__func__.gimp_display_shell_expose_area
.L__func__.gimp_display_shell_expose_area:
	.asciz	"gimp_display_shell_expose_area"
	.size	.L__func__.gimp_display_shell_expose_area, 31

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_DISPLAY_SHELL (shell)"
	.size	.L.str.1, 30

	.type	.L__func__.gimp_display_shell_expose_region,@object # @__func__.gimp_display_shell_expose_region
.L__func__.gimp_display_shell_expose_region:
	.asciz	"gimp_display_shell_expose_region"
	.size	.L__func__.gimp_display_shell_expose_region, 33

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"region != NULL"
	.size	.L.str.2, 15

	.type	.L__func__.gimp_display_shell_expose_full,@object # @__func__.gimp_display_shell_expose_full
.L__func__.gimp_display_shell_expose_full:
	.asciz	"gimp_display_shell_expose_full"
	.size	.L__func__.gimp_display_shell_expose_full, 31


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
