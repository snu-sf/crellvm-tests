	.text
	.file	"max-rgb.bc"
	.align	16, 0x90
	.type	query,@function
query:                                  # @query
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$88, %rsp
.Ltmp3:
	.cfi_offset %rbx, -56
.Ltmp4:
	.cfi_offset %r12, -48
.Ltmp5:
	.cfi_offset %r13, -40
.Ltmp6:
	.cfi_offset %r14, -32
.Ltmp7:
	.cfi_offset %r15, -24
	movabsq	$.L.str.8, %rdi
	movabsq	$.L.str.9, %rsi
	movabsq	$.L.str.10, %rdx
	movabsq	$.L.str.11, %rcx
	movabsq	$.L.str.12, %r8
	movabsq	$.L.str.13, %r9
	movabsq	$.L.str.14, %rax
	movabsq	$.L.str.15, %r10
	movl	$1, %r11d
	movl	$4, %ebx
	xorl	%r14d, %r14d
	movabsq	$query.args, %r15
	xorl	%r12d, %r12d
	movl	%r12d, %r13d
	movq	%rax, (%rsp)
	movq	%r10, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$4, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%r15, 40(%rsp)
	movq	$0, 48(%rsp)
	movq	%r13, -48(%rbp)         # 8-byte Spill
	movl	%r11d, -52(%rbp)        # 4-byte Spill
	movl	%r14d, -56(%rbp)        # 4-byte Spill
	movl	%ebx, -60(%rbp)         # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.8, %rdi
	movabsq	$.L.str.16, %rsi
	callq	gimp_plugin_menu_register
	movl	%eax, -64(%rbp)         # 4-byte Spill
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	query, .Lfunc_end0-query
	.cfi_endproc

	.align	16, 0x90
	.type	run,@function
run:                                    # @run
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp8:
	.cfi_def_cfa_offset 16
.Ltmp9:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp10:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	$0, -52(%rbp)
	movq	-24(%rbp), %rcx
	movl	8(%rcx), %esi
	movl	%esi, -56(%rbp)
	movq	-24(%rbp), %rcx
	movl	88(%rcx), %edi
	callq	gimp_drawable_get
	movq	%rax, -48(%rbp)
# BB#1:                                 # %do.body
	callq	gimp_locale_directory
	movabsq	$.L.str.17, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.17, %rdi
	movabsq	$.L.str.18, %rsi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.17, %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	textdomain
	movq	%rax, -80(%rbp)         # 8-byte Spill
# BB#2:                                 # %do.end
	movq	-32(%rbp), %rax
	movl	$1, (%rax)
	movq	-40(%rbp), %rax
	movq	$run.values, (%rax)
	movl	$21, run.values(%rip)
	movl	-52(%rbp), %ecx
	movl	%ecx, run.values+8(%rip)
	movl	-56(%rbp), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -84(%rbp)         # 4-byte Spill
	je	.LBB1_3
	jmp	.LBB1_17
.LBB1_17:                               # %do.end
	movl	-84(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	je	.LBB1_8
	jmp	.LBB1_18
.LBB1_18:                               # %do.end
	movl	-84(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	je	.LBB1_9
	jmp	.LBB1_10
.LBB1_3:                                # %sw.bb
	movabsq	$.L.str.8, %rdi
	movabsq	$pvals, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movq	-48(%rbp), %rsi
	movl	(%rsi), %edi
	movl	%eax, -96(%rbp)         # 4-byte Spill
	callq	gimp_drawable_is_rgb
	cmpl	$0, %eax
	jne	.LBB1_5
# BB#4:                                 # %if.then
	movabsq	$.L.str.19, %rdi
	callq	gettext
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_message
	jmp	.LBB1_16
.LBB1_5:                                # %if.end
	movq	-48(%rbp), %rdi
	callq	max_rgb_dialog
	cmpl	$0, %eax
	jne	.LBB1_7
# BB#6:                                 # %if.then.12
	jmp	.LBB1_16
.LBB1_7:                                # %if.end.13
	jmp	.LBB1_10
.LBB1_8:                                # %sw.bb.14
	movq	-24(%rbp), %rax
	movl	128(%rax), %ecx
	movl	%ecx, pvals
	jmp	.LBB1_10
.LBB1_9:                                # %sw.bb.18
	movabsq	$.L.str.8, %rdi
	movabsq	$pvals, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movl	%eax, -100(%rbp)        # 4-byte Spill
.LBB1_10:                               # %sw.epilog
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rdi
	callq	main_function
	movl	%eax, -52(%rbp)
	cmpl	$1, -56(%rbp)
	je	.LBB1_12
# BB#11:                                # %if.then.21
	callq	gimp_displays_flush
	movl	%eax, -104(%rbp)        # 4-byte Spill
.LBB1_12:                               # %if.end.23
	cmpl	$0, -56(%rbp)
	jne	.LBB1_15
# BB#13:                                # %land.lhs.true
	cmpl	$3, -52(%rbp)
	jne	.LBB1_15
# BB#14:                                # %if.then.26
	movabsq	$.L.str.8, %rdi
	movabsq	$pvals, %rax
	movl	$4, %edx
	movq	%rax, %rsi
	callq	gimp_procedural_db_set_data
	movl	%eax, -108(%rbp)        # 4-byte Spill
.LBB1_15:                               # %if.end.28
	movl	-52(%rbp), %eax
	movl	%eax, run.values+8
.LBB1_16:                               # %return
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	run, .Lfunc_end1-run
	.cfi_endproc

	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp11:
	.cfi_def_cfa_offset 16
.Ltmp12:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp13:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movabsq	$PLUG_IN_INFO, %rax
	movl	$0, -4(%rbp)
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	-8(%rbp), %esi
	movq	-16(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_main
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	main, .Lfunc_end2-main
	.cfi_endproc

	.align	16, 0x90
	.type	g_message,@function
g_message:                              # @g_message
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
	subq	$384, %rsp              # imm = 0x180
	testb	%al, %al
	movaps	%xmm7, -224(%rbp)       # 16-byte Spill
	movaps	%xmm6, -240(%rbp)       # 16-byte Spill
	movaps	%xmm5, -256(%rbp)       # 16-byte Spill
	movaps	%xmm4, -272(%rbp)       # 16-byte Spill
	movaps	%xmm3, -288(%rbp)       # 16-byte Spill
	movaps	%xmm2, -304(%rbp)       # 16-byte Spill
	movaps	%xmm1, -320(%rbp)       # 16-byte Spill
	movaps	%xmm0, -336(%rbp)       # 16-byte Spill
	movq	%rdi, -344(%rbp)        # 8-byte Spill
	movq	%r9, -352(%rbp)         # 8-byte Spill
	movq	%r8, -360(%rbp)         # 8-byte Spill
	movq	%rcx, -368(%rbp)        # 8-byte Spill
	movq	%rdx, -376(%rbp)        # 8-byte Spill
	movq	%rsi, -384(%rbp)        # 8-byte Spill
	je	.LBB3_2
# BB#1:                                 # %entry
	movaps	-336(%rbp), %xmm0       # 16-byte Reload
	movaps	%xmm0, -160(%rbp)
	movaps	-320(%rbp), %xmm1       # 16-byte Reload
	movaps	%xmm1, -144(%rbp)
	movaps	-304(%rbp), %xmm2       # 16-byte Reload
	movaps	%xmm2, -128(%rbp)
	movaps	-288(%rbp), %xmm3       # 16-byte Reload
	movaps	%xmm3, -112(%rbp)
	movaps	-272(%rbp), %xmm4       # 16-byte Reload
	movaps	%xmm4, -96(%rbp)
	movaps	-256(%rbp), %xmm5       # 16-byte Reload
	movaps	%xmm5, -80(%rbp)
	movaps	-240(%rbp), %xmm6       # 16-byte Reload
	movaps	%xmm6, -64(%rbp)
	movaps	-224(%rbp), %xmm7       # 16-byte Reload
	movaps	%xmm7, -48(%rbp)
.LBB3_2:                                # %entry
	movq	-352(%rbp), %rax        # 8-byte Reload
	movq	%rax, -168(%rbp)
	movq	-360(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -176(%rbp)
	movq	-368(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, -184(%rbp)
	movq	-376(%rbp), %rsi        # 8-byte Reload
	movq	%rsi, -192(%rbp)
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rdi, -200(%rbp)
	movq	-344(%rbp), %r8         # 8-byte Reload
	movq	%r8, -8(%rbp)
	leaq	-208(%rbp), %r8
	movq	%r8, -16(%rbp)
	leaq	16(%rbp), %r8
	movq	%r8, -24(%rbp)
	movl	$48, -28(%rbp)
	movl	$8, -32(%rbp)
	movq	-8(%rbp), %rdx
	xorl	%r9d, %r9d
	movl	%r9d, %edi
	movl	$32, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end3:
	.size	g_message, .Lfunc_end3-g_message
	.cfi_endproc

	.align	16, 0x90
	.type	max_rgb_dialog,@function
max_rgb_dialog:                         # @max_rgb_dialog
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
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$264, %rsp              # imm = 0x108
.Ltmp20:
	.cfi_offset %rbx, -40
.Ltmp21:
	.cfi_offset %r14, -32
.Ltmp22:
	.cfi_offset %r15, -24
	movabsq	$.L.str.20, %rax
	movl	$1, %esi
	movq	%rdi, -32(%rbp)
	movq	%rax, %rdi
	callq	gimp_ui_init
	movabsq	$.L.str.21, %rdi
	callq	gettext
	movabsq	$.L.str.22, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	movabsq	$gimp_standard_help_func, %r8
	movabsq	$.L.str.8, %r9
	movabsq	$.L.str.23, %rdi
	movl	$4294967290, %r10d      # imm = 0xFFFFFFFA
	movabsq	$.L.str.24, %r11
	movl	$4294967291, %ebx       # imm = 0xFFFFFFFB
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$-6, 8(%rsp)
	movq	%r11, 16(%rsp)
	movl	$-5, 24(%rsp)
	movq	$0, 32(%rsp)
	movb	$0, %al
	movl	%ebx, -100(%rbp)        # 4-byte Spill
	movl	%r10d, -104(%rbp)       # 4-byte Spill
	callq	gimp_dialog_new
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	movq	-40(%rbp), %rdi
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_window_set_transient
	movl	$1, %edi
	movl	$12, %esi
	callq	gtk_box_new
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-40(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movq	-32(%rbp), %rdi
	callq	gimp_zoom_preview_new
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.25, %rsi
	movabsq	$main_function, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movl	$2, %r9d
	movq	-56(%rbp), %rdi
	movq	-32(%rbp), %r11
	movq	%rax, %rdx
	movq	%r11, %rcx
	callq	g_signal_connect_data
	movabsq	$.L.str.26, %rdi
	movl	pvals, %r8d
	movq	%rax, -160(%rbp)        # 8-byte Spill
	movl	%r8d, -164(%rbp)        # 4-byte Spill
	callq	gettext
	movabsq	$.L.str.27, %rdi
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%edi, %edi
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movabsq	$gimp_radio_button_update, %rcx
	movabsq	$pvals, %rdx
	movl	$1, %r8d
	leaq	-72(%rbp), %r11
	leaq	-80(%rbp), %r14
	movq	%rdx, -184(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-184(%rbp), %rcx        # 8-byte Reload
	movl	-164(%rbp), %r9d        # 4-byte Reload
	movl	%r8d, -188(%rbp)        # 4-byte Spill
	movl	%r9d, %r8d
	movq	-176(%rbp), %r9         # 8-byte Reload
	movl	$1, (%rsp)
	movq	%r11, 8(%rsp)
	movq	%rax, 16(%rsp)
	movl	$0, 24(%rsp)
	movq	%r14, 32(%rsp)
	movq	$0, 40(%rsp)
	movb	$0, %al
	callq	gimp_int_radio_group_new
	movabsq	$.L.str.28, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%edi, %edi
	movl	%edi, %r8d
	movl	$2, %r9d
	movq	%rax, -64(%rbp)
	movq	-72(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rdx, -200(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-200(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.28, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-80(%rbp), %rdx
	movq	-56(%rbp), %rdi
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-208(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-48(%rbp), %rcx
	movq	%rax, -224(%rbp)        # 8-byte Spill
	movq	%rcx, -232(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movq	-40(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gimp_dialog_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dialog_run
	cmpl	$-5, %eax
	sete	%r15b
	andb	$1, %r15b
	movzbl	%r15b, %eax
	movl	%eax, -84(%rbp)
	movq	-40(%rbp), %rdi
	callq	gtk_widget_destroy
	movl	-84(%rbp), %eax
	addq	$264, %rsp              # imm = 0x108
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	max_rgb_dialog, .Lfunc_end4-max_rgb_dialog
	.cfi_endproc

	.align	16, 0x90
	.type	main_function,@function
main_function:                          # @main_function
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
	subq	$96, %rsp
	xorl	%eax, %eax
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movl	$1, %edx
	movl	$255, %r8d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpl	$0, pvals
	cmovgl	%eax, %r8d
	movl	%r8d, -32(%rbp)
	cmpl	pvals, %eax
	cmovll	%edx, %ecx
	movl	%ecx, -28(%rbp)
	movq	-8(%rbp), %rsi
	movl	(%rsi), %edi
	callq	gimp_drawable_has_alpha
	movl	%eax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB5_6
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_zoom_preview_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-60(%rbp), %rsi
	leaq	-64(%rbp), %rdx
	leaq	-68(%rbp), %rcx
	movq	%rax, %rdi
	callq	gimp_zoom_preview_get_source
	movl	$1, %r8d
	movl	%r8d, %esi
	movq	%rax, -56(%rbp)
	movl	-60(%rbp), %r8d
	imull	-64(%rbp), %r8d
	imull	-68(%rbp), %r8d
	movslq	%r8d, %rdi
	callq	g_malloc_n
	movq	%rax, -48(%rbp)
	movl	$0, -36(%rbp)
.LBB5_2:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	movl	-60(%rbp), %ecx
	imull	-64(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB5_5
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB5_2 Depth=1
	leaq	-32(%rbp), %rax
	movq	-56(%rbp), %rcx
	movl	-36(%rbp), %edx
	imull	-68(%rbp), %edx
	movslq	%edx, %rsi
	addq	%rsi, %rcx
	movq	-48(%rbp), %rsi
	movl	-36(%rbp), %edx
	imull	-68(%rbp), %edx
	movslq	%edx, %rdi
	addq	%rdi, %rsi
	movl	-68(%rbp), %edx
	movq	%rcx, %rdi
	movq	%rax, %rcx
	callq	max_rgb_func
# BB#4:                                 # %for.inc
                                        #   in Loop: Header=BB5_2 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB5_2
.LBB5_5:                                # %for.end
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movl	-60(%rbp), %eax
	imull	-68(%rbp), %eax
	movl	%eax, %edx
	callq	gimp_preview_draw_buffer
	movq	-48(%rbp), %rdi
	callq	g_free
	movq	-56(%rbp), %rdi
	callq	g_free
	jmp	.LBB5_7
.LBB5_6:                                # %if.else
	movabsq	$.L.str.29, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_progress_init
	xorl	%esi, %esi
	movabsq	$max_rgb_func, %rdx
	leaq	-32(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	-88(%rbp), %rcx         # 8-byte Reload
	movl	%eax, -92(%rbp)         # 4-byte Spill
	callq	gimp_rgn_iterate2
	movq	-8(%rbp), %rdi
	callq	gimp_drawable_detach
.LBB5_7:                                # %if.end
	movl	$3, %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	main_function, .Lfunc_end5-main_function
	.cfi_endproc

	.align	16, 0x90
	.type	max_rgb_func,@function
max_rgb_func:                           # @max_rgb_func
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, -40(%rbp)
	movl	$0, -48(%rbp)
	movq	-40(%rbp), %rcx
	movl	(%rcx), %edx
	movb	%dl, %al
	movb	%al, -49(%rbp)
	movl	$0, -44(%rbp)
.LBB6_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$3, -44(%rbp)
	jge	.LBB6_9
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	-40(%rbp), %rax
	movl	4(%rax), %ecx
	movzbl	-49(%rbp), %edx
	imull	%edx, %ecx
	movq	-40(%rbp), %rax
	movl	4(%rax), %edx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	addq	$1, %rsi
	movq	%rsi, -8(%rbp)
	movb	(%rax), %dil
	movb	%dil, -50(%rbp)
	movzbl	%dil, %r8d
	imull	%r8d, %edx
	cmpl	%edx, %ecx
	jg	.LBB6_7
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB6_1 Depth=1
	movzbl	-49(%rbp), %eax
	movzbl	-50(%rbp), %ecx
	cmpl	%ecx, %eax
	jne	.LBB6_5
# BB#4:                                 # %if.then.12
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	$1, %eax
	movl	-44(%rbp), %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %eax
	addl	-48(%rbp), %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB6_6
.LBB6_5:                                # %if.else
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	$1, %eax
	movl	-44(%rbp), %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %eax
	movl	%eax, -48(%rbp)
	movb	-50(%rbp), %cl
	movb	%cl, -49(%rbp)
.LBB6_6:                                # %if.end
                                        #   in Loop: Header=BB6_1 Depth=1
	jmp	.LBB6_7
.LBB6_7:                                # %if.end.14
                                        #   in Loop: Header=BB6_1 Depth=1
	jmp	.LBB6_8
.LBB6_8:                                # %for.inc
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB6_1
.LBB6_9:                                # %for.end
	movl	-48(%rbp), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	.LBB6_11
# BB#10:                                # %cond.true
	movzbl	-49(%rbp), %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
	jmp	.LBB6_12
.LBB6_11:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
	jmp	.LBB6_12
.LBB6_12:                               # %cond.end
	movl	-56(%rbp), %eax         # 4-byte Reload
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movb	%cl, (%rdx)
	movl	-48(%rbp), %eax
	andl	$2, %eax
	cmpl	$0, %eax
	je	.LBB6_14
# BB#13:                                # %cond.true.19
	movzbl	-49(%rbp), %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	jmp	.LBB6_15
.LBB6_14:                               # %cond.false.21
	xorl	%eax, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	jmp	.LBB6_15
.LBB6_15:                               # %cond.end.22
	movl	-60(%rbp), %eax         # 4-byte Reload
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movb	%cl, 1(%rdx)
	movl	-48(%rbp), %eax
	andl	$4, %eax
	cmpl	$0, %eax
	je	.LBB6_17
# BB#16:                                # %cond.true.28
	movzbl	-49(%rbp), %eax
	movl	%eax, -64(%rbp)         # 4-byte Spill
	jmp	.LBB6_18
.LBB6_17:                               # %cond.false.30
	xorl	%eax, %eax
	movl	%eax, -64(%rbp)         # 4-byte Spill
	jmp	.LBB6_18
.LBB6_18:                               # %cond.end.31
	movl	-64(%rbp), %eax         # 4-byte Reload
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movb	%cl, 2(%rdx)
	movq	-40(%rbp), %rdx
	cmpl	$0, 8(%rdx)
	je	.LBB6_20
# BB#19:                                # %if.then.36
	movq	-8(%rbp), %rax
	movb	(%rax), %cl
	movq	-16(%rbp), %rax
	movb	%cl, 3(%rax)
.LBB6_20:                               # %if.end.38
	popq	%rbp
	retq
.Lfunc_end6:
	.size	max_rgb_func, .Lfunc_end6-max_rgb_func
	.cfi_endproc

	.type	PLUG_IN_INFO,@object    # @PLUG_IN_INFO
	.section	.rodata,"a",@progbits
	.globl	PLUG_IN_INFO
	.align	8
PLUG_IN_INFO:
	.quad	0
	.quad	0
	.quad	query
	.quad	run
	.size	PLUG_IN_INFO, 32

	.type	query.args,@object      # @query.args
	.align	16
query.args:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str
	.quad	.L.str.1
	.long	13                      # 0xd
	.zero	4
	.quad	.L.str.2
	.quad	.L.str.3
	.long	16                      # 0x10
	.zero	4
	.quad	.L.str.4
	.quad	.L.str.5
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.6
	.quad	.L.str.7
	.size	query.args, 96

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"run-mode"
	.size	.L.str, 9

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }"
	.size	.L.str.1, 61

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"image"
	.size	.L.str.2, 6

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Input image (not used)"
	.size	.L.str.3, 23

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"drawable"
	.size	.L.str.4, 9

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Input drawable"
	.size	.L.str.5, 15

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"max-p"
	.size	.L.str.6, 6

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"{ MINIMIZE (0), MAXIMIZE (1) }"
	.size	.L.str.7, 31

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"plug-in-max-rgb"
	.size	.L.str.8, 16

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Reduce image to pure red, green, and blue"
	.size	.L.str.9, 42

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"There's no help yet."
	.size	.L.str.10, 21

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Shuji Narazaki (narazaki@InetQ.or.jp)"
	.size	.L.str.11, 38

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Shuji Narazaki"
	.size	.L.str.12, 15

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"May 2000"
	.size	.L.str.13, 9

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Maxim_um RGB..."
	.size	.L.str.14, 16

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"RGB*"
	.size	.L.str.15, 5

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"<Image>/Colors/Modify"
	.size	.L.str.16, 22

	.type	run.values,@object      # @run.values
	.local	run.values
	.comm	run.values,40,16
	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"gimp20-std-plug-ins"
	.size	.L.str.17, 20

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"UTF-8"
	.size	.L.str.18, 6

	.type	pvals,@object           # @pvals
	.data
	.align	4
pvals:
	.long	1                       # 0x1
	.size	pvals, 4

	.type	.L.str.19,@object       # @.str.19
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.19:
	.asciz	"Can only operate on RGB drawables."
	.size	.L.str.19, 35

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"max-rgb"
	.size	.L.str.20, 8

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Maximum RGB Value"
	.size	.L.str.21, 18

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"gimp-max-rgb"
	.size	.L.str.22, 13

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"gtk-cancel"
	.size	.L.str.23, 11

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"gtk-ok"
	.size	.L.str.24, 7

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"invalidated"
	.size	.L.str.25, 12

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"_Hold the maximal channels"
	.size	.L.str.26, 27

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"Ho_ld the minimal channels"
	.size	.L.str.27, 27

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"toggled"
	.size	.L.str.28, 8

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"Max RGB"
	.size	.L.str.29, 8


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
