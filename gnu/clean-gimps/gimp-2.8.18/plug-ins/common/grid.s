	.text
	.file	"grid.bc"
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
	subq	$88, %rsp
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
	movabsq	$.L.str.36, %rdi
	movabsq	$.L.str.37, %rsi
	movabsq	$.L.str.38, %rdx
	movabsq	$.L.str.39, %rcx
	movabsq	$.L.str.40, %r8
	movabsq	$.L.str.41, %r9
	movabsq	$.L.str.42, %rax
	movabsq	$.L.str.43, %r10
	movl	$1, %r11d
	movl	$18, %ebx
	xorl	%r14d, %r14d
	movabsq	$query.args, %r15
	xorl	%r12d, %r12d
	movl	%r12d, %r13d
	movq	%rax, (%rsp)
	movq	%r10, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$18, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%r15, 40(%rsp)
	movq	$0, 48(%rsp)
	movq	%r13, -48(%rbp)         # 8-byte Spill
	movl	%r11d, -52(%rbp)        # 4-byte Spill
	movl	%r14d, -56(%rbp)        # 4-byte Spill
	movl	%ebx, -60(%rbp)         # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.36, %rdi
	movabsq	$.L.str.44, %rsi
	callq	gimp_plugin_menu_register
	movl	%eax, -64(%rbp)         # 4-byte Spill
	addq	$88, %rsp
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
	.quad	4643176031446892544     # double 255
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
	subq	$160, %rsp
	movabsq	$run.values, %rax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	$3, -60(%rbp)
	movq	-32(%rbp), %rcx
	movl	$1, (%rcx)
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
# BB#1:                                 # %do.body
	callq	gimp_locale_directory
	movabsq	$.L.str.45, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.45, %rdi
	movabsq	$.L.str.46, %rsi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.45, %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	textdomain
	movq	%rax, -88(%rbp)         # 8-byte Spill
# BB#2:                                 # %do.end
	movq	-24(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -56(%rbp)
	movq	-24(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -52(%rbp)
	movq	-24(%rbp), %rax
	movl	88(%rax), %edi
	callq	gimp_drawable_get
	movq	%rax, -48(%rbp)
	cmpl	$1, -56(%rbp)
	jne	.LBB1_35
# BB#3:                                 # %if.then
	cmpl	$18, -12(%rbp)
	je	.LBB1_5
# BB#4:                                 # %if.then.11
	movl	$1, -60(%rbp)
.LBB1_5:                                # %if.end
	cmpl	$3, -60(%rbp)
	jne	.LBB1_34
# BB#6:                                 # %if.then.13
	xorl	%eax, %eax
	movq	-24(%rbp), %rcx
	cmpl	128(%rcx), %eax
	jle	.LBB1_8
# BB#7:                                 # %cond.true
	xorl	%eax, %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	jmp	.LBB1_9
.LBB1_8:                                # %cond.false
	movq	-24(%rbp), %rax
	movl	128(%rax), %ecx
	movl	%ecx, -92(%rbp)         # 4-byte Spill
.LBB1_9:                                # %cond.end
	movl	-92(%rbp), %eax         # 4-byte Reload
	movl	$1, %ecx
	movl	%eax, grid_cfg
	movq	-24(%rbp), %rdx
	cmpl	168(%rdx), %ecx
	jle	.LBB1_11
# BB#10:                                # %cond.true.25
	movl	$1, %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
	jmp	.LBB1_12
.LBB1_11:                               # %cond.false.26
	movq	-24(%rbp), %rax
	movl	168(%rax), %ecx
	movl	%ecx, -96(%rbp)         # 4-byte Spill
.LBB1_12:                               # %cond.end.30
	movl	-96(%rbp), %eax         # 4-byte Reload
	xorl	%ecx, %ecx
	movl	%eax, grid_cfg+4
	movq	-24(%rbp), %rdx
	cmpl	208(%rdx), %ecx
	jle	.LBB1_14
# BB#13:                                # %cond.true.36
	xorl	%eax, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jmp	.LBB1_15
.LBB1_14:                               # %cond.false.37
	movq	-24(%rbp), %rax
	movl	208(%rax), %ecx
	movl	%ecx, -100(%rbp)        # 4-byte Spill
.LBB1_15:                               # %cond.end.41
	movl	-100(%rbp), %eax        # 4-byte Reload
	movabsq	$grid_cfg, %rcx
	addq	$16, %rcx
	movsd	.LCPI1_0, %xmm0         # xmm0 = mem[0],zero
	movl	%eax, grid_cfg+8(%rip)
	movq	-24(%rbp), %rdx
	movups	248(%rdx), %xmm1
	movups	264(%rdx), %xmm2
	movups	%xmm2, grid_cfg+32(%rip)
	movups	%xmm1, grid_cfg+16(%rip)
	movq	-24(%rbp), %rdx
	movzbl	288(%rdx), %eax
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm0, %xmm1
	movq	%rcx, %rdi
	movaps	%xmm1, %xmm0
	callq	gimp_rgb_set_alpha
	xorl	%eax, %eax
	movq	-24(%rbp), %rcx
	cmpl	328(%rcx), %eax
	jle	.LBB1_17
# BB#16:                                # %cond.true.52
	xorl	%eax, %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
	jmp	.LBB1_18
.LBB1_17:                               # %cond.false.53
	movq	-24(%rbp), %rax
	movl	328(%rax), %ecx
	movl	%ecx, -104(%rbp)        # 4-byte Spill
.LBB1_18:                               # %cond.end.57
	movl	-104(%rbp), %eax        # 4-byte Reload
	movl	$1, %ecx
	movl	%eax, grid_cfg+48
	movq	-24(%rbp), %rdx
	cmpl	368(%rdx), %ecx
	jle	.LBB1_20
# BB#19:                                # %cond.true.64
	movl	$1, %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
	jmp	.LBB1_21
.LBB1_20:                               # %cond.false.65
	movq	-24(%rbp), %rax
	movl	368(%rax), %ecx
	movl	%ecx, -108(%rbp)        # 4-byte Spill
.LBB1_21:                               # %cond.end.69
	movl	-108(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movl	%eax, grid_cfg+52
	movq	-24(%rbp), %rdx
	cmpl	408(%rdx), %ecx
	jle	.LBB1_23
# BB#22:                                # %cond.true.76
	xorl	%eax, %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
	jmp	.LBB1_24
.LBB1_23:                               # %cond.false.77
	movq	-24(%rbp), %rax
	movl	408(%rax), %ecx
	movl	%ecx, -112(%rbp)        # 4-byte Spill
.LBB1_24:                               # %cond.end.81
	movl	-112(%rbp), %eax        # 4-byte Reload
	movabsq	$grid_cfg, %rcx
	addq	$64, %rcx
	movsd	.LCPI1_0, %xmm0         # xmm0 = mem[0],zero
	movl	%eax, grid_cfg+56(%rip)
	movq	-24(%rbp), %rdx
	movups	448(%rdx), %xmm1
	movups	464(%rdx), %xmm2
	movups	%xmm2, grid_cfg+80(%rip)
	movups	%xmm1, grid_cfg+64(%rip)
	movq	-24(%rbp), %rdx
	movzbl	488(%rdx), %eax
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm0, %xmm1
	movq	%rcx, %rdi
	movaps	%xmm1, %xmm0
	callq	gimp_rgb_set_alpha
	xorl	%eax, %eax
	movq	-24(%rbp), %rcx
	cmpl	528(%rcx), %eax
	jle	.LBB1_26
# BB#25:                                # %cond.true.96
	xorl	%eax, %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
	jmp	.LBB1_27
.LBB1_26:                               # %cond.false.97
	movq	-24(%rbp), %rax
	movl	528(%rax), %ecx
	movl	%ecx, -116(%rbp)        # 4-byte Spill
.LBB1_27:                               # %cond.end.101
	movl	-116(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movl	%eax, grid_cfg+96
	movq	-24(%rbp), %rdx
	cmpl	568(%rdx), %ecx
	jle	.LBB1_29
# BB#28:                                # %cond.true.108
	xorl	%eax, %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
	jmp	.LBB1_30
.LBB1_29:                               # %cond.false.109
	movq	-24(%rbp), %rax
	movl	568(%rax), %ecx
	movl	%ecx, -120(%rbp)        # 4-byte Spill
.LBB1_30:                               # %cond.end.113
	movl	-120(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movl	%eax, grid_cfg+100
	movq	-24(%rbp), %rdx
	cmpl	608(%rdx), %ecx
	jle	.LBB1_32
# BB#31:                                # %cond.true.120
	xorl	%eax, %eax
	movl	%eax, -124(%rbp)        # 4-byte Spill
	jmp	.LBB1_33
.LBB1_32:                               # %cond.false.121
	movq	-24(%rbp), %rax
	movl	608(%rax), %ecx
	movl	%ecx, -124(%rbp)        # 4-byte Spill
.LBB1_33:                               # %cond.end.125
	movl	-124(%rbp), %eax        # 4-byte Reload
	movabsq	$grid_cfg, %rcx
	addq	$112, %rcx
	movsd	.LCPI1_0, %xmm0         # xmm0 = mem[0],zero
	movl	%eax, grid_cfg+104(%rip)
	movq	-24(%rbp), %rdx
	movups	648(%rdx), %xmm1
	movups	664(%rdx), %xmm2
	movups	%xmm2, grid_cfg+128(%rip)
	movups	%xmm1, grid_cfg+112(%rip)
	movq	-24(%rbp), %rdx
	movzbl	688(%rdx), %eax
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm0, %xmm1
	movq	%rcx, %rdi
	movaps	%xmm1, %xmm0
	callq	gimp_rgb_set_alpha
.LBB1_34:                               # %if.end.136
	jmp	.LBB1_36
.LBB1_35:                               # %if.else
	movabsq	$grid_cfg, %rax
	addq	$16, %rax
	movq	%rax, %rdi
	callq	gimp_context_get_foreground
	movabsq	$.L.str.36, %rdi
	movabsq	$grid_cfg, %rcx
	movq	grid_cfg+16, %rdx
	movq	%rdx, grid_cfg+112
	movq	grid_cfg+24, %rdx
	movq	%rdx, grid_cfg+120
	movq	grid_cfg+32, %rdx
	movq	%rdx, grid_cfg+128
	movq	grid_cfg+40, %rdx
	movq	%rdx, grid_cfg+136
	movq	grid_cfg+112, %rdx
	movq	%rdx, grid_cfg+64
	movq	grid_cfg+120, %rdx
	movq	%rdx, grid_cfg+72
	movq	grid_cfg+128, %rdx
	movq	%rdx, grid_cfg+80
	movq	grid_cfg+136, %rdx
	movq	%rdx, grid_cfg+88
	movq	%rcx, %rsi
	movl	%eax, -128(%rbp)        # 4-byte Spill
	callq	gimp_procedural_db_get_data
	movl	%eax, -132(%rbp)        # 4-byte Spill
.LBB1_36:                               # %if.end.139
	cmpl	$0, -56(%rbp)
	jne	.LBB1_40
# BB#37:                                # %if.then.142
	movl	-52(%rbp), %edi
	movq	-48(%rbp), %rsi
	callq	dialog
	cmpl	$0, %eax
	jne	.LBB1_39
# BB#38:                                # %if.then.144
	movl	$0, -60(%rbp)
.LBB1_39:                               # %if.end.145
	jmp	.LBB1_40
.LBB1_40:                               # %if.end.146
	cmpl	$0, grid_cfg+4
	jle	.LBB1_42
# BB#41:                                # %lor.lhs.false
	cmpl	$0, grid_cfg+52
	jg	.LBB1_43
.LBB1_42:                               # %if.then.151
	movl	$0, -60(%rbp)
.LBB1_43:                               # %if.end.152
	cmpl	$3, -60(%rbp)
	jne	.LBB1_49
# BB#44:                                # %if.then.155
	movabsq	$.L.str.47, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_progress_init
	movq	-48(%rbp), %rdi
	movl	4(%rdi), %ecx
	movl	%eax, -136(%rbp)        # 4-byte Spill
	movl	%ecx, -140(%rbp)        # 4-byte Spill
	callq	gimp_tile_width
	movl	-140(%rbp), %ecx        # 4-byte Reload
	movl	%eax, -144(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	xorl	%edx, %edx
	movl	-144(%rbp), %esi        # 4-byte Reload
	divl	%esi
	addl	$1, %eax
	shll	$1, %eax
	movl	%eax, %eax
	movl	%eax, %edi
	callq	gimp_tile_cache_ntiles
	xorl	%eax, %eax
	movl	%eax, %edi
	movl	-52(%rbp), %eax
	movq	-48(%rbp), %rsi
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movl	%eax, %edi
	movq	-152(%rbp), %r8         # 8-byte Reload
	movq	%r8, %rdx
	callq	grid
	cmpl	$1, -56(%rbp)
	je	.LBB1_46
# BB#45:                                # %if.then.163
	callq	gimp_displays_flush
	movl	%eax, -156(%rbp)        # 4-byte Spill
.LBB1_46:                               # %if.end.165
	cmpl	$0, -56(%rbp)
	jne	.LBB1_48
# BB#47:                                # %if.then.168
	movabsq	$.L.str.36, %rdi
	movabsq	$grid_cfg, %rax
	movl	$144, %edx
	movq	%rax, %rsi
	callq	gimp_procedural_db_set_data
	movl	%eax, -160(%rbp)        # 4-byte Spill
.LBB1_48:                               # %if.end.170
	movq	-48(%rbp), %rdi
	callq	gimp_drawable_detach
.LBB1_49:                               # %if.end.171
	movl	$21, run.values
	movl	-60(%rbp), %eax
	movl	%eax, run.values+8
	addq	$160, %rsp
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
	.quad	4547007122018943789     # double 1.0E-4
	.text
	.align	16, 0x90
	.type	dialog,@function
dialog:                                 # @dialog
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
	subq	$1392, %rsp             # imm = 0x570
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, main_dialog
	jne	.LBB3_3
# BB#2:                                 # %if.then
	jmp	.LBB3_4
.LBB3_3:                                # %if.else
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L__func__.dialog, %rsi
	movabsq	$.L.str.48, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB3_25
.LBB3_4:                                # %if.end
	jmp	.LBB3_5
.LBB3_5:                                # %do.end
	movl	$1, %esi
	xorps	%xmm0, %xmm0
	movl	$.L.str.49, %eax
	movl	%eax, %edi
	movl	$1, %eax
	movl	%esi, -144(%rbp)        # 4-byte Spill
	movl	%eax, %esi
	movl	%eax, -148(%rbp)        # 4-byte Spill
	movsd	%xmm0, -160(%rbp)       # 8-byte Spill
	callq	gimp_ui_init
	movl	$.L.str.50, %eax
	movl	%eax, %edi
	callq	gettext
	movq	%rsp, %rdi
	movq	$0, 32(%rdi)
	movl	$-5, 24(%rdi)
	movq	$.L.str.53, 16(%rdi)
	movl	$-6, 8(%rdi)
	movq	$.L.str.52, (%rdi)
	movl	$.L.str.51, %esi
                                        # kill: RSI<def> ESI<kill>
	movl	$gimp_standard_help_func, %ecx
	movl	%ecx, %r8d
	movl	$.L.str.36, %ecx
	movl	%ecx, %r9d
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movb	%cl, %dl
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-168(%rbp), %rax        # 8-byte Reload
	movb	%dl, -169(%rbp)         # 1-byte Spill
	movq	%rax, %rdx
	movl	%ecx, -176(%rbp)        # 4-byte Spill
	movb	-169(%rbp), %al         # 1-byte Reload
	callq	gimp_dialog_new
	movq	%rax, -24(%rbp)
	movq	%rax, main_dialog(%rip)
	movq	-24(%rbp), %rdi
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$-5, %esi
	movl	$-6, %edx
	movl	$-1, %ecx
	movq	%rax, %rdi
	movb	-169(%rbp), %al         # 1-byte Reload
	callq	gtk_dialog_set_alternative_button_order
	movq	-24(%rbp), %rdi
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_window_set_transient
	movl	-8(%rbp), %edi
	leaq	-128(%rbp), %rsi
	leaq	-136(%rbp), %rdx
	callq	gimp_image_get_resolution
	movl	-8(%rbp), %edi
	movl	%eax, -196(%rbp)        # 4-byte Spill
	callq	gimp_image_get_unit
	movl	%eax, -116(%rbp)
	movl	$12, %eax
	movl	-148(%rbp), %edi        # 4-byte Reload
	movl	%eax, %esi
	movl	%eax, -200(%rbp)        # 4-byte Spill
	callq	gtk_box_new
	movq	%rax, -32(%rbp)
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	movl	-200(%rbp), %esi        # 4-byte Reload
	callq	gtk_container_set_border_width
	movq	-24(%rbp), %rdi
	movq	%rdi, -216(%rbp)        # 8-byte Spill
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
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	movl	-148(%rbp), %edx        # 4-byte Reload
	movl	-148(%rbp), %ecx        # 4-byte Reload
	movl	-176(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	movq	-16(%rbp), %rdi
	movq	-168(%rbp), %rsi        # 8-byte Reload
	callq	gimp_drawable_preview_new
	movq	%rax, -64(%rbp)
	movq	-32(%rbp), %rdi
	movq	%rdi, -232(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	-148(%rbp), %edx        # 4-byte Reload
	movl	-148(%rbp), %ecx        # 4-byte Reload
	movl	-176(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	movq	-64(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movl	$.L.str.54, %edx
	movl	%edx, %esi
	movl	$update_preview, %edx
                                        # kill: RDX<def> EDX<kill>
	movq	-168(%rbp), %r8         # 8-byte Reload
	movl	-176(%rbp), %r9d        # 4-byte Reload
	callq	g_signal_connect_data
	movl	$2, %r9d
	movl	-148(%rbp), %edi        # 4-byte Reload
	movl	%r9d, %esi
	movq	%rax, -240(%rbp)        # 8-byte Spill
	movl	%r9d, -244(%rbp)        # 4-byte Spill
	callq	gtk_box_new
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rdi
	movq	%rdi, -256(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	-176(%rbp), %edx        # 4-byte Reload
	movl	-176(%rbp), %ecx        # 4-byte Reload
	movl	-176(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movl	-116(%rbp), %esi
	movq	%rsp, %rax
	movl	$1, 8(%rax)
	movl	$8, (%rax)
	movl	$.L.str.55, %ecx
	movl	%ecx, %edx
	movl	$3, %edi
	movl	-148(%rbp), %ecx        # 4-byte Reload
	movl	-148(%rbp), %r8d        # 4-byte Reload
	movl	-176(%rbp), %r9d        # 4-byte Reload
	callq	gimp_size_entry_new
	movq	%rax, -80(%rbp)
	movq	-40(%rbp), %rdi
	movq	%rdi, -264(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	movl	-176(%rbp), %edx        # 4-byte Reload
	movl	-176(%rbp), %ecx        # 4-byte Reload
	movl	-176(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-80(%rbp), %rdi
	callq	gtk_widget_show
	movq	-80(%rbp), %rdi
	movq	%rdi, -272(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	movl	-176(%rbp), %esi        # 4-byte Reload
	callq	gimp_size_entry_set_unit
	movq	-80(%rbp), %rdi
	movq	%rdi, -280(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movsd	-128(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	%rax, %rdi
	movl	-176(%rbp), %esi        # 4-byte Reload
	movl	-148(%rbp), %edx        # 4-byte Reload
	callq	gimp_size_entry_set_resolution
	movq	-80(%rbp), %rdi
	movq	%rdi, -288(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movsd	-136(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	%rax, %rdi
	movl	-148(%rbp), %esi        # 4-byte Reload
	movl	-148(%rbp), %edx        # 4-byte Reload
	callq	gimp_size_entry_set_resolution
	movq	-80(%rbp), %rdi
	movq	%rdi, -296(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movsd	-128(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	%rax, %rdi
	movl	-244(%rbp), %esi        # 4-byte Reload
	movl	-148(%rbp), %edx        # 4-byte Reload
	callq	gimp_size_entry_set_resolution
	movq	-80(%rbp), %rdi
	movq	%rdi, -304(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movl	8(%rsi), %ecx
	movl	%ecx, %esi
	cvtsi2sdq	%rsi, %xmm1
	xorps	%xmm0, %xmm0
	movq	%rax, %rdi
	movl	-176(%rbp), %esi        # 4-byte Reload
	movsd	%xmm0, -312(%rbp)       # 8-byte Spill
	callq	gimp_size_entry_set_size
	movq	-80(%rbp), %rdi
	movq	%rdi, -320(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movl	4(%rsi), %ecx
	movl	%ecx, %esi
	cvtsi2sdq	%rsi, %xmm1
	movq	%rax, %rdi
	movl	-148(%rbp), %esi        # 4-byte Reload
	movsd	-312(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	gimp_size_entry_set_size
	movq	-80(%rbp), %rdi
	movq	%rdi, -328(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movl	4(%rsi), %ecx
	movl	%ecx, %esi
	cvtsi2sdq	%rsi, %xmm1
	movq	%rax, %rdi
	movl	-244(%rbp), %esi        # 4-byte Reload
	movsd	-312(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	gimp_size_entry_set_size
	movq	-80(%rbp), %rdi
	movq	%rdi, -336(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movl	8(%rsi), %ecx
	movl	%ecx, %esi
	cvtsi2sdq	%rsi, %xmm1
	movq	%rax, %rdi
	movl	-176(%rbp), %esi        # 4-byte Reload
	movsd	-312(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	gimp_size_entry_set_refval_boundaries
	movq	-80(%rbp), %rdi
	movq	%rdi, -344(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movl	4(%rsi), %ecx
	movl	%ecx, %esi
	cvtsi2sdq	%rsi, %xmm1
	movq	%rax, %rdi
	movl	-144(%rbp), %esi        # 4-byte Reload
	movsd	-160(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	gimp_size_entry_set_refval_boundaries
	movq	-80(%rbp), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movl	4(%rsi), %ecx
	movq	-16(%rbp), %rsi
	cmpl	8(%rsi), %ecx
	movq	%rax, -360(%rbp)        # 8-byte Spill
	jbe	.LBB3_7
# BB#6:                                 # %cond.true
	movq	-16(%rbp), %rax
	movl	4(%rax), %ecx
	movl	%ecx, -364(%rbp)        # 4-byte Spill
	jmp	.LBB3_8
.LBB3_7:                                # %cond.false
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -364(%rbp)        # 4-byte Spill
.LBB3_8:                                # %cond.end
	movl	-364(%rbp), %eax        # 4-byte Reload
	movl	$2, %esi
	xorps	%xmm0, %xmm0
	movl	%eax, %eax
	movl	%eax, %ecx
	cvtsi2sdq	%rcx, %xmm1
	movq	-360(%rbp), %rdi        # 8-byte Reload
	callq	gimp_size_entry_set_refval_boundaries
	movq	-80(%rbp), %rcx
	movq	%rcx, -376(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movl	$6, %edx
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacing
	movq	-80(%rbp), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-80(%rbp), %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movl	$12, %edx
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacing
	movq	-80(%rbp), %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	cvtsi2sdl	grid_cfg, %xmm0
	movq	%rax, %rdi
	callq	gimp_size_entry_set_refval
	movq	-80(%rbp), %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-408(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	cvtsi2sdl	grid_cfg+48, %xmm0
	movq	%rax, %rdi
	callq	gimp_size_entry_set_refval
	movq	-80(%rbp), %rax
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	cvtsi2sdl	grid_cfg+96, %xmm0
	movq	%rax, %rdi
	callq	gimp_size_entry_set_refval
	movq	-80(%rbp), %rax
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-424(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.56, %rdi
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%edx, %edx
	movl	$1, %ecx
	xorps	%xmm0, %xmm0
	movq	-432(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_size_entry_attach_label
	movq	-80(%rbp), %rsi
	movq	%rax, -440(%rbp)        # 8-byte Spill
	movq	%rsi, -448(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-448(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.57, %rdi
	movq	%rax, -456(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%edx, %edx
	movl	$2, %ecx
	xorps	%xmm0, %xmm0
	movq	-456(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_size_entry_attach_label
	movq	-80(%rbp), %rsi
	movq	%rax, -464(%rbp)        # 8-byte Spill
	movq	%rsi, -472(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-472(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.58, %rdi
	movq	%rax, -480(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%edx, %edx
	movl	$3, %ecx
	xorps	%xmm0, %xmm0
	movq	-480(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_size_entry_attach_label
	movq	-80(%rbp), %rsi
	movq	%rax, -488(%rbp)        # 8-byte Spill
	movq	%rsi, -496(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-496(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.59, %rdi
	movq	%rax, -504(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$1, %edx
	xorl	%ecx, %ecx
	xorps	%xmm0, %xmm0
	movq	-504(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_size_entry_attach_label
	movl	$1, %edi
	movq	%rax, -56(%rbp)
	callq	gtk_size_group_new
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	gtk_size_group_add_widget
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movl	$2, %edi
	callq	gimp_chain_button_new
	movq	%rax, -104(%rbp)
	movl	grid_cfg, %ecx
	cmpl	grid_cfg+48, %ecx
	jne	.LBB3_10
# BB#9:                                 # %if.then.96
	movq	-104(%rbp), %rax
	movq	%rax, -512(%rbp)        # 8-byte Spill
	callq	gimp_chain_button_get_type
	movq	-512(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gimp_chain_button_set_active
.LBB3_10:                               # %if.end.99
	movl	$1, %esi
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	movq	-80(%rbp), %rdi
	movl	%esi, -516(%rbp)        # 4-byte Spill
	movsd	%xmm0, -528(%rbp)       # 8-byte Spill
	movq	%rdi, -536(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-536(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-104(%rbp), %rsi
	movl	$1, %ecx
	movl	$2, %edx
	movl	$3, %r8d
	movq	%rax, %rdi
	movl	%edx, -540(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	%ecx, -544(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	-540(%rbp), %r9d        # 4-byte Reload
	movl	%r8d, -548(%rbp)        # 4-byte Spill
	movl	%r9d, %r8d
	movl	-548(%rbp), %r9d        # 4-byte Reload
	callq	gtk_table_attach_defaults
	movq	-104(%rbp), %rdi
	callq	gtk_widget_show
	movq	-80(%rbp), %rdi
	movq	-104(%rbp), %rcx
	movl	$.L.str.60, %edx
	movl	%edx, %eax
	movl	$entry_callback, %edx
                                        # kill: RDX<def> EDX<kill>
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movq	%rsi, -560(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	-560(%rbp), %r10        # 8-byte Reload
	movl	%r8d, -564(%rbp)        # 4-byte Spill
	movq	%r10, %r8
	movl	-564(%rbp), %r9d        # 4-byte Reload
	movq	%rax, -576(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-80(%rbp), %rdi
	movq	-64(%rbp), %rcx
	movl	$gimp_preview_invalidate, %r9d
	movl	%r9d, %edx
	movq	-576(%rbp), %rsi        # 8-byte Reload
	movq	-560(%rbp), %r8         # 8-byte Reload
	movl	-540(%rbp), %r9d        # 4-byte Reload
	movq	%rax, -584(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movl	-116(%rbp), %esi
	movq	%rsp, %rcx
	movl	$1, 8(%rcx)
	movl	$8, (%rcx)
	movl	$.L.str.55, %r9d
	movl	%r9d, %edx
	movl	-548(%rbp), %edi        # 4-byte Reload
	movl	-544(%rbp), %ecx        # 4-byte Reload
	movl	-544(%rbp), %r8d        # 4-byte Reload
	movl	-564(%rbp), %r9d        # 4-byte Reload
	movq	%rax, -592(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_new
	movq	%rax, -88(%rbp)
	movq	-40(%rbp), %rdi
	movq	%rdi, -600(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-600(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	movl	-564(%rbp), %edx        # 4-byte Reload
	movl	-564(%rbp), %ecx        # 4-byte Reload
	movl	-564(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-88(%rbp), %rdi
	callq	gtk_widget_show
	movq	-88(%rbp), %rdi
	movq	%rdi, -608(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-608(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	movl	-564(%rbp), %esi        # 4-byte Reload
	callq	gimp_size_entry_set_unit
	movq	-88(%rbp), %rdi
	movq	%rdi, -616(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-616(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movsd	-128(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	%rax, %rdi
	movl	-564(%rbp), %esi        # 4-byte Reload
	movl	-544(%rbp), %edx        # 4-byte Reload
	callq	gimp_size_entry_set_resolution
	movq	-88(%rbp), %rdi
	movq	%rdi, -624(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-624(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movsd	-136(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	%rax, %rdi
	movl	-544(%rbp), %esi        # 4-byte Reload
	movl	-544(%rbp), %edx        # 4-byte Reload
	callq	gimp_size_entry_set_resolution
	movq	-88(%rbp), %rdi
	movq	%rdi, -632(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-632(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movsd	-128(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	%rax, %rdi
	movl	-540(%rbp), %esi        # 4-byte Reload
	movl	-544(%rbp), %edx        # 4-byte Reload
	callq	gimp_size_entry_set_resolution
	movq	-88(%rbp), %rdi
	movq	%rdi, -640(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-640(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movl	8(%rsi), %ecx
	movl	%ecx, %esi
	cvtsi2sdq	%rsi, %xmm1
	xorps	%xmm0, %xmm0
	movq	%rax, %rdi
	movl	-564(%rbp), %esi        # 4-byte Reload
	movsd	%xmm0, -648(%rbp)       # 8-byte Spill
	callq	gimp_size_entry_set_size
	movq	-88(%rbp), %rdi
	movq	%rdi, -656(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-656(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movl	4(%rsi), %ecx
	movl	%ecx, %esi
	cvtsi2sdq	%rsi, %xmm1
	movq	%rax, %rdi
	movl	-544(%rbp), %esi        # 4-byte Reload
	movsd	-648(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	gimp_size_entry_set_size
	movq	-88(%rbp), %rdi
	movq	%rdi, -664(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-664(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movl	4(%rsi), %ecx
	movl	%ecx, %esi
	cvtsi2sdq	%rsi, %xmm1
	movq	%rax, %rdi
	movl	-540(%rbp), %esi        # 4-byte Reload
	movsd	-648(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	gimp_size_entry_set_size
	movq	-88(%rbp), %rdi
	movq	%rdi, -672(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-672(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movl	8(%rsi), %ecx
	movl	%ecx, %esi
	cvtsi2sdq	%rsi, %xmm1
	movsd	.LCPI3_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movq	%rax, %rdi
	movl	-564(%rbp), %esi        # 4-byte Reload
	callq	gimp_size_entry_set_refval_boundaries
	movq	-88(%rbp), %rdi
	movq	%rdi, -680(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-680(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movl	4(%rsi), %ecx
	movl	%ecx, %esi
	cvtsi2sdq	%rsi, %xmm1
	movq	%rax, %rdi
	movl	-516(%rbp), %esi        # 4-byte Reload
	movsd	-528(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	gimp_size_entry_set_refval_boundaries
	movq	-88(%rbp), %rax
	movq	%rax, -688(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-688(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movl	4(%rsi), %ecx
	movq	-16(%rbp), %rsi
	cmpl	8(%rsi), %ecx
	movq	%rax, -696(%rbp)        # 8-byte Spill
	jbe	.LBB3_12
# BB#11:                                # %cond.true.141
	movq	-16(%rbp), %rax
	movl	4(%rax), %ecx
	movl	%ecx, -700(%rbp)        # 4-byte Spill
	jmp	.LBB3_13
.LBB3_12:                               # %cond.false.143
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -700(%rbp)        # 4-byte Spill
.LBB3_13:                               # %cond.end.145
	movl	-700(%rbp), %eax        # 4-byte Reload
	movl	$2, %esi
	xorps	%xmm0, %xmm0
	movl	%eax, %eax
	movl	%eax, %ecx
	cvtsi2sdq	%rcx, %xmm1
	movq	-696(%rbp), %rdi        # 8-byte Reload
	callq	gimp_size_entry_set_refval_boundaries
	movq	-88(%rbp), %rcx
	movq	%rcx, -712(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-712(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-88(%rbp), %rax
	movq	%rax, -720(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-720(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movl	$12, %edx
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacing
	movq	-88(%rbp), %rax
	movq	%rax, -728(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-728(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	cvtsi2sdl	grid_cfg+4, %xmm0
	movq	%rax, %rdi
	callq	gimp_size_entry_set_refval
	movq	-88(%rbp), %rax
	movq	%rax, -736(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-736(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	cvtsi2sdl	grid_cfg+52, %xmm0
	movq	%rax, %rdi
	callq	gimp_size_entry_set_refval
	movq	-88(%rbp), %rax
	movq	%rax, -744(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-744(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	cvtsi2sdl	grid_cfg+100, %xmm0
	movq	%rax, %rdi
	callq	gimp_size_entry_set_refval
	movq	-88(%rbp), %rax
	movq	%rax, -752(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-752(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.61, %rdi
	movq	%rax, -760(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$1, %edx
	xorl	%ecx, %ecx
	xorps	%xmm0, %xmm0
	movq	-760(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_size_entry_attach_label
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	gtk_size_group_add_widget
	movl	$2, %edi
	callq	gimp_chain_button_new
	movq	%rax, -104(%rbp)
	movl	grid_cfg+4, %ecx
	cmpl	grid_cfg+52, %ecx
	jne	.LBB3_15
# BB#14:                                # %if.then.168
	movq	-104(%rbp), %rax
	movq	%rax, -768(%rbp)        # 8-byte Spill
	callq	gimp_chain_button_get_type
	movq	-768(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gimp_chain_button_set_active
.LBB3_15:                               # %if.end.171
	movl	$1, %esi
	xorps	%xmm0, %xmm0
	movq	-88(%rbp), %rdi
	movl	%esi, -772(%rbp)        # 4-byte Spill
	movsd	%xmm0, -784(%rbp)       # 8-byte Spill
	movq	%rdi, -792(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-792(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-104(%rbp), %rsi
	movl	$1, %ecx
	movl	$2, %edx
	movl	$3, %r8d
	movq	%rax, %rdi
	movl	%edx, -796(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	%ecx, -800(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	-796(%rbp), %r9d        # 4-byte Reload
	movl	%r8d, -804(%rbp)        # 4-byte Spill
	movl	%r9d, %r8d
	movl	-804(%rbp), %r9d        # 4-byte Reload
	callq	gtk_table_attach_defaults
	movq	-104(%rbp), %rdi
	callq	gtk_widget_show
	movq	-88(%rbp), %rdi
	movq	-104(%rbp), %rcx
	movl	$.L.str.60, %edx
	movl	%edx, %eax
	movl	$entry_callback, %edx
	movl	%edx, %esi
	xorl	%edx, %edx
	movl	%edx, %r10d
	movq	%rsi, -816(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	-816(%rbp), %r11        # 8-byte Reload
	movl	%edx, -820(%rbp)        # 4-byte Spill
	movq	%r11, %rdx
	movq	%r10, %r8
	movl	-820(%rbp), %r9d        # 4-byte Reload
	movq	%r10, -832(%rbp)        # 8-byte Spill
	movq	%rax, -840(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-88(%rbp), %rdi
	movq	-104(%rbp), %rcx
	movl	$.L.str.62, %r9d
	movl	%r9d, %esi
	movq	-816(%rbp), %rdx        # 8-byte Reload
	movq	-832(%rbp), %r8         # 8-byte Reload
	movl	-820(%rbp), %r9d        # 4-byte Reload
	movq	%rax, -848(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-88(%rbp), %rdi
	movq	-64(%rbp), %rcx
	movl	$gimp_preview_invalidate, %r9d
	movl	%r9d, %edx
	movq	-840(%rbp), %rsi        # 8-byte Reload
	movq	-832(%rbp), %r8         # 8-byte Reload
	movl	-796(%rbp), %r9d        # 4-byte Reload
	movq	%rax, -856(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movl	-116(%rbp), %esi
	movq	%rsp, %rcx
	movl	$1, 8(%rcx)
	movl	$8, (%rcx)
	movl	$.L.str.55, %r9d
	movl	%r9d, %edx
	movl	-804(%rbp), %edi        # 4-byte Reload
	movl	-800(%rbp), %ecx        # 4-byte Reload
	movl	-800(%rbp), %r8d        # 4-byte Reload
	movl	-820(%rbp), %r9d        # 4-byte Reload
	movq	%rax, -864(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_new
	movq	%rax, -96(%rbp)
	movq	-40(%rbp), %rdi
	movq	%rdi, -872(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-872(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-96(%rbp), %rsi
	movq	%rax, %rdi
	movl	-820(%rbp), %edx        # 4-byte Reload
	movl	-820(%rbp), %ecx        # 4-byte Reload
	movl	-820(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-96(%rbp), %rdi
	callq	gtk_widget_show
	movq	-96(%rbp), %rdi
	movq	%rdi, -880(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-880(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	movl	-820(%rbp), %esi        # 4-byte Reload
	callq	gimp_size_entry_set_unit
	movq	-96(%rbp), %rdi
	movq	%rdi, -888(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-888(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movsd	-128(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	%rax, %rdi
	movl	-820(%rbp), %esi        # 4-byte Reload
	movl	-800(%rbp), %edx        # 4-byte Reload
	callq	gimp_size_entry_set_resolution
	movq	-96(%rbp), %rdi
	movq	%rdi, -896(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-896(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movsd	-136(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	%rax, %rdi
	movl	-800(%rbp), %esi        # 4-byte Reload
	movl	-800(%rbp), %edx        # 4-byte Reload
	callq	gimp_size_entry_set_resolution
	movq	-96(%rbp), %rdi
	movq	%rdi, -904(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-904(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movsd	-128(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	%rax, %rdi
	movl	-796(%rbp), %esi        # 4-byte Reload
	movl	-800(%rbp), %edx        # 4-byte Reload
	callq	gimp_size_entry_set_resolution
	movq	-96(%rbp), %rdi
	movq	%rdi, -912(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-912(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movl	8(%rsi), %ecx
	movl	%ecx, %esi
	cvtsi2sdq	%rsi, %xmm1
	xorps	%xmm0, %xmm0
	movq	%rax, %rdi
	movl	-820(%rbp), %esi        # 4-byte Reload
	movsd	%xmm0, -920(%rbp)       # 8-byte Spill
	callq	gimp_size_entry_set_size
	movq	-96(%rbp), %rdi
	movq	%rdi, -928(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-928(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movl	4(%rsi), %ecx
	movl	%ecx, %esi
	cvtsi2sdq	%rsi, %xmm1
	movq	%rax, %rdi
	movl	-800(%rbp), %esi        # 4-byte Reload
	movsd	-920(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	gimp_size_entry_set_size
	movq	-96(%rbp), %rdi
	movq	%rdi, -936(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-936(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movl	4(%rsi), %ecx
	movl	%ecx, %esi
	cvtsi2sdq	%rsi, %xmm1
	movq	%rax, %rdi
	movl	-796(%rbp), %esi        # 4-byte Reload
	movsd	-920(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	gimp_size_entry_set_size
	movq	-96(%rbp), %rdi
	movq	%rdi, -944(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-944(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movl	8(%rsi), %ecx
	movl	%ecx, %esi
	cvtsi2sdq	%rsi, %xmm1
	movq	%rax, %rdi
	movl	-820(%rbp), %esi        # 4-byte Reload
	movsd	-920(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	gimp_size_entry_set_refval_boundaries
	movq	-96(%rbp), %rdi
	movq	%rdi, -952(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-952(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movl	4(%rsi), %ecx
	movl	%ecx, %esi
	cvtsi2sdq	%rsi, %xmm1
	movq	%rax, %rdi
	movl	-772(%rbp), %esi        # 4-byte Reload
	movsd	-784(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	gimp_size_entry_set_refval_boundaries
	movq	-96(%rbp), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-960(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movl	4(%rsi), %ecx
	movq	-16(%rbp), %rsi
	cmpl	8(%rsi), %ecx
	movq	%rax, -968(%rbp)        # 8-byte Spill
	jbe	.LBB3_17
# BB#16:                                # %cond.true.214
	movq	-16(%rbp), %rax
	movl	4(%rax), %ecx
	movl	%ecx, -972(%rbp)        # 4-byte Spill
	jmp	.LBB3_18
.LBB3_17:                               # %cond.false.216
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -972(%rbp)        # 4-byte Spill
.LBB3_18:                               # %cond.end.218
	movl	-972(%rbp), %eax        # 4-byte Reload
	movl	$2, %esi
	xorps	%xmm0, %xmm0
	movl	%eax, %eax
	movl	%eax, %ecx
	cvtsi2sdq	%rcx, %xmm1
	movq	-968(%rbp), %rdi        # 8-byte Reload
	callq	gimp_size_entry_set_refval_boundaries
	movq	-96(%rbp), %rcx
	movq	%rcx, -984(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-984(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-96(%rbp), %rax
	movq	%rax, -992(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-992(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movl	$12, %edx
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacing
	movq	-96(%rbp), %rax
	movq	%rax, -1000(%rbp)       # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-1000(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	cvtsi2sdl	grid_cfg+8, %xmm0
	movq	%rax, %rdi
	callq	gimp_size_entry_set_refval
	movq	-96(%rbp), %rax
	movq	%rax, -1008(%rbp)       # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-1008(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	cvtsi2sdl	grid_cfg+56, %xmm0
	movq	%rax, %rdi
	callq	gimp_size_entry_set_refval
	movq	-96(%rbp), %rax
	movq	%rax, -1016(%rbp)       # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-1016(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	cvtsi2sdl	grid_cfg+104, %xmm0
	movq	%rax, %rdi
	callq	gimp_size_entry_set_refval
	movq	-96(%rbp), %rax
	movq	%rax, -1024(%rbp)       # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-1024(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.63, %rdi
	movq	%rax, -1032(%rbp)       # 8-byte Spill
	callq	gettext
	movl	$1, %edx
	xorl	%ecx, %ecx
	xorps	%xmm0, %xmm0
	movq	-1032(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_size_entry_attach_label
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	gtk_size_group_add_widget
	movl	$3, %ecx
	xorl	%edx, %edx
	movl	%ecx, %edi
	movl	%ecx, %esi
	callq	gtk_table_new
	movq	%rax, -112(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -1040(%rbp)       # 8-byte Spill
	callq	gtk_table_get_type
	movq	-1040(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	movl	$4, %ecx
	movl	$2, %r8d
	movl	$3, %r9d
	movq	-112(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_table_attach_defaults
	movq	-112(%rbp), %rax
	movq	%rax, -1048(%rbp)       # 8-byte Spill
	callq	gtk_table_get_type
	movq	-1048(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacing
	movq	-112(%rbp), %rax
	movq	%rax, -1056(%rbp)       # 8-byte Spill
	callq	gtk_table_get_type
	movq	-1056(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movl	$12, %edx
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacing
	movl	$2, %edi
	callq	gimp_chain_button_new
	movq	%rax, -104(%rbp)
	movl	grid_cfg+8, %ecx
	cmpl	grid_cfg+56, %ecx
	jne	.LBB3_20
# BB#19:                                # %if.then.248
	movq	-104(%rbp), %rax
	movq	%rax, -1064(%rbp)       # 8-byte Spill
	callq	gimp_chain_button_get_type
	movq	-1064(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gimp_chain_button_set_active
.LBB3_20:                               # %if.end.251
	movq	-112(%rbp), %rax
	movq	%rax, -1072(%rbp)       # 8-byte Spill
	callq	gtk_table_get_type
	movq	-1072(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	$2, %edx
	movl	$1, %r9d
	movq	-104(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -1076(%rbp)       # 4-byte Spill
	movl	%ecx, %edx
	movl	-1076(%rbp), %r8d       # 4-byte Reload
	movl	%ecx, -1080(%rbp)       # 4-byte Spill
	movl	%r8d, %ecx
	movl	-1080(%rbp), %r8d       # 4-byte Reload
	callq	gtk_table_attach_defaults
	movq	-104(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.60, %rsi
	movabsq	$entry_callback, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-96(%rbp), %rdi
	movq	-104(%rbp), %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data
	movabsq	$.L.str.62, %rsi
	movabsq	$entry_callback, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-96(%rbp), %rdx
	movq	-104(%rbp), %rdi
	movq	%rdi, -1088(%rbp)       # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-1088(%rbp), %rcx       # 8-byte Reload
	movq	%rax, -1096(%rbp)       # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.60, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-96(%rbp), %rdx
	movq	-64(%rbp), %rdi
	movq	%rdi, -1104(%rbp)       # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-1104(%rbp), %rcx       # 8-byte Reload
	movq	%rax, -1112(%rbp)       # 8-byte Spill
	callq	g_signal_connect_data
	movl	$2, %edi
	movq	%rax, -1120(%rbp)       # 8-byte Spill
	callq	gimp_chain_button_new
	movabsq	$grid_cfg, %rcx
	movq	%rcx, %rdx
	addq	$16, %rdx
	addq	$64, %rcx
	movq	%rax, -104(%rbp)
	movq	%rdx, %rdi
	movq	%rcx, %rsi
	callq	gimp_rgba_distance
	movsd	.LCPI3_1, %xmm1         # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB3_22
# BB#21:                                # %if.then.261
	movq	-104(%rbp), %rax
	movq	%rax, -1128(%rbp)       # 8-byte Spill
	callq	gimp_chain_button_get_type
	movq	-1128(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gimp_chain_button_set_active
.LBB3_22:                               # %if.end.264
	movq	-112(%rbp), %rax
	movq	%rax, -1136(%rbp)       # 8-byte Spill
	callq	gtk_table_get_type
	movq	-1136(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	$2, %ecx
	movl	$3, %r9d
	movq	-104(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, -1140(%rbp)       # 4-byte Spill
	movl	-1140(%rbp), %r8d       # 4-byte Reload
	callq	gtk_table_attach_defaults
	movq	-104(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.64, %rdi
	callq	gettext
	movl	$55, %esi
	movl	$16, %edx
	movabsq	$grid_cfg, %rdi
	addq	$16, %rdi
	movl	$1, %r8d
	movq	%rdi, -1152(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	-1152(%rbp), %rcx       # 8-byte Reload
	callq	gimp_color_button_new
	movq	%rax, hcolor_button
	movq	hcolor_button, %rax
	movq	%rax, -1160(%rbp)       # 8-byte Spill
	callq	gimp_color_button_get_type
	movq	-1160(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gimp_color_button_set_update
	movq	-112(%rbp), %rax
	movq	%rax, -1168(%rbp)       # 8-byte Spill
	callq	gtk_table_get_type
	movq	-1168(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	$1, %r8d
	movl	$2, %r9d
	movq	hcolor_button, %rsi
	movq	%rax, %rdi
	movl	%r8d, %ecx
	callq	gtk_table_attach_defaults
	movq	hcolor_button, %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.65, %rsi
	movabsq	$gimp_color_button_get_color, %rax
	movabsq	$grid_cfg, %rdi
	addq	$16, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	hcolor_button, %r10
	movq	%rdi, -1176(%rbp)       # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, %rdx
	movq	-1176(%rbp), %rcx       # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.65, %rsi
	movabsq	$color_callback, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	hcolor_button, %rdx
	movq	-104(%rbp), %rdi
	movq	%rdi, -1184(%rbp)       # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-1184(%rbp), %rcx       # 8-byte Reload
	movq	%rax, -1192(%rbp)       # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.65, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	hcolor_button, %rdx
	movq	-64(%rbp), %rdi
	movq	%rdi, -1200(%rbp)       # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-1200(%rbp), %rcx       # 8-byte Reload
	movq	%rax, -1208(%rbp)       # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.66, %rdi
	movq	%rax, -1216(%rbp)       # 8-byte Spill
	callq	gettext
	movl	$55, %esi
	movl	$16, %edx
	movabsq	$grid_cfg, %rcx
	addq	$64, %rcx
	movl	$1, %r8d
	movq	%rax, %rdi
	callq	gimp_color_button_new
	movq	%rax, vcolor_button
	movq	vcolor_button, %rax
	movq	%rax, -1224(%rbp)       # 8-byte Spill
	callq	gimp_color_button_get_type
	movq	-1224(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gimp_color_button_set_update
	movq	-112(%rbp), %rax
	movq	%rax, -1232(%rbp)       # 8-byte Spill
	callq	gtk_table_get_type
	movq	-1232(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	movl	$2, %r8d
	movq	vcolor_button, %rsi
	movq	%rax, %rdi
	movl	%edx, -1236(%rbp)       # 4-byte Spill
	movl	%r8d, %ecx
	movl	-1236(%rbp), %r9d       # 4-byte Reload
	movl	%r8d, -1240(%rbp)       # 4-byte Spill
	movl	%r9d, %r8d
	movl	-1240(%rbp), %r9d       # 4-byte Reload
	callq	gtk_table_attach_defaults
	movq	vcolor_button, %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.65, %rsi
	movabsq	$gimp_color_button_get_color, %rax
	movabsq	$grid_cfg, %rdi
	addq	$64, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	vcolor_button, %r10
	movq	%rdi, -1248(%rbp)       # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, %rdx
	movq	-1248(%rbp), %rcx       # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.65, %rsi
	movabsq	$color_callback, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	vcolor_button, %rdx
	movq	-104(%rbp), %rdi
	movq	%rdi, -1256(%rbp)       # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-1256(%rbp), %rcx       # 8-byte Reload
	movq	%rax, -1264(%rbp)       # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.65, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	vcolor_button, %rdx
	movq	-64(%rbp), %rdi
	movq	%rdi, -1272(%rbp)       # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-1272(%rbp), %rcx       # 8-byte Reload
	movq	%rax, -1280(%rbp)       # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.67, %rdi
	movq	%rax, -1288(%rbp)       # 8-byte Spill
	callq	gettext
	movl	$55, %esi
	movl	$16, %edx
	movabsq	$grid_cfg, %rcx
	addq	$112, %rcx
	movl	$1, %r8d
	movq	%rax, %rdi
	callq	gimp_color_button_new
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -1296(%rbp)       # 8-byte Spill
	callq	gimp_color_button_get_type
	movq	-1296(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gimp_color_button_set_update
	movq	-112(%rbp), %rax
	movq	%rax, -1304(%rbp)       # 8-byte Spill
	callq	gtk_table_get_type
	movq	-1304(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %edx
	movl	$3, %ecx
	movl	$1, %r8d
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -1308(%rbp)       # 4-byte Spill
	movl	-1308(%rbp), %r9d       # 4-byte Reload
	callq	gtk_table_attach_defaults
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.65, %rsi
	movabsq	$gimp_color_button_get_color, %rax
	movabsq	$grid_cfg, %rdi
	addq	$112, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-72(%rbp), %r10
	movq	%rdi, -1320(%rbp)       # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, %rdx
	movq	-1320(%rbp), %rcx       # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.65, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rdi
	movq	%rdi, -1328(%rbp)       # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-1328(%rbp), %rcx       # 8-byte Reload
	movq	%rax, -1336(%rbp)       # 8-byte Spill
	callq	g_signal_connect_data
	movq	-112(%rbp), %rdi
	movq	%rax, -1344(%rbp)       # 8-byte Spill
	callq	gtk_widget_show
	movq	-24(%rbp), %rdi
	callq	gtk_widget_show
	movl	$80, %r9d
	movl	%r9d, %esi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.68, %rsi
	movq	-80(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	g_object_set_data
	movl	$80, %r9d
	movl	%r9d, %esi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.69, %rsi
	movq	-88(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	g_object_set_data
	movl	$80, %r9d
	movl	%r9d, %esi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.70, %rsi
	movq	-96(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	g_object_set_data
	movq	-24(%rbp), %rax
	movq	%rax, -1352(%rbp)       # 8-byte Spill
	callq	gimp_dialog_get_type
	movq	-1352(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dialog_run
	cmpl	$-5, %eax
	sete	%r11b
	andb	$1, %r11b
	movzbl	%r11b, %eax
	movl	%eax, -140(%rbp)
	cmpl	$0, -140(%rbp)
	je	.LBB3_24
# BB#23:                                # %if.then.301
	callq	update_values
.LBB3_24:                               # %if.end.302
	movq	-24(%rbp), %rdi
	callq	gtk_widget_destroy
	movl	-140(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB3_25:                               # %return
	movl	-4(%rbp), %eax
	addq	$1392, %rsp             # imm = 0x570
	popq	%rbp
	retq
.Lfunc_end3:
	.size	dialog, .Lfunc_end3-dialog
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	grid,@function
grid:                                   # @grid
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
	pushq	%rbx
	subq	$328, %rsp              # imm = 0x148
.Ltmp20:
	.cfi_offset %rbx, -24
	movl	%edi, -12(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	$0, -160(%rbp)
	leaq	-179(%rbp), %rdx
	leaq	-178(%rbp), %rcx
	leaq	-177(%rbp), %r8
	movl	$grid_cfg+16, %edi
                                        # kill: RDI<def> EDI<kill>
	leaq	-180(%rbp), %rsi
	callq	gimp_rgba_get_uchar
	leaq	-183(%rbp), %rdx
	leaq	-182(%rbp), %rcx
	leaq	-181(%rbp), %r8
	movl	$grid_cfg+64, %eax
	movl	%eax, %edi
	leaq	-184(%rbp), %rsi
	callq	gimp_rgba_get_uchar
	leaq	-187(%rbp), %rdx
	leaq	-186(%rbp), %rcx
	leaq	-185(%rbp), %r8
	movl	$grid_cfg+112, %eax
	movl	%eax, %edi
	leaq	-188(%rbp), %rsi
	callq	gimp_rgba_get_uchar
	movl	-12(%rbp), %edi
	callq	gimp_image_base_type
	movl	%eax, %edi
	testl	%eax, %eax
	movl	%edi, -208(%rbp)        # 4-byte Spill
	je	.LBB4_1
	jmp	.LBB4_60
.LBB4_60:                               # %entry
	movl	-208(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -212(%rbp)        # 4-byte Spill
	je	.LBB4_2
	jmp	.LBB4_61
.LBB4_61:                               # %entry
	movl	-208(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -216(%rbp)        # 4-byte Spill
	je	.LBB4_3
	jmp	.LBB4_4
.LBB4_1:                                # %sw.bb
	movl	$1, -176(%rbp)
	jmp	.LBB4_6
.LBB4_2:                                # %sw.bb.20
	movabsq	$grid_cfg, %rax
	addq	$16, %rax
	movq	%rax, %rdi
	callq	gimp_rgb_luminance_uchar
	movabsq	$grid_cfg, %rdi
	addq	$64, %rdi
	movb	%al, -180(%rbp)
	callq	gimp_rgb_luminance_uchar
	movabsq	$grid_cfg, %rdi
	addq	$112, %rdi
	movb	%al, -184(%rbp)
	callq	gimp_rgb_luminance_uchar
	movb	%al, -188(%rbp)
	movl	$1, -176(%rbp)
	jmp	.LBB4_6
.LBB4_3:                                # %sw.bb.26
	leaq	-204(%rbp), %rsi
	movl	-12(%rbp), %edi
	callq	gimp_image_get_colormap
	movabsq	$grid_cfg, %rsi
	addq	$16, %rsi
	movq	%rax, -200(%rbp)
	movq	-200(%rbp), %rdi
	movl	-204(%rbp), %ecx
	movq	%rsi, -224(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movq	-224(%rbp), %rdx        # 8-byte Reload
	callq	best_cmap_match
	movabsq	$grid_cfg, %rdx
	addq	$64, %rdx
	movb	%al, -180(%rbp)
	movq	-200(%rbp), %rdi
	movl	-204(%rbp), %esi
	callq	best_cmap_match
	movabsq	$grid_cfg, %rdx
	addq	$112, %rdx
	movb	%al, -184(%rbp)
	movq	-200(%rbp), %rdi
	movl	-204(%rbp), %esi
	callq	best_cmap_match
	movb	%al, -188(%rbp)
	movq	-200(%rbp), %rdi
	callq	g_free
	movl	$0, -176(%rbp)
	jmp	.LBB4_6
.LBB4_4:                                # %sw.default
	jmp	.LBB4_5
.LBB4_5:                                # %do.body
	xorl	%eax, %eax
	movl	%eax, %ecx
	movabsq	$.L.str.71, %rsi
	movl	$377, %edx              # imm = 0x179
	movabsq	$.L.str.49, %rdi
	movq	%rdi, -232(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	-232(%rbp), %r8         # 8-byte Reload
	movq	%rcx, -240(%rbp)        # 8-byte Spill
	movq	%r8, %rcx
	movq	-240(%rbp), %r8         # 8-byte Reload
	callq	g_assertion_message_expr
.LBB4_6:                                # %sw.epilog
	movq	-24(%rbp), %rax
	movl	12(%rax), %ecx
	movl	%ecx, -132(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_has_alpha
	movl	%eax, -172(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB4_8
# BB#7:                                 # %if.then
	movabsq	$sx1, %rsi
	movabsq	$sy1, %rdx
	movq	-32(%rbp), %rdi
	callq	gimp_preview_get_position
	movabsq	$sx2, %rsi
	movabsq	$sy2, %rdx
	movq	-32(%rbp), %rdi
	callq	gimp_preview_get_size
	movl	$1, %eax
	movl	%eax, %esi
	movl	-132(%rbp), %eax
	imull	sx2, %eax
	imull	sy2, %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	movq	%rax, -160(%rbp)
	movl	sx1, %ecx
	addl	sx2, %ecx
	movl	%ecx, sx2
	movl	sy1, %ecx
	addl	sy2, %ecx
	movl	%ecx, sy2
	jmp	.LBB4_9
.LBB4_8:                                # %if.else
	movabsq	$sx1, %rsi
	movabsq	$sy1, %rdx
	movabsq	$sx2, %rcx
	movabsq	$sy2, %r8
	movq	-24(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_mask_bounds
	leaq	-128(%rbp), %rdi
	xorl	%r9d, %r9d
	movl	$1, %r10d
	movq	-24(%rbp), %rsi
	movl	sx2, %r11d
	subl	sx1, %r11d
	movl	sy2, %ebx
	subl	sy1, %ebx
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r11d, %r8d
	movl	%ebx, %r9d
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	movl	%eax, -244(%rbp)        # 4-byte Spill
	movl	%r10d, -248(%rbp)       # 4-byte Spill
	callq	gimp_pixel_rgn_init
.LBB4_9:                                # %if.end
	leaq	-80(%rbp), %rdi
	xorl	%eax, %eax
	movq	-24(%rbp), %rsi
	movl	sx2, %ecx
	subl	sx1, %ecx
	movl	sy2, %edx
	subl	sy1, %edx
	movl	%edx, -252(%rbp)        # 4-byte Spill
	movl	%eax, %edx
	movl	%ecx, -256(%rbp)        # 4-byte Spill
	movl	%eax, %ecx
	movl	-256(%rbp), %r8d        # 4-byte Reload
	movl	-252(%rbp), %r9d        # 4-byte Reload
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	movl	$1, %eax
	movl	%eax, %esi
	movl	sx2, %eax
	subl	sx1, %eax
	imull	-132(%rbp), %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	movq	%rax, -152(%rbp)
	movl	sy1, %ecx
	movl	%ecx, -168(%rbp)
.LBB4_10:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_12 Depth 2
                                        #     Child Loop BB4_16 Depth 2
                                        #     Child Loop BB4_21 Depth 2
                                        #       Child Loop BB4_23 Depth 3
                                        #     Child Loop BB4_37 Depth 2
                                        #       Child Loop BB4_39 Depth 3
	movl	-168(%rbp), %eax
	cmpl	sy2, %eax
	jge	.LBB4_56
# BB#11:                                # %for.body
                                        #   in Loop: Header=BB4_10 Depth=1
	leaq	-80(%rbp), %rdi
	movq	-152(%rbp), %rsi
	movl	sx1, %edx
	movl	-168(%rbp), %ecx
	movl	sx2, %eax
	subl	sx1, %eax
	movl	%eax, %r8d
	callq	gimp_pixel_rgn_get_row
	movl	-168(%rbp), %eax
	subl	grid_cfg+8, %eax
	movl	%eax, -140(%rbp)
.LBB4_12:                               # %while.cond
                                        #   Parent Loop BB4_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$0, -140(%rbp)
	jge	.LBB4_14
# BB#13:                                # %while.body
                                        #   in Loop: Header=BB4_12 Depth=2
	movl	grid_cfg+4, %eax
	addl	-140(%rbp), %eax
	movl	%eax, -140(%rbp)
	jmp	.LBB4_12
.LBB4_14:                               # %while.end
                                        #   in Loop: Header=BB4_10 Depth=1
	movl	$2, %eax
	movl	-140(%rbp), %ecx
	movl	grid_cfg, %edx
	movl	%eax, -260(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-260(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	addl	%eax, %ecx
	movl	%ecx, %eax
	cltd
	idivl	grid_cfg+4
	cmpl	grid_cfg, %edx
	jge	.LBB4_20
# BB#15:                                # %if.then.56
                                        #   in Loop: Header=BB4_10 Depth=1
	movl	sx1, %eax
	movl	%eax, -164(%rbp)
.LBB4_16:                               # %for.cond.57
                                        #   Parent Loop BB4_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-164(%rbp), %eax
	cmpl	sx2, %eax
	jge	.LBB4_19
# BB#17:                                # %for.body.60
                                        #   in Loop: Header=BB4_16 Depth=2
	leaq	-180(%rbp), %rsi
	movl	-164(%rbp), %eax
	subl	sx1, %eax
	imull	-132(%rbp), %eax
	movslq	%eax, %rcx
	addq	-152(%rbp), %rcx
	movl	-132(%rbp), %edx
	movl	-176(%rbp), %eax
	movl	-172(%rbp), %r8d
	movq	%rcx, %rdi
	movl	%eax, %ecx
	callq	pix_composite
# BB#18:                                # %for.inc
                                        #   in Loop: Header=BB4_16 Depth=2
	movl	-164(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -164(%rbp)
	jmp	.LBB4_16
.LBB4_19:                               # %for.end
                                        #   in Loop: Header=BB4_10 Depth=1
	jmp	.LBB4_20
.LBB4_20:                               # %if.end.65
                                        #   in Loop: Header=BB4_10 Depth=1
	movl	sx1, %eax
	movl	%eax, -164(%rbp)
.LBB4_21:                               # %for.cond.66
                                        #   Parent Loop BB4_10 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_23 Depth 3
	movl	-164(%rbp), %eax
	cmpl	sx2, %eax
	jge	.LBB4_35
# BB#22:                                # %for.body.69
                                        #   in Loop: Header=BB4_21 Depth=2
	movl	grid_cfg+52, %eax
	addl	-164(%rbp), %eax
	subl	grid_cfg+56, %eax
	movl	%eax, -136(%rbp)
.LBB4_23:                               # %while.cond.72
                                        #   Parent Loop BB4_10 Depth=1
                                        #     Parent Loop BB4_21 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$0, -136(%rbp)
	jge	.LBB4_25
# BB#24:                                # %while.body.75
                                        #   in Loop: Header=BB4_23 Depth=3
	movl	grid_cfg+52, %eax
	addl	-136(%rbp), %eax
	movl	%eax, -136(%rbp)
	jmp	.LBB4_23
.LBB4_25:                               # %while.end.77
                                        #   in Loop: Header=BB4_21 Depth=2
	movl	$2, %eax
	movl	-136(%rbp), %ecx
	movl	grid_cfg+48, %edx
	movl	%eax, -264(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-264(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	addl	%eax, %ecx
	movl	%ecx, %eax
	cltd
	idivl	grid_cfg+52
	cmpl	grid_cfg+48, %edx
	jge	.LBB4_27
# BB#26:                                # %if.then.83
                                        #   in Loop: Header=BB4_21 Depth=2
	leaq	-184(%rbp), %rsi
	movl	-164(%rbp), %eax
	subl	sx1, %eax
	imull	-132(%rbp), %eax
	movslq	%eax, %rcx
	addq	-152(%rbp), %rcx
	movl	-132(%rbp), %edx
	movl	-176(%rbp), %eax
	movl	-172(%rbp), %r8d
	movq	%rcx, %rdi
	movl	%eax, %ecx
	callq	pix_composite
.LBB4_27:                               # %if.end.89
                                        #   in Loop: Header=BB4_21 Depth=2
	movl	$2, %eax
	movl	-136(%rbp), %ecx
	movl	grid_cfg+96, %edx
	movl	%eax, -268(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-268(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	addl	%eax, %ecx
	movl	%ecx, %eax
	cltd
	idivl	grid_cfg+52
	cmpl	grid_cfg+96, %edx
	jge	.LBB4_33
# BB#28:                                # %land.lhs.true
                                        #   in Loop: Header=BB4_21 Depth=2
	movl	-140(%rbp), %eax
	cltd
	idivl	grid_cfg+4
	cmpl	grid_cfg+100, %edx
	jl	.LBB4_30
# BB#29:                                # %land.lhs.true.98
                                        #   in Loop: Header=BB4_21 Depth=2
	movl	-140(%rbp), %eax
	cltd
	idivl	grid_cfg+4
	cmpl	grid_cfg+104, %edx
	jl	.LBB4_32
.LBB4_30:                               # %lor.lhs.false
                                        #   in Loop: Header=BB4_21 Depth=2
	movl	grid_cfg+4, %eax
	movl	-140(%rbp), %ecx
	movl	%eax, -272(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	idivl	grid_cfg+4
	movl	-272(%rbp), %ecx        # 4-byte Reload
	subl	%edx, %ecx
	cmpl	grid_cfg+100, %ecx
	jl	.LBB4_33
# BB#31:                                # %land.lhs.true.106
                                        #   in Loop: Header=BB4_21 Depth=2
	movl	grid_cfg+4, %eax
	movl	-140(%rbp), %ecx
	movl	%eax, -276(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	idivl	grid_cfg+4
	movl	-276(%rbp), %ecx        # 4-byte Reload
	subl	%edx, %ecx
	cmpl	grid_cfg+104, %ecx
	jge	.LBB4_33
.LBB4_32:                               # %if.then.111
                                        #   in Loop: Header=BB4_21 Depth=2
	leaq	-188(%rbp), %rsi
	movl	-164(%rbp), %eax
	subl	sx1, %eax
	imull	-132(%rbp), %eax
	movslq	%eax, %rcx
	addq	-152(%rbp), %rcx
	movl	-132(%rbp), %edx
	movl	-176(%rbp), %eax
	movl	-172(%rbp), %r8d
	movq	%rcx, %rdi
	movl	%eax, %ecx
	callq	pix_composite
.LBB4_33:                               # %if.end.117
                                        #   in Loop: Header=BB4_21 Depth=2
	jmp	.LBB4_34
.LBB4_34:                               # %for.inc.118
                                        #   in Loop: Header=BB4_21 Depth=2
	movl	-164(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -164(%rbp)
	jmp	.LBB4_21
.LBB4_35:                               # %for.end.120
                                        #   in Loop: Header=BB4_10 Depth=1
	movl	$2, %eax
	movl	-140(%rbp), %ecx
	movl	grid_cfg+96, %edx
	movl	%eax, -280(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-280(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	addl	%eax, %ecx
	movl	%ecx, %eax
	cltd
	idivl	grid_cfg+4
	cmpl	grid_cfg+96, %edx
	jge	.LBB4_49
# BB#36:                                # %if.then.126
                                        #   in Loop: Header=BB4_10 Depth=1
	movl	sx1, %eax
	movl	%eax, -164(%rbp)
.LBB4_37:                               # %for.cond.127
                                        #   Parent Loop BB4_10 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_39 Depth 3
	movl	-164(%rbp), %eax
	cmpl	sx2, %eax
	jge	.LBB4_48
# BB#38:                                # %for.body.130
                                        #   in Loop: Header=BB4_37 Depth=2
	movl	grid_cfg+52, %eax
	addl	-164(%rbp), %eax
	subl	grid_cfg+56, %eax
	movl	%eax, -136(%rbp)
.LBB4_39:                               # %while.cond.133
                                        #   Parent Loop BB4_10 Depth=1
                                        #     Parent Loop BB4_37 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$0, -136(%rbp)
	jge	.LBB4_41
# BB#40:                                # %while.body.136
                                        #   in Loop: Header=BB4_39 Depth=3
	movl	grid_cfg+52, %eax
	addl	-136(%rbp), %eax
	movl	%eax, -136(%rbp)
	jmp	.LBB4_39
.LBB4_41:                               # %while.end.138
                                        #   in Loop: Header=BB4_37 Depth=2
	movl	-136(%rbp), %eax
	cltd
	idivl	grid_cfg+52
	cmpl	grid_cfg+100, %edx
	jl	.LBB4_43
# BB#42:                                # %land.lhs.true.142
                                        #   in Loop: Header=BB4_37 Depth=2
	movl	-136(%rbp), %eax
	cltd
	idivl	grid_cfg+52
	cmpl	grid_cfg+104, %edx
	jl	.LBB4_45
.LBB4_43:                               # %lor.lhs.false.146
                                        #   in Loop: Header=BB4_37 Depth=2
	movl	grid_cfg+52, %eax
	movl	-136(%rbp), %ecx
	movl	%eax, -284(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	idivl	grid_cfg+52
	movl	-284(%rbp), %ecx        # 4-byte Reload
	subl	%edx, %ecx
	cmpl	grid_cfg+100, %ecx
	jl	.LBB4_46
# BB#44:                                # %land.lhs.true.151
                                        #   in Loop: Header=BB4_37 Depth=2
	movl	grid_cfg+52, %eax
	movl	-136(%rbp), %ecx
	movl	%eax, -288(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	idivl	grid_cfg+52
	movl	-288(%rbp), %ecx        # 4-byte Reload
	subl	%edx, %ecx
	cmpl	grid_cfg+104, %ecx
	jge	.LBB4_46
.LBB4_45:                               # %if.then.156
                                        #   in Loop: Header=BB4_37 Depth=2
	leaq	-188(%rbp), %rsi
	movl	-164(%rbp), %eax
	subl	sx1, %eax
	imull	-132(%rbp), %eax
	movslq	%eax, %rcx
	addq	-152(%rbp), %rcx
	movl	-132(%rbp), %edx
	movl	-176(%rbp), %eax
	movl	-172(%rbp), %r8d
	movq	%rcx, %rdi
	movl	%eax, %ecx
	callq	pix_composite
.LBB4_46:                               # %if.end.162
                                        #   in Loop: Header=BB4_37 Depth=2
	jmp	.LBB4_47
.LBB4_47:                               # %for.inc.163
                                        #   in Loop: Header=BB4_37 Depth=2
	movl	-164(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -164(%rbp)
	jmp	.LBB4_37
.LBB4_48:                               # %for.end.165
                                        #   in Loop: Header=BB4_10 Depth=1
	jmp	.LBB4_49
.LBB4_49:                               # %if.end.166
                                        #   in Loop: Header=BB4_10 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB4_51
# BB#50:                                # %if.then.168
                                        #   in Loop: Header=BB4_10 Depth=1
	movq	-160(%rbp), %rax
	movl	-168(%rbp), %ecx
	subl	sy1, %ecx
	movl	sx2, %edx
	subl	sx1, %edx
	imull	%edx, %ecx
	imull	-132(%rbp), %ecx
	movslq	%ecx, %rsi
	addq	%rsi, %rax
	movq	-152(%rbp), %rsi
	movl	sx2, %ecx
	subl	sx1, %ecx
	imull	-132(%rbp), %ecx
	movslq	%ecx, %rdx
	movq	%rax, %rdi
	callq	memcpy
	jmp	.LBB4_54
.LBB4_51:                               # %if.else.177
                                        #   in Loop: Header=BB4_10 Depth=1
	leaq	-128(%rbp), %rdi
	movq	-152(%rbp), %rsi
	movl	sx1, %edx
	movl	-168(%rbp), %ecx
	movl	sx2, %eax
	subl	sx1, %eax
	movl	%eax, %r8d
	callq	gimp_pixel_rgn_set_row
	movl	$16, %eax
	movl	-168(%rbp), %ecx
	movl	%eax, -292(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-292(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB4_53
# BB#52:                                # %if.then.182
                                        #   in Loop: Header=BB4_10 Depth=1
	cvtsi2sdl	-168(%rbp), %xmm0
	movl	sy2, %eax
	subl	sy1, %eax
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -296(%rbp)        # 4-byte Spill
.LBB4_53:                               # %if.end.188
                                        #   in Loop: Header=BB4_10 Depth=1
	jmp	.LBB4_54
.LBB4_54:                               # %if.end.189
                                        #   in Loop: Header=BB4_10 Depth=1
	jmp	.LBB4_55
.LBB4_55:                               # %for.inc.190
                                        #   in Loop: Header=BB4_10 Depth=1
	movl	-168(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -168(%rbp)
	jmp	.LBB4_10
.LBB4_56:                               # %for.end.192
	movq	-152(%rbp), %rdi
	callq	g_free
	cmpq	$0, -32(%rbp)
	je	.LBB4_58
# BB#57:                                # %if.then.194
	movq	-32(%rbp), %rdi
	movq	-160(%rbp), %rsi
	movl	-132(%rbp), %eax
	movl	sx2, %ecx
	subl	sx1, %ecx
	imull	%ecx, %eax
	movl	%eax, %edx
	callq	gimp_preview_draw_buffer
	movq	-160(%rbp), %rdi
	callq	g_free
	jmp	.LBB4_59
.LBB4_58:                               # %if.else.197
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	callq	gimp_progress_update
	movq	-24(%rbp), %rdi
	movl	%eax, -300(%rbp)        # 4-byte Spill
	callq	gimp_drawable_flush
	movl	$1, %esi
	movq	-24(%rbp), %rdi
	movl	(%rdi), %edi
	callq	gimp_drawable_merge_shadow
	movq	-24(%rbp), %rcx
	movl	(%rcx), %edi
	movl	sx1, %esi
	movl	sy1, %edx
	movl	sx2, %r8d
	subl	sx1, %r8d
	movl	sy2, %r9d
	subl	sy1, %r9d
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%eax, -304(%rbp)        # 4-byte Spill
	callq	gimp_drawable_update
	movl	%eax, -308(%rbp)        # 4-byte Spill
.LBB4_59:                               # %if.end.205
	addq	$328, %rsp              # imm = 0x148
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end4:
	.size	grid, .Lfunc_end4-grid
	.cfi_endproc

	.align	16, 0x90
	.type	update_preview,@function
update_preview:                         # @update_preview
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
	movq	%rsi, -16(%rbp)
	callq	update_values
	movq	-16(%rbp), %rsi
	movl	(%rsi), %edi
	callq	gimp_item_get_image
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdx
	movl	%eax, %edi
	callq	grid
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	update_preview, .Lfunc_end5-update_preview
	.cfi_endproc

	.align	16, 0x90
	.type	entry_callback,@function
entry_callback:                         # @entry_callback
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gimp_size_entry_get_refval
	movsd	%xmm0, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gimp_size_entry_get_refval
	movsd	%xmm0, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_chain_button_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_chain_button_get_active
	cmpl	$0, %eax
	je	.LBB6_6
# BB#1:                                 # %if.then
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	entry_callback.x, %xmm0
	jne	.LBB6_2
	jp	.LBB6_2
	jmp	.LBB6_3
.LBB6_2:                                # %if.then.9
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, entry_callback.x
	movsd	%xmm0, -32(%rbp)
	movsd	%xmm0, entry_callback.y
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movsd	entry_callback.y, %xmm0 # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	gimp_size_entry_set_refval
.LBB6_3:                                # %if.end
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	entry_callback.y, %xmm0
	jne	.LBB6_4
	jp	.LBB6_4
	jmp	.LBB6_5
.LBB6_4:                                # %if.then.13
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, entry_callback.y
	movsd	%xmm0, -24(%rbp)
	movsd	%xmm0, entry_callback.x
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movsd	entry_callback.x, %xmm0 # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	gimp_size_entry_set_refval
.LBB6_5:                                # %if.end.16
	jmp	.LBB6_7
.LBB6_6:                                # %if.else
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, entry_callback.x
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, entry_callback.y
.LBB6_7:                                # %if.end.17
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	entry_callback, .Lfunc_end6-entry_callback
	.cfi_endproc

	.align	16, 0x90
	.type	color_callback,@function
color_callback:                         # @color_callback
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	gimp_chain_button_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_chain_button_get_active
	cmpl	$0, %eax
	je	.LBB7_7
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_color_button_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_color_button_get_color
	movq	-8(%rbp), %rax
	cmpq	vcolor_button, %rax
	jne	.LBB7_3
# BB#2:                                 # %if.then.5
	movq	hcolor_button, %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_color_button_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_color_button_set_color
	jmp	.LBB7_6
.LBB7_3:                                # %if.else
	movq	-8(%rbp), %rax
	cmpq	hcolor_button, %rax
	jne	.LBB7_5
# BB#4:                                 # %if.then.9
	movq	vcolor_button, %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_color_button_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_color_button_set_color
.LBB7_5:                                # %if.end
	jmp	.LBB7_6
.LBB7_6:                                # %if.end.12
	jmp	.LBB7_7
.LBB7_7:                                # %if.end.13
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	color_callback, .Lfunc_end7-color_callback
	.cfi_endproc

	.align	16, 0x90
	.type	update_values,@function
update_values:                          # @update_values
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
	subq	$96, %rsp
	movl	$80, %eax
	movl	%eax, %esi
	movq	main_dialog, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.68, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gimp_size_entry_get_refval
	callq	rint
	cvttsd2si	%xmm0, %esi
	movl	%esi, grid_cfg
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gimp_size_entry_get_refval
	callq	rint
	cvttsd2si	%xmm0, %esi
	movl	%esi, grid_cfg+48
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gimp_size_entry_get_refval
	movl	$80, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	rint
	cvttsd2si	%xmm0, %edx
	movl	%edx, grid_cfg+96
	movq	main_dialog, %rax
	movq	%rax, %rdi
	movq	-40(%rbp), %rsi         # 8-byte Reload
	callq	g_type_check_instance_cast
	movabsq	$.L.str.69, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gimp_size_entry_get_refval
	callq	rint
	cvttsd2si	%xmm0, %edx
	movl	%edx, grid_cfg+4
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gimp_size_entry_get_refval
	callq	rint
	cvttsd2si	%xmm0, %edx
	movl	%edx, grid_cfg+52
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gimp_size_entry_get_refval
	movl	$80, %edx
	movl	%edx, %esi
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	callq	rint
	cvttsd2si	%xmm0, %edx
	movl	%edx, grid_cfg+100
	movq	main_dialog, %rax
	movq	%rax, %rdi
	movq	-72(%rbp), %rsi         # 8-byte Reload
	callq	g_type_check_instance_cast
	movabsq	$.L.str.70, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gimp_size_entry_get_refval
	callq	rint
	cvttsd2si	%xmm0, %edx
	movl	%edx, grid_cfg+8
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gimp_size_entry_get_refval
	callq	rint
	cvttsd2si	%xmm0, %edx
	movl	%edx, grid_cfg+56
	movq	-8(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gimp_size_entry_get_refval
	callq	rint
	cvttsd2si	%xmm0, %edx
	movl	%edx, grid_cfg+104
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	update_values, .Lfunc_end8-update_values
	.cfi_endproc

	.align	16, 0x90
	.type	best_cmap_match,@function
best_cmap_match:                        # @best_cmap_match
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
	subq	$48, %rsp
	leaq	-45(%rbp), %rax
	leaq	-46(%rbp), %rcx
	leaq	-47(%rbp), %r8
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movb	$0, -25(%rbp)
	movl	$195076, -32(%rbp)      # imm = 0x2FA04
	movq	-24(%rbp), %rdi
	movq	%rax, %rsi
	movq	%rcx, %rdx
	movq	%r8, %rcx
	callq	gimp_rgb_get_uchar
	movl	$0, -36(%rbp)
.LBB9_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB9_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB9_1 Depth=1
	movzbl	-45(%rbp), %eax
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -8(%rbp)
	movzbl	(%rcx), %esi
	subl	%esi, %eax
	movl	%eax, -40(%rbp)
	movl	-40(%rbp), %eax
	imull	-40(%rbp), %eax
	movl	%eax, -44(%rbp)
	movzbl	-46(%rbp), %eax
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -8(%rbp)
	movzbl	(%rcx), %esi
	subl	%esi, %eax
	movl	%eax, -40(%rbp)
	movl	-40(%rbp), %eax
	imull	-40(%rbp), %eax
	addl	-44(%rbp), %eax
	movl	%eax, -44(%rbp)
	movzbl	-47(%rbp), %eax
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -8(%rbp)
	movzbl	(%rcx), %esi
	subl	%esi, %eax
	movl	%eax, -40(%rbp)
	movl	-40(%rbp), %eax
	imull	-40(%rbp), %eax
	addl	-44(%rbp), %eax
	movl	%eax, -44(%rbp)
	movl	-44(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jge	.LBB9_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-36(%rbp), %eax
	movb	%al, %cl
	movb	%cl, -25(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, -32(%rbp)
.LBB9_4:                                # %if.end
                                        #   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_5
.LBB9_5:                                # %for.inc
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB9_1
.LBB9_6:                                # %for.end
	movzbl	-25(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	best_cmap_match, .Lfunc_end9-best_cmap_match
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI10_0:
	.quad	4643176031446892544     # double 255
.LCPI10_1:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	pix_composite,@function
pix_composite:                          # @pix_composite
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
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	cmpl	$0, -24(%rbp)
	je	.LBB10_8
# BB#1:                                 # %if.then
	cmpl	$0, -28(%rbp)
	je	.LBB10_3
# BB#2:                                 # %if.then.2
	movl	-20(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -20(%rbp)
.LBB10_3:                               # %if.end
	movl	$0, -32(%rbp)
.LBB10_4:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB10_7
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB10_4 Depth=1
	movq	-8(%rbp), %rax
	movzbl	(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm0
	movq	-16(%rbp), %rax
	movzbl	3(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm1
	movsd	.LCPI10_0(%rip), %xmm2  # xmm2 = mem[0],zero
	divsd	%xmm2, %xmm1
	movsd	.LCPI10_1(%rip), %xmm3  # xmm3 = mem[0],zero
	subsd	%xmm1, %xmm3
	mulsd	%xmm3, %xmm0
	movslq	-32(%rbp), %rdx
	movzbl	(%rax,%rdx), %esi
	imull	%ecx, %esi
	cvtsi2sdl	%esi, %xmm1
	divsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movb	%cl, %dil
	movq	-8(%rbp), %rax
	movb	%dil, (%rax)
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -8(%rbp)
# BB#6:                                 # %for.inc
                                        #   in Loop: Header=BB10_4 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB10_4
.LBB10_7:                               # %for.end
	jmp	.LBB10_9
.LBB10_8:                               # %if.else
	movq	-16(%rbp), %rax
	movb	(%rax), %cl
	movq	-8(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -8(%rbp)
	movb	%cl, (%rax)
.LBB10_9:                               # %if.end.15
	cmpl	$0, -28(%rbp)
	je	.LBB10_15
# BB#10:                                # %land.lhs.true
	movq	-8(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$255, %ecx
	jge	.LBB10_15
# BB#11:                                # %if.then.20
	movsd	.LCPI10_0, %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movzbl	(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm1
	movq	-16(%rbp), %rax
	movzbl	3(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm2
	movq	-8(%rbp), %rax
	movzbl	(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm3
	movaps	%xmm0, %xmm4
	subsd	%xmm3, %xmm4
	divsd	%xmm4, %xmm2
	mulsd	%xmm2, %xmm0
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %ecx
	movl	%ecx, -32(%rbp)
	cmpl	$255, -32(%rbp)
	jle	.LBB10_13
# BB#12:                                # %cond.true
	movl	$255, %eax
	movl	%eax, -36(%rbp)         # 4-byte Spill
	jmp	.LBB10_14
.LBB10_13:                              # %cond.false
	movl	-32(%rbp), %eax
	movl	%eax, -36(%rbp)         # 4-byte Spill
.LBB10_14:                              # %cond.end
	movl	-36(%rbp), %eax         # 4-byte Reload
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movb	%cl, (%rdx)
.LBB10_15:                              # %if.end.35
	popq	%rbp
	retq
.Lfunc_end10:
	.size	pix_composite, .Lfunc_end10-pix_composite
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
	.long	10                      # 0xa
	.zero	4
	.quad	.L.str.12
	.quad	.L.str.13
	.long	2                       # 0x2
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
	.long	10                      # 0xa
	.zero	4
	.quad	.L.str.22
	.quad	.L.str.23
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.24
	.quad	.L.str.25
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.26
	.quad	.L.str.27
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.28
	.quad	.L.str.29
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.30
	.quad	.L.str.31
	.long	10                      # 0xa
	.zero	4
	.quad	.L.str.32
	.quad	.L.str.33
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.34
	.quad	.L.str.35
	.size	query.args, 432

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
	.asciz	"hwidth"
	.size	.L.str.6, 7

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Horizontal Width   (>= 0)"
	.size	.L.str.7, 26

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"hspace"
	.size	.L.str.8, 7

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Horizontal Spacing (>= 1)"
	.size	.L.str.9, 26

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"hoffset"
	.size	.L.str.10, 8

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Horizontal Offset  (>= 0)"
	.size	.L.str.11, 26

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"hcolor"
	.size	.L.str.12, 7

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Horizontal Colour"
	.size	.L.str.13, 18

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"hopacity"
	.size	.L.str.14, 9

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Horizontal Opacity (0...255)"
	.size	.L.str.15, 29

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"vwidth"
	.size	.L.str.16, 7

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Vertical Width   (>= 0)"
	.size	.L.str.17, 24

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"vspace"
	.size	.L.str.18, 7

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Vertical Spacing (>= 1)"
	.size	.L.str.19, 24

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"voffset"
	.size	.L.str.20, 8

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Vertical Offset  (>= 0)"
	.size	.L.str.21, 24

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"vcolor"
	.size	.L.str.22, 7

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Vertical Colour"
	.size	.L.str.23, 16

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"vopacity"
	.size	.L.str.24, 9

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Vertical Opacity (0...255)"
	.size	.L.str.25, 27

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"iwidth"
	.size	.L.str.26, 7

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"Intersection Width   (>= 0)"
	.size	.L.str.27, 28

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"ispace"
	.size	.L.str.28, 7

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"Intersection Spacing (>= 0)"
	.size	.L.str.29, 28

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"ioffset"
	.size	.L.str.30, 8

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"Intersection Offset  (>= 0)"
	.size	.L.str.31, 28

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"icolor"
	.size	.L.str.32, 7

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"Intersection Colour"
	.size	.L.str.33, 20

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"iopacity"
	.size	.L.str.34, 9

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"Intersection Opacity (0...255)"
	.size	.L.str.35, 31

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"plug-in-grid"
	.size	.L.str.36, 13

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"Draw a grid on the image"
	.size	.L.str.37, 25

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"Draws a grid using the specified colors. The grid origin is the upper left corner."
	.size	.L.str.38, 83

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"Tim Newsome"
	.size	.L.str.39, 12

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"Tim Newsome, Sven Neumann, Tom Rathborne, TC"
	.size	.L.str.40, 45

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"1997 - 2000"
	.size	.L.str.41, 12

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"_Grid..."
	.size	.L.str.42, 9

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"RGB*, GRAY*, INDEXED*"
	.size	.L.str.43, 22

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"<Image>/Filters/Render/Pattern"
	.size	.L.str.44, 31

	.type	run.values,@object      # @run.values
	.local	run.values
	.comm	run.values,40,16
	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"gimp20-std-plug-ins"
	.size	.L.str.45, 20

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"UTF-8"
	.size	.L.str.46, 6

	.type	grid_cfg,@object        # @grid_cfg
	.data
	.align	8
grid_cfg:
	.long	1                       # 0x1
	.long	16                      # 0x10
	.long	8                       # 0x8
	.zero	4
	.quad	0                       # double 0
	.quad	0                       # double 0
	.quad	0                       # double 0
	.quad	4607182418800017408     # double 1
	.long	1                       # 0x1
	.long	16                      # 0x10
	.long	8                       # 0x8
	.zero	4
	.quad	0                       # double 0
	.quad	0                       # double 0
	.quad	0                       # double 0
	.quad	4607182418800017408     # double 1
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	6                       # 0x6
	.zero	4
	.quad	0                       # double 0
	.quad	0                       # double 0
	.quad	0                       # double 0
	.quad	4607182418800017408     # double 1
	.size	grid_cfg, 144

	.type	.L.str.47,@object       # @.str.47
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.47:
	.asciz	"Drawing grid"
	.size	.L.str.47, 13

	.type	main_dialog,@object     # @main_dialog
	.local	main_dialog
	.comm	main_dialog,8,8
	.type	.L__func__.dialog,@object # @__func__.dialog
.L__func__.dialog:
	.asciz	"dialog"
	.size	.L__func__.dialog, 7

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"main_dialog == NULL"
	.size	.L.str.48, 20

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"grid"
	.size	.L.str.49, 5

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"Grid"
	.size	.L.str.50, 5

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"gimp-grid"
	.size	.L.str.51, 10

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"gtk-cancel"
	.size	.L.str.52, 11

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"gtk-ok"
	.size	.L.str.53, 7

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"invalidated"
	.size	.L.str.54, 12

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"%a"
	.size	.L.str.55, 3

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"Horizontal\nLines"
	.size	.L.str.56, 17

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"Vertical\nLines"
	.size	.L.str.57, 15

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"Intersection"
	.size	.L.str.58, 13

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"Width:"
	.size	.L.str.59, 7

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"value-changed"
	.size	.L.str.60, 14

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"Spacing:"
	.size	.L.str.61, 9

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"unit-changed"
	.size	.L.str.62, 13

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"Offset:"
	.size	.L.str.63, 8

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"Horizontal Color"
	.size	.L.str.64, 17

	.type	hcolor_button,@object   # @hcolor_button
	.local	hcolor_button
	.comm	hcolor_button,8,8
	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"color-changed"
	.size	.L.str.65, 14

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"Vertical Color"
	.size	.L.str.66, 15

	.type	vcolor_button,@object   # @vcolor_button
	.local	vcolor_button
	.comm	vcolor_button,8,8
	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"Intersection Color"
	.size	.L.str.67, 19

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"width"
	.size	.L.str.68, 6

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"space"
	.size	.L.str.69, 6

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"offset"
	.size	.L.str.70, 7

	.type	entry_callback.x,@object # @entry_callback.x
	.data
	.align	8
entry_callback.x:
	.quad	-4616189618054758400    # double -1
	.size	entry_callback.x, 8

	.type	entry_callback.y,@object # @entry_callback.y
	.align	8
entry_callback.y:
	.quad	-4616189618054758400    # double -1
	.size	entry_callback.y, 8

	.type	.L.str.71,@object       # @.str.71
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.71:
	.asciz	"grid.c"
	.size	.L.str.71, 7

	.type	sx1,@object             # @sx1
	.local	sx1
	.comm	sx1,4,4
	.type	sy1,@object             # @sy1
	.local	sy1
	.comm	sy1,4,4
	.type	sx2,@object             # @sx2
	.local	sx2
	.comm	sx2,4,4
	.type	sy2,@object             # @sy2
	.local	sy2
	.comm	sy2,4,4

	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
