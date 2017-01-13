	.text
	.file	"gimpmenu.bc"
	.globl	gimp_image_menu_new
	.align	16, 0x90
	.type	gimp_image_menu_new,@function
gimp_image_menu_new:                    # @gimp_image_menu_new
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
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movl	$-1, -76(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -24(%rbp)
	je	.LBB0_3
# BB#2:                                 # %if.then
	jmp	.LBB0_4
.LBB0_3:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_image_menu_new(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB0_20
.LBB0_4:                                # %if.end
	jmp	.LBB0_5
.LBB0_5:                                # %do.end
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_menu_make_menu
	leaq	-80(%rbp), %rdi
	movq	%rax, -48(%rbp)
	callq	gimp_image_list@PLT
	movq	%rax, -72(%rbp)
	movl	$0, -84(%rbp)
	movl	$0, -88(%rbp)
.LBB0_6:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-84(%rbp), %eax
	cmpl	-80(%rbp), %eax
	jge	.LBB0_17
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB0_6 Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB0_9
# BB#8:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB0_6 Depth=1
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	movq	-16(%rbp), %rax
	movslq	-84(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movl	(%rdx,%rcx,4), %edi
	movq	-32(%rbp), %rdx
	callq	*%rax
	cmpl	$0, %eax
	je	.LBB0_15
.LBB0_9:                                # %if.then.5
                                        #   in Loop: Header=BB0_6 Depth=1
	movslq	-84(%rbp), %rax
	movq	-72(%rbp), %rcx
	movl	(%rcx,%rax,4), %edi
	callq	gimp_image_get_name@PLT
	leaq	.L.str.2(%rip), %rdi
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rsi
	movslq	-84(%rbp), %rax
	movq	-72(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	movb	$0, %al
	callq	g_strdup_printf@PLT
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rdi
	callq	g_free@PLT
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	movq	-48(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movslq	-84(%rbp), %rax
	movq	-72(%rbp), %rcx
	movl	(%rcx,%rax,4), %ecx
	callq	gimp_menu_add_item
	movq	-64(%rbp), %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	g_free@PLT
	movslq	-84(%rbp), %rax
	movq	-72(%rbp), %rdx
	movl	(%rdx,%rax,4), %ecx
	cmpl	-36(%rbp), %ecx
	jne	.LBB0_11
# BB#10:                                # %if.then.18
                                        #   in Loop: Header=BB0_6 Depth=1
	movl	-36(%rbp), %eax
	movl	%eax, -76(%rbp)
	movq	-48(%rbp), %rcx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	callq	gtk_menu_get_type@PLT
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	-88(%rbp), %esi
	movq	%rax, %rdi
	callq	gtk_menu_set_active@PLT
	jmp	.LBB0_14
.LBB0_11:                               # %if.else.21
                                        #   in Loop: Header=BB0_6 Depth=1
	cmpl	$-1, -76(%rbp)
	jne	.LBB0_13
# BB#12:                                # %if.then.23
                                        #   in Loop: Header=BB0_6 Depth=1
	movslq	-84(%rbp), %rax
	movq	-72(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	movl	%edx, -76(%rbp)
.LBB0_13:                               # %if.end.26
                                        #   in Loop: Header=BB0_6 Depth=1
	jmp	.LBB0_14
.LBB0_14:                               # %if.end.27
                                        #   in Loop: Header=BB0_6 Depth=1
	movl	-88(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -88(%rbp)
.LBB0_15:                               # %if.end.28
                                        #   in Loop: Header=BB0_6 Depth=1
	jmp	.LBB0_16
.LBB0_16:                               # %for.inc
                                        #   in Loop: Header=BB0_6 Depth=1
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB0_6
.LBB0_17:                               # %for.end
	cmpl	$0, -88(%rbp)
	jne	.LBB0_19
# BB#18:                                # %if.then.30
	movq	-48(%rbp), %rdi
	callq	gimp_menu_add_empty
	movq	%rax, -112(%rbp)        # 8-byte Spill
.LBB0_19:                               # %if.end.32
	movq	-24(%rbp), %rax
	movl	-76(%rbp), %edi
	movq	-32(%rbp), %rsi
	callq	*%rax
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB0_20:                               # %return
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_image_menu_new, .Lfunc_end0-gimp_image_menu_new
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_menu_make_menu,@function
gimp_menu_make_menu:                    # @gimp_menu_make_menu
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	callq	gtk_menu_new@PLT
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.3(%rip), %rsi
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-32(%rbp), %rdx         # 8-byte Reload
	callq	g_object_set_data@PLT
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.4(%rip), %rsi
	movq	-16(%rbp), %rdx
	movq	%rax, %rdi
	callq	g_object_set_data@PLT
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_menu_make_menu, .Lfunc_end1-gimp_menu_make_menu
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_menu_add_item,@function
gimp_menu_add_item:                     # @gimp_menu_add_item
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB2_2
# BB#1:                                 # %if.then
	leaq	.L.str.5(%rip), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movl	-28(%rbp), %ecx
	movb	$0, %al
	callq	g_strdup_printf@PLT
	movq	%rax, -80(%rbp)
	jmp	.LBB2_3
.LBB2_2:                                # %if.else
	movq	-16(%rbp), %rdi
	callq	g_strdup@PLT
	movq	%rax, -80(%rbp)
.LBB2_3:                                # %if.end
	callq	gtk_menu_item_new@PLT
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_menu_shell_get_type@PLT
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_menu_shell_append@PLT
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show@PLT
	leaq	.L.str.6(%rip), %rsi
	leaq	gimp_menu_callback(%rip), %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-40(%rbp), %rdi
	movslq	-28(%rbp), %rcx
	movq	%rax, %rdx
	callq	g_signal_connect_data@PLT
	xorl	%edi, %edi
	movl	$4, %esi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_box_new@PLT
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type@PLT
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add@PLT
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show@PLT
	movl	$1, %edi
	xorl	%esi, %esi
	callq	gtk_box_new@PLT
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type@PLT
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%r9d, %r9d
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start@PLT
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show@PLT
	movl	$24, %ecx
	movl	-28(%rbp), %edi
	cmpq	$0, -24(%rbp)
	sete	%r10b
	andb	$1, %r10b
	movzbl	%r10b, %esi
	movl	%ecx, %edx
	callq	gimp_menu_make_preview
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type@PLT
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start@PLT
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show@PLT
	movq	-80(%rbp), %rdi
	callq	gtk_label_new@PLT
	movq	%rax, -72(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type@PLT
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%ecx, %ecx
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -132(%rbp)        # 4-byte Spill
	movl	-132(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start@PLT
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show@PLT
	movq	-80(%rbp), %rdi
	callq	g_free@PLT
	movq	-40(%rbp), %rax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_menu_add_item, .Lfunc_end2-gimp_menu_add_item
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_menu_add_empty,@function
gimp_menu_add_empty:                    # @gimp_menu_add_empty
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
	leaq	.L.str.7(%rip), %rax
	leaq	.L.str.8(%rip), %rsi
	movq	%rdi, -8(%rbp)
	movq	%rax, %rdi
	callq	dgettext@PLT
	movq	%rax, %rdi
	callq	gtk_menu_item_new_with_label@PLT
	xorl	%esi, %esi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	gtk_widget_set_sensitive@PLT
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gtk_menu_shell_get_type@PLT
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_menu_shell_append@PLT
	movq	-16(%rbp), %rdi
	callq	gtk_widget_show@PLT
	movq	-16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_menu_add_empty, .Lfunc_end3-gimp_menu_add_empty
	.cfi_endproc

	.globl	gimp_layer_menu_new
	.align	16, 0x90
	.type	gimp_layer_menu_new,@function
gimp_layer_menu_new:                    # @gimp_layer_menu_new
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
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movl	$-1, -76(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -24(%rbp)
	je	.LBB4_3
# BB#2:                                 # %if.then
	jmp	.LBB4_4
.LBB4_3:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_layer_menu_new(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB4_27
.LBB4_4:                                # %if.end
	jmp	.LBB4_5
.LBB4_5:                                # %do.end
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_menu_make_menu
	leaq	-80(%rbp), %rdi
	movq	%rax, -48(%rbp)
	callq	gimp_image_list@PLT
	movq	%rax, -64(%rbp)
	movl	$0, -88(%rbp)
	movl	$0, -96(%rbp)
.LBB4_6:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_10 Depth 2
	movl	-88(%rbp), %eax
	cmpl	-80(%rbp), %eax
	jge	.LBB4_24
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB4_6 Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB4_9
# BB#8:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB4_6 Depth=1
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	movq	-16(%rbp), %rax
	movslq	-88(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movl	(%rdx,%rcx,4), %edi
	movq	-32(%rbp), %rdx
	callq	*%rax
	cmpl	$0, %eax
	je	.LBB4_22
.LBB4_9:                                # %if.then.5
                                        #   in Loop: Header=BB4_6 Depth=1
	movslq	-88(%rbp), %rax
	movq	-64(%rbp), %rcx
	movl	(%rcx,%rax,4), %edi
	callq	gimp_image_get_name@PLT
	leaq	.L.str.2(%rip), %rdi
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rsi
	movslq	-88(%rbp), %rax
	movq	-64(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	movb	$0, %al
	callq	g_strdup_printf@PLT
	movq	%rax, -56(%rbp)
	movq	-104(%rbp), %rdi
	callq	g_free@PLT
	leaq	-84(%rbp), %rsi
	movslq	-88(%rbp), %rax
	movq	-64(%rbp), %rcx
	movl	(%rcx,%rax,4), %edi
	callq	gimp_image_get_layers@PLT
	movq	%rax, -72(%rbp)
	movl	$0, -92(%rbp)
.LBB4_10:                               # %for.cond.15
                                        #   Parent Loop BB4_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-92(%rbp), %eax
	cmpl	-84(%rbp), %eax
	jge	.LBB4_21
# BB#11:                                # %for.body.17
                                        #   in Loop: Header=BB4_10 Depth=2
	cmpq	$0, -16(%rbp)
	je	.LBB4_13
# BB#12:                                # %lor.lhs.false.19
                                        #   in Loop: Header=BB4_10 Depth=2
	movq	-16(%rbp), %rax
	movslq	-88(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movl	(%rdx,%rcx,4), %edi
	movslq	-92(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movl	(%rdx,%rcx,4), %esi
	movq	-32(%rbp), %rdx
	callq	*%rax
	cmpl	$0, %eax
	je	.LBB4_19
.LBB4_13:                               # %if.then.26
                                        #   in Loop: Header=BB4_10 Depth=2
	movslq	-92(%rbp), %rax
	movq	-72(%rbp), %rcx
	movl	(%rcx,%rax,4), %edi
	callq	gimp_item_get_name@PLT
	movq	%rax, -104(%rbp)
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-104(%rbp), %rdx
	movslq	-92(%rbp), %rax
	movq	-72(%rbp), %rcx
	movl	(%rcx,%rax,4), %ecx
	callq	gimp_menu_add_item
	movq	-104(%rbp), %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	g_free@PLT
	movslq	-92(%rbp), %rax
	movq	-72(%rbp), %rdx
	movl	(%rdx,%rax,4), %ecx
	cmpl	-36(%rbp), %ecx
	jne	.LBB4_15
# BB#14:                                # %if.then.36
                                        #   in Loop: Header=BB4_10 Depth=2
	movl	-36(%rbp), %eax
	movl	%eax, -76(%rbp)
	movq	-48(%rbp), %rcx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	callq	gtk_menu_get_type@PLT
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	-96(%rbp), %esi
	movq	%rax, %rdi
	callq	gtk_menu_set_active@PLT
	jmp	.LBB4_18
.LBB4_15:                               # %if.else.39
                                        #   in Loop: Header=BB4_10 Depth=2
	cmpl	$-1, -76(%rbp)
	jne	.LBB4_17
# BB#16:                                # %if.then.41
                                        #   in Loop: Header=BB4_10 Depth=2
	movslq	-92(%rbp), %rax
	movq	-72(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	movl	%edx, -76(%rbp)
.LBB4_17:                               # %if.end.44
                                        #   in Loop: Header=BB4_10 Depth=2
	jmp	.LBB4_18
.LBB4_18:                               # %if.end.45
                                        #   in Loop: Header=BB4_10 Depth=2
	movl	-96(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -96(%rbp)
.LBB4_19:                               # %if.end.46
                                        #   in Loop: Header=BB4_10 Depth=2
	jmp	.LBB4_20
.LBB4_20:                               # %for.inc
                                        #   in Loop: Header=BB4_10 Depth=2
	movl	-92(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -92(%rbp)
	jmp	.LBB4_10
.LBB4_21:                               # %for.end
                                        #   in Loop: Header=BB4_6 Depth=1
	movq	-56(%rbp), %rdi
	callq	g_free@PLT
	movq	-72(%rbp), %rdi
	callq	g_free@PLT
.LBB4_22:                               # %if.end.47
                                        #   in Loop: Header=BB4_6 Depth=1
	jmp	.LBB4_23
.LBB4_23:                               # %for.inc.48
                                        #   in Loop: Header=BB4_6 Depth=1
	movl	-88(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -88(%rbp)
	jmp	.LBB4_6
.LBB4_24:                               # %for.end.50
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free@PLT
	cmpl	$0, -96(%rbp)
	jne	.LBB4_26
# BB#25:                                # %if.then.52
	movq	-48(%rbp), %rdi
	callq	gimp_menu_add_empty
	movq	%rax, -128(%rbp)        # 8-byte Spill
.LBB4_26:                               # %if.end.54
	movq	-24(%rbp), %rax
	movl	-76(%rbp), %edi
	movq	-32(%rbp), %rsi
	callq	*%rax
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB4_27:                               # %return
	movq	-8(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_layer_menu_new, .Lfunc_end4-gimp_layer_menu_new
	.cfi_endproc

	.globl	gimp_channel_menu_new
	.align	16, 0x90
	.type	gimp_channel_menu_new,@function
gimp_channel_menu_new:                  # @gimp_channel_menu_new
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
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -24(%rbp)
	je	.LBB5_3
# BB#2:                                 # %if.then
	jmp	.LBB5_4
.LBB5_3:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_channel_menu_new(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB5_27
.LBB5_4:                                # %if.end
	jmp	.LBB5_5
.LBB5_5:                                # %do.end
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_menu_make_menu
	leaq	-80(%rbp), %rdi
	movq	%rax, -48(%rbp)
	movl	$-1, -76(%rbp)
	callq	gimp_image_list@PLT
	movq	%rax, -64(%rbp)
	movl	$0, -88(%rbp)
	movl	$0, -96(%rbp)
.LBB5_6:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_10 Depth 2
	movl	-88(%rbp), %eax
	cmpl	-80(%rbp), %eax
	jge	.LBB5_24
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB5_6 Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB5_9
# BB#8:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB5_6 Depth=1
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	movq	-16(%rbp), %rax
	movslq	-88(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movl	(%rdx,%rcx,4), %edi
	movq	-32(%rbp), %rdx
	callq	*%rax
	cmpl	$0, %eax
	je	.LBB5_22
.LBB5_9:                                # %if.then.5
                                        #   in Loop: Header=BB5_6 Depth=1
	movslq	-88(%rbp), %rax
	movq	-64(%rbp), %rcx
	movl	(%rcx,%rax,4), %edi
	callq	gimp_image_get_name@PLT
	leaq	.L.str.2(%rip), %rdi
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rsi
	movslq	-88(%rbp), %rax
	movq	-64(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	movb	$0, %al
	callq	g_strdup_printf@PLT
	movq	%rax, -56(%rbp)
	movq	-104(%rbp), %rdi
	callq	g_free@PLT
	leaq	-84(%rbp), %rsi
	movslq	-88(%rbp), %rax
	movq	-64(%rbp), %rcx
	movl	(%rcx,%rax,4), %edi
	callq	gimp_image_get_channels@PLT
	movq	%rax, -72(%rbp)
	movl	$0, -92(%rbp)
.LBB5_10:                               # %for.cond.15
                                        #   Parent Loop BB5_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-92(%rbp), %eax
	cmpl	-84(%rbp), %eax
	jge	.LBB5_21
# BB#11:                                # %for.body.17
                                        #   in Loop: Header=BB5_10 Depth=2
	cmpq	$0, -16(%rbp)
	je	.LBB5_13
# BB#12:                                # %lor.lhs.false.19
                                        #   in Loop: Header=BB5_10 Depth=2
	movq	-16(%rbp), %rax
	movslq	-88(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movl	(%rdx,%rcx,4), %edi
	movslq	-92(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movl	(%rdx,%rcx,4), %esi
	movq	-32(%rbp), %rdx
	callq	*%rax
	cmpl	$0, %eax
	je	.LBB5_19
.LBB5_13:                               # %if.then.26
                                        #   in Loop: Header=BB5_10 Depth=2
	movslq	-92(%rbp), %rax
	movq	-72(%rbp), %rcx
	movl	(%rcx,%rax,4), %edi
	callq	gimp_item_get_name@PLT
	movq	%rax, -104(%rbp)
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-104(%rbp), %rdx
	movslq	-92(%rbp), %rax
	movq	-72(%rbp), %rcx
	movl	(%rcx,%rax,4), %ecx
	callq	gimp_menu_add_item
	movq	-104(%rbp), %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	g_free@PLT
	movslq	-92(%rbp), %rax
	movq	-72(%rbp), %rdx
	movl	(%rdx,%rax,4), %ecx
	cmpl	-36(%rbp), %ecx
	jne	.LBB5_15
# BB#14:                                # %if.then.36
                                        #   in Loop: Header=BB5_10 Depth=2
	movl	-36(%rbp), %eax
	movl	%eax, -76(%rbp)
	movq	-48(%rbp), %rcx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	callq	gtk_menu_get_type@PLT
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	-96(%rbp), %esi
	movq	%rax, %rdi
	callq	gtk_menu_set_active@PLT
	jmp	.LBB5_18
.LBB5_15:                               # %if.else.39
                                        #   in Loop: Header=BB5_10 Depth=2
	cmpl	$-1, -76(%rbp)
	jne	.LBB5_17
# BB#16:                                # %if.then.41
                                        #   in Loop: Header=BB5_10 Depth=2
	movslq	-92(%rbp), %rax
	movq	-72(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	movl	%edx, -76(%rbp)
.LBB5_17:                               # %if.end.44
                                        #   in Loop: Header=BB5_10 Depth=2
	jmp	.LBB5_18
.LBB5_18:                               # %if.end.45
                                        #   in Loop: Header=BB5_10 Depth=2
	movl	-96(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -96(%rbp)
.LBB5_19:                               # %if.end.46
                                        #   in Loop: Header=BB5_10 Depth=2
	jmp	.LBB5_20
.LBB5_20:                               # %for.inc
                                        #   in Loop: Header=BB5_10 Depth=2
	movl	-92(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -92(%rbp)
	jmp	.LBB5_10
.LBB5_21:                               # %for.end
                                        #   in Loop: Header=BB5_6 Depth=1
	movq	-56(%rbp), %rdi
	callq	g_free@PLT
	movq	-72(%rbp), %rdi
	callq	g_free@PLT
.LBB5_22:                               # %if.end.47
                                        #   in Loop: Header=BB5_6 Depth=1
	jmp	.LBB5_23
.LBB5_23:                               # %for.inc.48
                                        #   in Loop: Header=BB5_6 Depth=1
	movl	-88(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -88(%rbp)
	jmp	.LBB5_6
.LBB5_24:                               # %for.end.50
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free@PLT
	cmpl	$0, -96(%rbp)
	jne	.LBB5_26
# BB#25:                                # %if.then.52
	movq	-48(%rbp), %rdi
	callq	gimp_menu_add_empty
	movq	%rax, -128(%rbp)        # 8-byte Spill
.LBB5_26:                               # %if.end.54
	movq	-24(%rbp), %rax
	movl	-76(%rbp), %edi
	movq	-32(%rbp), %rsi
	callq	*%rax
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB5_27:                               # %return
	movq	-8(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_channel_menu_new, .Lfunc_end5-gimp_channel_menu_new
	.cfi_endproc

	.globl	gimp_drawable_menu_new
	.align	16, 0x90
	.type	gimp_drawable_menu_new,@function
gimp_drawable_menu_new:                 # @gimp_drawable_menu_new
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
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_menu_make_menu
	leaq	-88(%rbp), %rdi
	movq	%rax, -40(%rbp)
	movl	$-1, -84(%rbp)
	callq	gimp_image_list@PLT
	movq	%rax, -64(%rbp)
	movl	$0, -100(%rbp)
	movl	$0, -108(%rbp)
.LBB6_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_5 Depth 2
                                        #     Child Loop BB6_17 Depth 2
	movl	-100(%rbp), %eax
	cmpl	-88(%rbp), %eax
	jge	.LBB6_31
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB6_1 Depth=1
	cmpq	$0, -8(%rbp)
	je	.LBB6_4
# BB#3:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	movq	-8(%rbp), %rax
	movslq	-100(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movl	(%rdx,%rcx,4), %edi
	movq	-24(%rbp), %rdx
	callq	*%rax
	cmpl	$0, %eax
	je	.LBB6_29
.LBB6_4:                                # %if.then
                                        #   in Loop: Header=BB6_1 Depth=1
	movslq	-100(%rbp), %rax
	movq	-64(%rbp), %rcx
	movl	(%rcx,%rax,4), %edi
	callq	gimp_image_get_name@PLT
	leaq	.L.str.2(%rip), %rdi
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rsi
	movslq	-100(%rbp), %rax
	movq	-64(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	movb	$0, %al
	callq	g_strdup_printf@PLT
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rdi
	callq	g_free@PLT
	leaq	-92(%rbp), %rsi
	movslq	-100(%rbp), %rax
	movq	-64(%rbp), %rcx
	movl	(%rcx,%rax,4), %edi
	callq	gimp_image_get_layers@PLT
	leaq	-96(%rbp), %rsi
	movq	%rax, -72(%rbp)
	movslq	-100(%rbp), %rax
	movq	-64(%rbp), %rcx
	movl	(%rcx,%rax,4), %edi
	callq	gimp_image_get_channels@PLT
	movq	%rax, -80(%rbp)
	movl	$0, -104(%rbp)
.LBB6_5:                                # %for.cond.16
                                        #   Parent Loop BB6_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-104(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jge	.LBB6_16
# BB#6:                                 # %for.body.18
                                        #   in Loop: Header=BB6_5 Depth=2
	cmpq	$0, -8(%rbp)
	je	.LBB6_8
# BB#7:                                 # %lor.lhs.false.20
                                        #   in Loop: Header=BB6_5 Depth=2
	movq	-8(%rbp), %rax
	movslq	-100(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movl	(%rdx,%rcx,4), %edi
	movslq	-104(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movl	(%rdx,%rcx,4), %esi
	movq	-24(%rbp), %rdx
	callq	*%rax
	cmpl	$0, %eax
	je	.LBB6_14
.LBB6_8:                                # %if.then.27
                                        #   in Loop: Header=BB6_5 Depth=2
	movslq	-104(%rbp), %rax
	movq	-72(%rbp), %rcx
	movl	(%rcx,%rax,4), %edi
	callq	gimp_item_get_name@PLT
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movslq	-104(%rbp), %rax
	movq	-72(%rbp), %rcx
	movl	(%rcx,%rax,4), %ecx
	callq	gimp_menu_add_item
	movq	-48(%rbp), %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	g_free@PLT
	movslq	-104(%rbp), %rax
	movq	-72(%rbp), %rdx
	movl	(%rdx,%rax,4), %ecx
	cmpl	-28(%rbp), %ecx
	jne	.LBB6_10
# BB#9:                                 # %if.then.37
                                        #   in Loop: Header=BB6_5 Depth=2
	movl	-28(%rbp), %eax
	movl	%eax, -84(%rbp)
	movq	-40(%rbp), %rcx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	callq	gtk_menu_get_type@PLT
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	-108(%rbp), %esi
	movq	%rax, %rdi
	callq	gtk_menu_set_active@PLT
	jmp	.LBB6_13
.LBB6_10:                               # %if.else
                                        #   in Loop: Header=BB6_5 Depth=2
	cmpl	$-1, -84(%rbp)
	jne	.LBB6_12
# BB#11:                                # %if.then.41
                                        #   in Loop: Header=BB6_5 Depth=2
	movslq	-104(%rbp), %rax
	movq	-72(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	movl	%edx, -84(%rbp)
.LBB6_12:                               # %if.end
                                        #   in Loop: Header=BB6_5 Depth=2
	jmp	.LBB6_13
.LBB6_13:                               # %if.end.44
                                        #   in Loop: Header=BB6_5 Depth=2
	movl	-108(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -108(%rbp)
.LBB6_14:                               # %if.end.45
                                        #   in Loop: Header=BB6_5 Depth=2
	jmp	.LBB6_15
.LBB6_15:                               # %for.inc
                                        #   in Loop: Header=BB6_5 Depth=2
	movl	-104(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -104(%rbp)
	jmp	.LBB6_5
.LBB6_16:                               # %for.end
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	$0, -104(%rbp)
.LBB6_17:                               # %for.cond.46
                                        #   Parent Loop BB6_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-104(%rbp), %eax
	cmpl	-96(%rbp), %eax
	jge	.LBB6_28
# BB#18:                                # %for.body.48
                                        #   in Loop: Header=BB6_17 Depth=2
	cmpq	$0, -8(%rbp)
	je	.LBB6_20
# BB#19:                                # %lor.lhs.false.50
                                        #   in Loop: Header=BB6_17 Depth=2
	movq	-8(%rbp), %rax
	movslq	-100(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movl	(%rdx,%rcx,4), %edi
	movslq	-104(%rbp), %rcx
	movq	-80(%rbp), %rdx
	movl	(%rdx,%rcx,4), %esi
	movq	-24(%rbp), %rdx
	callq	*%rax
	cmpl	$0, %eax
	je	.LBB6_26
.LBB6_20:                               # %if.then.57
                                        #   in Loop: Header=BB6_17 Depth=2
	movslq	-104(%rbp), %rax
	movq	-80(%rbp), %rcx
	movl	(%rcx,%rax,4), %edi
	callq	gimp_item_get_name@PLT
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movslq	-104(%rbp), %rax
	movq	-80(%rbp), %rcx
	movl	(%rcx,%rax,4), %ecx
	callq	gimp_menu_add_item
	movq	-48(%rbp), %rdi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	g_free@PLT
	movslq	-104(%rbp), %rax
	movq	-80(%rbp), %rdx
	movl	(%rdx,%rax,4), %ecx
	cmpl	-28(%rbp), %ecx
	jne	.LBB6_22
# BB#21:                                # %if.then.67
                                        #   in Loop: Header=BB6_17 Depth=2
	movl	-28(%rbp), %eax
	movl	%eax, -84(%rbp)
	movq	-40(%rbp), %rcx
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	callq	gtk_menu_get_type@PLT
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	-108(%rbp), %esi
	movq	%rax, %rdi
	callq	gtk_menu_set_active@PLT
	jmp	.LBB6_25
.LBB6_22:                               # %if.else.70
                                        #   in Loop: Header=BB6_17 Depth=2
	cmpl	$-1, -84(%rbp)
	jne	.LBB6_24
# BB#23:                                # %if.then.72
                                        #   in Loop: Header=BB6_17 Depth=2
	movslq	-104(%rbp), %rax
	movq	-80(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	movl	%edx, -84(%rbp)
.LBB6_24:                               # %if.end.75
                                        #   in Loop: Header=BB6_17 Depth=2
	jmp	.LBB6_25
.LBB6_25:                               # %if.end.76
                                        #   in Loop: Header=BB6_17 Depth=2
	movl	-108(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -108(%rbp)
.LBB6_26:                               # %if.end.78
                                        #   in Loop: Header=BB6_17 Depth=2
	jmp	.LBB6_27
.LBB6_27:                               # %for.inc.79
                                        #   in Loop: Header=BB6_17 Depth=2
	movl	-104(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -104(%rbp)
	jmp	.LBB6_17
.LBB6_28:                               # %for.end.81
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	-56(%rbp), %rdi
	callq	g_free@PLT
	movq	-72(%rbp), %rdi
	callq	g_free@PLT
	movq	-80(%rbp), %rdi
	callq	g_free@PLT
.LBB6_29:                               # %if.end.82
                                        #   in Loop: Header=BB6_1 Depth=1
	jmp	.LBB6_30
.LBB6_30:                               # %for.inc.83
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	-100(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -100(%rbp)
	jmp	.LBB6_1
.LBB6_31:                               # %for.end.85
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free@PLT
	cmpl	$0, -108(%rbp)
	jne	.LBB6_33
# BB#32:                                # %if.then.87
	movq	-40(%rbp), %rdi
	callq	gimp_menu_add_empty
	movq	%rax, -152(%rbp)        # 8-byte Spill
.LBB6_33:                               # %if.end.89
	movq	-16(%rbp), %rax
	movl	-84(%rbp), %edi
	movq	-24(%rbp), %rsi
	callq	*%rax
	movq	-40(%rbp), %rax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_drawable_menu_new, .Lfunc_end6-gimp_drawable_menu_new
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_menu_callback,@function
gimp_menu_callback:                     # @gimp_menu_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp21:
	.cfi_def_cfa_offset 16
.Ltmp22:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp23:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_parent@PLT
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.3(%rip), %rsi
	movq	%rax, %rdi
	callq	g_object_get_data@PLT
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.4(%rip), %rsi
	movq	%rax, %rdi
	callq	g_object_get_data@PLT
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rsi
	movl	%esi, %ecx
	movq	-40(%rbp), %rsi
	movl	%ecx, %edi
	callq	*%rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_menu_callback, .Lfunc_end7-gimp_menu_callback
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_menu_make_preview,@function
gimp_menu_make_preview:                 # @gimp_menu_make_preview
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
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	%ecx, -16(%rbp)
	cmpl	$0, -8(%rbp)
	je	.LBB8_2
# BB#1:                                 # %if.then
	movl	$1, %ecx
	movl	-4(%rbp), %edi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	callq	gimp_image_get_thumbnail@PLT
	movq	%rax, -32(%rbp)
	jmp	.LBB8_3
.LBB8_2:                                # %if.else
	movl	$1, %ecx
	movl	-4(%rbp), %edi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	callq	gimp_drawable_get_thumbnail@PLT
	movq	%rax, -32(%rbp)
.LBB8_3:                                # %if.end
	movq	-32(%rbp), %rdi
	callq	gtk_image_new_from_pixbuf@PLT
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref@PLT
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_menu_make_preview, .Lfunc_end8-gimp_menu_make_preview
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"LibGimp"
	.size	.L.str, 8

	.type	.L__func__.gimp_image_menu_new,@object # @__func__.gimp_image_menu_new
.L__func__.gimp_image_menu_new:
	.asciz	"gimp_image_menu_new"
	.size	.L__func__.gimp_image_menu_new, 20

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"callback != NULL"
	.size	.L.str.1, 17

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"%s-%d"
	.size	.L.str.2, 6

	.type	.L__func__.gimp_layer_menu_new,@object # @__func__.gimp_layer_menu_new
.L__func__.gimp_layer_menu_new:
	.asciz	"gimp_layer_menu_new"
	.size	.L__func__.gimp_layer_menu_new, 20

	.type	.L__func__.gimp_channel_menu_new,@object # @__func__.gimp_channel_menu_new
.L__func__.gimp_channel_menu_new:
	.asciz	"gimp_channel_menu_new"
	.size	.L__func__.gimp_channel_menu_new, 22

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gimp-menu-callback"
	.size	.L.str.3, 19

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"gimp-menu-callback-data"
	.size	.L.str.4, 24

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"%s/%s-%d"
	.size	.L.str.5, 9

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"activate"
	.size	.L.str.6, 9

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"gimp20-libgimp"
	.size	.L.str.7, 15

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"(Empty)"
	.size	.L.str.8, 8


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
