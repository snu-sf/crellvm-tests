	.text
	.file	"signals.bc"
	.globl	gimp_init_signal_handlers
	.align	16, 0x90
	.type	gimp_init_signal_handlers,@function
gimp_init_signal_handlers:              # @gimp_init_signal_handlers
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
	subq	$96, %rsp
	movl	$1, %eax
	movabsq	$gimp_sigfatal_handler, %rsi
	xorl	%edx, %edx
	movl	%edi, -4(%rbp)
	movl	%eax, %edi
	callq	gimp_signal_private
	movl	$2, %edi
	movabsq	$gimp_sigfatal_handler, %rsi
	xorl	%edx, %edx
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	gimp_signal_private
	movl	$3, %edi
	movabsq	$gimp_sigfatal_handler, %rsi
	xorl	%edx, %edx
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gimp_signal_private
	movl	$6, %edi
	movabsq	$gimp_sigfatal_handler, %rsi
	xorl	%edx, %edx
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_signal_private
	movl	$15, %edi
	movabsq	$gimp_sigfatal_handler, %rsi
	xorl	%edx, %edx
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_signal_private
	cmpl	$0, -4(%rbp)
	movq	%rax, -48(%rbp)         # 8-byte Spill
	je	.LBB0_2
# BB#1:                                 # %if.then
	movl	$7, %edi
	movabsq	$gimp_sigfatal_handler, %rsi
	xorl	%edx, %edx
	callq	gimp_signal_private
	movl	$11, %edi
	movabsq	$gimp_sigfatal_handler, %rsi
	xorl	%edx, %edx
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_signal_private
	movl	$8, %edi
	movabsq	$gimp_sigfatal_handler, %rsi
	xorl	%edx, %edx
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_signal_private
	movq	%rax, -72(%rbp)         # 8-byte Spill
.LBB0_2:                                # %if.end
	movl	$13, %edi
	movl	$1, %eax
	movl	%eax, %esi
	xorl	%edx, %edx
	callq	gimp_signal_private
	movl	$17, %edi
	xorl	%edx, %edx
	movl	%edx, %esi
	movl	$268435456, %edx        # imm = 0x10000000
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_signal_private
	movq	%rax, -88(%rbp)         # 8-byte Spill
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_init_signal_handlers, .Lfunc_end0-gimp_init_signal_handlers
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_sigfatal_handler,@function
gimp_sigfatal_handler:                  # @gimp_sigfatal_handler
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp3:
	.cfi_def_cfa_offset 16
.Ltmp4:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp5:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movl	%edi, %eax
	decl	%eax
	subl	$3, %eax
	movl	%edi, -8(%rbp)          # 4-byte Spill
	movl	%eax, -12(%rbp)         # 4-byte Spill
	jb	.LBB1_1
	jmp	.LBB1_4
.LBB1_4:                                # %entry
	movl	-8(%rbp), %eax          # 4-byte Reload
	subl	$6, %eax
	movl	%eax, -16(%rbp)         # 4-byte Spill
	je	.LBB1_1
	jmp	.LBB1_5
.LBB1_5:                                # %entry
	movl	-8(%rbp), %eax          # 4-byte Reload
	addl	$-7, %eax
	subl	$2, %eax
	movl	%eax, -20(%rbp)         # 4-byte Spill
	jb	.LBB1_2
	jmp	.LBB1_6
.LBB1_6:                                # %entry
	movl	-8(%rbp), %eax          # 4-byte Reload
	subl	$11, %eax
	movl	%eax, -24(%rbp)         # 4-byte Spill
	je	.LBB1_2
	jmp	.LBB1_7
.LBB1_7:                                # %entry
	movl	-8(%rbp), %eax          # 4-byte Reload
	subl	$15, %eax
	movl	%eax, -28(%rbp)         # 4-byte Spill
	jne	.LBB1_3
	jmp	.LBB1_1
.LBB1_1:                                # %sw.bb
	movl	-4(%rbp), %edi
	callq	g_strsignal
	movq	%rax, %rdi
	callq	gimp_terminate
.LBB1_2:                                # %sw.bb.1
	jmp	.LBB1_3
.LBB1_3:                                # %sw.default
	movl	-4(%rbp), %edi
	callq	g_strsignal
	movq	%rax, %rdi
	callq	gimp_fatal_error
.Lfunc_end1:
	.size	gimp_sigfatal_handler, .Lfunc_end1-gimp_sigfatal_handler
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
