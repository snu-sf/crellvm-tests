	.text
	.file	"gimpcairo-utils.bc"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.globl	gimp_cairo_set_focus_line_pattern
	.align	16, 0x90
	.type	gimp_cairo_set_focus_line_pattern,@function
gimp_cairo_set_focus_line_pattern:      # @gimp_cairo_set_focus_line_pattern
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
	movq	%rsi, -24(%rbp)
	movl	$0, -36(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB0_3
# BB#2:                                 # %if.then
	jmp	.LBB0_4
.LBB0_3:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_cairo_set_focus_line_pattern(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB0_24
.LBB0_4:                                # %if.end
	jmp	.LBB0_5
.LBB0_5:                                # %do.end
	jmp	.LBB0_6
.LBB0_6:                                # %do.body.2
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gtk_widget_get_type@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB0_8
# BB#7:                                 # %if.then.3
	movl	$0, -60(%rbp)
	jmp	.LBB0_13
.LBB0_8:                                # %if.else.4
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_11
# BB#9:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB0_11
# BB#10:                                # %if.then.8
	movl	$1, -60(%rbp)
	jmp	.LBB0_12
.LBB0_11:                               # %if.else.9
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -60(%rbp)
.LBB0_12:                               # %if.end.11
	jmp	.LBB0_13
.LBB0_13:                               # %if.end.12
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB0_15
# BB#14:                                # %if.then.14
	jmp	.LBB0_16
.LBB0_15:                               # %if.else.15
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_cairo_set_focus_line_pattern(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB0_24
.LBB0_16:                               # %if.end.16
	jmp	.LBB0_17
.LBB0_17:                               # %do.end.17
	leaq	.L.str.3(%rip), %rsi
	xorl	%eax, %eax
	movl	%eax, %ecx
	leaq	-32(%rbp), %rdx
	movq	-24(%rbp), %rdi
	movb	$0, %al
	callq	gtk_widget_style_get@PLT
	movq	-32(%rbp), %rcx
	cmpb	$0, (%rcx)
	je	.LBB0_23
# BB#18:                                # %if.then.19
	movl	$8, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rdi
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	callq	strlen@PLT
	movl	%eax, %ecx
	movl	%ecx, -68(%rbp)
	movslq	-68(%rbp), %rdi
	movq	-104(%rbp), %rsi        # 8-byte Reload
	callq	g_malloc_n@PLT
	xorps	%xmm0, %xmm0
	movq	%rax, -80(%rbp)
	movsd	%xmm0, -88(%rbp)
	movl	$0, -92(%rbp)
.LBB0_19:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-92(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jge	.LBB0_22
# BB#20:                                # %for.body
                                        #   in Loop: Header=BB0_19 Depth=1
	movslq	-92(%rbp), %rax
	movq	-32(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	movb	%dl, %sil
	cvtsi2sdl	%edx, %xmm0
	movslq	-92(%rbp), %rax
	movq	-80(%rbp), %rcx
	movsd	%xmm0, (%rcx,%rax,8)
	movslq	-92(%rbp), %rax
	movq	-32(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	cvtsi2sdl	%edx, %xmm0
	addsd	-88(%rbp), %xmm0
	movsd	%xmm0, -88(%rbp)
	movb	%sil, -105(%rbp)        # 1-byte Spill
# BB#21:                                # %for.inc
                                        #   in Loop: Header=BB0_19 Depth=1
	movl	-92(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -92(%rbp)
	jmp	.LBB0_19
.LBB0_22:                               # %for.end
	movsd	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movq	-16(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movl	-68(%rbp), %edx
	callq	cairo_set_dash@PLT
	movq	-80(%rbp), %rsi
	movq	%rsi, %rdi
	callq	g_free@PLT
	movl	$1, -36(%rbp)
.LBB0_23:                               # %if.end.37
	movq	-32(%rbp), %rdi
	callq	g_free@PLT
	movl	-36(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB0_24:                               # %return
	movl	-4(%rbp), %eax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_cairo_set_focus_line_pattern, .Lfunc_end0-gimp_cairo_set_focus_line_pattern
	.cfi_endproc

	.globl	gimp_cairo_surface_create_from_pixbuf
	.align	16, 0x90
	.type	gimp_cairo_surface_create_from_pixbuf,@function
gimp_cairo_surface_create_from_pixbuf:  # @gimp_cairo_surface_create_from_pixbuf
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
	subq	$176, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gdk_pixbuf_get_type@PLT
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB1_3
# BB#2:                                 # %if.then
	movl	$0, -92(%rbp)
	jmp	.LBB1_8
.LBB1_3:                                # %if.else
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_6
# BB#4:                                 # %land.lhs.true
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB1_6
# BB#5:                                 # %if.then.3
	movl	$1, -92(%rbp)
	jmp	.LBB1_7
.LBB1_6:                                # %if.else.4
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -92(%rbp)
.LBB1_7:                                # %if.end
	jmp	.LBB1_8
.LBB1_8:                                # %if.end.6
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB1_10
# BB#9:                                 # %if.then.8
	jmp	.LBB1_11
.LBB1_10:                               # %if.else.9
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_cairo_surface_create_from_pixbuf(%rip), %rsi
	leaq	.L.str.4(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB1_40
.LBB1_11:                               # %if.end.10
	jmp	.LBB1_12
.LBB1_12:                               # %do.end
	movq	-16(%rbp), %rdi
	callq	gdk_pixbuf_get_width@PLT
	movl	%eax, -52(%rbp)
	movq	-16(%rbp), %rdi
	callq	gdk_pixbuf_get_height@PLT
	movl	%eax, -56(%rbp)
	movq	-16(%rbp), %rdi
	callq	gdk_pixbuf_get_n_channels@PLT
	movl	%eax, %ecx
	subl	$3, %eax
	movl	%ecx, -156(%rbp)        # 4-byte Spill
	movl	%eax, -160(%rbp)        # 4-byte Spill
	je	.LBB1_13
	jmp	.LBB1_41
.LBB1_41:                               # %do.end
	movl	-156(%rbp), %eax        # 4-byte Reload
	subl	$4, %eax
	movl	%eax, -164(%rbp)        # 4-byte Spill
	je	.LBB1_14
	jmp	.LBB1_15
.LBB1_13:                               # %sw.bb
	movl	$1, -28(%rbp)
	jmp	.LBB1_17
.LBB1_14:                               # %sw.bb.14
	movl	$0, -28(%rbp)
	jmp	.LBB1_17
.LBB1_15:                               # %sw.default
	jmp	.LBB1_16
.LBB1_16:                               # %do.body.15
	leaq	.L.str(%rip), %rdi
	leaq	.L.str.5(%rip), %rsi
	movl	$138, %edx
	leaq	.L__func__.gimp_cairo_surface_create_from_pixbuf(%rip), %rcx
	xorl	%eax, %eax
	movl	%eax, %r8d
	callq	g_assertion_message_expr@PLT
.LBB1_17:                               # %sw.epilog
	movl	-28(%rbp), %edi
	movl	-52(%rbp), %esi
	movl	-56(%rbp), %edx
	callq	cairo_image_surface_create@PLT
	movq	%rax, -24(%rbp)
	movq	%rax, %rdi
	callq	cairo_surface_flush@PLT
	movq	-16(%rbp), %rdi
	callq	gdk_pixbuf_get_pixels@PLT
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rdi
	callq	gdk_pixbuf_get_rowstride@PLT
	movl	%eax, -60(%rbp)
	movq	-24(%rbp), %rdi
	callq	cairo_image_surface_get_data@PLT
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rdi
	callq	cairo_image_surface_get_stride@PLT
	movl	%eax, -64(%rbp)
	movl	-28(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -168(%rbp)        # 4-byte Spill
	je	.LBB1_28
	jmp	.LBB1_42
.LBB1_42:                               # %sw.epilog
	movl	-168(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -172(%rbp)        # 4-byte Spill
	jne	.LBB1_38
	jmp	.LBB1_18
.LBB1_18:                               # %sw.bb.22
	movl	$0, -68(%rbp)
.LBB1_19:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_21 Depth 2
	movl	-68(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jge	.LBB1_27
# BB#20:                                # %for.body
                                        #   in Loop: Header=BB1_19 Depth=1
	movq	-48(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -112(%rbp)
	movl	-52(%rbp), %ecx
	movl	%ecx, -116(%rbp)
.LBB1_21:                               # %while.cond
                                        #   Parent Loop BB1_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-116(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -116(%rbp)
	cmpl	$0, %eax
	je	.LBB1_25
# BB#22:                                # %while.body
                                        #   in Loop: Header=BB1_21 Depth=2
	jmp	.LBB1_23
.LBB1_23:                               # %do.body.28
                                        #   in Loop: Header=BB1_21 Depth=2
	movq	-104(%rbp), %rax
	movb	2(%rax), %cl
	movq	-112(%rbp), %rax
	movb	%cl, (%rax)
	movq	-104(%rbp), %rax
	movb	1(%rax), %cl
	movq	-112(%rbp), %rax
	movb	%cl, 1(%rax)
	movq	-104(%rbp), %rax
	movb	(%rax), %cl
	movq	-112(%rbp), %rax
	movb	%cl, 2(%rax)
# BB#24:                                # %do.end.34
                                        #   in Loop: Header=BB1_21 Depth=2
	movq	-104(%rbp), %rax
	addq	$3, %rax
	movq	%rax, -104(%rbp)
	movq	-112(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -112(%rbp)
	jmp	.LBB1_21
.LBB1_25:                               # %while.end
                                        #   in Loop: Header=BB1_19 Depth=1
	movl	-60(%rbp), %eax
	movq	-48(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -48(%rbp)
	movl	-64(%rbp), %eax
	movq	-40(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -40(%rbp)
# BB#26:                                # %for.inc
                                        #   in Loop: Header=BB1_19 Depth=1
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB1_19
.LBB1_27:                               # %for.end
	jmp	.LBB1_39
.LBB1_28:                               # %sw.bb.39
	movl	$0, -68(%rbp)
.LBB1_29:                               # %for.cond.40
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_31 Depth 2
	movl	-68(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jge	.LBB1_37
# BB#30:                                # %for.body.42
                                        #   in Loop: Header=BB1_29 Depth=1
	movq	-48(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -136(%rbp)
	movl	-52(%rbp), %ecx
	movl	%ecx, -140(%rbp)
.LBB1_31:                               # %while.cond.49
                                        #   Parent Loop BB1_29 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-140(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -140(%rbp)
	cmpl	$0, %eax
	je	.LBB1_35
# BB#32:                                # %while.body.52
                                        #   in Loop: Header=BB1_31 Depth=2
	jmp	.LBB1_33
.LBB1_33:                               # %do.body.53
                                        #   in Loop: Header=BB1_31 Depth=2
	movq	-128(%rbp), %rax
	movzbl	3(%rax), %ecx
	movq	-128(%rbp), %rax
	movzbl	(%rax), %edx
	imull	%edx, %ecx
	addl	$128, %ecx
	movl	%ecx, -144(%rbp)
	movq	-128(%rbp), %rax
	movzbl	3(%rax), %ecx
	movq	-128(%rbp), %rax
	movzbl	1(%rax), %edx
	imull	%edx, %ecx
	addl	$128, %ecx
	movl	%ecx, -148(%rbp)
	movq	-128(%rbp), %rax
	movzbl	3(%rax), %ecx
	movq	-128(%rbp), %rax
	movzbl	2(%rax), %edx
	imull	%edx, %ecx
	addl	$128, %ecx
	movl	%ecx, -152(%rbp)
	movl	-152(%rbp), %ecx
	shrl	$8, %ecx
	addl	-152(%rbp), %ecx
	shrl	$8, %ecx
	movb	%cl, %sil
	movq	-136(%rbp), %rax
	movb	%sil, (%rax)
	movl	-148(%rbp), %ecx
	shrl	$8, %ecx
	addl	-148(%rbp), %ecx
	shrl	$8, %ecx
	movb	%cl, %sil
	movq	-136(%rbp), %rax
	movb	%sil, 1(%rax)
	movl	-144(%rbp), %ecx
	shrl	$8, %ecx
	addl	-144(%rbp), %ecx
	shrl	$8, %ecx
	movb	%cl, %sil
	movq	-136(%rbp), %rax
	movb	%sil, 2(%rax)
	movq	-128(%rbp), %rax
	movb	3(%rax), %sil
	movq	-136(%rbp), %rax
	movb	%sil, 3(%rax)
# BB#34:                                # %do.end.88
                                        #   in Loop: Header=BB1_31 Depth=2
	movq	-128(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -128(%rbp)
	movq	-136(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -136(%rbp)
	jmp	.LBB1_31
.LBB1_35:                               # %while.end.91
                                        #   in Loop: Header=BB1_29 Depth=1
	movl	-60(%rbp), %eax
	movq	-48(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -48(%rbp)
	movl	-64(%rbp), %eax
	movq	-40(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -40(%rbp)
# BB#36:                                # %for.inc.96
                                        #   in Loop: Header=BB1_29 Depth=1
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB1_29
.LBB1_37:                               # %for.end.98
	jmp	.LBB1_39
.LBB1_38:                               # %sw.default.99
	jmp	.LBB1_39
.LBB1_39:                               # %sw.epilog.100
	movq	-24(%rbp), %rdi
	callq	cairo_surface_mark_dirty@PLT
	movq	-24(%rbp), %rdi
	movq	%rdi, -8(%rbp)
.LBB1_40:                               # %return
	movq	-8(%rbp), %rax
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_cairo_surface_create_from_pixbuf, .Lfunc_end1-gimp_cairo_surface_create_from_pixbuf
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"LibGimpWidgets"
	.size	.L.str, 15

	.type	.L__func__.gimp_cairo_set_focus_line_pattern,@object # @__func__.gimp_cairo_set_focus_line_pattern
.L__func__.gimp_cairo_set_focus_line_pattern:
	.asciz	"gimp_cairo_set_focus_line_pattern"
	.size	.L__func__.gimp_cairo_set_focus_line_pattern, 34

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"cr != NULL"
	.size	.L.str.1, 11

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GTK_IS_WIDGET (widget)"
	.size	.L.str.2, 23

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"focus-line-pattern"
	.size	.L.str.3, 19

	.type	.L__func__.gimp_cairo_surface_create_from_pixbuf,@object # @__func__.gimp_cairo_surface_create_from_pixbuf
.L__func__.gimp_cairo_surface_create_from_pixbuf:
	.asciz	"gimp_cairo_surface_create_from_pixbuf"
	.size	.L__func__.gimp_cairo_surface_create_from_pixbuf, 38

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"GDK_IS_PIXBUF (pixbuf)"
	.size	.L.str.4, 23

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"gimpcairo-utils.c"
	.size	.L.str.5, 18


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
