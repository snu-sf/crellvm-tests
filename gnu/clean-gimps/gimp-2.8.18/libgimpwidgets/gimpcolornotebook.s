	.text
	.file	"gimpcolornotebook.bc"
	.globl	gimp_color_notebook_get_type
	.align	16, 0x90
	.type	gimp_color_notebook_get_type,@function
gimp_color_notebook_get_type:           # @gimp_color_notebook_get_type
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
	movq	gimp_color_notebook_get_type.g_define_type_id__volatile(%rip), %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	leaq	gimp_color_notebook_get_type.g_define_type_id__volatile(%rip), %rax
	movq	%rax, %rdi
	callq	g_once_init_enter@PLT
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
	callq	gimp_color_selector_get_type@PLT
	leaq	.L.str(%rip), %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string@PLT
	movl	$968, %edx              # imm = 0x3C8
	leaq	gimp_color_notebook_class_intern_init(%rip), %rdi
	movl	$240, %r8d
	leaq	gimp_color_notebook_init(%rip), %rcx
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
	callq	g_type_register_static_simple@PLT
	leaq	gimp_color_notebook_get_type.g_define_type_id__volatile(%rip), %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave@PLT
.LBB0_4:                                # %if.end
	movq	gimp_color_notebook_get_type.g_define_type_id__volatile(%rip), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_color_notebook_get_type, .Lfunc_end0-gimp_color_notebook_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_notebook_class_intern_init,@function
gimp_color_notebook_class_intern_init:  # @gimp_color_notebook_class_intern_init
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
	callq	g_type_class_peek_parent@PLT
	movq	%rax, gimp_color_notebook_parent_class(%rip)
	cmpl	$0, GimpColorNotebook_private_offset(%rip)
	je	.LBB1_2
# BB#1:                                 # %if.then
	leaq	GimpColorNotebook_private_offset(%rip), %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset@PLT
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_color_notebook_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_color_notebook_class_intern_init, .Lfunc_end1-gimp_color_notebook_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_notebook_init,@function
gimp_color_notebook_init:               # @gimp_color_notebook_init
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	callq	gtk_notebook_new@PLT
	movq	-8(%rbp), %rdi
	movq	%rax, 216(%rdi)
	movq	-8(%rbp), %rax
	movq	216(%rax), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_notebook_get_type@PLT
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_notebook_popup_enable@PLT
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type@PLT
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-8(%rbp), %rsi
	movq	216(%rsi), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start@PLT
	movq	-8(%rbp), %rax
	movq	216(%rax), %rdi
	callq	gtk_widget_show@PLT
	leaq	.L.str.12(%rip), %rsi
	leaq	gimp_color_notebook_switch_page(%rip), %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdi
	movq	216(%rdi), %rdi
	movq	-8(%rbp), %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data@PLT
	leaq	.L.str.13(%rip), %rsi
	leaq	gimp_color_notebook_remove_selector(%rip), %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdx
	movq	216(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	g_signal_connect_data@PLT
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_color_selector_get_type@PLT
	leaq	-20(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_type_children@PLT
	movq	%rax, -16(%rbp)
	cmpl	$2, -20(%rbp)
	jne	.LBB2_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	216(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_notebook_get_type@PLT
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_notebook_set_show_tabs@PLT
	movq	-8(%rbp), %rax
	movq	216(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_notebook_get_type@PLT
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_notebook_set_show_border@PLT
.LBB2_2:                                # %if.end
	movl	$0, -24(%rbp)
.LBB2_3:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-24(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jae	.LBB2_10
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB2_3 Depth=1
	movl	-24(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	callq	gimp_color_notebook_get_type@PLT
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_is_a@PLT
	cmpl	$0, %eax
	je	.LBB2_6
# BB#5:                                 # %if.then.24
                                        #   in Loop: Header=BB2_3 Depth=1
	jmp	.LBB2_9
.LBB2_6:                                # %if.end.25
                                        #   in Loop: Header=BB2_3 Depth=1
	movl	-24(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rdi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	callq	gimp_color_scales_get_type@PLT
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_is_a@PLT
	cmpl	$0, %eax
	je	.LBB2_8
# BB#7:                                 # %if.then.31
                                        #   in Loop: Header=BB2_3 Depth=1
	jmp	.LBB2_9
.LBB2_8:                                # %if.end.32
                                        #   in Loop: Header=BB2_3 Depth=1
	movq	-8(%rbp), %rdi
	movl	-24(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rsi
	callq	gimp_color_notebook_add_page
	movq	%rax, -104(%rbp)        # 8-byte Spill
.LBB2_9:                                # %for.inc
                                        #   in Loop: Header=BB2_3 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB2_3
.LBB2_10:                               # %for.end
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free@PLT
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_color_notebook_init, .Lfunc_end2-gimp_color_notebook_init
	.cfi_endproc

	.globl	gimp_color_notebook_set_has_page
	.align	16, 0x90
	.type	gimp_color_notebook_set_has_page,@function
gimp_color_notebook_set_has_page:       # @gimp_color_notebook_set_has_page
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
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_color_notebook_get_type@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB3_8
.LBB3_3:                                # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB3_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB3_7
.LBB3_6:                                # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -60(%rbp)
.LBB3_7:                                # %if.end
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB3_10
# BB#9:                                 # %if.then.8
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_color_notebook_set_has_page(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB3_36
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	jmp	.LBB3_13
.LBB3_13:                               # %do.body.11
	movq	-24(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gimp_color_selector_get_type@PLT
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_is_a@PLT
	cmpl	$0, %eax
	je	.LBB3_15
# BB#14:                                # %if.then.15
	jmp	.LBB3_16
.LBB3_15:                               # %if.else.16
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_color_notebook_set_has_page(%rip), %rsi
	leaq	.L.str.3(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB3_36
.LBB3_16:                               # %if.end.17
	jmp	.LBB3_17
.LBB3_17:                               # %do.end.18
	jmp	.LBB3_18
.LBB3_18:                               # %do.body.19
	movq	-24(%rbp), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	callq	gimp_color_notebook_get_type@PLT
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_is_a@PLT
	cmpl	$0, %eax
	jne	.LBB3_20
# BB#19:                                # %if.then.23
	jmp	.LBB3_21
.LBB3_20:                               # %if.else.24
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_color_notebook_set_has_page(%rip), %rsi
	leaq	.L.str.4(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB3_36
.LBB3_21:                               # %if.end.25
	jmp	.LBB3_22
.LBB3_22:                               # %do.end.26
	movq	-16(%rbp), %rax
	movq	224(%rax), %rax
	movq	%rax, -40(%rbp)
.LBB3_23:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB3_33
# BB#24:                                # %for.body
                                        #   in Loop: Header=BB3_23 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB3_28
# BB#25:                                # %if.then.32
	cmpl	$0, -28(%rbp)
	je	.LBB3_27
# BB#26:                                # %if.then.34
	movq	-72(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB3_36
.LBB3_27:                               # %if.end.37
	movq	-16(%rbp), %rax
	movq	216(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type@PLT
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-72(%rbp), %rsi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	movq	%rsi, -120(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_container_remove@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB3_36
.LBB3_28:                               # %if.end.43
                                        #   in Loop: Header=BB3_23 Depth=1
	jmp	.LBB3_29
.LBB3_29:                               # %for.inc
                                        #   in Loop: Header=BB3_23 Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB3_31
# BB#30:                                # %cond.true
                                        #   in Loop: Header=BB3_23 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jmp	.LBB3_32
.LBB3_31:                               # %cond.false
                                        #   in Loop: Header=BB3_23 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	jmp	.LBB3_32
.LBB3_32:                               # %cond.end
                                        #   in Loop: Header=BB3_23 Depth=1
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%rax, -40(%rbp)
	jmp	.LBB3_23
.LBB3_33:                               # %for.end
	cmpl	$0, -28(%rbp)
	jne	.LBB3_35
# BB#34:                                # %if.then.46
	movq	$0, -8(%rbp)
	jmp	.LBB3_36
.LBB3_35:                               # %if.end.47
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_color_notebook_add_page
	movq	%rax, -8(%rbp)
.LBB3_36:                               # %return
	movq	-8(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_color_notebook_set_has_page, .Lfunc_end3-gimp_color_notebook_set_has_page
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_notebook_add_page,@function
gimp_color_notebook_add_page:           # @gimp_color_notebook_add_page
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
	subq	$208, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	callq	gimp_color_selector_get_type@PLT
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rax
	addq	$144, %rax
	movq	-32(%rbp), %rsi
	addq	$176, %rsi
	movq	-32(%rbp), %rcx
	movl	208(%rcx), %ecx
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movq	-88(%rbp), %rdx         # 8-byte Reload
	callq	gimp_color_selector_new@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB4_2
# BB#1:                                 # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB4_5
.LBB4_2:                                # %if.end
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_color_selector_get_type@PLT
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-16(%rbp), %rsi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	callq	gimp_color_selector_get_type@PLT
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	136(%rax), %esi
	movq	-104(%rbp), %rdi        # 8-byte Reload
	callq	gimp_color_selector_set_show_alpha@PLT
	xorl	%edi, %edi
	movl	$4, %esi
	callq	gtk_box_new@PLT
	movl	$1, %esi
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	840(%rax), %rdi
	callq	gtk_image_new_from_stock@PLT
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type@PLT
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%ecx, %ecx
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -124(%rbp)        # 4-byte Spill
	movl	-124(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start@PLT
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show@PLT
	leaq	.L.str.14(%rip), %rdi
	movq	-40(%rbp), %rax
	movq	824(%rax), %rsi
	callq	dgettext@PLT
	movq	%rax, %rdi
	callq	gtk_label_new@PLT
	movq	%rax, -72(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type@PLT
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%ecx, %ecx
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -140(%rbp)        # 4-byte Spill
	movl	-140(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start@PLT
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show@PLT
	movl	$4, %esi
	movq	-40(%rbp), %rax
	movq	840(%rax), %rdi
	callq	gtk_image_new_from_stock@PLT
	movq	%rax, -64(%rbp)
	movq	-16(%rbp), %rax
	movq	216(%rax), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_notebook_get_type@PLT
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-48(%rbp), %rsi
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rcx
	movq	%rax, %rdi
	callq	gtk_notebook_append_page_menu@PLT
	movq	-16(%rbp), %rcx
	cmpq	$0, 232(%rcx)
	movl	%eax, -156(%rbp)        # 4-byte Spill
	jne	.LBB4_4
# BB#3:                                 # %if.then.22
	movq	-48(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gimp_color_selector_get_type@PLT
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-16(%rbp), %rsi
	movq	%rax, 232(%rsi)
.LBB4_4:                                # %if.end.26
	movq	-16(%rbp), %rax
	movq	224(%rax), %rdi
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_append@PLT
	movq	-16(%rbp), %rsi
	movq	%rax, 224(%rsi)
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show@PLT
	leaq	.L.str.15(%rip), %rsi
	leaq	gimp_color_notebook_color_changed(%rip), %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-48(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movq	%rdx, -176(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-176(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data@PLT
	leaq	.L.str.16(%rip), %rsi
	leaq	gimp_color_notebook_channel_changed(%rip), %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-48(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-184(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data@PLT
	movq	-48(%rbp), %rcx
	movq	%rcx, -8(%rbp)
	movq	%rax, -200(%rbp)        # 8-byte Spill
.LBB4_5:                                # %return
	movq	-8(%rbp), %rax
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_color_notebook_add_page, .Lfunc_end4-gimp_color_notebook_add_page
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_notebook_class_init,@function
gimp_color_notebook_class_init:         # @gimp_color_notebook_class_init
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$104, %rsp
.Ltmp18:
	.cfi_offset %rbx, -56
.Ltmp19:
	.cfi_offset %r12, -48
.Ltmp20:
	.cfi_offset %r13, -40
.Ltmp21:
	.cfi_offset %r14, -32
.Ltmp22:
	.cfi_offset %r15, -24
	movq	%rdi, -48(%rbp)
	movq	-48(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast@PLT
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_color_selector_get_type@PLT
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast@PLT
	leaq	.L.str.7(%rip), %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	leaq	.L.str.8(%rip), %rdx
	xorl	%ecx, %ecx
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	movl	$1, %r9d
	leaq	gimp_color_notebook_set_config(%rip), %r10
	leaq	gimp_color_notebook_set_channel(%rip), %r11
	leaq	gimp_color_notebook_set_color(%rip), %rbx
	leaq	gimp_color_notebook_set_show_alpha(%rip), %r14
	leaq	gimp_color_notebook_togg_sensitive(%rip), %r15
	leaq	gimp_color_notebook_togg_visible(%rip), %r12
	leaq	.L.str.6(%rip), %r13
	movq	%rax, -88(%rbp)         # 8-byte Spill
	leaq	.L.str.5(%rip), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	leaq	gimp_color_notebook_style_set(%rip), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rdx, -112(%rbp)        # 8-byte Spill
	movq	-104(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, 280(%rax)
	movq	-64(%rbp), %rax
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	%rdx, 824(%rax)
	movq	-64(%rbp), %rax
	movq	%r13, 832(%rax)
	movq	-64(%rbp), %rax
	movq	%r12, 848(%rax)
	movq	-64(%rbp), %rax
	movq	%r15, 856(%rax)
	movq	-64(%rbp), %rax
	movq	%r14, 864(%rax)
	movq	-64(%rbp), %rax
	movq	%rbx, 872(%rax)
	movq	-64(%rbp), %rax
	movq	%r11, 880(%rax)
	movq	-64(%rbp), %rax
	movq	%r10, 904(%rax)
	movq	-56(%rbp), %rax
	movq	-112(%rbp), %rdx        # 8-byte Reload
	movl	%ecx, -116(%rbp)        # 4-byte Spill
	movl	-116(%rbp), %r10d       # 4-byte Reload
	movl	%r9d, -120(%rbp)        # 4-byte Spill
	movl	%r10d, %r9d
	movl	$1, (%rsp)
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	g_param_spec_int@PLT
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_widget_class_install_style_property@PLT
	movq	-56(%rbp), %rdi
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	callq	gtk_icon_size_get_type@PLT
	leaq	.L.str.9(%rip), %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	leaq	.L.str.10(%rip), %rdx
	movl	$4, %r8d
	movl	$1, %r9d
	movq	%rax, %rcx
	callq	g_param_spec_enum@PLT
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_widget_class_install_style_property@PLT
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_color_notebook_class_init, .Lfunc_end5-gimp_color_notebook_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_notebook_style_set,@function
gimp_color_notebook_style_set:          # @gimp_color_notebook_style_set
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp23:
	.cfi_def_cfa_offset 16
.Ltmp24:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp25:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	callq	gimp_color_notebook_get_type@PLT
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -24(%rbp)
	movq	gimp_color_notebook_parent_class(%rip), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast@PLT
	cmpq	$0, 280(%rax)
	je	.LBB6_2
# BB#1:                                 # %if.then
	movq	gimp_color_notebook_parent_class(%rip), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast@PLT
	movq	280(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
.LBB6_2:                                # %if.end
	leaq	.L.str.7(%rip), %rsi
	leaq	-36(%rbp), %rdx
	leaq	.L.str.11(%rip), %rcx
	leaq	-40(%rbp), %r8
	xorl	%eax, %eax
	movl	%eax, %r9d
	movq	-8(%rbp), %rdi
	movb	$0, %al
	callq	gtk_widget_style_get@PLT
	leaq	.L.str.7(%rip), %rsi
	xorl	%r10d, %r10d
	movl	%r10d, %ecx
	movq	-24(%rbp), %rdx
	movq	216(%rdx), %rdx
	movl	-36(%rbp), %r10d
	movq	%rdx, %rdi
	movl	%r10d, %edx
	movb	$0, %al
	callq	g_object_set@PLT
	movq	-24(%rbp), %rcx
	movq	224(%rcx), %rcx
	movq	%rcx, -32(%rbp)
.LBB6_3:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB6_9
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB6_3 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	840(%rax), %rdi
	movl	-40(%rbp), %esi
	callq	gtk_image_new_from_stock@PLT
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rax
	movq	216(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_notebook_get_type@PLT
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-32(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-56(%rbp), %rdx
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_notebook_set_tab_label@PLT
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB6_3 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB6_7
# BB#6:                                 # %cond.true
                                        #   in Loop: Header=BB6_3 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB6_8
.LBB6_7:                                # %cond.false
                                        #   in Loop: Header=BB6_3 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB6_8
.LBB6_8:                                # %cond.end
                                        #   in Loop: Header=BB6_3 Depth=1
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	%rax, -32(%rbp)
	jmp	.LBB6_3
.LBB6_9:                                # %for.end
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_color_notebook_style_set, .Lfunc_end6-gimp_color_notebook_style_set
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_notebook_togg_visible,@function
gimp_color_notebook_togg_visible:       # @gimp_color_notebook_togg_visible
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp26:
	.cfi_def_cfa_offset 16
.Ltmp27:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp28:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	callq	gimp_color_notebook_get_type@PLT
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	224(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB7_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB7_7
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	gimp_color_selector_set_toggles_visible@PLT
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB7_1 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB7_5
# BB#4:                                 # %cond.true
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB7_6
.LBB7_5:                                # %cond.false
                                        #   in Loop: Header=BB7_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	jmp	.LBB7_6
.LBB7_6:                                # %cond.end
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, -32(%rbp)
	jmp	.LBB7_1
.LBB7_7:                                # %for.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_color_notebook_togg_visible, .Lfunc_end7-gimp_color_notebook_togg_visible
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_notebook_togg_sensitive,@function
gimp_color_notebook_togg_sensitive:     # @gimp_color_notebook_togg_sensitive
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp29:
	.cfi_def_cfa_offset 16
.Ltmp30:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp31:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	callq	gimp_color_notebook_get_type@PLT
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	224(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB8_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB8_7
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	gimp_color_selector_set_toggles_sensitive@PLT
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB8_5
# BB#4:                                 # %cond.true
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB8_6
.LBB8_5:                                # %cond.false
                                        #   in Loop: Header=BB8_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	jmp	.LBB8_6
.LBB8_6:                                # %cond.end
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, -32(%rbp)
	jmp	.LBB8_1
.LBB8_7:                                # %for.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_color_notebook_togg_sensitive, .Lfunc_end8-gimp_color_notebook_togg_sensitive
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_notebook_set_show_alpha,@function
gimp_color_notebook_set_show_alpha:     # @gimp_color_notebook_set_show_alpha
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp32:
	.cfi_def_cfa_offset 16
.Ltmp33:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp34:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	callq	gimp_color_notebook_get_type@PLT
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	224(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB9_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB9_7
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	gimp_color_selector_set_show_alpha@PLT
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB9_1 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB9_5
# BB#4:                                 # %cond.true
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB9_6
.LBB9_5:                                # %cond.false
                                        #   in Loop: Header=BB9_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	jmp	.LBB9_6
.LBB9_6:                                # %cond.end
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, -32(%rbp)
	jmp	.LBB9_1
.LBB9_7:                                # %for.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_color_notebook_set_show_alpha, .Lfunc_end9-gimp_color_notebook_set_show_alpha
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_notebook_set_color,@function
gimp_color_notebook_set_color:          # @gimp_color_notebook_set_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp35:
	.cfi_def_cfa_offset 16
.Ltmp36:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp37:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	callq	gimp_color_notebook_get_type@PLT
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	leaq	gimp_color_notebook_color_changed(%rip), %rdx
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	232(%rax), %rax
	movq	-32(%rbp), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movl	%ecx, %edx
	movq	-56(%rbp), %r9          # 8-byte Reload
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	callq	g_signal_handlers_block_matched@PLT
	movq	-32(%rbp), %rdi
	movq	232(%rdi), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movl	%eax, -60(%rbp)         # 4-byte Spill
	callq	gimp_color_selector_set_color@PLT
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	leaq	gimp_color_notebook_color_changed(%rip), %rdx
	movq	-32(%rbp), %rdi
	movq	232(%rdi), %rdi
	movq	-32(%rbp), %r9
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-72(%rbp), %r10         # 8-byte Reload
	movq	%r9, -80(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-80(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_unblock_matched@PLT
	movl	%eax, -84(%rbp)         # 4-byte Spill
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_color_notebook_set_color, .Lfunc_end10-gimp_color_notebook_set_color
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_notebook_set_channel,@function
gimp_color_notebook_set_channel:        # @gimp_color_notebook_set_channel
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp38:
	.cfi_def_cfa_offset 16
.Ltmp39:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp40:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_color_notebook_get_type@PLT
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	leaq	gimp_color_notebook_channel_changed(%rip), %rdi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	232(%rax), %rax
	movq	-24(%rbp), %r9
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movl	%ecx, %edx
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	%r9, -48(%rbp)          # 8-byte Spill
	movq	%rax, %r9
	movq	-48(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	callq	g_signal_handlers_block_matched@PLT
	movq	-24(%rbp), %rdi
	movq	232(%rdi), %rdi
	movl	-12(%rbp), %esi
	movl	%eax, -52(%rbp)         # 4-byte Spill
	callq	gimp_color_selector_set_channel@PLT
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	leaq	gimp_color_notebook_channel_changed(%rip), %rdi
	movq	-24(%rbp), %r9
	movq	232(%r9), %r9
	movq	-24(%rbp), %r10
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-64(%rbp), %r9          # 8-byte Reload
	movq	%r10, (%rsp)
	callq	g_signal_handlers_unblock_matched@PLT
	movl	%eax, -68(%rbp)         # 4-byte Spill
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_color_notebook_set_channel, .Lfunc_end11-gimp_color_notebook_set_channel
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_notebook_set_config,@function
gimp_color_notebook_set_config:         # @gimp_color_notebook_set_config
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp41:
	.cfi_def_cfa_offset 16
.Ltmp42:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp43:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	gimp_color_notebook_get_type@PLT
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	224(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB12_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB12_7
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_color_selector_set_config@PLT
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB12_1 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB12_5
# BB#4:                                 # %cond.true
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB12_6
.LBB12_5:                               # %cond.false
                                        #   in Loop: Header=BB12_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	jmp	.LBB12_6
.LBB12_6:                               # %cond.end
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, -32(%rbp)
	jmp	.LBB12_1
.LBB12_7:                               # %for.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_color_notebook_set_config, .Lfunc_end12-gimp_color_notebook_set_config
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_notebook_color_changed,@function
gimp_color_notebook_color_changed:      # @gimp_color_notebook_color_changed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp44:
	.cfi_def_cfa_offset 16
.Ltmp45:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp46:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	callq	gimp_color_selector_get_type@PLT
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rdx
	movq	%rdx, 144(%rax)
	movq	8(%rcx), %rdx
	movq	%rdx, 152(%rax)
	movq	16(%rcx), %rdx
	movq	%rdx, 160(%rax)
	movq	24(%rcx), %rcx
	movq	%rcx, 168(%rax)
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rdx
	movq	%rdx, 176(%rax)
	movq	8(%rcx), %rdx
	movq	%rdx, 184(%rax)
	movq	16(%rcx), %rdx
	movq	%rdx, 192(%rax)
	movq	24(%rcx), %rcx
	movq	%rcx, 200(%rax)
	movq	-40(%rbp), %rdi
	callq	gimp_color_selector_color_changed@PLT
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_color_notebook_color_changed, .Lfunc_end13-gimp_color_notebook_color_changed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_notebook_channel_changed,@function
gimp_color_notebook_channel_changed:    # @gimp_color_notebook_channel_changed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp47:
	.cfi_def_cfa_offset 16
.Ltmp48:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp49:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	callq	gimp_color_selector_get_type@PLT
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -32(%rbp)
	movl	-12(%rbp), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, 208(%rax)
	movq	-32(%rbp), %rdi
	callq	gimp_color_selector_channel_changed@PLT
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_color_notebook_channel_changed, .Lfunc_end14-gimp_color_notebook_channel_changed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_notebook_switch_page,@function
gimp_color_notebook_switch_page:        # @gimp_color_notebook_switch_page
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp50:
	.cfi_def_cfa_offset 16
.Ltmp51:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp52:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	callq	gimp_color_selector_get_type@PLT
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gtk_notebook_get_nth_page@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_color_selector_get_type@PLT
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$24, %esi
	xorl	%edx, %edx
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	leaq	gimp_color_notebook_color_changed(%rip), %rcx
	movq	-32(%rbp), %rdi
	movq	%rax, 232(%rdi)
	movq	-32(%rbp), %rax
	movq	232(%rax), %rax
	movq	-32(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movl	%edx, -76(%rbp)         # 4-byte Spill
	movl	-76(%rbp), %r9d         # 4-byte Reload
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	movl	%r9d, %ecx
	movq	-88(%rbp), %r9          # 8-byte Reload
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	callq	g_signal_handlers_block_matched@PLT
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	leaq	gimp_color_notebook_channel_changed(%rip), %rdi
	movq	-32(%rbp), %r9
	movq	232(%r9), %r9
	movq	-32(%rbp), %r10
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%ecx, %edx
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	%r10, (%rsp)
	movl	%eax, -100(%rbp)        # 4-byte Spill
	callq	g_signal_handlers_block_matched@PLT
	movq	-32(%rbp), %rdi
	movq	232(%rdi), %rdi
	movq	-40(%rbp), %r8
	addq	$144, %r8
	movq	-40(%rbp), %r9
	addq	$176, %r9
	movq	%r8, %rsi
	movq	%r9, %rdx
	movl	%eax, -104(%rbp)        # 4-byte Spill
	callq	gimp_color_selector_set_color@PLT
	movq	-32(%rbp), %rdx
	movq	232(%rdx), %rdi
	movq	-40(%rbp), %rdx
	movl	208(%rdx), %esi
	callq	gimp_color_selector_set_channel@PLT
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	leaq	gimp_color_notebook_color_changed(%rip), %rdx
	movq	-32(%rbp), %rdi
	movq	232(%rdi), %rdi
	movq	-32(%rbp), %r9
	movq	%rdx, -112(%rbp)        # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-112(%rbp), %r10        # 8-byte Reload
	movq	%r9, -120(%rbp)         # 8-byte Spill
	movq	%r10, %r9
	movq	-120(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_unblock_matched@PLT
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	leaq	gimp_color_notebook_channel_changed(%rip), %rdi
	movq	-32(%rbp), %r9
	movq	232(%r9), %r9
	movq	-32(%rbp), %r10
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movl	%ecx, %edx
	movq	-128(%rbp), %r9         # 8-byte Reload
	movq	%r10, (%rsp)
	movl	%eax, -132(%rbp)        # 4-byte Spill
	callq	g_signal_handlers_unblock_matched@PLT
	movl	%eax, -136(%rbp)        # 4-byte Spill
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_color_notebook_switch_page, .Lfunc_end15-gimp_color_notebook_switch_page
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_notebook_remove_selector,@function
gimp_color_notebook_remove_selector:    # @gimp_color_notebook_remove_selector
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp53:
	.cfi_def_cfa_offset 16
.Ltmp54:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp55:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	224(%rdx), %rdi
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	callq	g_list_remove@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 224(%rdx)
	movq	-24(%rbp), %rax
	cmpq	$0, 224(%rax)
	jne	.LBB16_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	$0, 232(%rax)
.LBB16_2:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_color_notebook_remove_selector, .Lfunc_end16-gimp_color_notebook_remove_selector
	.cfi_endproc

	.type	gimp_color_notebook_get_type.g_define_type_id__volatile,@object # @gimp_color_notebook_get_type.g_define_type_id__volatile
	.local	gimp_color_notebook_get_type.g_define_type_id__volatile
	.comm	gimp_color_notebook_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpColorNotebook"
	.size	.L.str, 18

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"LibGimpWidgets"
	.size	.L.str.1, 15

	.type	.L__func__.gimp_color_notebook_set_has_page,@object # @__func__.gimp_color_notebook_set_has_page
.L__func__.gimp_color_notebook_set_has_page:
	.asciz	"gimp_color_notebook_set_has_page"
	.size	.L__func__.gimp_color_notebook_set_has_page, 33

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_COLOR_NOTEBOOK (notebook)"
	.size	.L.str.2, 34

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"g_type_is_a (page_type, GIMP_TYPE_COLOR_SELECTOR)"
	.size	.L.str.3, 50

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"! g_type_is_a (page_type, GIMP_TYPE_COLOR_NOTEBOOK)"
	.size	.L.str.4, 52

	.type	gimp_color_notebook_parent_class,@object # @gimp_color_notebook_parent_class
	.local	gimp_color_notebook_parent_class
	.comm	gimp_color_notebook_parent_class,8,8
	.type	GimpColorNotebook_private_offset,@object # @GimpColorNotebook_private_offset
	.local	GimpColorNotebook_private_offset
	.comm	GimpColorNotebook_private_offset,4,4
	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Notebook"
	.size	.L.str.5, 9

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gimp-colorselector-notebook"
	.size	.L.str.6, 28

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"tab-border"
	.size	.L.str.7, 11

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Width of the border around the tab contents"
	.size	.L.str.8, 44

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"tab-icon-size"
	.size	.L.str.9, 14

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Size for icons displayed in the tab"
	.size	.L.str.10, 36

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"tab-icon_size"
	.size	.L.str.11, 14

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"switch-page"
	.size	.L.str.12, 12

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"remove"
	.size	.L.str.13, 7

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"gimp20-libgimp"
	.size	.L.str.14, 15

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"color-changed"
	.size	.L.str.15, 14

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"channel-changed"
	.size	.L.str.16, 16


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
