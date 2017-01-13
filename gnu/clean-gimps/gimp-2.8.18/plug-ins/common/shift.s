	.text
	.file	"shift.bc"
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
	movl	$3, -60(%rbp)
	movq	-24(%rbp), %rcx
	movl	8(%rcx), %esi
	movl	%esi, -56(%rbp)
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
	movq	-24(%rbp), %rax
	movl	88(%rax), %edi
	callq	gimp_drawable_get
	movq	%rax, -48(%rbp)
	movl	$16, %edi
                                        # kill: RDI<def> EDI<kill>
	callq	gimp_tile_cache_ntiles
	movq	-32(%rbp), %rax
	movl	$1, (%rax)
	movq	-40(%rbp), %rax
	movq	$run.values, (%rax)
	movl	$21, run.values(%rip)
	movl	-60(%rbp), %ecx
	movl	%ecx, run.values+8(%rip)
	movl	-56(%rbp), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -92(%rbp)         # 4-byte Spill
	je	.LBB1_3
	jmp	.LBB1_27
.LBB1_27:                               # %do.end
	movl	-92(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
	je	.LBB1_6
	jmp	.LBB1_28
.LBB1_28:                               # %do.end
	movl	-92(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	je	.LBB1_13
	jmp	.LBB1_14
.LBB1_3:                                # %sw.bb
	movabsq	$.L.str.10, %rdi
	movabsq	$shvals, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movl	-52(%rbp), %edi
	movq	-48(%rbp), %rsi
	movl	%eax, -104(%rbp)        # 4-byte Spill
	callq	shift_dialog
	cmpl	$0, %eax
	jne	.LBB1_5
# BB#4:                                 # %if.then
	jmp	.LBB1_26
.LBB1_5:                                # %if.end
	jmp	.LBB1_15
.LBB1_6:                                # %sw.bb.12
	cmpl	$5, -12(%rbp)
	je	.LBB1_8
# BB#7:                                 # %if.then.13
	movl	$1, -60(%rbp)
	jmp	.LBB1_12
.LBB1_8:                                # %if.else
	movl	$1, %eax
	xorl	%ecx, %ecx
	movq	-24(%rbp), %rdx
	movl	128(%rdx), %esi
	movl	%esi, shvals
	movq	-24(%rbp), %rdx
	cmpl	$0, 168(%rdx)
	cmovnel	%ecx, %eax
	movl	%eax, shvals+4
	cmpl	$0, shvals
	jl	.LBB1_10
# BB#9:                                 # %lor.lhs.false
	cmpl	$200, shvals
	jle	.LBB1_11
.LBB1_10:                               # %if.then.23
	movl	$1, -60(%rbp)
.LBB1_11:                               # %if.end.24
	jmp	.LBB1_12
.LBB1_12:                               # %if.end.25
	jmp	.LBB1_15
.LBB1_13:                               # %sw.bb.26
	movabsq	$.L.str.10, %rdi
	movabsq	$shvals, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movl	%eax, -108(%rbp)        # 4-byte Spill
	jmp	.LBB1_15
.LBB1_14:                               # %sw.default
	jmp	.LBB1_15
.LBB1_15:                               # %sw.epilog
	cmpl	$3, -60(%rbp)
	jne	.LBB1_25
# BB#16:                                # %if.then.29
	movq	-48(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_is_rgb
	cmpl	$0, %eax
	jne	.LBB1_18
# BB#17:                                # %lor.lhs.false.32
	movq	-48(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_is_gray
	cmpl	$0, %eax
	je	.LBB1_23
.LBB1_18:                               # %if.then.36
	movabsq	$.L.str.21, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_progress_init
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	-48(%rbp), %rdi
	movl	%eax, -112(%rbp)        # 4-byte Spill
	callq	shift
	cmpl	$1, -56(%rbp)
	je	.LBB1_20
# BB#19:                                # %if.then.40
	callq	gimp_displays_flush
	movl	%eax, -116(%rbp)        # 4-byte Spill
.LBB1_20:                               # %if.end.42
	cmpl	$0, -56(%rbp)
	jne	.LBB1_22
# BB#21:                                # %if.then.44
	movabsq	$.L.str.10, %rdi
	movabsq	$shvals, %rax
	movl	$8, %edx
	movq	%rax, %rsi
	callq	gimp_procedural_db_set_data
	movl	%eax, -120(%rbp)        # 4-byte Spill
.LBB1_22:                               # %if.end.46
	jmp	.LBB1_24
.LBB1_23:                               # %if.else.47
	movl	$0, -60(%rbp)
.LBB1_24:                               # %if.end.48
	jmp	.LBB1_25
.LBB1_25:                               # %if.end.49
	movl	-60(%rbp), %eax
	movl	%eax, run.values+8
	movq	-48(%rbp), %rdi
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
	.quad	4641240890982006784     # double 200
	.text
	.align	16, 0x90
	.type	shift_dialog,@function
shift_dialog:                           # @shift_dialog
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
	subq	$408, %rsp              # imm = 0x198
.Ltmp17:
	.cfi_offset %rbx, -40
.Ltmp18:
	.cfi_offset %r14, -32
.Ltmp19:
	.cfi_offset %r15, -24
	movabsq	$.L.str.22, %rax
	xorl	%ecx, %ecx
	movl	%edi, -28(%rbp)
	movq	%rsi, -40(%rbp)
	movq	%rax, %rdi
	movl	%ecx, %esi
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
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$-6, 8(%rsp)
	movq	%r11, 16(%rsp)
	movl	$-5, 24(%rsp)
	movq	$0, 32(%rsp)
	movb	$0, %al
	movl	%ebx, -140(%rbp)        # 4-byte Spill
	movl	%r10d, -144(%rbp)       # 4-byte Spill
	callq	gimp_dialog_new
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	movq	-48(%rbp), %rdi
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_window_set_transient
	movl	$1, %edi
	movl	$12, %esi
	callq	gtk_box_new
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-48(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
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
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	-40(%rbp), %rdi
	callq	gimp_drawable_preview_new
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
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
	movabsq	$.L.str.27, %rsi
	movabsq	$shift, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movl	$2, %r9d
	movq	-64(%rbp), %rdi
	movq	-40(%rbp), %r11
	movq	%rax, %rdx
	movq	%r11, %rcx
	callq	g_signal_connect_data
	movabsq	$.L.str.28, %rdi
	movl	shvals+4, %r8d
	movq	%rax, -200(%rbp)        # 8-byte Spill
	movl	%r8d, -204(%rbp)        # 4-byte Spill
	callq	gettext
	movabsq	$.L.str.29, %rdi
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%edi, %edi
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movabsq	$gimp_radio_button_update, %rcx
	movabsq	$shvals, %rdx
	addq	$4, %rdx
	leaq	-96(%rbp), %r11
	movl	$1, %r8d
	leaq	-88(%rbp), %r14
	movq	%rdx, -224(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-224(%rbp), %rcx        # 8-byte Reload
	movl	-204(%rbp), %r9d        # 4-byte Reload
	movl	%r8d, -228(%rbp)        # 4-byte Spill
	movl	%r9d, %r8d
	movq	-216(%rbp), %r9         # 8-byte Reload
	movl	$0, (%rsp)
	movq	%r11, 8(%rsp)
	movq	%rax, 16(%rsp)
	movl	$1, 24(%rsp)
	movq	%r14, 32(%rsp)
	movq	$0, 40(%rsp)
	movb	$0, %al
	callq	gimp_int_radio_group_new
	movq	%rax, -72(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r8d, %r8d
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r8d, %edx
	movl	%r8d, %ecx
	callq	gtk_box_pack_start
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.30, %rsi
	movabsq	$gimp_preview_invalidate, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movl	$2, %r9d
	movq	-96(%rbp), %rdi
	movq	-64(%rbp), %r11
	movq	%rax, %rdx
	movq	%r11, %rcx
	callq	g_signal_connect_data
	movabsq	$.L.str.30, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-88(%rbp), %rdx
	movq	-64(%rbp), %rdi
	movq	%rdi, -248(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-248(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	leaq	-112(%rbp), %rsi
	leaq	-120(%rbp), %rdx
	movl	-28(%rbp), %edi
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gimp_image_get_resolution
	movl	-28(%rbp), %edi
	movl	%eax, -268(%rbp)        # 4-byte Spill
	callq	gimp_image_get_unit
	movl	$1, %edi
	movabsq	$.L.str.31, %rdx
	xorl	%r9d, %r9d
	movl	$8, %r10d
	movl	%eax, -100(%rbp)
	movl	-100(%rbp), %esi
	movl	%edi, -272(%rbp)        # 4-byte Spill
	movl	-272(%rbp), %ecx        # 4-byte Reload
	movl	%r9d, %r8d
	movl	$8, (%rsp)
	movl	$1, 8(%rsp)
	movl	%r10d, -276(%rbp)       # 4-byte Spill
	callq	gimp_size_entry_new
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gimp_size_entry_set_unit
	movq	-80(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movl	$1, %edx
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	gimp_size_entry_set_resolution
	movq	-80(%rbp), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI3_1, %xmm1         # xmm1 = mem[0],zero
	movq	%rax, %rdi
	callq	gimp_size_entry_set_refval_boundaries
	movq	-80(%rbp), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movl	$4, %edx
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacing
	movq	-80(%rbp), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movl	$12, %edx
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacing
	movq	-80(%rbp), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	cvtsi2sdl	shvals, %xmm0
	movq	%rax, %rdi
	callq	gimp_size_entry_set_refval
	movq	-80(%rbp), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.32, %rdi
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$1, %edx
	xorl	%ecx, %ecx
	xorps	%xmm0, %xmm0
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_size_entry_attach_label
	movabsq	$.L.str.33, %rsi
	movabsq	$shift_amount_callback, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-80(%rbp), %r11
	movq	-64(%rbp), %r14
	movq	%rdi, -352(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	-352(%rbp), %rdx        # 8-byte Reload
	movq	%r14, %rcx
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-56(%rbp), %rcx
	movq	%rax, -368(%rbp)        # 8-byte Spill
	movq	%rcx, -376(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-80(%rbp), %rdi
	callq	gtk_widget_show
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movq	-48(%rbp), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	gimp_dialog_get_type
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dialog_run
	cmpl	$-5, %eax
	sete	%r15b
	andb	$1, %r15b
	movzbl	%r15b, %eax
	movl	%eax, -124(%rbp)
	movq	-48(%rbp), %rdi
	callq	gtk_widget_destroy
	movl	-124(%rbp), %eax
	addq	$408, %rsp              # imm = 0x198
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	shift_dialog, .Lfunc_end3-shift_dialog
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4607182418800017408     # double 1
.LCPI4_1:
	.quad	4611686018427387904     # double 2
	.text
	.align	16, 0x90
	.type	shift,@function
shift:                                  # @shift
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
	subq	$240, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -152(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB4_2
# BB#1:                                 # %if.then
	leaq	-116(%rbp), %rsi
	leaq	-120(%rbp), %rdx
	movq	-16(%rbp), %rdi
	callq	gimp_preview_get_position
	leaq	-84(%rbp), %rsi
	leaq	-88(%rbp), %rdx
	movq	-16(%rbp), %rdi
	callq	gimp_preview_get_size
	jmp	.LBB4_3
.LBB4_2:                                # %if.else
	leaq	-116(%rbp), %rsi
	leaq	-120(%rbp), %rdx
	leaq	-124(%rbp), %rcx
	leaq	-128(%rbp), %r8
	movq	-8(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_mask_bounds
	movl	-124(%rbp), %edi
	subl	-116(%rbp), %edi
	movl	%edi, -84(%rbp)
	movl	-128(%rbp), %edi
	subl	-120(%rbp), %edi
	movl	%edi, -88(%rbp)
	movl	%eax, -172(%rbp)        # 4-byte Spill
.LBB4_3:                                # %if.end
	movq	-8(%rbp), %rax
	movl	12(%rax), %ecx
	movl	%ecx, -92(%rbp)
	movl	$0, -140(%rbp)
	movl	-84(%rbp), %ecx
	imull	-88(%rbp), %ecx
	movl	%ecx, -144(%rbp)
	cmpl	$0, shvals+4
	jne	.LBB4_5
# BB#4:                                 # %cond.true
	movl	-88(%rbp), %eax
	movl	%eax, -176(%rbp)        # 4-byte Spill
	jmp	.LBB4_6
.LBB4_5:                                # %cond.false
	movl	-84(%rbp), %eax
	movl	%eax, -176(%rbp)        # 4-byte Spill
.LBB4_6:                                # %cond.end
	movl	-176(%rbp), %eax        # 4-byte Reload
	movl	$4, %ecx
	movl	%ecx, %esi
	movl	%eax, -152(%rbp)
	movslq	-152(%rbp), %rdi
	callq	g_malloc_n
	movq	%rax, -160(%rbp)
	callq	g_rand_new
	movq	%rax, -168(%rbp)
	movl	$0, -148(%rbp)
.LBB4_7:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-148(%rbp), %eax
	cmpl	-152(%rbp), %eax
	jge	.LBB4_10
# BB#8:                                 # %for.body
                                        #   in Loop: Header=BB4_7 Depth=1
	movsd	.LCPI4_1, %xmm0         # xmm0 = mem[0],zero
	xorl	%eax, %eax
	movq	-168(%rbp), %rdi
	movl	shvals, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %esi
	movl	shvals, %eax
	addl	$1, %eax
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %edx
	callq	g_rand_int_range
	movslq	-148(%rbp), %rdi
	movq	-160(%rbp), %r8
	movl	%eax, (%r8,%rdi,4)
# BB#9:                                 # %for.inc
                                        #   in Loop: Header=BB4_7 Depth=1
	movl	-148(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -148(%rbp)
	jmp	.LBB4_7
.LBB4_10:                               # %for.end
	movq	-168(%rbp), %rdi
	callq	g_rand_free
	xorl	%esi, %esi
	movq	-8(%rbp), %rdi
	callq	gimp_pixel_fetcher_new
	movl	$1, %esi
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rdi
	callq	gimp_pixel_fetcher_set_edge_mode
	leaq	-64(%rbp), %rdi
	movl	$1, %esi
	movq	-8(%rbp), %rax
	movl	-116(%rbp), %edx
	movl	-120(%rbp), %ecx
	movl	-84(%rbp), %r8d
	movl	-88(%rbp), %r9d
	cmpq	$0, -16(%rbp)
	sete	%r10b
	andb	$1, %r10b
	movzbl	%r10b, %r11d
	movl	%esi, -180(%rbp)        # 4-byte Spill
	movq	%rax, %rsi
	movl	%r11d, (%rsp)
	movl	$1, 8(%rsp)
	callq	gimp_pixel_rgn_init
	movl	$1, %edi
	leaq	-64(%rbp), %rsi
	movb	$0, %al
	callq	gimp_pixel_rgns_register
	movq	%rax, -72(%rbp)
.LBB4_11:                               # %for.cond.18
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_23 Depth 2
                                        #       Child Loop BB4_25 Depth 3
                                        #     Child Loop BB4_14 Depth 2
                                        #       Child Loop BB4_16 Depth 3
	cmpq	$0, -72(%rbp)
	je	.LBB4_36
# BB#12:                                # %for.body.21
                                        #   in Loop: Header=BB4_11 Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, -104(%rbp)
	movl	shvals+4(%rip), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -184(%rbp)        # 4-byte Spill
	je	.LBB4_13
	jmp	.LBB4_39
.LBB4_39:                               # %for.body.21
                                        #   in Loop: Header=BB4_11 Depth=1
	movl	-184(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -188(%rbp)        # 4-byte Spill
	je	.LBB4_22
	jmp	.LBB4_31
.LBB4_13:                               # %sw.bb
                                        #   in Loop: Header=BB4_11 Depth=1
	movl	-36(%rbp), %eax
	movl	%eax, -136(%rbp)
.LBB4_14:                               # %for.cond.23
                                        #   Parent Loop BB4_11 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_16 Depth 3
	movl	-136(%rbp), %eax
	movl	-36(%rbp), %ecx
	addl	-28(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB4_21
# BB#15:                                # %for.body.28
                                        #   in Loop: Header=BB4_14 Depth=2
	movq	-104(%rbp), %rax
	movq	%rax, -112(%rbp)
	movl	-40(%rbp), %ecx
	movl	%ecx, -132(%rbp)
.LBB4_16:                               # %for.cond.30
                                        #   Parent Loop BB4_11 Depth=1
                                        #     Parent Loop BB4_14 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-132(%rbp), %eax
	movl	-40(%rbp), %ecx
	addl	-32(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB4_19
# BB#17:                                # %for.body.35
                                        #   in Loop: Header=BB4_16 Depth=3
	movq	-80(%rbp), %rdi
	movl	-132(%rbp), %eax
	movl	-136(%rbp), %ecx
	subl	-120(%rbp), %ecx
	movslq	%ecx, %rdx
	movq	-160(%rbp), %rsi
	addl	(%rsi,%rdx,4), %eax
	movl	-136(%rbp), %edx
	movq	-112(%rbp), %rcx
	movl	%eax, %esi
	callq	gimp_pixel_fetcher_get_pixel
	movl	-92(%rbp), %eax
	movq	-112(%rbp), %rcx
	movslq	%eax, %rdi
	addq	%rdi, %rcx
	movq	%rcx, -112(%rbp)
# BB#18:                                # %for.inc.40
                                        #   in Loop: Header=BB4_16 Depth=3
	movl	-132(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -132(%rbp)
	jmp	.LBB4_16
.LBB4_19:                               # %for.end.42
                                        #   in Loop: Header=BB4_14 Depth=2
	movl	-44(%rbp), %eax
	movq	-104(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -104(%rbp)
# BB#20:                                # %for.inc.45
                                        #   in Loop: Header=BB4_14 Depth=2
	movl	-136(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -136(%rbp)
	jmp	.LBB4_14
.LBB4_21:                               # %for.end.47
                                        #   in Loop: Header=BB4_11 Depth=1
	jmp	.LBB4_31
.LBB4_22:                               # %sw.bb.48
                                        #   in Loop: Header=BB4_11 Depth=1
	movl	-40(%rbp), %eax
	movl	%eax, -132(%rbp)
.LBB4_23:                               # %for.cond.50
                                        #   Parent Loop BB4_11 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_25 Depth 3
	movl	-132(%rbp), %eax
	movl	-40(%rbp), %ecx
	addl	-32(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB4_30
# BB#24:                                # %for.body.56
                                        #   in Loop: Header=BB4_23 Depth=2
	movq	-104(%rbp), %rax
	movq	%rax, -112(%rbp)
	movl	-36(%rbp), %ecx
	movl	%ecx, -136(%rbp)
.LBB4_25:                               # %for.cond.58
                                        #   Parent Loop BB4_11 Depth=1
                                        #     Parent Loop BB4_23 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-136(%rbp), %eax
	movl	-36(%rbp), %ecx
	addl	-28(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB4_28
# BB#26:                                # %for.body.64
                                        #   in Loop: Header=BB4_25 Depth=3
	movq	-80(%rbp), %rdi
	movl	-132(%rbp), %esi
	movl	-136(%rbp), %eax
	movl	-132(%rbp), %ecx
	subl	-116(%rbp), %ecx
	movslq	%ecx, %rdx
	movq	-160(%rbp), %r8
	addl	(%r8,%rdx,4), %eax
	movq	-112(%rbp), %rcx
	movl	%eax, %edx
	callq	gimp_pixel_fetcher_get_pixel
	movl	-44(%rbp), %eax
	movq	-112(%rbp), %rcx
	movslq	%eax, %rdi
	addq	%rdi, %rcx
	movq	%rcx, -112(%rbp)
# BB#27:                                # %for.inc.72
                                        #   in Loop: Header=BB4_25 Depth=3
	movl	-136(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -136(%rbp)
	jmp	.LBB4_25
.LBB4_28:                               # %for.end.74
                                        #   in Loop: Header=BB4_23 Depth=2
	movl	-92(%rbp), %eax
	movq	-104(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -104(%rbp)
# BB#29:                                # %for.inc.77
                                        #   in Loop: Header=BB4_23 Depth=2
	movl	-132(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -132(%rbp)
	jmp	.LBB4_23
.LBB4_30:                               # %for.end.79
                                        #   in Loop: Header=BB4_11 Depth=1
	jmp	.LBB4_31
.LBB4_31:                               # %sw.epilog
                                        #   in Loop: Header=BB4_11 Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB4_33
# BB#32:                                # %if.then.81
                                        #   in Loop: Header=BB4_11 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gimp_drawable_preview_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_drawable_preview_draw_region
	jmp	.LBB4_34
.LBB4_33:                               # %if.else.84
                                        #   in Loop: Header=BB4_11 Depth=1
	movl	-32(%rbp), %eax
	imull	-28(%rbp), %eax
	addl	-140(%rbp), %eax
	movl	%eax, -140(%rbp)
	cvtsi2sdl	-140(%rbp), %xmm0
	cvtsi2sdl	-144(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -204(%rbp)        # 4-byte Spill
.LBB4_34:                               # %if.end.93
                                        #   in Loop: Header=BB4_11 Depth=1
	jmp	.LBB4_35
.LBB4_35:                               # %for.inc.94
                                        #   in Loop: Header=BB4_11 Depth=1
	movq	-72(%rbp), %rdi
	callq	gimp_pixel_rgns_process
	movq	%rax, -72(%rbp)
	jmp	.LBB4_11
.LBB4_36:                               # %for.end.96
	movq	-80(%rbp), %rdi
	callq	gimp_pixel_fetcher_destroy
	movq	-160(%rbp), %rdi
	callq	g_free
	cmpq	$0, -16(%rbp)
	jne	.LBB4_38
# BB#37:                                # %if.then.98
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	callq	gimp_progress_update
	movq	-8(%rbp), %rdi
	movl	%eax, -208(%rbp)        # 4-byte Spill
	callq	gimp_drawable_flush
	movl	$1, %esi
	movq	-8(%rbp), %rdi
	movl	(%rdi), %edi
	callq	gimp_drawable_merge_shadow
	movq	-8(%rbp), %rcx
	movl	(%rcx), %edi
	movl	-116(%rbp), %esi
	movl	-120(%rbp), %edx
	movl	-84(%rbp), %ecx
	movl	-88(%rbp), %r8d
	movl	%eax, -212(%rbp)        # 4-byte Spill
	callq	gimp_drawable_update
	movl	%eax, -216(%rbp)        # 4-byte Spill
.LBB4_38:                               # %if.end.104
	addq	$240, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	shift, .Lfunc_end4-shift
	.cfi_endproc

	.align	16, 0x90
	.type	shift_amount_callback,@function
shift_amount_callback:                  # @shift_amount_callback
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gimp_preview_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gimp_size_entry_get_refval
	cvttsd2si	%xmm0, %esi
	movl	%esi, shvals
	movq	-24(%rbp), %rdi
	callq	gimp_preview_invalidate
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	shift_amount_callback, .Lfunc_end5-shift_amount_callback
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
	.asciz	"shift-amount"
	.size	.L.str.6, 13

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"shift amount (0 <= shift_amount_x <= 200)"
	.size	.L.str.7, 42

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"orientation"
	.size	.L.str.8, 12

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"vertical, horizontal orientation"
	.size	.L.str.9, 33

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"plug-in-shift"
	.size	.L.str.10, 14

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Shift each row of pixels by a random amount"
	.size	.L.str.11, 44

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Shifts the pixels of the specified drawable. Each row will be displaced a random value of pixels."
	.size	.L.str.12, 98

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Spencer Kimball and Peter Mattis, ported by Brian Degenhardt and Federico Mena Quintero"
	.size	.L.str.13, 88

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Brian Degenhardt"
	.size	.L.str.14, 17

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"1997"
	.size	.L.str.15, 5

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"_Shift..."
	.size	.L.str.16, 10

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"RGB*, GRAY*"
	.size	.L.str.17, 12

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"<Image>/Filters/Distorts"
	.size	.L.str.18, 25

	.type	run.values,@object      # @run.values
	.local	run.values
	.comm	run.values,40,16
	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"gimp20-std-plug-ins"
	.size	.L.str.19, 20

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"UTF-8"
	.size	.L.str.20, 6

	.type	shvals,@object          # @shvals
	.data
	.align	4
shvals:
	.long	5                       # 0x5
	.long	0                       # 0x0
	.size	shvals, 8

	.type	.L.str.21,@object       # @.str.21
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.21:
	.asciz	"Shifting"
	.size	.L.str.21, 9

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"shift"
	.size	.L.str.22, 6

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Shift"
	.size	.L.str.23, 6

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"gimp-shift"
	.size	.L.str.24, 11

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
	.asciz	"Shift _horizontally"
	.size	.L.str.28, 20

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"Shift _vertically"
	.size	.L.str.29, 18

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"toggled"
	.size	.L.str.30, 8

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"%a"
	.size	.L.str.31, 3

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"Shift _amount:"
	.size	.L.str.32, 15

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"value-changed"
	.size	.L.str.33, 14


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
