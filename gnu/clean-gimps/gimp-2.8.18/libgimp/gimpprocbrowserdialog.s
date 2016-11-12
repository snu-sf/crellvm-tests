	.text
	.file	"gimpprocbrowserdialog.bc"
	.globl	gimp_proc_browser_dialog_get_type
	.align	16, 0x90
	.type	gimp_proc_browser_dialog_get_type,@function
gimp_proc_browser_dialog_get_type:      # @gimp_proc_browser_dialog_get_type
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
	movq	gimp_proc_browser_dialog_get_type.g_define_type_id__volatile(%rip), %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	leaq	gimp_proc_browser_dialog_get_type.g_define_type_id__volatile(%rip), %rax
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
	callq	gimp_dialog_get_type@PLT
	leaq	.L.str(%rip), %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string@PLT
	movl	$1032, %edx             # imm = 0x408
	leaq	gimp_proc_browser_dialog_class_intern_init(%rip), %rdi
	movl	$288, %r8d              # imm = 0x120
	leaq	gimp_proc_browser_dialog_init(%rip), %rcx
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
	leaq	gimp_proc_browser_dialog_get_type.g_define_type_id__volatile(%rip), %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave@PLT
.LBB0_4:                                # %if.end
	movq	gimp_proc_browser_dialog_get_type.g_define_type_id__volatile(%rip), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_proc_browser_dialog_get_type, .Lfunc_end0-gimp_proc_browser_dialog_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_proc_browser_dialog_class_intern_init,@function
gimp_proc_browser_dialog_class_intern_init: # @gimp_proc_browser_dialog_class_intern_init
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
	movq	%rax, gimp_proc_browser_dialog_parent_class(%rip)
	cmpl	$0, GimpProcBrowserDialog_private_offset(%rip)
	je	.LBB1_2
# BB#1:                                 # %if.then
	leaq	GimpProcBrowserDialog_private_offset(%rip), %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset@PLT
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_proc_browser_dialog_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_proc_browser_dialog_class_intern_init, .Lfunc_end1-gimp_proc_browser_dialog_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_proc_browser_dialog_init,@function
gimp_proc_browser_dialog_init:          # @gimp_proc_browser_dialog_init
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$392, %rsp              # imm = 0x188
.Ltmp9:
	.cfi_offset %rbx, -56
.Ltmp10:
	.cfi_offset %r12, -48
.Ltmp11:
	.cfi_offset %r13, -40
.Ltmp12:
	.cfi_offset %r14, -32
.Ltmp13:
	.cfi_offset %r15, -24
	movq	%rdi, -48(%rbp)
	callq	gimp_browser_new@PLT
	movq	-48(%rbp), %rdi
	movq	%rax, 264(%rdi)
	movq	-48(%rbp), %rax
	movq	264(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_browser_get_type@PLT
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.10(%rip), %rdi
	leaq	.L.str.11(%rip), %rsi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	dgettext@PLT
	leaq	.L.str.10(%rip), %rdi
	leaq	.L.str.12(%rip), %rsi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	dgettext@PLT
	leaq	.L.str.10(%rip), %rdi
	leaq	.L.str.13(%rip), %rsi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	dgettext@PLT
	leaq	.L.str.10(%rip), %rdi
	leaq	.L.str.14(%rip), %rsi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	dgettext@PLT
	leaq	.L.str.10(%rip), %rdi
	leaq	.L.str.15(%rip), %rsi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	dgettext@PLT
	leaq	.L.str.10(%rip), %rdi
	leaq	.L.str.16(%rip), %rsi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	dgettext@PLT
	leaq	.L.str.10(%rip), %rdi
	leaq	.L.str.17(%rip), %rsi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	dgettext@PLT
	movl	$1, %edx
	movl	$2, %r8d
	movl	$3, %ecx
	movl	$4, %r9d
	movl	$5, %r10d
	movl	$6, %r11d
	movl	$7, %ebx
	xorl	%r14d, %r14d
	movl	%r14d, %esi
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	-104(%rbp), %r15        # 8-byte Reload
	movq	%rsi, -152(%rbp)        # 8-byte Spill
	movq	%r15, %rsi
	movq	-112(%rbp), %r12        # 8-byte Reload
	movl	%ecx, -156(%rbp)        # 4-byte Spill
	movq	%r12, %rcx
	movq	-120(%rbp), %r13        # 8-byte Reload
	movl	%r9d, -160(%rbp)        # 4-byte Spill
	movq	%r13, %r9
	movl	$3, (%rsp)
	movq	-128(%rbp), %r14        # 8-byte Reload
	movq	%r14, 8(%rsp)
	movl	$4, 16(%rsp)
	movq	-136(%rbp), %r14        # 8-byte Reload
	movq	%r14, 24(%rsp)
	movl	$5, 32(%rsp)
	movq	-144(%rbp), %r14        # 8-byte Reload
	movq	%r14, 40(%rsp)
	movl	$6, 48(%rsp)
	movq	%rax, 56(%rsp)
	movl	$7, 64(%rsp)
	movq	$0, 72(%rsp)
	movb	$0, %al
	movl	%r11d, -164(%rbp)       # 4-byte Spill
	movl	%ebx, -168(%rbp)        # 4-byte Spill
	movl	%r10d, -172(%rbp)       # 4-byte Spill
	callq	gimp_browser_add_search_types@PLT
	movq	-48(%rbp), %rcx
	movq	264(%rcx), %rcx
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type@PLT
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width@PLT
	movq	-48(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type@PLT
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area@PLT
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type@PLT
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %edx
	xorl	%r8d, %r8d
	movq	-48(%rbp), %rcx
	movq	264(%rcx), %rsi
	movq	%rax, %rdi
	movl	%edx, -204(%rbp)        # 4-byte Spill
	movl	-204(%rbp), %ecx        # 4-byte Reload
	callq	gtk_box_pack_start@PLT
	movq	-48(%rbp), %rax
	movq	264(%rax), %rdi
	callq	gtk_widget_show@PLT
	leaq	.L.str.18(%rip), %rsi
	leaq	browser_search(%rip), %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-48(%rbp), %rdi
	movq	264(%rdi), %rdi
	movq	-48(%rbp), %r14
	movq	%rax, %rdx
	movq	%r14, %rcx
	callq	g_signal_connect_data@PLT
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	movq	%rcx, %rdi
	movq	%rcx, %rsi
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gtk_scrolled_window_new@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gtk_scrolled_window_get_type@PLT
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_scrolled_window_set_shadow_type@PLT
	movq	-56(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gtk_scrolled_window_get_type@PLT
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %esi
	xorl	%edx, %edx
	movq	%rax, %rdi
	callq	gtk_scrolled_window_set_policy@PLT
	movq	-48(%rbp), %rax
	movq	264(%rax), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gimp_browser_get_type@PLT
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	216(%rax), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type@PLT
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %edx
	xorl	%r8d, %r8d
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -252(%rbp)        # 4-byte Spill
	movl	-252(%rbp), %ecx        # 4-byte Reload
	callq	gtk_box_pack_start@PLT
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show@PLT
	callq	gtk_tree_view_new@PLT
	movq	-48(%rbp), %rsi
	movq	%rax, 280(%rsi)
	callq	gtk_cell_renderer_text_new@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gtk_cell_renderer_text_get_type@PLT
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_cell_renderer_text_set_fixed_height_from_font@PLT
	movq	-48(%rbp), %rax
	movq	280(%rax), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gtk_tree_view_get_type@PLT
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	leaq	.L.str.19(%rip), %r8
	xorl	%r9d, %r9d
	movq	-64(%rbp), %rcx
	movq	%rax, %rdi
	movq	$0, (%rsp)
	movb	$0, %al
	callq	gtk_tree_view_insert_column_with_attributes@PLT
	movq	-48(%rbp), %rcx
	movq	280(%rcx), %rcx
	movl	%eax, -276(%rbp)        # 4-byte Spill
	movq	%rcx, -288(%rbp)        # 8-byte Spill
	callq	gtk_tree_view_get_type@PLT
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_tree_view_set_headers_visible@PLT
	leaq	.L.str.20(%rip), %rsi
	leaq	browser_row_activated(%rip), %rax
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-48(%rbp), %rcx
	movq	280(%rcx), %rcx
	movq	-48(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rdx, -296(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-296(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data@PLT
	movl	$250, %r9d
	movq	-48(%rbp), %rcx
	movq	280(%rcx), %rdi
	movl	%r9d, %esi
	movl	%r9d, %edx
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gtk_widget_set_size_request@PLT
	movq	-56(%rbp), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type@PLT
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-48(%rbp), %rcx
	movq	280(%rcx), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add@PLT
	movq	-48(%rbp), %rax
	movq	280(%rax), %rdi
	callq	gtk_widget_show@PLT
	movq	-48(%rbp), %rax
	movq	280(%rax), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	gtk_tree_view_get_type@PLT
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_tree_view_get_selection@PLT
	leaq	.L.str.21(%rip), %rsi
	leaq	browser_selection_changed(%rip), %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	-48(%rbp), %rdi
	movq	%rdi, -328(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-328(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data@PLT
	movq	-48(%rbp), %rcx
	movq	264(%rcx), %rcx
	movq	%rax, -336(%rbp)        # 8-byte Spill
	movq	%rcx, -344(%rbp)        # 8-byte Spill
	callq	gimp_browser_get_type@PLT
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	264(%rax), %rdi
	callq	gtk_widget_get_parent@PLT
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rdi
	callq	gtk_widget_get_parent@PLT
	movl	$400, %esi              # imm = 0x190
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rdi
	callq	gtk_widget_set_size_request@PLT
	addq	$392, %rsp              # imm = 0x188
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_proc_browser_dialog_init, .Lfunc_end2-gimp_proc_browser_dialog_init
	.cfi_endproc

	.globl	gimp_proc_browser_dialog_new
	.align	16, 0x90
	.type	gimp_proc_browser_dialog_new,@function
gimp_proc_browser_dialog_new:           # @gimp_proc_browser_dialog_new
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp14:
	.cfi_def_cfa_offset 16
.Ltmp15:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp16:
	.cfi_def_cfa_register %rbp
	subq	$480, %rsp              # imm = 0x1E0
	testb	%al, %al
	movaps	%xmm7, -256(%rbp)       # 16-byte Spill
	movaps	%xmm6, -272(%rbp)       # 16-byte Spill
	movaps	%xmm5, -288(%rbp)       # 16-byte Spill
	movaps	%xmm4, -304(%rbp)       # 16-byte Spill
	movaps	%xmm3, -320(%rbp)       # 16-byte Spill
	movaps	%xmm2, -336(%rbp)       # 16-byte Spill
	movaps	%xmm1, -352(%rbp)       # 16-byte Spill
	movaps	%xmm0, -368(%rbp)       # 16-byte Spill
	movq	%rdi, -376(%rbp)        # 8-byte Spill
	movq	%r9, -384(%rbp)         # 8-byte Spill
	movq	%r8, -392(%rbp)         # 8-byte Spill
	movq	%rcx, -400(%rbp)        # 8-byte Spill
	movq	%rdx, -408(%rbp)        # 8-byte Spill
	movq	%rsi, -416(%rbp)        # 8-byte Spill
	je	.LBB3_2
# BB#1:                                 # %entry
	movaps	-368(%rbp), %xmm0       # 16-byte Reload
	movaps	%xmm0, -192(%rbp)
	movaps	-352(%rbp), %xmm1       # 16-byte Reload
	movaps	%xmm1, -176(%rbp)
	movaps	-336(%rbp), %xmm2       # 16-byte Reload
	movaps	%xmm2, -160(%rbp)
	movaps	-320(%rbp), %xmm3       # 16-byte Reload
	movaps	%xmm3, -144(%rbp)
	movaps	-304(%rbp), %xmm4       # 16-byte Reload
	movaps	%xmm4, -128(%rbp)
	movaps	-288(%rbp), %xmm5       # 16-byte Reload
	movaps	%xmm5, -112(%rbp)
	movaps	-272(%rbp), %xmm6       # 16-byte Reload
	movaps	%xmm6, -96(%rbp)
	movaps	-256(%rbp), %xmm7       # 16-byte Reload
	movaps	%xmm7, -80(%rbp)
.LBB3_2:                                # %entry
	movq	-384(%rbp), %rax        # 8-byte Reload
	movq	%rax, -200(%rbp)
	movq	-392(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -208(%rbp)
	movq	-400(%rbp), %rdx        # 8-byte Reload
	movq	-408(%rbp), %rsi        # 8-byte Reload
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movq	-376(%rbp), %r8         # 8-byte Reload
	movq	%r8, -8(%rbp)
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	leaq	-240(%rbp), %rdx
	movq	%rdx, -48(%rbp)
	leaq	16(%rbp), %rdx
	movq	%rdx, -56(%rbp)
	movl	$48, -60(%rbp)
	movl	$32, -64(%rbp)
	callq	gimp_proc_browser_dialog_get_type@PLT
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %r8
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rsi
	movq	%rsp, %rdi
	movq	%rsi, 16(%rdi)
	leaq	.L.str.4(%rip), %rsi
	movq	%rsi, 8(%rdi)
	movq	%rcx, (%rdi)
	movq	$0, 24(%rdi)
	leaq	.L.str.1(%rip), %rsi
	leaq	.L.str.2(%rip), %rcx
	leaq	.L.str.3(%rip), %r9
	xorl	%r10d, %r10d
	movb	%r10b, %r11b
	movq	%rax, %rdi
	movb	%r11b, %al
	movl	%r10d, -420(%rbp)       # 4-byte Spill
	callq	g_object_new@PLT
	movq	%rax, -40(%rbp)
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	gimp_dialog_get_type@PLT
	movq	-432(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_dialog_add_buttons_valist@PLT
	movq	-40(%rbp), %rax
	movq	264(%rax), %rdi
	movq	%rdi, -440(%rbp)        # 8-byte Spill
	callq	gimp_browser_get_type@PLT
	movq	-440(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-40(%rbp), %rcx
	leaq	.L.str.5(%rip), %rsi
	movq	%rax, %rdi
	movl	-420(%rbp), %edx        # 4-byte Reload
	callq	browser_search
	movq	-40(%rbp), %rdi
	movq	%rdi, -448(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-448(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	addq	$480, %rsp              # imm = 0x1E0
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_proc_browser_dialog_new, .Lfunc_end3-gimp_proc_browser_dialog_new
	.cfi_endproc

	.align	16, 0x90
	.type	browser_search,@function
browser_search:                         # @browser_search
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp17:
	.cfi_def_cfa_offset 16
.Ltmp18:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp19:
	.cfi_def_cfa_register %rbp
	subq	$576, %rsp              # imm = 0x240
	xorl	%eax, %eax
	xorl	%r8d, %r8d
	movl	%r8d, %r9d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-16(%rbp), %rdi
	movl	%eax, %esi
	movl	%eax, %edx
	movq	%r9, %rcx
	callq	g_regex_new@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB4_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	280(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_tree_view_get_type@PLT
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	gtk_tree_view_set_model@PLT
	leaq	.L.str.10(%rip), %rdi
	leaq	.L.str.22(%rip), %rsi
	movq	-32(%rbp), %rax
	movq	$0, 272(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	dgettext@PLT
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_browser_show_message@PLT
	movq	-8(%rbp), %rax
	movq	256(%rax), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type@PLT
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.10(%rip), %rdi
	leaq	.L.str.23(%rip), %rsi
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	dgettext@PLT
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_label_set_text@PLT
	jmp	.LBB4_32
.LBB4_2:                                # %if.end
	movq	-64(%rbp), %rdi
	callq	g_regex_unref@PLT
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	movq	%rdi, %rcx
	subq	$7, %rcx
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movq	%rcx, -176(%rbp)        # 8-byte Spill
	ja	.LBB4_18
# BB#33:                                # %if.end
	leaq	.LJTI4_0(%rip), %rax
	movq	-168(%rbp), %rcx        # 8-byte Reload
	movslq	(%rax,%rcx,4), %rdx
	addq	%rax, %rdx
	jmpq	*%rdx
.LBB4_3:                                # %sw.bb
	leaq	.L.str.10(%rip), %rdi
	leaq	.L.str.24(%rip), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	dgettext@PLT
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_browser_show_message@PLT
	leaq	.L.str.25(%rip), %rax
	leaq	-44(%rbp), %rsi
	leaq	-40(%rbp), %rdi
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -200(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	%rax, %rdx
	movq	%rax, %rcx
	movq	%rax, %r8
	movq	%rax, %r9
	movq	%rax, (%rsp)
	movq	-200(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	-192(%rbp), %r10        # 8-byte Reload
	movq	%r10, 16(%rsp)
	callq	gimp_procedural_db_query@PLT
	movl	%eax, -204(%rbp)        # 4-byte Spill
	jmp	.LBB4_18
.LBB4_4:                                # %sw.bb.9
	leaq	.L.str.5(%rip), %rdi
	callq	g_string_new@PLT
	leaq	.L.str.10(%rip), %rdi
	leaq	.L.str.26(%rip), %rsi
	movq	%rax, -72(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	dgettext@PLT
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_browser_show_message@PLT
.LBB4_5:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-80(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB4_11
# BB#6:                                 # %while.body
                                        #   in Loop: Header=BB4_5 Depth=1
	movq	-80(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$95, %ecx
	je	.LBB4_8
# BB#7:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB4_5 Depth=1
	movq	-80(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$45, %ecx
	jne	.LBB4_9
.LBB4_8:                                # %if.then.17
                                        #   in Loop: Header=BB4_5 Depth=1
	leaq	.L.str.27(%rip), %rsi
	movq	-72(%rbp), %rdi
	callq	g_string_append@PLT
	movq	%rax, -224(%rbp)        # 8-byte Spill
	jmp	.LBB4_10
.LBB4_9:                                # %if.else
                                        #   in Loop: Header=BB4_5 Depth=1
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rax
	movsbl	(%rax), %esi
	callq	g_string_append_c_inline
	movq	%rax, -232(%rbp)        # 8-byte Spill
.LBB4_10:                               # %if.end.20
                                        #   in Loop: Header=BB4_5 Depth=1
	movq	-80(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -80(%rbp)
	jmp	.LBB4_5
.LBB4_11:                               # %while.end
	leaq	.L.str.25(%rip), %rax
	leaq	-44(%rbp), %rcx
	leaq	-40(%rbp), %rdx
	movq	-72(%rbp), %rsi
	movq	(%rsi), %rdi
	movq	%rax, %rsi
	movq	%rdx, -240(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	%rcx, -248(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movq	%rax, %r8
	movq	%rax, %r9
	movq	%rax, (%rsp)
	movq	-248(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	-240(%rbp), %r10        # 8-byte Reload
	movq	%r10, 16(%rsp)
	callq	gimp_procedural_db_query@PLT
	movl	$1, %esi
	movq	-72(%rbp), %rdi
	movl	%eax, -252(%rbp)        # 4-byte Spill
	callq	g_string_free@PLT
	movq	%rax, -264(%rbp)        # 8-byte Spill
	jmp	.LBB4_18
.LBB4_12:                               # %sw.bb.24
	leaq	.L.str.10(%rip), %rdi
	leaq	.L.str.28(%rip), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	dgettext@PLT
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_browser_show_message@PLT
	leaq	.L.str.25(%rip), %rax
	leaq	-44(%rbp), %rsi
	leaq	-40(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	%rdi, -280(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -288(%rbp)        # 8-byte Spill
	movq	%rcx, %rsi
	movq	%rax, %rdx
	movq	%rax, %rcx
	movq	%rax, %r8
	movq	%rax, %r9
	movq	%rax, (%rsp)
	movq	-288(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	-280(%rbp), %r10        # 8-byte Reload
	movq	%r10, 16(%rsp)
	callq	gimp_procedural_db_query@PLT
	movl	%eax, -292(%rbp)        # 4-byte Spill
	jmp	.LBB4_18
.LBB4_13:                               # %sw.bb.27
	leaq	.L.str.10(%rip), %rdi
	leaq	.L.str.29(%rip), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	dgettext@PLT
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_browser_show_message@PLT
	leaq	.L.str.25(%rip), %rax
	leaq	-44(%rbp), %rsi
	leaq	-40(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movq	%rdi, -312(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -320(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	%rax, %rcx
	movq	%rax, %r8
	movq	%rax, %r9
	movq	%rax, (%rsp)
	movq	-320(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	-312(%rbp), %r10        # 8-byte Reload
	movq	%r10, 16(%rsp)
	callq	gimp_procedural_db_query@PLT
	movl	%eax, -324(%rbp)        # 4-byte Spill
	jmp	.LBB4_18
.LBB4_14:                               # %sw.bb.30
	leaq	.L.str.10(%rip), %rdi
	leaq	.L.str.30(%rip), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	dgettext@PLT
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_browser_show_message@PLT
	leaq	.L.str.25(%rip), %rax
	leaq	-44(%rbp), %rsi
	leaq	-40(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	%rdi, -344(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -352(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	%rax, %rdx
	movq	%rax, %r8
	movq	%rax, %r9
	movq	%rax, (%rsp)
	movq	-352(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	-344(%rbp), %r10        # 8-byte Reload
	movq	%r10, 16(%rsp)
	callq	gimp_procedural_db_query@PLT
	movl	%eax, -356(%rbp)        # 4-byte Spill
	jmp	.LBB4_18
.LBB4_15:                               # %sw.bb.33
	leaq	.L.str.10(%rip), %rdi
	leaq	.L.str.31(%rip), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	dgettext@PLT
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_browser_show_message@PLT
	leaq	.L.str.25(%rip), %rax
	leaq	-44(%rbp), %rsi
	leaq	-40(%rbp), %rdi
	movq	-16(%rbp), %r8
	movq	%rdi, -376(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -384(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	%rax, %rdx
	movq	%rax, %rcx
	movq	%rax, %r9
	movq	%rax, (%rsp)
	movq	-384(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	-376(%rbp), %r10        # 8-byte Reload
	movq	%r10, 16(%rsp)
	callq	gimp_procedural_db_query@PLT
	movl	%eax, -388(%rbp)        # 4-byte Spill
	jmp	.LBB4_18
.LBB4_16:                               # %sw.bb.36
	leaq	.L.str.10(%rip), %rdi
	leaq	.L.str.32(%rip), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	dgettext@PLT
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_browser_show_message@PLT
	leaq	.L.str.25(%rip), %rax
	leaq	-44(%rbp), %rsi
	leaq	-40(%rbp), %rdi
	movq	-16(%rbp), %r9
	movq	%rdi, -408(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -416(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	%rax, %rdx
	movq	%rax, %rcx
	movq	%rax, %r8
	movq	%rax, (%rsp)
	movq	-416(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	-408(%rbp), %r10        # 8-byte Reload
	movq	%r10, 16(%rsp)
	callq	gimp_procedural_db_query@PLT
	movl	%eax, -420(%rbp)        # 4-byte Spill
	jmp	.LBB4_18
.LBB4_17:                               # %sw.bb.39
	leaq	.L.str.10(%rip), %rdi
	leaq	.L.str.33(%rip), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	dgettext@PLT
	movq	-432(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_browser_show_message@PLT
	leaq	.L.str.25(%rip), %rax
	leaq	-44(%rbp), %rsi
	leaq	-40(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	%rdi, -440(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -448(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	%rax, %rdx
	movq	%rcx, -456(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-456(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-448(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	-440(%rbp), %r10        # 8-byte Reload
	movq	%r10, 16(%rsp)
	callq	gimp_procedural_db_query@PLT
	movl	%eax, -460(%rbp)        # 4-byte Spill
.LBB4_18:                               # %sw.epilog
	cmpq	$0, -16(%rbp)
	je	.LBB4_20
# BB#19:                                # %lor.lhs.false.43
	movq	-16(%rbp), %rdi
	callq	strlen@PLT
	cmpq	$0, %rax
	jne	.LBB4_21
.LBB4_20:                               # %if.then.47
	leaq	.L.str.10(%rip), %rdi
	leaq	.L.str.34(%rip), %rsi
	leaq	.L.str.35(%rip), %rdx
	movslq	-44(%rbp), %rcx
	callq	dngettext@PLT
	movl	-44(%rbp), %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_strdup_printf@PLT
	movq	%rax, -56(%rbp)
	jmp	.LBB4_25
.LBB4_21:                               # %if.else.51
	movl	-44(%rbp), %eax
	testl	%eax, %eax
	jne	.LBB4_23
	jmp	.LBB4_22
.LBB4_22:                               # %sw.bb.52
	leaq	.L.str.10(%rip), %rdi
	leaq	.L.str.36(%rip), %rsi
	callq	dgettext@PLT
	movq	%rax, %rdi
	callq	g_strdup@PLT
	movq	%rax, -56(%rbp)
	jmp	.LBB4_24
.LBB4_23:                               # %sw.default
	leaq	.L.str.10(%rip), %rdi
	leaq	.L.str.37(%rip), %rsi
	leaq	.L.str.38(%rip), %rdx
	movslq	-44(%rbp), %rcx
	callq	dngettext@PLT
	movl	-44(%rbp), %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_strdup_printf@PLT
	movq	%rax, -56(%rbp)
.LBB4_24:                               # %sw.epilog.58
	jmp	.LBB4_25
.LBB4_25:                               # %if.end.59
	movq	-8(%rbp), %rax
	movq	256(%rax), %rax
	movq	%rax, -472(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type@PLT
	movq	-472(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_text@PLT
	movq	-56(%rbp), %rdi
	callq	g_free@PLT
	cmpl	$0, -44(%rbp)
	jle	.LBB4_31
# BB#26:                                # %if.then.65
	movl	$1, %edi
	movl	$64, %eax
	movl	%eax, %esi
	movb	$0, %al
	callq	gtk_list_store_new@PLT
	movq	-32(%rbp), %rsi
	movq	%rax, 272(%rsi)
	movq	-32(%rbp), %rax
	movq	280(%rax), %rax
	movq	%rax, -480(%rbp)        # 8-byte Spill
	callq	gtk_tree_view_get_type@PLT
	movq	-480(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-32(%rbp), %rsi
	movq	272(%rsi), %rsi
	movq	%rax, -488(%rbp)        # 8-byte Spill
	movq	%rsi, -496(%rbp)        # 8-byte Spill
	callq	gtk_tree_model_get_type@PLT
	movq	-496(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-488(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_tree_view_set_model@PLT
	movq	-32(%rbp), %rax
	movq	272(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref@PLT
	movl	$0, -124(%rbp)
.LBB4_27:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-124(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jge	.LBB4_30
# BB#28:                                # %for.body
                                        #   in Loop: Header=BB4_27 Depth=1
	leaq	-120(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	272(%rax), %rdi
	callq	gtk_list_store_append@PLT
	leaq	-120(%rbp), %rsi
	xorl	%edx, %edx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	-32(%rbp), %rax
	movq	272(%rax), %rdi
	movslq	-124(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx,%rax,8), %rcx
	movb	$0, %al
	callq	gtk_list_store_set@PLT
	movslq	-124(%rbp), %rcx
	movq	-40(%rbp), %rsi
	movq	(%rsi,%rcx,8), %rdi
	callq	g_free@PLT
# BB#29:                                # %for.inc
                                        #   in Loop: Header=BB4_27 Depth=1
	movl	-124(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -124(%rbp)
	jmp	.LBB4_27
.LBB4_30:                               # %for.end
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free@PLT
	movq	-32(%rbp), %rax
	movq	280(%rax), %rax
	movq	%rax, -504(%rbp)        # 8-byte Spill
	callq	gtk_tree_view_get_type@PLT
	movq	-504(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_tree_view_columns_autosize@PLT
	movq	-32(%rbp), %rax
	movq	272(%rax), %rax
	movq	%rax, -512(%rbp)        # 8-byte Spill
	callq	gtk_tree_sortable_get_type@PLT
	movq	-512(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%ecx, %ecx
	movq	%rax, %rdi
	movl	%ecx, %esi
	movl	%ecx, %edx
	callq	gtk_tree_sortable_set_sort_column_id@PLT
	movq	-32(%rbp), %rax
	movq	272(%rax), %rax
	movq	%rax, -520(%rbp)        # 8-byte Spill
	callq	gtk_tree_model_get_type@PLT
	movq	-520(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	-120(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_tree_model_get_iter_first@PLT
	movq	-32(%rbp), %rsi
	movq	280(%rsi), %rsi
	movl	%eax, -524(%rbp)        # 4-byte Spill
	movq	%rsi, -536(%rbp)        # 8-byte Spill
	callq	gtk_tree_view_get_type@PLT
	movq	-536(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_tree_view_get_selection@PLT
	leaq	-120(%rbp), %rsi
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rdi
	callq	gtk_tree_selection_select_iter@PLT
	jmp	.LBB4_32
.LBB4_31:                               # %if.else.95
	movq	-32(%rbp), %rax
	movq	280(%rax), %rax
	movq	%rax, -544(%rbp)        # 8-byte Spill
	callq	gtk_tree_view_get_type@PLT
	movq	-544(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	gtk_tree_view_set_model@PLT
	leaq	.L.str.10(%rip), %rdi
	leaq	.L.str.22(%rip), %rsi
	movq	-32(%rbp), %rax
	movq	$0, 272(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, -552(%rbp)        # 8-byte Spill
	callq	dgettext@PLT
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_browser_show_message@PLT
.LBB4_32:                               # %if.end.101
	addq	$576, %rsp              # imm = 0x240
	popq	%rbp
	retq
.Lfunc_end4:
	.size	browser_search, .Lfunc_end4-browser_search
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	4
.LJTI4_0:
	.long	.LBB4_3-.LJTI4_0
	.long	.LBB4_4-.LJTI4_0
	.long	.LBB4_12-.LJTI4_0
	.long	.LBB4_13-.LJTI4_0
	.long	.LBB4_14-.LJTI4_0
	.long	.LBB4_15-.LJTI4_0
	.long	.LBB4_16-.LJTI4_0
	.long	.LBB4_17-.LJTI4_0

	.text
	.globl	gimp_proc_browser_dialog_get_selected
	.align	16, 0x90
	.type	gimp_proc_browser_dialog_get_selected,@function
gimp_proc_browser_dialog_get_selected:  # @gimp_proc_browser_dialog_get_selected
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp20:
	.cfi_def_cfa_offset 16
.Ltmp21:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp22:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_proc_browser_dialog_get_type@PLT
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB5_3
# BB#2:                                 # %if.then
	movl	$0, -76(%rbp)
	jmp	.LBB5_8
.LBB5_3:                                # %if.else
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_6
# BB#4:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB5_6
# BB#5:                                 # %if.then.3
	movl	$1, -76(%rbp)
	jmp	.LBB5_7
.LBB5_6:                                # %if.else.4
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -76(%rbp)
.LBB5_7:                                # %if.end
	jmp	.LBB5_8
.LBB5_8:                                # %if.end.6
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB5_10
# BB#9:                                 # %if.then.8
	jmp	.LBB5_11
.LBB5_10:                               # %if.else.9
	leaq	.L.str.6(%rip), %rdi
	leaq	.L__func__.gimp_proc_browser_dialog_get_selected(%rip), %rsi
	leaq	.L.str.7(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB5_15
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	280(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_tree_view_get_type@PLT
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_tree_view_get_selection@PLT
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	leaq	-56(%rbp), %rdx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gtk_tree_selection_get_selected@PLT
	cmpl	$0, %eax
	je	.LBB5_14
# BB#13:                                # %if.then.16
	movq	-16(%rbp), %rax
	movq	272(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_tree_model_get_type@PLT
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	-56(%rbp), %rsi
	xorl	%edx, %edx
	leaq	-88(%rbp), %rcx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_tree_model_get@PLT
	movq	-88(%rbp), %rcx
	movq	%rcx, -8(%rbp)
	jmp	.LBB5_15
.LBB5_14:                               # %if.end.20
	movq	$0, -8(%rbp)
.LBB5_15:                               # %return
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_proc_browser_dialog_get_selected, .Lfunc_end5-gimp_proc_browser_dialog_get_selected
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_proc_browser_dialog_class_init,@function
gimp_proc_browser_dialog_class_init:    # @gimp_proc_browser_dialog_class_init
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
	pushq	%r14
	pushq	%rbx
	subq	$112, %rsp
.Ltmp26:
	.cfi_offset %rbx, -32
.Ltmp27:
	.cfi_offset %r14, -24
	leaq	.L.str.8(%rip), %rax
	movl	$2, %edx
	movl	$984, %ecx              # imm = 0x3D8
	xorl	%esi, %esi
	movl	%esi, %r8d
	movq	g_cclosure_marshal_VOID__VOID@GOTPCREL(%rip), %r9
	movl	$4, %esi
	movl	%esi, %r10d
	xorl	%esi, %esi
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-32(%rbp), %rax         # 8-byte Reload
	movl	%esi, -36(%rbp)         # 4-byte Spill
	movq	%rax, %rsi
	movq	%r8, -48(%rbp)          # 8-byte Spill
	movq	-48(%rbp), %r11         # 8-byte Reload
	movq	%r9, -56(%rbp)          # 8-byte Spill
	movq	%r11, %r9
	movq	-56(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, (%rsp)
	movq	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movb	$0, %al
	movq	%r10, -64(%rbp)         # 8-byte Spill
	callq	g_signal_new@PLT
	leaq	.L.str.9(%rip), %rdi
	movl	$2, %edx
	movl	$992, %ecx              # imm = 0x3E0
	xorl	%r14d, %r14d
	movl	%r14d, %esi
	movq	g_cclosure_marshal_VOID__VOID@GOTPCREL(%rip), %r8
	movl	$4, %r14d
	movl	%r14d, %r9d
	xorl	%r14d, %r14d
	movl	%eax, dialog_signals(%rip)
	movq	-24(%rbp), %r10
	movq	(%r10), %r10
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	movq	%r10, %rsi
	movq	-72(%rbp), %r10         # 8-byte Reload
	movq	%r8, -80(%rbp)          # 8-byte Spill
	movq	%r10, %r8
	movq	%r9, -88(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-80(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	movq	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movb	$0, %al
	movl	%r14d, -92(%rbp)        # 4-byte Spill
	callq	g_signal_new@PLT
	movl	%eax, dialog_signals+4(%rip)
	movq	-24(%rbp), %rsi
	movq	$0, 984(%rsi)
	movq	-24(%rbp), %rsi
	movq	$0, 992(%rsi)
	addq	$112, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_proc_browser_dialog_class_init, .Lfunc_end6-gimp_proc_browser_dialog_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	browser_row_activated,@function
browser_row_activated:                  # @browser_row_activated
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp28:
	.cfi_def_cfa_offset 16
.Ltmp29:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp30:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rcx
	movl	dialog_signals+4(%rip), %esi
	movq	%rcx, %rdi
	movl	%eax, %edx
	movb	$0, %al
	callq	g_signal_emit@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	browser_row_activated, .Lfunc_end7-browser_row_activated
	.cfi_endproc

	.align	16, 0x90
	.type	browser_selection_changed,@function
browser_selection_changed:              # @browser_selection_changed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp31:
	.cfi_def_cfa_offset 16
.Ltmp32:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp33:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	xorl	%eax, %eax
	movl	%eax, %ecx
	leaq	-48(%rbp), %rdx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rcx, %rsi
	callq	gtk_tree_selection_get_selected@PLT
	cmpl	$0, %eax
	je	.LBB8_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	272(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_tree_model_get_type@PLT
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	-48(%rbp), %rsi
	xorl	%edx, %edx
	leaq	-56(%rbp), %rcx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_tree_model_get@PLT
	movq	-16(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	browser_show_procedure
	movq	-56(%rbp), %rdi
	callq	g_free@PLT
.LBB8_2:                                # %if.end
	xorl	%edx, %edx
	movq	-16(%rbp), %rax
	movl	dialog_signals(%rip), %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit@PLT
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	browser_selection_changed, .Lfunc_end8-browser_selection_changed
	.cfi_endproc

	.align	16, 0x90
	.type	browser_show_procedure,@function
browser_show_procedure:                 # @browser_show_procedure
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp34:
	.cfi_def_cfa_offset 16
.Ltmp35:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp36:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$168, %rsp
.Ltmp37:
	.cfi_offset %rbx, -56
.Ltmp38:
	.cfi_offset %r12, -48
.Ltmp39:
	.cfi_offset %r13, -40
.Ltmp40:
	.cfi_offset %r14, -32
.Ltmp41:
	.cfi_offset %r15, -24
	leaq	-64(%rbp), %rax
	leaq	-72(%rbp), %rdx
	leaq	-80(%rbp), %rcx
	leaq	-88(%rbp), %r8
	leaq	-96(%rbp), %r9
	leaq	-100(%rbp), %r10
	leaq	-104(%rbp), %r11
	leaq	-108(%rbp), %rbx
	leaq	-120(%rbp), %r14
	leaq	-128(%rbp), %r15
	movq	%rdi, -48(%rbp)
	movq	%rsi, -56(%rbp)
	movq	-56(%rbp), %rdi
	movq	%rax, %rsi
	movq	%r10, (%rsp)
	movq	%r11, 8(%rsp)
	movq	%rbx, 16(%rsp)
	movq	%r14, 24(%rsp)
	movq	%r15, 32(%rsp)
	callq	gimp_procedural_db_proc_info@PLT
	movq	-48(%rbp), %rcx
	movq	264(%rcx), %rcx
	movl	%eax, -132(%rbp)        # 4-byte Spill
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	callq	gimp_browser_get_type@PLT
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%r12d, %r12d
	movl	%r12d, %esi
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rdx
	movq	-72(%rbp), %rcx
	movq	-80(%rbp), %r8
	movq	-88(%rbp), %r9
	movq	-96(%rbp), %r10
	movl	-100(%rbp), %r12d
	movl	-104(%rbp), %r13d
	movl	-108(%rbp), %r11d
	movq	-120(%rbp), %rbx
	movq	-128(%rbp), %r14
	movq	%r10, (%rsp)
	movl	%r12d, 8(%rsp)
	movl	%r13d, 16(%rsp)
	movl	%r11d, 24(%rsp)
	movq	%rbx, 32(%rsp)
	movq	%r14, 40(%rsp)
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_proc_view_new@PLT
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_browser_set_widget@PLT
	movq	-64(%rbp), %rdi
	callq	g_free@PLT
	movq	-72(%rbp), %rdi
	callq	g_free@PLT
	movq	-80(%rbp), %rdi
	callq	g_free@PLT
	movq	-88(%rbp), %rdi
	callq	g_free@PLT
	movq	-96(%rbp), %rdi
	callq	g_free@PLT
	movq	-120(%rbp), %rdi
	movl	-104(%rbp), %esi
	callq	gimp_destroy_paramdefs@PLT
	movq	-128(%rbp), %rdi
	movl	-108(%rbp), %esi
	callq	gimp_destroy_paramdefs@PLT
	addq	$168, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end9:
	.size	browser_show_procedure, .Lfunc_end9-browser_show_procedure
	.cfi_endproc

	.align	16, 0x90
	.type	g_string_append_c_inline,@function
g_string_append_c_inline:               # @g_string_append_c_inline
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp42:
	.cfi_def_cfa_offset 16
.Ltmp43:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp44:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movb	%sil, %al
	movq	%rdi, -8(%rbp)
	movb	%al, -9(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	addq	$1, %rdi
	movq	-8(%rbp), %rcx
	cmpq	16(%rcx), %rdi
	jae	.LBB10_2
# BB#1:                                 # %if.then
	movb	-9(%rbp), %al
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 8(%rcx)
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movb	%al, (%rcx,%rdx)
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	-8(%rbp), %rdx
	movq	(%rdx), %rdx
	movb	$0, (%rdx,%rcx)
	jmp	.LBB10_3
.LBB10_2:                               # %if.else
	movq	$-1, %rsi
	movq	-8(%rbp), %rdi
	movsbl	-9(%rbp), %edx
	callq	g_string_insert_c@PLT
	movq	%rax, -24(%rbp)         # 8-byte Spill
.LBB10_3:                               # %if.end
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	g_string_append_c_inline, .Lfunc_end10-g_string_append_c_inline
	.cfi_endproc

	.type	gimp_proc_browser_dialog_get_type.g_define_type_id__volatile,@object # @gimp_proc_browser_dialog_get_type.g_define_type_id__volatile
	.local	gimp_proc_browser_dialog_get_type.g_define_type_id__volatile
	.comm	gimp_proc_browser_dialog_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpProcBrowserDialog"
	.size	.L.str, 22

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"title"
	.size	.L.str.1, 6

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"role"
	.size	.L.str.2, 5

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"help-func"
	.size	.L.str.3, 10

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"help-id"
	.size	.L.str.4, 8

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.zero	1
	.size	.L.str.5, 1

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"LibGimp"
	.size	.L.str.6, 8

	.type	.L__func__.gimp_proc_browser_dialog_get_selected,@object # @__func__.gimp_proc_browser_dialog_get_selected
.L__func__.gimp_proc_browser_dialog_get_selected:
	.asciz	"gimp_proc_browser_dialog_get_selected"
	.size	.L__func__.gimp_proc_browser_dialog_get_selected, 38

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"GIMP_IS_PROC_BROWSER_DIALOG (dialog)"
	.size	.L.str.7, 37

	.type	gimp_proc_browser_dialog_parent_class,@object # @gimp_proc_browser_dialog_parent_class
	.local	gimp_proc_browser_dialog_parent_class
	.comm	gimp_proc_browser_dialog_parent_class,8,8
	.type	GimpProcBrowserDialog_private_offset,@object # @GimpProcBrowserDialog_private_offset
	.local	GimpProcBrowserDialog_private_offset
	.comm	GimpProcBrowserDialog_private_offset,4,4
	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"selection-changed"
	.size	.L.str.8, 18

	.type	dialog_signals,@object  # @dialog_signals
	.local	dialog_signals
	.comm	dialog_signals,8,4
	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"row-activated"
	.size	.L.str.9, 14

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"gimp20-libgimp"
	.size	.L.str.10, 15

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"by name"
	.size	.L.str.11, 8

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"by description"
	.size	.L.str.12, 15

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"by help"
	.size	.L.str.13, 8

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"by author"
	.size	.L.str.14, 10

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"by copyright"
	.size	.L.str.15, 13

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"by date"
	.size	.L.str.16, 8

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"by type"
	.size	.L.str.17, 8

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"search"
	.size	.L.str.18, 7

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"text"
	.size	.L.str.19, 5

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"row_activated"
	.size	.L.str.20, 14

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"changed"
	.size	.L.str.21, 8

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"No matches"
	.size	.L.str.22, 11

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Search term invalid or incomplete"
	.size	.L.str.23, 34

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"Searching"
	.size	.L.str.24, 10

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	".*"
	.size	.L.str.25, 3

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"Searching by name"
	.size	.L.str.26, 18

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"-"
	.size	.L.str.27, 2

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"Searching by description"
	.size	.L.str.28, 25

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"Searching by help"
	.size	.L.str.29, 18

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"Searching by author"
	.size	.L.str.30, 20

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"Searching by copyright"
	.size	.L.str.31, 23

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"Searching by date"
	.size	.L.str.32, 18

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"Searching by type"
	.size	.L.str.33, 18

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"%d procedure"
	.size	.L.str.34, 13

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"%d procedures"
	.size	.L.str.35, 14

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"No matches for your query"
	.size	.L.str.36, 26

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"%d procedure matches your query"
	.size	.L.str.37, 32

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"%d procedures match your query"
	.size	.L.str.38, 31


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
