	.text
	.file	"blur-motion.bc"
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
	movabsq	$.L.str.16, %rdi
	movabsq	$.L.str.17, %rsi
	movabsq	$.L.str.18, %rdx
	movabsq	$.L.str.19, %rax
	movabsq	$.L.str.20, %r9
	movabsq	$.L.str.21, %rcx
	movabsq	$.L.str.22, %r8
	movl	$1, %r10d
	movl	$8, %r11d
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
	movl	$8, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%r14, 40(%rsp)
	movq	$0, 48(%rsp)
	movq	%r12, -64(%rbp)         # 8-byte Spill
	movl	%ebx, -68(%rbp)         # 4-byte Spill
	movl	%r10d, -72(%rbp)        # 4-byte Spill
	movl	%r11d, -76(%rbp)        # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.23, %rdi
	movabsq	$.L.str.17, %rsi
	movabsq	$.L.str.24, %rdx
	movabsq	$.L.str.19, %rax
	movabsq	$.L.str.20, %r9
	movabsq	$.L.str.21, %rcx
	movabsq	$.L.str.22, %r8
	movl	$1, %r10d
	movl	$8, %r11d
	xorl	%ebx, %ebx
	movabsq	$query.args, %r14
	xorl	%r15d, %r15d
	movl	%r15d, %r12d
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rcx
	movq	%r8, -96(%rbp)          # 8-byte Spill
	movq	%rax, %r8
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-96(%rbp), %r13         # 8-byte Reload
	movq	%r13, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$8, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%r14, 40(%rsp)
	movq	$0, 48(%rsp)
	movq	%r12, -104(%rbp)        # 8-byte Spill
	movl	%ebx, -108(%rbp)        # 4-byte Spill
	movl	%r10d, -112(%rbp)       # 4-byte Spill
	movl	%r11d, -116(%rbp)       # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.16, %rdi
	movabsq	$.L.str.25, %rsi
	callq	gimp_plugin_menu_register
	movl	%eax, -120(%rbp)        # 4-byte Spill
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

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_0:
	.quad	4611686018427387904     # double 2
	.text
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
	movabsq	$.L.str.26, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.26, %rdi
	movabsq	$.L.str.27, %rsi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.26, %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	textdomain
	movq	%rax, -96(%rbp)         # 8-byte Spill
# BB#2:                                 # %do.end
	movl	$3, -48(%rbp)
	movq	-24(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -44(%rbp)
	movq	-32(%rbp), %rax
	movl	$1, (%rax)
	movq	-40(%rbp), %rax
	movq	$run.values, (%rax)
	movl	$21, run.values(%rip)
	movl	-48(%rbp), %ecx
	movl	%ecx, run.values+8(%rip)
	movq	-24(%rbp), %rax
	movl	88(%rax), %edi
	callq	gimp_drawable_get
	movq	%rax, -56(%rbp)
	movl	(%rax), %edi
	callq	gimp_drawable_width
	movl	%eax, img_width(%rip)
	movq	-56(%rbp), %rdx
	movl	(%rdx), %edi
	callq	gimp_drawable_height
	movl	%eax, img_height(%rip)
	movq	-56(%rbp), %rdx
	movl	(%rdx), %edi
	callq	gimp_drawable_bpp
	movl	%eax, img_bpp(%rip)
	movq	-56(%rbp), %rdx
	movl	(%rdx), %edi
	leaq	-60(%rbp), %rsi
	leaq	-64(%rbp), %rdx
	leaq	-68(%rbp), %rcx
	leaq	-72(%rbp), %r8
	callq	gimp_drawable_mask_bounds
	movl	-60(%rbp), %edi
	movl	-68(%rbp), %r9d
	movl	%r9d, %ecx
	movl	%edi, %edx
	leal	-1(%rdx,%rcx), %edi
	cvtsi2sdl	%edi, %xmm0
	movsd	.LCPI1_0(%rip), %xmm1   # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movsd	%xmm0, mbvals+16(%rip)
	movl	-64(%rbp), %edi
	movl	-72(%rbp), %r9d
	movl	%r9d, %ecx
	movl	%edi, %edx
	leal	-1(%rdx,%rcx), %edi
	cvtsi2sdl	%edi, %xmm0
	divsd	%xmm1, %xmm0
	movsd	%xmm0, mbvals+24(%rip)
	movq	-56(%rbp), %rcx
	movl	20(%rcx), %edi
	addl	%edi, %edi
                                        # kill: RDI<def> EDI<kill>
	movl	%eax, -100(%rbp)        # 4-byte Spill
	callq	gimp_tile_cache_ntiles
	movl	-44(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
	je	.LBB1_3
	jmp	.LBB1_34
.LBB1_34:                               # %do.end
	movl	-104(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
	je	.LBB1_6
	jmp	.LBB1_35
.LBB1_35:                               # %do.end
	movl	-104(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
	je	.LBB1_19
	jmp	.LBB1_20
.LBB1_3:                                # %sw.bb
	movabsq	$.L.str.16, %rdi
	movabsq	$mbvals, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movq	-24(%rbp), %rsi
	movl	48(%rsi), %edi
	movq	-56(%rbp), %rsi
	movl	%eax, -116(%rbp)        # 4-byte Spill
	callq	mblur_dialog
	cmpl	$0, %eax
	jne	.LBB1_5
# BB#4:                                 # %if.then
	jmp	.LBB1_33
.LBB1_5:                                # %if.end
	jmp	.LBB1_21
.LBB1_6:                                # %sw.bb.23
	movq	-8(%rbp), %rdi
	movl	$.L.str.23, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_8
# BB#7:                                 # %if.then.26
	movl	$0, mbvals+32
.LBB1_8:                                # %if.end.27
	cmpl	$8, -12(%rbp)
	jne	.LBB1_10
# BB#9:                                 # %if.then.30
	movq	-24(%rbp), %rax
	movsd	248(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, mbvals+16
	movq	-24(%rbp), %rax
	movsd	288(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, mbvals+24
	jmp	.LBB1_13
.LBB1_10:                               # %if.else
	cmpl	$6, -12(%rbp)
	je	.LBB1_12
# BB#11:                                # %if.then.38
	movl	$1, -48(%rbp)
.LBB1_12:                               # %if.end.39
	jmp	.LBB1_13
.LBB1_13:                               # %if.end.40
	cmpl	$3, -48(%rbp)
	jne	.LBB1_15
# BB#14:                                # %if.then.43
	movq	-24(%rbp), %rax
	movl	128(%rax), %ecx
	movl	%ecx, mbvals
	movq	-24(%rbp), %rax
	movl	168(%rax), %ecx
	movl	%ecx, mbvals+4
	movq	-24(%rbp), %rax
	movl	208(%rax), %ecx
	movl	%ecx, mbvals+8
.LBB1_15:                               # %if.end.53
	cmpl	$0, mbvals
	jl	.LBB1_17
# BB#16:                                # %lor.lhs.false
	cmpl	$2, mbvals
	jle	.LBB1_18
.LBB1_17:                               # %if.then.58
	movl	$1, -48(%rbp)
.LBB1_18:                               # %if.end.59
	jmp	.LBB1_21
.LBB1_19:                               # %sw.bb.60
	movabsq	$.L.str.16, %rdi
	movabsq	$mbvals, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movl	%eax, -120(%rbp)        # 4-byte Spill
	jmp	.LBB1_21
.LBB1_20:                               # %sw.default
	jmp	.LBB1_21
.LBB1_21:                               # %sw.epilog
	cmpl	$3, -48(%rbp)
	jne	.LBB1_29
# BB#22:                                # %land.lhs.true
	movq	-56(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_is_rgb
	cmpl	$0, %eax
	jne	.LBB1_24
# BB#23:                                # %lor.lhs.false.67
	movq	-56(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_is_gray
	cmpl	$0, %eax
	je	.LBB1_29
.LBB1_24:                               # %if.then.71
	movq	-56(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_has_alpha
	xorl	%edi, %edi
	movl	%edi, %esi
	movl	%eax, has_alpha
	movq	-56(%rbp), %rdi
	callq	mblur
	cmpl	$1, -44(%rbp)
	je	.LBB1_26
# BB#25:                                # %if.then.76
	callq	gimp_displays_flush
	movl	%eax, -124(%rbp)        # 4-byte Spill
.LBB1_26:                               # %if.end.78
	cmpl	$0, -44(%rbp)
	jne	.LBB1_28
# BB#27:                                # %if.then.81
	movabsq	$.L.str.16, %rdi
	movabsq	$mbvals, %rax
	movl	$40, %edx
	movq	%rax, %rsi
	callq	gimp_procedural_db_set_data
	movl	%eax, -128(%rbp)        # 4-byte Spill
.LBB1_28:                               # %if.end.83
	jmp	.LBB1_32
.LBB1_29:                               # %if.else.84
	cmpl	$3, -48(%rbp)
	jne	.LBB1_31
# BB#30:                                # %if.then.87
	movl	$0, -48(%rbp)
.LBB1_31:                               # %if.end.88
	jmp	.LBB1_32
.LBB1_32:                               # %if.end.89
	movl	-48(%rbp), %eax
	movl	%eax, run.values+8
	movq	-56(%rbp), %rdi
	callq	gimp_drawable_detach
.LBB1_33:                               # %return
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
	.quad	4645040803167600640     # double 360
.LCPI3_1:
	.quad	4607182418800017408     # double 1
.LCPI3_2:
	.quad	4624633867356078080     # double 15
.LCPI3_3:
	.quad	4643211215818981376     # double 256
.LCPI3_4:
	.quad	4620693217682128896     # double 8
.LCPI3_5:
	.quad	4621819117588971520     # double 10
	.text
	.align	16, 0x90
	.type	mblur_dialog,@function
mblur_dialog:                           # @mblur_dialog
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
	subq	$824, %rsp              # imm = 0x338
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
	movabsq	$.L.str.28, %rax
	xorl	%ecx, %ecx
	movl	%edi, -44(%rbp)
	movq	%rsi, -56(%rbp)
	movq	%rax, %rdi
	movl	%ecx, %esi
	callq	gimp_ui_init
	movabsq	$.L.str.29, %rdi
	callq	gettext
	movabsq	$.L.str.30, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	movabsq	$gimp_standard_help_func, %r8
	movabsq	$.L.str.16, %r9
	movabsq	$.L.str.31, %rdi
	movl	$4294967290, %r10d      # imm = 0xFFFFFFFA
	movabsq	$.L.str.32, %r11
	movl	$4294967291, %ebx       # imm = 0xFFFFFFFB
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-168(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$-6, 8(%rsp)
	movq	%r11, 16(%rsp)
	movl	$-5, 24(%rsp)
	movq	$0, 32(%rsp)
	movb	$0, %al
	movl	%ebx, -172(%rbp)        # 4-byte Spill
	movl	%r10d, -176(%rbp)       # 4-byte Spill
	callq	gimp_dialog_new
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	movq	-64(%rbp), %rdi
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_window_set_transient
	movl	$1, %edi
	movl	$12, %esi
	callq	gtk_box_new
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-64(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
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
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	-56(%rbp), %rdi
	callq	gimp_drawable_preview_new
	movq	%rax, preview
	movq	-72(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	preview, %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	preview, %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.33, %rsi
	movabsq	$mblur, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movl	$2, %r9d
	movq	preview, %rdi
	movq	-56(%rbp), %r11
	movq	%rax, %rdx
	movq	%r11, %rcx
	callq	g_signal_connect_data
	xorl	%edi, %edi
	movl	$12, %esi
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gtk_box_new
	movq	%rax, -80(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
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
	movabsq	$.L.str.34, %rdi
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movabsq	$.L.str.35, %rsi
	movl	$10, %ecx
	movl	%ecx, %edx
	movl	mbvals, %r8d
	movq	%rax, -248(%rbp)        # 8-byte Spill
	movl	%r8d, -252(%rbp)        # 4-byte Spill
	callq	g_dpgettext
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movabsq	$.L.str.36, %rsi
	movl	$10, %ecx
	movl	%ecx, %edx
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	g_dpgettext
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movabsq	$.L.str.37, %rsi
	movl	$10, %ecx
	movl	%ecx, %edx
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	g_dpgettext
	movl	$1, %edi
	movabsq	$mblur_radio_button_update, %rdx
	movabsq	$mbvals, %rsi
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movl	%r8d, %r11d
	movl	$2, %r8d
	movq	-248(%rbp), %r14        # 8-byte Reload
	movq	%rsi, -280(%rbp)        # 8-byte Spill
	movq	%r14, %rsi
	movq	-280(%rbp), %r15        # 8-byte Reload
	movl	%ecx, -284(%rbp)        # 4-byte Spill
	movq	%r15, %rcx
	movl	-252(%rbp), %r9d        # 4-byte Reload
	movl	%r8d, -288(%rbp)        # 4-byte Spill
	movl	%r9d, %r8d
	movq	-264(%rbp), %r9         # 8-byte Reload
	movl	$0, (%rsp)
	movq	$0, 8(%rsp)
	movq	-272(%rbp), %r12        # 8-byte Reload
	movq	%r12, 16(%rsp)
	movl	$1, 24(%rsp)
	movq	$0, 32(%rsp)
	movq	%rax, 40(%rsp)
	movl	$2, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movb	$0, %al
	movq	%r11, -296(%rbp)        # 8-byte Spill
	callq	gimp_int_radio_group_new
	movq	%rax, -96(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
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
	movabsq	$.L.str.38, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, center
	movq	-80(%rbp), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	center, %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -316(%rbp)        # 4-byte Spill
	movl	-316(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	center, %rdi
	callq	gtk_widget_show
	movl	$1, %edi
	movl	$12, %esi
	callq	gtk_box_new
	movq	%rax, -88(%rbp)
	movq	center, %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-88(%rbp), %rdi
	callq	gtk_widget_show
	leaq	-144(%rbp), %rsi
	leaq	-152(%rbp), %rdx
	movl	-44(%rbp), %edi
	callq	gimp_image_get_resolution
	movl	$1, %ecx
	xorl	%edi, %edi
	movabsq	$.L.str.39, %rdx
	movl	$5, %r8d
	movl	%edi, -332(%rbp)        # 4-byte Spill
	movl	%ecx, %edi
	movl	-332(%rbp), %esi        # 4-byte Reload
	movl	-332(%rbp), %r10d       # 4-byte Reload
	movl	%r8d, -336(%rbp)        # 4-byte Spill
	movl	%r10d, %r8d
	movl	%r10d, %r9d
	movl	$5, (%rsp)
	movl	$1, 8(%rsp)
	movl	%eax, -340(%rbp)        # 4-byte Spill
	callq	gimp_size_entry_new
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-112(%rbp), %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movl	$6, %edx
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacing
	movq	-112(%rbp), %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movl	$6, %edx
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacing
	movq	-88(%rbp), %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-112(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -380(%rbp)        # 4-byte Spill
	movl	-380(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-112(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.40, %rsi
	movabsq	$mblur_center_update, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	xorl	%r9d, %r9d
	movq	-112(%rbp), %r11
	movq	%rdi, -392(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %rdx
	movq	-392(%rbp), %rcx        # 8-byte Reload
	movq	-392(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.40, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-112(%rbp), %rdx
	movq	preview, %rdi
	movq	%rdi, -400(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-400(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	leaq	-136(%rbp), %rdi
	movsd	.LCPI3_1, %xmm0         # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movsd	.LCPI3_5, %xmm4         # xmm4 = mem[0],zero
	movl	$2, %esi
	movsd	%xmm0, -416(%rbp)       # 8-byte Spill
	movsd	%xmm1, -424(%rbp)       # 8-byte Spill
	movsd	-416(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	-416(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	-424(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-416(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	gimp_spin_button_new
	movq	%rax, -120(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -440(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-440(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-120(%rbp), %rcx
	movq	%rax, -448(%rbp)        # 8-byte Spill
	movq	%rcx, -456(%rbp)        # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-456(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	movq	-448(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_size_entry_add_field
	movq	-112(%rbp), %rax
	movq	%rax, -464(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-464(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r9d
	movl	$2, %ecx
	xorl	%r8d, %r8d
	movq	-120(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	callq	gtk_table_attach_defaults
	movq	-120(%rbp), %rdi
	callq	gtk_widget_show
	movq	-112(%rbp), %rax
	movq	%rax, -472(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-472(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movl	$1, %edx
	movsd	-144(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	gimp_size_entry_set_resolution
	movq	-112(%rbp), %rax
	movq	%rax, -480(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-480(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movsd	mbvals+16, %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	gimp_size_entry_set_refval
	movq	-112(%rbp), %rax
	movq	%rax, -488(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-488(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.41, %rdi
	movq	%rax, -496(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	xorps	%xmm0, %xmm0
	movq	-496(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movl	%ecx, %edx
	callq	gimp_size_entry_attach_label
	movq	-112(%rbp), %rsi
	movq	%rax, -504(%rbp)        # 8-byte Spill
	movq	%rsi, -512(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-512(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	movsd	-152(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	%rax, %rdi
	movl	%ecx, %esi
	movl	%ecx, %edx
	callq	gimp_size_entry_set_resolution
	movq	-112(%rbp), %rax
	movq	%rax, -520(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-520(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movsd	mbvals+24, %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	gimp_size_entry_set_refval
	movq	-112(%rbp), %rax
	movq	%rax, -528(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-528(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.42, %rdi
	movq	%rax, -536(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$1, %edx
	xorl	%ecx, %ecx
	xorps	%xmm0, %xmm0
	movq	-536(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_size_entry_attach_label
	movabsq	$.L.str.43, %rdi
	movq	%rax, -544(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_mnemonic
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -552(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	mbvals+32, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-72(%rbp), %rax
	movq	%rax, -560(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-560(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-128(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -564(%rbp)        # 4-byte Spill
	movl	-564(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-128(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.44, %rsi
	movabsq	$gimp_toggle_button_update, %rax
	movabsq	$mbvals, %rdi
	addq	$32, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-128(%rbp), %r11
	movq	%rdi, -576(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %rdx
	movq	-576(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.44, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-128(%rbp), %rdx
	movq	preview, %rdi
	movq	%rdi, -584(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-584(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -592(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.45, %rdi
	movq	-128(%rbp), %rcx
	movq	%rcx, dir_button
	movq	%rax, -600(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -96(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -608(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-608(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-96(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-96(%rbp), %rdi
	callq	gtk_widget_show
	movl	$2, %edi
	movl	$3, %esi
	xorl	%edx, %edx
	callq	gtk_table_new
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -616(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-616(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-104(%rbp), %rax
	movq	%rax, -624(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-624(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-96(%rbp), %rax
	movq	%rax, -632(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-632(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-104(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-104(%rbp), %rdi
	callq	gtk_widget_show
	movq	-104(%rbp), %rax
	movq	%rax, -640(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-640(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.46, %rdi
	movq	%rax, -648(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	$150, %r8d
	movl	$3, %r9d
	movsd	.LCPI3_1, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI3_3, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI3_4, %xmm4         # xmm4 = mem[0],zero
	movl	$1, %edx
	xorps	%xmm1, %xmm1
	xorl	%r10d, %r10d
	movl	%r10d, %esi
	cvtsi2sdl	mbvals+4, %xmm3
	movq	-648(%rbp), %rdi        # 8-byte Reload
	movq	%rsi, -656(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movl	%edx, -660(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movq	%rax, %rcx
	movsd	%xmm0, -672(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm0
	movsd	-672(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	%xmm1, -680(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm1
	movl	$0, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-680(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-680(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	callq	gimp_scale_entry_new
	movabsq	$.L.str.40, %rsi
	movabsq	$gimp_int_adjustment_update, %rcx
	movabsq	$mbvals, %rdi
	addq	$4, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, length
	movq	length, %rax
	movq	%rdi, -688(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-688(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.40, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	length, %rdx
	movq	preview, %rdi
	movq	%rdi, -696(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-696(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -704(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-104(%rbp), %rcx
	movq	%rax, -712(%rbp)        # 8-byte Spill
	movq	%rcx, -720(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-720(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.47, %rdi
	movq	%rax, -728(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$1, %edx
	movl	$150, %r8d
	movl	$3, %r9d
	xorps	%xmm0, %xmm0
	movsd	.LCPI3_0, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI3_1, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI3_2, %xmm4         # xmm4 = mem[0],zero
	xorl	%r10d, %r10d
	movl	%r10d, %ecx
	cvtsi2sdl	mbvals+8, %xmm1
	movq	-728(%rbp), %rdi        # 8-byte Reload
	movq	%rcx, -736(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movsd	%xmm0, -744(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-744(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	$0, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-744(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-744(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	callq	gimp_scale_entry_new
	movabsq	$.L.str.40, %rsi
	movabsq	$gimp_int_adjustment_update, %rcx
	movabsq	$mbvals, %rdi
	addq	$8, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, angle
	movq	angle, %rax
	movq	%rdi, -752(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-752(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.40, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	angle, %rdx
	movq	preview, %rdi
	movq	%rdi, -760(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-760(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -768(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	%rax, -776(%rbp)        # 8-byte Spill
	callq	mblur_set_sensitivity
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	movq	-64(%rbp), %rax
	movq	%rax, -784(%rbp)        # 8-byte Spill
	callq	gimp_dialog_get_type
	movq	-784(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dialog_run
	cmpl	$-5, %eax
	sete	%r13b
	andb	$1, %r13b
	movzbl	%r13b, %eax
	movl	%eax, -156(%rbp)
	movq	-64(%rbp), %rdi
	callq	gtk_widget_destroy
	movl	-156(%rbp), %eax
	addq	$824, %rsp              # imm = 0x338
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	mblur_dialog, .Lfunc_end3-mblur_dialog
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	mblur,@function
mblur:                                  # @mblur
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB4_2
# BB#1:                                 # %if.then
	leaq	-20(%rbp), %rsi
	leaq	-24(%rbp), %rdx
	movq	-16(%rbp), %rdi
	callq	gimp_preview_get_position
	leaq	-28(%rbp), %rsi
	leaq	-32(%rbp), %rdx
	movq	-16(%rbp), %rdi
	callq	gimp_preview_get_size
	jmp	.LBB4_5
.LBB4_2:                                # %if.else
	leaq	-20(%rbp), %rsi
	leaq	-24(%rbp), %rdx
	leaq	-28(%rbp), %rcx
	leaq	-32(%rbp), %r8
	movq	-8(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_mask_intersect
	cmpl	$0, %eax
	jne	.LBB4_4
# BB#3:                                 # %if.then.2
	jmp	.LBB4_14
.LBB4_4:                                # %if.end
	jmp	.LBB4_5
.LBB4_5:                                # %if.end.3
	cmpq	$0, -16(%rbp)
	jne	.LBB4_7
# BB#6:                                 # %if.then.5
	movabsq	$.L.str.48, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_progress_init
	movl	%eax, -36(%rbp)         # 4-byte Spill
.LBB4_7:                                # %if.end.8
	movl	mbvals(%rip), %eax
	testl	%eax, %eax
	movl	%eax, -40(%rbp)         # 4-byte Spill
	je	.LBB4_8
	jmp	.LBB4_15
.LBB4_15:                               # %if.end.8
	movl	-40(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
	je	.LBB4_9
	jmp	.LBB4_16
.LBB4_16:                               # %if.end.8
	movl	-40(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -48(%rbp)         # 4-byte Spill
	je	.LBB4_10
	jmp	.LBB4_11
.LBB4_8:                                # %sw.bb
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	movl	-28(%rbp), %r8d
	movl	-32(%rbp), %r9d
	callq	mblur_linear
	jmp	.LBB4_12
.LBB4_9:                                # %sw.bb.9
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	movl	-28(%rbp), %r8d
	movl	-32(%rbp), %r9d
	callq	mblur_radial
	jmp	.LBB4_12
.LBB4_10:                               # %sw.bb.10
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	movl	-28(%rbp), %r8d
	movl	-32(%rbp), %r9d
	callq	mblur_zoom
	jmp	.LBB4_12
.LBB4_11:                               # %sw.default
	jmp	.LBB4_12
.LBB4_12:                               # %sw.epilog
	cmpq	$0, -16(%rbp)
	jne	.LBB4_14
# BB#13:                                # %if.then.12
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	callq	gimp_progress_update
	movq	-8(%rbp), %rdi
	movl	%eax, -52(%rbp)         # 4-byte Spill
	callq	gimp_drawable_flush
	movl	$1, %esi
	movq	-8(%rbp), %rdi
	movl	(%rdi), %edi
	callq	gimp_drawable_merge_shadow
	movq	-8(%rbp), %rcx
	movl	(%rcx), %edi
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	movl	-28(%rbp), %ecx
	movl	-32(%rbp), %r8d
	movl	%eax, -56(%rbp)         # 4-byte Spill
	callq	gimp_drawable_update
	movl	%eax, -60(%rbp)         # 4-byte Spill
.LBB4_14:                               # %if.end.18
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	mblur, .Lfunc_end4-mblur
	.cfi_endproc

	.align	16, 0x90
	.type	mblur_radio_button_update,@function
mblur_radio_button_update:              # @mblur_radio_button_update
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_radio_button_update
	callq	mblur_set_sensitivity
	movq	preview, %rsi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	callq	gimp_preview_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_preview_invalidate
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	mblur_radio_button_update, .Lfunc_end5-mblur_radio_button_update
	.cfi_endproc

	.align	16, 0x90
	.type	mblur_center_update,@function
mblur_center_update:                    # @mblur_center_update
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
	subq	$16, %rsp
	xorl	%esi, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_size_entry_get_refval
	movl	$1, %esi
	movsd	%xmm0, mbvals+16
	movq	-8(%rbp), %rdi
	callq	gimp_size_entry_get_refval
	movsd	%xmm0, mbvals+24
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	mblur_center_update, .Lfunc_end6-mblur_center_update
	.cfi_endproc

	.align	16, 0x90
	.type	mblur_set_sensitivity,@function
mblur_set_sensitivity:                  # @mblur_set_sensitivity
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
	subq	$16, %rsp
	cmpq	$0, length
	je	.LBB7_4
# BB#1:                                 # %lor.lhs.false
	cmpq	$0, angle
	je	.LBB7_4
# BB#2:                                 # %lor.lhs.false.2
	cmpq	$0, center
	je	.LBB7_4
# BB#3:                                 # %lor.lhs.false.4
	cmpq	$0, dir_button
	jne	.LBB7_5
.LBB7_4:                                # %if.then
	jmp	.LBB7_10
.LBB7_5:                                # %if.end
	movl	mbvals(%rip), %eax
	testl	%eax, %eax
	movl	%eax, -4(%rbp)          # 4-byte Spill
	je	.LBB7_6
	jmp	.LBB7_11
.LBB7_11:                               # %if.end
	movl	-4(%rbp), %eax          # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -8(%rbp)          # 4-byte Spill
	je	.LBB7_7
	jmp	.LBB7_12
.LBB7_12:                               # %if.end
	movl	-4(%rbp), %eax          # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -12(%rbp)         # 4-byte Spill
	je	.LBB7_8
	jmp	.LBB7_9
.LBB7_6:                                # %sw.bb
	movl	$1, %esi
	movq	length, %rdi
	callq	gimp_scale_entry_set_sensitive
	movl	$1, %esi
	movq	angle, %rdi
	callq	gimp_scale_entry_set_sensitive
	xorl	%esi, %esi
	movq	center, %rdi
	callq	gtk_widget_set_sensitive
	xorl	%esi, %esi
	movq	dir_button, %rdi
	callq	gtk_widget_set_sensitive
	jmp	.LBB7_10
.LBB7_7:                                # %sw.bb.6
	xorl	%esi, %esi
	movq	length, %rdi
	callq	gimp_scale_entry_set_sensitive
	movl	$1, %esi
	movq	angle, %rdi
	callq	gimp_scale_entry_set_sensitive
	movl	$1, %esi
	movq	center, %rdi
	callq	gtk_widget_set_sensitive
	xorl	%esi, %esi
	movq	dir_button, %rdi
	callq	gtk_widget_set_sensitive
	jmp	.LBB7_10
.LBB7_8:                                # %sw.bb.7
	movl	$1, %esi
	movq	length, %rdi
	callq	gimp_scale_entry_set_sensitive
	xorl	%esi, %esi
	movq	angle, %rdi
	callq	gimp_scale_entry_set_sensitive
	movl	$1, %esi
	movq	center, %rdi
	callq	gtk_widget_set_sensitive
	movl	$1, %esi
	movq	dir_button, %rdi
	callq	gtk_widget_set_sensitive
	jmp	.LBB7_10
.LBB7_9:                                # %sw.default
	jmp	.LBB7_10
.LBB7_10:                               # %sw.epilog
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	mblur_set_sensitivity, .Lfunc_end7-mblur_set_sensitivity
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI8_0:
	.quad	4614256656552045848     # double 3.1415926535897931
.LCPI8_1:
	.quad	4640537203540230144     # double 180
	.text
	.align	16, 0x90
	.type	mblur_linear,@function
mblur_linear:                           # @mblur_linear
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
	pushq	%rbx
	subq	$344, %rsp              # imm = 0x158
.Ltmp37:
	.cfi_offset %rbx, -24
	leaq	-88(%rbp), %rax
	movl	$1, %r10d
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movl	%r9d, -40(%rbp)
	movq	-16(%rbp), %rsi
	movl	-28(%rbp), %edx
	movl	-32(%rbp), %ecx
	movl	-36(%rbp), %r8d
	movl	-40(%rbp), %r9d
	cmpq	$0, -24(%rbp)
	sete	%r11b
	andb	$1, %r11b
	movzbl	%r11b, %ebx
	movq	%rax, %rdi
	movl	%ebx, (%rsp)
	movl	$1, 8(%rsp)
	movl	%r10d, -264(%rbp)       # 4-byte Spill
	callq	gimp_pixel_rgn_init
	xorl	%esi, %esi
	movq	-16(%rbp), %rdi
	callq	gimp_pixel_fetcher_new
	leaq	-136(%rbp), %rdi
	movq	%rax, -96(%rbp)
	callq	gimp_context_get_background
	leaq	-136(%rbp), %rsi
	movq	-96(%rbp), %rdi
	movl	%eax, -268(%rbp)        # 4-byte Spill
	callq	gimp_pixel_fetcher_set_bg_color
	movsd	.LCPI8_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI8_1, %xmm1         # xmm1 = mem[0],zero
	movl	$0, -180(%rbp)
	movl	-36(%rbp), %eax
	imull	-40(%rbp), %eax
	movl	%eax, -184(%rbp)
	movl	mbvals+4, %eax
	movl	%eax, -208(%rbp)
	cvtsi2sdl	-208(%rbp), %xmm2
	cvtsi2sdl	mbvals+8, %xmm3
	divsd	%xmm1, %xmm3
	mulsd	%xmm0, %xmm3
	movsd	%xmm0, -280(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm0
	movsd	%xmm2, -288(%rbp)       # 8-byte Spill
	movsd	%xmm1, -296(%rbp)       # 8-byte Spill
	callq	cos
	movsd	-288(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, -220(%rbp)
	cvtsi2sdl	-208(%rbp), %xmm0
	cvtsi2sdl	mbvals+8, %xmm1
	movsd	-296(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	divsd	%xmm2, %xmm1
	movsd	-280(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	mulsd	%xmm3, %xmm1
	movsd	%xmm0, -304(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	sin
	movsd	-304(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, -224(%rbp)
	movl	-220(%rbp), %eax
	movl	%eax, -212(%rbp)
	cmpl	$0, %eax
	je	.LBB8_5
# BB#1:                                 # %if.then
	cmpl	$0, -212(%rbp)
	jge	.LBB8_3
# BB#2:                                 # %if.then.19
	xorl	%eax, %eax
	subl	-212(%rbp), %eax
	movl	%eax, -212(%rbp)
	movl	$-1, -240(%rbp)
	jmp	.LBB8_4
.LBB8_3:                                # %if.else
	movl	$1, -240(%rbp)
.LBB8_4:                                # %if.end
	jmp	.LBB8_6
.LBB8_5:                                # %if.else.20
	movl	$0, -240(%rbp)
.LBB8_6:                                # %if.end.21
	movl	-224(%rbp), %eax
	movl	%eax, -216(%rbp)
	cmpl	$0, %eax
	je	.LBB8_11
# BB#7:                                 # %if.then.24
	cmpl	$0, -216(%rbp)
	jge	.LBB8_9
# BB#8:                                 # %if.then.27
	xorl	%eax, %eax
	subl	-216(%rbp), %eax
	movl	%eax, -216(%rbp)
	movl	$-1, -244(%rbp)
	jmp	.LBB8_10
.LBB8_9:                                # %if.else.29
	movl	$1, -244(%rbp)
.LBB8_10:                               # %if.end.30
	jmp	.LBB8_12
.LBB8_11:                               # %if.else.31
	movl	$0, -244(%rbp)
.LBB8_12:                               # %if.end.32
	movl	-216(%rbp), %eax
	cmpl	-212(%rbp), %eax
	jle	.LBB8_14
# BB#13:                                # %if.then.35
	movl	-212(%rbp), %eax
	movl	%eax, -228(%rbp)
	movl	-216(%rbp), %eax
	movl	%eax, -212(%rbp)
	movl	-228(%rbp), %eax
	movl	%eax, -216(%rbp)
	movl	$1, -228(%rbp)
	jmp	.LBB8_15
.LBB8_14:                               # %if.else.36
	movl	$0, -228(%rbp)
.LBB8_15:                               # %if.end.37
	movl	$1, %edi
	leaq	-88(%rbp), %rsi
	movl	-216(%rbp), %eax
	shll	$1, %eax
	movl	%eax, -216(%rbp)
	movl	-216(%rbp), %eax
	subl	-212(%rbp), %eax
	movl	%eax, -232(%rbp)
	movl	-212(%rbp), %eax
	shll	$1, %eax
	movl	%eax, -212(%rbp)
	movb	$0, %al
	callq	gimp_pixel_rgns_register
	movq	%rax, -104(%rbp)
	movl	$0, -192(%rbp)
.LBB8_16:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_18 Depth 2
                                        #       Child Loop BB8_20 Depth 3
                                        #         Child Loop BB8_22 Depth 4
                                        #         Child Loop BB8_26 Depth 4
                                        #           Child Loop BB8_29 Depth 5
                                        #           Child Loop BB8_34 Depth 5
                                        #           Child Loop BB8_39 Depth 5
                                        #         Child Loop BB8_60 Depth 4
                                        #         Child Loop BB8_66 Depth 4
	cmpq	$0, -104(%rbp)
	je	.LBB8_82
# BB#17:                                # %for.body
                                        #   in Loop: Header=BB8_16 Depth=1
	movq	-88(%rbp), %rax
	movq	%rax, -144(%rbp)
	movl	-60(%rbp), %ecx
	movl	%ecx, -200(%rbp)
.LBB8_18:                               # %for.cond.45
                                        #   Parent Loop BB8_16 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB8_20 Depth 3
                                        #         Child Loop BB8_22 Depth 4
                                        #         Child Loop BB8_26 Depth 4
                                        #           Child Loop BB8_29 Depth 5
                                        #           Child Loop BB8_34 Depth 5
                                        #           Child Loop BB8_39 Depth 5
                                        #         Child Loop BB8_60 Depth 4
                                        #         Child Loop BB8_66 Depth 4
	movl	-200(%rbp), %eax
	movl	-60(%rbp), %ecx
	addl	-52(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB8_75
# BB#19:                                # %for.body.49
                                        #   in Loop: Header=BB8_18 Depth=2
	movq	-144(%rbp), %rax
	movq	%rax, -152(%rbp)
	movl	-64(%rbp), %ecx
	movl	%ecx, -196(%rbp)
.LBB8_20:                               # %for.cond.51
                                        #   Parent Loop BB8_16 Depth=1
                                        #     Parent Loop BB8_18 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB8_22 Depth 4
                                        #         Child Loop BB8_26 Depth 4
                                        #           Child Loop BB8_29 Depth 5
                                        #           Child Loop BB8_34 Depth 5
                                        #           Child Loop BB8_39 Depth 5
                                        #         Child Loop BB8_60 Depth 4
                                        #         Child Loop BB8_66 Depth 4
	movl	-196(%rbp), %eax
	movl	-64(%rbp), %ecx
	addl	-56(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB8_73
# BB#21:                                # %for.body.56
                                        #   in Loop: Header=BB8_20 Depth=3
	movl	-196(%rbp), %eax
	movl	%eax, -248(%rbp)
	movl	-200(%rbp), %eax
	movl	%eax, -252(%rbp)
	movl	-232(%rbp), %eax
	movl	%eax, -236(%rbp)
	movl	$0, -188(%rbp)
.LBB8_22:                               # %for.cond.57
                                        #   Parent Loop BB8_16 Depth=1
                                        #     Parent Loop BB8_18 Depth=2
                                        #       Parent Loop BB8_20 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	-188(%rbp), %eax
	cmpl	img_bpp, %eax
	jge	.LBB8_25
# BB#23:                                # %for.body.60
                                        #   in Loop: Header=BB8_22 Depth=4
	movslq	-188(%rbp), %rax
	movl	$0, -176(%rbp,%rax,4)
# BB#24:                                # %for.inc
                                        #   in Loop: Header=BB8_22 Depth=4
	movl	-188(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -188(%rbp)
	jmp	.LBB8_22
.LBB8_25:                               # %for.end
                                        #   in Loop: Header=BB8_20 Depth=3
	movl	$0, -204(%rbp)
.LBB8_26:                               # %for.cond.61
                                        #   Parent Loop BB8_16 Depth=1
                                        #     Parent Loop BB8_18 Depth=2
                                        #       Parent Loop BB8_20 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB8_29 Depth 5
                                        #           Child Loop BB8_34 Depth 5
                                        #           Child Loop BB8_39 Depth 5
	movl	-204(%rbp), %eax
	cmpl	-208(%rbp), %eax
	jge	.LBB8_55
# BB#27:                                # %for.body.64
                                        #   in Loop: Header=BB8_26 Depth=4
	leaq	-156(%rbp), %rcx
	movq	-96(%rbp), %rdi
	movl	-248(%rbp), %esi
	movl	-252(%rbp), %edx
	callq	gimp_pixel_fetcher_get_pixel
	cmpl	$0, has_alpha
	je	.LBB8_33
# BB#28:                                # %if.then.65
                                        #   in Loop: Header=BB8_26 Depth=4
	movl	img_bpp, %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movzbl	-156(%rbp,%rcx), %eax
	movl	%eax, -256(%rbp)
	movl	-256(%rbp), %eax
	movl	img_bpp, %edx
	subl	$1, %edx
	movslq	%edx, %rcx
	addl	-176(%rbp,%rcx,4), %eax
	movl	%eax, -176(%rbp,%rcx,4)
	movl	$0, -188(%rbp)
.LBB8_29:                               # %for.cond.74
                                        #   Parent Loop BB8_16 Depth=1
                                        #     Parent Loop BB8_18 Depth=2
                                        #       Parent Loop BB8_20 Depth=3
                                        #         Parent Loop BB8_26 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	movl	-188(%rbp), %eax
	movl	img_bpp, %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB8_32
# BB#30:                                # %for.body.78
                                        #   in Loop: Header=BB8_29 Depth=5
	movslq	-188(%rbp), %rax
	movzbl	-156(%rbp,%rax), %ecx
	imull	-256(%rbp), %ecx
	movslq	-188(%rbp), %rax
	addl	-176(%rbp,%rax,4), %ecx
	movl	%ecx, -176(%rbp,%rax,4)
# BB#31:                                # %for.inc.86
                                        #   in Loop: Header=BB8_29 Depth=5
	movl	-188(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -188(%rbp)
	jmp	.LBB8_29
.LBB8_32:                               # %for.end.88
                                        #   in Loop: Header=BB8_26 Depth=4
	jmp	.LBB8_38
.LBB8_33:                               # %if.else.89
                                        #   in Loop: Header=BB8_26 Depth=4
	movl	$0, -188(%rbp)
.LBB8_34:                               # %for.cond.90
                                        #   Parent Loop BB8_16 Depth=1
                                        #     Parent Loop BB8_18 Depth=2
                                        #       Parent Loop BB8_20 Depth=3
                                        #         Parent Loop BB8_26 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	movl	-188(%rbp), %eax
	cmpl	img_bpp, %eax
	jge	.LBB8_37
# BB#35:                                # %for.body.93
                                        #   in Loop: Header=BB8_34 Depth=5
	movslq	-188(%rbp), %rax
	movzbl	-156(%rbp,%rax), %ecx
	movslq	-188(%rbp), %rax
	addl	-176(%rbp,%rax,4), %ecx
	movl	%ecx, -176(%rbp,%rax,4)
# BB#36:                                # %for.inc.100
                                        #   in Loop: Header=BB8_34 Depth=5
	movl	-188(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -188(%rbp)
	jmp	.LBB8_34
.LBB8_37:                               # %for.end.102
                                        #   in Loop: Header=BB8_26 Depth=4
	jmp	.LBB8_38
.LBB8_38:                               # %if.end.103
                                        #   in Loop: Header=BB8_26 Depth=4
	movl	-204(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -204(%rbp)
.LBB8_39:                               # %while.cond
                                        #   Parent Loop BB8_16 Depth=1
                                        #     Parent Loop BB8_18 Depth=2
                                        #       Parent Loop BB8_20 Depth=3
                                        #         Parent Loop BB8_26 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -236(%rbp)
	movb	%cl, -305(%rbp)         # 1-byte Spill
	jl	.LBB8_41
# BB#40:                                # %land.rhs
                                        #   in Loop: Header=BB8_39 Depth=5
	cmpl	$0, -212(%rbp)
	setne	%al
	movb	%al, -305(%rbp)         # 1-byte Spill
.LBB8_41:                               # %land.end
                                        #   in Loop: Header=BB8_39 Depth=5
	movb	-305(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB8_42
	jmp	.LBB8_46
.LBB8_42:                               # %while.body
                                        #   in Loop: Header=BB8_39 Depth=5
	cmpl	$0, -228(%rbp)
	je	.LBB8_44
# BB#43:                                # %if.then.109
                                        #   in Loop: Header=BB8_39 Depth=5
	movl	-240(%rbp), %eax
	addl	-248(%rbp), %eax
	movl	%eax, -248(%rbp)
	jmp	.LBB8_45
.LBB8_44:                               # %if.else.111
                                        #   in Loop: Header=BB8_39 Depth=5
	movl	-244(%rbp), %eax
	addl	-252(%rbp), %eax
	movl	%eax, -252(%rbp)
.LBB8_45:                               # %if.end.113
                                        #   in Loop: Header=BB8_39 Depth=5
	movl	-212(%rbp), %eax
	movl	-236(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -236(%rbp)
	jmp	.LBB8_39
.LBB8_46:                               # %while.end
                                        #   in Loop: Header=BB8_26 Depth=4
	cmpl	$0, -228(%rbp)
	je	.LBB8_48
# BB#47:                                # %if.then.116
                                        #   in Loop: Header=BB8_26 Depth=4
	movl	-244(%rbp), %eax
	addl	-252(%rbp), %eax
	movl	%eax, -252(%rbp)
	jmp	.LBB8_49
.LBB8_48:                               # %if.else.118
                                        #   in Loop: Header=BB8_26 Depth=4
	movl	-240(%rbp), %eax
	addl	-248(%rbp), %eax
	movl	%eax, -248(%rbp)
.LBB8_49:                               # %if.end.120
                                        #   in Loop: Header=BB8_26 Depth=4
	movl	-216(%rbp), %eax
	addl	-236(%rbp), %eax
	movl	%eax, -236(%rbp)
	movl	-248(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.LBB8_53
# BB#50:                                # %lor.lhs.false
                                        #   in Loop: Header=BB8_26 Depth=4
	movl	-248(%rbp), %eax
	movl	-28(%rbp), %ecx
	addl	-36(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB8_53
# BB#51:                                # %lor.lhs.false.127
                                        #   in Loop: Header=BB8_26 Depth=4
	movl	-252(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jl	.LBB8_53
# BB#52:                                # %lor.lhs.false.130
                                        #   in Loop: Header=BB8_26 Depth=4
	movl	-252(%rbp), %eax
	movl	-32(%rbp), %ecx
	addl	-40(%rbp), %ecx
	cmpl	%ecx, %eax
	jl	.LBB8_54
.LBB8_53:                               # %if.then.134
                                        #   in Loop: Header=BB8_20 Depth=3
	jmp	.LBB8_55
.LBB8_54:                               # %if.end.135
                                        #   in Loop: Header=BB8_26 Depth=4
	jmp	.LBB8_26
.LBB8_55:                               # %for.end.136
                                        #   in Loop: Header=BB8_20 Depth=3
	cmpl	$0, -204(%rbp)
	jne	.LBB8_57
# BB#56:                                # %if.then.139
                                        #   in Loop: Header=BB8_20 Depth=3
	movq	-96(%rbp), %rdi
	movl	-248(%rbp), %esi
	movl	-252(%rbp), %edx
	movq	-152(%rbp), %rcx
	callq	gimp_pixel_fetcher_get_pixel
	jmp	.LBB8_71
.LBB8_57:                               # %if.else.140
                                        #   in Loop: Header=BB8_20 Depth=3
	cmpl	$0, has_alpha
	je	.LBB8_65
# BB#58:                                # %if.then.142
                                        #   in Loop: Header=BB8_20 Depth=3
	movl	img_bpp, %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movl	-176(%rbp,%rcx,4), %eax
	movl	%eax, -260(%rbp)
	movl	-260(%rbp), %eax
	cltd
	idivl	-204(%rbp)
	movb	%al, %sil
	movl	img_bpp, %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-152(%rbp), %rdi
	movb	%sil, (%rdi,%rcx)
	movzbl	%sil, %eax
	cmpl	$0, %eax
	je	.LBB8_64
# BB#59:                                # %if.then.155
                                        #   in Loop: Header=BB8_20 Depth=3
	movl	$0, -188(%rbp)
.LBB8_60:                               # %for.cond.156
                                        #   Parent Loop BB8_16 Depth=1
                                        #     Parent Loop BB8_18 Depth=2
                                        #       Parent Loop BB8_20 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	-188(%rbp), %eax
	movl	img_bpp, %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB8_63
# BB#61:                                # %for.body.160
                                        #   in Loop: Header=BB8_60 Depth=4
	movslq	-188(%rbp), %rax
	movl	-176(%rbp,%rax,4), %eax
	cltd
	idivl	-260(%rbp)
	movb	%al, %cl
	movslq	-188(%rbp), %rsi
	movq	-152(%rbp), %rdi
	movb	%cl, (%rdi,%rsi)
# BB#62:                                # %for.inc.167
                                        #   in Loop: Header=BB8_60 Depth=4
	movl	-188(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -188(%rbp)
	jmp	.LBB8_60
.LBB8_63:                               # %for.end.169
                                        #   in Loop: Header=BB8_20 Depth=3
	jmp	.LBB8_64
.LBB8_64:                               # %if.end.170
                                        #   in Loop: Header=BB8_20 Depth=3
	jmp	.LBB8_70
.LBB8_65:                               # %if.else.171
                                        #   in Loop: Header=BB8_20 Depth=3
	movl	$0, -188(%rbp)
.LBB8_66:                               # %for.cond.172
                                        #   Parent Loop BB8_16 Depth=1
                                        #     Parent Loop BB8_18 Depth=2
                                        #       Parent Loop BB8_20 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	-188(%rbp), %eax
	cmpl	img_bpp, %eax
	jge	.LBB8_69
# BB#67:                                # %for.body.175
                                        #   in Loop: Header=BB8_66 Depth=4
	movslq	-188(%rbp), %rax
	movl	-176(%rbp,%rax,4), %eax
	cltd
	idivl	-204(%rbp)
	movb	%al, %cl
	movslq	-188(%rbp), %rsi
	movq	-152(%rbp), %rdi
	movb	%cl, (%rdi,%rsi)
# BB#68:                                # %for.inc.182
                                        #   in Loop: Header=BB8_66 Depth=4
	movl	-188(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -188(%rbp)
	jmp	.LBB8_66
.LBB8_69:                               # %for.end.184
                                        #   in Loop: Header=BB8_20 Depth=3
	jmp	.LBB8_70
.LBB8_70:                               # %if.end.185
                                        #   in Loop: Header=BB8_20 Depth=3
	jmp	.LBB8_71
.LBB8_71:                               # %if.end.186
                                        #   in Loop: Header=BB8_20 Depth=3
	movl	-72(%rbp), %eax
	movq	-152(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -152(%rbp)
# BB#72:                                # %for.inc.187
                                        #   in Loop: Header=BB8_20 Depth=3
	movl	-196(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -196(%rbp)
	jmp	.LBB8_20
.LBB8_73:                               # %for.end.189
                                        #   in Loop: Header=BB8_18 Depth=2
	movl	-68(%rbp), %eax
	movq	-144(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -144(%rbp)
# BB#74:                                # %for.inc.192
                                        #   in Loop: Header=BB8_18 Depth=2
	movl	-200(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -200(%rbp)
	jmp	.LBB8_18
.LBB8_75:                               # %for.end.194
                                        #   in Loop: Header=BB8_16 Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB8_77
# BB#76:                                # %if.then.196
                                        #   in Loop: Header=BB8_16 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	gimp_drawable_preview_get_type
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-88(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_drawable_preview_draw_region
	jmp	.LBB8_80
.LBB8_77:                               # %if.else.199
                                        #   in Loop: Header=BB8_16 Depth=1
	movl	$8, %eax
	movl	-56(%rbp), %ecx
	imull	-52(%rbp), %ecx
	addl	-180(%rbp), %ecx
	movl	%ecx, -180(%rbp)
	movl	-192(%rbp), %ecx
	movl	%eax, -324(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-324(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB8_79
# BB#78:                                # %if.then.206
                                        #   in Loop: Header=BB8_16 Depth=1
	cvtsi2sdl	-180(%rbp), %xmm0
	cvtsi2sdl	-184(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -328(%rbp)        # 4-byte Spill
.LBB8_79:                               # %if.end.211
                                        #   in Loop: Header=BB8_16 Depth=1
	jmp	.LBB8_80
.LBB8_80:                               # %if.end.212
                                        #   in Loop: Header=BB8_16 Depth=1
	jmp	.LBB8_81
.LBB8_81:                               # %for.inc.213
                                        #   in Loop: Header=BB8_16 Depth=1
	movq	-104(%rbp), %rdi
	callq	gimp_pixel_rgns_process
	movq	%rax, -104(%rbp)
	movl	-192(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -192(%rbp)
	jmp	.LBB8_16
.LBB8_82:                               # %for.end.216
	movq	-96(%rbp), %rdi
	callq	gimp_pixel_fetcher_destroy
	addq	$344, %rsp              # imm = 0x158
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end8:
	.size	mblur_linear, .Lfunc_end8-mblur_linear
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI9_0:
	.quad	4645040803167600640     # double 360
.LCPI9_1:
	.quad	4618760256179416344     # double 6.2831853071795862
.LCPI9_2:
	.quad	4636737291354636288     # double 100
.LCPI9_3:
	.quad	-4613618979930100456    # double -1.5707963267948966
.LCPI9_4:
	.quad	4609753056924675352     # double 1.5707963267948966
.LCPI9_5:
	.quad	4614256656552045848     # double 3.1415926535897931
.LCPI9_6:
	.quad	4611686018427387904     # double 2
.LCPI9_7:
	.quad	4607182418800017408     # double 1
.LCPI9_8:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	mblur_radial,@function
mblur_radial:                           # @mblur_radial
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp38:
	.cfi_def_cfa_offset 16
.Ltmp39:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp40:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$440, %rsp              # imm = 0x1B8
.Ltmp41:
	.cfi_offset %rbx, -24
	leaq	-88(%rbp), %rax
	movl	$1, %r10d
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movl	%r9d, -40(%rbp)
	movsd	mbvals+16, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -144(%rbp)
	movsd	mbvals+24, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -152(%rbp)
	movq	-16(%rbp), %rsi
	movl	-28(%rbp), %edx
	movl	-32(%rbp), %ecx
	movl	-36(%rbp), %r8d
	movl	-40(%rbp), %r9d
	cmpq	$0, -24(%rbp)
	sete	%r11b
	andb	$1, %r11b
	movzbl	%r11b, %ebx
	movq	%rax, %rdi
	movl	%ebx, (%rsp)
	movl	$1, 8(%rsp)
	movl	%r10d, -364(%rbp)       # 4-byte Spill
	callq	gimp_pixel_rgn_init
	xorl	%esi, %esi
	movq	-16(%rbp), %rdi
	callq	gimp_pixel_fetcher_new
	leaq	-136(%rbp), %rdi
	movq	%rax, -96(%rbp)
	callq	gimp_context_get_background
	leaq	-136(%rbp), %rsi
	movq	-96(%rbp), %rdi
	movl	%eax, -368(%rbp)        # 4-byte Spill
	callq	gimp_pixel_fetcher_set_bg_color
	movl	$1, %edi
	leaq	-88(%rbp), %rsi
	movsd	.LCPI9_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI9_1, %xmm1         # xmm1 = mem[0],zero
	movl	$0, -212(%rbp)
	movl	-36(%rbp), %eax
	imull	-40(%rbp), %eax
	movl	%eax, -216(%rbp)
	cvtsi2sdl	mbvals+8, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	movsd	%xmm2, -256(%rbp)
	movb	$0, %al
	callq	gimp_pixel_rgns_register
	movq	%rax, -104(%rbp)
	movl	$0, -236(%rbp)
.LBB9_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_3 Depth 2
                                        #       Child Loop BB9_5 Depth 3
                                        #         Child Loop BB9_21 Depth 4
                                        #         Child Loop BB9_28 Depth 4
                                        #           Child Loop BB9_37 Depth 5
                                        #           Child Loop BB9_44 Depth 5
                                        #           Child Loop BB9_49 Depth 5
                                        #         Child Loop BB9_60 Depth 4
                                        #         Child Loop BB9_66 Depth 4
	cmpq	$0, -104(%rbp)
	je	.LBB9_82
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-88(%rbp), %rax
	movq	%rax, -160(%rbp)
	movl	-60(%rbp), %ecx
	movl	%ecx, -228(%rbp)
.LBB9_3:                                # %for.cond.8
                                        #   Parent Loop BB9_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_5 Depth 3
                                        #         Child Loop BB9_21 Depth 4
                                        #         Child Loop BB9_28 Depth 4
                                        #           Child Loop BB9_37 Depth 5
                                        #           Child Loop BB9_44 Depth 5
                                        #           Child Loop BB9_49 Depth 5
                                        #         Child Loop BB9_60 Depth 4
                                        #         Child Loop BB9_66 Depth 4
	movl	-228(%rbp), %eax
	movl	-60(%rbp), %ecx
	addl	-52(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB9_75
# BB#4:                                 # %for.body.12
                                        #   in Loop: Header=BB9_3 Depth=2
	movq	-160(%rbp), %rax
	movq	%rax, -168(%rbp)
	movl	-64(%rbp), %ecx
	movl	%ecx, -224(%rbp)
.LBB9_5:                                # %for.cond.14
                                        #   Parent Loop BB9_1 Depth=1
                                        #     Parent Loop BB9_3 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB9_21 Depth 4
                                        #         Child Loop BB9_28 Depth 4
                                        #           Child Loop BB9_37 Depth 5
                                        #           Child Loop BB9_44 Depth 5
                                        #           Child Loop BB9_49 Depth 5
                                        #         Child Loop BB9_60 Depth 4
                                        #         Child Loop BB9_66 Depth 4
	movl	-224(%rbp), %eax
	movl	-64(%rbp), %ecx
	addl	-56(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB9_73
# BB#6:                                 # %for.body.19
                                        #   in Loop: Header=BB9_5 Depth=3
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -344(%rbp)
	movsd	%xmm0, -352(%rbp)
	cvtsi2sdl	-224(%rbp), %xmm1
	subsd	-144(%rbp), %xmm1
	movsd	%xmm1, -280(%rbp)
	cvtsi2sdl	-228(%rbp), %xmm1
	subsd	-152(%rbp), %xmm1
	movsd	%xmm1, -288(%rbp)
	movsd	-280(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-280(%rbp), %xmm1
	movsd	-288(%rbp), %xmm2       # xmm2 = mem[0],zero
	mulsd	-288(%rbp), %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm0, -376(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	sqrt
	movsd	%xmm0, -272(%rbp)
	movsd	-272(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-256(%rbp), %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -240(%rbp)
	movsd	-256(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-376(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jne	.LBB9_8
	jp	.LBB9_8
# BB#7:                                 # %if.then
                                        #   in Loop: Header=BB9_5 Depth=3
	movq	-96(%rbp), %rdi
	movl	-224(%rbp), %esi
	movl	-228(%rbp), %edx
	movq	-168(%rbp), %rcx
	callq	gimp_pixel_fetcher_get_pixel
	movl	-72(%rbp), %edx
	movq	-168(%rbp), %rcx
	movslq	%edx, %rdi
	addq	%rdi, %rcx
	movq	%rcx, -168(%rbp)
	jmp	.LBB9_72
.LBB9_8:                                # %if.end
                                        #   in Loop: Header=BB9_5 Depth=3
	cmpl	$3, -240(%rbp)
	jge	.LBB9_10
# BB#9:                                 # %if.then.33
                                        #   in Loop: Header=BB9_5 Depth=3
	movl	$3, -240(%rbp)
.LBB9_10:                               # %if.end.34
                                        #   in Loop: Header=BB9_5 Depth=3
	cmpl	$100, -240(%rbp)
	jle	.LBB9_12
# BB#11:                                # %if.then.37
                                        #   in Loop: Header=BB9_5 Depth=3
	movsd	.LCPI9_2, %xmm0         # xmm0 = mem[0],zero
	movl	-240(%rbp), %eax
	subl	$100, %eax
	cvtsi2sdl	%eax, %xmm1
	movsd	%xmm0, -384(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	sqrt
	movsd	-384(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, -240(%rbp)
.LBB9_12:                               # %if.end.43
                                        #   in Loop: Header=BB9_5 Depth=3
	xorps	%xmm0, %xmm0
	movsd	-280(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB9_13
	jp	.LBB9_13
	jmp	.LBB9_16
.LBB9_13:                               # %if.then.46
                                        #   in Loop: Header=BB9_5 Depth=3
	movsd	-288(%rbp), %xmm0       # xmm0 = mem[0],zero
	divsd	-280(%rbp), %xmm0
	callq	atan
	xorps	%xmm1, %xmm1
	movsd	%xmm0, -296(%rbp)
	ucomisd	-280(%rbp), %xmm1
	jbe	.LBB9_15
# BB#14:                                # %if.then.51
                                        #   in Loop: Header=BB9_5 Depth=3
	movsd	.LCPI9_5, %xmm0         # xmm0 = mem[0],zero
	addsd	-296(%rbp), %xmm0
	movsd	%xmm0, -296(%rbp)
.LBB9_15:                               # %if.end.53
                                        #   in Loop: Header=BB9_5 Depth=3
	jmp	.LBB9_20
.LBB9_16:                               # %if.else
                                        #   in Loop: Header=BB9_5 Depth=3
	xorps	%xmm0, %xmm0
	movsd	-288(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB9_18
# BB#17:                                # %if.then.56
                                        #   in Loop: Header=BB9_5 Depth=3
	movsd	.LCPI9_4, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -296(%rbp)
	jmp	.LBB9_19
.LBB9_18:                               # %if.else.57
                                        #   in Loop: Header=BB9_5 Depth=3
	movsd	.LCPI9_3, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -296(%rbp)
.LBB9_19:                               # %if.end.58
                                        #   in Loop: Header=BB9_5 Depth=3
	jmp	.LBB9_20
.LBB9_20:                               # %if.end.59
                                        #   in Loop: Header=BB9_5 Depth=3
	movl	$0, -220(%rbp)
.LBB9_21:                               # %for.cond.60
                                        #   Parent Loop BB9_1 Depth=1
                                        #     Parent Loop BB9_3 Depth=2
                                        #       Parent Loop BB9_5 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	-220(%rbp), %eax
	cmpl	img_bpp, %eax
	jge	.LBB9_24
# BB#22:                                # %for.body.63
                                        #   in Loop: Header=BB9_21 Depth=4
	movslq	-220(%rbp), %rax
	movl	$0, -208(%rbp,%rax,4)
# BB#23:                                # %for.inc
                                        #   in Loop: Header=BB9_21 Depth=4
	movl	-220(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -220(%rbp)
	jmp	.LBB9_21
.LBB9_24:                               # %for.end
                                        #   in Loop: Header=BB9_5 Depth=3
	cmpl	$1, -240(%rbp)
	jne	.LBB9_26
# BB#25:                                # %if.then.66
                                        #   in Loop: Header=BB9_5 Depth=3
	movsd	-296(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -304(%rbp)
	jmp	.LBB9_27
.LBB9_26:                               # %if.else.67
                                        #   in Loop: Header=BB9_5 Depth=3
	movsd	.LCPI9_6, %xmm0         # xmm0 = mem[0],zero
	movsd	-296(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-256(%rbp), %xmm2       # xmm2 = mem[0],zero
	divsd	%xmm0, %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm1, -304(%rbp)
.LBB9_27:                               # %if.end.70
                                        #   in Loop: Header=BB9_5 Depth=3
	movsd	-256(%rbp), %xmm0       # xmm0 = mem[0],zero
	cvtsi2sdl	-240(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -264(%rbp)
	movl	$0, -244(%rbp)
	movl	$0, -232(%rbp)
.LBB9_28:                               # %for.cond.73
                                        #   Parent Loop BB9_1 Depth=1
                                        #     Parent Loop BB9_3 Depth=2
                                        #       Parent Loop BB9_5 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB9_37 Depth 5
                                        #           Child Loop BB9_44 Depth 5
                                        #           Child Loop BB9_49 Depth 5
	movl	-232(%rbp), %eax
	cmpl	-240(%rbp), %eax
	jge	.LBB9_55
# BB#29:                                # %for.body.76
                                        #   in Loop: Header=BB9_28 Depth=4
	movsd	-304(%rbp), %xmm0       # xmm0 = mem[0],zero
	cvtsi2sdl	-232(%rbp), %xmm1
	mulsd	-264(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	callq	sin
	movsd	%xmm0, -312(%rbp)
	movsd	-304(%rbp), %xmm0       # xmm0 = mem[0],zero
	cvtsi2sdl	-232(%rbp), %xmm1
	mulsd	-264(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	callq	cos
	movsd	%xmm0, -320(%rbp)
	movsd	-144(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-272(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-320(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -344(%rbp)
	movsd	-152(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-272(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-312(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -352(%rbp)
	movsd	-352(%rbp), %xmm0       # xmm0 = mem[0],zero
	cvtsi2sdl	-32(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	ja	.LBB9_33
# BB#30:                                # %lor.lhs.false
                                        #   in Loop: Header=BB9_28 Depth=4
	movsd	-352(%rbp), %xmm0       # xmm0 = mem[0],zero
	movl	-32(%rbp), %eax
	addl	-40(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	ucomisd	%xmm1, %xmm0
	jae	.LBB9_33
# BB#31:                                # %lor.lhs.false.96
                                        #   in Loop: Header=BB9_28 Depth=4
	movsd	-344(%rbp), %xmm0       # xmm0 = mem[0],zero
	cvtsi2sdl	-28(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	ja	.LBB9_33
# BB#32:                                # %lor.lhs.false.100
                                        #   in Loop: Header=BB9_28 Depth=4
	movsd	-344(%rbp), %xmm0       # xmm0 = mem[0],zero
	movl	-28(%rbp), %eax
	addl	-36(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	ucomisd	%xmm1, %xmm0
	jb	.LBB9_34
.LBB9_33:                               # %if.then.105
                                        #   in Loop: Header=BB9_28 Depth=4
	jmp	.LBB9_54
.LBB9_34:                               # %if.end.106
                                        #   in Loop: Header=BB9_28 Depth=4
	movsd	.LCPI9_7, %xmm0         # xmm0 = mem[0],zero
	movl	-244(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -244(%rbp)
	addsd	-344(%rbp), %xmm0
	movl	-28(%rbp), %eax
	addl	-36(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB9_41
# BB#35:                                # %land.lhs.true
                                        #   in Loop: Header=BB9_28 Depth=4
	movsd	.LCPI9_7, %xmm0         # xmm0 = mem[0],zero
	addsd	-352(%rbp), %xmm0
	movl	-32(%rbp), %eax
	addl	-40(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB9_41
# BB#36:                                # %if.then.118
                                        #   in Loop: Header=BB9_28 Depth=4
	leaq	-176(%rbp), %rcx
	movsd	-344(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-344(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	%xmm0, -392(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movq	%rcx, -400(%rbp)        # 8-byte Spill
	callq	floor
	movsd	-392(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -328(%rbp)
	movsd	-352(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-352(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	%xmm0, -408(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	floor
	movsd	-408(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -336(%rbp)
	movq	-96(%rbp), %rdi
	cvttsd2si	-344(%rbp), %esi
	cvttsd2si	-352(%rbp), %edx
	movq	-400(%rbp), %rcx        # 8-byte Reload
	callq	gimp_pixel_fetcher_get_pixel
	leaq	-180(%rbp), %rcx
	movsd	.LCPI9_7, %xmm0         # xmm0 = mem[0],zero
	movq	-96(%rbp), %rdi
	addsd	-344(%rbp), %xmm0
	cvttsd2si	%xmm0, %esi
	cvttsd2si	-352(%rbp), %edx
	callq	gimp_pixel_fetcher_get_pixel
	leaq	-184(%rbp), %rcx
	movsd	.LCPI9_7, %xmm0         # xmm0 = mem[0],zero
	movq	-96(%rbp), %rdi
	cvttsd2si	-344(%rbp), %esi
	addsd	-352(%rbp), %xmm0
	cvttsd2si	%xmm0, %edx
	callq	gimp_pixel_fetcher_get_pixel
	leaq	-188(%rbp), %rcx
	movsd	.LCPI9_7, %xmm0         # xmm0 = mem[0],zero
	movq	-96(%rbp), %rdi
	movaps	%xmm0, %xmm1
	addsd	-344(%rbp), %xmm1
	cvttsd2si	%xmm1, %esi
	addsd	-352(%rbp), %xmm0
	cvttsd2si	%xmm0, %edx
	callq	gimp_pixel_fetcher_get_pixel
	movl	$0, -220(%rbp)
.LBB9_37:                               # %for.cond.138
                                        #   Parent Loop BB9_1 Depth=1
                                        #     Parent Loop BB9_3 Depth=2
                                        #       Parent Loop BB9_5 Depth=3
                                        #         Parent Loop BB9_28 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	movl	-220(%rbp), %eax
	cmpl	img_bpp, %eax
	jge	.LBB9_40
# BB#38:                                # %for.body.141
                                        #   in Loop: Header=BB9_37 Depth=5
	movslq	-220(%rbp), %rax
	movzbl	-176(%rbp,%rax), %ecx
	cvtsi2sdl	%ecx, %xmm0
	movsd	-328(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	.LCPI9_7(%rip), %xmm2   # xmm2 = mem[0],zero
	movaps	%xmm2, %xmm3
	subsd	%xmm1, %xmm3
	mulsd	%xmm3, %xmm0
	movzbl	-180(%rbp,%rax), %ecx
	cvtsi2sdl	%ecx, %xmm4
	mulsd	%xmm1, %xmm4
	addsd	%xmm4, %xmm0
	movsd	-336(%rbp), %xmm4       # xmm4 = mem[0],zero
	subsd	%xmm4, %xmm2
	mulsd	%xmm2, %xmm0
	movzbl	-184(%rbp,%rax), %ecx
	cvtsi2sdl	%ecx, %xmm2
	mulsd	%xmm3, %xmm2
	movzbl	-188(%rbp,%rax), %ecx
	cvtsi2sdl	%ecx, %xmm3
	mulsd	%xmm1, %xmm3
	addsd	%xmm3, %xmm2
	mulsd	%xmm4, %xmm2
	addsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %ecx
	movb	%cl, %dl
	movslq	-220(%rbp), %rax
	movb	%dl, -172(%rbp,%rax)
# BB#39:                                # %for.inc.169
                                        #   in Loop: Header=BB9_37 Depth=5
	movl	-220(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -220(%rbp)
	jmp	.LBB9_37
.LBB9_40:                               # %for.end.171
                                        #   in Loop: Header=BB9_28 Depth=4
	jmp	.LBB9_42
.LBB9_41:                               # %if.else.172
                                        #   in Loop: Header=BB9_28 Depth=4
	leaq	-172(%rbp), %rcx
	movsd	.LCPI9_8, %xmm0         # xmm0 = mem[0],zero
	movq	-96(%rbp), %rdi
	movaps	%xmm0, %xmm1
	addsd	-344(%rbp), %xmm1
	cvttsd2si	%xmm1, %esi
	addsd	-352(%rbp), %xmm0
	cvttsd2si	%xmm0, %edx
	callq	gimp_pixel_fetcher_get_pixel
.LBB9_42:                               # %if.end.178
                                        #   in Loop: Header=BB9_28 Depth=4
	cmpl	$0, has_alpha
	je	.LBB9_48
# BB#43:                                # %if.then.179
                                        #   in Loop: Header=BB9_28 Depth=4
	movl	img_bpp, %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movzbl	-172(%rbp,%rcx), %eax
	movl	%eax, -356(%rbp)
	movl	-356(%rbp), %eax
	movl	img_bpp, %edx
	subl	$1, %edx
	movslq	%edx, %rcx
	addl	-208(%rbp,%rcx,4), %eax
	movl	%eax, -208(%rbp,%rcx,4)
	movl	$0, -220(%rbp)
.LBB9_44:                               # %for.cond.188
                                        #   Parent Loop BB9_1 Depth=1
                                        #     Parent Loop BB9_3 Depth=2
                                        #       Parent Loop BB9_5 Depth=3
                                        #         Parent Loop BB9_28 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	movl	-220(%rbp), %eax
	movl	img_bpp, %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB9_47
# BB#45:                                # %for.body.192
                                        #   in Loop: Header=BB9_44 Depth=5
	movslq	-220(%rbp), %rax
	movzbl	-172(%rbp,%rax), %ecx
	imull	-356(%rbp), %ecx
	movslq	-220(%rbp), %rax
	addl	-208(%rbp,%rax,4), %ecx
	movl	%ecx, -208(%rbp,%rax,4)
# BB#46:                                # %for.inc.200
                                        #   in Loop: Header=BB9_44 Depth=5
	movl	-220(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -220(%rbp)
	jmp	.LBB9_44
.LBB9_47:                               # %for.end.202
                                        #   in Loop: Header=BB9_28 Depth=4
	jmp	.LBB9_53
.LBB9_48:                               # %if.else.203
                                        #   in Loop: Header=BB9_28 Depth=4
	movl	$0, -220(%rbp)
.LBB9_49:                               # %for.cond.204
                                        #   Parent Loop BB9_1 Depth=1
                                        #     Parent Loop BB9_3 Depth=2
                                        #       Parent Loop BB9_5 Depth=3
                                        #         Parent Loop BB9_28 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	movl	-220(%rbp), %eax
	cmpl	img_bpp, %eax
	jge	.LBB9_52
# BB#50:                                # %for.body.207
                                        #   in Loop: Header=BB9_49 Depth=5
	movslq	-220(%rbp), %rax
	movzbl	-172(%rbp,%rax), %ecx
	movslq	-220(%rbp), %rax
	addl	-208(%rbp,%rax,4), %ecx
	movl	%ecx, -208(%rbp,%rax,4)
# BB#51:                                # %for.inc.214
                                        #   in Loop: Header=BB9_49 Depth=5
	movl	-220(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -220(%rbp)
	jmp	.LBB9_49
.LBB9_52:                               # %for.end.216
                                        #   in Loop: Header=BB9_28 Depth=4
	jmp	.LBB9_53
.LBB9_53:                               # %if.end.217
                                        #   in Loop: Header=BB9_28 Depth=4
	jmp	.LBB9_54
.LBB9_54:                               # %for.inc.218
                                        #   in Loop: Header=BB9_28 Depth=4
	movl	-232(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -232(%rbp)
	jmp	.LBB9_28
.LBB9_55:                               # %for.end.220
                                        #   in Loop: Header=BB9_5 Depth=3
	cmpl	$0, -244(%rbp)
	jne	.LBB9_57
# BB#56:                                # %if.then.223
                                        #   in Loop: Header=BB9_5 Depth=3
	movq	-96(%rbp), %rdi
	cvttsd2si	-344(%rbp), %esi
	cvttsd2si	-352(%rbp), %edx
	movq	-168(%rbp), %rcx
	callq	gimp_pixel_fetcher_get_pixel
	jmp	.LBB9_71
.LBB9_57:                               # %if.else.226
                                        #   in Loop: Header=BB9_5 Depth=3
	cmpl	$0, has_alpha
	je	.LBB9_65
# BB#58:                                # %if.then.228
                                        #   in Loop: Header=BB9_5 Depth=3
	movl	img_bpp, %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movl	-208(%rbp,%rcx,4), %eax
	movl	%eax, -360(%rbp)
	movl	-360(%rbp), %eax
	cltd
	idivl	-244(%rbp)
	movb	%al, %sil
	movl	img_bpp, %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-168(%rbp), %rdi
	movb	%sil, (%rdi,%rcx)
	movzbl	%sil, %eax
	cmpl	$0, %eax
	je	.LBB9_64
# BB#59:                                # %if.then.241
                                        #   in Loop: Header=BB9_5 Depth=3
	movl	$0, -220(%rbp)
.LBB9_60:                               # %for.cond.242
                                        #   Parent Loop BB9_1 Depth=1
                                        #     Parent Loop BB9_3 Depth=2
                                        #       Parent Loop BB9_5 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	-220(%rbp), %eax
	movl	img_bpp, %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB9_63
# BB#61:                                # %for.body.246
                                        #   in Loop: Header=BB9_60 Depth=4
	movslq	-220(%rbp), %rax
	movl	-208(%rbp,%rax,4), %eax
	cltd
	idivl	-360(%rbp)
	movb	%al, %cl
	movslq	-220(%rbp), %rsi
	movq	-168(%rbp), %rdi
	movb	%cl, (%rdi,%rsi)
# BB#62:                                # %for.inc.253
                                        #   in Loop: Header=BB9_60 Depth=4
	movl	-220(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -220(%rbp)
	jmp	.LBB9_60
.LBB9_63:                               # %for.end.255
                                        #   in Loop: Header=BB9_5 Depth=3
	jmp	.LBB9_64
.LBB9_64:                               # %if.end.256
                                        #   in Loop: Header=BB9_5 Depth=3
	jmp	.LBB9_70
.LBB9_65:                               # %if.else.257
                                        #   in Loop: Header=BB9_5 Depth=3
	movl	$0, -220(%rbp)
.LBB9_66:                               # %for.cond.258
                                        #   Parent Loop BB9_1 Depth=1
                                        #     Parent Loop BB9_3 Depth=2
                                        #       Parent Loop BB9_5 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	-220(%rbp), %eax
	cmpl	img_bpp, %eax
	jge	.LBB9_69
# BB#67:                                # %for.body.261
                                        #   in Loop: Header=BB9_66 Depth=4
	movslq	-220(%rbp), %rax
	movl	-208(%rbp,%rax,4), %eax
	cltd
	idivl	-244(%rbp)
	movb	%al, %cl
	movslq	-220(%rbp), %rsi
	movq	-168(%rbp), %rdi
	movb	%cl, (%rdi,%rsi)
# BB#68:                                # %for.inc.268
                                        #   in Loop: Header=BB9_66 Depth=4
	movl	-220(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -220(%rbp)
	jmp	.LBB9_66
.LBB9_69:                               # %for.end.270
                                        #   in Loop: Header=BB9_5 Depth=3
	jmp	.LBB9_70
.LBB9_70:                               # %if.end.271
                                        #   in Loop: Header=BB9_5 Depth=3
	jmp	.LBB9_71
.LBB9_71:                               # %if.end.272
                                        #   in Loop: Header=BB9_5 Depth=3
	movl	-72(%rbp), %eax
	movq	-168(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -168(%rbp)
.LBB9_72:                               # %for.inc.276
                                        #   in Loop: Header=BB9_5 Depth=3
	movl	-224(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -224(%rbp)
	jmp	.LBB9_5
.LBB9_73:                               # %for.end.278
                                        #   in Loop: Header=BB9_3 Depth=2
	movl	-68(%rbp), %eax
	movq	-160(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -160(%rbp)
# BB#74:                                # %for.inc.281
                                        #   in Loop: Header=BB9_3 Depth=2
	movl	-228(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -228(%rbp)
	jmp	.LBB9_3
.LBB9_75:                               # %for.end.283
                                        #   in Loop: Header=BB9_1 Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB9_77
# BB#76:                                # %if.then.285
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	gimp_drawable_preview_get_type
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-88(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_drawable_preview_draw_region
	jmp	.LBB9_80
.LBB9_77:                               # %if.else.288
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	$8, %eax
	movl	-56(%rbp), %ecx
	imull	-52(%rbp), %ecx
	addl	-212(%rbp), %ecx
	movl	%ecx, -212(%rbp)
	movl	-236(%rbp), %ecx
	movl	%eax, -420(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-420(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB9_79
# BB#78:                                # %if.then.295
                                        #   in Loop: Header=BB9_1 Depth=1
	cvtsi2sdl	-212(%rbp), %xmm0
	cvtsi2sdl	-216(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -424(%rbp)        # 4-byte Spill
.LBB9_79:                               # %if.end.300
                                        #   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_80
.LBB9_80:                               # %if.end.301
                                        #   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_81
.LBB9_81:                               # %for.inc.302
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-104(%rbp), %rdi
	callq	gimp_pixel_rgns_process
	movq	%rax, -104(%rbp)
	movl	-236(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -236(%rbp)
	jmp	.LBB9_1
.LBB9_82:                               # %for.end.305
	movq	-96(%rbp), %rdi
	callq	gimp_pixel_fetcher_destroy
	addq	$440, %rsp              # imm = 0x1B8
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end9:
	.size	mblur_radial, .Lfunc_end9-mblur_radial
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI10_0:
	.quad	4643211215818981376     # double 256
.LCPI10_1:
	.quad	4607182418800017408     # double 1
.LCPI10_2:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	mblur_zoom,@function
mblur_zoom:                             # @mblur_zoom
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp42:
	.cfi_def_cfa_offset 16
.Ltmp43:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp44:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$480, %rsp              # imm = 0x1E0
.Ltmp45:
	.cfi_offset %rbx, -48
.Ltmp46:
	.cfi_offset %r12, -40
.Ltmp47:
	.cfi_offset %r14, -32
.Ltmp48:
	.cfi_offset %r15, -24
	leaq	-364(%rbp), %rax
	leaq	-368(%rbp), %r10
	leaq	-372(%rbp), %r11
	leaq	-376(%rbp), %rbx
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movl	%ecx, -56(%rbp)
	movl	%r8d, -60(%rbp)
	movl	%r9d, -64(%rbp)
	movsd	mbvals+16, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -168(%rbp)
	movsd	mbvals+24, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -176(%rbp)
	movq	-40(%rbp), %rsi
	movl	(%rsi), %edi
	movq	%rax, %rsi
	movq	%r10, %rdx
	movq	%r11, %rcx
	movq	%rbx, %r8
	callq	gimp_drawable_mask_bounds
	leaq	-112(%rbp), %rdi
	movl	$1, %r9d
	movq	-40(%rbp), %rsi
	movl	-52(%rbp), %edx
	movl	-56(%rbp), %ecx
	movl	-60(%rbp), %r8d
	movl	-64(%rbp), %r14d
	cmpq	$0, -48(%rbp)
	sete	%r15b
	andb	$1, %r15b
	movzbl	%r15b, %r12d
	movl	%r9d, -404(%rbp)        # 4-byte Spill
	movl	%r14d, %r9d
	movl	%r12d, (%rsp)
	movl	$1, 8(%rsp)
	movl	%eax, -408(%rbp)        # 4-byte Spill
	callq	gimp_pixel_rgn_init
	xorl	%esi, %esi
	movq	-40(%rbp), %rdi
	callq	gimp_pixel_fetcher_new
	leaq	-160(%rbp), %rdi
	movq	%rax, -120(%rbp)
	callq	gimp_context_get_background
	leaq	-160(%rbp), %rsi
	movq	-120(%rbp), %rdi
	movl	%eax, -412(%rbp)        # 4-byte Spill
	callq	gimp_pixel_fetcher_set_bg_color
	movl	$0, -244(%rbp)
	movl	-60(%rbp), %eax
	imull	-64(%rbp), %eax
	movl	%eax, -248(%rbp)
	movl	mbvals+4, %eax
	movl	%eax, -264(%rbp)
	cmpl	$0, -264(%rbp)
	jne	.LBB10_2
# BB#1:                                 # %if.then
	movl	$1, -264(%rbp)
.LBB10_2:                               # %if.end
	movl	$1, %edi
	leaq	-112(%rbp), %rsi
	movsd	.LCPI10_0, %xmm0        # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movl	4(%rax), %ecx
	movl	8(%rax), %edx
	shrl	%ecx
	imull	%ecx, %ecx
	shrl	%edx
	imull	%edx, %edx
	addl	%edx, %ecx
	movl	%ecx, %eax
	cvtsi2sdq	%rax, %xmm1
	movsd	%xmm0, -424(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movl	%edi, -428(%rbp)        # 4-byte Spill
	movq	%rsi, -440(%rbp)        # 8-byte Spill
	callq	sqrt
	movsd	%xmm0, -360(%rbp)
	cvtsi2sdl	-264(%rbp), %xmm0
	mulsd	-360(%rbp), %xmm0
	movsd	-424(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, -264(%rbp)
	movsd	-360(%rbp), %xmm0       # xmm0 = mem[0],zero
	cvtsi2sdl	-264(%rbp), %xmm2
	subsd	%xmm2, %xmm0
	divsd	-360(%rbp), %xmm0
	movsd	%xmm0, -352(%rbp)
	movl	-428(%rbp), %edi        # 4-byte Reload
	movq	-440(%rbp), %rsi        # 8-byte Reload
	movb	$0, %al
	callq	gimp_pixel_rgns_register
	movq	%rax, -128(%rbp)
	movl	$0, -268(%rbp)
.LBB10_3:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_5 Depth 2
                                        #       Child Loop BB10_7 Depth 3
                                        #         Child Loop BB10_9 Depth 4
                                        #         Child Loop BB10_18 Depth 4
                                        #           Child Loop BB10_27 Depth 5
                                        #           Child Loop BB10_34 Depth 5
                                        #           Child Loop BB10_39 Depth 5
                                        #         Child Loop BB10_50 Depth 4
                                        #         Child Loop BB10_56 Depth 4
	cmpq	$0, -128(%rbp)
	je	.LBB10_72
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB10_3 Depth=1
	movq	-112(%rbp), %rax
	movq	%rax, -184(%rbp)
	movl	-84(%rbp), %ecx
	movl	%ecx, -256(%rbp)
.LBB10_5:                               # %for.cond.26
                                        #   Parent Loop BB10_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB10_7 Depth 3
                                        #         Child Loop BB10_9 Depth 4
                                        #         Child Loop BB10_18 Depth 4
                                        #           Child Loop BB10_27 Depth 5
                                        #           Child Loop BB10_34 Depth 5
                                        #           Child Loop BB10_39 Depth 5
                                        #         Child Loop BB10_50 Depth 4
                                        #         Child Loop BB10_56 Depth 4
	movl	-256(%rbp), %eax
	movl	-84(%rbp), %ecx
	addl	-76(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB10_65
# BB#6:                                 # %for.body.31
                                        #   in Loop: Header=BB10_5 Depth=2
	movq	-184(%rbp), %rax
	movq	%rax, -192(%rbp)
	movl	-88(%rbp), %ecx
	movl	%ecx, -252(%rbp)
.LBB10_7:                               # %for.cond.33
                                        #   Parent Loop BB10_3 Depth=1
                                        #     Parent Loop BB10_5 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB10_9 Depth 4
                                        #         Child Loop BB10_18 Depth 4
                                        #           Child Loop BB10_27 Depth 5
                                        #           Child Loop BB10_34 Depth 5
                                        #           Child Loop BB10_39 Depth 5
                                        #         Child Loop BB10_50 Depth 4
                                        #         Child Loop BB10_56 Depth 4
	movl	-252(%rbp), %eax
	movl	-88(%rbp), %ecx
	addl	-80(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB10_63
# BB#8:                                 # %for.body.38
                                        #   in Loop: Header=BB10_7 Depth=3
	movl	$0, -272(%rbp)
.LBB10_9:                               # %for.cond.39
                                        #   Parent Loop BB10_3 Depth=1
                                        #     Parent Loop BB10_5 Depth=2
                                        #       Parent Loop BB10_7 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	-272(%rbp), %eax
	cmpl	img_bpp, %eax
	jge	.LBB10_12
# BB#10:                                # %for.body.42
                                        #   in Loop: Header=BB10_9 Depth=4
	movslq	-272(%rbp), %rax
	movl	$0, -240(%rbp,%rax,4)
# BB#11:                                # %for.inc
                                        #   in Loop: Header=BB10_9 Depth=4
	movl	-272(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -272(%rbp)
	jmp	.LBB10_9
.LBB10_12:                              # %for.end
                                        #   in Loop: Header=BB10_7 Depth=3
	cvtsi2sdl	-252(%rbp), %xmm0
	movsd	%xmm0, -280(%rbp)
	cvtsi2sdl	-256(%rbp), %xmm0
	movsd	%xmm0, -296(%rbp)
	cmpl	$0, mbvals+32
	je	.LBB10_14
# BB#13:                                # %if.then.45
                                        #   in Loop: Header=BB10_7 Depth=3
	movsd	-168(%rbp), %xmm0       # xmm0 = mem[0],zero
	cvtsi2sdl	-252(%rbp), %xmm1
	subsd	-168(%rbp), %xmm1
	mulsd	-352(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -288(%rbp)
	movsd	-176(%rbp), %xmm0       # xmm0 = mem[0],zero
	cvtsi2sdl	-256(%rbp), %xmm1
	subsd	-176(%rbp), %xmm1
	mulsd	-352(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -304(%rbp)
	jmp	.LBB10_15
.LBB10_14:                              # %if.else
                                        #   in Loop: Header=BB10_7 Depth=3
	movsd	.LCPI10_1, %xmm0        # xmm0 = mem[0],zero
	movsd	-168(%rbp), %xmm1       # xmm1 = mem[0],zero
	cvtsi2sdl	-252(%rbp), %xmm2
	subsd	-168(%rbp), %xmm2
	movaps	%xmm0, %xmm3
	divsd	-352(%rbp), %xmm3
	mulsd	%xmm3, %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm1, -288(%rbp)
	movsd	-176(%rbp), %xmm1       # xmm1 = mem[0],zero
	cvtsi2sdl	-256(%rbp), %xmm2
	subsd	-176(%rbp), %xmm2
	divsd	-352(%rbp), %xmm0
	mulsd	%xmm0, %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm1, -304(%rbp)
.LBB10_15:                              # %if.end.64
                                        #   in Loop: Header=BB10_7 Depth=3
	movsd	.LCPI10_1, %xmm0        # xmm0 = mem[0],zero
	movsd	-288(%rbp), %xmm1       # xmm1 = mem[0],zero
	subsd	-280(%rbp), %xmm1
	movsd	-288(%rbp), %xmm2       # xmm2 = mem[0],zero
	subsd	-280(%rbp), %xmm2
	mulsd	%xmm2, %xmm1
	movsd	-304(%rbp), %xmm2       # xmm2 = mem[0],zero
	subsd	-296(%rbp), %xmm2
	movsd	-304(%rbp), %xmm3       # xmm3 = mem[0],zero
	subsd	-296(%rbp), %xmm3
	mulsd	%xmm3, %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm0, -448(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	sqrt
	movsd	-448(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -340(%rbp)
	cmpl	$3, -340(%rbp)
	jge	.LBB10_17
# BB#16:                                # %if.then.77
                                        #   in Loop: Header=BB10_7 Depth=3
	movl	$3, -340(%rbp)
.LBB10_17:                              # %if.end.78
                                        #   in Loop: Header=BB10_7 Depth=3
	movsd	-288(%rbp), %xmm0       # xmm0 = mem[0],zero
	subsd	-280(%rbp), %xmm0
	cvtsi2sdl	-340(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -312(%rbp)
	movsd	-304(%rbp), %xmm0       # xmm0 = mem[0],zero
	subsd	-296(%rbp), %xmm0
	cvtsi2sdl	-340(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -320(%rbp)
	movsd	-280(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -384(%rbp)
	movsd	-296(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -392(%rbp)
	movl	$0, -260(%rbp)
.LBB10_18:                              # %for.cond.85
                                        #   Parent Loop BB10_3 Depth=1
                                        #     Parent Loop BB10_5 Depth=2
                                        #       Parent Loop BB10_7 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB10_27 Depth 5
                                        #           Child Loop BB10_34 Depth 5
                                        #           Child Loop BB10_39 Depth 5
	movl	-260(%rbp), %eax
	cmpl	-340(%rbp), %eax
	jge	.LBB10_45
# BB#19:                                # %for.body.88
                                        #   in Loop: Header=BB10_18 Depth=4
	movsd	-392(%rbp), %xmm0       # xmm0 = mem[0],zero
	cvtsi2sdl	-368(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	ja	.LBB10_23
# BB#20:                                # %lor.lhs.false
                                        #   in Loop: Header=BB10_18 Depth=4
	movsd	-392(%rbp), %xmm0       # xmm0 = mem[0],zero
	cvtsi2sdl	-376(%rbp), %xmm1
	ucomisd	%xmm1, %xmm0
	jae	.LBB10_23
# BB#21:                                # %lor.lhs.false.95
                                        #   in Loop: Header=BB10_18 Depth=4
	movsd	-384(%rbp), %xmm0       # xmm0 = mem[0],zero
	cvtsi2sdl	-364(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	ja	.LBB10_23
# BB#22:                                # %lor.lhs.false.99
                                        #   in Loop: Header=BB10_18 Depth=4
	movsd	-384(%rbp), %xmm0       # xmm0 = mem[0],zero
	cvtsi2sdl	-372(%rbp), %xmm1
	ucomisd	%xmm1, %xmm0
	jb	.LBB10_24
.LBB10_23:                              # %if.then.103
                                        #   in Loop: Header=BB10_7 Depth=3
	jmp	.LBB10_45
.LBB10_24:                              # %if.end.104
                                        #   in Loop: Header=BB10_18 Depth=4
	movsd	.LCPI10_1, %xmm0        # xmm0 = mem[0],zero
	addsd	-384(%rbp), %xmm0
	cvtsi2sdl	-372(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB10_31
# BB#25:                                # %land.lhs.true
                                        #   in Loop: Header=BB10_18 Depth=4
	movsd	.LCPI10_1, %xmm0        # xmm0 = mem[0],zero
	addsd	-392(%rbp), %xmm0
	cvtsi2sdl	-376(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB10_31
# BB#26:                                # %if.then.113
                                        #   in Loop: Header=BB10_18 Depth=4
	leaq	-200(%rbp), %rcx
	movsd	-384(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-384(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	%xmm0, -456(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movq	%rcx, -464(%rbp)        # 8-byte Spill
	callq	floor
	movsd	-456(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -328(%rbp)
	movsd	-392(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-392(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	%xmm0, -472(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	floor
	movsd	-472(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -336(%rbp)
	movq	-120(%rbp), %rdi
	cvttsd2si	-384(%rbp), %esi
	cvttsd2si	-392(%rbp), %edx
	movq	-464(%rbp), %rcx        # 8-byte Reload
	callq	gimp_pixel_fetcher_get_pixel
	leaq	-204(%rbp), %rcx
	movsd	.LCPI10_1, %xmm0        # xmm0 = mem[0],zero
	movq	-120(%rbp), %rdi
	addsd	-384(%rbp), %xmm0
	cvttsd2si	%xmm0, %esi
	cvttsd2si	-392(%rbp), %edx
	callq	gimp_pixel_fetcher_get_pixel
	leaq	-208(%rbp), %rcx
	movsd	.LCPI10_1, %xmm0        # xmm0 = mem[0],zero
	movq	-120(%rbp), %rdi
	cvttsd2si	-384(%rbp), %esi
	addsd	-392(%rbp), %xmm0
	cvttsd2si	%xmm0, %edx
	callq	gimp_pixel_fetcher_get_pixel
	leaq	-212(%rbp), %rcx
	movsd	.LCPI10_1, %xmm0        # xmm0 = mem[0],zero
	movq	-120(%rbp), %rdi
	movaps	%xmm0, %xmm1
	addsd	-384(%rbp), %xmm1
	cvttsd2si	%xmm1, %esi
	addsd	-392(%rbp), %xmm0
	cvttsd2si	%xmm0, %edx
	callq	gimp_pixel_fetcher_get_pixel
	movl	$0, -272(%rbp)
.LBB10_27:                              # %for.cond.133
                                        #   Parent Loop BB10_3 Depth=1
                                        #     Parent Loop BB10_5 Depth=2
                                        #       Parent Loop BB10_7 Depth=3
                                        #         Parent Loop BB10_18 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	movl	-272(%rbp), %eax
	cmpl	img_bpp, %eax
	jge	.LBB10_30
# BB#28:                                # %for.body.136
                                        #   in Loop: Header=BB10_27 Depth=5
	movslq	-272(%rbp), %rax
	movzbl	-200(%rbp,%rax), %ecx
	cvtsi2sdl	%ecx, %xmm0
	movsd	-328(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	.LCPI10_1(%rip), %xmm2  # xmm2 = mem[0],zero
	movaps	%xmm2, %xmm3
	subsd	%xmm1, %xmm3
	mulsd	%xmm3, %xmm0
	movzbl	-204(%rbp,%rax), %ecx
	cvtsi2sdl	%ecx, %xmm4
	mulsd	%xmm1, %xmm4
	addsd	%xmm4, %xmm0
	movsd	-336(%rbp), %xmm4       # xmm4 = mem[0],zero
	subsd	%xmm4, %xmm2
	mulsd	%xmm2, %xmm0
	movzbl	-208(%rbp,%rax), %ecx
	cvtsi2sdl	%ecx, %xmm2
	mulsd	%xmm3, %xmm2
	movzbl	-212(%rbp,%rax), %ecx
	cvtsi2sdl	%ecx, %xmm3
	mulsd	%xmm1, %xmm3
	addsd	%xmm3, %xmm2
	mulsd	%xmm4, %xmm2
	addsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %ecx
	movb	%cl, %dl
	movslq	-272(%rbp), %rax
	movb	%dl, -196(%rbp,%rax)
# BB#29:                                # %for.inc.164
                                        #   in Loop: Header=BB10_27 Depth=5
	movl	-272(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -272(%rbp)
	jmp	.LBB10_27
.LBB10_30:                              # %for.end.166
                                        #   in Loop: Header=BB10_18 Depth=4
	jmp	.LBB10_32
.LBB10_31:                              # %if.else.167
                                        #   in Loop: Header=BB10_18 Depth=4
	leaq	-196(%rbp), %rcx
	movsd	.LCPI10_2, %xmm0        # xmm0 = mem[0],zero
	movq	-120(%rbp), %rdi
	movaps	%xmm0, %xmm1
	addsd	-384(%rbp), %xmm1
	cvttsd2si	%xmm1, %esi
	addsd	-392(%rbp), %xmm0
	cvttsd2si	%xmm0, %edx
	callq	gimp_pixel_fetcher_get_pixel
.LBB10_32:                              # %if.end.173
                                        #   in Loop: Header=BB10_18 Depth=4
	cmpl	$0, has_alpha
	je	.LBB10_38
# BB#33:                                # %if.then.175
                                        #   in Loop: Header=BB10_18 Depth=4
	movl	img_bpp, %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movzbl	-196(%rbp,%rcx), %eax
	movl	%eax, -396(%rbp)
	movl	-396(%rbp), %eax
	movl	img_bpp, %edx
	subl	$1, %edx
	movslq	%edx, %rcx
	addl	-240(%rbp,%rcx,4), %eax
	movl	%eax, -240(%rbp,%rcx,4)
	movl	$0, -272(%rbp)
.LBB10_34:                              # %for.cond.184
                                        #   Parent Loop BB10_3 Depth=1
                                        #     Parent Loop BB10_5 Depth=2
                                        #       Parent Loop BB10_7 Depth=3
                                        #         Parent Loop BB10_18 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	movl	-272(%rbp), %eax
	movl	img_bpp, %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB10_37
# BB#35:                                # %for.body.188
                                        #   in Loop: Header=BB10_34 Depth=5
	movslq	-272(%rbp), %rax
	movzbl	-196(%rbp,%rax), %ecx
	imull	-396(%rbp), %ecx
	movslq	-272(%rbp), %rax
	addl	-240(%rbp,%rax,4), %ecx
	movl	%ecx, -240(%rbp,%rax,4)
# BB#36:                                # %for.inc.196
                                        #   in Loop: Header=BB10_34 Depth=5
	movl	-272(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -272(%rbp)
	jmp	.LBB10_34
.LBB10_37:                              # %for.end.198
                                        #   in Loop: Header=BB10_18 Depth=4
	jmp	.LBB10_43
.LBB10_38:                              # %if.else.199
                                        #   in Loop: Header=BB10_18 Depth=4
	movl	$0, -272(%rbp)
.LBB10_39:                              # %for.cond.200
                                        #   Parent Loop BB10_3 Depth=1
                                        #     Parent Loop BB10_5 Depth=2
                                        #       Parent Loop BB10_7 Depth=3
                                        #         Parent Loop BB10_18 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	movl	-272(%rbp), %eax
	cmpl	img_bpp, %eax
	jge	.LBB10_42
# BB#40:                                # %for.body.203
                                        #   in Loop: Header=BB10_39 Depth=5
	movslq	-272(%rbp), %rax
	movzbl	-196(%rbp,%rax), %ecx
	movslq	-272(%rbp), %rax
	addl	-240(%rbp,%rax,4), %ecx
	movl	%ecx, -240(%rbp,%rax,4)
# BB#41:                                # %for.inc.210
                                        #   in Loop: Header=BB10_39 Depth=5
	movl	-272(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -272(%rbp)
	jmp	.LBB10_39
.LBB10_42:                              # %for.end.212
                                        #   in Loop: Header=BB10_18 Depth=4
	jmp	.LBB10_43
.LBB10_43:                              # %if.end.213
                                        #   in Loop: Header=BB10_18 Depth=4
	movsd	-312(%rbp), %xmm0       # xmm0 = mem[0],zero
	addsd	-384(%rbp), %xmm0
	movsd	%xmm0, -384(%rbp)
	movsd	-320(%rbp), %xmm0       # xmm0 = mem[0],zero
	addsd	-392(%rbp), %xmm0
	movsd	%xmm0, -392(%rbp)
# BB#44:                                # %for.inc.216
                                        #   in Loop: Header=BB10_18 Depth=4
	movl	-260(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -260(%rbp)
	jmp	.LBB10_18
.LBB10_45:                              # %for.end.218
                                        #   in Loop: Header=BB10_7 Depth=3
	cmpl	$0, -260(%rbp)
	jne	.LBB10_47
# BB#46:                                # %if.then.221
                                        #   in Loop: Header=BB10_7 Depth=3
	movq	-120(%rbp), %rdi
	cvttsd2si	-384(%rbp), %esi
	cvttsd2si	-392(%rbp), %edx
	movq	-192(%rbp), %rcx
	callq	gimp_pixel_fetcher_get_pixel
	jmp	.LBB10_61
.LBB10_47:                              # %if.else.224
                                        #   in Loop: Header=BB10_7 Depth=3
	cmpl	$0, has_alpha
	je	.LBB10_55
# BB#48:                                # %if.then.226
                                        #   in Loop: Header=BB10_7 Depth=3
	movl	img_bpp, %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movl	-240(%rbp,%rcx,4), %eax
	movl	%eax, -400(%rbp)
	movl	-400(%rbp), %eax
	cltd
	idivl	-260(%rbp)
	movb	%al, %sil
	movl	img_bpp, %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-192(%rbp), %rdi
	movb	%sil, (%rdi,%rcx)
	movzbl	%sil, %eax
	cmpl	$0, %eax
	je	.LBB10_54
# BB#49:                                # %if.then.239
                                        #   in Loop: Header=BB10_7 Depth=3
	movl	$0, -272(%rbp)
.LBB10_50:                              # %for.cond.240
                                        #   Parent Loop BB10_3 Depth=1
                                        #     Parent Loop BB10_5 Depth=2
                                        #       Parent Loop BB10_7 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	-272(%rbp), %eax
	movl	img_bpp, %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB10_53
# BB#51:                                # %for.body.244
                                        #   in Loop: Header=BB10_50 Depth=4
	movslq	-272(%rbp), %rax
	movl	-240(%rbp,%rax,4), %eax
	cltd
	idivl	-400(%rbp)
	movb	%al, %cl
	movslq	-272(%rbp), %rsi
	movq	-192(%rbp), %rdi
	movb	%cl, (%rdi,%rsi)
# BB#52:                                # %for.inc.251
                                        #   in Loop: Header=BB10_50 Depth=4
	movl	-272(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -272(%rbp)
	jmp	.LBB10_50
.LBB10_53:                              # %for.end.253
                                        #   in Loop: Header=BB10_7 Depth=3
	jmp	.LBB10_54
.LBB10_54:                              # %if.end.254
                                        #   in Loop: Header=BB10_7 Depth=3
	jmp	.LBB10_60
.LBB10_55:                              # %if.else.255
                                        #   in Loop: Header=BB10_7 Depth=3
	movl	$0, -272(%rbp)
.LBB10_56:                              # %for.cond.256
                                        #   Parent Loop BB10_3 Depth=1
                                        #     Parent Loop BB10_5 Depth=2
                                        #       Parent Loop BB10_7 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	-272(%rbp), %eax
	cmpl	img_bpp, %eax
	jge	.LBB10_59
# BB#57:                                # %for.body.259
                                        #   in Loop: Header=BB10_56 Depth=4
	movslq	-272(%rbp), %rax
	movl	-240(%rbp,%rax,4), %eax
	cltd
	idivl	-260(%rbp)
	movb	%al, %cl
	movslq	-272(%rbp), %rsi
	movq	-192(%rbp), %rdi
	movb	%cl, (%rdi,%rsi)
# BB#58:                                # %for.inc.266
                                        #   in Loop: Header=BB10_56 Depth=4
	movl	-272(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -272(%rbp)
	jmp	.LBB10_56
.LBB10_59:                              # %for.end.268
                                        #   in Loop: Header=BB10_7 Depth=3
	jmp	.LBB10_60
.LBB10_60:                              # %if.end.269
                                        #   in Loop: Header=BB10_7 Depth=3
	jmp	.LBB10_61
.LBB10_61:                              # %if.end.270
                                        #   in Loop: Header=BB10_7 Depth=3
	movl	-96(%rbp), %eax
	movq	-192(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -192(%rbp)
# BB#62:                                # %for.inc.271
                                        #   in Loop: Header=BB10_7 Depth=3
	movl	-252(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -252(%rbp)
	jmp	.LBB10_7
.LBB10_63:                              # %for.end.273
                                        #   in Loop: Header=BB10_5 Depth=2
	movl	-92(%rbp), %eax
	movq	-184(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -184(%rbp)
# BB#64:                                # %for.inc.276
                                        #   in Loop: Header=BB10_5 Depth=2
	movl	-256(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -256(%rbp)
	jmp	.LBB10_5
.LBB10_65:                              # %for.end.278
                                        #   in Loop: Header=BB10_3 Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB10_67
# BB#66:                                # %if.then.280
                                        #   in Loop: Header=BB10_3 Depth=1
	movq	-48(%rbp), %rax
	movq	%rax, -480(%rbp)        # 8-byte Spill
	callq	gimp_drawable_preview_get_type
	movq	-480(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-112(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_drawable_preview_draw_region
	jmp	.LBB10_70
.LBB10_67:                              # %if.else.283
                                        #   in Loop: Header=BB10_3 Depth=1
	movl	$8, %eax
	movl	-80(%rbp), %ecx
	imull	-76(%rbp), %ecx
	addl	-244(%rbp), %ecx
	movl	%ecx, -244(%rbp)
	movl	-268(%rbp), %ecx
	movl	%eax, -484(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-484(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB10_69
# BB#68:                                # %if.then.290
                                        #   in Loop: Header=BB10_3 Depth=1
	cvtsi2sdl	-244(%rbp), %xmm0
	cvtsi2sdl	-248(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -488(%rbp)        # 4-byte Spill
.LBB10_69:                              # %if.end.295
                                        #   in Loop: Header=BB10_3 Depth=1
	jmp	.LBB10_70
.LBB10_70:                              # %if.end.296
                                        #   in Loop: Header=BB10_3 Depth=1
	jmp	.LBB10_71
.LBB10_71:                              # %for.inc.297
                                        #   in Loop: Header=BB10_3 Depth=1
	movq	-128(%rbp), %rdi
	callq	gimp_pixel_rgns_process
	movq	%rax, -128(%rbp)
	movl	-268(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -268(%rbp)
	jmp	.LBB10_3
.LBB10_72:                              # %for.end.300
	movq	-120(%rbp), %rdi
	callq	gimp_pixel_fetcher_destroy
	addq	$480, %rsp              # imm = 0x1E0
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end10:
	.size	mblur_zoom, .Lfunc_end10-mblur_zoom
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
	.long	0                       # 0x0
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
	.size	query.args, 192

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
	.asciz	"type"
	.size	.L.str.6, 5

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Type of motion blur { LINEAR (0), RADIAL (1), ZOOM (2) }"
	.size	.L.str.7, 57

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"length"
	.size	.L.str.8, 7

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Length"
	.size	.L.str.9, 7

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"angle"
	.size	.L.str.10, 6

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Angle"
	.size	.L.str.11, 6

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"center-x"
	.size	.L.str.12, 9

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Center X (optional)"
	.size	.L.str.13, 20

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"center-y"
	.size	.L.str.14, 9

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Center Y (optional)"
	.size	.L.str.15, 20

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"plug-in-mblur"
	.size	.L.str.16, 14

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Simulate movement using directional blur"
	.size	.L.str.17, 41

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"This plug-in simulates the effect seen when photographing a moving object at a slow shutter speed. Done by adding multiple displaced copies."
	.size	.L.str.18, 141

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Torsten Martinsen, Federico Mena Quintero, Daniel Skarda, Joerg Gittinger"
	.size	.L.str.19, 74

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"May 2007, 1.3"
	.size	.L.str.20, 14

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"_Motion Blur..."
	.size	.L.str.21, 16

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"RGB*, GRAY*"
	.size	.L.str.22, 12

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"plug-in-mblur-inward"
	.size	.L.str.23, 21

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"This procedure is equivalent to plug-in-mblur but performs the zoom blur inward instead of outward."
	.size	.L.str.24, 100

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"<Image>/Filters/Blur"
	.size	.L.str.25, 21

	.type	run.values,@object      # @run.values
	.local	run.values
	.comm	run.values,40,16
	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"gimp20-std-plug-ins"
	.size	.L.str.26, 20

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"UTF-8"
	.size	.L.str.27, 6

	.type	img_width,@object       # @img_width
	.local	img_width
	.comm	img_width,4,4
	.type	img_height,@object      # @img_height
	.local	img_height
	.comm	img_height,4,4
	.type	img_bpp,@object         # @img_bpp
	.local	img_bpp
	.comm	img_bpp,4,4
	.type	mbvals,@object          # @mbvals
	.data
	.align	8
mbvals:
	.long	0                       # 0x0
	.long	5                       # 0x5
	.long	10                      # 0xa
	.zero	4
	.quad	4681608360884174848     # double 1.0E+5
	.quad	4681608360884174848     # double 1.0E+5
	.long	1                       # 0x1
	.zero	4
	.size	mbvals, 40

	.type	has_alpha,@object       # @has_alpha
	.local	has_alpha
	.comm	has_alpha,4,4
	.type	.L.str.28,@object       # @.str.28
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.28:
	.asciz	"blur-motion"
	.size	.L.str.28, 12

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"Motion Blur"
	.size	.L.str.29, 12

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"gimp-blur-motion"
	.size	.L.str.30, 17

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"gtk-cancel"
	.size	.L.str.31, 11

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"gtk-ok"
	.size	.L.str.32, 7

	.type	preview,@object         # @preview
	.local	preview
	.comm	preview,8,8
	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"invalidated"
	.size	.L.str.33, 12

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"Blur Type"
	.size	.L.str.34, 10

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"blur-type\004_Linear"
	.size	.L.str.35, 18

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"blur-type\004_Radial"
	.size	.L.str.36, 18

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"blur-type\004_Zoom"
	.size	.L.str.37, 16

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"Blur Center"
	.size	.L.str.38, 12

	.type	center,@object          # @center
	.local	center
	.comm	center,8,8
	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"%a"
	.size	.L.str.39, 3

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"value-changed"
	.size	.L.str.40, 14

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"_X:"
	.size	.L.str.41, 4

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"_Y:"
	.size	.L.str.42, 4

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"Blur _outward"
	.size	.L.str.43, 14

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"toggled"
	.size	.L.str.44, 8

	.type	dir_button,@object      # @dir_button
	.local	dir_button
	.comm	dir_button,8,8
	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"Blur Parameters"
	.size	.L.str.45, 16

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"L_ength:"
	.size	.L.str.46, 9

	.type	length,@object          # @length
	.local	length
	.comm	length,8,8
	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"_Angle:"
	.size	.L.str.47, 8

	.type	angle,@object           # @angle
	.local	angle
	.comm	angle,8,8
	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"Motion blurring"
	.size	.L.str.48, 16


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
