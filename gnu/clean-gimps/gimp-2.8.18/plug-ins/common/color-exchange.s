	.text
	.file	"color-exchange.bc"
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
	subq	$104, %rsp
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
	movabsq	$.L.str.24, %rdi
	movabsq	$.L.str.25, %rsi
	movabsq	$.L.str.26, %rdx
	movabsq	$.L.str.27, %rax
	movabsq	$.L.str.28, %r9
	movabsq	$.L.str.29, %rcx
	movabsq	$.L.str.30, %r8
	movl	$1, %r10d
	movl	$12, %r11d
	xorl	%ebx, %ebx
	movabsq	$query.args, %r14
	xorl	%r15d, %r15d
	movl	%r15d, %r12d
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rcx
	movq	%r8, -56(%rbp)          # 8-byte Spill
	movq	%rax, %r8
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-56(%rbp), %r13         # 8-byte Reload
	movq	%r13, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$12, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%r14, 40(%rsp)
	movq	$0, 48(%rsp)
	movq	%r12, -64(%rbp)         # 8-byte Spill
	movl	%ebx, -68(%rbp)         # 4-byte Spill
	movl	%r10d, -72(%rbp)        # 4-byte Spill
	movl	%r11d, -76(%rbp)        # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.24, %rdi
	movabsq	$.L.str.31, %rsi
	callq	gimp_plugin_menu_register
	movl	%eax, -80(%rbp)         # 4-byte Spill
	addq	$104, %rsp
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
	subq	$160, %rsp
	movabsq	$run.values, %rax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	$3, -48(%rbp)
	movq	-32(%rbp), %rcx
	movl	$1, (%rcx)
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
# BB#1:                                 # %do.body
	callq	gimp_locale_directory
	movabsq	$.L.str.32, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.32, %rdi
	movabsq	$.L.str.33, %rsi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.32, %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	textdomain
	movq	%rax, -80(%rbp)         # 8-byte Spill
# BB#2:                                 # %do.end
	movl	$21, run.values(%rip)
	movl	-48(%rbp), %eax
	movl	%eax, run.values+8(%rip)
	movq	-24(%rbp), %rcx
	movl	8(%rcx), %eax
	movl	%eax, -44(%rbp)
	movq	-24(%rbp), %rcx
	movl	88(%rcx), %edi
	callq	gimp_drawable_get
	movq	%rax, -56(%rbp)
	movl	-44(%rbp), %edi
	testl	%edi, %edi
	movl	%edi, -84(%rbp)         # 4-byte Spill
	je	.LBB1_3
	jmp	.LBB1_23
.LBB1_23:                               # %do.end
	movl	-84(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	je	.LBB1_7
	jmp	.LBB1_24
.LBB1_24:                               # %do.end
	movl	-84(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	je	.LBB1_6
	jmp	.LBB1_11
.LBB1_3:                                # %sw.bb
	movabsq	$.L.str.24, %rdi
	movabsq	$xargs, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movabsq	$xargs, %rdi
	movl	%eax, -96(%rbp)         # 4-byte Spill
	callq	gimp_context_get_foreground
	movq	-56(%rbp), %rdi
	movl	%eax, -100(%rbp)        # 4-byte Spill
	callq	exchange_dialog
	cmpl	$0, %eax
	jne	.LBB1_5
# BB#4:                                 # %if.then
	jmp	.LBB1_22
.LBB1_5:                                # %if.end
	jmp	.LBB1_12
.LBB1_6:                                # %sw.bb.10
	movabsq	$.L.str.24, %rdi
	movabsq	$xargs, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movabsq	$xargs, %rdi
	movl	%eax, -104(%rbp)        # 4-byte Spill
	callq	gimp_context_get_foreground
	movl	%eax, -108(%rbp)        # 4-byte Spill
	jmp	.LBB1_12
.LBB1_7:                                # %sw.bb.13
	cmpl	$12, -12(%rbp)
	je	.LBB1_9
# BB#8:                                 # %if.then.14
	movl	$0, -48(%rbp)
	jmp	.LBB1_10
.LBB1_9:                                # %if.else
	movabsq	$xargs, %rdi
	movq	-24(%rbp), %rax
	movb	128(%rax), %cl
	movq	-24(%rbp), %rax
	movb	168(%rax), %dl
	movq	-24(%rbp), %rax
	movzbl	%cl, %esi
	movzbl	%dl, %edx
	movzbl	208(%rax), %ecx
	callq	gimp_rgb_set_uchar
	movabsq	$xargs, %rax
	addq	$32, %rax
	movq	-24(%rbp), %rdi
	movb	248(%rdi), %r8b
	movq	-24(%rbp), %rdi
	movb	288(%rdi), %r9b
	movq	-24(%rbp), %rdi
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movzbl	%r8b, %esi
	movzbl	%r9b, %edx
	movq	-120(%rbp), %rax        # 8-byte Reload
	movzbl	328(%rax), %ecx
	callq	gimp_rgb_set_uchar
	movabsq	$xargs, %rax
	addq	$64, %rax
	movq	-24(%rbp), %rdi
	movb	368(%rdi), %r8b
	movq	-24(%rbp), %rdi
	movb	408(%rdi), %r9b
	movq	-24(%rbp), %rdi
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movzbl	%r8b, %esi
	movzbl	%r9b, %edx
	movq	-128(%rbp), %rax        # 8-byte Reload
	movzbl	448(%rax), %ecx
	callq	gimp_rgb_set_uchar
.LBB1_10:                               # %if.end.41
	jmp	.LBB1_12
.LBB1_11:                               # %sw.default
	jmp	.LBB1_12
.LBB1_12:                               # %sw.epilog
	cmpl	$3, -48(%rbp)
	jne	.LBB1_21
# BB#13:                                # %if.then.43
	movq	-56(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_is_rgb
	cmpl	$0, %eax
	je	.LBB1_19
# BB#14:                                # %if.then.46
	movabsq	$.L.str.34, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_progress_init
	movq	-56(%rbp), %rdi
	movl	4(%rdi), %ecx
	movl	%eax, -132(%rbp)        # 4-byte Spill
	movl	%ecx, -136(%rbp)        # 4-byte Spill
	callq	gimp_tile_width
	movl	-136(%rbp), %ecx        # 4-byte Reload
	movl	%eax, -140(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	xorl	%edx, %edx
	movl	-140(%rbp), %esi        # 4-byte Reload
	divl	%esi
	addl	$1, %eax
	shll	$1, %eax
	movl	%eax, %eax
	movl	%eax, %edi
	callq	gimp_tile_cache_ntiles
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-56(%rbp), %rdi
	callq	exchange
	movq	-56(%rbp), %rdi
	callq	gimp_drawable_detach
	cmpl	$0, -44(%rbp)
	jne	.LBB1_16
# BB#15:                                # %if.then.52
	movabsq	$.L.str.24, %rdi
	movabsq	$xargs, %rax
	movl	$96, %edx
	movq	%rax, %rsi
	callq	gimp_procedural_db_set_data
	movl	%eax, -144(%rbp)        # 4-byte Spill
.LBB1_16:                               # %if.end.54
	cmpl	$1, -44(%rbp)
	je	.LBB1_18
# BB#17:                                # %if.then.57
	callq	gimp_displays_flush
	movl	%eax, -148(%rbp)        # 4-byte Spill
.LBB1_18:                               # %if.end.59
	jmp	.LBB1_20
.LBB1_19:                               # %if.else.60
	movl	$0, -48(%rbp)
.LBB1_20:                               # %if.end.61
	jmp	.LBB1_21
.LBB1_21:                               # %if.end.62
	movl	-48(%rbp), %eax
	movl	%eax, run.values+8
.LBB1_22:                               # %return
	addq	$160, %rsp
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

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI3_0:
	.long	1056964608              # float 0.5
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_1:
	.quad	4607182418800017408     # double 1
.LCPI3_2:
	.quad	4576918229304087675     # double 0.01
.LCPI3_3:
	.quad	4591870180066957722     # double 0.10000000000000001
	.text
	.align	16, 0x90
	.type	exchange_dialog,@function
exchange_dialog:                        # @exchange_dialog
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
	pushq	%rbx
	subq	$1304, %rsp             # imm = 0x518
.Ltmp17:
	.cfi_offset %rbx, -24
	movabsq	$.L.str.35, %rax
	movl	$1, %esi
	movq	%rdi, -16(%rbp)
	movq	%rax, %rdi
	callq	gimp_ui_init
	movabsq	$.L.str.34, %rdi
	callq	gettext
	movabsq	$.L.str.36, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	movabsq	$gimp_standard_help_func, %r8
	movabsq	$.L.str.24, %r9
	movabsq	$.L.str.37, %rdi
	movl	$4294967290, %r10d      # imm = 0xFFFFFFFA
	movabsq	$.L.str.38, %r11
	movl	$4294967291, %ebx       # imm = 0xFFFFFFFB
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$-6, 8(%rsp)
	movq	%r11, 16(%rsp)
	movl	$-5, 24(%rsp)
	movq	$0, 32(%rsp)
	movb	$0, %al
	movl	%ebx, -148(%rbp)        # 4-byte Spill
	movl	%r10d, -152(%rbp)       # 4-byte Spill
	callq	gimp_dialog_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	movq	-24(%rbp), %rdi
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_window_set_transient
	movl	$1, %edi
	movl	$12, %esi
	callq	gtk_box_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-24(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.39, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
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
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	-16(%rbp), %rdi
	callq	gimp_drawable_preview_new
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.40, %rsi
	movabsq	$exchange, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movl	$2, %r9d
	movq	-56(%rbp), %rdi
	movq	-16(%rbp), %r11
	movq	%rax, %rdx
	movq	%r11, %rcx
	callq	g_signal_connect_data
	movq	-56(%rbp), %rcx
	movq	%rax, -216(%rbp)        # 8-byte Spill
	movq	%rcx, -224(%rbp)        # 8-byte Spill
	callq	gimp_preview_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.41, %rsi
	movabsq	$preview_event_handler, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	136(%rax), %rax
	movq	-56(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rdx, -232(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-232(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	xorl	%r9d, %r9d
	movl	%r9d, %edi
	movl	$1, %r9d
	movabsq	$xargs, %rcx
	addq	$64, %rcx
	xorl	%r8d, %r8d
	movl	%r9d, %esi
	movl	%r9d, %edx
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gimp_color_button_new
	movabsq	$.L.str.42, %rsi
	movabsq	$gimp_color_button_get_color, %rcx
	movabsq	$xargs, %rdi
	addq	$64, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rdi, -248(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-248(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.42, %rsi
	movabsq	$color_button_callback, %rcx
	movabsq	$xargs, %rdx
	addq	$64, %rdx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-72(%rbp), %rdi
	movq	%rdx, -256(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-256(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.42, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-72(%rbp), %rdx
	movq	-56(%rbp), %rdi
	movq	%rdi, -272(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-272(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	xorl	%edi, %edi
	movl	$12, %esi
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gtk_box_new
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movl	$1, %edi
	callq	gtk_size_group_new
	movq	%rax, -96(%rbp)
	movl	$0, -100(%rbp)
.LBB3_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$2, -100(%rbp)
	jge	.LBB3_31
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	$0, -124(%rbp)
	cmpl	$0, -100(%rbp)
	je	.LBB3_4
# BB#3:                                 # %cond.true
                                        #   in Loop: Header=BB3_1 Depth=1
	movabsq	$.L.str.43, %rdi
	callq	gettext
	movq	%rax, -304(%rbp)        # 8-byte Spill
	jmp	.LBB3_5
.LBB3_4:                                # %cond.false
                                        #   in Loop: Header=BB3_1 Depth=1
	movabsq	$.L.str.44, %rdi
	callq	gettext
	movq	%rax, -304(%rbp)        # 8-byte Spill
.LBB3_5:                                # %cond.end
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-304(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -316(%rbp)        # 4-byte Spill
	movl	-316(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movl	$1, %edi
	xorl	%esi, %esi
	callq	gtk_box_new
	movq	%rax, -112(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-112(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-112(%rbp), %rdi
	callq	gtk_widget_show
	movl	$4, %ecx
	xorl	%edx, %edx
	movl	$8, %r8d
	cmpl	$0, -100(%rbp)
	cmovnel	%ecx, %r8d
	movl	%r8d, %edi
	movl	%ecx, %esi
	callq	gtk_table_new
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-64(%rbp), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-64(%rbp), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movl	$12, %edx
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacing
	cmpl	$0, -100(%rbp)
	jne	.LBB3_7
# BB#6:                                 # %if.then
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movl	$2, %edx
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacing
	movq	-64(%rbp), %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$3, %esi
	movl	$2, %edx
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacing
	movq	-64(%rbp), %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$5, %esi
	movl	$2, %edx
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacing
.LBB3_7:                                # %if.end
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-112(%rbp), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -388(%rbp)        # 4-byte Spill
	movl	-388(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	cmpl	$0, -100(%rbp)
	je	.LBB3_9
# BB#8:                                 # %cond.true.60
                                        #   in Loop: Header=BB3_1 Depth=1
	movabsq	$.L.str.45, %rdi
	callq	gettext
	movq	%rax, -400(%rbp)        # 8-byte Spill
	jmp	.LBB3_10
.LBB3_9:                                # %cond.false.62
                                        #   in Loop: Header=BB3_1 Depth=1
	movabsq	$.L.str.46, %rdi
	callq	gettext
	movq	%rax, -400(%rbp)        # 8-byte Spill
.LBB3_10:                               # %cond.end.64
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-400(%rbp), %rax        # 8-byte Reload
	movl	$64, %esi
	movl	$16, %edx
	xorl	%r8d, %r8d
	movabsq	$xargs, %rcx
	movq	%rcx, %rdi
	addq	$32, %rdi
	cmpl	$0, -100(%rbp)
	cmovneq	%rdi, %rcx
	movq	%rax, %rdi
	callq	gimp_color_button_new
	movq	%rax, -80(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-408(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	xorl	%edx, %edx
	movl	%edx, %ecx
	xorps	%xmm0, %xmm0
	movl	$1, %r9d
	movl	-124(%rbp), %edx
	movl	%edx, %r8d
	addl	$1, %r8d
	movl	%r8d, -124(%rbp)
	movq	-80(%rbp), %r8
	movq	%rax, %rdi
	movss	%xmm0, -412(%rbp)       # 4-byte Spill
	movss	-412(%rbp), %xmm1       # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	movl	$0, (%rsp)
	callq	gimp_table_attach_aligned
	movabsq	$.L.str.42, %rsi
	movabsq	$gimp_color_button_get_color, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movabsq	$xargs, %rdi
	movq	%rdi, %r10
	addq	$32, %r10
	movq	-80(%rbp), %r11
	cmpl	$0, -100(%rbp)
	cmovneq	%r10, %rdi
	movq	%rdi, -424(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rcx, %rdx
	movq	-424(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.42, %rsi
	movabsq	$color_button_callback, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movabsq	$xargs, %rdx
	movq	%rdx, %rdi
	addq	$32, %rdi
	movq	-80(%rbp), %r10
	cmpl	$0, -100(%rbp)
	cmovneq	%rdi, %rdx
	movq	%r10, %rdi
	movq	%rdx, -440(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-440(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.42, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-80(%rbp), %rdx
	movq	-56(%rbp), %rdi
	movq	%rdi, -456(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-456(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -464(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	cmpl	$0, -100(%rbp)
	movq	%rax, -472(%rbp)        # 8-byte Spill
	jne	.LBB3_12
# BB#11:                                # %if.then.80
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-80(%rbp), %rax
	movq	%rax, from_colorbutton
.LBB3_12:                               # %if.end.81
                                        #   in Loop: Header=BB3_1 Depth=1
	movabsq	$.L.str.47, %rdi
	movl	$4, %esi
	callq	gtk_image_new_from_stock
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -480(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-480(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movss	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	movss	%xmm0, -484(%rbp)       # 4-byte Spill
	movss	-484(%rbp), %xmm1       # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	callq	gtk_misc_set_alignment
	movq	-64(%rbp), %rax
	movq	%rax, -496(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-496(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	$1, %edx
	movl	$4, %r8d
	movq	-120(%rbp), %rsi
	movl	-124(%rbp), %r9d
	movl	-124(%rbp), %r10d
	addl	$1, %r10d
	cmpl	$0, -100(%rbp)
	movl	%edx, %r11d
	cmovnel	%ecx, %r11d
	addl	%r11d, %r10d
	movq	%rax, %rdi
	movl	%edx, -500(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-500(%rbp), %ecx        # 4-byte Reload
	movl	%r8d, -504(%rbp)        # 4-byte Spill
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$4, (%rsp)
	movl	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	callq	gtk_table_attach
	movq	-120(%rbp), %rdi
	callq	gtk_widget_show
	movq	-64(%rbp), %rax
	movq	%rax, -512(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-512(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.48, %rdi
	movl	-124(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -124(%rbp)
	movl	%ecx, -516(%rbp)        # 4-byte Spill
	movq	%rax, -528(%rbp)        # 8-byte Spill
	callq	gettext
	cmpl	$0, -100(%rbp)
	movq	%rax, -536(%rbp)        # 8-byte Spill
	je	.LBB3_14
# BB#13:                                # %cond.true.95
                                        #   in Loop: Header=BB3_1 Depth=1
	movsd	xargs+32, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -544(%rbp)       # 8-byte Spill
	jmp	.LBB3_15
.LBB3_14:                               # %cond.false.96
                                        #   in Loop: Header=BB3_1 Depth=1
	movsd	xargs, %xmm0            # xmm0 = mem[0],zero
	movsd	%xmm0, -544(%rbp)       # 8-byte Spill
.LBB3_15:                               # %cond.end.97
                                        #   in Loop: Header=BB3_1 Depth=1
	movsd	-544(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movl	$1, %esi
	movl	$128, %r8d
	xorl	%r9d, %r9d
	xorps	%xmm1, %xmm1
	movsd	.LCPI3_1, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI3_2, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI3_3, %xmm4         # xmm4 = mem[0],zero
	movl	$3, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-528(%rbp), %rdi        # 8-byte Reload
	movl	-516(%rbp), %ecx        # 4-byte Reload
	movq	%rdx, -552(%rbp)        # 8-byte Spill
	movl	%ecx, %edx
	movq	-536(%rbp), %rcx        # 8-byte Reload
	movsd	%xmm1, -560(%rbp)       # 8-byte Spill
	movl	$3, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-560(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-560(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%eax, -564(%rbp)        # 4-byte Spill
	callq	gimp_scale_entry_new
	movl	$80, %edx
	movl	%edx, %esi
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.49, %rsi
	movq	-80(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	g_object_set_data
	movl	$80, %r8d
	movl	%r8d, %esi
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.50, %rsi
	movq	-88(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	g_object_set_data
	movabsq	$.L.str.51, %rsi
	movabsq	$gimp_double_adjustment_update, %rax
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	xorl	%r9d, %r9d
	movabsq	$xargs, %rcx
	movq	%rcx, %rdx
	addq	$32, %rdx
	movq	-88(%rbp), %rdi
	cmpl	$0, -100(%rbp)
	cmovneq	%rdx, %rcx
	movq	%rax, %rdx
	callq	g_signal_connect_data
	movabsq	$.L.str.51, %rsi
	movabsq	$scale_callback, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movabsq	$xargs, %rdx
	movq	%rdx, %rdi
	addq	$32, %rdi
	movq	-88(%rbp), %r10
	cmpl	$0, -100(%rbp)
	cmovneq	%rdi, %rdx
	movq	%r10, %rdi
	movq	%rdx, -576(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-576(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -584(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.51, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-88(%rbp), %rdx
	movq	-56(%rbp), %rdi
	movq	%rdi, -592(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-592(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -600(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movl	$80, %r9d
	movl	%r9d, %esi
	movq	-96(%rbp), %rdi
	movq	-88(%rbp), %rcx
	movq	%rdi, -608(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, -616(%rbp)        # 8-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$.L.str.52, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	-608(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_size_group_add_widget
	cmpl	$0, -100(%rbp)
	jne	.LBB3_17
# BB#16:                                # %if.then.112
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, -624(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-624(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.53, %rdi
	movl	-124(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -124(%rbp)
	movl	%ecx, -628(%rbp)        # 4-byte Spill
	movq	%rax, -640(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$1, %esi
	movl	$128, %r8d
	xorl	%r9d, %r9d
	xorps	%xmm0, %xmm0
	movsd	.LCPI3_1, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI3_2, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI3_3, %xmm4         # xmm4 = mem[0],zero
	movl	$3, %ecx
	xorl	%edx, %edx
	movl	%edx, %edi
	movsd	xargs+64, %xmm1         # xmm1 = mem[0],zero
	movq	-640(%rbp), %r10        # 8-byte Reload
	movq	%rdi, -648(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movl	-628(%rbp), %edx        # 4-byte Reload
	movl	%ecx, -652(%rbp)        # 4-byte Spill
	movq	%rax, %rcx
	movsd	%xmm0, -664(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-664(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	$3, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-664(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-664(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	callq	gimp_scale_entry_new
	movl	$80, %edx
	movl	%edx, %esi
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.49, %rsi
	movq	-72(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	g_object_set_data
	movl	$80, %r8d
	movl	%r8d, %esi
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.50, %rsi
	movq	-88(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	g_object_set_data
	movabsq	$.L.str.51, %rsi
	movabsq	$gimp_double_adjustment_update, %rax
	movabsq	$xargs, %rcx
	addq	$64, %rcx
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	xorl	%r9d, %r9d
	movq	-88(%rbp), %rdx
	movq	%rdx, %rdi
	movq	%rax, %rdx
	callq	g_signal_connect_data
	movabsq	$.L.str.51, %rsi
	movabsq	$scale_callback, %rcx
	movabsq	$xargs, %rdx
	addq	$64, %rdx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-88(%rbp), %rdi
	movq	%rdx, -672(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-672(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -680(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.51, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-88(%rbp), %rdx
	movq	-56(%rbp), %rdi
	movq	%rdi, -688(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-688(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -696(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movl	$80, %r9d
	movl	%r9d, %esi
	movq	-96(%rbp), %rdi
	movq	-88(%rbp), %rcx
	movq	%rdi, -704(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, -712(%rbp)        # 8-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$.L.str.52, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	-704(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_size_group_add_widget
.LBB3_17:                               # %if.end.125
                                        #   in Loop: Header=BB3_1 Depth=1
	movabsq	$.L.str.54, %rdi
	movl	$4, %esi
	callq	gtk_image_new_from_stock
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -720(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-720(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movss	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	movss	%xmm0, -724(%rbp)       # 4-byte Spill
	movss	-724(%rbp), %xmm1       # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	callq	gtk_misc_set_alignment
	movq	-64(%rbp), %rax
	movq	%rax, -736(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-736(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	$1, %edx
	movl	$4, %r8d
	movq	-120(%rbp), %rsi
	movl	-124(%rbp), %r9d
	movl	-124(%rbp), %r10d
	addl	$1, %r10d
	cmpl	$0, -100(%rbp)
	movl	%edx, %r11d
	cmovnel	%ecx, %r11d
	addl	%r11d, %r10d
	movq	%rax, %rdi
	movl	%edx, -740(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-740(%rbp), %ecx        # 4-byte Reload
	movl	%r8d, -744(%rbp)        # 4-byte Spill
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$4, (%rsp)
	movl	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	callq	gtk_table_attach
	movq	-120(%rbp), %rdi
	callq	gtk_widget_show
	movq	-64(%rbp), %rax
	movq	%rax, -752(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-752(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.55, %rdi
	movl	-124(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -124(%rbp)
	movl	%ecx, -756(%rbp)        # 4-byte Spill
	movq	%rax, -768(%rbp)        # 8-byte Spill
	callq	gettext
	cmpl	$0, -100(%rbp)
	movq	%rax, -776(%rbp)        # 8-byte Spill
	je	.LBB3_19
# BB#18:                                # %cond.true.140
                                        #   in Loop: Header=BB3_1 Depth=1
	movsd	xargs+40, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -784(%rbp)       # 8-byte Spill
	jmp	.LBB3_20
.LBB3_19:                               # %cond.false.141
                                        #   in Loop: Header=BB3_1 Depth=1
	movsd	xargs+8, %xmm0          # xmm0 = mem[0],zero
	movsd	%xmm0, -784(%rbp)       # 8-byte Spill
.LBB3_20:                               # %cond.end.142
                                        #   in Loop: Header=BB3_1 Depth=1
	movsd	-784(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movl	$1, %esi
	movl	$128, %r8d
	xorl	%r9d, %r9d
	xorps	%xmm1, %xmm1
	movsd	.LCPI3_1, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI3_2, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI3_3, %xmm4         # xmm4 = mem[0],zero
	movl	$3, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-768(%rbp), %rdi        # 8-byte Reload
	movl	-756(%rbp), %ecx        # 4-byte Reload
	movq	%rdx, -792(%rbp)        # 8-byte Spill
	movl	%ecx, %edx
	movq	-776(%rbp), %rcx        # 8-byte Reload
	movsd	%xmm1, -800(%rbp)       # 8-byte Spill
	movl	$3, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-800(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-800(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%eax, -804(%rbp)        # 4-byte Spill
	callq	gimp_scale_entry_new
	movl	$80, %edx
	movl	%edx, %esi
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.49, %rsi
	movq	-80(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	g_object_set_data
	movl	$80, %r8d
	movl	%r8d, %esi
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.56, %rsi
	movq	-88(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	g_object_set_data
	movabsq	$.L.str.51, %rsi
	movabsq	$gimp_double_adjustment_update, %rax
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	xorl	%r9d, %r9d
	movabsq	$xargs, %rcx
	movq	%rcx, %rdx
	addq	$8, %rdx
	addq	$40, %rcx
	movq	-88(%rbp), %rdi
	cmpl	$0, -100(%rbp)
	cmovneq	%rcx, %rdx
	movq	%rdx, -816(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-816(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.51, %rsi
	movabsq	$scale_callback, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movabsq	$xargs, %rdx
	movq	%rdx, %rdi
	addq	$32, %rdi
	movq	-88(%rbp), %r10
	cmpl	$0, -100(%rbp)
	cmovneq	%rdi, %rdx
	movq	%r10, %rdi
	movq	%rdx, -824(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-824(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -832(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.51, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-88(%rbp), %rdx
	movq	-56(%rbp), %rdi
	movq	%rdi, -840(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-840(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -848(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movl	$80, %r9d
	movl	%r9d, %esi
	movq	-96(%rbp), %rdi
	movq	-88(%rbp), %rcx
	movq	%rdi, -856(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, -864(%rbp)        # 8-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$.L.str.52, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	-856(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_size_group_add_widget
	cmpl	$0, -100(%rbp)
	jne	.LBB3_22
# BB#21:                                # %if.then.157
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, -872(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-872(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.57, %rdi
	movl	-124(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -124(%rbp)
	movl	%ecx, -876(%rbp)        # 4-byte Spill
	movq	%rax, -888(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$1, %esi
	movl	$128, %r8d
	xorl	%r9d, %r9d
	xorps	%xmm0, %xmm0
	movsd	.LCPI3_1, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI3_2, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI3_3, %xmm4         # xmm4 = mem[0],zero
	movl	$3, %ecx
	xorl	%edx, %edx
	movl	%edx, %edi
	movsd	xargs+72, %xmm1         # xmm1 = mem[0],zero
	movq	-888(%rbp), %r10        # 8-byte Reload
	movq	%rdi, -896(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movl	-876(%rbp), %edx        # 4-byte Reload
	movl	%ecx, -900(%rbp)        # 4-byte Spill
	movq	%rax, %rcx
	movsd	%xmm0, -912(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-912(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	$3, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-912(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-912(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	callq	gimp_scale_entry_new
	movl	$80, %edx
	movl	%edx, %esi
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.49, %rsi
	movq	-72(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	g_object_set_data
	movl	$80, %r8d
	movl	%r8d, %esi
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.56, %rsi
	movq	-88(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	g_object_set_data
	movabsq	$.L.str.51, %rsi
	movabsq	$gimp_double_adjustment_update, %rax
	movabsq	$xargs, %rcx
	addq	$72, %rcx
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	xorl	%r9d, %r9d
	movq	-88(%rbp), %rdx
	movq	%rdx, %rdi
	movq	%rax, %rdx
	callq	g_signal_connect_data
	movabsq	$.L.str.51, %rsi
	movabsq	$scale_callback, %rcx
	movabsq	$xargs, %rdx
	addq	$64, %rdx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-88(%rbp), %rdi
	movq	%rdx, -920(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-920(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -928(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.51, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-88(%rbp), %rdx
	movq	-56(%rbp), %rdi
	movq	%rdi, -936(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-936(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -944(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movl	$80, %r9d
	movl	%r9d, %esi
	movq	-96(%rbp), %rdi
	movq	-88(%rbp), %rcx
	movq	%rdi, -952(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, -960(%rbp)        # 8-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$.L.str.52, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	-952(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_size_group_add_widget
.LBB3_22:                               # %if.end.170
                                        #   in Loop: Header=BB3_1 Depth=1
	movabsq	$.L.str.58, %rdi
	movl	$4, %esi
	callq	gtk_image_new_from_stock
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -968(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-968(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movss	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	movss	%xmm0, -972(%rbp)       # 4-byte Spill
	movss	-972(%rbp), %xmm1       # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	callq	gtk_misc_set_alignment
	movq	-64(%rbp), %rax
	movq	%rax, -984(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-984(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	$1, %edx
	movl	$4, %r8d
	movq	-120(%rbp), %rsi
	movl	-124(%rbp), %r9d
	movl	-124(%rbp), %r10d
	addl	$1, %r10d
	cmpl	$0, -100(%rbp)
	movl	%edx, %r11d
	cmovnel	%ecx, %r11d
	addl	%r11d, %r10d
	movq	%rax, %rdi
	movl	%edx, -988(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-988(%rbp), %ecx        # 4-byte Reload
	movl	%r8d, -992(%rbp)        # 4-byte Spill
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$4, (%rsp)
	movl	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	callq	gtk_table_attach
	movq	-120(%rbp), %rdi
	callq	gtk_widget_show
	movq	-64(%rbp), %rax
	movq	%rax, -1000(%rbp)       # 8-byte Spill
	callq	gtk_table_get_type
	movq	-1000(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.59, %rdi
	movl	-124(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -124(%rbp)
	movl	%ecx, -1004(%rbp)       # 4-byte Spill
	movq	%rax, -1016(%rbp)       # 8-byte Spill
	callq	gettext
	cmpl	$0, -100(%rbp)
	movq	%rax, -1024(%rbp)       # 8-byte Spill
	je	.LBB3_24
# BB#23:                                # %cond.true.185
                                        #   in Loop: Header=BB3_1 Depth=1
	movsd	xargs+48, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -1032(%rbp)      # 8-byte Spill
	jmp	.LBB3_25
.LBB3_24:                               # %cond.false.186
                                        #   in Loop: Header=BB3_1 Depth=1
	movsd	xargs+16, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -1032(%rbp)      # 8-byte Spill
.LBB3_25:                               # %cond.end.187
                                        #   in Loop: Header=BB3_1 Depth=1
	movsd	-1032(%rbp), %xmm0      # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movl	$1, %esi
	movl	$128, %r8d
	xorl	%r9d, %r9d
	xorps	%xmm1, %xmm1
	movsd	.LCPI3_1, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI3_2, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI3_3, %xmm4         # xmm4 = mem[0],zero
	movl	$3, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-1016(%rbp), %rdi       # 8-byte Reload
	movl	-1004(%rbp), %ecx       # 4-byte Reload
	movq	%rdx, -1040(%rbp)       # 8-byte Spill
	movl	%ecx, %edx
	movq	-1024(%rbp), %rcx       # 8-byte Reload
	movsd	%xmm1, -1048(%rbp)      # 8-byte Spill
	movl	$3, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-1048(%rbp), %xmm5      # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-1048(%rbp), %xmm6      # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%eax, -1052(%rbp)       # 4-byte Spill
	callq	gimp_scale_entry_new
	movl	$80, %edx
	movl	%edx, %esi
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.49, %rsi
	movq	-80(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	g_object_set_data
	movl	$80, %r8d
	movl	%r8d, %esi
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.60, %rsi
	movq	-88(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	g_object_set_data
	movabsq	$.L.str.51, %rsi
	movabsq	$gimp_double_adjustment_update, %rax
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	xorl	%r9d, %r9d
	movabsq	$xargs, %rcx
	movq	%rcx, %rdx
	addq	$16, %rdx
	addq	$48, %rcx
	movq	-88(%rbp), %rdi
	cmpl	$0, -100(%rbp)
	cmovneq	%rcx, %rdx
	movq	%rdx, -1064(%rbp)       # 8-byte Spill
	movq	%rax, %rdx
	movq	-1064(%rbp), %rcx       # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.51, %rsi
	movabsq	$scale_callback, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movabsq	$xargs, %rdx
	movq	%rdx, %rdi
	addq	$32, %rdi
	movq	-88(%rbp), %r10
	cmpl	$0, -100(%rbp)
	cmovneq	%rdi, %rdx
	movq	%r10, %rdi
	movq	%rdx, -1072(%rbp)       # 8-byte Spill
	movq	%rcx, %rdx
	movq	-1072(%rbp), %rcx       # 8-byte Reload
	movq	%rax, -1080(%rbp)       # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.51, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-88(%rbp), %rdx
	movq	-56(%rbp), %rdi
	movq	%rdi, -1088(%rbp)       # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-1088(%rbp), %rcx       # 8-byte Reload
	movq	%rax, -1096(%rbp)       # 8-byte Spill
	callq	g_signal_connect_data
	movl	$80, %r9d
	movl	%r9d, %esi
	movq	-96(%rbp), %rdi
	movq	-88(%rbp), %rcx
	movq	%rdi, -1104(%rbp)       # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, -1112(%rbp)       # 8-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$.L.str.52, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	-1104(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_size_group_add_widget
	cmpl	$0, -100(%rbp)
	jne	.LBB3_27
# BB#26:                                # %if.then.202
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, -1120(%rbp)       # 8-byte Spill
	callq	gtk_table_get_type
	movq	-1120(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.61, %rdi
	movl	-124(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -124(%rbp)
	movl	%ecx, -1124(%rbp)       # 4-byte Spill
	movq	%rax, -1136(%rbp)       # 8-byte Spill
	callq	gettext
	movl	$1, %esi
	movl	$128, %r8d
	xorl	%r9d, %r9d
	xorps	%xmm0, %xmm0
	movsd	.LCPI3_1, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI3_2, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI3_3, %xmm4         # xmm4 = mem[0],zero
	movl	$3, %ecx
	xorl	%edx, %edx
	movl	%edx, %edi
	movsd	xargs+80, %xmm1         # xmm1 = mem[0],zero
	movq	-1136(%rbp), %r10       # 8-byte Reload
	movq	%rdi, -1144(%rbp)       # 8-byte Spill
	movq	%r10, %rdi
	movl	-1124(%rbp), %edx       # 4-byte Reload
	movl	%ecx, -1148(%rbp)       # 4-byte Spill
	movq	%rax, %rcx
	movsd	%xmm0, -1160(%rbp)      # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-1160(%rbp), %xmm1      # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	$3, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-1160(%rbp), %xmm5      # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-1160(%rbp), %xmm6      # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	callq	gimp_scale_entry_new
	movl	$80, %edx
	movl	%edx, %esi
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.49, %rsi
	movq	-72(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	g_object_set_data
	movl	$80, %r8d
	movl	%r8d, %esi
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.60, %rsi
	movq	-88(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	g_object_set_data
	movabsq	$.L.str.51, %rsi
	movabsq	$gimp_double_adjustment_update, %rax
	movabsq	$xargs, %rcx
	addq	$80, %rcx
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	xorl	%r9d, %r9d
	movq	-88(%rbp), %rdx
	movq	%rdx, %rdi
	movq	%rax, %rdx
	callq	g_signal_connect_data
	movabsq	$.L.str.51, %rsi
	movabsq	$scale_callback, %rcx
	movabsq	$xargs, %rdx
	addq	$64, %rdx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-88(%rbp), %rdi
	movq	%rdx, -1168(%rbp)       # 8-byte Spill
	movq	%rcx, %rdx
	movq	-1168(%rbp), %rcx       # 8-byte Reload
	movq	%rax, -1176(%rbp)       # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.51, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-88(%rbp), %rdx
	movq	-56(%rbp), %rdi
	movq	%rdi, -1184(%rbp)       # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-1184(%rbp), %rcx       # 8-byte Reload
	movq	%rax, -1192(%rbp)       # 8-byte Spill
	callq	g_signal_connect_data
	movl	$80, %r9d
	movl	%r9d, %esi
	movq	-96(%rbp), %rdi
	movq	-88(%rbp), %rcx
	movq	%rdi, -1200(%rbp)       # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, -1208(%rbp)       # 8-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$.L.str.52, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	-1200(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_size_group_add_widget
.LBB3_27:                               # %if.end.215
                                        #   in Loop: Header=BB3_1 Depth=1
	cmpl	$0, -100(%rbp)
	jne	.LBB3_29
# BB#28:                                # %if.then.217
                                        #   in Loop: Header=BB3_1 Depth=1
	movabsq	$.L.str.62, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_mnemonic
	movq	%rax, -136(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -1216(%rbp)       # 8-byte Spill
	callq	gtk_table_get_type
	movq	-1216(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %edx
	movl	$4, %ecx
	xorl	%r8d, %r8d
	movq	-136(%rbp), %rsi
	movl	-124(%rbp), %r9d
	movl	-124(%rbp), %r10d
	addl	$1, %r10d
	movq	%rax, %rdi
	movl	%r8d, -1220(%rbp)       # 4-byte Spill
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$4, (%rsp)
	movl	$0, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	callq	gtk_table_attach
	movq	-136(%rbp), %rax
	movq	%rax, -1232(%rbp)       # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-1232(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	lock_threshold, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-136(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.63, %rsi
	movabsq	$gimp_toggle_button_update, %rax
	movabsq	$lock_threshold, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-136(%rbp), %r11
	movq	%rdi, -1240(%rbp)       # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %rdx
	movq	-1240(%rbp), %rcx       # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.63, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-136(%rbp), %rdx
	movq	-56(%rbp), %rdi
	movq	%rdi, -1248(%rbp)       # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-1248(%rbp), %rcx       # 8-byte Reload
	movq	%rax, -1256(%rbp)       # 8-byte Spill
	callq	g_signal_connect_data
	movq	%rax, -1264(%rbp)       # 8-byte Spill
.LBB3_29:                               # %if.end.227
                                        #   in Loop: Header=BB3_1 Depth=1
	jmp	.LBB3_30
.LBB3_30:                               # %for.inc
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	-100(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -100(%rbp)
	jmp	.LBB3_1
.LBB3_31:                               # %for.end
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-24(%rbp), %rdi
	callq	gtk_widget_show
	movq	-24(%rbp), %rax
	movq	%rax, -1272(%rbp)       # 8-byte Spill
	callq	gimp_dialog_get_type
	movq	-1272(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dialog_run
	cmpl	$-5, %eax
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	movl	%eax, -104(%rbp)
	movq	-24(%rbp), %rdi
	callq	gtk_widget_destroy
	movl	-104(%rbp), %eax
	addq	$1304, %rsp             # imm = 0x518
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end3:
	.size	exchange_dialog, .Lfunc_end3-exchange_dialog
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	exchange,@function
exchange:                               # @exchange
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
	pushq	%rbx
	subq	$360, %rsp              # imm = 0x168
.Ltmp21:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movl	12(%rsi), %eax
	movl	%eax, -164(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB4_2
# BB#1:                                 # %if.then
	leaq	-172(%rbp), %rsi
	leaq	-176(%rbp), %rdx
	movq	-24(%rbp), %rdi
	callq	gimp_preview_get_position
	leaq	-184(%rbp), %rsi
	leaq	-188(%rbp), %rdx
	movq	-24(%rbp), %rdi
	callq	gimp_preview_get_size
	jmp	.LBB4_5
.LBB4_2:                                # %if.else
	leaq	-172(%rbp), %rsi
	leaq	-176(%rbp), %rdx
	leaq	-184(%rbp), %rcx
	leaq	-188(%rbp), %r8
	movq	-16(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_mask_intersect
	cmpl	$0, %eax
	jne	.LBB4_4
# BB#3:                                 # %if.then.3
	jmp	.LBB4_56
.LBB4_4:                                # %if.end
	jmp	.LBB4_5
.LBB4_5:                                # %if.end.4
	movl	-176(%rbp), %eax
	addl	-188(%rbp), %eax
	movl	%eax, -180(%rbp)
	movq	-16(%rbp), %rcx
	movl	(%rcx), %edi
	callq	gimp_drawable_has_alpha
	movl	$1, %edi
	movl	%edi, %esi
	movl	%eax, -168(%rbp)
	movq	-16(%rbp), %rcx
	movl	4(%rcx), %eax
	imull	-164(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %edi
	callq	g_malloc_n
	movabsq	$xargs, %rdi
	leaq	-127(%rbp), %rsi
	leaq	-128(%rbp), %rdx
	leaq	-129(%rbp), %rcx
	movq	%rax, -144(%rbp)
	callq	gimp_rgb_get_uchar
	movabsq	$xargs, %rax
	addq	$32, %rax
	leaq	-130(%rbp), %rsi
	leaq	-131(%rbp), %rdx
	leaq	-132(%rbp), %rcx
	movq	%rax, %rdi
	callq	gimp_rgb_get_uchar
	leaq	-224(%rbp), %rdi
	movabsq	$xargs, %rax
	addq	$64, %rax
	movq	xargs, %rcx
	movq	%rcx, -224(%rbp)
	movq	xargs+8, %rcx
	movq	%rcx, -216(%rbp)
	movq	xargs+16, %rcx
	movq	%rcx, -208(%rbp)
	movq	xargs+24, %rcx
	movq	%rcx, -200(%rbp)
	movq	%rax, %rsi
	callq	gimp_rgb_subtract
	leaq	-224(%rbp), %rdi
	callq	gimp_rgb_clamp
	leaq	-224(%rbp), %rdi
	leaq	-121(%rbp), %rsi
	leaq	-122(%rbp), %rdx
	leaq	-123(%rbp), %rcx
	callq	gimp_rgb_get_uchar
	leaq	-256(%rbp), %rdi
	movabsq	$xargs, %rax
	addq	$64, %rax
	movq	xargs, %rcx
	movq	%rcx, -256(%rbp)
	movq	xargs+8, %rcx
	movq	%rcx, -248(%rbp)
	movq	xargs+16, %rcx
	movq	%rcx, -240(%rbp)
	movq	xargs+24, %rcx
	movq	%rcx, -232(%rbp)
	movq	%rax, %rsi
	callq	gimp_rgb_add
	leaq	-256(%rbp), %rdi
	callq	gimp_rgb_clamp
	leaq	-256(%rbp), %rdi
	leaq	-124(%rbp), %rsi
	leaq	-125(%rbp), %rdx
	leaq	-126(%rbp), %rcx
	callq	gimp_rgb_get_uchar
	movl	$1, %r8d
	movl	%r8d, %esi
	movq	-16(%rbp), %rax
	movl	4(%rax), %r8d
	imull	-164(%rbp), %r8d
	movl	%r8d, %r8d
	movl	%r8d, %edi
	callq	g_malloc_n
	leaq	-72(%rbp), %rdi
	xorl	%r8d, %r8d
	movq	%rax, -152(%rbp)
	movq	-16(%rbp), %rsi
	movl	-172(%rbp), %edx
	movl	-176(%rbp), %ecx
	movl	-184(%rbp), %r9d
	movl	-188(%rbp), %r10d
	movl	%r8d, -276(%rbp)        # 4-byte Spill
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	leaq	-120(%rbp), %rdi
	movl	$1, %ecx
	movq	-16(%rbp), %rsi
	movl	-172(%rbp), %edx
	movl	-176(%rbp), %r8d
	movl	-184(%rbp), %r9d
	movl	-188(%rbp), %r10d
	cmpq	$0, -24(%rbp)
	sete	%r11b
	andb	$1, %r11b
	movzbl	%r11b, %ebx
	movl	%ecx, -280(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	%ebx, (%rsp)
	movl	$1, 8(%rsp)
	callq	gimp_pixel_rgn_init
	movl	-176(%rbp), %ecx
	movl	%ecx, -160(%rbp)
.LBB4_6:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_8 Depth 2
	movl	-160(%rbp), %eax
	cmpl	-180(%rbp), %eax
	jge	.LBB4_53
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB4_6 Depth=1
	leaq	-72(%rbp), %rdi
	movq	-144(%rbp), %rsi
	movl	-172(%rbp), %edx
	movl	-160(%rbp), %ecx
	movl	-184(%rbp), %r8d
	callq	gimp_pixel_rgn_get_row
	movl	$0, -156(%rbp)
.LBB4_8:                                # %for.cond.16
                                        #   Parent Loop BB4_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-156(%rbp), %eax
	cmpl	-184(%rbp), %eax
	jge	.LBB4_48
# BB#9:                                 # %for.body.19
                                        #   in Loop: Header=BB4_8 Depth=2
	movl	-156(%rbp), %eax
	imull	-164(%rbp), %eax
	movslq	%eax, %rcx
	movq	-144(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movb	%sil, -257(%rbp)
	movl	-156(%rbp), %eax
	imull	-164(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-144(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movb	%sil, -258(%rbp)
	movl	-156(%rbp), %eax
	imull	-164(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	-144(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movb	%sil, -259(%rbp)
	movl	-156(%rbp), %eax
	imull	-164(%rbp), %eax
	movl	%eax, -268(%rbp)
	movzbl	-257(%rbp), %eax
	movzbl	-121(%rbp), %edi
	cmpl	%edi, %eax
	jl	.LBB4_43
# BB#10:                                # %land.lhs.true
                                        #   in Loop: Header=BB4_8 Depth=2
	movzbl	-257(%rbp), %eax
	movzbl	-124(%rbp), %ecx
	cmpl	%ecx, %eax
	jg	.LBB4_43
# BB#11:                                # %land.lhs.true.38
                                        #   in Loop: Header=BB4_8 Depth=2
	movzbl	-258(%rbp), %eax
	movzbl	-122(%rbp), %ecx
	cmpl	%ecx, %eax
	jl	.LBB4_43
# BB#12:                                # %land.lhs.true.43
                                        #   in Loop: Header=BB4_8 Depth=2
	movzbl	-258(%rbp), %eax
	movzbl	-125(%rbp), %ecx
	cmpl	%ecx, %eax
	jg	.LBB4_43
# BB#13:                                # %land.lhs.true.48
                                        #   in Loop: Header=BB4_8 Depth=2
	movzbl	-259(%rbp), %eax
	movzbl	-123(%rbp), %ecx
	cmpl	%ecx, %eax
	jl	.LBB4_43
# BB#14:                                # %land.lhs.true.53
                                        #   in Loop: Header=BB4_8 Depth=2
	movzbl	-259(%rbp), %eax
	movzbl	-126(%rbp), %ecx
	cmpl	%ecx, %eax
	jg	.LBB4_43
# BB#15:                                # %if.then.58
                                        #   in Loop: Header=BB4_8 Depth=2
	movzbl	-257(%rbp), %eax
	movzbl	-127(%rbp), %ecx
	cmpl	%ecx, %eax
	jle	.LBB4_17
# BB#16:                                # %cond.true
                                        #   in Loop: Header=BB4_8 Depth=2
	movzbl	-257(%rbp), %eax
	movzbl	-127(%rbp), %ecx
	subl	%ecx, %eax
	movl	%eax, -284(%rbp)        # 4-byte Spill
	jmp	.LBB4_18
.LBB4_17:                               # %cond.false
                                        #   in Loop: Header=BB4_8 Depth=2
	movzbl	-127(%rbp), %eax
	movzbl	-257(%rbp), %ecx
	subl	%ecx, %eax
	movl	%eax, -284(%rbp)        # 4-byte Spill
.LBB4_18:                               # %cond.end
                                        #   in Loop: Header=BB4_8 Depth=2
	movl	-284(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movb	%cl, -269(%rbp)
	movzbl	-258(%rbp), %eax
	movzbl	-128(%rbp), %edx
	cmpl	%edx, %eax
	jle	.LBB4_20
# BB#19:                                # %cond.true.73
                                        #   in Loop: Header=BB4_8 Depth=2
	movzbl	-258(%rbp), %eax
	movzbl	-128(%rbp), %ecx
	subl	%ecx, %eax
	movl	%eax, -288(%rbp)        # 4-byte Spill
	jmp	.LBB4_21
.LBB4_20:                               # %cond.false.77
                                        #   in Loop: Header=BB4_8 Depth=2
	movzbl	-128(%rbp), %eax
	movzbl	-258(%rbp), %ecx
	subl	%ecx, %eax
	movl	%eax, -288(%rbp)        # 4-byte Spill
.LBB4_21:                               # %cond.end.81
                                        #   in Loop: Header=BB4_8 Depth=2
	movl	-288(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movb	%cl, -270(%rbp)
	movzbl	-259(%rbp), %eax
	movzbl	-129(%rbp), %edx
	cmpl	%edx, %eax
	jle	.LBB4_23
# BB#22:                                # %cond.true.88
                                        #   in Loop: Header=BB4_8 Depth=2
	movzbl	-259(%rbp), %eax
	movzbl	-129(%rbp), %ecx
	subl	%ecx, %eax
	movl	%eax, -292(%rbp)        # 4-byte Spill
	jmp	.LBB4_24
.LBB4_23:                               # %cond.false.92
                                        #   in Loop: Header=BB4_8 Depth=2
	movzbl	-129(%rbp), %eax
	movzbl	-259(%rbp), %ecx
	subl	%ecx, %eax
	movl	%eax, -292(%rbp)        # 4-byte Spill
.LBB4_24:                               # %cond.end.96
                                        #   in Loop: Header=BB4_8 Depth=2
	movl	-292(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movb	%cl, -271(%rbp)
	movzbl	-130(%rbp), %eax
	movzbl	-269(%rbp), %edx
	addl	%edx, %eax
	cmpl	$255, %eax
	jle	.LBB4_26
# BB#25:                                # %cond.true.104
                                        #   in Loop: Header=BB4_8 Depth=2
	movl	$255, %eax
	movl	%eax, -296(%rbp)        # 4-byte Spill
	jmp	.LBB4_30
.LBB4_26:                               # %cond.false.105
                                        #   in Loop: Header=BB4_8 Depth=2
	movzbl	-130(%rbp), %eax
	movzbl	-269(%rbp), %ecx
	addl	%ecx, %eax
	cmpl	$0, %eax
	jge	.LBB4_28
# BB#27:                                # %cond.true.111
                                        #   in Loop: Header=BB4_8 Depth=2
	xorl	%eax, %eax
	movl	%eax, -300(%rbp)        # 4-byte Spill
	jmp	.LBB4_29
.LBB4_28:                               # %cond.false.112
                                        #   in Loop: Header=BB4_8 Depth=2
	movzbl	-130(%rbp), %eax
	movzbl	-269(%rbp), %ecx
	addl	%ecx, %eax
	movl	%eax, -300(%rbp)        # 4-byte Spill
.LBB4_29:                               # %cond.end.116
                                        #   in Loop: Header=BB4_8 Depth=2
	movl	-300(%rbp), %eax        # 4-byte Reload
	movl	%eax, -296(%rbp)        # 4-byte Spill
.LBB4_30:                               # %cond.end.118
                                        #   in Loop: Header=BB4_8 Depth=2
	movl	-296(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movb	%cl, -260(%rbp)
	movzbl	-131(%rbp), %eax
	movzbl	-270(%rbp), %edx
	addl	%edx, %eax
	cmpl	$255, %eax
	jle	.LBB4_32
# BB#31:                                # %cond.true.126
                                        #   in Loop: Header=BB4_8 Depth=2
	movl	$255, %eax
	movl	%eax, -304(%rbp)        # 4-byte Spill
	jmp	.LBB4_36
.LBB4_32:                               # %cond.false.127
                                        #   in Loop: Header=BB4_8 Depth=2
	movzbl	-131(%rbp), %eax
	movzbl	-270(%rbp), %ecx
	addl	%ecx, %eax
	cmpl	$0, %eax
	jge	.LBB4_34
# BB#33:                                # %cond.true.133
                                        #   in Loop: Header=BB4_8 Depth=2
	xorl	%eax, %eax
	movl	%eax, -308(%rbp)        # 4-byte Spill
	jmp	.LBB4_35
.LBB4_34:                               # %cond.false.134
                                        #   in Loop: Header=BB4_8 Depth=2
	movzbl	-131(%rbp), %eax
	movzbl	-270(%rbp), %ecx
	addl	%ecx, %eax
	movl	%eax, -308(%rbp)        # 4-byte Spill
.LBB4_35:                               # %cond.end.138
                                        #   in Loop: Header=BB4_8 Depth=2
	movl	-308(%rbp), %eax        # 4-byte Reload
	movl	%eax, -304(%rbp)        # 4-byte Spill
.LBB4_36:                               # %cond.end.140
                                        #   in Loop: Header=BB4_8 Depth=2
	movl	-304(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movb	%cl, -261(%rbp)
	movzbl	-132(%rbp), %eax
	movzbl	-271(%rbp), %edx
	addl	%edx, %eax
	cmpl	$255, %eax
	jle	.LBB4_38
# BB#37:                                # %cond.true.148
                                        #   in Loop: Header=BB4_8 Depth=2
	movl	$255, %eax
	movl	%eax, -312(%rbp)        # 4-byte Spill
	jmp	.LBB4_42
.LBB4_38:                               # %cond.false.149
                                        #   in Loop: Header=BB4_8 Depth=2
	movzbl	-132(%rbp), %eax
	movzbl	-271(%rbp), %ecx
	addl	%ecx, %eax
	cmpl	$0, %eax
	jge	.LBB4_40
# BB#39:                                # %cond.true.155
                                        #   in Loop: Header=BB4_8 Depth=2
	xorl	%eax, %eax
	movl	%eax, -316(%rbp)        # 4-byte Spill
	jmp	.LBB4_41
.LBB4_40:                               # %cond.false.156
                                        #   in Loop: Header=BB4_8 Depth=2
	movzbl	-132(%rbp), %eax
	movzbl	-271(%rbp), %ecx
	addl	%ecx, %eax
	movl	%eax, -316(%rbp)        # 4-byte Spill
.LBB4_41:                               # %cond.end.160
                                        #   in Loop: Header=BB4_8 Depth=2
	movl	-316(%rbp), %eax        # 4-byte Reload
	movl	%eax, -312(%rbp)        # 4-byte Spill
.LBB4_42:                               # %cond.end.162
                                        #   in Loop: Header=BB4_8 Depth=2
	movl	-312(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movb	%cl, -262(%rbp)
	jmp	.LBB4_44
.LBB4_43:                               # %if.else.165
                                        #   in Loop: Header=BB4_8 Depth=2
	movb	-257(%rbp), %al
	movb	%al, -260(%rbp)
	movb	-258(%rbp), %al
	movb	%al, -261(%rbp)
	movb	-259(%rbp), %al
	movb	%al, -262(%rbp)
.LBB4_44:                               # %if.end.166
                                        #   in Loop: Header=BB4_8 Depth=2
	movb	-260(%rbp), %al
	movl	-268(%rbp), %ecx
	addl	$0, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-152(%rbp), %rsi
	movb	%al, (%rsi,%rdx)
	movb	-261(%rbp), %al
	movl	-268(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-152(%rbp), %rsi
	movb	%al, (%rsi,%rdx)
	movb	-262(%rbp), %al
	movl	-268(%rbp), %ecx
	addl	$2, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-152(%rbp), %rsi
	movb	%al, (%rsi,%rdx)
	cmpl	$0, -168(%rbp)
	je	.LBB4_46
# BB#45:                                # %if.then.177
                                        #   in Loop: Header=BB4_8 Depth=2
	movl	-156(%rbp), %eax
	imull	-164(%rbp), %eax
	addl	$3, %eax
	movslq	%eax, %rcx
	movq	-144(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movl	-268(%rbp), %eax
	addl	$3, %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	-152(%rbp), %rdx
	movb	%sil, (%rdx,%rcx)
.LBB4_46:                               # %if.end.185
                                        #   in Loop: Header=BB4_8 Depth=2
	jmp	.LBB4_47
.LBB4_47:                               # %for.inc
                                        #   in Loop: Header=BB4_8 Depth=2
	movl	-156(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -156(%rbp)
	jmp	.LBB4_8
.LBB4_48:                               # %for.end
                                        #   in Loop: Header=BB4_6 Depth=1
	leaq	-120(%rbp), %rdi
	movq	-152(%rbp), %rsi
	movl	-172(%rbp), %edx
	movl	-160(%rbp), %ecx
	movl	-184(%rbp), %r8d
	callq	gimp_pixel_rgn_set_row
	cmpq	$0, -24(%rbp)
	jne	.LBB4_51
# BB#49:                                # %land.lhs.true.187
                                        #   in Loop: Header=BB4_6 Depth=1
	movl	$10, %eax
	movl	-160(%rbp), %ecx
	movl	%eax, -320(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-320(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB4_51
# BB#50:                                # %if.then.190
                                        #   in Loop: Header=BB4_6 Depth=1
	cvtsi2sdl	-160(%rbp), %xmm0
	cvtsi2sdl	-188(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -324(%rbp)        # 4-byte Spill
.LBB4_51:                               # %if.end.194
                                        #   in Loop: Header=BB4_6 Depth=1
	jmp	.LBB4_52
.LBB4_52:                               # %for.inc.195
                                        #   in Loop: Header=BB4_6 Depth=1
	movl	-160(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -160(%rbp)
	jmp	.LBB4_6
.LBB4_53:                               # %for.end.197
	movq	-144(%rbp), %rdi
	callq	g_free
	movq	-152(%rbp), %rdi
	callq	g_free
	cmpq	$0, -24(%rbp)
	je	.LBB4_55
# BB#54:                                # %if.then.199
	movq	-24(%rbp), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	gimp_drawable_preview_get_type
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-120(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_drawable_preview_draw_region
	jmp	.LBB4_56
.LBB4_55:                               # %if.else.202
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	callq	gimp_progress_update
	movq	-16(%rbp), %rdi
	movl	%eax, -340(%rbp)        # 4-byte Spill
	callq	gimp_drawable_flush
	movl	$1, %esi
	movq	-16(%rbp), %rdi
	movl	(%rdi), %edi
	callq	gimp_drawable_merge_shadow
	movq	-16(%rbp), %rcx
	movl	(%rcx), %edi
	movl	-172(%rbp), %esi
	movl	-176(%rbp), %edx
	movl	-184(%rbp), %ecx
	movl	-188(%rbp), %r8d
	movl	%eax, -344(%rbp)        # 4-byte Spill
	callq	gimp_drawable_update
	movl	%eax, -348(%rbp)        # 4-byte Spill
.LBB4_56:                               # %if.end.208
	addq	$360, %rsp              # imm = 0x168
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end4:
	.size	exchange, .Lfunc_end4-exchange
	.cfi_endproc

	.align	16, 0x90
	.type	preview_event_handler,@function
preview_event_handler:                  # @preview_event_handler
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp22:
	.cfi_def_cfa_offset 16
.Ltmp23:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp24:
	.cfi_def_cfa_register %rbp
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, -88(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	callq	gimp_preview_area_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	144(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	callq	gimp_drawable_preview_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	280(%rax), %rax
	movl	(%rax), %ecx
	movl	%ecx, -44(%rbp)
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	subl	$4, %ecx
	movl	%ecx, -108(%rbp)        # 4-byte Spill
	jne	.LBB5_4
	jmp	.LBB5_1
.LBB5_1:                                # %sw.bb
	movq	-88(%rbp), %rax
	cmpl	$2, 52(%rax)
	jne	.LBB5_3
# BB#2:                                 # %if.then
	movq	-16(%rbp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	movl	-44(%rbp), %edi
	movsd	%xmm0, -120(%rbp)       # 8-byte Spill
	callq	gimp_drawable_bpp
	cvtsi2sdl	%eax, %xmm0
	movsd	-120(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movq	-16(%rbp), %rcx
	movsd	32(%rcx), %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rcx
	movsd	%xmm1, -128(%rbp)       # 8-byte Spill
	movsd	%xmm0, -136(%rbp)       # 8-byte Spill
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	callq	gimp_preview_area_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-80(%rbp), %rdi
	cvtsi2sdl	120(%rax), %xmm0
	movsd	-136(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-128(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %edx
	movl	%edx, -28(%rbp)
	movslq	-28(%rbp), %rax
	movq	-40(%rbp), %rcx
	movb	(%rcx,%rax), %r8b
	movl	-28(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rax
	movq	-40(%rbp), %rcx
	movb	(%rcx,%rax), %r9b
	movl	-28(%rbp), %edx
	addl	$2, %edx
	movslq	%edx, %rax
	movq	-40(%rbp), %rcx
	movzbl	%r8b, %esi
	movzbl	%r9b, %edx
	movzbl	(%rcx,%rax), %ecx
	callq	gimp_rgb_set_uchar
	movq	from_colorbutton, %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_color_button_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-80(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_color_button_set_color
.LBB5_3:                                # %if.end
	jmp	.LBB5_5
.LBB5_4:                                # %sw.default
	jmp	.LBB5_5
.LBB5_5:                                # %sw.epilog
	xorl	%eax, %eax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	preview_event_handler, .Lfunc_end5-preview_event_handler
	.cfi_endproc

	.align	16, 0x90
	.type	color_button_callback,@function
color_button_callback:                  # @color_button_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp25:
	.cfi_def_cfa_offset 16
.Ltmp26:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp27:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movl	$80, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -48(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.50, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movl	$80, %edx
	movl	%edx, %esi
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.56, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movl	$80, %edx
	movl	%edx, %esi
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.60, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -40(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB6_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movsd	(%rsi), %xmm0           # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	gtk_adjustment_set_value
.LBB6_2:                                # %if.end
	cmpq	$0, -32(%rbp)
	je	.LBB6_4
# BB#3:                                 # %if.then.9
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movsd	8(%rsi), %xmm0          # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	gtk_adjustment_set_value
.LBB6_4:                                # %if.end.12
	cmpq	$0, -40(%rbp)
	je	.LBB6_6
# BB#5:                                 # %if.then.14
	movq	-40(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movsd	16(%rsi), %xmm0         # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	gtk_adjustment_set_value
.LBB6_6:                                # %if.end.17
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	color_button_callback, .Lfunc_end6-color_button_callback
	.cfi_endproc

	.align	16, 0x90
	.type	scale_callback,@function
scale_callback:                         # @scale_callback
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
	subq	$80, %rsp
	movl	$80, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -32(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.49, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_color_button_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB7_2
# BB#1:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB7_7
.LBB7_2:                                # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_5
# BB#3:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB7_5
# BB#4:                                 # %if.then.5
	movl	$1, -52(%rbp)
	jmp	.LBB7_6
.LBB7_5:                                # %if.else.6
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB7_6:                                # %if.end
	jmp	.LBB7_7
.LBB7_7:                                # %if.end.8
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB7_12
# BB#8:                                 # %if.then.10
	movabsq	$xargs, %rax
	addq	$64, %rax
	cmpq	%rax, -32(%rbp)
	jne	.LBB7_11
# BB#9:                                 # %land.lhs.true.12
	cmpl	$1, lock_threshold
	jne	.LBB7_11
# BB#10:                                # %if.then.14
	movq	-8(%rbp), %rdi
	callq	gtk_adjustment_get_value
	movsd	%xmm0, -64(%rbp)
	movq	-32(%rbp), %rdi
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-64(%rbp), %xmm2        # xmm2 = mem[0],zero
	callq	gimp_rgb_set
.LBB7_11:                               # %if.end.17
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_color_button_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_color_button_set_color
.LBB7_12:                               # %if.end.20
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	scale_callback, .Lfunc_end7-scale_callback
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
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.6
	.quad	.L.str.7
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.8
	.quad	.L.str.9
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.10
	.quad	.L.str.11
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.12
	.quad	.L.str.13
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.14
	.quad	.L.str.15
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.16
	.quad	.L.str.17
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.18
	.quad	.L.str.19
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.20
	.quad	.L.str.21
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.22
	.quad	.L.str.23
	.size	query.args, 288

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
	.asciz	"Input image"
	.size	.L.str.3, 12

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
	.asciz	"from-red"
	.size	.L.str.6, 9

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Red value (from)"
	.size	.L.str.7, 17

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"from-green"
	.size	.L.str.8, 11

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Green value (from)"
	.size	.L.str.9, 19

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"from-blue"
	.size	.L.str.10, 10

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Blue value (from)"
	.size	.L.str.11, 18

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"to-red"
	.size	.L.str.12, 7

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Red value (to)"
	.size	.L.str.13, 15

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"to-green"
	.size	.L.str.14, 9

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Green value (to)"
	.size	.L.str.15, 17

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"to-blue"
	.size	.L.str.16, 8

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Blue value (to)"
	.size	.L.str.17, 16

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"red-threshold"
	.size	.L.str.18, 14

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Red threshold"
	.size	.L.str.19, 14

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"green-threshold"
	.size	.L.str.20, 16

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Green threshold"
	.size	.L.str.21, 16

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"blue-threshold"
	.size	.L.str.22, 15

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Blue threshold"
	.size	.L.str.23, 15

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"plug-in-exchange"
	.size	.L.str.24, 17

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Swap one color with another"
	.size	.L.str.25, 28

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"Exchange one color with another, optionally setting a threshold to convert from one shade to another"
	.size	.L.str.26, 101

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"robert@experimental.net"
	.size	.L.str.27, 24

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"June 17th, 1997"
	.size	.L.str.28, 16

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"_Color Exchange..."
	.size	.L.str.29, 19

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"RGB*"
	.size	.L.str.30, 5

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"<Image>/Colors/Map"
	.size	.L.str.31, 19

	.type	run.values,@object      # @run.values
	.local	run.values
	.comm	run.values,40,16
	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"gimp20-std-plug-ins"
	.size	.L.str.32, 20

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"UTF-8"
	.size	.L.str.33, 6

	.type	xargs,@object           # @xargs
	.data
	.align	8
xargs:
	.quad	0                       # double 0
	.quad	0                       # double 0
	.quad	0                       # double 0
	.quad	4607182418800017408     # double 1
	.quad	0                       # double 0
	.quad	0                       # double 0
	.quad	0                       # double 0
	.quad	4607182418800017408     # double 1
	.quad	0                       # double 0
	.quad	0                       # double 0
	.quad	0                       # double 0
	.quad	4607182418800017408     # double 1
	.size	xargs, 96

	.type	.L.str.34,@object       # @.str.34
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.34:
	.asciz	"Color Exchange"
	.size	.L.str.34, 15

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"color-exchange"
	.size	.L.str.35, 15

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"gimp-color-exchange"
	.size	.L.str.36, 20

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"gtk-cancel"
	.size	.L.str.37, 11

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"gtk-ok"
	.size	.L.str.38, 7

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"Middle-Click Inside Preview to Pick \"From Color\""
	.size	.L.str.39, 49

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"invalidated"
	.size	.L.str.40, 12

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"event"
	.size	.L.str.41, 6

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"color-changed"
	.size	.L.str.42, 14

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"To Color"
	.size	.L.str.43, 9

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"From Color"
	.size	.L.str.44, 11

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"Color Exchange: To Color"
	.size	.L.str.45, 25

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"Color Exchange: From Color"
	.size	.L.str.46, 27

	.type	from_colorbutton,@object # @from_colorbutton
	.local	from_colorbutton
	.comm	from_colorbutton,8,8
	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"gimp-channel-red"
	.size	.L.str.47, 17

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"_Red:"
	.size	.L.str.48, 6

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"colorbutton"
	.size	.L.str.49, 12

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"red"
	.size	.L.str.50, 4

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"value-changed"
	.size	.L.str.51, 14

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"label"
	.size	.L.str.52, 6

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"R_ed threshold:"
	.size	.L.str.53, 16

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"gimp-channel-green"
	.size	.L.str.54, 19

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"_Green:"
	.size	.L.str.55, 8

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"green"
	.size	.L.str.56, 6

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"G_reen threshold:"
	.size	.L.str.57, 18

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"gimp-channel-blue"
	.size	.L.str.58, 18

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"_Blue:"
	.size	.L.str.59, 7

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"blue"
	.size	.L.str.60, 5

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"B_lue threshold:"
	.size	.L.str.61, 17

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"Lock _thresholds"
	.size	.L.str.62, 17

	.type	lock_threshold,@object  # @lock_threshold
	.local	lock_threshold
	.comm	lock_threshold,4,4
	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"clicked"
	.size	.L.str.63, 8


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
