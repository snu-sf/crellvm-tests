	.text
	.file	"imap_cmd_guides.bc"
	.globl	guides_command_new
	.align	16, 0x90
	.type	guides_command_new,@function
guides_command_new:                     # @guides_command_new
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
	subq	$32, %rsp
	movl	$1, %eax
	movl	%eax, %ecx
	movl	$40, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	%rcx, %rdi
	callq	g_malloc_n
	movabsq	$.L.str, %rdi
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 32(%rcx)
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$guides_command_class, %rdx
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	command_init
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	guides_command_new, .Lfunc_end0-guides_command_new
	.cfi_endproc

	.align	16, 0x90
	.type	guides_command_execute,@function
guides_command_execute:                 # @guides_command_execute
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
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	32(%rdi), %rdi
	callq	do_create_guides_dialog_local
	movl	$1, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	guides_command_execute, .Lfunc_end1-guides_command_execute
	.cfi_endproc

	.align	16, 0x90
	.type	do_create_guides_dialog_local,@function
do_create_guides_dialog_local:          # @do_create_guides_dialog_local
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
	movq	%rdi, -8(%rbp)
	cmpq	$0, do_create_guides_dialog_local.dialog
	jne	.LBB2_2
# BB#1:                                 # %if.then
	callq	make_guides_dialog
	movq	%rax, do_create_guides_dialog_local.dialog
.LBB2_2:                                # %if.end
	movq	do_create_guides_dialog_local.dialog, %rdi
	movq	-8(%rbp), %rsi
	callq	init_guides_dialog
	movq	do_create_guides_dialog_local.dialog, %rsi
	movq	(%rsi), %rdi
	callq	default_dialog_show
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	do_create_guides_dialog_local, .Lfunc_end2-do_create_guides_dialog_local
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI3_0:
	.long	1056964608              # float 0.5
	.text
	.align	16, 0x90
	.type	make_guides_dialog,@function
make_guides_dialog:                     # @make_guides_dialog
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
	subq	$416, %rsp              # imm = 0x1A0
	movl	$1, %eax
	movl	%eax, %edi
	movl	$104, %eax
	movl	%eax, %esi
	callq	g_malloc_n
	movabsq	$.L.str.1, %rdi
	movq	%rax, -8(%rbp)
	callq	gettext
	movq	%rax, %rdi
	callq	make_default_dialog
	movabsq	$guides_ok_cb, %rsi
	movq	-8(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rax, %rdx
	callq	default_dialog_set_ok_cb
	movabsq	$.L.str.2, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_hint_box_new
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -52(%rbp)         # 4-byte Spill
	movl	-52(%rbp), %r8d         # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.3, %rdi
	callq	gtk_label_new
	movq	-8(%rbp), %rsi
	movq	%rax, 8(%rsi)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorps	%xmm0, %xmm0
	movss	.LCPI3_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-8(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -76(%rbp)         # 4-byte Spill
	movl	-76(%rbp), %r8d         # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.3, %rdi
	callq	gtk_label_new
	movq	-8(%rbp), %rsi
	movq	%rax, 16(%rsi)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorps	%xmm0, %xmm0
	movss	.LCPI3_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-8(%rbp), %rsi
	movq	16(%rsi), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -100(%rbp)        # 4-byte Spill
	movl	-100(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	callq	gtk_widget_show
	movl	$4, %ecx
	movq	-16(%rbp), %rdi
	movl	%ecx, %esi
	movl	%ecx, %edx
	callq	default_dialog_add_table
	movabsq	$.L.str.4, %rdi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movl	%ecx, %esi
	movl	%ecx, %edx
	movq	%rax, %rcx
	callq	create_label_in_table
	xorl	%edx, %edx
	movl	$1, %esi
	movl	$32, %r8d
	movl	$100, %r9d
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rax
	movl	%esi, -116(%rbp)        # 4-byte Spill
	movq	%rax, %rsi
	movl	-116(%rbp), %ecx        # 4-byte Reload
	movl	-116(%rbp), %r10d       # 4-byte Reload
	movl	%r9d, -120(%rbp)        # 4-byte Spill
	movl	%r10d, %r9d
	movl	$100, (%rsp)
	callq	create_spin_button_in_table
	movabsq	$.L.str.5, %rsi
	movabsq	$recalc_bounds, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %r11
	movq	%rax, 24(%r11)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	-8(%rbp), %r11
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-128(%rbp), %rdx        # 8-byte Reload
	movq	%r11, %rcx
	callq	g_signal_connect_data
	movabsq	$.L.str.6, %rdi
	movq	-24(%rbp), %rcx
	movq	%rax, -136(%rbp)        # 8-byte Spill
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$2, %edx
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rcx
	callq	create_label_in_table
	xorl	%edx, %edx
	movl	$3, %ecx
	movl	$100, %esi
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rax
	movl	%esi, -148(%rbp)        # 4-byte Spill
	movq	%rax, %rsi
	movl	%edx, -152(%rbp)        # 4-byte Spill
	movl	-152(%rbp), %r8d        # 4-byte Reload
	movl	-152(%rbp), %r9d        # 4-byte Reload
	movl	$100, (%rsp)
	callq	create_spin_button_in_table
	movabsq	$.L.str.5, %rsi
	movabsq	$recalc_bounds, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %r11
	movq	%rax, 40(%r11)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	-8(%rbp), %r11
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-160(%rbp), %rdx        # 8-byte Reload
	movq	%r11, %rcx
	callq	g_signal_connect_data
	movabsq	$.L.str.7, %rdi
	movq	-24(%rbp), %rcx
	movq	%rax, -168(%rbp)        # 8-byte Spill
	movq	%rcx, -176(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$1, %esi
	xorl	%edx, %edx
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rcx
	callq	create_label_in_table
	movl	$1, %edx
	movl	$32, %r8d
	movl	$100, %esi
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rax
	movl	%esi, -180(%rbp)        # 4-byte Spill
	movq	%rax, %rsi
	movl	%edx, -184(%rbp)        # 4-byte Spill
	movl	-184(%rbp), %ecx        # 4-byte Reload
	movl	-184(%rbp), %r9d        # 4-byte Reload
	movl	$100, (%rsp)
	callq	create_spin_button_in_table
	movabsq	$.L.str.5, %rsi
	movabsq	$recalc_bounds, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %r11
	movq	%rax, 32(%r11)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	-8(%rbp), %r11
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-192(%rbp), %rdx        # 8-byte Reload
	movq	%r11, %rcx
	callq	g_signal_connect_data
	movabsq	$.L.str.8, %rdi
	movq	-24(%rbp), %rcx
	movq	%rax, -200(%rbp)        # 8-byte Spill
	movq	%rcx, -208(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$1, %esi
	movl	$2, %edx
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rcx
	callq	create_label_in_table
	movl	$1, %edx
	movl	$3, %ecx
	xorl	%esi, %esi
	movl	$100, %r9d
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rax
	movl	%esi, -212(%rbp)        # 4-byte Spill
	movq	%rax, %rsi
	movl	-212(%rbp), %r8d        # 4-byte Reload
	movl	-212(%rbp), %r10d       # 4-byte Reload
	movl	%r9d, -216(%rbp)        # 4-byte Spill
	movl	%r10d, %r9d
	movl	$100, (%rsp)
	callq	create_spin_button_in_table
	movabsq	$.L.str.5, %rsi
	movabsq	$recalc_bounds, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %r11
	movq	%rax, 48(%r11)
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movq	-8(%rbp), %r11
	movq	%rdi, -224(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-224(%rbp), %rdx        # 8-byte Reload
	movq	%r11, %rcx
	callq	g_signal_connect_data
	movabsq	$.L.str.9, %rdi
	movq	-24(%rbp), %rcx
	movq	%rax, -232(%rbp)        # 8-byte Spill
	movq	%rcx, -240(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$2, %esi
	xorl	%edx, %edx
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rcx
	callq	create_label_in_table
	movl	$2, %edx
	movl	$1, %ecx
	xorl	%esi, %esi
	movl	$100, %r9d
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rax
	movl	%esi, -244(%rbp)        # 4-byte Spill
	movq	%rax, %rsi
	movl	-244(%rbp), %r8d        # 4-byte Reload
	movl	-244(%rbp), %r10d       # 4-byte Reload
	movl	%r9d, -248(%rbp)        # 4-byte Spill
	movl	%r10d, %r9d
	movl	$100, (%rsp)
	callq	create_spin_button_in_table
	movabsq	$.L.str.5, %rsi
	movabsq	$recalc_bounds, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %r11
	movq	%rax, 56(%r11)
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	movq	-8(%rbp), %r11
	movq	%rdi, -256(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-256(%rbp), %rdx        # 8-byte Reload
	movq	%r11, %rcx
	callq	g_signal_connect_data
	movabsq	$.L.str.10, %rdi
	movq	-24(%rbp), %rcx
	movq	%rax, -264(%rbp)        # 8-byte Spill
	movq	%rcx, -272(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$2, %r9d
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movl	%r9d, %esi
	movl	%r9d, %edx
	movq	%rax, %rcx
	callq	create_label_in_table
	movl	$2, %edx
	movl	$3, %ecx
	xorl	%esi, %esi
	movl	$100, %r9d
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rax
	movl	%esi, -276(%rbp)        # 4-byte Spill
	movq	%rax, %rsi
	movl	-276(%rbp), %r8d        # 4-byte Reload
	movl	-276(%rbp), %r10d       # 4-byte Reload
	movl	%r9d, -280(%rbp)        # 4-byte Spill
	movl	%r10d, %r9d
	movl	$100, (%rsp)
	callq	create_spin_button_in_table
	movabsq	$.L.str.5, %rsi
	movabsq	$recalc_bounds, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %r11
	movq	%rax, 72(%r11)
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movq	-8(%rbp), %r11
	movq	%rdi, -288(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-288(%rbp), %rdx        # 8-byte Reload
	movq	%r11, %rcx
	callq	g_signal_connect_data
	movabsq	$.L.str.11, %rdi
	movq	-24(%rbp), %rcx
	movq	%rax, -296(%rbp)        # 8-byte Spill
	movq	%rcx, -304(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$3, %esi
	xorl	%edx, %edx
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rcx
	callq	create_label_in_table
	movl	$3, %edx
	movl	$1, %ecx
	xorl	%esi, %esi
	movl	$100, %r9d
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rax
	movl	%esi, -308(%rbp)        # 4-byte Spill
	movq	%rax, %rsi
	movl	-308(%rbp), %r8d        # 4-byte Reload
	movl	-308(%rbp), %r10d       # 4-byte Reload
	movl	%r9d, -312(%rbp)        # 4-byte Spill
	movl	%r10d, %r9d
	movl	$100, (%rsp)
	callq	create_spin_button_in_table
	movabsq	$.L.str.5, %rsi
	movabsq	$recalc_bounds, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %r11
	movq	%rax, 64(%r11)
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	movq	-8(%rbp), %r11
	movq	%rdi, -320(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-320(%rbp), %rdx        # 8-byte Reload
	movq	%r11, %rcx
	callq	g_signal_connect_data
	movabsq	$.L.str.12, %rdi
	movq	-24(%rbp), %rcx
	movq	%rax, -328(%rbp)        # 8-byte Spill
	movq	%rcx, -336(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$3, %esi
	movl	$2, %edx
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rcx
	callq	create_label_in_table
	movl	$3, %edx
	xorl	%esi, %esi
	movl	$100, %r9d
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rax
	movl	%esi, -340(%rbp)        # 4-byte Spill
	movq	%rax, %rsi
	movl	%edx, -344(%rbp)        # 4-byte Spill
	movl	-344(%rbp), %ecx        # 4-byte Reload
	movl	-340(%rbp), %r8d        # 4-byte Reload
	movl	-340(%rbp), %r10d       # 4-byte Reload
	movl	%r9d, -348(%rbp)        # 4-byte Spill
	movl	%r10d, %r9d
	movl	$100, (%rsp)
	callq	create_spin_button_in_table
	movabsq	$.L.str.5, %rsi
	movabsq	$recalc_bounds, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %r11
	movq	%rax, 80(%r11)
	movq	-8(%rbp), %rax
	movq	80(%rax), %rax
	movq	-8(%rbp), %r11
	movq	%rdi, -360(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-360(%rbp), %rdx        # 8-byte Reload
	movq	%r11, %rcx
	callq	g_signal_connect_data
	xorl	%edi, %edi
	movl	$6, %esi
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	gtk_box_new
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r9d
	xorl	%r8d, %r8d
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	callq	gtk_box_pack_start
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.13, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new_with_mnemonic
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -388(%rbp)        # 4-byte Spill
	movl	-388(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	callq	gtk_entry_new
	movq	-8(%rbp), %rsi
	movq	%rax, 88(%rsi)
	movq	-40(%rbp), %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-8(%rbp), %rsi
	movq	88(%rsi), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-8(%rbp), %rax
	movq	88(%rax), %rdi
	callq	gtk_widget_show
	movq	-32(%rbp), %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-408(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	movq	88(%rsi), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_mnemonic_widget
	movq	-8(%rbp), %rax
	addq	$416, %rsp              # imm = 0x1A0
	popq	%rbp
	retq
.Lfunc_end3:
	.size	make_guides_dialog, .Lfunc_end3-make_guides_dialog
	.cfi_endproc

	.align	16, 0x90
	.type	init_guides_dialog,@function
init_guides_dialog:                     # @init_guides_dialog
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
	subq	$64, %rsp
	movabsq	$.L.str.15, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 96(%rdi)
	movq	%rax, %rdi
	callq	gettext
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	get_image_width
	movl	%eax, -36(%rbp)         # 4-byte Spill
	callq	get_image_height
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movl	-36(%rbp), %esi         # 4-byte Reload
	movl	%eax, %edx
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_label_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_text
	movq	-24(%rbp), %rdi
	callq	g_free
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_label_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.16, %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gettext
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_label_set_text
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdi
	callq	gtk_widget_grab_focus
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	init_guides_dialog, .Lfunc_end4-init_guides_dialog
	.cfi_endproc

	.align	16, 0x90
	.type	guides_ok_cb,@function
guides_ok_cb:                           # @guides_ok_cb
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
	subq	$176, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	24(%rdi), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_spin_button_get_value_as_int
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rsi
	movq	32(%rsi), %rsi
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_spin_button_get_value_as_int
	movl	%eax, -36(%rbp)
	movq	-16(%rbp), %rsi
	movq	40(%rsi), %rsi
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_spin_button_get_value_as_int
	movl	%eax, -40(%rbp)
	movq	-16(%rbp), %rsi
	movq	48(%rsi), %rsi
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_spin_button_get_value_as_int
	movl	%eax, -44(%rbp)
	movq	-16(%rbp), %rsi
	movq	56(%rsi), %rsi
	movq	%rsi, -120(%rbp)        # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_spin_button_get_value_as_int
	movl	%eax, -48(%rbp)
	movq	-16(%rbp), %rsi
	movq	64(%rsi), %rsi
	movq	%rsi, -128(%rbp)        # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_spin_button_get_value_as_int
	movl	%eax, -52(%rbp)
	movq	-16(%rbp), %rsi
	movq	80(%rsi), %rsi
	movq	%rsi, -136(%rbp)        # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_spin_button_get_value_as_int
	movl	%eax, -56(%rbp)
	movq	-16(%rbp), %rsi
	movq	72(%rsi), %rsi
	movq	%rsi, -144(%rbp)        # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_spin_button_get_value_as_int
	movabsq	$.L.str.1, %rdi
	movl	%eax, -60(%rbp)
	callq	gettext
	movq	%rax, %rdi
	callq	subcommand_start
	movl	-44(%rbp), %ecx
	movl	%ecx, -20(%rbp)
	movl	$0, -24(%rbp)
	movq	%rax, -152(%rbp)        # 8-byte Spill
.LBB5_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_3 Depth 2
	movl	-24(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jge	.LBB5_8
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	-40(%rbp), %eax
	movl	%eax, -64(%rbp)
	movl	$0, -28(%rbp)
.LBB5_3:                                # %for.cond.30
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-28(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jge	.LBB5_6
# BB#4:                                 # %for.body.32
                                        #   in Loop: Header=BB5_3 Depth=2
	movl	-64(%rbp), %edi
	movl	-20(%rbp), %esi
	movl	-32(%rbp), %edx
	movl	-36(%rbp), %ecx
	callq	create_rectangle
	movq	%rax, -72(%rbp)
	movq	-16(%rbp), %rax
	movq	96(%rax), %rdi
	movq	-72(%rbp), %rsi
	callq	create_command_new
	movq	%rax, -80(%rbp)
	movq	-72(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_entry_get_text
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	object_set_url
	movq	-80(%rbp), %rdi
	callq	command_execute
	movl	-32(%rbp), %ecx
	addl	-48(%rbp), %ecx
	addl	-64(%rbp), %ecx
	movl	%ecx, -64(%rbp)
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB5_3 Depth=2
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB5_3
.LBB5_6:                                # %for.end
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	-36(%rbp), %eax
	addl	-52(%rbp), %eax
	addl	-20(%rbp), %eax
	movl	%eax, -20(%rbp)
# BB#7:                                 # %for.inc.41
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB5_1
.LBB5_8:                                # %for.end.43
	callq	subcommand_end
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	guides_ok_cb, .Lfunc_end5-guides_ok_cb
	.cfi_endproc

	.align	16, 0x90
	.type	recalc_bounds,@function
recalc_bounds:                          # @recalc_bounds
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
	subq	$176, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	24(%rsi), %rsi
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_spin_button_get_value_as_int
	movl	%eax, -28(%rbp)
	movq	-24(%rbp), %rsi
	movq	32(%rsi), %rsi
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_spin_button_get_value_as_int
	movl	%eax, -32(%rbp)
	movq	-24(%rbp), %rsi
	movq	40(%rsi), %rsi
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_spin_button_get_value_as_int
	movl	%eax, -36(%rbp)
	movq	-24(%rbp), %rsi
	movq	48(%rsi), %rsi
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_spin_button_get_value_as_int
	movl	%eax, -40(%rbp)
	movq	-24(%rbp), %rsi
	movq	56(%rsi), %rsi
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_spin_button_get_value_as_int
	movl	%eax, -44(%rbp)
	movq	-24(%rbp), %rsi
	movq	64(%rsi), %rsi
	movq	%rsi, -120(%rbp)        # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_spin_button_get_value_as_int
	movl	%eax, -48(%rbp)
	movq	-24(%rbp), %rsi
	movq	80(%rsi), %rsi
	movq	%rsi, -128(%rbp)        # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_spin_button_get_value_as_int
	movl	%eax, -52(%rbp)
	movq	-24(%rbp), %rsi
	movq	72(%rsi), %rsi
	movq	%rsi, -136(%rbp)        # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_spin_button_get_value_as_int
	movabsq	$.L.str.14, %rdi
	movl	%eax, -56(%rbp)
	movl	-28(%rbp), %eax
	addl	-44(%rbp), %eax
	imull	-56(%rbp), %eax
	subl	-44(%rbp), %eax
	movl	%eax, -60(%rbp)
	movl	-32(%rbp), %eax
	addl	-48(%rbp), %eax
	imull	-52(%rbp), %eax
	subl	-48(%rbp), %eax
	movl	%eax, -64(%rbp)
	callq	gettext
	movl	-36(%rbp), %esi
	movl	-40(%rbp), %edx
	movl	-36(%rbp), %ecx
	addl	-60(%rbp), %ecx
	movl	-40(%rbp), %r8d
	addl	-64(%rbp), %r8d
	movl	-52(%rbp), %r9d
	imull	-56(%rbp), %r9d
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -72(%rbp)
	movl	-36(%rbp), %ecx
	addl	-60(%rbp), %ecx
	movl	%ecx, -140(%rbp)        # 4-byte Spill
	callq	get_image_width
	movl	-140(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jg	.LBB6_2
# BB#1:                                 # %lor.lhs.false
	movl	-40(%rbp), %eax
	addl	-64(%rbp), %eax
	movl	%eax, -144(%rbp)        # 4-byte Spill
	callq	get_image_height
	movl	-144(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jle	.LBB6_3
.LBB6_2:                                # %if.then
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	xorl	%edx, %edx
	movq	%rax, %rdi
	callq	gtk_dialog_set_response_sensitive
	jmp	.LBB6_4
.LBB6_3:                                # %if.else
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movl	$1, %edx
	movq	%rax, %rdi
	callq	gtk_dialog_set_response_sensitive
.LBB6_4:                                # %if.end
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_text
	movq	-72(%rbp), %rdi
	callq	g_free
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	recalc_bounds, .Lfunc_end6-recalc_bounds
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Guides"
	.size	.L.str, 7

	.type	guides_command_class,@object # @guides_command_class
	.data
	.align	8
guides_command_class:
	.quad	0
	.quad	guides_command_execute
	.quad	0
	.quad	0
	.size	guides_command_class, 32

	.type	do_create_guides_dialog_local.dialog,@object # @do_create_guides_dialog_local.dialog
	.local	do_create_guides_dialog_local.dialog
	.comm	do_create_guides_dialog_local.dialog,8,8
	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"Create Guides"
	.size	.L.str.1, 14

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Guides are pre-defined rectangles covering the image. You define them by their width, height, and spacing from each other. This allows you to rapidly create the most common image map type - image collection of \"thumbnails\", suitable for navigation bars."
	.size	.L.str.2, 254

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.zero	1
	.size	.L.str.3, 1

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"_Width:"
	.size	.L.str.4, 8

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"changed"
	.size	.L.str.5, 8

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"_Left start at:"
	.size	.L.str.6, 16

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"_Height:"
	.size	.L.str.7, 9

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"_Top start at:"
	.size	.L.str.8, 15

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"_Horz. spacing:"
	.size	.L.str.9, 16

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"_No. across:"
	.size	.L.str.10, 13

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"_Vert. spacing:"
	.size	.L.str.11, 16

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"No. _down:"
	.size	.L.str.12, 11

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Base _URL:"
	.size	.L.str.13, 11

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Resulting Guide Bounds: %d,%d to %d,%d (%d areas)"
	.size	.L.str.14, 50

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Image dimensions: %d \303\227 %d"
	.size	.L.str.15, 27

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Resulting Guide Bounds: 0,0 to 0,0 (0 areas)"
	.size	.L.str.16, 45


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
