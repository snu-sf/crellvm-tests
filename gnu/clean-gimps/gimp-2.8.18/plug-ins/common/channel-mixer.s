	.text
	.file	"channel-mixer.bc"
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
	movabsq	$.L.str.26, %rdi
	movabsq	$.L.str.27, %rsi
	movabsq	$.L.str.28, %rdx
	movabsq	$.L.str.29, %rax
	movabsq	$.L.str.30, %r9
	movabsq	$.L.str.31, %rcx
	movabsq	$.L.str.32, %r8
	movl	$1, %r10d
	movl	$13, %r11d
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
	movl	$13, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%r14, 40(%rsp)
	movq	$0, 48(%rsp)
	movq	%r12, -64(%rbp)         # 8-byte Spill
	movl	%ebx, -68(%rbp)         # 4-byte Spill
	movl	%r10d, -72(%rbp)        # 4-byte Spill
	movl	%r11d, -76(%rbp)        # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.26, %rdi
	movabsq	$.L.str.33, %rsi
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
	subq	$288, %rsp              # imm = 0x120
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	$3, -228(%rbp)
	movq	-24(%rbp), %rcx
	movl	8(%rcx), %esi
	movl	%esi, -52(%rbp)
# BB#1:                                 # %do.body
	callq	gimp_locale_directory
	movabsq	$.L.str.34, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.34, %rdi
	movabsq	$.L.str.35, %rsi
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.34, %rdi
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	textdomain
	movq	%rax, -256(%rbp)        # 8-byte Spill
# BB#2:                                 # %do.end
	movabsq	$run.values, %rax
	movq	-32(%rbp), %rcx
	movl	$1, (%rcx)
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	$21, run.values
	movl	-228(%rbp), %edx
	movl	%edx, run.values+8
	movq	-24(%rbp), %rax
	movl	88(%rax), %edi
	callq	gimp_drawable_get
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_is_rgb
	cmpl	$0, %eax
	je	.LBB1_20
# BB#3:                                 # %if.then
	leaq	-224(%rbp), %rdi
	callq	cm_set_defaults
	movl	$1, -116(%rbp)
	movl	-52(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -260(%rbp)        # 4-byte Spill
	je	.LBB1_4
	jmp	.LBB1_23
.LBB1_23:                               # %if.then
	movl	-260(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -264(%rbp)        # 4-byte Spill
	je	.LBB1_7
	jmp	.LBB1_24
.LBB1_24:                               # %if.then
	movl	-260(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -268(%rbp)        # 4-byte Spill
	je	.LBB1_11
	jmp	.LBB1_12
.LBB1_4:                                # %sw.bb
	movabsq	$.L.str.26, %rdi
	leaq	-224(%rbp), %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	leaq	-224(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movl	%eax, -272(%rbp)        # 4-byte Spill
	callq	cm_dialog
	cmpl	$0, %eax
	jne	.LBB1_6
# BB#5:                                 # %if.then.11
	movq	-48(%rbp), %rdi
	callq	gimp_drawable_detach
	jmp	.LBB1_22
.LBB1_6:                                # %if.end
	jmp	.LBB1_13
.LBB1_7:                                # %sw.bb.12
	movq	-24(%rbp), %rax
	movl	128(%rax), %ecx
	movl	%ecx, -128(%rbp)
	cmpl	$0, -128(%rbp)
	je	.LBB1_9
# BB#8:                                 # %if.then.18
	movq	-24(%rbp), %rax
	movsd	168(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -152(%rbp)
	movq	-24(%rbp), %rax
	movsd	208(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -144(%rbp)
	movq	-24(%rbp), %rax
	movsd	248(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -136(%rbp)
	jmp	.LBB1_10
.LBB1_9:                                # %if.else
	movq	-24(%rbp), %rax
	movsd	168(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -224(%rbp)
	movq	-24(%rbp), %rax
	movsd	208(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -216(%rbp)
	movq	-24(%rbp), %rax
	movsd	248(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -208(%rbp)
	movq	-24(%rbp), %rax
	movsd	288(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -200(%rbp)
	movq	-24(%rbp), %rax
	movsd	328(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -192(%rbp)
	movq	-24(%rbp), %rax
	movsd	368(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -184(%rbp)
	movq	-24(%rbp), %rax
	movsd	408(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -176(%rbp)
	movq	-24(%rbp), %rax
	movsd	448(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -168(%rbp)
	movq	-24(%rbp), %rax
	movsd	488(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -160(%rbp)
.LBB1_10:                               # %if.end.71
	jmp	.LBB1_13
.LBB1_11:                               # %sw.bb.72
	movabsq	$.L.str.26, %rdi
	leaq	-224(%rbp), %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movl	%eax, -276(%rbp)        # 4-byte Spill
	jmp	.LBB1_13
.LBB1_12:                               # %sw.default
	jmp	.LBB1_13
.LBB1_13:                               # %sw.epilog
	cmpl	$3, -228(%rbp)
	jne	.LBB1_19
# BB#14:                                # %if.then.74
	movabsq	$.L.str.36, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_progress_init
	leaq	-224(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movl	%eax, -280(%rbp)        # 4-byte Spill
	callq	channel_mixer
	cmpl	$1, -52(%rbp)
	je	.LBB1_16
# BB#15:                                # %if.then.78
	callq	gimp_displays_flush
	movl	%eax, -284(%rbp)        # 4-byte Spill
.LBB1_16:                               # %if.end.80
	cmpl	$0, -52(%rbp)
	jne	.LBB1_18
# BB#17:                                # %if.then.82
	movabsq	$.L.str.26, %rdi
	movl	$168, %edx
	leaq	-224(%rbp), %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_set_data
	movl	%eax, -288(%rbp)        # 4-byte Spill
.LBB1_18:                               # %if.end.84
	jmp	.LBB1_19
.LBB1_19:                               # %if.end.85
	jmp	.LBB1_21
.LBB1_20:                               # %if.else.86
	movl	$0, -228(%rbp)
.LBB1_21:                               # %if.end.87
	movl	-228(%rbp), %eax
	movl	%eax, run.values+8
	movq	-48(%rbp), %rdi
	callq	gimp_drawable_detach
.LBB1_22:                               # %return
	addq	$288, %rsp              # imm = 0x120
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
	.type	cm_set_defaults,@function
cm_set_defaults:                        # @cm_set_defaults
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
	movabsq	$cm_set_defaults.defaults, %rax
	movl	$108, %ecx
	movl	%ecx, %edx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rax, %rsi
	callq	memcpy
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	cm_set_defaults, .Lfunc_end3-cm_set_defaults
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4636737291354636288     # double 100
.LCPI4_1:
	.quad	-4582131145872769024    # double -200
.LCPI4_2:
	.quad	4641240890982006784     # double 200
.LCPI4_3:
	.quad	4607182418800017408     # double 1
.LCPI4_4:
	.quad	4621819117588971520     # double 10
	.text
	.align	16, 0x90
	.type	cm_dialog,@function
cm_dialog:                              # @cm_dialog
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
	pushq	%r14
	pushq	%rbx
	subq	$816, %rsp              # imm = 0x330
.Ltmp20:
	.cfi_offset %rbx, -32
.Ltmp21:
	.cfi_offset %r14, -24
	movabsq	$.L.str.37, %rax
	xorl	%ecx, %ecx
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rax, %rdi
	movl	%ecx, %esi
	callq	gimp_ui_init
	movq	-24(%rbp), %rax
	cmpl	$0, 96(%rax)
	je	.LBB4_2
# BB#1:                                 # %if.then
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movaps	%xmm0, %xmm1
	mulsd	72(%rax), %xmm1
	movsd	%xmm1, -112(%rbp)
	movq	-24(%rbp), %rax
	movaps	%xmm0, %xmm1
	mulsd	80(%rax), %xmm1
	movsd	%xmm1, -120(%rbp)
	movq	-24(%rbp), %rax
	mulsd	88(%rax), %xmm0
	movsd	%xmm0, -128(%rbp)
	jmp	.LBB4_9
.LBB4_2:                                # %if.else
	movq	-24(%rbp), %rax
	movl	104(%rax), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -136(%rbp)        # 4-byte Spill
	je	.LBB4_3
	jmp	.LBB4_12
.LBB4_12:                               # %if.else
	movl	-136(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -140(%rbp)        # 4-byte Spill
	je	.LBB4_4
	jmp	.LBB4_13
.LBB4_13:                               # %if.else
	movl	-136(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -144(%rbp)        # 4-byte Spill
	je	.LBB4_5
	jmp	.LBB4_6
.LBB4_3:                                # %sw.bb
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movaps	%xmm0, %xmm1
	mulsd	(%rax), %xmm1
	movsd	%xmm1, -112(%rbp)
	movq	-24(%rbp), %rax
	movaps	%xmm0, %xmm1
	mulsd	8(%rax), %xmm1
	movsd	%xmm1, -120(%rbp)
	movq	-24(%rbp), %rax
	mulsd	16(%rax), %xmm0
	movsd	%xmm0, -128(%rbp)
	jmp	.LBB4_8
.LBB4_4:                                # %sw.bb.13
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movaps	%xmm0, %xmm1
	mulsd	24(%rax), %xmm1
	movsd	%xmm1, -112(%rbp)
	movq	-24(%rbp), %rax
	movaps	%xmm0, %xmm1
	mulsd	32(%rax), %xmm1
	movsd	%xmm1, -120(%rbp)
	movq	-24(%rbp), %rax
	mulsd	40(%rax), %xmm0
	movsd	%xmm0, -128(%rbp)
	jmp	.LBB4_8
.LBB4_5:                                # %sw.bb.22
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movaps	%xmm0, %xmm1
	mulsd	48(%rax), %xmm1
	movsd	%xmm1, -112(%rbp)
	movq	-24(%rbp), %rax
	movaps	%xmm0, %xmm1
	mulsd	56(%rax), %xmm1
	movsd	%xmm1, -120(%rbp)
	movq	-24(%rbp), %rax
	mulsd	64(%rax), %xmm0
	movsd	%xmm0, -128(%rbp)
	jmp	.LBB4_8
.LBB4_6:                                # %sw.default
	jmp	.LBB4_7
.LBB4_7:                                # %do.body
	xorl	%eax, %eax
	movl	%eax, %ecx
	movabsq	$.L.str.38, %rsi
	movl	$485, %edx              # imm = 0x1E5
	movabsq	$.L__func__.cm_dialog, %rdi
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	-152(%rbp), %r8         # 8-byte Reload
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	movq	%r8, %rcx
	movq	-160(%rbp), %r8         # 8-byte Reload
	callq	g_assertion_message_expr
.LBB4_8:                                # %sw.epilog
	jmp	.LBB4_9
.LBB4_9:                                # %if.end
	movabsq	$.L.str.36, %rdi
	callq	gettext
	movabsq	$.L.str.39, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	movabsq	$gimp_standard_help_func, %r8
	movabsq	$.L.str.26, %r9
	movabsq	$.L.str.40, %rdi
	movl	$4294967290, %r10d      # imm = 0xFFFFFFFA
	movabsq	$.L.str.41, %r11
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
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
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
	movq	-40(%rbp), %rdi
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
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-40(%rbp), %rax
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
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movq	-32(%rbp), %rdi
	callq	gimp_zoom_preview_new
	movq	%rax, preview
	movq	-48(%rbp), %rax
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
	movabsq	$.L.str.42, %rsi
	movabsq	$cm_preview, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movl	$2, %r9d
	movq	preview, %rdi
	movq	-24(%rbp), %r11
	movq	%rax, %rdx
	movq	%r11, %rcx
	callq	g_signal_connect_data
	xorl	%r9d, %r9d
	movl	%r9d, %edi
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gimp_frame_new
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
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
	xorl	%edi, %edi
	movl	$6, %esi
	callq	gtk_box_new
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gtk_frame_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_frame_set_label_widget
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.43, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new_with_mnemonic
	movq	%rax, -88(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -260(%rbp)        # 4-byte Spill
	movl	-260(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-88(%rbp), %rdi
	callq	gtk_widget_show
	callq	gimp_int_combo_box_get_type
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movq	-24(%rbp), %rsi
	movq	%rax, 136(%rsi)
	movq	-24(%rbp), %rax
	movq	136(%rax), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.44, %rdi
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	$1, %edx
	movl	$2, %r9d
	movabsq	$.L.str.45, %rsi
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rsi, -288(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movl	%edx, -292(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-292(%rbp), %ecx        # 4-byte Reload
	movl	%r8d, -296(%rbp)        # 4-byte Spill
	movq	%rax, %r8
	movq	-288(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$-1, 8(%rsp)
	movb	$0, %al
	callq	gimp_int_combo_box_append
	movq	-24(%rbp), %rdi
	movq	136(%rdi), %rdi
	movq	%rdi, -304(%rbp)        # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.46, %rdi
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$1, %ecx
	movl	$2, %r9d
	movabsq	$.L.str.47, %rdi
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	-312(%rbp), %r8         # 8-byte Reload
	movq	%rdi, -320(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movl	%edx, -324(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movq	%rax, %r8
	movq	-320(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$-1, 8(%rsp)
	movb	$0, %al
	callq	gimp_int_combo_box_append
	movq	-24(%rbp), %rdi
	movq	136(%rdi), %rdi
	movq	%rdi, -336(%rbp)        # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.48, %rdi
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$2, %ecx
	movl	$1, %edx
	movabsq	$.L.str.49, %rdi
	movl	$4294967295, %r9d       # imm = 0xFFFFFFFF
	movq	-344(%rbp), %r8         # 8-byte Reload
	movq	%rdi, -352(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movl	%edx, -356(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-356(%rbp), %r10d       # 4-byte Reload
	movl	%ecx, -360(%rbp)        # 4-byte Spill
	movl	%r10d, %ecx
	movq	%rax, %r8
	movl	-360(%rbp), %ebx        # 4-byte Reload
	movl	%r9d, -364(%rbp)        # 4-byte Spill
	movl	%ebx, %r9d
	movq	-352(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$-1, 8(%rsp)
	movb	$0, %al
	callq	gimp_int_combo_box_append
	movq	-24(%rbp), %rdi
	movq	136(%rdi), %rdi
	movq	%rdi, -376(%rbp)        # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movl	104(%rsi), %esi
	movq	%rax, %rdi
	callq	gimp_int_combo_box_set_active
	movabsq	$.L.str.50, %rsi
	movabsq	$cm_combo_callback, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-24(%rbp), %r11
	movq	136(%r11), %r11
	movq	-24(%rbp), %r14
	movq	%rdi, -384(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	-384(%rbp), %rdx        # 8-byte Reload
	movq	%r14, %rcx
	movl	%eax, -388(%rbp)        # 4-byte Spill
	callq	g_signal_connect_data
	movq	-72(%rbp), %rcx
	movq	%rax, -400(%rbp)        # 8-byte Spill
	movq	%rcx, -408(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-408(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r9d
	xorl	%r8d, %r8d
	movq	-24(%rbp), %rcx
	movq	136(%rcx), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	callq	gtk_box_pack_start
	movq	-24(%rbp), %rax
	movq	136(%rax), %rdi
	callq	gtk_widget_show
	movq	-24(%rbp), %rax
	cmpl	$0, 96(%rax)
	je	.LBB4_11
# BB#10:                                # %if.then.85
	xorl	%esi, %esi
	movq	-24(%rbp), %rax
	movq	136(%rax), %rdi
	callq	gtk_widget_set_sensitive
.LBB4_11:                               # %if.end.87
	movq	-88(%rbp), %rax
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movq	136(%rsi), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_mnemonic_widget
	movl	$3, %edi
	movl	$4, %esi
	xorl	%edx, %edx
	callq	gtk_table_new
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-424(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-104(%rbp), %rax
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-432(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-64(%rbp), %rax
	movq	%rax, -440(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-440(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-104(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-104(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.45, %rdi
	movl	$4, %esi
	callq	gtk_image_new_from_stock
	movq	%rax, -96(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-448(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	$1, %ecx
	movl	$4, %r8d
	movq	-96(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -452(%rbp)        # 4-byte Spill
	movl	%ecx, -456(%rbp)        # 4-byte Spill
	movl	-452(%rbp), %r9d        # 4-byte Reload
	movl	%r8d, -460(%rbp)        # 4-byte Spill
	movl	%r9d, %r8d
	movl	-456(%rbp), %r9d        # 4-byte Reload
	movl	$4, (%rsp)
	movl	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	callq	gtk_table_attach
	movq	-96(%rbp), %rdi
	callq	gtk_widget_show
	movq	-104(%rbp), %rax
	movq	%rax, -472(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-472(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.51, %rdi
	movq	%rax, -480(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$1, %esi
	xorl	%edx, %edx
	movl	$150, %r8d
	movl	$4294967295, %r9d       # imm = 0xFFFFFFFF
	movsd	.LCPI4_1, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI4_2, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI4_3, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI4_4, %xmm4         # xmm4 = mem[0],zero
	xorps	%xmm0, %xmm0
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movsd	-112(%rbp), %xmm5       # xmm5 = mem[0],zero
	movq	-480(%rbp), %r10        # 8-byte Reload
	movq	%rdi, -488(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, %rcx
	movsd	%xmm0, -496(%rbp)       # 8-byte Spill
	movaps	%xmm5, %xmm0
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-496(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-496(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	callq	gimp_scale_entry_new
	movq	%rax, -504(%rbp)        # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-504(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.52, %rsi
	movabsq	$cm_red_scale_callback, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rdi
	movq	%rax, 112(%rdi)
	movq	-24(%rbp), %rax
	movq	112(%rax), %rax
	movq	-24(%rbp), %rdi
	movq	%rdi, -512(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-512(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.47, %rdi
	movl	$4, %esi
	movq	%rax, -520(%rbp)        # 8-byte Spill
	callq	gtk_image_new_from_stock
	movq	%rax, -96(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -528(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-528(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	$1, %r9d
	movl	$2, %r11d
	movl	$4, %ebx
	movq	-96(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	movl	%r11d, %r9d
	movl	$4, (%rsp)
	movl	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%ebx, -532(%rbp)        # 4-byte Spill
	callq	gtk_table_attach
	movq	-96(%rbp), %rdi
	callq	gtk_widget_show
	movq	-104(%rbp), %rax
	movq	%rax, -544(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-544(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.53, %rdi
	movq	%rax, -552(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$1, %ecx
	movl	$150, %r8d
	movl	$4294967295, %r9d       # imm = 0xFFFFFFFF
	movsd	.LCPI4_1, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI4_2, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI4_3, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI4_4, %xmm4         # xmm4 = mem[0],zero
	xorps	%xmm0, %xmm0
	xorl	%edx, %edx
	movl	%edx, %esi
	movsd	-120(%rbp), %xmm5       # xmm5 = mem[0],zero
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movq	%rsi, -560(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movl	%ecx, %edx
	movq	%rax, %rcx
	movsd	%xmm0, -568(%rbp)       # 8-byte Spill
	movaps	%xmm5, %xmm0
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-568(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-568(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	callq	gimp_scale_entry_new
	movq	%rax, -576(%rbp)        # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-576(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.52, %rsi
	movabsq	$cm_green_scale_callback, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rdi
	movq	%rax, 120(%rdi)
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movq	-24(%rbp), %rdi
	movq	%rdi, -584(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-584(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.49, %rdi
	movl	$4, %esi
	movq	%rax, -592(%rbp)        # 8-byte Spill
	callq	gtk_image_new_from_stock
	movq	%rax, -96(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -600(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-600(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	$1, %ecx
	movl	$2, %r8d
	movl	$3, %r9d
	movl	$4, %r11d
	movq	-96(%rbp), %rsi
	movq	%rax, %rdi
	movl	$4, (%rsp)
	movl	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%r11d, -604(%rbp)       # 4-byte Spill
	callq	gtk_table_attach
	movq	-96(%rbp), %rdi
	callq	gtk_widget_show
	movq	-104(%rbp), %rax
	movq	%rax, -616(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-616(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.54, %rdi
	movq	%rax, -624(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$1, %esi
	movl	$2, %edx
	movl	$150, %r8d
	movl	$4294967295, %r9d       # imm = 0xFFFFFFFF
	movsd	.LCPI4_1, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI4_2, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI4_3, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI4_4, %xmm4         # xmm4 = mem[0],zero
	xorps	%xmm0, %xmm0
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movsd	-128(%rbp), %xmm5       # xmm5 = mem[0],zero
	movq	-624(%rbp), %r10        # 8-byte Reload
	movq	%rdi, -632(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, %rcx
	movsd	%xmm0, -640(%rbp)       # 8-byte Spill
	movaps	%xmm5, %xmm0
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-640(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-640(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	callq	gimp_scale_entry_new
	movq	%rax, -648(%rbp)        # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-648(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.52, %rsi
	movabsq	$cm_blue_scale_callback, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rdi
	movq	%rax, 128(%rdi)
	movq	-24(%rbp), %rax
	movq	128(%rax), %rax
	movq	-24(%rbp), %rdi
	movq	%rdi, -656(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-656(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movl	$1, %edi
	movl	$6, %esi
	movq	%rax, -664(%rbp)        # 8-byte Spill
	callq	gtk_box_new
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -672(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-672(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.55, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_mnemonic
	movq	-24(%rbp), %rsi
	movq	%rax, 152(%rsi)
	movq	-24(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, -680(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-680(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movl	96(%rsi), %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-56(%rbp), %rax
	movq	%rax, -688(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-688(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-24(%rbp), %rsi
	movq	152(%rsi), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -692(%rbp)        # 4-byte Spill
	movl	-692(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-24(%rbp), %rax
	movq	152(%rax), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.56, %rsi
	movabsq	$cm_monochrome_callback, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rdi
	movq	152(%rdi), %rdi
	movq	-24(%rbp), %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data
	movabsq	$.L.str.57, %rdi
	movq	%rax, -704(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_mnemonic
	movq	-24(%rbp), %rcx
	movq	%rax, 160(%rcx)
	movq	-24(%rbp), %rax
	movq	160(%rax), %rax
	movq	%rax, -712(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-712(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rcx
	movl	100(%rcx), %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-56(%rbp), %rax
	movq	%rax, -720(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-720(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rcx
	movq	160(%rcx), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-24(%rbp), %rax
	movq	160(%rax), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.56, %rsi
	movabsq	$cm_preserve_luminosity_callback, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rdi
	movq	160(%rdi), %rdi
	movq	-24(%rbp), %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data
	xorl	%edi, %edi
	movl	$6, %esi
	movq	%rax, -728(%rbp)        # 8-byte Spill
	callq	gtk_box_new
	movq	%rax, -72(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -736(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-736(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_end
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.58, %rdi
	callq	gtk_button_new_from_stock
	movq	%rax, -80(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -744(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-744(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-80(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.59, %rsi
	movabsq	$cm_load_file_callback, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-80(%rbp), %rdi
	movq	-24(%rbp), %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data
	movabsq	$.L.str.60, %rdi
	movq	%rax, -752(%rbp)        # 8-byte Spill
	callq	gtk_button_new_from_stock
	movq	%rax, -80(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -760(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-760(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r9d
	xorl	%r8d, %r8d
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	callq	gtk_box_pack_start
	movq	-80(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.59, %rsi
	movabsq	$cm_save_file_callback, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-80(%rbp), %rdi
	movq	-24(%rbp), %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data
	movabsq	$.L.str.61, %rdi
	movq	%rax, -768(%rbp)        # 8-byte Spill
	callq	gtk_button_new_from_stock
	movq	%rax, -80(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -776(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-776(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r9d
	xorl	%r8d, %r8d
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	callq	gtk_box_pack_start
	movq	-80(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.59, %rsi
	movabsq	$cm_reset_callback, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-80(%rbp), %rdi
	movq	-24(%rbp), %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data
	movq	-40(%rbp), %rdi
	movq	%rax, -784(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
	movq	-40(%rbp), %rax
	movq	%rax, -792(%rbp)        # 8-byte Spill
	callq	gimp_dialog_get_type
	movq	-792(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dialog_run
	cmpl	$-5, %eax
	sete	%r14b
	andb	$1, %r14b
	movzbl	%r14b, %eax
	movl	%eax, -132(%rbp)
	movq	-40(%rbp), %rdi
	callq	gtk_widget_destroy
	movl	-132(%rbp), %eax
	addq	$816, %rsp              # imm = 0x330
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end4:
	.size	cm_dialog, .Lfunc_end4-cm_dialog
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	channel_mixer,@function
channel_mixer:                          # @channel_mixer
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
	subq	$288, %rsp              # imm = 0x120
	leaq	-176(%rbp), %rax
	leaq	-180(%rbp), %rdx
	leaq	-184(%rbp), %rcx
	leaq	-188(%rbp), %r8
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -172(%rbp)
	movq	-16(%rbp), %rsi
	movl	(%rsi), %edi
	movq	%rax, %rsi
	callq	gimp_drawable_mask_intersect
	cmpl	$0, %eax
	jne	.LBB5_2
# BB#1:                                 # %if.then
	jmp	.LBB5_24
.LBB5_2:                                # %if.end
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	cm_calculate_norm
	movsd	%xmm0, -136(%rbp)
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rsi
	addq	$24, %rsi
	callq	cm_calculate_norm
	movsd	%xmm0, -144(%rbp)
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rsi
	addq	$48, %rsi
	callq	cm_calculate_norm
	movsd	%xmm0, -152(%rbp)
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rsi
	addq	$72, %rsi
	callq	cm_calculate_norm
	movsd	%xmm0, -160(%rbp)
	movq	-16(%rbp), %rsi
	movl	(%rsi), %edi
	callq	gimp_drawable_has_alpha
	leaq	-64(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	%eax, -124(%rbp)
	movq	-16(%rbp), %rsi
	movl	-176(%rbp), %edx
	movl	-180(%rbp), %eax
	movl	-184(%rbp), %r8d
	movl	-188(%rbp), %r9d
	movl	%ecx, -236(%rbp)        # 4-byte Spill
	movl	%eax, %ecx
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	leaq	-112(%rbp), %rdi
	movl	$1, %eax
	movq	-16(%rbp), %rsi
	movl	-176(%rbp), %edx
	movl	-180(%rbp), %ecx
	movl	-184(%rbp), %r8d
	movl	-188(%rbp), %r9d
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	movl	%eax, -240(%rbp)        # 4-byte Spill
	callq	gimp_pixel_rgn_init
	movl	$2, %edi
	leaq	-64(%rbp), %rsi
	leaq	-112(%rbp), %rdx
	movl	-184(%rbp), %eax
	imull	-188(%rbp), %eax
	movl	%eax, -168(%rbp)
	movb	$0, %al
	callq	gimp_pixel_rgns_register
	movq	%rax, -120(%rbp)
	movl	$0, -164(%rbp)
.LBB5_3:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_5 Depth 2
                                        #       Child Loop BB5_8 Depth 3
                                        #       Child Loop BB5_13 Depth 3
	cmpq	$0, -120(%rbp)
	je	.LBB5_23
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB5_3 Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, -200(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -208(%rbp)
	movl	$0, -216(%rbp)
.LBB5_5:                                # %for.cond.9
                                        #   Parent Loop BB5_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_8 Depth 3
                                        #       Child Loop BB5_13 Depth 3
	movl	-216(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB5_19
# BB#6:                                 # %for.body.11
                                        #   in Loop: Header=BB5_5 Depth=2
	movq	-200(%rbp), %rax
	movq	%rax, -224(%rbp)
	movq	-208(%rbp), %rax
	movq	%rax, -232(%rbp)
	cmpl	$0, -124(%rbp)
	je	.LBB5_12
# BB#7:                                 # %if.then.13
                                        #   in Loop: Header=BB5_5 Depth=2
	movl	$0, -212(%rbp)
.LBB5_8:                                # %for.cond.14
                                        #   Parent Loop BB5_3 Depth=1
                                        #     Parent Loop BB5_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-212(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jge	.LBB5_11
# BB#9:                                 # %for.body.16
                                        #   in Loop: Header=BB5_8 Depth=3
	movq	-8(%rbp), %rdi
	movq	-224(%rbp), %rsi
	movq	-232(%rbp), %rdx
	movsd	-136(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-144(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-152(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	-160(%rbp), %xmm3       # xmm3 = mem[0],zero
	callq	cm_process_pixel
	movq	-224(%rbp), %rdx
	movb	3(%rdx), %al
	movq	-232(%rbp), %rdx
	movb	%al, 3(%rdx)
# BB#10:                                # %for.inc
                                        #   in Loop: Header=BB5_8 Depth=3
	movl	-212(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -212(%rbp)
	movq	-224(%rbp), %rcx
	addq	$4, %rcx
	movq	%rcx, -224(%rbp)
	movq	-232(%rbp), %rcx
	addq	$4, %rcx
	movq	%rcx, -232(%rbp)
	jmp	.LBB5_8
.LBB5_11:                               # %for.end
                                        #   in Loop: Header=BB5_5 Depth=2
	jmp	.LBB5_17
.LBB5_12:                               # %if.else
                                        #   in Loop: Header=BB5_5 Depth=2
	movl	$0, -212(%rbp)
.LBB5_13:                               # %for.cond.19
                                        #   Parent Loop BB5_3 Depth=1
                                        #     Parent Loop BB5_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-212(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jge	.LBB5_16
# BB#14:                                # %for.body.22
                                        #   in Loop: Header=BB5_13 Depth=3
	movq	-8(%rbp), %rdi
	movq	-224(%rbp), %rsi
	movq	-232(%rbp), %rdx
	movsd	-136(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-144(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-152(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	-160(%rbp), %xmm3       # xmm3 = mem[0],zero
	callq	cm_process_pixel
# BB#15:                                # %for.inc.23
                                        #   in Loop: Header=BB5_13 Depth=3
	movl	-212(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -212(%rbp)
	movq	-224(%rbp), %rcx
	addq	$3, %rcx
	movq	%rcx, -224(%rbp)
	movq	-232(%rbp), %rcx
	addq	$3, %rcx
	movq	%rcx, -232(%rbp)
	jmp	.LBB5_13
.LBB5_16:                               # %for.end.27
                                        #   in Loop: Header=BB5_5 Depth=2
	jmp	.LBB5_17
.LBB5_17:                               # %if.end.28
                                        #   in Loop: Header=BB5_5 Depth=2
	movl	-44(%rbp), %eax
	movq	-200(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -200(%rbp)
	movl	-92(%rbp), %eax
	movq	-208(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -208(%rbp)
# BB#18:                                # %for.inc.33
                                        #   in Loop: Header=BB5_5 Depth=2
	movl	-216(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -216(%rbp)
	jmp	.LBB5_5
.LBB5_19:                               # %for.end.35
                                        #   in Loop: Header=BB5_3 Depth=1
	movl	$16, %eax
	movl	-32(%rbp), %ecx
	imull	-28(%rbp), %ecx
	addl	-172(%rbp), %ecx
	movl	%ecx, -172(%rbp)
	movl	-164(%rbp), %ecx
	movl	%eax, -244(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-244(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB5_21
# BB#20:                                # %if.then.40
                                        #   in Loop: Header=BB5_3 Depth=1
	cvtsi2sdl	-172(%rbp), %xmm0
	cvtsi2sdl	-168(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -248(%rbp)        # 4-byte Spill
.LBB5_21:                               # %if.end.43
                                        #   in Loop: Header=BB5_3 Depth=1
	jmp	.LBB5_22
.LBB5_22:                               # %for.inc.44
                                        #   in Loop: Header=BB5_3 Depth=1
	movq	-120(%rbp), %rdi
	callq	gimp_pixel_rgns_process
	movq	%rax, -120(%rbp)
	movl	-164(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -164(%rbp)
	jmp	.LBB5_3
.LBB5_23:                               # %for.end.47
	movsd	.LCPI5_0, %xmm0         # xmm0 = mem[0],zero
	callq	gimp_progress_update
	movq	-16(%rbp), %rdi
	movl	%eax, -252(%rbp)        # 4-byte Spill
	callq	gimp_drawable_flush
	movl	$1, %esi
	movq	-16(%rbp), %rdi
	movl	(%rdi), %edi
	callq	gimp_drawable_merge_shadow
	movq	-16(%rbp), %rcx
	movl	(%rcx), %edi
	movl	-176(%rbp), %esi
	movl	-180(%rbp), %edx
	movl	-184(%rbp), %ecx
	movl	-188(%rbp), %r8d
	movl	%eax, -256(%rbp)        # 4-byte Spill
	callq	gimp_drawable_update
	movl	%eax, -260(%rbp)        # 4-byte Spill
.LBB5_24:                               # %return
	addq	$288, %rsp              # imm = 0x120
	popq	%rbp
	retq
.Lfunc_end5:
	.size	channel_mixer, .Lfunc_end5-channel_mixer
	.cfi_endproc

	.align	16, 0x90
	.type	cm_preview,@function
cm_preview:                             # @cm_preview
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	cm_calculate_norm
	movsd	%xmm0, -64(%rbp)
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rsi
	addq	$24, %rsi
	callq	cm_calculate_norm
	movsd	%xmm0, -72(%rbp)
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rsi
	addq	$48, %rsi
	callq	cm_calculate_norm
	movsd	%xmm0, -80(%rbp)
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rsi
	addq	$72, %rsi
	callq	cm_calculate_norm
	movsd	%xmm0, -88(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	callq	gimp_zoom_preview_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-92(%rbp), %rsi
	leaq	-96(%rbp), %rdx
	leaq	-100(%rbp), %rcx
	movq	%rax, %rdi
	callq	gimp_zoom_preview_get_source
	movl	$1, %r8d
	movl	%r8d, %esi
	movq	%rax, -32(%rbp)
	movq	%rax, -24(%rbp)
	movl	-92(%rbp), %r8d
	imull	-96(%rbp), %r8d
	imull	-100(%rbp), %r8d
	movslq	%r8d, %rdi
	callq	g_malloc_n
	movq	%rax, -48(%rbp)
	movq	%rax, -40(%rbp)
	movl	$0, -56(%rbp)
.LBB6_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_3 Depth 2
	movl	-56(%rbp), %eax
	cmpl	-96(%rbp), %eax
	jge	.LBB6_10
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	$0, -52(%rbp)
.LBB6_3:                                # %for.cond.10
                                        #   Parent Loop BB6_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-52(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jge	.LBB6_8
# BB#4:                                 # %for.body.13
                                        #   in Loop: Header=BB6_3 Depth=2
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-80(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-88(%rbp), %xmm3        # xmm3 = mem[0],zero
	callq	cm_process_pixel
	cmpl	$4, -100(%rbp)
	jne	.LBB6_6
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB6_3 Depth=2
	movq	-32(%rbp), %rax
	movb	3(%rax), %cl
	movq	-48(%rbp), %rax
	movb	%cl, 3(%rax)
.LBB6_6:                                # %if.end
                                        #   in Loop: Header=BB6_3 Depth=2
	jmp	.LBB6_7
.LBB6_7:                                # %for.inc
                                        #   in Loop: Header=BB6_3 Depth=2
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	movl	-100(%rbp), %eax
	movq	-32(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -32(%rbp)
	movl	-100(%rbp), %eax
	movq	-48(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -48(%rbp)
	jmp	.LBB6_3
.LBB6_8:                                # %for.end
                                        #   in Loop: Header=BB6_1 Depth=1
	jmp	.LBB6_9
.LBB6_9:                                # %for.inc.19
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB6_1
.LBB6_10:                               # %for.end.21
	movq	-16(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_preview_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movl	-100(%rbp), %ecx
	imull	-92(%rbp), %ecx
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gimp_preview_draw_buffer
	movq	-24(%rbp), %rdi
	callq	g_free
	movq	-40(%rbp), %rdi
	callq	g_free
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	cm_preview, .Lfunc_end6-cm_preview
	.cfi_endproc

	.align	16, 0x90
	.type	cm_combo_callback,@function
cm_combo_callback:                      # @cm_combo_callback
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
	subq	$32, %rsp
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
	cmpl	$0, %eax
	je	.LBB7_2
# BB#1:                                 # %if.then
	movl	-20(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 104(%rcx)
	movq	-16(%rbp), %rdi
	callq	cm_set_adjusters
.LBB7_2:                                # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	cm_combo_callback, .Lfunc_end7-cm_combo_callback
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI8_0:
	.quad	4636737291354636288     # double 100
	.text
	.align	16, 0x90
	.type	cm_red_scale_callback,@function
cm_red_scale_callback:                  # @cm_red_scale_callback
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	cmpl	$0, 96(%rsi)
	je	.LBB8_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	gtk_adjustment_get_value
	movsd	.LCPI8_0, %xmm1         # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movq	-16(%rbp), %rdi
	movsd	%xmm0, 72(%rdi)
	jmp	.LBB8_7
.LBB8_2:                                # %if.else
	movq	-16(%rbp), %rax
	movl	104(%rax), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -20(%rbp)         # 4-byte Spill
	je	.LBB8_3
	jmp	.LBB8_8
.LBB8_8:                                # %if.else
	movl	-20(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -24(%rbp)         # 4-byte Spill
	je	.LBB8_4
	jmp	.LBB8_9
.LBB8_9:                                # %if.else
	movl	-20(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -28(%rbp)         # 4-byte Spill
	je	.LBB8_5
	jmp	.LBB8_6
.LBB8_3:                                # %sw.bb
	movq	-8(%rbp), %rdi
	callq	gtk_adjustment_get_value
	movsd	.LCPI8_0, %xmm1         # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movq	-16(%rbp), %rdi
	movsd	%xmm0, (%rdi)
	jmp	.LBB8_6
.LBB8_4:                                # %sw.bb.4
	movq	-8(%rbp), %rdi
	callq	gtk_adjustment_get_value
	movsd	.LCPI8_0, %xmm1         # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movq	-16(%rbp), %rdi
	movsd	%xmm0, 24(%rdi)
	jmp	.LBB8_6
.LBB8_5:                                # %sw.bb.8
	movq	-8(%rbp), %rdi
	callq	gtk_adjustment_get_value
	movsd	.LCPI8_0, %xmm1         # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movq	-16(%rbp), %rdi
	movsd	%xmm0, 48(%rdi)
.LBB8_6:                                # %sw.epilog
	jmp	.LBB8_7
.LBB8_7:                                # %if.end
	movq	preview, %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_preview_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_preview_invalidate
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	cm_red_scale_callback, .Lfunc_end8-cm_red_scale_callback
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI9_0:
	.quad	4636737291354636288     # double 100
	.text
	.align	16, 0x90
	.type	cm_green_scale_callback,@function
cm_green_scale_callback:                # @cm_green_scale_callback
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	cmpl	$0, 96(%rsi)
	je	.LBB9_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	gtk_adjustment_get_value
	movsd	.LCPI9_0, %xmm1         # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movq	-16(%rbp), %rdi
	movsd	%xmm0, 80(%rdi)
	jmp	.LBB9_7
.LBB9_2:                                # %if.else
	movq	-16(%rbp), %rax
	movl	104(%rax), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -20(%rbp)         # 4-byte Spill
	je	.LBB9_3
	jmp	.LBB9_8
.LBB9_8:                                # %if.else
	movl	-20(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -24(%rbp)         # 4-byte Spill
	je	.LBB9_4
	jmp	.LBB9_9
.LBB9_9:                                # %if.else
	movl	-20(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -28(%rbp)         # 4-byte Spill
	je	.LBB9_5
	jmp	.LBB9_6
.LBB9_3:                                # %sw.bb
	movq	-8(%rbp), %rdi
	callq	gtk_adjustment_get_value
	movsd	.LCPI9_0, %xmm1         # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movq	-16(%rbp), %rdi
	movsd	%xmm0, 8(%rdi)
	jmp	.LBB9_6
.LBB9_4:                                # %sw.bb.4
	movq	-8(%rbp), %rdi
	callq	gtk_adjustment_get_value
	movsd	.LCPI9_0, %xmm1         # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movq	-16(%rbp), %rdi
	movsd	%xmm0, 32(%rdi)
	jmp	.LBB9_6
.LBB9_5:                                # %sw.bb.8
	movq	-8(%rbp), %rdi
	callq	gtk_adjustment_get_value
	movsd	.LCPI9_0, %xmm1         # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movq	-16(%rbp), %rdi
	movsd	%xmm0, 56(%rdi)
.LBB9_6:                                # %sw.epilog
	jmp	.LBB9_7
.LBB9_7:                                # %if.end
	movq	preview, %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_preview_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_preview_invalidate
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	cm_green_scale_callback, .Lfunc_end9-cm_green_scale_callback
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI10_0:
	.quad	4636737291354636288     # double 100
	.text
	.align	16, 0x90
	.type	cm_blue_scale_callback,@function
cm_blue_scale_callback:                 # @cm_blue_scale_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp37:
	.cfi_def_cfa_offset 16
.Ltmp38:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp39:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	cmpl	$0, 96(%rsi)
	je	.LBB10_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	gtk_adjustment_get_value
	movsd	.LCPI10_0, %xmm1        # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movq	-16(%rbp), %rdi
	movsd	%xmm0, 88(%rdi)
	jmp	.LBB10_7
.LBB10_2:                               # %if.else
	movq	-16(%rbp), %rax
	movl	104(%rax), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -20(%rbp)         # 4-byte Spill
	je	.LBB10_3
	jmp	.LBB10_8
.LBB10_8:                               # %if.else
	movl	-20(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -24(%rbp)         # 4-byte Spill
	je	.LBB10_4
	jmp	.LBB10_9
.LBB10_9:                               # %if.else
	movl	-20(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -28(%rbp)         # 4-byte Spill
	je	.LBB10_5
	jmp	.LBB10_6
.LBB10_3:                               # %sw.bb
	movq	-8(%rbp), %rdi
	callq	gtk_adjustment_get_value
	movsd	.LCPI10_0, %xmm1        # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movq	-16(%rbp), %rdi
	movsd	%xmm0, 16(%rdi)
	jmp	.LBB10_6
.LBB10_4:                               # %sw.bb.4
	movq	-8(%rbp), %rdi
	callq	gtk_adjustment_get_value
	movsd	.LCPI10_0, %xmm1        # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movq	-16(%rbp), %rdi
	movsd	%xmm0, 40(%rdi)
	jmp	.LBB10_6
.LBB10_5:                               # %sw.bb.8
	movq	-8(%rbp), %rdi
	callq	gtk_adjustment_get_value
	movsd	.LCPI10_0, %xmm1        # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movq	-16(%rbp), %rdi
	movsd	%xmm0, 64(%rdi)
.LBB10_6:                               # %sw.epilog
	jmp	.LBB10_7
.LBB10_7:                               # %if.end
	movq	preview, %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_preview_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_preview_invalidate
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	cm_blue_scale_callback, .Lfunc_end10-cm_blue_scale_callback
	.cfi_endproc

	.align	16, 0x90
	.type	cm_monochrome_callback,@function
cm_monochrome_callback:                 # @cm_monochrome_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp40:
	.cfi_def_cfa_offset 16
.Ltmp41:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp42:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_toggle_button_get_active
	cmpl	$0, %eax
	je	.LBB11_2
# BB#1:                                 # %if.then
	xorl	%esi, %esi
	movq	-16(%rbp), %rax
	movl	104(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 144(%rax)
	movq	-16(%rbp), %rax
	movl	$1, 96(%rax)
	movq	-16(%rbp), %rax
	movq	136(%rax), %rdi
	callq	gtk_widget_set_sensitive
	jmp	.LBB11_3
.LBB11_2:                               # %if.else
	movl	$1, %esi
	movq	-16(%rbp), %rax
	movl	144(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 104(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 96(%rax)
	movq	-16(%rbp), %rax
	movq	136(%rax), %rdi
	callq	gtk_widget_set_sensitive
.LBB11_3:                               # %if.end
	movq	-16(%rbp), %rdi
	callq	cm_set_adjusters
	movq	preview, %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_preview_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_preview_invalidate
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	cm_monochrome_callback, .Lfunc_end11-cm_monochrome_callback
	.cfi_endproc

	.align	16, 0x90
	.type	cm_preserve_luminosity_callback,@function
cm_preserve_luminosity_callback:        # @cm_preserve_luminosity_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp43:
	.cfi_def_cfa_offset 16
.Ltmp44:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp45:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_toggle_button_get_active
	cmpl	$0, %eax
	je	.LBB12_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movl	$1, 100(%rax)
	jmp	.LBB12_3
.LBB12_2:                               # %if.else
	movq	-16(%rbp), %rax
	movl	$0, 100(%rax)
.LBB12_3:                               # %if.end
	movq	preview, %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_preview_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_preview_invalidate
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	cm_preserve_luminosity_callback, .Lfunc_end12-cm_preserve_luminosity_callback
	.cfi_endproc

	.align	16, 0x90
	.type	cm_load_file_callback,@function
cm_load_file_callback:                  # @cm_load_file_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp46:
	.cfi_def_cfa_offset 16
.Ltmp47:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp48:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$152, %rsp
.Ltmp49:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	cmpq	$0, cm_load_file_callback.dialog
	jne	.LBB13_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	callq	gtk_widget_get_toplevel
	movabsq	$.L.str.62, %rdi
	movq	%rax, -32(%rbp)
	callq	gettext
	movq	-32(%rbp), %rdi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movabsq	$.L.str.40, %rcx
	movl	$4294967290, %r8d       # imm = 0xFFFFFFFA
	movabsq	$.L.str.58, %r9
	movl	$4294967291, %r10d      # imm = 0xFFFFFFFB
	xorl	%r11d, %r11d
	movl	%r11d, %esi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movl	$-5, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, %al
	movl	%r10d, -68(%rbp)        # 4-byte Spill
	callq	gtk_file_chooser_dialog_new
	movq	%rax, cm_load_file_callback.dialog
	movq	cm_load_file_callback.dialog, %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	movq	cm_load_file_callback.dialog, %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movq	%rax, %rdi
	callq	gtk_dialog_set_default_response
	movabsq	$.L.str.63, %rsi
	movabsq	$cm_load_file_response_callback, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	cm_load_file_callback.dialog, %rdi
	movq	-24(%rbp), %rbx
	movq	%rax, %rdx
	movq	%rbx, %rcx
	callq	g_signal_connect_data
	movabsq	$.L.str.64, %rsi
	movabsq	$gtk_true, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	xorl	%r9d, %r9d
	movq	cm_load_file_callback.dialog, %rdi
	movq	%rdx, -96(%rbp)         # 8-byte Spill
	movq	%rcx, %rdx
	movq	-96(%rbp), %rcx         # 8-byte Reload
	movq	-96(%rbp), %r8          # 8-byte Reload
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	cm_settings_filename
	movq	%rax, -40(%rbp)
	movq	cm_load_file_callback.dialog, %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_file_chooser_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_file_chooser_set_filename
	movq	-40(%rbp), %rdi
	movl	%eax, -124(%rbp)        # 4-byte Spill
	callq	g_free
.LBB13_2:                               # %if.end
	movq	cm_load_file_callback.dialog, %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_window_present
	addq	$152, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end13:
	.size	cm_load_file_callback, .Lfunc_end13-cm_load_file_callback
	.cfi_endproc

	.align	16, 0x90
	.type	cm_save_file_callback,@function
cm_save_file_callback:                  # @cm_save_file_callback
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
	pushq	%rbx
	subq	$152, %rsp
.Ltmp53:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	cmpq	$0, cm_save_file_callback.dialog
	jne	.LBB14_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	callq	gtk_widget_get_toplevel
	movabsq	$.L.str.74, %rdi
	movq	%rax, -32(%rbp)
	callq	gettext
	movq	-32(%rbp), %rdi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	movabsq	$.L.str.40, %rcx
	movl	$4294967290, %r8d       # imm = 0xFFFFFFFA
	movabsq	$.L.str.60, %r9
	movl	$4294967291, %r10d      # imm = 0xFFFFFFFB
	xorl	%r11d, %r11d
	movl	%r11d, %esi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movl	$-5, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, %al
	movl	%r10d, -68(%rbp)        # 4-byte Spill
	callq	gtk_file_chooser_dialog_new
	movq	%rax, cm_save_file_callback.dialog
	movq	cm_save_file_callback.dialog, %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	movq	cm_save_file_callback.dialog, %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movq	%rax, %rdi
	callq	gtk_dialog_set_default_response
	movq	cm_save_file_callback.dialog, %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_file_chooser_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_file_chooser_set_do_overwrite_confirmation
	movabsq	$.L.str.63, %rsi
	movabsq	$cm_save_file_response_callback, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	cm_save_file_callback.dialog, %rdi
	movq	-24(%rbp), %rbx
	movq	%rax, %rdx
	movq	%rbx, %rcx
	callq	g_signal_connect_data
	movabsq	$.L.str.64, %rsi
	movabsq	$gtk_true, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	xorl	%r9d, %r9d
	movq	cm_save_file_callback.dialog, %rdi
	movq	%rdx, -104(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-104(%rbp), %rcx        # 8-byte Reload
	movq	-104(%rbp), %r8         # 8-byte Reload
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	cm_settings_filename
	movq	%rax, -40(%rbp)
	movq	cm_save_file_callback.dialog, %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_file_chooser_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_file_chooser_set_filename
	movq	-40(%rbp), %rdi
	movl	%eax, -132(%rbp)        # 4-byte Spill
	callq	g_free
.LBB14_2:                               # %if.end
	movq	cm_save_file_callback.dialog, %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_window_present
	addq	$152, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end14:
	.size	cm_save_file_callback, .Lfunc_end14-cm_save_file_callback
	.cfi_endproc

	.align	16, 0x90
	.type	cm_reset_callback,@function
cm_reset_callback:                      # @cm_reset_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp54:
	.cfi_def_cfa_offset 16
.Ltmp55:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp56:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	cm_set_defaults
	movq	-16(%rbp), %rdi
	callq	cm_update_ui
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	cm_reset_callback, .Lfunc_end15-cm_reset_callback
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI16_0:
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI16_1:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	cm_calculate_norm,@function
cm_calculate_norm:                      # @cm_calculate_norm
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp57:
	.cfi_def_cfa_offset 16
.Ltmp58:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp59:
	.cfi_def_cfa_register %rbp
	xorps	%xmm0, %xmm0
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	movsd	(%rsi), %xmm1           # xmm1 = mem[0],zero
	movq	-24(%rbp), %rsi
	addsd	8(%rsi), %xmm1
	movq	-24(%rbp), %rsi
	addsd	16(%rsi), %xmm1
	movsd	%xmm1, -32(%rbp)
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB16_1
	jp	.LBB16_1
	jmp	.LBB16_2
.LBB16_1:                               # %lor.lhs.false
	movq	-16(%rbp), %rax
	cmpl	$0, 100(%rax)
	jne	.LBB16_3
.LBB16_2:                               # %if.then
	movsd	.LCPI16_1, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB16_4
.LBB16_3:                               # %if.end
	movsd	.LCPI16_1, %xmm0        # xmm0 = mem[0],zero
	divsd	-32(%rbp), %xmm0
	movapd	.LCPI16_0(%rip), %xmm1  # xmm1 = [9223372036854775807,9223372036854775807]
	andpd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rbp)
.LBB16_4:                               # %return
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	popq	%rbp
	retq
.Lfunc_end16:
	.size	cm_calculate_norm, .Lfunc_end16-cm_calculate_norm
	.cfi_endproc

	.align	16, 0x90
	.type	cm_process_pixel,@function
cm_process_pixel:                       # @cm_process_pixel
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp60:
	.cfi_def_cfa_offset 16
.Ltmp61:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp62:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movsd	%xmm0, -32(%rbp)
	movsd	%xmm1, -40(%rbp)
	movsd	%xmm2, -48(%rbp)
	movsd	%xmm3, -56(%rbp)
	movq	-8(%rbp), %rdx
	cmpl	$0, 96(%rdx)
	je	.LBB17_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	addq	$72, %rax
	movq	-16(%rbp), %rcx
	movb	(%rcx), %dl
	movq	-16(%rbp), %rcx
	movb	1(%rcx), %sil
	movq	-16(%rbp), %rcx
	movb	2(%rcx), %dil
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movb	%dil, -57(%rbp)         # 1-byte Spill
	movq	%rax, %rdi
	movzbl	%dl, %r8d
	movb	%sil, -58(%rbp)         # 1-byte Spill
	movl	%r8d, %esi
	movb	-58(%rbp), %dl          # 1-byte Reload
	movzbl	%dl, %edx
	movb	-57(%rbp), %r9b         # 1-byte Reload
	movzbl	%r9b, %ecx
	callq	cm_mix_pixel
	movq	-24(%rbp), %rdi
	movb	%al, 2(%rdi)
	movq	-24(%rbp), %rdi
	movb	%al, 1(%rdi)
	movq	-24(%rbp), %rdi
	movb	%al, (%rdi)
	jmp	.LBB17_3
.LBB17_2:                               # %if.else
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movb	(%rax), %cl
	movq	-16(%rbp), %rax
	movb	1(%rax), %dl
	movq	-16(%rbp), %rax
	movb	2(%rax), %sil
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movzbl	%cl, %r8d
	movb	%sil, -59(%rbp)         # 1-byte Spill
	movl	%r8d, %esi
	movzbl	%dl, %edx
	movb	-59(%rbp), %cl          # 1-byte Reload
	movzbl	%cl, %ecx
	callq	cm_mix_pixel
	movq	-24(%rbp), %rdi
	movb	%al, (%rdi)
	movq	-8(%rbp), %rdi
	addq	$24, %rdi
	movq	-16(%rbp), %r9
	movb	(%r9), %al
	movq	-16(%rbp), %r9
	movb	1(%r9), %r10b
	movq	-16(%rbp), %r9
	movb	2(%r9), %r11b
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movzbl	%al, %esi
	movzbl	%r10b, %edx
	movzbl	%r11b, %ecx
	callq	cm_mix_pixel
	movq	-24(%rbp), %rdi
	movb	%al, 1(%rdi)
	movq	-8(%rbp), %rdi
	addq	$48, %rdi
	movq	-16(%rbp), %r9
	movb	(%r9), %al
	movq	-16(%rbp), %r9
	movb	1(%r9), %r10b
	movq	-16(%rbp), %r9
	movb	2(%r9), %r11b
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movzbl	%al, %esi
	movzbl	%r10b, %edx
	movzbl	%r11b, %ecx
	callq	cm_mix_pixel
	movq	-24(%rbp), %rdi
	movb	%al, 2(%rdi)
.LBB17_3:                               # %if.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	cm_process_pixel, .Lfunc_end17-cm_process_pixel
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI18_0:
	.quad	4643176031446892544     # double 255
	.text
	.align	16, 0x90
	.type	cm_mix_pixel,@function
cm_mix_pixel:                           # @cm_mix_pixel
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp63:
	.cfi_def_cfa_offset 16
.Ltmp64:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp65:
	.cfi_def_cfa_register %rbp
	movb	%cl, %al
	movb	%dl, %r8b
	movb	%sil, %r9b
	movsd	.LCPI18_0, %xmm1        # xmm1 = mem[0],zero
	movq	%rdi, -8(%rbp)
	movb	%r9b, -9(%rbp)
	movb	%r8b, -10(%rbp)
	movb	%al, -11(%rbp)
	movsd	%xmm0, -24(%rbp)
	movq	-8(%rbp), %rdi
	movsd	(%rdi), %xmm0           # xmm0 = mem[0],zero
	movzbl	-9(%rbp), %ecx
	cvtsi2sdl	%ecx, %xmm2
	mulsd	%xmm2, %xmm0
	movq	-8(%rbp), %rdi
	movsd	8(%rdi), %xmm2          # xmm2 = mem[0],zero
	movzbl	-10(%rbp), %ecx
	cvtsi2sdl	%ecx, %xmm3
	mulsd	%xmm3, %xmm2
	addsd	%xmm2, %xmm0
	movq	-8(%rbp), %rdi
	movsd	16(%rdi), %xmm2         # xmm2 = mem[0],zero
	movzbl	-11(%rbp), %ecx
	cvtsi2sdl	%ecx, %xmm3
	mulsd	%xmm3, %xmm2
	addsd	%xmm2, %xmm0
	movsd	%xmm0, -32(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-32(%rbp), %xmm0
	movsd	%xmm0, -32(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB18_2
# BB#1:                                 # %cond.true
	movsd	.LCPI18_0, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -40(%rbp)        # 8-byte Spill
	jmp	.LBB18_6
.LBB18_2:                               # %cond.false
	xorps	%xmm0, %xmm0
	ucomisd	-32(%rbp), %xmm0
	jbe	.LBB18_4
# BB#3:                                 # %cond.true.13
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
	jmp	.LBB18_5
.LBB18_4:                               # %cond.false.14
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
.LBB18_5:                               # %cond.end
	movsd	-48(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -40(%rbp)        # 8-byte Spill
.LBB18_6:                               # %cond.end.15
	movsd	-40(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	popq	%rbp
	retq
.Lfunc_end18:
	.size	cm_mix_pixel, .Lfunc_end18-cm_mix_pixel
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI19_0:
	.quad	4636737291354636288     # double 100
	.text
	.align	16, 0x90
	.type	cm_set_adjusters,@function
cm_set_adjusters:                       # @cm_set_adjusters
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpl	$0, 96(%rdi)
	je	.LBB19_2
# BB#1:                                 # %if.then
	movsd	.LCPI19_0, %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movq	112(%rax), %rdi
	movq	-8(%rbp), %rax
	mulsd	72(%rax), %xmm0
	callq	gtk_adjustment_set_value
	movsd	.LCPI19_0, %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movq	120(%rax), %rdi
	movq	-8(%rbp), %rax
	mulsd	80(%rax), %xmm0
	callq	gtk_adjustment_set_value
	movsd	.LCPI19_0, %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movq	128(%rax), %rdi
	movq	-8(%rbp), %rax
	mulsd	88(%rax), %xmm0
	callq	gtk_adjustment_set_value
	jmp	.LBB19_6
.LBB19_2:                               # %if.end
	movq	-8(%rbp), %rax
	movl	104(%rax), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -12(%rbp)         # 4-byte Spill
	je	.LBB19_3
	jmp	.LBB19_7
.LBB19_7:                               # %if.end
	movl	-12(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -16(%rbp)         # 4-byte Spill
	je	.LBB19_4
	jmp	.LBB19_8
.LBB19_8:                               # %if.end
	movl	-12(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -20(%rbp)         # 4-byte Spill
	je	.LBB19_5
	jmp	.LBB19_6
.LBB19_3:                               # %sw.bb
	movsd	.LCPI19_0, %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movq	112(%rax), %rdi
	movq	-8(%rbp), %rax
	mulsd	(%rax), %xmm0
	callq	gtk_adjustment_set_value
	movsd	.LCPI19_0, %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movq	120(%rax), %rdi
	movq	-8(%rbp), %rax
	mulsd	8(%rax), %xmm0
	callq	gtk_adjustment_set_value
	movsd	.LCPI19_0, %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movq	128(%rax), %rdi
	movq	-8(%rbp), %rax
	mulsd	16(%rax), %xmm0
	callq	gtk_adjustment_set_value
	jmp	.LBB19_6
.LBB19_4:                               # %sw.bb.16
	movsd	.LCPI19_0, %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movq	112(%rax), %rdi
	movq	-8(%rbp), %rax
	mulsd	24(%rax), %xmm0
	callq	gtk_adjustment_set_value
	movsd	.LCPI19_0, %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movq	120(%rax), %rdi
	movq	-8(%rbp), %rax
	mulsd	32(%rax), %xmm0
	callq	gtk_adjustment_set_value
	movsd	.LCPI19_0, %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movq	128(%rax), %rdi
	movq	-8(%rbp), %rax
	mulsd	40(%rax), %xmm0
	callq	gtk_adjustment_set_value
	jmp	.LBB19_6
.LBB19_5:                               # %sw.bb.28
	movsd	.LCPI19_0, %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movq	112(%rax), %rdi
	movq	-8(%rbp), %rax
	mulsd	48(%rax), %xmm0
	callq	gtk_adjustment_set_value
	movsd	.LCPI19_0, %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movq	120(%rax), %rdi
	movq	-8(%rbp), %rax
	mulsd	56(%rax), %xmm0
	callq	gtk_adjustment_set_value
	movsd	.LCPI19_0, %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movq	128(%rax), %rdi
	movq	-8(%rbp), %rax
	mulsd	64(%rax), %xmm0
	callq	gtk_adjustment_set_value
.LBB19_6:                               # %sw.epilog
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	cm_set_adjusters, .Lfunc_end19-cm_set_adjusters
	.cfi_endproc

	.align	16, 0x90
	.type	cm_load_file_response_callback,@function
cm_load_file_response_callback:         # @cm_load_file_response_callback
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
	subq	$3232, %rsp             # imm = 0xCA0
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	cmpl	$-5, -12(%rbp)
	jne	.LBB20_19
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	%rax, -3128(%rbp)       # 8-byte Spill
	callq	gtk_file_chooser_get_type
	movq	-3128(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_file_chooser_get_filename
	movabsq	$.L.str.65, %rsi
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	fopen
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB20_17
# BB#2:                                 # %if.then.4
	movl	$1023, %esi             # imm = 0x3FF
	leaq	-3120(%rbp), %rdi
	movb	$0, -3120(%rbp)
	movb	$0, -2096(%rbp)
	movb	$0, -1072(%rbp)
	movq	-32(%rbp), %rdx
	callq	fgets
	movabsq	$.L.str.66, %rsi
	leaq	-3120(%rbp), %rdx
	movq	-32(%rbp), %rdi
	movq	%rax, -3136(%rbp)       # 8-byte Spill
	movb	$0, %al
	callq	__isoc99_fscanf
	leaq	-3120(%rbp), %rdi
	movl	$.L.str.67, %ecx
	movl	%ecx, %esi
	movl	%eax, -3140(%rbp)       # 4-byte Spill
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB20_4
# BB#3:                                 # %if.then.19
	movq	-24(%rbp), %rax
	movl	$0, 104(%rax)
	jmp	.LBB20_10
.LBB20_4:                               # %if.else
	leaq	-3120(%rbp), %rdi
	movl	$.L.str.68, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB20_6
# BB#5:                                 # %if.then.24
	movq	-24(%rbp), %rax
	movl	$1, 104(%rax)
	jmp	.LBB20_9
.LBB20_6:                               # %if.else.26
	leaq	-3120(%rbp), %rdi
	movl	$.L.str.69, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB20_8
# BB#7:                                 # %if.then.31
	movq	-24(%rbp), %rax
	movl	$2, 104(%rax)
.LBB20_8:                               # %if.end
	jmp	.LBB20_9
.LBB20_9:                               # %if.end.33
	jmp	.LBB20_10
.LBB20_10:                              # %if.end.34
	movabsq	$.L.str.66, %rsi
	leaq	-3120(%rbp), %rdx
	movq	-32(%rbp), %rdi
	movb	$0, %al
	callq	__isoc99_fscanf
	movabsq	$.L.str.66, %rsi
	leaq	-3120(%rbp), %rdx
	movq	-32(%rbp), %rdi
	movl	%eax, -3144(%rbp)       # 4-byte Spill
	movb	$0, %al
	callq	__isoc99_fscanf
	leaq	-3120(%rbp), %rdi
	movl	$.L.str.70, %ecx
	movl	%ecx, %esi
	movl	%eax, -3148(%rbp)       # 4-byte Spill
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB20_12
# BB#11:                                # %if.then.45
	movq	-24(%rbp), %rax
	movl	$1, 96(%rax)
	jmp	.LBB20_13
.LBB20_12:                              # %if.else.46
	movq	-24(%rbp), %rax
	movl	$0, 96(%rax)
.LBB20_13:                              # %if.end.48
	movabsq	$.L.str.66, %rsi
	leaq	-3120(%rbp), %rdx
	movq	-32(%rbp), %rdi
	movb	$0, %al
	callq	__isoc99_fscanf
	leaq	-3120(%rbp), %rdi
	movl	$.L.str.70, %ecx
	movl	%ecx, %esi
	movl	%eax, -3152(%rbp)       # 4-byte Spill
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB20_15
# BB#14:                                # %if.then.56
	movq	-24(%rbp), %rax
	movl	$1, 100(%rax)
	jmp	.LBB20_16
.LBB20_15:                              # %if.else.57
	movq	-24(%rbp), %rax
	movl	$0, 100(%rax)
.LBB20_16:                              # %if.end.59
	movabsq	$.L.str.71, %rsi
	leaq	-3120(%rbp), %rax
	movq	-32(%rbp), %rdi
	movq	%rax, %rcx
	addq	$1024, %rcx             # imm = 0x400
	movq	%rax, %rdx
	addq	$2048, %rdx             # imm = 0x800
	movq	%rdx, -3160(%rbp)       # 8-byte Spill
	movq	%rax, %rdx
	movq	-3160(%rbp), %r8        # 8-byte Reload
	movb	$0, %al
	callq	__isoc99_fscanf
	xorl	%r9d, %r9d
	movl	%r9d, %esi
	leaq	-3120(%rbp), %rdi
	movl	%eax, -3164(%rbp)       # 4-byte Spill
	callq	g_ascii_strtod
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-3120(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movsd	%xmm0, (%rdx)
	addq	$1024, %rcx             # imm = 0x400
	movq	%rcx, %rdi
	callq	g_ascii_strtod
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-3120(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movsd	%xmm0, 8(%rdx)
	addq	$2048, %rcx             # imm = 0x800
	movq	%rcx, %rdi
	callq	g_ascii_strtod
	movabsq	$.L.str.71, %rsi
	leaq	-3120(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movsd	%xmm0, 16(%rdx)
	movq	-32(%rbp), %rdi
	movq	%rcx, %rdx
	addq	$1024, %rdx             # imm = 0x400
	movq	%rcx, %r8
	addq	$2048, %r8              # imm = 0x800
	movq	%rdx, -3176(%rbp)       # 8-byte Spill
	movq	%rcx, %rdx
	movq	-3176(%rbp), %rcx       # 8-byte Reload
	movb	$0, %al
	callq	__isoc99_fscanf
	xorl	%r9d, %r9d
	movl	%r9d, %esi
	leaq	-3120(%rbp), %rdi
	movl	%eax, -3180(%rbp)       # 4-byte Spill
	callq	g_ascii_strtod
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-3120(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movsd	%xmm0, 24(%rdx)
	addq	$1024, %rcx             # imm = 0x400
	movq	%rcx, %rdi
	callq	g_ascii_strtod
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-3120(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movsd	%xmm0, 32(%rdx)
	addq	$2048, %rcx             # imm = 0x800
	movq	%rcx, %rdi
	callq	g_ascii_strtod
	movabsq	$.L.str.71, %rsi
	leaq	-3120(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movsd	%xmm0, 40(%rdx)
	movq	-32(%rbp), %rdi
	movq	%rcx, %rdx
	addq	$1024, %rdx             # imm = 0x400
	movq	%rcx, %r8
	addq	$2048, %r8              # imm = 0x800
	movq	%rdx, -3192(%rbp)       # 8-byte Spill
	movq	%rcx, %rdx
	movq	-3192(%rbp), %rcx       # 8-byte Reload
	movb	$0, %al
	callq	__isoc99_fscanf
	xorl	%r9d, %r9d
	movl	%r9d, %esi
	leaq	-3120(%rbp), %rdi
	movl	%eax, -3196(%rbp)       # 4-byte Spill
	callq	g_ascii_strtod
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-3120(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movsd	%xmm0, 48(%rdx)
	addq	$1024, %rcx             # imm = 0x400
	movq	%rcx, %rdi
	callq	g_ascii_strtod
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-3120(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movsd	%xmm0, 56(%rdx)
	addq	$2048, %rcx             # imm = 0x800
	movq	%rcx, %rdi
	callq	g_ascii_strtod
	movabsq	$.L.str.71, %rsi
	leaq	-3120(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movsd	%xmm0, 64(%rdx)
	movq	-32(%rbp), %rdi
	movq	%rcx, %rdx
	addq	$1024, %rdx             # imm = 0x400
	movq	%rcx, %r8
	addq	$2048, %r8              # imm = 0x800
	movq	%rdx, -3208(%rbp)       # 8-byte Spill
	movq	%rcx, %rdx
	movq	-3208(%rbp), %rcx       # 8-byte Reload
	movb	$0, %al
	callq	__isoc99_fscanf
	xorl	%r9d, %r9d
	movl	%r9d, %esi
	leaq	-3120(%rbp), %rdi
	movl	%eax, -3212(%rbp)       # 4-byte Spill
	callq	g_ascii_strtod
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-3120(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movsd	%xmm0, 72(%rdx)
	addq	$1024, %rcx             # imm = 0x400
	movq	%rcx, %rdi
	callq	g_ascii_strtod
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-3120(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movsd	%xmm0, 80(%rdx)
	addq	$2048, %rcx             # imm = 0x800
	movq	%rcx, %rdi
	callq	g_ascii_strtod
	movq	-24(%rbp), %rcx
	movsd	%xmm0, 88(%rcx)
	movq	-32(%rbp), %rdi
	callq	fclose
	movq	-24(%rbp), %rdi
	movl	%eax, -3216(%rbp)       # 4-byte Spill
	callq	cm_update_ui
	jmp	.LBB20_18
.LBB20_17:                              # %if.else.142
	movabsq	$.L.str.72, %rdi
	callq	gettext
	movq	-40(%rbp), %rdi
	movq	%rax, -3224(%rbp)       # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	%rax, -3232(%rbp)       # 8-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_strerror
	movq	-3224(%rbp), %rdi       # 8-byte Reload
	movq	-3232(%rbp), %rsi       # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_message
.LBB20_18:                              # %if.end.147
	movq	-40(%rbp), %rdi
	callq	g_free
.LBB20_19:                              # %if.end.148
	movq	-8(%rbp), %rdi
	callq	gtk_widget_hide
	addq	$3232, %rsp             # imm = 0xCA0
	popq	%rbp
	retq
.Lfunc_end20:
	.size	cm_load_file_response_callback, .Lfunc_end20-cm_load_file_response_callback
	.cfi_endproc

	.align	16, 0x90
	.type	cm_settings_filename,@function
cm_settings_filename:                   # @cm_settings_filename
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp72:
	.cfi_def_cfa_offset 16
.Ltmp73:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp74:
	.cfi_def_cfa_register %rbp
	callq	gimp_directory
	movabsq	$.L.str.37, %rsi
	movabsq	$.L.str.73, %rdx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_build_filename
	popq	%rbp
	retq
.Lfunc_end21:
	.size	cm_settings_filename, .Lfunc_end21-cm_settings_filename
	.cfi_endproc

	.align	16, 0x90
	.type	cm_update_ui,@function
cm_update_ui:                           # @cm_update_ui
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp75:
	.cfi_def_cfa_offset 16
.Ltmp76:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp77:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	152(%rdi), %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	movl	96(%rsi), %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-8(%rbp), %rax
	movq	160(%rax), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	movl	100(%rsi), %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-8(%rbp), %rax
	movq	136(%rax), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	movl	104(%rsi), %esi
	movq	%rax, %rdi
	callq	gimp_int_combo_box_set_active
	movq	-8(%rbp), %rdi
	movl	%eax, -36(%rbp)         # 4-byte Spill
	callq	cm_set_adjusters
	movq	preview, %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	callq	gimp_preview_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_preview_invalidate
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	cm_update_ui, .Lfunc_end22-cm_update_ui
	.cfi_endproc

	.align	16, 0x90
	.type	g_message,@function
g_message:                              # @g_message
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp78:
	.cfi_def_cfa_offset 16
.Ltmp79:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp80:
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
	je	.LBB23_2
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
.LBB23_2:                               # %entry
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
.Lfunc_end23:
	.size	g_message, .Lfunc_end23-g_message
	.cfi_endproc

	.align	16, 0x90
	.type	cm_save_file_response_callback,@function
cm_save_file_response_callback:         # @cm_save_file_response_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp81:
	.cfi_def_cfa_offset 16
.Ltmp82:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp83:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	$0, -40(%rbp)
	cmpl	$-5, -12(%rbp)
	je	.LBB24_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	gtk_widget_hide
	jmp	.LBB24_7
.LBB24_2:                               # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_file_chooser_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_file_chooser_get_filename
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB24_4
# BB#3:                                 # %if.then.3
	jmp	.LBB24_7
.LBB24_4:                               # %if.end.4
	movabsq	$.L.str.75, %rsi
	movq	-32(%rbp), %rdi
	callq	fopen
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB24_6
# BB#5:                                 # %if.then.7
	movabsq	$.L.str.76, %rdi
	callq	gettext
	movq	-32(%rbp), %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_strerror
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_message
	movq	-32(%rbp), %rdi
	callq	g_free
	jmp	.LBB24_7
.LBB24_6:                               # %if.end.12
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	cm_save_file
	movabsq	$.L.str.77, %rdi
	callq	gettext
	movq	-32(%rbp), %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_message
	movq	-8(%rbp), %rdi
	callq	gtk_widget_hide
.LBB24_7:                               # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	cm_save_file_response_callback, .Lfunc_end24-cm_save_file_response_callback
	.cfi_endproc

	.align	16, 0x90
	.type	cm_save_file,@function
cm_save_file:                           # @cm_save_file
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp84:
	.cfi_def_cfa_offset 16
.Ltmp85:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp86:
	.cfi_def_cfa_register %rbp
	subq	$336, %rsp              # imm = 0x150
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	-8(%rbp), %rsi
	movl	104(%rsi), %eax
	testl	%eax, %eax
	movl	%eax, -148(%rbp)        # 4-byte Spill
	je	.LBB25_1
	jmp	.LBB25_7
.LBB25_7:                               # %entry
	movl	-148(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -152(%rbp)        # 4-byte Spill
	je	.LBB25_2
	jmp	.LBB25_8
.LBB25_8:                               # %entry
	movl	-148(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -156(%rbp)        # 4-byte Spill
	je	.LBB25_3
	jmp	.LBB25_4
.LBB25_1:                               # %sw.bb
	movabsq	$.L.str.67, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB25_6
.LBB25_2:                               # %sw.bb.1
	movabsq	$.L.str.68, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB25_6
.LBB25_3:                               # %sw.bb.2
	movabsq	$.L.str.69, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB25_6
.LBB25_4:                               # %sw.default
	jmp	.LBB25_5
.LBB25_5:                               # %do.body
	xorl	%eax, %eax
	movl	%eax, %ecx
	movabsq	$.L.str.38, %rsi
	movl	$1091, %edx             # imm = 0x443
	movabsq	$.L__func__.cm_save_file, %rdi
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	-168(%rbp), %r8         # 8-byte Reload
	movq	%rcx, -176(%rbp)        # 8-byte Spill
	movq	%r8, %rcx
	movq	-176(%rbp), %r8         # 8-byte Reload
	callq	g_assertion_message_expr
.LBB25_6:                               # %sw.epilog
	movabsq	$.L.str.78, %rsi
	movq	-16(%rbp), %rdi
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.79, %rsi
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movl	%eax, -180(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.80, %rsi
	movabsq	$.L.str.70, %rdx
	movq	-16(%rbp), %rdi
	movl	%eax, -184(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.81, %rsi
	movabsq	$.L.str.82, %rdx
	movabsq	$.L.str.70, %rdi
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %r8
	cmpl	$0, 96(%r8)
	cmovneq	%rdi, %rdx
	movq	%rcx, %rdi
	movl	%eax, -188(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.83, %rsi
	movabsq	$.L.str.82, %rcx
	movabsq	$.L.str.70, %rdx
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %r8
	cmpl	$0, 100(%r8)
	cmovneq	%rdx, %rcx
	movq	%rcx, %rdx
	movl	%eax, -192(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movl	$39, %esi
	movabsq	$.L.str.85, %rdx
	leaq	-144(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %r8
	movsd	(%r8), %xmm0            # xmm0 = mem[0],zero
	movl	%eax, -196(%rbp)        # 4-byte Spill
	movq	%rcx, -208(%rbp)        # 8-byte Spill
	callq	g_ascii_formatd
	movl	$39, %esi
	movabsq	$.L.str.85, %rdx
	leaq	-144(%rbp), %rcx
	addq	$39, %rcx
	movq	-8(%rbp), %rdi
	movsd	8(%rdi), %xmm0          # xmm0 = mem[0],zero
	movq	%rcx, %rdi
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	g_ascii_formatd
	movl	$39, %esi
	movabsq	$.L.str.85, %rdx
	leaq	-144(%rbp), %rcx
	addq	$78, %rcx
	movq	-8(%rbp), %rdi
	movsd	16(%rdi), %xmm0         # xmm0 = mem[0],zero
	movq	%rcx, %rdi
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	g_ascii_formatd
	movabsq	$.L.str.84, %rsi
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	-216(%rbp), %rdx        # 8-byte Reload
	movq	-224(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	fprintf
	movl	$39, %esi
	movabsq	$.L.str.85, %rdx
	leaq	-144(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %r8
	movsd	24(%r8), %xmm0          # xmm0 = mem[0],zero
	movl	%eax, -228(%rbp)        # 4-byte Spill
	movq	%rcx, -240(%rbp)        # 8-byte Spill
	callq	g_ascii_formatd
	movl	$39, %esi
	movabsq	$.L.str.85, %rdx
	leaq	-144(%rbp), %rcx
	addq	$39, %rcx
	movq	-8(%rbp), %rdi
	movsd	32(%rdi), %xmm0         # xmm0 = mem[0],zero
	movq	%rcx, %rdi
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	g_ascii_formatd
	movl	$39, %esi
	movabsq	$.L.str.85, %rdx
	leaq	-144(%rbp), %rcx
	addq	$78, %rcx
	movq	-8(%rbp), %rdi
	movsd	40(%rdi), %xmm0         # xmm0 = mem[0],zero
	movq	%rcx, %rdi
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	g_ascii_formatd
	movabsq	$.L.str.86, %rsi
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	-248(%rbp), %rdx        # 8-byte Reload
	movq	-256(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	fprintf
	movl	$39, %esi
	movabsq	$.L.str.85, %rdx
	leaq	-144(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %r8
	movsd	48(%r8), %xmm0          # xmm0 = mem[0],zero
	movl	%eax, -260(%rbp)        # 4-byte Spill
	movq	%rcx, -272(%rbp)        # 8-byte Spill
	callq	g_ascii_formatd
	movl	$39, %esi
	movabsq	$.L.str.85, %rdx
	leaq	-144(%rbp), %rcx
	addq	$39, %rcx
	movq	-8(%rbp), %rdi
	movsd	56(%rdi), %xmm0         # xmm0 = mem[0],zero
	movq	%rcx, %rdi
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	g_ascii_formatd
	movl	$39, %esi
	movabsq	$.L.str.85, %rdx
	leaq	-144(%rbp), %rcx
	addq	$78, %rcx
	movq	-8(%rbp), %rdi
	movsd	64(%rdi), %xmm0         # xmm0 = mem[0],zero
	movq	%rcx, %rdi
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	g_ascii_formatd
	movabsq	$.L.str.87, %rsi
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	-280(%rbp), %rdx        # 8-byte Reload
	movq	-288(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	fprintf
	movl	$39, %esi
	movabsq	$.L.str.85, %rdx
	leaq	-144(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %r8
	movsd	72(%r8), %xmm0          # xmm0 = mem[0],zero
	movl	%eax, -292(%rbp)        # 4-byte Spill
	movq	%rcx, -304(%rbp)        # 8-byte Spill
	callq	g_ascii_formatd
	movl	$39, %esi
	movabsq	$.L.str.85, %rdx
	leaq	-144(%rbp), %rcx
	addq	$39, %rcx
	movq	-8(%rbp), %rdi
	movsd	80(%rdi), %xmm0         # xmm0 = mem[0],zero
	movq	%rcx, %rdi
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	g_ascii_formatd
	movl	$39, %esi
	movabsq	$.L.str.85, %rdx
	leaq	-144(%rbp), %rcx
	addq	$78, %rcx
	movq	-8(%rbp), %rdi
	movsd	88(%rdi), %xmm0         # xmm0 = mem[0],zero
	movq	%rcx, %rdi
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	g_ascii_formatd
	movabsq	$.L.str.88, %rsi
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	-312(%rbp), %rdx        # 8-byte Reload
	movq	-320(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	fprintf
	movq	-16(%rbp), %rdi
	movl	%eax, -324(%rbp)        # 4-byte Spill
	callq	fclose
	movl	%eax, -328(%rbp)        # 4-byte Spill
	addq	$336, %rsp              # imm = 0x150
	popq	%rbp
	retq
.Lfunc_end25:
	.size	cm_save_file, .Lfunc_end25-cm_save_file
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
	.long	3                       # 0x3
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
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.18
	.quad	.L.str.19
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.20
	.quad	.L.str.21
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.22
	.quad	.L.str.23
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.24
	.quad	.L.str.25
	.size	query.args, 312

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
	.asciz	"monochrome"
	.size	.L.str.6, 11

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Monochrome { TRUE, FALSE }"
	.size	.L.str.7, 27

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"rr-gain"
	.size	.L.str.8, 8

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Set the red gain for the red channel"
	.size	.L.str.9, 37

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"rg-gain"
	.size	.L.str.10, 8

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Set the green gain for the red channel"
	.size	.L.str.11, 39

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"rb-gain"
	.size	.L.str.12, 8

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Set the blue gain for the red channel"
	.size	.L.str.13, 38

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"gr-gain"
	.size	.L.str.14, 8

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Set the red gain for the green channel"
	.size	.L.str.15, 39

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"gg-gain"
	.size	.L.str.16, 8

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Set the green gain for the green channel"
	.size	.L.str.17, 41

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"gb-gain"
	.size	.L.str.18, 8

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Set the blue gain for the green channel"
	.size	.L.str.19, 40

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"br-gain"
	.size	.L.str.20, 8

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Set the red gain for the blue channel"
	.size	.L.str.21, 38

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"bg-gain"
	.size	.L.str.22, 8

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Set the green gain for the blue channel"
	.size	.L.str.23, 40

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"bb-gain"
	.size	.L.str.24, 8

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Set the blue gain for the blue channel"
	.size	.L.str.25, 39

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"plug-in-colors-channel-mixer"
	.size	.L.str.26, 29

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"Alter colors by mixing RGB Channels"
	.size	.L.str.27, 36

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"This plug-in mixes the RGB channels."
	.size	.L.str.28, 37

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"Martin Guldahl <mguldahl@xmission.com>"
	.size	.L.str.29, 39

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"2002"
	.size	.L.str.30, 5

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"Channel Mi_xer..."
	.size	.L.str.31, 18

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"RGB*"
	.size	.L.str.32, 5

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"<Image>/Colors/Components"
	.size	.L.str.33, 26

	.type	run.values,@object      # @run.values
	.local	run.values
	.comm	run.values,40,16
	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"gimp20-std-plug-ins"
	.size	.L.str.34, 20

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"UTF-8"
	.size	.L.str.35, 6

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"Channel Mixer"
	.size	.L.str.36, 14

	.type	cm_set_defaults.defaults,@object # @cm_set_defaults.defaults
	.section	.rodata,"a",@progbits
	.align	8
cm_set_defaults.defaults:
	.quad	4607182418800017408     # double 1
	.quad	0                       # double 0
	.quad	0                       # double 0
	.quad	0                       # double 0
	.quad	4607182418800017408     # double 1
	.quad	0                       # double 0
	.quad	0                       # double 0
	.quad	0                       # double 0
	.quad	4607182418800017408     # double 1
	.quad	4607182418800017408     # double 1
	.quad	0                       # double 0
	.quad	0                       # double 0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.quad	0
	.size	cm_set_defaults.defaults, 168

	.type	.L.str.37,@object       # @.str.37
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.37:
	.asciz	"channel-mixer"
	.size	.L.str.37, 14

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"channel-mixer.c"
	.size	.L.str.38, 16

	.type	.L__func__.cm_dialog,@object # @__func__.cm_dialog
.L__func__.cm_dialog:
	.asciz	"cm_dialog"
	.size	.L__func__.cm_dialog, 10

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"gimp-channel-mixer"
	.size	.L.str.39, 19

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"gtk-cancel"
	.size	.L.str.40, 11

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"gtk-ok"
	.size	.L.str.41, 7

	.type	preview,@object         # @preview
	.local	preview
	.comm	preview,8,8
	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"invalidated"
	.size	.L.str.42, 12

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"O_utput channel:"
	.size	.L.str.43, 17

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"Red"
	.size	.L.str.44, 4

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"gimp-channel-red"
	.size	.L.str.45, 17

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"Green"
	.size	.L.str.46, 6

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"gimp-channel-green"
	.size	.L.str.47, 19

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"Blue"
	.size	.L.str.48, 5

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"gimp-channel-blue"
	.size	.L.str.49, 18

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"changed"
	.size	.L.str.50, 8

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"_Red:"
	.size	.L.str.51, 6

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"value-changed"
	.size	.L.str.52, 14

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"_Green:"
	.size	.L.str.53, 8

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"_Blue:"
	.size	.L.str.54, 7

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"_Monochrome"
	.size	.L.str.55, 12

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"toggled"
	.size	.L.str.56, 8

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"Preserve _luminosity"
	.size	.L.str.57, 21

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"gtk-open"
	.size	.L.str.58, 9

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"clicked"
	.size	.L.str.59, 8

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"gtk-save"
	.size	.L.str.60, 9

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"gimp-reset"
	.size	.L.str.61, 11

	.type	cm_load_file_callback.dialog,@object # @cm_load_file_callback.dialog
	.local	cm_load_file_callback.dialog
	.comm	cm_load_file_callback.dialog,8,8
	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"Load Channel Mixer Settings"
	.size	.L.str.62, 28

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"response"
	.size	.L.str.63, 9

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"delete-event"
	.size	.L.str.64, 13

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"rb"
	.size	.L.str.65, 3

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"%*s %1023s"
	.size	.L.str.66, 11

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"RED"
	.size	.L.str.67, 4

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"GREEN"
	.size	.L.str.68, 6

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"BLUE"
	.size	.L.str.69, 5

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"TRUE"
	.size	.L.str.70, 5

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"%*s %1023s %1023s %1023s"
	.size	.L.str.71, 25

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"Could not open '%s' for reading: %s"
	.size	.L.str.72, 36

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"settings"
	.size	.L.str.73, 9

	.type	cm_save_file_callback.dialog,@object # @cm_save_file_callback.dialog
	.local	cm_save_file_callback.dialog
	.comm	cm_save_file_callback.dialog,8,8
	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"Save Channel Mixer Settings"
	.size	.L.str.74, 28

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"wb"
	.size	.L.str.75, 3

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"Could not open '%s' for writing: %s"
	.size	.L.str.76, 36

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"Parameters were saved to '%s'"
	.size	.L.str.77, 30

	.type	.L__func__.cm_save_file,@object # @__func__.cm_save_file
.L__func__.cm_save_file:
	.asciz	"cm_save_file"
	.size	.L__func__.cm_save_file, 13

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"# Channel Mixer Configuration File\n"
	.size	.L.str.78, 36

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"CHANNEL: %s\n"
	.size	.L.str.79, 13

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"PREVIEW: %s\n"
	.size	.L.str.80, 13

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"MONOCHROME: %s\n"
	.size	.L.str.81, 16

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"FALSE"
	.size	.L.str.82, 6

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"PRESERVE_LUMINOSITY: %s\n"
	.size	.L.str.83, 25

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"RED: %s %s %s\n"
	.size	.L.str.84, 15

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"%5.3f"
	.size	.L.str.85, 6

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"GREEN: %s %s %s\n"
	.size	.L.str.86, 17

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"BLUE: %s %s %s\n"
	.size	.L.str.87, 16

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"BLACK: %s %s %s\n"
	.size	.L.str.88, 17


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
