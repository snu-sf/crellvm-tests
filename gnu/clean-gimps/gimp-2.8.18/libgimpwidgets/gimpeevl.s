	.text
	.file	"gimpeevl.bc"
	.globl	gimp_eevl_evaluate
	.align	16, 0x90
	.type	gimp_eevl_evaluate,@function
gimp_eevl_evaluate:                     # @gimp_eevl_evaluate
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
	subq	$352, %rsp              # imm = 0x160
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
# BB#1:                                 # %do.body
	movq	$-1, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rdi
	callq	g_utf8_validate@PLT
	cmpl	$0, %eax
	je	.LBB0_3
# BB#2:                                 # %if.then
	jmp	.LBB0_4
.LBB0_3:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_eevl_evaluate(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB0_26
.LBB0_4:                                # %if.end
	jmp	.LBB0_5
.LBB0_5:                                # %do.end
	jmp	.LBB0_6
.LBB0_6:                                # %do.body.1
	cmpq	$0, -24(%rbp)
	je	.LBB0_8
# BB#7:                                 # %if.then.2
	jmp	.LBB0_9
.LBB0_8:                                # %if.else.3
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_eevl_evaluate(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB0_26
.LBB0_9:                                # %if.end.4
	jmp	.LBB0_10
.LBB0_10:                               # %do.end.5
	jmp	.LBB0_11
.LBB0_11:                               # %do.body.6
	cmpq	$0, -32(%rbp)
	je	.LBB0_13
# BB#12:                                # %if.then.8
	jmp	.LBB0_14
.LBB0_13:                               # %if.else.9
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_eevl_evaluate(%rip), %rsi
	leaq	.L.str.3(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB0_26
.LBB0_14:                               # %if.end.10
	jmp	.LBB0_15
.LBB0_15:                               # %do.end.11
	jmp	.LBB0_16
.LBB0_16:                               # %do.body.12
	cmpq	$0, -56(%rbp)
	je	.LBB0_18
# BB#17:                                # %lor.lhs.false
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB0_19
.LBB0_18:                               # %if.then.15
	jmp	.LBB0_20
.LBB0_19:                               # %if.else.16
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_eevl_evaluate(%rip), %rsi
	leaq	.L.str.4(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB0_26
.LBB0_20:                               # %if.end.17
	jmp	.LBB0_21
.LBB0_21:                               # %do.end.18
	leaq	-320(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rcx
	callq	gimp_eevl_init
	leaq	-320(%rbp), %rcx
	addq	$56, %rcx
	movq	%rcx, %rdi
	callq	_setjmp@PLT
	cmpl	$0, %eax
	jne	.LBB0_23
# BB#22:                                # %if.then.21
	leaq	-320(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	gimp_eevl_complete
	movsd	%xmm0, -336(%rbp)
	movl	%eax, -328(%rbp)
	movq	-336(%rbp), %rdi
	movq	-344(%rbp), %rcx        # 8-byte Reload
	movq	%rdi, (%rcx)
	movq	-328(%rbp), %rdi
	movq	%rdi, 8(%rcx)
	movl	$1, -4(%rbp)
	jmp	.LBB0_26
.LBB0_23:                               # %if.else.23
	cmpq	$0, -48(%rbp)
	je	.LBB0_25
# BB#24:                                # %if.then.25
	movq	-272(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB0_25:                               # %if.end.26
	movq	-56(%rbp), %rdi
	movq	%rdi, -352(%rbp)        # 8-byte Spill
	callq	gimp_widgets_error_quark@PLT
	xorl	%edx, %edx
	movq	-64(%rbp), %rcx
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %esi
	callq	g_set_error_literal@PLT
	movl	$0, -4(%rbp)
.LBB0_26:                               # %return
	movl	-4(%rbp), %eax
	addq	$352, %rsp              # imm = 0x160
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_eevl_evaluate, .Lfunc_end0-gimp_eevl_evaluate
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_eevl_init,@function
gimp_eevl_init:                         # @gimp_eevl_init
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	%rcx, (%rdx)
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	%rcx, 8(%rdx)
	movq	-32(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	%rcx, 16(%rdx)
	movq	-8(%rbp), %rcx
	movl	$50000, 24(%rcx)        # imm = 0xC350
	movq	-8(%rbp), %rcx
	movq	$0, 256(%rcx)
	movq	-8(%rbp), %rdi
	callq	gimp_eevl_lex
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_eevl_init, .Lfunc_end1-gimp_eevl_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_eevl_complete,@function
gimp_eevl_complete:                     # @gimp_eevl_complete
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp6:
	.cfi_def_cfa_offset 16
.Ltmp7:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp8:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movl	$50000, %esi            # imm = 0xC350
	xorl	%eax, %eax
	movl	%eax, %edx
	xorl	%eax, %eax
	movl	$16, %ecx
	movl	%ecx, %r8d
	leaq	-40(%rbp), %r9
	movq	%rdi, -24(%rbp)
	movq	%r9, %rdi
	movl	%esi, -76(%rbp)         # 4-byte Spill
	movl	%eax, %esi
	movq	%rdx, -88(%rbp)         # 8-byte Spill
	movq	%r8, %rdx
	callq	memset@PLT
	movq	-24(%rbp), %rdi
	movl	-76(%rbp), %esi         # 4-byte Reload
	movq	-88(%rbp), %rdx         # 8-byte Reload
	callq	gimp_eevl_accept
	cmpl	$0, %eax
	je	.LBB2_2
# BB#1:                                 # %if.then
	movq	-40(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB2_6
.LBB2_2:                                # %if.end
	movq	-24(%rbp), %rdi
	callq	gimp_eevl_expression
	movl	$50000, %esi            # imm = 0xC350
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movsd	%xmm0, -72(%rbp)
	movl	%eax, -64(%rbp)
	movq	-72(%rbp), %rdi
	movq	%rdi, -40(%rbp)
	movq	-64(%rbp), %rdi
	movq	%rdi, -32(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_eevl_expect
	xorl	%eax, %eax
	movl	%eax, %edi
	leaq	-56(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	-24(%rbp), %r8
	movq	16(%r8), %r8
	movq	%rdx, -96(%rbp)         # 8-byte Spill
	movq	%r8, %rdx
	movq	-96(%rbp), %r8          # 8-byte Reload
	callq	*%r8
	cmpl	$0, -32(%rbp)
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jne	.LBB2_5
# BB#3:                                 # %land.lhs.true
	cmpl	$0, -48(%rbp)
	je	.LBB2_5
# BB#4:                                 # %if.then.5
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -40(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -32(%rbp)
.LBB2_5:                                # %if.end.9
	movq	-40(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB2_6:                                # %return
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-8(%rbp), %eax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_eevl_complete, .Lfunc_end2-gimp_eevl_complete
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_eevl_lex,@function
gimp_eevl_lex:                          # @gimp_eevl_lex
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp9:
	.cfi_def_cfa_offset 16
.Ltmp10:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp11:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_eevl_move_past_whitespace
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, 48(%rax)
	cmpq	$0, -16(%rbp)
	je	.LBB3_2
# BB#1:                                 # %lor.lhs.false
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	jne	.LBB3_3
.LBB3_2:                                # %if.then
	movq	-8(%rbp), %rax
	movl	$50000, 24(%rax)        # imm = 0xC350
	jmp	.LBB3_15
.LBB3_3:                                # %if.else
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$43, %ecx
	je	.LBB3_5
# BB#4:                                 # %lor.lhs.false.6
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$45, %ecx
	jne	.LBB3_6
.LBB3_5:                                # %if.then.11
	movl	$1, %esi
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movsbl	(%rax), %edx
	callq	gimp_eevl_lex_accept_count
	jmp	.LBB3_14
.LBB3_6:                                # %if.else.14
	leaq	-24(%rbp), %rsi
	movq	$0, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	g_strtod@PLT
	movsd	%xmm0, -32(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB3_9
# BB#7:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	cmpq	-16(%rbp), %rax
	je	.LBB3_9
# BB#8:                                 # %if.then.18
	movl	$30000, %edx            # imm = 0x7530
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, 32(%rax)
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_eevl_lex_accept_to
	jmp	.LBB3_13
.LBB3_9:                                # %if.else.21
	movq	-16(%rbp), %rax
	movsbl	(%rax), %edi
	callq	gimp_eevl_unit_identifier_start
	cmpl	$0, %eax
	je	.LBB3_11
# BB#10:                                # %if.then.26
	xorl	%esi, %esi
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 32(%rcx)
	movq	-16(%rbp), %rdi
	callq	gimp_eevl_unit_identifier_size
	movl	$30001, %edx            # imm = 0x7531
	movq	-8(%rbp), %rcx
	movl	%eax, 40(%rcx)
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movl	40(%rcx), %esi
	callq	gimp_eevl_lex_accept_count
	jmp	.LBB3_12
.LBB3_11:                               # %if.else.35
	movl	$1, %esi
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movsbl	(%rax), %edx
	callq	gimp_eevl_lex_accept_count
.LBB3_12:                               # %if.end
	jmp	.LBB3_13
.LBB3_13:                               # %if.end.38
	jmp	.LBB3_14
.LBB3_14:                               # %if.end.39
	jmp	.LBB3_15
.LBB3_15:                               # %if.end.40
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_eevl_lex, .Lfunc_end3-gimp_eevl_lex
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_eevl_move_past_whitespace,@function
gimp_eevl_move_past_whitespace:         # @gimp_eevl_move_past_whitespace
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp12:
	.cfi_def_cfa_offset 16
.Ltmp13:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp14:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpq	$0, (%rdi)
	jne	.LBB4_2
# BB#1:                                 # %if.then
	jmp	.LBB4_5
.LBB4_2:                                # %if.end
	jmp	.LBB4_3
.LBB4_3:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	g_ascii_table@GOTPCREL(%rip), %rax
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movzbl	(%rcx), %edx
	movl	%edx, %ecx
	movq	(%rax), %rax
	movzwl	(%rax,%rcx,2), %edx
	andl	$256, %edx              # imm = 0x100
	cmpl	$0, %edx
	je	.LBB4_5
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB4_3 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	addq	$1, %rcx
	movq	%rcx, (%rax)
	jmp	.LBB4_3
.LBB4_5:                                # %while.end
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_eevl_move_past_whitespace, .Lfunc_end4-gimp_eevl_move_past_whitespace
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_eevl_lex_accept_count,@function
gimp_eevl_lex_accept_count:             # @gimp_eevl_lex_accept_count
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp15:
	.cfi_def_cfa_offset 16
.Ltmp16:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp17:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	-16(%rbp), %edx
	movq	-8(%rbp), %rdi
	movl	%edx, 24(%rdi)
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rax
	movslq	%edx, %rcx
	addq	%rcx, %rax
	movq	%rax, (%rdi)
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_eevl_lex_accept_count, .Lfunc_end5-gimp_eevl_lex_accept_count
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_eevl_lex_accept_to,@function
gimp_eevl_lex_accept_to:                # @gimp_eevl_lex_accept_to
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	-20(%rbp), %edx
	movq	-8(%rbp), %rsi
	movl	%edx, 24(%rsi)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, (%rdi)
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_eevl_lex_accept_to, .Lfunc_end6-gimp_eevl_lex_accept_to
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_eevl_unit_identifier_start,@function
gimp_eevl_unit_identifier_start:        # @gimp_eevl_unit_identifier_start
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
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	callq	g_unichar_isalpha@PLT
	movb	$1, %cl
	cmpl	$0, %eax
	movb	%cl, -5(%rbp)           # 1-byte Spill
	jne	.LBB7_3
# BB#1:                                 # %lor.lhs.false
	movb	$1, %al
	cmpl	$37, -4(%rbp)
	movb	%al, -5(%rbp)           # 1-byte Spill
	je	.LBB7_3
# BB#2:                                 # %lor.rhs
	cmpl	$39, -4(%rbp)
	sete	%al
	movb	%al, -5(%rbp)           # 1-byte Spill
.LBB7_3:                                # %lor.end
	movb	-5(%rbp), %al           # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_eevl_unit_identifier_start, .Lfunc_end7-gimp_eevl_unit_identifier_start
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_eevl_unit_identifier_size,@function
gimp_eevl_unit_identifier_size:         # @gimp_eevl_unit_identifier_size
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movslq	-12(%rbp), %rsi
	callq	g_utf8_offset_to_pointer@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_utf8_get_char@PLT
	movl	%eax, -36(%rbp)
	movl	$0, -40(%rbp)
	movl	-36(%rbp), %edi
	callq	gimp_eevl_unit_identifier_start
	cmpl	$0, %eax
	je	.LBB8_5
# BB#1:                                 # %if.then
	movq	g_utf8_skip@GOTPCREL(%rip), %rax
	movq	-32(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movzbl	(%rdx), %esi
	movl	%esi, %edx
	movq	(%rax), %rax
	movsbl	(%rax,%rdx), %esi
	movslq	%esi, %rax
	addq	%rax, %rcx
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_utf8_get_char@PLT
	movl	%eax, -36(%rbp)
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
.LBB8_2:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %edi
	callq	gimp_eevl_unit_identifier_continue
	cmpl	$0, %eax
	je	.LBB8_4
# BB#3:                                 # %while.body
                                        #   in Loop: Header=BB8_2 Depth=1
	movq	g_utf8_skip@GOTPCREL(%rip), %rax
	movq	-32(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movzbl	(%rdx), %esi
	movl	%esi, %edx
	movq	(%rax), %rax
	movsbl	(%rax,%rdx), %esi
	movslq	%esi, %rax
	addq	%rax, %rcx
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_utf8_get_char@PLT
	movl	%eax, -36(%rbp)
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB8_2
.LBB8_4:                                # %while.end
	jmp	.LBB8_5
.LBB8_5:                                # %if.end
	movq	-24(%rbp), %rdi
	movslq	-40(%rbp), %rsi
	callq	g_utf8_offset_to_pointer@PLT
	movq	-24(%rbp), %rsi
	subq	%rsi, %rax
	movl	%eax, %ecx
	movl	%ecx, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_eevl_unit_identifier_size, .Lfunc_end8-gimp_eevl_unit_identifier_size
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_eevl_unit_identifier_continue,@function
gimp_eevl_unit_identifier_continue:     # @gimp_eevl_unit_identifier_continue
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
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	callq	gimp_eevl_unit_identifier_start
	movb	$1, %cl
	cmpl	$0, %eax
	movb	%cl, -5(%rbp)           # 1-byte Spill
	jne	.LBB9_2
# BB#1:                                 # %lor.rhs
	movl	-4(%rbp), %edi
	callq	g_unichar_isdigit@PLT
	cmpl	$0, %eax
	setne	%cl
	movb	%cl, -5(%rbp)           # 1-byte Spill
.LBB9_2:                                # %lor.end
	movb	-5(%rbp), %al           # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_eevl_unit_identifier_continue, .Lfunc_end9-gimp_eevl_unit_identifier_continue
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_eevl_accept,@function
gimp_eevl_accept:                       # @gimp_eevl_accept
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
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movl	$0, -28(%rbp)
	movl	-12(%rbp), %esi
	movq	-8(%rbp), %rdx
	cmpl	24(%rdx), %esi
	je	.LBB10_2
# BB#1:                                 # %lor.lhs.false
	cmpl	$40000, -12(%rbp)       # imm = 0x9C40
	jne	.LBB10_5
.LBB10_2:                               # %if.then
	movl	$1, -28(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB10_4
# BB#3:                                 # %if.then.2
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, (%rax)
	movq	32(%rcx), %rdx
	movq	%rdx, 8(%rax)
	movq	40(%rcx), %rcx
	movq	%rcx, 16(%rax)
.LBB10_4:                               # %if.end
	movq	-8(%rbp), %rdi
	callq	gimp_eevl_lex
.LBB10_5:                               # %if.end.4
	movl	-28(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_eevl_accept, .Lfunc_end10-gimp_eevl_accept
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_eevl_expression,@function
gimp_eevl_expression:                   # @gimp_eevl_expression
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
	subq	$112, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_eevl_term
	movsd	%xmm0, -64(%rbp)
	movl	%eax, -56(%rbp)
	movq	-64(%rbp), %rdi
	movq	%rdi, -48(%rbp)
	movq	-56(%rbp), %rdi
	movq	%rdi, -40(%rbp)
	movl	$0, -28(%rbp)
.LBB11_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	$43, %esi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rdi
	callq	gimp_eevl_accept
	movb	$1, %cl
	cmpl	$0, %eax
	movb	%cl, -97(%rbp)          # 1-byte Spill
	jne	.LBB11_3
# BB#2:                                 # %lor.rhs
                                        #   in Loop: Header=BB11_1 Depth=1
	movl	$45, %esi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rdi
	callq	gimp_eevl_accept
	movl	%eax, -28(%rbp)
	cmpl	$0, %eax
	setne	%cl
	movb	%cl, -97(%rbp)          # 1-byte Spill
.LBB11_3:                               # %lor.end
                                        #   in Loop: Header=BB11_1 Depth=1
	movb	-97(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB11_4
	jmp	.LBB11_19
.LBB11_4:                               # %for.body
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	-24(%rbp), %rdi
	callq	gimp_eevl_term
	movsd	%xmm0, -80(%rbp)
	movl	%eax, -72(%rbp)
	movl	-72(%rbp), %eax
	cmpl	-40(%rbp), %eax
	je	.LBB11_14
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB11_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edi
	leaq	-96(%rbp), %rsi
	movq	-24(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	-24(%rbp), %rdx
	movq	16(%rdx), %rdx
	callq	*%rcx
	cmpl	$0, -72(%rbp)
	movl	%eax, -104(%rbp)        # 4-byte Spill
	jne	.LBB11_8
# BB#6:                                 # %land.lhs.true
                                        #   in Loop: Header=BB11_1 Depth=1
	movl	-40(%rbp), %eax
	cmpl	-88(%rbp), %eax
	jne	.LBB11_8
# BB#7:                                 # %if.then.12
                                        #   in Loop: Header=BB11_1 Depth=1
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -80(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, -72(%rbp)
	jmp	.LBB11_13
.LBB11_8:                               # %if.else
                                        #   in Loop: Header=BB11_1 Depth=1
	cmpl	$0, -40(%rbp)
	jne	.LBB11_11
# BB#9:                                 # %land.lhs.true.18
                                        #   in Loop: Header=BB11_1 Depth=1
	movl	-72(%rbp), %eax
	cmpl	-88(%rbp), %eax
	jne	.LBB11_11
# BB#10:                                # %if.then.22
                                        #   in Loop: Header=BB11_1 Depth=1
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -48(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB11_12
.LBB11_11:                              # %if.else.28
                                        #   in Loop: Header=BB11_1 Depth=1
	leaq	.L.str.5(%rip), %rsi
	movq	-24(%rbp), %rdi
	callq	gimp_eevl_error
.LBB11_12:                              # %if.end
                                        #   in Loop: Header=BB11_1 Depth=1
	jmp	.LBB11_13
.LBB11_13:                              # %if.end.29
                                        #   in Loop: Header=BB11_1 Depth=1
	jmp	.LBB11_14
.LBB11_14:                              # %if.end.30
                                        #   in Loop: Header=BB11_1 Depth=1
	cmpl	$0, -28(%rbp)
	je	.LBB11_16
# BB#15:                                # %cond.true
                                        #   in Loop: Header=BB11_1 Depth=1
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movsd	%xmm0, -112(%rbp)       # 8-byte Spill
	jmp	.LBB11_17
.LBB11_16:                              # %cond.false
                                        #   in Loop: Header=BB11_1 Depth=1
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -112(%rbp)       # 8-byte Spill
.LBB11_17:                              # %cond.end
                                        #   in Loop: Header=BB11_1 Depth=1
	movsd	-112(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	-48(%rbp), %xmm0
	movsd	%xmm0, -48(%rbp)
# BB#18:                                # %for.inc
                                        #   in Loop: Header=BB11_1 Depth=1
	movl	$0, -28(%rbp)
	jmp	.LBB11_1
.LBB11_19:                              # %for.end
	movups	-48(%rbp), %xmm0
	movaps	%xmm0, -16(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-8(%rbp), %eax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_eevl_expression, .Lfunc_end11-gimp_eevl_expression
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_eevl_expect,@function
gimp_eevl_expect:                       # @gimp_eevl_expect
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
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movq	-24(%rbp), %rdx
	callq	gimp_eevl_accept
	cmpl	$0, %eax
	jne	.LBB12_2
# BB#1:                                 # %if.then
	leaq	.L.str.8(%rip), %rsi
	movq	-8(%rbp), %rdi
	callq	gimp_eevl_error
.LBB12_2:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_eevl_expect, .Lfunc_end12-gimp_eevl_expect
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_eevl_term,@function
gimp_eevl_term:                         # @gimp_eevl_term
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
	subq	$96, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_eevl_signed_factor
	movsd	%xmm0, -64(%rbp)
	movl	%eax, -56(%rbp)
	movq	-64(%rbp), %rdi
	movq	%rdi, -48(%rbp)
	movq	-56(%rbp), %rdi
	movq	%rdi, -40(%rbp)
	movl	$0, -28(%rbp)
.LBB13_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	$42, %esi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rdi
	callq	gimp_eevl_accept
	movb	$1, %cl
	cmpl	$0, %eax
	movb	%cl, -81(%rbp)          # 1-byte Spill
	jne	.LBB13_3
# BB#2:                                 # %lor.rhs
                                        #   in Loop: Header=BB13_1 Depth=1
	movl	$47, %esi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rdi
	callq	gimp_eevl_accept
	movl	%eax, -28(%rbp)
	cmpl	$0, %eax
	setne	%cl
	movb	%cl, -81(%rbp)          # 1-byte Spill
.LBB13_3:                               # %lor.end
                                        #   in Loop: Header=BB13_1 Depth=1
	movb	-81(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB13_4
	jmp	.LBB13_9
.LBB13_4:                               # %for.body
                                        #   in Loop: Header=BB13_1 Depth=1
	movq	-24(%rbp), %rdi
	callq	gimp_eevl_signed_factor
	movsd	%xmm0, -80(%rbp)
	movl	%eax, -72(%rbp)
	cmpl	$0, -28(%rbp)
	je	.LBB13_6
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB13_1 Depth=1
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -48(%rbp)
	movl	-72(%rbp), %eax
	movl	-40(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -40(%rbp)
	jmp	.LBB13_7
.LBB13_6:                               # %if.else
                                        #   in Loop: Header=BB13_1 Depth=1
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-48(%rbp), %xmm0
	movsd	%xmm0, -48(%rbp)
	movl	-72(%rbp), %eax
	addl	-40(%rbp), %eax
	movl	%eax, -40(%rbp)
.LBB13_7:                               # %if.end
                                        #   in Loop: Header=BB13_1 Depth=1
	jmp	.LBB13_8
.LBB13_8:                               # %for.inc
                                        #   in Loop: Header=BB13_1 Depth=1
	movl	$0, -28(%rbp)
	jmp	.LBB13_1
.LBB13_9:                               # %for.end
	movups	-48(%rbp), %xmm0
	movaps	%xmm0, -16(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-8(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_eevl_term, .Lfunc_end13-gimp_eevl_term
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_eevl_error,@function
gimp_eevl_error:                        # @gimp_eevl_error
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
	subq	$16, %rsp
	movl	$1, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 256(%rdi)
	movq	-8(%rbp), %rsi
	addq	$56, %rsi
	movq	%rsi, %rdi
	movl	%eax, %esi
	callq	longjmp@PLT
.Lfunc_end14:
	.size	gimp_eevl_error, .Lfunc_end14-gimp_eevl_error
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_eevl_signed_factor,@function
gimp_eevl_signed_factor:                # @gimp_eevl_signed_factor
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
	subq	$64, %rsp
	movl	$43, %esi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	%rdi, -24(%rbp)
	movl	$0, -44(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_eevl_accept
	cmpl	$0, %eax
	jne	.LBB15_2
# BB#1:                                 # %if.then
	movl	$45, %esi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rdi
	callq	gimp_eevl_accept
	movl	%eax, -44(%rbp)
.LBB15_2:                               # %if.end
	movq	-24(%rbp), %rdi
	callq	gimp_eevl_factor
	movsd	%xmm0, -64(%rbp)
	movl	%eax, -56(%rbp)
	movq	-64(%rbp), %rdi
	movq	%rdi, -40(%rbp)
	movq	-56(%rbp), %rdi
	movq	%rdi, -32(%rbp)
	cmpl	$0, -44(%rbp)
	je	.LBB15_4
# BB#3:                                 # %if.then.4
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movsd	%xmm0, -40(%rbp)
.LBB15_4:                               # %if.end.6
	movups	-40(%rbp), %xmm0
	movaps	%xmm0, -16(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-8(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_eevl_signed_factor, .Lfunc_end15-gimp_eevl_signed_factor
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_eevl_factor,@function
gimp_eevl_factor:                       # @gimp_eevl_factor
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
	subq	$144, %rsp
	movl	$30000, %esi            # imm = 0x7530
	leaq	-64(%rbp), %rdx
	xorl	%eax, %eax
	movl	$16, %ecx
	movl	%ecx, %r8d
	leaq	-40(%rbp), %r9
	movq	%rdi, -24(%rbp)
	movq	%r9, %rdi
	movl	%esi, -108(%rbp)        # 4-byte Spill
	movl	%eax, %esi
	movq	%rdx, -120(%rbp)        # 8-byte Spill
	movq	%r8, %rdx
	callq	memset@PLT
	movq	-24(%rbp), %rdi
	movl	-108(%rbp), %esi        # 4-byte Reload
	movq	-120(%rbp), %rdx        # 8-byte Reload
	callq	gimp_eevl_accept
	cmpl	$0, %eax
	je	.LBB16_2
# BB#1:                                 # %if.then
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -40(%rbp)
	jmp	.LBB16_6
.LBB16_2:                               # %if.else
	movl	$40, %esi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rdi
	callq	gimp_eevl_accept
	cmpl	$0, %eax
	je	.LBB16_4
# BB#3:                                 # %if.then.4
	movq	-24(%rbp), %rdi
	callq	gimp_eevl_expression
	movl	$41, %esi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movsd	%xmm0, -80(%rbp)
	movl	%eax, -72(%rbp)
	movq	-80(%rbp), %rdi
	movq	%rdi, -40(%rbp)
	movq	-72(%rbp), %rdi
	movq	%rdi, -32(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_eevl_expect
	jmp	.LBB16_5
.LBB16_4:                               # %if.else.6
	leaq	.L.str.6(%rip), %rsi
	movq	-24(%rbp), %rdi
	callq	gimp_eevl_error
.LBB16_5:                               # %if.end
	jmp	.LBB16_6
.LBB16_6:                               # %if.end.7
	movq	-24(%rbp), %rax
	cmpl	$30001, 24(%rax)        # imm = 0x7531
	jne	.LBB16_11
# BB#7:                                 # %if.then.8
	movq	-24(%rbp), %rdi
	movl	$40000, %esi            # imm = 0x9C40
	leaq	-64(%rbp), %rdx
	callq	gimp_eevl_accept
	movl	-48(%rbp), %esi
	incl	%esi
	movslq	%esi, %rdx
	addq	$15, %rdx
	andq	$-16, %rdx
	movq	%rsp, %rdi
	subq	%rdx, %rdi
	movq	%rdi, %rsp
	movq	%rdi, -88(%rbp)
	movq	-88(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movslq	-48(%rbp), %rdx
	movl	%eax, -124(%rbp)        # 4-byte Spill
	callq	strncpy@PLT
	leaq	-104(%rbp), %rsi
	movslq	-48(%rbp), %rdx
	movq	-88(%rbp), %rdi
	movb	$0, (%rdi,%rdx)
	movq	-24(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	-88(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	%rdx, -136(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-136(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	*%rcx
	cmpl	$0, %eax
	je	.LBB16_9
# BB#8:                                 # %if.then.20
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -40(%rbp)
	movl	-96(%rbp), %eax
	addl	-32(%rbp), %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB16_10
.LBB16_9:                               # %if.else.25
	leaq	.L.str.7(%rip), %rsi
	movq	-24(%rbp), %rdi
	callq	gimp_eevl_error
.LBB16_10:                              # %if.end.26
	jmp	.LBB16_11
.LBB16_11:                              # %if.end.27
	movups	-40(%rbp), %xmm0
	movaps	%xmm0, -16(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-8(%rbp), %eax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_eevl_factor, .Lfunc_end16-gimp_eevl_factor
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"LibGimpWidgets"
	.size	.L.str, 15

	.type	.L__func__.gimp_eevl_evaluate,@object # @__func__.gimp_eevl_evaluate
.L__func__.gimp_eevl_evaluate:
	.asciz	"gimp_eevl_evaluate"
	.size	.L__func__.gimp_eevl_evaluate, 19

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"g_utf8_validate (string, -1, NULL)"
	.size	.L.str.1, 35

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"unit_resolver_proc != NULL"
	.size	.L.str.2, 27

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"result != NULL"
	.size	.L.str.3, 15

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"error == NULL || *error == NULL"
	.size	.L.str.4, 32

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Dimension missmatch during addition"
	.size	.L.str.5, 36

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Expected number or '('"
	.size	.L.str.6, 23

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Unit was not resolved"
	.size	.L.str.7, 22

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Unexpected token"
	.size	.L.str.8, 17


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
