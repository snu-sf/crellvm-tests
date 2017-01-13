	.text
	.file	"align-layers.bc"
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
	movabsq	$.L.str.10, %rdi
	movabsq	$.L.str.11, %rsi
	movabsq	$.L.str.12, %rdx
	movabsq	$.L.str.13, %rcx
	movabsq	$.L.str.14, %r8
	movabsq	$.L.str.15, %r9
	movabsq	$.L.str.16, %rax
	movabsq	$.L.str.17, %r10
	movl	$1, %r11d
	movl	$5, %ebx
	xorl	%r14d, %r14d
	movabsq	$query.args, %r15
	xorl	%r12d, %r12d
	movl	%r12d, %r13d
	movq	%rax, (%rsp)
	movq	%r10, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$5, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%r15, 40(%rsp)
	movq	$0, 48(%rsp)
	movq	%r13, -48(%rbp)         # 8-byte Spill
	movl	%r11d, -52(%rbp)        # 4-byte Spill
	movl	%r14d, -56(%rbp)        # 4-byte Spill
	movl	%ebx, -60(%rbp)         # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.10, %rdi
	movabsq	$.L.str.18, %rsi
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	$0, -44(%rbp)
	movq	-24(%rbp), %rcx
	movl	8(%rcx), %esi
	movl	%esi, -48(%rbp)
	movq	-24(%rbp), %rcx
	movl	48(%rcx), %esi
	movl	%esi, -52(%rbp)
# BB#1:                                 # %do.body
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
# BB#2:                                 # %do.end
	movq	-32(%rbp), %rax
	movl	$1, (%rax)
	movq	-40(%rbp), %rax
	movq	$run.values, (%rax)
	movl	$21, run.values(%rip)
	movl	-44(%rbp), %ecx
	movl	%ecx, run.values+8(%rip)
	movl	-48(%rbp), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -92(%rbp)         # 4-byte Spill
	je	.LBB1_3
	jmp	.LBB1_20
.LBB1_20:                               # %do.end
	movl	-92(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
	je	.LBB1_11
	jmp	.LBB1_21
.LBB1_21:                               # %do.end
	movl	-92(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	je	.LBB1_12
	jmp	.LBB1_13
.LBB1_3:                                # %sw.bb
	leaq	-56(%rbp), %rsi
	movl	-52(%rbp), %edi
	callq	gimp_image_get_layers
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	movl	-56(%rbp), %esi
	callq	align_layers_count_visibles_layers
	movl	%eax, -56(%rbp)
	movq	-64(%rbp), %rdi
	callq	g_free
	cmpl	$2, -56(%rbp)
	jge	.LBB1_5
# BB#4:                                 # %if.then
	movabsq	$.L.str.21, %rdi
	movq	-32(%rbp), %rax
	movl	$2, (%rax)
	movl	$4, run.values+40
	callq	gettext
	movq	%rax, run.values+48
	jmp	.LBB1_19
.LBB1_5:                                # %if.end
	movabsq	$.L.str.10, %rdi
	movabsq	$VALS, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	cmpl	$1, VALS+24
	movl	%eax, -104(%rbp)        # 4-byte Spill
	jle	.LBB1_7
# BB#6:                                 # %cond.true
	movl	VALS+24, %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
	jmp	.LBB1_8
.LBB1_7:                                # %cond.false
	movl	$1, %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
	jmp	.LBB1_8
.LBB1_8:                                # %cond.end
	movl	-108(%rbp), %eax        # 4-byte Reload
	movl	%eax, VALS+24
	callq	align_layers_dialog
	cmpl	$0, %eax
	jne	.LBB1_10
# BB#9:                                 # %if.then.13
	jmp	.LBB1_19
.LBB1_10:                               # %if.end.14
	jmp	.LBB1_13
.LBB1_11:                               # %sw.bb.15
	jmp	.LBB1_13
.LBB1_12:                               # %sw.bb.16
	movabsq	$.L.str.10, %rdi
	movabsq	$VALS, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movl	%eax, -112(%rbp)        # 4-byte Spill
.LBB1_13:                               # %sw.epilog
	movl	-52(%rbp), %edi
	callq	align_layers
	movl	%eax, -44(%rbp)
	cmpl	$1, -48(%rbp)
	je	.LBB1_15
# BB#14:                                # %if.then.20
	callq	gimp_displays_flush
	movl	%eax, -116(%rbp)        # 4-byte Spill
.LBB1_15:                               # %if.end.22
	cmpl	$0, -48(%rbp)
	jne	.LBB1_18
# BB#16:                                # %land.lhs.true
	cmpl	$3, -44(%rbp)
	jne	.LBB1_18
# BB#17:                                # %if.then.25
	movabsq	$.L.str.10, %rdi
	movabsq	$VALS, %rax
	movl	$28, %edx
	movq	%rax, %rsi
	callq	gimp_procedural_db_set_data
	movl	%eax, -120(%rbp)        # 4-byte Spill
.LBB1_18:                               # %if.end.27
	movl	-44(%rbp), %eax
	movl	%eax, run.values+8
.LBB1_19:                               # %return
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
	.type	align_layers_count_visibles_layers,@function
align_layers_count_visibles_layers:     # @align_layers_count_visibles_layers
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	$0, -20(%rbp)
	movl	$0, -16(%rbp)
.LBB3_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-16(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB3_11
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB3_1 Depth=1
	movslq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	movl	%edx, -24(%rbp)
	movl	-24(%rbp), %edi
	callq	gimp_item_get_visible
	cmpl	$0, %eax
	je	.LBB3_9
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	-24(%rbp), %edi
	callq	gimp_item_is_group
	cmpl	$0, %eax
	je	.LBB3_5
# BB#4:                                 # %if.then.3
                                        #   in Loop: Header=BB3_1 Depth=1
	leaq	-36(%rbp), %rsi
	movl	-24(%rbp), %edi
	callq	gimp_item_get_children
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movl	-36(%rbp), %esi
	callq	align_layers_count_visibles_layers
	addl	-20(%rbp), %eax
	movl	%eax, -20(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_free
	jmp	.LBB3_8
.LBB3_5:                                # %if.else
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	-24(%rbp), %edi
	callq	gimp_item_is_layer
	cmpl	$0, %eax
	je	.LBB3_7
# BB#6:                                 # %if.then.8
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
.LBB3_7:                                # %if.end
                                        #   in Loop: Header=BB3_1 Depth=1
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.10
                                        #   in Loop: Header=BB3_1 Depth=1
	jmp	.LBB3_9
.LBB3_9:                                # %if.end.11
                                        #   in Loop: Header=BB3_1 Depth=1
	jmp	.LBB3_10
.LBB3_10:                               # %for.inc
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB3_1
.LBB3_11:                               # %for.end
	movl	-20(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	align_layers_count_visibles_layers, .Lfunc_end3-align_layers_count_visibles_layers
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4607182418800017408     # double 1
.LCPI4_1:
	.quad	4641240890982006784     # double 200
.LCPI4_2:
	.quad	4621819117588971520     # double 10
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI4_3:
	.long	1056964608              # float 0.5
	.text
	.align	16, 0x90
	.type	align_layers_dialog,@function
align_layers_dialog:                    # @align_layers_dialog
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
	subq	$680, %rsp              # imm = 0x2A8
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
	movabsq	$.L.str.22, %rdi
	xorl	%esi, %esi
	callq	gimp_ui_init
	movabsq	$.L.str.23, %rdi
	callq	gettext
	movabsq	$.L.str.24, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	movabsq	$gimp_standard_help_func, %r8
	movabsq	$.L.str.10, %r9
	movabsq	$.L.str.25, %rdi
	movl	$4294967290, %r10d      # imm = 0xFFFFFFFA
	movabsq	$.L.str.26, %r11
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
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
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
	movq	-48(%rbp), %rdi
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_window_set_transient
	movl	$7, %edi
	movl	$3, %esi
	xorl	%edx, %edx
	callq	gtk_table_new
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-56(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-56(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-48(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -164(%rbp)        # 4-byte Spill
	movl	-164(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movabsq	$.L.str.27, %rsi
	movl	$12, %ecx
	movl	%ecx, %edx
	callq	g_dpgettext
	movabsq	$.L.str.28, %rdi
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.29, %rdi
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.30, %rdi
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.31, %rdi
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$1, %ecx
	movl	$2, %r9d
	movl	$3, %r8d
	movl	$4, %r10d
	xorl	%ebx, %ebx
	movl	%ebx, %edx
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	-184(%rbp), %r11        # 8-byte Reload
	movq	%rdx, -208(%rbp)        # 8-byte Spill
	movq	%r11, %rdx
	movq	-192(%rbp), %r14        # 8-byte Reload
	movl	%r8d, -212(%rbp)        # 4-byte Spill
	movq	%r14, %r8
	movq	-200(%rbp), %r15        # 8-byte Reload
	movq	%r15, (%rsp)
	movl	$3, 8(%rsp)
	movq	%rax, 16(%rsp)
	movl	$4, 24(%rsp)
	movq	$0, 32(%rsp)
	movb	$0, %al
	movl	%r10d, -216(%rbp)       # 4-byte Spill
	callq	gimp_int_combo_box_new
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	VALS, %esi
	movq	%rax, %rdi
	callq	gimp_int_combo_box_set_active
	movabsq	$.L.str.32, %rsi
	movabsq	$gimp_int_combo_box_get_active, %rdx
	movabsq	$VALS, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-64(%rbp), %r11
	movq	%rdi, -232(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	-232(%rbp), %rcx        # 8-byte Reload
	movl	%eax, -236(%rbp)        # 4-byte Spill
	callq	g_signal_connect_data
	movq	-56(%rbp), %rcx
	movq	%rax, -248(%rbp)        # 8-byte Spill
	movq	%rcx, -256(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.33, %rdi
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	xorps	%xmm0, %xmm0
	movss	.LCPI4_3, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movl	$2, %r10d
	movq	-64(%rbp), %r8
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movl	%r9d, %esi
	movl	%r9d, %edx
	movq	%rax, %rcx
	movl	%r10d, %r9d
	movl	$0, (%rsp)
	callq	gimp_table_attach_aligned
	movabsq	$.L.str.34, %rdi
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.35, %rdi
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.36, %rdi
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$1, %ecx
	movl	$2, %r9d
	xorl	%edx, %edx
	movl	%edx, %edi
	movq	-280(%rbp), %r8         # 8-byte Reload
	movq	%rdi, -296(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movq	-288(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %r8
	movq	$0, (%rsp)
	movb	$0, %al
	callq	gimp_int_combo_box_new
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	VALS+4, %esi
	movq	%rax, %rdi
	callq	gimp_int_combo_box_set_active
	movabsq	$.L.str.32, %rsi
	movabsq	$gimp_int_combo_box_get_active, %rdx
	movabsq	$VALS, %rdi
	addq	$4, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-64(%rbp), %r11
	movq	%rdi, -312(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	-312(%rbp), %rcx        # 8-byte Reload
	movl	%eax, -316(%rbp)        # 4-byte Spill
	callq	g_signal_connect_data
	movq	-56(%rbp), %rcx
	movq	%rax, -328(%rbp)        # 8-byte Spill
	movq	%rcx, -336(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.37, %rdi
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$1, %edx
	xorps	%xmm0, %xmm0
	movss	.LCPI4_3, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movl	$2, %r9d
	movq	-64(%rbp), %r8
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rcx
	movl	$0, (%rsp)
	callq	gimp_table_attach_aligned
	xorl	%edx, %edx
	movl	%edx, %edi
	movabsq	$.L.str.27, %rsi
	movl	$12, %edx
                                        # kill: RDX<def> EDX<kill>
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	g_dpgettext
	movabsq	$.L.str.28, %rdi
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.38, %rdi
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.39, %rdi
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.31, %rdi
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$1, %ecx
	movl	$2, %r9d
	movl	$3, %r10d
	movl	$4, %ebx
	xorl	%r12d, %r12d
	movl	%r12d, %edx
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	-368(%rbp), %r8         # 8-byte Reload
	movq	%rdx, -392(%rbp)        # 8-byte Spill
	movq	%r8, %rdx
	movq	-376(%rbp), %r8         # 8-byte Reload
	movq	-384(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	movl	$3, 8(%rsp)
	movq	%rax, 16(%rsp)
	movl	$4, 24(%rsp)
	movq	$0, 32(%rsp)
	movb	$0, %al
	movl	%ebx, -396(%rbp)        # 4-byte Spill
	movl	%r10d, -400(%rbp)       # 4-byte Spill
	callq	gimp_int_combo_box_new
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-408(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	VALS+8, %esi
	movq	%rax, %rdi
	callq	gimp_int_combo_box_set_active
	movabsq	$.L.str.32, %rsi
	movabsq	$gimp_int_combo_box_get_active, %rdx
	movabsq	$VALS, %rdi
	addq	$8, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-64(%rbp), %r11
	movq	%rdi, -416(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	-416(%rbp), %rcx        # 8-byte Reload
	movl	%eax, -420(%rbp)        # 4-byte Spill
	callq	g_signal_connect_data
	movq	-56(%rbp), %rcx
	movq	%rax, -432(%rbp)        # 8-byte Spill
	movq	%rcx, -440(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-440(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.40, %rdi
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$2, %r9d
	xorps	%xmm0, %xmm0
	movss	.LCPI4_3, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	-64(%rbp), %r8
	movq	-448(%rbp), %rdi        # 8-byte Reload
	movl	%r9d, %edx
	movq	%rax, %rcx
	movl	$0, (%rsp)
	callq	gimp_table_attach_aligned
	movabsq	$.L.str.41, %rdi
	movq	%rax, -456(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.35, %rdi
	movq	%rax, -464(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.42, %rdi
	movq	%rax, -472(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$1, %ecx
	movl	$2, %r9d
	xorl	%edx, %edx
	movl	%edx, %edi
	movq	-464(%rbp), %r8         # 8-byte Reload
	movq	%rdi, -480(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movq	-472(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %r8
	movq	$0, (%rsp)
	movb	$0, %al
	callq	gimp_int_combo_box_new
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -488(%rbp)        # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-488(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	VALS+12, %esi
	movq	%rax, %rdi
	callq	gimp_int_combo_box_set_active
	movabsq	$.L.str.32, %rsi
	movabsq	$gimp_int_combo_box_get_active, %rdx
	movabsq	$VALS, %rdi
	addq	$12, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-64(%rbp), %r11
	movq	%rdi, -496(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	-496(%rbp), %rcx        # 8-byte Reload
	movl	%eax, -500(%rbp)        # 4-byte Spill
	callq	g_signal_connect_data
	movq	-56(%rbp), %rcx
	movq	%rax, -512(%rbp)        # 8-byte Spill
	movq	%rcx, -520(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-520(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.43, %rdi
	movq	%rax, -528(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$3, %edx
	xorps	%xmm0, %xmm0
	movss	.LCPI4_3, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movl	$2, %r9d
	movq	-64(%rbp), %r8
	movq	-528(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rcx
	movl	$0, (%rsp)
	callq	gimp_table_attach_aligned
	movq	-56(%rbp), %rcx
	movq	%rax, -536(%rbp)        # 8-byte Spill
	movq	%rcx, -544(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-544(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.44, %rdi
	movq	%rax, -552(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%edx, %edx
	movl	$4, %r9d
	movl	$150, %r8d
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI4_1, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI4_2, %xmm4         # xmm4 = mem[0],zero
	movl	$1, %r10d
	xorps	%xmm1, %xmm1
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	cvtsi2sdl	VALS+24, %xmm3
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movl	%edx, %esi
	movl	%edx, -556(%rbp)        # 4-byte Spill
	movl	%r9d, %edx
	movq	%rcx, -568(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movl	-556(%rbp), %r9d        # 4-byte Reload
	movsd	%xmm0, -576(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm0
	movsd	-576(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	%xmm1, -584(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm1
	movl	$0, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-584(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-584(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r10d, -588(%rbp)       # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.45, %rsi
	movabsq	$gimp_int_adjustment_update, %rcx
	movabsq	$VALS, %rdi
	addq	$24, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rdi, -600(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-600(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.46, %rdi
	movq	%rax, -608(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_mnemonic
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -616(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-616(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	VALS+16, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-56(%rbp), %rax
	movq	%rax, -624(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-624(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	$3, %ecx
	movl	$5, %r8d
	movl	$6, %r9d
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_table_attach_defaults
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.47, %rsi
	movabsq	$gimp_toggle_button_update, %rax
	movabsq	$VALS, %rdi
	addq	$16, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-72(%rbp), %r11
	movq	%rdi, -632(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %rdx
	movq	-632(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.48, %rdi
	movq	%rax, -640(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_mnemonic
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -648(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-648(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	VALS+20, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-56(%rbp), %rax
	movq	%rax, -656(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-656(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	$3, %ecx
	movl	$6, %r8d
	movl	$7, %r9d
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_table_attach_defaults
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.47, %rsi
	movabsq	$gimp_toggle_button_update, %rax
	movabsq	$VALS, %rdi
	addq	$20, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-72(%rbp), %r11
	movq	%rdi, -664(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %rdx
	movq	-664(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-48(%rbp), %rdi
	movq	%rax, -672(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
	movq	-48(%rbp), %rax
	movq	%rax, -680(%rbp)        # 8-byte Spill
	callq	gimp_dialog_get_type
	movq	-680(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dialog_run
	cmpl	$-5, %eax
	sete	%r13b
	andb	$1, %r13b
	movzbl	%r13b, %eax
	movl	%eax, -84(%rbp)
	movq	-48(%rbp), %rdi
	callq	gtk_widget_destroy
	movl	-84(%rbp), %eax
	addq	$680, %rsp              # imm = 0x2A8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	align_layers_dialog, .Lfunc_end4-align_layers_dialog
	.cfi_endproc

	.align	16, 0x90
	.type	align_layers,@function
align_layers:                           # @align_layers
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
	leaq	-12(%rbp), %rsi
	movl	%edi, -8(%rbp)
	movl	$0, -12(%rbp)
	movq	$0, -24(%rbp)
	movl	$0, -28(%rbp)
	movl	-8(%rbp), %edi
	callq	align_layers_spread_image
	movq	%rax, -24(%rbp)
	cmpl	$2, -12(%rbp)
	jge	.LBB5_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	movl	$0, -4(%rbp)
	jmp	.LBB5_6
.LBB5_2:                                # %if.end
	movl	-8(%rbp), %edi
	callq	align_layers_find_background
	movl	%eax, -28(%rbp)
	cmpl	$0, VALS+16
	je	.LBB5_5
# BB#3:                                 # %land.lhs.true
	movl	-28(%rbp), %eax
	movl	-12(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	movq	-24(%rbp), %rsi
	cmpl	(%rsi,%rdx,4), %eax
	jne	.LBB5_5
# BB#4:                                 # %if.then.3
	movl	-12(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -12(%rbp)
.LBB5_5:                                # %if.end.4
	movq	-24(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-28(%rbp), %edx
	callq	align_layers_gather_data
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -40(%rbp)
	movl	-8(%rbp), %edi
	callq	gimp_image_undo_group_start
	movq	-24(%rbp), %rdi
	movl	-12(%rbp), %esi
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movl	%eax, -68(%rbp)         # 4-byte Spill
	callq	align_layers_perform_alignment
	movl	-8(%rbp), %edi
	callq	gimp_image_undo_group_end
	movq	-24(%rbp), %rcx
	movq	%rcx, %rdi
	movl	%eax, -72(%rbp)         # 4-byte Spill
	callq	g_free
	movl	$3, -4(%rbp)
.LBB5_6:                                # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	align_layers, .Lfunc_end5-align_layers
	.cfi_endproc

	.align	16, 0x90
	.type	align_layers_spread_image,@function
align_layers_spread_image:              # @align_layers_spread_image
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
	leaq	-36(%rbp), %rax
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	-4(%rbp), %edi
	movq	%rax, %rsi
	callq	gimp_image_get_layers
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movl	-36(%rbp), %esi
	callq	align_layers_count_visibles_layers
	movq	-16(%rbp), %rdi
	movl	%eax, (%rdi)
	movq	-16(%rbp), %rdi
	movslq	(%rdi), %rdi
	shlq	$2, %rdi
	callq	g_malloc
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	movl	-36(%rbp), %esi
	movq	-32(%rbp), %rdx
	callq	align_layers_spread_visibles_layers
	movq	-24(%rbp), %rdx
	movq	%rdx, %rdi
	movl	%eax, -40(%rbp)         # 4-byte Spill
	callq	g_free
	movq	-32(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	align_layers_spread_image, .Lfunc_end6-align_layers_spread_image
	.cfi_endproc

	.align	16, 0x90
	.type	align_layers_find_background,@function
align_layers_find_background:           # @align_layers_find_background
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
	leaq	-20(%rbp), %rsi
	movl	%edi, -4(%rbp)
	movl	$0, -28(%rbp)
	movl	-4(%rbp), %edi
	callq	gimp_image_get_layers
	leaq	-28(%rbp), %rdx
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	align_layers_find_last_layer
	movl	%eax, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, %rdi
	callq	g_free
	movl	-24(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	align_layers_find_background, .Lfunc_end7-align_layers_find_background
	.cfi_endproc

	.align	16, 0x90
	.type	align_layers_gather_data,@function
align_layers_gather_data:               # @align_layers_gather_data
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
	subq	$112, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movl	$2147483647, -52(%rbp)  # imm = 0x7FFFFFFF
	movl	$2147483647, -56(%rbp)  # imm = 0x7FFFFFFF
	movl	$-2147483648, -60(%rbp) # imm = 0xFFFFFFFF80000000
	movl	$-2147483648, -64(%rbp) # imm = 0xFFFFFFFF80000000
	movl	$0, -72(%rbp)
	movl	$0, -76(%rbp)
	movl	$0, -80(%rbp)
	movl	$0, -84(%rbp)
	movl	$0, -48(%rbp)
	movl	$0, -44(%rbp)
	movl	$0, -40(%rbp)
	movl	$0, -36(%rbp)
	movl	$0, -68(%rbp)
.LBB8_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-68(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB8_16
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB8_1 Depth=1
	leaq	-72(%rbp), %rsi
	leaq	-76(%rbp), %rdx
	movslq	-68(%rbp), %rax
	movq	-24(%rbp), %rcx
	movl	(%rcx,%rax,4), %edi
	callq	gimp_drawable_offsets
	leaq	-80(%rbp), %rsi
	leaq	-84(%rbp), %rdx
	movslq	-68(%rbp), %rcx
	movq	-24(%rbp), %r8
	movl	(%r8,%rcx,4), %edi
	movl	%eax, -88(%rbp)         # 4-byte Spill
	callq	align_layers_get_align_offsets
	movl	-80(%rbp), %eax
	addl	-72(%rbp), %eax
	movl	%eax, -72(%rbp)
	movl	-84(%rbp), %eax
	addl	-76(%rbp), %eax
	movl	%eax, -76(%rbp)
	movl	-52(%rbp), %eax
	cmpl	-72(%rbp), %eax
	jge	.LBB8_4
# BB#3:                                 # %cond.true
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-52(%rbp), %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	jmp	.LBB8_5
.LBB8_4:                                # %cond.false
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-72(%rbp), %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
.LBB8_5:                                # %cond.end
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-92(%rbp), %eax         # 4-byte Reload
	movl	%eax, -52(%rbp)
	movl	-60(%rbp), %eax
	cmpl	-72(%rbp), %eax
	jle	.LBB8_7
# BB#6:                                 # %cond.true.6
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-60(%rbp), %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
	jmp	.LBB8_8
.LBB8_7:                                # %cond.false.7
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-72(%rbp), %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
.LBB8_8:                                # %cond.end.8
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-96(%rbp), %eax         # 4-byte Reload
	movl	%eax, -60(%rbp)
	movl	-56(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jge	.LBB8_10
# BB#9:                                 # %cond.true.11
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-56(%rbp), %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jmp	.LBB8_11
.LBB8_10:                               # %cond.false.12
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-76(%rbp), %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
.LBB8_11:                               # %cond.end.13
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-100(%rbp), %eax        # 4-byte Reload
	movl	%eax, -56(%rbp)
	movl	-64(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jle	.LBB8_13
# BB#12:                                # %cond.true.16
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-64(%rbp), %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
	jmp	.LBB8_14
.LBB8_13:                               # %cond.false.17
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-76(%rbp), %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
.LBB8_14:                               # %cond.end.18
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-104(%rbp), %eax        # 4-byte Reload
	movl	%eax, -64(%rbp)
# BB#15:                                # %for.inc
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB8_1
.LBB8_16:                               # %for.end
	cmpl	$0, VALS+20
	je	.LBB8_18
# BB#17:                                # %if.then
	leaq	-72(%rbp), %rsi
	leaq	-76(%rbp), %rdx
	movl	-32(%rbp), %edi
	callq	gimp_drawable_offsets
	leaq	-80(%rbp), %rsi
	leaq	-84(%rbp), %rdx
	movl	-32(%rbp), %edi
	movl	%eax, -108(%rbp)        # 4-byte Spill
	callq	align_layers_get_align_offsets
	movl	-80(%rbp), %eax
	addl	-72(%rbp), %eax
	movl	%eax, -72(%rbp)
	movl	-84(%rbp), %eax
	addl	-76(%rbp), %eax
	movl	%eax, -76(%rbp)
	movl	-72(%rbp), %eax
	movl	%eax, -52(%rbp)
	movl	%eax, -40(%rbp)
	movl	-76(%rbp), %eax
	movl	%eax, -56(%rbp)
	movl	%eax, -36(%rbp)
.LBB8_18:                               # %if.end
	cmpl	$1, -28(%rbp)
	jle	.LBB8_20
# BB#19:                                # %if.then.26
	movl	-60(%rbp), %eax
	subl	-52(%rbp), %eax
	movl	-28(%rbp), %ecx
	subl	$1, %ecx
	cltd
	idivl	%ecx
	movl	%eax, -48(%rbp)
	movl	-64(%rbp), %eax
	subl	-56(%rbp), %eax
	movl	-28(%rbp), %ecx
	subl	$1, %ecx
	cltd
	idivl	%ecx
	movl	%eax, -44(%rbp)
.LBB8_20:                               # %if.end.33
	cmpl	$2, VALS
	je	.LBB8_22
# BB#21:                                # %lor.lhs.false
	cmpl	$3, VALS
	jne	.LBB8_23
.LBB8_22:                               # %if.then.36
	movl	-52(%rbp), %eax
	movl	%eax, -40(%rbp)
.LBB8_23:                               # %if.end.38
	cmpl	$2, VALS+8
	je	.LBB8_25
# BB#24:                                # %lor.lhs.false.40
	cmpl	$3, VALS+8
	jne	.LBB8_26
.LBB8_25:                               # %if.then.42
	movl	-56(%rbp), %eax
	movl	%eax, -36(%rbp)
.LBB8_26:                               # %if.end.44
	movups	-48(%rbp), %xmm0
	movaps	%xmm0, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	align_layers_gather_data, .Lfunc_end8-align_layers_gather_data
	.cfi_endproc

	.align	16, 0x90
	.type	align_layers_perform_alignment,@function
align_layers_perform_alignment:         # @align_layers_perform_alignment
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
	movq	%rdx, -16(%rbp)
	movq	%rcx, -8(%rbp)
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	$0, -32(%rbp)
.LBB9_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB9_16
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	$0, -36(%rbp)
	movl	$0, -40(%rbp)
	movslq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	movl	(%rcx,%rax,4), %edi
	leaq	-44(%rbp), %rsi
	leaq	-48(%rbp), %rdx
	callq	gimp_drawable_offsets
	movslq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movl	(%rdx,%rcx,4), %edi
	leaq	-52(%rbp), %rsi
	leaq	-56(%rbp), %rdx
	movl	%eax, -60(%rbp)         # 4-byte Spill
	callq	align_layers_get_align_offsets
	movl	VALS(%rip), %eax
	movl	%eax, %ecx
	movq	%rcx, %rdx
	subq	$4, %rdx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	ja	.LBB9_8
# BB#17:                                # %for.body
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	.LJTI9_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB9_3:                                # %sw.bb
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-44(%rbp), %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB9_8
.LBB9_4:                                # %sw.bb.3
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-8(%rbp), %eax
	subl	-52(%rbp), %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB9_8
.LBB9_5:                                # %sw.bb.4
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-8(%rbp), %eax
	movl	-32(%rbp), %ecx
	imull	-16(%rbp), %ecx
	addl	%ecx, %eax
	subl	-52(%rbp), %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB9_8
.LBB9_6:                                # %sw.bb.7
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-8(%rbp), %eax
	movl	-28(%rbp), %ecx
	subl	-32(%rbp), %ecx
	subl	$1, %ecx
	imull	-16(%rbp), %ecx
	addl	%ecx, %eax
	subl	-52(%rbp), %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB9_8
.LBB9_7:                                # %sw.bb.15
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	$2, %eax
	movl	VALS+24, %ecx
	movl	-44(%rbp), %edx
	addl	-52(%rbp), %edx
	movl	VALS+24, %esi
	movl	%eax, -84(%rbp)         # 4-byte Spill
	movl	%esi, %eax
	movl	%edx, -88(%rbp)         # 4-byte Spill
	cltd
	movl	-84(%rbp), %esi         # 4-byte Reload
	idivl	%esi
	movl	-88(%rbp), %edi         # 4-byte Reload
	addl	%eax, %edi
	movl	%edi, %eax
	cltd
	idivl	VALS+24
	imull	%eax, %ecx
	subl	-52(%rbp), %ecx
	movl	%ecx, -36(%rbp)
.LBB9_8:                                # %sw.epilog
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	VALS+8(%rip), %eax
	movl	%eax, %ecx
	movq	%rcx, %rdx
	subq	$4, %rdx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	movq	%rdx, -104(%rbp)        # 8-byte Spill
	ja	.LBB9_14
# BB#18:                                # %sw.epilog
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	.LJTI9_1(,%rax,8), %rcx
	jmpq	*%rcx
.LBB9_9:                                # %sw.bb.21
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-48(%rbp), %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB9_14
.LBB9_10:                               # %sw.bb.22
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-4(%rbp), %eax
	subl	-56(%rbp), %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB9_14
.LBB9_11:                               # %sw.bb.24
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-4(%rbp), %eax
	movl	-32(%rbp), %ecx
	imull	-12(%rbp), %ecx
	addl	%ecx, %eax
	subl	-56(%rbp), %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB9_14
.LBB9_12:                               # %sw.bb.29
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-4(%rbp), %eax
	movl	-28(%rbp), %ecx
	subl	-32(%rbp), %ecx
	subl	$1, %ecx
	imull	-12(%rbp), %ecx
	addl	%ecx, %eax
	subl	-56(%rbp), %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB9_14
.LBB9_13:                               # %sw.bb.37
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	$2, %eax
	movl	VALS+24, %ecx
	movl	-48(%rbp), %edx
	addl	-56(%rbp), %edx
	movl	VALS+24, %esi
	movl	%eax, -108(%rbp)        # 4-byte Spill
	movl	%esi, %eax
	movl	%edx, -112(%rbp)        # 4-byte Spill
	cltd
	movl	-108(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	movl	-112(%rbp), %edi        # 4-byte Reload
	addl	%eax, %edi
	movl	%edi, %eax
	cltd
	idivl	VALS+24
	imull	%eax, %ecx
	subl	-56(%rbp), %ecx
	movl	%ecx, -40(%rbp)
.LBB9_14:                               # %sw.epilog.44
                                        #   in Loop: Header=BB9_1 Depth=1
	movslq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	movl	(%rcx,%rax,4), %edi
	movl	-36(%rbp), %esi
	movl	-40(%rbp), %edx
	callq	gimp_layer_set_offsets
	movl	%eax, -116(%rbp)        # 4-byte Spill
# BB#15:                                # %for.inc
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB9_1
.LBB9_16:                               # %for.end
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	align_layers_perform_alignment, .Lfunc_end9-align_layers_perform_alignment
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI9_0:
	.quad	.LBB9_3
	.quad	.LBB9_4
	.quad	.LBB9_5
	.quad	.LBB9_6
	.quad	.LBB9_7
.LJTI9_1:
	.quad	.LBB9_9
	.quad	.LBB9_10
	.quad	.LBB9_11
	.quad	.LBB9_12
	.quad	.LBB9_13

	.text
	.align	16, 0x90
	.type	align_layers_spread_visibles_layers,@function
align_layers_spread_visibles_layers:    # @align_layers_spread_visibles_layers
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
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movl	$0, -32(%rbp)
	movl	$0, -28(%rbp)
.LBB10_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB10_11
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB10_1 Depth=1
	movslq	-28(%rbp), %rax
	movq	-8(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	movl	%edx, -36(%rbp)
	movl	-36(%rbp), %edi
	callq	gimp_item_get_visible
	cmpl	$0, %eax
	je	.LBB10_9
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	-36(%rbp), %edi
	callq	gimp_item_is_group
	cmpl	$0, %eax
	je	.LBB10_5
# BB#4:                                 # %if.then.3
                                        #   in Loop: Header=BB10_1 Depth=1
	leaq	-52(%rbp), %rsi
	movl	-36(%rbp), %edi
	callq	gimp_item_get_children
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	movl	-52(%rbp), %esi
	movslq	-32(%rbp), %rax
	shlq	$2, %rax
	addq	-24(%rbp), %rax
	movq	%rax, %rdx
	callq	align_layers_spread_visibles_layers
	addl	-32(%rbp), %eax
	movl	%eax, -32(%rbp)
	movq	-48(%rbp), %rdx
	movq	%rdx, %rdi
	callq	g_free
	jmp	.LBB10_8
.LBB10_5:                               # %if.else
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	-36(%rbp), %edi
	callq	gimp_item_is_layer
	cmpl	$0, %eax
	je	.LBB10_7
# BB#6:                                 # %if.then.10
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	-36(%rbp), %eax
	movslq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movl	%eax, (%rdx,%rcx,4)
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
.LBB10_7:                               # %if.end
                                        #   in Loop: Header=BB10_1 Depth=1
	jmp	.LBB10_8
.LBB10_8:                               # %if.end.13
                                        #   in Loop: Header=BB10_1 Depth=1
	jmp	.LBB10_9
.LBB10_9:                               # %if.end.14
                                        #   in Loop: Header=BB10_1 Depth=1
	jmp	.LBB10_10
.LBB10_10:                              # %for.inc
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB10_1
.LBB10_11:                              # %for.end
	movl	-32(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	align_layers_spread_visibles_layers, .Lfunc_end10-align_layers_spread_visibles_layers
	.cfi_endproc

	.align	16, 0x90
	.type	align_layers_find_last_layer,@function
align_layers_find_last_layer:           # @align_layers_find_last_layer
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movl	-20(%rbp), %esi
	subl	$1, %esi
	movl	%esi, -36(%rbp)
.LBB11_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -36(%rbp)
	jl	.LBB11_11
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB11_1 Depth=1
	movslq	-36(%rbp), %rax
	movq	-16(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	movl	%edx, -40(%rbp)
	movl	-40(%rbp), %edi
	callq	gimp_item_is_group
	cmpl	$0, %eax
	je	.LBB11_6
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB11_1 Depth=1
	leaq	-52(%rbp), %rsi
	movl	-40(%rbp), %edi
	callq	gimp_item_get_children
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	movl	-52(%rbp), %esi
	movq	-32(%rbp), %rdx
	callq	align_layers_find_last_layer
	movl	%eax, -56(%rbp)
	movq	-48(%rbp), %rdx
	movq	%rdx, %rdi
	callq	g_free
	movq	-32(%rbp), %rdx
	cmpl	$0, (%rdx)
	je	.LBB11_5
# BB#4:                                 # %if.then.4
	movl	-56(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB11_12
.LBB11_5:                               # %if.end
                                        #   in Loop: Header=BB11_1 Depth=1
	jmp	.LBB11_9
.LBB11_6:                               # %if.else
                                        #   in Loop: Header=BB11_1 Depth=1
	movl	-40(%rbp), %edi
	callq	gimp_item_is_layer
	cmpl	$0, %eax
	je	.LBB11_8
# BB#7:                                 # %if.then.7
	movq	-32(%rbp), %rax
	movl	$1, (%rax)
	movl	-40(%rbp), %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB11_12
.LBB11_8:                               # %if.end.8
                                        #   in Loop: Header=BB11_1 Depth=1
	jmp	.LBB11_9
.LBB11_9:                               # %if.end.9
                                        #   in Loop: Header=BB11_1 Depth=1
	jmp	.LBB11_10
.LBB11_10:                              # %for.inc
                                        #   in Loop: Header=BB11_1 Depth=1
	movl	-36(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB11_1
.LBB11_11:                              # %for.end
	movl	$-1, -4(%rbp)
.LBB11_12:                              # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	align_layers_find_last_layer, .Lfunc_end11-align_layers_find_last_layer
	.cfi_endproc

	.align	16, 0x90
	.type	align_layers_get_align_offsets,@function
align_layers_get_align_offsets:         # @align_layers_get_align_offsets
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
	subq	$64, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	-4(%rbp), %edi
	callq	gimp_drawable_get
	movq	%rax, -32(%rbp)
	movl	VALS+4(%rip), %edi
	testl	%edi, %edi
	movl	%edi, -36(%rbp)         # 4-byte Spill
	je	.LBB12_1
	jmp	.LBB12_11
.LBB12_11:                              # %entry
	movl	-36(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -40(%rbp)         # 4-byte Spill
	je	.LBB12_2
	jmp	.LBB12_12
.LBB12_12:                              # %entry
	movl	-36(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
	je	.LBB12_3
	jmp	.LBB12_4
.LBB12_1:                               # %sw.bb
	movq	-16(%rbp), %rax
	movl	$0, (%rax)
	jmp	.LBB12_5
.LBB12_2:                               # %sw.bb.1
	movq	-32(%rbp), %rax
	movl	4(%rax), %ecx
	shrl	$1, %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, (%rax)
	jmp	.LBB12_5
.LBB12_3:                               # %sw.bb.2
	movq	-32(%rbp), %rax
	movl	4(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, (%rax)
	jmp	.LBB12_5
.LBB12_4:                               # %sw.default
	movq	-16(%rbp), %rax
	movl	$0, (%rax)
.LBB12_5:                               # %sw.epilog
	movl	VALS+12(%rip), %eax
	testl	%eax, %eax
	movl	%eax, -48(%rbp)         # 4-byte Spill
	je	.LBB12_6
	jmp	.LBB12_13
.LBB12_13:                              # %sw.epilog
	movl	-48(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
	je	.LBB12_7
	jmp	.LBB12_14
.LBB12_14:                              # %sw.epilog
	movl	-48(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
	je	.LBB12_8
	jmp	.LBB12_9
.LBB12_6:                               # %sw.bb.4
	movq	-24(%rbp), %rax
	movl	$0, (%rax)
	jmp	.LBB12_10
.LBB12_7:                               # %sw.bb.5
	movq	-32(%rbp), %rax
	movl	8(%rax), %ecx
	shrl	$1, %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, (%rax)
	jmp	.LBB12_10
.LBB12_8:                               # %sw.bb.7
	movq	-32(%rbp), %rax
	movl	8(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, (%rax)
	jmp	.LBB12_10
.LBB12_9:                               # %sw.default.9
	movq	-24(%rbp), %rax
	movl	$0, (%rax)
.LBB12_10:                              # %sw.epilog.10
	movq	-32(%rbp), %rdi
	callq	gimp_drawable_detach
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	align_layers_get_align_offsets, .Lfunc_end12-align_layers_get_align_offsets
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
	.asciz	"Input image"
	.size	.L.str.3, 12

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"drawable"
	.size	.L.str.4, 9

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Input drawable (not used)"
	.size	.L.str.5, 26

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"link-after-alignment"
	.size	.L.str.6, 21

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Link the visible layers after alignment { TRUE, FALSE }"
	.size	.L.str.7, 56

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"use-bottom"
	.size	.L.str.8, 11

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"use the bottom layer as the base of alignment { TRUE, FALSE }"
	.size	.L.str.9, 62

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"plug-in-align-layers"
	.size	.L.str.10, 21

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Align all visible layers of the image"
	.size	.L.str.11, 38

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Align visible layers"
	.size	.L.str.12, 21

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Shuji Narazaki <narazaki@InetQ.or.jp>"
	.size	.L.str.13, 38

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Shuji Narazaki"
	.size	.L.str.14, 15

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"1997"
	.size	.L.str.15, 5

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Align Visi_ble Layers..."
	.size	.L.str.16, 25

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"RGB*,GRAY*,INDEXED*"
	.size	.L.str.17, 20

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"<Image>/Image/Arrange"
	.size	.L.str.18, 22

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

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"There are not enough layers to align."
	.size	.L.str.21, 38

	.type	VALS,@object            # @VALS
	.data
	.align	4
VALS:
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	10                      # 0xa
	.size	VALS, 28

	.type	.L.str.22,@object       # @.str.22
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.22:
	.asciz	"align-layers"
	.size	.L.str.22, 13

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Align Visible Layers"
	.size	.L.str.23, 21

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"gimp-align-layers"
	.size	.L.str.24, 18

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"gtk-cancel"
	.size	.L.str.25, 11

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"gtk-ok"
	.size	.L.str.26, 7

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"align-style\004None"
	.size	.L.str.27, 17

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"Collect"
	.size	.L.str.28, 8

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"Fill (left to right)"
	.size	.L.str.29, 21

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"Fill (right to left)"
	.size	.L.str.30, 21

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"Snap to grid"
	.size	.L.str.31, 13

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"changed"
	.size	.L.str.32, 8

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"_Horizontal style:"
	.size	.L.str.33, 19

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"Left edge"
	.size	.L.str.34, 10

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"Center"
	.size	.L.str.35, 7

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"Right edge"
	.size	.L.str.36, 11

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"Ho_rizontal base:"
	.size	.L.str.37, 18

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"Fill (top to bottom)"
	.size	.L.str.38, 21

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"Fill (bottom to top)"
	.size	.L.str.39, 21

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"_Vertical style:"
	.size	.L.str.40, 17

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"Top edge"
	.size	.L.str.41, 9

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"Bottom edge"
	.size	.L.str.42, 12

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"Ver_tical base:"
	.size	.L.str.43, 16

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"_Grid size:"
	.size	.L.str.44, 12

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"value-changed"
	.size	.L.str.45, 14

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"_Ignore the bottom layer even if visible"
	.size	.L.str.46, 41

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"toggled"
	.size	.L.str.47, 8

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"_Use the (invisible) bottom layer as the base"
	.size	.L.str.48, 46


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
