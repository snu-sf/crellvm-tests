	.text
	.file	"displace.bc"
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
	movabsq	$.L.str.20, %rdi
	movabsq	$.L.str.21, %rsi
	movabsq	$.L.str.22, %rdx
	movabsq	$.L.str.23, %rcx
	movabsq	$.L.str.24, %r8
	movabsq	$.L.str.25, %r9
	movabsq	$.L.str.26, %rax
	movabsq	$.L.str.27, %r10
	movl	$1, %r11d
	movl	$10, %ebx
	xorl	%r14d, %r14d
	movabsq	$query.args, %r15
	xorl	%r12d, %r12d
	movl	%r12d, %r13d
	movq	%rax, (%rsp)
	movq	%r10, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$10, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%r15, 40(%rsp)
	movq	$0, 48(%rsp)
	movq	%r13, -48(%rbp)         # 8-byte Spill
	movl	%r11d, -52(%rbp)        # 4-byte Spill
	movl	%r14d, -56(%rbp)        # 4-byte Spill
	movl	%ebx, -60(%rbp)         # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.20, %rdi
	movabsq	$.L.str.28, %rsi
	callq	gimp_plugin_menu_register
	movabsq	$.L.str.29, %rdi
	movabsq	$.L.str.30, %rsi
	movabsq	$.L.str.31, %rdx
	movabsq	$.L.str.23, %rcx
	movabsq	$.L.str.24, %r8
	movabsq	$.L.str.25, %r9
	movabsq	$.L.str.32, %r10
	movabsq	$.L.str.27, %r15
	movl	$1, %r11d
	movl	$10, %ebx
	xorl	%r14d, %r14d
	movabsq	$query.args, %r13
	xorl	%r12d, %r12d
                                        # kill: R12<def> R12D<kill>
	movq	%r10, (%rsp)
	movq	%r15, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$10, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%r13, 40(%rsp)
	movq	$0, 48(%rsp)
	movl	%eax, -64(%rbp)         # 4-byte Spill
	movq	%r12, -72(%rbp)         # 8-byte Spill
	movl	%r11d, -76(%rbp)        # 4-byte Spill
	movl	%r14d, -80(%rbp)        # 4-byte Spill
	movl	%ebx, -84(%rbp)         # 4-byte Spill
	callq	gimp_install_procedure
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	$3, -56(%rbp)
	movq	-24(%rbp), %rcx
	movl	8(%rcx), %esi
	movl	%esi, -52(%rbp)
# BB#1:                                 # %do.body
	callq	gimp_locale_directory
	movabsq	$.L.str.33, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.33, %rdi
	movabsq	$.L.str.34, %rsi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.33, %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	textdomain
	movq	%rax, -80(%rbp)         # 8-byte Spill
# BB#2:                                 # %do.end
	movq	-24(%rbp), %rax
	movl	88(%rax), %edi
	callq	gimp_drawable_get
	movq	%rax, -48(%rbp)
	movl	$48, %edi
                                        # kill: RDI<def> EDI<kill>
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
	jmp	.LBB1_34
.LBB1_34:                               # %do.end
	movl	-84(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	je	.LBB1_6
	jmp	.LBB1_35
.LBB1_35:                               # %do.end
	movl	-84(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	je	.LBB1_10
	jmp	.LBB1_11
.LBB1_3:                                # %sw.bb
	movabsq	$.L.str.20, %rdi
	movabsq	$dvals, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movq	-48(%rbp), %rdi
	movl	%eax, -96(%rbp)         # 4-byte Spill
	callq	displace_dialog
	cmpl	$0, %eax
	jne	.LBB1_5
# BB#4:                                 # %if.then
	jmp	.LBB1_33
.LBB1_5:                                # %if.end
	jmp	.LBB1_12
.LBB1_6:                                # %sw.bb.9
	cmpl	$10, -12(%rbp)
	je	.LBB1_8
# BB#7:                                 # %if.then.10
	movl	$1, -56(%rbp)
	jmp	.LBB1_9
.LBB1_8:                                # %if.else
	xorl	%eax, %eax
	movl	$1, %ecx
	movq	-24(%rbp), %rdx
	movsd	128(%rdx), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, dvals
	movq	-24(%rbp), %rdx
	movsd	168(%rdx), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, dvals+8
	movq	-24(%rbp), %rdx
	movl	208(%rdx), %esi
	movl	%esi, dvals+16
	movq	-24(%rbp), %rdx
	movl	248(%rdx), %esi
	movl	%esi, dvals+20
	movq	-24(%rbp), %rdx
	movl	288(%rdx), %esi
	movl	%esi, dvals+24
	movq	-24(%rbp), %rdx
	movl	328(%rdx), %esi
	movl	%esi, dvals+28
	movq	-24(%rbp), %rdx
	movl	368(%rdx), %esi
	movl	%esi, dvals+32
	movq	-8(%rbp), %rdi
	movl	$.L.str.29, %esi
                                        # kill: RSI<def> ESI<kill>
	movl	%eax, -100(%rbp)        # 4-byte Spill
	movl	%ecx, -104(%rbp)        # 4-byte Spill
	callq	strcmp
	cmpl	$0, %eax
	movl	-100(%rbp), %eax        # 4-byte Reload
	movl	-104(%rbp), %ecx        # 4-byte Reload
	cmovel	%ecx, %eax
	movl	%eax, dvals+36
.LBB1_9:                                # %if.end.33
	jmp	.LBB1_12
.LBB1_10:                               # %sw.bb.34
	movabsq	$.L.str.20, %rdi
	movabsq	$dvals, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movl	%eax, -108(%rbp)        # 4-byte Spill
	jmp	.LBB1_12
.LBB1_11:                               # %sw.default
	jmp	.LBB1_12
.LBB1_12:                               # %sw.epilog
	cmpl	$3, -56(%rbp)
	jne	.LBB1_18
# BB#13:                                # %if.then.37
	cmpl	$-1, dvals+24
	je	.LBB1_17
# BB#14:                                # %land.lhs.true
	movl	dvals+24, %edi
	callq	gimp_drawable_width
	movq	-48(%rbp), %rcx
	cmpl	4(%rcx), %eax
	jne	.LBB1_16
# BB#15:                                # %lor.lhs.false
	movl	dvals+24, %edi
	callq	gimp_drawable_height
	movq	-48(%rbp), %rcx
	cmpl	8(%rcx), %eax
	je	.LBB1_17
.LBB1_16:                               # %if.then.43
	movl	$1, -56(%rbp)
.LBB1_17:                               # %if.end.44
	jmp	.LBB1_18
.LBB1_18:                               # %if.end.45
	cmpl	$3, -56(%rbp)
	jne	.LBB1_24
# BB#19:                                # %if.then.47
	cmpl	$-1, dvals+28
	je	.LBB1_23
# BB#20:                                # %land.lhs.true.49
	movl	dvals+28, %edi
	callq	gimp_drawable_width
	movq	-48(%rbp), %rcx
	cmpl	4(%rcx), %eax
	jne	.LBB1_22
# BB#21:                                # %lor.lhs.false.53
	movl	dvals+28, %edi
	callq	gimp_drawable_height
	movq	-48(%rbp), %rcx
	cmpl	8(%rcx), %eax
	je	.LBB1_23
.LBB1_22:                               # %if.then.57
	movl	$1, -56(%rbp)
.LBB1_23:                               # %if.end.58
	jmp	.LBB1_24
.LBB1_24:                               # %if.end.59
	cmpl	$3, -56(%rbp)
	jne	.LBB1_32
# BB#25:                                # %land.lhs.true.61
	cmpl	$0, dvals+16
	jne	.LBB1_27
# BB#26:                                # %lor.lhs.false.63
	cmpl	$0, dvals+20
	je	.LBB1_32
.LBB1_27:                               # %if.then.65
	movabsq	$.L.str.35, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_progress_init
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	-48(%rbp), %rdi
	movl	%eax, -112(%rbp)        # 4-byte Spill
	callq	displace
	cmpl	$1, -52(%rbp)
	je	.LBB1_29
# BB#28:                                # %if.then.69
	callq	gimp_displays_flush
	movl	%eax, -116(%rbp)        # 4-byte Spill
.LBB1_29:                               # %if.end.71
	cmpl	$0, -52(%rbp)
	jne	.LBB1_31
# BB#30:                                # %if.then.73
	movabsq	$.L.str.20, %rdi
	movabsq	$dvals, %rax
	movl	$40, %edx
	movq	%rax, %rsi
	callq	gimp_procedural_db_set_data
	movl	%eax, -120(%rbp)        # 4-byte Spill
.LBB1_31:                               # %if.end.75
	jmp	.LBB1_32
.LBB1_32:                               # %if.end.76
	movl	-56(%rbp), %eax
	movl	%eax, run.values+8
	movq	-48(%rbp), %rdi
	callq	gimp_drawable_detach
.LBB1_33:                               # %return
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

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_0:
	.quad	4607182418800017408     # double 1
.LCPI3_1:
	.quad	4621819117588971520     # double 10
	.text
	.align	16, 0x90
	.type	displace_dialog,@function
displace_dialog:                        # @displace_dialog
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
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$856, %rsp              # imm = 0x358
.Ltmp17:
	.cfi_offset %rbx, -56
.Ltmp18:
	.cfi_offset %r12, -48
.Ltmp19:
	.cfi_offset %r13, -40
.Ltmp20:
	.cfi_offset %r14, -32
.Ltmp21:
	.cfi_offset %r15, -24
	leaq	-88(%rbp), %rax
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI3_1, %xmm4         # xmm4 = mem[0],zero
	xorps	%xmm5, %xmm5
	movl	$2, %esi
	movq	%rdi, -48(%rbp)
	movl	$.L.str.36, %ecx
	movl	%ecx, %edi
	xorl	%ecx, %ecx
	movl	%esi, -144(%rbp)        # 4-byte Spill
	movl	%ecx, %esi
	movl	%ecx, -148(%rbp)        # 4-byte Spill
	movq	%rax, -160(%rbp)        # 8-byte Spill
	movsd	%xmm0, -168(%rbp)       # 8-byte Spill
	movsd	%xmm4, -176(%rbp)       # 8-byte Spill
	movsd	%xmm5, -184(%rbp)       # 8-byte Spill
	callq	gimp_ui_init
	movl	$.L.str.37, %ecx
	movl	%ecx, %edi
	callq	gettext
	movq	%rsp, %rdi
	movq	$0, 32(%rdi)
	movl	$-5, 24(%rdi)
	movq	$.L.str.40, 16(%rdi)
	movl	$-6, 8(%rdi)
	movq	$.L.str.39, (%rdi)
	movl	$.L.str.38, %ecx
	movl	%ecx, %esi
	movl	$gimp_standard_help_func, %ecx
	movl	%ecx, %r8d
	movl	$.L.str.20, %ecx
	movl	%ecx, %r9d
	movl	-148(%rbp), %ecx        # 4-byte Reload
	movl	%ecx, %edi
	movb	%cl, %dl
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-192(%rbp), %rax        # 8-byte Reload
	movb	%dl, -193(%rbp)         # 1-byte Spill
	movq	%rax, %rdx
	movb	-193(%rbp), %al         # 1-byte Reload
	callq	gimp_dialog_new
	movq	%rax, -56(%rbp)
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$-5, %esi
	movl	$-6, %edx
	movl	$-1, %ecx
	movq	%rax, %rdi
	movb	-193(%rbp), %al         # 1-byte Reload
	callq	gtk_dialog_set_alternative_button_order
	movq	-56(%rbp), %rdi
	movq	%rdi, -216(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_window_set_transient
	movl	$1, %ecx
	movl	$12, %edx
	movl	%ecx, %edi
	movl	%edx, %esi
	movl	%ecx, -220(%rbp)        # 4-byte Spill
	movl	%edx, -224(%rbp)        # 4-byte Spill
	callq	gtk_box_new
	movq	%rax, -64(%rbp)
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	movl	-224(%rbp), %esi        # 4-byte Reload
	callq	gtk_container_set_border_width
	movq	-56(%rbp), %rdi
	movq	%rdi, -240(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	-220(%rbp), %edx        # 4-byte Reload
	movl	-220(%rbp), %ecx        # 4-byte Reload
	movl	-148(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	movq	-48(%rbp), %rdi
	movq	-192(%rbp), %rsi        # 8-byte Reload
	callq	gimp_drawable_preview_new
	movq	%rax, preview(%rip)
	movq	-64(%rbp), %rdi
	movq	%rdi, -256(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	preview(%rip), %rsi
	movq	%rax, %rdi
	movl	-220(%rbp), %edx        # 4-byte Reload
	movl	-220(%rbp), %ecx        # 4-byte Reload
	movl	-148(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	preview(%rip), %rdi
	callq	gtk_widget_show
	movq	preview(%rip), %rdi
	movq	-48(%rbp), %rcx
	movl	$.L.str.41, %edx
	movl	%edx, %esi
	movl	$displace, %edx
                                        # kill: RDX<def> EDX<kill>
	movl	$2, %r8d
	movq	-192(%rbp), %rax        # 8-byte Reload
	movl	%r8d, -260(%rbp)        # 4-byte Spill
	movq	%rax, %r8
	movl	-260(%rbp), %r9d        # 4-byte Reload
	callq	g_signal_connect_data
	movl	$3, %r9d
	movl	%r9d, %edi
	movl	-260(%rbp), %esi        # 4-byte Reload
	movl	-148(%rbp), %edx        # 4-byte Reload
	movq	%rax, -272(%rbp)        # 8-byte Spill
	movl	%r9d, -276(%rbp)        # 4-byte Spill
	callq	gtk_table_new
	movq	%rax, -72(%rbp)
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	movl	-224(%rbp), %esi        # 4-byte Reload
	callq	gtk_table_set_row_spacings
	movq	-72(%rbp), %rdi
	movq	%rdi, -296(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-64(%rbp), %rdi
	movq	%rdi, -304(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	movl	-148(%rbp), %edx        # 4-byte Reload
	movl	-148(%rbp), %ecx        # 4-byte Reload
	movl	-148(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movl	$.L.str.42, %ecx
	movl	%ecx, %edi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_mnemonic
	movq	%rax, toggle_x(%rip)
	movq	-72(%rbp), %rdi
	movq	%rdi, -312(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	toggle_x(%rip), %rsi
	movq	%rsp, %rdi
	movl	$0, 24(%rdi)
	movl	$0, 16(%rdi)
	movl	$4, 8(%rdi)
	movl	$4, (%rdi)
	movq	%rax, %rdi
	movl	-148(%rbp), %edx        # 4-byte Reload
	movl	-220(%rbp), %ecx        # 4-byte Reload
	movl	-148(%rbp), %r8d        # 4-byte Reload
	movl	-220(%rbp), %r9d        # 4-byte Reload
	callq	gtk_table_attach
	movq	toggle_x(%rip), %rdi
	movq	%rdi, -320(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$dvals, %ecx
                                        # kill: RCX<def> ECX<kill>
	movl	dvals+16(%rip), %esi
	movq	%rax, %rdi
	movq	%rcx, -328(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_set_active
	movq	toggle_x(%rip), %rdi
	callq	gtk_widget_show
	movq	toggle_x(%rip), %rdi
	movl	$.L.str.43, %edx
	movl	%edx, %eax
	movl	$gimp_toggle_button_update, %edx
	movl	%edx, %ecx
	movl	$dvals+16, %edx
	movl	%edx, %r10d
	movq	%rax, %rsi
	movq	%rcx, %rdx
	movq	%rcx, -336(%rbp)        # 8-byte Spill
	movq	%r10, %rcx
	movq	-192(%rbp), %r8         # 8-byte Reload
	movl	-148(%rbp), %r9d        # 4-byte Reload
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	toggle_x(%rip), %rdi
	movq	preview(%rip), %rcx
	movl	$gimp_preview_invalidate, %r9d
	movl	%r9d, %edx
	movq	-344(%rbp), %rsi        # 8-byte Reload
	movq	%rdx, -352(%rbp)        # 8-byte Spill
	movq	-192(%rbp), %r8         # 8-byte Reload
	movl	-260(%rbp), %r9d        # 4-byte Reload
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movsd	dvals(%rip), %xmm0      # xmm0 = mem[0],zero
	movq	-48(%rbp), %rcx
	movl	4(%rcx), %r9d
	addl	%r9d, %r9d
	movl	%r9d, %r11d
	negl	%r11d
	cvtsi2sdl	%r11d, %xmm1
	movl	%r9d, %ecx
	cvtsi2sdq	%rcx, %xmm2
	leaq	-88(%rbp), %rdi
	movsd	.LCPI3_1(%rip), %xmm4   # xmm4 = mem[0],zero
	xorps	%xmm5, %xmm5
	movsd	.LCPI3_0(%rip), %xmm3   # xmm3 = mem[0],zero
	movsd	%xmm3, -368(%rbp)       # 8-byte Spill
	movsd	-368(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movl	-260(%rbp), %esi        # 4-byte Reload
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	gimp_spin_button_new
	movq	%rax, -80(%rbp)
	movq	-72(%rbp), %rdi
	movq	%rdi, -384(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-80(%rbp), %rsi
	movq	%rsp, %rcx
	movl	$0, 24(%rcx)
	movl	$0, 16(%rcx)
	movl	$4, 8(%rcx)
	movl	$4, (%rcx)
	movq	%rax, %rdi
	movl	-220(%rbp), %edx        # 4-byte Reload
	movl	-260(%rbp), %ecx        # 4-byte Reload
	movl	-148(%rbp), %r8d        # 4-byte Reload
	movl	-220(%rbp), %r9d        # 4-byte Reload
	callq	gtk_table_attach
	movq	-80(%rbp), %rdi
	callq	gtk_widget_show
	movq	-88(%rbp), %rdi
	movl	$.L.str.44, %ecx
	movl	%ecx, %eax
	movl	$gimp_double_adjustment_update, %ecx
	movl	%ecx, %edx
	movq	%rax, %rsi
	movq	-328(%rbp), %rcx        # 8-byte Reload
	movq	-192(%rbp), %r8         # 8-byte Reload
	movl	-148(%rbp), %r9d        # 4-byte Reload
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-88(%rbp), %rdi
	movq	preview(%rip), %rcx
	movq	-392(%rbp), %rsi        # 8-byte Reload
	movq	-352(%rbp), %rdx        # 8-byte Reload
	movq	-192(%rbp), %r8         # 8-byte Reload
	movl	-260(%rbp), %r9d        # 4-byte Reload
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	toggle_x(%rip), %rdi
	movq	-80(%rbp), %rdx
	movl	$.L.str.45, %r9d
	movl	%r9d, %ecx
	movl	$.L.str.46, %r9d
	movl	%r9d, %esi
	movq	%rsi, -408(%rbp)        # 8-byte Spill
	movq	%rcx, %rsi
	movq	-408(%rbp), %r8         # 8-byte Reload
	movq	%rcx, -416(%rbp)        # 8-byte Spill
	movq	%r8, %rcx
	movl	-260(%rbp), %r8d        # 4-byte Reload
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	g_object_bind_property
	movq	-48(%rbp), %rsi
	movl	$displace_map_constrain, %r8d
	movl	%r8d, %edi
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	gimp_drawable_combo_box_new
	movq	%rax, -96(%rbp)
	movq	%rax, -440(%rbp)        # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-440(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	dvals+24(%rip), %esi
	movl	$gimp_int_combo_box_get_active, %r8d
	movl	%r8d, %edx
	movl	$dvals+24, %r8d
	movl	%r8d, %ecx
	movq	%rax, %rdi
	callq	gimp_int_combo_box_connect
	movq	-72(%rbp), %rdi
	movq	%rax, -448(%rbp)        # 8-byte Spill
	movq	%rdi, -456(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-456(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-96(%rbp), %rsi
	movq	%rsp, %rcx
	movl	$0, 24(%rcx)
	movl	$0, 16(%rcx)
	movl	$5, 8(%rcx)
	movl	$5, (%rcx)
	movq	%rax, %rdi
	movl	-260(%rbp), %edx        # 4-byte Reload
	movl	-276(%rbp), %ecx        # 4-byte Reload
	movl	-148(%rbp), %r8d        # 4-byte Reload
	movl	-220(%rbp), %r9d        # 4-byte Reload
	callq	gtk_table_attach
	movq	-96(%rbp), %rdi
	callq	gtk_widget_show
	movq	-96(%rbp), %rdi
	movq	preview(%rip), %rcx
	movl	$.L.str.47, %edx
	movl	%edx, %esi
	movq	-352(%rbp), %rdx        # 8-byte Reload
	movq	-192(%rbp), %r8         # 8-byte Reload
	movl	-260(%rbp), %r9d        # 4-byte Reload
	callq	g_signal_connect_data
	movq	toggle_x(%rip), %rdi
	movq	-96(%rbp), %rdx
	movq	-416(%rbp), %rsi        # 8-byte Reload
	movq	-408(%rbp), %rcx        # 8-byte Reload
	movl	-260(%rbp), %r8d        # 4-byte Reload
	movq	%rax, -464(%rbp)        # 8-byte Spill
	callq	g_object_bind_property
	movl	$.L.str.48, %r8d
	movl	%r8d, %edi
	movq	%rax, -472(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_mnemonic
	movq	%rax, toggle_y(%rip)
	movq	-72(%rbp), %rdi
	movq	%rdi, -480(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-480(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	toggle_y(%rip), %rsi
	movq	%rsp, %rcx
	movl	$0, 24(%rcx)
	movl	$0, 16(%rcx)
	movl	$4, 8(%rcx)
	movl	$4, (%rcx)
	movq	%rax, %rdi
	movl	-148(%rbp), %edx        # 4-byte Reload
	movl	-220(%rbp), %ecx        # 4-byte Reload
	movl	-220(%rbp), %r8d        # 4-byte Reload
	movl	-260(%rbp), %r9d        # 4-byte Reload
	callq	gtk_table_attach
	movq	toggle_y(%rip), %rdi
	movq	%rdi, -488(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-488(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	dvals+20(%rip), %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	toggle_y(%rip), %rdi
	callq	gtk_widget_show
	movq	toggle_y(%rip), %rdi
	movl	$dvals+20, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-344(%rbp), %rsi        # 8-byte Reload
	movq	-336(%rbp), %rdx        # 8-byte Reload
	movq	-192(%rbp), %r8         # 8-byte Reload
	movl	-148(%rbp), %r9d        # 4-byte Reload
	callq	g_signal_connect_data
	movq	toggle_y(%rip), %rdi
	movq	preview(%rip), %rcx
	movq	-344(%rbp), %rsi        # 8-byte Reload
	movq	-352(%rbp), %rdx        # 8-byte Reload
	movq	-192(%rbp), %r8         # 8-byte Reload
	movl	-260(%rbp), %r9d        # 4-byte Reload
	movq	%rax, -496(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movsd	dvals+8(%rip), %xmm0    # xmm0 = mem[0],zero
	movq	-48(%rbp), %rcx
	movl	8(%rcx), %r9d
	addl	%r9d, %r9d
	movl	%r9d, %r11d
	negl	%r11d
	cvtsi2sdl	%r11d, %xmm1
	movl	%r9d, %ecx
	cvtsi2sdq	%rcx, %xmm2
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movsd	-168(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	-176(%rbp), %xmm4       # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movsd	-184(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-168(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movl	-144(%rbp), %esi        # 4-byte Reload
	movq	%rax, -504(%rbp)        # 8-byte Spill
	callq	gimp_spin_button_new
	movq	%rax, -80(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -512(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-512(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r9d
	movl	$2, %r11d
	movl	$4, %ebx
	xorl	%r14d, %r14d
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r11d, %ecx
	movl	%r9d, %r8d
	movl	%r11d, %r9d
	movl	$4, (%rsp)
	movl	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%r14d, -516(%rbp)       # 4-byte Spill
	movl	%ebx, -520(%rbp)        # 4-byte Spill
	callq	gtk_table_attach
	movq	-80(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.44, %rsi
	movabsq	$gimp_double_adjustment_update, %rax
	movabsq	$dvals, %rdi
	addq	$8, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-88(%rbp), %r10
	movq	%rdi, -528(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, %rdx
	movq	-528(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.44, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-88(%rbp), %rdx
	movq	preview, %rdi
	movq	%rdi, -536(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-536(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -544(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.45, %rsi
	movabsq	$.L.str.46, %rcx
	movl	$2, %r8d
	movq	toggle_y, %rdx
	movq	-80(%rbp), %rdi
	movq	%rdi, -552(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	-552(%rbp), %rdx        # 8-byte Reload
	movq	%rax, -560(%rbp)        # 8-byte Spill
	callq	g_object_bind_property
	movabsq	$displace_map_constrain, %rdi
	movq	-48(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, -568(%rbp)        # 8-byte Spill
	callq	gimp_drawable_combo_box_new
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -576(%rbp)        # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-576(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$gimp_int_combo_box_get_active, %rcx
	movabsq	$dvals, %rdx
	addq	$28, %rdx
	movl	dvals+28, %esi
	movq	%rax, %rdi
	movq	%rdx, -584(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-584(%rbp), %rcx        # 8-byte Reload
	callq	gimp_int_combo_box_connect
	movabsq	$.L.str.47, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	movl	$2, %r9d
	movq	-96(%rbp), %rdx
	movq	preview, %rdi
	movq	%rdi, -592(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-592(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -600(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-72(%rbp), %rcx
	movq	%rax, -608(%rbp)        # 8-byte Spill
	movq	%rcx, -616(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-616(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %r9d
	movl	$3, %ecx
	movl	$1, %r8d
	movl	$5, %r11d
	xorl	%ebx, %ebx
	movq	-96(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	$5, (%rsp)
	movl	$5, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%ebx, -620(%rbp)        # 4-byte Spill
	movl	%r11d, -624(%rbp)       # 4-byte Spill
	callq	gtk_table_attach
	movq	-96(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.45, %rsi
	movabsq	$.L.str.46, %rcx
	movl	$2, %r8d
	movq	toggle_y, %rax
	movq	-96(%rbp), %rdi
	movq	%rdi, -632(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-632(%rbp), %rdx        # 8-byte Reload
	callq	g_object_bind_property
	xorl	%edi, %edi
	movl	$24, %esi
	movq	%rax, -640(%rbp)        # 8-byte Spill
	callq	gtk_box_new
	movq	%rax, -104(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -648(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-648(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r8d, %r8d
	movq	-104(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r8d, %edx
	movl	%r8d, %ecx
	callq	gtk_box_pack_start
	movq	-104(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.49, %rdi
	callq	gettext
	movabsq	$.L.str.50, %rdi
	movl	dvals+36, %r8d
	movq	%rax, -656(%rbp)        # 8-byte Spill
	movl	%r8d, -660(%rbp)        # 4-byte Spill
	callq	gettext
	movabsq	$.L.str.51, %rdi
	movq	%rax, -672(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$1, %edi
	movabsq	$displace_radio_update, %rsi
	movabsq	$dvals, %r10
	addq	$36, %r10
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r15d
	movq	-656(%rbp), %r12        # 8-byte Reload
	movq	%rsi, -680(%rbp)        # 8-byte Spill
	movq	%r12, %rsi
	movq	-680(%rbp), %rdx        # 8-byte Reload
	movl	%ecx, -684(%rbp)        # 4-byte Spill
	movq	%r10, %rcx
	movl	-660(%rbp), %r8d        # 4-byte Reload
	movq	-672(%rbp), %r9         # 8-byte Reload
	movl	$0, (%rsp)
	movq	$0, 8(%rsp)
	movq	%rax, 16(%rsp)
	movl	$1, 24(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 40(%rsp)
	movb	$0, %al
	movq	%r15, -696(%rbp)        # 8-byte Spill
	callq	gimp_int_radio_group_new
	movq	%rax, -112(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -704(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-704(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r8d, %r8d
	movq	-112(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r8d, %edx
	movl	%r8d, %ecx
	callq	gtk_box_pack_start
	movq	-112(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.52, %rdi
	callq	gettext
	movabsq	$.L.str.53, %rdi
	movl	dvals+32, %r8d
	movq	%rax, -712(%rbp)        # 8-byte Spill
	movl	%r8d, -716(%rbp)        # 4-byte Spill
	callq	gettext
	movabsq	$.L.str.54, %rdi
	movq	%rax, -728(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.55, %rdi
	movq	%rax, -736(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$1, %edi
	movabsq	$gimp_radio_button_update, %rsi
	movabsq	$dvals, %r9
	addq	$32, %r9
	leaq	-120(%rbp), %r10
	movl	$2, %ecx
	leaq	-128(%rbp), %r15
	movl	$3, %edx
	leaq	-136(%rbp), %r12
	xorl	%r8d, %r8d
	movl	%r8d, %r13d
	movq	-712(%rbp), %r8         # 8-byte Reload
	movq	%rsi, -744(%rbp)        # 8-byte Spill
	movq	%r8, %rsi
	movq	-744(%rbp), %r8         # 8-byte Reload
	movl	%edx, -748(%rbp)        # 4-byte Spill
	movq	%r8, %rdx
	movl	%ecx, -752(%rbp)        # 4-byte Spill
	movq	%r9, %rcx
	movl	-716(%rbp), %r8d        # 4-byte Reload
	movq	-728(%rbp), %r9         # 8-byte Reload
	movl	$1, (%rsp)
	movq	%r10, 8(%rsp)
	movq	-736(%rbp), %r10        # 8-byte Reload
	movq	%r10, 16(%rsp)
	movl	$2, 24(%rsp)
	movq	%r15, 32(%rsp)
	movq	%rax, 40(%rsp)
	movl	$3, 48(%rsp)
	movq	%r12, 56(%rsp)
	movq	$0, 64(%rsp)
	movb	$0, %al
	movq	%r13, -760(%rbp)        # 8-byte Spill
	callq	gimp_int_radio_group_new
	movq	%rax, -112(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -768(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-768(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r8d, %r8d
	movq	-112(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r8d, %edx
	movl	%r8d, %ecx
	callq	gtk_box_pack_start
	movq	-112(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.43, %rsi
	movabsq	$gimp_preview_invalidate, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movl	$2, %r9d
	movq	-120(%rbp), %rdi
	movq	preview, %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data
	movabsq	$.L.str.43, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-128(%rbp), %rdx
	movq	preview, %rdi
	movq	%rdi, -776(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-776(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -784(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.43, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-136(%rbp), %rdx
	movq	preview, %rdi
	movq	%rdi, -792(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-792(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -800(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	%rax, -808(%rbp)        # 8-byte Spill
	callq	displace_set_labels
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movq	-56(%rbp), %rax
	movq	%rax, -816(%rbp)        # 8-byte Spill
	callq	gimp_dialog_get_type
	movq	-816(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dialog_run
	cmpl	$-5, %eax
	sete	%al
	andb	$1, %al
	movzbl	%al, %r9d
	movl	%r9d, -140(%rbp)
	movq	-56(%rbp), %rdi
	callq	gtk_widget_destroy
	movl	-140(%rbp), %eax
	addq	$856, %rsp              # imm = 0x358
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	displace_dialog, .Lfunc_end3-displace_dialog
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4616189618054758400     # double 4
.LCPI4_1:
	.quad	4607182418800017408     # double 1
.LCPI4_2:
	.quad	4611686018427387904     # double 2
.LCPI4_3:
	.quad	4638672431819522048     # double 127.5
.LCPI4_4:
	.quad	4640537203540230144     # double 180
	.text
	.align	16, 0x90
	.type	displace,@function
displace:                               # @displace
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
	subq	$512, %rsp              # imm = 0x200
	movsd	.LCPI4_1, %xmm0         # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movl	$0, -396(%rbp)
	movl	$0, -400(%rbp)
	movl	$1, -404(%rbp)
	movl	$1, -408(%rbp)
	movq	$0, -416(%rbp)
	movsd	%xmm1, -352(%rbp)
	movsd	%xmm1, -344(%rbp)
	movsd	%xmm1, -336(%rbp)
	movsd	%xmm1, -328(%rbp)
	movsd	%xmm1, -304(%rbp)
	movsd	%xmm1, -296(%rbp)
	callq	atan
	xorl	%esi, %esi
	movsd	.LCPI4_0, %xmm1         # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -424(%rbp)
	movq	$0, -232(%rbp)
	movq	$0, -248(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_pixel_fetcher_new
	movq	%rax, -192(%rbp)
	movq	-192(%rbp), %rdi
	movl	dvals+32, %esi
	callq	gimp_pixel_fetcher_set_edge_mode
	movq	-8(%rbp), %rax
	movl	12(%rax), %esi
	movl	%esi, -204(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB4_2
# BB#1:                                 # %if.then
	leaq	-276(%rbp), %rsi
	leaq	-280(%rbp), %rdx
	movq	-16(%rbp), %rdi
	callq	gimp_preview_get_position
	leaq	-196(%rbp), %rsi
	leaq	-200(%rbp), %rdx
	movq	-16(%rbp), %rdi
	callq	gimp_preview_get_size
	movl	$1, %eax
	movl	%eax, %esi
	movl	-196(%rbp), %eax
	imull	-200(%rbp), %eax
	imull	-204(%rbp), %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	movq	%rax, -416(%rbp)
	jmp	.LBB4_5
.LBB4_2:                                # %if.else
	leaq	-276(%rbp), %rsi
	leaq	-280(%rbp), %rdx
	leaq	-196(%rbp), %rcx
	leaq	-200(%rbp), %r8
	movq	-8(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_mask_intersect
	cmpl	$0, %eax
	jne	.LBB4_4
# BB#3:                                 # %if.then.7
	jmp	.LBB4_89
.LBB4_4:                                # %if.end
	jmp	.LBB4_5
.LBB4_5:                                # %if.end.8
	cmpl	$1, dvals+36
	jne	.LBB4_7
# BB#6:                                 # %if.then.10
	movsd	.LCPI4_2, %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	-276(%rbp), %xmm1
	cvtsi2sdl	-196(%rbp), %xmm2
	divsd	%xmm0, %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm1, -296(%rbp)
	cvtsi2sdl	-280(%rbp), %xmm1
	cvtsi2sdl	-200(%rbp), %xmm2
	divsd	%xmm0, %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm1, -304(%rbp)
.LBB4_7:                                # %if.end.17
	movl	$0, -308(%rbp)
	movl	-196(%rbp), %eax
	imull	-200(%rbp), %eax
	movl	%eax, -312(%rbp)
	cmpl	$-1, dvals+24
	je	.LBB4_12
# BB#8:                                 # %land.lhs.true
	cmpl	$0, dvals+16
	je	.LBB4_12
# BB#9:                                 # %if.then.22
	movl	dvals+24, %edi
	callq	gimp_drawable_get
	leaq	-128(%rbp), %rdi
	xorl	%ecx, %ecx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movl	-276(%rbp), %edx
	movl	-280(%rbp), %r8d
	movl	-196(%rbp), %r9d
	movl	-200(%rbp), %r10d
	movl	%ecx, -428(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	movq	-24(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_has_alpha
	cmpl	$0, %eax
	je	.LBB4_11
# BB#10:                                # %if.then.27
	movl	$1, -396(%rbp)
.LBB4_11:                               # %if.end.28
	movq	-24(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_bpp
	movl	%eax, -404(%rbp)
.LBB4_12:                               # %if.end.31
	cmpl	$-1, dvals+28
	je	.LBB4_17
# BB#13:                                # %land.lhs.true.34
	cmpl	$0, dvals+20
	je	.LBB4_17
# BB#14:                                # %if.then.36
	movl	dvals+28, %edi
	callq	gimp_drawable_get
	leaq	-176(%rbp), %rdi
	xorl	%ecx, %ecx
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rsi
	movl	-276(%rbp), %edx
	movl	-280(%rbp), %r8d
	movl	-196(%rbp), %r9d
	movl	-200(%rbp), %r10d
	movl	%ecx, -432(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	movq	-32(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_has_alpha
	cmpl	$0, %eax
	je	.LBB4_16
# BB#15:                                # %if.then.41
	movl	$1, -400(%rbp)
.LBB4_16:                               # %if.end.42
	movq	-32(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_bpp
	movl	%eax, -408(%rbp)
.LBB4_17:                               # %if.end.45
	leaq	-80(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movl	-276(%rbp), %edx
	movl	-280(%rbp), %ecx
	movl	-196(%rbp), %r8d
	movl	-200(%rbp), %r9d
	cmpq	$0, -16(%rbp)
	sete	%al
	andb	$1, %al
	movzbl	%al, %r10d
	cmpq	$0, -16(%rbp)
	sete	%al
	andb	$1, %al
	movzbl	%al, %r11d
	movl	%r10d, (%rsp)
	movl	%r11d, 8(%rsp)
	callq	gimp_pixel_rgn_init
	cmpl	$0, dvals+16
	je	.LBB4_20
# BB#18:                                # %land.lhs.true.51
	cmpl	$0, dvals+20
	je	.LBB4_20
# BB#19:                                # %if.then.53
	movl	$3, %edi
	leaq	-80(%rbp), %rsi
	leaq	-128(%rbp), %rdx
	leaq	-176(%rbp), %rcx
	movb	$0, %al
	callq	gimp_pixel_rgns_register
	movq	%rax, -184(%rbp)
	jmp	.LBB4_27
.LBB4_20:                               # %if.else.55
	cmpl	$0, dvals+16
	je	.LBB4_22
# BB#21:                                # %if.then.57
	movl	$2, %edi
	leaq	-80(%rbp), %rsi
	leaq	-128(%rbp), %rdx
	movb	$0, %al
	callq	gimp_pixel_rgns_register
	movq	%rax, -184(%rbp)
	jmp	.LBB4_26
.LBB4_22:                               # %if.else.59
	cmpl	$0, dvals+20
	je	.LBB4_24
# BB#23:                                # %if.then.61
	movl	$2, %edi
	leaq	-80(%rbp), %rsi
	leaq	-176(%rbp), %rdx
	movb	$0, %al
	callq	gimp_pixel_rgns_register
	movq	%rax, -184(%rbp)
	jmp	.LBB4_25
.LBB4_24:                               # %if.else.63
	movq	$0, -184(%rbp)
.LBB4_25:                               # %if.end.64
	jmp	.LBB4_26
.LBB4_26:                               # %if.end.65
	jmp	.LBB4_27
.LBB4_27:                               # %if.end.66
	movq	-184(%rbp), %rax
	movq	%rax, -184(%rbp)
.LBB4_28:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_34 Depth 2
                                        #       Child Loop BB4_39 Depth 3
                                        #         Child Loop BB4_67 Depth 4
	cmpq	$0, -184(%rbp)
	je	.LBB4_82
# BB#29:                                # %for.body
                                        #   in Loop: Header=BB4_28 Depth=1
	movq	-80(%rbp), %rax
	movq	%rax, -216(%rbp)
	cmpl	$0, dvals+16
	je	.LBB4_31
# BB#30:                                # %if.then.70
                                        #   in Loop: Header=BB4_28 Depth=1
	movq	-128(%rbp), %rax
	movq	%rax, -232(%rbp)
.LBB4_31:                               # %if.end.72
                                        #   in Loop: Header=BB4_28 Depth=1
	cmpl	$0, dvals+20
	je	.LBB4_33
# BB#32:                                # %if.then.74
                                        #   in Loop: Header=BB4_28 Depth=1
	movq	-176(%rbp), %rax
	movq	%rax, -248(%rbp)
.LBB4_33:                               # %if.end.76
                                        #   in Loop: Header=BB4_28 Depth=1
	movl	-52(%rbp), %eax
	movl	%eax, -288(%rbp)
.LBB4_34:                               # %for.cond.78
                                        #   Parent Loop BB4_28 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_39 Depth 3
                                        #         Child Loop BB4_67 Depth 4
	movl	-288(%rbp), %eax
	movl	-52(%rbp), %ecx
	addl	-44(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB4_78
# BB#35:                                # %for.body.83
                                        #   in Loop: Header=BB4_34 Depth=2
	cmpq	$0, -16(%rbp)
	je	.LBB4_37
# BB#36:                                # %if.then.85
                                        #   in Loop: Header=BB4_34 Depth=2
	movq	-416(%rbp), %rax
	movl	-288(%rbp), %ecx
	subl	-280(%rbp), %ecx
	imull	-196(%rbp), %ecx
	movl	-56(%rbp), %edx
	subl	-276(%rbp), %edx
	addl	%edx, %ecx
	imull	-204(%rbp), %ecx
	movslq	%ecx, %rsi
	addq	%rsi, %rax
	movq	%rax, -224(%rbp)
	jmp	.LBB4_38
.LBB4_37:                               # %if.else.91
                                        #   in Loop: Header=BB4_34 Depth=2
	movq	-216(%rbp), %rax
	movq	%rax, -224(%rbp)
.LBB4_38:                               # %if.end.92
                                        #   in Loop: Header=BB4_34 Depth=2
	movq	-232(%rbp), %rax
	movq	%rax, -240(%rbp)
	movq	-248(%rbp), %rax
	movq	%rax, -256(%rbp)
	movl	-56(%rbp), %ecx
	movl	%ecx, -284(%rbp)
.LBB4_39:                               # %for.cond.94
                                        #   Parent Loop BB4_28 Depth=1
                                        #     Parent Loop BB4_34 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB4_67 Depth 4
	movl	-284(%rbp), %eax
	movl	-56(%rbp), %ecx
	addl	-48(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB4_72
# BB#40:                                # %for.body.99
                                        #   in Loop: Header=BB4_39 Depth=3
	cmpl	$0, dvals+16
	je	.LBB4_45
# BB#41:                                # %if.then.101
                                        #   in Loop: Header=BB4_39 Depth=3
	movq	-240(%rbp), %rdi
	movl	-396(%rbp), %esi
	movl	-404(%rbp), %edx
	callq	displace_map_give_value
	movsd	.LCPI4_3, %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm0, -384(%rbp)
	movsd	dvals, %xmm0            # xmm0 = mem[0],zero
	movsd	-384(%rbp), %xmm2       # xmm2 = mem[0],zero
	subsd	%xmm1, %xmm2
	mulsd	%xmm2, %xmm0
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -320(%rbp)
	cmpl	$0, dvals+36
	jne	.LBB4_43
# BB#42:                                # %if.then.107
                                        #   in Loop: Header=BB4_39 Depth=3
	cvtsi2sdl	-284(%rbp), %xmm0
	addsd	-320(%rbp), %xmm0
	movsd	%xmm0, -328(%rbp)
	jmp	.LBB4_44
.LBB4_43:                               # %if.else.110
                                        #   in Loop: Header=BB4_39 Depth=3
	cvtsi2sdl	-284(%rbp), %xmm0
	subsd	-296(%rbp), %xmm0
	cvtsi2sdl	-284(%rbp), %xmm1
	subsd	-296(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	cvtsi2sdl	-288(%rbp), %xmm1
	subsd	-304(%rbp), %xmm1
	cvtsi2sdl	-288(%rbp), %xmm2
	subsd	-304(%rbp), %xmm2
	mulsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	callq	sqrt
	addsd	-320(%rbp), %xmm0
	movsd	%xmm0, -344(%rbp)
.LBB4_44:                               # %if.end.124
                                        #   in Loop: Header=BB4_39 Depth=3
	movl	-404(%rbp), %eax
	movq	-240(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -240(%rbp)
	jmp	.LBB4_49
.LBB4_45:                               # %if.else.127
                                        #   in Loop: Header=BB4_39 Depth=3
	cmpl	$0, dvals+36
	jne	.LBB4_47
# BB#46:                                # %if.then.129
                                        #   in Loop: Header=BB4_39 Depth=3
	cvtsi2sdl	-284(%rbp), %xmm0
	movsd	%xmm0, -328(%rbp)
	jmp	.LBB4_48
.LBB4_47:                               # %if.else.131
                                        #   in Loop: Header=BB4_39 Depth=3
	cvtsi2sdl	-284(%rbp), %xmm0
	subsd	-296(%rbp), %xmm0
	cvtsi2sdl	-284(%rbp), %xmm1
	subsd	-296(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	cvtsi2sdl	-288(%rbp), %xmm1
	subsd	-304(%rbp), %xmm1
	cvtsi2sdl	-288(%rbp), %xmm2
	subsd	-304(%rbp), %xmm2
	mulsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	callq	sqrt
	movsd	%xmm0, -344(%rbp)
.LBB4_48:                               # %if.end.144
                                        #   in Loop: Header=BB4_39 Depth=3
	jmp	.LBB4_49
.LBB4_49:                               # %if.end.145
                                        #   in Loop: Header=BB4_39 Depth=3
	cmpl	$0, dvals+20
	je	.LBB4_54
# BB#50:                                # %if.then.147
                                        #   in Loop: Header=BB4_39 Depth=3
	movq	-256(%rbp), %rdi
	movl	-400(%rbp), %esi
	movl	-408(%rbp), %edx
	callq	displace_map_give_value
	movsd	.LCPI4_3, %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm0, -392(%rbp)
	movsd	dvals+8, %xmm0          # xmm0 = mem[0],zero
	movsd	-392(%rbp), %xmm2       # xmm2 = mem[0],zero
	subsd	%xmm1, %xmm2
	mulsd	%xmm2, %xmm0
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -320(%rbp)
	cmpl	$0, dvals+36
	jne	.LBB4_52
# BB#51:                                # %if.then.153
                                        #   in Loop: Header=BB4_39 Depth=3
	cvtsi2sdl	-288(%rbp), %xmm0
	addsd	-320(%rbp), %xmm0
	movsd	%xmm0, -336(%rbp)
	jmp	.LBB4_53
.LBB4_52:                               # %if.else.156
                                        #   in Loop: Header=BB4_39 Depth=3
	cvtsi2sdl	-284(%rbp), %xmm0
	subsd	-296(%rbp), %xmm0
	cvtsi2sdl	-288(%rbp), %xmm1
	subsd	-304(%rbp), %xmm1
	callq	atan2
	movsd	.LCPI4_3, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI4_4, %xmm2         # xmm2 = mem[0],zero
	movsd	dvals+8, %xmm3          # xmm3 = mem[0],zero
	divsd	%xmm2, %xmm3
	mulsd	-424(%rbp), %xmm3
	movsd	-392(%rbp), %xmm2       # xmm2 = mem[0],zero
	subsd	%xmm1, %xmm2
	mulsd	%xmm2, %xmm3
	divsd	%xmm1, %xmm3
	addsd	%xmm3, %xmm0
	movsd	%xmm0, -352(%rbp)
.LBB4_53:                               # %if.end.168
                                        #   in Loop: Header=BB4_39 Depth=3
	movl	-408(%rbp), %eax
	movq	-256(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -256(%rbp)
	jmp	.LBB4_58
.LBB4_54:                               # %if.else.171
                                        #   in Loop: Header=BB4_39 Depth=3
	cmpl	$0, dvals+36
	jne	.LBB4_56
# BB#55:                                # %if.then.173
                                        #   in Loop: Header=BB4_39 Depth=3
	cvtsi2sdl	-288(%rbp), %xmm0
	movsd	%xmm0, -336(%rbp)
	jmp	.LBB4_57
.LBB4_56:                               # %if.else.175
                                        #   in Loop: Header=BB4_39 Depth=3
	cvtsi2sdl	-284(%rbp), %xmm0
	subsd	-296(%rbp), %xmm0
	cvtsi2sdl	-288(%rbp), %xmm1
	subsd	-304(%rbp), %xmm1
	callq	atan2
	movsd	%xmm0, -352(%rbp)
.LBB4_57:                               # %if.end.181
                                        #   in Loop: Header=BB4_39 Depth=3
	jmp	.LBB4_58
.LBB4_58:                               # %if.end.182
                                        #   in Loop: Header=BB4_39 Depth=3
	cmpl	$0, dvals+36
	je	.LBB4_60
# BB#59:                                # %if.then.184
                                        #   in Loop: Header=BB4_39 Depth=3
	movsd	-296(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-344(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-352(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	%xmm0, -440(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	%xmm1, -448(%rbp)       # 8-byte Spill
	callq	sin
	movsd	-448(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-440(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -328(%rbp)
	movsd	-304(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-344(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-352(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	%xmm0, -456(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	%xmm1, -464(%rbp)       # 8-byte Spill
	callq	cos
	movsd	-464(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-456(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -336(%rbp)
.LBB4_60:                               # %if.end.191
                                        #   in Loop: Header=BB4_39 Depth=3
	xorps	%xmm0, %xmm0
	movsd	-328(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB4_62
# BB#61:                                # %if.then.194
                                        #   in Loop: Header=BB4_39 Depth=3
	cvttsd2si	-328(%rbp), %eax
	movl	%eax, -356(%rbp)
	jmp	.LBB4_63
.LBB4_62:                               # %if.else.196
                                        #   in Loop: Header=BB4_39 Depth=3
	xorl	%eax, %eax
	movsd	-328(%rbp), %xmm0       # xmm0 = mem[0],zero
	movd	%xmm0, %rcx
	movabsq	$-9223372036854775808, %rdx # imm = 0x8000000000000000
	xorq	%rdx, %rcx
	movd	%rcx, %xmm0
	cvttsd2si	%xmm0, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -356(%rbp)
.LBB4_63:                               # %if.end.201
                                        #   in Loop: Header=BB4_39 Depth=3
	xorps	%xmm0, %xmm0
	movsd	-336(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB4_65
# BB#64:                                # %if.then.204
                                        #   in Loop: Header=BB4_39 Depth=3
	cvttsd2si	-336(%rbp), %eax
	movl	%eax, -360(%rbp)
	jmp	.LBB4_66
.LBB4_65:                               # %if.else.206
                                        #   in Loop: Header=BB4_39 Depth=3
	xorl	%eax, %eax
	movsd	-336(%rbp), %xmm0       # xmm0 = mem[0],zero
	movd	%xmm0, %rcx
	movabsq	$-9223372036854775808, %rdx # imm = 0x8000000000000000
	xorq	%rdx, %rcx
	movd	%rcx, %xmm0
	cvttsd2si	%xmm0, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -360(%rbp)
.LBB4_66:                               # %if.end.211
                                        #   in Loop: Header=BB4_39 Depth=3
	leaq	-272(%rbp), %rcx
	movq	-192(%rbp), %rdi
	movl	-356(%rbp), %esi
	movl	-360(%rbp), %edx
	callq	gimp_pixel_fetcher_get_pixel
	leaq	-272(%rbp), %rcx
	movq	-192(%rbp), %rdi
	movl	-356(%rbp), %edx
	addl	$1, %edx
	movl	-360(%rbp), %esi
	addq	$4, %rcx
	movl	%esi, -468(%rbp)        # 4-byte Spill
	movl	%edx, %esi
	movl	-468(%rbp), %edx        # 4-byte Reload
	callq	gimp_pixel_fetcher_get_pixel
	leaq	-272(%rbp), %rcx
	movq	-192(%rbp), %rdi
	movl	-356(%rbp), %esi
	movl	-360(%rbp), %edx
	addl	$1, %edx
	addq	$8, %rcx
	callq	gimp_pixel_fetcher_get_pixel
	leaq	-272(%rbp), %rcx
	movq	-192(%rbp), %rdi
	movl	-356(%rbp), %edx
	addl	$1, %edx
	movl	-360(%rbp), %esi
	addl	$1, %esi
	addq	$12, %rcx
	movl	%esi, -472(%rbp)        # 4-byte Spill
	movl	%edx, %esi
	movl	-472(%rbp), %edx        # 4-byte Reload
	callq	gimp_pixel_fetcher_get_pixel
	movl	$0, -372(%rbp)
.LBB4_67:                               # %for.cond.222
                                        #   Parent Loop BB4_28 Depth=1
                                        #     Parent Loop BB4_34 Depth=2
                                        #       Parent Loop BB4_39 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	-372(%rbp), %eax
	cmpl	-204(%rbp), %eax
	jge	.LBB4_70
# BB#68:                                # %for.body.225
                                        #   in Loop: Header=BB4_67 Depth=4
	leaq	-364(%rbp), %rdi
	movslq	-372(%rbp), %rax
	movb	-272(%rbp,%rax), %cl
	movb	%cl, -364(%rbp)
	movslq	-372(%rbp), %rax
	movb	-268(%rbp,%rax), %cl
	movb	%cl, -363(%rbp)
	movslq	-372(%rbp), %rax
	movb	-264(%rbp,%rax), %cl
	movb	%cl, -362(%rbp)
	movslq	-372(%rbp), %rax
	movb	-260(%rbp,%rax), %cl
	movb	%cl, -361(%rbp)
	movsd	-328(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-336(%rbp), %xmm1       # xmm1 = mem[0],zero
	callq	gimp_bilinear_8
	movb	%al, -365(%rbp)
	movb	-365(%rbp), %al
	movq	-224(%rbp), %rdi
	movq	%rdi, %rdx
	addq	$1, %rdx
	movq	%rdx, -224(%rbp)
	movb	%al, (%rdi)
# BB#69:                                # %for.inc
                                        #   in Loop: Header=BB4_67 Depth=4
	movl	-372(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -372(%rbp)
	jmp	.LBB4_67
.LBB4_70:                               # %for.end
                                        #   in Loop: Header=BB4_39 Depth=3
	jmp	.LBB4_71
.LBB4_71:                               # %for.inc.243
                                        #   in Loop: Header=BB4_39 Depth=3
	movl	-284(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -284(%rbp)
	jmp	.LBB4_39
.LBB4_72:                               # %for.end.245
                                        #   in Loop: Header=BB4_34 Depth=2
	movl	-60(%rbp), %eax
	movq	-216(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -216(%rbp)
	cmpl	$0, dvals+16
	je	.LBB4_74
# BB#73:                                # %if.then.249
                                        #   in Loop: Header=BB4_34 Depth=2
	movl	-108(%rbp), %eax
	movq	-232(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -232(%rbp)
.LBB4_74:                               # %if.end.253
                                        #   in Loop: Header=BB4_34 Depth=2
	cmpl	$0, dvals+20
	je	.LBB4_76
# BB#75:                                # %if.then.255
                                        #   in Loop: Header=BB4_34 Depth=2
	movl	-156(%rbp), %eax
	movq	-248(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -248(%rbp)
.LBB4_76:                               # %if.end.259
                                        #   in Loop: Header=BB4_34 Depth=2
	jmp	.LBB4_77
.LBB4_77:                               # %for.inc.260
                                        #   in Loop: Header=BB4_34 Depth=2
	movl	-288(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -288(%rbp)
	jmp	.LBB4_34
.LBB4_78:                               # %for.end.262
                                        #   in Loop: Header=BB4_28 Depth=1
	cmpq	$0, -16(%rbp)
	jne	.LBB4_80
# BB#79:                                # %if.then.264
                                        #   in Loop: Header=BB4_28 Depth=1
	movl	-48(%rbp), %eax
	imull	-44(%rbp), %eax
	addl	-308(%rbp), %eax
	movl	%eax, -308(%rbp)
	cvtsi2sdl	-308(%rbp), %xmm0
	cvtsi2sdl	-312(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -476(%rbp)        # 4-byte Spill
.LBB4_80:                               # %if.end.273
                                        #   in Loop: Header=BB4_28 Depth=1
	jmp	.LBB4_81
.LBB4_81:                               # %for.inc.274
                                        #   in Loop: Header=BB4_28 Depth=1
	movq	-184(%rbp), %rdi
	callq	gimp_pixel_rgns_process
	movq	%rax, -184(%rbp)
	jmp	.LBB4_28
.LBB4_82:                               # %for.end.276
	movq	-192(%rbp), %rdi
	callq	gimp_pixel_fetcher_destroy
	cmpl	$0, dvals+16
	je	.LBB4_84
# BB#83:                                # %if.then.278
	movq	-24(%rbp), %rdi
	callq	gimp_drawable_detach
.LBB4_84:                               # %if.end.279
	cmpl	$0, dvals+20
	je	.LBB4_86
# BB#85:                                # %if.then.281
	movq	-32(%rbp), %rdi
	callq	gimp_drawable_detach
.LBB4_86:                               # %if.end.282
	cmpq	$0, -16(%rbp)
	je	.LBB4_88
# BB#87:                                # %if.then.284
	movq	-16(%rbp), %rdi
	movq	-416(%rbp), %rsi
	movl	-196(%rbp), %eax
	imull	-204(%rbp), %eax
	movl	%eax, %edx
	callq	gimp_preview_draw_buffer
	movq	-416(%rbp), %rdi
	callq	g_free
	jmp	.LBB4_89
.LBB4_88:                               # %if.else.286
	movsd	.LCPI4_1, %xmm0         # xmm0 = mem[0],zero
	callq	gimp_progress_update
	movq	-8(%rbp), %rdi
	movl	%eax, -480(%rbp)        # 4-byte Spill
	callq	gimp_drawable_flush
	movl	$1, %esi
	movq	-8(%rbp), %rdi
	movl	(%rdi), %edi
	callq	gimp_drawable_merge_shadow
	movq	-8(%rbp), %rcx
	movl	(%rcx), %edi
	movl	-276(%rbp), %esi
	movl	-280(%rbp), %edx
	movl	-196(%rbp), %ecx
	movl	-200(%rbp), %r8d
	movl	%eax, -484(%rbp)        # 4-byte Spill
	callq	gimp_drawable_update
	movl	%eax, -488(%rbp)        # 4-byte Spill
.LBB4_89:                               # %if.end.292
	addq	$512, %rsp              # imm = 0x200
	popq	%rbp
	retq
.Lfunc_end4:
	.size	displace, .Lfunc_end4-displace
	.cfi_endproc

	.align	16, 0x90
	.type	displace_map_constrain,@function
displace_map_constrain:                 # @displace_map_constrain
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
	.size	displace_map_constrain, .Lfunc_end5-displace_map_constrain
	.cfi_endproc

	.align	16, 0x90
	.type	displace_radio_update,@function
displace_radio_update:                  # @displace_radio_update
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_radio_button_update
	callq	displace_set_labels
	movq	preview, %rsi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	callq	gimp_preview_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_preview_invalidate
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	displace_radio_update, .Lfunc_end6-displace_radio_update
	.cfi_endproc

	.align	16, 0x90
	.type	displace_set_labels,@function
displace_set_labels:                    # @displace_set_labels
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
	callq	displace_get_label_size
	movl	%eax, -4(%rbp)
	movq	toggle_x, %rcx
	movq	%rcx, -16(%rbp)         # 8-byte Spill
	callq	gtk_button_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	dvals+36, %edx
	movl	%edx, %ecx
	movq	mtext(,%rcx,8), %rdi
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gettext
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_button_set_label
	movq	toggle_y, %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_button_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	dvals+36, %edx
	movl	%edx, %ecx
	movq	mtext+16(,%rcx,8), %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gettext
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_button_set_label
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	toggle_x, %rdi
	movl	-4(%rbp), %esi
	callq	gtk_widget_set_size_request
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	toggle_y, %rdi
	movl	-4(%rbp), %esi
	callq	gtk_widget_set_size_request
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	displace_set_labels, .Lfunc_end7-displace_set_labels
	.cfi_endproc

	.align	16, 0x90
	.type	displace_get_label_size,@function
displace_get_label_size:                # @displace_get_label_size
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
	cmpl	$0, displace_get_label_size.label_maxwidth
	jne	.LBB8_12
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
.LBB8_2:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_4 Depth 2
	cmpl	$2, -4(%rbp)
	jge	.LBB8_11
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB8_2 Depth=1
	movl	$0, -8(%rbp)
.LBB8_4:                                # %for.cond.1
                                        #   Parent Loop BB8_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$2, -8(%rbp)
	jge	.LBB8_9
# BB#5:                                 # %for.body.3
                                        #   in Loop: Header=BB8_4 Depth=2
	movq	toggle_x, %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gtk_button_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$mtext, %rsi
	movslq	-8(%rbp), %rdi
	movslq	-4(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rsi
	movq	(%rsi,%rdi,8), %rdi
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gettext
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_button_set_label
	leaq	-16(%rbp), %rsi
	movq	toggle_x, %rdi
	callq	gtk_widget_size_request
	movl	-16(%rbp), %edx
	cmpl	displace_get_label_size.label_maxwidth, %edx
	jle	.LBB8_7
# BB#6:                                 # %if.then.9
                                        #   in Loop: Header=BB8_4 Depth=2
	movl	-16(%rbp), %eax
	movl	%eax, displace_get_label_size.label_maxwidth
.LBB8_7:                                # %if.end
                                        #   in Loop: Header=BB8_4 Depth=2
	jmp	.LBB8_8
.LBB8_8:                                # %for.inc
                                        #   in Loop: Header=BB8_4 Depth=2
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB8_4
.LBB8_9:                                # %for.end
                                        #   in Loop: Header=BB8_2 Depth=1
	jmp	.LBB8_10
.LBB8_10:                               # %for.inc.11
                                        #   in Loop: Header=BB8_2 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB8_2
.LBB8_11:                               # %for.end.13
	jmp	.LBB8_12
.LBB8_12:                               # %if.end.14
	movl	displace_get_label_size.label_maxwidth, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	displace_get_label_size, .Lfunc_end8-displace_get_label_size
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI9_0:
	.quad	4589866978952703325     # double 0.0722
.LCPI9_1:
	.quad	4604617168452267173     # double 0.71519999999999995
.LCPI9_2:
	.quad	4596827742536767164     # double 0.21260000000000001
.LCPI9_3:
	.quad	4638672431819522048     # double 127.5
.LCPI9_4:
	.quad	4643176031446892544     # double 255
	.text
	.align	16, 0x90
	.type	displace_map_give_value,@function
displace_map_give_value:                # @displace_map_give_value
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	cmpl	$3, -16(%rbp)
	jl	.LBB9_2
# BB#1:                                 # %if.then
	movsd	.LCPI9_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI9_1, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI9_2, %xmm2         # xmm2 = mem[0],zero
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
	movsd	%xmm3, -24(%rbp)
	jmp	.LBB9_3
.LBB9_2:                                # %if.else
	movq	-8(%rbp), %rax
	movzbl	(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm0
	movsd	%xmm0, -24(%rbp)
.LBB9_3:                                # %if.end
	cmpl	$0, -12(%rbp)
	je	.LBB9_5
# BB#4:                                 # %if.then.12
	movsd	.LCPI9_3, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI9_4, %xmm1         # xmm1 = mem[0],zero
	movl	-16(%rbp), %eax
	decl	%eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm2
	movsd	%xmm2, -32(%rbp)
	movsd	-24(%rbp), %xmm2        # xmm2 = mem[0],zero
	subsd	%xmm0, %xmm2
	mulsd	-32(%rbp), %xmm2
	divsd	%xmm1, %xmm2
	addsd	%xmm0, %xmm2
	movsd	%xmm2, -24(%rbp)
.LBB9_5:                                # %if.end.18
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	popq	%rbp
	retq
.Lfunc_end9:
	.size	displace_map_give_value, .Lfunc_end9-displace_map_give_value
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
	.long	3                       # 0x3
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
	.long	16                      # 0x10
	.zero	4
	.quad	.L.str.14
	.quad	.L.str.15
	.long	16                      # 0x10
	.zero	4
	.quad	.L.str.16
	.quad	.L.str.17
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.18
	.quad	.L.str.19
	.size	query.args, 240

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
	.asciz	"amount-x"
	.size	.L.str.6, 9

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Displace multiplier for X or radial direction"
	.size	.L.str.7, 46

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"amount-y"
	.size	.L.str.8, 9

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Displace multiplier for Y or tangent (degrees) direction"
	.size	.L.str.9, 57

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"do-x"
	.size	.L.str.10, 5

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Displace in X or radial direction?"
	.size	.L.str.11, 35

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"do-y"
	.size	.L.str.12, 5

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Displace in Y or tangent direction?"
	.size	.L.str.13, 36

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"displace-map-x"
	.size	.L.str.14, 15

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Displacement map for X or radial direction"
	.size	.L.str.15, 43

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"displace-map-y"
	.size	.L.str.16, 15

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Displacement map for Y or tangent direction"
	.size	.L.str.17, 44

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"displace-type"
	.size	.L.str.18, 14

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Edge behavior { WRAP (1), SMEAR (2), BLACK (3) }"
	.size	.L.str.19, 49

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"plug-in-displace"
	.size	.L.str.20, 17

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Displace pixels as indicated by displacement maps"
	.size	.L.str.21, 50

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Displaces the contents of the specified drawable by the amounts specified by 'amount-x' and 'amount-y' multiplied by the luminance of corresponding pixels in the 'displace-map' drawables."
	.size	.L.str.22, 188

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Stephen Robert Norris & (ported to 1.0 by) Spencer Kimball"
	.size	.L.str.23, 59

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"Stephen Robert Norris"
	.size	.L.str.24, 22

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"1996"
	.size	.L.str.25, 5

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"_Displace..."
	.size	.L.str.26, 13

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"RGB*, GRAY*"
	.size	.L.str.27, 12

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"<Image>/Filters/Map"
	.size	.L.str.28, 20

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"plug-in-displace-polar"
	.size	.L.str.29, 23

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"Displace the contents of the specified drawable"
	.size	.L.str.30, 48

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"Just like plug-in-displace but working in polar coordinates. The drawable is whirled and pinched according to the map."
	.size	.L.str.31, 119

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"Displace Polar"
	.size	.L.str.32, 15

	.type	run.values,@object      # @run.values
	.local	run.values
	.comm	run.values,40,16
	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"gimp20-std-plug-ins"
	.size	.L.str.33, 20

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"UTF-8"
	.size	.L.str.34, 6

	.type	dvals,@object           # @dvals
	.data
	.align	8
dvals:
	.quad	4626322717216342016     # double 20
	.quad	4626322717216342016     # double 20
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	1                       # 0x1
	.long	0                       # 0x0
	.size	dvals, 40

	.type	.L.str.35,@object       # @.str.35
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.35:
	.asciz	"Displacing"
	.size	.L.str.35, 11

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"displace"
	.size	.L.str.36, 9

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"Displace"
	.size	.L.str.37, 9

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"gimp-displace"
	.size	.L.str.38, 14

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"gtk-cancel"
	.size	.L.str.39, 11

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"gtk-ok"
	.size	.L.str.40, 7

	.type	preview,@object         # @preview
	.local	preview
	.comm	preview,8,8
	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"invalidated"
	.size	.L.str.41, 12

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"_X displacement:"
	.size	.L.str.42, 17

	.type	toggle_x,@object        # @toggle_x
	.local	toggle_x
	.comm	toggle_x,8,8
	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"toggled"
	.size	.L.str.43, 8

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"value-changed"
	.size	.L.str.44, 14

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"active"
	.size	.L.str.45, 7

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"sensitive"
	.size	.L.str.46, 10

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"changed"
	.size	.L.str.47, 8

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"_Y displacement:"
	.size	.L.str.48, 17

	.type	toggle_y,@object        # @toggle_y
	.local	toggle_y
	.comm	toggle_y,8,8
	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"Displacement Mode"
	.size	.L.str.49, 18

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"_Cartesian"
	.size	.L.str.50, 11

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"_Polar"
	.size	.L.str.51, 7

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"Edge Behavior"
	.size	.L.str.52, 14

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"_Wrap"
	.size	.L.str.53, 6

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"_Smear"
	.size	.L.str.54, 7

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"_Black"
	.size	.L.str.55, 7

	.type	mtext,@object           # @mtext
	.data
	.align	16
mtext:
	.quad	.L.str.56
	.quad	.L.str.57
	.quad	.L.str.58
	.quad	.L.str.59
	.size	mtext, 32

	.type	displace_get_label_size.label_maxwidth,@object # @displace_get_label_size.label_maxwidth
	.local	displace_get_label_size.label_maxwidth
	.comm	displace_get_label_size.label_maxwidth,4,4
	.type	.L.str.56,@object       # @.str.56
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.56:
	.asciz	"_X displacement"
	.size	.L.str.56, 16

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"_Pinch"
	.size	.L.str.57, 7

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"_Y displacement"
	.size	.L.str.58, 16

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"_Whirl"
	.size	.L.str.59, 7


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
