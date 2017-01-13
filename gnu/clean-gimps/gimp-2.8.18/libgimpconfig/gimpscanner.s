	.text
	.file	"gimpscanner.bc"
	.globl	gimp_scanner_new_file
	.align	16, 0x90
	.type	gimp_scanner_new_file,@function
gimp_scanner_new_file:                  # @gimp_scanner_new_file
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB0_3
# BB#2:                                 # %if.then
	jmp	.LBB0_4
.LBB0_3:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_scanner_new_file(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB0_16
.LBB0_4:                                # %if.end
	jmp	.LBB0_5
.LBB0_5:                                # %do.end
	jmp	.LBB0_6
.LBB0_6:                                # %do.body.1
	cmpq	$0, -24(%rbp)
	je	.LBB0_8
# BB#7:                                 # %lor.lhs.false
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB0_9
.LBB0_8:                                # %if.then.4
	jmp	.LBB0_10
.LBB0_9:                                # %if.else.5
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_scanner_new_file(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB0_16
.LBB0_10:                               # %if.end.6
	jmp	.LBB0_11
.LBB0_11:                               # %do.end.7
	xorl	%esi, %esi
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rdx
	callq	g_mapped_file_new@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB0_15
# BB#12:                                # %if.then.8
	cmpq	$0, -24(%rbp)
	je	.LBB0_14
# BB#13:                                # %if.then.10
	callq	gimp_config_error_quark@PLT
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	-24(%rbp), %rsi
	movq	(%rsi), %rsi
	movl	%eax, (%rsi)
	movq	-24(%rbp), %rsi
	movq	(%rsi), %rsi
	cmpl	$4, 4(%rsi)
	cmovel	%edx, %ecx
	movq	-24(%rbp), %rsi
	movq	(%rsi), %rsi
	movl	%ecx, 4(%rsi)
.LBB0_14:                               # %if.end.14
	movq	$0, -8(%rbp)
	jmp	.LBB0_16
.LBB0_15:                               # %if.end.15
	movq	-16(%rbp), %rdi
	callq	gimp_filename_to_utf8@PLT
	movq	-40(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_scanner_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	g_mapped_file_get_contents@PLT
	movq	-40(%rbp), %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	g_mapped_file_get_length@PLT
	movl	%eax, %ecx
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movl	%ecx, %edx
	callq	g_scanner_input_text@PLT
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB0_16:                               # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_scanner_new_file, .Lfunc_end0-gimp_scanner_new_file
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_scanner_new,@function
gimp_scanner_new:                       # @gimp_scanner_new
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
	subq	$48, %rsp
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, %rdi
	callq	g_scanner_new@PLT
	movl	$24, %r8d
	movl	%r8d, %edi
	movq	%rax, -32(%rbp)
	callq	g_slice_alloc0@PLT
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_strdup@PLT
	leaq	.L.str.21(%rip), %rcx
	leaq	.L.str.20(%rip), %rdx
	leaq	gimp_scanner_message(%rip), %rsi
	movq	-40(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	-16(%rbp), %rax
	movq	-40(%rbp), %rdi
	movq	%rax, 8(%rdi)
	movq	-24(%rbp), %rax
	movq	-40(%rbp), %rdi
	movq	%rax, 16(%rdi)
	movq	-40(%rbp), %rax
	movq	-32(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	-32(%rbp), %rax
	movq	%rsi, 136(%rax)
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rdx, 8(%rax)
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rcx, 16(%rax)
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movl	32(%rax), %r8d
	andl	$-33, %r8d
	orl	$32, %r8d
	movl	%r8d, 32(%rax)
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movl	32(%rax), %r8d
	andl	$-2097153, %r8d         # imm = 0xFFFFFFFFFFDFFFFF
	orl	$2097152, %r8d          # imm = 0x200000
	movl	%r8d, 32(%rax)
	movq	-32(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_scanner_new, .Lfunc_end1-gimp_scanner_new
	.cfi_endproc

	.globl	gimp_scanner_new_string
	.align	16, 0x90
	.type	gimp_scanner_new_string,@function
gimp_scanner_new_string:                # @gimp_scanner_new_string
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	jne	.LBB2_3
# BB#2:                                 # %lor.lhs.false
	cmpl	$0, -20(%rbp)
	jne	.LBB2_4
.LBB2_3:                                # %if.then
	jmp	.LBB2_5
.LBB2_4:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_scanner_new_string(%rip), %rsi
	leaq	.L.str.3(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB2_15
.LBB2_5:                                # %if.end
	jmp	.LBB2_6
.LBB2_6:                                # %do.end
	jmp	.LBB2_7
.LBB2_7:                                # %do.body.2
	cmpq	$0, -32(%rbp)
	je	.LBB2_9
# BB#8:                                 # %lor.lhs.false.4
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB2_10
.LBB2_9:                                # %if.then.6
	jmp	.LBB2_11
.LBB2_10:                               # %if.else.7
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_scanner_new_string(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB2_15
.LBB2_11:                               # %if.end.8
	jmp	.LBB2_12
.LBB2_12:                               # %do.end.9
	cmpl	$0, -20(%rbp)
	jge	.LBB2_14
# BB#13:                                # %if.then.11
	movq	-16(%rbp), %rdi
	callq	strlen@PLT
	movl	%eax, %ecx
	movl	%ecx, -20(%rbp)
.LBB2_14:                               # %if.end.12
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rcx, %rsi
	callq	gimp_scanner_new
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	callq	g_scanner_input_text@PLT
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB2_15:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_scanner_new_string, .Lfunc_end2-gimp_scanner_new_string
	.cfi_endproc

	.globl	gimp_scanner_destroy
	.align	16, 0x90
	.type	gimp_scanner_destroy,@function
gimp_scanner_destroy:                   # @gimp_scanner_destroy
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB3_3
# BB#2:                                 # %if.then
	jmp	.LBB3_4
.LBB3_3:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_scanner_destroy(%rip), %rsi
	leaq	.L.str.4(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB3_10
.LBB3_4:                                # %if.end
	jmp	.LBB3_5
.LBB3_5:                                # %do.end
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB3_7
# BB#6:                                 # %if.then.1
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	callq	g_mapped_file_unref@PLT
.LBB3_7:                                # %if.end.3
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_free@PLT
# BB#8:                                 # %do.body.4
	movl	$24, %eax
	movl	%eax, %edi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1@PLT
# BB#9:                                 # %do.end.5
	movq	-8(%rbp), %rdi
	callq	g_scanner_destroy@PLT
.LBB3_10:                               # %return
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_scanner_destroy, .Lfunc_end3-gimp_scanner_destroy
	.cfi_endproc

	.globl	gimp_scanner_parse_token
	.align	16, 0x90
	.type	gimp_scanner_parse_token,@function
gimp_scanner_parse_token:               # @gimp_scanner_parse_token
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
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	-16(%rbp), %rdi
	callq	g_scanner_peek_next_token@PLT
	cmpl	-20(%rbp), %eax
	je	.LBB4_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB4_3
.LBB4_2:                                # %if.end
	movq	-16(%rbp), %rdi
	callq	g_scanner_get_next_token@PLT
	movl	$1, -4(%rbp)
	movl	%eax, -24(%rbp)         # 4-byte Spill
.LBB4_3:                                # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_scanner_parse_token, .Lfunc_end4-gimp_scanner_parse_token
	.cfi_endproc

	.globl	gimp_scanner_parse_identifier
	.align	16, 0x90
	.type	gimp_scanner_parse_identifier,@function
gimp_scanner_parse_identifier:          # @gimp_scanner_parse_identifier
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
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	g_scanner_peek_next_token@PLT
	cmpl	$266, %eax              # imm = 0x10A
	je	.LBB5_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB5_5
.LBB5_2:                                # %if.end
	movq	-16(%rbp), %rdi
	callq	g_scanner_get_next_token@PLT
	movq	-16(%rbp), %rdi
	movq	48(%rdi), %rdi
	movq	-24(%rbp), %rsi
	movl	%eax, -28(%rbp)         # 4-byte Spill
	callq	strcmp@PLT
	cmpl	$0, %eax
	je	.LBB5_4
# BB#3:                                 # %if.then.3
	movl	$0, -4(%rbp)
	jmp	.LBB5_5
.LBB5_4:                                # %if.end.4
	movl	$1, -4(%rbp)
.LBB5_5:                                # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_scanner_parse_identifier, .Lfunc_end5-gimp_scanner_parse_identifier
	.cfi_endproc

	.globl	gimp_scanner_parse_string
	.align	16, 0x90
	.type	gimp_scanner_parse_string,@function
gimp_scanner_parse_string:              # @gimp_scanner_parse_string
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	g_scanner_peek_next_token@PLT
	cmpl	$264, %eax              # imm = 0x108
	je	.LBB6_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB6_8
.LBB6_2:                                # %if.end
	movq	-16(%rbp), %rdi
	callq	g_scanner_get_next_token@PLT
	movq	-16(%rbp), %rdi
	movq	48(%rdi), %rdi
	cmpb	$0, (%rdi)
	movl	%eax, -28(%rbp)         # 4-byte Spill
	je	.LBB6_6
# BB#3:                                 # %if.then.2
	movq	$-1, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rcx
	movq	48(%rcx), %rdi
	callq	g_utf8_validate@PLT
	cmpl	$0, %eax
	jne	.LBB6_5
# BB#4:                                 # %if.then.7
	leaq	.L.str.5(%rip), %rdi
	leaq	.L.str.6(%rip), %rsi
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	dgettext@PLT
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_scanner_warn@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB6_8
.LBB6_5:                                # %if.end.9
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	g_strdup@PLT
	movq	-24(%rbp), %rdi
	movq	%rax, (%rdi)
	jmp	.LBB6_7
.LBB6_6:                                # %if.else
	movq	-24(%rbp), %rax
	movq	$0, (%rax)
.LBB6_7:                                # %if.end.13
	movl	$1, -4(%rbp)
.LBB6_8:                                # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_scanner_parse_string, .Lfunc_end6-gimp_scanner_parse_string
	.cfi_endproc

	.globl	gimp_scanner_parse_string_no_validate
	.align	16, 0x90
	.type	gimp_scanner_parse_string_no_validate,@function
gimp_scanner_parse_string_no_validate:  # @gimp_scanner_parse_string_no_validate
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
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	g_scanner_peek_next_token@PLT
	cmpl	$264, %eax              # imm = 0x108
	je	.LBB7_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB7_6
.LBB7_2:                                # %if.end
	movq	-16(%rbp), %rdi
	callq	g_scanner_get_next_token@PLT
	movq	-16(%rbp), %rdi
	movq	48(%rdi), %rdi
	cmpb	$0, (%rdi)
	movl	%eax, -28(%rbp)         # 4-byte Spill
	je	.LBB7_4
# BB#3:                                 # %if.then.2
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	g_strdup@PLT
	movq	-24(%rbp), %rdi
	movq	%rax, (%rdi)
	jmp	.LBB7_5
.LBB7_4:                                # %if.else
	movq	-24(%rbp), %rax
	movq	$0, (%rax)
.LBB7_5:                                # %if.end.6
	movl	$1, -4(%rbp)
.LBB7_6:                                # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_scanner_parse_string_no_validate, .Lfunc_end7-gimp_scanner_parse_string_no_validate
	.cfi_endproc

	.globl	gimp_scanner_parse_data
	.align	16, 0x90
	.type	gimp_scanner_parse_data,@function
gimp_scanner_parse_data:                # @gimp_scanner_parse_data
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
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	g_scanner_peek_next_token@PLT
	cmpl	$264, %eax              # imm = 0x108
	je	.LBB8_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB8_6
.LBB8_2:                                # %if.end
	movq	-16(%rbp), %rdi
	callq	g_scanner_get_next_token@PLT
	movq	-16(%rbp), %rdi
	cmpq	$0, 48(%rdi)
	movl	%eax, -36(%rbp)         # 4-byte Spill
	je	.LBB8_4
# BB#3:                                 # %if.then.2
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	movl	-20(%rbp), %esi
	callq	g_memdup@PLT
	movq	-32(%rbp), %rdi
	movq	%rax, (%rdi)
	jmp	.LBB8_5
.LBB8_4:                                # %if.else
	movq	-32(%rbp), %rax
	movq	$0, (%rax)
.LBB8_5:                                # %if.end.6
	movl	$1, -4(%rbp)
.LBB8_6:                                # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_scanner_parse_data, .Lfunc_end8-gimp_scanner_parse_data
	.cfi_endproc

	.globl	gimp_scanner_parse_int
	.align	16, 0x90
	.type	gimp_scanner_parse_int,@function
gimp_scanner_parse_int:                 # @gimp_scanner_parse_int
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	$0, -28(%rbp)
	movq	-16(%rbp), %rdi
	callq	g_scanner_peek_next_token@PLT
	cmpl	$45, %eax
	jne	.LBB9_2
# BB#1:                                 # %if.then
	movl	$1, -28(%rbp)
	movq	-16(%rbp), %rdi
	callq	g_scanner_get_next_token@PLT
	movl	%eax, -32(%rbp)         # 4-byte Spill
.LBB9_2:                                # %if.end
	movq	-16(%rbp), %rdi
	callq	g_scanner_peek_next_token@PLT
	cmpl	$261, %eax              # imm = 0x105
	je	.LBB9_4
# BB#3:                                 # %if.then.4
	movl	$0, -4(%rbp)
	jmp	.LBB9_8
.LBB9_4:                                # %if.end.5
	movq	-16(%rbp), %rdi
	callq	g_scanner_get_next_token@PLT
	cmpl	$0, -28(%rbp)
	movl	%eax, -36(%rbp)         # 4-byte Spill
	je	.LBB9_6
# BB#5:                                 # %if.then.7
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	subq	48(%rdx), %rcx
	movl	%ecx, %eax
	movq	-24(%rbp), %rcx
	movl	%eax, (%rcx)
	jmp	.LBB9_7
.LBB9_6:                                # %if.else
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, (%rax)
.LBB9_7:                                # %if.end.11
	movl	$1, -4(%rbp)
.LBB9_8:                                # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_scanner_parse_int, .Lfunc_end9-gimp_scanner_parse_int
	.cfi_endproc

	.globl	gimp_scanner_parse_float
	.align	16, 0x90
	.type	gimp_scanner_parse_float,@function
gimp_scanner_parse_float:               # @gimp_scanner_parse_float
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	g_scanner_peek_next_token@PLT
	cmpl	$263, %eax              # imm = 0x107
	je	.LBB10_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB10_3
.LBB10_2:                               # %if.end
	movq	-16(%rbp), %rdi
	callq	g_scanner_get_next_token@PLT
	movq	-16(%rbp), %rdi
	movsd	48(%rdi), %xmm0         # xmm0 = mem[0],zero
	movq	-24(%rbp), %rdi
	movsd	%xmm0, (%rdi)
	movl	$1, -4(%rbp)
	movl	%eax, -28(%rbp)         # 4-byte Spill
.LBB10_3:                               # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_scanner_parse_float, .Lfunc_end10-gimp_scanner_parse_float
	.cfi_endproc

	.globl	gimp_scanner_parse_boolean
	.align	16, 0x90
	.type	gimp_scanner_parse_boolean,@function
gimp_scanner_parse_boolean:             # @gimp_scanner_parse_boolean
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	g_scanner_peek_next_token@PLT
	cmpl	$266, %eax              # imm = 0x10A
	je	.LBB11_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB11_11
.LBB11_2:                               # %if.end
	movq	-16(%rbp), %rdi
	callq	g_scanner_get_next_token@PLT
	leaq	.L.str.7(%rip), %rsi
	movq	-16(%rbp), %rdi
	movq	48(%rdi), %rdi
	movl	%eax, -28(%rbp)         # 4-byte Spill
	callq	g_ascii_strcasecmp@PLT
	cmpl	$0, %eax
	je	.LBB11_4
# BB#3:                                 # %lor.lhs.false
	leaq	.L.str.8(%rip), %rsi
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	g_ascii_strcasecmp@PLT
	cmpl	$0, %eax
	jne	.LBB11_5
.LBB11_4:                               # %if.then.7
	movq	-24(%rbp), %rax
	movl	$1, (%rax)
	jmp	.LBB11_10
.LBB11_5:                               # %if.else
	leaq	.L.str.9(%rip), %rsi
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	g_ascii_strcasecmp@PLT
	cmpl	$0, %eax
	je	.LBB11_7
# BB#6:                                 # %lor.lhs.false.12
	leaq	.L.str.10(%rip), %rsi
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	g_ascii_strcasecmp@PLT
	cmpl	$0, %eax
	jne	.LBB11_8
.LBB11_7:                               # %if.then.17
	movq	-24(%rbp), %rax
	movl	$0, (%rax)
	jmp	.LBB11_9
.LBB11_8:                               # %if.else.18
	leaq	.L.str.5(%rip), %rdi
	leaq	.L.str.11(%rip), %rsi
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	dgettext@PLT
	movq	-16(%rbp), %rsi
	movq	48(%rsi), %rdx
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_scanner_error@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB11_11
.LBB11_9:                               # %if.end.22
	jmp	.LBB11_10
.LBB11_10:                              # %if.end.23
	movl	$1, -4(%rbp)
.LBB11_11:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_scanner_parse_boolean, .Lfunc_end11-gimp_scanner_parse_boolean
	.cfi_endproc

	.globl	gimp_scanner_parse_color
	.align	16, 0x90
	.type	gimp_scanner_parse_color,@function
gimp_scanner_parse_color:               # @gimp_scanner_parse_color
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
	subq	$224, %rsp
	leaq	.L.str.12(%rip), %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	.Lgimp_scanner_parse_color.color(%rip), %rsi
	movq	%rsi, -64(%rbp)
	movq	.Lgimp_scanner_parse_color.color+8(%rip), %rsi
	movq	%rsi, -56(%rbp)
	movq	.Lgimp_scanner_parse_color.color+16(%rip), %rsi
	movq	%rsi, -48(%rbp)
	movq	.Lgimp_scanner_parse_color.color+24(%rip), %rsi
	movq	%rsi, -40(%rbp)
	movq	%rax, %rdi
	callq	g_quark_from_static_string@PLT
	movl	%eax, -20(%rbp)
	movq	-8(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	g_scanner_set_scope@PLT
	leaq	.L.str.13(%rip), %rdx
	movl	%eax, -24(%rbp)
	movq	-8(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	g_scanner_scope_lookup_symbol@PLT
	cmpq	$0, %rax
	jne	.LBB12_2
# BB#1:                                 # %if.then
	leaq	.L.str.13(%rip), %rdx
	movl	$1, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	g_scanner_scope_add_symbol@PLT
	leaq	.L.str.14(%rip), %rdx
	movl	$2, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	g_scanner_scope_add_symbol@PLT
	leaq	.L.str.15(%rip), %rdx
	movl	$3, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	g_scanner_scope_add_symbol@PLT
	leaq	.L.str.16(%rip), %rdx
	movl	$4, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	g_scanner_scope_add_symbol@PLT
.LBB12_2:                               # %if.end
	movl	$40, -28(%rbp)
.LBB12_3:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_12 Depth 2
	movq	-8(%rbp), %rdi
	callq	g_scanner_peek_next_token@PLT
	cmpl	-28(%rbp), %eax
	jne	.LBB12_24
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB12_3 Depth=1
	movq	-8(%rbp), %rdi
	callq	g_scanner_get_next_token@PLT
	movl	%eax, -28(%rbp)
	movl	%eax, %ecx
	subl	$40, %eax
	movl	%ecx, -148(%rbp)        # 4-byte Spill
	movl	%eax, -152(%rbp)        # 4-byte Spill
	je	.LBB12_5
	jmp	.LBB12_29
.LBB12_29:                              # %while.body
                                        #   in Loop: Header=BB12_3 Depth=1
	movl	-148(%rbp), %eax        # 4-byte Reload
	subl	$41, %eax
	movl	%eax, -156(%rbp)        # 4-byte Spill
	je	.LBB12_21
	jmp	.LBB12_30
.LBB12_30:                              # %while.body
                                        #   in Loop: Header=BB12_3 Depth=1
	movl	-148(%rbp), %eax        # 4-byte Reload
	subl	$265, %eax              # imm = 0x109
	movl	%eax, -160(%rbp)        # 4-byte Spill
	je	.LBB12_6
	jmp	.LBB12_22
.LBB12_5:                               # %sw.bb
                                        #   in Loop: Header=BB12_3 Depth=1
	movl	$265, -28(%rbp)         # imm = 0x109
	jmp	.LBB12_23
.LBB12_6:                               # %sw.bb.5
                                        #   in Loop: Header=BB12_3 Depth=1
	movaps	.Lgimp_scanner_parse_color.col+16(%rip), %xmm0
	movaps	%xmm0, -80(%rbp)
	movaps	.Lgimp_scanner_parse_color.col(%rip), %xmm0
	movaps	%xmm0, -96(%rbp)
	movl	$4, -100(%rbp)
	movl	$0, -104(%rbp)
	movq	-8(%rbp), %rax
	movl	48(%rax), %ecx
	decl	%ecx
	movl	%ecx, %eax
	subl	$3, %ecx
	movq	%rax, -168(%rbp)        # 8-byte Spill
	movl	%ecx, -172(%rbp)        # 4-byte Spill
	ja	.LBB12_11
# BB#31:                                # %sw.bb.5
                                        #   in Loop: Header=BB12_3 Depth=1
	leaq	.LJTI12_0(%rip), %rax
	movq	-168(%rbp), %rcx        # 8-byte Reload
	movslq	(%rax,%rcx,4), %rdx
	addq	%rax, %rdx
	jmpq	*%rdx
.LBB12_7:                               # %sw.bb.6
                                        #   in Loop: Header=BB12_3 Depth=1
	movl	$3, -100(%rbp)
.LBB12_8:                               # %sw.bb.7
                                        #   in Loop: Header=BB12_3 Depth=1
	jmp	.LBB12_11
.LBB12_9:                               # %sw.bb.8
                                        #   in Loop: Header=BB12_3 Depth=1
	movl	$3, -100(%rbp)
.LBB12_10:                              # %sw.bb.9
                                        #   in Loop: Header=BB12_3 Depth=1
	movl	$1, -104(%rbp)
.LBB12_11:                              # %sw.epilog
                                        #   in Loop: Header=BB12_3 Depth=1
	movl	$263, -28(%rbp)         # imm = 0x107
	movl	$0, -108(%rbp)
.LBB12_12:                              # %for.cond
                                        #   Parent Loop BB12_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-108(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jge	.LBB12_17
# BB#13:                                # %for.body
                                        #   in Loop: Header=BB12_12 Depth=2
	leaq	-96(%rbp), %rax
	movq	-8(%rbp), %rdi
	movslq	-108(%rbp), %rcx
	shlq	$3, %rcx
	addq	%rcx, %rax
	movq	%rax, %rsi
	callq	gimp_scanner_parse_float@PLT
	cmpl	$0, %eax
	jne	.LBB12_15
# BB#14:                                # %if.then.14
	jmp	.LBB12_25
.LBB12_15:                              # %if.end.15
                                        #   in Loop: Header=BB12_12 Depth=2
	jmp	.LBB12_16
.LBB12_16:                              # %for.inc
                                        #   in Loop: Header=BB12_12 Depth=2
	movl	-108(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -108(%rbp)
	jmp	.LBB12_12
.LBB12_17:                              # %for.end
                                        #   in Loop: Header=BB12_3 Depth=1
	cmpl	$0, -104(%rbp)
	je	.LBB12_19
# BB#18:                                # %if.then.17
                                        #   in Loop: Header=BB12_3 Depth=1
	leaq	-144(%rbp), %rdi
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-88(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-80(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-72(%rbp), %xmm3        # xmm3 = mem[0],zero
	callq	gimp_hsva_set@PLT
	leaq	-144(%rbp), %rdi
	callq	gimp_hsv_clamp@PLT
	leaq	-144(%rbp), %rdi
	leaq	-64(%rbp), %rsi
	callq	gimp_hsv_to_rgb@PLT
	jmp	.LBB12_20
.LBB12_19:                              # %if.else
                                        #   in Loop: Header=BB12_3 Depth=1
	leaq	-64(%rbp), %rdi
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-88(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-80(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-72(%rbp), %xmm3        # xmm3 = mem[0],zero
	callq	gimp_rgba_set@PLT
	leaq	-64(%rbp), %rdi
	callq	gimp_rgb_clamp@PLT
.LBB12_20:                              # %if.end.26
                                        #   in Loop: Header=BB12_3 Depth=1
	movl	$41, -28(%rbp)
	jmp	.LBB12_23
.LBB12_21:                              # %sw.bb.27
	movl	$256, -28(%rbp)         # imm = 0x100
	jmp	.LBB12_25
.LBB12_22:                              # %sw.default
                                        #   in Loop: Header=BB12_3 Depth=1
	jmp	.LBB12_23
.LBB12_23:                              # %sw.epilog.28
                                        #   in Loop: Header=BB12_3 Depth=1
	jmp	.LBB12_3
.LBB12_24:                              # %while.end
	jmp	.LBB12_25
.LBB12_25:                              # %finish
	cmpl	$256, -28(%rbp)         # imm = 0x100
	je	.LBB12_27
# BB#26:                                # %if.then.31
	movq	-8(%rbp), %rdi
	callq	g_scanner_get_next_token@PLT
	leaq	.L.str.5(%rip), %rdi
	leaq	.L.str.17(%rip), %rsi
	movq	-8(%rbp), %rcx
	movl	-28(%rbp), %edx
	movl	%eax, -176(%rbp)        # 4-byte Spill
	movl	%edx, -180(%rbp)        # 4-byte Spill
	movq	%rcx, -192(%rbp)        # 8-byte Spill
	callq	dgettext@PLT
	xorl	%edx, %edx
	movl	%edx, %ecx
	movl	$1, %edx
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movl	-180(%rbp), %esi        # 4-byte Reload
	movl	%edx, -196(%rbp)        # 4-byte Spill
	movq	%rcx, %rdx
	movq	%rcx, -208(%rbp)        # 8-byte Spill
	movq	-208(%rbp), %r8         # 8-byte Reload
	movq	%rax, %r9
	movl	$1, (%rsp)
	callq	g_scanner_unexp_token@PLT
	jmp	.LBB12_28
.LBB12_27:                              # %if.else.34
	movq	-16(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	%rcx, (%rax)
	movq	-56(%rbp), %rcx
	movq	%rcx, 8(%rax)
	movq	-48(%rbp), %rcx
	movq	%rcx, 16(%rax)
	movq	-40(%rbp), %rcx
	movq	%rcx, 24(%rax)
.LBB12_28:                              # %if.end.35
	movq	-8(%rbp), %rdi
	movl	-24(%rbp), %esi
	callq	g_scanner_set_scope@PLT
	cmpl	$256, -28(%rbp)         # imm = 0x100
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %esi
	movl	%eax, -212(%rbp)        # 4-byte Spill
	movl	%esi, %eax
	addq	$224, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_scanner_parse_color, .Lfunc_end12-gimp_scanner_parse_color
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	4
.LJTI12_0:
	.long	.LBB12_7-.LJTI12_0
	.long	.LBB12_8-.LJTI12_0
	.long	.LBB12_9-.LJTI12_0
	.long	.LBB12_10-.LJTI12_0

	.text
	.globl	gimp_scanner_parse_matrix2
	.align	16, 0x90
	.type	gimp_scanner_parse_matrix2,@function
gimp_scanner_parse_matrix2:             # @gimp_scanner_parse_matrix2
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
	subq	$128, %rsp
	leaq	.L.str.18(%rip), %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rax, %rdi
	callq	g_quark_from_static_string@PLT
	movl	%eax, -20(%rbp)
	movq	-8(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	g_scanner_set_scope@PLT
	leaq	.L.str.19(%rip), %rdx
	movl	%eax, -24(%rbp)
	movq	-8(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	g_scanner_scope_lookup_symbol@PLT
	cmpq	$0, %rax
	jne	.LBB13_2
# BB#1:                                 # %if.then
	leaq	.L.str.19(%rip), %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	g_scanner_scope_add_symbol@PLT
.LBB13_2:                               # %if.end
	movl	$40, -28(%rbp)
.LBB13_3:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rdi
	callq	g_scanner_peek_next_token@PLT
	cmpl	-28(%rbp), %eax
	jne	.LBB13_18
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB13_3 Depth=1
	movq	-8(%rbp), %rdi
	callq	g_scanner_get_next_token@PLT
	movl	%eax, -28(%rbp)
	movl	%eax, %ecx
	subl	$40, %eax
	movl	%ecx, -68(%rbp)         # 4-byte Spill
	movl	%eax, -72(%rbp)         # 4-byte Spill
	je	.LBB13_5
	jmp	.LBB13_23
.LBB13_23:                              # %while.body
                                        #   in Loop: Header=BB13_3 Depth=1
	movl	-68(%rbp), %eax         # 4-byte Reload
	subl	$41, %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
	je	.LBB13_15
	jmp	.LBB13_24
.LBB13_24:                              # %while.body
                                        #   in Loop: Header=BB13_3 Depth=1
	movl	-68(%rbp), %eax         # 4-byte Reload
	subl	$265, %eax              # imm = 0x109
	movl	%eax, -80(%rbp)         # 4-byte Spill
	je	.LBB13_6
	jmp	.LBB13_16
.LBB13_5:                               # %sw.bb
                                        #   in Loop: Header=BB13_3 Depth=1
	movl	$265, -28(%rbp)         # imm = 0x109
	jmp	.LBB13_17
.LBB13_6:                               # %sw.bb.5
                                        #   in Loop: Header=BB13_3 Depth=1
	leaq	-64(%rbp), %rsi
	movl	$263, -28(%rbp)         # imm = 0x107
	movq	-8(%rbp), %rdi
	callq	gimp_scanner_parse_float@PLT
	cmpl	$0, %eax
	jne	.LBB13_8
# BB#7:                                 # %if.then.9
	jmp	.LBB13_19
.LBB13_8:                               # %if.end.10
                                        #   in Loop: Header=BB13_3 Depth=1
	leaq	-64(%rbp), %rax
	movq	-8(%rbp), %rdi
	addq	$8, %rax
	movq	%rax, %rsi
	callq	gimp_scanner_parse_float@PLT
	cmpl	$0, %eax
	jne	.LBB13_10
# BB#9:                                 # %if.then.16
	jmp	.LBB13_19
.LBB13_10:                              # %if.end.17
                                        #   in Loop: Header=BB13_3 Depth=1
	leaq	-64(%rbp), %rax
	movq	-8(%rbp), %rdi
	addq	$16, %rax
	movq	%rax, %rsi
	callq	gimp_scanner_parse_float@PLT
	cmpl	$0, %eax
	jne	.LBB13_12
# BB#11:                                # %if.then.23
	jmp	.LBB13_19
.LBB13_12:                              # %if.end.24
                                        #   in Loop: Header=BB13_3 Depth=1
	leaq	-64(%rbp), %rax
	movq	-8(%rbp), %rdi
	addq	$16, %rax
	addq	$8, %rax
	movq	%rax, %rsi
	callq	gimp_scanner_parse_float@PLT
	cmpl	$0, %eax
	jne	.LBB13_14
# BB#13:                                # %if.then.30
	jmp	.LBB13_19
.LBB13_14:                              # %if.end.31
                                        #   in Loop: Header=BB13_3 Depth=1
	movl	$41, -28(%rbp)
	jmp	.LBB13_17
.LBB13_15:                              # %sw.bb.32
	movl	$256, -28(%rbp)         # imm = 0x100
	jmp	.LBB13_19
.LBB13_16:                              # %sw.default
                                        #   in Loop: Header=BB13_3 Depth=1
	jmp	.LBB13_17
.LBB13_17:                              # %sw.epilog
                                        #   in Loop: Header=BB13_3 Depth=1
	jmp	.LBB13_3
.LBB13_18:                              # %while.end
	jmp	.LBB13_19
.LBB13_19:                              # %finish
	cmpl	$256, -28(%rbp)         # imm = 0x100
	je	.LBB13_21
# BB#20:                                # %if.then.34
	movq	-8(%rbp), %rdi
	callq	g_scanner_get_next_token@PLT
	leaq	.L.str.5(%rip), %rdi
	leaq	.L.str.17(%rip), %rsi
	movq	-8(%rbp), %rcx
	movl	-28(%rbp), %edx
	movl	%eax, -84(%rbp)         # 4-byte Spill
	movl	%edx, -88(%rbp)         # 4-byte Spill
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	callq	dgettext@PLT
	xorl	%edx, %edx
	movl	%edx, %ecx
	movl	$1, %edx
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movl	-88(%rbp), %esi         # 4-byte Reload
	movl	%edx, -100(%rbp)        # 4-byte Spill
	movq	%rcx, %rdx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	movq	-112(%rbp), %r8         # 8-byte Reload
	movq	%rax, %r9
	movl	$1, (%rsp)
	callq	g_scanner_unexp_token@PLT
	jmp	.LBB13_22
.LBB13_21:                              # %if.else
	movq	-16(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	%rcx, (%rax)
	movq	-56(%rbp), %rcx
	movq	%rcx, 8(%rax)
	movq	-48(%rbp), %rcx
	movq	%rcx, 16(%rax)
	movq	-40(%rbp), %rcx
	movq	%rcx, 24(%rax)
.LBB13_22:                              # %if.end.37
	movq	-8(%rbp), %rdi
	movl	-24(%rbp), %esi
	callq	g_scanner_set_scope@PLT
	cmpl	$256, -28(%rbp)         # imm = 0x100
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %esi
	movl	%eax, -116(%rbp)        # 4-byte Spill
	movl	%esi, %eax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_scanner_parse_matrix2, .Lfunc_end13-gimp_scanner_parse_matrix2
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_scanner_message,@function
gimp_scanner_message:                   # @gimp_scanner_message
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-8(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -32(%rbp)
# BB#1:                                 # %do.body
	cmpl	$0, -20(%rbp)
	je	.LBB14_3
# BB#2:                                 # %if.then
	jmp	.LBB14_4
.LBB14_3:                               # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_scanner_message(%rip), %rsi
	leaq	.L.str.22(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB14_8
.LBB14_4:                               # %if.end
	jmp	.LBB14_5
.LBB14_5:                               # %do.end
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB14_7
# BB#6:                                 # %if.then.2
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gimp_config_error_quark@PLT
	leaq	.L.str.5(%rip), %rdi
	leaq	.L.str.23(%rip), %rsi
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	dgettext@PLT
	movl	$3, %edx
	movq	-32(%rbp), %rsi
	movq	(%rsi), %r8
	movq	-8(%rbp), %rsi
	movl	56(%rsi), %r9d
	movq	-16(%rbp), %rsi
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movl	-44(%rbp), %ecx         # 4-byte Reload
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	movl	%ecx, %esi
	movq	%rax, %rcx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movb	$0, %al
	callq	g_set_error@PLT
	jmp	.LBB14_8
.LBB14_7:                               # %if.else.5
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	callq	gimp_config_error_quark@PLT
	movl	$3, %edx
	leaq	.L.str.24(%rip), %rcx
	movq	-16(%rbp), %r8
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movl	%eax, %esi
	movb	$0, %al
	callq	g_set_error@PLT
.LBB14_8:                               # %if.end.8
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_scanner_message, .Lfunc_end14-gimp_scanner_message
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"LibGimpConfig"
	.size	.L.str, 14

	.type	.L__func__.gimp_scanner_new_file,@object # @__func__.gimp_scanner_new_file
.L__func__.gimp_scanner_new_file:
	.asciz	"gimp_scanner_new_file"
	.size	.L__func__.gimp_scanner_new_file, 22

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"filename != NULL"
	.size	.L.str.1, 17

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"error == NULL || *error == NULL"
	.size	.L.str.2, 32

	.type	.L__func__.gimp_scanner_new_string,@object # @__func__.gimp_scanner_new_string
.L__func__.gimp_scanner_new_string:
	.asciz	"gimp_scanner_new_string"
	.size	.L__func__.gimp_scanner_new_string, 24

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"text != NULL || text_len == 0"
	.size	.L.str.3, 30

	.type	.L__func__.gimp_scanner_destroy,@object # @__func__.gimp_scanner_destroy
.L__func__.gimp_scanner_destroy:
	.asciz	"gimp_scanner_destroy"
	.size	.L__func__.gimp_scanner_destroy, 21

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"scanner != NULL"
	.size	.L.str.4, 16

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"gimp20-libgimp"
	.size	.L.str.5, 15

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"invalid UTF-8 string"
	.size	.L.str.6, 21

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"yes"
	.size	.L.str.7, 4

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"true"
	.size	.L.str.8, 5

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"no"
	.size	.L.str.9, 3

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"false"
	.size	.L.str.10, 6

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"expected 'yes' or 'no' for boolean token, got '%s'"
	.size	.L.str.11, 51

	.type	.Lgimp_scanner_parse_color.color,@object # @gimp_scanner_parse_color.color
	.section	.rodata,"a",@progbits
	.align	8
.Lgimp_scanner_parse_color.color:
	.quad	0                       # double 0
	.quad	0                       # double 0
	.quad	0                       # double 0
	.quad	4607182418800017408     # double 1
	.size	.Lgimp_scanner_parse_color.color, 32

	.type	.L.str.12,@object       # @.str.12
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.12:
	.asciz	"gimp_scanner_parse_color"
	.size	.L.str.12, 25

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"color-rgb"
	.size	.L.str.13, 10

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"color-rgba"
	.size	.L.str.14, 11

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"color-hsv"
	.size	.L.str.15, 10

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"color-hsva"
	.size	.L.str.16, 11

	.type	.Lgimp_scanner_parse_color.col,@object # @gimp_scanner_parse_color.col
	.section	.rodata,"a",@progbits
	.align	16
.Lgimp_scanner_parse_color.col:
	.quad	0                       # double 0.000000e+00
	.quad	0                       # double 0.000000e+00
	.quad	0                       # double 0.000000e+00
	.quad	4607182418800017408     # double 1.000000e+00
	.size	.Lgimp_scanner_parse_color.col, 32

	.type	.L.str.17,@object       # @.str.17
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.17:
	.asciz	"fatal parse error"
	.size	.L.str.17, 18

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"gimp_scanner_parse_matrix"
	.size	.L.str.18, 26

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"matrix"
	.size	.L.str.19, 7

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
	.size	.L.str.20, 53

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789-_"
	.size	.L.str.21, 65

	.type	.L__func__.gimp_scanner_message,@object # @__func__.gimp_scanner_message
.L__func__.gimp_scanner_message:
	.asciz	"gimp_scanner_message"
	.size	.L__func__.gimp_scanner_message, 21

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"is_error"
	.size	.L.str.22, 9

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Error while parsing '%s' in line %d: %s"
	.size	.L.str.23, 40

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"Error parsing internal buffer: %s"
	.size	.L.str.24, 34


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
