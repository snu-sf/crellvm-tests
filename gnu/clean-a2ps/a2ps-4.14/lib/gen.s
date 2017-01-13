	.text
	.file	"gen.bc"
	.globl	a2ps_print_char
	.align	16, 0x90
	.type	a2ps_print_char,@function
a2ps_print_char:                        # @a2ps_print_char
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	-8(%rbp), %rdi
	movl	280(%rdi), %edx
	subl	$1, %edx
	movl	%edx, -20(%rbp)         # 4-byte Spill
	jne	.LBB0_2
	jmp	.LBB0_1
.LBB0_1:                                # %sw.bb
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	callq	ps_print_char
	jmp	.LBB0_3
.LBB0_2:                                # %sw.default
	callq	abort
.LBB0_3:                                # %sw.epilog
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	a2ps_print_char, .Lfunc_end0-a2ps_print_char
	.cfi_endproc

	.globl	a2ps_print_string
	.align	16, 0x90
	.type	a2ps_print_string,@function
a2ps_print_string:                      # @a2ps_print_string
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
	movl	%edx, -20(%rbp)
	movq	-8(%rbp), %rsi
	movl	280(%rsi), %edx
	subl	$1, %edx
	movl	%edx, -24(%rbp)         # 4-byte Spill
	jne	.LBB1_5
	jmp	.LBB1_1
.LBB1_1:                                # %sw.bb
	jmp	.LBB1_2
.LBB1_2:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB1_4
# BB#3:                                 # %while.body
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movzbl	(%rax), %esi
	movl	-20(%rbp), %edx
	callq	ps_print_char
	jmp	.LBB1_2
.LBB1_4:                                # %while.end
	jmp	.LBB1_6
.LBB1_5:                                # %sw.default
	callq	abort
.LBB1_6:                                # %sw.epilog
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	a2ps_print_string, .Lfunc_end1-a2ps_print_string
	.cfi_endproc

	.globl	a2ps_print_buffer
	.align	16, 0x90
	.type	a2ps_print_buffer,@function
a2ps_print_buffer:                      # @a2ps_print_buffer
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movq	-8(%rbp), %rcx
	movl	280(%rcx), %r8d
	subl	$1, %r8d
	movl	%r8d, -52(%rbp)         # 4-byte Spill
	jne	.LBB2_6
	jmp	.LBB2_1
.LBB2_1:                                # %sw.bb
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)
.LBB2_2:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-48(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jae	.LBB2_5
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB2_2 Depth=1
	movq	-8(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	-16(%rbp), %rcx
	movzbl	(%rcx,%rax), %esi
	movl	-36(%rbp), %edx
	callq	ps_print_char
# BB#4:                                 # %for.inc
                                        #   in Loop: Header=BB2_2 Depth=1
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB2_2
.LBB2_5:                                # %for.end
	jmp	.LBB2_7
.LBB2_6:                                # %sw.default
	callq	abort
.LBB2_7:                                # %sw.epilog
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	a2ps_print_buffer, .Lfunc_end2-a2ps_print_buffer
	.cfi_endproc

	.globl	a2ps_open_output_session
	.align	16, 0x90
	.type	a2ps_open_output_session,@function
a2ps_open_output_session:               # @a2ps_open_output_session
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
	movl	280(%rdi), %eax
	subl	$1, %eax
	movl	%eax, -12(%rbp)         # 4-byte Spill
	jne	.LBB3_2
	jmp	.LBB3_1
.LBB3_1:                                # %sw.bb
	movq	-8(%rbp), %rdi
	callq	ps_begin
	jmp	.LBB3_3
.LBB3_2:                                # %sw.default
	callq	abort
.LBB3_3:                                # %sw.epilog
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	a2ps_open_output_session, .Lfunc_end3-a2ps_open_output_session
	.cfi_endproc

	.globl	a2ps_open_input_session
	.align	16, 0x90
	.type	a2ps_open_input_session,@function
a2ps_open_input_session:                # @a2ps_open_input_session
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB4_2
# BB#1:                                 # %lor.lhs.false
	movq	-16(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$0, %ecx
	jne	.LBB4_3
.LBB4_2:                                # %cond.true
	movq	-8(%rbp), %rax
	movq	264(%rax), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	jmp	.LBB4_4
.LBB4_3:                                # %cond.false
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
.LBB4_4:                                # %cond.end
	movq	-32(%rbp), %rax         # 8-byte Reload
	movq	-8(%rbp), %rcx
	movl	120(%rcx), %edx
	incl	%edx
	movl	%edx, 120(%rcx)
	movq	-8(%rbp), %rcx
	addq	$48, %rcx
	movq	%rax, %rdi
	movl	%edx, %esi
	movq	%rcx, %rdx
	callq	_a2ps_file_job_new
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movb	$0, 496(%rax)
	movq	-8(%rbp), %rax
	movb	$0, 752(%rax)
	movq	-8(%rbp), %rax
	movb	$0, 1008(%rax)
	movq	-8(%rbp), %rax
	movb	$0, 1264(%rax)
	movq	-8(%rbp), %rax
	movl	280(%rax), %esi
	subl	$1, %esi
	movl	%esi, -36(%rbp)         # 4-byte Spill
	jne	.LBB4_6
	jmp	.LBB4_5
.LBB4_5:                                # %sw.bb
	movq	-8(%rbp), %rdi
	callq	ps_begin_file
	jmp	.LBB4_7
.LBB4_6:                                # %sw.default
	callq	abort
.LBB4_7:                                # %sw.epilog
	movq	-8(%rbp), %rax
	movq	1632(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	callq	da_append
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	a2ps_open_input_session, .Lfunc_end4-a2ps_open_input_session
	.cfi_endproc

	.globl	a2ps_close_input_session
	.align	16, 0x90
	.type	a2ps_close_input_session,@function
a2ps_close_input_session:               # @a2ps_close_input_session
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	280(%rdi), %eax
	subl	$1, %eax
	movl	%eax, -12(%rbp)         # 4-byte Spill
	jne	.LBB5_2
	jmp	.LBB5_1
.LBB5_1:                                # %sw.bb
	movq	-8(%rbp), %rdi
	callq	ps_end_file
	jmp	.LBB5_3
.LBB5_2:                                # %sw.default
	callq	abort
.LBB5_3:                                # %sw.epilog
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	a2ps_close_input_session, .Lfunc_end5-a2ps_close_input_session
	.cfi_endproc

	.globl	a2ps_close_output_session
	.align	16, 0x90
	.type	a2ps_close_output_session,@function
a2ps_close_output_session:              # @a2ps_close_output_session
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
	movq	%rdi, -8(%rbp)
	movl	280(%rdi), %eax
	subl	$1, %eax
	movl	%eax, -12(%rbp)         # 4-byte Spill
	jne	.LBB6_2
	jmp	.LBB6_1
.LBB6_1:                                # %sw.bb
	movq	-8(%rbp), %rdi
	callq	ps_end
	jmp	.LBB6_3
.LBB6_2:                                # %sw.default
	callq	abort
.LBB6_3:                                # %sw.epilog
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	a2ps_close_output_session, .Lfunc_end6-a2ps_close_output_session
	.cfi_endproc

	.globl	output_format_to_key
	.align	16, 0x90
	.type	output_format_to_key,@function
output_format_to_key:                   # @output_format_to_key
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
	subl	$1, %edi
	movl	%edi, -8(%rbp)          # 4-byte Spill
	ja	.LBB7_2
	jmp	.LBB7_1
.LBB7_1:                                # %sw.bb
	movabsq	$.L.str, %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.LBB7_2:                                # %sw.default
	callq	abort
.Lfunc_end7:
	.size	output_format_to_key, .Lfunc_end7-output_format_to_key
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"ps"
	.size	.L.str, 3


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
