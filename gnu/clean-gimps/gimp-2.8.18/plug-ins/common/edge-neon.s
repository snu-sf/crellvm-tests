	.text
	.file	"edge-neon.bc"
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
	movabsq	$.L.str.11, %rdi
	movabsq	$.L.str.12, %rsi
	movabsq	$.L.str.13, %rcx
	movabsq	$.L.str.14, %r8
	movabsq	$.L.str.15, %r9
	movabsq	$.L.str.16, %rax
	movabsq	$.L.str.17, %rdx
	movl	$1, %r10d
	movl	$5, %r11d
	xorl	%ebx, %ebx
	movabsq	$query.args, %r14
	xorl	%r15d, %r15d
	movl	%r15d, %r12d
	movabsq	$.L.str.10, %r13
	movq	%r13, -48(%rbp)
	movq	-48(%rbp), %r13
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movq	%r13, %rdx
	movq	%rax, (%rsp)
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$5, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%r14, 40(%rsp)
	movq	$0, 48(%rsp)
	movq	%r12, -64(%rbp)         # 8-byte Spill
	movl	%r11d, -68(%rbp)        # 4-byte Spill
	movl	%r10d, -72(%rbp)        # 4-byte Spill
	movl	%ebx, -76(%rbp)         # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.11, %rdi
	movabsq	$.L.str.18, %rsi
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
	movl	$3, -60(%rbp)
	movq	-24(%rbp), %rcx
	movl	8(%rcx), %esi
	movl	%esi, -44(%rbp)
	movq	-24(%rbp), %rcx
	movl	88(%rcx), %edi
	callq	gimp_drawable_get
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movl	16(%rax), %esi
	movq	-56(%rbp), %rax
	cmpl	20(%rax), %esi
	jbe	.LBB1_2
# BB#1:                                 # %cond.true
	movq	-56(%rbp), %rax
	movl	16(%rax), %ecx
	movl	%ecx, -64(%rbp)         # 4-byte Spill
	jmp	.LBB1_3
.LBB1_2:                                # %cond.false
	movq	-56(%rbp), %rax
	movl	20(%rax), %ecx
	movl	%ecx, -64(%rbp)         # 4-byte Spill
.LBB1_3:                                # %cond.end
	movl	-64(%rbp), %eax         # 4-byte Reload
	shll	$1, %eax
	movl	%eax, %eax
	movl	%eax, %edi
	callq	gimp_tile_cache_ntiles
	movabsq	$run.values, %rdi
	movq	-32(%rbp), %rcx
	movl	$1, (%rcx)
	movq	-40(%rbp), %rcx
	movq	%rdi, (%rcx)
	movl	$21, run.values
	movl	-60(%rbp), %eax
	movl	%eax, run.values+8
# BB#4:                                 # %do.body
	callq	gimp_locale_directory
	movabsq	$.L.str.19, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.19, %rdi
	movabsq	$.L.str.20, %rsi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.19, %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	textdomain
	movq	%rax, -88(%rbp)         # 8-byte Spill
# BB#5:                                 # %do.end
	movl	-44(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	je	.LBB1_6
	jmp	.LBB1_26
.LBB1_26:                               # %do.end
	movl	-92(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
	je	.LBB1_9
	jmp	.LBB1_27
.LBB1_27:                               # %do.end
	movl	-92(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	je	.LBB1_14
	jmp	.LBB1_15
.LBB1_6:                                # %sw.bb
	movabsq	$.L.str.11, %rdi
	movabsq	$evals, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movq	-56(%rbp), %rdi
	movl	%eax, -104(%rbp)        # 4-byte Spill
	callq	neon_dialog
	cmpl	$0, %eax
	jne	.LBB1_8
# BB#7:                                 # %if.then
	jmp	.LBB1_25
.LBB1_8:                                # %if.end
	jmp	.LBB1_16
.LBB1_9:                                # %sw.bb.11
	cmpl	$5, -12(%rbp)
	je	.LBB1_11
# BB#10:                                # %if.then.14
	movl	$1, -60(%rbp)
.LBB1_11:                               # %if.end.15
	cmpl	$3, -60(%rbp)
	jne	.LBB1_13
# BB#12:                                # %if.then.18
	movq	-24(%rbp), %rax
	movsd	128(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, evals
	movq	-24(%rbp), %rax
	movsd	168(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, evals+8
.LBB1_13:                               # %if.end.24
	jmp	.LBB1_16
.LBB1_14:                               # %sw.bb.25
	movabsq	$.L.str.11, %rdi
	movabsq	$evals, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movl	%eax, -108(%rbp)        # 4-byte Spill
	jmp	.LBB1_16
.LBB1_15:                               # %sw.default
	jmp	.LBB1_16
.LBB1_16:                               # %sw.epilog
	movq	-56(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_is_rgb
	cmpl	$0, %eax
	jne	.LBB1_18
# BB#17:                                # %lor.lhs.false
	movq	-56(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_is_gray
	cmpl	$0, %eax
	je	.LBB1_23
.LBB1_18:                               # %if.then.32
	movabsq	$.L.str.21, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_progress_init
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	-56(%rbp), %rdi
	movsd	evals, %xmm0            # xmm0 = mem[0],zero
	movsd	evals+8, %xmm1          # xmm1 = mem[0],zero
	movl	%eax, -112(%rbp)        # 4-byte Spill
	callq	neon
	cmpl	$1, -44(%rbp)
	je	.LBB1_20
# BB#19:                                # %if.then.37
	callq	gimp_displays_flush
	movl	%eax, -116(%rbp)        # 4-byte Spill
.LBB1_20:                               # %if.end.39
	cmpl	$0, -44(%rbp)
	jne	.LBB1_22
# BB#21:                                # %if.then.42
	movabsq	$.L.str.11, %rdi
	movabsq	$evals, %rax
	movl	$16, %edx
	movq	%rax, %rsi
	callq	gimp_procedural_db_set_data
	movl	%eax, -120(%rbp)        # 4-byte Spill
.LBB1_22:                               # %if.end.44
	jmp	.LBB1_24
.LBB1_23:                               # %if.else
	movabsq	$.L.str.22, %rdi
	movl	$0, -60(%rbp)
	movq	-32(%rbp), %rax
	movl	$2, (%rax)
	movl	$4, run.values+40
	callq	gettext
	movq	%rax, run.values+48
.LBB1_24:                               # %if.end.46
	movl	-60(%rbp), %eax
	movl	%eax, run.values+8
	movq	-56(%rbp), %rdi
	callq	gimp_drawable_detach
.LBB1_25:                               # %return
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
	.quad	4576918229304087675     # double 0.01
.LCPI3_2:
	.quad	4591870180066957722     # double 0.10000000000000001
.LCPI3_3:
	.quad	4634204016564240384     # double 64
.LCPI3_4:
	.quad	4621819117588971520     # double 10
	.text
	.align	16, 0x90
	.type	neon_dialog,@function
neon_dialog:                            # @neon_dialog
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
	subq	$384, %rsp              # imm = 0x180
.Ltmp17:
	.cfi_offset %rbx, -32
.Ltmp18:
	.cfi_offset %r14, -24
	movabsq	$.L.str.23, %rax
	xorl	%esi, %esi
	movq	%rdi, -24(%rbp)
	movq	%rax, %rdi
	callq	gimp_ui_init
	movabsq	$.L.str.24, %rdi
	callq	gettext
	movabsq	$.L.str.25, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	movabsq	$gimp_standard_help_func, %r8
	movabsq	$.L.str.11, %r9
	movabsq	$.L.str.26, %rdi
	movl	$4294967290, %r10d      # imm = 0xFFFFFFFA
	movabsq	$.L.str.27, %r11
	movl	$4294967291, %ebx       # imm = 0xFFFFFFFB
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$-6, 8(%rsp)
	movq	%r11, 16(%rsp)
	movl	$-5, 24(%rsp)
	movq	$0, 32(%rsp)
	movb	$0, %al
	movl	%ebx, -84(%rbp)         # 4-byte Spill
	movl	%r10d, -88(%rbp)        # 4-byte Spill
	callq	gimp_dialog_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	movq	-32(%rbp), %rdi
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_window_set_transient
	movl	$1, %edi
	movl	$12, %esi
	callq	gtk_box_new
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-32(%rbp), %rax
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
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
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
	movabsq	$.L.str.28, %rsi
	movabsq	$neon_preview_update, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	xorl	%r9d, %r9d
	movq	-48(%rbp), %r11
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %rdx
	movq	-144(%rbp), %rcx        # 8-byte Reload
	movq	-144(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	movl	$2, %edi
	movl	$3, %esi
	xorl	%edx, %edx
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_table_new
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-56(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-40(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -180(%rbp)        # 4-byte Spill
	movl	-180(%rbp), %ecx        # 4-byte Reload
	movl	-180(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movq	-56(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.29, %rdi
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gettext
	movsd	evals, %xmm0            # xmm0 = mem[0],zero
	movq	-24(%rbp), %rsi
	movl	4(%rsi), %ecx
	movq	-24(%rbp), %rsi
	cmpl	8(%rsi), %ecx
	movq	%rax, -208(%rbp)        # 8-byte Spill
	movsd	%xmm0, -216(%rbp)       # 8-byte Spill
	jbe	.LBB3_2
# BB#1:                                 # %cond.true
	movq	-24(%rbp), %rax
	movl	4(%rax), %ecx
	movl	%ecx, -220(%rbp)        # 4-byte Spill
	jmp	.LBB3_3
.LBB3_2:                                # %cond.false
	movq	-24(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -220(%rbp)        # 4-byte Spill
.LBB3_3:                                # %cond.end
	movl	-220(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movl	$100, %r8d
	movl	$8, %r9d
	xorps	%xmm0, %xmm0
	movsd	.LCPI3_3, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI3_0, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI3_4, %xmm4         # xmm4 = mem[0],zero
	movl	$2, %edx
	xorl	%esi, %esi
	movl	%esi, %edi
	shll	$3, %eax
	movl	%eax, %r10d
	cvtsi2sdq	%r10, %xmm6
	movq	-200(%rbp), %r10        # 8-byte Reload
	movq	%rdi, -232(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movl	%ecx, %esi
	movl	%edx, -236(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movq	-208(%rbp), %rcx        # 8-byte Reload
	movsd	-216(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm0, -248(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-248(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	$2, (%rsp)
	movl	$0, 8(%rsp)
	movsd	-248(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	callq	gimp_scale_entry_new
	movabsq	$.L.str.30, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	movabsq	$evals, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rdi, -256(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-256(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.30, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-64(%rbp), %rdx
	movq	-48(%rbp), %rdi
	movq	%rdi, -264(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-264(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-56(%rbp), %rcx
	movq	%rax, -280(%rbp)        # 8-byte Spill
	movq	%rcx, -288(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.31, %rdi
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$1, %edx
	movl	$100, %r8d
	movl	$8, %r9d
	xorps	%xmm0, %xmm0
	movsd	.LCPI3_0, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI3_1, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI3_2, %xmm4         # xmm4 = mem[0],zero
	movl	$2, %r11d
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movsd	evals+8, %xmm1          # xmm1 = mem[0],zero
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rcx, -304(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movsd	%xmm0, -312(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-312(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	$2, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-312(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-312(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r11d, -316(%rbp)       # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.30, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	movabsq	$evals, %rdi
	addq	$8, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rdi, -328(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-328(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.30, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-64(%rbp), %rdx
	movq	-48(%rbp), %rdi
	movq	%rdi, -336(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-336(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-32(%rbp), %rdi
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
	movq	-32(%rbp), %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	gimp_dialog_get_type
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dialog_run
	cmpl	$-5, %eax
	sete	%r14b
	andb	$1, %r14b
	movzbl	%r14b, %eax
	movl	%eax, -68(%rbp)
	movq	-32(%rbp), %rdi
	callq	gtk_widget_destroy
	movl	-68(%rbp), %eax
	addq	$384, %rsp              # imm = 0x180
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end3:
	.size	neon_dialog, .Lfunc_end3-neon_dialog
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4607182418800017408     # double 1
.LCPI4_1:
	.quad	4611686018427387904     # double 2
.LCPI4_2:
	.quad	4571171282956062736     # double 0.0039215686274509803
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI4_3:
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.text
	.align	16, 0x90
	.type	neon,@function
neon:                                   # @neon
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
	subq	$864, %rsp              # imm = 0x360
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$0, -556(%rbp)
	movl	$1, -560(%rbp)
	movq	$0, -608(%rbp)
	movq	$0, -616(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB4_2
# BB#1:                                 # %if.then
	leaq	-516(%rbp), %rsi
	leaq	-520(%rbp), %rdx
	movq	-32(%rbp), %rdi
	callq	gimp_preview_get_position
	leaq	-132(%rbp), %rsi
	leaq	-136(%rbp), %rdx
	movq	-32(%rbp), %rdi
	callq	gimp_preview_get_size
	movl	-516(%rbp), %eax
	addl	-132(%rbp), %eax
	movl	%eax, -524(%rbp)
	movl	-520(%rbp), %eax
	addl	-136(%rbp), %eax
	movl	%eax, -528(%rbp)
	jmp	.LBB4_3
.LBB4_2:                                # %if.else
	leaq	-516(%rbp), %rsi
	leaq	-520(%rbp), %rdx
	leaq	-524(%rbp), %rcx
	leaq	-528(%rbp), %r8
	movq	-8(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_mask_bounds
	movl	-524(%rbp), %edi
	subl	-516(%rbp), %edi
	movl	%edi, -132(%rbp)
	movl	-528(%rbp), %edi
	subl	-520(%rbp), %edi
	movl	%edi, -136(%rbp)
	movl	%eax, -652(%rbp)        # 4-byte Spill
.LBB4_3:                                # %if.end
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	ucomisd	-16(%rbp), %xmm0
	jbe	.LBB4_5
# BB#4:                                 # %if.then.3
	jmp	.LBB4_107
.LBB4_5:                                # %if.end.4
	movq	-8(%rbp), %rax
	movl	12(%rax), %ecx
	movl	%ecx, -140(%rbp)
	movl	-140(%rbp), %ecx
	movl	%ecx, -144(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_has_alpha
	movl	%eax, -148(%rbp)
	cmpl	$0, -148(%rbp)
	je	.LBB4_7
# BB#6:                                 # %if.then.9
	movl	-144(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -144(%rbp)
.LBB4_7:                                # %if.end.10
	movl	-132(%rbp), %eax
	cmpl	-136(%rbp), %eax
	jle	.LBB4_9
# BB#8:                                 # %cond.true
	movl	-132(%rbp), %eax
	movl	%eax, -656(%rbp)        # 4-byte Spill
	jmp	.LBB4_10
.LBB4_9:                                # %cond.false
	movl	-136(%rbp), %eax
	movl	%eax, -656(%rbp)        # 4-byte Spill
.LBB4_10:                               # %cond.end
	movl	-656(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	movl	%ecx, %esi
	imull	-140(%rbp), %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	movq	%rax, -488(%rbp)
	movl	-132(%rbp), %ecx
	cmpl	-136(%rbp), %ecx
	jle	.LBB4_12
# BB#11:                                # %cond.true.15
	movl	-132(%rbp), %eax
	movl	%eax, -660(%rbp)        # 4-byte Spill
	jmp	.LBB4_13
.LBB4_12:                               # %cond.false.16
	movl	-136(%rbp), %eax
	movl	%eax, -660(%rbp)        # 4-byte Spill
.LBB4_13:                               # %cond.end.17
	movl	-660(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	movl	%ecx, %esi
	imull	-140(%rbp), %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	movq	%rax, -496(%rbp)
	movl	-132(%rbp), %ecx
	cmpl	-136(%rbp), %ecx
	jle	.LBB4_15
# BB#14:                                # %cond.true.24
	movl	-132(%rbp), %eax
	movl	%eax, -664(%rbp)        # 4-byte Spill
	jmp	.LBB4_16
.LBB4_15:                               # %cond.false.25
	movl	-136(%rbp), %eax
	movl	%eax, -664(%rbp)        # 4-byte Spill
.LBB4_16:                               # %cond.end.26
	movl	-664(%rbp), %eax        # 4-byte Reload
	movl	$1, %ecx
	movl	%ecx, %esi
	imull	-140(%rbp), %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	movq	%rax, -168(%rbp)
	movl	-132(%rbp), %ecx
	cmpl	-136(%rbp), %ecx
	jle	.LBB4_18
# BB#17:                                # %cond.true.33
	movl	-132(%rbp), %eax
	movl	%eax, -668(%rbp)        # 4-byte Spill
	jmp	.LBB4_19
.LBB4_18:                               # %cond.false.34
	movl	-136(%rbp), %eax
	movl	%eax, -668(%rbp)        # 4-byte Spill
.LBB4_19:                               # %cond.end.35
	movl	-668(%rbp), %eax        # 4-byte Reload
	movl	$1, %ecx
	movl	%ecx, %esi
	imull	-140(%rbp), %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	movq	%rax, -176(%rbp)
	movl	-132(%rbp), %ecx
	cmpl	-136(%rbp), %ecx
	jle	.LBB4_21
# BB#20:                                # %cond.true.42
	movl	-132(%rbp), %eax
	movl	%eax, -672(%rbp)        # 4-byte Spill
	jmp	.LBB4_22
.LBB4_21:                               # %cond.false.43
	movl	-136(%rbp), %eax
	movl	%eax, -672(%rbp)        # 4-byte Spill
.LBB4_22:                               # %cond.end.44
	movl	-672(%rbp), %eax        # 4-byte Reload
	movl	$1, %ecx
	movl	%ecx, %esi
	imull	-140(%rbp), %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	leaq	-80(%rbp), %rdi
	xorl	%ecx, %ecx
	movq	%rax, -160(%rbp)
	movq	-8(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	4(%rax), %r8d
	movq	-8(%rbp), %rax
	movl	8(%rax), %r9d
	movl	%ecx, %edx
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	cmpq	$0, -32(%rbp)
	je	.LBB4_24
# BB#23:                                # %if.then.52
	movl	$1, %eax
	movl	%eax, %esi
	movl	-132(%rbp), %eax
	imull	-136(%rbp), %eax
	imull	-140(%rbp), %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	%rax, -608(%rbp)
	movl	-132(%rbp), %ecx
	imull	-136(%rbp), %ecx
	imull	-140(%rbp), %ecx
	movslq	%ecx, %rdi
	callq	g_malloc_n
	movq	%rax, -616(%rbp)
	jmp	.LBB4_28
.LBB4_24:                               # %if.else.61
	leaq	-128(%rbp), %rdi
	xorl	%eax, %eax
	movl	$1, %ecx
	movq	-8(%rbp), %rsi
	movq	-8(%rbp), %rdx
	movl	4(%rdx), %r8d
	movq	-8(%rbp), %rdx
	movl	8(%rdx), %r9d
	movl	%eax, %edx
	movl	%ecx, -676(%rbp)        # 4-byte Spill
	movl	%eax, %ecx
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	callq	gimp_pixel_rgn_init
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movl	$0, -556(%rbp)
	ucomisd	-16(%rbp), %xmm0
	jbe	.LBB4_26
# BB#25:                                # %cond.true.66
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -688(%rbp)       # 8-byte Spill
	jmp	.LBB4_27
.LBB4_26:                               # %cond.false.67
	movsd	.LCPI4_1, %xmm0         # xmm0 = mem[0],zero
	movl	-132(%rbp), %eax
	imull	-136(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	mulsd	-16(%rbp), %xmm1
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -688(%rbp)       # 8-byte Spill
.LBB4_27:                               # %cond.end.72
	movsd	-688(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -560(%rbp)
.LBB4_28:                               # %if.end.75
	movsd	.LCPI4_2, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI4_0, %xmm1         # xmm1 = mem[0],zero
	movsd	-16(%rbp), %xmm2        # xmm2 = mem[0],zero
	movapd	.LCPI4_3(%rip), %xmm3   # xmm3 = [9223372036854775807,9223372036854775807]
	andpd	%xmm3, %xmm2
	addsd	%xmm1, %xmm2
	movsd	%xmm2, -16(%rbp)
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-16(%rbp), %xmm1
	movd	%xmm1, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm1
	movsd	%xmm1, -696(%rbp)       # 8-byte Spill
	callq	log
	leaq	-480(%rbp), %r9
	leaq	-432(%rbp), %r8
	leaq	-384(%rbp), %rcx
	leaq	-336(%rbp), %rdx
	leaq	-288(%rbp), %rsi
	leaq	-240(%rbp), %rdi
	movsd	.LCPI4_1, %xmm1         # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-696(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	divsd	%xmm1, %xmm0
	movq	%rdi, -704(%rbp)        # 8-byte Spill
	movq	%r9, -712(%rbp)         # 8-byte Spill
	movq	%r8, -720(%rbp)         # 8-byte Spill
	movq	%rcx, -728(%rbp)        # 8-byte Spill
	movq	%rdx, -736(%rbp)        # 8-byte Spill
	movq	%rsi, -744(%rbp)        # 8-byte Spill
	callq	sqrt
	movsd	%xmm0, -600(%rbp)
	movsd	-600(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-704(%rbp), %rdi        # 8-byte Reload
	movq	-744(%rbp), %rsi        # 8-byte Reload
	movq	-736(%rbp), %rdx        # 8-byte Reload
	movq	-728(%rbp), %rcx        # 8-byte Reload
	movq	-720(%rbp), %r8         # 8-byte Reload
	movq	-712(%rbp), %r9         # 8-byte Reload
	callq	find_constants
	movl	$0, -544(%rbp)
.LBB4_29:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_31 Depth 2
                                        #     Child Loop BB4_35 Depth 2
                                        #       Child Loop BB4_40 Depth 3
                                        #         Child Loop BB4_42 Depth 4
                                        #         Child Loop BB4_46 Depth 4
                                        #     Child Loop BB4_57 Depth 2
	movl	-544(%rbp), %eax
	cmpl	-132(%rbp), %eax
	jge	.LBB4_66
# BB#30:                                # %for.body
                                        #   in Loop: Header=BB4_29 Depth=1
	leaq	-80(%rbp), %rdi
	xorl	%eax, %eax
	movq	-488(%rbp), %rcx
	movl	-136(%rbp), %edx
	imull	-140(%rbp), %edx
	movslq	%edx, %rsi
	shlq	$3, %rsi
	movq	%rdi, -752(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rsi, -760(%rbp)        # 8-byte Spill
	movl	%eax, %esi
	movq	-760(%rbp), %rdx        # 8-byte Reload
	movl	%eax, -764(%rbp)        # 4-byte Spill
	callq	memset
	movq	-496(%rbp), %rcx
	movl	-136(%rbp), %eax
	imull	-140(%rbp), %eax
	movslq	%eax, %rdx
	shlq	$3, %rdx
	movq	%rcx, %rdi
	movl	-764(%rbp), %esi        # 4-byte Reload
	callq	memset
	movq	-168(%rbp), %rsi
	movl	-544(%rbp), %eax
	addl	-516(%rbp), %eax
	movl	-520(%rbp), %ecx
	movl	-528(%rbp), %r8d
	subl	-520(%rbp), %r8d
	movq	-752(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %edx
	callq	gimp_pixel_rgn_get_col
	movq	-168(%rbp), %rsi
	movq	%rsi, -184(%rbp)
	movq	-168(%rbp), %rsi
	movl	-136(%rbp), %eax
	subl	$1, %eax
	imull	-140(%rbp), %eax
	movslq	%eax, %rdi
	addq	%rdi, %rsi
	movq	%rsi, -192(%rbp)
	movq	-488(%rbp), %rsi
	movq	%rsi, -504(%rbp)
	movq	-496(%rbp), %rsi
	movl	-136(%rbp), %eax
	subl	$1, %eax
	imull	-140(%rbp), %eax
	movslq	%eax, %rdi
	shlq	$3, %rdi
	addq	%rdi, %rsi
	movq	%rsi, -512(%rbp)
	movl	$0, -532(%rbp)
.LBB4_31:                               # %for.cond.104
                                        #   Parent Loop BB4_29 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-532(%rbp), %eax
	cmpl	-140(%rbp), %eax
	jge	.LBB4_34
# BB#32:                                # %for.body.107
                                        #   in Loop: Header=BB4_31 Depth=2
	movslq	-532(%rbp), %rax
	movq	-184(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movslq	-532(%rbp), %rax
	movl	%edx, -576(%rbp,%rax,4)
	movslq	-532(%rbp), %rax
	movq	-192(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movslq	-532(%rbp), %rax
	movl	%edx, -592(%rbp,%rax,4)
# BB#33:                                # %for.inc
                                        #   in Loop: Header=BB4_31 Depth=2
	movl	-532(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -532(%rbp)
	jmp	.LBB4_31
.LBB4_34:                               # %for.end
                                        #   in Loop: Header=BB4_29 Depth=1
	movl	$0, -540(%rbp)
.LBB4_35:                               # %for.cond.116
                                        #   Parent Loop BB4_29 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_40 Depth 3
                                        #         Child Loop BB4_42 Depth 4
                                        #         Child Loop BB4_46 Depth 4
	movl	-540(%rbp), %eax
	cmpl	-136(%rbp), %eax
	jge	.LBB4_55
# BB#36:                                # %for.body.119
                                        #   in Loop: Header=BB4_35 Depth=2
	cmpl	$4, -540(%rbp)
	jge	.LBB4_38
# BB#37:                                # %cond.true.122
                                        #   in Loop: Header=BB4_35 Depth=2
	movl	-540(%rbp), %eax
	movl	%eax, -768(%rbp)        # 4-byte Spill
	jmp	.LBB4_39
.LBB4_38:                               # %cond.false.123
                                        #   in Loop: Header=BB4_35 Depth=2
	movl	$4, %eax
	movl	%eax, -768(%rbp)        # 4-byte Spill
	jmp	.LBB4_39
.LBB4_39:                               # %cond.end.124
                                        #   in Loop: Header=BB4_35 Depth=2
	movl	-768(%rbp), %eax        # 4-byte Reload
	movl	%eax, -552(%rbp)
	movl	$0, -548(%rbp)
.LBB4_40:                               # %for.cond.126
                                        #   Parent Loop BB4_29 Depth=1
                                        #     Parent Loop BB4_35 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB4_42 Depth 4
                                        #         Child Loop BB4_46 Depth 4
	movl	-548(%rbp), %eax
	cmpl	-144(%rbp), %eax
	jge	.LBB4_51
# BB#41:                                # %for.body.129
                                        #   in Loop: Header=BB4_40 Depth=3
	movq	-504(%rbp), %rax
	movslq	-548(%rbp), %rcx
	shlq	$3, %rcx
	addq	%rcx, %rax
	movq	%rax, -624(%rbp)
	movq	-512(%rbp), %rax
	movslq	-548(%rbp), %rcx
	shlq	$3, %rcx
	addq	%rcx, %rax
	movq	%rax, -632(%rbp)
	movl	$0, -532(%rbp)
.LBB4_42:                               # %for.cond.134
                                        #   Parent Loop BB4_29 Depth=1
                                        #     Parent Loop BB4_35 Depth=2
                                        #       Parent Loop BB4_40 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	-532(%rbp), %eax
	cmpl	-552(%rbp), %eax
	jg	.LBB4_45
# BB#43:                                # %for.body.137
                                        #   in Loop: Header=BB4_42 Depth=4
	xorl	%eax, %eax
	movslq	-532(%rbp), %rcx
	movsd	-240(%rbp,%rcx,8), %xmm0 # xmm0 = mem[0],zero
	movl	%eax, %edx
	subl	-532(%rbp), %edx
	imull	-140(%rbp), %edx
	addl	-548(%rbp), %edx
	movslq	%edx, %rcx
	movq	-184(%rbp), %rsi
	movzbl	(%rsi,%rcx), %edx
	cvtsi2sdl	%edx, %xmm1
	mulsd	%xmm1, %xmm0
	movslq	-532(%rbp), %rcx
	movsd	-336(%rbp,%rcx,8), %xmm1 # xmm1 = mem[0],zero
	subl	-532(%rbp), %eax
	imull	-140(%rbp), %eax
	addl	-548(%rbp), %eax
	movslq	%eax, %rcx
	movq	-504(%rbp), %rsi
	mulsd	(%rsi,%rcx,8), %xmm1
	subsd	%xmm1, %xmm0
	movq	-624(%rbp), %rcx
	addsd	(%rcx), %xmm0
	movsd	%xmm0, (%rcx)
	movslq	-532(%rbp), %rcx
	movsd	-288(%rbp,%rcx,8), %xmm0 # xmm0 = mem[0],zero
	movl	-532(%rbp), %eax
	imull	-140(%rbp), %eax
	addl	-548(%rbp), %eax
	movslq	%eax, %rcx
	movq	-192(%rbp), %rsi
	movzbl	(%rsi,%rcx), %eax
	cvtsi2sdl	%eax, %xmm1
	mulsd	%xmm1, %xmm0
	movslq	-532(%rbp), %rcx
	movsd	-384(%rbp,%rcx,8), %xmm1 # xmm1 = mem[0],zero
	movl	-532(%rbp), %eax
	imull	-140(%rbp), %eax
	addl	-548(%rbp), %eax
	movslq	%eax, %rcx
	movq	-512(%rbp), %rsi
	mulsd	(%rsi,%rcx,8), %xmm1
	subsd	%xmm1, %xmm0
	movq	-632(%rbp), %rcx
	addsd	(%rcx), %xmm0
	movsd	%xmm0, (%rcx)
# BB#44:                                # %for.inc.176
                                        #   in Loop: Header=BB4_42 Depth=4
	movl	-532(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -532(%rbp)
	jmp	.LBB4_42
.LBB4_45:                               # %for.end.178
                                        #   in Loop: Header=BB4_40 Depth=3
	movl	-532(%rbp), %eax
	movl	%eax, -536(%rbp)
.LBB4_46:                               # %for.cond.179
                                        #   Parent Loop BB4_29 Depth=1
                                        #     Parent Loop BB4_35 Depth=2
                                        #       Parent Loop BB4_40 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	cmpl	$4, -536(%rbp)
	jg	.LBB4_49
# BB#47:                                # %for.body.182
                                        #   in Loop: Header=BB4_46 Depth=4
	movslq	-536(%rbp), %rax
	movsd	-240(%rbp,%rax,8), %xmm0 # xmm0 = mem[0],zero
	movslq	-536(%rbp), %rax
	subsd	-432(%rbp,%rax,8), %xmm0
	movslq	-548(%rbp), %rax
	cvtsi2sdl	-576(%rbp,%rax,4), %xmm1
	mulsd	%xmm1, %xmm0
	movq	-624(%rbp), %rax
	addsd	(%rax), %xmm0
	movsd	%xmm0, (%rax)
	movslq	-536(%rbp), %rax
	movsd	-288(%rbp,%rax,8), %xmm0 # xmm0 = mem[0],zero
	movslq	-536(%rbp), %rax
	subsd	-480(%rbp,%rax,8), %xmm0
	movslq	-548(%rbp), %rax
	cvtsi2sdl	-592(%rbp,%rax,4), %xmm1
	mulsd	%xmm1, %xmm0
	movq	-632(%rbp), %rax
	addsd	(%rax), %xmm0
	movsd	%xmm0, (%rax)
# BB#48:                                # %for.inc.203
                                        #   in Loop: Header=BB4_46 Depth=4
	movl	-536(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -536(%rbp)
	jmp	.LBB4_46
.LBB4_49:                               # %for.end.205
                                        #   in Loop: Header=BB4_40 Depth=3
	jmp	.LBB4_50
.LBB4_50:                               # %for.inc.206
                                        #   in Loop: Header=BB4_40 Depth=3
	movl	-548(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -548(%rbp)
	jmp	.LBB4_40
.LBB4_51:                               # %for.end.208
                                        #   in Loop: Header=BB4_35 Depth=2
	cmpl	$0, -148(%rbp)
	je	.LBB4_53
# BB#52:                                # %if.then.210
                                        #   in Loop: Header=BB4_35 Depth=2
	movslq	-144(%rbp), %rax
	movq	-184(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cvtsi2sdl	%edx, %xmm0
	movq	-504(%rbp), %rcx
	movsd	%xmm0, (%rcx,%rax,8)
	movslq	-144(%rbp), %rax
	movq	-192(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cvtsi2sdl	%edx, %xmm0
	movslq	-144(%rbp), %rax
	movq	-512(%rbp), %rcx
	movsd	%xmm0, (%rcx,%rax,8)
.LBB4_53:                               # %if.end.221
                                        #   in Loop: Header=BB4_35 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movl	-140(%rbp), %eax
	movq	-184(%rbp), %rdx
	movslq	%eax, %rsi
	addq	%rsi, %rdx
	movq	%rdx, -184(%rbp)
	movl	-140(%rbp), %eax
	movq	-192(%rbp), %rdx
	movslq	%eax, %rsi
	movq	%rcx, %rdi
	subq	%rsi, %rdi
	addq	%rdi, %rdx
	movq	%rdx, -192(%rbp)
	movl	-140(%rbp), %eax
	movq	-504(%rbp), %rdx
	movslq	%eax, %rsi
	shlq	$3, %rsi
	addq	%rsi, %rdx
	movq	%rdx, -504(%rbp)
	movl	-140(%rbp), %eax
	movq	-512(%rbp), %rdx
	movslq	%eax, %rsi
	subq	%rsi, %rcx
	shlq	$3, %rcx
	addq	%rcx, %rdx
	movq	%rdx, -512(%rbp)
# BB#54:                                # %for.inc.231
                                        #   in Loop: Header=BB4_35 Depth=2
	movl	-540(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -540(%rbp)
	jmp	.LBB4_35
.LBB4_55:                               # %for.end.233
                                        #   in Loop: Header=BB4_29 Depth=1
	movq	-488(%rbp), %rdi
	movq	-496(%rbp), %rsi
	movq	-160(%rbp), %rdx
	movl	-140(%rbp), %ecx
	movl	-136(%rbp), %r8d
	callq	transfer_pixels
	cmpq	$0, -32(%rbp)
	je	.LBB4_61
# BB#56:                                # %if.then.235
                                        #   in Loop: Header=BB4_29 Depth=1
	movl	$0, -540(%rbp)
.LBB4_57:                               # %for.cond.236
                                        #   Parent Loop BB4_29 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-540(%rbp), %eax
	cmpl	-136(%rbp), %eax
	jge	.LBB4_60
# BB#58:                                # %for.body.239
                                        #   in Loop: Header=BB4_57 Depth=2
	movq	-608(%rbp), %rax
	movl	-540(%rbp), %ecx
	imull	-132(%rbp), %ecx
	addl	-544(%rbp), %ecx
	imull	-140(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	-160(%rbp), %rdx
	movl	-140(%rbp), %ecx
	imull	-540(%rbp), %ecx
	movslq	%ecx, %rsi
	addq	%rsi, %rdx
	movslq	-140(%rbp), %rsi
	movq	%rax, %rdi
	movq	%rsi, -776(%rbp)        # 8-byte Spill
	movq	%rdx, %rsi
	movq	-776(%rbp), %rdx        # 8-byte Reload
	callq	memcpy
# BB#59:                                # %for.inc.249
                                        #   in Loop: Header=BB4_57 Depth=2
	movl	-540(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -540(%rbp)
	jmp	.LBB4_57
.LBB4_60:                               # %for.end.251
                                        #   in Loop: Header=BB4_29 Depth=1
	jmp	.LBB4_64
.LBB4_61:                               # %if.else.252
                                        #   in Loop: Header=BB4_29 Depth=1
	leaq	-128(%rbp), %rdi
	movq	-160(%rbp), %rsi
	movl	-544(%rbp), %eax
	addl	-516(%rbp), %eax
	movl	-520(%rbp), %ecx
	movl	-528(%rbp), %edx
	subl	-520(%rbp), %edx
	movl	%edx, -780(%rbp)        # 4-byte Spill
	movl	%eax, %edx
	movl	-780(%rbp), %r8d        # 4-byte Reload
	callq	gimp_pixel_rgn_set_col
	movl	$20, %eax
	cvtsi2sdl	-136(%rbp), %xmm0
	mulsd	-16(%rbp), %xmm0
	cvtsi2sdl	-556(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %ecx
	movl	%ecx, -556(%rbp)
	movl	-544(%rbp), %ecx
	movl	%eax, -784(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-784(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB4_63
# BB#62:                                # %if.then.262
                                        #   in Loop: Header=BB4_29 Depth=1
	cvtsi2sdl	-556(%rbp), %xmm0
	cvtsi2sdl	-560(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -788(%rbp)        # 4-byte Spill
.LBB4_63:                               # %if.end.267
                                        #   in Loop: Header=BB4_29 Depth=1
	jmp	.LBB4_64
.LBB4_64:                               # %if.end.268
                                        #   in Loop: Header=BB4_29 Depth=1
	jmp	.LBB4_65
.LBB4_65:                               # %for.inc.269
                                        #   in Loop: Header=BB4_29 Depth=1
	movl	-544(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -544(%rbp)
	jmp	.LBB4_29
.LBB4_66:                               # %for.end.271
	leaq	-80(%rbp), %rdi
	xorl	%eax, %eax
	movq	-8(%rbp), %rsi
	movq	-8(%rbp), %rcx
	movl	4(%rcx), %r8d
	movq	-8(%rbp), %rcx
	movl	8(%rcx), %r9d
	movl	%eax, %edx
	movl	%eax, %ecx
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	movl	$0, -540(%rbp)
.LBB4_67:                               # %for.cond.274
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_72 Depth 2
                                        #     Child Loop BB4_76 Depth 2
                                        #       Child Loop BB4_81 Depth 3
                                        #         Child Loop BB4_83 Depth 4
                                        #         Child Loop BB4_87 Depth 4
	movl	-540(%rbp), %eax
	cmpl	-136(%rbp), %eax
	jge	.LBB4_103
# BB#68:                                # %for.body.277
                                        #   in Loop: Header=BB4_67 Depth=1
	leaq	-80(%rbp), %rdi
	xorl	%eax, %eax
	movq	-488(%rbp), %rcx
	movl	-132(%rbp), %edx
	imull	-140(%rbp), %edx
	movslq	%edx, %rsi
	shlq	$3, %rsi
	movq	%rdi, -800(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rsi, -808(%rbp)        # 8-byte Spill
	movl	%eax, %esi
	movq	-808(%rbp), %rdx        # 8-byte Reload
	movl	%eax, -812(%rbp)        # 4-byte Spill
	callq	memset
	movq	-496(%rbp), %rcx
	movl	-132(%rbp), %eax
	imull	-140(%rbp), %eax
	movslq	%eax, %rdx
	shlq	$3, %rdx
	movq	%rcx, %rdi
	movl	-812(%rbp), %esi        # 4-byte Reload
	callq	memset
	movq	-168(%rbp), %rsi
	movl	-516(%rbp), %edx
	movl	-540(%rbp), %eax
	addl	-520(%rbp), %eax
	movl	-524(%rbp), %r8d
	subl	-516(%rbp), %r8d
	movq	-800(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %ecx
	callq	gimp_pixel_rgn_get_row
	cmpq	$0, -32(%rbp)
	je	.LBB4_70
# BB#69:                                # %if.then.287
                                        #   in Loop: Header=BB4_67 Depth=1
	movq	-176(%rbp), %rdi
	movq	-608(%rbp), %rax
	movl	-540(%rbp), %ecx
	imull	-132(%rbp), %ecx
	imull	-140(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movl	-132(%rbp), %ecx
	imull	-140(%rbp), %ecx
	movslq	%ecx, %rdx
	movq	%rax, %rsi
	callq	memcpy
	jmp	.LBB4_71
.LBB4_70:                               # %if.else.294
                                        #   in Loop: Header=BB4_67 Depth=1
	leaq	-128(%rbp), %rdi
	movq	-176(%rbp), %rsi
	movl	-516(%rbp), %edx
	movl	-540(%rbp), %eax
	addl	-520(%rbp), %eax
	movl	-524(%rbp), %ecx
	subl	-516(%rbp), %ecx
	movl	%ecx, -816(%rbp)        # 4-byte Spill
	movl	%eax, %ecx
	movl	-816(%rbp), %r8d        # 4-byte Reload
	callq	gimp_pixel_rgn_get_row
.LBB4_71:                               # %if.end.297
                                        #   in Loop: Header=BB4_67 Depth=1
	movq	-168(%rbp), %rax
	movq	%rax, -184(%rbp)
	movq	-168(%rbp), %rax
	movl	-132(%rbp), %ecx
	subl	$1, %ecx
	imull	-140(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -192(%rbp)
	movq	-488(%rbp), %rax
	movq	%rax, -504(%rbp)
	movq	-496(%rbp), %rax
	movl	-132(%rbp), %ecx
	subl	$1, %ecx
	imull	-140(%rbp), %ecx
	movslq	%ecx, %rdx
	shlq	$3, %rdx
	addq	%rdx, %rax
	movq	%rax, -512(%rbp)
	movl	$0, -532(%rbp)
.LBB4_72:                               # %for.cond.306
                                        #   Parent Loop BB4_67 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-532(%rbp), %eax
	cmpl	-140(%rbp), %eax
	jge	.LBB4_75
# BB#73:                                # %for.body.309
                                        #   in Loop: Header=BB4_72 Depth=2
	movslq	-532(%rbp), %rax
	movq	-184(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movslq	-532(%rbp), %rax
	movl	%edx, -576(%rbp,%rax,4)
	movslq	-532(%rbp), %rax
	movq	-192(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movslq	-532(%rbp), %rax
	movl	%edx, -592(%rbp,%rax,4)
# BB#74:                                # %for.inc.320
                                        #   in Loop: Header=BB4_72 Depth=2
	movl	-532(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -532(%rbp)
	jmp	.LBB4_72
.LBB4_75:                               # %for.end.322
                                        #   in Loop: Header=BB4_67 Depth=1
	movl	$0, -544(%rbp)
.LBB4_76:                               # %for.cond.323
                                        #   Parent Loop BB4_67 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_81 Depth 3
                                        #         Child Loop BB4_83 Depth 4
                                        #         Child Loop BB4_87 Depth 4
	movl	-544(%rbp), %eax
	cmpl	-132(%rbp), %eax
	jge	.LBB4_96
# BB#77:                                # %for.body.326
                                        #   in Loop: Header=BB4_76 Depth=2
	cmpl	$4, -544(%rbp)
	jge	.LBB4_79
# BB#78:                                # %cond.true.331
                                        #   in Loop: Header=BB4_76 Depth=2
	movl	-544(%rbp), %eax
	movl	%eax, -820(%rbp)        # 4-byte Spill
	jmp	.LBB4_80
.LBB4_79:                               # %cond.false.332
                                        #   in Loop: Header=BB4_76 Depth=2
	movl	$4, %eax
	movl	%eax, -820(%rbp)        # 4-byte Spill
	jmp	.LBB4_80
.LBB4_80:                               # %cond.end.333
                                        #   in Loop: Header=BB4_76 Depth=2
	movl	-820(%rbp), %eax        # 4-byte Reload
	movl	%eax, -552(%rbp)
	movl	$0, -548(%rbp)
.LBB4_81:                               # %for.cond.335
                                        #   Parent Loop BB4_67 Depth=1
                                        #     Parent Loop BB4_76 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB4_83 Depth 4
                                        #         Child Loop BB4_87 Depth 4
	movl	-548(%rbp), %eax
	cmpl	-144(%rbp), %eax
	jge	.LBB4_92
# BB#82:                                # %for.body.338
                                        #   in Loop: Header=BB4_81 Depth=3
	movq	-504(%rbp), %rax
	movslq	-548(%rbp), %rcx
	shlq	$3, %rcx
	addq	%rcx, %rax
	movq	%rax, -640(%rbp)
	movq	-512(%rbp), %rax
	movslq	-548(%rbp), %rcx
	shlq	$3, %rcx
	addq	%rcx, %rax
	movq	%rax, -648(%rbp)
	movl	$0, -532(%rbp)
.LBB4_83:                               # %for.cond.343
                                        #   Parent Loop BB4_67 Depth=1
                                        #     Parent Loop BB4_76 Depth=2
                                        #       Parent Loop BB4_81 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	-532(%rbp), %eax
	cmpl	-552(%rbp), %eax
	jg	.LBB4_86
# BB#84:                                # %for.body.346
                                        #   in Loop: Header=BB4_83 Depth=4
	xorl	%eax, %eax
	movslq	-532(%rbp), %rcx
	movsd	-240(%rbp,%rcx,8), %xmm0 # xmm0 = mem[0],zero
	movl	%eax, %edx
	subl	-532(%rbp), %edx
	imull	-140(%rbp), %edx
	addl	-548(%rbp), %edx
	movslq	%edx, %rcx
	movq	-184(%rbp), %rsi
	movzbl	(%rsi,%rcx), %edx
	cvtsi2sdl	%edx, %xmm1
	mulsd	%xmm1, %xmm0
	movslq	-532(%rbp), %rcx
	movsd	-336(%rbp,%rcx,8), %xmm1 # xmm1 = mem[0],zero
	subl	-532(%rbp), %eax
	imull	-140(%rbp), %eax
	addl	-548(%rbp), %eax
	movslq	%eax, %rcx
	movq	-504(%rbp), %rsi
	mulsd	(%rsi,%rcx,8), %xmm1
	subsd	%xmm1, %xmm0
	movq	-640(%rbp), %rcx
	addsd	(%rcx), %xmm0
	movsd	%xmm0, (%rcx)
	movslq	-532(%rbp), %rcx
	movsd	-288(%rbp,%rcx,8), %xmm0 # xmm0 = mem[0],zero
	movl	-532(%rbp), %eax
	imull	-140(%rbp), %eax
	addl	-548(%rbp), %eax
	movslq	%eax, %rcx
	movq	-192(%rbp), %rsi
	movzbl	(%rsi,%rcx), %eax
	cvtsi2sdl	%eax, %xmm1
	mulsd	%xmm1, %xmm0
	movslq	-532(%rbp), %rcx
	movsd	-384(%rbp,%rcx,8), %xmm1 # xmm1 = mem[0],zero
	movl	-532(%rbp), %eax
	imull	-140(%rbp), %eax
	addl	-548(%rbp), %eax
	movslq	%eax, %rcx
	movq	-512(%rbp), %rsi
	mulsd	(%rsi,%rcx,8), %xmm1
	subsd	%xmm1, %xmm0
	movq	-648(%rbp), %rcx
	addsd	(%rcx), %xmm0
	movsd	%xmm0, (%rcx)
# BB#85:                                # %for.inc.385
                                        #   in Loop: Header=BB4_83 Depth=4
	movl	-532(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -532(%rbp)
	jmp	.LBB4_83
.LBB4_86:                               # %for.end.387
                                        #   in Loop: Header=BB4_81 Depth=3
	movl	-532(%rbp), %eax
	movl	%eax, -536(%rbp)
.LBB4_87:                               # %for.cond.388
                                        #   Parent Loop BB4_67 Depth=1
                                        #     Parent Loop BB4_76 Depth=2
                                        #       Parent Loop BB4_81 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	cmpl	$4, -536(%rbp)
	jg	.LBB4_90
# BB#88:                                # %for.body.391
                                        #   in Loop: Header=BB4_87 Depth=4
	movslq	-536(%rbp), %rax
	movsd	-240(%rbp,%rax,8), %xmm0 # xmm0 = mem[0],zero
	movslq	-536(%rbp), %rax
	subsd	-432(%rbp,%rax,8), %xmm0
	movslq	-548(%rbp), %rax
	cvtsi2sdl	-576(%rbp,%rax,4), %xmm1
	mulsd	%xmm1, %xmm0
	movq	-640(%rbp), %rax
	addsd	(%rax), %xmm0
	movsd	%xmm0, (%rax)
	movslq	-536(%rbp), %rax
	movsd	-288(%rbp,%rax,8), %xmm0 # xmm0 = mem[0],zero
	movslq	-536(%rbp), %rax
	subsd	-480(%rbp,%rax,8), %xmm0
	movslq	-548(%rbp), %rax
	cvtsi2sdl	-592(%rbp,%rax,4), %xmm1
	mulsd	%xmm1, %xmm0
	movq	-648(%rbp), %rax
	addsd	(%rax), %xmm0
	movsd	%xmm0, (%rax)
# BB#89:                                # %for.inc.412
                                        #   in Loop: Header=BB4_87 Depth=4
	movl	-536(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -536(%rbp)
	jmp	.LBB4_87
.LBB4_90:                               # %for.end.414
                                        #   in Loop: Header=BB4_81 Depth=3
	jmp	.LBB4_91
.LBB4_91:                               # %for.inc.415
                                        #   in Loop: Header=BB4_81 Depth=3
	movl	-548(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -548(%rbp)
	jmp	.LBB4_81
.LBB4_92:                               # %for.end.417
                                        #   in Loop: Header=BB4_76 Depth=2
	cmpl	$0, -148(%rbp)
	je	.LBB4_94
# BB#93:                                # %if.then.419
                                        #   in Loop: Header=BB4_76 Depth=2
	movslq	-144(%rbp), %rax
	movq	-184(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cvtsi2sdl	%edx, %xmm0
	movq	-504(%rbp), %rcx
	movsd	%xmm0, (%rcx,%rax,8)
	movslq	-144(%rbp), %rax
	movq	-192(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cvtsi2sdl	%edx, %xmm0
	movslq	-144(%rbp), %rax
	movq	-512(%rbp), %rcx
	movsd	%xmm0, (%rcx,%rax,8)
.LBB4_94:                               # %if.end.430
                                        #   in Loop: Header=BB4_76 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movl	-140(%rbp), %eax
	movq	-184(%rbp), %rdx
	movslq	%eax, %rsi
	addq	%rsi, %rdx
	movq	%rdx, -184(%rbp)
	movl	-140(%rbp), %eax
	movq	-192(%rbp), %rdx
	movslq	%eax, %rsi
	movq	%rcx, %rdi
	subq	%rsi, %rdi
	addq	%rdi, %rdx
	movq	%rdx, -192(%rbp)
	movl	-140(%rbp), %eax
	movq	-504(%rbp), %rdx
	movslq	%eax, %rsi
	shlq	$3, %rsi
	addq	%rsi, %rdx
	movq	%rdx, -504(%rbp)
	movl	-140(%rbp), %eax
	movq	-512(%rbp), %rdx
	movslq	%eax, %rsi
	subq	%rsi, %rcx
	shlq	$3, %rcx
	addq	%rcx, %rdx
	movq	%rdx, -512(%rbp)
# BB#95:                                # %for.inc.441
                                        #   in Loop: Header=BB4_76 Depth=2
	movl	-544(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -544(%rbp)
	jmp	.LBB4_76
.LBB4_96:                               # %for.end.443
                                        #   in Loop: Header=BB4_67 Depth=1
	movq	-488(%rbp), %rdi
	movq	-496(%rbp), %rsi
	movq	-160(%rbp), %rdx
	movl	-140(%rbp), %ecx
	movl	-132(%rbp), %r8d
	callq	transfer_pixels
	movq	-160(%rbp), %rdi
	movq	-176(%rbp), %rsi
	movl	-140(%rbp), %edx
	movl	-132(%rbp), %ecx
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	combine_to_gradient
	cmpq	$0, -32(%rbp)
	je	.LBB4_98
# BB#97:                                # %if.then.445
                                        #   in Loop: Header=BB4_67 Depth=1
	movq	-616(%rbp), %rax
	movl	-540(%rbp), %ecx
	imull	-132(%rbp), %ecx
	imull	-140(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	-160(%rbp), %rsi
	movl	-132(%rbp), %ecx
	imull	-140(%rbp), %ecx
	movslq	%ecx, %rdx
	movq	%rax, %rdi
	callq	memcpy
	jmp	.LBB4_101
.LBB4_98:                               # %if.else.452
                                        #   in Loop: Header=BB4_67 Depth=1
	leaq	-128(%rbp), %rdi
	movq	-160(%rbp), %rsi
	movl	-516(%rbp), %edx
	movl	-540(%rbp), %eax
	addl	-520(%rbp), %eax
	movl	-524(%rbp), %ecx
	subl	-516(%rbp), %ecx
	movl	%ecx, -824(%rbp)        # 4-byte Spill
	movl	%eax, %ecx
	movl	-824(%rbp), %r8d        # 4-byte Reload
	callq	gimp_pixel_rgn_set_row
	movl	$20, %eax
	cvtsi2sdl	-132(%rbp), %xmm0
	mulsd	-16(%rbp), %xmm0
	cvtsi2sdl	-556(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %ecx
	movl	%ecx, -556(%rbp)
	movl	-540(%rbp), %ecx
	movl	%eax, -828(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-828(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB4_100
# BB#99:                                # %if.then.463
                                        #   in Loop: Header=BB4_67 Depth=1
	cvtsi2sdl	-556(%rbp), %xmm0
	cvtsi2sdl	-560(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -832(%rbp)        # 4-byte Spill
.LBB4_100:                              # %if.end.468
                                        #   in Loop: Header=BB4_67 Depth=1
	jmp	.LBB4_101
.LBB4_101:                              # %if.end.469
                                        #   in Loop: Header=BB4_67 Depth=1
	jmp	.LBB4_102
.LBB4_102:                              # %for.inc.470
                                        #   in Loop: Header=BB4_67 Depth=1
	movl	-540(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -540(%rbp)
	jmp	.LBB4_67
.LBB4_103:                              # %for.end.472
	cmpq	$0, -32(%rbp)
	je	.LBB4_105
# BB#104:                               # %if.then.474
	movq	-32(%rbp), %rdi
	movq	-616(%rbp), %rsi
	movl	-132(%rbp), %eax
	imull	-140(%rbp), %eax
	movl	%eax, %edx
	callq	gimp_preview_draw_buffer
	movq	-608(%rbp), %rdi
	callq	g_free
	movq	-616(%rbp), %rdi
	callq	g_free
	jmp	.LBB4_106
.LBB4_105:                              # %if.else.476
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	callq	gimp_progress_update
	leaq	-80(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	-8(%rbp), %rsi
	movq	-8(%rbp), %r8
	movl	4(%r8), %r8d
	movq	-8(%rbp), %r9
	movl	8(%r9), %r9d
	movl	%edx, -836(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	$0, (%rsp)
	movl	$1, 8(%rsp)
	movl	%eax, -840(%rbp)        # 4-byte Spill
	callq	gimp_pixel_rgn_init
	movq	-8(%rbp), %rdi
	callq	gimp_drawable_flush
	movl	$1, %esi
	movq	-8(%rbp), %rdi
	movl	(%rdi), %edi
	callq	gimp_drawable_merge_shadow
	movq	-8(%rbp), %r10
	movl	(%r10), %edi
	movl	-516(%rbp), %esi
	movl	-520(%rbp), %edx
	movl	-524(%rbp), %ecx
	subl	-516(%rbp), %ecx
	movl	-528(%rbp), %r8d
	subl	-520(%rbp), %r8d
	movl	%eax, -844(%rbp)        # 4-byte Spill
	callq	gimp_drawable_update
	movl	%eax, -848(%rbp)        # 4-byte Spill
.LBB4_106:                              # %if.end.486
	movq	-488(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-496(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-168(%rbp), %rdi
	callq	g_free
	movq	-176(%rbp), %rdi
	callq	g_free
	movq	-160(%rbp), %rdi
	callq	g_free
.LBB4_107:                              # %return
	addq	$864, %rsp              # imm = 0x360
	popq	%rbp
	retq
.Lfunc_end4:
	.size	neon, .Lfunc_end4-neon
	.cfi_endproc

	.align	16, 0x90
	.type	neon_preview_update,@function
neon_preview_update:                    # @neon_preview_update
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	callq	gimp_drawable_preview_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	280(%rax), %rdi
	movsd	evals, %xmm0            # xmm0 = mem[0],zero
	movsd	evals+8, %xmm1          # xmm1 = mem[0],zero
	movq	-8(%rbp), %rsi
	callq	neon
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	neon_preview_update, .Lfunc_end5-neon_preview_update
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	4611686018427387904     # double 2
.LCPI6_1:
	.quad	-4611686018427387904    # double -2
.LCPI6_2:
	.quad	4616189618054758400     # double 4
.LCPI6_3:
	.quad	4611848148013973242     # double 2.0720000000000001
.LCPI6_4:
	.quad	4604227156724536889     # double 0.67190000000000005
.LCPI6_5:
	.quad	-4616588636981743426    # double -0.95569999999999999
.LCPI6_6:
	.quad	-4619347542113470592    # double -0.64939999999999998
.LCPI6_7:
	.quad	4609506276207740584     # double 1.516
.LCPI6_8:
	.quad	4609555815803641659     # double 1.5269999999999999
.LCPI6_9:
	.quad	4616787470905291833     # double 4.5309999999999997
.LCPI6_10:
	.quad	4604004678902944786     # double 0.6472
.LCPI6_11:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	find_constants,@function
find_constants:                         # @find_constants
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
	subq	$352, %rsp              # imm = 0x160
	movsd	.LCPI6_0, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movsd	.LCPI6_3, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI6_4, %xmm4         # xmm4 = mem[0],zero
	movsd	.LCPI6_5, %xmm5         # xmm5 = mem[0],zero
	movsd	.LCPI6_6, %xmm6         # xmm6 = mem[0],zero
	movsd	.LCPI6_7, %xmm7         # xmm7 = mem[0],zero
	movsd	.LCPI6_8, %xmm8         # xmm8 = mem[0],zero
	movsd	.LCPI6_9, %xmm9         # xmm9 = mem[0],zero
	movsd	.LCPI6_10, %xmm10       # xmm10 = mem[0],zero
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movsd	%xmm0, -56(%rbp)
	movsd	%xmm10, -64(%rbp)
	movsd	%xmm9, -72(%rbp)
	movsd	%xmm8, -80(%rbp)
	movsd	%xmm7, -88(%rbp)
	movsd	%xmm6, -96(%rbp)
	movsd	%xmm5, -104(%rbp)
	movsd	%xmm4, -112(%rbp)
	movsd	%xmm3, -120(%rbp)
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	divsd	-56(%rbp), %xmm0
	movsd	%xmm0, -128(%rbp)
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	divsd	-56(%rbp), %xmm0
	movsd	%xmm0, -136(%rbp)
	movsd	-128(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm2, -240(%rbp)       # 8-byte Spill
	movsd	%xmm1, -248(%rbp)       # 8-byte Spill
	callq	cos
	movsd	%xmm0, -144(%rbp)
	movsd	-136(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	cos
	movsd	%xmm0, -152(%rbp)
	movsd	-128(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	sin
	movsd	%xmm0, -160(%rbp)
	movsd	-136(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	sin
	movsd	%xmm0, -168(%rbp)
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	divsd	-56(%rbp), %xmm0
	movsd	%xmm0, -176(%rbp)
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	divsd	-56(%rbp), %xmm0
	movsd	%xmm0, -184(%rbp)
	movq	-8(%rbp), %rcx
	movsd	-240(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, 32(%rcx)
	movsd	-184(%rbp), %xmm1       # xmm1 = mem[0],zero
	movd	%xmm1, %rcx
	movabsq	$-9223372036854775808, %rdx # imm = 0x8000000000000000
	xorq	%rdx, %rcx
	movd	%rcx, %xmm1
	movsd	-248(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	mulsd	-176(%rbp), %xmm2
	subsd	%xmm2, %xmm1
	movaps	%xmm1, %xmm0
	callq	exp
	movsd	.LCPI6_0, %xmm1         # xmm1 = mem[0],zero
	movsd	-104(%rbp), %xmm2       # xmm2 = mem[0],zero
	mulsd	-168(%rbp), %xmm2
	movsd	-152(%rbp), %xmm3       # xmm3 = mem[0],zero
	mulsd	-96(%rbp), %xmm3
	subsd	%xmm3, %xmm2
	mulsd	%xmm2, %xmm0
	movsd	-176(%rbp), %xmm2       # xmm2 = mem[0],zero
	movd	%xmm2, %rcx
	movabsq	$-9223372036854775808, %rdx # imm = 0x8000000000000000
	xorq	%rdx, %rcx
	movd	%rcx, %xmm2
	mulsd	-184(%rbp), %xmm1
	subsd	%xmm1, %xmm2
	movsd	%xmm0, -256(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm0
	callq	exp
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-160(%rbp), %xmm1
	movsd	-144(%rbp), %xmm2       # xmm2 = mem[0],zero
	mulsd	-64(%rbp), %xmm2
	subsd	%xmm2, %xmm1
	mulsd	%xmm1, %xmm0
	movsd	-256(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	movq	-8(%rbp), %rcx
	movsd	%xmm1, 24(%rcx)
	movsd	-176(%rbp), %xmm0       # xmm0 = mem[0],zero
	movd	%xmm0, %rcx
	movabsq	$-9223372036854775808, %rdx # imm = 0x8000000000000000
	xorq	%rdx, %rcx
	movd	%rcx, %xmm0
	subsd	-184(%rbp), %xmm0
	callq	exp
	movsd	.LCPI6_1, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI6_0, %xmm2         # xmm2 = mem[0],zero
	mulsd	%xmm0, %xmm2
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	addsd	-96(%rbp), %xmm0
	mulsd	-152(%rbp), %xmm0
	mulsd	-144(%rbp), %xmm0
	movsd	-152(%rbp), %xmm3       # xmm3 = mem[0],zero
	mulsd	-72(%rbp), %xmm3
	mulsd	-160(%rbp), %xmm3
	subsd	%xmm3, %xmm0
	movsd	-144(%rbp), %xmm3       # xmm3 = mem[0],zero
	mulsd	-104(%rbp), %xmm3
	mulsd	-168(%rbp), %xmm3
	subsd	%xmm3, %xmm0
	mulsd	%xmm0, %xmm2
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-176(%rbp), %xmm1
	movsd	%xmm0, -264(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	%xmm2, -272(%rbp)       # 8-byte Spill
	callq	exp
	movsd	.LCPI6_1, %xmm1         # xmm1 = mem[0],zero
	movsd	-264(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	mulsd	%xmm0, %xmm2
	movsd	-272(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	%xmm2, %xmm0
	movsd	-64(%rbp), %xmm2        # xmm2 = mem[0],zero
	mulsd	-184(%rbp), %xmm1
	movsd	%xmm0, -280(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	%xmm2, -288(%rbp)       # 8-byte Spill
	callq	exp
	movsd	-288(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-280(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	%xmm1, %xmm0
	movq	-8(%rbp), %rcx
	movsd	%xmm0, 16(%rcx)
	movsd	-184(%rbp), %xmm0       # xmm0 = mem[0],zero
	movd	%xmm0, %rcx
	movabsq	$-9223372036854775808, %rdx # imm = 0x8000000000000000
	xorq	%rdx, %rcx
	movd	%rcx, %xmm0
	callq	exp
	movsd	.LCPI6_0, %xmm1         # xmm1 = mem[0],zero
	movsd	-104(%rbp), %xmm2       # xmm2 = mem[0],zero
	mulsd	-168(%rbp), %xmm2
	movsd	-96(%rbp), %xmm3        # xmm3 = mem[0],zero
	mulsd	-64(%rbp), %xmm1
	addsd	%xmm1, %xmm3
	mulsd	-152(%rbp), %xmm3
	subsd	%xmm3, %xmm2
	mulsd	%xmm2, %xmm0
	movsd	-176(%rbp), %xmm1       # xmm1 = mem[0],zero
	movd	%xmm1, %rcx
	movabsq	$-9223372036854775808, %rdx # imm = 0x8000000000000000
	xorq	%rdx, %rcx
	movd	%rcx, %xmm1
	movsd	%xmm0, -296(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	exp
	movsd	.LCPI6_0, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI6_1, %xmm2         # xmm2 = mem[0],zero
	movsd	-72(%rbp), %xmm3        # xmm3 = mem[0],zero
	mulsd	-160(%rbp), %xmm3
	movaps	%xmm1, %xmm4
	mulsd	-96(%rbp), %xmm4
	addsd	-64(%rbp), %xmm4
	mulsd	-144(%rbp), %xmm4
	subsd	%xmm4, %xmm3
	mulsd	%xmm3, %xmm0
	movsd	-296(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	addsd	%xmm0, %xmm3
	movq	-8(%rbp), %rcx
	movsd	%xmm3, 8(%rcx)
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	addsd	-96(%rbp), %xmm0
	movq	-8(%rbp), %rcx
	movsd	%xmm0, (%rcx)
	mulsd	-176(%rbp), %xmm2
	mulsd	-184(%rbp), %xmm1
	subsd	%xmm1, %xmm2
	movaps	%xmm2, %xmm0
	callq	exp
	movsd	.LCPI6_0, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI6_1, %xmm2         # xmm2 = mem[0],zero
	movq	-24(%rbp), %rcx
	movsd	%xmm0, 32(%rcx)
	mulsd	-144(%rbp), %xmm2
	movsd	-176(%rbp), %xmm0       # xmm0 = mem[0],zero
	movd	%xmm0, %rcx
	movabsq	$-9223372036854775808, %rdx # imm = 0x8000000000000000
	xorq	%rdx, %rcx
	movd	%rcx, %xmm0
	mulsd	-184(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm2, -304(%rbp)       # 8-byte Spill
	callq	exp
	movsd	.LCPI6_0, %xmm1         # xmm1 = mem[0],zero
	movsd	-304(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	mulsd	%xmm0, %xmm2
	movaps	%xmm1, %xmm0
	mulsd	-152(%rbp), %xmm0
	movsd	-184(%rbp), %xmm3       # xmm3 = mem[0],zero
	movd	%xmm3, %rcx
	movabsq	$-9223372036854775808, %rdx # imm = 0x8000000000000000
	xorq	%rdx, %rcx
	movd	%rcx, %xmm3
	mulsd	-176(%rbp), %xmm1
	subsd	%xmm1, %xmm3
	movsd	%xmm0, -312(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm0
	movsd	%xmm2, -320(%rbp)       # 8-byte Spill
	callq	exp
	movsd	.LCPI6_2, %xmm1         # xmm1 = mem[0],zero
	movsd	-312(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	mulsd	%xmm0, %xmm2
	movsd	-320(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	subsd	%xmm2, %xmm0
	movq	-24(%rbp), %rcx
	movsd	%xmm0, 24(%rcx)
	mulsd	-152(%rbp), %xmm1
	mulsd	-144(%rbp), %xmm1
	movsd	-176(%rbp), %xmm0       # xmm0 = mem[0],zero
	movd	%xmm0, %rcx
	movabsq	$-9223372036854775808, %rdx # imm = 0x8000000000000000
	xorq	%rdx, %rcx
	movd	%rcx, %xmm0
	subsd	-184(%rbp), %xmm0
	movsd	%xmm1, -328(%rbp)       # 8-byte Spill
	callq	exp
	movsd	.LCPI6_1, %xmm1         # xmm1 = mem[0],zero
	movsd	-328(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	mulsd	%xmm0, %xmm2
	mulsd	-184(%rbp), %xmm1
	movaps	%xmm1, %xmm0
	movsd	%xmm2, -336(%rbp)       # 8-byte Spill
	callq	exp
	movsd	.LCPI6_1, %xmm1         # xmm1 = mem[0],zero
	movsd	-336(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	addsd	%xmm0, %xmm2
	mulsd	-176(%rbp), %xmm1
	movaps	%xmm1, %xmm0
	movsd	%xmm2, -344(%rbp)       # 8-byte Spill
	callq	exp
	movsd	-344(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	movq	-24(%rbp), %rcx
	movsd	%xmm1, 16(%rcx)
	movsd	-184(%rbp), %xmm0       # xmm0 = mem[0],zero
	movd	%xmm0, %rcx
	movabsq	$-9223372036854775808, %rdx # imm = 0x8000000000000000
	xorq	%rdx, %rcx
	movd	%rcx, %xmm0
	callq	exp
	movsd	.LCPI6_1, %xmm1         # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	mulsd	-152(%rbp), %xmm1
	movsd	-176(%rbp), %xmm0       # xmm0 = mem[0],zero
	movd	%xmm0, %rcx
	movabsq	$-9223372036854775808, %rdx # imm = 0x8000000000000000
	xorq	%rdx, %rcx
	movd	%rcx, %xmm0
	movsd	%xmm1, -352(%rbp)       # 8-byte Spill
	callq	exp
	xorps	%xmm1, %xmm1
	movsd	.LCPI6_0, %xmm2         # xmm2 = mem[0],zero
	mulsd	%xmm0, %xmm2
	mulsd	-144(%rbp), %xmm2
	movsd	-352(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	subsd	%xmm2, %xmm0
	movq	-24(%rbp), %rcx
	movsd	%xmm0, 8(%rcx)
	movq	-24(%rbp), %rcx
	movsd	%xmm1, (%rcx)
	movq	-24(%rbp), %rcx
	movsd	32(%rcx), %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rcx
	mulsd	(%rcx), %xmm0
	movq	-8(%rbp), %rcx
	subsd	32(%rcx), %xmm0
	movq	-16(%rbp), %rcx
	movsd	%xmm0, 32(%rcx)
	movq	-24(%rbp), %rcx
	movsd	24(%rcx), %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rcx
	mulsd	(%rcx), %xmm0
	movq	-8(%rbp), %rcx
	subsd	24(%rcx), %xmm0
	movq	-16(%rbp), %rcx
	movsd	%xmm0, 24(%rcx)
	movq	-24(%rbp), %rcx
	movsd	16(%rcx), %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rcx
	mulsd	(%rcx), %xmm0
	movq	-8(%rbp), %rcx
	subsd	16(%rcx), %xmm0
	movq	-16(%rbp), %rcx
	movsd	%xmm0, 16(%rcx)
	movq	-24(%rbp), %rcx
	movsd	8(%rcx), %xmm0          # xmm0 = mem[0],zero
	movq	-8(%rbp), %rcx
	mulsd	(%rcx), %xmm0
	movq	-8(%rbp), %rcx
	subsd	8(%rcx), %xmm0
	movq	-16(%rbp), %rcx
	movsd	%xmm0, 8(%rcx)
	movq	-16(%rbp), %rcx
	movsd	%xmm1, (%rcx)
	movq	-24(%rbp), %rcx
	movsd	32(%rcx), %xmm0         # xmm0 = mem[0],zero
	movq	-32(%rbp), %rcx
	movsd	%xmm0, 32(%rcx)
	movq	-24(%rbp), %rcx
	movsd	24(%rcx), %xmm0         # xmm0 = mem[0],zero
	movq	-32(%rbp), %rcx
	movsd	%xmm0, 24(%rcx)
	movq	-24(%rbp), %rcx
	movsd	16(%rcx), %xmm0         # xmm0 = mem[0],zero
	movq	-32(%rbp), %rcx
	movsd	%xmm0, 16(%rcx)
	movq	-24(%rbp), %rcx
	movsd	8(%rcx), %xmm0          # xmm0 = mem[0],zero
	movq	-32(%rbp), %rcx
	movsd	%xmm0, 8(%rcx)
	movq	-24(%rbp), %rcx
	movsd	(%rcx), %xmm0           # xmm0 = mem[0],zero
	movq	-32(%rbp), %rcx
	movsd	%xmm0, (%rcx)
	movsd	%xmm1, -200(%rbp)
	movsd	%xmm1, -208(%rbp)
	movsd	%xmm1, -216(%rbp)
	movl	$0, -188(%rbp)
.LBB6_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$4, -188(%rbp)
	jg	.LBB6_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB6_1 Depth=1
	movslq	-188(%rbp), %rax
	movq	-8(%rbp), %rcx
	movsd	(%rcx,%rax,8), %xmm0    # xmm0 = mem[0],zero
	addsd	-200(%rbp), %xmm0
	movsd	%xmm0, -200(%rbp)
	movslq	-188(%rbp), %rax
	movq	-16(%rbp), %rcx
	movsd	(%rcx,%rax,8), %xmm0    # xmm0 = mem[0],zero
	addsd	-208(%rbp), %xmm0
	movsd	%xmm0, -208(%rbp)
	movslq	-188(%rbp), %rax
	movq	-24(%rbp), %rcx
	movsd	(%rcx,%rax,8), %xmm0    # xmm0 = mem[0],zero
	addsd	-216(%rbp), %xmm0
	movsd	%xmm0, -216(%rbp)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	-188(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -188(%rbp)
	jmp	.LBB6_1
.LBB6_4:                                # %for.end
	movsd	.LCPI6_11, %xmm0        # xmm0 = mem[0],zero
	movsd	-200(%rbp), %xmm1       # xmm1 = mem[0],zero
	movaps	%xmm0, %xmm2
	addsd	-216(%rbp), %xmm2
	divsd	%xmm2, %xmm1
	movsd	%xmm1, -224(%rbp)
	movsd	-208(%rbp), %xmm1       # xmm1 = mem[0],zero
	addsd	-216(%rbp), %xmm0
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -232(%rbp)
	movl	$0, -188(%rbp)
.LBB6_5:                                # %for.cond.155
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$4, -188(%rbp)
	jg	.LBB6_8
# BB#6:                                 # %for.body.157
                                        #   in Loop: Header=BB6_5 Depth=1
	movslq	-188(%rbp), %rax
	movq	-24(%rbp), %rcx
	movsd	(%rcx,%rax,8), %xmm0    # xmm0 = mem[0],zero
	mulsd	-224(%rbp), %xmm0
	movslq	-188(%rbp), %rax
	movq	-40(%rbp), %rcx
	movsd	%xmm0, (%rcx,%rax,8)
	movslq	-188(%rbp), %rax
	movq	-32(%rbp), %rcx
	movsd	(%rcx,%rax,8), %xmm0    # xmm0 = mem[0],zero
	mulsd	-232(%rbp), %xmm0
	movslq	-188(%rbp), %rax
	movq	-48(%rbp), %rcx
	movsd	%xmm0, (%rcx,%rax,8)
# BB#7:                                 # %for.inc.168
                                        #   in Loop: Header=BB6_5 Depth=1
	movl	-188(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -188(%rbp)
	jmp	.LBB6_5
.LBB6_8:                                # %for.end.170
	addq	$352, %rsp              # imm = 0x160
	popq	%rbp
	retq
.Lfunc_end6:
	.size	find_constants, .Lfunc_end6-find_constants
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI7_0:
	.quad	4643176031446892544     # double 255
	.text
	.align	16, 0x90
	.type	transfer_pixels,@function
transfer_pixels:                        # @transfer_pixels
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%r8d, -32(%rbp)
	movl	-28(%rbp), %ecx
	imull	-32(%rbp), %ecx
	movl	%ecx, -40(%rbp)
	movl	$0, -36(%rbp)
.LBB7_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jge	.LBB7_9
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB7_1 Depth=1
	movsd	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, -8(%rbp)
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, -16(%rbp)
	addsd	(%rax), %xmm1
	movsd	%xmm1, -48(%rbp)
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB7_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB7_1 Depth=1
	movsd	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)
	jmp	.LBB7_7
.LBB7_4:                                # %if.else
                                        #   in Loop: Header=BB7_1 Depth=1
	xorps	%xmm0, %xmm0
	ucomisd	-48(%rbp), %xmm0
	jbe	.LBB7_6
# BB#5:                                 # %if.then.4
                                        #   in Loop: Header=BB7_1 Depth=1
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -48(%rbp)
.LBB7_6:                                # %if.end
                                        #   in Loop: Header=BB7_1 Depth=1
	jmp	.LBB7_7
.LBB7_7:                                # %if.end.5
                                        #   in Loop: Header=BB7_1 Depth=1
	cvttsd2si	-48(%rbp), %eax
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -24(%rbp)
	movb	%cl, (%rdx)
# BB#8:                                 # %for.inc
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB7_1
.LBB7_9:                                # %for.end
	popq	%rbp
	retq
.Lfunc_end7:
	.size	transfer_pixels, .Lfunc_end7-transfer_pixels
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI8_0:
	.quad	4607182418800017408     # double 1
.LCPI8_1:
	.quad	4621256167635550208     # double 9
.LCPI8_2:
	.quad	4643176031446892544     # double 255
	.text
	.align	16, 0x90
	.type	combine_to_gradient,@function
combine_to_gradient:                    # @combine_to_gradient
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
	movsd	.LCPI8_0, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI8_1, %xmm2         # xmm2 = mem[0],zero
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movsd	%xmm0, -32(%rbp)
	movl	-20(%rbp), %ecx
	imull	-24(%rbp), %ecx
	movl	%ecx, -40(%rbp)
	mulsd	-32(%rbp), %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm1, -72(%rbp)
	movl	$0, -36(%rbp)
.LBB8_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jge	.LBB8_9
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB8_1 Depth=1
	movsd	.LCPI8_2, %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	incq	%rcx
	movq	%rcx, -16(%rbp)
	movzbl	(%rax), %edx
	cvtsi2sdl	%edx, %xmm1
	movsd	%xmm1, -48(%rbp)
	movq	-8(%rbp), %rax
	movzbl	(%rax), %edx
	cvtsi2sdl	%edx, %xmm1
	movsd	%xmm1, -56(%rbp)
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-48(%rbp), %xmm1
	movsd	-56(%rbp), %xmm2        # xmm2 = mem[0],zero
	mulsd	-56(%rbp), %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	sqrt
	mulsd	-72(%rbp), %xmm0
	movsd	%xmm0, -64(%rbp)
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-80(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB8_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB8_1 Depth=1
	movsd	.LCPI8_2, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -64(%rbp)
	jmp	.LBB8_7
.LBB8_4:                                # %if.else
                                        #   in Loop: Header=BB8_1 Depth=1
	xorps	%xmm0, %xmm0
	ucomisd	-64(%rbp), %xmm0
	jbe	.LBB8_6
# BB#5:                                 # %if.then.11
                                        #   in Loop: Header=BB8_1 Depth=1
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -64(%rbp)
.LBB8_6:                                # %if.end
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_7
.LBB8_7:                                # %if.end.12
                                        #   in Loop: Header=BB8_1 Depth=1
	cvttsd2si	-64(%rbp), %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -8(%rbp)
	movb	%cl, (%rdx)
# BB#8:                                 # %for.inc
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB8_1
.LBB8_9:                                # %for.end
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	combine_to_gradient, .Lfunc_end8-combine_to_gradient
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
	.asciz	"radius"
	.size	.L.str.6, 7

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Radius of neon effect (in pixels)"
	.size	.L.str.7, 34

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"amount"
	.size	.L.str.8, 7

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Effect enhancement variable (0.0 - 1.0)"
	.size	.L.str.9, 40

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"This filter works in a manner similar to the edge plug-in, but uses the first derivative of the gaussian operator to achieve resolution independence. The IIR method of calculating the effect is utilized to keep the processing time constant between large and small standard deviations."
	.size	.L.str.10, 285

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"plug-in-neon"
	.size	.L.str.11, 13

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Simulate the glowing boundary of a neon light"
	.size	.L.str.12, 46

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Spencer Kimball"
	.size	.L.str.13, 16

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Bit Specialists, Inc."
	.size	.L.str.14, 22

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"2002"
	.size	.L.str.15, 5

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"_Neon..."
	.size	.L.str.16, 9

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"RGB*, GRAY*"
	.size	.L.str.17, 12

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"<Image>/Filters/Edge-Detect"
	.size	.L.str.18, 28

	.type	run.values,@object      # @run.values
	.local	run.values
	.comm	run.values,80,16
	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"gimp20-std-plug-ins"
	.size	.L.str.19, 20

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"UTF-8"
	.size	.L.str.20, 6

	.type	evals,@object           # @evals
	.data
	.align	8
evals:
	.quad	4617315517961601024     # double 5
	.quad	0                       # double 0
	.size	evals, 16

	.type	.L.str.21,@object       # @.str.21
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.21:
	.asciz	"Neon"
	.size	.L.str.21, 5

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Cannot operate on indexed color images."
	.size	.L.str.22, 40

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"edge-neon"
	.size	.L.str.23, 10

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"Neon Detection"
	.size	.L.str.24, 15

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"gimp-edge-neon"
	.size	.L.str.25, 15

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"gtk-cancel"
	.size	.L.str.26, 11

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"gtk-ok"
	.size	.L.str.27, 7

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"invalidated"
	.size	.L.str.28, 12

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"_Radius:"
	.size	.L.str.29, 9

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"value-changed"
	.size	.L.str.30, 14

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"_Amount:"
	.size	.L.str.31, 9


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
