	.text
	.file	"value-propagate.bc"
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
	movabsq	$.L.str.21, %rcx
	movabsq	$.L.str.22, %r8
	movabsq	$.L.str.23, %r9
	movabsq	$.L.str.24, %rax
	movabsq	$.L.str.25, %r10
	movl	$1, %r11d
	movl	$9, %ebx
	xorl	%r14d, %r14d
	movabsq	$query.args, %r15
	xorl	%r12d, %r12d
	movl	%r12d, %r13d
	movq	%rax, (%rsp)
	movq	%r10, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$9, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%r15, 40(%rsp)
	movq	$0, 48(%rsp)
	movq	%r13, -48(%rbp)         # 8-byte Spill
	movl	%r11d, -52(%rbp)        # 4-byte Spill
	movl	%r14d, -56(%rbp)        # 4-byte Spill
	movl	%ebx, -60(%rbp)         # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.26, %rdi
	movabsq	$.L.str.27, %rsi
	movabsq	$.L.str.28, %rdx
	movabsq	$.L.str.21, %rcx
	movabsq	$.L.str.22, %r8
	movabsq	$.L.str.23, %r9
	movabsq	$.L.str.29, %rax
	movabsq	$.L.str.25, %r10
	movl	$1, %r11d
	movl	$9, %ebx
	xorl	%r14d, %r14d
	movabsq	$query.args, %r15
	xorl	%r12d, %r12d
	movl	%r12d, %r13d
	movq	%rax, (%rsp)
	movq	%r10, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$9, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%r15, 40(%rsp)
	movq	$0, 48(%rsp)
	movq	%r13, -72(%rbp)         # 8-byte Spill
	movl	%r11d, -76(%rbp)        # 4-byte Spill
	movl	%r14d, -80(%rbp)        # 4-byte Spill
	movl	%ebx, -84(%rbp)         # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.30, %rdi
	movabsq	$.L.str.31, %rsi
	movabsq	$.L.str.32, %rdx
	movabsq	$.L.str.21, %rcx
	movabsq	$.L.str.22, %r8
	movabsq	$.L.str.23, %r9
	movabsq	$.L.str.33, %rax
	movabsq	$.L.str.25, %r10
	movl	$1, %r11d
	movl	$9, %ebx
	xorl	%r14d, %r14d
	movabsq	$query.args, %r15
	xorl	%r12d, %r12d
	movl	%r12d, %r13d
	movq	%rax, (%rsp)
	movq	%r10, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$9, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%r15, 40(%rsp)
	movq	$0, 48(%rsp)
	movq	%r13, -96(%rbp)         # 8-byte Spill
	movl	%r11d, -100(%rbp)       # 4-byte Spill
	movl	%r14d, -104(%rbp)       # 4-byte Spill
	movl	%ebx, -108(%rbp)        # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.18, %rdi
	movabsq	$.L.str.34, %rsi
	callq	gimp_plugin_menu_register
	movabsq	$.L.str.26, %rdi
	movabsq	$.L.str.35, %rsi
	movl	%eax, -112(%rbp)        # 4-byte Spill
	callq	gimp_plugin_menu_register
	movabsq	$.L.str.30, %rdi
	movabsq	$.L.str.35, %rsi
	movl	%eax, -116(%rbp)        # 4-byte Spill
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
	.quad	4607182418800017408     # double 1
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
	movl	$3, -44(%rbp)
	movq	-24(%rbp), %rcx
	movl	8(%rcx), %esi
	movl	%esi, -48(%rbp)
	movq	-24(%rbp), %rcx
	movl	88(%rcx), %edi
	callq	gimp_drawable_get
	movq	%rax, -56(%rbp)
# BB#1:                                 # %do.body
	callq	gimp_locale_directory
	movabsq	$.L.str.36, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.36, %rdi
	movabsq	$.L.str.37, %rsi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.36, %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	textdomain
	movq	%rax, -88(%rbp)         # 8-byte Spill
# BB#2:                                 # %do.end
	movq	-32(%rbp), %rax
	movl	$1, (%rax)
	movq	-40(%rbp), %rax
	movq	$run.values, (%rax)
	movl	$21, run.values(%rip)
	movl	-44(%rbp), %ecx
	movl	%ecx, run.values+8(%rip)
	movl	-48(%rbp), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -92(%rbp)         # 4-byte Spill
	je	.LBB1_3
	jmp	.LBB1_42
.LBB1_42:                               # %do.end
	movl	-92(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
	je	.LBB1_21
	jmp	.LBB1_43
.LBB1_43:                               # %do.end
	movl	-92(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	je	.LBB1_33
	jmp	.LBB1_34
.LBB1_3:                                # %sw.bb
	movq	-8(%rbp), %rdi
	movl	$.L.str.18, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_11
# BB#4:                                 # %if.then
	movabsq	$.L.str.18, %rdi
	movabsq	$vpvals, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	xorl	%ecx, %ecx
	movl	$1, %edx
	movl	vpvals+4, %r8d
	andl	$2, %r8d
	cmpl	$0, %r8d
	movl	%ecx, %r8d
	cmovnel	%edx, %r8d
	movl	%r8d, propagate_alpha
	movl	vpvals+4, %r8d
	andl	$1, %r8d
	cmpl	$0, %r8d
	cmovnel	%edx, %ecx
	movl	%ecx, propagate_value
	movl	$0, -60(%rbp)
	movl	%eax, -104(%rbp)        # 4-byte Spill
.LBB1_5:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$4, -60(%rbp)
	jge	.LBB1_8
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB1_5 Depth=1
	xorl	%eax, %eax
	movl	$1, %ecx
	movl	vpvals+16, %edx
	movl	-60(%rbp), %esi
	movl	%ecx, -108(%rbp)        # 4-byte Spill
	movl	%esi, %ecx
                                        # kill: CL<def> ECX<kill>
	movl	-108(%rbp), %esi        # 4-byte Reload
	shll	%cl, %esi
	andl	%esi, %edx
	cmpl	$0, %edx
	movl	-108(%rbp), %edx        # 4-byte Reload
	cmovnel	%edx, %eax
	movslq	-60(%rbp), %rdi
	movl	%eax, direction_mask_vec(,%rdi,4)
# BB#7:                                 # %for.inc
                                        #   in Loop: Header=BB1_5 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB1_5
.LBB1_8:                                # %for.end
	movq	-56(%rbp), %rdi
	callq	vpropagate_dialog
	cmpl	$0, %eax
	jne	.LBB1_10
# BB#9:                                 # %if.then.20
	jmp	.LBB1_41
.LBB1_10:                               # %if.end
	jmp	.LBB1_20
.LBB1_11:                               # %if.else
	movq	-8(%rbp), %rdi
	movl	$.L.str.26, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB1_13
# BB#12:                                # %lor.lhs.false
	movq	-8(%rbp), %rdi
	movl	$.L.str.30, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_19
.LBB1_13:                               # %if.then.25
	movsd	.LCPI1_0, %xmm0         # xmm0 = mem[0],zero
	movl	$1, vpvals+4
	movsd	%xmm0, vpvals+8
	movl	$15, vpvals+16
	movl	$0, vpvals+20
	movl	$255, vpvals+24
	movq	-8(%rbp), %rdi
	movl	$.L.str.26, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_15
# BB#14:                                # %if.then.28
	movl	$1, vpvals
	jmp	.LBB1_18
.LBB1_15:                               # %if.else.29
	movq	-8(%rbp), %rdi
	movl	$.L.str.30, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_17
# BB#16:                                # %if.then.32
	movl	$0, vpvals
.LBB1_17:                               # %if.end.33
	jmp	.LBB1_18
.LBB1_18:                               # %if.end.34
	jmp	.LBB1_19
.LBB1_19:                               # %if.end.35
	jmp	.LBB1_20
.LBB1_20:                               # %if.end.36
	jmp	.LBB1_34
.LBB1_21:                               # %sw.bb.37
	movq	-8(%rbp), %rdi
	movl	$.L.str.18, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_23
# BB#22:                                # %if.then.40
	movq	-24(%rbp), %rax
	movl	128(%rax), %ecx
	movl	%ecx, vpvals
	movq	-24(%rbp), %rax
	movl	168(%rax), %ecx
	movl	%ecx, vpvals+4
	movq	-24(%rbp), %rax
	movsd	208(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, vpvals+8
	movq	-24(%rbp), %rax
	movl	248(%rax), %ecx
	movl	%ecx, vpvals+16
	movq	-24(%rbp), %rax
	movl	288(%rax), %ecx
	movl	%ecx, vpvals+20
	movq	-24(%rbp), %rax
	movl	328(%rax), %ecx
	movl	%ecx, vpvals+24
	jmp	.LBB1_32
.LBB1_23:                               # %if.else.58
	movq	-8(%rbp), %rdi
	movl	$.L.str.26, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB1_25
# BB#24:                                # %lor.lhs.false.61
	movq	-8(%rbp), %rdi
	movl	$.L.str.30, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_31
.LBB1_25:                               # %if.then.64
	movsd	.LCPI1_0, %xmm0         # xmm0 = mem[0],zero
	movl	$1, vpvals+4
	movsd	%xmm0, vpvals+8
	movl	$15, vpvals+16
	movl	$0, vpvals+20
	movl	$255, vpvals+24
	movq	-8(%rbp), %rdi
	movl	$.L.str.26, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_27
# BB#26:                                # %if.then.67
	movl	$1, vpvals
	jmp	.LBB1_30
.LBB1_27:                               # %if.else.68
	movq	-8(%rbp), %rdi
	movl	$.L.str.30, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_29
# BB#28:                                # %if.then.71
	movl	$0, vpvals
.LBB1_29:                               # %if.end.72
	jmp	.LBB1_30
.LBB1_30:                               # %if.end.73
	jmp	.LBB1_31
.LBB1_31:                               # %if.end.74
	jmp	.LBB1_32
.LBB1_32:                               # %if.end.75
	jmp	.LBB1_34
.LBB1_33:                               # %sw.bb.76
	movabsq	$vpvals, %rax
	movq	-8(%rbp), %rdi
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movl	%eax, -112(%rbp)        # 4-byte Spill
.LBB1_34:                               # %sw.epilog
	movq	-56(%rbp), %rdi
	callq	value_propagate
	movl	%eax, -44(%rbp)
	cmpl	$3, -44(%rbp)
	jne	.LBB1_40
# BB#35:                                # %if.then.80
	cmpl	$1, -48(%rbp)
	je	.LBB1_37
# BB#36:                                # %if.then.82
	callq	gimp_displays_flush
	movl	%eax, -116(%rbp)        # 4-byte Spill
.LBB1_37:                               # %if.end.84
	cmpl	$0, -48(%rbp)
	jne	.LBB1_39
# BB#38:                                # %if.then.86
	movabsq	$vpvals, %rax
	movl	$32, %edx
	movq	-8(%rbp), %rdi
	movq	%rax, %rsi
	callq	gimp_procedural_db_set_data
	movl	%eax, -120(%rbp)        # 4-byte Spill
.LBB1_39:                               # %if.end.88
	jmp	.LBB1_40
.LBB1_40:                               # %if.end.89
	movl	$21, run.values
	movl	-44(%rbp), %eax
	movl	%eax, run.values+8
.LBB1_41:                               # %return
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
	.quad	4576918229304087675     # double 0.01
.LCPI3_2:
	.quad	4591870180066957722     # double 0.10000000000000001
.LCPI3_3:
	.quad	4643176031446892544     # double 255
.LCPI3_4:
	.quad	4620693217682128896     # double 8
	.text
	.align	16, 0x90
	.type	vpropagate_dialog,@function
vpropagate_dialog:                      # @vpropagate_dialog
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
	subq	$792, %rsp              # imm = 0x318
.Ltmp17:
	.cfi_offset %rbx, -24
	movabsq	$.L.str.38, %rax
	xorl	%esi, %esi
	movq	%rdi, -16(%rbp)
	movq	$0, -88(%rbp)
	movl	$0, -92(%rbp)
	movq	%rax, %rdi
	callq	gimp_ui_init
	movabsq	$.L.str.39, %rdi
	callq	gettext
	movabsq	$.L.str.40, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	movabsq	$gimp_standard_help_func, %r8
	movabsq	$.L.str.18, %r9
	movabsq	$.L.str.41, %rdi
	movl	$4294967290, %r10d      # imm = 0xFFFFFFFA
	movabsq	$.L.str.42, %r11
	movl	$4294967291, %ebx       # imm = 0xFFFFFFFB
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$-6, 8(%rsp)
	movq	%r11, 16(%rsp)
	movl	$-5, 24(%rsp)
	movq	$0, 32(%rsp)
	movb	$0, %al
	movl	%ebx, -124(%rbp)        # 4-byte Spill
	movl	%r10d, -128(%rbp)       # 4-byte Spill
	callq	gimp_dialog_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	movq	-24(%rbp), %rdi
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_window_set_transient
	movl	$1, %edi
	movl	$12, %esi
	callq	gtk_box_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-24(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
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
	movl	%ecx, %esi
	movq	-16(%rbp), %rdi
	callq	gimp_drawable_preview_new
	movq	%rax, preview
	movq	-32(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
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
	movabsq	$.L.str.43, %rsi
	movabsq	$value_propagate_body, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movl	$2, %r9d
	movq	preview, %rdi
	movq	-16(%rbp), %r11
	movq	%rax, %rdx
	movq	%r11, %rcx
	callq	g_signal_connect_data
	xorl	%edi, %edi
	movl	$12, %esi
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_box_new
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.44, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -204(%rbp)        # 4-byte Spill
	movl	-204(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movl	$1, %edi
	movl	$2, %esi
	callq	gtk_box_new
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	movl	$0, -92(%rbp)
.LBB3_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$8, -92(%rbp)
	jge	.LBB3_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB3_1 Depth=1
	movabsq	$modes, %rax
	movq	-88(%rbp), %rdi
	movslq	-92(%rbp), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	movq	8(%rax), %rax
	movq	%rdi, -224(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gettext
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_radio_button_new_with_mnemonic
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gtk_radio_button_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_radio_button_get_group
	movq	%rax, -88(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -244(%rbp)        # 4-byte Spill
	movl	-244(%rbp), %ecx        # 4-byte Reload
	movl	-244(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.45, %rsi
	movslq	-92(%rbp), %rdx
	movq	%rax, %rdi
	callq	g_object_set_data
	movabsq	$.L.str.46, %rsi
	movabsq	$gimp_radio_button_update, %rax
	movabsq	$vpvals, %rdx
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-72(%rbp), %rdi
	movq	%rdx, -256(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-256(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.46, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-72(%rbp), %rdx
	movq	preview, %rdi
	movq	%rdi, -264(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-264(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-72(%rbp), %rcx
	movq	%rax, -280(%rbp)        # 8-byte Spill
	movq	%rcx, -288(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-92(%rbp), %r9d
	cmpl	vpvals, %r9d
	sete	%r10b
	andb	$1, %r10b
	movzbl	%r10b, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	-92(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -92(%rbp)
	jmp	.LBB3_1
.LBB3_4:                                # %for.end
	movabsq	$.L.str.47, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -300(%rbp)        # 4-byte Spill
	movl	-300(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movl	$8, %edi
	movl	$3, %esi
	xorl	%edx, %edx
	callq	gtk_table_new
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-56(%rbp), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-56(%rbp), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movl	$12, %edx
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacing
	movq	-56(%rbp), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$5, %esi
	movl	$12, %edx
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacing
	movq	-48(%rbp), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movq	-56(%rbp), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.48, %rdi
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	$100, %r8d
	movl	$4, %r9d
	xorps	%xmm0, %xmm0
	movsd	.LCPI3_3, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI3_0, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI3_4, %xmm4         # xmm4 = mem[0],zero
	movl	$1, %edx
	xorl	%r10d, %r10d
	movl	%r10d, %esi
	cvtsi2sdl	vpvals+20, %xmm1
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rsi, -368(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movl	%edx, -372(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movq	%rax, %rcx
	movsd	%xmm0, -384(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-384(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	$0, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-384(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-384(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	callq	gimp_scale_entry_new
	movabsq	$.L.str.49, %rsi
	movabsq	$gimp_int_adjustment_update, %rcx
	movabsq	$vpvals, %rdi
	addq	$20, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rdi, -392(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-392(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.49, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-80(%rbp), %rdx
	movq	preview, %rdi
	movq	%rdi, -400(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-400(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-56(%rbp), %rcx
	movq	%rax, -416(%rbp)        # 8-byte Spill
	movq	%rcx, -424(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-424(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.50, %rdi
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$1, %edx
	movl	$100, %r8d
	movl	$4, %r9d
	xorps	%xmm0, %xmm0
	movsd	.LCPI3_3, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI3_0, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI3_4, %xmm4         # xmm4 = mem[0],zero
	xorl	%r10d, %r10d
	movl	%r10d, %ecx
	cvtsi2sdl	vpvals+24, %xmm1
	movq	-432(%rbp), %rdi        # 8-byte Reload
	movq	%rcx, -440(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movsd	%xmm0, -448(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-448(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	$0, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-448(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-448(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	callq	gimp_scale_entry_new
	movabsq	$.L.str.49, %rsi
	movabsq	$gimp_int_adjustment_update, %rcx
	movabsq	$vpvals, %rdi
	addq	$24, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rdi, -456(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-456(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.49, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-80(%rbp), %rdx
	movq	preview, %rdi
	movq	%rdi, -464(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-464(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -472(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-56(%rbp), %rcx
	movq	%rax, -480(%rbp)        # 8-byte Spill
	movq	%rcx, -488(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-488(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.51, %rdi
	movq	%rax, -496(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$2, %edx
	movl	$100, %r8d
	movl	$4, %r9d
	xorps	%xmm0, %xmm0
	movsd	.LCPI3_0, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI3_1, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI3_2, %xmm4         # xmm4 = mem[0],zero
	movl	$1, %r10d
	xorl	%r11d, %r11d
	movl	%r11d, %ecx
	movsd	vpvals+8, %xmm1         # xmm1 = mem[0],zero
	movq	-496(%rbp), %rdi        # 8-byte Reload
	movq	%rcx, -504(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movsd	%xmm0, -512(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-512(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	$2, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-512(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-512(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r10d, -516(%rbp)       # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.49, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	movabsq	$vpvals, %rdi
	addq	$8, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rdi, -528(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-528(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.49, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-80(%rbp), %rdx
	movq	preview, %rdi
	movq	%rdi, -536(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-536(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -544(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.52, %rdi
	movq	-56(%rbp), %rcx
	movq	%rax, -552(%rbp)        # 8-byte Spill
	movq	%rcx, -560(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%edx, %edx
	movl	$1, %ecx
	movl	$4, %r8d
	movabsq	$vpropagate_toggle_button_update, %rsi
	movabsq	$direction_mask_vec, %rdi
	movq	-560(%rbp), %rbx        # 8-byte Reload
	movq	%rdi, -568(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rsi, -576(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	-576(%rbp), %r9         # 8-byte Reload
	movq	-568(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	callq	gtk_table_add_toggle
	movabsq	$.L.str.53, %rdi
	movq	-56(%rbp), %rsi
	movq	%rax, -584(%rbp)        # 8-byte Spill
	movq	%rsi, -592(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$2, %edx
	movl	$3, %ecx
	movl	$4, %r8d
	movabsq	$vpropagate_toggle_button_update, %rsi
	movabsq	$direction_mask_vec, %rdi
	addq	$8, %rdi
	movq	-592(%rbp), %r9         # 8-byte Reload
	movq	%rdi, -600(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movq	%rsi, -608(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	-608(%rbp), %r9         # 8-byte Reload
	movq	-600(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	callq	gtk_table_add_toggle
	movabsq	$.L.str.54, %rdi
	movq	-56(%rbp), %rsi
	movq	%rax, -616(%rbp)        # 8-byte Spill
	movq	%rsi, -624(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$1, %edx
	movl	$2, %ecx
	movl	$3, %r8d
	movabsq	$vpropagate_toggle_button_update, %rsi
	movabsq	$direction_mask_vec, %rdi
	addq	$4, %rdi
	movq	-624(%rbp), %r9         # 8-byte Reload
	movq	%rdi, -632(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movq	%rsi, -640(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	-640(%rbp), %r9         # 8-byte Reload
	movq	-632(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	callq	gtk_table_add_toggle
	movabsq	$.L.str.55, %rdi
	movq	-56(%rbp), %rsi
	movq	%rax, -648(%rbp)        # 8-byte Spill
	movq	%rsi, -656(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$1, %edx
	movl	$2, %ecx
	movl	$5, %r8d
	movabsq	$vpropagate_toggle_button_update, %rsi
	movabsq	$direction_mask_vec, %rdi
	addq	$12, %rdi
	movq	-656(%rbp), %r9         # 8-byte Reload
	movq	%rdi, -664(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movq	%rsi, -672(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	-672(%rbp), %r9         # 8-byte Reload
	movq	-664(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	callq	gtk_table_add_toggle
	movq	-16(%rbp), %rsi
	movl	(%rsi), %edi
	movq	%rax, -680(%rbp)        # 8-byte Spill
	callq	gimp_drawable_has_alpha
	cmpl	$0, %eax
	je	.LBB3_8
# BB#5:                                 # %if.then
	movabsq	$.L.str.56, %rdi
	movq	-56(%rbp), %rax
	movq	%rax, -688(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%edx, %edx
	movl	$3, %ecx
	movl	$6, %r8d
	movabsq	$vpropagate_toggle_button_update, %rdi
	movabsq	$propagate_alpha, %rsi
	movq	-688(%rbp), %r9         # 8-byte Reload
	movq	%rdi, -696(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movq	%rsi, -704(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	-696(%rbp), %r9         # 8-byte Reload
	movq	-704(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	callq	gtk_table_add_toggle
	movq	%rax, -104(%rbp)
	movq	-16(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_layer_get_lock_alpha
	cmpl	$0, %eax
	je	.LBB3_7
# BB#6:                                 # %if.then.91
	movq	-104(%rbp), %rax
	movq	%rax, -712(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-712(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	xorl	%esi, %esi
	movq	-104(%rbp), %rdi
	callq	gtk_widget_set_sensitive
.LBB3_7:                                # %if.end
	movabsq	$.L.str.57, %rdi
	movq	-56(%rbp), %rax
	movq	%rax, -720(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%edx, %edx
	movl	$3, %ecx
	movl	$7, %r8d
	movabsq	$vpropagate_toggle_button_update, %rdi
	movabsq	$propagate_value, %rsi
	movq	-720(%rbp), %r9         # 8-byte Reload
	movq	%rdi, -728(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movq	%rsi, -736(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	-728(%rbp), %r9         # 8-byte Reload
	movq	-736(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	callq	gtk_table_add_toggle
	movq	%rax, -744(%rbp)        # 8-byte Spill
.LBB3_8:                                # %if.end.96
	movq	-24(%rbp), %rdi
	callq	gtk_widget_show
	movq	-24(%rbp), %rdi
	movq	%rdi, -752(%rbp)        # 8-byte Spill
	callq	gimp_dialog_get_type
	movq	-752(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dialog_run
	cmpl	$-5, %eax
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB3_14
# BB#9:                                 # %if.then.103
	movl	$0, -112(%rbp)
	movl	$0, -108(%rbp)
.LBB3_10:                               # %for.cond.104
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$4, -108(%rbp)
	jge	.LBB3_13
# BB#11:                                # %for.body.107
                                        #   in Loop: Header=BB3_10 Depth=1
	xorl	%eax, %eax
	movl	$1, %ecx
	movslq	-108(%rbp), %rdx
	cmpl	$0, direction_mask_vec(,%rdx,4)
	cmovnel	%ecx, %eax
	movl	-108(%rbp), %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %eax
	orl	-112(%rbp), %eax
	movl	%eax, -112(%rbp)
# BB#12:                                # %for.inc.111
                                        #   in Loop: Header=BB3_10 Depth=1
	movl	-108(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -108(%rbp)
	jmp	.LBB3_10
.LBB3_13:                               # %for.end.113
	xorl	%eax, %eax
	movl	$1, %ecx
	movl	$2, %edx
	movl	-112(%rbp), %esi
	movl	%esi, vpvals+16
	cmpl	$0, propagate_alpha
	movl	%eax, %esi
	cmovnel	%edx, %esi
	cmpl	$0, propagate_value
	cmovnel	%ecx, %eax
	orl	%eax, %esi
	movl	%esi, vpvals+4
.LBB3_14:                               # %if.end.119
	movq	-24(%rbp), %rdi
	callq	gtk_widget_destroy
	movl	-96(%rbp), %eax
	addq	$792, %rsp              # imm = 0x318
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end3:
	.size	vpropagate_dialog, .Lfunc_end3-vpropagate_dialog
	.cfi_endproc

	.align	16, 0x90
	.type	value_propagate,@function
value_propagate:                        # @value_propagate
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
	movq	%rdi, -16(%rbp)
	movl	vpvals+4, %eax
	andl	$3, %eax
	cmpl	$0, %eax
	jne	.LBB4_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB4_11
.LBB4_2:                                # %if.end
	cmpl	$0, vpvals+16
	jne	.LBB4_4
# BB#3:                                 # %if.then.1
	movl	$0, -4(%rbp)
	jmp	.LBB4_11
.LBB4_4:                                # %if.end.2
	cmpl	$0, vpvals+20
	jl	.LBB4_9
# BB#5:                                 # %lor.lhs.false
	movl	$255, %eax
	cmpl	vpvals+20, %eax
	jl	.LBB4_9
# BB#6:                                 # %lor.lhs.false.5
	cmpl	$0, vpvals+24
	jl	.LBB4_9
# BB#7:                                 # %lor.lhs.false.7
	movl	$255, %eax
	cmpl	vpvals+20, %eax
	jl	.LBB4_9
# BB#8:                                 # %lor.lhs.false.9
	movl	vpvals+24, %eax
	cmpl	vpvals+20, %eax
	jge	.LBB4_10
.LBB4_9:                                # %if.then.11
	movl	$0, -4(%rbp)
	jmp	.LBB4_11
.LBB4_10:                               # %if.end.12
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	value_propagate_body
	movl	$3, -4(%rbp)
.LBB4_11:                               # %return
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	value_propagate, .Lfunc_end4-value_propagate
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	value_propagate_body,@function
value_propagate_body:                   # @value_propagate_body
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
	pushq	%rbx
	subq	$488, %rsp              # imm = 0x1E8
.Ltmp24:
	.cfi_offset %rbx, -24
	movl	$40, %eax
	movl	%eax, %edx
	leaq	-72(%rbp), %rcx
	movabsq	$modes, %r8
	xorl	%eax, %eax
	movl	$1, %r9d
	movl	$4294967295, %r10d      # imm = 0xFFFFFFFF
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	vpvals+16, %r11d
	andl	$4, %r11d
	cmpl	$0, %r11d
	movl	%eax, %r11d
	cmovnel	%r10d, %r11d
	movl	%r11d, -304(%rbp)
	movl	vpvals+16, %r11d
	andl	$1, %r11d
	cmpl	$0, %r11d
	movl	%eax, %r11d
	cmovnel	%r9d, %r11d
	movl	%r11d, -308(%rbp)
	movl	vpvals+16, %r11d
	andl	$8, %r11d
	cmpl	$0, %r11d
	movl	%eax, %r11d
	cmovnel	%r10d, %r11d
	movl	%r11d, -312(%rbp)
	movl	vpvals+16, %r10d
	andl	$2, %r10d
	cmpl	$0, %r10d
	cmovnel	%r9d, %eax
	movl	%eax, -316(%rbp)
	movslq	vpvals, %rsi
	imulq	$40, %rsi, %rsi
	addq	%rsi, %r8
	movq	%rcx, %rdi
	movq	%r8, %rsi
	callq	memcpy
	movq	$0, -328(%rbp)
	movq	-16(%rbp), %rcx
	movl	(%rcx), %edi
	callq	gimp_drawable_type
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rcx
	movl	12(%rcx), %eax
	movl	%eax, -268(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB5_2
# BB#1:                                 # %if.then
	leaq	-276(%rbp), %rsi
	leaq	-280(%rbp), %rdx
	movq	-24(%rbp), %rdi
	callq	gimp_preview_get_position
	leaq	-260(%rbp), %rsi
	leaq	-264(%rbp), %rdx
	movq	-24(%rbp), %rdi
	callq	gimp_preview_get_size
	movl	-276(%rbp), %eax
	addl	-260(%rbp), %eax
	movl	%eax, -284(%rbp)
	movl	-280(%rbp), %eax
	addl	-264(%rbp), %eax
	movl	%eax, -288(%rbp)
	jmp	.LBB5_5
.LBB5_2:                                # %if.else
	leaq	-276(%rbp), %rsi
	leaq	-280(%rbp), %rdx
	leaq	-260(%rbp), %rcx
	leaq	-264(%rbp), %r8
	movq	-16(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_mask_intersect
	cmpl	$0, %eax
	jne	.LBB5_4
# BB#3:                                 # %if.then.16
	jmp	.LBB5_54
.LBB5_4:                                # %if.end
	movl	-276(%rbp), %eax
	addl	-260(%rbp), %eax
	movl	%eax, -284(%rbp)
	movl	-280(%rbp), %eax
	addl	-264(%rbp), %eax
	movl	%eax, -288(%rbp)
.LBB5_5:                                # %if.end.19
	movl	-260(%rbp), %eax
	movl	%eax, -364(%rbp)        # 4-byte Spill
	callq	gimp_tile_width
	movl	-364(%rbp), %ecx        # 4-byte Reload
	movl	%eax, -368(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	xorl	%edx, %edx
	movl	-368(%rbp), %esi        # 4-byte Reload
	divl	%esi
	addl	$1, %eax
	shll	$1, %eax
	movl	%eax, %eax
	movl	%eax, %edi
	callq	gimp_tile_cache_ntiles
	movl	$1, %eax
	movl	%eax, %esi
	movl	-260(%rbp), %eax
	addl	$2, %eax
	imull	-268(%rbp), %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	%rax, -208(%rbp)
	movl	-260(%rbp), %ecx
	addl	$2, %ecx
	imull	-268(%rbp), %ecx
	movslq	%ecx, %rdi
	callq	g_malloc_n
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	%rax, -216(%rbp)
	movl	-260(%rbp), %ecx
	addl	$2, %ecx
	imull	-268(%rbp), %ecx
	movslq	%ecx, %rdi
	callq	g_malloc_n
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	%rax, -224(%rbp)
	movl	-260(%rbp), %ecx
	imull	-268(%rbp), %ecx
	movslq	%ecx, %rdi
	callq	g_malloc_n
	leaq	-120(%rbp), %rdi
	xorl	%ecx, %ecx
	movq	%rax, -200(%rbp)
	movq	-16(%rbp), %rsi
	movl	-276(%rbp), %r8d
	movl	-280(%rbp), %r9d
	movl	-260(%rbp), %r10d
	movl	-264(%rbp), %r11d
	movl	%r8d, %edx
	movl	%ecx, -372(%rbp)        # 4-byte Spill
	movl	%r9d, %ecx
	movl	%r10d, %r8d
	movl	%r11d, %r9d
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	leaq	-168(%rbp), %rdi
	movl	$1, %ecx
	movq	-16(%rbp), %rsi
	movl	-276(%rbp), %edx
	movl	-280(%rbp), %r8d
	movl	-260(%rbp), %r9d
	movl	-264(%rbp), %r10d
	cmpq	$0, -24(%rbp)
	sete	%bl
	andb	$1, %bl
	movzbl	%bl, %r11d
	movl	%ecx, -376(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	%r11d, (%rsp)
	movl	$1, 8(%rsp)
	callq	gimp_pixel_rgn_init
	xorl	%ecx, %ecx
	movq	-208(%rbp), %rax
	movslq	-268(%rbp), %rsi
	addq	%rsi, %rax
	movq	%rax, -232(%rbp)
	movq	-216(%rbp), %rax
	movslq	-268(%rbp), %rsi
	addq	%rsi, %rax
	movq	%rax, -240(%rbp)
	movq	-224(%rbp), %rax
	movslq	-268(%rbp), %rsi
	addq	%rsi, %rax
	movq	%rax, -248(%rbp)
	movq	-232(%rbp), %rsi
	movl	-276(%rbp), %edx
	cmpl	-280(%rbp), %ecx
	movl	%edx, -380(%rbp)        # 4-byte Spill
	movq	%rsi, -392(%rbp)        # 8-byte Spill
	jge	.LBB5_7
# BB#6:                                 # %cond.true
	movl	-280(%rbp), %eax
	movl	%eax, -396(%rbp)        # 4-byte Spill
	jmp	.LBB5_8
.LBB5_7:                                # %cond.false
	movl	-280(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -396(%rbp)        # 4-byte Spill
.LBB5_8:                                # %cond.end
	movl	-396(%rbp), %eax        # 4-byte Reload
	leaq	-120(%rbp), %rdi
	movl	-284(%rbp), %ecx
	subl	-276(%rbp), %ecx
	movq	-392(%rbp), %rsi        # 8-byte Reload
	movl	-380(%rbp), %edx        # 4-byte Reload
	movl	%ecx, -400(%rbp)        # 4-byte Spill
	movl	%eax, %ecx
	movl	-400(%rbp), %r8d        # 4-byte Reload
	callq	prepare_row
	xorl	%eax, %eax
	cmpl	-280(%rbp), %eax
	jge	.LBB5_10
# BB#9:                                 # %if.then.48
	leaq	-120(%rbp), %rdi
	movq	-240(%rbp), %rsi
	movl	-276(%rbp), %edx
	movl	-280(%rbp), %ecx
	movl	-284(%rbp), %eax
	subl	-276(%rbp), %eax
	movl	%eax, %r8d
	callq	prepare_row
	jmp	.LBB5_11
.LBB5_10:                               # %if.else.50
	movq	-216(%rbp), %rdi
	movq	-208(%rbp), %rsi
	movl	-260(%rbp), %eax
	addl	$2, %eax
	imull	-268(%rbp), %eax
	movslq	%eax, %rdx
	callq	memcpy
.LBB5_11:                               # %if.end.54
	movl	$1, %eax
	movl	%eax, %esi
	movslq	-268(%rbp), %rdi
	callq	g_malloc_n
	movq	%rax, -184(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB5_13
# BB#12:                                # %if.then.58
	movabsq	$.L.str.39, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_progress_init
	movl	%eax, -404(%rbp)        # 4-byte Spill
.LBB5_13:                               # %if.end.61
	leaq	-360(%rbp), %rdi
	callq	gimp_context_get_foreground
	leaq	-360(%rbp), %rdi
	movabsq	$fore, %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rcx, %rsi
	addq	$2, %rsi
	movq	%rsi, -416(%rbp)        # 8-byte Spill
	movq	%rcx, %rsi
	movq	-416(%rbp), %rcx        # 8-byte Reload
	movl	%eax, -420(%rbp)        # 4-byte Spill
	callq	gimp_rgb_get_uchar
	movl	-280(%rbp), %eax
	movl	%eax, -296(%rbp)
.LBB5_14:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_19 Depth 2
                                        #     Child Loop BB5_23 Depth 2
                                        #       Child Loop BB5_28 Depth 3
                                        #       Child Loop BB5_33 Depth 3
                                        #       Child Loop BB5_40 Depth 3
	movl	-296(%rbp), %eax
	cmpl	-288(%rbp), %eax
	jge	.LBB5_51
# BB#15:                                # %for.body
                                        #   in Loop: Header=BB5_14 Depth=1
	movq	-248(%rbp), %rsi
	movl	-276(%rbp), %edx
	movl	-296(%rbp), %eax
	addl	$1, %eax
	cmpl	-288(%rbp), %eax
	movq	%rsi, -432(%rbp)        # 8-byte Spill
	movl	%edx, -436(%rbp)        # 4-byte Spill
	jge	.LBB5_17
# BB#16:                                # %cond.true.68
                                        #   in Loop: Header=BB5_14 Depth=1
	movl	-296(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -440(%rbp)        # 4-byte Spill
	jmp	.LBB5_18
.LBB5_17:                               # %cond.false.70
                                        #   in Loop: Header=BB5_14 Depth=1
	movl	-288(%rbp), %eax
	movl	%eax, -440(%rbp)        # 4-byte Spill
.LBB5_18:                               # %cond.end.71
                                        #   in Loop: Header=BB5_14 Depth=1
	movl	-440(%rbp), %eax        # 4-byte Reload
	leaq	-120(%rbp), %rdi
	movl	-284(%rbp), %ecx
	subl	-276(%rbp), %ecx
	movq	-432(%rbp), %rsi        # 8-byte Reload
	movl	-436(%rbp), %edx        # 4-byte Reload
	movl	%ecx, -444(%rbp)        # 4-byte Spill
	movl	%eax, %ecx
	movl	-444(%rbp), %r8d        # 4-byte Reload
	callq	prepare_row
	movl	$0, -272(%rbp)
.LBB5_19:                               # %for.cond.74
                                        #   Parent Loop BB5_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-272(%rbp), %eax
	movl	-284(%rbp), %ecx
	subl	-276(%rbp), %ecx
	imull	-268(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB5_22
# BB#20:                                # %for.body.79
                                        #   in Loop: Header=BB5_19 Depth=2
	movslq	-272(%rbp), %rax
	movq	-240(%rbp), %rcx
	movb	(%rcx,%rax), %dl
	movslq	-272(%rbp), %rax
	movq	-200(%rbp), %rcx
	movb	%dl, (%rcx,%rax)
# BB#21:                                # %for.inc
                                        #   in Loop: Header=BB5_19 Depth=2
	movl	-272(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -272(%rbp)
	jmp	.LBB5_19
.LBB5_22:                               # %for.end
                                        #   in Loop: Header=BB5_14 Depth=1
	movl	$0, -292(%rbp)
.LBB5_23:                               # %for.cond.84
                                        #   Parent Loop BB5_14 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_28 Depth 3
                                        #       Child Loop BB5_33 Depth 3
                                        #       Child Loop BB5_40 Depth 3
	movl	-292(%rbp), %eax
	movl	-284(%rbp), %ecx
	subl	-276(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB5_46
# BB#24:                                # %for.body.88
                                        #   in Loop: Header=BB5_23 Depth=2
	movq	-200(%rbp), %rax
	movl	-292(%rbp), %ecx
	imull	-268(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -192(%rbp)
	movq	-240(%rbp), %rax
	movl	-292(%rbp), %ecx
	imull	-268(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -176(%rbp)
	movq	-184(%rbp), %rdi
	movq	-176(%rbp), %rsi
	movslq	-268(%rbp), %rdx
	callq	memcpy
	cmpq	$0, -56(%rbp)
	je	.LBB5_26
# BB#25:                                # %if.then.97
                                        #   in Loop: Header=BB5_23 Depth=2
	leaq	-328(%rbp), %r8
	movq	-56(%rbp), %rax
	movl	-28(%rbp), %edi
	movl	-268(%rbp), %esi
	movq	-184(%rbp), %rdx
	movq	-176(%rbp), %rcx
	callq	*%rax
.LBB5_26:                               # %if.end.99
                                        #   in Loop: Header=BB5_23 Depth=2
	cmpl	$-1, -312(%rbp)
	jne	.LBB5_32
# BB#27:                                # %if.then.102
                                        #   in Loop: Header=BB5_23 Depth=2
	movl	-304(%rbp), %eax
	movl	%eax, -300(%rbp)
.LBB5_28:                               # %for.cond.103
                                        #   Parent Loop BB5_14 Depth=1
                                        #     Parent Loop BB5_23 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-300(%rbp), %eax
	cmpl	-308(%rbp), %eax
	jg	.LBB5_31
# BB#29:                                # %for.body.106
                                        #   in Loop: Header=BB5_28 Depth=3
	movq	-48(%rbp), %rax
	movl	-28(%rbp), %edi
	movl	-268(%rbp), %esi
	movq	-176(%rbp), %rdx
	movq	-232(%rbp), %rcx
	movl	-292(%rbp), %r8d
	addl	-300(%rbp), %r8d
	imull	-268(%rbp), %r8d
	movslq	%r8d, %r9
	addq	%r9, %rcx
	movq	-184(%rbp), %r8
	movq	-328(%rbp), %r9
	callq	*%rax
# BB#30:                                # %for.inc.111
                                        #   in Loop: Header=BB5_28 Depth=3
	movl	-300(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -300(%rbp)
	jmp	.LBB5_28
.LBB5_31:                               # %for.end.113
                                        #   in Loop: Header=BB5_23 Depth=2
	jmp	.LBB5_32
.LBB5_32:                               # %if.end.114
                                        #   in Loop: Header=BB5_23 Depth=2
	movl	-304(%rbp), %eax
	movl	%eax, -300(%rbp)
.LBB5_33:                               # %for.cond.115
                                        #   Parent Loop BB5_14 Depth=1
                                        #     Parent Loop BB5_23 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-300(%rbp), %eax
	cmpl	-308(%rbp), %eax
	jg	.LBB5_38
# BB#34:                                # %for.body.118
                                        #   in Loop: Header=BB5_33 Depth=3
	cmpl	$0, -300(%rbp)
	je	.LBB5_36
# BB#35:                                # %if.then.121
                                        #   in Loop: Header=BB5_33 Depth=3
	movq	-48(%rbp), %rax
	movl	-28(%rbp), %edi
	movl	-268(%rbp), %esi
	movq	-176(%rbp), %rdx
	movq	-240(%rbp), %rcx
	movl	-292(%rbp), %r8d
	addl	-300(%rbp), %r8d
	imull	-268(%rbp), %r8d
	movslq	%r8d, %r9
	addq	%r9, %rcx
	movq	-184(%rbp), %r8
	movq	-328(%rbp), %r9
	callq	*%rax
.LBB5_36:                               # %if.end.127
                                        #   in Loop: Header=BB5_33 Depth=3
	jmp	.LBB5_37
.LBB5_37:                               # %for.inc.128
                                        #   in Loop: Header=BB5_33 Depth=3
	movl	-300(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -300(%rbp)
	jmp	.LBB5_33
.LBB5_38:                               # %for.end.130
                                        #   in Loop: Header=BB5_23 Depth=2
	cmpl	$1, -316(%rbp)
	jne	.LBB5_44
# BB#39:                                # %if.then.133
                                        #   in Loop: Header=BB5_23 Depth=2
	movl	-304(%rbp), %eax
	movl	%eax, -300(%rbp)
.LBB5_40:                               # %for.cond.134
                                        #   Parent Loop BB5_14 Depth=1
                                        #     Parent Loop BB5_23 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-300(%rbp), %eax
	cmpl	-308(%rbp), %eax
	jg	.LBB5_43
# BB#41:                                # %for.body.137
                                        #   in Loop: Header=BB5_40 Depth=3
	movq	-48(%rbp), %rax
	movl	-28(%rbp), %edi
	movl	-268(%rbp), %esi
	movq	-176(%rbp), %rdx
	movq	-248(%rbp), %rcx
	movl	-292(%rbp), %r8d
	addl	-300(%rbp), %r8d
	imull	-268(%rbp), %r8d
	movslq	%r8d, %r9
	addq	%r9, %rcx
	movq	-184(%rbp), %r8
	movq	-328(%rbp), %r9
	callq	*%rax
# BB#42:                                # %for.inc.143
                                        #   in Loop: Header=BB5_40 Depth=3
	movl	-300(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -300(%rbp)
	jmp	.LBB5_40
.LBB5_43:                               # %for.end.145
                                        #   in Loop: Header=BB5_23 Depth=2
	jmp	.LBB5_44
.LBB5_44:                               # %if.end.146
                                        #   in Loop: Header=BB5_23 Depth=2
	movq	-40(%rbp), %rax
	movl	-28(%rbp), %edi
	movl	-268(%rbp), %esi
	movq	-184(%rbp), %rdx
	movq	-176(%rbp), %rcx
	movq	-192(%rbp), %r8
	movq	-328(%rbp), %r9
	callq	*%rax
# BB#45:                                # %for.inc.147
                                        #   in Loop: Header=BB5_23 Depth=2
	movl	-292(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -292(%rbp)
	jmp	.LBB5_23
.LBB5_46:                               # %for.end.149
                                        #   in Loop: Header=BB5_14 Depth=1
	leaq	-168(%rbp), %rdi
	movq	-200(%rbp), %rsi
	movl	-276(%rbp), %edx
	movl	-296(%rbp), %ecx
	movl	-284(%rbp), %eax
	subl	-276(%rbp), %eax
	movl	%eax, %r8d
	callq	gimp_pixel_rgn_set_row
	movl	$16, %eax
	movq	-232(%rbp), %rsi
	movq	%rsi, -256(%rbp)
	movq	-240(%rbp), %rsi
	movq	%rsi, -232(%rbp)
	movq	-248(%rbp), %rsi
	movq	%rsi, -240(%rbp)
	movq	-256(%rbp), %rsi
	movq	%rsi, -248(%rbp)
	movl	-296(%rbp), %ecx
	movl	%eax, -448(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-448(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB5_49
# BB#47:                                # %land.lhs.true
                                        #   in Loop: Header=BB5_14 Depth=1
	cmpq	$0, -24(%rbp)
	jne	.LBB5_49
# BB#48:                                # %if.then.154
                                        #   in Loop: Header=BB5_14 Depth=1
	cvtsi2sdl	-296(%rbp), %xmm0
	movl	-288(%rbp), %eax
	subl	-280(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -452(%rbp)        # 4-byte Spill
.LBB5_49:                               # %if.end.160
                                        #   in Loop: Header=BB5_14 Depth=1
	jmp	.LBB5_50
.LBB5_50:                               # %for.inc.161
                                        #   in Loop: Header=BB5_14 Depth=1
	movl	-296(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -296(%rbp)
	jmp	.LBB5_14
.LBB5_51:                               # %for.end.163
	cmpq	$0, -24(%rbp)
	je	.LBB5_53
# BB#52:                                # %if.then.165
	movq	-24(%rbp), %rax
	movq	%rax, -464(%rbp)        # 8-byte Spill
	callq	gimp_drawable_preview_get_type
	movq	-464(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-168(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_drawable_preview_draw_region
	jmp	.LBB5_54
.LBB5_53:                               # %if.else.168
	movsd	.LCPI5_0, %xmm0         # xmm0 = mem[0],zero
	callq	gimp_progress_update
	movq	-16(%rbp), %rdi
	movl	%eax, -468(%rbp)        # 4-byte Spill
	callq	gimp_drawable_flush
	movl	$1, %esi
	movq	-16(%rbp), %rdi
	movl	(%rdi), %edi
	callq	gimp_drawable_merge_shadow
	movq	-16(%rbp), %rcx
	movl	(%rcx), %edi
	movl	-276(%rbp), %esi
	movl	-280(%rbp), %edx
	movl	-284(%rbp), %r8d
	subl	-276(%rbp), %r8d
	movl	-288(%rbp), %r9d
	subl	-280(%rbp), %r9d
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%eax, -472(%rbp)        # 4-byte Spill
	callq	gimp_drawable_update
	movl	%eax, -476(%rbp)        # 4-byte Spill
.LBB5_54:                               # %if.end.176
	addq	$488, %rsp              # imm = 0x1E8
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end5:
	.size	value_propagate_body, .Lfunc_end5-value_propagate_body
	.cfi_endproc

	.align	16, 0x90
	.type	gtk_table_add_toggle,@function
gtk_table_add_toggle:                   # @gtk_table_add_toggle
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
	pushq	%rbx
	subq	$136, %rsp
.Ltmp28:
	.cfi_offset %rbx, -24
	movq	16(%rbp), %rax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movq	%r9, -48(%rbp)
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rdi
	callq	gtk_check_button_new_with_mnemonic
	movq	%rax, -64(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_table_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$5, %ecx
	xorl	%edx, %edx
	movq	-64(%rbp), %rsi
	movl	-28(%rbp), %r8d
	movl	-32(%rbp), %r10d
	movl	-36(%rbp), %r11d
	movl	-36(%rbp), %ebx
	addl	$1, %ebx
	movq	%rax, %rdi
	movl	%edx, -76(%rbp)         # 4-byte Spill
	movl	%r8d, %edx
	movl	%ecx, -80(%rbp)         # 4-byte Spill
	movl	%r10d, %ecx
	movl	%r11d, %r8d
	movl	%ebx, %r9d
	movl	$5, (%rsp)
	movl	$0, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	callq	gtk_table_attach
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.46, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-64(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	-56(%rbp), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-88(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_data
	movq	-64(%rbp), %rcx
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rcx
	movl	(%rcx), %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-64(%rbp), %rax
	addq	$136, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gtk_table_add_toggle, .Lfunc_end6-gtk_table_add_toggle
	.cfi_endproc

	.align	16, 0x90
	.type	vpropagate_toggle_button_update,@function
vpropagate_toggle_button_update:        # @vpropagate_toggle_button_update
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_toggle_button_update
	movl	$0, -24(%rbp)
	movl	$0, -20(%rbp)
.LBB7_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$4, -20(%rbp)
	jge	.LBB7_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB7_1 Depth=1
	xorl	%eax, %eax
	movl	$1, %ecx
	movslq	-20(%rbp), %rdx
	cmpl	$0, direction_mask_vec(,%rdx,4)
	cmovnel	%ecx, %eax
	movl	-20(%rbp), %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %eax
	orl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB7_1
.LBB7_4:                                # %for.end
	xorl	%eax, %eax
	movl	$1, %ecx
	movl	$2, %edx
	movl	-24(%rbp), %esi
	movl	%esi, vpvals+16
	cmpl	$0, propagate_alpha
	movl	%eax, %esi
	cmovnel	%edx, %esi
	cmpl	$0, propagate_value
	cmovnel	%ecx, %eax
	orl	%eax, %esi
	movl	%esi, vpvals+4
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
.Lfunc_end7:
	.size	vpropagate_toggle_button_update, .Lfunc_end7-vpropagate_toggle_button_update
	.cfi_endproc

	.align	16, 0x90
	.type	prepare_row,@function
prepare_row:                            # @prepare_row
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	cmpl	$0, -24(%rbp)
	jg	.LBB8_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	-28(%rbp), %r8d
	movl	%eax, %ecx
	callq	gimp_pixel_rgn_get_row
	jmp	.LBB8_6
.LBB8_2:                                # %if.else
	movl	-24(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	36(%rcx), %eax
	jl	.LBB8_4
# BB#3:                                 # %if.then.2
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %eax
	subl	$1, %eax
	movl	-28(%rbp), %r8d
	movl	%eax, %ecx
	callq	gimp_pixel_rgn_get_row
	jmp	.LBB8_5
.LBB8_4:                                # %if.else.3
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	movl	-28(%rbp), %r8d
	callq	gimp_pixel_rgn_get_row
.LBB8_5:                                # %if.end
	jmp	.LBB8_6
.LBB8_6:                                # %if.end.4
	movl	$0, -32(%rbp)
.LBB8_7:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	16(%rcx), %eax
	jge	.LBB8_10
# BB#8:                                 # %for.body
                                        #   in Loop: Header=BB8_7 Depth=1
	xorl	%eax, %eax
	movslq	-32(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movq	-8(%rbp), %rcx
	subl	16(%rcx), %eax
	addl	-32(%rbp), %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movb	%sil, (%rdx,%rcx)
	movl	-28(%rbp), %eax
	subl	$1, %eax
	movq	-8(%rbp), %rcx
	imull	16(%rcx), %eax
	addl	-32(%rbp), %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movl	-28(%rbp), %eax
	movq	-8(%rbp), %rcx
	imull	16(%rcx), %eax
	addl	-32(%rbp), %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movb	%sil, (%rdx,%rcx)
# BB#9:                                 # %for.inc
                                        #   in Loop: Header=BB8_7 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB8_7
.LBB8_10:                               # %for.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	prepare_row, .Lfunc_end8-prepare_row
	.cfi_endproc

	.align	16, 0x90
	.type	initialize_white,@function
initialize_white:                       # @initialize_white
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
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movl	-4(%rbp), %esi
	movl	%esi, %edi
	subl	$2, %edi
	movl	%esi, -36(%rbp)         # 4-byte Spill
	movl	%edi, -40(%rbp)         # 4-byte Spill
	jb	.LBB9_1
	jmp	.LBB9_7
.LBB9_7:                                # %entry
	movl	-36(%rbp), %eax         # 4-byte Reload
	addl	$-2, %eax
	subl	$2, %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
	jb	.LBB9_4
	jmp	.LBB9_5
.LBB9_1:                                # %sw.bb
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB9_3
# BB#2:                                 # %if.then
	movl	$1, %eax
	movl	%eax, %edi
	movl	$4, %eax
	movl	%eax, %esi
	callq	g_malloc_n
	movq	-32(%rbp), %rsi
	movq	%rax, (%rsi)
.LBB9_3:                                # %if.end
	movl	channel_mask, %eax
	movq	-24(%rbp), %rcx
	movzbl	(%rcx), %edx
	imull	%edx, %eax
	movq	-24(%rbp), %rcx
	movzbl	(%rcx), %edx
	imull	%edx, %eax
	movl	channel_mask+4, %edx
	movq	-24(%rbp), %rcx
	movzbl	1(%rcx), %esi
	imull	%esi, %edx
	movq	-24(%rbp), %rcx
	movzbl	1(%rcx), %esi
	imull	%esi, %edx
	addl	%edx, %eax
	movl	channel_mask+8, %edx
	movq	-24(%rbp), %rcx
	movzbl	2(%rcx), %esi
	imull	%esi, %edx
	movq	-24(%rbp), %rcx
	movzbl	2(%rcx), %esi
	imull	%esi, %edx
	addl	%edx, %eax
	cvtsi2ssl	%eax, %xmm0
	movq	-32(%rbp), %rcx
	movq	(%rcx), %rcx
	movss	%xmm0, (%rcx)
	jmp	.LBB9_6
.LBB9_4:                                # %sw.bb.18
	jmp	.LBB9_6
.LBB9_5:                                # %sw.default
	jmp	.LBB9_6
.LBB9_6:                                # %sw.epilog
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	initialize_white, .Lfunc_end9-initialize_white
	.cfi_endproc

	.align	16, 0x90
	.type	propagate_white,@function
propagate_white:                        # @propagate_white
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
	subq	$64, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	%r9, -40(%rbp)
	movl	-4(%rbp), %esi
	movl	%esi, %edi
	subl	$2, %edi
	movl	%esi, -48(%rbp)         # 4-byte Spill
	movl	%edi, -52(%rbp)         # 4-byte Spill
	jb	.LBB10_1
	jmp	.LBB10_11
.LBB10_11:                              # %entry
	movl	-48(%rbp), %eax         # 4-byte Reload
	addl	$-2, %eax
	subl	$2, %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
	jb	.LBB10_5
	jmp	.LBB10_9
.LBB10_1:                               # %sw.bb
	movl	channel_mask, %eax
	movq	-24(%rbp), %rcx
	movzbl	(%rcx), %edx
	imull	%edx, %eax
	movq	-24(%rbp), %rcx
	movzbl	(%rcx), %edx
	imull	%edx, %eax
	movl	channel_mask+4, %edx
	movq	-24(%rbp), %rcx
	movzbl	1(%rcx), %esi
	imull	%esi, %edx
	movq	-24(%rbp), %rcx
	movzbl	1(%rcx), %esi
	imull	%esi, %edx
	addl	%edx, %eax
	movl	channel_mask+8, %edx
	movq	-24(%rbp), %rcx
	movzbl	2(%rcx), %esi
	imull	%esi, %edx
	movq	-24(%rbp), %rcx
	movzbl	2(%rcx), %esi
	imull	%esi, %edx
	addl	%edx, %eax
	cvtsi2ssl	%eax, %xmm0
	movss	%xmm0, -44(%rbp)
	movq	-40(%rbp), %rcx
	movss	(%rcx), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movss	-44(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jbe	.LBB10_4
# BB#2:                                 # %land.lhs.true
	movl	$3, %edx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	value_difference_check
	cmpl	$0, %eax
	je	.LBB10_4
# BB#3:                                 # %if.then
	movss	-44(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movq	-40(%rbp), %rax
	movss	%xmm0, (%rax)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	movw	(%rcx), %dx
	movw	%dx, (%rax)
	movb	2(%rcx), %sil
	movb	%sil, 2(%rax)
.LBB10_4:                               # %if.end
	jmp	.LBB10_10
.LBB10_5:                               # %sw.bb.20
	movq	-32(%rbp), %rax
	movzbl	(%rax), %ecx
	movq	-24(%rbp), %rax
	movzbl	(%rax), %edx
	cmpl	%edx, %ecx
	jge	.LBB10_8
# BB#6:                                 # %land.lhs.true.25
	movl	$1, %edx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	value_difference_check
	cmpl	$0, %eax
	je	.LBB10_8
# BB#7:                                 # %if.then.28
	movq	-24(%rbp), %rax
	movb	(%rax), %cl
	movq	-32(%rbp), %rax
	movb	%cl, (%rax)
.LBB10_8:                               # %if.end.29
	jmp	.LBB10_10
.LBB10_9:                               # %sw.default
	jmp	.LBB10_10
.LBB10_10:                              # %sw.epilog
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	propagate_white, .Lfunc_end10-propagate_white
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI11_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	set_value,@function
set_value:                              # @set_value
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
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	%r9, -40(%rbp)
	movl	$0, -44(%rbp)
	movl	$0, -48(%rbp)
	movl	-4(%rbp), %esi
	movl	%esi, %ecx
	movq	%rcx, %rdx
	subq	$3, %rdx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	ja	.LBB11_5
# BB#19:                                # %entry
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	.LJTI11_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB11_1:                               # %sw.bb
	movl	$3, -44(%rbp)
	jmp	.LBB11_6
.LBB11_2:                               # %sw.bb.4
	movl	$3, -44(%rbp)
	movl	$3, -48(%rbp)
	jmp	.LBB11_6
.LBB11_3:                               # %sw.bb.5
	movl	$1, -44(%rbp)
	jmp	.LBB11_6
.LBB11_4:                               # %sw.bb.6
	movl	$1, -44(%rbp)
	movl	$1, -48(%rbp)
	jmp	.LBB11_6
.LBB11_5:                               # %sw.default
	jmp	.LBB11_6
.LBB11_6:                               # %sw.epilog
	movl	$0, -52(%rbp)
.LBB11_7:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-52(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jge	.LBB11_13
# BB#8:                                 # %for.body
                                        #   in Loop: Header=BB11_7 Depth=1
	movl	vpvals+4, %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	.LBB11_10
# BB#9:                                 # %if.then
                                        #   in Loop: Header=BB11_7 Depth=1
	movsd	vpvals+8(%rip), %xmm0   # xmm0 = mem[0],zero
	movslq	-52(%rbp), %rax
	movq	-16(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cvtsi2sdl	%edx, %xmm1
	movaps	%xmm0, %xmm2
	mulsd	%xmm1, %xmm2
	movsd	.LCPI11_0(%rip), %xmm1  # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movq	-24(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cvtsi2sdl	%edx, %xmm0
	mulsd	%xmm0, %xmm1
	addsd	%xmm1, %xmm2
	cvttsd2si	%xmm2, %edx
	movb	%dl, %sil
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -32(%rbp)
	movb	%sil, (%rax)
	jmp	.LBB11_11
.LBB11_10:                              # %if.else
                                        #   in Loop: Header=BB11_7 Depth=1
	movslq	-52(%rbp), %rax
	movq	-24(%rbp), %rcx
	movb	(%rcx,%rax), %dl
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -32(%rbp)
	movb	%dl, (%rax)
.LBB11_11:                              # %if.end
                                        #   in Loop: Header=BB11_7 Depth=1
	jmp	.LBB11_12
.LBB11_12:                              # %for.inc
                                        #   in Loop: Header=BB11_7 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB11_7
.LBB11_13:                              # %for.end
	cmpl	$0, -48(%rbp)
	je	.LBB11_18
# BB#14:                                # %if.then.18
	movl	vpvals+4, %eax
	andl	$2, %eax
	cmpl	$0, %eax
	je	.LBB11_16
# BB#15:                                # %if.then.21
	movsd	vpvals+8(%rip), %xmm0   # xmm0 = mem[0],zero
	movslq	-48(%rbp), %rax
	movq	-16(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cvtsi2sdl	%edx, %xmm1
	movaps	%xmm0, %xmm2
	mulsd	%xmm1, %xmm2
	movsd	.LCPI11_0(%rip), %xmm1  # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movq	-24(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cvtsi2sdl	%edx, %xmm0
	mulsd	%xmm0, %xmm1
	addsd	%xmm1, %xmm2
	cvttsd2si	%xmm2, %edx
	movb	%dl, %sil
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -32(%rbp)
	movb	%sil, (%rax)
	jmp	.LBB11_17
.LBB11_16:                              # %if.else.36
	movslq	-48(%rbp), %rax
	movq	-24(%rbp), %rcx
	movb	(%rcx,%rax), %dl
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -32(%rbp)
	movb	%dl, (%rax)
.LBB11_17:                              # %if.end.40
	jmp	.LBB11_18
.LBB11_18:                              # %if.end.41
	popq	%rbp
	retq
.Lfunc_end11:
	.size	set_value, .Lfunc_end11-set_value
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI11_0:
	.quad	.LBB11_1
	.quad	.LBB11_2
	.quad	.LBB11_3
	.quad	.LBB11_4

	.text
	.align	16, 0x90
	.type	initialize_black,@function
initialize_black:                       # @initialize_black
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
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movl	-4(%rbp), %esi
	movl	%esi, %edi
	subl	$2, %edi
	movl	%esi, -36(%rbp)         # 4-byte Spill
	movl	%edi, -40(%rbp)         # 4-byte Spill
	jb	.LBB12_1
	jmp	.LBB12_7
.LBB12_7:                               # %entry
	movl	-36(%rbp), %eax         # 4-byte Reload
	addl	$-2, %eax
	subl	$2, %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
	jb	.LBB12_4
	jmp	.LBB12_5
.LBB12_1:                               # %sw.bb
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB12_3
# BB#2:                                 # %if.then
	movl	$1, %eax
	movl	%eax, %edi
	movl	$4, %eax
	movl	%eax, %esi
	callq	g_malloc_n
	movq	-32(%rbp), %rsi
	movq	%rax, (%rsi)
.LBB12_3:                               # %if.end
	movl	channel_mask, %eax
	movq	-24(%rbp), %rcx
	movzbl	(%rcx), %edx
	imull	%edx, %eax
	movq	-24(%rbp), %rcx
	movzbl	(%rcx), %edx
	imull	%edx, %eax
	movl	channel_mask+4, %edx
	movq	-24(%rbp), %rcx
	movzbl	1(%rcx), %esi
	imull	%esi, %edx
	movq	-24(%rbp), %rcx
	movzbl	1(%rcx), %esi
	imull	%esi, %edx
	addl	%edx, %eax
	movl	channel_mask+8, %edx
	movq	-24(%rbp), %rcx
	movzbl	2(%rcx), %esi
	imull	%esi, %edx
	movq	-24(%rbp), %rcx
	movzbl	2(%rcx), %esi
	imull	%esi, %edx
	addl	%edx, %eax
	cvtsi2ssl	%eax, %xmm0
	movq	-32(%rbp), %rcx
	movq	(%rcx), %rcx
	movss	%xmm0, (%rcx)
	jmp	.LBB12_6
.LBB12_4:                               # %sw.bb.18
	jmp	.LBB12_6
.LBB12_5:                               # %sw.default
	jmp	.LBB12_6
.LBB12_6:                               # %sw.epilog
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	initialize_black, .Lfunc_end12-initialize_black
	.cfi_endproc

	.align	16, 0x90
	.type	propagate_black,@function
propagate_black:                        # @propagate_black
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
	subq	$64, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	%r9, -40(%rbp)
	movl	-4(%rbp), %esi
	movl	%esi, %edi
	subl	$2, %edi
	movl	%esi, -48(%rbp)         # 4-byte Spill
	movl	%edi, -52(%rbp)         # 4-byte Spill
	jb	.LBB13_1
	jmp	.LBB13_11
.LBB13_11:                              # %entry
	movl	-48(%rbp), %eax         # 4-byte Reload
	addl	$-2, %eax
	subl	$2, %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
	jb	.LBB13_5
	jmp	.LBB13_9
.LBB13_1:                               # %sw.bb
	movl	channel_mask, %eax
	movq	-24(%rbp), %rcx
	movzbl	(%rcx), %edx
	imull	%edx, %eax
	movq	-24(%rbp), %rcx
	movzbl	(%rcx), %edx
	imull	%edx, %eax
	movl	channel_mask+4, %edx
	movq	-24(%rbp), %rcx
	movzbl	1(%rcx), %esi
	imull	%esi, %edx
	movq	-24(%rbp), %rcx
	movzbl	1(%rcx), %esi
	imull	%esi, %edx
	addl	%edx, %eax
	movl	channel_mask+8, %edx
	movq	-24(%rbp), %rcx
	movzbl	2(%rcx), %esi
	imull	%esi, %edx
	movq	-24(%rbp), %rcx
	movzbl	2(%rcx), %esi
	imull	%esi, %edx
	addl	%edx, %eax
	cvtsi2ssl	%eax, %xmm0
	movss	%xmm0, -44(%rbp)
	movss	-44(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movq	-40(%rbp), %rcx
	movss	(%rcx), %xmm1           # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jbe	.LBB13_4
# BB#2:                                 # %land.lhs.true
	movl	$3, %edx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	value_difference_check
	cmpl	$0, %eax
	je	.LBB13_4
# BB#3:                                 # %if.then
	movss	-44(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movq	-40(%rbp), %rax
	movss	%xmm0, (%rax)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	movw	(%rcx), %dx
	movw	%dx, (%rax)
	movb	2(%rcx), %sil
	movb	%sil, 2(%rax)
.LBB13_4:                               # %if.end
	jmp	.LBB13_10
.LBB13_5:                               # %sw.bb.20
	movq	-24(%rbp), %rax
	movzbl	(%rax), %ecx
	movq	-32(%rbp), %rax
	movzbl	(%rax), %edx
	cmpl	%edx, %ecx
	jge	.LBB13_8
# BB#6:                                 # %land.lhs.true.25
	movl	$1, %edx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	value_difference_check
	cmpl	$0, %eax
	je	.LBB13_8
# BB#7:                                 # %if.then.28
	movq	-24(%rbp), %rax
	movb	(%rax), %cl
	movq	-32(%rbp), %rax
	movb	%cl, (%rax)
.LBB13_8:                               # %if.end.29
	jmp	.LBB13_10
.LBB13_9:                               # %sw.default
	jmp	.LBB13_10
.LBB13_10:                              # %sw.epilog
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	propagate_black, .Lfunc_end13-propagate_black
	.cfi_endproc

	.align	16, 0x90
	.type	initialize_middle,@function
initialize_middle:                      # @initialize_middle
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
	subq	$64, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	-32(%rbp), %rcx
	cmpq	$0, (%rcx)
	jne	.LBB14_2
# BB#1:                                 # %if.then
	movl	$1, %eax
	movl	%eax, %edi
	movl	$48, %eax
	movl	%eax, %esi
	callq	g_malloc_n
	movq	-32(%rbp), %rsi
	movq	%rax, (%rsi)
.LBB14_2:                               # %if.end
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movl	$0, -36(%rbp)
.LBB14_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jge	.LBB14_6
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB14_3 Depth=1
	movslq	-36(%rbp), %rax
	movq	-24(%rbp), %rcx
	movb	(%rcx,%rax), %dl
	movslq	-36(%rbp), %rax
	movq	-48(%rbp), %rcx
	movb	%dl, 40(%rcx,%rax)
	movslq	-36(%rbp), %rax
	movq	-48(%rbp), %rcx
	movb	%dl, 24(%rcx,%rax)
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB14_3 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB14_3
.LBB14_6:                               # %for.end
	movl	-4(%rbp), %eax
	movl	%eax, %ecx
	subl	$2, %ecx
	movl	%eax, -52(%rbp)         # 4-byte Spill
	movl	%ecx, -56(%rbp)         # 4-byte Spill
	jb	.LBB14_7
	jmp	.LBB14_11
.LBB14_11:                              # %for.end
	movl	-52(%rbp), %eax         # 4-byte Reload
	addl	$-2, %eax
	subl	$2, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	jb	.LBB14_8
	jmp	.LBB14_9
.LBB14_7:                               # %sw.bb
	movl	channel_mask, %eax
	movq	-24(%rbp), %rcx
	movzbl	(%rcx), %edx
	imull	%edx, %eax
	movq	-24(%rbp), %rcx
	movzbl	(%rcx), %edx
	imull	%edx, %eax
	movl	channel_mask+4, %edx
	movq	-24(%rbp), %rcx
	movzbl	1(%rcx), %esi
	imull	%esi, %edx
	movq	-24(%rbp), %rcx
	movzbl	1(%rcx), %esi
	imull	%esi, %edx
	addl	%edx, %eax
	movl	channel_mask+8, %edx
	movq	-24(%rbp), %rcx
	movzbl	2(%rcx), %esi
	imull	%esi, %edx
	movq	-24(%rbp), %rcx
	movzbl	2(%rcx), %esi
	imull	%esi, %edx
	addl	%edx, %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rdi
	movq	%rcx, 8(%rdi)
	jmp	.LBB14_10
.LBB14_8:                               # %sw.bb.26
	movq	-24(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, %eax
	movq	-48(%rbp), %rdx
	movq	%rax, 8(%rdx)
	jmp	.LBB14_10
.LBB14_9:                               # %sw.default
	jmp	.LBB14_10
.LBB14_10:                              # %sw.epilog
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, 32(%rcx)
	movq	-48(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	-48(%rbp), %rax
	movw	$0, 2(%rax)
	movq	-48(%rbp), %rax
	movw	$0, (%rax)
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	initialize_middle, .Lfunc_end14-initialize_middle
	.cfi_endproc

	.align	16, 0x90
	.type	propagate_middle,@function
propagate_middle:                       # @propagate_middle
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
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	%r9, -40(%rbp)
	movq	%r9, -56(%rbp)
	movl	-4(%rbp), %esi
	movl	%esi, %edi
	subl	$2, %edi
	movl	%esi, -60(%rbp)         # 4-byte Spill
	movl	%edi, -64(%rbp)         # 4-byte Spill
	jb	.LBB15_1
	jmp	.LBB15_17
.LBB15_17:                              # %entry
	movl	-60(%rbp), %eax         # 4-byte Reload
	addl	$-2, %eax
	subl	$2, %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	jb	.LBB15_8
	jmp	.LBB15_15
.LBB15_1:                               # %sw.bb
	movl	channel_mask, %eax
	movq	-24(%rbp), %rcx
	movzbl	(%rcx), %edx
	imull	%edx, %eax
	movq	-24(%rbp), %rcx
	movzbl	(%rcx), %edx
	imull	%edx, %eax
	movl	channel_mask+4, %edx
	movq	-24(%rbp), %rcx
	movzbl	1(%rcx), %esi
	imull	%esi, %edx
	movq	-24(%rbp), %rcx
	movzbl	1(%rcx), %esi
	imull	%esi, %edx
	addl	%edx, %eax
	movl	channel_mask+8, %edx
	movq	-24(%rbp), %rcx
	movzbl	2(%rcx), %esi
	imull	%esi, %edx
	movq	-24(%rbp), %rcx
	movzbl	2(%rcx), %esi
	imull	%esi, %edx
	addl	%edx, %eax
	cvtsi2ssl	%eax, %xmm0
	movss	%xmm0, -44(%rbp)
	movss	-44(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movq	-56(%rbp), %rcx
	cvtsi2ssq	16(%rcx), %xmm1
	ucomiss	%xmm0, %xmm1
	jb	.LBB15_4
# BB#2:                                 # %land.lhs.true
	movl	$3, %edx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	value_difference_check
	cmpl	$0, %eax
	je	.LBB15_4
# BB#3:                                 # %if.then
	cvttss2si	-44(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	-56(%rbp), %rax
	movq	-24(%rbp), %rcx
	movw	(%rcx), %dx
	movw	%dx, 24(%rax)
	movb	2(%rcx), %sil
	movb	%sil, 26(%rax)
	movq	-56(%rbp), %rax
	movw	$1, (%rax)
.LBB15_4:                               # %if.end
	movq	-56(%rbp), %rax
	cvtsi2ssq	32(%rax), %xmm0
	movss	-44(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jb	.LBB15_7
# BB#5:                                 # %land.lhs.true.27
	movl	$3, %edx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	value_difference_check
	cmpl	$0, %eax
	je	.LBB15_7
# BB#6:                                 # %if.then.30
	cvttss2si	-44(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, 32(%rcx)
	movq	-56(%rbp), %rax
	movq	-24(%rbp), %rcx
	movw	(%rcx), %dx
	movw	%dx, 40(%rax)
	movb	2(%rcx), %sil
	movb	%sil, 42(%rax)
	movq	-56(%rbp), %rax
	movw	$1, 2(%rax)
.LBB15_7:                               # %if.end.33
	jmp	.LBB15_16
.LBB15_8:                               # %sw.bb.34
	movq	-24(%rbp), %rax
	movzbl	(%rax), %ecx
	movq	-56(%rbp), %rax
	movzbl	24(%rax), %edx
	cmpl	%edx, %ecx
	jg	.LBB15_11
# BB#9:                                 # %land.lhs.true.41
	movl	$1, %edx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	value_difference_check
	cmpl	$0, %eax
	je	.LBB15_11
# BB#10:                                # %if.then.44
	movq	-24(%rbp), %rax
	movb	(%rax), %cl
	movq	-56(%rbp), %rax
	movb	%cl, 24(%rax)
	movq	-56(%rbp), %rax
	movw	$1, (%rax)
.LBB15_11:                              # %if.end.48
	movq	-56(%rbp), %rax
	movzbl	40(%rax), %ecx
	movq	-24(%rbp), %rax
	movzbl	(%rax), %edx
	cmpl	%edx, %ecx
	jg	.LBB15_14
# BB#12:                                # %land.lhs.true.55
	movl	$1, %edx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	value_difference_check
	cmpl	$0, %eax
	je	.LBB15_14
# BB#13:                                # %if.then.58
	movq	-24(%rbp), %rax
	movb	(%rax), %cl
	movq	-56(%rbp), %rax
	movb	%cl, 40(%rax)
	movq	-56(%rbp), %rax
	movw	$1, 2(%rax)
.LBB15_14:                              # %if.end.62
	jmp	.LBB15_16
.LBB15_15:                              # %sw.default
	jmp	.LBB15_16
.LBB15_16:                              # %sw.epilog
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	propagate_middle, .Lfunc_end15-propagate_middle
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI16_0:
	.quad	4607182418800017408     # double 1
.LCPI16_1:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	set_middle_to_peak,@function
set_middle_to_peak:                     # @set_middle_to_peak
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
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	%r9, -40(%rbp)
	movl	$0, -44(%rbp)
	movl	$0, -48(%rbp)
	movq	-40(%rbp), %rcx
	movq	%rcx, -64(%rbp)
	movl	peak_min, %esi
	movq	-64(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	-64(%rbp), %rdx
	cmpq	8(%rdx), %rcx
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	andl	%edi, %esi
	cmpl	$0, %esi
	jne	.LBB16_3
# BB#1:                                 # %lor.lhs.false
	movl	peak_max, %eax
	movq	-64(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	-64(%rbp), %rdx
	cmpq	8(%rdx), %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	andl	%edi, %eax
	cmpl	$0, %eax
	jne	.LBB16_3
# BB#2:                                 # %if.then
	jmp	.LBB16_25
.LBB16_3:                               # %if.end
	cmpl	$0, peak_includes_equals
	jne	.LBB16_7
# BB#4:                                 # %land.lhs.true
	movl	peak_min, %eax
	movq	-64(%rbp), %rcx
	cmpw	$0, (%rcx)
	setne	%dl
	xorb	$-1, %dl
	andb	$1, %dl
	movzbl	%dl, %esi
	andl	%esi, %eax
	cmpl	$0, %eax
	jne	.LBB16_6
# BB#5:                                 # %lor.lhs.false.14
	movl	peak_max, %eax
	movq	-64(%rbp), %rcx
	cmpw	$0, 2(%rcx)
	setne	%dl
	xorb	$-1, %dl
	andb	$1, %dl
	movzbl	%dl, %esi
	andl	%esi, %eax
	cmpl	$0, %eax
	je	.LBB16_7
.LBB16_6:                               # %if.then.20
	jmp	.LBB16_25
.LBB16_7:                               # %if.end.21
	movl	-4(%rbp), %eax
	movl	%eax, %ecx
	movq	%rcx, %rdx
	subq	$3, %rdx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	ja	.LBB16_12
# BB#26:                                # %if.end.21
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	.LJTI16_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB16_8:                               # %sw.bb
	movl	$3, -44(%rbp)
	jmp	.LBB16_13
.LBB16_9:                               # %sw.bb.22
	movl	$3, -44(%rbp)
	movl	$3, -48(%rbp)
	jmp	.LBB16_13
.LBB16_10:                              # %sw.bb.23
	movl	$1, -44(%rbp)
	jmp	.LBB16_13
.LBB16_11:                              # %sw.bb.24
	movl	$1, -44(%rbp)
	movl	$1, -48(%rbp)
	jmp	.LBB16_13
.LBB16_12:                              # %sw.default
	jmp	.LBB16_13
.LBB16_13:                              # %sw.epilog
	movl	$0, -52(%rbp)
.LBB16_14:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-52(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jge	.LBB16_20
# BB#15:                                # %for.body
                                        #   in Loop: Header=BB16_14 Depth=1
	movl	vpvals+4, %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	.LBB16_17
# BB#16:                                # %if.then.29
                                        #   in Loop: Header=BB16_14 Depth=1
	movsd	vpvals+8(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI16_1(%rip), %xmm1  # xmm1 = mem[0],zero
	movaps	%xmm0, %xmm2
	mulsd	%xmm1, %xmm2
	movslq	-52(%rbp), %rax
	movq	-64(%rbp), %rcx
	movzbl	24(%rcx,%rax), %edx
	movzbl	40(%rcx,%rax), %esi
	addl	%esi, %edx
	cvtsi2sdl	%edx, %xmm1
	mulsd	%xmm1, %xmm2
	movsd	.LCPI16_0(%rip), %xmm1  # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movq	-16(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cvtsi2sdl	%edx, %xmm0
	mulsd	%xmm0, %xmm1
	addsd	%xmm1, %xmm2
	cvttsd2si	%xmm2, %edx
	movb	%dl, %dil
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -32(%rbp)
	movb	%dil, (%rax)
	jmp	.LBB16_18
.LBB16_17:                              # %if.else
                                        #   in Loop: Header=BB16_14 Depth=1
	movslq	-52(%rbp), %rax
	movq	-16(%rbp), %rcx
	movb	(%rcx,%rax), %dl
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -32(%rbp)
	movb	%dl, (%rax)
.LBB16_18:                              # %if.end.46
                                        #   in Loop: Header=BB16_14 Depth=1
	jmp	.LBB16_19
.LBB16_19:                              # %for.inc
                                        #   in Loop: Header=BB16_14 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB16_14
.LBB16_20:                              # %for.end
	cmpl	$0, -48(%rbp)
	je	.LBB16_25
# BB#21:                                # %if.then.48
	movl	vpvals+4, %eax
	andl	$2, %eax
	cmpl	$0, %eax
	je	.LBB16_23
# BB#22:                                # %if.then.51
	movsd	vpvals+8(%rip), %xmm0   # xmm0 = mem[0],zero
	movslq	-48(%rbp), %rax
	movq	-24(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cvtsi2sdl	%edx, %xmm1
	movaps	%xmm0, %xmm2
	mulsd	%xmm1, %xmm2
	movsd	.LCPI16_0(%rip), %xmm1  # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movq	-16(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cvtsi2sdl	%edx, %xmm0
	mulsd	%xmm0, %xmm1
	addsd	%xmm1, %xmm2
	cvttsd2si	%xmm2, %edx
	movb	%dl, %sil
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -32(%rbp)
	movb	%sil, (%rax)
	jmp	.LBB16_24
.LBB16_23:                              # %if.else.66
	movslq	-48(%rbp), %rax
	movq	-16(%rbp), %rcx
	movb	(%rcx,%rax), %dl
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -32(%rbp)
	movb	%dl, (%rax)
.LBB16_24:                              # %if.end.70
	jmp	.LBB16_25
.LBB16_25:                              # %if.end.71
	popq	%rbp
	retq
.Lfunc_end16:
	.size	set_middle_to_peak, .Lfunc_end16-set_middle_to_peak
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI16_0:
	.quad	.LBB16_8
	.quad	.LBB16_9
	.quad	.LBB16_10
	.quad	.LBB16_11

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI17_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	set_foreground_to_peak,@function
set_foreground_to_peak:                 # @set_foreground_to_peak
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
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	%r9, -40(%rbp)
	movl	$0, -44(%rbp)
	movq	-40(%rbp), %rcx
	movq	%rcx, -56(%rbp)
	movl	peak_min, %esi
	movq	-56(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	-56(%rbp), %rdx
	cmpq	8(%rdx), %rcx
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	andl	%edi, %esi
	cmpl	$0, %esi
	jne	.LBB17_3
# BB#1:                                 # %lor.lhs.false
	movl	peak_max, %eax
	movq	-56(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	-56(%rbp), %rdx
	cmpq	8(%rdx), %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	andl	%edi, %eax
	cmpl	$0, %eax
	jne	.LBB17_3
# BB#2:                                 # %if.then
	jmp	.LBB17_20
.LBB17_3:                               # %if.end
	cmpl	$0, peak_includes_equals
	je	.LBB17_7
# BB#4:                                 # %land.lhs.true
	movl	peak_min, %eax
	movq	-56(%rbp), %rcx
	cmpw	$0, (%rcx)
	setne	%dl
	xorb	$-1, %dl
	andb	$1, %dl
	movzbl	%dl, %esi
	andl	%esi, %eax
	cmpl	$0, %eax
	jne	.LBB17_6
# BB#5:                                 # %lor.lhs.false.13
	movl	peak_max, %eax
	movq	-56(%rbp), %rcx
	cmpw	$0, 2(%rcx)
	setne	%dl
	xorb	$-1, %dl
	andb	$1, %dl
	movzbl	%dl, %esi
	andl	%esi, %eax
	cmpl	$0, %eax
	je	.LBB17_7
.LBB17_6:                               # %if.then.19
	jmp	.LBB17_20
.LBB17_7:                               # %if.end.20
	movl	-4(%rbp), %eax
	movl	%eax, %ecx
	movq	%rcx, %rdx
	subq	$3, %rdx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	ja	.LBB17_12
# BB#21:                                # %if.end.20
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	.LJTI17_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB17_8:                               # %sw.bb
	movl	$3, -44(%rbp)
	jmp	.LBB17_13
.LBB17_9:                               # %sw.bb.21
	movl	$3, -44(%rbp)
	jmp	.LBB17_13
.LBB17_10:                              # %sw.bb.22
	movl	$1, -44(%rbp)
	jmp	.LBB17_13
.LBB17_11:                              # %sw.bb.23
	movl	$1, -44(%rbp)
	jmp	.LBB17_13
.LBB17_12:                              # %sw.default
	jmp	.LBB17_13
.LBB17_13:                              # %sw.epilog
	movl	$0, -48(%rbp)
.LBB17_14:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-48(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jge	.LBB17_20
# BB#15:                                # %for.body
                                        #   in Loop: Header=BB17_14 Depth=1
	movl	vpvals+4, %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	.LBB17_17
# BB#16:                                # %if.then.28
                                        #   in Loop: Header=BB17_14 Depth=1
	movsd	vpvals+8(%rip), %xmm0   # xmm0 = mem[0],zero
	movslq	-48(%rbp), %rax
	movzbl	fore(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm1
	movaps	%xmm0, %xmm2
	mulsd	%xmm1, %xmm2
	movsd	.LCPI17_0(%rip), %xmm1  # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movq	-16(%rbp), %rdx
	movzbl	(%rdx,%rax), %ecx
	cvtsi2sdl	%ecx, %xmm0
	mulsd	%xmm0, %xmm1
	addsd	%xmm1, %xmm2
	cvttsd2si	%xmm2, %ecx
	movb	%cl, %sil
	movq	-32(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -32(%rbp)
	movb	%sil, (%rax)
	jmp	.LBB17_18
.LBB17_17:                              # %if.else
                                        #   in Loop: Header=BB17_14 Depth=1
	movslq	-48(%rbp), %rax
	movq	-16(%rbp), %rcx
	movb	(%rcx,%rax), %dl
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -32(%rbp)
	movb	%dl, (%rax)
.LBB17_18:                              # %if.end.40
                                        #   in Loop: Header=BB17_14 Depth=1
	jmp	.LBB17_19
.LBB17_19:                              # %for.inc
                                        #   in Loop: Header=BB17_14 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB17_14
.LBB17_20:                              # %for.end
	popq	%rbp
	retq
.Lfunc_end17:
	.size	set_foreground_to_peak, .Lfunc_end17-set_foreground_to_peak
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI17_0:
	.quad	.LBB17_8
	.quad	.LBB17_9
	.quad	.LBB17_10
	.quad	.LBB17_11

	.text
	.align	16, 0x90
	.type	initialize_foreground,@function
initialize_foreground:                  # @initialize_foreground
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
	subq	$96, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	-32(%rbp), %rcx
	cmpq	$0, (%rcx)
	jne	.LBB18_2
# BB#1:                                 # %if.then
	movl	$3, %eax
	movl	%eax, %edi
	movl	$1, %eax
	movl	%eax, %esi
	callq	g_malloc_n
	leaq	-64(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_context_get_foreground
	leaq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movq	-72(%rbp), %rcx
	addq	$1, %rcx
	movq	-72(%rbp), %rdx
	addq	$2, %rdx
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	movq	%rcx, %rdx
	movq	-80(%rbp), %rcx         # 8-byte Reload
	movl	%eax, -84(%rbp)         # 4-byte Spill
	callq	gimp_rgb_get_uchar
.LBB18_2:                               # %if.end
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	initialize_foreground, .Lfunc_end18-initialize_foreground
	.cfi_endproc

	.align	16, 0x90
	.type	propagate_a_color,@function
propagate_a_color:                      # @propagate_a_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp65:
	.cfi_def_cfa_offset 16
.Ltmp66:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp67:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	%r9, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	-4(%rbp), %esi
	movl	%esi, %edi
	subl	$2, %edi
	movl	%esi, -52(%rbp)         # 4-byte Spill
	movl	%edi, -56(%rbp)         # 4-byte Spill
	jb	.LBB19_1
	jmp	.LBB19_10
.LBB19_10:                              # %entry
	movl	-52(%rbp), %eax         # 4-byte Reload
	addl	$-2, %eax
	subl	$2, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	jb	.LBB19_7
	jmp	.LBB19_8
.LBB19_1:                               # %sw.bb
	movq	-24(%rbp), %rax
	movzbl	(%rax), %ecx
	movq	-48(%rbp), %rax
	movzbl	(%rax), %edx
	cmpl	%edx, %ecx
	jne	.LBB19_6
# BB#2:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movzbl	1(%rax), %ecx
	movq	-48(%rbp), %rax
	movzbl	1(%rax), %edx
	cmpl	%edx, %ecx
	jne	.LBB19_6
# BB#3:                                 # %land.lhs.true.11
	movq	-24(%rbp), %rax
	movzbl	2(%rax), %ecx
	movq	-48(%rbp), %rax
	movzbl	2(%rax), %edx
	cmpl	%edx, %ecx
	jne	.LBB19_6
# BB#4:                                 # %land.lhs.true.18
	movl	$3, %edx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	value_difference_check
	cmpl	$0, %eax
	je	.LBB19_6
# BB#5:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	movw	(%rcx), %dx
	movw	%dx, (%rax)
	movb	2(%rcx), %sil
	movb	%sil, 2(%rax)
.LBB19_6:                               # %if.end
	jmp	.LBB19_9
.LBB19_7:                               # %sw.bb.19
	jmp	.LBB19_9
.LBB19_8:                               # %sw.default
	jmp	.LBB19_9
.LBB19_9:                               # %sw.epilog
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	propagate_a_color, .Lfunc_end19-propagate_a_color
	.cfi_endproc

	.align	16, 0x90
	.type	initialize_background,@function
initialize_background:                  # @initialize_background
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp68:
	.cfi_def_cfa_offset 16
.Ltmp69:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp70:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	-32(%rbp), %rcx
	cmpq	$0, (%rcx)
	jne	.LBB20_2
# BB#1:                                 # %if.then
	movl	$3, %eax
	movl	%eax, %edi
	movl	$1, %eax
	movl	%eax, %esi
	callq	g_malloc_n
	leaq	-64(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_context_get_background
	leaq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movq	-72(%rbp), %rcx
	addq	$1, %rcx
	movq	-72(%rbp), %rdx
	addq	$2, %rdx
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	movq	%rcx, %rdx
	movq	-80(%rbp), %rcx         # 8-byte Reload
	movl	%eax, -84(%rbp)         # 4-byte Spill
	callq	gimp_rgb_get_uchar
.LBB20_2:                               # %if.end
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	initialize_background, .Lfunc_end20-initialize_background
	.cfi_endproc

	.align	16, 0x90
	.type	propagate_opaque,@function
propagate_opaque:                       # @propagate_opaque
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp71:
	.cfi_def_cfa_offset 16
.Ltmp72:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp73:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	%r9, -40(%rbp)
	movl	-4(%rbp), %esi
	movl	%esi, %edi
	subl	$1, %edi
	movl	%esi, -44(%rbp)         # 4-byte Spill
	movl	%edi, -48(%rbp)         # 4-byte Spill
	je	.LBB21_1
	jmp	.LBB21_11
.LBB21_11:                              # %entry
	movl	-44(%rbp), %eax         # 4-byte Reload
	subl	$3, %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
	je	.LBB21_5
	jmp	.LBB21_9
.LBB21_1:                               # %sw.bb
	movq	-32(%rbp), %rax
	movzbl	3(%rax), %ecx
	movq	-24(%rbp), %rax
	movzbl	3(%rax), %edx
	cmpl	%edx, %ecx
	jge	.LBB21_4
# BB#2:                                 # %land.lhs.true
	movl	$3, %edx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	value_difference_check
	cmpl	$0, %eax
	je	.LBB21_4
# BB#3:                                 # %if.then
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movslq	-8(%rbp), %rax
	shlq	$0, %rax
	movq	%rax, %rdx
	callq	memcpy
.LBB21_4:                               # %if.end
	jmp	.LBB21_10
.LBB21_5:                               # %sw.bb.5
	movq	-32(%rbp), %rax
	movzbl	1(%rax), %ecx
	movq	-24(%rbp), %rax
	movzbl	1(%rax), %edx
	cmpl	%edx, %ecx
	jge	.LBB21_8
# BB#6:                                 # %land.lhs.true.12
	movl	$1, %edx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	value_difference_check
	cmpl	$0, %eax
	je	.LBB21_8
# BB#7:                                 # %if.then.15
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movslq	-8(%rbp), %rax
	shlq	$0, %rax
	movq	%rax, %rdx
	callq	memcpy
.LBB21_8:                               # %if.end.18
	jmp	.LBB21_10
.LBB21_9:                               # %sw.default
	jmp	.LBB21_10
.LBB21_10:                              # %sw.epilog
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	propagate_opaque, .Lfunc_end21-propagate_opaque
	.cfi_endproc

	.align	16, 0x90
	.type	propagate_transparent,@function
propagate_transparent:                  # @propagate_transparent
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp74:
	.cfi_def_cfa_offset 16
.Ltmp75:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp76:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	%r9, -40(%rbp)
	movl	-4(%rbp), %esi
	movl	%esi, %edi
	subl	$1, %edi
	movl	%esi, -44(%rbp)         # 4-byte Spill
	movl	%edi, -48(%rbp)         # 4-byte Spill
	je	.LBB22_1
	jmp	.LBB22_11
.LBB22_11:                              # %entry
	movl	-44(%rbp), %eax         # 4-byte Reload
	subl	$3, %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
	je	.LBB22_5
	jmp	.LBB22_9
.LBB22_1:                               # %sw.bb
	movq	-24(%rbp), %rax
	movzbl	3(%rax), %ecx
	movq	-32(%rbp), %rax
	movzbl	3(%rax), %edx
	cmpl	%edx, %ecx
	jge	.LBB22_4
# BB#2:                                 # %land.lhs.true
	movl	$3, %edx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	value_difference_check
	cmpl	$0, %eax
	je	.LBB22_4
# BB#3:                                 # %if.then
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movslq	-8(%rbp), %rax
	shlq	$0, %rax
	movq	%rax, %rdx
	callq	memcpy
.LBB22_4:                               # %if.end
	jmp	.LBB22_10
.LBB22_5:                               # %sw.bb.5
	movq	-24(%rbp), %rax
	movzbl	1(%rax), %ecx
	movq	-32(%rbp), %rax
	movzbl	1(%rax), %edx
	cmpl	%edx, %ecx
	jge	.LBB22_8
# BB#6:                                 # %land.lhs.true.12
	movl	$1, %edx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	value_difference_check
	cmpl	$0, %eax
	je	.LBB22_8
# BB#7:                                 # %if.then.15
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movslq	-8(%rbp), %rax
	shlq	$0, %rax
	movq	%rax, %rdx
	callq	memcpy
.LBB22_8:                               # %if.end.18
	jmp	.LBB22_10
.LBB22_9:                               # %sw.default
	jmp	.LBB22_10
.LBB22_10:                              # %sw.epilog
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	propagate_transparent, .Lfunc_end22-propagate_transparent
	.cfi_endproc

	.align	16, 0x90
	.type	value_difference_check,@function
value_difference_check:                 # @value_difference_check
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp77:
	.cfi_def_cfa_offset 16
.Ltmp78:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp79:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	$0, -32(%rbp)
.LBB23_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB23_9
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB23_1 Depth=1
	movslq	-32(%rbp), %rax
	cmpl	$0, channel_mask(,%rax,4)
	je	.LBB23_7
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB23_1 Depth=1
	movslq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movslq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	movzbl	(%rcx,%rax), %esi
	subl	%esi, %edx
	movl	%edx, %edi
	callq	abs
	movl	%eax, -36(%rbp)
	movl	vpvals+20, %eax
	cmpl	-36(%rbp), %eax
	jg	.LBB23_5
# BB#4:                                 # %land.lhs.true
                                        #   in Loop: Header=BB23_1 Depth=1
	movl	-36(%rbp), %eax
	cmpl	vpvals+24, %eax
	jle	.LBB23_6
.LBB23_5:                               # %if.then.11
	movl	$0, -4(%rbp)
	jmp	.LBB23_10
.LBB23_6:                               # %if.end
                                        #   in Loop: Header=BB23_1 Depth=1
	jmp	.LBB23_7
.LBB23_7:                               # %if.end.12
                                        #   in Loop: Header=BB23_1 Depth=1
	jmp	.LBB23_8
.LBB23_8:                               # %for.inc
                                        #   in Loop: Header=BB23_1 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB23_1
.LBB23_9:                               # %for.end
	movl	$1, -4(%rbp)
.LBB23_10:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	value_difference_check, .Lfunc_end23-value_difference_check
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
	.size	query.args, 216

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
	.asciz	"propagate-mode"
	.size	.L.str.6, 15

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"propagate 0:white, 1:black, 2:middle value 3:foreground to peak, 4:foreground, 5:background, 6:opaque, 7:transparent"
	.size	.L.str.7, 117

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"propagating-channel"
	.size	.L.str.8, 20

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"channels which values are propagated"
	.size	.L.str.9, 37

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"propagating-rate"
	.size	.L.str.10, 17

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"0.0 <= propagatating_rate <= 1.0"
	.size	.L.str.11, 33

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"direction-mask"
	.size	.L.str.12, 15

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"0 <= direction-mask <= 15"
	.size	.L.str.13, 26

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"lower-limit"
	.size	.L.str.14, 12

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"0 <= lower-limit <= 255"
	.size	.L.str.15, 24

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"upper-limit"
	.size	.L.str.16, 12

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"0 <= upper-limit <= 255"
	.size	.L.str.17, 24

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"plug-in-vpropagate"
	.size	.L.str.18, 19

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Propagate certain colors to neighboring pixels"
	.size	.L.str.19, 47

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"Propagate values of the layer"
	.size	.L.str.20, 30

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Shuji Narazaki (narazaki@InetQ.or.jp)"
	.size	.L.str.21, 38

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Shuji Narazaki"
	.size	.L.str.22, 15

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"1996-1997"
	.size	.L.str.23, 10

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"_Value Propagate..."
	.size	.L.str.24, 20

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"RGB*, GRAY*"
	.size	.L.str.25, 12

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"plug-in-erode"
	.size	.L.str.26, 14

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"Shrink lighter areas of the image"
	.size	.L.str.27, 34

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"Erode image"
	.size	.L.str.28, 12

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"E_rode"
	.size	.L.str.29, 7

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"plug-in-dilate"
	.size	.L.str.30, 15

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"Grow lighter areas of the image"
	.size	.L.str.31, 32

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"Dilate image"
	.size	.L.str.32, 13

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"_Dilate"
	.size	.L.str.33, 8

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"<Image>/Filters/Distorts"
	.size	.L.str.34, 25

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"<Image>/Filters/Generic"
	.size	.L.str.35, 24

	.type	run.values,@object      # @run.values
	.local	run.values
	.comm	run.values,40,16
	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"gimp20-std-plug-ins"
	.size	.L.str.36, 20

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"UTF-8"
	.size	.L.str.37, 6

	.type	vpvals,@object          # @vpvals
	.data
	.align	8
vpvals:
	.long	0                       # 0x0
	.long	3                       # 0x3
	.quad	4607182418800017408     # double 1
	.long	15                      # 0xf
	.long	0                       # 0x0
	.long	255                     # 0xff
	.zero	4
	.size	vpvals, 32

	.type	propagate_alpha,@object # @propagate_alpha
	.local	propagate_alpha
	.comm	propagate_alpha,4,4
	.type	propagate_value,@object # @propagate_value
	.local	propagate_value
	.comm	propagate_value,4,4
	.type	direction_mask_vec,@object # @direction_mask_vec
	.local	direction_mask_vec
	.comm	direction_mask_vec,16,16
	.type	.L.str.38,@object       # @.str.38
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.38:
	.asciz	"value-propagate"
	.size	.L.str.38, 16

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"Value Propagate"
	.size	.L.str.39, 16

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"gimp-value-propagate"
	.size	.L.str.40, 21

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"gtk-cancel"
	.size	.L.str.41, 11

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"gtk-ok"
	.size	.L.str.42, 7

	.type	preview,@object         # @preview
	.local	preview
	.comm	preview,8,8
	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"invalidated"
	.size	.L.str.43, 12

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"Mode"
	.size	.L.str.44, 5

	.type	modes,@object           # @modes
	.data
	.align	16
modes:
	.long	15                      # 0xf
	.zero	4
	.quad	.L.str.58
	.quad	initialize_white
	.quad	propagate_white
	.quad	set_value
	.long	15                      # 0xf
	.zero	4
	.quad	.L.str.59
	.quad	initialize_black
	.quad	propagate_black
	.quad	set_value
	.long	15                      # 0xf
	.zero	4
	.quad	.L.str.60
	.quad	initialize_middle
	.quad	propagate_middle
	.quad	set_middle_to_peak
	.long	15                      # 0xf
	.zero	4
	.quad	.L.str.61
	.quad	initialize_middle
	.quad	propagate_middle
	.quad	set_foreground_to_peak
	.long	13                      # 0xd
	.zero	4
	.quad	.L.str.62
	.quad	initialize_foreground
	.quad	propagate_a_color
	.quad	set_value
	.long	13                      # 0xd
	.zero	4
	.quad	.L.str.63
	.quad	initialize_background
	.quad	propagate_a_color
	.quad	set_value
	.long	7                       # 0x7
	.zero	4
	.quad	.L.str.64
	.quad	0
	.quad	propagate_opaque
	.quad	set_value
	.long	7                       # 0x7
	.zero	4
	.quad	.L.str.65
	.quad	0
	.quad	propagate_transparent
	.quad	set_value
	.size	modes, 320

	.type	.L.str.45,@object       # @.str.45
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.45:
	.asciz	"gimp-item-data"
	.size	.L.str.45, 15

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"toggled"
	.size	.L.str.46, 8

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"Propagate"
	.size	.L.str.47, 10

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"Lower t_hreshold:"
	.size	.L.str.48, 18

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"value-changed"
	.size	.L.str.49, 14

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"_Upper threshold:"
	.size	.L.str.50, 18

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"_Propagating rate:"
	.size	.L.str.51, 19

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"To l_eft"
	.size	.L.str.52, 9

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"To _right"
	.size	.L.str.53, 10

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"To _top"
	.size	.L.str.54, 8

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"To _bottom"
	.size	.L.str.55, 11

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"Propagating _alpha channel"
	.size	.L.str.56, 27

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"Propagating value channel"
	.size	.L.str.57, 26

	.type	fore,@object            # @fore
	.local	fore
	.comm	fore,3,1
	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"More _white (larger value)"
	.size	.L.str.58, 27

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"More blac_k (smaller value)"
	.size	.L.str.59, 28

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"_Middle value to peaks"
	.size	.L.str.60, 23

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"_Foreground to peaks"
	.size	.L.str.61, 21

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"O_nly foreground"
	.size	.L.str.62, 17

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"Only b_ackground"
	.size	.L.str.63, 17

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"Mor_e opaque"
	.size	.L.str.64, 13

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"More t_ransparent"
	.size	.L.str.65, 18

	.type	channel_mask,@object    # @channel_mask
	.data
	.align	4
channel_mask:
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.size	channel_mask, 12

	.type	peak_min,@object        # @peak_min
	.align	4
peak_min:
	.long	1                       # 0x1
	.size	peak_min, 4

	.type	peak_max,@object        # @peak_max
	.align	4
peak_max:
	.long	1                       # 0x1
	.size	peak_max, 4

	.type	peak_includes_equals,@object # @peak_includes_equals
	.align	4
peak_includes_equals:
	.long	1                       # 0x1
	.size	peak_includes_equals, 4


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
