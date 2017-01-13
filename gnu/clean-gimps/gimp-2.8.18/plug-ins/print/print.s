	.text
	.file	"print.bc"
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
	movabsq	$.L.str.4, %rdi
	movabsq	$.L.str.5, %rsi
	movabsq	$.L.str.6, %rdx
	movabsq	$.L.str.7, %rcx
	movabsq	$.L.str.8, %r8
	movabsq	$.L.str.9, %r9
	movabsq	$.L.str.10, %rax
	movabsq	$.L.str.11, %r10
	movl	$1, %r11d
	movl	$2, %ebx
	xorl	%r14d, %r14d
	movabsq	$query.print_args, %r15
	xorl	%r12d, %r12d
	movl	%r12d, %r13d
	movq	%rax, (%rsp)
	movq	%r10, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$2, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%r15, 40(%rsp)
	movq	$0, 48(%rsp)
	movq	%r13, -48(%rbp)         # 8-byte Spill
	movl	%r11d, -52(%rbp)        # 4-byte Spill
	movl	%r14d, -56(%rbp)        # 4-byte Spill
	movl	%ebx, -60(%rbp)         # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.4, %rdi
	movabsq	$.L.str.12, %rsi
	callq	gimp_plugin_menu_register
	movabsq	$.L.str.4, %rdi
	xorl	%esi, %esi
	movabsq	$.L.str.13, %rdx
	movl	%eax, -64(%rbp)         # 4-byte Spill
	callq	gimp_plugin_icon_register
	movl	%eax, -68(%rbp)         # 4-byte Spill
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	$0, -64(%rbp)
	movq	-24(%rbp), %rcx
	movl	8(%rcx), %esi
	movl	%esi, -44(%rbp)
# BB#1:                                 # %do.body
	callq	gimp_locale_directory
	movabsq	$.L.str.14, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.14, %rdi
	movabsq	$.L.str.15, %rsi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.14, %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	textdomain
	movq	%rax, -88(%rbp)         # 8-byte Spill
# BB#2:                                 # %do.end
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$run.values, %rcx
	movq	-32(%rbp), %rdx
	movl	$1, (%rdx)
	movq	-40(%rbp), %rdx
	movq	%rcx, (%rdx)
	callq	g_thread_init
	movl	$21, run.values
	movl	$0, run.values+8
	movq	-24(%rbp), %rcx
	movl	48(%rcx), %eax
	movl	%eax, -52(%rbp)
	movq	-8(%rbp), %rdi
	movl	$.L.str.4, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_7
# BB#3:                                 # %if.then
	leaq	-64(%rbp), %rdx
	movl	-52(%rbp), %edi
	cmpl	$0, -44(%rbp)
	sete	%al
	andb	$1, %al
	movzbl	%al, %esi
	callq	print_image
	movl	%eax, -48(%rbp)
	cmpq	$0, -64(%rbp)
	je	.LBB1_6
# BB#4:                                 # %land.lhs.true
	cmpl	$0, -44(%rbp)
	jne	.LBB1_6
# BB#5:                                 # %if.then.12
	movq	-64(%rbp), %rax
	movq	8(%rax), %rdi
	callq	print_show_error
.LBB1_6:                                # %if.end
	jmp	.LBB1_8
.LBB1_7:                                # %if.else
	movl	$1, -48(%rbp)
.LBB1_8:                                # %if.end.13
	cmpl	$3, -48(%rbp)
	je	.LBB1_11
# BB#9:                                 # %land.lhs.true.16
	cmpq	$0, -64(%rbp)
	je	.LBB1_11
# BB#10:                                # %if.then.18
	movq	-32(%rbp), %rax
	movl	$2, (%rax)
	movl	$4, run.values+40
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, run.values+48
.LBB1_11:                               # %if.end.20
	movl	-48(%rbp), %eax
	movl	%eax, run.values+8
	addq	$96, %rsp
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
	.type	print_image,@function
print_image:                            # @print_image
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
	subq	$240, %rsp
	movabsq	$.L.str.4, %rax
	movl	%edi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movl	-8(%rbp), %edi
	movl	-8(%rbp), %esi
	movq	%rax, %rdx
	callq	gimp_layer_new_from_visible
	movl	%eax, -40(%rbp)
	callq	gtk_print_operation_new
	movl	$1, %esi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	gtk_print_operation_set_n_pages
	movq	-32(%rbp), %rdi
	movl	-8(%rbp), %esi
	callq	print_operation_set_name
	movq	-32(%rbp), %rdi
	movl	-8(%rbp), %esi
	callq	print_page_setup_load
	movl	-8(%rbp), %esi
	movl	%esi, -120(%rbp)
	movl	-40(%rbp), %esi
	movl	%esi, -116(%rbp)
	callq	gimp_get_default_unit
	movl	%eax, -112(%rbp)
	movl	-8(%rbp), %edi
	callq	gimp_image_get_unit
	leaq	-120(%rbp), %rdx
	xorps	%xmm0, %xmm0
	movl	%eax, -88(%rbp)
	movsd	%xmm0, -80(%rbp)
	movsd	%xmm0, -72(%rbp)
	movl	$3, -64(%rbp)
	movl	$0, -60(%rbp)
	movl	$0, -56(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, -48(%rbp)
	movl	-8(%rbp), %edi
	movq	%rdx, %rcx
	addq	$16, %rcx
	addq	$24, %rdx
	movq	%rcx, %rsi
	callq	gimp_image_get_resolution
	leaq	-120(%rbp), %rdi
	movl	%eax, -124(%rbp)        # 4-byte Spill
	callq	print_settings_load
	xorl	%esi, %esi
	movq	-32(%rbp), %rdi
	movl	%eax, -128(%rbp)        # 4-byte Spill
	callq	gtk_print_operation_set_unit
	movabsq	$.L.str.16, %rsi
	movabsq	$begin_print, %rcx
	xorl	%eax, %eax
	movl	%eax, %r8d
	xorl	%r9d, %r9d
	leaq	-120(%rbp), %rdx
	movq	-32(%rbp), %rdi
	movq	%rdx, -136(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-136(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.17, %rsi
	movabsq	$draw_page, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	leaq	-120(%rbp), %rdx
	movq	-32(%rbp), %rdi
	movq	%rdx, -144(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-144(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.18, %rsi
	movabsq	$end_print, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	leaq	-40(%rbp), %rdx
	movq	-32(%rbp), %rdi
	movq	%rdx, -160(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-160(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	cmpl	$0, -12(%rbp)
	movq	%rax, -176(%rbp)        # 8-byte Spill
	je	.LBB3_5
# BB#1:                                 # %if.then
	movabsq	$.L.str.19, %rdi
	xorl	%esi, %esi
	callq	gimp_ui_init
	movabsq	$.L.str.18, %rsi
	movabsq	$print_settings_save, %rdi
	xorl	%eax, %eax
	movl	%eax, %r8d
	movl	$2, %r9d
	leaq	-120(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	-184(%rbp), %rdx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.20, %rsi
	movabsq	$create_custom_widget, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	leaq	-120(%rbp), %rdx
	movq	-32(%rbp), %rdi
	movq	%rdx, -192(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-192(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.21, %rdi
	movq	-32(%rbp), %rcx
	movq	%rax, -208(%rbp)        # 8-byte Spill
	movq	%rcx, -216(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_print_operation_set_custom_tab_label
	movl	$1, %esi
	movq	-32(%rbp), %rdi
	callq	gtk_print_operation_set_embed_page_setup
	xorl	%esi, %esi
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	callq	gtk_print_operation_run
	movl	%eax, -36(%rbp)
	cmpl	$1, -36(%rbp)
	je	.LBB3_3
# BB#2:                                 # %lor.lhs.false
	cmpl	$3, -36(%rbp)
	jne	.LBB3_4
.LBB3_3:                                # %if.then.15
	movq	-32(%rbp), %rdi
	movl	-8(%rbp), %esi
	callq	print_page_setup_save
.LBB3_4:                                # %if.end
	jmp	.LBB3_6
.LBB3_5:                                # %if.else
	movl	$1, %esi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	callq	gtk_print_operation_run
	movl	%eax, -36(%rbp)
.LBB3_6:                                # %if.end.17
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movl	-40(%rbp), %edi
	callq	gimp_item_is_valid
	cmpl	$0, %eax
	je	.LBB3_8
# BB#7:                                 # %if.then.20
	movl	-40(%rbp), %edi
	callq	gimp_item_delete
	movl	%eax, -220(%rbp)        # 4-byte Spill
.LBB3_8:                                # %if.end.22
	movl	-36(%rbp), %eax
	movl	%eax, %ecx
	movq	%rcx, %rdx
	subq	$3, %rdx
	movq	%rcx, -232(%rbp)        # 8-byte Spill
	movq	%rdx, -240(%rbp)        # 8-byte Spill
	ja	.LBB3_12
# BB#14:                                # %if.end.22
	movq	-232(%rbp), %rax        # 8-byte Reload
	movq	.LJTI3_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB3_9:                                # %sw.bb
	movl	$3, -4(%rbp)
	jmp	.LBB3_13
.LBB3_10:                               # %sw.bb.23
	movl	$4, -4(%rbp)
	jmp	.LBB3_13
.LBB3_11:                               # %sw.bb.24
	movl	$0, -4(%rbp)
	jmp	.LBB3_13
.LBB3_12:                               # %sw.epilog
	movl	$0, -4(%rbp)
.LBB3_13:                               # %return
	movl	-4(%rbp), %eax
	addq	$240, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	print_image, .Lfunc_end3-print_image
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI3_0:
	.quad	.LBB3_11
	.quad	.LBB3_9
	.quad	.LBB3_10
	.quad	.LBB3_9

	.text
	.align	16, 0x90
	.type	print_show_error,@function
print_show_error:                       # @print_show_error
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
	subq	$48, %rsp
	movabsq	$.L.str.24, %rax
	movq	%rdi, -8(%rbp)
	movq	%rax, %rdi
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	xorl	%esi, %esi
	movl	$3, %edx
	movl	$1, %ecx
	movabsq	$.L.str.23, %r8
	movq	%rax, %r9
	movb	$0, %al
	callq	gtk_message_dialog_new
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gtk_message_dialog_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.23, %rsi
	movq	-8(%rbp), %rdx
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_message_dialog_format_secondary_text
	movq	-16(%rbp), %rdx
	movq	%rdx, -32(%rbp)         # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_run
	movq	-16(%rbp), %rdi
	movl	%eax, -36(%rbp)         # 4-byte Spill
	callq	gtk_widget_destroy
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	print_show_error, .Lfunc_end4-print_show_error
	.cfi_endproc

	.align	16, 0x90
	.type	print_operation_set_name,@function
print_operation_set_name:               # @print_operation_set_name
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %edi
	callq	gimp_image_get_name
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gtk_print_operation_set_job_name
	movq	-24(%rbp), %rdi
	callq	g_free
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	print_operation_set_name, .Lfunc_end5-print_operation_set_name
	.cfi_endproc

	.align	16, 0x90
	.type	begin_print,@function
begin_print:                            # @begin_print
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movl	60(%rdx), %esi
	callq	gtk_print_operation_set_use_full_page
	movabsq	$.L.str.22, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_progress_init
	movl	%eax, -28(%rbp)         # 4-byte Spill
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	begin_print, .Lfunc_end6-begin_print
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI7_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	draw_page,@function
draw_page:                              # @draw_page
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
	subq	$48, %rsp
	leaq	-40(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	%rax, %rdx
	callq	print_draw_page
	cmpl	$0, %eax
	je	.LBB7_2
# BB#1:                                 # %if.then
	movsd	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero
	callq	gimp_progress_update
	movl	%eax, -44(%rbp)         # 4-byte Spill
	jmp	.LBB7_3
.LBB7_2:                                # %if.else
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdi
	callq	print_show_error
	movq	-40(%rbp), %rdi
	callq	g_error_free
.LBB7_3:                                # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	draw_page, .Lfunc_end7-draw_page
	.cfi_endproc

	.align	16, 0x90
	.type	end_print,@function
end_print:                              # @end_print
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movl	(%rdx), %edi
	callq	gimp_item_is_valid
	cmpl	$0, %eax
	je	.LBB8_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_item_delete
	movq	-24(%rbp), %rcx
	movl	$-1, (%rcx)
	movl	%eax, -28(%rbp)         # 4-byte Spill
.LBB8_2:                                # %if.end
	callq	gimp_progress_end
	movl	$1, %edi
	movabsq	$gtk_true, %rcx
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	movq	%rcx, %rsi
	movl	%eax, -32(%rbp)         # 4-byte Spill
	callq	g_timeout_add_seconds
	movl	%eax, -36(%rbp)         # 4-byte Spill
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	end_print, .Lfunc_end8-end_print
	.cfi_endproc

	.align	16, 0x90
	.type	create_custom_widget,@function
create_custom_widget:                   # @create_custom_widget
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
	subq	$16, %rsp
	movabsq	$.L.str.4, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rax, %rsi
	callq	print_page_layout_gui
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	create_custom_widget, .Lfunc_end9-create_custom_widget
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

	.type	query.print_args,@object # @query.print_args
	.align	16
query.print_args:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str
	.quad	.L.str.1
	.long	13                      # 0xd
	.zero	4
	.quad	.L.str.2
	.quad	.L.str.3
	.size	query.print_args, 48

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"run-mode"
	.size	.L.str, 9

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"The run mode { RUN-INTERACTIVE (0) }"
	.size	.L.str.1, 37

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"image"
	.size	.L.str.2, 6

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Image to print"
	.size	.L.str.3, 15

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"file-print-gtk"
	.size	.L.str.4, 15

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Print the image"
	.size	.L.str.5, 16

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Print the image using the GTK+ Print API."
	.size	.L.str.6, 42

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Bill Skaggs, Sven Neumann, Stefan R\303\266llin"
	.size	.L.str.7, 42

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Bill Skaggs <weskaggs@primate.ucdavis.edu>"
	.size	.L.str.8, 43

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"2006 - 2008"
	.size	.L.str.9, 12

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"_Print..."
	.size	.L.str.10, 10

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"*"
	.size	.L.str.11, 2

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"<Image>/File/Send"
	.size	.L.str.12, 18

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"gtk-print"
	.size	.L.str.13, 10

	.type	run.values,@object      # @run.values
	.local	run.values
	.comm	run.values,80,16
	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"gimp20-std-plug-ins"
	.size	.L.str.14, 20

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"UTF-8"
	.size	.L.str.15, 6

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"begin-print"
	.size	.L.str.16, 12

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"draw-page"
	.size	.L.str.17, 10

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"end-print"
	.size	.L.str.18, 10

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"print"
	.size	.L.str.19, 6

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"create-custom-widget"
	.size	.L.str.20, 21

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Image Settings"
	.size	.L.str.21, 15

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Printing"
	.size	.L.str.22, 9

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"%s"
	.size	.L.str.23, 3

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"An error occurred while trying to print:"
	.size	.L.str.24, 41


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
