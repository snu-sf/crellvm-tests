	.text
	.file	"gimpunitmenu.bc"
	.globl	gimp_unit_menu_get_type
	.align	16, 0x90
	.type	gimp_unit_menu_get_type,@function
gimp_unit_menu_get_type:                # @gimp_unit_menu_get_type
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
	movq	gimp_unit_menu_get_type.g_define_type_id__volatile(%rip), %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	leaq	gimp_unit_menu_get_type.g_define_type_id__volatile(%rip), %rax
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
	callq	gtk_option_menu_get_type@PLT
	leaq	.L.str(%rip), %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string@PLT
	movl	$984, %edx              # imm = 0x3D8
	leaq	gimp_unit_menu_class_intern_init(%rip), %rdi
	movl	$208, %r8d
	leaq	gimp_unit_menu_init(%rip), %rcx
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
	leaq	gimp_unit_menu_get_type.g_define_type_id__volatile(%rip), %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave@PLT
.LBB0_4:                                # %if.end
	movq	gimp_unit_menu_get_type.g_define_type_id__volatile(%rip), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_unit_menu_get_type, .Lfunc_end0-gimp_unit_menu_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_unit_menu_class_intern_init,@function
gimp_unit_menu_class_intern_init:       # @gimp_unit_menu_class_intern_init
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
	movq	%rax, gimp_unit_menu_parent_class(%rip)
	cmpl	$0, GimpUnitMenu_private_offset(%rip)
	je	.LBB1_2
# BB#1:                                 # %if.then
	leaq	GimpUnitMenu_private_offset(%rip), %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset@PLT
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_unit_menu_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_unit_menu_class_intern_init, .Lfunc_end1-gimp_unit_menu_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_unit_menu_init,@function
gimp_unit_menu_init:                    # @gimp_unit_menu_init
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
	movq	-8(%rbp), %rdi
	movq	$0, 168(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 176(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 184(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 188(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 192(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 200(%rdi)
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_unit_menu_init, .Lfunc_end2-gimp_unit_menu_init
	.cfi_endproc

	.globl	gimp_unit_menu_new
	.align	16, 0x90
	.type	gimp_unit_menu_new,@function
gimp_unit_menu_new:                     # @gimp_unit_menu_new
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
	subq	$272, %rsp              # imm = 0x110
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%r8d, -32(%rbp)
# BB#1:                                 # %do.body
	cmpl	$0, -20(%rbp)
	jb	.LBB3_3
# BB#2:                                 # %land.lhs.true
	movl	-20(%rbp), %eax
	movl	%eax, -72(%rbp)         # 4-byte Spill
	callq	gimp_unit_get_number_of_units@PLT
	movl	-72(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jb	.LBB3_4
.LBB3_3:                                # %lor.lhs.false
	cmpl	$65536, -20(%rbp)       # imm = 0x10000
	jne	.LBB3_5
.LBB3_4:                                # %if.then
	jmp	.LBB3_6
.LBB3_5:                                # %if.else
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_unit_menu_new(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB3_40
.LBB3_6:                                # %if.end
	jmp	.LBB3_7
.LBB3_7:                                # %do.end
	movl	-20(%rbp), %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
	callq	gimp_unit_get_number_of_built_in_units@PLT
	movl	-76(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jb	.LBB3_10
# BB#8:                                 # %land.lhs.true.5
	cmpl	$65536, -20(%rbp)       # imm = 0x10000
	je	.LBB3_10
# BB#9:                                 # %if.then.7
	movl	$1, -32(%rbp)
.LBB3_10:                               # %if.end.8
	callq	gimp_unit_menu_get_type@PLT
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new@PLT
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rdi
	callq	g_strdup@PLT
	movq	-40(%rbp), %rsi
	movq	%rax, 168(%rsi)
	movl	-24(%rbp), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, 184(%rax)
	movl	-28(%rbp), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, 188(%rax)
	callq	gtk_menu_new@PLT
	movl	$1, %ecx
	xorl	%edx, %edx
	movq	%rax, -48(%rbp)
	cmpl	$0, -24(%rbp)
	cmovnel	%edx, %ecx
	movl	%ecx, -68(%rbp)
.LBB3_11:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-68(%rbp), %eax
	movl	%eax, -80(%rbp)         # 4-byte Spill
	callq	gimp_unit_get_number_of_built_in_units@PLT
	movl	-80(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jae	.LBB3_21
# BB#12:                                # %for.body
                                        #   in Loop: Header=BB3_11 Depth=1
	cmpl	$1, -68(%rbp)
	jne	.LBB3_19
# BB#13:                                # %if.then.19
                                        #   in Loop: Header=BB3_11 Depth=1
	cmpl	$0, -28(%rbp)
	je	.LBB3_15
# BB#14:                                # %if.then.21
                                        #   in Loop: Header=BB3_11 Depth=1
	movl	$65536, %esi            # imm = 0x10000
	movq	-16(%rbp), %rdi
	callq	gimp_unit_format_string@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	callq	gtk_menu_item_new_with_label@PLT
	movq	%rax, -56(%rbp)
	movq	-64(%rbp), %rdi
	callq	g_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_menu_shell_get_type@PLT
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_menu_shell_append@PLT
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.3(%rip), %rsi
	movl	$65536, %ecx            # imm = 0x10000
	movl	%ecx, %edx
	movq	%rax, %rdi
	callq	g_object_set_data@PLT
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show@PLT
	leaq	.L.str.4(%rip), %rsi
	leaq	gimp_unit_menu_callback(%rip), %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-56(%rbp), %rdx
	movq	-40(%rbp), %rdi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-96(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_data@PLT
	movq	%rax, -104(%rbp)        # 8-byte Spill
.LBB3_15:                               # %if.end.28
                                        #   in Loop: Header=BB3_11 Depth=1
	cmpl	$0, -24(%rbp)
	jne	.LBB3_17
# BB#16:                                # %lor.lhs.false.30
                                        #   in Loop: Header=BB3_11 Depth=1
	cmpl	$0, -28(%rbp)
	je	.LBB3_18
.LBB3_17:                               # %if.then.32
                                        #   in Loop: Header=BB3_11 Depth=1
	callq	gtk_menu_item_new@PLT
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_menu_shell_get_type@PLT
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_menu_shell_append@PLT
	xorl	%esi, %esi
	movq	-56(%rbp), %rdi
	callq	gtk_widget_set_sensitive@PLT
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show@PLT
.LBB3_18:                               # %if.end.36
                                        #   in Loop: Header=BB3_11 Depth=1
	jmp	.LBB3_19
.LBB3_19:                               # %if.end.37
                                        #   in Loop: Header=BB3_11 Depth=1
	movq	-16(%rbp), %rdi
	movl	-68(%rbp), %esi
	callq	gimp_unit_format_string@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	callq	gtk_menu_item_new_with_label@PLT
	movq	%rax, -56(%rbp)
	movq	-64(%rbp), %rdi
	callq	g_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_menu_shell_get_type@PLT
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_menu_shell_append@PLT
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.3(%rip), %rsi
	movl	-68(%rbp), %ecx
	movl	%ecx, %edx
	movq	%rax, %rdi
	callq	g_object_set_data@PLT
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show@PLT
	leaq	.L.str.4(%rip), %rsi
	leaq	gimp_unit_menu_callback(%rip), %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-56(%rbp), %rdx
	movq	-40(%rbp), %rdi
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-128(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data@PLT
	movq	%rax, -136(%rbp)        # 8-byte Spill
# BB#20:                                # %for.inc
                                        #   in Loop: Header=BB3_11 Depth=1
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB3_11
.LBB3_21:                               # %for.end
	movl	-20(%rbp), %eax
	movl	%eax, -140(%rbp)        # 4-byte Spill
	callq	gimp_unit_get_number_of_built_in_units@PLT
	movl	-140(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jb	.LBB3_24
# BB#22:                                # %land.lhs.true.47
	cmpl	$65536, -20(%rbp)       # imm = 0x10000
	je	.LBB3_24
# BB#23:                                # %if.then.50
	callq	gtk_menu_item_new@PLT
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_menu_shell_get_type@PLT
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_menu_shell_append@PLT
	xorl	%esi, %esi
	movq	-56(%rbp), %rdi
	callq	gtk_widget_set_sensitive@PLT
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show@PLT
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_unit_format_string@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	callq	gtk_menu_item_new_with_label@PLT
	movq	%rax, -56(%rbp)
	movq	-64(%rbp), %rdi
	callq	g_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_menu_shell_get_type@PLT
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_menu_shell_append@PLT
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.3(%rip), %rsi
	movl	-20(%rbp), %ecx
	movl	%ecx, %edx
	movq	%rax, %rdi
	callq	g_object_set_data@PLT
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show@PLT
	leaq	.L.str.4(%rip), %rsi
	leaq	gimp_unit_menu_callback(%rip), %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-56(%rbp), %rdx
	movq	-40(%rbp), %rdi
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-168(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data@PLT
	movq	%rax, -176(%rbp)        # 8-byte Spill
.LBB3_24:                               # %if.end.61
	cmpl	$0, -32(%rbp)
	je	.LBB3_26
# BB#25:                                # %if.then.63
	callq	gtk_menu_item_new@PLT
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_menu_shell_get_type@PLT
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_menu_shell_append@PLT
	xorl	%esi, %esi
	movq	-56(%rbp), %rdi
	callq	gtk_widget_set_sensitive@PLT
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show@PLT
	leaq	.L.str.5(%rip), %rdi
	leaq	.L.str.6(%rip), %rsi
	callq	dgettext@PLT
	movq	%rax, %rdi
	callq	gtk_menu_item_new_with_label@PLT
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gtk_menu_shell_get_type@PLT
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_menu_shell_append@PLT
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.3(%rip), %rsi
	movl	$65537, %ecx            # imm = 0x10001
	movl	%ecx, %edx
	movq	%rax, %rdi
	callq	g_object_set_data@PLT
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show@PLT
	leaq	.L.str.4(%rip), %rsi
	leaq	gimp_unit_menu_callback(%rip), %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-56(%rbp), %rdx
	movq	-40(%rbp), %rdi
	movq	%rdi, -200(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-200(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data@PLT
	movq	%rax, -208(%rbp)        # 8-byte Spill
.LBB3_26:                               # %if.end.73
	movq	-40(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gtk_option_menu_get_type@PLT
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_option_menu_set_menu@PLT
	movl	-20(%rbp), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, 176(%rax)
	movq	-40(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gtk_option_menu_get_type@PLT
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	cmpl	$0, -20(%rbp)
	movq	%rax, -232(%rbp)        # 8-byte Spill
	jne	.LBB3_28
# BB#27:                                # %cond.true
	xorl	%eax, %eax
	movl	%eax, -236(%rbp)        # 4-byte Spill
	jmp	.LBB3_39
.LBB3_28:                               # %cond.false
	cmpl	$65536, -20(%rbp)       # imm = 0x10000
	jne	.LBB3_30
# BB#29:                                # %cond.true.83
	xorl	%eax, %eax
	movl	$1, %ecx
	cmpl	$0, -24(%rbp)
	cmovnel	%ecx, %eax
	movl	%eax, -240(%rbp)        # 4-byte Spill
	jmp	.LBB3_38
.LBB3_30:                               # %cond.false.86
	movb	$1, %al
	cmpl	$0, -24(%rbp)
	movb	%al, -241(%rbp)         # 1-byte Spill
	jne	.LBB3_32
# BB#31:                                # %lor.rhs
	cmpl	$0, -28(%rbp)
	setne	%al
	movb	%al, -241(%rbp)         # 1-byte Spill
.LBB3_32:                               # %lor.end
	movb	-241(%rbp), %al         # 1-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	xorl	%ecx, %ecx
	movl	$2, %esi
	testb	$1, %al
	cmovnel	%esi, %ecx
	cmpl	$0, -24(%rbp)
	movl	%ecx, -248(%rbp)        # 4-byte Spill
	movb	%dl, -249(%rbp)         # 1-byte Spill
	je	.LBB3_34
# BB#33:                                # %land.rhs
	cmpl	$0, -28(%rbp)
	setne	%al
	movb	%al, -249(%rbp)         # 1-byte Spill
.LBB3_34:                               # %land.end
	movb	-249(%rbp), %al         # 1-byte Reload
	xorl	%ecx, %ecx
	movl	$1, %edx
	testb	$1, %al
	cmovnel	%edx, %ecx
	movl	-248(%rbp), %edx        # 4-byte Reload
	addl	%ecx, %edx
	cmpl	$5, -20(%rbp)
	movl	%edx, -256(%rbp)        # 4-byte Spill
	jae	.LBB3_36
# BB#35:                                # %cond.true.95
	movl	-20(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -260(%rbp)        # 4-byte Spill
	jmp	.LBB3_37
.LBB3_36:                               # %cond.false.96
	movl	$5, %eax
	movl	%eax, -260(%rbp)        # 4-byte Spill
	jmp	.LBB3_37
.LBB3_37:                               # %cond.end
	movl	-260(%rbp), %eax        # 4-byte Reload
	movl	-256(%rbp), %ecx        # 4-byte Reload
	addl	%eax, %ecx
	movl	%ecx, -240(%rbp)        # 4-byte Spill
.LBB3_38:                               # %cond.end.99
	movl	-240(%rbp), %eax        # 4-byte Reload
	movl	%eax, -236(%rbp)        # 4-byte Spill
.LBB3_39:                               # %cond.end.101
	movl	-236(%rbp), %eax        # 4-byte Reload
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %esi
	callq	gtk_option_menu_set_history@PLT
	movq	-40(%rbp), %rdi
	movq	%rdi, -272(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -8(%rbp)
.LBB3_40:                               # %return
	movq	-8(%rbp), %rax
	addq	$272, %rsp              # imm = 0x110
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_unit_menu_new, .Lfunc_end3-gimp_unit_menu_new
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_unit_menu_callback,@function
gimp_unit_menu_callback:                # @gimp_unit_menu_callback
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
	subq	$80, %rsp
	movl	$80, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.3(%rip), %rsi
	movq	%rax, %rdi
	callq	g_object_get_data@PLT
	movl	%eax, %edx
	movl	%edx, -28(%rbp)
	movq	-24(%rbp), %rax
	movl	176(%rax), %edx
	cmpl	-28(%rbp), %edx
	jne	.LBB4_2
# BB#1:                                 # %if.then
	jmp	.LBB4_23
.LBB4_2:                                # %if.end
	cmpl	$65537, -28(%rbp)       # imm = 0x10001
	jne	.LBB4_19
# BB#3:                                 # %if.then.5
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_option_menu_get_type@PLT
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-24(%rbp), %rsi
	cmpl	$0, 176(%rsi)
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jne	.LBB4_5
# BB#4:                                 # %cond.true
	xorl	%eax, %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
	jmp	.LBB4_16
.LBB4_5:                                # %cond.false
	movq	-24(%rbp), %rax
	cmpl	$65536, 176(%rax)       # imm = 0x10000
	jne	.LBB4_7
# BB#6:                                 # %cond.true.14
	xorl	%eax, %eax
	movl	$1, %ecx
	movq	-24(%rbp), %rdx
	cmpl	$0, 184(%rdx)
	cmovnel	%ecx, %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
	jmp	.LBB4_15
.LBB4_7:                                # %cond.false.15
	movb	$1, %al
	movq	-24(%rbp), %rcx
	cmpl	$0, 184(%rcx)
	movb	%al, -57(%rbp)          # 1-byte Spill
	jne	.LBB4_9
# BB#8:                                 # %lor.rhs
	movq	-24(%rbp), %rax
	cmpl	$0, 188(%rax)
	setne	%cl
	movb	%cl, -57(%rbp)          # 1-byte Spill
.LBB4_9:                                # %lor.end
	movb	-57(%rbp), %al          # 1-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	xorl	%ecx, %ecx
	movl	$2, %esi
	testb	$1, %al
	cmovnel	%esi, %ecx
	movq	-24(%rbp), %rdi
	cmpl	$0, 184(%rdi)
	movl	%ecx, -64(%rbp)         # 4-byte Spill
	movb	%dl, -65(%rbp)          # 1-byte Spill
	je	.LBB4_11
# BB#10:                                # %land.rhs
	movq	-24(%rbp), %rax
	cmpl	$0, 188(%rax)
	setne	%cl
	movb	%cl, -65(%rbp)          # 1-byte Spill
.LBB4_11:                               # %land.end
	movb	-65(%rbp), %al          # 1-byte Reload
	xorl	%ecx, %ecx
	movl	$1, %edx
	testb	$1, %al
	cmovnel	%edx, %ecx
	movl	-64(%rbp), %edx         # 4-byte Reload
	addl	%ecx, %edx
	movq	-24(%rbp), %rsi
	cmpl	$5, 176(%rsi)
	movl	%edx, -72(%rbp)         # 4-byte Spill
	jae	.LBB4_13
# BB#12:                                # %cond.true.28
	movq	-24(%rbp), %rax
	movl	176(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, -76(%rbp)         # 4-byte Spill
	jmp	.LBB4_14
.LBB4_13:                               # %cond.false.30
	movl	$5, %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
	jmp	.LBB4_14
.LBB4_14:                               # %cond.end
	movl	-76(%rbp), %eax         # 4-byte Reload
	movl	-72(%rbp), %ecx         # 4-byte Reload
	addl	%eax, %ecx
	movl	%ecx, -56(%rbp)         # 4-byte Spill
.LBB4_15:                               # %cond.end.33
	movl	-56(%rbp), %eax         # 4-byte Reload
	movl	%eax, -52(%rbp)         # 4-byte Spill
.LBB4_16:                               # %cond.end.35
	movl	-52(%rbp), %eax         # 4-byte Reload
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	%eax, %esi
	callq	gtk_option_menu_set_history@PLT
	movq	-24(%rbp), %rdi
	cmpq	$0, 192(%rdi)
	jne	.LBB4_18
# BB#17:                                # %if.then.38
	movq	-24(%rbp), %rdi
	callq	gimp_unit_menu_create_selection
.LBB4_18:                               # %if.end.39
	jmp	.LBB4_23
.LBB4_19:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, 192(%rax)
	je	.LBB4_21
# BB#20:                                # %if.then.42
	movq	-24(%rbp), %rax
	movq	192(%rax), %rdi
	callq	gtk_widget_destroy@PLT
.LBB4_21:                               # %if.end.44
	jmp	.LBB4_22
.LBB4_22:                               # %if.end.45
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	gimp_unit_menu_set_unit@PLT
.LBB4_23:                               # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_unit_menu_callback, .Lfunc_end4-gimp_unit_menu_callback
	.cfi_endproc

	.globl	gimp_unit_menu_set_unit
	.align	16, 0x90
	.type	gimp_unit_menu_set_unit,@function
gimp_unit_menu_set_unit:                # @gimp_unit_menu_set_unit
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
	subq	$256, %rsp              # imm = 0x100
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	$0, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_unit_menu_get_type@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB5_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB5_8
.LBB5_3:                                # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB5_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB5_7
.LBB5_6:                                # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -60(%rbp)
.LBB5_7:                                # %if.end
	jmp	.LBB5_8
.LBB5_8:                                # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB5_10
# BB#9:                                 # %if.then.8
	jmp	.LBB5_11
.LBB5_10:                               # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_unit_menu_set_unit(%rip), %rsi
	leaq	.L.str.7(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB5_47
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	jmp	.LBB5_13
.LBB5_13:                               # %do.body.11
	cmpl	$0, -12(%rbp)
	jb	.LBB5_17
# BB#14:                                # %land.lhs.true.13
	cmpl	$0, -12(%rbp)
	ja	.LBB5_16
# BB#15:                                # %lor.lhs.false
	movq	-8(%rbp), %rax
	cmpl	$0, 184(%rax)
	je	.LBB5_17
.LBB5_16:                               # %land.lhs.true.16
	movl	-12(%rbp), %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
	callq	gimp_unit_get_number_of_units@PLT
	movl	-76(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jb	.LBB5_19
.LBB5_17:                               # %lor.lhs.false.19
	cmpl	$65536, -12(%rbp)       # imm = 0x10000
	jne	.LBB5_20
# BB#18:                                # %land.lhs.true.21
	movq	-8(%rbp), %rax
	cmpl	$0, 188(%rax)
	je	.LBB5_20
.LBB5_19:                               # %if.then.23
	jmp	.LBB5_21
.LBB5_20:                               # %if.else.24
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_unit_menu_set_unit(%rip), %rsi
	leaq	.L.str.8(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB5_47
.LBB5_21:                               # %if.end.25
	jmp	.LBB5_22
.LBB5_22:                               # %do.end.26
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	176(%rcx), %eax
	jne	.LBB5_24
# BB#23:                                # %if.then.29
	jmp	.LBB5_47
.LBB5_24:                               # %if.end.30
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_option_menu_get_type@PLT
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	144(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_menu_shell_get_type@PLT
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movb	$1, %cl
	movq	112(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$0, 184(%rax)
	movb	%cl, -97(%rbp)          # 1-byte Spill
	jne	.LBB5_26
# BB#25:                                # %lor.rhs
	movq	-8(%rbp), %rax
	cmpl	$0, 188(%rax)
	setne	%cl
	movb	%cl, -97(%rbp)          # 1-byte Spill
.LBB5_26:                               # %lor.end
	movb	-97(%rbp), %al          # 1-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	xorl	%ecx, %ecx
	movl	$2, %esi
	testb	$1, %al
	cmovnel	%esi, %ecx
	movq	-8(%rbp), %rdi
	cmpl	$0, 184(%rdi)
	movl	%ecx, -104(%rbp)        # 4-byte Spill
	movb	%dl, -105(%rbp)         # 1-byte Spill
	je	.LBB5_28
# BB#27:                                # %land.rhs
	movq	-8(%rbp), %rax
	cmpl	$0, 188(%rax)
	setne	%cl
	movb	%cl, -105(%rbp)         # 1-byte Spill
.LBB5_28:                               # %land.end
	movb	-105(%rbp), %al         # 1-byte Reload
	xorl	%ecx, %ecx
	movl	$1, %edx
	testb	$1, %al
	cmovnel	%edx, %ecx
	movl	-104(%rbp), %edx        # 4-byte Reload
	addl	%ecx, %edx
	addl	$5, %edx
	movl	%edx, -36(%rbp)
	cmpl	$5, -12(%rbp)
	jb	.LBB5_33
# BB#29:                                # %land.lhs.true.47
	cmpl	$65536, -12(%rbp)       # imm = 0x10000
	je	.LBB5_33
# BB#30:                                # %if.then.49
	movq	-32(%rbp), %rdi
	callq	g_list_length@PLT
	subl	$3, %eax
	cmpl	-36(%rbp), %eax
	jb	.LBB5_32
# BB#31:                                # %if.then.53
	movq	-32(%rbp), %rdi
	movl	-36(%rbp), %eax
	subl	$1, %eax
	movl	%eax, %esi
	callq	g_list_nth_data@PLT
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_widget_destroy@PLT
	movq	-32(%rbp), %rdi
	movl	-36(%rbp), %ecx
	subl	$1, %ecx
	movl	%ecx, %esi
	callq	g_list_nth_data@PLT
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_widget_destroy@PLT
.LBB5_32:                               # %if.end.62
	callq	gtk_menu_item_new@PLT
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_option_menu_get_type@PLT
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	144(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_menu_shell_get_type@PLT
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_menu_shell_append@PLT
	xorl	%esi, %esi
	movq	-24(%rbp), %rdi
	callq	gtk_widget_set_sensitive@PLT
	movq	-8(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_option_menu_get_type@PLT
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	144(%rax), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_menu_get_type@PLT
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-24(%rbp), %rsi
	movl	-36(%rbp), %ecx
	subl	$1, %ecx
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_menu_reorder_child@PLT
	movq	-24(%rbp), %rdi
	callq	gtk_widget_show@PLT
	movq	-8(%rbp), %rax
	movq	168(%rax), %rdi
	movl	-12(%rbp), %esi
	callq	gimp_unit_format_string@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	callq	gtk_menu_item_new_with_label@PLT
	movq	%rax, -24(%rbp)
	movq	-72(%rbp), %rdi
	callq	g_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_option_menu_get_type@PLT
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	144(%rax), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_menu_shell_get_type@PLT
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_menu_shell_append@PLT
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.3(%rip), %rsi
	movl	-12(%rbp), %ecx
	movl	%ecx, %edx
	movq	%rax, %rdi
	callq	g_object_set_data@PLT
	movq	-8(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_option_menu_get_type@PLT
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	144(%rax), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gtk_menu_get_type@PLT
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-24(%rbp), %rsi
	movl	-36(%rbp), %edx
	movq	%rax, %rdi
	callq	gtk_menu_reorder_child@PLT
	movq	-24(%rbp), %rdi
	callq	gtk_widget_show@PLT
	leaq	.L.str.4(%rip), %rsi
	leaq	gimp_unit_menu_callback(%rip), %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data@PLT
	movq	%rax, -200(%rbp)        # 8-byte Spill
.LBB5_33:                               # %if.end.89
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 176(%rcx)
	movq	-8(%rbp), %rcx
	movq	%rcx, -208(%rbp)        # 8-byte Spill
	callq	gtk_option_menu_get_type@PLT
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	cmpl	$0, -12(%rbp)
	movq	%rax, -216(%rbp)        # 8-byte Spill
	jne	.LBB5_35
# BB#34:                                # %cond.true
	xorl	%eax, %eax
	movl	%eax, -220(%rbp)        # 4-byte Spill
	jmp	.LBB5_46
.LBB5_35:                               # %cond.false
	cmpl	$65536, -12(%rbp)       # imm = 0x10000
	jne	.LBB5_37
# BB#36:                                # %cond.true.97
	xorl	%eax, %eax
	movl	$1, %ecx
	movq	-8(%rbp), %rdx
	cmpl	$0, 184(%rdx)
	cmovnel	%ecx, %eax
	movl	%eax, -224(%rbp)        # 4-byte Spill
	jmp	.LBB5_45
.LBB5_37:                               # %cond.false.101
	movb	$1, %al
	movq	-8(%rbp), %rcx
	cmpl	$0, 184(%rcx)
	movb	%al, -225(%rbp)         # 1-byte Spill
	jne	.LBB5_39
# BB#38:                                # %lor.rhs.104
	movq	-8(%rbp), %rax
	cmpl	$0, 188(%rax)
	setne	%cl
	movb	%cl, -225(%rbp)         # 1-byte Spill
.LBB5_39:                               # %lor.end.107
	movb	-225(%rbp), %al         # 1-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	xorl	%ecx, %ecx
	movl	$2, %esi
	testb	$1, %al
	cmovnel	%esi, %ecx
	movq	-8(%rbp), %rdi
	cmpl	$0, 184(%rdi)
	movl	%ecx, -232(%rbp)        # 4-byte Spill
	movb	%dl, -233(%rbp)         # 1-byte Spill
	je	.LBB5_41
# BB#40:                                # %land.rhs.111
	movq	-8(%rbp), %rax
	cmpl	$0, 188(%rax)
	setne	%cl
	movb	%cl, -233(%rbp)         # 1-byte Spill
.LBB5_41:                               # %land.end.114
	movb	-233(%rbp), %al         # 1-byte Reload
	xorl	%ecx, %ecx
	movl	$1, %edx
	testb	$1, %al
	cmovnel	%edx, %ecx
	movl	-232(%rbp), %edx        # 4-byte Reload
	addl	%ecx, %edx
	cmpl	$5, -12(%rbp)
	movl	%edx, -240(%rbp)        # 4-byte Spill
	jae	.LBB5_43
# BB#42:                                # %cond.true.119
	movl	-12(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -244(%rbp)        # 4-byte Spill
	jmp	.LBB5_44
.LBB5_43:                               # %cond.false.121
	movl	$5, %eax
	movl	%eax, -244(%rbp)        # 4-byte Spill
	jmp	.LBB5_44
.LBB5_44:                               # %cond.end
	movl	-244(%rbp), %eax        # 4-byte Reload
	movl	-240(%rbp), %ecx        # 4-byte Reload
	addl	%eax, %ecx
	movl	%ecx, -224(%rbp)        # 4-byte Spill
.LBB5_45:                               # %cond.end.124
	movl	-224(%rbp), %eax        # 4-byte Reload
	movl	%eax, -220(%rbp)        # 4-byte Spill
.LBB5_46:                               # %cond.end.126
	movl	-220(%rbp), %eax        # 4-byte Reload
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %esi
	callq	gtk_option_menu_set_history@PLT
	xorl	%edx, %edx
	movq	-8(%rbp), %rdi
	movl	gimp_unit_menu_signals(%rip), %esi
	movb	$0, %al
	callq	g_signal_emit@PLT
.LBB5_47:                               # %return
	addq	$256, %rsp              # imm = 0x100
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_unit_menu_set_unit, .Lfunc_end5-gimp_unit_menu_set_unit
	.cfi_endproc

	.globl	gimp_unit_menu_get_unit
	.align	16, 0x90
	.type	gimp_unit_menu_get_unit,@function
gimp_unit_menu_get_unit:                # @gimp_unit_menu_get_unit
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_unit_menu_get_type@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB6_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB6_8
.LBB6_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB6_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB6_7
.LBB6_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -36(%rbp)
.LBB6_7:                                # %if.end
	jmp	.LBB6_8
.LBB6_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB6_10
# BB#9:                                 # %if.then.8
	jmp	.LBB6_11
.LBB6_10:                               # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_unit_menu_get_unit(%rip), %rsi
	leaq	.L.str.7(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$1, -4(%rbp)
	jmp	.LBB6_13
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	movq	-16(%rbp), %rax
	movl	176(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB6_13:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_unit_menu_get_unit, .Lfunc_end6-gimp_unit_menu_get_unit
	.cfi_endproc

	.globl	gimp_unit_menu_set_pixel_digits
	.align	16, 0x90
	.type	gimp_unit_menu_set_pixel_digits,@function
gimp_unit_menu_set_pixel_digits:        # @gimp_unit_menu_set_pixel_digits
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
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_unit_menu_get_type@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB7_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB7_8
.LBB7_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB7_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB7_7
.LBB7_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -36(%rbp)
.LBB7_7:                                # %if.end
	jmp	.LBB7_8
.LBB7_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB7_10
# BB#9:                                 # %if.then.8
	jmp	.LBB7_11
.LBB7_10:                               # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_unit_menu_set_pixel_digits(%rip), %rsi
	leaq	.L.str.7(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB7_13
.LBB7_11:                               # %if.end.10
	jmp	.LBB7_12
.LBB7_12:                               # %do.end
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 180(%rcx)
	movq	-8(%rbp), %rcx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	-16(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	gimp_unit_menu_update@PLT
.LBB7_13:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_unit_menu_set_pixel_digits, .Lfunc_end7-gimp_unit_menu_set_pixel_digits
	.cfi_endproc

	.globl	gimp_unit_menu_get_pixel_digits
	.align	16, 0x90
	.type	gimp_unit_menu_get_pixel_digits,@function
gimp_unit_menu_get_pixel_digits:        # @gimp_unit_menu_get_pixel_digits
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_unit_menu_get_type@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB8_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB8_8
.LBB8_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB8_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB8_7
.LBB8_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -36(%rbp)
.LBB8_7:                                # %if.end
	jmp	.LBB8_8
.LBB8_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB8_10
# BB#9:                                 # %if.then.8
	jmp	.LBB8_11
.LBB8_10:                               # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_unit_menu_get_pixel_digits(%rip), %rsi
	leaq	.L.str.7(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB8_13
.LBB8_11:                               # %if.end.10
	jmp	.LBB8_12
.LBB8_12:                               # %do.end
	movq	-16(%rbp), %rax
	movl	180(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB8_13:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_unit_menu_get_pixel_digits, .Lfunc_end8-gimp_unit_menu_get_pixel_digits
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_unit_menu_class_init,@function
gimp_unit_menu_class_init:              # @gimp_unit_menu_class_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp27:
	.cfi_def_cfa_offset 16
.Ltmp28:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp29:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_class_cast@PLT
	leaq	.L.str.9(%rip), %rdi
	movl	$1, %edx
	movl	$944, %ecx              # imm = 0x3B0
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movq	g_cclosure_marshal_VOID__VOID@GOTPCREL(%rip), %r9
	movl	$4, %r8d
	movl	%r8d, %r10d
	xorl	%r8d, %r8d
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movq	-24(%rbp), %rax         # 8-byte Reload
	movl	%r8d, -28(%rbp)         # 4-byte Spill
	movq	%rax, %r8
	movq	%r9, -40(%rbp)          # 8-byte Spill
	movq	%rax, %r9
	movq	-40(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	movq	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movb	$0, %al
	movq	%r10, -48(%rbp)         # 8-byte Spill
	callq	g_signal_new@PLT
	leaq	gimp_unit_menu_finalize(%rip), %rsi
	movl	%eax, gimp_unit_menu_signals(%rip)
	movq	-16(%rbp), %rdi
	movq	%rsi, 48(%rdi)
	movq	-8(%rbp), %rsi
	movq	$0, 944(%rsi)
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_unit_menu_class_init, .Lfunc_end9-gimp_unit_menu_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_unit_menu_finalize,@function
gimp_unit_menu_finalize:                # @gimp_unit_menu_finalize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp30:
	.cfi_def_cfa_offset 16
.Ltmp31:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp32:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_unit_menu_get_type@PLT
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 168(%rax)
	je	.LBB10_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	168(%rax), %rdi
	callq	g_free@PLT
	movq	-16(%rbp), %rax
	movq	$0, 168(%rax)
.LBB10_2:                               # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_unit_menu_parent_class(%rip), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast@PLT
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_unit_menu_finalize, .Lfunc_end10-gimp_unit_menu_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_unit_menu_create_selection,@function
gimp_unit_menu_create_selection:        # @gimp_unit_menu_create_selection
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp33:
	.cfi_def_cfa_offset 16
.Ltmp34:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp35:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$432, %rsp              # imm = 0x1B0
.Ltmp36:
	.cfi_offset %rbx, -32
.Ltmp37:
	.cfi_offset %r14, -24
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_widget_get_toplevel@PLT
	movq	%rax, -32(%rbp)
	movl	$2, -108(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type@PLT
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_window_get_modal@PLT
	cmpl	$0, %eax
	je	.LBB11_2
# BB#1:                                 # %if.then
	movl	-108(%rbp), %eax
	orl	$1, %eax
	movl	%eax, -108(%rbp)
.LBB11_2:                               # %if.end
	leaq	.L.str.5(%rip), %rdi
	leaq	.L.str.10(%rip), %rsi
	callq	dgettext@PLT
	leaq	.L.str.11(%rip), %rsi
	movq	gimp_standard_help_func@GOTPCREL(%rip), %r8
	leaq	.L.str.12(%rip), %r9
	leaq	.L.str.13(%rip), %rdi
	movl	$4294967290, %ecx       # imm = 0xFFFFFFFA
	leaq	.L.str.14(%rip), %rdx
	movl	$4294967291, %r10d      # imm = 0xFFFFFFFB
	xorl	%r11d, %r11d
	movl	%r11d, %ebx
	movq	-32(%rbp), %r14
	movl	-108(%rbp), %r11d
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rdx, -160(%rbp)        # 8-byte Spill
	movq	%r14, %rdx
	movl	%ecx, -164(%rbp)        # 4-byte Spill
	movl	%r11d, %ecx
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$-6, 8(%rsp)
	movq	-160(%rbp), %r14        # 8-byte Reload
	movq	%r14, 16(%rsp)
	movl	$-5, 24(%rsp)
	movq	$0, 32(%rsp)
	movb	$0, %al
	movl	%r10d, -168(%rbp)       # 4-byte Spill
	movq	%rbx, -176(%rbp)        # 8-byte Spill
	callq	gimp_dialog_new@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 192(%rdx)
	movq	-24(%rbp), %rax
	movq	192(%rax), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type@PLT
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order@PLT
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-24(%rbp), %rdi
	movq	192(%rdi), %rdi
	callq	g_type_check_instance_cast@PLT
	movq	-24(%rbp), %rsi
	addq	$192, %rsi
	movq	%rax, %rdi
	callq	g_object_add_weak_pointer@PLT
	leaq	.L.str.15(%rip), %rsi
	leaq	gimp_unit_menu_selection_response(%rip), %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rdi
	movq	192(%rdi), %rdi
	movq	-24(%rbp), %rbx
	movq	%rax, %rdx
	movq	%rbx, %rcx
	callq	g_signal_connect_data@PLT
	leaq	.L.str.16(%rip), %rsi
	movq	gtk_widget_destroy@GOTPCREL(%rip), %rcx
	movl	$2, %r8d
	movq	-24(%rbp), %rdx
	movq	-24(%rbp), %rdi
	movq	192(%rdi), %rdi
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-192(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	g_signal_connect_object@PLT
	movl	$1, %edi
	xorl	%esi, %esi
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gtk_box_new@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type@PLT
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width@PLT
	movq	-24(%rbp), %rax
	movq	192(%rax), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type@PLT
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area@PLT
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type@PLT
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %r8d
	xorl	%r9d, %r9d
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r8d, %edx
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start@PLT
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show@PLT
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gtk_scrolled_window_new@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gtk_scrolled_window_get_type@PLT
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$3, %esi
	movq	%rax, %rdi
	callq	gtk_scrolled_window_set_shadow_type@PLT
	movq	-48(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gtk_scrolled_window_get_type@PLT
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$2, %esi
	xorl	%edx, %edx
	movq	%rax, %rdi
	callq	gtk_scrolled_window_set_policy@PLT
	movq	-40(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type@PLT
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start@PLT
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show@PLT
	movl	$3, %edi
	movl	$64, %ecx
	movl	%ecx, %eax
	movl	$24, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rax, %rsi
	movq	%rax, %rdx
	movb	$0, %al
	callq	gtk_list_store_new@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gtk_tree_model_get_type@PLT
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_tree_view_new_with_model@PLT
	movq	-24(%rbp), %rcx
	movq	%rax, 200(%rcx)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref@PLT
	movq	-24(%rbp), %rax
	movq	200(%rax), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gtk_tree_view_get_type@PLT
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.5(%rip), %rdi
	leaq	.L.str.17(%rip), %rsi
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	dgettext@PLT
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gtk_cell_renderer_text_new@PLT
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	leaq	.L.str.18(%rip), %r8
	xorl	%r9d, %r9d
	xorl	%r10d, %r10d
	movl	%r10d, %ecx
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	-288(%rbp), %rdx        # 8-byte Reload
	movq	%rcx, -296(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movq	$0, (%rsp)
	movb	$0, %al
	callq	gtk_tree_view_insert_column_with_attributes@PLT
	movq	-24(%rbp), %rcx
	movq	200(%rcx), %rcx
	movl	%eax, -300(%rbp)        # 4-byte Spill
	movq	%rcx, -312(%rbp)        # 8-byte Spill
	callq	gtk_tree_view_get_type@PLT
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.5(%rip), %rdi
	leaq	.L.str.19(%rip), %rsi
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	dgettext@PLT
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	gtk_cell_renderer_text_new@PLT
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	leaq	.L.str.18(%rip), %r8
	movl	$1, %r9d
	xorl	%r10d, %r10d
	movl	%r10d, %ecx
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	-328(%rbp), %rdx        # 8-byte Reload
	movq	%rcx, -336(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movq	$0, (%rsp)
	movb	$0, %al
	callq	gtk_tree_view_insert_column_with_attributes@PLT
	movl	%eax, -340(%rbp)        # 4-byte Spill
	callq	gimp_unit_get_number_of_units@PLT
	movl	%eax, -116(%rbp)
	movl	$5, -112(%rbp)
.LBB11_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-112(%rbp), %eax
	cmpl	-116(%rbp), %eax
	jae	.LBB11_6
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB11_3 Depth=1
	leaq	-96(%rbp), %rsi
	movq	-56(%rbp), %rdi
	callq	gtk_list_store_append@PLT
	movq	-24(%rbp), %rsi
	movq	168(%rsi), %rdi
	movl	-112(%rbp), %esi
	callq	gimp_unit_format_string@PLT
	leaq	-96(%rbp), %rsi
	xorl	%edx, %edx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	%rax, -128(%rbp)
	movq	-56(%rbp), %rdi
	movq	-128(%rbp), %rcx
	movb	$0, %al
	callq	gtk_list_store_set@PLT
	movq	-128(%rbp), %rdi
	callq	g_free@PLT
	leaq	.L.str.20(%rip), %rdi
	movl	-112(%rbp), %esi
	callq	gimp_unit_format_string@PLT
	leaq	-96(%rbp), %rsi
	movl	$1, %edx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	%rax, -128(%rbp)
	movq	-56(%rbp), %rdi
	movq	-128(%rbp), %rcx
	movb	$0, %al
	callq	gtk_list_store_set@PLT
	movq	-128(%rbp), %rdi
	callq	g_free@PLT
	leaq	-96(%rbp), %rsi
	movl	$2, %edx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	-56(%rbp), %rdi
	movl	-112(%rbp), %ecx
	movb	$0, %al
	callq	gtk_list_store_set@PLT
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB11_3 Depth=1
	movl	-112(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -112(%rbp)
	jmp	.LBB11_3
.LBB11_6:                               # %for.end
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	movl	$150, %edx
	movq	-24(%rbp), %rax
	movq	200(%rax), %rdi
	callq	gtk_widget_set_size_request@PLT
	movq	-48(%rbp), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type@PLT
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-24(%rbp), %rsi
	movq	200(%rsi), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add@PLT
	leaq	.L.str.21(%rip), %rsi
	leaq	gimp_unit_menu_selection_row_activated_callback(%rip), %rax
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rdi
	movq	200(%rdi), %rdi
	movq	-24(%rbp), %rcx
	movq	%rax, %rdx
	callq	g_signal_connect_data@PLT
	movq	-24(%rbp), %rcx
	movq	200(%rcx), %rdi
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	gtk_widget_show@PLT
	leaq	.L.str.22(%rip), %rsi
	movq	gtk_widget_destroyed@GOTPCREL(%rip), %rax
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rcx
	movq	200(%rcx), %rcx
	movq	-24(%rbp), %rdx
	addq	$200, %rdx
	movq	%rcx, %rdi
	movq	%rdx, -368(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-368(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data@PLT
	movq	-40(%rbp), %rdi
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	gtk_widget_show@PLT
	movq	-24(%rbp), %rax
	movq	192(%rax), %rdi
	callq	gtk_widget_show@PLT
	movq	-24(%rbp), %rax
	cmpl	$5, 176(%rax)
	jb	.LBB11_8
# BB#7:                                 # %if.then.66
	callq	gtk_tree_path_new@PLT
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rdi
	movq	-24(%rbp), %rax
	movl	176(%rax), %ecx
	subl	$5, %ecx
	movl	%ecx, %esi
	callq	gtk_tree_path_append_index@PLT
	movq	-24(%rbp), %rax
	movq	200(%rax), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	gtk_tree_view_get_type@PLT
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_tree_view_get_selection@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	gtk_tree_selection_select_path@PLT
	movq	-24(%rbp), %rax
	movq	200(%rax), %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	gtk_tree_view_get_type@PLT
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	xorps	%xmm0, %xmm0
	movq	-104(%rbp), %rsi
	movq	%rax, %rdi
	movss	%xmm0, -396(%rbp)       # 4-byte Spill
	movss	-396(%rbp), %xmm1       # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	callq	gtk_tree_view_scroll_to_cell@PLT
.LBB11_8:                               # %if.end.76
	addq	$432, %rsp              # imm = 0x1B0
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_unit_menu_create_selection, .Lfunc_end11-gimp_unit_menu_create_selection
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_unit_menu_selection_response,@function
gimp_unit_menu_selection_response:      # @gimp_unit_menu_selection_response
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	cmpl	$-5, -12(%rbp)
	jne	.LBB12_5
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	200(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_tree_view_get_type@PLT
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_tree_view_get_selection@PLT
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, 192(%rax)
	je	.LBB12_4
# BB#2:                                 # %land.lhs.true
	leaq	-40(%rbp), %rsi
	leaq	-72(%rbp), %rdx
	movq	-32(%rbp), %rdi
	callq	gtk_tree_selection_get_selected@PLT
	cmpl	$0, %eax
	je	.LBB12_4
# BB#3:                                 # %if.then.5
	leaq	-72(%rbp), %rsi
	movl	$2, %edx
	leaq	-96(%rbp), %rax
	xorl	%ecx, %ecx
	movl	$24, %edi
	movl	%edi, %r8d
	movq	%rax, %r9
	movq	%r9, %rdi
	movq	%rsi, -120(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movl	%edx, -124(%rbp)        # 4-byte Spill
	movq	%r8, %rdx
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	memset@PLT
	movq	-40(%rbp), %rdi
	movq	-120(%rbp), %rsi        # 8-byte Reload
	movl	-124(%rbp), %edx        # 4-byte Reload
	movq	-136(%rbp), %rcx        # 8-byte Reload
	callq	gtk_tree_model_get_value@PLT
	leaq	-96(%rbp), %rdi
	callq	g_value_get_int@PLT
	leaq	-96(%rbp), %rdi
	movl	%eax, -100(%rbp)
	callq	g_value_unset@PLT
	movq	-24(%rbp), %rdi
	movl	-100(%rbp), %esi
	callq	gimp_unit_menu_set_unit@PLT
.LBB12_4:                               # %if.end
	jmp	.LBB12_5
.LBB12_5:                               # %if.end.7
	movq	-24(%rbp), %rax
	movq	192(%rax), %rdi
	callq	gtk_widget_destroy@PLT
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_unit_menu_selection_response, .Lfunc_end12-gimp_unit_menu_selection_response
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_unit_menu_selection_row_activated_callback,@function
gimp_unit_menu_selection_row_activated_callback: # @gimp_unit_menu_selection_row_activated_callback
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	192(%rcx), %rcx
	movq	%rcx, -40(%rbp)         # 8-byte Spill
	callq	gtk_dialog_get_type@PLT
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movq	%rax, %rdi
	callq	gtk_dialog_response@PLT
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_unit_menu_selection_row_activated_callback, .Lfunc_end13-gimp_unit_menu_selection_row_activated_callback
	.cfi_endproc

	.type	gimp_unit_menu_get_type.g_define_type_id__volatile,@object # @gimp_unit_menu_get_type.g_define_type_id__volatile
	.local	gimp_unit_menu_get_type.g_define_type_id__volatile
	.comm	gimp_unit_menu_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpUnitMenu"
	.size	.L.str, 13

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"LibGimpWidgets"
	.size	.L.str.1, 15

	.type	.L__func__.gimp_unit_menu_new,@object # @__func__.gimp_unit_menu_new
.L__func__.gimp_unit_menu_new:
	.asciz	"gimp_unit_menu_new"
	.size	.L__func__.gimp_unit_menu_new, 19

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"((unit >= GIMP_UNIT_PIXEL) && (unit < gimp_unit_get_number_of_units ())) || (unit == GIMP_UNIT_PERCENT)"
	.size	.L.str.2, 104

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gimp_unit_menu"
	.size	.L.str.3, 15

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"activate"
	.size	.L.str.4, 9

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"gimp20-libgimp"
	.size	.L.str.5, 15

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"More..."
	.size	.L.str.6, 8

	.type	.L__func__.gimp_unit_menu_set_unit,@object # @__func__.gimp_unit_menu_set_unit
.L__func__.gimp_unit_menu_set_unit:
	.asciz	"gimp_unit_menu_set_unit"
	.size	.L__func__.gimp_unit_menu_set_unit, 24

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"GIMP_IS_UNIT_MENU (menu)"
	.size	.L.str.7, 25

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"((unit >= GIMP_UNIT_PIXEL) && ((unit > GIMP_UNIT_PIXEL) || menu->show_pixels) && (unit < gimp_unit_get_number_of_units ())) || ((unit == GIMP_UNIT_PERCENT) && menu->show_percent)"
	.size	.L.str.8, 179

	.type	gimp_unit_menu_signals,@object # @gimp_unit_menu_signals
	.local	gimp_unit_menu_signals
	.comm	gimp_unit_menu_signals,4,4
	.type	.L__func__.gimp_unit_menu_get_unit,@object # @__func__.gimp_unit_menu_get_unit
.L__func__.gimp_unit_menu_get_unit:
	.asciz	"gimp_unit_menu_get_unit"
	.size	.L__func__.gimp_unit_menu_get_unit, 24

	.type	.L__func__.gimp_unit_menu_set_pixel_digits,@object # @__func__.gimp_unit_menu_set_pixel_digits
.L__func__.gimp_unit_menu_set_pixel_digits:
	.asciz	"gimp_unit_menu_set_pixel_digits"
	.size	.L__func__.gimp_unit_menu_set_pixel_digits, 32

	.type	.L__func__.gimp_unit_menu_get_pixel_digits,@object # @__func__.gimp_unit_menu_get_pixel_digits
.L__func__.gimp_unit_menu_get_pixel_digits:
	.asciz	"gimp_unit_menu_get_pixel_digits"
	.size	.L__func__.gimp_unit_menu_get_pixel_digits, 32

	.type	gimp_unit_menu_parent_class,@object # @gimp_unit_menu_parent_class
	.local	gimp_unit_menu_parent_class
	.comm	gimp_unit_menu_parent_class,8,8
	.type	GimpUnitMenu_private_offset,@object # @GimpUnitMenu_private_offset
	.local	GimpUnitMenu_private_offset
	.comm	GimpUnitMenu_private_offset,4,4
	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"unit-changed"
	.size	.L.str.9, 13

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Unit Selection"
	.size	.L.str.10, 15

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"gimp-unit-selection"
	.size	.L.str.11, 20

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"gimp-unit-dialog"
	.size	.L.str.12, 17

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"gtk-cancel"
	.size	.L.str.13, 11

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"gtk-ok"
	.size	.L.str.14, 7

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"response"
	.size	.L.str.15, 9

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"unmap"
	.size	.L.str.16, 6

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Unit"
	.size	.L.str.17, 5

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"text"
	.size	.L.str.18, 5

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Factor"
	.size	.L.str.19, 7

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"(%f)"
	.size	.L.str.20, 5

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"row-activated"
	.size	.L.str.21, 14

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"destroy"
	.size	.L.str.22, 8


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
