	.text
	.file	"oilify.bc"
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
	subq	$136, %rsp
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
	movabsq	$.L.str.16, %rdi
	movabsq	$.L.str.17, %rsi
	movabsq	$.L.str.18, %rdx
	movabsq	$.L.str.19, %rax
	movabsq	$.L.str.20, %r9
	movabsq	$.L.str.21, %rcx
	movabsq	$.L.str.22, %r8
	movl	$1, %r10d
	movl	$5, %r11d
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
	movl	$5, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%r14, 40(%rsp)
	movq	$0, 48(%rsp)
	movq	%r12, -64(%rbp)         # 8-byte Spill
	movl	%ebx, -68(%rbp)         # 4-byte Spill
	movl	%r10d, -72(%rbp)        # 4-byte Spill
	movl	%r11d, -76(%rbp)        # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.16, %rdi
	movabsq	$.L.str.23, %rsi
	callq	gimp_plugin_menu_register
	movabsq	$.L.str.24, %rdi
	movabsq	$.L.str.17, %rsi
	movabsq	$.L.str.18, %rdx
	movabsq	$.L.str.25, %rcx
	movabsq	$.L.str.26, %r9
	xorl	%r10d, %r10d
	movl	%r10d, %r8d
	movabsq	$.L.str.22, %r14
	movl	$1, %r10d
	movl	$8, %r11d
	xorl	%ebx, %ebx
	movabsq	$query.args_enhanced, %r12
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	movq	-88(%rbp), %r13         # 8-byte Reload
	movq	%r8, -96(%rbp)          # 8-byte Spill
	movq	%r13, %r8
	movq	$0, (%rsp)
	movq	%r14, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$8, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%r12, 40(%rsp)
	movq	$0, 48(%rsp)
	movl	%eax, -100(%rbp)        # 4-byte Spill
	movl	%ebx, -104(%rbp)        # 4-byte Spill
	movl	%r11d, -108(%rbp)       # 4-byte Spill
	movl	%r10d, -112(%rbp)       # 4-byte Spill
	callq	gimp_install_procedure
	addq	$136, %rsp
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

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_0:
	.quad	4607182418800017408     # double 1
	.text
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
	movl	$3, -56(%rbp)
# BB#1:                                 # %do.body
	callq	gimp_locale_directory
	movabsq	$.L.str.27, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.27, %rdi
	movabsq	$.L.str.28, %rsi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.27, %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	textdomain
	movq	%rax, -80(%rbp)         # 8-byte Spill
# BB#2:                                 # %do.end
	movq	-24(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -52(%rbp)
	movq	-24(%rbp), %rax
	movl	88(%rax), %edi
	callq	gimp_drawable_get
	movq	%rax, -48(%rbp)
	movl	20(%rax), %ecx
	addl	%ecx, %ecx
	movl	%ecx, %edi
	callq	gimp_tile_cache_ntiles
	movq	-32(%rbp), %rax
	movl	$1, (%rax)
	movq	-40(%rbp), %rax
	movq	$run.values, (%rax)
	movl	$21, run.values(%rip)
	movl	-56(%rbp), %ecx
	movl	%ecx, run.values+8(%rip)
	movl	-52(%rbp), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -84(%rbp)         # 4-byte Spill
	je	.LBB1_3
	jmp	.LBB1_45
.LBB1_45:                               # %do.end
	movl	-84(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	je	.LBB1_6
	jmp	.LBB1_46
.LBB1_46:                               # %do.end
	movl	-84(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	je	.LBB1_32
	jmp	.LBB1_33
.LBB1_3:                                # %sw.bb
	movabsq	$.L.str.16, %rdi
	movabsq	$ovals, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movq	-48(%rbp), %rdi
	movl	%eax, -96(%rbp)         # 4-byte Spill
	callq	oilify_dialog
	cmpl	$0, %eax
	jne	.LBB1_5
# BB#4:                                 # %if.then
	jmp	.LBB1_44
.LBB1_5:                                # %if.end
	jmp	.LBB1_34
.LBB1_6:                                # %sw.bb.9
	movq	-8(%rbp), %rdi
	movl	$.L.str.16, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_11
# BB#7:                                 # %if.then.12
	cmpl	$5, -12(%rbp)
	je	.LBB1_9
# BB#8:                                 # %if.then.14
	movl	$1, -56(%rbp)
	jmp	.LBB1_10
.LBB1_9:                                # %if.else
	movq	-24(%rbp), %rax
	cvtsi2sdl	128(%rax), %xmm0
	movsd	%xmm0, ovals
	movq	-24(%rbp), %rax
	movl	168(%rax), %ecx
	movl	%ecx, ovals+32
.LBB1_10:                               # %if.end.22
	jmp	.LBB1_31
.LBB1_11:                               # %if.else.23
	movq	-8(%rbp), %rdi
	movl	$.L.str.24, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_30
# BB#12:                                # %if.then.26
	cmpl	$5, -12(%rbp)
	jl	.LBB1_14
# BB#13:                                # %lor.lhs.false
	cmpl	$8, -12(%rbp)
	jle	.LBB1_15
.LBB1_14:                               # %if.then.31
	movl	$1, -56(%rbp)
	jmp	.LBB1_29
.LBB1_15:                               # %if.else.32
	movq	-24(%rbp), %rax
	movl	128(%rax), %ecx
	movl	%ecx, ovals+32
	movq	-24(%rbp), %rax
	cvtsi2sdl	168(%rax), %xmm0
	movsd	%xmm0, ovals
	cmpl	$6, -12(%rbp)
	jl	.LBB1_17
# BB#16:                                # %if.then.42
	movq	-24(%rbp), %rax
	movl	208(%rax), %ecx
	movl	%ecx, ovals+12
.LBB1_17:                               # %if.end.46
	cmpl	$7, -12(%rbp)
	jl	.LBB1_19
# BB#18:                                # %if.then.49
	movq	-24(%rbp), %rax
	cvtsi2sdl	248(%rax), %xmm0
	movsd	%xmm0, ovals+16
.LBB1_19:                               # %if.end.54
	cmpl	$8, -12(%rbp)
	jne	.LBB1_21
# BB#20:                                # %if.then.57
	movq	-24(%rbp), %rax
	movl	288(%rax), %ecx
	movl	%ecx, ovals+28
.LBB1_21:                               # %if.end.61
	movsd	.LCPI1_0, %xmm0         # xmm0 = mem[0],zero
	cmpl	$0, ovals+12
	setge	%al
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, ovals+8
	cmpl	$0, ovals+28
	setge	%al
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, ovals+24
	ucomisd	ovals, %xmm0
	ja	.LBB1_27
# BB#22:                                # %lor.lhs.false.68
	movsd	.LCPI1_0, %xmm0         # xmm0 = mem[0],zero
	ucomisd	ovals+16, %xmm0
	ja	.LBB1_27
# BB#23:                                # %lor.lhs.false.71
	cmpl	$1, ovals+32
	je	.LBB1_25
# BB#24:                                # %land.lhs.true
	cmpl	$0, ovals+32
	jne	.LBB1_27
.LBB1_25:                               # %lor.lhs.false.76
	cmpl	$1, ovals+32
	jne	.LBB1_28
# BB#26:                                # %land.lhs.true.79
	movq	-48(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_is_rgb
	cmpl	$0, %eax
	jne	.LBB1_28
.LBB1_27:                               # %if.then.82
	movl	$1, -56(%rbp)
.LBB1_28:                               # %if.end.83
	jmp	.LBB1_29
.LBB1_29:                               # %if.end.84
	jmp	.LBB1_30
.LBB1_30:                               # %if.end.85
	jmp	.LBB1_31
.LBB1_31:                               # %if.end.86
	jmp	.LBB1_34
.LBB1_32:                               # %sw.bb.87
	movabsq	$.L.str.16, %rdi
	movabsq	$ovals, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jmp	.LBB1_34
.LBB1_33:                               # %sw.default
	jmp	.LBB1_34
.LBB1_34:                               # %sw.epilog
	cmpl	$3, -56(%rbp)
	jne	.LBB1_42
# BB#35:                                # %land.lhs.true.91
	movq	-48(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_is_rgb
	cmpl	$0, %eax
	jne	.LBB1_37
# BB#36:                                # %lor.lhs.false.95
	movq	-48(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_is_gray
	cmpl	$0, %eax
	je	.LBB1_42
.LBB1_37:                               # %if.then.99
	movabsq	$.L.str.29, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_progress_init
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	-48(%rbp), %rdi
	movl	%eax, -104(%rbp)        # 4-byte Spill
	callq	oilify
	cmpl	$1, -52(%rbp)
	je	.LBB1_39
# BB#38:                                # %if.then.104
	callq	gimp_displays_flush
	movl	%eax, -108(%rbp)        # 4-byte Spill
.LBB1_39:                               # %if.end.106
	cmpl	$0, -52(%rbp)
	jne	.LBB1_41
# BB#40:                                # %if.then.109
	movabsq	$.L.str.16, %rdi
	movabsq	$ovals, %rax
	movl	$40, %edx
	movq	%rax, %rsi
	callq	gimp_procedural_db_set_data
	movl	%eax, -112(%rbp)        # 4-byte Spill
.LBB1_41:                               # %if.end.111
	jmp	.LBB1_43
.LBB1_42:                               # %if.else.112
	movl	$0, -56(%rbp)
.LBB1_43:                               # %if.end.113
	movl	-56(%rbp), %eax
	movl	%eax, run.values+8
	movq	-48(%rbp), %rdi
	callq	gimp_drawable_detach
.LBB1_44:                               # %return
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

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_0:
	.quad	4607182418800017408     # double 1
.LCPI3_1:
	.quad	4626322717216342016     # double 20
.LCPI3_2:
	.quad	4616189618054758400     # double 4
.LCPI3_3:
	.quad	4613937818241073152     # double 3
.LCPI3_4:
	.quad	4632233691727265792     # double 50
.LCPI3_5:
	.quad	4617315517961601024     # double 5
	.text
	.align	16, 0x90
	.type	oilify_dialog,@function
oilify_dialog:                          # @oilify_dialog
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
	pushq	%r14
	pushq	%rbx
	subq	$688, %rsp              # imm = 0x2B0
.Ltmp17:
	.cfi_offset %rbx, -32
.Ltmp18:
	.cfi_offset %r14, -24
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdi
	movl	(%rdi), %edi
	callq	gimp_drawable_is_rgb
	movl	%eax, -84(%rbp)
	cmpl	$0, -84(%rbp)
	jne	.LBB3_3
# BB#1:                                 # %land.lhs.true
	cmpl	$1, ovals+32
	jne	.LBB3_3
# BB#2:                                 # %if.then
	movl	$0, ovals+32
.LBB3_3:                                # %if.end
	movabsq	$.L.str.30, %rdi
	xorl	%esi, %esi
	callq	gimp_ui_init
	movabsq	$.L.str.31, %rdi
	callq	gettext
	movabsq	$.L.str.32, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	movabsq	$gimp_standard_help_func, %r8
	movabsq	$.L.str.16, %r9
	movabsq	$.L.str.33, %rdi
	movl	$4294967290, %r10d      # imm = 0xFFFFFFFA
	movabsq	$.L.str.34, %r11
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
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
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
	movq	-32(%rbp), %rdi
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
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-32(%rbp), %rax
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
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	-24(%rbp), %rdi
	callq	gimp_drawable_preview_new
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
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
	movabsq	$.L.str.35, %rsi
	movabsq	$oilify, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movl	$2, %r9d
	movq	-48(%rbp), %rdi
	movq	-24(%rbp), %r11
	movq	%rax, %rdx
	movq	%r11, %rcx
	callq	g_signal_connect_data
	movl	$7, %edi
	movl	$3, %esi
	xorl	%edx, %edx
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_table_new
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-56(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-40(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -188(%rbp)        # 4-byte Spill
	movl	-188(%rbp), %ecx        # 4-byte Reload
	movl	-188(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movq	-56(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.36, %rdi
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	$125, %r8d
	movsd	.LCPI3_3, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI3_4, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI3_0, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI3_5, %xmm4         # xmm4 = mem[0],zero
	movl	$1, %edx
	xorps	%xmm0, %xmm0
	xorl	%r9d, %r9d
	movl	%r9d, %esi
	movsd	ovals, %xmm5            # xmm5 = mem[0],zero
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rsi, -216(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movl	%edx, -220(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	%ecx, -224(%rbp)        # 4-byte Spill
	movq	%rax, %rcx
	movl	-224(%rbp), %r9d        # 4-byte Reload
	movsd	%xmm0, -232(%rbp)       # 8-byte Spill
	movaps	%xmm5, %xmm0
	movl	$0, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-232(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-232(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	callq	gimp_scale_entry_new
	movabsq	$.L.str.37, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	movabsq	$ovals, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rdi, -240(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-240(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.37, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-80(%rbp), %rdx
	movq	-48(%rbp), %rdi
	movq	%rdi, -248(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-248(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.38, %rdi
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_mnemonic
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	$3, %ecx
	movl	$1, %r8d
	movl	$2, %r9d
	movl	$4, %r10d
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	$4, (%rsp)
	movl	$0, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%r10d, -276(%rbp)       # 4-byte Spill
	callq	gtk_table_attach
	movq	-64(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	ovals+8, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.39, %rsi
	movabsq	$gimp_toggle_button_update, %rax
	movabsq	$ovals, %rdi
	addq	$8, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-64(%rbp), %r11
	movq	%rdi, -296(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %rdx
	movq	-296(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.39, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-64(%rbp), %rdx
	movq	-48(%rbp), %rdi
	movq	%rdi, -304(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-304(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$oilify_map_constrain, %rdi
	movq	-24(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	gimp_drawable_combo_box_new
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$gimp_int_combo_box_get_active, %rcx
	movabsq	$ovals, %rdx
	addq	$12, %rdx
	movl	ovals+12, %esi
	movq	%rax, %rdi
	movq	%rdx, -336(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-336(%rbp), %rcx        # 8-byte Reload
	callq	gimp_int_combo_box_connect
	movabsq	$.L.str.40, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-72(%rbp), %rdx
	movq	-48(%rbp), %rdi
	movq	%rdi, -344(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-344(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-56(%rbp), %rcx
	movq	%rax, -360(%rbp)        # 8-byte Spill
	movq	%rcx, -368(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	$3, %r9d
	movl	$2, %r8d
	movl	$5, %r10d
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %ecx
	movl	$5, (%rsp)
	movl	$5, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%r10d, -372(%rbp)       # 4-byte Spill
	callq	gtk_table_attach
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.41, %rsi
	movabsq	$.L.str.42, %rcx
	movl	$2, %r8d
	movq	-64(%rbp), %rax
	movq	-72(%rbp), %rdi
	movq	%rdi, -384(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-384(%rbp), %rdx        # 8-byte Reload
	callq	g_object_bind_property
	movq	-56(%rbp), %rcx
	movq	%rax, -392(%rbp)        # 8-byte Spill
	movq	%rcx, -400(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.43, %rdi
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%r8d, %r8d
	movl	$3, %edx
	movl	$125, %r9d
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI3_1, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI3_2, %xmm4         # xmm4 = mem[0],zero
	movl	$1, %r10d
	xorps	%xmm1, %xmm1
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movsd	ovals+16, %xmm3         # xmm3 = mem[0],zero
	movq	-408(%rbp), %rdi        # 8-byte Reload
	movl	%r8d, %esi
	movq	%rcx, -416(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movl	%r8d, -420(%rbp)        # 4-byte Spill
	movl	%r9d, %r8d
	movl	-420(%rbp), %r9d        # 4-byte Reload
	movsd	%xmm0, -432(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm0
	movsd	-432(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	%xmm1, -440(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm1
	movl	$0, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-440(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-440(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r10d, -444(%rbp)       # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.37, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	movabsq	$ovals, %rdi
	addq	$16, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rdi, -456(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-456(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.37, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-80(%rbp), %rdx
	movq	-48(%rbp), %rdi
	movq	%rdi, -464(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-464(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -472(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.44, %rdi
	movq	%rax, -480(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_mnemonic
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -488(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-488(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	$3, %ecx
	movl	$4, %r8d
	movl	$5, %r9d
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	$4, (%rsp)
	movl	$0, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	callq	gtk_table_attach
	movq	-64(%rbp), %rax
	movq	%rax, -496(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-496(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	ovals+24, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.39, %rsi
	movabsq	$gimp_toggle_button_update, %rax
	movabsq	$ovals, %rdi
	addq	$24, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-64(%rbp), %r11
	movq	%rdi, -504(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %rdx
	movq	-504(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.39, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-64(%rbp), %rdx
	movq	-48(%rbp), %rdi
	movq	%rdi, -512(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-512(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -520(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$oilify_map_constrain, %rdi
	movq	-24(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, -528(%rbp)        # 8-byte Spill
	callq	gimp_drawable_combo_box_new
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -536(%rbp)        # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-536(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$gimp_int_combo_box_get_active, %rcx
	movabsq	$ovals, %rdx
	addq	$28, %rdx
	movl	ovals+28, %esi
	movq	%rax, %rdi
	movq	%rdx, -544(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-544(%rbp), %rcx        # 8-byte Reload
	callq	gimp_int_combo_box_connect
	movabsq	$.L.str.40, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-72(%rbp), %rdx
	movq	-48(%rbp), %rdi
	movq	%rdi, -552(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-552(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -560(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-56(%rbp), %rcx
	movq	%rax, -568(%rbp)        # 8-byte Spill
	movq	%rcx, -576(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-576(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	$3, %ecx
	movl	$5, %r8d
	movl	$6, %r9d
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	movl	$5, (%rsp)
	movl	$5, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	callq	gtk_table_attach
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.41, %rsi
	movabsq	$.L.str.42, %rcx
	movl	$2, %r8d
	movq	-64(%rbp), %rax
	movq	-72(%rbp), %rdi
	movq	%rdi, -584(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-584(%rbp), %rdx        # 8-byte Reload
	callq	g_object_bind_property
	movabsq	$.L.str.45, %rdi
	movq	%rax, -592(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_mnemonic
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -600(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-600(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	$3, %ecx
	movl	$6, %r8d
	movl	$7, %r9d
	movl	$4, %r10d
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	$4, (%rsp)
	movl	$0, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%r10d, -604(%rbp)       # 4-byte Spill
	callq	gtk_table_attach
	movq	-64(%rbp), %rax
	movq	%rax, -616(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-616(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	ovals+32, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-64(%rbp), %rdi
	movl	-84(%rbp), %esi
	callq	gtk_widget_set_sensitive
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.39, %rsi
	movabsq	$gimp_toggle_button_update, %rax
	movabsq	$ovals, %rdi
	addq	$32, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-64(%rbp), %r11
	movq	%rdi, -624(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %rdx
	movq	-624(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.39, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-64(%rbp), %rdx
	movq	-48(%rbp), %rdi
	movq	%rdi, -632(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-632(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -640(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-32(%rbp), %rdi
	movq	%rax, -648(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
	movq	-32(%rbp), %rax
	movq	%rax, -656(%rbp)        # 8-byte Spill
	callq	gimp_dialog_get_type
	movq	-656(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dialog_run
	cmpl	$-5, %eax
	sete	%r14b
	andb	$1, %r14b
	movzbl	%r14b, %eax
	movl	%eax, -88(%rbp)
	movq	-32(%rbp), %rdi
	callq	gtk_widget_destroy
	movl	-88(%rbp), %eax
	addq	$688, %rsp              # imm = 0x2B0
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end3:
	.size	oilify_dialog, .Lfunc_end3-oilify_dialog
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4607182418800017408     # double 1
.LCPI4_1:
	.quad	4602678819172646912     # double 0.5
.LCPI4_2:
	.quad	4596827742536767164     # double 0.21260000000000001
.LCPI4_3:
	.quad	4604617168452267173     # double 0.71519999999999995
.LCPI4_4:
	.quad	4589866978952703325     # double 0.0722
	.text
	.align	16, 0x90
	.type	oilify,@function
oilify:                                 # @oilify
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp19:
	.cfi_def_cfa_offset 16
.Ltmp20:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp21:
	.cfi_def_cfa_register %rbp
	subq	$5776, %rsp             # imm = 0x1690
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -24(%rbp)
	movl	$0, -28(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movl	$0, -148(%rbp)
	movl	$0, -152(%rbp)
	movq	$0, -5424(%rbp)
	cmpl	$1, ovals+32
	sete	%al
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -20(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB4_2
# BB#1:                                 # %if.then
	leaq	-244(%rbp), %rsi
	leaq	-248(%rbp), %rdx
	movq	-16(%rbp), %rdi
	callq	gimp_preview_get_position
	leaq	-260(%rbp), %rsi
	leaq	-264(%rbp), %rdx
	movq	-16(%rbp), %rdi
	callq	gimp_preview_get_size
	movl	-244(%rbp), %eax
	addl	-260(%rbp), %eax
	movl	%eax, -252(%rbp)
	movl	-248(%rbp), %eax
	addl	-264(%rbp), %eax
	movl	%eax, -256(%rbp)
	jmp	.LBB4_3
.LBB4_2:                                # %if.else
	leaq	-244(%rbp), %rsi
	leaq	-248(%rbp), %rdx
	leaq	-252(%rbp), %rcx
	leaq	-256(%rbp), %r8
	movq	-8(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_mask_bounds
	movl	-252(%rbp), %edi
	subl	-244(%rbp), %edi
	movl	%edi, -260(%rbp)
	movl	-256(%rbp), %edi
	subl	-248(%rbp), %edi
	movl	%edi, -264(%rbp)
	movl	%eax, -5668(%rbp)       # 4-byte Spill
.LBB4_3:                                # %if.end
	movl	$4, %eax
	movl	%eax, %esi
	movl	$2, %eax
	movl	$0, -5404(%rbp)
	movl	-260(%rbp), %ecx
	imull	-264(%rbp), %ecx
	movl	%ecx, -5408(%rbp)
	movq	-8(%rbp), %rdx
	movl	12(%rdx), %ecx
	movl	%ecx, -232(%rbp)
	cvttsd2si	ovals, %ecx
	movl	%eax, -5672(%rbp)       # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-5672(%rbp), %ecx       # 4-byte Reload
	idivl	%ecx
	addl	$1, %eax
	movl	%eax, -5432(%rbp)
	movslq	-5432(%rbp), %rdi
	callq	g_malloc_n
	movq	%rax, -240(%rbp)
	movl	$0, -5428(%rbp)
.LBB4_4:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-5428(%rbp), %eax
	cmpl	-5432(%rbp), %eax
	jge	.LBB4_7
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB4_4 Depth=1
	movl	-5428(%rbp), %eax
	imull	-5428(%rbp), %eax
	movslq	-5428(%rbp), %rcx
	movq	-240(%rbp), %rdx
	movl	%eax, (%rdx,%rcx,4)
# BB#6:                                 # %for.inc
                                        #   in Loop: Header=BB4_4 Depth=1
	movl	-5428(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -5428(%rbp)
	jmp	.LBB4_4
.LBB4_7:                                # %for.end
	cmpl	$0, ovals+8
	je	.LBB4_10
# BB#8:                                 # %land.lhs.true
	cmpl	$0, ovals+12
	jl	.LBB4_10
# BB#9:                                 # %if.then.14
	movl	$1, -24(%rbp)
	movl	ovals+12, %edi
	callq	gimp_drawable_get
	leaq	-96(%rbp), %rdi
	xorl	%ecx, %ecx
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rsi
	movl	-244(%rbp), %edx
	movl	-248(%rbp), %r8d
	movl	-260(%rbp), %r9d
	movl	-264(%rbp), %r10d
	movl	%ecx, -5676(%rbp)       # 4-byte Spill
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	movq	-40(%rbp), %rax
	movl	12(%rax), %ecx
	movl	%ecx, -148(%rbp)
.LBB4_10:                               # %if.end.17
	cmpl	$0, ovals+24
	je	.LBB4_13
# BB#11:                                # %land.lhs.true.19
	cmpl	$0, ovals+28
	jl	.LBB4_13
# BB#12:                                # %if.then.22
	movl	$1, -28(%rbp)
	movl	ovals+28, %edi
	callq	gimp_drawable_get
	leaq	-144(%rbp), %rdi
	xorl	%ecx, %ecx
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rsi
	movl	-244(%rbp), %edx
	movl	-248(%rbp), %r8d
	movl	-260(%rbp), %r9d
	movl	-264(%rbp), %r10d
	movl	%ecx, -5680(%rbp)       # 4-byte Spill
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	movq	-48(%rbp), %rax
	movl	12(%rax), %ecx
	movl	%ecx, -152(%rbp)
.LBB4_13:                               # %if.end.25
	leaq	-200(%rbp), %rdi
	movl	$1, %eax
	movq	-8(%rbp), %rsi
	movl	-244(%rbp), %edx
	movl	-248(%rbp), %ecx
	movl	-260(%rbp), %r8d
	movl	-264(%rbp), %r9d
	cmpq	$0, -16(%rbp)
	sete	%r10b
	andb	$1, %r10b
	movzbl	%r10b, %r11d
	movl	%r11d, (%rsp)
	movl	$1, 8(%rsp)
	movl	%eax, -5684(%rbp)       # 4-byte Spill
	callq	gimp_pixel_rgn_init
	leaq	-5480(%rbp), %rdi
	xorl	%eax, %eax
	movq	-8(%rbp), %rsi
	movl	-244(%rbp), %edx
	movl	-248(%rbp), %ecx
	movl	-260(%rbp), %r8d
	movl	-264(%rbp), %r9d
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	movl	%eax, -5688(%rbp)       # 4-byte Spill
	callq	gimp_pixel_rgn_init
	movl	$1, %eax
	movl	%eax, %esi
	movl	-260(%rbp), %eax
	imull	-264(%rbp), %eax
	imull	-232(%rbp), %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	leaq	-5480(%rbp), %rdi
	movq	%rax, -5416(%rbp)
	movq	-5416(%rbp), %rsi
	movl	-244(%rbp), %edx
	movl	-248(%rbp), %ecx
	movl	-260(%rbp), %r8d
	movl	-264(%rbp), %r9d
	callq	gimp_pixel_rgn_get_rect
	cmpl	$0, -20(%rbp)
	je	.LBB4_19
# BB#14:                                # %if.then.33
	movl	$1, %eax
	movl	%eax, %esi
	movl	-260(%rbp), %eax
	imull	-264(%rbp), %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	movq	%rax, -5424(%rbp)
	movl	$0, -5428(%rbp)
	movq	-5416(%rbp), %rax
	movq	%rax, -5488(%rbp)
	movq	-5424(%rbp), %rax
	movq	%rax, -5496(%rbp)
.LBB4_15:                               # %for.cond.37
                                        # =>This Inner Loop Header: Depth=1
	movl	-5428(%rbp), %eax
	movl	-260(%rbp), %ecx
	imull	-264(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB4_18
# BB#16:                                # %for.body.41
                                        #   in Loop: Header=BB4_15 Depth=1
	movq	-5488(%rbp), %rax
	movzbl	(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm0
	movsd	.LCPI4_2(%rip), %xmm1   # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movzbl	1(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm1
	movsd	.LCPI4_3(%rip), %xmm2   # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	movzbl	2(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm1
	movsd	.LCPI4_4(%rip), %xmm2   # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movb	%cl, %dl
	movq	-5496(%rbp), %rax
	movb	%dl, (%rax)
# BB#17:                                # %for.inc.57
                                        #   in Loop: Header=BB4_15 Depth=1
	movl	-5428(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -5428(%rbp)
	movl	-232(%rbp), %eax
	movq	-5488(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -5488(%rbp)
	movq	-5496(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -5496(%rbp)
	jmp	.LBB4_15
.LBB4_18:                               # %for.end.59
	jmp	.LBB4_19
.LBB4_19:                               # %if.end.60
	leaq	-200(%rbp), %rax
	movl	$0, -228(%rbp)
	movl	-228(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -228(%rbp)
	movslq	%ecx, %rsi
	movq	%rax, -224(%rbp,%rsi,8)
	cmpl	$0, -24(%rbp)
	je	.LBB4_21
# BB#20:                                # %if.then.65
	leaq	-96(%rbp), %rax
	movl	-228(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -228(%rbp)
	movslq	%ecx, %rsi
	movq	%rax, -224(%rbp,%rsi,8)
.LBB4_21:                               # %if.end.69
	cmpl	$0, -28(%rbp)
	je	.LBB4_23
# BB#22:                                # %if.then.71
	leaq	-144(%rbp), %rax
	movl	-228(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -228(%rbp)
	movslq	%ecx, %rsi
	movq	%rax, -224(%rbp,%rsi,8)
.LBB4_23:                               # %if.end.75
	leaq	-224(%rbp), %rsi
	movl	-228(%rbp), %edi
	callq	gimp_pixel_rgns_register2
	movq	%rax, -5400(%rbp)
.LBB4_24:                               # %for.cond.77
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_26 Depth 2
                                        #       Child Loop BB4_28 Depth 3
                                        #         Child Loop BB4_61 Depth 4
                                        #           Child Loop BB4_66 Depth 5
                                        #             Child Loop BB4_74 Depth 6
                                        #             Child Loop BB4_79 Depth 6
                                        #         Child Loop BB4_90 Depth 4
	cmpq	$0, -5400(%rbp)
	je	.LBB4_103
# BB#25:                                # %for.body.80
                                        #   in Loop: Header=BB4_24 Depth=1
	movq	$0, -5520(%rbp)
	movq	$0, -5528(%rbp)
	movl	-172(%rbp), %eax
	movl	%eax, -5500(%rbp)
	movq	-200(%rbp), %rcx
	movq	%rcx, -5512(%rbp)
	movq	-96(%rbp), %rcx
	movq	%rcx, -5520(%rbp)
	movq	-144(%rbp), %rcx
	movq	%rcx, -5528(%rbp)
.LBB4_26:                               # %for.cond.84
                                        #   Parent Loop BB4_24 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_28 Depth 3
                                        #         Child Loop BB4_61 Depth 4
                                        #           Child Loop BB4_66 Depth 5
                                        #             Child Loop BB4_74 Depth 6
                                        #             Child Loop BB4_79 Depth 6
                                        #         Child Loop BB4_90 Depth 4
	movl	-5500(%rbp), %eax
	movl	-172(%rbp), %ecx
	addl	-164(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB4_98
# BB#27:                                # %for.body.89
                                        #   in Loop: Header=BB4_26 Depth=2
	movq	$0, -5552(%rbp)
	movq	$0, -5560(%rbp)
	movl	-176(%rbp), %eax
	movl	%eax, -5532(%rbp)
	movq	-5512(%rbp), %rcx
	movq	%rcx, -5544(%rbp)
	movq	-5520(%rbp), %rcx
	movq	%rcx, -5552(%rbp)
	movq	-5528(%rbp), %rcx
	movq	%rcx, -5560(%rbp)
.LBB4_28:                               # %for.cond.92
                                        #   Parent Loop BB4_24 Depth=1
                                        #     Parent Loop BB4_26 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB4_61 Depth 4
                                        #           Child Loop BB4_66 Depth 5
                                        #             Child Loop BB4_74 Depth 6
                                        #             Child Loop BB4_79 Depth 6
                                        #         Child Loop BB4_90 Depth 4
	movl	-5532(%rbp), %eax
	movl	-176(%rbp), %ecx
	addl	-168(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB4_96
# BB#29:                                # %for.body.97
                                        #   in Loop: Header=BB4_28 Depth=3
	movq	$0, -5616(%rbp)
	cmpl	$0, -24(%rbp)
	je	.LBB4_31
# BB#30:                                # %if.then.99
                                        #   in Loop: Header=BB4_28 Depth=3
	movq	-5552(%rbp), %rdi
	movl	-148(%rbp), %esi
	callq	get_map_value
	movsd	.LCPI4_1, %xmm1         # xmm1 = mem[0],zero
	movss	%xmm0, -5620(%rbp)
	cvtss2sd	-5620(%rbp), %xmm0
	movaps	%xmm1, %xmm2
	mulsd	ovals, %xmm2
	mulsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %esi
	movl	%esi, -5564(%rbp)
	jmp	.LBB4_32
.LBB4_31:                               # %if.else.106
                                        #   in Loop: Header=BB4_28 Depth=3
	movl	$2, %eax
	cvttsd2si	ovals, %ecx
	movl	%eax, -5692(%rbp)       # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-5692(%rbp), %ecx       # 4-byte Reload
	idivl	%ecx
	movl	%eax, -5564(%rbp)
.LBB4_32:                               # %if.end.109
                                        #   in Loop: Header=BB4_28 Depth=3
	movl	-5564(%rbp), %eax
	imull	-5564(%rbp), %eax
	movl	%eax, -5568(%rbp)
	cvtsd2ss	ovals+16, %xmm0
	movss	%xmm0, -5572(%rbp)
	cmpl	$0, -28(%rbp)
	je	.LBB4_34
# BB#33:                                # %if.then.113
                                        #   in Loop: Header=BB4_28 Depth=3
	movq	-5560(%rbp), %rdi
	movl	-152(%rbp), %esi
	callq	get_map_value
	mulss	-5572(%rbp), %xmm0
	movss	%xmm0, -5572(%rbp)
.LBB4_34:                               # %if.end.116
                                        #   in Loop: Header=BB4_28 Depth=3
	cmpl	$0, -20(%rbp)
	je	.LBB4_36
# BB#35:                                # %if.then.118
                                        #   in Loop: Header=BB4_28 Depth=3
	xorl	%esi, %esi
	movl	$1024, %eax             # imm = 0x400
	movl	%eax, %edx
	leaq	-1296(%rbp), %rcx
	movq	%rcx, %rdi
	callq	memset
.LBB4_36:                               # %if.end.119
                                        #   in Loop: Header=BB4_28 Depth=3
	xorl	%esi, %esi
	movl	$4096, %eax             # imm = 0x1000
	movl	%eax, %edx
	leaq	-5392(%rbp), %rcx
	movq	%rcx, %rdi
	callq	memset
	movl	-5532(%rbp), %eax
	subl	-5564(%rbp), %eax
	cmpl	-252(%rbp), %eax
	jle	.LBB4_38
# BB#37:                                # %cond.true
                                        #   in Loop: Header=BB4_28 Depth=3
	movl	-252(%rbp), %eax
	movl	%eax, -5696(%rbp)       # 4-byte Spill
	jmp	.LBB4_42
.LBB4_38:                               # %cond.false
                                        #   in Loop: Header=BB4_28 Depth=3
	movl	-5532(%rbp), %eax
	subl	-5564(%rbp), %eax
	cmpl	-244(%rbp), %eax
	jge	.LBB4_40
# BB#39:                                # %cond.true.126
                                        #   in Loop: Header=BB4_28 Depth=3
	movl	-244(%rbp), %eax
	movl	%eax, -5700(%rbp)       # 4-byte Spill
	jmp	.LBB4_41
.LBB4_40:                               # %cond.false.127
                                        #   in Loop: Header=BB4_28 Depth=3
	movl	-5532(%rbp), %eax
	subl	-5564(%rbp), %eax
	movl	%eax, -5700(%rbp)       # 4-byte Spill
.LBB4_41:                               # %cond.end
                                        #   in Loop: Header=BB4_28 Depth=3
	movl	-5700(%rbp), %eax       # 4-byte Reload
	movl	%eax, -5696(%rbp)       # 4-byte Spill
.LBB4_42:                               # %cond.end.129
                                        #   in Loop: Header=BB4_28 Depth=3
	movl	-5696(%rbp), %eax       # 4-byte Reload
	movl	%eax, -5576(%rbp)
	movl	-5500(%rbp), %eax
	subl	-5564(%rbp), %eax
	cmpl	-256(%rbp), %eax
	jle	.LBB4_44
# BB#43:                                # %cond.true.134
                                        #   in Loop: Header=BB4_28 Depth=3
	movl	-256(%rbp), %eax
	movl	%eax, -5704(%rbp)       # 4-byte Spill
	jmp	.LBB4_48
.LBB4_44:                               # %cond.false.135
                                        #   in Loop: Header=BB4_28 Depth=3
	movl	-5500(%rbp), %eax
	subl	-5564(%rbp), %eax
	cmpl	-248(%rbp), %eax
	jge	.LBB4_46
# BB#45:                                # %cond.true.139
                                        #   in Loop: Header=BB4_28 Depth=3
	movl	-248(%rbp), %eax
	movl	%eax, -5708(%rbp)       # 4-byte Spill
	jmp	.LBB4_47
.LBB4_46:                               # %cond.false.140
                                        #   in Loop: Header=BB4_28 Depth=3
	movl	-5500(%rbp), %eax
	subl	-5564(%rbp), %eax
	movl	%eax, -5708(%rbp)       # 4-byte Spill
.LBB4_47:                               # %cond.end.142
                                        #   in Loop: Header=BB4_28 Depth=3
	movl	-5708(%rbp), %eax       # 4-byte Reload
	movl	%eax, -5704(%rbp)       # 4-byte Spill
.LBB4_48:                               # %cond.end.144
                                        #   in Loop: Header=BB4_28 Depth=3
	movl	-5704(%rbp), %eax       # 4-byte Reload
	movl	%eax, -5580(%rbp)
	movl	-5532(%rbp), %eax
	addl	-5564(%rbp), %eax
	addl	$1, %eax
	cmpl	-252(%rbp), %eax
	jle	.LBB4_50
# BB#49:                                # %cond.true.150
                                        #   in Loop: Header=BB4_28 Depth=3
	movl	-252(%rbp), %eax
	movl	%eax, -5712(%rbp)       # 4-byte Spill
	jmp	.LBB4_54
.LBB4_50:                               # %cond.false.151
                                        #   in Loop: Header=BB4_28 Depth=3
	movl	-5532(%rbp), %eax
	addl	-5564(%rbp), %eax
	addl	$1, %eax
	cmpl	-244(%rbp), %eax
	jge	.LBB4_52
# BB#51:                                # %cond.true.156
                                        #   in Loop: Header=BB4_28 Depth=3
	movl	-244(%rbp), %eax
	movl	%eax, -5716(%rbp)       # 4-byte Spill
	jmp	.LBB4_53
.LBB4_52:                               # %cond.false.157
                                        #   in Loop: Header=BB4_28 Depth=3
	movl	-5532(%rbp), %eax
	addl	-5564(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -5716(%rbp)       # 4-byte Spill
.LBB4_53:                               # %cond.end.160
                                        #   in Loop: Header=BB4_28 Depth=3
	movl	-5716(%rbp), %eax       # 4-byte Reload
	movl	%eax, -5712(%rbp)       # 4-byte Spill
.LBB4_54:                               # %cond.end.162
                                        #   in Loop: Header=BB4_28 Depth=3
	movl	-5712(%rbp), %eax       # 4-byte Reload
	movl	%eax, -5584(%rbp)
	movl	-5500(%rbp), %eax
	addl	-5564(%rbp), %eax
	addl	$1, %eax
	cmpl	-256(%rbp), %eax
	jle	.LBB4_56
# BB#55:                                # %cond.true.168
                                        #   in Loop: Header=BB4_28 Depth=3
	movl	-256(%rbp), %eax
	movl	%eax, -5720(%rbp)       # 4-byte Spill
	jmp	.LBB4_60
.LBB4_56:                               # %cond.false.169
                                        #   in Loop: Header=BB4_28 Depth=3
	movl	-5500(%rbp), %eax
	addl	-5564(%rbp), %eax
	addl	$1, %eax
	cmpl	-248(%rbp), %eax
	jge	.LBB4_58
# BB#57:                                # %cond.true.174
                                        #   in Loop: Header=BB4_28 Depth=3
	movl	-248(%rbp), %eax
	movl	%eax, -5724(%rbp)       # 4-byte Spill
	jmp	.LBB4_59
.LBB4_58:                               # %cond.false.175
                                        #   in Loop: Header=BB4_28 Depth=3
	movl	-5500(%rbp), %eax
	addl	-5564(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -5724(%rbp)       # 4-byte Spill
.LBB4_59:                               # %cond.end.178
                                        #   in Loop: Header=BB4_28 Depth=3
	movl	-5724(%rbp), %eax       # 4-byte Reload
	movl	%eax, -5720(%rbp)       # 4-byte Spill
.LBB4_60:                               # %cond.end.180
                                        #   in Loop: Header=BB4_28 Depth=3
	movl	-5720(%rbp), %eax       # 4-byte Reload
	movl	%eax, -5588(%rbp)
	movl	-5580(%rbp), %eax
	subl	-248(%rbp), %eax
	imull	-260(%rbp), %eax
	movl	-5576(%rbp), %ecx
	subl	-244(%rbp), %ecx
	addl	%ecx, %eax
	movl	%eax, -5596(%rbp)
	movl	-5580(%rbp), %eax
	movl	%eax, -5592(%rbp)
	movq	-5416(%rbp), %rdx
	movl	-5596(%rbp), %eax
	imull	-232(%rbp), %eax
	movslq	%eax, %rsi
	addq	%rsi, %rdx
	movq	%rdx, -5608(%rbp)
	movq	-5424(%rbp), %rdx
	movslq	-5596(%rbp), %rsi
	addq	%rsi, %rdx
	movq	%rdx, -5616(%rbp)
.LBB4_61:                               # %for.cond.191
                                        #   Parent Loop BB4_24 Depth=1
                                        #     Parent Loop BB4_26 Depth=2
                                        #       Parent Loop BB4_28 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB4_66 Depth 5
                                        #             Child Loop BB4_74 Depth 6
                                        #             Child Loop BB4_79 Depth 6
	movl	-5592(%rbp), %eax
	cmpl	-5588(%rbp), %eax
	jge	.LBB4_87
# BB#62:                                # %for.body.194
                                        #   in Loop: Header=BB4_61 Depth=4
	movq	$0, -5640(%rbp)
	movl	-5592(%rbp), %eax
	subl	-5500(%rbp), %eax
	cmpl	$0, %eax
	jge	.LBB4_64
# BB#63:                                # %cond.true.199
                                        #   in Loop: Header=BB4_61 Depth=4
	xorl	%eax, %eax
	movl	-5592(%rbp), %ecx
	subl	-5500(%rbp), %ecx
	subl	%ecx, %eax
	movl	%eax, -5728(%rbp)       # 4-byte Spill
	jmp	.LBB4_65
.LBB4_64:                               # %cond.false.202
                                        #   in Loop: Header=BB4_61 Depth=4
	movl	-5592(%rbp), %eax
	subl	-5500(%rbp), %eax
	movl	%eax, -5728(%rbp)       # 4-byte Spill
.LBB4_65:                               # %cond.end.204
                                        #   in Loop: Header=BB4_61 Depth=4
	movl	-5728(%rbp), %eax       # 4-byte Reload
	movslq	%eax, %rcx
	movq	-240(%rbp), %rdx
	movl	(%rdx,%rcx,4), %eax
	movl	%eax, -5644(%rbp)
	movl	-5576(%rbp), %eax
	movl	%eax, -5648(%rbp)
	movq	-5608(%rbp), %rcx
	movq	%rcx, -5632(%rbp)
	movq	-5616(%rbp), %rcx
	movq	%rcx, -5640(%rbp)
.LBB4_66:                               # %for.cond.208
                                        #   Parent Loop BB4_24 Depth=1
                                        #     Parent Loop BB4_26 Depth=2
                                        #       Parent Loop BB4_28 Depth=3
                                        #         Parent Loop BB4_61 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB4_74 Depth 6
                                        #             Child Loop BB4_79 Depth 6
	movl	-5648(%rbp), %eax
	cmpl	-5584(%rbp), %eax
	jge	.LBB4_85
# BB#67:                                # %for.body.211
                                        #   in Loop: Header=BB4_66 Depth=5
	movl	-5648(%rbp), %eax
	subl	-5532(%rbp), %eax
	cmpl	$0, %eax
	jge	.LBB4_69
# BB#68:                                # %cond.true.215
                                        #   in Loop: Header=BB4_66 Depth=5
	xorl	%eax, %eax
	movl	-5648(%rbp), %ecx
	subl	-5532(%rbp), %ecx
	subl	%ecx, %eax
	movl	%eax, -5732(%rbp)       # 4-byte Spill
	jmp	.LBB4_70
.LBB4_69:                               # %cond.false.218
                                        #   in Loop: Header=BB4_66 Depth=5
	movl	-5648(%rbp), %eax
	subl	-5532(%rbp), %eax
	movl	%eax, -5732(%rbp)       # 4-byte Spill
.LBB4_70:                               # %cond.end.220
                                        #   in Loop: Header=BB4_66 Depth=5
	movl	-5732(%rbp), %eax       # 4-byte Reload
	movslq	%eax, %rcx
	movq	-240(%rbp), %rdx
	movl	(%rdx,%rcx,4), %eax
	movl	%eax, -5652(%rbp)
	movl	-5652(%rbp), %eax
	addl	-5644(%rbp), %eax
	cmpl	-5568(%rbp), %eax
	jle	.LBB4_72
# BB#71:                                # %if.then.227
                                        #   in Loop: Header=BB4_66 Depth=5
	jmp	.LBB4_84
.LBB4_72:                               # %if.end.228
                                        #   in Loop: Header=BB4_66 Depth=5
	cmpl	$0, -20(%rbp)
	je	.LBB4_78
# BB#73:                                # %if.then.230
                                        #   in Loop: Header=BB4_66 Depth=5
	movq	-5640(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -5660(%rbp)
	movslq	-5660(%rbp), %rax
	movl	-1296(%rbp,%rax,4), %ecx
	addl	$1, %ecx
	movl	%ecx, -1296(%rbp,%rax,4)
	movl	$0, -5656(%rbp)
.LBB4_74:                               # %for.cond.235
                                        #   Parent Loop BB4_24 Depth=1
                                        #     Parent Loop BB4_26 Depth=2
                                        #       Parent Loop BB4_28 Depth=3
                                        #         Parent Loop BB4_61 Depth=4
                                        #           Parent Loop BB4_66 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	movl	-5656(%rbp), %eax
	cmpl	-232(%rbp), %eax
	jge	.LBB4_77
# BB#75:                                # %for.body.238
                                        #   in Loop: Header=BB4_74 Depth=6
	leaq	-5392(%rbp), %rax
	movslq	-5656(%rbp), %rcx
	movq	-5632(%rbp), %rdx
	movzbl	(%rdx,%rcx), %esi
	movslq	-5660(%rbp), %rcx
	movslq	-5656(%rbp), %rdx
	shlq	$10, %rdx
	addq	%rdx, %rax
	addl	(%rax,%rcx,4), %esi
	movl	%esi, (%rax,%rcx,4)
# BB#76:                                # %for.inc.247
                                        #   in Loop: Header=BB4_74 Depth=6
	movl	-5656(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -5656(%rbp)
	jmp	.LBB4_74
.LBB4_77:                               # %for.end.249
                                        #   in Loop: Header=BB4_66 Depth=5
	jmp	.LBB4_83
.LBB4_78:                               # %if.else.250
                                        #   in Loop: Header=BB4_66 Depth=5
	movl	$0, -5656(%rbp)
.LBB4_79:                               # %for.cond.251
                                        #   Parent Loop BB4_24 Depth=1
                                        #     Parent Loop BB4_26 Depth=2
                                        #       Parent Loop BB4_28 Depth=3
                                        #         Parent Loop BB4_61 Depth=4
                                        #           Parent Loop BB4_66 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	movl	-5656(%rbp), %eax
	cmpl	-232(%rbp), %eax
	jge	.LBB4_82
# BB#80:                                # %for.body.254
                                        #   in Loop: Header=BB4_79 Depth=6
	leaq	-5392(%rbp), %rax
	movslq	-5656(%rbp), %rcx
	movq	-5632(%rbp), %rdx
	movzbl	(%rdx,%rcx), %esi
	movl	%esi, %ecx
	movslq	-5656(%rbp), %rdx
	shlq	$10, %rdx
	addq	%rdx, %rax
	movl	(%rax,%rcx,4), %esi
	addl	$1, %esi
	movl	%esi, (%rax,%rcx,4)
# BB#81:                                # %for.inc.262
                                        #   in Loop: Header=BB4_79 Depth=6
	movl	-5656(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -5656(%rbp)
	jmp	.LBB4_79
.LBB4_82:                               # %for.end.264
                                        #   in Loop: Header=BB4_66 Depth=5
	jmp	.LBB4_83
.LBB4_83:                               # %if.end.265
                                        #   in Loop: Header=BB4_66 Depth=5
	jmp	.LBB4_84
.LBB4_84:                               # %for.inc.266
                                        #   in Loop: Header=BB4_66 Depth=5
	movl	-5648(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -5648(%rbp)
	movl	-232(%rbp), %eax
	movq	-5632(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -5632(%rbp)
	movq	-5640(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -5640(%rbp)
	jmp	.LBB4_66
.LBB4_85:                               # %for.end.271
                                        #   in Loop: Header=BB4_61 Depth=4
	jmp	.LBB4_86
.LBB4_86:                               # %for.inc.272
                                        #   in Loop: Header=BB4_61 Depth=4
	movl	-5592(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -5592(%rbp)
	movl	-260(%rbp), %eax
	imull	-232(%rbp), %eax
	movq	-5608(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -5608(%rbp)
	movl	-260(%rbp), %eax
	movq	-5616(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -5616(%rbp)
	jmp	.LBB4_61
.LBB4_87:                               # %for.end.279
                                        #   in Loop: Header=BB4_28 Depth=3
	cmpl	$0, -20(%rbp)
	je	.LBB4_89
# BB#88:                                # %if.then.281
                                        #   in Loop: Header=BB4_28 Depth=3
	leaq	-5392(%rbp), %rsi
	leaq	-1296(%rbp), %rdi
	movss	-5572(%rbp), %xmm0      # xmm0 = mem[0],zero,zero,zero
	movq	-5544(%rbp), %rdx
	movl	-232(%rbp), %ecx
	callq	weighted_average_color
	jmp	.LBB4_94
.LBB4_89:                               # %if.else.284
                                        #   in Loop: Header=BB4_28 Depth=3
	movl	$0, -5664(%rbp)
.LBB4_90:                               # %for.cond.286
                                        #   Parent Loop BB4_24 Depth=1
                                        #     Parent Loop BB4_26 Depth=2
                                        #       Parent Loop BB4_28 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	-5664(%rbp), %eax
	cmpl	-232(%rbp), %eax
	jge	.LBB4_93
# BB#91:                                # %for.body.289
                                        #   in Loop: Header=BB4_90 Depth=4
	leaq	-5392(%rbp), %rax
	movslq	-5664(%rbp), %rcx
	shlq	$10, %rcx
	addq	%rcx, %rax
	movss	-5572(%rbp), %xmm0      # xmm0 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	weighted_average_value
	movslq	-5664(%rbp), %rcx
	movq	-5544(%rbp), %rdi
	movb	%al, (%rdi,%rcx)
# BB#92:                                # %for.inc.296
                                        #   in Loop: Header=BB4_90 Depth=4
	movl	-5664(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -5664(%rbp)
	jmp	.LBB4_90
.LBB4_93:                               # %for.end.298
                                        #   in Loop: Header=BB4_28 Depth=3
	jmp	.LBB4_94
.LBB4_94:                               # %if.end.299
                                        #   in Loop: Header=BB4_28 Depth=3
	jmp	.LBB4_95
.LBB4_95:                               # %for.inc.300
                                        #   in Loop: Header=BB4_28 Depth=3
	movl	-5532(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -5532(%rbp)
	movl	-232(%rbp), %eax
	movq	-5544(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -5544(%rbp)
	movl	-148(%rbp), %eax
	movq	-5552(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -5552(%rbp)
	movl	-152(%rbp), %eax
	movq	-5560(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -5560(%rbp)
	jmp	.LBB4_28
.LBB4_96:                               # %for.end.308
                                        #   in Loop: Header=BB4_26 Depth=2
	jmp	.LBB4_97
.LBB4_97:                               # %for.inc.309
                                        #   in Loop: Header=BB4_26 Depth=2
	movl	-5500(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -5500(%rbp)
	movl	-180(%rbp), %eax
	movq	-5512(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -5512(%rbp)
	movl	-76(%rbp), %eax
	movq	-5520(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -5520(%rbp)
	movl	-124(%rbp), %eax
	movq	-5528(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -5528(%rbp)
	jmp	.LBB4_26
.LBB4_98:                               # %for.end.319
                                        #   in Loop: Header=BB4_24 Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB4_100
# BB#99:                                # %if.then.321
                                        #   in Loop: Header=BB4_24 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, -5744(%rbp)       # 8-byte Spill
	callq	gimp_drawable_preview_get_type
	movq	-5744(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-200(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_drawable_preview_draw_region
	jmp	.LBB4_101
.LBB4_100:                              # %if.else.324
                                        #   in Loop: Header=BB4_24 Depth=1
	movl	-168(%rbp), %eax
	imull	-164(%rbp), %eax
	addl	-5404(%rbp), %eax
	movl	%eax, -5404(%rbp)
	cvtsi2sdl	-5404(%rbp), %xmm0
	cvtsi2sdl	-5408(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -5748(%rbp)       # 4-byte Spill
.LBB4_101:                              # %if.end.333
                                        #   in Loop: Header=BB4_24 Depth=1
	jmp	.LBB4_102
.LBB4_102:                              # %for.inc.334
                                        #   in Loop: Header=BB4_24 Depth=1
	movq	-5400(%rbp), %rdi
	callq	gimp_pixel_rgns_process
	movq	%rax, -5400(%rbp)
	jmp	.LBB4_24
.LBB4_103:                              # %for.end.336
	cmpq	$0, -40(%rbp)
	je	.LBB4_105
# BB#104:                               # %if.then.338
	movq	-40(%rbp), %rdi
	callq	gimp_drawable_detach
.LBB4_105:                              # %if.end.339
	cmpq	$0, -48(%rbp)
	je	.LBB4_107
# BB#106:                               # %if.then.341
	movq	-48(%rbp), %rdi
	callq	gimp_drawable_detach
.LBB4_107:                              # %if.end.342
	cmpq	$0, -5424(%rbp)
	je	.LBB4_109
# BB#108:                               # %if.then.344
	movq	-5424(%rbp), %rdi
	callq	g_free
.LBB4_109:                              # %if.end.345
	movq	-5416(%rbp), %rdi
	callq	g_free
	movq	-240(%rbp), %rdi
	callq	g_free
	cmpq	$0, -16(%rbp)
	jne	.LBB4_111
# BB#110:                               # %if.then.347
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	callq	gimp_progress_update
	movq	-8(%rbp), %rdi
	movl	%eax, -5752(%rbp)       # 4-byte Spill
	callq	gimp_drawable_flush
	movl	$1, %esi
	movq	-8(%rbp), %rdi
	movl	(%rdi), %edi
	callq	gimp_drawable_merge_shadow
	movq	-8(%rbp), %rcx
	movl	(%rcx), %edi
	movl	-244(%rbp), %esi
	movl	-248(%rbp), %edx
	movl	-260(%rbp), %ecx
	movl	-264(%rbp), %r8d
	movl	%eax, -5756(%rbp)       # 4-byte Spill
	callq	gimp_drawable_update
	movl	%eax, -5760(%rbp)       # 4-byte Spill
.LBB4_111:                              # %if.end.353
	addq	$5776, %rsp             # imm = 0x1690
	popq	%rbp
	retq
.Lfunc_end4:
	.size	oilify, .Lfunc_end4-oilify
	.cfi_endproc

	.align	16, 0x90
	.type	oilify_map_constrain,@function
oilify_map_constrain:                   # @oilify_map_constrain
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
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, -24(%rbp)
	movl	-8(%rbp), %edi
	callq	gimp_drawable_width
	xorl	%esi, %esi
	movb	%sil, %cl
	movq	-24(%rbp), %rdx
	cmpl	4(%rdx), %eax
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB5_2
# BB#1:                                 # %land.rhs
	movl	-8(%rbp), %edi
	callq	gimp_drawable_height
	movq	-24(%rbp), %rcx
	cmpl	8(%rcx), %eax
	sete	%dl
	movb	%dl, -25(%rbp)          # 1-byte Spill
.LBB5_2:                                # %land.end
	movb	-25(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	oilify_map_constrain, .Lfunc_end5-oilify_map_constrain
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	4589866978952703325     # double 0.0722
.LCPI6_1:
	.quad	4604617168452267173     # double 0.71519999999999995
.LCPI6_2:
	.quad	4596827742536767164     # double 0.21260000000000001
.LCPI6_3:
	.quad	4607182418800017408     # double 1
.LCPI6_5:
	.quad	4643176031446892544     # double 255
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI6_4:
	.long	1065353216              # float 1
	.text
	.align	16, 0x90
	.type	get_map_value,@function
get_map_value:                          # @get_map_value
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpl	$3, -12(%rbp)
	jl	.LBB6_2
# BB#1:                                 # %if.then
	movsd	.LCPI6_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI6_1, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI6_2, %xmm2         # xmm2 = mem[0],zero
	movq	-8(%rbp), %rax
	movzbl	(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm3
	mulsd	%xmm2, %xmm3
	movq	-8(%rbp), %rax
	movzbl	1(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm2
	mulsd	%xmm1, %xmm2
	addsd	%xmm2, %xmm3
	movq	-8(%rbp), %rax
	movzbl	2(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm1
	mulsd	%xmm0, %xmm1
	addsd	%xmm1, %xmm3
	cvtsd2ss	%xmm3, %xmm0
	movss	%xmm0, -16(%rbp)
	jmp	.LBB6_3
.LBB6_2:                                # %if.else
	movq	-8(%rbp), %rax
	movzbl	(%rax), %ecx
	cvtsi2ssl	%ecx, %xmm0
	movss	%xmm0, -16(%rbp)
.LBB6_3:                                # %if.end
	movsd	.LCPI6_3, %xmm0         # xmm0 = mem[0],zero
	cvtss2sd	-16(%rbp), %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB6_5
# BB#4:                                 # %if.then.16
	movss	.LCPI6_4, %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -16(%rbp)
.LBB6_5:                                # %if.end.17
	movsd	.LCPI6_5, %xmm0         # xmm0 = mem[0],zero
	cvtss2sd	-16(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, -16(%rbp)
	movss	-16(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	popq	%rbp
	retq
.Lfunc_end6:
	.size	get_map_value, .Lfunc_end6-get_map_value
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI7_0:
	.long	897988541               # float 9.99999997E-7
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI7_1:
	.quad	4562254508917369340     # double 0.001
.LCPI7_2:
	.quad	4643176031446892544     # double 255
	.text
	.align	16, 0x90
	.type	weighted_average_color,@function
weighted_average_color:                 # @weighted_average_color
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
	subq	$128, %rsp
	xorl	%eax, %eax
	movl	$16, %r8d
	movl	%r8d, %r9d
	leaq	-80(%rbp), %r10
	movss	.LCPI7_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movss	%xmm0, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movl	$1, -48(%rbp)
	movl	$0, -52(%rbp)
	movss	%xmm1, -56(%rbp)
	movq	%r10, %rdi
	movl	%eax, %esi
	movq	%r9, %rdx
	callq	memset
	movl	$0, -40(%rbp)
.LBB7_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$256, -40(%rbp)         # imm = 0x100
	jge	.LBB7_7
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	-48(%rbp), %eax
	movslq	-40(%rbp), %rcx
	movq	-8(%rbp), %rdx
	cmpl	(%rdx,%rcx,4), %eax
	jle	.LBB7_4
# BB#3:                                 # %cond.true
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	-48(%rbp), %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
	jmp	.LBB7_5
.LBB7_4:                                # %cond.false
                                        #   in Loop: Header=BB7_1 Depth=1
	movslq	-40(%rbp), %rax
	movq	-8(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	movl	%edx, -96(%rbp)         # 4-byte Spill
.LBB7_5:                                # %cond.end
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	-96(%rbp), %eax         # 4-byte Reload
	movl	%eax, -48(%rbp)
# BB#6:                                 # %for.inc
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB7_1
.LBB7_7:                                # %for.end
	movsd	.LCPI7_1, %xmm0         # xmm0 = mem[0],zero
	cvtss2sd	-20(%rbp), %xmm1
	cvtss2sd	-20(%rbp), %xmm2
	movsd	%xmm0, -104(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	%xmm1, -112(%rbp)       # 8-byte Spill
	callq	floor
	movsd	-112(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	-104(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB7_10
# BB#8:                                 # %land.lhs.true
	movsd	.LCPI7_2, %xmm0         # xmm0 = mem[0],zero
	cvtss2sd	-20(%rbp), %xmm1
	ucomisd	%xmm1, %xmm0
	jb	.LBB7_10
# BB#9:                                 # %if.then
	cvttss2si	-20(%rbp), %eax
	movl	%eax, -52(%rbp)
.LBB7_10:                               # %if.end
	movl	$0, -40(%rbp)
.LBB7_11:                               # %for.cond.11
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_17 Depth 2
	cmpl	$256, -40(%rbp)         # imm = 0x100
	jge	.LBB7_23
# BB#12:                                # %for.body.14
                                        #   in Loop: Header=BB7_11 Depth=1
	movslq	-40(%rbp), %rax
	movq	-8(%rbp), %rcx
	cvtsi2ssl	(%rcx,%rax,4), %xmm0
	cvtsi2ssl	-48(%rbp), %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, -84(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB7_14
# BB#13:                                # %if.then.20
                                        #   in Loop: Header=BB7_11 Depth=1
	movss	-84(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movl	-52(%rbp), %edi
	callq	fast_powf
	movss	%xmm0, -88(%rbp)
	jmp	.LBB7_15
.LBB7_14:                               # %if.else
                                        #   in Loop: Header=BB7_11 Depth=1
	cvtss2sd	-84(%rbp), %xmm0
	cvtss2sd	-20(%rbp), %xmm1
	callq	pow
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -88(%rbp)
.LBB7_15:                               # %if.end.26
                                        #   in Loop: Header=BB7_11 Depth=1
	movslq	-40(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpl	$0, (%rcx,%rax,4)
	jle	.LBB7_21
# BB#16:                                # %if.then.31
                                        #   in Loop: Header=BB7_11 Depth=1
	movl	$0, -44(%rbp)
.LBB7_17:                               # %for.cond.32
                                        #   Parent Loop BB7_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-44(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB7_20
# BB#18:                                # %for.body.35
                                        #   in Loop: Header=BB7_17 Depth=2
	movss	-88(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movslq	-40(%rbp), %rax
	movslq	-44(%rbp), %rcx
	shlq	$10, %rcx
	addq	-16(%rbp), %rcx
	cvtsi2ssl	(%rcx,%rax,4), %xmm1
	mulss	%xmm1, %xmm0
	movslq	-40(%rbp), %rax
	movq	-8(%rbp), %rcx
	cvtsi2ssl	(%rcx,%rax,4), %xmm1
	divss	%xmm1, %xmm0
	movslq	-44(%rbp), %rax
	addss	-80(%rbp,%rax,4), %xmm0
	movss	%xmm0, -80(%rbp,%rax,4)
# BB#19:                                # %for.inc.47
                                        #   in Loop: Header=BB7_17 Depth=2
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB7_17
.LBB7_20:                               # %for.end.49
                                        #   in Loop: Header=BB7_11 Depth=1
	jmp	.LBB7_21
.LBB7_21:                               # %if.end.50
                                        #   in Loop: Header=BB7_11 Depth=1
	movss	-88(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	addss	-56(%rbp), %xmm0
	movss	%xmm0, -56(%rbp)
# BB#22:                                # %for.inc.52
                                        #   in Loop: Header=BB7_11 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB7_11
.LBB7_23:                               # %for.end.54
	movl	$0, -44(%rbp)
.LBB7_24:                               # %for.cond.55
                                        # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB7_33
# BB#25:                                # %for.body.58
                                        #   in Loop: Header=BB7_24 Depth=1
	movslq	-44(%rbp), %rax
	movss	-80(%rbp,%rax,4), %xmm0 # xmm0 = mem[0],zero,zero,zero
	divss	-56(%rbp), %xmm0
	cvttss2si	%xmm0, %ecx
	movl	%ecx, -92(%rbp)
	cmpl	$255, -92(%rbp)
	jle	.LBB7_27
# BB#26:                                # %cond.true.65
                                        #   in Loop: Header=BB7_24 Depth=1
	movl	$255, %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
	jmp	.LBB7_31
.LBB7_27:                               # %cond.false.66
                                        #   in Loop: Header=BB7_24 Depth=1
	cmpl	$0, -92(%rbp)
	jge	.LBB7_29
# BB#28:                                # %cond.true.69
                                        #   in Loop: Header=BB7_24 Depth=1
	xorl	%eax, %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
	jmp	.LBB7_30
.LBB7_29:                               # %cond.false.70
                                        #   in Loop: Header=BB7_24 Depth=1
	movl	-92(%rbp), %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
.LBB7_30:                               # %cond.end.71
                                        #   in Loop: Header=BB7_24 Depth=1
	movl	-120(%rbp), %eax        # 4-byte Reload
	movl	%eax, -116(%rbp)        # 4-byte Spill
.LBB7_31:                               # %cond.end.73
                                        #   in Loop: Header=BB7_24 Depth=1
	movl	-116(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movslq	-44(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
# BB#32:                                # %for.inc.78
                                        #   in Loop: Header=BB7_24 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB7_24
.LBB7_33:                               # %for.end.80
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	weighted_average_color, .Lfunc_end7-weighted_average_color
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI8_0:
	.long	897988541               # float 9.99999997E-7
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI8_1:
	.quad	4562254508917369340     # double 0.001
.LCPI8_2:
	.quad	4643176031446892544     # double 255
	.text
	.align	16, 0x90
	.type	weighted_average_value,@function
weighted_average_value:                 # @weighted_average_value
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
	subq	$80, %rsp
	movss	.LCPI8_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	xorps	%xmm2, %xmm2
	movq	%rdi, -8(%rbp)
	movss	%xmm0, -12(%rbp)
	movl	$1, -20(%rbp)
	movl	$0, -24(%rbp)
	movss	%xmm2, -28(%rbp)
	movss	%xmm1, -32(%rbp)
	movl	$0, -16(%rbp)
.LBB8_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$256, -16(%rbp)         # imm = 0x100
	jge	.LBB8_7
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-20(%rbp), %eax
	movslq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdx
	cmpl	(%rdx,%rcx,4), %eax
	jle	.LBB8_4
# BB#3:                                 # %cond.true
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-20(%rbp), %eax
	movl	%eax, -48(%rbp)         # 4-byte Spill
	jmp	.LBB8_5
.LBB8_4:                                # %cond.false
                                        #   in Loop: Header=BB8_1 Depth=1
	movslq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	movl	%edx, -48(%rbp)         # 4-byte Spill
.LBB8_5:                                # %cond.end
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-48(%rbp), %eax         # 4-byte Reload
	movl	%eax, -20(%rbp)
# BB#6:                                 # %for.inc
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB8_1
.LBB8_7:                                # %for.end
	movsd	.LCPI8_1, %xmm0         # xmm0 = mem[0],zero
	cvtss2sd	-12(%rbp), %xmm1
	cvtss2sd	-12(%rbp), %xmm2
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	%xmm1, -64(%rbp)        # 8-byte Spill
	callq	floor
	movsd	-64(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	-56(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB8_10
# BB#8:                                 # %land.lhs.true
	movsd	.LCPI8_2, %xmm0         # xmm0 = mem[0],zero
	cvtss2sd	-12(%rbp), %xmm1
	ucomisd	%xmm1, %xmm0
	jb	.LBB8_10
# BB#9:                                 # %if.then
	cvttss2si	-12(%rbp), %eax
	movl	%eax, -24(%rbp)
.LBB8_10:                               # %if.end
	movl	$0, -16(%rbp)
.LBB8_11:                               # %for.cond.11
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$256, -16(%rbp)         # imm = 0x100
	jge	.LBB8_17
# BB#12:                                # %for.body.14
                                        #   in Loop: Header=BB8_11 Depth=1
	movslq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	cvtsi2ssl	(%rcx,%rax,4), %xmm0
	cvtsi2ssl	-20(%rbp), %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, -40(%rbp)
	cmpl	$0, -24(%rbp)
	je	.LBB8_14
# BB#13:                                # %if.then.20
                                        #   in Loop: Header=BB8_11 Depth=1
	movss	-40(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movl	-24(%rbp), %edi
	callq	fast_powf
	movss	%xmm0, -44(%rbp)
	jmp	.LBB8_15
.LBB8_14:                               # %if.else
                                        #   in Loop: Header=BB8_11 Depth=1
	cvtss2sd	-40(%rbp), %xmm0
	cvtss2sd	-12(%rbp), %xmm1
	callq	pow
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -44(%rbp)
.LBB8_15:                               # %if.end.26
                                        #   in Loop: Header=BB8_11 Depth=1
	movss	-44(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtsi2ssl	-16(%rbp), %xmm1
	mulss	%xmm1, %xmm0
	addss	-28(%rbp), %xmm0
	movss	%xmm0, -28(%rbp)
	movss	-44(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	addss	-32(%rbp), %xmm0
	movss	%xmm0, -32(%rbp)
# BB#16:                                # %for.inc.29
                                        #   in Loop: Header=BB8_11 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB8_11
.LBB8_17:                               # %for.end.31
	movss	-28(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	divss	-32(%rbp), %xmm0
	cvttss2si	%xmm0, %eax
	movl	%eax, -36(%rbp)
	cmpl	$255, -36(%rbp)
	jle	.LBB8_19
# BB#18:                                # %cond.true.36
	movl	$255, %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	jmp	.LBB8_23
.LBB8_19:                               # %cond.false.37
	cmpl	$0, -36(%rbp)
	jge	.LBB8_21
# BB#20:                                # %cond.true.40
	xorl	%eax, %eax
	movl	%eax, -72(%rbp)         # 4-byte Spill
	jmp	.LBB8_22
.LBB8_21:                               # %cond.false.41
	movl	-36(%rbp), %eax
	movl	%eax, -72(%rbp)         # 4-byte Spill
.LBB8_22:                               # %cond.end.42
	movl	-72(%rbp), %eax         # 4-byte Reload
	movl	%eax, -68(%rbp)         # 4-byte Spill
.LBB8_23:                               # %cond.end.44
	movl	-68(%rbp), %eax         # 4-byte Reload
	movb	%al, %cl
	movzbl	%cl, %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	weighted_average_value, .Lfunc_end8-weighted_average_value
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI9_0:
	.long	1065353216              # float 1
	.text
	.align	16, 0x90
	.type	fast_powf,@function
fast_powf:                              # @fast_powf
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
	movss	%xmm0, -4(%rbp)
	movl	%edi, -8(%rbp)
	movl	-8(%rbp), %edi
	movl	%edi, -52(%rbp)
	movl	-52(%rbp), %edi
	andl	$1, %edi
	cmpl	$0, %edi
	je	.LBB9_2
# BB#1:                                 # %if.then
	movss	-4(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -12(%rbp)
	jmp	.LBB9_3
.LBB9_2:                                # %if.else
	movss	.LCPI9_0, %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -12(%rbp)
.LBB9_3:                                # %if.end
	movss	-4(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -48(%rbp)
	movl	$2, -56(%rbp)
	movl	$1, -60(%rbp)
.LBB9_4:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-56(%rbp), %eax
	cmpl	-52(%rbp), %eax
	ja	.LBB9_9
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB9_4 Depth=1
	movl	-60(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movss	-48(%rbp,%rcx,4), %xmm0 # xmm0 = mem[0],zero,zero,zero
	movl	-60(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	mulss	-48(%rbp,%rcx,4), %xmm0
	movslq	-60(%rbp), %rcx
	movss	%xmm0, -48(%rbp,%rcx,4)
	movl	-52(%rbp), %eax
	andl	-56(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB9_7
# BB#6:                                 # %if.then.9
                                        #   in Loop: Header=BB9_4 Depth=1
	movslq	-60(%rbp), %rax
	movss	-48(%rbp,%rax,4), %xmm0 # xmm0 = mem[0],zero,zero,zero
	mulss	-12(%rbp), %xmm0
	movss	%xmm0, -12(%rbp)
.LBB9_7:                                # %if.end.13
                                        #   in Loop: Header=BB9_4 Depth=1
	jmp	.LBB9_8
.LBB9_8:                                # %for.inc
                                        #   in Loop: Header=BB9_4 Depth=1
	movl	-56(%rbp), %eax
	shll	$1, %eax
	movl	%eax, -56(%rbp)
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB9_4
.LBB9_9:                                # %for.end
	movss	-12(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	popq	%rbp
	retq
.Lfunc_end9:
	.size	fast_powf, .Lfunc_end9-fast_powf
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
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.8
	.quad	.L.str.9
	.size	query.args, 120

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
	.asciz	"Input image (unused)"
	.size	.L.str.3, 21

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
	.asciz	"mask-size"
	.size	.L.str.6, 10

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Oil paint mask size"
	.size	.L.str.7, 20

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"mode"
	.size	.L.str.8, 5

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Algorithm { RGB (0), INTENSITY (1) }"
	.size	.L.str.9, 37

	.type	query.args_enhanced,@object # @query.args_enhanced
	.section	.rodata,"a",@progbits
	.align	16
query.args_enhanced:
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
	.quad	.L.str.8
	.quad	.L.str.9
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.6
	.quad	.L.str.7
	.long	16                      # 0x10
	.zero	4
	.quad	.L.str.10
	.quad	.L.str.11
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.12
	.quad	.L.str.13
	.long	16                      # 0x10
	.zero	4
	.quad	.L.str.14
	.quad	.L.str.15
	.size	query.args_enhanced, 192

	.type	.L.str.10,@object       # @.str.10
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.10:
	.asciz	"mask-size-map"
	.size	.L.str.10, 14

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Mask size control map"
	.size	.L.str.11, 22

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"exponent"
	.size	.L.str.12, 9

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Oil paint exponent"
	.size	.L.str.13, 19

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"exponent-map"
	.size	.L.str.14, 13

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Exponent control map"
	.size	.L.str.15, 21

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"plug-in-oilify"
	.size	.L.str.16, 15

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Smear colors to simulate an oil painting"
	.size	.L.str.17, 41

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"This function performs the well-known oil-paint effect on the specified drawable."
	.size	.L.str.18, 82

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Torsten Martinsen"
	.size	.L.str.19, 18

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"1996"
	.size	.L.str.20, 5

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Oili_fy..."
	.size	.L.str.21, 11

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"RGB*, GRAY*"
	.size	.L.str.22, 12

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"<Image>/Filters/Artistic"
	.size	.L.str.23, 25

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"plug-in-oilify-enhanced"
	.size	.L.str.24, 24

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Torsten Martinsen, Daniel Richard G."
	.size	.L.str.25, 37

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"2007"
	.size	.L.str.26, 5

	.type	run.values,@object      # @run.values
	.local	run.values
	.comm	run.values,40,16
	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"gimp20-std-plug-ins"
	.size	.L.str.27, 20

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"UTF-8"
	.size	.L.str.28, 6

	.type	ovals,@object           # @ovals
	.data
	.align	8
ovals:
	.quad	4620693217682128896     # double 8
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.quad	4620693217682128896     # double 8
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	1                       # 0x1
	.zero	4
	.size	ovals, 40

	.type	.L.str.29,@object       # @.str.29
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.29:
	.asciz	"Oil painting"
	.size	.L.str.29, 13

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"oilify"
	.size	.L.str.30, 7

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"Oilify"
	.size	.L.str.31, 7

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"gimp-oilify"
	.size	.L.str.32, 12

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"gtk-cancel"
	.size	.L.str.33, 11

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"gtk-ok"
	.size	.L.str.34, 7

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"invalidated"
	.size	.L.str.35, 12

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"_Mask size:"
	.size	.L.str.36, 12

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"value-changed"
	.size	.L.str.37, 14

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"Use m_ask-size map:"
	.size	.L.str.38, 20

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"toggled"
	.size	.L.str.39, 8

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"changed"
	.size	.L.str.40, 8

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"active"
	.size	.L.str.41, 7

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"sensitive"
	.size	.L.str.42, 10

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"_Exponent:"
	.size	.L.str.43, 11

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"Use e_xponent map:"
	.size	.L.str.44, 19

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"_Use intensity algorithm"
	.size	.L.str.45, 25


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
