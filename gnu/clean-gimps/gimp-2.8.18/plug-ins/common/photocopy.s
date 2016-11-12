	.text
	.file	"photocopy.bc"
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
	movabsq	$.L.str.15, %rdi
	movabsq	$.L.str.16, %rsi
	movabsq	$.L.str.17, %rcx
	movabsq	$.L.str.18, %r8
	movabsq	$.L.str.19, %r9
	movabsq	$.L.str.20, %rax
	movabsq	$.L.str.21, %rdx
	movl	$1, %r10d
	movl	$7, %r11d
	xorl	%ebx, %ebx
	movabsq	$query.args, %r14
	xorl	%r15d, %r15d
	movl	%r15d, %r12d
	movabsq	$.L.str.14, %r13
	movq	%r13, -48(%rbp)
	movq	-48(%rbp), %r13
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movq	%r13, %rdx
	movq	%rax, (%rsp)
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$7, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%r14, 40(%rsp)
	movq	$0, 48(%rsp)
	movq	%r12, -64(%rbp)         # 8-byte Spill
	movl	%r11d, -68(%rbp)        # 4-byte Spill
	movl	%r10d, -72(%rbp)        # 4-byte Spill
	movl	%ebx, -76(%rbp)         # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.15, %rdi
	movabsq	$.L.str.22, %rsi
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
	movl	$48, %esi
	movl	%esi, %edi
	movq	%rax, -56(%rbp)
	callq	gimp_tile_cache_ntiles
	movabsq	$run.values, %rax
	movq	-32(%rbp), %rcx
	movl	$1, (%rcx)
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	$21, run.values
	movl	-60(%rbp), %esi
	movl	%esi, run.values+8
# BB#1:                                 # %do.body
	callq	gimp_locale_directory
	movabsq	$.L.str.23, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.23, %rdi
	movabsq	$.L.str.24, %rsi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.23, %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	textdomain
	movq	%rax, -88(%rbp)         # 8-byte Spill
# BB#2:                                 # %do.end
	movl	-44(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	je	.LBB1_3
	jmp	.LBB1_21
.LBB1_21:                               # %do.end
	movl	-92(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
	je	.LBB1_6
	jmp	.LBB1_22
.LBB1_22:                               # %do.end
	movl	-92(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	je	.LBB1_7
	jmp	.LBB1_8
.LBB1_3:                                # %sw.bb
	movabsq	$.L.str.15, %rdi
	movabsq	$pvals, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movq	-56(%rbp), %rdi
	movl	%eax, -104(%rbp)        # 4-byte Spill
	callq	photocopy_dialog
	cmpl	$0, %eax
	jne	.LBB1_5
# BB#4:                                 # %if.then
	jmp	.LBB1_20
.LBB1_5:                                # %if.end
	jmp	.LBB1_9
.LBB1_6:                                # %sw.bb.9
	movq	-24(%rbp), %rax
	movsd	128(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, pvals
	movq	-24(%rbp), %rax
	movsd	168(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, pvals+8
	movq	-24(%rbp), %rax
	movsd	208(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, pvals+24
	movq	-24(%rbp), %rax
	movsd	248(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, pvals+32
	jmp	.LBB1_9
.LBB1_7:                                # %sw.bb.21
	movabsq	$.L.str.15, %rdi
	movabsq	$pvals, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movl	%eax, -108(%rbp)        # 4-byte Spill
	jmp	.LBB1_9
.LBB1_8:                                # %sw.default
	jmp	.LBB1_9
.LBB1_9:                                # %sw.epilog
	cmpl	$3, -60(%rbp)
	jne	.LBB1_19
# BB#10:                                # %if.then.23
	movq	-56(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_is_rgb
	cmpl	$0, %eax
	jne	.LBB1_12
# BB#11:                                # %lor.lhs.false
	movq	-56(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_is_gray
	cmpl	$0, %eax
	je	.LBB1_17
.LBB1_12:                               # %if.then.29
	movabsq	$.L.str.25, %rdi
	callq	gimp_progress_init
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	-56(%rbp), %rdi
	movl	%eax, -112(%rbp)        # 4-byte Spill
	callq	photocopy
	cmpl	$1, -44(%rbp)
	je	.LBB1_14
# BB#13:                                # %if.then.32
	callq	gimp_displays_flush
	movl	%eax, -116(%rbp)        # 4-byte Spill
.LBB1_14:                               # %if.end.34
	cmpl	$0, -44(%rbp)
	jne	.LBB1_16
# BB#15:                                # %if.then.36
	movabsq	$.L.str.15, %rdi
	movabsq	$pvals, %rax
	movl	$40, %edx
	movq	%rax, %rsi
	callq	gimp_procedural_db_set_data
	movl	%eax, -120(%rbp)        # 4-byte Spill
.LBB1_16:                               # %if.end.38
	jmp	.LBB1_18
.LBB1_17:                               # %if.else
	movabsq	$.L.str.26, %rdi
	movl	$0, -60(%rbp)
	movq	-32(%rbp), %rax
	movl	$2, (%rax)
	movl	$4, run.values+40
	callq	gettext
	movq	%rax, run.values+48
.LBB1_18:                               # %if.end.40
	jmp	.LBB1_19
.LBB1_19:                               # %if.end.41
	movl	-60(%rbp), %eax
	movl	%eax, run.values+8
	movq	-56(%rbp), %rdi
	callq	gimp_drawable_detach
.LBB1_20:                               # %return
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
	.quad	4613937818241073152     # double 3
.LCPI3_4:
	.quad	4632233691727265792     # double 50
.LCPI3_5:
	.quad	4617315517961601024     # double 5
	.text
	.align	16, 0x90
	.type	photocopy_dialog,@function
photocopy_dialog:                       # @photocopy_dialog
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
	pushq	%rbx
	subq	$504, %rsp              # imm = 0x1F8
.Ltmp17:
	.cfi_offset %rbx, -40
.Ltmp18:
	.cfi_offset %r14, -32
.Ltmp19:
	.cfi_offset %r15, -24
	movabsq	$.L.str.27, %rax
	xorl	%esi, %esi
	movq	%rdi, -32(%rbp)
	movq	%rax, %rdi
	callq	gimp_ui_init
	movabsq	$.L.str.25, %rdi
	callq	gettext
	movabsq	$.L.str.28, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	movabsq	$gimp_standard_help_func, %r8
	movabsq	$.L.str.15, %r9
	movabsq	$.L.str.29, %rdi
	movl	$4294967290, %r10d      # imm = 0xFFFFFFFA
	movabsq	$.L.str.30, %r11
	movl	$4294967291, %ebx       # imm = 0xFFFFFFFB
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$-6, 8(%rsp)
	movq	%r11, 16(%rsp)
	movl	$-5, 24(%rsp)
	movq	$0, 32(%rsp)
	movb	$0, %al
	movl	%ebx, -92(%rbp)         # 4-byte Spill
	movl	%r10d, -96(%rbp)        # 4-byte Spill
	callq	gimp_dialog_new
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	movq	-40(%rbp), %rdi
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_window_set_transient
	movl	$1, %edi
	movl	$12, %esi
	callq	gtk_box_new
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-40(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area
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
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	-32(%rbp), %rdi
	callq	gimp_drawable_preview_new
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.31, %rsi
	movabsq	$photocopy, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movl	$2, %r9d
	movq	-56(%rbp), %rdi
	movq	-32(%rbp), %r11
	movq	%rax, %rdx
	movq	%r11, %rcx
	callq	g_signal_connect_data
	movl	$4, %edi
	movl	$3, %esi
	xorl	%edx, %edx
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_table_new
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-64(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-48(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -180(%rbp)        # 4-byte Spill
	movl	-180(%rbp), %ecx        # 4-byte Reload
	movl	-180(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	movq	-64(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.32, %rdi
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	$100, %r8d
	movl	$5, %r9d
	movsd	.LCPI3_3, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI3_4, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI3_0, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI3_5, %xmm4         # xmm4 = mem[0],zero
	movl	$2, %edx
	movl	$1, %r10d
	xorps	%xmm0, %xmm0
	xorl	%ebx, %ebx
	movl	%ebx, %esi
	movsd	pvals, %xmm5            # xmm5 = mem[0],zero
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rsi, -208(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movl	%edx, -212(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movq	%rax, %rcx
	movsd	%xmm0, -224(%rbp)       # 8-byte Spill
	movaps	%xmm5, %xmm0
	movl	$2, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-224(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-224(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r10d, -228(%rbp)       # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.33, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	movabsq	$pvals, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rdi, -240(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-240(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.33, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-72(%rbp), %rdx
	movq	-56(%rbp), %rdi
	movq	%rdi, -248(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-248(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-64(%rbp), %rcx
	movq	%rax, -264(%rbp)        # 8-byte Spill
	movq	%rcx, -272(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.34, %rdi
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$1, %edx
	movl	$50, %r8d
	movl	$5, %r9d
	xorps	%xmm0, %xmm0
	movsd	.LCPI3_0, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI3_1, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI3_2, %xmm4         # xmm4 = mem[0],zero
	movl	$3, %r10d
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movsd	pvals+8, %xmm1          # xmm1 = mem[0],zero
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rcx, -288(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movsd	%xmm0, -296(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-296(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	$3, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-296(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-296(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r10d, -300(%rbp)       # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.33, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	movabsq	$pvals, %rdi
	addq	$8, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rdi, -312(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-312(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.33, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-72(%rbp), %rdx
	movq	-56(%rbp), %rdi
	movq	%rdi, -320(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-320(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-64(%rbp), %rcx
	movq	%rax, -336(%rbp)        # 8-byte Spill
	movq	%rcx, -344(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.35, %rdi
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$2, %edx
	movl	$50, %r8d
	movl	$5, %r9d
	xorps	%xmm0, %xmm0
	movsd	.LCPI3_0, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI3_1, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI3_2, %xmm4         # xmm4 = mem[0],zero
	movl	$3, %r10d
	movl	$1, %ebx
	xorl	%r14d, %r14d
	movl	%r14d, %ecx
	movsd	pvals+24, %xmm1         # xmm1 = mem[0],zero
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rcx, -360(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movsd	%xmm0, -368(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-368(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	$3, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-368(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-368(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%ebx, -372(%rbp)        # 4-byte Spill
	movl	%r10d, -376(%rbp)       # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.33, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	movabsq	$pvals, %rdi
	addq	$24, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rdi, -384(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-384(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.33, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-72(%rbp), %rdx
	movq	-56(%rbp), %rdi
	movq	%rdi, -392(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-392(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-64(%rbp), %rcx
	movq	%rax, -408(%rbp)        # 8-byte Spill
	movq	%rcx, -416(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.36, %rdi
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$3, %edx
	movl	$50, %r8d
	movl	$5, %r9d
	xorps	%xmm0, %xmm0
	movsd	.LCPI3_0, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI3_1, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI3_2, %xmm4         # xmm4 = mem[0],zero
	movl	$1, %r10d
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movsd	pvals+32, %xmm1         # xmm1 = mem[0],zero
	movq	-424(%rbp), %rdi        # 8-byte Reload
	movq	%rcx, -432(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movsd	%xmm0, -440(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-440(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	$3, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-440(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-440(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r10d, -444(%rbp)       # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.33, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	movabsq	$pvals, %rdi
	addq	$32, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rdi, -456(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-456(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.33, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-72(%rbp), %rdx
	movq	-56(%rbp), %rdi
	movq	%rdi, -464(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-464(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -472(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-40(%rbp), %rdi
	movq	%rax, -480(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
	movq	-40(%rbp), %rax
	movq	%rax, -488(%rbp)        # 8-byte Spill
	callq	gimp_dialog_get_type
	movq	-488(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dialog_run
	cmpl	$-5, %eax
	sete	%r15b
	andb	$1, %r15b
	movzbl	%r15b, %eax
	movl	%eax, -76(%rbp)
	movq	-40(%rbp), %rdi
	callq	gtk_widget_destroy
	movl	-76(%rbp), %eax
	addq	$504, %rsp              # imm = 0x1F8
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	photocopy_dialog, .Lfunc_end3-photocopy_dialog
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4607182418800017408     # double 1
.LCPI4_1:
	.quad	4621819117588971520     # double 10
.LCPI4_2:
	.quad	4611686018427387904     # double 2
.LCPI4_3:
	.quad	4571171282956062736     # double 0.0039215686274509803
.LCPI4_5:
	.quad	4643176031446892544     # double 255
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI4_4:
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.text
	.align	16, 0x90
	.type	photocopy,@function
photocopy:                              # @photocopy
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp20:
	.cfi_def_cfa_offset 16
.Ltmp21:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp22:
	.cfi_def_cfa_register %rbp
	subq	$1408, %rsp             # imm = 0x580
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB4_2
# BB#1:                                 # %if.then
	leaq	-836(%rbp), %rsi
	leaq	-840(%rbp), %rdx
	movq	-16(%rbp), %rdi
	callq	gimp_preview_get_position
	leaq	-124(%rbp), %rsi
	leaq	-128(%rbp), %rdx
	movq	-16(%rbp), %rdi
	callq	gimp_preview_get_size
	jmp	.LBB4_3
.LBB4_2:                                # %if.else
	leaq	-836(%rbp), %rsi
	leaq	-840(%rbp), %rdx
	leaq	-996(%rbp), %rcx
	leaq	-1000(%rbp), %r8
	movq	-8(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_mask_bounds
	movl	-996(%rbp), %edi
	subl	-836(%rbp), %edi
	movl	%edi, -124(%rbp)
	movl	-1000(%rbp), %edi
	subl	-840(%rbp), %edi
	movl	%edi, -128(%rbp)
	movl	%eax, -1140(%rbp)       # 4-byte Spill
.LBB4_3:                                # %if.end
	movq	-8(%rbp), %rax
	movl	12(%rax), %ecx
	movl	%ecx, -132(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_has_alpha
	movl	%eax, -136(%rbp)
	movl	-124(%rbp), %eax
	cmpl	-128(%rbp), %eax
	jle	.LBB4_5
# BB#4:                                 # %cond.true
	movl	-124(%rbp), %eax
	movl	%eax, -1144(%rbp)       # 4-byte Spill
	jmp	.LBB4_6
.LBB4_5:                                # %cond.false
	movl	-128(%rbp), %eax
	movl	%eax, -1144(%rbp)       # 4-byte Spill
.LBB4_6:                                # %cond.end
	movl	-1144(%rbp), %eax       # 4-byte Reload
	movl	$8, %ecx
	movl	%ecx, %esi
	movslq	%eax, %rdi
	callq	g_malloc_n
	movq	%rax, -776(%rbp)
	movl	-124(%rbp), %ecx
	cmpl	-128(%rbp), %ecx
	jle	.LBB4_8
# BB#7:                                 # %cond.true.7
	movl	-124(%rbp), %eax
	movl	%eax, -1148(%rbp)       # 4-byte Spill
	jmp	.LBB4_9
.LBB4_8:                                # %cond.false.8
	movl	-128(%rbp), %eax
	movl	%eax, -1148(%rbp)       # 4-byte Spill
.LBB4_9:                                # %cond.end.9
	movl	-1148(%rbp), %eax       # 4-byte Reload
	movl	$8, %ecx
	movl	%ecx, %esi
	movslq	%eax, %rdi
	callq	g_malloc_n
	movq	%rax, -808(%rbp)
	movl	-124(%rbp), %ecx
	cmpl	-128(%rbp), %ecx
	jle	.LBB4_11
# BB#10:                                # %cond.true.15
	movl	-124(%rbp), %eax
	movl	%eax, -1152(%rbp)       # 4-byte Spill
	jmp	.LBB4_12
.LBB4_11:                               # %cond.false.16
	movl	-128(%rbp), %eax
	movl	%eax, -1152(%rbp)       # 4-byte Spill
.LBB4_12:                               # %cond.end.17
	movl	-1152(%rbp), %eax       # 4-byte Reload
	movl	$8, %ecx
	movl	%ecx, %esi
	movslq	%eax, %rdi
	callq	g_malloc_n
	movq	%rax, -784(%rbp)
	movl	-124(%rbp), %ecx
	cmpl	-128(%rbp), %ecx
	jle	.LBB4_14
# BB#13:                                # %cond.true.23
	movl	-124(%rbp), %eax
	movl	%eax, -1156(%rbp)       # 4-byte Spill
	jmp	.LBB4_15
.LBB4_14:                               # %cond.false.24
	movl	-128(%rbp), %eax
	movl	%eax, -1156(%rbp)       # 4-byte Spill
.LBB4_15:                               # %cond.end.25
	movl	-1156(%rbp), %eax       # 4-byte Reload
	movl	$8, %ecx
	movl	%ecx, %esi
	movslq	%eax, %rdi
	callq	g_malloc_n
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	%rax, -816(%rbp)
	movl	-124(%rbp), %ecx
	imull	-128(%rbp), %ecx
	movslq	%ecx, %rdi
	callq	g_malloc0_n
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	%rax, -144(%rbp)
	movl	-124(%rbp), %ecx
	imull	-128(%rbp), %ecx
	movslq	%ecx, %rdi
	callq	g_malloc0_n
	leaq	-64(%rbp), %rdi
	xorl	%ecx, %ecx
	movq	%rax, -152(%rbp)
	movl	$0, -864(%rbp)
	movl	-124(%rbp), %edx
	imull	-128(%rbp), %edx
	imull	$3, %edx, %edx
	movl	%edx, -868(%rbp)
	movq	-8(%rbp), %rsi
	movl	-836(%rbp), %edx
	movl	-840(%rbp), %r8d
	movl	-124(%rbp), %r9d
	movl	-128(%rbp), %r10d
	movl	%ecx, -1160(%rbp)       # 4-byte Spill
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	movl	$1, %edi
	leaq	-64(%rbp), %rsi
	movb	$0, %al
	callq	gimp_pixel_rgns_register
	movq	%rax, -120(%rbp)
.LBB4_16:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_18 Depth 2
                                        #       Child Loop BB4_20 Depth 3
	cmpq	$0, -120(%rbp)
	je	.LBB4_38
# BB#17:                                # %for.body
                                        #   in Loop: Header=BB4_16 Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, -1008(%rbp)
	movq	-144(%rbp), %rax
	movl	-36(%rbp), %ecx
	subl	-840(%rbp), %ecx
	imull	-124(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movl	-40(%rbp), %ecx
	subl	-836(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -1016(%rbp)
	movl	$0, -852(%rbp)
.LBB4_18:                               # %for.cond.44
                                        #   Parent Loop BB4_16 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_20 Depth 3
	movl	-852(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB4_34
# BB#19:                                # %for.body.47
                                        #   in Loop: Header=BB4_18 Depth=2
	movl	$0, -856(%rbp)
.LBB4_20:                               # %for.cond.48
                                        #   Parent Loop BB4_16 Depth=1
                                        #     Parent Loop BB4_18 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-856(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jge	.LBB4_32
# BB#21:                                # %for.body.51
                                        #   in Loop: Header=BB4_20 Depth=3
	cmpl	$2, -132(%rbp)
	jle	.LBB4_23
# BB#22:                                # %if.then.54
                                        #   in Loop: Header=BB4_20 Depth=3
	movl	-856(%rbp), %eax
	imull	-132(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rcx
	movq	-1008(%rbp), %rdx
	movzbl	(%rdx,%rcx), %edi
	movl	-856(%rbp), %eax
	imull	-132(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-1008(%rbp), %rdx
	movzbl	(%rdx,%rcx), %esi
	movl	-856(%rbp), %eax
	imull	-132(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	-1008(%rbp), %rdx
	movzbl	(%rdx,%rcx), %edx
	callq	gimp_rgb_to_l_int
	movb	%al, %r8b
	movslq	-856(%rbp), %rcx
	movq	-1016(%rbp), %r9
	movb	%r8b, (%r9,%rcx)
	jmp	.LBB4_24
.LBB4_23:                               # %if.else.71
                                        #   in Loop: Header=BB4_20 Depth=3
	movl	-856(%rbp), %eax
	imull	-132(%rbp), %eax
	movslq	%eax, %rcx
	movq	-1008(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movslq	-856(%rbp), %rcx
	movq	-1016(%rbp), %rdx
	movb	%sil, (%rdx,%rcx)
.LBB4_24:                               # %if.end.77
                                        #   in Loop: Header=BB4_20 Depth=3
	movsd	.LCPI4_0, %xmm1         # xmm1 = mem[0],zero
	movslq	-856(%rbp), %rax
	movq	-1016(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cvtsi2sdl	%edx, %xmm0
	callq	pow
	movsd	.LCPI4_5, %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm0, -960(%rbp)
	movsd	-960(%rbp), %xmm0       # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB4_26
# BB#25:                                # %cond.true.84
                                        #   in Loop: Header=BB4_20 Depth=3
	movsd	.LCPI4_5, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -1168(%rbp)      # 8-byte Spill
	jmp	.LBB4_30
.LBB4_26:                               # %cond.false.85
                                        #   in Loop: Header=BB4_20 Depth=3
	xorps	%xmm0, %xmm0
	ucomisd	-960(%rbp), %xmm0
	jbe	.LBB4_28
# BB#27:                                # %cond.true.88
                                        #   in Loop: Header=BB4_20 Depth=3
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -1176(%rbp)      # 8-byte Spill
	jmp	.LBB4_29
.LBB4_28:                               # %cond.false.89
                                        #   in Loop: Header=BB4_20 Depth=3
	movsd	-960(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -1176(%rbp)      # 8-byte Spill
.LBB4_29:                               # %cond.end.90
                                        #   in Loop: Header=BB4_20 Depth=3
	movsd	-1176(%rbp), %xmm0      # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -1168(%rbp)      # 8-byte Spill
.LBB4_30:                               # %cond.end.92
                                        #   in Loop: Header=BB4_20 Depth=3
	movsd	-1168(%rbp), %xmm0      # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movslq	-856(%rbp), %rdx
	movq	-1016(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
# BB#31:                                # %for.inc
                                        #   in Loop: Header=BB4_20 Depth=3
	movl	-856(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -856(%rbp)
	jmp	.LBB4_20
.LBB4_32:                               # %for.end
                                        #   in Loop: Header=BB4_18 Depth=2
	movl	-44(%rbp), %eax
	movq	-1008(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -1008(%rbp)
	movl	-124(%rbp), %eax
	movq	-1016(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -1016(%rbp)
# BB#33:                                # %for.inc.101
                                        #   in Loop: Header=BB4_18 Depth=2
	movl	-852(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -852(%rbp)
	jmp	.LBB4_18
.LBB4_34:                               # %for.end.103
                                        #   in Loop: Header=BB4_16 Depth=1
	cmpq	$0, -16(%rbp)
	jne	.LBB4_36
# BB#35:                                # %if.then.105
                                        #   in Loop: Header=BB4_16 Depth=1
	movl	-32(%rbp), %eax
	imull	-28(%rbp), %eax
	addl	-864(%rbp), %eax
	movl	%eax, -864(%rbp)
	cvtsi2sdl	-864(%rbp), %xmm0
	cvtsi2sdl	-868(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -1180(%rbp)       # 4-byte Spill
.LBB4_36:                               # %if.end.113
                                        #   in Loop: Header=BB4_16 Depth=1
	jmp	.LBB4_37
.LBB4_37:                               # %for.inc.114
                                        #   in Loop: Header=BB4_16 Depth=1
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_pixel_rgns_process
	movq	%rax, -120(%rbp)
	jmp	.LBB4_16
.LBB4_38:                               # %for.end.116
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI4_1, %xmm1         # xmm1 = mem[0],zero
	movaps	%xmm0, %xmm2
	subsd	pvals+8, %xmm2
	mulsd	%xmm2, %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB4_40
# BB#39:                                # %cond.true.121
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -1192(%rbp)      # 8-byte Spill
	jmp	.LBB4_41
.LBB4_40:                               # %cond.false.122
	movsd	.LCPI4_1, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI4_0, %xmm1         # xmm1 = mem[0],zero
	subsd	pvals+8, %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -1192(%rbp)      # 8-byte Spill
.LBB4_41:                               # %cond.end.125
	movsd	-1192(%rbp), %xmm0      # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI4_3, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI4_0, %xmm2         # xmm2 = mem[0],zero
	movsd	%xmm0, -952(%rbp)
	movsd	-952(%rbp), %xmm0       # xmm0 = mem[0],zero
	movapd	.LCPI4_4(%rip), %xmm3   # xmm3 = [9223372036854775807,9223372036854775807]
	andpd	%xmm3, %xmm0
	addsd	%xmm2, %xmm0
	movsd	%xmm0, -952(%rbp)
	movsd	-952(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-952(%rbp), %xmm0
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movsd	%xmm0, -1200(%rbp)      # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	log
	movsd	.LCPI4_3, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI4_0, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI4_2, %xmm3         # xmm3 = mem[0],zero
	mulsd	%xmm0, %xmm3
	movsd	-1200(%rbp), %xmm0      # 8-byte Reload
                                        # xmm0 = mem[0],zero
	divsd	%xmm3, %xmm0
	movsd	%xmm2, -1208(%rbp)      # 8-byte Spill
	movsd	%xmm1, -1216(%rbp)      # 8-byte Spill
	callq	sqrt
	movsd	%xmm0, -968(%rbp)
	movsd	pvals, %xmm0            # xmm0 = mem[0],zero
	movapd	.LCPI4_4(%rip), %xmm1   # xmm1 = [9223372036854775807,9223372036854775807]
	andpd	%xmm1, %xmm0
	movsd	-1208(%rbp), %xmm1      # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -952(%rbp)
	movsd	-952(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-952(%rbp), %xmm0
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movsd	-1216(%rbp), %xmm2      # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	%xmm0, -1224(%rbp)      # 8-byte Spill
	movaps	%xmm2, %xmm0
	callq	log
	leaq	-672(%rbp), %r9
	leaq	-624(%rbp), %r8
	leaq	-480(%rbp), %rcx
	leaq	-432(%rbp), %rdx
	leaq	-288(%rbp), %rsi
	leaq	-240(%rbp), %rdi
	movsd	.LCPI4_2, %xmm1         # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-1224(%rbp), %xmm0      # 8-byte Reload
                                        # xmm0 = mem[0],zero
	divsd	%xmm1, %xmm0
	movq	%rdi, -1232(%rbp)       # 8-byte Spill
	movq	%r9, -1240(%rbp)        # 8-byte Spill
	movq	%r8, -1248(%rbp)        # 8-byte Spill
	movq	%rcx, -1256(%rbp)       # 8-byte Spill
	movq	%rdx, -1264(%rbp)       # 8-byte Spill
	movq	%rsi, -1272(%rbp)       # 8-byte Spill
	callq	sqrt
	movsd	%xmm0, -976(%rbp)
	movsd	-968(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-1232(%rbp), %rdi       # 8-byte Reload
	movq	-1272(%rbp), %rsi       # 8-byte Reload
	movq	-1264(%rbp), %rdx       # 8-byte Reload
	movq	-1256(%rbp), %rcx       # 8-byte Reload
	movq	-1248(%rbp), %r8        # 8-byte Reload
	movq	-1240(%rbp), %r9        # 8-byte Reload
	callq	find_constants
	leaq	-768(%rbp), %r9
	leaq	-720(%rbp), %r8
	leaq	-576(%rbp), %rcx
	leaq	-528(%rbp), %rdx
	leaq	-384(%rbp), %rsi
	leaq	-336(%rbp), %rdi
	movsd	-976(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	find_constants
	movl	$0, -856(%rbp)
.LBB4_42:                               # %for.cond.154
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_44 Depth 2
                                        #       Child Loop BB4_49 Depth 3
                                        #       Child Loop BB4_53 Depth 3
	movl	-856(%rbp), %eax
	cmpl	-124(%rbp), %eax
	jge	.LBB4_64
# BB#43:                                # %for.body.157
                                        #   in Loop: Header=BB4_42 Depth=1
	xorl	%eax, %eax
	movq	-776(%rbp), %rcx
	movslq	-128(%rbp), %rdx
	shlq	$3, %rdx
	movq	%rcx, %rdi
	movl	%eax, %esi
	movl	%eax, -1276(%rbp)       # 4-byte Spill
	callq	memset
	movq	-808(%rbp), %rcx
	movslq	-128(%rbp), %rdx
	shlq	$3, %rdx
	movq	%rcx, %rdi
	movl	-1276(%rbp), %esi       # 4-byte Reload
	callq	memset
	movq	-784(%rbp), %rcx
	movslq	-128(%rbp), %rdx
	shlq	$3, %rdx
	movq	%rcx, %rdi
	movl	-1276(%rbp), %esi       # 4-byte Reload
	callq	memset
	movq	-816(%rbp), %rcx
	movslq	-128(%rbp), %rdx
	shlq	$3, %rdx
	movq	%rcx, %rdi
	movl	-1276(%rbp), %esi       # 4-byte Reload
	callq	memset
	movq	-144(%rbp), %rcx
	movslq	-856(%rbp), %rdx
	addq	%rdx, %rcx
	movq	%rcx, -160(%rbp)
	movq	-160(%rbp), %rcx
	movq	%rcx, -168(%rbp)
	movq	-160(%rbp), %rcx
	movl	-128(%rbp), %eax
	subl	$1, %eax
	imull	-124(%rbp), %eax
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -176(%rbp)
	movq	-776(%rbp), %rcx
	movq	%rcx, -792(%rbp)
	movq	-808(%rbp), %rcx
	movq	%rcx, -824(%rbp)
	movq	-784(%rbp), %rcx
	movl	-128(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rdx
	shlq	$3, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -800(%rbp)
	movq	-816(%rbp), %rcx
	movl	-128(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rdx
	shlq	$3, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -832(%rbp)
	movq	-168(%rbp), %rcx
	movzbl	(%rcx), %eax
	movl	%eax, -896(%rbp)
	movq	-176(%rbp), %rcx
	movzbl	(%rcx), %eax
	movl	%eax, -928(%rbp)
	movl	$0, -852(%rbp)
.LBB4_44:                               # %for.cond.184
                                        #   Parent Loop BB4_42 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_49 Depth 3
                                        #       Child Loop BB4_53 Depth 3
	movl	-852(%rbp), %eax
	cmpl	-128(%rbp), %eax
	jge	.LBB4_58
# BB#45:                                # %for.body.187
                                        #   in Loop: Header=BB4_44 Depth=2
	cmpl	$4, -852(%rbp)
	jge	.LBB4_47
# BB#46:                                # %cond.true.190
                                        #   in Loop: Header=BB4_44 Depth=2
	movl	-852(%rbp), %eax
	movl	%eax, -1280(%rbp)       # 4-byte Spill
	jmp	.LBB4_48
.LBB4_47:                               # %cond.false.191
                                        #   in Loop: Header=BB4_44 Depth=2
	movl	$4, %eax
	movl	%eax, -1280(%rbp)       # 4-byte Spill
	jmp	.LBB4_48
.LBB4_48:                               # %cond.end.192
                                        #   in Loop: Header=BB4_44 Depth=2
	movl	-1280(%rbp), %eax       # 4-byte Reload
	movl	%eax, -860(%rbp)
	movq	-792(%rbp), %rcx
	movq	%rcx, -1024(%rbp)
	movq	-800(%rbp), %rcx
	movq	%rcx, -1032(%rbp)
	movq	-824(%rbp), %rcx
	movq	%rcx, -1040(%rbp)
	movq	-832(%rbp), %rcx
	movq	%rcx, -1048(%rbp)
	movl	$0, -844(%rbp)
.LBB4_49:                               # %for.cond.194
                                        #   Parent Loop BB4_42 Depth=1
                                        #     Parent Loop BB4_44 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-844(%rbp), %eax
	cmpl	-860(%rbp), %eax
	jg	.LBB4_52
# BB#50:                                # %for.body.197
                                        #   in Loop: Header=BB4_49 Depth=3
	xorl	%eax, %eax
	movslq	-844(%rbp), %rcx
	movsd	-240(%rbp,%rcx,8), %xmm0 # xmm0 = mem[0],zero
	movl	%eax, %edx
	subl	-844(%rbp), %edx
	imull	-124(%rbp), %edx
	movslq	%edx, %rcx
	movq	-168(%rbp), %rsi
	movzbl	(%rsi,%rcx), %edx
	cvtsi2sdl	%edx, %xmm1
	mulsd	%xmm1, %xmm0
	movslq	-844(%rbp), %rcx
	movsd	-432(%rbp,%rcx,8), %xmm1 # xmm1 = mem[0],zero
	movl	%eax, %edx
	subl	-844(%rbp), %edx
	movslq	%edx, %rcx
	movq	-792(%rbp), %rsi
	mulsd	(%rsi,%rcx,8), %xmm1
	subsd	%xmm1, %xmm0
	movq	-1024(%rbp), %rcx
	addsd	(%rcx), %xmm0
	movsd	%xmm0, (%rcx)
	movslq	-844(%rbp), %rcx
	movsd	-288(%rbp,%rcx,8), %xmm0 # xmm0 = mem[0],zero
	movl	-844(%rbp), %edx
	imull	-124(%rbp), %edx
	movslq	%edx, %rcx
	movq	-176(%rbp), %rsi
	movzbl	(%rsi,%rcx), %edx
	cvtsi2sdl	%edx, %xmm1
	mulsd	%xmm1, %xmm0
	movslq	-844(%rbp), %rcx
	movsd	-480(%rbp,%rcx,8), %xmm1 # xmm1 = mem[0],zero
	movslq	-844(%rbp), %rcx
	movq	-800(%rbp), %rsi
	mulsd	(%rsi,%rcx,8), %xmm1
	subsd	%xmm1, %xmm0
	movq	-1032(%rbp), %rcx
	addsd	(%rcx), %xmm0
	movsd	%xmm0, (%rcx)
	movslq	-844(%rbp), %rcx
	movsd	-336(%rbp,%rcx,8), %xmm0 # xmm0 = mem[0],zero
	movl	%eax, %edx
	subl	-844(%rbp), %edx
	imull	-124(%rbp), %edx
	movslq	%edx, %rcx
	movq	-168(%rbp), %rsi
	movzbl	(%rsi,%rcx), %edx
	cvtsi2sdl	%edx, %xmm1
	mulsd	%xmm1, %xmm0
	movslq	-844(%rbp), %rcx
	movsd	-528(%rbp,%rcx,8), %xmm1 # xmm1 = mem[0],zero
	subl	-844(%rbp), %eax
	movslq	%eax, %rcx
	movq	-824(%rbp), %rsi
	mulsd	(%rsi,%rcx,8), %xmm1
	subsd	%xmm1, %xmm0
	movq	-1040(%rbp), %rcx
	addsd	(%rcx), %xmm0
	movsd	%xmm0, (%rcx)
	movslq	-844(%rbp), %rcx
	movsd	-384(%rbp,%rcx,8), %xmm0 # xmm0 = mem[0],zero
	movl	-844(%rbp), %eax
	imull	-124(%rbp), %eax
	movslq	%eax, %rcx
	movq	-176(%rbp), %rsi
	movzbl	(%rsi,%rcx), %eax
	cvtsi2sdl	%eax, %xmm1
	mulsd	%xmm1, %xmm0
	movslq	-844(%rbp), %rcx
	movsd	-576(%rbp,%rcx,8), %xmm1 # xmm1 = mem[0],zero
	movslq	-844(%rbp), %rcx
	movq	-832(%rbp), %rsi
	mulsd	(%rsi,%rcx,8), %xmm1
	subsd	%xmm1, %xmm0
	movq	-1048(%rbp), %rcx
	addsd	(%rcx), %xmm0
	movsd	%xmm0, (%rcx)
# BB#51:                                # %for.inc.262
                                        #   in Loop: Header=BB4_49 Depth=3
	movl	-844(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -844(%rbp)
	jmp	.LBB4_49
.LBB4_52:                               # %for.end.264
                                        #   in Loop: Header=BB4_44 Depth=2
	movl	-844(%rbp), %eax
	movl	%eax, -848(%rbp)
.LBB4_53:                               # %for.cond.265
                                        #   Parent Loop BB4_42 Depth=1
                                        #     Parent Loop BB4_44 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$4, -848(%rbp)
	jg	.LBB4_56
# BB#54:                                # %for.body.268
                                        #   in Loop: Header=BB4_53 Depth=3
	movslq	-848(%rbp), %rax
	movsd	-240(%rbp,%rax,8), %xmm0 # xmm0 = mem[0],zero
	movslq	-848(%rbp), %rax
	subsd	-624(%rbp,%rax,8), %xmm0
	cvtsi2sdl	-896(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movq	-1024(%rbp), %rax
	addsd	(%rax), %xmm0
	movsd	%xmm0, (%rax)
	movslq	-848(%rbp), %rax
	movsd	-288(%rbp,%rax,8), %xmm0 # xmm0 = mem[0],zero
	movslq	-848(%rbp), %rax
	subsd	-672(%rbp,%rax,8), %xmm0
	cvtsi2sdl	-928(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movq	-1032(%rbp), %rax
	addsd	(%rax), %xmm0
	movsd	%xmm0, (%rax)
	movslq	-848(%rbp), %rax
	movsd	-336(%rbp,%rax,8), %xmm0 # xmm0 = mem[0],zero
	movslq	-848(%rbp), %rax
	subsd	-720(%rbp,%rax,8), %xmm0
	cvtsi2sdl	-896(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movq	-1040(%rbp), %rax
	addsd	(%rax), %xmm0
	movsd	%xmm0, (%rax)
	movslq	-848(%rbp), %rax
	movsd	-384(%rbp,%rax,8), %xmm0 # xmm0 = mem[0],zero
	movslq	-848(%rbp), %rax
	subsd	-768(%rbp,%rax,8), %xmm0
	cvtsi2sdl	-928(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movq	-1048(%rbp), %rax
	addsd	(%rax), %xmm0
	movsd	%xmm0, (%rax)
# BB#55:                                # %for.inc.305
                                        #   in Loop: Header=BB4_53 Depth=3
	movl	-848(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -848(%rbp)
	jmp	.LBB4_53
.LBB4_56:                               # %for.end.307
                                        #   in Loop: Header=BB4_44 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movl	-124(%rbp), %eax
	movq	-168(%rbp), %rdx
	movslq	%eax, %rsi
	addq	%rsi, %rdx
	movq	%rdx, -168(%rbp)
	movl	-124(%rbp), %eax
	movq	-176(%rbp), %rdx
	movslq	%eax, %rsi
	subq	%rsi, %rcx
	addq	%rcx, %rdx
	movq	%rdx, -176(%rbp)
	movq	-792(%rbp), %rcx
	addq	$8, %rcx
	movq	%rcx, -792(%rbp)
	movq	-824(%rbp), %rcx
	addq	$8, %rcx
	movq	%rcx, -824(%rbp)
	movq	-800(%rbp), %rcx
	addq	$-8, %rcx
	movq	%rcx, -800(%rbp)
	movq	-832(%rbp), %rcx
	addq	$-8, %rcx
	movq	%rcx, -832(%rbp)
# BB#57:                                # %for.inc.316
                                        #   in Loop: Header=BB4_44 Depth=2
	movl	-852(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -852(%rbp)
	jmp	.LBB4_44
.LBB4_58:                               # %for.end.318
                                        #   in Loop: Header=BB4_42 Depth=1
	movq	-776(%rbp), %rdi
	movq	-784(%rbp), %rsi
	movq	-144(%rbp), %rax
	movslq	-856(%rbp), %rcx
	addq	%rcx, %rax
	movl	-124(%rbp), %ecx
	movl	-128(%rbp), %r8d
	movq	%rax, %rdx
	callq	transfer_pixels
	movq	-808(%rbp), %rdi
	movq	-816(%rbp), %rsi
	movq	-152(%rbp), %rax
	movslq	-856(%rbp), %rdx
	addq	%rdx, %rax
	movl	-124(%rbp), %ecx
	movl	-128(%rbp), %r8d
	movq	%rax, %rdx
	callq	transfer_pixels
	cmpq	$0, -16(%rbp)
	jne	.LBB4_62
# BB#59:                                # %if.then.324
                                        #   in Loop: Header=BB4_42 Depth=1
	movl	$5, %eax
	movl	-128(%rbp), %ecx
	addl	-864(%rbp), %ecx
	movl	%ecx, -864(%rbp)
	movl	-856(%rbp), %ecx
	movl	%eax, -1284(%rbp)       # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-1284(%rbp), %ecx       # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB4_61
# BB#60:                                # %if.then.328
                                        #   in Loop: Header=BB4_42 Depth=1
	cvtsi2sdl	-864(%rbp), %xmm0
	cvtsi2sdl	-868(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -1288(%rbp)       # 4-byte Spill
.LBB4_61:                               # %if.end.333
                                        #   in Loop: Header=BB4_42 Depth=1
	jmp	.LBB4_62
.LBB4_62:                               # %if.end.334
                                        #   in Loop: Header=BB4_42 Depth=1
	jmp	.LBB4_63
.LBB4_63:                               # %for.inc.335
                                        #   in Loop: Header=BB4_42 Depth=1
	movl	-856(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -856(%rbp)
	jmp	.LBB4_42
.LBB4_64:                               # %for.end.337
	movl	$0, -852(%rbp)
.LBB4_65:                               # %for.cond.338
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_67 Depth 2
                                        #       Child Loop BB4_72 Depth 3
                                        #       Child Loop BB4_76 Depth 3
	movl	-852(%rbp), %eax
	cmpl	-128(%rbp), %eax
	jge	.LBB4_87
# BB#66:                                # %for.body.341
                                        #   in Loop: Header=BB4_65 Depth=1
	xorl	%eax, %eax
	movq	-776(%rbp), %rcx
	movslq	-124(%rbp), %rdx
	shlq	$3, %rdx
	movq	%rcx, %rdi
	movl	%eax, %esi
	movl	%eax, -1292(%rbp)       # 4-byte Spill
	callq	memset
	movq	-808(%rbp), %rcx
	movslq	-124(%rbp), %rdx
	shlq	$3, %rdx
	movq	%rcx, %rdi
	movl	-1292(%rbp), %esi       # 4-byte Reload
	callq	memset
	movq	-784(%rbp), %rcx
	movslq	-124(%rbp), %rdx
	shlq	$3, %rdx
	movq	%rcx, %rdi
	movl	-1292(%rbp), %esi       # 4-byte Reload
	callq	memset
	movq	-816(%rbp), %rcx
	movslq	-124(%rbp), %rdx
	shlq	$3, %rdx
	movq	%rcx, %rdi
	movl	-1292(%rbp), %esi       # 4-byte Reload
	callq	memset
	movq	-144(%rbp), %rcx
	movl	-852(%rbp), %eax
	imull	-124(%rbp), %eax
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -160(%rbp)
	movq	-152(%rbp), %rcx
	movl	-852(%rbp), %eax
	imull	-124(%rbp), %eax
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -184(%rbp)
	movq	-160(%rbp), %rcx
	movq	%rcx, -168(%rbp)
	movq	-184(%rbp), %rcx
	movq	%rcx, -192(%rbp)
	movq	-160(%rbp), %rcx
	movslq	-124(%rbp), %rdx
	addq	%rdx, %rcx
	addq	$-1, %rcx
	movq	%rcx, -176(%rbp)
	movq	-184(%rbp), %rcx
	movslq	-124(%rbp), %rdx
	addq	%rdx, %rcx
	addq	$-1, %rcx
	movq	%rcx, -200(%rbp)
	movq	-776(%rbp), %rcx
	movq	%rcx, -792(%rbp)
	movq	-808(%rbp), %rcx
	movq	%rcx, -824(%rbp)
	movq	-784(%rbp), %rcx
	movslq	-124(%rbp), %rdx
	shlq	$3, %rdx
	addq	%rdx, %rcx
	addq	$-8, %rcx
	movq	%rcx, -800(%rbp)
	movq	-816(%rbp), %rcx
	movslq	-124(%rbp), %rdx
	shlq	$3, %rdx
	addq	%rdx, %rcx
	addq	$-8, %rcx
	movq	%rcx, -832(%rbp)
	movq	-168(%rbp), %rcx
	movzbl	(%rcx), %eax
	movl	%eax, -896(%rbp)
	movq	-192(%rbp), %rcx
	movzbl	(%rcx), %eax
	movl	%eax, -912(%rbp)
	movq	-176(%rbp), %rcx
	movzbl	(%rcx), %eax
	movl	%eax, -928(%rbp)
	movq	-200(%rbp), %rcx
	movzbl	(%rcx), %eax
	movl	%eax, -944(%rbp)
	movl	$0, -856(%rbp)
.LBB4_67:                               # %for.cond.380
                                        #   Parent Loop BB4_65 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_72 Depth 3
                                        #       Child Loop BB4_76 Depth 3
	movl	-856(%rbp), %eax
	cmpl	-124(%rbp), %eax
	jge	.LBB4_81
# BB#68:                                # %for.body.383
                                        #   in Loop: Header=BB4_67 Depth=2
	cmpl	$4, -856(%rbp)
	jge	.LBB4_70
# BB#69:                                # %cond.true.390
                                        #   in Loop: Header=BB4_67 Depth=2
	movl	-856(%rbp), %eax
	movl	%eax, -1296(%rbp)       # 4-byte Spill
	jmp	.LBB4_71
.LBB4_70:                               # %cond.false.391
                                        #   in Loop: Header=BB4_67 Depth=2
	movl	$4, %eax
	movl	%eax, -1296(%rbp)       # 4-byte Spill
	jmp	.LBB4_71
.LBB4_71:                               # %cond.end.392
                                        #   in Loop: Header=BB4_67 Depth=2
	movl	-1296(%rbp), %eax       # 4-byte Reload
	movl	%eax, -860(%rbp)
	movq	-792(%rbp), %rcx
	movq	%rcx, -1056(%rbp)
	movq	-800(%rbp), %rcx
	movq	%rcx, -1064(%rbp)
	movq	-824(%rbp), %rcx
	movq	%rcx, -1072(%rbp)
	movq	-832(%rbp), %rcx
	movq	%rcx, -1080(%rbp)
	movl	$0, -844(%rbp)
.LBB4_72:                               # %for.cond.394
                                        #   Parent Loop BB4_65 Depth=1
                                        #     Parent Loop BB4_67 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-844(%rbp), %eax
	cmpl	-860(%rbp), %eax
	jg	.LBB4_75
# BB#73:                                # %for.body.397
                                        #   in Loop: Header=BB4_72 Depth=3
	xorl	%eax, %eax
	movslq	-844(%rbp), %rcx
	movsd	-240(%rbp,%rcx,8), %xmm0 # xmm0 = mem[0],zero
	movl	%eax, %edx
	subl	-844(%rbp), %edx
	movslq	%edx, %rcx
	movq	-168(%rbp), %rsi
	movzbl	(%rsi,%rcx), %edx
	cvtsi2sdl	%edx, %xmm1
	mulsd	%xmm1, %xmm0
	movslq	-844(%rbp), %rcx
	movsd	-432(%rbp,%rcx,8), %xmm1 # xmm1 = mem[0],zero
	movl	%eax, %edx
	subl	-844(%rbp), %edx
	movslq	%edx, %rcx
	movq	-792(%rbp), %rsi
	mulsd	(%rsi,%rcx,8), %xmm1
	subsd	%xmm1, %xmm0
	movq	-1056(%rbp), %rcx
	addsd	(%rcx), %xmm0
	movsd	%xmm0, (%rcx)
	movslq	-844(%rbp), %rcx
	movsd	-288(%rbp,%rcx,8), %xmm0 # xmm0 = mem[0],zero
	movslq	-844(%rbp), %rcx
	movq	-176(%rbp), %rsi
	movzbl	(%rsi,%rcx), %edx
	cvtsi2sdl	%edx, %xmm1
	mulsd	%xmm1, %xmm0
	movslq	-844(%rbp), %rcx
	movsd	-480(%rbp,%rcx,8), %xmm1 # xmm1 = mem[0],zero
	movslq	-844(%rbp), %rcx
	movq	-800(%rbp), %rsi
	mulsd	(%rsi,%rcx,8), %xmm1
	subsd	%xmm1, %xmm0
	movq	-1064(%rbp), %rcx
	addsd	(%rcx), %xmm0
	movsd	%xmm0, (%rcx)
	movslq	-844(%rbp), %rcx
	movsd	-336(%rbp,%rcx,8), %xmm0 # xmm0 = mem[0],zero
	movl	%eax, %edx
	subl	-844(%rbp), %edx
	movslq	%edx, %rcx
	movq	-192(%rbp), %rsi
	movzbl	(%rsi,%rcx), %edx
	cvtsi2sdl	%edx, %xmm1
	mulsd	%xmm1, %xmm0
	movslq	-844(%rbp), %rcx
	movsd	-528(%rbp,%rcx,8), %xmm1 # xmm1 = mem[0],zero
	subl	-844(%rbp), %eax
	movslq	%eax, %rcx
	movq	-824(%rbp), %rsi
	mulsd	(%rsi,%rcx,8), %xmm1
	subsd	%xmm1, %xmm0
	movq	-1072(%rbp), %rcx
	addsd	(%rcx), %xmm0
	movsd	%xmm0, (%rcx)
	movslq	-844(%rbp), %rcx
	movsd	-384(%rbp,%rcx,8), %xmm0 # xmm0 = mem[0],zero
	movslq	-844(%rbp), %rcx
	movq	-200(%rbp), %rsi
	movzbl	(%rsi,%rcx), %eax
	cvtsi2sdl	%eax, %xmm1
	mulsd	%xmm1, %xmm0
	movslq	-844(%rbp), %rcx
	movsd	-576(%rbp,%rcx,8), %xmm1 # xmm1 = mem[0],zero
	movslq	-844(%rbp), %rcx
	movq	-832(%rbp), %rsi
	mulsd	(%rsi,%rcx,8), %xmm1
	subsd	%xmm1, %xmm0
	movq	-1080(%rbp), %rcx
	addsd	(%rcx), %xmm0
	movsd	%xmm0, (%rcx)
# BB#74:                                # %for.inc.458
                                        #   in Loop: Header=BB4_72 Depth=3
	movl	-844(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -844(%rbp)
	jmp	.LBB4_72
.LBB4_75:                               # %for.end.460
                                        #   in Loop: Header=BB4_67 Depth=2
	movl	-844(%rbp), %eax
	movl	%eax, -848(%rbp)
.LBB4_76:                               # %for.cond.461
                                        #   Parent Loop BB4_65 Depth=1
                                        #     Parent Loop BB4_67 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$4, -848(%rbp)
	jg	.LBB4_79
# BB#77:                                # %for.body.464
                                        #   in Loop: Header=BB4_76 Depth=3
	movslq	-848(%rbp), %rax
	movsd	-240(%rbp,%rax,8), %xmm0 # xmm0 = mem[0],zero
	movslq	-848(%rbp), %rax
	subsd	-624(%rbp,%rax,8), %xmm0
	cvtsi2sdl	-896(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movq	-1056(%rbp), %rax
	addsd	(%rax), %xmm0
	movsd	%xmm0, (%rax)
	movslq	-848(%rbp), %rax
	movsd	-288(%rbp,%rax,8), %xmm0 # xmm0 = mem[0],zero
	movslq	-848(%rbp), %rax
	subsd	-672(%rbp,%rax,8), %xmm0
	cvtsi2sdl	-928(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movq	-1064(%rbp), %rax
	addsd	(%rax), %xmm0
	movsd	%xmm0, (%rax)
	movslq	-848(%rbp), %rax
	movsd	-336(%rbp,%rax,8), %xmm0 # xmm0 = mem[0],zero
	movslq	-848(%rbp), %rax
	subsd	-720(%rbp,%rax,8), %xmm0
	cvtsi2sdl	-912(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movq	-1072(%rbp), %rax
	addsd	(%rax), %xmm0
	movsd	%xmm0, (%rax)
	movslq	-848(%rbp), %rax
	movsd	-384(%rbp,%rax,8), %xmm0 # xmm0 = mem[0],zero
	movslq	-848(%rbp), %rax
	subsd	-768(%rbp,%rax,8), %xmm0
	cvtsi2sdl	-944(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movq	-1080(%rbp), %rax
	addsd	(%rax), %xmm0
	movsd	%xmm0, (%rax)
# BB#78:                                # %for.inc.501
                                        #   in Loop: Header=BB4_76 Depth=3
	movl	-848(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -848(%rbp)
	jmp	.LBB4_76
.LBB4_79:                               # %for.end.503
                                        #   in Loop: Header=BB4_67 Depth=2
	movq	-168(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -168(%rbp)
	movq	-192(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -192(%rbp)
	movq	-176(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -176(%rbp)
	movq	-200(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -200(%rbp)
	movq	-792(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -792(%rbp)
	movq	-824(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -824(%rbp)
	movq	-800(%rbp), %rax
	addq	$-8, %rax
	movq	%rax, -800(%rbp)
	movq	-832(%rbp), %rax
	addq	$-8, %rax
	movq	%rax, -832(%rbp)
# BB#80:                                # %for.inc.511
                                        #   in Loop: Header=BB4_67 Depth=2
	movl	-856(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -856(%rbp)
	jmp	.LBB4_67
.LBB4_81:                               # %for.end.513
                                        #   in Loop: Header=BB4_65 Depth=1
	movl	$1, %ecx
	movq	-776(%rbp), %rdi
	movq	-784(%rbp), %rsi
	movq	-144(%rbp), %rax
	movl	-852(%rbp), %edx
	imull	-124(%rbp), %edx
	movslq	%edx, %r8
	addq	%r8, %rax
	movl	-124(%rbp), %r8d
	movq	%rax, %rdx
	callq	transfer_pixels
	movl	$1, %ecx
	movq	-808(%rbp), %rdi
	movq	-816(%rbp), %rsi
	movq	-152(%rbp), %rax
	movl	-852(%rbp), %r8d
	imull	-124(%rbp), %r8d
	movslq	%r8d, %rdx
	addq	%rdx, %rax
	movl	-124(%rbp), %r8d
	movq	%rax, %rdx
	callq	transfer_pixels
	cmpq	$0, -16(%rbp)
	jne	.LBB4_85
# BB#82:                                # %if.then.521
                                        #   in Loop: Header=BB4_65 Depth=1
	movl	$5, %eax
	movl	-124(%rbp), %ecx
	addl	-864(%rbp), %ecx
	movl	%ecx, -864(%rbp)
	movl	-852(%rbp), %ecx
	movl	%eax, -1300(%rbp)       # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-1300(%rbp), %ecx       # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB4_84
# BB#83:                                # %if.then.526
                                        #   in Loop: Header=BB4_65 Depth=1
	cvtsi2sdl	-864(%rbp), %xmm0
	cvtsi2sdl	-868(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -1304(%rbp)       # 4-byte Spill
.LBB4_84:                               # %if.end.531
                                        #   in Loop: Header=BB4_65 Depth=1
	jmp	.LBB4_85
.LBB4_85:                               # %if.end.532
                                        #   in Loop: Header=BB4_65 Depth=1
	jmp	.LBB4_86
.LBB4_86:                               # %for.inc.533
                                        #   in Loop: Header=BB4_65 Depth=1
	movl	-852(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -852(%rbp)
	jmp	.LBB4_65
.LBB4_87:                               # %for.end.535
	movl	$1, %ecx
	movq	-144(%rbp), %rdi
	movq	-152(%rbp), %rsi
	movl	-124(%rbp), %eax
	imull	-128(%rbp), %eax
	movsd	pvals+24, %xmm0         # xmm0 = mem[0],zero
	movl	%eax, %edx
	callq	compute_ramp
	xorl	%ecx, %ecx
	movsd	.LCPI4_0, %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm0, -984(%rbp)
	movq	-144(%rbp), %rdi
	movq	-152(%rbp), %rsi
	movl	-124(%rbp), %eax
	imull	-128(%rbp), %eax
	subsd	pvals+32, %xmm1
	movl	%eax, %edx
	movaps	%xmm1, %xmm0
	callq	compute_ramp
	leaq	-64(%rbp), %rdi
	xorl	%eax, %eax
	movsd	%xmm0, -992(%rbp)
	movq	-8(%rbp), %rsi
	movl	-836(%rbp), %edx
	movl	-840(%rbp), %ecx
	movl	-124(%rbp), %r8d
	movl	-128(%rbp), %r9d
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	movl	%eax, -1308(%rbp)       # 4-byte Spill
	callq	gimp_pixel_rgn_init
	leaq	-112(%rbp), %rdi
	movl	$1, %eax
	movq	-8(%rbp), %rsi
	movl	-836(%rbp), %edx
	movl	-840(%rbp), %ecx
	movl	-124(%rbp), %r8d
	movl	-128(%rbp), %r9d
	cmpq	$0, -16(%rbp)
	sete	%r10b
	andb	$1, %r10b
	movzbl	%r10b, %r11d
	movl	%r11d, (%rsp)
	movl	$1, 8(%rsp)
	movl	%eax, -1312(%rbp)       # 4-byte Spill
	callq	gimp_pixel_rgn_init
	movl	$2, %edi
	leaq	-64(%rbp), %rsi
	leaq	-112(%rbp), %rdx
	movb	$0, %al
	callq	gimp_pixel_rgns_register
	movq	%rax, -120(%rbp)
.LBB4_88:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_90 Depth 2
                                        #       Child Loop BB4_92 Depth 3
	cmpq	$0, -120(%rbp)
	je	.LBB4_138
# BB#89:                                # %while.body
                                        #   in Loop: Header=BB4_88 Depth=1
	xorps	%xmm0, %xmm0
	movq	-64(%rbp), %rax
	movq	%rax, -1088(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -1096(%rbp)
	movq	-144(%rbp), %rax
	movl	-36(%rbp), %ecx
	subl	-840(%rbp), %ecx
	imull	-124(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movl	-40(%rbp), %ecx
	subl	-836(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -1104(%rbp)
	movq	-152(%rbp), %rax
	movl	-36(%rbp), %ecx
	subl	-840(%rbp), %ecx
	imull	-124(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movl	-40(%rbp), %ecx
	subl	-836(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -1112(%rbp)
	movsd	%xmm0, -1136(%rbp)
	movl	$0, -852(%rbp)
.LBB4_90:                               # %for.cond.567
                                        #   Parent Loop BB4_88 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_92 Depth 3
	movl	-852(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB4_134
# BB#91:                                # %for.body.571
                                        #   in Loop: Header=BB4_90 Depth=2
	movl	$0, -856(%rbp)
.LBB4_92:                               # %for.cond.572
                                        #   Parent Loop BB4_88 Depth=1
                                        #     Parent Loop BB4_90 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-856(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jge	.LBB4_132
# BB#93:                                # %for.body.576
                                        #   in Loop: Header=BB4_92 Depth=3
	movslq	-856(%rbp), %rax
	movq	-1112(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cmpl	$2, %edx
	jle	.LBB4_122
# BB#94:                                # %if.then.582
                                        #   in Loop: Header=BB4_92 Depth=3
	movslq	-856(%rbp), %rax
	movq	-1104(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cvtsi2sdl	%edx, %xmm0
	movq	-1112(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cvtsi2sdl	%edx, %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -1120(%rbp)
	movsd	-1120(%rbp), %xmm0      # xmm0 = mem[0],zero
	movsd	pvals+16, %xmm1         # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB4_108
# BB#95:                                # %if.then.592
                                        #   in Loop: Header=BB4_92 Depth=3
	xorps	%xmm0, %xmm0
	movsd	-984(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB4_97
	jp	.LBB4_97
# BB#96:                                # %if.then.595
                                        #   in Loop: Header=BB4_92 Depth=3
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -1128(%rbp)
	jmp	.LBB4_101
.LBB4_97:                               # %if.else.596
                                        #   in Loop: Header=BB4_92 Depth=3
	movsd	-984(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-984(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	pvals+16, %xmm2         # xmm2 = mem[0],zero
	subsd	-1120(%rbp), %xmm2
	ucomisd	%xmm1, %xmm2
	movsd	%xmm0, -1320(%rbp)      # 8-byte Spill
	jbe	.LBB4_99
# BB#98:                                # %cond.true.600
                                        #   in Loop: Header=BB4_92 Depth=3
	movsd	-984(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -1328(%rbp)      # 8-byte Spill
	jmp	.LBB4_100
.LBB4_99:                               # %cond.false.601
                                        #   in Loop: Header=BB4_92 Depth=3
	movsd	pvals+16, %xmm0         # xmm0 = mem[0],zero
	subsd	-1120(%rbp), %xmm0
	movsd	%xmm0, -1328(%rbp)      # 8-byte Spill
.LBB4_100:                              # %cond.end.603
                                        #   in Loop: Header=BB4_92 Depth=3
	movsd	-1328(%rbp), %xmm0      # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-1320(%rbp), %xmm1      # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	divsd	-984(%rbp), %xmm1
	movsd	%xmm1, -1128(%rbp)
.LBB4_101:                              # %if.end.607
                                        #   in Loop: Header=BB4_92 Depth=3
	movsd	.LCPI4_5, %xmm0         # xmm0 = mem[0],zero
	movslq	-856(%rbp), %rax
	movq	-1104(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cvtsi2sdl	%edx, %xmm1
	mulsd	-1128(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB4_103
# BB#102:                               # %cond.true.615
                                        #   in Loop: Header=BB4_92 Depth=3
	movsd	.LCPI4_5, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -1336(%rbp)      # 8-byte Spill
	jmp	.LBB4_107
.LBB4_103:                              # %cond.false.616
                                        #   in Loop: Header=BB4_92 Depth=3
	xorps	%xmm0, %xmm0
	movslq	-856(%rbp), %rax
	movq	-1104(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cvtsi2sdl	%edx, %xmm1
	mulsd	-1128(%rbp), %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB4_105
# BB#104:                               # %cond.true.624
                                        #   in Loop: Header=BB4_92 Depth=3
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -1344(%rbp)      # 8-byte Spill
	jmp	.LBB4_106
.LBB4_105:                              # %cond.false.625
                                        #   in Loop: Header=BB4_92 Depth=3
	movslq	-856(%rbp), %rax
	movq	-1104(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cvtsi2sdl	%edx, %xmm0
	mulsd	-1128(%rbp), %xmm0
	movsd	%xmm0, -1344(%rbp)      # 8-byte Spill
.LBB4_106:                              # %cond.end.631
                                        #   in Loop: Header=BB4_92 Depth=3
	movsd	-1344(%rbp), %xmm0      # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -1336(%rbp)      # 8-byte Spill
.LBB4_107:                              # %cond.end.633
                                        #   in Loop: Header=BB4_92 Depth=3
	movsd	-1336(%rbp), %xmm0      # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -1136(%rbp)
	jmp	.LBB4_121
.LBB4_108:                              # %if.else.635
                                        #   in Loop: Header=BB4_92 Depth=3
	xorps	%xmm0, %xmm0
	movsd	-992(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB4_110
	jp	.LBB4_110
# BB#109:                               # %if.then.638
                                        #   in Loop: Header=BB4_92 Depth=3
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -1128(%rbp)
	jmp	.LBB4_114
.LBB4_110:                              # %if.else.639
                                        #   in Loop: Header=BB4_92 Depth=3
	movsd	-992(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-1120(%rbp), %xmm1      # xmm1 = mem[0],zero
	subsd	pvals+16, %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB4_112
# BB#111:                               # %cond.true.643
                                        #   in Loop: Header=BB4_92 Depth=3
	movsd	-992(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -1352(%rbp)      # 8-byte Spill
	jmp	.LBB4_113
.LBB4_112:                              # %cond.false.644
                                        #   in Loop: Header=BB4_92 Depth=3
	movsd	-1120(%rbp), %xmm0      # xmm0 = mem[0],zero
	subsd	pvals+16, %xmm0
	movsd	%xmm0, -1352(%rbp)      # 8-byte Spill
.LBB4_113:                              # %cond.end.646
                                        #   in Loop: Header=BB4_92 Depth=3
	movsd	-1352(%rbp), %xmm0      # 8-byte Reload
                                        # xmm0 = mem[0],zero
	divsd	-992(%rbp), %xmm0
	movsd	%xmm0, -1128(%rbp)
.LBB4_114:                              # %if.end.649
                                        #   in Loop: Header=BB4_92 Depth=3
	movsd	.LCPI4_5, %xmm0         # xmm0 = mem[0],zero
	movl	$255, %eax
	movsd	.LCPI4_0, %xmm1         # xmm1 = mem[0],zero
	subsd	-1128(%rbp), %xmm1
	movslq	-856(%rbp), %rcx
	movq	-1104(%rbp), %rdx
	movzbl	(%rdx,%rcx), %esi
	subl	%esi, %eax
	cvtsi2sdl	%eax, %xmm2
	mulsd	%xmm2, %xmm1
	movaps	%xmm0, %xmm2
	subsd	%xmm1, %xmm2
	movsd	%xmm2, -1136(%rbp)
	movsd	-1136(%rbp), %xmm1      # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB4_116
# BB#115:                               # %cond.true.660
                                        #   in Loop: Header=BB4_92 Depth=3
	movsd	.LCPI4_5, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -1360(%rbp)      # 8-byte Spill
	jmp	.LBB4_120
.LBB4_116:                              # %cond.false.661
                                        #   in Loop: Header=BB4_92 Depth=3
	xorps	%xmm0, %xmm0
	ucomisd	-1136(%rbp), %xmm0
	jbe	.LBB4_118
# BB#117:                               # %cond.true.664
                                        #   in Loop: Header=BB4_92 Depth=3
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -1368(%rbp)      # 8-byte Spill
	jmp	.LBB4_119
.LBB4_118:                              # %cond.false.665
                                        #   in Loop: Header=BB4_92 Depth=3
	movsd	-1136(%rbp), %xmm0      # xmm0 = mem[0],zero
	movsd	%xmm0, -1368(%rbp)      # 8-byte Spill
.LBB4_119:                              # %cond.end.666
                                        #   in Loop: Header=BB4_92 Depth=3
	movsd	-1368(%rbp), %xmm0      # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -1360(%rbp)      # 8-byte Spill
.LBB4_120:                              # %cond.end.668
                                        #   in Loop: Header=BB4_92 Depth=3
	movsd	-1360(%rbp), %xmm0      # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -1136(%rbp)
.LBB4_121:                              # %if.end.670
                                        #   in Loop: Header=BB4_92 Depth=3
	jmp	.LBB4_123
.LBB4_122:                              # %if.else.671
                                        #   in Loop: Header=BB4_92 Depth=3
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -1136(%rbp)
.LBB4_123:                              # %if.end.672
                                        #   in Loop: Header=BB4_92 Depth=3
	cmpl	$3, -132(%rbp)
	jge	.LBB4_127
# BB#124:                               # %if.then.675
                                        #   in Loop: Header=BB4_92 Depth=3
	cvttsd2si	-1136(%rbp), %eax
	movb	%al, %cl
	movl	-856(%rbp), %eax
	imull	-132(%rbp), %eax
	movslq	%eax, %rdx
	movq	-1096(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
	cmpl	$0, -136(%rbp)
	je	.LBB4_126
# BB#125:                               # %if.then.681
                                        #   in Loop: Header=BB4_92 Depth=3
	movl	-856(%rbp), %eax
	imull	-48(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-1088(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movl	-856(%rbp), %eax
	imull	-132(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-1096(%rbp), %rdx
	movb	%sil, (%rdx,%rcx)
.LBB4_126:                              # %if.end.691
                                        #   in Loop: Header=BB4_92 Depth=3
	jmp	.LBB4_130
.LBB4_127:                              # %if.else.692
                                        #   in Loop: Header=BB4_92 Depth=3
	cvttsd2si	-1136(%rbp), %eax
	movb	%al, %cl
	movl	-856(%rbp), %eax
	movl	-132(%rbp), %edx
	imull	%edx, %eax
	movslq	%eax, %rsi
	movq	-1096(%rbp), %rdi
	movb	%cl, (%rdi,%rsi)
	cvttsd2si	-1136(%rbp), %eax
	movb	%al, %cl
	movl	-856(%rbp), %eax
	movl	-132(%rbp), %edx
	imull	%edx, %eax
	incl	%eax
	movslq	%eax, %rsi
	movq	-1096(%rbp), %rdi
	movb	%cl, (%rdi,%rsi)
	cvttsd2si	-1136(%rbp), %eax
	movb	%al, %cl
	movl	-856(%rbp), %eax
	imull	-132(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rsi
	movq	-1096(%rbp), %rdi
	movb	%cl, (%rdi,%rsi)
	cmpl	$0, -136(%rbp)
	je	.LBB4_129
# BB#128:                               # %if.then.709
                                        #   in Loop: Header=BB4_92 Depth=3
	movl	-856(%rbp), %eax
	imull	-48(%rbp), %eax
	addl	$3, %eax
	movslq	%eax, %rcx
	movq	-1088(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movl	-856(%rbp), %eax
	imull	-132(%rbp), %eax
	addl	$3, %eax
	movslq	%eax, %rcx
	movq	-1096(%rbp), %rdx
	movb	%sil, (%rdx,%rcx)
.LBB4_129:                              # %if.end.719
                                        #   in Loop: Header=BB4_92 Depth=3
	jmp	.LBB4_130
.LBB4_130:                              # %if.end.720
                                        #   in Loop: Header=BB4_92 Depth=3
	jmp	.LBB4_131
.LBB4_131:                              # %for.inc.721
                                        #   in Loop: Header=BB4_92 Depth=3
	movl	-856(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -856(%rbp)
	jmp	.LBB4_92
.LBB4_132:                              # %for.end.723
                                        #   in Loop: Header=BB4_90 Depth=2
	movl	-44(%rbp), %eax
	movq	-1088(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -1088(%rbp)
	movl	-92(%rbp), %eax
	movq	-1096(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -1096(%rbp)
	movl	-124(%rbp), %eax
	movq	-1104(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -1104(%rbp)
	movl	-124(%rbp), %eax
	movq	-1112(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -1112(%rbp)
# BB#133:                               # %for.inc.734
                                        #   in Loop: Header=BB4_90 Depth=2
	movl	-852(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -852(%rbp)
	jmp	.LBB4_90
.LBB4_134:                              # %for.end.736
                                        #   in Loop: Header=BB4_88 Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB4_136
# BB#135:                               # %if.then.738
                                        #   in Loop: Header=BB4_88 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, -1376(%rbp)       # 8-byte Spill
	callq	gimp_drawable_preview_get_type
	movq	-1376(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-112(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_drawable_preview_draw_region
	jmp	.LBB4_137
.LBB4_136:                              # %if.else.741
                                        #   in Loop: Header=BB4_88 Depth=1
	movl	-32(%rbp), %eax
	imull	-28(%rbp), %eax
	addl	-864(%rbp), %eax
	movl	%eax, -864(%rbp)
	cvtsi2sdl	-864(%rbp), %xmm0
	cvtsi2sdl	-868(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -1380(%rbp)       # 4-byte Spill
.LBB4_137:                              # %if.end.750
                                        #   in Loop: Header=BB4_88 Depth=1
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_pixel_rgns_process
	movq	%rax, -120(%rbp)
	jmp	.LBB4_88
.LBB4_138:                              # %while.end
	cmpq	$0, -16(%rbp)
	jne	.LBB4_140
# BB#139:                               # %if.then.753
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	callq	gimp_progress_update
	movq	-8(%rbp), %rdi
	movl	%eax, -1384(%rbp)       # 4-byte Spill
	callq	gimp_drawable_flush
	movl	$1, %esi
	movq	-8(%rbp), %rdi
	movl	(%rdi), %edi
	callq	gimp_drawable_merge_shadow
	movq	-8(%rbp), %rcx
	movl	(%rcx), %edi
	movl	-836(%rbp), %esi
	movl	-840(%rbp), %edx
	movl	-124(%rbp), %ecx
	movl	-128(%rbp), %r8d
	movl	%eax, -1388(%rbp)       # 4-byte Spill
	callq	gimp_drawable_update
	movl	%eax, -1392(%rbp)       # 4-byte Spill
.LBB4_140:                              # %if.end.759
	movq	-776(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-808(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-784(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-816(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-144(%rbp), %rdi
	callq	g_free
	movq	-152(%rbp), %rdi
	callq	g_free
	addq	$1408, %rsp             # imm = 0x580
	popq	%rbp
	retq
.Lfunc_end4:
	.size	photocopy, .Lfunc_end4-photocopy
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_0:
	.quad	4611686018427387904     # double 2
.LCPI5_1:
	.quad	-4611686018427387904    # double -2
.LCPI5_2:
	.quad	4616189618054758400     # double 4
.LCPI5_3:
	.quad	-4625020276204106469    # double -0.25979999999999998
.LCPI5_4:
	.quad	-4619069219656499095    # double -0.68030000000000002
.LCPI5_5:
	.quad	4615592891104131809     # double 3.7349999999999999
.LCPI5_6:
	.quad	4610246217626517556     # double 1.6802999999999999
.LCPI5_7:
	.quad	4611672507628505793     # double 1.9970000000000001
.LCPI5_8:
	.quad	4603865968034421775     # double 0.63180000000000003
.LCPI5_9:
	.quad	-4612933515524169531    # double -1.7230000000000001
.LCPI5_10:
	.quad	-4612663299546527302    # double -1.7829999999999999
.LCPI5_11:
	.quad	4618760256179416344     # double 6.2831853071795862
.LCPI5_12:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	find_constants,@function
find_constants:                         # @find_constants
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp23:
	.cfi_def_cfa_offset 16
.Ltmp24:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp25:
	.cfi_def_cfa_register %rbp
	subq	$656, %rsp              # imm = 0x290
	movsd	.LCPI5_3, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI5_4, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI5_5, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI5_6, %xmm4         # xmm4 = mem[0],zero
	movsd	.LCPI5_7, %xmm5         # xmm5 = mem[0],zero
	movsd	.LCPI5_8, %xmm6         # xmm6 = mem[0],zero
	movsd	.LCPI5_9, %xmm7         # xmm7 = mem[0],zero
	movsd	.LCPI5_10, %xmm8        # xmm8 = mem[0],zero
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movsd	%xmm0, -56(%rbp)
	movsd	.LCPI5_11(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	%xmm3, -184(%rbp)       # 8-byte Spill
	movsd	%xmm4, -192(%rbp)       # 8-byte Spill
	movsd	%xmm5, -200(%rbp)       # 8-byte Spill
	movsd	%xmm6, -208(%rbp)       # 8-byte Spill
	movsd	%xmm7, -216(%rbp)       # 8-byte Spill
	movsd	%xmm8, -224(%rbp)       # 8-byte Spill
	movsd	%xmm2, -232(%rbp)       # 8-byte Spill
	movsd	%xmm1, -240(%rbp)       # 8-byte Spill
	callq	sqrt
	mulsd	-56(%rbp), %xmm0
	movsd	%xmm0, -136(%rbp)
	movsd	-224(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	divsd	-56(%rbp), %xmm0
	movsd	%xmm0, -128(%rbp)
	movsd	-216(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	divsd	-56(%rbp), %xmm0
	movsd	%xmm0, -120(%rbp)
	movsd	-208(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	divsd	-56(%rbp), %xmm0
	movsd	%xmm0, -112(%rbp)
	movsd	-200(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	divsd	-56(%rbp), %xmm0
	movsd	%xmm0, -104(%rbp)
	movsd	-192(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	divsd	-136(%rbp), %xmm0
	movsd	%xmm0, -96(%rbp)
	movsd	-184(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	divsd	-136(%rbp), %xmm0
	movsd	%xmm0, -88(%rbp)
	movsd	-232(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	divsd	-136(%rbp), %xmm0
	movsd	%xmm0, -80(%rbp)
	movsd	-240(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	divsd	-136(%rbp), %xmm0
	movsd	%xmm0, -72(%rbp)
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	addsd	-80(%rbp), %xmm0
	movq	-8(%rbp), %rcx
	movsd	%xmm0, (%rcx)
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	exp
	movsd	.LCPI5_0, %xmm1         # xmm1 = mem[0],zero
	movsd	-72(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-104(%rbp), %xmm3       # xmm3 = mem[0],zero
	movsd	%xmm0, -248(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm0
	movsd	%xmm2, -256(%rbp)       # 8-byte Spill
	movsd	%xmm1, -264(%rbp)       # 8-byte Spill
	callq	sin
	movsd	-256(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-264(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	mulsd	-96(%rbp), %xmm2
	addsd	%xmm2, %xmm0
	movsd	-104(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	%xmm0, -272(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	%xmm1, -280(%rbp)       # 8-byte Spill
	callq	cos
	movsd	-272(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-280(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	subsd	%xmm1, %xmm0
	movsd	-248(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-128(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm1, -288(%rbp)       # 8-byte Spill
	callq	exp
	movsd	.LCPI5_0, %xmm1         # xmm1 = mem[0],zero
	movsd	-88(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-112(%rbp), %xmm3       # xmm3 = mem[0],zero
	movsd	%xmm0, -296(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm0
	movsd	%xmm2, -304(%rbp)       # 8-byte Spill
	movsd	%xmm1, -312(%rbp)       # 8-byte Spill
	callq	sin
	movsd	-304(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-312(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	-80(%rbp), %xmm0
	addsd	-96(%rbp), %xmm0
	movsd	-112(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	%xmm0, -320(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	%xmm1, -328(%rbp)       # 8-byte Spill
	callq	cos
	movsd	-320(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-328(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	subsd	%xmm1, %xmm0
	movsd	-296(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-288(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	%xmm1, %xmm0
	movq	-8(%rbp), %rcx
	movsd	%xmm0, 8(%rcx)
	movsd	-128(%rbp), %xmm0       # xmm0 = mem[0],zero
	addsd	-120(%rbp), %xmm0
	callq	exp
	movsd	.LCPI5_0, %xmm1         # xmm1 = mem[0],zero
	movaps	%xmm1, %xmm2
	mulsd	%xmm0, %xmm2
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	addsd	-80(%rbp), %xmm0
	movsd	-104(%rbp), %xmm3       # xmm3 = mem[0],zero
	movsd	%xmm0, -336(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm0
	movsd	%xmm2, -344(%rbp)       # 8-byte Spill
	movsd	%xmm1, -352(%rbp)       # 8-byte Spill
	callq	cos
	movsd	-336(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm1, -360(%rbp)       # 8-byte Spill
	callq	cos
	movsd	-360(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-104(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	%xmm0, -368(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	%xmm1, -376(%rbp)       # 8-byte Spill
	callq	cos
	movsd	-368(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm1, -384(%rbp)       # 8-byte Spill
	callq	sin
	movsd	-384(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-376(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	subsd	%xmm1, %xmm0
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-112(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	%xmm0, -392(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	%xmm1, -400(%rbp)       # 8-byte Spill
	callq	cos
	movsd	-400(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm1, -408(%rbp)       # 8-byte Spill
	callq	sin
	movsd	-408(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-392(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	subsd	%xmm1, %xmm0
	movsd	-344(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-352(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	mulsd	-128(%rbp), %xmm2
	movsd	%xmm0, -416(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	%xmm1, -424(%rbp)       # 8-byte Spill
	callq	exp
	movsd	.LCPI5_0, %xmm1         # xmm1 = mem[0],zero
	movsd	-416(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	mulsd	%xmm0, %xmm2
	movsd	-424(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	%xmm2, %xmm0
	movsd	-96(%rbp), %xmm2        # xmm2 = mem[0],zero
	mulsd	-120(%rbp), %xmm1
	movsd	%xmm0, -432(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	%xmm2, -440(%rbp)       # 8-byte Spill
	callq	exp
	movsd	.LCPI5_0, %xmm1         # xmm1 = mem[0],zero
	movsd	-440(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	mulsd	%xmm0, %xmm2
	movsd	-432(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	%xmm2, %xmm0
	movq	-8(%rbp), %rcx
	movsd	%xmm0, 16(%rcx)
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-128(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	callq	exp
	movsd	.LCPI5_0, %xmm1         # xmm1 = mem[0],zero
	movsd	-72(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-104(%rbp), %xmm3       # xmm3 = mem[0],zero
	movsd	%xmm0, -448(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm0
	movsd	%xmm2, -456(%rbp)       # 8-byte Spill
	movsd	%xmm1, -464(%rbp)       # 8-byte Spill
	callq	sin
	movsd	-456(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-104(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	%xmm0, -472(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	%xmm1, -480(%rbp)       # 8-byte Spill
	callq	cos
	movsd	-472(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-480(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	subsd	%xmm1, %xmm0
	movsd	-448(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-128(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-464(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	mulsd	-120(%rbp), %xmm2
	addsd	%xmm2, %xmm0
	movsd	%xmm1, -488(%rbp)       # 8-byte Spill
	callq	exp
	xorps	%xmm1, %xmm1
	movsd	-88(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-112(%rbp), %xmm3       # xmm3 = mem[0],zero
	movsd	%xmm0, -496(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm0
	movsd	%xmm2, -504(%rbp)       # 8-byte Spill
	movsd	%xmm1, -512(%rbp)       # 8-byte Spill
	callq	sin
	movsd	-504(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-112(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	%xmm0, -520(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	%xmm1, -528(%rbp)       # 8-byte Spill
	callq	cos
	movsd	-520(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-528(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	subsd	%xmm1, %xmm0
	movsd	-496(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-488(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	%xmm1, %xmm0
	movq	-8(%rbp), %rcx
	movsd	%xmm0, 24(%rcx)
	movq	-8(%rbp), %rcx
	movsd	-512(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, 32(%rcx)
	movq	-24(%rbp), %rcx
	movsd	%xmm0, (%rcx)
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	exp
	movsd	.LCPI5_1, %xmm1         # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm1, -536(%rbp)       # 8-byte Spill
	callq	cos
	movsd	-536(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-128(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm1, -544(%rbp)       # 8-byte Spill
	callq	exp
	movsd	.LCPI5_2, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI5_0, %xmm2         # xmm2 = mem[0],zero
	mulsd	%xmm0, %xmm2
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm2, -552(%rbp)       # 8-byte Spill
	movsd	%xmm1, -560(%rbp)       # 8-byte Spill
	callq	cos
	movsd	-552(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-544(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	subsd	%xmm1, %xmm0
	movq	-24(%rbp), %rcx
	movsd	%xmm0, 8(%rcx)
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	cos
	movsd	-560(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm1, -568(%rbp)       # 8-byte Spill
	callq	cos
	movsd	-568(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-128(%rbp), %xmm0       # xmm0 = mem[0],zero
	addsd	-120(%rbp), %xmm0
	movsd	%xmm1, -576(%rbp)       # 8-byte Spill
	callq	exp
	movsd	.LCPI5_0, %xmm1         # xmm1 = mem[0],zero
	movsd	-576(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	mulsd	%xmm0, %xmm2
	mulsd	-120(%rbp), %xmm1
	movaps	%xmm1, %xmm0
	movsd	%xmm2, -584(%rbp)       # 8-byte Spill
	callq	exp
	movsd	.LCPI5_0, %xmm1         # xmm1 = mem[0],zero
	movsd	-584(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	addsd	%xmm0, %xmm2
	mulsd	-128(%rbp), %xmm1
	movaps	%xmm1, %xmm0
	movsd	%xmm2, -592(%rbp)       # 8-byte Spill
	callq	exp
	movsd	.LCPI5_0, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI5_1, %xmm2         # xmm2 = mem[0],zero
	movsd	-592(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	addsd	%xmm0, %xmm3
	movq	-24(%rbp), %rcx
	movsd	%xmm3, 16(%rcx)
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm2, -600(%rbp)       # 8-byte Spill
	movsd	%xmm1, -608(%rbp)       # 8-byte Spill
	callq	cos
	movsd	-600(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-128(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-608(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	mulsd	-120(%rbp), %xmm2
	addsd	%xmm2, %xmm0
	movsd	%xmm1, -616(%rbp)       # 8-byte Spill
	callq	exp
	movsd	.LCPI5_0, %xmm1         # xmm1 = mem[0],zero
	movsd	-616(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	mulsd	%xmm0, %xmm2
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm2, -624(%rbp)       # 8-byte Spill
	movsd	%xmm1, -632(%rbp)       # 8-byte Spill
	callq	cos
	movsd	-632(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-632(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	mulsd	-128(%rbp), %xmm2
	addsd	%xmm2, %xmm0
	movsd	%xmm1, -640(%rbp)       # 8-byte Spill
	callq	exp
	movsd	.LCPI5_0, %xmm1         # xmm1 = mem[0],zero
	movsd	-640(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	mulsd	%xmm0, %xmm2
	movsd	-624(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	subsd	%xmm2, %xmm0
	movq	-24(%rbp), %rcx
	movsd	%xmm0, 24(%rcx)
	movaps	%xmm1, %xmm0
	mulsd	-128(%rbp), %xmm0
	mulsd	-120(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	callq	exp
	xorps	%xmm1, %xmm1
	movl	$40, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rcx
	movsd	%xmm0, 32(%rcx)
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	movsd	%xmm1, -648(%rbp)       # 8-byte Spill
	callq	memcpy
	movq	-16(%rbp), %rcx
	movsd	-648(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, (%rcx)
	movl	$1, -60(%rbp)
.LBB5_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$4, -60(%rbp)
	jg	.LBB5_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB5_1 Depth=1
	movslq	-60(%rbp), %rax
	movq	-8(%rbp), %rcx
	movsd	(%rcx,%rax,8), %xmm0    # xmm0 = mem[0],zero
	movslq	-60(%rbp), %rax
	movq	-24(%rbp), %rcx
	movsd	(%rcx,%rax,8), %xmm1    # xmm1 = mem[0],zero
	movq	-8(%rbp), %rax
	mulsd	(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movslq	-60(%rbp), %rax
	movq	-16(%rbp), %rcx
	movsd	%xmm0, (%rcx,%rax,8)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB5_1
.LBB5_4:                                # %for.end
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -144(%rbp)
	movsd	%xmm0, -152(%rbp)
	movsd	%xmm0, -160(%rbp)
	movl	$0, -60(%rbp)
.LBB5_5:                                # %for.cond.198
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$4, -60(%rbp)
	jg	.LBB5_8
# BB#6:                                 # %for.body.200
                                        #   in Loop: Header=BB5_5 Depth=1
	movslq	-60(%rbp), %rax
	movq	-8(%rbp), %rcx
	movsd	(%rcx,%rax,8), %xmm0    # xmm0 = mem[0],zero
	addsd	-144(%rbp), %xmm0
	movsd	%xmm0, -144(%rbp)
	movslq	-60(%rbp), %rax
	movq	-16(%rbp), %rcx
	movsd	(%rcx,%rax,8), %xmm0    # xmm0 = mem[0],zero
	addsd	-152(%rbp), %xmm0
	movsd	%xmm0, -152(%rbp)
	movslq	-60(%rbp), %rax
	movq	-24(%rbp), %rcx
	movsd	(%rcx,%rax,8), %xmm0    # xmm0 = mem[0],zero
	addsd	-160(%rbp), %xmm0
	movsd	%xmm0, -160(%rbp)
# BB#7:                                 # %for.inc.210
                                        #   in Loop: Header=BB5_5 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB5_5
.LBB5_8:                                # %for.end.212
	movsd	.LCPI5_12, %xmm0        # xmm0 = mem[0],zero
	addsd	-160(%rbp), %xmm0
	movsd	%xmm0, -160(%rbp)
	movsd	-144(%rbp), %xmm0       # xmm0 = mem[0],zero
	divsd	-160(%rbp), %xmm0
	movsd	%xmm0, -168(%rbp)
	movsd	-152(%rbp), %xmm0       # xmm0 = mem[0],zero
	divsd	-160(%rbp), %xmm0
	movsd	%xmm0, -176(%rbp)
	movl	$0, -60(%rbp)
.LBB5_9:                                # %for.cond.216
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$4, -60(%rbp)
	jg	.LBB5_12
# BB#10:                                # %for.body.218
                                        #   in Loop: Header=BB5_9 Depth=1
	movslq	-60(%rbp), %rax
	movq	-24(%rbp), %rcx
	movsd	(%rcx,%rax,8), %xmm0    # xmm0 = mem[0],zero
	mulsd	-168(%rbp), %xmm0
	movslq	-60(%rbp), %rax
	movq	-40(%rbp), %rcx
	movsd	%xmm0, (%rcx,%rax,8)
	movslq	-60(%rbp), %rax
	movq	-32(%rbp), %rcx
	movsd	(%rcx,%rax,8), %xmm0    # xmm0 = mem[0],zero
	mulsd	-176(%rbp), %xmm0
	movslq	-60(%rbp), %rax
	movq	-48(%rbp), %rcx
	movsd	%xmm0, (%rcx,%rax,8)
# BB#11:                                # %for.inc.229
                                        #   in Loop: Header=BB5_9 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB5_9
.LBB5_12:                               # %for.end.231
	addq	$656, %rsp              # imm = 0x290
	popq	%rbp
	retq
.Lfunc_end5:
	.size	find_constants, .Lfunc_end5-find_constants
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	4643176031446892544     # double 255
	.text
	.align	16, 0x90
	.type	transfer_pixels,@function
transfer_pixels:                        # @transfer_pixels
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%r8d, -32(%rbp)
	movl	$0, -36(%rbp)
.LBB6_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jge	.LBB6_9
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB6_1 Depth=1
	movsd	.LCPI6_0, %xmm0         # xmm0 = mem[0],zero
	movslq	-36(%rbp), %rax
	movq	-8(%rbp), %rcx
	movsd	(%rcx,%rax,8), %xmm1    # xmm1 = mem[0],zero
	movslq	-36(%rbp), %rax
	movq	-16(%rbp), %rcx
	addsd	(%rcx,%rax,8), %xmm1
	movsd	%xmm1, -48(%rbp)
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB6_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB6_1 Depth=1
	movsd	.LCPI6_0, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)
	jmp	.LBB6_7
.LBB6_4:                                # %if.else
                                        #   in Loop: Header=BB6_1 Depth=1
	xorps	%xmm0, %xmm0
	ucomisd	-48(%rbp), %xmm0
	jbe	.LBB6_6
# BB#5:                                 # %if.then.5
                                        #   in Loop: Header=BB6_1 Depth=1
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -48(%rbp)
.LBB6_6:                                # %if.end
                                        #   in Loop: Header=BB6_1 Depth=1
	jmp	.LBB6_7
.LBB6_7:                                # %if.end.6
                                        #   in Loop: Header=BB6_1 Depth=1
	cvttsd2si	-48(%rbp), %eax
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	movb	%cl, (%rdx)
	movl	-28(%rbp), %eax
	movq	-24(%rbp), %rdx
	movslq	%eax, %rsi
	addq	%rsi, %rdx
	movq	%rdx, -24(%rbp)
# BB#8:                                 # %for.inc
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB6_1
.LBB6_9:                                # %for.end
	popq	%rbp
	retq
.Lfunc_end6:
	.size	transfer_pixels, .Lfunc_end6-transfer_pixels
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI7_0:
	.quad	4607182418800017408     # double 1
.LCPI7_1:
	.quad	4652007308841189376     # double 1000
.LCPI7_2:
	.quad	4611686018427387904     # double 2
	.text
	.align	16, 0x90
	.type	compute_ramp,@function
compute_ramp:                           # @compute_ramp
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
	subq	$8112, %rsp             # imm = 0x1FB0
	xorl	%eax, %eax
	movl	$8000, %r8d             # imm = 0x1F40
	movl	%r8d, %r9d
	leaq	-8048(%rbp), %r10
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movsd	%xmm0, -40(%rbp)
	movl	%ecx, -44(%rbp)
	movq	%r10, %rdi
	movl	%eax, %esi
	movq	%r9, %rdx
	callq	memset
	movl	$0, -8060(%rbp)
	movl	$0, -8064(%rbp)
.LBB7_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-8064(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB7_14
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	-24(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB7_12
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	-16(%rbp), %rax
	movzbl	(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm0
	movq	-24(%rbp), %rax
	movzbl	(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -8056(%rbp)
	cmpl	$0, -44(%rbp)
	je	.LBB7_7
# BB#4:                                 # %if.then.5
                                        #   in Loop: Header=BB7_1 Depth=1
	movsd	-8056(%rbp), %xmm0      # xmm0 = mem[0],zero
	movsd	pvals+16, %xmm1         # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB7_6
# BB#5:                                 # %if.then.8
                                        #   in Loop: Header=BB7_1 Depth=1
	movsd	.LCPI7_1, %xmm0         # xmm0 = mem[0],zero
	mulsd	-8056(%rbp), %xmm0
	cvttsd2si	%xmm0, %eax
	movslq	%eax, %rcx
	movl	-8048(%rbp,%rcx,4), %eax
	addl	$1, %eax
	movl	%eax, -8048(%rbp,%rcx,4)
	movl	-8060(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8060(%rbp)
.LBB7_6:                                # %if.end
                                        #   in Loop: Header=BB7_1 Depth=1
	jmp	.LBB7_11
.LBB7_7:                                # %if.else
                                        #   in Loop: Header=BB7_1 Depth=1
	movsd	-8056(%rbp), %xmm0      # xmm0 = mem[0],zero
	ucomisd	pvals+16, %xmm0
	jb	.LBB7_10
# BB#8:                                 # %land.lhs.true
                                        #   in Loop: Header=BB7_1 Depth=1
	movsd	.LCPI7_2, %xmm0         # xmm0 = mem[0],zero
	ucomisd	-8056(%rbp), %xmm0
	jbe	.LBB7_10
# BB#9:                                 # %if.then.15
                                        #   in Loop: Header=BB7_1 Depth=1
	movsd	.LCPI7_1, %xmm0         # xmm0 = mem[0],zero
	mulsd	-8056(%rbp), %xmm0
	cvttsd2si	%xmm0, %eax
	movslq	%eax, %rcx
	movl	-8048(%rbp,%rcx,4), %eax
	addl	$1, %eax
	movl	%eax, -8048(%rbp,%rcx,4)
	movl	-8060(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8060(%rbp)
.LBB7_10:                               # %if.end.22
                                        #   in Loop: Header=BB7_1 Depth=1
	jmp	.LBB7_11
.LBB7_11:                               # %if.end.23
                                        #   in Loop: Header=BB7_1 Depth=1
	jmp	.LBB7_12
.LBB7_12:                               # %if.end.24
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
# BB#13:                                # %for.inc
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	-8064(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8064(%rbp)
	jmp	.LBB7_1
.LBB7_14:                               # %for.end
	xorps	%xmm0, %xmm0
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB7_15
	jp	.LBB7_15
	jmp	.LBB7_16
.LBB7_15:                               # %lor.lhs.false
	cmpl	$0, -8060(%rbp)
	jne	.LBB7_17
.LBB7_16:                               # %if.then.30
	movsd	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	cmpl	$0, -44(%rbp)
	movsd	%xmm1, -8080(%rbp)      # 8-byte Spill
	movsd	%xmm0, -8088(%rbp)      # 8-byte Spill
	jne	.LBB7_28
# BB#27:                                # %if.then.30
	movsd	-8080(%rbp), %xmm0      # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -8088(%rbp)      # 8-byte Spill
.LBB7_28:                               # %if.then.30
	movsd	-8088(%rbp), %xmm0      # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB7_26
.LBB7_17:                               # %if.end.32
	movl	$0, -8068(%rbp)
	movl	$0, -8064(%rbp)
.LBB7_18:                               # %for.cond.33
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$2000, -8064(%rbp)      # imm = 0x7D0
	jge	.LBB7_25
# BB#19:                                # %for.body.36
                                        #   in Loop: Header=BB7_18 Depth=1
	movslq	-8064(%rbp), %rax
	movl	-8048(%rbp,%rax,4), %ecx
	addl	-8068(%rbp), %ecx
	movl	%ecx, -8068(%rbp)
	cvtsi2sdl	-8068(%rbp), %xmm0
	cvtsi2sdl	-8060(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	ucomisd	-40(%rbp), %xmm0
	jbe	.LBB7_23
# BB#20:                                # %if.then.45
	cmpl	$0, -44(%rbp)
	je	.LBB7_22
# BB#21:                                # %if.then.47
	movsd	.LCPI7_1, %xmm0         # xmm0 = mem[0],zero
	movsd	pvals+16, %xmm1         # xmm1 = mem[0],zero
	cvtsi2sdl	-8064(%rbp), %xmm2
	divsd	%xmm0, %xmm2
	subsd	%xmm2, %xmm1
	movsd	%xmm1, -8(%rbp)
	jmp	.LBB7_26
.LBB7_22:                               # %if.else.50
	movsd	.LCPI7_1, %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	-8064(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	subsd	pvals+16, %xmm1
	movsd	%xmm1, -8(%rbp)
	jmp	.LBB7_26
.LBB7_23:                               # %if.end.54
                                        #   in Loop: Header=BB7_18 Depth=1
	jmp	.LBB7_24
.LBB7_24:                               # %for.inc.55
                                        #   in Loop: Header=BB7_18 Depth=1
	movl	-8064(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8064(%rbp)
	jmp	.LBB7_18
.LBB7_25:                               # %for.end.57
	xorps	%xmm0, %xmm0
	movsd	.LCPI7_0, %xmm1         # xmm1 = mem[0],zero
	cmpl	$0, -44(%rbp)
	movsd	%xmm1, -8096(%rbp)      # 8-byte Spill
	movsd	%xmm0, -8104(%rbp)      # 8-byte Spill
	jne	.LBB7_30
# BB#29:                                # %for.end.57
	movsd	-8096(%rbp), %xmm0      # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -8104(%rbp)      # 8-byte Spill
.LBB7_30:                               # %for.end.57
	movsd	-8104(%rbp), %xmm0      # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
.LBB7_26:                               # %return
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	addq	$8112, %rsp             # imm = 0x1FB0
	popq	%rbp
	retq
.Lfunc_end7:
	.size	compute_ramp, .Lfunc_end7-compute_ramp
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
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.10
	.quad	.L.str.11
	.long	3                       # 0x3
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
	.asciz	"mask-radius"
	.size	.L.str.6, 12

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Photocopy mask radius (radius of pixel neighborhood)"
	.size	.L.str.7, 53

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"sharpness"
	.size	.L.str.8, 10

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Sharpness (detail level) (0.0 - 1.0)"
	.size	.L.str.9, 37

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"pct-black"
	.size	.L.str.10, 10

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Percentage of darkened pixels to set to black (0.0 - 1.0)"
	.size	.L.str.11, 58

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"pct-white"
	.size	.L.str.12, 10

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Percentage of non-darkened pixels left white (0.0 - 1.0)"
	.size	.L.str.13, 57

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Propagates dark values in an image based on each pixel's relative darkness to a neighboring average. The idea behind this filter is to give the look of a photocopied version of the image, with toner transfered based on the relative darkness of a particular region. This is achieved by darkening areas of the image which are measured to be darker than a neighborhood average and setting other pixels to white. In this way, sufficiently large shifts in intensity are darkened to black. The rate at which they are darkened to black is determined by the second pct_black parameter. The mask_radius parameter controls the size of the pixel neighborhood over which the average intensity is computed and then compared to each pixel in the neighborhood to decide whether or not to darken it to black. Large values for mask_radius result in very thick black areas bordering the regions of white and much less detail for black areas everywhere including inside regions of color. Small values result in less toner overall and more detail everywhere. Small values for the pct_black make the blend from the white regions to the black border lines smoother and the toner regions themselves thinner and less noticable; larger values achieve the opposite effect."
	.size	.L.str.14, 1247

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"plug-in-photocopy"
	.size	.L.str.15, 18

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Simulate color distortion produced by a copy machine"
	.size	.L.str.16, 53

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Spencer Kimball"
	.size	.L.str.17, 16

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"Bit Specialists, Inc."
	.size	.L.str.18, 22

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"2001"
	.size	.L.str.19, 5

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"_Photocopy..."
	.size	.L.str.20, 14

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"RGB*, GRAY*"
	.size	.L.str.21, 12

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"<Image>/Filters/Artistic"
	.size	.L.str.22, 25

	.type	run.values,@object      # @run.values
	.local	run.values
	.comm	run.values,80,16
	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"gimp20-std-plug-ins"
	.size	.L.str.23, 20

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"UTF-8"
	.size	.L.str.24, 6

	.type	pvals,@object           # @pvals
	.data
	.align	8
pvals:
	.quad	4620693217682128896     # double 8
	.quad	4605380978949069210     # double 0.80000000000000004
	.quad	4604930618986332160     # double 0.75
	.quad	4596373779694328218     # double 0.20000000000000001
	.quad	4596373779694328218     # double 0.20000000000000001
	.size	pvals, 40

	.type	.L.str.25,@object       # @.str.25
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.25:
	.asciz	"Photocopy"
	.size	.L.str.25, 10

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"Cannot operate on indexed color images."
	.size	.L.str.26, 40

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"photocopy"
	.size	.L.str.27, 10

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"gimp-photocopy"
	.size	.L.str.28, 15

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"gtk-cancel"
	.size	.L.str.29, 11

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"gtk-ok"
	.size	.L.str.30, 7

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"invalidated"
	.size	.L.str.31, 12

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"_Mask radius:"
	.size	.L.str.32, 14

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"value-changed"
	.size	.L.str.33, 14

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"_Sharpness:"
	.size	.L.str.34, 12

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"Percent _black:"
	.size	.L.str.35, 16

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"Percent _white:"
	.size	.L.str.36, 16


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
