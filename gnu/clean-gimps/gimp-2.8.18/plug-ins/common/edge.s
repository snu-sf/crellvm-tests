	.text
	.file	"edge.bc"
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
	movabsq	$.L.str.13, %rdi
	movabsq	$.L.str.14, %rsi
	movabsq	$.L.str.15, %rcx
	movabsq	$.L.str.16, %r8
	movabsq	$.L.str.17, %r9
	movabsq	$.L.str.18, %rax
	movabsq	$.L.str.19, %rdx
	movl	$1, %r10d
	movl	$6, %r11d
	xorl	%ebx, %ebx
	movabsq	$query.args, %r14
	xorl	%r15d, %r15d
	movl	%r15d, %r12d
	movabsq	$.L.str.12, %r13
	movq	%r13, -48(%rbp)
	movq	-48(%rbp), %r13
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movq	%r13, %rdx
	movq	%rax, (%rsp)
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$6, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%r14, 40(%rsp)
	movq	$0, 48(%rsp)
	movq	%r12, -64(%rbp)         # 8-byte Spill
	movl	%r11d, -68(%rbp)        # 4-byte Spill
	movl	%r10d, -72(%rbp)        # 4-byte Spill
	movl	%ebx, -76(%rbp)         # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.13, %rdi
	movabsq	$.L.str.20, %rsi
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	$3, -48(%rbp)
	movq	-24(%rbp), %rcx
	movl	8(%rcx), %esi
	movl	%esi, -44(%rbp)
# BB#1:                                 # %do.body
	callq	gimp_locale_directory
	movabsq	$.L.str.21, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.21, %rdi
	movabsq	$.L.str.22, %rsi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.21, %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	textdomain
	movq	%rax, -80(%rbp)         # 8-byte Spill
# BB#2:                                 # %do.end
	movq	-24(%rbp), %rax
	movl	88(%rax), %edi
	callq	gimp_drawable_get
	movq	%rax, -56(%rbp)
	movq	-32(%rbp), %rax
	movl	$1, (%rax)
	movq	-40(%rbp), %rax
	movq	$run.values, (%rax)
	movl	$21, run.values(%rip)
	movl	-48(%rbp), %edi
	movl	%edi, run.values+8(%rip)
	movl	-44(%rbp), %edi
	testl	%edi, %edi
	movl	%edi, -84(%rbp)         # 4-byte Spill
	je	.LBB1_3
	jmp	.LBB1_27
.LBB1_27:                               # %do.end
	movl	-84(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	je	.LBB1_6
	jmp	.LBB1_28
.LBB1_28:                               # %do.end
	movl	-84(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	je	.LBB1_15
	jmp	.LBB1_16
.LBB1_3:                                # %sw.bb
	movabsq	$.L.str.13, %rdi
	movabsq	$evals, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movq	-56(%rbp), %rdi
	movl	%eax, -96(%rbp)         # 4-byte Spill
	callq	edge_dialog
	cmpl	$0, %eax
	jne	.LBB1_5
# BB#4:                                 # %if.then
	jmp	.LBB1_26
.LBB1_5:                                # %if.end
	jmp	.LBB1_17
.LBB1_6:                                # %sw.bb.9
	cmpl	$5, -12(%rbp)
	je	.LBB1_9
# BB#7:                                 # %land.lhs.true
	cmpl	$6, -12(%rbp)
	je	.LBB1_9
# BB#8:                                 # %if.then.11
	movl	$1, -48(%rbp)
.LBB1_9:                                # %if.end.12
	cmpl	$3, -48(%rbp)
	jne	.LBB1_14
# BB#10:                                # %if.then.14
	movq	-24(%rbp), %rax
	movsd	128(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, evals
	movq	-24(%rbp), %rax
	movl	168(%rax), %ecx
	movl	%ecx, evals+12
	cmpl	$5, -12(%rbp)
	jle	.LBB1_12
# BB#11:                                # %cond.true
	movq	-24(%rbp), %rax
	movl	208(%rax), %ecx
	movl	%ecx, -100(%rbp)        # 4-byte Spill
	jmp	.LBB1_13
.LBB1_12:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jmp	.LBB1_13
.LBB1_13:                               # %cond.end
	movl	-100(%rbp), %eax        # 4-byte Reload
	movl	%eax, evals+8
.LBB1_14:                               # %if.end.24
	jmp	.LBB1_17
.LBB1_15:                               # %sw.bb.25
	movabsq	$.L.str.13, %rdi
	movabsq	$evals, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movl	%eax, -104(%rbp)        # 4-byte Spill
	jmp	.LBB1_17
.LBB1_16:                               # %sw.default
	jmp	.LBB1_17
.LBB1_17:                               # %sw.epilog
	movq	-56(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_is_rgb
	cmpl	$0, %eax
	jne	.LBB1_19
# BB#18:                                # %lor.lhs.false
	movq	-56(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_is_gray
	cmpl	$0, %eax
	je	.LBB1_24
.LBB1_19:                               # %if.then.32
	movabsq	$.L.str.23, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_progress_init
	movl	$48, %ecx
	movl	%ecx, %edi
	movl	%eax, -108(%rbp)        # 4-byte Spill
	callq	gimp_tile_cache_ntiles
	movq	-56(%rbp), %rdi
	callq	edge
	cmpl	$1, -44(%rbp)
	je	.LBB1_21
# BB#20:                                # %if.then.36
	callq	gimp_displays_flush
	movl	%eax, -112(%rbp)        # 4-byte Spill
.LBB1_21:                               # %if.end.38
	cmpl	$0, -44(%rbp)
	jne	.LBB1_23
# BB#22:                                # %if.then.40
	movabsq	$.L.str.13, %rdi
	movabsq	$evals, %rax
	movl	$16, %edx
	movq	%rax, %rsi
	callq	gimp_procedural_db_set_data
	movl	%eax, -116(%rbp)        # 4-byte Spill
.LBB1_23:                               # %if.end.42
	jmp	.LBB1_25
.LBB1_24:                               # %if.else
	movl	$0, -48(%rbp)
.LBB1_25:                               # %if.end.43
	movl	-48(%rbp), %eax
	movl	%eax, run.values+8
	movq	-56(%rbp), %rdi
	callq	gimp_drawable_detach
.LBB1_26:                               # %return
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
.LCPI3_2:
	.quad	4591870180066957722     # double 0.10000000000000001
.LCPI3_3:
	.quad	5183643170566569984     # double 3.4028234663852886E+38
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI3_4:
	.long	1056964608              # float 0.5
	.text
	.align	16, 0x90
	.type	edge_dialog,@function
edge_dialog:                            # @edge_dialog
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
	subq	$664, %rsp              # imm = 0x298
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
	movabsq	$.L.str.24, %rax
	xorl	%esi, %esi
	movq	%rdi, -48(%rbp)
	movq	$0, -120(%rbp)
	cmpl	$1, evals+12
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movl	%edx, -128(%rbp)
	cmpl	$2, evals+12
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movl	%edx, -132(%rbp)
	cmpl	$3, evals+12
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movl	%edx, -136(%rbp)
	movq	%rax, %rdi
	callq	gimp_ui_init
	movabsq	$.L.str.25, %rdi
	callq	gettext
	movabsq	$.L.str.26, %rsi
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	xorl	%ecx, %ecx
	movabsq	$gimp_standard_help_func, %r8
	movabsq	$.L.str.13, %r9
	movabsq	$.L.str.27, %rdi
	movl	$4294967290, %r10d      # imm = 0xFFFFFFFA
	movabsq	$.L.str.28, %r11
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
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
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
	movq	-56(%rbp), %rdi
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
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-56(%rbp), %rax
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
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	-48(%rbp), %rdi
	callq	gimp_drawable_preview_new
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.29, %rsi
	movabsq	$edge_preview_update, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	xorl	%r9d, %r9d
	movq	-72(%rbp), %r11
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %rdx
	movq	-208(%rbp), %rcx        # 8-byte Reload
	movq	-208(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	movl	$3, %r9d
	xorl	%edx, %edx
	movl	%r9d, %edi
	movl	%r9d, %esi
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gtk_table_new
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-88(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-64(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -244(%rbp)        # 4-byte Spill
	movl	-244(%rbp), %ecx        # 4-byte Reload
	movl	-244(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-88(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.30, %rdi
	callq	gettext
	movabsq	$.L.str.31, %rdi
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.32, %rdi
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.33, %rdi
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.34, %rdi
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.35, %rdi
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$1, %ecx
	movl	$2, %r9d
	movl	$3, %edx
	movl	$4, %r8d
	movl	$5, %r10d
	xorl	%ebx, %ebx
	movl	%ebx, %edi
	movq	-256(%rbp), %r11        # 8-byte Reload
	movq	%rdi, -296(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	-264(%rbp), %r14        # 8-byte Reload
	movl	%edx, -300(%rbp)        # 4-byte Spill
	movq	%r14, %rdx
	movq	-272(%rbp), %r15        # 8-byte Reload
	movl	%r8d, -304(%rbp)        # 4-byte Spill
	movq	%r15, %r8
	movq	-280(%rbp), %r12        # 8-byte Reload
	movq	%r12, (%rsp)
	movl	$3, 8(%rsp)
	movq	-288(%rbp), %r12        # 8-byte Reload
	movq	%r12, 16(%rsp)
	movl	$4, 24(%rsp)
	movq	%rax, 32(%rsp)
	movl	$5, 40(%rsp)
	movq	$0, 48(%rsp)
	movb	$0, %al
	movl	%r10d, -308(%rbp)       # 4-byte Spill
	callq	gimp_int_combo_box_new
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$gimp_int_combo_box_get_active, %rdx
	movabsq	$evals, %rsi
	addq	$8, %rsi
	movl	evals+8, %ecx
	movq	%rax, %rdi
	movq	%rsi, -328(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movq	-328(%rbp), %rcx        # 8-byte Reload
	callq	gimp_int_combo_box_connect
	movq	-88(%rbp), %rcx
	movq	%rax, -336(%rbp)        # 8-byte Spill
	movq	%rcx, -344(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.36, %rdi
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	xorps	%xmm0, %xmm0
	movss	.LCPI3_4, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movl	$2, %r10d
	movq	-96(%rbp), %r8
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movl	%r9d, %esi
	movl	%r9d, %edx
	movq	%rax, %rcx
	movl	%r10d, %r9d
	movl	$0, (%rsp)
	callq	gimp_table_attach_aligned
	movabsq	$.L.str.37, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movl	$2, %r9d
	movq	-96(%rbp), %rdi
	movq	-72(%rbp), %r11
	movq	%rcx, %rdx
	movq	%r11, %rcx
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-88(%rbp), %rcx
	movq	%rax, -368(%rbp)        # 8-byte Spill
	movq	%rcx, -376(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.38, %rdi
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	movl	$1, %edx
	movl	$100, %r8d
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI3_1, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI3_2, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI3_3, %xmm6         # xmm6 = mem[0],zero
	xorl	%r10d, %r10d
	movl	%r10d, %ecx
	movsd	evals, %xmm1            # xmm1 = mem[0],zero
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movl	%r9d, %esi
	movq	%rcx, -392(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movsd	%xmm0, -400(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-400(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-400(%rbp), %xmm4       # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movl	$1, (%rsp)
	movl	$0, 8(%rsp)
	movsd	-400(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	callq	gimp_scale_entry_new
	movabsq	$.L.str.39, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	movabsq	$evals, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	%rdi, -408(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-408(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.39, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-112(%rbp), %rdx
	movq	-72(%rbp), %rdi
	movq	%rdi, -416(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-416(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	xorl	%edi, %edi
	movl	$4, %esi
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	gtk_box_new
	movq	%rax, -80(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -440(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-440(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	$3, %r9d
	movl	$2, %r8d
	movl	$4, %r10d
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %ecx
	movl	$4, (%rsp)
	movl	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%r10d, -444(%rbp)       # 4-byte Spill
	callq	gtk_table_attach
	movq	-80(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.40, %rdi
	movq	-120(%rbp), %rax
	movq	%rax, -456(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-456(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_radio_button_new_with_mnemonic
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -464(%rbp)        # 8-byte Spill
	callq	gtk_radio_button_get_type
	movq	-464(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_radio_button_get_group
	movq	%rax, -120(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -472(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-472(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-104(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-104(%rbp), %rax
	movq	%rax, -480(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-480(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-128(%rbp), %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-104(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.41, %rsi
	movabsq	$gimp_toggle_button_update, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	leaq	-128(%rbp), %rdi
	movq	-104(%rbp), %r11
	movq	%rdi, -488(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %rdx
	movq	-488(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.41, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-104(%rbp), %rdx
	movq	-72(%rbp), %rdi
	movq	%rdi, -496(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-496(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -504(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.42, %rdi
	movq	-120(%rbp), %rcx
	movq	%rax, -512(%rbp)        # 8-byte Spill
	movq	%rcx, -520(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-520(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_radio_button_new_with_mnemonic
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -528(%rbp)        # 8-byte Spill
	callq	gtk_radio_button_get_type
	movq	-528(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_radio_button_get_group
	movq	%rax, -120(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -536(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-536(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r9d
	xorl	%r8d, %r8d
	movq	-104(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	callq	gtk_box_pack_start
	movq	-104(%rbp), %rax
	movq	%rax, -544(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-544(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-132(%rbp), %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-104(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.41, %rsi
	movabsq	$gimp_toggle_button_update, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	leaq	-132(%rbp), %rdi
	movq	-104(%rbp), %r11
	movq	%rdi, -552(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %rdx
	movq	-552(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.41, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-104(%rbp), %rdx
	movq	-72(%rbp), %rdi
	movq	%rdi, -560(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-560(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -568(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.43, %rdi
	movq	-120(%rbp), %rcx
	movq	%rax, -576(%rbp)        # 8-byte Spill
	movq	%rcx, -584(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-584(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_radio_button_new_with_mnemonic
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -592(%rbp)        # 8-byte Spill
	callq	gtk_radio_button_get_type
	movq	-592(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_radio_button_get_group
	movq	%rax, -120(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -600(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-600(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r9d
	xorl	%r8d, %r8d
	movq	-104(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	callq	gtk_box_pack_start
	movq	-104(%rbp), %rax
	movq	%rax, -608(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-608(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-136(%rbp), %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-104(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.41, %rsi
	movabsq	$gimp_toggle_button_update, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	leaq	-136(%rbp), %rdi
	movq	-104(%rbp), %r11
	movq	%rdi, -616(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %rdx
	movq	-616(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.41, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-104(%rbp), %rdx
	movq	-72(%rbp), %rdi
	movq	%rdi, -624(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-624(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -632(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-56(%rbp), %rdi
	movq	%rax, -640(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
	movq	-56(%rbp), %rax
	movq	%rax, -648(%rbp)        # 8-byte Spill
	callq	gimp_dialog_get_type
	movq	-648(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dialog_run
	cmpl	$-5, %eax
	sete	%r13b
	andb	$1, %r13b
	movzbl	%r13b, %eax
	movl	%eax, -124(%rbp)
	movq	-56(%rbp), %rdi
	callq	gtk_widget_destroy
	cmpl	$0, -128(%rbp)
	je	.LBB3_2
# BB#1:                                 # %if.then
	movl	$1, evals+12
	jmp	.LBB3_8
.LBB3_2:                                # %if.else
	cmpl	$0, -132(%rbp)
	je	.LBB3_4
# BB#3:                                 # %if.then.92
	movl	$2, evals+12
	jmp	.LBB3_7
.LBB3_4:                                # %if.else.93
	cmpl	$0, -136(%rbp)
	je	.LBB3_6
# BB#5:                                 # %if.then.95
	movl	$3, evals+12
.LBB3_6:                                # %if.end
	jmp	.LBB3_7
.LBB3_7:                                # %if.end.96
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.97
	movl	-124(%rbp), %eax
	addq	$664, %rsp              # imm = 0x298
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	edge_dialog, .Lfunc_end3-edge_dialog
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4607182418800017408     # double 1
.LCPI4_1:
	.quad	4576918229304087675     # double 0.01
	.text
	.align	16, 0x90
	.type	edge,@function
edge:                                   # @edge
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
	subq	$320, %rsp              # imm = 0x140
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movq	%rdi, -8(%rbp)
	ucomisd	evals, %xmm0
	jbe	.LBB4_2
# BB#1:                                 # %if.then
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, evals
.LBB4_2:                                # %if.end
	xorl	%esi, %esi
	movq	-8(%rbp), %rdi
	callq	gimp_pixel_fetcher_new
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rdi
	movl	evals+12, %esi
	callq	gimp_pixel_fetcher_set_edge_mode
	leaq	-212(%rbp), %rsi
	leaq	-216(%rbp), %rdx
	leaq	-220(%rbp), %rcx
	leaq	-224(%rbp), %r8
	movq	-8(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_mask_bounds
	movq	-8(%rbp), %rcx
	movl	(%rcx), %edi
	movl	%eax, -276(%rbp)        # 4-byte Spill
	callq	gimp_drawable_bpp
	movl	%eax, -192(%rbp)
	movq	-8(%rbp), %rcx
	movl	(%rcx), %edi
	callq	gimp_drawable_has_alpha
	movl	%eax, -196(%rbp)
	cmpl	$0, -196(%rbp)
	je	.LBB4_4
# BB#3:                                 # %if.then.6
	movl	-192(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -192(%rbp)
.LBB4_4:                                # %if.end.7
	leaq	-56(%rbp), %rdi
	xorl	%eax, %eax
	movl	$100, %ecx
	xorps	%xmm0, %xmm0
	movl	$0, -228(%rbp)
	movsd	%xmm0, -240(%rbp)
	movl	-220(%rbp), %edx
	subl	-212(%rbp), %edx
	movl	-224(%rbp), %esi
	subl	-216(%rbp), %esi
	imull	%esi, %edx
	movl	%eax, -280(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	idivl	%ecx
	movl	%eax, -232(%rbp)
	movq	-8(%rbp), %rsi
	movl	-212(%rbp), %eax
	movl	-216(%rbp), %ecx
	movl	-220(%rbp), %r8d
	subl	-212(%rbp), %r8d
	movl	-224(%rbp), %r9d
	subl	-216(%rbp), %r9d
	movl	%eax, %edx
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	leaq	-104(%rbp), %rdi
	movl	$1, %eax
	movq	-8(%rbp), %rsi
	movl	-212(%rbp), %edx
	movl	-216(%rbp), %ecx
	movl	-220(%rbp), %r8d
	subl	-212(%rbp), %r8d
	movl	-224(%rbp), %r9d
	subl	-216(%rbp), %r9d
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	movl	%eax, -284(%rbp)        # 4-byte Spill
	callq	gimp_pixel_rgn_init
	movl	$2, %edi
	leaq	-56(%rbp), %rsi
	leaq	-104(%rbp), %rdx
	movb	$0, %al
	callq	gimp_pixel_rgns_register
	movq	%rax, -112(%rbp)
.LBB4_5:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_7 Depth 2
                                        #       Child Loop BB4_9 Depth 3
                                        #         Child Loop BB4_15 Depth 4
                                        #           Child Loop BB4_17 Depth 5
                                        #             Child Loop BB4_19 Depth 6
                                        #         Child Loop BB4_28 Depth 4
	cmpq	$0, -112(%rbp)
	je	.LBB4_42
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB4_5 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -144(%rbp)
	movl	-76(%rbp), %ecx
	movl	%ecx, -208(%rbp)
.LBB4_7:                                # %for.cond.17
                                        #   Parent Loop BB4_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_9 Depth 3
                                        #         Child Loop BB4_15 Depth 4
                                        #           Child Loop BB4_17 Depth 5
                                        #             Child Loop BB4_19 Depth 6
                                        #         Child Loop BB4_28 Depth 4
	movl	-208(%rbp), %eax
	movl	-76(%rbp), %ecx
	addl	-68(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB4_38
# BB#8:                                 # %for.body.20
                                        #   in Loop: Header=BB4_7 Depth=2
	movq	-128(%rbp), %rax
	movq	%rax, -136(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -152(%rbp)
	movl	-80(%rbp), %ecx
	movl	%ecx, -204(%rbp)
.LBB4_9:                                # %for.cond.22
                                        #   Parent Loop BB4_5 Depth=1
                                        #     Parent Loop BB4_7 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB4_15 Depth 4
                                        #           Child Loop BB4_17 Depth 5
                                        #             Child Loop BB4_19 Depth 6
                                        #         Child Loop BB4_28 Depth 4
	movl	-204(%rbp), %eax
	movl	-80(%rbp), %ecx
	addl	-72(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB4_36
# BB#10:                                # %for.body.26
                                        #   in Loop: Header=BB4_9 Depth=3
	movl	-80(%rbp), %eax
	cmpl	-204(%rbp), %eax
	jge	.LBB4_27
# BB#11:                                # %land.lhs.true
                                        #   in Loop: Header=BB4_9 Depth=3
	movl	-204(%rbp), %eax
	movl	-80(%rbp), %ecx
	addl	-72(%rbp), %ecx
	subl	$2, %ecx
	cmpl	%ecx, %eax
	jge	.LBB4_27
# BB#12:                                # %land.lhs.true.34
                                        #   in Loop: Header=BB4_9 Depth=3
	movl	-76(%rbp), %eax
	cmpl	-208(%rbp), %eax
	jge	.LBB4_27
# BB#13:                                # %land.lhs.true.37
                                        #   in Loop: Header=BB4_9 Depth=3
	movl	-208(%rbp), %eax
	movl	-76(%rbp), %ecx
	addl	-68(%rbp), %ecx
	subl	$2, %ecx
	cmpl	%ecx, %eax
	jge	.LBB4_27
# BB#14:                                # %if.then.43
                                        #   in Loop: Header=BB4_9 Depth=3
	movl	$0, -200(%rbp)
.LBB4_15:                               # %for.cond.44
                                        #   Parent Loop BB4_5 Depth=1
                                        #     Parent Loop BB4_7 Depth=2
                                        #       Parent Loop BB4_9 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB4_17 Depth 5
                                        #             Child Loop BB4_19 Depth 6
	movl	-200(%rbp), %eax
	cmpl	-192(%rbp), %eax
	jge	.LBB4_26
# BB#16:                                # %for.body.46
                                        #   in Loop: Header=BB4_15 Depth=4
	movl	$0, -256(%rbp)
.LBB4_17:                               # %for.cond.47
                                        #   Parent Loop BB4_5 Depth=1
                                        #     Parent Loop BB4_7 Depth=2
                                        #       Parent Loop BB4_9 Depth=3
                                        #         Parent Loop BB4_15 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB4_19 Depth 6
	cmpl	$3, -256(%rbp)
	jge	.LBB4_24
# BB#18:                                # %for.body.49
                                        #   in Loop: Header=BB4_17 Depth=5
	movl	$0, -260(%rbp)
.LBB4_19:                               # %for.cond.50
                                        #   Parent Loop BB4_5 Depth=1
                                        #     Parent Loop BB4_7 Depth=2
                                        #       Parent Loop BB4_9 Depth=3
                                        #         Parent Loop BB4_15 Depth=4
                                        #           Parent Loop BB4_17 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	cmpl	$3, -260(%rbp)
	jge	.LBB4_22
# BB#20:                                # %for.body.52
                                        #   in Loop: Header=BB4_19 Depth=6
	movl	-260(%rbp), %eax
	subl	$1, %eax
	imull	-36(%rbp), %eax
	movl	-256(%rbp), %ecx
	subl	$1, %ecx
	imull	-40(%rbp), %ecx
	addl	%ecx, %eax
	addl	-200(%rbp), %eax
	movslq	%eax, %rdx
	movq	-136(%rbp), %rsi
	movb	(%rsi,%rdx), %dil
	imull	$3, -256(%rbp), %eax
	addl	-260(%rbp), %eax
	movslq	%eax, %rdx
	movb	%dil, -249(%rbp,%rdx)
# BB#21:                                # %for.inc
                                        #   in Loop: Header=BB4_19 Depth=6
	movl	-260(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -260(%rbp)
	jmp	.LBB4_19
.LBB4_22:                               # %for.end
                                        #   in Loop: Header=BB4_17 Depth=5
	jmp	.LBB4_23
.LBB4_23:                               # %for.inc.63
                                        #   in Loop: Header=BB4_17 Depth=5
	movl	-256(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -256(%rbp)
	jmp	.LBB4_17
.LBB4_24:                               # %for.end.65
                                        #   in Loop: Header=BB4_15 Depth=4
	leaq	-249(%rbp), %rdi
	callq	edge_detect
	movb	%al, %cl
	movslq	-200(%rbp), %rdi
	movq	-152(%rbp), %rdx
	movb	%cl, (%rdx,%rdi)
# BB#25:                                # %for.inc.69
                                        #   in Loop: Header=BB4_15 Depth=4
	movl	-200(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -200(%rbp)
	jmp	.LBB4_15
.LBB4_26:                               # %for.end.71
                                        #   in Loop: Header=BB4_9 Depth=3
	jmp	.LBB4_32
.LBB4_27:                               # %if.else
                                        #   in Loop: Header=BB4_9 Depth=3
	leaq	-156(%rbp), %rcx
	movq	-120(%rbp), %rdi
	movl	-204(%rbp), %eax
	subl	$1, %eax
	movl	-208(%rbp), %edx
	subl	$1, %edx
	movl	%eax, %esi
	callq	gimp_pixel_fetcher_get_pixel
	leaq	-168(%rbp), %rcx
	movq	-120(%rbp), %rdi
	movl	-204(%rbp), %esi
	movl	-208(%rbp), %eax
	subl	$1, %eax
	movl	%eax, %edx
	callq	gimp_pixel_fetcher_get_pixel
	leaq	-180(%rbp), %rcx
	movq	-120(%rbp), %rdi
	movl	-204(%rbp), %eax
	addl	$1, %eax
	movl	-208(%rbp), %edx
	subl	$1, %edx
	movl	%eax, %esi
	callq	gimp_pixel_fetcher_get_pixel
	leaq	-160(%rbp), %rcx
	movq	-120(%rbp), %rdi
	movl	-204(%rbp), %eax
	subl	$1, %eax
	movl	-208(%rbp), %edx
	movl	%eax, %esi
	callq	gimp_pixel_fetcher_get_pixel
	leaq	-172(%rbp), %rcx
	movq	-120(%rbp), %rdi
	movl	-204(%rbp), %esi
	movl	-208(%rbp), %edx
	callq	gimp_pixel_fetcher_get_pixel
	leaq	-184(%rbp), %rcx
	movq	-120(%rbp), %rdi
	movl	-204(%rbp), %eax
	addl	$1, %eax
	movl	-208(%rbp), %edx
	movl	%eax, %esi
	callq	gimp_pixel_fetcher_get_pixel
	leaq	-164(%rbp), %rcx
	movq	-120(%rbp), %rdi
	movl	-204(%rbp), %eax
	subl	$1, %eax
	movl	-208(%rbp), %edx
	addl	$1, %edx
	movl	%eax, %esi
	callq	gimp_pixel_fetcher_get_pixel
	leaq	-176(%rbp), %rcx
	movq	-120(%rbp), %rdi
	movl	-204(%rbp), %esi
	movl	-208(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %edx
	callq	gimp_pixel_fetcher_get_pixel
	leaq	-188(%rbp), %rcx
	movq	-120(%rbp), %rdi
	movl	-204(%rbp), %eax
	addl	$1, %eax
	movl	-208(%rbp), %edx
	addl	$1, %edx
	movl	%eax, %esi
	callq	gimp_pixel_fetcher_get_pixel
	movl	$0, -200(%rbp)
.LBB4_28:                               # %for.cond.93
                                        #   Parent Loop BB4_5 Depth=1
                                        #     Parent Loop BB4_7 Depth=2
                                        #       Parent Loop BB4_9 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	-200(%rbp), %eax
	cmpl	-192(%rbp), %eax
	jge	.LBB4_31
# BB#29:                                # %for.body.96
                                        #   in Loop: Header=BB4_28 Depth=4
	leaq	-269(%rbp), %rdi
	movslq	-200(%rbp), %rax
	movb	-156(%rbp,%rax), %cl
	movb	%cl, -269(%rbp)
	movslq	-200(%rbp), %rax
	movb	-160(%rbp,%rax), %cl
	movb	%cl, -268(%rbp)
	movslq	-200(%rbp), %rax
	movb	-164(%rbp,%rax), %cl
	movb	%cl, -267(%rbp)
	movslq	-200(%rbp), %rax
	movb	-168(%rbp,%rax), %cl
	movb	%cl, -266(%rbp)
	movslq	-200(%rbp), %rax
	movb	-172(%rbp,%rax), %cl
	movb	%cl, -265(%rbp)
	movslq	-200(%rbp), %rax
	movb	-176(%rbp,%rax), %cl
	movb	%cl, -264(%rbp)
	movslq	-200(%rbp), %rax
	movb	-180(%rbp,%rax), %cl
	movb	%cl, -263(%rbp)
	movslq	-200(%rbp), %rax
	movb	-184(%rbp,%rax), %cl
	movb	%cl, -262(%rbp)
	movslq	-200(%rbp), %rax
	movb	-188(%rbp,%rax), %cl
	movb	%cl, -261(%rbp)
	callq	edge_detect
	movb	%al, %cl
	movslq	-200(%rbp), %rdi
	movq	-152(%rbp), %rdx
	movb	%cl, (%rdx,%rdi)
# BB#30:                                # %for.inc.130
                                        #   in Loop: Header=BB4_28 Depth=4
	movl	-200(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -200(%rbp)
	jmp	.LBB4_28
.LBB4_31:                               # %for.end.132
                                        #   in Loop: Header=BB4_9 Depth=3
	jmp	.LBB4_32
.LBB4_32:                               # %if.end.133
                                        #   in Loop: Header=BB4_9 Depth=3
	cmpl	$0, -196(%rbp)
	je	.LBB4_34
# BB#33:                                # %if.then.135
                                        #   in Loop: Header=BB4_9 Depth=3
	movslq	-192(%rbp), %rax
	movq	-136(%rbp), %rcx
	movb	(%rcx,%rax), %dl
	movslq	-192(%rbp), %rax
	movq	-152(%rbp), %rcx
	movb	%dl, (%rcx,%rax)
.LBB4_34:                               # %if.end.140
                                        #   in Loop: Header=BB4_9 Depth=3
	jmp	.LBB4_35
.LBB4_35:                               # %for.inc.141
                                        #   in Loop: Header=BB4_9 Depth=3
	movl	-204(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -204(%rbp)
	movl	-40(%rbp), %eax
	movq	-136(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -136(%rbp)
	movl	-88(%rbp), %eax
	movq	-152(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -152(%rbp)
	jmp	.LBB4_9
.LBB4_36:                               # %for.end.147
                                        #   in Loop: Header=BB4_7 Depth=2
	jmp	.LBB4_37
.LBB4_37:                               # %for.inc.148
                                        #   in Loop: Header=BB4_7 Depth=2
	movl	-208(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -208(%rbp)
	movl	-36(%rbp), %eax
	movq	-128(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -128(%rbp)
	movl	-84(%rbp), %eax
	movq	-144(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -144(%rbp)
	jmp	.LBB4_7
.LBB4_38:                               # %for.end.156
                                        #   in Loop: Header=BB4_5 Depth=1
	movl	-72(%rbp), %eax
	imull	-68(%rbp), %eax
	addl	-228(%rbp), %eax
	movl	%eax, -228(%rbp)
	movl	-228(%rbp), %eax
	cmpl	-232(%rbp), %eax
	jle	.LBB4_40
# BB#39:                                # %if.then.163
                                        #   in Loop: Header=BB4_5 Depth=1
	movsd	.LCPI4_1, %xmm0         # xmm0 = mem[0],zero
	movl	-228(%rbp), %eax
	subl	-232(%rbp), %eax
	movl	%eax, -228(%rbp)
	addsd	-240(%rbp), %xmm0
	movsd	%xmm0, -240(%rbp)
	movsd	-240(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	gimp_progress_update
	movl	%eax, -288(%rbp)        # 4-byte Spill
.LBB4_40:                               # %if.end.167
                                        #   in Loop: Header=BB4_5 Depth=1
	jmp	.LBB4_41
.LBB4_41:                               # %for.inc.168
                                        #   in Loop: Header=BB4_5 Depth=1
	movq	-112(%rbp), %rdi
	callq	gimp_pixel_rgns_process
	movq	%rax, -112(%rbp)
	jmp	.LBB4_5
.LBB4_42:                               # %for.end.170
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	callq	gimp_progress_update
	movq	-120(%rbp), %rdi
	movl	%eax, -292(%rbp)        # 4-byte Spill
	callq	gimp_pixel_fetcher_destroy
	movq	-8(%rbp), %rdi
	callq	gimp_drawable_flush
	movl	$1, %esi
	movq	-8(%rbp), %rdi
	movl	(%rdi), %edi
	callq	gimp_drawable_merge_shadow
	movq	-8(%rbp), %rcx
	movl	(%rcx), %edi
	movl	-212(%rbp), %esi
	movl	-216(%rbp), %edx
	movl	-220(%rbp), %r8d
	subl	-212(%rbp), %r8d
	movl	-224(%rbp), %r9d
	subl	-216(%rbp), %r9d
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%eax, -296(%rbp)        # 4-byte Spill
	callq	gimp_drawable_update
	movl	%eax, -300(%rbp)        # 4-byte Spill
	addq	$320, %rsp              # imm = 0x140
	popq	%rbp
	retq
.Lfunc_end4:
	.size	edge, .Lfunc_end4-edge
	.cfi_endproc

	.align	16, 0x90
	.type	edge_preview_update,@function
edge_preview_update:                    # @edge_preview_update
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
	subq	$464, %rsp              # imm = 0x1D0
	movq	%rdi, -8(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	callq	gimp_drawable_preview_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_preview_get_drawable
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_bpp
	movslq	%eax, %rsi
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	movl	%esi, %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rsi
	movl	(%rsi), %edi
	callq	gimp_drawable_has_alpha
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB5_2
# BB#1:                                 # %if.then
	movl	-28(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -28(%rbp)
.LBB5_2:                                # %if.end
	leaq	-68(%rbp), %rsi
	leaq	-72(%rbp), %rdx
	movq	-8(%rbp), %rdi
	callq	gimp_preview_get_position
	leaq	-60(%rbp), %rsi
	leaq	-64(%rbp), %rdx
	movq	-8(%rbp), %rdi
	callq	gimp_preview_get_size
	leaq	-120(%rbp), %rdi
	xorl	%eax, %eax
	movq	-16(%rbp), %rsi
	movl	-68(%rbp), %edx
	movl	-72(%rbp), %ecx
	movl	-60(%rbp), %r8d
	movl	-64(%rbp), %r9d
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	movl	%eax, -156(%rbp)        # 4-byte Spill
	callq	gimp_pixel_rgn_init
	movl	$1, %eax
	movl	%eax, %esi
	movl	-60(%rbp), %eax
	imull	-64(%rbp), %eax
	movslq	%eax, %rdi
	imulq	-24(%rbp), %rdi
	callq	g_malloc_n
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	%rax, -40(%rbp)
	movl	-60(%rbp), %ecx
	imull	-64(%rbp), %ecx
	movslq	%ecx, %rax
	imulq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_malloc_n
	leaq	-120(%rbp), %rdi
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rsi
	movl	-68(%rbp), %edx
	movl	-72(%rbp), %ecx
	movl	-60(%rbp), %r8d
	movl	-64(%rbp), %r9d
	callq	gimp_pixel_rgn_get_rect
	movq	-48(%rbp), %rax
	movq	%rax, -56(%rbp)
	movl	$0, -128(%rbp)
.LBB5_3:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_5 Depth 2
                                        #       Child Loop BB5_7 Depth 3
	movl	-128(%rbp), %eax
	cmpl	-64(%rbp), %eax
	jge	.LBB5_124
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB5_3 Depth=1
	movl	$0, -124(%rbp)
.LBB5_5:                                # %for.cond.15
                                        #   Parent Loop BB5_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_7 Depth 3
	movl	-124(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jge	.LBB5_122
# BB#6:                                 # %for.body.18
                                        #   in Loop: Header=BB5_5 Depth=2
	movl	$0, -132(%rbp)
.LBB5_7:                                # %for.cond.19
                                        #   Parent Loop BB5_3 Depth=1
                                        #     Parent Loop BB5_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-132(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB5_118
# BB#8:                                 # %for.body.22
                                        #   in Loop: Header=BB5_7 Depth=3
	movq	-24(%rbp), %rax
	movl	-124(%rbp), %ecx
	subl	$1, %ecx
	movl	-60(%rbp), %edx
	subl	$1, %edx
	cmpl	%edx, %ecx
	movq	%rax, -168(%rbp)        # 8-byte Spill
	jle	.LBB5_10
# BB#9:                                 # %cond.true
                                        #   in Loop: Header=BB5_7 Depth=3
	movl	-60(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -172(%rbp)        # 4-byte Spill
	jmp	.LBB5_14
.LBB5_10:                               # %cond.false
                                        #   in Loop: Header=BB5_7 Depth=3
	movl	-124(%rbp), %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB5_12
# BB#11:                                # %cond.true.30
                                        #   in Loop: Header=BB5_7 Depth=3
	xorl	%eax, %eax
	movl	%eax, -176(%rbp)        # 4-byte Spill
	jmp	.LBB5_13
.LBB5_12:                               # %cond.false.31
                                        #   in Loop: Header=BB5_7 Depth=3
	movl	-124(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -176(%rbp)        # 4-byte Spill
.LBB5_13:                               # %cond.end
                                        #   in Loop: Header=BB5_7 Depth=3
	movl	-176(%rbp), %eax        # 4-byte Reload
	movl	%eax, -172(%rbp)        # 4-byte Spill
.LBB5_14:                               # %cond.end.33
                                        #   in Loop: Header=BB5_7 Depth=3
	movl	-172(%rbp), %eax        # 4-byte Reload
	movl	-60(%rbp), %ecx
	movl	-128(%rbp), %edx
	subl	$1, %edx
	movl	-64(%rbp), %esi
	subl	$1, %esi
	cmpl	%esi, %edx
	movl	%eax, -180(%rbp)        # 4-byte Spill
	movl	%ecx, -184(%rbp)        # 4-byte Spill
	jle	.LBB5_16
# BB#15:                                # %cond.true.39
                                        #   in Loop: Header=BB5_7 Depth=3
	movl	-64(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -188(%rbp)        # 4-byte Spill
	jmp	.LBB5_20
.LBB5_16:                               # %cond.false.41
                                        #   in Loop: Header=BB5_7 Depth=3
	movl	-128(%rbp), %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB5_18
# BB#17:                                # %cond.true.45
                                        #   in Loop: Header=BB5_7 Depth=3
	xorl	%eax, %eax
	movl	%eax, -192(%rbp)        # 4-byte Spill
	jmp	.LBB5_19
.LBB5_18:                               # %cond.false.46
                                        #   in Loop: Header=BB5_7 Depth=3
	movl	-128(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -192(%rbp)        # 4-byte Spill
.LBB5_19:                               # %cond.end.48
                                        #   in Loop: Header=BB5_7 Depth=3
	movl	-192(%rbp), %eax        # 4-byte Reload
	movl	%eax, -188(%rbp)        # 4-byte Spill
.LBB5_20:                               # %cond.end.50
                                        #   in Loop: Header=BB5_7 Depth=3
	movl	-188(%rbp), %eax        # 4-byte Reload
	movl	-184(%rbp), %ecx        # 4-byte Reload
	imull	%eax, %ecx
	movl	-180(%rbp), %eax        # 4-byte Reload
	addl	%ecx, %eax
	movslq	%eax, %rdx
	movq	-168(%rbp), %rsi        # 8-byte Reload
	imulq	%rdx, %rsi
	movslq	-132(%rbp), %rdx
	addq	%rdx, %rsi
	movq	-40(%rbp), %rdx
	movb	(%rdx,%rsi), %dil
	movb	%dil, -141(%rbp)
	movq	-24(%rbp), %rdx
	movl	-124(%rbp), %eax
	subl	$1, %eax
	movl	-60(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	movq	%rdx, -200(%rbp)        # 8-byte Spill
	jle	.LBB5_22
# BB#21:                                # %cond.true.62
                                        #   in Loop: Header=BB5_7 Depth=3
	movl	-60(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -204(%rbp)        # 4-byte Spill
	jmp	.LBB5_26
.LBB5_22:                               # %cond.false.64
                                        #   in Loop: Header=BB5_7 Depth=3
	movl	-124(%rbp), %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB5_24
# BB#23:                                # %cond.true.68
                                        #   in Loop: Header=BB5_7 Depth=3
	xorl	%eax, %eax
	movl	%eax, -208(%rbp)        # 4-byte Spill
	jmp	.LBB5_25
.LBB5_24:                               # %cond.false.69
                                        #   in Loop: Header=BB5_7 Depth=3
	movl	-124(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -208(%rbp)        # 4-byte Spill
.LBB5_25:                               # %cond.end.71
                                        #   in Loop: Header=BB5_7 Depth=3
	movl	-208(%rbp), %eax        # 4-byte Reload
	movl	%eax, -204(%rbp)        # 4-byte Spill
.LBB5_26:                               # %cond.end.73
                                        #   in Loop: Header=BB5_7 Depth=3
	movl	-204(%rbp), %eax        # 4-byte Reload
	movl	-60(%rbp), %ecx
	movl	-128(%rbp), %edx
	movl	-64(%rbp), %esi
	subl	$1, %esi
	cmpl	%esi, %edx
	movl	%eax, -212(%rbp)        # 4-byte Spill
	movl	%ecx, -216(%rbp)        # 4-byte Spill
	jle	.LBB5_28
# BB#27:                                # %cond.true.78
                                        #   in Loop: Header=BB5_7 Depth=3
	movl	-64(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -220(%rbp)        # 4-byte Spill
	jmp	.LBB5_32
.LBB5_28:                               # %cond.false.80
                                        #   in Loop: Header=BB5_7 Depth=3
	cmpl	$0, -128(%rbp)
	jge	.LBB5_30
# BB#29:                                # %cond.true.83
                                        #   in Loop: Header=BB5_7 Depth=3
	xorl	%eax, %eax
	movl	%eax, -224(%rbp)        # 4-byte Spill
	jmp	.LBB5_31
.LBB5_30:                               # %cond.false.84
                                        #   in Loop: Header=BB5_7 Depth=3
	movl	-128(%rbp), %eax
	movl	%eax, -224(%rbp)        # 4-byte Spill
.LBB5_31:                               # %cond.end.85
                                        #   in Loop: Header=BB5_7 Depth=3
	movl	-224(%rbp), %eax        # 4-byte Reload
	movl	%eax, -220(%rbp)        # 4-byte Spill
.LBB5_32:                               # %cond.end.87
                                        #   in Loop: Header=BB5_7 Depth=3
	movl	-220(%rbp), %eax        # 4-byte Reload
	movl	-216(%rbp), %ecx        # 4-byte Reload
	imull	%eax, %ecx
	movl	-212(%rbp), %eax        # 4-byte Reload
	addl	%ecx, %eax
	movslq	%eax, %rdx
	movq	-200(%rbp), %rsi        # 8-byte Reload
	imulq	%rdx, %rsi
	movslq	-132(%rbp), %rdx
	addq	%rdx, %rsi
	movq	-40(%rbp), %rdx
	movb	(%rdx,%rsi), %dil
	movb	%dil, -140(%rbp)
	movq	-24(%rbp), %rdx
	movl	-124(%rbp), %eax
	subl	$1, %eax
	movl	-60(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	movq	%rdx, -232(%rbp)        # 8-byte Spill
	jle	.LBB5_34
# BB#33:                                # %cond.true.101
                                        #   in Loop: Header=BB5_7 Depth=3
	movl	-60(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -236(%rbp)        # 4-byte Spill
	jmp	.LBB5_38
.LBB5_34:                               # %cond.false.103
                                        #   in Loop: Header=BB5_7 Depth=3
	movl	-124(%rbp), %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB5_36
# BB#35:                                # %cond.true.107
                                        #   in Loop: Header=BB5_7 Depth=3
	xorl	%eax, %eax
	movl	%eax, -240(%rbp)        # 4-byte Spill
	jmp	.LBB5_37
.LBB5_36:                               # %cond.false.108
                                        #   in Loop: Header=BB5_7 Depth=3
	movl	-124(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -240(%rbp)        # 4-byte Spill
.LBB5_37:                               # %cond.end.110
                                        #   in Loop: Header=BB5_7 Depth=3
	movl	-240(%rbp), %eax        # 4-byte Reload
	movl	%eax, -236(%rbp)        # 4-byte Spill
.LBB5_38:                               # %cond.end.112
                                        #   in Loop: Header=BB5_7 Depth=3
	movl	-236(%rbp), %eax        # 4-byte Reload
	movl	-60(%rbp), %ecx
	movl	-128(%rbp), %edx
	addl	$1, %edx
	movl	-64(%rbp), %esi
	subl	$1, %esi
	cmpl	%esi, %edx
	movl	%eax, -244(%rbp)        # 4-byte Spill
	movl	%ecx, -248(%rbp)        # 4-byte Spill
	jle	.LBB5_40
# BB#39:                                # %cond.true.118
                                        #   in Loop: Header=BB5_7 Depth=3
	movl	-64(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -252(%rbp)        # 4-byte Spill
	jmp	.LBB5_44
.LBB5_40:                               # %cond.false.120
                                        #   in Loop: Header=BB5_7 Depth=3
	movl	-128(%rbp), %eax
	addl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB5_42
# BB#41:                                # %cond.true.124
                                        #   in Loop: Header=BB5_7 Depth=3
	xorl	%eax, %eax
	movl	%eax, -256(%rbp)        # 4-byte Spill
	jmp	.LBB5_43
.LBB5_42:                               # %cond.false.125
                                        #   in Loop: Header=BB5_7 Depth=3
	movl	-128(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -256(%rbp)        # 4-byte Spill
.LBB5_43:                               # %cond.end.127
                                        #   in Loop: Header=BB5_7 Depth=3
	movl	-256(%rbp), %eax        # 4-byte Reload
	movl	%eax, -252(%rbp)        # 4-byte Spill
.LBB5_44:                               # %cond.end.129
                                        #   in Loop: Header=BB5_7 Depth=3
	movl	-252(%rbp), %eax        # 4-byte Reload
	movl	-248(%rbp), %ecx        # 4-byte Reload
	imull	%eax, %ecx
	movl	-244(%rbp), %eax        # 4-byte Reload
	addl	%ecx, %eax
	movslq	%eax, %rdx
	movq	-232(%rbp), %rsi        # 8-byte Reload
	imulq	%rdx, %rsi
	movslq	-132(%rbp), %rdx
	addq	%rdx, %rsi
	movq	-40(%rbp), %rdx
	movb	(%rdx,%rsi), %dil
	movb	%dil, -139(%rbp)
	movq	-24(%rbp), %rdx
	movl	-124(%rbp), %eax
	movl	-60(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	movq	%rdx, -264(%rbp)        # 8-byte Spill
	jle	.LBB5_46
# BB#45:                                # %cond.true.142
                                        #   in Loop: Header=BB5_7 Depth=3
	movl	-60(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -268(%rbp)        # 4-byte Spill
	jmp	.LBB5_50
.LBB5_46:                               # %cond.false.144
                                        #   in Loop: Header=BB5_7 Depth=3
	cmpl	$0, -124(%rbp)
	jge	.LBB5_48
# BB#47:                                # %cond.true.147
                                        #   in Loop: Header=BB5_7 Depth=3
	xorl	%eax, %eax
	movl	%eax, -272(%rbp)        # 4-byte Spill
	jmp	.LBB5_49
.LBB5_48:                               # %cond.false.148
                                        #   in Loop: Header=BB5_7 Depth=3
	movl	-124(%rbp), %eax
	movl	%eax, -272(%rbp)        # 4-byte Spill
.LBB5_49:                               # %cond.end.149
                                        #   in Loop: Header=BB5_7 Depth=3
	movl	-272(%rbp), %eax        # 4-byte Reload
	movl	%eax, -268(%rbp)        # 4-byte Spill
.LBB5_50:                               # %cond.end.151
                                        #   in Loop: Header=BB5_7 Depth=3
	movl	-268(%rbp), %eax        # 4-byte Reload
	movl	-60(%rbp), %ecx
	movl	-128(%rbp), %edx
	subl	$1, %edx
	movl	-64(%rbp), %esi
	subl	$1, %esi
	cmpl	%esi, %edx
	movl	%eax, -276(%rbp)        # 4-byte Spill
	movl	%ecx, -280(%rbp)        # 4-byte Spill
	jle	.LBB5_52
# BB#51:                                # %cond.true.157
                                        #   in Loop: Header=BB5_7 Depth=3
	movl	-64(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -284(%rbp)        # 4-byte Spill
	jmp	.LBB5_56
.LBB5_52:                               # %cond.false.159
                                        #   in Loop: Header=BB5_7 Depth=3
	movl	-128(%rbp), %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB5_54
# BB#53:                                # %cond.true.163
                                        #   in Loop: Header=BB5_7 Depth=3
	xorl	%eax, %eax
	movl	%eax, -288(%rbp)        # 4-byte Spill
	jmp	.LBB5_55
.LBB5_54:                               # %cond.false.164
                                        #   in Loop: Header=BB5_7 Depth=3
	movl	-128(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -288(%rbp)        # 4-byte Spill
.LBB5_55:                               # %cond.end.166
                                        #   in Loop: Header=BB5_7 Depth=3
	movl	-288(%rbp), %eax        # 4-byte Reload
	movl	%eax, -284(%rbp)        # 4-byte Spill
.LBB5_56:                               # %cond.end.168
                                        #   in Loop: Header=BB5_7 Depth=3
	movl	-284(%rbp), %eax        # 4-byte Reload
	movl	-280(%rbp), %ecx        # 4-byte Reload
	imull	%eax, %ecx
	movl	-276(%rbp), %eax        # 4-byte Reload
	addl	%ecx, %eax
	movslq	%eax, %rdx
	movq	-264(%rbp), %rsi        # 8-byte Reload
	imulq	%rdx, %rsi
	movslq	-132(%rbp), %rdx
	addq	%rdx, %rsi
	movq	-40(%rbp), %rdx
	movb	(%rdx,%rsi), %dil
	movb	%dil, -138(%rbp)
	movq	-24(%rbp), %rdx
	movl	-124(%rbp), %eax
	movl	-60(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	movq	%rdx, -296(%rbp)        # 8-byte Spill
	jle	.LBB5_58
# BB#57:                                # %cond.true.181
                                        #   in Loop: Header=BB5_7 Depth=3
	movl	-60(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -300(%rbp)        # 4-byte Spill
	jmp	.LBB5_62
.LBB5_58:                               # %cond.false.183
                                        #   in Loop: Header=BB5_7 Depth=3
	cmpl	$0, -124(%rbp)
	jge	.LBB5_60
# BB#59:                                # %cond.true.186
                                        #   in Loop: Header=BB5_7 Depth=3
	xorl	%eax, %eax
	movl	%eax, -304(%rbp)        # 4-byte Spill
	jmp	.LBB5_61
.LBB5_60:                               # %cond.false.187
                                        #   in Loop: Header=BB5_7 Depth=3
	movl	-124(%rbp), %eax
	movl	%eax, -304(%rbp)        # 4-byte Spill
.LBB5_61:                               # %cond.end.188
                                        #   in Loop: Header=BB5_7 Depth=3
	movl	-304(%rbp), %eax        # 4-byte Reload
	movl	%eax, -300(%rbp)        # 4-byte Spill
.LBB5_62:                               # %cond.end.190
                                        #   in Loop: Header=BB5_7 Depth=3
	movl	-300(%rbp), %eax        # 4-byte Reload
	movl	-60(%rbp), %ecx
	movl	-128(%rbp), %edx
	movl	-64(%rbp), %esi
	subl	$1, %esi
	cmpl	%esi, %edx
	movl	%eax, -308(%rbp)        # 4-byte Spill
	movl	%ecx, -312(%rbp)        # 4-byte Spill
	jle	.LBB5_64
# BB#63:                                # %cond.true.195
                                        #   in Loop: Header=BB5_7 Depth=3
	movl	-64(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -316(%rbp)        # 4-byte Spill
	jmp	.LBB5_68
.LBB5_64:                               # %cond.false.197
                                        #   in Loop: Header=BB5_7 Depth=3
	cmpl	$0, -128(%rbp)
	jge	.LBB5_66
# BB#65:                                # %cond.true.200
                                        #   in Loop: Header=BB5_7 Depth=3
	xorl	%eax, %eax
	movl	%eax, -320(%rbp)        # 4-byte Spill
	jmp	.LBB5_67
.LBB5_66:                               # %cond.false.201
                                        #   in Loop: Header=BB5_7 Depth=3
	movl	-128(%rbp), %eax
	movl	%eax, -320(%rbp)        # 4-byte Spill
.LBB5_67:                               # %cond.end.202
                                        #   in Loop: Header=BB5_7 Depth=3
	movl	-320(%rbp), %eax        # 4-byte Reload
	movl	%eax, -316(%rbp)        # 4-byte Spill
.LBB5_68:                               # %cond.end.204
                                        #   in Loop: Header=BB5_7 Depth=3
	movl	-316(%rbp), %eax        # 4-byte Reload
	movl	-312(%rbp), %ecx        # 4-byte Reload
	imull	%eax, %ecx
	movl	-308(%rbp), %eax        # 4-byte Reload
	addl	%ecx, %eax
	movslq	%eax, %rdx
	movq	-296(%rbp), %rsi        # 8-byte Reload
	imulq	%rdx, %rsi
	movslq	-132(%rbp), %rdx
	addq	%rdx, %rsi
	movq	-40(%rbp), %rdx
	movb	(%rdx,%rsi), %dil
	movb	%dil, -137(%rbp)
	movq	-24(%rbp), %rdx
	movl	-124(%rbp), %eax
	movl	-60(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	movq	%rdx, -328(%rbp)        # 8-byte Spill
	jle	.LBB5_70
# BB#69:                                # %cond.true.217
                                        #   in Loop: Header=BB5_7 Depth=3
	movl	-60(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -332(%rbp)        # 4-byte Spill
	jmp	.LBB5_74
.LBB5_70:                               # %cond.false.219
                                        #   in Loop: Header=BB5_7 Depth=3
	cmpl	$0, -124(%rbp)
	jge	.LBB5_72
# BB#71:                                # %cond.true.222
                                        #   in Loop: Header=BB5_7 Depth=3
	xorl	%eax, %eax
	movl	%eax, -336(%rbp)        # 4-byte Spill
	jmp	.LBB5_73
.LBB5_72:                               # %cond.false.223
                                        #   in Loop: Header=BB5_7 Depth=3
	movl	-124(%rbp), %eax
	movl	%eax, -336(%rbp)        # 4-byte Spill
.LBB5_73:                               # %cond.end.224
                                        #   in Loop: Header=BB5_7 Depth=3
	movl	-336(%rbp), %eax        # 4-byte Reload
	movl	%eax, -332(%rbp)        # 4-byte Spill
.LBB5_74:                               # %cond.end.226
                                        #   in Loop: Header=BB5_7 Depth=3
	movl	-332(%rbp), %eax        # 4-byte Reload
	movl	-60(%rbp), %ecx
	movl	-128(%rbp), %edx
	addl	$1, %edx
	movl	-64(%rbp), %esi
	subl	$1, %esi
	cmpl	%esi, %edx
	movl	%eax, -340(%rbp)        # 4-byte Spill
	movl	%ecx, -344(%rbp)        # 4-byte Spill
	jle	.LBB5_76
# BB#75:                                # %cond.true.232
                                        #   in Loop: Header=BB5_7 Depth=3
	movl	-64(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -348(%rbp)        # 4-byte Spill
	jmp	.LBB5_80
.LBB5_76:                               # %cond.false.234
                                        #   in Loop: Header=BB5_7 Depth=3
	movl	-128(%rbp), %eax
	addl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB5_78
# BB#77:                                # %cond.true.238
                                        #   in Loop: Header=BB5_7 Depth=3
	xorl	%eax, %eax
	movl	%eax, -352(%rbp)        # 4-byte Spill
	jmp	.LBB5_79
.LBB5_78:                               # %cond.false.239
                                        #   in Loop: Header=BB5_7 Depth=3
	movl	-128(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -352(%rbp)        # 4-byte Spill
.LBB5_79:                               # %cond.end.241
                                        #   in Loop: Header=BB5_7 Depth=3
	movl	-352(%rbp), %eax        # 4-byte Reload
	movl	%eax, -348(%rbp)        # 4-byte Spill
.LBB5_80:                               # %cond.end.243
                                        #   in Loop: Header=BB5_7 Depth=3
	movl	-348(%rbp), %eax        # 4-byte Reload
	movl	-344(%rbp), %ecx        # 4-byte Reload
	imull	%eax, %ecx
	movl	-340(%rbp), %eax        # 4-byte Reload
	addl	%ecx, %eax
	movslq	%eax, %rdx
	movq	-328(%rbp), %rsi        # 8-byte Reload
	imulq	%rdx, %rsi
	movslq	-132(%rbp), %rdx
	addq	%rdx, %rsi
	movq	-40(%rbp), %rdx
	movb	(%rdx,%rsi), %dil
	movb	%dil, -136(%rbp)
	movq	-24(%rbp), %rdx
	movl	-124(%rbp), %eax
	addl	$1, %eax
	movl	-60(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	movq	%rdx, -360(%rbp)        # 8-byte Spill
	jle	.LBB5_82
# BB#81:                                # %cond.true.257
                                        #   in Loop: Header=BB5_7 Depth=3
	movl	-60(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -364(%rbp)        # 4-byte Spill
	jmp	.LBB5_86
.LBB5_82:                               # %cond.false.259
                                        #   in Loop: Header=BB5_7 Depth=3
	movl	-124(%rbp), %eax
	addl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB5_84
# BB#83:                                # %cond.true.263
                                        #   in Loop: Header=BB5_7 Depth=3
	xorl	%eax, %eax
	movl	%eax, -368(%rbp)        # 4-byte Spill
	jmp	.LBB5_85
.LBB5_84:                               # %cond.false.264
                                        #   in Loop: Header=BB5_7 Depth=3
	movl	-124(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -368(%rbp)        # 4-byte Spill
.LBB5_85:                               # %cond.end.266
                                        #   in Loop: Header=BB5_7 Depth=3
	movl	-368(%rbp), %eax        # 4-byte Reload
	movl	%eax, -364(%rbp)        # 4-byte Spill
.LBB5_86:                               # %cond.end.268
                                        #   in Loop: Header=BB5_7 Depth=3
	movl	-364(%rbp), %eax        # 4-byte Reload
	movl	-60(%rbp), %ecx
	movl	-128(%rbp), %edx
	subl	$1, %edx
	movl	-64(%rbp), %esi
	subl	$1, %esi
	cmpl	%esi, %edx
	movl	%eax, -372(%rbp)        # 4-byte Spill
	movl	%ecx, -376(%rbp)        # 4-byte Spill
	jle	.LBB5_88
# BB#87:                                # %cond.true.274
                                        #   in Loop: Header=BB5_7 Depth=3
	movl	-64(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -380(%rbp)        # 4-byte Spill
	jmp	.LBB5_92
.LBB5_88:                               # %cond.false.276
                                        #   in Loop: Header=BB5_7 Depth=3
	movl	-128(%rbp), %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB5_90
# BB#89:                                # %cond.true.280
                                        #   in Loop: Header=BB5_7 Depth=3
	xorl	%eax, %eax
	movl	%eax, -384(%rbp)        # 4-byte Spill
	jmp	.LBB5_91
.LBB5_90:                               # %cond.false.281
                                        #   in Loop: Header=BB5_7 Depth=3
	movl	-128(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -384(%rbp)        # 4-byte Spill
.LBB5_91:                               # %cond.end.283
                                        #   in Loop: Header=BB5_7 Depth=3
	movl	-384(%rbp), %eax        # 4-byte Reload
	movl	%eax, -380(%rbp)        # 4-byte Spill
.LBB5_92:                               # %cond.end.285
                                        #   in Loop: Header=BB5_7 Depth=3
	movl	-380(%rbp), %eax        # 4-byte Reload
	movl	-376(%rbp), %ecx        # 4-byte Reload
	imull	%eax, %ecx
	movl	-372(%rbp), %eax        # 4-byte Reload
	addl	%ecx, %eax
	movslq	%eax, %rdx
	movq	-360(%rbp), %rsi        # 8-byte Reload
	imulq	%rdx, %rsi
	movslq	-132(%rbp), %rdx
	addq	%rdx, %rsi
	movq	-40(%rbp), %rdx
	movb	(%rdx,%rsi), %dil
	movb	%dil, -135(%rbp)
	movq	-24(%rbp), %rdx
	movl	-124(%rbp), %eax
	addl	$1, %eax
	movl	-60(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	movq	%rdx, -392(%rbp)        # 8-byte Spill
	jle	.LBB5_94
# BB#93:                                # %cond.true.299
                                        #   in Loop: Header=BB5_7 Depth=3
	movl	-60(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -396(%rbp)        # 4-byte Spill
	jmp	.LBB5_98
.LBB5_94:                               # %cond.false.301
                                        #   in Loop: Header=BB5_7 Depth=3
	movl	-124(%rbp), %eax
	addl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB5_96
# BB#95:                                # %cond.true.305
                                        #   in Loop: Header=BB5_7 Depth=3
	xorl	%eax, %eax
	movl	%eax, -400(%rbp)        # 4-byte Spill
	jmp	.LBB5_97
.LBB5_96:                               # %cond.false.306
                                        #   in Loop: Header=BB5_7 Depth=3
	movl	-124(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -400(%rbp)        # 4-byte Spill
.LBB5_97:                               # %cond.end.308
                                        #   in Loop: Header=BB5_7 Depth=3
	movl	-400(%rbp), %eax        # 4-byte Reload
	movl	%eax, -396(%rbp)        # 4-byte Spill
.LBB5_98:                               # %cond.end.310
                                        #   in Loop: Header=BB5_7 Depth=3
	movl	-396(%rbp), %eax        # 4-byte Reload
	movl	-60(%rbp), %ecx
	movl	-128(%rbp), %edx
	movl	-64(%rbp), %esi
	subl	$1, %esi
	cmpl	%esi, %edx
	movl	%eax, -404(%rbp)        # 4-byte Spill
	movl	%ecx, -408(%rbp)        # 4-byte Spill
	jle	.LBB5_100
# BB#99:                                # %cond.true.315
                                        #   in Loop: Header=BB5_7 Depth=3
	movl	-64(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -412(%rbp)        # 4-byte Spill
	jmp	.LBB5_104
.LBB5_100:                              # %cond.false.317
                                        #   in Loop: Header=BB5_7 Depth=3
	cmpl	$0, -128(%rbp)
	jge	.LBB5_102
# BB#101:                               # %cond.true.320
                                        #   in Loop: Header=BB5_7 Depth=3
	xorl	%eax, %eax
	movl	%eax, -416(%rbp)        # 4-byte Spill
	jmp	.LBB5_103
.LBB5_102:                              # %cond.false.321
                                        #   in Loop: Header=BB5_7 Depth=3
	movl	-128(%rbp), %eax
	movl	%eax, -416(%rbp)        # 4-byte Spill
.LBB5_103:                              # %cond.end.322
                                        #   in Loop: Header=BB5_7 Depth=3
	movl	-416(%rbp), %eax        # 4-byte Reload
	movl	%eax, -412(%rbp)        # 4-byte Spill
.LBB5_104:                              # %cond.end.324
                                        #   in Loop: Header=BB5_7 Depth=3
	movl	-412(%rbp), %eax        # 4-byte Reload
	movl	-408(%rbp), %ecx        # 4-byte Reload
	imull	%eax, %ecx
	movl	-404(%rbp), %eax        # 4-byte Reload
	addl	%ecx, %eax
	movslq	%eax, %rdx
	movq	-392(%rbp), %rsi        # 8-byte Reload
	imulq	%rdx, %rsi
	movslq	-132(%rbp), %rdx
	addq	%rdx, %rsi
	movq	-40(%rbp), %rdx
	movb	(%rdx,%rsi), %dil
	movb	%dil, -134(%rbp)
	movq	-24(%rbp), %rdx
	movl	-124(%rbp), %eax
	addl	$1, %eax
	movl	-60(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	movq	%rdx, -424(%rbp)        # 8-byte Spill
	jle	.LBB5_106
# BB#105:                               # %cond.true.338
                                        #   in Loop: Header=BB5_7 Depth=3
	movl	-60(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -428(%rbp)        # 4-byte Spill
	jmp	.LBB5_110
.LBB5_106:                              # %cond.false.340
                                        #   in Loop: Header=BB5_7 Depth=3
	movl	-124(%rbp), %eax
	addl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB5_108
# BB#107:                               # %cond.true.344
                                        #   in Loop: Header=BB5_7 Depth=3
	xorl	%eax, %eax
	movl	%eax, -432(%rbp)        # 4-byte Spill
	jmp	.LBB5_109
.LBB5_108:                              # %cond.false.345
                                        #   in Loop: Header=BB5_7 Depth=3
	movl	-124(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -432(%rbp)        # 4-byte Spill
.LBB5_109:                              # %cond.end.347
                                        #   in Loop: Header=BB5_7 Depth=3
	movl	-432(%rbp), %eax        # 4-byte Reload
	movl	%eax, -428(%rbp)        # 4-byte Spill
.LBB5_110:                              # %cond.end.349
                                        #   in Loop: Header=BB5_7 Depth=3
	movl	-428(%rbp), %eax        # 4-byte Reload
	movl	-60(%rbp), %ecx
	movl	-128(%rbp), %edx
	addl	$1, %edx
	movl	-64(%rbp), %esi
	subl	$1, %esi
	cmpl	%esi, %edx
	movl	%eax, -436(%rbp)        # 4-byte Spill
	movl	%ecx, -440(%rbp)        # 4-byte Spill
	jle	.LBB5_112
# BB#111:                               # %cond.true.355
                                        #   in Loop: Header=BB5_7 Depth=3
	movl	-64(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -444(%rbp)        # 4-byte Spill
	jmp	.LBB5_116
.LBB5_112:                              # %cond.false.357
                                        #   in Loop: Header=BB5_7 Depth=3
	movl	-128(%rbp), %eax
	addl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB5_114
# BB#113:                               # %cond.true.361
                                        #   in Loop: Header=BB5_7 Depth=3
	xorl	%eax, %eax
	movl	%eax, -448(%rbp)        # 4-byte Spill
	jmp	.LBB5_115
.LBB5_114:                              # %cond.false.362
                                        #   in Loop: Header=BB5_7 Depth=3
	movl	-128(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -448(%rbp)        # 4-byte Spill
.LBB5_115:                              # %cond.end.364
                                        #   in Loop: Header=BB5_7 Depth=3
	movl	-448(%rbp), %eax        # 4-byte Reload
	movl	%eax, -444(%rbp)        # 4-byte Spill
.LBB5_116:                              # %cond.end.366
                                        #   in Loop: Header=BB5_7 Depth=3
	movl	-444(%rbp), %eax        # 4-byte Reload
	leaq	-141(%rbp), %rdi
	movl	-440(%rbp), %ecx        # 4-byte Reload
	imull	%eax, %ecx
	movl	-436(%rbp), %eax        # 4-byte Reload
	addl	%ecx, %eax
	movslq	%eax, %rdx
	movq	-424(%rbp), %rsi        # 8-byte Reload
	imulq	%rdx, %rsi
	movslq	-132(%rbp), %rdx
	addq	%rdx, %rsi
	movq	-40(%rbp), %rdx
	movb	(%rdx,%rsi), %r8b
	movb	%r8b, -133(%rbp)
	callq	edge_detect
	movb	%al, %r8b
	movslq	-132(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movb	%r8b, (%rsi,%rdx)
# BB#117:                               # %for.inc
                                        #   in Loop: Header=BB5_7 Depth=3
	movl	-132(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -132(%rbp)
	jmp	.LBB5_7
.LBB5_118:                              # %for.end
                                        #   in Loop: Header=BB5_5 Depth=2
	cmpl	$0, -32(%rbp)
	je	.LBB5_120
# BB#119:                               # %if.then.380
                                        #   in Loop: Header=BB5_5 Depth=2
	movq	-24(%rbp), %rax
	movl	-124(%rbp), %ecx
	movl	-60(%rbp), %edx
	imull	-128(%rbp), %edx
	addl	%edx, %ecx
	movslq	%ecx, %rsi
	imulq	%rsi, %rax
	movslq	-28(%rbp), %rsi
	addq	%rsi, %rax
	movq	-40(%rbp), %rsi
	movb	(%rsi,%rax), %dil
	movslq	-28(%rbp), %rax
	movq	-56(%rbp), %rsi
	movb	%dil, (%rsi,%rax)
.LBB5_120:                              # %if.end.390
                                        #   in Loop: Header=BB5_5 Depth=2
	movq	-24(%rbp), %rax
	addq	-56(%rbp), %rax
	movq	%rax, -56(%rbp)
# BB#121:                               # %for.inc.391
                                        #   in Loop: Header=BB5_5 Depth=2
	movl	-124(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -124(%rbp)
	jmp	.LBB5_5
.LBB5_122:                              # %for.end.393
                                        #   in Loop: Header=BB5_3 Depth=1
	jmp	.LBB5_123
.LBB5_123:                              # %for.inc.394
                                        #   in Loop: Header=BB5_3 Depth=1
	movl	-128(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -128(%rbp)
	jmp	.LBB5_3
.LBB5_124:                              # %for.end.396
	movq	-8(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movslq	-60(%rbp), %rax
	imulq	-24(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, %edx
	callq	gimp_preview_draw_buffer
	movq	-48(%rbp), %rdi
	callq	g_free
	movq	-40(%rbp), %rdi
	callq	g_free
	addq	$464, %rsp              # imm = 0x1D0
	popq	%rbp
	retq
.Lfunc_end5:
	.size	edge_preview_update, .Lfunc_end5-edge_preview_update
	.cfi_endproc

	.align	16, 0x90
	.type	edge_detect,@function
edge_detect:                            # @edge_detect
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	evals+8(%rip), %eax
	movl	%eax, %edi
	movq	%rdi, %rcx
	subq	$5, %rcx
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rcx, -32(%rbp)         # 8-byte Spill
	ja	.LBB6_7
# BB#15:                                # %entry
	movq	-24(%rbp), %rax         # 8-byte Reload
	movq	.LJTI6_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB6_1:                                # %sw.bb
	movq	-8(%rbp), %rdi
	callq	sobel
	movl	%eax, -12(%rbp)
	jmp	.LBB6_8
.LBB6_2:                                # %sw.bb.1
	movq	-8(%rbp), %rdi
	callq	prewitt
	movl	%eax, -12(%rbp)
	jmp	.LBB6_8
.LBB6_3:                                # %sw.bb.3
	movq	-8(%rbp), %rdi
	callq	gradient
	movl	%eax, -12(%rbp)
	jmp	.LBB6_8
.LBB6_4:                                # %sw.bb.5
	movq	-8(%rbp), %rdi
	callq	roberts
	movl	%eax, -12(%rbp)
	jmp	.LBB6_8
.LBB6_5:                                # %sw.bb.7
	movq	-8(%rbp), %rdi
	callq	differential
	movl	%eax, -12(%rbp)
	jmp	.LBB6_8
.LBB6_6:                                # %sw.bb.9
	movq	-8(%rbp), %rdi
	callq	laplace
	movl	%eax, -12(%rbp)
	jmp	.LBB6_8
.LBB6_7:                                # %sw.default
	movl	$-1, -12(%rbp)
.LBB6_8:                                # %sw.epilog
	cmpl	$255, -12(%rbp)
	jle	.LBB6_10
# BB#9:                                 # %cond.true
	movl	$255, %eax
	movl	%eax, -36(%rbp)         # 4-byte Spill
	jmp	.LBB6_14
.LBB6_10:                               # %cond.false
	cmpl	$0, -12(%rbp)
	jge	.LBB6_12
# BB#11:                                # %cond.true.12
	xorl	%eax, %eax
	movl	%eax, -40(%rbp)         # 4-byte Spill
	jmp	.LBB6_13
.LBB6_12:                               # %cond.false.13
	movl	-12(%rbp), %eax
	movl	%eax, -40(%rbp)         # 4-byte Spill
.LBB6_13:                               # %cond.end
	movl	-40(%rbp), %eax         # 4-byte Reload
	movl	%eax, -36(%rbp)         # 4-byte Spill
.LBB6_14:                               # %cond.end.14
	movl	-36(%rbp), %eax         # 4-byte Reload
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	edge_detect, .Lfunc_end6-edge_detect
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI6_0:
	.quad	.LBB6_1
	.quad	.LBB6_2
	.quad	.LBB6_3
	.quad	.LBB6_4
	.quad	.LBB6_5
	.quad	.LBB6_6

	.text
	.align	16, 0x90
	.type	sobel,@function
sobel:                                  # @sobel
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	$0, -12(%rbp)
	movl	$0, -16(%rbp)
	movl	$0, -20(%rbp)
.LBB7_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$9, -12(%rbp)
	jge	.LBB7_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB7_1 Depth=1
	movslq	-12(%rbp), %rax
	movl	sobel.v_kernel(,%rax,4), %ecx
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rax), %esi
	imull	%esi, %ecx
	addl	-16(%rbp), %ecx
	movl	%ecx, -16(%rbp)
	movslq	-12(%rbp), %rax
	movl	sobel.h_kernel(,%rax,4), %ecx
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rax), %esi
	imull	%esi, %ecx
	addl	-20(%rbp), %ecx
	movl	%ecx, -20(%rbp)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB7_1
.LBB7_4:                                # %for.end
	movl	-16(%rbp), %eax
	imull	-16(%rbp), %eax
	cvtsi2sdl	%eax, %xmm0
	mulsd	evals, %xmm0
	movl	-20(%rbp), %eax
	imull	-20(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	mulsd	evals, %xmm1
	addsd	%xmm1, %xmm0
	callq	sqrt
	cvttsd2si	%xmm0, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	sobel, .Lfunc_end7-sobel
	.cfi_endproc

	.align	16, 0x90
	.type	prewitt,@function
prewitt:                                # @prewitt
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
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movzbl	(%rdi), %ecx
	movq	-8(%rbp), %rdi
	movzbl	1(%rdi), %edx
	addl	%edx, %ecx
	movq	-8(%rbp), %rdi
	movzbl	2(%rdi), %edx
	addl	%edx, %ecx
	movq	-8(%rbp), %rdi
	movzbl	3(%rdi), %edx
	addl	%edx, %ecx
	movq	-8(%rbp), %rdi
	movzbl	4(%rdi), %edx
	shll	$1, %edx
	subl	%edx, %ecx
	movq	-8(%rbp), %rdi
	movzbl	5(%rdi), %edx
	addl	%edx, %ecx
	movq	-8(%rbp), %rdi
	movzbl	6(%rdi), %edx
	subl	%edx, %ecx
	movq	-8(%rbp), %rdi
	movzbl	7(%rdi), %edx
	subl	%edx, %ecx
	movq	-8(%rbp), %rdi
	movzbl	8(%rdi), %edx
	subl	%edx, %ecx
	movl	%ecx, -48(%rbp)
	movq	-8(%rbp), %rdi
	movzbl	(%rdi), %ecx
	movq	-8(%rbp), %rdi
	movzbl	1(%rdi), %edx
	addl	%edx, %ecx
	movq	-8(%rbp), %rdi
	movzbl	2(%rdi), %edx
	addl	%edx, %ecx
	movq	-8(%rbp), %rdi
	movzbl	3(%rdi), %edx
	addl	%edx, %ecx
	movq	-8(%rbp), %rdi
	movzbl	4(%rdi), %edx
	shll	$1, %edx
	subl	%edx, %ecx
	movq	-8(%rbp), %rdi
	movzbl	5(%rdi), %edx
	subl	%edx, %ecx
	movq	-8(%rbp), %rdi
	movzbl	6(%rdi), %edx
	addl	%edx, %ecx
	movq	-8(%rbp), %rdi
	movzbl	7(%rdi), %edx
	subl	%edx, %ecx
	movq	-8(%rbp), %rdi
	movzbl	8(%rdi), %edx
	subl	%edx, %ecx
	movl	%ecx, -44(%rbp)
	movq	-8(%rbp), %rdi
	movzbl	(%rdi), %ecx
	movq	-8(%rbp), %rdi
	movzbl	1(%rdi), %edx
	addl	%edx, %ecx
	movq	-8(%rbp), %rdi
	movzbl	2(%rdi), %edx
	subl	%edx, %ecx
	movq	-8(%rbp), %rdi
	movzbl	3(%rdi), %edx
	addl	%edx, %ecx
	movq	-8(%rbp), %rdi
	movzbl	4(%rdi), %edx
	shll	$1, %edx
	subl	%edx, %ecx
	movq	-8(%rbp), %rdi
	movzbl	5(%rdi), %edx
	subl	%edx, %ecx
	movq	-8(%rbp), %rdi
	movzbl	6(%rdi), %edx
	addl	%edx, %ecx
	movq	-8(%rbp), %rdi
	movzbl	7(%rdi), %edx
	addl	%edx, %ecx
	movq	-8(%rbp), %rdi
	movzbl	8(%rdi), %edx
	subl	%edx, %ecx
	movl	%ecx, -40(%rbp)
	movq	-8(%rbp), %rdi
	movzbl	(%rdi), %ecx
	movq	-8(%rbp), %rdi
	movzbl	1(%rdi), %edx
	subl	%edx, %ecx
	movq	-8(%rbp), %rdi
	movzbl	2(%rdi), %edx
	subl	%edx, %ecx
	movq	-8(%rbp), %rdi
	movzbl	3(%rdi), %edx
	addl	%edx, %ecx
	movq	-8(%rbp), %rdi
	movzbl	4(%rdi), %edx
	shll	$1, %edx
	subl	%edx, %ecx
	movq	-8(%rbp), %rdi
	movzbl	5(%rdi), %edx
	subl	%edx, %ecx
	movq	-8(%rbp), %rdi
	movzbl	6(%rdi), %edx
	addl	%edx, %ecx
	movq	-8(%rbp), %rdi
	movzbl	7(%rdi), %edx
	addl	%edx, %ecx
	movq	-8(%rbp), %rdi
	movzbl	8(%rdi), %edx
	addl	%edx, %ecx
	movl	%ecx, -36(%rbp)
	movq	-8(%rbp), %rdi
	movzbl	(%rdi), %ecx
	movl	%eax, %edx
	subl	%ecx, %edx
	movq	-8(%rbp), %rdi
	movzbl	1(%rdi), %ecx
	subl	%ecx, %edx
	movq	-8(%rbp), %rdi
	movzbl	2(%rdi), %ecx
	subl	%ecx, %edx
	movq	-8(%rbp), %rdi
	movzbl	3(%rdi), %ecx
	addl	%ecx, %edx
	movq	-8(%rbp), %rdi
	movzbl	4(%rdi), %ecx
	shll	$1, %ecx
	subl	%ecx, %edx
	movq	-8(%rbp), %rdi
	movzbl	5(%rdi), %ecx
	addl	%ecx, %edx
	movq	-8(%rbp), %rdi
	movzbl	6(%rdi), %ecx
	addl	%ecx, %edx
	movq	-8(%rbp), %rdi
	movzbl	7(%rdi), %ecx
	addl	%ecx, %edx
	movq	-8(%rbp), %rdi
	movzbl	8(%rdi), %ecx
	addl	%ecx, %edx
	movl	%edx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movzbl	(%rdi), %ecx
	movl	%eax, %edx
	subl	%ecx, %edx
	movq	-8(%rbp), %rdi
	movzbl	1(%rdi), %ecx
	subl	%ecx, %edx
	movq	-8(%rbp), %rdi
	movzbl	2(%rdi), %ecx
	addl	%ecx, %edx
	movq	-8(%rbp), %rdi
	movzbl	3(%rdi), %ecx
	subl	%ecx, %edx
	movq	-8(%rbp), %rdi
	movzbl	4(%rdi), %ecx
	shll	$1, %ecx
	subl	%ecx, %edx
	movq	-8(%rbp), %rdi
	movzbl	5(%rdi), %ecx
	addl	%ecx, %edx
	movq	-8(%rbp), %rdi
	movzbl	6(%rdi), %ecx
	addl	%ecx, %edx
	movq	-8(%rbp), %rdi
	movzbl	7(%rdi), %ecx
	addl	%ecx, %edx
	movq	-8(%rbp), %rdi
	movzbl	8(%rdi), %ecx
	addl	%ecx, %edx
	movl	%edx, -28(%rbp)
	movq	-8(%rbp), %rdi
	movzbl	(%rdi), %ecx
	subl	%ecx, %eax
	movq	-8(%rbp), %rdi
	movzbl	1(%rdi), %ecx
	addl	%ecx, %eax
	movq	-8(%rbp), %rdi
	movzbl	2(%rdi), %ecx
	addl	%ecx, %eax
	movq	-8(%rbp), %rdi
	movzbl	3(%rdi), %ecx
	subl	%ecx, %eax
	movq	-8(%rbp), %rdi
	movzbl	4(%rdi), %ecx
	shll	$1, %ecx
	subl	%ecx, %eax
	movq	-8(%rbp), %rdi
	movzbl	5(%rdi), %ecx
	addl	%ecx, %eax
	movq	-8(%rbp), %rdi
	movzbl	6(%rdi), %ecx
	subl	%ecx, %eax
	movq	-8(%rbp), %rdi
	movzbl	7(%rdi), %ecx
	addl	%ecx, %eax
	movq	-8(%rbp), %rdi
	movzbl	8(%rdi), %ecx
	addl	%ecx, %eax
	movl	%eax, -24(%rbp)
	movq	-8(%rbp), %rdi
	movzbl	(%rdi), %eax
	movq	-8(%rbp), %rdi
	movzbl	1(%rdi), %ecx
	addl	%ecx, %eax
	movq	-8(%rbp), %rdi
	movzbl	2(%rdi), %ecx
	addl	%ecx, %eax
	movq	-8(%rbp), %rdi
	movzbl	3(%rdi), %ecx
	subl	%ecx, %eax
	movq	-8(%rbp), %rdi
	movzbl	4(%rdi), %ecx
	shll	$1, %ecx
	subl	%ecx, %eax
	movq	-8(%rbp), %rdi
	movzbl	5(%rdi), %ecx
	addl	%ecx, %eax
	movq	-8(%rbp), %rdi
	movzbl	6(%rdi), %ecx
	subl	%ecx, %eax
	movq	-8(%rbp), %rdi
	movzbl	7(%rdi), %ecx
	subl	%ecx, %eax
	movq	-8(%rbp), %rdi
	movzbl	8(%rdi), %ecx
	addl	%ecx, %eax
	movl	%eax, -20(%rbp)
	movl	$0, -12(%rbp)
	movl	$0, -16(%rbp)
.LBB8_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$8, -12(%rbp)
	jge	.LBB8_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-16(%rbp), %eax
	movslq	-12(%rbp), %rcx
	cmpl	-48(%rbp,%rcx,4), %eax
	jge	.LBB8_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB8_1 Depth=1
	movslq	-12(%rbp), %rax
	movl	-48(%rbp,%rax,4), %ecx
	movl	%ecx, -16(%rbp)
.LBB8_4:                                # %if.end
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_5
.LBB8_5:                                # %for.inc
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB8_1
.LBB8_6:                                # %for.end
	movsd	evals, %xmm0            # xmm0 = mem[0],zero
	cvtsi2sdl	-16(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	popq	%rbp
	retq
.Lfunc_end8:
	.size	prewitt, .Lfunc_end8-prewitt
	.cfi_endproc

	.align	16, 0x90
	.type	gradient,@function
gradient:                               # @gradient
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
	movl	$0, -12(%rbp)
	movl	$0, -16(%rbp)
	movl	$0, -20(%rbp)
.LBB9_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$9, -12(%rbp)
	jge	.LBB9_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB9_1 Depth=1
	movslq	-12(%rbp), %rax
	movl	gradient.v_kernel(,%rax,4), %ecx
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rax), %esi
	imull	%esi, %ecx
	addl	-16(%rbp), %ecx
	movl	%ecx, -16(%rbp)
	movslq	-12(%rbp), %rax
	movl	gradient.h_kernel(,%rax,4), %ecx
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rax), %esi
	imull	%esi, %ecx
	addl	-20(%rbp), %ecx
	movl	%ecx, -20(%rbp)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB9_1
.LBB9_4:                                # %for.end
	movl	-16(%rbp), %eax
	imull	-16(%rbp), %eax
	cvtsi2sdl	%eax, %xmm0
	mulsd	evals, %xmm0
	movl	-20(%rbp), %eax
	imull	-20(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	mulsd	evals, %xmm1
	addsd	%xmm1, %xmm0
	callq	sqrt
	cvttsd2si	%xmm0, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gradient, .Lfunc_end9-gradient
	.cfi_endproc

	.align	16, 0x90
	.type	roberts,@function
roberts:                                # @roberts
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	$0, -12(%rbp)
	movl	$0, -16(%rbp)
	movl	$0, -20(%rbp)
.LBB10_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$9, -12(%rbp)
	jge	.LBB10_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB10_1 Depth=1
	movslq	-12(%rbp), %rax
	movl	roberts.v_kernel(,%rax,4), %ecx
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rax), %esi
	imull	%esi, %ecx
	addl	-16(%rbp), %ecx
	movl	%ecx, -16(%rbp)
	movslq	-12(%rbp), %rax
	movl	roberts.h_kernel(,%rax,4), %ecx
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rax), %esi
	imull	%esi, %ecx
	addl	-20(%rbp), %ecx
	movl	%ecx, -20(%rbp)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB10_1
.LBB10_4:                               # %for.end
	movl	-16(%rbp), %eax
	imull	-16(%rbp), %eax
	cvtsi2sdl	%eax, %xmm0
	mulsd	evals, %xmm0
	movl	-20(%rbp), %eax
	imull	-20(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	mulsd	evals, %xmm1
	addsd	%xmm1, %xmm0
	callq	sqrt
	cvttsd2si	%xmm0, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	roberts, .Lfunc_end10-roberts
	.cfi_endproc

	.align	16, 0x90
	.type	differential,@function
differential:                           # @differential
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
	movl	$0, -12(%rbp)
	movl	$0, -16(%rbp)
	movl	$0, -20(%rbp)
.LBB11_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$9, -12(%rbp)
	jge	.LBB11_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB11_1 Depth=1
	movslq	-12(%rbp), %rax
	movl	differential.v_kernel(,%rax,4), %ecx
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rax), %esi
	imull	%esi, %ecx
	addl	-16(%rbp), %ecx
	movl	%ecx, -16(%rbp)
	movslq	-12(%rbp), %rax
	movl	differential.h_kernel(,%rax,4), %ecx
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rax), %esi
	imull	%esi, %ecx
	addl	-20(%rbp), %ecx
	movl	%ecx, -20(%rbp)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB11_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB11_1
.LBB11_4:                               # %for.end
	movl	-16(%rbp), %eax
	imull	-16(%rbp), %eax
	cvtsi2sdl	%eax, %xmm0
	mulsd	evals, %xmm0
	movl	-20(%rbp), %eax
	imull	-20(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	mulsd	evals, %xmm1
	addsd	%xmm1, %xmm0
	callq	sqrt
	cvttsd2si	%xmm0, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	differential, .Lfunc_end11-differential
	.cfi_endproc

	.align	16, 0x90
	.type	laplace,@function
laplace:                                # @laplace
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
	movq	%rdi, -8(%rbp)
	movl	$0, -12(%rbp)
	movl	$0, -16(%rbp)
.LBB12_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$9, -12(%rbp)
	jge	.LBB12_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB12_1 Depth=1
	movslq	-12(%rbp), %rax
	movl	laplace.kernel(,%rax,4), %ecx
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rax), %esi
	imull	%esi, %ecx
	addl	-16(%rbp), %ecx
	movl	%ecx, -16(%rbp)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB12_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB12_1
.LBB12_4:                               # %for.end
	cvtsi2sdl	-16(%rbp), %xmm0
	mulsd	evals, %xmm0
	cvttsd2si	%xmm0, %eax
	popq	%rbp
	retq
.Lfunc_end12:
	.size	laplace, .Lfunc_end12-laplace
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
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.8
	.quad	.L.str.9
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.10
	.quad	.L.str.11
	.size	query.args, 144

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
	.asciz	"amount"
	.size	.L.str.6, 7

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Edge detection amount"
	.size	.L.str.7, 22

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"wrapmode"
	.size	.L.str.8, 9

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Edge detection behavior { WRAP (1), SMEAR (2), BLACK (3) }"
	.size	.L.str.9, 59

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"edgemode"
	.size	.L.str.10, 9

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Edge detection algorithm { SOBEL (0), PREWITT (1), GRADIENT (2), ROBERTS (3), DIFFERENTIAL (4), LAPLACE (5) }"
	.size	.L.str.11, 110

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Perform edge detection on the contents of the specified drawable.AMOUNT is an arbitrary constant, WRAPMODE is like displace plug-in (useful for tilable image). EDGEMODE sets the kind of matrix transform applied to the pixels, SOBEL was the method used in older versions."
	.size	.L.str.12, 271

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"plug-in-edge"
	.size	.L.str.13, 13

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Several simple methods for detecting edges"
	.size	.L.str.14, 43

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Peter Mattis & (ported to 1.0 by) Eiichi Takamori"
	.size	.L.str.15, 50

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Peter Mattis"
	.size	.L.str.16, 13

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"1996"
	.size	.L.str.17, 5

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"_Edge..."
	.size	.L.str.18, 9

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"RGB*, GRAY*"
	.size	.L.str.19, 12

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"<Image>/Filters/Edge-Detect"
	.size	.L.str.20, 28

	.type	run.values,@object      # @run.values
	.local	run.values
	.comm	run.values,40,16
	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"gimp20-std-plug-ins"
	.size	.L.str.21, 20

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"UTF-8"
	.size	.L.str.22, 6

	.type	evals,@object           # @evals
	.data
	.align	8
evals:
	.quad	4611686018427387904     # double 2
	.long	0                       # 0x0
	.long	2                       # 0x2
	.size	evals, 16

	.type	.L.str.23,@object       # @.str.23
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.23:
	.asciz	"Edge detection"
	.size	.L.str.23, 15

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"edge"
	.size	.L.str.24, 5

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Edge Detection"
	.size	.L.str.25, 15

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"gimp-edge"
	.size	.L.str.26, 10

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"gtk-cancel"
	.size	.L.str.27, 11

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"gtk-ok"
	.size	.L.str.28, 7

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"invalidated"
	.size	.L.str.29, 12

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"Sobel"
	.size	.L.str.30, 6

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"Prewitt compass"
	.size	.L.str.31, 16

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"Gradient"
	.size	.L.str.32, 9

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"Roberts"
	.size	.L.str.33, 8

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"Differential"
	.size	.L.str.34, 13

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"Laplace"
	.size	.L.str.35, 8

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"_Algorithm:"
	.size	.L.str.36, 12

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"changed"
	.size	.L.str.37, 8

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"A_mount:"
	.size	.L.str.38, 9

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"value-changed"
	.size	.L.str.39, 14

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"_Wrap"
	.size	.L.str.40, 6

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"toggled"
	.size	.L.str.41, 8

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"_Smear"
	.size	.L.str.42, 7

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"_Black"
	.size	.L.str.43, 7

	.type	sobel.v_kernel,@object  # @sobel.v_kernel
	.section	.rodata,"a",@progbits
	.align	16
sobel.v_kernel:
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	4294967294              # 0xfffffffe
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.long	1                       # 0x1
	.size	sobel.v_kernel, 36

	.type	sobel.h_kernel,@object  # @sobel.h_kernel
	.align	16
sobel.h_kernel:
	.long	4294967295              # 0xffffffff
	.long	4294967294              # 0xfffffffe
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	1                       # 0x1
	.size	sobel.h_kernel, 36

	.type	gradient.v_kernel,@object # @gradient.v_kernel
	.align	16
gradient.v_kernel:
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4                       # 0x4
	.long	4294967292              # 0xfffffffc
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.size	gradient.v_kernel, 36

	.type	gradient.h_kernel,@object # @gradient.h_kernel
	.align	16
gradient.h_kernel:
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967292              # 0xfffffffc
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4                       # 0x4
	.long	0                       # 0x0
	.size	gradient.h_kernel, 36

	.type	roberts.v_kernel,@object # @roberts.v_kernel
	.align	16
roberts.v_kernel:
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4                       # 0x4
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967292              # 0xfffffffc
	.size	roberts.v_kernel, 36

	.type	roberts.h_kernel,@object # @roberts.h_kernel
	.align	16
roberts.h_kernel:
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4                       # 0x4
	.long	0                       # 0x0
	.long	4294967292              # 0xfffffffc
	.long	0                       # 0x0
	.size	roberts.h_kernel, 36

	.type	differential.v_kernel,@object # @differential.v_kernel
	.align	16
differential.v_kernel:
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	4294967294              # 0xfffffffe
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	4294967294              # 0xfffffffe
	.size	differential.v_kernel, 36

	.type	differential.h_kernel,@object # @differential.h_kernel
	.align	16
differential.h_kernel:
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967294              # 0xfffffffe
	.long	4294967294              # 0xfffffffe
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	2                       # 0x2
	.size	differential.h_kernel, 36

	.type	laplace.kernel,@object  # @laplace.kernel
	.align	16
laplace.kernel:
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967288              # 0xfffffff8
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.size	laplace.kernel, 36


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
