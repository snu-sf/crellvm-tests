	.text
	.file	"screenshot.bc"
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
	pushq	%rbx
	subq	$88, %rsp
.Ltmp3:
	.cfi_offset %rbx, -40
.Ltmp4:
	.cfi_offset %r14, -32
.Ltmp5:
	.cfi_offset %r15, -24
	movabsq	$.L.str.16, %rdi
	movabsq	$.L.str.17, %rsi
	movabsq	$.L.str.18, %rdx
	movabsq	$.L.str.19, %rcx
	movabsq	$.L.str.20, %r8
	movabsq	$.L.str.21, %r9
	movabsq	$.L.str.22, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %r11d
	movl	$1, %r10d
	movl	$7, %ebx
	movabsq	$query.args, %r14
	movabsq	$query.return_vals, %r15
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$7, 24(%rsp)
	movl	$1, 32(%rsp)
	movq	%r14, 40(%rsp)
	movq	%r15, 48(%rsp)
	movl	%r10d, -28(%rbp)        # 4-byte Spill
	movq	%r11, -40(%rbp)         # 8-byte Spill
	movl	%ebx, -44(%rbp)         # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.16, %rdi
	movabsq	$.L.str.23, %rsi
	callq	gimp_plugin_menu_register
	movabsq	$.L.str.16, %rdi
	movl	$1, %esi
	movabsq	$screenshot_icon, %rdx
	movl	%eax, -48(%rbp)         # 4-byte Spill
	callq	gimp_plugin_icon_register
	movl	%eax, -52(%rbp)         # 4-byte Spill
	addq	$88, %rsp
	popq	%rbx
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
.Ltmp6:
	.cfi_def_cfa_offset 16
.Ltmp7:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp8:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movabsq	$run.values, %rax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-24(%rbp), %rcx
	movl	8(%rcx), %esi
	movl	%esi, -44(%rbp)
	movl	$3, -48(%rbp)
	movq	$0, -56(%rbp)
	movl	$21, run.values
	movl	-48(%rbp), %esi
	movl	%esi, run.values+8
	movq	-32(%rbp), %rcx
	movl	$1, (%rcx)
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
# BB#1:                                 # %do.body
	callq	gimp_locale_directory
	movabsq	$.L.str.24, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.24, %rdi
	movabsq	$.L.str.25, %rsi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.24, %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	textdomain
	movq	%rax, -88(%rbp)         # 8-byte Spill
# BB#2:                                 # %do.end
	movl	-44(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	je	.LBB1_3
	jmp	.LBB1_35
.LBB1_35:                               # %do.end
	movl	-92(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
	je	.LBB1_6
	jmp	.LBB1_36
.LBB1_36:                               # %do.end
	movl	-92(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	je	.LBB1_15
	jmp	.LBB1_16
.LBB1_3:                                # %sw.bb
	movabsq	$.L.str.16, %rdi
	movabsq	$shootvals, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	leaq	-56(%rbp), %rdi
	movl	$0, shootvals+8
	movl	%eax, -104(%rbp)        # 4-byte Spill
	callq	shoot_dialog
	cmpl	$0, %eax
	jne	.LBB1_5
# BB#4:                                 # %if.then
	movl	$4, -48(%rbp)
.LBB1_5:                                # %if.end
	jmp	.LBB1_17
.LBB1_6:                                # %sw.bb.6
	cmpl	$3, -12(%rbp)
	jne	.LBB1_8
# BB#7:                                 # %if.then.7
	movl	$2, %eax
	xorl	%ecx, %ecx
	movq	-24(%rbp), %rdx
	movl	48(%rdx), %esi
	movl	%esi, -64(%rbp)
	cmpl	$0, -64(%rbp)
	cmovnel	%ecx, %eax
	movl	%eax, shootvals
	movq	-24(%rbp), %rdx
	movl	88(%rdx), %eax
	movl	%eax, shootvals+8
	movl	$0, shootvals+12
	jmp	.LBB1_12
.LBB1_8:                                # %if.else
	cmpl	$7, -12(%rbp)
	jne	.LBB1_10
# BB#9:                                 # %if.then.16
	movl	$1, shootvals
	movq	-24(%rbp), %rax
	movl	88(%rax), %ecx
	movl	%ecx, shootvals+8
	movl	$0, shootvals+12
	movq	-24(%rbp), %rax
	movl	128(%rax), %ecx
	movl	%ecx, shootvals+16
	movq	-24(%rbp), %rax
	movl	168(%rax), %ecx
	movl	%ecx, shootvals+20
	movq	-24(%rbp), %rax
	movl	208(%rax), %ecx
	movl	%ecx, shootvals+24
	movq	-24(%rbp), %rax
	movl	248(%rax), %ecx
	movl	%ecx, shootvals+28
	jmp	.LBB1_11
.LBB1_10:                               # %if.else.32
	movl	$1, -48(%rbp)
.LBB1_11:                               # %if.end.33
	jmp	.LBB1_12
.LBB1_12:                               # %if.end.34
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, %rdi
	movq	%rcx, %rsi
	callq	gdk_init_check
	cmpl	$0, %eax
	jne	.LBB1_14
# BB#13:                                # %if.then.37
	movl	$1, -48(%rbp)
.LBB1_14:                               # %if.end.38
	jmp	.LBB1_17
.LBB1_15:                               # %sw.bb.39
	movabsq	$.L.str.16, %rdi
	movabsq	$shootvals, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movl	%eax, -108(%rbp)        # 4-byte Spill
	jmp	.LBB1_17
.LBB1_16:                               # %sw.default
	jmp	.LBB1_17
.LBB1_17:                               # %sw.epilog
	cmpl	$3, -48(%rbp)
	jne	.LBB1_26
# BB#18:                                # %if.then.42
	cmpl	$0, shootvals+12
	jbe	.LBB1_20
# BB#19:                                # %if.then.44
	movl	shootvals+12, %edi
	callq	shoot_delay
.LBB1_20:                               # %if.end.45
	cmpl	$0, shootvals
	je	.LBB1_25
# BB#21:                                # %land.lhs.true
	cmpl	$0, shootvals+8
	jne	.LBB1_25
# BB#22:                                # %if.then.48
	movq	-56(%rbp), %rdi
	callq	select_window
	movl	%eax, shootvals+8
	cmpl	$0, shootvals+8
	jne	.LBB1_24
# BB#23:                                # %if.then.51
	movl	$4, -48(%rbp)
.LBB1_24:                               # %if.end.52
	jmp	.LBB1_25
.LBB1_25:                               # %if.end.53
	jmp	.LBB1_26
.LBB1_26:                               # %if.end.54
	cmpl	$3, -48(%rbp)
	jne	.LBB1_30
# BB#27:                                # %if.then.56
	movq	-56(%rbp), %rdi
	callq	shoot
	movl	%eax, -60(%rbp)
	cmpl	$-1, -60(%rbp)
	jne	.LBB1_29
# BB#28:                                # %if.then.59
	movl	$0, -48(%rbp)
.LBB1_29:                               # %if.end.60
	jmp	.LBB1_30
.LBB1_30:                               # %if.end.61
	cmpl	$3, -48(%rbp)
	jne	.LBB1_34
# BB#31:                                # %if.then.63
	cmpl	$0, -44(%rbp)
	jne	.LBB1_33
# BB#32:                                # %if.then.65
	movabsq	$.L.str.16, %rdi
	movabsq	$shootvals, %rax
	movl	$36, %edx
	movq	%rax, %rsi
	callq	gimp_procedural_db_set_data
	movl	-60(%rbp), %edi
	movl	%eax, -112(%rbp)        # 4-byte Spill
	callq	gimp_display_new
	movl	%eax, -116(%rbp)        # 4-byte Spill
.LBB1_33:                               # %if.end.68
	movq	-32(%rbp), %rax
	movl	$2, (%rax)
	movl	$13, run.values+40
	movl	-60(%rbp), %ecx
	movl	%ecx, run.values+48
.LBB1_34:                               # %if.end.69
	movl	-48(%rbp), %eax
	movl	%eax, run.values+8
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
.Ltmp9:
	.cfi_def_cfa_offset 16
.Ltmp10:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp11:
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
.LCPI3_1:
	.quad	4607182418800017408     # double 1
.LCPI3_2:
	.quad	4617315517961601024     # double 5
	.text
	.align	16, 0x90
	.type	shoot_dialog,@function
shoot_dialog:                           # @shoot_dialog
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp12:
	.cfi_def_cfa_offset 16
.Ltmp13:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp14:
	.cfi_def_cfa_register %rbp
	subq	$688, %rsp              # imm = 0x2B0
	movabsq	$.L.str.26, %rax
	xorl	%esi, %esi
	movq	%rdi, -8(%rbp)
	movq	$0, -104(%rbp)
	movq	%rax, %rdi
	callq	gimp_ui_init
	movabsq	$.L.str.27, %rdi
	callq	gettext
	movabsq	$.L.str.28, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	movabsq	$gimp_standard_help_func, %r8
	movabsq	$.L.str.16, %r9
	movabsq	$.L.str.29, %rdi
	movl	$4294967290, %r10d      # imm = 0xFFFFFFFA
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$-6, 8(%rsp)
	movq	$0, 16(%rsp)
	movb	$0, %al
	movl	%r10d, -132(%rbp)       # 4-byte Spill
	callq	gimp_dialog_new
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.30, %rdi
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$4294967291, %edx       # imm = 0xFFFFFFFB
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_dialog_add_button
	movq	%rax, -72(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	movl	$4294967295, %edi       # imm = 0xFFFFFFFF
	movabsq	$screenshot_icon, %rsi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	callq	gdk_pixbuf_new_from_inline
	movq	%rax, -96(%rbp)
	cmpq	$0, -96(%rbp)
	je	.LBB3_2
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_button_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-96(%rbp), %rdi
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_image_new_from_pixbuf
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_button_set_image
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB3_2:                                # %if.end
	leaq	-112(%rbp), %rdi
	xorps	%xmm0, %xmm0
	movsd	.LCPI3_0, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI3_1, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI3_2, %xmm4         # xmm4 = mem[0],zero
	xorl	%esi, %esi
	movl	$1, %eax
	movl	$12, %ecx
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	movl	%eax, %edi
	movl	%esi, -188(%rbp)        # 4-byte Spill
	movl	%ecx, %esi
	movl	%ecx, -192(%rbp)        # 4-byte Spill
	movsd	%xmm0, -200(%rbp)       # 8-byte Spill
	movsd	%xmm2, -208(%rbp)       # 8-byte Spill
	movsd	%xmm3, -216(%rbp)       # 8-byte Spill
	movsd	%xmm4, -224(%rbp)       # 8-byte Spill
	movl	%eax, -228(%rbp)        # 4-byte Spill
	callq	gtk_box_new
	movq	%rax, -24(%rbp)
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	movl	-192(%rbp), %esi        # 4-byte Reload
	callq	gtk_container_set_border_width
	movq	-16(%rbp), %rdi
	movq	%rdi, -248(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	xorl	%ecx, %ecx
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -260(%rbp)        # 4-byte Spill
	movl	-260(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-24(%rbp), %rdi
	callq	gtk_widget_show
	callq	gtk_notebook_get_type
	movl	$.L.str.31, %ecx
	movl	%ecx, %esi
	movl	$.L.str.32, %ecx
                                        # kill: RCX<def> ECX<kill>
	movl	-260(%rbp), %edx        # 4-byte Reload
	movl	%edx, %edi
	movb	%dl, %r9b
	movq	%rdi, -272(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	-260(%rbp), %r8d        # 4-byte Reload
	movq	-272(%rbp), %rax        # 8-byte Reload
	movb	%r9b, -273(%rbp)        # 1-byte Spill
	movq	%rax, %r9
	movb	-273(%rbp), %al         # 1-byte Reload
	callq	g_object_new
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rdi, -288(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	movl	-260(%rbp), %edx        # 4-byte Reload
	movl	-260(%rbp), %ecx        # 4-byte Reload
	movl	-260(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_end
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	movq	-32(%rbp), %rdi
	movq	%rdi, -296(%rbp)        # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$.L.str.33, %ecx
	movl	%ecx, %edi
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movl	-260(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	shoot_dialog_add_hint
	movq	-32(%rbp), %rdi
	movq	%rdi, -312(%rbp)        # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$.L.str.34, %ecx
	movl	%ecx, %edi
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movl	-228(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	shoot_dialog_add_hint
	movq	-32(%rbp), %rdi
	movq	%rdi, -328(%rbp)        # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$.L.str.35, %ecx
	movl	%ecx, %edi
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$2, %ecx
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movl	%ecx, %esi
	movq	%rax, %rdx
	movl	%ecx, -340(%rbp)        # 4-byte Spill
	callq	shoot_dialog_add_hint
	movq	-32(%rbp), %rdi
	movq	%rdi, -352(%rbp)        # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	shootvals(%rip), %esi
	movq	%rax, %rdi
	callq	gtk_notebook_set_current_page
	movl	$.L.str.36, %ecx
	movl	%ecx, %edi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rdi, -360(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	-260(%rbp), %edx        # 4-byte Reload
	movl	-260(%rbp), %ecx        # 4-byte Reload
	movl	-260(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movl	$6, %ecx
	movl	-228(%rbp), %edi        # 4-byte Reload
	movl	%ecx, %esi
	movl	%ecx, -364(%rbp)        # 4-byte Spill
	callq	gtk_box_new
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rdi
	movq	%rdi, -376(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movq	-104(%rbp), %rdi
	movl	$.L.str.37, %ecx
	movl	%ecx, %eax
	movq	%rdi, -384(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gettext
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_radio_button_new_with_mnemonic
	movq	%rax, -72(%rbp)
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	gtk_radio_button_get_type
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_radio_button_get_group
	movq	%rax, -104(%rbp)
	movq	-48(%rbp), %rdi
	movq	%rdi, -400(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	movl	-260(%rbp), %edx        # 4-byte Reload
	movl	-260(%rbp), %ecx        # 4-byte Reload
	movl	-260(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movq	-72(%rbp), %rdi
	movl	$80, %ecx
	movl	%ecx, %eax
	movq	%rax, %rsi
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	g_type_check_instance_cast
	movl	$.L.str.38, %ecx
	movl	%ecx, %esi
	movl	$2, %ecx
	movl	%ecx, %edx
	movq	%rax, %rdi
	movq	%rsi, -416(%rbp)        # 8-byte Spill
	callq	g_object_set_data
	movq	-72(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movl	$.L.str.39, %r8d
	movl	%r8d, %eax
	movl	$shoot_radio_button_toggled, %r8d
	movl	%r8d, %edx
	movq	%rax, %rsi
	movq	%rdx, -424(%rbp)        # 8-byte Spill
	movq	-272(%rbp), %r8         # 8-byte Reload
	movl	-260(%rbp), %r9d        # 4-byte Reload
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-72(%rbp), %rdi
	movq	%rax, -440(%rbp)        # 8-byte Spill
	movq	%rdi, -448(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-448(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	shootvals(%rip), %r9d
	subl	$2, %r9d
	sete	%r10b
	movzbl	%r10b, %esi
	movq	%rax, %rdi
	movl	%r9d, -452(%rbp)        # 4-byte Spill
	callq	gtk_toggle_button_set_active
	movq	-104(%rbp), %rdi
	movl	$.L.str.40, %esi
	movl	%esi, %eax
	movq	%rdi, -464(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gettext
	movq	-464(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_radio_button_new_with_mnemonic
	movq	%rax, -72(%rbp)
	movq	%rax, -472(%rbp)        # 8-byte Spill
	callq	gtk_radio_button_get_type
	movq	-472(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_radio_button_get_group
	movq	%rax, -104(%rbp)
	movq	-48(%rbp), %rdi
	movq	%rdi, -480(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-480(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	movl	-260(%rbp), %edx        # 4-byte Reload
	movl	-260(%rbp), %ecx        # 4-byte Reload
	movl	-260(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movq	-72(%rbp), %rdi
	movq	-408(%rbp), %rsi        # 8-byte Reload
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	movq	-416(%rbp), %rsi        # 8-byte Reload
	movq	-272(%rbp), %rdx        # 8-byte Reload
	callq	g_object_set_data
	movq	-72(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	-432(%rbp), %rsi        # 8-byte Reload
	movq	-424(%rbp), %rdx        # 8-byte Reload
	movq	-272(%rbp), %r8         # 8-byte Reload
	movl	-260(%rbp), %r9d        # 4-byte Reload
	callq	g_signal_connect_data
	movl	-260(%rbp), %edi        # 4-byte Reload
	movl	-192(%rbp), %esi        # 4-byte Reload
	movq	%rax, -488(%rbp)        # 8-byte Spill
	callq	gtk_box_new
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rdi
	movq	%rdi, -496(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-496(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	-260(%rbp), %edx        # 4-byte Reload
	movl	-260(%rbp), %ecx        # 4-byte Reload
	movl	-260(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movl	$.L.str.41, %ecx
	movl	%ecx, %edi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_mnemonic
	movq	%rax, -80(%rbp)
	movq	%rax, -504(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-504(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	shootvals+32(%rip), %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-56(%rbp), %rdi
	movq	%rdi, -512(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-512(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-80(%rbp), %rsi
	movl	$24, %r8d
	movq	%rax, %rdi
	movl	-228(%rbp), %edx        # 4-byte Reload
	movl	-228(%rbp), %ecx        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-80(%rbp), %rdi
	callq	gtk_widget_show
	movq	-80(%rbp), %rdi
	movl	$gimp_toggle_button_update, %ecx
	movl	%ecx, %edx
	movl	$shootvals+32, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-432(%rbp), %rsi        # 8-byte Reload
	movq	-272(%rbp), %r8         # 8-byte Reload
	movl	-260(%rbp), %r9d        # 4-byte Reload
	callq	g_signal_connect_data
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rdx
	movl	$.L.str.42, %r9d
	movl	%r9d, %esi
	movl	$.L.str.43, %r9d
	movl	%r9d, %ecx
	movl	-340(%rbp), %r8d        # 4-byte Reload
	movq	%rax, -520(%rbp)        # 8-byte Spill
	callq	g_object_bind_property
	movq	-72(%rbp), %rdi
	movq	%rax, -528(%rbp)        # 8-byte Spill
	movq	%rdi, -536(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-536(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	shootvals(%rip), %r8d
	testl	%r8d, %r8d
	sete	%r10b
	movzbl	%r10b, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-104(%rbp), %rdi
	movl	$.L.str.44, %esi
	movl	%esi, %eax
	movq	%rdi, -544(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gettext
	movq	-544(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_radio_button_new_with_mnemonic
	movq	%rax, -72(%rbp)
	movq	%rax, -552(%rbp)        # 8-byte Spill
	callq	gtk_radio_button_get_type
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_radio_button_get_group
	movq	%rax, -104(%rbp)
	movq	-72(%rbp), %rdi
	movq	%rdi, -560(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-560(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	shootvals(%rip), %r8d
	subl	$1, %r8d
	sete	%r10b
	movzbl	%r10b, %esi
	movq	%rax, %rdi
	movl	%r8d, -564(%rbp)        # 4-byte Spill
	callq	gtk_toggle_button_set_active
	movq	-48(%rbp), %rdi
	movq	%rdi, -576(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-576(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	movl	-260(%rbp), %edx        # 4-byte Reload
	movl	-260(%rbp), %ecx        # 4-byte Reload
	movl	-260(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movq	-72(%rbp), %rdi
	movq	-408(%rbp), %rsi        # 8-byte Reload
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	movl	%ecx, %edx
	movq	%rax, %rdi
	movq	-416(%rbp), %rsi        # 8-byte Reload
	callq	g_object_set_data
	movq	-72(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	-432(%rbp), %rsi        # 8-byte Reload
	movq	-424(%rbp), %rdx        # 8-byte Reload
	movq	-272(%rbp), %r8         # 8-byte Reload
	movl	-260(%rbp), %r9d        # 4-byte Reload
	callq	g_signal_connect_data
	movl	$.L.str.45, %r9d
	movl	%r9d, %edi
	movq	%rax, -584(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rdi, -592(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-592(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	-260(%rbp), %edx        # 4-byte Reload
	movl	-260(%rbp), %ecx        # 4-byte Reload
	movl	-260(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movl	-228(%rbp), %edi        # 4-byte Reload
	movl	-364(%rbp), %esi        # 4-byte Reload
	callq	gtk_box_new
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rdi
	movq	%rdi, -600(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-600(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movl	-260(%rbp), %edi        # 4-byte Reload
	movl	-364(%rbp), %esi        # 4-byte Reload
	callq	gtk_box_new
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rdi
	movq	%rdi, -608(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-608(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	-260(%rbp), %edx        # 4-byte Reload
	movl	-260(%rbp), %ecx        # 4-byte Reload
	movl	-260(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movl	shootvals+12(%rip), %ecx
	movl	%ecx, %eax
	cvtsi2sdq	%rax, %xmm0
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movsd	-200(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-208(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	-216(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	-224(%rbp), %xmm4       # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movsd	-200(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-200(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movl	-188(%rbp), %esi        # 4-byte Reload
	callq	gimp_spin_button_new
	movq	%rax, -88(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -616(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-616(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -620(%rbp)        # 4-byte Spill
	movl	-620(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-88(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.46, %rsi
	movabsq	$gimp_int_adjustment_update, %rax
	movabsq	$shootvals, %rdi
	addq	$12, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-112(%rbp), %r11
	movq	%rdi, -632(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %rdx
	movq	-632(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.47, %rdi
	movq	%rax, -640(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -648(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-648(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	movq	-16(%rbp), %rdi
	callq	gtk_widget_show
	movq	-16(%rbp), %rax
	movq	%rax, -656(%rbp)        # 8-byte Spill
	callq	gimp_dialog_get_type
	movq	-656(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dialog_run
	cmpl	$-5, %eax
	sete	%r10b
	andb	$1, %r10b
	movzbl	%r10b, %eax
	movl	%eax, -116(%rbp)
	cmpl	$0, -116(%rbp)
	je	.LBB3_4
# BB#3:                                 # %if.then.115
	movq	-16(%rbp), %rdi
	callq	gtk_widget_get_screen
	movq	-8(%rbp), %rdi
	movq	%rax, (%rdi)
.LBB3_4:                                # %if.end.117
	movq	-16(%rbp), %rdi
	callq	gtk_widget_destroy
	cmpl	$0, -116(%rbp)
	je	.LBB3_6
# BB#5:                                 # %if.then.119
	movl	$100, %edi
	movabsq	$shoot_quit_timeout, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	callq	g_timeout_add
	movl	%eax, -660(%rbp)        # 4-byte Spill
	callq	gtk_main
.LBB3_6:                                # %if.end.121
	movl	-116(%rbp), %eax
	addq	$688, %rsp              # imm = 0x2B0
	popq	%rbp
	retq
.Lfunc_end3:
	.size	shoot_dialog, .Lfunc_end3-shoot_dialog
	.cfi_endproc

	.align	16, 0x90
	.type	shoot_delay,@function
shoot_delay:                            # @shoot_delay
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp15:
	.cfi_def_cfa_offset 16
.Ltmp16:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp17:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$1000, %eax             # imm = 0x3E8
	movabsq	$shoot_delay_callback, %rsi
	leaq	-4(%rbp), %rcx
	movl	%edi, -4(%rbp)
	movl	%eax, %edi
	movq	%rcx, %rdx
	callq	g_timeout_add
	movl	%eax, -8(%rbp)          # 4-byte Spill
	callq	gtk_main
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	shoot_delay, .Lfunc_end4-shoot_delay
	.cfi_endproc

	.align	16, 0x90
	.type	select_window,@function
select_window:                          # @select_window
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	select_window_x11
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	select_window, .Lfunc_end5-select_window
	.cfi_endproc

	.align	16, 0x90
	.type	shoot,@function
shoot:                                  # @shoot
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	shoot_main
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	shoot, .Lfunc_end6-shoot
	.cfi_endproc

	.align	16, 0x90
	.type	shoot_dialog_add_hint,@function
shoot_dialog_add_hint:                  # @shoot_dialog_add_hint
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
	pushq	%r14
	pushq	%rbx
	subq	$128, %rsp
.Ltmp27:
	.cfi_offset %rbx, -32
.Ltmp28:
	.cfi_offset %r14, -24
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	callq	gtk_label_get_type
	movabsq	$.L.str.48, %rsi
	movabsq	$.L.str.49, %rcx
	movl	$1, %r8d
	movabsq	$.L.str.50, %r9
	xorl	%r10d, %r10d
	movabsq	$.L.str.51, %rdx
	xorps	%xmm0, %xmm0
	movabsq	$.L.str.52, %rdi
	xorl	%r11d, %r11d
	movl	%r11d, %ebx
	movq	-40(%rbp), %r14
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	movq	%r14, %rdx
	movl	$0, (%rsp)
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	%rax, 8(%rsp)
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	movq	-56(%rbp), %r14         # 8-byte Reload
	movq	%r14, 16(%rsp)
	movsd	-72(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movq	$0, 24(%rsp)
	movb	$2, %al
	movq	%rbx, -80(%rbp)         # 8-byte Spill
	movl	%r10d, -84(%rbp)        # 4-byte Spill
	callq	g_object_new
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_label_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$3, %esi
	movl	$2, %edx
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_label_set_attributes
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movl	-28(%rbp), %ecx
	callq	gtk_notebook_insert_page
	movq	-48(%rbp), %rdi
	movl	%eax, -100(%rbp)        # 4-byte Spill
	callq	gtk_widget_show
	addq	$128, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end7:
	.size	shoot_dialog_add_hint, .Lfunc_end7-shoot_dialog_add_hint
	.cfi_endproc

	.align	16, 0x90
	.type	shoot_radio_button_toggled,@function
shoot_radio_button_toggled:             # @shoot_radio_button_toggled
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
	subq	$32, %rsp
	movabsq	$shootvals, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rax, %rsi
	callq	gimp_radio_button_update
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	shootvals, %esi
	movq	%rax, %rdi
	callq	gtk_notebook_set_current_page
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	shoot_radio_button_toggled, .Lfunc_end8-shoot_radio_button_toggled
	.cfi_endproc

	.align	16, 0x90
	.type	shoot_quit_timeout,@function
shoot_quit_timeout:                     # @shoot_quit_timeout
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	callq	gtk_main_quit
	xorl	%eax, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	shoot_quit_timeout, .Lfunc_end9-shoot_quit_timeout
	.cfi_endproc

	.align	16, 0x90
	.type	shoot_delay_callback,@function
shoot_delay_callback:                   # @shoot_delay_callback
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movl	(%rdi), %eax
	addl	$-1, %eax
	movl	%eax, (%rdi)
	movq	-16(%rbp), %rdi
	cmpl	$0, (%rdi)
	jne	.LBB10_2
# BB#1:                                 # %if.then
	callq	gtk_main_quit
.LBB10_2:                               # %if.end
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	shoot_delay_callback, .Lfunc_end10-shoot_delay_callback
	.cfi_endproc

	.align	16, 0x90
	.type	select_window_x11,@function
select_window_x11:                      # @select_window_x11
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
	subq	$704, %rsp              # imm = 0x2C0
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gdk_screen_get_display
	movq	%rax, %rdi
	callq	gdk_x11_display_get_xdisplay
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	gdk_x11_screen_get_screen_number
	movl	$34, %esi
	movl	%eax, -20(%rbp)
	movslq	-20(%rbp), %rdi
	movq	-16(%rbp), %rcx
	shlq	$7, %rdi
	addq	232(%rcx), %rdi
	movq	16(%rdi), %rcx
	movq	%rcx, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	-16(%rbp), %rdi
	callq	XCreateFontCursor
	movq	%rax, -56(%rbp)
	movq	$0, -72(%rbp)
	movl	$0, -88(%rbp)
	movl	$12, -92(%rbp)
	movl	$0, -96(%rbp)
	cmpl	$1, shootvals
	jne	.LBB11_2
# BB#1:                                 # %if.then
	movslq	-92(%rbp), %rax
	orq	$64, %rax
	movl	%eax, %ecx
	movl	%ecx, -92(%rbp)
.LBB11_2:                               # %if.end
	xorl	%eax, %eax
	movl	$1, %r9d
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movl	-92(%rbp), %ecx
	movq	-32(%rbp), %r8
	movq	-56(%rbp), %r10
	movq	%rdx, -472(%rbp)        # 8-byte Spill
	movl	%eax, %edx
	movq	%r8, -480(%rbp)         # 8-byte Spill
	movl	%eax, %r8d
	movq	-480(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	movq	%r10, 8(%rsp)
	movq	$0, 16(%rsp)
	callq	XGrabPointer
	movl	%eax, -76(%rbp)
	cmpl	$0, -76(%rbp)
	je	.LBB11_7
# BB#3:                                 # %if.then.8
	leaq	-32(%rbp), %rdx
	leaq	-40(%rbp), %rcx
	leaq	-100(%rbp), %rax
	leaq	-104(%rbp), %rsi
	leaq	-108(%rbp), %rdi
	movq	-16(%rbp), %r8
	movq	-32(%rbp), %r9
	movq	%rdi, -488(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movq	%rsi, -496(%rbp)        # 8-byte Spill
	movq	%r9, %rsi
	movq	%rax, %r8
	movq	-496(%rbp), %r9         # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-496(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	-488(%rbp), %r10        # 8-byte Reload
	movq	%r10, 16(%rsp)
	callq	XQueryPointer
	cmpq	$0, -40(%rbp)
	movl	%eax, -500(%rbp)        # 4-byte Spill
	je	.LBB11_5
# BB#4:                                 # %lor.lhs.false
	movq	-40(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB11_6
.LBB11_5:                               # %if.then.14
	movabsq	$.L.str.53, %rdi
	callq	gettext
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_message
.LBB11_6:                               # %if.end.16
	jmp	.LBB11_7
.LBB11_7:                               # %if.end.17
	cmpl	$1, shootvals
	jne	.LBB11_9
# BB#8:                                 # %if.then.20
	movl	$1016319, %eax          # imm = 0xF81FF
	movl	%eax, %edx
	leaq	-240(%rbp), %rcx
	movl	$6, -240(%rbp)
	movq	$-1, -232(%rbp)
	movslq	-20(%rbp), %rsi
	movq	-16(%rbp), %rdi
	shlq	$7, %rsi
	addq	232(%rdi), %rsi
	movq	88(%rsi), %rsi
	movq	%rsi, -224(%rbp)
	movslq	-20(%rbp), %rsi
	movq	-16(%rbp), %rdi
	shlq	$7, %rsi
	addq	232(%rdi), %rsi
	movq	96(%rsi), %rsi
	movq	%rsi, -216(%rbp)
	movl	$0, -208(%rbp)
	movl	$0, -204(%rbp)
	movl	$0, -192(%rbp)
	movl	$1, -200(%rbp)
	movl	$0, -196(%rbp)
	movl	$0, -140(%rbp)
	movl	$0, -136(%rbp)
	movl	$0, -132(%rbp)
	movq	$0, -128(%rbp)
	movl	$1, -144(%rbp)
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	XCreateGC
	movq	%rax, -48(%rbp)
.LBB11_9:                               # %if.end.28
	movq	-8(%rbp), %rdi
	callq	gdk_screen_get_display
	movq	%rax, %rdi
	callq	gdk_keymap_get_for_display
	movl	$65307, %esi            # imm = 0xFF1B
	leaq	-72(%rbp), %rdx
	leaq	-84(%rbp), %rcx
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	callq	gdk_keymap_get_entries_for_keyval
	cmpl	$0, %eax
	je	.LBB11_17
# BB#10:                                # %if.then.32
	callq	gdk_error_trap_push
	movl	$0, -80(%rbp)
.LBB11_11:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-80(%rbp), %eax
	cmpl	-84(%rbp), %eax
	jge	.LBB11_14
# BB#12:                                # %for.body
                                        #   in Loop: Header=BB11_11 Depth=1
	xorl	%eax, %eax
	movl	$1, %r9d
	movq	-16(%rbp), %rdi
	movslq	-80(%rbp), %rcx
	imulq	$12, %rcx, %rcx
	addq	-72(%rbp), %rcx
	movl	(%rcx), %esi
	movq	-32(%rbp), %rcx
	movl	%eax, %edx
	movl	%eax, %r8d
	movl	$1, (%rsp)
	callq	XGrabKey
	movl	$2, %edx
	xorl	%r8d, %r8d
	movl	$1, %r9d
	movq	-16(%rbp), %rdi
	movslq	-80(%rbp), %rcx
	imulq	$12, %rcx, %rcx
	addq	-72(%rbp), %rcx
	movl	(%rcx), %esi
	movq	-32(%rbp), %rcx
	movl	$1, (%rsp)
	movl	%eax, -504(%rbp)        # 4-byte Spill
	callq	XGrabKey
	movl	$16, %edx
	xorl	%r8d, %r8d
	movl	$1, %r9d
	movq	-16(%rbp), %rdi
	movslq	-80(%rbp), %rcx
	imulq	$12, %rcx, %rcx
	addq	-72(%rbp), %rcx
	movl	(%rcx), %esi
	movq	-32(%rbp), %rcx
	movl	$1, (%rsp)
	movl	%eax, -508(%rbp)        # 4-byte Spill
	callq	XGrabKey
	movl	$128, %edx
	xorl	%r8d, %r8d
	movl	$1, %r9d
	movq	-16(%rbp), %rdi
	movslq	-80(%rbp), %rcx
	imulq	$12, %rcx, %rcx
	addq	-72(%rbp), %rcx
	movl	(%rcx), %esi
	movq	-32(%rbp), %rcx
	movl	$1, (%rsp)
	movl	%eax, -512(%rbp)        # 4-byte Spill
	callq	XGrabKey
	movl	$18, %edx
	xorl	%r8d, %r8d
	movl	$1, %r9d
	movq	-16(%rbp), %rdi
	movslq	-80(%rbp), %rcx
	imulq	$12, %rcx, %rcx
	addq	-72(%rbp), %rcx
	movl	(%rcx), %esi
	movq	-32(%rbp), %rcx
	movl	$1, (%rsp)
	movl	%eax, -516(%rbp)        # 4-byte Spill
	callq	XGrabKey
	movl	$130, %edx
	xorl	%r8d, %r8d
	movl	$1, %r9d
	movq	-16(%rbp), %rdi
	movslq	-80(%rbp), %rcx
	imulq	$12, %rcx, %rcx
	addq	-72(%rbp), %rcx
	movl	(%rcx), %esi
	movq	-32(%rbp), %rcx
	movl	$1, (%rsp)
	movl	%eax, -520(%rbp)        # 4-byte Spill
	callq	XGrabKey
	movl	$144, %edx
	xorl	%r8d, %r8d
	movl	$1, %r9d
	movq	-16(%rbp), %rdi
	movslq	-80(%rbp), %rcx
	imulq	$12, %rcx, %rcx
	addq	-72(%rbp), %rcx
	movl	(%rcx), %esi
	movq	-32(%rbp), %rcx
	movl	$1, (%rsp)
	movl	%eax, -524(%rbp)        # 4-byte Spill
	callq	XGrabKey
	movl	$146, %edx
	xorl	%r8d, %r8d
	movl	$1, %r9d
	movq	-16(%rbp), %rdi
	movslq	-80(%rbp), %rcx
	imulq	$12, %rcx, %rcx
	addq	-72(%rbp), %rcx
	movl	(%rcx), %esi
	movq	-32(%rbp), %rcx
	movl	$1, (%rsp)
	movl	%eax, -528(%rbp)        # 4-byte Spill
	callq	XGrabKey
	movl	%eax, -532(%rbp)        # 4-byte Spill
# BB#13:                                # %for.inc
                                        #   in Loop: Header=BB11_11 Depth=1
	movl	-80(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -80(%rbp)
	jmp	.LBB11_11
.LBB11_14:                              # %for.end
	callq	gdk_flush
	callq	gdk_error_trap_pop
	cmpl	$0, %eax
	je	.LBB11_16
# BB#15:                                # %if.then.68
	jmp	.LBB11_16
.LBB11_16:                              # %if.end.69
	jmp	.LBB11_17
.LBB11_17:                              # %if.end.70
	jmp	.LBB11_18
.LBB11_18:                              # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_85 Depth 2
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -96(%rbp)
	movb	%cl, -533(%rbp)         # 1-byte Spill
	jne	.LBB11_22
# BB#19:                                # %land.rhs
                                        #   in Loop: Header=BB11_18 Depth=1
	movb	$1, %al
	cmpq	$0, -40(%rbp)
	movb	%al, -534(%rbp)         # 1-byte Spill
	je	.LBB11_21
# BB#20:                                # %lor.rhs
                                        #   in Loop: Header=BB11_18 Depth=1
	cmpl	$0, -88(%rbp)
	setne	%al
	movb	%al, -534(%rbp)         # 1-byte Spill
.LBB11_21:                              # %lor.end
                                        #   in Loop: Header=BB11_18 Depth=1
	movb	-534(%rbp), %al         # 1-byte Reload
	movb	%al, -533(%rbp)         # 1-byte Spill
.LBB11_22:                              # %land.end
                                        #   in Loop: Header=BB11_18 Depth=1
	movb	-533(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB11_23
	jmp	.LBB11_96
.LBB11_23:                              # %while.body
                                        #   in Loop: Header=BB11_18 Depth=1
	movq	-16(%rbp), %rdi
	xorl	%eax, %eax
	movl	%eax, %edx
	movl	$1, %esi
	callq	XAllowEvents
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movslq	-92(%rbp), %rdx
	orq	$1, %rdx
	leaq	-432(%rbp), %rcx
	movl	%eax, -540(%rbp)        # 4-byte Spill
	callq	XWindowEvent
	movl	-432(%rbp), %r8d
	addl	$-2, %r8d
	movl	%r8d, %ecx
	subl	$4, %r8d
	movl	%eax, -544(%rbp)        # 4-byte Spill
	movq	%rcx, -552(%rbp)        # 8-byte Spill
	movl	%r8d, -556(%rbp)        # 4-byte Spill
	ja	.LBB11_94
# BB#107:                               # %while.body
                                        #   in Loop: Header=BB11_18 Depth=1
	movq	-552(%rbp), %rax        # 8-byte Reload
	movq	.LJTI11_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB11_24:                              # %sw.bb
                                        #   in Loop: Header=BB11_18 Depth=1
	cmpq	$0, -40(%rbp)
	jne	.LBB11_28
# BB#25:                                # %if.then.84
                                        #   in Loop: Header=BB11_18 Depth=1
	movq	-384(%rbp), %rax
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB11_27
# BB#26:                                # %if.then.87
                                        #   in Loop: Header=BB11_18 Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB11_27:                              # %if.end.88
                                        #   in Loop: Header=BB11_18 Depth=1
	movl	-360(%rbp), %eax
	movl	%eax, shootvals+16
	movl	%eax, shootvals+24
	movl	-356(%rbp), %eax
	movl	%eax, shootvals+20
	movl	%eax, shootvals+28
.LBB11_28:                              # %if.end.92
                                        #   in Loop: Header=BB11_18 Depth=1
	movl	-88(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -88(%rbp)
	jmp	.LBB11_95
.LBB11_29:                              # %sw.bb.94
                                        #   in Loop: Header=BB11_18 Depth=1
	cmpl	$0, -88(%rbp)
	jle	.LBB11_31
# BB#30:                                # %if.then.97
                                        #   in Loop: Header=BB11_18 Depth=1
	movl	-88(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -88(%rbp)
.LBB11_31:                              # %if.end.98
                                        #   in Loop: Header=BB11_18 Depth=1
	cmpl	$0, -88(%rbp)
	jne	.LBB11_49
# BB#32:                                # %land.lhs.true
                                        #   in Loop: Header=BB11_18 Depth=1
	cmpl	$1, shootvals
	jne	.LBB11_49
# BB#33:                                # %if.then.102
                                        #   in Loop: Header=BB11_18 Depth=1
	movl	shootvals+16, %eax
	cmpl	shootvals+24, %eax
	jge	.LBB11_35
# BB#34:                                # %cond.true
                                        #   in Loop: Header=BB11_18 Depth=1
	movl	shootvals+16, %eax
	movl	%eax, -560(%rbp)        # 4-byte Spill
	jmp	.LBB11_36
.LBB11_35:                              # %cond.false
                                        #   in Loop: Header=BB11_18 Depth=1
	movl	shootvals+24, %eax
	movl	%eax, -560(%rbp)        # 4-byte Spill
.LBB11_36:                              # %cond.end
                                        #   in Loop: Header=BB11_18 Depth=1
	movl	-560(%rbp), %eax        # 4-byte Reload
	movl	%eax, -436(%rbp)
	movl	shootvals+20, %eax
	cmpl	shootvals+28, %eax
	jge	.LBB11_38
# BB#37:                                # %cond.true.107
                                        #   in Loop: Header=BB11_18 Depth=1
	movl	shootvals+20, %eax
	movl	%eax, -564(%rbp)        # 4-byte Spill
	jmp	.LBB11_39
.LBB11_38:                              # %cond.false.108
                                        #   in Loop: Header=BB11_18 Depth=1
	movl	shootvals+28, %eax
	movl	%eax, -564(%rbp)        # 4-byte Spill
.LBB11_39:                              # %cond.end.109
                                        #   in Loop: Header=BB11_18 Depth=1
	movl	-564(%rbp), %eax        # 4-byte Reload
	movl	%eax, -440(%rbp)
	movl	shootvals+24, %eax
	subl	shootvals+16, %eax
	cmpl	$0, %eax
	jge	.LBB11_41
# BB#40:                                # %cond.true.113
                                        #   in Loop: Header=BB11_18 Depth=1
	xorl	%eax, %eax
	movl	shootvals+24, %ecx
	subl	shootvals+16, %ecx
	subl	%ecx, %eax
	movl	%eax, -568(%rbp)        # 4-byte Spill
	jmp	.LBB11_42
.LBB11_41:                              # %cond.false.116
                                        #   in Loop: Header=BB11_18 Depth=1
	movl	shootvals+24, %eax
	subl	shootvals+16, %eax
	movl	%eax, -568(%rbp)        # 4-byte Spill
.LBB11_42:                              # %cond.end.118
                                        #   in Loop: Header=BB11_18 Depth=1
	movl	-568(%rbp), %eax        # 4-byte Reload
	movl	%eax, -444(%rbp)
	movl	shootvals+28, %eax
	subl	shootvals+20, %eax
	cmpl	$0, %eax
	jge	.LBB11_44
# BB#43:                                # %cond.true.123
                                        #   in Loop: Header=BB11_18 Depth=1
	xorl	%eax, %eax
	movl	shootvals+28, %ecx
	subl	shootvals+20, %ecx
	subl	%ecx, %eax
	movl	%eax, -572(%rbp)        # 4-byte Spill
	jmp	.LBB11_45
.LBB11_44:                              # %cond.false.126
                                        #   in Loop: Header=BB11_18 Depth=1
	movl	shootvals+28, %eax
	subl	shootvals+20, %eax
	movl	%eax, -572(%rbp)        # 4-byte Spill
.LBB11_45:                              # %cond.end.128
                                        #   in Loop: Header=BB11_18 Depth=1
	movl	-572(%rbp), %eax        # 4-byte Reload
	movl	%eax, -448(%rbp)
	cmpl	$0, -444(%rbp)
	jle	.LBB11_48
# BB#46:                                # %land.lhs.true.132
                                        #   in Loop: Header=BB11_18 Depth=1
	cmpl	$0, -448(%rbp)
	jle	.LBB11_48
# BB#47:                                # %if.then.135
                                        #   in Loop: Header=BB11_18 Depth=1
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movl	-436(%rbp), %ecx
	movl	-440(%rbp), %r8d
	movl	-444(%rbp), %r9d
	movl	-448(%rbp), %eax
	movl	%eax, (%rsp)
	callq	XDrawRectangle
	movl	%eax, -576(%rbp)        # 4-byte Spill
.LBB11_48:                              # %if.end.137
                                        #   in Loop: Header=BB11_18 Depth=1
	movl	-360(%rbp), %eax
	movl	%eax, shootvals+24
	movl	-356(%rbp), %eax
	movl	%eax, shootvals+28
.LBB11_49:                              # %if.end.142
                                        #   in Loop: Header=BB11_18 Depth=1
	jmp	.LBB11_95
.LBB11_50:                              # %sw.bb.143
                                        #   in Loop: Header=BB11_18 Depth=1
	cmpl	$0, -88(%rbp)
	jle	.LBB11_82
# BB#51:                                # %if.then.146
                                        #   in Loop: Header=BB11_18 Depth=1
	movl	shootvals+16, %eax
	cmpl	shootvals+24, %eax
	jge	.LBB11_53
# BB#52:                                # %cond.true.149
                                        #   in Loop: Header=BB11_18 Depth=1
	movl	shootvals+16, %eax
	movl	%eax, -580(%rbp)        # 4-byte Spill
	jmp	.LBB11_54
.LBB11_53:                              # %cond.false.150
                                        #   in Loop: Header=BB11_18 Depth=1
	movl	shootvals+24, %eax
	movl	%eax, -580(%rbp)        # 4-byte Spill
.LBB11_54:                              # %cond.end.151
                                        #   in Loop: Header=BB11_18 Depth=1
	movl	-580(%rbp), %eax        # 4-byte Reload
	movl	%eax, -436(%rbp)
	movl	shootvals+20, %eax
	cmpl	shootvals+28, %eax
	jge	.LBB11_56
# BB#55:                                # %cond.true.155
                                        #   in Loop: Header=BB11_18 Depth=1
	movl	shootvals+20, %eax
	movl	%eax, -584(%rbp)        # 4-byte Spill
	jmp	.LBB11_57
.LBB11_56:                              # %cond.false.156
                                        #   in Loop: Header=BB11_18 Depth=1
	movl	shootvals+28, %eax
	movl	%eax, -584(%rbp)        # 4-byte Spill
.LBB11_57:                              # %cond.end.157
                                        #   in Loop: Header=BB11_18 Depth=1
	movl	-584(%rbp), %eax        # 4-byte Reload
	movl	%eax, -440(%rbp)
	movl	shootvals+24, %eax
	subl	shootvals+16, %eax
	cmpl	$0, %eax
	jge	.LBB11_59
# BB#58:                                # %cond.true.162
                                        #   in Loop: Header=BB11_18 Depth=1
	xorl	%eax, %eax
	movl	shootvals+24, %ecx
	subl	shootvals+16, %ecx
	subl	%ecx, %eax
	movl	%eax, -588(%rbp)        # 4-byte Spill
	jmp	.LBB11_60
.LBB11_59:                              # %cond.false.165
                                        #   in Loop: Header=BB11_18 Depth=1
	movl	shootvals+24, %eax
	subl	shootvals+16, %eax
	movl	%eax, -588(%rbp)        # 4-byte Spill
.LBB11_60:                              # %cond.end.167
                                        #   in Loop: Header=BB11_18 Depth=1
	movl	-588(%rbp), %eax        # 4-byte Reload
	movl	%eax, -444(%rbp)
	movl	shootvals+28, %eax
	subl	shootvals+20, %eax
	cmpl	$0, %eax
	jge	.LBB11_62
# BB#61:                                # %cond.true.172
                                        #   in Loop: Header=BB11_18 Depth=1
	xorl	%eax, %eax
	movl	shootvals+28, %ecx
	subl	shootvals+20, %ecx
	subl	%ecx, %eax
	movl	%eax, -592(%rbp)        # 4-byte Spill
	jmp	.LBB11_63
.LBB11_62:                              # %cond.false.175
                                        #   in Loop: Header=BB11_18 Depth=1
	movl	shootvals+28, %eax
	subl	shootvals+20, %eax
	movl	%eax, -592(%rbp)        # 4-byte Spill
.LBB11_63:                              # %cond.end.177
                                        #   in Loop: Header=BB11_18 Depth=1
	movl	-592(%rbp), %eax        # 4-byte Reload
	movl	%eax, -448(%rbp)
	cmpl	$0, -444(%rbp)
	jle	.LBB11_66
# BB#64:                                # %land.lhs.true.181
                                        #   in Loop: Header=BB11_18 Depth=1
	cmpl	$0, -448(%rbp)
	jle	.LBB11_66
# BB#65:                                # %if.then.184
                                        #   in Loop: Header=BB11_18 Depth=1
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movl	-436(%rbp), %ecx
	movl	-440(%rbp), %r8d
	movl	-444(%rbp), %r9d
	movl	-448(%rbp), %eax
	movl	%eax, (%rsp)
	callq	XDrawRectangle
	movl	%eax, -596(%rbp)        # 4-byte Spill
.LBB11_66:                              # %if.end.186
                                        #   in Loop: Header=BB11_18 Depth=1
	movl	-360(%rbp), %eax
	movl	%eax, shootvals+24
	movl	-356(%rbp), %eax
	movl	%eax, shootvals+28
	movl	shootvals+16, %eax
	cmpl	shootvals+24, %eax
	jge	.LBB11_68
# BB#67:                                # %cond.true.192
                                        #   in Loop: Header=BB11_18 Depth=1
	movl	shootvals+16, %eax
	movl	%eax, -600(%rbp)        # 4-byte Spill
	jmp	.LBB11_69
.LBB11_68:                              # %cond.false.193
                                        #   in Loop: Header=BB11_18 Depth=1
	movl	shootvals+24, %eax
	movl	%eax, -600(%rbp)        # 4-byte Spill
.LBB11_69:                              # %cond.end.194
                                        #   in Loop: Header=BB11_18 Depth=1
	movl	-600(%rbp), %eax        # 4-byte Reload
	movl	%eax, -436(%rbp)
	movl	shootvals+20, %eax
	cmpl	shootvals+28, %eax
	jge	.LBB11_71
# BB#70:                                # %cond.true.198
                                        #   in Loop: Header=BB11_18 Depth=1
	movl	shootvals+20, %eax
	movl	%eax, -604(%rbp)        # 4-byte Spill
	jmp	.LBB11_72
.LBB11_71:                              # %cond.false.199
                                        #   in Loop: Header=BB11_18 Depth=1
	movl	shootvals+28, %eax
	movl	%eax, -604(%rbp)        # 4-byte Spill
.LBB11_72:                              # %cond.end.200
                                        #   in Loop: Header=BB11_18 Depth=1
	movl	-604(%rbp), %eax        # 4-byte Reload
	movl	%eax, -440(%rbp)
	movl	shootvals+24, %eax
	subl	shootvals+16, %eax
	cmpl	$0, %eax
	jge	.LBB11_74
# BB#73:                                # %cond.true.205
                                        #   in Loop: Header=BB11_18 Depth=1
	xorl	%eax, %eax
	movl	shootvals+24, %ecx
	subl	shootvals+16, %ecx
	subl	%ecx, %eax
	movl	%eax, -608(%rbp)        # 4-byte Spill
	jmp	.LBB11_75
.LBB11_74:                              # %cond.false.208
                                        #   in Loop: Header=BB11_18 Depth=1
	movl	shootvals+24, %eax
	subl	shootvals+16, %eax
	movl	%eax, -608(%rbp)        # 4-byte Spill
.LBB11_75:                              # %cond.end.210
                                        #   in Loop: Header=BB11_18 Depth=1
	movl	-608(%rbp), %eax        # 4-byte Reload
	movl	%eax, -444(%rbp)
	movl	shootvals+28, %eax
	subl	shootvals+20, %eax
	cmpl	$0, %eax
	jge	.LBB11_77
# BB#76:                                # %cond.true.215
                                        #   in Loop: Header=BB11_18 Depth=1
	xorl	%eax, %eax
	movl	shootvals+28, %ecx
	subl	shootvals+20, %ecx
	subl	%ecx, %eax
	movl	%eax, -612(%rbp)        # 4-byte Spill
	jmp	.LBB11_78
.LBB11_77:                              # %cond.false.218
                                        #   in Loop: Header=BB11_18 Depth=1
	movl	shootvals+28, %eax
	subl	shootvals+20, %eax
	movl	%eax, -612(%rbp)        # 4-byte Spill
.LBB11_78:                              # %cond.end.220
                                        #   in Loop: Header=BB11_18 Depth=1
	movl	-612(%rbp), %eax        # 4-byte Reload
	movl	%eax, -448(%rbp)
	cmpl	$0, -444(%rbp)
	jle	.LBB11_81
# BB#79:                                # %land.lhs.true.224
                                        #   in Loop: Header=BB11_18 Depth=1
	cmpl	$0, -448(%rbp)
	jle	.LBB11_81
# BB#80:                                # %if.then.227
                                        #   in Loop: Header=BB11_18 Depth=1
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movl	-436(%rbp), %ecx
	movl	-440(%rbp), %r8d
	movl	-444(%rbp), %r9d
	movl	-448(%rbp), %eax
	movl	%eax, (%rsp)
	callq	XDrawRectangle
	movl	%eax, -616(%rbp)        # 4-byte Spill
.LBB11_81:                              # %if.end.229
                                        #   in Loop: Header=BB11_18 Depth=1
	jmp	.LBB11_82
.LBB11_82:                              # %if.end.230
                                        #   in Loop: Header=BB11_18 Depth=1
	jmp	.LBB11_95
.LBB11_83:                              # %sw.bb.231
                                        #   in Loop: Header=BB11_18 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	leaq	-456(%rbp), %rdx
	leaq	-460(%rbp), %r8
	movl	-348(%rbp), %esi
	movq	%rcx, %rdi
	movq	%rdx, -624(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-624(%rbp), %rcx        # 8-byte Reload
	callq	gdk_keymap_get_entries_for_keycode
	cmpl	$0, %eax
	je	.LBB11_93
# BB#84:                                # %if.then.235
                                        #   in Loop: Header=BB11_18 Depth=1
	movl	$0, -464(%rbp)
.LBB11_85:                              # %for.cond.237
                                        #   Parent Loop BB11_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-464(%rbp), %eax
	cmpl	-460(%rbp), %eax
	movb	%cl, -625(%rbp)         # 1-byte Spill
	jge	.LBB11_87
# BB#86:                                # %land.rhs.240
                                        #   in Loop: Header=BB11_85 Depth=2
	cmpl	$0, -96(%rbp)
	setne	%al
	xorb	$-1, %al
	movb	%al, -625(%rbp)         # 1-byte Spill
.LBB11_87:                              # %land.end.242
                                        #   in Loop: Header=BB11_85 Depth=2
	movb	-625(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB11_88
	jmp	.LBB11_92
.LBB11_88:                              # %for.body.243
                                        #   in Loop: Header=BB11_85 Depth=2
	movslq	-464(%rbp), %rax
	movq	-456(%rbp), %rcx
	cmpl	$65307, (%rcx,%rax,4)   # imm = 0xFF1B
	jne	.LBB11_90
# BB#89:                                # %if.then.248
                                        #   in Loop: Header=BB11_85 Depth=2
	movl	$1, -96(%rbp)
.LBB11_90:                              # %if.end.249
                                        #   in Loop: Header=BB11_85 Depth=2
	jmp	.LBB11_91
.LBB11_91:                              # %for.inc.250
                                        #   in Loop: Header=BB11_85 Depth=2
	movl	-464(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -464(%rbp)
	jmp	.LBB11_85
.LBB11_92:                              # %for.end.252
                                        #   in Loop: Header=BB11_18 Depth=1
	movq	-456(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
.LBB11_93:                              # %if.end.253
                                        #   in Loop: Header=BB11_18 Depth=1
	jmp	.LBB11_95
.LBB11_94:                              # %sw.default
                                        #   in Loop: Header=BB11_18 Depth=1
	jmp	.LBB11_95
.LBB11_95:                              # %sw.epilog
                                        #   in Loop: Header=BB11_18 Depth=1
	jmp	.LBB11_18
.LBB11_96:                              # %while.end
	cmpq	$0, -72(%rbp)
	je	.LBB11_102
# BB#97:                                # %if.then.255
	movl	$0, -80(%rbp)
.LBB11_98:                              # %for.cond.256
                                        # =>This Inner Loop Header: Depth=1
	movl	-80(%rbp), %eax
	cmpl	-84(%rbp), %eax
	jge	.LBB11_101
# BB#99:                                # %for.body.259
                                        #   in Loop: Header=BB11_98 Depth=1
	xorl	%edx, %edx
	movq	-16(%rbp), %rdi
	movslq	-80(%rbp), %rax
	imulq	$12, %rax, %rax
	addq	-72(%rbp), %rax
	movl	(%rax), %esi
	movq	-32(%rbp), %rcx
	callq	XUngrabKey
	movl	$2, %edx
	movq	-16(%rbp), %rdi
	movslq	-80(%rbp), %rcx
	imulq	$12, %rcx, %rcx
	addq	-72(%rbp), %rcx
	movl	(%rcx), %esi
	movq	-32(%rbp), %rcx
	movl	%eax, -632(%rbp)        # 4-byte Spill
	callq	XUngrabKey
	movl	$16, %edx
	movq	-16(%rbp), %rdi
	movslq	-80(%rbp), %rcx
	imulq	$12, %rcx, %rcx
	addq	-72(%rbp), %rcx
	movl	(%rcx), %esi
	movq	-32(%rbp), %rcx
	movl	%eax, -636(%rbp)        # 4-byte Spill
	callq	XUngrabKey
	movl	$128, %edx
	movq	-16(%rbp), %rdi
	movslq	-80(%rbp), %rcx
	imulq	$12, %rcx, %rcx
	addq	-72(%rbp), %rcx
	movl	(%rcx), %esi
	movq	-32(%rbp), %rcx
	movl	%eax, -640(%rbp)        # 4-byte Spill
	callq	XUngrabKey
	movl	$18, %edx
	movq	-16(%rbp), %rdi
	movslq	-80(%rbp), %rcx
	imulq	$12, %rcx, %rcx
	addq	-72(%rbp), %rcx
	movl	(%rcx), %esi
	movq	-32(%rbp), %rcx
	movl	%eax, -644(%rbp)        # 4-byte Spill
	callq	XUngrabKey
	movl	$130, %edx
	movq	-16(%rbp), %rdi
	movslq	-80(%rbp), %rcx
	imulq	$12, %rcx, %rcx
	addq	-72(%rbp), %rcx
	movl	(%rcx), %esi
	movq	-32(%rbp), %rcx
	movl	%eax, -648(%rbp)        # 4-byte Spill
	callq	XUngrabKey
	movl	$144, %edx
	movq	-16(%rbp), %rdi
	movslq	-80(%rbp), %rcx
	imulq	$12, %rcx, %rcx
	addq	-72(%rbp), %rcx
	movl	(%rcx), %esi
	movq	-32(%rbp), %rcx
	movl	%eax, -652(%rbp)        # 4-byte Spill
	callq	XUngrabKey
	movl	$146, %edx
	movq	-16(%rbp), %rdi
	movslq	-80(%rbp), %rcx
	imulq	$12, %rcx, %rcx
	addq	-72(%rbp), %rcx
	movl	(%rcx), %esi
	movq	-32(%rbp), %rcx
	movl	%eax, -656(%rbp)        # 4-byte Spill
	callq	XUngrabKey
	movl	%eax, -660(%rbp)        # 4-byte Spill
# BB#100:                               # %for.inc.292
                                        #   in Loop: Header=BB11_98 Depth=1
	movl	-80(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -80(%rbp)
	jmp	.LBB11_98
.LBB11_101:                             # %for.end.294
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
.LBB11_102:                             # %if.end.295
	cmpl	$0, -76(%rbp)
	jne	.LBB11_104
# BB#103:                               # %if.then.298
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	XUngrabPointer
	movl	%eax, -664(%rbp)        # 4-byte Spill
.LBB11_104:                             # %if.end.300
	movq	-16(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	XFreeCursor
	cmpq	$0, -48(%rbp)
	movl	%eax, -668(%rbp)        # 4-byte Spill
	je	.LBB11_106
# BB#105:                               # %if.then.304
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	XFreeGC
	movl	%eax, -672(%rbp)        # 4-byte Spill
.LBB11_106:                             # %if.end.306
	movq	-40(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, %eax
	addq	$704, %rsp              # imm = 0x2C0
	popq	%rbp
	retq
.Lfunc_end11:
	.size	select_window_x11, .Lfunc_end11-select_window_x11
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI11_0:
	.quad	.LBB11_83
	.quad	.LBB11_94
	.quad	.LBB11_24
	.quad	.LBB11_29
	.quad	.LBB11_50

	.text
	.align	16, 0x90
	.type	g_message,@function
g_message:                              # @g_message
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
	subq	$384, %rsp              # imm = 0x180
	testb	%al, %al
	movaps	%xmm7, -224(%rbp)       # 16-byte Spill
	movaps	%xmm6, -240(%rbp)       # 16-byte Spill
	movaps	%xmm5, -256(%rbp)       # 16-byte Spill
	movaps	%xmm4, -272(%rbp)       # 16-byte Spill
	movaps	%xmm3, -288(%rbp)       # 16-byte Spill
	movaps	%xmm2, -304(%rbp)       # 16-byte Spill
	movaps	%xmm1, -320(%rbp)       # 16-byte Spill
	movaps	%xmm0, -336(%rbp)       # 16-byte Spill
	movq	%rdi, -344(%rbp)        # 8-byte Spill
	movq	%r9, -352(%rbp)         # 8-byte Spill
	movq	%r8, -360(%rbp)         # 8-byte Spill
	movq	%rcx, -368(%rbp)        # 8-byte Spill
	movq	%rdx, -376(%rbp)        # 8-byte Spill
	movq	%rsi, -384(%rbp)        # 8-byte Spill
	je	.LBB12_2
# BB#1:                                 # %entry
	movaps	-336(%rbp), %xmm0       # 16-byte Reload
	movaps	%xmm0, -160(%rbp)
	movaps	-320(%rbp), %xmm1       # 16-byte Reload
	movaps	%xmm1, -144(%rbp)
	movaps	-304(%rbp), %xmm2       # 16-byte Reload
	movaps	%xmm2, -128(%rbp)
	movaps	-288(%rbp), %xmm3       # 16-byte Reload
	movaps	%xmm3, -112(%rbp)
	movaps	-272(%rbp), %xmm4       # 16-byte Reload
	movaps	%xmm4, -96(%rbp)
	movaps	-256(%rbp), %xmm5       # 16-byte Reload
	movaps	%xmm5, -80(%rbp)
	movaps	-240(%rbp), %xmm6       # 16-byte Reload
	movaps	%xmm6, -64(%rbp)
	movaps	-224(%rbp), %xmm7       # 16-byte Reload
	movaps	%xmm7, -48(%rbp)
.LBB12_2:                               # %entry
	movq	-352(%rbp), %rax        # 8-byte Reload
	movq	%rax, -168(%rbp)
	movq	-360(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -176(%rbp)
	movq	-368(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, -184(%rbp)
	movq	-376(%rbp), %rsi        # 8-byte Reload
	movq	%rsi, -192(%rbp)
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rdi, -200(%rbp)
	movq	-344(%rbp), %r8         # 8-byte Reload
	movq	%r8, -8(%rbp)
	leaq	-208(%rbp), %r8
	movq	%r8, -16(%rbp)
	leaq	16(%rbp), %r8
	movq	%r8, -24(%rbp)
	movl	$48, -28(%rbp)
	movl	$8, -32(%rbp)
	movq	-8(%rbp), %rdx
	xorl	%r9d, %r9d
	movl	%r9d, %edi
	movl	$32, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end12:
	.size	g_message, .Lfunc_end12-g_message
	.cfi_endproc

	.align	16, 0x90
	.type	shoot_main,@function
shoot_main:                             # @shoot_main
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
	subq	$144, %rsp
	movq	%rdi, -16(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -96(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB13_2
# BB#1:                                 # %if.then
	callq	gdk_screen_get_default
	movq	%rax, -16(%rbp)
.LBB13_2:                               # %if.end
	movq	-16(%rbp), %rdi
	callq	gdk_screen_get_display
	movq	%rax, -24(%rbp)
	movl	$0, -88(%rbp)
	movl	$0, -84(%rbp)
	movq	-16(%rbp), %rdi
	callq	gdk_screen_get_width
	movl	%eax, -80(%rbp)
	movq	-16(%rbp), %rdi
	callq	gdk_screen_get_height
	movl	%eax, -76(%rbp)
	cmpl	$1, shootvals
	jne	.LBB13_16
# BB#3:                                 # %if.then.7
	movl	shootvals+16, %eax
	cmpl	shootvals+24, %eax
	jge	.LBB13_5
# BB#4:                                 # %cond.true
	movl	shootvals+16, %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
	jmp	.LBB13_6
.LBB13_5:                               # %cond.false
	movl	shootvals+24, %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
.LBB13_6:                               # %cond.end
	movl	-120(%rbp), %eax        # 4-byte Reload
	movl	%eax, -72(%rbp)
	movl	shootvals+20, %eax
	cmpl	shootvals+28, %eax
	jge	.LBB13_8
# BB#7:                                 # %cond.true.11
	movl	shootvals+20, %eax
	movl	%eax, -124(%rbp)        # 4-byte Spill
	jmp	.LBB13_9
.LBB13_8:                               # %cond.false.12
	movl	shootvals+28, %eax
	movl	%eax, -124(%rbp)        # 4-byte Spill
.LBB13_9:                               # %cond.end.13
	movl	-124(%rbp), %eax        # 4-byte Reload
	movl	%eax, -68(%rbp)
	movl	shootvals+24, %eax
	subl	shootvals+16, %eax
	cmpl	$0, %eax
	jge	.LBB13_11
# BB#10:                                # %cond.true.17
	xorl	%eax, %eax
	movl	shootvals+24, %ecx
	subl	shootvals+16, %ecx
	subl	%ecx, %eax
	movl	%eax, -128(%rbp)        # 4-byte Spill
	jmp	.LBB13_12
.LBB13_11:                              # %cond.false.20
	movl	shootvals+24, %eax
	subl	shootvals+16, %eax
	movl	%eax, -128(%rbp)        # 4-byte Spill
.LBB13_12:                              # %cond.end.22
	movl	-128(%rbp), %eax        # 4-byte Reload
	movl	%eax, -64(%rbp)
	movl	shootvals+28, %eax
	subl	shootvals+20, %eax
	cmpl	$0, %eax
	jge	.LBB13_14
# BB#13:                                # %cond.true.27
	xorl	%eax, %eax
	movl	shootvals+28, %ecx
	subl	shootvals+20, %ecx
	subl	%ecx, %eax
	movl	%eax, -132(%rbp)        # 4-byte Spill
	jmp	.LBB13_15
.LBB13_14:                              # %cond.false.30
	movl	shootvals+28, %eax
	subl	shootvals+20, %eax
	movl	%eax, -132(%rbp)        # 4-byte Spill
.LBB13_15:                              # %cond.end.32
	movl	-132(%rbp), %eax        # 4-byte Reload
	movl	%eax, -60(%rbp)
	jmp	.LBB13_22
.LBB13_16:                              # %if.else
	cmpl	$0, shootvals
	jne	.LBB13_18
# BB#17:                                # %if.then.36
	movq	-16(%rbp), %rdi
	callq	gdk_screen_get_root_window
	movq	%rax, -32(%rbp)
	jmp	.LBB13_19
.LBB13_18:                              # %if.else.38
	movq	-24(%rbp), %rdi
	movl	shootvals+8, %esi
	callq	get_foreign_window
	movq	%rax, -32(%rbp)
.LBB13_19:                              # %if.end.40
	cmpq	$0, -32(%rbp)
	jne	.LBB13_21
# BB#20:                                # %if.then.41
	movabsq	$.L.str.54, %rdi
	callq	gettext
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_message
	movl	$-1, -4(%rbp)
	jmp	.LBB13_34
.LBB13_21:                              # %if.end.43
	movq	-32(%rbp), %rdi
	callq	gdk_window_get_width
	movl	%eax, -64(%rbp)
	movq	-32(%rbp), %rdi
	callq	gdk_window_get_height
	leaq	-112(%rbp), %rsi
	leaq	-116(%rbp), %rdx
	movl	%eax, -60(%rbp)
	movq	-32(%rbp), %rdi
	callq	gdk_window_get_origin
	movl	-112(%rbp), %ecx
	movl	%ecx, -72(%rbp)
	movl	-116(%rbp), %ecx
	movl	%ecx, -68(%rbp)
	movl	%eax, -136(%rbp)        # 4-byte Spill
.LBB13_22:                              # %if.end.51
	leaq	-72(%rbp), %rax
	leaq	-88(%rbp), %rsi
	movq	%rax, %rdi
	movq	%rax, %rdx
	callq	gdk_rectangle_intersect
	cmpl	$0, %eax
	jne	.LBB13_24
# BB#23:                                # %if.then.54
	movl	$-1, -4(%rbp)
	jmp	.LBB13_34
.LBB13_24:                              # %if.end.55
	movq	-16(%rbp), %rdi
	callq	gdk_screen_get_root_window
	leaq	-104(%rbp), %rsi
	leaq	-108(%rbp), %rdx
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	gdk_window_get_origin
	movl	$1, %edi
	movl	-64(%rbp), %esi
	movl	-60(%rbp), %edx
	movl	%eax, -140(%rbp)        # 4-byte Spill
	callq	cairo_image_surface_create
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	cairo_create
	xorl	%edx, %edx
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movl	-72(%rbp), %ecx
	subl	-104(%rbp), %ecx
	movl	%edx, %r8d
	subl	%ecx, %r8d
	cvtsi2sdl	%r8d, %xmm0
	movl	-68(%rbp), %ecx
	subl	-108(%rbp), %ecx
	subl	%ecx, %edx
	cvtsi2sdl	%edx, %xmm1
	callq	gdk_cairo_set_source_window
	movq	-56(%rbp), %rdi
	callq	cairo_paint
	movq	-56(%rbp), %rdi
	callq	cairo_destroy
	movq	-24(%rbp), %rdi
	callq	gdk_display_beep
	cmpl	$2, shootvals
	jne	.LBB13_28
# BB#25:                                # %if.then.71
	movq	-24(%rbp), %rdi
	movl	shootvals+8, %esi
	callq	window_get_title
	movq	%rax, -96(%rbp)
	movq	-16(%rbp), %rdi
	movl	shootvals+8, %esi
	callq	window_get_shape
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB13_27
# BB#26:                                # %if.then.75
	movq	-48(%rbp), %rdi
	movl	-112(%rbp), %eax
	subl	-72(%rbp), %eax
	movl	-116(%rbp), %ecx
	subl	-68(%rbp), %ecx
	movl	%eax, %esi
	movl	%ecx, %edx
	callq	cairo_region_translate
.LBB13_27:                              # %if.end.80
	jmp	.LBB13_28
.LBB13_28:                              # %if.end.81
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-96(%rbp), %rdx
	callq	create_image
	movl	%eax, -100(%rbp)
	movq	-40(%rbp), %rdi
	callq	cairo_surface_destroy
	cmpq	$0, -48(%rbp)
	je	.LBB13_30
# BB#29:                                # %if.then.84
	movq	-48(%rbp), %rdi
	callq	cairo_region_destroy
.LBB13_30:                              # %if.end.85
	movq	-96(%rbp), %rdi
	callq	g_free
	cmpl	$0, shootvals
	jne	.LBB13_33
# BB#31:                                # %land.lhs.true
	cmpl	$0, shootvals+32
	je	.LBB13_33
# BB#32:                                # %if.then.89
	movl	-100(%rbp), %edi
	movq	-24(%rbp), %rsi
	callq	add_cursor_image
.LBB13_33:                              # %if.end.90
	movl	-100(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB13_34:                              # %return
	movl	-4(%rbp), %eax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	shoot_main, .Lfunc_end13-shoot_main
	.cfi_endproc

	.align	16, 0x90
	.type	get_foreign_window,@function
get_foreign_window:                     # @get_foreign_window
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
                                        # kill: RSI<def> ESI<kill>
	callq	gdk_x11_window_foreign_new_for_display
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	get_foreign_window, .Lfunc_end14-get_foreign_window
	.cfi_endproc

	.align	16, 0x90
	.type	window_get_title,@function
window_get_title:                       # @window_get_title
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
	subq	$16, %rsp
	movabsq	$.L.str.55, %rdx
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	window_get_utf8_property
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	window_get_title, .Lfunc_end15-window_get_title
	.cfi_endproc

	.align	16, 0x90
	.type	window_get_shape,@function
window_get_shape:                       # @window_get_shape
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	$0, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	gdk_screen_get_display
	movq	%rax, %rdi
	callq	gdk_x11_display_get_xdisplay
	xorl	%edx, %edx
	leaq	-36(%rbp), %rcx
	leaq	-40(%rbp), %r8
	movl	-12(%rbp), %esi
                                        # kill: RSI<def> ESI<kill>
	movq	%rax, %rdi
	callq	XShapeGetRectangles
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB16_8
# BB#1:                                 # %if.then
	cmpl	$1, -36(%rbp)
	jle	.LBB16_7
# BB#2:                                 # %if.then.4
	callq	cairo_region_create
	movq	%rax, -24(%rbp)
	movl	$0, -44(%rbp)
.LBB16_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB16_6
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB16_3 Depth=1
	leaq	-64(%rbp), %rsi
	movslq	-44(%rbp), %rax
	movq	-32(%rbp), %rcx
	movswl	(%rcx,%rax,8), %edx
	movl	%edx, -64(%rbp)
	movslq	-44(%rbp), %rax
	movq	-32(%rbp), %rcx
	movswl	2(%rcx,%rax,8), %edx
	movl	%edx, -60(%rbp)
	movslq	-44(%rbp), %rax
	movq	-32(%rbp), %rcx
	movzwl	4(%rcx,%rax,8), %edx
	movl	%edx, -56(%rbp)
	movslq	-44(%rbp), %rax
	movq	-32(%rbp), %rcx
	movzwl	6(%rcx,%rax,8), %edx
	movl	%edx, -52(%rbp)
	movq	-24(%rbp), %rdi
	callq	cairo_region_union_rectangle
	movl	%eax, -68(%rbp)         # 4-byte Spill
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB16_3 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB16_3
.LBB16_6:                               # %for.end
	jmp	.LBB16_7
.LBB16_7:                               # %if.end
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	XFree
	movl	%eax, -72(%rbp)         # 4-byte Spill
.LBB16_8:                               # %if.end.24
	movq	-24(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	window_get_shape, .Lfunc_end16-window_get_shape
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI17_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	create_image,@function
create_image:                           # @create_image
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
	subq	$144, %rsp
	movabsq	$.L.str.57, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rax, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_progress_init
	movq	-8(%rbp), %rdi
	movl	%eax, -76(%rbp)         # 4-byte Spill
	callq	cairo_image_surface_get_width
	movl	%eax, -60(%rbp)
	movq	-8(%rbp), %rdi
	callq	cairo_image_surface_get_height
	xorl	%edx, %edx
	movl	%eax, -64(%rbp)
	movl	-60(%rbp), %edi
	movl	-64(%rbp), %esi
	callq	gimp_image_new
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %edi
	callq	gimp_image_undo_disable
	leaq	-40(%rbp), %rdi
	leaq	-48(%rbp), %rsi
	movl	%eax, -80(%rbp)         # 4-byte Spill
	callq	gimp_get_monitor_resolution
	movl	-28(%rbp), %edi
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	movl	%eax, -84(%rbp)         # 4-byte Spill
	callq	gimp_image_set_resolution
	movl	%eax, -88(%rbp)         # 4-byte Spill
	callq	gimp_get_default_comment
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB17_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.58, %rdi
	movl	$1, %esi
	movq	-56(%rbp), %rax
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movl	%esi, -100(%rbp)        # 4-byte Spill
	callq	strlen
	addq	$1, %rax
	movl	%eax, %esi
	movq	-56(%rbp), %rcx
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movl	-100(%rbp), %edx        # 4-byte Reload
	movl	%esi, -104(%rbp)        # 4-byte Spill
	movl	%edx, %esi
	movl	-104(%rbp), %edx        # 4-byte Reload
	callq	gimp_parasite_new
	movq	%rax, -72(%rbp)
	movl	-28(%rbp), %edi
	movq	-72(%rbp), %rsi
	callq	gimp_image_attach_parasite
	movq	-72(%rbp), %rdi
	movl	%eax, -108(%rbp)        # 4-byte Spill
	callq	gimp_parasite_free
	movq	-56(%rbp), %rdi
	callq	g_free
.LBB17_2:                               # %if.end
	movl	-28(%rbp), %edi
	cmpq	$0, -24(%rbp)
	movl	%edi, -112(%rbp)        # 4-byte Spill
	je	.LBB17_4
# BB#3:                                 # %cond.true
	movq	-24(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB17_5
.LBB17_4:                               # %cond.false
	movabsq	$.L.str.27, %rdi
	callq	gettext
	movq	%rax, -120(%rbp)        # 8-byte Spill
.LBB17_5:                               # %cond.end
	movq	-120(%rbp), %rax        # 8-byte Reload
	xorps	%xmm0, %xmm0
	movsd	.LCPI17_0, %xmm1        # xmm1 = mem[0],zero
	movq	-8(%rbp), %rdx
	movl	-112(%rbp), %edi        # 4-byte Reload
	movq	%rax, %rsi
	callq	gimp_layer_new_from_surface
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	xorl	%ecx, %ecx
	movl	%eax, -32(%rbp)
	movl	-28(%rbp), %edi
	movl	-32(%rbp), %esi
	callq	gimp_image_insert_layer
	cmpq	$0, -16(%rbp)
	movl	%eax, -124(%rbp)        # 4-byte Spill
	je	.LBB17_10
# BB#6:                                 # %land.lhs.true
	movq	-16(%rbp), %rdi
	callq	cairo_region_is_empty
	cmpl	$0, %eax
	jne	.LBB17_10
# BB#7:                                 # %if.then.19
	movl	-28(%rbp), %edi
	movq	-16(%rbp), %rsi
	callq	image_select_shape
	movl	-28(%rbp), %edi
	callq	gimp_selection_is_empty
	cmpl	$0, %eax
	jne	.LBB17_9
# BB#8:                                 # %if.then.22
	movl	-32(%rbp), %edi
	callq	gimp_layer_add_alpha
	movl	-32(%rbp), %edi
	movl	%eax, -128(%rbp)        # 4-byte Spill
	callq	gimp_edit_clear
	movl	-28(%rbp), %edi
	movl	%eax, -132(%rbp)        # 4-byte Spill
	callq	gimp_selection_none
	movl	%eax, -136(%rbp)        # 4-byte Spill
.LBB17_9:                               # %if.end.26
	jmp	.LBB17_10
.LBB17_10:                              # %if.end.27
	movl	-28(%rbp), %edi
	callq	gimp_image_undo_enable
	movl	-28(%rbp), %edi
	movl	%eax, -140(%rbp)        # 4-byte Spill
	movl	%edi, %eax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	create_image, .Lfunc_end17-create_image
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI18_0:
	.quad	4636737291354636288     # double 100
	.text
	.align	16, 0x90
	.type	add_cursor_image,@function
add_cursor_image:                       # @add_cursor_image
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
	subq	$208, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	gdk_x11_display_get_xdisplay
	movq	%rax, %rdi
	callq	XFixesGetCursorImage
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB18_2
# BB#1:                                 # %if.then
	jmp	.LBB18_24
.LBB18_2:                               # %if.end
	movl	-4(%rbp), %edi
	callq	gimp_image_get_active_layer
	movabsq	$.L.str.59, %rdi
	movl	%eax, -96(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, -156(%rbp)        # 4-byte Spill
	callq	gettext
	movl	$1, %r8d
	movsd	.LCPI18_0, %xmm0        # xmm0 = mem[0],zero
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rdi
	movzwl	4(%rdi), %edx
	movq	-24(%rbp), %rdi
	movzwl	6(%rdi), %ecx
	movl	-156(%rbp), %edi        # 4-byte Reload
	movq	%rax, %rsi
	callq	gimp_layer_new
	movl	%eax, -92(%rbp)
	movl	-92(%rbp), %edi
	callq	gimp_drawable_get
	leaq	-80(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rsi
	movq	-32(%rbp), %rax
	movl	4(%rax), %r8d
	movq	-32(%rbp), %rax
	movl	8(%rax), %r9d
	movl	%edx, -160(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	$1, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	movl	$1, %edi
	leaq	-80(%rbp), %rsi
	movb	$0, %al
	callq	gimp_pixel_rgns_register
	movq	%rax, -88(%rbp)
.LBB18_3:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_5 Depth 2
                                        #       Child Loop BB18_7 Depth 3
	cmpq	$0, -88(%rbp)
	je	.LBB18_23
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB18_3 Depth=1
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movl	-52(%rbp), %ecx
	movq	-24(%rbp), %rdx
	movzwl	4(%rdx), %esi
	imull	%esi, %ecx
	movslq	%ecx, %rdx
	shlq	$3, %rdx
	addq	%rdx, %rax
	movslq	-56(%rbp), %rdx
	shlq	$3, %rdx
	addq	%rdx, %rax
	movq	%rax, -104(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -112(%rbp)
	movl	$0, -120(%rbp)
.LBB18_5:                               # %for.cond.17
                                        #   Parent Loop BB18_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB18_7 Depth 3
	movl	-120(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jge	.LBB18_21
# BB#6:                                 # %for.body.20
                                        #   in Loop: Header=BB18_5 Depth=2
	movq	-104(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -136(%rbp)
	movl	$0, -116(%rbp)
.LBB18_7:                               # %for.cond.21
                                        #   Parent Loop BB18_3 Depth=1
                                        #     Parent Loop BB18_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-116(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jge	.LBB18_19
# BB#8:                                 # %for.body.24
                                        #   in Loop: Header=BB18_7 Depth=3
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	shrq	$24, %rax
	andq	$255, %rax
	movl	%eax, %ecx
	movl	%ecx, -140(%rbp)
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	shrq	$16, %rax
	andq	$255, %rax
	movl	%eax, %ecx
	movl	%ecx, -144(%rbp)
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	shrq	$8, %rax
	andq	$255, %rax
	movl	%eax, %ecx
	movl	%ecx, -148(%rbp)
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	shrq	$0, %rax
	andq	$255, %rax
	movl	%eax, %ecx
	movl	%ecx, -152(%rbp)
	cmpl	$0, -140(%rbp)
	je	.LBB18_10
# BB#9:                                 # %cond.true
                                        #   in Loop: Header=BB18_7 Depth=3
	imull	$255, -144(%rbp), %eax
	xorl	%edx, %edx
	divl	-140(%rbp)
	movl	%eax, -164(%rbp)        # 4-byte Spill
	jmp	.LBB18_11
.LBB18_10:                              # %cond.false
                                        #   in Loop: Header=BB18_7 Depth=3
	movl	-144(%rbp), %eax
	movl	%eax, -164(%rbp)        # 4-byte Spill
.LBB18_11:                              # %cond.end
                                        #   in Loop: Header=BB18_7 Depth=3
	movl	-164(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movq	-136(%rbp), %rdx
	movb	%cl, (%rdx)
	cmpl	$0, -140(%rbp)
	je	.LBB18_13
# BB#12:                                # %cond.true.39
                                        #   in Loop: Header=BB18_7 Depth=3
	imull	$255, -148(%rbp), %eax
	xorl	%edx, %edx
	divl	-140(%rbp)
	movl	%eax, -168(%rbp)        # 4-byte Spill
	jmp	.LBB18_14
.LBB18_13:                              # %cond.false.42
                                        #   in Loop: Header=BB18_7 Depth=3
	movl	-148(%rbp), %eax
	movl	%eax, -168(%rbp)        # 4-byte Spill
.LBB18_14:                              # %cond.end.43
                                        #   in Loop: Header=BB18_7 Depth=3
	movl	-168(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movq	-136(%rbp), %rdx
	movb	%cl, 1(%rdx)
	cmpl	$0, -140(%rbp)
	je	.LBB18_16
# BB#15:                                # %cond.true.48
                                        #   in Loop: Header=BB18_7 Depth=3
	imull	$255, -152(%rbp), %eax
	xorl	%edx, %edx
	divl	-140(%rbp)
	movl	%eax, -172(%rbp)        # 4-byte Spill
	jmp	.LBB18_17
.LBB18_16:                              # %cond.false.51
                                        #   in Loop: Header=BB18_7 Depth=3
	movl	-152(%rbp), %eax
	movl	%eax, -172(%rbp)        # 4-byte Spill
.LBB18_17:                              # %cond.end.52
                                        #   in Loop: Header=BB18_7 Depth=3
	movl	-172(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movq	-136(%rbp), %rdx
	movb	%cl, 2(%rdx)
	movl	-140(%rbp), %eax
	movb	%al, %cl
	movq	-136(%rbp), %rdx
	movb	%cl, 3(%rdx)
	movq	-128(%rbp), %rdx
	addq	$8, %rdx
	movq	%rdx, -128(%rbp)
	movq	-136(%rbp), %rdx
	addq	$4, %rdx
	movq	%rdx, -136(%rbp)
# BB#18:                                # %for.inc
                                        #   in Loop: Header=BB18_7 Depth=3
	movl	-116(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -116(%rbp)
	jmp	.LBB18_7
.LBB18_19:                              # %for.end
                                        #   in Loop: Header=BB18_5 Depth=2
	movq	-24(%rbp), %rax
	movzwl	4(%rax), %ecx
	movq	-104(%rbp), %rax
	movslq	%ecx, %rdx
	shlq	$3, %rdx
	addq	%rdx, %rax
	movq	%rax, -104(%rbp)
	movl	-60(%rbp), %ecx
	movq	-112(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -112(%rbp)
# BB#20:                                # %for.inc.65
                                        #   in Loop: Header=BB18_5 Depth=2
	movl	-120(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -120(%rbp)
	jmp	.LBB18_5
.LBB18_21:                              # %for.end.67
                                        #   in Loop: Header=BB18_3 Depth=1
	jmp	.LBB18_22
.LBB18_22:                              # %for.inc.68
                                        #   in Loop: Header=BB18_3 Depth=1
	movq	-88(%rbp), %rdi
	callq	gimp_pixel_rgns_process
	movq	%rax, -88(%rbp)
	jmp	.LBB18_3
.LBB18_23:                              # %for.end.70
	movq	-32(%rbp), %rdi
	callq	gimp_drawable_detach
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	-4(%rbp), %edi
	movl	-92(%rbp), %esi
	movl	%eax, %edx
	movl	%eax, %ecx
	callq	gimp_image_insert_layer
	movl	-92(%rbp), %edi
	movq	-24(%rbp), %r8
	movswl	(%r8), %ecx
	movq	-24(%rbp), %r8
	movzwl	8(%r8), %edx
	subl	%edx, %ecx
	movq	-24(%rbp), %r8
	movswl	2(%r8), %edx
	movq	-24(%rbp), %r8
	movzwl	10(%r8), %esi
	subl	%esi, %edx
	movl	%ecx, %esi
	movl	%eax, -176(%rbp)        # 4-byte Spill
	callq	gimp_layer_set_offsets
	movl	-4(%rbp), %edi
	movl	-96(%rbp), %esi
	movl	%eax, -180(%rbp)        # 4-byte Spill
	callq	gimp_image_set_active_layer
	movl	%eax, -184(%rbp)        # 4-byte Spill
.LBB18_24:                              # %return
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	add_cursor_image, .Lfunc_end18-add_cursor_image
	.cfi_endproc

	.align	16, 0x90
	.type	window_get_utf8_property,@function
window_get_utf8_property:               # @window_get_utf8_property
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp62:
	.cfi_def_cfa_offset 16
.Ltmp63:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp64:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$192, %rsp
.Ltmp65:
	.cfi_offset %rbx, -48
.Ltmp66:
	.cfi_offset %r12, -40
.Ltmp67:
	.cfi_offset %r14, -32
.Ltmp68:
	.cfi_offset %r15, -24
	movabsq	$.L.str.56, %rax
	movq	%rdi, -48(%rbp)
	movl	%esi, -52(%rbp)
	movq	%rdx, -64(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -96(%rbp)
	movq	$0, -104(%rbp)
	movq	$0, -112(%rbp)
	movl	$0, -116(%rbp)
	movq	-48(%rbp), %rdi
	movq	%rax, %rsi
	callq	gdk_x11_get_xatom_by_name_for_display
	movq	%rax, -80(%rbp)
	movq	-48(%rbp), %rdi
	callq	gdk_x11_display_get_xdisplay
	movl	-52(%rbp), %ecx
	movl	%ecx, %esi
	movq	-48(%rbp), %rdi
	movq	-64(%rbp), %rdx
	movq	%rsi, -128(%rbp)        # 8-byte Spill
	movq	%rdx, %rsi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gdk_x11_get_xatom_by_name_for_display
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movabsq	$9223372036854775807, %r8 # imm = 0x7FFFFFFFFFFFFFFF
	xorl	%r9d, %r9d
	leaq	-88(%rbp), %rdx
	leaq	-116(%rbp), %rsi
	leaq	-104(%rbp), %rdi
	leaq	-112(%rbp), %r10
	leaq	-96(%rbp), %r11
	movq	-80(%rbp), %rbx
	movq	-136(%rbp), %r14        # 8-byte Reload
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%r14, %rdi
	movq	-128(%rbp), %r15        # 8-byte Reload
	movq	%rsi, -152(%rbp)        # 8-byte Spill
	movq	%r15, %rsi
	movq	%rdx, -160(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	%rbx, (%rsp)
	movq	-160(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	-152(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, 16(%rsp)
	movq	-144(%rbp), %r12        # 8-byte Reload
	movq	%r12, 24(%rsp)
	movq	%r10, 32(%rsp)
	movq	%r11, 40(%rsp)
	callq	XGetWindowProperty
	movq	-88(%rbp), %rcx
	cmpq	-80(%rbp), %rcx
	movl	%eax, -164(%rbp)        # 4-byte Spill
	jne	.LBB19_3
# BB#1:                                 # %lor.lhs.false
	cmpl	$8, -116(%rbp)
	jne	.LBB19_3
# BB#2:                                 # %lor.lhs.false.8
	cmpq	$0, -104(%rbp)
	jne	.LBB19_6
.LBB19_3:                               # %if.then
	cmpq	$0, -96(%rbp)
	je	.LBB19_5
# BB#4:                                 # %if.then.11
	movq	-96(%rbp), %rdi
	callq	XFree
	movl	%eax, -168(%rbp)        # 4-byte Spill
.LBB19_5:                               # %if.end
	movq	$0, -40(%rbp)
	jmp	.LBB19_9
.LBB19_6:                               # %if.end.13
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-96(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	g_utf8_validate
	cmpl	$0, %eax
	je	.LBB19_8
# BB#7:                                 # %if.then.16
	movq	-96(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	g_strndup
	movq	%rax, -72(%rbp)
.LBB19_8:                               # %if.end.18
	movq	-96(%rbp), %rdi
	callq	XFree
	movq	-72(%rbp), %rdi
	movq	%rdi, -40(%rbp)
	movl	%eax, -172(%rbp)        # 4-byte Spill
.LBB19_9:                               # %return
	movq	-40(%rbp), %rax
	addq	$192, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end19:
	.size	window_get_utf8_property, .Lfunc_end19-window_get_utf8_property
	.cfi_endproc

	.align	16, 0x90
	.type	image_select_shape,@function
image_select_shape:                     # @image_select_shape
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
	subq	$64, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	-4(%rbp), %edi
	callq	gimp_selection_none
	movq	-16(%rbp), %rdi
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	cairo_region_num_rectangles
	movl	%eax, -20(%rbp)
	movl	$0, -24(%rbp)
.LBB20_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-24(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB20_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB20_1 Depth=1
	leaq	-40(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movl	-24(%rbp), %esi
	callq	cairo_region_get_rectangle
	xorl	%esi, %esi
	movl	-4(%rbp), %edi
	cvtsi2sdl	-40(%rbp), %xmm0
	cvtsi2sdl	-36(%rbp), %xmm1
	cvtsi2sdl	-32(%rbp), %xmm2
	cvtsi2sdl	-28(%rbp), %xmm3
	callq	gimp_image_select_rectangle
	movl	%eax, -48(%rbp)         # 4-byte Spill
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB20_1
.LBB20_4:                               # %for.end
	movl	-4(%rbp), %edi
	callq	gimp_selection_invert
	movl	%eax, -52(%rbp)         # 4-byte Spill
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	image_select_shape, .Lfunc_end20-image_select_shape
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
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.2
	.quad	.L.str.3
	.long	0                       # 0x0
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
	.long	0                       # 0x0
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
	.asciz	"root"
	.size	.L.str.2, 5

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Root window { TRUE, FALSE }"
	.size	.L.str.3, 28

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"window-id"
	.size	.L.str.4, 10

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Window id"
	.size	.L.str.5, 10

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"x1"
	.size	.L.str.6, 3

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"(optional) Region left x coord"
	.size	.L.str.7, 31

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"y1"
	.size	.L.str.8, 3

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"(optional) Region top y coord"
	.size	.L.str.9, 30

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"x2"
	.size	.L.str.10, 3

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"(optional) Region right x coord"
	.size	.L.str.11, 32

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"y2"
	.size	.L.str.12, 3

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"(optional) Region bottom y coord"
	.size	.L.str.13, 33

	.type	query.return_vals,@object # @query.return_vals
	.section	.rodata,"a",@progbits
	.align	16
query.return_vals:
	.long	13                      # 0xd
	.zero	4
	.quad	.L.str.14
	.quad	.L.str.15
	.size	query.return_vals, 24

	.type	.L.str.14,@object       # @.str.14
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.14:
	.asciz	"image"
	.size	.L.str.14, 6

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Output image"
	.size	.L.str.15, 13

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"plug-in-screenshot"
	.size	.L.str.16, 19

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Create an image from an area of the screen"
	.size	.L.str.17, 43

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"The plug-in allows to take screenshots of an interactively selected window or of the desktop, either the whole desktop or an interactively selected region. When called non-interactively, it may grab the root window or use the window-id passed as a parameter.  The last four parameters are optional and can be used to specify the corners of the region to be grabbed."
	.size	.L.str.18, 366

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Sven Neumann <sven@gimp.org>, Henrik Brix Andersen <brix@gimp.org>,Simone Karin Lehmann"
	.size	.L.str.19, 88

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"1998 - 2008"
	.size	.L.str.20, 12

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"v1.1 (2008/04)"
	.size	.L.str.21, 15

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"_Screenshot..."
	.size	.L.str.22, 15

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"<Image>/File/Create/Acquire"
	.size	.L.str.23, 28

	.type	screenshot_icon,@object # @screenshot_icon
	.section	.rodata,"a",@progbits
	.align	4
screenshot_icon:
	.asciz	"GdkP\000\000\006F\002\001\000\002\000\000\000X\000\000\000\026\000\000\000\026\213\000\000\000\000\001\242\242\242\005\203\242\242\242\031\221\000\000\000\000\002\027\027\026D   \372\203)))\375\002\032\032\032\362\026\026\0250\217\000\000\000\000\002\002\002\002\322\307\310\307\377\203\377\377\377\377\002\263\263\262\363\000\000\000\314\217\000\000\000\000\002\006\006\006\334\206\207\205\377\202\252\253\251\377\003\252\252\251\377ghe\376\001\001\001\320\217\000\000\000\000\002\t\t\t\346./-\345\202GHE\025\003JKH\03201/\364\005\005\005\333\212\000\000\000\000\017\026\026\025\031\026\026\0250\026\026\025g\000\000\000\314+,+\331LMK\375EFD\362ffe\347iig\346lmk\346RSQ\362\013\013\013\360\000\000\000\314\002\002\002\321\026\026\025V\203\000\000\000\000#\026\026\025\031\026\026\0250\026\026\025n\003\003\003\331\002\002\002\332JJI\355\215\215\215\372\246\246\246\347\267\270\266\362\177\202~\377BC?\377TUR\377\\]Y\377gid\377[]X\377\204\206\204\374wxw\276\224\225\224\314LLK\343\026\026\025D\000\000\000\000\026\026\025D\003\003\003\341\017\017\017\373ghg\377\237\240\236\377\273\274\272\377\302\303\300\377\272\273\270\377\200\201\177\377zzz\377tws\377\220\223\217\377\221\225\221\377\224\227\223\377\202\226\232\226\377K\177\202}\377xyu\377\217\221\215\377\226\227\226\365\000\000\000\371\000\000\000\000\002\002\002\330\257\261\257\377\275\276\273\377\262\263\260\377UWT\377QSP\377suq\377]^[\377\304\304\304\377\303\303\303\377kmi\377MNJ\377WZX\377[`_\377aeb\377gid\377}\200{\377SUQ\377FGE\377\200\201\200\377\n\n\n\357\000\000\000\000\004\004\004\345xyv\377\241\242\236\377\210\212\205\377vxt\377\220\222\217\377GIF\377+,)\377```\377jji\377UXV\377y\204\210\377\203\215\220\377~\204\207\377flo\377PW\\\377SWU\377JLI\377452\377tut\377\n\n\n\357\000\000\000\000\004\004\004\344opm\377\221\223\217\377}\177{\377\215\217\213\377`b_\377()'\377*+)\377785\377VXV\377u~\202\377nsu\377VYZ\377OST\377OQS\377JOP\377^cd\377698\377!\"!\377llk\377\n\n\n\357\000\000\000\000\003\003\003\345npl\377\220\221\216\377\202UWS\377\024GIF\377 !\037\377*+)\3779:7\377^ce\377NRT\377UXY\377(,.\377\022\024\025\377!$&\377ILM\3778=?\377RVX\377''&\377klk\377\n\n\n\357\000\000\000\001\003\003\003\345nol\377\220\221\216\377\202UWS\377\024GIF\377 !\037\377*+)\3778:8\377TXY\377289\377\023\025\026\377\016\016\016\377\001\001\001\377\002\002\002\377\024\025\025\377.34\377289\377011\377aa`\377\t\t\t\360\000\000\000\003\003\003\003\345nol\377\204\205\202\377\202UWS\377\024GIF\377 !\037\377*+)\377?BA\37728:\377\034 !\377\031\032\032\377\377\377\377\377hhh\377   \377\022\022\022\377.00\377.46\377:>?\377`a`\377\t\t\b\361\000\000\000\007\003\003\003\345mok\377z{x\377\202UWS\377\024GIF\377 !\037\377*+)\377HJI\377.46\377\025\027\030\377   \377hhh\377\232\232\232\377}}}\377'''\3779;;\377/57\377599\377``_\377\t\t\b\362\000\000\000\r\003\003\003\345lnk\377rsp\377\202UWS\377\024GIF\377 !\037\377,-*\377>@>\377.46\377\035\037 \377\001\001\001\377888\377\214\214\214\377\213\213\213\377AAA\377JKK\377/57\3776:;\377WXV\377\006\006\006\364\000\000\000\021\000\000\000\371\201\202\177\377mok\377\202UWS\377iGIF\377MNM\377RRR\372ghg\364[`b\377+/0\377\017\017\017\377\"\"\"\377'''\377HHH\377\263\263\263\377SUU\377W\\^\377CFF\374<<<\376\020\020\017\317\000\000\000\020\024\024\023]\004\004\004\353\177\177~\375|}z\373}~|\374hih\3769:9\371\000\000\000\347\000\000\000\351\007\007\007\367.46\377256\377   \377(((\377:::\377`ab\3779>?\377\t\013\013\376\000\000\000\353\000\000\000\300\f\f\013H\000\000\000\r\000\000\000\004\023\023\022L\000\000\000\332\000\000\000\341\000\000\000\346\000\000\000\341\f\f\013{\000\000\000V\000\000\000a\000\000\000l\b\t\t\371\\^_\377LOP\377ILL\377LOQ\377QUV\377\016\017\017\377\034\037 \244\000\000\000`\000\000\0004\000\000\000\027\000\000\000\007\000\000\000\001\000\000\000\003\000\000\000\b\000\000\000\021\000\000\000\034\000\000\000'\000\000\0000\000\000\0006\000\000\000=\000\000\000A\000\000\000F\004\005\005\355\n\013\013\371\017\020\020\376\r\016\016\375\b\b\t\365\007\b\tj\000\000\000G\000\000\000-\000\000\000\030\000\000\000\013\000\000\000\004\000\000\000\000\000\000\000\001\000\000\000\002\000\000\000\004\000\000\000\t\000\000\000\016\000\000\000\023\000\000\000\031\000\000\000\035\000\000\000!\000\000\000#\000\000\000$\000\000\000%\000\000\000$\000\000\000&\000\000\000%\000\000\000\036\000\000\000\027\000\000\000\020\000\000\000\b\000\000\000\003\000\000\000\001\204\000\000\000\000\005\000\000\000\001\000\000\000\002\000\000\000\004\000\000\000\005\000\000\000\006\202\000\000\000\b\t\000\000\000\t\000\000\000\007\000\000\000\b\000\000\000\005\000\000\000\007\000\000\000\006\000\000\000\005\000\000\000\003\000\000\000\001\202\000\000\000\000"
	.size	screenshot_icon, 1607

	.type	run.values,@object      # @run.values
	.local	run.values
	.comm	run.values,80,16
	.type	.L.str.24,@object       # @.str.24
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.24:
	.asciz	"gimp20-std-plug-ins"
	.size	.L.str.24, 20

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"UTF-8"
	.size	.L.str.25, 6

	.type	shootvals,@object       # @shootvals
	.data
	.align	4
shootvals:
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.size	shootvals, 36

	.type	.L.str.26,@object       # @.str.26
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.26:
	.asciz	"screenshot"
	.size	.L.str.26, 11

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"Screenshot"
	.size	.L.str.27, 11

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"gimp-screenshot"
	.size	.L.str.28, 16

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"gtk-cancel"
	.size	.L.str.29, 11

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"S_nap"
	.size	.L.str.30, 6

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"show-border"
	.size	.L.str.31, 12

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"show-tabs"
	.size	.L.str.32, 10

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"After the delay, the screenshot is taken."
	.size	.L.str.33, 42

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"After the delay, drag your mouse to select the region for the screenshot."
	.size	.L.str.34, 74

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"At the end of the delay, click in a window to snap it."
	.size	.L.str.35, 55

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"Area"
	.size	.L.str.36, 5

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"Take a screenshot of a single _window"
	.size	.L.str.37, 38

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"gimp-item-data"
	.size	.L.str.38, 15

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"toggled"
	.size	.L.str.39, 8

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"Take a screenshot of the entire _screen"
	.size	.L.str.40, 40

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"Include _mouse pointer"
	.size	.L.str.41, 23

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"active"
	.size	.L.str.42, 7

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"sensitive"
	.size	.L.str.43, 10

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"Select a _region to grab"
	.size	.L.str.44, 25

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"Delay"
	.size	.L.str.45, 6

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"value-changed"
	.size	.L.str.46, 14

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"seconds"
	.size	.L.str.47, 8

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"label"
	.size	.L.str.48, 6

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"wrap"
	.size	.L.str.49, 5

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"justify"
	.size	.L.str.50, 8

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"xalign"
	.size	.L.str.51, 7

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"yalign"
	.size	.L.str.52, 7

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"Error selecting the window"
	.size	.L.str.53, 27

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"Specified window not found"
	.size	.L.str.54, 27

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"_NET_WM_NAME"
	.size	.L.str.55, 13

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"UTF8_STRING"
	.size	.L.str.56, 12

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"Importing screenshot"
	.size	.L.str.57, 21

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"gimp-comment"
	.size	.L.str.58, 13

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"Mouse Pointer"
	.size	.L.str.59, 14


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
