	.text
	.file	"noise-randomize.bc"
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
	subq	$280, %rsp              # imm = 0x118
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
	movabsq	$.L.str.23, %rax
	movabsq	$.L.str.24, %rcx
	movl	$1, %edx
	movl	$7, %esi
	xorl	%edi, %edi
	movabsq	$query.args, %r8
	xorl	%r9d, %r9d
	movl	%r9d, %r10d
	movabsq	$.L.str.22, %r11
	movabsq	$.L.str.21, %rbx
	movabsq	$.L.str.20, %r14
	movabsq	$.L.str.19, %r15
	movabsq	$.L.str.18, %r12
	movabsq	$.L.str.17, %r13
	movabsq	$.L.str.16, %r9
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movabsq	$.L.str.15, %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movabsq	$.L.str.14, %rax
	movq	%rax, -48(%rbp)
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%rax, -56(%rbp)
	movq	%r9, -64(%rbp)
	movq	%r13, -72(%rbp)
	movq	%r12, -80(%rbp)
	movq	%r15, -88(%rbp)
	movq	%r14, -96(%rbp)
	movq	%rbx, -104(%rbp)
	movq	%r11, -112(%rbp)
	movq	PLUG_IN_PROC, %r9
	movq	-48(%rbp), %r11
	movq	-72(%rbp), %rbx
	movq	-96(%rbp), %r14
	movq	-104(%rbp), %r15
	movq	-112(%rbp), %r12
	movl	%edi, -132(%rbp)        # 4-byte Spill
	movq	%r9, %rdi
	movl	%esi, -136(%rbp)        # 4-byte Spill
	movq	%r11, %rsi
	movl	%edx, -140(%rbp)        # 4-byte Spill
	movq	%rbx, %rdx
	movq	%rcx, -152(%rbp)        # 8-byte Spill
	movq	%r14, %rcx
	movq	%r8, -160(%rbp)         # 8-byte Spill
	movq	%r15, %r8
	movq	%r12, %r9
	movq	-120(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	movq	-152(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$7, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	-160(%rbp), %r14        # 8-byte Reload
	movq	%r14, 40(%rsp)
	movq	$0, 48(%rsp)
	movq	%r10, -168(%rbp)        # 8-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.25, %rax
	movabsq	$.L.str.24, %rcx
	movl	$1, %esi
	movl	$7, %edi
	xorl	%r8d, %r8d
	movabsq	$query.args, %rdx
	xorl	%r9d, %r9d
	movl	%r9d, %r10d
	movq	PLUG_IN_PROC+8, %r11
	movq	-56(%rbp), %rbx
	movq	-80(%rbp), %r14
	movq	-96(%rbp), %r15
	movq	-104(%rbp), %r12
	movq	-112(%rbp), %r9
	movl	%edi, -172(%rbp)        # 4-byte Spill
	movq	%r11, %rdi
	movl	%esi, -176(%rbp)        # 4-byte Spill
	movq	%rbx, %rsi
	movq	%rdx, -184(%rbp)        # 8-byte Spill
	movq	%r14, %rdx
	movq	%rcx, -192(%rbp)        # 8-byte Spill
	movq	%r15, %rcx
	movl	%r8d, -196(%rbp)        # 4-byte Spill
	movq	%r12, %r8
	movq	%rax, (%rsp)
	movq	-192(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$7, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	-184(%rbp), %r11        # 8-byte Reload
	movq	%r11, 40(%rsp)
	movq	$0, 48(%rsp)
	movq	%r10, -208(%rbp)        # 8-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.26, %rax
	movabsq	$.L.str.24, %rcx
	movl	$1, %esi
	movl	$7, %edi
	xorl	%r8d, %r8d
	movabsq	$query.args, %rdx
	xorl	%r9d, %r9d
	movl	%r9d, %r10d
	movq	PLUG_IN_PROC+16, %r11
	movq	-64(%rbp), %rbx
	movq	-88(%rbp), %r14
	movq	-96(%rbp), %r15
	movq	-104(%rbp), %r12
	movq	-112(%rbp), %r9
	movl	%edi, -212(%rbp)        # 4-byte Spill
	movq	%r11, %rdi
	movl	%esi, -216(%rbp)        # 4-byte Spill
	movq	%rbx, %rsi
	movq	%rdx, -224(%rbp)        # 8-byte Spill
	movq	%r14, %rdx
	movq	%rcx, -232(%rbp)        # 8-byte Spill
	movq	%r15, %rcx
	movl	%r8d, -236(%rbp)        # 4-byte Spill
	movq	%r12, %r8
	movq	%rax, (%rsp)
	movq	-232(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$7, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	-224(%rbp), %r11        # 8-byte Reload
	movq	%r11, 40(%rsp)
	movq	$0, 48(%rsp)
	movq	%r10, -248(%rbp)        # 8-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.27, %rsi
	movq	PLUG_IN_PROC, %rdi
	callq	gimp_plugin_menu_register
	movabsq	$.L.str.27, %rsi
	movq	PLUG_IN_PROC+8, %rdi
	movl	%eax, -252(%rbp)        # 4-byte Spill
	callq	gimp_plugin_menu_register
	movabsq	$.L.str.27, %rsi
	movq	PLUG_IN_PROC+16, %rdi
	movl	%eax, -256(%rbp)        # 4-byte Spill
	callq	gimp_plugin_menu_register
	movl	%eax, -260(%rbp)        # 4-byte Spill
	addq	$280, %rsp              # imm = 0x118
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
	.quad	4636737291354636288     # double 100
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	$3, -56(%rbp)
# BB#1:                                 # %do.body
	callq	gimp_locale_directory
	movabsq	$.L.str.31, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.31, %rdi
	movabsq	$.L.str.32, %rsi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.31, %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	textdomain
	movq	%rax, -80(%rbp)         # 8-byte Spill
# BB#2:                                 # %do.end
	movq	-8(%rbp), %rdi
	movq	PLUG_IN_PROC, %rsi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_4
# BB#3:                                 # %if.then
	movl	$1, rndm_type
	jmp	.LBB1_10
.LBB1_4:                                # %if.else
	movq	-8(%rbp), %rdi
	movq	PLUG_IN_PROC+8, %rsi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_6
# BB#5:                                 # %if.then.7
	movl	$2, rndm_type
	jmp	.LBB1_9
.LBB1_6:                                # %if.else.8
	movq	-8(%rbp), %rdi
	movq	PLUG_IN_PROC+16, %rsi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_8
# BB#7:                                 # %if.then.11
	movl	$3, rndm_type
.LBB1_8:                                # %if.end
	jmp	.LBB1_9
.LBB1_9:                                # %if.end.12
	jmp	.LBB1_10
.LBB1_10:                               # %if.end.13
	movq	-24(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -52(%rbp)
	movq	-24(%rbp), %rax
	movl	88(%rax), %edi
	callq	gimp_drawable_get
	movabsq	$run.values, %rdx
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movl	$1, (%rax)
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$21, run.values
	movl	-56(%rbp), %ecx
	movl	%ecx, run.values+8
	callq	g_rand_new
	movq	%rax, gr
	movq	-48(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_is_rgb
	cmpl	$0, %eax
	jne	.LBB1_13
# BB#11:                                # %lor.lhs.false
	movq	-48(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_is_gray
	cmpl	$0, %eax
	jne	.LBB1_13
# BB#12:                                # %lor.lhs.false.22
	movq	-48(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_is_indexed
	cmpl	$0, %eax
	je	.LBB1_42
.LBB1_13:                               # %if.then.26
	movq	-48(%rbp), %rax
	movl	20(%rax), %ecx
	addl	%ecx, %ecx
	movl	%ecx, %edi
	callq	gimp_tile_cache_ntiles
	movl	-52(%rbp), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -84(%rbp)         # 4-byte Spill
	je	.LBB1_14
	jmp	.LBB1_45
.LBB1_45:                               # %if.then.26
	movl	-84(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	je	.LBB1_17
	jmp	.LBB1_46
.LBB1_46:                               # %if.then.26
	movl	-84(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	je	.LBB1_31
	jmp	.LBB1_34
.LBB1_14:                               # %sw.bb
	movabsq	$pivals, %rax
	movl	rndm_type, %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	movq	PLUG_IN_PROC(,%rdx,8), %rdi
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movq	-48(%rbp), %rdi
	movl	%eax, -96(%rbp)         # 4-byte Spill
	callq	randomize_dialog
	cmpl	$0, %eax
	jne	.LBB1_16
# BB#15:                                # %if.then.31
	jmp	.LBB1_44
.LBB1_16:                               # %if.end.32
	jmp	.LBB1_35
.LBB1_17:                               # %sw.bb.33
	cmpl	$7, -12(%rbp)
	je	.LBB1_19
# BB#18:                                # %if.then.36
	movl	$1, -56(%rbp)
	jmp	.LBB1_30
.LBB1_19:                               # %if.else.37
	movq	-24(%rbp), %rax
	movsd	128(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, pivals
	movq	-24(%rbp), %rax
	movsd	168(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, pivals+8
	movq	-24(%rbp), %rax
	movl	208(%rax), %ecx
	movl	%ecx, pivals+16
	movq	-24(%rbp), %rax
	movl	248(%rax), %ecx
	movl	%ecx, pivals+20
	cmpl	$0, pivals+16
	je	.LBB1_21
# BB#20:                                # %if.then.50
	callq	g_random_int
	movl	%eax, pivals+20
.LBB1_21:                               # %if.end.52
	cmpl	$2, rndm_type
	je	.LBB1_24
# BB#22:                                # %land.lhs.true
	cmpl	$3, rndm_type
	je	.LBB1_24
# BB#23:                                # %land.lhs.true.57
	cmpl	$1, rndm_type
	jne	.LBB1_28
.LBB1_24:                               # %lor.lhs.false.60
	movsd	.LCPI1_0, %xmm0         # xmm0 = mem[0],zero
	ucomisd	pivals, %xmm0
	ja	.LBB1_28
# BB#25:                                # %lor.lhs.false.63
	movsd	.LCPI1_1, %xmm0         # xmm0 = mem[0],zero
	movsd	pivals, %xmm1           # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	ja	.LBB1_28
# BB#26:                                # %lor.lhs.false.66
	movsd	.LCPI1_0, %xmm0         # xmm0 = mem[0],zero
	ucomisd	pivals+8, %xmm0
	ja	.LBB1_28
# BB#27:                                # %lor.lhs.false.69
	movsd	.LCPI1_1, %xmm0         # xmm0 = mem[0],zero
	movsd	pivals+8, %xmm1         # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB1_29
.LBB1_28:                               # %if.then.72
	movl	$1, -56(%rbp)
.LBB1_29:                               # %if.end.73
	jmp	.LBB1_30
.LBB1_30:                               # %if.end.74
	jmp	.LBB1_35
.LBB1_31:                               # %sw.bb.75
	movabsq	$pivals, %rax
	movl	rndm_type, %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	movq	PLUG_IN_PROC(,%rdx,8), %rdi
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	cmpl	$0, pivals+16
	movl	%eax, -100(%rbp)        # 4-byte Spill
	je	.LBB1_33
# BB#32:                                # %if.then.81
	callq	g_random_int
	movl	%eax, pivals+20
.LBB1_33:                               # %if.end.83
	jmp	.LBB1_35
.LBB1_34:                               # %sw.default
	jmp	.LBB1_35
.LBB1_35:                               # %sw.epilog
	cmpl	$3, -56(%rbp)
	jne	.LBB1_41
# BB#36:                                # %if.then.86
	movl	rndm_type, %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	RNDM_NAME(,%rcx,8), %rdi
	callq	gettext
	movabsq	$.L.str.33, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	gimp_progress_init_printf
	movq	gr, %rdi
	movl	pivals+20, %esi
	movl	%eax, -104(%rbp)        # 4-byte Spill
	callq	g_rand_set_seed
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rdi
	callq	randomize
	cmpl	$1, -52(%rbp)
	je	.LBB1_38
# BB#37:                                # %if.then.94
	callq	gimp_displays_flush
	movl	%eax, -108(%rbp)        # 4-byte Spill
.LBB1_38:                               # %if.end.96
	cmpl	$0, -52(%rbp)
	jne	.LBB1_40
# BB#39:                                # %if.then.99
	movabsq	$pivals, %rax
	movl	$24, %edx
	movl	rndm_type, %ecx
	subl	$1, %ecx
	movslq	%ecx, %rsi
	movq	PLUG_IN_PROC(,%rsi,8), %rdi
	movq	%rax, %rsi
	callq	gimp_procedural_db_set_data
	movl	%eax, -112(%rbp)        # 4-byte Spill
.LBB1_40:                               # %if.end.104
	jmp	.LBB1_41
.LBB1_41:                               # %if.end.105
	jmp	.LBB1_43
.LBB1_42:                               # %if.else.106
	movl	$0, -56(%rbp)
.LBB1_43:                               # %if.end.107
	movq	gr, %rdi
	callq	g_rand_free
	movl	-56(%rbp), %eax
	movl	%eax, run.values+8
	movq	-48(%rbp), %rdi
	callq	gimp_drawable_detach
.LBB1_44:                               # %return
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
	.quad	4607182418800017408     # double 1
.LCPI3_1:
	.quad	4636737291354636288     # double 100
.LCPI3_2:
	.quad	4621819117588971520     # double 10
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI3_3:
	.long	1056964608              # float 0.5
	.text
	.align	16, 0x90
	.type	randomize_dialog,@function
randomize_dialog:                       # @randomize_dialog
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
	pushq	%rbx
	subq	$456, %rsp              # imm = 0x1C8
.Ltmp17:
	.cfi_offset %rbx, -40
.Ltmp18:
	.cfi_offset %r14, -32
.Ltmp19:
	.cfi_offset %r15, -24
	movabsq	$.L.str.34, %rax
	xorl	%esi, %esi
	movq	%rdi, -32(%rbp)
	movq	%rax, %rdi
	callq	gimp_ui_init
	movl	rndm_type, %esi
	subl	$1, %esi
	movslq	%esi, %rax
	movq	RNDM_NAME(,%rax,8), %rdi
	callq	gettext
	movabsq	$.L.str.35, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	movabsq	$gimp_standard_help_func, %r8
	movabsq	$.L.str.36, %rdi
	movl	$4294967290, %r9d       # imm = 0xFFFFFFFA
	movabsq	$.L.str.37, %r10
	movl	$4294967291, %r11d      # imm = 0xFFFFFFFB
	movl	rndm_type, %ebx
	subl	$1, %ebx
	movslq	%ebx, %r14
	movq	PLUG_IN_PROC(,%r14,8), %r14
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	%r9d, -108(%rbp)        # 4-byte Spill
	movq	%r14, %r9
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$-6, 8(%rsp)
	movq	%r10, 16(%rsp)
	movl	$-5, 24(%rsp)
	movq	$0, 32(%rsp)
	movb	$0, %al
	movl	%r11d, -112(%rbp)       # 4-byte Spill
	callq	gimp_dialog_new
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
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
	movq	-40(%rbp), %rdi
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_window_set_transient
	movl	$1, %edi
	movl	$12, %esi
	callq	gtk_box_new
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-40(%rbp), %rax
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
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	-32(%rbp), %rdi
	callq	gimp_drawable_preview_new
	movq	%rax, -80(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
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
	movabsq	$.L.str.38, %rsi
	movabsq	$randomize, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movl	$2, %r9d
	movq	-80(%rbp), %rdi
	movq	-32(%rbp), %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data
	movl	$3, %r9d
	xorl	%edx, %edx
	movl	%r9d, %edi
	movl	%r9d, %esi
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_table_new
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-48(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-48(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-72(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	xorl	%r8d, %r8d
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -204(%rbp)        # 4-byte Spill
	movl	-204(%rbp), %ecx        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$pivals, %rax
	movq	%rax, %rsi
	addq	$20, %rsi
	addq	$16, %rax
	movq	%rsi, %rdi
	movq	%rax, %rsi
	callq	gimp_random_seed_new
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.39, %rdi
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	xorps	%xmm0, %xmm0
	movss	.LCPI3_3, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movl	$1, %r9d
	movq	-64(%rbp), %r8
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movl	%ecx, %esi
	movl	%ecx, %edx
	movq	%rax, %rcx
	movl	$1, (%rsp)
	callq	gimp_table_attach_aligned
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$80, %edx
	movl	%edx, %esi
	movq	-64(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$.L.str.40, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_label_set_mnemonic_widget
	movq	-48(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.41, %rdi
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.42, %rdi
	movsd	pivals, %xmm0           # xmm0 = mem[0],zero
	movq	%rax, -264(%rbp)        # 8-byte Spill
	movsd	%xmm0, -272(%rbp)       # 8-byte Spill
	callq	gettext
	xorl	%edx, %edx
	movl	$1, %r9d
	movl	$100, %r8d
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI3_1, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI3_2, %xmm4         # xmm4 = mem[0],zero
	xorps	%xmm1, %xmm1
	xorl	%r11d, %r11d
	movl	%r11d, %ecx
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movl	%edx, %esi
	movl	%edx, -276(%rbp)        # 4-byte Spill
	movl	%r9d, %edx
	movq	-264(%rbp), %r10        # 8-byte Reload
	movq	%rcx, -288(%rbp)        # 8-byte Spill
	movq	%r10, %rcx
	movl	-276(%rbp), %r9d        # 4-byte Reload
	movsd	-272(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	%xmm0, -296(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm0
	movsd	-296(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	%xmm1, -304(%rbp)       # 8-byte Spill
	movaps	%xmm5, %xmm1
	movaps	%xmm5, %xmm3
	movl	$0, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-304(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-304(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	%rax, 16(%rsp)
	movq	$0, 24(%rsp)
	callq	gimp_scale_entry_new
	movabsq	$.L.str.43, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	movabsq	$pivals, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rdi, -312(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-312(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.43, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-88(%rbp), %rdx
	movq	-80(%rbp), %rdi
	movq	%rdi, -320(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-320(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-48(%rbp), %rcx
	movq	%rax, -336(%rbp)        # 8-byte Spill
	movq	%rcx, -344(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.44, %rdi
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.45, %rdi
	movsd	pivals+8, %xmm0         # xmm0 = mem[0],zero
	movq	%rax, -360(%rbp)        # 8-byte Spill
	movsd	%xmm0, -368(%rbp)       # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	movl	$2, %edx
	movl	$100, %r8d
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI3_1, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI3_2, %xmm4         # xmm4 = mem[0],zero
	movl	$1, %r11d
	xorps	%xmm1, %xmm1
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movl	%r9d, %esi
	movq	-360(%rbp), %r10        # 8-byte Reload
	movq	%rcx, -376(%rbp)        # 8-byte Spill
	movq	%r10, %rcx
	movsd	-368(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	%xmm0, -384(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm0
	movsd	-384(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	%xmm1, -392(%rbp)       # 8-byte Spill
	movaps	%xmm5, %xmm1
	movaps	%xmm5, %xmm3
	movl	$0, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-392(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-392(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	%rax, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r11d, -396(%rbp)       # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.43, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	movabsq	$pivals, %rdi
	addq	$8, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rdi, -408(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-408(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.43, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-88(%rbp), %rdx
	movq	-80(%rbp), %rdi
	movq	%rdi, -416(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-416(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-40(%rbp), %rdi
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
	movq	-40(%rbp), %rax
	movq	%rax, -440(%rbp)        # 8-byte Spill
	callq	gimp_dialog_get_type
	movq	-440(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dialog_run
	cmpl	$-5, %eax
	sete	%r15b
	andb	$1, %r15b
	movzbl	%r15b, %eax
	movl	%eax, -92(%rbp)
	movq	-40(%rbp), %rdi
	callq	gtk_widget_destroy
	movl	-92(%rbp), %eax
	addq	$456, %rsp              # imm = 0x1C8
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	randomize_dialog, .Lfunc_end3-randomize_dialog
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	randomize,@function
randomize:                              # @randomize
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
	subq	$432, %rsp              # imm = 0x1B0
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB4_2
# BB#1:                                 # %if.then
	leaq	-284(%rbp), %rsi
	leaq	-288(%rbp), %rdx
	movq	-16(%rbp), %rdi
	callq	gimp_preview_get_position
	leaq	-188(%rbp), %rsi
	leaq	-192(%rbp), %rdx
	movq	-16(%rbp), %rdi
	callq	gimp_preview_get_size
	jmp	.LBB4_5
.LBB4_2:                                # %if.else
	leaq	-284(%rbp), %rsi
	leaq	-288(%rbp), %rdx
	leaq	-188(%rbp), %rcx
	leaq	-192(%rbp), %r8
	movq	-8(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_mask_intersect
	cmpl	$0, %eax
	jne	.LBB4_4
# BB#3:                                 # %if.then.10
	jmp	.LBB4_68
.LBB4_4:                                # %if.end
	jmp	.LBB4_5
.LBB4_5:                                # %if.end.11
	movl	$1, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movl	12(%rcx), %eax
	movl	%eax, -196(%rbp)
	movl	-188(%rbp), %eax
	addl	$2, %eax
	imull	-196(%rbp), %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	movl	$1, %edx
	movl	%edx, %esi
	movq	%rax, -224(%rbp)
	movl	-188(%rbp), %edx
	addl	$2, %edx
	imull	-196(%rbp), %edx
	movslq	%edx, %rdi
	callq	g_malloc_n
	movl	$1, %edx
	movl	%edx, %esi
	movq	%rax, -240(%rbp)
	movl	-188(%rbp), %edx
	addl	$2, %edx
	imull	-196(%rbp), %edx
	movslq	%edx, %rdi
	callq	g_malloc_n
	movl	$1, %edx
	movl	%edx, %esi
	movq	%rax, -256(%rbp)
	movl	-188(%rbp), %edx
	imull	-196(%rbp), %edx
	movslq	%edx, %rdi
	callq	g_malloc_n
	leaq	-64(%rbp), %rdi
	xorl	%edx, %edx
	movq	%rax, -208(%rbp)
	movq	-8(%rbp), %rsi
	movl	-284(%rbp), %r8d
	movl	-288(%rbp), %ecx
	movl	-188(%rbp), %r9d
	movl	-192(%rbp), %r10d
	movl	%edx, -324(%rbp)        # 4-byte Spill
	movl	%r8d, %edx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	leaq	-112(%rbp), %rdi
	movl	$1, %ecx
	movq	-8(%rbp), %rsi
	movl	-284(%rbp), %edx
	movl	-288(%rbp), %r8d
	movl	-188(%rbp), %r9d
	movl	-192(%rbp), %r10d
	movl	%ecx, -328(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	callq	gimp_pixel_rgn_init
	leaq	-160(%rbp), %rdi
	movl	$1, %ecx
	movq	-8(%rbp), %rsi
	movl	-284(%rbp), %edx
	movl	-288(%rbp), %r8d
	movl	-188(%rbp), %r9d
	movl	-192(%rbp), %r10d
	movl	%ecx, -332(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	callq	gimp_pixel_rgn_init
	leaq	-112(%rbp), %rax
	leaq	-64(%rbp), %rsi
	movq	%rsi, -168(%rbp)
	movq	%rax, -176(%rbp)
	movq	$0, -184(%rbp)
	movq	-224(%rbp), %rax
	movslq	-196(%rbp), %rsi
	addq	%rsi, %rax
	movq	%rax, -232(%rbp)
	movq	-240(%rbp), %rax
	movslq	-196(%rbp), %rsi
	addq	%rsi, %rax
	movq	%rax, -248(%rbp)
	movq	-256(%rbp), %rax
	movslq	-196(%rbp), %rsi
	addq	%rsi, %rax
	movq	%rax, -264(%rbp)
	movl	$1, -292(%rbp)
.LBB4_6:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_8 Depth 2
                                        #       Child Loop BB4_10 Depth 3
                                        #         Child Loop BB4_34 Depth 4
                                        #         Child Loop BB4_19 Depth 4
                                        #         Child Loop BB4_14 Depth 4
                                        #         Child Loop BB4_44 Depth 4
	cvtsi2sdl	-292(%rbp), %xmm0
	movsd	pivals+8, %xmm1         # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB4_62
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB4_6 Depth=1
	movq	-168(%rbp), %rdi
	movq	-232(%rbp), %rsi
	movl	-284(%rbp), %edx
	movl	-288(%rbp), %eax
	subl	$1, %eax
	movl	-188(%rbp), %r8d
	movl	%eax, %ecx
	callq	randomize_prepare_row
	movq	-168(%rbp), %rdi
	movq	-248(%rbp), %rsi
	movl	-284(%rbp), %edx
	movl	-288(%rbp), %ecx
	movl	-188(%rbp), %r8d
	callq	randomize_prepare_row
	movl	-288(%rbp), %eax
	movl	%eax, -276(%rbp)
.LBB4_8:                                # %for.cond.30
                                        #   Parent Loop BB4_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_10 Depth 3
                                        #         Child Loop BB4_34 Depth 4
                                        #         Child Loop BB4_19 Depth 4
                                        #         Child Loop BB4_14 Depth 4
                                        #         Child Loop BB4_44 Depth 4
	movl	-276(%rbp), %eax
	movl	-288(%rbp), %ecx
	addl	-192(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB4_55
# BB#9:                                 # %for.body.34
                                        #   in Loop: Header=BB4_8 Depth=2
	movq	-168(%rbp), %rdi
	movq	-264(%rbp), %rsi
	movl	-284(%rbp), %edx
	movl	-276(%rbp), %eax
	addl	$1, %eax
	movl	-188(%rbp), %r8d
	movl	%eax, %ecx
	callq	randomize_prepare_row
	movq	-208(%rbp), %rsi
	movq	%rsi, -216(%rbp)
	movl	$0, -280(%rbp)
.LBB4_10:                               # %for.cond.36
                                        #   Parent Loop BB4_6 Depth=1
                                        #     Parent Loop BB4_8 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB4_34 Depth 4
                                        #         Child Loop BB4_19 Depth 4
                                        #         Child Loop BB4_14 Depth 4
                                        #         Child Loop BB4_44 Depth 4
	movl	-280(%rbp), %eax
	cmpl	-188(%rbp), %eax
	jge	.LBB4_50
# BB#11:                                # %for.body.39
                                        #   in Loop: Header=BB4_10 Depth=3
	xorl	%esi, %esi
	movl	$100, %edx
	movq	gr, %rdi
	callq	g_rand_int_range
	cvttsd2si	pivals, %edx
	cmpl	%edx, %eax
	jg	.LBB4_43
# BB#12:                                # %if.then.44
                                        #   in Loop: Header=BB4_10 Depth=3
	movl	rndm_type(%rip), %eax
	movl	%eax, %ecx
	subl	$1, %ecx
	movl	%eax, -336(%rbp)        # 4-byte Spill
	movl	%ecx, -340(%rbp)        # 4-byte Spill
	je	.LBB4_13
	jmp	.LBB4_69
.LBB4_69:                               # %if.then.44
                                        #   in Loop: Header=BB4_10 Depth=3
	movl	-336(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -344(%rbp)        # 4-byte Spill
	je	.LBB4_18
	jmp	.LBB4_70
.LBB4_70:                               # %if.then.44
                                        #   in Loop: Header=BB4_10 Depth=3
	movl	-336(%rbp), %eax        # 4-byte Reload
	subl	$3, %eax
	movl	%eax, -348(%rbp)        # 4-byte Spill
	je	.LBB4_33
	jmp	.LBB4_42
.LBB4_13:                               # %sw.bb
                                        #   in Loop: Header=BB4_10 Depth=3
	movl	$0, -300(%rbp)
.LBB4_14:                               # %for.cond.45
                                        #   Parent Loop BB4_6 Depth=1
                                        #     Parent Loop BB4_8 Depth=2
                                        #       Parent Loop BB4_10 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	-300(%rbp), %eax
	cmpl	-196(%rbp), %eax
	jge	.LBB4_17
# BB#15:                                # %for.body.48
                                        #   in Loop: Header=BB4_14 Depth=4
	xorl	%esi, %esi
	movl	$256, %edx              # imm = 0x100
	movq	gr, %rdi
	callq	g_rand_int_range
	movb	%al, %cl
	movq	-216(%rbp), %rdi
	movq	%rdi, %r8
	addq	$1, %r8
	movq	%r8, -216(%rbp)
	movb	%cl, (%rdi)
# BB#16:                                # %for.inc
                                        #   in Loop: Header=BB4_14 Depth=4
	movl	-300(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -300(%rbp)
	jmp	.LBB4_14
.LBB4_17:                               # %for.end
                                        #   in Loop: Header=BB4_10 Depth=3
	jmp	.LBB4_42
.LBB4_18:                               # %sw.bb.51
                                        #   in Loop: Header=BB4_10 Depth=3
	xorl	%esi, %esi
	movl	$9, %edx
	movq	gr, %rdi
	callq	g_rand_int_range
	movl	%eax, -304(%rbp)
	movl	$0, -300(%rbp)
.LBB4_19:                               # %for.cond.53
                                        #   Parent Loop BB4_6 Depth=1
                                        #     Parent Loop BB4_8 Depth=2
                                        #       Parent Loop BB4_10 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	-300(%rbp), %eax
	cmpl	-196(%rbp), %eax
	jge	.LBB4_32
# BB#20:                                # %for.body.56
                                        #   in Loop: Header=BB4_19 Depth=4
	movl	-280(%rbp), %eax
	movl	-196(%rbp), %ecx
	imull	%ecx, %eax
	movl	-300(%rbp), %ecx
	addl	%ecx, %eax
	movl	%eax, -296(%rbp)
	movl	-304(%rbp), %eax
	movl	%eax, %edx
	movq	%rdx, %rsi
	subq	$8, %rsi
	movq	%rdx, -360(%rbp)        # 8-byte Spill
	movq	%rsi, -368(%rbp)        # 8-byte Spill
	ja	.LBB4_30
# BB#72:                                # %for.body.56
                                        #   in Loop: Header=BB4_19 Depth=4
	movq	-360(%rbp), %rax        # 8-byte Reload
	movq	.LJTI4_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB4_21:                               # %sw.bb.59
                                        #   in Loop: Header=BB4_19 Depth=4
	movl	-296(%rbp), %eax
	subl	-196(%rbp), %eax
	movslq	%eax, %rcx
	movq	-232(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movb	%al, %sil
	movq	-216(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -216(%rbp)
	movb	%sil, (%rcx)
	jmp	.LBB4_30
.LBB4_22:                               # %sw.bb.64
                                        #   in Loop: Header=BB4_19 Depth=4
	movslq	-296(%rbp), %rax
	movq	-232(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movb	%dl, %sil
	movq	-216(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -216(%rbp)
	movb	%sil, (%rax)
	jmp	.LBB4_30
.LBB4_23:                               # %sw.bb.70
                                        #   in Loop: Header=BB4_19 Depth=4
	movl	-296(%rbp), %eax
	addl	-196(%rbp), %eax
	movslq	%eax, %rcx
	movq	-232(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movb	%al, %sil
	movq	-216(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -216(%rbp)
	movb	%sil, (%rcx)
	jmp	.LBB4_30
.LBB4_24:                               # %sw.bb.77
                                        #   in Loop: Header=BB4_19 Depth=4
	movl	-296(%rbp), %eax
	subl	-196(%rbp), %eax
	movslq	%eax, %rcx
	movq	-248(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movb	%al, %sil
	movq	-216(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -216(%rbp)
	movb	%sil, (%rcx)
	jmp	.LBB4_30
.LBB4_25:                               # %sw.bb.84
                                        #   in Loop: Header=BB4_19 Depth=4
	movslq	-296(%rbp), %rax
	movq	-248(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movb	%dl, %sil
	movq	-216(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -216(%rbp)
	movb	%sil, (%rax)
	jmp	.LBB4_30
.LBB4_26:                               # %sw.bb.90
                                        #   in Loop: Header=BB4_19 Depth=4
	movl	-296(%rbp), %eax
	addl	-196(%rbp), %eax
	movslq	%eax, %rcx
	movq	-248(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movb	%al, %sil
	movq	-216(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -216(%rbp)
	movb	%sil, (%rcx)
	jmp	.LBB4_30
.LBB4_27:                               # %sw.bb.97
                                        #   in Loop: Header=BB4_19 Depth=4
	movl	-296(%rbp), %eax
	subl	-196(%rbp), %eax
	movslq	%eax, %rcx
	movq	-264(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movb	%al, %sil
	movq	-216(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -216(%rbp)
	movb	%sil, (%rcx)
	jmp	.LBB4_30
.LBB4_28:                               # %sw.bb.104
                                        #   in Loop: Header=BB4_19 Depth=4
	movslq	-296(%rbp), %rax
	movq	-264(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movb	%dl, %sil
	movq	-216(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -216(%rbp)
	movb	%sil, (%rax)
	jmp	.LBB4_30
.LBB4_29:                               # %sw.bb.110
                                        #   in Loop: Header=BB4_19 Depth=4
	movl	-296(%rbp), %eax
	addl	-196(%rbp), %eax
	movslq	%eax, %rcx
	movq	-264(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movb	%al, %sil
	movq	-216(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -216(%rbp)
	movb	%sil, (%rcx)
.LBB4_30:                               # %sw.epilog
                                        #   in Loop: Header=BB4_19 Depth=4
	jmp	.LBB4_31
.LBB4_31:                               # %for.inc.117
                                        #   in Loop: Header=BB4_19 Depth=4
	movl	-300(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -300(%rbp)
	jmp	.LBB4_19
.LBB4_32:                               # %for.end.119
                                        #   in Loop: Header=BB4_10 Depth=3
	jmp	.LBB4_42
.LBB4_33:                               # %sw.bb.120
                                        #   in Loop: Header=BB4_10 Depth=3
	xorl	%esi, %esi
	movl	$10, %edx
	movq	gr, %rdi
	callq	g_rand_int_range
	movl	%eax, -304(%rbp)
	movl	$0, -300(%rbp)
.LBB4_34:                               # %for.cond.122
                                        #   Parent Loop BB4_6 Depth=1
                                        #     Parent Loop BB4_8 Depth=2
                                        #       Parent Loop BB4_10 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	-300(%rbp), %eax
	cmpl	-196(%rbp), %eax
	jge	.LBB4_41
# BB#35:                                # %for.body.125
                                        #   in Loop: Header=BB4_34 Depth=4
	movl	-280(%rbp), %eax
	movl	-196(%rbp), %ecx
	imull	%ecx, %eax
	movl	-300(%rbp), %ecx
	addl	%ecx, %eax
	movl	%eax, -296(%rbp)
	movl	-304(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -372(%rbp)        # 4-byte Spill
	je	.LBB4_36
	jmp	.LBB4_71
.LBB4_71:                               # %for.body.125
                                        #   in Loop: Header=BB4_34 Depth=4
	movl	-372(%rbp), %eax        # 4-byte Reload
	subl	$9, %eax
	movl	%eax, -376(%rbp)        # 4-byte Spill
	je	.LBB4_37
	jmp	.LBB4_38
.LBB4_36:                               # %sw.bb.128
                                        #   in Loop: Header=BB4_34 Depth=4
	movl	-296(%rbp), %eax
	subl	-196(%rbp), %eax
	movslq	%eax, %rcx
	movq	-232(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movb	%al, %sil
	movq	-216(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -216(%rbp)
	movb	%sil, (%rcx)
	jmp	.LBB4_39
.LBB4_37:                               # %sw.bb.135
                                        #   in Loop: Header=BB4_34 Depth=4
	movl	-296(%rbp), %eax
	addl	-196(%rbp), %eax
	movslq	%eax, %rcx
	movq	-232(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movb	%al, %sil
	movq	-216(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -216(%rbp)
	movb	%sil, (%rcx)
	jmp	.LBB4_39
.LBB4_38:                               # %sw.default
                                        #   in Loop: Header=BB4_34 Depth=4
	movslq	-296(%rbp), %rax
	movq	-232(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movb	%dl, %sil
	movq	-216(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -216(%rbp)
	movb	%sil, (%rax)
.LBB4_39:                               # %sw.epilog.147
                                        #   in Loop: Header=BB4_34 Depth=4
	jmp	.LBB4_40
.LBB4_40:                               # %for.inc.148
                                        #   in Loop: Header=BB4_34 Depth=4
	movl	-300(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -300(%rbp)
	jmp	.LBB4_34
.LBB4_41:                               # %for.end.150
                                        #   in Loop: Header=BB4_10 Depth=3
	jmp	.LBB4_42
.LBB4_42:                               # %sw.epilog.151
                                        #   in Loop: Header=BB4_10 Depth=3
	jmp	.LBB4_48
.LBB4_43:                               # %if.else.152
                                        #   in Loop: Header=BB4_10 Depth=3
	movl	$0, -300(%rbp)
.LBB4_44:                               # %for.cond.153
                                        #   Parent Loop BB4_6 Depth=1
                                        #     Parent Loop BB4_8 Depth=2
                                        #       Parent Loop BB4_10 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	-300(%rbp), %eax
	cmpl	-196(%rbp), %eax
	jge	.LBB4_47
# BB#45:                                # %for.body.156
                                        #   in Loop: Header=BB4_44 Depth=4
	movl	-280(%rbp), %eax
	imull	-196(%rbp), %eax
	addl	-300(%rbp), %eax
	movslq	%eax, %rcx
	movq	-248(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movb	%al, %sil
	movq	-216(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -216(%rbp)
	movb	%sil, (%rcx)
# BB#46:                                # %for.inc.164
                                        #   in Loop: Header=BB4_44 Depth=4
	movl	-300(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -300(%rbp)
	jmp	.LBB4_44
.LBB4_47:                               # %for.end.166
                                        #   in Loop: Header=BB4_10 Depth=3
	jmp	.LBB4_48
.LBB4_48:                               # %if.end.167
                                        #   in Loop: Header=BB4_10 Depth=3
	jmp	.LBB4_49
.LBB4_49:                               # %for.inc.168
                                        #   in Loop: Header=BB4_10 Depth=3
	movl	-280(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -280(%rbp)
	jmp	.LBB4_10
.LBB4_50:                               # %for.end.170
                                        #   in Loop: Header=BB4_8 Depth=2
	movq	-176(%rbp), %rdi
	movq	-208(%rbp), %rsi
	movl	-284(%rbp), %edx
	movl	-276(%rbp), %ecx
	movl	-188(%rbp), %r8d
	callq	gimp_pixel_rgn_set_row
	movq	-232(%rbp), %rsi
	movq	%rsi, -272(%rbp)
	movq	-248(%rbp), %rsi
	movq	%rsi, -232(%rbp)
	movq	-264(%rbp), %rsi
	movq	%rsi, -248(%rbp)
	movq	-272(%rbp), %rsi
	movq	%rsi, -264(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB4_53
# BB#51:                                # %land.lhs.true
                                        #   in Loop: Header=BB4_8 Depth=2
	movl	$12, %eax
	movl	-276(%rbp), %ecx
	movl	%eax, -380(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-380(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB4_53
# BB#52:                                # %if.then.174
                                        #   in Loop: Header=BB4_8 Depth=2
	cvtsi2sdl	-292(%rbp), %xmm0
	divsd	pivals+8, %xmm0
	movsd	%xmm0, -312(%rbp)
	cvtsi2sdl	-276(%rbp), %xmm0
	cvtsi2sdl	-192(%rbp), %xmm1
	mulsd	pivals+8, %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -320(%rbp)
	movsd	-312(%rbp), %xmm0       # xmm0 = mem[0],zero
	addsd	-320(%rbp), %xmm0
	callq	gimp_progress_update
	movl	%eax, -384(%rbp)        # 4-byte Spill
.LBB4_53:                               # %if.end.185
                                        #   in Loop: Header=BB4_8 Depth=2
	jmp	.LBB4_54
.LBB4_54:                               # %for.inc.186
                                        #   in Loop: Header=BB4_8 Depth=2
	movl	-276(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -276(%rbp)
	jmp	.LBB4_8
.LBB4_55:                               # %for.end.188
                                        #   in Loop: Header=BB4_6 Depth=1
	cvtsi2sdl	-292(%rbp), %xmm0
	movsd	pivals+8, %xmm1         # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB4_60
# BB#56:                                # %if.then.192
                                        #   in Loop: Header=BB4_6 Depth=1
	cmpq	$0, -184(%rbp)
	je	.LBB4_58
# BB#57:                                # %if.then.195
                                        #   in Loop: Header=BB4_6 Depth=1
	movq	-176(%rbp), %rax
	movq	%rax, -184(%rbp)
	movq	-168(%rbp), %rax
	movq	%rax, -176(%rbp)
	movq	-184(%rbp), %rax
	movq	%rax, -168(%rbp)
	jmp	.LBB4_59
.LBB4_58:                               # %if.else.196
                                        #   in Loop: Header=BB4_6 Depth=1
	leaq	-160(%rbp), %rax
	leaq	-112(%rbp), %rcx
	leaq	-64(%rbp), %rdx
	movq	%rdx, -184(%rbp)
	movq	%rcx, -168(%rbp)
	movq	%rax, -176(%rbp)
.LBB4_59:                               # %if.end.197
                                        #   in Loop: Header=BB4_6 Depth=1
	jmp	.LBB4_60
.LBB4_60:                               # %if.end.198
                                        #   in Loop: Header=BB4_6 Depth=1
	jmp	.LBB4_61
.LBB4_61:                               # %for.inc.199
                                        #   in Loop: Header=BB4_6 Depth=1
	movl	-292(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -292(%rbp)
	jmp	.LBB4_6
.LBB4_62:                               # %for.end.201
	cmpq	$0, -16(%rbp)
	jne	.LBB4_64
# BB#63:                                # %if.then.203
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	callq	gimp_progress_update
	movl	%eax, -388(%rbp)        # 4-byte Spill
.LBB4_64:                               # %if.end.205
	cmpq	$0, -16(%rbp)
	je	.LBB4_66
# BB#65:                                # %if.then.207
	movq	-16(%rbp), %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	gimp_drawable_preview_get_type
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-176(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_drawable_preview_draw_region
	jmp	.LBB4_67
.LBB4_66:                               # %if.else.210
	movq	-8(%rbp), %rdi
	callq	gimp_drawable_flush
	movl	$1, %esi
	movq	-8(%rbp), %rdi
	movl	(%rdi), %edi
	callq	gimp_drawable_merge_shadow
	movq	-8(%rbp), %rcx
	movl	(%rcx), %edi
	movl	-284(%rbp), %esi
	movl	-288(%rbp), %edx
	movl	-188(%rbp), %ecx
	movl	-192(%rbp), %r8d
	movl	%eax, -404(%rbp)        # 4-byte Spill
	callq	gimp_drawable_update
	movl	%eax, -408(%rbp)        # 4-byte Spill
.LBB4_67:                               # %if.end.215
	movq	-224(%rbp), %rdi
	callq	g_free
	movq	-240(%rbp), %rdi
	callq	g_free
	movq	-256(%rbp), %rdi
	callq	g_free
	movq	-208(%rbp), %rdi
	callq	g_free
.LBB4_68:                               # %return
	addq	$432, %rsp              # imm = 0x1B0
	popq	%rbp
	retq
.Lfunc_end4:
	.size	randomize, .Lfunc_end4-randomize
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI4_0:
	.quad	.LBB4_21
	.quad	.LBB4_22
	.quad	.LBB4_23
	.quad	.LBB4_24
	.quad	.LBB4_25
	.quad	.LBB4_26
	.quad	.LBB4_27
	.quad	.LBB4_28
	.quad	.LBB4_29

	.text
	.align	16, 0x90
	.type	randomize_prepare_row,@function
randomize_prepare_row:                  # @randomize_prepare_row
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp23:
	.cfi_def_cfa_offset 16
.Ltmp24:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp25:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	cmpl	$0, -24(%rbp)
	jg	.LBB5_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	-28(%rbp), %r8d
	movl	%eax, %ecx
	callq	gimp_pixel_rgn_get_row
	jmp	.LBB5_6
.LBB5_2:                                # %if.else
	movl	-24(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	36(%rcx), %eax
	jl	.LBB5_4
# BB#3:                                 # %if.then.2
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %eax
	subl	$1, %eax
	movl	-28(%rbp), %r8d
	movl	%eax, %ecx
	callq	gimp_pixel_rgn_get_row
	jmp	.LBB5_5
.LBB5_4:                                # %if.else.3
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	movl	-28(%rbp), %r8d
	callq	gimp_pixel_rgn_get_row
.LBB5_5:                                # %if.end
	jmp	.LBB5_6
.LBB5_6:                                # %if.end.4
	movl	$0, -32(%rbp)
.LBB5_7:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	16(%rcx), %eax
	jge	.LBB5_10
# BB#8:                                 # %for.body
                                        #   in Loop: Header=BB5_7 Depth=1
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
                                        #   in Loop: Header=BB5_7 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB5_7
.LBB5_10:                               # %for.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	randomize_prepare_row, .Lfunc_end5-randomize_prepare_row
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
	.size	query.args, 168

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"run_mode"
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
	.asciz	"rndm_pct"
	.size	.L.str.6, 9

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Randomization percentage (1.0 - 100.0)"
	.size	.L.str.7, 39

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"rndm_rcount"
	.size	.L.str.8, 12

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Repeat count (1.0 - 100.0)"
	.size	.L.str.9, 27

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"randomize"
	.size	.L.str.10, 10

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Use random seed { TRUE, FALSE }"
	.size	.L.str.11, 32

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"seed"
	.size	.L.str.12, 5

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Seed value (used only if randomize is FALSE)"
	.size	.L.str.13, 45

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Completely randomize a fraction of pixels"
	.size	.L.str.14, 42

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Randomly interchange some pixels with neighbors"
	.size	.L.str.15, 48

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Randomly slide some pixels downward (similar to melting)"
	.size	.L.str.16, 57

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"This plug-in ``hurls'' randomly-valued pixels onto the selection or image.  You may select the percentage of pixels to modify and the number of times to repeat the process."
	.size	.L.str.17, 173

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"This plug-in replaces a pixel with a random adjacent pixel.  You may select the percentage of pixels to modify and the number of times to repeat the process."
	.size	.L.str.18, 158

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"This plug-in slurs (melts like a bunch of icicles) an image.  You may select the percentage of pixels to modify and the number of times to repeat the process."
	.size	.L.str.19, 159

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"Miles O'Neal  <meo@rru.com>"
	.size	.L.str.20, 28

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Miles O'Neal, Spencer Kimball, Peter Mattis, Torsten Martinsen, Brian Degenhardt, Federico Mena Quintero, Stephen Norris, Daniel Cotting"
	.size	.L.str.21, 137

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"1995-1998"
	.size	.L.str.22, 10

	.type	PLUG_IN_PROC,@object    # @PLUG_IN_PROC
	.data
	.align	16
PLUG_IN_PROC:
	.quad	.L.str.28
	.quad	.L.str.29
	.quad	.L.str.30
	.size	PLUG_IN_PROC, 24

	.type	.L.str.23,@object       # @.str.23
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.23:
	.asciz	"_Hurl..."
	.size	.L.str.23, 9

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"RGB*, GRAY*, INDEXED*"
	.size	.L.str.24, 22

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"_Pick..."
	.size	.L.str.25, 9

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"_Slur..."
	.size	.L.str.26, 9

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"<Image>/Filters/Noise"
	.size	.L.str.27, 22

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"plug-in-randomize-hurl"
	.size	.L.str.28, 23

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"plug-in-randomize-pick"
	.size	.L.str.29, 23

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"plug-in-randomize-slur"
	.size	.L.str.30, 23

	.type	run.values,@object      # @run.values
	.local	run.values
	.comm	run.values,40,16
	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"gimp20-std-plug-ins"
	.size	.L.str.31, 20

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"UTF-8"
	.size	.L.str.32, 6

	.type	rndm_type,@object       # @rndm_type
	.data
	.align	4
rndm_type:
	.long	1                       # 0x1
	.size	rndm_type, 4

	.type	gr,@object              # @gr
	.local	gr
	.comm	gr,8,8
	.type	pivals,@object          # @pivals
	.align	8
pivals:
	.quad	4632233691727265792     # double 50
	.quad	4607182418800017408     # double 1
	.long	0                       # 0x0
	.long	10                      # 0xa
	.size	pivals, 24

	.type	.L.str.33,@object       # @.str.33
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.33:
	.asciz	"%s"
	.size	.L.str.33, 3

	.type	RNDM_NAME,@object       # @RNDM_NAME
	.data
	.align	16
RNDM_NAME:
	.quad	.L.str.46
	.quad	.L.str.47
	.quad	.L.str.48
	.size	RNDM_NAME, 24

	.type	.L.str.34,@object       # @.str.34
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.34:
	.asciz	"noise-randomize"
	.size	.L.str.34, 16

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"gimp-noise-randomize"
	.size	.L.str.35, 21

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"gtk-cancel"
	.size	.L.str.36, 11

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"gtk-ok"
	.size	.L.str.37, 7

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"invalidated"
	.size	.L.str.38, 12

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"_Random seed:"
	.size	.L.str.39, 14

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"spinbutton"
	.size	.L.str.40, 11

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"R_andomization (%):"
	.size	.L.str.41, 20

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"Percentage of pixels to be filtered"
	.size	.L.str.42, 36

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"value-changed"
	.size	.L.str.43, 14

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"R_epeat:"
	.size	.L.str.44, 9

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"Number of times to apply filter"
	.size	.L.str.45, 32

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"Random Hurl"
	.size	.L.str.46, 12

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"Random Pick"
	.size	.L.str.47, 12

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"Random Slur"
	.size	.L.str.48, 12


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
