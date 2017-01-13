	.text
	.file	"softglow.bc"
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
	movabsq	$.L.str.21, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.21, %rdi
	movabsq	$.L.str.22, %rsi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.21, %rdi
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
	movabsq	$.L.str.13, %rdi
	movabsq	$svals, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movq	-56(%rbp), %rdi
	movl	%eax, -104(%rbp)        # 4-byte Spill
	callq	softglow_dialog
	cmpl	$0, %eax
	jne	.LBB1_5
# BB#4:                                 # %if.then
	jmp	.LBB1_20
.LBB1_5:                                # %if.end
	jmp	.LBB1_9
.LBB1_6:                                # %sw.bb.9
	movq	-24(%rbp), %rax
	movsd	128(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, svals
	movq	-24(%rbp), %rax
	movsd	168(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, svals+8
	movq	-24(%rbp), %rax
	movsd	208(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, svals+16
	jmp	.LBB1_9
.LBB1_7:                                # %sw.bb.18
	movabsq	$.L.str.13, %rdi
	movabsq	$svals, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movl	%eax, -108(%rbp)        # 4-byte Spill
	jmp	.LBB1_9
.LBB1_8:                                # %sw.default
	jmp	.LBB1_9
.LBB1_9:                                # %sw.epilog
	cmpl	$3, -60(%rbp)
	jne	.LBB1_19
# BB#10:                                # %if.then.20
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
.LBB1_12:                               # %if.then.26
	movabsq	$.L.str.23, %rdi
	callq	gimp_progress_init
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	-56(%rbp), %rdi
	movl	%eax, -112(%rbp)        # 4-byte Spill
	callq	softglow
	cmpl	$1, -44(%rbp)
	je	.LBB1_14
# BB#13:                                # %if.then.29
	callq	gimp_displays_flush
	movl	%eax, -116(%rbp)        # 4-byte Spill
.LBB1_14:                               # %if.end.31
	cmpl	$0, -44(%rbp)
	jne	.LBB1_16
# BB#15:                                # %if.then.33
	movabsq	$.L.str.13, %rdi
	movabsq	$svals, %rax
	movl	$24, %edx
	movq	%rax, %rsi
	callq	gimp_procedural_db_set_data
	movl	%eax, -120(%rbp)        # 4-byte Spill
.LBB1_16:                               # %if.end.35
	jmp	.LBB1_18
.LBB1_17:                               # %if.else
	movabsq	$.L.str.24, %rdi
	movl	$0, -60(%rbp)
	movq	-32(%rbp), %rax
	movl	$2, (%rax)
	movl	$4, run.values+40
	callq	gettext
	movq	%rax, run.values+48
.LBB1_18:                               # %if.end.37
	jmp	.LBB1_19
.LBB1_19:                               # %if.end.38
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
	.type	softglow_dialog,@function
softglow_dialog:                        # @softglow_dialog
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
	subq	$448, %rsp              # imm = 0x1C0
.Ltmp17:
	.cfi_offset %rbx, -32
.Ltmp18:
	.cfi_offset %r14, -24
	movabsq	$.L.str.25, %rax
	xorl	%esi, %esi
	movq	%rdi, -24(%rbp)
	movq	%rax, %rdi
	callq	gimp_ui_init
	movabsq	$.L.str.23, %rdi
	callq	gettext
	movabsq	$.L.str.26, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	movabsq	$gimp_standard_help_func, %r8
	movabsq	$.L.str.13, %r9
	movabsq	$.L.str.27, %rdi
	movl	$4294967290, %r10d      # imm = 0xFFFFFFFA
	movabsq	$.L.str.28, %r11
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
	movabsq	$.L.str.29, %rsi
	movabsq	$softglow, %rax
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
	movabsq	$.L.str.30, %rdi
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
	movsd	svals, %xmm3            # xmm3 = mem[0],zero
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
	movabsq	$.L.str.31, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	movabsq	$svals, %rdi
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
	movabsq	$.L.str.31, %rsi
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
	movabsq	$.L.str.32, %rdi
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$1, %edx
	movl	$100, %r8d
	movl	$5, %r9d
	xorps	%xmm0, %xmm0
	movsd	.LCPI3_0, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI3_1, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI3_2, %xmm4         # xmm4 = mem[0],zero
	movl	$2, %r10d
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movsd	svals+8, %xmm1          # xmm1 = mem[0],zero
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rcx, -288(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movsd	%xmm0, -296(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-296(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	$2, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-296(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-296(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r10d, -300(%rbp)       # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.31, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	movabsq	$svals, %rdi
	addq	$8, %rdi
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
	movabsq	$.L.str.31, %rsi
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
	movq	-56(%rbp), %rcx
	movq	%rax, -336(%rbp)        # 8-byte Spill
	movq	%rcx, -344(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.33, %rdi
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$2, %edx
	movl	$100, %r8d
	movl	$5, %r9d
	xorps	%xmm0, %xmm0
	movsd	.LCPI3_0, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI3_1, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI3_2, %xmm4         # xmm4 = mem[0],zero
	movl	$1, %r10d
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movsd	svals+16, %xmm1         # xmm1 = mem[0],zero
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rcx, -360(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movsd	%xmm0, -368(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-368(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	$2, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-368(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-368(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r10d, -372(%rbp)       # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.31, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	movabsq	$svals, %rdi
	addq	$16, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rdi, -384(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-384(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.31, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-64(%rbp), %rdx
	movq	-48(%rbp), %rdi
	movq	%rdi, -392(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-392(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-32(%rbp), %rdi
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
	movq	-32(%rbp), %rax
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	gimp_dialog_get_type
	movq	-416(%rbp), %rdi        # 8-byte Reload
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
	addq	$448, %rsp              # imm = 0x1C0
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end3:
	.size	softglow_dialog, .Lfunc_end3-softglow_dialog
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
.LCPI4_5:
	.quad	4602678819172646912     # double 0.5
.LCPI4_6:
	.quad	4626322717216342016     # double 20
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI4_3:
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.text
	.align	16, 0x90
	.type	softglow,@function
softglow:                               # @softglow
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
	subq	$848, %rsp              # imm = 0x350
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB4_2
# BB#1:                                 # %if.then
	leaq	-484(%rbp), %rsi
	leaq	-488(%rbp), %rdx
	movq	-16(%rbp), %rdi
	callq	gimp_preview_get_position
	leaq	-124(%rbp), %rsi
	leaq	-128(%rbp), %rdx
	movq	-16(%rbp), %rdi
	callq	gimp_preview_get_size
	movl	-484(%rbp), %eax
	addl	-124(%rbp), %eax
	movl	%eax, -492(%rbp)
	movl	-488(%rbp), %eax
	addl	-128(%rbp), %eax
	movl	%eax, -496(%rbp)
	jmp	.LBB4_3
.LBB4_2:                                # %if.else
	leaq	-484(%rbp), %rsi
	leaq	-488(%rbp), %rdx
	leaq	-492(%rbp), %rcx
	leaq	-496(%rbp), %r8
	movq	-8(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_mask_bounds
	movl	-492(%rbp), %edi
	subl	-484(%rbp), %edi
	movl	%edi, -124(%rbp)
	movl	-496(%rbp), %edi
	subl	-488(%rbp), %edi
	movl	%edi, -128(%rbp)
	movl	%eax, -668(%rbp)        # 4-byte Spill
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
	movl	%eax, -672(%rbp)        # 4-byte Spill
	jmp	.LBB4_6
.LBB4_5:                                # %cond.false
	movl	-128(%rbp), %eax
	movl	%eax, -672(%rbp)        # 4-byte Spill
.LBB4_6:                                # %cond.end
	movl	-672(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	movl	%ecx, %esi
	movslq	%eax, %rdi
	callq	g_malloc_n
	movq	%rax, -456(%rbp)
	movl	-124(%rbp), %ecx
	cmpl	-128(%rbp), %ecx
	jle	.LBB4_8
# BB#7:                                 # %cond.true.11
	movl	-124(%rbp), %eax
	movl	%eax, -676(%rbp)        # 4-byte Spill
	jmp	.LBB4_9
.LBB4_8:                                # %cond.false.12
	movl	-128(%rbp), %eax
	movl	%eax, -676(%rbp)        # 4-byte Spill
.LBB4_9:                                # %cond.end.13
	movl	-676(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	movl	%ecx, %esi
	movslq	%eax, %rdi
	callq	g_malloc_n
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	%rax, -464(%rbp)
	movl	-124(%rbp), %ecx
	imull	-128(%rbp), %ecx
	movslq	%ecx, %rdi
	callq	g_malloc0_n
	leaq	-64(%rbp), %rdi
	xorl	%ecx, %ecx
	movq	%rax, -144(%rbp)
	movl	$0, -524(%rbp)
	movl	-124(%rbp), %edx
	imull	-128(%rbp), %edx
	imull	$3, %edx, %edx
	movl	%edx, -528(%rbp)
	movq	-8(%rbp), %rsi
	movl	-484(%rbp), %edx
	movl	-488(%rbp), %r8d
	movl	-124(%rbp), %r9d
	movl	-128(%rbp), %r10d
	movl	%ecx, -680(%rbp)        # 4-byte Spill
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
.LBB4_10:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_12 Depth 2
                                        #       Child Loop BB4_14 Depth 3
	cmpq	$0, -120(%rbp)
	je	.LBB4_32
# BB#11:                                # %for.body
                                        #   in Loop: Header=BB4_10 Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, -600(%rbp)
	movq	-144(%rbp), %rax
	movl	-36(%rbp), %ecx
	subl	-488(%rbp), %ecx
	imull	-124(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movl	-40(%rbp), %ecx
	subl	-484(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -608(%rbp)
	movl	$0, -508(%rbp)
.LBB4_12:                               # %for.cond.31
                                        #   Parent Loop BB4_10 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_14 Depth 3
	movl	-508(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB4_28
# BB#13:                                # %for.body.34
                                        #   in Loop: Header=BB4_12 Depth=2
	movl	$0, -512(%rbp)
.LBB4_14:                               # %for.cond.35
                                        #   Parent Loop BB4_10 Depth=1
                                        #     Parent Loop BB4_12 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-512(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jge	.LBB4_26
# BB#15:                                # %for.body.38
                                        #   in Loop: Header=BB4_14 Depth=3
	cmpl	$2, -132(%rbp)
	jle	.LBB4_17
# BB#16:                                # %if.then.41
                                        #   in Loop: Header=BB4_14 Depth=3
	movl	-512(%rbp), %eax
	imull	-132(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rcx
	movq	-600(%rbp), %rdx
	movzbl	(%rdx,%rcx), %edi
	movl	-512(%rbp), %eax
	imull	-132(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-600(%rbp), %rdx
	movzbl	(%rdx,%rcx), %esi
	movl	-512(%rbp), %eax
	imull	-132(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	-600(%rbp), %rdx
	movzbl	(%rdx,%rcx), %edx
	callq	gimp_rgb_to_l_int
	movb	%al, %r8b
	movslq	-512(%rbp), %rcx
	movq	-608(%rbp), %r9
	movb	%r8b, (%r9,%rcx)
	jmp	.LBB4_18
.LBB4_17:                               # %if.else.59
                                        #   in Loop: Header=BB4_14 Depth=3
	movl	-512(%rbp), %eax
	imull	-132(%rbp), %eax
	movslq	%eax, %rcx
	movq	-600(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movslq	-512(%rbp), %rcx
	movq	-608(%rbp), %rdx
	movb	%sil, (%rdx,%rcx)
.LBB4_18:                               # %if.end.65
                                        #   in Loop: Header=BB4_14 Depth=3
	movsd	.LCPI4_5, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI4_0, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI4_6, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI4_4, %xmm3         # xmm3 = mem[0],zero
	movslq	-512(%rbp), %rax
	movq	-608(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cvtsi2sdl	%edx, %xmm4
	divsd	%xmm3, %xmm4
	movsd	%xmm4, -592(%rbp)
	mulsd	svals+16, %xmm2
	addsd	%xmm2, %xmm1
	movd	%xmm1, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm1
	movsd	-592(%rbp), %xmm2       # xmm2 = mem[0],zero
	subsd	%xmm0, %xmm2
	mulsd	%xmm2, %xmm1
	movaps	%xmm1, %xmm0
	callq	exp
	movsd	.LCPI4_4, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI4_2, %xmm2         # xmm2 = mem[0],zero
	addsd	%xmm0, %xmm2
	movaps	%xmm1, %xmm0
	divsd	%xmm2, %xmm0
	movsd	%xmm0, -592(%rbp)
	movsd	-592(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	svals+8, %xmm0
	movsd	%xmm0, -592(%rbp)
	movsd	-592(%rbp), %xmm0       # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB4_20
# BB#19:                                # %cond.true.81
                                        #   in Loop: Header=BB4_14 Depth=3
	movsd	.LCPI4_4, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -688(%rbp)       # 8-byte Spill
	jmp	.LBB4_24
.LBB4_20:                               # %cond.false.82
                                        #   in Loop: Header=BB4_14 Depth=3
	xorps	%xmm0, %xmm0
	ucomisd	-592(%rbp), %xmm0
	jbe	.LBB4_22
# BB#21:                                # %cond.true.85
                                        #   in Loop: Header=BB4_14 Depth=3
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -696(%rbp)       # 8-byte Spill
	jmp	.LBB4_23
.LBB4_22:                               # %cond.false.86
                                        #   in Loop: Header=BB4_14 Depth=3
	movsd	-592(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -696(%rbp)       # 8-byte Spill
.LBB4_23:                               # %cond.end.87
                                        #   in Loop: Header=BB4_14 Depth=3
	movsd	-696(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -688(%rbp)       # 8-byte Spill
.LBB4_24:                               # %cond.end.89
                                        #   in Loop: Header=BB4_14 Depth=3
	movsd	-688(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movslq	-512(%rbp), %rdx
	movq	-608(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
# BB#25:                                # %for.inc
                                        #   in Loop: Header=BB4_14 Depth=3
	movl	-512(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -512(%rbp)
	jmp	.LBB4_14
.LBB4_26:                               # %for.end
                                        #   in Loop: Header=BB4_12 Depth=2
	movl	-44(%rbp), %eax
	movq	-600(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -600(%rbp)
	movl	-124(%rbp), %eax
	movq	-608(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -608(%rbp)
# BB#27:                                # %for.inc.98
                                        #   in Loop: Header=BB4_12 Depth=2
	movl	-508(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -508(%rbp)
	jmp	.LBB4_12
.LBB4_28:                               # %for.end.100
                                        #   in Loop: Header=BB4_10 Depth=1
	cmpq	$0, -16(%rbp)
	jne	.LBB4_30
# BB#29:                                # %if.then.102
                                        #   in Loop: Header=BB4_10 Depth=1
	movl	-32(%rbp), %eax
	imull	-28(%rbp), %eax
	addl	-524(%rbp), %eax
	movl	%eax, -524(%rbp)
	cvtsi2sdl	-524(%rbp), %xmm0
	cvtsi2sdl	-528(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -700(%rbp)        # 4-byte Spill
.LBB4_30:                               # %if.end.111
                                        #   in Loop: Header=BB4_10 Depth=1
	jmp	.LBB4_31
.LBB4_31:                               # %for.inc.112
                                        #   in Loop: Header=BB4_10 Depth=1
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_pixel_rgns_process
	movq	%rax, -120(%rbp)
	jmp	.LBB4_10
.LBB4_32:                               # %for.end.114
	movsd	.LCPI4_1, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI4_2, %xmm1         # xmm1 = mem[0],zero
	movsd	svals, %xmm2            # xmm2 = mem[0],zero
	movapd	.LCPI4_3(%rip), %xmm3   # xmm3 = [9223372036854775807,9223372036854775807]
	andpd	%xmm3, %xmm2
	addsd	%xmm1, %xmm2
	movsd	%xmm2, -576(%rbp)
	movsd	-576(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-576(%rbp), %xmm1
	movd	%xmm1, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm1
	movsd	%xmm1, -712(%rbp)       # 8-byte Spill
	callq	log
	leaq	-448(%rbp), %r9
	leaq	-400(%rbp), %r8
	leaq	-352(%rbp), %rcx
	leaq	-304(%rbp), %rdx
	leaq	-256(%rbp), %rsi
	leaq	-208(%rbp), %rdi
	movsd	.LCPI4_0, %xmm1         # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-712(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	divsd	%xmm1, %xmm0
	movq	%rdi, -720(%rbp)        # 8-byte Spill
	movq	%r9, -728(%rbp)         # 8-byte Spill
	movq	%r8, -736(%rbp)         # 8-byte Spill
	movq	%rcx, -744(%rbp)        # 8-byte Spill
	movq	%rdx, -752(%rbp)        # 8-byte Spill
	movq	%rsi, -760(%rbp)        # 8-byte Spill
	callq	sqrt
	movsd	%xmm0, -584(%rbp)
	movsd	-584(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-720(%rbp), %rdi        # 8-byte Reload
	movq	-760(%rbp), %rsi        # 8-byte Reload
	movq	-752(%rbp), %rdx        # 8-byte Reload
	movq	-744(%rbp), %rcx        # 8-byte Reload
	movq	-736(%rbp), %r8         # 8-byte Reload
	movq	-728(%rbp), %r9         # 8-byte Reload
	callq	find_constants
	movl	$0, -512(%rbp)
.LBB4_33:                               # %for.cond.128
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_35 Depth 2
                                        #       Child Loop BB4_40 Depth 3
                                        #       Child Loop BB4_44 Depth 3
	movl	-512(%rbp), %eax
	cmpl	-124(%rbp), %eax
	jge	.LBB4_55
# BB#34:                                # %for.body.131
                                        #   in Loop: Header=BB4_33 Depth=1
	xorl	%eax, %eax
	movq	-456(%rbp), %rcx
	movslq	-128(%rbp), %rdx
	shlq	$3, %rdx
	movq	%rcx, %rdi
	movl	%eax, %esi
	movl	%eax, -764(%rbp)        # 4-byte Spill
	callq	memset
	movq	-464(%rbp), %rcx
	movslq	-128(%rbp), %rdx
	shlq	$3, %rdx
	movq	%rcx, %rdi
	movl	-764(%rbp), %esi        # 4-byte Reload
	callq	memset
	movq	-144(%rbp), %rcx
	movslq	-512(%rbp), %rdx
	addq	%rdx, %rcx
	movq	%rcx, -152(%rbp)
	movq	-152(%rbp), %rcx
	movq	%rcx, -160(%rbp)
	movq	-152(%rbp), %rcx
	movl	-124(%rbp), %eax
	movl	-128(%rbp), %esi
	subl	$1, %esi
	imull	%esi, %eax
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -168(%rbp)
	movq	-456(%rbp), %rcx
	movq	%rcx, -472(%rbp)
	movq	-464(%rbp), %rcx
	movl	-128(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rdx
	shlq	$3, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -480(%rbp)
	movq	-160(%rbp), %rcx
	movzbl	(%rcx), %eax
	movl	%eax, -544(%rbp)
	movq	-168(%rbp), %rcx
	movzbl	(%rcx), %eax
	movl	%eax, -560(%rbp)
	movl	$0, -508(%rbp)
.LBB4_35:                               # %for.cond.151
                                        #   Parent Loop BB4_33 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_40 Depth 3
                                        #       Child Loop BB4_44 Depth 3
	movl	-508(%rbp), %eax
	cmpl	-128(%rbp), %eax
	jge	.LBB4_49
# BB#36:                                # %for.body.154
                                        #   in Loop: Header=BB4_35 Depth=2
	cmpl	$4, -508(%rbp)
	jge	.LBB4_38
# BB#37:                                # %cond.true.159
                                        #   in Loop: Header=BB4_35 Depth=2
	movl	-508(%rbp), %eax
	movl	%eax, -768(%rbp)        # 4-byte Spill
	jmp	.LBB4_39
.LBB4_38:                               # %cond.false.160
                                        #   in Loop: Header=BB4_35 Depth=2
	movl	$4, %eax
	movl	%eax, -768(%rbp)        # 4-byte Spill
	jmp	.LBB4_39
.LBB4_39:                               # %cond.end.161
                                        #   in Loop: Header=BB4_35 Depth=2
	movl	-768(%rbp), %eax        # 4-byte Reload
	movl	%eax, -520(%rbp)
	movq	-472(%rbp), %rcx
	movq	%rcx, -616(%rbp)
	movq	-480(%rbp), %rcx
	movq	%rcx, -624(%rbp)
	movl	$0, -500(%rbp)
.LBB4_40:                               # %for.cond.163
                                        #   Parent Loop BB4_33 Depth=1
                                        #     Parent Loop BB4_35 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-500(%rbp), %eax
	cmpl	-520(%rbp), %eax
	jg	.LBB4_43
# BB#41:                                # %for.body.166
                                        #   in Loop: Header=BB4_40 Depth=3
	xorl	%eax, %eax
	movslq	-500(%rbp), %rcx
	movsd	-208(%rbp,%rcx,8), %xmm0 # xmm0 = mem[0],zero
	movl	%eax, %edx
	subl	-500(%rbp), %edx
	imull	-124(%rbp), %edx
	movslq	%edx, %rcx
	movq	-160(%rbp), %rsi
	movzbl	(%rsi,%rcx), %edx
	cvtsi2sdl	%edx, %xmm1
	mulsd	%xmm1, %xmm0
	movslq	-500(%rbp), %rcx
	movsd	-304(%rbp,%rcx,8), %xmm1 # xmm1 = mem[0],zero
	subl	-500(%rbp), %eax
	movslq	%eax, %rcx
	movq	-472(%rbp), %rsi
	mulsd	(%rsi,%rcx,8), %xmm1
	subsd	%xmm1, %xmm0
	movq	-616(%rbp), %rcx
	addsd	(%rcx), %xmm0
	movsd	%xmm0, (%rcx)
	movslq	-500(%rbp), %rcx
	movsd	-256(%rbp,%rcx,8), %xmm0 # xmm0 = mem[0],zero
	movl	-500(%rbp), %eax
	imull	-124(%rbp), %eax
	movslq	%eax, %rcx
	movq	-168(%rbp), %rsi
	movzbl	(%rsi,%rcx), %eax
	cvtsi2sdl	%eax, %xmm1
	mulsd	%xmm1, %xmm0
	movslq	-500(%rbp), %rcx
	movsd	-352(%rbp,%rcx,8), %xmm1 # xmm1 = mem[0],zero
	movslq	-500(%rbp), %rcx
	movq	-480(%rbp), %rsi
	mulsd	(%rsi,%rcx,8), %xmm1
	subsd	%xmm1, %xmm0
	movq	-624(%rbp), %rcx
	addsd	(%rcx), %xmm0
	movsd	%xmm0, (%rcx)
# BB#42:                                # %for.inc.199
                                        #   in Loop: Header=BB4_40 Depth=3
	movl	-500(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -500(%rbp)
	jmp	.LBB4_40
.LBB4_43:                               # %for.end.201
                                        #   in Loop: Header=BB4_35 Depth=2
	movl	-500(%rbp), %eax
	movl	%eax, -504(%rbp)
.LBB4_44:                               # %for.cond.202
                                        #   Parent Loop BB4_33 Depth=1
                                        #     Parent Loop BB4_35 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$4, -504(%rbp)
	jg	.LBB4_47
# BB#45:                                # %for.body.205
                                        #   in Loop: Header=BB4_44 Depth=3
	movslq	-504(%rbp), %rax
	movsd	-208(%rbp,%rax,8), %xmm0 # xmm0 = mem[0],zero
	movslq	-504(%rbp), %rax
	subsd	-400(%rbp,%rax,8), %xmm0
	cvtsi2sdl	-544(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movq	-616(%rbp), %rax
	addsd	(%rax), %xmm0
	movsd	%xmm0, (%rax)
	movslq	-504(%rbp), %rax
	movsd	-256(%rbp,%rax,8), %xmm0 # xmm0 = mem[0],zero
	movslq	-504(%rbp), %rax
	subsd	-448(%rbp,%rax,8), %xmm0
	cvtsi2sdl	-560(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movq	-624(%rbp), %rax
	addsd	(%rax), %xmm0
	movsd	%xmm0, (%rax)
# BB#46:                                # %for.inc.224
                                        #   in Loop: Header=BB4_44 Depth=3
	movl	-504(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -504(%rbp)
	jmp	.LBB4_44
.LBB4_47:                               # %for.end.226
                                        #   in Loop: Header=BB4_35 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movl	-124(%rbp), %eax
	movq	-160(%rbp), %rdx
	movslq	%eax, %rsi
	addq	%rsi, %rdx
	movq	%rdx, -160(%rbp)
	movl	-124(%rbp), %eax
	movq	-168(%rbp), %rdx
	movslq	%eax, %rsi
	subq	%rsi, %rcx
	addq	%rcx, %rdx
	movq	%rdx, -168(%rbp)
	movq	-472(%rbp), %rcx
	addq	$8, %rcx
	movq	%rcx, -472(%rbp)
	movq	-480(%rbp), %rcx
	addq	$-8, %rcx
	movq	%rcx, -480(%rbp)
# BB#48:                                # %for.inc.232
                                        #   in Loop: Header=BB4_35 Depth=2
	movl	-508(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -508(%rbp)
	jmp	.LBB4_35
.LBB4_49:                               # %for.end.234
                                        #   in Loop: Header=BB4_33 Depth=1
	movq	-456(%rbp), %rdi
	movq	-464(%rbp), %rsi
	movq	-144(%rbp), %rax
	movslq	-512(%rbp), %rcx
	addq	%rcx, %rax
	movl	-124(%rbp), %ecx
	movl	-128(%rbp), %r8d
	movq	%rax, %rdx
	callq	transfer_pixels
	cmpq	$0, -16(%rbp)
	jne	.LBB4_53
# BB#50:                                # %if.then.238
                                        #   in Loop: Header=BB4_33 Depth=1
	movl	$5, %eax
	movl	-128(%rbp), %ecx
	addl	-524(%rbp), %ecx
	movl	%ecx, -524(%rbp)
	movl	-512(%rbp), %ecx
	movl	%eax, -772(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-772(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB4_52
# BB#51:                                # %if.then.242
                                        #   in Loop: Header=BB4_33 Depth=1
	cvtsi2sdl	-524(%rbp), %xmm0
	cvtsi2sdl	-528(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -776(%rbp)        # 4-byte Spill
.LBB4_52:                               # %if.end.247
                                        #   in Loop: Header=BB4_33 Depth=1
	jmp	.LBB4_53
.LBB4_53:                               # %if.end.248
                                        #   in Loop: Header=BB4_33 Depth=1
	jmp	.LBB4_54
.LBB4_54:                               # %for.inc.249
                                        #   in Loop: Header=BB4_33 Depth=1
	movl	-512(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -512(%rbp)
	jmp	.LBB4_33
.LBB4_55:                               # %for.end.251
	movl	$0, -508(%rbp)
.LBB4_56:                               # %for.cond.252
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_58 Depth 2
                                        #       Child Loop BB4_63 Depth 3
                                        #       Child Loop BB4_67 Depth 3
	movl	-508(%rbp), %eax
	cmpl	-128(%rbp), %eax
	jge	.LBB4_78
# BB#57:                                # %for.body.255
                                        #   in Loop: Header=BB4_56 Depth=1
	xorl	%eax, %eax
	movq	-456(%rbp), %rcx
	movslq	-124(%rbp), %rdx
	shlq	$3, %rdx
	movq	%rcx, %rdi
	movl	%eax, %esi
	movl	%eax, -780(%rbp)        # 4-byte Spill
	callq	memset
	movq	-464(%rbp), %rcx
	movslq	-124(%rbp), %rdx
	shlq	$3, %rdx
	movq	%rcx, %rdi
	movl	-780(%rbp), %esi        # 4-byte Reload
	callq	memset
	movq	-144(%rbp), %rcx
	movl	-508(%rbp), %eax
	imull	-124(%rbp), %eax
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -152(%rbp)
	movq	-152(%rbp), %rcx
	movq	%rcx, -160(%rbp)
	movq	-152(%rbp), %rcx
	movslq	-124(%rbp), %rdx
	addq	%rdx, %rcx
	addq	$-1, %rcx
	movq	%rcx, -168(%rbp)
	movq	-456(%rbp), %rcx
	movq	%rcx, -472(%rbp)
	movq	-464(%rbp), %rcx
	movslq	-124(%rbp), %rdx
	shlq	$3, %rdx
	addq	%rdx, %rcx
	addq	$-8, %rcx
	movq	%rcx, -480(%rbp)
	movq	-160(%rbp), %rcx
	movzbl	(%rcx), %eax
	movl	%eax, -544(%rbp)
	movq	-168(%rbp), %rcx
	movzbl	(%rcx), %eax
	movl	%eax, -560(%rbp)
	movl	$0, -512(%rbp)
.LBB4_58:                               # %for.cond.275
                                        #   Parent Loop BB4_56 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_63 Depth 3
                                        #       Child Loop BB4_67 Depth 3
	movl	-512(%rbp), %eax
	cmpl	-124(%rbp), %eax
	jge	.LBB4_72
# BB#59:                                # %for.body.278
                                        #   in Loop: Header=BB4_58 Depth=2
	cmpl	$4, -512(%rbp)
	jge	.LBB4_61
# BB#60:                                # %cond.true.285
                                        #   in Loop: Header=BB4_58 Depth=2
	movl	-512(%rbp), %eax
	movl	%eax, -784(%rbp)        # 4-byte Spill
	jmp	.LBB4_62
.LBB4_61:                               # %cond.false.286
                                        #   in Loop: Header=BB4_58 Depth=2
	movl	$4, %eax
	movl	%eax, -784(%rbp)        # 4-byte Spill
	jmp	.LBB4_62
.LBB4_62:                               # %cond.end.287
                                        #   in Loop: Header=BB4_58 Depth=2
	movl	-784(%rbp), %eax        # 4-byte Reload
	movl	%eax, -520(%rbp)
	movq	-472(%rbp), %rcx
	movq	%rcx, -632(%rbp)
	movq	-480(%rbp), %rcx
	movq	%rcx, -640(%rbp)
	movl	$0, -500(%rbp)
.LBB4_63:                               # %for.cond.289
                                        #   Parent Loop BB4_56 Depth=1
                                        #     Parent Loop BB4_58 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-500(%rbp), %eax
	cmpl	-520(%rbp), %eax
	jg	.LBB4_66
# BB#64:                                # %for.body.292
                                        #   in Loop: Header=BB4_63 Depth=3
	xorl	%eax, %eax
	movslq	-500(%rbp), %rcx
	movsd	-208(%rbp,%rcx,8), %xmm0 # xmm0 = mem[0],zero
	movl	%eax, %edx
	subl	-500(%rbp), %edx
	movslq	%edx, %rcx
	movq	-160(%rbp), %rsi
	movzbl	(%rsi,%rcx), %edx
	cvtsi2sdl	%edx, %xmm1
	mulsd	%xmm1, %xmm0
	movslq	-500(%rbp), %rcx
	movsd	-304(%rbp,%rcx,8), %xmm1 # xmm1 = mem[0],zero
	subl	-500(%rbp), %eax
	movslq	%eax, %rcx
	movq	-472(%rbp), %rsi
	mulsd	(%rsi,%rcx,8), %xmm1
	subsd	%xmm1, %xmm0
	movq	-632(%rbp), %rcx
	addsd	(%rcx), %xmm0
	movsd	%xmm0, (%rcx)
	movslq	-500(%rbp), %rcx
	movsd	-256(%rbp,%rcx,8), %xmm0 # xmm0 = mem[0],zero
	movslq	-500(%rbp), %rcx
	movq	-168(%rbp), %rsi
	movzbl	(%rsi,%rcx), %eax
	cvtsi2sdl	%eax, %xmm1
	mulsd	%xmm1, %xmm0
	movslq	-500(%rbp), %rcx
	movsd	-352(%rbp,%rcx,8), %xmm1 # xmm1 = mem[0],zero
	movslq	-500(%rbp), %rcx
	movq	-480(%rbp), %rsi
	mulsd	(%rsi,%rcx,8), %xmm1
	subsd	%xmm1, %xmm0
	movq	-640(%rbp), %rcx
	addsd	(%rcx), %xmm0
	movsd	%xmm0, (%rcx)
# BB#65:                                # %for.inc.323
                                        #   in Loop: Header=BB4_63 Depth=3
	movl	-500(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -500(%rbp)
	jmp	.LBB4_63
.LBB4_66:                               # %for.end.325
                                        #   in Loop: Header=BB4_58 Depth=2
	movl	-500(%rbp), %eax
	movl	%eax, -504(%rbp)
.LBB4_67:                               # %for.cond.326
                                        #   Parent Loop BB4_56 Depth=1
                                        #     Parent Loop BB4_58 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$4, -504(%rbp)
	jg	.LBB4_70
# BB#68:                                # %for.body.329
                                        #   in Loop: Header=BB4_67 Depth=3
	movslq	-504(%rbp), %rax
	movsd	-208(%rbp,%rax,8), %xmm0 # xmm0 = mem[0],zero
	movslq	-504(%rbp), %rax
	subsd	-400(%rbp,%rax,8), %xmm0
	cvtsi2sdl	-544(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movq	-632(%rbp), %rax
	addsd	(%rax), %xmm0
	movsd	%xmm0, (%rax)
	movslq	-504(%rbp), %rax
	movsd	-256(%rbp,%rax,8), %xmm0 # xmm0 = mem[0],zero
	movslq	-504(%rbp), %rax
	subsd	-448(%rbp,%rax,8), %xmm0
	cvtsi2sdl	-560(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movq	-640(%rbp), %rax
	addsd	(%rax), %xmm0
	movsd	%xmm0, (%rax)
# BB#69:                                # %for.inc.348
                                        #   in Loop: Header=BB4_67 Depth=3
	movl	-504(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -504(%rbp)
	jmp	.LBB4_67
.LBB4_70:                               # %for.end.350
                                        #   in Loop: Header=BB4_58 Depth=2
	movq	-160(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -160(%rbp)
	movq	-168(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -168(%rbp)
	movq	-472(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -472(%rbp)
	movq	-480(%rbp), %rax
	addq	$-8, %rax
	movq	%rax, -480(%rbp)
# BB#71:                                # %for.inc.355
                                        #   in Loop: Header=BB4_58 Depth=2
	movl	-512(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -512(%rbp)
	jmp	.LBB4_58
.LBB4_72:                               # %for.end.357
                                        #   in Loop: Header=BB4_56 Depth=1
	movl	$1, %ecx
	movq	-456(%rbp), %rdi
	movq	-464(%rbp), %rsi
	movq	-144(%rbp), %rax
	movl	-508(%rbp), %edx
	imull	-124(%rbp), %edx
	movslq	%edx, %r8
	addq	%r8, %rax
	movl	-124(%rbp), %r8d
	movq	%rax, %rdx
	callq	transfer_pixels
	cmpq	$0, -16(%rbp)
	jne	.LBB4_76
# BB#73:                                # %if.then.362
                                        #   in Loop: Header=BB4_56 Depth=1
	movl	$5, %eax
	movl	-124(%rbp), %ecx
	addl	-524(%rbp), %ecx
	movl	%ecx, -524(%rbp)
	movl	-508(%rbp), %ecx
	movl	%eax, -788(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-788(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB4_75
# BB#74:                                # %if.then.367
                                        #   in Loop: Header=BB4_56 Depth=1
	cvtsi2sdl	-524(%rbp), %xmm0
	cvtsi2sdl	-528(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -792(%rbp)        # 4-byte Spill
.LBB4_75:                               # %if.end.372
                                        #   in Loop: Header=BB4_56 Depth=1
	jmp	.LBB4_76
.LBB4_76:                               # %if.end.373
                                        #   in Loop: Header=BB4_56 Depth=1
	jmp	.LBB4_77
.LBB4_77:                               # %for.inc.374
                                        #   in Loop: Header=BB4_56 Depth=1
	movl	-508(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -508(%rbp)
	jmp	.LBB4_56
.LBB4_78:                               # %for.end.376
	leaq	-64(%rbp), %rdi
	xorl	%eax, %eax
	movq	-8(%rbp), %rsi
	movl	-484(%rbp), %edx
	movl	-488(%rbp), %ecx
	movl	-124(%rbp), %r8d
	movl	-128(%rbp), %r9d
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	movl	%eax, -796(%rbp)        # 4-byte Spill
	callq	gimp_pixel_rgn_init
	leaq	-112(%rbp), %rdi
	movl	$1, %eax
	movq	-8(%rbp), %rsi
	movl	-484(%rbp), %edx
	movl	-488(%rbp), %ecx
	movl	-124(%rbp), %r8d
	movl	-128(%rbp), %r9d
	cmpq	$0, -16(%rbp)
	sete	%r10b
	andb	$1, %r10b
	movzbl	%r10b, %r11d
	movl	%r11d, (%rsp)
	movl	$1, 8(%rsp)
	movl	%eax, -800(%rbp)        # 4-byte Spill
	callq	gimp_pixel_rgn_init
	movl	$2, %edi
	leaq	-64(%rbp), %rsi
	leaq	-112(%rbp), %rdx
	movb	$0, %al
	callq	gimp_pixel_rgns_register
	movq	%rax, -120(%rbp)
.LBB4_79:                               # %for.cond.380
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_81 Depth 2
                                        #       Child Loop BB4_83 Depth 3
                                        #         Child Loop BB4_85 Depth 4
	cmpq	$0, -120(%rbp)
	je	.LBB4_102
# BB#80:                                # %for.body.383
                                        #   in Loop: Header=BB4_79 Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, -648(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -656(%rbp)
	movq	-144(%rbp), %rax
	movl	-36(%rbp), %ecx
	subl	-488(%rbp), %ecx
	imull	-124(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movl	-40(%rbp), %ecx
	subl	-484(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -664(%rbp)
	movl	$0, -508(%rbp)
.LBB4_81:                               # %for.cond.400
                                        #   Parent Loop BB4_79 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_83 Depth 3
                                        #         Child Loop BB4_85 Depth 4
	movl	-508(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB4_97
# BB#82:                                # %for.body.404
                                        #   in Loop: Header=BB4_81 Depth=2
	movl	$0, -512(%rbp)
.LBB4_83:                               # %for.cond.405
                                        #   Parent Loop BB4_79 Depth=1
                                        #     Parent Loop BB4_81 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB4_85 Depth 4
	movl	-512(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jge	.LBB4_95
# BB#84:                                # %for.body.409
                                        #   in Loop: Header=BB4_83 Depth=3
	movl	$0, -516(%rbp)
.LBB4_85:                               # %for.cond.410
                                        #   Parent Loop BB4_79 Depth=1
                                        #     Parent Loop BB4_81 Depth=2
                                        #       Parent Loop BB4_83 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	-516(%rbp), %eax
	cmpl	$0, -136(%rbp)
	movl	%eax, -804(%rbp)        # 4-byte Spill
	je	.LBB4_87
# BB#86:                                # %cond.true.412
                                        #   in Loop: Header=BB4_85 Depth=4
	movl	-132(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -808(%rbp)        # 4-byte Spill
	jmp	.LBB4_88
.LBB4_87:                               # %cond.false.414
                                        #   in Loop: Header=BB4_85 Depth=4
	movl	-132(%rbp), %eax
	movl	%eax, -808(%rbp)        # 4-byte Spill
.LBB4_88:                               # %cond.end.415
                                        #   in Loop: Header=BB4_85 Depth=4
	movl	-808(%rbp), %eax        # 4-byte Reload
	movl	-804(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jge	.LBB4_91
# BB#89:                                # %for.body.419
                                        #   in Loop: Header=BB4_85 Depth=4
	movl	$255, %eax
	movl	-512(%rbp), %ecx
	imull	-132(%rbp), %ecx
	addl	-516(%rbp), %ecx
	movslq	%ecx, %rdx
	movq	-648(%rbp), %rsi
	movzbl	(%rsi,%rdx), %ecx
	movl	%eax, %edi
	subl	%ecx, %edi
	movslq	-512(%rbp), %rdx
	movq	-664(%rbp), %rsi
	movzbl	(%rsi,%rdx), %ecx
	movl	%eax, %r8d
	subl	%ecx, %r8d
	imull	%r8d, %edi
	addl	$128, %edi
	movl	%edi, -564(%rbp)
	movl	-564(%rbp), %ecx
	sarl	$8, %ecx
	addl	-564(%rbp), %ecx
	sarl	$8, %ecx
	subl	%ecx, %eax
	movb	%al, %r9b
	movl	-512(%rbp), %eax
	imull	-132(%rbp), %eax
	addl	-516(%rbp), %eax
	movslq	%eax, %rdx
	movq	-656(%rbp), %rsi
	movb	%r9b, (%rsi,%rdx)
# BB#90:                                # %for.inc.440
                                        #   in Loop: Header=BB4_85 Depth=4
	movl	-516(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -516(%rbp)
	jmp	.LBB4_85
.LBB4_91:                               # %for.end.442
                                        #   in Loop: Header=BB4_83 Depth=3
	cmpl	$0, -136(%rbp)
	je	.LBB4_93
# BB#92:                                # %if.then.444
                                        #   in Loop: Header=BB4_83 Depth=3
	movl	-512(%rbp), %eax
	imull	-132(%rbp), %eax
	addl	-516(%rbp), %eax
	movslq	%eax, %rcx
	movq	-648(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movl	-512(%rbp), %eax
	imull	-132(%rbp), %eax
	addl	-516(%rbp), %eax
	movslq	%eax, %rcx
	movq	-656(%rbp), %rdx
	movb	%sil, (%rdx,%rcx)
.LBB4_93:                               # %if.end.453
                                        #   in Loop: Header=BB4_83 Depth=3
	jmp	.LBB4_94
.LBB4_94:                               # %for.inc.454
                                        #   in Loop: Header=BB4_83 Depth=3
	movl	-512(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -512(%rbp)
	jmp	.LBB4_83
.LBB4_95:                               # %for.end.456
                                        #   in Loop: Header=BB4_81 Depth=2
	movl	-44(%rbp), %eax
	movq	-648(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -648(%rbp)
	movl	-92(%rbp), %eax
	movq	-656(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -656(%rbp)
	movl	-124(%rbp), %eax
	movq	-664(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -664(%rbp)
# BB#96:                                # %for.inc.465
                                        #   in Loop: Header=BB4_81 Depth=2
	movl	-508(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -508(%rbp)
	jmp	.LBB4_81
.LBB4_97:                               # %for.end.467
                                        #   in Loop: Header=BB4_79 Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB4_99
# BB#98:                                # %if.then.469
                                        #   in Loop: Header=BB4_79 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, -816(%rbp)        # 8-byte Spill
	callq	gimp_drawable_preview_get_type
	movq	-816(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-112(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_drawable_preview_draw_region
	jmp	.LBB4_100
.LBB4_99:                               # %if.else.472
                                        #   in Loop: Header=BB4_79 Depth=1
	movl	-32(%rbp), %eax
	imull	-28(%rbp), %eax
	addl	-524(%rbp), %eax
	movl	%eax, -524(%rbp)
	cvtsi2sdl	-524(%rbp), %xmm0
	cvtsi2sdl	-528(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -820(%rbp)        # 4-byte Spill
.LBB4_100:                              # %if.end.481
                                        #   in Loop: Header=BB4_79 Depth=1
	jmp	.LBB4_101
.LBB4_101:                              # %for.inc.482
                                        #   in Loop: Header=BB4_79 Depth=1
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_pixel_rgns_process
	movq	%rax, -120(%rbp)
	jmp	.LBB4_79
.LBB4_102:                              # %for.end.484
	cmpq	$0, -16(%rbp)
	jne	.LBB4_104
# BB#103:                               # %if.then.486
	movsd	.LCPI4_2, %xmm0         # xmm0 = mem[0],zero
	callq	gimp_progress_update
	movq	-8(%rbp), %rdi
	movl	%eax, -824(%rbp)        # 4-byte Spill
	callq	gimp_drawable_flush
	movl	$1, %esi
	movq	-8(%rbp), %rdi
	movl	(%rdi), %edi
	callq	gimp_drawable_merge_shadow
	movq	-8(%rbp), %rcx
	movl	(%rcx), %edi
	movl	-484(%rbp), %esi
	movl	-488(%rbp), %edx
	movl	-492(%rbp), %r8d
	subl	-484(%rbp), %r8d
	movl	-496(%rbp), %r9d
	subl	-488(%rbp), %r9d
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%eax, -828(%rbp)        # 4-byte Spill
	callq	gimp_drawable_update
	movl	%eax, -832(%rbp)        # 4-byte Spill
.LBB4_104:                              # %if.end.494
	movq	-456(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-464(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-144(%rbp), %rdi
	callq	g_free
	addq	$848, %rsp              # imm = 0x350
	popq	%rbp
	retq
.Lfunc_end4:
	.size	softglow, .Lfunc_end4-softglow
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
	jge	.LBB6_10
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
# BB#3:                                 # %cond.true
                                        #   in Loop: Header=BB6_1 Depth=1
	movsd	.LCPI6_0, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
	jmp	.LBB6_8
.LBB6_4:                                # %cond.false
                                        #   in Loop: Header=BB6_1 Depth=1
	xorps	%xmm0, %xmm0
	ucomisd	-48(%rbp), %xmm0
	jbe	.LBB6_6
# BB#5:                                 # %cond.true.5
                                        #   in Loop: Header=BB6_1 Depth=1
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	jmp	.LBB6_7
.LBB6_6:                                # %cond.false.6
                                        #   in Loop: Header=BB6_1 Depth=1
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
.LBB6_7:                                # %cond.end
                                        #   in Loop: Header=BB6_1 Depth=1
	movsd	-64(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
.LBB6_8:                                # %cond.end.7
                                        #   in Loop: Header=BB6_1 Depth=1
	movsd	-56(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	movb	%cl, (%rdx)
	movl	-28(%rbp), %eax
	movq	-24(%rbp), %rdx
	movslq	%eax, %rsi
	addq	%rsi, %rdx
	movq	%rdx, -24(%rbp)
# BB#9:                                 # %for.inc
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB6_1
.LBB6_10:                               # %for.end
	popq	%rbp
	retq
.Lfunc_end6:
	.size	transfer_pixels, .Lfunc_end6-transfer_pixels
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
	.asciz	"glow-radius"
	.size	.L.str.6, 12

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Glow radius (radius in pixels)"
	.size	.L.str.7, 31

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"brightness"
	.size	.L.str.8, 11

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Glow brightness (0.0 - 1.0)"
	.size	.L.str.9, 28

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"sharpness"
	.size	.L.str.10, 10

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Glow sharpness (0.0 - 1.0)"
	.size	.L.str.11, 27

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Gives an image a softglow effect by intensifying the highlights in the image. This is done by screening a modified version of the drawable with itself. The modified version is desaturated and then a sigmoidal transfer function is applied to force the distribution of intensities into very small and very large only. This desaturated version is then blurred to give it a fuzzy 'vaseline-on-the-lens' effect. The glow radius parameter controls the sharpness of the glow effect. The brightness parameter controls the degree of intensification applied to image highlights. The sharpness parameter controls how defined or alternatively, diffuse, the glow effect should be."
	.size	.L.str.12, 668

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"plug-in-softglow"
	.size	.L.str.13, 17

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Simulate glow by making highlights intense and fuzzy"
	.size	.L.str.14, 53

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Spencer Kimball"
	.size	.L.str.15, 16

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Bit Specialists, Inc."
	.size	.L.str.16, 22

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"2001"
	.size	.L.str.17, 5

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"_Softglow..."
	.size	.L.str.18, 13

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"RGB*, GRAY*"
	.size	.L.str.19, 12

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"<Image>/Filters/Artistic"
	.size	.L.str.20, 25

	.type	run.values,@object      # @run.values
	.local	run.values
	.comm	run.values,80,16
	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"gimp20-std-plug-ins"
	.size	.L.str.21, 20

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"UTF-8"
	.size	.L.str.22, 6

	.type	svals,@object           # @svals
	.data
	.align	8
svals:
	.quad	4621819117588971520     # double 10
	.quad	4604930618986332160     # double 0.75
	.quad	4605831338911806259     # double 0.84999999999999998
	.size	svals, 24

	.type	.L.str.23,@object       # @.str.23
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.23:
	.asciz	"Softglow"
	.size	.L.str.23, 9

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"Cannot operate on indexed color images."
	.size	.L.str.24, 40

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"softglow"
	.size	.L.str.25, 9

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"gimp-softglow"
	.size	.L.str.26, 14

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
	.asciz	"_Glow radius:"
	.size	.L.str.30, 14

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"value-changed"
	.size	.L.str.31, 14

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"_Brightness:"
	.size	.L.str.32, 13

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"_Sharpness:"
	.size	.L.str.33, 12


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
