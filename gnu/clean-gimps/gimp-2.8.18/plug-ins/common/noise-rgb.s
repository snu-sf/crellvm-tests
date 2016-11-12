	.text
	.file	"noise-rgb.bc"
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
	subq	$136, %rsp
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
	movabsq	$.L.str.18, %rdi
	movabsq	$.L.str.19, %rsi
	movabsq	$.L.str.20, %rdx
	movabsq	$.L.str.21, %rax
	movabsq	$.L.str.22, %r9
	movabsq	$.L.str.23, %rcx
	movabsq	$.L.str.24, %r8
	movl	$1, %r10d
	movl	$9, %r11d
	xorl	%ebx, %ebx
	movabsq	$query.scatter_args, %r14
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
	movl	$9, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%r14, 40(%rsp)
	movq	$0, 48(%rsp)
	movq	%r12, -64(%rbp)         # 8-byte Spill
	movl	%ebx, -68(%rbp)         # 4-byte Spill
	movl	%r10d, -72(%rbp)        # 4-byte Spill
	movl	%r11d, -76(%rbp)        # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.18, %rdi
	movabsq	$.L.str.25, %rsi
	callq	gimp_plugin_menu_register
	movabsq	$.L.str.26, %rdi
	movabsq	$.L.str.27, %rsi
	movabsq	$.L.str.28, %rdx
	movabsq	$.L.str.21, %rcx
	movabsq	$.L.str.22, %r9
	xorl	%r10d, %r10d
	movl	%r10d, %r8d
	movabsq	$.L.str.24, %r14
	movl	$1, %r10d
	movl	$8, %r11d
	xorl	%ebx, %ebx
	movabsq	$query.noisify_args, %r12
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	movq	-88(%rbp), %r13         # 8-byte Reload
	movq	%r8, -96(%rbp)          # 8-byte Spill
	movq	%r13, %r8
	movq	$0, (%rsp)
	movq	%r14, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$8, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%r12, 40(%rsp)
	movq	$0, 48(%rsp)
	movl	%eax, -100(%rbp)        # 4-byte Spill
	movl	%ebx, -104(%rbp)        # 4-byte Spill
	movl	%r11d, -108(%rbp)       # 4-byte Spill
	movl	%r10d, -112(%rbp)       # 4-byte Spill
	callq	gimp_install_procedure
	addq	$136, %rsp
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
	movl	$3, -52(%rbp)
	movq	-24(%rbp), %rcx
	movl	8(%rcx), %esi
	movl	%esi, -56(%rbp)
# BB#1:                                 # %do.body
	callq	gimp_locale_directory
	movabsq	$.L.str.29, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.29, %rdi
	movabsq	$.L.str.30, %rsi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.29, %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	textdomain
	movq	%rax, -80(%rbp)         # 8-byte Spill
# BB#2:                                 # %do.end
	movabsq	$run.values, %rax
	movq	-32(%rbp), %rcx
	movl	$1, (%rcx)
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	$21, run.values
	movl	-52(%rbp), %edx
	movl	%edx, run.values+8
	callq	g_rand_new
	movq	%rax, noise_gr
	movq	-24(%rbp), %rax
	movl	88(%rax), %edi
	callq	gimp_drawable_get
	movl	$16, %edx
	movl	%edx, %edi
	movq	%rax, -48(%rbp)
	callq	gimp_tile_cache_ntiles
	movq	-48(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_is_gray
	cmpl	$0, %eax
	je	.LBB1_4
# BB#3:                                 # %if.then
	xorps	%xmm0, %xmm0
	movsd	%xmm0, nvals+16
.LBB1_4:                                # %if.end
	movl	-56(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	je	.LBB1_5
	jmp	.LBB1_34
.LBB1_34:                               # %if.end
	movl	-84(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	je	.LBB1_8
	jmp	.LBB1_35
.LBB1_35:                               # %if.end
	movl	-84(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	je	.LBB1_21
	jmp	.LBB1_22
.LBB1_5:                                # %sw.bb
	movabsq	$.L.str.18, %rdi
	movabsq	$nvals, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movq	-48(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movl	12(%rsi), %esi
	movl	%eax, -96(%rbp)         # 4-byte Spill
	callq	noisify_dialog
	cmpl	$0, %eax
	jne	.LBB1_7
# BB#6:                                 # %if.then.12
	movq	-48(%rbp), %rdi
	callq	gimp_drawable_detach
	movq	noise_gr, %rdi
	callq	g_rand_free
	jmp	.LBB1_33
.LBB1_7:                                # %if.end.13
	jmp	.LBB1_23
.LBB1_8:                                # %sw.bb.14
	movq	-8(%rbp), %rdi
	movl	$.L.str.26, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_13
# BB#9:                                 # %if.then.16
	cmpl	$8, -12(%rbp)
	je	.LBB1_11
# BB#10:                                # %if.then.18
	movl	$1, -52(%rbp)
	jmp	.LBB1_12
.LBB1_11:                               # %if.else
	xorl	%eax, %eax
	movl	$1, %ecx
	movq	-24(%rbp), %rdx
	cmpl	$0, 128(%rdx)
	cmovnel	%ecx, %eax
	movl	%eax, nvals
	movl	$0, nvals+4
	movq	-24(%rbp), %rdx
	movsd	168(%rdx), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, nvals+8
	movq	-24(%rbp), %rdx
	movsd	208(%rdx), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, nvals+16
	movq	-24(%rbp), %rdx
	movsd	248(%rdx), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, nvals+24
	movq	-24(%rbp), %rdx
	movsd	288(%rdx), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, nvals+32
.LBB1_12:                               # %if.end.34
	jmp	.LBB1_20
.LBB1_13:                               # %if.else.35
	movq	-8(%rbp), %rdi
	movl	$.L.str.18, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_18
# BB#14:                                # %if.then.38
	cmpl	$9, -12(%rbp)
	je	.LBB1_16
# BB#15:                                # %if.then.40
	movl	$1, -52(%rbp)
	jmp	.LBB1_17
.LBB1_16:                               # %if.else.41
	xorl	%eax, %eax
	movl	$1, %ecx
	movq	-24(%rbp), %rdx
	cmpl	$0, 128(%rdx)
	movl	%eax, %esi
	cmovnel	%ecx, %esi
	movl	%esi, nvals
	movq	-24(%rbp), %rdx
	cmpl	$0, 168(%rdx)
	cmovnel	%ecx, %eax
	movl	%eax, nvals+4
	movq	-24(%rbp), %rdx
	movsd	208(%rdx), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, nvals+8
	movq	-24(%rbp), %rdx
	movsd	248(%rdx), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, nvals+16
	movq	-24(%rbp), %rdx
	movsd	288(%rdx), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, nvals+24
	movq	-24(%rbp), %rdx
	movsd	328(%rdx), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, nvals+32
.LBB1_17:                               # %if.end.64
	jmp	.LBB1_19
.LBB1_18:                               # %if.else.65
	movl	$1, -52(%rbp)
.LBB1_19:                               # %if.end.66
	jmp	.LBB1_20
.LBB1_20:                               # %if.end.67
	jmp	.LBB1_23
.LBB1_21:                               # %sw.bb.68
	movabsq	$.L.str.18, %rdi
	movabsq	$nvals, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jmp	.LBB1_23
.LBB1_22:                               # %sw.default
	jmp	.LBB1_23
.LBB1_23:                               # %sw.epilog
	movq	-48(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_is_indexed
	cmpl	$0, %eax
	je	.LBB1_25
# BB#24:                                # %if.then.73
	movl	$0, -52(%rbp)
.LBB1_25:                               # %if.end.74
	cmpl	$3, -52(%rbp)
	jne	.LBB1_31
# BB#26:                                # %if.then.76
	movabsq	$.L.str.31, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_progress_init
	xorl	%esi, %esi
	movabsq	$noisify_func, %rdx
	movq	-48(%rbp), %rdi
	movq	noise_gr, %rcx
	movl	%eax, -104(%rbp)        # 4-byte Spill
	callq	gimp_rgn_iterate2
	cmpl	$1, -56(%rbp)
	je	.LBB1_28
# BB#27:                                # %if.then.80
	callq	gimp_displays_flush
	movl	%eax, -108(%rbp)        # 4-byte Spill
.LBB1_28:                               # %if.end.82
	cmpl	$0, -56(%rbp)
	jne	.LBB1_30
# BB#29:                                # %if.then.84
	movabsq	$.L.str.18, %rdi
	movabsq	$nvals, %rax
	movl	$40, %edx
	movq	%rax, %rsi
	callq	gimp_procedural_db_set_data
	movl	%eax, -112(%rbp)        # 4-byte Spill
.LBB1_30:                               # %if.end.86
	jmp	.LBB1_32
.LBB1_31:                               # %if.else.87
	movl	$0, -52(%rbp)
.LBB1_32:                               # %if.end.88
	movl	-52(%rbp), %eax
	movl	%eax, run.values+8
	movq	-48(%rbp), %rdi
	callq	gimp_drawable_detach
	movq	noise_gr, %rdi
	callq	g_rand_free
.LBB1_33:                               # %return
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

	.align	16, 0x90
	.type	noisify_dialog,@function
noisify_dialog:                         # @noisify_dialog
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
	pushq	%rbx
	subq	$472, %rsp              # imm = 0x1D8
.Ltmp17:
	.cfi_offset %rbx, -24
	movabsq	$.L.str.32, %rax
	xorl	%ecx, %ecx
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rax, %rdi
	movl	%ecx, %esi
	callq	gimp_ui_init
	movabsq	$.L.str.33, %rdi
	callq	gettext
	movabsq	$.L.str.34, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	movabsq	$gimp_standard_help_func, %r8
	movabsq	$.L.str.18, %r9
	movabsq	$.L.str.35, %rdi
	movl	$4294967290, %r10d      # imm = 0xFFFFFFFA
	movabsq	$.L.str.36, %r11
	movl	$4294967291, %ebx       # imm = 0xFFFFFFFB
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$-6, 8(%rsp)
	movq	%r11, 16(%rsp)
	movl	$-5, 24(%rsp)
	movq	$0, 32(%rsp)
	movb	$0, %al
	movl	%ebx, -108(%rbp)        # 4-byte Spill
	movl	%r10d, -112(%rbp)       # 4-byte Spill
	callq	gimp_dialog_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	movq	-32(%rbp), %rdi
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_window_set_transient
	movl	$1, %edi
	movl	$12, %esi
	callq	gtk_box_new
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-32(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
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
	movq	-16(%rbp), %rdi
	callq	gimp_drawable_preview_new
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
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
	movabsq	$.L.str.37, %rsi
	movabsq	$noisify, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	xorl	%r9d, %r9d
	movq	-56(%rbp), %r11
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %rdx
	movq	-176(%rbp), %rcx        # 8-byte Reload
	movq	-176(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	movl	$1, %edi
	movl	$6, %esi
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_box_new
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.38, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_mnemonic
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	nvals+4, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-48(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -212(%rbp)        # 4-byte Spill
	movl	-212(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.39, %rsi
	movabsq	$gimp_toggle_button_update, %rax
	movabsq	$nvals, %rdi
	addq	$4, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-64(%rbp), %r11
	movq	%rdi, -224(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %rdx
	movq	-224(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.39, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rdi
	movq	%rdi, -232(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-232(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-16(%rbp), %rcx
	movl	(%rcx), %edi
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gimp_drawable_is_rgb
	cmpl	$0, %eax
	je	.LBB3_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.40, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_mnemonic
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	nvals, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-48(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -268(%rbp)        # 4-byte Spill
	movl	-268(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.39, %rsi
	movabsq	$gimp_toggle_button_update, %rax
	movabsq	$nvals, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-64(%rbp), %r10
	movq	%rdi, -280(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, %rdx
	movq	-280(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.39, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rdi
	movq	%rdi, -288(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-288(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	%rax, -304(%rbp)        # 8-byte Spill
.LBB3_2:                                # %if.end
	movl	$3, %esi
	xorl	%edx, %edx
	movl	-20(%rbp), %edi
	callq	gtk_table_new
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-72(%rbp), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-40(%rbp), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	xorl	%r8d, %r8d
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -332(%rbp)        # 4-byte Spill
	movl	-332(%rbp), %ecx        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movl	-20(%rbp), %ecx
	movl	%ecx, noise_int
	cmpl	$1, -20(%rbp)
	jne	.LBB3_4
# BB#3:                                 # %if.then.45
	movabsq	$.L.str.41, %rdi
	movq	-72(%rbp), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movq	-16(%rbp), %rcx
	movq	-56(%rbp), %r8
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	noisify_add_channel
	jmp	.LBB3_18
.LBB3_4:                                # %if.else
	cmpl	$2, -20(%rbp)
	jne	.LBB3_6
# BB#5:                                 # %if.then.48
	movabsq	$.L.str.41, %rdi
	movq	-72(%rbp), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movq	-16(%rbp), %rcx
	movq	-56(%rbp), %r8
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	noisify_add_channel
	movabsq	$.L.str.42, %rdi
	movq	-72(%rbp), %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$1, %esi
	movq	-16(%rbp), %rcx
	movq	-56(%rbp), %r8
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	noisify_add_alpha_channel
	movq	-72(%rbp), %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movl	$15, %edx
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacing
	jmp	.LBB3_17
.LBB3_6:                                # %if.else.53
	cmpl	$3, -20(%rbp)
	jne	.LBB3_8
# BB#7:                                 # %if.then.55
	movabsq	$.L.str.43, %rdi
	movq	-72(%rbp), %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movq	-16(%rbp), %rcx
	movq	-56(%rbp), %r8
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	noisify_add_channel
	movabsq	$.L.str.44, %rdi
	movq	-72(%rbp), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$1, %esi
	movq	-16(%rbp), %rcx
	movq	-56(%rbp), %r8
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	noisify_add_channel
	movabsq	$.L.str.45, %rdi
	movq	-72(%rbp), %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$2, %esi
	movq	-16(%rbp), %rcx
	movq	-56(%rbp), %r8
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	noisify_add_channel
	jmp	.LBB3_16
.LBB3_8:                                # %if.else.59
	cmpl	$4, -20(%rbp)
	jne	.LBB3_10
# BB#9:                                 # %if.then.61
	movabsq	$.L.str.43, %rdi
	movq	-72(%rbp), %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movq	-16(%rbp), %rcx
	movq	-56(%rbp), %r8
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	noisify_add_channel
	movabsq	$.L.str.44, %rdi
	movq	-72(%rbp), %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$1, %esi
	movq	-16(%rbp), %rcx
	movq	-56(%rbp), %r8
	movq	-408(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	noisify_add_channel
	movabsq	$.L.str.45, %rdi
	movq	-72(%rbp), %rax
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$2, %esi
	movq	-16(%rbp), %rcx
	movq	-56(%rbp), %r8
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	noisify_add_channel
	movabsq	$.L.str.42, %rdi
	movq	-72(%rbp), %rax
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$3, %esi
	movq	-16(%rbp), %rcx
	movq	-56(%rbp), %r8
	movq	-424(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	noisify_add_alpha_channel
	movq	-72(%rbp), %rax
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-432(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$3, %esi
	movl	$15, %edx
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacing
	jmp	.LBB3_15
.LBB3_10:                               # %if.else.68
	movl	$0, -92(%rbp)
.LBB3_11:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-92(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB3_14
# BB#12:                                # %for.body
                                        #   in Loop: Header=BB3_11 Depth=1
	movabsq	$.L.str.46, %rdi
	callq	gettext
	movl	-92(%rbp), %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -88(%rbp)
	movq	-72(%rbp), %rdi
	movl	-92(%rbp), %esi
	movq	-88(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-56(%rbp), %r8
	callq	noisify_add_channel
	movq	-88(%rbp), %rdi
	callq	g_free
# BB#13:                                # %for.inc
                                        #   in Loop: Header=BB3_11 Depth=1
	movl	-92(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -92(%rbp)
	jmp	.LBB3_11
.LBB3_14:                               # %for.end
	jmp	.LBB3_15
.LBB3_15:                               # %if.end.72
	jmp	.LBB3_16
.LBB3_16:                               # %if.end.73
	jmp	.LBB3_17
.LBB3_17:                               # %if.end.74
	jmp	.LBB3_18
.LBB3_18:                               # %if.end.75
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	movq	-32(%rbp), %rdi
	movq	%rdi, -440(%rbp)        # 8-byte Spill
	callq	gimp_dialog_get_type
	movq	-440(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dialog_run
	cmpl	$-5, %eax
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	movl	%eax, -76(%rbp)
	movq	-32(%rbp), %rdi
	callq	gtk_widget_destroy
	movl	-76(%rbp), %eax
	addq	$472, %rsp              # imm = 0x1D8
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end3:
	.size	noisify_dialog, .Lfunc_end3-noisify_dialog
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4638637247447433216     # double 127
.LCPI4_1:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	noisify_func,@function
noisify_func:                           # @noisify_func
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp18:
	.cfi_def_cfa_offset 16
.Ltmp19:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp20:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	xorps	%xmm0, %xmm0
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, -40(%rbp)
	movsd	%xmm0, -48(%rbp)
	movl	$0, -52(%rbp)
.LBB4_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-52(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB4_23
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB4_1 Depth=1
	cmpl	$0, -52(%rbp)
	je	.LBB4_8
# BB#3:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB4_1 Depth=1
	cmpl	$0, nvals
	jne	.LBB4_8
# BB#4:                                 # %lor.lhs.false.2
                                        #   in Loop: Header=BB4_1 Depth=1
	cmpl	$1, -52(%rbp)
	jne	.LBB4_6
# BB#5:                                 # %land.lhs.true
                                        #   in Loop: Header=BB4_1 Depth=1
	cmpl	$2, -20(%rbp)
	je	.LBB4_8
.LBB4_6:                                # %lor.lhs.false.5
                                        #   in Loop: Header=BB4_1 Depth=1
	cmpl	$3, -52(%rbp)
	jne	.LBB4_9
# BB#7:                                 # %land.lhs.true.7
                                        #   in Loop: Header=BB4_1 Depth=1
	cmpl	$4, -20(%rbp)
	jne	.LBB4_9
.LBB4_8:                                # %if.then
                                        #   in Loop: Header=BB4_1 Depth=1
	movslq	-52(%rbp), %rax
	movsd	nvals+8(,%rax,8), %xmm0 # xmm0 = mem[0],zero
	movq	-40(%rbp), %rdi
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	callq	gauss
	movsd	.LCPI4_0, %xmm1         # xmm1 = mem[0],zero
	movsd	-64(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	mulsd	%xmm0, %xmm2
	mulsd	%xmm1, %xmm2
	movsd	%xmm2, -48(%rbp)
.LBB4_9:                                # %if.end
                                        #   in Loop: Header=BB4_1 Depth=1
	xorps	%xmm0, %xmm0
	movslq	-52(%rbp), %rax
	movsd	nvals+8(,%rax,8), %xmm1 # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB4_20
# BB#10:                                # %if.then.13
                                        #   in Loop: Header=BB4_1 Depth=1
	cmpl	$0, nvals+4
	je	.LBB4_12
# BB#11:                                # %if.then.15
                                        #   in Loop: Header=BB4_1 Depth=1
	movsd	.LCPI4_1, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI4_0, %xmm1         # xmm1 = mem[0],zero
	movslq	-52(%rbp), %rax
	movq	-8(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cvtsi2sdl	%edx, %xmm2
	movslq	-52(%rbp), %rax
	movq	-8(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cvtsi2sdl	%edx, %xmm3
	movsd	-48(%rbp), %xmm4        # xmm4 = mem[0],zero
	divsd	%xmm1, %xmm4
	mulsd	%xmm4, %xmm3
	addsd	%xmm3, %xmm2
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %edx
	movl	%edx, -56(%rbp)
	jmp	.LBB4_13
.LBB4_12:                               # %if.else
                                        #   in Loop: Header=BB4_1 Depth=1
	movsd	.LCPI4_1, %xmm0         # xmm0 = mem[0],zero
	movslq	-52(%rbp), %rax
	movq	-8(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cvtsi2sdl	%edx, %xmm1
	addsd	-48(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %edx
	movl	%edx, -56(%rbp)
.LBB4_13:                               # %if.end.33
                                        #   in Loop: Header=BB4_1 Depth=1
	cmpl	$255, -56(%rbp)
	jle	.LBB4_15
# BB#14:                                # %cond.true
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	$255, %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	jmp	.LBB4_19
.LBB4_15:                               # %cond.false
                                        #   in Loop: Header=BB4_1 Depth=1
	cmpl	$0, -56(%rbp)
	jge	.LBB4_17
# BB#16:                                # %cond.true.38
                                        #   in Loop: Header=BB4_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, -72(%rbp)         # 4-byte Spill
	jmp	.LBB4_18
.LBB4_17:                               # %cond.false.39
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-56(%rbp), %eax
	movl	%eax, -72(%rbp)         # 4-byte Spill
.LBB4_18:                               # %cond.end
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-72(%rbp), %eax         # 4-byte Reload
	movl	%eax, -68(%rbp)         # 4-byte Spill
.LBB4_19:                               # %cond.end.40
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-68(%rbp), %eax         # 4-byte Reload
	movb	%al, %cl
	movslq	-52(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
	jmp	.LBB4_21
.LBB4_20:                               # %if.else.45
                                        #   in Loop: Header=BB4_1 Depth=1
	movslq	-52(%rbp), %rax
	movq	-8(%rbp), %rcx
	movb	(%rcx,%rax), %dl
	movslq	-52(%rbp), %rax
	movq	-16(%rbp), %rcx
	movb	%dl, (%rcx,%rax)
.LBB4_21:                               # %if.end.50
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_22
.LBB4_22:                               # %for.inc
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB4_1
.LBB4_23:                               # %for.end
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	noisify_func, .Lfunc_end4-noisify_func
	.cfi_endproc

	.align	16, 0x90
	.type	noisify,@function
noisify:                                # @noisify
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp21:
	.cfi_def_cfa_offset 16
.Ltmp22:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp23:
	.cfi_def_cfa_register %rbp
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movq	noise_gr, %rdi
	callq	g_rand_copy
	movq	%rax, -112(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_drawable_preview_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_preview_get_drawable
	leaq	-88(%rbp), %rsi
	leaq	-92(%rbp), %rdx
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_preview_get_position
	leaq	-96(%rbp), %rsi
	leaq	-100(%rbp), %rdx
	movq	-8(%rbp), %rdi
	callq	gimp_preview_get_size
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	-16(%rbp), %rax
	movl	12(%rax), %ecx
	movl	%ecx, -104(%rbp)
	movl	-96(%rbp), %ecx
	imull	-100(%rbp), %ecx
	imull	-104(%rbp), %ecx
	movslq	%ecx, %rdi
	callq	g_malloc_n
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	%rax, -72(%rbp)
	movl	-96(%rbp), %ecx
	imull	-100(%rbp), %ecx
	imull	-104(%rbp), %ecx
	movslq	%ecx, %rdi
	callq	g_malloc_n
	leaq	-64(%rbp), %rdi
	xorl	%ecx, %ecx
	movq	%rax, -80(%rbp)
	movq	-16(%rbp), %rsi
	movl	-88(%rbp), %edx
	movl	-92(%rbp), %r8d
	movl	-96(%rbp), %r9d
	movl	-100(%rbp), %r10d
	movl	%ecx, -124(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	leaq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movl	-88(%rbp), %edx
	movl	-92(%rbp), %ecx
	movl	-96(%rbp), %r8d
	movl	-100(%rbp), %r9d
	callq	gimp_pixel_rgn_get_rect
	movl	$0, -84(%rbp)
.LBB5_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-84(%rbp), %eax
	movl	-96(%rbp), %ecx
	imull	-100(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB5_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-72(%rbp), %rax
	movl	-84(%rbp), %ecx
	imull	-104(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	-80(%rbp), %rdx
	movl	-84(%rbp), %ecx
	imull	-104(%rbp), %ecx
	movslq	%ecx, %rsi
	addq	%rsi, %rdx
	movl	-104(%rbp), %ecx
	movq	-112(%rbp), %rsi
	movq	%rax, %rdi
	movq	%rsi, -136(%rbp)        # 8-byte Spill
	movq	%rdx, %rsi
	movl	%ecx, %edx
	movq	-136(%rbp), %rcx        # 8-byte Reload
	callq	noisify_func
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB5_1
.LBB5_4:                                # %for.end
	movq	-8(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movl	-96(%rbp), %eax
	imull	-104(%rbp), %eax
	movl	%eax, %edx
	callq	gimp_preview_draw_buffer
	movq	-72(%rbp), %rdi
	callq	g_free
	movq	-80(%rbp), %rdi
	callq	g_free
	movq	-112(%rbp), %rdi
	callq	g_rand_free
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	noisify, .Lfunc_end5-noisify
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	4607182418800017408     # double 1
.LCPI6_1:
	.quad	4576918229304087675     # double 0.01
.LCPI6_2:
	.quad	4591870180066957722     # double 0.10000000000000001
	.text
	.align	16, 0x90
	.type	noisify_add_channel,@function
noisify_add_channel:                    # @noisify_add_channel
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp24:
	.cfi_def_cfa_offset 16
.Ltmp25:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp26:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$152, %rsp
.Ltmp27:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	-16(%rbp), %rcx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	callq	gtk_table_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movl	$125, %r8d
	xorps	%xmm0, %xmm0
	movsd	.LCPI6_0, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI6_1, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI6_2, %xmm4         # xmm4 = mem[0],zero
	movl	$2, %r10d
	movl	$1, %r11d
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movl	-20(%rbp), %ebx
	addl	$1, %ebx
	movq	-32(%rbp), %rdx
	movslq	-20(%rbp), %rsi
	movsd	nvals+8(,%rsi,8), %xmm1 # xmm1 = mem[0],zero
	movq	%rax, %rdi
	movl	%r9d, %esi
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	movl	%ebx, %edx
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rcx
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-88(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	$2, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-88(%rbp), %xmm5        # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-88(%rbp), %xmm6        # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r11d, -92(%rbp)        # 4-byte Spill
	movl	%r10d, -96(%rbp)        # 4-byte Spill
	callq	gimp_scale_entry_new
	movl	$80, %edx
	movl	%edx, %esi
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.4, %rsi
	movq	-40(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	g_object_set_data
	movabsq	$.L.str.47, %rsi
	movabsq	$noisify_double_adjustment_update, %rax
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	xorl	%r9d, %r9d
	movabsq	$nvals, %rcx
	addq	$8, %rcx
	movq	-56(%rbp), %rdx
	movslq	-20(%rbp), %rdi
	shlq	$3, %rdi
	addq	%rdi, %rcx
	movq	%rdx, %rdi
	movq	%rax, %rdx
	callq	g_signal_connect_data
	movabsq	$.L.str.47, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rdi
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-104(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-56(%rbp), %rcx
	movslq	-20(%rbp), %rdx
	movq	%rcx, noise_int+8(,%rdx,8)
	movq	%rax, -120(%rbp)        # 8-byte Spill
	addq	$152, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end6:
	.size	noisify_add_channel, .Lfunc_end6-noisify_add_channel
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI7_0:
	.quad	4607182418800017408     # double 1
.LCPI7_1:
	.quad	4576918229304087675     # double 0.01
.LCPI7_2:
	.quad	4591870180066957722     # double 0.10000000000000001
	.text
	.align	16, 0x90
	.type	noisify_add_alpha_channel,@function
noisify_add_alpha_channel:              # @noisify_add_alpha_channel
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
	pushq	%rbx
	subq	$152, %rsp
.Ltmp31:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	-16(%rbp), %rcx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	callq	gtk_table_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movl	$125, %r8d
	xorps	%xmm0, %xmm0
	movsd	.LCPI7_0, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI7_1, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI7_2, %xmm4         # xmm4 = mem[0],zero
	movl	$2, %r10d
	movl	$1, %r11d
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movl	-20(%rbp), %ebx
	addl	$1, %ebx
	movq	-32(%rbp), %rdx
	movslq	-20(%rbp), %rsi
	movsd	nvals+8(,%rsi,8), %xmm1 # xmm1 = mem[0],zero
	movq	%rax, %rdi
	movl	%r9d, %esi
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	movl	%ebx, %edx
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rcx
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-88(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	$2, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-88(%rbp), %xmm5        # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-88(%rbp), %xmm6        # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r11d, -92(%rbp)        # 4-byte Spill
	movl	%r10d, -96(%rbp)        # 4-byte Spill
	callq	gimp_scale_entry_new
	movl	$80, %edx
	movl	%edx, %esi
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.4, %rsi
	movq	-40(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	g_object_set_data
	movabsq	$.L.str.47, %rsi
	movabsq	$gimp_double_adjustment_update, %rax
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	xorl	%r9d, %r9d
	movabsq	$nvals, %rcx
	addq	$8, %rcx
	movq	-56(%rbp), %rdx
	movslq	-20(%rbp), %rdi
	shlq	$3, %rdi
	addq	%rdi, %rcx
	movq	%rdx, %rdi
	movq	%rax, %rdx
	callq	g_signal_connect_data
	movabsq	$.L.str.47, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rdi
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-104(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-56(%rbp), %rcx
	movslq	-20(%rbp), %rdx
	movq	%rcx, noise_int+8(,%rdx,8)
	movq	%rax, -120(%rbp)        # 8-byte Spill
	addq	$152, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end7:
	.size	noisify_add_alpha_channel, .Lfunc_end7-noisify_add_alpha_channel
	.cfi_endproc

	.align	16, 0x90
	.type	noisify_double_adjustment_update,@function
noisify_double_adjustment_update:       # @noisify_double_adjustment_update
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp32:
	.cfi_def_cfa_offset 16
.Ltmp33:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp34:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_double_adjustment_update
	cmpl	$0, nvals
	jne	.LBB8_13
# BB#1:                                 # %if.then
	movl	noise_int(%rip), %eax
	movl	%eax, %ecx
	subl	$1, %ecx
	movl	%eax, -28(%rbp)         # 4-byte Spill
	movl	%ecx, -32(%rbp)         # 4-byte Spill
	je	.LBB8_2
	jmp	.LBB8_14
.LBB8_14:                               # %if.then
	movl	-28(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -36(%rbp)         # 4-byte Spill
	je	.LBB8_3
	jmp	.LBB8_15
.LBB8_15:                               # %if.then
	movl	-28(%rbp), %eax         # 4-byte Reload
	subl	$3, %eax
	movl	%eax, -40(%rbp)         # 4-byte Spill
	je	.LBB8_4
	jmp	.LBB8_5
.LBB8_2:                                # %sw.bb
	movl	$1, -20(%rbp)
	jmp	.LBB8_6
.LBB8_3:                                # %sw.bb.1
	movl	$1, -20(%rbp)
	jmp	.LBB8_6
.LBB8_4:                                # %sw.bb.2
	movl	$3, -20(%rbp)
	jmp	.LBB8_6
.LBB8_5:                                # %sw.default
	movl	$3, -20(%rbp)
.LBB8_6:                                # %sw.epilog
	movl	$0, -24(%rbp)
.LBB8_7:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-24(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB8_12
# BB#8:                                 # %for.body
                                        #   in Loop: Header=BB8_7 Depth=1
	movq	-8(%rbp), %rax
	movslq	-24(%rbp), %rcx
	movq	noise_int+8(,%rcx,8), %rcx
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB8_10
# BB#9:                                 # %if.then.5
                                        #   in Loop: Header=BB8_7 Depth=1
	movslq	-24(%rbp), %rax
	movq	noise_int+8(,%rax,8), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_adjustment_get_value
	movq	-72(%rbp), %rdi         # 8-byte Reload
	callq	gtk_adjustment_set_value
.LBB8_10:                               # %if.end
                                        #   in Loop: Header=BB8_7 Depth=1
	jmp	.LBB8_11
.LBB8_11:                               # %for.inc
                                        #   in Loop: Header=BB8_7 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB8_7
.LBB8_12:                               # %for.end
	jmp	.LBB8_13
.LBB8_13:                               # %if.end.11
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	noisify_double_adjustment_update, .Lfunc_end8-noisify_double_adjustment_update
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI9_0:
	.quad	4610404869398008728     # double 1.7155277699214135
.LCPI9_1:
	.quad	4602678819172646912     # double 0.5
.LCPI9_2:
	.quad	-4607182418800017408    # double -4
	.text
	.align	16, 0x90
	.type	gauss,@function
gauss:                                  # @gauss
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp35:
	.cfi_def_cfa_offset 16
.Ltmp36:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp37:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
.LBB9_1:                                # %do.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_2 Depth 2
	movq	-8(%rbp), %rdi
	callq	g_rand_double
	movsd	%xmm0, -24(%rbp)
.LBB9_2:                                # %do.body.1
                                        #   Parent Loop BB9_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-8(%rbp), %rdi
	callq	g_rand_double
	movsd	%xmm0, -16(%rbp)
# BB#3:                                 # %do.cond
                                        #   in Loop: Header=BB9_2 Depth=2
	xorps	%xmm0, %xmm0
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB9_4
	jp	.LBB9_4
	jmp	.LBB9_2
.LBB9_4:                                # %do.end
                                        #   in Loop: Header=BB9_1 Depth=1
	movsd	.LCPI9_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI9_1, %xmm1         # xmm1 = mem[0],zero
	movsd	-24(%rbp), %xmm2        # xmm2 = mem[0],zero
	subsd	%xmm1, %xmm2
	mulsd	%xmm2, %xmm0
	divsd	-16(%rbp), %xmm0
	movsd	%xmm0, -32(%rbp)
# BB#5:                                 # %do.cond.3
                                        #   in Loop: Header=BB9_1 Depth=1
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-32(%rbp), %xmm0
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -40(%rbp)        # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	log
	movsd	.LCPI9_2, %xmm1         # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-40(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	ja	.LBB9_1
# BB#6:                                 # %do.end.8
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gauss, .Lfunc_end9-gauss
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

	.type	query.scatter_args,@object # @query.scatter_args
	.align	16
query.scatter_args:
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
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.10
	.quad	.L.str.11
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.12
	.quad	.L.str.13
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.14
	.quad	.L.str.15
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.16
	.quad	.L.str.17
	.size	query.scatter_args, 216

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
	.asciz	"independent"
	.size	.L.str.6, 12

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Noise in channels independent"
	.size	.L.str.7, 30

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"correlated"
	.size	.L.str.8, 11

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Noise correlated (i.e. multiplicative not additive)"
	.size	.L.str.9, 52

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"noise-1"
	.size	.L.str.10, 8

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Noise in the first channel (red, gray)"
	.size	.L.str.11, 39

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"noise-2"
	.size	.L.str.12, 8

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Noise in the second channel (green, gray_alpha)"
	.size	.L.str.13, 48

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"noise-3"
	.size	.L.str.14, 8

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Noise in the third channel (blue)"
	.size	.L.str.15, 34

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"noise-4"
	.size	.L.str.16, 8

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Noise in the fourth channel (alpha)"
	.size	.L.str.17, 36

	.type	query.noisify_args,@object # @query.noisify_args
	.section	.rodata,"a",@progbits
	.align	16
query.noisify_args:
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
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.10
	.quad	.L.str.11
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.12
	.quad	.L.str.13
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.14
	.quad	.L.str.15
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.16
	.quad	.L.str.17
	.size	query.noisify_args, 192

	.type	.L.str.18,@object       # @.str.18
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.18:
	.asciz	"plug-in-rgb-noise"
	.size	.L.str.18, 18

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Distort colors by random amounts"
	.size	.L.str.19, 33

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"Add normally distributed (zero mean) random values to image channels.  Noise may be additive (uncorrelated) or multiplicative (correlated - also known as speckle noise). For colour images colour channels may be treated together or independently."
	.size	.L.str.20, 246

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Torsten Martinsen"
	.size	.L.str.21, 18

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"May 2000"
	.size	.L.str.22, 9

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"_RGB Noise..."
	.size	.L.str.23, 14

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"RGB*, GRAY*"
	.size	.L.str.24, 12

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"<Image>/Filters/Noise"
	.size	.L.str.25, 22

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"plug-in-noisify"
	.size	.L.str.26, 16

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"Adds random noise to image channels "
	.size	.L.str.27, 37

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"Add normally distributed random values to image channels. For colour images each colour channel may be treated together or independently."
	.size	.L.str.28, 138

	.type	run.values,@object      # @run.values
	.local	run.values
	.comm	run.values,40,16
	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"gimp20-std-plug-ins"
	.size	.L.str.29, 20

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"UTF-8"
	.size	.L.str.30, 6

	.type	noise_gr,@object        # @noise_gr
	.local	noise_gr
	.comm	noise_gr,8,8
	.type	nvals,@object           # @nvals
	.data
	.align	8
nvals:
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	4596373779694328218     # double 2.000000e-01
	.quad	4596373779694328218     # double 2.000000e-01
	.quad	4596373779694328218     # double 2.000000e-01
	.quad	0                       # double 0.000000e+00
	.size	nvals, 40

	.type	.L.str.31,@object       # @.str.31
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.31:
	.asciz	"Adding noise"
	.size	.L.str.31, 13

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"noise-rgb"
	.size	.L.str.32, 10

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"RGB Noise"
	.size	.L.str.33, 10

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"gimp-noise-rgb"
	.size	.L.str.34, 15

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"gtk-cancel"
	.size	.L.str.35, 11

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"gtk-ok"
	.size	.L.str.36, 7

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"invalidated"
	.size	.L.str.37, 12

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"Co_rrelated noise"
	.size	.L.str.38, 18

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"toggled"
	.size	.L.str.39, 8

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"_Independent RGB"
	.size	.L.str.40, 17

	.type	noise_int,@object       # @noise_int
	.local	noise_int
	.comm	noise_int,40,8
	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"_Gray:"
	.size	.L.str.41, 7

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"_Alpha:"
	.size	.L.str.42, 8

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"_Red:"
	.size	.L.str.43, 6

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"_Green:"
	.size	.L.str.44, 8

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"_Blue:"
	.size	.L.str.45, 7

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"Channel #%d:"
	.size	.L.str.46, 13

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"value-changed"
	.size	.L.str.47, 14


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
