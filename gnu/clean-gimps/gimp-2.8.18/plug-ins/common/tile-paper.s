	.text
	.file	"tile-paper.bc"
	.align	16, 0x90
	.type	plugin_query,@function
plugin_query:                           # @plugin_query
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
	callq	gettext
	movabsq	$.L.str.22, %rdi
	movabsq	$.L.str.23, %rsi
	movabsq	$.L.str.24, %rdx
	movabsq	$.L.str.25, %rcx
	movabsq	$.L.str.26, %r8
	movabsq	$.L.str.28, %r9
	movabsq	$.L.str.29, %r10
	movl	$1, %r11d
	movl	$11, %ebx
	xorl	%r14d, %r14d
	movabsq	$plugin_query.args, %r15
	xorl	%r12d, %r12d
	movl	%r12d, %r13d
	movq	%r9, -48(%rbp)          # 8-byte Spill
	movq	%rax, %r9
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movq	%r10, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$11, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%r15, 40(%rsp)
	movq	$0, 48(%rsp)
	movq	%r13, -56(%rbp)         # 8-byte Spill
	movl	%r11d, -60(%rbp)        # 4-byte Spill
	movl	%r14d, -64(%rbp)        # 4-byte Spill
	movl	%ebx, -68(%rbp)         # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.22, %rdi
	movabsq	$.L.str.30, %rsi
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
	.size	plugin_query, .Lfunc_end0-plugin_query
	.cfi_endproc

	.align	16, 0x90
	.type	plugin_run,@function
plugin_run:                             # @plugin_run
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
	movl	$3, -44(%rbp)
# BB#1:                                 # %do.body
	callq	gimp_locale_directory
	movabsq	$.L.str.31, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.31, %rdi
	movabsq	$.L.str.32, %rsi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.31, %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	textdomain
	movq	%rax, -72(%rbp)         # 8-byte Spill
# BB#2:                                 # %do.end
	movl	$0, p+120
	movq	-24(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, p+116
	movq	-24(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, p+72
	movq	-24(%rbp), %rax
	movl	88(%rax), %edi
	callq	gimp_drawable_get
	movq	%rax, p+80
	movq	p+80, %rax
	movl	(%rax), %edi
	callq	gimp_drawable_has_alpha
	movl	%eax, p+88
	movq	p+80, %rdx
	movl	(%rdx), %edi
	callq	gimp_drawable_is_rgb
	cmpl	$0, %eax
	je	.LBB1_11
# BB#3:                                 # %if.then
	movl	p+116(%rip), %eax
	testl	%eax, %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
	je	.LBB1_4
	jmp	.LBB1_18
.LBB1_18:                               # %if.then
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -80(%rbp)         # 4-byte Spill
	je	.LBB1_5
	jmp	.LBB1_19
.LBB1_19:                               # %if.then
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	je	.LBB1_9
	jmp	.LBB1_10
.LBB1_4:                                # %sw.bb
	callq	params_load_from_gimp
	callq	open_dialog
	jmp	.LBB1_10
.LBB1_5:                                # %sw.bb.12
	cmpl	$11, -12(%rbp)
	jne	.LBB1_7
# BB#6:                                 # %if.then.13
	movq	-24(%rbp), %rax
	movl	128(%rax), %ecx
	movl	%ecx, p
	movq	-24(%rbp), %rax
	movl	128(%rax), %ecx
	movl	%ecx, p+4
	movq	p+80, %rax
	movl	4(%rax), %eax
	xorl	%edx, %edx
	divl	p
	movl	%eax, p+8
	movq	p+80, %rsi
	movl	8(%rsi), %eax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	divl	p+4
	movl	%eax, p+12
	movq	-24(%rbp), %rsi
	movsd	168(%rsi), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, p+16
	movq	-24(%rbp), %rsi
	movl	208(%rsi), %eax
	movl	%eax, p+24
	movq	-24(%rbp), %rsi
	movl	248(%rsi), %eax
	movl	%eax, p+32
	movq	-24(%rbp), %rsi
	movl	288(%rsi), %eax
	movl	%eax, p+28
	movq	-24(%rbp), %rsi
	movl	328(%rsi), %eax
	movl	%eax, p+36
	movq	-24(%rbp), %rsi
	movq	368(%rsi), %rdi
	movq	%rdi, p+40
	movq	376(%rsi), %rdi
	movq	%rdi, p+48
	movq	384(%rsi), %rdi
	movq	%rdi, p+56
	movq	392(%rsi), %rsi
	movq	%rsi, p+64
	movl	$1, p+120
	jmp	.LBB1_8
.LBB1_7:                                # %if.else
	movl	$1, -44(%rbp)
.LBB1_8:                                # %if.end
	jmp	.LBB1_10
.LBB1_9:                                # %sw.bb.37
	callq	params_load_from_gimp
	movl	$1, p+120
.LBB1_10:                               # %sw.epilog
	jmp	.LBB1_12
.LBB1_11:                               # %if.else.38
	movl	$0, -44(%rbp)
.LBB1_12:                               # %if.end.39
	cmpl	$3, -44(%rbp)
	jne	.LBB1_17
# BB#13:                                # %land.lhs.true
	cmpl	$0, p+120
	je	.LBB1_17
# BB#14:                                # %if.then.42
	callq	params_save_to_gimp
	callq	filter
	cmpl	$1, p+116
	je	.LBB1_16
# BB#15:                                # %if.then.44
	callq	gimp_displays_flush
	movl	%eax, -88(%rbp)         # 4-byte Spill
.LBB1_16:                               # %if.end.46
	jmp	.LBB1_17
.LBB1_17:                               # %if.end.47
	movq	p+80, %rdi
	callq	gimp_drawable_detach
	movabsq	$plugin_run.return_value, %rdi
	movl	$21, plugin_run.return_value
	movl	-44(%rbp), %eax
	movl	%eax, plugin_run.return_value+8
	movq	-32(%rbp), %rcx
	movl	$1, (%rcx)
	movq	-40(%rbp), %rcx
	movq	%rdi, (%rcx)
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	plugin_run, .Lfunc_end1-plugin_run
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
	.text
	.align	16, 0x90
	.type	params_load_from_gimp,@function
params_load_from_gimp:                  # @params_load_from_gimp
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
	subq	$16, %rsp
	movabsq	$.L.str.22, %rdi
	movabsq	$p, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	xorl	%ecx, %ecx
	cmpl	p+8, %ecx
	movl	%eax, -4(%rbp)          # 4-byte Spill
	jge	.LBB3_4
# BB#1:                                 # %if.then
	xorl	%eax, %eax
	movq	p+80, %rcx
	movl	4(%rcx), %edx
	movl	%eax, -8(%rbp)          # 4-byte Spill
	movl	%edx, %eax
	xorl	%edx, %edx
	divl	p+8
	movl	%eax, p
	movl	-8(%rbp), %eax          # 4-byte Reload
	cmpl	p, %eax
	jge	.LBB3_3
# BB#2:                                 # %if.then.2
	movq	p+80, %rax
	movl	8(%rax), %eax
	xorl	%edx, %edx
	divl	p+4
	movl	%eax, p+12
.LBB3_3:                                # %if.end
	jmp	.LBB3_4
.LBB3_4:                                # %if.end.4
	cmpl	$0, p
	jle	.LBB3_8
# BB#5:                                 # %lor.lhs.false
	cmpl	$0, p+4
	jle	.LBB3_8
# BB#6:                                 # %lor.lhs.false.7
	cmpl	$0, p+8
	jle	.LBB3_8
# BB#7:                                 # %lor.lhs.false.9
	cmpl	$0, p+12
	jg	.LBB3_9
.LBB3_8:                                # %if.then.11
	movq	p+80, %rax
	movl	4(%rax), %ecx
	movl	%ecx, p
	movq	p+80, %rax
	movl	8(%rax), %ecx
	movl	%ecx, p+4
	movq	p+80, %rax
	movl	4(%rax), %eax
	xorl	%edx, %edx
	divl	p
	movl	%eax, p+8
	movq	p+80, %rsi
	movl	8(%rsi), %eax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	divl	p+4
	movl	%eax, p+12
.LBB3_9:                                # %if.end.18
	cmpl	$0, p+88
	jne	.LBB3_13
# BB#10:                                # %if.then.19
	cmpl	$0, p+36
	jne	.LBB3_12
# BB#11:                                # %if.then.21
	movl	$1, p+36
.LBB3_12:                               # %if.end.22
	movabsq	$p, %rax
	addq	$40, %rax
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	gimp_rgb_set_alpha
.LBB3_13:                               # %if.end.23
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	params_load_from_gimp, .Lfunc_end3-params_load_from_gimp
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI4_0:
	.long	1056964608              # float 0.5
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_1:
	.quad	4607182418800017408     # double 1
.LCPI4_2:
	.quad	4617315517961601024     # double 5
.LCPI4_3:
	.quad	4636737291354636288     # double 100
.LCPI4_4:
	.quad	4621819117588971520     # double 10
	.text
	.align	16, 0x90
	.type	open_dialog,@function
open_dialog:                            # @open_dialog
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
	subq	$1000, %rsp             # imm = 0x3E8
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
	movabsq	$w, %rax
	addq	$24, %rax
	movsd	.LCPI4_1, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI4_2, %xmm4         # xmm4 = mem[0],zero
	xorps	%xmm5, %xmm5
	xorl	%esi, %esi
	movl	$.L.str.33, %ecx
	movl	%ecx, %edi
	movl	$1, %ecx
	movl	%esi, -108(%rbp)        # 4-byte Spill
	movl	%ecx, %esi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movsd	%xmm0, -128(%rbp)       # 8-byte Spill
	movsd	%xmm4, -136(%rbp)       # 8-byte Spill
	movsd	%xmm5, -144(%rbp)       # 8-byte Spill
	movl	%ecx, -148(%rbp)        # 4-byte Spill
	callq	gimp_ui_init
	movl	$.L.str.34, %ecx
	movl	%ecx, %edi
	callq	gettext
	movq	%rsp, %rdi
	movq	$0, 32(%rdi)
	movl	$-5, 24(%rdi)
	movq	$.L.str.37, 16(%rdi)
	movl	$-6, 8(%rdi)
	movq	$.L.str.36, (%rdi)
	movl	$.L.str.35, %ecx
	movl	%ecx, %esi
	movl	$gimp_standard_help_func, %ecx
	movl	%ecx, %r8d
	movl	$.L.str.22, %ecx
	movl	%ecx, %r9d
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movb	%cl, %dl
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-160(%rbp), %rax        # 8-byte Reload
	movb	%dl, -161(%rbp)         # 1-byte Spill
	movq	%rax, %rdx
	movl	%ecx, -168(%rbp)        # 4-byte Spill
	movb	-161(%rbp), %al         # 1-byte Reload
	callq	gimp_dialog_new
	movq	%rax, -48(%rbp)
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$-5, %esi
	movl	$-6, %edx
	movl	$-1, %ecx
	movq	%rax, %rdi
	movb	-161(%rbp), %al         # 1-byte Reload
	callq	gtk_dialog_set_alternative_button_order
	movq	-48(%rbp), %rdi
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_window_set_transient
	movl	$12, %ecx
	movl	-168(%rbp), %edi        # 4-byte Reload
	movl	%ecx, %esi
	movl	%ecx, -188(%rbp)        # 4-byte Spill
	callq	gtk_box_new
	movq	%rax, -56(%rbp)
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	movl	-188(%rbp), %esi        # 4-byte Reload
	callq	gtk_container_set_border_width
	movq	-48(%rbp), %rdi
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	-148(%rbp), %edx        # 4-byte Reload
	movl	-148(%rbp), %ecx        # 4-byte Reload
	movl	-168(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movl	-148(%rbp), %edi        # 4-byte Reload
	movl	-188(%rbp), %esi        # 4-byte Reload
	callq	gtk_box_new
	movq	%rax, -80(%rbp)
	movq	-56(%rbp), %rdi
	movq	%rdi, -224(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	movl	-168(%rbp), %edx        # 4-byte Reload
	movl	-168(%rbp), %ecx        # 4-byte Reload
	movl	-168(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-80(%rbp), %rdi
	callq	gtk_widget_show
	movl	$.L.str.38, %ecx
	movl	%ecx, %edi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -96(%rbp)
	movq	-80(%rbp), %rdi
	movq	%rdi, -232(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-96(%rbp), %rsi
	movq	%rax, %rdi
	movl	-168(%rbp), %edx        # 4-byte Reload
	movl	-168(%rbp), %ecx        # 4-byte Reload
	movl	-168(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-96(%rbp), %rdi
	callq	gtk_widget_show
	movl	$4, %edi
	movl	$2, %esi
	movl	-168(%rbp), %edx        # 4-byte Reload
	callq	gtk_table_new
	movq	%rax, -88(%rbp)
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %ecx
	movq	%rax, %rdi
	movl	%ecx, %esi
	movl	%ecx, -244(%rbp)        # 4-byte Spill
	callq	gtk_table_set_col_spacings
	movq	-88(%rbp), %rdi
	movq	%rdi, -256(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	movl	-244(%rbp), %esi        # 4-byte Reload
	callq	gtk_table_set_row_spacings
	movq	-96(%rbp), %rdi
	movq	%rdi, -264(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-88(%rbp), %rdi
	callq	gtk_widget_show
	cvtsi2sdl	p+8(%rip), %xmm0
	movq	p+80(%rip), %rax
	movl	4(%rax), %ecx
	movl	%ecx, %eax
	cvtsi2sdq	%rax, %xmm2
	movl	$w+16, %ecx
	movl	%ecx, %edi
	movsd	.LCPI4_2(%rip), %xmm4   # xmm4 = mem[0],zero
	xorps	%xmm5, %xmm5
	movsd	.LCPI4_1(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	%xmm1, -272(%rbp)       # 8-byte Spill
	movsd	-272(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	-272(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movl	-168(%rbp), %esi        # 4-byte Reload
	callq	gimp_spin_button_new
	movq	%rax, -64(%rbp)
	movq	-88(%rbp), %rdi
	movq	%rdi, -280(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$.L.str.39, %ecx
	movl	%ecx, %edi
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-64(%rbp), %r8
	movq	%rsp, %rsi
	movl	$1, (%rsi)
	xorps	%xmm0, %xmm0
	movss	.LCPI4_0(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movl	-168(%rbp), %esi        # 4-byte Reload
	movl	-168(%rbp), %edx        # 4-byte Reload
	movq	%rax, %rcx
	movl	-148(%rbp), %r9d        # 4-byte Reload
	callq	gimp_table_attach_aligned
	movq	w+16(%rip), %rdi
	movl	$.L.str.40, %edx
	movl	%edx, %esi
	movl	$division_x_adj_changed, %edx
                                        # kill: RDX<def> EDX<kill>
	movq	-160(%rbp), %rcx        # 8-byte Reload
	movq	-160(%rbp), %r8         # 8-byte Reload
	movl	-168(%rbp), %r9d        # 4-byte Reload
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	cvtsi2sdl	p+12(%rip), %xmm0
	movq	p+80(%rip), %rcx
	movl	4(%rcx), %r9d
	movl	%r9d, %ecx
	cvtsi2sdq	%rcx, %xmm2
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movsd	-128(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-128(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	-136(%rbp), %xmm4       # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movsd	-144(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-128(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movl	-108(%rbp), %esi        # 4-byte Reload
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gimp_spin_button_new
	movq	%rax, -64(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.41, %rdi
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$1, %r9d
	xorps	%xmm0, %xmm0
	movss	.LCPI4_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	-64(%rbp), %r8
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movl	%r9d, %edx
	movq	%rax, %rcx
	movl	$1, (%rsp)
	callq	gimp_table_attach_aligned
	movabsq	$.L.str.40, %rsi
	movabsq	$division_y_adj_changed, %rcx
	xorl	%edx, %edx
	movl	%edx, %edi
	xorl	%r9d, %r9d
	movq	w+24, %r8
	movq	%rdi, -328(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movq	%rcx, %rdx
	movq	-328(%rbp), %rcx        # 8-byte Reload
	movq	-328(%rbp), %r8         # 8-byte Reload
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	cvtsi2sdl	p, %xmm0
	movq	p+80, %rcx
	movl	4(%rcx), %r9d
	movq	p+80, %rcx
	cmpl	8(%rcx), %r9d
	movq	%rax, -344(%rbp)        # 8-byte Spill
	movsd	%xmm0, -352(%rbp)       # 8-byte Spill
	jbe	.LBB4_2
# BB#1:                                 # %cond.true
	movq	p+80, %rax
	movl	4(%rax), %ecx
	movl	%ecx, -356(%rbp)        # 4-byte Spill
	jmp	.LBB4_3
.LBB4_2:                                # %cond.false
	movq	p+80, %rax
	movl	8(%rax), %ecx
	movl	%ecx, -356(%rbp)        # 4-byte Spill
.LBB4_3:                                # %cond.end
	movl	-356(%rbp), %eax        # 4-byte Reload
	movabsq	$w, %rdi
	movsd	.LCPI4_1, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI4_2, %xmm4         # xmm4 = mem[0],zero
	xorps	%xmm5, %xmm5
	xorl	%esi, %esi
	movl	%eax, %eax
	movl	%eax, %ecx
	cvtsi2sdq	%rcx, %xmm2
	movsd	-352(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm0, -368(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-368(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-368(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	-368(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	callq	gimp_spin_button_new
	movq	%rax, -64(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.42, %rdi
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$2, %edx
	xorps	%xmm0, %xmm0
	movss	.LCPI4_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movl	$1, %r9d
	movq	-64(%rbp), %r8
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rcx
	movl	$1, (%rsp)
	callq	gimp_table_attach_aligned
	movabsq	$.L.str.40, %rsi
	movabsq	$tile_width_adj_changed, %rcx
	xorl	%edx, %edx
	movl	%edx, %edi
	xorl	%r9d, %r9d
	movq	w, %r8
	movq	%rdi, -392(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movq	%rcx, %rdx
	movq	-392(%rbp), %rcx        # 8-byte Reload
	movq	-392(%rbp), %r8         # 8-byte Reload
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	cvtsi2sdl	p+4, %xmm0
	movq	p+80, %rcx
	movl	4(%rcx), %r9d
	movq	p+80, %rcx
	cmpl	8(%rcx), %r9d
	movq	%rax, -408(%rbp)        # 8-byte Spill
	movsd	%xmm0, -416(%rbp)       # 8-byte Spill
	jbe	.LBB4_5
# BB#4:                                 # %cond.true.61
	movq	p+80, %rax
	movl	4(%rax), %ecx
	movl	%ecx, -420(%rbp)        # 4-byte Spill
	jmp	.LBB4_6
.LBB4_5:                                # %cond.false.63
	movq	p+80, %rax
	movl	8(%rax), %ecx
	movl	%ecx, -420(%rbp)        # 4-byte Spill
.LBB4_6:                                # %cond.end.65
	movl	-420(%rbp), %eax        # 4-byte Reload
	movabsq	$w, %rcx
	addq	$8, %rcx
	movsd	.LCPI4_1, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI4_2, %xmm4         # xmm4 = mem[0],zero
	xorps	%xmm5, %xmm5
	xorl	%esi, %esi
	movl	%eax, %eax
	movl	%eax, %edx
	cvtsi2sdq	%rdx, %xmm2
	movq	%rcx, %rdi
	movsd	-416(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm0, -432(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-432(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-432(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	-432(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	callq	gimp_spin_button_new
	movq	%rax, -64(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -440(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-440(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.43, %rdi
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$3, %edx
	xorps	%xmm0, %xmm0
	movss	.LCPI4_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movl	$1, %r9d
	movq	-64(%rbp), %r8
	movq	-448(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rcx
	movl	$1, (%rsp)
	callq	gimp_table_attach_aligned
	movabsq	$.L.str.40, %rsi
	movabsq	$tile_height_adj_changed, %rcx
	xorl	%edx, %edx
	movl	%edx, %edi
	xorl	%r9d, %r9d
	movq	w+8, %r8
	movq	%rdi, -456(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movq	%rcx, %rdx
	movq	-456(%rbp), %rcx        # 8-byte Reload
	movq	-456(%rbp), %r8         # 8-byte Reload
	movq	%rax, -464(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.44, %rdi
	movq	%rax, -472(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.45, %rdi
	movl	p+24, %r8d
	movq	%rax, -480(%rbp)        # 8-byte Spill
	movl	%r8d, -484(%rbp)        # 4-byte Spill
	callq	gettext
	movabsq	$.L.str.46, %rdi
	movq	%rax, -496(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.47, %rdi
	movq	%rax, -504(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$1, %edi
	movabsq	$gimp_radio_button_update, %rcx
	movabsq	$p, %rdx
	addq	$24, %rdx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movl	%r9d, %esi
	movl	$2, %r9d
	movq	-480(%rbp), %r10        # 8-byte Reload
	movq	%rsi, -512(%rbp)        # 8-byte Spill
	movq	%r10, %rsi
	movq	%rdx, -520(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-520(%rbp), %rcx        # 8-byte Reload
	movl	-484(%rbp), %r11d       # 4-byte Reload
	movl	%r8d, -524(%rbp)        # 4-byte Spill
	movl	%r11d, %r8d
	movq	-496(%rbp), %rbx        # 8-byte Reload
	movl	%r9d, -528(%rbp)        # 4-byte Spill
	movq	%rbx, %r9
	movl	$0, (%rsp)
	movq	$0, 8(%rsp)
	movq	-504(%rbp), %r14        # 8-byte Reload
	movq	%r14, 16(%rsp)
	movl	$1, 24(%rsp)
	movq	$0, 32(%rsp)
	movq	%rax, 40(%rsp)
	movl	$2, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movb	$0, %al
	callq	gimp_int_radio_group_new
	movq	%rax, -96(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -536(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-536(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r8d, %r8d
	movq	-96(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r8d, %edx
	movl	%r8d, %ecx
	callq	gtk_box_pack_start
	movq	-96(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.48, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_mnemonic
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -544(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-544(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	p+28, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-80(%rbp), %rax
	movq	%rax, -552(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -556(%rbp)        # 4-byte Spill
	movl	-556(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.49, %rsi
	movabsq	$gimp_toggle_button_update, %rax
	movabsq	$p, %rdi
	addq	$28, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-64(%rbp), %r10
	movq	%rdi, -568(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, %rdx
	movq	-568(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movl	$1, %edi
	movl	$12, %esi
	movq	%rax, -576(%rbp)        # 8-byte Spill
	callq	gtk_box_new
	movq	%rax, -80(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -584(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-584(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r9d
	xorl	%r8d, %r8d
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	callq	gtk_box_pack_start
	movq	-80(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.50, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -96(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -592(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-592(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-96(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -596(%rbp)        # 4-byte Spill
	movl	-596(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-96(%rbp), %rdi
	callq	gtk_widget_show
	movl	$2, %ecx
	xorl	%edx, %edx
	movl	%ecx, %edi
	movl	%ecx, %esi
	callq	gtk_table_new
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -608(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-608(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-88(%rbp), %rax
	movq	%rax, -616(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-616(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-96(%rbp), %rax
	movq	%rax, -624(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-624(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-88(%rbp), %rdi
	callq	gtk_widget_show
	leaq	-72(%rbp), %rdi
	xorps	%xmm0, %xmm0
	movsd	.LCPI4_3, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI4_1, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI4_4, %xmm4         # xmm4 = mem[0],zero
	xorl	%esi, %esi
	movsd	p+16, %xmm3             # xmm3 = mem[0],zero
	movsd	%xmm0, -632(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm0
	movsd	-632(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	%xmm1, -640(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm1
	movsd	-640(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	-632(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-640(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	callq	gimp_spin_button_new
	movq	%rax, -64(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -648(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-648(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.51, %rdi
	movq	%rax, -656(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	xorps	%xmm0, %xmm0
	movss	.LCPI4_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movl	$1, %r9d
	movq	-64(%rbp), %r8
	movq	-656(%rbp), %rdi        # 8-byte Reload
	movl	%ecx, %esi
	movl	%ecx, %edx
	movq	%rax, %rcx
	movl	$1, (%rsp)
	callq	gimp_table_attach_aligned
	movabsq	$.L.str.40, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	movabsq	$p, %rdi
	addq	$16, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	-72(%rbp), %r10
	movq	%rdi, -664(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rcx, %rdx
	movq	-664(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -672(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.52, %rdi
	movq	%rax, -680(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_mnemonic
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -688(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-688(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	p+32, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-88(%rbp), %rax
	movq	%rax, -696(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-696(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	$2, %r9d
	movl	$1, %r8d
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %ecx
	callq	gtk_table_attach_defaults
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.49, %rsi
	movabsq	$gimp_toggle_button_update, %rax
	movabsq	$p, %rdi
	addq	$32, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-64(%rbp), %r10
	movq	%rdi, -704(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, %rdx
	movq	-704(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.53, %rdi
	movq	%rax, -712(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.54, %rdi
	movl	p+36, %r8d
	movq	%rax, -720(%rbp)        # 8-byte Spill
	movl	%r8d, -724(%rbp)        # 4-byte Spill
	callq	gettext
	movabsq	$.L.str.55, %rdi
	movq	%rax, -736(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.56, %rdi
	movq	%rax, -744(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.57, %rdi
	movq	%rax, -752(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.58, %rdi
	movq	%rax, -760(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.59, %rdi
	movq	%rax, -768(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$1, %edi
	movabsq	$gimp_radio_button_update, %rcx
	movabsq	$p, %rdx
	addq	$36, %rdx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movl	%r9d, %esi
	movl	$2, %r9d
	movl	$3, %r11d
	movl	$4, %r15d
	movl	$5, %r12d
	leaq	-64(%rbp), %r10
	movq	-720(%rbp), %rbx        # 8-byte Reload
	movq	%rsi, -776(%rbp)        # 8-byte Spill
	movq	%rbx, %rsi
	movq	%rdx, -784(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-784(%rbp), %rcx        # 8-byte Reload
	movl	-724(%rbp), %r13d       # 4-byte Reload
	movl	%r8d, -788(%rbp)        # 4-byte Spill
	movl	%r13d, %r8d
	movq	-736(%rbp), %r14        # 8-byte Reload
	movl	%r9d, -792(%rbp)        # 4-byte Spill
	movq	%r14, %r9
	movl	$0, (%rsp)
	movq	$0, 8(%rsp)
	movq	-744(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, 16(%rsp)
	movl	$1, 24(%rsp)
	movq	$0, 32(%rsp)
	movq	-752(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, 40(%rsp)
	movl	$2, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	-760(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, 64(%rsp)
	movl	$3, 72(%rsp)
	movq	$0, 80(%rsp)
	movq	-768(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, 88(%rsp)
	movl	$4, 96(%rsp)
	movq	$0, 104(%rsp)
	movq	%rax, 112(%rsp)
	movl	$5, 120(%rsp)
	movq	%r10, 128(%rsp)
	movq	$0, 136(%rsp)
	movb	$0, %al
	movl	%r11d, -796(%rbp)       # 4-byte Spill
	movl	%r12d, -800(%rbp)       # 4-byte Spill
	movl	%r15d, -804(%rbp)       # 4-byte Spill
	callq	gimp_int_radio_group_new
	movq	%rax, -96(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -816(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-816(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r8d
	xorl	%r11d, %r11d
	movq	-96(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r8d, %edx
	movl	%r8d, %ecx
	movl	%r11d, %r8d
	callq	gtk_box_pack_start
	movq	-96(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.60, %rdi
	callq	gettext
	movl	$100, %esi
	movl	$16, %edx
	movabsq	$p, %rdi
	addq	$40, %rdi
	xorl	%ecx, %ecx
	movl	$1, %r8d
	cmpl	$0, p+88
	cmovnel	%r8d, %ecx
	movq	%rdi, -824(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-824(%rbp), %rax        # 8-byte Reload
	movl	%ecx, -828(%rbp)        # 4-byte Spill
	movq	%rax, %rcx
	movl	-828(%rbp), %r8d        # 4-byte Reload
	callq	gimp_color_button_new
	movq	%rax, -104(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -840(%rbp)        # 8-byte Spill
	callq	gtk_bin_get_type
	movq	-840(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_bin_get_child
	movq	%rax, -848(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-848(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	xorl	%r8d, %r8d
	movq	-104(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -852(%rbp)        # 4-byte Spill
	movl	-852(%rbp), %ecx        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-104(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.61, %rsi
	movabsq	$gimp_color_button_get_color, %rax
	movabsq	$p, %rdi
	addq	$40, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-104(%rbp), %r10
	movq	%rdi, -864(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, %rdx
	movq	-864(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.62, %rsi
	movabsq	$.L.str.63, %rcx
	movl	$2, %r8d
	movq	-64(%rbp), %rdx
	movq	-104(%rbp), %rdi
	movq	%rdi, -872(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	-872(%rbp), %rdx        # 8-byte Reload
	movq	%rax, -880(%rbp)        # 8-byte Spill
	callq	g_object_bind_property
	movq	-48(%rbp), %rdi
	movq	%rax, -888(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
	movq	-48(%rbp), %rax
	movq	%rax, -896(%rbp)        # 8-byte Spill
	callq	gimp_dialog_get_type
	movq	-896(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dialog_run
	cmpl	$-5, %eax
	sete	%al
	andb	$1, %al
	movzbl	%al, %r8d
	movl	%r8d, p+120
	movq	-48(%rbp), %rdi
	callq	gtk_widget_destroy
	addq	$1000, %rsp             # imm = 0x3E8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	open_dialog, .Lfunc_end4-open_dialog
	.cfi_endproc

	.align	16, 0x90
	.type	params_save_to_gimp,@function
params_save_to_gimp:                    # @params_save_to_gimp
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
	subq	$16, %rsp
	movabsq	$.L.str.22, %rdi
	movabsq	$p, %rax
	movl	$72, %edx
	movq	%rax, %rsi
	callq	gimp_procedural_db_set_data
	movl	%eax, -4(%rbp)          # 4-byte Spill
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	params_save_to_gimp, .Lfunc_end5-params_save_to_gimp
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	4636737291354636288     # double 100
.LCPI6_1:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	filter,@function
filter:                                 # @filter
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
	pushq	%rbx
	subq	$440, %rsp              # imm = 0x1B8
.Ltmp31:
	.cfi_offset %rbx, -24
	callq	g_rand_new
	leaq	-56(%rbp), %rdi
	xorl	%ecx, %ecx
	movq	%rax, -264(%rbp)
	movq	p+80, %rsi
	movq	p+80, %rax
	movl	4(%rax), %r8d
	movq	p+80, %rax
	movl	8(%rax), %r9d
	movl	%ecx, %edx
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	leaq	-104(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	p+80, %rsi
	movq	p+80, %rax
	movl	4(%rax), %r8d
	movq	p+80, %rax
	movl	8(%rax), %r9d
	movl	%edx, -284(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	callq	gimp_pixel_rgn_init
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	p+80, %rax
	movl	12(%rax), %ecx
	movq	p+80, %rax
	imull	4(%rax), %ecx
	movq	p+80, %rax
	imull	8(%rax), %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edi
	callq	g_malloc_n
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	%rax, -232(%rbp)
	movq	p+80, %rax
	movl	12(%rax), %ecx
	imull	p, %ecx
	imull	p+4, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edi
	callq	g_malloc_n
	movabsq	$.L.str.34, %rdi
	movabsq	$overlap_RGB, %rsi
	movabsq	$overlap_RGBA, %r10
	movq	%rax, -240(%rbp)
	cmpl	$0, p+88
	cmovneq	%r10, %rsi
	movq	%rsi, filter.overlap
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_progress_init
	movabsq	$p, %rsi
	movq	%rsi, %rdi
	addq	$92, %rdi
	movq	%rsi, %r10
	addq	$96, %r10
	movq	%rsi, %r11
	addq	$100, %r11
	addq	$104, %rsi
	movq	p+80, %rbx
	movl	(%rbx), %ecx
	movq	%rdi, -296(%rbp)        # 8-byte Spill
	movl	%ecx, %edi
	movq	-296(%rbp), %rbx        # 8-byte Reload
	movq	%rsi, -304(%rbp)        # 8-byte Spill
	movq	%rbx, %rsi
	movq	%r10, %rdx
	movq	%r11, %rcx
	movq	-304(%rbp), %r8         # 8-byte Reload
	movl	%eax, -308(%rbp)        # 4-byte Spill
	callq	gimp_drawable_mask_bounds
	movl	p+100, %edi
	subl	p+92, %edi
	movl	%edi, p+108
	movl	p+104, %edi
	subl	p+96, %edi
	movl	%edi, p+112
	movl	p+108, %edi
	movl	%eax, -312(%rbp)        # 4-byte Spill
	movl	%edi, -316(%rbp)        # 4-byte Spill
	callq	gimp_tile_width
	movl	-316(%rbp), %edi        # 4-byte Reload
	movl	%eax, -320(%rbp)        # 4-byte Spill
	movl	%edi, %eax
	xorl	%edx, %edx
	movl	-320(%rbp), %r9d        # 4-byte Reload
	divl	%r9d
	addl	$1, %eax
	shll	$1, %eax
	movl	%eax, %eax
	movl	%eax, %edi
	callq	gimp_tile_cache_ntiles
	movl	p+8, %eax
	movl	%eax, -144(%rbp)
	movl	p+12, %eax
	movl	%eax, -148(%rbp)
	cmpl	$2, p+24
	jne	.LBB6_15
# BB#1:                                 # %if.then
	xorl	%eax, %eax
	movq	p+80, %rcx
	movl	4(%rcx), %edx
	movl	%eax, -324(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	xorl	%edx, %edx
	divl	p
	movl	-324(%rbp), %esi        # 4-byte Reload
	cmpl	%edx, %esi
	jae	.LBB6_3
# BB#2:                                 # %if.then.23
	movl	-144(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -144(%rbp)
.LBB6_3:                                # %if.end
	xorl	%eax, %eax
	movq	p+80, %rcx
	movl	8(%rcx), %edx
	movl	%eax, -328(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	xorl	%edx, %edx
	divl	p+4
	movl	-328(%rbp), %esi        # 4-byte Reload
	cmpl	%edx, %esi
	jae	.LBB6_5
# BB#4:                                 # %if.then.28
	movl	-148(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -148(%rbp)
.LBB6_5:                                # %if.end.30
	cmpl	$0, p+28
	je	.LBB6_13
# BB#6:                                 # %if.then.32
	movl	$1, %eax
	movq	p+80, %rcx
	movl	4(%rcx), %edx
	movl	%eax, -332(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	xorl	%edx, %edx
	divl	p
	movl	-332(%rbp), %esi        # 4-byte Reload
	cmpl	%edx, %esi
	jae	.LBB6_8
# BB#7:                                 # %if.then.37
	movl	-144(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -144(%rbp)
	movq	p+80, %rcx
	movl	4(%rcx), %eax
	xorl	%edx, %edx
	divl	p
	shrl	$1, %edx
	subl	p, %edx
	movl	%edx, -152(%rbp)
	jmp	.LBB6_9
.LBB6_8:                                # %if.else
	movl	$0, -152(%rbp)
.LBB6_9:                                # %if.end.43
	movl	$1, %eax
	movq	p+80, %rcx
	movl	8(%rcx), %edx
	movl	%eax, -336(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	xorl	%edx, %edx
	divl	p+4
	movl	-336(%rbp), %esi        # 4-byte Reload
	cmpl	%edx, %esi
	jae	.LBB6_11
# BB#10:                                # %if.then.48
	movl	-148(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -148(%rbp)
	movq	p+80, %rcx
	movl	8(%rcx), %eax
	xorl	%edx, %edx
	divl	p+4
	shrl	$1, %edx
	subl	p+4, %edx
	movl	%edx, -156(%rbp)
	jmp	.LBB6_12
.LBB6_11:                               # %if.else.54
	movl	$0, -156(%rbp)
.LBB6_12:                               # %if.end.55
	jmp	.LBB6_14
.LBB6_13:                               # %if.else.56
	movl	$0, -152(%rbp)
	movl	$0, -156(%rbp)
.LBB6_14:                               # %if.end.57
	jmp	.LBB6_19
.LBB6_15:                               # %if.else.58
	cmpl	$0, p+28
	je	.LBB6_17
# BB#16:                                # %if.then.60
	movq	p+80, %rax
	movl	4(%rax), %eax
	xorl	%edx, %edx
	divl	p
	shrl	$1, %edx
	movl	%edx, -152(%rbp)
	movq	p+80, %rcx
	movl	8(%rcx), %edx
	movl	%edx, %eax
	xorl	%edx, %edx
	divl	p+4
	shrl	$1, %edx
	movl	%edx, -156(%rbp)
	jmp	.LBB6_18
.LBB6_17:                               # %if.else.67
	movl	$0, -152(%rbp)
	movl	$0, -156(%rbp)
.LBB6_18:                               # %if.end.68
	jmp	.LBB6_19
.LBB6_19:                               # %if.end.69
	movl	$28, %eax
	movl	%eax, %esi
	movsd	.LCPI6_0, %xmm0         # xmm0 = mem[0],zero
	movsd	p+16, %xmm1             # xmm1 = mem[0],zero
	cvtsi2sdl	p, %xmm2
	mulsd	%xmm2, %xmm1
	divsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, -200(%rbp)
	movl	-144(%rbp), %eax
	imull	-148(%rbp), %eax
	movl	%eax, -172(%rbp)
	movslq	-172(%rbp), %rdi
	callq	g_malloc_n
	movq	%rax, -168(%rbp)
	movq	%rax, -184(%rbp)
	movl	$0, -196(%rbp)
.LBB6_20:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_22 Depth 2
	movl	-196(%rbp), %eax
	cmpl	-148(%rbp), %eax
	jge	.LBB6_39
# BB#21:                                # %for.body
                                        #   in Loop: Header=BB6_20 Depth=1
	movl	-156(%rbp), %eax
	movl	p+4, %ecx
	imull	-196(%rbp), %ecx
	addl	%ecx, %eax
	movl	%eax, -268(%rbp)
	movl	$0, -192(%rbp)
.LBB6_22:                               # %for.cond.81
                                        #   Parent Loop BB6_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-192(%rbp), %eax
	cmpl	-144(%rbp), %eax
	jge	.LBB6_37
# BB#23:                                # %for.body.84
                                        #   in Loop: Header=BB6_22 Depth=2
	movl	-152(%rbp), %eax
	movl	p, %ecx
	imull	-192(%rbp), %ecx
	addl	%ecx, %eax
	movl	%eax, -272(%rbp)
	cmpl	$0, -272(%rbp)
	jge	.LBB6_25
# BB#24:                                # %if.then.89
                                        #   in Loop: Header=BB6_22 Depth=2
	movq	-184(%rbp), %rax
	movl	$0, (%rax)
	movl	-272(%rbp), %ecx
	addl	p, %ecx
	movq	-184(%rbp), %rax
	movl	%ecx, 12(%rax)
	jmp	.LBB6_29
.LBB6_25:                               # %if.else.93
                                        #   in Loop: Header=BB6_22 Depth=2
	movl	-272(%rbp), %eax
	addl	p, %eax
	movq	p+80, %rcx
	cmpl	4(%rcx), %eax
	jae	.LBB6_27
# BB#26:                                # %if.then.98
                                        #   in Loop: Header=BB6_22 Depth=2
	movl	-272(%rbp), %eax
	movq	-184(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	p, %eax
	movq	-184(%rbp), %rcx
	movl	%eax, 12(%rcx)
	jmp	.LBB6_28
.LBB6_27:                               # %if.else.101
                                        #   in Loop: Header=BB6_22 Depth=2
	movl	-272(%rbp), %eax
	movq	-184(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	p+80, %rcx
	movl	4(%rcx), %eax
	subl	-272(%rbp), %eax
	movq	-184(%rbp), %rcx
	movl	%eax, 12(%rcx)
.LBB6_28:                               # %if.end.106
                                        #   in Loop: Header=BB6_22 Depth=2
	jmp	.LBB6_29
.LBB6_29:                               # %if.end.107
                                        #   in Loop: Header=BB6_22 Depth=2
	cmpl	$0, -268(%rbp)
	jge	.LBB6_31
# BB#30:                                # %if.then.110
                                        #   in Loop: Header=BB6_22 Depth=2
	movq	-184(%rbp), %rax
	movl	$0, 4(%rax)
	movl	-268(%rbp), %ecx
	addl	p+4, %ecx
	movq	-184(%rbp), %rax
	movl	%ecx, 16(%rax)
	jmp	.LBB6_35
.LBB6_31:                               # %if.else.114
                                        #   in Loop: Header=BB6_22 Depth=2
	movl	-268(%rbp), %eax
	addl	p+4, %eax
	movq	p+80, %rcx
	cmpl	8(%rcx), %eax
	jae	.LBB6_33
# BB#32:                                # %if.then.119
                                        #   in Loop: Header=BB6_22 Depth=2
	movl	-268(%rbp), %eax
	movq	-184(%rbp), %rcx
	movl	%eax, 4(%rcx)
	movl	p+4, %eax
	movq	-184(%rbp), %rcx
	movl	%eax, 16(%rcx)
	jmp	.LBB6_34
.LBB6_33:                               # %if.else.122
                                        #   in Loop: Header=BB6_22 Depth=2
	movl	-268(%rbp), %eax
	movq	-184(%rbp), %rcx
	movl	%eax, 4(%rcx)
	movq	p+80, %rcx
	movl	8(%rcx), %eax
	subl	-268(%rbp), %eax
	movq	-184(%rbp), %rcx
	movl	%eax, 16(%rcx)
.LBB6_34:                               # %if.end.127
                                        #   in Loop: Header=BB6_22 Depth=2
	jmp	.LBB6_35
.LBB6_35:                               # %if.end.128
                                        #   in Loop: Header=BB6_22 Depth=2
	movq	-264(%rbp), %rdi
	callq	g_rand_int
	movq	-184(%rbp), %rdi
	movl	%eax, 8(%rdi)
	movq	-184(%rbp), %rdi
	addq	$20, %rdi
	movq	-184(%rbp), %rcx
	addq	$24, %rcx
	movl	-200(%rbp), %edx
	movq	%rcx, %rsi
	callq	random_move
# BB#36:                                # %for.inc
                                        #   in Loop: Header=BB6_22 Depth=2
	movl	-192(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -192(%rbp)
	movq	-184(%rbp), %rcx
	addq	$28, %rcx
	movq	%rcx, -184(%rbp)
	jmp	.LBB6_22
.LBB6_37:                               # %for.end
                                        #   in Loop: Header=BB6_20 Depth=1
	jmp	.LBB6_38
.LBB6_38:                               # %for.inc.131
                                        #   in Loop: Header=BB6_20 Depth=1
	movl	-196(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -196(%rbp)
	jmp	.LBB6_20
.LBB6_39:                               # %for.end.133
	movl	$28, %eax
	movl	%eax, %edx
	movabsq	$tile_compare, %rcx
	movq	-168(%rbp), %rsi
	movslq	-172(%rbp), %rdi
	movq	%rdi, -344(%rbp)        # 8-byte Spill
	movq	%rsi, %rdi
	movq	-344(%rbp), %rsi        # 8-byte Reload
	callq	qsort
	leaq	-56(%rbp), %rdi
	xorl	%eax, %eax
	movq	-232(%rbp), %rsi
	movq	p+80, %rcx
	movl	4(%rcx), %r8d
	movq	p+80, %rcx
	movl	8(%rcx), %r9d
	movl	%eax, %edx
	movl	%eax, %ecx
	callq	gimp_pixel_rgn_get_rect
	cmpl	$1, p+24
	jne	.LBB6_41
# BB#40:                                # %if.then.139
	movl	-152(%rbp), %eax
	movl	%eax, -204(%rbp)
	movl	-156(%rbp), %eax
	movl	%eax, -208(%rbp)
	movl	p, %eax
	imull	-144(%rbp), %eax
	movl	%eax, -220(%rbp)
	movl	p+4, %eax
	imull	-148(%rbp), %eax
	movl	%eax, -224(%rbp)
	jmp	.LBB6_42
.LBB6_41:                               # %if.else.142
	movl	$0, -204(%rbp)
	movl	$0, -208(%rbp)
	movq	p+80, %rax
	movl	4(%rax), %ecx
	movl	%ecx, -220(%rbp)
	movq	p+80, %rax
	movl	8(%rax), %ecx
	movl	%ecx, -224(%rbp)
.LBB6_42:                               # %if.end.145
	movl	-204(%rbp), %eax
	movl	-220(%rbp), %ecx
	addl	%ecx, %eax
	movl	%eax, -212(%rbp)
	movl	-208(%rbp), %eax
	movl	-224(%rbp), %ecx
	addl	%ecx, %eax
	movl	%eax, -216(%rbp)
	movl	p+36(%rip), %eax
	movl	%eax, %edx
	movq	%rdx, %rsi
	subq	$5, %rsi
	movq	%rdx, -352(%rbp)        # 8-byte Spill
	movq	%rsi, -360(%rbp)        # 8-byte Spill
	ja	.LBB6_105
# BB#126:                               # %if.end.145
	movq	-352(%rbp), %rax        # 8-byte Reload
	movq	.LJTI6_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB6_43:                               # %sw.bb
	movl	-208(%rbp), %eax
	movl	%eax, -196(%rbp)
.LBB6_44:                               # %for.cond.148
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_46 Depth 2
                                        #       Child Loop BB6_48 Depth 3
	movl	-196(%rbp), %eax
	cmpl	-216(%rbp), %eax
	jge	.LBB6_55
# BB#45:                                # %for.body.151
                                        #   in Loop: Header=BB6_44 Depth=1
	movl	-204(%rbp), %eax
	movl	%eax, -192(%rbp)
.LBB6_46:                               # %for.cond.152
                                        #   Parent Loop BB6_44 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_48 Depth 3
	movl	-192(%rbp), %eax
	cmpl	-212(%rbp), %eax
	jge	.LBB6_53
# BB#47:                                # %for.body.155
                                        #   in Loop: Header=BB6_46 Depth=2
	movq	p+80, %rax
	movl	12(%rax), %ecx
	movq	p+80, %rax
	movl	4(%rax), %edx
	imull	-196(%rbp), %edx
	addl	-192(%rbp), %edx
	imull	%edx, %ecx
	movl	%ecx, -244(%rbp)
	movl	$0, -188(%rbp)
.LBB6_48:                               # %for.cond.161
                                        #   Parent Loop BB6_44 Depth=1
                                        #     Parent Loop BB6_46 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-188(%rbp), %eax
	movq	p+80, %rcx
	cmpl	12(%rcx), %eax
	jae	.LBB6_51
# BB#49:                                # %for.body.165
                                        #   in Loop: Header=BB6_48 Depth=3
	movl	-244(%rbp), %eax
	addl	-188(%rbp), %eax
	movslq	%eax, %rcx
	movq	-232(%rbp), %rdx
	movb	$0, (%rdx,%rcx)
# BB#50:                                # %for.inc.167
                                        #   in Loop: Header=BB6_48 Depth=3
	movl	-188(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -188(%rbp)
	jmp	.LBB6_48
.LBB6_51:                               # %for.end.169
                                        #   in Loop: Header=BB6_46 Depth=2
	jmp	.LBB6_52
.LBB6_52:                               # %for.inc.170
                                        #   in Loop: Header=BB6_46 Depth=2
	movl	-192(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -192(%rbp)
	jmp	.LBB6_46
.LBB6_53:                               # %for.end.172
                                        #   in Loop: Header=BB6_44 Depth=1
	jmp	.LBB6_54
.LBB6_54:                               # %for.inc.173
                                        #   in Loop: Header=BB6_44 Depth=1
	movl	-196(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -196(%rbp)
	jmp	.LBB6_44
.LBB6_55:                               # %for.end.175
	jmp	.LBB6_105
.LBB6_56:                               # %sw.bb.176
	movl	-208(%rbp), %eax
	movl	%eax, -196(%rbp)
.LBB6_57:                               # %for.cond.177
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_59 Depth 2
	movl	-196(%rbp), %eax
	cmpl	-216(%rbp), %eax
	jge	.LBB6_64
# BB#58:                                # %for.body.180
                                        #   in Loop: Header=BB6_57 Depth=1
	movl	-204(%rbp), %eax
	movl	%eax, -192(%rbp)
.LBB6_59:                               # %for.cond.181
                                        #   Parent Loop BB6_57 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-192(%rbp), %eax
	cmpl	-212(%rbp), %eax
	jge	.LBB6_62
# BB#60:                                # %for.body.184
                                        #   in Loop: Header=BB6_59 Depth=2
	movl	$255, %eax
	movq	p+80, %rcx
	movl	12(%rcx), %edx
	movq	p+80, %rcx
	movl	4(%rcx), %esi
	imull	-196(%rbp), %esi
	addl	-192(%rbp), %esi
	imull	%esi, %edx
	movl	%edx, -244(%rbp)
	movl	-244(%rbp), %edx
	addl	$0, %edx
	movslq	%edx, %rcx
	movq	-232(%rbp), %rdi
	movzbl	(%rdi,%rcx), %edx
	movl	%eax, %esi
	subl	%edx, %esi
	movb	%sil, %r8b
	movl	-244(%rbp), %edx
	addl	$0, %edx
	movslq	%edx, %rcx
	movq	-232(%rbp), %rdi
	movb	%r8b, (%rdi,%rcx)
	movl	-244(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rcx
	movq	-232(%rbp), %rdi
	movzbl	(%rdi,%rcx), %edx
	movl	%eax, %esi
	subl	%edx, %esi
	movb	%sil, %r8b
	movl	-244(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rcx
	movq	-232(%rbp), %rdi
	movb	%r8b, (%rdi,%rcx)
	movl	-244(%rbp), %edx
	addl	$2, %edx
	movslq	%edx, %rcx
	movq	-232(%rbp), %rdi
	movzbl	(%rdi,%rcx), %edx
	subl	%edx, %eax
	movb	%al, %r8b
	movl	-244(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	-232(%rbp), %rdi
	movb	%r8b, (%rdi,%rcx)
# BB#61:                                # %for.inc.217
                                        #   in Loop: Header=BB6_59 Depth=2
	movl	-192(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -192(%rbp)
	jmp	.LBB6_59
.LBB6_62:                               # %for.end.219
                                        #   in Loop: Header=BB6_57 Depth=1
	jmp	.LBB6_63
.LBB6_63:                               # %for.inc.220
                                        #   in Loop: Header=BB6_57 Depth=1
	movl	-196(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -196(%rbp)
	jmp	.LBB6_57
.LBB6_64:                               # %for.end.222
	jmp	.LBB6_105
.LBB6_65:                               # %sw.bb.223
	jmp	.LBB6_105
.LBB6_66:                               # %sw.bb.224
	leaq	-136(%rbp), %rdi
	callq	gimp_context_get_foreground
	leaq	-136(%rbp), %rdi
	leaq	-140(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rcx, %rsi
	addq	$2, %rsi
	movq	%rsi, -368(%rbp)        # 8-byte Spill
	movq	%rcx, %rsi
	movq	-368(%rbp), %rcx        # 8-byte Reload
	movl	%eax, -372(%rbp)        # 4-byte Spill
	callq	gimp_rgb_get_uchar
	movb	$-1, -137(%rbp)
	movl	-208(%rbp), %eax
	movl	%eax, -196(%rbp)
.LBB6_67:                               # %for.cond.230
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_69 Depth 2
                                        #       Child Loop BB6_71 Depth 3
	movl	-196(%rbp), %eax
	cmpl	-216(%rbp), %eax
	jge	.LBB6_78
# BB#68:                                # %for.body.233
                                        #   in Loop: Header=BB6_67 Depth=1
	movl	-204(%rbp), %eax
	movl	%eax, -192(%rbp)
.LBB6_69:                               # %for.cond.234
                                        #   Parent Loop BB6_67 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_71 Depth 3
	movl	-192(%rbp), %eax
	cmpl	-212(%rbp), %eax
	jge	.LBB6_76
# BB#70:                                # %for.body.237
                                        #   in Loop: Header=BB6_69 Depth=2
	movq	p+80, %rax
	movl	12(%rax), %ecx
	movq	p+80, %rax
	movl	4(%rax), %edx
	imull	-196(%rbp), %edx
	addl	-192(%rbp), %edx
	imull	%edx, %ecx
	movl	%ecx, -244(%rbp)
	movl	$0, -188(%rbp)
.LBB6_71:                               # %for.cond.243
                                        #   Parent Loop BB6_67 Depth=1
                                        #     Parent Loop BB6_69 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-188(%rbp), %eax
	movq	p+80, %rcx
	cmpl	12(%rcx), %eax
	jae	.LBB6_74
# BB#72:                                # %for.body.247
                                        #   in Loop: Header=BB6_71 Depth=3
	movslq	-188(%rbp), %rax
	movb	-140(%rbp,%rax), %cl
	movl	-244(%rbp), %edx
	addl	-188(%rbp), %edx
	movslq	%edx, %rax
	movq	-232(%rbp), %rsi
	movb	%cl, (%rsi,%rax)
# BB#73:                                # %for.inc.253
                                        #   in Loop: Header=BB6_71 Depth=3
	movl	-188(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -188(%rbp)
	jmp	.LBB6_71
.LBB6_74:                               # %for.end.255
                                        #   in Loop: Header=BB6_69 Depth=2
	jmp	.LBB6_75
.LBB6_75:                               # %for.inc.256
                                        #   in Loop: Header=BB6_69 Depth=2
	movl	-192(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -192(%rbp)
	jmp	.LBB6_69
.LBB6_76:                               # %for.end.258
                                        #   in Loop: Header=BB6_67 Depth=1
	jmp	.LBB6_77
.LBB6_77:                               # %for.inc.259
                                        #   in Loop: Header=BB6_67 Depth=1
	movl	-196(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -196(%rbp)
	jmp	.LBB6_67
.LBB6_78:                               # %for.end.261
	jmp	.LBB6_105
.LBB6_79:                               # %sw.bb.262
	leaq	-136(%rbp), %rdi
	callq	gimp_context_get_background
	leaq	-136(%rbp), %rdi
	leaq	-140(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rcx, %rsi
	addq	$2, %rsi
	movq	%rsi, -384(%rbp)        # 8-byte Spill
	movq	%rcx, %rsi
	movq	-384(%rbp), %rcx        # 8-byte Reload
	movl	%eax, -388(%rbp)        # 4-byte Spill
	callq	gimp_rgb_get_uchar
	movb	$-1, -137(%rbp)
	movl	-208(%rbp), %eax
	movl	%eax, -196(%rbp)
.LBB6_80:                               # %for.cond.268
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_82 Depth 2
                                        #       Child Loop BB6_84 Depth 3
	movl	-196(%rbp), %eax
	cmpl	-216(%rbp), %eax
	jge	.LBB6_91
# BB#81:                                # %for.body.271
                                        #   in Loop: Header=BB6_80 Depth=1
	movl	-204(%rbp), %eax
	movl	%eax, -192(%rbp)
.LBB6_82:                               # %for.cond.272
                                        #   Parent Loop BB6_80 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_84 Depth 3
	movl	-192(%rbp), %eax
	cmpl	-212(%rbp), %eax
	jge	.LBB6_89
# BB#83:                                # %for.body.275
                                        #   in Loop: Header=BB6_82 Depth=2
	movq	p+80, %rax
	movl	12(%rax), %ecx
	movq	p+80, %rax
	movl	4(%rax), %edx
	imull	-196(%rbp), %edx
	addl	-192(%rbp), %edx
	imull	%edx, %ecx
	movl	%ecx, -244(%rbp)
	movl	$0, -188(%rbp)
.LBB6_84:                               # %for.cond.281
                                        #   Parent Loop BB6_80 Depth=1
                                        #     Parent Loop BB6_82 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-188(%rbp), %eax
	movq	p+80, %rcx
	cmpl	12(%rcx), %eax
	jae	.LBB6_87
# BB#85:                                # %for.body.285
                                        #   in Loop: Header=BB6_84 Depth=3
	movslq	-188(%rbp), %rax
	movb	-140(%rbp,%rax), %cl
	movl	-244(%rbp), %edx
	addl	-188(%rbp), %edx
	movslq	%edx, %rax
	movq	-232(%rbp), %rsi
	movb	%cl, (%rsi,%rax)
# BB#86:                                # %for.inc.291
                                        #   in Loop: Header=BB6_84 Depth=3
	movl	-188(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -188(%rbp)
	jmp	.LBB6_84
.LBB6_87:                               # %for.end.293
                                        #   in Loop: Header=BB6_82 Depth=2
	jmp	.LBB6_88
.LBB6_88:                               # %for.inc.294
                                        #   in Loop: Header=BB6_82 Depth=2
	movl	-192(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -192(%rbp)
	jmp	.LBB6_82
.LBB6_89:                               # %for.end.296
                                        #   in Loop: Header=BB6_80 Depth=1
	jmp	.LBB6_90
.LBB6_90:                               # %for.inc.297
                                        #   in Loop: Header=BB6_80 Depth=1
	movl	-196(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -196(%rbp)
	jmp	.LBB6_80
.LBB6_91:                               # %for.end.299
	jmp	.LBB6_105
.LBB6_92:                               # %sw.bb.300
	movabsq	$p, %rax
	addq	$40, %rax
	leaq	-140(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rcx, %rsi
	addq	$2, %rsi
	movq	%rcx, %rdi
	addq	$3, %rdi
	movq	%rdi, -400(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -408(%rbp)        # 8-byte Spill
	movq	%rcx, %rsi
	movq	-408(%rbp), %rcx        # 8-byte Reload
	movq	-400(%rbp), %r8         # 8-byte Reload
	callq	gimp_rgba_get_uchar
	movl	-208(%rbp), %r9d
	movl	%r9d, -196(%rbp)
.LBB6_93:                               # %for.cond.306
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_95 Depth 2
                                        #       Child Loop BB6_97 Depth 3
	movl	-196(%rbp), %eax
	cmpl	-216(%rbp), %eax
	jge	.LBB6_104
# BB#94:                                # %for.body.309
                                        #   in Loop: Header=BB6_93 Depth=1
	movl	-204(%rbp), %eax
	movl	%eax, -192(%rbp)
.LBB6_95:                               # %for.cond.310
                                        #   Parent Loop BB6_93 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_97 Depth 3
	movl	-192(%rbp), %eax
	cmpl	-212(%rbp), %eax
	jge	.LBB6_102
# BB#96:                                # %for.body.313
                                        #   in Loop: Header=BB6_95 Depth=2
	movq	p+80, %rax
	movl	12(%rax), %ecx
	movq	p+80, %rax
	movl	4(%rax), %edx
	imull	-196(%rbp), %edx
	addl	-192(%rbp), %edx
	imull	%edx, %ecx
	movl	%ecx, -244(%rbp)
	movl	$0, -188(%rbp)
.LBB6_97:                               # %for.cond.319
                                        #   Parent Loop BB6_93 Depth=1
                                        #     Parent Loop BB6_95 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-188(%rbp), %eax
	movq	p+80, %rcx
	cmpl	12(%rcx), %eax
	jae	.LBB6_100
# BB#98:                                # %for.body.323
                                        #   in Loop: Header=BB6_97 Depth=3
	movslq	-188(%rbp), %rax
	movb	-140(%rbp,%rax), %cl
	movl	-244(%rbp), %edx
	addl	-188(%rbp), %edx
	movslq	%edx, %rax
	movq	-232(%rbp), %rsi
	movb	%cl, (%rsi,%rax)
# BB#99:                                # %for.inc.329
                                        #   in Loop: Header=BB6_97 Depth=3
	movl	-188(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -188(%rbp)
	jmp	.LBB6_97
.LBB6_100:                              # %for.end.331
                                        #   in Loop: Header=BB6_95 Depth=2
	jmp	.LBB6_101
.LBB6_101:                              # %for.inc.332
                                        #   in Loop: Header=BB6_95 Depth=2
	movl	-192(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -192(%rbp)
	jmp	.LBB6_95
.LBB6_102:                              # %for.end.334
                                        #   in Loop: Header=BB6_93 Depth=1
	jmp	.LBB6_103
.LBB6_103:                              # %for.inc.335
                                        #   in Loop: Header=BB6_93 Depth=1
	movl	-196(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -196(%rbp)
	jmp	.LBB6_93
.LBB6_104:                              # %for.end.337
	jmp	.LBB6_105
.LBB6_105:                              # %sw.epilog
	movq	-168(%rbp), %rax
	movq	%rax, -184(%rbp)
	movl	$0, -188(%rbp)
.LBB6_106:                              # %for.cond.338
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_108 Depth 2
                                        #       Child Loop BB6_110 Depth 3
	movl	-188(%rbp), %eax
	cmpl	-172(%rbp), %eax
	jge	.LBB6_125
# BB#107:                               # %for.body.341
                                        #   in Loop: Header=BB6_106 Depth=1
	leaq	-56(%rbp), %rdi
	movq	-184(%rbp), %rax
	movl	(%rax), %ecx
	movq	-184(%rbp), %rax
	addl	20(%rax), %ecx
	movl	%ecx, -276(%rbp)
	movq	-184(%rbp), %rax
	movl	4(%rax), %ecx
	movq	-184(%rbp), %rax
	addl	24(%rax), %ecx
	movl	%ecx, -280(%rbp)
	movq	-240(%rbp), %rsi
	movq	-184(%rbp), %rax
	movl	(%rax), %edx
	movq	-184(%rbp), %rax
	movl	4(%rax), %ecx
	movq	-184(%rbp), %rax
	movl	12(%rax), %r8d
	movq	-184(%rbp), %rax
	movl	16(%rax), %r9d
	callq	gimp_pixel_rgn_get_rect
	movl	$0, -196(%rbp)
.LBB6_108:                              # %for.cond.352
                                        #   Parent Loop BB6_106 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_110 Depth 3
	movl	-196(%rbp), %eax
	movq	-184(%rbp), %rcx
	cmpl	16(%rcx), %eax
	jae	.LBB6_123
# BB#109:                               # %for.body.356
                                        #   in Loop: Header=BB6_108 Depth=2
	movl	-280(%rbp), %eax
	addl	-196(%rbp), %eax
	movl	%eax, -256(%rbp)
	movl	$0, -192(%rbp)
.LBB6_110:                              # %for.cond.358
                                        #   Parent Loop BB6_106 Depth=1
                                        #     Parent Loop BB6_108 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-192(%rbp), %eax
	movq	-184(%rbp), %rcx
	cmpl	12(%rcx), %eax
	jae	.LBB6_121
# BB#111:                               # %for.body.362
                                        #   in Loop: Header=BB6_110 Depth=3
	xorl	%eax, %eax
	movl	-276(%rbp), %ecx
	addl	-192(%rbp), %ecx
	movl	%ecx, -252(%rbp)
	movq	p+80, %rdx
	movl	12(%rdx), %ecx
	movq	-184(%rbp), %rdx
	movl	12(%rdx), %esi
	imull	-196(%rbp), %esi
	addl	-192(%rbp), %esi
	imull	%esi, %ecx
	movl	%ecx, -248(%rbp)
	cmpl	-252(%rbp), %eax
	jg	.LBB6_116
# BB#112:                               # %land.lhs.true
                                        #   in Loop: Header=BB6_110 Depth=3
	movl	-252(%rbp), %eax
	movq	p+80, %rcx
	cmpl	4(%rcx), %eax
	jae	.LBB6_116
# BB#113:                               # %land.lhs.true.374
                                        #   in Loop: Header=BB6_110 Depth=3
	xorl	%eax, %eax
	cmpl	-256(%rbp), %eax
	jg	.LBB6_116
# BB#114:                               # %land.lhs.true.377
                                        #   in Loop: Header=BB6_110 Depth=3
	movl	-256(%rbp), %eax
	movq	p+80, %rcx
	cmpl	8(%rcx), %eax
	jae	.LBB6_116
# BB#115:                               # %if.then.381
                                        #   in Loop: Header=BB6_110 Depth=3
	movq	p+80, %rax
	movl	12(%rax), %ecx
	movq	p+80, %rax
	movl	4(%rax), %edx
	imull	-256(%rbp), %edx
	addl	-252(%rbp), %edx
	imull	%edx, %ecx
	movl	%ecx, -244(%rbp)
	movq	filter.overlap, %rax
	movslq	-244(%rbp), %rsi
	addq	-232(%rbp), %rsi
	movslq	-248(%rbp), %rdi
	addq	-240(%rbp), %rdi
	movq	%rdi, -416(%rbp)        # 8-byte Spill
	movq	%rsi, %rdi
	movq	-416(%rbp), %rsi        # 8-byte Reload
	callq	*%rax
	jmp	.LBB6_119
.LBB6_116:                              # %if.else.391
                                        #   in Loop: Header=BB6_110 Depth=3
	cmpl	$0, p+32
	je	.LBB6_118
# BB#117:                               # %if.then.393
                                        #   in Loop: Header=BB6_110 Depth=3
	movl	-252(%rbp), %eax
	movq	p+80, %rcx
	addl	4(%rcx), %eax
	movq	p+80, %rcx
	xorl	%edx, %edx
	divl	4(%rcx)
	movl	%edx, -252(%rbp)
	movl	-256(%rbp), %edx
	movq	p+80, %rcx
	addl	8(%rcx), %edx
	movq	p+80, %rcx
	movl	%edx, %eax
	xorl	%edx, %edx
	divl	8(%rcx)
	movl	%edx, -256(%rbp)
	movq	p+80, %rcx
	movl	12(%rcx), %edx
	movq	p+80, %rcx
	movl	4(%rcx), %esi
	imull	-256(%rbp), %esi
	addl	-252(%rbp), %esi
	imull	%esi, %edx
	movl	%edx, -244(%rbp)
	movq	filter.overlap, %rcx
	movslq	-244(%rbp), %rdi
	addq	-232(%rbp), %rdi
	movslq	-248(%rbp), %r8
	addq	-240(%rbp), %r8
	movq	%r8, %rsi
	callq	*%rcx
.LBB6_118:                              # %if.end.411
                                        #   in Loop: Header=BB6_110 Depth=3
	jmp	.LBB6_119
.LBB6_119:                              # %if.end.412
                                        #   in Loop: Header=BB6_110 Depth=3
	jmp	.LBB6_120
.LBB6_120:                              # %for.inc.413
                                        #   in Loop: Header=BB6_110 Depth=3
	movl	-192(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -192(%rbp)
	jmp	.LBB6_110
.LBB6_121:                              # %for.end.415
                                        #   in Loop: Header=BB6_108 Depth=2
	jmp	.LBB6_122
.LBB6_122:                              # %for.inc.416
                                        #   in Loop: Header=BB6_108 Depth=2
	movl	-196(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -196(%rbp)
	jmp	.LBB6_108
.LBB6_123:                              # %for.end.418
                                        #   in Loop: Header=BB6_106 Depth=1
	cvtsi2sdl	-188(%rbp), %xmm0
	cvtsi2sdl	-172(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -420(%rbp)        # 4-byte Spill
# BB#124:                               # %for.inc.423
                                        #   in Loop: Header=BB6_106 Depth=1
	movl	-188(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -188(%rbp)
	movq	-184(%rbp), %rcx
	addq	$28, %rcx
	movq	%rcx, -184(%rbp)
	jmp	.LBB6_106
.LBB6_125:                              # %for.end.426
	leaq	-104(%rbp), %rdi
	xorl	%eax, %eax
	movq	-232(%rbp), %rsi
	movq	p+80, %rcx
	movl	4(%rcx), %r8d
	movq	p+80, %rcx
	movl	8(%rcx), %r9d
	movl	%eax, %edx
	movl	%eax, %ecx
	callq	gimp_pixel_rgn_set_rect
	movsd	.LCPI6_1, %xmm0         # xmm0 = mem[0],zero
	callq	gimp_progress_update
	movq	p+80, %rdi
	movl	%eax, -424(%rbp)        # 4-byte Spill
	callq	gimp_drawable_flush
	movl	$1, %esi
	movq	p+80, %rdi
	movl	(%rdi), %edi
	callq	gimp_drawable_merge_shadow
	movq	p+80, %r10
	movl	(%r10), %edi
	movl	p+92, %esi
	movl	p+96, %edx
	movl	p+108, %ecx
	movl	p+112, %r8d
	movl	%eax, -428(%rbp)        # 4-byte Spill
	callq	gimp_drawable_update
	movq	-264(%rbp), %rdi
	movl	%eax, -432(%rbp)        # 4-byte Spill
	callq	g_rand_free
	movq	-240(%rbp), %rdi
	callq	g_free
	movq	-232(%rbp), %rdi
	callq	g_free
	movq	-168(%rbp), %rdi
	callq	g_free
	addq	$440, %rsp              # imm = 0x1B8
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end6:
	.size	filter, .Lfunc_end6-filter
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI6_0:
	.quad	.LBB6_43
	.quad	.LBB6_56
	.quad	.LBB6_65
	.quad	.LBB6_66
	.quad	.LBB6_79
	.quad	.LBB6_92

	.text
	.align	16, 0x90
	.type	division_x_adj_changed,@function
division_x_adj_changed:                 # @division_x_adj_changed
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
	movl	p+8, %eax
	movq	-8(%rbp), %rdi
	movl	%eax, -12(%rbp)         # 4-byte Spill
	callq	gtk_adjustment_get_value
	cvttsd2si	%xmm0, %eax
	movl	-12(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	je	.LBB7_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	gtk_adjustment_get_value
	cvttsd2si	%xmm0, %eax
	movl	%eax, p+8
	movq	p+80, %rdi
	movl	4(%rdi), %eax
	xorl	%edx, %edx
	divl	p+8
	movl	%eax, p
	movq	w, %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	cvtsi2sdl	p, %xmm0
	movq	%rax, %rdi
	callq	gtk_adjustment_set_value
.LBB7_2:                                # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	division_x_adj_changed, .Lfunc_end7-division_x_adj_changed
	.cfi_endproc

	.align	16, 0x90
	.type	division_y_adj_changed,@function
division_y_adj_changed:                 # @division_y_adj_changed
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	p+12, %eax
	movq	-8(%rbp), %rdi
	movl	%eax, -12(%rbp)         # 4-byte Spill
	callq	gtk_adjustment_get_value
	cvttsd2si	%xmm0, %eax
	movl	-12(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	je	.LBB8_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	gtk_adjustment_get_value
	cvttsd2si	%xmm0, %eax
	movl	%eax, p+12
	movq	p+80, %rdi
	movl	8(%rdi), %eax
	xorl	%edx, %edx
	divl	p+12
	movl	%eax, p+4
	movq	w+8, %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	cvtsi2sdl	p+4, %xmm0
	movq	%rax, %rdi
	callq	gtk_adjustment_set_value
.LBB8_2:                                # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	division_y_adj_changed, .Lfunc_end8-division_y_adj_changed
	.cfi_endproc

	.align	16, 0x90
	.type	tile_width_adj_changed,@function
tile_width_adj_changed:                 # @tile_width_adj_changed
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	p, %eax
	movq	-8(%rbp), %rdi
	movl	%eax, -12(%rbp)         # 4-byte Spill
	callq	gtk_adjustment_get_value
	cvttsd2si	%xmm0, %eax
	movl	-12(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	je	.LBB9_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	gtk_adjustment_get_value
	cvttsd2si	%xmm0, %eax
	movl	%eax, p
	movq	p+80, %rdi
	movl	4(%rdi), %eax
	xorl	%edx, %edx
	divl	p
	movl	%eax, p+8
	movq	w+16, %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	cvtsi2sdl	p+8, %xmm0
	movq	%rax, %rdi
	callq	gtk_adjustment_set_value
.LBB9_2:                                # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	tile_width_adj_changed, .Lfunc_end9-tile_width_adj_changed
	.cfi_endproc

	.align	16, 0x90
	.type	tile_height_adj_changed,@function
tile_height_adj_changed:                # @tile_height_adj_changed
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	p+4, %eax
	movq	-8(%rbp), %rdi
	movl	%eax, -12(%rbp)         # 4-byte Spill
	callq	gtk_adjustment_get_value
	cvttsd2si	%xmm0, %eax
	movl	-12(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	je	.LBB10_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	gtk_adjustment_get_value
	cvttsd2si	%xmm0, %eax
	movl	%eax, p+4
	movq	p+80, %rdi
	movl	8(%rdi), %eax
	xorl	%edx, %edx
	divl	p+4
	movl	%eax, p+12
	movq	w+24, %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	cvtsi2sdl	p+12, %xmm0
	movq	%rax, %rdi
	callq	gtk_adjustment_set_value
.LBB10_2:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	tile_height_adj_changed, .Lfunc_end10-tile_height_adj_changed
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI11_0:
	.quad	4607182418800017408     # double 1
.LCPI11_1:
	.quad	4643176031446892544     # double 255
	.text
	.align	16, 0x90
	.type	overlap_RGBA,@function
overlap_RGBA:                           # @overlap_RGBA
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp44:
	.cfi_def_cfa_offset 16
.Ltmp45:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp46:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	xorps	%xmm0, %xmm0
	movsd	.LCPI11_0, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI11_1, %xmm2        # xmm2 = mem[0],zero
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movzbl	(%rsi), %eax
	cvtsi2sdl	%eax, %xmm3
	movsd	.LCPI11_1(%rip), %xmm4  # xmm4 = mem[0],zero
	divsd	%xmm4, %xmm3
	movsd	%xmm3, -24(%rbp)
	movq	-8(%rbp), %rsi
	movzbl	1(%rsi), %eax
	cvtsi2sdl	%eax, %xmm3
	divsd	%xmm4, %xmm3
	movsd	%xmm3, -32(%rbp)
	movq	-8(%rbp), %rsi
	movzbl	2(%rsi), %eax
	cvtsi2sdl	%eax, %xmm3
	divsd	%xmm4, %xmm3
	movsd	%xmm3, -40(%rbp)
	movq	-8(%rbp), %rsi
	movzbl	3(%rsi), %eax
	cvtsi2sdl	%eax, %xmm3
	divsd	%xmm4, %xmm3
	movsd	%xmm3, -48(%rbp)
	movq	-16(%rbp), %rsi
	movzbl	(%rsi), %eax
	cvtsi2sdl	%eax, %xmm3
	divsd	%xmm4, %xmm3
	movsd	%xmm3, -56(%rbp)
	movq	-16(%rbp), %rsi
	movzbl	1(%rsi), %eax
	cvtsi2sdl	%eax, %xmm3
	divsd	%xmm4, %xmm3
	movsd	%xmm3, -64(%rbp)
	movq	-16(%rbp), %rsi
	movzbl	2(%rsi), %eax
	cvtsi2sdl	%eax, %xmm3
	divsd	%xmm4, %xmm3
	movsd	%xmm3, -72(%rbp)
	movq	-16(%rbp), %rsi
	movzbl	3(%rsi), %eax
	cvtsi2sdl	%eax, %xmm3
	divsd	%xmm2, %xmm3
	movsd	%xmm3, -80(%rbp)
	movsd	-80(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-48(%rbp), %xmm3        # xmm3 = mem[0],zero
	subsd	-80(%rbp), %xmm1
	mulsd	%xmm1, %xmm3
	addsd	%xmm3, %xmm2
	movsd	%xmm2, -88(%rbp)
	movsd	-88(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB11_20
# BB#1:                                 # %if.then
	movsd	.LCPI11_0, %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-48(%rbp), %xmm1
	movaps	%xmm0, %xmm2
	subsd	-80(%rbp), %xmm2
	mulsd	%xmm2, %xmm1
	movsd	-56(%rbp), %xmm2        # xmm2 = mem[0],zero
	mulsd	-80(%rbp), %xmm2
	addsd	%xmm2, %xmm1
	divsd	-88(%rbp), %xmm1
	movsd	%xmm1, -96(%rbp)
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-48(%rbp), %xmm1
	movaps	%xmm0, %xmm2
	subsd	-80(%rbp), %xmm2
	mulsd	%xmm2, %xmm1
	movsd	-64(%rbp), %xmm2        # xmm2 = mem[0],zero
	mulsd	-80(%rbp), %xmm2
	addsd	%xmm2, %xmm1
	divsd	-88(%rbp), %xmm1
	movsd	%xmm1, -104(%rbp)
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-48(%rbp), %xmm1
	movaps	%xmm0, %xmm2
	subsd	-80(%rbp), %xmm2
	mulsd	%xmm2, %xmm1
	movsd	-72(%rbp), %xmm2        # xmm2 = mem[0],zero
	mulsd	-80(%rbp), %xmm2
	addsd	%xmm2, %xmm1
	divsd	-88(%rbp), %xmm1
	movsd	%xmm1, -112(%rbp)
	movsd	-96(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB11_3
# BB#2:                                 # %cond.true
	movsd	.LCPI11_0, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -120(%rbp)       # 8-byte Spill
	jmp	.LBB11_7
.LBB11_3:                               # %cond.false
	xorps	%xmm0, %xmm0
	ucomisd	-96(%rbp), %xmm0
	jbe	.LBB11_5
# BB#4:                                 # %cond.true.45
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -128(%rbp)       # 8-byte Spill
	jmp	.LBB11_6
.LBB11_5:                               # %cond.false.46
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -128(%rbp)       # 8-byte Spill
.LBB11_6:                               # %cond.end
	movsd	-128(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -120(%rbp)       # 8-byte Spill
.LBB11_7:                               # %cond.end.47
	movsd	-120(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI11_0, %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -96(%rbp)
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB11_9
# BB#8:                                 # %cond.true.51
	movsd	.LCPI11_0, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -136(%rbp)       # 8-byte Spill
	jmp	.LBB11_13
.LBB11_9:                               # %cond.false.52
	xorps	%xmm0, %xmm0
	ucomisd	-104(%rbp), %xmm0
	jbe	.LBB11_11
# BB#10:                                # %cond.true.55
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -144(%rbp)       # 8-byte Spill
	jmp	.LBB11_12
.LBB11_11:                              # %cond.false.56
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -144(%rbp)       # 8-byte Spill
.LBB11_12:                              # %cond.end.57
	movsd	-144(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -136(%rbp)       # 8-byte Spill
.LBB11_13:                              # %cond.end.59
	movsd	-136(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI11_0, %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -104(%rbp)
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB11_15
# BB#14:                                # %cond.true.63
	movsd	.LCPI11_0, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -152(%rbp)       # 8-byte Spill
	jmp	.LBB11_19
.LBB11_15:                              # %cond.false.64
	xorps	%xmm0, %xmm0
	ucomisd	-112(%rbp), %xmm0
	jbe	.LBB11_17
# BB#16:                                # %cond.true.67
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -160(%rbp)       # 8-byte Spill
	jmp	.LBB11_18
.LBB11_17:                              # %cond.false.68
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -160(%rbp)       # 8-byte Spill
.LBB11_18:                              # %cond.end.69
	movsd	-160(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -152(%rbp)       # 8-byte Spill
.LBB11_19:                              # %cond.end.71
	movsd	-152(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -112(%rbp)
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI11_1(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movb	%cl, (%rdx)
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movb	%cl, 1(%rdx)
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movb	%cl, 2(%rdx)
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movb	%cl, 3(%rdx)
	jmp	.LBB11_21
.LBB11_20:                              # %if.else
	movq	-8(%rbp), %rax
	movb	$0, (%rax)
	movq	-8(%rbp), %rax
	movb	$0, 1(%rax)
	movq	-8(%rbp), %rax
	movb	$0, 2(%rax)
	movq	-8(%rbp), %rax
	movb	$0, 3(%rax)
.LBB11_21:                              # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	overlap_RGBA, .Lfunc_end11-overlap_RGBA
	.cfi_endproc

	.align	16, 0x90
	.type	overlap_RGB,@function
overlap_RGB:                            # @overlap_RGB
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp47:
	.cfi_def_cfa_offset 16
.Ltmp48:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp49:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movb	(%rsi), %al
	movq	-8(%rbp), %rsi
	movb	%al, (%rsi)
	movq	-16(%rbp), %rsi
	movb	1(%rsi), %al
	movq	-8(%rbp), %rsi
	movb	%al, 1(%rsi)
	movq	-16(%rbp), %rsi
	movb	2(%rsi), %al
	movq	-8(%rbp), %rsi
	movb	%al, 2(%rsi)
	popq	%rbp
	retq
.Lfunc_end12:
	.size	overlap_RGB, .Lfunc_end12-overlap_RGB
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI13_0:
	.quad	4614256656552045848     # double 3.1415926535897931
	.text
	.align	16, 0x90
	.type	random_move,@function
random_move:                            # @random_move
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp50:
	.cfi_def_cfa_offset 16
.Ltmp51:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp52:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	callq	drand
	movsd	.LCPI13_0, %xmm1        # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
	callq	drand
	cvtsi2sdl	-20(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -40(%rbp)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	cos
	movsd	-48(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %edx
	movq	-8(%rbp), %rsi
	movl	%edx, (%rsi)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	sin
	movsd	-56(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %edx
	movq	-16(%rbp), %rsi
	movl	%edx, (%rsi)
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	random_move, .Lfunc_end13-random_move
	.cfi_endproc

	.align	16, 0x90
	.type	tile_compare,@function
tile_compare:                           # @tile_compare
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp53:
	.cfi_def_cfa_offset 16
.Ltmp54:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp55:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movl	8(%rsi), %eax
	movq	-16(%rbp), %rsi
	subl	8(%rsi), %eax
	popq	%rbp
	retq
.Lfunc_end14:
	.size	tile_compare, .Lfunc_end14-tile_compare
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI15_0:
	.quad	-4616189618054758400    # double -1
.LCPI15_1:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	drand,@function
drand:                                  # @drand
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp56:
	.cfi_def_cfa_offset 16
.Ltmp57:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp58:
	.cfi_def_cfa_register %rbp
	movsd	.LCPI15_0, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI15_1, %xmm1        # xmm1 = mem[0],zero
	callq	g_random_double_range
	popq	%rbp
	retq
.Lfunc_end15:
	.size	drand, .Lfunc_end15-drand
	.cfi_endproc

	.type	PLUG_IN_INFO,@object    # @PLUG_IN_INFO
	.section	.rodata,"a",@progbits
	.globl	PLUG_IN_INFO
	.align	8
PLUG_IN_INFO:
	.quad	0
	.quad	0
	.quad	plugin_query
	.quad	plugin_run
	.size	PLUG_IN_INFO, 32

	.type	plugin_query.args,@object # @plugin_query.args
	.align	16
plugin_query.args:
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
	.long	3                       # 0x3
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
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.20
	.quad	.L.str.21
	.size	plugin_query.args, 264

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
	.asciz	"tile-size"
	.size	.L.str.6, 10

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Tile size (pixels)"
	.size	.L.str.7, 19

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"move-max"
	.size	.L.str.8, 9

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Max move rate (%)"
	.size	.L.str.9, 18

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"fractional-type"
	.size	.L.str.10, 16

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"0:Background 1:Ignore 2:Force"
	.size	.L.str.11, 30

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"wrap-around"
	.size	.L.str.12, 12

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Wrap around (bool)"
	.size	.L.str.13, 19

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"centering"
	.size	.L.str.14, 10

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Centering (bool)"
	.size	.L.str.15, 17

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"background-type"
	.size	.L.str.16, 16

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"0:Transparent 1:Inverted 2:Image? 3:FG 4:BG 5:Color"
	.size	.L.str.17, 52

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"background-color"
	.size	.L.str.18, 17

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Background color (for bg-type 5)"
	.size	.L.str.19, 33

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"background-alpha"
	.size	.L.str.20, 17

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Opacity (for bg-type 5)"
	.size	.L.str.21, 24

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"plug-in-papertile"
	.size	.L.str.22, 18

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Cut image into paper tiles, and slide them"
	.size	.L.str.23, 43

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"This plug-in cuts an image into paper tiles and slides each paper tile."
	.size	.L.str.24, 72

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Hirotsuna Mizuno <s1041150@u-aizu.ac.jp>"
	.size	.L.str.25, 41

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"Copyright (c)1997-1999 Hirotsuna Mizuno"
	.size	.L.str.26, 40

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"September 31, 1999"
	.size	.L.str.27, 19

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"_Paper Tile..."
	.size	.L.str.28, 15

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"RGB*"
	.size	.L.str.29, 5

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"<Image>/Filters/Map"
	.size	.L.str.30, 20

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"gimp20-std-plug-ins"
	.size	.L.str.31, 20

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"UTF-8"
	.size	.L.str.32, 6

	.type	p,@object               # @p
	.data
	.align	8
p:
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	16                      # 0x10
	.long	16                      # 0x10
	.quad	4627730092099895296     # double 25
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	0                       # double 0
	.quad	0                       # double 0
	.quad	4607182418800017408     # double 1
	.quad	4607182418800017408     # double 1
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.size	p, 128

	.type	plugin_run.return_value,@object # @plugin_run.return_value
	.local	plugin_run.return_value
	.comm	plugin_run.return_value,40,16
	.type	.L.str.33,@object       # @.str.33
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.33:
	.asciz	"tile-paper"
	.size	.L.str.33, 11

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"Paper Tile"
	.size	.L.str.34, 11

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"gimp-tile-paper"
	.size	.L.str.35, 16

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"gtk-cancel"
	.size	.L.str.36, 11

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"gtk-ok"
	.size	.L.str.37, 7

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"Division"
	.size	.L.str.38, 9

	.type	w,@object               # @w
	.local	w
	.comm	w,32,8
	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"_X:"
	.size	.L.str.39, 4

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"value-changed"
	.size	.L.str.40, 14

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"_Y:"
	.size	.L.str.41, 4

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"_Width:"
	.size	.L.str.42, 8

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"_Height:"
	.size	.L.str.43, 9

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"Fractional Pixels"
	.size	.L.str.44, 18

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"_Background"
	.size	.L.str.45, 12

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"_Ignore"
	.size	.L.str.46, 8

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"_Force"
	.size	.L.str.47, 7

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"C_entering"
	.size	.L.str.48, 11

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"toggled"
	.size	.L.str.49, 8

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"Movement"
	.size	.L.str.50, 9

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"_Max (%):"
	.size	.L.str.51, 10

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"_Wrap around"
	.size	.L.str.52, 13

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"Background Type"
	.size	.L.str.53, 16

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"_Transparent"
	.size	.L.str.54, 13

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"I_nverted image"
	.size	.L.str.55, 16

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"Im_age"
	.size	.L.str.56, 7

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"Fo_reground color"
	.size	.L.str.57, 18

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"Bac_kground color"
	.size	.L.str.58, 18

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"S_elect here:"
	.size	.L.str.59, 14

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"Background Color"
	.size	.L.str.60, 17

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"color-changed"
	.size	.L.str.61, 14

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"active"
	.size	.L.str.62, 7

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"sensitive"
	.size	.L.str.63, 10

	.type	filter.overlap,@object  # @filter.overlap
	.local	filter.overlap
	.comm	filter.overlap,8,8

	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
