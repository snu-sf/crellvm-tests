	.text
	.file	"fits.bc"
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
	subq	$120, %rsp
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
	movabsq	$.L.str.11, %rdi
	movabsq	$.L.str.12, %rsi
	movabsq	$.L.str.13, %rdx
	movabsq	$.L.str.14, %rcx
	movabsq	$.L.str.15, %r8
	movabsq	$.L.str.16, %r9
	movabsq	$.L.str.17, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %r11d
	movl	$1, %r10d
	movl	$3, %ebx
	movabsq	$query.load_args, %r14
	movabsq	$query.load_return_vals, %r15
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$3, 24(%rsp)
	movl	$1, 32(%rsp)
	movq	%r14, 40(%rsp)
	movq	%r15, 48(%rsp)
	movl	%r10d, -44(%rbp)        # 4-byte Spill
	movq	%r11, -56(%rbp)         # 8-byte Spill
	movl	%ebx, -60(%rbp)         # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.11, %rdi
	movabsq	$.L.str.18, %rsi
	callq	gimp_register_file_handler_mime
	movabsq	$.L.str.11, %rdi
	movabsq	$.L.str.19, %rsi
	movabsq	$.L.str.20, %rdx
	movabsq	$.L.str.21, %rcx
	movl	%eax, -64(%rbp)         # 4-byte Spill
	callq	gimp_register_magic_load_handler
	movabsq	$.L.str.22, %rdi
	movabsq	$.L.str.23, %rsi
	movabsq	$.L.str.24, %rdx
	movabsq	$.L.str.14, %rcx
	movabsq	$.L.str.15, %r8
	movabsq	$.L.str.16, %r9
	movabsq	$.L.str.17, %r11
	movabsq	$.L.str.25, %r14
	movl	$1, %r10d
	movl	$5, %ebx
	xorl	%r12d, %r12d
	movabsq	$query.save_args, %r15
	xorl	%r13d, %r13d
                                        # kill: R13<def> R13D<kill>
	movq	%r11, (%rsp)
	movq	%r14, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$5, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%r15, 40(%rsp)
	movq	$0, 48(%rsp)
	movl	%eax, -68(%rbp)         # 4-byte Spill
	movq	%r13, -80(%rbp)         # 8-byte Spill
	movl	%r10d, -84(%rbp)        # 4-byte Spill
	movl	%r12d, -88(%rbp)        # 4-byte Spill
	movl	%ebx, -92(%rbp)         # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.22, %rdi
	movabsq	$.L.str.18, %rsi
	callq	gimp_register_file_handler_mime
	movabsq	$.L.str.22, %rdi
	movabsq	$.L.str.19, %rsi
	movabsq	$.L.str.20, %rdx
	movl	%eax, -96(%rbp)         # 4-byte Spill
	callq	gimp_register_save_handler
	movl	%eax, -100(%rbp)        # 4-byte Spill
	addq	$120, %rsp
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	$3, -48(%rbp)
	movl	$0, -60(%rbp)
	movq	$0, -72(%rbp)
	movq	-24(%rbp), %rcx
	movl	8(%rcx), %esi
	movl	%esi, -44(%rbp)
	movl	%esi, l_run_mode
# BB#1:                                 # %do.body
	callq	gimp_locale_directory
	movabsq	$.L.str.26, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.26, %rdi
	movabsq	$.L.str.27, %rsi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.26, %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	textdomain
	movq	%rax, -96(%rbp)         # 8-byte Spill
# BB#2:                                 # %do.end
	movabsq	$run.values, %rax
	movq	-32(%rbp), %rcx
	movl	$1, (%rcx)
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	$21, run.values
	movl	$0, run.values+8
	movq	-8(%rbp), %rdi
	movl	$.L.str.11, %edx
	movl	%edx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_20
# BB#3:                                 # %if.then
	movl	-44(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	je	.LBB1_4
	jmp	.LBB1_49
.LBB1_49:                               # %if.then
	movl	-100(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
	je	.LBB1_7
	jmp	.LBB1_50
.LBB1_50:                               # %if.then
	movl	-100(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
	je	.LBB1_10
	jmp	.LBB1_11
.LBB1_4:                                # %sw.bb
	movabsq	$.L.str.11, %rdi
	movabsq	$plvals, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movl	%eax, -112(%rbp)        # 4-byte Spill
	callq	load_dialog
	cmpl	$0, %eax
	jne	.LBB1_6
# BB#5:                                 # %if.then.7
	movl	$4, -48(%rbp)
.LBB1_6:                                # %if.end
	jmp	.LBB1_12
.LBB1_7:                                # %sw.bb.8
	cmpl	$3, -12(%rbp)
	je	.LBB1_9
# BB#8:                                 # %if.then.10
	movl	$1, -48(%rbp)
.LBB1_9:                                # %if.end.11
	jmp	.LBB1_12
.LBB1_10:                               # %sw.bb.12
	movabsq	$.L.str.11, %rdi
	movabsq	$plvals, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movl	%eax, -116(%rbp)        # 4-byte Spill
	jmp	.LBB1_12
.LBB1_11:                               # %sw.default
	jmp	.LBB1_12
.LBB1_12:                               # %sw.epilog
	cmpl	$3, -48(%rbp)
	jne	.LBB1_19
# BB#13:                                # %if.then.15
	callq	check_load_vals
	leaq	-72(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	48(%rax), %rdi
	callq	load_image
	movl	%eax, -52(%rbp)
	callq	show_fits_errors
	cmpl	$-1, -52(%rbp)
	je	.LBB1_15
# BB#14:                                # %if.then.20
	movq	-32(%rbp), %rax
	movl	$2, (%rax)
	movl	$13, run.values+40
	movl	-52(%rbp), %ecx
	movl	%ecx, run.values+48
	jmp	.LBB1_16
.LBB1_15:                               # %if.else
	movl	$0, -48(%rbp)
.LBB1_16:                               # %if.end.21
	cmpl	$3, -48(%rbp)
	jne	.LBB1_18
# BB#17:                                # %if.then.23
	movabsq	$.L.str.11, %rdi
	movabsq	$plvals, %rax
	movl	$12, %edx
	movq	%rax, %rsi
	callq	gimp_procedural_db_set_data
	movl	%eax, -120(%rbp)        # 4-byte Spill
.LBB1_18:                               # %if.end.25
	jmp	.LBB1_19
.LBB1_19:                               # %if.end.26
	jmp	.LBB1_42
.LBB1_20:                               # %if.else.27
	movq	-8(%rbp), %rdi
	movl	$.L.str.22, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_40
# BB#21:                                # %if.then.30
	movq	-24(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -52(%rbp)
	movq	-24(%rbp), %rax
	movl	88(%rax), %ecx
	movl	%ecx, -56(%rbp)
	movl	-44(%rbp), %ecx
	orl	$2, %ecx
	subl	$2, %ecx
	movl	%ecx, -124(%rbp)        # 4-byte Spill
	je	.LBB1_22
	jmp	.LBB1_25
.LBB1_22:                               # %sw.bb.37
	movabsq	$.L.str.28, %rdi
	xorl	%esi, %esi
	callq	gimp_ui_init
	leaq	-52(%rbp), %rdi
	leaq	-56(%rbp), %rsi
	movabsq	$.L.str.29, %rdx
	movl	$7, %ecx
	callq	gimp_export_image
	movl	%eax, -60(%rbp)
	cmpl	$0, -60(%rbp)
	jne	.LBB1_24
# BB#23:                                # %if.then.40
	movl	$4, run.values+8
	jmp	.LBB1_46
.LBB1_24:                               # %if.end.41
	jmp	.LBB1_26
.LBB1_25:                               # %sw.default.42
	jmp	.LBB1_26
.LBB1_26:                               # %sw.epilog.43
	movl	-44(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -128(%rbp)        # 4-byte Spill
	je	.LBB1_27
	jmp	.LBB1_47
.LBB1_47:                               # %sw.epilog.43
	movl	-128(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -132(%rbp)        # 4-byte Spill
	je	.LBB1_28
	jmp	.LBB1_48
.LBB1_48:                               # %sw.epilog.43
	movl	-128(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -136(%rbp)        # 4-byte Spill
	je	.LBB1_31
	jmp	.LBB1_32
.LBB1_27:                               # %sw.bb.44
	jmp	.LBB1_33
.LBB1_28:                               # %sw.bb.45
	cmpl	$5, -12(%rbp)
	je	.LBB1_30
# BB#29:                                # %if.then.47
	movl	$1, -48(%rbp)
.LBB1_30:                               # %if.end.48
	jmp	.LBB1_33
.LBB1_31:                               # %sw.bb.49
	jmp	.LBB1_33
.LBB1_32:                               # %sw.default.50
	jmp	.LBB1_33
.LBB1_33:                               # %sw.epilog.51
	cmpl	$3, -48(%rbp)
	jne	.LBB1_37
# BB#34:                                # %if.then.53
	leaq	-72(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	128(%rax), %rdi
	movl	-52(%rbp), %esi
	movl	-56(%rbp), %edx
	callq	save_image
	cmpl	$0, %eax
	jne	.LBB1_36
# BB#35:                                # %if.then.59
	movl	$0, -48(%rbp)
.LBB1_36:                               # %if.end.60
	jmp	.LBB1_37
.LBB1_37:                               # %if.end.61
	cmpl	$2, -60(%rbp)
	jne	.LBB1_39
# BB#38:                                # %if.then.63
	movl	-52(%rbp), %edi
	callq	gimp_image_delete
	movl	%eax, -140(%rbp)        # 4-byte Spill
.LBB1_39:                               # %if.end.65
	jmp	.LBB1_41
.LBB1_40:                               # %if.else.66
	movl	$1, -48(%rbp)
.LBB1_41:                               # %if.end.67
	jmp	.LBB1_42
.LBB1_42:                               # %if.end.68
	cmpl	$3, -48(%rbp)
	je	.LBB1_45
# BB#43:                                # %land.lhs.true
	cmpq	$0, -72(%rbp)
	je	.LBB1_45
# BB#44:                                # %if.then.71
	movq	-32(%rbp), %rax
	movl	$2, (%rax)
	movl	$4, run.values+40
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, run.values+48
.LBB1_45:                               # %if.end.72
	movl	-48(%rbp), %eax
	movl	%eax, run.values+8
.LBB1_46:                               # %return
	addq	$144, %rsp
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
	.type	load_dialog,@function
load_dialog:                            # @load_dialog
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
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$320, %rsp              # imm = 0x140
.Ltmp17:
	.cfi_offset %rbx, -48
.Ltmp18:
	.cfi_offset %r12, -40
.Ltmp19:
	.cfi_offset %r14, -32
.Ltmp20:
	.cfi_offset %r15, -24
	movabsq	$.L.str.28, %rdi
	xorl	%esi, %esi
	callq	gimp_ui_init
	movabsq	$.L.str.30, %rdi
	callq	gettext
	movabsq	$.L.str.31, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	movabsq	$gimp_standard_help_func, %r8
	movabsq	$.L.str.11, %r9
	movabsq	$.L.str.32, %rdi
	movl	$4294967290, %r10d      # imm = 0xFFFFFFFA
	movabsq	$.L.str.33, %r11
	movl	$4294967291, %ebx       # imm = 0xFFFFFFFB
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$-6, 8(%rsp)
	movq	%r11, 16(%rsp)
	movl	$-5, 24(%rsp)
	movq	$0, 32(%rsp)
	movb	$0, %al
	movl	%ebx, -76(%rbp)         # 4-byte Spill
	movl	%r10d, -80(%rbp)        # 4-byte Spill
	callq	gimp_dialog_new
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	movq	-40(%rbp), %rdi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_window_set_resizable
	movq	-40(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_window_set_transient
	movl	$1, %edi
	movl	$12, %esi
	callq	gtk_box_new
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-40(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
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
	movabsq	$.L.str.34, %rdi
	callq	gettext
	movabsq	$.L.str.35, %rdi
	movl	plvals, %r8d
	movq	%rax, -136(%rbp)        # 8-byte Spill
	movl	%r8d, -140(%rbp)        # 4-byte Spill
	callq	gettext
	movabsq	$.L.str.36, %rdi
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$1, %edi
	movabsq	$gimp_radio_button_update, %rsi
	movabsq	$plvals, %r9
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r11d
	movl	$255, %edx
	movq	-136(%rbp), %r14        # 8-byte Reload
	movq	%rsi, -160(%rbp)        # 8-byte Spill
	movq	%r14, %rsi
	movq	-160(%rbp), %r15        # 8-byte Reload
	movl	%edx, -164(%rbp)        # 4-byte Spill
	movq	%r15, %rdx
	movl	%ecx, -168(%rbp)        # 4-byte Spill
	movq	%r9, %rcx
	movl	-140(%rbp), %r8d        # 4-byte Reload
	movq	-152(%rbp), %r9         # 8-byte Reload
	movl	$0, (%rsp)
	movq	$0, 8(%rsp)
	movq	%rax, 16(%rsp)
	movl	$255, 24(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 40(%rsp)
	movb	$0, %al
	movq	%r11, -176(%rbp)        # 8-byte Spill
	callq	gimp_int_radio_group_new
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r8d, %r8d
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r8d, %edx
	movl	%r8d, %ecx
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.37, %rdi
	callq	gettext
	movabsq	$.L.str.38, %rdi
	movl	plvals+4, %r8d
	movq	%rax, -192(%rbp)        # 8-byte Spill
	movl	%r8d, -196(%rbp)        # 4-byte Spill
	callq	gettext
	movabsq	$.L.str.39, %rdi
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$1, %edi
	movabsq	$gimp_radio_button_update, %rsi
	movabsq	$plvals, %r9
	addq	$4, %r9
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r11d
	movq	-192(%rbp), %r14        # 8-byte Reload
	movq	%rsi, -216(%rbp)        # 8-byte Spill
	movq	%r14, %rsi
	movq	-216(%rbp), %rdx        # 8-byte Reload
	movl	%ecx, -220(%rbp)        # 4-byte Spill
	movq	%r9, %rcx
	movl	-196(%rbp), %r8d        # 4-byte Reload
	movq	-208(%rbp), %r9         # 8-byte Reload
	movl	$0, (%rsp)
	movq	$0, 8(%rsp)
	movq	%rax, 16(%rsp)
	movl	$1, 24(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 40(%rsp)
	movb	$0, %al
	movq	%r11, -232(%rbp)        # 8-byte Spill
	callq	gimp_int_radio_group_new
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r8d, %r8d
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r8d, %edx
	movl	%r8d, %ecx
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.40, %rdi
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movabsq	$.L.str.41, %rsi
	movl	$10, %ecx
	movl	%ecx, %edx
	movl	plvals+8, %r8d
	movq	%rax, -248(%rbp)        # 8-byte Spill
	movl	%r8d, -252(%rbp)        # 4-byte Spill
	callq	g_dpgettext
	movl	$1, %edi
	movabsq	$gimp_radio_button_update, %rdx
	movabsq	$plvals, %rsi
	addq	$8, %rsi
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movl	%r8d, %r9d
	movabsq	$.L.str.42, %r11
	movq	-248(%rbp), %r14        # 8-byte Reload
	movq	%rsi, -264(%rbp)        # 8-byte Spill
	movq	%r14, %rsi
	movq	-264(%rbp), %r15        # 8-byte Reload
	movl	%ecx, -268(%rbp)        # 4-byte Spill
	movq	%r15, %rcx
	movl	-252(%rbp), %r8d        # 4-byte Reload
	movq	%r9, -280(%rbp)         # 8-byte Spill
	movq	%rax, %r9
	movl	$0, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r11, 16(%rsp)
	movl	$1, 24(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 40(%rsp)
	movb	$0, %al
	callq	gimp_int_radio_group_new
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r8d, %r8d
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r8d, %edx
	movl	%r8d, %ecx
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movq	-40(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gimp_dialog_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dialog_run
	cmpl	$-5, %eax
	sete	%r12b
	andb	$1, %r12b
	movzbl	%r12b, %eax
	movl	%eax, -60(%rbp)
	movq	-40(%rbp), %rdi
	callq	gtk_widget_destroy
	movl	-60(%rbp), %eax
	addq	$320, %rsp              # imm = 0x140
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	load_dialog, .Lfunc_end3-load_dialog
	.cfi_endproc

	.align	16, 0x90
	.type	check_load_vals,@function
check_load_vals:                        # @check_load_vals
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
	cmpl	$255, plvals
	jle	.LBB4_2
# BB#1:                                 # %if.then
	movl	$255, plvals
.LBB4_2:                                # %if.end
	popq	%rbp
	retq
.Lfunc_end4:
	.size	check_load_vals, .Lfunc_end4-check_load_vals
	.cfi_endproc

	.align	16, 0x90
	.type	load_image,@function
load_image:                             # @load_image
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
	subq	$192, %rsp
	movabsq	$.L.str.43, %rax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rax, %rsi
	callq	fopen
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB5_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rdi
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	callq	g_file_error_quark
	movl	%eax, -108(%rbp)        # 4-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_file_error_from_errno
	movabsq	$.L.str.44, %rdi
	movl	%eax, -112(%rbp)        # 4-byte Spill
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_strerror
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movl	-108(%rbp), %esi        # 4-byte Reload
	movl	-112(%rbp), %edx        # 4-byte Reload
	movq	-120(%rbp), %rcx        # 8-byte Reload
	movq	-128(%rbp), %r8         # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	g_set_error
	movl	$-1, -4(%rbp)
	jmp	.LBB5_35
.LBB5_2:                                # %if.end
	movq	-80(%rbp), %rdi
	callq	fclose
	movabsq	$.L.str.45, %rsi
	movq	-16(%rbp), %rdi
	movl	%eax, -132(%rbp)        # 4-byte Spill
	callq	fits_open
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB5_4
# BB#3:                                 # %if.then.10
	movq	-24(%rbp), %rdi
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	callq	g_file_error_quark
	movabsq	$.L.str.47, %rdi
	movl	%eax, -148(%rbp)        # 4-byte Spill
	callq	gettext
	movl	$24, %edx
	movabsq	$.L.str.46, %rcx
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movl	-148(%rbp), %esi        # 4-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_set_error
	movl	$-1, -4(%rbp)
	jmp	.LBB5_35
.LBB5_4:                                # %if.end.13
	movq	-88(%rbp), %rax
	cmpl	$0, 16(%rax)
	jg	.LBB5_6
# BB#5:                                 # %if.then.15
	movq	-24(%rbp), %rdi
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	callq	g_file_error_quark
	movabsq	$.L.str.48, %rdi
	movl	%eax, -164(%rbp)        # 4-byte Spill
	callq	gettext
	movl	$24, %edx
	movabsq	$.L.str.46, %rcx
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movl	-164(%rbp), %esi        # 4-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_set_error
	movq	-88(%rbp), %rdi
	callq	fits_close
	movl	$-1, -4(%rbp)
	jmp	.LBB5_35
.LBB5_6:                                # %if.end.18
	movl	$10, %eax
	movl	%eax, %edi
	movl	$4, %eax
	movl	%eax, %esi
	callq	g_malloc_n
	movq	%rax, -40(%rbp)
	movl	$0, -60(%rbp)
	movl	$10, -64(%rbp)
	movl	$1, -52(%rbp)
.LBB5_7:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-52(%rbp), %eax
	movq	-88(%rbp), %rcx
	cmpl	16(%rcx), %eax
	ja	.LBB5_25
# BB#8:                                 # %for.body
                                        #   in Loop: Header=BB5_7 Depth=1
	leaq	-68(%rbp), %rdx
	movq	-88(%rbp), %rdi
	movl	-52(%rbp), %esi
	callq	fits_image_info
	movq	%rax, -96(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.LBB5_10
# BB#9:                                 # %if.then.24
	jmp	.LBB5_25
.LBB5_10:                               # %if.end.25
                                        #   in Loop: Header=BB5_7 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, plvals+8
	movb	%cl, -165(%rbp)         # 1-byte Spill
	je	.LBB5_15
# BB#11:                                # %land.lhs.true
                                        #   in Loop: Header=BB5_7 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$1, -68(%rbp)
	movb	%cl, -165(%rbp)         # 1-byte Spill
	jne	.LBB5_15
# BB#12:                                # %land.lhs.true.28
                                        #   in Loop: Header=BB5_7 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-96(%rbp), %rdx
	cmpl	$3, 10320(%rdx)
	movb	%cl, -165(%rbp)         # 1-byte Spill
	jne	.LBB5_15
# BB#13:                                # %land.lhs.true.30
                                        #   in Loop: Header=BB5_7 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-96(%rbp), %rdx
	cmpl	$1, 10332(%rdx)
	movb	%cl, -165(%rbp)         # 1-byte Spill
	jle	.LBB5_15
# BB#14:                                # %land.rhs
                                        #   in Loop: Header=BB5_7 Depth=1
	movq	-96(%rbp), %rax
	cmpl	$4, 10332(%rax)
	setle	%cl
	movb	%cl, -165(%rbp)         # 1-byte Spill
.LBB5_15:                               # %land.end
                                        #   in Loop: Header=BB5_7 Depth=1
	movb	-165(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB5_17
# BB#16:                                # %if.then.36
                                        #   in Loop: Header=BB5_7 Depth=1
	movq	-96(%rbp), %rax
	movl	10332(%rax), %ecx
	movl	%ecx, -72(%rbp)
	jmp	.LBB5_18
.LBB5_17:                               # %if.else
                                        #   in Loop: Header=BB5_7 Depth=1
	movl	$1, -72(%rbp)
.LBB5_18:                               # %if.end.39
                                        #   in Loop: Header=BB5_7 Depth=1
	movq	-16(%rbp), %rdi
	movq	-88(%rbp), %rsi
	movl	-52(%rbp), %edx
	movl	-72(%rbp), %ecx
	callq	load_fits
	movl	%eax, -28(%rbp)
	callq	show_fits_errors
	cmpl	$-1, -28(%rbp)
	jne	.LBB5_20
# BB#19:                                # %if.then.42
	jmp	.LBB5_25
.LBB5_20:                               # %if.end.43
                                        #   in Loop: Header=BB5_7 Depth=1
	movl	-60(%rbp), %eax
	cmpl	-64(%rbp), %eax
	jne	.LBB5_24
# BB#21:                                # %if.then.45
                                        #   in Loop: Header=BB5_7 Depth=1
	movq	-40(%rbp), %rax
	movl	-64(%rbp), %ecx
	addl	$10, %ecx
	movslq	%ecx, %rdx
	shlq	$2, %rdx
	movq	%rax, %rdi
	movq	%rdx, %rsi
	callq	g_realloc
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB5_23
# BB#22:                                # %if.then.49
	jmp	.LBB5_25
.LBB5_23:                               # %if.end.50
                                        #   in Loop: Header=BB5_7 Depth=1
	movq	-48(%rbp), %rax
	movq	%rax, -40(%rbp)
	movl	-64(%rbp), %ecx
	addl	$10, %ecx
	movl	%ecx, -64(%rbp)
.LBB5_24:                               # %if.end.52
                                        #   in Loop: Header=BB5_7 Depth=1
	movl	-28(%rbp), %eax
	movl	-60(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -60(%rbp)
	movslq	%ecx, %rsi
	movq	-40(%rbp), %rdi
	movl	%eax, (%rdi,%rsi,4)
	movl	-72(%rbp), %eax
	addl	-52(%rbp), %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB5_7
.LBB5_25:                               # %for.end
	callq	show_fits_errors
	movq	-88(%rbp), %rdi
	callq	fits_close
	cmpl	$1, l_run_mode
	je	.LBB5_31
# BB#26:                                # %if.then.57
	movl	-60(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -56(%rbp)
.LBB5_27:                               # %for.cond.58
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$1, -56(%rbp)
	jl	.LBB5_30
# BB#28:                                # %for.body.61
                                        #   in Loop: Header=BB5_27 Depth=1
	movslq	-56(%rbp), %rax
	movq	-40(%rbp), %rcx
	movl	(%rcx,%rax,4), %edi
	callq	gimp_image_undo_enable
	movslq	-56(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movl	(%rdx,%rcx,4), %edi
	movl	%eax, -172(%rbp)        # 4-byte Spill
	callq	gimp_image_clean_all
	movslq	-56(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movl	(%rdx,%rcx,4), %edi
	movl	%eax, -176(%rbp)        # 4-byte Spill
	callq	gimp_display_new
	movl	%eax, -180(%rbp)        # 4-byte Spill
# BB#29:                                # %for.inc
                                        #   in Loop: Header=BB5_27 Depth=1
	movl	-56(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB5_27
.LBB5_30:                               # %for.end.71
	jmp	.LBB5_31
.LBB5_31:                               # %if.end.72
	cmpl	$0, -60(%rbp)
	jle	.LBB5_33
# BB#32:                                # %cond.true
	movq	-40(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -184(%rbp)        # 4-byte Spill
	jmp	.LBB5_34
.LBB5_33:                               # %cond.false
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, -184(%rbp)        # 4-byte Spill
	jmp	.LBB5_34
.LBB5_34:                               # %cond.end
	movl	-184(%rbp), %eax        # 4-byte Reload
	movl	%eax, -28(%rbp)
	movq	-40(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_free
	movl	-28(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB5_35:                               # %return
	movl	-4(%rbp), %eax
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	load_image, .Lfunc_end5-load_image
	.cfi_endproc

	.align	16, 0x90
	.type	show_fits_errors,@function
show_fits_errors:                       # @show_fits_errors
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
	subq	$16, %rsp
.LBB6_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	callq	fits_get_error
	movq	%rax, -8(%rbp)
	cmpq	$0, %rax
	je	.LBB6_3
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB6_1 Depth=1
	movabsq	$.L.str.46, %rdi
	movq	-8(%rbp), %rsi
	movb	$0, %al
	callq	g_message
	jmp	.LBB6_1
.LBB6_3:                                # %while.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	show_fits_errors, .Lfunc_end6-show_fits_errors
	.cfi_endproc

	.align	16, 0x90
	.type	save_image,@function
save_image:                             # @save_image
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
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	-24(%rbp), %edi
	callq	gimp_drawable_type
	movl	%eax, -44(%rbp)
	movl	-24(%rbp), %edi
	callq	gimp_drawable_has_alpha
	cmpl	$0, %eax
	je	.LBB7_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	callq	g_file_error_quark
	movabsq	$.L.str.52, %rdi
	movl	%eax, -60(%rbp)         # 4-byte Spill
	callq	gettext
	movl	$24, %edx
	movabsq	$.L.str.46, %rcx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movl	-60(%rbp), %esi         # 4-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_set_error
	movl	$0, -4(%rbp)
	jmp	.LBB7_12
.LBB7_2:                                # %if.end
	movl	-44(%rbp), %eax
	subl	$5, %eax
	movl	%eax, -64(%rbp)         # 4-byte Spill
	ja	.LBB7_4
	jmp	.LBB7_3
.LBB7_3:                                # %sw.bb
	jmp	.LBB7_5
.LBB7_4:                                # %sw.default
	movabsq	$.L.str.53, %rdi
	callq	gettext
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_message
	movl	$0, -4(%rbp)
	jmp	.LBB7_12
.LBB7_5:                                # %sw.epilog
	movabsq	$.L.str.54, %rsi
	movq	-16(%rbp), %rdi
	callq	fits_open
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB7_7
# BB#6:                                 # %if.then.8
	movq	-32(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	g_file_error_quark
	movl	%eax, -76(%rbp)         # 4-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_file_error_from_errno
	movabsq	$.L.str.55, %rdi
	movl	%eax, -80(%rbp)         # 4-byte Spill
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_strerror
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movl	-76(%rbp), %esi         # 4-byte Reload
	movl	-80(%rbp), %edx         # 4-byte Reload
	movq	-88(%rbp), %rcx         # 8-byte Reload
	movq	-96(%rbp), %r8          # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	g_set_error
	movl	$0, -4(%rbp)
	jmp	.LBB7_12
.LBB7_7:                                # %if.end.16
	movabsq	$.L.str.56, %rdi
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	gimp_progress_init_printf
	cmpl	$4, -44(%rbp)
	movl	%eax, -108(%rbp)        # 4-byte Spill
	je	.LBB7_9
# BB#8:                                 # %lor.lhs.false
	cmpl	$5, -44(%rbp)
	jne	.LBB7_10
.LBB7_9:                                # %if.then.21
	movq	-40(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	callq	save_index
	movl	%eax, -48(%rbp)
	jmp	.LBB7_11
.LBB7_10:                               # %if.else
	movq	-40(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	callq	save_direct
	movl	%eax, -48(%rbp)
.LBB7_11:                               # %if.end.24
	movq	-40(%rbp), %rdi
	callq	fits_close
	movl	-48(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB7_12:                               # %return
	movl	-4(%rbp), %eax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	save_image, .Lfunc_end7-save_image
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI8_0:
	.quad	4643176031446892544     # double 255
.LCPI8_1:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	load_fits,@function
load_fits:                              # @load_fits
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
	pushq	%rbx
	subq	$328, %rsp              # imm = 0x148
.Ltmp36:
	.cfi_offset %rbx, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movl	%ecx, -40(%rbp)
	movl	$0, -204(%rbp)
	movq	-32(%rbp), %rdi
	movl	-36(%rbp), %esi
	callq	fits_seek_image
	movq	%rax, -216(%rbp)
	cmpq	$0, -216(%rbp)
	jne	.LBB8_2
# BB#1:                                 # %if.then
	movl	$-1, -12(%rbp)
	jmp	.LBB8_72
.LBB8_2:                                # %if.end
	movq	-216(%rbp), %rax
	movl	10324(%rax), %ecx
	movl	%ecx, -84(%rbp)
	movq	-216(%rbp), %rax
	movl	10328(%rax), %ecx
	movl	%ecx, -88(%rbp)
	cmpl	$2, -40(%rbp)
	jne	.LBB8_4
# BB#3:                                 # %if.then.4
	movl	$1, -196(%rbp)
	movl	$3, -200(%rbp)
	jmp	.LBB8_11
.LBB8_4:                                # %if.else
	cmpl	$3, -40(%rbp)
	jne	.LBB8_6
# BB#5:                                 # %if.then.6
	movl	$0, -196(%rbp)
	movl	$0, -200(%rbp)
	jmp	.LBB8_10
.LBB8_6:                                # %if.else.7
	cmpl	$4, -40(%rbp)
	jne	.LBB8_8
# BB#7:                                 # %if.then.9
	movl	$0, -196(%rbp)
	movl	$1, -200(%rbp)
	jmp	.LBB8_9
.LBB8_8:                                # %if.else.10
	movl	$1, -40(%rbp)
	movl	$1, -196(%rbp)
	movl	$2, -200(%rbp)
.LBB8_9:                                # %if.end.11
	jmp	.LBB8_10
.LBB8_10:                               # %if.end.12
	jmp	.LBB8_11
.LBB8_11:                               # %if.end.13
	leaq	-132(%rbp), %rax
	leaq	-192(%rbp), %rcx
	leaq	-184(%rbp), %rdx
	movq	-24(%rbp), %rdi
	movl	-36(%rbp), %esi
	movl	-84(%rbp), %r8d
	movl	-88(%rbp), %r9d
	movl	-196(%rbp), %r10d
	movl	-200(%rbp), %r11d
	movq	%rdx, -272(%rbp)        # 8-byte Spill
	movl	%r8d, %edx
	movq	%rcx, -280(%rbp)        # 8-byte Spill
	movl	%r9d, %ecx
	movl	%r10d, %r8d
	movl	%r11d, %r9d
	movq	%rax, (%rsp)
	movq	-280(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	-272(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, 16(%rsp)
	callq	create_new_image
	movl	%eax, -136(%rbp)
	callq	gimp_tile_height
	movl	%eax, -92(%rbp)
	movl	-92(%rbp), %eax
	imull	-84(%rbp), %eax
	imull	-40(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %edi
	callq	g_malloc
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB8_13
# BB#12:                                # %if.then.20
	movl	$-1, -12(%rbp)
	jmp	.LBB8_72
.LBB8_13:                               # %if.end.21
	movq	-64(%rbp), %rax
	movl	-92(%rbp), %ecx
	imull	-84(%rbp), %ecx
	imull	-40(%rbp), %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edx
	addq	%rdx, %rax
	movq	%rax, -72(%rbp)
	cmpl	$0, plvals+4
	je	.LBB8_22
# BB#14:                                # %land.lhs.true
	movq	-216(%rbp), %rax
	movsbl	10287(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB8_22
# BB#15:                                # %land.lhs.true.26
	movq	-216(%rbp), %rax
	movsbl	10288(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB8_22
# BB#16:                                # %land.lhs.true.30
	movq	-216(%rbp), %rax
	movsbl	10293(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB8_22
# BB#17:                                # %land.lhs.true.34
	movq	-216(%rbp), %rax
	movsbl	10294(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB8_22
# BB#18:                                # %if.then.38
	movq	-216(%rbp), %rax
	movsd	14336(%rax), %xmm0      # xmm0 = mem[0],zero
	movq	-216(%rbp), %rax
	subsd	14448(%rax), %xmm0
	movq	-216(%rbp), %rax
	divsd	14456(%rax), %xmm0
	movsd	%xmm0, -120(%rbp)
	movq	-216(%rbp), %rax
	movsd	14344(%rax), %xmm0      # xmm0 = mem[0],zero
	movq	-216(%rbp), %rax
	subsd	14448(%rax), %xmm0
	movq	-216(%rbp), %rax
	divsd	14456(%rax), %xmm0
	movsd	%xmm0, -128(%rbp)
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-128(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB8_20
# BB#19:                                # %if.then.49
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -264(%rbp)
	movsd	-128(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -256(%rbp)
	jmp	.LBB8_21
.LBB8_20:                               # %if.else.50
	movsd	-128(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -264(%rbp)
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -256(%rbp)
.LBB8_21:                               # %if.end.53
	jmp	.LBB8_23
.LBB8_22:                               # %if.else.54
	movq	-216(%rbp), %rax
	movsd	10304(%rax), %xmm0      # xmm0 = mem[0],zero
	movsd	%xmm0, -264(%rbp)
	movq	-216(%rbp), %rax
	movsd	10312(%rax), %xmm0      # xmm0 = mem[0],zero
	movsd	%xmm0, -256(%rbp)
.LBB8_23:                               # %if.end.59
	movsd	.LCPI8_0, %xmm0         # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movsd	%xmm1, -248(%rbp)
	movsd	%xmm0, -240(%rbp)
	cvtsi2sdl	plvals, %xmm0
	movsd	%xmm0, -232(%rbp)
	movb	$99, -224(%rbp)
	cmpl	$1, -40(%rbp)
	jne	.LBB8_38
# BB#24:                                # %if.then.65
	movq	-64(%rbp), %rax
	movl	-92(%rbp), %ecx
	imull	-84(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -48(%rbp)
	movl	$0, -96(%rbp)
	movl	$0, -100(%rbp)
.LBB8_25:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-100(%rbp), %eax
	cmpl	-88(%rbp), %eax
	jge	.LBB8_37
# BB#26:                                # %for.body
                                        #   in Loop: Header=BB8_25 Depth=1
	leaq	-264(%rbp), %rcx
	xorl	%eax, %eax
	movl	%eax, %edx
	movl	-84(%rbp), %eax
	movq	-48(%rbp), %rsi
	movslq	%eax, %rdi
	subq	%rdi, %rdx
	addq	%rdx, %rsi
	movq	%rsi, -48(%rbp)
	movq	-32(%rbp), %rdi
	movq	-216(%rbp), %rsi
	movl	-84(%rbp), %edx
	movq	-48(%rbp), %r8
	callq	fits_read_pixel
	cmpl	-84(%rbp), %eax
	je	.LBB8_28
# BB#27:                                # %if.then.76
	movl	$1, -204(%rbp)
	jmp	.LBB8_37
.LBB8_28:                               # %if.end.77
                                        #   in Loop: Header=BB8_25 Depth=1
	movl	$20, %eax
	movl	-96(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -96(%rbp)
	movl	-100(%rbp), %ecx
	movl	%eax, -284(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-284(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB8_30
# BB#29:                                # %if.then.80
                                        #   in Loop: Header=BB8_25 Depth=1
	movl	-100(%rbp), %eax
	addl	$1, %eax
	cvtsi2sdl	%eax, %xmm0
	cvtsi2sdl	-88(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -288(%rbp)        # 4-byte Spill
.LBB8_30:                               # %if.end.85
                                        #   in Loop: Header=BB8_25 Depth=1
	movl	-96(%rbp), %eax
	cmpl	-92(%rbp), %eax
	je	.LBB8_32
# BB#31:                                # %lor.lhs.false
                                        #   in Loop: Header=BB8_25 Depth=1
	movl	-100(%rbp), %eax
	addl	$1, %eax
	cmpl	-88(%rbp), %eax
	jne	.LBB8_33
.LBB8_32:                               # %if.then.91
                                        #   in Loop: Header=BB8_25 Depth=1
	leaq	-184(%rbp), %rdi
	xorl	%edx, %edx
	movq	-48(%rbp), %rsi
	movl	-88(%rbp), %eax
	subl	-100(%rbp), %eax
	subl	$1, %eax
	movl	-84(%rbp), %r8d
	movl	-96(%rbp), %r9d
	movl	%eax, %ecx
	callq	gimp_pixel_rgn_set_rect
	movl	$0, -96(%rbp)
	movq	-64(%rbp), %rsi
	movl	-92(%rbp), %eax
	imull	-84(%rbp), %eax
	movslq	%eax, %rdi
	addq	%rdi, %rsi
	movq	%rsi, -48(%rbp)
.LBB8_33:                               # %if.end.97
                                        #   in Loop: Header=BB8_25 Depth=1
	cmpl	$0, -204(%rbp)
	je	.LBB8_35
# BB#34:                                # %if.then.99
	jmp	.LBB8_37
.LBB8_35:                               # %if.end.100
                                        #   in Loop: Header=BB8_25 Depth=1
	jmp	.LBB8_36
.LBB8_36:                               # %for.inc
                                        #   in Loop: Header=BB8_25 Depth=1
	movl	-100(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -100(%rbp)
	jmp	.LBB8_25
.LBB8_37:                               # %for.end
	jmp	.LBB8_66
.LBB8_38:                               # %if.else.102
	movslq	-84(%rbp), %rdi
	callq	g_malloc
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB8_40
# BB#39:                                # %if.then.107
	movl	$-1, -12(%rbp)
	jmp	.LBB8_72
.LBB8_40:                               # %if.end.108
	movl	$0, -108(%rbp)
.LBB8_41:                               # %for.cond.109
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_43 Depth 2
                                        #       Child Loop BB8_52 Depth 3
	movl	-108(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jae	.LBB8_65
# BB#42:                                # %for.body.112
                                        #   in Loop: Header=BB8_41 Depth=1
	movq	-64(%rbp), %rax
	movl	-92(%rbp), %ecx
	imull	-84(%rbp), %ecx
	imull	-40(%rbp), %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edx
	addq	%rdx, %rax
	movslq	-108(%rbp), %rdx
	addq	%rdx, %rax
	movq	%rax, -48(%rbp)
	movl	$0, -96(%rbp)
	movl	$0, -100(%rbp)
.LBB8_43:                               # %for.cond.119
                                        #   Parent Loop BB8_41 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB8_52 Depth 3
	movl	-100(%rbp), %eax
	cmpl	-88(%rbp), %eax
	jge	.LBB8_63
# BB#44:                                # %for.body.122
                                        #   in Loop: Header=BB8_43 Depth=2
	cmpl	$0, -108(%rbp)
	jle	.LBB8_49
# BB#45:                                # %land.lhs.true.125
                                        #   in Loop: Header=BB8_43 Depth=2
	movl	-100(%rbp), %eax
	cltd
	idivl	-92(%rbp)
	cmpl	$0, %edx
	jne	.LBB8_49
# BB#46:                                # %if.then.129
                                        #   in Loop: Header=BB8_43 Depth=2
	movl	-92(%rbp), %eax
	movl	%eax, -112(%rbp)
	movl	-100(%rbp), %eax
	addl	-92(%rbp), %eax
	cmpl	-88(%rbp), %eax
	jle	.LBB8_48
# BB#47:                                # %if.then.133
                                        #   in Loop: Header=BB8_43 Depth=2
	movl	-88(%rbp), %eax
	subl	-100(%rbp), %eax
	movl	%eax, -112(%rbp)
.LBB8_48:                               # %if.end.135
                                        #   in Loop: Header=BB8_43 Depth=2
	leaq	-184(%rbp), %rdi
	xorl	%edx, %edx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-72(%rbp), %rsi
	movl	-112(%rbp), %eax
	imull	-84(%rbp), %eax
	imull	-40(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %r8d
	subq	%r8, %rcx
	addq	%rcx, %rsi
	movl	-88(%rbp), %eax
	subl	-100(%rbp), %eax
	subl	-112(%rbp), %eax
	movl	-84(%rbp), %r8d
	movl	-112(%rbp), %r9d
	movl	%eax, %ecx
	callq	gimp_pixel_rgn_get_rect
.LBB8_49:                               # %if.end.143
                                        #   in Loop: Header=BB8_43 Depth=2
	leaq	-264(%rbp), %rcx
	xorl	%eax, %eax
	movl	%eax, %edx
	movl	-84(%rbp), %eax
	imull	-40(%rbp), %eax
	movq	-48(%rbp), %rsi
	movl	%eax, %eax
	movl	%eax, %edi
	subq	%rdi, %rdx
	addq	%rdx, %rsi
	movq	%rsi, -48(%rbp)
	movq	-32(%rbp), %rdi
	movq	-216(%rbp), %rsi
	movl	-84(%rbp), %edx
	movq	-80(%rbp), %r8
	callq	fits_read_pixel
	cmpl	-84(%rbp), %eax
	je	.LBB8_51
# BB#50:                                # %if.then.151
                                        #   in Loop: Header=BB8_41 Depth=1
	movl	$1, -204(%rbp)
	jmp	.LBB8_63
.LBB8_51:                               # %if.end.152
                                        #   in Loop: Header=BB8_43 Depth=2
	movl	-84(%rbp), %eax
	movl	%eax, -104(%rbp)
	movq	-80(%rbp), %rcx
	movq	%rcx, -56(%rbp)
.LBB8_52:                               # %while.cond
                                        #   Parent Loop BB8_41 Depth=1
                                        #     Parent Loop BB8_43 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-104(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -104(%rbp)
	cmpl	$0, %eax
	je	.LBB8_54
# BB#53:                                # %while.body
                                        #   in Loop: Header=BB8_52 Depth=3
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -56(%rbp)
	movb	(%rax), %dl
	movq	-48(%rbp), %rax
	movb	%dl, (%rax)
	movl	-40(%rbp), %esi
	movq	-48(%rbp), %rax
	movl	%esi, %esi
	movl	%esi, %ecx
	addq	%rcx, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB8_52
.LBB8_54:                               # %while.end
                                        #   in Loop: Header=BB8_43 Depth=2
	movl	$20, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movl	-84(%rbp), %ecx
	imull	-40(%rbp), %ecx
	movq	-48(%rbp), %rsi
	movl	%ecx, %ecx
	movl	%ecx, %edi
	subq	%rdi, %rdx
	addq	%rdx, %rsi
	movq	%rsi, -48(%rbp)
	movl	-96(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -96(%rbp)
	movl	-100(%rbp), %ecx
	movl	%eax, -292(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-292(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB8_56
# BB#55:                                # %if.then.164
                                        #   in Loop: Header=BB8_43 Depth=2
	movl	-108(%rbp), %eax
	movl	-88(%rbp), %ecx
	imull	%ecx, %eax
	movl	-100(%rbp), %edx
	movl	%eax, %esi
	movl	%edx, %edi
	leal	1(%rsi,%rdi), %eax
	cvtsi2sdl	%eax, %xmm0
	movl	-40(%rbp), %eax
	imull	%eax, %ecx
	movl	%ecx, %esi
	cvtsi2sdq	%rsi, %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -296(%rbp)        # 4-byte Spill
.LBB8_56:                               # %if.end.173
                                        #   in Loop: Header=BB8_43 Depth=2
	movl	-96(%rbp), %eax
	cmpl	-92(%rbp), %eax
	je	.LBB8_58
# BB#57:                                # %lor.lhs.false.176
                                        #   in Loop: Header=BB8_43 Depth=2
	movl	-100(%rbp), %eax
	addl	$1, %eax
	cmpl	-88(%rbp), %eax
	jne	.LBB8_59
.LBB8_58:                               # %if.then.180
                                        #   in Loop: Header=BB8_43 Depth=2
	leaq	-184(%rbp), %rdi
	xorl	%edx, %edx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-48(%rbp), %rsi
	movslq	-108(%rbp), %r8
	subq	%r8, %rcx
	addq	%rcx, %rsi
	movl	-88(%rbp), %eax
	subl	-100(%rbp), %eax
	subl	$1, %eax
	movl	-84(%rbp), %r8d
	movl	-96(%rbp), %r9d
	movl	%eax, %ecx
	callq	gimp_pixel_rgn_set_rect
	movl	$0, -96(%rbp)
	movq	-64(%rbp), %rsi
	movl	-92(%rbp), %eax
	imull	-84(%rbp), %eax
	imull	-40(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %edi
	addq	%rdi, %rsi
	movslq	-108(%rbp), %rdi
	addq	%rdi, %rsi
	movq	%rsi, -48(%rbp)
.LBB8_59:                               # %if.end.192
                                        #   in Loop: Header=BB8_43 Depth=2
	cmpl	$0, -204(%rbp)
	je	.LBB8_61
# BB#60:                                # %if.then.194
                                        #   in Loop: Header=BB8_41 Depth=1
	jmp	.LBB8_63
.LBB8_61:                               # %if.end.195
                                        #   in Loop: Header=BB8_43 Depth=2
	jmp	.LBB8_62
.LBB8_62:                               # %for.inc.196
                                        #   in Loop: Header=BB8_43 Depth=2
	movl	-100(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -100(%rbp)
	jmp	.LBB8_43
.LBB8_63:                               # %for.end.198
                                        #   in Loop: Header=BB8_41 Depth=1
	jmp	.LBB8_64
.LBB8_64:                               # %for.inc.199
                                        #   in Loop: Header=BB8_41 Depth=1
	movl	-108(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -108(%rbp)
	jmp	.LBB8_41
.LBB8_65:                               # %for.end.201
	movq	-80(%rbp), %rdi
	callq	g_free
.LBB8_66:                               # %if.end.202
	movsd	.LCPI8_1, %xmm0         # xmm0 = mem[0],zero
	callq	gimp_progress_update
	movq	-64(%rbp), %rdi
	movl	%eax, -300(%rbp)        # 4-byte Spill
	callq	g_free
	cmpl	$0, -204(%rbp)
	je	.LBB8_68
# BB#67:                                # %if.then.205
	movabsq	$.L.str.49, %rdi
	callq	gettext
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_message
.LBB8_68:                               # %if.end.207
	movq	-192(%rbp), %rdi
	callq	gimp_drawable_flush
	cmpl	$0, -204(%rbp)
	je	.LBB8_70
# BB#69:                                # %cond.true
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, -304(%rbp)        # 4-byte Spill
	jmp	.LBB8_71
.LBB8_70:                               # %cond.false
	movl	-136(%rbp), %eax
	movl	%eax, -304(%rbp)        # 4-byte Spill
.LBB8_71:                               # %cond.end
	movl	-304(%rbp), %eax        # 4-byte Reload
	movl	%eax, -12(%rbp)
.LBB8_72:                               # %return
	movl	-12(%rbp), %eax
	addq	$328, %rsp              # imm = 0x148
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end8:
	.size	load_fits, .Lfunc_end8-load_fits
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI9_0:
	.quad	4636737291354636288     # double 100
	.text
	.align	16, 0x90
	.type	create_new_image,@function
create_new_image:                       # @create_new_image
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp37:
	.cfi_def_cfa_offset 16
.Ltmp38:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp39:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	32(%rbp), %rax
	movq	24(%rbp), %r10
	movq	16(%rbp), %r11
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movl	%r9d, -28(%rbp)
	movq	%r11, -40(%rbp)
	movq	%r10, -48(%rbp)
	movq	%rax, -56(%rbp)
	movl	-16(%rbp), %edi
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	callq	gimp_image_new
	movl	%eax, -60(%rbp)
	movq	-8(%rbp), %rdi
	callq	strlen
	addq	$64, %rax
	movq	%rax, %rdi
	callq	g_malloc
	movq	%rax, -72(%rbp)
	cmpq	$0, %rax
	je	.LBB9_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.50, %rsi
	movq	-72(%rbp), %rdi
	movq	-8(%rbp), %rdx
	movl	-12(%rbp), %eax
	movl	%eax, %ecx
	movb	$0, %al
	callq	sprintf
	movl	-60(%rbp), %edi
	movq	-72(%rbp), %rsi
	movl	%eax, -76(%rbp)         # 4-byte Spill
	callq	gimp_image_set_filename
	movq	-72(%rbp), %rdi
	movl	%eax, -80(%rbp)         # 4-byte Spill
	callq	g_free
	jmp	.LBB9_3
.LBB9_2:                                # %if.else
	movl	-60(%rbp), %edi
	movq	-8(%rbp), %rsi
	callq	gimp_image_set_filename
	movl	%eax, -84(%rbp)         # 4-byte Spill
.LBB9_3:                                # %if.end
	movl	-60(%rbp), %edi
	callq	gimp_image_undo_disable
	movabsq	$.L.str.51, %rdi
	movl	-60(%rbp), %ecx
	movl	%eax, -88(%rbp)         # 4-byte Spill
	movl	%ecx, -92(%rbp)         # 4-byte Spill
	callq	gettext
	movsd	.LCPI9_0, %xmm0         # xmm0 = mem[0],zero
	xorl	%r9d, %r9d
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %ecx
	movl	-28(%rbp), %r8d
	movl	-92(%rbp), %edi         # 4-byte Reload
	movq	%rax, %rsi
	callq	gimp_layer_new
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	xorl	%ecx, %ecx
	movq	-40(%rbp), %rsi
	movl	%eax, (%rsi)
	movl	-60(%rbp), %edi
	movq	-40(%rbp), %rsi
	movl	(%rsi), %esi
	callq	gimp_image_insert_layer
	movq	-40(%rbp), %r10
	movl	(%r10), %edi
	movl	%eax, -96(%rbp)         # 4-byte Spill
	callq	gimp_drawable_get
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	-48(%rbp), %r10
	movq	%rax, (%r10)
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	(%rax), %rsi
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movl	4(%rax), %r8d
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %r9d
	movl	%edx, -100(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	$1, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	movl	-60(%rbp), %eax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	create_new_image, .Lfunc_end9-create_new_image
	.cfi_endproc

	.align	16, 0x90
	.type	g_message,@function
g_message:                              # @g_message
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp40:
	.cfi_def_cfa_offset 16
.Ltmp41:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp42:
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
	je	.LBB10_2
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
.LBB10_2:                               # %entry
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
.Lfunc_end10:
	.size	g_message, .Lfunc_end10-g_message
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI11_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	save_index,@function
save_index:                             # @save_index
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp43:
	.cfi_def_cfa_offset 16
.Ltmp44:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp45:
	.cfi_def_cfa_register %rbp
	subq	$1056, %rsp             # imm = 0x420
	leaq	-880(%rbp), %rax
	leaq	-624(%rbp), %rcx
	leaq	-368(%rbp), %r8
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movq	%r8, -912(%rbp)
	movq	%rcx, -904(%rbp)
	movq	%rax, -896(%rbp)
	movl	-24(%rbp), %edi
	callq	gimp_drawable_get
	movq	%rax, -968(%rbp)
	movq	-968(%rbp), %rax
	movl	4(%rax), %edx
	movl	%edx, -32(%rbp)
	movq	-968(%rbp), %rax
	movl	8(%rax), %edx
	movl	%edx, -28(%rbp)
	movq	-968(%rbp), %rax
	movl	12(%rax), %edx
	movl	%edx, -52(%rbp)
	movl	-32(%rbp), %edx
	imull	-52(%rbp), %edx
	movl	%edx, -56(%rbp)
	callq	gimp_tile_height
	leaq	-960(%rbp), %rdi
	xorl	%edx, %edx
	movl	%eax, -48(%rbp)
	movq	-968(%rbp), %rsi
	movl	-32(%rbp), %r8d
	movl	-28(%rbp), %r9d
	movl	%edx, -988(%rbp)        # 4-byte Spill
	movl	-988(%rbp), %ecx        # 4-byte Reload
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	movl	-32(%rbp), %eax
	imull	-28(%rbp), %eax
	imull	-52(%rbp), %eax
	movslq	%eax, %rdi
	callq	g_malloc
	leaq	-60(%rbp), %rsi
	movq	%rax, -80(%rbp)
	movq	%rax, -88(%rbp)
	movl	-20(%rbp), %edi
	callq	gimp_image_get_colormap
	movq	%rax, -96(%rbp)
	movq	%rax, -104(%rbp)
	movslq	-60(%rbp), %rax
	cmpq	$256, %rax              # imm = 0x100
	jbe	.LBB11_2
# BB#1:                                 # %if.then
	movl	$256, -60(%rbp)         # imm = 0x100
.LBB11_2:                               # %if.end
	movl	$0, -36(%rbp)
.LBB11_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jge	.LBB11_6
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB11_3 Depth=1
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movb	(%rax), %dl
	movslq	-36(%rbp), %rax
	movb	%dl, -368(%rbp,%rax)
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movb	(%rax), %dl
	movslq	-36(%rbp), %rax
	movb	%dl, -624(%rbp,%rax)
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movb	(%rax), %dl
	movslq	-36(%rbp), %rax
	movb	%dl, -880(%rbp,%rax)
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB11_3 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB11_3
.LBB11_6:                               # %for.end
	movl	-60(%rbp), %eax
	movl	%eax, -36(%rbp)
.LBB11_7:                               # %for.cond.24
                                        # =>This Inner Loop Header: Depth=1
	movslq	-36(%rbp), %rax
	cmpq	$256, %rax              # imm = 0x100
	jae	.LBB11_10
# BB#8:                                 # %for.body.28
                                        #   in Loop: Header=BB11_7 Depth=1
	movslq	-36(%rbp), %rax
	movb	$0, -880(%rbp,%rax)
	movslq	-36(%rbp), %rax
	movb	$0, -624(%rbp,%rax)
	movslq	-36(%rbp), %rax
	movb	$0, -368(%rbp,%rax)
# BB#9:                                 # %for.inc.35
                                        #   in Loop: Header=BB11_7 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB11_7
.LBB11_10:                              # %for.end.37
	movq	-16(%rbp), %rdi
	movl	-32(%rbp), %esi
	movl	-28(%rbp), %edx
	movl	-52(%rbp), %eax
	addl	$2, %eax
	movl	%eax, %ecx
	callq	create_fits_header
	movq	%rax, -976(%rbp)
	cmpq	$0, -976(%rbp)
	jne	.LBB11_12
# BB#11:                                # %if.then.41
	movl	$0, -4(%rbp)
	jmp	.LBB11_58
.LBB11_12:                              # %if.end.42
	movq	-16(%rbp), %rdi
	movq	-976(%rbp), %rsi
	callq	fits_write_header
	cmpl	$0, %eax
	jge	.LBB11_14
# BB#13:                                # %if.then.46
	movl	$0, -4(%rbp)
	jmp	.LBB11_58
.LBB11_14:                              # %if.end.47
	movq	$0, -72(%rbp)
	movl	$0, -44(%rbp)
.LBB11_15:                              # %for.cond.48
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_17 Depth 2
                                        #       Child Loop BB11_24 Depth 3
	cmpl	$3, -44(%rbp)
	jge	.LBB11_33
# BB#16:                                # %for.body.51
                                        #   in Loop: Header=BB11_15 Depth=1
	movslq	-44(%rbp), %rax
	movq	-912(%rbp,%rax,8), %rax
	movq	%rax, -104(%rbp)
	movl	$0, -36(%rbp)
.LBB11_17:                              # %for.cond.54
                                        #   Parent Loop BB11_15 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB11_24 Depth 3
	movl	-36(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB11_29
# BB#18:                                # %for.body.57
                                        #   in Loop: Header=BB11_17 Depth=2
	movl	-36(%rbp), %eax
	cltd
	idivl	-48(%rbp)
	cmpl	$0, %edx
	jne	.LBB11_23
# BB#19:                                # %if.then.60
                                        #   in Loop: Header=BB11_17 Depth=2
	movl	-36(%rbp), %eax
	addl	-48(%rbp), %eax
	subl	$1, %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB11_21
# BB#20:                                # %cond.true
                                        #   in Loop: Header=BB11_17 Depth=2
	movl	-48(%rbp), %eax
	movl	%eax, -992(%rbp)        # 4-byte Spill
	jmp	.LBB11_22
.LBB11_21:                              # %cond.false
                                        #   in Loop: Header=BB11_17 Depth=2
	movl	-28(%rbp), %eax
	subl	-36(%rbp), %eax
	movl	%eax, -992(%rbp)        # 4-byte Spill
.LBB11_22:                              # %cond.end
                                        #   in Loop: Header=BB11_17 Depth=2
	movl	-992(%rbp), %eax        # 4-byte Reload
	leaq	-960(%rbp), %rdi
	xorl	%edx, %edx
	movl	%eax, -980(%rbp)
	movq	-80(%rbp), %rsi
	movl	-28(%rbp), %eax
	subl	-36(%rbp), %eax
	subl	-980(%rbp), %eax
	movl	-32(%rbp), %r8d
	movl	-980(%rbp), %r9d
	movl	%eax, %ecx
	callq	gimp_pixel_rgn_get_rect
	movq	-80(%rbp), %rsi
	movl	-56(%rbp), %eax
	movl	-980(%rbp), %ecx
	subl	$1, %ecx
	imull	%ecx, %eax
	movslq	%eax, %rdi
	addq	%rdi, %rsi
	movq	%rsi, -88(%rbp)
.LBB11_23:                              # %if.end.69
                                        #   in Loop: Header=BB11_17 Depth=2
	movl	$0, -40(%rbp)
.LBB11_24:                              # %for.cond.70
                                        #   Parent Loop BB11_15 Depth=1
                                        #     Parent Loop BB11_17 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-40(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jge	.LBB11_27
# BB#25:                                # %for.body.73
                                        #   in Loop: Header=BB11_24 Depth=3
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, %eax
	movq	-104(%rbp), %rdx
	movzbl	(%rdx,%rax), %edi
	movq	-16(%rbp), %rax
	movq	(%rax), %rsi
	callq	_IO_putc
	movl	-52(%rbp), %ecx
	movq	-88(%rbp), %rdx
	movslq	%ecx, %rsi
	addq	%rsi, %rdx
	movq	%rdx, -88(%rbp)
	movl	%eax, -996(%rbp)        # 4-byte Spill
# BB#26:                                # %for.inc.80
                                        #   in Loop: Header=BB11_24 Depth=3
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB11_24
.LBB11_27:                              # %for.end.82
                                        #   in Loop: Header=BB11_17 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movslq	-32(%rbp), %rdx
	addq	-72(%rbp), %rdx
	movq	%rdx, -72(%rbp)
	movl	-56(%rbp), %eax
	shll	$1, %eax
	movq	-88(%rbp), %rdx
	movslq	%eax, %rsi
	subq	%rsi, %rcx
	addq	%rcx, %rdx
	movq	%rdx, -88(%rbp)
# BB#28:                                # %for.inc.88
                                        #   in Loop: Header=BB11_17 Depth=2
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB11_17
.LBB11_29:                              # %for.end.90
                                        #   in Loop: Header=BB11_15 Depth=1
	movl	$20, %eax
	movl	-36(%rbp), %ecx
	movl	%eax, -1000(%rbp)       # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-1000(%rbp), %ecx       # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB11_31
# BB#30:                                # %if.then.94
                                        #   in Loop: Header=BB11_15 Depth=1
	movl	-36(%rbp), %eax
	movl	-44(%rbp), %ecx
	imull	-28(%rbp), %ecx
	addl	%ecx, %eax
	cvtsi2sdl	%eax, %xmm0
	movl	-28(%rbp), %eax
	movl	-52(%rbp), %ecx
	addl	$2, %ecx
	imull	%ecx, %eax
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -1004(%rbp)       # 4-byte Spill
.LBB11_31:                              # %if.end.102
                                        #   in Loop: Header=BB11_15 Depth=1
	jmp	.LBB11_32
.LBB11_32:                              # %for.inc.103
                                        #   in Loop: Header=BB11_15 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB11_15
.LBB11_33:                              # %for.end.105
	cmpl	$1, -52(%rbp)
	jle	.LBB11_50
# BB#34:                                # %if.then.108
	movl	$0, -36(%rbp)
.LBB11_35:                              # %for.cond.109
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_42 Depth 2
	movl	-36(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB11_47
# BB#36:                                # %for.body.112
                                        #   in Loop: Header=BB11_35 Depth=1
	movl	-36(%rbp), %eax
	cltd
	idivl	-48(%rbp)
	cmpl	$0, %edx
	jne	.LBB11_41
# BB#37:                                # %if.then.116
                                        #   in Loop: Header=BB11_35 Depth=1
	movl	-36(%rbp), %eax
	addl	-48(%rbp), %eax
	subl	$1, %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB11_39
# BB#38:                                # %cond.true.122
                                        #   in Loop: Header=BB11_35 Depth=1
	movl	-48(%rbp), %eax
	movl	%eax, -1008(%rbp)       # 4-byte Spill
	jmp	.LBB11_40
.LBB11_39:                              # %cond.false.123
                                        #   in Loop: Header=BB11_35 Depth=1
	movl	-28(%rbp), %eax
	subl	-36(%rbp), %eax
	movl	%eax, -1008(%rbp)       # 4-byte Spill
.LBB11_40:                              # %cond.end.125
                                        #   in Loop: Header=BB11_35 Depth=1
	movl	-1008(%rbp), %eax       # 4-byte Reload
	leaq	-960(%rbp), %rdi
	xorl	%edx, %edx
	movl	%eax, -984(%rbp)
	movq	-80(%rbp), %rsi
	movl	-28(%rbp), %eax
	subl	-36(%rbp), %eax
	subl	-984(%rbp), %eax
	movl	-32(%rbp), %r8d
	movl	-984(%rbp), %r9d
	movl	%eax, %ecx
	callq	gimp_pixel_rgn_get_rect
	movq	-80(%rbp), %rsi
	movl	-56(%rbp), %eax
	movl	-984(%rbp), %ecx
	subl	$1, %ecx
	imull	%ecx, %eax
	movslq	%eax, %rdi
	addq	%rdi, %rsi
	movq	%rsi, -88(%rbp)
	movq	-88(%rbp), %rsi
	addq	$1, %rsi
	movq	%rsi, -88(%rbp)
.LBB11_41:                              # %if.end.134
                                        #   in Loop: Header=BB11_35 Depth=1
	movl	$0, -40(%rbp)
.LBB11_42:                              # %for.cond.135
                                        #   Parent Loop BB11_35 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-40(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jge	.LBB11_45
# BB#43:                                # %for.body.138
                                        #   in Loop: Header=BB11_42 Depth=2
	movq	-88(%rbp), %rax
	movzbl	(%rax), %edi
	movq	-16(%rbp), %rax
	movq	(%rax), %rsi
	callq	_IO_putc
	movl	-52(%rbp), %edi
	movq	-88(%rbp), %rsi
	movslq	%edi, %rcx
	addq	%rcx, %rsi
	movq	%rsi, -88(%rbp)
	movl	%eax, -1012(%rbp)       # 4-byte Spill
# BB#44:                                # %for.inc.144
                                        #   in Loop: Header=BB11_42 Depth=2
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB11_42
.LBB11_45:                              # %for.end.146
                                        #   in Loop: Header=BB11_35 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movslq	-32(%rbp), %rdx
	addq	-72(%rbp), %rdx
	movq	%rdx, -72(%rbp)
	movl	-56(%rbp), %eax
	shll	$1, %eax
	movq	-88(%rbp), %rdx
	movslq	%eax, %rsi
	subq	%rsi, %rcx
	addq	%rcx, %rdx
	movq	%rdx, -88(%rbp)
# BB#46:                                # %for.inc.153
                                        #   in Loop: Header=BB11_35 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB11_35
.LBB11_47:                              # %for.end.155
	movl	$20, %eax
	movl	-36(%rbp), %ecx
	movl	%eax, -1016(%rbp)       # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-1016(%rbp), %ecx       # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB11_49
# BB#48:                                # %if.then.159
	movl	-36(%rbp), %eax
	movl	-44(%rbp), %ecx
	imull	-28(%rbp), %ecx
	addl	%ecx, %eax
	cvtsi2sdl	%eax, %xmm0
	movl	-28(%rbp), %eax
	movl	-52(%rbp), %ecx
	addl	$2, %ecx
	imull	%ecx, %eax
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -1020(%rbp)       # 4-byte Spill
.LBB11_49:                              # %if.end.168
	jmp	.LBB11_50
.LBB11_50:                              # %if.end.169
	movsd	.LCPI11_0, %xmm0        # xmm0 = mem[0],zero
	callq	gimp_progress_update
	movl	$2880, %ecx             # imm = 0xB40
	movl	%ecx, %edx
	movq	-72(%rbp), %rsi
	movl	%eax, -1024(%rbp)       # 4-byte Spill
	movq	%rsi, %rax
	movq	%rdx, -1032(%rbp)       # 8-byte Spill
	cqto
	movq	-1032(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	%rdx, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.LBB11_55
# BB#51:                                # %if.then.172
	jmp	.LBB11_52
.LBB11_52:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-72(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -72(%rbp)
	cmpq	$2880, %rax             # imm = 0xB40
	jge	.LBB11_54
# BB#53:                                # %while.body
                                        #   in Loop: Header=BB11_52 Depth=1
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	(%rax), %rsi
	callq	_IO_putc
	movl	%eax, -1036(%rbp)       # 4-byte Spill
	jmp	.LBB11_52
.LBB11_54:                              # %while.end
	jmp	.LBB11_55
.LBB11_55:                              # %if.end.178
	movq	-80(%rbp), %rdi
	callq	g_free
	movq	-968(%rbp), %rdi
	callq	gimp_drawable_detach
	movq	-16(%rbp), %rdi
	movq	(%rdi), %rdi
	callq	ferror
	cmpl	$0, %eax
	je	.LBB11_57
# BB#56:                                # %if.then.182
	movabsq	$.L.str.57, %rdi
	callq	gettext
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_message
	movl	$0, -4(%rbp)
	jmp	.LBB11_58
.LBB11_57:                              # %if.end.184
	movl	$1, -4(%rbp)
.LBB11_58:                              # %return
	movl	-4(%rbp), %eax
	addq	$1056, %rsp             # imm = 0x420
	popq	%rbp
	retq
.Lfunc_end11:
	.size	save_index, .Lfunc_end11-save_index
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI12_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	save_direct,@function
save_direct:                            # @save_direct
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp46:
	.cfi_def_cfa_offset 16
.Ltmp47:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp48:
	.cfi_def_cfa_register %rbp
	subq	$224, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movl	-24(%rbp), %edi
	callq	gimp_drawable_get
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	movl	4(%rax), %edx
	movl	%edx, -32(%rbp)
	movq	-136(%rbp), %rax
	movl	8(%rax), %edx
	movl	%edx, -28(%rbp)
	movq	-136(%rbp), %rax
	movl	12(%rax), %edx
	movl	%edx, -52(%rbp)
	movl	-32(%rbp), %edx
	imull	-52(%rbp), %edx
	movl	%edx, -56(%rbp)
	callq	gimp_tile_height
	leaq	-128(%rbp), %rdi
	xorl	%edx, %edx
	movl	%eax, -48(%rbp)
	movq	-136(%rbp), %rsi
	movl	-32(%rbp), %r8d
	movl	-28(%rbp), %r9d
	movl	%edx, -152(%rbp)        # 4-byte Spill
	movl	-152(%rbp), %ecx        # 4-byte Reload
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	movl	-32(%rbp), %eax
	imull	-28(%rbp), %eax
	imull	-52(%rbp), %eax
	movslq	%eax, %rdi
	callq	g_malloc
	movq	%rax, -72(%rbp)
	movq	%rax, -80(%rbp)
	movq	-16(%rbp), %rdi
	movl	-32(%rbp), %esi
	movl	-28(%rbp), %edx
	movl	-52(%rbp), %ecx
	callq	create_fits_header
	movq	%rax, -144(%rbp)
	cmpq	$0, -144(%rbp)
	jne	.LBB12_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB12_34
.LBB12_2:                               # %if.end
	movq	-16(%rbp), %rdi
	movq	-144(%rbp), %rsi
	callq	fits_write_header
	cmpl	$0, %eax
	jge	.LBB12_4
# BB#3:                                 # %if.then.13
	movl	$0, -4(%rbp)
	jmp	.LBB12_34
.LBB12_4:                               # %if.end.14
	movq	$0, -64(%rbp)
	movl	$0, -44(%rbp)
.LBB12_5:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_7 Depth 2
                                        #       Child Loop BB12_16 Depth 3
	movl	-44(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jge	.LBB12_26
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB12_5 Depth=1
	movl	$0, -36(%rbp)
.LBB12_7:                               # %for.cond.17
                                        #   Parent Loop BB12_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB12_16 Depth 3
	movl	-36(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB12_24
# BB#8:                                 # %for.body.20
                                        #   in Loop: Header=BB12_7 Depth=2
	movl	-36(%rbp), %eax
	cltd
	idivl	-48(%rbp)
	cmpl	$0, %edx
	jne	.LBB12_13
# BB#9:                                 # %if.then.23
                                        #   in Loop: Header=BB12_7 Depth=2
	movl	-36(%rbp), %eax
	addl	-48(%rbp), %eax
	subl	$1, %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB12_11
# BB#10:                                # %cond.true
                                        #   in Loop: Header=BB12_7 Depth=2
	movl	-48(%rbp), %eax
	movl	%eax, -156(%rbp)        # 4-byte Spill
	jmp	.LBB12_12
.LBB12_11:                              # %cond.false
                                        #   in Loop: Header=BB12_7 Depth=2
	movl	-28(%rbp), %eax
	subl	-36(%rbp), %eax
	movl	%eax, -156(%rbp)        # 4-byte Spill
.LBB12_12:                              # %cond.end
                                        #   in Loop: Header=BB12_7 Depth=2
	movl	-156(%rbp), %eax        # 4-byte Reload
	leaq	-128(%rbp), %rdi
	xorl	%edx, %edx
	movl	%eax, -148(%rbp)
	movq	-72(%rbp), %rsi
	movl	-28(%rbp), %eax
	subl	-36(%rbp), %eax
	subl	-148(%rbp), %eax
	movl	-32(%rbp), %r8d
	movl	-148(%rbp), %r9d
	movl	%eax, %ecx
	callq	gimp_pixel_rgn_get_rect
	movq	-72(%rbp), %rsi
	movl	-56(%rbp), %eax
	movl	-148(%rbp), %ecx
	subl	$1, %ecx
	imull	%ecx, %eax
	movslq	%eax, %rdi
	addq	%rdi, %rsi
	movslq	-44(%rbp), %rdi
	addq	%rdi, %rsi
	movq	%rsi, -80(%rbp)
.LBB12_13:                              # %if.end.33
                                        #   in Loop: Header=BB12_7 Depth=2
	cmpl	$1, -52(%rbp)
	jne	.LBB12_15
# BB#14:                                # %if.then.36
                                        #   in Loop: Header=BB12_7 Depth=2
	movl	$1, %eax
	movl	%eax, %esi
	movq	-80(%rbp), %rdi
	movslq	-32(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	callq	fwrite
	movl	-56(%rbp), %r8d
	movq	-80(%rbp), %rcx
	movslq	%r8d, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -80(%rbp)
	movq	%rax, -168(%rbp)        # 8-byte Spill
	jmp	.LBB12_20
.LBB12_15:                              # %if.else
                                        #   in Loop: Header=BB12_7 Depth=2
	movl	$0, -40(%rbp)
.LBB12_16:                              # %for.cond.41
                                        #   Parent Loop BB12_5 Depth=1
                                        #     Parent Loop BB12_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-40(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jge	.LBB12_19
# BB#17:                                # %for.body.44
                                        #   in Loop: Header=BB12_16 Depth=3
	movq	-80(%rbp), %rax
	movzbl	(%rax), %edi
	movq	-16(%rbp), %rax
	movq	(%rax), %rsi
	callq	_IO_putc
	movl	-52(%rbp), %edi
	movq	-80(%rbp), %rsi
	movslq	%edi, %rcx
	addq	%rcx, %rsi
	movq	%rsi, -80(%rbp)
	movl	%eax, -172(%rbp)        # 4-byte Spill
# BB#18:                                # %for.inc
                                        #   in Loop: Header=BB12_16 Depth=3
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB12_16
.LBB12_19:                              # %for.end
                                        #   in Loop: Header=BB12_7 Depth=2
	jmp	.LBB12_20
.LBB12_20:                              # %if.end.50
                                        #   in Loop: Header=BB12_7 Depth=2
	movl	$20, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movslq	-32(%rbp), %rsi
	addq	-64(%rbp), %rsi
	movq	%rsi, -64(%rbp)
	movl	-56(%rbp), %ecx
	shll	$1, %ecx
	movq	-80(%rbp), %rsi
	movslq	%ecx, %rdi
	subq	%rdi, %rdx
	addq	%rdx, %rsi
	movq	%rsi, -80(%rbp)
	movl	-36(%rbp), %ecx
	movl	%eax, -176(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-176(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB12_22
# BB#21:                                # %if.then.59
                                        #   in Loop: Header=BB12_7 Depth=2
	movl	-36(%rbp), %eax
	movl	-44(%rbp), %ecx
	imull	-28(%rbp), %ecx
	addl	%ecx, %eax
	cvtsi2sdl	%eax, %xmm0
	movl	-28(%rbp), %eax
	imull	-52(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -180(%rbp)        # 4-byte Spill
.LBB12_22:                              # %if.end.66
                                        #   in Loop: Header=BB12_7 Depth=2
	jmp	.LBB12_23
.LBB12_23:                              # %for.inc.67
                                        #   in Loop: Header=BB12_7 Depth=2
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB12_7
.LBB12_24:                              # %for.end.69
                                        #   in Loop: Header=BB12_5 Depth=1
	jmp	.LBB12_25
.LBB12_25:                              # %for.inc.70
                                        #   in Loop: Header=BB12_5 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB12_5
.LBB12_26:                              # %for.end.72
	movsd	.LCPI12_0, %xmm0        # xmm0 = mem[0],zero
	callq	gimp_progress_update
	movl	$2880, %ecx             # imm = 0xB40
	movl	%ecx, %edx
	movq	-64(%rbp), %rsi
	movl	%eax, -184(%rbp)        # 4-byte Spill
	movq	%rsi, %rax
	movq	%rdx, -192(%rbp)        # 8-byte Spill
	cqto
	movq	-192(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	%rdx, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.LBB12_31
# BB#27:                                # %if.then.75
	jmp	.LBB12_28
.LBB12_28:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -64(%rbp)
	cmpq	$2880, %rax             # imm = 0xB40
	jge	.LBB12_30
# BB#29:                                # %while.body
                                        #   in Loop: Header=BB12_28 Depth=1
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	(%rax), %rsi
	callq	_IO_putc
	movl	%eax, -196(%rbp)        # 4-byte Spill
	jmp	.LBB12_28
.LBB12_30:                              # %while.end
	jmp	.LBB12_31
.LBB12_31:                              # %if.end.81
	movq	-72(%rbp), %rdi
	callq	g_free
	movq	-136(%rbp), %rdi
	callq	gimp_drawable_detach
	movq	-16(%rbp), %rdi
	movq	(%rdi), %rdi
	callq	ferror
	cmpl	$0, %eax
	je	.LBB12_33
# BB#32:                                # %if.then.85
	movabsq	$.L.str.57, %rdi
	callq	gettext
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_message
	movl	$0, -4(%rbp)
	jmp	.LBB12_34
.LBB12_33:                              # %if.end.87
	movl	$1, -4(%rbp)
.LBB12_34:                              # %return
	movl	-4(%rbp), %eax
	addq	$224, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	save_direct, .Lfunc_end12-save_direct
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI13_0:
	.quad	4607182418800017408     # double 1
.LCPI13_1:
	.quad	4643176031446892544     # double 255
	.text
	.align	16, 0x90
	.type	create_fits_header,@function
create_fits_header:                     # @create_fits_header
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp49:
	.cfi_def_cfa_offset 16
.Ltmp50:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp51:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	$0, -44(%rbp)
	movq	-16(%rbp), %rdi
	callq	fits_add_hdu
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB13_2
# BB#1:                                 # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB13_8
.LBB13_2:                               # %if.end
	movabsq	$.L.str.20, %rsi
	movsd	.LCPI13_0, %xmm0        # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movsd	.LCPI13_1, %xmm2        # xmm2 = mem[0],zero
	movl	$3, %eax
	movl	$2, %ecx
	movq	-40(%rbp), %rdx
	movb	$1, 10289(%rdx)
	movq	-40(%rbp), %rdx
	movl	$8, 14320(%rdx)
	cmpl	$1, -28(%rbp)
	cmovel	%ecx, %eax
	movq	-40(%rbp), %rdx
	movl	%eax, 10320(%rdx)
	movl	-20(%rbp), %eax
	movq	-40(%rbp), %rdx
	movl	%eax, 10324(%rdx)
	movl	-24(%rbp), %eax
	movq	-40(%rbp), %rdx
	movl	%eax, 10328(%rdx)
	movl	-28(%rbp), %eax
	movq	-40(%rbp), %rdx
	movl	%eax, 10332(%rdx)
	movq	-40(%rbp), %rdx
	movb	$1, 10287(%rdx)
	movq	-40(%rbp), %rdx
	movsd	%xmm1, 14336(%rdx)
	movq	-40(%rbp), %rdx
	movb	$1, 10288(%rdx)
	movq	-40(%rbp), %rdx
	movsd	%xmm2, 14344(%rdx)
	movq	-40(%rbp), %rdx
	movb	$1, 10293(%rdx)
	movq	-40(%rbp), %rdx
	movsd	%xmm1, 14448(%rdx)
	movq	-40(%rbp), %rdx
	movb	$1, 10294(%rdx)
	movq	-40(%rbp), %rdx
	movsd	%xmm0, 14456(%rdx)
	movq	-40(%rbp), %rdi
	callq	fits_add_card
	movabsq	$.L.str.68, %rsi
	movq	-40(%rbp), %rdi
	movl	%eax, -48(%rbp)         # 4-byte Spill
	callq	fits_add_card
	movabsq	$.L.str.20, %rsi
	movq	-40(%rbp), %rdi
	movl	%eax, -52(%rbp)         # 4-byte Spill
	callq	fits_add_card
	movabsq	$.L.str.69, %rsi
	movq	-40(%rbp), %rdi
	movl	%eax, -56(%rbp)         # 4-byte Spill
	callq	fits_add_card
	movabsq	$.L.str.70, %rsi
	movq	-40(%rbp), %rdi
	movl	%eax, -60(%rbp)         # 4-byte Spill
	callq	fits_add_card
	movabsq	$.L.str.71, %rsi
	movq	-40(%rbp), %rdi
	movl	%eax, -64(%rbp)         # 4-byte Spill
	callq	fits_add_card
	movabsq	$.L.str.20, %rsi
	movq	-40(%rbp), %rdi
	movl	%eax, -68(%rbp)         # 4-byte Spill
	callq	fits_add_card
	movq	-40(%rbp), %rdi
	imull	$3, -28(%rbp), %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edx
	movq	create_fits_header.ctype3_card(,%rdx,8), %rsi
	movl	%eax, -72(%rbp)         # 4-byte Spill
	callq	fits_add_card
	imull	$3, -28(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edx
	cmpq	$0, create_fits_header.ctype3_card(,%rdx,8)
	movl	%eax, -76(%rbp)         # 4-byte Spill
	je	.LBB13_4
# BB#3:                                 # %if.then.27
	movq	-40(%rbp), %rdi
	imull	$3, -28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	create_fits_header.ctype3_card(,%rcx,8), %rsi
	callq	fits_add_card
	movl	%eax, -80(%rbp)         # 4-byte Spill
.LBB13_4:                               # %if.end.33
	cmpl	$0, -44(%rbp)
	je	.LBB13_7
# BB#5:                                 # %land.lhs.true
	imull	$3, -28(%rbp), %eax
	addl	$2, %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	cmpq	$0, create_fits_header.ctype3_card(,%rcx,8)
	je	.LBB13_7
# BB#6:                                 # %if.then.39
	movq	-40(%rbp), %rdi
	imull	$3, -28(%rbp), %eax
	addl	$2, %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	create_fits_header.ctype3_card(,%rcx,8), %rsi
	callq	fits_add_card
	movl	%eax, -84(%rbp)         # 4-byte Spill
.LBB13_7:                               # %if.end.45
	movabsq	$.L.str.20, %rsi
	movq	-40(%rbp), %rdi
	callq	fits_add_card
	movq	-40(%rbp), %rsi
	movq	%rsi, -8(%rbp)
	movl	%eax, -88(%rbp)         # 4-byte Spill
.LBB13_8:                               # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	create_fits_header, .Lfunc_end13-create_fits_header
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

	.type	query.load_args,@object # @query.load_args
	.align	16
query.load_args:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str
	.quad	.L.str.1
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.2
	.quad	.L.str.3
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.4
	.quad	.L.str.3
	.size	query.load_args, 72

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
	.asciz	"filename"
	.size	.L.str.2, 9

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"The name of the file to load"
	.size	.L.str.3, 29

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"raw-filename"
	.size	.L.str.4, 13

	.type	query.load_return_vals,@object # @query.load_return_vals
	.section	.rodata,"a",@progbits
	.align	16
query.load_return_vals:
	.long	13                      # 0xd
	.zero	4
	.quad	.L.str.5
	.quad	.L.str.6
	.size	query.load_return_vals, 24

	.type	.L.str.5,@object        # @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"image"
	.size	.L.str.5, 6

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Output image"
	.size	.L.str.6, 13

	.type	query.save_args,@object # @query.save_args
	.section	.rodata,"a",@progbits
	.align	16
query.save_args:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str
	.quad	.L.str.1
	.long	13                      # 0xd
	.zero	4
	.quad	.L.str.5
	.quad	.L.str.7
	.long	16                      # 0x10
	.zero	4
	.quad	.L.str.8
	.quad	.L.str.9
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.2
	.quad	.L.str.10
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.4
	.quad	.L.str.10
	.size	query.save_args, 120

	.type	.L.str.7,@object        # @.str.7
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.7:
	.asciz	"Input image"
	.size	.L.str.7, 12

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"drawable"
	.size	.L.str.8, 9

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Drawable to save"
	.size	.L.str.9, 17

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"The name of the file to save the image in"
	.size	.L.str.10, 42

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"file-fits-load"
	.size	.L.str.11, 15

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"load file of the FITS file format"
	.size	.L.str.12, 34

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"load file of the FITS file format (Flexible Image Transport System)"
	.size	.L.str.13, 68

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Peter Kirchgessner"
	.size	.L.str.14, 19

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Peter Kirchgessner (peter@kirchgessner.net)"
	.size	.L.str.15, 44

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"1997"
	.size	.L.str.16, 5

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Flexible Image Transport System"
	.size	.L.str.17, 32

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"image/x-fits"
	.size	.L.str.18, 13

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"fit,fits"
	.size	.L.str.19, 9

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.zero	1
	.size	.L.str.20, 1

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"0,string,SIMPLE"
	.size	.L.str.21, 16

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"file-fits-save"
	.size	.L.str.22, 15

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"save file in the FITS file format"
	.size	.L.str.23, 34

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"FITS saving handles all image types except those with alpha channels."
	.size	.L.str.24, 70

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"RGB, GRAY, INDEXED"
	.size	.L.str.25, 19

	.type	run.values,@object      # @run.values
	.local	run.values
	.comm	run.values,80,16
	.type	l_run_mode,@object      # @l_run_mode
	.local	l_run_mode
	.comm	l_run_mode,4,4
	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"gimp20-std-plug-ins"
	.size	.L.str.26, 20

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"UTF-8"
	.size	.L.str.27, 6

	.type	plvals,@object          # @plvals
	.local	plvals
	.comm	plvals,12,4
	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"file-fits"
	.size	.L.str.28, 10

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"FITS"
	.size	.L.str.29, 5

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"Load FITS File"
	.size	.L.str.30, 15

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"gimp-file-fits"
	.size	.L.str.31, 15

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"gtk-cancel"
	.size	.L.str.32, 11

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"gtk-open"
	.size	.L.str.33, 9

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"Replacement for undefined pixels"
	.size	.L.str.34, 33

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"Black"
	.size	.L.str.35, 6

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"White"
	.size	.L.str.36, 6

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"Pixel value scaling"
	.size	.L.str.37, 20

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"Automatic"
	.size	.L.str.38, 10

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"By DATAMIN/DATAMAX"
	.size	.L.str.39, 19

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"Image Composing"
	.size	.L.str.40, 16

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"composing\004None"
	.size	.L.str.41, 15

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"NAXIS=3, NAXIS3=2,...,4"
	.size	.L.str.42, 24

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"rb"
	.size	.L.str.43, 3

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"Could not open '%s' for reading: %s"
	.size	.L.str.44, 36

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"r"
	.size	.L.str.45, 2

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"%s"
	.size	.L.str.46, 3

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"Error during open of FITS file"
	.size	.L.str.47, 31

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"FITS file keeps no displayable images"
	.size	.L.str.48, 38

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"EOF encountered on reading"
	.size	.L.str.49, 27

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"%s-img%ld"
	.size	.L.str.50, 10

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"Background"
	.size	.L.str.51, 11

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"FITS save cannot handle images with alpha channels"
	.size	.L.str.52, 51

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"Cannot operate on unknown image types."
	.size	.L.str.53, 39

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"w"
	.size	.L.str.54, 2

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"Could not open '%s' for writing: %s"
	.size	.L.str.55, 36

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"Saving '%s'"
	.size	.L.str.56, 12

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"Write error occurred"
	.size	.L.str.57, 21

	.type	create_fits_header.ctype3_card,@object # @create_fits_header.ctype3_card
	.data
	.align	16
create_fits_header.ctype3_card:
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.58
	.quad	0
	.quad	0
	.quad	.L.str.59
	.quad	.L.str.60
	.quad	.L.str.61
	.quad	.L.str.62
	.quad	.L.str.63
	.quad	.L.str.64
	.quad	.L.str.65
	.quad	.L.str.66
	.quad	.L.str.67
	.size	create_fits_header.ctype3_card, 120

	.type	.L.str.58,@object       # @.str.58
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.58:
	.asciz	"COMMENT Image type within GIMP: GIMP_GRAY_IMAGE"
	.size	.L.str.58, 48

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"COMMENT Image type within GIMP: GIMP_GRAYA_IMAGE (gray with alpha channel)"
	.size	.L.str.59, 75

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"COMMENT Sequence for NAXIS3   : GRAY, ALPHA"
	.size	.L.str.60, 44

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"CTYPE3  = 'GRAYA   '           / GRAY IMAGE WITH ALPHA CHANNEL"
	.size	.L.str.61, 63

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"COMMENT Image type within GIMP: GIMP_RGB_IMAGE"
	.size	.L.str.62, 47

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"COMMENT Sequence for NAXIS3   : RED, GREEN, BLUE"
	.size	.L.str.63, 49

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"CTYPE3  = 'RGB     '           / RGB IMAGE"
	.size	.L.str.64, 43

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"COMMENT Image type within GIMP: GIMP_RGBA_IMAGE (rgb with alpha channel)"
	.size	.L.str.65, 73

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"COMMENT Sequence for NAXIS3   : RED, GREEN, BLUE, ALPHA"
	.size	.L.str.66, 56

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"CTYPE3  = 'RGBA    '           / RGB IMAGE WITH ALPHA CHANNEL"
	.size	.L.str.67, 62

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"HISTORY THIS FITS FILE WAS GENERATED BY GIMP USING FITSRW"
	.size	.L.str.68, 58

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"COMMENT FitsRW is (C) Peter Kirchgessner (peter@kirchgessner.net), but available"
	.size	.L.str.69, 81

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"COMMENT under the GNU general public licence."
	.size	.L.str.70, 46

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"COMMENT For sources see http://www.kirchgessner.net"
	.size	.L.str.71, 52


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
