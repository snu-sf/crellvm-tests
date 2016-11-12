	.text
	.file	"sample-colorize.bc"
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
	movabsq	$.L.str.27, %rdi
	movabsq	$.L.str.28, %rsi
	movabsq	$.L.str.29, %rcx
	movabsq	$.L.str.30, %r8
	movabsq	$.L.str.31, %r9
	movabsq	$.L.str.32, %rax
	movabsq	$.L.str.33, %rdx
	movl	$1, %r10d
	movl	$13, %r11d
	xorl	%ebx, %ebx
	movabsq	$query.args, %r14
	xorl	%r15d, %r15d
	movl	%r15d, %r12d
	movq	query.help_string, %r13
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movq	%r13, %rdx
	movq	%rax, (%rsp)
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$13, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%r14, 40(%rsp)
	movq	$0, 48(%rsp)
	movq	%r12, -56(%rbp)         # 8-byte Spill
	movl	%r11d, -60(%rbp)        # 4-byte Spill
	movl	%r10d, -64(%rbp)        # 4-byte Spill
	movl	%ebx, -68(%rbp)         # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.27, %rdi
	movabsq	$.L.str.34, %rsi
	callq	gimp_plugin_menu_register
	movl	%eax, -72(%rbp)         # 4-byte Spill
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

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI1_0:
	.long	1065353216              # float 1
.LCPI1_1:
	.long	1085276160              # float 5.5
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	$3, -52(%rbp)
# BB#1:                                 # %do.body
	callq	gimp_locale_directory
	movabsq	$.L.str.35, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.35, %rdi
	movabsq	$.L.str.36, %rsi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.35, %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	textdomain
	movq	%rax, -96(%rbp)         # 8-byte Spill
# BB#2:                                 # %do.end
	movabsq	$.L.str.37, %rdi
	callq	g_getenv
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.LBB1_6
# BB#3:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$110, %ecx
	je	.LBB1_6
# BB#4:                                 # %land.lhs.true.7
	movq	-64(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$78, %ecx
	je	.LBB1_6
# BB#5:                                 # %if.then
	movl	$1, g_Sdebug
.LBB1_6:                                # %if.end
	cmpl	$0, g_Sdebug
	je	.LBB1_8
# BB#7:                                 # %if.then.11
	movabsq	$.L.str.38, %rdi
	movb	$0, %al
	callq	printf
	movl	%eax, -100(%rbp)        # 4-byte Spill
.LBB1_8:                                # %if.end.13
	movabsq	$.L.str.27, %rdi
	movabsq	$g_values, %rax
	movss	.LCPI1_0, %xmm0         # xmm0 = mem[0],zero,zero,zero
	movabsq	$run.values, %rcx
	movl	$0, g_show_progress
	movq	-24(%rbp), %rdx
	movl	8(%rdx), %esi
	movl	%esi, -68(%rbp)
	movq	-32(%rbp), %rdx
	movl	$1, (%rdx)
	movq	-40(%rbp), %rdx
	movq	%rcx, (%rdx)
	movl	$21, run.values
	movl	-52(%rbp), %esi
	movl	%esi, run.values+8
	movl	$0, g_values+36
	movl	$255, g_values+40
	movl	$0, g_values+24
	movl	$255, g_values+28
	movss	%xmm0, g_values+32
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	cmpl	$-444, g_values+4       # imm = 0xFFFFFFFFFFFFFE44
	movl	%eax, -104(%rbp)        # 4-byte Spill
	je	.LBB1_10
# BB#9:                                 # %lor.lhs.false
	cmpl	$-445, g_values+4       # imm = 0xFFFFFFFFFFFFFE43
	jne	.LBB1_11
.LBB1_10:                               # %if.then.19
	movl	$-1, g_values+4
.LBB1_11:                               # %if.end.20
	movss	.LCPI1_1, %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, g_values+44
	movq	-24(%rbp), %rax
	movl	88(%rax), %ecx
	movl	%ecx, g_values
	movl	g_values, %edi
	callq	gimp_drawable_get
	movq	%rax, -48(%rbp)
	callq	clear_tables
	movq	-48(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_is_rgb
	cmpl	$0, %eax
	jne	.LBB1_13
# BB#12:                                # %lor.lhs.false.26
	movq	-48(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_is_gray
	cmpl	$0, %eax
	je	.LBB1_24
.LBB1_13:                               # %if.then.30
	movl	$32, %eax
	movl	%eax, %edi
	callq	gimp_tile_cache_ntiles
	movl	-68(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
	je	.LBB1_14
	jmp	.LBB1_26
.LBB1_26:                               # %if.then.30
	movl	-108(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
	je	.LBB1_15
	jmp	.LBB1_27
.LBB1_27:                               # %if.then.30
	movl	-108(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
	je	.LBB1_22
	jmp	.LBB1_23
.LBB1_14:                               # %sw.bb
	callq	smp_dialog
	callq	free_colors
	movabsq	$.L.str.27, %rdi
	movabsq	$g_values, %rax
	movl	$48, %edx
	movq	%rax, %rsi
	callq	gimp_procedural_db_set_data
	movl	%eax, -120(%rbp)        # 4-byte Spill
	callq	gimp_displays_flush
	movl	%eax, -124(%rbp)        # 4-byte Spill
	jmp	.LBB1_23
.LBB1_15:                               # %sw.bb.33
	cmpl	$13, -12(%rbp)
	jne	.LBB1_20
# BB#16:                                # %if.then.36
	movl	$1, %edi
	movq	-24(%rbp), %rax
	movl	128(%rax), %ecx
	movl	%ecx, g_values+4
	movq	-24(%rbp), %rax
	movl	168(%rax), %ecx
	movl	%ecx, g_values+8
	movq	-24(%rbp), %rax
	movl	208(%rax), %ecx
	movl	%ecx, g_values+12
	movq	-24(%rbp), %rax
	movl	248(%rax), %ecx
	movl	%ecx, g_values+16
	movq	-24(%rbp), %rax
	movl	288(%rax), %ecx
	movl	%ecx, g_values+20
	movq	-24(%rbp), %rax
	movl	328(%rax), %ecx
	movl	%ecx, g_values+24
	movq	-24(%rbp), %rax
	movl	368(%rax), %ecx
	movl	%ecx, g_values+28
	movq	-24(%rbp), %rax
	cvtsd2ss	408(%rax), %xmm0
	movss	%xmm0, g_values+32
	movq	-24(%rbp), %rax
	movl	448(%rax), %ecx
	movl	%ecx, g_values+36
	movq	-24(%rbp), %rax
	movl	488(%rax), %ecx
	movl	%ecx, g_values+40
	callq	main_colorize
	cmpl	$0, %eax
	jl	.LBB1_18
# BB#17:                                # %if.then.70
	movl	$2, %edi
	callq	main_colorize
	movl	$3, -52(%rbp)
	movl	%eax, -128(%rbp)        # 4-byte Spill
	jmp	.LBB1_19
.LBB1_18:                               # %if.else
	movl	$0, -52(%rbp)
.LBB1_19:                               # %if.end.72
	jmp	.LBB1_21
.LBB1_20:                               # %if.else.73
	movl	$1, -52(%rbp)
.LBB1_21:                               # %if.end.74
	jmp	.LBB1_23
.LBB1_22:                               # %sw.bb.75
	jmp	.LBB1_23
.LBB1_23:                               # %sw.epilog
	jmp	.LBB1_25
.LBB1_24:                               # %if.else.76
	movl	$0, -52(%rbp)
.LBB1_25:                               # %if.end.77
	movl	-52(%rbp), %eax
	movl	%eax, run.values+8
	movq	-48(%rbp), %rdi
	callq	gimp_drawable_detach
	addq	$128, %rsp
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
	.type	clear_tables,@function
clear_tables:                           # @clear_tables
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
	movl	$0, -4(%rbp)
.LBB3_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$256, -4(%rbp)          # imm = 0x100
	jae	.LBB3_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB3_1 Depth=1
	movabsq	$g_lum_tab, %rax
	movl	-4(%rbp), %ecx
	movl	%ecx, %edx
	shlq	$4, %rdx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	movq	$0, 8(%rsi)
	movl	-4(%rbp), %ecx
	movl	%ecx, %edx
	shlq	$4, %rdx
	addq	%rdx, %rax
	movl	$0, (%rax)
	movl	-4(%rbp), %ecx
	movb	%cl, %dil
	movl	-4(%rbp), %ecx
	movl	%ecx, %eax
	movb	%dil, g_lvl_trans_tab(,%rax)
	movl	-4(%rbp), %ecx
	movb	%cl, %dil
	movl	-4(%rbp), %ecx
	movl	%ecx, %eax
	movb	%dil, g_out_trans_tab(,%rax)
	movl	-4(%rbp), %ecx
	movb	%cl, %dil
	imull	$3, -4(%rbp), %ecx
	addl	$0, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %eax
	movb	%dil, g_sample_color_tab(,%rax)
	movl	-4(%rbp), %ecx
	movb	%cl, %dil
	imull	$3, -4(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %eax
	movb	%dil, g_sample_color_tab(,%rax)
	movl	-4(%rbp), %ecx
	movb	%cl, %dil
	imull	$3, -4(%rbp), %ecx
	addl	$2, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %eax
	movb	%dil, g_sample_color_tab(,%rax)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB3_1
.LBB3_4:                                # %for.end
	popq	%rbp
	retq
.Lfunc_end3:
	.size	clear_tables, .Lfunc_end3-clear_tables
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4602678819172646912     # double 0.5
.LCPI4_1:
	.quad	4643176031446892544     # double 255
.LCPI4_2:
	.quad	4607182418800017408     # double 1
.LCPI4_3:
	.quad	4621819117588971520     # double 10
.LCPI4_4:
	.quad	4643140847074803712     # double 254
.LCPI4_5:
	.quad	4591870180066957722     # double 0.10000000000000001
.LCPI4_6:
	.quad	4581421828931458171     # double 0.02
.LCPI4_7:
	.quad	4596373779694328218     # double 0.20000000000000001
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI4_8:
	.long	1065353216              # float 1
.LCPI4_9:
	.long	1056964608              # float 0.5
	.text
	.align	16, 0x90
	.type	smp_dialog,@function
smp_dialog:                             # @smp_dialog
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
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$1352, %rsp             # imm = 0x548
.Ltmp20:
	.cfi_offset %rbx, -56
.Ltmp21:
	.cfi_offset %r12, -48
.Ltmp22:
	.cfi_offset %r13, -40
.Ltmp23:
	.cfi_offset %r14, -32
.Ltmp24:
	.cfi_offset %r15, -24
	cmpl	$0, g_Sdebug
	je	.LBB4_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.39, %rdi
	movb	$0, %al
	callq	g_print
.LBB4_2:                                # %if.end
	movabsq	$.L.str.40, %rdi
	movl	$1, %esi
	movl	$0, g_di+128
	movl	$1, g_di+132
	movl	$1, g_di+136
	movl	$1, g_di+144
	movl	$1, g_di+140
	movq	$0, g_di+96
	callq	gimp_ui_init
	movabsq	$.L.str.41, %rdi
	callq	gettext
	movabsq	$.L.str.44, %rdi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.42, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	movabsq	$gimp_standard_help_func, %r8
	movabsq	$.L.str.27, %r9
	movabsq	$.L.str.43, %rdi
	movl	$1, %r10d
	movl	$2, %r11d
	movabsq	$.L.str.45, %rbx
	movl	$4294967289, %r14d      # imm = 0xFFFFFFF9
	movabsq	$.L.str.46, %r15
	movl	$4294967286, %r12d      # imm = 0xFFFFFFF6
	movq	-136(%rbp), %r13        # 8-byte Reload
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%r13, %rdi
	movq	-144(%rbp), %r13        # 8-byte Reload
	movq	%r13, (%rsp)
	movl	$1, 8(%rsp)
	movq	%rax, 16(%rsp)
	movl	$2, 24(%rsp)
	movq	%rbx, 32(%rsp)
	movl	$-7, 40(%rsp)
	movq	%r15, 48(%rsp)
	movl	$-10, 56(%rsp)
	movq	$0, 64(%rsp)
	movb	$0, %al
	movl	%r10d, -148(%rbp)       # 4-byte Spill
	movl	%r12d, -152(%rbp)       # 4-byte Spill
	movl	%r11d, -156(%rbp)       # 4-byte Spill
	movl	%r14d, -160(%rbp)       # 4-byte Spill
	callq	gimp_dialog_new
	movq	%rax, -48(%rbp)
	movq	%rax, g_di
	movq	-48(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movl	$1, %edx
	movl	$4294967286, %ecx       # imm = 0xFFFFFFF6
	movl	$4294967289, %r8d       # imm = 0xFFFFFFF9
	movl	$4294967295, %r9d       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	movq	-48(%rbp), %rdi
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_window_set_transient
	movabsq	$.L.str.47, %rsi
	movabsq	$smp_response_callback, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	xorl	%r9d, %r9d
	movq	-48(%rbp), %rbx
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %rdx
	movq	-184(%rbp), %rcx        # 8-byte Reload
	movq	-184(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	movl	$7, %edi
	movl	$5, %esi
	xorl	%edx, %edx
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gtk_table_new
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-80(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-80(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-48(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	xorl	%r8d, %r8d
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -236(%rbp)        # 4-byte Spill
	movl	-236(%rbp), %ecx        # 4-byte Reload
	callq	gtk_box_pack_start
	movabsq	$.L.str.48, %rdi
	movl	$0, -124(%rbp)
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movss	.LCPI4_8, %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI4_9, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment
	movq	-80(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	$1, %ecx
	movl	$4, %r8d
	movq	-96(%rbp), %rsi
	movl	-124(%rbp), %r9d
	movl	-124(%rbp), %r10d
	addl	$1, %r10d
	movq	%rax, %rdi
	movl	%r8d, -260(%rbp)        # 4-byte Spill
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$4, (%rsp)
	movl	$4, 8(%rsp)
	movl	$4, 16(%rsp)
	movl	$0, 24(%rsp)
	callq	gtk_table_attach
	movq	-96(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$smp_constrain, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	callq	gimp_layer_combo_box_new
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$smp_dest_combo_callback, %rsi
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movl	g_values, %edx
	movq	%rax, %rdi
	movq	%rsi, -280(%rbp)        # 8-byte Spill
	movl	%edx, %esi
	movq	-280(%rbp), %rdx        # 8-byte Reload
	callq	gimp_int_combo_box_connect
	movq	-80(%rbp), %rcx
	movq	%rax, -288(%rbp)        # 8-byte Spill
	movq	%rcx, -296(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	movl	$2, %ecx
	movl	$5, %r8d
	xorl	%r9d, %r9d
	movq	-104(%rbp), %rsi
	movl	-124(%rbp), %r10d
	movl	-124(%rbp), %r11d
	addl	$1, %r11d
	movq	%rax, %rdi
	movl	%r8d, -300(%rbp)        # 4-byte Spill
	movl	%r10d, %r8d
	movl	%r9d, -304(%rbp)        # 4-byte Spill
	movl	%r11d, %r9d
	movl	$5, (%rsp)
	movl	$5, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	callq	gtk_table_attach
	movq	-104(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.49, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movss	.LCPI4_8, %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI4_9, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment
	movq	-80(%rbp), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$3, %edx
	movl	$4, %ecx
	xorl	%r8d, %r8d
	movq	-96(%rbp), %rsi
	movl	-124(%rbp), %r9d
	movl	-124(%rbp), %r10d
	addl	$1, %r10d
	movq	%rax, %rdi
	movl	%r8d, -324(%rbp)        # 4-byte Spill
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$4, (%rsp)
	movl	$4, 8(%rsp)
	movl	$4, 16(%rsp)
	movl	$0, 24(%rsp)
	callq	gtk_table_attach
	movq	-96(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$smp_constrain, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	callq	gimp_layer_combo_box_new
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.50, %rdi
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$4294966851, %edx       # imm = 0xFFFFFE43
	movl	$1, %ecx
	movl	$2, %r9d
	movabsq	$.L.str.51, %rdi
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	-344(%rbp), %rbx        # 8-byte Reload
	movq	%rdi, -352(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movl	%r8d, -356(%rbp)        # 4-byte Spill
	movq	%rax, %r8
	movq	-352(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$-1, 8(%rsp)
	movb	$0, %al
	callq	gimp_int_combo_box_prepend
	movq	-104(%rbp), %rdi
	movq	%rdi, -368(%rbp)        # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.52, %rdi
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$4294966852, %edx       # imm = 0xFFFFFE44
	movl	$1, %ecx
	movl	$2, %r9d
	movabsq	$.L.str.51, %rdi
	movl	$4294967295, %r10d      # imm = 0xFFFFFFFF
	movq	-376(%rbp), %r8         # 8-byte Reload
	movq	%rdi, -384(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movq	%rax, %r8
	movq	-384(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$-1, 8(%rsp)
	movb	$0, %al
	movl	%r10d, -388(%rbp)       # 4-byte Spill
	callq	gimp_int_combo_box_prepend
	movq	-104(%rbp), %rdi
	movq	%rdi, -400(%rbp)        # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$smp_sample_combo_callback, %rsi
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movl	g_values+4, %edx
	movq	%rax, %rdi
	movq	%rsi, -408(%rbp)        # 8-byte Spill
	movl	%edx, %esi
	movq	-408(%rbp), %rdx        # 8-byte Reload
	callq	gimp_int_combo_box_connect
	movq	-80(%rbp), %rcx
	movq	%rax, -416(%rbp)        # 8-byte Spill
	movq	%rcx, -424(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-424(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4, %edx
	movl	$5, %ecx
	xorl	%r9d, %r9d
	movq	-104(%rbp), %rsi
	movl	-124(%rbp), %r8d
	movl	-124(%rbp), %r10d
	addl	$1, %r10d
	movq	%rax, %rdi
	movl	%r9d, -428(%rbp)        # 4-byte Spill
	movl	%r10d, %r9d
	movl	$5, (%rsp)
	movl	$5, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	callq	gtk_table_attach
	movq	-104(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%edi, %edi
	movl	$6, %esi
	movl	-124(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -124(%rbp)
	callq	gtk_box_new
	movq	%rax, -56(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -440(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-440(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	$2, %ecx
	movl	$4, %r8d
	movq	-56(%rbp), %rsi
	movl	-124(%rbp), %r9d
	movl	-124(%rbp), %r10d
	addl	$1, %r10d
	movq	%rax, %rdi
	movl	%r8d, -444(%rbp)        # 4-byte Spill
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$4, (%rsp)
	movl	$0, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	callq	gtk_table_attach
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.53, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_label
	movq	%rax, -88(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -456(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-456(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -460(%rbp)        # 4-byte Spill
	movl	-460(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-88(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.54, %rsi
	movabsq	$smp_toggle_callback, %rax
	movabsq	$g_di, %rdi
	addq	$136, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-88(%rbp), %rbx
	movq	%rdi, -472(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %rdx
	movq	-472(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-88(%rbp), %rcx
	movq	%rax, -480(%rbp)        # 8-byte Spill
	movq	%rcx, -488(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-488(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	g_di+136, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movabsq	$.L.str.55, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_label
	movq	%rax, -88(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -496(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-496(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-88(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.54, %rsi
	movabsq	$smp_toggle_callback, %rax
	movabsq	$g_di, %rdi
	addq	$144, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-88(%rbp), %rbx
	movq	%rdi, -504(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %rdx
	movq	-504(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-88(%rbp), %rcx
	movq	%rax, -512(%rbp)        # 8-byte Spill
	movq	%rcx, -520(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-520(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	g_di+144, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	xorl	%edi, %edi
	movl	$6, %esi
	callq	gtk_box_new
	movq	%rax, -56(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -528(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-528(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$3, %edx
	movl	$5, %ecx
	movl	$4, %r9d
	xorl	%r10d, %r10d
	movq	-56(%rbp), %rsi
	movl	-124(%rbp), %r8d
	movl	-124(%rbp), %r11d
	addl	$1, %r11d
	movq	%rax, %rdi
	movl	%r9d, -532(%rbp)        # 4-byte Spill
	movl	%r11d, %r9d
	movl	$4, (%rsp)
	movl	$0, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%r10d, -536(%rbp)       # 4-byte Spill
	callq	gtk_table_attach
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.53, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_label
	movq	%rax, -88(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -544(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-544(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -548(%rbp)        # 4-byte Spill
	movl	-548(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-88(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.54, %rsi
	movabsq	$smp_toggle_callback, %rax
	movabsq	$g_di, %rdi
	addq	$132, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-88(%rbp), %rbx
	movq	%rdi, -560(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %rdx
	movq	-560(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-88(%rbp), %rcx
	movq	%rax, -568(%rbp)        # 8-byte Spill
	movq	%rcx, -576(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-576(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	g_di+132, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movabsq	$.L.str.55, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_label
	movq	%rax, -88(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -584(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-584(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-88(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.54, %rsi
	movabsq	$smp_toggle_callback, %rax
	movabsq	$g_di, %rdi
	addq	$140, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-88(%rbp), %rbx
	movq	%rdi, -592(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %rdx
	movq	-592(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-88(%rbp), %rcx
	movq	%rax, -600(%rbp)        # 8-byte Spill
	movq	%rcx, -608(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-608(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	g_di+140, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	xorl	%esi, %esi
	movl	%esi, %edi
	movl	-124(%rbp), %esi
	addl	$1, %esi
	movl	%esi, -124(%rbp)
	callq	gtk_frame_new
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -616(%rbp)        # 8-byte Spill
	callq	gtk_frame_get_type
	movq	-616(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_frame_set_shadow_type
	movq	-80(%rbp), %rax
	movq	%rax, -624(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-624(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	$2, %ecx
	movq	-72(%rbp), %rsi
	movl	-124(%rbp), %r8d
	movl	-124(%rbp), %r9d
	addl	$1, %r9d
	movq	%rax, %rdi
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	callq	gtk_table_attach
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	callq	gimp_preview_area_new
	movl	$256, %ecx              # imm = 0x100
	movq	%rax, g_di+16
	movq	g_di+16, %rdi
	movl	%ecx, %esi
	movl	%ecx, %edx
	callq	gtk_widget_set_size_request
	movq	-72(%rbp), %rax
	movq	%rax, -632(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-632(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	g_di+16, %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	g_di+16, %rdi
	callq	gtk_widget_show
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	callq	gtk_frame_new
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -640(%rbp)        # 8-byte Spill
	callq	gtk_frame_get_type
	movq	-640(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_frame_set_shadow_type
	movq	-80(%rbp), %rax
	movq	%rax, -648(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-648(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$3, %edx
	movl	$5, %ecx
	xorl	%r8d, %r8d
	movq	-72(%rbp), %rsi
	movl	-124(%rbp), %r9d
	movl	-124(%rbp), %r10d
	addl	$1, %r10d
	movq	%rax, %rdi
	movl	%r8d, -652(%rbp)        # 4-byte Spill
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	callq	gtk_table_attach
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	callq	gimp_preview_area_new
	movl	$256, %ecx              # imm = 0x100
	movq	%rax, g_di+8
	movq	g_di+8, %rdi
	movl	%ecx, %esi
	movl	%ecx, %edx
	callq	gtk_widget_set_size_request
	movq	-72(%rbp), %rax
	movq	%rax, -664(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-664(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	g_di+8, %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	g_di+8, %rdi
	callq	gtk_widget_show
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movl	-124(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -124(%rbp)
	callq	gtk_frame_new
	movl	$1, %edi
	movl	$2, %esi
	movq	%rax, -72(%rbp)
	callq	gtk_box_new
	movq	%rax, -64(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -672(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-672(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-80(%rbp), %rax
	movq	%rax, -680(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-680(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	$2, %ecx
	movq	-72(%rbp), %rsi
	movl	-124(%rbp), %r8d
	movl	-124(%rbp), %r9d
	addl	$1, %r9d
	movq	%rax, %rdi
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	callq	gtk_table_attach
	callq	gimp_preview_area_new
	movl	$256, %esi              # imm = 0x100
	movl	$15, %edx
	movq	%rax, g_di+40
	movq	g_di+40, %rdi
	callq	gtk_widget_set_size_request
	movl	$4906, %esi             # imm = 0x132A
	movq	g_di+40, %rdi
	callq	gtk_widget_set_events
	movq	-64(%rbp), %rax
	movq	%rax, -688(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-688(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	g_di+40, %rsi
	movq	%rax, %rdi
	movl	%edx, -692(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-692(%rbp), %r8d        # 4-byte Reload
	movl	%ecx, -696(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	-696(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	g_di+40, %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.56, %rsi
	movabsq	$level_in_events, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	xorl	%r9d, %r9d
	movq	g_di+40, %rbx
	movq	%rdi, -704(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %rdx
	movq	-704(%rbp), %rcx        # 8-byte Reload
	movq	-704(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	movq	%rax, -712(%rbp)        # 8-byte Spill
	callq	gtk_drawing_area_new
	movl	$256, %esi              # imm = 0x100
	movl	$10, %edx
	movq	%rax, g_di+48
	movq	g_di+48, %rdi
	callq	gtk_widget_set_size_request
	movl	$4906, %esi             # imm = 0x132A
	movq	g_di+48, %rdi
	callq	gtk_widget_set_events
	movq	-64(%rbp), %rax
	movq	%rax, -720(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-720(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	$1, %ecx
	movq	g_di+48, %rsi
	movq	%rax, %rdi
	movl	%edx, -724(%rbp)        # 4-byte Spill
	movl	-724(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	g_di+48, %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.56, %rsi
	movabsq	$level_in_events, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	xorl	%r9d, %r9d
	movq	g_di+48, %rbx
	movq	%rdi, -736(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %rdx
	movq	-736(%rbp), %rcx        # 8-byte Reload
	movq	-736(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	movq	-64(%rbp), %rdi
	movq	%rax, -744(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%r9d, %r9d
	movl	%r9d, %edi
	callq	gtk_frame_new
	movl	$1, %edi
	movl	$2, %esi
	movq	%rax, -72(%rbp)
	callq	gtk_box_new
	movq	%rax, -64(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -752(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-752(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-80(%rbp), %rax
	movq	%rax, -760(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-760(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$3, %edx
	movl	$5, %ecx
	xorl	%r9d, %r9d
	movq	-72(%rbp), %rsi
	movl	-124(%rbp), %r8d
	movl	-124(%rbp), %r10d
	addl	$1, %r10d
	movq	%rax, %rdi
	movl	%r9d, -764(%rbp)        # 4-byte Spill
	movl	%r10d, %r9d
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	callq	gtk_table_attach
	callq	gimp_preview_area_new
	movl	$256, %esi              # imm = 0x100
	movl	$15, %edx
	movq	%rax, g_di+24
	movq	g_di+24, %rdi
	callq	gtk_widget_set_size_request
	movq	-64(%rbp), %rax
	movq	%rax, -776(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-776(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	g_di+24, %rsi
	movq	%rax, %rdi
	movl	%edx, -780(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-780(%rbp), %r8d        # 4-byte Reload
	movl	%ecx, -784(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	-784(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	g_di+24, %rdi
	callq	gtk_widget_show
	callq	gtk_drawing_area_new
	movl	$256, %esi              # imm = 0x100
	movl	$10, %edx
	movq	%rax, g_di+32
	movq	g_di+32, %rdi
	callq	gtk_widget_set_size_request
	movl	$4906, %esi             # imm = 0x132A
	movq	g_di+32, %rdi
	callq	gtk_widget_set_events
	movq	-64(%rbp), %rax
	movq	%rax, -792(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-792(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	g_di+32, %rsi
	movq	%rax, %rdi
	movl	%edx, -796(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-796(%rbp), %r8d        # 4-byte Reload
	movl	%ecx, -800(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	-800(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	g_di+32, %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.56, %rsi
	movabsq	$level_out_events, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	xorl	%r9d, %r9d
	movq	g_di+32, %rbx
	movq	%rdi, -808(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %rdx
	movq	-808(%rbp), %rcx        # 8-byte Reload
	movq	-808(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	movq	-64(%rbp), %rdi
	movq	%rax, -816(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%edi, %edi
	movl	$6, %esi
	movl	-124(%rbp), %r9d
	addl	$1, %r9d
	movl	%r9d, -124(%rbp)
	callq	gtk_box_new
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -824(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-824(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_box_set_homogeneous
	movq	-80(%rbp), %rax
	movq	%rax, -832(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-832(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	$2, %ecx
	movl	$4, %r9d
	movq	-56(%rbp), %rsi
	movl	-124(%rbp), %r8d
	movl	-124(%rbp), %r10d
	addl	$1, %r10d
	movq	%rax, %rdi
	movl	%r9d, -836(%rbp)        # 4-byte Spill
	movl	%r10d, %r9d
	movl	$4, (%rsp)
	movl	$0, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	callq	gtk_table_attach
	movabsq	$.L.str.57, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new
	movq	%rax, -96(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -848(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-848(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-96(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -852(%rbp)        # 4-byte Spill
	movl	-852(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-96(%rbp), %rdi
	callq	gtk_widget_show
	xorps	%xmm0, %xmm0
	movsd	.LCPI4_4, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI4_2, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI4_3, %xmm4         # xmm4 = mem[0],zero
	cvtsi2ssl	g_values+24, %xmm1
	cvtss2sd	%xmm1, %xmm1
	movsd	%xmm0, -864(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-864(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-864(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	callq	gtk_adjustment_new
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -872(%rbp)        # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-872(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	xorl	%esi, %esi
	movq	%rax, g_di+56
	movq	g_di+56, %rdi
	callq	gtk_spin_button_new
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -880(%rbp)        # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-880(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_spin_button_set_numeric
	movq	-56(%rbp), %rax
	movq	%rax, -888(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-888(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-112(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -892(%rbp)        # 4-byte Spill
	movl	-892(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-112(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.58, %rsi
	movabsq	$smp_adj_lvl_in_min_upd_callback, %rax
	movabsq	$g_di, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	g_di+56, %rbx
	movq	%rdi, -904(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %rdx
	movq	-904(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movsd	.LCPI4_5, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI4_3, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI4_6, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI4_7, %xmm4         # xmm4 = mem[0],zero
	xorps	%xmm5, %xmm5
	cvtss2sd	g_values+32, %xmm0
	movq	%rax, -912(%rbp)        # 8-byte Spill
	callq	gtk_adjustment_new
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -920(%rbp)        # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-920(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movl	$2, %esi
	movq	%rax, g_di+72
	movq	g_di+72, %rdi
	callq	gtk_spin_button_new
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -928(%rbp)        # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-928(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_spin_button_set_numeric
	movq	-56(%rbp), %rax
	movq	%rax, -936(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-936(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-112(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-112(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.58, %rsi
	movabsq	$smp_text_gamma_upd_callback, %rax
	movabsq	$g_di, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	g_di+72, %rbx
	movq	%rdi, -944(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %rdx
	movq	-944(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movsd	.LCPI4_2, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI4_1, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI4_3, %xmm4         # xmm4 = mem[0],zero
	xorps	%xmm5, %xmm5
	cvtsi2ssl	g_values+28, %xmm1
	cvtss2sd	%xmm1, %xmm1
	movsd	%xmm0, -952(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-952(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-952(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movq	%rax, -960(%rbp)        # 8-byte Spill
	callq	gtk_adjustment_new
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -968(%rbp)        # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-968(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	xorl	%esi, %esi
	movq	%rax, g_di+64
	movq	g_di+64, %rdi
	callq	gtk_spin_button_new
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -976(%rbp)        # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-976(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_spin_button_set_numeric
	movq	-56(%rbp), %rax
	movq	%rax, -984(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-984(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-112(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-112(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.58, %rsi
	movabsq	$smp_adj_lvl_in_max_upd_callback, %rax
	movabsq	$g_di, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	g_di+64, %rbx
	movq	%rdi, -992(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %rdx
	movq	-992(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-56(%rbp), %rdi
	movq	%rax, -1000(%rbp)       # 8-byte Spill
	callq	gtk_widget_show
	xorl	%edi, %edi
	movl	$4, %esi
	callq	gtk_box_new
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -1008(%rbp)       # 8-byte Spill
	callq	gtk_box_get_type
	movq	-1008(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_box_set_homogeneous
	movq	-80(%rbp), %rax
	movq	%rax, -1016(%rbp)       # 8-byte Spill
	callq	gtk_table_get_type
	movq	-1016(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$3, %edx
	movl	$5, %ecx
	movl	$4, %r9d
	xorl	%r10d, %r10d
	movq	-56(%rbp), %rsi
	movl	-124(%rbp), %r8d
	movl	-124(%rbp), %r11d
	addl	$1, %r11d
	movq	%rax, %rdi
	movl	%r9d, -1020(%rbp)       # 4-byte Spill
	movl	%r11d, %r9d
	movl	$4, (%rsp)
	movl	$0, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%r10d, -1024(%rbp)      # 4-byte Spill
	callq	gtk_table_attach
	movabsq	$.L.str.59, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new
	movq	%rax, -96(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -1032(%rbp)       # 8-byte Spill
	callq	gtk_box_get_type
	movq	-1032(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-96(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -1036(%rbp)       # 4-byte Spill
	movl	-1036(%rbp), %r8d       # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-96(%rbp), %rdi
	callq	gtk_widget_show
	xorps	%xmm0, %xmm0
	movsd	.LCPI4_4, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI4_2, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI4_3, %xmm4         # xmm4 = mem[0],zero
	cvtsi2ssl	g_values+36, %xmm1
	cvtss2sd	%xmm1, %xmm1
	movsd	%xmm0, -1048(%rbp)      # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-1048(%rbp), %xmm1      # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-1048(%rbp), %xmm5      # 8-byte Reload
                                        # xmm5 = mem[0],zero
	callq	gtk_adjustment_new
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -1056(%rbp)       # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-1056(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	xorl	%esi, %esi
	movq	%rax, g_di+80
	movq	g_di+80, %rdi
	callq	gtk_spin_button_new
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -1064(%rbp)       # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-1064(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_spin_button_set_numeric
	movq	-56(%rbp), %rax
	movq	%rax, -1072(%rbp)       # 8-byte Spill
	callq	gtk_box_get_type
	movq	-1072(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-112(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -1076(%rbp)       # 4-byte Spill
	movl	-1076(%rbp), %r8d       # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-112(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.58, %rsi
	movabsq	$smp_adj_lvl_out_min_upd_callback, %rax
	movabsq	$g_di, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	g_di+80, %rbx
	movq	%rdi, -1088(%rbp)       # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %rdx
	movq	-1088(%rbp), %rcx       # 8-byte Reload
	callq	g_signal_connect_data
	xorps	%xmm0, %xmm0
	movsd	.LCPI4_1, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI4_2, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI4_3, %xmm4         # xmm4 = mem[0],zero
	cvtsi2ssl	g_values+40, %xmm1
	cvtss2sd	%xmm1, %xmm1
	movsd	%xmm0, -1096(%rbp)      # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-1096(%rbp), %xmm1      # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-1096(%rbp), %xmm5      # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movq	%rax, -1104(%rbp)       # 8-byte Spill
	callq	gtk_adjustment_new
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -1112(%rbp)       # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-1112(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	xorl	%esi, %esi
	movq	%rax, g_di+88
	movq	g_di+88, %rdi
	callq	gtk_spin_button_new
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -1120(%rbp)       # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-1120(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_spin_button_set_numeric
	movq	-56(%rbp), %rax
	movq	%rax, -1128(%rbp)       # 8-byte Spill
	callq	gtk_box_get_type
	movq	-1128(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-112(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-112(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.58, %rsi
	movabsq	$smp_adj_lvl_out_max_upd_callback, %rax
	movabsq	$g_di, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	g_di+88, %rbx
	movq	%rdi, -1136(%rbp)       # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %rdx
	movq	-1136(%rbp), %rcx       # 8-byte Reload
	callq	g_signal_connect_data
	movq	-56(%rbp), %rdi
	movq	%rax, -1144(%rbp)       # 8-byte Spill
	callq	gtk_widget_show
	xorl	%edi, %edi
	movl	$6, %esi
	movl	-124(%rbp), %r9d
	addl	$1, %r9d
	movl	%r9d, -124(%rbp)
	callq	gtk_box_new
	movq	%rax, -56(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -1152(%rbp)       # 8-byte Spill
	callq	gtk_table_get_type
	movq	-1152(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	$2, %ecx
	movl	$4, %r9d
	movq	-56(%rbp), %rsi
	movl	-124(%rbp), %r8d
	movl	-124(%rbp), %r10d
	addl	$1, %r10d
	movq	%rax, %rdi
	movl	%r9d, -1156(%rbp)       # 4-byte Spill
	movl	%r10d, %r9d
	movl	$4, (%rsp)
	movl	$0, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	callq	gtk_table_attach
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.60, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_label
	movq	%rax, -88(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -1168(%rbp)       # 8-byte Spill
	callq	gtk_box_get_type
	movq	-1168(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -1172(%rbp)       # 4-byte Spill
	movl	-1172(%rbp), %r8d       # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-88(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.54, %rsi
	movabsq	$smp_toggle_callback, %rax
	movabsq	$g_values, %rdi
	addq	$8, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-88(%rbp), %rbx
	movq	%rdi, -1184(%rbp)       # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %rdx
	movq	-1184(%rbp), %rcx       # 8-byte Reload
	callq	g_signal_connect_data
	movq	-88(%rbp), %rcx
	movq	%rax, -1192(%rbp)       # 8-byte Spill
	movq	%rcx, -1200(%rbp)       # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-1200(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	g_values+8, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movabsq	$.L.str.61, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_label
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, g_di+96
	movq	-56(%rbp), %rax
	movq	%rax, -1208(%rbp)       # 8-byte Spill
	callq	gtk_box_get_type
	movq	-1208(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	g_di+96, %rdi
	movl	g_values+8, %esi
	callq	gtk_widget_set_sensitive
	movq	-88(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.54, %rsi
	movabsq	$smp_toggle_callback, %rax
	movabsq	$g_values, %rdi
	addq	$12, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-88(%rbp), %rbx
	movq	%rdi, -1216(%rbp)       # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %rdx
	movq	-1216(%rbp), %rcx       # 8-byte Reload
	callq	g_signal_connect_data
	movq	-88(%rbp), %rcx
	movq	%rax, -1224(%rbp)       # 8-byte Spill
	movq	%rcx, -1232(%rbp)       # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-1232(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	g_values+12, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	xorl	%edi, %edi
	movl	$4, %esi
	callq	gtk_box_new
	movq	%rax, -56(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -1240(%rbp)       # 8-byte Spill
	callq	gtk_table_get_type
	movq	-1240(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$3, %edx
	movl	$5, %ecx
	movl	$4, %r9d
	xorl	%r10d, %r10d
	movq	-56(%rbp), %rsi
	movl	-124(%rbp), %r8d
	movl	-124(%rbp), %r11d
	addl	$1, %r11d
	movq	%rax, %rdi
	movl	%r9d, -1244(%rbp)       # 4-byte Spill
	movl	%r11d, %r9d
	movl	$4, (%rsp)
	movl	$0, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%r10d, -1248(%rbp)      # 4-byte Spill
	callq	gtk_table_attach
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.62, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_label
	movq	%rax, -88(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -1256(%rbp)       # 8-byte Spill
	callq	gtk_box_get_type
	movq	-1256(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -1260(%rbp)       # 4-byte Spill
	movl	-1260(%rbp), %r8d       # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-88(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.54, %rsi
	movabsq	$smp_toggle_callback, %rax
	movabsq	$g_values, %rdi
	addq	$16, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-88(%rbp), %rbx
	movq	%rdi, -1272(%rbp)       # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %rdx
	movq	-1272(%rbp), %rcx       # 8-byte Reload
	callq	g_signal_connect_data
	movq	-88(%rbp), %rcx
	movq	%rax, -1280(%rbp)       # 8-byte Spill
	movq	%rcx, -1288(%rbp)       # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-1288(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	g_values+16, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movabsq	$.L.str.63, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_label
	movq	%rax, -88(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -1296(%rbp)       # 8-byte Spill
	callq	gtk_box_get_type
	movq	-1296(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-88(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.54, %rsi
	movabsq	$smp_toggle_callback, %rax
	movabsq	$g_values, %rdi
	addq	$20, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-88(%rbp), %rbx
	movq	%rdi, -1304(%rbp)       # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %rdx
	movq	-1304(%rbp), %rcx       # 8-byte Reload
	callq	g_signal_connect_data
	movq	-88(%rbp), %rcx
	movq	%rax, -1312(%rbp)       # 8-byte Spill
	movq	%rcx, -1320(%rbp)       # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-1320(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	g_values+20, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movl	-124(%rbp), %esi
	addl	$1, %esi
	movl	%esi, -124(%rbp)
	movq	-80(%rbp), %rdi
	callq	gtk_widget_show
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%esi, %esi
	movl	%esi, %edi
	movl	$1, g_di+128
	callq	smp_get_colors
	movabsq	$g_values, %rdi
	callq	update_preview
	movl	$672, %edi              # imm = 0x2A0
	callq	levels_update
	callq	gtk_main
	addq	$1352, %rsp             # imm = 0x548
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	smp_dialog, .Lfunc_end4-smp_dialog
	.cfi_endproc

	.align	16, 0x90
	.type	free_colors,@function
free_colors:                            # @free_colors
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
	subq	$32, %rsp
	movl	$0, -4(%rbp)
.LBB5_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_3 Depth 2
	cmpl	$256, -4(%rbp)          # imm = 0x100
	jge	.LBB5_8
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB5_1 Depth=1
	movabsq	$g_lum_tab, %rax
	movslq	-4(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
.LBB5_3:                                # %for.cond.2
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -16(%rbp)
	je	.LBB5_6
# BB#4:                                 # %for.body.4
                                        #   in Loop: Header=BB5_3 Depth=2
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB5_3 Depth=2
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB5_3
.LBB5_6:                                # %for.end
                                        #   in Loop: Header=BB5_1 Depth=1
	movabsq	$g_lum_tab, %rax
	movslq	-4(%rbp), %rcx
	shlq	$4, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	movq	$0, 8(%rdx)
	movslq	-4(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	$0, (%rax)
# BB#7:                                 # %for.inc.10
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB5_1
.LBB5_8:                                # %for.end.11
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	free_colors, .Lfunc_end5-free_colors
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	4666723172467343360     # double 1.0E+4
	.text
	.align	16, 0x90
	.type	main_colorize,@function
main_colorize:                          # @main_colorize
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
	subq	$192, %rsp
	movl	%edi, -8(%rbp)
	cmpl	$0, g_Sdebug
	je	.LBB6_2
# BB#1:                                 # %if.then
	callq	get_filevalues
.LBB6_2:                                # %if.end
	xorl	%eax, %eax
	movl	$255, %ecx
	movq	$0, -24(%rbp)
	movq	$0, -16(%rbp)
	movl	%eax, %edi
	movl	%eax, %esi
	movl	%eax, %edx
	movl	%ecx, -176(%rbp)        # 4-byte Spill
	movl	-176(%rbp), %r8d        # 4-byte Reload
	movl	-176(%rbp), %r9d        # 4-byte Reload
	callq	color_error
	movsd	.LCPI6_0, %xmm0         # xmm0 = mem[0],zero
	movl	%eax, -164(%rbp)
	cvtsi2ssl	-164(%rbp), %xmm1
	movss	g_values+44, %xmm2      # xmm2 = mem[0],zero,zero,zero
	mulss	g_values+44, %xmm2
	mulss	%xmm2, %xmm1
	cvtss2sd	%xmm1, %xmm1
	divsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, g_tol_col_err
	movl	-164(%rbp), %eax
	movl	%eax, g_max_col_err
	movl	$0, -172(%rbp)
	movl	-8(%rbp), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	.LBB6_10
# BB#3:                                 # %if.then.5
	movl	g_values+4, %eax
	movl	%eax, -168(%rbp)
	cmpl	$-444, -168(%rbp)       # imm = 0xFFFFFFFFFFFFFE44
	je	.LBB6_5
# BB#4:                                 # %lor.lhs.false
	cmpl	$-445, -168(%rbp)       # imm = 0xFFFFFFFFFFFFFE43
	jne	.LBB6_6
.LBB6_5:                                # %if.then.9
	movl	-168(%rbp), %edi
	callq	get_gradient
	jmp	.LBB6_9
.LBB6_6:                                # %if.else
	movl	-168(%rbp), %edi
	callq	is_layer_alive
	cmpl	$0, %eax
	jge	.LBB6_8
# BB#7:                                 # %if.then.13
	movl	$-1, -4(%rbp)
	jmp	.LBB6_21
.LBB6_8:                                # %if.end.14
	movl	-168(%rbp), %edi
	callq	gimp_drawable_get
	leaq	-160(%rbp), %rdi
	xorl	%ecx, %ecx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movl	%ecx, %edx
	callq	init_gdrw
	callq	free_colors
	leaq	-160(%rbp), %rdi
	callq	sample_analyze
	movl	%eax, -172(%rbp)
.LBB6_9:                                # %if.end.17
	jmp	.LBB6_10
.LBB6_10:                               # %if.end.18
	movl	-8(%rbp), %eax
	andl	$2, %eax
	cmpl	$0, %eax
	je	.LBB6_18
# BB#11:                                # %land.lhs.true
	cmpl	$0, -172(%rbp)
	jne	.LBB6_18
# BB#12:                                # %if.then.23
	movl	g_values, %edi
	callq	is_layer_alive
	cmpl	$0, %eax
	jge	.LBB6_14
# BB#13:                                # %if.then.27
	movl	$-1, -4(%rbp)
	jmp	.LBB6_21
.LBB6_14:                               # %if.end.28
	movl	g_values, %edi
	callq	gimp_drawable_get
	movq	%rax, -16(%rbp)
	movl	g_values, %edi
	callq	gimp_drawable_is_gray
	cmpl	$0, %eax
	je	.LBB6_17
# BB#15:                                # %land.lhs.true.32
	movl	-8(%rbp), %eax
	andl	$2, %eax
	cmpl	$0, %eax
	je	.LBB6_17
# BB#16:                                # %if.then.35
	movl	g_values, %edi
	callq	gimp_item_get_image
	movl	%eax, %edi
	callq	gimp_image_convert_rgb
	movl	%eax, -180(%rbp)        # 4-byte Spill
.LBB6_17:                               # %if.end.38
	movq	-16(%rbp), %rax
	movl	(%rax), %edi
	callq	colorize_drawable
.LBB6_18:                               # %if.end.39
	cmpq	$0, -24(%rbp)
	je	.LBB6_20
# BB#19:                                # %if.then.41
	leaq	-160(%rbp), %rdi
	callq	end_gdrw
.LBB6_20:                               # %if.end.42
	movl	-172(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB6_21:                               # %return
	movl	-4(%rbp), %eax
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	main_colorize, .Lfunc_end6-main_colorize
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI7_0:
	.long	1065353216              # float 1
	.text
	.align	16, 0x90
	.type	smp_response_callback,@function
smp_response_callback:                  # @smp_response_callback
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%esi, %eax
	subl	$-10, %esi
	movl	%eax, -16(%rbp)         # 4-byte Spill
	movl	%esi, -20(%rbp)         # 4-byte Spill
	je	.LBB7_3
	jmp	.LBB7_8
.LBB7_8:                                # %entry
	movl	-16(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -24(%rbp)         # 4-byte Spill
	je	.LBB7_1
	jmp	.LBB7_9
.LBB7_9:                                # %entry
	movl	-16(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -28(%rbp)         # 4-byte Spill
	je	.LBB7_2
	jmp	.LBB7_6
.LBB7_1:                                # %sw.bb
	movl	$4095, %edi             # imm = 0xFFF
	movss	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero,zero,zero
	movl	$0, g_values+24
	movl	$255, g_values+28
	movss	%xmm0, g_values+32
	movl	$0, g_values+36
	movl	$255, g_values+40
	callq	levels_update
	jmp	.LBB7_7
.LBB7_2:                                # %sw.bb.1
	movq	-8(%rbp), %rdi
	callq	smp_get_colors
	jmp	.LBB7_7
.LBB7_3:                                # %sw.bb.2
	movl	$2, %edi
	movl	$1, g_show_progress
	callq	main_colorize
	cmpl	$0, %eax
	jne	.LBB7_5
# BB#4:                                 # %if.then
	callq	gimp_displays_flush
	movl	$0, g_show_progress
	movl	%eax, -32(%rbp)         # 4-byte Spill
	jmp	.LBB7_7
.LBB7_5:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967286, %esi       # imm = 0xFFFFFFF6
	xorl	%edx, %edx
	movq	%rax, %rdi
	callq	gtk_dialog_set_response_sensitive
	jmp	.LBB7_7
.LBB7_6:                                # %sw.default
	movq	-8(%rbp), %rdi
	callq	gtk_widget_destroy
	callq	gtk_main_quit
.LBB7_7:                                # %sw.epilog
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	smp_response_callback, .Lfunc_end7-smp_response_callback
	.cfi_endproc

	.align	16, 0x90
	.type	smp_constrain,@function
smp_constrain:                          # @smp_constrain
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
	subq	$32, %rsp
	movl	%edi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	cmpl	$0, -8(%rbp)
	jge	.LBB8_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB8_5
.LBB8_2:                                # %if.end
	movl	-12(%rbp), %edi
	callq	gimp_drawable_is_indexed
	cmpl	$0, %eax
	je	.LBB8_4
# BB#3:                                 # %if.then.1
	movl	$0, -4(%rbp)
	jmp	.LBB8_5
.LBB8_4:                                # %if.end.2
	movl	$1, -4(%rbp)
.LBB8_5:                                # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	smp_constrain, .Lfunc_end8-smp_constrain
	.cfi_endproc

	.align	16, 0x90
	.type	smp_dest_combo_callback,@function
smp_dest_combo_callback:                # @smp_dest_combo_callback
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$g_values, %rsi
	movq	%rax, %rdi
	callq	gimp_int_combo_box_get_active
	movabsq	$g_values, %rdi
	movl	%eax, -20(%rbp)         # 4-byte Spill
	callq	update_preview
	movq	g_di, %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	gtk_dialog_set_response_sensitive
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	smp_dest_combo_callback, .Lfunc_end9-smp_dest_combo_callback
	.cfi_endproc

	.align	16, 0x90
	.type	smp_sample_combo_callback,@function
smp_sample_combo_callback:              # @smp_sample_combo_callback
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-12(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_int_combo_box_get_active
	movl	-12(%rbp), %ecx
	movl	%ecx, g_values+4
	cmpl	$-444, -12(%rbp)        # imm = 0xFFFFFFFFFFFFFE44
	movl	%eax, -28(%rbp)         # 4-byte Spill
	je	.LBB10_2
# BB#1:                                 # %lor.lhs.false
	cmpl	$-445, -12(%rbp)        # imm = 0xFFFFFFFFFFFFFE43
	jne	.LBB10_5
.LBB10_2:                               # %if.then
	movl	-12(%rbp), %edi
	callq	get_gradient
	xorl	%edi, %edi
                                        # kill: RDI<def> EDI<kill>
	callq	smp_get_colors
	cmpq	$0, g_di+8
	je	.LBB10_4
# BB#3:                                 # %if.then.4
	movq	g_di+8, %rdi
	callq	clear_preview
.LBB10_4:                               # %if.end
	movq	g_di, %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967286, %esi       # imm = 0xFFFFFFF6
	movl	$1, %edx
	movq	%rax, %rdi
	callq	gtk_dialog_set_response_sensitive
	movq	g_di, %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	xorl	%edx, %edx
	movq	%rax, %rdi
	callq	gtk_dialog_set_response_sensitive
	jmp	.LBB10_6
.LBB10_5:                               # %if.else
	movabsq	$g_values, %rax
	addq	$4, %rax
	movq	%rax, %rdi
	callq	update_preview
	movq	g_di, %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	gtk_dialog_set_response_sensitive
.LBB10_6:                               # %if.end.11
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	smp_sample_combo_callback, .Lfunc_end10-smp_sample_combo_callback
	.cfi_endproc

	.align	16, 0x90
	.type	smp_toggle_callback,@function
smp_toggle_callback:                    # @smp_toggle_callback
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_toggle_button_get_active
	movabsq	$g_di, %rsi
	addq	$132, %rsi
	movq	-24(%rbp), %rdi
	movl	%eax, (%rdi)
	cmpq	%rsi, -16(%rbp)
	je	.LBB11_2
# BB#1:                                 # %lor.lhs.false
	movabsq	$g_di, %rax
	addq	$140, %rax
	cmpq	%rax, -16(%rbp)
	jne	.LBB11_3
.LBB11_2:                               # %if.then
	movabsq	$g_values, %rax
	addq	$4, %rax
	movq	%rax, %rdi
	callq	update_preview
	jmp	.LBB11_17
.LBB11_3:                               # %if.end
	movabsq	$g_di, %rax
	addq	$136, %rax
	cmpq	%rax, -16(%rbp)
	je	.LBB11_5
# BB#4:                                 # %lor.lhs.false.5
	movabsq	$g_di, %rax
	addq	$144, %rax
	cmpq	%rax, -16(%rbp)
	jne	.LBB11_6
.LBB11_5:                               # %if.then.7
	movabsq	$g_values, %rdi
	callq	update_preview
	jmp	.LBB11_17
.LBB11_6:                               # %if.end.8
	movabsq	$g_values, %rax
	addq	$8, %rax
	cmpq	%rax, -16(%rbp)
	je	.LBB11_9
# BB#7:                                 # %lor.lhs.false.10
	movabsq	$g_values, %rax
	addq	$12, %rax
	cmpq	%rax, -16(%rbp)
	je	.LBB11_9
# BB#8:                                 # %lor.lhs.false.12
	movabsq	$g_values, %rax
	addq	$16, %rax
	cmpq	%rax, -16(%rbp)
	jne	.LBB11_12
.LBB11_9:                               # %if.then.14
	cmpq	$0, g_di+96
	je	.LBB11_11
# BB#10:                                # %if.then.15
	movq	g_di+96, %rdi
	movl	g_values+8, %esi
	callq	gtk_widget_set_sensitive
.LBB11_11:                              # %if.end.16
	movabsq	$g_dst_preview_buffer, %rsi
	movq	g_di+16, %rdi
	callq	refresh_dst_preview
.LBB11_12:                              # %if.end.17
	movabsq	$g_values, %rax
	addq	$20, %rax
	cmpq	%rax, -16(%rbp)
	jne	.LBB11_17
# BB#13:                                # %if.then.19
	cmpl	$0, g_values+20
	je	.LBB11_15
# BB#14:                                # %if.then.21
	callq	guess_missing_colors
	jmp	.LBB11_16
.LBB11_15:                              # %if.else
	callq	fill_missing_colors
.LBB11_16:                              # %if.end.22
	xorl	%eax, %eax
	movl	%eax, %edi
	callq	smp_get_colors
.LBB11_17:                              # %if.end.23
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	smp_toggle_callback, .Lfunc_end11-smp_toggle_callback
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI12_0:
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI12_1:
	.quad	4643176031446892544     # double 255
.LCPI12_2:
	.quad	4643211215818981376     # double 256
.LCPI12_3:
	.quad	4611686018427387904     # double 2
.LCPI12_4:
	.quad	4636737291354636288     # double 100
.LCPI12_5:
	.quad	4602678819172646912     # double 0.5
.LCPI12_7:
	.quad	4607182418800017408     # double 1
.LCPI12_8:
	.quad	4621819117588971520     # double 10
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI12_6:
	.long	1120403456              # float 100
	.text
	.align	16, 0x90
	.type	level_in_events,@function
level_in_events:                        # @level_in_events
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
	subq	$176, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -72(%rbp)
	movq	-16(%rbp), %rsi
	movl	(%rsi), %eax
	addl	$-2, %eax
	movl	%eax, %esi
	subl	$5, %eax
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	movl	%eax, -84(%rbp)         # 4-byte Spill
	ja	.LBB12_25
# BB#55:                                # %entry
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	.LJTI12_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB12_1:                               # %sw.bb
	cmpl	$0, g_Sdebug
	je	.LBB12_3
# BB#2:                                 # %if.then
	movabsq	$.L.str.64, %rdi
	movb	$0, %al
	callq	printf
	movl	%eax, -88(%rbp)         # 4-byte Spill
.LBB12_3:                               # %if.end
	movq	-8(%rbp), %rax
	cmpq	g_di+48, %rax
	jne	.LBB12_5
# BB#4:                                 # %if.then.5
	movl	$128, %edi
	callq	levels_update
.LBB12_5:                               # %if.end.6
	jmp	.LBB12_28
.LBB12_6:                               # %sw.bb.7
	cmpl	$0, g_Sdebug
	je	.LBB12_8
# BB#7:                                 # %if.then.9
	movabsq	$.L.str.65, %rdi
	movb	$0, %al
	callq	printf
	movl	%eax, -92(%rbp)         # 4-byte Spill
.LBB12_8:                               # %if.end.11
	movq	-8(%rbp), %rdi
	callq	gtk_grab_add
	movq	-16(%rbp), %rdi
	movq	%rdi, -24(%rbp)
	movl	$2147483647, -64(%rbp)  # imm = 0x7FFFFFFF
	movl	$0, -68(%rbp)
.LBB12_9:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$3, -68(%rbp)
	jge	.LBB12_14
# BB#10:                                # %for.body
                                        #   in Loop: Header=BB12_9 Depth=1
	movq	-24(%rbp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	movslq	-68(%rbp), %rax
	cvtsi2sdl	g_di+108(,%rax,4), %xmm1
	subsd	%xmm1, %xmm0
	movapd	.LCPI12_0(%rip), %xmm1  # xmm1 = [9223372036854775807,9223372036854775807]
	andpd	%xmm1, %xmm0
	cvtsi2sdl	-64(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB12_12
# BB#11:                                # %if.then.18
                                        #   in Loop: Header=BB12_9 Depth=1
	movl	-68(%rbp), %eax
	movl	%eax, g_di+104
	movq	-24(%rbp), %rcx
	movsd	24(%rcx), %xmm0         # xmm0 = mem[0],zero
	movslq	-68(%rbp), %rcx
	cvtsi2sdl	g_di+108(,%rcx,4), %xmm1
	subsd	%xmm1, %xmm0
	movapd	.LCPI12_0(%rip), %xmm1  # xmm1 = [9223372036854775807,9223372036854775807]
	andpd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -64(%rbp)
.LBB12_12:                              # %if.end.26
                                        #   in Loop: Header=BB12_9 Depth=1
	jmp	.LBB12_13
.LBB12_13:                              # %for.inc
                                        #   in Loop: Header=BB12_9 Depth=1
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB12_9
.LBB12_14:                              # %for.end
	movq	-24(%rbp), %rax
	cvttsd2si	24(%rax), %ecx
	movl	%ecx, -60(%rbp)
	movl	$1, -72(%rbp)
	jmp	.LBB12_28
.LBB12_15:                              # %sw.bb.29
	cmpl	$0, g_Sdebug
	je	.LBB12_17
# BB#16:                                # %if.then.31
	movabsq	$.L.str.66, %rdi
	movb	$0, %al
	callq	printf
	movl	%eax, -96(%rbp)         # 4-byte Spill
.LBB12_17:                              # %if.end.33
	movq	-8(%rbp), %rdi
	callq	gtk_grab_remove
	movl	g_di+104(%rip), %eax
	testl	%eax, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	je	.LBB12_18
	jmp	.LBB12_56
.LBB12_56:                              # %if.end.33
	movl	-100(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
	je	.LBB12_19
	jmp	.LBB12_57
.LBB12_57:                              # %if.end.33
	movl	-100(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
	je	.LBB12_20
	jmp	.LBB12_21
.LBB12_18:                              # %sw.bb.34
	movl	$515, %edi              # imm = 0x203
	callq	levels_update
	jmp	.LBB12_21
.LBB12_19:                              # %sw.bb.35
	movl	$2, %edi
	callq	levels_update
	jmp	.LBB12_21
.LBB12_20:                              # %sw.bb.36
	movl	$518, %edi              # imm = 0x206
	callq	levels_update
.LBB12_21:                              # %sw.epilog
	movabsq	$g_dst_preview_buffer, %rsi
	movq	g_di+16, %rdi
	callq	refresh_dst_preview
	jmp	.LBB12_28
.LBB12_22:                              # %sw.bb.37
	cmpl	$0, g_Sdebug
	je	.LBB12_24
# BB#23:                                # %if.then.39
	movabsq	$.L.str.67, %rdi
	movb	$0, %al
	callq	printf
	movl	%eax, -112(%rbp)        # 4-byte Spill
.LBB12_24:                              # %if.end.41
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cvttsd2si	24(%rax), %ecx
	movl	%ecx, -60(%rbp)
	movq	-32(%rbp), %rdi
	callq	gdk_event_request_motions
	movl	$1, -72(%rbp)
	jmp	.LBB12_28
.LBB12_25:                              # %sw.default
	cmpl	$0, g_Sdebug
	je	.LBB12_27
# BB#26:                                # %if.then.45
	movabsq	$.L.str.68, %rdi
	movb	$0, %al
	callq	printf
	movl	%eax, -116(%rbp)        # 4-byte Spill
.LBB12_27:                              # %if.end.47
	jmp	.LBB12_28
.LBB12_28:                              # %sw.epilog.48
	cmpl	$0, -72(%rbp)
	je	.LBB12_54
# BB#29:                                # %if.then.50
	cmpl	$0, g_Sdebug
	je	.LBB12_31
# BB#30:                                # %if.then.52
	movabsq	$.L.str.69, %rdi
	movb	$0, %al
	callq	printf
	movl	%eax, -120(%rbp)        # 4-byte Spill
.LBB12_31:                              # %if.end.54
	movl	g_di+104(%rip), %eax
	testl	%eax, %eax
	movl	%eax, -124(%rbp)        # 4-byte Spill
	je	.LBB12_32
	jmp	.LBB12_58
.LBB12_58:                              # %if.end.54
	movl	-124(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -128(%rbp)        # 4-byte Spill
	je	.LBB12_39
	jmp	.LBB12_59
.LBB12_59:                              # %if.end.54
	movl	-124(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -132(%rbp)        # 4-byte Spill
	je	.LBB12_46
	jmp	.LBB12_53
.LBB12_32:                              # %sw.bb.55
	movsd	.LCPI12_1, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI12_2, %xmm1        # xmm1 = mem[0],zero
	cvtsi2sdl	-60(%rbp), %xmm2
	divsd	%xmm1, %xmm2
	mulsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movl	%eax, g_values+24
	movl	g_values+24, %eax
	cmpl	g_values+28, %eax
	jle	.LBB12_34
# BB#33:                                # %cond.true
	movl	g_values+28, %eax
	movl	%eax, -136(%rbp)        # 4-byte Spill
	jmp	.LBB12_38
.LBB12_34:                              # %cond.false
	cmpl	$0, g_values+24
	jge	.LBB12_36
# BB#35:                                # %cond.true.62
	xorl	%eax, %eax
	movl	%eax, -140(%rbp)        # 4-byte Spill
	jmp	.LBB12_37
.LBB12_36:                              # %cond.false.63
	movl	g_values+24, %eax
	movl	%eax, -140(%rbp)        # 4-byte Spill
.LBB12_37:                              # %cond.end
	movl	-140(%rbp), %eax        # 4-byte Reload
	movl	%eax, -136(%rbp)        # 4-byte Spill
.LBB12_38:                              # %cond.end.64
	movl	-136(%rbp), %eax        # 4-byte Reload
	movl	%eax, g_values+24
	jmp	.LBB12_53
.LBB12_39:                              # %sw.bb.66
	movsd	.LCPI12_3, %xmm0        # xmm0 = mem[0],zero
	movl	g_di+116, %eax
	subl	g_di+108, %eax
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -40(%rbp)
	cvtsi2sdl	g_di+108, %xmm0
	addsd	-40(%rbp), %xmm0
	movsd	%xmm0, -48(%rbp)
	movl	-60(%rbp), %eax
	cmpl	g_di+116, %eax
	jle	.LBB12_41
# BB#40:                                # %cond.true.73
	movl	g_di+116, %eax
	movl	%eax, -144(%rbp)        # 4-byte Spill
	jmp	.LBB12_45
.LBB12_41:                              # %cond.false.74
	movl	-60(%rbp), %eax
	cmpl	g_di+108, %eax
	jge	.LBB12_43
# BB#42:                                # %cond.true.77
	movl	g_di+108, %eax
	movl	%eax, -148(%rbp)        # 4-byte Spill
	jmp	.LBB12_44
.LBB12_43:                              # %cond.false.78
	movl	-60(%rbp), %eax
	movl	%eax, -148(%rbp)        # 4-byte Spill
.LBB12_44:                              # %cond.end.79
	movl	-148(%rbp), %eax        # 4-byte Reload
	movl	%eax, -144(%rbp)        # 4-byte Spill
.LBB12_45:                              # %cond.end.81
	movl	-144(%rbp), %eax        # 4-byte Reload
	movsd	.LCPI12_8, %xmm0        # xmm0 = mem[0],zero
	movl	%eax, -60(%rbp)
	cvtsi2sdl	-60(%rbp), %xmm1
	subsd	-48(%rbp), %xmm1
	divsd	-40(%rbp), %xmm1
	movsd	%xmm1, -56(%rbp)
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	pow
	movsd	.LCPI12_4, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI12_5, %xmm2        # xmm2 = mem[0],zero
	movss	.LCPI12_6, %xmm3        # xmm3 = mem[0],zero,zero,zero
	movsd	.LCPI12_7, %xmm4        # xmm4 = mem[0],zero
	divsd	%xmm0, %xmm4
	cvtsd2ss	%xmm4, %xmm0
	movss	%xmm0, g_values+32
	mulss	g_values+32, %xmm3
	cvtss2sd	%xmm3, %xmm0
	addsd	%xmm2, %xmm0
	movsd	%xmm1, -160(%rbp)       # 8-byte Spill
	callq	floor
	movsd	-160(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, g_values+32
	jmp	.LBB12_53
.LBB12_46:                              # %sw.bb.95
	movsd	.LCPI12_1, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI12_2, %xmm1        # xmm1 = mem[0],zero
	cvtsi2sdl	-60(%rbp), %xmm2
	divsd	%xmm1, %xmm2
	mulsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movl	%eax, g_values+28
	cmpl	$255, g_values+28
	jle	.LBB12_48
# BB#47:                                # %cond.true.102
	movl	$255, %eax
	movl	%eax, -164(%rbp)        # 4-byte Spill
	jmp	.LBB12_52
.LBB12_48:                              # %cond.false.103
	movl	g_values+28, %eax
	cmpl	g_values+24, %eax
	jge	.LBB12_50
# BB#49:                                # %cond.true.106
	movl	g_values+24, %eax
	movl	%eax, -168(%rbp)        # 4-byte Spill
	jmp	.LBB12_51
.LBB12_50:                              # %cond.false.107
	movl	g_values+28, %eax
	movl	%eax, -168(%rbp)        # 4-byte Spill
.LBB12_51:                              # %cond.end.108
	movl	-168(%rbp), %eax        # 4-byte Reload
	movl	%eax, -164(%rbp)        # 4-byte Spill
.LBB12_52:                              # %cond.end.110
	movl	-164(%rbp), %eax        # 4-byte Reload
	movl	%eax, g_values+28
.LBB12_53:                              # %sw.epilog.112
	movl	$672, %edi              # imm = 0x2A0
	callq	levels_update
.LBB12_54:                              # %if.end.113
	xorl	%eax, %eax
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	level_in_events, .Lfunc_end12-level_in_events
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI12_0:
	.quad	.LBB12_1
	.quad	.LBB12_22
	.quad	.LBB12_6
	.quad	.LBB12_25
	.quad	.LBB12_25
	.quad	.LBB12_15

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI13_0:
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI13_1:
	.quad	4643176031446892544     # double 255
.LCPI13_2:
	.quad	4643211215818981376     # double 256
	.text
	.align	16, 0x90
	.type	level_out_events,@function
level_out_events:                       # @level_out_events
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -48(%rbp)
	movq	-16(%rbp), %rsi
	movl	(%rsi), %eax
	addl	$-2, %eax
	movl	%eax, %esi
	subl	$5, %eax
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	movl	%eax, -60(%rbp)         # 4-byte Spill
	ja	.LBB13_24
# BB#47:                                # %entry
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	.LJTI13_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB13_1:                               # %sw.bb
	cmpl	$0, g_Sdebug
	je	.LBB13_3
# BB#2:                                 # %if.then
	movabsq	$.L.str.70, %rdi
	movb	$0, %al
	callq	printf
	movl	%eax, -64(%rbp)         # 4-byte Spill
.LBB13_3:                               # %if.end
	movq	-8(%rbp), %rax
	cmpq	g_di+32, %rax
	jne	.LBB13_5
# BB#4:                                 # %if.then.1
	movl	$256, %edi              # imm = 0x100
	callq	levels_update
.LBB13_5:                               # %if.end.2
	jmp	.LBB13_27
.LBB13_6:                               # %sw.bb.3
	cmpl	$0, g_Sdebug
	je	.LBB13_8
# BB#7:                                 # %if.then.5
	movabsq	$.L.str.71, %rdi
	movb	$0, %al
	callq	printf
	movl	%eax, -68(%rbp)         # 4-byte Spill
.LBB13_8:                               # %if.end.7
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	movl	$2147483647, -40(%rbp)  # imm = 0x7FFFFFFF
	movl	$3, -44(%rbp)
.LBB13_9:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$5, -44(%rbp)
	jge	.LBB13_14
# BB#10:                                # %for.body
                                        #   in Loop: Header=BB13_9 Depth=1
	movq	-24(%rbp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	movslq	-44(%rbp), %rax
	cvtsi2sdl	g_di+108(,%rax,4), %xmm1
	subsd	%xmm1, %xmm0
	movapd	.LCPI13_0(%rip), %xmm1  # xmm1 = [9223372036854775807,9223372036854775807]
	andpd	%xmm1, %xmm0
	cvtsi2sdl	-40(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB13_12
# BB#11:                                # %if.then.14
                                        #   in Loop: Header=BB13_9 Depth=1
	movl	-44(%rbp), %eax
	movl	%eax, g_di+104
	movq	-24(%rbp), %rcx
	movsd	24(%rcx), %xmm0         # xmm0 = mem[0],zero
	movslq	-44(%rbp), %rcx
	cvtsi2sdl	g_di+108(,%rcx,4), %xmm1
	subsd	%xmm1, %xmm0
	movapd	.LCPI13_0(%rip), %xmm1  # xmm1 = [9223372036854775807,9223372036854775807]
	andpd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -40(%rbp)
.LBB13_12:                              # %if.end.22
                                        #   in Loop: Header=BB13_9 Depth=1
	jmp	.LBB13_13
.LBB13_13:                              # %for.inc
                                        #   in Loop: Header=BB13_9 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB13_9
.LBB13_14:                              # %for.end
	movq	-24(%rbp), %rax
	cvttsd2si	24(%rax), %ecx
	movl	%ecx, -36(%rbp)
	movl	$1, -48(%rbp)
	jmp	.LBB13_27
.LBB13_15:                              # %sw.bb.25
	cmpl	$0, g_Sdebug
	je	.LBB13_17
# BB#16:                                # %if.then.27
	movabsq	$.L.str.72, %rdi
	movb	$0, %al
	callq	printf
	movl	%eax, -72(%rbp)         # 4-byte Spill
.LBB13_17:                              # %if.end.29
	movl	g_di+104(%rip), %eax
	movl	%eax, %ecx
	subl	$3, %ecx
	movl	%eax, -76(%rbp)         # 4-byte Spill
	movl	%ecx, -80(%rbp)         # 4-byte Spill
	je	.LBB13_18
	jmp	.LBB13_48
.LBB13_48:                              # %if.end.29
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$4, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	je	.LBB13_19
	jmp	.LBB13_20
.LBB13_18:                              # %sw.bb.30
	movl	$520, %edi              # imm = 0x208
	callq	levels_update
	jmp	.LBB13_20
.LBB13_19:                              # %sw.bb.31
	movl	$528, %edi              # imm = 0x210
	callq	levels_update
.LBB13_20:                              # %sw.epilog
	movabsq	$g_dst_preview_buffer, %rsi
	movq	g_di+16, %rdi
	callq	refresh_dst_preview
	jmp	.LBB13_27
.LBB13_21:                              # %sw.bb.32
	cmpl	$0, g_Sdebug
	je	.LBB13_23
# BB#22:                                # %if.then.34
	movabsq	$.L.str.73, %rdi
	movb	$0, %al
	callq	printf
	movl	%eax, -88(%rbp)         # 4-byte Spill
.LBB13_23:                              # %if.end.36
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cvttsd2si	24(%rax), %ecx
	movl	%ecx, -36(%rbp)
	movq	-32(%rbp), %rdi
	callq	gdk_event_request_motions
	movl	$1, -48(%rbp)
	jmp	.LBB13_27
.LBB13_24:                              # %sw.default
	cmpl	$0, g_Sdebug
	je	.LBB13_26
# BB#25:                                # %if.then.40
	movabsq	$.L.str.74, %rdi
	movb	$0, %al
	callq	printf
	movl	%eax, -92(%rbp)         # 4-byte Spill
.LBB13_26:                              # %if.end.42
	jmp	.LBB13_27
.LBB13_27:                              # %sw.epilog.43
	cmpl	$0, -48(%rbp)
	je	.LBB13_46
# BB#28:                                # %if.then.45
	cmpl	$0, g_Sdebug
	je	.LBB13_30
# BB#29:                                # %if.then.47
	movabsq	$.L.str.75, %rdi
	movb	$0, %al
	callq	printf
	movl	%eax, -96(%rbp)         # 4-byte Spill
.LBB13_30:                              # %if.end.49
	movl	g_di+104(%rip), %eax
	movl	%eax, %ecx
	subl	$3, %ecx
	movl	%eax, -100(%rbp)        # 4-byte Spill
	movl	%ecx, -104(%rbp)        # 4-byte Spill
	je	.LBB13_31
	jmp	.LBB13_49
.LBB13_49:                              # %if.end.49
	movl	-100(%rbp), %eax        # 4-byte Reload
	subl	$4, %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
	je	.LBB13_38
	jmp	.LBB13_45
.LBB13_31:                              # %sw.bb.50
	movsd	.LCPI13_1, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI13_2, %xmm1        # xmm1 = mem[0],zero
	cvtsi2sdl	-36(%rbp), %xmm2
	divsd	%xmm1, %xmm2
	mulsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movl	%eax, g_values+36
	movl	g_values+36, %eax
	cmpl	g_values+40, %eax
	jle	.LBB13_33
# BB#32:                                # %cond.true
	movl	g_values+40, %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
	jmp	.LBB13_37
.LBB13_33:                              # %cond.false
	cmpl	$0, g_values+36
	jge	.LBB13_35
# BB#34:                                # %cond.true.57
	xorl	%eax, %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
	jmp	.LBB13_36
.LBB13_35:                              # %cond.false.58
	movl	g_values+36, %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
.LBB13_36:                              # %cond.end
	movl	-116(%rbp), %eax        # 4-byte Reload
	movl	%eax, -112(%rbp)        # 4-byte Spill
.LBB13_37:                              # %cond.end.59
	movl	-112(%rbp), %eax        # 4-byte Reload
	movl	%eax, g_values+36
	jmp	.LBB13_45
.LBB13_38:                              # %sw.bb.61
	movsd	.LCPI13_1, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI13_2, %xmm1        # xmm1 = mem[0],zero
	cvtsi2sdl	-36(%rbp), %xmm2
	divsd	%xmm1, %xmm2
	mulsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movl	%eax, g_values+40
	cmpl	$255, g_values+40
	jle	.LBB13_40
# BB#39:                                # %cond.true.68
	movl	$255, %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
	jmp	.LBB13_44
.LBB13_40:                              # %cond.false.69
	movl	g_values+40, %eax
	cmpl	g_values+36, %eax
	jge	.LBB13_42
# BB#41:                                # %cond.true.72
	movl	g_values+36, %eax
	movl	%eax, -124(%rbp)        # 4-byte Spill
	jmp	.LBB13_43
.LBB13_42:                              # %cond.false.73
	movl	g_values+40, %eax
	movl	%eax, -124(%rbp)        # 4-byte Spill
.LBB13_43:                              # %cond.end.74
	movl	-124(%rbp), %eax        # 4-byte Reload
	movl	%eax, -120(%rbp)        # 4-byte Spill
.LBB13_44:                              # %cond.end.76
	movl	-120(%rbp), %eax        # 4-byte Reload
	movl	%eax, g_values+40
.LBB13_45:                              # %sw.epilog.78
	movl	$832, %edi              # imm = 0x340
	callq	levels_update
.LBB13_46:                              # %if.end.79
	xorl	%eax, %eax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	level_out_events, .Lfunc_end13-level_out_events
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI13_0:
	.quad	.LBB13_1
	.quad	.LBB13_21
	.quad	.LBB13_6
	.quad	.LBB13_24
	.quad	.LBB13_24
	.quad	.LBB13_15

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI14_0:
	.quad	4643140847074803712     # double 254
	.text
	.align	16, 0x90
	.type	smp_adj_lvl_in_min_upd_callback,@function
smp_adj_lvl_in_min_upd_callback:        # @smp_adj_lvl_in_min_upd_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp52:
	.cfi_def_cfa_offset 16
.Ltmp53:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp54:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_adjustment_get_value
	movsd	.LCPI14_0, %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB14_2
# BB#1:                                 # %cond.true
	movsd	.LCPI14_0, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
	jmp	.LBB14_6
.LBB14_2:                               # %cond.false
	movq	-8(%rbp), %rdi
	callq	gtk_adjustment_get_value
	xorps	%xmm1, %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB14_4
# BB#3:                                 # %cond.true.3
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -40(%rbp)        # 8-byte Spill
	jmp	.LBB14_5
.LBB14_4:                               # %cond.false.4
	movq	-8(%rbp), %rdi
	callq	gtk_adjustment_get_value
	movsd	%xmm0, -40(%rbp)        # 8-byte Spill
.LBB14_5:                               # %cond.end
	movsd	-40(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
.LBB14_6:                               # %cond.end.6
	movsd	-32(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -16(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	g_values+24, %xmm1
	ucomisd	%xmm1, %xmm0
	jne	.LBB14_7
	jp	.LBB14_7
	jmp	.LBB14_10
.LBB14_7:                               # %if.then
	cvttsd2si	-16(%rbp), %eax
	movl	%eax, g_values+24
	movl	$1696, -20(%rbp)        # imm = 0x6A0
	movl	g_values+24, %eax
	cmpl	g_values+28, %eax
	jle	.LBB14_9
# BB#8:                                 # %if.then.13
	movl	g_values+24, %eax
	movl	%eax, g_values+28
	movl	-20(%rbp), %eax
	orl	$4, %eax
	movl	%eax, -20(%rbp)
.LBB14_9:                               # %if.end
	movl	-20(%rbp), %edi
	callq	levels_update
.LBB14_10:                              # %if.end.14
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	smp_adj_lvl_in_min_upd_callback, .Lfunc_end14-smp_adj_lvl_in_min_upd_callback
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI15_0:
	.quad	4621819117588971520     # double 10
.LCPI15_1:
	.quad	4591870180066957722     # double 0.10000000000000001
	.text
	.align	16, 0x90
	.type	smp_text_gamma_upd_callback,@function
smp_text_gamma_upd_callback:            # @smp_text_gamma_upd_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp55:
	.cfi_def_cfa_offset 16
.Ltmp56:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp57:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_adjustment_get_value
	movsd	.LCPI15_0, %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB15_2
# BB#1:                                 # %cond.true
	movsd	.LCPI15_0, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -24(%rbp)        # 8-byte Spill
	jmp	.LBB15_6
.LBB15_2:                               # %cond.false
	movq	-8(%rbp), %rdi
	callq	gtk_adjustment_get_value
	movsd	.LCPI15_1, %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB15_4
# BB#3:                                 # %cond.true.3
	movsd	.LCPI15_1, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
	jmp	.LBB15_5
.LBB15_4:                               # %cond.false.4
	movq	-8(%rbp), %rdi
	callq	gtk_adjustment_get_value
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
.LBB15_5:                               # %cond.end
	movsd	-32(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -24(%rbp)        # 8-byte Spill
.LBB15_6:                               # %cond.end.6
	movsd	-24(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -16(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtss2sd	g_values+32, %xmm1
	ucomisd	%xmm1, %xmm0
	jne	.LBB15_7
	jp	.LBB15_7
	jmp	.LBB15_8
.LBB15_7:                               # %if.then
	movl	$1696, %edi             # imm = 0x6A0
	cvtsd2ss	-16(%rbp), %xmm0
	movss	%xmm0, g_values+32
	callq	levels_update
.LBB15_8:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	smp_text_gamma_upd_callback, .Lfunc_end15-smp_text_gamma_upd_callback
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI16_0:
	.quad	4643176031446892544     # double 255
.LCPI16_1:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	smp_adj_lvl_in_max_upd_callback,@function
smp_adj_lvl_in_max_upd_callback:        # @smp_adj_lvl_in_max_upd_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp58:
	.cfi_def_cfa_offset 16
.Ltmp59:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp60:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_adjustment_get_value
	movsd	.LCPI16_0, %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB16_2
# BB#1:                                 # %cond.true
	movsd	.LCPI16_0, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -24(%rbp)        # 8-byte Spill
	jmp	.LBB16_6
.LBB16_2:                               # %cond.false
	movq	-8(%rbp), %rdi
	callq	gtk_adjustment_get_value
	movsd	.LCPI16_1, %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB16_4
# BB#3:                                 # %cond.true.3
	movsd	.LCPI16_1, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
	jmp	.LBB16_5
.LBB16_4:                               # %cond.false.4
	movq	-8(%rbp), %rdi
	callq	gtk_adjustment_get_value
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
.LBB16_5:                               # %cond.end
	movsd	-32(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -24(%rbp)        # 8-byte Spill
.LBB16_6:                               # %cond.end.6
	movsd	-24(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	cmpl	g_values+28, %eax
	je	.LBB16_10
# BB#7:                                 # %if.then
	movl	-12(%rbp), %eax
	movl	%eax, g_values+28
	movl	$1696, -16(%rbp)        # imm = 0x6A0
	movl	g_values+28, %eax
	cmpl	g_values+24, %eax
	jge	.LBB16_9
# BB#8:                                 # %if.then.12
	movl	g_values+28, %eax
	movl	%eax, g_values+24
	movl	-16(%rbp), %eax
	orl	$1, %eax
	movl	%eax, -16(%rbp)
.LBB16_9:                               # %if.end
	movl	-16(%rbp), %edi
	callq	levels_update
.LBB16_10:                              # %if.end.13
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	smp_adj_lvl_in_max_upd_callback, .Lfunc_end16-smp_adj_lvl_in_max_upd_callback
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI17_0:
	.quad	4643140847074803712     # double 254
	.text
	.align	16, 0x90
	.type	smp_adj_lvl_out_min_upd_callback,@function
smp_adj_lvl_out_min_upd_callback:       # @smp_adj_lvl_out_min_upd_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp61:
	.cfi_def_cfa_offset 16
.Ltmp62:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp63:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_adjustment_get_value
	movsd	.LCPI17_0, %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB17_2
# BB#1:                                 # %cond.true
	movsd	.LCPI17_0, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
	jmp	.LBB17_6
.LBB17_2:                               # %cond.false
	movq	-8(%rbp), %rdi
	callq	gtk_adjustment_get_value
	xorps	%xmm1, %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB17_4
# BB#3:                                 # %cond.true.3
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -40(%rbp)        # 8-byte Spill
	jmp	.LBB17_5
.LBB17_4:                               # %cond.false.4
	movq	-8(%rbp), %rdi
	callq	gtk_adjustment_get_value
	movsd	%xmm0, -40(%rbp)        # 8-byte Spill
.LBB17_5:                               # %cond.end
	movsd	-40(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
.LBB17_6:                               # %cond.end.6
	movsd	-32(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -16(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	g_values+36, %xmm1
	ucomisd	%xmm1, %xmm0
	jne	.LBB17_7
	jp	.LBB17_7
	jmp	.LBB17_10
.LBB17_7:                               # %if.then
	cvttsd2si	-16(%rbp), %eax
	movl	%eax, g_values+36
	movl	$1856, -20(%rbp)        # imm = 0x740
	movl	g_values+36, %eax
	cmpl	g_values+40, %eax
	jle	.LBB17_9
# BB#8:                                 # %if.then.13
	movl	g_values+36, %eax
	movl	%eax, g_values+40
	movl	-20(%rbp), %eax
	orl	$16, %eax
	movl	%eax, -20(%rbp)
.LBB17_9:                               # %if.end
	movl	-20(%rbp), %edi
	callq	levels_update
.LBB17_10:                              # %if.end.14
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	smp_adj_lvl_out_min_upd_callback, .Lfunc_end17-smp_adj_lvl_out_min_upd_callback
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI18_0:
	.quad	4643176031446892544     # double 255
.LCPI18_1:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	smp_adj_lvl_out_max_upd_callback,@function
smp_adj_lvl_out_max_upd_callback:       # @smp_adj_lvl_out_max_upd_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp64:
	.cfi_def_cfa_offset 16
.Ltmp65:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp66:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_adjustment_get_value
	movsd	.LCPI18_0, %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB18_2
# BB#1:                                 # %cond.true
	movsd	.LCPI18_0, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -24(%rbp)        # 8-byte Spill
	jmp	.LBB18_6
.LBB18_2:                               # %cond.false
	movq	-8(%rbp), %rdi
	callq	gtk_adjustment_get_value
	movsd	.LCPI18_1, %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB18_4
# BB#3:                                 # %cond.true.3
	movsd	.LCPI18_1, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
	jmp	.LBB18_5
.LBB18_4:                               # %cond.false.4
	movq	-8(%rbp), %rdi
	callq	gtk_adjustment_get_value
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
.LBB18_5:                               # %cond.end
	movsd	-32(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -24(%rbp)        # 8-byte Spill
.LBB18_6:                               # %cond.end.6
	movsd	-24(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	cmpl	g_values+40, %eax
	je	.LBB18_10
# BB#7:                                 # %if.then
	movl	-12(%rbp), %eax
	movl	%eax, g_values+40
	movl	$1856, -16(%rbp)        # imm = 0x740
	movl	g_values+40, %eax
	cmpl	g_values+36, %eax
	jge	.LBB18_9
# BB#8:                                 # %if.then.12
	movl	g_values+40, %eax
	movl	%eax, g_values+36
	movl	-16(%rbp), %eax
	orl	$8, %eax
	movl	%eax, -16(%rbp)
.LBB18_9:                               # %if.end
	movl	-16(%rbp), %edi
	callq	levels_update
.LBB18_10:                              # %if.end.13
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	smp_adj_lvl_out_max_upd_callback, .Lfunc_end18-smp_adj_lvl_out_max_upd_callback
	.cfi_endproc

	.align	16, 0x90
	.type	smp_get_colors,@function
smp_get_colors:                         # @smp_get_colors
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp67:
	.cfi_def_cfa_offset 16
.Ltmp68:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp69:
	.cfi_def_cfa_register %rbp
	subq	$11600, %rsp            # imm = 0x2D50
	movabsq	$g_values, %rax
	addq	$4, %rax
	movq	%rdi, -8(%rbp)
	movq	%rax, %rdi
	callq	update_preview
	cmpq	$0, -8(%rbp)
	je	.LBB19_3
# BB#1:                                 # %land.lhs.true
	movl	$1, %edi
	callq	main_colorize
	cmpl	$0, %eax
	jl	.LBB19_3
# BB#2:                                 # %if.then
	movq	g_di, %rax
	movq	%rax, -11544(%rbp)      # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-11544(%rbp), %rdi      # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967286, %esi       # imm = 0xFFFFFFF6
	movl	$1, %edx
	movq	%rax, %rdi
	callq	gtk_dialog_set_response_sensitive
.LBB19_3:                               # %if.end
	movl	$0, -12(%rbp)
.LBB19_4:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$15, -12(%rbp)
	jge	.LBB19_7
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB19_4 Depth=1
	movabsq	$g_sample_color_tab, %rsi
	movl	$768, %eax              # imm = 0x300
	movl	%eax, %edx
	leaq	-11536(%rbp), %rcx
	imull	$3, -12(%rbp), %eax
	shll	$8, %eax
	movslq	%eax, %rdi
	addq	%rdi, %rcx
	movq	%rcx, %rdi
	callq	memcpy
# BB#6:                                 # %for.inc
                                        #   in Loop: Header=BB19_4 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB19_4
.LBB19_7:                               # %for.end
	movabsq	$g_values, %rdi
	callq	update_preview
	movq	g_di+24, %rdi
	movq	%rdi, -11552(%rbp)      # 8-byte Spill
	callq	gimp_preview_area_get_type
	movq	-11552(%rbp), %rdi      # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	$256, %edx              # imm = 0x100
	movl	$15, %r8d
	movl	$768, %r9d              # imm = 0x300
	leaq	-11536(%rbp), %rsi
	movq	%rax, %rdi
	movq	%rsi, -11560(%rbp)      # 8-byte Spill
	movl	%ecx, %esi
	movl	%edx, -11564(%rbp)      # 4-byte Spill
	movl	%ecx, %edx
	movl	-11564(%rbp), %r10d     # 4-byte Reload
	movl	%ecx, -11568(%rbp)      # 4-byte Spill
	movl	%r10d, %ecx
	movl	-11568(%rbp), %r11d     # 4-byte Reload
	movl	%r9d, -11572(%rbp)      # 4-byte Spill
	movl	%r11d, %r9d
	movq	-11560(%rbp), %rax      # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$768, 8(%rsp)           # imm = 0x300
	callq	gimp_preview_area_draw
	addq	$11600, %rsp            # imm = 0x2D50
	popq	%rbp
	retq
.Lfunc_end19:
	.size	smp_get_colors, .Lfunc_end19-smp_get_colors
	.cfi_endproc

	.align	16, 0x90
	.type	update_preview,@function
update_preview:                         # @update_preview
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp70:
	.cfi_def_cfa_offset 16
.Ltmp71:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp72:
	.cfi_def_cfa_register %rbp
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	cmpl	$0, g_Sdebug
	je	.LBB20_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.76, %rdi
	movq	-8(%rbp), %rax
	movl	(%rax), %esi
	movl	g_di+128, %edx
	movb	$0, %al
	callq	printf
	movl	%eax, -156(%rbp)        # 4-byte Spill
.LBB20_2:                               # %if.end
	cmpq	$0, -8(%rbp)
	je	.LBB20_4
# BB#3:                                 # %lor.lhs.false
	cmpl	$0, g_di+128
	jne	.LBB20_5
.LBB20_4:                               # %if.then.2
	jmp	.LBB20_18
.LBB20_5:                               # %if.end.3
	movq	-8(%rbp), %rax
	movl	(%rax), %edi
	callq	is_layer_alive
	cmpl	$0, %eax
	jge	.LBB20_11
# BB#6:                                 # %if.then.6
	movabsq	$g_values, %rax
	addq	$4, %rax
	cmpq	%rax, -8(%rbp)
	jne	.LBB20_8
# BB#7:                                 # %if.then.8
	movq	g_di+8, %rdi
	callq	clear_preview
.LBB20_8:                               # %if.end.9
	movabsq	$g_values, %rax
	cmpq	%rax, -8(%rbp)
	jne	.LBB20_10
# BB#9:                                 # %if.then.11
	movq	g_di+16, %rdi
	callq	clear_preview
.LBB20_10:                              # %if.end.12
	jmp	.LBB20_18
.LBB20_11:                              # %if.end.13
	movq	-8(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_get
	movabsq	$g_values, %rcx
	addq	$4, %rcx
	movq	%rax, -16(%rbp)
	cmpq	%rcx, -8(%rbp)
	jne	.LBB20_13
# BB#12:                                # %if.then.16
	leaq	-152(%rbp), %rdi
	xorl	%eax, %eax
	movq	-16(%rbp), %rsi
	movl	%eax, %edx
	movl	%eax, %ecx
	callq	init_gdrw
	leaq	-152(%rbp), %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	g_di+8, %rdi
	movl	g_di+132, %esi
	movl	g_di+140, %r8d
	callq	update_pv
	jmp	.LBB20_16
.LBB20_13:                              # %if.else
	movabsq	$g_values, %rax
	cmpq	%rax, -8(%rbp)
	jne	.LBB20_15
# BB#14:                                # %if.then.18
	leaq	-152(%rbp), %rdi
	xorl	%eax, %eax
	movq	-16(%rbp), %rsi
	movl	%eax, %edx
	movl	%eax, %ecx
	callq	init_gdrw
	leaq	-152(%rbp), %rdx
	movabsq	$g_dst_preview_buffer, %rcx
	movq	g_di+16, %rdi
	movl	g_di+136, %esi
	movl	g_di+144, %r8d
	callq	update_pv
	movabsq	$g_dst_preview_buffer, %rsi
	movq	g_di+16, %rdi
	callq	refresh_dst_preview
.LBB20_15:                              # %if.end.19
	jmp	.LBB20_16
.LBB20_16:                              # %if.end.20
	cmpq	$0, -16(%rbp)
	je	.LBB20_18
# BB#17:                                # %if.then.22
	leaq	-152(%rbp), %rdi
	callq	end_gdrw
.LBB20_18:                              # %if.end.23
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	update_preview, .Lfunc_end20-update_preview
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI21_0:
	.quad	4602678819172646912     # double 0.5
.LCPI21_1:
	.quad	4607182418800017408     # double 1
.LCPI21_2:
	.quad	4611686018427387904     # double 2
.LCPI21_3:
	.quad	4643211215818981376     # double 256
.LCPI21_4:
	.quad	4643176031446892544     # double 255
	.text
	.align	16, 0x90
	.type	levels_update,@function
levels_update:                          # @levels_update
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp73:
	.cfi_def_cfa_offset 16
.Ltmp74:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp75:
	.cfi_def_cfa_register %rbp
	subq	$4000, %rsp             # imm = 0xFA0
	movl	%edi, -4(%rbp)
	cmpl	$0, g_Sdebug
	je	.LBB21_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.85, %rdi
	movl	-4(%rbp), %esi
	movb	$0, %al
	callq	printf
	movl	%eax, -3916(%rbp)       # 4-byte Spill
.LBB21_2:                               # %if.end
	callq	calculate_level_transfers
	movl	-4(%rbp), %eax
	andl	$1024, %eax             # imm = 0x400
	cmpl	$0, %eax
	je	.LBB21_4
# BB#3:                                 # %if.then.2
	movabsq	$g_dst_preview_buffer, %rsi
	movq	g_di+16, %rdi
	callq	refresh_dst_preview
.LBB21_4:                               # %if.end.3
	movl	-4(%rbp), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	.LBB21_6
# BB#5:                                 # %if.then.6
	movq	g_di+56, %rdi
	cvtsi2sdl	g_values+24, %xmm0
	callq	gtk_adjustment_set_value
.LBB21_6:                               # %if.end.7
	movl	-4(%rbp), %eax
	andl	$2, %eax
	cmpl	$0, %eax
	je	.LBB21_8
# BB#7:                                 # %if.then.10
	movq	g_di+72, %rdi
	cvtss2sd	g_values+32, %xmm0
	callq	gtk_adjustment_set_value
.LBB21_8:                               # %if.end.12
	movl	-4(%rbp), %eax
	andl	$4, %eax
	cmpl	$0, %eax
	je	.LBB21_10
# BB#9:                                 # %if.then.15
	movq	g_di+64, %rdi
	cvtsi2sdl	g_values+28, %xmm0
	callq	gtk_adjustment_set_value
.LBB21_10:                              # %if.end.17
	movl	-4(%rbp), %eax
	andl	$8, %eax
	cmpl	$0, %eax
	je	.LBB21_12
# BB#11:                                # %if.then.20
	movq	g_di+80, %rdi
	cvtsi2sdl	g_values+36, %xmm0
	callq	gtk_adjustment_set_value
.LBB21_12:                              # %if.end.22
	movl	-4(%rbp), %eax
	andl	$16, %eax
	cmpl	$0, %eax
	je	.LBB21_14
# BB#13:                                # %if.then.25
	movq	g_di+88, %rdi
	cvtsi2sdl	g_values+40, %xmm0
	callq	gtk_adjustment_set_value
.LBB21_14:                              # %if.end.27
	movl	-4(%rbp), %eax
	andl	$32, %eax
	cmpl	$0, %eax
	je	.LBB21_20
# BB#15:                                # %if.then.30
	movl	$0, -8(%rbp)
.LBB21_16:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$15, -8(%rbp)
	jge	.LBB21_19
# BB#17:                                # %for.body
                                        #   in Loop: Header=BB21_16 Depth=1
	movabsq	$g_lvl_trans_tab, %rsi
	movl	$256, %eax              # imm = 0x100
	movl	%eax, %edx
	leaq	-3856(%rbp), %rcx
	movl	-8(%rbp), %eax
	shll	$8, %eax
	movslq	%eax, %rdi
	addq	%rdi, %rcx
	movq	%rcx, %rdi
	callq	memcpy
# BB#18:                                # %for.inc
                                        #   in Loop: Header=BB21_16 Depth=1
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB21_16
.LBB21_19:                              # %for.end
	movq	g_di+40, %rax
	movq	%rax, -3928(%rbp)       # 8-byte Spill
	callq	gimp_preview_area_get_type
	movq	-3928(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	$256, %edx              # imm = 0x100
	movl	$15, %r8d
	movl	$2, %r9d
	leaq	-3856(%rbp), %rsi
	movq	%rax, %rdi
	movq	%rsi, -3936(%rbp)       # 8-byte Spill
	movl	%ecx, %esi
	movl	%edx, -3940(%rbp)       # 4-byte Spill
	movl	%ecx, %edx
	movl	-3940(%rbp), %ecx       # 4-byte Reload
	movq	-3936(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$256, 8(%rsp)           # imm = 0x100
	callq	gimp_preview_area_draw
.LBB21_20:                              # %if.end.35
	movl	-4(%rbp), %eax
	andl	$128, %eax
	cmpl	$0, %eax
	je	.LBB21_22
# BB#21:                                # %if.then.38
	movq	g_di+48, %rdi
	callq	gtk_widget_get_style
	movq	%rax, -3864(%rbp)
	movq	g_di+48, %rdi
	callq	gtk_widget_get_window
	movq	%rax, %rdi
	callq	gdk_cairo_create
	movq	%rax, -3872(%rbp)
	movq	-3872(%rbp), %rdi
	movq	-3864(%rbp), %rax
	addq	$84, %rax
	movq	%rax, %rsi
	callq	gdk_cairo_set_source_color
	movq	-3872(%rbp), %rdi
	callq	cairo_paint
	movsd	.LCPI21_0, %xmm0        # xmm0 = mem[0],zero
	movq	-3872(%rbp), %rdi
	movsd	%xmm0, -3952(%rbp)      # 8-byte Spill
	movsd	-3952(%rbp), %xmm1      # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	cairo_translate
	movsd	.LCPI21_1, %xmm0        # xmm0 = mem[0],zero
	movq	-3872(%rbp), %rdi
	callq	cairo_set_line_width
	movsd	.LCPI21_1, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI21_2, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI21_3, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI21_4, %xmm3        # xmm3 = mem[0],zero
	cvtsi2sdl	g_values+24, %xmm4
	divsd	%xmm3, %xmm4
	movaps	%xmm2, %xmm5
	mulsd	%xmm4, %xmm5
	cvttsd2si	%xmm5, %ecx
	movl	%ecx, g_di+108
	cvtsi2sdl	g_values+28, %xmm4
	divsd	%xmm3, %xmm4
	mulsd	%xmm4, %xmm2
	cvttsd2si	%xmm2, %ecx
	movl	%ecx, g_di+116
	movl	g_di+116, %ecx
	subl	g_di+108, %ecx
	cvtsi2sdl	%ecx, %xmm2
	divsd	%xmm1, %xmm2
	movsd	%xmm2, -3880(%rbp)
	cvtsi2sdl	g_di+108, %xmm1
	addsd	-3880(%rbp), %xmm1
	movsd	%xmm1, -3888(%rbp)
	cvtss2sd	g_values+32, %xmm1
	divsd	%xmm1, %xmm0
	callq	log10
	movsd	.LCPI21_0, %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -3896(%rbp)
	movsd	-3888(%rbp), %xmm0      # xmm0 = mem[0],zero
	movsd	-3880(%rbp), %xmm2      # xmm2 = mem[0],zero
	mulsd	-3896(%rbp), %xmm2
	addsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, g_di+112
	movq	-3872(%rbp), %rdi
	movq	-3864(%rbp), %rax
	addq	$504, %rax              # imm = 0x1F8
	movq	-3864(%rbp), %rsi
	addq	$204, %rsi
	movl	g_di+112, %ecx
	movq	%rsi, -3960(%rbp)       # 8-byte Spill
	movq	%rax, %rsi
	movq	-3960(%rbp), %rdx       # 8-byte Reload
	callq	levels_draw_slider
	movq	-3872(%rbp), %rdi
	movq	-3864(%rbp), %rax
	addq	$504, %rax              # imm = 0x1F8
	movq	-3864(%rbp), %rdx
	addq	$504, %rdx              # imm = 0x1F8
	movl	g_di+108, %ecx
	movq	%rax, %rsi
	callq	levels_draw_slider
	movq	-3872(%rbp), %rdi
	movq	-3864(%rbp), %rax
	addq	$504, %rax              # imm = 0x1F8
	movq	-3864(%rbp), %rdx
	addq	$516, %rdx              # imm = 0x204
	movl	g_di+116, %ecx
	movq	%rax, %rsi
	callq	levels_draw_slider
	movq	-3872(%rbp), %rdi
	callq	cairo_destroy
.LBB21_22:                              # %if.end.63
	movl	-4(%rbp), %eax
	andl	$256, %eax              # imm = 0x100
	cmpl	$0, %eax
	je	.LBB21_24
# BB#23:                                # %if.then.66
	movq	g_di+32, %rdi
	callq	gtk_widget_get_style
	movq	%rax, -3904(%rbp)
	movq	g_di+32, %rdi
	callq	gtk_widget_get_window
	movq	%rax, %rdi
	callq	gdk_cairo_create
	movq	%rax, -3912(%rbp)
	movq	-3912(%rbp), %rdi
	movq	-3904(%rbp), %rax
	addq	$84, %rax
	movq	%rax, %rsi
	callq	gdk_cairo_set_source_color
	movq	-3912(%rbp), %rdi
	callq	cairo_paint
	movsd	.LCPI21_0, %xmm0        # xmm0 = mem[0],zero
	movq	-3912(%rbp), %rdi
	movsd	%xmm0, -3968(%rbp)      # 8-byte Spill
	movsd	-3968(%rbp), %xmm1      # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	cairo_translate
	movsd	.LCPI21_1, %xmm0        # xmm0 = mem[0],zero
	movq	-3912(%rbp), %rdi
	callq	cairo_set_line_width
	movsd	.LCPI21_3, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI21_4, %xmm1        # xmm1 = mem[0],zero
	cvtsi2sdl	g_values+36, %xmm2
	divsd	%xmm1, %xmm2
	movaps	%xmm0, %xmm3
	mulsd	%xmm2, %xmm3
	cvttsd2si	%xmm3, %ecx
	movl	%ecx, g_di+120
	cvtsi2sdl	g_values+40, %xmm2
	divsd	%xmm1, %xmm2
	mulsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, g_di+124
	movq	-3912(%rbp), %rdi
	movq	-3904(%rbp), %rax
	addq	$504, %rax              # imm = 0x1F8
	movq	-3904(%rbp), %rsi
	addq	$504, %rsi              # imm = 0x1F8
	movl	g_di+120, %ecx
	movq	%rsi, -3976(%rbp)       # 8-byte Spill
	movq	%rax, %rsi
	movq	-3976(%rbp), %rdx       # 8-byte Reload
	callq	levels_draw_slider
	movq	-3912(%rbp), %rdi
	movq	-3904(%rbp), %rax
	addq	$504, %rax              # imm = 0x1F8
	movq	-3904(%rbp), %rdx
	addq	$504, %rdx              # imm = 0x1F8
	movl	g_di+124, %ecx
	movq	%rax, %rsi
	callq	levels_draw_slider
	movq	-3912(%rbp), %rdi
	callq	cairo_destroy
.LBB21_24:                              # %if.end.88
	addq	$4000, %rsp             # imm = 0xFA0
	popq	%rbp
	retq
.Lfunc_end21:
	.size	levels_update, .Lfunc_end21-levels_update
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI22_0:
	.quad	4643176031446892544     # double 255
	.text
	.align	16, 0x90
	.type	get_gradient,@function
get_gradient:                           # @get_gradient
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp76:
	.cfi_def_cfa_offset 16
.Ltmp77:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp78:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	%edi, -4(%rbp)
	callq	free_colors
	callq	gimp_context_get_gradient
	movl	$256, %esi              # imm = 0x100
	leaq	-20(%rbp), %rcx
	leaq	-32(%rbp), %r8
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	cmpl	$-445, -4(%rbp)         # imm = 0xFFFFFFFFFFFFFE43
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %edx
	callq	gimp_gradient_get_uniform_samples
	movq	-16(%rbp), %rdi
	movl	%eax, -48(%rbp)         # 4-byte Spill
	callq	g_free
	movl	$0, -44(%rbp)
.LBB22_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$256, -44(%rbp)         # imm = 0x100
	jge	.LBB22_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB22_1 Depth=1
	movabsq	$g_sample_color_tab, %rax
	movl	-44(%rbp), %ecx
	shll	$2, %ecx
	movslq	%ecx, %rdx
	movq	-32(%rbp), %rsi
	leaq	(%rsi,%rdx,8), %rdi
	movq	%rdi, -40(%rbp)
	movsd	(%rsi,%rdx,8), %xmm0    # xmm0 = mem[0],zero
	movsd	.LCPI22_0(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movb	%cl, %r8b
	movl	-44(%rbp), %ecx
	movl	%ecx, %edx
	leal	(%rdx,%rdx,2), %ecx
	movslq	%ecx, %rdx
	movb	%r8b, g_sample_color_tab(%rdx)
	movq	-40(%rbp), %rdx
	movsd	8(%rdx), %xmm0          # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movb	%cl, %r8b
	movl	-44(%rbp), %ecx
	movl	%ecx, %edx
	leal	1(%rdx,%rdx,2), %ecx
	movslq	%ecx, %rdx
	movb	%r8b, g_sample_color_tab(%rdx)
	movq	-40(%rbp), %rdx
	movsd	16(%rdx), %xmm0         # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movb	%cl, %r8b
	imull	$3, -44(%rbp), %ecx
	addl	$2, %ecx
	movslq	%ecx, %rdx
	movb	%r8b, g_sample_color_tab(,%rdx)
	imull	$3, -44(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, %rdi
	callq	new_samp_color
	movabsq	$g_lum_tab, %rdx
	movslq	-44(%rbp), %rsi
	shlq	$4, %rsi
	movq	%rdx, %rdi
	addq	%rsi, %rdi
	movq	%rax, 8(%rdi)
	movslq	-44(%rbp), %rax
	shlq	$4, %rax
	movq	%rdx, %rsi
	addq	%rax, %rsi
	movl	$1, 4(%rsi)
	movslq	-44(%rbp), %rax
	shlq	$4, %rax
	addq	%rax, %rdx
	movl	$1, (%rdx)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB22_1 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB22_1
.LBB22_4:                               # %for.end
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	get_gradient, .Lfunc_end22-get_gradient
	.cfi_endproc

	.align	16, 0x90
	.type	clear_preview,@function
clear_preview:                          # @clear_preview
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp79:
	.cfi_def_cfa_offset 16
.Ltmp80:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp81:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	callq	gimp_preview_area_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	$256, %edx              # imm = 0x100
	movl	$170, %r9d
	movq	%rax, %rdi
	movl	%ecx, %esi
	movl	%edx, -20(%rbp)         # 4-byte Spill
	movl	%ecx, %edx
	movl	-20(%rbp), %ecx         # 4-byte Reload
	movl	-20(%rbp), %r8d         # 4-byte Reload
	movl	$170, (%rsp)
	movl	$170, 8(%rsp)
	callq	gimp_preview_area_fill
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	clear_preview, .Lfunc_end23-clear_preview
	.cfi_endproc

	.align	16, 0x90
	.type	new_samp_color,@function
new_samp_color:                         # @new_samp_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp82:
	.cfi_def_cfa_offset 16
.Ltmp83:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp84:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$1, %eax
	movl	%eax, %ecx
	movl	$16, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	%rcx, %rdi
	callq	g_malloc0_n
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movl	(%rcx), %edx
	movl	%edx, (%rax)
	movq	-16(%rbp), %rax
	movl	$1, 4(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	new_samp_color, .Lfunc_end24-new_samp_color
	.cfi_endproc

	.align	16, 0x90
	.type	refresh_dst_preview,@function
refresh_dst_preview:                    # @refresh_dst_preview
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp85:
	.cfi_def_cfa_offset 16
.Ltmp86:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp87:
	.cfi_def_cfa_register %rbp
	subq	$196720, %rsp           # imm = 0x30070
	leaq	-196624(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$3, -196656(%rbp)
	movl	$4, -196660(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -196640(%rbp)
	movq	%rax, -196632(%rbp)
	movl	$0, -196652(%rbp)
.LBB25_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB25_3 Depth 2
	cmpl	$256, -196652(%rbp)     # imm = 0x100
	jge	.LBB25_16
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB25_1 Depth=1
	movl	$0, -196648(%rbp)
.LBB25_3:                               # %for.cond.1
                                        #   Parent Loop BB25_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$256, -196648(%rbp)     # imm = 0x100
	jge	.LBB25_14
# BB#4:                                 # %for.body.3
                                        #   in Loop: Header=BB25_3 Depth=2
	movq	-196640(%rbp), %rax
	movb	3(%rax), %cl
	movb	%cl, -196642(%rbp)
	movzbl	%cl, %edx
	cmpl	$0, %edx
	jne	.LBB25_6
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB25_3 Depth=2
	movq	-196640(%rbp), %rax
	movb	(%rax), %cl
	movq	-196632(%rbp), %rax
	movb	%cl, (%rax)
	movq	-196640(%rbp), %rax
	movb	1(%rax), %cl
	movq	-196632(%rbp), %rax
	movb	%cl, 1(%rax)
	movq	-196640(%rbp), %rax
	movb	2(%rax), %cl
	movq	-196632(%rbp), %rax
	movb	%cl, 2(%rax)
	jmp	.LBB25_12
.LBB25_6:                               # %if.else
                                        #   in Loop: Header=BB25_3 Depth=2
	cmpl	$0, g_di+144
	je	.LBB25_8
# BB#7:                                 # %if.then.12
                                        #   in Loop: Header=BB25_3 Depth=2
	movl	$3, %edx
	movq	-196632(%rbp), %rdi
	movq	-196640(%rbp), %rsi
	callq	remap_pixel
	jmp	.LBB25_9
.LBB25_8:                               # %if.else.13
                                        #   in Loop: Header=BB25_3 Depth=2
	movl	$100, %eax
	movq	-196640(%rbp), %rcx
	movzbl	(%rcx), %edx
	imull	$30, %edx, %edx
	movq	-196640(%rbp), %rcx
	movzbl	1(%rcx), %esi
	imull	$59, %esi, %esi
	addl	%esi, %edx
	movq	-196640(%rbp), %rcx
	movzbl	2(%rcx), %esi
	imull	$11, %esi, %esi
	addl	%esi, %edx
	movl	%eax, -196664(%rbp)     # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-196664(%rbp), %esi     # 4-byte Reload
	idivl	%esi
	movslq	%eax, %rcx
	movb	g_lvl_trans_tab(,%rcx), %dil
	movb	%dil, -196641(%rbp)
	movb	-196641(%rbp), %dil
	movq	-196632(%rbp), %rcx
	movb	%dil, (%rcx)
	movb	-196641(%rbp), %dil
	movq	-196632(%rbp), %rcx
	movb	%dil, 1(%rcx)
	movb	-196641(%rbp), %dil
	movq	-196632(%rbp), %rcx
	movb	%dil, 2(%rcx)
.LBB25_9:                               # %if.end
                                        #   in Loop: Header=BB25_3 Depth=2
	movzbl	-196642(%rbp), %eax
	cmpl	$255, %eax
	jge	.LBB25_11
# BB#10:                                # %if.then.30
                                        #   in Loop: Header=BB25_3 Depth=2
	movl	$255, %eax
	movq	-196632(%rbp), %rcx
	movzbl	(%rcx), %edx
	movzbl	-196642(%rbp), %esi
	imull	%esi, %edx
	movq	-196640(%rbp), %rcx
	movzbl	(%rcx), %esi
	movzbl	-196642(%rbp), %edi
	movl	%eax, %r8d
	subl	%edi, %r8d
	imull	%r8d, %esi
	addl	%esi, %edx
	movl	%eax, -196668(%rbp)     # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-196668(%rbp), %esi     # 4-byte Reload
	idivl	%esi
	movb	%al, %r9b
	movq	-196632(%rbp), %rcx
	movb	%r9b, (%rcx)
	movq	-196632(%rbp), %rcx
	movzbl	1(%rcx), %eax
	movzbl	-196642(%rbp), %edi
	imull	%edi, %eax
	movq	-196640(%rbp), %rcx
	movzbl	1(%rcx), %edi
	movzbl	-196642(%rbp), %r8d
	subl	%r8d, %esi
	imull	%esi, %edi
	addl	%edi, %eax
	cltd
	movl	-196668(%rbp), %esi     # 4-byte Reload
	idivl	%esi
	movb	%al, %r9b
	movq	-196632(%rbp), %rcx
	movb	%r9b, 1(%rcx)
	movq	-196632(%rbp), %rcx
	movzbl	2(%rcx), %eax
	movzbl	-196642(%rbp), %edi
	imull	%edi, %eax
	movq	-196640(%rbp), %rcx
	movzbl	2(%rcx), %edi
	movzbl	-196642(%rbp), %r8d
	subl	%r8d, %esi
	imull	%esi, %edi
	addl	%edi, %eax
	cltd
	movl	-196668(%rbp), %esi     # 4-byte Reload
	idivl	%esi
	movb	%al, %r9b
	movq	-196632(%rbp), %rcx
	movb	%r9b, 2(%rcx)
.LBB25_11:                              # %if.end.69
                                        #   in Loop: Header=BB25_3 Depth=2
	jmp	.LBB25_12
.LBB25_12:                              # %if.end.70
                                        #   in Loop: Header=BB25_3 Depth=2
	movl	-196656(%rbp), %eax
	movq	-196632(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -196632(%rbp)
	movl	-196660(%rbp), %eax
	movq	-196640(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -196640(%rbp)
# BB#13:                                # %for.inc
                                        #   in Loop: Header=BB25_3 Depth=2
	movl	-196648(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -196648(%rbp)
	jmp	.LBB25_3
.LBB25_14:                              # %for.end
                                        #   in Loop: Header=BB25_1 Depth=1
	jmp	.LBB25_15
.LBB25_15:                              # %for.inc.73
                                        #   in Loop: Header=BB25_1 Depth=1
	movl	-196652(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -196652(%rbp)
	jmp	.LBB25_1
.LBB25_16:                              # %for.end.75
	movq	-8(%rbp), %rax
	movq	%rax, -196680(%rbp)     # 8-byte Spill
	callq	gimp_preview_area_get_type
	movq	-196680(%rbp), %rdi     # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	$256, %edx              # imm = 0x100
	movl	$768, %r8d              # imm = 0x300
	leaq	-196624(%rbp), %rsi
	movq	%rax, %rdi
	movq	%rsi, -196688(%rbp)     # 8-byte Spill
	movl	%ecx, %esi
	movl	%edx, -196692(%rbp)     # 4-byte Spill
	movl	%ecx, %edx
	movl	-196692(%rbp), %r9d     # 4-byte Reload
	movl	%ecx, -196696(%rbp)     # 4-byte Spill
	movl	%r9d, %ecx
	movl	%r8d, -196700(%rbp)     # 4-byte Spill
	movl	%r9d, %r8d
	movl	-196696(%rbp), %r9d     # 4-byte Reload
	movq	-196688(%rbp), %rax     # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$768, 8(%rsp)           # imm = 0x300
	callq	gimp_preview_area_draw
	addq	$196720, %rsp           # imm = 0x30070
	popq	%rbp
	retq
.Lfunc_end25:
	.size	refresh_dst_preview, .Lfunc_end25-refresh_dst_preview
	.cfi_endproc

	.align	16, 0x90
	.type	guess_missing_colors,@function
guess_missing_colors:                   # @guess_missing_colors
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp88:
	.cfi_def_cfa_offset 16
.Ltmp89:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp90:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movb	$0, -16(%rbp)
	movb	$0, -15(%rbp)
	movb	$0, -14(%rbp)
	movb	$-1, -13(%rbp)
	movb	$-1, -20(%rbp)
	movb	$-1, -19(%rbp)
	movb	$-1, -18(%rbp)
	movb	$-1, -17(%rbp)
	movb	$0, -24(%rbp)
	movb	$0, -23(%rbp)
	movb	$0, -22(%rbp)
	movb	$-1, -21(%rbp)
	movl	$0, -4(%rbp)
.LBB26_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB26_6 Depth 2
	cmpl	$256, -4(%rbp)          # imm = 0x100
	jge	.LBB26_18
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB26_1 Depth=1
	movabsq	$g_lum_tab, %rax
	movslq	-4(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	cmpq	$0, 8(%rax)
	je	.LBB26_4
# BB#3:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB26_1 Depth=1
	movabsq	$g_lum_tab, %rax
	movslq	-4(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	cmpl	$0, 4(%rax)
	jne	.LBB26_16
.LBB26_4:                               # %if.then
                                        #   in Loop: Header=BB26_1 Depth=1
	cmpl	$0, -4(%rbp)
	jle	.LBB26_15
# BB#5:                                 # %if.then.18
                                        #   in Loop: Header=BB26_1 Depth=1
	movl	-4(%rbp), %eax
	movl	%eax, -8(%rbp)
.LBB26_6:                               # %for.cond.19
                                        #   Parent Loop BB26_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$256, -8(%rbp)          # imm = 0x100
	jge	.LBB26_14
# BB#7:                                 # %for.body.21
                                        #   in Loop: Header=BB26_6 Depth=2
	movabsq	$g_lum_tab, %rax
	movslq	-8(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	cmpq	$0, 8(%rax)
	je	.LBB26_10
# BB#8:                                 # %land.lhs.true
                                        #   in Loop: Header=BB26_6 Depth=2
	movabsq	$g_lum_tab, %rax
	movslq	-8(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	cmpl	$0, 4(%rax)
	je	.LBB26_10
# BB#9:                                 # %if.then.29
                                        #   in Loop: Header=BB26_1 Depth=1
	imull	$3, -8(%rbp), %eax
	movslq	%eax, %rcx
	movw	g_sample_color_tab(,%rcx), %dx
	movw	%dx, -20(%rbp)
	movb	g_sample_color_tab+2(,%rcx), %sil
	movb	%sil, -18(%rbp)
	jmp	.LBB26_14
.LBB26_10:                              # %if.end
                                        #   in Loop: Header=BB26_6 Depth=2
	cmpl	$255, -8(%rbp)
	jne	.LBB26_12
# BB#11:                                # %if.then.34
                                        #   in Loop: Header=BB26_1 Depth=1
	movb	$-1, -20(%rbp)
	movb	$-1, -19(%rbp)
	movb	$-1, -18(%rbp)
	jmp	.LBB26_14
.LBB26_12:                              # %if.end.38
                                        #   in Loop: Header=BB26_6 Depth=2
	jmp	.LBB26_13
.LBB26_13:                              # %for.inc
                                        #   in Loop: Header=BB26_6 Depth=2
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB26_6
.LBB26_14:                              # %for.end
                                        #   in Loop: Header=BB26_1 Depth=1
	movl	-8(%rbp), %eax
	movl	-4(%rbp), %ecx
	decl	%ecx
	subl	%ecx, %eax
	cvtsi2ssl	%eax, %xmm0
	movss	%xmm0, -12(%rbp)
	movzbl	-16(%rbp), %eax
	cvtsi2ssl	%eax, %xmm1
	movzbl	-20(%rbp), %ecx
	subl	%eax, %ecx
	cvtsi2ssl	%ecx, %xmm2
	divss	%xmm0, %xmm2
	addss	%xmm2, %xmm1
	cvttss2si	%xmm1, %eax
	movb	%al, %dl
	movb	%dl, -24(%rbp)
	movzbl	-15(%rbp), %eax
	cvtsi2ssl	%eax, %xmm0
	movzbl	-19(%rbp), %ecx
	subl	%eax, %ecx
	cvtsi2ssl	%ecx, %xmm1
	movss	-12(%rbp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	divss	%xmm2, %xmm1
	addss	%xmm1, %xmm0
	cvttss2si	%xmm0, %eax
	movb	%al, %dl
	movb	%dl, -23(%rbp)
	movzbl	-14(%rbp), %eax
	cvtsi2ssl	%eax, %xmm0
	movzbl	-18(%rbp), %ecx
	subl	%eax, %ecx
	cvtsi2ssl	%ecx, %xmm1
	movss	-12(%rbp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	divss	%xmm2, %xmm1
	addss	%xmm1, %xmm0
	cvttss2si	%xmm0, %eax
	movb	%al, %dl
	movb	%dl, -22(%rbp)
.LBB26_15:                              # %if.end.78
                                        #   in Loop: Header=BB26_1 Depth=1
	leaq	-24(%rbp), %rdi
	callq	new_samp_color
	movabsq	$g_lum_tab, %rdi
	movslq	-4(%rbp), %rcx
	shlq	$4, %rcx
	movq	%rdi, %rdx
	addq	%rcx, %rdx
	movq	%rax, 8(%rdx)
	movslq	-4(%rbp), %rax
	shlq	$4, %rax
	addq	%rax, %rdi
	movl	$0, 4(%rdi)
	imull	$3, -4(%rbp), %esi
	movslq	%esi, %rax
	movw	-24(%rbp), %r8w
	movw	%r8w, g_sample_color_tab(,%rax)
	movb	-22(%rbp), %r9b
	movb	%r9b, g_sample_color_tab+2(,%rax)
.LBB26_16:                              # %if.end.90
                                        #   in Loop: Header=BB26_1 Depth=1
	imull	$3, -4(%rbp), %eax
	movslq	%eax, %rcx
	movw	g_sample_color_tab(,%rcx), %dx
	movw	%dx, -16(%rbp)
	movb	g_sample_color_tab+2(,%rcx), %sil
	movb	%sil, -14(%rbp)
# BB#17:                                # %for.inc.95
                                        #   in Loop: Header=BB26_1 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB26_1
.LBB26_18:                              # %for.end.97
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	guess_missing_colors, .Lfunc_end26-guess_missing_colors
	.cfi_endproc

	.align	16, 0x90
	.type	fill_missing_colors,@function
fill_missing_colors:                    # @fill_missing_colors
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp91:
	.cfi_def_cfa_offset 16
.Ltmp92:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp93:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movb	$0, -16(%rbp)
	movb	$0, -15(%rbp)
	movb	$0, -14(%rbp)
	movb	$-1, -13(%rbp)
	movb	$-1, -20(%rbp)
	movb	$-1, -19(%rbp)
	movb	$-1, -18(%rbp)
	movb	$-1, -17(%rbp)
	movb	$0, -24(%rbp)
	movb	$0, -23(%rbp)
	movb	$0, -22(%rbp)
	movb	$-1, -21(%rbp)
	movl	$0, -12(%rbp)
	movl	$0, -4(%rbp)
.LBB27_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB27_6 Depth 2
	cmpl	$256, -4(%rbp)          # imm = 0x100
	jge	.LBB27_23
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB27_1 Depth=1
	movabsq	$g_lum_tab, %rax
	movslq	-4(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	cmpq	$0, 8(%rax)
	je	.LBB27_4
# BB#3:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB27_1 Depth=1
	movabsq	$g_lum_tab, %rax
	movslq	-4(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	cmpl	$0, 4(%rax)
	jne	.LBB27_20
.LBB27_4:                               # %if.then
                                        #   in Loop: Header=BB27_1 Depth=1
	cmpl	$0, -4(%rbp)
	jle	.LBB27_19
# BB#5:                                 # %if.then.18
                                        #   in Loop: Header=BB27_1 Depth=1
	movl	-4(%rbp), %eax
	movl	%eax, -8(%rbp)
.LBB27_6:                               # %for.cond.19
                                        #   Parent Loop BB27_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$256, -8(%rbp)          # imm = 0x100
	jge	.LBB27_14
# BB#7:                                 # %for.body.21
                                        #   in Loop: Header=BB27_6 Depth=2
	movabsq	$g_lum_tab, %rax
	movslq	-8(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	cmpq	$0, 8(%rax)
	je	.LBB27_10
# BB#8:                                 # %land.lhs.true
                                        #   in Loop: Header=BB27_6 Depth=2
	movabsq	$g_lum_tab, %rax
	movslq	-8(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	cmpl	$0, 4(%rax)
	je	.LBB27_10
# BB#9:                                 # %if.then.29
                                        #   in Loop: Header=BB27_1 Depth=1
	imull	$3, -8(%rbp), %eax
	movslq	%eax, %rcx
	movw	g_sample_color_tab(,%rcx), %dx
	movw	%dx, -20(%rbp)
	movb	g_sample_color_tab+2(,%rcx), %sil
	movb	%sil, -18(%rbp)
	jmp	.LBB27_14
.LBB27_10:                              # %if.end
                                        #   in Loop: Header=BB27_6 Depth=2
	cmpl	$255, -8(%rbp)
	jne	.LBB27_12
# BB#11:                                # %if.then.34
                                        #   in Loop: Header=BB27_1 Depth=1
	movw	-16(%rbp), %ax
	movw	%ax, -20(%rbp)
	movb	-14(%rbp), %cl
	movb	%cl, -18(%rbp)
	jmp	.LBB27_14
.LBB27_12:                              # %if.end.37
                                        #   in Loop: Header=BB27_6 Depth=2
	jmp	.LBB27_13
.LBB27_13:                              # %for.inc
                                        #   in Loop: Header=BB27_6 Depth=2
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB27_6
.LBB27_14:                              # %for.end
                                        #   in Loop: Header=BB27_1 Depth=1
	movl	$2, %eax
	movl	-4(%rbp), %ecx
	movl	-12(%rbp), %edx
	movl	-8(%rbp), %esi
	subl	-12(%rbp), %esi
	movl	%eax, -28(%rbp)         # 4-byte Spill
	movl	%esi, %eax
	movl	%edx, -32(%rbp)         # 4-byte Spill
	cltd
	movl	-28(%rbp), %esi         # 4-byte Reload
	idivl	%esi
	movl	-32(%rbp), %edi         # 4-byte Reload
	addl	%eax, %edi
	cmpl	%edi, %ecx
	jg	.LBB27_16
# BB#15:                                # %lor.lhs.false.39
                                        #   in Loop: Header=BB27_1 Depth=1
	cmpl	$0, -12(%rbp)
	jne	.LBB27_17
.LBB27_16:                              # %if.then.41
                                        #   in Loop: Header=BB27_1 Depth=1
	movb	-20(%rbp), %al
	movb	%al, -24(%rbp)
	movb	-19(%rbp), %al
	movb	%al, -23(%rbp)
	movb	-18(%rbp), %al
	movb	%al, -22(%rbp)
	jmp	.LBB27_18
.LBB27_17:                              # %if.else
                                        #   in Loop: Header=BB27_1 Depth=1
	movb	-16(%rbp), %al
	movb	%al, -24(%rbp)
	movb	-15(%rbp), %al
	movb	%al, -23(%rbp)
	movb	-14(%rbp), %al
	movb	%al, -22(%rbp)
.LBB27_18:                              # %if.end.54
                                        #   in Loop: Header=BB27_1 Depth=1
	jmp	.LBB27_19
.LBB27_19:                              # %if.end.55
                                        #   in Loop: Header=BB27_1 Depth=1
	leaq	-24(%rbp), %rdi
	callq	new_samp_color
	movabsq	$g_lum_tab, %rdi
	movslq	-4(%rbp), %rcx
	shlq	$4, %rcx
	movq	%rdi, %rdx
	addq	%rcx, %rdx
	movq	%rax, 8(%rdx)
	movslq	-4(%rbp), %rax
	shlq	$4, %rax
	addq	%rax, %rdi
	movl	$0, 4(%rdi)
	imull	$3, -4(%rbp), %esi
	movslq	%esi, %rax
	movw	-24(%rbp), %r8w
	movw	%r8w, g_sample_color_tab(,%rax)
	movb	-22(%rbp), %r9b
	movb	%r9b, g_sample_color_tab+2(,%rax)
	jmp	.LBB27_21
.LBB27_20:                              # %if.else.67
                                        #   in Loop: Header=BB27_1 Depth=1
	movl	-4(%rbp), %eax
	movl	%eax, -12(%rbp)
	imull	$3, -4(%rbp), %eax
	movslq	%eax, %rcx
	movw	g_sample_color_tab(,%rcx), %dx
	movw	%dx, -16(%rbp)
	movb	g_sample_color_tab+2(,%rcx), %sil
	movb	%sil, -14(%rbp)
.LBB27_21:                              # %if.end.72
                                        #   in Loop: Header=BB27_1 Depth=1
	jmp	.LBB27_22
.LBB27_22:                              # %for.inc.73
                                        #   in Loop: Header=BB27_1 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB27_1
.LBB27_23:                              # %for.end.75
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	fill_missing_colors, .Lfunc_end27-fill_missing_colors
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI28_0:
	.quad	4636737291354636288     # double 100
.LCPI28_1:
	.quad	4622382067542392832     # double 11
.LCPI28_2:
	.quad	4633500329122463744     # double 59
.LCPI28_3:
	.quad	4629137466983448576     # double 30
.LCPI28_4:
	.quad	4643176031446892544     # double 255
.LCPI28_5:
	.quad	4635963235168681984     # double 89
.LCPI28_6:
	.quad	4670635784594784256     # double 17850
.LCPI28_7:
	.quad	4666973311362662400     # double 10455
.LCPI28_8:
	.quad	4630967054332067840     # double 41
.LCPI28_9:
	.quad	4671967568053927936     # double 22695
.LCPI28_10:
	.quad	4634626229029306368     # double 70
.LCPI28_11:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	remap_pixel,@function
remap_pixel:                            # @remap_pixel
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp94:
	.cfi_def_cfa_offset 16
.Ltmp95:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp96:
	.cfi_def_cfa_register %rbp
	subq	$192, %rsp
	movl	$100, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-16(%rbp), %rsi
	movzbl	(%rsi), %edx
	imull	$30, %edx, %edx
	movq	-16(%rbp), %rsi
	movzbl	1(%rsi), %ecx
	imull	$59, %ecx, %ecx
	addl	%ecx, %edx
	movq	-16(%rbp), %rsi
	movzbl	2(%rsi), %ecx
	imull	$11, %ecx, %ecx
	addl	%ecx, %edx
	movl	%eax, -132(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-132(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movslq	%eax, %rsi
	movzbl	g_lvl_trans_tab(,%rsi), %eax
	movl	%eax, %esi
	movzbl	g_out_trans_tab(,%rsi), %eax
	movl	%eax, -28(%rbp)
	cmpl	$0, g_values+16
	je	.LBB28_2
# BB#1:                                 # %if.then
	leaq	-24(%rbp), %rsi
	movl	-28(%rbp), %edi
	callq	rnd_remap
	jmp	.LBB28_3
.LBB28_2:                               # %if.else
	imull	$3, -28(%rbp), %eax
	movslq	%eax, %rcx
	movw	g_sample_color_tab(,%rcx), %dx
	movw	%dx, -24(%rbp)
	movb	g_sample_color_tab+2(,%rcx), %sil
	movb	%sil, -22(%rbp)
.LBB28_3:                               # %if.end
	cmpl	$0, g_values+8
	je	.LBB28_82
# BB#4:                                 # %if.then.16
	cmpl	$0, g_values+12
	je	.LBB28_6
# BB#5:                                 # %if.then.18
	movq	-16(%rbp), %rax
	movzbl	(%rax), %ecx
	imull	$30, %ecx, %ecx
	movq	-16(%rbp), %rax
	movzbl	1(%rax), %edx
	imull	$59, %edx, %edx
	addl	%edx, %ecx
	movq	-16(%rbp), %rax
	movzbl	2(%rax), %edx
	imull	$11, %edx, %edx
	addl	%edx, %ecx
	cvtsi2sdl	%ecx, %xmm0
	movsd	%xmm0, -40(%rbp)
	jmp	.LBB28_7
.LBB28_6:                               # %if.else.31
	movsd	.LCPI28_0, %xmm0        # xmm0 = mem[0],zero
	movl	$100, %eax
	movq	-16(%rbp), %rcx
	movzbl	(%rcx), %edx
	imull	$30, %edx, %edx
	movq	-16(%rbp), %rcx
	movzbl	1(%rcx), %esi
	imull	$59, %esi, %esi
	addl	%esi, %edx
	movq	-16(%rbp), %rcx
	movzbl	2(%rcx), %esi
	imull	$11, %esi, %esi
	addl	%esi, %edx
	movl	%eax, -136(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-136(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	movslq	%eax, %rcx
	movzbl	g_lvl_trans_tab(,%rcx), %eax
	cvtsi2sdl	%eax, %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -40(%rbp)
.LBB28_7:                               # %if.end.49
	xorps	%xmm0, %xmm0
	movzbl	-24(%rbp), %eax
	imull	$30, %eax, %eax
	movzbl	-23(%rbp), %ecx
	imull	$59, %ecx, %ecx
	addl	%ecx, %eax
	movzbl	-22(%rbp), %ecx
	imull	$11, %ecx, %ecx
	addl	%ecx, %eax
	cvtsi2sdl	%eax, %xmm1
	movsd	%xmm1, -48(%rbp)
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB28_9
	jp	.LBB28_9
# BB#8:                                 # %if.then.63
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI28_0(%rip), %xmm1  # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movb	%cl, -24(%rbp)
	movb	-24(%rbp), %cl
	movb	%cl, -23(%rbp)
	movb	-24(%rbp), %cl
	movb	%cl, -22(%rbp)
	jmp	.LBB28_81
.LBB28_9:                               # %if.else.71
	xorps	%xmm0, %xmm0
	movzbl	-24(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	movsd	%xmm1, -88(%rbp)
	movzbl	-23(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	movsd	%xmm1, -80(%rbp)
	movzbl	-22(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	movsd	%xmm1, -96(%rbp)
	movsd	-88(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB28_11
# BB#10:                                # %if.then.80
	movsd	.LCPI28_1, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI28_3, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI28_2, %xmm2        # xmm2 = mem[0],zero
	movsd	-40(%rbp), %xmm3        # xmm3 = mem[0],zero
	mulsd	-80(%rbp), %xmm2
	divsd	-88(%rbp), %xmm2
	addsd	%xmm2, %xmm1
	mulsd	-96(%rbp), %xmm0
	divsd	-88(%rbp), %xmm0
	addsd	%xmm0, %xmm1
	divsd	%xmm1, %xmm3
	movsd	%xmm3, -64(%rbp)
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-64(%rbp), %xmm0
	divsd	-88(%rbp), %xmm0
	movsd	%xmm0, -56(%rbp)
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-64(%rbp), %xmm0
	divsd	-88(%rbp), %xmm0
	movsd	%xmm0, -72(%rbp)
	jmp	.LBB28_15
.LBB28_11:                              # %if.else.92
	xorps	%xmm0, %xmm0
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB28_13
# BB#12:                                # %if.then.95
	movsd	.LCPI28_1, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI28_2, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI28_3, %xmm2        # xmm2 = mem[0],zero
	movsd	-40(%rbp), %xmm3        # xmm3 = mem[0],zero
	mulsd	-88(%rbp), %xmm2
	divsd	-80(%rbp), %xmm2
	addsd	%xmm1, %xmm2
	mulsd	-96(%rbp), %xmm0
	divsd	-80(%rbp), %xmm0
	addsd	%xmm0, %xmm2
	divsd	%xmm2, %xmm3
	movsd	%xmm3, -56(%rbp)
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-56(%rbp), %xmm0
	divsd	-80(%rbp), %xmm0
	movsd	%xmm0, -64(%rbp)
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-56(%rbp), %xmm0
	divsd	-80(%rbp), %xmm0
	movsd	%xmm0, -72(%rbp)
	jmp	.LBB28_14
.LBB28_13:                              # %if.else.107
	movsd	.LCPI28_1, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI28_2, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI28_3, %xmm2        # xmm2 = mem[0],zero
	movsd	-40(%rbp), %xmm3        # xmm3 = mem[0],zero
	mulsd	-88(%rbp), %xmm2
	divsd	-96(%rbp), %xmm2
	mulsd	-80(%rbp), %xmm1
	divsd	-96(%rbp), %xmm1
	addsd	%xmm1, %xmm2
	addsd	%xmm0, %xmm2
	divsd	%xmm2, %xmm3
	movsd	%xmm3, -72(%rbp)
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-72(%rbp), %xmm0
	divsd	-96(%rbp), %xmm0
	movsd	%xmm0, -56(%rbp)
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-72(%rbp), %xmm0
	divsd	-96(%rbp), %xmm0
	movsd	%xmm0, -64(%rbp)
.LBB28_14:                              # %if.end.119
	jmp	.LBB28_15
.LBB28_15:                              # %if.end.120
	movsd	.LCPI28_4, %xmm0        # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB28_30
# BB#16:                                # %if.then.123
	movsd	.LCPI28_4, %xmm0        # xmm0 = mem[0],zero
	ucomisd	-72(%rbp), %xmm0
	jbe	.LBB28_25
# BB#17:                                # %land.lhs.true
	movsd	.LCPI28_4, %xmm0        # xmm0 = mem[0],zero
	ucomisd	-56(%rbp), %xmm0
	jbe	.LBB28_25
# BB#18:                                # %if.then.128
	xorps	%xmm0, %xmm0
	movsd	.LCPI28_3, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI28_4, %xmm2        # xmm2 = mem[0],zero
	movsd	-64(%rbp), %xmm3        # xmm3 = mem[0],zero
	subsd	%xmm2, %xmm3
	mulsd	%xmm1, %xmm3
	movsd	%xmm3, -128(%rbp)
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB28_20
# BB#19:                                # %if.then.132
	movsd	.LCPI28_2, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI28_1, %xmm1        # xmm1 = mem[0],zero
	movsd	-128(%rbp), %xmm2       # xmm2 = mem[0],zero
	mulsd	-96(%rbp), %xmm1
	divsd	-80(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	divsd	%xmm0, %xmm2
	movsd	%xmm2, -104(%rbp)
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-96(%rbp), %xmm0
	divsd	-80(%rbp), %xmm0
	movsd	%xmm0, -120(%rbp)
	jmp	.LBB28_24
.LBB28_20:                              # %if.else.139
	xorps	%xmm0, %xmm0
	movsd	-96(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB28_22
# BB#21:                                # %if.then.142
	movsd	.LCPI28_1, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI28_2, %xmm1        # xmm1 = mem[0],zero
	movsd	-128(%rbp), %xmm2       # xmm2 = mem[0],zero
	mulsd	-80(%rbp), %xmm1
	divsd	-96(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	divsd	%xmm0, %xmm2
	movsd	%xmm2, -120(%rbp)
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-80(%rbp), %xmm0
	divsd	-96(%rbp), %xmm0
	movsd	%xmm0, -104(%rbp)
	jmp	.LBB28_23
.LBB28_22:                              # %if.else.149
	movsd	.LCPI28_10, %xmm0       # xmm0 = mem[0],zero
	movsd	-128(%rbp), %xmm1       # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -120(%rbp)
	movsd	-128(%rbp), %xmm1       # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -104(%rbp)
.LBB28_23:                              # %if.end.152
	jmp	.LBB28_24
.LBB28_24:                              # %if.end.153
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	addsd	-56(%rbp), %xmm0
	movsd	%xmm0, -56(%rbp)
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	addsd	-72(%rbp), %xmm0
	movsd	%xmm0, -72(%rbp)
.LBB28_25:                              # %if.end.156
	movsd	.LCPI28_4, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -64(%rbp)
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB28_27
# BB#26:                                # %if.then.159
	movsd	.LCPI28_1, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI28_9, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI28_4, %xmm2        # xmm2 = mem[0],zero
	movsd	%xmm2, -56(%rbp)
	movsd	-40(%rbp), %xmm2        # xmm2 = mem[0],zero
	subsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	movsd	%xmm2, -72(%rbp)
.LBB28_27:                              # %if.end.162
	movsd	.LCPI28_4, %xmm0        # xmm0 = mem[0],zero
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB28_29
# BB#28:                                # %if.then.165
	movsd	.LCPI28_2, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI28_7, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI28_4, %xmm2        # xmm2 = mem[0],zero
	movsd	%xmm2, -72(%rbp)
	movsd	-40(%rbp), %xmm2        # xmm2 = mem[0],zero
	subsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	movsd	%xmm2, -56(%rbp)
.LBB28_29:                              # %if.end.168
	jmp	.LBB28_62
.LBB28_30:                              # %if.else.169
	movsd	.LCPI28_4, %xmm0        # xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB28_45
# BB#31:                                # %if.then.172
	movsd	.LCPI28_4, %xmm0        # xmm0 = mem[0],zero
	ucomisd	-72(%rbp), %xmm0
	jbe	.LBB28_40
# BB#32:                                # %land.lhs.true.175
	movsd	.LCPI28_4, %xmm0        # xmm0 = mem[0],zero
	ucomisd	-64(%rbp), %xmm0
	jbe	.LBB28_40
# BB#33:                                # %if.then.178
	xorps	%xmm0, %xmm0
	movsd	.LCPI28_2, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI28_4, %xmm2        # xmm2 = mem[0],zero
	movsd	-56(%rbp), %xmm3        # xmm3 = mem[0],zero
	subsd	%xmm2, %xmm3
	mulsd	%xmm1, %xmm3
	movsd	%xmm3, -128(%rbp)
	movsd	-88(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB28_35
# BB#34:                                # %if.then.183
	movsd	.LCPI28_3, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI28_1, %xmm1        # xmm1 = mem[0],zero
	movsd	-128(%rbp), %xmm2       # xmm2 = mem[0],zero
	mulsd	-96(%rbp), %xmm1
	divsd	-88(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	divsd	%xmm0, %xmm2
	movsd	%xmm2, -112(%rbp)
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-96(%rbp), %xmm0
	divsd	-88(%rbp), %xmm0
	movsd	%xmm0, -120(%rbp)
	jmp	.LBB28_39
.LBB28_35:                              # %if.else.190
	xorps	%xmm0, %xmm0
	movsd	-96(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB28_37
# BB#36:                                # %if.then.193
	movsd	.LCPI28_1, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI28_3, %xmm1        # xmm1 = mem[0],zero
	movsd	-128(%rbp), %xmm2       # xmm2 = mem[0],zero
	mulsd	-88(%rbp), %xmm1
	divsd	-96(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	divsd	%xmm0, %xmm2
	movsd	%xmm2, -120(%rbp)
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-88(%rbp), %xmm0
	divsd	-96(%rbp), %xmm0
	movsd	%xmm0, -112(%rbp)
	jmp	.LBB28_38
.LBB28_37:                              # %if.else.200
	movsd	.LCPI28_8, %xmm0        # xmm0 = mem[0],zero
	movsd	-128(%rbp), %xmm1       # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -120(%rbp)
	movsd	-128(%rbp), %xmm1       # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -112(%rbp)
.LBB28_38:                              # %if.end.203
	jmp	.LBB28_39
.LBB28_39:                              # %if.end.204
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	addsd	-64(%rbp), %xmm0
	movsd	%xmm0, -64(%rbp)
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	addsd	-72(%rbp), %xmm0
	movsd	%xmm0, -72(%rbp)
.LBB28_40:                              # %if.end.207
	movsd	.LCPI28_4, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB28_42
# BB#41:                                # %if.then.210
	movsd	.LCPI28_1, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI28_9, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI28_4, %xmm2        # xmm2 = mem[0],zero
	movsd	%xmm2, -64(%rbp)
	movsd	-40(%rbp), %xmm2        # xmm2 = mem[0],zero
	subsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	movsd	%xmm2, -72(%rbp)
.LBB28_42:                              # %if.end.213
	movsd	.LCPI28_4, %xmm0        # xmm0 = mem[0],zero
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB28_44
# BB#43:                                # %if.then.216
	movsd	.LCPI28_3, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI28_6, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI28_4, %xmm2        # xmm2 = mem[0],zero
	movsd	%xmm2, -72(%rbp)
	movsd	-40(%rbp), %xmm2        # xmm2 = mem[0],zero
	subsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	movsd	%xmm2, -64(%rbp)
.LBB28_44:                              # %if.end.219
	jmp	.LBB28_61
.LBB28_45:                              # %if.else.220
	movsd	.LCPI28_4, %xmm0        # xmm0 = mem[0],zero
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB28_60
# BB#46:                                # %if.then.223
	movsd	.LCPI28_4, %xmm0        # xmm0 = mem[0],zero
	ucomisd	-64(%rbp), %xmm0
	jbe	.LBB28_55
# BB#47:                                # %land.lhs.true.226
	movsd	.LCPI28_4, %xmm0        # xmm0 = mem[0],zero
	ucomisd	-56(%rbp), %xmm0
	jbe	.LBB28_55
# BB#48:                                # %if.then.229
	xorps	%xmm0, %xmm0
	movsd	.LCPI28_1, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI28_4, %xmm2        # xmm2 = mem[0],zero
	movsd	-72(%rbp), %xmm3        # xmm3 = mem[0],zero
	subsd	%xmm2, %xmm3
	mulsd	%xmm1, %xmm3
	movsd	%xmm3, -128(%rbp)
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB28_50
# BB#49:                                # %if.then.234
	movsd	.LCPI28_2, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI28_3, %xmm1        # xmm1 = mem[0],zero
	movsd	-128(%rbp), %xmm2       # xmm2 = mem[0],zero
	mulsd	-88(%rbp), %xmm1
	divsd	-80(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	divsd	%xmm0, %xmm2
	movsd	%xmm2, -104(%rbp)
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-88(%rbp), %xmm0
	divsd	-80(%rbp), %xmm0
	movsd	%xmm0, -112(%rbp)
	jmp	.LBB28_54
.LBB28_50:                              # %if.else.241
	xorps	%xmm0, %xmm0
	movsd	-88(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB28_52
# BB#51:                                # %if.then.244
	movsd	.LCPI28_3, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI28_2, %xmm1        # xmm1 = mem[0],zero
	movsd	-128(%rbp), %xmm2       # xmm2 = mem[0],zero
	mulsd	-80(%rbp), %xmm1
	divsd	-88(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	divsd	%xmm0, %xmm2
	movsd	%xmm2, -112(%rbp)
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-80(%rbp), %xmm0
	divsd	-88(%rbp), %xmm0
	movsd	%xmm0, -104(%rbp)
	jmp	.LBB28_53
.LBB28_52:                              # %if.else.251
	movsd	.LCPI28_5, %xmm0        # xmm0 = mem[0],zero
	movsd	-128(%rbp), %xmm1       # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -112(%rbp)
	movsd	-128(%rbp), %xmm1       # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -104(%rbp)
.LBB28_53:                              # %if.end.254
	jmp	.LBB28_54
.LBB28_54:                              # %if.end.255
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	addsd	-56(%rbp), %xmm0
	movsd	%xmm0, -56(%rbp)
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	addsd	-64(%rbp), %xmm0
	movsd	%xmm0, -64(%rbp)
.LBB28_55:                              # %if.end.258
	movsd	.LCPI28_4, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -72(%rbp)
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB28_57
# BB#56:                                # %if.then.261
	movsd	.LCPI28_3, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI28_6, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI28_4, %xmm2        # xmm2 = mem[0],zero
	movsd	%xmm2, -56(%rbp)
	movsd	-40(%rbp), %xmm2        # xmm2 = mem[0],zero
	subsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	movsd	%xmm2, -64(%rbp)
.LBB28_57:                              # %if.end.264
	movsd	.LCPI28_4, %xmm0        # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB28_59
# BB#58:                                # %if.then.267
	movsd	.LCPI28_2, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI28_7, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI28_4, %xmm2        # xmm2 = mem[0],zero
	movsd	%xmm2, -64(%rbp)
	movsd	-40(%rbp), %xmm2        # xmm2 = mem[0],zero
	subsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	movsd	%xmm2, -56(%rbp)
.LBB28_59:                              # %if.end.270
	jmp	.LBB28_60
.LBB28_60:                              # %if.end.271
	jmp	.LBB28_61
.LBB28_61:                              # %if.end.272
	jmp	.LBB28_62
.LBB28_62:                              # %if.end.273
	movsd	.LCPI28_4, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI28_11, %xmm1       # xmm1 = mem[0],zero
	addsd	-64(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB28_64
# BB#63:                                # %cond.true
	movsd	.LCPI28_4, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -144(%rbp)       # 8-byte Spill
	jmp	.LBB28_68
.LBB28_64:                              # %cond.false
	xorps	%xmm0, %xmm0
	movsd	.LCPI28_11, %xmm1       # xmm1 = mem[0],zero
	addsd	-64(%rbp), %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB28_66
# BB#65:                                # %cond.true.280
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -152(%rbp)       # 8-byte Spill
	jmp	.LBB28_67
.LBB28_66:                              # %cond.false.281
	movsd	.LCPI28_11, %xmm0       # xmm0 = mem[0],zero
	addsd	-64(%rbp), %xmm0
	movsd	%xmm0, -152(%rbp)       # 8-byte Spill
.LBB28_67:                              # %cond.end
	movsd	-152(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -144(%rbp)       # 8-byte Spill
.LBB28_68:                              # %cond.end.283
	movsd	-144(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI28_4, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI28_11, %xmm2       # xmm2 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movb	%cl, -24(%rbp)
	addsd	-56(%rbp), %xmm2
	ucomisd	%xmm1, %xmm2
	jbe	.LBB28_70
# BB#69:                                # %cond.true.290
	movsd	.LCPI28_4, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -160(%rbp)       # 8-byte Spill
	jmp	.LBB28_74
.LBB28_70:                              # %cond.false.291
	xorps	%xmm0, %xmm0
	movsd	.LCPI28_11, %xmm1       # xmm1 = mem[0],zero
	addsd	-56(%rbp), %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB28_72
# BB#71:                                # %cond.true.295
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -168(%rbp)       # 8-byte Spill
	jmp	.LBB28_73
.LBB28_72:                              # %cond.false.296
	movsd	.LCPI28_11, %xmm0       # xmm0 = mem[0],zero
	addsd	-56(%rbp), %xmm0
	movsd	%xmm0, -168(%rbp)       # 8-byte Spill
.LBB28_73:                              # %cond.end.298
	movsd	-168(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -160(%rbp)       # 8-byte Spill
.LBB28_74:                              # %cond.end.300
	movsd	-160(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI28_4, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI28_11, %xmm2       # xmm2 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movb	%cl, -23(%rbp)
	addsd	-72(%rbp), %xmm2
	ucomisd	%xmm1, %xmm2
	jbe	.LBB28_76
# BB#75:                                # %cond.true.307
	movsd	.LCPI28_4, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -176(%rbp)       # 8-byte Spill
	jmp	.LBB28_80
.LBB28_76:                              # %cond.false.308
	xorps	%xmm0, %xmm0
	movsd	.LCPI28_11, %xmm1       # xmm1 = mem[0],zero
	addsd	-72(%rbp), %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB28_78
# BB#77:                                # %cond.true.312
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -184(%rbp)       # 8-byte Spill
	jmp	.LBB28_79
.LBB28_78:                              # %cond.false.313
	movsd	.LCPI28_11, %xmm0       # xmm0 = mem[0],zero
	addsd	-72(%rbp), %xmm0
	movsd	%xmm0, -184(%rbp)       # 8-byte Spill
.LBB28_79:                              # %cond.end.315
	movsd	-184(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -176(%rbp)       # 8-byte Spill
.LBB28_80:                              # %cond.end.317
	movsd	-176(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movb	%cl, -22(%rbp)
.LBB28_81:                              # %if.end.321
	jmp	.LBB28_82
.LBB28_82:                              # %if.end.322
	leaq	-24(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movslq	-20(%rbp), %rdx
	callq	memcpy
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	remap_pixel, .Lfunc_end28-remap_pixel
	.cfi_endproc

	.align	16, 0x90
	.type	rnd_remap,@function
rnd_remap:                              # @rnd_remap
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp97:
	.cfi_def_cfa_offset 16
.Ltmp98:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp99:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movabsq	$g_lum_tab, %rax
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movslq	-4(%rbp), %rsi
	shlq	$4, %rsi
	addq	%rsi, %rax
	cmpl	$1, (%rax)
	jle	.LBB29_8
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	movabsq	$g_lum_tab, %rax
	movslq	-4(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %esi
	callq	g_random_int_range
	movabsq	$g_lum_tab, %rcx
	movl	%eax, -28(%rbp)
	movl	$0, -32(%rbp)
	movl	$0, -36(%rbp)
	movslq	-4(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, -24(%rbp)
.LBB29_2:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB29_7
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB29_2 Depth=1
	movq	-24(%rbp), %rax
	movl	4(%rax), %ecx
	addl	-32(%rbp), %ecx
	movl	%ecx, -32(%rbp)
	movl	-28(%rbp), %ecx
	cmpl	-32(%rbp), %ecx
	jge	.LBB29_5
# BB#4:                                 # %if.then.9
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movw	(%rcx), %dx
	movw	%dx, (%rax)
	movb	2(%rcx), %sil
	movb	%sil, 2(%rax)
	jmp	.LBB29_9
.LBB29_5:                               # %if.end
                                        #   in Loop: Header=BB29_2 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
# BB#6:                                 # %for.inc
                                        #   in Loop: Header=BB29_2 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB29_2
.LBB29_7:                               # %for.end
	jmp	.LBB29_8
.LBB29_8:                               # %if.end.11
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %ecx
	addl	-4(%rbp), %ecx
	addl	-4(%rbp), %ecx
	movslq	%ecx, %rdx
	movw	g_sample_color_tab(,%rdx), %si
	movw	%si, (%rax)
	movb	g_sample_color_tab+2(,%rdx), %dil
	movb	%dil, 2(%rax)
.LBB29_9:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end29:
	.size	rnd_remap, .Lfunc_end29-rnd_remap
	.cfi_endproc

	.align	16, 0x90
	.type	is_layer_alive,@function
is_layer_alive:                         # @is_layer_alive
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp100:
	.cfi_def_cfa_offset 16
.Ltmp101:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp102:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -8(%rbp)
	cmpl	$0, -8(%rbp)
	jge	.LBB30_2
# BB#1:                                 # %if.then
	movl	$-1, -4(%rbp)
	jmp	.LBB30_5
.LBB30_2:                               # %if.end
	movl	-8(%rbp), %edi
	callq	gimp_item_get_image
	cmpl	$0, %eax
	jge	.LBB30_4
# BB#3:                                 # %if.then.2
	movabsq	$.L.str.77, %rdi
	movl	-8(%rbp), %esi
	movb	$0, %al
	callq	printf
	movl	$-1, -4(%rbp)
	movl	%eax, -12(%rbp)         # 4-byte Spill
	jmp	.LBB30_5
.LBB30_4:                               # %if.end.4
	movl	-8(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB30_5:                               # %return
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	is_layer_alive, .Lfunc_end30-is_layer_alive
	.cfi_endproc

	.align	16, 0x90
	.type	init_gdrw,@function
init_gdrw:                              # @init_gdrw
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp103:
	.cfi_def_cfa_offset 16
.Ltmp104:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp105:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	cmpl	$0, g_Sdebug
	je	.LBB31_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.78, %rdi
	movq	-16(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	(%rax), %edx
	movb	$0, %al
	callq	printf
	movl	%eax, -80(%rbp)         # 4-byte Spill
.LBB31_2:                               # %if.end
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rax
	movq	$0, 88(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 112(%rax)
	callq	gimp_tile_width
	movq	-8(%rbp), %rcx
	movl	%eax, 104(%rcx)
	callq	gimp_tile_height
	leaq	-52(%rbp), %rsi
	leaq	-56(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movl	%eax, 108(%rcx)
	movl	-24(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 116(%rcx)
	movq	-8(%rbp), %rcx
	movl	$0, 128(%rcx)
	movq	-8(%rbp), %rcx
	movl	$0, 120(%rcx)
	movq	-8(%rbp), %rcx
	movl	$0, 124(%rcx)
	movq	-16(%rbp), %rcx
	movl	(%rcx), %edi
	callq	gimp_drawable_offsets
	movq	-16(%rbp), %rcx
	movl	(%rcx), %edi
	movq	-8(%rbp), %rcx
	addq	$64, %rcx
	movq	-8(%rbp), %rdx
	addq	$68, %rdx
	movq	-8(%rbp), %rsi
	addq	$72, %rsi
	movq	-8(%rbp), %r8
	addq	$76, %r8
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	movq	%rcx, %rsi
	movq	-88(%rbp), %rcx         # 8-byte Reload
	movl	%eax, -92(%rbp)         # 4-byte Spill
	callq	gimp_drawable_mask_bounds
	movq	-16(%rbp), %rcx
	movl	12(%rcx), %edi
	movq	-8(%rbp), %rcx
	movl	%edi, 84(%rcx)
	movq	-16(%rbp), %rcx
	movl	(%rcx), %edi
	movl	%eax, -96(%rbp)         # 4-byte Spill
	callq	gimp_drawable_has_alpha
	cmpl	$0, %eax
	je	.LBB31_4
# BB#3:                                 # %if.then.17
	movq	-8(%rbp), %rax
	movl	84(%rax), %ecx
	subl	$1, %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 80(%rax)
	jmp	.LBB31_5
.LBB31_4:                               # %if.else
	movq	-8(%rbp), %rax
	movl	$0, 80(%rax)
.LBB31_5:                               # %if.end.20
	movq	-16(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_item_get_image
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %edi
	callq	gimp_image_get_selection
	movl	%eax, -32(%rbp)
	cmpl	$0, g_Sdebug
	je	.LBB31_7
# BB#6:                                 # %if.then.25
	movabsq	$.L.str.79, %rdi
	movl	-28(%rbp), %esi
	movl	-32(%rbp), %edx
	movb	$0, %al
	callq	printf
	movabsq	$.L.str.80, %rdi
	movq	-8(%rbp), %rcx
	movl	64(%rcx), %esi
	movq	-8(%rbp), %rcx
	movl	68(%rcx), %edx
	movq	-8(%rbp), %rcx
	movl	72(%rcx), %ecx
	movq	-8(%rbp), %r8
	movl	76(%r8), %r8d
	movl	%eax, -100(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	printf
	movabsq	$.L.str.81, %rdi
	movl	-52(%rbp), %esi
	movl	-56(%rbp), %edx
	movl	%eax, -104(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	printf
	movl	%eax, -108(%rbp)        # 4-byte Spill
.LBB31_7:                               # %if.end.33
	leaq	-76(%rbp), %rsi
	leaq	-36(%rbp), %rdx
	leaq	-44(%rbp), %rcx
	leaq	-40(%rbp), %r8
	leaq	-48(%rbp), %r9
	movl	-28(%rbp), %edi
	callq	gimp_selection_bounds
	cmpl	$0, -76(%rbp)
	movl	%eax, -112(%rbp)        # 4-byte Spill
	je	.LBB31_12
# BB#8:                                 # %land.lhs.true
	cmpl	$0, -32(%rbp)
	jl	.LBB31_12
# BB#9:                                 # %if.then.36
	movl	$1, %eax
	movl	%eax, %edi
	movl	$136, %eax
	movl	%eax, %esi
	callq	g_malloc0_n
	movq	%rax, -72(%rbp)
	movl	-32(%rbp), %edi
	callq	gimp_drawable_get
	movq	-72(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-72(%rbp), %rax
	movq	$0, 88(%rax)
	movq	-72(%rbp), %rax
	movl	$0, 112(%rax)
	callq	gimp_tile_width
	movq	-72(%rbp), %rsi
	movl	%eax, 104(%rsi)
	callq	gimp_tile_height
	leaq	-60(%rbp), %rsi
	leaq	-64(%rbp), %rdx
	movq	-72(%rbp), %rcx
	movl	%eax, 108(%rcx)
	movl	-24(%rbp), %eax
	movq	-72(%rbp), %rcx
	movl	%eax, 116(%rcx)
	movq	-72(%rbp), %rcx
	movl	$0, 128(%rcx)
	movl	-36(%rbp), %eax
	movq	-72(%rbp), %rcx
	movl	%eax, 64(%rcx)
	movl	-44(%rbp), %eax
	movq	-72(%rbp), %rcx
	movl	%eax, 68(%rcx)
	movl	-40(%rbp), %eax
	movq	-72(%rbp), %rcx
	movl	%eax, 72(%rcx)
	movl	-48(%rbp), %eax
	movq	-72(%rbp), %rcx
	movl	%eax, 76(%rcx)
	movq	-72(%rbp), %rcx
	movl	$0, 120(%rcx)
	movq	-72(%rbp), %rcx
	movl	$0, 124(%rcx)
	movq	-72(%rbp), %rcx
	movq	(%rcx), %rcx
	movl	12(%rcx), %eax
	movq	-72(%rbp), %rcx
	movl	%eax, 84(%rcx)
	movq	-72(%rbp), %rcx
	movl	$0, 80(%rcx)
	movq	-72(%rbp), %rcx
	movq	$0, 8(%rcx)
	movl	-32(%rbp), %edi
	callq	gimp_drawable_offsets
	movl	-52(%rbp), %edi
	subl	-60(%rbp), %edi
	movq	-8(%rbp), %rcx
	movl	%edi, 120(%rcx)
	movl	-56(%rbp), %edi
	subl	-64(%rbp), %edi
	movq	-8(%rbp), %rcx
	movl	%edi, 124(%rcx)
	movq	-72(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	%rcx, 8(%rdx)
	cmpl	$0, g_Sdebug
	movl	%eax, -116(%rbp)        # 4-byte Spill
	je	.LBB31_11
# BB#10:                                # %if.then.66
	movabsq	$.L.str.82, %rdi
	movq	-72(%rbp), %rax
	movl	64(%rax), %esi
	movq	-72(%rbp), %rax
	movl	68(%rax), %edx
	movq	-72(%rbp), %rax
	movl	72(%rax), %ecx
	movq	-72(%rbp), %rax
	movl	76(%rax), %r8d
	movb	$0, %al
	callq	printf
	movabsq	$.L.str.83, %rdi
	movl	-60(%rbp), %esi
	movl	-64(%rbp), %edx
	movl	%eax, -120(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	printf
	movabsq	$.L.str.84, %rdi
	movq	-8(%rbp), %r9
	movl	120(%r9), %esi
	movq	-8(%rbp), %r9
	movl	124(%r9), %edx
	movl	%eax, -124(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	printf
	movl	%eax, -128(%rbp)        # 4-byte Spill
.LBB31_11:                              # %if.end.76
	jmp	.LBB31_13
.LBB31_12:                              # %if.else.77
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
.LBB31_13:                              # %if.end.79
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end31:
	.size	init_gdrw, .Lfunc_end31-init_gdrw
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI32_0:
	.quad	4611686018427387904     # double 2
.LCPI32_1:
	.quad	4643211215818981376     # double 256
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI32_2:
	.long	1132462080              # float 256
	.text
	.align	16, 0x90
	.type	update_pv,@function
update_pv:                              # @update_pv
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp106:
	.cfi_def_cfa_offset 16
.Ltmp107:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp108:
	.cfi_def_cfa_register %rbp
	subq	$262336, %rsp           # imm = 0x400C0
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.LBB32_2
# BB#1:                                 # %if.then
	jmp	.LBB32_42
.LBB32_2:                               # %if.end
	movb	$127, -262193(%rbp)
	movb	$127, -262194(%rbp)
	movb	$127, -262195(%rbp)
	movb	$127, -262196(%rbp)
	cmpl	$0, -12(%rbp)
	je	.LBB32_7
# BB#3:                                 # %if.then.5
	movq	-24(%rbp), %rax
	movl	72(%rax), %ecx
	movq	-24(%rbp), %rax
	subl	64(%rax), %ecx
	movl	%ecx, -262236(%rbp)
	movq	-24(%rbp), %rax
	movl	76(%rax), %ecx
	movq	-24(%rbp), %rax
	subl	68(%rax), %ecx
	movl	%ecx, -262240(%rbp)
	movl	-262240(%rbp), %ecx
	cmpl	-262236(%rbp), %ecx
	jle	.LBB32_5
# BB#4:                                 # %if.then.9
	movsd	.LCPI32_0, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI32_1, %xmm1        # xmm1 = mem[0],zero
	movss	.LCPI32_2, %xmm2        # xmm2 = mem[0],zero,zero,zero
	cvtsi2ssl	-262240(%rbp), %xmm3
	divss	%xmm2, %xmm3
	cvtss2sd	%xmm3, %xmm2
	movsd	%xmm2, -262256(%rbp)
	movsd	-262256(%rbp), %xmm2    # xmm2 = mem[0],zero
	movsd	%xmm2, -262248(%rbp)
	movq	-24(%rbp), %rax
	cvtsi2sdl	64(%rax), %xmm2
	cvtsi2sdl	-262236(%rbp), %xmm3
	mulsd	-262248(%rbp), %xmm1
	subsd	%xmm1, %xmm3
	divsd	%xmm0, %xmm3
	addsd	%xmm3, %xmm2
	cvttsd2si	%xmm2, %ecx
	movl	%ecx, -262228(%rbp)
	movq	-24(%rbp), %rax
	movl	68(%rax), %ecx
	movl	%ecx, -262232(%rbp)
	jmp	.LBB32_6
.LBB32_5:                               # %if.else
	movsd	.LCPI32_0, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI32_1, %xmm1        # xmm1 = mem[0],zero
	movss	.LCPI32_2, %xmm2        # xmm2 = mem[0],zero,zero,zero
	cvtsi2ssl	-262236(%rbp), %xmm3
	divss	%xmm2, %xmm3
	cvtss2sd	%xmm3, %xmm2
	movsd	%xmm2, -262248(%rbp)
	movsd	-262248(%rbp), %xmm2    # xmm2 = mem[0],zero
	movsd	%xmm2, -262256(%rbp)
	movq	-24(%rbp), %rax
	movl	64(%rax), %ecx
	movl	%ecx, -262228(%rbp)
	movq	-24(%rbp), %rax
	cvtsi2sdl	68(%rax), %xmm2
	cvtsi2sdl	-262240(%rbp), %xmm3
	mulsd	-262256(%rbp), %xmm1
	subsd	%xmm1, %xmm3
	divsd	%xmm0, %xmm3
	addsd	%xmm3, %xmm2
	cvttsd2si	%xmm2, %ecx
	movl	%ecx, -262232(%rbp)
.LBB32_6:                               # %if.end.30
	jmp	.LBB32_11
.LBB32_7:                               # %if.else.31
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %ecx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpl	4(%rax), %ecx
	jbe	.LBB32_9
# BB#8:                                 # %if.then.35
	movsd	.LCPI32_0, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI32_1, %xmm1        # xmm1 = mem[0],zero
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %ecx
	movl	%ecx, %eax
	cvtsi2ssq	%rax, %xmm2
	movss	.LCPI32_2(%rip), %xmm3  # xmm3 = mem[0],zero,zero,zero
	divss	%xmm3, %xmm2
	cvtss2sd	%xmm2, %xmm2
	movsd	%xmm2, -262256(%rbp)
	movsd	%xmm2, -262248(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	4(%rax), %ecx
	movl	%ecx, %eax
	cvtsi2sdq	%rax, %xmm2
	mulsd	-262248(%rbp), %xmm1
	subsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %ecx
	movl	%ecx, -262228(%rbp)
	movl	$0, -262232(%rbp)
	jmp	.LBB32_10
.LBB32_9:                               # %if.else.48
	movsd	.LCPI32_0, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI32_1, %xmm1        # xmm1 = mem[0],zero
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	4(%rax), %ecx
	movl	%ecx, %eax
	cvtsi2ssq	%rax, %xmm2
	movss	.LCPI32_2(%rip), %xmm3  # xmm3 = mem[0],zero,zero,zero
	divss	%xmm3, %xmm2
	cvtss2sd	%xmm2, %xmm2
	movsd	%xmm2, -262248(%rbp)
	movsd	%xmm2, -262256(%rbp)
	movl	$0, -262228(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %ecx
	movl	%ecx, %eax
	cvtsi2sdq	%rax, %xmm2
	mulsd	-262256(%rbp), %xmm1
	subsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %ecx
	movl	%ecx, -262232(%rbp)
.LBB32_10:                              # %if.end.61
	jmp	.LBB32_11
.LBB32_11:                              # %if.end.62
	cmpq	$0, -32(%rbp)
	je	.LBB32_13
# BB#12:                                # %if.then.64
	movq	-32(%rbp), %rax
	movq	%rax, -262264(%rbp)
	movl	$4, -262276(%rbp)
	jmp	.LBB32_14
.LBB32_13:                              # %if.else.65
	leaq	-262268(%rbp), %rax
	movq	%rax, -262264(%rbp)
	movl	$0, -262276(%rbp)
.LBB32_14:                              # %if.end.67
	leaq	-262192(%rbp), %rax
	movq	%rax, -262208(%rbp)
	movl	$0, -262216(%rbp)
.LBB32_15:                              # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB32_17 Depth 2
	cmpl	$256, -262216(%rbp)     # imm = 0x100
	jge	.LBB32_40
# BB#16:                                # %for.body
                                        #   in Loop: Header=BB32_15 Depth=1
	movl	$0, -262212(%rbp)
.LBB32_17:                              # %for.cond.70
                                        #   Parent Loop BB32_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$256, -262212(%rbp)     # imm = 0x100
	jge	.LBB32_38
# BB#18:                                # %for.body.73
                                        #   in Loop: Header=BB32_17 Depth=2
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB32_23
# BB#19:                                # %if.then.76
                                        #   in Loop: Header=BB32_17 Depth=2
	leaq	-262196(%rbp), %rcx
	cvtsi2sdl	-262228(%rbp), %xmm0
	cvtsi2sdl	-262212(%rbp), %xmm1
	mulsd	-262248(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -262220(%rbp)
	cvtsi2sdl	-262232(%rbp), %xmm0
	cvtsi2sdl	-262216(%rbp), %xmm1
	mulsd	-262256(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -262224(%rbp)
	movq	-24(%rbp), %rdi
	movl	-262220(%rbp), %esi
	movl	-262224(%rbp), %edx
	callq	get_pixel
	movq	-24(%rbp), %rcx
	cmpq	$0, 8(%rcx)
	je	.LBB32_21
# BB#20:                                # %if.then.89
                                        #   in Loop: Header=BB32_17 Depth=2
	leaq	-262272(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	-262220(%rbp), %edx
	movq	-24(%rbp), %rsi
	addl	120(%rsi), %edx
	movl	-262224(%rbp), %edi
	movq	-24(%rbp), %rsi
	addl	124(%rsi), %edi
	movl	%edi, -262284(%rbp)     # 4-byte Spill
	movq	%rax, %rdi
	movl	%edx, %esi
	movl	-262284(%rbp), %edx     # 4-byte Reload
	callq	get_pixel
	jmp	.LBB32_22
.LBB32_21:                              # %if.else.94
                                        #   in Loop: Header=BB32_17 Depth=2
	movb	$-1, -262272(%rbp)
.LBB32_22:                              # %if.end.96
                                        #   in Loop: Header=BB32_17 Depth=2
	jmp	.LBB32_23
.LBB32_23:                              # %if.end.97
                                        #   in Loop: Header=BB32_17 Depth=2
	movq	-24(%rbp), %rax
	movslq	80(%rax), %rax
	movb	-262196(%rbp,%rax), %cl
	movb	%cl, -262277(%rbp)
	cmpl	$0, -36(%rbp)
	je	.LBB32_26
# BB#24:                                # %land.lhs.true
                                        #   in Loop: Header=BB32_17 Depth=2
	movq	-24(%rbp), %rax
	cmpl	$2, 84(%rax)
	jle	.LBB32_26
# BB#25:                                # %if.then.102
                                        #   in Loop: Header=BB32_17 Depth=2
	movb	-262196(%rbp), %al
	movq	-262208(%rbp), %rcx
	movb	%al, (%rcx)
	movq	-262264(%rbp), %rcx
	movb	%al, (%rcx)
	movb	-262195(%rbp), %al
	movq	-262208(%rbp), %rcx
	movb	%al, 1(%rcx)
	movq	-262264(%rbp), %rcx
	movb	%al, 1(%rcx)
	movb	-262194(%rbp), %al
	movq	-262208(%rbp), %rcx
	movb	%al, 2(%rcx)
	movq	-262264(%rbp), %rcx
	movb	%al, 2(%rcx)
	jmp	.LBB32_30
.LBB32_26:                              # %if.else.112
                                        #   in Loop: Header=BB32_17 Depth=2
	movq	-24(%rbp), %rax
	cmpl	$2, 84(%rax)
	jle	.LBB32_28
# BB#27:                                # %if.then.116
                                        #   in Loop: Header=BB32_17 Depth=2
	movl	$100, %eax
	movzbl	-262196(%rbp), %ecx
	imull	$30, %ecx, %ecx
	movzbl	-262195(%rbp), %edx
	imull	$59, %edx, %edx
	addl	%edx, %ecx
	movzbl	-262194(%rbp), %edx
	imull	$11, %edx, %edx
	addl	%edx, %ecx
	movl	%eax, -262288(%rbp)     # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-262288(%rbp), %ecx     # 4-byte Reload
	idivl	%ecx
	movb	%al, %sil
	movq	-262208(%rbp), %rdi
	movb	%sil, (%rdi)
	jmp	.LBB32_29
.LBB32_28:                              # %if.else.130
                                        #   in Loop: Header=BB32_17 Depth=2
	movb	-262196(%rbp), %al
	movq	-262208(%rbp), %rcx
	movb	%al, (%rcx)
.LBB32_29:                              # %if.end.132
                                        #   in Loop: Header=BB32_17 Depth=2
	movq	-262208(%rbp), %rax
	movb	(%rax), %cl
	movq	-262264(%rbp), %rax
	movb	%cl, (%rax)
	movq	-262208(%rbp), %rax
	movb	(%rax), %cl
	movq	-262208(%rbp), %rax
	movb	%cl, 1(%rax)
	movq	-262264(%rbp), %rax
	movb	%cl, 1(%rax)
	movq	-262208(%rbp), %rax
	movb	(%rax), %cl
	movq	-262208(%rbp), %rax
	movb	%cl, 2(%rax)
	movq	-262264(%rbp), %rax
	movb	%cl, 2(%rax)
.LBB32_30:                              # %if.end.137
                                        #   in Loop: Header=BB32_17 Depth=2
	movq	-24(%rbp), %rax
	cmpl	$0, 80(%rax)
	jne	.LBB32_32
# BB#31:                                # %if.then.141
                                        #   in Loop: Header=BB32_17 Depth=2
	movq	-262208(%rbp), %rax
	movb	$-1, 3(%rax)
	movq	-262264(%rbp), %rax
	movb	$-1, 3(%rax)
	jmp	.LBB32_36
.LBB32_32:                              # %if.else.144
                                        #   in Loop: Header=BB32_17 Depth=2
	movzbl	-262272(%rbp), %eax
	movzbl	-262277(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB32_34
# BB#33:                                # %cond.true
                                        #   in Loop: Header=BB32_17 Depth=2
	movzbl	-262272(%rbp), %eax
	movl	%eax, -262292(%rbp)     # 4-byte Spill
	jmp	.LBB32_35
.LBB32_34:                              # %cond.false
                                        #   in Loop: Header=BB32_17 Depth=2
	movzbl	-262277(%rbp), %eax
	movl	%eax, -262292(%rbp)     # 4-byte Spill
.LBB32_35:                              # %cond.end
                                        #   in Loop: Header=BB32_17 Depth=2
	movl	-262292(%rbp), %eax     # 4-byte Reload
	movb	%al, %cl
	movq	-262208(%rbp), %rdx
	movb	%cl, 3(%rdx)
	movq	-262264(%rbp), %rdx
	movb	%cl, 3(%rdx)
.LBB32_36:                              # %if.end.156
                                        #   in Loop: Header=BB32_17 Depth=2
	movl	-262276(%rbp), %eax
	movq	-262264(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -262264(%rbp)
	movq	-262208(%rbp), %rcx
	addq	$4, %rcx
	movq	%rcx, -262208(%rbp)
# BB#37:                                # %for.inc
                                        #   in Loop: Header=BB32_17 Depth=2
	movl	-262212(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -262212(%rbp)
	jmp	.LBB32_17
.LBB32_38:                              # %for.end
                                        #   in Loop: Header=BB32_15 Depth=1
	jmp	.LBB32_39
.LBB32_39:                              # %for.inc.158
                                        #   in Loop: Header=BB32_15 Depth=1
	movl	-262216(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -262216(%rbp)
	jmp	.LBB32_15
.LBB32_40:                              # %for.end.160
	cmpq	$0, -32(%rbp)
	jne	.LBB32_42
# BB#41:                                # %if.then.163
	movq	-8(%rbp), %rax
	movq	%rax, -262304(%rbp)     # 8-byte Spill
	callq	gimp_preview_area_get_type
	movq	-262304(%rbp), %rdi     # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	$256, %edx              # imm = 0x100
	movl	$1, %r9d
	movl	$1024, %r8d             # imm = 0x400
	leaq	-262192(%rbp), %rsi
	movq	%rax, %rdi
	movq	%rsi, -262312(%rbp)     # 8-byte Spill
	movl	%ecx, %esi
	movl	%edx, -262316(%rbp)     # 4-byte Spill
	movl	%ecx, %edx
	movl	-262316(%rbp), %ecx     # 4-byte Reload
	movl	-262316(%rbp), %r10d    # 4-byte Reload
	movl	%r8d, -262320(%rbp)     # 4-byte Spill
	movl	%r10d, %r8d
	movq	-262312(%rbp), %rax     # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$1024, 8(%rsp)          # imm = 0x400
	callq	gimp_preview_area_draw
	movq	-8(%rbp), %rdi
	callq	gtk_widget_queue_draw
.LBB32_42:                              # %if.end.166
	addq	$262336, %rsp           # imm = 0x400C0
	popq	%rbp
	retq
.Lfunc_end32:
	.size	update_pv, .Lfunc_end32-update_pv
	.cfi_endproc

	.align	16, 0x90
	.type	end_gdrw,@function
end_gdrw:                               # @end_gdrw
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp109:
	.cfi_def_cfa_offset 16
.Ltmp110:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp111:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpq	$0, 88(%rdi)
	je	.LBB33_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	88(%rax), %rdi
	movq	-8(%rbp), %rax
	movl	112(%rax), %esi
	callq	gimp_tile_unref
	movq	-8(%rbp), %rax
	movq	$0, 88(%rax)
.LBB33_2:                               # %if.end
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB33_6
# BB#3:                                 # %if.then.5
	movq	-16(%rbp), %rax
	cmpq	$0, 88(%rax)
	je	.LBB33_5
# BB#4:                                 # %if.then.8
	movq	-16(%rbp), %rax
	movq	88(%rax), %rdi
	movq	-16(%rbp), %rax
	movl	112(%rax), %esi
	callq	gimp_tile_unref
	movq	-16(%rbp), %rax
	movq	$0, 88(%rax)
.LBB33_5:                               # %if.end.12
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
.LBB33_6:                               # %if.end.14
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end33:
	.size	end_gdrw, .Lfunc_end33-end_gdrw
	.cfi_endproc

	.align	16, 0x90
	.type	get_pixel,@function
get_pixel:                              # @get_pixel
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp112:
	.cfi_def_cfa_offset 16
.Ltmp113:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp114:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	cmpl	$0, -12(%rbp)
	jl	.LBB34_4
# BB#1:                                 # %lor.lhs.false
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movl	4(%rcx), %edx
	subl	$1, %edx
	cmpl	%edx, %eax
	ja	.LBB34_4
# BB#2:                                 # %lor.lhs.false.2
	cmpl	$0, -16(%rbp)
	jl	.LBB34_4
# BB#3:                                 # %lor.lhs.false.4
	movl	-16(%rbp), %eax
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movl	8(%rcx), %edx
	subl	$1, %edx
	cmpl	%edx, %eax
	jbe	.LBB34_5
.LBB34_4:                               # %if.then
	movq	-24(%rbp), %rax
	movb	$-56, 2(%rax)
	movq	-24(%rbp), %rax
	movb	$-56, 1(%rax)
	movq	-24(%rbp), %rax
	movb	$-56, (%rax)
	movq	-24(%rbp), %rax
	movb	$0, 3(%rax)
	jmp	.LBB34_6
.LBB34_5:                               # %if.end
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	cltd
	idivl	104(%rcx)
	movl	%eax, -32(%rbp)
	movl	-16(%rbp), %eax
	movq	-8(%rbp), %rcx
	cltd
	idivl	108(%rcx)
	movl	%eax, -28(%rbp)
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	cltd
	idivl	104(%rcx)
	movl	%edx, -36(%rbp)
	movl	-16(%rbp), %edx
	movq	-8(%rbp), %rcx
	movl	%edx, %eax
	cltd
	idivl	108(%rcx)
	movl	%edx, -40(%rbp)
	movq	-8(%rbp), %rdi
	movl	-32(%rbp), %esi
	movl	-28(%rbp), %edx
	movq	-8(%rbp), %rcx
	movl	116(%rcx), %ecx
	callq	provide_tile
	movq	-24(%rbp), %rdi
	movb	$0, 3(%rdi)
	movq	-24(%rbp), %rdi
	movb	$0, 1(%rdi)
	movq	-8(%rbp), %rdi
	movq	88(%rdi), %rdi
	movq	24(%rdi), %rdi
	movl	-40(%rbp), %ecx
	movq	-8(%rbp), %r8
	movq	88(%r8), %r8
	imull	(%r8), %ecx
	addl	-36(%rbp), %ecx
	movq	-8(%rbp), %r8
	imull	84(%r8), %ecx
	movl	%ecx, %ecx
	movl	%ecx, %r8d
	addq	%r8, %rdi
	movq	%rdi, -48(%rbp)
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-8(%rbp), %r8
	movslq	84(%r8), %rdx
	callq	memcpy
.LBB34_6:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end34:
	.size	get_pixel, .Lfunc_end34-get_pixel
	.cfi_endproc

	.align	16, 0x90
	.type	provide_tile,@function
provide_tile:                           # @provide_tile
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp115:
	.cfi_def_cfa_offset 16
.Ltmp116:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp117:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	-12(%rbp), %ecx
	movq	-8(%rbp), %rdi
	cmpl	100(%rdi), %ecx
	jne	.LBB35_3
# BB#1:                                 # %lor.lhs.false
	movl	-16(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	96(%rcx), %eax
	jne	.LBB35_3
# BB#2:                                 # %lor.lhs.false.2
	movq	-8(%rbp), %rax
	cmpq	$0, 88(%rax)
	jne	.LBB35_6
.LBB35_3:                               # %if.then
	movq	-8(%rbp), %rax
	cmpq	$0, 88(%rax)
	je	.LBB35_5
# BB#4:                                 # %if.then.5
	movq	-8(%rbp), %rax
	movq	88(%rax), %rdi
	movq	-8(%rbp), %rax
	movl	112(%rax), %esi
	callq	gimp_tile_unref
.LBB35_5:                               # %if.end
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 100(%rcx)
	movl	-16(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 96(%rcx)
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rdi
	movl	-20(%rbp), %esi
	movq	-8(%rbp), %rcx
	movl	96(%rcx), %edx
	movq	-8(%rbp), %rcx
	movl	100(%rcx), %ecx
	callq	gimp_drawable_get_tile
	movq	-8(%rbp), %rdi
	movq	%rax, 88(%rdi)
	movq	-8(%rbp), %rax
	movl	$0, 112(%rax)
	movq	-8(%rbp), %rax
	movq	88(%rax), %rdi
	callq	gimp_tile_ref
	movq	-8(%rbp), %rax
	movl	128(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 128(%rax)
.LBB35_6:                               # %if.end.14
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end35:
	.size	provide_tile, .Lfunc_end35-provide_tile
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI36_0:
	.quad	4643176031446892544     # double 255
.LCPI36_1:
	.quad	4607182418800017408     # double 1
.LCPI36_2:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	calculate_level_transfers,@function
calculate_level_transfers:              # @calculate_level_transfers
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp118:
	.cfi_def_cfa_offset 16
.Ltmp119:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp120:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movl	g_values+28, %eax
	cmpl	g_values+24, %eax
	jl	.LBB36_2
# BB#1:                                 # %if.then
	movl	g_values+28, %eax
	movl	%eax, -20(%rbp)
	movl	g_values+24, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB36_3
.LBB36_2:                               # %if.else
	movl	g_values+24, %eax
	movl	%eax, -20(%rbp)
	movl	g_values+28, %eax
	movl	%eax, -16(%rbp)
.LBB36_3:                               # %if.end
	movl	g_values+40, %eax
	cmpl	g_values+36, %eax
	jl	.LBB36_5
# BB#4:                                 # %if.then.2
	movl	g_values+40, %eax
	movl	%eax, -28(%rbp)
	movl	g_values+36, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB36_6
.LBB36_5:                               # %if.else.3
	movl	g_values+36, %eax
	movl	%eax, -28(%rbp)
	movl	g_values+40, %eax
	movl	%eax, -24(%rbp)
.LBB36_6:                               # %if.end.4
	movl	$0, -12(%rbp)
.LBB36_7:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$256, -12(%rbp)         # imm = 0x100
	jge	.LBB36_24
# BB#8:                                 # %for.body
                                        #   in Loop: Header=BB36_7 Depth=1
	xorps	%xmm0, %xmm0
	movsd	.LCPI36_0, %xmm1        # xmm1 = mem[0],zero
	cvtsi2sdl	-12(%rbp), %xmm2
	divsd	%xmm1, %xmm2
	movsd	%xmm2, -8(%rbp)
	cvtss2sd	g_values+32, %xmm1
	ucomisd	%xmm0, %xmm1
	jne	.LBB36_9
	jp	.LBB36_9
	jmp	.LBB36_10
.LBB36_9:                               # %if.then.9
                                        #   in Loop: Header=BB36_7 Depth=1
	movsd	.LCPI36_1, %xmm0        # xmm0 = mem[0],zero
	movsd	-8(%rbp), %xmm1         # xmm1 = mem[0],zero
	cvtss2sd	g_values+32, %xmm2
	divsd	%xmm2, %xmm0
	movsd	%xmm0, -40(%rbp)        # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-40(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	pow
	movsd	%xmm0, -8(%rbp)
.LBB36_10:                              # %if.end.12
                                        #   in Loop: Header=BB36_7 Depth=1
	movsd	.LCPI36_0, %xmm0        # xmm0 = mem[0],zero
	movsd	-8(%rbp), %xmm1         # xmm1 = mem[0],zero
	movl	-20(%rbp), %eax
	subl	-16(%rbp), %eax
	cvtsi2sdl	%eax, %xmm2
	mulsd	%xmm2, %xmm1
	cvtsi2sdl	-16(%rbp), %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm1, -8(%rbp)
	movsd	-8(%rbp), %xmm1         # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB36_12
# BB#11:                                # %cond.true
                                        #   in Loop: Header=BB36_7 Depth=1
	movsd	.LCPI36_0, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
	jmp	.LBB36_16
.LBB36_12:                              # %cond.false
                                        #   in Loop: Header=BB36_7 Depth=1
	xorps	%xmm0, %xmm0
	ucomisd	-8(%rbp), %xmm0
	jbe	.LBB36_14
# BB#13:                                # %cond.true.19
                                        #   in Loop: Header=BB36_7 Depth=1
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
	jmp	.LBB36_15
.LBB36_14:                              # %cond.false.20
                                        #   in Loop: Header=BB36_7 Depth=1
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
.LBB36_15:                              # %cond.end
                                        #   in Loop: Header=BB36_7 Depth=1
	movsd	-56(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
.LBB36_16:                              # %cond.end.21
                                        #   in Loop: Header=BB36_7 Depth=1
	movsd	-48(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI36_0, %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
	movsd	.LCPI36_2(%rip), %xmm2  # xmm2 = mem[0],zero
	addsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movslq	-12(%rbp), %rdx
	movb	%cl, g_lvl_trans_tab(,%rdx)
	cvtsi2sdl	-12(%rbp), %xmm0
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rbp)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movl	-28(%rbp), %eax
	subl	-24(%rbp), %eax
	cvtsi2sdl	%eax, %xmm2
	mulsd	%xmm2, %xmm0
	cvtsi2sdl	-24(%rbp), %xmm2
	addsd	%xmm2, %xmm0
	movsd	%xmm0, -8(%rbp)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB36_18
# BB#17:                                # %cond.true.34
                                        #   in Loop: Header=BB36_7 Depth=1
	movsd	.LCPI36_0, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	jmp	.LBB36_22
.LBB36_18:                              # %cond.false.35
                                        #   in Loop: Header=BB36_7 Depth=1
	xorps	%xmm0, %xmm0
	ucomisd	-8(%rbp), %xmm0
	jbe	.LBB36_20
# BB#19:                                # %cond.true.38
                                        #   in Loop: Header=BB36_7 Depth=1
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	jmp	.LBB36_21
.LBB36_20:                              # %cond.false.39
                                        #   in Loop: Header=BB36_7 Depth=1
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
.LBB36_21:                              # %cond.end.40
                                        #   in Loop: Header=BB36_7 Depth=1
	movsd	-72(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
.LBB36_22:                              # %cond.end.42
                                        #   in Loop: Header=BB36_7 Depth=1
	movsd	-64(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
	movsd	.LCPI36_2(%rip), %xmm1  # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movslq	-12(%rbp), %rdx
	movb	%cl, g_out_trans_tab(,%rdx)
# BB#23:                                # %for.inc
                                        #   in Loop: Header=BB36_7 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB36_7
.LBB36_24:                              # %for.end
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end36:
	.size	calculate_level_transfers, .Lfunc_end36-calculate_level_transfers
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI37_0:
	.quad	4621256167635550208     # double 9
	.text
	.align	16, 0x90
	.type	levels_draw_slider,@function
levels_draw_slider:                     # @levels_draw_slider
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp121:
	.cfi_def_cfa_offset 16
.Ltmp122:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp123:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	xorps	%xmm1, %xmm1
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	-8(%rbp), %rdi
	cvtsi2sdl	-28(%rbp), %xmm0
	callq	cairo_move_to
	movsd	.LCPI37_0, %xmm1        # xmm1 = mem[0],zero
	movq	-8(%rbp), %rdi
	movl	-28(%rbp), %ecx
	subl	$4, %ecx
	cvtsi2sdl	%ecx, %xmm0
	callq	cairo_line_to
	movsd	.LCPI37_0, %xmm1        # xmm1 = mem[0],zero
	movq	-8(%rbp), %rdi
	movl	-28(%rbp), %ecx
	addl	$4, %ecx
	cvtsi2sdl	%ecx, %xmm0
	callq	cairo_line_to
	xorps	%xmm1, %xmm1
	movq	-8(%rbp), %rdi
	cvtsi2sdl	-28(%rbp), %xmm0
	callq	cairo_line_to
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gdk_cairo_set_source_color
	movq	-8(%rbp), %rdi
	callq	cairo_fill_preserve
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gdk_cairo_set_source_color
	movq	-8(%rbp), %rdi
	callq	cairo_stroke
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end37:
	.size	levels_draw_slider, .Lfunc_end37-levels_draw_slider
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI38_0:
	.long	1085276160              # float 5.5
	.text
	.align	16, 0x90
	.type	get_filevalues,@function
get_filevalues:                         # @get_filevalues
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp124:
	.cfi_def_cfa_offset 16
.Ltmp125:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp126:
	.cfi_def_cfa_register %rbp
	subq	$1040, %rsp             # imm = 0x410
	movabsq	$.L.str.86, %rdi
	movabsq	$.L.str.87, %rsi
	movss	.LCPI38_0, %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, g_values+44
	callq	fopen
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.LBB38_2
# BB#1:                                 # %if.then
	movl	$999, %esi              # imm = 0x3E7
	leaq	-1008(%rbp), %rdi
	movq	-8(%rbp), %rdx
	callq	fgets
	movabsq	$.L.str.88, %rsi
	movabsq	$g_values, %rdx
	addq	$44, %rdx
	leaq	-1008(%rbp), %rdi
	movq	%rax, -1016(%rbp)       # 8-byte Spill
	movb	$0, %al
	callq	__isoc99_sscanf
	movq	-8(%rbp), %rdi
	movl	%eax, -1020(%rbp)       # 4-byte Spill
	callq	fclose
	movl	%eax, -1024(%rbp)       # 4-byte Spill
.LBB38_2:                               # %if.end
	movabsq	$.L.str.89, %rdi
	cvtss2sd	g_values+44, %xmm0
	movb	$1, %al
	callq	printf
	movl	%eax, -1028(%rbp)       # 4-byte Spill
	addq	$1040, %rsp             # imm = 0x410
	popq	%rbp
	retq
.Lfunc_end38:
	.size	get_filevalues, .Lfunc_end38-get_filevalues
	.cfi_endproc

	.align	16, 0x90
	.type	color_error,@function
color_error:                            # @color_error
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp127:
	.cfi_def_cfa_offset 16
.Ltmp128:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp129:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$48, %rsp
.Ltmp130:
	.cfi_offset %rbx, -48
.Ltmp131:
	.cfi_offset %r12, -40
.Ltmp132:
	.cfi_offset %r14, -32
.Ltmp133:
	.cfi_offset %r15, -24
	movb	%r9b, %al
	movb	%r8b, %r10b
	movb	%cl, %r11b
	movb	%dl, %bl
	movb	%sil, %r14b
	movb	%dil, %r15b
	movl	$10, %ecx
	movb	%r15b, -33(%rbp)
	movb	%r14b, -34(%rbp)
	movb	%bl, -35(%rbp)
	movb	%r11b, -36(%rbp)
	movb	%r10b, -37(%rbp)
	movb	%al, -38(%rbp)
	movzbl	-36(%rbp), %edx
	imull	$3, %edx, %edx
	movzbl	-37(%rbp), %esi
	imull	$6, %esi, %esi
	addl	%esi, %edx
	movzbl	-38(%rbp), %esi
	addl	%esi, %edx
	movl	%edx, %eax
	cltd
	idivl	%ecx
	movslq	%eax, %r12
	movq	%r12, -64(%rbp)
	movzbl	-33(%rbp), %eax
	imull	$3, %eax, %eax
	movzbl	-34(%rbp), %esi
	imull	$6, %esi, %esi
	addl	%esi, %eax
	movzbl	-35(%rbp), %esi
	addl	%esi, %eax
	cltd
	idivl	%ecx
	movslq	%eax, %r12
	movq	%r12, -72(%rbp)
	movq	-72(%rbp), %r12
	subq	-64(%rbp), %r12
	movl	%r12d, %eax
	movl	%eax, %edi
	callq	abs
	movslq	%eax, %r12
	movq	%r12, -56(%rbp)
	movq	-56(%rbp), %r12
	imulq	-56(%rbp), %r12
	movq	%r12, -48(%rbp)
	movzbl	-33(%rbp), %eax
	movzbl	-36(%rbp), %ecx
	subl	%ecx, %eax
	movl	%eax, %edi
	callq	abs
	movslq	%eax, %r12
	movq	%r12, -56(%rbp)
	movq	-56(%rbp), %r12
	imulq	-56(%rbp), %r12
	addq	-48(%rbp), %r12
	movq	%r12, -48(%rbp)
	movzbl	-34(%rbp), %eax
	movzbl	-37(%rbp), %ecx
	subl	%ecx, %eax
	movl	%eax, %edi
	callq	abs
	movslq	%eax, %r12
	movq	%r12, -56(%rbp)
	movq	-56(%rbp), %r12
	imulq	-56(%rbp), %r12
	addq	-48(%rbp), %r12
	movq	%r12, -48(%rbp)
	movzbl	-35(%rbp), %eax
	movzbl	-38(%rbp), %ecx
	subl	%ecx, %eax
	movl	%eax, %edi
	callq	abs
	movslq	%eax, %r12
	movq	%r12, -56(%rbp)
	movq	-56(%rbp), %r12
	imulq	-56(%rbp), %r12
	addq	-48(%rbp), %r12
	movq	%r12, -48(%rbp)
	movq	-48(%rbp), %r12
	movl	%r12d, %eax
	addq	$48, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end39:
	.size	color_error, .Lfunc_end39-color_error
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI40_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	sample_analyze,@function
sample_analyze:                         # @sample_analyze
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp134:
	.cfi_def_cfa_offset 16
.Ltmp135:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp136:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	xorps	%xmm0, %xmm0
	movsd	.LCPI40_0, %xmm1        # xmm1 = mem[0],zero
	movq	%rdi, -16(%rbp)
	movl	$0, -20(%rbp)
	movq	-16(%rbp), %rdi
	movl	72(%rdi), %eax
	movq	-16(%rbp), %rdi
	subl	64(%rdi), %eax
	cvtsi2ssl	%eax, %xmm2
	movss	%xmm2, -68(%rbp)
	cvtss2sd	-68(%rbp), %xmm2
	divsd	%xmm2, %xmm1
	cvtsd2ss	%xmm1, %xmm1
	movss	%xmm1, -64(%rbp)
	movss	%xmm0, -72(%rbp)
	cmpl	$0, g_show_progress
	je	.LBB40_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.90, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_progress_init
	movl	%eax, -92(%rbp)         # 4-byte Spill
.LBB40_2:                               # %if.end
	movq	$0, -88(%rbp)
	cmpl	$0, g_Sdebug
	je	.LBB40_4
# BB#3:                                 # %if.then.6
	movabsq	$.L.str.91, %rdi
	movabsq	$.L.str.92, %rsi
	callq	fopen
	movq	%rax, -88(%rbp)
.LBB40_4:                               # %if.end.8
	movq	-88(%rbp), %rdi
	callq	print_values
	movq	-16(%rbp), %rdi
	movl	68(%rdi), %eax
	movq	-16(%rbp), %rdi
	cltd
	idivl	108(%rdi)
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rdi
	movl	76(%rdi), %eax
	movq	-16(%rbp), %rdi
	cltd
	idivl	108(%rdi)
	movl	%eax, -40(%rbp)
	movq	-16(%rbp), %rdi
	movl	64(%rdi), %eax
	movq	-16(%rbp), %rdi
	cltd
	idivl	104(%rdi)
	movl	%eax, -36(%rbp)
	movq	-16(%rbp), %rdi
	movl	72(%rdi), %eax
	movq	-16(%rbp), %rdi
	cltd
	idivl	104(%rdi)
	movl	%eax, -44(%rbp)
	movl	-32(%rbp), %eax
	movl	%eax, -24(%rbp)
.LBB40_5:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB40_7 Depth 2
                                        #       Child Loop BB40_15 Depth 3
                                        #         Child Loop BB40_23 Depth 4
	movl	-24(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jg	.LBB40_41
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB40_5 Depth=1
	movl	-36(%rbp), %eax
	movl	%eax, -28(%rbp)
.LBB40_7:                               # %for.cond.19
                                        #   Parent Loop BB40_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB40_15 Depth 3
                                        #         Child Loop BB40_23 Depth 4
	movl	-28(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jg	.LBB40_39
# BB#8:                                 # %for.body.22
                                        #   in Loop: Header=BB40_7 Depth=2
	movl	-28(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jne	.LBB40_10
# BB#9:                                 # %if.then.25
                                        #   in Loop: Header=BB40_7 Depth=2
	movq	-16(%rbp), %rax
	movl	64(%rax), %ecx
	movl	%ecx, -48(%rbp)
	jmp	.LBB40_11
.LBB40_10:                              # %if.else
                                        #   in Loop: Header=BB40_7 Depth=2
	movl	-28(%rbp), %eax
	movq	-16(%rbp), %rcx
	imull	104(%rcx), %eax
	movl	%eax, -48(%rbp)
.LBB40_11:                              # %if.end.28
                                        #   in Loop: Header=BB40_7 Depth=2
	movl	-28(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jne	.LBB40_13
# BB#12:                                # %if.then.31
                                        #   in Loop: Header=BB40_7 Depth=2
	movq	-16(%rbp), %rax
	movl	72(%rax), %ecx
	movl	%ecx, -56(%rbp)
	jmp	.LBB40_14
.LBB40_13:                              # %if.else.33
                                        #   in Loop: Header=BB40_7 Depth=2
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movq	-16(%rbp), %rcx
	imull	104(%rcx), %eax
	movl	%eax, -56(%rbp)
.LBB40_14:                              # %if.end.36
                                        #   in Loop: Header=BB40_7 Depth=2
	jmp	.LBB40_15
.LBB40_15:                              # %for.cond.37
                                        #   Parent Loop BB40_5 Depth=1
                                        #     Parent Loop BB40_7 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB40_23 Depth 4
	movl	-48(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jge	.LBB40_37
# BB#16:                                # %for.body.40
                                        #   in Loop: Header=BB40_15 Depth=3
	movl	-24(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jne	.LBB40_18
# BB#17:                                # %if.then.43
                                        #   in Loop: Header=BB40_15 Depth=3
	movq	-16(%rbp), %rax
	movl	68(%rax), %ecx
	movl	%ecx, -52(%rbp)
	jmp	.LBB40_19
.LBB40_18:                              # %if.else.45
                                        #   in Loop: Header=BB40_15 Depth=3
	movl	-24(%rbp), %eax
	movq	-16(%rbp), %rcx
	imull	108(%rcx), %eax
	movl	%eax, -52(%rbp)
.LBB40_19:                              # %if.end.48
                                        #   in Loop: Header=BB40_15 Depth=3
	movl	-24(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jne	.LBB40_21
# BB#20:                                # %if.then.51
                                        #   in Loop: Header=BB40_15 Depth=3
	movq	-16(%rbp), %rax
	movl	76(%rax), %ecx
	movl	%ecx, -60(%rbp)
	jmp	.LBB40_22
.LBB40_21:                              # %if.else.53
                                        #   in Loop: Header=BB40_15 Depth=3
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movq	-16(%rbp), %rcx
	imull	108(%rcx), %eax
	movl	%eax, -60(%rbp)
.LBB40_22:                              # %if.end.57
                                        #   in Loop: Header=BB40_15 Depth=3
	jmp	.LBB40_23
.LBB40_23:                              # %for.cond.58
                                        #   Parent Loop BB40_5 Depth=1
                                        #     Parent Loop BB40_7 Depth=2
                                        #       Parent Loop BB40_15 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	-52(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jge	.LBB40_33
# BB#24:                                # %for.body.61
                                        #   in Loop: Header=BB40_23 Depth=4
	movq	-16(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB40_28
# BB#25:                                # %if.then.63
                                        #   in Loop: Header=BB40_23 Depth=4
	leaq	-76(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movl	-48(%rbp), %edx
	movq	-16(%rbp), %rsi
	addl	120(%rsi), %edx
	movl	-52(%rbp), %edi
	movq	-16(%rbp), %rsi
	addl	124(%rsi), %edi
	movl	%edi, -96(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movl	%edx, %esi
	movl	-96(%rbp), %edx         # 4-byte Reload
	callq	get_pixel
	movzbl	-76(%rbp), %edx
	cmpl	$0, %edx
	jne	.LBB40_27
# BB#26:                                # %if.then.71
                                        #   in Loop: Header=BB40_23 Depth=4
	jmp	.LBB40_32
.LBB40_27:                              # %if.end.72
                                        #   in Loop: Header=BB40_23 Depth=4
	jmp	.LBB40_28
.LBB40_28:                              # %if.end.73
                                        #   in Loop: Header=BB40_23 Depth=4
	leaq	-76(%rbp), %rcx
	movq	-16(%rbp), %rdi
	movl	-48(%rbp), %esi
	movl	-52(%rbp), %edx
	callq	get_pixel
	movq	-16(%rbp), %rcx
	cmpl	$1, 80(%rcx)
	jl	.LBB40_30
# BB#29:                                # %lor.lhs.false
                                        #   in Loop: Header=BB40_23 Depth=4
	movq	-16(%rbp), %rax
	movslq	80(%rax), %rax
	movzbl	-76(%rbp,%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB40_31
.LBB40_30:                              # %if.then.82
                                        #   in Loop: Header=BB40_23 Depth=4
	leaq	-76(%rbp), %rdi
	callq	add_color
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
.LBB40_31:                              # %if.end.84
                                        #   in Loop: Header=BB40_23 Depth=4
	jmp	.LBB40_32
.LBB40_32:                              # %for.inc
                                        #   in Loop: Header=BB40_23 Depth=4
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB40_23
.LBB40_33:                              # %for.end
                                        #   in Loop: Header=BB40_15 Depth=3
	cmpl	$0, g_show_progress
	je	.LBB40_35
# BB#34:                                # %if.then.87
                                        #   in Loop: Header=BB40_15 Depth=3
	movss	-64(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	addss	-72(%rbp), %xmm0
	movss	%xmm0, -72(%rbp)
	cvtss2sd	%xmm0, %xmm0
	callq	gimp_progress_update
	movl	%eax, -100(%rbp)        # 4-byte Spill
.LBB40_35:                              # %if.end.91
                                        #   in Loop: Header=BB40_15 Depth=3
	jmp	.LBB40_36
.LBB40_36:                              # %for.inc.92
                                        #   in Loop: Header=BB40_15 Depth=3
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB40_15
.LBB40_37:                              # %for.end.94
                                        #   in Loop: Header=BB40_7 Depth=2
	jmp	.LBB40_38
.LBB40_38:                              # %for.inc.95
                                        #   in Loop: Header=BB40_7 Depth=2
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB40_7
.LBB40_39:                              # %for.end.97
                                        #   in Loop: Header=BB40_5 Depth=1
	jmp	.LBB40_40
.LBB40_40:                              # %for.inc.98
                                        #   in Loop: Header=BB40_5 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB40_5
.LBB40_41:                              # %for.end.100
	cmpl	$0, g_show_progress
	je	.LBB40_43
# BB#42:                                # %if.then.102
	movsd	.LCPI40_0, %xmm0        # xmm0 = mem[0],zero
	callq	gimp_progress_update
	movl	%eax, -104(%rbp)        # 4-byte Spill
.LBB40_43:                              # %if.end.104
	cmpl	$0, g_Sdebug
	je	.LBB40_45
# BB#44:                                # %if.then.106
	movabsq	$.L.str.93, %rdi
	movl	-32(%rbp), %esi
	movl	-40(%rbp), %edx
	movl	-36(%rbp), %ecx
	movl	-44(%rbp), %r8d
	movb	$0, %al
	callq	printf
	movl	%eax, -108(%rbp)        # 4-byte Spill
.LBB40_45:                              # %if.end.108
	movq	-88(%rbp), %rdi
	callq	print_table
	cmpl	$0, g_Sdebug
	je	.LBB40_47
# BB#46:                                # %if.then.110
	movabsq	$.L.str.94, %rdi
	callq	print_ppm
.LBB40_47:                              # %if.end.111
	callq	ideal_samples
	callq	calculate_level_transfers
	cmpl	$0, g_values+20
	je	.LBB40_49
# BB#48:                                # %if.then.113
	callq	guess_missing_colors
	jmp	.LBB40_50
.LBB40_49:                              # %if.else.114
	callq	fill_missing_colors
.LBB40_50:                              # %if.end.115
	movq	-88(%rbp), %rdi
	callq	print_table
	cmpl	$0, g_Sdebug
	je	.LBB40_52
# BB#51:                                # %if.then.117
	movabsq	$.L.str.95, %rdi
	callq	print_ppm
.LBB40_52:                              # %if.end.118
	movq	-88(%rbp), %rdi
	callq	print_transtable
	cmpq	$0, -88(%rbp)
	je	.LBB40_54
# BB#53:                                # %if.then.120
	movq	-88(%rbp), %rdi
	callq	fclose
	movl	%eax, -112(%rbp)        # 4-byte Spill
.LBB40_54:                              # %if.end.122
	cmpl	$0, -20(%rbp)
	jne	.LBB40_56
# BB#55:                                # %if.then.125
	movabsq	$.L.str.96, %rdi
	movb	$0, %al
	callq	printf
	movl	$-1, -4(%rbp)
	movl	%eax, -116(%rbp)        # 4-byte Spill
	jmp	.LBB40_57
.LBB40_56:                              # %if.end.127
	movl	$0, -4(%rbp)
.LBB40_57:                              # %return
	movl	-4(%rbp), %eax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end40:
	.size	sample_analyze, .Lfunc_end40-sample_analyze
	.cfi_endproc

	.align	16, 0x90
	.type	colorize_drawable,@function
colorize_drawable:                      # @colorize_drawable
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp137:
	.cfi_def_cfa_offset 16
.Ltmp138:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp139:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	callq	gimp_drawable_get
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_has_alpha
	movl	%eax, -20(%rbp)
	cmpl	$0, g_show_progress
	je	.LBB41_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.115, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_progress_init
	movl	%eax, -24(%rbp)         # 4-byte Spill
.LBB41_2:                               # %if.end
	xorl	%esi, %esi
	movabsq	$colorize_func, %rdx
	movq	-16(%rbp), %rdi
	movslq	-20(%rbp), %rcx
	callq	gimp_rgn_iterate2
	cmpl	$0, g_show_progress
	je	.LBB41_4
# BB#3:                                 # %if.then.6
	xorps	%xmm0, %xmm0
	callq	gimp_progress_update
	movl	%eax, -28(%rbp)         # 4-byte Spill
.LBB41_4:                               # %if.end.8
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end41:
	.size	colorize_drawable, .Lfunc_end41-colorize_drawable
	.cfi_endproc

	.align	16, 0x90
	.type	print_values,@function
print_values:                           # @print_values
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp140:
	.cfi_def_cfa_offset 16
.Ltmp141:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp142:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.LBB42_2
# BB#1:                                 # %if.then
	jmp	.LBB42_3
.LBB42_2:                               # %if.end
	movabsq	$.L.str.97, %rsi
	movq	-8(%rbp), %rdi
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.98, %rsi
	movq	-8(%rbp), %rdi
	movl	g_values+8, %edx
	movl	%eax, -12(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.99, %rsi
	movq	-8(%rbp), %rdi
	movl	g_values+12, %edx
	movl	%eax, -16(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.100, %rsi
	movq	-8(%rbp), %rdi
	movl	g_values+16, %edx
	movl	%eax, -20(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.101, %rsi
	movq	-8(%rbp), %rdi
	movl	g_values+20, %edx
	movl	%eax, -24(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.102, %rsi
	movq	-8(%rbp), %rdi
	movl	g_values+24, %edx
	movl	%eax, -28(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.103, %rsi
	movq	-8(%rbp), %rdi
	movl	g_values+28, %edx
	movl	%eax, -32(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.104, %rsi
	movq	-8(%rbp), %rdi
	cvtss2sd	g_values+32, %xmm0
	movl	%eax, -36(%rbp)         # 4-byte Spill
	movb	$1, %al
	callq	fprintf
	movabsq	$.L.str.105, %rsi
	movq	-8(%rbp), %rdi
	movl	g_values+36, %edx
	movl	%eax, -40(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.106, %rsi
	movq	-8(%rbp), %rdi
	movl	g_values+40, %edx
	movl	%eax, -44(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.89, %rsi
	movq	-8(%rbp), %rdi
	cvtss2sd	g_values+44, %xmm0
	movl	%eax, -48(%rbp)         # 4-byte Spill
	movb	$1, %al
	callq	fprintf
	movl	%eax, -52(%rbp)         # 4-byte Spill
.LBB42_3:                               # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end42:
	.size	print_values, .Lfunc_end42-print_values
	.cfi_endproc

	.align	16, 0x90
	.type	add_color,@function
add_color:                              # @add_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp143:
	.cfi_def_cfa_offset 16
.Ltmp144:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp145:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movabsq	$g_lum_tab, %rax
	movl	$100, %ecx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movzbl	(%rdi), %edx
	imull	$30, %edx, %edx
	movq	-8(%rbp), %rdi
	movzbl	1(%rdi), %esi
	imull	$59, %esi, %esi
	addl	%esi, %edx
	movq	-8(%rbp), %rdi
	movzbl	2(%rdi), %esi
	imull	$11, %esi, %esi
	addl	%esi, %edx
	movq	%rax, -32(%rbp)         # 8-byte Spill
	movl	%edx, %eax
	cltd
	idivl	%ecx
	movl	%eax, -12(%rbp)
	movslq	-12(%rbp), %rdi
	shlq	$4, %rdi
	movq	-32(%rbp), %r8          # 8-byte Reload
	addq	%rdi, %r8
	movl	(%r8), %eax
	addl	$1, %eax
	movl	%eax, (%r8)
	movslq	-12(%rbp), %rdi
	shlq	$4, %rdi
	movq	-32(%rbp), %r8          # 8-byte Reload
	addq	%rdi, %r8
	movl	$1, 4(%r8)
	movslq	-12(%rbp), %rdi
	shlq	$4, %rdi
	movq	-32(%rbp), %r8          # 8-byte Reload
	addq	%rdi, %r8
	movq	8(%r8), %rdi
	movq	%rdi, -24(%rbp)
.LBB43_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB43_8
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB43_1 Depth=1
	movq	-8(%rbp), %rax
	movzbl	(%rax), %ecx
	movq	-24(%rbp), %rax
	movzbl	(%rax), %edx
	cmpl	%edx, %ecx
	jne	.LBB43_6
# BB#3:                                 # %land.lhs.true
                                        #   in Loop: Header=BB43_1 Depth=1
	movq	-8(%rbp), %rax
	movzbl	1(%rax), %ecx
	movq	-24(%rbp), %rax
	movzbl	1(%rax), %edx
	cmpl	%edx, %ecx
	jne	.LBB43_6
# BB#4:                                 # %land.lhs.true.29
                                        #   in Loop: Header=BB43_1 Depth=1
	movq	-8(%rbp), %rax
	movzbl	2(%rax), %ecx
	movq	-24(%rbp), %rax
	movzbl	2(%rax), %edx
	cmpl	%edx, %ecx
	jne	.LBB43_6
# BB#5:                                 # %if.then
	movq	-24(%rbp), %rax
	movl	4(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 4(%rax)
	jmp	.LBB43_10
.LBB43_6:                               # %if.end
                                        #   in Loop: Header=BB43_1 Depth=1
	jmp	.LBB43_7
.LBB43_7:                               # %for.inc
                                        #   in Loop: Header=BB43_1 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB43_1
.LBB43_8:                               # %for.end
	movq	-8(%rbp), %rdi
	callq	new_samp_color
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB43_10
# BB#9:                                 # %if.then.40
	movabsq	$g_lum_tab, %rax
	movslq	-12(%rbp), %rcx
	shlq	$4, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	movq	8(%rdx), %rcx
	movq	-24(%rbp), %rdx
	movq	%rcx, 8(%rdx)
	movq	-24(%rbp), %rcx
	movslq	-12(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rax
	movq	%rcx, 8(%rax)
.LBB43_10:                              # %if.end.48
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end43:
	.size	add_color, .Lfunc_end43-add_color
	.cfi_endproc

	.align	16, 0x90
	.type	print_table,@function
print_table:                            # @print_table
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp146:
	.cfi_def_cfa_offset 16
.Ltmp147:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp148:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.LBB44_2
# BB#1:                                 # %if.then
	jmp	.LBB44_6
.LBB44_2:                               # %if.end
	movabsq	$.L.str.107, %rsi
	movq	-8(%rbp), %rdi
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.108, %rsi
	movq	-8(%rbp), %rdi
	movl	%eax, -16(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.107, %rsi
	movq	-8(%rbp), %rdi
	movl	%eax, -20(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movl	$0, -12(%rbp)
	movl	%eax, -24(%rbp)         # 4-byte Spill
.LBB44_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$256, -12(%rbp)         # imm = 0x100
	jge	.LBB44_6
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB44_3 Depth=1
	movabsq	$.L.str.109, %rsi
	movabsq	$g_lum_tab, %rax
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %edx
	movslq	-12(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %ecx
	movb	$0, %al
	callq	fprintf
	movabsq	$g_lum_tab, %rsi
	movq	-8(%rbp), %rdi
	movslq	-12(%rbp), %r8
	shlq	$4, %r8
	addq	%r8, %rsi
	movq	8(%rsi), %rsi
	movl	%eax, -28(%rbp)         # 4-byte Spill
	callq	print_color_list
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB44_3 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB44_3
.LBB44_6:                               # %for.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end44:
	.size	print_table, .Lfunc_end44-print_table
	.cfi_endproc

	.align	16, 0x90
	.type	print_ppm,@function
print_ppm:                              # @print_ppm
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp149:
	.cfi_def_cfa_offset 16
.Ltmp150:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp151:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.LBB45_2
# BB#1:                                 # %if.then
	jmp	.LBB45_19
.LBB45_2:                               # %if.end
	movabsq	$.L.str.92, %rsi
	movq	-8(%rbp), %rdi
	callq	fopen
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB45_19
# BB#3:                                 # %if.then.1
	movabsq	$.L.str.111, %rsi
	movq	-16(%rbp), %rdi
	movb	$0, %al
	callq	fprintf
	movl	$0, -20(%rbp)
	movl	%eax, -52(%rbp)         # 4-byte Spill
.LBB45_4:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB45_6 Depth 2
	cmpl	$256, -20(%rbp)         # imm = 0x100
	jge	.LBB45_18
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB45_4 Depth=1
	movabsq	$g_lum_tab, %rax
	movslq	-20(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	movl	$0, -24(%rbp)
.LBB45_6:                               # %for.cond.5
                                        #   Parent Loop BB45_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$256, -24(%rbp)         # imm = 0x100
	jge	.LBB45_16
# BB#7:                                 # %for.body.7
                                        #   in Loop: Header=BB45_6 Depth=2
	movl	$0, -36(%rbp)
	movl	$0, -32(%rbp)
	movl	$0, -28(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB45_14
# BB#8:                                 # %if.then.9
                                        #   in Loop: Header=BB45_6 Depth=2
	movq	-48(%rbp), %rax
	cmpl	$0, 4(%rax)
	jle	.LBB45_11
# BB#9:                                 # %land.lhs.true
                                        #   in Loop: Header=BB45_6 Depth=2
	cmpl	$20, -24(%rbp)
	je	.LBB45_11
# BB#10:                                # %if.then.12
                                        #   in Loop: Header=BB45_6 Depth=2
	movq	-48(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -28(%rbp)
	movq	-48(%rbp), %rax
	movzbl	1(%rax), %ecx
	movl	%ecx, -32(%rbp)
	movq	-48(%rbp), %rax
	movzbl	2(%rax), %ecx
	movl	%ecx, -36(%rbp)
.LBB45_11:                              # %if.end.20
                                        #   in Loop: Header=BB45_6 Depth=2
	cmpl	$20, -24(%rbp)
	jle	.LBB45_13
# BB#12:                                # %if.then.23
                                        #   in Loop: Header=BB45_6 Depth=2
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
.LBB45_13:                              # %if.end.24
                                        #   in Loop: Header=BB45_6 Depth=2
	jmp	.LBB45_14
.LBB45_14:                              # %if.end.25
                                        #   in Loop: Header=BB45_6 Depth=2
	movabsq	$.L.str.112, %rsi
	movq	-16(%rbp), %rdi
	movl	-28(%rbp), %edx
	movl	-32(%rbp), %ecx
	movl	-36(%rbp), %r8d
	movb	$0, %al
	callq	fprintf
	movl	%eax, -56(%rbp)         # 4-byte Spill
# BB#15:                                # %for.inc
                                        #   in Loop: Header=BB45_6 Depth=2
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB45_6
.LBB45_16:                              # %for.end
                                        #   in Loop: Header=BB45_4 Depth=1
	jmp	.LBB45_17
.LBB45_17:                              # %for.inc.27
                                        #   in Loop: Header=BB45_4 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB45_4
.LBB45_18:                              # %for.end.29
	movq	-16(%rbp), %rdi
	callq	fclose
	movl	%eax, -60(%rbp)         # 4-byte Spill
.LBB45_19:                              # %if.end.31
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end45:
	.size	print_ppm, .Lfunc_end45-print_ppm
	.cfi_endproc

	.align	16, 0x90
	.type	ideal_samples,@function
ideal_samples:                          # @ideal_samples
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp152:
	.cfi_def_cfa_offset 16
.Ltmp153:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp154:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	$0, -24(%rbp)
	movl	$0, -4(%rbp)
.LBB46_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB46_5 Depth 2
	cmpl	$256, -4(%rbp)          # imm = 0x100
	jge	.LBB46_15
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB46_1 Depth=1
	movabsq	$g_lum_tab, %rax
	movslq	-4(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	cmpq	$0, 8(%rax)
	jne	.LBB46_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB46_1 Depth=1
	jmp	.LBB46_14
.LBB46_4:                               # %if.end
                                        #   in Loop: Header=BB46_1 Depth=1
	movl	-4(%rbp), %edi
	callq	sort_color
	movabsq	$g_lum_tab, %rax
	movslq	-4(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movw	(%rax), %dx
	movw	%dx, -32(%rbp)
	movb	2(%rax), %sil
	movb	%sil, -30(%rbp)
	movl	$0, -40(%rbp)
.LBB46_5:                               # %for.cond.9
                                        #   Parent Loop BB46_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -16(%rbp)
	je	.LBB46_13
# BB#6:                                 # %for.body.11
                                        #   in Loop: Header=BB46_5 Depth=2
	movl	$0, -36(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$0, 4(%rax)
	jle	.LBB46_10
# BB#7:                                 # %if.then.13
                                        #   in Loop: Header=BB46_5 Depth=2
	leaq	-36(%rbp), %rcx
	leaq	-28(%rbp), %rdx
	movq	-16(%rbp), %rax
	movw	(%rax), %si
	movw	%si, -28(%rbp)
	movb	2(%rax), %dil
	movb	%dil, -26(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	cnt_same_sample_colortones
	movl	-36(%rbp), %r8d
	cmpl	-40(%rbp), %r8d
	jle	.LBB46_9
# BB#8:                                 # %if.then.19
                                        #   in Loop: Header=BB46_5 Depth=2
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	movw	-28(%rbp), %cx
	movw	%cx, -32(%rbp)
	movb	-26(%rbp), %dl
	movb	%dl, -30(%rbp)
.LBB46_9:                               # %if.end.22
                                        #   in Loop: Header=BB46_5 Depth=2
	jmp	.LBB46_11
.LBB46_10:                              # %if.else
                                        #   in Loop: Header=BB46_5 Depth=2
	movq	-16(%rbp), %rax
	movl	4(%rax), %edi
	callq	abs
	movq	-16(%rbp), %rcx
	movl	%eax, 4(%rcx)
.LBB46_11:                              # %if.end.25
                                        #   in Loop: Header=BB46_5 Depth=2
	jmp	.LBB46_12
.LBB46_12:                              # %for.inc
                                        #   in Loop: Header=BB46_5 Depth=2
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB46_5
.LBB46_13:                              # %for.end
                                        #   in Loop: Header=BB46_1 Depth=1
	movabsq	$g_sample_color_tab, %rax
	imull	$3, -4(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movw	-32(%rbp), %si
	movw	%si, (%rax)
	movb	-30(%rbp), %dil
	movb	%dil, 2(%rax)
.LBB46_14:                              # %for.inc.29
                                        #   in Loop: Header=BB46_1 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB46_1
.LBB46_15:                              # %for.end.30
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end46:
	.size	ideal_samples, .Lfunc_end46-ideal_samples
	.cfi_endproc

	.align	16, 0x90
	.type	print_transtable,@function
print_transtable:                       # @print_transtable
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp155:
	.cfi_def_cfa_offset 16
.Ltmp156:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp157:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.LBB47_2
# BB#1:                                 # %if.then
	jmp	.LBB47_6
.LBB47_2:                               # %if.end
	movabsq	$.L.str.107, %rsi
	movq	-8(%rbp), %rdi
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.113, %rsi
	movq	-8(%rbp), %rdi
	movl	%eax, -16(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.107, %rsi
	movq	-8(%rbp), %rdi
	movl	%eax, -20(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movl	$0, -12(%rbp)
	movl	%eax, -24(%rbp)         # 4-byte Spill
.LBB47_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$256, -12(%rbp)         # imm = 0x100
	jge	.LBB47_6
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB47_3 Depth=1
	movabsq	$.L.str.114, %rsi
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %edx
	movslq	-12(%rbp), %rax
	movzbl	g_lvl_trans_tab(,%rax), %ecx
	movslq	-12(%rbp), %rax
	movzbl	g_out_trans_tab(,%rax), %r8d
	movb	$0, %al
	callq	fprintf
	movl	%eax, -28(%rbp)         # 4-byte Spill
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB47_3 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB47_3
.LBB47_6:                               # %for.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end47:
	.size	print_transtable, .Lfunc_end47-print_transtable
	.cfi_endproc

	.align	16, 0x90
	.type	print_color_list,@function
print_color_list:                       # @print_color_list
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp158:
	.cfi_def_cfa_offset 16
.Ltmp159:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp160:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.LBB48_2
# BB#1:                                 # %if.then
	jmp	.LBB48_5
.LBB48_2:                               # %if.end
	jmp	.LBB48_3
.LBB48_3:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB48_5
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB48_3 Depth=1
	movabsq	$.L.str.110, %rsi
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-16(%rbp), %rax
	movzbl	1(%rax), %ecx
	movq	-16(%rbp), %rax
	movzbl	2(%rax), %r8d
	movq	-16(%rbp), %rax
	movzbl	3(%rax), %r9d
	movq	-16(%rbp), %rax
	movl	4(%rax), %r10d
	movl	%r10d, (%rsp)
	movb	$0, %al
	callq	fprintf
	movq	-16(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	%rsi, -16(%rbp)
	movl	%eax, -20(%rbp)         # 4-byte Spill
	jmp	.LBB48_3
.LBB48_5:                               # %while.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end48:
	.size	print_color_list, .Lfunc_end48-print_color_list
	.cfi_endproc

	.align	16, 0x90
	.type	sort_color,@function
sort_color:                             # @sort_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp161:
	.cfi_def_cfa_offset 16
.Ltmp162:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp163:
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movq	$0, -40(%rbp)
	movl	$0, -48(%rbp)
.LBB49_1:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB49_3 Depth 2
	movabsq	$g_lum_tab, %rax
	movslq	-4(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	cmpq	$0, 8(%rax)
	je	.LBB49_16
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB49_1 Depth=1
	movabsq	$g_lum_tab, %rax
	movl	-48(%rbp), %ecx
	movl	%ecx, -44(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movslq	-4(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
.LBB49_3:                               # %for.cond
                                        #   Parent Loop BB49_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -16(%rbp)
	je	.LBB49_15
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB49_3 Depth=2
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movl	4(%rax), %ecx
	cmpl	-44(%rbp), %ecx
	jle	.LBB49_9
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB49_3 Depth=2
	movq	-16(%rbp), %rax
	movl	4(%rax), %ecx
	cmpl	-48(%rbp), %ecx
	jl	.LBB49_7
# BB#6:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB49_3 Depth=2
	movl	-44(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jne	.LBB49_8
.LBB49_7:                               # %if.then.10
                                        #   in Loop: Header=BB49_3 Depth=2
	movq	-16(%rbp), %rax
	movl	4(%rax), %ecx
	movl	%ecx, -48(%rbp)
.LBB49_8:                               # %if.end
                                        #   in Loop: Header=BB49_3 Depth=2
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB49_13
.LBB49_9:                               # %if.else
                                        #   in Loop: Header=BB49_3 Depth=2
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB49_11
# BB#10:                                # %if.then.14
                                        #   in Loop: Header=BB49_3 Depth=2
	movabsq	$g_lum_tab, %rax
	movq	-24(%rbp), %rcx
	movslq	-4(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rax
	movq	%rcx, 8(%rax)
	jmp	.LBB49_12
.LBB49_11:                              # %if.else.18
                                        #   in Loop: Header=BB49_3 Depth=2
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 8(%rcx)
.LBB49_12:                              # %if.end.20
                                        #   in Loop: Header=BB49_3 Depth=2
	jmp	.LBB49_13
.LBB49_13:                              # %if.end.21
                                        #   in Loop: Header=BB49_3 Depth=2
	jmp	.LBB49_14
.LBB49_14:                              # %for.inc
                                        #   in Loop: Header=BB49_3 Depth=2
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB49_3
.LBB49_15:                              # %for.end
                                        #   in Loop: Header=BB49_1 Depth=1
	jmp	.LBB49_1
.LBB49_16:                              # %while.end
	movabsq	$g_lum_tab, %rax
	movq	-40(%rbp), %rcx
	movslq	-4(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rax
	movq	%rcx, 8(%rax)
	popq	%rbp
	retq
.Lfunc_end49:
	.size	sort_color, .Lfunc_end49-sort_color
	.cfi_endproc

	.align	16, 0x90
	.type	cnt_same_sample_colortones,@function
cnt_same_sample_colortones:             # @cnt_same_sample_colortones
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp164:
	.cfi_def_cfa_offset 16
.Ltmp165:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp166:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	$0, -40(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB50_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movb	(%rax), %cl
	movq	-8(%rbp), %rax
	movb	1(%rax), %dl
	movq	-8(%rbp), %rax
	movb	2(%rax), %sil
	movq	-16(%rbp), %rax
	movb	(%rax), %dil
	movq	-16(%rbp), %rax
	movb	1(%rax), %r8b
	movq	-16(%rbp), %rax
	movzbl	%cl, %r9d
	movb	%dil, -49(%rbp)         # 1-byte Spill
	movl	%r9d, %edi
	movzbl	%dl, %r9d
	movb	%sil, -50(%rbp)         # 1-byte Spill
	movl	%r9d, %esi
	movb	-50(%rbp), %cl          # 1-byte Reload
	movzbl	%cl, %edx
	movb	-49(%rbp), %r10b        # 1-byte Reload
	movzbl	%r10b, %ecx
	movzbl	%r8b, %r8d
	movzbl	2(%rax), %r9d
	callq	color_error
	movl	%eax, -40(%rbp)
.LBB50_2:                               # %if.end
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
.LBB50_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB50_14
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB50_3 Depth=1
	movq	-48(%rbp), %rax
	cmpl	$1, 4(%rax)
	jge	.LBB50_6
# BB#5:                                 # %if.then.10
                                        #   in Loop: Header=BB50_3 Depth=1
	jmp	.LBB50_13
.LBB50_6:                               # %if.end.11
                                        #   in Loop: Header=BB50_3 Depth=1
	movq	-8(%rbp), %rax
	movb	(%rax), %cl
	movq	-8(%rbp), %rax
	movb	1(%rax), %dl
	movq	-8(%rbp), %rax
	movb	2(%rax), %sil
	movq	-48(%rbp), %rax
	movb	(%rax), %dil
	movq	-48(%rbp), %rax
	movb	1(%rax), %r8b
	movq	-48(%rbp), %rax
	movzbl	%cl, %r9d
	movb	%dil, -51(%rbp)         # 1-byte Spill
	movl	%r9d, %edi
	movzbl	%dl, %r9d
	movb	%sil, -52(%rbp)         # 1-byte Spill
	movl	%r9d, %esi
	movb	-52(%rbp), %cl          # 1-byte Reload
	movzbl	%cl, %edx
	movb	-51(%rbp), %r10b        # 1-byte Reload
	movzbl	%r10b, %ecx
	movzbl	%r8b, %r8d
	movzbl	2(%rax), %r9d
	callq	color_error
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %eax
	cmpl	g_tol_col_err, %eax
	jg	.LBB50_12
# BB#7:                                 # %if.then.26
                                        #   in Loop: Header=BB50_3 Depth=1
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	movl	4(%rcx), %edx
	movq	-32(%rbp), %rcx
	addl	(%rcx), %edx
	movl	%edx, (%rcx)
	movq	-48(%rbp), %rcx
	subl	4(%rcx), %eax
	movq	-48(%rbp), %rcx
	movl	%eax, 4(%rcx)
	cmpq	$0, -16(%rbp)
	je	.LBB50_11
# BB#8:                                 # %if.then.31
                                        #   in Loop: Header=BB50_3 Depth=1
	movq	-48(%rbp), %rax
	movb	(%rax), %cl
	movq	-48(%rbp), %rax
	movb	1(%rax), %dl
	movq	-48(%rbp), %rax
	movb	2(%rax), %sil
	movq	-16(%rbp), %rax
	movb	(%rax), %dil
	movq	-16(%rbp), %rax
	movb	1(%rax), %r8b
	movq	-16(%rbp), %rax
	movzbl	%cl, %r9d
	movb	%dil, -53(%rbp)         # 1-byte Spill
	movl	%r9d, %edi
	movzbl	%dl, %r9d
	movb	%sil, -54(%rbp)         # 1-byte Spill
	movl	%r9d, %esi
	movb	-54(%rbp), %cl          # 1-byte Reload
	movzbl	%cl, %edx
	movb	-53(%rbp), %r10b        # 1-byte Reload
	movzbl	%r10b, %ecx
	movzbl	%r8b, %r8d
	movzbl	2(%rax), %r9d
	callq	color_error
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jge	.LBB50_10
# BB#9:                                 # %if.then.43
                                        #   in Loop: Header=BB50_3 Depth=1
	movq	-24(%rbp), %rax
	movq	-48(%rbp), %rcx
	movw	(%rcx), %dx
	movw	%dx, (%rax)
	movb	2(%rcx), %sil
	movb	%sil, 2(%rax)
	movl	-36(%rbp), %edi
	movl	%edi, -40(%rbp)
.LBB50_10:                              # %if.end.46
                                        #   in Loop: Header=BB50_3 Depth=1
	jmp	.LBB50_11
.LBB50_11:                              # %if.end.47
                                        #   in Loop: Header=BB50_3 Depth=1
	jmp	.LBB50_12
.LBB50_12:                              # %if.end.48
                                        #   in Loop: Header=BB50_3 Depth=1
	jmp	.LBB50_13
.LBB50_13:                              # %for.inc
                                        #   in Loop: Header=BB50_3 Depth=1
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB50_3
.LBB50_14:                              # %for.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end50:
	.size	cnt_same_sample_colortones, .Lfunc_end50-cnt_same_sample_colortones
	.cfi_endproc

	.align	16, 0x90
	.type	colorize_func,@function
colorize_func:                          # @colorize_func
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp167:
	.cfi_def_cfa_offset 16
.Ltmp168:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp169:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rcx
	movl	%ecx, %edx
	movl	%edx, -36(%rbp)
	cmpl	$0, -36(%rbp)
	je	.LBB51_2
# BB#1:                                 # %if.then
	movl	-20(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -20(%rbp)
	movslq	-20(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movslq	-20(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movb	%sil, (%rdx,%rcx)
.LBB51_2:                               # %if.end
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movl	-20(%rbp), %edx
	callq	remap_pixel
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end51:
	.size	colorize_func, .Lfunc_end51-colorize_func
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
	.long	16                      # 0x10
	.zero	4
	.quad	.L.str.6
	.quad	.L.str.7
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.8
	.quad	.L.str.9
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.10
	.quad	.L.str.11
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.12
	.quad	.L.str.13
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.14
	.quad	.L.str.15
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.16
	.quad	.L.str.17
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.18
	.quad	.L.str.19
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.20
	.quad	.L.str.21
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.22
	.quad	.L.str.23
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.24
	.quad	.L.str.25
	.size	query.args, 312

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
	.asciz	"dst-drawable"
	.size	.L.str.4, 13

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"The drawable to be colorized (Type GRAY* or RGB*)"
	.size	.L.str.5, 50

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"sample-drawable"
	.size	.L.str.6, 16

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Sample drawable (should be of Type RGB or RGBA)"
	.size	.L.str.7, 48

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"hold-inten"
	.size	.L.str.8, 11

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"hold brightness intensity levels (TRUE, FALSE)"
	.size	.L.str.9, 47

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"orig-inten"
	.size	.L.str.10, 11

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"TRUE: hold brightness of original intensity levels. FALSE: Hold Intensity of input levels"
	.size	.L.str.11, 90

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"rnd-subcolors"
	.size	.L.str.12, 14

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"TRUE: Use all subcolors of same intensity, FALSE: use only one color per intensity"
	.size	.L.str.13, 83

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"guess-missing"
	.size	.L.str.14, 14

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"TRUE: guess samplecolors for the missing intensity values FALSE: use only colors found in the sample"
	.size	.L.str.15, 101

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"in-low"
	.size	.L.str.16, 7

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"intensity of lowest input (0 <= in_low <= 254)"
	.size	.L.str.17, 47

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"in-high"
	.size	.L.str.18, 8

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"intensity of highest input (1 <= in_high <= 255)"
	.size	.L.str.19, 49

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"gamma"
	.size	.L.str.20, 6

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"gamma correction factor (0.1 <= gamma <= 10) where 1.0 is linear"
	.size	.L.str.21, 65

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"out-low"
	.size	.L.str.22, 8

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"lowest sample color intensity (0 <= out_low <= 254)"
	.size	.L.str.23, 52

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"out-high"
	.size	.L.str.24, 9

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"highest sample color intensity (1 <= out_high <= 255)"
	.size	.L.str.25, 54

	.type	query.help_string,@object # @query.help_string
	.data
	.align	8
query.help_string:
	.quad	.L.str.26
	.size	query.help_string, 8

	.type	.L.str.26,@object       # @.str.26
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.26:
	.asciz	"This plug-in colorizes the contents of the specified (gray) layer with the help of a  sample (color) layer. It analyzes all colors in the sample layer. The sample colors are sorted by brightness (== intentisty) and amount and stored in a sample colortable (where brightness is the index) The pixels of the destination layer are remapped with the help of the sample colortable. If use_subcolors is TRUE, the remapping process uses all sample colors of the corresponding brightness-intensity and distributes the subcolors according to their amount in the sample (If the sample has 5 green, 3 yellow, and 1 red pixel of the  intensity value 105, the destination pixels at intensity value 105 are randomly painted in green, yellow and red in a relation of 5:3:1 If use_subcolors is FALSE only one sample color per intensity is used. (green will be used in this example) The brightness intensity value is transformed at the remapping process according to the levels: out_lo, out_hi, in_lo, in_high and gamma The in_low / in_high levels specify an initial mapping of the intensity. The gamma value determines how intensities are interpolated between the in_lo and in_high levels. A gamma value of 1.0 results in linear interpolation. Higher gamma values results in more high-level intensities Lower gamma values results in more low-level intensities The out_low/out_high levels constrain the resulting intensity index The intensity index is used to pick the corresponding color in the sample colortable. If hold_inten is FALSE the picked color is used 1:1 as resulting remap_color. If hold_inten is TRUE The brightness of the picked color is adjusted back to the origial intensity value (only hue and saturation are taken from the picked sample color) (or to the input level, if orig_inten is set FALSE) Works on both Grayscale and RGB image with/without alpha channel. (the image with the dst_drawable is converted to RGB if necessary) The sample_drawable should be of type RGB or RGBA"
	.size	.L.str.26, 1981

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"plug-in-sample-colorize"
	.size	.L.str.27, 24

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"Colorize image using a sample image as a guide"
	.size	.L.str.28, 47

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"Wolfgang Hofer"
	.size	.L.str.29, 15

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"hof@hotbot.com"
	.size	.L.str.30, 15

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"02/2000"
	.size	.L.str.31, 8

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"_Sample Colorize..."
	.size	.L.str.32, 20

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"RGB*, GRAY*"
	.size	.L.str.33, 12

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"<Image>/Colors/Map"
	.size	.L.str.34, 19

	.type	run.values,@object      # @run.values
	.local	run.values
	.comm	run.values,40,16
	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"gimp20-std-plug-ins"
	.size	.L.str.35, 20

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"UTF-8"
	.size	.L.str.36, 6

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"SAMPLE_COLORIZE_DEBUG"
	.size	.L.str.37, 22

	.type	g_Sdebug,@object        # @g_Sdebug
	.local	g_Sdebug
	.comm	g_Sdebug,4,4
	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"sample colorize run\n"
	.size	.L.str.38, 21

	.type	g_show_progress,@object # @g_show_progress
	.local	g_show_progress
	.comm	g_show_progress,4,4
	.type	g_values,@object        # @g_values
	.data
	.align	4
g_values:
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	255                     # 0xff
	.long	1065353216              # float 1
	.long	0                       # 0x0
	.long	255                     # 0xff
	.long	1085276160              # float 5.5
	.size	g_values, 48

	.type	g_lum_tab,@object       # @g_lum_tab
	.local	g_lum_tab
	.comm	g_lum_tab,4096,16
	.type	g_lvl_trans_tab,@object # @g_lvl_trans_tab
	.local	g_lvl_trans_tab
	.comm	g_lvl_trans_tab,256,16
	.type	g_out_trans_tab,@object # @g_out_trans_tab
	.local	g_out_trans_tab
	.comm	g_out_trans_tab,256,16
	.type	g_sample_color_tab,@object # @g_sample_color_tab
	.local	g_sample_color_tab
	.comm	g_sample_color_tab,768,16
	.type	.L.str.39,@object       # @.str.39
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.39:
	.asciz	"smp_dialog START\n"
	.size	.L.str.39, 18

	.type	g_di,@object            # @g_di
	.local	g_di
	.comm	g_di,152,8
	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"sample-colorize"
	.size	.L.str.40, 16

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"Sample Colorize"
	.size	.L.str.41, 16

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"gimp-sample-colorize"
	.size	.L.str.42, 21

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"gimp-reset"
	.size	.L.str.43, 11

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"Get _Sample Colors"
	.size	.L.str.44, 19

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"gtk-close"
	.size	.L.str.45, 10

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"gtk-apply"
	.size	.L.str.46, 10

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"response"
	.size	.L.str.47, 9

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"Destination:"
	.size	.L.str.48, 13

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"Sample:"
	.size	.L.str.49, 8

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"From reverse gradient"
	.size	.L.str.50, 22

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"gimp-tool-blend"
	.size	.L.str.51, 16

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"From gradient"
	.size	.L.str.52, 14

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"Show selection"
	.size	.L.str.53, 15

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"toggled"
	.size	.L.str.54, 8

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"Show color"
	.size	.L.str.55, 11

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"event"
	.size	.L.str.56, 6

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"Input levels:"
	.size	.L.str.57, 14

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"value-changed"
	.size	.L.str.58, 14

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"Output levels:"
	.size	.L.str.59, 15

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"Hold intensity"
	.size	.L.str.60, 15

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"Original intensity"
	.size	.L.str.61, 19

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"Use subcolors"
	.size	.L.str.62, 14

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"Smooth samples"
	.size	.L.str.63, 15

	.type	g_dst_preview_buffer,@object # @g_dst_preview_buffer
	.local	g_dst_preview_buffer
	.comm	g_dst_preview_buffer,262144,16
	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"EVENT: GDK_EXPOSE\n"
	.size	.L.str.64, 19

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"EVENT: GDK_BUTTON_PRESS\n"
	.size	.L.str.65, 25

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"EVENT: GDK_BUTTON_RELEASE\n"
	.size	.L.str.66, 27

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"EVENT: GDK_MOTION_NOTIFY\n"
	.size	.L.str.67, 26

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"EVENT: default\n"
	.size	.L.str.68, 16

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"EVENT: ** update **\n"
	.size	.L.str.69, 21

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"OUT_EVENT: GDK_EXPOSE\n"
	.size	.L.str.70, 23

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"OUT_EVENT: GDK_BUTTON_PRESS\n"
	.size	.L.str.71, 29

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"OUT_EVENT: GDK_BUTTON_RELEASE\n"
	.size	.L.str.72, 31

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"OUT_EVENT: GDK_MOTION_NOTIFY\n"
	.size	.L.str.73, 30

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"OUT_EVENT: default\n"
	.size	.L.str.74, 20

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"OUT_EVENT: ** update **\n"
	.size	.L.str.75, 25

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"UPD PREVIEWS   ID:%d ENABLE_UPD:%d\n"
	.size	.L.str.76, 36

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"sample colorize: unknown layer_id %d (Image closed?)\n"
	.size	.L.str.77, 54

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"\np_init_gdrw: drawable %p  ID: %d\n"
	.size	.L.str.78, 35

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"init_gdrw: image_id %d sel_channel_id: %d\n"
	.size	.L.str.79, 43

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"init_gdrw: BOUNDS     x1: %d y1: %d x2:%d y2: %d\n"
	.size	.L.str.80, 50

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"init_gdrw: OFFS       x: %d y: %d\n"
	.size	.L.str.81, 35

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"init_gdrw: SEL_BOUNDS x1: %d y1: %d x2:%d y2: %d\n"
	.size	.L.str.82, 50

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"init_gdrw: SEL_OFFS   x: %d y: %d\n"
	.size	.L.str.83, 35

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"init_gdrw: SEL_DELTA  x: %d y: %d\n"
	.size	.L.str.84, 35

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"levels_update: update reques %x\n"
	.size	.L.str.85, 33

	.type	g_tol_col_err,@object   # @g_tol_col_err
	.local	g_tol_col_err
	.comm	g_tol_col_err,4,4
	.type	g_max_col_err,@object   # @g_max_col_err
	.local	g_max_col_err
	.comm	g_max_col_err,4,4
	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"sample_colorize.values"
	.size	.L.str.86, 23

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"r"
	.size	.L.str.87, 2

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"%f"
	.size	.L.str.88, 3

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"g_values.tol_col_err    :%f\n"
	.size	.L.str.89, 29

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"Sample analyze"
	.size	.L.str.90, 15

	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	"sample_colors.dump"
	.size	.L.str.91, 19

	.type	.L.str.92,@object       # @.str.92
.L.str.92:
	.asciz	"w"
	.size	.L.str.92, 2

	.type	.L.str.93,@object       # @.str.93
.L.str.93:
	.asciz	"ROWS: %d - %d  COLS: %d - %d\n"
	.size	.L.str.93, 30

	.type	.L.str.94,@object       # @.str.94
.L.str.94:
	.asciz	"sample_color_all.ppm"
	.size	.L.str.94, 21

	.type	.L.str.95,@object       # @.str.95
.L.str.95:
	.asciz	"sample_color_2.ppm"
	.size	.L.str.95, 19

	.type	.L.str.96,@object       # @.str.96
.L.str.96:
	.asciz	"Error: Source sample has no visible Pixel\n"
	.size	.L.str.96, 43

	.type	.L.str.97,@object       # @.str.97
.L.str.97:
	.asciz	"sample_colorize: params\n"
	.size	.L.str.97, 25

	.type	.L.str.98,@object       # @.str.98
.L.str.98:
	.asciz	"g_values.hold_inten     :%d\n"
	.size	.L.str.98, 29

	.type	.L.str.99,@object       # @.str.99
.L.str.99:
	.asciz	"g_values.orig_inten     :%d\n"
	.size	.L.str.99, 29

	.type	.L.str.100,@object      # @.str.100
.L.str.100:
	.asciz	"g_values.rnd_subcolors  :%d\n"
	.size	.L.str.100, 29

	.type	.L.str.101,@object      # @.str.101
.L.str.101:
	.asciz	"g_values.guess_missing  :%d\n"
	.size	.L.str.101, 29

	.type	.L.str.102,@object      # @.str.102
.L.str.102:
	.asciz	"g_values.lvl_in_min     :%d\n"
	.size	.L.str.102, 29

	.type	.L.str.103,@object      # @.str.103
.L.str.103:
	.asciz	"g_values.lvl_in_max     :%d\n"
	.size	.L.str.103, 29

	.type	.L.str.104,@object      # @.str.104
.L.str.104:
	.asciz	"g_values.lvl_in_gamma   :%f\n"
	.size	.L.str.104, 29

	.type	.L.str.105,@object      # @.str.105
.L.str.105:
	.asciz	"g_values.lvl_out_min    :%d\n"
	.size	.L.str.105, 29

	.type	.L.str.106,@object      # @.str.106
.L.str.106:
	.asciz	"g_values.lvl_out_max    :%d\n"
	.size	.L.str.106, 29

	.type	.L.str.107,@object      # @.str.107
.L.str.107:
	.asciz	"---------------------------\n"
	.size	.L.str.107, 29

	.type	.L.str.108,@object      # @.str.108
.L.str.108:
	.asciz	"print_table\n"
	.size	.L.str.108, 13

	.type	.L.str.109,@object      # @.str.109
.L.str.109:
	.asciz	"LUM [%03d]  pixcount:%d\n"
	.size	.L.str.109, 25

	.type	.L.str.110,@object      # @.str.110
.L.str.110:
	.asciz	"  RGBA: %03d %03d %03d %03d  sum: [%d]\n"
	.size	.L.str.110, 40

	.type	.L.str.111,@object      # @.str.111
.L.str.111:
	.asciz	"P3\n# CREATOR: Gimp sample coloros\n256 256\n255\n"
	.size	.L.str.111, 47

	.type	.L.str.112,@object      # @.str.112
.L.str.112:
	.asciz	"%d %d %d\n"
	.size	.L.str.112, 10

	.type	.L.str.113,@object      # @.str.113
.L.str.113:
	.asciz	"print_transtable\n"
	.size	.L.str.113, 18

	.type	.L.str.114,@object      # @.str.114
.L.str.114:
	.asciz	"LVL_TRANS [%03d]  in_lvl: %3d  out_lvl: %3d\n"
	.size	.L.str.114, 45

	.type	.L.str.115,@object      # @.str.115
.L.str.115:
	.asciz	"Remap colorized"
	.size	.L.str.115, 16


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
