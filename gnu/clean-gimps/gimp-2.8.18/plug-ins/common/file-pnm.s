	.text
	.file	"file-pnm.bc"
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
	movabsq	$.L.str.13, %rdi
	movabsq	$.L.str.14, %rsi
	movabsq	$.L.str.15, %rdx
	movabsq	$.L.str.16, %rax
	movabsq	$.L.str.17, %r9
	movabsq	$.L.str.18, %rcx
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movl	$1, %r8d
	movl	$3, %r11d
	movabsq	$query.load_args, %rbx
	movabsq	$query.load_return_vals, %r14
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rcx
	movl	%r8d, -52(%rbp)         # 4-byte Spill
	movq	%rax, %r8
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$3, 24(%rsp)
	movl	$1, 32(%rsp)
	movq	%rbx, 40(%rsp)
	movq	%r14, 48(%rsp)
	movq	%r10, -64(%rbp)         # 8-byte Spill
	movl	%r11d, -68(%rbp)        # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.13, %rdi
	movabsq	$.L.str.19, %rsi
	callq	gimp_register_file_handler_mime
	movabsq	$.L.str.13, %rdi
	movabsq	$.L.str.20, %rsi
	movabsq	$.L.str.21, %rdx
	movabsq	$.L.str.22, %rcx
	movl	%eax, -72(%rbp)         # 4-byte Spill
	callq	gimp_register_magic_load_handler
	movabsq	$.L.str.23, %rdi
	movabsq	$.L.str.24, %rsi
	movabsq	$.L.str.25, %rdx
	movabsq	$.L.str.16, %rcx
	movabsq	$.L.str.17, %r9
	movabsq	$.L.str.26, %r8
	movabsq	$.L.str.27, %r10
	movl	$1, %r11d
	movl	$6, %r15d
	xorl	%r12d, %r12d
	movabsq	$query.save_args, %rbx
	xorl	%r13d, %r13d
	movl	%r13d, %r14d
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	movq	-80(%rbp), %r13         # 8-byte Reload
	movq	%r8, -88(%rbp)          # 8-byte Spill
	movq	%r13, %r8
	movq	-88(%rbp), %r13         # 8-byte Reload
	movq	%r13, (%rsp)
	movq	%r10, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$6, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%rbx, 40(%rsp)
	movq	$0, 48(%rsp)
	movl	%eax, -92(%rbp)         # 4-byte Spill
	movq	%r14, -104(%rbp)        # 8-byte Spill
	movl	%r12d, -108(%rbp)       # 4-byte Spill
	movl	%r15d, -112(%rbp)       # 4-byte Spill
	movl	%r11d, -116(%rbp)       # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.28, %rdi
	movabsq	$.L.str.29, %rsi
	movabsq	$.L.str.30, %rdx
	movabsq	$.L.str.31, %rcx
	movabsq	$.L.str.16, %r8
	movabsq	$.L.str.32, %r9
	movabsq	$.L.str.33, %r10
	movabsq	$.L.str.27, %rbx
	movl	$1, %eax
	movl	$6, %r11d
	xorl	%r15d, %r15d
	movabsq	$query.save_args, %r14
	xorl	%r12d, %r12d
	movl	%r12d, %r13d
	movq	%r10, (%rsp)
	movq	%rbx, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$6, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%r14, 40(%rsp)
	movq	$0, 48(%rsp)
	movq	%r13, -128(%rbp)        # 8-byte Spill
	movl	%eax, -132(%rbp)        # 4-byte Spill
	movl	%r15d, -136(%rbp)       # 4-byte Spill
	movl	%r11d, -140(%rbp)       # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.34, %rdi
	movabsq	$.L.str.35, %rsi
	movabsq	$.L.str.36, %rdx
	movabsq	$.L.str.16, %rcx
	movabsq	$.L.str.17, %r9
	movabsq	$.L.str.37, %r8
	movabsq	$.L.str.27, %r10
	movl	$1, %eax
	movl	$6, %r11d
	xorl	%r15d, %r15d
	movabsq	$query.save_args, %rbx
	xorl	%r12d, %r12d
	movl	%r12d, %r14d
	movq	%rcx, -152(%rbp)        # 8-byte Spill
	movq	-152(%rbp), %r13        # 8-byte Reload
	movq	%r8, -160(%rbp)         # 8-byte Spill
	movq	%r13, %r8
	movq	-160(%rbp), %r12        # 8-byte Reload
	movq	%r12, (%rsp)
	movq	%r10, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$6, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%rbx, 40(%rsp)
	movq	$0, 48(%rsp)
	movq	%r14, -168(%rbp)        # 8-byte Spill
	movl	%r15d, -172(%rbp)       # 4-byte Spill
	movl	%r11d, -176(%rbp)       # 4-byte Spill
	movl	%eax, -180(%rbp)        # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.38, %rdi
	movabsq	$.L.str.39, %rsi
	movabsq	$.L.str.40, %rdx
	movabsq	$.L.str.16, %rcx
	movabsq	$.L.str.17, %r9
	movabsq	$.L.str.41, %r8
	movabsq	$.L.str.27, %r10
	movl	$1, %eax
	movl	$6, %r11d
	xorl	%r15d, %r15d
	movabsq	$query.save_args, %rbx
	xorl	%r14d, %r14d
	movl	%r14d, %r12d
	movq	%rcx, -192(%rbp)        # 8-byte Spill
	movq	-192(%rbp), %r13        # 8-byte Reload
	movq	%r8, -200(%rbp)         # 8-byte Spill
	movq	%r13, %r8
	movq	-200(%rbp), %r14        # 8-byte Reload
	movq	%r14, (%rsp)
	movq	%r10, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$6, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%rbx, 40(%rsp)
	movq	$0, 48(%rsp)
	movq	%r12, -208(%rbp)        # 8-byte Spill
	movl	%r15d, -212(%rbp)       # 4-byte Spill
	movl	%r11d, -216(%rbp)       # 4-byte Spill
	movl	%eax, -220(%rbp)        # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.23, %rdi
	movabsq	$.L.str.19, %rsi
	callq	gimp_register_file_handler_mime
	movabsq	$.L.str.28, %rdi
	movabsq	$.L.str.42, %rsi
	movl	%eax, -224(%rbp)        # 4-byte Spill
	callq	gimp_register_file_handler_mime
	movabsq	$.L.str.34, %rdi
	movabsq	$.L.str.43, %rsi
	movl	%eax, -228(%rbp)        # 4-byte Spill
	callq	gimp_register_file_handler_mime
	movabsq	$.L.str.38, %rdi
	movabsq	$.L.str.44, %rsi
	movl	%eax, -232(%rbp)        # 4-byte Spill
	callq	gimp_register_file_handler_mime
	movabsq	$.L.str.23, %rdi
	movabsq	$.L.str.45, %rsi
	movabsq	$.L.str.21, %rdx
	movl	%eax, -236(%rbp)        # 4-byte Spill
	callq	gimp_register_save_handler
	movabsq	$.L.str.28, %rdi
	movabsq	$.L.str.46, %rsi
	movabsq	$.L.str.21, %rdx
	movl	%eax, -240(%rbp)        # 4-byte Spill
	callq	gimp_register_save_handler
	movabsq	$.L.str.34, %rdi
	movabsq	$.L.str.47, %rsi
	movabsq	$.L.str.21, %rdx
	movl	%eax, -244(%rbp)        # 4-byte Spill
	callq	gimp_register_save_handler
	movabsq	$.L.str.38, %rdi
	movabsq	$.L.str.48, %rsi
	movabsq	$.L.str.21, %rdx
	movl	%eax, -248(%rbp)        # 4-byte Spill
	callq	gimp_register_save_handler
	movl	%eax, -252(%rbp)        # 4-byte Spill
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
	movabsq	$run.values, %rax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	$3, -48(%rbp)
	movl	$0, -60(%rbp)
	movq	$0, -72(%rbp)
	movl	$0, -76(%rbp)
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
	movabsq	$.L.str.49, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.49, %rdi
	movabsq	$.L.str.50, %rsi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.49, %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	textdomain
	movq	%rax, -104(%rbp)        # 8-byte Spill
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
	jmp	.LBB1_45
.LBB1_7:                                # %if.else.10
	movq	-8(%rbp), %rdi
	movl	$.L.str.23, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB1_11
# BB#8:                                 # %lor.lhs.false
	movq	-8(%rbp), %rdi
	movl	$.L.str.28, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB1_11
# BB#9:                                 # %lor.lhs.false.15
	movq	-8(%rbp), %rdi
	movl	$.L.str.34, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB1_11
# BB#10:                                # %lor.lhs.false.18
	movq	-8(%rbp), %rdi
	movl	$.L.str.38, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_43
.LBB1_11:                               # %if.then.21
	movq	-24(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -52(%rbp)
	movq	-24(%rbp), %rax
	movl	88(%rax), %ecx
	movl	%ecx, -56(%rbp)
	movl	-44(%rbp), %ecx
	orl	$2, %ecx
	subl	$2, %ecx
	movl	%ecx, -108(%rbp)        # 4-byte Spill
	je	.LBB1_12
	jmp	.LBB1_24
.LBB1_12:                               # %sw.bb
	movabsq	$.L.str.51, %rdi
	xorl	%esi, %esi
	callq	gimp_ui_init
	movq	-8(%rbp), %rdi
	movl	$.L.str.23, %esi
                                        # kill: RSI<def> ESI<kill>
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_14
# BB#13:                                # %if.then.30
	leaq	-52(%rbp), %rdi
	leaq	-56(%rbp), %rsi
	movabsq	$.L.str.52, %rdx
	movl	$7, %ecx
	callq	gimp_export_image
	movl	%eax, -60(%rbp)
	jmp	.LBB1_21
.LBB1_14:                               # %if.else.32
	movq	-8(%rbp), %rdi
	movl	$.L.str.28, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_16
# BB#15:                                # %if.then.35
	leaq	-52(%rbp), %rdi
	leaq	-56(%rbp), %rsi
	movabsq	$.L.str.53, %rdx
	movl	$8, %ecx
	callq	gimp_export_image
	movl	%eax, -60(%rbp)
	movl	$1, -76(%rbp)
	jmp	.LBB1_20
.LBB1_16:                               # %if.else.37
	movq	-8(%rbp), %rdi
	movl	$.L.str.34, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_18
# BB#17:                                # %if.then.40
	leaq	-52(%rbp), %rdi
	leaq	-56(%rbp), %rsi
	movabsq	$.L.str.54, %rdx
	movl	$2, %ecx
	callq	gimp_export_image
	movl	%eax, -60(%rbp)
	jmp	.LBB1_19
.LBB1_18:                               # %if.else.42
	leaq	-52(%rbp), %rdi
	leaq	-56(%rbp), %rsi
	movabsq	$.L.str.55, %rdx
	movl	$5, %ecx
	callq	gimp_export_image
	movl	%eax, -60(%rbp)
.LBB1_19:                               # %if.end.44
	jmp	.LBB1_20
.LBB1_20:                               # %if.end.45
	jmp	.LBB1_21
.LBB1_21:                               # %if.end.46
	cmpl	$0, -60(%rbp)
	jne	.LBB1_23
# BB#22:                                # %if.then.48
	movl	$4, run.values+8
	jmp	.LBB1_49
.LBB1_23:                               # %if.end.49
	jmp	.LBB1_25
.LBB1_24:                               # %sw.default
	jmp	.LBB1_25
.LBB1_25:                               # %sw.epilog
	movl	-44(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
	je	.LBB1_26
	jmp	.LBB1_50
.LBB1_50:                               # %sw.epilog
	movl	-112(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
	je	.LBB1_29
	jmp	.LBB1_51
.LBB1_51:                               # %sw.epilog
	movl	-112(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
	je	.LBB1_33
	jmp	.LBB1_34
.LBB1_26:                               # %sw.bb.50
	movabsq	$psvals, %rax
	movq	-8(%rbp), %rdi
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movl	%eax, -124(%rbp)        # 4-byte Spill
	callq	save_dialog
	cmpl	$0, %eax
	jne	.LBB1_28
# BB#27:                                # %if.then.53
	movl	$4, -48(%rbp)
.LBB1_28:                               # %if.end.54
	jmp	.LBB1_35
.LBB1_29:                               # %sw.bb.55
	cmpl	$6, -12(%rbp)
	je	.LBB1_31
# BB#30:                                # %if.then.57
	movl	$1, -48(%rbp)
	jmp	.LBB1_32
.LBB1_31:                               # %if.else.58
	xorl	%eax, %eax
	movl	$1, %ecx
	movq	-24(%rbp), %rdx
	cmpl	$0, 208(%rdx)
	cmovnel	%ecx, %eax
	movl	%eax, psvals
	movq	-8(%rbp), %rdi
	movl	$.L.str.28, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	sete	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %eax
	movl	%eax, -76(%rbp)
.LBB1_32:                               # %if.end.65
	jmp	.LBB1_35
.LBB1_33:                               # %sw.bb.66
	movabsq	$psvals, %rax
	movq	-8(%rbp), %rdi
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movl	%eax, -128(%rbp)        # 4-byte Spill
	jmp	.LBB1_35
.LBB1_34:                               # %sw.default.68
	jmp	.LBB1_35
.LBB1_35:                               # %sw.epilog.69
	cmpl	$3, -48(%rbp)
	jne	.LBB1_40
# BB#36:                                # %if.then.72
	leaq	-72(%rbp), %r8
	movq	-24(%rbp), %rax
	movq	128(%rax), %rdi
	movl	-52(%rbp), %esi
	movl	-56(%rbp), %edx
	movl	-76(%rbp), %ecx
	callq	save_image
	cmpl	$0, %eax
	je	.LBB1_38
# BB#37:                                # %if.then.78
	movabsq	$psvals, %rax
	movl	$4, %edx
	movq	-8(%rbp), %rdi
	movq	%rax, %rsi
	callq	gimp_procedural_db_set_data
	movl	%eax, -132(%rbp)        # 4-byte Spill
	jmp	.LBB1_39
.LBB1_38:                               # %if.else.80
	movl	$0, -48(%rbp)
.LBB1_39:                               # %if.end.81
	jmp	.LBB1_40
.LBB1_40:                               # %if.end.82
	cmpl	$2, -60(%rbp)
	jne	.LBB1_42
# BB#41:                                # %if.then.85
	movl	-52(%rbp), %edi
	callq	gimp_image_delete
	movl	%eax, -136(%rbp)        # 4-byte Spill
.LBB1_42:                               # %if.end.87
	jmp	.LBB1_44
.LBB1_43:                               # %if.else.88
	movl	$1, -48(%rbp)
.LBB1_44:                               # %if.end.89
	jmp	.LBB1_45
.LBB1_45:                               # %if.end.90
	cmpl	$3, -48(%rbp)
	je	.LBB1_48
# BB#46:                                # %land.lhs.true
	cmpq	$0, -72(%rbp)
	je	.LBB1_48
# BB#47:                                # %if.then.94
	movq	-32(%rbp), %rax
	movl	$2, (%rax)
	movl	$4, run.values+40
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, run.values+48
.LBB1_48:                               # %if.end.95
	movl	-48(%rbp), %eax
	movl	%eax, run.values+8
.LBB1_49:                               # %return
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

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_0:
	.quad	4636737291354636288     # double 100
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
	subq	$752, %rsp              # imm = 0x2F0
	xorl	%eax, %eax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	$-1, -76(%rbp)
	movq	-16(%rbp), %rdi
	movl	%eax, %esi
	movl	%eax, %edx
	movb	$0, %al
	callq	open
	movl	%eax, -92(%rbp)
	cmpl	$-1, -92(%rbp)
	jne	.LBB3_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rdi
	movq	%rdi, -640(%rbp)        # 8-byte Spill
	callq	g_file_error_quark
	movl	%eax, -644(%rbp)        # 4-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_file_error_from_errno
	movabsq	$.L.str.56, %rdi
	movl	%eax, -648(%rbp)        # 4-byte Spill
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -656(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	%rax, -664(%rbp)        # 8-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_strerror
	movq	-640(%rbp), %rdi        # 8-byte Reload
	movl	-644(%rbp), %esi        # 4-byte Reload
	movl	-648(%rbp), %edx        # 4-byte Reload
	movq	-656(%rbp), %rcx        # 8-byte Reload
	movq	-664(%rbp), %r8         # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	g_set_error
	movl	$-1, -4(%rbp)
	jmp	.LBB3_52
.LBB3_2:                                # %if.end
	movabsq	$.L.str.57, %rdi
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -672(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	-672(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	gimp_progress_init_printf
	movl	$1, %ecx
	movl	%ecx, %edi
	movl	$232, %ecx
	movl	%ecx, %esi
	movl	%eax, -676(%rbp)        # 4-byte Spill
	callq	g_malloc_n
	movq	%rax, -616(%rbp)
	movq	$0, -624(%rbp)
	movq	-616(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	callq	_setjmp
	cmpl	$0, %eax
	je	.LBB3_8
# BB#3:                                 # %if.then.13
	movq	-624(%rbp), %rax
	cmpq	$0, %rax
	je	.LBB3_5
# BB#4:                                 # %if.then.15
	movq	-624(%rbp), %rdi
	callq	pnmscanner_destroy
.LBB3_5:                                # %if.end.16
	movl	-92(%rbp), %edi
	callq	close
	movq	-616(%rbp), %rcx
	movq	%rcx, %rdi
	movl	%eax, -680(%rbp)        # 4-byte Spill
	callq	g_free
	movl	-76(%rbp), %eax
	cmpl	$-1, %eax
	je	.LBB3_7
# BB#6:                                 # %if.then.19
	movl	-76(%rbp), %edi
	callq	gimp_image_delete
	movl	%eax, -684(%rbp)        # 4-byte Spill
.LBB3_7:                                # %if.end.21
	movl	$-1, -4(%rbp)
	jmp	.LBB3_52
.LBB3_8:                                # %if.end.22
	movl	-92(%rbp), %edi
	callq	pnmscanner_create
	movq	%rax, -624(%rbp)
	cmpq	$0, %rax
	jne	.LBB3_10
# BB#9:                                 # %if.then.25
	movl	$1, %esi
	movq	-616(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	callq	longjmp
.LBB3_10:                               # %if.end.28
	movl	$512, %edx              # imm = 0x200
	leaq	-608(%rbp), %rsi
	movq	-624(%rbp), %rdi
	callq	pnmscanner_gettoken
	movq	-624(%rbp), %rsi
	cmpl	$0, 8(%rsi)
	je	.LBB3_12
# BB#11:                                # %if.then.31
	movabsq	$.L.str.58, %rdi
	callq	gettext
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_message
	movl	$1, %esi
	movq	-616(%rbp), %rdi
	addq	$24, %rdi
	callq	longjmp
.LBB3_12:                               # %if.end.35
	movsbl	-608(%rbp), %eax
	cmpl	$80, %eax
	jne	.LBB3_14
# BB#13:                                # %lor.lhs.false
	movsbl	-606(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB3_15
.LBB3_14:                               # %if.then.41
	movabsq	$.L.str.59, %rdi
	callq	gettext
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_message
	movl	$1, %esi
	movq	-616(%rbp), %rdi
	addq	$24, %rdi
	callq	longjmp
.LBB3_15:                               # %if.end.45
	movl	$0, -628(%rbp)
.LBB3_16:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movabsq	$pnm_types, %rax
	movslq	-628(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	cmpb	$0, (%rax)
	je	.LBB3_21
# BB#17:                                # %for.body
                                        #   in Loop: Header=BB3_16 Depth=1
	movabsq	$pnm_types, %rax
	movsbl	-607(%rbp), %ecx
	movslq	-628(%rbp), %rdx
	imulq	$24, %rdx, %rdx
	addq	%rdx, %rax
	movsbl	(%rax), %esi
	cmpl	%esi, %ecx
	jne	.LBB3_19
# BB#18:                                # %if.then.56
                                        #   in Loop: Header=BB3_16 Depth=1
	movabsq	$pnm_types, %rax
	movslq	-628(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	movl	4(%rdx), %esi
	movq	-616(%rbp), %rcx
	movl	%esi, 12(%rcx)
	movslq	-628(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	movl	8(%rdx), %esi
	movq	-616(%rbp), %rcx
	movl	%esi, 16(%rcx)
	movslq	-628(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	movl	12(%rdx), %esi
	movq	-616(%rbp), %rcx
	movl	%esi, 8(%rcx)
	movslq	-628(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movq	16(%rax), %rax
	movq	-616(%rbp), %rcx
	movq	%rax, 224(%rcx)
.LBB3_19:                               # %if.end.69
                                        #   in Loop: Header=BB3_16 Depth=1
	jmp	.LBB3_20
.LBB3_20:                               # %for.inc
                                        #   in Loop: Header=BB3_16 Depth=1
	movl	-628(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -628(%rbp)
	jmp	.LBB3_16
.LBB3_21:                               # %for.end
	movq	-616(%rbp), %rax
	cmpq	$0, 224(%rax)
	jne	.LBB3_23
# BB#22:                                # %if.then.72
	movabsq	$.L.str.60, %rdi
	callq	gettext
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_message
	movl	$1, %esi
	movq	-616(%rbp), %rdi
	addq	$24, %rdi
	callq	longjmp
.LBB3_23:                               # %if.end.76
	movl	$512, %edx              # imm = 0x200
	leaq	-608(%rbp), %rsi
	movq	-624(%rbp), %rdi
	callq	pnmscanner_gettoken
	movq	-624(%rbp), %rsi
	cmpl	$0, 8(%rsi)
	je	.LBB3_25
# BB#24:                                # %if.then.80
	movabsq	$.L.str.58, %rdi
	callq	gettext
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_message
	movl	$1, %esi
	movq	-616(%rbp), %rdi
	addq	$24, %rdi
	callq	longjmp
.LBB3_25:                               # %if.end.84
	movzbl	-608(%rbp), %eax
	movl	%eax, %ecx
	movq	g_ascii_table, %rdx
	movzwl	(%rdx,%rcx,2), %eax
	andl	$8, %eax
	cmpl	$0, %eax
	je	.LBB3_27
# BB#26:                                # %cond.true
	leaq	-608(%rbp), %rdi
	callq	atoi
	movl	%eax, -688(%rbp)        # 4-byte Spill
	jmp	.LBB3_28
.LBB3_27:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, -688(%rbp)        # 4-byte Spill
	jmp	.LBB3_28
.LBB3_28:                               # %cond.end
	movl	-688(%rbp), %eax        # 4-byte Reload
	movq	-616(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	-616(%rbp), %rcx
	cmpl	$0, (%rcx)
	jg	.LBB3_30
# BB#29:                                # %if.then.96
	movabsq	$.L.str.61, %rdi
	callq	gettext
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_message
	movl	$1, %esi
	movq	-616(%rbp), %rdi
	addq	$24, %rdi
	callq	longjmp
.LBB3_30:                               # %if.end.100
	movq	-616(%rbp), %rax
	cmpl	$262144, (%rax)         # imm = 0x40000
	jle	.LBB3_32
# BB#31:                                # %if.then.104
	movabsq	$.L.str.62, %rdi
	callq	gettext
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_message
	movl	$1, %esi
	movq	-616(%rbp), %rdi
	addq	$24, %rdi
	callq	longjmp
.LBB3_32:                               # %if.end.108
	movl	$512, %edx              # imm = 0x200
	leaq	-608(%rbp), %rsi
	movq	-624(%rbp), %rdi
	callq	pnmscanner_gettoken
	movq	-624(%rbp), %rsi
	cmpl	$0, 8(%rsi)
	je	.LBB3_34
# BB#33:                                # %if.then.112
	movabsq	$.L.str.58, %rdi
	callq	gettext
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_message
	movl	$1, %esi
	movq	-616(%rbp), %rdi
	addq	$24, %rdi
	callq	longjmp
.LBB3_34:                               # %if.end.116
	movzbl	-608(%rbp), %eax
	movl	%eax, %ecx
	movq	g_ascii_table, %rdx
	movzwl	(%rdx,%rcx,2), %eax
	andl	$8, %eax
	cmpl	$0, %eax
	je	.LBB3_36
# BB#35:                                # %cond.true.124
	leaq	-608(%rbp), %rdi
	callq	atoi
	movl	%eax, -692(%rbp)        # 4-byte Spill
	jmp	.LBB3_37
.LBB3_36:                               # %cond.false.127
	xorl	%eax, %eax
	movl	%eax, -692(%rbp)        # 4-byte Spill
	jmp	.LBB3_37
.LBB3_37:                               # %cond.end.128
	movl	-692(%rbp), %eax        # 4-byte Reload
	movq	-616(%rbp), %rcx
	movl	%eax, 4(%rcx)
	movq	-616(%rbp), %rcx
	cmpl	$0, 4(%rcx)
	jg	.LBB3_39
# BB#38:                                # %if.then.133
	movabsq	$.L.str.63, %rdi
	callq	gettext
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_message
	movl	$1, %esi
	movq	-616(%rbp), %rdi
	addq	$24, %rdi
	callq	longjmp
.LBB3_39:                               # %if.end.137
	movq	-616(%rbp), %rax
	cmpl	$262144, 4(%rax)        # imm = 0x40000
	jle	.LBB3_41
# BB#40:                                # %if.then.141
	movabsq	$.L.str.64, %rdi
	callq	gettext
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_message
	movl	$1, %esi
	movq	-616(%rbp), %rdi
	addq	$24, %rdi
	callq	longjmp
.LBB3_41:                               # %if.end.145
	movq	-616(%rbp), %rax
	cmpl	$0, 12(%rax)
	je	.LBB3_51
# BB#42:                                # %if.then.149
	movl	$512, %edx              # imm = 0x200
	leaq	-608(%rbp), %rsi
	movq	-624(%rbp), %rdi
	callq	pnmscanner_gettoken
	movq	-624(%rbp), %rsi
	cmpl	$0, 8(%rsi)
	je	.LBB3_44
# BB#43:                                # %if.then.153
	movabsq	$.L.str.58, %rdi
	callq	gettext
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_message
	movl	$1, %esi
	movq	-616(%rbp), %rdi
	addq	$24, %rdi
	callq	longjmp
.LBB3_44:                               # %if.end.157
	movzbl	-608(%rbp), %eax
	movl	%eax, %ecx
	movq	g_ascii_table, %rdx
	movzwl	(%rdx,%rcx,2), %eax
	andl	$8, %eax
	cmpl	$0, %eax
	je	.LBB3_46
# BB#45:                                # %cond.true.165
	leaq	-608(%rbp), %rdi
	callq	atoi
	movl	%eax, -696(%rbp)        # 4-byte Spill
	jmp	.LBB3_47
.LBB3_46:                               # %cond.false.168
	xorl	%eax, %eax
	movl	%eax, -696(%rbp)        # 4-byte Spill
	jmp	.LBB3_47
.LBB3_47:                               # %cond.end.169
	movl	-696(%rbp), %eax        # 4-byte Reload
	movq	-616(%rbp), %rcx
	movl	%eax, 8(%rcx)
	movq	-616(%rbp), %rcx
	cmpl	$0, 8(%rcx)
	jle	.LBB3_49
# BB#48:                                # %lor.lhs.false.175
	movq	-616(%rbp), %rax
	cmpl	$65535, 8(%rax)         # imm = 0xFFFF
	jle	.LBB3_50
.LBB3_49:                               # %if.then.179
	movabsq	$.L.str.65, %rdi
	callq	gettext
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_message
	movl	$1, %esi
	movq	-616(%rbp), %rdi
	addq	$24, %rdi
	callq	longjmp
.LBB3_50:                               # %if.end.183
	jmp	.LBB3_51
.LBB3_51:                               # %if.end.184
	movl	$1, %eax
	xorl	%ecx, %ecx
	movq	-616(%rbp), %rdx
	movl	(%rdx), %edi
	movq	-616(%rbp), %rdx
	movl	4(%rdx), %esi
	movq	-616(%rbp), %rdx
	cmpl	$3, 12(%rdx)
	cmovgel	%ecx, %eax
	movl	%eax, %edx
	callq	gimp_image_new
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %edi
	movq	-16(%rbp), %rsi
	callq	gimp_image_set_filename
	movabsq	$.L.str.66, %rdi
	movl	-76(%rbp), %ecx
	movl	%eax, -700(%rbp)        # 4-byte Spill
	movl	%ecx, -704(%rbp)        # 4-byte Spill
	callq	gettext
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	xorl	%ecx, %ecx
	movl	$2, %edx
	movq	-616(%rbp), %rsi
	movl	(%rsi), %r8d
	movq	-616(%rbp), %rsi
	movl	4(%rsi), %r9d
	movq	-616(%rbp), %rsi
	cmpl	$3, 12(%rsi)
	cmovgel	%ecx, %edx
	movl	-704(%rbp), %edi        # 4-byte Reload
	movq	%rax, %rsi
	movl	%edx, -708(%rbp)        # 4-byte Spill
	movl	%r8d, %edx
	movl	%ecx, -712(%rbp)        # 4-byte Spill
	movl	%r9d, %ecx
	movl	-708(%rbp), %r8d        # 4-byte Reload
	movl	-712(%rbp), %r9d        # 4-byte Reload
	callq	gimp_layer_new
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	xorl	%ecx, %ecx
	movl	%eax, -80(%rbp)
	movl	-76(%rbp), %edi
	movl	-80(%rbp), %esi
	callq	gimp_image_insert_layer
	movl	-80(%rbp), %edi
	movl	%eax, -716(%rbp)        # 4-byte Spill
	callq	gimp_drawable_get
	leaq	-72(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rsi
	movq	-88(%rbp), %rax
	movl	4(%rax), %r8d
	movq	-88(%rbp), %rax
	movl	8(%rax), %r9d
	movl	%edx, -720(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	$1, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	leaq	-72(%rbp), %rdx
	movq	-616(%rbp), %rax
	movq	224(%rax), %rax
	movq	-624(%rbp), %rdi
	movq	-616(%rbp), %rsi
	callq	*%rax
	movq	-624(%rbp), %rdi
	callq	pnmscanner_destroy
	movq	-616(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	movl	-92(%rbp), %edi
	callq	close
	movq	-88(%rbp), %rdi
	movl	%eax, -724(%rbp)        # 4-byte Spill
	callq	gimp_drawable_flush
	movl	-76(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB3_52:                               # %return
	movl	-4(%rbp), %eax
	addq	$752, %rsp              # imm = 0x2F0
	popq	%rbp
	retq
.Lfunc_end3:
	.size	load_image, .Lfunc_end3-load_image
	.cfi_endproc

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
	pushq	%rbx
	subq	$152, %rsp
.Ltmp20:
	.cfi_offset %rbx, -24
	movabsq	$.L.str.52, %rdi
	callq	gettext
	movabsq	$.L.str.51, %rsi
	movabsq	$.L.str.23, %rdx
	movq	%rax, %rdi
	callq	gimp_export_dialog_new
	movabsq	$.L.str.68, %rdi
	movq	%rax, -16(%rbp)
	callq	gettext
	movabsq	$.L.str.69, %rdi
	movl	psvals, %r8d
	movq	%rax, -40(%rbp)         # 8-byte Spill
	movl	%r8d, -44(%rbp)         # 4-byte Spill
	callq	gettext
	movabsq	$.L.str.70, %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gettext
	movl	$1, %edi
	movabsq	$gimp_radio_button_update, %rdx
	movabsq	$psvals, %rsi
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	xorl	%r8d, %r8d
	movq	-40(%rbp), %r9          # 8-byte Reload
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	movq	%r9, %rsi
	movq	-64(%rbp), %r10         # 8-byte Reload
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	movq	%r10, %rcx
	movl	-44(%rbp), %r11d        # 4-byte Reload
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	movl	%r11d, %r8d
	movq	-56(%rbp), %r9          # 8-byte Reload
	movl	$1, (%rsp)
	movq	$0, 8(%rsp)
	movq	%rax, 16(%rsp)
	movl	$0, 24(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 40(%rsp)
	movb	$0, %al
	callq	gimp_int_radio_group_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-16(%rbp), %rdi
	callq	gimp_export_dialog_get_content_area
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r8d, %r8d
	movl	$1, %ecx
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r8d, %edx
	callq	gtk_box_pack_start
	movq	-24(%rbp), %rdi
	callq	gtk_widget_show
	movq	-16(%rbp), %rdi
	callq	gtk_widget_show
	movq	-16(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_dialog_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dialog_run
	cmpl	$-5, %eax
	sete	%bl
	andb	$1, %bl
	movzbl	%bl, %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rdi
	callq	gtk_widget_destroy
	movl	-28(%rbp), %eax
	addq	$152, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end4:
	.size	save_dialog, .Lfunc_end4-save_dialog
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_0:
	.quad	4620693217682128896     # double 8
.LCPI5_1:
	.quad	4589866978952703325     # double 0.0722
.LCPI5_2:
	.quad	4604617168452267173     # double 0.71519999999999995
.LCPI5_3:
	.quad	4596827742536767164     # double 0.21260000000000001
.LCPI5_4:
	.quad	4638707616191610880     # double 128
.LCPI5_5:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	save_image,@function
save_image:                             # @save_image
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
	subq	$1824, %rsp             # imm = 0x720
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	%r8, -40(%rbp)
	movq	$0, -168(%rbp)
	movl	$0, -1492(%rbp)
	movl	$0, -1512(%rbp)
	movl	-24(%rbp), %edi
	callq	gimp_drawable_get
	movq	%rax, -96(%rbp)
	movl	-24(%rbp), %edi
	callq	gimp_drawable_type
	leaq	-88(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	%eax, -100(%rbp)
	movq	-96(%rbp), %rsi
	movq	-96(%rbp), %r8
	movl	4(%r8), %r8d
	movq	-96(%rbp), %r9
	movl	8(%r9), %r9d
	movl	%ecx, %edx
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	movl	-24(%rbp), %edi
	callq	gimp_drawable_has_alpha
	cmpl	$0, %eax
	je	.LBB5_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.71, %rdi
	callq	gettext
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_message
	movl	$0, -4(%rbp)
	jmp	.LBB5_54
.LBB5_2:                                # %if.end
	movl	$577, %esi              # imm = 0x241
	movl	$438, %edx              # imm = 0x1B6
	movq	-16(%rbp), %rdi
	movb	$0, %al
	callq	open
	movl	%eax, -1516(%rbp)
	cmpl	$-1, -1516(%rbp)
	jne	.LBB5_4
# BB#3:                                 # %if.then.5
	movq	-40(%rbp), %rdi
	movq	%rdi, -1560(%rbp)       # 8-byte Spill
	callq	g_file_error_quark
	movl	%eax, -1564(%rbp)       # 4-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_file_error_from_errno
	movabsq	$.L.str.72, %rdi
	movl	%eax, -1568(%rbp)       # 4-byte Spill
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -1576(%rbp)       # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	%rax, -1584(%rbp)       # 8-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_strerror
	movq	-1560(%rbp), %rdi       # 8-byte Reload
	movl	-1564(%rbp), %esi       # 4-byte Reload
	movl	-1568(%rbp), %edx       # 4-byte Reload
	movq	-1576(%rbp), %rcx       # 8-byte Reload
	movq	-1584(%rbp), %r8        # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	g_set_error
	movl	$0, -4(%rbp)
	jmp	.LBB5_54
.LBB5_4:                                # %if.end.13
	movabsq	$.L.str.73, %rdi
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -1592(%rbp)       # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	-1592(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	gimp_progress_init_printf
	movq	-96(%rbp), %rsi
	movl	4(%rsi), %ecx
	movl	%ecx, -1496(%rbp)
	movq	-96(%rbp), %rsi
	movl	8(%rsi), %ecx
	movl	%ecx, -1500(%rbp)
	cmpl	$0, psvals
	movl	%eax, -1596(%rbp)       # 4-byte Spill
	jne	.LBB5_14
# BB#5:                                 # %if.then.20
	cmpl	$0, -28(%rbp)
	je	.LBB5_7
# BB#6:                                 # %if.then.22
	movabsq	$.L.str.74, %rsi
	movl	$3, %eax
	movl	%eax, %edx
	movl	-1516(%rbp), %edi
	callq	write
	movabsq	$pnmsaverow_ascii_pbm, %rdx
	movl	$70, %edi
	movl	$0, -1492(%rbp)
	movl	-1496(%rbp), %ecx
	movl	-1496(%rbp), %r8d
	movq	%rax, -1608(%rbp)       # 8-byte Spill
	movl	%r8d, %eax
	movq	%rdx, -1616(%rbp)       # 8-byte Spill
	cltd
	idivl	%edi
	addl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -1512(%rbp)
	movq	-1616(%rbp), %rsi       # 8-byte Reload
	movq	%rsi, -168(%rbp)
	jmp	.LBB5_13
.LBB5_7:                                # %if.else
	movl	-100(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -1620(%rbp)       # 4-byte Spill
	je	.LBB5_9
	jmp	.LBB5_55
.LBB5_55:                               # %if.else
	movl	-1620(%rbp), %eax       # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -1624(%rbp)       # 4-byte Spill
	je	.LBB5_8
	jmp	.LBB5_56
.LBB5_56:                               # %if.else
	movl	-1620(%rbp), %eax       # 4-byte Reload
	subl	$4, %eax
	movl	%eax, -1628(%rbp)       # 4-byte Spill
	je	.LBB5_10
	jmp	.LBB5_11
.LBB5_8:                                # %sw.bb
	movabsq	$.L.str.75, %rsi
	movl	$3, %eax
	movl	%eax, %edx
	movl	-1516(%rbp), %edi
	callq	write
	movabsq	$pnmsaverow_ascii, %rdx
	movl	$1, -1492(%rbp)
	movl	-1496(%rbp), %edi
	shll	$2, %edi
	movl	%edi, -1512(%rbp)
	movq	%rdx, -168(%rbp)
	movq	%rax, -1640(%rbp)       # 8-byte Spill
	jmp	.LBB5_12
.LBB5_9:                                # %sw.bb.26
	movabsq	$.L.str.76, %rsi
	movl	$3, %eax
	movl	%eax, %edx
	movl	-1516(%rbp), %edi
	callq	write
	movabsq	$pnmsaverow_ascii, %rdx
	movl	$3, -1492(%rbp)
	imull	$12, -1496(%rbp), %edi
	movl	%edi, -1512(%rbp)
	movq	%rdx, -168(%rbp)
	movq	%rax, -1648(%rbp)       # 8-byte Spill
	jmp	.LBB5_12
.LBB5_10:                               # %sw.bb.29
	movabsq	$.L.str.76, %rsi
	movl	$3, %eax
	movl	%eax, %edx
	movl	-1516(%rbp), %edi
	callq	write
	movabsq	$pnmsaverow_ascii_indexed, %rdx
	movl	$1, -1492(%rbp)
	imull	$12, -1496(%rbp), %edi
	movl	%edi, -1512(%rbp)
	movq	%rdx, -168(%rbp)
	movq	%rax, -1656(%rbp)       # 8-byte Spill
	jmp	.LBB5_12
.LBB5_11:                               # %sw.default
	movabsq	$.L.str.77, %rdi
	movb	$0, %al
	callq	g_warning
	movl	$0, -4(%rbp)
	jmp	.LBB5_54
.LBB5_12:                               # %sw.epilog
	jmp	.LBB5_13
.LBB5_13:                               # %if.end.32
	jmp	.LBB5_23
.LBB5_14:                               # %if.else.33
	cmpl	$0, -28(%rbp)
	je	.LBB5_16
# BB#15:                                # %if.then.35
	movabsq	$.L.str.78, %rsi
	movl	$3, %eax
	movl	%eax, %edx
	movl	-1516(%rbp), %edi
	callq	write
	movabsq	$pnmsaverow_raw_pbm, %rdx
	movsd	.LCPI5_0, %xmm0         # xmm0 = mem[0],zero
	movl	$0, -1492(%rbp)
	cvtsi2sdl	-1496(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	movq	%rax, -1664(%rbp)       # 8-byte Spill
	movq	%rdx, -1672(%rbp)       # 8-byte Spill
	callq	ceil
	cvttsd2si	%xmm0, %edi
	movl	%edi, -1512(%rbp)
	movq	-1672(%rbp), %rax       # 8-byte Reload
	movq	%rax, -168(%rbp)
	jmp	.LBB5_22
.LBB5_16:                               # %if.else.40
	movl	-100(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -1676(%rbp)       # 4-byte Spill
	je	.LBB5_18
	jmp	.LBB5_57
.LBB5_57:                               # %if.else.40
	movl	-1676(%rbp), %eax       # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -1680(%rbp)       # 4-byte Spill
	je	.LBB5_17
	jmp	.LBB5_58
.LBB5_58:                               # %if.else.40
	movl	-1676(%rbp), %eax       # 4-byte Reload
	subl	$4, %eax
	movl	%eax, -1684(%rbp)       # 4-byte Spill
	je	.LBB5_19
	jmp	.LBB5_20
.LBB5_17:                               # %sw.bb.41
	movabsq	$.L.str.79, %rsi
	movl	$3, %eax
	movl	%eax, %edx
	movl	-1516(%rbp), %edi
	callq	write
	movabsq	$pnmsaverow_raw, %rdx
	movl	$1, -1492(%rbp)
	movl	-1496(%rbp), %edi
	movl	%edi, -1512(%rbp)
	movq	%rdx, -168(%rbp)
	movq	%rax, -1696(%rbp)       # 8-byte Spill
	jmp	.LBB5_21
.LBB5_18:                               # %sw.bb.43
	movabsq	$.L.str.80, %rsi
	movl	$3, %eax
	movl	%eax, %edx
	movl	-1516(%rbp), %edi
	callq	write
	movabsq	$pnmsaverow_raw, %rdx
	movl	$3, -1492(%rbp)
	imull	$3, -1496(%rbp), %edi
	movl	%edi, -1512(%rbp)
	movq	%rdx, -168(%rbp)
	movq	%rax, -1704(%rbp)       # 8-byte Spill
	jmp	.LBB5_21
.LBB5_19:                               # %sw.bb.46
	movabsq	$.L.str.80, %rsi
	movl	$3, %eax
	movl	%eax, %edx
	movl	-1516(%rbp), %edi
	callq	write
	movabsq	$pnmsaverow_raw_indexed, %rdx
	movl	$1, -1492(%rbp)
	imull	$3, -1496(%rbp), %edi
	movl	%edi, -1512(%rbp)
	movq	%rdx, -168(%rbp)
	movq	%rax, -1712(%rbp)       # 8-byte Spill
	jmp	.LBB5_21
.LBB5_20:                               # %sw.default.49
	movabsq	$.L.str.77, %rdi
	movb	$0, %al
	callq	g_warning
	movl	$0, -4(%rbp)
	jmp	.LBB5_54
.LBB5_21:                               # %sw.epilog.50
	jmp	.LBB5_22
.LBB5_22:                               # %if.end.51
	jmp	.LBB5_23
.LBB5_23:                               # %if.end.52
	movl	$0, -112(%rbp)
	cmpl	$4, -100(%rbp)
	jne	.LBB5_36
# BB#24:                                # %if.then.55
	leaq	-1532(%rbp), %rsi
	movl	-20(%rbp), %edi
	callq	gimp_image_get_colormap
	movq	%rax, -1528(%rbp)
	cmpl	$0, -28(%rbp)
	je	.LBB5_30
# BB#25:                                # %if.then.58
	movl	-1532(%rbp), %eax
	movl	%eax, %ecx
	subl	$1, %ecx
	movl	%eax, -1716(%rbp)       # 4-byte Spill
	movl	%ecx, -1720(%rbp)       # 4-byte Spill
	je	.LBB5_26
	jmp	.LBB5_59
.LBB5_59:                               # %if.then.58
	movl	-1716(%rbp), %eax       # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -1724(%rbp)       # 4-byte Spill
	je	.LBB5_27
	jmp	.LBB5_28
.LBB5_26:                               # %sw.bb.59
	movsd	.LCPI5_4, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI5_1, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI5_2, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI5_3, %xmm3         # xmm3 = mem[0],zero
	movq	-1528(%rbp), %rax
	movzbl	(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm4
	mulsd	%xmm3, %xmm4
	movq	-1528(%rbp), %rax
	movzbl	1(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm3
	mulsd	%xmm2, %xmm3
	addsd	%xmm3, %xmm4
	movq	-1528(%rbp), %rax
	movzbl	2(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm2
	mulsd	%xmm1, %xmm2
	addsd	%xmm2, %xmm4
	ucomisd	%xmm4, %xmm0
	seta	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	movl	%ecx, -112(%rbp)
	jmp	.LBB5_29
.LBB5_27:                               # %sw.bb.76
	movsd	.LCPI5_1, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI5_2, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI5_3, %xmm2         # xmm2 = mem[0],zero
	movq	-1528(%rbp), %rax
	movzbl	(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm3
	mulsd	%xmm2, %xmm3
	movq	-1528(%rbp), %rax
	movzbl	1(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm4
	mulsd	%xmm1, %xmm4
	addsd	%xmm4, %xmm3
	movq	-1528(%rbp), %rax
	movzbl	2(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm4
	mulsd	%xmm0, %xmm4
	addsd	%xmm4, %xmm3
	movq	-1528(%rbp), %rax
	movzbl	3(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm4
	mulsd	%xmm2, %xmm4
	movq	-1528(%rbp), %rax
	movzbl	4(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm2
	mulsd	%xmm1, %xmm2
	addsd	%xmm2, %xmm4
	movq	-1528(%rbp), %rax
	movzbl	5(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm1
	mulsd	%xmm0, %xmm1
	addsd	%xmm1, %xmm4
	ucomisd	%xmm3, %xmm4
	seta	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	movl	%ecx, -112(%rbp)
	jmp	.LBB5_29
.LBB5_28:                               # %sw.default.108
	movabsq	$.L.str.81, %rdi
	movb	$0, %al
	callq	g_warning
.LBB5_29:                               # %sw.epilog.109
	jmp	.LBB5_35
.LBB5_30:                               # %if.else.110
	movq	-1528(%rbp), %rax
	movq	%rax, -1544(%rbp)
	movl	$0, -1548(%rbp)
.LBB5_31:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-1548(%rbp), %eax
	cmpl	-1532(%rbp), %eax
	jge	.LBB5_34
# BB#32:                                # %for.body
                                        #   in Loop: Header=BB5_31 Depth=1
	movq	-1544(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -1544(%rbp)
	movb	(%rax), %dl
	movslq	-1548(%rbp), %rax
	movb	%dl, -432(%rbp,%rax)
	movq	-1544(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -1544(%rbp)
	movb	(%rax), %dl
	movslq	-1548(%rbp), %rax
	movb	%dl, -688(%rbp,%rax)
	movq	-1544(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -1544(%rbp)
	movb	(%rax), %dl
	movslq	-1548(%rbp), %rax
	movb	%dl, -944(%rbp,%rax)
# BB#33:                                # %for.inc
                                        #   in Loop: Header=BB5_31 Depth=1
	movl	-1548(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1548(%rbp)
	jmp	.LBB5_31
.LBB5_34:                               # %for.end
	leaq	-944(%rbp), %rax
	leaq	-688(%rbp), %rcx
	leaq	-432(%rbp), %rdx
	movq	%rdx, -136(%rbp)
	movq	%rcx, -128(%rbp)
	movq	%rax, -120(%rbp)
.LBB5_35:                               # %if.end.125
	movq	-1528(%rbp), %rdi
	callq	g_free
.LBB5_36:                               # %if.end.126
	callq	gimp_tile_height
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	-96(%rbp), %rdx
	imull	4(%rdx), %eax
	movq	-96(%rbp), %rdx
	imull	12(%rdx), %eax
	movl	%eax, %eax
	movl	%eax, %edi
	callq	g_malloc_n
	movabsq	$.L.str.82, %rsi
	movl	$39, %ecx
	movl	%ecx, %edx
	movq	%rax, -952(%rbp)
	movl	-1516(%rbp), %edi
	callq	write
	cmpl	$0, -28(%rbp)
	movq	%rax, -1736(%rbp)       # 8-byte Spill
	je	.LBB5_38
# BB#37:                                # %if.then.135
	movabsq	$.L.str.83, %rsi
	leaq	-1488(%rbp), %rdi
	movl	-1496(%rbp), %edx
	movl	-1500(%rbp), %ecx
	movb	$0, %al
	callq	sprintf
	movl	%eax, -1740(%rbp)       # 4-byte Spill
	jmp	.LBB5_39
.LBB5_38:                               # %if.else.138
	movabsq	$.L.str.84, %rsi
	leaq	-1488(%rbp), %rdi
	movl	-1496(%rbp), %edx
	movl	-1500(%rbp), %ecx
	movb	$0, %al
	callq	sprintf
	movl	%eax, -1744(%rbp)       # 4-byte Spill
.LBB5_39:                               # %if.end.141
	leaq	-1488(%rbp), %rax
	movl	-1516(%rbp), %edi
	movl	%edi, -1748(%rbp)       # 4-byte Spill
	movq	%rax, %rdi
	movq	%rax, -1760(%rbp)       # 8-byte Spill
	callq	strlen
	movl	-1748(%rbp), %edi       # 4-byte Reload
	movq	-1760(%rbp), %rsi       # 8-byte Reload
	movq	%rax, %rdx
	callq	write
	movl	$1, %edi
	movl	%edi, %esi
	movl	-1512(%rbp), %edi
	addl	$1, %edi
	movslq	%edi, %rdi
	movq	%rax, -1768(%rbp)       # 8-byte Spill
	callq	g_malloc_n
	movq	%rax, -968(%rbp)
	movl	-1516(%rbp), %ecx
	movl	%ecx, -160(%rbp)
	movq	-968(%rbp), %rax
	movq	%rax, -152(%rbp)
	movl	-1496(%rbp), %ecx
	movl	%ecx, -144(%rbp)
	movl	-1492(%rbp), %ecx
	movl	%ecx, -140(%rbp)
	movq	$0, -960(%rbp)
	movl	$0, -1504(%rbp)
.LBB5_40:                               # %for.cond.153
                                        # =>This Inner Loop Header: Depth=1
	movl	-1504(%rbp), %eax
	cmpl	-1500(%rbp), %eax
	jge	.LBB5_53
# BB#41:                                # %for.body.156
                                        #   in Loop: Header=BB5_40 Depth=1
	movl	-1504(%rbp), %eax
	movl	%eax, -1772(%rbp)       # 4-byte Spill
	callq	gimp_tile_height
	movl	-1772(%rbp), %ecx       # 4-byte Reload
	movl	%eax, -1776(%rbp)       # 4-byte Spill
	movl	%ecx, %eax
	xorl	%edx, %edx
	movl	-1776(%rbp), %esi       # 4-byte Reload
	divl	%esi
	cmpl	$0, %edx
	jne	.LBB5_46
# BB#42:                                # %if.then.160
                                        #   in Loop: Header=BB5_40 Depth=1
	movl	-1504(%rbp), %eax
	movl	%eax, -1780(%rbp)       # 4-byte Spill
	callq	gimp_tile_height
	movl	-1780(%rbp), %ecx       # 4-byte Reload
	addl	%eax, %ecx
	movl	%ecx, -1508(%rbp)
	movl	-1508(%rbp), %eax
	cmpl	-1500(%rbp), %eax
	jge	.LBB5_44
# BB#43:                                # %cond.true
                                        #   in Loop: Header=BB5_40 Depth=1
	movl	-1508(%rbp), %eax
	movl	%eax, -1784(%rbp)       # 4-byte Spill
	jmp	.LBB5_45
.LBB5_44:                               # %cond.false
                                        #   in Loop: Header=BB5_40 Depth=1
	movl	-1500(%rbp), %eax
	movl	%eax, -1784(%rbp)       # 4-byte Spill
.LBB5_45:                               # %cond.end
                                        #   in Loop: Header=BB5_40 Depth=1
	movl	-1784(%rbp), %eax       # 4-byte Reload
	leaq	-88(%rbp), %rdi
	xorl	%edx, %edx
	movl	%eax, -1508(%rbp)
	movq	-952(%rbp), %rsi
	movl	-1504(%rbp), %ecx
	movl	-1496(%rbp), %r8d
	movl	-1508(%rbp), %eax
	subl	-1504(%rbp), %eax
	movl	%eax, %r9d
	callq	gimp_pixel_rgn_get_rect
	movq	-952(%rbp), %rsi
	movq	%rsi, -960(%rbp)
.LBB5_46:                               # %if.end.165
                                        #   in Loop: Header=BB5_40 Depth=1
	leaq	-160(%rbp), %rdi
	movq	-168(%rbp), %rax
	movq	-960(%rbp), %rsi
	callq	*%rax
	movl	-1496(%rbp), %ecx
	cmpl	$0, -1492(%rbp)
	movl	%ecx, -1788(%rbp)       # 4-byte Spill
	je	.LBB5_48
# BB#47:                                # %cond.true.167
                                        #   in Loop: Header=BB5_40 Depth=1
	movl	-1492(%rbp), %eax
	movl	%eax, -1792(%rbp)       # 4-byte Spill
	jmp	.LBB5_49
.LBB5_48:                               # %cond.false.168
                                        #   in Loop: Header=BB5_40 Depth=1
	movl	$1, %eax
	movl	%eax, -1792(%rbp)       # 4-byte Spill
	jmp	.LBB5_49
.LBB5_49:                               # %cond.end.169
                                        #   in Loop: Header=BB5_40 Depth=1
	movl	-1792(%rbp), %eax       # 4-byte Reload
	movl	$20, %ecx
	movl	-1788(%rbp), %edx       # 4-byte Reload
	imull	%eax, %edx
	movq	-960(%rbp), %rsi
	movslq	%edx, %rdi
	addq	%rdi, %rsi
	movq	%rsi, -960(%rbp)
	movl	-1504(%rbp), %eax
	cltd
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB5_51
# BB#50:                                # %if.then.175
                                        #   in Loop: Header=BB5_40 Depth=1
	cvtsi2sdl	-1504(%rbp), %xmm0
	cvtsi2sdl	-1500(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -1796(%rbp)       # 4-byte Spill
.LBB5_51:                               # %if.end.180
                                        #   in Loop: Header=BB5_40 Depth=1
	jmp	.LBB5_52
.LBB5_52:                               # %for.inc.181
                                        #   in Loop: Header=BB5_40 Depth=1
	movl	-1504(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1504(%rbp)
	jmp	.LBB5_40
.LBB5_53:                               # %for.end.183
	movsd	.LCPI5_5, %xmm0         # xmm0 = mem[0],zero
	callq	gimp_progress_update
	movl	-1516(%rbp), %edi
	movl	%eax, -1800(%rbp)       # 4-byte Spill
	callq	close
	movq	-968(%rbp), %rdi
	movl	%eax, -1804(%rbp)       # 4-byte Spill
	callq	g_free
	movq	-952(%rbp), %rdi
	callq	g_free
	movq	-96(%rbp), %rdi
	callq	gimp_drawable_detach
	movl	$1, -4(%rbp)
.LBB5_54:                               # %return
	movl	-4(%rbp), %eax
	addq	$1824, %rsp             # imm = 0x720
	popq	%rbp
	retq
.Lfunc_end5:
	.size	save_image, .Lfunc_end5-save_image
	.cfi_endproc

	.align	16, 0x90
	.type	pnmscanner_destroy,@function
pnmscanner_destroy:                     # @pnmscanner_destroy
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpq	$0, 16(%rdi)
	je	.LBB6_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	callq	g_free
.LBB6_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	pnmscanner_destroy, .Lfunc_end6-pnmscanner_destroy
	.cfi_endproc

	.align	16, 0x90
	.type	pnmscanner_create,@function
pnmscanner_create:                      # @pnmscanner_create
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
	subq	$16, %rsp
	movl	$1, %eax
	movl	%eax, %ecx
	movl	$40, %eax
	movl	%eax, %esi
	movl	%edi, -4(%rbp)
	movq	%rcx, %rdi
	callq	g_malloc_n
	movl	$1, %edx
                                        # kill: RDX<def> EDX<kill>
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %r8d
	movq	-16(%rbp), %rax
	movl	%r8d, (%rax)
	movq	-16(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-16(%rbp), %rax
	movl	(%rax), %edi
	movq	-16(%rbp), %rax
	addq	$4, %rax
	movq	%rax, %rsi
	callq	read
	cmpq	$0, %rax
	setne	%r9b
	xorb	$-1, %r9b
	andb	$1, %r9b
	movzbl	%r9b, %edi
	movq	-16(%rbp), %rax
	movl	%edi, 8(%rax)
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	pnmscanner_create, .Lfunc_end7-pnmscanner_create
	.cfi_endproc

	.align	16, 0x90
	.type	pnmscanner_gettoken,@function
pnmscanner_gettoken:                    # @pnmscanner_gettoken
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	$0, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	pnmscanner_eatwhitespace
.LBB8_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	cmpl	$0, 8(%rdx)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB8_5
# BB#2:                                 # %land.lhs.true
                                        #   in Loop: Header=BB8_1 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movzbl	4(%rdx), %eax
	movl	%eax, %edx
	movq	g_ascii_table, %rsi
	movzwl	(%rsi,%rdx,2), %eax
	andl	$256, %eax              # imm = 0x100
	cmpl	$0, %eax
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB8_5
# BB#3:                                 # %land.lhs.true.2
                                        #   in Loop: Header=BB8_1 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movsbl	4(%rdx), %eax
	cmpl	$35, %eax
	movb	%cl, -25(%rbp)          # 1-byte Spill
	je	.LBB8_5
# BB#4:                                 # %land.rhs
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-24(%rbp), %eax
	cmpl	-20(%rbp), %eax
	setl	%cl
	movb	%cl, -25(%rbp)          # 1-byte Spill
.LBB8_5:                                # %land.end
                                        #   in Loop: Header=BB8_1 Depth=1
	movb	-25(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB8_6
	jmp	.LBB8_7
.LBB8_6:                                # %while.body
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-8(%rbp), %rax
	movb	4(%rax), %cl
	movl	-24(%rbp), %edx
	movl	%edx, %esi
	addl	$1, %esi
	movl	%esi, -24(%rbp)
	movslq	%edx, %rax
	movq	-16(%rbp), %rdi
	movb	%cl, (%rdi,%rax)
	movq	-8(%rbp), %rdi
	callq	pnmscanner_getchar
	jmp	.LBB8_1
.LBB8_7:                                # %while.end
	movslq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movb	$0, (%rcx,%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	pnmscanner_gettoken, .Lfunc_end8-pnmscanner_gettoken
	.cfi_endproc

	.align	16, 0x90
	.type	g_message,@function
g_message:                              # @g_message
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
	je	.LBB9_2
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
.LBB9_2:                                # %entry
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
.Lfunc_end9:
	.size	g_message, .Lfunc_end9-g_message
	.cfi_endproc

	.align	16, 0x90
	.type	pnmscanner_eatwhitespace,@function
pnmscanner_eatwhitespace:               # @pnmscanner_eatwhitespace
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	$0, -12(%rbp)
.LBB10_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	cmpl	$0, 8(%rdx)
	movb	%cl, -13(%rbp)          # 1-byte Spill
	jne	.LBB10_3
# BB#2:                                 # %land.rhs
                                        #   in Loop: Header=BB10_1 Depth=1
	cmpl	$-1, -12(%rbp)
	setne	%al
	movb	%al, -13(%rbp)          # 1-byte Spill
.LBB10_3:                               # %land.end
                                        #   in Loop: Header=BB10_1 Depth=1
	movb	-13(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB10_4
	jmp	.LBB10_16
.LBB10_4:                               # %while.body
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	-12(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -20(%rbp)         # 4-byte Spill
	je	.LBB10_5
	jmp	.LBB10_17
.LBB10_17:                              # %while.body
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	-20(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -24(%rbp)         # 4-byte Spill
	je	.LBB10_12
	jmp	.LBB10_15
.LBB10_5:                               # %sw.bb
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-8(%rbp), %rax
	movsbl	4(%rax), %ecx
	cmpl	$35, %ecx
	jne	.LBB10_7
# BB#6:                                 # %if.then
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	$1, -12(%rbp)
	movq	-8(%rbp), %rdi
	callq	pnmscanner_getchar
	jmp	.LBB10_11
.LBB10_7:                               # %if.else
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-8(%rbp), %rax
	movzbl	4(%rax), %ecx
	movl	%ecx, %eax
	movq	g_ascii_table, %rdx
	movzwl	(%rdx,%rax,2), %ecx
	andl	$256, %ecx              # imm = 0x100
	cmpl	$0, %ecx
	jne	.LBB10_9
# BB#8:                                 # %if.then.7
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	$-1, -12(%rbp)
	jmp	.LBB10_10
.LBB10_9:                               # %if.else.8
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-8(%rbp), %rdi
	callq	pnmscanner_getchar
.LBB10_10:                              # %if.end
                                        #   in Loop: Header=BB10_1 Depth=1
	jmp	.LBB10_11
.LBB10_11:                              # %if.end.9
                                        #   in Loop: Header=BB10_1 Depth=1
	jmp	.LBB10_15
.LBB10_12:                              # %sw.bb.10
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-8(%rbp), %rax
	movsbl	4(%rax), %ecx
	cmpl	$10, %ecx
	jne	.LBB10_14
# BB#13:                                # %if.then.15
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	$0, -12(%rbp)
.LBB10_14:                              # %if.end.16
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-8(%rbp), %rdi
	callq	pnmscanner_getchar
.LBB10_15:                              # %sw.epilog
                                        #   in Loop: Header=BB10_1 Depth=1
	jmp	.LBB10_1
.LBB10_16:                              # %while.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	pnmscanner_eatwhitespace, .Lfunc_end10-pnmscanner_eatwhitespace
	.cfi_endproc

	.align	16, 0x90
	.type	pnmscanner_getchar,@function
pnmscanner_getchar:                     # @pnmscanner_getchar
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpq	$0, 16(%rdi)
	je	.LBB11_7
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movl	32(%rax), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, 32(%rax)
	movslq	%ecx, %rax
	movq	-8(%rbp), %rsi
	movq	16(%rsi), %rsi
	movb	(%rsi,%rax), %dil
	movq	-8(%rbp), %rax
	movb	%dil, 4(%rax)
	movq	-8(%rbp), %rax
	movl	32(%rax), %ecx
	movq	-8(%rbp), %rax
	cmpl	28(%rax), %ecx
	jl	.LBB11_6
# BB#2:                                 # %if.then.3
	movq	-8(%rbp), %rax
	movl	32(%rax), %ecx
	movq	-8(%rbp), %rax
	cmpl	28(%rax), %ecx
	jle	.LBB11_4
# BB#3:                                 # %if.then.7
	movq	-8(%rbp), %rax
	movl	$1, 8(%rax)
	jmp	.LBB11_5
.LBB11_4:                               # %if.else
	movq	-8(%rbp), %rax
	movl	(%rax), %edi
	movq	-8(%rbp), %rax
	movq	16(%rax), %rsi
	movq	-8(%rbp), %rax
	movslq	24(%rax), %rdx
	callq	read
	movl	%eax, %edi
	movq	-8(%rbp), %rax
	movl	%edi, 28(%rax)
.LBB11_5:                               # %if.end
	movq	-8(%rbp), %rax
	movl	$0, 32(%rax)
.LBB11_6:                               # %if.end.12
	jmp	.LBB11_8
.LBB11_7:                               # %if.else.13
	movl	$1, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rcx
	movl	(%rcx), %edi
	movq	-8(%rbp), %rcx
	addq	$4, %rcx
	movq	%rcx, %rsi
	callq	read
	cmpq	$0, %rax
	setne	%r8b
	xorb	$-1, %r8b
	andb	$1, %r8b
	movzbl	%r8b, %edi
	movq	-8(%rbp), %rax
	movl	%edi, 8(%rax)
.LBB11_8:                               # %if.end.19
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	pnmscanner_getchar, .Lfunc_end11-pnmscanner_getchar
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI12_0:
	.quad	4607182418800017408     # double 1
.LCPI12_1:
	.quad	4643176031446892544     # double 255
	.text
	.align	16, 0x90
	.type	pnm_load_ascii,@function
pnm_load_ascii:                         # @pnm_load_ascii
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
	subq	$640, %rsp              # imm = 0x280
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	$0, -596(%rbp)
	movq	-16(%rbp), %rdx
	cmpl	$0, 12(%rdx)
	je	.LBB12_2
# BB#1:                                 # %cond.true
	movq	-16(%rbp), %rax
	movl	12(%rax), %ecx
	movl	%ecx, -600(%rbp)        # 4-byte Spill
	jmp	.LBB12_3
.LBB12_2:                               # %cond.false
	movl	$1, %eax
	movl	%eax, -600(%rbp)        # 4-byte Spill
	jmp	.LBB12_3
.LBB12_3:                               # %cond.end
	movl	-600(%rbp), %eax        # 4-byte Reload
	movl	%eax, -72(%rbp)
	callq	gimp_tile_height
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	-16(%rbp), %rdx
	imull	(%rdx), %eax
	imull	-72(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %edi
	callq	g_malloc_n
	movl	$4096, %esi             # imm = 0x1000
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rdi
	callq	pnmscanner_createbuffer
	movl	$0, -48(%rbp)
.LBB12_4:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_9 Depth 2
                                        #       Child Loop BB12_11 Depth 3
                                        #         Child Loop BB12_13 Depth 4
	movl	-48(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	4(%rcx), %eax
	jge	.LBB12_42
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB12_4 Depth=1
	movl	-48(%rbp), %eax
	movl	%eax, -60(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -604(%rbp)        # 4-byte Spill
	callq	gimp_tile_height
	movl	-604(%rbp), %ecx        # 4-byte Reload
	addl	%eax, %ecx
	movl	%ecx, -64(%rbp)
	movl	-64(%rbp), %eax
	movq	-16(%rbp), %rdx
	cmpl	4(%rdx), %eax
	jge	.LBB12_7
# BB#6:                                 # %cond.true.10
                                        #   in Loop: Header=BB12_4 Depth=1
	movl	-64(%rbp), %eax
	movl	%eax, -608(%rbp)        # 4-byte Spill
	jmp	.LBB12_8
.LBB12_7:                               # %cond.false.11
                                        #   in Loop: Header=BB12_4 Depth=1
	movq	-16(%rbp), %rax
	movl	4(%rax), %ecx
	movl	%ecx, -608(%rbp)        # 4-byte Spill
.LBB12_8:                               # %cond.end.13
                                        #   in Loop: Header=BB12_4 Depth=1
	movl	-608(%rbp), %eax        # 4-byte Reload
	movl	%eax, -64(%rbp)
	movl	-64(%rbp), %eax
	subl	-60(%rbp), %eax
	movl	%eax, -68(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, -40(%rbp)
	movl	$0, -52(%rbp)
.LBB12_9:                               # %for.cond.15
                                        #   Parent Loop BB12_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB12_11 Depth 3
                                        #         Child Loop BB12_13 Depth 4
	movl	-52(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jge	.LBB12_40
# BB#10:                                # %for.body.18
                                        #   in Loop: Header=BB12_9 Depth=2
	movl	$0, -44(%rbp)
.LBB12_11:                              # %for.cond.19
                                        #   Parent Loop BB12_4 Depth=1
                                        #     Parent Loop BB12_9 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB12_13 Depth 4
	movl	-44(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	(%rcx), %eax
	jge	.LBB12_38
# BB#12:                                # %for.body.23
                                        #   in Loop: Header=BB12_11 Depth=3
	movl	$0, -56(%rbp)
.LBB12_13:                              # %for.cond.24
                                        #   Parent Loop BB12_4 Depth=1
                                        #     Parent Loop BB12_9 Depth=2
                                        #       Parent Loop BB12_11 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	-56(%rbp), %eax
	cmpl	-72(%rbp), %eax
	jge	.LBB12_36
# BB#14:                                # %for.body.27
                                        #   in Loop: Header=BB12_13 Depth=4
	cmpl	$0, -596(%rbp)
	je	.LBB12_16
# BB#15:                                # %if.then
                                        #   in Loop: Header=BB12_13 Depth=4
	movslq	-56(%rbp), %rax
	movq	-40(%rbp), %rcx
	movb	$0, (%rcx,%rax)
	jmp	.LBB12_35
.LBB12_16:                              # %if.end
                                        #   in Loop: Header=BB12_13 Depth=4
	movq	-8(%rbp), %rax
	cmpl	$0, 8(%rax)
	je	.LBB12_18
# BB#17:                                # %if.then.30
                                        #   in Loop: Header=BB12_13 Depth=4
	movabsq	$.L.str.58, %rdi
	callq	gettext
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_message
	movl	$1, -596(%rbp)
	movslq	-56(%rbp), %rdi
	movq	-40(%rbp), %rcx
	movb	$0, (%rcx,%rdi)
	jmp	.LBB12_35
.LBB12_18:                              # %if.end.34
                                        #   in Loop: Header=BB12_13 Depth=4
	movq	-16(%rbp), %rax
	cmpl	$0, 12(%rax)
	je	.LBB12_20
# BB#19:                                # %if.then.37
                                        #   in Loop: Header=BB12_13 Depth=4
	movl	$512, %edx              # imm = 0x200
	leaq	-592(%rbp), %rsi
	movq	-8(%rbp), %rdi
	callq	pnmscanner_gettoken
	jmp	.LBB12_21
.LBB12_20:                              # %if.else
                                        #   in Loop: Header=BB12_13 Depth=4
	leaq	-592(%rbp), %rsi
	movq	-8(%rbp), %rdi
	callq	pnmscanner_getsmalltoken
.LBB12_21:                              # %if.end.39
                                        #   in Loop: Header=BB12_13 Depth=4
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, %edx
	subl	$1, %edx
	movl	%ecx, -612(%rbp)        # 4-byte Spill
	movl	%edx, -616(%rbp)        # 4-byte Spill
	je	.LBB12_26
	jmp	.LBB12_43
.LBB12_43:                              # %if.end.39
                                        #   in Loop: Header=BB12_13 Depth=4
	movl	-612(%rbp), %eax        # 4-byte Reload
	subl	$255, %eax
	movl	%eax, -620(%rbp)        # 4-byte Spill
	jne	.LBB12_30
	jmp	.LBB12_22
.LBB12_22:                              # %sw.bb
                                        #   in Loop: Header=BB12_13 Depth=4
	movzbl	-592(%rbp), %eax
	movl	%eax, %ecx
	movq	g_ascii_table, %rdx
	movzwl	(%rdx,%rcx,2), %eax
	andl	$8, %eax
	cmpl	$0, %eax
	je	.LBB12_24
# BB#23:                                # %cond.true.46
                                        #   in Loop: Header=BB12_13 Depth=4
	leaq	-592(%rbp), %rdi
	callq	atoi
	movl	%eax, -624(%rbp)        # 4-byte Spill
	jmp	.LBB12_25
.LBB12_24:                              # %cond.false.49
                                        #   in Loop: Header=BB12_13 Depth=4
	xorl	%eax, %eax
	movl	%eax, -624(%rbp)        # 4-byte Spill
	jmp	.LBB12_25
.LBB12_25:                              # %cond.end.50
                                        #   in Loop: Header=BB12_13 Depth=4
	movl	-624(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movslq	-56(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
	jmp	.LBB12_34
.LBB12_26:                              # %sw.bb.55
                                        #   in Loop: Header=BB12_13 Depth=4
	movq	-16(%rbp), %rax
	cmpl	$0, 12(%rax)
	je	.LBB12_28
# BB#27:                                # %if.then.58
                                        #   in Loop: Header=BB12_13 Depth=4
	movl	$255, %eax
	xorl	%ecx, %ecx
	movsbl	-592(%rbp), %edx
	cmpl	$48, %edx
	cmovel	%ecx, %eax
	movb	%al, %sil
	movslq	-56(%rbp), %rdi
	movq	-40(%rbp), %r8
	movb	%sil, (%r8,%rdi)
	jmp	.LBB12_29
.LBB12_28:                              # %if.else.67
                                        #   in Loop: Header=BB12_13 Depth=4
	xorl	%eax, %eax
	movl	$255, %ecx
	movsbl	-592(%rbp), %edx
	cmpl	$48, %edx
	cmovel	%ecx, %eax
	movb	%al, %sil
	movslq	-56(%rbp), %rdi
	movq	-40(%rbp), %r8
	movb	%sil, (%r8,%rdi)
.LBB12_29:                              # %if.end.76
                                        #   in Loop: Header=BB12_13 Depth=4
	jmp	.LBB12_34
.LBB12_30:                              # %sw.default
                                        #   in Loop: Header=BB12_13 Depth=4
	movzbl	-592(%rbp), %eax
	movl	%eax, %ecx
	movq	g_ascii_table, %rdx
	movzwl	(%rdx,%rcx,2), %eax
	andl	$8, %eax
	cmpl	$0, %eax
	je	.LBB12_32
# BB#31:                                # %cond.true.84
                                        #   in Loop: Header=BB12_13 Depth=4
	leaq	-592(%rbp), %rdi
	callq	atoi
	movl	%eax, -628(%rbp)        # 4-byte Spill
	jmp	.LBB12_33
.LBB12_32:                              # %cond.false.87
                                        #   in Loop: Header=BB12_13 Depth=4
	xorl	%eax, %eax
	movl	%eax, -628(%rbp)        # 4-byte Spill
	jmp	.LBB12_33
.LBB12_33:                              # %cond.end.88
                                        #   in Loop: Header=BB12_13 Depth=4
	movl	-628(%rbp), %eax        # 4-byte Reload
	cvtsi2sdl	%eax, %xmm0
	movq	-16(%rbp), %rcx
	cvtsi2sdl	8(%rcx), %xmm1
	divsd	%xmm1, %xmm0
	movsd	.LCPI12_1(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, %dl
	movslq	-56(%rbp), %rcx
	movq	-40(%rbp), %rsi
	movb	%dl, (%rsi,%rcx)
.LBB12_34:                              # %sw.epilog
                                        #   in Loop: Header=BB12_13 Depth=4
	jmp	.LBB12_35
.LBB12_35:                              # %for.inc
                                        #   in Loop: Header=BB12_13 Depth=4
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB12_13
.LBB12_36:                              # %for.end
                                        #   in Loop: Header=BB12_11 Depth=3
	movl	-72(%rbp), %eax
	movq	-40(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -40(%rbp)
# BB#37:                                # %for.inc.97
                                        #   in Loop: Header=BB12_11 Depth=3
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB12_11
.LBB12_38:                              # %for.end.99
                                        #   in Loop: Header=BB12_9 Depth=2
	jmp	.LBB12_39
.LBB12_39:                              # %for.inc.100
                                        #   in Loop: Header=BB12_9 Depth=2
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB12_9
.LBB12_40:                              # %for.end.102
                                        #   in Loop: Header=BB12_4 Depth=1
	cvtsi2sdl	-48(%rbp), %xmm0
	movq	-16(%rbp), %rax
	cvtsi2sdl	4(%rax), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	xorl	%edx, %edx
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movl	-48(%rbp), %ecx
	movq	-16(%rbp), %r8
	movl	(%r8), %r8d
	movl	-68(%rbp), %r9d
	movl	%eax, -632(%rbp)        # 4-byte Spill
	callq	gimp_pixel_rgn_set_rect
# BB#41:                                # %for.inc.109
                                        #   in Loop: Header=BB12_4 Depth=1
	movl	-68(%rbp), %eax
	addl	-48(%rbp), %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB12_4
.LBB12_42:                              # %for.end.111
	movsd	.LCPI12_0, %xmm0        # xmm0 = mem[0],zero
	callq	gimp_progress_update
	movq	-32(%rbp), %rdi
	movl	%eax, -636(%rbp)        # 4-byte Spill
	callq	g_free
	addq	$640, %rsp              # imm = 0x280
	popq	%rbp
	retq
.Lfunc_end12:
	.size	pnm_load_ascii, .Lfunc_end12-pnm_load_ascii
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI13_0:
	.quad	4620693217682128896     # double 8
.LCPI13_1:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	pnm_load_rawpbm,@function
pnm_load_rawpbm:                        # @pnm_load_rawpbm
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
	subq	$128, %rsp
	movsd	.LCPI13_0, %xmm0        # xmm0 = mem[0],zero
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movl	(%rdx), %eax
	movl	%eax, -84(%rbp)
	movq	-16(%rbp), %rdx
	cvtsi2sdl	(%rdx), %xmm1
	divsd	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	callq	ceil
	cvttsd2si	%xmm0, %eax
	movl	%eax, -88(%rbp)
	callq	gimp_tile_height
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	-16(%rbp), %rdx
	imull	(%rdx), %eax
	movl	%eax, %eax
	movl	%eax, %edi
	callq	g_malloc_n
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	%rax, -48(%rbp)
	movslq	-88(%rbp), %rdi
	callq	g_malloc_n
	movq	%rax, -32(%rbp)
	movl	$0, -64(%rbp)
.LBB13_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_6 Depth 2
                                        #       Child Loop BB13_10 Depth 3
	movl	-64(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	4(%rcx), %eax
	jge	.LBB13_18
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB13_1 Depth=1
	movl	-64(%rbp), %eax
	movl	%eax, -72(%rbp)
	movl	-64(%rbp), %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
	callq	gimp_tile_height
	movl	-96(%rbp), %ecx         # 4-byte Reload
	addl	%eax, %ecx
	movl	%ecx, -76(%rbp)
	movl	-76(%rbp), %eax
	movq	-16(%rbp), %rdx
	cmpl	4(%rdx), %eax
	jge	.LBB13_4
# BB#3:                                 # %cond.true
                                        #   in Loop: Header=BB13_1 Depth=1
	movl	-76(%rbp), %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jmp	.LBB13_5
.LBB13_4:                               # %cond.false
                                        #   in Loop: Header=BB13_1 Depth=1
	movq	-16(%rbp), %rax
	movl	4(%rax), %ecx
	movl	%ecx, -100(%rbp)        # 4-byte Spill
.LBB13_5:                               # %cond.end
                                        #   in Loop: Header=BB13_1 Depth=1
	movl	-100(%rbp), %eax        # 4-byte Reload
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %eax
	subl	-72(%rbp), %eax
	movl	%eax, -80(%rbp)
	movq	-48(%rbp), %rcx
	movq	%rcx, -56(%rbp)
	movl	$0, -68(%rbp)
.LBB13_6:                               # %for.cond.15
                                        #   Parent Loop BB13_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB13_10 Depth 3
	movl	-68(%rbp), %eax
	cmpl	-80(%rbp), %eax
	jge	.LBB13_17
# BB#7:                                 # %for.body.18
                                        #   in Loop: Header=BB13_6 Depth=2
	movslq	-88(%rbp), %rax
	movl	-84(%rbp), %edi
	movq	-32(%rbp), %rsi
	movslq	-88(%rbp), %rdx
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	read
	movq	-112(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	je	.LBB13_9
# BB#8:                                 # %if.then
	movabsq	$.L.str.67, %rdi
	callq	gettext
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_message
	movl	$1, %esi
	movq	-16(%rbp), %rdi
	addq	$24, %rdi
	callq	longjmp
.LBB13_9:                               # %if.end
                                        #   in Loop: Header=BB13_6 Depth=2
	movl	$0, -92(%rbp)
	movq	-32(%rbp), %rax
	movb	(%rax), %cl
	movb	%cl, -33(%rbp)
	movl	$0, -60(%rbp)
.LBB13_10:                              # %for.cond.25
                                        #   Parent Loop BB13_1 Depth=1
                                        #     Parent Loop BB13_6 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-60(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	(%rcx), %eax
	jge	.LBB13_15
# BB#11:                                # %for.body.29
                                        #   in Loop: Header=BB13_10 Depth=3
	movl	$8, %eax
	movl	-60(%rbp), %ecx
	movl	%eax, -116(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-116(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB13_13
# BB#12:                                # %if.then.32
                                        #   in Loop: Header=BB13_10 Depth=3
	movl	-92(%rbp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -92(%rbp)
	movslq	%eax, %rdx
	movq	-32(%rbp), %rsi
	movb	(%rsi,%rdx), %dil
	movb	%dil, -33(%rbp)
.LBB13_13:                              # %if.end.34
                                        #   in Loop: Header=BB13_10 Depth=3
	movl	$255, %eax
	xorl	%ecx, %ecx
	movzbl	-33(%rbp), %edx
	andl	$128, %edx
	cmpl	$0, %edx
	cmovnel	%ecx, %eax
	movb	%al, %sil
	movslq	-60(%rbp), %rdi
	movq	-56(%rbp), %r8
	movb	%sil, (%r8,%rdi)
	movzbl	-33(%rbp), %eax
	shll	$1, %eax
	movb	%al, %sil
	movb	%sil, -33(%rbp)
# BB#14:                                # %for.inc
                                        #   in Loop: Header=BB13_10 Depth=3
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB13_10
.LBB13_15:                              # %for.end
                                        #   in Loop: Header=BB13_6 Depth=2
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	movq	-56(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -56(%rbp)
# BB#16:                                # %for.inc.44
                                        #   in Loop: Header=BB13_6 Depth=2
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB13_6
.LBB13_17:                              # %for.end.46
                                        #   in Loop: Header=BB13_1 Depth=1
	cvtsi2sdl	-64(%rbp), %xmm0
	movq	-16(%rbp), %rax
	cvtsi2sdl	4(%rax), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	xorl	%edx, %edx
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movl	-64(%rbp), %ecx
	movq	-16(%rbp), %r8
	movl	(%r8), %r8d
	movl	-80(%rbp), %r9d
	movl	%eax, -120(%rbp)        # 4-byte Spill
	callq	gimp_pixel_rgn_set_rect
	movl	-80(%rbp), %eax
	addl	-64(%rbp), %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB13_1
.LBB13_18:                              # %for.end.54
	movsd	.LCPI13_1, %xmm0        # xmm0 = mem[0],zero
	callq	gimp_progress_update
	movq	-32(%rbp), %rdi
	movl	%eax, -124(%rbp)        # 4-byte Spill
	callq	g_free
	movq	-48(%rbp), %rdi
	callq	g_free
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	pnm_load_rawpbm, .Lfunc_end13-pnm_load_rawpbm
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI14_0:
	.quad	4607182418800017408     # double 1
.LCPI14_1:
	.quad	4643176031446892544     # double 255
	.text
	.align	16, 0x90
	.type	pnm_load_raw,@function
pnm_load_raw:                           # @pnm_load_raw
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	cmpl	$255, 8(%rdx)
	jle	.LBB14_2
# BB#1:                                 # %if.then
	movl	$2, -28(%rbp)
	jmp	.LBB14_3
.LBB14_2:                               # %if.else
	movl	$1, -28(%rbp)
.LBB14_3:                               # %if.end
	callq	gimp_tile_height
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	-16(%rbp), %rdx
	imull	(%rdx), %eax
	movq	-16(%rbp), %rdx
	imull	12(%rdx), %eax
	imull	-28(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %edi
	callq	g_malloc_n
	movq	%rax, -40(%rbp)
	movq	$0, -48(%rbp)
	cmpl	$1, -28(%rbp)
	jle	.LBB14_5
# BB#4:                                 # %if.then.6
	callq	gimp_tile_height
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	-16(%rbp), %rdx
	imull	(%rdx), %eax
	movq	-16(%rbp), %rdx
	imull	12(%rdx), %eax
	movl	%eax, %eax
	movl	%eax, %edi
	callq	g_malloc_n
	movq	%rax, -48(%rbp)
.LBB14_5:                               # %if.end.14
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -92(%rbp)
	movl	$0, -72(%rbp)
.LBB14_6:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_11 Depth 2
                                        #       Child Loop BB14_16 Depth 3
                                        #       Child Loop BB14_25 Depth 3
	movl	-72(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	4(%rcx), %eax
	jge	.LBB14_39
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB14_6 Depth=1
	movl	-72(%rbp), %eax
	movl	%eax, -80(%rbp)
	movl	-72(%rbp), %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	callq	gimp_tile_height
	movl	-100(%rbp), %ecx        # 4-byte Reload
	addl	%eax, %ecx
	movl	%ecx, -84(%rbp)
	movl	-84(%rbp), %eax
	movq	-16(%rbp), %rdx
	cmpl	4(%rdx), %eax
	jge	.LBB14_9
# BB#8:                                 # %cond.true
                                        #   in Loop: Header=BB14_6 Depth=1
	movl	-84(%rbp), %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
	jmp	.LBB14_10
.LBB14_9:                               # %cond.false
                                        #   in Loop: Header=BB14_6 Depth=1
	movq	-16(%rbp), %rax
	movl	4(%rax), %ecx
	movl	%ecx, -104(%rbp)        # 4-byte Spill
.LBB14_10:                              # %cond.end
                                        #   in Loop: Header=BB14_6 Depth=1
	movl	-104(%rbp), %eax        # 4-byte Reload
	movl	%eax, -84(%rbp)
	movl	-84(%rbp), %eax
	subl	-80(%rbp), %eax
	movl	%eax, -88(%rbp)
	movq	-40(%rbp), %rcx
	movq	%rcx, -56(%rbp)
	movq	-48(%rbp), %rcx
	movq	%rcx, -64(%rbp)
	movl	$0, -76(%rbp)
.LBB14_11:                              # %for.cond.23
                                        #   Parent Loop BB14_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB14_16 Depth 3
                                        #       Child Loop BB14_25 Depth 3
	movl	-76(%rbp), %eax
	cmpl	-88(%rbp), %eax
	jge	.LBB14_35
# BB#12:                                # %for.body.26
                                        #   in Loop: Header=BB14_11 Depth=2
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	movq	-16(%rbp), %rax
	imull	12(%rax), %ecx
	imull	-28(%rbp), %ecx
	movslq	%ecx, %rax
	movl	-92(%rbp), %edi
	movq	-56(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movl	(%rdx), %ecx
	movq	-16(%rbp), %rdx
	imull	12(%rdx), %ecx
	imull	-28(%rbp), %ecx
	movslq	%ecx, %rdx
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	read
	movq	-112(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	je	.LBB14_14
# BB#13:                                # %if.then.40
	movabsq	$.L.str.58, %rdi
	callq	gettext
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_message
	movl	$1, %esi
	movq	-16(%rbp), %rdi
	addq	$24, %rdi
	callq	longjmp
.LBB14_14:                              # %if.end.42
                                        #   in Loop: Header=BB14_11 Depth=2
	cmpl	$1, -28(%rbp)
	jle	.LBB14_23
# BB#15:                                # %if.then.45
                                        #   in Loop: Header=BB14_11 Depth=2
	movl	$0, -68(%rbp)
.LBB14_16:                              # %for.cond.46
                                        #   Parent Loop BB14_6 Depth=1
                                        #     Parent Loop BB14_11 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-68(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	(%rcx), %edx
	movq	-16(%rbp), %rcx
	imull	12(%rcx), %edx
	cmpl	%edx, %eax
	jge	.LBB14_22
# BB#17:                                # %for.body.52
                                        #   in Loop: Header=BB14_16 Depth=3
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -56(%rbp)
	movzbl	(%rax), %edx
	shll	$8, %edx
	movl	%edx, -96(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -56(%rbp)
	movzbl	(%rax), %edx
	addl	-96(%rbp), %edx
	movl	%edx, -96(%rbp)
	movl	-96(%rbp), %edx
	movq	-16(%rbp), %rax
	cmpl	8(%rax), %edx
	jge	.LBB14_19
# BB#18:                                # %cond.true.60
                                        #   in Loop: Header=BB14_16 Depth=3
	movl	-96(%rbp), %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
	jmp	.LBB14_20
.LBB14_19:                              # %cond.false.61
                                        #   in Loop: Header=BB14_16 Depth=3
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -116(%rbp)        # 4-byte Spill
.LBB14_20:                              # %cond.end.63
                                        #   in Loop: Header=BB14_16 Depth=3
	movl	-116(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movslq	-68(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
	cvtsi2sdl	-96(%rbp), %xmm0
	movsd	.LCPI14_1(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movq	-16(%rbp), %rdx
	cvtsi2sdl	8(%rdx), %xmm1
	divsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movslq	-68(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
# BB#21:                                # %for.inc
                                        #   in Loop: Header=BB14_16 Depth=3
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB14_16
.LBB14_22:                              # %for.end
                                        #   in Loop: Header=BB14_11 Depth=2
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	movq	-16(%rbp), %rax
	imull	12(%rax), %ecx
	movq	-64(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB14_33
.LBB14_23:                              # %if.else.76
                                        #   in Loop: Header=BB14_11 Depth=2
	movq	-16(%rbp), %rax
	cmpl	$255, 8(%rax)
	je	.LBB14_32
# BB#24:                                # %if.then.80
                                        #   in Loop: Header=BB14_11 Depth=2
	movl	$0, -68(%rbp)
.LBB14_25:                              # %for.cond.81
                                        #   Parent Loop BB14_6 Depth=1
                                        #     Parent Loop BB14_11 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-68(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	(%rcx), %edx
	movq	-16(%rbp), %rcx
	imull	12(%rcx), %edx
	cmpl	%edx, %eax
	jge	.LBB14_31
# BB#26:                                # %for.body.87
                                        #   in Loop: Header=BB14_25 Depth=3
	movslq	-68(%rbp), %rax
	movq	-56(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movq	-16(%rbp), %rax
	cmpl	8(%rax), %edx
	jge	.LBB14_28
# BB#27:                                # %cond.true.94
                                        #   in Loop: Header=BB14_25 Depth=3
	movslq	-68(%rbp), %rax
	movq	-56(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movl	%edx, -120(%rbp)        # 4-byte Spill
	jmp	.LBB14_29
.LBB14_28:                              # %cond.false.98
                                        #   in Loop: Header=BB14_25 Depth=3
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -120(%rbp)        # 4-byte Spill
.LBB14_29:                              # %cond.end.100
                                        #   in Loop: Header=BB14_25 Depth=3
	movl	-120(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movslq	-68(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
	movslq	-68(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movzbl	(%rsi,%rdx), %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	.LCPI14_1(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movq	-16(%rbp), %rdx
	cvtsi2sdl	8(%rdx), %xmm1
	divsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movslq	-68(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
# BB#30:                                # %for.inc.115
                                        #   in Loop: Header=BB14_25 Depth=3
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB14_25
.LBB14_31:                              # %for.end.117
                                        #   in Loop: Header=BB14_11 Depth=2
	jmp	.LBB14_32
.LBB14_32:                              # %if.end.118
                                        #   in Loop: Header=BB14_11 Depth=2
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	movq	-16(%rbp), %rax
	imull	12(%rax), %ecx
	movq	-56(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -56(%rbp)
.LBB14_33:                              # %if.end.124
                                        #   in Loop: Header=BB14_11 Depth=2
	jmp	.LBB14_34
.LBB14_34:                              # %for.inc.125
                                        #   in Loop: Header=BB14_11 Depth=2
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB14_11
.LBB14_35:                              # %for.end.127
                                        #   in Loop: Header=BB14_6 Depth=1
	cvtsi2sdl	-72(%rbp), %xmm0
	movq	-16(%rbp), %rax
	cvtsi2sdl	4(%rax), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	cmpl	$1, -28(%rbp)
	movl	%eax, -124(%rbp)        # 4-byte Spill
	jle	.LBB14_37
# BB#36:                                # %if.then.135
                                        #   in Loop: Header=BB14_6 Depth=1
	xorl	%edx, %edx
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movl	-72(%rbp), %ecx
	movq	-16(%rbp), %rax
	movl	(%rax), %r8d
	movl	-88(%rbp), %r9d
	callq	gimp_pixel_rgn_set_rect
	jmp	.LBB14_38
.LBB14_37:                              # %if.else.137
                                        #   in Loop: Header=BB14_6 Depth=1
	xorl	%edx, %edx
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movl	-72(%rbp), %ecx
	movq	-16(%rbp), %rax
	movl	(%rax), %r8d
	movl	-88(%rbp), %r9d
	callq	gimp_pixel_rgn_set_rect
.LBB14_38:                              # %if.end.139
                                        #   in Loop: Header=BB14_6 Depth=1
	movl	-88(%rbp), %eax
	addl	-72(%rbp), %eax
	movl	%eax, -72(%rbp)
	jmp	.LBB14_6
.LBB14_39:                              # %for.end.141
	movsd	.LCPI14_0, %xmm0        # xmm0 = mem[0],zero
	callq	gimp_progress_update
	movq	-40(%rbp), %rdi
	movl	%eax, -128(%rbp)        # 4-byte Spill
	callq	g_free
	movq	-48(%rbp), %rdi
	callq	g_free
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	pnm_load_raw, .Lfunc_end14-pnm_load_raw
	.cfi_endproc

	.align	16, 0x90
	.type	pnmscanner_createbuffer,@function
pnmscanner_createbuffer:                # @pnmscanner_createbuffer
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
	movl	$1, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movslq	-12(%rbp), %rdi
	movq	%rcx, %rsi
	callq	g_malloc_n
	movq	-8(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 24(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 32(%rax)
	movq	-8(%rbp), %rax
	movl	(%rax), %edi
	movq	-8(%rbp), %rax
	movq	16(%rax), %rsi
	movslq	-12(%rbp), %rdx
	callq	read
	movl	%eax, %edi
	movq	-8(%rbp), %rax
	movl	%edi, 28(%rax)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	pnmscanner_createbuffer, .Lfunc_end15-pnmscanner_createbuffer
	.cfi_endproc

	.align	16, 0x90
	.type	pnmscanner_getsmalltoken,@function
pnmscanner_getsmalltoken:               # @pnmscanner_getsmalltoken
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
	movq	-8(%rbp), %rdi
	callq	pnmscanner_eatwhitespace
	movq	-8(%rbp), %rsi
	cmpl	$0, 8(%rsi)
	jne	.LBB16_4
# BB#1:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	movzbl	4(%rax), %ecx
	movl	%ecx, %eax
	movq	g_ascii_table, %rdx
	movzwl	(%rdx,%rax,2), %ecx
	andl	$256, %ecx              # imm = 0x100
	cmpl	$0, %ecx
	jne	.LBB16_4
# BB#2:                                 # %land.lhs.true.2
	movq	-8(%rbp), %rax
	movsbl	4(%rax), %ecx
	cmpl	$35, %ecx
	je	.LBB16_4
# BB#3:                                 # %if.then
	movq	-8(%rbp), %rax
	movb	4(%rax), %cl
	movq	-16(%rbp), %rax
	movb	%cl, (%rax)
	movq	-8(%rbp), %rdi
	callq	pnmscanner_getchar
.LBB16_4:                               # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	pnmscanner_getsmalltoken, .Lfunc_end16-pnmscanner_getsmalltoken
	.cfi_endproc

	.align	16, 0x90
	.type	pnmsaverow_ascii_pbm,@function
pnmsaverow_ascii_pbm:                   # @pnmsaverow_ascii_pbm
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -20(%rbp)
	movq	-8(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	%rsi, -32(%rbp)
	movl	$0, -24(%rbp)
.LBB17_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-24(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	16(%rcx), %eax
	jge	.LBB17_9
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB17_1 Depth=1
	cmpl	$69, pnmsaverow_ascii_pbm.line_len
	jle	.LBB17_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB17_1 Depth=1
	movslq	-24(%rbp), %rax
	movq	-32(%rbp), %rcx
	movb	$10, (%rcx,%rax)
	movl	$0, pnmsaverow_ascii_pbm.line_len
	movl	-20(%rbp), %edx
	addl	$1, %edx
	movl	%edx, -20(%rbp)
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
.LBB17_4:                               # %if.end
                                        #   in Loop: Header=BB17_1 Depth=1
	movslq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movq	-8(%rbp), %rax
	cmpl	48(%rax), %edx
	jne	.LBB17_6
# BB#5:                                 # %if.then.6
                                        #   in Loop: Header=BB17_1 Depth=1
	movslq	-24(%rbp), %rax
	movq	-32(%rbp), %rcx
	movb	$48, (%rcx,%rax)
	jmp	.LBB17_7
.LBB17_6:                               # %if.else
                                        #   in Loop: Header=BB17_1 Depth=1
	movslq	-24(%rbp), %rax
	movq	-32(%rbp), %rcx
	movb	$49, (%rcx,%rax)
.LBB17_7:                               # %if.end.11
                                        #   in Loop: Header=BB17_1 Depth=1
	movl	pnmsaverow_ascii_pbm.line_len, %eax
	addl	$1, %eax
	movl	%eax, pnmsaverow_ascii_pbm.line_len
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
# BB#8:                                 # %for.inc
                                        #   in Loop: Header=BB17_1 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB17_1
.LBB17_9:                               # %for.end
	movq	-32(%rbp), %rax
	movslq	-24(%rbp), %rcx
	movb	$10, (%rax,%rcx)
	movq	-8(%rbp), %rax
	movl	(%rax), %edi
	movq	-8(%rbp), %rax
	movq	8(%rax), %rsi
	movslq	-20(%rbp), %rdx
	callq	write
	movq	%rax, -40(%rbp)         # 8-byte Spill
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	pnmsaverow_ascii_pbm, .Lfunc_end17-pnmsaverow_ascii_pbm
	.cfi_endproc

	.align	16, 0x90
	.type	pnmsaverow_ascii,@function
pnmsaverow_ascii:                       # @pnmsaverow_ascii
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
	movq	-8(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	%rsi, -32(%rbp)
	movl	$0, -20(%rbp)
.LBB18_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	16(%rcx), %edx
	movq	-8(%rbp), %rcx
	imull	20(%rcx), %edx
	cmpl	%edx, %eax
	jge	.LBB18_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB18_1 Depth=1
	movabsq	$.L.str.85, %rsi
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movzbl	(%rax), %edx
	andl	$255, %edx
	movb	$0, %al
	callq	sprintf
	movq	-32(%rbp), %rdi
	movl	%eax, -36(%rbp)         # 4-byte Spill
	callq	strlen
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB18_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB18_1
.LBB18_4:                               # %for.end
	movq	-8(%rbp), %rax
	movl	(%rax), %edi
	movq	-8(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movl	%edi, -40(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	strlen
	movl	-40(%rbp), %edi         # 4-byte Reload
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	write
	movq	%rax, -56(%rbp)         # 8-byte Spill
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	pnmsaverow_ascii, .Lfunc_end18-pnmsaverow_ascii
	.cfi_endproc

	.align	16, 0x90
	.type	pnmsaverow_ascii_indexed,@function
pnmsaverow_ascii_indexed:               # @pnmsaverow_ascii_indexed
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	%rsi, -32(%rbp)
	movl	$0, -20(%rbp)
.LBB19_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	16(%rcx), %eax
	jge	.LBB19_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB19_1 Depth=1
	movabsq	$.L.str.85, %rsi
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, %eax
	movq	-8(%rbp), %rdx
	movq	24(%rdx), %rdx
	movzbl	(%rdx,%rax), %ecx
	andl	$255, %ecx
	movl	%ecx, %edx
	movb	$0, %al
	callq	sprintf
	movabsq	$.L.str.85, %rsi
	movq	-32(%rbp), %rdi
	movl	%eax, -36(%rbp)         # 4-byte Spill
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	strlen
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, %eax
	movq	-8(%rbp), %rsi
	movq	32(%rsi), %rsi
	movzbl	(%rsi,%rax), %ecx
	andl	$255, %ecx
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movl	%ecx, %edx
	movb	$0, %al
	callq	sprintf
	movabsq	$.L.str.85, %rsi
	movq	-32(%rbp), %rdi
	movl	%eax, -52(%rbp)         # 4-byte Spill
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	callq	strlen
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	addq	$1, %rsi
	movq	%rsi, -16(%rbp)
	movzbl	(%rax), %ecx
	movl	%ecx, %eax
	movq	-8(%rbp), %rsi
	movq	40(%rsi), %rsi
	movzbl	(%rsi,%rax), %ecx
	andl	$255, %ecx
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movl	%ecx, %edx
	movb	$0, %al
	callq	sprintf
	movq	-32(%rbp), %rdi
	movl	%eax, -68(%rbp)         # 4-byte Spill
	callq	strlen
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB19_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB19_1
.LBB19_4:                               # %for.end
	movq	-8(%rbp), %rax
	movl	(%rax), %edi
	movq	-8(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movl	%edi, -72(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	callq	strlen
	movl	-72(%rbp), %edi         # 4-byte Reload
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	write
	movq	%rax, -88(%rbp)         # 8-byte Spill
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	pnmsaverow_ascii_indexed, .Lfunc_end19-pnmsaverow_ascii_indexed
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB20_2
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
.LBB20_2:                               # %entry
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
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end20:
	.size	g_warning, .Lfunc_end20-g_warning
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI21_0:
	.quad	4620693217682128896     # double 8
	.text
	.align	16, 0x90
	.type	pnmsaverow_raw_pbm,@function
pnmsaverow_raw_pbm:                     # @pnmsaverow_raw_pbm
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
	subq	$48, %rsp
	movsd	.LCPI21_0, %xmm0        # xmm0 = mem[0],zero
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -24(%rbp)
	movq	-8(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	%rsi, -32(%rbp)
	movq	-8(%rbp), %rsi
	cvtsi2sdl	16(%rsi), %xmm1
	divsd	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	callq	ceil
	cvttsd2si	%xmm0, %eax
	movl	%eax, -36(%rbp)
	movl	$0, -20(%rbp)
.LBB21_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB21_3 Depth 2
	movl	-20(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB21_12
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB21_1 Depth=1
	movslq	-20(%rbp), %rax
	movq	-32(%rbp), %rcx
	movb	$0, (%rcx,%rax)
	movl	$0, -40(%rbp)
.LBB21_3:                               # %for.cond.3
                                        #   Parent Loop BB21_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$8, -40(%rbp)
	jge	.LBB21_10
# BB#4:                                 # %for.body.6
                                        #   in Loop: Header=BB21_3 Depth=2
	movl	-24(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	16(%rcx), %eax
	jl	.LBB21_6
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB21_1 Depth=1
	jmp	.LBB21_10
.LBB21_6:                               # %if.end
                                        #   in Loop: Header=BB21_3 Depth=2
	movslq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movq	-8(%rbp), %rax
	cmpl	48(%rax), %edx
	je	.LBB21_8
# BB#7:                                 # %if.then.15
                                        #   in Loop: Header=BB21_3 Depth=2
	movl	$1, %eax
	movl	$7, %ecx
	subl	-40(%rbp), %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	movslq	-20(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movsbl	(%rsi,%rdx), %edi
	orl	%eax, %edi
	movb	%dil, %cl
	movb	%cl, (%rsi,%rdx)
.LBB21_8:                               # %if.end.22
                                        #   in Loop: Header=BB21_3 Depth=2
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
# BB#9:                                 # %for.inc
                                        #   in Loop: Header=BB21_3 Depth=2
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB21_3
.LBB21_10:                              # %for.end
                                        #   in Loop: Header=BB21_1 Depth=1
	jmp	.LBB21_11
.LBB21_11:                              # %for.inc.24
                                        #   in Loop: Header=BB21_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB21_1
.LBB21_12:                              # %for.end.26
	movq	-8(%rbp), %rax
	movl	(%rax), %edi
	movq	-8(%rbp), %rax
	movq	8(%rax), %rsi
	movslq	-36(%rbp), %rdx
	callq	write
	movq	%rax, -48(%rbp)         # 8-byte Spill
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	pnmsaverow_raw_pbm, .Lfunc_end21-pnmsaverow_raw_pbm
	.cfi_endproc

	.align	16, 0x90
	.type	pnmsaverow_raw,@function
pnmsaverow_raw:                         # @pnmsaverow_raw
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movl	(%rsi), %edi
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	16(%rax), %ecx
	movq	-8(%rbp), %rax
	imull	20(%rax), %ecx
	movslq	%ecx, %rdx
	callq	write
	movq	%rax, -24(%rbp)         # 8-byte Spill
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	pnmsaverow_raw, .Lfunc_end22-pnmsaverow_raw
	.cfi_endproc

	.align	16, 0x90
	.type	pnmsaverow_raw_indexed,@function
pnmsaverow_raw_indexed:                 # @pnmsaverow_raw_indexed
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
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	%rsi, -32(%rbp)
	movl	$0, -20(%rbp)
.LBB23_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	16(%rcx), %eax
	jge	.LBB23_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB23_1 Depth=1
	movq	-16(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, %eax
	movq	-8(%rbp), %rdx
	movq	24(%rdx), %rdx
	movb	(%rdx,%rax), %sil
	movq	-32(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -32(%rbp)
	movb	%sil, (%rax)
	movq	-16(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, %eax
	movq	-8(%rbp), %rdx
	movq	32(%rdx), %rdx
	movb	(%rdx,%rax), %sil
	movq	-32(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -32(%rbp)
	movb	%sil, (%rax)
	movq	-16(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -16(%rbp)
	movzbl	(%rax), %ecx
	movl	%ecx, %eax
	movq	-8(%rbp), %rdx
	movq	40(%rdx), %rdx
	movb	(%rdx,%rax), %sil
	movq	-32(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -32(%rbp)
	movb	%sil, (%rax)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB23_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB23_1
.LBB23_4:                               # %for.end
	movq	-8(%rbp), %rax
	movl	(%rax), %edi
	movq	-8(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-8(%rbp), %rax
	imull	$3, 16(%rax), %ecx
	movslq	%ecx, %rdx
	callq	write
	movq	%rax, -40(%rbp)         # 8-byte Spill
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	pnmsaverow_raw_indexed, .Lfunc_end23-pnmsaverow_raw_indexed
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
	.asciz	"raw"
	.size	.L.str.11, 4

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Specify non-zero for raw output, zero for ascii output"
	.size	.L.str.12, 55

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"file-pnm-load"
	.size	.L.str.13, 14

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Loads files in the PNM file format"
	.size	.L.str.14, 35

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"This plug-in loads files in the various Netpbm portable file formats."
	.size	.L.str.15, 70

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Erik Nygren"
	.size	.L.str.16, 12

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"1996"
	.size	.L.str.17, 5

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"PNM Image"
	.size	.L.str.18, 10

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"image/x-portable-anymap"
	.size	.L.str.19, 24

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"pnm,ppm,pgm,pbm"
	.size	.L.str.20, 16

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.zero	1
	.size	.L.str.21, 1

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"0,string,P1,0,string,P2,0,string,P3,0,string,P4,0,string,P5,0,string,P6"
	.size	.L.str.22, 72

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"file-pnm-save"
	.size	.L.str.23, 14

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"Saves files in the PNM file format"
	.size	.L.str.24, 35

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"PNM saving handles all image types without transparency."
	.size	.L.str.25, 57

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"PNM image"
	.size	.L.str.26, 10

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"RGB, GRAY, INDEXED"
	.size	.L.str.27, 19

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"file-pbm-save"
	.size	.L.str.28, 14

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"Saves files in the PBM file format"
	.size	.L.str.29, 35

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"PBM saving produces mono images without transparency."
	.size	.L.str.30, 54

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"Martin K Collins"
	.size	.L.str.31, 17

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"2006"
	.size	.L.str.32, 5

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"PBM image"
	.size	.L.str.33, 10

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"file-pgm-save"
	.size	.L.str.34, 14

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"Saves files in the PGM file format"
	.size	.L.str.35, 35

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"PGM saving produces grayscale images without transparency."
	.size	.L.str.36, 59

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"PGM image"
	.size	.L.str.37, 10

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"file-ppm-save"
	.size	.L.str.38, 14

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"Saves files in the PPM file format"
	.size	.L.str.39, 35

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"PPM saving handles RGB images without transparency."
	.size	.L.str.40, 52

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"PPM image"
	.size	.L.str.41, 10

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"image/x-portable-bitmap"
	.size	.L.str.42, 24

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"image/x-portable-graymap"
	.size	.L.str.43, 25

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"image/x-portable-pixmap"
	.size	.L.str.44, 24

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"pnm"
	.size	.L.str.45, 4

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"pbm"
	.size	.L.str.46, 4

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"pgm"
	.size	.L.str.47, 4

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"ppm"
	.size	.L.str.48, 4

	.type	run.values,@object      # @run.values
	.local	run.values
	.comm	run.values,80,16
	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"gimp20-std-plug-ins"
	.size	.L.str.49, 20

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"UTF-8"
	.size	.L.str.50, 6

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"file-pnm"
	.size	.L.str.51, 9

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"PNM"
	.size	.L.str.52, 4

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"PBM"
	.size	.L.str.53, 4

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"PGM"
	.size	.L.str.54, 4

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"PPM"
	.size	.L.str.55, 4

	.type	psvals,@object          # @psvals
	.data
	.align	4
psvals:
	.long	1                       # 0x1
	.size	psvals, 4

	.type	.L.str.56,@object       # @.str.56
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.56:
	.asciz	"Could not open '%s' for reading: %s"
	.size	.L.str.56, 36

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"Opening '%s'"
	.size	.L.str.57, 13

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"Premature end of file."
	.size	.L.str.58, 23

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"Invalid file."
	.size	.L.str.59, 14

	.type	pnm_types,@object       # @pnm_types
	.section	.rodata,"a",@progbits
	.align	16
pnm_types:
	.byte	49                      # 0x31
	.zero	3
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	pnm_load_ascii
	.byte	50                      # 0x32
	.zero	3
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	255                     # 0xff
	.quad	pnm_load_ascii
	.byte	51                      # 0x33
	.zero	3
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	255                     # 0xff
	.quad	pnm_load_ascii
	.byte	52                      # 0x34
	.zero	3
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	pnm_load_rawpbm
	.byte	53                      # 0x35
	.zero	3
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	255                     # 0xff
	.quad	pnm_load_raw
	.byte	54                      # 0x36
	.zero	3
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	255                     # 0xff
	.quad	pnm_load_raw
	.zero	24
	.size	pnm_types, 168

	.type	.L.str.60,@object       # @.str.60
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.60:
	.asciz	"File not in a supported format."
	.size	.L.str.60, 32

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"Invalid X resolution."
	.size	.L.str.61, 22

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"Image width is larger than GIMP can handle."
	.size	.L.str.62, 44

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"Invalid Y resolution."
	.size	.L.str.63, 22

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"Image height is larger than GIMP can handle."
	.size	.L.str.64, 45

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"Unsupported maximum value."
	.size	.L.str.65, 27

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"Background"
	.size	.L.str.66, 11

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"Error reading file."
	.size	.L.str.67, 20

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"Data formatting"
	.size	.L.str.68, 16

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"Raw"
	.size	.L.str.69, 4

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"ASCII"
	.size	.L.str.70, 6

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"Cannot save images with alpha channel."
	.size	.L.str.71, 39

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"Could not open '%s' for writing: %s"
	.size	.L.str.72, 36

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"Saving '%s'"
	.size	.L.str.73, 12

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"P1\n"
	.size	.L.str.74, 4

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"P2\n"
	.size	.L.str.75, 4

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"P3\n"
	.size	.L.str.76, 4

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"PNM: Unknown drawable_type\n"
	.size	.L.str.77, 28

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"P4\n"
	.size	.L.str.78, 4

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"P5\n"
	.size	.L.str.79, 4

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"P6\n"
	.size	.L.str.80, 4

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"Images saved as PBM should be black/white"
	.size	.L.str.81, 42

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"# CREATOR: GIMP PNM Filter Version 1.1\n"
	.size	.L.str.82, 40

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"%d %d\n"
	.size	.L.str.83, 7

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"%d %d\n255\n"
	.size	.L.str.84, 11

	.type	pnmsaverow_ascii_pbm.line_len,@object # @pnmsaverow_ascii_pbm.line_len
	.local	pnmsaverow_ascii_pbm.line_len
	.comm	pnmsaverow_ascii_pbm.line_len,4,4
	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"%d\n"
	.size	.L.str.85, 4


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
