	.text
	.file	"sparkle.bc"
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
	movabsq	$.L.str.32, %rdi
	movabsq	$.L.str.33, %rsi
	movabsq	$.L.str.34, %rdx
	movabsq	$.L.str.35, %rcx
	movabsq	$.L.str.36, %r8
	movabsq	$.L.str.37, %r9
	movabsq	$.L.str.38, %rax
	movabsq	$.L.str.39, %r10
	movl	$1, %r11d
	movl	$16, %ebx
	xorl	%r14d, %r14d
	movabsq	$query.args, %r15
	xorl	%r12d, %r12d
	movl	%r12d, %r13d
	movq	%rax, (%rsp)
	movq	%r10, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$16, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%r15, 40(%rsp)
	movq	$0, 48(%rsp)
	movq	%r13, -48(%rbp)         # 8-byte Spill
	movl	%r11d, -52(%rbp)        # 4-byte Spill
	movl	%r14d, -56(%rbp)        # 4-byte Spill
	movl	%ebx, -60(%rbp)         # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.32, %rdi
	movabsq	$.L.str.40, %rsi
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
	.quad	4607182418800017408     # double 1
.LCPI1_1:
	.quad	-4616189618054758400    # double -1
.LCPI1_2:
	.quad	4645040803167600640     # double 360
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	$3, -56(%rbp)
	movq	-24(%rbp), %rcx
	movl	8(%rcx), %esi
	movl	%esi, -52(%rbp)
# BB#1:                                 # %do.body
	callq	gimp_locale_directory
	movabsq	$.L.str.41, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.41, %rdi
	movabsq	$.L.str.42, %rsi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.41, %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	textdomain
	movq	%rax, -96(%rbp)         # 8-byte Spill
# BB#2:                                 # %do.end
	movabsq	$run.values, %rax
	movq	-32(%rbp), %rcx
	movl	$1, (%rcx)
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	$21, run.values
	movl	-56(%rbp), %edx
	movl	%edx, run.values+8
	movq	-24(%rbp), %rax
	movl	88(%rax), %edi
	callq	gimp_drawable_get
	leaq	-60(%rbp), %rsi
	leaq	-64(%rbp), %rdx
	leaq	-68(%rbp), %rcx
	leaq	-72(%rbp), %r8
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_mask_intersect
	cmpl	$0, %eax
	jne	.LBB1_4
# BB#3:                                 # %if.then
	movabsq	$.L.str.43, %rdi
	callq	gettext
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_message
	jmp	.LBB1_60
.LBB1_4:                                # %if.end
	movq	-48(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	callq	gimp_tile_width
	xorl	%edx, %edx
	movl	-100(%rbp), %ecx        # 4-byte Reload
	movl	%eax, -104(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	movl	-104(%rbp), %esi        # 4-byte Reload
	divl	%esi
	movl	%eax, %edi
	leal	2(%rdi,%rdi), %eax
	movl	%eax, %edi
	callq	gimp_tile_cache_ntiles
	movl	-52(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
	je	.LBB1_5
	jmp	.LBB1_61
.LBB1_61:                               # %if.end
	movl	-108(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
	je	.LBB1_8
	jmp	.LBB1_62
.LBB1_62:                               # %if.end
	movl	-108(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
	je	.LBB1_49
	jmp	.LBB1_50
.LBB1_5:                                # %sw.bb
	movabsq	$.L.str.32, %rdi
	movabsq	$svals, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movq	-48(%rbp), %rdi
	movl	%eax, -120(%rbp)        # 4-byte Spill
	callq	sparkle_dialog
	cmpl	$0, %eax
	jne	.LBB1_7
# BB#6:                                 # %if.then.13
	jmp	.LBB1_60
.LBB1_7:                                # %if.end.14
	jmp	.LBB1_51
.LBB1_8:                                # %sw.bb.15
	cmpl	$16, -12(%rbp)
	je	.LBB1_10
# BB#9:                                 # %if.then.17
	movl	$1, -56(%rbp)
	jmp	.LBB1_48
.LBB1_10:                               # %if.else
	xorps	%xmm0, %xmm0
	xorl	%eax, %eax
	movl	$1, %ecx
	movq	-24(%rbp), %rdx
	movsd	128(%rdx), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm1, svals
	movq	-24(%rbp), %rdx
	movsd	168(%rdx), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm1, svals+8
	movq	-24(%rbp), %rdx
	cvtsi2sdl	208(%rdx), %xmm1
	movsd	%xmm1, svals+16
	movq	-24(%rbp), %rdx
	cvtsi2sdl	248(%rdx), %xmm1
	movsd	%xmm1, svals+24
	movq	-24(%rbp), %rdx
	cvtsi2sdl	288(%rdx), %xmm1
	movsd	%xmm1, svals+32
	movq	-24(%rbp), %rdx
	movsd	328(%rdx), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm1, svals+40
	movq	-24(%rbp), %rdx
	movsd	368(%rdx), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm1, svals+48
	movq	-24(%rbp), %rdx
	movsd	408(%rdx), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm1, svals+56
	movq	-24(%rbp), %rdx
	movsd	448(%rdx), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm1, svals+64
	movq	-24(%rbp), %rdx
	cmpl	$0, 488(%rdx)
	movl	%eax, %esi
	cmovnel	%ecx, %esi
	movl	%esi, svals+72
	movq	-24(%rbp), %rdx
	cmpl	$0, 528(%rdx)
	movl	%eax, %esi
	cmovnel	%ecx, %esi
	movl	%esi, svals+76
	movq	-24(%rbp), %rdx
	cmpl	$0, 568(%rdx)
	cmovnel	%ecx, %eax
	movl	%eax, svals+80
	movq	-24(%rbp), %rdx
	movl	608(%rdx), %eax
	movl	%eax, svals+84
	ucomisd	svals, %xmm0
	ja	.LBB1_12
# BB#11:                                # %lor.lhs.false
	movsd	.LCPI1_0, %xmm0         # xmm0 = mem[0],zero
	movsd	svals, %xmm1            # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB1_13
.LBB1_12:                               # %if.then.68
	movl	$1, -56(%rbp)
	jmp	.LBB1_47
.LBB1_13:                               # %if.else.69
	xorps	%xmm0, %xmm0
	ucomisd	svals+8, %xmm0
	ja	.LBB1_15
# BB#14:                                # %lor.lhs.false.72
	movsd	.LCPI1_0, %xmm0         # xmm0 = mem[0],zero
	movsd	svals+8, %xmm1          # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB1_16
.LBB1_15:                               # %if.then.75
	movl	$1, -56(%rbp)
	jmp	.LBB1_46
.LBB1_16:                               # %if.else.76
	xorps	%xmm0, %xmm0
	ucomisd	svals+16, %xmm0
	jbe	.LBB1_18
# BB#17:                                # %if.then.79
	movl	$1, -56(%rbp)
	jmp	.LBB1_45
.LBB1_18:                               # %if.else.80
	xorps	%xmm0, %xmm0
	ucomisd	svals+24, %xmm0
	jbe	.LBB1_20
# BB#19:                                # %if.then.83
	movl	$1, -56(%rbp)
	jmp	.LBB1_44
.LBB1_20:                               # %if.else.84
	movsd	.LCPI1_1, %xmm0         # xmm0 = mem[0],zero
	ucomisd	svals+32, %xmm0
	ja	.LBB1_22
# BB#21:                                # %lor.lhs.false.87
	movsd	.LCPI1_2, %xmm0         # xmm0 = mem[0],zero
	movsd	svals+32, %xmm1         # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB1_23
.LBB1_22:                               # %if.then.90
	movl	$1, -56(%rbp)
	jmp	.LBB1_43
.LBB1_23:                               # %if.else.91
	xorps	%xmm0, %xmm0
	ucomisd	svals+40, %xmm0
	ja	.LBB1_25
# BB#24:                                # %lor.lhs.false.94
	movsd	.LCPI1_0, %xmm0         # xmm0 = mem[0],zero
	movsd	svals+40, %xmm1         # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB1_26
.LBB1_25:                               # %if.then.97
	movl	$1, -56(%rbp)
	jmp	.LBB1_42
.LBB1_26:                               # %if.else.98
	xorps	%xmm0, %xmm0
	ucomisd	svals+48, %xmm0
	ja	.LBB1_28
# BB#27:                                # %lor.lhs.false.101
	movsd	.LCPI1_0, %xmm0         # xmm0 = mem[0],zero
	movsd	svals+48, %xmm1         # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB1_29
.LBB1_28:                               # %if.then.104
	movl	$1, -56(%rbp)
	jmp	.LBB1_41
.LBB1_29:                               # %if.else.105
	xorps	%xmm0, %xmm0
	ucomisd	svals+56, %xmm0
	ja	.LBB1_31
# BB#30:                                # %lor.lhs.false.108
	movsd	.LCPI1_0, %xmm0         # xmm0 = mem[0],zero
	movsd	svals+56, %xmm1         # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB1_32
.LBB1_31:                               # %if.then.111
	movl	$1, -56(%rbp)
	jmp	.LBB1_40
.LBB1_32:                               # %if.else.112
	xorps	%xmm0, %xmm0
	ucomisd	svals+64, %xmm0
	ja	.LBB1_34
# BB#33:                                # %lor.lhs.false.115
	movsd	.LCPI1_0, %xmm0         # xmm0 = mem[0],zero
	movsd	svals+64, %xmm1         # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB1_35
.LBB1_34:                               # %if.then.118
	movl	$1, -56(%rbp)
	jmp	.LBB1_39
.LBB1_35:                               # %if.else.119
	cmpl	$0, svals+84
	jl	.LBB1_37
# BB#36:                                # %lor.lhs.false.122
	cmpl	$2, svals+84
	jle	.LBB1_38
.LBB1_37:                               # %if.then.125
	movl	$1, -56(%rbp)
.LBB1_38:                               # %if.end.126
	jmp	.LBB1_39
.LBB1_39:                               # %if.end.127
	jmp	.LBB1_40
.LBB1_40:                               # %if.end.128
	jmp	.LBB1_41
.LBB1_41:                               # %if.end.129
	jmp	.LBB1_42
.LBB1_42:                               # %if.end.130
	jmp	.LBB1_43
.LBB1_43:                               # %if.end.131
	jmp	.LBB1_44
.LBB1_44:                               # %if.end.132
	jmp	.LBB1_45
.LBB1_45:                               # %if.end.133
	jmp	.LBB1_46
.LBB1_46:                               # %if.end.134
	jmp	.LBB1_47
.LBB1_47:                               # %if.end.135
	jmp	.LBB1_48
.LBB1_48:                               # %if.end.136
	jmp	.LBB1_51
.LBB1_49:                               # %sw.bb.137
	movabsq	$.L.str.32, %rdi
	movabsq	$svals, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movl	%eax, -124(%rbp)        # 4-byte Spill
	jmp	.LBB1_51
.LBB1_50:                               # %sw.default
	jmp	.LBB1_51
.LBB1_51:                               # %sw.epilog
	movq	-48(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_is_rgb
	cmpl	$0, %eax
	jne	.LBB1_53
# BB#52:                                # %lor.lhs.false.142
	movq	-48(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_is_gray
	cmpl	$0, %eax
	je	.LBB1_58
.LBB1_53:                               # %if.then.146
	movabsq	$.L.str.44, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_progress_init
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	-48(%rbp), %rdi
	movl	%eax, -128(%rbp)        # 4-byte Spill
	callq	sparkle
	cmpl	$1, -52(%rbp)
	je	.LBB1_55
# BB#54:                                # %if.then.151
	callq	gimp_displays_flush
	movl	%eax, -132(%rbp)        # 4-byte Spill
.LBB1_55:                               # %if.end.153
	cmpl	$0, -52(%rbp)
	jne	.LBB1_57
# BB#56:                                # %if.then.156
	movabsq	$.L.str.32, %rdi
	movabsq	$svals, %rax
	movl	$88, %edx
	movq	%rax, %rsi
	callq	gimp_procedural_db_set_data
	movl	%eax, -136(%rbp)        # 4-byte Spill
.LBB1_57:                               # %if.end.158
	jmp	.LBB1_59
.LBB1_58:                               # %if.else.159
	movl	$0, -56(%rbp)
.LBB1_59:                               # %if.end.160
	movl	-56(%rbp), %eax
	movl	%eax, run.values+8
	movq	-48(%rbp), %rdi
	callq	gimp_drawable_detach
.LBB1_60:                               # %return
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
	.quad	4607182418800017408     # double 1
.LCPI4_1:
	.quad	4576918229304087675     # double 0.01
.LCPI4_2:
	.quad	4591870180066957722     # double 0.10000000000000001
.LCPI4_3:
	.quad	-4616189618054758400    # double -1
.LCPI4_4:
	.quad	4645040803167600640     # double 360
.LCPI4_5:
	.quad	4624633867356078080     # double 15
.LCPI4_6:
	.quad	4625196817309499392     # double 16
.LCPI4_7:
	.quad	4616189618054758400     # double 4
.LCPI4_8:
	.quad	4636737291354636288     # double 100
.LCPI4_9:
	.quad	4621819117588971520     # double 10
.LCPI4_10:
	.quad	4562254508917369340     # double 0.001
	.text
	.align	16, 0x90
	.type	sparkle_dialog,@function
sparkle_dialog:                         # @sparkle_dialog
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
	subq	$1416, %rsp             # imm = 0x588
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
	movabsq	$.L.str.45, %rax
	xorl	%esi, %esi
	movq	%rdi, -48(%rbp)
	movq	%rax, %rdi
	callq	gimp_ui_init
	movabsq	$.L.str.46, %rdi
	callq	gettext
	movabsq	$.L.str.47, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	movabsq	$gimp_standard_help_func, %r8
	movabsq	$.L.str.32, %r9
	movabsq	$.L.str.48, %rdi
	movl	$4294967290, %r10d      # imm = 0xFFFFFFFA
	movabsq	$.L.str.49, %r11
	movl	$4294967291, %ebx       # imm = 0xFFFFFFFB
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$-6, 8(%rsp)
	movq	%r11, 16(%rsp)
	movl	$-5, 24(%rsp)
	movq	$0, 32(%rsp)
	movb	$0, %al
	movl	%ebx, -156(%rbp)        # 4-byte Spill
	movl	%r10d, -160(%rbp)       # 4-byte Spill
	callq	gimp_dialog_new
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	movq	-56(%rbp), %rdi
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_window_set_transient
	movl	$1, %edi
	movl	$12, %esi
	callq	gtk_box_new
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-56(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
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
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	-48(%rbp), %rdi
	callq	gimp_drawable_preview_new
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
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
	movabsq	$.L.str.50, %rsi
	movabsq	$sparkle, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movl	$2, %r9d
	movq	-72(%rbp), %rdi
	movq	-48(%rbp), %r11
	movq	%rax, %rdx
	movq	%r11, %rcx
	callq	g_signal_connect_data
	movl	$9, %edi
	movl	$3, %esi
	xorl	%edx, %edx
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gtk_table_new
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-96(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-64(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-96(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -244(%rbp)        # 4-byte Spill
	movl	-244(%rbp), %ecx        # 4-byte Reload
	movl	-244(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-96(%rbp), %rdi
	callq	gtk_widget_show
	movq	-96(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.51, %rdi
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.52, %rdi
	movsd	svals, %xmm0            # xmm0 = mem[0],zero
	movq	%rax, -272(%rbp)        # 8-byte Spill
	movsd	%xmm0, -280(%rbp)       # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	$175, %r8d
	movl	$7, %r9d
	xorps	%xmm0, %xmm0
	movsd	.LCPI4_2, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI4_10, %xmm3        # xmm3 = mem[0],zero
	movsd	.LCPI4_1, %xmm4         # xmm4 = mem[0],zero
	movl	$3, %edx
	movl	$1, %r10d
	xorl	%ebx, %ebx
	movl	%ebx, %esi
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rsi, -288(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movl	%edx, -292(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movq	-272(%rbp), %rcx        # 8-byte Reload
	movsd	-280(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm0, -304(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-304(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	$3, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-304(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-304(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	%rax, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r10d, -308(%rbp)       # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.53, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	movabsq	$svals, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	movq	%rdi, -320(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-320(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.53, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-136(%rbp), %rdx
	movq	-72(%rbp), %rdi
	movq	%rdi, -328(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-328(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-96(%rbp), %rcx
	movq	%rax, -344(%rbp)        # 8-byte Spill
	movq	%rcx, -352(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.54, %rdi
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.55, %rdi
	movsd	svals+8, %xmm0          # xmm0 = mem[0],zero
	movq	%rax, -368(%rbp)        # 8-byte Spill
	movsd	%xmm0, -376(%rbp)       # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$1, %edx
	movl	$175, %r8d
	movl	$7, %r9d
	xorps	%xmm0, %xmm0
	movsd	.LCPI4_0, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI4_1, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI4_2, %xmm4         # xmm4 = mem[0],zero
	movl	$2, %r10d
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	-368(%rbp), %r11        # 8-byte Reload
	movq	%rcx, -384(%rbp)        # 8-byte Spill
	movq	%r11, %rcx
	movsd	-376(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm0, -392(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-392(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	$2, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-392(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-392(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	%rax, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r10d, -396(%rbp)       # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.53, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	movabsq	$svals, %rdi
	addq	$8, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	movq	%rdi, -408(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-408(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.53, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-136(%rbp), %rdx
	movq	-72(%rbp), %rdi
	movq	%rdi, -416(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-416(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-96(%rbp), %rcx
	movq	%rax, -432(%rbp)        # 8-byte Spill
	movq	%rcx, -440(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-440(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.56, %rdi
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.57, %rdi
	movsd	svals+16, %xmm0         # xmm0 = mem[0],zero
	movq	%rax, -456(%rbp)        # 8-byte Spill
	movsd	%xmm0, -464(%rbp)       # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$2, %edx
	movl	$175, %r8d
	movl	$7, %r9d
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI4_8, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI4_9, %xmm4         # xmm4 = mem[0],zero
	movl	$1, %r10d
	xorps	%xmm1, %xmm1
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movq	-448(%rbp), %rdi        # 8-byte Reload
	movq	-456(%rbp), %r11        # 8-byte Reload
	movq	%rcx, -472(%rbp)        # 8-byte Spill
	movq	%r11, %rcx
	movsd	-464(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	%xmm0, -480(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm0
	movsd	-480(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	%xmm1, -488(%rbp)       # 8-byte Spill
	movaps	%xmm5, %xmm1
	movaps	%xmm5, %xmm3
	movl	$0, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-488(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-488(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	%rax, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r10d, -492(%rbp)       # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.53, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	movabsq	$svals, %rdi
	addq	$16, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	movq	%rdi, -504(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-504(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.53, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-136(%rbp), %rdx
	movq	-72(%rbp), %rdi
	movq	%rdi, -512(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-512(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -520(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-96(%rbp), %rcx
	movq	%rax, -528(%rbp)        # 8-byte Spill
	movq	%rcx, -536(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-536(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.58, %rdi
	movq	%rax, -544(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.59, %rdi
	movsd	svals+24, %xmm0         # xmm0 = mem[0],zero
	movq	%rax, -552(%rbp)        # 8-byte Spill
	movsd	%xmm0, -560(%rbp)       # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$3, %edx
	movl	$175, %r8d
	movl	$7, %r9d
	xorps	%xmm0, %xmm0
	movsd	.LCPI4_6, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI4_0, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI4_7, %xmm4         # xmm4 = mem[0],zero
	movl	$1, %r10d
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movq	-544(%rbp), %rdi        # 8-byte Reload
	movq	-552(%rbp), %r11        # 8-byte Reload
	movq	%rcx, -568(%rbp)        # 8-byte Spill
	movq	%r11, %rcx
	movsd	-560(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm0, -576(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-576(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	$0, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-576(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-576(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	%rax, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r10d, -580(%rbp)       # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.53, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	movabsq	$svals, %rdi
	addq	$24, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	movq	%rdi, -592(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-592(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.53, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-136(%rbp), %rdx
	movq	-72(%rbp), %rdi
	movq	%rdi, -600(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-600(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -608(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-96(%rbp), %rcx
	movq	%rax, -616(%rbp)        # 8-byte Spill
	movq	%rcx, -624(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-624(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.60, %rdi
	movq	%rax, -632(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.61, %rdi
	movsd	svals+32, %xmm0         # xmm0 = mem[0],zero
	movq	%rax, -640(%rbp)        # 8-byte Spill
	movsd	%xmm0, -648(%rbp)       # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$4, %edx
	movl	$175, %r8d
	movl	$7, %r9d
	movsd	.LCPI4_3, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI4_4, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI4_0, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI4_5, %xmm4         # xmm4 = mem[0],zero
	movl	$1, %r10d
	xorps	%xmm0, %xmm0
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movq	-632(%rbp), %rdi        # 8-byte Reload
	movq	-640(%rbp), %r11        # 8-byte Reload
	movq	%rcx, -656(%rbp)        # 8-byte Spill
	movq	%r11, %rcx
	movsd	-648(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	%xmm0, -664(%rbp)       # 8-byte Spill
	movaps	%xmm5, %xmm0
	movl	$0, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-664(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-664(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	%rax, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r10d, -668(%rbp)       # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.53, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	movabsq	$svals, %rdi
	addq	$32, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	movq	%rdi, -680(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-680(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.53, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-136(%rbp), %rdx
	movq	-72(%rbp), %rdi
	movq	%rdi, -688(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-688(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -696(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-96(%rbp), %rcx
	movq	%rax, -704(%rbp)        # 8-byte Spill
	movq	%rcx, -712(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-712(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.62, %rdi
	movq	%rax, -720(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.63, %rdi
	movsd	svals+40, %xmm0         # xmm0 = mem[0],zero
	movq	%rax, -728(%rbp)        # 8-byte Spill
	movsd	%xmm0, -736(%rbp)       # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$5, %edx
	movl	$175, %r8d
	movl	$7, %r9d
	xorps	%xmm0, %xmm0
	movsd	.LCPI4_0, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI4_1, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI4_2, %xmm4         # xmm4 = mem[0],zero
	movl	$2, %r10d
	movl	$1, %ebx
	xorl	%r14d, %r14d
	movl	%r14d, %ecx
	movq	-720(%rbp), %rdi        # 8-byte Reload
	movq	-728(%rbp), %r11        # 8-byte Reload
	movq	%rcx, -744(%rbp)        # 8-byte Spill
	movq	%r11, %rcx
	movsd	-736(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm0, -752(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-752(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	$2, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-752(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-752(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	%rax, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r10d, -756(%rbp)       # 4-byte Spill
	movl	%ebx, -760(%rbp)        # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.53, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	movabsq	$svals, %rdi
	addq	$40, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	movq	%rdi, -768(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-768(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.53, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-136(%rbp), %rdx
	movq	-72(%rbp), %rdi
	movq	%rdi, -776(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-776(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -784(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-96(%rbp), %rcx
	movq	%rax, -792(%rbp)        # 8-byte Spill
	movq	%rcx, -800(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-800(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.64, %rdi
	movq	%rax, -808(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.65, %rdi
	movsd	svals+48, %xmm0         # xmm0 = mem[0],zero
	movq	%rax, -816(%rbp)        # 8-byte Spill
	movsd	%xmm0, -824(%rbp)       # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$6, %edx
	movl	$175, %r8d
	movl	$7, %r9d
	xorps	%xmm0, %xmm0
	movsd	.LCPI4_0, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI4_1, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI4_2, %xmm4         # xmm4 = mem[0],zero
	movl	$2, %r10d
	movl	$1, %ebx
	xorl	%r14d, %r14d
	movl	%r14d, %ecx
	movq	-808(%rbp), %rdi        # 8-byte Reload
	movq	-816(%rbp), %r11        # 8-byte Reload
	movq	%rcx, -832(%rbp)        # 8-byte Spill
	movq	%r11, %rcx
	movsd	-824(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm0, -840(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-840(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	$2, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-840(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-840(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	%rax, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r10d, -844(%rbp)       # 4-byte Spill
	movl	%ebx, -848(%rbp)        # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.53, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	movabsq	$svals, %rdi
	addq	$48, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	movq	%rdi, -856(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-856(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.53, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-136(%rbp), %rdx
	movq	-72(%rbp), %rdi
	movq	%rdi, -864(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-864(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -872(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-96(%rbp), %rcx
	movq	%rax, -880(%rbp)        # 8-byte Spill
	movq	%rcx, -888(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-888(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.66, %rdi
	movq	%rax, -896(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.67, %rdi
	movsd	svals+56, %xmm0         # xmm0 = mem[0],zero
	movq	%rax, -904(%rbp)        # 8-byte Spill
	movsd	%xmm0, -912(%rbp)       # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$7, %r9d
	movl	$175, %r8d
	xorps	%xmm0, %xmm0
	movsd	.LCPI4_0, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI4_1, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI4_2, %xmm4         # xmm4 = mem[0],zero
	movl	$2, %r10d
	movl	$1, %ebx
	xorl	%r14d, %r14d
	movl	%r14d, %ecx
	movq	-896(%rbp), %rdi        # 8-byte Reload
	movl	%r9d, %edx
	movq	-904(%rbp), %r11        # 8-byte Reload
	movq	%rcx, -920(%rbp)        # 8-byte Spill
	movq	%r11, %rcx
	movsd	-912(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm0, -928(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-928(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	$2, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-928(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-928(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	%rax, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%ebx, -932(%rbp)        # 4-byte Spill
	movl	%r10d, -936(%rbp)       # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.53, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	movabsq	$svals, %rdi
	addq	$56, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	movq	%rdi, -944(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-944(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.53, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-136(%rbp), %rdx
	movq	-72(%rbp), %rdi
	movq	%rdi, -952(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-952(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -960(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-96(%rbp), %rcx
	movq	%rax, -968(%rbp)        # 8-byte Spill
	movq	%rcx, -976(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-976(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.68, %rdi
	movq	%rax, -984(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.69, %rdi
	movsd	svals+64, %xmm0         # xmm0 = mem[0],zero
	movq	%rax, -992(%rbp)        # 8-byte Spill
	movsd	%xmm0, -1000(%rbp)      # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$8, %edx
	movl	$175, %r8d
	movl	$7, %r9d
	xorps	%xmm0, %xmm0
	movsd	.LCPI4_0, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI4_1, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI4_2, %xmm4         # xmm4 = mem[0],zero
	movl	$2, %r10d
	movl	$1, %ebx
	xorl	%r14d, %r14d
	movl	%r14d, %ecx
	movq	-984(%rbp), %rdi        # 8-byte Reload
	movq	-992(%rbp), %r11        # 8-byte Reload
	movq	%rcx, -1008(%rbp)       # 8-byte Spill
	movq	%r11, %rcx
	movsd	-1000(%rbp), %xmm1      # 8-byte Reload
                                        # xmm1 = mem[0],zero
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
	movq	%rax, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r10d, -1020(%rbp)      # 4-byte Spill
	movl	%ebx, -1024(%rbp)       # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.53, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	movabsq	$svals, %rdi
	addq	$64, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	movq	%rdi, -1032(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-1032(%rbp), %rcx       # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.53, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-136(%rbp), %rdx
	movq	-72(%rbp), %rdi
	movq	%rdi, -1040(%rbp)       # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-1040(%rbp), %rcx       # 8-byte Reload
	movq	%rax, -1048(%rbp)       # 8-byte Spill
	callq	g_signal_connect_data
	xorl	%edi, %edi
	movl	$12, %esi
	movq	%rax, -1056(%rbp)       # 8-byte Spill
	callq	gtk_box_new
	movq	%rax, -88(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -1064(%rbp)       # 8-byte Spill
	callq	gtk_box_get_type
	movq	-1064(%rbp), %rdi       # 8-byte Reload
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
	movl	$2, %esi
	callq	gtk_box_new
	movq	%rax, -80(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -1072(%rbp)       # 8-byte Spill
	callq	gtk_box_get_type
	movq	-1072(%rbp), %rdi       # 8-byte Reload
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
	movabsq	$.L.str.70, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_mnemonic
	movq	%rax, -104(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -1080(%rbp)       # 8-byte Spill
	callq	gtk_box_get_type
	movq	-1080(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-104(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -1084(%rbp)       # 4-byte Spill
	movl	-1084(%rbp), %r8d       # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-104(%rbp), %rax
	movq	%rax, -1096(%rbp)       # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-1096(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	svals+72, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-104(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.71, %rdi
	movq	-104(%rbp), %rax
	movq	%rax, -1104(%rbp)       # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-1104(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movabsq	$.L.str.72, %rsi
	movabsq	$gimp_toggle_button_update, %rax
	movabsq	$svals, %rdx
	addq	$72, %rdx
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-104(%rbp), %rdi
	movq	%rdx, -1112(%rbp)       # 8-byte Spill
	movq	%rax, %rdx
	movq	-1112(%rbp), %rcx       # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.72, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-104(%rbp), %rdx
	movq	-72(%rbp), %rdi
	movq	%rdi, -1120(%rbp)       # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-1120(%rbp), %rcx       # 8-byte Reload
	movq	%rax, -1128(%rbp)       # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.73, %rdi
	movq	%rax, -1136(%rbp)       # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_mnemonic
	movq	%rax, -104(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -1144(%rbp)       # 8-byte Spill
	callq	gtk_box_get_type
	movq	-1144(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-104(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-104(%rbp), %rax
	movq	%rax, -1152(%rbp)       # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-1152(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	svals+76, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-104(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.74, %rdi
	movq	-104(%rbp), %rax
	movq	%rax, -1160(%rbp)       # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-1160(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movabsq	$.L.str.72, %rsi
	movabsq	$gimp_toggle_button_update, %rax
	movabsq	$svals, %rdx
	addq	$76, %rdx
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-104(%rbp), %rdi
	movq	%rdx, -1168(%rbp)       # 8-byte Spill
	movq	%rax, %rdx
	movq	-1168(%rbp), %rcx       # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.72, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-104(%rbp), %rdx
	movq	-72(%rbp), %rdi
	movq	%rdi, -1176(%rbp)       # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-1176(%rbp), %rcx       # 8-byte Reload
	movq	%rax, -1184(%rbp)       # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.75, %rdi
	movq	%rax, -1192(%rbp)       # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_mnemonic
	movq	%rax, -104(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -1200(%rbp)       # 8-byte Spill
	callq	gtk_box_get_type
	movq	-1200(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-104(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-104(%rbp), %rax
	movq	%rax, -1208(%rbp)       # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-1208(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	svals+80, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-104(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.76, %rdi
	movq	-104(%rbp), %rax
	movq	%rax, -1216(%rbp)       # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-1216(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movabsq	$.L.str.72, %rsi
	movabsq	$gimp_toggle_button_update, %rax
	movabsq	$svals, %rdx
	addq	$80, %rdx
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-104(%rbp), %rdi
	movq	%rdx, -1224(%rbp)       # 8-byte Spill
	movq	%rax, %rdx
	movq	-1224(%rbp), %rcx       # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.72, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-104(%rbp), %rdx
	movq	-72(%rbp), %rdi
	movq	%rdi, -1232(%rbp)       # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-1232(%rbp), %rcx       # 8-byte Reload
	movq	%rax, -1240(%rbp)       # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.77, %rdi
	movl	svals+84, %r8d
	movq	%rax, -1248(%rbp)       # 8-byte Spill
	movl	%r8d, -1252(%rbp)       # 4-byte Spill
	callq	gettext
	movabsq	$.L.str.78, %rdi
	movq	%rax, -1264(%rbp)       # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.79, %rdi
	movq	%rax, -1272(%rbp)       # 8-byte Spill
	callq	gettext
	xorl	%edi, %edi
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movabsq	$gimp_radio_button_update, %rcx
	movabsq	$svals, %rdx
	addq	$84, %rdx
	leaq	-112(%rbp), %r11
	movl	$1, %r8d
	leaq	-120(%rbp), %r15
	movl	$2, %r9d
	leaq	-128(%rbp), %r12
	movq	%rdx, -1280(%rbp)       # 8-byte Spill
	movq	%rcx, %rdx
	movq	-1280(%rbp), %rcx       # 8-byte Reload
	movl	-1252(%rbp), %r10d      # 4-byte Reload
	movl	%r8d, -1284(%rbp)       # 4-byte Spill
	movl	%r10d, %r8d
	movq	-1264(%rbp), %r13       # 8-byte Reload
	movl	%r9d, -1288(%rbp)       # 4-byte Spill
	movq	%r13, %r9
	movl	$0, (%rsp)
	movq	%r11, 8(%rsp)
	movq	-1272(%rbp), %r11       # 8-byte Reload
	movq	%r11, 16(%rsp)
	movl	$1, 24(%rsp)
	movq	%r15, 32(%rsp)
	movq	%rax, 40(%rsp)
	movl	$2, 48(%rsp)
	movq	%r12, 56(%rsp)
	movq	$0, 64(%rsp)
	movb	$0, %al
	callq	gimp_int_radio_group_new
	movq	%rax, -80(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -1296(%rbp)       # 8-byte Spill
	callq	gtk_box_get_type
	movq	-1296(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r8d
	xorl	%r10d, %r10d
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r8d, %edx
	movl	%r8d, %ecx
	movl	%r10d, %r8d
	callq	gtk_box_pack_start
	movq	-80(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.80, %rdi
	movq	-112(%rbp), %rax
	movq	%rax, -1304(%rbp)       # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-1304(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movabsq	$.L.str.81, %rdi
	movq	-120(%rbp), %rax
	movq	%rax, -1312(%rbp)       # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-1312(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movabsq	$.L.str.82, %rdi
	movq	-128(%rbp), %rax
	movq	%rax, -1320(%rbp)       # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-1320(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movabsq	$.L.str.72, %rsi
	movabsq	$gimp_preview_invalidate, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movl	$2, %r9d
	movq	-112(%rbp), %rdx
	movq	-72(%rbp), %rdi
	movq	%rdi, -1328(%rbp)       # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-1328(%rbp), %rcx       # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.72, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-120(%rbp), %rdx
	movq	-72(%rbp), %rdi
	movq	%rdi, -1336(%rbp)       # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-1336(%rbp), %rcx       # 8-byte Reload
	movq	%rax, -1344(%rbp)       # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.72, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-128(%rbp), %rdx
	movq	-72(%rbp), %rdi
	movq	%rdi, -1352(%rbp)       # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-1352(%rbp), %rcx       # 8-byte Reload
	movq	%rax, -1360(%rbp)       # 8-byte Spill
	callq	g_signal_connect_data
	movq	-56(%rbp), %rdi
	movq	%rax, -1368(%rbp)       # 8-byte Spill
	callq	gtk_widget_show
	movq	-56(%rbp), %rax
	movq	%rax, -1376(%rbp)       # 8-byte Spill
	callq	gimp_dialog_get_type
	movq	-1376(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dialog_run
	cmpl	$-5, %eax
	sete	%al
	andb	$1, %al
	movzbl	%al, %r9d
	movl	%r9d, -140(%rbp)
	movq	-56(%rbp), %rdi
	callq	gtk_widget_destroy
	movl	-140(%rbp), %eax
	addq	$1416, %rsp             # imm = 0x588
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	sparkle_dialog, .Lfunc_end4-sparkle_dialog
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_0:
	.quad	4607182418800017408     # double 1
.LCPI5_1:
	.quad	4605380978949069210     # double 0.80000000000000004
.LCPI5_3:
	.quad	-4616189618054758400    # double -1
.LCPI5_4:
	.quad	4645040803167600640     # double 360
.LCPI5_5:
	.quad	4640537203540230144     # double 180
.LCPI5_6:
	.quad	4604480259023595110     # double 0.69999999999999996
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI5_2:
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.text
	.align	16, 0x90
	.type	sparkle,@function
sparkle:                                # @sparkle
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
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$408, %rsp              # imm = 0x198
.Ltmp28:
	.cfi_offset %rbx, -40
.Ltmp29:
	.cfi_offset %r14, -32
.Ltmp30:
	.cfi_offset %r15, -24
	movq	%rdi, -32(%rbp)
	movq	%rsi, -40(%rbp)
	movq	$0, -272(%rbp)
	callq	g_rand_new
	movq	%rax, -264(%rbp)
	movq	-32(%rbp), %rax
	movl	12(%rax), %ecx
	movl	%ecx, -236(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB5_2
# BB#1:                                 # %if.then
	leaq	-180(%rbp), %rsi
	leaq	-184(%rbp), %rdx
	movq	-40(%rbp), %rdi
	callq	gimp_preview_get_position
	leaq	-196(%rbp), %rsi
	leaq	-200(%rbp), %rdx
	movq	-40(%rbp), %rdi
	callq	gimp_preview_get_size
	movl	$1, %eax
	movl	%eax, %esi
	movl	-180(%rbp), %eax
	addl	-196(%rbp), %eax
	movl	%eax, -188(%rbp)
	movl	-184(%rbp), %eax
	addl	-200(%rbp), %eax
	movl	%eax, -192(%rbp)
	movl	-196(%rbp), %eax
	imull	-200(%rbp), %eax
	imull	-236(%rbp), %eax
	movslq	%eax, %rdi
	callq	g_malloc0_n
	movq	%rax, -272(%rbp)
	jmp	.LBB5_3
.LBB5_2:                                # %if.else
	leaq	-180(%rbp), %rsi
	leaq	-184(%rbp), %rdx
	leaq	-188(%rbp), %rcx
	leaq	-192(%rbp), %r8
	movq	-32(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_mask_bounds
	movl	-188(%rbp), %edi
	subl	-180(%rbp), %edi
	movl	%edi, -196(%rbp)
	movl	-192(%rbp), %edi
	subl	-184(%rbp), %edi
	movl	%edi, -200(%rbp)
	movl	%eax, -324(%rbp)        # 4-byte Spill
.LBB5_3:                                # %if.end
	cmpl	$0, svals+80
	je	.LBB5_5
# BB#4:                                 # %if.then.7
	movl	-196(%rbp), %eax
	addl	-200(%rbp), %eax
	shll	$1, %eax
	movl	%eax, num_sparkles
	movl	$255, -204(%rbp)
	jmp	.LBB5_6
.LBB5_5:                                # %if.else.10
	movq	-32(%rbp), %rdi
	movsd	svals, %xmm0            # xmm0 = mem[0],zero
	callq	compute_lum_threshold
	movl	%eax, -204(%rbp)
.LBB5_6:                                # %if.end.12
	movq	-32(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_is_gray
	movl	%eax, -224(%rbp)
	movq	-32(%rbp), %rcx
	movl	(%rcx), %edi
	callq	gimp_drawable_has_alpha
	movl	%eax, -228(%rbp)
	cmpl	$0, -228(%rbp)
	je	.LBB5_8
# BB#7:                                 # %cond.true
	movq	-32(%rbp), %rax
	movl	12(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, -328(%rbp)        # 4-byte Spill
	jmp	.LBB5_9
.LBB5_8:                                # %cond.false
	movq	-32(%rbp), %rax
	movl	12(%rax), %ecx
	movl	%ecx, -328(%rbp)        # 4-byte Spill
.LBB5_9:                                # %cond.end
	movl	-328(%rbp), %eax        # 4-byte Reload
	movl	%eax, -232(%rbp)
	callq	gimp_tile_width
	movl	%eax, -252(%rbp)
	callq	gimp_tile_height
	leaq	-88(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	%eax, -256(%rbp)
	movl	$0, -172(%rbp)
	movl	num_sparkles, %eax
	movl	%eax, -176(%rbp)
	movq	-32(%rbp), %rsi
	movl	-180(%rbp), %edx
	movl	-184(%rbp), %eax
	movl	-196(%rbp), %r8d
	movl	-200(%rbp), %r9d
	movl	%ecx, -332(%rbp)        # 4-byte Spill
	movl	%eax, %ecx
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	leaq	-136(%rbp), %rdi
	movl	$1, %eax
	movq	-32(%rbp), %rsi
	movl	-180(%rbp), %edx
	movl	-184(%rbp), %ecx
	movl	-196(%rbp), %r8d
	movl	-200(%rbp), %r9d
	cmpq	$0, -40(%rbp)
	sete	%r10b
	andb	$1, %r10b
	movzbl	%r10b, %r11d
	movl	%r11d, (%rsp)
	movl	$1, 8(%rsp)
	movl	%eax, -336(%rbp)        # 4-byte Spill
	callq	gimp_pixel_rgn_init
	movl	$2, %edi
	leaq	-88(%rbp), %rsi
	leaq	-136(%rbp), %rdx
	movb	$0, %al
	callq	gimp_pixel_rgns_register
	movq	%rax, -248(%rbp)
.LBB5_10:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_15 Depth 2
                                        #       Child Loop BB5_17 Depth 3
                                        #         Child Loop BB5_22 Depth 4
	cmpq	$0, -248(%rbp)
	je	.LBB5_37
# BB#11:                                # %for.body
                                        #   in Loop: Header=BB5_10 Depth=1
	movq	-88(%rbp), %rax
	movq	%rax, -280(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB5_13
# BB#12:                                # %if.then.28
                                        #   in Loop: Header=BB5_10 Depth=1
	movq	-272(%rbp), %rax
	movl	-108(%rbp), %ecx
	subl	-184(%rbp), %ecx
	imull	-196(%rbp), %ecx
	movl	-112(%rbp), %edx
	subl	-180(%rbp), %edx
	addl	%edx, %ecx
	imull	-236(%rbp), %ecx
	movslq	%ecx, %rsi
	addq	%rsi, %rax
	movq	%rax, -296(%rbp)
	jmp	.LBB5_14
.LBB5_13:                               # %if.else.36
                                        #   in Loop: Header=BB5_10 Depth=1
	movq	-136(%rbp), %rax
	movq	%rax, -296(%rbp)
.LBB5_14:                               # %if.end.38
                                        #   in Loop: Header=BB5_10 Depth=1
	movl	$0, -216(%rbp)
.LBB5_15:                               # %for.cond.39
                                        #   Parent Loop BB5_10 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_17 Depth 3
                                        #         Child Loop BB5_22 Depth 4
	movl	-216(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jge	.LBB5_35
# BB#16:                                # %for.body.42
                                        #   in Loop: Header=BB5_15 Depth=2
	movq	-280(%rbp), %rax
	movq	%rax, -288(%rbp)
	movq	-296(%rbp), %rax
	movq	%rax, -304(%rbp)
	movl	$0, -212(%rbp)
.LBB5_17:                               # %for.cond.43
                                        #   Parent Loop BB5_10 Depth=1
                                        #     Parent Loop BB5_15 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB5_22 Depth 4
	movl	-212(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jge	.LBB5_30
# BB#18:                                # %for.body.46
                                        #   in Loop: Header=BB5_17 Depth=3
	cmpl	$0, -228(%rbp)
	je	.LBB5_21
# BB#19:                                # %land.lhs.true
                                        #   in Loop: Header=BB5_17 Depth=3
	movslq	-232(%rbp), %rax
	movq	-288(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cmpl	$0, %edx
	jne	.LBB5_21
# BB#20:                                # %if.then.51
                                        #   in Loop: Header=BB5_17 Depth=3
	xorl	%esi, %esi
	movq	-304(%rbp), %rdi
	movslq	-232(%rbp), %rdx
	callq	memset
	jmp	.LBB5_26
.LBB5_21:                               # %if.else.53
                                        #   in Loop: Header=BB5_17 Depth=3
	movl	$0, -220(%rbp)
.LBB5_22:                               # %for.cond.54
                                        #   Parent Loop BB5_10 Depth=1
                                        #     Parent Loop BB5_15 Depth=2
                                        #       Parent Loop BB5_17 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	-220(%rbp), %eax
	cmpl	-232(%rbp), %eax
	jge	.LBB5_25
# BB#23:                                # %for.body.57
                                        #   in Loop: Header=BB5_22 Depth=4
	movslq	-220(%rbp), %rax
	movq	-288(%rbp), %rcx
	movb	(%rcx,%rax), %dl
	movslq	-220(%rbp), %rax
	movq	-304(%rbp), %rcx
	movb	%dl, (%rcx,%rax)
# BB#24:                                # %for.inc
                                        #   in Loop: Header=BB5_22 Depth=4
	movl	-220(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -220(%rbp)
	jmp	.LBB5_22
.LBB5_25:                               # %for.end
                                        #   in Loop: Header=BB5_17 Depth=3
	jmp	.LBB5_26
.LBB5_26:                               # %if.end.62
                                        #   in Loop: Header=BB5_17 Depth=3
	cmpl	$0, -228(%rbp)
	je	.LBB5_28
# BB#27:                                # %if.then.64
                                        #   in Loop: Header=BB5_17 Depth=3
	movslq	-232(%rbp), %rax
	movq	-288(%rbp), %rcx
	movb	(%rcx,%rax), %dl
	movslq	-232(%rbp), %rax
	movq	-304(%rbp), %rcx
	movb	%dl, (%rcx,%rax)
.LBB5_28:                               # %if.end.69
                                        #   in Loop: Header=BB5_17 Depth=3
	movl	-72(%rbp), %eax
	movq	-288(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -288(%rbp)
	movl	-120(%rbp), %eax
	movq	-304(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -304(%rbp)
# BB#29:                                # %for.inc.76
                                        #   in Loop: Header=BB5_17 Depth=3
	movl	-212(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -212(%rbp)
	jmp	.LBB5_17
.LBB5_30:                               # %for.end.78
                                        #   in Loop: Header=BB5_15 Depth=2
	movl	-68(%rbp), %eax
	movq	-280(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -280(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB5_32
# BB#31:                                # %if.then.82
                                        #   in Loop: Header=BB5_15 Depth=2
	movl	-196(%rbp), %eax
	imull	-236(%rbp), %eax
	movq	-296(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -296(%rbp)
	jmp	.LBB5_33
.LBB5_32:                               # %if.else.86
                                        #   in Loop: Header=BB5_15 Depth=2
	movl	-116(%rbp), %eax
	movq	-296(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -296(%rbp)
.LBB5_33:                               # %if.end.90
                                        #   in Loop: Header=BB5_15 Depth=2
	jmp	.LBB5_34
.LBB5_34:                               # %for.inc.91
                                        #   in Loop: Header=BB5_15 Depth=2
	movl	-216(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -216(%rbp)
	jmp	.LBB5_15
.LBB5_35:                               # %for.end.93
                                        #   in Loop: Header=BB5_10 Depth=1
	jmp	.LBB5_36
.LBB5_36:                               # %for.inc.94
                                        #   in Loop: Header=BB5_10 Depth=1
	movq	-248(%rbp), %rdi
	callq	gimp_pixel_rgns_process
	movq	%rax, -248(%rbp)
	jmp	.LBB5_10
.LBB5_37:                               # %for.end.96
	leaq	-88(%rbp), %rdi
	xorl	%eax, %eax
	movq	-32(%rbp), %rsi
	movl	-180(%rbp), %edx
	movl	-184(%rbp), %ecx
	movl	-196(%rbp), %r8d
	movl	-200(%rbp), %r9d
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	movl	%eax, -340(%rbp)        # 4-byte Spill
	callq	gimp_pixel_rgn_init
	leaq	-136(%rbp), %rdi
	movl	$1, %eax
	movq	-32(%rbp), %rsi
	movl	-180(%rbp), %edx
	movl	-184(%rbp), %ecx
	movl	-196(%rbp), %r8d
	movl	-200(%rbp), %r9d
	cmpq	$0, -40(%rbp)
	sete	%r10b
	andb	$1, %r10b
	movzbl	%r10b, %r11d
	movl	%r11d, (%rsp)
	movl	$1, 8(%rsp)
	movl	%eax, -344(%rbp)        # 4-byte Spill
	callq	gimp_pixel_rgn_init
	movl	$2, %edi
	leaq	-88(%rbp), %rsi
	leaq	-136(%rbp), %rdx
	movb	$0, %al
	callq	gimp_pixel_rgns_register
	movq	%rax, -248(%rbp)
.LBB5_38:                               # %for.cond.100
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_40 Depth 2
                                        #       Child Loop BB5_42 Depth 3
	cmpq	$0, -248(%rbp)
	je	.LBB5_71
# BB#39:                                # %for.body.103
                                        #   in Loop: Header=BB5_38 Depth=1
	movq	-88(%rbp), %rax
	movq	%rax, -312(%rbp)
	movl	$0, -216(%rbp)
.LBB5_40:                               # %for.cond.107
                                        #   Parent Loop BB5_38 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_42 Depth 3
	movl	-216(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jge	.LBB5_69
# BB#41:                                # %for.body.111
                                        #   in Loop: Header=BB5_40 Depth=2
	movq	-312(%rbp), %rax
	movq	%rax, -320(%rbp)
	movl	$0, -212(%rbp)
.LBB5_42:                               # %for.cond.112
                                        #   Parent Loop BB5_38 Depth=1
                                        #     Parent Loop BB5_40 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-212(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jge	.LBB5_67
# BB#43:                                # %for.body.116
                                        #   in Loop: Header=BB5_42 Depth=3
	cmpl	$0, svals+80
	je	.LBB5_51
# BB#44:                                # %if.then.118
                                        #   in Loop: Header=BB5_42 Depth=3
	movl	-212(%rbp), %eax
	addl	-64(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB5_48
# BB#45:                                # %lor.lhs.false
                                        #   in Loop: Header=BB5_42 Depth=3
	movl	-216(%rbp), %eax
	addl	-60(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB5_48
# BB#46:                                # %lor.lhs.false.127
                                        #   in Loop: Header=BB5_42 Depth=3
	movl	-212(%rbp), %eax
	addl	-64(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	4(%rcx), %edx
	subl	$1, %edx
	cmpl	%edx, %eax
	je	.LBB5_48
# BB#47:                                # %lor.lhs.false.134
                                        #   in Loop: Header=BB5_42 Depth=3
	movl	-216(%rbp), %eax
	addl	-60(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	8(%rcx), %edx
	subl	$1, %edx
	cmpl	%edx, %eax
	jne	.LBB5_49
.LBB5_48:                               # %if.then.141
                                        #   in Loop: Header=BB5_42 Depth=3
	movl	$255, -208(%rbp)
	jmp	.LBB5_50
.LBB5_49:                               # %if.else.142
                                        #   in Loop: Header=BB5_42 Depth=3
	movl	$0, -208(%rbp)
.LBB5_50:                               # %if.end.143
                                        #   in Loop: Header=BB5_42 Depth=3
	jmp	.LBB5_52
.LBB5_51:                               # %if.else.144
                                        #   in Loop: Header=BB5_42 Depth=3
	movq	-320(%rbp), %rdi
	movl	-224(%rbp), %esi
	movl	-228(%rbp), %edx
	callq	compute_luminosity
	movl	%eax, -208(%rbp)
.LBB5_52:                               # %if.end.146
                                        #   in Loop: Header=BB5_42 Depth=3
	movl	-208(%rbp), %eax
	cmpl	-204(%rbp), %eax
	jl	.LBB5_65
# BB#53:                                # %if.then.149
                                        #   in Loop: Header=BB5_42 Depth=3
	movsd	.LCPI5_1, %xmm1         # xmm1 = mem[0],zero
	movl	$256, %eax              # imm = 0x100
	movl	-208(%rbp), %ecx
	addl	$1, %ecx
	subl	-204(%rbp), %ecx
	cvtsi2sdl	%ecx, %xmm0
	subl	-204(%rbp), %eax
	cvtsi2sdl	%eax, %xmm2
	divsd	%xmm2, %xmm0
	movapd	.LCPI5_2(%rip), %xmm2   # xmm2 = [9223372036854775807,9223372036854775807]
	andpd	%xmm2, %xmm0
	movsd	%xmm0, -144(%rbp)
	movsd	svals+16, %xmm0         # xmm0 = mem[0],zero
	movsd	-144(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	%xmm0, -352(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm0
	callq	pow
	xorps	%xmm1, %xmm1
	movsd	-352(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	mulsd	%xmm0, %xmm2
	movsd	%xmm2, -152(%rbp)
	movsd	svals+8, %xmm0          # xmm0 = mem[0],zero
	mulsd	-144(%rbp), %xmm0
	movsd	%xmm0, -160(%rbp)
	movsd	svals+24, %xmm0         # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB5_60
# BB#54:                                # %if.then.161
                                        #   in Loop: Header=BB5_42 Depth=3
	movsd	.LCPI5_3, %xmm0         # xmm0 = mem[0],zero
	movsd	svals+32, %xmm1         # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB5_56
	jp	.LBB5_56
# BB#55:                                # %if.then.164
                                        #   in Loop: Header=BB5_42 Depth=3
	xorps	%xmm0, %xmm0
	movsd	.LCPI5_4, %xmm1         # xmm1 = mem[0],zero
	movq	-264(%rbp), %rdi
	callq	g_rand_double_range
	movsd	%xmm0, -168(%rbp)
	jmp	.LBB5_57
.LBB5_56:                               # %if.else.166
                                        #   in Loop: Header=BB5_42 Depth=3
	movsd	svals+32, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -168(%rbp)
.LBB5_57:                               # %if.end.167
                                        #   in Loop: Header=BB5_42 Depth=3
	movq	-264(%rbp), %rdi
	callq	g_rand_double
	movsd	svals+40, %xmm1         # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB5_59
# BB#58:                                # %if.then.171
                                        #   in Loop: Header=BB5_42 Depth=3
	leaq	-88(%rbp), %rdi
	leaq	-136(%rbp), %rsi
	movl	-180(%rbp), %edx
	movl	-184(%rbp), %ecx
	movl	-188(%rbp), %r8d
	movl	-192(%rbp), %r9d
	movl	-212(%rbp), %eax
	addl	-64(%rbp), %eax
	movl	-216(%rbp), %r10d
	addl	-60(%rbp), %r10d
	movl	-252(%rbp), %r11d
	movl	-256(%rbp), %ebx
	movsd	-160(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-152(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-168(%rbp), %xmm2       # xmm2 = mem[0],zero
	movq	-264(%rbp), %r14
	movq	-272(%rbp), %r15
	movl	%eax, (%rsp)
	movl	%r10d, 8(%rsp)
	movl	%r11d, 16(%rsp)
	movl	%ebx, 24(%rsp)
	movq	%r14, 32(%rsp)
	movq	%r15, 40(%rsp)
	callq	fspike
	leaq	-88(%rbp), %rdi
	leaq	-136(%rbp), %rsi
	movsd	.LCPI5_5, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI5_6, %xmm1         # xmm1 = mem[0],zero
	movl	-180(%rbp), %edx
	movl	-184(%rbp), %ecx
	movl	-188(%rbp), %r8d
	movl	-192(%rbp), %r9d
	movl	-212(%rbp), %eax
	addl	-64(%rbp), %eax
	movl	-216(%rbp), %r10d
	addl	-60(%rbp), %r10d
	movl	-252(%rbp), %r11d
	movl	-256(%rbp), %ebx
	movaps	%xmm1, %xmm2
	mulsd	-160(%rbp), %xmm2
	mulsd	-152(%rbp), %xmm1
	movsd	-168(%rbp), %xmm3       # xmm3 = mem[0],zero
	divsd	svals+24, %xmm0
	addsd	%xmm0, %xmm3
	movq	-264(%rbp), %r14
	movq	-272(%rbp), %r15
	movl	%eax, (%rsp)
	movl	%r10d, 8(%rsp)
	movl	%r11d, 16(%rsp)
	movl	%ebx, 24(%rsp)
	movaps	%xmm2, %xmm0
	movaps	%xmm3, %xmm2
	movq	%r14, 32(%rsp)
	movq	%r15, 40(%rsp)
	callq	fspike
.LBB5_59:                               # %if.end.184
                                        #   in Loop: Header=BB5_42 Depth=3
	jmp	.LBB5_60
.LBB5_60:                               # %if.end.185
                                        #   in Loop: Header=BB5_42 Depth=3
	cmpq	$0, -40(%rbp)
	jne	.LBB5_64
# BB#61:                                # %if.then.187
                                        #   in Loop: Header=BB5_42 Depth=3
	movl	$5, %eax
	movl	-172(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -172(%rbp)
	movl	-172(%rbp), %ecx
	movl	%eax, -356(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-356(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB5_63
# BB#62:                                # %if.then.191
                                        #   in Loop: Header=BB5_42 Depth=3
	cvtsi2sdl	-172(%rbp), %xmm0
	cvtsi2sdl	-176(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -360(%rbp)        # 4-byte Spill
.LBB5_63:                               # %if.end.196
                                        #   in Loop: Header=BB5_42 Depth=3
	jmp	.LBB5_64
.LBB5_64:                               # %if.end.197
                                        #   in Loop: Header=BB5_42 Depth=3
	jmp	.LBB5_65
.LBB5_65:                               # %if.end.198
                                        #   in Loop: Header=BB5_42 Depth=3
	movl	-72(%rbp), %eax
	movq	-320(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -320(%rbp)
# BB#66:                                # %for.inc.202
                                        #   in Loop: Header=BB5_42 Depth=3
	movl	-212(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -212(%rbp)
	jmp	.LBB5_42
.LBB5_67:                               # %for.end.204
                                        #   in Loop: Header=BB5_40 Depth=2
	movl	-68(%rbp), %eax
	movq	-312(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -312(%rbp)
# BB#68:                                # %for.inc.208
                                        #   in Loop: Header=BB5_40 Depth=2
	movl	-216(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -216(%rbp)
	jmp	.LBB5_40
.LBB5_69:                               # %for.end.210
                                        #   in Loop: Header=BB5_38 Depth=1
	jmp	.LBB5_70
.LBB5_70:                               # %for.inc.211
                                        #   in Loop: Header=BB5_38 Depth=1
	movq	-248(%rbp), %rdi
	callq	gimp_pixel_rgns_process
	movq	%rax, -248(%rbp)
	jmp	.LBB5_38
.LBB5_71:                               # %for.end.213
	cmpq	$0, -40(%rbp)
	je	.LBB5_73
# BB#72:                                # %if.then.215
	movq	-40(%rbp), %rdi
	movq	-272(%rbp), %rsi
	movl	-196(%rbp), %eax
	imull	-236(%rbp), %eax
	movl	%eax, %edx
	callq	gimp_preview_draw_buffer
	movq	-272(%rbp), %rdi
	callq	g_free
	jmp	.LBB5_74
.LBB5_73:                               # %if.else.217
	movsd	.LCPI5_0, %xmm0         # xmm0 = mem[0],zero
	callq	gimp_progress_update
	movq	-32(%rbp), %rdi
	movl	%eax, -364(%rbp)        # 4-byte Spill
	callq	gimp_drawable_flush
	movl	$1, %esi
	movq	-32(%rbp), %rdi
	movl	(%rdi), %edi
	callq	gimp_drawable_merge_shadow
	movq	-32(%rbp), %rcx
	movl	(%rcx), %edi
	movl	-180(%rbp), %esi
	movl	-184(%rbp), %edx
	movl	-196(%rbp), %ecx
	movl	-200(%rbp), %r8d
	movl	%eax, -368(%rbp)        # 4-byte Spill
	callq	gimp_drawable_update
	movl	%eax, -372(%rbp)        # 4-byte Spill
.LBB5_74:                               # %if.end.223
	movq	-264(%rbp), %rdi
	callq	g_rand_free
	addq	$408, %rsp              # imm = 0x198
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	sparkle, .Lfunc_end5-sparkle
	.cfi_endproc

	.align	16, 0x90
	.type	compute_lum_threshold,@function
compute_lum_threshold:                  # @compute_lum_threshold
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
	pushq	%rbx
	subq	$1240, %rsp             # imm = 0x4D8
.Ltmp34:
	.cfi_offset %rbx, -24
	leaq	-1144(%rbp), %rsi
	leaq	-1148(%rbp), %rdx
	leaq	-1152(%rbp), %rcx
	leaq	-1156(%rbp), %r8
	xorl	%eax, %eax
	movl	$1024, %r9d             # imm = 0x400
	movl	%r9d, %r10d
	leaq	-1120(%rbp), %r11
	movq	%rdi, -24(%rbp)
	movsd	%xmm0, -32(%rbp)
	movq	%r11, %rdi
	movq	%rsi, -1192(%rbp)       # 8-byte Spill
	movl	%eax, %esi
	movq	%rdx, -1200(%rbp)       # 8-byte Spill
	movq	%r10, %rdx
	movq	%r8, -1208(%rbp)        # 8-byte Spill
	movq	%rcx, -1216(%rbp)       # 8-byte Spill
	callq	memset
	movq	-24(%rbp), %rcx
	movl	(%rcx), %edi
	movq	-1192(%rbp), %rsi       # 8-byte Reload
	movq	-1200(%rbp), %rdx       # 8-byte Reload
	movq	-1216(%rbp), %rcx       # 8-byte Reload
	movq	-1208(%rbp), %r8        # 8-byte Reload
	callq	gimp_drawable_mask_bounds
	movq	-24(%rbp), %rcx
	movl	(%rcx), %edi
	movl	%eax, -1220(%rbp)       # 4-byte Spill
	callq	gimp_drawable_is_gray
	movl	%eax, -1132(%rbp)
	movq	-24(%rbp), %rcx
	movl	(%rcx), %edi
	callq	gimp_drawable_has_alpha
	leaq	-80(%rbp), %rdi
	xorl	%r9d, %r9d
	movl	%eax, -1136(%rbp)
	movq	-24(%rbp), %rsi
	movl	-1144(%rbp), %edx
	movl	-1148(%rbp), %ecx
	movl	-1152(%rbp), %eax
	subl	-1144(%rbp), %eax
	movl	-1156(%rbp), %ebx
	subl	-1148(%rbp), %ebx
	movl	%eax, %r8d
	movl	%r9d, -1224(%rbp)       # 4-byte Spill
	movl	%ebx, %r9d
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	movl	$1, %edi
	leaq	-80(%rbp), %rsi
	movb	$0, %al
	callq	gimp_pixel_rgns_register
	movq	%rax, -88(%rbp)
.LBB6_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_3 Depth 2
                                        #       Child Loop BB6_5 Depth 3
	cmpq	$0, -88(%rbp)
	je	.LBB6_12
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	-80(%rbp), %rax
	movq	%rax, -1168(%rbp)
	movl	$0, -1184(%rbp)
.LBB6_3:                                # %for.cond.7
                                        #   Parent Loop BB6_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_5 Depth 3
	movl	-1184(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jge	.LBB6_10
# BB#4:                                 # %for.body.9
                                        #   in Loop: Header=BB6_3 Depth=2
	movq	-1168(%rbp), %rax
	movq	%rax, -1176(%rbp)
	movl	$0, -1180(%rbp)
.LBB6_5:                                # %for.cond.10
                                        #   Parent Loop BB6_1 Depth=1
                                        #     Parent Loop BB6_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-1180(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jge	.LBB6_8
# BB#6:                                 # %for.body.12
                                        #   in Loop: Header=BB6_5 Depth=3
	movq	-1176(%rbp), %rdi
	movl	-1132(%rbp), %esi
	movl	-1136(%rbp), %edx
	callq	compute_luminosity
	movslq	%eax, %rdi
	movl	-1120(%rbp,%rdi,4), %eax
	addl	$1, %eax
	movl	%eax, -1120(%rbp,%rdi,4)
	movl	-64(%rbp), %eax
	movq	-1176(%rbp), %rdi
	movslq	%eax, %rcx
	addq	%rcx, %rdi
	movq	%rdi, -1176(%rbp)
# BB#7:                                 # %for.inc
                                        #   in Loop: Header=BB6_5 Depth=3
	movl	-1180(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1180(%rbp)
	jmp	.LBB6_5
.LBB6_8:                                # %for.end
                                        #   in Loop: Header=BB6_3 Depth=2
	movl	-60(%rbp), %eax
	movq	-1168(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -1168(%rbp)
# BB#9:                                 # %for.inc.17
                                        #   in Loop: Header=BB6_3 Depth=2
	movl	-1184(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1184(%rbp)
	jmp	.LBB6_3
.LBB6_10:                               # %for.end.19
                                        #   in Loop: Header=BB6_1 Depth=1
	jmp	.LBB6_11
.LBB6_11:                               # %for.inc.20
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	-88(%rbp), %rdi
	callq	gimp_pixel_rgns_process
	movq	%rax, -88(%rbp)
	jmp	.LBB6_1
.LBB6_12:                               # %for.end.22
	movl	-1152(%rbp), %eax
	subl	-1144(%rbp), %eax
	movl	-1156(%rbp), %ecx
	subl	-1148(%rbp), %ecx
	imull	%ecx, %eax
	movl	%eax, -1124(%rbp)
	movl	$0, -1128(%rbp)
	movl	$255, -1140(%rbp)
.LBB6_13:                               # %for.cond.25
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -1140(%rbp)
	jl	.LBB6_18
# BB#14:                                # %for.body.27
                                        #   in Loop: Header=BB6_13 Depth=1
	movslq	-1140(%rbp), %rax
	movl	-1120(%rbp,%rax,4), %ecx
	addl	-1128(%rbp), %ecx
	movl	%ecx, -1128(%rbp)
	cvtsi2sdl	-1128(%rbp), %xmm0
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	cvtsi2sdl	-1124(%rbp), %xmm2
	mulsd	%xmm2, %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB6_16
# BB#15:                                # %if.then
	movl	-1128(%rbp), %eax
	movl	%eax, num_sparkles
	movl	-1140(%rbp), %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB6_19
.LBB6_16:                               # %if.end
                                        #   in Loop: Header=BB6_13 Depth=1
	jmp	.LBB6_17
.LBB6_17:                               # %for.inc.34
                                        #   in Loop: Header=BB6_13 Depth=1
	movl	-1140(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -1140(%rbp)
	jmp	.LBB6_13
.LBB6_18:                               # %for.end.35
	movl	$0, -12(%rbp)
.LBB6_19:                               # %return
	movl	-12(%rbp), %eax
	addq	$1240, %rsp             # imm = 0x4D8
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end6:
	.size	compute_lum_threshold, .Lfunc_end6-compute_lum_threshold
	.cfi_endproc

	.align	16, 0x90
	.type	compute_luminosity,@function
compute_luminosity:                     # @compute_luminosity
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
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	cmpl	$0, svals+76
	je	.LBB7_2
# BB#1:                                 # %if.then
	movl	$255, %eax
	movq	-16(%rbp), %rcx
	movzbl	(%rcx), %edx
	movl	%eax, %esi
	subl	%edx, %esi
	movl	%esi, -28(%rbp)
	movq	-16(%rbp), %rcx
	movzbl	1(%rcx), %edx
	movl	%eax, %esi
	subl	%edx, %esi
	movl	%esi, -32(%rbp)
	movq	-16(%rbp), %rcx
	movzbl	2(%rcx), %edx
	subl	%edx, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB7_3
.LBB7_2:                                # %if.else
	movq	-16(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -28(%rbp)
	movq	-16(%rbp), %rax
	movzbl	1(%rax), %ecx
	movl	%ecx, -32(%rbp)
	movq	-16(%rbp), %rax
	movzbl	2(%rax), %ecx
	movl	%ecx, -36(%rbp)
.LBB7_3:                                # %if.end
	cmpl	$0, -20(%rbp)
	je	.LBB7_7
# BB#4:                                 # %if.then.14
	cmpl	$0, -24(%rbp)
	je	.LBB7_6
# BB#5:                                 # %if.then.16
	movl	$255, %eax
	movl	-28(%rbp), %ecx
	imull	-32(%rbp), %ecx
	movl	%eax, -48(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-48(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	movl	%eax, -4(%rbp)
	jmp	.LBB7_22
.LBB7_6:                                # %if.else.17
	movl	-28(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB7_22
.LBB7_7:                                # %if.else.18
	movl	-28(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jge	.LBB7_9
# BB#8:                                 # %cond.true
	movl	-28(%rbp), %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
	jmp	.LBB7_10
.LBB7_9:                                # %cond.false
	movl	-32(%rbp), %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
.LBB7_10:                               # %cond.end
	movl	-52(%rbp), %eax         # 4-byte Reload
	movl	%eax, -40(%rbp)
	movl	-40(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB7_12
# BB#11:                                # %cond.true.22
	movl	-40(%rbp), %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
	jmp	.LBB7_13
.LBB7_12:                               # %cond.false.23
	movl	-36(%rbp), %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
.LBB7_13:                               # %cond.end.24
	movl	-56(%rbp), %eax         # 4-byte Reload
	movl	%eax, -40(%rbp)
	movl	-28(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jle	.LBB7_15
# BB#14:                                # %cond.true.28
	movl	-28(%rbp), %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	jmp	.LBB7_16
.LBB7_15:                               # %cond.false.29
	movl	-32(%rbp), %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
.LBB7_16:                               # %cond.end.30
	movl	-60(%rbp), %eax         # 4-byte Reload
	movl	%eax, -44(%rbp)
	movl	-44(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jle	.LBB7_18
# BB#17:                                # %cond.true.34
	movl	-44(%rbp), %eax
	movl	%eax, -64(%rbp)         # 4-byte Spill
	jmp	.LBB7_19
.LBB7_18:                               # %cond.false.35
	movl	-36(%rbp), %eax
	movl	%eax, -64(%rbp)         # 4-byte Spill
.LBB7_19:                               # %cond.end.36
	movl	-64(%rbp), %eax         # 4-byte Reload
	movl	%eax, -44(%rbp)
	cmpl	$0, -24(%rbp)
	je	.LBB7_21
# BB#20:                                # %if.then.39
	movl	$510, %eax              # imm = 0x1FE
	movl	-40(%rbp), %ecx
	addl	-44(%rbp), %ecx
	movq	-16(%rbp), %rdx
	movzbl	3(%rdx), %esi
	imull	%esi, %ecx
	movl	%eax, -68(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-68(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	movl	%eax, -4(%rbp)
	jmp	.LBB7_22
.LBB7_21:                               # %if.else.44
	movl	$2, %eax
	movl	-40(%rbp), %ecx
	addl	-44(%rbp), %ecx
	movl	%eax, -72(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-72(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	movl	%eax, -4(%rbp)
.LBB7_22:                               # %return
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end7:
	.size	compute_luminosity, .Lfunc_end7-compute_luminosity
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI8_0:
	.quad	4643176031446892544     # double 255
.LCPI8_1:
	.quad	-4620693217682128896    # double -0.5
.LCPI8_2:
	.quad	4602678819172646912     # double 0.5
.LCPI8_3:
	.quad	-4616189618054758400    # double -1
.LCPI8_4:
	.quad	4607182418800017408     # double 1
.LCPI8_5:
	.quad	4596373779694328218     # double 0.20000000000000001
.LCPI8_6:
	.quad	4640537203540230144     # double 180
.LCPI8_7:
	.quad	4614256656552045848     # double 3.1415926535897931
.LCPI8_8:
	.quad	4576918229304087675     # double 0.01
.LCPI8_9:
	.quad	4611686018427387904     # double 2
.LCPI8_10:
	.quad	4645040803167600640     # double 360
	.text
	.align	16, 0x90
	.type	fspike,@function
fspike:                                 # @fspike
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$488, %rsp              # imm = 0x1E8
.Ltmp41:
	.cfi_offset %rbx, -56
.Ltmp42:
	.cfi_offset %r12, -48
.Ltmp43:
	.cfi_offset %r13, -40
.Ltmp44:
	.cfi_offset %r14, -32
.Ltmp45:
	.cfi_offset %r15, -24
	movq	56(%rbp), %rax
	movq	48(%rbp), %r10
	movl	40(%rbp), %r11d
	movl	32(%rbp), %ebx
	movl	24(%rbp), %r14d
	movl	16(%rbp), %r15d
	movq	%rdi, -48(%rbp)
	movq	%rsi, -56(%rbp)
	movl	%edx, -60(%rbp)
	movl	%ecx, -64(%rbp)
	movl	%r8d, -68(%rbp)
	movl	%r9d, -72(%rbp)
	movl	%r15d, -76(%rbp)
	movl	%r14d, -80(%rbp)
	movl	%ebx, -84(%rbp)
	movl	%r11d, -88(%rbp)
	movsd	%xmm0, -96(%rbp)
	movsd	%xmm1, -104(%rbp)
	movsd	%xmm2, -112(%rbp)
	movq	%r10, -120(%rbp)
	movq	%rax, -128(%rbp)
	movabsq	$4611686018427387904, %rax # imm = 0x4000000000000000
	movq	%rax, -136(%rbp)
	movq	$0, -224(%rbp)
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -192(%rbp)
	movq	-56(%rbp), %rax
	movl	16(%rax), %ecx
	movl	%ecx, -240(%rbp)
	movl	$-1, -228(%rbp)
	movl	$-1, -232(%rbp)
	movl	svals+84(%rip), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -296(%rbp)        # 4-byte Spill
	je	.LBB8_1
	jmp	.LBB8_31
.LBB8_31:                               # %entry
	movl	-296(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -300(%rbp)        # 4-byte Spill
	je	.LBB8_2
	jmp	.LBB8_32
.LBB8_32:                               # %entry
	movl	-296(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -304(%rbp)        # 4-byte Spill
	je	.LBB8_3
	jmp	.LBB8_4
.LBB8_1:                                # %sw.bb
	jmp	.LBB8_4
.LBB8_2:                                # %sw.bb.1
	leaq	-280(%rbp), %rdi
	callq	gimp_context_get_foreground
	leaq	-280(%rbp), %rdi
	leaq	-288(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rcx, %rsi
	addq	$2, %rsi
	movq	%rsi, -312(%rbp)        # 8-byte Spill
	movq	%rcx, %rsi
	movq	-312(%rbp), %rcx        # 8-byte Reload
	movl	%eax, -316(%rbp)        # 4-byte Spill
	callq	gimp_rgb_get_uchar
	jmp	.LBB8_4
.LBB8_3:                                # %sw.bb.4
	leaq	-280(%rbp), %rdi
	callq	gimp_context_get_background
	leaq	-280(%rbp), %rdi
	leaq	-288(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rcx, %rsi
	addq	$2, %rsi
	movq	%rsi, -328(%rbp)        # 8-byte Spill
	movq	%rcx, %rsi
	movq	-328(%rbp), %rcx        # 8-byte Reload
	movl	%eax, -332(%rbp)        # 4-byte Spill
	callq	gimp_rgb_get_uchar
.LBB8_4:                                # %sw.epilog
	movl	$0, -236(%rbp)
.LBB8_5:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_22 Depth 2
	cvtsi2sdl	-236(%rbp), %xmm0
	movsd	svals+24, %xmm1         # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB8_28
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB8_5 Depth=1
	leaq	-284(%rbp), %rsi
	movq	-56(%rbp), %rdi
	movl	-76(%rbp), %edx
	movl	-80(%rbp), %ecx
	callq	gimp_pixel_rgn_get_pixel
	cmpl	$0, svals+84
	jne	.LBB8_8
# BB#7:                                 # %if.then
                                        #   in Loop: Header=BB8_5 Depth=1
	movb	-284(%rbp), %al
	movb	%al, -292(%rbp)
	movb	-283(%rbp), %al
	movb	%al, -291(%rbp)
	movb	-282(%rbp), %al
	movb	%al, -290(%rbp)
	jmp	.LBB8_9
.LBB8_8:                                # %if.else
                                        #   in Loop: Header=BB8_5 Depth=1
	movb	-288(%rbp), %al
	movb	%al, -292(%rbp)
	movb	-287(%rbp), %al
	movb	%al, -291(%rbp)
	movb	-286(%rbp), %al
	movb	%al, -290(%rbp)
.LBB8_9:                                # %if.end
                                        #   in Loop: Header=BB8_5 Depth=1
	movb	-281(%rbp), %al
	movb	%al, -289(%rbp)
	cmpl	$0, svals+76
	je	.LBB8_11
# BB#10:                                # %if.then.26
                                        #   in Loop: Header=BB8_5 Depth=1
	movl	$255, %eax
	movzbl	-292(%rbp), %ecx
	movl	%eax, %edx
	subl	%ecx, %edx
	movb	%dl, %sil
	movb	%sil, -292(%rbp)
	movzbl	-291(%rbp), %ecx
	movl	%eax, %edx
	subl	%ecx, %edx
	movb	%dl, %sil
	movb	%sil, -291(%rbp)
	movzbl	-290(%rbp), %ecx
	subl	%ecx, %eax
	movb	%al, %sil
	movb	%sil, -290(%rbp)
.LBB8_11:                               # %if.end.41
                                        #   in Loop: Header=BB8_5 Depth=1
	xorps	%xmm0, %xmm0
	movsd	svals+56, %xmm1         # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	ja	.LBB8_13
# BB#12:                                # %lor.lhs.false
                                        #   in Loop: Header=BB8_5 Depth=1
	xorps	%xmm0, %xmm0
	movsd	svals+64, %xmm1         # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB8_21
.LBB8_13:                               # %if.then.46
                                        #   in Loop: Header=BB8_5 Depth=1
	leaq	-204(%rbp), %rdi
	leaq	-208(%rbp), %rsi
	leaq	-212(%rbp), %rdx
	movl	$255, %eax
	movzbl	-292(%rbp), %ecx
	movl	%eax, %r8d
	subl	%ecx, %r8d
	movl	%r8d, -204(%rbp)
	movzbl	-291(%rbp), %ecx
	movl	%eax, %r8d
	subl	%ecx, %r8d
	movl	%r8d, -208(%rbp)
	movzbl	-290(%rbp), %ecx
	subl	%ecx, %eax
	movl	%eax, -212(%rbp)
	callq	gimp_rgb_to_hsv_int
	movsd	.LCPI8_1, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI8_2, %xmm1         # xmm1 = mem[0],zero
	movsd	svals+56, %xmm2         # xmm2 = mem[0],zero
	movq	-120(%rbp), %rdi
	movsd	%xmm2, -344(%rbp)       # 8-byte Spill
	callq	g_rand_double_range
	movsd	.LCPI8_0, %xmm1         # xmm1 = mem[0],zero
	movsd	-344(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	mulsd	%xmm0, %xmm2
	mulsd	%xmm1, %xmm2
	cvtsi2sdl	-204(%rbp), %xmm0
	addsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -204(%rbp)
	cmpl	$255, -204(%rbp)
	jl	.LBB8_15
# BB#14:                                # %if.then.62
                                        #   in Loop: Header=BB8_5 Depth=1
	movl	-204(%rbp), %eax
	subl	$255, %eax
	movl	%eax, -204(%rbp)
	jmp	.LBB8_18
.LBB8_15:                               # %if.else.64
                                        #   in Loop: Header=BB8_5 Depth=1
	cmpl	$0, -204(%rbp)
	jge	.LBB8_17
# BB#16:                                # %if.then.67
                                        #   in Loop: Header=BB8_5 Depth=1
	movl	-204(%rbp), %eax
	addl	$255, %eax
	movl	%eax, -204(%rbp)
.LBB8_17:                               # %if.end.69
                                        #   in Loop: Header=BB8_5 Depth=1
	jmp	.LBB8_18
.LBB8_18:                               # %if.end.70
                                        #   in Loop: Header=BB8_5 Depth=1
	movsd	.LCPI8_3, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI8_4, %xmm1         # xmm1 = mem[0],zero
	movsd	svals+64, %xmm2         # xmm2 = mem[0],zero
	movq	-120(%rbp), %rdi
	movsd	%xmm2, -352(%rbp)       # 8-byte Spill
	callq	g_rand_double_range
	movsd	.LCPI8_0, %xmm1         # xmm1 = mem[0],zero
	movsd	-352(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	mulsd	%xmm0, %xmm2
	mulsd	%xmm1, %xmm2
	cvtsi2sdl	-212(%rbp), %xmm0
	addsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -212(%rbp)
	cmpl	$255, -212(%rbp)
	jle	.LBB8_20
# BB#19:                                # %if.then.79
                                        #   in Loop: Header=BB8_5 Depth=1
	movl	$255, -212(%rbp)
.LBB8_20:                               # %if.end.80
                                        #   in Loop: Header=BB8_5 Depth=1
	leaq	-204(%rbp), %rdi
	leaq	-208(%rbp), %rsi
	leaq	-212(%rbp), %rdx
	callq	gimp_hsv_to_rgb_int
	movl	$255, %eax
	movl	%eax, %ecx
	subl	-204(%rbp), %ecx
	movb	%cl, %r8b
	movb	%r8b, -292(%rbp)
	movl	%eax, %ecx
	subl	-208(%rbp), %ecx
	movb	%cl, %r8b
	movb	%r8b, -291(%rbp)
	subl	-212(%rbp), %eax
	movb	%al, %r8b
	movb	%r8b, -290(%rbp)
.LBB8_21:                               # %if.end.90
                                        #   in Loop: Header=BB8_5 Depth=1
	movsd	.LCPI8_5, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI8_6, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI8_7, %xmm2         # xmm2 = mem[0],zero
	movaps	%xmm2, %xmm3
	mulsd	-192(%rbp), %xmm3
	divsd	%xmm1, %xmm3
	movsd	%xmm0, -360(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm0
	movsd	%xmm2, -368(%rbp)       # 8-byte Spill
	movsd	%xmm1, -376(%rbp)       # 8-byte Spill
	callq	cos
	movsd	-360(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -160(%rbp)
	movsd	-368(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	-192(%rbp), %xmm0
	movsd	-376(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	callq	sin
	movsd	-360(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -168(%rbp)
	cvtsi2sdl	-76(%rbp), %xmm0
	movsd	%xmm0, -144(%rbp)
	cvtsi2sdl	-80(%rbp), %xmm0
	movsd	%xmm0, -152(%rbp)
	movsd	-360(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -176(%rbp)
.LBB8_22:                               # %do.body
                                        #   Parent Loop BB8_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsd	.LCPI8_9, %xmm1         # xmm1 = mem[0],zero
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-176(%rbp), %xmm2       # xmm2 = mem[0],zero
	divsd	-104(%rbp), %xmm2
	movsd	%xmm0, -384(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm0
	callq	pow
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	callq	exp
	movsd	.LCPI8_8, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI8_5, %xmm2         # xmm2 = mem[0],zero
	movsd	-384(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	mulsd	%xmm0, %xmm3
	movsd	%xmm3, -200(%rbp)
	movl	$0, -244(%rbp)
	mulsd	-200(%rbp), %xmm2
	movsd	%xmm2, -184(%rbp)
	movsd	-184(%rbp), %xmm0       # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB8_24
# BB#23:                                # %if.then.108
                                        #   in Loop: Header=BB8_22 Depth=2
	movl	$1, -244(%rbp)
.LBB8_24:                               # %if.end.109
                                        #   in Loop: Header=BB8_22 Depth=2
	leaq	-228(%rbp), %rax
	leaq	-232(%rbp), %rcx
	leaq	-292(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	8(%rsi), %rdi
	movq	-224(%rbp), %rsi
	movl	-60(%rbp), %r8d
	movl	-64(%rbp), %r9d
	movl	-68(%rbp), %r10d
	movl	-72(%rbp), %r11d
	movsd	-144(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-152(%rbp), %xmm1       # xmm1 = mem[0],zero
	movl	-84(%rbp), %ebx
	movl	-88(%rbp), %r14d
	movl	-240(%rbp), %r15d
	movsd	-184(%rbp), %xmm2       # xmm2 = mem[0],zero
	movq	-128(%rbp), %r12
	movq	%rdx, -392(%rbp)        # 8-byte Spill
	movl	%r8d, %edx
	movq	%rcx, -400(%rbp)        # 8-byte Spill
	movl	%r9d, %ecx
	movl	%r10d, %r8d
	movl	%r11d, %r9d
	movl	%ebx, (%rsp)
	movl	%r14d, 8(%rsp)
	movq	%rax, 16(%rsp)
	movq	-400(%rbp), %rax        # 8-byte Reload
	movq	%rax, 24(%rsp)
	movl	%r15d, 32(%rsp)
	movq	-392(%rbp), %r13        # 8-byte Reload
	movq	%r13, 40(%rsp)
	movq	%r12, 48(%rsp)
	callq	rpnt
	leaq	-228(%rbp), %rsi
	leaq	-232(%rbp), %rdi
	leaq	-292(%rbp), %r12
	movsd	.LCPI8_4, %xmm0         # xmm0 = mem[0],zero
	movq	%rax, -224(%rbp)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	-224(%rbp), %r13
	movl	-60(%rbp), %edx
	movl	-64(%rbp), %ecx
	movl	-68(%rbp), %r8d
	movl	-72(%rbp), %r9d
	addsd	-144(%rbp), %xmm0
	movsd	-152(%rbp), %xmm1       # xmm1 = mem[0],zero
	movl	-84(%rbp), %r10d
	movl	-88(%rbp), %r11d
	movl	-240(%rbp), %ebx
	movsd	-184(%rbp), %xmm2       # xmm2 = mem[0],zero
	movq	-128(%rbp), %r14
	movq	%rdi, -408(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -416(%rbp)        # 8-byte Spill
	movq	%r13, %rsi
	movl	%r10d, (%rsp)
	movl	%r11d, 8(%rsp)
	movq	-416(%rbp), %rax        # 8-byte Reload
	movq	%rax, 16(%rsp)
	movq	-408(%rbp), %r13        # 8-byte Reload
	movq	%r13, 24(%rsp)
	movl	%ebx, 32(%rsp)
	movq	%r12, 40(%rsp)
	movq	%r14, 48(%rsp)
	callq	rpnt
	leaq	-228(%rbp), %rsi
	leaq	-232(%rbp), %rdi
	leaq	-292(%rbp), %r14
	movsd	.LCPI8_4, %xmm0         # xmm0 = mem[0],zero
	movq	%rax, -224(%rbp)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	-224(%rbp), %r12
	movl	-60(%rbp), %edx
	movl	-64(%rbp), %ecx
	movl	-68(%rbp), %r8d
	movl	-72(%rbp), %r9d
	movaps	%xmm0, %xmm1
	addsd	-144(%rbp), %xmm1
	addsd	-152(%rbp), %xmm0
	movl	-84(%rbp), %r10d
	movl	-88(%rbp), %r11d
	movl	-240(%rbp), %ebx
	movsd	-184(%rbp), %xmm2       # xmm2 = mem[0],zero
	movq	-128(%rbp), %r13
	movq	%rdi, -424(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -432(%rbp)        # 8-byte Spill
	movq	%r12, %rsi
	movsd	%xmm0, -440(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-440(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	%r10d, (%rsp)
	movl	%r11d, 8(%rsp)
	movq	-432(%rbp), %rax        # 8-byte Reload
	movq	%rax, 16(%rsp)
	movq	-424(%rbp), %r12        # 8-byte Reload
	movq	%r12, 24(%rsp)
	movl	%ebx, 32(%rsp)
	movq	%r14, 40(%rsp)
	movq	%r13, 48(%rsp)
	callq	rpnt
	leaq	-228(%rbp), %rsi
	leaq	-232(%rbp), %rdi
	leaq	-292(%rbp), %r14
	movsd	.LCPI8_4, %xmm0         # xmm0 = mem[0],zero
	movq	%rax, -224(%rbp)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	-224(%rbp), %r12
	movl	-60(%rbp), %edx
	movl	-64(%rbp), %ecx
	movl	-68(%rbp), %r8d
	movl	-72(%rbp), %r9d
	movsd	-144(%rbp), %xmm1       # xmm1 = mem[0],zero
	addsd	-152(%rbp), %xmm0
	movl	-84(%rbp), %r10d
	movl	-88(%rbp), %r11d
	movl	-240(%rbp), %ebx
	movsd	-184(%rbp), %xmm2       # xmm2 = mem[0],zero
	movq	-128(%rbp), %r13
	movq	%rdi, -448(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -456(%rbp)        # 8-byte Spill
	movq	%r12, %rsi
	movsd	%xmm0, -464(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-464(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	%r10d, (%rsp)
	movl	%r11d, 8(%rsp)
	movq	-456(%rbp), %rax        # 8-byte Reload
	movq	%rax, 16(%rsp)
	movq	-448(%rbp), %r12        # 8-byte Reload
	movq	%r12, 24(%rsp)
	movl	%ebx, 32(%rsp)
	movq	%r14, 40(%rsp)
	movq	%r13, 48(%rsp)
	callq	rpnt
	movsd	.LCPI8_5, %xmm0         # xmm0 = mem[0],zero
	movq	%rax, -224(%rbp)
	movsd	-160(%rbp), %xmm1       # xmm1 = mem[0],zero
	addsd	-144(%rbp), %xmm1
	movsd	%xmm1, -144(%rbp)
	movsd	-168(%rbp), %xmm1       # xmm1 = mem[0],zero
	addsd	-152(%rbp), %xmm1
	movsd	%xmm1, -152(%rbp)
	addsd	-176(%rbp), %xmm0
	movsd	%xmm0, -176(%rbp)
# BB#25:                                # %do.cond
                                        #   in Loop: Header=BB8_22 Depth=2
	cmpl	$0, -244(%rbp)
	jne	.LBB8_22
# BB#26:                                # %do.end
                                        #   in Loop: Header=BB8_5 Depth=1
	movsd	.LCPI8_10, %xmm0        # xmm0 = mem[0],zero
	divsd	svals+24, %xmm0
	addsd	-192(%rbp), %xmm0
	movsd	%xmm0, -192(%rbp)
# BB#27:                                # %for.inc
                                        #   in Loop: Header=BB8_5 Depth=1
	movl	-236(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -236(%rbp)
	jmp	.LBB8_5
.LBB8_28:                               # %for.end
	cmpq	$0, -224(%rbp)
	je	.LBB8_30
# BB#29:                                # %if.then.132
	movl	$1, %esi
	movq	-224(%rbp), %rdi
	callq	gimp_tile_unref
.LBB8_30:                               # %if.end.133
	addq	$488, %rsp              # imm = 0x1E8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	fspike, .Lfunc_end8-fspike
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI9_0:
	.quad	4611686018427387904     # double 2
.LCPI9_1:
	.quad	4607182418800017408     # double 1
.LCPI9_2:
	.quad	4643176031446892544     # double 255
	.text
	.align	16, 0x90
	.type	rpnt,@function
rpnt:                                   # @rpnt
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
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$192, %rsp
.Ltmp49:
	.cfi_offset %rbx, -48
.Ltmp50:
	.cfi_offset %r12, -40
.Ltmp51:
	.cfi_offset %r14, -32
.Ltmp52:
	.cfi_offset %r15, -24
	movq	64(%rbp), %rax
	movq	56(%rbp), %r10
	movl	48(%rbp), %r11d
	movq	40(%rbp), %rbx
	movq	32(%rbp), %r14
	movl	24(%rbp), %r15d
	movl	16(%rbp), %r12d
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movl	%ecx, -56(%rbp)
	movl	%r8d, -60(%rbp)
	movl	%r9d, -64(%rbp)
	movsd	%xmm0, -72(%rbp)
	movsd	%xmm1, -80(%rbp)
	movl	%r12d, -84(%rbp)
	movl	%r15d, -88(%rbp)
	movq	%r14, -96(%rbp)
	movq	%rbx, -104(%rbp)
	movl	%r11d, -108(%rbp)
	movsd	%xmm2, -120(%rbp)
	movq	%r10, -128(%rbp)
	movq	%rax, -136(%rbp)
	cvttsd2si	-72(%rbp), %ecx
	movl	%ecx, -140(%rbp)
	cvttsd2si	-80(%rbp), %ecx
	movl	%ecx, -144(%rbp)
	movl	-140(%rbp), %ecx
	cmpl	-52(%rbp), %ecx
	jl	.LBB9_32
# BB#1:                                 # %land.lhs.true
	movl	-144(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jl	.LBB9_32
# BB#2:                                 # %land.lhs.true.5
	movl	-140(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jge	.LBB9_32
# BB#3:                                 # %land.lhs.true.8
	movl	-144(%rbp), %eax
	cmpl	-64(%rbp), %eax
	jge	.LBB9_32
# BB#4:                                 # %if.then
	cmpq	$0, -136(%rbp)
	je	.LBB9_6
# BB#5:                                 # %if.then.11
	movq	-136(%rbp), %rax
	movl	-144(%rbp), %ecx
	subl	-56(%rbp), %ecx
	movl	-60(%rbp), %edx
	subl	-52(%rbp), %edx
	imull	%edx, %ecx
	movl	-140(%rbp), %edx
	subl	-52(%rbp), %edx
	addl	%edx, %ecx
	imull	-108(%rbp), %ecx
	movslq	%ecx, %rsi
	addq	%rsi, %rax
	movq	%rax, -192(%rbp)
	jmp	.LBB9_12
.LBB9_6:                                # %if.else
	movl	-140(%rbp), %eax
	cltd
	idivl	-84(%rbp)
	movl	%eax, -204(%rbp)
	movl	-140(%rbp), %eax
	cltd
	idivl	-84(%rbp)
	movl	%edx, -212(%rbp)
	movl	-144(%rbp), %edx
	movl	%edx, %eax
	cltd
	idivl	-88(%rbp)
	movl	%eax, -208(%rbp)
	movl	-144(%rbp), %eax
	cltd
	idivl	-88(%rbp)
	movl	%edx, -216(%rbp)
	movl	-204(%rbp), %edx
	movq	-104(%rbp), %rcx
	cmpl	(%rcx), %edx
	jne	.LBB9_8
# BB#7:                                 # %lor.lhs.false
	movl	-208(%rbp), %eax
	movq	-96(%rbp), %rcx
	cmpl	(%rcx), %eax
	je	.LBB9_11
.LBB9_8:                                # %if.then.21
	movl	-204(%rbp), %eax
	movq	-104(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	-208(%rbp), %eax
	movq	-96(%rbp), %rcx
	movl	%eax, (%rcx)
	cmpq	$0, -48(%rbp)
	je	.LBB9_10
# BB#9:                                 # %if.then.23
	movl	$1, %esi
	movq	-48(%rbp), %rdi
	callq	gimp_tile_unref
.LBB9_10:                               # %if.end
	movl	$1, %esi
	movq	-40(%rbp), %rdi
	movq	-96(%rbp), %rax
	movl	(%rax), %edx
	movq	-104(%rbp), %rax
	movl	(%rax), %ecx
	callq	gimp_drawable_get_tile
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	gimp_tile_ref
.LBB9_11:                               # %if.end.24
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movq	-48(%rbp), %rcx
	movl	8(%rcx), %edx
	movq	-48(%rbp), %rcx
	movl	(%rcx), %esi
	imull	-216(%rbp), %esi
	addl	-212(%rbp), %esi
	imull	%esi, %edx
	movl	%edx, %edx
	movl	%edx, %ecx
	addq	%rcx, %rax
	movq	%rax, -192(%rbp)
.LBB9_12:                               # %if.end.30
	movsd	.LCPI9_0, %xmm0         # xmm0 = mem[0],zero
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	cvtsi2sdl	-140(%rbp), %xmm2
	subsd	%xmm2, %xmm1
	movsd	%xmm1, -160(%rbp)
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	cvtsi2sdl	-144(%rbp), %xmm2
	subsd	%xmm2, %xmm1
	movsd	%xmm1, -168(%rbp)
	movsd	-160(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-160(%rbp), %xmm1
	movsd	-168(%rbp), %xmm2       # xmm2 = mem[0],zero
	mulsd	-168(%rbp), %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm1, -176(%rbp)
	movsd	-120(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-176(%rbp), %xmm2       # xmm2 = mem[0],zero
	movd	%xmm2, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm2
	divsd	%xmm0, %xmm2
	movaps	%xmm2, %xmm0
	movsd	%xmm1, -224(%rbp)       # 8-byte Spill
	callq	exp
	movsd	-224(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -184(%rbp)
	movl	$0, -148(%rbp)
.LBB9_13:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-148(%rbp), %eax
	cmpl	-108(%rbp), %eax
	jge	.LBB9_31
# BB#14:                                # %for.body
                                        #   in Loop: Header=BB9_13 Depth=1
	cmpl	$0, svals+76
	je	.LBB9_16
# BB#15:                                # %if.then.45
                                        #   in Loop: Header=BB9_13 Depth=1
	movl	$255, %eax
	movslq	-148(%rbp), %rcx
	movq	-192(%rbp), %rdx
	movzbl	(%rdx,%rcx), %esi
	subl	%esi, %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, -200(%rbp)
	jmp	.LBB9_17
.LBB9_16:                               # %if.else.49
                                        #   in Loop: Header=BB9_13 Depth=1
	movslq	-148(%rbp), %rax
	movq	-192(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cvtsi2sdl	%edx, %xmm0
	movsd	%xmm0, -200(%rbp)
.LBB9_17:                               # %if.end.53
                                        #   in Loop: Header=BB9_13 Depth=1
	cmpl	$0, svals+72
	je	.LBB9_24
# BB#18:                                # %if.then.55
                                        #   in Loop: Header=BB9_13 Depth=1
	movsd	-200(%rbp), %xmm0       # xmm0 = mem[0],zero
	movslq	-148(%rbp), %rax
	movq	-128(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cvtsi2sdl	%edx, %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB9_20
# BB#19:                                # %if.then.62
                                        #   in Loop: Header=BB9_13 Depth=1
	movsd	.LCPI9_1, %xmm0         # xmm0 = mem[0],zero
	movsd	-184(%rbp), %xmm1       # xmm1 = mem[0],zero
	movaps	%xmm0, %xmm2
	subsd	svals+48, %xmm2
	mulsd	%xmm2, %xmm1
	subsd	%xmm1, %xmm0
	mulsd	-200(%rbp), %xmm0
	movsd	%xmm0, -200(%rbp)
	jmp	.LBB9_23
.LBB9_20:                               # %if.else.67
                                        #   in Loop: Header=BB9_13 Depth=1
	xorps	%xmm0, %xmm0
	movsd	.LCPI9_1, %xmm1         # xmm1 = mem[0],zero
	movsd	-184(%rbp), %xmm2       # xmm2 = mem[0],zero
	movslq	-148(%rbp), %rax
	movq	-128(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cvtsi2sdl	%edx, %xmm3
	mulsd	%xmm3, %xmm2
	subsd	svals+48, %xmm1
	mulsd	%xmm1, %xmm2
	movsd	-200(%rbp), %xmm1       # xmm1 = mem[0],zero
	subsd	%xmm2, %xmm1
	movsd	%xmm1, -200(%rbp)
	ucomisd	-200(%rbp), %xmm0
	jbe	.LBB9_22
# BB#21:                                # %if.then.78
                                        #   in Loop: Header=BB9_13 Depth=1
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -200(%rbp)
.LBB9_22:                               # %if.end.79
                                        #   in Loop: Header=BB9_13 Depth=1
	jmp	.LBB9_23
.LBB9_23:                               # %if.end.80
                                        #   in Loop: Header=BB9_13 Depth=1
	jmp	.LBB9_24
.LBB9_24:                               # %if.end.81
                                        #   in Loop: Header=BB9_13 Depth=1
	movsd	.LCPI9_2, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI9_1, %xmm1         # xmm1 = mem[0],zero
	movsd	-184(%rbp), %xmm2       # xmm2 = mem[0],zero
	mulsd	svals+48, %xmm2
	subsd	%xmm2, %xmm1
	mulsd	-200(%rbp), %xmm1
	movsd	%xmm1, -200(%rbp)
	movsd	-184(%rbp), %xmm1       # xmm1 = mem[0],zero
	movslq	-148(%rbp), %rax
	movq	-128(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cvtsi2sdl	%edx, %xmm2
	mulsd	%xmm2, %xmm1
	addsd	-200(%rbp), %xmm1
	movsd	%xmm1, -200(%rbp)
	movsd	-200(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB9_26
# BB#25:                                # %if.then.93
                                        #   in Loop: Header=BB9_13 Depth=1
	movsd	.LCPI9_2, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -200(%rbp)
.LBB9_26:                               # %if.end.94
                                        #   in Loop: Header=BB9_13 Depth=1
	cmpl	$0, svals+76
	je	.LBB9_28
# BB#27:                                # %if.then.96
                                        #   in Loop: Header=BB9_13 Depth=1
	movsd	-200(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	.LCPI9_2(%rip), %xmm1   # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movb	%al, %cl
	movslq	-148(%rbp), %rdx
	movq	-192(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
	jmp	.LBB9_29
.LBB9_28:                               # %if.else.101
                                        #   in Loop: Header=BB9_13 Depth=1
	cvttsd2si	-200(%rbp), %eax
	movb	%al, %cl
	movslq	-148(%rbp), %rdx
	movq	-192(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
.LBB9_29:                               # %if.end.105
                                        #   in Loop: Header=BB9_13 Depth=1
	jmp	.LBB9_30
.LBB9_30:                               # %for.inc
                                        #   in Loop: Header=BB9_13 Depth=1
	movl	-148(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -148(%rbp)
	jmp	.LBB9_13
.LBB9_31:                               # %for.end
	jmp	.LBB9_32
.LBB9_32:                               # %if.end.106
	movq	-48(%rbp), %rax
	addq	$192, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end9:
	.size	rpnt, .Lfunc_end9-rpnt
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
	.long	0                       # 0x0
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
	.long	0                       # 0x0
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
	.asciz	"lum-threshold"
	.size	.L.str.6, 14

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Luminosity threshold (0.0 - 1.0)"
	.size	.L.str.7, 33

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"flare-inten"
	.size	.L.str.8, 12

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Flare intensity (0.0 - 1.0)"
	.size	.L.str.9, 28

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"spike-len"
	.size	.L.str.10, 10

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Spike length (in pixels)"
	.size	.L.str.11, 25

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"spike-pts"
	.size	.L.str.12, 10

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"# of spike points"
	.size	.L.str.13, 18

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"spike-angle"
	.size	.L.str.14, 12

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Spike angle (0-360 degrees, -1: random)"
	.size	.L.str.15, 40

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"density"
	.size	.L.str.16, 8

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Spike density (0.0 - 1.0)"
	.size	.L.str.17, 26

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"transparency"
	.size	.L.str.18, 13

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Transparency (0.0 - 1.0)"
	.size	.L.str.19, 25

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"random-hue"
	.size	.L.str.20, 11

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Random hue (0.0 - 1.0)"
	.size	.L.str.21, 23

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"random-saturation"
	.size	.L.str.22, 18

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Random saturation (0.0 - 1.0)"
	.size	.L.str.23, 30

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"preserve-luminosity"
	.size	.L.str.24, 20

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Preserve luminosity (TRUE/FALSE)"
	.size	.L.str.25, 33

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"inverse"
	.size	.L.str.26, 8

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"Inverse (TRUE/FALSE)"
	.size	.L.str.27, 21

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"border"
	.size	.L.str.28, 7

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"Add border (TRUE/FALSE)"
	.size	.L.str.29, 24

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"color-type"
	.size	.L.str.30, 11

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"Color of sparkles: { NATURAL (0), FOREGROUND (1), BACKGROUND (2) }"
	.size	.L.str.31, 67

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"plug-in-sparkle"
	.size	.L.str.32, 16

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"Turn bright spots into starry sparkles"
	.size	.L.str.33, 39

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"Uses a percentage based luminoisty threhsold to find candidate pixels for adding some sparkles (spikes). "
	.size	.L.str.34, 106

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"John Beale, & (ported to GIMP v0.54) Michael J. Hammel & ted to GIMP v1.0) & Seth Burgess & Spencer Kimball"
	.size	.L.str.35, 108

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"John Beale"
	.size	.L.str.36, 11

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"Version 1.27, September 2003"
	.size	.L.str.37, 29

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"_Sparkle..."
	.size	.L.str.38, 12

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"RGB*, GRAY*"
	.size	.L.str.39, 12

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"<Image>/Filters/Light and Shadow/Light"
	.size	.L.str.40, 39

	.type	run.values,@object      # @run.values
	.local	run.values
	.comm	run.values,40,16
	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"gimp20-std-plug-ins"
	.size	.L.str.41, 20

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"UTF-8"
	.size	.L.str.42, 6

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"Region selected for filter is empty"
	.size	.L.str.43, 36

	.type	svals,@object           # @svals
	.data
	.align	8
svals:
	.quad	4562254508917369340     # double 0.001
	.quad	4602678819172646912     # double 0.5
	.quad	4626322717216342016     # double 20
	.quad	4616189618054758400     # double 4
	.quad	4624633867356078080     # double 15
	.quad	4607182418800017408     # double 1
	.quad	0                       # double 0
	.quad	0                       # double 0
	.quad	0                       # double 0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.size	svals, 88

	.type	.L.str.44,@object       # @.str.44
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.44:
	.asciz	"Sparkling"
	.size	.L.str.44, 10

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"sparkle"
	.size	.L.str.45, 8

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"Sparkle"
	.size	.L.str.46, 8

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"gimp-sparkle"
	.size	.L.str.47, 13

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"gtk-cancel"
	.size	.L.str.48, 11

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"gtk-ok"
	.size	.L.str.49, 7

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"invalidated"
	.size	.L.str.50, 12

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"Luminosity _threshold:"
	.size	.L.str.51, 23

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"Adjust the luminosity threshold"
	.size	.L.str.52, 32

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"value-changed"
	.size	.L.str.53, 14

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"F_lare intensity:"
	.size	.L.str.54, 18

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"Adjust the flare intensity"
	.size	.L.str.55, 27

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"_Spike length:"
	.size	.L.str.56, 15

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"Adjust the spike length"
	.size	.L.str.57, 24

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"Sp_ike points:"
	.size	.L.str.58, 15

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"Adjust the number of spikes"
	.size	.L.str.59, 28

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"Spi_ke angle (-1: random):"
	.size	.L.str.60, 27

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"Adjust the spike angle (-1 causes a random angle to be chosen)"
	.size	.L.str.61, 63

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"Spik_e density:"
	.size	.L.str.62, 16

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"Adjust the spike density"
	.size	.L.str.63, 25

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"Tr_ansparency:"
	.size	.L.str.64, 15

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"Adjust the opacity of the spikes"
	.size	.L.str.65, 33

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"_Random hue:"
	.size	.L.str.66, 13

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"Adjust how much the hue should be changed randomly"
	.size	.L.str.67, 51

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"Rando_m saturation:"
	.size	.L.str.68, 20

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"Adjust how much the saturation should be changed randomly"
	.size	.L.str.69, 58

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"_Preserve luminosity"
	.size	.L.str.70, 21

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"Should the luminosity be preserved?"
	.size	.L.str.71, 36

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"toggled"
	.size	.L.str.72, 8

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"In_verse"
	.size	.L.str.73, 9

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"Should the effect be inversed?"
	.size	.L.str.74, 31

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"A_dd border"
	.size	.L.str.75, 12

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"Draw a border of spikes around the image"
	.size	.L.str.76, 41

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"_Natural color"
	.size	.L.str.77, 15

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"_Foreground color"
	.size	.L.str.78, 18

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"_Background color"
	.size	.L.str.79, 18

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"Use the color of the image"
	.size	.L.str.80, 27

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"Use the foreground color"
	.size	.L.str.81, 25

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"Use the background color"
	.size	.L.str.82, 25

	.type	num_sparkles,@object    # @num_sparkles
	.local	num_sparkles
	.comm	num_sparkles,4,4

	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
