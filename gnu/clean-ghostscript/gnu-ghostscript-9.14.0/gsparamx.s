	.text
	.file	"gsparamx.bc"
	.globl	gs_param_string_eq
	.align	16, 0x90
	.type	gs_param_string_eq,@function
gs_param_string_eq:                     # @gs_param_string_eq
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp2:
	.cfi_def_cfa_offset 32
.Ltmp3:
	.cfi_offset %rbx, -24
.Ltmp4:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	%r14, %rdi
	callq	strlen
	movl	8(%rbx), %ecx
	cmpq	%rcx, %rax
	jne	.LBB0_1
# BB#2:                                 # %land.rhs
	movq	(%rbx), %rsi
	movq	%r14, %rdi
	movq	%rax, %rdx
	callq	strncmp
	testl	%eax, %eax
	sete	%al
	jmp	.LBB0_3
.LBB0_1:
	xorl	%eax, %eax
.LBB0_3:                                # %land.end
	movzbl	%al, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end0:
	.size	gs_param_string_eq, .Lfunc_end0-gs_param_string_eq
	.cfi_endproc

	.globl	param_put_enum
	.align	16, 0x90
	.type	param_put_enum,@function
param_put_enum:                         # @param_put_enum
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp5:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp6:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp7:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp8:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp9:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp10:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp11:
	.cfi_def_cfa_offset 96
.Ltmp12:
	.cfi_offset %rbx, -56
.Ltmp13:
	.cfi_offset %r12, -48
.Ltmp14:
	.cfi_offset %r13, -40
.Ltmp15:
	.cfi_offset %r14, -32
.Ltmp16:
	.cfi_offset %r15, -24
.Ltmp17:
	.cfi_offset %rbp, -16
	movl	%r8d, %r13d
	movq	%rcx, %rbx
	movq	%rdx, %r12
	movq	%rsi, %r15
	movq	%rdi, %rbp
	leaq	24(%rsp), %rdx
	callq	param_read_name
	cmpl	$1, %eax
	je	.LBB1_10
# BB#1:                                 # %entry
	testl	%eax, %eax
	movl	%eax, %r13d
	jne	.LBB1_9
# BB#2:                                 # %for.cond.preheader
	movq	(%rbx), %r14
	movl	$-15, %r13d
	testq	%r14, %r14
	je	.LBB1_9
# BB#3:                                 # %for.body.lr.ph
	movq	%r12, (%rsp)            # 8-byte Spill
	movq	%rbp, 8(%rsp)           # 8-byte Spill
	movq	%r15, 16(%rsp)          # 8-byte Spill
	movl	32(%rsp), %ebp
	movq	24(%rsp), %r12
	xorl	%r15d, %r15d
	.align	16, 0x90
.LBB1_4:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%r14, %rdi
	callq	strlen
	cmpq	%rbp, %rax
	jne	.LBB1_7
# BB#5:                                 # %land.rhs.i
                                        #   in Loop: Header=BB1_4 Depth=1
	movq	%r14, %rdi
	movq	%r12, %rsi
	movq	%rbp, %rdx
	callq	strncmp
	testl	%eax, %eax
	je	.LBB1_6
.LBB1_7:                                # %for.inc
                                        #   in Loop: Header=BB1_4 Depth=1
	movq	8(%rbx,%r15,8), %r14
	incq	%r15
	testq	%r14, %r14
	jne	.LBB1_4
# BB#8:
	movq	16(%rsp), %r15          # 8-byte Reload
	movq	8(%rsp), %rbp           # 8-byte Reload
.LBB1_9:                                # %sw.default
	movq	(%rbp), %rax
	movq	%rbp, %rdi
	movq	%r15, %rsi
	movl	%r13d, %edx
	callq	*56(%rax)
.LBB1_10:                               # %cleanup.6
	movl	%r13d, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB1_6:                                # %if.then
	movq	(%rsp), %rax            # 8-byte Reload
	movl	%r15d, (%rax)
	xorl	%r13d, %r13d
	jmp	.LBB1_10
.Lfunc_end1:
	.size	param_put_enum, .Lfunc_end1-param_put_enum
	.cfi_endproc

	.globl	param_put_bool
	.align	16, 0x90
	.type	param_put_bool,@function
param_put_bool:                         # @param_put_bool
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp18:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp19:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp20:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp21:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp22:
	.cfi_def_cfa_offset 48
.Ltmp23:
	.cfi_offset %rbx, -40
.Ltmp24:
	.cfi_offset %r14, -32
.Ltmp25:
	.cfi_offset %r15, -24
.Ltmp26:
	.cfi_offset %rbp, -16
	movl	%ecx, %r15d
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	param_read_bool
	movl	%eax, %ebp
	cmpl	$2, %ebp
	jb	.LBB2_2
# BB#1:                                 # %sw.default
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movl	%ebp, %edx
	callq	*56(%rax)
	movl	%ebp, %r15d
.LBB2_2:                                # %sw.epilog
	movl	%r15d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	param_put_bool, .Lfunc_end2-param_put_bool
	.cfi_endproc

	.globl	param_put_int
	.align	16, 0x90
	.type	param_put_int,@function
param_put_int:                          # @param_put_int
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp27:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp28:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp29:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp30:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp31:
	.cfi_def_cfa_offset 48
.Ltmp32:
	.cfi_offset %rbx, -40
.Ltmp33:
	.cfi_offset %r14, -32
.Ltmp34:
	.cfi_offset %r15, -24
.Ltmp35:
	.cfi_offset %rbp, -16
	movl	%ecx, %r15d
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	param_read_int
	movl	%eax, %ebp
	cmpl	$2, %ebp
	jb	.LBB3_2
# BB#1:                                 # %sw.default
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movl	%ebp, %edx
	callq	*56(%rax)
	movl	%ebp, %r15d
.LBB3_2:                                # %sw.epilog
	movl	%r15d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	param_put_int, .Lfunc_end3-param_put_int
	.cfi_endproc

	.globl	param_put_long
	.align	16, 0x90
	.type	param_put_long,@function
param_put_long:                         # @param_put_long
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp36:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp37:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp38:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp39:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp40:
	.cfi_def_cfa_offset 48
.Ltmp41:
	.cfi_offset %rbx, -40
.Ltmp42:
	.cfi_offset %r14, -32
.Ltmp43:
	.cfi_offset %r15, -24
.Ltmp44:
	.cfi_offset %rbp, -16
	movl	%ecx, %r15d
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	param_read_long
	movl	%eax, %ebp
	cmpl	$2, %ebp
	jb	.LBB4_2
# BB#1:                                 # %sw.default
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movl	%ebp, %edx
	callq	*56(%rax)
	movl	%ebp, %r15d
.LBB4_2:                                # %sw.epilog
	movl	%r15d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	param_put_long, .Lfunc_end4-param_put_long
	.cfi_endproc

	.globl	param_list_copy
	.align	16, 0x90
	.type	param_list_copy,@function
param_list_copy:                        # @param_list_copy
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp45:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp46:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp47:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp48:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp49:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp50:
	.cfi_def_cfa_offset 56
	subq	$344, %rsp              # imm = 0x158
.Ltmp51:
	.cfi_def_cfa_offset 400
.Ltmp52:
	.cfi_offset %rbx, -56
.Ltmp53:
	.cfi_offset %r12, -48
.Ltmp54:
	.cfi_offset %r13, -40
.Ltmp55:
	.cfi_offset %r14, -32
.Ltmp56:
	.cfi_offset %r15, -24
.Ltmp57:
	.cfi_offset %rbp, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	8(%r14), %rax
	cmpq	8(%rbx), %rax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, 12(%rsp)          # 4-byte Spill
	leaq	336(%rsp), %r15
	movq	%r15, %rdi
	callq	param_init_enumerator
	leaq	320(%rsp), %r12
	leaq	64(%rsp), %r13
	leaq	40(%rsp), %rbp
	jmp	.LBB5_1
	.align	16, 0x90
.LBB5_5:                                # %if.end.18
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	332(%rsp), %esi
	movq	%r14, %rdi
	callq	gs_param_list_set_persist_keys
	movl	56(%rsp), %eax
	addl	$-5, %eax
	cmpl	$8, %eax
	ja	.LBB5_14
# BB#6:                                 # %if.end.18
                                        #   in Loop: Header=BB5_1 Depth=1
	xorl	%ecx, %ecx
	jmpq	*.LJTI5_0(,%rax,8)
.LBB5_13:                               # %sw.bb.73
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	12(%rsp), %eax          # 4-byte Reload
	andl	%eax, 52(%rsp)
.LBB5_14:                               # %sw.default
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	(%r14), %rax
	movq	%r14, %rdi
	movq	%r13, %rsi
	movq	%rbp, %rdx
	callq	*(%rax)
.LBB5_15:                               # %cleanup
                                        #   in Loop: Header=BB5_1 Depth=1
	testl	%eax, %eax
	jns	.LBB5_1
	jmp	.LBB5_16
.LBB5_7:                                # %sw.bb.20
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	$1, %ecx
	jmp	.LBB5_9
.LBB5_8:                                # %sw.bb.21
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	$2, %ecx
.LBB5_9:                                # %cc
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	48(%rsp), %eax
	movl	%eax, 24(%rsp)
	movq	(%r14), %rax
	movq	%r14, %rdi
	movq	%r13, %rsi
	leaq	16(%rsp), %rdx
	callq	*8(%rax)
	testl	%eax, %eax
	js	.LBB5_15
# BB#10:                                # %lor.lhs.false
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	16(%rsp), %rdi
	movq	40(%rsp), %rsi
	callq	param_list_copy
	testl	%eax, %eax
	js	.LBB5_15
# BB#11:                                # %lor.lhs.false.42
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	(%r14), %rax
	movq	%r14, %rdi
	movq	%r13, %rsi
	leaq	16(%rsp), %rdx
	callq	*16(%rax)
	testl	%eax, %eax
	js	.LBB5_15
# BB#12:                                # %if.end.51
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	movq	%r13, %rsi
	movq	%rbp, %rdx
	callq	*16(%rax)
	jmp	.LBB5_15
	.align	16, 0x90
.LBB5_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%r12, %rdx
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB5_16
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	328(%rsp), %edx
	cmpq	$255, %rdx
	movl	$-15, %eax
	ja	.LBB5_16
# BB#3:                                 # %if.end
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	320(%rsp), %rsi
	movq	%r13, %rdi
	callq	memcpy
	movl	328(%rsp), %eax
	movb	$0, 64(%rsp,%rax)
	movl	$-1, 56(%rsp)
	movq	%rbx, %rdi
	movq	%r13, %rsi
	movq	%rbp, %rdx
	callq	param_read_requested_typed
	testl	%eax, %eax
	je	.LBB5_5
# BB#4:                                 # %if.then.15
	movl	$-1, %ecx
	cmovgl	%ecx, %eax
.LBB5_16:                               # %while.end
	addq	$344, %rsp              # imm = 0x158
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	param_list_copy, .Lfunc_end5-param_list_copy
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI5_0:
	.quad	.LBB5_13
	.quad	.LBB5_13
	.quad	.LBB5_13
	.quad	.LBB5_13
	.quad	.LBB5_13
	.quad	.LBB5_14
	.quad	.LBB5_9
	.quad	.LBB5_7
	.quad	.LBB5_8


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
