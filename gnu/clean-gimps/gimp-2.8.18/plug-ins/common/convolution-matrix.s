	.text
	.file	"convolution-matrix.bc"
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
	movabsq	$.L.str.22, %rdi
	movabsq	$.L.str.23, %rsi
	movabsq	$.L.str.24, %rdx
	movabsq	$.L.str.25, %rax
	movabsq	$.L.str.26, %r9
	movabsq	$.L.str.27, %rcx
	movabsq	$.L.str.28, %r8
	movl	$1, %r10d
	movl	$11, %r11d
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
	movl	$11, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%r14, 40(%rsp)
	movq	$0, 48(%rsp)
	movq	%r12, -64(%rbp)         # 8-byte Spill
	movl	%ebx, -68(%rbp)         # 4-byte Spill
	movl	%r10d, -72(%rbp)        # 4-byte Spill
	movl	%r11d, -76(%rbp)        # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.22, %rdi
	movabsq	$.L.str.29, %rsi
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
	movl	$3, -48(%rbp)
# BB#1:                                 # %do.body
	callq	gimp_locale_directory
	movabsq	$.L.str.30, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.30, %rdi
	movabsq	$.L.str.31, %rsi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.30, %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	textdomain
	movq	%rax, -88(%rbp)         # 8-byte Spill
# BB#2:                                 # %do.end
	movabsq	$run.values, %rax
	movq	-32(%rbp), %rcx
	movl	$1, (%rcx)
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	movl	8(%rax), %edx
	movl	%edx, -44(%rbp)
	movq	-24(%rbp), %rax
	movl	88(%rax), %edi
	callq	gimp_drawable_get
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	cmpl	$3, 4(%rax)
	jb	.LBB1_4
# BB#3:                                 # %lor.lhs.false
	movq	-64(%rbp), %rax
	cmpl	$3, 8(%rax)
	jae	.LBB1_5
.LBB1_4:                                # %if.then
	movabsq	$.L.str.32, %rdi
	callq	gettext
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_message
	movl	$0, -48(%rbp)
	movl	$21, run.values
	movl	-48(%rbp), %ecx
	movl	%ecx, run.values+8
	jmp	.LBB1_45
.LBB1_5:                                # %if.end
	movabsq	$config, %rax
	movabsq	$default_config, %rcx
	movl	$140, %edx
                                        # kill: RDX<def> EDX<kill>
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	memcpy
	cmpl	$1, -44(%rbp)
	jne	.LBB1_29
# BB#6:                                 # %if.then.10
	cmpl	$11, -12(%rbp)
	je	.LBB1_9
# BB#7:                                 # %land.lhs.true
	cmpl	$12, -12(%rbp)
	je	.LBB1_9
# BB#8:                                 # %if.then.13
	movl	$1, -48(%rbp)
	jmp	.LBB1_28
.LBB1_9:                                # %if.else
	movq	-24(%rbp), %rax
	cmpl	$25, 128(%rax)
	je	.LBB1_11
# BB#10:                                # %if.then.18
	movl	$1, -48(%rbp)
	jmp	.LBB1_20
.LBB1_11:                               # %if.else.19
	movl	$0, -56(%rbp)
.LBB1_12:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_14 Depth 2
	cmpl	$5, -56(%rbp)
	jge	.LBB1_19
# BB#13:                                # %for.body
                                        #   in Loop: Header=BB1_12 Depth=1
	movl	$0, -52(%rbp)
.LBB1_14:                               # %for.cond.21
                                        #   Parent Loop BB1_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$5, -52(%rbp)
	jge	.LBB1_17
# BB#15:                                # %for.body.23
                                        #   in Loop: Header=BB1_14 Depth=2
	movabsq	$config, %rax
	imull	$5, -52(%rbp), %ecx
	addl	-56(%rbp), %ecx
	movslq	%ecx, %rdx
	movq	-24(%rbp), %rsi
	movq	168(%rsi), %rsi
	cvtsd2ss	(%rsi,%rdx,8), %xmm0
	movslq	-56(%rbp), %rdx
	movslq	-52(%rbp), %rsi
	imulq	$20, %rsi, %rsi
	addq	%rsi, %rax
	movss	%xmm0, (%rax,%rdx,4)
# BB#16:                                # %for.inc
                                        #   in Loop: Header=BB1_14 Depth=2
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB1_14
.LBB1_17:                               # %for.end
                                        #   in Loop: Header=BB1_12 Depth=1
	jmp	.LBB1_18
.LBB1_18:                               # %for.inc.31
                                        #   in Loop: Header=BB1_12 Depth=1
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB1_12
.LBB1_19:                               # %for.end.33
	jmp	.LBB1_20
.LBB1_20:                               # %if.end.34
	movq	-24(%rbp), %rax
	movl	208(%rax), %ecx
	movl	%ecx, config+108
	movq	-24(%rbp), %rax
	cvtsd2ss	248(%rax), %xmm0
	movss	%xmm0, config+100
	movq	-24(%rbp), %rax
	cvtsd2ss	288(%rax), %xmm0
	movss	%xmm0, config+104
	movq	-24(%rbp), %rax
	cmpl	$5, 328(%rax)
	je	.LBB1_22
# BB#21:                                # %if.then.50
	movl	$1, -48(%rbp)
	jmp	.LBB1_27
.LBB1_22:                               # %if.else.51
	movl	$0, -56(%rbp)
.LBB1_23:                               # %for.cond.52
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$5, -56(%rbp)
	jge	.LBB1_26
# BB#24:                                # %for.body.55
                                        #   in Loop: Header=BB1_23 Depth=1
	movslq	-56(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	368(%rcx), %rcx
	movl	(%rcx,%rax,4), %edx
	movslq	-56(%rbp), %rax
	movl	%edx, config+116(,%rax,4)
# BB#25:                                # %for.inc.62
                                        #   in Loop: Header=BB1_23 Depth=1
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB1_23
.LBB1_26:                               # %for.end.64
	jmp	.LBB1_27
.LBB1_27:                               # %if.end.65
	movq	-24(%rbp), %rax
	movl	408(%rax), %ecx
	movl	%ecx, config+112
	movq	-64(%rbp), %rdi
	callq	check_config
.LBB1_28:                               # %if.end.69
	jmp	.LBB1_34
.LBB1_29:                               # %if.else.70
	movabsq	$.L.str.22, %rdi
	movabsq	$config, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	cmpl	$0, -44(%rbp)
	movl	%eax, -92(%rbp)         # 4-byte Spill
	jne	.LBB1_33
# BB#30:                                # %if.then.74
	movq	-64(%rbp), %rdi
	callq	check_config
	movq	-64(%rbp), %rdi
	callq	convolve_image_dialog
	cmpl	$0, %eax
	jne	.LBB1_32
# BB#31:                                # %if.then.76
	movl	$0, -48(%rbp)
.LBB1_32:                               # %if.end.77
	jmp	.LBB1_33
.LBB1_33:                               # %if.end.78
	jmp	.LBB1_34
.LBB1_34:                               # %if.end.79
	cmpl	$3, -48(%rbp)
	jne	.LBB1_44
# BB#35:                                # %if.then.82
	movq	-64(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_is_rgb
	cmpl	$0, %eax
	jne	.LBB1_37
# BB#36:                                # %lor.lhs.false.85
	movq	-64(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_is_gray
	cmpl	$0, %eax
	je	.LBB1_42
.LBB1_37:                               # %if.then.89
	movabsq	$.L.str.33, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_progress_init
	movq	-64(%rbp), %rdi
	movl	4(%rdi), %ecx
	movl	%eax, -96(%rbp)         # 4-byte Spill
	movl	%ecx, -100(%rbp)        # 4-byte Spill
	callq	gimp_tile_width
	movl	-100(%rbp), %ecx        # 4-byte Reload
	movl	%eax, -104(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	xorl	%edx, %edx
	movl	-104(%rbp), %esi        # 4-byte Reload
	divl	%esi
	addl	$1, %eax
	shll	$1, %eax
	movl	%eax, %eax
	movl	%eax, %edi
	callq	gimp_tile_cache_ntiles
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-64(%rbp), %rdi
	callq	convolve_image
	cmpl	$1, -44(%rbp)
	je	.LBB1_39
# BB#38:                                # %if.then.99
	callq	gimp_displays_flush
	movl	%eax, -108(%rbp)        # 4-byte Spill
.LBB1_39:                               # %if.end.101
	cmpl	$0, -44(%rbp)
	jne	.LBB1_41
# BB#40:                                # %if.then.104
	movabsq	$.L.str.22, %rdi
	movabsq	$config, %rax
	movl	$140, %edx
	movq	%rax, %rsi
	callq	gimp_procedural_db_set_data
	movl	%eax, -112(%rbp)        # 4-byte Spill
.LBB1_41:                               # %if.end.106
	jmp	.LBB1_43
.LBB1_42:                               # %if.else.107
	movl	$0, -48(%rbp)
.LBB1_43:                               # %if.end.108
	movq	-64(%rbp), %rdi
	callq	gimp_drawable_detach
.LBB1_44:                               # %if.end.109
	movl	$21, run.values
	movl	-48(%rbp), %eax
	movl	%eax, run.values+8
.LBB1_45:                               # %return
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

	.align	16, 0x90
	.type	check_config,@function
check_config:                           # @check_config
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	$0, config+108
	movq	-8(%rbp), %rdi
	movl	(%rdi), %edi
	callq	gimp_drawable_has_alpha
	cmpl	$0, %eax
	jne	.LBB4_2
# BB#1:                                 # %if.then
	movl	$-1, config+108
	movl	$0, config+112
.LBB4_2:                                # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	check_config, .Lfunc_end4-check_config
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI5_0:
	.long	1056964608              # float 0.5
	.text
	.align	16, 0x90
	.type	convolve_image_dialog,@function
convolve_image_dialog:                  # @convolve_image_dialog
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp20:
	.cfi_def_cfa_offset 16
.Ltmp21:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp22:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$896, %rsp              # imm = 0x380
.Ltmp23:
	.cfi_offset %rbx, -48
.Ltmp24:
	.cfi_offset %r12, -40
.Ltmp25:
	.cfi_offset %r14, -32
.Ltmp26:
	.cfi_offset %r15, -24
	movabsq	$.L.str.34, %rax
	xorl	%esi, %esi
	movq	%rdi, -40(%rbp)
	movq	%rax, %rdi
	callq	gimp_ui_init
	movabsq	$.L.str.35, %rdi
	callq	gettext
	movabsq	$.L.str.36, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	movabsq	$gimp_standard_help_func, %r8
	movabsq	$.L.str.22, %r9
	movabsq	$.L.str.37, %rdi
	movl	$1, %r10d
	movabsq	$.L.str.38, %r11
	movl	$4294967290, %ebx       # imm = 0xFFFFFFFA
	movabsq	$.L.str.39, %r14
	movl	$4294967291, %r15d      # imm = 0xFFFFFFFB
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-168(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$1, 8(%rsp)
	movq	%r11, 16(%rsp)
	movl	$-6, 24(%rsp)
	movq	%r14, 32(%rsp)
	movl	$-5, 40(%rsp)
	movq	$0, 48(%rsp)
	movb	$0, %al
	movl	%r15d, -172(%rbp)       # 4-byte Spill
	movl	%ebx, -176(%rbp)        # 4-byte Spill
	movl	%r10d, -180(%rbp)       # 4-byte Spill
	callq	gimp_dialog_new
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movl	$4294967291, %edx       # imm = 0xFFFFFFFB
	movl	$4294967290, %ecx       # imm = 0xFFFFFFFA
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
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
	movl	$1, %edi
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
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	-40(%rbp), %rdi
	callq	gimp_drawable_preview_new
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.40, %rsi
	movabsq	$convolve_image, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movl	$2, %r9d
	movq	-64(%rbp), %rdi
	movq	-40(%rbp), %r11
	movq	%rax, %rdx
	movq	%r11, %rcx
	callq	g_signal_connect_data
	xorl	%edi, %edi
	movl	$12, %esi
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gtk_box_new
	movq	%rax, -72(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movl	$1, %edi
	movl	$12, %esi
	callq	gtk_box_new
	movq	%rax, -128(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-128(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movabsq	$.L.str.41, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -136(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-136(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -268(%rbp)        # 4-byte Spill
	movl	-268(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movl	$1, %edi
	movl	$12, %esi
	callq	gtk_box_new
	movq	%rax, -120(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-120(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movl	$5, %ecx
	xorl	%edx, %edx
	movl	%ecx, %edi
	movl	%ecx, %esi
	callq	gtk_table_new
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-80(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-120(%rbp), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movl	$0, -144(%rbp)
.LBB5_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_3 Depth 2
	cmpl	$5, -144(%rbp)
	jge	.LBB5_8
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	$0, -140(%rbp)
.LBB5_3:                                # %for.cond.39
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$5, -140(%rbp)
	jge	.LBB5_6
# BB#4:                                 # %for.body.41
                                        #   in Loop: Header=BB5_3 Depth=2
	callq	gtk_entry_new
	movl	$40, %esi
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movabsq	$widget_set, %rcx
	movq	%rax, -96(%rbp)
	movslq	-144(%rbp), %rdi
	movslq	-140(%rbp), %r8
	imulq	$40, %r8, %r8
	addq	%r8, %rcx
	movq	%rax, (%rcx,%rdi,8)
	movq	-96(%rbp), %rdi
	callq	gtk_widget_set_size_request
	movq	-80(%rbp), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$5, %edx
	xorl	%r9d, %r9d
	movq	-96(%rbp), %rsi
	movl	-140(%rbp), %r10d
	movl	-140(%rbp), %r11d
	addl	$1, %r11d
	movl	-144(%rbp), %r8d
	movl	-144(%rbp), %ebx
	addl	$1, %ebx
	movq	%rax, %rdi
	movl	%edx, -316(%rbp)        # 4-byte Spill
	movl	%r10d, %edx
	movl	%r11d, %ecx
	movl	%r9d, -320(%rbp)        # 4-byte Spill
	movl	%ebx, %r9d
	movl	$5, (%rsp)
	movl	$5, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	callq	gtk_table_attach
	movq	-96(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.42, %rsi
	movabsq	$entry_callback, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movabsq	$config, %rdi
	movq	-96(%rbp), %r14
	movslq	-144(%rbp), %r15
	movslq	-140(%rbp), %r12
	imulq	$20, %r12, %r12
	addq	%r12, %rdi
	shlq	$2, %r15
	addq	%r15, %rdi
	movq	%rdi, -328(%rbp)        # 8-byte Spill
	movq	%r14, %rdi
	movq	%rax, %rdx
	movq	-328(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.42, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-96(%rbp), %rdx
	movq	-64(%rbp), %rdi
	movq	%rdi, -336(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-336(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	%rax, -352(%rbp)        # 8-byte Spill
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB5_3 Depth=2
	movl	-140(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -140(%rbp)
	jmp	.LBB5_3
.LBB5_6:                                # %for.end
                                        #   in Loop: Header=BB5_1 Depth=1
	jmp	.LBB5_7
.LBB5_7:                                # %for.inc.54
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	-144(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -144(%rbp)
	jmp	.LBB5_1
.LBB5_8:                                # %for.end.56
	movq	-80(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%edi, %edi
	movl	$6, %esi
	callq	gtk_box_new
	movq	%rax, -112(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-112(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -364(%rbp)        # 4-byte Spill
	movl	-364(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movl	$1, %edi
	movl	$2, %esi
	xorl	%edx, %edx
	callq	gtk_table_new
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-112(%rbp), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	xorl	%ecx, %ecx
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, -388(%rbp)        # 4-byte Spill
	movl	-388(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movabsq	$.L.str.43, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new_with_mnemonic
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorps	%xmm0, %xmm0
	movss	.LCPI5_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment
	movq	-80(%rbp), %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-408(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -412(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-412(%rbp), %r8d        # 4-byte Reload
	movl	%ecx, -416(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	-416(%rbp), %r8d        # 4-byte Reload
	movl	-412(%rbp), %r9d        # 4-byte Reload
	callq	gtk_table_attach_defaults
	movq	-88(%rbp), %rdi
	callq	gtk_widget_show
	callq	gtk_entry_new
	movl	$40, %esi
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	%rax, -96(%rbp)
	movq	%rax, widget_set+200
	movq	-96(%rbp), %rdi
	callq	gtk_widget_set_size_request
	movq	-80(%rbp), %rax
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-424(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	movl	$2, %edx
	xorl	%r8d, %r8d
	movq	-96(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -428(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-428(%rbp), %r9d        # 4-byte Reload
	movl	%ecx, -432(%rbp)        # 4-byte Spill
	movl	%r9d, %ecx
	movl	-432(%rbp), %r9d        # 4-byte Reload
	callq	gtk_table_attach_defaults
	movq	-96(%rbp), %rdi
	callq	gtk_widget_show
	movq	-88(%rbp), %rax
	movq	%rax, -440(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-440(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-96(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_mnemonic_widget
	movabsq	$.L.str.42, %rsi
	movabsq	$entry_callback, %rax
	movabsq	$config, %rdi
	addq	$100, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-96(%rbp), %r10
	movq	%rdi, -448(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, %rdx
	movq	-448(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.42, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-96(%rbp), %rdx
	movq	-64(%rbp), %rdi
	movq	%rdi, -456(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-456(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -464(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-80(%rbp), %rdi
	movq	%rax, -472(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
	movl	$1, %edi
	movl	$2, %esi
	xorl	%edx, %edx
	callq	gtk_table_new
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -480(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-480(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-112(%rbp), %rax
	movq	%rax, -488(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-488(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	xorl	%r9d, %r9d
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movabsq	$.L.str.44, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new_with_mnemonic
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -496(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-496(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorps	%xmm0, %xmm0
	movss	.LCPI5_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment
	movq	-80(%rbp), %rax
	movq	%rax, -504(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-504(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -508(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-508(%rbp), %r8d        # 4-byte Reload
	movl	%ecx, -512(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	-512(%rbp), %r8d        # 4-byte Reload
	movl	-508(%rbp), %r9d        # 4-byte Reload
	callq	gtk_table_attach_defaults
	movq	-88(%rbp), %rdi
	callq	gtk_widget_show
	callq	gtk_entry_new
	movl	$40, %esi
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	%rax, -96(%rbp)
	movq	%rax, widget_set+208
	movq	-96(%rbp), %rdi
	callq	gtk_widget_set_size_request
	movq	-80(%rbp), %rax
	movq	%rax, -520(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-520(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	movl	$2, %edx
	xorl	%r8d, %r8d
	movq	-96(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -524(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-524(%rbp), %r9d        # 4-byte Reload
	movl	%ecx, -528(%rbp)        # 4-byte Spill
	movl	%r9d, %ecx
	movl	-528(%rbp), %r9d        # 4-byte Reload
	callq	gtk_table_attach_defaults
	movq	-96(%rbp), %rdi
	callq	gtk_widget_show
	movq	-88(%rbp), %rax
	movq	%rax, -536(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-536(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-96(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_mnemonic_widget
	movabsq	$.L.str.42, %rsi
	movabsq	$entry_callback, %rax
	movabsq	$config, %rdi
	addq	$104, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-96(%rbp), %r10
	movq	%rdi, -544(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, %rdx
	movq	-544(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.42, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-96(%rbp), %rdx
	movq	-64(%rbp), %rdi
	movq	%rdi, -552(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-552(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -560(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-80(%rbp), %rdi
	movq	%rax, -568(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
	movq	-112(%rbp), %rdi
	callq	gtk_widget_show
	movq	-120(%rbp), %rdi
	callq	gtk_widget_show
	movq	-136(%rbp), %rdi
	callq	gtk_widget_show
	movl	$1, %edi
	movl	$6, %esi
	callq	gtk_box_new
	movq	%rax, -112(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -576(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-576(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-112(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movabsq	$.L.str.45, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_mnemonic
	movq	%rax, -104(%rbp)
	movq	%rax, widget_set+288
	movq	-112(%rbp), %rax
	movq	%rax, -584(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-584(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	xorl	%ecx, %ecx
	movq	-104(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, -588(%rbp)        # 4-byte Spill
	movl	-588(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-104(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.46, %rsi
	movabsq	$my_toggle_callback, %rax
	movabsq	$config, %rdi
	addq	$136, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-104(%rbp), %r10
	movq	%rdi, -600(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, %rdx
	movq	-600(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.46, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-104(%rbp), %rdx
	movq	-64(%rbp), %rdi
	movq	%rdi, -608(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-608(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -616(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.47, %rdi
	movq	%rax, -624(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_mnemonic
	movq	%rax, -104(%rbp)
	movq	%rax, widget_set+216
	cmpl	$-1, config+108
	jne	.LBB5_10
# BB#9:                                 # %if.then
	xorl	%esi, %esi
	movq	-104(%rbp), %rdi
	callq	gtk_widget_set_sensitive
.LBB5_10:                               # %if.end
	movq	-112(%rbp), %rax
	movq	%rax, -632(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-632(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	xorl	%ecx, %ecx
	movq	-104(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, -636(%rbp)        # 4-byte Spill
	movl	-636(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-104(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.46, %rsi
	movabsq	$my_toggle_callback, %rax
	movabsq	$config, %rdi
	addq	$108, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-104(%rbp), %r10
	movq	%rdi, -648(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, %rdx
	movq	-648(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.46, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-104(%rbp), %rdx
	movq	-64(%rbp), %rdi
	movq	%rdi, -656(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-656(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -664(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-112(%rbp), %rdi
	movq	%rax, -672(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
	movq	-128(%rbp), %rdi
	callq	gtk_widget_show
	movl	$1, %edi
	movl	$12, %esi
	callq	gtk_box_new
	movq	%rax, -120(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -680(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-680(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-120(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movabsq	$.L.str.48, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -136(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -688(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-688(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-136(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -692(%rbp)        # 4-byte Spill
	movl	-692(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movl	$1, %edi
	movl	$2, %esi
	callq	gtk_box_new
	movq	%rax, -112(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -704(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-704(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-112(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	$0, -160(%rbp)
	movl	$0, -148(%rbp)
.LBB5_11:                               # %for.cond.122
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$3, -148(%rbp)
	jge	.LBB5_14
# BB#12:                                # %for.body.124
                                        #   in Loop: Header=BB5_11 Depth=1
	movq	-160(%rbp), %rdi
	movslq	-148(%rbp), %rax
	movq	bmode_labels(,%rax,8), %rax
	movq	%rdi, -712(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gettext
	movq	-712(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_radio_button_new_with_mnemonic
	movq	%rax, -104(%rbp)
	movslq	-148(%rbp), %rsi
	movq	%rax, widget_set+224(,%rsi,8)
	movq	-104(%rbp), %rax
	movq	%rax, -720(%rbp)        # 8-byte Spill
	callq	gtk_radio_button_get_type
	movq	-720(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_radio_button_get_group
	movq	%rax, -160(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -728(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-728(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-104(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -732(%rbp)        # 4-byte Spill
	movl	-732(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-104(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.46, %rsi
	movabsq	$my_bmode_callback, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-104(%rbp), %rdi
	movl	-148(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	movq	%rax, %rdx
	callq	g_signal_connect_data
	movabsq	$.L.str.46, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-104(%rbp), %rdx
	movq	-64(%rbp), %rdi
	movq	%rdi, -744(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-744(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -752(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	%rax, -760(%rbp)        # 8-byte Spill
# BB#13:                                # %for.inc.139
                                        #   in Loop: Header=BB5_11 Depth=1
	movl	-148(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -148(%rbp)
	jmp	.LBB5_11
.LBB5_14:                               # %for.end.141
	movq	-112(%rbp), %rdi
	callq	gtk_widget_show
	movq	-136(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.49, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -136(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -768(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-768(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-136(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -772(%rbp)        # 4-byte Spill
	movl	-772(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movl	$1, %edi
	movl	$2, %esi
	callq	gtk_box_new
	movq	%rax, -112(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -784(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-784(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-112(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movl	$0, -148(%rbp)
.LBB5_15:                               # %for.cond.149
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$5, -148(%rbp)
	jge	.LBB5_27
# BB#16:                                # %for.body.152
                                        #   in Loop: Header=BB5_15 Depth=1
	movq	-40(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_is_gray
	cmpl	$0, %eax
	je	.LBB5_18
# BB#17:                                # %land.lhs.true
                                        #   in Loop: Header=BB5_15 Depth=1
	cmpl	$0, -148(%rbp)
	je	.LBB5_23
.LBB5_18:                               # %lor.lhs.false
                                        #   in Loop: Header=BB5_15 Depth=1
	movq	-40(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_is_rgb
	cmpl	$0, %eax
	je	.LBB5_21
# BB#19:                                # %land.lhs.true.159
                                        #   in Loop: Header=BB5_15 Depth=1
	cmpl	$1, -148(%rbp)
	jl	.LBB5_21
# BB#20:                                # %land.lhs.true.162
                                        #   in Loop: Header=BB5_15 Depth=1
	cmpl	$3, -148(%rbp)
	jle	.LBB5_23
.LBB5_21:                               # %lor.lhs.false.165
                                        #   in Loop: Header=BB5_15 Depth=1
	movq	-40(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_has_alpha
	cmpl	$0, %eax
	je	.LBB5_24
# BB#22:                                # %land.lhs.true.169
                                        #   in Loop: Header=BB5_15 Depth=1
	cmpl	$4, -148(%rbp)
	jne	.LBB5_24
.LBB5_23:                               # %if.then.172
                                        #   in Loop: Header=BB5_15 Depth=1
	movslq	-148(%rbp), %rax
	movq	channel_labels(,%rax,8), %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_mnemonic
	movq	%rax, -104(%rbp)
	movslq	-148(%rbp), %rdi
	movq	%rax, widget_set+248(,%rdi,8)
	movq	-112(%rbp), %rax
	movq	%rax, -792(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-792(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-104(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -796(%rbp)        # 4-byte Spill
	movl	-796(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-104(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.46, %rsi
	movabsq	$my_toggle_callback, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movabsq	$config, %rdi
	addq	$116, %rdi
	movq	-104(%rbp), %r10
	movslq	-148(%rbp), %r11
	shlq	$2, %r11
	addq	%r11, %rdi
	movq	%rdi, -808(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, %rdx
	movq	-808(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.46, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-104(%rbp), %rdx
	movq	-64(%rbp), %rdi
	movq	%rdi, -816(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-816(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -824(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	%rax, -832(%rbp)        # 8-byte Spill
	jmp	.LBB5_25
.LBB5_24:                               # %if.else
                                        #   in Loop: Header=BB5_15 Depth=1
	movslq	-148(%rbp), %rax
	movq	$0, widget_set+248(,%rax,8)
.LBB5_25:                               # %if.end.187
                                        #   in Loop: Header=BB5_15 Depth=1
	jmp	.LBB5_26
.LBB5_26:                               # %for.inc.188
                                        #   in Loop: Header=BB5_15 Depth=1
	movl	-148(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -148(%rbp)
	jmp	.LBB5_15
.LBB5_27:                               # %for.end.190
	movq	-112(%rbp), %rdi
	callq	gtk_widget_show
	movq	-136(%rbp), %rdi
	callq	gtk_widget_show
	movq	-120(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.50, %rsi
	movabsq	$response_callback, %rdi
	xorl	%eax, %eax
	movl	%eax, %r8d
	xorl	%r9d, %r9d
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	%rdi, -840(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	-840(%rbp), %rcx        # 8-byte Reload
	movq	%rdx, -848(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-848(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.51, %rsi
	movabsq	$gtk_main_quit, %rdx
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	xorl	%r9d, %r9d
	movq	-48(%rbp), %rdi
	movq	%rcx, -856(%rbp)        # 8-byte Spill
	movq	-856(%rbp), %r8         # 8-byte Reload
	movq	%rax, -864(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-48(%rbp), %rdi
	movq	%rax, -872(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
	callq	redraw_all
	movq	widget_set+240, %rdi
	cmpl	$0, config+108
	setg	%r10b
	andb	$1, %r10b
	movzbl	%r10b, %esi
	callq	gtk_widget_set_sensitive
	callq	gtk_main
	movl	run_flag, %eax
	addq	$896, %rsp              # imm = 0x380
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	convolve_image_dialog, .Lfunc_end5-convolve_image_dialog
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	4607182418800017408     # double 1
.LCPI6_1:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	convolve_image,@function
convolve_image:                         # @convolve_image
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
	subq	$400, %rsp              # imm = 0x190
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB6_2
# BB#1:                                 # %if.then
	leaq	-148(%rbp), %rsi
	leaq	-152(%rbp), %rdx
	movq	-16(%rbp), %rdi
	callq	gimp_preview_get_position
	leaq	-132(%rbp), %rsi
	leaq	-140(%rbp), %rdx
	movq	-16(%rbp), %rdi
	callq	gimp_preview_get_size
	movl	-148(%rbp), %eax
	addl	-132(%rbp), %eax
	movl	%eax, -156(%rbp)
	movl	-152(%rbp), %eax
	addl	-140(%rbp), %eax
	movl	%eax, -160(%rbp)
	jmp	.LBB6_3
.LBB6_2:                                # %if.else
	leaq	-148(%rbp), %rsi
	leaq	-152(%rbp), %rdx
	leaq	-156(%rbp), %rcx
	leaq	-160(%rbp), %r8
	movq	-8(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_mask_bounds
	movl	-156(%rbp), %edi
	subl	-148(%rbp), %edi
	movl	%edi, -132(%rbp)
	movl	-160(%rbp), %edi
	subl	-152(%rbp), %edi
	movl	%edi, -140(%rbp)
	movl	%eax, -312(%rbp)        # 4-byte Spill
.LBB6_3:                                # %if.end
	movq	-8(%rbp), %rax
	movl	4(%rax), %ecx
	movl	%ecx, -116(%rbp)
	movq	-8(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -120(%rbp)
	movq	-8(%rbp), %rax
	movl	12(%rax), %ecx
	movl	%ecx, -292(%rbp)
	movl	-292(%rbp), %ecx
	subl	$1, %ecx
	movl	%ecx, -296(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_is_rgb
	cmpl	$0, %eax
	je	.LBB6_9
# BB#4:                                 # %if.then.10
	movl	$0, -144(%rbp)
.LBB6_5:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$4, -144(%rbp)
	jge	.LBB6_8
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB6_5 Depth=1
	movl	-144(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movl	config+116(,%rcx,4), %eax
	movslq	-144(%rbp), %rcx
	movl	%eax, -288(%rbp,%rcx,4)
# BB#7:                                 # %for.inc
                                        #   in Loop: Header=BB6_5 Depth=1
	movl	-144(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -144(%rbp)
	jmp	.LBB6_5
.LBB6_8:                                # %for.end
	jmp	.LBB6_10
.LBB6_9:                                # %if.else.14
	movl	config+116, %eax
	movl	%eax, -288(%rbp)
.LBB6_10:                               # %if.end.16
	movq	-8(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_has_alpha
	cmpl	$0, %eax
	je	.LBB6_12
# BB#11:                                # %if.then.20
	movl	config+132, %eax
	movslq	-296(%rbp), %rcx
	movl	%eax, -288(%rbp,%rcx,4)
.LBB6_12:                               # %if.end.23
	movl	-132(%rbp), %eax
	addl	$2, %eax
	addl	$2, %eax
	movl	%eax, -136(%rbp)
	movl	$0, -144(%rbp)
.LBB6_13:                               # %for.cond.26
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$5, -144(%rbp)
	jge	.LBB6_16
# BB#14:                                # %for.body.28
                                        #   in Loop: Header=BB6_13 Depth=1
	movl	$1, %eax
	movl	%eax, %esi
	movl	-136(%rbp), %eax
	imull	-292(%rbp), %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	movslq	-144(%rbp), %rsi
	movq	%rax, -256(%rbp,%rsi,8)
# BB#15:                                # %for.inc.32
                                        #   in Loop: Header=BB6_13 Depth=1
	movl	-144(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -144(%rbp)
	jmp	.LBB6_13
.LBB6_16:                               # %for.end.34
	movl	$0, -144(%rbp)
.LBB6_17:                               # %for.cond.35
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$3, -144(%rbp)
	jge	.LBB6_20
# BB#18:                                # %for.body.38
                                        #   in Loop: Header=BB6_17 Depth=1
	movl	$1, %eax
	movl	%eax, %esi
	movl	-132(%rbp), %eax
	imull	-292(%rbp), %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	movslq	-144(%rbp), %rsi
	movq	%rax, -208(%rbp,%rsi,8)
# BB#19:                                # %for.inc.44
                                        #   in Loop: Header=BB6_17 Depth=1
	movl	-144(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -144(%rbp)
	jmp	.LBB6_17
.LBB6_20:                               # %for.end.46
	movl	-148(%rbp), %eax
	subl	$2, %eax
	cmpl	$0, %eax
	jle	.LBB6_22
# BB#21:                                # %cond.true
	movl	-148(%rbp), %eax
	subl	$2, %eax
	movl	%eax, -316(%rbp)        # 4-byte Spill
	jmp	.LBB6_23
.LBB6_22:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, -316(%rbp)        # 4-byte Spill
	jmp	.LBB6_23
.LBB6_23:                               # %cond.end
	movl	-316(%rbp), %eax        # 4-byte Reload
	movl	%eax, -164(%rbp)
	movl	-152(%rbp), %eax
	subl	$2, %eax
	cmpl	$0, %eax
	jle	.LBB6_25
# BB#24:                                # %cond.true.54
	movl	-152(%rbp), %eax
	subl	$2, %eax
	movl	%eax, -320(%rbp)        # 4-byte Spill
	jmp	.LBB6_26
.LBB6_25:                               # %cond.false.56
	xorl	%eax, %eax
	movl	%eax, -320(%rbp)        # 4-byte Spill
	jmp	.LBB6_26
.LBB6_26:                               # %cond.end.57
	movl	-320(%rbp), %eax        # 4-byte Reload
	movl	%eax, -172(%rbp)
	movl	-156(%rbp), %eax
	addl	$2, %eax
	cmpl	-116(%rbp), %eax
	jge	.LBB6_28
# BB#27:                                # %cond.true.62
	movl	-156(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -324(%rbp)        # 4-byte Spill
	jmp	.LBB6_29
.LBB6_28:                               # %cond.false.64
	movl	-116(%rbp), %eax
	movl	%eax, -324(%rbp)        # 4-byte Spill
.LBB6_29:                               # %cond.end.65
	movl	-324(%rbp), %eax        # 4-byte Reload
	movl	%eax, -168(%rbp)
	movl	-160(%rbp), %eax
	addl	$2, %eax
	cmpl	-120(%rbp), %eax
	jge	.LBB6_31
# BB#30:                                # %cond.true.70
	movl	-160(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -328(%rbp)        # 4-byte Spill
	jmp	.LBB6_32
.LBB6_31:                               # %cond.false.72
	movl	-120(%rbp), %eax
	movl	%eax, -328(%rbp)        # 4-byte Spill
.LBB6_32:                               # %cond.end.73
	movl	-328(%rbp), %eax        # 4-byte Reload
	leaq	-64(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	%eax, -176(%rbp)
	movq	-8(%rbp), %rsi
	movl	-164(%rbp), %edx
	movl	-172(%rbp), %eax
	movl	-168(%rbp), %r8d
	subl	-164(%rbp), %r8d
	movl	-176(%rbp), %r9d
	subl	-172(%rbp), %r9d
	movl	%ecx, -332(%rbp)        # 4-byte Spill
	movl	%eax, %ecx
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	leaq	-112(%rbp), %rdi
	movl	$1, %eax
	movq	-8(%rbp), %rsi
	movl	-148(%rbp), %edx
	movl	-152(%rbp), %ecx
	movl	-132(%rbp), %r8d
	movl	-140(%rbp), %r9d
	cmpq	$0, -16(%rbp)
	sete	%r10b
	andb	$1, %r10b
	movzbl	%r10b, %r11d
	movl	%r11d, (%rsp)
	movl	$1, 8(%rsp)
	movl	%eax, -336(%rbp)        # 4-byte Spill
	callq	gimp_pixel_rgn_init
	movl	$0, -144(%rbp)
.LBB6_33:                               # %for.cond.79
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$5, -144(%rbp)
	jge	.LBB6_36
# BB#34:                                # %for.body.82
                                        #   in Loop: Header=BB6_33 Depth=1
	leaq	-64(%rbp), %rdi
	movslq	-144(%rbp), %rax
	movq	-256(%rbp,%rax,8), %rsi
	movl	-148(%rbp), %ecx
	subl	$2, %ecx
	movl	-152(%rbp), %edx
	subl	$2, %edx
	addl	-144(%rbp), %edx
	movl	-136(%rbp), %r8d
	movl	%edx, -340(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-340(%rbp), %ecx        # 4-byte Reload
	callq	my_get_row
# BB#35:                                # %for.inc.88
                                        #   in Loop: Header=BB6_33 Depth=1
	movl	-144(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -144(%rbp)
	jmp	.LBB6_33
.LBB6_36:                               # %for.end.90
	movl	-152(%rbp), %eax
	movl	%eax, -124(%rbp)
.LBB6_37:                               # %for.cond.91
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_39 Depth 2
                                        #       Child Loop BB6_41 Depth 3
                                        #     Child Loop BB6_59 Depth 2
                                        #     Child Loop BB6_63 Depth 2
	movl	-124(%rbp), %eax
	cmpl	-160(%rbp), %eax
	jge	.LBB6_72
# BB#38:                                # %for.body.94
                                        #   in Loop: Header=BB6_37 Depth=1
	movl	$0, -268(%rbp)
	movl	-148(%rbp), %eax
	movl	%eax, -128(%rbp)
.LBB6_39:                               # %for.cond.95
                                        #   Parent Loop BB6_37 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_41 Depth 3
	movl	-128(%rbp), %eax
	cmpl	-156(%rbp), %eax
	jge	.LBB6_55
# BB#40:                                # %for.body.98
                                        #   in Loop: Header=BB6_39 Depth=2
	movl	$0, -300(%rbp)
.LBB6_41:                               # %for.cond.99
                                        #   Parent Loop BB6_37 Depth=1
                                        #     Parent Loop BB6_39 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-300(%rbp), %eax
	cmpl	-292(%rbp), %eax
	jge	.LBB6_53
# BB#42:                                # %for.body.102
                                        #   in Loop: Header=BB6_41 Depth=3
	movslq	-300(%rbp), %rax
	cmpl	$0, -288(%rbp,%rax,4)
	je	.LBB6_50
# BB#43:                                # %if.then.106
                                        #   in Loop: Header=BB6_41 Depth=3
	leaq	-256(%rbp), %rdi
	movl	-268(%rbp), %esi
	movl	-300(%rbp), %edx
	movq	-8(%rbp), %rcx
	callq	convolve_pixel
	movsd	.LCPI6_1, %xmm1         # xmm1 = mem[0],zero
	cvtss2sd	%xmm0, %xmm0
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %edx
	movl	%edx, -308(%rbp)
	cmpl	$255, -308(%rbp)
	jle	.LBB6_45
# BB#44:                                # %cond.true.113
                                        #   in Loop: Header=BB6_41 Depth=3
	movl	$255, %eax
	movl	%eax, -344(%rbp)        # 4-byte Spill
	jmp	.LBB6_49
.LBB6_45:                               # %cond.false.114
                                        #   in Loop: Header=BB6_41 Depth=3
	cmpl	$0, -308(%rbp)
	jge	.LBB6_47
# BB#46:                                # %cond.true.117
                                        #   in Loop: Header=BB6_41 Depth=3
	xorl	%eax, %eax
	movl	%eax, -348(%rbp)        # 4-byte Spill
	jmp	.LBB6_48
.LBB6_47:                               # %cond.false.118
                                        #   in Loop: Header=BB6_41 Depth=3
	movl	-308(%rbp), %eax
	movl	%eax, -348(%rbp)        # 4-byte Spill
.LBB6_48:                               # %cond.end.119
                                        #   in Loop: Header=BB6_41 Depth=3
	movl	-348(%rbp), %eax        # 4-byte Reload
	movl	%eax, -344(%rbp)        # 4-byte Spill
.LBB6_49:                               # %cond.end.121
                                        #   in Loop: Header=BB6_41 Depth=3
	movl	-344(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movb	%cl, -301(%rbp)
	jmp	.LBB6_51
.LBB6_50:                               # %if.else.124
                                        #   in Loop: Header=BB6_41 Depth=3
	movl	-268(%rbp), %eax
	movl	-292(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	movslq	%eax, %rdx
	movq	-240(%rbp), %rsi
	movb	(%rsi,%rdx), %dil
	movb	%dil, -301(%rbp)
.LBB6_51:                               # %if.end.130
                                        #   in Loop: Header=BB6_41 Depth=3
	movb	-301(%rbp), %al
	movslq	-268(%rbp), %rcx
	movq	-192(%rbp), %rdx
	movb	%al, (%rdx,%rcx)
	movl	-268(%rbp), %esi
	addl	$1, %esi
	movl	%esi, -268(%rbp)
# BB#52:                                # %for.inc.135
                                        #   in Loop: Header=BB6_41 Depth=3
	movl	-300(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -300(%rbp)
	jmp	.LBB6_41
.LBB6_53:                               # %for.end.137
                                        #   in Loop: Header=BB6_39 Depth=2
	jmp	.LBB6_54
.LBB6_54:                               # %for.inc.138
                                        #   in Loop: Header=BB6_39 Depth=2
	movl	-128(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -128(%rbp)
	jmp	.LBB6_39
.LBB6_55:                               # %for.end.140
                                        #   in Loop: Header=BB6_37 Depth=1
	movl	-124(%rbp), %eax
	movl	-152(%rbp), %ecx
	addl	$2, %ecx
	cmpl	%ecx, %eax
	jl	.LBB6_57
# BB#56:                                # %if.then.144
                                        #   in Loop: Header=BB6_37 Depth=1
	leaq	-112(%rbp), %rdi
	movq	-208(%rbp), %rsi
	movl	-148(%rbp), %edx
	movl	-124(%rbp), %eax
	subl	$2, %eax
	movl	-132(%rbp), %r8d
	movl	%eax, %ecx
	callq	gimp_pixel_rgn_set_row
.LBB6_57:                               # %if.end.147
                                        #   in Loop: Header=BB6_37 Depth=1
	movl	-124(%rbp), %eax
	movl	-160(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB6_67
# BB#58:                                # %if.then.151
                                        #   in Loop: Header=BB6_37 Depth=1
	movq	-208(%rbp), %rax
	movq	%rax, -264(%rbp)
	movl	$0, -144(%rbp)
.LBB6_59:                               # %for.cond.153
                                        #   Parent Loop BB6_37 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$2, -144(%rbp)
	jge	.LBB6_62
# BB#60:                                # %for.body.156
                                        #   in Loop: Header=BB6_59 Depth=2
	movl	-144(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-208(%rbp,%rcx,8), %rcx
	movslq	-144(%rbp), %rdx
	movq	%rcx, -208(%rbp,%rdx,8)
# BB#61:                                # %for.inc.162
                                        #   in Loop: Header=BB6_59 Depth=2
	movl	-144(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -144(%rbp)
	jmp	.LBB6_59
.LBB6_62:                               # %for.end.164
                                        #   in Loop: Header=BB6_37 Depth=1
	movq	-264(%rbp), %rax
	movq	%rax, -192(%rbp)
	movq	-256(%rbp), %rax
	movq	%rax, -264(%rbp)
	movl	$0, -144(%rbp)
.LBB6_63:                               # %for.cond.167
                                        #   Parent Loop BB6_37 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$4, -144(%rbp)
	jge	.LBB6_66
# BB#64:                                # %for.body.170
                                        #   in Loop: Header=BB6_63 Depth=2
	movl	-144(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-256(%rbp,%rcx,8), %rcx
	movslq	-144(%rbp), %rdx
	movq	%rcx, -256(%rbp,%rdx,8)
# BB#65:                                # %for.inc.176
                                        #   in Loop: Header=BB6_63 Depth=2
	movl	-144(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -144(%rbp)
	jmp	.LBB6_63
.LBB6_66:                               # %for.end.178
                                        #   in Loop: Header=BB6_37 Depth=1
	leaq	-64(%rbp), %rdi
	movq	-264(%rbp), %rax
	movq	%rax, -224(%rbp)
	movq	-224(%rbp), %rsi
	movl	-148(%rbp), %ecx
	subl	$2, %ecx
	movl	-124(%rbp), %edx
	addl	$2, %edx
	addl	$1, %edx
	movl	-136(%rbp), %r8d
	movl	%edx, -352(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-352(%rbp), %ecx        # 4-byte Reload
	callq	my_get_row
.LBB6_67:                               # %if.end.184
                                        #   in Loop: Header=BB6_37 Depth=1
	movl	$10, %eax
	movl	-124(%rbp), %ecx
	movl	%eax, -356(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-356(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB6_70
# BB#68:                                # %land.lhs.true
                                        #   in Loop: Header=BB6_37 Depth=1
	cmpq	$0, -16(%rbp)
	jne	.LBB6_70
# BB#69:                                # %if.then.188
                                        #   in Loop: Header=BB6_37 Depth=1
	movl	-124(%rbp), %eax
	subl	-152(%rbp), %eax
	cvtsi2sdl	%eax, %xmm0
	cvtsi2sdl	-140(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -360(%rbp)        # 4-byte Spill
.LBB6_70:                               # %if.end.193
                                        #   in Loop: Header=BB6_37 Depth=1
	jmp	.LBB6_71
.LBB6_71:                               # %for.inc.194
                                        #   in Loop: Header=BB6_37 Depth=1
	movl	-124(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -124(%rbp)
	jmp	.LBB6_37
.LBB6_72:                               # %for.end.196
	movl	$1, -144(%rbp)
.LBB6_73:                               # %for.cond.197
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$3, -144(%rbp)
	jge	.LBB6_76
# BB#74:                                # %for.body.200
                                        #   in Loop: Header=BB6_73 Depth=1
	leaq	-112(%rbp), %rdi
	movslq	-144(%rbp), %rax
	movq	-208(%rbp,%rax,8), %rsi
	movl	-148(%rbp), %edx
	movl	-160(%rbp), %ecx
	addl	-144(%rbp), %ecx
	subl	$1, %ecx
	subl	$2, %ecx
	movl	-132(%rbp), %r8d
	callq	gimp_pixel_rgn_set_row
# BB#75:                                # %for.inc.206
                                        #   in Loop: Header=BB6_73 Depth=1
	movl	-144(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -144(%rbp)
	jmp	.LBB6_73
.LBB6_76:                               # %for.end.208
	cmpq	$0, -16(%rbp)
	je	.LBB6_78
# BB#77:                                # %if.then.210
	movq	-16(%rbp), %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	gimp_drawable_preview_get_type
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-112(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_drawable_preview_draw_region
	jmp	.LBB6_79
.LBB6_78:                               # %if.else.213
	movsd	.LCPI6_0, %xmm0         # xmm0 = mem[0],zero
	callq	gimp_progress_update
	movq	-8(%rbp), %rdi
	movl	%eax, -372(%rbp)        # 4-byte Spill
	callq	gimp_drawable_flush
	movl	$1, %esi
	movq	-8(%rbp), %rdi
	movl	(%rdi), %edi
	callq	gimp_drawable_merge_shadow
	movq	-8(%rbp), %rcx
	movl	(%rcx), %edi
	movl	-148(%rbp), %esi
	movl	-152(%rbp), %edx
	movl	-156(%rbp), %r8d
	subl	-148(%rbp), %r8d
	movl	-160(%rbp), %r9d
	subl	-152(%rbp), %r9d
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%eax, -376(%rbp)        # 4-byte Spill
	callq	gimp_drawable_update
	movl	%eax, -380(%rbp)        # 4-byte Spill
.LBB6_79:                               # %if.end.221
	movl	$0, -144(%rbp)
.LBB6_80:                               # %for.cond.222
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$5, -144(%rbp)
	jge	.LBB6_83
# BB#81:                                # %for.body.225
                                        #   in Loop: Header=BB6_80 Depth=1
	movslq	-144(%rbp), %rax
	movq	-256(%rbp,%rax,8), %rdi
	callq	g_free
# BB#82:                                # %for.inc.228
                                        #   in Loop: Header=BB6_80 Depth=1
	movl	-144(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -144(%rbp)
	jmp	.LBB6_80
.LBB6_83:                               # %for.end.230
	movl	$0, -144(%rbp)
.LBB6_84:                               # %for.cond.231
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$3, -144(%rbp)
	jge	.LBB6_87
# BB#85:                                # %for.body.234
                                        #   in Loop: Header=BB6_84 Depth=1
	movslq	-144(%rbp), %rax
	movq	-208(%rbp,%rax,8), %rdi
	callq	g_free
# BB#86:                                # %for.inc.237
                                        #   in Loop: Header=BB6_84 Depth=1
	movl	-144(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -144(%rbp)
	jmp	.LBB6_84
.LBB6_87:                               # %for.end.239
	addq	$400, %rsp              # imm = 0x190
	popq	%rbp
	retq
.Lfunc_end6:
	.size	convolve_image, .Lfunc_end6-convolve_image
	.cfi_endproc

	.align	16, 0x90
	.type	entry_callback,@function
entry_callback:                         # @entry_callback
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_entry_get_text
	movq	%rax, %rdi
	callq	atof
	cvtsd2ss	%xmm0, %xmm0
	movq	-24(%rbp), %rax
	movss	%xmm0, (%rax)
	movq	-8(%rbp), %rax
	cmpq	widget_set+200, %rax
	jne	.LBB7_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_toplevel
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	xorps	%xmm0, %xmm0
	movq	-24(%rbp), %rdi
	cvtss2sd	(%rdi), %xmm1
	ucomisd	%xmm0, %xmm1
	setne	%cl
	setp	%dl
	orb	%dl, %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movq	%rax, %rdi
	callq	gtk_dialog_set_response_sensitive
	jmp	.LBB7_5
.LBB7_2:                                # %if.else
	movq	-8(%rbp), %rax
	cmpq	widget_set+208, %rax
	je	.LBB7_4
# BB#3:                                 # %if.then.13
	callq	check_matrix
.LBB7_4:                                # %if.end
	jmp	.LBB7_5
.LBB7_5:                                # %if.end.14
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	entry_callback, .Lfunc_end7-entry_callback
	.cfi_endproc

	.align	16, 0x90
	.type	my_toggle_callback,@function
my_toggle_callback:                     # @my_toggle_callback
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_toggle_button_get_active
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	movq	-16(%rbp), %rsi
	movl	%eax, (%rsi)
	movq	-8(%rbp), %rsi
	cmpq	widget_set+216, %rsi
	jne	.LBB8_5
# BB#1:                                 # %if.then
	movq	widget_set+240, %rdi
	movl	-20(%rbp), %esi
	callq	gtk_widget_set_sensitive
	cmpl	$0, -20(%rbp)
	jne	.LBB8_4
# BB#2:                                 # %land.lhs.true
	cmpl	$2, config+112
	jne	.LBB8_4
# BB#3:                                 # %if.then.5
	movl	$0, config+112
	callq	redraw_bmode
.LBB8_4:                                # %if.end
	jmp	.LBB8_8
.LBB8_5:                                # %if.else
	movq	-8(%rbp), %rax
	cmpq	widget_set+288, %rax
	jne	.LBB8_7
# BB#6:                                 # %if.then.7
	movq	widget_set+200, %rdi
	cmpl	$0, -20(%rbp)
	setne	%al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %esi
	callq	gtk_widget_set_sensitive
	movq	widget_set+208, %rdi
	cmpl	$0, -20(%rbp)
	setne	%al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %esi
	callq	gtk_widget_set_sensitive
	callq	check_matrix
.LBB8_7:                                # %if.end.11
	jmp	.LBB8_8
.LBB8_8:                                # %if.end.12
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	my_toggle_callback, .Lfunc_end8-my_toggle_callback
	.cfi_endproc

	.align	16, 0x90
	.type	my_bmode_callback,@function
my_bmode_callback:                      # @my_bmode_callback
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movl	%esi, %eax
	subl	$1, %eax
	movl	%eax, config+112
	popq	%rbp
	retq
.Lfunc_end9:
	.size	my_bmode_callback, .Lfunc_end9-my_bmode_callback
	.cfi_endproc

	.align	16, 0x90
	.type	response_callback,@function
response_callback:                      # @response_callback
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movl	-12(%rbp), %esi
	movl	%esi, %eax
	subl	$-5, %eax
	movl	%esi, -28(%rbp)         # 4-byte Spill
	movl	%eax, -32(%rbp)         # 4-byte Spill
	je	.LBB10_2
	jmp	.LBB10_5
.LBB10_5:                               # %entry
	movl	-28(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -36(%rbp)         # 4-byte Spill
	jne	.LBB10_3
	jmp	.LBB10_1
.LBB10_1:                               # %sw.bb
	movabsq	$config, %rax
	movabsq	$default_config, %rcx
	movl	$140, %edx
                                        # kill: RDX<def> EDX<kill>
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	memcpy
	movq	-24(%rbp), %rdi
	callq	check_config
	callq	redraw_all
	jmp	.LBB10_4
.LBB10_2:                               # %sw.bb.1
	movl	$1, run_flag
.LBB10_3:                               # %sw.default
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_destroy
.LBB10_4:                               # %sw.epilog
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	response_callback, .Lfunc_end10-response_callback
	.cfi_endproc

	.align	16, 0x90
	.type	redraw_all,@function
redraw_all:                             # @redraw_all
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
	callq	redraw_matrix
	callq	redraw_off_and_div
	callq	redraw_autoset
	callq	redraw_alpha_weighting
	callq	redraw_bmode
	callq	redraw_channels
	popq	%rbp
	retq
.Lfunc_end11:
	.size	redraw_all, .Lfunc_end11-redraw_all
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI12_0:
	.long	1065353216              # float 1
.LCPI12_1:
	.long	1124073472              # float 128
.LCPI12_2:
	.long	1132396544              # float 255
	.text
	.align	16, 0x90
	.type	check_matrix,@function
check_matrix:                           # @check_matrix
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
	subq	$16, %rsp
	xorps	%xmm0, %xmm0
	movss	%xmm0, -12(%rbp)
	movl	$0, -8(%rbp)
.LBB12_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_3 Depth 2
	cmpl	$5, -8(%rbp)
	jge	.LBB12_8
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB12_1 Depth=1
	movl	$0, -4(%rbp)
.LBB12_3:                               # %for.cond.1
                                        #   Parent Loop BB12_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$5, -4(%rbp)
	jge	.LBB12_6
# BB#4:                                 # %for.body.3
                                        #   in Loop: Header=BB12_3 Depth=2
	movabsq	$config, %rax
	movslq	-8(%rbp), %rcx
	movslq	-4(%rbp), %rdx
	imulq	$20, %rdx, %rdx
	addq	%rdx, %rax
	movss	(%rax,%rcx,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	addss	-12(%rbp), %xmm0
	movss	%xmm0, -12(%rbp)
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB12_3 Depth=2
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB12_3
.LBB12_6:                               # %for.end
                                        #   in Loop: Header=BB12_1 Depth=1
	jmp	.LBB12_7
.LBB12_7:                               # %for.inc.6
                                        #   in Loop: Header=BB12_1 Depth=1
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB12_1
.LBB12_8:                               # %for.end.8
	cmpl	$0, config+136
	je	.LBB12_16
# BB#9:                                 # %if.then
	xorps	%xmm0, %xmm0
	movss	-12(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jbe	.LBB12_11
# BB#10:                                # %if.then.10
	xorps	%xmm0, %xmm0
	movss	%xmm0, config+104
	movss	-12(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, config+100
	jmp	.LBB12_15
.LBB12_11:                              # %if.else
	xorps	%xmm0, %xmm0
	ucomiss	-12(%rbp), %xmm0
	jbe	.LBB12_13
# BB#12:                                # %if.then.12
	movss	.LCPI12_2, %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, config+104
	movss	-12(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movd	%xmm0, %eax
	xorl	$2147483648, %eax       # imm = 0x80000000
	movd	%eax, %xmm0
	movss	%xmm0, config+100
	jmp	.LBB12_14
.LBB12_13:                              # %if.else.13
	movss	.LCPI12_0, %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI12_1, %xmm1        # xmm1 = mem[0],zero,zero,zero
	movss	%xmm1, config+104
	movss	%xmm0, config+100
.LBB12_14:                              # %if.end
	jmp	.LBB12_15
.LBB12_15:                              # %if.end.14
	callq	redraw_off_and_div
.LBB12_16:                              # %if.end.15
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	check_matrix, .Lfunc_end12-check_matrix
	.cfi_endproc

	.align	16, 0x90
	.type	redraw_off_and_div,@function
redraw_off_and_div:                     # @redraw_off_and_div
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
	subq	$48, %rsp
	movl	$12, %eax
	movl	%eax, %esi
	movabsq	$.L.str.52, %rdx
	leaq	-12(%rbp), %rdi
	cvtss2sd	config+100, %xmm0
	movb	$1, %al
	callq	g_snprintf
	movq	widget_set+200, %rdx
	movl	%eax, -16(%rbp)         # 4-byte Spill
	movq	%rdx, -24(%rbp)         # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-12(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_entry_set_text
	movl	$12, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.52, %rdx
	leaq	-12(%rbp), %rdi
	cvtss2sd	config+104, %xmm0
	movb	$1, %al
	callq	g_snprintf
	movq	widget_set+208, %rdx
	movl	%eax, -28(%rbp)         # 4-byte Spill
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-12(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_entry_set_text
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	redraw_off_and_div, .Lfunc_end13-redraw_off_and_div
	.cfi_endproc

	.align	16, 0x90
	.type	redraw_bmode,@function
redraw_bmode:                           # @redraw_bmode
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
	subq	$16, %rsp
	movl	config+112, %eax
	movl	%eax, %ecx
	movq	widget_set+224(,%rcx,8), %rcx
	movq	%rcx, -8(%rbp)          # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	redraw_bmode, .Lfunc_end14-redraw_bmode
	.cfi_endproc

	.align	16, 0x90
	.type	redraw_matrix,@function
redraw_matrix:                          # @redraw_matrix
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
	subq	$32, %rsp
	movl	$0, -8(%rbp)
.LBB15_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_3 Depth 2
	cmpl	$5, -8(%rbp)
	jge	.LBB15_8
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB15_1 Depth=1
	movl	$0, -4(%rbp)
.LBB15_3:                               # %for.cond.1
                                        #   Parent Loop BB15_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$5, -4(%rbp)
	jge	.LBB15_6
# BB#4:                                 # %for.body.3
                                        #   in Loop: Header=BB15_3 Depth=2
	movl	$12, %eax
	movl	%eax, %esi
	movabsq	$.L.str.52, %rdx
	movabsq	$config, %rcx
	leaq	-20(%rbp), %rdi
	movslq	-8(%rbp), %r8
	movslq	-4(%rbp), %r9
	imulq	$20, %r9, %r9
	addq	%r9, %rcx
	cvtss2sd	(%rcx,%r8,4), %xmm0
	movb	$1, %al
	callq	g_snprintf
	movabsq	$widget_set, %rcx
	movslq	-8(%rbp), %rdx
	movslq	-4(%rbp), %rsi
	imulq	$40, %rsi, %rsi
	addq	%rsi, %rcx
	movq	(%rcx,%rdx,8), %rcx
	movl	%eax, -24(%rbp)         # 4-byte Spill
	movq	%rcx, -32(%rbp)         # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-20(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_entry_set_text
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB15_3 Depth=2
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB15_3
.LBB15_6:                               # %for.end
                                        #   in Loop: Header=BB15_1 Depth=1
	jmp	.LBB15_7
.LBB15_7:                               # %for.inc.13
                                        #   in Loop: Header=BB15_1 Depth=1
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB15_1
.LBB15_8:                               # %for.end.15
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	redraw_matrix, .Lfunc_end15-redraw_matrix
	.cfi_endproc

	.align	16, 0x90
	.type	redraw_autoset,@function
redraw_autoset:                         # @redraw_autoset
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
	subq	$16, %rsp
	movq	widget_set+288, %rax
	movq	%rax, -8(%rbp)          # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	config+136, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	redraw_autoset, .Lfunc_end16-redraw_autoset
	.cfi_endproc

	.align	16, 0x90
	.type	redraw_alpha_weighting,@function
redraw_alpha_weighting:                 # @redraw_alpha_weighting
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
	subq	$16, %rsp
	movq	widget_set+216, %rax
	movq	%rax, -8(%rbp)          # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	cmpl	$0, config+108
	setg	%cl
	andb	$1, %cl
	movzbl	%cl, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	redraw_alpha_weighting, .Lfunc_end17-redraw_alpha_weighting
	.cfi_endproc

	.align	16, 0x90
	.type	redraw_channels,@function
redraw_channels:                        # @redraw_channels
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
	subq	$16, %rsp
	movl	$0, -4(%rbp)
.LBB18_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$5, -4(%rbp)
	jge	.LBB18_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB18_1 Depth=1
	movslq	-4(%rbp), %rax
	cmpq	$0, widget_set+248(,%rax,8)
	je	.LBB18_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB18_1 Depth=1
	movslq	-4(%rbp), %rax
	movq	widget_set+248(,%rax,8), %rax
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movslq	-4(%rbp), %rsi
	movl	config+116(,%rsi,4), %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
.LBB18_4:                               # %if.end
                                        #   in Loop: Header=BB18_1 Depth=1
	jmp	.LBB18_5
.LBB18_5:                               # %for.inc
                                        #   in Loop: Header=BB18_1 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB18_1
.LBB18_6:                               # %for.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	redraw_channels, .Lfunc_end18-redraw_channels
	.cfi_endproc

	.align	16, 0x90
	.type	my_get_row,@function
my_get_row:                             # @my_get_row
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movq	-8(%rbp), %rsi
	movq	8(%rsi), %rsi
	movl	4(%rsi), %ecx
	movl	%ecx, -32(%rbp)
	movq	-8(%rbp), %rsi
	movq	8(%rsi), %rsi
	movl	8(%rsi), %ecx
	movl	%ecx, -36(%rbp)
	movq	-8(%rbp), %rsi
	movq	8(%rsi), %rsi
	movl	12(%rsi), %ecx
	movl	%ecx, -40(%rbp)
	movl	config+112(%rip), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -48(%rbp)         # 4-byte Spill
	je	.LBB19_12
	jmp	.LBB19_72
.LBB19_72:                              # %entry
	movl	-48(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
	je	.LBB19_1
	jmp	.LBB19_73
.LBB19_73:                              # %entry
	movl	-48(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
	je	.LBB19_8
	jmp	.LBB19_19
.LBB19_1:                               # %sw.bb
	jmp	.LBB19_2
.LBB19_2:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -24(%rbp)
	jge	.LBB19_4
# BB#3:                                 # %while.body
                                        #   in Loop: Header=BB19_2 Depth=1
	movl	-36(%rbp), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB19_2
.LBB19_4:                               # %while.end
	jmp	.LBB19_5
.LBB19_5:                               # %while.cond.6
                                        # =>This Inner Loop Header: Depth=1
	movl	-24(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jl	.LBB19_7
# BB#6:                                 # %while.body.8
                                        #   in Loop: Header=BB19_5 Depth=1
	movl	-36(%rbp), %eax
	movl	-24(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -24(%rbp)
	jmp	.LBB19_5
.LBB19_7:                               # %while.end.9
	jmp	.LBB19_19
.LBB19_8:                               # %sw.bb.10
	cmpl	$0, -24(%rbp)
	jl	.LBB19_10
# BB#9:                                 # %lor.lhs.false
	movl	-24(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jl	.LBB19_11
.LBB19_10:                              # %if.then
	xorl	%esi, %esi
	movq	-16(%rbp), %rdi
	movl	-28(%rbp), %eax
	imull	-40(%rbp), %eax
	movslq	%eax, %rdx
	callq	memset
	jmp	.LBB19_71
.LBB19_11:                              # %if.end
	jmp	.LBB19_12
.LBB19_12:                              # %sw.bb.13
	movl	-24(%rbp), %eax
	movl	-36(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jle	.LBB19_14
# BB#13:                                # %cond.true
	movl	-36(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	jmp	.LBB19_18
.LBB19_14:                              # %cond.false
	cmpl	$0, -24(%rbp)
	jge	.LBB19_16
# BB#15:                                # %cond.true.20
	xorl	%eax, %eax
	movl	%eax, -64(%rbp)         # 4-byte Spill
	jmp	.LBB19_17
.LBB19_16:                              # %cond.false.21
	movl	-24(%rbp), %eax
	movl	%eax, -64(%rbp)         # 4-byte Spill
.LBB19_17:                              # %cond.end
	movl	-64(%rbp), %eax         # 4-byte Reload
	movl	%eax, -60(%rbp)         # 4-byte Spill
.LBB19_18:                              # %cond.end.22
	movl	-60(%rbp), %eax         # 4-byte Reload
	movl	%eax, -24(%rbp)
.LBB19_19:                              # %sw.epilog
	movl	config+112(%rip), %eax
	testl	%eax, %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	je	.LBB19_46
	jmp	.LBB19_74
.LBB19_74:                              # %sw.epilog
	movl	-68(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -72(%rbp)         # 4-byte Spill
	je	.LBB19_33
	jmp	.LBB19_75
.LBB19_75:                              # %sw.epilog
	movl	-68(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
	jne	.LBB19_71
	jmp	.LBB19_20
.LBB19_20:                              # %sw.bb.24
	cmpl	$0, -20(%rbp)
	jge	.LBB19_25
# BB#21:                                # %if.then.27
	xorl	%eax, %eax
	movl	-28(%rbp), %ecx
	subl	-20(%rbp), %eax
	cmpl	%eax, %ecx
	jge	.LBB19_23
# BB#22:                                # %cond.true.31
	movl	-28(%rbp), %eax
	movl	%eax, -80(%rbp)         # 4-byte Spill
	jmp	.LBB19_24
.LBB19_23:                              # %cond.false.32
	xorl	%eax, %eax
	subl	-20(%rbp), %eax
	movl	%eax, -80(%rbp)         # 4-byte Spill
.LBB19_24:                              # %cond.end.34
	movl	-80(%rbp), %eax         # 4-byte Reload
	xorl	%esi, %esi
	movl	%eax, -44(%rbp)
	movq	-16(%rbp), %rdi
	movl	-44(%rbp), %eax
	imull	-40(%rbp), %eax
	movslq	%eax, %rdx
	callq	memset
	movl	-44(%rbp), %eax
	imull	-40(%rbp), %eax
	movq	-16(%rbp), %rdx
	movslq	%eax, %rdi
	addq	%rdi, %rdx
	movq	%rdx, -16(%rbp)
	movl	-44(%rbp), %eax
	movl	-28(%rbp), %esi
	subl	%eax, %esi
	movl	%esi, -28(%rbp)
	movl	-44(%rbp), %eax
	addl	-20(%rbp), %eax
	movl	%eax, -20(%rbp)
.LBB19_25:                              # %if.end.41
	cmpl	$0, -28(%rbp)
	je	.LBB19_30
# BB#26:                                # %if.then.42
	movl	-28(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jge	.LBB19_28
# BB#27:                                # %cond.true.45
	movl	-28(%rbp), %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	jmp	.LBB19_29
.LBB19_28:                              # %cond.false.46
	movl	-32(%rbp), %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
.LBB19_29:                              # %cond.end.47
	movl	-84(%rbp), %eax         # 4-byte Reload
	movl	%eax, -44(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	movl	-44(%rbp), %r8d
	callq	gimp_pixel_rgn_get_row
	movl	-44(%rbp), %eax
	imull	-40(%rbp), %eax
	movq	-16(%rbp), %rsi
	movslq	%eax, %rdi
	addq	%rdi, %rsi
	movq	%rsi, -16(%rbp)
	movl	-44(%rbp), %eax
	movl	-28(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -28(%rbp)
	movl	-44(%rbp), %eax
	addl	-20(%rbp), %eax
	movl	%eax, -20(%rbp)
.LBB19_30:                              # %if.end.54
	cmpl	$0, -28(%rbp)
	je	.LBB19_32
# BB#31:                                # %if.then.56
	xorl	%esi, %esi
	movq	-16(%rbp), %rdi
	movl	-28(%rbp), %eax
	imull	-40(%rbp), %eax
	movslq	%eax, %rdx
	callq	memset
.LBB19_32:                              # %if.end.59
	jmp	.LBB19_71
.LBB19_33:                              # %sw.bb.60
	jmp	.LBB19_34
.LBB19_34:                              # %while.cond.61
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -20(%rbp)
	jge	.LBB19_36
# BB#35:                                # %while.body.64
                                        #   in Loop: Header=BB19_34 Depth=1
	movl	-32(%rbp), %eax
	addl	-20(%rbp), %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB19_34
.LBB19_36:                              # %while.end.66
	movl	-28(%rbp), %eax
	movl	-32(%rbp), %ecx
	subl	-20(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB19_38
# BB#37:                                # %cond.true.70
	movl	-28(%rbp), %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	jmp	.LBB19_39
.LBB19_38:                              # %cond.false.71
	movl	-32(%rbp), %eax
	subl	-20(%rbp), %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
.LBB19_39:                              # %cond.end.73
	movl	-88(%rbp), %eax         # 4-byte Reload
	movl	%eax, -44(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	movl	-44(%rbp), %r8d
	callq	gimp_pixel_rgn_get_row
	movl	-44(%rbp), %eax
	movl	-28(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -28(%rbp)
	movl	-44(%rbp), %eax
	imull	-40(%rbp), %eax
	movq	-16(%rbp), %rsi
	movslq	%eax, %rdi
	addq	%rdi, %rsi
	movq	%rsi, -16(%rbp)
	movl	$0, -20(%rbp)
.LBB19_40:                              # %while.cond.79
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -28(%rbp)
	je	.LBB19_45
# BB#41:                                # %while.body.81
                                        #   in Loop: Header=BB19_40 Depth=1
	movl	-28(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jge	.LBB19_43
# BB#42:                                # %cond.true.84
                                        #   in Loop: Header=BB19_40 Depth=1
	movl	-28(%rbp), %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	jmp	.LBB19_44
.LBB19_43:                              # %cond.false.85
                                        #   in Loop: Header=BB19_40 Depth=1
	movl	-32(%rbp), %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
.LBB19_44:                              # %cond.end.86
                                        #   in Loop: Header=BB19_40 Depth=1
	movl	-92(%rbp), %eax         # 4-byte Reload
	movl	%eax, -44(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	movl	-44(%rbp), %r8d
	callq	gimp_pixel_rgn_get_row
	movl	-44(%rbp), %eax
	movl	-28(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -28(%rbp)
	movl	-44(%rbp), %eax
	imull	-40(%rbp), %eax
	movq	-16(%rbp), %rsi
	movslq	%eax, %rdi
	addq	%rdi, %rsi
	movq	%rsi, -16(%rbp)
	jmp	.LBB19_40
.LBB19_45:                              # %while.end.92
	jmp	.LBB19_71
.LBB19_46:                              # %sw.bb.93
	cmpl	$0, -20(%rbp)
	jge	.LBB19_57
# BB#47:                                # %if.then.96
	xorl	%edx, %edx
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-24(%rbp), %ecx
	callq	gimp_pixel_rgn_get_pixel
	movl	-20(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -20(%rbp)
	movl	-28(%rbp), %ecx
	addl	$-1, %ecx
	movl	%ecx, -28(%rbp)
	movl	-40(%rbp), %ecx
	movq	-16(%rbp), %rsi
	movslq	%ecx, %rdi
	addq	%rdi, %rsi
	movq	%rsi, -16(%rbp)
.LBB19_48:                              # %while.cond.99
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB19_52 Depth 2
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -20(%rbp)
	movb	%cl, -93(%rbp)          # 1-byte Spill
	jge	.LBB19_50
# BB#49:                                # %land.rhs
                                        #   in Loop: Header=BB19_48 Depth=1
	cmpl	$0, -28(%rbp)
	setne	%al
	movb	%al, -93(%rbp)          # 1-byte Spill
.LBB19_50:                              # %land.end
                                        #   in Loop: Header=BB19_48 Depth=1
	movb	-93(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB19_51
	jmp	.LBB19_56
.LBB19_51:                              # %while.body.103
                                        #   in Loop: Header=BB19_48 Depth=1
	movl	$0, -44(%rbp)
.LBB19_52:                              # %for.cond
                                        #   Parent Loop BB19_48 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-44(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jge	.LBB19_55
# BB#53:                                # %for.body
                                        #   in Loop: Header=BB19_52 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movslq	-40(%rbp), %rsi
	subq	%rsi, %rcx
	movb	(%rdx,%rcx), %dil
	movq	-16(%rbp), %rcx
	movb	%dil, (%rcx)
	movq	-16(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
# BB#54:                                # %for.inc
                                        #   in Loop: Header=BB19_52 Depth=2
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB19_52
.LBB19_55:                              # %for.end
                                        #   in Loop: Header=BB19_48 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	movl	-28(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB19_48
.LBB19_56:                              # %while.end.111
	jmp	.LBB19_57
.LBB19_57:                              # %if.end.112
	cmpl	$0, -28(%rbp)
	je	.LBB19_63
# BB#58:                                # %land.lhs.true
	movl	-32(%rbp), %eax
	subl	-20(%rbp), %eax
	cmpl	$0, %eax
	jle	.LBB19_63
# BB#59:                                # %if.then.117
	movl	-28(%rbp), %eax
	movl	-32(%rbp), %ecx
	subl	-20(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB19_61
# BB#60:                                # %cond.true.121
	movl	-28(%rbp), %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jmp	.LBB19_62
.LBB19_61:                              # %cond.false.122
	movl	-32(%rbp), %eax
	subl	-20(%rbp), %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
.LBB19_62:                              # %cond.end.124
	movl	-100(%rbp), %eax        # 4-byte Reload
	movl	%eax, -44(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	movl	-44(%rbp), %r8d
	callq	gimp_pixel_rgn_get_row
	movl	-44(%rbp), %eax
	movl	-28(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -28(%rbp)
	movl	-44(%rbp), %eax
	imull	-40(%rbp), %eax
	movq	-16(%rbp), %rsi
	movslq	%eax, %rdi
	addq	%rdi, %rsi
	movq	%rsi, -16(%rbp)
.LBB19_63:                              # %if.end.130
	jmp	.LBB19_64
.LBB19_64:                              # %while.cond.131
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB19_66 Depth 2
	cmpl	$0, -28(%rbp)
	je	.LBB19_70
# BB#65:                                # %while.body.133
                                        #   in Loop: Header=BB19_64 Depth=1
	movl	$0, -44(%rbp)
.LBB19_66:                              # %for.cond.134
                                        #   Parent Loop BB19_64 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-44(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jge	.LBB19_69
# BB#67:                                # %for.body.137
                                        #   in Loop: Header=BB19_66 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movslq	-40(%rbp), %rsi
	subq	%rsi, %rcx
	movb	(%rdx,%rcx), %dil
	movq	-16(%rbp), %rcx
	movb	%dil, (%rcx)
	movq	-16(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
# BB#68:                                # %for.inc.142
                                        #   in Loop: Header=BB19_66 Depth=2
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB19_66
.LBB19_69:                              # %for.end.144
                                        #   in Loop: Header=BB19_64 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	movl	-28(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB19_64
.LBB19_70:                              # %while.end.147
	jmp	.LBB19_71
.LBB19_71:                              # %sw.epilog.148
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	my_get_row, .Lfunc_end19-my_get_row
	.cfi_endproc

	.align	16, 0x90
	.type	convolve_pixel,@function
convolve_pixel:                         # @convolve_pixel
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
	xorps	%xmm0, %xmm0
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movss	%xmm0, -28(%rbp)
	movss	%xmm0, -32(%rbp)
	cmpl	$0, convolve_pixel.bpp
	jne	.LBB20_13
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movl	12(%rax), %ecx
	movl	%ecx, convolve_pixel.bpp
	movl	$0, -40(%rbp)
.LBB20_2:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB20_4 Depth 2
	cmpl	$5, -40(%rbp)
	jge	.LBB20_12
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB20_2 Depth=1
	movl	$0, -36(%rbp)
.LBB20_4:                               # %for.cond.1
                                        #   Parent Loop BB20_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$5, -36(%rbp)
	jge	.LBB20_10
# BB#5:                                 # %for.body.3
                                        #   in Loop: Header=BB20_4 Depth=2
	xorps	%xmm0, %xmm0
	movabsq	$config, %rax
	movslq	-40(%rbp), %rcx
	movslq	-36(%rbp), %rdx
	imulq	$20, %rdx, %rdx
	addq	%rdx, %rax
	ucomiss	(%rax,%rcx,4), %xmm0
	jbe	.LBB20_7
# BB#6:                                 # %cond.true
                                        #   in Loop: Header=BB20_4 Depth=2
	movabsq	$config, %rax
	movslq	-40(%rbp), %rcx
	movslq	-36(%rbp), %rdx
	imulq	$20, %rdx, %rdx
	addq	%rdx, %rax
	movss	(%rax,%rcx,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	movd	%xmm0, %esi
	xorl	$2147483648, %esi       # imm = 0x80000000
	movd	%esi, %xmm0
	movss	%xmm0, -52(%rbp)        # 4-byte Spill
	jmp	.LBB20_8
.LBB20_7:                               # %cond.false
                                        #   in Loop: Header=BB20_4 Depth=2
	movabsq	$config, %rax
	movslq	-40(%rbp), %rcx
	movslq	-36(%rbp), %rdx
	imulq	$20, %rdx, %rdx
	addq	%rdx, %rax
	movss	(%rax,%rcx,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -52(%rbp)        # 4-byte Spill
.LBB20_8:                               # %cond.end
                                        #   in Loop: Header=BB20_4 Depth=2
	movss	-52(%rbp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	addss	convolve_pixel.matrixsum, %xmm0
	movss	%xmm0, convolve_pixel.matrixsum
# BB#9:                                 # %for.inc
                                        #   in Loop: Header=BB20_4 Depth=2
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB20_4
.LBB20_10:                              # %for.end
                                        #   in Loop: Header=BB20_2 Depth=1
	jmp	.LBB20_11
.LBB20_11:                              # %for.inc.15
                                        #   in Loop: Header=BB20_2 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB20_2
.LBB20_12:                              # %for.end.17
	jmp	.LBB20_13
.LBB20_13:                              # %if.end
	movl	convolve_pixel.bpp, %eax
	subl	$1, %eax
	movl	%eax, -44(%rbp)
	movl	$0, -40(%rbp)
.LBB20_14:                              # %for.cond.19
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB20_16 Depth 2
	cmpl	$5, -40(%rbp)
	jge	.LBB20_27
# BB#15:                                # %for.body.21
                                        #   in Loop: Header=BB20_14 Depth=1
	movl	$0, -36(%rbp)
.LBB20_16:                              # %for.cond.22
                                        #   Parent Loop BB20_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$5, -36(%rbp)
	jge	.LBB20_25
# BB#17:                                # %for.body.24
                                        #   in Loop: Header=BB20_16 Depth=2
	movabsq	$config, %rax
	movslq	-40(%rbp), %rcx
	movslq	-36(%rbp), %rdx
	imulq	$20, %rdx, %rdx
	addq	%rdx, %rax
	movss	(%rax,%rcx,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -48(%rbp)
	movl	-16(%rbp), %esi
	cmpl	-44(%rbp), %esi
	je	.LBB20_23
# BB#18:                                # %land.lhs.true
                                        #   in Loop: Header=BB20_16 Depth=2
	cmpl	$1, config+108
	jne	.LBB20_23
# BB#19:                                # %if.then.31
                                        #   in Loop: Header=BB20_16 Depth=2
	xorps	%xmm0, %xmm0
	movl	-12(%rbp), %eax
	movl	-36(%rbp), %ecx
	imull	convolve_pixel.bpp, %ecx
	addl	%ecx, %eax
	addl	-44(%rbp), %eax
	subl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movslq	-40(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	(%rdi,%rsi,8), %rsi
	movzbl	(%rsi,%rdx), %eax
	cvtsi2ssl	%eax, %xmm1
	mulss	-48(%rbp), %xmm1
	movss	%xmm1, -48(%rbp)
	ucomiss	-48(%rbp), %xmm0
	jbe	.LBB20_21
# BB#20:                                # %cond.true.43
                                        #   in Loop: Header=BB20_16 Depth=2
	movss	-48(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movd	%xmm0, %eax
	xorl	$2147483648, %eax       # imm = 0x80000000
	movd	%eax, %xmm0
	movss	%xmm0, -56(%rbp)        # 4-byte Spill
	jmp	.LBB20_22
.LBB20_21:                              # %cond.false.45
                                        #   in Loop: Header=BB20_16 Depth=2
	movss	-48(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -56(%rbp)        # 4-byte Spill
.LBB20_22:                              # %cond.end.46
                                        #   in Loop: Header=BB20_16 Depth=2
	movss	-56(%rbp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	addss	-32(%rbp), %xmm0
	movss	%xmm0, -32(%rbp)
.LBB20_23:                              # %if.end.49
                                        #   in Loop: Header=BB20_16 Depth=2
	movl	-12(%rbp), %eax
	movl	-36(%rbp), %ecx
	imull	convolve_pixel.bpp, %ecx
	addl	%ecx, %eax
	movslq	%eax, %rdx
	movslq	-40(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	(%rdi,%rsi,8), %rsi
	movzbl	(%rsi,%rdx), %eax
	cvtsi2ssl	%eax, %xmm0
	mulss	-48(%rbp), %xmm0
	movss	%xmm0, -48(%rbp)
	movss	-48(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	addss	-28(%rbp), %xmm0
	movss	%xmm0, -28(%rbp)
# BB#24:                                # %for.inc.60
                                        #   in Loop: Header=BB20_16 Depth=2
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB20_16
.LBB20_25:                              # %for.end.62
                                        #   in Loop: Header=BB20_14 Depth=1
	jmp	.LBB20_26
.LBB20_26:                              # %for.inc.63
                                        #   in Loop: Header=BB20_14 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB20_14
.LBB20_27:                              # %for.end.65
	movss	config+100, %xmm0       # xmm0 = mem[0],zero,zero,zero
	movss	-28(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	divss	%xmm0, %xmm1
	movss	%xmm1, -28(%rbp)
	movl	-16(%rbp), %eax
	cmpl	-44(%rbp), %eax
	je	.LBB20_33
# BB#28:                                # %land.lhs.true.68
	cmpl	$1, config+108
	jne	.LBB20_33
# BB#29:                                # %if.then.71
	xorps	%xmm0, %xmm0
	movss	-32(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jne	.LBB20_30
	jp	.LBB20_30
	jmp	.LBB20_31
.LBB20_30:                              # %if.then.74
	movss	-28(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	mulss	convolve_pixel.matrixsum, %xmm0
	divss	-32(%rbp), %xmm0
	movss	%xmm0, -28(%rbp)
	jmp	.LBB20_32
.LBB20_31:                              # %if.else
	xorps	%xmm0, %xmm0
	movss	%xmm0, -28(%rbp)
.LBB20_32:                              # %if.end.77
	jmp	.LBB20_33
.LBB20_33:                              # %if.end.78
	movss	config+104, %xmm0       # xmm0 = mem[0],zero,zero,zero
	addss	-28(%rbp), %xmm0
	movss	%xmm0, -28(%rbp)
	movss	-28(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	popq	%rbp
	retq
.Lfunc_end20:
	.size	convolve_pixel, .Lfunc_end20-convolve_pixel
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
	.long	8                       # 0x8
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
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.16
	.quad	.L.str.17
	.long	5                       # 0x5
	.zero	4
	.quad	.L.str.18
	.quad	.L.str.19
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.20
	.quad	.L.str.21
	.size	query.args, 264

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
	.asciz	"argc-matrix"
	.size	.L.str.6, 12

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"The number of elements in the following array. Should be always 25."
	.size	.L.str.7, 68

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"matrix"
	.size	.L.str.8, 7

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"The 5x5 convolution matrix"
	.size	.L.str.9, 27

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"alpha-alg"
	.size	.L.str.10, 10

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Enable weighting by alpha channel"
	.size	.L.str.11, 34

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"divisor"
	.size	.L.str.12, 8

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Divisor"
	.size	.L.str.13, 8

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"offset"
	.size	.L.str.14, 7

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Offset"
	.size	.L.str.15, 7

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"argc-channels"
	.size	.L.str.16, 14

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"The number of elements in following array. Should be always 5."
	.size	.L.str.17, 63

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"channels"
	.size	.L.str.18, 9

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Mask of the channels to be filtered"
	.size	.L.str.19, 36

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"bmode"
	.size	.L.str.20, 6

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Mode for treating image borders { EXTEND (0), WRAP (1), CLEAR (2) }"
	.size	.L.str.21, 68

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"plug-in-convmatrix"
	.size	.L.str.22, 19

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Apply a generic 5x5 convolution matrix"
	.size	.L.str.23, 39

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.zero	1
	.size	.L.str.24, 1

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Lauri Alanko"
	.size	.L.str.25, 13

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"1997"
	.size	.L.str.26, 5

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"_Convolution Matrix..."
	.size	.L.str.27, 23

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"RGB*, GRAY*"
	.size	.L.str.28, 12

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"<Image>/Filters/Generic"
	.size	.L.str.29, 24

	.type	run.values,@object      # @run.values
	.local	run.values
	.comm	run.values,40,16
	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"gimp20-std-plug-ins"
	.size	.L.str.30, 20

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"UTF-8"
	.size	.L.str.31, 6

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"Convolution does not work on layers smaller than 3x3 pixels."
	.size	.L.str.32, 61

	.type	config,@object          # @config
	.local	config
	.comm	config,140,4
	.type	default_config,@object  # @default_config
	.section	.rodata,"a",@progbits
	.align	4
default_config:
	.zero	20
	.zero	20
	.long	0                       # float 0.000000e+00
	.long	0                       # float 0.000000e+00
	.long	1065353216              # float 1.000000e+00
	.long	0                       # float 0.000000e+00
	.long	0                       # float 0.000000e+00
	.zero	20
	.zero	20
	.long	1065353216              # float 1
	.long	0                       # float 0
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.size	default_config, 140

	.type	.L.str.33,@object       # @.str.33
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.33:
	.asciz	"Applying convolution"
	.size	.L.str.33, 21

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"convolution-matrix"
	.size	.L.str.34, 19

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"Convolution Matrix"
	.size	.L.str.35, 19

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"gimp-convolution-matrix"
	.size	.L.str.36, 24

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"gimp-reset"
	.size	.L.str.37, 11

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"gtk-cancel"
	.size	.L.str.38, 11

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"gtk-ok"
	.size	.L.str.39, 7

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"invalidated"
	.size	.L.str.40, 12

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"Matrix"
	.size	.L.str.41, 7

	.type	widget_set,@object      # @widget_set
	.local	widget_set
	.comm	widget_set,296,8
	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"changed"
	.size	.L.str.42, 8

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"D_ivisor:"
	.size	.L.str.43, 10

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"O_ffset:"
	.size	.L.str.44, 9

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"N_ormalise"
	.size	.L.str.45, 11

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"toggled"
	.size	.L.str.46, 8

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"A_lpha-weighting"
	.size	.L.str.47, 17

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"Border"
	.size	.L.str.48, 7

	.type	bmode_labels,@object    # @bmode_labels
	.section	.rodata,"a",@progbits
	.align	16
bmode_labels:
	.quad	.L.str.53
	.quad	.L.str.54
	.quad	.L.str.55
	.size	bmode_labels, 24

	.type	.L.str.49,@object       # @.str.49
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.49:
	.asciz	"Channels"
	.size	.L.str.49, 9

	.type	channel_labels,@object  # @channel_labels
	.section	.rodata,"a",@progbits
	.align	16
channel_labels:
	.quad	.L.str.56
	.quad	.L.str.57
	.quad	.L.str.58
	.quad	.L.str.59
	.quad	.L.str.60
	.size	channel_labels, 40

	.type	.L.str.50,@object       # @.str.50
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.50:
	.asciz	"response"
	.size	.L.str.50, 9

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"destroy"
	.size	.L.str.51, 8

	.type	run_flag,@object        # @run_flag
	.local	run_flag
	.comm	run_flag,4,4
	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"%g"
	.size	.L.str.52, 3

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"E_xtend"
	.size	.L.str.53, 8

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"_Wrap"
	.size	.L.str.54, 6

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"Cro_p"
	.size	.L.str.55, 6

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"Gr_ey"
	.size	.L.str.56, 6

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"Re_d"
	.size	.L.str.57, 5

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"_Green"
	.size	.L.str.58, 7

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"_Blue"
	.size	.L.str.59, 6

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"_Alpha"
	.size	.L.str.60, 7

	.type	convolve_pixel.matrixsum,@object # @convolve_pixel.matrixsum
	.local	convolve_pixel.matrixsum
	.comm	convolve_pixel.matrixsum,4,4
	.type	convolve_pixel.bpp,@object # @convolve_pixel.bpp
	.local	convolve_pixel.bpp
	.comm	convolve_pixel.bpp,4,4

	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
