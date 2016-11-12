	.text
	.file	"gimpbrowser.bc"
	.globl	gimp_browser_get_type
	.align	16, 0x90
	.type	gimp_browser_get_type,@function
gimp_browser_get_type:                  # @gimp_browser_get_type
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
	movq	gimp_browser_get_type.g_define_type_id__volatile(%rip), %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	leaq	gimp_browser_get_type.g_define_type_id__volatile(%rip), %rax
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
	callq	gtk_hpaned_get_type@PLT
	leaq	.L.str(%rip), %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string@PLT
	movl	$944, %edx              # imm = 0x3B0
	leaq	gimp_browser_class_intern_init(%rip), %rdi
	movl	$280, %r8d              # imm = 0x118
	leaq	gimp_browser_init(%rip), %rcx
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
	leaq	gimp_browser_get_type.g_define_type_id__volatile(%rip), %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave@PLT
.LBB0_4:                                # %if.end
	movq	gimp_browser_get_type.g_define_type_id__volatile(%rip), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_browser_get_type, .Lfunc_end0-gimp_browser_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_browser_class_intern_init,@function
gimp_browser_class_intern_init:         # @gimp_browser_class_intern_init
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
	movq	%rax, gimp_browser_parent_class(%rip)
	cmpl	$0, GimpBrowser_private_offset(%rip)
	je	.LBB1_2
# BB#1:                                 # %if.then
	leaq	GimpBrowser_private_offset(%rip), %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset@PLT
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_browser_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_browser_class_intern_init, .Lfunc_end1-gimp_browser_class_intern_init
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI2_0:
	.long	1056964608              # float 0.5
	.text
	.align	16, 0x90
	.type	gimp_browser_init,@function
gimp_browser_init:                      # @gimp_browser_init
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
	subq	$208, %rsp
	movl	$1, %eax
	movl	$6, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	$-1, 248(%rdi)
	movl	%eax, %edi
	callq	gtk_box_new@PLT
	movq	-8(%rbp), %rcx
	movq	%rax, 216(%rcx)
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_paned_get_type@PLT
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%edx, %edx
	movl	$1, %ecx
	movq	-8(%rbp), %rsi
	movq	216(%rsi), %rsi
	movq	%rax, %rdi
	callq	gtk_paned_pack1@PLT
	movq	-8(%rbp), %rax
	movq	216(%rax), %rdi
	callq	gtk_widget_show@PLT
	xorl	%edi, %edi
	movl	$6, %esi
	callq	gtk_box_new@PLT
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	216(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type@PLT
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%ecx, %ecx
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -52(%rbp)         # 4-byte Spill
	movl	-52(%rbp), %r8d         # 4-byte Reload
	callq	gtk_box_pack_start@PLT
	movq	-16(%rbp), %rdi
	callq	gtk_widget_show@PLT
	leaq	.L.str.8(%rip), %rdi
	leaq	.L.str.9(%rip), %rsi
	callq	dgettext@PLT
	movq	%rax, %rdi
	callq	gtk_label_new_with_mnemonic@PLT
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type@PLT
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%ecx, %ecx
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -68(%rbp)         # 4-byte Spill
	movl	-68(%rbp), %r8d         # 4-byte Reload
	callq	gtk_box_pack_start@PLT
	movq	-24(%rbp), %rdi
	callq	gtk_widget_show@PLT
	callq	gtk_entry_new@PLT
	movq	-8(%rbp), %rsi
	movq	%rax, 224(%rsi)
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type@PLT
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-8(%rbp), %rsi
	movq	224(%rsi), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start@PLT
	movq	-8(%rbp), %rax
	movq	224(%rax), %rdi
	callq	gtk_widget_show@PLT
	movq	-24(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_label_get_type@PLT
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-8(%rbp), %rsi
	movq	224(%rsi), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_mnemonic_widget@PLT
	leaq	.L.str.4(%rip), %rsi
	leaq	gimp_browser_entry_changed(%rip), %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdi
	movq	224(%rdi), %rdi
	movq	-8(%rbp), %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data@PLT
	movq	-8(%rbp), %rcx
	movq	224(%rcx), %rcx
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type@PLT
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %esi
	leaq	.L.str.10(%rip), %rdx
	movq	%rax, %rdi
	callq	gtk_entry_set_icon_from_stock@PLT
	movq	-8(%rbp), %rax
	movq	224(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type@PLT
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %r9d
	movq	%rax, %rdi
	movl	%r9d, %esi
	movl	%r9d, %edx
	callq	gtk_entry_set_icon_activatable@PLT
	movq	-8(%rbp), %rax
	movq	224(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type@PLT
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %esi
	xorl	%edx, %edx
	movq	%rax, %rdi
	callq	gtk_entry_set_icon_sensitive@PLT
	leaq	.L.str.11(%rip), %rsi
	leaq	gimp_browser_entry_icon_press(%rip), %rax
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rcx
	movq	224(%rcx), %rcx
	movq	-8(%rbp), %rdi
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, %rdx
	movq	-128(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data@PLT
	leaq	.L.str.8(%rip), %rdi
	leaq	.L.str.12(%rip), %rsi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	dgettext@PLT
	movq	%rax, %rdi
	callq	gtk_label_new@PLT
	movq	-8(%rbp), %rcx
	movq	%rax, 256(%rcx)
	movq	-8(%rbp), %rax
	movq	256(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type@PLT
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorps	%xmm0, %xmm0
	movss	.LCPI2_0(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment@PLT
	movq	-8(%rbp), %rax
	movq	256(%rax), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type@PLT
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$3, %esi
	movl	$2, %edx
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_label_set_attributes@PLT
	movq	-8(%rbp), %rdi
	movq	216(%rdi), %rdi
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type@PLT
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%ecx, %ecx
	movq	-8(%rbp), %rsi
	movq	256(%rsi), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -164(%rbp)        # 4-byte Spill
	movl	-164(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_end@PLT
	movq	-8(%rbp), %rax
	movq	256(%rax), %rdi
	callq	gtk_widget_show@PLT
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gtk_scrolled_window_new@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_scrolled_window_get_type@PLT
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %esi
	xorl	%edx, %edx
	movq	%rax, %rdi
	callq	gtk_scrolled_window_set_policy@PLT
	movq	-8(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_paned_get_type@PLT
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %ecx
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_paned_pack2@PLT
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show@PLT
	movl	$1, %edi
	xorl	%esi, %esi
	callq	gtk_box_new@PLT
	movq	-8(%rbp), %r10
	movq	%rax, 264(%r10)
	movq	-8(%rbp), %rax
	movq	264(%rax), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type@PLT
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width@PLT
	movq	-32(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_scrolled_window_get_type@PLT
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-8(%rbp), %rsi
	movq	264(%rsi), %rsi
	movq	%rax, %rdi
	callq	gtk_scrolled_window_add_with_viewport@PLT
	movq	-8(%rbp), %rax
	movq	264(%rax), %rdi
	callq	gtk_widget_show@PLT
	movq	-8(%rbp), %rax
	movq	224(%rax), %rdi
	callq	gtk_widget_grab_focus@PLT
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_browser_init, .Lfunc_end2-gimp_browser_init
	.cfi_endproc

	.globl	gimp_browser_new
	.align	16, 0x90
	.type	gimp_browser_new,@function
gimp_browser_new:                       # @gimp_browser_new
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
	callq	gimp_browser_get_type@PLT
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new@PLT
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_browser_new, .Lfunc_end3-gimp_browser_new
	.cfi_endproc

	.globl	gimp_browser_add_search_types
	.align	16, 0x90
	.type	gimp_browser_add_search_types,@function
gimp_browser_add_search_types:          # @gimp_browser_add_search_types
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
	subq	$512, %rsp              # imm = 0x200
	testb	%al, %al
	movaps	%xmm7, -272(%rbp)       # 16-byte Spill
	movaps	%xmm6, -288(%rbp)       # 16-byte Spill
	movaps	%xmm5, -304(%rbp)       # 16-byte Spill
	movaps	%xmm4, -320(%rbp)       # 16-byte Spill
	movaps	%xmm3, -336(%rbp)       # 16-byte Spill
	movaps	%xmm2, -352(%rbp)       # 16-byte Spill
	movaps	%xmm1, -368(%rbp)       # 16-byte Spill
	movaps	%xmm0, -384(%rbp)       # 16-byte Spill
	movq	%rdi, -392(%rbp)        # 8-byte Spill
	movq	%r9, -400(%rbp)         # 8-byte Spill
	movq	%r8, -408(%rbp)         # 8-byte Spill
	movq	%rcx, -416(%rbp)        # 8-byte Spill
	movl	%edx, -420(%rbp)        # 4-byte Spill
	movq	%rsi, -432(%rbp)        # 8-byte Spill
	je	.LBB4_22
# BB#21:                                # %entry
	movaps	-384(%rbp), %xmm0       # 16-byte Reload
	movaps	%xmm0, -208(%rbp)
	movaps	-368(%rbp), %xmm1       # 16-byte Reload
	movaps	%xmm1, -192(%rbp)
	movaps	-352(%rbp), %xmm2       # 16-byte Reload
	movaps	%xmm2, -176(%rbp)
	movaps	-336(%rbp), %xmm3       # 16-byte Reload
	movaps	%xmm3, -160(%rbp)
	movaps	-320(%rbp), %xmm4       # 16-byte Reload
	movaps	%xmm4, -144(%rbp)
	movaps	-304(%rbp), %xmm5       # 16-byte Reload
	movaps	%xmm5, -128(%rbp)
	movaps	-288(%rbp), %xmm6       # 16-byte Reload
	movaps	%xmm6, -112(%rbp)
	movaps	-272(%rbp), %xmm7       # 16-byte Reload
	movaps	%xmm7, -96(%rbp)
.LBB4_22:                               # %entry
	movq	-400(%rbp), %rax        # 8-byte Reload
	movq	%rax, -216(%rbp)
	movq	-408(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -224(%rbp)
	movq	-416(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, -232(%rbp)
	movl	-420(%rbp), %esi        # 4-byte Reload
	movq	-432(%rbp), %rdi        # 8-byte Reload
	movq	-392(%rbp), %r8         # 8-byte Reload
	movq	%r8, -8(%rbp)
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_browser_get_type@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB4_8
.LBB4_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB4_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -44(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.8
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_browser_add_search_types(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB4_20
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	jmp	.LBB4_13
.LBB4_13:                               # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB4_15
# BB#14:                                # %if.then.13
	jmp	.LBB4_16
.LBB4_15:                               # %if.else.14
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_browser_add_search_types(%rip), %rsi
	leaq	.L.str.3(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB4_20
.LBB4_16:                               # %if.end.15
	jmp	.LBB4_17
.LBB4_17:                               # %do.end.16
	movq	-8(%rbp), %rax
	cmpq	$0, 240(%rax)
	jne	.LBB4_19
# BB#18:                                # %if.then.18
	leaq	-80(%rbp), %rax
	movq	%rax, %rcx
	leaq	-256(%rbp), %rdx
	movq	%rdx, 16(%rcx)
	leaq	16(%rbp), %rdx
	movq	%rdx, 8(%rcx)
	movl	$48, 4(%rcx)
	movl	$24, (%rcx)
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	movq	%rax, %rdx
	callq	gimp_int_combo_box_new_valist@PLT
	leaq	-80(%rbp), %rcx
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rcx, -440(%rbp)        # 8-byte Spill
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	gtk_combo_box_get_type@PLT
	movq	-448(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_combo_box_set_focus_on_click@PLT
	movq	-56(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 240(%rcx)
	movl	-20(%rbp), %esi
	movq	-8(%rbp), %rax
	movl	%esi, 248(%rax)
	movq	-8(%rbp), %rax
	movq	224(%rax), %rdi
	callq	gtk_widget_get_parent@PLT
	movq	%rax, -456(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type@PLT
	movq	-456(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%r8d, %r8d
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r8d, %edx
	movl	%r8d, %ecx
	callq	gtk_box_pack_end@PLT
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show@PLT
	movq	-56(%rbp), %rax
	movq	%rax, -464(%rbp)        # 8-byte Spill
	callq	gimp_int_combo_box_get_type@PLT
	movq	-464(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	gimp_int_combo_box_get_active@GOTPCREL(%rip), %rsi
	movq	-8(%rbp), %rdi
	movl	248(%rdi), %ecx
	movq	-8(%rbp), %rdi
	addq	$248, %rdi
	movq	%rdi, -472(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -480(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movq	-480(%rbp), %rdx        # 8-byte Reload
	movq	-472(%rbp), %rcx        # 8-byte Reload
	callq	gimp_int_combo_box_connect@PLT
	leaq	.L.str.4(%rip), %rsi
	leaq	gimp_browser_combo_changed(%rip), %rcx
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	xorl	%r9d, %r9d
	movq	-56(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -488(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-488(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -496(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data@PLT
	movq	%rax, -504(%rbp)        # 8-byte Spill
	jmp	.LBB4_20
.LBB4_19:                               # %if.else.38
	movq	-8(%rbp), %rax
	movq	240(%rax), %rax
	movq	%rax, -512(%rbp)        # 8-byte Spill
	callq	gimp_int_combo_box_get_type@PLT
	movq	-512(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_int_combo_box_append@PLT
.LBB4_20:                               # %if.end.42
	addq	$512, %rsp              # imm = 0x200
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_browser_add_search_types, .Lfunc_end4-gimp_browser_add_search_types
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_browser_combo_changed,@function
gimp_browser_combo_changed:             # @gimp_browser_combo_changed
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_browser_queue_search
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_browser_combo_changed, .Lfunc_end5-gimp_browser_combo_changed
	.cfi_endproc

	.globl	gimp_browser_set_widget
	.align	16, 0x90
	.type	gimp_browser_set_widget,@function
gimp_browser_set_widget:                # @gimp_browser_set_widget
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_browser_get_type@PLT
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
	leaq	.L__func__.gimp_browser_set_widget(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB6_31
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	jmp	.LBB6_13
.LBB6_13:                               # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB6_22
# BB#14:                                # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gtk_widget_get_type@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB6_16
# BB#15:                                # %if.then.21
	movl	$0, -60(%rbp)
	jmp	.LBB6_21
.LBB6_16:                               # %if.else.22
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_19
# BB#17:                                # %land.lhs.true.25
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB6_19
# BB#18:                                # %if.then.29
	movl	$1, -60(%rbp)
	jmp	.LBB6_20
.LBB6_19:                               # %if.else.30
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -60(%rbp)
.LBB6_20:                               # %if.end.32
	jmp	.LBB6_21
.LBB6_21:                               # %if.end.33
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB6_23
.LBB6_22:                               # %if.then.36
	jmp	.LBB6_24
.LBB6_23:                               # %if.else.37
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_browser_set_widget(%rip), %rsi
	leaq	.L.str.5(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB6_31
.LBB6_24:                               # %if.end.38
	jmp	.LBB6_25
.LBB6_25:                               # %do.end.39
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	272(%rcx), %rax
	jne	.LBB6_27
# BB#26:                                # %if.then.41
	jmp	.LBB6_31
.LBB6_27:                               # %if.end.42
	movq	-8(%rbp), %rax
	cmpq	$0, 272(%rax)
	je	.LBB6_29
# BB#28:                                # %if.then.45
	movq	-8(%rbp), %rax
	movq	264(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type@PLT
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-8(%rbp), %rsi
	movq	272(%rsi), %rsi
	movq	%rax, %rdi
	callq	gtk_container_remove@PLT
.LBB6_29:                               # %if.end.49
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 272(%rcx)
	cmpq	$0, -16(%rbp)
	je	.LBB6_31
# BB#30:                                # %if.then.52
	movq	-8(%rbp), %rax
	movq	264(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type@PLT
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%ecx, %ecx
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -84(%rbp)         # 4-byte Spill
	movl	-84(%rbp), %r8d         # 4-byte Reload
	callq	gtk_box_pack_start@PLT
	movq	-16(%rbp), %rdi
	callq	gtk_widget_show@PLT
.LBB6_31:                               # %if.end.56
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_browser_set_widget, .Lfunc_end6-gimp_browser_set_widget
	.cfi_endproc

	.globl	gimp_browser_show_message
	.align	16, 0x90
	.type	gimp_browser_show_message,@function
gimp_browser_show_message:              # @gimp_browser_show_message
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_browser_get_type@PLT
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
	leaq	.L__func__.gimp_browser_show_message(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB7_30
.LBB7_11:                               # %if.end.10
	jmp	.LBB7_12
.LBB7_12:                               # %do.end
	jmp	.LBB7_13
.LBB7_13:                               # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB7_15
# BB#14:                                # %if.then.13
	jmp	.LBB7_16
.LBB7_15:                               # %if.else.14
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_browser_show_message(%rip), %rsi
	leaq	.L.str.6(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB7_30
.LBB7_16:                               # %if.end.15
	jmp	.LBB7_17
.LBB7_17:                               # %do.end.16
	movq	-8(%rbp), %rax
	movq	272(%rax), %rax
	movq	%rax, -48(%rbp)
	callq	gtk_label_get_type@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB7_19
# BB#18:                                # %if.then.25
	movl	$0, -60(%rbp)
	jmp	.LBB7_24
.LBB7_19:                               # %if.else.26
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_22
# BB#20:                                # %land.lhs.true.29
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB7_22
# BB#21:                                # %if.then.33
	movl	$1, -60(%rbp)
	jmp	.LBB7_23
.LBB7_22:                               # %if.else.34
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -60(%rbp)
.LBB7_23:                               # %if.end.36
	jmp	.LBB7_24
.LBB7_24:                               # %if.end.37
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB7_26
# BB#25:                                # %if.then.40
	movq	-8(%rbp), %rax
	movq	272(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_label_get_type@PLT
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_text@PLT
	jmp	.LBB7_27
.LBB7_26:                               # %if.else.44
	movq	-16(%rbp), %rdi
	callq	gtk_label_new@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_label_get_type@PLT
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$3, %esi
	movl	$2, %edx
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_label_set_attributes@PLT
	movq	-8(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	gimp_browser_set_widget@PLT
.LBB7_27:                               # %if.end.49
	jmp	.LBB7_28
.LBB7_28:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	callq	gtk_events_pending@PLT
	cmpl	$0, %eax
	je	.LBB7_30
# BB#29:                                # %while.body
                                        #   in Loop: Header=BB7_28 Depth=1
	callq	gtk_main_iteration@PLT
	movl	%eax, -92(%rbp)         # 4-byte Spill
	jmp	.LBB7_28
.LBB7_30:                               # %while.end
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_browser_show_message, .Lfunc_end7-gimp_browser_show_message
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_browser_class_init,@function
gimp_browser_class_init:                # @gimp_browser_class_init
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
	pushq	%r14
	pushq	%rbx
	subq	$96, %rsp
.Ltmp27:
	.cfi_offset %rbx, -32
.Ltmp28:
	.cfi_offset %r14, -24
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	g_type_check_class_cast@PLT
	leaq	.L.str.7(%rip), %rdi
	movl	$2, %edx
	movl	$904, %ecx              # imm = 0x388
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movq	_gimp_widgets_marshal_VOID__STRING_INT@GOTPCREL(%rip), %r9
	movl	$4, %r8d
	movl	%r8d, %r10d
	movl	$64, %r8d
	movl	%r8d, %r11d
	movl	$24, %r8d
	movl	%r8d, %ebx
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movq	-40(%rbp), %r8          # 8-byte Reload
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	%r9, -48(%rbp)          # 8-byte Spill
	movq	%rax, %r9
	movq	-48(%rbp), %r14         # 8-byte Reload
	movq	%r14, (%rsp)
	movq	$4, 8(%rsp)
	movl	$2, 16(%rsp)
	movq	$64, 24(%rsp)
	movq	$24, 32(%rsp)
	movb	$0, %al
	movq	%rbx, -56(%rbp)         # 8-byte Spill
	movq	%r11, -64(%rbp)         # 8-byte Spill
	movq	%r10, -72(%rbp)         # 8-byte Spill
	callq	g_signal_new@PLT
	leaq	gimp_browser_dispose(%rip), %rsi
	movl	%eax, browser_signals(%rip)
	movq	-32(%rbp), %rdi
	movq	%rsi, 40(%rdi)
	movq	-24(%rbp), %rsi
	movq	$0, 904(%rsi)
	addq	$96, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_browser_class_init, .Lfunc_end8-gimp_browser_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_browser_dispose,@function
gimp_browser_dispose:                   # @gimp_browser_dispose
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_browser_get_type@PLT
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$0, 232(%rax)
	je	.LBB9_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movl	232(%rax), %edi
	callq	g_source_remove@PLT
	movq	-16(%rbp), %rcx
	movl	$0, 232(%rcx)
	movl	%eax, -28(%rbp)         # 4-byte Spill
.LBB9_2:                                # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_browser_parent_class(%rip), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast@PLT
	movq	40(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_browser_dispose, .Lfunc_end9-gimp_browser_dispose
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_browser_entry_changed,@function
gimp_browser_entry_changed:             # @gimp_browser_entry_changed
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_browser_queue_search
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	callq	gtk_entry_get_text_length@PLT
	movl	$1, %esi
	movzwl	%ax, %ecx
	cmpl	$0, %ecx
	setg	%dl
	andb	$1, %dl
	movzbl	%dl, %edx
	movq	-24(%rbp), %rdi         # 8-byte Reload
	callq	gtk_entry_set_icon_sensitive@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_browser_entry_changed, .Lfunc_end10-gimp_browser_entry_changed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_browser_entry_icon_press,@function
gimp_browser_entry_icon_press:          # @gimp_browser_entry_icon_press
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-24(%rbp), %rcx
	movq	%rcx, -40(%rbp)
	cmpl	$1, -12(%rbp)
	jne	.LBB11_3
# BB#1:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	cmpl	$1, 52(%rax)
	jne	.LBB11_3
# BB#2:                                 # %if.then
	leaq	.L.str.13(%rip), %rsi
	movq	-8(%rbp), %rdi
	callq	gtk_entry_set_text@PLT
.LBB11_3:                               # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_browser_entry_icon_press, .Lfunc_end11-gimp_browser_entry_icon_press
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_browser_queue_search,@function
gimp_browser_queue_search:              # @gimp_browser_queue_search
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpl	$0, 232(%rdi)
	je	.LBB12_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movl	232(%rax), %edi
	callq	g_source_remove@PLT
	movl	%eax, -12(%rbp)         # 4-byte Spill
.LBB12_2:                               # %if.end
	movl	$100, %edi
	leaq	gimp_browser_search_timeout(%rip), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdx
	callq	g_timeout_add@PLT
	movq	-8(%rbp), %rdx
	movl	%eax, 232(%rdx)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_browser_queue_search, .Lfunc_end12-gimp_browser_queue_search
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_browser_search_timeout,@function
gimp_browser_search_timeout:            # @gimp_browser_search_timeout
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
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_browser_get_type@PLT
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -16(%rbp)
# BB#1:                                 # %do.body
	movq	gdk_threads_lock@GOTPCREL(%rip), %rax
	cmpq	$0, (%rax)
	je	.LBB13_3
# BB#2:                                 # %if.then
	movq	gdk_threads_lock@GOTPCREL(%rip), %rax
	callq	*(%rax)
.LBB13_3:                               # %if.end
	jmp	.LBB13_4
.LBB13_4:                               # %do.end
	movq	-16(%rbp), %rax
	movq	224(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_entry_get_type@PLT
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_entry_get_text@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB13_6
# BB#5:                                 # %if.then.6
	leaq	.L.str.13(%rip), %rax
	movq	%rax, -24(%rbp)
.LBB13_6:                               # %if.end.7
	xorl	%edx, %edx
	movq	-16(%rbp), %rax
	movl	browser_signals(%rip), %esi
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdi
	movl	248(%rdi), %r8d
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit@PLT
	movq	-16(%rbp), %rcx
	movl	$0, 232(%rcx)
# BB#7:                                 # %do.body.8
	movq	gdk_threads_unlock@GOTPCREL(%rip), %rax
	cmpq	$0, (%rax)
	je	.LBB13_9
# BB#8:                                 # %if.then.10
	movq	gdk_threads_unlock@GOTPCREL(%rip), %rax
	callq	*(%rax)
.LBB13_9:                               # %if.end.11
	jmp	.LBB13_10
.LBB13_10:                              # %do.end.12
	xorl	%eax, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_browser_search_timeout, .Lfunc_end13-gimp_browser_search_timeout
	.cfi_endproc

	.type	gimp_browser_get_type.g_define_type_id__volatile,@object # @gimp_browser_get_type.g_define_type_id__volatile
	.local	gimp_browser_get_type.g_define_type_id__volatile
	.comm	gimp_browser_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpBrowser"
	.size	.L.str, 12

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"LibGimpWidgets"
	.size	.L.str.1, 15

	.type	.L__func__.gimp_browser_add_search_types,@object # @__func__.gimp_browser_add_search_types
.L__func__.gimp_browser_add_search_types:
	.asciz	"gimp_browser_add_search_types"
	.size	.L__func__.gimp_browser_add_search_types, 30

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_BROWSER (browser)"
	.size	.L.str.2, 26

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"first_type_label != NULL"
	.size	.L.str.3, 25

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"changed"
	.size	.L.str.4, 8

	.type	.L__func__.gimp_browser_set_widget,@object # @__func__.gimp_browser_set_widget
.L__func__.gimp_browser_set_widget:
	.asciz	"gimp_browser_set_widget"
	.size	.L__func__.gimp_browser_set_widget, 24

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"widget == NULL || GTK_IS_WIDGET (widget)"
	.size	.L.str.5, 41

	.type	.L__func__.gimp_browser_show_message,@object # @__func__.gimp_browser_show_message
.L__func__.gimp_browser_show_message:
	.asciz	"gimp_browser_show_message"
	.size	.L__func__.gimp_browser_show_message, 26

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"message != NULL"
	.size	.L.str.6, 16

	.type	gimp_browser_parent_class,@object # @gimp_browser_parent_class
	.local	gimp_browser_parent_class
	.comm	gimp_browser_parent_class,8,8
	.type	GimpBrowser_private_offset,@object # @GimpBrowser_private_offset
	.local	GimpBrowser_private_offset
	.comm	GimpBrowser_private_offset,4,4
	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"search"
	.size	.L.str.7, 7

	.type	browser_signals,@object # @browser_signals
	.local	browser_signals
	.comm	browser_signals,4,4
	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"gimp20-libgimp"
	.size	.L.str.8, 15

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"_Search:"
	.size	.L.str.9, 9

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"gtk-clear"
	.size	.L.str.10, 10

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"icon-press"
	.size	.L.str.11, 11

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"No matches"
	.size	.L.str.12, 11

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.zero	1
	.size	.L.str.13, 1


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
