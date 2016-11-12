	.text
	.file	"sgi.bc"
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
	movabsq	$.L.str.13, %rdi
	movabsq	$.L.str.14, %rsi
	movabsq	$.L.str.15, %rdx
	movabsq	$.L.str.16, %rcx
	movabsq	$.L.str.17, %r8
	movabsq	$.L.str.18, %r9
	movabsq	$.L.str.19, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %r11d
	movl	$1, %r10d
	movl	$3, %ebx
	movabsq	$query.load_args, %r14
	movabsq	$query.load_return_vals, %r15
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$3, 24(%rsp)
	movl	$1, 32(%rsp)
	movq	%r14, 40(%rsp)
	movq	%r15, 48(%rsp)
	movl	%r10d, -44(%rbp)        # 4-byte Spill
	movq	%r11, -56(%rbp)         # 8-byte Spill
	movl	%ebx, -60(%rbp)         # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.13, %rdi
	movabsq	$.L.str.20, %rsi
	callq	gimp_register_file_handler_mime
	movabsq	$.L.str.13, %rdi
	movabsq	$.L.str.21, %rsi
	movabsq	$.L.str.22, %rdx
	movabsq	$.L.str.23, %rcx
	movl	%eax, -64(%rbp)         # 4-byte Spill
	callq	gimp_register_magic_load_handler
	movabsq	$.L.str.24, %rdi
	movabsq	$.L.str.25, %rsi
	movabsq	$.L.str.26, %rdx
	movabsq	$.L.str.16, %rcx
	movabsq	$.L.str.17, %r8
	movabsq	$.L.str.18, %r9
	movabsq	$.L.str.19, %r11
	movabsq	$.L.str.27, %r14
	movl	$1, %r10d
	movl	$6, %ebx
	xorl	%r12d, %r12d
	movabsq	$query.save_args, %r15
	xorl	%r13d, %r13d
                                        # kill: R13<def> R13D<kill>
	movq	%r11, (%rsp)
	movq	%r14, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$6, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%r15, 40(%rsp)
	movq	$0, 48(%rsp)
	movl	%eax, -68(%rbp)         # 4-byte Spill
	movq	%r13, -80(%rbp)         # 8-byte Spill
	movl	%r10d, -84(%rbp)        # 4-byte Spill
	movl	%r12d, -88(%rbp)        # 4-byte Spill
	movl	%ebx, -92(%rbp)         # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.24, %rdi
	movabsq	$.L.str.20, %rsi
	callq	gimp_register_file_handler_mime
	movabsq	$.L.str.24, %rdi
	movabsq	$.L.str.21, %rsi
	movabsq	$.L.str.22, %rdx
	movl	%eax, -96(%rbp)         # 4-byte Spill
	callq	gimp_register_save_handler
	movl	%eax, -100(%rbp)        # 4-byte Spill
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
	subq	$128, %rsp
	movabsq	$run.values, %rax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	$3, -48(%rbp)
	movl	$0, -60(%rbp)
	movq	$0, -72(%rbp)
	movq	-24(%rbp), %rcx
	movl	8(%rcx), %esi
	movl	%esi, -44(%rbp)
	movq	-32(%rbp), %rcx
	movl	$1, (%rcx)
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	$21, run.values
	movl	$0, run.values+8
# BB#1:                                 # %do.body
	callq	gimp_locale_directory
	movabsq	$.L.str.28, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.28, %rdi
	movabsq	$.L.str.29, %rsi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.28, %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	textdomain
	movq	%rax, -96(%rbp)         # 8-byte Spill
# BB#2:                                 # %do.end
	movq	-8(%rbp), %rdi
	movl	$.L.str.13, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_7
# BB#3:                                 # %if.then
	leaq	-72(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	48(%rax), %rdi
	callq	load_image
	movl	%eax, -52(%rbp)
	cmpl	$-1, -52(%rbp)
	je	.LBB1_5
# BB#4:                                 # %if.then.9
	movq	-32(%rbp), %rax
	movl	$2, (%rax)
	movl	$13, run.values+40
	movl	-52(%rbp), %ecx
	movl	%ecx, run.values+48
	jmp	.LBB1_6
.LBB1_5:                                # %if.else
	movl	$0, -48(%rbp)
.LBB1_6:                                # %if.end
	jmp	.LBB1_36
.LBB1_7:                                # %if.else.10
	movq	-8(%rbp), %rdi
	movl	$.L.str.24, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_34
# BB#8:                                 # %if.then.13
	movq	-24(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -52(%rbp)
	movq	-24(%rbp), %rax
	movl	88(%rax), %ecx
	movl	%ecx, -56(%rbp)
	movl	-44(%rbp), %ecx
	orl	$2, %ecx
	subl	$2, %ecx
	movl	%ecx, -100(%rbp)        # 4-byte Spill
	je	.LBB1_9
	jmp	.LBB1_12
.LBB1_9:                                # %sw.bb
	movabsq	$.L.str.30, %rdi
	xorl	%esi, %esi
	callq	gimp_ui_init
	leaq	-52(%rbp), %rdi
	leaq	-56(%rbp), %rsi
	movabsq	$.L.str.31, %rdx
	movl	$19, %ecx
	callq	gimp_export_image
	movl	%eax, -60(%rbp)
	cmpl	$0, -60(%rbp)
	jne	.LBB1_11
# BB#10:                                # %if.then.22
	movl	$4, run.values+8
	jmp	.LBB1_40
.LBB1_11:                               # %if.end.23
	jmp	.LBB1_13
.LBB1_12:                               # %sw.default
	jmp	.LBB1_13
.LBB1_13:                               # %sw.epilog
	movl	-44(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
	je	.LBB1_14
	jmp	.LBB1_41
.LBB1_41:                               # %sw.epilog
	movl	-104(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
	je	.LBB1_17
	jmp	.LBB1_42
.LBB1_42:                               # %sw.epilog
	movl	-104(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
	je	.LBB1_24
	jmp	.LBB1_25
.LBB1_14:                               # %sw.bb.24
	movabsq	$.L.str.24, %rdi
	movabsq	$compression, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movl	%eax, -116(%rbp)        # 4-byte Spill
	callq	save_dialog
	cmpl	$0, %eax
	jne	.LBB1_16
# BB#15:                                # %if.then.27
	movl	$4, -48(%rbp)
.LBB1_16:                               # %if.end.28
	jmp	.LBB1_26
.LBB1_17:                               # %sw.bb.29
	cmpl	$6, -12(%rbp)
	je	.LBB1_19
# BB#18:                                # %if.then.31
	movl	$1, -48(%rbp)
	jmp	.LBB1_23
.LBB1_19:                               # %if.else.32
	movq	-24(%rbp), %rax
	movl	208(%rax), %ecx
	movl	%ecx, compression
	cmpl	$0, compression
	jl	.LBB1_21
# BB#20:                                # %lor.lhs.false
	cmpl	$2, compression
	jle	.LBB1_22
.LBB1_21:                               # %if.then.38
	movl	$1, -48(%rbp)
.LBB1_22:                               # %if.end.39
	jmp	.LBB1_23
.LBB1_23:                               # %if.end.40
	jmp	.LBB1_26
.LBB1_24:                               # %sw.bb.41
	movabsq	$.L.str.24, %rdi
	movabsq	$compression, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movl	%eax, -120(%rbp)        # 4-byte Spill
	jmp	.LBB1_26
.LBB1_25:                               # %sw.default.43
	jmp	.LBB1_26
.LBB1_26:                               # %sw.epilog.44
	cmpl	$3, -48(%rbp)
	jne	.LBB1_31
# BB#27:                                # %if.then.46
	leaq	-72(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	128(%rax), %rdi
	movl	-52(%rbp), %esi
	movl	-56(%rbp), %edx
	callq	save_image
	cmpl	$0, %eax
	je	.LBB1_29
# BB#28:                                # %if.then.52
	movabsq	$.L.str.24, %rdi
	movabsq	$compression, %rax
	movl	$4, %edx
	movq	%rax, %rsi
	callq	gimp_procedural_db_set_data
	movl	%eax, -124(%rbp)        # 4-byte Spill
	jmp	.LBB1_30
.LBB1_29:                               # %if.else.54
	movl	$0, -48(%rbp)
.LBB1_30:                               # %if.end.55
	jmp	.LBB1_31
.LBB1_31:                               # %if.end.56
	cmpl	$2, -60(%rbp)
	jne	.LBB1_33
# BB#32:                                # %if.then.58
	movl	-52(%rbp), %edi
	callq	gimp_image_delete
	movl	%eax, -128(%rbp)        # 4-byte Spill
.LBB1_33:                               # %if.end.60
	jmp	.LBB1_35
.LBB1_34:                               # %if.else.61
	movl	$1, -48(%rbp)
.LBB1_35:                               # %if.end.62
	jmp	.LBB1_36
.LBB1_36:                               # %if.end.63
	cmpl	$3, -48(%rbp)
	je	.LBB1_39
# BB#37:                                # %land.lhs.true
	cmpq	$0, -72(%rbp)
	je	.LBB1_39
# BB#38:                                # %if.then.66
	movq	-32(%rbp), %rax
	movl	$2, (%rax)
	movl	$4, run.values+40
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, run.values+48
.LBB1_39:                               # %if.end.67
	movl	-48(%rbp), %eax
	movl	%eax, run.values+8
.LBB1_40:                               # %return
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
	.quad	4636737291354636288     # double 100
.LCPI3_1:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	load_image,@function
load_image:                             # @load_image
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
	subq	$320, %rsp              # imm = 0x140
	xorl	%eax, %eax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	movl	%eax, %esi
	movl	%eax, %edx
	movl	%eax, %ecx
	movl	%eax, %r8d
	movl	%eax, %r9d
	movl	$0, (%rsp)
	callq	sgiOpen
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB3_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rdi
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	callq	g_file_error_quark
	movabsq	$.L.str.32, %rdi
	movl	%eax, -164(%rbp)        # 4-byte Spill
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movl	$24, %edx
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movl	-164(%rbp), %esi        # 4-byte Reload
	movq	-176(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_set_error
	movl	$-1, -4(%rbp)
	jmp	.LBB3_56
.LBB3_2:                                # %if.end
	movabsq	$.L.str.33, %rdi
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	gimp_progress_init_printf
	movq	-64(%rbp), %rsi
	movzwl	24(%rsi), %ecx
	cmpl	$0, %ecx
	movl	%eax, -188(%rbp)        # 4-byte Spill
	jne	.LBB3_4
# BB#3:                                 # %if.then.9
	movq	-24(%rbp), %rdi
	movq	%rdi, -200(%rbp)        # 8-byte Spill
	callq	g_file_error_quark
	movabsq	$.L.str.34, %rdi
	movl	%eax, -204(%rbp)        # 4-byte Spill
	callq	gettext
	movl	$24, %edx
	movq	-64(%rbp), %rdi
	movzwl	24(%rdi), %r8d
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movl	-204(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	g_set_error
	movl	$-1, -4(%rbp)
	jmp	.LBB3_56
.LBB3_4:                                # %if.end.14
	movq	-64(%rbp), %rax
	movzwl	26(%rax), %ecx
	cmpl	$0, %ecx
	jne	.LBB3_6
# BB#5:                                 # %if.then.18
	movq	-24(%rbp), %rdi
	movq	%rdi, -216(%rbp)        # 8-byte Spill
	callq	g_file_error_quark
	movabsq	$.L.str.35, %rdi
	movl	%eax, -220(%rbp)        # 4-byte Spill
	callq	gettext
	movl	$24, %edx
	movq	-64(%rbp), %rdi
	movzwl	26(%rdi), %r8d
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movl	-220(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	g_set_error
	movl	$-1, -4(%rbp)
	jmp	.LBB3_56
.LBB3_6:                                # %if.end.23
	movq	-64(%rbp), %rax
	movzwl	28(%rax), %ecx
	cmpl	$0, %ecx
	jne	.LBB3_8
# BB#7:                                 # %if.then.27
	movq	-24(%rbp), %rdi
	movq	%rdi, -232(%rbp)        # 8-byte Spill
	callq	g_file_error_quark
	movabsq	$.L.str.36, %rdi
	movl	%eax, -236(%rbp)        # 4-byte Spill
	callq	gettext
	movl	$24, %edx
	movq	-64(%rbp), %rdi
	movzwl	28(%rdi), %r8d
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movl	-236(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	g_set_error
	movl	$-1, -4(%rbp)
	jmp	.LBB3_56
.LBB3_8:                                # %if.end.32
	movq	-64(%rbp), %rax
	movzwl	28(%rax), %ecx
	movl	%ecx, -56(%rbp)
	movq	-64(%rbp), %rax
	movzwl	28(%rax), %ecx
	decl	%ecx
	movl	%ecx, %eax
	subl	$3, %ecx
	movq	%rax, -248(%rbp)        # 8-byte Spill
	movl	%ecx, -252(%rbp)        # 4-byte Spill
	ja	.LBB3_13
# BB#57:                                # %if.end.32
	movq	-248(%rbp), %rax        # 8-byte Reload
	movq	.LJTI3_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB3_9:                                # %sw.bb
	movl	$1, -40(%rbp)
	movl	$2, -44(%rbp)
	jmp	.LBB3_14
.LBB3_10:                               # %sw.bb.37
	movl	$1, -40(%rbp)
	movl	$3, -44(%rbp)
	jmp	.LBB3_14
.LBB3_11:                               # %sw.bb.38
	movl	$0, -40(%rbp)
	movl	$0, -44(%rbp)
	jmp	.LBB3_14
.LBB3_12:                               # %sw.bb.39
	movl	$0, -40(%rbp)
	movl	$1, -44(%rbp)
	jmp	.LBB3_14
.LBB3_13:                               # %sw.default
	movl	$0, -40(%rbp)
	movl	$1, -44(%rbp)
	movl	$4, -56(%rbp)
.LBB3_14:                               # %sw.epilog
	movq	-64(%rbp), %rax
	movzwl	24(%rax), %edi
	movq	-64(%rbp), %rax
	movzwl	26(%rax), %esi
	movl	-40(%rbp), %edx
	callq	gimp_image_new
	movl	%eax, -68(%rbp)
	cmpl	$-1, -68(%rbp)
	jne	.LBB3_16
# BB#15:                                # %if.then.47
	movq	-24(%rbp), %rdi
	movq	%rdi, -264(%rbp)        # 8-byte Spill
	callq	g_file_error_quark
	movl	%eax, -268(%rbp)        # 4-byte Spill
	callq	gimp_get_pdb_error
	movl	$24, %edx
	movabsq	$.L.str.37, %rcx
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movl	-268(%rbp), %esi        # 4-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_set_error
	movl	$-1, -4(%rbp)
	jmp	.LBB3_56
.LBB3_16:                               # %if.end.50
	movl	-68(%rbp), %edi
	movq	-16(%rbp), %rsi
	callq	gimp_image_set_filename
	movabsq	$.L.str.38, %rdi
	movl	-68(%rbp), %ecx
	movl	%eax, -272(%rbp)        # 4-byte Spill
	movl	%ecx, -276(%rbp)        # 4-byte Spill
	callq	gettext
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	xorl	%r9d, %r9d
	movq	-64(%rbp), %rsi
	movzwl	24(%rsi), %edx
	movq	-64(%rbp), %rsi
	movzwl	26(%rsi), %ecx
	movl	-44(%rbp), %r8d
	movl	-276(%rbp), %edi        # 4-byte Reload
	movq	%rax, %rsi
	callq	gimp_layer_new
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	xorl	%ecx, %ecx
	movl	%eax, -72(%rbp)
	movl	-68(%rbp), %edi
	movl	-72(%rbp), %esi
	callq	gimp_image_insert_layer
	movl	-72(%rbp), %edi
	movl	%eax, -280(%rbp)        # 4-byte Spill
	callq	gimp_drawable_get
	leaq	-128(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rsi
	movq	-80(%rbp), %rax
	movl	4(%rax), %r8d
	movq	-80(%rbp), %rax
	movl	8(%rax), %r9d
	movl	%edx, -284(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	$1, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	callq	gimp_tile_height
	movl	$8, %ecx
	movl	%ecx, %esi
	movl	%eax, -48(%rbp)
	movslq	-48(%rbp), %rdi
	callq	g_malloc_n
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	%rax, -136(%rbp)
	movslq	-48(%rbp), %rax
	movq	-64(%rbp), %rdi
	movzwl	24(%rdi), %ecx
	movl	%ecx, %edi
	imulq	%rdi, %rax
	movslq	-56(%rbp), %rdi
	imulq	%rdi, %rax
	movq	%rax, %rdi
	callq	g_malloc_n
	movq	-136(%rbp), %rsi
	movq	%rax, (%rsi)
	movl	$1, -28(%rbp)
.LBB3_17:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jge	.LBB3_20
# BB#18:                                # %for.body
                                        #   in Loop: Header=BB3_17 Depth=1
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	movq	-64(%rbp), %rcx
	movzwl	24(%rcx), %edx
	imull	-56(%rbp), %edx
	imull	-28(%rbp), %edx
	movslq	%edx, %rcx
	addq	%rcx, %rax
	movslq	-28(%rbp), %rcx
	movq	-136(%rbp), %rsi
	movq	%rax, (%rsi,%rcx,8)
# BB#19:                                # %for.inc
                                        #   in Loop: Header=BB3_17 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB3_17
.LBB3_20:                               # %for.end
	movl	$8, %eax
	movl	%eax, %esi
	movq	-64(%rbp), %rcx
	movzwl	28(%rcx), %eax
	movl	%eax, %edi
	callq	g_malloc_n
	movl	$2, %edx
	movl	%edx, %esi
	movq	%rax, -152(%rbp)
	movq	-64(%rbp), %rax
	movzwl	24(%rax), %edx
	movl	%edx, %eax
	movq	-64(%rbp), %rcx
	movzwl	28(%rcx), %edx
	movl	%edx, %ecx
	imulq	%rcx, %rax
	movq	%rax, %rdi
	callq	g_malloc_n
	movq	-152(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	$1, -28(%rbp)
.LBB3_21:                               # %for.cond.87
                                        # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	movq	-64(%rbp), %rcx
	movzwl	28(%rcx), %edx
	cmpl	%edx, %eax
	jge	.LBB3_24
# BB#22:                                # %for.body.92
                                        #   in Loop: Header=BB3_21 Depth=1
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movl	-28(%rbp), %ecx
	movq	-64(%rbp), %rdx
	movzwl	24(%rdx), %esi
	imull	%esi, %ecx
	movslq	%ecx, %rdx
	shlq	$1, %rdx
	addq	%rdx, %rax
	movslq	-28(%rbp), %rdx
	movq	-152(%rbp), %rdi
	movq	%rax, (%rdi,%rdx,8)
# BB#23:                                # %for.inc.101
                                        #   in Loop: Header=BB3_21 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB3_21
.LBB3_24:                               # %for.end.103
	movl	$0, -36(%rbp)
	movl	$0, -52(%rbp)
.LBB3_25:                               # %for.cond.104
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_29 Depth 2
                                        #     Child Loop BB3_36 Depth 2
                                        #       Child Loop BB3_38 Depth 3
                                        #     Child Loop BB3_45 Depth 2
                                        #       Child Loop BB3_47 Depth 3
	movl	-36(%rbp), %eax
	movq	-64(%rbp), %rcx
	movzwl	26(%rcx), %edx
	cmpl	%edx, %eax
	jge	.LBB3_55
# BB#26:                                # %for.body.109
                                        #   in Loop: Header=BB3_25 Depth=1
	movl	-52(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jl	.LBB3_28
# BB#27:                                # %if.then.112
                                        #   in Loop: Header=BB3_25 Depth=1
	movq	-136(%rbp), %rax
	movq	(%rax), %rsi
	movl	-36(%rbp), %ecx
	movl	-52(%rbp), %edx
	subl	%edx, %ecx
	movq	-80(%rbp), %rax
	movl	4(%rax), %r8d
	leaq	-128(%rbp), %rdi
	xorl	%r9d, %r9d
	movl	%edx, -288(%rbp)        # 4-byte Spill
	movl	%r9d, %edx
	movl	-288(%rbp), %r9d        # 4-byte Reload
	callq	gimp_pixel_rgn_set_rect
	movl	$0, -52(%rbp)
	cvtsi2sdl	-36(%rbp), %xmm0
	movq	-64(%rbp), %rax
	movzwl	26(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -292(%rbp)        # 4-byte Spill
.LBB3_28:                               # %if.end.119
                                        #   in Loop: Header=BB3_25 Depth=1
	movl	$0, -28(%rbp)
.LBB3_29:                               # %for.cond.120
                                        #   Parent Loop BB3_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-28(%rbp), %eax
	movq	-64(%rbp), %rcx
	movzwl	28(%rcx), %edx
	cmpl	%edx, %eax
	jge	.LBB3_34
# BB#30:                                # %for.body.125
                                        #   in Loop: Header=BB3_29 Depth=2
	movq	-64(%rbp), %rdi
	movslq	-28(%rbp), %rax
	movq	-152(%rbp), %rcx
	movq	(%rcx,%rax,8), %rsi
	movq	-64(%rbp), %rax
	movzwl	26(%rax), %edx
	subl	$1, %edx
	subl	-36(%rbp), %edx
	movl	-28(%rbp), %ecx
	callq	sgiGetRow
	cmpl	$0, %eax
	jge	.LBB3_32
# BB#31:                                # %if.then.135
                                        #   in Loop: Header=BB3_29 Depth=2
	movabsq	$.L.str.39, %rdi
	movq	-64(%rbp), %rax
	movzwl	26(%rax), %ecx
	subl	$1, %ecx
	subl	-36(%rbp), %ecx
	movl	-28(%rbp), %edx
	movl	%ecx, %esi
	movb	$0, %al
	callq	printf
	movl	%eax, -296(%rbp)        # 4-byte Spill
.LBB3_32:                               # %if.end.141
                                        #   in Loop: Header=BB3_29 Depth=2
	jmp	.LBB3_33
.LBB3_33:                               # %for.inc.142
                                        #   in Loop: Header=BB3_29 Depth=2
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB3_29
.LBB3_34:                               # %for.end.144
                                        #   in Loop: Header=BB3_25 Depth=1
	movq	-64(%rbp), %rax
	cmpl	$1, 12(%rax)
	jne	.LBB3_44
# BB#35:                                # %if.then.147
                                        #   in Loop: Header=BB3_25 Depth=1
	movl	$0, -32(%rbp)
	movslq	-52(%rbp), %rax
	movq	-136(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -144(%rbp)
.LBB3_36:                               # %for.cond.150
                                        #   Parent Loop BB3_25 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_38 Depth 3
	movl	-32(%rbp), %eax
	movq	-64(%rbp), %rcx
	movzwl	24(%rcx), %edx
	cmpl	%edx, %eax
	jge	.LBB3_43
# BB#37:                                # %for.body.155
                                        #   in Loop: Header=BB3_36 Depth=2
	movl	$0, -28(%rbp)
.LBB3_38:                               # %for.cond.156
                                        #   Parent Loop BB3_25 Depth=1
                                        #     Parent Loop BB3_36 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-28(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jge	.LBB3_41
# BB#39:                                # %for.body.159
                                        #   in Loop: Header=BB3_38 Depth=3
	movslq	-32(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movq	-152(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movw	(%rcx,%rax,2), %si
	movb	%sil, %dil
	movq	-144(%rbp), %rax
	movb	%dil, (%rax)
# BB#40:                                # %for.inc.165
                                        #   in Loop: Header=BB3_38 Depth=3
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	movq	-144(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -144(%rbp)
	jmp	.LBB3_38
.LBB3_41:                               # %for.end.167
                                        #   in Loop: Header=BB3_36 Depth=2
	jmp	.LBB3_42
.LBB3_42:                               # %for.inc.168
                                        #   in Loop: Header=BB3_36 Depth=2
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB3_36
.LBB3_43:                               # %for.end.170
                                        #   in Loop: Header=BB3_25 Depth=1
	jmp	.LBB3_53
.LBB3_44:                               # %if.else
                                        #   in Loop: Header=BB3_25 Depth=1
	movl	$0, -32(%rbp)
	movslq	-52(%rbp), %rax
	movq	-136(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -144(%rbp)
.LBB3_45:                               # %for.cond.173
                                        #   Parent Loop BB3_25 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_47 Depth 3
	movl	-32(%rbp), %eax
	movq	-64(%rbp), %rcx
	movzwl	24(%rcx), %edx
	cmpl	%edx, %eax
	jge	.LBB3_52
# BB#46:                                # %for.body.178
                                        #   in Loop: Header=BB3_45 Depth=2
	movl	$0, -28(%rbp)
.LBB3_47:                               # %for.cond.179
                                        #   Parent Loop BB3_25 Depth=1
                                        #     Parent Loop BB3_45 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-28(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jge	.LBB3_50
# BB#48:                                # %for.body.182
                                        #   in Loop: Header=BB3_47 Depth=3
	movslq	-32(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movq	-152(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movzwl	(%rcx,%rax,2), %esi
	sarl	$8, %esi
	movb	%sil, %dil
	movq	-144(%rbp), %rax
	movb	%dil, (%rax)
# BB#49:                                # %for.inc.189
                                        #   in Loop: Header=BB3_47 Depth=3
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	movq	-144(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -144(%rbp)
	jmp	.LBB3_47
.LBB3_50:                               # %for.end.192
                                        #   in Loop: Header=BB3_45 Depth=2
	jmp	.LBB3_51
.LBB3_51:                               # %for.inc.193
                                        #   in Loop: Header=BB3_45 Depth=2
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB3_45
.LBB3_52:                               # %for.end.195
                                        #   in Loop: Header=BB3_25 Depth=1
	jmp	.LBB3_53
.LBB3_53:                               # %if.end.196
                                        #   in Loop: Header=BB3_25 Depth=1
	jmp	.LBB3_54
.LBB3_54:                               # %for.inc.197
                                        #   in Loop: Header=BB3_25 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB3_25
.LBB3_55:                               # %for.end.200
	movsd	.LCPI3_1, %xmm0         # xmm0 = mem[0],zero
	callq	gimp_progress_update
	leaq	-128(%rbp), %rdi
	xorl	%edx, %edx
	movq	-136(%rbp), %rcx
	movq	(%rcx), %rsi
	movl	-36(%rbp), %r8d
	subl	-52(%rbp), %r8d
	movq	-80(%rbp), %rcx
	movl	4(%rcx), %r9d
	movl	-52(%rbp), %r10d
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	%eax, -300(%rbp)        # 4-byte Spill
	callq	gimp_pixel_rgn_set_rect
	movq	-64(%rbp), %rdi
	callq	sgiClose
	movq	-136(%rbp), %rsi
	movq	(%rsi), %rdi
	movl	%eax, -304(%rbp)        # 4-byte Spill
	callq	g_free
	movq	-136(%rbp), %rsi
	movq	%rsi, %rdi
	callq	g_free
	movq	-152(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, %rdi
	callq	g_free
	movq	-152(%rbp), %rsi
	movq	%rsi, %rdi
	callq	g_free
	movq	-80(%rbp), %rdi
	callq	gimp_drawable_flush
	movq	-80(%rbp), %rdi
	callq	gimp_drawable_detach
	movl	-68(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB3_56:                               # %return
	movl	-4(%rbp), %eax
	addq	$320, %rsp              # imm = 0x140
	popq	%rbp
	retq
.Lfunc_end3:
	.size	load_image, .Lfunc_end3-load_image
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI3_0:
	.quad	.LBB3_9
	.quad	.LBB3_10
	.quad	.LBB3_11
	.quad	.LBB3_12

	.text
	.align	16, 0x90
	.type	save_dialog,@function
save_dialog:                            # @save_dialog
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
	pushq	%r12
	pushq	%rbx
	subq	$176, %rsp
.Ltmp20:
	.cfi_offset %rbx, -48
.Ltmp21:
	.cfi_offset %r12, -40
.Ltmp22:
	.cfi_offset %r14, -32
.Ltmp23:
	.cfi_offset %r15, -24
	movabsq	$.L.str.31, %rdi
	callq	gettext
	movabsq	$.L.str.30, %rsi
	movabsq	$.L.str.24, %rdx
	movq	%rax, %rdi
	callq	gimp_export_dialog_new
	movabsq	$.L.str.40, %rdi
	movq	%rax, -40(%rbp)
	callq	gettext
	movabsq	$.L.str.41, %rdi
	movl	compression, %r8d
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movl	%r8d, -68(%rbp)         # 4-byte Spill
	callq	gettext
	movabsq	$.L.str.42, %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.43, %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gettext
	movl	$1, %edi
	movabsq	$gimp_radio_button_update, %rdx
	movabsq	$compression, %rsi
	xorl	%r8d, %r8d
	xorl	%ecx, %ecx
	movl	%ecx, %r9d
	movl	$2, %ecx
	movq	-64(%rbp), %r10         # 8-byte Reload
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	movq	%r10, %rsi
	movq	-96(%rbp), %r11         # 8-byte Reload
	movl	%ecx, -100(%rbp)        # 4-byte Spill
	movq	%r11, %rcx
	movl	-68(%rbp), %ebx         # 4-byte Reload
	movl	%r8d, -104(%rbp)        # 4-byte Spill
	movl	%ebx, %r8d
	movq	-80(%rbp), %r14         # 8-byte Reload
	movq	%r9, -112(%rbp)         # 8-byte Spill
	movq	%r14, %r9
	movl	$0, (%rsp)
	movq	$0, 8(%rsp)
	movq	-88(%rbp), %r15         # 8-byte Reload
	movq	%r15, 16(%rsp)
	movl	$1, 24(%rsp)
	movq	$0, 32(%rsp)
	movq	%rax, 40(%rsp)
	movl	$2, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movb	$0, %al
	callq	gimp_int_radio_group_new
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-40(%rbp), %rdi
	callq	gimp_export_dialog_get_content_area
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r8d
	xorl	%ebx, %ebx
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r8d, %edx
	movl	%r8d, %ecx
	movl	%ebx, %r8d
	callq	gtk_box_pack_start
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movq	-40(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_dialog_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dialog_run
	cmpl	$-5, %eax
	sete	%r12b
	andb	$1, %r12b
	movzbl	%r12b, %eax
	movl	%eax, -52(%rbp)
	movq	-40(%rbp), %rdi
	callq	gtk_widget_destroy
	movl	-52(%rbp), %eax
	addq	$176, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	save_dialog, .Lfunc_end4-save_dialog
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	save_image,@function
save_image:                             # @save_image
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
	subq	$256, %rsp              # imm = 0x100
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	-24(%rbp), %edi
	callq	gimp_drawable_get
	movq	%rax, -80(%rbp)
	movl	4(%rax), %r8d
	movl	8(%rax), %r9d
	movq	%rsp, %rcx
	movl	$0, 8(%rcx)
	movl	$0, (%rcx)
	leaq	-128(%rbp), %rdi
	xorl	%edx, %edx
	movq	%rax, %rsi
	movl	%edx, -156(%rbp)        # 4-byte Spill
	movl	-156(%rbp), %ecx        # 4-byte Reload
	callq	gimp_pixel_rgn_init
	movl	-24(%rbp), %edi
	callq	gimp_drawable_type
	movl	%eax, %ecx
	movl	%ecx, %esi
	subl	$3, %eax
	movq	%rsi, -168(%rbp)        # 8-byte Spill
	movl	%eax, -172(%rbp)        # 4-byte Spill
	ja	.LBB5_5
# BB#41:                                # %entry
	movq	-168(%rbp), %rax        # 8-byte Reload
	movq	.LJTI5_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB5_1:                                # %sw.bb
	movl	$1, -60(%rbp)
	jmp	.LBB5_6
.LBB5_2:                                # %sw.bb.2
	movl	$2, -60(%rbp)
	jmp	.LBB5_6
.LBB5_3:                                # %sw.bb.3
	movl	$3, -60(%rbp)
	jmp	.LBB5_6
.LBB5_4:                                # %sw.bb.4
	movl	$4, -60(%rbp)
	jmp	.LBB5_6
.LBB5_5:                                # %sw.default
	movabsq	$.L.str.44, %rdi
	callq	gettext
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_message
	movl	$0, -4(%rbp)
	jmp	.LBB5_40
.LBB5_6:                                # %sw.epilog
	movl	$1, %eax
	movq	-16(%rbp), %rdi
	movl	compression, %edx
	movq	-80(%rbp), %rcx
	movl	4(%rcx), %r8d
	movq	-80(%rbp), %rcx
	movl	8(%rcx), %r9d
	movl	-60(%rbp), %esi
	movl	%esi, -176(%rbp)        # 4-byte Spill
	movl	%eax, %esi
	movl	%eax, %ecx
	movl	-176(%rbp), %eax        # 4-byte Reload
	movl	%eax, (%rsp)
	callq	sgiOpen
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB5_8
# BB#7:                                 # %if.then
	movq	-32(%rbp), %rdi
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	callq	g_file_error_quark
	movabsq	$.L.str.45, %rdi
	movl	%eax, -188(%rbp)        # 4-byte Spill
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movl	$24, %edx
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movl	-188(%rbp), %esi        # 4-byte Reload
	movq	-200(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_set_error
	movl	$0, -4(%rbp)
	jmp	.LBB5_40
.LBB5_8:                                # %if.end
	movabsq	$.L.str.46, %rdi
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	gimp_progress_init_printf
	movl	%eax, -212(%rbp)        # 4-byte Spill
	callq	gimp_tile_height
	movl	$8, %ecx
	movl	%ecx, %esi
	movl	%eax, -52(%rbp)
	movslq	-52(%rbp), %rdi
	callq	g_malloc_n
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	%rax, -136(%rbp)
	movslq	-52(%rbp), %rax
	movq	-80(%rbp), %rdi
	movl	4(%rdi), %ecx
	movl	%ecx, %edi
	imulq	%rdi, %rax
	movslq	-60(%rbp), %rdi
	imulq	%rdi, %rax
	movq	%rax, %rdi
	callq	g_malloc_n
	movq	-136(%rbp), %rsi
	movq	%rax, (%rsi)
	movl	$1, -36(%rbp)
.LBB5_9:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jge	.LBB5_12
# BB#10:                                # %for.body
                                        #   in Loop: Header=BB5_9 Depth=1
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	movq	-80(%rbp), %rcx
	movl	4(%rcx), %edx
	imull	-60(%rbp), %edx
	imull	-36(%rbp), %edx
	movl	%edx, %edx
	movl	%edx, %ecx
	addq	%rcx, %rax
	movslq	-36(%rbp), %rcx
	movq	-136(%rbp), %rsi
	movq	%rax, (%rsi,%rcx,8)
# BB#11:                                # %for.inc
                                        #   in Loop: Header=BB5_9 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB5_9
.LBB5_12:                               # %for.end
	movl	$8, %eax
	movl	%eax, %esi
	movq	-72(%rbp), %rcx
	movzwl	28(%rcx), %eax
	movl	%eax, %edi
	callq	g_malloc_n
	movl	$2, %edx
	movl	%edx, %esi
	movq	%rax, -152(%rbp)
	movq	-72(%rbp), %rax
	movzwl	24(%rax), %edx
	movl	%edx, %eax
	movq	-72(%rbp), %rcx
	movzwl	28(%rcx), %edx
	movl	%edx, %ecx
	imulq	%rcx, %rax
	movq	%rax, %rdi
	callq	g_malloc_n
	movq	-152(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	$1, -36(%rbp)
.LBB5_13:                               # %for.cond.39
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	movq	-72(%rbp), %rcx
	movzwl	28(%rcx), %edx
	cmpl	%edx, %eax
	jge	.LBB5_16
# BB#14:                                # %for.body.44
                                        #   in Loop: Header=BB5_13 Depth=1
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movl	-36(%rbp), %ecx
	movq	-72(%rbp), %rdx
	movzwl	24(%rdx), %esi
	imull	%esi, %ecx
	movslq	%ecx, %rdx
	shlq	$1, %rdx
	addq	%rdx, %rax
	movslq	-36(%rbp), %rdx
	movq	-152(%rbp), %rdi
	movq	%rax, (%rdi,%rdx,8)
# BB#15:                                # %for.inc.53
                                        #   in Loop: Header=BB5_13 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB5_13
.LBB5_16:                               # %for.end.55
	movl	$0, -48(%rbp)
.LBB5_17:                               # %for.cond.56
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_22 Depth 2
                                        #       Child Loop BB5_24 Depth 3
                                        #         Child Loop BB5_26 Depth 4
                                        #       Child Loop BB5_32 Depth 3
	movl	-48(%rbp), %eax
	movq	-80(%rbp), %rcx
	cmpl	8(%rcx), %eax
	jae	.LBB5_39
# BB#18:                                # %for.body.60
                                        #   in Loop: Header=BB5_17 Depth=1
	movl	-48(%rbp), %eax
	addl	-52(%rbp), %eax
	movq	-80(%rbp), %rcx
	cmpl	8(%rcx), %eax
	jb	.LBB5_20
# BB#19:                                # %if.then.64
                                        #   in Loop: Header=BB5_17 Depth=1
	movq	-80(%rbp), %rax
	movl	8(%rax), %ecx
	subl	-48(%rbp), %ecx
	movl	%ecx, -56(%rbp)
	jmp	.LBB5_21
.LBB5_20:                               # %if.else
                                        #   in Loop: Header=BB5_17 Depth=1
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
.LBB5_21:                               # %if.end.66
                                        #   in Loop: Header=BB5_17 Depth=1
	leaq	-128(%rbp), %rdi
	xorl	%edx, %edx
	movq	-136(%rbp), %rax
	movq	(%rax), %rsi
	movl	-48(%rbp), %ecx
	movq	-80(%rbp), %rax
	movl	4(%rax), %r8d
	movl	-56(%rbp), %r9d
	callq	gimp_pixel_rgn_get_rect
	movl	$0, -36(%rbp)
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -144(%rbp)
.LBB5_22:                               # %for.cond.70
                                        #   Parent Loop BB5_17 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_24 Depth 3
                                        #         Child Loop BB5_26 Depth 4
                                        #       Child Loop BB5_32 Depth 3
	movl	-36(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jge	.LBB5_37
# BB#23:                                # %for.body.73
                                        #   in Loop: Header=BB5_22 Depth=2
	movl	$0, -44(%rbp)
.LBB5_24:                               # %for.cond.74
                                        #   Parent Loop BB5_17 Depth=1
                                        #     Parent Loop BB5_22 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB5_26 Depth 4
	movl	-44(%rbp), %eax
	movq	-80(%rbp), %rcx
	cmpl	4(%rcx), %eax
	jae	.LBB5_31
# BB#25:                                # %for.body.78
                                        #   in Loop: Header=BB5_24 Depth=3
	movl	$0, -40(%rbp)
.LBB5_26:                               # %for.cond.79
                                        #   Parent Loop BB5_17 Depth=1
                                        #     Parent Loop BB5_22 Depth=2
                                        #       Parent Loop BB5_24 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	-40(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jge	.LBB5_29
# BB#27:                                # %for.body.82
                                        #   in Loop: Header=BB5_26 Depth=4
	movq	-144(%rbp), %rax
	movb	(%rax), %cl
	movzbl	%cl, %edx
	movw	%dx, %si
	movslq	-44(%rbp), %rax
	movslq	-40(%rbp), %rdi
	movq	-152(%rbp), %r8
	movq	(%r8,%rdi,8), %rdi
	movw	%si, (%rdi,%rax,2)
# BB#28:                                # %for.inc.88
                                        #   in Loop: Header=BB5_26 Depth=4
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	movq	-144(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -144(%rbp)
	jmp	.LBB5_26
.LBB5_29:                               # %for.end.90
                                        #   in Loop: Header=BB5_24 Depth=3
	jmp	.LBB5_30
.LBB5_30:                               # %for.inc.91
                                        #   in Loop: Header=BB5_24 Depth=3
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB5_24
.LBB5_31:                               # %for.end.93
                                        #   in Loop: Header=BB5_22 Depth=2
	movl	$0, -40(%rbp)
.LBB5_32:                               # %for.cond.94
                                        #   Parent Loop BB5_17 Depth=1
                                        #     Parent Loop BB5_22 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-40(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jge	.LBB5_35
# BB#33:                                # %for.body.97
                                        #   in Loop: Header=BB5_32 Depth=3
	movq	-72(%rbp), %rdi
	movslq	-40(%rbp), %rax
	movq	-152(%rbp), %rcx
	movq	(%rcx,%rax,8), %rsi
	movq	-80(%rbp), %rax
	movl	8(%rax), %edx
	subl	$1, %edx
	subl	-48(%rbp), %edx
	subl	-36(%rbp), %edx
	movl	-40(%rbp), %ecx
	callq	sgiPutRow
	movl	%eax, -216(%rbp)        # 4-byte Spill
# BB#34:                                # %for.inc.105
                                        #   in Loop: Header=BB5_32 Depth=3
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB5_32
.LBB5_35:                               # %for.end.107
                                        #   in Loop: Header=BB5_22 Depth=2
	jmp	.LBB5_36
.LBB5_36:                               # %for.inc.108
                                        #   in Loop: Header=BB5_22 Depth=2
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB5_22
.LBB5_37:                               # %for.end.110
                                        #   in Loop: Header=BB5_17 Depth=1
	cvtsi2sdl	-48(%rbp), %xmm0
	movq	-80(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, %eax
	cvtsi2sdq	%rax, %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -220(%rbp)        # 4-byte Spill
# BB#38:                                # %for.inc.115
                                        #   in Loop: Header=BB5_17 Depth=1
	movl	-56(%rbp), %eax
	addl	-48(%rbp), %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB5_17
.LBB5_39:                               # %for.end.117
	movsd	.LCPI5_0, %xmm0         # xmm0 = mem[0],zero
	callq	gimp_progress_update
	movq	-72(%rbp), %rdi
	movl	%eax, -224(%rbp)        # 4-byte Spill
	callq	sgiClose
	movq	-136(%rbp), %rdi
	movq	(%rdi), %rdi
	movl	%eax, -228(%rbp)        # 4-byte Spill
	callq	g_free
	movq	-136(%rbp), %rdi
	callq	g_free
	movq	-152(%rbp), %rdi
	movq	(%rdi), %rdi
	callq	g_free
	movq	-152(%rbp), %rdi
	callq	g_free
	movl	$1, -4(%rbp)
.LBB5_40:                               # %return
	movl	-4(%rbp), %eax
	addq	$256, %rsp              # imm = 0x100
	popq	%rbp
	retq
.Lfunc_end5:
	.size	save_image, .Lfunc_end5-save_image
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI5_0:
	.quad	.LBB5_3
	.quad	.LBB5_4
	.quad	.LBB5_1
	.quad	.LBB5_2

	.text
	.align	16, 0x90
	.type	g_message,@function
g_message:                              # @g_message
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
	je	.LBB6_2
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
.LBB6_2:                                # %entry
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
.Lfunc_end6:
	.size	g_message, .Lfunc_end6-g_message
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

	.type	query.load_args,@object # @query.load_args
	.align	16
query.load_args:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str
	.quad	.L.str.1
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.2
	.quad	.L.str.3
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.4
	.quad	.L.str.3
	.size	query.load_args, 72

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
	.asciz	"filename"
	.size	.L.str.2, 9

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"The name of the file to load"
	.size	.L.str.3, 29

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"raw-filename"
	.size	.L.str.4, 13

	.type	query.load_return_vals,@object # @query.load_return_vals
	.section	.rodata,"a",@progbits
	.align	16
query.load_return_vals:
	.long	13                      # 0xd
	.zero	4
	.quad	.L.str.5
	.quad	.L.str.6
	.size	query.load_return_vals, 24

	.type	.L.str.5,@object        # @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"image"
	.size	.L.str.5, 6

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Output image"
	.size	.L.str.6, 13

	.type	query.save_args,@object # @query.save_args
	.section	.rodata,"a",@progbits
	.align	16
query.save_args:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str
	.quad	.L.str.1
	.long	13                      # 0xd
	.zero	4
	.quad	.L.str.5
	.quad	.L.str.7
	.long	16                      # 0x10
	.zero	4
	.quad	.L.str.8
	.quad	.L.str.9
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.2
	.quad	.L.str.10
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.4
	.quad	.L.str.10
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.11
	.quad	.L.str.12
	.size	query.save_args, 144

	.type	.L.str.7,@object        # @.str.7
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.7:
	.asciz	"Input image"
	.size	.L.str.7, 12

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"drawable"
	.size	.L.str.8, 9

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Drawable to save"
	.size	.L.str.9, 17

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"The name of the file to save the image in"
	.size	.L.str.10, 42

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"compression"
	.size	.L.str.11, 12

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Compression level (0 = none, 1 = RLE, 2 = ARLE)"
	.size	.L.str.12, 48

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"file-sgi-load"
	.size	.L.str.13, 14

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Loads files in SGI image file format"
	.size	.L.str.14, 37

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"This plug-in loads SGI image files."
	.size	.L.str.15, 36

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Michael Sweet <mike@easysw.com>"
	.size	.L.str.16, 32

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Copyright 1997-1998 by Michael Sweet"
	.size	.L.str.17, 37

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"1.1.1 - 17 May 1998"
	.size	.L.str.18, 20

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Silicon Graphics IRIS image"
	.size	.L.str.19, 28

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"image/x-sgi"
	.size	.L.str.20, 12

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"sgi,rgb,rgba,bw,icon"
	.size	.L.str.21, 21

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.zero	1
	.size	.L.str.22, 1

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"0,short,474"
	.size	.L.str.23, 12

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"file-sgi-save"
	.size	.L.str.24, 14

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Saves files in SGI image file format"
	.size	.L.str.25, 37

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"This plug-in saves SGI image files."
	.size	.L.str.26, 36

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"RGB*,GRAY*"
	.size	.L.str.27, 11

	.type	run.values,@object      # @run.values
	.local	run.values
	.comm	run.values,80,16
	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"gimp20-std-plug-ins"
	.size	.L.str.28, 20

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"UTF-8"
	.size	.L.str.29, 6

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"file-sgi"
	.size	.L.str.30, 9

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"SGI"
	.size	.L.str.31, 4

	.type	compression,@object     # @compression
	.data
	.align	4
compression:
	.long	1                       # 0x1
	.size	compression, 4

	.type	.L.str.32,@object       # @.str.32
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.32:
	.asciz	"Could not open '%s' for reading."
	.size	.L.str.32, 33

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"Opening '%s'"
	.size	.L.str.33, 13

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"Invalid width: %hu"
	.size	.L.str.34, 19

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"Invalid height: %hu"
	.size	.L.str.35, 20

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"Invalid number of channels: %hu"
	.size	.L.str.36, 32

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"Could not allocate new image: %s"
	.size	.L.str.37, 33

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"Background"
	.size	.L.str.38, 11

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"sgiGetRow(sgip, rows[i], %d, %d) failed!\n"
	.size	.L.str.39, 42

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"Compression type"
	.size	.L.str.40, 17

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"No compression"
	.size	.L.str.41, 15

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"RLE compression"
	.size	.L.str.42, 16

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"Aggressive RLE\n(not supported by SGI)"
	.size	.L.str.43, 38

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"Cannot operate on indexed color images."
	.size	.L.str.44, 40

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"Could not open '%s' for writing."
	.size	.L.str.45, 33

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"Saving '%s'"
	.size	.L.str.46, 12


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
