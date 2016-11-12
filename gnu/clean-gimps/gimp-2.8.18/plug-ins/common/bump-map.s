	.text
	.file	"bump-map.bc"
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
	movabsq	$.L.str.28, %rdi
	movabsq	$.L.str.29, %rsi
	movabsq	$.L.str.30, %rdx
	movabsq	$.L.str.31, %rax
	movabsq	$.L.str.32, %r9
	movabsq	$.L.str.33, %rcx
	movabsq	$.L.str.34, %r8
	movl	$1, %r10d
	movl	$14, %r11d
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
	movl	$14, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%r14, 40(%rsp)
	movq	$0, 48(%rsp)
	movq	%r12, -64(%rbp)         # 8-byte Spill
	movl	%ebx, -68(%rbp)         # 4-byte Spill
	movl	%r10d, -72(%rbp)        # 4-byte Spill
	movl	%r11d, -76(%rbp)        # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.28, %rdi
	movabsq	$.L.str.35, %rsi
	callq	gimp_plugin_menu_register
	movabsq	$.L.str.36, %rdi
	movabsq	$.L.str.37, %rsi
	movabsq	$.L.str.38, %rdx
	movabsq	$.L.str.31, %rcx
	movabsq	$.L.str.32, %r9
	xorl	%r10d, %r10d
	movl	%r10d, %r8d
	movabsq	$.L.str.34, %r14
	movl	$1, %r10d
	movl	$14, %r11d
	xorl	%ebx, %ebx
	movabsq	$query.args, %r12
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	movq	-88(%rbp), %r13         # 8-byte Reload
	movq	%r8, -96(%rbp)          # 8-byte Spill
	movq	%r13, %r8
	movq	$0, (%rsp)
	movq	%r14, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$14, 24(%rsp)
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
# BB#1:                                 # %do.body
	callq	gimp_locale_directory
	movabsq	$.L.str.39, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.39, %rdi
	movabsq	$.L.str.40, %rsi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.39, %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	textdomain
	movq	%rax, -72(%rbp)         # 8-byte Spill
# BB#2:                                 # %do.end
	movabsq	$run.values, %rax
	movl	$3, -48(%rbp)
	movq	-24(%rbp), %rcx
	movl	8(%rcx), %edx
	movl	%edx, -44(%rbp)
	movl	$21, run.values
	movl	-48(%rbp), %edx
	movl	%edx, run.values+8
	movq	-32(%rbp), %rcx
	movl	$1, (%rcx)
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	movl	88(%rax), %edi
	callq	gimp_drawable_get
	movabsq	$sel_x1, %rsi
	movabsq	$sel_y1, %rdx
	movabsq	$sel_width, %rcx
	movabsq	$sel_height, %r8
	movq	%rax, drawable
	movq	drawable, %rax
	movl	(%rax), %edi
	callq	gimp_drawable_mask_intersect
	cmpl	$0, %eax
	jne	.LBB1_4
# BB#3:                                 # %if.then
	jmp	.LBB1_25
.LBB1_4:                                # %if.end
	movl	sel_width(%rip), %eax
	movl	sel_x1(%rip), %ecx
	addl	%ecx, %eax
	movl	%eax, sel_x2(%rip)
	movl	sel_height(%rip), %eax
	movl	sel_y1(%rip), %ecx
	addl	%ecx, %eax
	movl	%eax, sel_y2(%rip)
	movq	drawable(%rip), %rdx
	movl	(%rdx), %edi
	callq	gimp_drawable_bpp
	movl	%eax, img_bpp(%rip)
	movq	drawable(%rip), %rdx
	movl	(%rdx), %edi
	callq	gimp_drawable_has_alpha
	movl	%eax, img_has_alpha(%rip)
	movl	-44(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
	je	.LBB1_5
	jmp	.LBB1_26
.LBB1_26:                               # %if.end
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -80(%rbp)         # 4-byte Spill
	je	.LBB1_8
	jmp	.LBB1_27
.LBB1_27:                               # %if.end
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	je	.LBB1_12
	jmp	.LBB1_13
.LBB1_5:                                # %sw.bb
	movabsq	$bmvals, %rax
	movq	-8(%rbp), %rdi
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movl	%eax, -88(%rbp)         # 4-byte Spill
	callq	bumpmap_dialog
	cmpl	$0, %eax
	jne	.LBB1_7
# BB#6:                                 # %if.then.16
	jmp	.LBB1_25
.LBB1_7:                                # %if.end.17
	jmp	.LBB1_14
.LBB1_8:                                # %sw.bb.18
	cmpl	$14, -12(%rbp)
	je	.LBB1_10
# BB#9:                                 # %if.then.19
	movl	$1, -48(%rbp)
	jmp	.LBB1_11
.LBB1_10:                               # %if.else
	movq	-24(%rbp), %rax
	movl	128(%rax), %ecx
	movl	%ecx, bmvals
	movq	-24(%rbp), %rax
	movsd	168(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, bmvals+8
	movq	-24(%rbp), %rax
	movsd	208(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, bmvals+16
	movq	-24(%rbp), %rax
	movl	248(%rax), %ecx
	movl	%ecx, bmvals+24
	movq	-24(%rbp), %rax
	movl	288(%rax), %ecx
	movl	%ecx, bmvals+28
	movq	-24(%rbp), %rax
	movl	328(%rax), %ecx
	movl	%ecx, bmvals+32
	movq	-24(%rbp), %rax
	movl	368(%rax), %ecx
	movl	%ecx, bmvals+36
	movq	-24(%rbp), %rax
	movl	408(%rax), %ecx
	movl	%ecx, bmvals+40
	movq	-24(%rbp), %rax
	movl	448(%rax), %ecx
	movl	%ecx, bmvals+44
	movq	-24(%rbp), %rax
	movl	488(%rax), %ecx
	movl	%ecx, bmvals+48
	movq	-24(%rbp), %rax
	movl	528(%rax), %ecx
	movl	%ecx, bmvals+52
	movq	-8(%rbp), %rdi
	movl	$.L.str.36, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %eax
	movl	%eax, bmvals+56
.LBB1_11:                               # %if.end.54
	jmp	.LBB1_14
.LBB1_12:                               # %sw.bb.55
	movabsq	$bmvals, %rax
	movq	-8(%rbp), %rdi
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movl	%eax, -92(%rbp)         # 4-byte Spill
	jmp	.LBB1_14
.LBB1_13:                               # %sw.default
	jmp	.LBB1_14
.LBB1_14:                               # %sw.epilog
	cmpl	$3, -48(%rbp)
	jne	.LBB1_23
# BB#15:                                # %if.then.59
	movq	drawable, %rax
	movl	(%rax), %edi
	callq	gimp_drawable_is_rgb
	cmpl	$0, %eax
	jne	.LBB1_17
# BB#16:                                # %lor.lhs.false
	movq	drawable, %rax
	movl	(%rax), %edi
	callq	gimp_drawable_is_gray
	cmpl	$0, %eax
	je	.LBB1_22
.LBB1_17:                               # %if.then.66
	callq	bumpmap
	cmpl	$1, -44(%rbp)
	je	.LBB1_19
# BB#18:                                # %if.then.69
	callq	gimp_displays_flush
	movl	%eax, -96(%rbp)         # 4-byte Spill
.LBB1_19:                               # %if.end.71
	cmpl	$0, -44(%rbp)
	jne	.LBB1_21
# BB#20:                                # %if.then.74
	movabsq	$bmvals, %rax
	movl	$64, %edx
	movq	-8(%rbp), %rdi
	movq	%rax, %rsi
	callq	gimp_procedural_db_set_data
	movl	%eax, -100(%rbp)        # 4-byte Spill
.LBB1_21:                               # %if.end.76
	jmp	.LBB1_22
.LBB1_22:                               # %if.end.77
	jmp	.LBB1_24
.LBB1_23:                               # %if.else.78
	movl	$0, -48(%rbp)
.LBB1_24:                               # %if.end.79
	movl	-48(%rbp), %eax
	movl	%eax, run.values+8
	movq	drawable, %rdi
	callq	gimp_drawable_detach
.LBB1_25:                               # %return
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
	.quad	4643176031446892544     # double 255
.LCPI3_1:
	.quad	4607182418800017408     # double 1
.LCPI3_2:
	.quad	4620693217682128896     # double 8
.LCPI3_3:
	.quad	-4571364728013586432    # double -1000
.LCPI3_4:
	.quad	4652016104934211584     # double 1001
.LCPI3_5:
	.quad	4621819117588971520     # double 10
.LCPI3_6:
	.quad	-4556648864387432448    # double -1.0E+4
.LCPI3_7:
	.quad	4666723722223157248     # double 10001
.LCPI3_8:
	.quad	4634274385308418048     # double 65
.LCPI3_9:
	.quad	4617315517961601024     # double 5
.LCPI3_10:
	.quad	4602678819172646912     # double 0.5
.LCPI3_11:
	.quad	4636033603912859648     # double 90
.LCPI3_12:
	.quad	4645040803167600640     # double 360
.LCPI3_13:
	.quad	4624633867356078080     # double 15
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI3_14:
	.long	1056964608              # float 0.5
	.text
	.align	16, 0x90
	.type	bumpmap_dialog,@function
bumpmap_dialog:                         # @bumpmap_dialog
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
	subq	$1232, %rsp             # imm = 0x4D0
.Ltmp17:
	.cfi_offset %rbx, -32
.Ltmp18:
	.cfi_offset %r14, -24
	movabsq	$.L.str.6, %rdi
	movl	$1, %esi
	movl	$0, -96(%rbp)
	callq	gimp_ui_init
	movabsq	$.L.str.41, %rdi
	callq	gettext
	movabsq	$.L.str.42, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	movabsq	$gimp_standard_help_func, %r8
	movabsq	$.L.str.28, %r9
	movabsq	$.L.str.43, %rdi
	movl	$4294967290, %r10d      # imm = 0xFFFFFFFA
	movabsq	$.L.str.44, %r11
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
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
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
	movq	-24(%rbp), %rdi
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_window_set_transient
	xorl	%edi, %edi
	callq	gtk_paned_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-24(%rbp), %rax
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
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movl	%ecx, %esi
	callq	gtk_box_new
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_paned_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	xorl	%ecx, %ecx
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_paned_pack1
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movl	$1, %edi
	xorl	%esi, %esi
	callq	gtk_box_new
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-40(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -180(%rbp)        # 4-byte Spill
	movl	-180(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_end
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	drawable, %rdi
	callq	gimp_drawable_preview_new
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
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
	movabsq	$.L.str.45, %rsi
	movabsq	$dialog_update_preview, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	xorl	%r9d, %r9d
	movq	-56(%rbp), %r11
	movq	%rdi, -200(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %rdx
	movq	-200(%rbp), %rcx        # 8-byte Reload
	movq	-200(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	movq	-56(%rbp), %rcx
	movq	%rax, -208(%rbp)        # 8-byte Spill
	movq	%rcx, -216(%rbp)        # 8-byte Spill
	callq	gimp_preview_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.46, %rsi
	movabsq	$dialog_preview_events, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	136(%rax), %rax
	movq	-56(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rdx, -224(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-224(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	xorl	%r9d, %r9d
	movl	%r9d, %edi
	movl	%r9d, %esi
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gtk_box_new
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gtk_paned_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	callq	gtk_paned_pack2
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movl	$1, %edi
	xorl	%esi, %esi
	callq	gtk_box_new
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-40(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -260(%rbp)        # 4-byte Spill
	movl	-260(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movl	$1, %edi
	xorl	%esi, %esi
	callq	gtk_box_new
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
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
	movl	$12, %edi
	movl	$3, %esi
	xorl	%edx, %edx
	callq	gtk_table_new
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-64(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-48(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -300(%rbp)        # 4-byte Spill
	movl	-300(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$dialog_constrain, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	callq	gimp_drawable_combo_box_new
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$dialog_bumpmap_callback, %rsi
	movl	bmvals, %ecx
	movq	-56(%rbp), %rdi
	movq	%rdi, -320(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -328(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movq	-328(%rbp), %rdx        # 8-byte Reload
	movq	-320(%rbp), %rcx        # 8-byte Reload
	callq	gimp_int_combo_box_connect
	movq	-64(%rbp), %rcx
	movq	%rax, -336(%rbp)        # 8-byte Spill
	movq	%rcx, -344(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.47, %rdi
	movl	-96(%rbp), %r8d
	movl	%r8d, %r9d
	addl	$1, %r9d
	movl	%r9d, -96(%rbp)
	movl	%r8d, -348(%rbp)        # 4-byte Spill
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	xorps	%xmm0, %xmm0
	movss	.LCPI3_14, %xmm1        # xmm1 = mem[0],zero,zero,zero
	movl	$2, %r9d
	movq	-72(%rbp), %r8
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movl	-348(%rbp), %edx        # 4-byte Reload
	movq	%rax, %rcx
	movl	$0, (%rsp)
	callq	gimp_table_attach_aligned
	movabsq	$.L.str.48, %rdi
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.49, %rdi
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.50, %rdi
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$1, %ecx
	movl	$2, %r9d
	xorl	%edx, %edx
	movl	%edx, %edi
	movq	-376(%rbp), %r8         # 8-byte Reload
	movq	%rdi, -392(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movq	-384(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %r8
	movq	$0, (%rsp)
	movb	$0, %al
	callq	gimp_int_combo_box_new
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$dialog_maptype_callback, %rdx
	movl	bmvals+52, %esi
	movq	-56(%rbp), %rdi
	movq	%rdi, -408(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-408(%rbp), %rcx        # 8-byte Reload
	callq	gimp_int_combo_box_connect
	movq	-64(%rbp), %rcx
	movq	%rax, -416(%rbp)        # 8-byte Spill
	movq	%rcx, -424(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-424(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.51, %rdi
	movl	-96(%rbp), %edx
	movl	%edx, -428(%rbp)        # 4-byte Spill
	movq	%rax, -440(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	xorps	%xmm0, %xmm0
	movss	.LCPI3_14, %xmm1        # xmm1 = mem[0],zero,zero,zero
	movl	$2, %r9d
	movq	-72(%rbp), %r8
	movq	-440(%rbp), %rdi        # 8-byte Reload
	movl	-428(%rbp), %edx        # 4-byte Reload
	movq	%rax, %rcx
	movl	$0, (%rsp)
	callq	gimp_table_attach_aligned
	movq	-64(%rbp), %rcx
	movq	%rax, -448(%rbp)        # 8-byte Spill
	movq	%rcx, -456(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-456(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %edx
	movl	-96(%rbp), %r9d
	movl	%r9d, %r10d
	addl	$1, %r10d
	movl	%r10d, -96(%rbp)
	movq	%rax, %rdi
	movl	%r9d, %esi
	callq	gtk_table_set_row_spacing
	movabsq	$.L.str.52, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_mnemonic
	movq	%rax, -80(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -464(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-464(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	$3, %ecx
	movq	-80(%rbp), %rsi
	movl	-96(%rbp), %r8d
	movl	-96(%rbp), %r9d
	addl	$1, %r9d
	movq	%rax, %rdi
	callq	gtk_table_attach_defaults
	movq	-80(%rbp), %rdi
	callq	gtk_widget_show
	movl	-96(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -96(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -472(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-472(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	bmvals+44, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movabsq	$.L.str.53, %rsi
	movabsq	$gimp_toggle_button_update, %rax
	movabsq	$bmvals, %rdi
	addq	$44, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-80(%rbp), %r11
	movq	%rdi, -480(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %rdx
	movq	-480(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.53, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-80(%rbp), %rdx
	movq	-56(%rbp), %rdi
	movq	%rdi, -488(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-488(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -496(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.54, %rdi
	movq	%rax, -504(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_mnemonic
	movq	%rax, -80(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -512(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-512(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	$3, %ecx
	movq	-80(%rbp), %rsi
	movl	-96(%rbp), %r8d
	movl	-96(%rbp), %r9d
	addl	$1, %r9d
	movq	%rax, %rdi
	callq	gtk_table_attach_defaults
	movq	-80(%rbp), %rdi
	callq	gtk_widget_show
	movl	-96(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -96(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -520(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-520(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	bmvals+48, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movabsq	$.L.str.53, %rsi
	movabsq	$gimp_toggle_button_update, %rax
	movabsq	$bmvals, %rdi
	addq	$48, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-80(%rbp), %r11
	movq	%rdi, -528(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %rdx
	movq	-528(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.53, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-80(%rbp), %rdx
	movq	-56(%rbp), %rdi
	movq	%rdi, -536(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-536(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -544(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.55, %rdi
	movq	%rax, -552(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_mnemonic
	movq	%rax, -80(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -560(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-560(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	$3, %ecx
	movq	-80(%rbp), %rsi
	movl	-96(%rbp), %r8d
	movl	-96(%rbp), %r9d
	addl	$1, %r9d
	movq	%rax, %rdi
	callq	gtk_table_attach_defaults
	movq	-80(%rbp), %rdi
	callq	gtk_widget_show
	movq	-64(%rbp), %rax
	movq	%rax, -568(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-568(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %edx
	movl	-96(%rbp), %ecx
	movl	%ecx, %r8d
	addl	$1, %r8d
	movl	%r8d, -96(%rbp)
	movq	%rax, %rdi
	movl	%ecx, %esi
	callq	gtk_table_set_row_spacing
	movq	-80(%rbp), %rax
	movq	%rax, -576(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-576(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	bmvals+56, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movabsq	$.L.str.53, %rsi
	movabsq	$gimp_toggle_button_update, %rax
	movabsq	$bmvals, %rdi
	addq	$56, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-80(%rbp), %r11
	movq	%rdi, -584(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %rdx
	movq	-584(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.53, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-80(%rbp), %rdx
	movq	-56(%rbp), %rdi
	movq	%rdi, -592(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-592(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -600(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-64(%rbp), %rcx
	movq	%rax, -608(%rbp)        # 8-byte Spill
	movq	%rcx, -616(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-616(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.56, %rdi
	movl	-96(%rbp), %r9d
	movl	%r9d, %r10d
	addl	$1, %r10d
	movl	%r10d, -96(%rbp)
	movl	%r9d, -620(%rbp)        # 4-byte Spill
	movq	%rax, -632(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$100, %r8d
	movl	$6, %r9d
	xorps	%xmm0, %xmm0
	movsd	.LCPI3_12, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI3_1, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI3_13, %xmm4        # xmm4 = mem[0],zero
	movl	$2, %r10d
	movl	$1, %ebx
	xorl	%r14d, %r14d
	movl	%r14d, %ecx
	movsd	bmvals+8, %xmm1         # xmm1 = mem[0],zero
	movq	-632(%rbp), %rdi        # 8-byte Reload
	movl	-620(%rbp), %edx        # 4-byte Reload
	movq	%rcx, -640(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movsd	%xmm0, -648(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-648(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	$2, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-648(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-648(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%ebx, -652(%rbp)        # 4-byte Spill
	movl	%r10d, -656(%rbp)       # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.57, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	movabsq	$bmvals, %rdi
	addq	$8, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rdi, -664(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-664(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.57, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-88(%rbp), %rdx
	movq	-56(%rbp), %rdi
	movq	%rdi, -672(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-672(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -680(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-64(%rbp), %rcx
	movq	%rax, -688(%rbp)        # 8-byte Spill
	movq	%rcx, -696(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-696(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.58, %rdi
	movl	-96(%rbp), %r9d
	movl	%r9d, %r10d
	addl	$1, %r10d
	movl	%r10d, -96(%rbp)
	movl	%r9d, -700(%rbp)        # 4-byte Spill
	movq	%rax, -712(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$100, %r8d
	movl	$6, %r9d
	movsd	.LCPI3_10, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI3_11, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI3_1, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI3_9, %xmm4         # xmm4 = mem[0],zero
	movl	$2, %r10d
	movl	$1, %ebx
	xorps	%xmm0, %xmm0
	xorl	%r14d, %r14d
	movl	%r14d, %ecx
	movsd	bmvals+16, %xmm5        # xmm5 = mem[0],zero
	movq	-712(%rbp), %rdi        # 8-byte Reload
	movl	-700(%rbp), %edx        # 4-byte Reload
	movq	%rcx, -720(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movsd	%xmm0, -728(%rbp)       # 8-byte Spill
	movaps	%xmm5, %xmm0
	movl	$2, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-728(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-728(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r10d, -732(%rbp)       # 4-byte Spill
	movl	%ebx, -736(%rbp)        # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.57, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	movabsq	$bmvals, %rdi
	addq	$16, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rdi, -744(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-744(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.57, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-88(%rbp), %rdx
	movq	-56(%rbp), %rdi
	movq	%rdi, -752(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-752(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -760(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-64(%rbp), %rcx
	movq	%rax, -768(%rbp)        # 8-byte Spill
	movq	%rcx, -776(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-776(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.59, %rdi
	movl	-96(%rbp), %edx
	movl	%edx, -780(%rbp)        # 4-byte Spill
	movq	%rax, -792(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$100, %r8d
	movl	$6, %r9d
	movsd	.LCPI3_1, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI3_8, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI3_9, %xmm4         # xmm4 = mem[0],zero
	movl	$1, %edx
	xorps	%xmm1, %xmm1
	xorl	%r10d, %r10d
	movl	%r10d, %ecx
	cvtsi2sdl	bmvals+24, %xmm3
	movq	-792(%rbp), %rdi        # 8-byte Reload
	movl	-780(%rbp), %r10d       # 4-byte Reload
	movl	%edx, -796(%rbp)        # 4-byte Spill
	movl	%r10d, %edx
	movq	%rcx, -808(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movsd	%xmm0, -816(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm0
	movsd	-816(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	%xmm1, -824(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm1
	movl	$0, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-824(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-824(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	callq	gimp_scale_entry_new
	movabsq	$.L.str.57, %rsi
	movabsq	$gimp_int_adjustment_update, %rcx
	movabsq	$bmvals, %rdi
	addq	$24, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rdi, -832(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-832(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.57, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-88(%rbp), %rdx
	movq	-56(%rbp), %rdi
	movq	%rdi, -840(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-840(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -848(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-64(%rbp), %rcx
	movq	%rax, -856(%rbp)        # 8-byte Spill
	movq	%rcx, -864(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-864(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %edx
	movl	-96(%rbp), %r9d
	movl	%r9d, %r10d
	addl	$1, %r10d
	movl	%r10d, -96(%rbp)
	movq	%rax, %rdi
	movl	%r9d, %esi
	callq	gtk_table_set_row_spacing
	movq	-64(%rbp), %rax
	movq	%rax, -872(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-872(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.60, %rdi
	movl	-96(%rbp), %edx
	movl	%edx, %r9d
	addl	$1, %r9d
	movl	%r9d, -96(%rbp)
	movl	%edx, -876(%rbp)        # 4-byte Spill
	movq	%rax, -888(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.61, %rdi
	cvtsi2sdl	bmvals+28, %xmm0
	movq	%rax, -896(%rbp)        # 8-byte Spill
	movsd	%xmm0, -904(%rbp)       # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$100, %r8d
	movl	$6, %r9d
	movsd	.LCPI3_3, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI3_4, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI3_1, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI3_5, %xmm4         # xmm4 = mem[0],zero
	movsd	.LCPI3_6, %xmm5         # xmm5 = mem[0],zero
	movsd	.LCPI3_7, %xmm6         # xmm6 = mem[0],zero
	xorl	%edx, %edx
	movl	%edx, %ecx
	movq	-888(%rbp), %rdi        # 8-byte Reload
	movl	-876(%rbp), %edx        # 4-byte Reload
	movq	-896(%rbp), %r11        # 8-byte Reload
	movq	%rcx, -912(%rbp)        # 8-byte Spill
	movq	%r11, %rcx
	movsd	-904(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	movq	%rax, 16(%rsp)
	movq	$0, 24(%rsp)
	callq	gimp_scale_entry_new
	movabsq	$.L.str.57, %rsi
	movabsq	$gimp_int_adjustment_update, %rcx
	movabsq	$bmvals, %rdi
	addq	$28, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -88(%rbp)
	movq	%rax, bmint+16
	movq	-88(%rbp), %rax
	movq	%rdi, -920(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-920(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.57, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-88(%rbp), %rdx
	movq	-56(%rbp), %rdi
	movq	%rdi, -928(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-928(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -936(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-64(%rbp), %rcx
	movq	%rax, -944(%rbp)        # 8-byte Spill
	movq	%rcx, -952(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-952(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.62, %rdi
	movl	-96(%rbp), %edx
	movl	%edx, -956(%rbp)        # 4-byte Spill
	movq	%rax, -968(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.61, %rdi
	cvtsi2sdl	bmvals+32, %xmm0
	movq	%rax, -976(%rbp)        # 8-byte Spill
	movsd	%xmm0, -984(%rbp)       # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$100, %r8d
	movl	$6, %r9d
	movsd	.LCPI3_3, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI3_4, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI3_1, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI3_5, %xmm4         # xmm4 = mem[0],zero
	movsd	.LCPI3_6, %xmm5         # xmm5 = mem[0],zero
	movsd	.LCPI3_7, %xmm6         # xmm6 = mem[0],zero
	xorl	%edx, %edx
	movl	%edx, %ecx
	movq	-968(%rbp), %rdi        # 8-byte Reload
	movl	-956(%rbp), %edx        # 4-byte Reload
	movq	-976(%rbp), %r11        # 8-byte Reload
	movq	%rcx, -992(%rbp)        # 8-byte Spill
	movq	%r11, %rcx
	movsd	-984(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	movq	%rax, 16(%rsp)
	movq	$0, 24(%rsp)
	callq	gimp_scale_entry_new
	movabsq	$.L.str.57, %rsi
	movabsq	$gimp_int_adjustment_update, %rcx
	movabsq	$bmvals, %rdi
	addq	$32, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -88(%rbp)
	movq	%rax, bmint+24
	movq	-88(%rbp), %rax
	movq	%rdi, -1000(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-1000(%rbp), %rcx       # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.57, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-88(%rbp), %rdx
	movq	-56(%rbp), %rdi
	movq	%rdi, -1008(%rbp)       # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-1008(%rbp), %rcx       # 8-byte Reload
	movq	%rax, -1016(%rbp)       # 8-byte Spill
	callq	g_signal_connect_data
	movq	-64(%rbp), %rcx
	movq	%rax, -1024(%rbp)       # 8-byte Spill
	movq	%rcx, -1032(%rbp)       # 8-byte Spill
	callq	gtk_table_get_type
	movq	-1032(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %edx
	movl	-96(%rbp), %r9d
	movl	%r9d, %r10d
	addl	$1, %r10d
	movl	%r10d, -96(%rbp)
	movq	%rax, %rdi
	movl	%r9d, %esi
	callq	gtk_table_set_row_spacing
	movq	-64(%rbp), %rax
	movq	%rax, -1040(%rbp)       # 8-byte Spill
	callq	gtk_table_get_type
	movq	-1040(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.63, %rdi
	movl	-96(%rbp), %edx
	movl	%edx, %r9d
	addl	$1, %r9d
	movl	%r9d, -96(%rbp)
	movl	%edx, -1044(%rbp)       # 4-byte Spill
	movq	%rax, -1056(%rbp)       # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$100, %r8d
	movl	$6, %r9d
	xorps	%xmm0, %xmm0
	movsd	.LCPI3_0, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI3_1, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI3_2, %xmm4         # xmm4 = mem[0],zero
	movl	$1, %edx
	xorl	%r10d, %r10d
	movl	%r10d, %ecx
	cvtsi2sdl	bmvals+36, %xmm1
	movq	-1056(%rbp), %rdi       # 8-byte Reload
	movl	-1044(%rbp), %r10d      # 4-byte Reload
	movl	%edx, -1060(%rbp)       # 4-byte Spill
	movl	%r10d, %edx
	movq	%rcx, -1072(%rbp)       # 8-byte Spill
	movq	%rax, %rcx
	movsd	%xmm0, -1080(%rbp)      # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-1080(%rbp), %xmm1      # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	$0, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-1080(%rbp), %xmm5      # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-1080(%rbp), %xmm6      # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	callq	gimp_scale_entry_new
	movabsq	$.L.str.57, %rsi
	movabsq	$gimp_int_adjustment_update, %rcx
	movabsq	$bmvals, %rdi
	addq	$36, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rdi, -1088(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-1088(%rbp), %rcx       # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.57, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-88(%rbp), %rdx
	movq	-56(%rbp), %rdi
	movq	%rdi, -1096(%rbp)       # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-1096(%rbp), %rcx       # 8-byte Reload
	movq	%rax, -1104(%rbp)       # 8-byte Spill
	callq	g_signal_connect_data
	movq	-64(%rbp), %rcx
	movq	%rax, -1112(%rbp)       # 8-byte Spill
	movq	%rcx, -1120(%rbp)       # 8-byte Spill
	callq	gtk_table_get_type
	movq	-1120(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.64, %rdi
	movl	-96(%rbp), %r9d
	movl	%r9d, %r10d
	addl	$1, %r10d
	movl	%r10d, -96(%rbp)
	movl	%r9d, -1124(%rbp)       # 4-byte Spill
	movq	%rax, -1136(%rbp)       # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$100, %r8d
	movl	$6, %r9d
	xorps	%xmm0, %xmm0
	movsd	.LCPI3_0, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI3_1, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI3_2, %xmm4         # xmm4 = mem[0],zero
	movl	$1, %r10d
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	cvtsi2sdl	bmvals+40, %xmm1
	movq	-1136(%rbp), %rdi       # 8-byte Reload
	movl	-1124(%rbp), %edx       # 4-byte Reload
	movq	%rcx, -1144(%rbp)       # 8-byte Spill
	movq	%rax, %rcx
	movsd	%xmm0, -1152(%rbp)      # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-1152(%rbp), %xmm1      # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	$0, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-1152(%rbp), %xmm5      # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-1152(%rbp), %xmm6      # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r10d, -1156(%rbp)      # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.57, %rsi
	movabsq	$gimp_int_adjustment_update, %rcx
	movabsq	$bmvals, %rdi
	addq	$40, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rdi, -1168(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-1168(%rbp), %rcx       # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.57, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-88(%rbp), %rdx
	movq	-56(%rbp), %rdi
	movq	%rdi, -1176(%rbp)       # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-1176(%rbp), %rcx       # 8-byte Reload
	movq	%rax, -1184(%rbp)       # 8-byte Spill
	callq	g_signal_connect_data
	cmpl	$-1, bmvals
	movq	%rax, -1192(%rbp)       # 8-byte Spill
	jne	.LBB3_2
# BB#1:                                 # %if.then
	movl	$1, %edi
	callq	dialog_new_bumpmap
	jmp	.LBB3_3
.LBB3_2:                                # %if.else
	xorl	%edi, %edi
	callq	dialog_new_bumpmap
.LBB3_3:                                # %if.end
	movq	-24(%rbp), %rdi
	callq	gtk_widget_show
	movq	-24(%rbp), %rdi
	movq	%rdi, -1200(%rbp)       # 8-byte Spill
	callq	gimp_dialog_get_type
	movq	-1200(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dialog_run
	cmpl	$-5, %eax
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	movl	%eax, -92(%rbp)
	movq	-24(%rbp), %rdi
	callq	gtk_widget_destroy
	movq	bmint+48, %rsi
	cmpq	drawable, %rsi
	je	.LBB3_5
# BB#4:                                 # %if.then.167
	movq	bmint+48, %rdi
	callq	gimp_drawable_detach
.LBB3_5:                                # %if.end.168
	movl	-92(%rbp), %eax
	addq	$1232, %rsp             # imm = 0x4D0
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end3:
	.size	bumpmap_dialog, .Lfunc_end3-bumpmap_dialog
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	bumpmap,@function
bumpmap:                                # @bumpmap
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$744, %rsp              # imm = 0x2E8
.Ltmp22:
	.cfi_offset %rbx, -56
.Ltmp23:
	.cfi_offset %r12, -48
.Ltmp24:
	.cfi_offset %r13, -40
.Ltmp25:
	.cfi_offset %r14, -32
.Ltmp26:
	.cfi_offset %r15, -24
	movabsq	$.L.str.65, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_progress_init
	cmpl	$-1, bmvals
	movl	%eax, -580(%rbp)        # 4-byte Spill
	je	.LBB4_2
# BB#1:                                 # %if.then
	movl	bmvals, %edi
	callq	gimp_drawable_get
	movq	%rax, -336(%rbp)
	jmp	.LBB4_3
.LBB4_2:                                # %if.else
	movq	drawable, %rax
	movq	%rax, -336(%rbp)
.LBB4_3:                                # %if.end
	cmpq	$0, -336(%rbp)
	jne	.LBB4_5
# BB#4:                                 # %if.then.3
	jmp	.LBB4_57
.LBB4_5:                                # %if.end.4
	movq	-336(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_width
	movl	%eax, -484(%rbp)
	movq	-336(%rbp), %rcx
	movl	(%rcx), %edi
	callq	gimp_drawable_height
	movl	%eax, -488(%rbp)
	movq	-336(%rbp), %rcx
	movl	(%rcx), %edi
	callq	gimp_drawable_bpp
	movl	%eax, -492(%rbp)
	movq	-336(%rbp), %rcx
	movl	(%rcx), %edi
	callq	gimp_drawable_has_alpha
	movl	%eax, -496(%rbp)
	movl	sel_x2, %eax
	movl	%eax, -584(%rbp)        # 4-byte Spill
	callq	gimp_tile_width
	movl	-584(%rbp), %edi        # 4-byte Reload
	addl	%eax, %edi
	subl	$1, %edi
	movl	%edi, -588(%rbp)        # 4-byte Spill
	callq	gimp_tile_width
	movl	-588(%rbp), %edi        # 4-byte Reload
	movl	%eax, -592(%rbp)        # 4-byte Spill
	movl	%edi, %eax
	xorl	%edx, %edx
	movl	-592(%rbp), %esi        # 4-byte Reload
	divl	%esi
	addl	$1, %eax
	movl	sel_x1, %r8d
	movl	%eax, -596(%rbp)        # 4-byte Spill
	movl	%r8d, -600(%rbp)        # 4-byte Spill
	callq	gimp_tile_width
	movl	-600(%rbp), %esi        # 4-byte Reload
	movl	%eax, -604(%rbp)        # 4-byte Spill
	movl	%esi, %eax
	xorl	%edi, %edi
	movl	%edi, %edx
	movl	-604(%rbp), %edi        # 4-byte Reload
	divl	%edi
	movl	-596(%rbp), %r8d        # 4-byte Reload
	subl	%eax, %r8d
	movl	%r8d, -572(%rbp)
	movl	-484(%rbp), %eax
	movl	%eax, -608(%rbp)        # 4-byte Spill
	callq	gimp_tile_width
	movl	-608(%rbp), %esi        # 4-byte Reload
	addl	%eax, %esi
	subl	$1, %esi
	movl	%esi, -612(%rbp)        # 4-byte Spill
	callq	gimp_tile_width
	movl	-612(%rbp), %esi        # 4-byte Reload
	movl	%eax, -616(%rbp)        # 4-byte Spill
	movl	%esi, %eax
	xorl	%edi, %edi
	movl	%edi, %edx
	movl	-616(%rbp), %edi        # 4-byte Reload
	divl	%edi
	movl	%eax, -576(%rbp)
	movl	-576(%rbp), %eax
	movl	-572(%rbp), %r8d
	shll	$1, %r8d
	addl	%r8d, %eax
	movslq	%eax, %rdi
	callq	gimp_tile_cache_ntiles
	cmpl	$0, bmvals+56
	je	.LBB4_16
# BB#6:                                 # %if.then.25
	movl	bmvals+32, %eax
	addl	sel_y1, %eax
	cmpl	$0, %eax
	jge	.LBB4_8
# BB#7:                                 # %cond.true
	movl	-488(%rbp), %eax
	subl	$1, %eax
	movl	-488(%rbp), %ecx
	subl	$1, %ecx
	movl	bmvals+32, %edx
	addl	sel_y1, %edx
	subl	%edx, %ecx
	movl	%eax, -620(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	idivl	-488(%rbp)
	movl	-620(%rbp), %ecx        # 4-byte Reload
	subl	%edx, %ecx
	movl	%ecx, -624(%rbp)        # 4-byte Spill
	jmp	.LBB4_9
.LBB4_8:                                # %cond.false
	movl	bmvals+32, %eax
	addl	sel_y1, %eax
	cltd
	idivl	-488(%rbp)
	movl	%edx, -624(%rbp)        # 4-byte Spill
.LBB4_9:                                # %cond.end
	movl	-624(%rbp), %eax        # 4-byte Reload
	movl	%eax, -504(%rbp)
	movl	-504(%rbp), %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB4_11
# BB#10:                                # %cond.true.39
	movl	-488(%rbp), %eax
	subl	$1, %eax
	movl	-488(%rbp), %ecx
	subl	$1, %ecx
	movl	-504(%rbp), %edx
	subl	$1, %edx
	subl	%edx, %ecx
	movl	%eax, -628(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	idivl	-488(%rbp)
	movl	-628(%rbp), %ecx        # 4-byte Reload
	subl	%edx, %ecx
	movl	%ecx, -632(%rbp)        # 4-byte Spill
	jmp	.LBB4_12
.LBB4_11:                               # %cond.false.46
	movl	-504(%rbp), %eax
	subl	$1, %eax
	cltd
	idivl	-488(%rbp)
	movl	%edx, -632(%rbp)        # 4-byte Spill
.LBB4_12:                               # %cond.end.49
	movl	-632(%rbp), %eax        # 4-byte Reload
	movl	%eax, -500(%rbp)
	movl	-504(%rbp), %eax
	addl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB4_14
# BB#13:                                # %cond.true.54
	movl	-488(%rbp), %eax
	subl	$1, %eax
	movl	-488(%rbp), %ecx
	subl	$1, %ecx
	movl	-504(%rbp), %edx
	addl	$1, %edx
	subl	%edx, %ecx
	movl	%eax, -636(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	idivl	-488(%rbp)
	movl	-636(%rbp), %ecx        # 4-byte Reload
	subl	%edx, %ecx
	movl	%ecx, -640(%rbp)        # 4-byte Spill
	jmp	.LBB4_15
.LBB4_14:                               # %cond.false.61
	movl	-504(%rbp), %eax
	addl	$1, %eax
	cltd
	idivl	-488(%rbp)
	movl	%edx, -640(%rbp)        # 4-byte Spill
.LBB4_15:                               # %cond.end.64
	movl	-640(%rbp), %eax        # 4-byte Reload
	movl	%eax, -508(%rbp)
	jmp	.LBB4_29
.LBB4_16:                               # %if.else.66
	movl	bmvals+32, %eax
	addl	sel_y1, %eax
	movl	-488(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jle	.LBB4_18
# BB#17:                                # %cond.true.71
	movl	-488(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -644(%rbp)        # 4-byte Spill
	jmp	.LBB4_22
.LBB4_18:                               # %cond.false.73
	movl	bmvals+32, %eax
	addl	sel_y1, %eax
	cmpl	$0, %eax
	jge	.LBB4_20
# BB#19:                                # %cond.true.77
	xorl	%eax, %eax
	movl	%eax, -648(%rbp)        # 4-byte Spill
	jmp	.LBB4_21
.LBB4_20:                               # %cond.false.78
	movl	bmvals+32, %eax
	addl	sel_y1, %eax
	movl	%eax, -648(%rbp)        # 4-byte Spill
.LBB4_21:                               # %cond.end.80
	movl	-648(%rbp), %eax        # 4-byte Reload
	movl	%eax, -644(%rbp)        # 4-byte Spill
.LBB4_22:                               # %cond.end.82
	movl	-644(%rbp), %eax        # 4-byte Reload
	movl	%eax, -504(%rbp)
	movl	-504(%rbp), %eax
	movl	%eax, -500(%rbp)
	movl	-504(%rbp), %eax
	addl	$1, %eax
	movl	-488(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jle	.LBB4_24
# BB#23:                                # %cond.true.88
	movl	-488(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -652(%rbp)        # 4-byte Spill
	jmp	.LBB4_28
.LBB4_24:                               # %cond.false.90
	movl	-504(%rbp), %eax
	addl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB4_26
# BB#25:                                # %cond.true.94
	xorl	%eax, %eax
	movl	%eax, -656(%rbp)        # 4-byte Spill
	jmp	.LBB4_27
.LBB4_26:                               # %cond.false.95
	movl	-504(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -656(%rbp)        # 4-byte Spill
.LBB4_27:                               # %cond.end.97
	movl	-656(%rbp), %eax        # 4-byte Reload
	movl	%eax, -652(%rbp)        # 4-byte Spill
.LBB4_28:                               # %cond.end.99
	movl	-652(%rbp), %eax        # 4-byte Reload
	movl	%eax, -508(%rbp)
.LBB4_29:                               # %if.end.101
	movl	$1, %eax
	movl	%eax, %esi
	movl	-484(%rbp), %eax
	imull	-492(%rbp), %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	%rax, -520(%rbp)
	movl	-484(%rbp), %ecx
	imull	-492(%rbp), %ecx
	movslq	%ecx, %rdi
	callq	g_malloc_n
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	%rax, -528(%rbp)
	movl	-484(%rbp), %ecx
	imull	-492(%rbp), %ecx
	movslq	%ecx, %rdi
	callq	g_malloc_n
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	%rax, -536(%rbp)
	movl	sel_width, %ecx
	imull	img_bpp, %ecx
	movslq	%ecx, %rdi
	callq	g_malloc_n
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	%rax, -552(%rbp)
	movl	sel_width, %ecx
	imull	img_bpp, %ecx
	movslq	%ecx, %rdi
	callq	g_malloc_n
	leaq	-384(%rbp), %rdi
	xorl	%ecx, %ecx
	movq	%rax, -560(%rbp)
	movq	drawable, %rsi
	movl	sel_x1, %edx
	movl	sel_y1, %r8d
	movl	sel_width, %r9d
	movl	sel_height, %r10d
	movl	%ecx, -660(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	leaq	-432(%rbp), %rdi
	movl	$1, %ecx
	movq	drawable, %rsi
	movl	sel_x1, %edx
	movl	sel_y1, %r8d
	movl	sel_width, %r9d
	movl	sel_height, %r10d
	movl	%ecx, -664(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	callq	gimp_pixel_rgn_init
	leaq	-480(%rbp), %rdi
	xorl	%ecx, %ecx
	movq	-336(%rbp), %rsi
	movl	-484(%rbp), %r8d
	movl	-488(%rbp), %r9d
	movl	%ecx, %edx
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	leaq	-328(%rbp), %rdi
	callq	bumpmap_init_params
	leaq	-480(%rbp), %rdi
	xorl	%edx, %edx
	movq	-520(%rbp), %rsi
	movl	-500(%rbp), %ecx
	movl	-484(%rbp), %r8d
	callq	gimp_pixel_rgn_get_row
	leaq	-480(%rbp), %rdi
	xorl	%edx, %edx
	movq	-528(%rbp), %rsi
	movl	-504(%rbp), %ecx
	movl	-484(%rbp), %r8d
	callq	gimp_pixel_rgn_get_row
	leaq	-480(%rbp), %rdi
	xorl	%edx, %edx
	movq	-536(%rbp), %rsi
	movl	-508(%rbp), %ecx
	movl	-484(%rbp), %r8d
	callq	gimp_pixel_rgn_get_row
	leaq	-328(%rbp), %rax
	movq	-520(%rbp), %rdi
	movl	-484(%rbp), %esi
	movl	-492(%rbp), %edx
	movl	-496(%rbp), %ecx
	addq	$32, %rax
	movq	%rax, %r8
	callq	bumpmap_convert_row
	leaq	-328(%rbp), %rax
	movq	-528(%rbp), %rdi
	movl	-484(%rbp), %esi
	movl	-492(%rbp), %edx
	movl	-496(%rbp), %ecx
	addq	$32, %rax
	movq	%rax, %r8
	callq	bumpmap_convert_row
	leaq	-328(%rbp), %rax
	movq	-536(%rbp), %rdi
	movl	-484(%rbp), %esi
	movl	-492(%rbp), %edx
	movl	-496(%rbp), %ecx
	addq	$32, %rax
	movq	%rax, %r8
	callq	bumpmap_convert_row
	movl	sel_y1, %ecx
	movl	%ecx, -564(%rbp)
	movl	$0, -568(%rbp)
.LBB4_30:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-564(%rbp), %eax
	cmpl	sel_y2, %eax
	jge	.LBB4_54
# BB#31:                                # %for.body
                                        #   in Loop: Header=BB4_30 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	xorl	%eax, %eax
	movl	-564(%rbp), %edx
	subl	bmvals+32, %eax
	cmpl	%eax, %edx
	movb	%cl, -665(%rbp)         # 1-byte Spill
	jl	.LBB4_33
# BB#32:                                # %land.rhs
                                        #   in Loop: Header=BB4_30 Depth=1
	xorl	%eax, %eax
	movl	-564(%rbp), %ecx
	subl	bmvals+32, %eax
	addl	-488(%rbp), %eax
	cmpl	%eax, %ecx
	setl	%dl
	movb	%dl, -665(%rbp)         # 1-byte Spill
.LBB4_33:                               # %land.end
                                        #   in Loop: Header=BB4_30 Depth=1
	movb	-665(%rbp), %al         # 1-byte Reload
	leaq	-384(%rbp), %rdi
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -512(%rbp)
	movq	-552(%rbp), %rsi
	movl	sel_x1, %edx
	movl	-564(%rbp), %ecx
	movl	sel_width, %r8d
	callq	gimp_pixel_rgn_get_row
	leaq	-328(%rbp), %rsi
	movq	-552(%rbp), %rdi
	movq	-560(%rbp), %r9
	movl	sel_width, %edx
	movl	img_bpp, %ecx
	movl	img_has_alpha, %r8d
	movq	-520(%rbp), %r10
	movq	-528(%rbp), %r11
	movq	-536(%rbp), %rbx
	movl	-484(%rbp), %r14d
	movl	bmvals+28, %r15d
	movl	bmvals+56, %r12d
	movl	-512(%rbp), %r13d
	movq	%rsi, -680(%rbp)        # 8-byte Spill
	movq	%r9, %rsi
	movq	%r10, %r9
	movq	%r11, (%rsp)
	movq	%rbx, 8(%rsp)
	movl	%r14d, 16(%rsp)
	movl	%r15d, 24(%rsp)
	movl	%r12d, 32(%rsp)
	movl	%r13d, 40(%rsp)
	movq	-680(%rbp), %r10        # 8-byte Reload
	movq	%r10, 48(%rsp)
	callq	bumpmap_row
	leaq	-432(%rbp), %rdi
	movq	-560(%rbp), %rsi
	movl	sel_x1, %edx
	movl	-564(%rbp), %ecx
	movl	sel_width, %r8d
	callq	gimp_pixel_rgn_set_row
	cmpl	$0, bmvals+56
	jne	.LBB4_35
# BB#34:                                # %lor.lhs.false
                                        #   in Loop: Header=BB4_30 Depth=1
	cmpl	$0, -512(%rbp)
	je	.LBB4_50
.LBB4_35:                               # %if.then.132
                                        #   in Loop: Header=BB4_30 Depth=1
	movq	-520(%rbp), %rax
	movq	%rax, -544(%rbp)
	movq	-528(%rbp), %rax
	movq	%rax, -520(%rbp)
	movq	-536(%rbp), %rax
	movq	%rax, -528(%rbp)
	movq	-544(%rbp), %rax
	movq	%rax, -536(%rbp)
	movl	-504(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -504(%rbp)
	cmpl	-488(%rbp), %ecx
	jne	.LBB4_37
# BB#36:                                # %if.then.135
                                        #   in Loop: Header=BB4_30 Depth=1
	movl	$0, -504(%rbp)
.LBB4_37:                               # %if.end.136
                                        #   in Loop: Header=BB4_30 Depth=1
	cmpl	$0, bmvals+56
	je	.LBB4_42
# BB#38:                                # %if.then.138
                                        #   in Loop: Header=BB4_30 Depth=1
	movl	-504(%rbp), %eax
	addl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB4_40
# BB#39:                                # %cond.true.142
                                        #   in Loop: Header=BB4_30 Depth=1
	movl	-488(%rbp), %eax
	subl	$1, %eax
	movl	-488(%rbp), %ecx
	subl	$1, %ecx
	movl	-504(%rbp), %edx
	addl	$1, %edx
	subl	%edx, %ecx
	movl	%eax, -684(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	idivl	-488(%rbp)
	movl	-684(%rbp), %ecx        # 4-byte Reload
	subl	%edx, %ecx
	movl	%ecx, -688(%rbp)        # 4-byte Spill
	jmp	.LBB4_41
.LBB4_40:                               # %cond.false.149
                                        #   in Loop: Header=BB4_30 Depth=1
	movl	-504(%rbp), %eax
	addl	$1, %eax
	cltd
	idivl	-488(%rbp)
	movl	%edx, -688(%rbp)        # 4-byte Spill
.LBB4_41:                               # %cond.end.152
                                        #   in Loop: Header=BB4_30 Depth=1
	movl	-688(%rbp), %eax        # 4-byte Reload
	movl	%eax, -508(%rbp)
	jmp	.LBB4_49
.LBB4_42:                               # %if.else.154
                                        #   in Loop: Header=BB4_30 Depth=1
	movl	-504(%rbp), %eax
	addl	$1, %eax
	movl	-488(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jle	.LBB4_44
# BB#43:                                # %cond.true.159
                                        #   in Loop: Header=BB4_30 Depth=1
	movl	-488(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -692(%rbp)        # 4-byte Spill
	jmp	.LBB4_48
.LBB4_44:                               # %cond.false.161
                                        #   in Loop: Header=BB4_30 Depth=1
	movl	-504(%rbp), %eax
	addl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB4_46
# BB#45:                                # %cond.true.165
                                        #   in Loop: Header=BB4_30 Depth=1
	xorl	%eax, %eax
	movl	%eax, -696(%rbp)        # 4-byte Spill
	jmp	.LBB4_47
.LBB4_46:                               # %cond.false.166
                                        #   in Loop: Header=BB4_30 Depth=1
	movl	-504(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -696(%rbp)        # 4-byte Spill
.LBB4_47:                               # %cond.end.168
                                        #   in Loop: Header=BB4_30 Depth=1
	movl	-696(%rbp), %eax        # 4-byte Reload
	movl	%eax, -692(%rbp)        # 4-byte Spill
.LBB4_48:                               # %cond.end.170
                                        #   in Loop: Header=BB4_30 Depth=1
	movl	-692(%rbp), %eax        # 4-byte Reload
	movl	%eax, -508(%rbp)
.LBB4_49:                               # %if.end.172
                                        #   in Loop: Header=BB4_30 Depth=1
	leaq	-480(%rbp), %rdi
	xorl	%edx, %edx
	movq	-536(%rbp), %rsi
	movl	-508(%rbp), %ecx
	movl	-484(%rbp), %r8d
	callq	gimp_pixel_rgn_get_row
	leaq	-328(%rbp), %rsi
	movq	-536(%rbp), %rdi
	movl	-484(%rbp), %ecx
	movl	-492(%rbp), %edx
	movl	-496(%rbp), %r8d
	addq	$32, %rsi
	movq	%rsi, -704(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movl	%r8d, %ecx
	movq	-704(%rbp), %r8         # 8-byte Reload
	callq	bumpmap_convert_row
.LBB4_50:                               # %if.end.175
                                        #   in Loop: Header=BB4_30 Depth=1
	movl	$16, %eax
	movl	-568(%rbp), %ecx
	movl	%eax, -708(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-708(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB4_52
# BB#51:                                # %if.then.179
                                        #   in Loop: Header=BB4_30 Depth=1
	cvtsi2sdl	-568(%rbp), %xmm0
	cvtsi2sdl	sel_height, %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -712(%rbp)        # 4-byte Spill
.LBB4_52:                               # %if.end.184
                                        #   in Loop: Header=BB4_30 Depth=1
	jmp	.LBB4_53
.LBB4_53:                               # %for.inc
                                        #   in Loop: Header=BB4_30 Depth=1
	movl	-564(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -564(%rbp)
	movl	-568(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -568(%rbp)
	jmp	.LBB4_30
.LBB4_54:                               # %for.end
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	callq	gimp_progress_update
	movq	-520(%rbp), %rdi
	movl	%eax, -716(%rbp)        # 4-byte Spill
	callq	g_free
	movq	-528(%rbp), %rdi
	callq	g_free
	movq	-536(%rbp), %rdi
	callq	g_free
	movq	-552(%rbp), %rdi
	callq	g_free
	movq	-560(%rbp), %rdi
	callq	g_free
	movq	-336(%rbp), %rdi
	cmpq	drawable, %rdi
	je	.LBB4_56
# BB#55:                                # %if.then.190
	movq	-336(%rbp), %rdi
	callq	gimp_drawable_detach
.LBB4_56:                               # %if.end.191
	movq	drawable, %rdi
	callq	gimp_drawable_flush
	movl	$1, %esi
	movq	drawable, %rdi
	movl	(%rdi), %edi
	callq	gimp_drawable_merge_shadow
	movq	drawable, %rcx
	movl	(%rcx), %edi
	movl	sel_x1, %esi
	movl	sel_y1, %edx
	movl	sel_width, %ecx
	movl	sel_height, %r8d
	movl	%eax, -720(%rbp)        # 4-byte Spill
	callq	gimp_drawable_update
	movl	%eax, -724(%rbp)        # 4-byte Spill
.LBB4_57:                               # %return
	addq	$744, %rsp              # imm = 0x2E8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	bumpmap, .Lfunc_end4-bumpmap
	.cfi_endproc

	.align	16, 0x90
	.type	dialog_update_preview,@function
dialog_update_preview:                  # @dialog_update_preview
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$216, %rsp
.Ltmp30:
	.cfi_offset %rbx, -56
.Ltmp31:
	.cfi_offset %r12, -48
.Ltmp32:
	.cfi_offset %r13, -40
.Ltmp33:
	.cfi_offset %r14, -32
.Ltmp34:
	.cfi_offset %r15, -24
	leaq	-64(%rbp), %rsi
	leaq	-68(%rbp), %rdx
	movq	%rdi, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	gimp_preview_get_position
	leaq	-72(%rbp), %rsi
	leaq	-76(%rbp), %rdx
	movq	-48(%rbp), %rdi
	callq	gimp_preview_get_size
	movabsq	$bmint, %rdx
	addq	$72, %rdx
	xorl	%eax, %eax
	movq	drawable, %rsi
	movl	sel_x1, %ecx
	movl	sel_y1, %r8d
	movl	sel_width, %r9d
	movl	sel_height, %r10d
	movq	%rdx, %rdi
	movl	%ecx, %edx
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	movl	%eax, -88(%rbp)         # 4-byte Spill
	callq	gimp_pixel_rgn_init
	movl	$8, %eax
	movl	%eax, %esi
	movslq	-76(%rbp), %rdi
	callq	g_malloc_n
	movq	%rax, bmint+32
	movl	$0, -60(%rbp)
.LBB5_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-60(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jge	.LBB5_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	$1, %eax
	movl	%eax, %esi
	movl	sel_width, %eax
	shll	$2, %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	movslq	-60(%rbp), %rsi
	movq	bmint+32, %rdi
	movq	%rax, (%rdi,%rsi,8)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB5_1
.LBB5_4:                                # %for.end
	xorl	%edi, %edi
	movl	-76(%rbp), %esi
	movl	-68(%rbp), %edx
	callq	dialog_fill_src_rows
	movl	$8, %edx
	movl	%edx, %esi
	movl	-76(%rbp), %edx
	addl	$2, %edx
	movslq	%edx, %rdi
	callq	g_malloc_n
	movq	%rax, bmint+40
	movl	$0, -60(%rbp)
.LBB5_5:                                # %for.cond.6
                                        # =>This Inner Loop Header: Depth=1
	movl	-60(%rbp), %eax
	movl	-76(%rbp), %ecx
	addl	$2, %ecx
	cmpl	%ecx, %eax
	jge	.LBB5_8
# BB#6:                                 # %for.body.10
                                        #   in Loop: Header=BB5_5 Depth=1
	movl	$1, %eax
	movl	%eax, %esi
	movl	bmint+56, %eax
	imull	bmint+64, %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	movslq	-60(%rbp), %rsi
	movq	bmint+40, %rdi
	movq	%rax, (%rdi,%rsi,8)
# BB#7:                                 # %for.inc.16
                                        #   in Loop: Header=BB5_5 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB5_5
.LBB5_8:                                # %for.end.18
	movabsq	$bmint, %rax
	addq	$168, %rax
	movq	%rax, %rdi
	callq	bumpmap_init_params
	xorl	%edi, %edi
	movl	-76(%rbp), %esi
	movl	bmvals+32, %ecx
	addl	-68(%rbp), %ecx
	movl	%ecx, %edx
	callq	dialog_fill_bumpmap_rows
	movl	$1, %ecx
	movl	%ecx, %esi
	movl	-72(%rbp), %ecx
	imull	-76(%rbp), %ecx
	shll	$2, %ecx
	movslq	%ecx, %rdi
	callq	g_malloc_n
	movq	%rax, -56(%rbp)
	movl	$0, -60(%rbp)
.LBB5_9:                                # %for.cond.24
                                        # =>This Inner Loop Header: Depth=1
	movl	-60(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jge	.LBB5_18
# BB#10:                                # %for.body.27
                                        #   in Loop: Header=BB5_9 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	xorl	%eax, %eax
	movl	-60(%rbp), %edx
	subl	bmvals+32, %eax
	subl	-68(%rbp), %eax
	cmpl	%eax, %edx
	movb	%cl, -89(%rbp)          # 1-byte Spill
	jne	.LBB5_12
# BB#11:                                # %land.rhs
                                        #   in Loop: Header=BB5_9 Depth=1
	cmpl	$0, bmvals+56
	setne	%al
	xorb	$-1, %al
	movb	%al, -89(%rbp)          # 1-byte Spill
.LBB5_12:                               # %land.end
                                        #   in Loop: Header=BB5_9 Depth=1
	movb	-89(%rbp), %al          # 1-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	xorl	%ecx, %ecx
	movl	$1, %esi
	testb	$1, %al
	movl	%ecx, %edi
	cmovnel	%esi, %edi
	movl	%edi, -80(%rbp)
	movl	-60(%rbp), %esi
	subl	bmvals+32, %ecx
	subl	-68(%rbp), %ecx
	addl	bmint+60, %ecx
	subl	$1, %ecx
	cmpl	%ecx, %esi
	movb	%dl, -90(%rbp)          # 1-byte Spill
	jne	.LBB5_14
# BB#13:                                # %land.rhs.37
                                        #   in Loop: Header=BB5_9 Depth=1
	cmpl	$0, bmvals+56
	setne	%al
	xorb	$-1, %al
	movb	%al, -90(%rbp)          # 1-byte Spill
.LBB5_14:                               # %land.end.40
                                        #   in Loop: Header=BB5_9 Depth=1
	movb	-90(%rbp), %al          # 1-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	xorl	%ecx, %ecx
	movl	$1, %esi
	testb	$1, %al
	movl	%ecx, %edi
	cmovnel	%esi, %edi
	movl	%edi, -84(%rbp)
	movslq	-60(%rbp), %r8
	movq	bmint+32, %r9
	movq	(%r9,%r8,8), %r8
	movl	-64(%rbp), %esi
	shll	$2, %esi
	movslq	%esi, %r9
	addq	%r9, %r8
	movq	-56(%rbp), %r9
	movl	-72(%rbp), %esi
	shll	$2, %esi
	imull	-60(%rbp), %esi
	movslq	%esi, %r10
	addq	%r10, %r9
	movl	-72(%rbp), %esi
	movl	-60(%rbp), %edi
	addl	-80(%rbp), %edi
	movslq	%edi, %r10
	movq	bmint+40, %r11
	movq	(%r11,%r10,8), %r10
	movl	-60(%rbp), %edi
	addl	$1, %edi
	movslq	%edi, %r11
	movq	bmint+40, %rbx
	movq	(%rbx,%r11,8), %r11
	movl	-60(%rbp), %edi
	addl	$2, %edi
	subl	-84(%rbp), %edi
	movslq	%edi, %rbx
	movq	bmint+40, %r14
	movq	(%r14,%rbx,8), %rbx
	movl	bmint+56, %edi
	movl	bmvals+28, %r15d
	addl	-64(%rbp), %r15d
	movl	bmvals+56, %r12d
	movl	-60(%rbp), %r13d
	subl	bmvals+32, %ecx
	subl	-68(%rbp), %ecx
	cmpl	%ecx, %r13d
	movl	%r12d, -96(%rbp)        # 4-byte Spill
	movl	%r15d, -100(%rbp)       # 4-byte Spill
	movq	%r8, -112(%rbp)         # 8-byte Spill
	movq	%r9, -120(%rbp)         # 8-byte Spill
	movl	%esi, -124(%rbp)        # 4-byte Spill
	movq	%r10, -136(%rbp)        # 8-byte Spill
	movq	%r11, -144(%rbp)        # 8-byte Spill
	movq	%rbx, -152(%rbp)        # 8-byte Spill
	movl	%edi, -156(%rbp)        # 4-byte Spill
	movb	%dl, -157(%rbp)         # 1-byte Spill
	jl	.LBB5_16
# BB#15:                                # %land.rhs.64
                                        #   in Loop: Header=BB5_9 Depth=1
	xorl	%eax, %eax
	movl	-60(%rbp), %ecx
	subl	bmvals+32, %eax
	subl	-68(%rbp), %eax
	addl	bmint+60, %eax
	cmpl	%eax, %ecx
	setl	%dl
	movb	%dl, -157(%rbp)         # 1-byte Spill
.LBB5_16:                               # %land.end.70
                                        #   in Loop: Header=BB5_9 Depth=1
	movb	-157(%rbp), %al         # 1-byte Reload
	movl	$4, %ecx
	movl	$1, %r8d
	movabsq	$bmint, %rdx
	addq	$168, %rdx
	andb	$1, %al
	movzbl	%al, %esi
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	-120(%rbp), %r9         # 8-byte Reload
	movl	%esi, -164(%rbp)        # 4-byte Spill
	movq	%r9, %rsi
	movl	-124(%rbp), %r10d       # 4-byte Reload
	movq	%rdx, -176(%rbp)        # 8-byte Spill
	movl	%r10d, %edx
	movq	-136(%rbp), %r9         # 8-byte Reload
	movq	-144(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	movq	-152(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, 8(%rsp)
	movl	-156(%rbp), %r14d       # 4-byte Reload
	movl	%r14d, 16(%rsp)
	movl	-100(%rbp), %r15d       # 4-byte Reload
	movl	%r15d, 24(%rsp)
	movl	-96(%rbp), %r12d        # 4-byte Reload
	movl	%r12d, 32(%rsp)
	movl	-164(%rbp), %r13d       # 4-byte Reload
	movl	%r13d, 40(%rsp)
	movq	-176(%rbp), %rax        # 8-byte Reload
	movq	%rax, 48(%rsp)
	callq	bumpmap_row
# BB#17:                                # %for.inc.71
                                        #   in Loop: Header=BB5_9 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB5_9
.LBB5_18:                               # %for.end.73
	movq	-48(%rbp), %rax
	movq	136(%rax), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gimp_preview_area_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	$1, %r9d
	movl	-72(%rbp), %edx
	movl	-76(%rbp), %r8d
	movq	-56(%rbp), %rsi
	movl	-72(%rbp), %r10d
	shll	$2, %r10d
	movq	%rax, %rdi
	movq	%rsi, -192(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movl	%edx, -196(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-196(%rbp), %ecx        # 4-byte Reload
	movq	-192(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movl	%r10d, 8(%rsp)
	callq	gimp_preview_area_draw
	movq	-56(%rbp), %rdi
	callq	g_free
	movl	$0, -60(%rbp)
.LBB5_19:                               # %for.cond.77
                                        # =>This Inner Loop Header: Depth=1
	movl	-60(%rbp), %eax
	movl	-76(%rbp), %ecx
	addl	$2, %ecx
	cmpl	%ecx, %eax
	jge	.LBB5_22
# BB#20:                                # %for.body.81
                                        #   in Loop: Header=BB5_19 Depth=1
	movslq	-60(%rbp), %rax
	movq	bmint+40, %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	g_free
# BB#21:                                # %for.inc.84
                                        #   in Loop: Header=BB5_19 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB5_19
.LBB5_22:                               # %for.end.86
	movq	bmint+40, %rax
	movq	%rax, %rdi
	callq	g_free
	movl	$0, -60(%rbp)
.LBB5_23:                               # %for.cond.87
                                        # =>This Inner Loop Header: Depth=1
	movl	-60(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jge	.LBB5_26
# BB#24:                                # %for.body.90
                                        #   in Loop: Header=BB5_23 Depth=1
	movslq	-60(%rbp), %rax
	movq	bmint+32, %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	g_free
# BB#25:                                # %for.inc.93
                                        #   in Loop: Header=BB5_23 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB5_23
.LBB5_26:                               # %for.end.95
	movq	bmint+32, %rax
	movq	%rax, %rdi
	callq	g_free
	addq	$216, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	dialog_update_preview, .Lfunc_end5-dialog_update_preview
	.cfi_endproc

	.align	16, 0x90
	.type	dialog_preview_events,@function
dialog_preview_events:                  # @dialog_preview_events
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
	subq	$208, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-24(%rbp), %rdx
	movl	(%rdx), %eax
	movl	%eax, %ecx
	subl	$3, %ecx
	movl	%eax, -60(%rbp)         # 4-byte Spill
	movl	%ecx, -64(%rbp)         # 4-byte Spill
	je	.LBB6_8
	jmp	.LBB6_30
.LBB6_30:                               # %entry
	movl	-60(%rbp), %eax         # 4-byte Reload
	subl	$4, %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	je	.LBB6_1
	jmp	.LBB6_31
.LBB6_31:                               # %entry
	movl	-60(%rbp), %eax         # 4-byte Reload
	subl	$7, %eax
	movl	%eax, -72(%rbp)         # 4-byte Spill
	je	.LBB6_5
	jmp	.LBB6_27
.LBB6_1:                                # %sw.bb
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)
	movl	52(%rax), %ecx
	subl	$2, %ecx
	movl	%ecx, -76(%rbp)         # 4-byte Spill
	jne	.LBB6_3
	jmp	.LBB6_2
.LBB6_2:                                # %sw.bb.1
	movl	$1, bmint+8
	jmp	.LBB6_4
.LBB6_3:                                # %sw.default
	movl	$0, -4(%rbp)
	jmp	.LBB6_29
.LBB6_4:                                # %sw.epilog
	movq	-40(%rbp), %rax
	cvttsd2si	24(%rax), %ecx
	movl	%ecx, bmint
	movq	-40(%rbp), %rax
	cvttsd2si	32(%rax), %ecx
	movl	%ecx, bmint+4
	movq	-16(%rbp), %rdi
	callq	gtk_grab_add
	movl	$1, -4(%rbp)
	jmp	.LBB6_29
.LBB6_5:                                # %sw.bb.3
	cmpl	$0, bmint+8
	je	.LBB6_7
# BB#6:                                 # %if.then
	movq	-16(%rbp), %rdi
	callq	gtk_grab_remove
	movl	$0, bmint+8
	movq	-32(%rbp), %rdi
	callq	gimp_preview_invalidate
	movl	$1, -4(%rbp)
	jmp	.LBB6_29
.LBB6_7:                                # %if.end
	jmp	.LBB6_28
.LBB6_8:                                # %sw.bb.5
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	bmint, %xmm1
	subsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, -52(%rbp)
	movq	-48(%rbp), %rax
	movsd	32(%rax), %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	bmint+4, %xmm1
	subsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, -56(%rbp)
	movq	-48(%rbp), %rax
	cvttsd2si	24(%rax), %ecx
	movl	%ecx, bmint
	movq	-48(%rbp), %rax
	cvttsd2si	32(%rax), %ecx
	movl	%ecx, bmint+4
	movq	-48(%rbp), %rdi
	callq	gdk_event_request_motions
	cmpl	$0, -52(%rbp)
	jne	.LBB6_11
# BB#9:                                 # %land.lhs.true
	cmpl	$0, -56(%rbp)
	jne	.LBB6_11
# BB#10:                                # %if.then.21
	jmp	.LBB6_28
.LBB6_11:                               # %if.end.22
	movl	bmint+8(%rip), %eax
	subl	$1, %eax
	movl	%eax, -80(%rbp)         # 4-byte Spill
	jne	.LBB6_25
	jmp	.LBB6_12
.LBB6_12:                               # %sw.bb.23
	movl	bmvals+28, %eax
	subl	-52(%rbp), %eax
	cmpl	$10000, %eax            # imm = 0x2710
	jle	.LBB6_14
# BB#13:                                # %cond.true
	movl	$10000, %eax            # imm = 0x2710
	movl	%eax, -84(%rbp)         # 4-byte Spill
	jmp	.LBB6_18
.LBB6_14:                               # %cond.false
	movl	bmvals+28, %eax
	subl	-52(%rbp), %eax
	cmpl	$-10000, %eax           # imm = 0xFFFFFFFFFFFFD8F0
	jge	.LBB6_16
# BB#15:                                # %cond.true.30
	movl	$4294957296, %eax       # imm = 0xFFFFD8F0
	movl	%eax, -88(%rbp)         # 4-byte Spill
	jmp	.LBB6_17
.LBB6_16:                               # %cond.false.31
	movl	bmvals+28, %eax
	subl	-52(%rbp), %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
.LBB6_17:                               # %cond.end
	movl	-88(%rbp), %eax         # 4-byte Reload
	movl	%eax, -84(%rbp)         # 4-byte Spill
.LBB6_18:                               # %cond.end.33
	movl	-84(%rbp), %eax         # 4-byte Reload
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_int_adjustment_update, %rdi
	movabsq	$bmvals, %r9
	addq	$28, %r9
	movl	%eax, bmvals+28
	movq	bmint+16, %r10
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%r10, %rdi
	movl	%ecx, %edx
	movq	-96(%rbp), %r10         # 8-byte Reload
	movq	%r9, -104(%rbp)         # 8-byte Spill
	movq	%r10, %r9
	movq	-104(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_block_matched
	movq	bmint+16, %rdi
	movl	%eax, -108(%rbp)        # 4-byte Spill
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	cvtsi2sdl	bmvals+28, %xmm0
	movq	%rax, %rdi
	callq	gtk_adjustment_set_value
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_int_adjustment_update, %rax
	movabsq	$bmvals, %rdi
	addq	$28, %rdi
	movq	bmint+16, %r9
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movl	%ecx, %edx
	movq	%rax, %r9
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	callq	g_signal_handlers_unblock_matched
	movl	bmvals+32, %ecx
	subl	-56(%rbp), %ecx
	cmpl	$10000, %ecx            # imm = 0x2710
	movl	%eax, -132(%rbp)        # 4-byte Spill
	jle	.LBB6_20
# BB#19:                                # %cond.true.42
	movl	$10000, %eax            # imm = 0x2710
	movl	%eax, -136(%rbp)        # 4-byte Spill
	jmp	.LBB6_24
.LBB6_20:                               # %cond.false.43
	movl	bmvals+32, %eax
	subl	-56(%rbp), %eax
	cmpl	$-10000, %eax           # imm = 0xFFFFFFFFFFFFD8F0
	jge	.LBB6_22
# BB#21:                                # %cond.true.47
	movl	$4294957296, %eax       # imm = 0xFFFFD8F0
	movl	%eax, -140(%rbp)        # 4-byte Spill
	jmp	.LBB6_23
.LBB6_22:                               # %cond.false.48
	movl	bmvals+32, %eax
	subl	-56(%rbp), %eax
	movl	%eax, -140(%rbp)        # 4-byte Spill
.LBB6_23:                               # %cond.end.50
	movl	-140(%rbp), %eax        # 4-byte Reload
	movl	%eax, -136(%rbp)        # 4-byte Spill
.LBB6_24:                               # %cond.end.52
	movl	-136(%rbp), %eax        # 4-byte Reload
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_int_adjustment_update, %rdi
	movabsq	$bmvals, %r9
	addq	$32, %r9
	movl	%eax, bmvals+32
	movq	bmint+24, %r10
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movl	%ecx, %edx
	movq	-152(%rbp), %r10        # 8-byte Reload
	movq	%r9, -160(%rbp)         # 8-byte Spill
	movq	%r10, %r9
	movq	-160(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_block_matched
	movq	bmint+24, %rdi
	movl	%eax, -164(%rbp)        # 4-byte Spill
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	cvtsi2sdl	bmvals+32, %xmm0
	movq	%rax, %rdi
	callq	gtk_adjustment_set_value
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_int_adjustment_update, %rax
	movabsq	$bmvals, %rdi
	addq	$32, %rdi
	movq	bmint+24, %r9
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movl	%ecx, %edx
	movq	%rax, %r9
	movq	-184(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	callq	g_signal_handlers_unblock_matched
	movl	%eax, -188(%rbp)        # 4-byte Spill
	jmp	.LBB6_26
.LBB6_25:                               # %sw.default.59
	movl	$0, -4(%rbp)
	jmp	.LBB6_29
.LBB6_26:                               # %sw.epilog.60
	movq	-32(%rbp), %rdi
	callq	gimp_preview_invalidate
	movl	$1, -4(%rbp)
	jmp	.LBB6_29
.LBB6_27:                               # %sw.default.61
	jmp	.LBB6_28
.LBB6_28:                               # %sw.epilog.62
	movl	$0, -4(%rbp)
.LBB6_29:                               # %return
	movl	-4(%rbp), %eax
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	dialog_preview_events, .Lfunc_end6-dialog_preview_events
	.cfi_endproc

	.align	16, 0x90
	.type	dialog_constrain,@function
dialog_constrain:                       # @dialog_constrain
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
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movl	-8(%rbp), %edi
	callq	gimp_drawable_is_rgb
	movb	$1, %cl
	cmpl	$0, %eax
	movb	%cl, -17(%rbp)          # 1-byte Spill
	jne	.LBB7_2
# BB#1:                                 # %lor.rhs
	movl	-8(%rbp), %edi
	callq	gimp_drawable_is_gray
	cmpl	$0, %eax
	setne	%cl
	movb	%cl, -17(%rbp)          # 1-byte Spill
.LBB7_2:                                # %lor.end
	movb	-17(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	dialog_constrain, .Lfunc_end7-dialog_constrain
	.cfi_endproc

	.align	16, 0x90
	.type	dialog_bumpmap_callback,@function
dialog_bumpmap_callback:                # @dialog_bumpmap_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp41:
	.cfi_def_cfa_offset 16
.Ltmp42:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp43:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-20(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_int_combo_box_get_active
	movl	bmvals, %ecx
	cmpl	-20(%rbp), %ecx
	movl	%eax, -36(%rbp)         # 4-byte Spill
	je	.LBB8_2
# BB#1:                                 # %if.then
	movl	$1, %edi
	movl	-20(%rbp), %eax
	movl	%eax, bmvals
	callq	dialog_new_bumpmap
	movq	-16(%rbp), %rdi
	callq	gimp_preview_invalidate
.LBB8_2:                                # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	dialog_bumpmap_callback, .Lfunc_end8-dialog_bumpmap_callback
	.cfi_endproc

	.align	16, 0x90
	.type	dialog_maptype_callback,@function
dialog_maptype_callback:                # @dialog_maptype_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp44:
	.cfi_def_cfa_offset 16
.Ltmp45:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp46:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-20(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_int_combo_box_get_active
	movl	bmvals+52, %ecx
	cmpl	-20(%rbp), %ecx
	movl	%eax, -36(%rbp)         # 4-byte Spill
	je	.LBB9_2
# BB#1:                                 # %if.then
	movabsq	$bmint, %rax
	addq	$168, %rax
	movl	-20(%rbp), %ecx
	movl	%ecx, bmvals+52
	movq	%rax, %rdi
	callq	bumpmap_init_params
	movq	-16(%rbp), %rdi
	callq	gimp_preview_invalidate
.LBB9_2:                                # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	dialog_maptype_callback, .Lfunc_end9-dialog_maptype_callback
	.cfi_endproc

	.align	16, 0x90
	.type	dialog_new_bumpmap,@function
dialog_new_bumpmap:                     # @dialog_new_bumpmap
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp47:
	.cfi_def_cfa_offset 16
.Ltmp48:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp49:
	.cfi_def_cfa_register %rbp
	subq	$160, %rsp
	movl	%edi, -4(%rbp)
	cmpq	$0, bmint+48
	je	.LBB10_3
# BB#1:                                 # %land.lhs.true
	movq	bmint+48, %rax
	cmpq	drawable, %rax
	je	.LBB10_3
# BB#2:                                 # %if.then
	movq	bmint+48, %rdi
	callq	gimp_drawable_detach
.LBB10_3:                               # %if.end
	cmpl	$-1, bmvals
	je	.LBB10_5
# BB#4:                                 # %if.then.2
	movl	bmvals, %edi
	callq	gimp_drawable_get
	movq	%rax, bmint+48
	jmp	.LBB10_6
.LBB10_5:                               # %if.else
	movq	drawable, %rax
	movq	%rax, bmint+48
.LBB10_6:                               # %if.end.3
	cmpq	$0, bmint+48
	jne	.LBB10_8
# BB#7:                                 # %if.then.5
	jmp	.LBB10_15
.LBB10_8:                               # %if.end.6
	movq	bmint+48, %rax
	movl	(%rax), %edi
	callq	gimp_drawable_width
	movl	%eax, bmint+56
	movq	bmint+48, %rcx
	movl	(%rcx), %edi
	callq	gimp_drawable_height
	movl	%eax, bmint+60
	movq	bmint+48, %rcx
	movl	(%rcx), %edi
	callq	gimp_drawable_bpp
	movl	%eax, bmint+64
	movq	bmint+48, %rcx
	movl	(%rcx), %edi
	callq	gimp_drawable_has_alpha
	movl	%eax, bmint+68
	cmpl	$0, -4(%rbp)
	je	.LBB10_14
# BB#9:                                 # %if.then.15
	leaq	-20(%rbp), %rsi
	leaq	-24(%rbp), %rdx
	movq	bmint+48, %rax
	movl	(%rax), %edi
	callq	gimp_drawable_offsets
	leaq	-32(%rbp), %rsi
	leaq	-28(%rbp), %rdx
	movq	drawable, %rcx
	movl	(%rcx), %edi
	movl	%eax, -36(%rbp)         # 4-byte Spill
	callq	gimp_drawable_offsets
	movl	-32(%rbp), %edi
	subl	-20(%rbp), %edi
	movl	%edi, bmvals+28
	movl	-28(%rbp), %edi
	subl	-24(%rbp), %edi
	movl	%edi, bmvals+32
	movq	bmint+16, %rcx
	movq	%rcx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movl	%eax, -40(%rbp)         # 4-byte Spill
	je	.LBB10_11
# BB#10:                                # %if.then.22
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_int_adjustment_update, %rdx
	movabsq	$bmvals, %rdi
	addq	$28, %rdi
	movq	-16(%rbp), %r9
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-56(%rbp), %r9          # 8-byte Reload
	movq	-48(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	callq	g_signal_handlers_block_matched
	movq	-16(%rbp), %rdi
	cvtsi2sdl	bmvals+28, %xmm0
	movl	%eax, -60(%rbp)         # 4-byte Spill
	callq	gtk_adjustment_set_value
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_int_adjustment_update, %rdi
	movabsq	$bmvals, %r9
	addq	$28, %r9
	movq	-16(%rbp), %r10
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%r10, %rdi
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-72(%rbp), %r10         # 8-byte Reload
	movq	%r9, -80(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-80(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_unblock_matched
	movl	%eax, -84(%rbp)         # 4-byte Spill
.LBB10_11:                              # %if.end.25
	movq	bmint+24, %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB10_13
# BB#12:                                # %if.then.27
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_int_adjustment_update, %rdx
	movabsq	$bmvals, %rdi
	addq	$32, %rdi
	movq	-16(%rbp), %r9
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movq	%rdx, -104(%rbp)        # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-104(%rbp), %r9         # 8-byte Reload
	movq	-96(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	callq	g_signal_handlers_block_matched
	movq	-16(%rbp), %rdi
	cvtsi2sdl	bmvals+32, %xmm0
	movl	%eax, -108(%rbp)        # 4-byte Spill
	callq	gtk_adjustment_set_value
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_int_adjustment_update, %rdi
	movabsq	$bmvals, %r9
	addq	$32, %r9
	movq	-16(%rbp), %r10
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-120(%rbp), %r10        # 8-byte Reload
	movq	%r9, -128(%rbp)         # 8-byte Spill
	movq	%r10, %r9
	movq	-128(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_unblock_matched
	movl	%eax, -132(%rbp)        # 4-byte Spill
.LBB10_13:                              # %if.end.31
	jmp	.LBB10_14
.LBB10_14:                              # %if.end.32
	movabsq	$bmint, %rax
	addq	$120, %rax
	xorl	%ecx, %ecx
	movq	bmint+48, %rsi
	movl	bmint+56, %r8d
	movl	bmint+60, %r9d
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
.LBB10_15:                              # %return
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	dialog_new_bumpmap, .Lfunc_end10-dialog_new_bumpmap
	.cfi_endproc

	.align	16, 0x90
	.type	dialog_fill_src_rows,@function
dialog_fill_src_rows:                   # @dialog_fill_src_rows
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp50:
	.cfi_def_cfa_offset 16
.Ltmp51:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp52:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movabsq	$bmint, %rax
	addq	$72, %rax
	xorl	%ecx, %ecx
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movq	bmint+32, %r8
	movslq	-4(%rbp), %r9
	shlq	$3, %r9
	addq	%r9, %r8
	movl	-12(%rbp), %edx
	movl	sel_width, %esi
	movl	-8(%rbp), %r9d
	movq	%rax, %rdi
	movl	%esi, -44(%rbp)         # 4-byte Spill
	movq	%r8, %rsi
	movl	%edx, -48(%rbp)         # 4-byte Spill
	movl	%ecx, %edx
	movl	-48(%rbp), %ecx         # 4-byte Reload
	movl	-44(%rbp), %r8d         # 4-byte Reload
	callq	dialog_get_rows
	movl	-4(%rbp), %ecx
	movl	%ecx, -20(%rbp)
.LBB11_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_3 Depth 2
	movl	-20(%rbp), %eax
	movl	-4(%rbp), %ecx
	addl	-8(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB11_14
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB11_1 Depth=1
	movslq	-20(%rbp), %rax
	movq	bmint+32, %rcx
	movq	(%rcx,%rax,8), %rax
	movl	img_bpp, %edx
	imull	sel_width, %edx
	movslq	%edx, %rcx
	addq	%rcx, %rax
	addq	$-1, %rax
	movq	%rax, -32(%rbp)
	movslq	-20(%rbp), %rax
	movq	bmint+32, %rcx
	movq	(%rcx,%rax,8), %rax
	movl	sel_width, %edx
	shll	$2, %edx
	movslq	%edx, %rcx
	addq	%rcx, %rax
	addq	$-1, %rax
	movq	%rax, -40(%rbp)
	movl	$0, -16(%rbp)
.LBB11_3:                               # %for.cond.10
                                        #   Parent Loop BB11_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-16(%rbp), %eax
	cmpl	sel_width, %eax
	jge	.LBB11_12
# BB#4:                                 # %for.body.12
                                        #   in Loop: Header=BB11_3 Depth=2
	cmpl	$0, img_has_alpha
	je	.LBB11_6
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB11_3 Depth=2
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	addq	$-1, %rcx
	movq	%rcx, -32(%rbp)
	movb	(%rax), %dl
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	addq	$-1, %rcx
	movq	%rcx, -40(%rbp)
	movb	%dl, (%rax)
	jmp	.LBB11_7
.LBB11_6:                               # %if.else
                                        #   in Loop: Header=BB11_3 Depth=2
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	addq	$-1, %rcx
	movq	%rcx, -40(%rbp)
	movb	$-1, (%rax)
.LBB11_7:                               # %if.end
                                        #   in Loop: Header=BB11_3 Depth=2
	cmpl	$3, img_bpp
	jge	.LBB11_9
# BB#8:                                 # %if.then.16
                                        #   in Loop: Header=BB11_3 Depth=2
	movq	-32(%rbp), %rax
	movb	(%rax), %cl
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	addq	$-1, %rdx
	movq	%rdx, -40(%rbp)
	movb	%cl, (%rax)
	movq	-32(%rbp), %rax
	movb	(%rax), %cl
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	addq	$-1, %rdx
	movq	%rdx, -40(%rbp)
	movb	%cl, (%rax)
	movq	-32(%rbp), %rax
	movq	%rax, %rdx
	addq	$-1, %rdx
	movq	%rdx, -32(%rbp)
	movb	(%rax), %cl
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	addq	$-1, %rdx
	movq	%rdx, -40(%rbp)
	movb	%cl, (%rax)
	jmp	.LBB11_10
.LBB11_9:                               # %if.else.21
                                        #   in Loop: Header=BB11_3 Depth=2
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	addq	$-1, %rcx
	movq	%rcx, -32(%rbp)
	movb	(%rax), %dl
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	addq	$-1, %rcx
	movq	%rcx, -40(%rbp)
	movb	%dl, (%rax)
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	addq	$-1, %rcx
	movq	%rcx, -32(%rbp)
	movb	(%rax), %dl
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	addq	$-1, %rcx
	movq	%rcx, -40(%rbp)
	movb	%dl, (%rax)
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	addq	$-1, %rcx
	movq	%rcx, -32(%rbp)
	movb	(%rax), %dl
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	addq	$-1, %rcx
	movq	%rcx, -40(%rbp)
	movb	%dl, (%rax)
.LBB11_10:                              # %if.end.28
                                        #   in Loop: Header=BB11_3 Depth=2
	jmp	.LBB11_11
.LBB11_11:                              # %for.inc
                                        #   in Loop: Header=BB11_3 Depth=2
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB11_3
.LBB11_12:                              # %for.end
                                        #   in Loop: Header=BB11_1 Depth=1
	jmp	.LBB11_13
.LBB11_13:                              # %for.inc.29
                                        #   in Loop: Header=BB11_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB11_1
.LBB11_14:                              # %for.end.31
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	dialog_fill_src_rows, .Lfunc_end11-dialog_fill_src_rows
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI12_0:
	.quad	4643176031446892544     # double 255
.LCPI12_1:
	.quad	4640537203540230144     # double 180
.LCPI12_2:
	.quad	4614256656552045848     # double 3.1415926535897931
.LCPI12_3:
	.quad	4602678819172646912     # double 0.5
.LCPI12_4:
	.quad	4611686018427387904     # double 2
.LCPI12_5:
	.quad	4607182418800017408     # double 1
.LCPI12_6:
	.quad	-4613618979930100456    # double -1.5707963267948966
	.text
	.align	16, 0x90
	.type	bumpmap_init_params,@function
bumpmap_init_params:                    # @bumpmap_init_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp53:
	.cfi_def_cfa_offset 16
.Ltmp54:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp55:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movsd	.LCPI12_0, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI12_1, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI12_2, %xmm2        # xmm2 = mem[0],zero
	movq	%rdi, -8(%rbp)
	movaps	%xmm2, %xmm3
	mulsd	bmvals+8, %xmm3
	divsd	%xmm1, %xmm3
	movsd	%xmm3, -16(%rbp)
	mulsd	bmvals+16, %xmm2
	divsd	%xmm1, %xmm2
	movsd	%xmm2, -24(%rbp)
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	cos
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	cos
	movsd	-64(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-56(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movq	-8(%rbp), %rdi
	movl	%eax, (%rdi)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	sin
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	cos
	movsd	-72(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-56(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movq	-8(%rbp), %rdi
	movl	%eax, 4(%rdi)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	sin
	movsd	-56(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -28(%rbp)
	cmpl	$1, bmvals+24
	jle	.LBB12_2
# BB#1:                                 # %cond.true
	movl	bmvals+24, %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
	jmp	.LBB12_3
.LBB12_2:                               # %cond.false
	movl	$1, %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
	jmp	.LBB12_3
.LBB12_3:                               # %cond.end
	movl	-76(%rbp), %eax         # 4-byte Reload
	movl	$1530, %ecx             # imm = 0x5FA
	movl	%eax, -80(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-80(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	movl	%eax, -32(%rbp)
	movl	-32(%rbp), %eax
	imull	-32(%rbp), %eax
	movq	-8(%rbp), %rsi
	movl	%eax, 8(%rsi)
	movl	-32(%rbp), %eax
	imull	-28(%rbp), %eax
	movq	-8(%rbp), %rsi
	movl	%eax, 12(%rsi)
	movl	-28(%rbp), %eax
	movq	-8(%rbp), %rsi
	movl	%eax, 16(%rsi)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	sin
	movq	-8(%rbp), %rsi
	movsd	%xmm0, 24(%rsi)
	movl	$0, -36(%rbp)
.LBB12_4:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$256, -36(%rbp)         # imm = 0x100
	jge	.LBB12_14
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB12_4 Depth=1
	movl	bmvals+52(%rip), %eax
	testl	%eax, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	je	.LBB12_8
	jmp	.LBB12_15
.LBB12_15:                              # %for.body
                                        #   in Loop: Header=BB12_4 Depth=1
	movl	-84(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	je	.LBB12_6
	jmp	.LBB12_16
.LBB12_16:                              # %for.body
                                        #   in Loop: Header=BB12_4 Depth=1
	movl	-84(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	je	.LBB12_7
	jmp	.LBB12_9
.LBB12_6:                               # %sw.bb
                                        #   in Loop: Header=BB12_4 Depth=1
	movsd	.LCPI12_3, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI12_0, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI12_5, %xmm2        # xmm2 = mem[0],zero
	cvtsi2sdl	-36(%rbp), %xmm3
	divsd	%xmm1, %xmm3
	subsd	%xmm2, %xmm3
	movsd	%xmm3, -48(%rbp)
	movsd	-48(%rbp), %xmm3        # xmm3 = mem[0],zero
	mulsd	-48(%rbp), %xmm3
	subsd	%xmm3, %xmm2
	movsd	%xmm0, -104(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	%xmm1, -112(%rbp)       # 8-byte Spill
	callq	sqrt
	movsd	-112(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-104(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movb	%al, %cl
	movslq	-36(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movb	%cl, 32(%rsi,%rdx)
	jmp	.LBB12_10
.LBB12_7:                               # %sw.bb.29
                                        #   in Loop: Header=BB12_4 Depth=1
	movsd	.LCPI12_3, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI12_4, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI12_0, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI12_5, %xmm3        # xmm3 = mem[0],zero
	movsd	.LCPI12_6, %xmm4        # xmm4 = mem[0],zero
	movsd	.LCPI12_2, %xmm5        # xmm5 = mem[0],zero
	cvtsi2sdl	-36(%rbp), %xmm6
	divsd	%xmm2, %xmm6
	movsd	%xmm6, -48(%rbp)
	mulsd	-48(%rbp), %xmm5
	addsd	%xmm5, %xmm4
	movsd	%xmm0, -120(%rbp)       # 8-byte Spill
	movaps	%xmm4, %xmm0
	movsd	%xmm3, -128(%rbp)       # 8-byte Spill
	movsd	%xmm1, -136(%rbp)       # 8-byte Spill
	movsd	%xmm2, -144(%rbp)       # 8-byte Spill
	callq	sin
	movsd	-128(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	movsd	-144(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	mulsd	%xmm0, %xmm2
	movsd	-136(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	divsd	%xmm0, %xmm2
	movsd	-120(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	addsd	%xmm3, %xmm2
	cvttsd2si	%xmm2, %eax
	movb	%al, %cl
	movslq	-36(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movb	%cl, 32(%rsi,%rdx)
	jmp	.LBB12_10
.LBB12_8:                               # %sw.bb.44
                                        #   in Loop: Header=BB12_4 Depth=1
	jmp	.LBB12_9
.LBB12_9:                               # %sw.default
                                        #   in Loop: Header=BB12_4 Depth=1
	movl	-36(%rbp), %eax
	movb	%al, %cl
	movslq	-36(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movb	%cl, 32(%rsi,%rdx)
.LBB12_10:                              # %sw.epilog
                                        #   in Loop: Header=BB12_4 Depth=1
	cmpl	$0, bmvals+48
	je	.LBB12_12
# BB#11:                                # %if.then
                                        #   in Loop: Header=BB12_4 Depth=1
	movl	$255, %eax
	movslq	-36(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movzbl	32(%rdx,%rcx), %esi
	subl	%esi, %eax
	movb	%al, %dil
	movslq	-36(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movb	%dil, 32(%rdx,%rcx)
.LBB12_12:                              # %if.end
                                        #   in Loop: Header=BB12_4 Depth=1
	jmp	.LBB12_13
.LBB12_13:                              # %for.inc
                                        #   in Loop: Header=BB12_4 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB12_4
.LBB12_14:                              # %for.end
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	bumpmap_init_params, .Lfunc_end12-bumpmap_init_params
	.cfi_endproc

	.align	16, 0x90
	.type	dialog_fill_bumpmap_rows,@function
dialog_fill_bumpmap_rows:               # @dialog_fill_bumpmap_rows
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp56:
	.cfi_def_cfa_offset 16
.Ltmp57:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp58:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	-12(%rbp), %edx
	addl	sel_y1, %edx
	cmpl	$0, %edx
	jge	.LBB13_2
# BB#1:                                 # %cond.true
	movl	bmint+60, %eax
	subl	$1, %eax
	movl	bmint+60, %ecx
	subl	$1, %ecx
	movl	-12(%rbp), %edx
	addl	sel_y1, %edx
	subl	%edx, %ecx
	movl	%eax, -28(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	idivl	bmint+60
	movl	-28(%rbp), %ecx         # 4-byte Reload
	subl	%edx, %ecx
	movl	%ecx, -32(%rbp)         # 4-byte Spill
	jmp	.LBB13_3
.LBB13_2:                               # %cond.false
	movl	-12(%rbp), %eax
	addl	sel_y1, %eax
	cltd
	idivl	bmint+60
	movl	%edx, -32(%rbp)         # 4-byte Spill
.LBB13_3:                               # %cond.end
	movl	-32(%rbp), %eax         # 4-byte Reload
	movl	%eax, -12(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	-8(%rbp), %eax
	movl	%eax, -20(%rbp)
.LBB13_4:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -20(%rbp)
	jle	.LBB13_9
# BB#5:                                 # %while.body
                                        #   in Loop: Header=BB13_4 Depth=1
	movl	-20(%rbp), %eax
	movl	bmint+60, %ecx
	subl	-12(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB13_7
# BB#6:                                 # %cond.true.10
                                        #   in Loop: Header=BB13_4 Depth=1
	movl	-20(%rbp), %eax
	movl	%eax, -36(%rbp)         # 4-byte Spill
	jmp	.LBB13_8
.LBB13_7:                               # %cond.false.11
                                        #   in Loop: Header=BB13_4 Depth=1
	movl	bmint+60, %eax
	subl	-12(%rbp), %eax
	movl	%eax, -36(%rbp)         # 4-byte Spill
.LBB13_8:                               # %cond.end.13
                                        #   in Loop: Header=BB13_4 Depth=1
	movl	-36(%rbp), %eax         # 4-byte Reload
	movabsq	$bmint, %rcx
	addq	$120, %rcx
	xorl	%edx, %edx
	movl	%eax, -24(%rbp)
	movq	bmint+40, %rsi
	movslq	-16(%rbp), %rdi
	shlq	$3, %rdi
	addq	%rdi, %rsi
	movl	-12(%rbp), %eax
	movl	bmint+56, %r8d
	movl	-24(%rbp), %r9d
	movq	%rcx, %rdi
	movl	%eax, %ecx
	callq	dialog_get_rows
	movl	-12(%rbp), %eax
	addl	-24(%rbp), %eax
	cltd
	idivl	bmint+60
	movl	%edx, -12(%rbp)
	movl	-24(%rbp), %ecx
	movl	-20(%rbp), %edx
	subl	%ecx, %edx
	movl	%edx, -20(%rbp)
	movl	-24(%rbp), %ecx
	addl	-16(%rbp), %ecx
	movl	%ecx, -16(%rbp)
	jmp	.LBB13_4
.LBB13_9:                               # %while.end
	jmp	.LBB13_10
.LBB13_10:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -8(%rbp)
	je	.LBB13_13
# BB#11:                                # %for.body
                                        #   in Loop: Header=BB13_10 Depth=1
	movabsq	$bmint, %rax
	addq	$200, %rax
	movslq	-4(%rbp), %rcx
	movq	bmint+40, %rdx
	movq	(%rdx,%rcx,8), %rdi
	movl	bmint+56, %esi
	movl	bmint+64, %edx
	movl	bmint+68, %ecx
	movq	%rax, %r8
	callq	bumpmap_convert_row
	movl	-4(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -4(%rbp)
# BB#12:                                # %for.inc
                                        #   in Loop: Header=BB13_10 Depth=1
	movl	-8(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB13_10
.LBB13_13:                              # %for.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	dialog_fill_bumpmap_rows, .Lfunc_end13-dialog_fill_bumpmap_rows
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI14_0:
	.quad	4643176031446892544     # double 255
	.text
	.align	16, 0x90
	.type	bumpmap_row,@function
bumpmap_row:                            # @bumpmap_row
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp59:
	.cfi_def_cfa_offset 16
.Ltmp60:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp61:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$224, %rsp
.Ltmp62:
	.cfi_offset %rbx, -48
.Ltmp63:
	.cfi_offset %r12, -40
.Ltmp64:
	.cfi_offset %r14, -32
.Ltmp65:
	.cfi_offset %r15, -24
	movq	64(%rbp), %rax
	movl	56(%rbp), %r10d
	movl	48(%rbp), %r11d
	movl	40(%rbp), %ebx
	movl	32(%rbp), %r14d
	movq	24(%rbp), %r15
	movq	16(%rbp), %r12
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movl	%ecx, -56(%rbp)
	movl	%r8d, -60(%rbp)
	movq	%r9, -72(%rbp)
	movq	%r12, -80(%rbp)
	movq	%r15, -88(%rbp)
	movl	%r14d, -92(%rbp)
	movl	%ebx, -96(%rbp)
	movl	%r11d, -100(%rbp)
	movl	%r10d, -104(%rbp)
	movq	%rax, -112(%rbp)
	cmpl	$0, -60(%rbp)
	je	.LBB14_2
# BB#1:                                 # %if.then
	movl	-56(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -132(%rbp)
	jmp	.LBB14_3
.LBB14_2:                               # %if.else
	movl	-56(%rbp), %eax
	movl	%eax, -132(%rbp)
.LBB14_3:                               # %if.end
	movl	-96(%rbp), %eax
	addl	sel_x1, %eax
	movl	%eax, -140(%rbp)
	cmpl	$0, -140(%rbp)
	jge	.LBB14_5
# BB#4:                                 # %cond.true
	movl	-92(%rbp), %eax
	subl	$1, %eax
	movl	-92(%rbp), %ecx
	subl	$1, %ecx
	subl	-140(%rbp), %ecx
	movl	%eax, -164(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	idivl	-92(%rbp)
	movl	-164(%rbp), %ecx        # 4-byte Reload
	subl	%edx, %ecx
	movl	%ecx, -168(%rbp)        # 4-byte Spill
	jmp	.LBB14_6
.LBB14_5:                               # %cond.false
	movl	-140(%rbp), %eax
	cltd
	idivl	-92(%rbp)
	movl	%edx, -168(%rbp)        # 4-byte Spill
.LBB14_6:                               # %cond.end
	movl	-168(%rbp), %eax        # 4-byte Reload
	movl	%eax, -120(%rbp)
	movl	$0, -124(%rbp)
.LBB14_7:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_47 Depth 2
                                        #     Child Loop BB14_55 Depth 2
	movl	-124(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jge	.LBB14_65
# BB#8:                                 # %for.body
                                        #   in Loop: Header=BB14_7 Depth=1
	cmpl	$0, -100(%rbp)
	jne	.LBB14_12
# BB#9:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB14_7 Depth=1
	cmpl	$0, -104(%rbp)
	je	.LBB14_34
# BB#10:                                # %land.lhs.true
                                        #   in Loop: Header=BB14_7 Depth=1
	xorl	%eax, %eax
	movl	-124(%rbp), %ecx
	subl	-140(%rbp), %eax
	cmpl	%eax, %ecx
	jl	.LBB14_34
# BB#11:                                # %land.lhs.true.15
                                        #   in Loop: Header=BB14_7 Depth=1
	xorl	%eax, %eax
	movl	-124(%rbp), %ecx
	subl	-140(%rbp), %eax
	addl	-92(%rbp), %eax
	cmpl	%eax, %ecx
	jge	.LBB14_34
.LBB14_12:                              # %if.then.19
                                        #   in Loop: Header=BB14_7 Depth=1
	cmpl	$0, -100(%rbp)
	je	.LBB14_20
# BB#13:                                # %if.then.21
                                        #   in Loop: Header=BB14_7 Depth=1
	movl	-120(%rbp), %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB14_15
# BB#14:                                # %cond.true.24
                                        #   in Loop: Header=BB14_7 Depth=1
	movl	-92(%rbp), %eax
	subl	$1, %eax
	movl	-92(%rbp), %ecx
	subl	$1, %ecx
	movl	-120(%rbp), %edx
	subl	$1, %edx
	subl	%edx, %ecx
	movl	%eax, -172(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	idivl	-92(%rbp)
	movl	-172(%rbp), %ecx        # 4-byte Reload
	subl	%edx, %ecx
	movl	%ecx, -176(%rbp)        # 4-byte Spill
	jmp	.LBB14_16
.LBB14_15:                              # %cond.false.31
                                        #   in Loop: Header=BB14_7 Depth=1
	movl	-120(%rbp), %eax
	subl	$1, %eax
	cltd
	idivl	-92(%rbp)
	movl	%edx, -176(%rbp)        # 4-byte Spill
.LBB14_16:                              # %cond.end.34
                                        #   in Loop: Header=BB14_7 Depth=1
	movl	-176(%rbp), %eax        # 4-byte Reload
	movl	%eax, -116(%rbp)
	movl	-120(%rbp), %eax
	addl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB14_18
# BB#17:                                # %cond.true.38
                                        #   in Loop: Header=BB14_7 Depth=1
	movl	-92(%rbp), %eax
	subl	$1, %eax
	movl	-92(%rbp), %ecx
	subl	$1, %ecx
	movl	-120(%rbp), %edx
	addl	$1, %edx
	subl	%edx, %ecx
	movl	%eax, -180(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	idivl	-92(%rbp)
	movl	-180(%rbp), %ecx        # 4-byte Reload
	subl	%edx, %ecx
	movl	%ecx, -184(%rbp)        # 4-byte Spill
	jmp	.LBB14_19
.LBB14_18:                              # %cond.false.45
                                        #   in Loop: Header=BB14_7 Depth=1
	movl	-120(%rbp), %eax
	addl	$1, %eax
	cltd
	idivl	-92(%rbp)
	movl	%edx, -184(%rbp)        # 4-byte Spill
.LBB14_19:                              # %cond.end.48
                                        #   in Loop: Header=BB14_7 Depth=1
	movl	-184(%rbp), %eax        # 4-byte Reload
	movl	%eax, -144(%rbp)
	jmp	.LBB14_33
.LBB14_20:                              # %if.else.50
                                        #   in Loop: Header=BB14_7 Depth=1
	movl	-120(%rbp), %eax
	subl	$1, %eax
	movl	-92(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jle	.LBB14_22
# BB#21:                                # %cond.true.54
                                        #   in Loop: Header=BB14_7 Depth=1
	movl	-92(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -188(%rbp)        # 4-byte Spill
	jmp	.LBB14_26
.LBB14_22:                              # %cond.false.56
                                        #   in Loop: Header=BB14_7 Depth=1
	movl	-120(%rbp), %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB14_24
# BB#23:                                # %cond.true.59
                                        #   in Loop: Header=BB14_7 Depth=1
	xorl	%eax, %eax
	movl	%eax, -192(%rbp)        # 4-byte Spill
	jmp	.LBB14_25
.LBB14_24:                              # %cond.false.60
                                        #   in Loop: Header=BB14_7 Depth=1
	movl	-120(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -192(%rbp)        # 4-byte Spill
.LBB14_25:                              # %cond.end.62
                                        #   in Loop: Header=BB14_7 Depth=1
	movl	-192(%rbp), %eax        # 4-byte Reload
	movl	%eax, -188(%rbp)        # 4-byte Spill
.LBB14_26:                              # %cond.end.64
                                        #   in Loop: Header=BB14_7 Depth=1
	movl	-188(%rbp), %eax        # 4-byte Reload
	movl	%eax, -116(%rbp)
	movl	-120(%rbp), %eax
	addl	$1, %eax
	movl	-92(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jle	.LBB14_28
# BB#27:                                # %cond.true.69
                                        #   in Loop: Header=BB14_7 Depth=1
	movl	-92(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -196(%rbp)        # 4-byte Spill
	jmp	.LBB14_32
.LBB14_28:                              # %cond.false.71
                                        #   in Loop: Header=BB14_7 Depth=1
	movl	-120(%rbp), %eax
	addl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB14_30
# BB#29:                                # %cond.true.74
                                        #   in Loop: Header=BB14_7 Depth=1
	xorl	%eax, %eax
	movl	%eax, -200(%rbp)        # 4-byte Spill
	jmp	.LBB14_31
.LBB14_30:                              # %cond.false.75
                                        #   in Loop: Header=BB14_7 Depth=1
	movl	-120(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -200(%rbp)        # 4-byte Spill
.LBB14_31:                              # %cond.end.77
                                        #   in Loop: Header=BB14_7 Depth=1
	movl	-200(%rbp), %eax        # 4-byte Reload
	movl	%eax, -196(%rbp)        # 4-byte Spill
.LBB14_32:                              # %cond.end.79
                                        #   in Loop: Header=BB14_7 Depth=1
	movl	-196(%rbp), %eax        # 4-byte Reload
	movl	%eax, -144(%rbp)
.LBB14_33:                              # %if.end.81
                                        #   in Loop: Header=BB14_7 Depth=1
	movslq	-116(%rbp), %rax
	movq	-72(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movslq	-116(%rbp), %rax
	movq	-80(%rbp), %rcx
	movzbl	(%rcx,%rax), %esi
	addl	%esi, %edx
	movslq	-116(%rbp), %rax
	movq	-88(%rbp), %rcx
	movzbl	(%rcx,%rax), %esi
	addl	%esi, %edx
	movslq	-144(%rbp), %rax
	movq	-72(%rbp), %rcx
	movzbl	(%rcx,%rax), %esi
	subl	%esi, %edx
	movslq	-144(%rbp), %rax
	movq	-80(%rbp), %rcx
	movzbl	(%rcx,%rax), %esi
	subl	%esi, %edx
	movslq	-144(%rbp), %rax
	movq	-88(%rbp), %rcx
	movzbl	(%rcx,%rax), %esi
	subl	%esi, %edx
	movl	%edx, -152(%rbp)
	movslq	-116(%rbp), %rax
	movq	-88(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movslq	-120(%rbp), %rax
	movq	-88(%rbp), %rcx
	movzbl	(%rcx,%rax), %esi
	addl	%esi, %edx
	movslq	-144(%rbp), %rax
	movq	-88(%rbp), %rcx
	movzbl	(%rcx,%rax), %esi
	addl	%esi, %edx
	movslq	-116(%rbp), %rax
	movq	-72(%rbp), %rcx
	movzbl	(%rcx,%rax), %esi
	subl	%esi, %edx
	movslq	-120(%rbp), %rax
	movq	-72(%rbp), %rcx
	movzbl	(%rcx,%rax), %esi
	subl	%esi, %edx
	movslq	-144(%rbp), %rax
	movq	-72(%rbp), %rcx
	movzbl	(%rcx,%rax), %esi
	subl	%esi, %edx
	movl	%edx, -156(%rbp)
	jmp	.LBB14_35
.LBB14_34:                              # %if.else.125
                                        #   in Loop: Header=BB14_7 Depth=1
	movl	$0, -156(%rbp)
	movl	$0, -152(%rbp)
.LBB14_35:                              # %if.end.126
                                        #   in Loop: Header=BB14_7 Depth=1
	cmpl	$0, -152(%rbp)
	jne	.LBB14_38
# BB#36:                                # %land.lhs.true.129
                                        #   in Loop: Header=BB14_7 Depth=1
	cmpl	$0, -156(%rbp)
	jne	.LBB14_38
# BB#37:                                # %if.then.132
                                        #   in Loop: Header=BB14_7 Depth=1
	movq	-112(%rbp), %rax
	movl	16(%rax), %ecx
	movl	%ecx, -148(%rbp)
	jmp	.LBB14_45
.LBB14_38:                              # %if.else.133
                                        #   in Loop: Header=BB14_7 Depth=1
	movl	-152(%rbp), %eax
	movq	-112(%rbp), %rcx
	imull	(%rcx), %eax
	movl	-156(%rbp), %edx
	movq	-112(%rbp), %rcx
	imull	4(%rcx), %edx
	addl	%edx, %eax
	movq	-112(%rbp), %rcx
	addl	12(%rcx), %eax
	movl	%eax, -160(%rbp)
	cmpl	$0, -160(%rbp)
	jge	.LBB14_40
# BB#39:                                # %if.then.140
                                        #   in Loop: Header=BB14_7 Depth=1
	movq	-112(%rbp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	bmvals+40, %xmm1
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, -148(%rbp)
	jmp	.LBB14_44
.LBB14_40:                              # %if.else.144
                                        #   in Loop: Header=BB14_7 Depth=1
	xorps	%xmm0, %xmm0
	movsd	.LCPI14_0, %xmm1        # xmm1 = mem[0],zero
	cvtsi2sdl	-160(%rbp), %xmm2
	movl	-152(%rbp), %eax
	imull	-152(%rbp), %eax
	movl	-156(%rbp), %ecx
	imull	-156(%rbp), %ecx
	addl	%ecx, %eax
	movq	-112(%rbp), %rdx
	addl	8(%rdx), %eax
	cvtsi2sdl	%eax, %xmm3
	movsd	%xmm0, -208(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm0
	movsd	%xmm2, -216(%rbp)       # 8-byte Spill
	movsd	%xmm1, -224(%rbp)       # 8-byte Spill
	callq	sqrt
	movsd	-216(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, -148(%rbp)
	cvtsi2sdl	-148(%rbp), %xmm0
	movq	-112(%rbp), %rdx
	movsd	-224(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	24(%rdx), %xmm1
	cvtsi2sdl	-148(%rbp), %xmm2
	subsd	%xmm2, %xmm1
	movsd	-208(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	ucomisd	%xmm1, %xmm2
	movsd	%xmm0, -232(%rbp)       # 8-byte Spill
	jbe	.LBB14_42
# BB#41:                                # %cond.true.159
                                        #   in Loop: Header=BB14_7 Depth=1
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -240(%rbp)       # 8-byte Spill
	jmp	.LBB14_43
.LBB14_42:                              # %cond.false.160
                                        #   in Loop: Header=BB14_7 Depth=1
	movsd	.LCPI14_0, %xmm0        # xmm0 = mem[0],zero
	movq	-112(%rbp), %rax
	mulsd	24(%rax), %xmm0
	cvtsi2sdl	-148(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -240(%rbp)       # 8-byte Spill
.LBB14_43:                              # %cond.end.165
                                        #   in Loop: Header=BB14_7 Depth=1
	movsd	-240(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI14_0, %xmm1        # xmm1 = mem[0],zero
	cvtsi2sdl	bmvals+40, %xmm2
	mulsd	%xmm2, %xmm0
	divsd	%xmm1, %xmm0
	movsd	-232(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, -148(%rbp)
.LBB14_44:                              # %if.end.172
                                        #   in Loop: Header=BB14_7 Depth=1
	jmp	.LBB14_45
.LBB14_45:                              # %if.end.173
                                        #   in Loop: Header=BB14_7 Depth=1
	cmpl	$0, bmvals+44
	je	.LBB14_54
# BB#46:                                # %if.then.175
                                        #   in Loop: Header=BB14_7 Depth=1
	movl	-132(%rbp), %eax
	movl	%eax, -128(%rbp)
.LBB14_47:                              # %for.cond.176
                                        #   Parent Loop BB14_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$0, -128(%rbp)
	je	.LBB14_53
# BB#48:                                # %for.body.178
                                        #   in Loop: Header=BB14_47 Depth=2
	movl	$255, %eax
	movsd	.LCPI14_0, %xmm0        # xmm0 = mem[0],zero
	movq	-40(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -40(%rbp)
	movzbl	(%rcx), %esi
	imull	-148(%rbp), %esi
	cvtsi2sdl	%esi, %xmm1
	movq	-112(%rbp), %rcx
	mulsd	24(%rcx), %xmm0
	divsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %esi
	movl	%esi, -136(%rbp)
	cmpl	-136(%rbp), %eax
	jge	.LBB14_50
# BB#49:                                # %cond.true.188
                                        #   in Loop: Header=BB14_47 Depth=2
	movl	$255, %eax
	movl	%eax, -244(%rbp)        # 4-byte Spill
	jmp	.LBB14_51
.LBB14_50:                              # %cond.false.189
                                        #   in Loop: Header=BB14_47 Depth=2
	movl	-136(%rbp), %eax
	movl	%eax, -244(%rbp)        # 4-byte Spill
.LBB14_51:                              # %cond.end.190
                                        #   in Loop: Header=BB14_47 Depth=2
	movl	-244(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -48(%rbp)
	movb	%cl, (%rdx)
# BB#52:                                # %for.inc
                                        #   in Loop: Header=BB14_47 Depth=2
	movl	-128(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -128(%rbp)
	jmp	.LBB14_47
.LBB14_53:                              # %for.end
                                        #   in Loop: Header=BB14_7 Depth=1
	jmp	.LBB14_59
.LBB14_54:                              # %if.else.194
                                        #   in Loop: Header=BB14_7 Depth=1
	movl	-132(%rbp), %eax
	movl	%eax, -128(%rbp)
.LBB14_55:                              # %for.cond.195
                                        #   Parent Loop BB14_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$0, -128(%rbp)
	je	.LBB14_58
# BB#56:                                # %for.body.197
                                        #   in Loop: Header=BB14_55 Depth=2
	movl	$255, %eax
	movq	-40(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -40(%rbp)
	movzbl	(%rcx), %esi
	imull	-148(%rbp), %esi
	movl	%eax, -248(%rbp)        # 4-byte Spill
	movl	%esi, %eax
	cltd
	movl	-248(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	movb	%al, %dil
	movq	-48(%rbp), %rcx
	movq	%rcx, %r8
	addq	$1, %r8
	movq	%r8, -48(%rbp)
	movb	%dil, (%rcx)
# BB#57:                                # %for.inc.204
                                        #   in Loop: Header=BB14_55 Depth=2
	movl	-128(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -128(%rbp)
	jmp	.LBB14_55
.LBB14_58:                              # %for.end.206
                                        #   in Loop: Header=BB14_7 Depth=1
	jmp	.LBB14_59
.LBB14_59:                              # %if.end.207
                                        #   in Loop: Header=BB14_7 Depth=1
	cmpl	$0, -60(%rbp)
	je	.LBB14_61
# BB#60:                                # %if.then.209
                                        #   in Loop: Header=BB14_7 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -40(%rbp)
	movb	(%rax), %dl
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -48(%rbp)
	movb	%dl, (%rax)
.LBB14_61:                              # %if.end.212
                                        #   in Loop: Header=BB14_7 Depth=1
	movl	-120(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -120(%rbp)
	cmpl	-92(%rbp), %eax
	jne	.LBB14_63
# BB#62:                                # %if.then.215
                                        #   in Loop: Header=BB14_7 Depth=1
	movl	$0, -120(%rbp)
.LBB14_63:                              # %if.end.216
                                        #   in Loop: Header=BB14_7 Depth=1
	jmp	.LBB14_64
.LBB14_64:                              # %for.inc.217
                                        #   in Loop: Header=BB14_7 Depth=1
	movl	-124(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -124(%rbp)
	jmp	.LBB14_7
.LBB14_65:                              # %for.end.219
	addq	$224, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end14:
	.size	bumpmap_row, .Lfunc_end14-bumpmap_row
	.cfi_endproc

	.align	16, 0x90
	.type	dialog_get_rows,@function
dialog_get_rows:                        # @dialog_get_rows
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp66:
	.cfi_def_cfa_offset 16
.Ltmp67:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp68:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movl	%r9d, -32(%rbp)
	callq	gimp_tile_width
	movl	%eax, -84(%rbp)
	callq	gimp_tile_height
	movl	%eax, -88(%rbp)
	movq	-8(%rbp), %rsi
	movl	16(%rsi), %eax
	movl	%eax, -72(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -36(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -40(%rbp)
	movl	-20(%rbp), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -44(%rbp)
	movl	-24(%rbp), %eax
	addl	-32(%rbp), %eax
	movl	%eax, -48(%rbp)
	movl	$0, -64(%rbp)
.LBB15_1:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_3 Depth 2
                                        #       Child Loop BB15_11 Depth 3
                                        #         Child Loop BB15_13 Depth 4
                                        #           Child Loop BB15_15 Depth 5
	movl	-24(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jge	.LBB15_24
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB15_1 Depth=1
	movl	-36(%rbp), %eax
	movl	%eax, -20(%rbp)
.LBB15_3:                               # %while.cond.4
                                        #   Parent Loop BB15_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB15_11 Depth 3
                                        #         Child Loop BB15_13 Depth 4
                                        #           Child Loop BB15_15 Depth 5
	movl	-20(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jge	.LBB15_23
# BB#4:                                 # %while.body.6
                                        #   in Loop: Header=BB15_3 Depth=2
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-8(%rbp), %rax
	movb	40(%rax), %cl
	shrb	$1, %cl
	andb	$1, %cl
	movzbl	%cl, %esi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	callq	gimp_drawable_get_tile2
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rdi
	callq	gimp_tile_ref
	movq	-96(%rbp), %rax
	movl	(%rax), %ecx
	movl	-20(%rbp), %eax
	cltd
	idivl	-84(%rbp)
	subl	%edx, %ecx
	movl	%ecx, -60(%rbp)
	movq	-96(%rbp), %rdi
	movl	4(%rdi), %ecx
	movl	-24(%rbp), %edx
	movl	%edx, %eax
	cltd
	idivl	-88(%rbp)
	subl	%edx, %ecx
	movl	%ecx, -64(%rbp)
	movl	-20(%rbp), %ecx
	addl	-60(%rbp), %ecx
	movl	%ecx, -52(%rbp)
	movl	-24(%rbp), %ecx
	addl	-64(%rbp), %ecx
	movl	%ecx, -56(%rbp)
	movl	-52(%rbp), %ecx
	cmpl	-44(%rbp), %ecx
	jge	.LBB15_6
# BB#5:                                 # %cond.true
                                        #   in Loop: Header=BB15_3 Depth=2
	movl	-52(%rbp), %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
	jmp	.LBB15_7
.LBB15_6:                               # %cond.false
                                        #   in Loop: Header=BB15_3 Depth=2
	movl	-44(%rbp), %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
.LBB15_7:                               # %cond.end
                                        #   in Loop: Header=BB15_3 Depth=2
	movl	-116(%rbp), %eax        # 4-byte Reload
	movl	%eax, -52(%rbp)
	movl	-56(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jge	.LBB15_9
# BB#8:                                 # %cond.true.14
                                        #   in Loop: Header=BB15_3 Depth=2
	movl	-56(%rbp), %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
	jmp	.LBB15_10
.LBB15_9:                               # %cond.false.15
                                        #   in Loop: Header=BB15_3 Depth=2
	movl	-48(%rbp), %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
.LBB15_10:                              # %cond.end.16
                                        #   in Loop: Header=BB15_3 Depth=2
	movl	-120(%rbp), %eax        # 4-byte Reload
	movl	%eax, -56(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -80(%rbp)
.LBB15_11:                              # %for.cond
                                        #   Parent Loop BB15_1 Depth=1
                                        #     Parent Loop BB15_3 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB15_13 Depth 4
                                        #           Child Loop BB15_15 Depth 5
	movl	-80(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jge	.LBB15_22
# BB#12:                                # %for.body
                                        #   in Loop: Header=BB15_11 Depth=3
	movq	-96(%rbp), %rax
	movq	24(%rax), %rax
	movq	-96(%rbp), %rcx
	movl	8(%rcx), %edx
	movq	-96(%rbp), %rcx
	movl	(%rcx), %esi
	movl	-80(%rbp), %edi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movl	%edi, %eax
	movl	%edx, -132(%rbp)        # 4-byte Spill
	cltd
	idivl	-88(%rbp)
	imull	%edx, %esi
	movl	-20(%rbp), %edx
	movl	%edx, %eax
	cltd
	idivl	-84(%rbp)
	addl	%edx, %esi
	movl	-132(%rbp), %edx        # 4-byte Reload
	imull	%esi, %edx
	movl	%edx, %edx
	movl	%edx, %ecx
	movq	-128(%rbp), %r8         # 8-byte Reload
	addq	%rcx, %r8
	movq	%r8, -104(%rbp)
	movl	-80(%rbp), %edx
	subl	-40(%rbp), %edx
	movslq	%edx, %rcx
	movq	-16(%rbp), %r8
	movq	(%r8,%rcx,8), %rcx
	movl	-72(%rbp), %edx
	movl	-20(%rbp), %esi
	subl	-36(%rbp), %esi
	imull	%esi, %edx
	movslq	%edx, %r8
	addq	%r8, %rcx
	movq	%rcx, -112(%rbp)
	movl	-20(%rbp), %edx
	movl	%edx, -76(%rbp)
.LBB15_13:                              # %for.cond.30
                                        #   Parent Loop BB15_1 Depth=1
                                        #     Parent Loop BB15_3 Depth=2
                                        #       Parent Loop BB15_11 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB15_15 Depth 5
	movl	-76(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jge	.LBB15_20
# BB#14:                                # %for.body.32
                                        #   in Loop: Header=BB15_13 Depth=4
	movl	-72(%rbp), %eax
	movl	%eax, -68(%rbp)
.LBB15_15:                              # %for.cond.33
                                        #   Parent Loop BB15_1 Depth=1
                                        #     Parent Loop BB15_3 Depth=2
                                        #       Parent Loop BB15_11 Depth=3
                                        #         Parent Loop BB15_13 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	cmpl	$0, -68(%rbp)
	je	.LBB15_18
# BB#16:                                # %for.body.34
                                        #   in Loop: Header=BB15_15 Depth=5
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movb	(%rax), %dl
	movq	-112(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -112(%rbp)
	movb	%dl, (%rax)
# BB#17:                                # %for.inc
                                        #   in Loop: Header=BB15_15 Depth=5
	movl	-68(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB15_15
.LBB15_18:                              # %for.end
                                        #   in Loop: Header=BB15_13 Depth=4
	jmp	.LBB15_19
.LBB15_19:                              # %for.inc.36
                                        #   in Loop: Header=BB15_13 Depth=4
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB15_13
.LBB15_20:                              # %for.end.37
                                        #   in Loop: Header=BB15_11 Depth=3
	jmp	.LBB15_21
.LBB15_21:                              # %for.inc.38
                                        #   in Loop: Header=BB15_11 Depth=3
	movl	-80(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -80(%rbp)
	jmp	.LBB15_11
.LBB15_22:                              # %for.end.40
                                        #   in Loop: Header=BB15_3 Depth=2
	xorl	%esi, %esi
	movq	-96(%rbp), %rdi
	callq	gimp_tile_unref
	movl	-60(%rbp), %esi
	addl	-20(%rbp), %esi
	movl	%esi, -20(%rbp)
	jmp	.LBB15_3
.LBB15_23:                              # %while.end
                                        #   in Loop: Header=BB15_1 Depth=1
	movl	-64(%rbp), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB15_1
.LBB15_24:                              # %while.end.43
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	dialog_get_rows, .Lfunc_end15-dialog_get_rows
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI16_0:
	.quad	4602678819172646912     # double 0.5
.LCPI16_1:
	.quad	4589866978952703325     # double 0.0722
.LCPI16_2:
	.quad	4604617168452267173     # double 0.71519999999999995
.LCPI16_3:
	.quad	4596827742536767164     # double 0.21260000000000001
.LCPI16_4:
	.quad	4643176031446892544     # double 255
	.text
	.align	16, 0x90
	.type	bumpmap_convert_row,@function
bumpmap_convert_row:                    # @bumpmap_convert_row
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp69:
	.cfi_def_cfa_offset 16
.Ltmp70:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp71:
	.cfi_def_cfa_register %rbp
	xorl	%eax, %eax
	movl	$1, %r9d
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	%r8, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -40(%rbp)
	cmpl	$0, -20(%rbp)
	cmovnel	%r9d, %eax
	movl	%eax, -20(%rbp)
	cmpl	$3, -16(%rbp)
	jl	.LBB16_9
# BB#1:                                 # %if.then
	jmp	.LBB16_2
.LBB16_2:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -12(%rbp)
	je	.LBB16_8
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB16_2 Depth=1
	cmpl	$0, -20(%rbp)
	je	.LBB16_5
# BB#4:                                 # %if.then.3
                                        #   in Loop: Header=BB16_2 Depth=1
	movsd	.LCPI16_4, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI16_0, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI16_1, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI16_2, %xmm3        # xmm3 = mem[0],zero
	movsd	.LCPI16_3, %xmm4        # xmm4 = mem[0],zero
	cvtsi2sdl	bmvals+36, %xmm5
	movq	-8(%rbp), %rax
	movzbl	(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm6
	mulsd	%xmm4, %xmm6
	movq	-8(%rbp), %rax
	movzbl	1(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm4
	mulsd	%xmm3, %xmm4
	addsd	%xmm4, %xmm6
	movq	-8(%rbp), %rax
	movzbl	2(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm3
	mulsd	%xmm2, %xmm3
	addsd	%xmm3, %xmm6
	addsd	%xmm1, %xmm6
	cvttsd2si	%xmm6, %ecx
	subl	bmvals+36, %ecx
	movq	-8(%rbp), %rax
	movzbl	3(%rax), %edx
	imull	%edx, %ecx
	cvtsi2sdl	%ecx, %xmm1
	divsd	%xmm0, %xmm1
	addsd	%xmm1, %xmm5
	cvttsd2si	%xmm5, %ecx
	movslq	%ecx, %rax
	movq	-32(%rbp), %rsi
	movb	(%rsi,%rax), %dil
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	addq	$1, %rsi
	movq	%rsi, -40(%rbp)
	movb	%dil, (%rax)
	jmp	.LBB16_6
.LBB16_5:                               # %if.else
                                        #   in Loop: Header=BB16_2 Depth=1
	movsd	.LCPI16_0, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI16_1, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI16_2, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI16_3, %xmm3        # xmm3 = mem[0],zero
	movq	-8(%rbp), %rax
	movzbl	(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm4
	mulsd	%xmm3, %xmm4
	movq	-8(%rbp), %rax
	movzbl	1(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm3
	mulsd	%xmm2, %xmm3
	addsd	%xmm3, %xmm4
	movq	-8(%rbp), %rax
	movzbl	2(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm2
	mulsd	%xmm1, %xmm2
	addsd	%xmm2, %xmm4
	addsd	%xmm0, %xmm4
	cvttsd2si	%xmm4, %ecx
	movslq	%ecx, %rax
	movq	-32(%rbp), %rdx
	movb	(%rdx,%rax), %sil
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -40(%rbp)
	movb	%sil, (%rax)
.LBB16_6:                               # %if.end
                                        #   in Loop: Header=BB16_2 Depth=1
	movl	-20(%rbp), %eax
	addl	$3, %eax
	movq	-8(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -8(%rbp)
# BB#7:                                 # %for.inc
                                        #   in Loop: Header=BB16_2 Depth=1
	movl	-12(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB16_2
.LBB16_8:                               # %for.end
	jmp	.LBB16_17
.LBB16_9:                               # %if.else.44
	jmp	.LBB16_10
.LBB16_10:                              # %for.cond.45
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -12(%rbp)
	je	.LBB16_16
# BB#11:                                # %for.body.47
                                        #   in Loop: Header=BB16_10 Depth=1
	cmpl	$0, -20(%rbp)
	je	.LBB16_13
# BB#12:                                # %if.then.49
                                        #   in Loop: Header=BB16_10 Depth=1
	movl	$255, %eax
	movl	bmvals+36, %ecx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx), %esi
	subl	bmvals+36, %esi
	movq	-8(%rbp), %rdx
	movzbl	1(%rdx), %edi
	imull	%edi, %esi
	movl	%eax, -44(%rbp)         # 4-byte Spill
	movl	%esi, %eax
	cltd
	movl	-44(%rbp), %esi         # 4-byte Reload
	idivl	%esi
	addl	%eax, %ecx
	movslq	%ecx, %r8
	movq	-32(%rbp), %r9
	movb	(%r9,%r8), %r10b
	movq	-40(%rbp), %r8
	movq	%r8, %r9
	addq	$1, %r9
	movq	%r9, -40(%rbp)
	movb	%r10b, (%r8)
	jmp	.LBB16_14
.LBB16_13:                              # %if.else.61
                                        #   in Loop: Header=BB16_10 Depth=1
	movq	-8(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, %eax
	movq	-32(%rbp), %rdx
	movb	(%rdx,%rax), %sil
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -40(%rbp)
	movb	%sil, (%rax)
.LBB16_14:                              # %if.end.65
                                        #   in Loop: Header=BB16_10 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movq	-8(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -8(%rbp)
# BB#15:                                # %for.inc.69
                                        #   in Loop: Header=BB16_10 Depth=1
	movl	-12(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB16_10
.LBB16_16:                              # %for.end.71
	jmp	.LBB16_17
.LBB16_17:                              # %if.end.72
	popq	%rbp
	retq
.Lfunc_end16:
	.size	bumpmap_convert_row, .Lfunc_end16-bumpmap_convert_row
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
	.long	16                      # 0x10
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
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.20
	.quad	.L.str.21
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.22
	.quad	.L.str.23
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.24
	.quad	.L.str.25
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.26
	.quad	.L.str.27
	.size	query.args, 336

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
	.asciz	"bumpmap"
	.size	.L.str.6, 8

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Bump map drawable"
	.size	.L.str.7, 18

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"azimuth"
	.size	.L.str.8, 8

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Azimuth"
	.size	.L.str.9, 8

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"elevation"
	.size	.L.str.10, 10

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Elevation"
	.size	.L.str.11, 10

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"depth"
	.size	.L.str.12, 6

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Depth"
	.size	.L.str.13, 6

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"xofs"
	.size	.L.str.14, 5

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"X offset"
	.size	.L.str.15, 9

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"yofs"
	.size	.L.str.16, 5

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Y offset"
	.size	.L.str.17, 9

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"waterlevel"
	.size	.L.str.18, 11

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Level that full transparency should represent"
	.size	.L.str.19, 46

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"ambient"
	.size	.L.str.20, 8

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Ambient lighting factor"
	.size	.L.str.21, 24

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"compensate"
	.size	.L.str.22, 11

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Compensate for darkening { TRUE, FALSE }"
	.size	.L.str.23, 41

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"invert"
	.size	.L.str.24, 7

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Invert bumpmap { TRUE, FALSE }"
	.size	.L.str.25, 31

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"type"
	.size	.L.str.26, 5

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"Type of map { LINEAR (0), SPHERICAL (1), SINUSOIDAL (2) }"
	.size	.L.str.27, 58

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"plug-in-bump-map"
	.size	.L.str.28, 17

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"Create an embossing effect using a bump map"
	.size	.L.str.29, 44

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"This plug-in uses the algorithm described by John Schlag, \"Fast Embossing Effects on Raster Image Data\" in Graphics GEMS IV (ISBN 0-12-336155-9). It takes a drawable to be applied as a bump map to another image and produces a nice embossing effect."
	.size	.L.str.30, 249

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"Federico Mena Quintero, Jens Lautenbacher & Sven Neumann"
	.size	.L.str.31, 57

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"April 2000, 3.0-pre1-ac2"
	.size	.L.str.32, 25

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"_Bump Map..."
	.size	.L.str.33, 13

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"RGB*, GRAY*"
	.size	.L.str.34, 12

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"<Image>/Filters/Map"
	.size	.L.str.35, 20

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"plug-in-bump-map-tiled"
	.size	.L.str.36, 23

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"Create an embossing effect using a tiled image as a bump map"
	.size	.L.str.37, 61

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"This plug-in uses the algorithm described by John Schlag, \"Fast Embossing Effects on Raster Image Data\" in Graphics GEMS IV (ISBN 0-12-336155-9). It takes a drawable to be tiled and applied as a bump map to another image and produces a nice embossing effect."
	.size	.L.str.38, 259

	.type	run.values,@object      # @run.values
	.local	run.values
	.comm	run.values,40,16
	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"gimp20-std-plug-ins"
	.size	.L.str.39, 20

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"UTF-8"
	.size	.L.str.40, 6

	.type	drawable,@object        # @drawable
	.local	drawable
	.comm	drawable,8,8
	.type	sel_x1,@object          # @sel_x1
	.local	sel_x1
	.comm	sel_x1,4,4
	.type	sel_y1,@object          # @sel_y1
	.local	sel_y1
	.comm	sel_y1,4,4
	.type	sel_width,@object       # @sel_width
	.local	sel_width
	.comm	sel_width,4,4
	.type	sel_height,@object      # @sel_height
	.local	sel_height
	.comm	sel_height,4,4
	.type	sel_x2,@object          # @sel_x2
	.local	sel_x2
	.comm	sel_x2,4,4
	.type	sel_y2,@object          # @sel_y2
	.local	sel_y2
	.comm	sel_y2,4,4
	.type	img_bpp,@object         # @img_bpp
	.local	img_bpp
	.comm	img_bpp,4,4
	.type	img_has_alpha,@object   # @img_has_alpha
	.local	img_has_alpha
	.comm	img_has_alpha,4,4
	.type	bmvals,@object          # @bmvals
	.data
	.align	8
bmvals:
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	4638953906796232704     # double 135
	.quad	4631530004285489152     # double 45
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.size	bmvals, 64

	.type	.L.str.41,@object       # @.str.41
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.41:
	.asciz	"Bump Map"
	.size	.L.str.41, 9

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"gimp-bumpmap"
	.size	.L.str.42, 13

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"gtk-cancel"
	.size	.L.str.43, 11

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"gtk-ok"
	.size	.L.str.44, 7

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"invalidated"
	.size	.L.str.45, 12

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"event"
	.size	.L.str.46, 6

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"_Bump map:"
	.size	.L.str.47, 11

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"Linear"
	.size	.L.str.48, 7

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"Spherical"
	.size	.L.str.49, 10

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"Sinusoidal"
	.size	.L.str.50, 11

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"_Map type:"
	.size	.L.str.51, 11

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"Co_mpensate for darkening"
	.size	.L.str.52, 26

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"toggled"
	.size	.L.str.53, 8

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"I_nvert bumpmap"
	.size	.L.str.54, 16

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"_Tile bumpmap"
	.size	.L.str.55, 14

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"_Azimuth:"
	.size	.L.str.56, 10

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"value-changed"
	.size	.L.str.57, 14

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"_Elevation:"
	.size	.L.str.58, 12

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"_Depth:"
	.size	.L.str.59, 8

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"_X offset:"
	.size	.L.str.60, 11

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"The offset can be adjusted by dragging the preview using the middle mouse button."
	.size	.L.str.61, 82

	.type	bmint,@object           # @bmint
	.local	bmint
	.comm	bmint,456,8
	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"_Y offset:"
	.size	.L.str.62, 11

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"_Waterlevel:"
	.size	.L.str.63, 13

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"A_mbient:"
	.size	.L.str.64, 10

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"Bump-mapping"
	.size	.L.str.65, 13


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
