	.text
	.file	"emboss.bc"
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
	movabsq	$.L.str.14, %rdi
	movabsq	$.L.str.15, %rsi
	movabsq	$.L.str.16, %rdx
	movabsq	$.L.str.17, %rcx
	movabsq	$.L.str.18, %r8
	movabsq	$.L.str.19, %r9
	movabsq	$.L.str.20, %rax
	movabsq	$.L.str.21, %r10
	movl	$1, %r11d
	movl	$7, %ebx
	xorl	%r14d, %r14d
	movabsq	$query.args, %r15
	xorl	%r12d, %r12d
	movl	%r12d, %r13d
	movq	%rax, (%rsp)
	movq	%r10, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$7, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%r15, 40(%rsp)
	movq	$0, 48(%rsp)
	movq	%r13, -48(%rbp)         # 8-byte Spill
	movl	%r11d, -52(%rbp)        # 4-byte Spill
	movl	%r14d, -56(%rbp)        # 4-byte Spill
	movl	%ebx, -60(%rbp)         # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.14, %rdi
	movabsq	$.L.str.22, %rsi
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
	subq	$96, %rsp
	movabsq	$run.rvals, %rax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-32(%rbp), %rcx
	movl	$1, (%rcx)
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
# BB#1:                                 # %do.body
	callq	gimp_locale_directory
	movabsq	$.L.str.23, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.23, %rdi
	movabsq	$.L.str.24, %rsi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.23, %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	textdomain
	movq	%rax, -72(%rbp)         # 8-byte Spill
# BB#2:                                 # %do.end
	movq	-24(%rbp), %rax
	movl	88(%rax), %edi
	callq	gimp_drawable_get
	movq	%rax, -48(%rbp)
	movl	20(%rax), %edi
                                        # kill: RDI<def> EDI<kill>
	callq	gimp_tile_cache_ntiles
	movl	$21, run.rvals(%rip)
	movl	$3, run.rvals+8(%rip)
	movq	-24(%rbp), %rax
	movl	8(%rax), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -76(%rbp)         # 4-byte Spill
	je	.LBB1_3
	jmp	.LBB1_12
.LBB1_12:                               # %do.end
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -80(%rbp)         # 4-byte Spill
	je	.LBB1_7
	jmp	.LBB1_13
.LBB1_13:                               # %do.end
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	je	.LBB1_10
	jmp	.LBB1_11
.LBB1_3:                                # %sw.bb
	movabsq	$.L.str.14, %rdi
	movabsq	$evals, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movq	-48(%rbp), %rdi
	movl	%eax, -88(%rbp)         # 4-byte Spill
	callq	emboss_dialog
	cmpl	$0, %eax
	jne	.LBB1_5
# BB#4:                                 # %if.then
	movl	$4, run.rvals+8
	jmp	.LBB1_6
.LBB1_5:                                # %if.else
	movabsq	$.L.str.14, %rdi
	movabsq	$evals, %rax
	movl	$24, %edx
	movq	%rax, %rsi
	callq	gimp_procedural_db_set_data
	movl	%eax, -92(%rbp)         # 4-byte Spill
.LBB1_6:                                # %if.end
	jmp	.LBB1_11
.LBB1_7:                                # %sw.bb.10
	cmpl	$7, -12(%rbp)
	je	.LBB1_9
# BB#8:                                 # %if.then.12
	movl	$1, run.rvals+8
	jmp	.LBB1_11
.LBB1_9:                                # %if.end.13
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rcx
	movsd	128(%rcx), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, evals
	movq	-24(%rbp), %rcx
	movsd	168(%rcx), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, evals+8
	movq	-24(%rbp), %rcx
	movl	208(%rcx), %eax
	movl	%eax, evals+16
	movq	-24(%rbp), %rcx
	movl	248(%rcx), %eax
	movl	%eax, evals+20
	movq	-48(%rbp), %rdi
	callq	emboss
	jmp	.LBB1_11
.LBB1_10:                               # %sw.bb.25
	movabsq	$.L.str.14, %rdi
	movabsq	$evals, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	-48(%rbp), %rdi
	movl	%eax, -96(%rbp)         # 4-byte Spill
	callq	emboss
.LBB1_11:                               # %sw.epilog
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

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_0:
	.quad	4607182418800017408     # double 1
.LCPI3_1:
	.quad	4636737291354636288     # double 100
.LCPI3_2:
	.quad	4617315517961601024     # double 5
.LCPI3_3:
	.quad	4640537203540230144     # double 180
.LCPI3_4:
	.quad	4621819117588971520     # double 10
.LCPI3_5:
	.quad	4645040803167600640     # double 360
	.text
	.align	16, 0x90
	.type	emboss_dialog,@function
emboss_dialog:                          # @emboss_dialog
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
	subq	$568, %rsp              # imm = 0x238
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
	movabsq	$.L.str.12, %rax
	movl	$1, %esi
	movq	%rdi, -48(%rbp)
	movq	%rax, %rdi
	callq	gimp_ui_init
	movabsq	$.L.str.25, %rdi
	callq	gettext
	movabsq	$.L.str.26, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	movabsq	$gimp_standard_help_func, %r8
	movabsq	$.L.str.14, %r9
	movabsq	$.L.str.27, %rdi
	movl	$4294967290, %r10d      # imm = 0xFFFFFFFA
	movabsq	$.L.str.28, %r11
	movl	$4294967291, %ebx       # imm = 0xFFFFFFFB
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$-6, 8(%rsp)
	movq	%r11, 16(%rsp)
	movl	$-5, 24(%rsp)
	movq	$0, 32(%rsp)
	movb	$0, %al
	movl	%ebx, -132(%rbp)        # 4-byte Spill
	movl	%r10d, -136(%rbp)       # 4-byte Spill
	callq	gimp_dialog_new
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	movq	-56(%rbp), %rdi
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_window_set_transient
	movl	$1, %edi
	movl	$12, %esi
	callq	gtk_box_new
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-56(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
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
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
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
	movabsq	$emboss, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movl	$2, %r9d
	movq	-72(%rbp), %rdi
	movq	-48(%rbp), %r11
	movq	%rax, %rdx
	movq	%r11, %rcx
	callq	g_signal_connect_data
	movabsq	$.L.str.30, %rdi
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.31, %rdi
	movl	evals+20, %r8d
	movq	%rax, -200(%rbp)        # 8-byte Spill
	movl	%r8d, -204(%rbp)        # 4-byte Spill
	callq	gettext
	movabsq	$.L.str.32, %rdi
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$1, %edi
	movabsq	$gimp_radio_button_update, %rcx
	movabsq	$evals, %rdx
	addq	$20, %rdx
	xorl	%r8d, %r8d
	leaq	-80(%rbp), %rsi
	leaq	-88(%rbp), %r11
	xorl	%r9d, %r9d
	movl	%r9d, %r14d
	movq	-200(%rbp), %r15        # 8-byte Reload
	movq	%rsi, -224(%rbp)        # 8-byte Spill
	movq	%r15, %rsi
	movq	%rdx, -232(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-232(%rbp), %rcx        # 8-byte Reload
	movl	-204(%rbp), %r9d        # 4-byte Reload
	movl	%r8d, -236(%rbp)        # 4-byte Spill
	movl	%r9d, %r8d
	movq	-216(%rbp), %r9         # 8-byte Reload
	movl	$0, (%rsp)
	movq	-224(%rbp), %r12        # 8-byte Reload
	movq	%r12, 8(%rsp)
	movq	%rax, 16(%rsp)
	movl	$1, 24(%rsp)
	movq	%r11, 32(%rsp)
	movq	$0, 40(%rsp)
	movb	$0, %al
	movq	%r14, -248(%rbp)        # 8-byte Spill
	callq	gimp_int_radio_group_new
	movq	%rax, -96(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
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
	movabsq	$.L.str.33, %rsi
	movabsq	$gimp_preview_invalidate, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movl	$2, %r9d
	movq	-80(%rbp), %rdi
	movq	-72(%rbp), %r11
	movq	%rax, %rdx
	movq	%r11, %rcx
	callq	g_signal_connect_data
	movabsq	$.L.str.33, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-88(%rbp), %rdx
	movq	-72(%rbp), %rdi
	movq	%rdi, -264(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-264(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movl	$3, %r9d
	xorl	%edx, %edx
	movl	%r9d, %edi
	movl	%r9d, %esi
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gtk_table_new
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-104(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-64(%rbp), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-104(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -308(%rbp)        # 4-byte Spill
	movl	-308(%rbp), %ecx        # 4-byte Reload
	movl	-308(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-104(%rbp), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.34, %rdi
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	$100, %r8d
	movl	$6, %r9d
	xorps	%xmm0, %xmm0
	movsd	.LCPI3_5, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI3_0, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI3_4, %xmm4         # xmm4 = mem[0],zero
	movl	$2, %edx
	movl	$1, %r10d
	xorl	%ebx, %ebx
	movl	%ebx, %esi
	movsd	evals, %xmm1            # xmm1 = mem[0],zero
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rsi, -336(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movl	%edx, -340(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movq	%rax, %rcx
	movsd	%xmm0, -352(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-352(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	$2, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-352(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-352(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r10d, -356(%rbp)       # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.35, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	movabsq	$evals, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	%rdi, -368(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-368(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.35, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-112(%rbp), %rdx
	movq	-72(%rbp), %rdi
	movq	%rdi, -376(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-376(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-104(%rbp), %rcx
	movq	%rax, -392(%rbp)        # 8-byte Spill
	movq	%rcx, -400(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.36, %rdi
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$1, %edx
	movl	$100, %r8d
	movl	$6, %r9d
	xorps	%xmm0, %xmm0
	movsd	.LCPI3_3, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI3_0, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI3_4, %xmm4         # xmm4 = mem[0],zero
	movl	$2, %r10d
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movsd	evals+8, %xmm1          # xmm1 = mem[0],zero
	movq	-408(%rbp), %rdi        # 8-byte Reload
	movq	%rcx, -416(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movsd	%xmm0, -424(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-424(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	$2, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-424(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-424(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r10d, -428(%rbp)       # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.35, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	movabsq	$evals, %rdi
	addq	$8, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	%rdi, -440(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-440(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.35, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-112(%rbp), %rdx
	movq	-72(%rbp), %rdi
	movq	%rdi, -448(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-448(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -456(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-104(%rbp), %rcx
	movq	%rax, -464(%rbp)        # 8-byte Spill
	movq	%rcx, -472(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-472(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.37, %rdi
	movq	%rax, -480(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$2, %edx
	movl	$100, %r8d
	movl	$6, %r9d
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI3_1, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI3_2, %xmm4         # xmm4 = mem[0],zero
	movl	$1, %r10d
	xorps	%xmm1, %xmm1
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	cvtsi2sdl	evals+16, %xmm3
	movq	-480(%rbp), %rdi        # 8-byte Reload
	movq	%rcx, -488(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movsd	%xmm0, -496(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm0
	movsd	-496(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	%xmm1, -504(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm1
	movl	$0, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-504(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-504(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r10d, -508(%rbp)       # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.35, %rsi
	movabsq	$gimp_int_adjustment_update, %rcx
	movabsq	$evals, %rdi
	addq	$16, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	%rdi, -520(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-520(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.35, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-112(%rbp), %rdx
	movq	-72(%rbp), %rdi
	movq	%rdi, -528(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-528(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -536(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-104(%rbp), %rdi
	movq	%rax, -544(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movq	-56(%rbp), %rax
	movq	%rax, -552(%rbp)        # 8-byte Spill
	callq	gimp_dialog_get_type
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dialog_run
	cmpl	$-5, %eax
	sete	%r13b
	andb	$1, %r13b
	movzbl	%r13b, %eax
	movl	%eax, -116(%rbp)
	movq	-56(%rbp), %rdi
	callq	gtk_widget_destroy
	cmpl	$0, -116(%rbp)
	je	.LBB3_2
# BB#1:                                 # %if.then
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rdi
	callq	emboss
.LBB3_2:                                # %if.end
	movl	-116(%rbp), %eax
	addq	$568, %rsp              # imm = 0x238
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	emboss_dialog, .Lfunc_end3-emboss_dialog
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4580687790476533049     # double 0.017453292519943295
.LCPI4_1:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	emboss,@function
emboss:                                 # @emboss
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
	pushq	%rbx
	subq	$344, %rsp              # imm = 0x158
.Ltmp25:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB4_2
# BB#1:                                 # %if.then
	leaq	-132(%rbp), %rsi
	leaq	-136(%rbp), %rdx
	movq	-24(%rbp), %rdi
	callq	gimp_preview_get_position
	leaq	-148(%rbp), %rsi
	leaq	-152(%rbp), %rdx
	movq	-24(%rbp), %rdi
	callq	gimp_preview_get_size
	movl	-132(%rbp), %eax
	addl	-148(%rbp), %eax
	movl	%eax, -140(%rbp)
	movl	-136(%rbp), %eax
	addl	-152(%rbp), %eax
	movl	%eax, -144(%rbp)
	jmp	.LBB4_15
.LBB4_2:                                # %if.else
	leaq	-132(%rbp), %rsi
	leaq	-136(%rbp), %rdx
	leaq	-140(%rbp), %rcx
	leaq	-144(%rbp), %r8
	movq	-16(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_mask_bounds
	xorl	%edi, %edi
	movl	-132(%rbp), %r9d
	subl	evals+16, %r9d
	cmpl	%r9d, %edi
	movl	%eax, -188(%rbp)        # 4-byte Spill
	jle	.LBB4_4
# BB#3:                                 # %cond.true
	xorl	%eax, %eax
	movl	%eax, -192(%rbp)        # 4-byte Spill
	jmp	.LBB4_5
.LBB4_4:                                # %cond.false
	movl	-132(%rbp), %eax
	subl	evals+16, %eax
	movl	%eax, -192(%rbp)        # 4-byte Spill
.LBB4_5:                                # %cond.end
	movl	-192(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movl	%eax, -132(%rbp)
	movl	-136(%rbp), %eax
	subl	evals+16, %eax
	cmpl	%eax, %ecx
	jle	.LBB4_7
# BB#6:                                 # %cond.true.5
	xorl	%eax, %eax
	movl	%eax, -196(%rbp)        # 4-byte Spill
	jmp	.LBB4_8
.LBB4_7:                                # %cond.false.6
	movl	-136(%rbp), %eax
	subl	evals+16, %eax
	movl	%eax, -196(%rbp)        # 4-byte Spill
.LBB4_8:                                # %cond.end.8
	movl	-196(%rbp), %eax        # 4-byte Reload
	movl	%eax, -136(%rbp)
	movq	-16(%rbp), %rcx
	movl	4(%rcx), %eax
	movl	-140(%rbp), %edx
	addl	evals+16, %edx
	cmpl	%edx, %eax
	jae	.LBB4_10
# BB#9:                                 # %cond.true.13
	movq	-16(%rbp), %rax
	movl	4(%rax), %ecx
	movl	%ecx, -200(%rbp)        # 4-byte Spill
	jmp	.LBB4_11
.LBB4_10:                               # %cond.false.15
	movl	-140(%rbp), %eax
	addl	evals+16, %eax
	movl	%eax, -200(%rbp)        # 4-byte Spill
.LBB4_11:                               # %cond.end.17
	movl	-200(%rbp), %eax        # 4-byte Reload
	movl	%eax, -140(%rbp)
	movq	-16(%rbp), %rcx
	movl	8(%rcx), %eax
	movl	-144(%rbp), %edx
	addl	evals+16, %edx
	cmpl	%edx, %eax
	jae	.LBB4_13
# BB#12:                                # %cond.true.22
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -204(%rbp)        # 4-byte Spill
	jmp	.LBB4_14
.LBB4_13:                               # %cond.false.24
	movl	-144(%rbp), %eax
	addl	evals+16, %eax
	movl	%eax, -204(%rbp)        # 4-byte Spill
.LBB4_14:                               # %cond.end.26
	movl	-204(%rbp), %eax        # 4-byte Reload
	movl	%eax, -144(%rbp)
	movl	-140(%rbp), %eax
	subl	-132(%rbp), %eax
	movl	%eax, -148(%rbp)
	movl	-144(%rbp), %eax
	subl	-136(%rbp), %eax
	movl	%eax, -152(%rbp)
.LBB4_15:                               # %if.end
	movl	$1, %eax
	movl	$20, %ecx
	movq	-16(%rbp), %rdx
	movl	12(%rdx), %esi
	movl	%esi, -156(%rbp)
	movl	-152(%rbp), %esi
	movl	%eax, -208(%rbp)        # 4-byte Spill
	movl	%esi, %eax
	cltd
	idivl	%ecx
	movl	-208(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jle	.LBB4_17
# BB#16:                                # %cond.true.31
	movl	$1, %eax
	movl	%eax, -212(%rbp)        # 4-byte Spill
	jmp	.LBB4_18
.LBB4_17:                               # %cond.false.32
	movl	$20, %eax
	movl	-152(%rbp), %ecx
	movl	%eax, -216(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-216(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movl	%eax, -212(%rbp)        # 4-byte Spill
.LBB4_18:                               # %cond.end.34
	movl	-212(%rbp), %eax        # 4-byte Reload
	movl	%eax, -124(%rbp)
	movl	-148(%rbp), %eax
	imull	-156(%rbp), %eax
	movl	%eax, -160(%rbp)
	movq	-16(%rbp), %rcx
	movl	(%rcx), %edi
	callq	gimp_drawable_has_alpha
	leaq	-72(%rbp), %rdi
	xorl	%edx, %edx
	movl	%eax, -164(%rbp)
	movq	-16(%rbp), %rsi
	movl	-132(%rbp), %eax
	movl	-136(%rbp), %ecx
	movl	-148(%rbp), %r8d
	movl	-152(%rbp), %r9d
	movl	%edx, -220(%rbp)        # 4-byte Spill
	movl	%eax, %edx
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	leaq	-120(%rbp), %rdi
	movl	$1, %eax
	movq	-16(%rbp), %rsi
	movl	-132(%rbp), %edx
	movl	-136(%rbp), %ecx
	movl	-148(%rbp), %r8d
	movl	-152(%rbp), %r9d
	cmpq	$0, -24(%rbp)
	sete	%r10b
	andb	$1, %r10b
	movzbl	%r10b, %r11d
	movl	%r11d, (%rsp)
	movl	$1, 8(%rsp)
	movl	%eax, -224(%rbp)        # 4-byte Spill
	callq	gimp_pixel_rgn_init
	movl	$1, %eax
	movl	%eax, %esi
	imull	$3, -160(%rbp), %eax
	movslq	%eax, %rdi
	callq	g_malloc0_n
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	%rax, -176(%rbp)
	movslq	-160(%rbp), %rdi
	callq	g_malloc0_n
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movq	%rax, -184(%rbp)
	movaps	%xmm0, %xmm1
	mulsd	evals, %xmm1
	mulsd	evals+8, %xmm0
	movl	evals+16, %ecx
	movw	%cx, %bx
	movsd	%xmm0, -232(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-232(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movzwl	%bx, %edi
	callq	emboss_init
	cmpq	$0, -24(%rbp)
	jne	.LBB4_20
# BB#19:                                # %if.then.48
	movabsq	$.L.str.25, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_progress_init
	movl	%eax, -236(%rbp)        # 4-byte Spill
.LBB4_20:                               # %if.end.51
	leaq	-72(%rbp), %rdi
	movl	$3, %r9d
	movq	-176(%rbp), %rsi
	movl	-132(%rbp), %edx
	movl	-136(%rbp), %ecx
	movl	-148(%rbp), %r8d
	callq	gimp_pixel_rgn_get_rect
	movq	-176(%rbp), %rdi
	movq	-176(%rbp), %rsi
	movslq	-160(%rbp), %rax
	addq	%rax, %rsi
	movslq	-160(%rbp), %rdx
	callq	memcpy
	movq	-176(%rbp), %rdi
	cmpl	$0, evals+20
	movq	%rdi, -248(%rbp)        # 8-byte Spill
	je	.LBB4_22
# BB#21:                                # %cond.true.54
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -256(%rbp)        # 8-byte Spill
	jmp	.LBB4_23
.LBB4_22:                               # %cond.false.55
	movq	-176(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
.LBB4_23:                               # %cond.end.56
	movq	-256(%rbp), %rax        # 8-byte Reload
	movq	-184(%rbp), %rdx
	movl	-148(%rbp), %ecx
	movl	-156(%rbp), %r8d
	movl	-164(%rbp), %r9d
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	emboss_row
	leaq	-120(%rbp), %rdi
	xorl	%ecx, %ecx
	movq	-184(%rbp), %rsi
	movl	-148(%rbp), %r8d
	movl	%ecx, %edx
	callq	gimp_pixel_rgn_set_row
	movl	$0, -128(%rbp)
.LBB4_24:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-128(%rbp), %eax
	movl	-152(%rbp), %ecx
	subl	$2, %ecx
	cmpl	%ecx, %eax
	jge	.LBB4_33
# BB#25:                                # %for.body
                                        #   in Loop: Header=BB4_24 Depth=1
	cmpq	$0, -24(%rbp)
	jne	.LBB4_28
# BB#26:                                # %land.lhs.true
                                        #   in Loop: Header=BB4_24 Depth=1
	movl	-128(%rbp), %eax
	cltd
	idivl	-124(%rbp)
	cmpl	$0, %edx
	jne	.LBB4_28
# BB#27:                                # %if.then.64
                                        #   in Loop: Header=BB4_24 Depth=1
	cvtsi2sdl	-128(%rbp), %xmm0
	cvtsi2sdl	-152(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -260(%rbp)        # 4-byte Spill
.LBB4_28:                               # %if.end.69
                                        #   in Loop: Header=BB4_24 Depth=1
	leaq	-72(%rbp), %rdi
	movl	$3, %r9d
	movq	-176(%rbp), %rsi
	movl	-132(%rbp), %edx
	movl	-136(%rbp), %eax
	addl	-128(%rbp), %eax
	movl	-148(%rbp), %r8d
	movl	%eax, %ecx
	callq	gimp_pixel_rgn_get_rect
	movq	-176(%rbp), %rdi
	cmpl	$0, evals+20
	movq	%rdi, -272(%rbp)        # 8-byte Spill
	je	.LBB4_30
# BB#29:                                # %cond.true.72
                                        #   in Loop: Header=BB4_24 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -280(%rbp)        # 8-byte Spill
	jmp	.LBB4_31
.LBB4_30:                               # %cond.false.73
                                        #   in Loop: Header=BB4_24 Depth=1
	movq	-176(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
.LBB4_31:                               # %cond.end.74
                                        #   in Loop: Header=BB4_24 Depth=1
	movq	-280(%rbp), %rax        # 8-byte Reload
	movq	-184(%rbp), %rdx
	movl	-148(%rbp), %ecx
	movl	-156(%rbp), %r8d
	movl	-164(%rbp), %r9d
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	emboss_row
	leaq	-120(%rbp), %rdi
	movq	-184(%rbp), %rsi
	movl	-132(%rbp), %edx
	movl	-136(%rbp), %ecx
	addl	-128(%rbp), %ecx
	addl	$1, %ecx
	movl	-148(%rbp), %r8d
	callq	gimp_pixel_rgn_set_row
# BB#32:                                # %for.inc
                                        #   in Loop: Header=BB4_24 Depth=1
	movl	-128(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -128(%rbp)
	jmp	.LBB4_24
.LBB4_33:                               # %for.end
	leaq	-72(%rbp), %rdi
	movl	$3, %r9d
	movq	-176(%rbp), %rsi
	movl	-132(%rbp), %edx
	movl	-144(%rbp), %eax
	subl	$3, %eax
	movl	-148(%rbp), %r8d
	movl	%eax, %ecx
	callq	gimp_pixel_rgn_get_rect
	movq	-176(%rbp), %rsi
	movl	-160(%rbp), %eax
	shll	$1, %eax
	movslq	%eax, %rdi
	addq	%rdi, %rsi
	movq	-176(%rbp), %rdi
	movslq	-160(%rbp), %r10
	addq	%r10, %rdi
	movslq	-160(%rbp), %rdx
	movq	%rdi, -288(%rbp)        # 8-byte Spill
	movq	%rsi, %rdi
	movq	-288(%rbp), %rsi        # 8-byte Reload
	callq	memcpy
	movq	-176(%rbp), %rdi
	cmpl	$0, evals+20
	movq	%rdi, -296(%rbp)        # 8-byte Spill
	je	.LBB4_35
# BB#34:                                # %cond.true.86
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -304(%rbp)        # 8-byte Spill
	jmp	.LBB4_36
.LBB4_35:                               # %cond.false.87
	movq	-176(%rbp), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
.LBB4_36:                               # %cond.end.88
	movq	-304(%rbp), %rax        # 8-byte Reload
	movq	-184(%rbp), %rdx
	movl	-148(%rbp), %ecx
	movl	-156(%rbp), %r8d
	movl	-164(%rbp), %r9d
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	emboss_row
	leaq	-120(%rbp), %rdi
	movq	-184(%rbp), %rsi
	movl	-132(%rbp), %edx
	movl	-144(%rbp), %ecx
	subl	$1, %ecx
	movl	-148(%rbp), %r8d
	callq	gimp_pixel_rgn_set_row
	cmpq	$0, -24(%rbp)
	je	.LBB4_38
# BB#37:                                # %if.then.92
	movq	-24(%rbp), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gimp_drawable_preview_get_type
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-120(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_drawable_preview_draw_region
	jmp	.LBB4_39
.LBB4_38:                               # %if.else.95
	movsd	.LCPI4_1, %xmm0         # xmm0 = mem[0],zero
	callq	gimp_progress_update
	movq	-16(%rbp), %rdi
	movl	%eax, -316(%rbp)        # 4-byte Spill
	callq	gimp_drawable_flush
	movl	$1, %esi
	movq	-16(%rbp), %rdi
	movl	(%rdi), %edi
	callq	gimp_drawable_merge_shadow
	movq	-16(%rbp), %rcx
	movl	(%rcx), %edi
	movl	-132(%rbp), %esi
	movl	-136(%rbp), %edx
	movl	-148(%rbp), %ecx
	movl	-152(%rbp), %r8d
	movl	%eax, -320(%rbp)        # 4-byte Spill
	callq	gimp_drawable_update
	movl	%eax, -324(%rbp)        # 4-byte Spill
	callq	gimp_displays_flush
	movl	%eax, -328(%rbp)        # 4-byte Spill
.LBB4_39:                               # %if.end.102
	movq	-176(%rbp), %rdi
	callq	g_free
	movq	-184(%rbp), %rdi
	callq	g_free
	addq	$344, %rsp              # imm = 0x158
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end4:
	.size	emboss, .Lfunc_end4-emboss
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_0:
	.quad	4643207697381772493     # double 255.90000000000001
	.text
	.align	16, 0x90
	.type	emboss_init,@function
emboss_init:                            # @emboss_init
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
	movw	%di, %ax
	movl	$1530, %edi             # imm = 0x5FA
	movsd	.LCPI5_0, %xmm2         # xmm2 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
	movsd	%xmm1, -16(%rbp)
	movw	%ax, -18(%rbp)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movl	%edi, -24(%rbp)         # 4-byte Spill
	movsd	%xmm2, -32(%rbp)        # 8-byte Spill
	callq	cos
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -40(%rbp)        # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	cos
	movsd	-40(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-32(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, Filter
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	callq	sin
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	cos
	movsd	-48(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-32(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, Filter+8
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	sin
	movsd	-32(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, Filter+16
	movzwl	-18(%rbp), %edi
	movl	-24(%rbp), %eax         # 4-byte Reload
	cltd
	idivl	%edi
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, Filter+24
	movsd	Filter+24, %xmm0        # xmm0 = mem[0],zero
	mulsd	Filter+24, %xmm0
	movsd	%xmm0, Filter+32
	movsd	Filter+24, %xmm0        # xmm0 = mem[0],zero
	mulsd	Filter+16, %xmm0
	movsd	%xmm0, Filter+40
	movsd	Filter+16, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, Filter+48
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	emboss_init, .Lfunc_end5-emboss_init
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	4607182418800017408     # double 1
.LCPI6_1:
	.quad	4643176031446892544     # double 255
	.text
	.align	16, 0x90
	.type	emboss_row,@function
emboss_row:                             # @emboss_row
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
	subq	$224, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%r8d, -32(%rbp)
	movl	%r9d, -36(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -64(%rbp)
	movq	-64(%rbp), %rdx
	movl	-28(%rbp), %ecx
	imull	-32(%rbp), %ecx
	movl	%ecx, %ecx
	movl	%ecx, %esi
	addq	%rsi, %rdx
	movq	%rdx, -56(%rbp)
	movq	-56(%rbp), %rdx
	movl	-28(%rbp), %ecx
	imull	-32(%rbp), %ecx
	movl	%ecx, %ecx
	movl	%ecx, %esi
	addq	%rsi, %rdx
	movq	%rdx, -48(%rbp)
	movl	-32(%rbp), %ecx
	movq	-24(%rbp), %rdx
	movl	%ecx, %ecx
	movl	%ecx, %esi
	addq	%rsi, %rdx
	movq	%rdx, -24(%rbp)
	cmpl	$0, -36(%rbp)
	je	.LBB6_2
# BB#1:                                 # %cond.true
	movl	-32(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -204(%rbp)        # 4-byte Spill
	jmp	.LBB6_3
.LBB6_2:                                # %cond.false
	movl	-32(%rbp), %eax
	movl	%eax, -204(%rbp)        # 4-byte Spill
.LBB6_3:                                # %cond.end
	movl	-204(%rbp), %eax        # 4-byte Reload
	movl	%eax, -152(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB6_5
# BB#4:                                 # %if.then
	movl	-28(%rbp), %eax
	addl	$1, %eax
	imull	-32(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -16(%rbp)
.LBB6_5:                                # %if.end
	movl	$1, -148(%rbp)
.LBB6_6:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_8 Depth 2
                                        #       Child Loop BB6_10 Depth 3
                                        #     Child Loop BB6_16 Depth 2
                                        #       Child Loop BB6_18 Depth 3
                                        #         Child Loop BB6_20 Depth 4
                                        #     Child Loop BB6_39 Depth 2
                                        #     Child Loop BB6_46 Depth 2
                                        #     Child Loop BB6_53 Depth 2
	movl	-148(%rbp), %eax
	movl	-28(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jae	.LBB6_58
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB6_6 Depth=1
	movl	$0, -196(%rbp)
.LBB6_8:                                # %for.cond.15
                                        #   Parent Loop BB6_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_10 Depth 3
	cmpl	$3, -196(%rbp)
	jge	.LBB6_15
# BB#9:                                 # %for.body.17
                                        #   in Loop: Header=BB6_8 Depth=2
	movl	$0, -200(%rbp)
.LBB6_10:                               # %for.cond.18
                                        #   Parent Loop BB6_6 Depth=1
                                        #     Parent Loop BB6_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$3, -200(%rbp)
	jge	.LBB6_13
# BB#11:                                # %for.body.20
                                        #   in Loop: Header=BB6_10 Depth=3
	xorps	%xmm0, %xmm0
	leaq	-144(%rbp), %rax
	movslq	-200(%rbp), %rcx
	movslq	-196(%rbp), %rdx
	imulq	$24, %rdx, %rdx
	addq	%rdx, %rax
	movsd	%xmm0, (%rax,%rcx,8)
# BB#12:                                # %for.inc
                                        #   in Loop: Header=BB6_10 Depth=3
	movl	-200(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -200(%rbp)
	jmp	.LBB6_10
.LBB6_13:                               # %for.end
                                        #   in Loop: Header=BB6_8 Depth=2
	jmp	.LBB6_14
.LBB6_14:                               # %for.inc.24
                                        #   in Loop: Header=BB6_8 Depth=2
	movl	-196(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -196(%rbp)
	jmp	.LBB6_8
.LBB6_15:                               # %for.end.26
                                        #   in Loop: Header=BB6_6 Depth=1
	movl	$0, -192(%rbp)
.LBB6_16:                               # %for.cond.27
                                        #   Parent Loop BB6_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_18 Depth 3
                                        #         Child Loop BB6_20 Depth 4
	movl	-192(%rbp), %eax
	cmpl	-152(%rbp), %eax
	jge	.LBB6_30
# BB#17:                                # %for.body.29
                                        #   in Loop: Header=BB6_16 Depth=2
	movl	$0, -196(%rbp)
.LBB6_18:                               # %for.cond.30
                                        #   Parent Loop BB6_6 Depth=1
                                        #     Parent Loop BB6_16 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB6_20 Depth 4
	cmpl	$3, -196(%rbp)
	jge	.LBB6_28
# BB#19:                                # %for.body.32
                                        #   in Loop: Header=BB6_18 Depth=3
	movl	$0, -200(%rbp)
.LBB6_20:                               # %for.cond.33
                                        #   Parent Loop BB6_6 Depth=1
                                        #     Parent Loop BB6_16 Depth=2
                                        #       Parent Loop BB6_18 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	cmpl	$3, -200(%rbp)
	jge	.LBB6_26
# BB#21:                                # %for.body.35
                                        #   in Loop: Header=BB6_20 Depth=4
	cmpl	$0, -36(%rbp)
	je	.LBB6_23
# BB#22:                                # %if.then.37
                                        #   in Loop: Header=BB6_20 Depth=4
	movsd	.LCPI6_1, %xmm0         # xmm0 = mem[0],zero
	movl	-200(%rbp), %eax
	imull	-32(%rbp), %eax
	addl	-152(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movslq	-196(%rbp), %rdx
	movq	-64(%rbp,%rdx,8), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -160(%rbp)
	jmp	.LBB6_24
.LBB6_23:                               # %if.else
                                        #   in Loop: Header=BB6_20 Depth=4
	movsd	.LCPI6_0, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -160(%rbp)
.LBB6_24:                               # %if.end.45
                                        #   in Loop: Header=BB6_20 Depth=4
	leaq	-144(%rbp), %rax
	movsd	-160(%rbp), %xmm0       # xmm0 = mem[0],zero
	movl	-200(%rbp), %ecx
	imull	-32(%rbp), %ecx
	addl	-192(%rbp), %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edx
	movslq	-196(%rbp), %rsi
	movq	-64(%rbp,%rsi,8), %rsi
	movzbl	(%rsi,%rdx), %ecx
	cvtsi2sdl	%ecx, %xmm1
	mulsd	%xmm1, %xmm0
	movslq	-200(%rbp), %rdx
	movslq	-196(%rbp), %rsi
	imulq	$24, %rsi, %rsi
	addq	%rsi, %rax
	addsd	(%rax,%rdx,8), %xmm0
	movsd	%xmm0, (%rax,%rdx,8)
# BB#25:                                # %for.inc.60
                                        #   in Loop: Header=BB6_20 Depth=4
	movl	-200(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -200(%rbp)
	jmp	.LBB6_20
.LBB6_26:                               # %for.end.62
                                        #   in Loop: Header=BB6_18 Depth=3
	jmp	.LBB6_27
.LBB6_27:                               # %for.inc.63
                                        #   in Loop: Header=BB6_18 Depth=3
	movl	-196(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -196(%rbp)
	jmp	.LBB6_18
.LBB6_28:                               # %for.end.65
                                        #   in Loop: Header=BB6_16 Depth=2
	jmp	.LBB6_29
.LBB6_29:                               # %for.inc.66
                                        #   in Loop: Header=BB6_16 Depth=2
	movl	-192(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -192(%rbp)
	jmp	.LBB6_16
.LBB6_30:                               # %for.end.68
                                        #   in Loop: Header=BB6_6 Depth=1
	movsd	-144(%rbp), %xmm0       # xmm0 = mem[0],zero
	addsd	-120(%rbp), %xmm0
	addsd	-96(%rbp), %xmm0
	subsd	-128(%rbp), %xmm0
	subsd	-104(%rbp), %xmm0
	subsd	-80(%rbp), %xmm0
	cvttsd2si	%xmm0, %rax
	movq	%rax, -168(%rbp)
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	addsd	-88(%rbp), %xmm0
	addsd	-80(%rbp), %xmm0
	subsd	-144(%rbp), %xmm0
	subsd	-136(%rbp), %xmm0
	subsd	-128(%rbp), %xmm0
	cvttsd2si	%xmm0, %rax
	movq	%rax, -176(%rbp)
	cmpq	$0, -168(%rbp)
	jne	.LBB6_33
# BB#31:                                # %land.lhs.true
                                        #   in Loop: Header=BB6_6 Depth=1
	cmpq	$0, -176(%rbp)
	jne	.LBB6_33
# BB#32:                                # %if.then.109
                                        #   in Loop: Header=BB6_6 Depth=1
	cvttsd2si	Filter+48, %eax
	movl	%eax, -188(%rbp)
	jmp	.LBB6_37
.LBB6_33:                               # %if.else.111
                                        #   in Loop: Header=BB6_6 Depth=1
	cvtsi2sdq	-168(%rbp), %xmm0
	mulsd	Filter, %xmm0
	cvtsi2sdq	-176(%rbp), %xmm1
	mulsd	Filter+8, %xmm1
	addsd	%xmm1, %xmm0
	addsd	Filter+40, %xmm0
	cvttsd2si	%xmm0, %rax
	movq	%rax, -184(%rbp)
	cmpq	$0, %rax
	jge	.LBB6_35
# BB#34:                                # %if.then.121
                                        #   in Loop: Header=BB6_6 Depth=1
	movl	$0, -188(%rbp)
	jmp	.LBB6_36
.LBB6_35:                               # %if.else.122
                                        #   in Loop: Header=BB6_6 Depth=1
	cvtsi2sdq	-184(%rbp), %xmm0
	movq	-168(%rbp), %rax
	imulq	-168(%rbp), %rax
	movq	-176(%rbp), %rcx
	imulq	-176(%rbp), %rcx
	addq	%rcx, %rax
	cvtsi2sdq	%rax, %xmm1
	addsd	Filter+32, %xmm1
	movsd	%xmm0, -216(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	sqrt
	movsd	-216(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %edx
	movl	%edx, -188(%rbp)
.LBB6_36:                               # %if.end.131
                                        #   in Loop: Header=BB6_6 Depth=1
	jmp	.LBB6_37
.LBB6_37:                               # %if.end.132
                                        #   in Loop: Header=BB6_6 Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB6_45
# BB#38:                                # %if.then.134
                                        #   in Loop: Header=BB6_6 Depth=1
	movl	$0, -192(%rbp)
.LBB6_39:                               # %for.cond.135
                                        #   Parent Loop BB6_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-192(%rbp), %eax
	cmpl	-152(%rbp), %eax
	jge	.LBB6_42
# BB#40:                                # %for.body.138
                                        #   in Loop: Header=BB6_39 Depth=2
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movzbl	(%rax), %edx
	imull	-188(%rbp), %edx
	sarl	$8, %edx
	movb	%dl, %sil
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	movb	%sil, (%rax)
# BB#41:                                # %for.inc.143
                                        #   in Loop: Header=BB6_39 Depth=2
	movl	-192(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -192(%rbp)
	jmp	.LBB6_39
.LBB6_42:                               # %for.end.145
                                        #   in Loop: Header=BB6_6 Depth=1
	cmpl	$0, -36(%rbp)
	je	.LBB6_44
# BB#43:                                # %if.then.147
                                        #   in Loop: Header=BB6_6 Depth=1
	movl	-32(%rbp), %eax
	addl	-152(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	-56(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movq	-24(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -24(%rbp)
	movb	%sil, (%rcx)
	movq	-16(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
.LBB6_44:                               # %if.end.154
                                        #   in Loop: Header=BB6_6 Depth=1
	jmp	.LBB6_52
.LBB6_45:                               # %if.else.155
                                        #   in Loop: Header=BB6_6 Depth=1
	movl	$0, -192(%rbp)
.LBB6_46:                               # %for.cond.156
                                        #   Parent Loop BB6_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-192(%rbp), %eax
	cmpl	-152(%rbp), %eax
	jge	.LBB6_49
# BB#47:                                # %for.body.159
                                        #   in Loop: Header=BB6_46 Depth=2
	movl	-188(%rbp), %eax
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -24(%rbp)
	movb	%cl, (%rdx)
# BB#48:                                # %for.inc.162
                                        #   in Loop: Header=BB6_46 Depth=2
	movl	-192(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -192(%rbp)
	jmp	.LBB6_46
.LBB6_49:                               # %for.end.164
                                        #   in Loop: Header=BB6_6 Depth=1
	cmpl	$0, -36(%rbp)
	je	.LBB6_51
# BB#50:                                # %if.then.166
                                        #   in Loop: Header=BB6_6 Depth=1
	movl	-32(%rbp), %eax
	addl	-152(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	-56(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movq	-24(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -24(%rbp)
	movb	%sil, (%rcx)
.LBB6_51:                               # %if.end.172
                                        #   in Loop: Header=BB6_6 Depth=1
	jmp	.LBB6_52
.LBB6_52:                               # %if.end.173
                                        #   in Loop: Header=BB6_6 Depth=1
	movl	$0, -196(%rbp)
.LBB6_53:                               # %for.cond.174
                                        #   Parent Loop BB6_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$3, -196(%rbp)
	jge	.LBB6_56
# BB#54:                                # %for.body.177
                                        #   in Loop: Header=BB6_53 Depth=2
	movl	-32(%rbp), %eax
	movslq	-196(%rbp), %rcx
	movq	-64(%rbp,%rcx,8), %rdx
	movl	%eax, %eax
	movl	%eax, %esi
	addq	%rsi, %rdx
	movq	%rdx, -64(%rbp,%rcx,8)
# BB#55:                                # %for.inc.182
                                        #   in Loop: Header=BB6_53 Depth=2
	movl	-196(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -196(%rbp)
	jmp	.LBB6_53
.LBB6_56:                               # %for.end.184
                                        #   in Loop: Header=BB6_6 Depth=1
	jmp	.LBB6_57
.LBB6_57:                               # %for.inc.185
                                        #   in Loop: Header=BB6_6 Depth=1
	movl	-148(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -148(%rbp)
	jmp	.LBB6_6
.LBB6_58:                               # %for.end.187
	cmpq	$0, -16(%rbp)
	je	.LBB6_60
# BB#59:                                # %if.then.189
	movl	-32(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -16(%rbp)
.LBB6_60:                               # %if.end.192
	addq	$224, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	emboss_row, .Lfunc_end6-emboss_row
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
	.size	query.args, 168

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
	.asciz	"The Image"
	.size	.L.str.3, 10

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"drawable"
	.size	.L.str.4, 9

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"The Drawable"
	.size	.L.str.5, 13

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"azimuth"
	.size	.L.str.6, 8

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"The Light Angle (degrees)"
	.size	.L.str.7, 26

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"elevation"
	.size	.L.str.8, 10

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"The Elevation Angle (degrees)"
	.size	.L.str.9, 30

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"depth"
	.size	.L.str.10, 6

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"The Filter Width"
	.size	.L.str.11, 17

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"emboss"
	.size	.L.str.12, 7

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Emboss or Bumpmap"
	.size	.L.str.13, 18

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"plug-in-emboss"
	.size	.L.str.14, 15

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Simulate an image created by embossing"
	.size	.L.str.15, 39

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Emboss or Bumpmap the given drawable, specifying the angle and elevation for the light source."
	.size	.L.str.16, 95

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Eric L. Hernes, John Schlag"
	.size	.L.str.17, 28

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"Eric L. Hernes"
	.size	.L.str.18, 15

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"1997"
	.size	.L.str.19, 5

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"_Emboss..."
	.size	.L.str.20, 11

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"RGB*"
	.size	.L.str.21, 5

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"<Image>/Filters/Distorts"
	.size	.L.str.22, 25

	.type	run.rvals,@object       # @run.rvals
	.local	run.rvals
	.comm	run.rvals,40,16
	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"gimp20-std-plug-ins"
	.size	.L.str.23, 20

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"UTF-8"
	.size	.L.str.24, 6

	.type	evals,@object           # @evals
	.data
	.align	8
evals:
	.quad	4629137466983448576     # double 30
	.quad	4631530004285489152     # double 45
	.long	20                      # 0x14
	.long	1                       # 0x1
	.size	evals, 24

	.type	.L.str.25,@object       # @.str.25
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.25:
	.asciz	"Emboss"
	.size	.L.str.25, 7

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"gimp-emboss"
	.size	.L.str.26, 12

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
	.asciz	"Function"
	.size	.L.str.30, 9

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"_Bumpmap"
	.size	.L.str.31, 9

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"_Emboss"
	.size	.L.str.32, 8

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"toggled"
	.size	.L.str.33, 8

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"_Azimuth:"
	.size	.L.str.34, 10

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"value-changed"
	.size	.L.str.35, 14

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"E_levation:"
	.size	.L.str.36, 12

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"_Depth:"
	.size	.L.str.37, 8

	.type	Filter,@object          # @Filter
	.local	Filter
	.comm	Filter,56,8

	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
