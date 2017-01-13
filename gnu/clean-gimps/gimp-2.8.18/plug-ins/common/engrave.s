	.text
	.file	"engrave.bc"
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
	movabsq	$.L.str.10, %rdi
	movabsq	$.L.str.11, %rsi
	movabsq	$.L.str.12, %rdx
	movabsq	$.L.str.13, %rax
	movabsq	$.L.str.14, %r9
	movabsq	$.L.str.15, %rcx
	movabsq	$.L.str.16, %r8
	movl	$1, %r10d
	movl	$5, %r11d
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
	movl	$5, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%r14, 40(%rsp)
	movq	$0, 48(%rsp)
	movq	%r12, -64(%rbp)         # 8-byte Spill
	movl	%ebx, -68(%rbp)         # 4-byte Spill
	movl	%r10d, -72(%rbp)        # 4-byte Spill
	movl	%r11d, -76(%rbp)        # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.10, %rdi
	movabsq	$.L.str.17, %rsi
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
	subq	$112, %rsp
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
	movabsq	$.L.str.18, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.18, %rdi
	movabsq	$.L.str.19, %rsi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.18, %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	textdomain
	movq	%rax, -80(%rbp)         # 8-byte Spill
# BB#2:                                 # %do.end
	movq	-32(%rbp), %rax
	movl	$1, (%rax)
	movq	-40(%rbp), %rax
	movq	$run.values, (%rax)
	movl	$21, run.values(%rip)
	movl	-56(%rbp), %ecx
	movl	%ecx, run.values+8(%rip)
	movq	-24(%rbp), %rax
	movl	88(%rax), %edi
	callq	gimp_drawable_get
	movq	%rax, -48(%rbp)
	movl	$16, %ecx
	movl	%ecx, %edi
	callq	gimp_tile_cache_ntiles
	movl	-52(%rbp), %ecx
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
	je	.LBB1_14
	jmp	.LBB1_15
.LBB1_3:                                # %sw.bb
	movabsq	$.L.str.10, %rdi
	movabsq	$pvals, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movq	-48(%rbp), %rdi
	movl	%eax, -96(%rbp)         # 4-byte Spill
	callq	engrave_dialog
	cmpl	$0, %eax
	jne	.LBB1_5
# BB#4:                                 # %if.then
	movq	-48(%rbp), %rdi
	callq	gimp_drawable_detach
	jmp	.LBB1_23
.LBB1_5:                                # %if.end
	jmp	.LBB1_16
.LBB1_6:                                # %sw.bb.9
	cmpl	$5, -12(%rbp)
	je	.LBB1_8
# BB#7:                                 # %if.then.10
	movl	$1, -56(%rbp)
.LBB1_8:                                # %if.end.11
	cmpl	$3, -56(%rbp)
	jne	.LBB1_10
# BB#9:                                 # %if.then.13
	xorl	%eax, %eax
	movl	$1, %ecx
	movq	-24(%rbp), %rdx
	movl	128(%rdx), %esi
	movl	%esi, pvals
	movq	-24(%rbp), %rdx
	cmpl	$0, 168(%rdx)
	cmovnel	%ecx, %eax
	movl	%eax, pvals+4
.LBB1_10:                               # %if.end.21
	cmpl	$3, -56(%rbp)
	jne	.LBB1_13
# BB#11:                                # %land.lhs.true
	cmpl	$0, pvals
	jge	.LBB1_13
# BB#12:                                # %if.then.24
	movl	$1, -56(%rbp)
.LBB1_13:                               # %if.end.25
	jmp	.LBB1_16
.LBB1_14:                               # %sw.bb.26
	movabsq	$.L.str.10, %rdi
	movabsq	$pvals, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jmp	.LBB1_16
.LBB1_15:                               # %sw.default
	jmp	.LBB1_16
.LBB1_16:                               # %sw.epilog
	cmpl	$3, -56(%rbp)
	jne	.LBB1_22
# BB#17:                                # %if.then.29
	movabsq	$.L.str.20, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_progress_init
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	-48(%rbp), %rdi
	movl	%eax, -104(%rbp)        # 4-byte Spill
	callq	engrave
	cmpl	$1, -52(%rbp)
	je	.LBB1_19
# BB#18:                                # %if.then.33
	callq	gimp_displays_flush
	movl	%eax, -108(%rbp)        # 4-byte Spill
.LBB1_19:                               # %if.end.35
	cmpl	$0, -52(%rbp)
	jne	.LBB1_21
# BB#20:                                # %if.then.37
	movabsq	$.L.str.10, %rdi
	movabsq	$pvals, %rax
	movl	$8, %edx
	movq	%rax, %rsi
	callq	gimp_procedural_db_set_data
	movl	%eax, -112(%rbp)        # 4-byte Spill
.LBB1_21:                               # %if.end.39
	jmp	.LBB1_22
.LBB1_22:                               # %if.end.40
	movl	-56(%rbp), %eax
	movl	%eax, run.values+8
	movq	-48(%rbp), %rdi
	callq	gimp_drawable_detach
.LBB1_23:                               # %return
	addq	$112, %rsp
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
	.quad	4625196817309499392     # double 16
.LCPI3_2:
	.quad	4607182418800017408     # double 1
.LCPI3_3:
	.quad	4616189618054758400     # double 4
	.text
	.align	16, 0x90
	.type	engrave_dialog,@function
engrave_dialog:                         # @engrave_dialog
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
	movabsq	$.L.str.21, %rax
	xorl	%esi, %esi
	movq	%rdi, -24(%rbp)
	movq	%rax, %rdi
	callq	gimp_ui_init
	movabsq	$.L.str.22, %rdi
	callq	gettext
	movabsq	$.L.str.23, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	movabsq	$gimp_standard_help_func, %r8
	movabsq	$.L.str.10, %r9
	movabsq	$.L.str.24, %rdi
	movl	$4294967290, %r10d      # imm = 0xFFFFFFFA
	movabsq	$.L.str.25, %r11
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
	movabsq	$.L.str.26, %rsi
	movabsq	$engrave, %rax
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
	movabsq	$.L.str.27, %rdi
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	$125, %r8d
	movsd	.LCPI3_0, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI3_1, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI3_2, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI3_3, %xmm4         # xmm4 = mem[0],zero
	movl	$1, %edx
	xorps	%xmm0, %xmm0
	xorl	%r9d, %r9d
	movl	%r9d, %esi
	cvtsi2sdl	pvals, %xmm5
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rsi, -200(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movl	%edx, -204(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	%ecx, -208(%rbp)        # 4-byte Spill
	movq	%rax, %rcx
	movl	-208(%rbp), %r9d        # 4-byte Reload
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
	movabsq	$.L.str.28, %rsi
	movabsq	$gimp_int_adjustment_update, %rcx
	movabsq	$pvals, %rdi
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
	movabsq	$.L.str.28, %rsi
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
	movabsq	$.L.str.29, %rdi
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
	movl	pvals+4, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.30, %rsi
	movabsq	$gimp_toggle_button_update, %rax
	movabsq	$pvals, %rdi
	addq	$4, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-64(%rbp), %r11
	movq	%rdi, -272(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %rdx
	movq	-272(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.30, %rsi
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
	.size	engrave_dialog, .Lfunc_end3-engrave_dialog
	.cfi_endproc

	.align	16, 0x90
	.type	engrave,@function
engrave:                                # @engrave
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	callq	gimp_tile_width
	movl	%eax, -20(%rbp)
	movl	pvals, %eax
	movl	%eax, -24(%rbp)
	movl	pvals+4, %eax
	movl	%eax, -28(%rbp)
	movq	-8(%rbp), %rdi
	movl	-24(%rbp), %esi
	movl	-28(%rbp), %edx
	movl	-20(%rbp), %ecx
	movq	-16(%rbp), %r8
	callq	engrave_small
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	engrave, .Lfunc_end4-engrave
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	engrave_small,@function
engrave_small:                          # @engrave_small
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
	pushq	%r14
	pushq	%rbx
	subq	$240, %rsp
.Ltmp25:
	.cfi_offset %rbx, -32
.Ltmp26:
	.cfi_offset %r14, -24
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movq	%r8, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB5_2
# BB#1:                                 # %if.then
	leaq	-156(%rbp), %rsi
	leaq	-160(%rbp), %rdx
	movq	-48(%rbp), %rdi
	callq	gimp_preview_get_position
	leaq	-172(%rbp), %rsi
	leaq	-176(%rbp), %rdx
	movq	-48(%rbp), %rdi
	callq	gimp_preview_get_size
	movl	-156(%rbp), %eax
	addl	-172(%rbp), %eax
	movl	%eax, -164(%rbp)
	movl	-160(%rbp), %eax
	addl	-176(%rbp), %eax
	movl	%eax, -168(%rbp)
	jmp	.LBB5_3
.LBB5_2:                                # %if.else
	leaq	-156(%rbp), %rsi
	leaq	-160(%rbp), %rdx
	leaq	-164(%rbp), %rcx
	leaq	-168(%rbp), %r8
	movq	-24(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_mask_bounds
	movl	-164(%rbp), %edi
	subl	-156(%rbp), %edi
	movl	%edi, -172(%rbp)
	movl	-168(%rbp), %edi
	subl	-160(%rbp), %edi
	movl	%edi, -176(%rbp)
	movl	%eax, -188(%rbp)        # 4-byte Spill
.LBB5_3:                                # %if.end
	leaq	-96(%rbp), %rdi
	xorl	%eax, %eax
	movq	-24(%rbp), %rsi
	movl	-156(%rbp), %edx
	movl	-160(%rbp), %ecx
	movl	-172(%rbp), %r8d
	movl	-176(%rbp), %r9d
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	movl	%eax, -192(%rbp)        # 4-byte Spill
	callq	gimp_pixel_rgn_init
	leaq	-144(%rbp), %rdi
	movl	$1, %eax
	movq	-24(%rbp), %rsi
	movl	-156(%rbp), %edx
	movl	-160(%rbp), %ecx
	movl	-172(%rbp), %r8d
	movl	-176(%rbp), %r9d
	cmpq	$0, -48(%rbp)
	sete	%r10b
	andb	$1, %r10b
	movzbl	%r10b, %r11d
	movl	%r11d, (%rsp)
	movl	$1, 8(%rsp)
	movl	%eax, -196(%rbp)        # 4-byte Spill
	callq	gimp_pixel_rgn_init
	movl	$0, -180(%rbp)
	movl	-172(%rbp), %eax
	imull	-176(%rbp), %eax
	movl	%eax, -184(%rbp)
	movq	-24(%rbp), %rsi
	movl	12(%rsi), %eax
	movl	%eax, -148(%rbp)
	movq	-24(%rbp), %rsi
	movl	(%rsi), %edi
	callq	gimp_drawable_is_rgb
	movl	$1, %ecx
	movl	%ecx, %esi
	movl	$1, %ecx
	movl	$3, %edx
	cmpl	$0, %eax
	cmovnel	%edx, %ecx
	movl	%ecx, -152(%rbp)
	movl	-36(%rbp), %eax
	cltd
	idivl	-28(%rbp)
	imull	-28(%rbp), %eax
	movl	%eax, area+12
	movslq	-148(%rbp), %rbx
	movslq	area+12, %r14
	imulq	%r14, %rbx
	movslq	area+12, %r14
	imulq	%r14, %rbx
	movq	%rbx, %rdi
	callq	g_malloc_n
	movq	%rax, area+16
	movl	-160(%rbp), %ecx
	movl	%ecx, area+4
.LBB5_4:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_9 Depth 2
	movl	area+4, %eax
	cmpl	-168(%rbp), %eax
	jge	.LBB5_16
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB5_4 Depth=1
	movl	area+12, %eax
	movl	area+4, %ecx
	movl	%eax, -200(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	idivl	area+12
	movl	-200(%rbp), %ecx        # 4-byte Reload
	subl	%edx, %ecx
	movl	%ecx, area+8
	movl	area+8, %ecx
	movl	-168(%rbp), %edx
	subl	area+4, %edx
	cmpl	%edx, %ecx
	jge	.LBB5_7
# BB#6:                                 # %cond.true
                                        #   in Loop: Header=BB5_4 Depth=1
	movl	area+8, %eax
	movl	%eax, -204(%rbp)        # 4-byte Spill
	jmp	.LBB5_8
.LBB5_7:                                # %cond.false
                                        #   in Loop: Header=BB5_4 Depth=1
	movl	-168(%rbp), %eax
	subl	area+4, %eax
	movl	%eax, -204(%rbp)        # 4-byte Spill
.LBB5_8:                                # %cond.end
                                        #   in Loop: Header=BB5_4 Depth=1
	movl	-204(%rbp), %eax        # 4-byte Reload
	movl	%eax, area+8
	movl	-156(%rbp), %eax
	movl	%eax, area
.LBB5_9:                                # %for.cond.22
                                        #   Parent Loop BB5_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	area, %eax
	cmpl	-164(%rbp), %eax
	jge	.LBB5_12
# BB#10:                                # %for.body.25
                                        #   in Loop: Header=BB5_9 Depth=2
	leaq	-96(%rbp), %rdi
	movl	$1, %r8d
	movq	area+16, %rsi
	movl	area, %edx
	movl	area+4, %ecx
	movl	area+8, %r9d
	callq	gimp_pixel_rgn_get_rect
	movl	-28(%rbp), %edi
	movl	-32(%rbp), %esi
	movl	-148(%rbp), %edx
	movl	-152(%rbp), %ecx
	callq	engrave_sub
	leaq	-144(%rbp), %rdi
	movl	$1, %r8d
	movq	area+16, %rsi
	movl	area, %edx
	movl	area+4, %ecx
	movl	area+8, %r9d
	callq	gimp_pixel_rgn_set_rect
# BB#11:                                # %for.inc
                                        #   in Loop: Header=BB5_9 Depth=2
	movl	area, %eax
	addl	$1, %eax
	movl	%eax, area
	jmp	.LBB5_9
.LBB5_12:                               # %for.end
                                        #   in Loop: Header=BB5_4 Depth=1
	cmpq	$0, -48(%rbp)
	jne	.LBB5_14
# BB#13:                                # %if.then.27
                                        #   in Loop: Header=BB5_4 Depth=1
	movl	area+8, %eax
	imull	-172(%rbp), %eax
	addl	-180(%rbp), %eax
	movl	%eax, -180(%rbp)
	cvtsi2sdl	-180(%rbp), %xmm0
	cvtsi2sdl	-184(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -208(%rbp)        # 4-byte Spill
.LBB5_14:                               # %if.end.34
                                        #   in Loop: Header=BB5_4 Depth=1
	jmp	.LBB5_15
.LBB5_15:                               # %for.inc.35
                                        #   in Loop: Header=BB5_4 Depth=1
	movl	area+12, %eax
	movl	area+4, %ecx
	movl	%eax, -212(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	idivl	area+12
	movl	-212(%rbp), %ecx        # 4-byte Reload
	subl	%edx, %ecx
	addl	area+4, %ecx
	movl	%ecx, area+4
	jmp	.LBB5_4
.LBB5_16:                               # %for.end.39
	movq	area+16, %rdi
	callq	g_free
	cmpq	$0, -48(%rbp)
	je	.LBB5_18
# BB#17:                                # %if.then.41
	movq	-48(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gimp_drawable_preview_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-144(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_drawable_preview_draw_region
	jmp	.LBB5_19
.LBB5_18:                               # %if.else.44
	movsd	.LCPI5_0, %xmm0         # xmm0 = mem[0],zero
	callq	gimp_progress_update
	movq	-24(%rbp), %rdi
	movl	%eax, -228(%rbp)        # 4-byte Spill
	callq	gimp_drawable_flush
	movl	$1, %esi
	movq	-24(%rbp), %rdi
	movl	(%rdi), %edi
	callq	gimp_drawable_merge_shadow
	movq	-24(%rbp), %rcx
	movl	(%rcx), %edi
	movl	-156(%rbp), %esi
	movl	-160(%rbp), %edx
	movl	-164(%rbp), %r8d
	subl	-156(%rbp), %r8d
	movl	-168(%rbp), %r9d
	subl	-160(%rbp), %r9d
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%eax, -232(%rbp)        # 4-byte Spill
	callq	gimp_drawable_update
	movl	%eax, -236(%rbp)        # 4-byte Spill
.LBB5_19:                               # %if.end.52
	addq	$240, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end5:
	.size	engrave_small, .Lfunc_end5-engrave_small
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	4643140847074803712     # double 254
.LCPI6_1:
	.quad	4589866978952703325     # double 0.0722
.LCPI6_2:
	.quad	4604617168452267173     # double 0.71519999999999995
.LCPI6_3:
	.quad	4596827742536767164     # double 0.21260000000000001
	.text
	.align	16, 0x90
	.type	engrave_sub,@function
engrave_sub:                            # @engrave_sub
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp27:
	.cfi_def_cfa_offset 16
.Ltmp28:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp29:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	%ecx, -16(%rbp)
# BB#1:                                 # %do.body
	cmpl	$1, -16(%rbp)
	je	.LBB6_3
# BB#2:                                 # %lor.lhs.false
	cmpl	$3, -16(%rbp)
	jne	.LBB6_4
.LBB6_3:                                # %if.then
	jmp	.LBB6_5
.LBB6_4:                                # %if.else
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L__func__.engrave_sub, %rsi
	movabsq	$.L.str.31, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB6_49
.LBB6_5:                                # %if.end
	jmp	.LBB6_6
.LBB6_6:                                # %do.end
	movl	-12(%rbp), %eax
	movl	%eax, -88(%rbp)
	movl	area+4, %eax
	movl	%eax, -52(%rbp)
.LBB6_7:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_12 Depth 2
                                        #     Child Loop BB6_16 Depth 2
                                        #       Child Loop BB6_18 Depth 3
                                        #     Child Loop BB6_25 Depth 2
                                        #     Child Loop BB6_33 Depth 2
                                        #       Child Loop BB6_42 Depth 3
	movl	-52(%rbp), %eax
	movl	area+4, %ecx
	addl	area+8, %ecx
	cmpl	%ecx, %eax
	jge	.LBB6_49
# BB#8:                                 # %for.body
                                        #   in Loop: Header=BB6_7 Depth=1
	movl	-4(%rbp), %eax
	movl	-52(%rbp), %ecx
	movl	%eax, -100(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	idivl	-4(%rbp)
	movl	-100(%rbp), %ecx        # 4-byte Reload
	subl	%edx, %ecx
	movl	%ecx, -56(%rbp)
	movl	-56(%rbp), %ecx
	movl	area+4, %edx
	addl	area+8, %edx
	subl	-52(%rbp), %edx
	cmpl	%edx, %ecx
	jge	.LBB6_10
# BB#9:                                 # %cond.true
                                        #   in Loop: Header=BB6_7 Depth=1
	movl	-56(%rbp), %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
	jmp	.LBB6_11
.LBB6_10:                               # %cond.false
                                        #   in Loop: Header=BB6_7 Depth=1
	movl	area+4, %eax
	addl	area+8, %eax
	subl	-52(%rbp), %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
.LBB6_11:                               # %cond.end
                                        #   in Loop: Header=BB6_7 Depth=1
	movl	-104(%rbp), %eax        # 4-byte Reload
	movl	%eax, -56(%rbp)
	movl	$0, -96(%rbp)
.LBB6_12:                               # %for.cond.8
                                        #   Parent Loop BB6_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-96(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jge	.LBB6_15
# BB#13:                                # %for.body.10
                                        #   in Loop: Header=BB6_12 Depth=2
	movslq	-96(%rbp), %rax
	movq	$0, -48(%rbp,%rax,8)
# BB#14:                                # %for.inc
                                        #   in Loop: Header=BB6_12 Depth=2
	movl	-96(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -96(%rbp)
	jmp	.LBB6_12
.LBB6_15:                               # %for.end
                                        #   in Loop: Header=BB6_7 Depth=1
	movl	$0, -92(%rbp)
	movq	area+16, %rax
	movl	-52(%rbp), %ecx
	subl	area+4, %ecx
	imull	-88(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -72(%rbp)
	movl	$0, -84(%rbp)
.LBB6_16:                               # %for.cond.12
                                        #   Parent Loop BB6_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_18 Depth 3
	movl	-84(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jge	.LBB6_23
# BB#17:                                # %for.body.14
                                        #   in Loop: Header=BB6_16 Depth=2
	movq	-72(%rbp), %rax
	movq	%rax, -80(%rbp)
	movl	$0, -96(%rbp)
.LBB6_18:                               # %for.cond.15
                                        #   Parent Loop BB6_7 Depth=1
                                        #     Parent Loop BB6_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-96(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jge	.LBB6_21
# BB#19:                                # %for.body.17
                                        #   in Loop: Header=BB6_18 Depth=3
	movslq	-96(%rbp), %rax
	movq	-80(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movl	%edx, %eax
	movslq	-96(%rbp), %rcx
	addq	-48(%rbp,%rcx,8), %rax
	movq	%rax, -48(%rbp,%rcx,8)
# BB#20:                                # %for.inc.23
                                        #   in Loop: Header=BB6_18 Depth=3
	movl	-96(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -96(%rbp)
	jmp	.LBB6_18
.LBB6_21:                               # %for.end.25
                                        #   in Loop: Header=BB6_16 Depth=2
	movl	-92(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -92(%rbp)
	movl	-88(%rbp), %eax
	movq	-72(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -72(%rbp)
# BB#22:                                # %for.inc.29
                                        #   in Loop: Header=BB6_16 Depth=2
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB6_16
.LBB6_23:                               # %for.end.31
                                        #   in Loop: Header=BB6_7 Depth=1
	cmpl	$0, -92(%rbp)
	jle	.LBB6_29
# BB#24:                                # %if.then.34
                                        #   in Loop: Header=BB6_7 Depth=1
	movl	$0, -96(%rbp)
.LBB6_25:                               # %for.cond.35
                                        #   Parent Loop BB6_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-96(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jge	.LBB6_28
# BB#26:                                # %for.body.38
                                        #   in Loop: Header=BB6_25 Depth=2
	movslq	-92(%rbp), %rax
	movslq	-96(%rbp), %rcx
	movq	-48(%rbp,%rcx,8), %rdx
	movq	%rax, -112(%rbp)        # 8-byte Spill
	movq	%rdx, %rax
	cqto
	movq	-112(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	%rax, -48(%rbp,%rcx,8)
# BB#27:                                # %for.inc.42
                                        #   in Loop: Header=BB6_25 Depth=2
	movl	-96(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -96(%rbp)
	jmp	.LBB6_25
.LBB6_28:                               # %for.end.44
                                        #   in Loop: Header=BB6_7 Depth=1
	jmp	.LBB6_29
.LBB6_29:                               # %if.end.45
                                        #   in Loop: Header=BB6_7 Depth=1
	cmpl	$1, -16(%rbp)
	jne	.LBB6_31
# BB#30:                                # %if.then.48
                                        #   in Loop: Header=BB6_7 Depth=1
	movsd	.LCPI6_0, %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdq	-48(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	cvtsi2sdl	-4(%rbp), %xmm0
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB6_32
.LBB6_31:                               # %if.else.55
                                        #   in Loop: Header=BB6_7 Depth=1
	movsd	.LCPI6_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI6_1, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI6_2, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI6_3, %xmm3         # xmm3 = mem[0],zero
	cvtsi2sdq	-48(%rbp), %xmm4
	mulsd	%xmm3, %xmm4
	cvtsi2sdq	-40(%rbp), %xmm3
	mulsd	%xmm2, %xmm3
	addsd	%xmm3, %xmm4
	cvtsi2sdq	-32(%rbp), %xmm2
	mulsd	%xmm1, %xmm2
	addsd	%xmm2, %xmm4
	divsd	%xmm0, %xmm4
	cvtsi2sdl	-4(%rbp), %xmm0
	mulsd	%xmm0, %xmm4
	cvttsd2si	%xmm4, %eax
	movl	%eax, -60(%rbp)
.LBB6_32:                               # %if.end.71
                                        #   in Loop: Header=BB6_7 Depth=1
	movq	area+16, %rax
	movl	-52(%rbp), %ecx
	subl	area+4, %ecx
	imull	-88(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -72(%rbp)
	movl	$0, -84(%rbp)
.LBB6_33:                               # %for.cond.76
                                        #   Parent Loop BB6_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_42 Depth 3
	movl	-84(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jge	.LBB6_47
# BB#34:                                # %for.body.79
                                        #   in Loop: Header=BB6_33 Depth=2
	xorl	%eax, %eax
	movl	$255, %ecx
	movq	-72(%rbp), %rdx
	movq	%rdx, -80(%rbp)
	movl	-60(%rbp), %esi
	cmpl	-84(%rbp), %esi
	cmovgl	%ecx, %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -8(%rbp)
	je	.LBB6_41
# BB#35:                                # %if.then.83
                                        #   in Loop: Header=BB6_33 Depth=2
	cmpl	$0, -84(%rbp)
	jne	.LBB6_37
# BB#36:                                # %if.then.86
                                        #   in Loop: Header=BB6_33 Depth=2
	movl	$255, -64(%rbp)
	jmp	.LBB6_40
.LBB6_37:                               # %if.else.87
                                        #   in Loop: Header=BB6_33 Depth=2
	movl	-84(%rbp), %eax
	movl	-4(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jne	.LBB6_39
# BB#38:                                # %if.then.91
                                        #   in Loop: Header=BB6_33 Depth=2
	movl	$0, -64(%rbp)
.LBB6_39:                               # %if.end.92
                                        #   in Loop: Header=BB6_33 Depth=2
	jmp	.LBB6_40
.LBB6_40:                               # %if.end.93
                                        #   in Loop: Header=BB6_33 Depth=2
	jmp	.LBB6_41
.LBB6_41:                               # %if.end.94
                                        #   in Loop: Header=BB6_33 Depth=2
	movl	$0, -96(%rbp)
.LBB6_42:                               # %for.cond.95
                                        #   Parent Loop BB6_7 Depth=1
                                        #     Parent Loop BB6_33 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-96(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jge	.LBB6_45
# BB#43:                                # %for.body.98
                                        #   in Loop: Header=BB6_42 Depth=3
	movl	-64(%rbp), %eax
	movb	%al, %cl
	movslq	-96(%rbp), %rdx
	movq	-80(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
# BB#44:                                # %for.inc.102
                                        #   in Loop: Header=BB6_42 Depth=3
	movl	-96(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -96(%rbp)
	jmp	.LBB6_42
.LBB6_45:                               # %for.end.104
                                        #   in Loop: Header=BB6_33 Depth=2
	movl	-88(%rbp), %eax
	movq	-72(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -72(%rbp)
# BB#46:                                # %for.inc.107
                                        #   in Loop: Header=BB6_33 Depth=2
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB6_33
.LBB6_47:                               # %for.end.109
                                        #   in Loop: Header=BB6_7 Depth=1
	jmp	.LBB6_48
.LBB6_48:                               # %for.inc.110
                                        #   in Loop: Header=BB6_7 Depth=1
	movl	-4(%rbp), %eax
	movl	-52(%rbp), %ecx
	movl	%eax, -116(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	idivl	-4(%rbp)
	movl	-116(%rbp), %ecx        # 4-byte Reload
	subl	%edx, %ecx
	addl	-52(%rbp), %ecx
	movl	%ecx, -52(%rbp)
	jmp	.LBB6_7
.LBB6_49:                               # %for.end.114
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	engrave_sub, .Lfunc_end6-engrave_sub
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
	.asciz	"height"
	.size	.L.str.6, 7

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Resolution in pixels"
	.size	.L.str.7, 21

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"limit"
	.size	.L.str.8, 6

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Limit line width { TRUE, FALSE }"
	.size	.L.str.9, 33

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"plug-in-engrave"
	.size	.L.str.10, 16

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Simulate an antique engraving"
	.size	.L.str.11, 30

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Creates a black-and-white 'engraved' version of an image as seen in old illustrations"
	.size	.L.str.12, 86

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Spencer Kimball & Peter Mattis, Eiichi Takamori, Torsten Martinsen"
	.size	.L.str.13, 67

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"1995,1996,1997"
	.size	.L.str.14, 15

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"En_grave..."
	.size	.L.str.15, 12

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"RGBA, GRAYA"
	.size	.L.str.16, 12

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"<Image>/Filters/Distorts"
	.size	.L.str.17, 25

	.type	run.values,@object      # @run.values
	.local	run.values
	.comm	run.values,40,16
	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"gimp20-std-plug-ins"
	.size	.L.str.18, 20

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"UTF-8"
	.size	.L.str.19, 6

	.type	pvals,@object           # @pvals
	.data
	.align	4
pvals:
	.long	10                      # 0xa
	.long	0                       # 0x0
	.size	pvals, 8

	.type	.L.str.20,@object       # @.str.20
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.20:
	.asciz	"Engraving"
	.size	.L.str.20, 10

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"engrave"
	.size	.L.str.21, 8

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Engrave"
	.size	.L.str.22, 8

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"gimp-engrave"
	.size	.L.str.23, 13

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"gtk-cancel"
	.size	.L.str.24, 11

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"gtk-ok"
	.size	.L.str.25, 7

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"invalidated"
	.size	.L.str.26, 12

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"_Height:"
	.size	.L.str.27, 9

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"value-changed"
	.size	.L.str.28, 14

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"_Limit line width"
	.size	.L.str.29, 18

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"toggled"
	.size	.L.str.30, 8

	.type	area,@object            # @area
	.local	area
	.comm	area,24,8
	.type	.L__func__.engrave_sub,@object # @__func__.engrave_sub
.L__func__.engrave_sub:
	.asciz	"engrave_sub"
	.size	.L__func__.engrave_sub, 12

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"(num_channels == 1) || (num_channels == 3)"
	.size	.L.str.31, 43


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
