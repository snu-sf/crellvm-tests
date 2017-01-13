	.text
	.file	"noise-hsv.bc"
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
	subq	$120, %rsp
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
	movabsq	$.L.str.14, %rdi
	movabsq	$.L.str.15, %rsi
	movabsq	$.L.str.16, %rdx
	movabsq	$.L.str.17, %rcx
	movabsq	$.L.str.18, %r8
	movabsq	$.L.str.19, %r9
	movabsq	$.L.str.20, %rax
	movabsq	$.L.str.21, %r10
	movl	$1, %r11d
	movl	$7, %ebx
	xorl	%r14d, %r14d
	movabsq	$query.args, %r15
	xorl	%r12d, %r12d
	movl	%r12d, %r13d
	movq	%rax, (%rsp)
	movq	%r10, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$7, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%r15, 40(%rsp)
	movq	$0, 48(%rsp)
	movq	%r13, -48(%rbp)         # 8-byte Spill
	movl	%r11d, -52(%rbp)        # 4-byte Spill
	movl	%r14d, -56(%rbp)        # 4-byte Spill
	movl	%ebx, -60(%rbp)         # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.14, %rdi
	movabsq	$.L.str.22, %rsi
	callq	gimp_plugin_menu_register
	movabsq	$.L.str.23, %rdi
	movabsq	$.L.str.16, %rcx
	movabsq	$.L.str.17, %rdx
	movabsq	$.L.str.18, %r8
	movabsq	$.L.str.19, %r9
	xorl	%r11d, %r11d
	movl	%r11d, %esi
	movabsq	$.L.str.21, %r10
	movl	$1, %r11d
	movl	$7, %ebx
	xorl	%r14d, %r14d
	movabsq	$query.args, %r15
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	movq	%rcx, %rsi
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	movq	%rcx, %rdx
	movq	-80(%rbp), %rcx         # 8-byte Reload
	movq	$0, (%rsp)
	movq	%r10, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$7, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%r15, 40(%rsp)
	movq	$0, 48(%rsp)
	movl	%eax, -84(%rbp)         # 4-byte Spill
	movl	%r14d, -88(%rbp)        # 4-byte Spill
	movl	%ebx, -92(%rbp)         # 4-byte Spill
	movl	%r11d, -96(%rbp)        # 4-byte Spill
	callq	gimp_install_procedure
	addq	$120, %rsp
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	$3, -44(%rbp)
# BB#1:                                 # %do.body
	callq	gimp_locale_directory
	movabsq	$.L.str.24, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.24, %rdi
	movabsq	$.L.str.25, %rsi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.24, %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	textdomain
	movq	%rax, -80(%rbp)         # 8-byte Spill
# BB#2:                                 # %do.end
	movq	-24(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -48(%rbp)
	movq	-24(%rbp), %rax
	movl	88(%rax), %edi
	callq	gimp_drawable_get
	movq	%rax, -56(%rbp)
	movq	-32(%rbp), %rax
	movl	$1, (%rax)
	movq	-40(%rbp), %rax
	movq	$run.values, (%rax)
	movl	$21, run.values(%rip)
	movl	-44(%rbp), %ecx
	movl	%ecx, run.values+8(%rip)
	movl	-48(%rbp), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -84(%rbp)         # 4-byte Spill
	je	.LBB1_3
	jmp	.LBB1_41
.LBB1_41:                               # %do.end
	movl	-84(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	je	.LBB1_8
	jmp	.LBB1_42
.LBB1_42:                               # %do.end
	movl	-84(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	je	.LBB1_33
	jmp	.LBB1_34
.LBB1_3:                                # %sw.bb
	movabsq	$.L.str.14, %rdi
	movabsq	$VALS, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movq	-56(%rbp), %rsi
	movl	(%rsi), %edi
	movl	%eax, -96(%rbp)         # 4-byte Spill
	callq	gimp_drawable_is_rgb
	cmpl	$0, %eax
	jne	.LBB1_5
# BB#4:                                 # %if.then
	movabsq	$.L.str.26, %rdi
	callq	gettext
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_message
	jmp	.LBB1_40
.LBB1_5:                                # %if.end
	movq	-56(%rbp), %rdi
	callq	scatter_hsv_dialog
	cmpl	$0, %eax
	jne	.LBB1_7
# BB#6:                                 # %if.then.13
	jmp	.LBB1_40
.LBB1_7:                                # %if.end.14
	jmp	.LBB1_34
.LBB1_8:                                # %sw.bb.15
	movq	-24(%rbp), %rax
	cmpl	$8, 128(%rax)
	jle	.LBB1_10
# BB#9:                                 # %cond.true
	movl	$8, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jmp	.LBB1_14
.LBB1_10:                               # %cond.false
	movq	-24(%rbp), %rax
	cmpl	$1, 128(%rax)
	jge	.LBB1_12
# BB#11:                                # %cond.true.23
	movl	$1, %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
	jmp	.LBB1_13
.LBB1_12:                               # %cond.false.24
	movq	-24(%rbp), %rax
	movl	128(%rax), %ecx
	movl	%ecx, -104(%rbp)        # 4-byte Spill
.LBB1_13:                               # %cond.end
	movl	-104(%rbp), %eax        # 4-byte Reload
	movl	%eax, -100(%rbp)        # 4-byte Spill
.LBB1_14:                               # %cond.end.28
	movl	-100(%rbp), %eax        # 4-byte Reload
	movl	%eax, VALS
	movq	-24(%rbp), %rcx
	cmpl	$180, 168(%rcx)
	jle	.LBB1_16
# BB#15:                                # %cond.true.34
	movl	$180, %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
	jmp	.LBB1_20
.LBB1_16:                               # %cond.false.35
	movq	-24(%rbp), %rax
	cmpl	$0, 168(%rax)
	jge	.LBB1_18
# BB#17:                                # %cond.true.40
	xorl	%eax, %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
	jmp	.LBB1_19
.LBB1_18:                               # %cond.false.41
	movq	-24(%rbp), %rax
	movl	168(%rax), %ecx
	movl	%ecx, -112(%rbp)        # 4-byte Spill
.LBB1_19:                               # %cond.end.45
	movl	-112(%rbp), %eax        # 4-byte Reload
	movl	%eax, -108(%rbp)        # 4-byte Spill
.LBB1_20:                               # %cond.end.47
	movl	-108(%rbp), %eax        # 4-byte Reload
	movl	%eax, VALS+4
	movq	-24(%rbp), %rcx
	cmpl	$255, 208(%rcx)
	jle	.LBB1_22
# BB#21:                                # %cond.true.53
	movl	$255, %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
	jmp	.LBB1_26
.LBB1_22:                               # %cond.false.54
	movq	-24(%rbp), %rax
	cmpl	$0, 208(%rax)
	jge	.LBB1_24
# BB#23:                                # %cond.true.59
	xorl	%eax, %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
	jmp	.LBB1_25
.LBB1_24:                               # %cond.false.60
	movq	-24(%rbp), %rax
	movl	208(%rax), %ecx
	movl	%ecx, -120(%rbp)        # 4-byte Spill
.LBB1_25:                               # %cond.end.64
	movl	-120(%rbp), %eax        # 4-byte Reload
	movl	%eax, -116(%rbp)        # 4-byte Spill
.LBB1_26:                               # %cond.end.66
	movl	-116(%rbp), %eax        # 4-byte Reload
	movl	%eax, VALS+8
	movq	-24(%rbp), %rcx
	cmpl	$255, 248(%rcx)
	jle	.LBB1_28
# BB#27:                                # %cond.true.72
	movl	$255, %eax
	movl	%eax, -124(%rbp)        # 4-byte Spill
	jmp	.LBB1_32
.LBB1_28:                               # %cond.false.73
	movq	-24(%rbp), %rax
	cmpl	$0, 248(%rax)
	jge	.LBB1_30
# BB#29:                                # %cond.true.78
	xorl	%eax, %eax
	movl	%eax, -128(%rbp)        # 4-byte Spill
	jmp	.LBB1_31
.LBB1_30:                               # %cond.false.79
	movq	-24(%rbp), %rax
	movl	248(%rax), %ecx
	movl	%ecx, -128(%rbp)        # 4-byte Spill
.LBB1_31:                               # %cond.end.83
	movl	-128(%rbp), %eax        # 4-byte Reload
	movl	%eax, -124(%rbp)        # 4-byte Spill
.LBB1_32:                               # %cond.end.85
	movl	-124(%rbp), %eax        # 4-byte Reload
	movl	%eax, VALS+12
	jmp	.LBB1_34
.LBB1_33:                               # %sw.bb.87
	movabsq	$.L.str.14, %rdi
	movabsq	$VALS, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movl	%eax, -132(%rbp)        # 4-byte Spill
.LBB1_34:                               # %sw.epilog
	movq	-56(%rbp), %rdi
	callq	scatter_hsv
	cmpl	$1, -48(%rbp)
	je	.LBB1_36
# BB#35:                                # %if.then.90
	callq	gimp_displays_flush
	movl	%eax, -136(%rbp)        # 4-byte Spill
.LBB1_36:                               # %if.end.92
	cmpl	$0, -48(%rbp)
	jne	.LBB1_39
# BB#37:                                # %land.lhs.true
	cmpl	$3, -44(%rbp)
	jne	.LBB1_39
# BB#38:                                # %if.then.95
	movabsq	$.L.str.14, %rdi
	movabsq	$VALS, %rax
	movl	$16, %edx
	movq	%rax, %rsi
	callq	gimp_procedural_db_set_data
	movl	%eax, -140(%rbp)        # 4-byte Spill
.LBB1_39:                               # %if.end.97
	movl	$21, run.values
	movl	-44(%rbp), %eax
	movl	%eax, run.values+8
.LBB1_40:                               # %return
	addq	$144, %rsp
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
	.type	g_message,@function
g_message:                              # @g_message
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
	je	.LBB3_2
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
.LBB3_2:                                # %entry
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
.Lfunc_end3:
	.size	g_message, .Lfunc_end3-g_message
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4643176031446892544     # double 255
.LCPI4_1:
	.quad	4607182418800017408     # double 1
.LCPI4_2:
	.quad	4620693217682128896     # double 8
.LCPI4_3:
	.quad	4640537203540230144     # double 180
.LCPI4_4:
	.quad	4618441417868443648     # double 6
.LCPI4_5:
	.quad	4611686018427387904     # double 2
	.text
	.align	16, 0x90
	.type	scatter_hsv_dialog,@function
scatter_hsv_dialog:                     # @scatter_hsv_dialog
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
	subq	$512, %rsp              # imm = 0x200
.Ltmp20:
	.cfi_offset %rbx, -32
.Ltmp21:
	.cfi_offset %r14, -24
	movabsq	$.L.str.27, %rax
	movl	$1, %esi
	movq	%rdi, -24(%rbp)
	movq	%rax, %rdi
	callq	gimp_ui_init
	movabsq	$.L.str.28, %rdi
	callq	gettext
	movabsq	$.L.str.29, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	movabsq	$gimp_standard_help_func, %r8
	movabsq	$.L.str.14, %r9
	movabsq	$.L.str.30, %rdi
	movl	$4294967290, %r10d      # imm = 0xFFFFFFFA
	movabsq	$.L.str.31, %r11
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
	movabsq	$.L.str.32, %rsi
	movabsq	$scatter_hsv_preview, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	xorl	%r9d, %r9d
	movq	-48(%rbp), %r11
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %rdx
	movq	-144(%rbp), %rcx        # 8-byte Reload
	movq	-144(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	movl	$4, %edi
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
	movq	-56(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-40(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -180(%rbp)        # 4-byte Spill
	movl	-180(%rbp), %ecx        # 4-byte Reload
	movl	-180(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movq	-56(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.33, %rdi
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	$100, %r8d
	movl	$3, %r9d
	movsd	.LCPI4_1, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI4_2, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI4_5, %xmm4         # xmm4 = mem[0],zero
	movl	$1, %edx
	xorps	%xmm1, %xmm1
	xorl	%r10d, %r10d
	movl	%r10d, %esi
	cvtsi2sdl	VALS, %xmm3
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rsi, -208(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movl	%edx, -212(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movq	%rax, %rcx
	movsd	%xmm0, -224(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm0
	movsd	-224(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	%xmm1, -232(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm1
	movl	$0, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-232(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-232(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	callq	gimp_scale_entry_new
	movabsq	$.L.str.34, %rsi
	movabsq	$gimp_int_adjustment_update, %rcx
	movabsq	$VALS, %rdi
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
	movabsq	$.L.str.34, %rsi
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
	movabsq	$.L.str.35, %rdi
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$1, %edx
	movl	$100, %r8d
	movl	$3, %r9d
	xorps	%xmm0, %xmm0
	movsd	.LCPI4_3, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI4_1, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI4_4, %xmm4         # xmm4 = mem[0],zero
	xorl	%r10d, %r10d
	movl	%r10d, %ecx
	cvtsi2sdl	VALS+4, %xmm1
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rcx, -288(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movsd	%xmm0, -296(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-296(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	$0, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-296(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-296(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	callq	gimp_scale_entry_new
	movabsq	$.L.str.34, %rsi
	movabsq	$gimp_int_adjustment_update, %rcx
	movabsq	$VALS, %rdi
	addq	$4, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rdi, -304(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-304(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.34, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-64(%rbp), %rdx
	movq	-48(%rbp), %rdi
	movq	%rdi, -312(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-312(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-56(%rbp), %rcx
	movq	%rax, -328(%rbp)        # 8-byte Spill
	movq	%rcx, -336(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.36, %rdi
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$2, %edx
	movl	$100, %r8d
	movl	$3, %r9d
	xorps	%xmm0, %xmm0
	movsd	.LCPI4_0, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI4_1, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI4_2, %xmm4         # xmm4 = mem[0],zero
	movl	$1, %r10d
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	cvtsi2sdl	VALS+8, %xmm1
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rcx, -352(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movsd	%xmm0, -360(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-360(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	$0, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-360(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-360(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r10d, -364(%rbp)       # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.34, %rsi
	movabsq	$gimp_int_adjustment_update, %rcx
	movabsq	$VALS, %rdi
	addq	$8, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rdi, -376(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-376(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.34, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-64(%rbp), %rdx
	movq	-48(%rbp), %rdi
	movq	%rdi, -384(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-384(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-56(%rbp), %rcx
	movq	%rax, -400(%rbp)        # 8-byte Spill
	movq	%rcx, -408(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-408(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.37, %rdi
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$3, %r9d
	movl	$100, %r8d
	xorps	%xmm0, %xmm0
	movsd	.LCPI4_0, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI4_1, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI4_2, %xmm4         # xmm4 = mem[0],zero
	movl	$1, %r10d
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	cvtsi2sdl	VALS+12, %xmm1
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movl	%r9d, %edx
	movq	%rcx, -424(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movsd	%xmm0, -432(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-432(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	$0, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-432(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-432(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r10d, -436(%rbp)       # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.34, %rsi
	movabsq	$gimp_int_adjustment_update, %rcx
	movabsq	$VALS, %rdi
	addq	$12, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rdi, -448(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-448(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.34, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-64(%rbp), %rdx
	movq	-48(%rbp), %rdi
	movq	%rdi, -456(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-456(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -464(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-32(%rbp), %rdi
	movq	%rax, -472(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
	movq	-32(%rbp), %rax
	movq	%rax, -480(%rbp)        # 8-byte Spill
	callq	gimp_dialog_get_type
	movq	-480(%rbp), %rdi        # 8-byte Reload
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
	addq	$512, %rsp              # imm = 0x200
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end4:
	.size	scatter_hsv_dialog, .Lfunc_end4-scatter_hsv_dialog
	.cfi_endproc

	.align	16, 0x90
	.type	scatter_hsv,@function
scatter_hsv:                            # @scatter_hsv
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	4(%rdi), %eax
	movl	%eax, -12(%rbp)         # 4-byte Spill
	callq	gimp_tile_width
	movl	-12(%rbp), %ecx         # 4-byte Reload
	movl	%eax, -16(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	xorl	%edx, %edx
	movl	-16(%rbp), %esi         # 4-byte Reload
	divl	%esi
	addl	$1, %eax
	shll	$1, %eax
	movl	%eax, %eax
	movl	%eax, %edi
	callq	gimp_tile_cache_ntiles
	movabsq	$.L.str.28, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_progress_init
	xorl	%esi, %esi
	movabsq	$scatter_hsv_func, %rdi
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-8(%rbp), %r8
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%r8, %rdi
	movq	-24(%rbp), %r8          # 8-byte Reload
	movq	%r8, %rdx
	movl	%eax, -28(%rbp)         # 4-byte Spill
	callq	gimp_rgn_iterate2
	movq	-8(%rbp), %rdi
	callq	gimp_drawable_detach
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	scatter_hsv, .Lfunc_end5-scatter_hsv
	.cfi_endproc

	.align	16, 0x90
	.type	scatter_hsv_preview,@function
scatter_hsv_preview:                    # @scatter_hsv_preview
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	callq	gimp_drawable_preview_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
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
	movl	%ecx, -116(%rbp)        # 4-byte Spill
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
.LBB6_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-84(%rbp), %eax
	movl	-96(%rbp), %ecx
	imull	-100(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB6_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB6_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-72(%rbp), %rdx
	movl	-84(%rbp), %eax
	imull	-104(%rbp), %eax
	movslq	%eax, %rsi
	addq	%rsi, %rdx
	movq	-80(%rbp), %rsi
	movl	-84(%rbp), %eax
	imull	-104(%rbp), %eax
	movslq	%eax, %rdi
	addq	%rdi, %rsi
	movl	-104(%rbp), %eax
	movq	%rdx, %rdi
	movl	%eax, %edx
	callq	scatter_hsv_func
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB6_1
.LBB6_4:                                # %for.end
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
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	scatter_hsv_preview, .Lfunc_end6-scatter_hsv_preview
	.cfi_endproc

	.align	16, 0x90
	.type	scatter_hsv_func,@function
scatter_hsv_func:                       # @scatter_hsv_func
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
	subq	$48, %rsp
	leaq	-33(%rbp), %rax
	leaq	-34(%rbp), %r8
	leaq	-35(%rbp), %r9
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rcx
	movb	(%rcx), %r10b
	movb	%r10b, -33(%rbp)
	movq	-8(%rbp), %rcx
	movb	1(%rcx), %r10b
	movb	%r10b, -34(%rbp)
	movq	-8(%rbp), %rcx
	movb	2(%rcx), %r10b
	movb	%r10b, -35(%rbp)
	movq	%rax, %rdi
	movq	%r8, %rsi
	movq	%r9, %rdx
	callq	scatter_hsv_scatter
	movb	-33(%rbp), %r10b
	movq	-16(%rbp), %rax
	movb	%r10b, (%rax)
	movb	-34(%rbp), %r10b
	movq	-16(%rbp), %rax
	movb	%r10b, 1(%rax)
	movb	-35(%rbp), %r10b
	movq	-16(%rbp), %rax
	movb	%r10b, 2(%rax)
	cmpl	$4, -20(%rbp)
	jne	.LBB7_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movb	3(%rax), %cl
	movq	-16(%rbp), %rax
	movb	%cl, 3(%rax)
.LBB7_2:                                # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	scatter_hsv_func, .Lfunc_end7-scatter_hsv_func
	.cfi_endproc

	.align	16, 0x90
	.type	scatter_hsv_scatter,@function
scatter_hsv_scatter:                    # @scatter_hsv_scatter
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
	subq	$64, %rsp
	leaq	-28(%rbp), %rax
	leaq	-32(%rbp), %rcx
	leaq	-36(%rbp), %r8
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movzbl	(%rdx), %r9d
	movl	%r9d, -28(%rbp)
	movq	-16(%rbp), %rdx
	movzbl	(%rdx), %r9d
	movl	%r9d, -32(%rbp)
	movq	-24(%rbp), %rdx
	movzbl	(%rdx), %r9d
	movl	%r9d, -36(%rbp)
	movq	%rax, %rdi
	movq	%rcx, %rsi
	movq	%r8, %rdx
	callq	gimp_rgb_to_hsv_int
	cmpl	$0, VALS+4
	jle	.LBB8_3
# BB#1:                                 # %land.lhs.true
	cmpl	$0, -32(%rbp)
	jle	.LBB8_3
# BB#2:                                 # %if.then
	xorl	%esi, %esi
	movl	$359, %edx              # imm = 0x167
	movl	$1, %ecx
	movl	-28(%rbp), %edi
	movl	VALS+4, %r8d
	callq	randomize_value
	movl	%eax, -28(%rbp)
.LBB8_3:                                # %if.end
	cmpl	$0, VALS+8
	jle	.LBB8_7
# BB#4:                                 # %if.then.8
	cmpl	$0, -32(%rbp)
	jne	.LBB8_6
# BB#5:                                 # %if.then.11
	xorl	%edi, %edi
	movl	$360, %esi              # imm = 0x168
	callq	g_random_int_range
	movl	%eax, -28(%rbp)
.LBB8_6:                                # %if.end.13
	xorl	%eax, %eax
	movl	$255, %edx
	movl	-32(%rbp), %edi
	movl	VALS+8, %r8d
	movl	%eax, %esi
	movl	%eax, %ecx
	callq	randomize_value
	movl	%eax, -32(%rbp)
.LBB8_7:                                # %if.end.15
	cmpl	$0, VALS+12
	jle	.LBB8_9
# BB#8:                                 # %if.then.18
	xorl	%eax, %eax
	movl	$255, %edx
	movl	-36(%rbp), %edi
	movl	VALS+12, %r8d
	movl	%eax, %esi
	movl	%eax, %ecx
	callq	randomize_value
	movl	%eax, -36(%rbp)
.LBB8_9:                                # %if.end.20
	leaq	-28(%rbp), %rdi
	leaq	-32(%rbp), %rsi
	leaq	-36(%rbp), %rdx
	movl	-28(%rbp), %eax
	movl	%eax, -40(%rbp)
	movl	-32(%rbp), %eax
	movl	%eax, -44(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, -48(%rbp)
	callq	gimp_hsv_to_rgb_int
	leaq	-52(%rbp), %rdi
	leaq	-56(%rbp), %rsi
	leaq	-60(%rbp), %rdx
	movl	-28(%rbp), %eax
	movl	%eax, -52(%rbp)
	movl	-32(%rbp), %eax
	movl	%eax, -56(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, -60(%rbp)
	callq	gimp_rgb_to_hsv_int
	movl	-40(%rbp), %eax
	subl	-52(%rbp), %eax
	movl	%eax, %edi
	callq	abs
	cmpl	VALS+4, %eax
	jg	.LBB8_13
# BB#10:                                # %land.lhs.true.24
	movl	-44(%rbp), %eax
	subl	-56(%rbp), %eax
	movl	%eax, %edi
	callq	abs
	cmpl	VALS+8, %eax
	jg	.LBB8_13
# BB#11:                                # %land.lhs.true.29
	movl	-48(%rbp), %eax
	subl	-60(%rbp), %eax
	movl	%eax, %edi
	callq	abs
	cmpl	VALS+12, %eax
	jg	.LBB8_13
# BB#12:                                # %if.then.34
	movl	-28(%rbp), %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movb	%cl, (%rdx)
	movl	-32(%rbp), %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movb	%cl, (%rdx)
	movl	-36(%rbp), %eax
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	movb	%cl, (%rdx)
.LBB8_13:                               # %if.end.38
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	scatter_hsv_scatter, .Lfunc_end8-scatter_hsv_scatter
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI9_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	randomize_value,@function
randomize_value:                        # @randomize_value
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
	subq	$80, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	%ecx, -16(%rbp)
	movl	%r8d, -20(%rbp)
	movl	-12(%rbp), %ecx
	subl	-8(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -28(%rbp)
	callq	g_random_double
	movsd	%xmm0, -40(%rbp)
	movl	$1, -32(%rbp)
.LBB9_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %eax
	cmpl	VALS, %eax
	jge	.LBB9_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB9_1 Depth=1
	callq	g_random_double
	movsd	%xmm0, -56(%rbp)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB9_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB9_1 Depth=1
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -40(%rbp)
.LBB9_4:                                # %if.end
                                        #   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_5
.LBB9_5:                                # %for.inc
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB9_1
.LBB9_6:                                # %for.end
	callq	g_random_double
	movsd	.LCPI9_0, %xmm1         # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB9_8
# BB#7:                                 # %if.then.5
	movl	$-1, -24(%rbp)
	jmp	.LBB9_9
.LBB9_8:                                # %if.else
	movl	$1, -24(%rbp)
.LBB9_9:                                # %if.end.6
	cvtsi2sdl	-4(%rbp), %xmm0
	cvtsi2sdl	-24(%rbp), %xmm1
	cvtsi2sdl	-20(%rbp), %xmm2
	mulsd	-40(%rbp), %xmm2
	cvtsi2sdl	-28(%rbp), %xmm3
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	%xmm1, -72(%rbp)        # 8-byte Spill
	movaps	%xmm3, %xmm1
	callq	fmod
	movsd	-72(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-64(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -48(%rbp)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-8(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB9_14
# BB#10:                                # %if.then.16
	cmpl	$0, -16(%rbp)
	je	.LBB9_12
# BB#11:                                # %if.then.17
	cvtsi2sdl	-28(%rbp), %xmm0
	addsd	-48(%rbp), %xmm0
	movsd	%xmm0, -48(%rbp)
	jmp	.LBB9_13
.LBB9_12:                               # %if.else.20
	cvtsi2sdl	-8(%rbp), %xmm0
	movsd	%xmm0, -48(%rbp)
.LBB9_13:                               # %if.end.22
	jmp	.LBB9_14
.LBB9_14:                               # %if.end.23
	cvtsi2sdl	-12(%rbp), %xmm0
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB9_19
# BB#15:                                # %if.then.27
	cmpl	$0, -16(%rbp)
	je	.LBB9_17
# BB#16:                                # %if.then.29
	cvtsi2sdl	-28(%rbp), %xmm0
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -48(%rbp)
	jmp	.LBB9_18
.LBB9_17:                               # %if.else.32
	cvtsi2sdl	-12(%rbp), %xmm0
	movsd	%xmm0, -48(%rbp)
.LBB9_18:                               # %if.end.34
	jmp	.LBB9_19
.LBB9_19:                               # %if.end.35
	movsd	.LCPI9_0, %xmm0         # xmm0 = mem[0],zero
	addsd	-48(%rbp), %xmm0
	cvttsd2si	%xmm0, %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	randomize_value, .Lfunc_end9-randomize_value
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
	.asciz	"image"
	.size	.L.str.2, 6

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Input image (not used)"
	.size	.L.str.3, 23

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
	.asciz	"holdness"
	.size	.L.str.6, 9

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"convolution strength"
	.size	.L.str.7, 21

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"hue-distance"
	.size	.L.str.8, 13

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"scattering of hue angle [0,180]"
	.size	.L.str.9, 32

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"saturation-distance"
	.size	.L.str.10, 20

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"distribution distance on saturation axis [0,255]"
	.size	.L.str.11, 49

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"value-distance"
	.size	.L.str.12, 15

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"distribution distance on value axis [0,255]"
	.size	.L.str.13, 44

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"plug-in-hsv-noise"
	.size	.L.str.14, 18

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Randomize hue/saturation/value independently"
	.size	.L.str.15, 45

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Scattering pixel values in HSV space"
	.size	.L.str.16, 37

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Shuji Narazaki (narazaki@InetQ.or.jp)"
	.size	.L.str.17, 38

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"Shuji Narazaki"
	.size	.L.str.18, 15

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"1997"
	.size	.L.str.19, 5

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"HSV Noise..."
	.size	.L.str.20, 13

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"RGB*"
	.size	.L.str.21, 5

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"<Image>/Filters/Noise"
	.size	.L.str.22, 22

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"plug-in-scatter-hsv"
	.size	.L.str.23, 20

	.type	run.values,@object      # @run.values
	.local	run.values
	.comm	run.values,40,16
	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"gimp20-std-plug-ins"
	.size	.L.str.24, 20

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"UTF-8"
	.size	.L.str.25, 6

	.type	VALS,@object            # @VALS
	.data
	.align	4
VALS:
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	10                      # 0xa
	.long	10                      # 0xa
	.size	VALS, 16

	.type	.L.str.26,@object       # @.str.26
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.26:
	.asciz	"Can only operate on RGB drawables."
	.size	.L.str.26, 35

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"noise-hsv"
	.size	.L.str.27, 10

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"HSV Noise"
	.size	.L.str.28, 10

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"gimp-noise-hsv"
	.size	.L.str.29, 15

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"gtk-cancel"
	.size	.L.str.30, 11

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"gtk-ok"
	.size	.L.str.31, 7

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"invalidated"
	.size	.L.str.32, 12

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"_Holdness:"
	.size	.L.str.33, 11

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"value-changed"
	.size	.L.str.34, 14

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"H_ue:"
	.size	.L.str.35, 6

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"_Saturation:"
	.size	.L.str.36, 13

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"_Value:"
	.size	.L.str.37, 8


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
