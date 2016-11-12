	.text
	.file	"cartoon.bc"
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
	movabsq	$.L.str.11, %rdi
	movabsq	$cvals, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movq	-56(%rbp), %rdi
	movl	%eax, -104(%rbp)        # 4-byte Spill
	callq	cartoon_dialog
	cmpl	$0, %eax
	jne	.LBB1_5
# BB#4:                                 # %if.then
	jmp	.LBB1_20
.LBB1_5:                                # %if.end
	jmp	.LBB1_9
.LBB1_6:                                # %sw.bb.9
	movq	-24(%rbp), %rax
	movsd	128(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, cvals
	movq	-24(%rbp), %rax
	movsd	168(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, cvals+16
	jmp	.LBB1_9
.LBB1_7:                                # %sw.bb.15
	movabsq	$.L.str.11, %rdi
	movabsq	$cvals, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movl	%eax, -108(%rbp)        # 4-byte Spill
	jmp	.LBB1_9
.LBB1_8:                                # %sw.default
	jmp	.LBB1_9
.LBB1_9:                                # %sw.epilog
	cmpl	$3, -60(%rbp)
	jne	.LBB1_19
# BB#10:                                # %if.then.17
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
.LBB1_12:                               # %if.then.23
	movabsq	$.L.str.21, %rdi
	callq	gimp_progress_init
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	-56(%rbp), %rdi
	movl	%eax, -112(%rbp)        # 4-byte Spill
	callq	cartoon
	cmpl	$1, -44(%rbp)
	je	.LBB1_14
# BB#13:                                # %if.then.26
	callq	gimp_displays_flush
	movl	%eax, -116(%rbp)        # 4-byte Spill
.LBB1_14:                               # %if.end.28
	cmpl	$0, -44(%rbp)
	jne	.LBB1_16
# BB#15:                                # %if.then.30
	movabsq	$.L.str.11, %rdi
	movabsq	$cvals, %rax
	movl	$24, %edx
	movq	%rax, %rsi
	callq	gimp_procedural_db_set_data
	movl	%eax, -120(%rbp)        # 4-byte Spill
.LBB1_16:                               # %if.end.32
	jmp	.LBB1_18
.LBB1_17:                               # %if.else
	movabsq	$.L.str.22, %rdi
	movl	$0, -60(%rbp)
	movq	-32(%rbp), %rax
	movl	$2, (%rax)
	movl	$4, run.values+40
	callq	gettext
	movq	%rax, run.values+48
.LBB1_18:                               # %if.end.34
	jmp	.LBB1_19
.LBB1_19:                               # %if.end.35
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
	.quad	4632233691727265792     # double 50
.LCPI3_4:
	.quad	4617315517961601024     # double 5
	.text
	.align	16, 0x90
	.type	cartoon_dialog,@function
cartoon_dialog:                         # @cartoon_dialog
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
	subq	$368, %rsp              # imm = 0x170
.Ltmp17:
	.cfi_offset %rbx, -32
.Ltmp18:
	.cfi_offset %r14, -24
	movabsq	$.L.str.23, %rax
	xorl	%esi, %esi
	movq	%rdi, -24(%rbp)
	movq	%rax, %rdi
	callq	gimp_ui_init
	movabsq	$.L.str.21, %rdi
	callq	gettext
	movabsq	$.L.str.24, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	movabsq	$gimp_standard_help_func, %r8
	movabsq	$.L.str.11, %r9
	movabsq	$.L.str.25, %rdi
	movl	$4294967290, %r10d      # imm = 0xFFFFFFFA
	movabsq	$.L.str.26, %r11
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
	movabsq	$.L.str.27, %rsi
	movabsq	$cartoon, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movl	$2, %r9d
	movq	-48(%rbp), %rdi
	movq	-24(%rbp), %r11
	movq	%rax, %rdx
	movq	%r11, %rcx
	callq	g_signal_connect_data
	movl	$3, %r9d
	xorl	%edx, %edx
	movl	%r9d, %edi
	movl	%r9d, %esi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_table_new
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-56(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-40(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -172(%rbp)        # 4-byte Spill
	movl	-172(%rbp), %ecx        # 4-byte Reload
	movl	-172(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movq	-56(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.28, %rdi
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	$100, %r8d
	movl	$5, %r9d
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI3_3, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI3_4, %xmm4         # xmm4 = mem[0],zero
	movl	$2, %edx
	movl	$1, %r10d
	xorps	%xmm1, %xmm1
	xorl	%ebx, %ebx
	movl	%ebx, %esi
	movsd	cvals, %xmm3            # xmm3 = mem[0],zero
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rsi, -200(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movl	%edx, -204(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movq	%rax, %rcx
	movsd	%xmm0, -216(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm0
	movsd	-216(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	%xmm1, -224(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm1
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
	movabsq	$.L.str.29, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	movabsq	$cvals, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rdi, -240(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-240(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.29, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-64(%rbp), %rdx
	movq	-48(%rbp), %rdi
	movq	%rdi, -248(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-248(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-56(%rbp), %rcx
	movq	%rax, -264(%rbp)        # 8-byte Spill
	movq	%rcx, -272(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.30, %rdi
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
	movsd	cvals+16, %xmm1         # xmm1 = mem[0],zero
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
	movabsq	$.L.str.29, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	movabsq	$cvals, %rdi
	addq	$16, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rdi, -312(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-312(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.29, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-64(%rbp), %rdx
	movq	-48(%rbp), %rdi
	movq	%rdi, -320(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-320(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-32(%rbp), %rdi
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
	movq	-32(%rbp), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	gimp_dialog_get_type
	movq	-344(%rbp), %rdi        # 8-byte Reload
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
	addq	$368, %rsp              # imm = 0x170
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end3:
	.size	cartoon_dialog, .Lfunc_end3-cartoon_dialog
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4611686018427387904     # double 2
.LCPI4_1:
	.quad	4571171282956062736     # double 0.0039215686274509803
.LCPI4_2:
	.quad	4607182418800017408     # double 1
.LCPI4_4:
	.quad	4643176031446892544     # double 255
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI4_3:
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.text
	.align	16, 0x90
	.type	cartoon,@function
cartoon:                                # @cartoon
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
	subq	$1344, %rsp             # imm = 0x540
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$0, -984(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB4_2
# BB#1:                                 # %if.then
	leaq	-124(%rbp), %rsi
	leaq	-128(%rbp), %rdx
	movq	-16(%rbp), %rdi
	callq	gimp_preview_get_position
	leaq	-132(%rbp), %rsi
	leaq	-136(%rbp), %rdx
	movq	-16(%rbp), %rdi
	callq	gimp_preview_get_size
	jmp	.LBB4_5
.LBB4_2:                                # %if.else
	leaq	-124(%rbp), %rsi
	leaq	-128(%rbp), %rdx
	leaq	-132(%rbp), %rcx
	leaq	-136(%rbp), %r8
	movq	-8(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_mask_intersect
	cmpl	$0, %eax
	jne	.LBB4_4
# BB#3:                                 # %if.then.2
	jmp	.LBB4_124
.LBB4_4:                                # %if.end
	jmp	.LBB4_5
.LBB4_5:                                # %if.end.3
	movq	-8(%rbp), %rax
	movl	12(%rax), %ecx
	movl	%ecx, -140(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_has_alpha
	movl	%eax, -144(%rbp)
	movl	-132(%rbp), %eax
	cmpl	-136(%rbp), %eax
	jle	.LBB4_7
# BB#6:                                 # %cond.true
	movl	-132(%rbp), %eax
	movl	%eax, -1120(%rbp)       # 4-byte Spill
	jmp	.LBB4_8
.LBB4_7:                                # %cond.false
	movl	-136(%rbp), %eax
	movl	%eax, -1120(%rbp)       # 4-byte Spill
.LBB4_8:                                # %cond.end
	movl	-1120(%rbp), %eax       # 4-byte Reload
	movl	$8, %ecx
	movl	%ecx, %esi
	imull	-140(%rbp), %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	movq	%rax, -792(%rbp)
	movl	-132(%rbp), %ecx
	cmpl	-136(%rbp), %ecx
	jle	.LBB4_10
# BB#9:                                 # %cond.true.9
	movl	-132(%rbp), %eax
	movl	%eax, -1124(%rbp)       # 4-byte Spill
	jmp	.LBB4_11
.LBB4_10:                               # %cond.false.10
	movl	-136(%rbp), %eax
	movl	%eax, -1124(%rbp)       # 4-byte Spill
.LBB4_11:                               # %cond.end.11
	movl	-1124(%rbp), %eax       # 4-byte Reload
	movl	$8, %ecx
	movl	%ecx, %esi
	imull	-140(%rbp), %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	movq	%rax, -824(%rbp)
	movl	-132(%rbp), %ecx
	cmpl	-136(%rbp), %ecx
	jle	.LBB4_13
# BB#12:                                # %cond.true.18
	movl	-132(%rbp), %eax
	movl	%eax, -1128(%rbp)       # 4-byte Spill
	jmp	.LBB4_14
.LBB4_13:                               # %cond.false.19
	movl	-136(%rbp), %eax
	movl	%eax, -1128(%rbp)       # 4-byte Spill
.LBB4_14:                               # %cond.end.20
	movl	-1128(%rbp), %eax       # 4-byte Reload
	movl	$8, %ecx
	movl	%ecx, %esi
	imull	-140(%rbp), %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	movq	%rax, -800(%rbp)
	movl	-132(%rbp), %ecx
	cmpl	-136(%rbp), %ecx
	jle	.LBB4_16
# BB#15:                                # %cond.true.27
	movl	-132(%rbp), %eax
	movl	%eax, -1132(%rbp)       # 4-byte Spill
	jmp	.LBB4_17
.LBB4_16:                               # %cond.false.28
	movl	-136(%rbp), %eax
	movl	%eax, -1132(%rbp)       # 4-byte Spill
.LBB4_17:                               # %cond.end.29
	movl	-1132(%rbp), %eax       # 4-byte Reload
	movl	$8, %ecx
	movl	%ecx, %esi
	imull	-140(%rbp), %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	movq	%rax, -832(%rbp)
	movl	-132(%rbp), %ecx
	cmpl	-136(%rbp), %ecx
	jle	.LBB4_19
# BB#18:                                # %cond.true.36
	movl	-132(%rbp), %eax
	movl	%eax, -1136(%rbp)       # 4-byte Spill
	jmp	.LBB4_20
.LBB4_19:                               # %cond.false.37
	movl	-136(%rbp), %eax
	movl	%eax, -1136(%rbp)       # 4-byte Spill
.LBB4_20:                               # %cond.end.38
	movl	-1136(%rbp), %eax       # 4-byte Reload
	movl	$1, %ecx
	movl	%ecx, %esi
	imull	-140(%rbp), %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	%rax, -168(%rbp)
	movl	-132(%rbp), %ecx
	imull	-136(%rbp), %ecx
	movslq	%ecx, %rdi
	callq	g_malloc0_n
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	%rax, -152(%rbp)
	movl	-132(%rbp), %ecx
	imull	-136(%rbp), %ecx
	movslq	%ecx, %rdi
	callq	g_malloc0_n
	leaq	-64(%rbp), %rdi
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
	movsd	.LCPI4_1, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI4_2, %xmm1         # xmm1 = mem[0],zero
	movl	$0, -876(%rbp)
	movl	-132(%rbp), %ecx
	imull	-136(%rbp), %ecx
	shll	$1, %ecx
	movl	%ecx, -880(%rbp)
	movsd	%xmm1, -952(%rbp)
	movsd	-952(%rbp), %xmm2       # xmm2 = mem[0],zero
	movapd	.LCPI4_3(%rip), %xmm3   # xmm3 = [9223372036854775807,9223372036854775807]
	andpd	%xmm3, %xmm2
	addsd	%xmm1, %xmm2
	movsd	%xmm2, -952(%rbp)
	movsd	-952(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-952(%rbp), %xmm1
	movd	%xmm1, %rax
	movabsq	$-9223372036854775808, %rsi # imm = 0x8000000000000000
	xorq	%rsi, %rax
	movd	%rax, %xmm1
	movsd	%xmm1, -1144(%rbp)      # 8-byte Spill
	callq	log
	movsd	.LCPI4_1, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI4_2, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI4_0, %xmm3         # xmm3 = mem[0],zero
	mulsd	%xmm0, %xmm3
	movsd	-1144(%rbp), %xmm0      # 8-byte Reload
                                        # xmm0 = mem[0],zero
	divsd	%xmm3, %xmm0
	movsd	%xmm2, -1152(%rbp)      # 8-byte Spill
	movsd	%xmm1, -1160(%rbp)      # 8-byte Spill
	callq	sqrt
	movsd	%xmm0, -960(%rbp)
	movsd	cvals, %xmm0            # xmm0 = mem[0],zero
	movsd	%xmm0, -952(%rbp)
	movsd	-952(%rbp), %xmm0       # xmm0 = mem[0],zero
	movapd	.LCPI4_3(%rip), %xmm1   # xmm1 = [9223372036854775807,9223372036854775807]
	andpd	%xmm1, %xmm0
	movsd	-1152(%rbp), %xmm1      # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -952(%rbp)
	movsd	-952(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-952(%rbp), %xmm0
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rsi # imm = 0x8000000000000000
	xorq	%rsi, %rax
	movd	%rax, %xmm0
	movsd	-1160(%rbp), %xmm2      # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	%xmm0, -1168(%rbp)      # 8-byte Spill
	movaps	%xmm2, %xmm0
	callq	log
	leaq	-688(%rbp), %r9
	leaq	-640(%rbp), %r8
	leaq	-496(%rbp), %rcx
	leaq	-448(%rbp), %rdx
	leaq	-304(%rbp), %rsi
	leaq	-256(%rbp), %rdi
	movsd	.LCPI4_0, %xmm1         # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-1168(%rbp), %xmm0      # 8-byte Reload
                                        # xmm0 = mem[0],zero
	divsd	%xmm1, %xmm0
	movq	%rdi, -1176(%rbp)       # 8-byte Spill
	movq	%r9, -1184(%rbp)        # 8-byte Spill
	movq	%r8, -1192(%rbp)        # 8-byte Spill
	movq	%rcx, -1200(%rbp)       # 8-byte Spill
	movq	%rdx, -1208(%rbp)       # 8-byte Spill
	movq	%rsi, -1216(%rbp)       # 8-byte Spill
	callq	sqrt
	movsd	%xmm0, -968(%rbp)
	movsd	-960(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-1176(%rbp), %rdi       # 8-byte Reload
	movq	-1216(%rbp), %rsi       # 8-byte Reload
	movq	-1208(%rbp), %rdx       # 8-byte Reload
	movq	-1200(%rbp), %rcx       # 8-byte Reload
	movq	-1192(%rbp), %r8        # 8-byte Reload
	movq	-1184(%rbp), %r9        # 8-byte Reload
	callq	find_constants
	leaq	-784(%rbp), %r9
	leaq	-736(%rbp), %r8
	leaq	-592(%rbp), %rcx
	leaq	-544(%rbp), %rdx
	leaq	-400(%rbp), %rsi
	leaq	-352(%rbp), %rdi
	movsd	-968(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	find_constants
	movl	$0, -864(%rbp)
.LBB4_21:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_23 Depth 2
                                        #     Child Loop BB4_27 Depth 2
                                        #       Child Loop BB4_32 Depth 3
                                        #         Child Loop BB4_34 Depth 4
                                        #         Child Loop BB4_38 Depth 4
	movl	-864(%rbp), %eax
	cmpl	-132(%rbp), %eax
	jge	.LBB4_51
# BB#22:                                # %for.body
                                        #   in Loop: Header=BB4_21 Depth=1
	leaq	-64(%rbp), %rdi
	xorl	%eax, %eax
	movq	-792(%rbp), %rcx
	movl	-136(%rbp), %edx
	imull	-140(%rbp), %edx
	movslq	%edx, %rsi
	shlq	$3, %rsi
	movq	%rdi, -1224(%rbp)       # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rsi, -1232(%rbp)       # 8-byte Spill
	movl	%eax, %esi
	movq	-1232(%rbp), %rdx       # 8-byte Reload
	movl	%eax, -1236(%rbp)       # 4-byte Spill
	callq	memset
	movq	-824(%rbp), %rcx
	movl	-136(%rbp), %eax
	imull	-140(%rbp), %eax
	movslq	%eax, %rdx
	shlq	$3, %rdx
	movq	%rcx, %rdi
	movl	-1236(%rbp), %esi       # 4-byte Reload
	callq	memset
	movq	-800(%rbp), %rcx
	movl	-136(%rbp), %eax
	imull	-140(%rbp), %eax
	movslq	%eax, %rdx
	shlq	$3, %rdx
	movq	%rcx, %rdi
	movl	-1236(%rbp), %esi       # 4-byte Reload
	callq	memset
	movq	-832(%rbp), %rcx
	movl	-136(%rbp), %eax
	imull	-140(%rbp), %eax
	movslq	%eax, %rdx
	shlq	$3, %rdx
	movq	%rcx, %rdi
	movl	-1236(%rbp), %esi       # 4-byte Reload
	callq	memset
	movq	-168(%rbp), %rsi
	movl	-864(%rbp), %eax
	addl	-124(%rbp), %eax
	movl	-128(%rbp), %ecx
	movl	-136(%rbp), %r8d
	movq	-1224(%rbp), %rdi       # 8-byte Reload
	movl	%eax, %edx
	callq	gimp_pixel_rgn_get_col
	movq	-168(%rbp), %rsi
	movq	%rsi, -176(%rbp)
	movq	-176(%rbp), %rsi
	movq	%rsi, -184(%rbp)
	movq	-176(%rbp), %rsi
	movl	-136(%rbp), %eax
	subl	$1, %eax
	imull	-140(%rbp), %eax
	movslq	%eax, %rdi
	addq	%rdi, %rsi
	movq	%rsi, -192(%rbp)
	movq	-792(%rbp), %rsi
	movq	%rsi, -808(%rbp)
	movq	-824(%rbp), %rsi
	movq	%rsi, -840(%rbp)
	movq	-800(%rbp), %rsi
	movl	-136(%rbp), %eax
	subl	$1, %eax
	imull	-140(%rbp), %eax
	movslq	%eax, %rdi
	shlq	$3, %rdi
	addq	%rdi, %rsi
	movq	%rsi, -816(%rbp)
	movq	-832(%rbp), %rsi
	movl	-136(%rbp), %eax
	subl	$1, %eax
	imull	-140(%rbp), %eax
	movslq	%eax, %rdi
	shlq	$3, %rdi
	addq	%rdi, %rsi
	movq	%rsi, -848(%rbp)
	movl	$0, -852(%rbp)
.LBB4_23:                               # %for.cond.102
                                        #   Parent Loop BB4_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-852(%rbp), %eax
	cmpl	-140(%rbp), %eax
	jge	.LBB4_26
# BB#24:                                # %for.body.105
                                        #   in Loop: Header=BB4_23 Depth=2
	movslq	-852(%rbp), %rax
	movq	-184(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movslq	-852(%rbp), %rax
	movl	%edx, -896(%rbp,%rax,4)
	movslq	-852(%rbp), %rax
	movq	-192(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movslq	-852(%rbp), %rax
	movl	%edx, -928(%rbp,%rax,4)
# BB#25:                                # %for.inc
                                        #   in Loop: Header=BB4_23 Depth=2
	movl	-852(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -852(%rbp)
	jmp	.LBB4_23
.LBB4_26:                               # %for.end
                                        #   in Loop: Header=BB4_21 Depth=1
	movl	$0, -860(%rbp)
.LBB4_27:                               # %for.cond.114
                                        #   Parent Loop BB4_21 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_32 Depth 3
                                        #         Child Loop BB4_34 Depth 4
                                        #         Child Loop BB4_38 Depth 4
	movl	-860(%rbp), %eax
	cmpl	-136(%rbp), %eax
	jge	.LBB4_45
# BB#28:                                # %for.body.117
                                        #   in Loop: Header=BB4_27 Depth=2
	cmpl	$4, -860(%rbp)
	jge	.LBB4_30
# BB#29:                                # %cond.true.120
                                        #   in Loop: Header=BB4_27 Depth=2
	movl	-860(%rbp), %eax
	movl	%eax, -1240(%rbp)       # 4-byte Spill
	jmp	.LBB4_31
.LBB4_30:                               # %cond.false.121
                                        #   in Loop: Header=BB4_27 Depth=2
	movl	$4, %eax
	movl	%eax, -1240(%rbp)       # 4-byte Spill
	jmp	.LBB4_31
.LBB4_31:                               # %cond.end.122
                                        #   in Loop: Header=BB4_27 Depth=2
	movl	-1240(%rbp), %eax       # 4-byte Reload
	movl	%eax, -872(%rbp)
	movl	$0, -868(%rbp)
.LBB4_32:                               # %for.cond.124
                                        #   Parent Loop BB4_21 Depth=1
                                        #     Parent Loop BB4_27 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB4_34 Depth 4
                                        #         Child Loop BB4_38 Depth 4
	movl	-868(%rbp), %eax
	cmpl	-140(%rbp), %eax
	jge	.LBB4_43
# BB#33:                                # %for.body.127
                                        #   in Loop: Header=BB4_32 Depth=3
	movq	-808(%rbp), %rax
	movslq	-868(%rbp), %rcx
	shlq	$3, %rcx
	addq	%rcx, %rax
	movq	%rax, -992(%rbp)
	movq	-816(%rbp), %rax
	movslq	-868(%rbp), %rcx
	shlq	$3, %rcx
	addq	%rcx, %rax
	movq	%rax, -1000(%rbp)
	movq	-840(%rbp), %rax
	movslq	-868(%rbp), %rcx
	shlq	$3, %rcx
	addq	%rcx, %rax
	movq	%rax, -1008(%rbp)
	movq	-848(%rbp), %rax
	movslq	-868(%rbp), %rcx
	shlq	$3, %rcx
	addq	%rcx, %rax
	movq	%rax, -1016(%rbp)
	movl	$0, -852(%rbp)
.LBB4_34:                               # %for.cond.136
                                        #   Parent Loop BB4_21 Depth=1
                                        #     Parent Loop BB4_27 Depth=2
                                        #       Parent Loop BB4_32 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	-852(%rbp), %eax
	cmpl	-872(%rbp), %eax
	jg	.LBB4_37
# BB#35:                                # %for.body.139
                                        #   in Loop: Header=BB4_34 Depth=4
	xorl	%eax, %eax
	movslq	-852(%rbp), %rcx
	movsd	-256(%rbp,%rcx,8), %xmm0 # xmm0 = mem[0],zero
	movl	%eax, %edx
	subl	-852(%rbp), %edx
	imull	-140(%rbp), %edx
	addl	-868(%rbp), %edx
	movslq	%edx, %rcx
	movq	-184(%rbp), %rsi
	movzbl	(%rsi,%rcx), %edx
	cvtsi2sdl	%edx, %xmm1
	mulsd	%xmm1, %xmm0
	movslq	-852(%rbp), %rcx
	movsd	-448(%rbp,%rcx,8), %xmm1 # xmm1 = mem[0],zero
	movl	%eax, %edx
	subl	-852(%rbp), %edx
	imull	-140(%rbp), %edx
	addl	-868(%rbp), %edx
	movslq	%edx, %rcx
	movq	-808(%rbp), %rsi
	mulsd	(%rsi,%rcx,8), %xmm1
	subsd	%xmm1, %xmm0
	movq	-992(%rbp), %rcx
	addsd	(%rcx), %xmm0
	movsd	%xmm0, (%rcx)
	movslq	-852(%rbp), %rcx
	movsd	-304(%rbp,%rcx,8), %xmm0 # xmm0 = mem[0],zero
	movl	-852(%rbp), %edx
	imull	-140(%rbp), %edx
	addl	-868(%rbp), %edx
	movslq	%edx, %rcx
	movq	-192(%rbp), %rsi
	movzbl	(%rsi,%rcx), %edx
	cvtsi2sdl	%edx, %xmm1
	mulsd	%xmm1, %xmm0
	movslq	-852(%rbp), %rcx
	movsd	-496(%rbp,%rcx,8), %xmm1 # xmm1 = mem[0],zero
	movl	-852(%rbp), %edx
	imull	-140(%rbp), %edx
	addl	-868(%rbp), %edx
	movslq	%edx, %rcx
	movq	-816(%rbp), %rsi
	mulsd	(%rsi,%rcx,8), %xmm1
	subsd	%xmm1, %xmm0
	movq	-1000(%rbp), %rcx
	addsd	(%rcx), %xmm0
	movsd	%xmm0, (%rcx)
	movslq	-852(%rbp), %rcx
	movsd	-352(%rbp,%rcx,8), %xmm0 # xmm0 = mem[0],zero
	movl	%eax, %edx
	subl	-852(%rbp), %edx
	imull	-140(%rbp), %edx
	addl	-868(%rbp), %edx
	movslq	%edx, %rcx
	movq	-184(%rbp), %rsi
	movzbl	(%rsi,%rcx), %edx
	cvtsi2sdl	%edx, %xmm1
	mulsd	%xmm1, %xmm0
	movslq	-852(%rbp), %rcx
	movsd	-544(%rbp,%rcx,8), %xmm1 # xmm1 = mem[0],zero
	subl	-852(%rbp), %eax
	imull	-140(%rbp), %eax
	addl	-868(%rbp), %eax
	movslq	%eax, %rcx
	movq	-840(%rbp), %rsi
	mulsd	(%rsi,%rcx,8), %xmm1
	subsd	%xmm1, %xmm0
	movq	-1008(%rbp), %rcx
	addsd	(%rcx), %xmm0
	movsd	%xmm0, (%rcx)
	movslq	-852(%rbp), %rcx
	movsd	-400(%rbp,%rcx,8), %xmm0 # xmm0 = mem[0],zero
	movl	-852(%rbp), %eax
	imull	-140(%rbp), %eax
	addl	-868(%rbp), %eax
	movslq	%eax, %rcx
	movq	-192(%rbp), %rsi
	movzbl	(%rsi,%rcx), %eax
	cvtsi2sdl	%eax, %xmm1
	mulsd	%xmm1, %xmm0
	movslq	-852(%rbp), %rcx
	movsd	-592(%rbp,%rcx,8), %xmm1 # xmm1 = mem[0],zero
	movl	-852(%rbp), %eax
	imull	-140(%rbp), %eax
	addl	-868(%rbp), %eax
	movslq	%eax, %rcx
	movq	-848(%rbp), %rsi
	mulsd	(%rsi,%rcx,8), %xmm1
	subsd	%xmm1, %xmm0
	movq	-1016(%rbp), %rcx
	addsd	(%rcx), %xmm0
	movsd	%xmm0, (%rcx)
# BB#36:                                # %for.inc.216
                                        #   in Loop: Header=BB4_34 Depth=4
	movl	-852(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -852(%rbp)
	jmp	.LBB4_34
.LBB4_37:                               # %for.end.218
                                        #   in Loop: Header=BB4_32 Depth=3
	movl	-852(%rbp), %eax
	movl	%eax, -856(%rbp)
.LBB4_38:                               # %for.cond.219
                                        #   Parent Loop BB4_21 Depth=1
                                        #     Parent Loop BB4_27 Depth=2
                                        #       Parent Loop BB4_32 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	cmpl	$4, -856(%rbp)
	jg	.LBB4_41
# BB#39:                                # %for.body.222
                                        #   in Loop: Header=BB4_38 Depth=4
	movslq	-856(%rbp), %rax
	movsd	-256(%rbp,%rax,8), %xmm0 # xmm0 = mem[0],zero
	movslq	-856(%rbp), %rax
	subsd	-640(%rbp,%rax,8), %xmm0
	movslq	-868(%rbp), %rax
	cvtsi2sdl	-896(%rbp,%rax,4), %xmm1
	mulsd	%xmm1, %xmm0
	movq	-992(%rbp), %rax
	addsd	(%rax), %xmm0
	movsd	%xmm0, (%rax)
	movslq	-856(%rbp), %rax
	movsd	-304(%rbp,%rax,8), %xmm0 # xmm0 = mem[0],zero
	movslq	-856(%rbp), %rax
	subsd	-688(%rbp,%rax,8), %xmm0
	movslq	-868(%rbp), %rax
	cvtsi2sdl	-928(%rbp,%rax,4), %xmm1
	mulsd	%xmm1, %xmm0
	movq	-1000(%rbp), %rax
	addsd	(%rax), %xmm0
	movsd	%xmm0, (%rax)
	movslq	-856(%rbp), %rax
	movsd	-352(%rbp,%rax,8), %xmm0 # xmm0 = mem[0],zero
	movslq	-856(%rbp), %rax
	subsd	-736(%rbp,%rax,8), %xmm0
	movslq	-868(%rbp), %rax
	cvtsi2sdl	-896(%rbp,%rax,4), %xmm1
	mulsd	%xmm1, %xmm0
	movq	-1008(%rbp), %rax
	addsd	(%rax), %xmm0
	movsd	%xmm0, (%rax)
	movslq	-856(%rbp), %rax
	movsd	-400(%rbp,%rax,8), %xmm0 # xmm0 = mem[0],zero
	movslq	-856(%rbp), %rax
	subsd	-784(%rbp,%rax,8), %xmm0
	movslq	-868(%rbp), %rax
	cvtsi2sdl	-928(%rbp,%rax,4), %xmm1
	mulsd	%xmm1, %xmm0
	movq	-1016(%rbp), %rax
	addsd	(%rax), %xmm0
	movsd	%xmm0, (%rax)
# BB#40:                                # %for.inc.263
                                        #   in Loop: Header=BB4_38 Depth=4
	movl	-856(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -856(%rbp)
	jmp	.LBB4_38
.LBB4_41:                               # %for.end.265
                                        #   in Loop: Header=BB4_32 Depth=3
	jmp	.LBB4_42
.LBB4_42:                               # %for.inc.266
                                        #   in Loop: Header=BB4_32 Depth=3
	movl	-868(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -868(%rbp)
	jmp	.LBB4_32
.LBB4_43:                               # %for.end.268
                                        #   in Loop: Header=BB4_27 Depth=2
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
	movq	-808(%rbp), %rdx
	movslq	%eax, %rsi
	shlq	$3, %rsi
	addq	%rsi, %rdx
	movq	%rdx, -808(%rbp)
	movl	-140(%rbp), %eax
	movq	-840(%rbp), %rdx
	movslq	%eax, %rsi
	shlq	$3, %rsi
	addq	%rsi, %rdx
	movq	%rdx, -840(%rbp)
	movl	-140(%rbp), %eax
	movq	-816(%rbp), %rdx
	movslq	%eax, %rsi
	movq	%rcx, %rdi
	subq	%rsi, %rdi
	shlq	$3, %rdi
	addq	%rdi, %rdx
	movq	%rdx, -816(%rbp)
	movl	-140(%rbp), %eax
	movq	-848(%rbp), %rdx
	movslq	%eax, %rsi
	subq	%rsi, %rcx
	shlq	$3, %rcx
	addq	%rcx, %rdx
	movq	%rdx, -848(%rbp)
# BB#44:                                # %for.inc.283
                                        #   in Loop: Header=BB4_27 Depth=2
	movl	-860(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -860(%rbp)
	jmp	.LBB4_27
.LBB4_45:                               # %for.end.285
                                        #   in Loop: Header=BB4_21 Depth=1
	movq	-792(%rbp), %rdi
	movq	-800(%rbp), %rsi
	movq	-152(%rbp), %rax
	movslq	-864(%rbp), %rcx
	addq	%rcx, %rax
	movl	-132(%rbp), %ecx
	movl	-140(%rbp), %r8d
	movl	-136(%rbp), %r9d
	movq	%rax, %rdx
	callq	transfer_pixels
	movq	-824(%rbp), %rdi
	movq	-832(%rbp), %rsi
	movq	-160(%rbp), %rax
	movslq	-864(%rbp), %rdx
	addq	%rdx, %rax
	movl	-132(%rbp), %ecx
	movl	-140(%rbp), %r8d
	movl	-136(%rbp), %r9d
	movq	%rax, %rdx
	callq	transfer_pixels
	cmpq	$0, -16(%rbp)
	jne	.LBB4_49
# BB#46:                                # %if.then.291
                                        #   in Loop: Header=BB4_21 Depth=1
	movl	$5, %eax
	movl	-136(%rbp), %ecx
	addl	-876(%rbp), %ecx
	movl	%ecx, -876(%rbp)
	movl	-864(%rbp), %ecx
	movl	%eax, -1244(%rbp)       # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-1244(%rbp), %ecx       # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB4_48
# BB#47:                                # %if.then.295
                                        #   in Loop: Header=BB4_21 Depth=1
	cvtsi2sdl	-876(%rbp), %xmm0
	cvtsi2sdl	-880(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -1248(%rbp)       # 4-byte Spill
.LBB4_48:                               # %if.end.300
                                        #   in Loop: Header=BB4_21 Depth=1
	jmp	.LBB4_49
.LBB4_49:                               # %if.end.301
                                        #   in Loop: Header=BB4_21 Depth=1
	jmp	.LBB4_50
.LBB4_50:                               # %for.inc.302
                                        #   in Loop: Header=BB4_21 Depth=1
	movl	-864(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -864(%rbp)
	jmp	.LBB4_21
.LBB4_51:                               # %for.end.304
	movl	$0, -860(%rbp)
.LBB4_52:                               # %for.cond.305
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_54 Depth 2
                                        #       Child Loop BB4_59 Depth 3
                                        #       Child Loop BB4_63 Depth 3
	movl	-860(%rbp), %eax
	cmpl	-136(%rbp), %eax
	jge	.LBB4_74
# BB#53:                                # %for.body.308
                                        #   in Loop: Header=BB4_52 Depth=1
	xorl	%eax, %eax
	movq	-792(%rbp), %rcx
	movslq	-132(%rbp), %rdx
	shlq	$3, %rdx
	movq	%rcx, %rdi
	movl	%eax, %esi
	movl	%eax, -1252(%rbp)       # 4-byte Spill
	callq	memset
	movq	-824(%rbp), %rcx
	movslq	-132(%rbp), %rdx
	shlq	$3, %rdx
	movq	%rcx, %rdi
	movl	-1252(%rbp), %esi       # 4-byte Reload
	callq	memset
	movq	-800(%rbp), %rcx
	movslq	-132(%rbp), %rdx
	shlq	$3, %rdx
	movq	%rcx, %rdi
	movl	-1252(%rbp), %esi       # 4-byte Reload
	callq	memset
	movq	-832(%rbp), %rcx
	movslq	-132(%rbp), %rdx
	shlq	$3, %rdx
	movq	%rcx, %rdi
	movl	-1252(%rbp), %esi       # 4-byte Reload
	callq	memset
	movq	-152(%rbp), %rcx
	movl	-860(%rbp), %eax
	imull	-132(%rbp), %eax
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -176(%rbp)
	movq	-160(%rbp), %rcx
	movl	-860(%rbp), %eax
	imull	-132(%rbp), %eax
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -200(%rbp)
	movq	-176(%rbp), %rcx
	movq	%rcx, -184(%rbp)
	movq	-200(%rbp), %rcx
	movq	%rcx, -208(%rbp)
	movq	-176(%rbp), %rcx
	movslq	-132(%rbp), %rdx
	addq	%rdx, %rcx
	addq	$-1, %rcx
	movq	%rcx, -192(%rbp)
	movq	-200(%rbp), %rcx
	movslq	-132(%rbp), %rdx
	addq	%rdx, %rcx
	addq	$-1, %rcx
	movq	%rcx, -216(%rbp)
	movq	-792(%rbp), %rcx
	movq	%rcx, -808(%rbp)
	movq	-824(%rbp), %rcx
	movq	%rcx, -840(%rbp)
	movq	-800(%rbp), %rcx
	movslq	-132(%rbp), %rdx
	shlq	$3, %rdx
	addq	%rdx, %rcx
	addq	$-8, %rcx
	movq	%rcx, -816(%rbp)
	movq	-832(%rbp), %rcx
	movslq	-132(%rbp), %rdx
	shlq	$3, %rdx
	addq	%rdx, %rcx
	addq	$-8, %rcx
	movq	%rcx, -848(%rbp)
	movq	-184(%rbp), %rcx
	movzbl	(%rcx), %eax
	movl	%eax, -896(%rbp)
	movq	-208(%rbp), %rcx
	movzbl	(%rcx), %eax
	movl	%eax, -912(%rbp)
	movq	-192(%rbp), %rcx
	movzbl	(%rcx), %eax
	movl	%eax, -928(%rbp)
	movq	-216(%rbp), %rcx
	movzbl	(%rcx), %eax
	movl	%eax, -944(%rbp)
	movl	$0, -864(%rbp)
.LBB4_54:                               # %for.cond.347
                                        #   Parent Loop BB4_52 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_59 Depth 3
                                        #       Child Loop BB4_63 Depth 3
	movl	-864(%rbp), %eax
	cmpl	-132(%rbp), %eax
	jge	.LBB4_68
# BB#55:                                # %for.body.350
                                        #   in Loop: Header=BB4_54 Depth=2
	cmpl	$4, -864(%rbp)
	jge	.LBB4_57
# BB#56:                                # %cond.true.357
                                        #   in Loop: Header=BB4_54 Depth=2
	movl	-864(%rbp), %eax
	movl	%eax, -1256(%rbp)       # 4-byte Spill
	jmp	.LBB4_58
.LBB4_57:                               # %cond.false.358
                                        #   in Loop: Header=BB4_54 Depth=2
	movl	$4, %eax
	movl	%eax, -1256(%rbp)       # 4-byte Spill
	jmp	.LBB4_58
.LBB4_58:                               # %cond.end.359
                                        #   in Loop: Header=BB4_54 Depth=2
	movl	-1256(%rbp), %eax       # 4-byte Reload
	movl	%eax, -872(%rbp)
	movq	-808(%rbp), %rcx
	movq	%rcx, -1024(%rbp)
	movq	-816(%rbp), %rcx
	movq	%rcx, -1032(%rbp)
	movq	-840(%rbp), %rcx
	movq	%rcx, -1040(%rbp)
	movq	-848(%rbp), %rcx
	movq	%rcx, -1048(%rbp)
	movl	$0, -852(%rbp)
.LBB4_59:                               # %for.cond.361
                                        #   Parent Loop BB4_52 Depth=1
                                        #     Parent Loop BB4_54 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-852(%rbp), %eax
	cmpl	-872(%rbp), %eax
	jg	.LBB4_62
# BB#60:                                # %for.body.364
                                        #   in Loop: Header=BB4_59 Depth=3
	xorl	%eax, %eax
	movslq	-852(%rbp), %rcx
	movsd	-256(%rbp,%rcx,8), %xmm0 # xmm0 = mem[0],zero
	movl	%eax, %edx
	subl	-852(%rbp), %edx
	movslq	%edx, %rcx
	movq	-184(%rbp), %rsi
	movzbl	(%rsi,%rcx), %edx
	cvtsi2sdl	%edx, %xmm1
	mulsd	%xmm1, %xmm0
	movslq	-852(%rbp), %rcx
	movsd	-448(%rbp,%rcx,8), %xmm1 # xmm1 = mem[0],zero
	movl	%eax, %edx
	subl	-852(%rbp), %edx
	movslq	%edx, %rcx
	movq	-808(%rbp), %rsi
	mulsd	(%rsi,%rcx,8), %xmm1
	subsd	%xmm1, %xmm0
	movq	-1024(%rbp), %rcx
	addsd	(%rcx), %xmm0
	movsd	%xmm0, (%rcx)
	movslq	-852(%rbp), %rcx
	movsd	-304(%rbp,%rcx,8), %xmm0 # xmm0 = mem[0],zero
	movslq	-852(%rbp), %rcx
	movq	-192(%rbp), %rsi
	movzbl	(%rsi,%rcx), %edx
	cvtsi2sdl	%edx, %xmm1
	mulsd	%xmm1, %xmm0
	movslq	-852(%rbp), %rcx
	movsd	-496(%rbp,%rcx,8), %xmm1 # xmm1 = mem[0],zero
	movslq	-852(%rbp), %rcx
	movq	-816(%rbp), %rsi
	mulsd	(%rsi,%rcx,8), %xmm1
	subsd	%xmm1, %xmm0
	movq	-1032(%rbp), %rcx
	addsd	(%rcx), %xmm0
	movsd	%xmm0, (%rcx)
	movslq	-852(%rbp), %rcx
	movsd	-352(%rbp,%rcx,8), %xmm0 # xmm0 = mem[0],zero
	movl	%eax, %edx
	subl	-852(%rbp), %edx
	movslq	%edx, %rcx
	movq	-208(%rbp), %rsi
	movzbl	(%rsi,%rcx), %edx
	cvtsi2sdl	%edx, %xmm1
	mulsd	%xmm1, %xmm0
	movslq	-852(%rbp), %rcx
	movsd	-544(%rbp,%rcx,8), %xmm1 # xmm1 = mem[0],zero
	subl	-852(%rbp), %eax
	movslq	%eax, %rcx
	movq	-840(%rbp), %rsi
	mulsd	(%rsi,%rcx,8), %xmm1
	subsd	%xmm1, %xmm0
	movq	-1040(%rbp), %rcx
	addsd	(%rcx), %xmm0
	movsd	%xmm0, (%rcx)
	movslq	-852(%rbp), %rcx
	movsd	-400(%rbp,%rcx,8), %xmm0 # xmm0 = mem[0],zero
	movslq	-852(%rbp), %rcx
	movq	-216(%rbp), %rsi
	movzbl	(%rsi,%rcx), %eax
	cvtsi2sdl	%eax, %xmm1
	mulsd	%xmm1, %xmm0
	movslq	-852(%rbp), %rcx
	movsd	-592(%rbp,%rcx,8), %xmm1 # xmm1 = mem[0],zero
	movslq	-852(%rbp), %rcx
	movq	-848(%rbp), %rsi
	mulsd	(%rsi,%rcx,8), %xmm1
	subsd	%xmm1, %xmm0
	movq	-1048(%rbp), %rcx
	addsd	(%rcx), %xmm0
	movsd	%xmm0, (%rcx)
# BB#61:                                # %for.inc.425
                                        #   in Loop: Header=BB4_59 Depth=3
	movl	-852(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -852(%rbp)
	jmp	.LBB4_59
.LBB4_62:                               # %for.end.427
                                        #   in Loop: Header=BB4_54 Depth=2
	movl	-852(%rbp), %eax
	movl	%eax, -856(%rbp)
.LBB4_63:                               # %for.cond.428
                                        #   Parent Loop BB4_52 Depth=1
                                        #     Parent Loop BB4_54 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$4, -856(%rbp)
	jg	.LBB4_66
# BB#64:                                # %for.body.431
                                        #   in Loop: Header=BB4_63 Depth=3
	movslq	-856(%rbp), %rax
	movsd	-256(%rbp,%rax,8), %xmm0 # xmm0 = mem[0],zero
	movslq	-856(%rbp), %rax
	subsd	-640(%rbp,%rax,8), %xmm0
	cvtsi2sdl	-896(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movq	-1024(%rbp), %rax
	addsd	(%rax), %xmm0
	movsd	%xmm0, (%rax)
	movslq	-856(%rbp), %rax
	movsd	-304(%rbp,%rax,8), %xmm0 # xmm0 = mem[0],zero
	movslq	-856(%rbp), %rax
	subsd	-688(%rbp,%rax,8), %xmm0
	cvtsi2sdl	-928(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movq	-1032(%rbp), %rax
	addsd	(%rax), %xmm0
	movsd	%xmm0, (%rax)
	movslq	-856(%rbp), %rax
	movsd	-352(%rbp,%rax,8), %xmm0 # xmm0 = mem[0],zero
	movslq	-856(%rbp), %rax
	subsd	-736(%rbp,%rax,8), %xmm0
	cvtsi2sdl	-912(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movq	-1040(%rbp), %rax
	addsd	(%rax), %xmm0
	movsd	%xmm0, (%rax)
	movslq	-856(%rbp), %rax
	movsd	-400(%rbp,%rax,8), %xmm0 # xmm0 = mem[0],zero
	movslq	-856(%rbp), %rax
	subsd	-784(%rbp,%rax,8), %xmm0
	cvtsi2sdl	-944(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movq	-1048(%rbp), %rax
	addsd	(%rax), %xmm0
	movsd	%xmm0, (%rax)
# BB#65:                                # %for.inc.468
                                        #   in Loop: Header=BB4_63 Depth=3
	movl	-856(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -856(%rbp)
	jmp	.LBB4_63
.LBB4_66:                               # %for.end.470
                                        #   in Loop: Header=BB4_54 Depth=2
	movq	-184(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -184(%rbp)
	movq	-208(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -208(%rbp)
	movq	-192(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -192(%rbp)
	movq	-216(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -216(%rbp)
	movq	-808(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -808(%rbp)
	movq	-840(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -840(%rbp)
	movq	-816(%rbp), %rax
	addq	$-8, %rax
	movq	%rax, -816(%rbp)
	movq	-848(%rbp), %rax
	addq	$-8, %rax
	movq	%rax, -848(%rbp)
# BB#67:                                # %for.inc.478
                                        #   in Loop: Header=BB4_54 Depth=2
	movl	-864(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -864(%rbp)
	jmp	.LBB4_54
.LBB4_68:                               # %for.end.480
                                        #   in Loop: Header=BB4_52 Depth=1
	movl	$1, %eax
	movq	-792(%rbp), %rdi
	movq	-800(%rbp), %rsi
	movq	-152(%rbp), %rcx
	movl	-860(%rbp), %edx
	imull	-132(%rbp), %edx
	movslq	%edx, %r8
	addq	%r8, %rcx
	movl	-132(%rbp), %r9d
	movq	%rcx, %rdx
	movl	%eax, %ecx
	movl	%eax, %r8d
	callq	transfer_pixels
	movl	$1, %eax
	movq	-824(%rbp), %rdi
	movq	-832(%rbp), %rsi
	movq	-160(%rbp), %rdx
	movl	-860(%rbp), %ecx
	imull	-132(%rbp), %ecx
	movslq	%ecx, %r10
	addq	%r10, %rdx
	movl	-132(%rbp), %r9d
	movl	%eax, %ecx
	movl	%eax, %r8d
	callq	transfer_pixels
	cmpq	$0, -16(%rbp)
	jne	.LBB4_72
# BB#69:                                # %if.then.488
                                        #   in Loop: Header=BB4_52 Depth=1
	movl	$5, %eax
	movl	-132(%rbp), %ecx
	addl	-876(%rbp), %ecx
	movl	%ecx, -876(%rbp)
	movl	-860(%rbp), %ecx
	movl	%eax, -1260(%rbp)       # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-1260(%rbp), %ecx       # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB4_71
# BB#70:                                # %if.then.493
                                        #   in Loop: Header=BB4_52 Depth=1
	cvtsi2sdl	-876(%rbp), %xmm0
	cvtsi2sdl	-880(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -1264(%rbp)       # 4-byte Spill
.LBB4_71:                               # %if.end.498
                                        #   in Loop: Header=BB4_52 Depth=1
	jmp	.LBB4_72
.LBB4_72:                               # %if.end.499
                                        #   in Loop: Header=BB4_52 Depth=1
	jmp	.LBB4_73
.LBB4_73:                               # %for.inc.500
                                        #   in Loop: Header=BB4_52 Depth=1
	movl	-860(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -860(%rbp)
	jmp	.LBB4_52
.LBB4_74:                               # %for.end.502
	movq	-152(%rbp), %rdi
	movq	-160(%rbp), %rsi
	movl	-132(%rbp), %eax
	imull	-136(%rbp), %eax
	movsd	cvals+16, %xmm0         # xmm0 = mem[0],zero
	movl	%eax, %edx
	callq	compute_ramp
	leaq	-64(%rbp), %rdi
	xorl	%eax, %eax
	movsd	%xmm0, -976(%rbp)
	movq	-8(%rbp), %rsi
	movl	-124(%rbp), %edx
	movl	-128(%rbp), %ecx
	movl	-132(%rbp), %r8d
	movl	-136(%rbp), %r9d
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	movl	%eax, -1268(%rbp)       # 4-byte Spill
	callq	gimp_pixel_rgn_init
	cmpq	$0, -16(%rbp)
	je	.LBB4_76
# BB#75:                                # %if.then.506
	movl	$1, %edi
	leaq	-64(%rbp), %rsi
	movb	$0, %al
	callq	gimp_pixel_rgns_register
	movl	$1, %edi
	movl	%edi, %esi
	movq	%rax, -120(%rbp)
	movl	-132(%rbp), %edi
	imull	-136(%rbp), %edi
	imull	-140(%rbp), %edi
	movslq	%edi, %rdi
	callq	g_malloc_n
	movq	%rax, -984(%rbp)
	jmp	.LBB4_77
.LBB4_76:                               # %if.else.512
	leaq	-112(%rbp), %rdi
	movl	$1, %eax
	movq	-8(%rbp), %rsi
	movl	-124(%rbp), %edx
	movl	-128(%rbp), %ecx
	movl	-132(%rbp), %r8d
	movl	-136(%rbp), %r9d
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	movl	%eax, -1272(%rbp)       # 4-byte Spill
	callq	gimp_pixel_rgn_init
	movl	$2, %edi
	leaq	-64(%rbp), %rsi
	leaq	-112(%rbp), %rdx
	movb	$0, %al
	callq	gimp_pixel_rgns_register
	movq	%rax, -120(%rbp)
.LBB4_77:                               # %if.end.514
	jmp	.LBB4_78
.LBB4_78:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_83 Depth 2
                                        #       Child Loop BB4_85 Depth 3
	cmpq	$0, -120(%rbp)
	je	.LBB4_120
# BB#79:                                # %while.body
                                        #   in Loop: Header=BB4_78 Depth=1
	xorps	%xmm0, %xmm0
	movq	-64(%rbp), %rax
	movq	%rax, -1056(%rbp)
	movq	-152(%rbp), %rax
	movl	-36(%rbp), %ecx
	subl	-128(%rbp), %ecx
	imull	-132(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movl	-40(%rbp), %ecx
	subl	-124(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -1072(%rbp)
	movq	-160(%rbp), %rax
	movl	-36(%rbp), %ecx
	subl	-128(%rbp), %ecx
	imull	-132(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movl	-40(%rbp), %ecx
	subl	-124(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -1080(%rbp)
	movsd	%xmm0, -1096(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB4_81
# BB#80:                                # %if.then.535
                                        #   in Loop: Header=BB4_78 Depth=1
	movq	-984(%rbp), %rax
	movl	-36(%rbp), %ecx
	subl	-128(%rbp), %ecx
	imull	-132(%rbp), %ecx
	movl	-40(%rbp), %edx
	subl	-124(%rbp), %edx
	addl	%edx, %ecx
	imull	-140(%rbp), %ecx
	movslq	%ecx, %rsi
	addq	%rsi, %rax
	movq	%rax, -1064(%rbp)
	jmp	.LBB4_82
.LBB4_81:                               # %if.else.545
                                        #   in Loop: Header=BB4_78 Depth=1
	movq	-112(%rbp), %rax
	movq	%rax, -1064(%rbp)
.LBB4_82:                               # %if.end.547
                                        #   in Loop: Header=BB4_78 Depth=1
	movl	$0, -860(%rbp)
.LBB4_83:                               # %for.cond.548
                                        #   Parent Loop BB4_78 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_85 Depth 3
	movl	-860(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB4_117
# BB#84:                                # %for.body.551
                                        #   in Loop: Header=BB4_83 Depth=2
	movl	$0, -864(%rbp)
.LBB4_85:                               # %for.cond.552
                                        #   Parent Loop BB4_78 Depth=1
                                        #     Parent Loop BB4_83 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-864(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jge	.LBB4_112
# BB#86:                                # %for.body.555
                                        #   in Loop: Header=BB4_85 Depth=3
	movslq	-864(%rbp), %rax
	movq	-1080(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cmpl	$0, %edx
	je	.LBB4_97
# BB#87:                                # %if.then.561
                                        #   in Loop: Header=BB4_85 Depth=3
	movslq	-864(%rbp), %rax
	movq	-1072(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cvtsi2sdl	%edx, %xmm0
	movq	-1080(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cvtsi2sdl	%edx, %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -1088(%rbp)
	movsd	-1088(%rbp), %xmm0      # xmm0 = mem[0],zero
	movsd	cvals+8, %xmm1          # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB4_95
# BB#88:                                # %if.then.571
                                        #   in Loop: Header=BB4_85 Depth=3
	xorps	%xmm0, %xmm0
	movsd	-976(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB4_90
	jp	.LBB4_90
# BB#89:                                # %if.then.574
                                        #   in Loop: Header=BB4_85 Depth=3
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -1096(%rbp)
	jmp	.LBB4_94
.LBB4_90:                               # %if.else.575
                                        #   in Loop: Header=BB4_85 Depth=3
	movsd	-976(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-976(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	cvals+8, %xmm2          # xmm2 = mem[0],zero
	subsd	-1088(%rbp), %xmm2
	ucomisd	%xmm1, %xmm2
	movsd	%xmm0, -1280(%rbp)      # 8-byte Spill
	jbe	.LBB4_92
# BB#91:                                # %cond.true.579
                                        #   in Loop: Header=BB4_85 Depth=3
	movsd	-976(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -1288(%rbp)      # 8-byte Spill
	jmp	.LBB4_93
.LBB4_92:                               # %cond.false.580
                                        #   in Loop: Header=BB4_85 Depth=3
	movsd	cvals+8, %xmm0          # xmm0 = mem[0],zero
	subsd	-1088(%rbp), %xmm0
	movsd	%xmm0, -1288(%rbp)      # 8-byte Spill
.LBB4_93:                               # %cond.end.582
                                        #   in Loop: Header=BB4_85 Depth=3
	movsd	-1288(%rbp), %xmm0      # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-1280(%rbp), %xmm1      # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	divsd	-976(%rbp), %xmm1
	movsd	%xmm1, -1096(%rbp)
.LBB4_94:                               # %if.end.586
                                        #   in Loop: Header=BB4_85 Depth=3
	jmp	.LBB4_96
.LBB4_95:                               # %if.else.587
                                        #   in Loop: Header=BB4_85 Depth=3
	movsd	.LCPI4_2, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -1096(%rbp)
.LBB4_96:                               # %if.end.588
                                        #   in Loop: Header=BB4_85 Depth=3
	jmp	.LBB4_97
.LBB4_97:                               # %if.end.589
                                        #   in Loop: Header=BB4_85 Depth=3
	movsd	.LCPI4_4, %xmm0         # xmm0 = mem[0],zero
	movslq	-864(%rbp), %rax
	movq	-1072(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cvtsi2sdl	%edx, %xmm1
	mulsd	-1096(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB4_99
# BB#98:                                # %cond.true.597
                                        #   in Loop: Header=BB4_85 Depth=3
	movsd	.LCPI4_4, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -1296(%rbp)      # 8-byte Spill
	jmp	.LBB4_103
.LBB4_99:                               # %cond.false.598
                                        #   in Loop: Header=BB4_85 Depth=3
	xorps	%xmm0, %xmm0
	movslq	-864(%rbp), %rax
	movq	-1072(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cvtsi2sdl	%edx, %xmm1
	mulsd	-1096(%rbp), %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB4_101
# BB#100:                               # %cond.true.606
                                        #   in Loop: Header=BB4_85 Depth=3
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -1304(%rbp)      # 8-byte Spill
	jmp	.LBB4_102
.LBB4_101:                              # %cond.false.607
                                        #   in Loop: Header=BB4_85 Depth=3
	movslq	-864(%rbp), %rax
	movq	-1072(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cvtsi2sdl	%edx, %xmm0
	mulsd	-1096(%rbp), %xmm0
	movsd	%xmm0, -1304(%rbp)      # 8-byte Spill
.LBB4_102:                              # %cond.end.613
                                        #   in Loop: Header=BB4_85 Depth=3
	movsd	-1304(%rbp), %xmm0      # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -1296(%rbp)      # 8-byte Spill
.LBB4_103:                              # %cond.end.615
                                        #   in Loop: Header=BB4_85 Depth=3
	movsd	-1296(%rbp), %xmm0      # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -1104(%rbp)
	cmpl	$3, -140(%rbp)
	jge	.LBB4_107
# BB#104:                               # %if.then.619
                                        #   in Loop: Header=BB4_85 Depth=3
	cvttsd2si	-1104(%rbp), %eax
	movb	%al, %cl
	movl	-864(%rbp), %eax
	imull	-140(%rbp), %eax
	movslq	%eax, %rdx
	movq	-1064(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
	cmpl	$0, -144(%rbp)
	je	.LBB4_106
# BB#105:                               # %if.then.625
                                        #   in Loop: Header=BB4_85 Depth=3
	movl	-864(%rbp), %eax
	imull	-48(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-1056(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movl	-864(%rbp), %eax
	imull	-140(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-1064(%rbp), %rdx
	movb	%sil, (%rdx,%rcx)
.LBB4_106:                              # %if.end.635
                                        #   in Loop: Header=BB4_85 Depth=3
	jmp	.LBB4_110
.LBB4_107:                              # %if.else.636
                                        #   in Loop: Header=BB4_85 Depth=3
	leaq	-1108(%rbp), %rdi
	leaq	-1112(%rbp), %rsi
	leaq	-1116(%rbp), %rdx
	movl	-864(%rbp), %eax
	imull	-48(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rcx
	movq	-1056(%rbp), %r8
	movzbl	(%r8,%rcx), %eax
	movl	%eax, -1108(%rbp)
	movl	-864(%rbp), %eax
	imull	-48(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-1056(%rbp), %r8
	movzbl	(%r8,%rcx), %eax
	movl	%eax, -1112(%rbp)
	movl	-864(%rbp), %eax
	imull	-48(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	-1056(%rbp), %r8
	movzbl	(%r8,%rcx), %eax
	movl	%eax, -1116(%rbp)
	callq	gimp_rgb_to_hsl_int
	leaq	-1108(%rbp), %rdi
	leaq	-1112(%rbp), %rsi
	leaq	-1116(%rbp), %rdx
	cvttsd2si	-1104(%rbp), %eax
	movl	%eax, -1116(%rbp)
	callq	gimp_hsl_to_rgb_int
	movl	-1108(%rbp), %eax
	movb	%al, %r9b
	movl	-864(%rbp), %eax
	imull	-140(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rcx
	movq	-1064(%rbp), %rdx
	movb	%r9b, (%rdx,%rcx)
	movl	-1112(%rbp), %eax
	movb	%al, %r9b
	movl	-864(%rbp), %eax
	imull	-140(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-1064(%rbp), %rdx
	movb	%r9b, (%rdx,%rcx)
	movl	-1116(%rbp), %eax
	movb	%al, %r9b
	movl	-864(%rbp), %eax
	imull	-140(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	-1064(%rbp), %rdx
	movb	%r9b, (%rdx,%rcx)
	cmpl	$0, -144(%rbp)
	je	.LBB4_109
# BB#108:                               # %if.then.673
                                        #   in Loop: Header=BB4_85 Depth=3
	movl	-864(%rbp), %eax
	imull	-48(%rbp), %eax
	addl	$3, %eax
	movslq	%eax, %rcx
	movq	-1056(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movl	-864(%rbp), %eax
	imull	-140(%rbp), %eax
	addl	$3, %eax
	movslq	%eax, %rcx
	movq	-1064(%rbp), %rdx
	movb	%sil, (%rdx,%rcx)
.LBB4_109:                              # %if.end.683
                                        #   in Loop: Header=BB4_85 Depth=3
	jmp	.LBB4_110
.LBB4_110:                              # %if.end.684
                                        #   in Loop: Header=BB4_85 Depth=3
	jmp	.LBB4_111
.LBB4_111:                              # %for.inc.685
                                        #   in Loop: Header=BB4_85 Depth=3
	movl	-864(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -864(%rbp)
	jmp	.LBB4_85
.LBB4_112:                              # %for.end.687
                                        #   in Loop: Header=BB4_83 Depth=2
	movl	-44(%rbp), %eax
	movq	-1056(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -1056(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB4_114
# BB#113:                               # %if.then.691
                                        #   in Loop: Header=BB4_83 Depth=2
	movl	-132(%rbp), %eax
	imull	-140(%rbp), %eax
	movq	-1064(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -1064(%rbp)
	jmp	.LBB4_115
.LBB4_114:                              # %if.else.695
                                        #   in Loop: Header=BB4_83 Depth=2
	movl	-92(%rbp), %eax
	movq	-1064(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -1064(%rbp)
.LBB4_115:                              # %if.end.699
                                        #   in Loop: Header=BB4_83 Depth=2
	movl	-132(%rbp), %eax
	movq	-1072(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -1072(%rbp)
	movl	-132(%rbp), %eax
	movq	-1080(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -1080(%rbp)
# BB#116:                               # %for.inc.704
                                        #   in Loop: Header=BB4_83 Depth=2
	movl	-860(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -860(%rbp)
	jmp	.LBB4_83
.LBB4_117:                              # %for.end.706
                                        #   in Loop: Header=BB4_78 Depth=1
	cmpq	$0, -16(%rbp)
	jne	.LBB4_119
# BB#118:                               # %if.then.708
                                        #   in Loop: Header=BB4_78 Depth=1
	movl	-32(%rbp), %eax
	imull	-28(%rbp), %eax
	addl	-876(%rbp), %eax
	movl	%eax, -876(%rbp)
	cvtsi2sdl	-876(%rbp), %xmm0
	cvtsi2sdl	-880(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -1308(%rbp)       # 4-byte Spill
.LBB4_119:                              # %if.end.717
                                        #   in Loop: Header=BB4_78 Depth=1
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_pixel_rgns_process
	movq	%rax, -120(%rbp)
	jmp	.LBB4_78
.LBB4_120:                              # %while.end
	cmpq	$0, -16(%rbp)
	je	.LBB4_122
# BB#121:                               # %if.then.720
	movq	-16(%rbp), %rdi
	movq	-984(%rbp), %rsi
	movl	-132(%rbp), %eax
	imull	-140(%rbp), %eax
	movl	%eax, %edx
	callq	gimp_preview_draw_buffer
	movq	-984(%rbp), %rdi
	callq	g_free
	jmp	.LBB4_123
.LBB4_122:                              # %if.else.722
	movsd	.LCPI4_2, %xmm0         # xmm0 = mem[0],zero
	callq	gimp_progress_update
	movq	-8(%rbp), %rdi
	movl	%eax, -1312(%rbp)       # 4-byte Spill
	callq	gimp_drawable_flush
	movl	$1, %esi
	movq	-8(%rbp), %rdi
	movl	(%rdi), %edi
	callq	gimp_drawable_merge_shadow
	movq	-8(%rbp), %rcx
	movl	(%rcx), %edi
	movl	-124(%rbp), %esi
	movl	-128(%rbp), %edx
	movl	-132(%rbp), %ecx
	movl	-136(%rbp), %r8d
	movl	%eax, -1316(%rbp)       # 4-byte Spill
	callq	gimp_drawable_update
	movl	%eax, -1320(%rbp)       # 4-byte Spill
.LBB4_123:                              # %if.end.728
	movq	-792(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-824(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-800(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-832(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-168(%rbp), %rdi
	callq	g_free
	movq	-152(%rbp), %rdi
	callq	g_free
	movq	-160(%rbp), %rdi
	callq	g_free
.LBB4_124:                              # %return
	addq	$1344, %rsp             # imm = 0x540
	popq	%rbp
	retq
.Lfunc_end4:
	.size	cartoon, .Lfunc_end4-cartoon
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
.Ltmp22:
	.cfi_def_cfa_offset 16
.Ltmp23:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp24:
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
.Ltmp25:
	.cfi_def_cfa_offset 16
.Ltmp26:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp27:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%r8d, -32(%rbp)
	movl	%r9d, -36(%rbp)
	movl	$0, -40(%rbp)
.LBB6_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_3 Depth 2
	movl	-40(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB6_16
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	$0, -44(%rbp)
.LBB6_3:                                # %for.cond.1
                                        #   Parent Loop BB6_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-44(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jge	.LBB6_11
# BB#4:                                 # %for.body.3
                                        #   in Loop: Header=BB6_3 Depth=2
	movsd	.LCPI6_0, %xmm0         # xmm0 = mem[0],zero
	movslq	-44(%rbp), %rax
	movq	-8(%rbp), %rcx
	movsd	(%rcx,%rax,8), %xmm1    # xmm1 = mem[0],zero
	movslq	-44(%rbp), %rax
	movq	-16(%rbp), %rcx
	addsd	(%rcx,%rax,8), %xmm1
	movslq	-44(%rbp), %rax
	movsd	%xmm1, -80(%rbp,%rax,8)
	movslq	-44(%rbp), %rax
	movsd	-80(%rbp,%rax,8), %xmm1 # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB6_6
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB6_3 Depth=2
	movsd	.LCPI6_0, %xmm0         # xmm0 = mem[0],zero
	movslq	-44(%rbp), %rax
	movsd	%xmm0, -80(%rbp,%rax,8)
	jmp	.LBB6_9
.LBB6_6:                                # %if.else
                                        #   in Loop: Header=BB6_3 Depth=2
	xorps	%xmm0, %xmm0
	movslq	-44(%rbp), %rax
	ucomisd	-80(%rbp,%rax,8), %xmm0
	jbe	.LBB6_8
# BB#7:                                 # %if.then.16
                                        #   in Loop: Header=BB6_3 Depth=2
	xorps	%xmm0, %xmm0
	movslq	-44(%rbp), %rax
	movsd	%xmm0, -80(%rbp,%rax,8)
.LBB6_8:                                # %if.end
                                        #   in Loop: Header=BB6_3 Depth=2
	jmp	.LBB6_9
.LBB6_9:                                # %if.end.19
                                        #   in Loop: Header=BB6_3 Depth=2
	jmp	.LBB6_10
.LBB6_10:                               # %for.inc
                                        #   in Loop: Header=BB6_3 Depth=2
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB6_3
.LBB6_11:                               # %for.end
                                        #   in Loop: Header=BB6_1 Depth=1
	cmpl	$2, -32(%rbp)
	jle	.LBB6_13
# BB#12:                                # %if.then.21
                                        #   in Loop: Header=BB6_1 Depth=1
	cvttsd2si	-80(%rbp), %edi
	cvttsd2si	-72(%rbp), %esi
	cvttsd2si	-64(%rbp), %edx
	callq	gimp_rgb_to_l_int
	movb	%al, %cl
	movq	-24(%rbp), %r8
	movb	%cl, (%r8)
	jmp	.LBB6_14
.LBB6_13:                               # %if.else.28
                                        #   in Loop: Header=BB6_1 Depth=1
	cvttsd2si	-80(%rbp), %eax
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	movb	%cl, (%rdx)
.LBB6_14:                               # %if.end.31
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	-32(%rbp), %eax
	movq	-8(%rbp), %rcx
	movslq	%eax, %rdx
	shlq	$3, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -8(%rbp)
	movl	-32(%rbp), %eax
	movq	-16(%rbp), %rcx
	movslq	%eax, %rdx
	shlq	$3, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -16(%rbp)
	movl	-28(%rbp), %eax
	movq	-24(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -24(%rbp)
# BB#15:                                # %for.inc.36
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB6_1
.LBB6_16:                               # %for.end.38
	addq	$80, %rsp
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
	.quad	4636737291354636288     # double 100
	.text
	.align	16, 0x90
	.type	compute_ramp,@function
compute_ramp:                           # @compute_ramp
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
	subq	$480, %rsp              # imm = 0x1E0
	xorl	%eax, %eax
	movl	$400, %ecx              # imm = 0x190
	movl	%ecx, %r8d
	leaq	-448(%rbp), %r9
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movsd	%xmm0, -40(%rbp)
	movq	%r9, %rdi
	movl	%eax, %esi
	movq	%r8, %rdx
	callq	memset
	movl	$0, -460(%rbp)
	movl	$0, -464(%rbp)
.LBB7_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-464(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB7_8
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	-24(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB7_6
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB7_1 Depth=1
	movsd	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movzbl	(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm1
	movq	-24(%rbp), %rax
	movzbl	(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm2
	divsd	%xmm2, %xmm1
	movsd	%xmm1, -456(%rbp)
	ucomisd	-456(%rbp), %xmm0
	jbe	.LBB7_5
# BB#4:                                 # %if.then.7
                                        #   in Loop: Header=BB7_1 Depth=1
	movsd	.LCPI7_1, %xmm0         # xmm0 = mem[0],zero
	mulsd	-456(%rbp), %xmm0
	cvttsd2si	%xmm0, %eax
	movslq	%eax, %rcx
	movl	-448(%rbp,%rcx,4), %eax
	addl	$1, %eax
	movl	%eax, -448(%rbp,%rcx,4)
	movl	-460(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -460(%rbp)
.LBB7_5:                                # %if.end
                                        #   in Loop: Header=BB7_1 Depth=1
	jmp	.LBB7_6
.LBB7_6:                                # %if.end.10
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
# BB#7:                                 # %for.inc
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	-464(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -464(%rbp)
	jmp	.LBB7_1
.LBB7_8:                                # %for.end
	xorps	%xmm0, %xmm0
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB7_9
	jp	.LBB7_9
	jmp	.LBB7_10
.LBB7_9:                                # %lor.lhs.false
	cmpl	$0, -460(%rbp)
	jne	.LBB7_11
.LBB7_10:                               # %if.then.16
	movsd	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB7_18
.LBB7_11:                               # %if.end.17
	movl	$0, -468(%rbp)
	movl	$0, -464(%rbp)
.LBB7_12:                               # %for.cond.18
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$100, -464(%rbp)
	jge	.LBB7_17
# BB#13:                                # %for.body.21
                                        #   in Loop: Header=BB7_12 Depth=1
	movslq	-464(%rbp), %rax
	movl	-448(%rbp,%rax,4), %ecx
	addl	-468(%rbp), %ecx
	movl	%ecx, -468(%rbp)
	cvtsi2sdl	-468(%rbp), %xmm0
	cvtsi2sdl	-460(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	ucomisd	-40(%rbp), %xmm0
	jbe	.LBB7_15
# BB#14:                                # %if.then.30
	movsd	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI7_1, %xmm1         # xmm1 = mem[0],zero
	cvtsi2sdl	-464(%rbp), %xmm2
	divsd	%xmm1, %xmm2
	subsd	%xmm2, %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB7_18
.LBB7_15:                               # %if.end.33
                                        #   in Loop: Header=BB7_12 Depth=1
	jmp	.LBB7_16
.LBB7_16:                               # %for.inc.34
                                        #   in Loop: Header=BB7_12 Depth=1
	movl	-464(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -464(%rbp)
	jmp	.LBB7_12
.LBB7_17:                               # %for.end.36
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)
.LBB7_18:                               # %return
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	addq	$480, %rsp              # imm = 0x1E0
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
	.asciz	"mask-radius"
	.size	.L.str.6, 12

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Cartoon mask radius (radius of pixel neighborhood)"
	.size	.L.str.7, 51

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"pct-black"
	.size	.L.str.8, 10

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Percentage of darkened pixels to set to black (0.0 - 1.0)"
	.size	.L.str.9, 58

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Propagates dark values in an image based on each pixel's relative darkness to a neighboring average. The idea behind this filter is to give the look of a black felt pen drawing subsequently shaded with color. This is achieved by darkening areas of the image which are measured to be darker than a neighborhood average. In this way, sufficiently large shifts in intensity are darkened to black. The rate at which they are darkened to black is determined by the second pct_black parameter. The mask_radius parameter controls the size of the pixel neighborhood over which the average intensity is computed and then compared to each pixel in the neighborhood to decide whether or not to darken it to black. Large values for mask_radius result in very thick black areas bordering the shaded regions of color and much less detail for black areas everywhere including inside regions of color. Small values result in more subtle pen strokes and detail everywhere. Small values for the pct_black make the blend from the color regions to the black border lines smoother and the lines themselves thinner and less noticable; larger values achieve the opposite effect."
	.size	.L.str.10, 1156

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"plug-in-cartoon"
	.size	.L.str.11, 16

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Simulate a cartoon by enhancing edges"
	.size	.L.str.12, 38

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
	.asciz	"2001"
	.size	.L.str.15, 5

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Ca_rtoon..."
	.size	.L.str.16, 12

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"RGB*, GRAY*"
	.size	.L.str.17, 12

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"<Image>/Filters/Artistic"
	.size	.L.str.18, 25

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

	.type	cvals,@object           # @cvals
	.data
	.align	8
cvals:
	.quad	4619567317775286272     # double 7
	.quad	4607182418800017408     # double 1
	.quad	4596373779694328218     # double 0.20000000000000001
	.size	cvals, 24

	.type	.L.str.21,@object       # @.str.21
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.21:
	.asciz	"Cartoon"
	.size	.L.str.21, 8

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Cannot operate on indexed color images."
	.size	.L.str.22, 40

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"cartoon"
	.size	.L.str.23, 8

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"gimp-cartoon"
	.size	.L.str.24, 13

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
	.asciz	"invalidated"
	.size	.L.str.27, 12

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"_Mask radius:"
	.size	.L.str.28, 14

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"value-changed"
	.size	.L.str.29, 14

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"_Percent black:"
	.size	.L.str.30, 16


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
