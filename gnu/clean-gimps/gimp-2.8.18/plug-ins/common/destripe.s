	.text
	.file	"destripe.bc"
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
	movabsq	$.L.str.8, %rdi
	movabsq	$.L.str.9, %rsi
	movabsq	$.L.str.10, %rdx
	movabsq	$.L.str.11, %rax
	movabsq	$.L.str.12, %r9
	movabsq	$.L.str.13, %rcx
	movabsq	$.L.str.14, %r8
	movl	$1, %r10d
	movl	$4, %r11d
	xorl	%ebx, %ebx
	movabsq	$query.args, %r14
	xorl	%r15d, %r15d
	movl	%r15d, %r12d
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rcx
	movq	%r8, -56(%rbp)          # 8-byte Spill
	movq	%rax, %r8
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-56(%rbp), %r13         # 8-byte Reload
	movq	%r13, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$4, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%r14, 40(%rsp)
	movq	$0, 48(%rsp)
	movq	%r12, -64(%rbp)         # 8-byte Spill
	movl	%ebx, -68(%rbp)         # 4-byte Spill
	movl	%r10d, -72(%rbp)        # 4-byte Spill
	movl	%r11d, -76(%rbp)        # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.8, %rdi
	movabsq	$.L.str.15, %rsi
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
# BB#1:                                 # %do.body
	callq	gimp_locale_directory
	movabsq	$.L.str.16, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.16, %rdi
	movabsq	$.L.str.17, %rsi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.16, %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	textdomain
	movq	%rax, -80(%rbp)         # 8-byte Spill
# BB#2:                                 # %do.end
	movl	$3, -48(%rbp)
	movq	-24(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -44(%rbp)
	movl	$21, run.values(%rip)
	movl	-48(%rbp), %ecx
	movl	%ecx, run.values+8(%rip)
	movq	-32(%rbp), %rax
	movl	$1, (%rax)
	movq	-40(%rbp), %rax
	movq	$run.values, (%rax)
	movq	-24(%rbp), %rax
	movl	88(%rax), %edi
	callq	gimp_drawable_get
	movq	%rax, -56(%rbp)
	movl	-44(%rbp), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -84(%rbp)         # 4-byte Spill
	je	.LBB1_3
	jmp	.LBB1_24
.LBB1_24:                               # %do.end
	movl	-84(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	je	.LBB1_6
	jmp	.LBB1_25
.LBB1_25:                               # %do.end
	movl	-84(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	je	.LBB1_10
	jmp	.LBB1_11
.LBB1_3:                                # %sw.bb
	movabsq	$.L.str.8, %rdi
	movabsq	$vals, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movq	-56(%rbp), %rdi
	movl	%eax, -96(%rbp)         # 4-byte Spill
	callq	destripe_dialog
	cmpl	$0, %eax
	jne	.LBB1_5
# BB#4:                                 # %if.then
	jmp	.LBB1_23
.LBB1_5:                                # %if.end
	jmp	.LBB1_12
.LBB1_6:                                # %sw.bb.9
	cmpl	$4, -12(%rbp)
	je	.LBB1_8
# BB#7:                                 # %if.then.10
	movl	$1, -48(%rbp)
	jmp	.LBB1_9
.LBB1_8:                                # %if.else
	movq	-24(%rbp), %rax
	movl	128(%rax), %ecx
	movl	%ecx, vals+4
.LBB1_9:                                # %if.end.14
	jmp	.LBB1_12
.LBB1_10:                               # %sw.bb.15
	movabsq	$.L.str.8, %rdi
	movabsq	$vals, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jmp	.LBB1_12
.LBB1_11:                               # %sw.default
	movl	$1, -48(%rbp)
.LBB1_12:                               # %sw.epilog
	cmpl	$3, -48(%rbp)
	jne	.LBB1_22
# BB#13:                                # %if.then.18
	movq	-56(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_is_rgb
	cmpl	$0, %eax
	jne	.LBB1_15
# BB#14:                                # %lor.lhs.false
	movq	-56(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_is_gray
	cmpl	$0, %eax
	je	.LBB1_20
.LBB1_15:                               # %if.then.24
	movq	-56(%rbp), %rax
	movl	4(%rax), %ecx
	movl	%ecx, -104(%rbp)        # 4-byte Spill
	callq	gimp_tile_width
	movl	-104(%rbp), %ecx        # 4-byte Reload
	addl	%eax, %ecx
	subl	$1, %ecx
	movl	%ecx, -108(%rbp)        # 4-byte Spill
	callq	gimp_tile_width
	movl	-108(%rbp), %ecx        # 4-byte Reload
	movl	%eax, -112(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	xorl	%edx, %edx
	movl	-112(%rbp), %esi        # 4-byte Reload
	divl	%esi
	movl	%eax, %eax
	movl	%eax, %edi
	callq	gimp_tile_cache_ntiles
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-56(%rbp), %rdi
	callq	destripe
	cmpl	$1, -44(%rbp)
	je	.LBB1_17
# BB#16:                                # %if.then.29
	callq	gimp_displays_flush
	movl	%eax, -116(%rbp)        # 4-byte Spill
.LBB1_17:                               # %if.end.31
	cmpl	$0, -44(%rbp)
	jne	.LBB1_19
# BB#18:                                # %if.then.34
	movabsq	$.L.str.8, %rdi
	movabsq	$vals, %rax
	movl	$12, %edx
	movq	%rax, %rsi
	callq	gimp_procedural_db_set_data
	movl	%eax, -120(%rbp)        # 4-byte Spill
.LBB1_19:                               # %if.end.36
	jmp	.LBB1_21
.LBB1_20:                               # %if.else.37
	movl	$0, -48(%rbp)
.LBB1_21:                               # %if.end.38
	jmp	.LBB1_22
.LBB1_22:                               # %if.end.39
	movl	-48(%rbp), %eax
	movl	%eax, run.values+8
	movq	-56(%rbp), %rdi
	callq	gimp_drawable_detach
.LBB1_23:                               # %return
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
	.quad	4611686018427387904     # double 2
.LCPI3_1:
	.quad	4636737291354636288     # double 100
.LCPI3_2:
	.quad	4607182418800017408     # double 1
.LCPI3_3:
	.quad	4621819117588971520     # double 10
	.text
	.align	16, 0x90
	.type	destripe_dialog,@function
destripe_dialog:                        # @destripe_dialog
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
	subq	$336, %rsp              # imm = 0x150
.Ltmp17:
	.cfi_offset %rbx, -32
.Ltmp18:
	.cfi_offset %r14, -24
	movabsq	$.L.str.18, %rax
	movl	$1, %esi
	movq	%rdi, -24(%rbp)
	movq	%rax, %rdi
	callq	gimp_ui_init
	movabsq	$.L.str.19, %rdi
	callq	gettext
	movabsq	$.L.str.20, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	movabsq	$gimp_standard_help_func, %r8
	movabsq	$.L.str.8, %r9
	movabsq	$.L.str.21, %rdi
	movl	$4294967290, %r10d      # imm = 0xFFFFFFFA
	movabsq	$.L.str.22, %r11
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
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
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
	movq	-32(%rbp), %rdi
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
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-32(%rbp), %rax
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
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
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
	movabsq	$.L.str.23, %rsi
	movabsq	$destripe, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movl	$2, %r9d
	movq	-48(%rbp), %rdi
	movq	-24(%rbp), %r11
	movq	%rax, %rdx
	movq	%r11, %rcx
	callq	g_signal_connect_data
	movl	$1, %edi
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
	movabsq	$.L.str.24, %rdi
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	$1, %edx
	movl	$140, %r8d
	movsd	.LCPI3_0, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI3_1, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI3_2, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI3_3, %xmm4         # xmm4 = mem[0],zero
	xorps	%xmm0, %xmm0
	xorl	%r9d, %r9d
	movl	%r9d, %esi
	cvtsi2sdl	vals+4, %xmm5
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rsi, -200(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movl	%ecx, -204(%rbp)        # 4-byte Spill
	movq	%rax, %rcx
	movl	-204(%rbp), %r9d        # 4-byte Reload
	movsd	%xmm0, -216(%rbp)       # 8-byte Spill
	movaps	%xmm5, %xmm0
	movl	$0, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-216(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-216(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	callq	gimp_scale_entry_new
	movabsq	$.L.str.25, %rsi
	movabsq	$gimp_int_adjustment_update, %rcx
	movabsq	$vals, %rdi
	addq	$4, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rdi, -224(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-224(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.25, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-72(%rbp), %rdx
	movq	-48(%rbp), %rdi
	movq	%rdi, -232(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-232(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.26, %rdi
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_mnemonic
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-64(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	vals, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.27, %rsi
	movabsq	$gimp_toggle_button_update, %rax
	movabsq	$vals, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-64(%rbp), %r11
	movq	%rdi, -272(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %rdx
	movq	-272(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.27, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-64(%rbp), %rdx
	movq	-48(%rbp), %rdi
	movq	%rdi, -280(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-280(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-32(%rbp), %rdi
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
	movq	-32(%rbp), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gimp_dialog_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dialog_run
	cmpl	$-5, %eax
	sete	%r14b
	andb	$1, %r14b
	movzbl	%r14b, %eax
	movl	%eax, -76(%rbp)
	movq	-32(%rbp), %rdi
	callq	gtk_widget_destroy
	movl	-76(%rbp), %eax
	addq	$336, %rsp              # imm = 0x150
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end3:
	.size	destripe_dialog, .Lfunc_end3-destripe_dialog
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4602678819172646912     # double 0.5
.LCPI4_1:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	destripe,@function
destripe:                               # @destripe
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
	subq	$432, %rsp              # imm = 0x1B0
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	callq	gimp_tile_width
	xorps	%xmm0, %xmm0
	movl	%eax, -180(%rbp)
	movsd	%xmm0, -128(%rbp)
	movsd	%xmm0, -136(%rbp)
	movq	-8(%rbp), %rsi
	movl	(%rsi), %edi
	callq	gimp_drawable_bpp
	movl	%eax, -160(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB4_2
# BB#1:                                 # %if.then
	leaq	-140(%rbp), %rsi
	leaq	-148(%rbp), %rdx
	movq	-16(%rbp), %rdi
	callq	gimp_preview_get_position
	leaq	-152(%rbp), %rsi
	leaq	-156(%rbp), %rdx
	movq	-16(%rbp), %rdi
	callq	gimp_preview_get_size
	jmp	.LBB4_5
.LBB4_2:                                # %if.else
	movabsq	$.L.str.28, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_progress_init
	leaq	-140(%rbp), %rsi
	leaq	-148(%rbp), %rdx
	leaq	-152(%rbp), %rcx
	leaq	-156(%rbp), %r8
	movq	-8(%rbp), %rdi
	movl	(%rdi), %edi
	movl	%eax, -292(%rbp)        # 4-byte Spill
	callq	gimp_drawable_mask_intersect
	cmpl	$0, %eax
	jne	.LBB4_4
# BB#3:                                 # %if.then.7
	jmp	.LBB4_85
.LBB4_4:                                # %if.end
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movsd	%xmm1, -128(%rbp)
	cvtsi2sdl	-180(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	cvtsi2sdl	-152(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -136(%rbp)
.LBB4_5:                                # %if.end.9
	leaq	-64(%rbp), %rdi
	xorl	%eax, %eax
	movl	-140(%rbp), %ecx
	addl	-152(%rbp), %ecx
	movl	%ecx, -144(%rbp)
	movq	-8(%rbp), %rsi
	movl	-140(%rbp), %edx
	movl	-148(%rbp), %ecx
	movl	-152(%rbp), %r8d
	movl	-156(%rbp), %r9d
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	movl	%eax, -296(%rbp)        # 4-byte Spill
	callq	gimp_pixel_rgn_init
	leaq	-112(%rbp), %rdi
	movl	$1, %eax
	movq	-8(%rbp), %rsi
	movl	-140(%rbp), %edx
	movl	-148(%rbp), %ecx
	movl	-152(%rbp), %r8d
	movl	-156(%rbp), %r9d
	cmpq	$0, -16(%rbp)
	sete	%r10b
	andb	$1, %r10b
	movzbl	%r10b, %r11d
	movl	%r11d, (%rsp)
	movl	$1, 8(%rsp)
	movl	%eax, -300(%rbp)        # 4-byte Spill
	callq	gimp_pixel_rgn_init
	movl	$8, %eax
	movl	%eax, %esi
	movl	-152(%rbp), %eax
	imull	-160(%rbp), %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	movl	$8, %ecx
	movl	%ecx, %esi
	movq	%rax, -168(%rbp)
	movl	-152(%rbp), %ecx
	imull	-160(%rbp), %ecx
	movslq	%ecx, %rdi
	callq	g_malloc_n
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	%rax, -176(%rbp)
	movl	-180(%rbp), %ecx
	imull	-156(%rbp), %ecx
	imull	-160(%rbp), %ecx
	movslq	%ecx, %rdi
	callq	g_malloc_n
	xorl	%esi, %esi
	movq	%rax, -120(%rbp)
	movq	-168(%rbp), %rax
	movl	-152(%rbp), %ecx
	imull	-160(%rbp), %ecx
	movslq	%ecx, %rdi
	shlq	$3, %rdi
	movq	%rdi, -312(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-312(%rbp), %rdx        # 8-byte Reload
	callq	memset
	movl	-140(%rbp), %ecx
	movl	%ecx, -196(%rbp)
.LBB4_6:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_10 Depth 2
                                        #       Child Loop BB4_12 Depth 3
	movl	-196(%rbp), %eax
	cmpl	-144(%rbp), %eax
	jge	.LBB4_20
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB4_6 Depth=1
	movq	-120(%rbp), %rax
	movq	%rax, -208(%rbp)
	movl	-144(%rbp), %ecx
	subl	-196(%rbp), %ecx
	movl	%ecx, -200(%rbp)
	movl	-200(%rbp), %ecx
	cmpl	-180(%rbp), %ecx
	jle	.LBB4_9
# BB#8:                                 # %if.then.28
                                        #   in Loop: Header=BB4_6 Depth=1
	movl	-180(%rbp), %eax
	movl	%eax, -200(%rbp)
.LBB4_9:                                # %if.end.29
                                        #   in Loop: Header=BB4_6 Depth=1
	leaq	-64(%rbp), %rdi
	movq	-208(%rbp), %rsi
	movl	-196(%rbp), %edx
	movl	-148(%rbp), %ecx
	movl	-200(%rbp), %r8d
	movl	-156(%rbp), %r9d
	callq	gimp_pixel_rgn_get_rect
	movl	$0, -192(%rbp)
.LBB4_10:                               # %for.cond.30
                                        #   Parent Loop BB4_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_12 Depth 3
	movl	-192(%rbp), %eax
	cmpl	-156(%rbp), %eax
	jge	.LBB4_16
# BB#11:                                # %for.body.33
                                        #   in Loop: Header=BB4_10 Depth=2
	movq	-168(%rbp), %rax
	movl	-196(%rbp), %ecx
	subl	-140(%rbp), %ecx
	imull	-160(%rbp), %ecx
	movslq	%ecx, %rdx
	shlq	$3, %rdx
	addq	%rdx, %rax
	movq	%rax, -216(%rbp)
	movq	-208(%rbp), %rax
	movl	-200(%rbp), %ecx
	imull	-160(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -224(%rbp)
.LBB4_12:                               # %while.cond
                                        #   Parent Loop BB4_6 Depth=1
                                        #     Parent Loop BB4_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-208(%rbp), %rax
	cmpq	-224(%rbp), %rax
	jae	.LBB4_14
# BB#13:                                # %while.body
                                        #   in Loop: Header=BB4_12 Depth=3
	movq	-208(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -208(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, %eax
	movq	-216(%rbp), %rcx
	movq	%rcx, %rsi
	addq	$8, %rsi
	movq	%rsi, -216(%rbp)
	addq	(%rcx), %rax
	movq	%rax, (%rcx)
	jmp	.LBB4_12
.LBB4_14:                               # %while.end
                                        #   in Loop: Header=BB4_10 Depth=2
	jmp	.LBB4_15
.LBB4_15:                               # %for.inc
                                        #   in Loop: Header=BB4_10 Depth=2
	movl	-192(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -192(%rbp)
	jmp	.LBB4_10
.LBB4_16:                               # %for.end
                                        #   in Loop: Header=BB4_6 Depth=1
	cmpq	$0, -16(%rbp)
	jne	.LBB4_18
# BB#17:                                # %if.then.45
                                        #   in Loop: Header=BB4_6 Depth=1
	movsd	-136(%rbp), %xmm0       # xmm0 = mem[0],zero
	addsd	-128(%rbp), %xmm0
	movsd	%xmm0, -128(%rbp)
	callq	gimp_progress_update
	movl	%eax, -316(%rbp)        # 4-byte Spill
.LBB4_18:                               # %if.end.48
                                        #   in Loop: Header=BB4_6 Depth=1
	jmp	.LBB4_19
.LBB4_19:                               # %for.inc.49
                                        #   in Loop: Header=BB4_6 Depth=1
	movl	-180(%rbp), %eax
	addl	-196(%rbp), %eax
	movl	%eax, -196(%rbp)
	jmp	.LBB4_6
.LBB4_20:                               # %for.end.51
	movl	$2, %eax
	movl	vals+4, %ecx
	movl	%eax, -320(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-320(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	imull	-160(%rbp), %eax
	movl	%eax, -228(%rbp)
	movl	$0, -184(%rbp)
.LBB4_21:                               # %for.cond.54
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_26 Depth 2
	movl	$3, %eax
	movl	-184(%rbp), %ecx
	cmpl	-160(%rbp), %eax
	movl	%ecx, -324(%rbp)        # 4-byte Spill
	jge	.LBB4_23
# BB#22:                                # %cond.true
                                        #   in Loop: Header=BB4_21 Depth=1
	movl	$3, %eax
	movl	%eax, -328(%rbp)        # 4-byte Spill
	jmp	.LBB4_24
.LBB4_23:                               # %cond.false
                                        #   in Loop: Header=BB4_21 Depth=1
	movl	-160(%rbp), %eax
	movl	%eax, -328(%rbp)        # 4-byte Spill
.LBB4_24:                               # %cond.end
                                        #   in Loop: Header=BB4_21 Depth=1
	movl	-328(%rbp), %eax        # 4-byte Reload
	movl	-324(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jge	.LBB4_40
# BB#25:                                # %for.body.59
                                        #   in Loop: Header=BB4_21 Depth=1
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-168(%rbp), %rsi
	movslq	-228(%rbp), %rdi
	movq	%rdx, %r8
	subq	%rdi, %r8
	shlq	$3, %r8
	addq	%r8, %rsi
	movslq	-184(%rbp), %rdi
	shlq	$3, %rdi
	addq	%rdi, %rsi
	movq	%rsi, -240(%rbp)
	movq	-176(%rbp), %rsi
	movslq	-228(%rbp), %rdi
	subq	%rdi, %rdx
	shlq	$3, %rdx
	addq	%rdx, %rsi
	movslq	-184(%rbp), %rdx
	shlq	$3, %rdx
	addq	%rdx, %rsi
	movq	%rsi, -248(%rbp)
	movq	$0, -256(%rbp)
	movl	$0, -260(%rbp)
	subl	-228(%rbp), %eax
	movl	%eax, -188(%rbp)
.LBB4_26:                               # %for.cond.71
                                        #   Parent Loop BB4_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-188(%rbp), %eax
	movl	-152(%rbp), %ecx
	imull	-160(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB4_38
# BB#27:                                # %for.body.75
                                        #   in Loop: Header=BB4_26 Depth=2
	movl	-188(%rbp), %eax
	addl	-228(%rbp), %eax
	movl	-152(%rbp), %ecx
	imull	-160(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB4_29
# BB#28:                                # %if.then.80
                                        #   in Loop: Header=BB4_26 Depth=2
	movslq	-228(%rbp), %rax
	movq	-240(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	addq	-256(%rbp), %rax
	movq	%rax, -256(%rbp)
	movl	-260(%rbp), %edx
	addl	$1, %edx
	movl	%edx, -260(%rbp)
.LBB4_29:                               # %if.end.83
                                        #   in Loop: Header=BB4_26 Depth=2
	movl	-188(%rbp), %eax
	subl	-228(%rbp), %eax
	cmpl	$0, %eax
	jl	.LBB4_31
# BB#30:                                # %if.then.87
                                        #   in Loop: Header=BB4_26 Depth=2
	xorl	%eax, %eax
	subl	-228(%rbp), %eax
	movslq	%eax, %rcx
	movq	-240(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movq	-256(%rbp), %rdx
	subq	%rcx, %rdx
	movq	%rdx, -256(%rbp)
	movl	-260(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -260(%rbp)
.LBB4_31:                               # %if.end.92
                                        #   in Loop: Header=BB4_26 Depth=2
	cmpl	$0, -188(%rbp)
	jl	.LBB4_36
# BB#32:                                # %if.then.95
                                        #   in Loop: Header=BB4_26 Depth=2
	movq	-240(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_34
# BB#33:                                # %if.then.97
                                        #   in Loop: Header=BB4_26 Depth=2
	movq	-256(%rbp), %rax
	movslq	-260(%rbp), %rcx
	cqto
	idivq	%rcx
	movq	-240(%rbp), %rcx
	subq	(%rcx), %rax
	shlq	$10, %rax
	movq	-240(%rbp), %rcx
	cqto
	idivq	(%rcx)
	movq	-248(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	.LBB4_35
.LBB4_34:                               # %if.else.102
                                        #   in Loop: Header=BB4_26 Depth=2
	movq	-248(%rbp), %rax
	movq	$2147483647, (%rax)     # imm = 0x7FFFFFFF
.LBB4_35:                               # %if.end.103
                                        #   in Loop: Header=BB4_26 Depth=2
	jmp	.LBB4_36
.LBB4_36:                               # %if.end.104
                                        #   in Loop: Header=BB4_26 Depth=2
	movl	-160(%rbp), %eax
	movq	-240(%rbp), %rcx
	movslq	%eax, %rdx
	shlq	$3, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -240(%rbp)
	movl	-160(%rbp), %eax
	movq	-248(%rbp), %rcx
	movslq	%eax, %rdx
	shlq	$3, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -248(%rbp)
# BB#37:                                # %for.inc.109
                                        #   in Loop: Header=BB4_26 Depth=2
	movl	-160(%rbp), %eax
	addl	-188(%rbp), %eax
	movl	%eax, -188(%rbp)
	jmp	.LBB4_26
.LBB4_38:                               # %for.end.111
                                        #   in Loop: Header=BB4_21 Depth=1
	jmp	.LBB4_39
.LBB4_39:                               # %for.inc.112
                                        #   in Loop: Header=BB4_21 Depth=1
	movl	-184(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -184(%rbp)
	jmp	.LBB4_21
.LBB4_40:                               # %for.end.114
	movl	-140(%rbp), %eax
	movl	%eax, -196(%rbp)
.LBB4_41:                               # %for.cond.115
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_47 Depth 2
                                        #       Child Loop BB4_50 Depth 3
                                        #       Child Loop BB4_63 Depth 3
	movl	-196(%rbp), %eax
	cmpl	-144(%rbp), %eax
	jge	.LBB4_81
# BB#42:                                # %for.body.118
                                        #   in Loop: Header=BB4_41 Depth=1
	movq	-120(%rbp), %rax
	movq	%rax, -272(%rbp)
	movl	-144(%rbp), %ecx
	subl	-196(%rbp), %ecx
	movl	%ecx, -200(%rbp)
	movl	-200(%rbp), %ecx
	cmpl	-180(%rbp), %ecx
	jle	.LBB4_44
# BB#43:                                # %if.then.123
                                        #   in Loop: Header=BB4_41 Depth=1
	movl	-180(%rbp), %eax
	movl	%eax, -200(%rbp)
.LBB4_44:                               # %if.end.124
                                        #   in Loop: Header=BB4_41 Depth=1
	leaq	-64(%rbp), %rdi
	movq	-272(%rbp), %rsi
	movl	-196(%rbp), %edx
	movl	-148(%rbp), %ecx
	movl	-200(%rbp), %r8d
	movl	-156(%rbp), %r9d
	callq	gimp_pixel_rgn_get_rect
	cmpq	$0, -16(%rbp)
	jne	.LBB4_46
# BB#45:                                # %if.then.126
                                        #   in Loop: Header=BB4_41 Depth=1
	movsd	-136(%rbp), %xmm0       # xmm0 = mem[0],zero
	addsd	-128(%rbp), %xmm0
	movsd	%xmm0, -128(%rbp)
	callq	gimp_progress_update
	movl	%eax, -332(%rbp)        # 4-byte Spill
.LBB4_46:                               # %if.end.129
                                        #   in Loop: Header=BB4_41 Depth=1
	movl	$0, -192(%rbp)
.LBB4_47:                               # %for.cond.130
                                        #   Parent Loop BB4_41 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_50 Depth 3
                                        #       Child Loop BB4_63 Depth 3
	movl	-192(%rbp), %eax
	cmpl	-156(%rbp), %eax
	jge	.LBB4_77
# BB#48:                                # %for.body.133
                                        #   in Loop: Header=BB4_47 Depth=2
	movq	-176(%rbp), %rax
	movl	-196(%rbp), %ecx
	subl	-140(%rbp), %ecx
	imull	-160(%rbp), %ecx
	movslq	%ecx, %rdx
	shlq	$3, %rdx
	addq	%rdx, %rax
	movq	%rax, -280(%rbp)
	movq	-272(%rbp), %rax
	movl	-200(%rbp), %ecx
	imull	-160(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -288(%rbp)
	cmpl	$0, vals
	je	.LBB4_62
# BB#49:                                # %if.then.144
                                        #   in Loop: Header=BB4_47 Depth=2
	jmp	.LBB4_50
.LBB4_50:                               # %while.cond.145
                                        #   Parent Loop BB4_41 Depth=1
                                        #     Parent Loop BB4_47 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-272(%rbp), %rax
	cmpq	-288(%rbp), %rax
	jae	.LBB4_61
# BB#51:                                # %while.body.148
                                        #   in Loop: Header=BB4_50 Depth=3
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-272(%rbp), %rdx
	movzbl	(%rdx), %eax
	movl	%eax, %edx
	movq	-280(%rbp), %rsi
	imulq	(%rsi), %rdx
	sarq	$10, %rdx
	addq	$128, %rdx
	cmpq	%rdx, %rcx
	jle	.LBB4_53
# BB#52:                                # %cond.true.154
                                        #   in Loop: Header=BB4_50 Depth=3
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -344(%rbp)        # 8-byte Spill
	jmp	.LBB4_54
.LBB4_53:                               # %cond.false.155
                                        #   in Loop: Header=BB4_50 Depth=3
	movq	-272(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, %eax
	movq	-280(%rbp), %rdx
	imulq	(%rdx), %rax
	sarq	$10, %rax
	addq	$128, %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
.LBB4_54:                               # %cond.end.160
                                        #   in Loop: Header=BB4_50 Depth=3
	movq	-344(%rbp), %rax        # 8-byte Reload
	movl	$255, %ecx
	movl	%ecx, %edx
	cmpq	%rax, %rdx
	jge	.LBB4_56
# BB#55:                                # %cond.true.164
                                        #   in Loop: Header=BB4_50 Depth=3
	movl	$255, %eax
	movl	%eax, %ecx
	movq	%rcx, -352(%rbp)        # 8-byte Spill
	jmp	.LBB4_60
.LBB4_56:                               # %cond.false.165
                                        #   in Loop: Header=BB4_50 Depth=3
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-272(%rbp), %rdx
	movzbl	(%rdx), %eax
	movl	%eax, %edx
	movq	-280(%rbp), %rsi
	imulq	(%rsi), %rdx
	sarq	$10, %rdx
	addq	$128, %rdx
	cmpq	%rdx, %rcx
	jle	.LBB4_58
# BB#57:                                # %cond.true.172
                                        #   in Loop: Header=BB4_50 Depth=3
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -360(%rbp)        # 8-byte Spill
	jmp	.LBB4_59
.LBB4_58:                               # %cond.false.173
                                        #   in Loop: Header=BB4_50 Depth=3
	movq	-272(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, %eax
	movq	-280(%rbp), %rdx
	imulq	(%rdx), %rax
	sarq	$10, %rax
	addq	$128, %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
.LBB4_59:                               # %cond.end.178
                                        #   in Loop: Header=BB4_50 Depth=3
	movq	-360(%rbp), %rax        # 8-byte Reload
	movq	%rax, -352(%rbp)        # 8-byte Spill
.LBB4_60:                               # %cond.end.180
                                        #   in Loop: Header=BB4_50 Depth=3
	movq	-352(%rbp), %rax        # 8-byte Reload
	movb	%al, %cl
	movq	-272(%rbp), %rax
	movb	%cl, (%rax)
	movq	-280(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -280(%rbp)
	movq	-272(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -272(%rbp)
	jmp	.LBB4_50
.LBB4_61:                               # %while.end.185
                                        #   in Loop: Header=BB4_47 Depth=2
	jmp	.LBB4_75
.LBB4_62:                               # %if.else.186
                                        #   in Loop: Header=BB4_47 Depth=2
	jmp	.LBB4_63
.LBB4_63:                               # %while.cond.187
                                        #   Parent Loop BB4_41 Depth=1
                                        #     Parent Loop BB4_47 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-272(%rbp), %rax
	cmpq	-288(%rbp), %rax
	jae	.LBB4_74
# BB#64:                                # %while.body.190
                                        #   in Loop: Header=BB4_63 Depth=3
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-272(%rbp), %rdx
	movzbl	(%rdx), %eax
	movl	%eax, %edx
	movq	-272(%rbp), %rsi
	movzbl	(%rsi), %eax
	movl	%eax, %esi
	movq	-280(%rbp), %rdi
	imulq	(%rdi), %rsi
	sarq	$10, %rsi
	addq	%rsi, %rdx
	cmpq	%rdx, %rcx
	jle	.LBB4_66
# BB#65:                                # %cond.true.198
                                        #   in Loop: Header=BB4_63 Depth=3
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -368(%rbp)        # 8-byte Spill
	jmp	.LBB4_67
.LBB4_66:                               # %cond.false.199
                                        #   in Loop: Header=BB4_63 Depth=3
	movq	-272(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, %eax
	movq	-272(%rbp), %rdx
	movzbl	(%rdx), %ecx
	movl	%ecx, %edx
	movq	-280(%rbp), %rsi
	imulq	(%rsi), %rdx
	sarq	$10, %rdx
	addq	%rdx, %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
.LBB4_67:                               # %cond.end.205
                                        #   in Loop: Header=BB4_63 Depth=3
	movq	-368(%rbp), %rax        # 8-byte Reload
	movl	$255, %ecx
	movl	%ecx, %edx
	cmpq	%rax, %rdx
	jge	.LBB4_69
# BB#68:                                # %cond.true.209
                                        #   in Loop: Header=BB4_63 Depth=3
	movl	$255, %eax
	movl	%eax, %ecx
	movq	%rcx, -376(%rbp)        # 8-byte Spill
	jmp	.LBB4_73
.LBB4_69:                               # %cond.false.210
                                        #   in Loop: Header=BB4_63 Depth=3
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-272(%rbp), %rdx
	movzbl	(%rdx), %eax
	movl	%eax, %edx
	movq	-272(%rbp), %rsi
	movzbl	(%rsi), %eax
	movl	%eax, %esi
	movq	-280(%rbp), %rdi
	imulq	(%rdi), %rsi
	sarq	$10, %rsi
	addq	%rsi, %rdx
	cmpq	%rdx, %rcx
	jle	.LBB4_71
# BB#70:                                # %cond.true.218
                                        #   in Loop: Header=BB4_63 Depth=3
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -384(%rbp)        # 8-byte Spill
	jmp	.LBB4_72
.LBB4_71:                               # %cond.false.219
                                        #   in Loop: Header=BB4_63 Depth=3
	movq	-272(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, %eax
	movq	-272(%rbp), %rdx
	movzbl	(%rdx), %ecx
	movl	%ecx, %edx
	movq	-280(%rbp), %rsi
	imulq	(%rsi), %rdx
	sarq	$10, %rdx
	addq	%rdx, %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
.LBB4_72:                               # %cond.end.225
                                        #   in Loop: Header=BB4_63 Depth=3
	movq	-384(%rbp), %rax        # 8-byte Reload
	movq	%rax, -376(%rbp)        # 8-byte Spill
.LBB4_73:                               # %cond.end.227
                                        #   in Loop: Header=BB4_63 Depth=3
	movq	-376(%rbp), %rax        # 8-byte Reload
	movb	%al, %cl
	movq	-272(%rbp), %rax
	movb	%cl, (%rax)
	movq	-280(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -280(%rbp)
	movq	-272(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -272(%rbp)
	jmp	.LBB4_63
.LBB4_74:                               # %while.end.232
                                        #   in Loop: Header=BB4_47 Depth=2
	jmp	.LBB4_75
.LBB4_75:                               # %if.end.233
                                        #   in Loop: Header=BB4_47 Depth=2
	jmp	.LBB4_76
.LBB4_76:                               # %for.inc.234
                                        #   in Loop: Header=BB4_47 Depth=2
	movl	-192(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -192(%rbp)
	jmp	.LBB4_47
.LBB4_77:                               # %for.end.236
                                        #   in Loop: Header=BB4_41 Depth=1
	leaq	-112(%rbp), %rdi
	movq	-120(%rbp), %rsi
	movl	-196(%rbp), %edx
	movl	-148(%rbp), %ecx
	movl	-200(%rbp), %r8d
	movl	-156(%rbp), %r9d
	callq	gimp_pixel_rgn_set_rect
	cmpq	$0, -16(%rbp)
	jne	.LBB4_79
# BB#78:                                # %if.then.238
                                        #   in Loop: Header=BB4_41 Depth=1
	movsd	-136(%rbp), %xmm0       # xmm0 = mem[0],zero
	addsd	-128(%rbp), %xmm0
	movsd	%xmm0, -128(%rbp)
	callq	gimp_progress_update
	movl	%eax, -388(%rbp)        # 4-byte Spill
.LBB4_79:                               # %if.end.241
                                        #   in Loop: Header=BB4_41 Depth=1
	jmp	.LBB4_80
.LBB4_80:                               # %for.inc.242
                                        #   in Loop: Header=BB4_41 Depth=1
	movl	-180(%rbp), %eax
	addl	-196(%rbp), %eax
	movl	%eax, -196(%rbp)
	jmp	.LBB4_41
.LBB4_81:                               # %for.end.244
	movq	-120(%rbp), %rdi
	callq	g_free
	cmpq	$0, -16(%rbp)
	je	.LBB4_83
# BB#82:                                # %if.then.246
	movq	-16(%rbp), %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	gimp_drawable_preview_get_type
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-112(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_drawable_preview_draw_region
	jmp	.LBB4_84
.LBB4_83:                               # %if.else.249
	movsd	.LCPI4_1, %xmm0         # xmm0 = mem[0],zero
	callq	gimp_progress_update
	movq	-8(%rbp), %rdi
	movl	%eax, -404(%rbp)        # 4-byte Spill
	callq	gimp_drawable_flush
	movl	$1, %esi
	movq	-8(%rbp), %rdi
	movl	(%rdi), %edi
	callq	gimp_drawable_merge_shadow
	movq	-8(%rbp), %rcx
	movl	(%rcx), %edi
	movl	-140(%rbp), %esi
	movl	-148(%rbp), %edx
	movl	-152(%rbp), %ecx
	movl	-156(%rbp), %r8d
	movl	%eax, -408(%rbp)        # 4-byte Spill
	callq	gimp_drawable_update
	movl	%eax, -412(%rbp)        # 4-byte Spill
.LBB4_84:                               # %if.end.255
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-176(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
.LBB4_85:                               # %return
	addq	$432, %rsp              # imm = 0x1B0
	popq	%rbp
	retq
.Lfunc_end4:
	.size	destripe, .Lfunc_end4-destripe
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
	.size	query.args, 96

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
	.asciz	"avg-width"
	.size	.L.str.6, 10

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Averaging filter width (default = 36)"
	.size	.L.str.7, 38

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"plug-in-destripe"
	.size	.L.str.8, 17

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Remove vertical stripe artifacts from the image"
	.size	.L.str.9, 48

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"This plug-in tries to remove vertical stripes from an image."
	.size	.L.str.10, 61

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Marc Lehmann <pcg@goof.com>"
	.size	.L.str.11, 28

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"0.2"
	.size	.L.str.12, 4

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Des_tripe..."
	.size	.L.str.13, 13

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"RGB*, GRAY*"
	.size	.L.str.14, 12

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"<Image>/Filters/Enhance"
	.size	.L.str.15, 24

	.type	run.values,@object      # @run.values
	.local	run.values
	.comm	run.values,40,16
	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"gimp20-std-plug-ins"
	.size	.L.str.16, 20

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"UTF-8"
	.size	.L.str.17, 6

	.type	vals,@object            # @vals
	.data
	.align	4
vals:
	.long	0                       # 0x0
	.long	36                      # 0x24
	.long	1                       # 0x1
	.size	vals, 12

	.type	.L.str.18,@object       # @.str.18
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.18:
	.asciz	"destripe"
	.size	.L.str.18, 9

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Destripe"
	.size	.L.str.19, 9

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"gimp-destripe"
	.size	.L.str.20, 14

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"gtk-cancel"
	.size	.L.str.21, 11

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"gtk-ok"
	.size	.L.str.22, 7

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"invalidated"
	.size	.L.str.23, 12

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"_Width:"
	.size	.L.str.24, 8

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"value-changed"
	.size	.L.str.25, 14

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"Create _histogram"
	.size	.L.str.26, 18

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"toggled"
	.size	.L.str.27, 8

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"Destriping"
	.size	.L.str.28, 11


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
