	.text
	.file	"sinus.bc"
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
	movabsq	$.L.str.32, %rdi
	movabsq	$.L.str.33, %rsi
	movabsq	$.L.str.34, %rdx
	movabsq	$.L.str.35, %rax
	movabsq	$.L.str.36, %r9
	movabsq	$.L.str.37, %rcx
	movabsq	$.L.str.38, %r8
	movl	$1, %r10d
	movl	$16, %r11d
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
	movl	$16, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%r14, 40(%rsp)
	movq	$0, 48(%rsp)
	movq	%r12, -64(%rbp)         # 8-byte Spill
	movl	%ebx, -68(%rbp)         # 4-byte Spill
	movl	%r10d, -72(%rbp)        # 4-byte Spill
	movl	%r11d, -76(%rbp)        # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.32, %rdi
	movabsq	$.L.str.39, %rsi
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
	movabsq	$run.values, %rax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	$3, -48(%rbp)
	movq	-24(%rbp), %rcx
	movl	8(%rcx), %esi
	movl	%esi, -44(%rbp)
	movq	-32(%rbp), %rcx
	movl	$1, (%rcx)
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	$21, run.values
	movl	-48(%rbp), %esi
	movl	%esi, run.values+8
# BB#1:                                 # %do.body
	callq	gimp_locale_directory
	movabsq	$.L.str.40, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.40, %rdi
	movabsq	$.L.str.41, %rsi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.40, %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	textdomain
	movq	%rax, -72(%rbp)         # 8-byte Spill
# BB#2:                                 # %do.end
	movl	-44(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
	je	.LBB1_3
	jmp	.LBB1_27
.LBB1_27:                               # %do.end
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -80(%rbp)         # 4-byte Spill
	je	.LBB1_6
	jmp	.LBB1_28
.LBB1_28:                               # %do.end
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	je	.LBB1_12
	jmp	.LBB1_15
.LBB1_3:                                # %sw.bb
	movabsq	$.L.str.32, %rdi
	movabsq	$svals, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movq	-24(%rbp), %rsi
	movl	88(%rsi), %edi
	movl	%eax, -88(%rbp)         # 4-byte Spill
	callq	gimp_drawable_get
	movq	%rax, drawable
	movq	drawable, %rdi
	callq	mw_preview_build_virgin
	movq	%rax, thePreview
	movq	drawable, %rax
	movl	(%rax), %edi
	callq	gimp_drawable_is_gray
	movl	%eax, drawable_is_grayscale
	callq	sinus_dialog
	cmpl	$0, %eax
	jne	.LBB1_5
# BB#4:                                 # %if.then
	jmp	.LBB1_26
.LBB1_5:                                # %if.end
	jmp	.LBB1_16
.LBB1_6:                                # %sw.bb.11
	cmpl	$17, -12(%rbp)
	je	.LBB1_8
# BB#7:                                 # %if.then.12
	movl	$1, -48(%rbp)
	jmp	.LBB1_11
.LBB1_8:                                # %if.else
	movabsq	$svals, %rax
	addq	$64, %rax
	movq	-24(%rbp), %rcx
	movsd	128(%rcx), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, svals
	movq	-24(%rbp), %rcx
	movsd	168(%rcx), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, svals+8
	movq	-24(%rbp), %rcx
	movsd	208(%rcx), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, svals+16
	movq	-24(%rbp), %rcx
	movl	248(%rcx), %edx
	movl	%edx, svals+32
	movq	-24(%rbp), %rcx
	movl	288(%rcx), %edx
	movl	%edx, svals+36
	movq	-24(%rbp), %rcx
	movslq	328(%rcx), %rcx
	movq	%rcx, svals+40
	movq	-24(%rbp), %rcx
	movslq	368(%rcx), %rcx
	movq	%rcx, svals+56
	movq	-24(%rbp), %rcx
	movq	408(%rcx), %rsi
	movq	%rsi, svals+64
	movq	416(%rcx), %rsi
	movq	%rsi, svals+72
	movq	424(%rcx), %rsi
	movq	%rsi, svals+80
	movq	432(%rcx), %rcx
	movq	%rcx, svals+88
	movq	-24(%rbp), %rcx
	movq	448(%rcx), %rsi
	movq	%rsi, svals+96
	movq	456(%rcx), %rsi
	movq	%rsi, svals+104
	movq	464(%rcx), %rsi
	movq	%rsi, svals+112
	movq	472(%rcx), %rcx
	movq	%rcx, svals+120
	movq	-24(%rbp), %rcx
	movsd	488(%rcx), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	gimp_rgb_set_alpha
	movabsq	$svals, %rax
	addq	$96, %rax
	movq	-24(%rbp), %rcx
	movsd	528(%rcx), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	gimp_rgb_set_alpha
	movq	-24(%rbp), %rax
	movslq	568(%rax), %rax
	movq	%rax, svals+48
	movq	-24(%rbp), %rax
	movsd	608(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, svals+24
	cmpl	$0, svals+128
	je	.LBB1_10
# BB#9:                                 # %if.then.53
	callq	g_random_int
	movl	%eax, svals+32
.LBB1_10:                               # %if.end.55
	jmp	.LBB1_11
.LBB1_11:                               # %if.end.56
	jmp	.LBB1_16
.LBB1_12:                               # %sw.bb.57
	movabsq	$.L.str.32, %rdi
	movabsq	$svals, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	cmpl	$0, svals+128
	movl	%eax, -92(%rbp)         # 4-byte Spill
	je	.LBB1_14
# BB#13:                                # %if.then.60
	callq	g_random_int
	movl	%eax, svals+32
.LBB1_14:                               # %if.end.62
	jmp	.LBB1_16
.LBB1_15:                               # %sw.default
	jmp	.LBB1_16
.LBB1_16:                               # %sw.epilog
	movq	-24(%rbp), %rax
	movl	88(%rax), %edi
	callq	gimp_drawable_get
	movq	%rax, drawable
	cmpl	$3, -48(%rbp)
	jne	.LBB1_24
# BB#17:                                # %land.lhs.true
	movq	drawable, %rax
	movl	(%rax), %edi
	callq	gimp_drawable_is_rgb
	cmpl	$0, %eax
	jne	.LBB1_19
# BB#18:                                # %lor.lhs.false
	movq	drawable, %rax
	movl	(%rax), %edi
	callq	gimp_drawable_is_gray
	cmpl	$0, %eax
	je	.LBB1_24
.LBB1_19:                               # %if.then.75
	movabsq	$.L.str.42, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_progress_init
	movl	$1, %ecx
	movl	%ecx, %edi
	movl	%eax, -96(%rbp)         # 4-byte Spill
	callq	gimp_tile_cache_ntiles
	callq	sinus
	cmpl	$1, -44(%rbp)
	je	.LBB1_21
# BB#20:                                # %if.then.80
	callq	gimp_displays_flush
	movl	%eax, -100(%rbp)        # 4-byte Spill
.LBB1_21:                               # %if.end.82
	cmpl	$0, -44(%rbp)
	jne	.LBB1_23
# BB#22:                                # %if.then.85
	movabsq	$.L.str.32, %rdi
	movabsq	$svals, %rax
	movl	$136, %edx
	movq	%rax, %rsi
	callq	gimp_procedural_db_set_data
	movl	%eax, -104(%rbp)        # 4-byte Spill
.LBB1_23:                               # %if.end.87
	jmp	.LBB1_25
.LBB1_24:                               # %if.else.88
	movl	$0, -48(%rbp)
.LBB1_25:                               # %if.end.89
	movl	-48(%rbp), %eax
	movl	%eax, run.values+8
	movq	drawable, %rdi
	callq	gimp_drawable_detach
.LBB1_26:                               # %return
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
	.quad	4636737291354636288     # double 100
	.text
	.align	16, 0x90
	.type	mw_preview_build_virgin,@function
mw_preview_build_virgin:                # @mw_preview_build_virgin
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
	subq	$16, %rsp
	movl	$1, %eax
	movl	%eax, %ecx
	movl	$32, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	%rcx, %rdi
	callq	g_malloc_n
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	4(%rax), %edx
	movq	-8(%rbp), %rax
	cmpl	8(%rax), %edx
	jbe	.LBB3_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movl	4(%rax), %ecx
	movl	%ecx, %eax
	cvtsi2sdq	%rax, %xmm0
	movsd	.LCPI3_0(%rip), %xmm1   # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movq	-16(%rbp), %rax
	movsd	%xmm0, 16(%rax)
	movq	-16(%rbp), %rax
	movl	$100, (%rax)
	movq	-8(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, %eax
	cvtsi2sdq	%rax, %xmm0
	movq	-16(%rbp), %rax
	divsd	16(%rax), %xmm0
	cvttsd2si	%xmm0, %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 4(%rax)
	jmp	.LBB3_3
.LBB3_2:                                # %if.else
	movq	-8(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, %eax
	cvtsi2sdq	%rax, %xmm0
	movsd	.LCPI3_0(%rip), %xmm1   # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movq	-16(%rbp), %rax
	movsd	%xmm0, 16(%rax)
	movq	-16(%rbp), %rax
	movl	$100, 4(%rax)
	movq	-8(%rbp), %rax
	movl	4(%rax), %ecx
	movl	%ecx, %eax
	cvtsi2sdq	%rax, %xmm0
	movq	-16(%rbp), %rax
	divsd	16(%rax), %xmm0
	cvttsd2si	%xmm0, %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, (%rax)
.LBB3_3:                                # %if.end
	movq	-16(%rbp), %rax
	movl	$3, 8(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	mw_preview_build_virgin, .Lfunc_end3-mw_preview_build_virgin
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI4_0:
	.long	1065353216              # float 1
.LCPI4_1:
	.long	1056964608              # float 0.5
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_2:
	.quad	4624633867356078080     # double 15
.LCPI4_3:
	.quad	4576918229304087675     # double 0.01
.LCPI4_4:
	.quad	4617315517961601024     # double 5
.LCPI4_5:
	.quad	4547007122018943789     # double 1.0E-4
.LCPI4_6:
	.quad	4636737291354636288     # double 100
.LCPI4_7:
	.quad	4607182418800017408     # double 1
.LCPI4_8:
	.quad	4591870180066957722     # double 0.10000000000000001
.LCPI4_9:
	.quad	-4603241769126068224    # double -7.5
.LCPI4_10:
	.quad	4620130267728707584     # double 7.5
	.text
	.align	16, 0x90
	.type	sinus_dialog,@function
sinus_dialog:                           # @sinus_dialog
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
	subq	$1368, %rsp             # imm = 0x558
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
	movabsq	$.L.str.43, %rdi
	movl	$1, %esi
	movq	$0, -144(%rbp)
	movq	$0, -152(%rbp)
	callq	gimp_ui_init
	movabsq	$.L.str.44, %rdi
	callq	gettext
	movabsq	$.L.str.45, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	movabsq	$gimp_standard_help_func, %r8
	movabsq	$.L.str.32, %r9
	movabsq	$.L.str.46, %rdi
	movl	$4294967290, %r10d      # imm = 0xFFFFFFFA
	movabsq	$.L.str.47, %r11
	movl	$4294967291, %ebx       # imm = 0xFFFFFFFB
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-176(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$-6, 8(%rsp)
	movq	%r11, 16(%rsp)
	movl	$-5, 24(%rsp)
	movq	$0, 32(%rsp)
	movb	$0, %al
	movl	%ebx, -180(%rbp)        # 4-byte Spill
	movl	%r10d, -184(%rbp)       # 4-byte Spill
	callq	gimp_dialog_new
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	movq	-48(%rbp), %rdi
	movq	%rdi, -200(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_window_set_transient
	xorl	%edi, %edi
	movl	$12, %esi
	callq	gtk_box_new
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-48(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
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
	movl	$1, %edi
	movl	$6, %esi
	callq	gtk_box_new
	movq	%rax, -104(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-104(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -236(%rbp)        # 4-byte Spill
	movl	-236(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-104(%rbp), %rdi
	callq	gtk_widget_show
	movq	-104(%rbp), %rdi
	movq	thePreview, %rsi
	callq	mw_preview_new
	movq	%rax, -64(%rbp)
	callq	gtk_notebook_new
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gtk_notebook_set_tab_pos
	movq	-56(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -260(%rbp)        # 4-byte Spill
	movl	-260(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movl	$1, %edi
	movl	$12, %esi
	callq	gtk_box_new
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movabsq	$.L.str.48, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -284(%rbp)        # 4-byte Spill
	movl	-284(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-88(%rbp), %rdi
	callq	gtk_widget_show
	movl	$3, %ecx
	xorl	%edx, %edx
	movl	%ecx, %edi
	movl	%ecx, %esi
	callq	gtk_table_new
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-128(%rbp), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-88(%rbp), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-128(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-128(%rbp), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.49, %rdi
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	$140, %r8d
	movl	$8, %r9d
	movsd	.LCPI4_5, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI4_6, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI4_4, %xmm4         # xmm4 = mem[0],zero
	movl	$4, %edx
	movl	$1, %r10d
	xorps	%xmm1, %xmm1
	xorl	%ebx, %ebx
	movl	%ebx, %esi
	movsd	svals, %xmm3            # xmm3 = mem[0],zero
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rsi, -336(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movl	%edx, -340(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movq	%rax, %rcx
	movsd	%xmm0, -352(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm0
	movsd	-352(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	%xmm1, -360(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm1
	movl	$4, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-360(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-360(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r10d, -364(%rbp)       # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.50, %rsi
	movabsq	$sinus_double_adjustment_update, %rcx
	movabsq	$svals, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rax
	movq	%rdi, -376(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-376(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-128(%rbp), %rcx
	movq	%rax, -384(%rbp)        # 8-byte Spill
	movq	%rcx, -392(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.51, %rdi
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$1, %edx
	movl	$140, %r8d
	movl	$8, %r9d
	movsd	.LCPI4_5, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI4_6, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI4_4, %xmm4         # xmm4 = mem[0],zero
	movl	$4, %r10d
	xorps	%xmm1, %xmm1
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movsd	svals+8, %xmm3          # xmm3 = mem[0],zero
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	%rcx, -408(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movsd	%xmm0, -416(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm0
	movsd	-416(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	%xmm1, -424(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm1
	movl	$4, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-424(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-424(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r10d, -428(%rbp)       # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.50, %rsi
	movabsq	$sinus_double_adjustment_update, %rcx
	movabsq	$svals, %rdi
	addq	$8, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rax
	movq	%rdi, -440(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-440(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-128(%rbp), %rcx
	movq	%rax, -448(%rbp)        # 8-byte Spill
	movq	%rcx, -456(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-456(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.52, %rdi
	movq	%rax, -464(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$2, %edx
	movl	$140, %r8d
	movl	$8, %r9d
	xorps	%xmm0, %xmm0
	movsd	.LCPI4_2, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI4_3, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI4_4, %xmm4         # xmm4 = mem[0],zero
	movl	$1, %r10d
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movsd	svals+16, %xmm1         # xmm1 = mem[0],zero
	movq	-464(%rbp), %rdi        # 8-byte Reload
	movq	%rcx, -472(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movsd	%xmm0, -480(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-480(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	$2, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-480(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-480(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r10d, -484(%rbp)       # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.50, %rsi
	movabsq	$sinus_double_adjustment_update, %rcx
	movabsq	$svals, %rdi
	addq	$16, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rax
	movq	%rdi, -496(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-496(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-128(%rbp), %rdi
	movq	%rax, -504(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
	movabsq	$.L.str.53, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -512(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-512(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-88(%rbp), %rdi
	callq	gtk_widget_show
	movl	$1, %edi
	movl	$6, %esi
	callq	gtk_box_new
	movq	%rax, -104(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -520(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-520(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-104(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-104(%rbp), %rdi
	callq	gtk_widget_show
	movl	$3, %edi
	movl	$1, %esi
	xorl	%edx, %edx
	callq	gtk_table_new
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -528(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-528(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-104(%rbp), %rax
	movq	%rax, -536(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-536(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-128(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -540(%rbp)        # 4-byte Spill
	movl	-540(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movabsq	$svals, %rax
	movq	%rax, %rsi
	addq	$32, %rsi
	addq	$128, %rax
	movq	%rsi, %rdi
	movq	%rax, %rsi
	callq	gimp_random_seed_new
	movq	%rax, -120(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -552(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.54, %rdi
	movq	%rax, -560(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movss	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI4_1, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movl	$1, %r9d
	movq	-120(%rbp), %r8
	movq	-560(%rbp), %rdi        # 8-byte Reload
	movl	%ecx, %esi
	movl	%ecx, %edx
	movq	%rax, %rcx
	movl	$1, (%rsp)
	callq	gimp_table_attach_aligned
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -568(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-568(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$80, %edx
	movl	%edx, %esi
	movq	-120(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -576(%rbp)        # 8-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$.L.str.55, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	-576(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_label_set_mnemonic_widget
	movl	$80, %edx
	movl	%edx, %esi
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.55, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -584(%rbp)        # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-584(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_spin_button_get_adjustment
	movabsq	$.L.str.50, %rsi
	movabsq	$sinus_random_update, %rcx
	xorl	%edx, %edx
	movl	%edx, %edi
	xorl	%r9d, %r9d
	movq	%rdi, -592(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-592(%rbp), %rcx        # 8-byte Reload
	movq	-592(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	movq	-128(%rbp), %rdi
	movq	%rax, -600(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
	movabsq	$.L.str.56, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_mnemonic
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -608(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-608(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	svals+36, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-104(%rbp), %rax
	movq	%rax, -616(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-616(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-136(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-136(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.57, %rsi
	movabsq	$sinus_toggle_button_update, %rax
	movabsq	$svals, %rdi
	addq	$36, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-136(%rbp), %r11
	movq	%rdi, -624(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %rdx
	movq	-624(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.58, %rdi
	movq	svals+40, %rcx
	movl	%ecx, %r9d
	movq	%rax, -632(%rbp)        # 8-byte Spill
	movl	%r9d, -636(%rbp)        # 4-byte Spill
	callq	gettext
	movabsq	$.L.str.59, %rdi
	movq	%rax, -648(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%edi, %edi
	xorl	%r9d, %r9d
	movl	%r9d, %esi
	movabsq	$sinus_radio_button_update, %rcx
	movabsq	$svals, %rdx
	addq	$40, %rdx
	movl	$1, %r9d
	movl	%r9d, %r8d
	movq	%rdx, -656(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-656(%rbp), %rcx        # 8-byte Reload
	movl	-636(%rbp), %r9d        # 4-byte Reload
	movq	%r8, -664(%rbp)         # 8-byte Spill
	movl	%r9d, %r8d
	movq	-648(%rbp), %r9         # 8-byte Reload
	movq	$0, (%rsp)
	movq	$0, 8(%rsp)
	movq	%rax, 16(%rsp)
	movq	$1, 24(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 40(%rsp)
	movb	$0, %al
	callq	gimp_int_radio_group_new
	movq	%rax, -112(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -672(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-672(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r8d, %r8d
	movq	-112(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r8d, %edx
	movl	%r8d, %ecx
	callq	gtk_box_pack_start
	movq	-112(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.60, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new_with_mnemonic
	movq	%rax, -96(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -680(%rbp)        # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-680(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-80(%rbp), %rsi
	movq	-96(%rbp), %rdx
	movq	%rax, %rdi
	callq	gtk_notebook_append_page
	movq	-80(%rbp), %rdi
	movl	%eax, -684(%rbp)        # 4-byte Spill
	callq	gtk_widget_show
	movl	$1, %edi
	movl	$12, %esi
	callq	gtk_box_new
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -696(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-696(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	cmpl	$0, drawable_is_grayscale
	je	.LBB4_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.61, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -704(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-704(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -708(%rbp)        # 4-byte Spill
	movl	-708(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-88(%rbp), %rdi
	callq	gtk_widget_show
	movl	$1, %edi
	movl	$6, %esi
	callq	gtk_box_new
	movq	%rax, -104(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -720(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-720(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-104(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-104(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.62, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -728(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-728(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movss	.LCPI4_1, %xmm0         # xmm0 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	movss	%xmm0, -732(%rbp)       # 4-byte Spill
	movss	-732(%rbp), %xmm1       # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	callq	gtk_misc_set_alignment
	movq	-104(%rbp), %rax
	movq	%rax, -744(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-744(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-96(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -748(%rbp)        # 4-byte Spill
	movl	-748(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-96(%rbp), %rdi
	callq	gtk_widget_show
	jmp	.LBB4_3
.LBB4_2:                                # %if.else
	movabsq	$.L.str.61, %rdi
	callq	gettext
	movabsq	$.L.str.63, %rdi
	movq	svals+56, %rcx
	movl	%ecx, %edx
	movq	%rax, -760(%rbp)        # 8-byte Spill
	movl	%edx, -764(%rbp)        # 4-byte Spill
	callq	gettext
	movabsq	$.L.str.64, %rdi
	movq	%rax, -776(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.65, %rdi
	movq	%rax, -784(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$1, %edi
	movabsq	$sinus_radio_button_update, %rcx
	movabsq	$svals, %rsi
	addq	$56, %rsi
	xorl	%edx, %edx
	movl	%edx, %r8d
	movl	$1, %edx
	movl	%edx, %r9d
	movl	$2, %edx
	movl	%edx, %r10d
	movq	-760(%rbp), %r11        # 8-byte Reload
	movq	%rsi, -792(%rbp)        # 8-byte Spill
	movq	%r11, %rsi
	movq	%rcx, %rdx
	movq	-792(%rbp), %rcx        # 8-byte Reload
	movl	-764(%rbp), %ebx        # 4-byte Reload
	movq	%r8, -800(%rbp)         # 8-byte Spill
	movl	%ebx, %r8d
	movq	-776(%rbp), %r14        # 8-byte Reload
	movq	%r9, -808(%rbp)         # 8-byte Spill
	movq	%r14, %r9
	movq	$0, (%rsp)
	movq	$0, 8(%rsp)
	movq	-784(%rbp), %r15        # 8-byte Reload
	movq	%r15, 16(%rsp)
	movq	$1, 24(%rsp)
	movq	$0, 32(%rsp)
	movq	%rax, 40(%rsp)
	movq	$2, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movb	$0, %al
	movq	%r10, -816(%rbp)        # 8-byte Spill
	callq	gimp_int_radio_group_new
	movq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -824(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-824(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r8d, %r8d
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r8d, %edx
	movl	%r8d, %ecx
	callq	gtk_box_pack_start
	movq	-88(%rbp), %rdi
	callq	gtk_widget_show
	movq	-88(%rbp), %rax
	movq	%rax, -832(%rbp)        # 8-byte Spill
	callq	gtk_bin_get_type
	movq	-832(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_bin_get_child
	xorl	%edi, %edi
	movl	$12, %esi
	movq	%rax, -104(%rbp)
	callq	gtk_box_new
	movq	%rax, -120(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -840(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-840(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-120(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -844(%rbp)        # 4-byte Spill
	movl	-844(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movabsq	$.L.str.66, %rdi
	callq	gettext
	movl	$32, %ecx
	movabsq	$svals, %rsi
	addq	$64, %rsi
	movl	$1, %r8d
	movq	%rax, %rdi
	movq	%rsi, -856(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movl	%ecx, %edx
	movq	-856(%rbp), %rcx        # 8-byte Reload
	callq	gimp_color_button_new
	movq	%rax, -144(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -864(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-864(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-144(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -868(%rbp)        # 4-byte Spill
	movl	-868(%rbp), %ecx        # 4-byte Reload
	movl	-868(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-144(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.67, %rsi
	movabsq	$gimp_color_button_get_color, %rax
	movabsq	$svals, %rdi
	addq	$64, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-144(%rbp), %r10
	movq	%rdi, -880(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, %rdx
	movq	-880(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.68, %rdi
	movq	%rax, -888(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$32, %r9d
	movabsq	$svals, %rcx
	addq	$96, %rcx
	movl	$1, %r8d
	movq	%rax, %rdi
	movl	%r9d, %esi
	movl	%r9d, %edx
	callq	gimp_color_button_new
	movq	%rax, -152(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -896(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-896(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-152(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -900(%rbp)        # 4-byte Spill
	movl	-900(%rbp), %ecx        # 4-byte Reload
	movl	-900(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-152(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.67, %rsi
	movabsq	$gimp_color_button_get_color, %rax
	movabsq	$svals, %rdi
	addq	$96, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-152(%rbp), %r10
	movq	%rdi, -912(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, %rdx
	movq	-912(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-120(%rbp), %rdi
	movq	%rax, -920(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
.LBB4_3:                                # %if.end
	movabsq	$.L.str.69, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -928(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-928(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -932(%rbp)        # 4-byte Spill
	movl	-932(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-88(%rbp), %rdi
	callq	gtk_widget_show
	movq	-88(%rbp), %rdi
	movq	drawable, %rax
	movl	(%rax), %ecx
	movq	%rdi, -944(%rbp)        # 8-byte Spill
	movl	%ecx, %edi
	callq	gimp_drawable_has_alpha
	movq	-944(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %esi
	callq	gtk_widget_set_sensitive
	movl	$2, %edi
	movl	$3, %esi
	xorl	%edx, %edx
	callq	gtk_table_new
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -952(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-952(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-128(%rbp), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-960(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-88(%rbp), %rax
	movq	%rax, -968(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-968(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-128(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-128(%rbp), %rax
	movq	%rax, -976(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-976(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.70, %rdi
	movq	%rax, -984(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	xorps	%xmm0, %xmm0
	movsd	.LCPI4_7, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI4_3, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI4_8, %xmm4         # xmm4 = mem[0],zero
	movl	$2, %edx
	movl	$1, %r8d
	xorl	%r9d, %r9d
	movl	%r9d, %esi
	movsd	svals+88, %xmm1         # xmm1 = mem[0],zero
	movq	-984(%rbp), %rdi        # 8-byte Reload
	movq	%rsi, -992(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movl	%edx, -996(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	%ecx, -1000(%rbp)       # 4-byte Spill
	movq	%rax, %rcx
	movl	-1000(%rbp), %r9d       # 4-byte Reload
	movl	%r8d, -1004(%rbp)       # 4-byte Spill
	movl	%r9d, %r8d
	movsd	%xmm0, -1016(%rbp)      # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-1016(%rbp), %xmm1      # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	$2, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-1016(%rbp), %xmm5      # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-1016(%rbp), %xmm6      # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	callq	gimp_scale_entry_new
	movabsq	$.L.str.50, %rsi
	movabsq	$alpha_scale_cb, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rax
	movq	-144(%rbp), %rdi
	movq	%rdi, -1024(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-1024(%rbp), %rcx       # 8-byte Reload
	callq	g_signal_connect_data
	cmpq	$0, -144(%rbp)
	movq	%rax, -1032(%rbp)       # 8-byte Spill
	je	.LBB4_5
# BB#4:                                 # %if.then.154
	movabsq	$.L.str.67, %rsi
	movabsq	$alpha_scale_update, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-144(%rbp), %rdx
	movq	-160(%rbp), %rdi
	movq	%rdi, -1040(%rbp)       # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-1040(%rbp), %rcx       # 8-byte Reload
	callq	g_signal_connect_data
	movq	%rax, -1048(%rbp)       # 8-byte Spill
.LBB4_5:                                # %if.end.156
	movq	-128(%rbp), %rax
	movq	%rax, -1056(%rbp)       # 8-byte Spill
	callq	gtk_table_get_type
	movq	-1056(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.71, %rdi
	movq	%rax, -1064(%rbp)       # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	$1, %edx
	xorps	%xmm0, %xmm0
	movsd	.LCPI4_7, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI4_3, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI4_8, %xmm4         # xmm4 = mem[0],zero
	movl	$2, %r8d
	xorl	%r9d, %r9d
	movl	%r9d, %esi
	movsd	svals+120, %xmm1        # xmm1 = mem[0],zero
	movq	-1064(%rbp), %rdi       # 8-byte Reload
	movq	%rsi, -1072(%rbp)       # 8-byte Spill
	movl	%ecx, %esi
	movl	%ecx, -1076(%rbp)       # 4-byte Spill
	movq	%rax, %rcx
	movl	-1076(%rbp), %r9d       # 4-byte Reload
	movl	%r8d, -1080(%rbp)       # 4-byte Spill
	movl	%r9d, %r8d
	movsd	%xmm0, -1088(%rbp)      # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-1088(%rbp), %xmm1      # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	$2, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-1088(%rbp), %xmm5      # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-1088(%rbp), %xmm6      # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	callq	gimp_scale_entry_new
	movabsq	$.L.str.50, %rsi
	movabsq	$alpha_scale_cb, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rax
	movq	-152(%rbp), %rdi
	movq	%rdi, -1096(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-1096(%rbp), %rcx       # 8-byte Reload
	callq	g_signal_connect_data
	cmpq	$0, -152(%rbp)
	movq	%rax, -1104(%rbp)       # 8-byte Spill
	je	.LBB4_7
# BB#6:                                 # %if.then.163
	movabsq	$.L.str.67, %rsi
	movabsq	$alpha_scale_update, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-152(%rbp), %rdx
	movq	-160(%rbp), %rdi
	movq	%rdi, -1112(%rbp)       # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-1112(%rbp), %rcx       # 8-byte Reload
	callq	g_signal_connect_data
	movq	%rax, -1120(%rbp)       # 8-byte Spill
.LBB4_7:                                # %if.end.165
	movq	-128(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.72, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new_with_mnemonic
	movq	%rax, -96(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -1128(%rbp)       # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-1128(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-80(%rbp), %rsi
	movq	-96(%rbp), %rdx
	movq	%rax, %rdi
	callq	gtk_notebook_append_page
	movq	-80(%rbp), %rdi
	movl	%eax, -1132(%rbp)       # 4-byte Spill
	callq	gtk_widget_show
	movl	$1, %edi
	movl	$12, %esi
	callq	gtk_box_new
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -1144(%rbp)       # 8-byte Spill
	callq	gtk_container_get_type
	movq	-1144(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movabsq	$.L.str.73, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -1152(%rbp)       # 8-byte Spill
	callq	gtk_box_get_type
	movq	-1152(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-88(%rbp), %rdi
	callq	gtk_widget_show
	movl	$1, %edi
	movl	$12, %esi
	callq	gtk_box_new
	movq	%rax, -104(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -1160(%rbp)       # 8-byte Spill
	callq	gtk_container_get_type
	movq	-1160(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-104(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-104(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.74, %rdi
	callq	gettext
	movabsq	$.L.str.75, %rdi
	movq	svals+48, %rsi
	movl	%esi, %ecx
	movq	%rax, -1168(%rbp)       # 8-byte Spill
	movl	%ecx, -1172(%rbp)       # 4-byte Spill
	callq	gettext
	movabsq	$.L.str.76, %rdi
	movq	%rax, -1184(%rbp)       # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.77, %rdi
	movq	%rax, -1192(%rbp)       # 8-byte Spill
	callq	gettext
	movl	$1, %edi
	movabsq	$sinus_radio_button_update, %rsi
	movabsq	$svals, %r9
	addq	$48, %r9
	xorl	%ecx, %ecx
	movl	%ecx, %r10d
	movl	$1, %ecx
	movl	%ecx, %r11d
	movl	$2, %ecx
	movl	%ecx, %ebx
	movq	-1168(%rbp), %r14       # 8-byte Reload
	movq	%rsi, -1200(%rbp)       # 8-byte Spill
	movq	%r14, %rsi
	movq	-1200(%rbp), %rdx       # 8-byte Reload
	movq	%r9, %rcx
	movl	-1172(%rbp), %r8d       # 4-byte Reload
	movq	-1184(%rbp), %r9        # 8-byte Reload
	movq	$0, (%rsp)
	movq	$0, 8(%rsp)
	movq	-1192(%rbp), %r15       # 8-byte Reload
	movq	%r15, 16(%rsp)
	movq	$1, 24(%rsp)
	movq	$0, 32(%rsp)
	movq	%rax, 40(%rsp)
	movq	$2, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movb	$0, %al
	movq	%r10, -1208(%rbp)       # 8-byte Spill
	movq	%rbx, -1216(%rbp)       # 8-byte Spill
	movq	%r11, -1224(%rbp)       # 8-byte Spill
	callq	gimp_int_radio_group_new
	movq	%rax, -88(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -1232(%rbp)       # 8-byte Spill
	callq	gtk_box_get_type
	movq	-1232(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r8d, %r8d
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r8d, %edx
	movl	%r8d, %ecx
	callq	gtk_box_pack_start
	movq	-88(%rbp), %rdi
	callq	gtk_widget_show
	movl	$1, %edi
	movl	$3, %esi
	xorl	%edx, %edx
	callq	gtk_table_new
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -1240(%rbp)       # 8-byte Spill
	callq	gtk_table_get_type
	movq	-1240(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-104(%rbp), %rax
	movq	%rax, -1248(%rbp)       # 8-byte Spill
	callq	gtk_box_get_type
	movq	-1248(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-128(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-128(%rbp), %rax
	movq	%rax, -1256(%rbp)       # 8-byte Spill
	callq	gtk_table_get_type
	movq	-1256(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.78, %rdi
	movq	%rax, -1264(%rbp)       # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movsd	.LCPI4_9, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI4_10, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI4_3, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI4_4, %xmm4         # xmm4 = mem[0],zero
	movl	$2, %edx
	movl	$1, %r8d
	xorps	%xmm0, %xmm0
	xorl	%r12d, %r12d
	movl	%r12d, %esi
	movsd	svals+24, %xmm5         # xmm5 = mem[0],zero
	movq	-1264(%rbp), %rdi       # 8-byte Reload
	movq	%rsi, -1272(%rbp)       # 8-byte Spill
	movl	%ecx, %esi
	movl	%edx, -1276(%rbp)       # 4-byte Spill
	movl	%ecx, %edx
	movl	%ecx, -1280(%rbp)       # 4-byte Spill
	movq	%rax, %rcx
	movl	-1280(%rbp), %r12d      # 4-byte Reload
	movl	%r8d, -1284(%rbp)       # 4-byte Spill
	movl	%r12d, %r8d
	movl	%r12d, %r9d
	movsd	%xmm0, -1296(%rbp)      # 8-byte Spill
	movaps	%xmm5, %xmm0
	movl	$2, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-1296(%rbp), %xmm5      # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-1296(%rbp), %xmm6      # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	callq	gimp_scale_entry_new
	movabsq	$.L.str.50, %rsi
	movabsq	$sinus_double_adjustment_update, %rcx
	movabsq	$svals, %rdi
	addq	$24, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rax
	movq	%rdi, -1304(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-1304(%rbp), %rcx       # 8-byte Reload
	callq	g_signal_connect_data
	movq	-128(%rbp), %rdi
	movq	%rax, -1312(%rbp)       # 8-byte Spill
	callq	gtk_widget_show
	movabsq	$.L.str.79, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new_with_mnemonic
	movq	%rax, -96(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -1320(%rbp)       # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-1320(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-80(%rbp), %rsi
	movq	-96(%rbp), %rdx
	movq	%rax, %rdi
	callq	gtk_notebook_append_page
	movq	-80(%rbp), %rdi
	movl	%eax, -1324(%rbp)       # 4-byte Spill
	callq	gtk_widget_show
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movq	-64(%rbp), %rdi
	callq	sinus_do_preview
	movq	-48(%rbp), %rcx
	movq	%rcx, -1336(%rbp)       # 8-byte Spill
	callq	gimp_dialog_get_type
	movq	-1336(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dialog_run
	cmpl	$-5, %eax
	sete	%r13b
	andb	$1, %r13b
	movzbl	%r13b, %eax
	movl	%eax, -164(%rbp)
	movq	-48(%rbp), %rdi
	callq	gtk_widget_destroy
	movl	-164(%rbp), %eax
	addq	$1368, %rsp             # imm = 0x558
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	sinus_dialog, .Lfunc_end4-sinus_dialog
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	sinus,@function
sinus:                                  # @sinus
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
	pushq	%r14
	pushq	%rbx
	subq	$368, %rsp              # imm = 0x170
.Ltmp28:
	.cfi_offset %rbx, -32
.Ltmp29:
	.cfi_offset %r14, -24
	leaq	-128(%rbp), %rdi
	callq	prepare_coef
	leaq	-188(%rbp), %rsi
	leaq	-192(%rbp), %rdx
	leaq	-196(%rbp), %rcx
	leaq	-200(%rbp), %r8
	movq	drawable, %rdi
	movl	(%rdi), %edi
	callq	gimp_drawable_mask_bounds
	leaq	-184(%rbp), %rdi
	movl	$1, %r9d
	movq	drawable, %rcx
	movl	4(%rcx), %r10d
	movl	%r10d, -124(%rbp)
	movq	drawable, %rcx
	movl	8(%rcx), %r10d
	movl	%r10d, -128(%rbp)
	movq	drawable, %rcx
	movl	12(%rcx), %r10d
	movl	%r10d, -132(%rbp)
	movq	drawable, %rsi
	movl	-188(%rbp), %edx
	movl	-192(%rbp), %ecx
	movl	-196(%rbp), %r10d
	subl	-188(%rbp), %r10d
	movl	-200(%rbp), %r11d
	subl	-192(%rbp), %r11d
	movl	%r10d, %r8d
	movl	%r9d, -220(%rbp)        # 4-byte Spill
	movl	%r11d, %r9d
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	movl	%eax, -224(%rbp)        # 4-byte Spill
	callq	gimp_pixel_rgn_init
	movl	$1, %edi
	leaq	-184(%rbp), %rsi
	movl	$0, -212(%rbp)
	movl	-196(%rbp), %eax
	subl	-188(%rbp), %eax
	movl	-200(%rbp), %ecx
	subl	-192(%rbp), %ecx
	imull	%ecx, %eax
	movl	%eax, -216(%rbp)
	movb	$0, %al
	callq	gimp_pixel_rgns_register
	movq	%rax, -208(%rbp)
.LBB5_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -208(%rbp)
	je	.LBB5_9
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	-132(%rbp), %eax
	decl	%eax
	movl	%eax, %ecx
	subl	$3, %eax
	movq	%rcx, -232(%rbp)        # 8-byte Spill
	movl	%eax, -236(%rbp)        # 4-byte Spill
	ja	.LBB5_7
# BB#10:                                # %for.body
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-232(%rbp), %rax        # 8-byte Reload
	movq	.LJTI5_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB5_3:                                # %sw.bb
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	$4, %eax
	movabsq	$assign_block_4, %rcx
	leaq	-128(%rbp), %rdx
	movq	-184(%rbp), %rdi
	movl	-164(%rbp), %esi
	movl	-160(%rbp), %r8d
	movl	-156(%rbp), %r9d
	movl	-152(%rbp), %r10d
	movl	-148(%rbp), %r11d
	movq	%rdx, -248(%rbp)        # 8-byte Spill
	movl	%r8d, %edx
	movq	%rcx, -256(%rbp)        # 8-byte Spill
	movl	%r9d, %ecx
	movl	%r10d, %r8d
	movl	%r11d, %r9d
	movl	$4, (%rsp)
	movq	-256(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, 8(%rsp)
	movq	-248(%rbp), %r14        # 8-byte Reload
	movq	%r14, 16(%rsp)
	movl	%eax, -260(%rbp)        # 4-byte Spill
	callq	compute_block_x
	jmp	.LBB5_7
.LBB5_4:                                # %sw.bb.7
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	$3, %eax
	movabsq	$assign_block_3, %rcx
	leaq	-128(%rbp), %rdx
	movq	-184(%rbp), %rdi
	movl	-164(%rbp), %esi
	movl	-160(%rbp), %r8d
	movl	-156(%rbp), %r9d
	movl	-152(%rbp), %r10d
	movl	-148(%rbp), %r11d
	movq	%rdx, -272(%rbp)        # 8-byte Spill
	movl	%r8d, %edx
	movq	%rcx, -280(%rbp)        # 8-byte Spill
	movl	%r9d, %ecx
	movl	%r10d, %r8d
	movl	%r11d, %r9d
	movl	$3, (%rsp)
	movq	-280(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, 8(%rsp)
	movq	-272(%rbp), %r14        # 8-byte Reload
	movq	%r14, 16(%rsp)
	movl	%eax, -284(%rbp)        # 4-byte Spill
	callq	compute_block_x
	jmp	.LBB5_7
.LBB5_5:                                # %sw.bb.14
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	$2, %eax
	movabsq	$assign_block_2, %rcx
	leaq	-128(%rbp), %rdx
	movq	-184(%rbp), %rdi
	movl	-164(%rbp), %esi
	movl	-160(%rbp), %r8d
	movl	-156(%rbp), %r9d
	movl	-152(%rbp), %r10d
	movl	-148(%rbp), %r11d
	movq	%rdx, -296(%rbp)        # 8-byte Spill
	movl	%r8d, %edx
	movq	%rcx, -304(%rbp)        # 8-byte Spill
	movl	%r9d, %ecx
	movl	%r10d, %r8d
	movl	%r11d, %r9d
	movl	$2, (%rsp)
	movq	-304(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, 8(%rsp)
	movq	-296(%rbp), %r14        # 8-byte Reload
	movq	%r14, 16(%rsp)
	movl	%eax, -308(%rbp)        # 4-byte Spill
	callq	compute_block_x
	jmp	.LBB5_7
.LBB5_6:                                # %sw.bb.21
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	$1, %eax
	movabsq	$assign_block_1, %rcx
	leaq	-128(%rbp), %rdx
	movq	-184(%rbp), %rdi
	movl	-164(%rbp), %esi
	movl	-160(%rbp), %r8d
	movl	-156(%rbp), %r9d
	movl	-152(%rbp), %r10d
	movl	-148(%rbp), %r11d
	movq	%rdx, -320(%rbp)        # 8-byte Spill
	movl	%r8d, %edx
	movq	%rcx, -328(%rbp)        # 8-byte Spill
	movl	%r9d, %ecx
	movl	%r10d, %r8d
	movl	%r11d, %r9d
	movl	$1, (%rsp)
	movq	-328(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, 8(%rsp)
	movq	-320(%rbp), %r14        # 8-byte Reload
	movq	%r14, 16(%rsp)
	movl	%eax, -332(%rbp)        # 4-byte Spill
	callq	compute_block_x
.LBB5_7:                                # %sw.epilog
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	-152(%rbp), %eax
	imull	-148(%rbp), %eax
	addl	-212(%rbp), %eax
	movl	%eax, -212(%rbp)
	cvtsi2sdl	-212(%rbp), %xmm0
	cvtsi2sdl	-216(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -336(%rbp)        # 4-byte Spill
# BB#8:                                 # %for.inc
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-208(%rbp), %rdi
	callq	gimp_pixel_rgns_process
	movq	%rax, -208(%rbp)
	jmp	.LBB5_1
.LBB5_9:                                # %for.end
	movsd	.LCPI5_0, %xmm0         # xmm0 = mem[0],zero
	callq	gimp_progress_update
	movq	drawable, %rdi
	movl	%eax, -340(%rbp)        # 4-byte Spill
	callq	gimp_drawable_flush
	movl	$1, %esi
	movq	drawable, %rdi
	movl	(%rdi), %edi
	callq	gimp_drawable_merge_shadow
	movq	drawable, %rcx
	movl	(%rcx), %edi
	movl	-188(%rbp), %esi
	movl	-192(%rbp), %edx
	movl	-196(%rbp), %r8d
	subl	-188(%rbp), %r8d
	movl	-200(%rbp), %r9d
	subl	-192(%rbp), %r9d
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%eax, -344(%rbp)        # 4-byte Spill
	callq	gimp_drawable_update
	movl	%eax, -348(%rbp)        # 4-byte Spill
	addq	$368, %rsp              # imm = 0x170
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end5:
	.size	sinus, .Lfunc_end5-sinus
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI5_0:
	.quad	.LBB5_6
	.quad	.LBB5_5
	.quad	.LBB5_4
	.quad	.LBB5_3

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI6_0:
	.long	1056964608              # float 0.5
.LCPI6_1:
	.long	1065353216              # float 1
	.text
	.align	16, 0x90
	.type	mw_preview_new,@function
mw_preview_new:                         # @mw_preview_new
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp30:
	.cfi_def_cfa_offset 16
.Ltmp31:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp32:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movl	$1, %eax
	movl	$6, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%eax, %edi
	movl	%ecx, %esi
	callq	gtk_box_new
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -60(%rbp)         # 4-byte Spill
	movl	-60(%rbp), %r8d         # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movss	.LCPI6_0, %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI6_1, %xmm2         # xmm2 = mem[0],zero,zero,zero
	movl	$1, %esi
	movss	%xmm0, -64(%rbp)        # 4-byte Spill
	movss	-64(%rbp), %xmm1        # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	callq	gtk_aspect_frame_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_frame_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_frame_set_shadow_type
	movq	-40(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -84(%rbp)         # 4-byte Spill
	movl	-84(%rbp), %r8d         # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	callq	gimp_preview_area_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	(%rax), %esi
	movq	-16(%rbp), %rax
	movl	4(%rax), %edx
	callq	gtk_widget_set_size_request
	movq	-32(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-24(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.80, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_mnemonic
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	do_preview, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-40(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -116(%rbp)        # 4-byte Spill
	movl	-116(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.57, %rsi
	movabsq	$mw_preview_toggle_callback, %rax
	movabsq	$do_preview, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-48(%rbp), %r10
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, %rdx
	movq	-128(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-24(%rbp), %rcx
	movq	%rax, -136(%rbp)        # 8-byte Spill
	movq	%rcx, %rax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	mw_preview_new, .Lfunc_end6-mw_preview_new
	.cfi_endproc

	.align	16, 0x90
	.type	sinus_double_adjustment_update,@function
sinus_double_adjustment_update:         # @sinus_double_adjustment_update
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp33:
	.cfi_def_cfa_offset 16
.Ltmp34:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp35:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_double_adjustment_update
	xorl	%eax, %eax
	movl	%eax, %edi
	callq	sinus_do_preview
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	sinus_double_adjustment_update, .Lfunc_end7-sinus_double_adjustment_update
	.cfi_endproc

	.align	16, 0x90
	.type	sinus_random_update,@function
sinus_random_update:                    # @sinus_random_update
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp36:
	.cfi_def_cfa_offset 16
.Ltmp37:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp38:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rcx, %rdi
	callq	sinus_do_preview
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	sinus_random_update, .Lfunc_end8-sinus_random_update
	.cfi_endproc

	.align	16, 0x90
	.type	sinus_toggle_button_update,@function
sinus_toggle_button_update:             # @sinus_toggle_button_update
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp39:
	.cfi_def_cfa_offset 16
.Ltmp40:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp41:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_toggle_button_update
	xorl	%eax, %eax
	movl	%eax, %edi
	callq	sinus_do_preview
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	sinus_toggle_button_update, .Lfunc_end9-sinus_toggle_button_update
	.cfi_endproc

	.align	16, 0x90
	.type	sinus_radio_button_update,@function
sinus_radio_button_update:              # @sinus_radio_button_update
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_radio_button_update
	xorl	%eax, %eax
	movl	%eax, %edi
	callq	sinus_do_preview
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	sinus_radio_button_update, .Lfunc_end10-sinus_radio_button_update
	.cfi_endproc

	.align	16, 0x90
	.type	alpha_scale_cb,@function
alpha_scale_cb:                         # @alpha_scale_cb
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp45:
	.cfi_def_cfa_offset 16
.Ltmp46:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp47:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB11_2
# BB#1:                                 # %if.then
	jmp	.LBB11_3
.LBB11_2:                               # %if.end
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_color_button_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_color_button_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_color_button_get_color
	movq	-8(%rbp), %rdi
	callq	gtk_adjustment_get_value
	leaq	-56(%rbp), %rdi
	callq	gimp_rgb_set_alpha
	movq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_color_button_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_color_button_set_color
.LBB11_3:                               # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	alpha_scale_cb, .Lfunc_end11-alpha_scale_cb
	.cfi_endproc

	.align	16, 0x90
	.type	alpha_scale_update,@function
alpha_scale_update:                     # @alpha_scale_update
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp48:
	.cfi_def_cfa_offset 16
.Ltmp49:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp50:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_color_button_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_color_button_get_color
	movq	-24(%rbp), %rdi
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gtk_adjustment_set_value
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	callq	sinus_do_preview
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	alpha_scale_update, .Lfunc_end12-alpha_scale_update
	.cfi_endproc

	.align	16, 0x90
	.type	sinus_do_preview,@function
sinus_do_preview:                       # @sinus_do_preview
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp51:
	.cfi_def_cfa_offset 16
.Ltmp52:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp53:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$248, %rsp
.Ltmp54:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	cmpl	$0, do_preview
	jne	.LBB13_2
# BB#1:                                 # %if.then
	jmp	.LBB13_10
.LBB13_2:                               # %if.end
	cmpq	$0, sinus_do_preview.theWidget
	jne	.LBB13_4
# BB#3:                                 # %if.then.1
	movq	-16(%rbp), %rax
	movq	%rax, sinus_do_preview.theWidget
.LBB13_4:                               # %if.end.2
	movl	$1, %eax
	movl	%eax, %esi
	movq	thePreview, %rcx
	movl	(%rcx), %eax
	movq	thePreview, %rcx
	imull	8(%rcx), %eax
	movl	%eax, -20(%rbp)
	movq	thePreview, %rcx
	movl	(%rcx), %eax
	movq	thePreview, %rcx
	imull	4(%rcx), %eax
	movq	thePreview, %rcx
	imull	8(%rcx), %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	leaq	-144(%rbp), %rdi
	movq	%rax, -32(%rbp)
	movq	thePreview, %rax
	movl	4(%rax), %edx
	movl	%edx, -144(%rbp)
	movq	thePreview, %rax
	movl	(%rax), %edx
	movl	%edx, -140(%rbp)
	callq	prepare_coef
	movq	thePreview, %rax
	cmpl	$3, 8(%rax)
	jne	.LBB13_6
# BB#5:                                 # %if.then.14
	xorl	%eax, %eax
	movl	$3, %ecx
	movabsq	$assign_block_3, %rdx
	leaq	-144(%rbp), %rsi
	movq	-32(%rbp), %rdi
	movl	-20(%rbp), %r8d
	movq	thePreview, %r9
	movl	(%r9), %r10d
	movq	thePreview, %r9
	movl	4(%r9), %r9d
	movq	%rsi, -152(%rbp)        # 8-byte Spill
	movl	%r8d, %esi
	movq	%rdx, -160(%rbp)        # 8-byte Spill
	movl	%eax, %edx
	movl	%ecx, -164(%rbp)        # 4-byte Spill
	movl	%eax, %ecx
	movl	%r10d, %r8d
	movl	$3, (%rsp)
	movq	-160(%rbp), %r11        # 8-byte Reload
	movq	%r11, 8(%rsp)
	movq	-152(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, 16(%rsp)
	callq	compute_block_x
	jmp	.LBB13_9
.LBB13_6:                               # %if.else
	movq	thePreview, %rax
	cmpl	$1, 8(%rax)
	jne	.LBB13_8
# BB#7:                                 # %if.then.20
	xorl	%eax, %eax
	movl	$1, %ecx
	movabsq	$assign_block_1, %rdx
	leaq	-144(%rbp), %rsi
	movq	-32(%rbp), %rdi
	movl	-20(%rbp), %r8d
	movq	thePreview, %r9
	movl	(%r9), %r10d
	movq	thePreview, %r9
	movl	4(%r9), %r9d
	movq	%rsi, -176(%rbp)        # 8-byte Spill
	movl	%r8d, %esi
	movq	%rdx, -184(%rbp)        # 8-byte Spill
	movl	%eax, %edx
	movl	%ecx, -188(%rbp)        # 4-byte Spill
	movl	%eax, %ecx
	movl	%r10d, %r8d
	movl	$1, (%rsp)
	movq	-184(%rbp), %r11        # 8-byte Reload
	movq	%r11, 8(%rsp)
	movq	-176(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, 16(%rsp)
	callq	compute_block_x
.LBB13_8:                               # %if.end.23
	jmp	.LBB13_9
.LBB13_9:                               # %if.end.24
	movq	sinus_do_preview.theWidget, %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gimp_preview_area_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	thePreview, %rsi
	movl	(%rsi), %edx
	movq	thePreview, %rsi
	movl	4(%rsi), %r8d
	movq	-32(%rbp), %rsi
	movl	-20(%rbp), %r9d
	movq	%rax, %rdi
	movq	%rsi, -208(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movl	%edx, -212(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-212(%rbp), %r10d       # 4-byte Reload
	movl	%ecx, -216(%rbp)        # 4-byte Spill
	movl	%r10d, %ecx
	movl	-216(%rbp), %r11d       # 4-byte Reload
	movl	%r9d, -220(%rbp)        # 4-byte Spill
	movl	%r11d, %r9d
	movq	-208(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movl	-220(%rbp), %ebx        # 4-byte Reload
	movl	%ebx, 8(%rsp)
	callq	gimp_preview_area_draw
	movq	-32(%rbp), %rdi
	callq	g_free
.LBB13_10:                              # %return
	addq	$248, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end13:
	.size	sinus_do_preview, .Lfunc_end13-sinus_do_preview
	.cfi_endproc

	.align	16, 0x90
	.type	mw_preview_toggle_callback,@function
mw_preview_toggle_callback:             # @mw_preview_toggle_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp55:
	.cfi_def_cfa_offset 16
.Ltmp56:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp57:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_toggle_button_update
	xorl	%eax, %eax
	movl	%eax, %edi
	callq	sinus_do_preview
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	mw_preview_toggle_callback, .Lfunc_end14-mw_preview_toggle_callback
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI15_0:
	.quad	4618760256179416344     # double 6.2831853071795862
.LCPI15_1:
	.quad	-4616189618054758400    # double -1
.LCPI15_2:
	.quad	4607182418800017408     # double 1
.LCPI15_3:
	.quad	4614256656552045848     # double 3.1415926535897931
.LCPI15_4:
	.quad	4602678819172646912     # double 0.5
.LCPI15_5:
	.quad	4643176031446892544     # double 255
	.text
	.align	16, 0x90
	.type	prepare_coef,@function
prepare_coef:                           # @prepare_coef
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp58:
	.cfi_def_cfa_offset 16
.Ltmp59:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp60:
	.cfi_def_cfa_register %rbp
	subq	$272, %rsp              # imm = 0x110
	movq	%rdi, -8(%rbp)
	movsd	svals(%rip), %xmm0      # xmm0 = mem[0],zero
	movsd	%xmm0, -80(%rbp)
	movsd	svals+8(%rip), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, -88(%rbp)
	callq	g_rand_new
	movq	%rax, -96(%rbp)
	movl	svals+32(%rip), %esi
	movq	%rax, %rdi
	callq	g_rand_set_seed
	movq	svals+48(%rip), %rax
	testq	%rax, %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	je	.LBB15_3
	jmp	.LBB15_18
.LBB15_18:                              # %entry
	movq	-104(%rbp), %rax        # 8-byte Reload
	subq	$1, %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	je	.LBB15_1
	jmp	.LBB15_19
.LBB15_19:                              # %entry
	movq	-104(%rbp), %rax        # 8-byte Reload
	subq	$2, %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	je	.LBB15_2
	jmp	.LBB15_4
.LBB15_1:                               # %sw.bb
	movabsq	$bilinear, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 80(%rcx)
	jmp	.LBB15_5
.LBB15_2:                               # %sw.bb.1
	movabsq	$cosinus, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 80(%rcx)
	jmp	.LBB15_5
.LBB15_3:                               # %sw.bb.3
	jmp	.LBB15_4
.LBB15_4:                               # %sw.default
	movabsq	$linear, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 80(%rcx)
.LBB15_5:                               # %sw.epilog
	cmpq	$0, svals+40
	jne	.LBB15_7
# BB#6:                                 # %if.then
	xorps	%xmm0, %xmm0
	movsd	.LCPI15_0, %xmm1        # xmm1 = mem[0],zero
	movq	-96(%rbp), %rdi
	movsd	%xmm0, -128(%rbp)       # 8-byte Spill
	movsd	%xmm1, -136(%rbp)       # 8-byte Spill
	callq	g_rand_int
	movq	-8(%rbp), %rdi
	movq	$0, 8(%rdi)
	movq	-96(%rbp), %rdi
	movsd	.LCPI15_1(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	.LCPI15_2(%rip), %xmm1  # xmm1 = mem[0],zero
	movsd	%xmm0, -144(%rbp)       # 8-byte Spill
	movsd	%xmm1, -152(%rbp)       # 8-byte Spill
	movl	%eax, -156(%rbp)        # 4-byte Spill
	callq	g_rand_double_range
	movsd	-88(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 16(%rdi)
	movq	-96(%rbp), %rdi
	xorps	%xmm0, %xmm0
	movsd	.LCPI15_0(%rip), %xmm1  # xmm1 = mem[0],zero
	movsd	%xmm0, -168(%rbp)       # 8-byte Spill
	movsd	%xmm1, -176(%rbp)       # 8-byte Spill
	callq	g_rand_double_range
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 24(%rdi)
	movq	-96(%rbp), %rdi
	callq	g_rand_int
	movq	-8(%rbp), %rdi
	movq	$0, 32(%rdi)
	movq	-96(%rbp), %rdi
	movsd	-144(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-152(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	%eax, -180(%rbp)        # 4-byte Spill
	callq	g_rand_double_range
	movsd	-88(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 40(%rdi)
	movq	-96(%rbp), %rdi
	movsd	-168(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-176(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	g_rand_double_range
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 48(%rdi)
	movq	-96(%rbp), %rdi
	movsd	-144(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-152(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	g_rand_double_range
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 56(%rdi)
	movq	-96(%rbp), %rdi
	callq	g_rand_int
	movq	-8(%rbp), %rdi
	movsd	-168(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, 64(%rdi)
	movq	-96(%rbp), %rdi
	movsd	-128(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-136(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	%eax, -184(%rbp)        # 4-byte Spill
	callq	g_rand_double_range
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 72(%rdi)
	jmp	.LBB15_8
.LBB15_7:                               # %if.else
	movsd	.LCPI15_1, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI15_2, %xmm1        # xmm1 = mem[0],zero
	movq	-96(%rbp), %rdi
	callq	g_rand_double_range
	movsd	.LCPI15_1, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI15_2, %xmm2        # xmm2 = mem[0],zero
	mulsd	-80(%rbp), %xmm0
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 8(%rdi)
	movq	-96(%rbp), %rdi
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	callq	g_rand_double_range
	xorps	%xmm1, %xmm1
	movsd	.LCPI15_0, %xmm2        # xmm2 = mem[0],zero
	mulsd	-88(%rbp), %xmm0
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 16(%rdi)
	movq	-96(%rbp), %rdi
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	callq	g_rand_double_range
	movsd	.LCPI15_1, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI15_2, %xmm2        # xmm2 = mem[0],zero
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 24(%rdi)
	movq	-96(%rbp), %rdi
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	callq	g_rand_double_range
	movsd	.LCPI15_1, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI15_2, %xmm2        # xmm2 = mem[0],zero
	mulsd	-80(%rbp), %xmm0
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 32(%rdi)
	movq	-96(%rbp), %rdi
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	callq	g_rand_double_range
	xorps	%xmm1, %xmm1
	movsd	.LCPI15_0, %xmm2        # xmm2 = mem[0],zero
	mulsd	-88(%rbp), %xmm0
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 40(%rdi)
	movq	-96(%rbp), %rdi
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	callq	g_rand_double_range
	movsd	.LCPI15_1, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI15_2, %xmm2        # xmm2 = mem[0],zero
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 48(%rdi)
	movq	-96(%rbp), %rdi
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	callq	g_rand_double_range
	movsd	.LCPI15_1, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI15_2, %xmm2        # xmm2 = mem[0],zero
	mulsd	-80(%rbp), %xmm0
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 56(%rdi)
	movq	-96(%rbp), %rdi
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	callq	g_rand_double_range
	xorps	%xmm1, %xmm1
	movsd	.LCPI15_0, %xmm2        # xmm2 = mem[0],zero
	mulsd	-88(%rbp), %xmm0
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 64(%rdi)
	movq	-96(%rbp), %rdi
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	callq	g_rand_double_range
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 72(%rdi)
.LBB15_8:                               # %if.end
	cmpl	$0, svals+36
	je	.LBB15_10
# BB#9:                                 # %if.then.45
	movsd	.LCPI15_3, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI15_4, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI15_0, %xmm2        # xmm2 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	8(%rax), %xmm3          # xmm3 = mem[0],zero
	divsd	%xmm2, %xmm3
	addsd	%xmm1, %xmm3
	cvttsd2si	%xmm3, %ecx
	shll	$1, %ecx
	cvtsi2sdl	%ecx, %xmm3
	mulsd	%xmm0, %xmm3
	movq	-8(%rbp), %rax
	movsd	%xmm3, 8(%rax)
	movq	-8(%rbp), %rax
	movsd	16(%rax), %xmm3         # xmm3 = mem[0],zero
	divsd	%xmm2, %xmm3
	addsd	%xmm1, %xmm3
	cvttsd2si	%xmm3, %ecx
	shll	$1, %ecx
	cvtsi2sdl	%ecx, %xmm3
	mulsd	%xmm0, %xmm3
	movq	-8(%rbp), %rax
	movsd	%xmm3, 16(%rax)
	movq	-8(%rbp), %rax
	movsd	32(%rax), %xmm3         # xmm3 = mem[0],zero
	divsd	%xmm2, %xmm3
	addsd	%xmm1, %xmm3
	cvttsd2si	%xmm3, %ecx
	shll	$1, %ecx
	cvtsi2sdl	%ecx, %xmm3
	mulsd	%xmm0, %xmm3
	movq	-8(%rbp), %rax
	movsd	%xmm3, 32(%rax)
	movq	-8(%rbp), %rax
	movsd	40(%rax), %xmm3         # xmm3 = mem[0],zero
	divsd	%xmm2, %xmm3
	addsd	%xmm1, %xmm3
	cvttsd2si	%xmm3, %ecx
	shll	$1, %ecx
	cvtsi2sdl	%ecx, %xmm3
	mulsd	%xmm0, %xmm3
	movq	-8(%rbp), %rax
	movsd	%xmm3, 40(%rax)
	movq	-8(%rbp), %rax
	movsd	56(%rax), %xmm3         # xmm3 = mem[0],zero
	divsd	%xmm2, %xmm3
	addsd	%xmm1, %xmm3
	cvttsd2si	%xmm3, %ecx
	shll	$1, %ecx
	cvtsi2sdl	%ecx, %xmm3
	mulsd	%xmm0, %xmm3
	movq	-8(%rbp), %rax
	movsd	%xmm3, 56(%rax)
	movq	-8(%rbp), %rax
	movsd	64(%rax), %xmm3         # xmm3 = mem[0],zero
	divsd	%xmm2, %xmm3
	addsd	%xmm1, %xmm3
	cvttsd2si	%xmm3, %ecx
	shll	$1, %ecx
	cvtsi2sdl	%ecx, %xmm1
	mulsd	%xmm0, %xmm1
	movq	-8(%rbp), %rax
	movsd	%xmm1, 64(%rax)
.LBB15_10:                              # %if.end.92
	movq	svals+64, %rax
	movq	%rax, -40(%rbp)
	movq	svals+72, %rax
	movq	%rax, -32(%rbp)
	movq	svals+80, %rax
	movq	%rax, -24(%rbp)
	movq	svals+88, %rax
	movq	%rax, -16(%rbp)
	movq	svals+96, %rax
	movq	%rax, -72(%rbp)
	movq	svals+104, %rax
	movq	%rax, -64(%rbp)
	movq	svals+112, %rax
	movq	%rax, -56(%rbp)
	movq	svals+120, %rax
	movq	%rax, -48(%rbp)
	cmpl	$0, drawable_is_grayscale
	je	.LBB15_12
# BB#11:                                # %if.then.94
	leaq	-40(%rbp), %rdi
	movsd	.LCPI15_2, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -192(%rbp)       # 8-byte Spill
	movsd	-192(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-192(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	gimp_rgb_set
	leaq	-72(%rbp), %rdi
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -200(%rbp)       # 8-byte Spill
	movsd	-200(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-200(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	gimp_rgb_set
	jmp	.LBB15_17
.LBB15_12:                              # %if.else.95
	movq	svals+56(%rip), %rax
	testq	%rax, %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	je	.LBB15_14
	jmp	.LBB15_20
.LBB15_20:                              # %if.else.95
	movq	-208(%rbp), %rax        # 8-byte Reload
	subq	$1, %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	je	.LBB15_15
	jmp	.LBB15_21
.LBB15_21:                              # %if.else.95
	movq	-208(%rbp), %rax        # 8-byte Reload
	subq	$2, %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	jne	.LBB15_16
	jmp	.LBB15_13
.LBB15_13:                              # %sw.bb.96
	jmp	.LBB15_16
.LBB15_14:                              # %sw.bb.97
	leaq	-40(%rbp), %rdi
	movsd	.LCPI15_2, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -232(%rbp)       # 8-byte Spill
	movsd	-232(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-232(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	gimp_rgb_set
	leaq	-72(%rbp), %rdi
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -240(%rbp)       # 8-byte Spill
	movsd	-240(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-240(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	gimp_rgb_set
	jmp	.LBB15_16
.LBB15_15:                              # %sw.bb.98
	leaq	-40(%rbp), %rdi
	callq	gimp_context_get_background
	leaq	-72(%rbp), %rdi
	movl	%eax, -244(%rbp)        # 4-byte Spill
	callq	gimp_context_get_foreground
	movl	%eax, -248(%rbp)        # 4-byte Spill
.LBB15_16:                              # %sw.epilog.101
	jmp	.LBB15_17
.LBB15_17:                              # %if.end.102
	leaq	-40(%rbp), %rdi
	movq	-8(%rbp), %rax
	addq	$88, %rax
	movq	-8(%rbp), %rcx
	addq	$89, %rcx
	movq	-8(%rbp), %rdx
	addq	$90, %rdx
	movq	-8(%rbp), %rsi
	addq	$91, %rsi
	movq	%rsi, -256(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	%rdx, -264(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-264(%rbp), %rcx        # 8-byte Reload
	movq	-256(%rbp), %r8         # 8-byte Reload
	callq	gimp_rgba_get_uchar
	leaq	-72(%rbp), %rdi
	leaq	-40(%rbp), %rsi
	callq	gimp_rgba_subtract
	movsd	.LCPI15_5, %xmm0        # xmm0 = mem[0],zero
	movaps	%xmm0, %xmm1
	mulsd	-72(%rbp), %xmm1
	cvttsd2si	%xmm1, %r9d
	movq	-8(%rbp), %rax
	movl	%r9d, 92(%rax)
	movaps	%xmm0, %xmm1
	mulsd	-64(%rbp), %xmm1
	cvttsd2si	%xmm1, %r9d
	movq	-8(%rbp), %rax
	movl	%r9d, 96(%rax)
	movaps	%xmm0, %xmm1
	mulsd	-56(%rbp), %xmm1
	cvttsd2si	%xmm1, %r9d
	movq	-8(%rbp), %rax
	movl	%r9d, 100(%rax)
	mulsd	-48(%rbp), %xmm0
	cvttsd2si	%xmm0, %r9d
	movq	-8(%rbp), %rax
	movl	%r9d, 104(%rax)
	movq	-96(%rbp), %rdi
	callq	g_rand_free
	addq	$272, %rsp              # imm = 0x110
	popq	%rbp
	retq
.Lfunc_end15:
	.size	prepare_coef, .Lfunc_end15-prepare_coef
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI16_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	compute_block_x,@function
compute_block_x:                        # @compute_block_x
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp61:
	.cfi_def_cfa_offset 16
.Ltmp62:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp63:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	32(%rbp), %rax
	movq	24(%rbp), %r10
	movl	16(%rbp), %r11d
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movl	%r9d, -28(%rbp)
	movl	%r11d, -32(%rbp)
	movq	%r10, -40(%rbp)
	movq	%rax, -48(%rbp)
	movsd	svals+24, %xmm0         # xmm0 = mem[0],zero
	callq	exp
	movsd	%xmm0, -88(%rbp)
	movl	-20(%rbp), %ecx
	movl	%ecx, -56(%rbp)
.LBB16_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_3 Depth 2
	movl	-56(%rbp), %eax
	movl	-20(%rbp), %ecx
	addl	-28(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB16_8
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB16_1 Depth=1
	cvtsi2sdl	-56(%rbp), %xmm0
	movq	-48(%rbp), %rax
	cvtsi2sdl	(%rax), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -72(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -96(%rbp)
	movl	-16(%rbp), %ecx
	movl	%ecx, -52(%rbp)
.LBB16_3:                               # %for.cond.2
                                        #   Parent Loop BB16_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-52(%rbp), %eax
	movl	-16(%rbp), %ecx
	addl	-24(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB16_6
# BB#4:                                 # %for.body.6
                                        #   in Loop: Header=BB16_3 Depth=2
	movsd	.LCPI16_0, %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-52(%rbp), %xmm1
	movq	-48(%rbp), %rax
	cvtsi2sdl	4(%rax), %xmm2
	divsd	%xmm2, %xmm1
	movsd	%xmm1, -64(%rbp)
	movq	-48(%rbp), %rax
	movsd	56(%rax), %xmm1         # xmm1 = mem[0],zero
	mulsd	-64(%rbp), %xmm1
	movq	-48(%rbp), %rax
	movsd	64(%rax), %xmm2         # xmm2 = mem[0],zero
	mulsd	-72(%rbp), %xmm2
	addsd	%xmm2, %xmm1
	movq	-48(%rbp), %rax
	addsd	72(%rax), %xmm1
	movsd	%xmm0, -112(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	sin
	movsd	-112(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -104(%rbp)
	movq	-48(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	mulsd	-64(%rbp), %xmm0
	movq	-48(%rbp), %rax
	movsd	16(%rax), %xmm1         # xmm1 = mem[0],zero
	mulsd	-72(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movq	-48(%rbp), %rax
	addsd	24(%rax), %xmm0
	callq	sin
	movsd	-112(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	-104(%rbp), %xmm1
	movsd	-112(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	addsd	%xmm1, %xmm2
	mulsd	%xmm2, %xmm0
	movq	-48(%rbp), %rax
	movsd	32(%rax), %xmm1         # xmm1 = mem[0],zero
	mulsd	-64(%rbp), %xmm1
	movq	-48(%rbp), %rax
	movsd	40(%rax), %xmm2         # xmm2 = mem[0],zero
	mulsd	-72(%rbp), %xmm2
	addsd	%xmm2, %xmm1
	movq	-48(%rbp), %rax
	addsd	48(%rax), %xmm1
	movsd	%xmm0, -120(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	sin
	movsd	-112(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	-104(%rbp), %xmm1
	movsd	-112(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	subsd	%xmm1, %xmm2
	mulsd	%xmm2, %xmm0
	movsd	-120(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	movsd	%xmm1, -80(%rbp)
	movq	-48(%rbp), %rax
	movq	80(%rax), %rax
	movsd	svals+16, %xmm0         # xmm0 = mem[0],zero
	movsd	-112(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	-80(%rbp), %xmm1
	movsd	-112(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	addsd	%xmm1, %xmm2
	mulsd	%xmm2, %xmm0
	callq	*%rax
	movsd	-88(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	pow
	movsd	%xmm0, -80(%rbp)
	movq	-40(%rbp), %rax
	movq	-96(%rbp), %rdi
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-48(%rbp), %rsi
	callq	*%rax
	movl	-32(%rbp), %ecx
	movq	-96(%rbp), %rax
	movslq	%ecx, %rsi
	addq	%rsi, %rax
	movq	%rax, -96(%rbp)
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB16_3 Depth=2
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB16_3
.LBB16_6:                               # %for.end
                                        #   in Loop: Header=BB16_1 Depth=1
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -8(%rbp)
# BB#7:                                 # %for.inc.38
                                        #   in Loop: Header=BB16_1 Depth=1
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB16_1
.LBB16_8:                               # %for.end.40
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	compute_block_x, .Lfunc_end16-compute_block_x
	.cfi_endproc

	.align	16, 0x90
	.type	assign_block_3,@function
assign_block_3:                         # @assign_block_3
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp64:
	.cfi_def_cfa_offset 16
.Ltmp65:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp66:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	movzbl	88(%rsi), %eax
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rsi
	cvtsi2sdl	92(%rsi), %xmm1
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	addl	%ecx, %eax
	movb	%al, %dl
	movq	-8(%rbp), %rsi
	movb	%dl, (%rsi)
	movq	-24(%rbp), %rsi
	movzbl	89(%rsi), %eax
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rsi
	cvtsi2sdl	96(%rsi), %xmm1
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	addl	%ecx, %eax
	movb	%al, %dl
	movq	-8(%rbp), %rsi
	movb	%dl, 1(%rsi)
	movq	-24(%rbp), %rsi
	movzbl	90(%rsi), %eax
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rsi
	cvtsi2sdl	100(%rsi), %xmm1
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	addl	%ecx, %eax
	movb	%al, %dl
	movq	-8(%rbp), %rsi
	movb	%dl, 2(%rsi)
	popq	%rbp
	retq
.Lfunc_end17:
	.size	assign_block_3, .Lfunc_end17-assign_block_3
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI18_0:
	.quad	4643176031446892544     # double 255
	.text
	.align	16, 0x90
	.type	assign_block_1,@function
assign_block_1:                         # @assign_block_1
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp67:
	.cfi_def_cfa_offset 16
.Ltmp68:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp69:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI18_0(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rsi
	movb	%cl, (%rsi)
	popq	%rbp
	retq
.Lfunc_end18:
	.size	assign_block_1, .Lfunc_end18-assign_block_1
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI19_0:
	.quad	4607182418800017408     # double 1
.LCPI19_1:
	.quad	4602678819172646912     # double 0.5
.LCPI19_2:
	.quad	4611686018427387904     # double 2
	.text
	.align	16, 0x90
	.type	bilinear,@function
bilinear:                               # @bilinear
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp70:
	.cfi_def_cfa_offset 16
.Ltmp71:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp72:
	.cfi_def_cfa_register %rbp
	xorps	%xmm1, %xmm1
	movsd	%xmm0, -8(%rbp)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	cvttsd2si	-8(%rbp), %eax
	cvtsi2sdl	%eax, %xmm2
	subsd	%xmm2, %xmm0
	movsd	%xmm0, -16(%rbp)
	ucomisd	-16(%rbp), %xmm1
	jbe	.LBB19_2
# BB#1:                                 # %cond.true
	movsd	.LCPI19_0, %xmm0        # xmm0 = mem[0],zero
	addsd	-16(%rbp), %xmm0
	movsd	%xmm0, -24(%rbp)        # 8-byte Spill
	jmp	.LBB19_3
.LBB19_2:                               # %cond.false
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -24(%rbp)        # 8-byte Spill
.LBB19_3:                               # %cond.end
	movsd	-24(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI19_1, %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -16(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB19_5
# BB#4:                                 # %cond.true.5
	movsd	.LCPI19_2, %xmm0        # xmm0 = mem[0],zero
	movaps	%xmm0, %xmm1
	mulsd	-16(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
	jmp	.LBB19_6
.LBB19_5:                               # %cond.false.7
	movsd	.LCPI19_2, %xmm0        # xmm0 = mem[0],zero
	mulsd	-16(%rbp), %xmm0
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
.LBB19_6:                               # %cond.end.9
	movsd	-32(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	popq	%rbp
	retq
.Lfunc_end19:
	.size	bilinear, .Lfunc_end19-bilinear
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI20_0:
	.quad	4602678819172646912     # double 0.5
.LCPI20_1:
	.quad	4611686018427387904     # double 2
.LCPI20_2:
	.quad	4614256656552045848     # double 3.1415926535897931
.LCPI20_3:
	.quad	4598175219545276416     # double 0.25
	.text
	.align	16, 0x90
	.type	cosinus,@function
cosinus:                                # @cosinus
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp73:
	.cfi_def_cfa_offset 16
.Ltmp74:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp75:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movsd	.LCPI20_0, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI20_1, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI20_2, %xmm3        # xmm3 = mem[0],zero
	movsd	.LCPI20_3, %xmm4        # xmm4 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
	addsd	-8(%rbp), %xmm4
	mulsd	%xmm3, %xmm4
	mulsd	%xmm2, %xmm4
	movaps	%xmm4, %xmm0
	movsd	%xmm1, -16(%rbp)        # 8-byte Spill
	callq	sin
	movsd	-16(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-16(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	subsd	%xmm1, %xmm0
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	cosinus, .Lfunc_end20-cosinus
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI21_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	linear,@function
linear:                                 # @linear
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp76:
	.cfi_def_cfa_offset 16
.Ltmp77:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp78:
	.cfi_def_cfa_register %rbp
	xorps	%xmm1, %xmm1
	movsd	%xmm0, -8(%rbp)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	cvttsd2si	-8(%rbp), %eax
	cvtsi2sdl	%eax, %xmm2
	subsd	%xmm2, %xmm0
	movsd	%xmm0, -16(%rbp)
	ucomisd	-16(%rbp), %xmm1
	jbe	.LBB21_2
# BB#1:                                 # %cond.true
	movsd	.LCPI21_0, %xmm0        # xmm0 = mem[0],zero
	addsd	-16(%rbp), %xmm0
	movsd	%xmm0, -24(%rbp)        # 8-byte Spill
	jmp	.LBB21_3
.LBB21_2:                               # %cond.false
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -24(%rbp)        # 8-byte Spill
.LBB21_3:                               # %cond.end
	movsd	-24(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	popq	%rbp
	retq
.Lfunc_end21:
	.size	linear, .Lfunc_end21-linear
	.cfi_endproc

	.align	16, 0x90
	.type	assign_block_4,@function
assign_block_4:                         # @assign_block_4
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp79:
	.cfi_def_cfa_offset 16
.Ltmp80:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp81:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	movzbl	88(%rsi), %eax
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rsi
	cvtsi2sdl	92(%rsi), %xmm1
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	addl	%ecx, %eax
	movb	%al, %dl
	movq	-8(%rbp), %rsi
	movb	%dl, (%rsi)
	movq	-24(%rbp), %rsi
	movzbl	89(%rsi), %eax
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rsi
	cvtsi2sdl	96(%rsi), %xmm1
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	addl	%ecx, %eax
	movb	%al, %dl
	movq	-8(%rbp), %rsi
	movb	%dl, 1(%rsi)
	movq	-24(%rbp), %rsi
	movzbl	90(%rsi), %eax
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rsi
	cvtsi2sdl	100(%rsi), %xmm1
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	addl	%ecx, %eax
	movb	%al, %dl
	movq	-8(%rbp), %rsi
	movb	%dl, 2(%rsi)
	movq	-24(%rbp), %rsi
	movzbl	91(%rsi), %eax
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rsi
	cvtsi2sdl	104(%rsi), %xmm1
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	addl	%ecx, %eax
	movb	%al, %dl
	movq	-8(%rbp), %rsi
	movb	%dl, 3(%rsi)
	popq	%rbp
	retq
.Lfunc_end22:
	.size	assign_block_4, .Lfunc_end22-assign_block_4
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI23_0:
	.quad	4643176031446892544     # double 255
	.text
	.align	16, 0x90
	.type	assign_block_2,@function
assign_block_2:                         # @assign_block_2
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp82:
	.cfi_def_cfa_offset 16
.Ltmp83:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp84:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI23_0(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rsi
	movb	%cl, (%rsi)
	movq	-24(%rbp), %rsi
	movzbl	91(%rsi), %eax
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rsi
	cvtsi2sdl	104(%rsi), %xmm1
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %edx
	addl	%edx, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rsi
	movb	%cl, 1(%rsi)
	popq	%rbp
	retq
.Lfunc_end23:
	.size	assign_block_2, .Lfunc_end23-assign_block_2
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
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.12
	.quad	.L.str.13
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.14
	.quad	.L.str.15
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.16
	.quad	.L.str.17
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.18
	.quad	.L.str.19
	.long	10                      # 0xa
	.zero	4
	.quad	.L.str.20
	.quad	.L.str.21
	.long	10                      # 0xa
	.zero	4
	.quad	.L.str.22
	.quad	.L.str.23
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.24
	.quad	.L.str.25
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.26
	.quad	.L.str.27
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.28
	.quad	.L.str.29
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.30
	.quad	.L.str.31
	.size	query.args, 384

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
	.asciz	"xscale"
	.size	.L.str.6, 7

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Scale value for x axis"
	.size	.L.str.7, 23

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"yscale"
	.size	.L.str.8, 7

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Scale value dor y axis"
	.size	.L.str.9, 23

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"complex"
	.size	.L.str.10, 8

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Complexity factor"
	.size	.L.str.11, 18

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"seed"
	.size	.L.str.12, 5

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Seed value for random number generator"
	.size	.L.str.13, 39

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"tiling"
	.size	.L.str.14, 7

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"If set, the pattern generated will tile"
	.size	.L.str.15, 40

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"perturb"
	.size	.L.str.16, 8

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"If set, the pattern is a little more distorted..."
	.size	.L.str.17, 50

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"colors"
	.size	.L.str.18, 7

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"where to take the colors (0= B&W,  1= fg/bg, 2= col1/col2)"
	.size	.L.str.19, 59

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"col1"
	.size	.L.str.20, 5

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"fist color (sometimes unused)"
	.size	.L.str.21, 30

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"col2"
	.size	.L.str.22, 5

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"second color (sometimes unused)"
	.size	.L.str.23, 32

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"alpha1"
	.size	.L.str.24, 7

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"alpha for the first color (used if the drawable has an alpha chanel)"
	.size	.L.str.25, 69

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"alpha2"
	.size	.L.str.26, 7

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"alpha for the second color (used if the drawable has an alpha chanel)"
	.size	.L.str.27, 70

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"blend"
	.size	.L.str.28, 6

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"0= linear, 1= bilinear, 2= sinusoidal"
	.size	.L.str.29, 38

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"blend-power"
	.size	.L.str.30, 12

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"Power used to strech the blend"
	.size	.L.str.31, 31

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"plug-in-sinus"
	.size	.L.str.32, 14

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"Generate complex sinusoidal textures"
	.size	.L.str.33, 37

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"FIX ME: sinus help"
	.size	.L.str.34, 19

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"Xavier Bouchoux"
	.size	.L.str.35, 16

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"1997"
	.size	.L.str.36, 5

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"_Sinus..."
	.size	.L.str.37, 10

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"RGB*, GRAY*"
	.size	.L.str.38, 12

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"<Image>/Filters/Render/Pattern"
	.size	.L.str.39, 31

	.type	run.values,@object      # @run.values
	.local	run.values
	.comm	run.values,40,16
	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"gimp20-std-plug-ins"
	.size	.L.str.40, 20

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"UTF-8"
	.size	.L.str.41, 6

	.type	svals,@object           # @svals
	.data
	.align	8
svals:
	.quad	4624633867356078080     # double 15
	.quad	4624633867356078080     # double 15
	.quad	4607182418800017408     # double 1
	.quad	0                       # double 0
	.long	42                      # 0x2a
	.long	1                       # 0x1
	.quad	1                       # 0x1
	.quad	0                       # 0x0
	.quad	2                       # 0x2
	.quad	4607182418800017408     # double 1
	.quad	4607182418800017408     # double 1
	.quad	0                       # double 0
	.quad	4607182418800017408     # double 1
	.quad	0                       # double 0
	.quad	0                       # double 0
	.quad	4607182418800017408     # double 1
	.quad	4607182418800017408     # double 1
	.long	0                       # 0x0
	.zero	4
	.size	svals, 136

	.type	drawable,@object        # @drawable
	.local	drawable
	.comm	drawable,8,8
	.type	thePreview,@object      # @thePreview
	.local	thePreview
	.comm	thePreview,8,8
	.type	drawable_is_grayscale,@object # @drawable_is_grayscale
	.local	drawable_is_grayscale
	.comm	drawable_is_grayscale,4,4
	.type	.L.str.42,@object       # @.str.42
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.42:
	.asciz	"Sinus: rendering"
	.size	.L.str.42, 17

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"sinus"
	.size	.L.str.43, 6

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"Sinus"
	.size	.L.str.44, 6

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"gimp-sinus"
	.size	.L.str.45, 11

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"gtk-cancel"
	.size	.L.str.46, 11

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"gtk-ok"
	.size	.L.str.47, 7

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"Drawing Settings"
	.size	.L.str.48, 17

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"_X scale:"
	.size	.L.str.49, 10

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"value-changed"
	.size	.L.str.50, 14

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"_Y scale:"
	.size	.L.str.51, 10

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"Co_mplexity:"
	.size	.L.str.52, 13

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"Calculation Settings"
	.size	.L.str.53, 21

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"R_andom seed:"
	.size	.L.str.54, 14

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"spinbutton"
	.size	.L.str.55, 11

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"_Force tiling?"
	.size	.L.str.56, 15

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"toggled"
	.size	.L.str.57, 8

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"_Ideal"
	.size	.L.str.58, 7

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"_Distorted"
	.size	.L.str.59, 11

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"_Settings"
	.size	.L.str.60, 10

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"Colors"
	.size	.L.str.61, 7

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"The colors are white and black."
	.size	.L.str.62, 32

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"Bl_ack & white"
	.size	.L.str.63, 15

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"_Foreground & background"
	.size	.L.str.64, 25

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"C_hoose here:"
	.size	.L.str.65, 14

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"First color"
	.size	.L.str.66, 12

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"color-changed"
	.size	.L.str.67, 14

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"Second color"
	.size	.L.str.68, 13

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"Alpha Channels"
	.size	.L.str.69, 15

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"F_irst color:"
	.size	.L.str.70, 14

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"S_econd color:"
	.size	.L.str.71, 15

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"Co_lors"
	.size	.L.str.72, 8

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"Blend Settings"
	.size	.L.str.73, 15

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"Gradient"
	.size	.L.str.74, 9

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"L_inear"
	.size	.L.str.75, 8

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"Bili_near"
	.size	.L.str.76, 10

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"Sin_usoidal"
	.size	.L.str.77, 12

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"_Exponent:"
	.size	.L.str.78, 11

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"_Blend"
	.size	.L.str.79, 7

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"Do _preview"
	.size	.L.str.80, 12

	.type	do_preview,@object      # @do_preview
	.data
	.align	4
do_preview:
	.long	1                       # 0x1
	.size	do_preview, 4

	.type	sinus_do_preview.theWidget,@object # @sinus_do_preview.theWidget
	.local	sinus_do_preview.theWidget
	.comm	sinus_do_preview.theWidget,8,8

	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
