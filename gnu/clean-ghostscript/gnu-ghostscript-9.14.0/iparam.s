	.text
	.file	"iparam.bc"
	.globl	stack_param_list_write
	.align	16, 0x90
	.type	stack_param_list_write,@function
stack_param_list_write:                 # @stack_param_list_write
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp2:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp3:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp4:
	.cfi_def_cfa_offset 48
.Ltmp5:
	.cfi_offset %rbx, -40
.Ltmp6:
	.cfi_offset %r12, -32
.Ltmp7:
	.cfi_offset %r14, -24
.Ltmp8:
	.cfi_offset %r15, -16
	movq	%rcx, %r12
	movq	%rdx, %r15
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	$stack_param_write, 32(%rbx)
	movl	$ref_write_procs, %esi
	movq	%r12, %rdx
	callq	gs_param_list_init
	movq	%r12, 24(%rbx)
	leaq	40(%rbx), %rax
	testq	%r15, %r15
	je	.LBB0_1
# BB#2:                                 # %if.else.i
	movups	(%r15), %xmm0
	movups	%xmm0, (%rax)
	jmp	.LBB0_3
.LBB0_1:                                # %if.then.i
	movw	$3584, (%rax)           # imm = 0xE00
.LBB0_3:                                # %ref_param_write_init.exit
	movq	$0, 72(%rbx)
	movl	$0, 84(%rbx)
	movq	$stack_param_enumerate, 64(%rbx)
	movq	%r14, 88(%rbx)
	movl	$0, 96(%rbx)
	movl	$0, 80(%rbx)
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end0:
	.size	stack_param_list_write, .Lfunc_end0-stack_param_list_write
	.cfi_endproc

	.align	16, 0x90
	.type	stack_param_write,@function
stack_param_write:                      # @stack_param_write
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp9:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp10:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp11:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp12:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp13:
	.cfi_def_cfa_offset 48
.Ltmp14:
	.cfi_offset %rbx, -40
.Ltmp15:
	.cfi_offset %r12, -32
.Ltmp16:
	.cfi_offset %r14, -24
.Ltmp17:
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %r12
	movq	88(%r12), %rbx
	movq	(%rbx), %rax
	movq	16(%rbx), %rcx
	subq	%rax, %rcx
	cmpq	$31, %rcx
	jg	.LBB1_3
# BB#1:                                 # %if.then
	movl	$2, %esi
	movq	%rbx, %rdi
	callq	ref_stack_push
	testl	%eax, %eax
	js	.LBB1_5
# BB#2:                                 # %cleanup.thread
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	ref_stack_index
	movups	(%r15), %xmm0
	movups	%xmm0, (%rax)
	movq	(%rbx), %rcx
	jmp	.LBB1_4
.LBB1_3:                                # %if.else
	leaq	32(%rax), %rcx
	movq	%rcx, (%rbx)
	movups	(%r15), %xmm0
	movups	%xmm0, 16(%rax)
.LBB1_4:                                # %if.end.8
	movups	(%r14), %xmm0
	movups	%xmm0, (%rcx)
	incl	80(%r12)
	xorl	%eax, %eax
.LBB1_5:                                # %cleanup.9
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end1:
	.size	stack_param_write, .Lfunc_end1-stack_param_write
	.cfi_endproc

	.align	16, 0x90
	.type	stack_param_enumerate,@function
stack_param_enumerate:                  # @stack_param_enumerate
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp18:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp19:
	.cfi_def_cfa_offset 24
	pushq	%r13
.Ltmp20:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp21:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp22:
	.cfi_def_cfa_offset 48
.Ltmp23:
	.cfi_offset %rbx, -48
.Ltmp24:
	.cfi_offset %r12, -40
.Ltmp25:
	.cfi_offset %r13, -32
.Ltmp26:
	.cfi_offset %r14, -24
.Ltmp27:
	.cfi_offset %r15, -16
	movq	%rcx, %r12
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %r13
	movl	(%r15), %ebx
	.align	16, 0x90
.LBB2_1:                                # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movq	88(%r13), %rdi
	movl	96(%r13), %eax
	leal	1(%rbx,%rax), %esi
	callq	ref_stack_index
	testq	%rax, %rax
	je	.LBB2_4
# BB#2:                                 # %do.cond
                                        #   in Loop: Header=BB2_1 Depth=1
	addl	$2, %ebx
	movzbl	1(%rax), %ecx
	cmpl	$13, %ecx
	jne	.LBB2_1
# BB#3:                                 # %do.end
	movl	$13, (%r12)
	movq	%rax, %rdi
	movq	%r14, %rsi
	movq	%r13, %rdx
	callq	ref_to_key
	movl	%ebx, (%r15)
	jmp	.LBB2_5
.LBB2_4:                                # %cleanup
	movl	$1, %eax
.LBB2_5:                                # %cleanup
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.Lfunc_end2:
	.size	stack_param_enumerate, .Lfunc_end2-stack_param_enumerate
	.cfi_endproc

	.globl	dict_param_list_write
	.align	16, 0x90
	.type	dict_param_list_write,@function
dict_param_list_write:                  # @dict_param_list_write
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp28:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp29:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp30:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp31:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp32:
	.cfi_def_cfa_offset 48
.Ltmp33:
	.cfi_offset %rbx, -40
.Ltmp34:
	.cfi_offset %r12, -32
.Ltmp35:
	.cfi_offset %r14, -24
.Ltmp36:
	.cfi_offset %r15, -16
	movq	%rcx, %r12
	movq	%rdx, %r15
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	8(%r14), %rcx
	movl	$-7, %eax
	testb	$16, (%rcx)
	je	.LBB3_5
# BB#1:                                 # %do.end
	movq	$dict_param_write, 32(%rbx)
	movq	$dict_param_enumerate, 64(%rbx)
	movl	$ref_write_procs, %esi
	movq	%rbx, %rdi
	movq	%r12, %rdx
	callq	gs_param_list_init
	movq	%r12, 24(%rbx)
	leaq	40(%rbx), %rax
	testq	%r15, %r15
	je	.LBB3_2
# BB#3:                                 # %if.else.i
	movups	(%r15), %xmm0
	movups	%xmm0, (%rax)
	jmp	.LBB3_4
.LBB3_2:                                # %if.then.i
	movw	$3584, (%rax)           # imm = 0xE00
.LBB3_4:                                # %ref_param_write_init.exit
	movq	$0, 72(%rbx)
	movl	$0, 84(%rbx)
	movups	(%r14), %xmm0
	movups	%xmm0, 88(%rbx)
	xorl	%eax, %eax
.LBB3_5:                                # %return
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end3:
	.size	dict_param_list_write, .Lfunc_end3-dict_param_list_write
	.cfi_endproc

	.align	16, 0x90
	.type	dict_param_write,@function
dict_param_write:                       # @dict_param_write
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp37:
	.cfi_def_cfa_offset 16
	addq	$88, %rdi
	xorl	%ecx, %ecx
	callq	dict_put
	movl	%eax, %ecx
	sarl	$31, %ecx
	andl	%eax, %ecx
	movl	%ecx, %eax
	popq	%rdx
	retq
.Lfunc_end4:
	.size	dict_param_write, .Lfunc_end4-dict_param_write
	.cfi_endproc

	.align	16, 0x90
	.type	dict_param_enumerate,@function
dict_param_enumerate:                   # @dict_param_enumerate
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp38:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp39:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp40:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp41:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp42:
	.cfi_def_cfa_offset 48
	subq	$32, %rsp
.Ltmp43:
	.cfi_def_cfa_offset 80
.Ltmp44:
	.cfi_offset %rbx, -48
.Ltmp45:
	.cfi_offset %r12, -40
.Ltmp46:
	.cfi_offset %r14, -32
.Ltmp47:
	.cfi_offset %r15, -24
.Ltmp48:
	.cfi_offset %rbp, -16
	movq	%rcx, %r12
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movl	(%r15), %esi
	leaq	88(%rbx), %rbp
	testl	%esi, %esi
	jne	.LBB5_2
# BB#1:                                 # %cond.false
	movq	%rbp, %rdi
	callq	dict_first
	movl	%eax, %esi
.LBB5_2:                                # %cond.end
	leaq	(%rsp), %rdx
	movq	%rbp, %rdi
	callq	dict_next
	movl	%eax, %ebp
	movl	$1, %eax
	testl	%ebp, %ebp
	js	.LBB5_4
# BB#3:                                 # %if.end
	movzbl	17(%rsp), %eax
	movl	%eax, (%r12)
	leaq	(%rsp), %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	ref_to_key
	movl	%ebp, (%r15)
.LBB5_4:                                # %cleanup
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	dict_param_enumerate, .Lfunc_end5-dict_param_enumerate
	.cfi_endproc

	.globl	array_indexed_param_list_read
	.align	16, 0x90
	.type	array_indexed_param_list_read,@function
array_indexed_param_list_read:          # @array_indexed_param_list_read
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp49:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp50:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp51:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp52:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp53:
	.cfi_def_cfa_offset 48
.Ltmp54:
	.cfi_offset %rbx, -48
.Ltmp55:
	.cfi_offset %r12, -40
.Ltmp56:
	.cfi_offset %r14, -32
.Ltmp57:
	.cfi_offset %r15, -24
.Ltmp58:
	.cfi_offset %rbp, -16
	movq	%r8, %rbp
	movl	%ecx, %r15d
	movq	%rdx, %r12
	movq	%rdi, %rbx
	movzwl	(%rsi), %eax
	andl	$16160, %eax            # imm = 0x3F20
	cmpl	$1056, %eax             # imm = 0x420
	jne	.LBB6_1
# BB#3:                                 # %if.end
	movq	$array_indexed_param_read, 32(%rbx)
	movups	(%rsi), %xmm0
	movups	%xmm0, 88(%rbx)
	movl	4(%rsi), %r14d
	movl	$ref_read_procs, %esi
	movq	%rbx, %rdi
	movq	%rbp, %rdx
	callq	gs_param_list_init
	movq	%rbp, 24(%rbx)
	leaq	40(%rbx), %rax
	testq	%r12, %r12
	je	.LBB6_4
# BB#5:                                 # %if.else.i
	movups	(%r12), %xmm0
	movups	%xmm0, (%rax)
	jmp	.LBB6_6
.LBB6_1:                                # %if.then
	movzbl	1(%rsi), %eax
	movl	$-7, %ebp
	cmpl	$4, %eax
	je	.LBB6_10
# BB#2:                                 # %cond.true
	movq	%rsi, %rdi
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	check_type_failed       # TAILCALL
.LBB6_4:                                # %if.then.i
	movw	$3584, (%rax)           # imm = 0xE00
.LBB6_6:                                # %if.end.i
	movl	%r15d, 56(%rbx)
	movl	%r14d, 80(%rbx)
	movq	8(%rbx), %rdi
	movl	$4, %edx
	movl	$.L.str.6, %ecx
	movl	%r14d, %esi
	callq	*88(%rdi)
	movq	%rax, 72(%rbx)
	testq	%rax, %rax
	je	.LBB6_7
# BB#8:                                 # %if.end.12.i
	leaq	(,%r14,4), %rdx
	xorl	%ebp, %ebp
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	memset
	movl	$0, 84(%rbx)
	addq	$84, %rbx
	jmp	.LBB6_9
.LBB6_7:                                # %if.end.i.ref_param_read_init.exit_crit_edge
	addq	$84, %rbx
	movl	$-25, %ebp
.LBB6_9:                                # %ref_param_read_init.exit
	movl	$1, (%rbx)
.LBB6_10:                               # %cleanup
	movl	%ebp, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	array_indexed_param_list_read, .Lfunc_end6-array_indexed_param_list_read
	.cfi_endproc

	.align	16, 0x90
	.type	array_indexed_param_read,@function
array_indexed_param_read:               # @array_indexed_param_read
	.cfi_startproc
# BB#0:                                 # %entry
	movzbl	1(%rsi), %eax
	cmpl	$11, %eax
	jne	.LBB7_5
# BB#1:                                 # %if.end
	movq	8(%rsi), %rcx
	movl	$1, %eax
	testq	%rcx, %rcx
	js	.LBB7_4
# BB#2:                                 # %lor.lhs.false
	movl	92(%rdi), %esi
	cmpq	%rsi, %rcx
	jge	.LBB7_4
# BB#3:                                 # %if.end.11
	movq	%rcx, %rax
	shlq	$4, %rax
	addq	96(%rdi), %rax
	movq	%rax, (%rdx)
	movq	72(%rdi), %rax
	leaq	(%rax,%rcx,4), %rsi
	movq	%rsi, 8(%rdx)
	movl	$1, (%rax,%rcx,4)
	xorl	%eax, %eax
.LBB7_4:                                # %cleanup
	retq
.LBB7_5:                                # %if.then
	movq	%rsi, %rdi
	jmp	check_type_failed       # TAILCALL
.Lfunc_end7:
	.size	array_indexed_param_read, .Lfunc_end7-array_indexed_param_read
	.cfi_endproc

	.globl	array_param_list_read
	.align	16, 0x90
	.type	array_param_list_read,@function
array_param_list_read:                  # @array_param_list_read
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp59:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp60:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp61:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp62:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp63:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp64:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp65:
	.cfi_def_cfa_offset 64
.Ltmp66:
	.cfi_offset %rbx, -56
.Ltmp67:
	.cfi_offset %r12, -48
.Ltmp68:
	.cfi_offset %r13, -40
.Ltmp69:
	.cfi_offset %r14, -32
.Ltmp70:
	.cfi_offset %r15, -24
.Ltmp71:
	.cfi_offset %rbp, -16
	movq	%r9, %r13
	movq	%rcx, %r12
	movl	%edx, %ebp
	movq	%rdi, %rbx
	movl	$-15, %r15d
	testb	$1, %bpl
	jne	.LBB8_6
# BB#1:                                 # %if.end
	movl	%r8d, %r15d
	movq	$array_param_read, 32(%rbx)
	movq	$array_param_enumerate, 64(%rbx)
	movq	%rsi, 88(%rbx)
	movl	%ebp, %r14d
	movq	%r14, %rax
	shlq	$4, %rax
	addq	%rsi, %rax
	movq	%rax, 96(%rbx)
	movl	$ref_read_procs, %esi
	movq	%rbx, %rdi
	movq	%r13, %rdx
	callq	gs_param_list_init
	movq	%r13, 24(%rbx)
	leaq	40(%rbx), %rax
	testq	%r12, %r12
	je	.LBB8_2
# BB#3:                                 # %if.else.i
	movups	(%r12), %xmm0
	movups	%xmm0, (%rax)
	jmp	.LBB8_4
.LBB8_2:                                # %if.then.i
	movw	$3584, (%rax)           # imm = 0xE00
.LBB8_4:                                # %if.end.i
	movl	%r15d, 56(%rbx)
	movl	%ebp, 80(%rbx)
	movq	8(%rbx), %rdi
	movl	$4, %edx
	movl	$.L.str.6, %ecx
	movl	%ebp, %esi
	callq	*88(%rdi)
	movq	%rax, 72(%rbx)
	movl	$-25, %r15d
	testq	%rax, %rax
	je	.LBB8_6
# BB#5:                                 # %if.end.12.i
	shlq	$2, %r14
	xorl	%r15d, %r15d
	xorl	%esi, %esi
	movq	%rax, %rdi
	movq	%r14, %rdx
	callq	memset
	movl	$0, 84(%rbx)
.LBB8_6:                                # %cleanup
	movl	%r15d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	array_param_list_read, .Lfunc_end8-array_param_list_read
	.cfi_endproc

	.align	16, 0x90
	.type	array_param_read,@function
array_param_read:                       # @array_param_read
	.cfi_startproc
# BB#0:                                 # %entry
	movq	88(%rdi), %r8
	movq	96(%rdi), %r9
	movl	$1, %eax
	cmpq	%r9, %r8
	jae	.LBB9_6
# BB#1:                                 # %for.body.lr.ph
	movq	%r8, %r10
	.align	16, 0x90
.LBB9_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzbl	1(%r10), %ecx
	cmpl	$13, %ecx
	jne	.LBB9_5
# BB#3:                                 # %land.lhs.true
                                        #   in Loop: Header=BB9_2 Depth=1
	movq	8(%r10), %rcx
	cmpq	8(%rsi), %rcx
	je	.LBB9_4
.LBB9_5:                                # %for.inc
                                        #   in Loop: Header=BB9_2 Depth=1
	addq	$32, %r10
	cmpq	%r9, %r10
	jb	.LBB9_2
.LBB9_6:                                # %cleanup
	retq
.LBB9_4:                                # %if.then
	leaq	16(%r10), %rax
	movq	%rax, (%rdx)
	subq	%r8, %r10
	movq	72(%rdi), %rax
	sarq	$2, %r10
	leaq	(%rax,%r10), %rcx
	movq	%rcx, 8(%rdx)
	movl	$1, (%rax,%r10)
	xorl	%eax, %eax
	retq
.Lfunc_end9:
	.size	array_param_read, .Lfunc_end9-array_param_read
	.cfi_endproc

	.align	16, 0x90
	.type	array_param_enumerate,@function
array_param_enumerate:                  # @array_param_enumerate
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp72:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp73:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp74:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp75:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp76:
	.cfi_def_cfa_offset 48
.Ltmp77:
	.cfi_offset %rbx, -40
.Ltmp78:
	.cfi_offset %r12, -32
.Ltmp79:
	.cfi_offset %r14, -24
.Ltmp80:
	.cfi_offset %r15, -16
	movq	%rcx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rax
	movslq	(%r15), %r12
	movq	88(%rax), %rsi
	movq	96(%rax), %rcx
	movq	%r12, %rdi
	shlq	$4, %rdi
	leaq	(%rsi,%rdi), %rbx
	cmpq	%rcx, %rbx
	jae	.LBB10_5
# BB#1:                                 # %for.body.preheader
	addl	$2, %r12d
	leaq	1(%rsi,%rdi), %rbx
	.align	16, 0x90
.LBB10_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rbx), %esi
	cmpl	$13, %esi
	je	.LBB10_3
# BB#4:                                 # %for.inc
                                        #   in Loop: Header=BB10_2 Depth=1
	addl	$2, %r12d
	leaq	32(%rbx), %rsi
	addq	$31, %rbx
	cmpq	%rcx, %rbx
	movq	%rsi, %rbx
	jb	.LBB10_2
.LBB10_5:                               # %cleanup
	movl	$1, %eax
	jmp	.LBB10_6
.LBB10_3:                               # %if.then
	leaq	-1(%rbx), %rdi
	movq	%rdx, %rsi
	movq	%rax, %rdx
	callq	ref_to_key
	movzbl	(%rbx), %ecx
	movl	%ecx, (%r14)
	movl	%r12d, (%r15)
.LBB10_6:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end10:
	.size	array_param_enumerate, .Lfunc_end10-array_param_enumerate
	.cfi_endproc

	.globl	stack_param_list_read
	.align	16, 0x90
	.type	stack_param_list_read,@function
stack_param_list_read:                  # @stack_param_list_read
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp81:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp82:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp83:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp84:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp85:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp86:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp87:
	.cfi_def_cfa_offset 80
.Ltmp88:
	.cfi_offset %rbx, -56
.Ltmp89:
	.cfi_offset %r12, -48
.Ltmp90:
	.cfi_offset %r13, -40
.Ltmp91:
	.cfi_offset %r14, -32
.Ltmp92:
	.cfi_offset %r15, -24
.Ltmp93:
	.cfi_offset %rbp, -16
	movq	%r9, %r12
	movl	%r8d, 20(%rsp)          # 4-byte Spill
	movq	%rcx, 8(%rsp)           # 8-byte Spill
	movl	%edx, %r13d
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	%r14, %rdi
	callq	ref_stack_counttomark
	movl	%eax, %ebp
	movl	$-24, %r15d
	testl	%ebp, %ebp
	je	.LBB11_7
# BB#1:                                 # %if.end
	movl	%r13d, %eax
	notl	%eax
	addl	%eax, %ebp
	movl	$-15, %r15d
	testb	$1, %bpl
	jne	.LBB11_7
# BB#2:                                 # %if.end.2
	movq	$stack_param_read, 32(%rbx)
	movq	$stack_param_enumerate, 64(%rbx)
	movq	%r14, 88(%rbx)
	movl	%r13d, 96(%rbx)
	shrl	%ebp
	movl	$ref_read_procs, %esi
	movq	%rbx, %rdi
	movq	%r12, %rdx
	callq	gs_param_list_init
	movq	%r12, 24(%rbx)
	leaq	40(%rbx), %rax
	movq	8(%rsp), %rcx           # 8-byte Reload
	testq	%rcx, %rcx
	je	.LBB11_3
# BB#4:                                 # %if.else.i
	movups	(%rcx), %xmm0
	movups	%xmm0, (%rax)
	jmp	.LBB11_5
.LBB11_3:                               # %if.then.i
	movw	$3584, (%rax)           # imm = 0xE00
.LBB11_5:                               # %if.end.i
	movl	20(%rsp), %eax          # 4-byte Reload
	movl	%eax, 56(%rbx)
	movl	%ebp, 80(%rbx)
	movq	8(%rbx), %rdi
	movl	$4, %edx
	movl	$.L.str.6, %ecx
	movl	%ebp, %esi
	callq	*88(%rdi)
	movq	%rax, 72(%rbx)
	movl	$-25, %r15d
	testq	%rax, %rax
	je	.LBB11_7
# BB#6:                                 # %if.end.12.i
	movl	%ebp, %edx
	shlq	$2, %rdx
	xorl	%r15d, %r15d
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	memset
	movl	$0, 84(%rbx)
.LBB11_7:                               # %cleanup
	movl	%r15d, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end11:
	.size	stack_param_list_read, .Lfunc_end11-stack_param_list_read
	.cfi_endproc

	.align	16, 0x90
	.type	stack_param_read,@function
stack_param_read:                       # @stack_param_read
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp94:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp95:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp96:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp97:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp98:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp99:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp100:
	.cfi_def_cfa_offset 64
.Ltmp101:
	.cfi_offset %rbx, -56
.Ltmp102:
	.cfi_offset %r12, -48
.Ltmp103:
	.cfi_offset %r13, -40
.Ltmp104:
	.cfi_offset %r14, -32
.Ltmp105:
	.cfi_offset %r15, -24
.Ltmp106:
	.cfi_offset %rbp, -16
	movq	%rsi, %r13
	movq	%rdi, %r12
	movl	80(%r12), %r14d
	movl	$1, %r15d
	testl	%r14d, %r14d
	je	.LBB12_6
# BB#1:                                 # %for.body.lr.ph
	movq	%rdx, (%rsp)            # 8-byte Spill
	movq	88(%r12), %rbx
	movl	96(%r12), %ebp
	incl	%ebp
	.align	16, 0x90
.LBB12_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebp, %esi
	movq	%rbx, %rdi
	callq	ref_stack_index
	movzbl	1(%rax), %ecx
	cmpl	$13, %ecx
	jne	.LBB12_5
# BB#3:                                 # %land.lhs.true
                                        #   in Loop: Header=BB12_2 Depth=1
	movq	8(%rax), %rax
	cmpq	8(%r13), %rax
	je	.LBB12_4
.LBB12_5:                               # %for.inc
                                        #   in Loop: Header=BB12_2 Depth=1
	addl	$2, %ebp
	decl	%r14d
	jne	.LBB12_2
	jmp	.LBB12_6
.LBB12_4:                               # %if.then
	decl	%ebp
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	ref_stack_index
	movq	(%rsp), %rdx            # 8-byte Reload
	movq	%rax, (%rdx)
	decl	%r14d
	movq	72(%r12), %rax
	leaq	(%rax,%r14,4), %rcx
	movq	%rcx, 8(%rdx)
	movl	$1, (%rax,%r14,4)
	xorl	%r15d, %r15d
.LBB12_6:                               # %cleanup.15
	movl	%r15d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end12:
	.size	stack_param_read, .Lfunc_end12-stack_param_read
	.cfi_endproc

	.globl	dict_param_list_read
	.align	16, 0x90
	.type	dict_param_list_read,@function
dict_param_list_read:                   # @dict_param_list_read
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp107:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp108:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp109:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp110:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp111:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp112:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp113:
	.cfi_def_cfa_offset 64
.Ltmp114:
	.cfi_offset %rbx, -56
.Ltmp115:
	.cfi_offset %r12, -48
.Ltmp116:
	.cfi_offset %r13, -40
.Ltmp117:
	.cfi_offset %r14, -32
.Ltmp118:
	.cfi_offset %r15, -24
.Ltmp119:
	.cfi_offset %rbp, -16
	movq	%r8, %r12
	movl	%ecx, %r14d
	movq	%rdx, %r15
	movq	%rdi, %rbx
	testq	%rsi, %rsi
	je	.LBB13_1
# BB#2:                                 # %do.body
	movq	8(%rsi), %rax
	movl	$-7, %ebp
	testb	$32, (%rax)
	je	.LBB13_9
# BB#3:                                 # %do.end
	movq	$dict_param_read, 32(%rbx)
	movups	(%rsi), %xmm0
	movups	%xmm0, 88(%rbx)
	movq	%rsi, %rdi
	callq	dict_max_index
	movl	%eax, %r13d
	incl	%r13d
	jmp	.LBB13_4
.LBB13_1:                               # %if.then
	movq	$empty_param_read, 32(%rbx)
	xorl	%r13d, %r13d
.LBB13_4:                               # %if.end.6
	movq	$dict_param_enumerate, 64(%rbx)
	movl	$ref_read_procs, %esi
	movq	%rbx, %rdi
	movq	%r12, %rdx
	callq	gs_param_list_init
	movq	%r12, 24(%rbx)
	leaq	40(%rbx), %rax
	testq	%r15, %r15
	je	.LBB13_5
# BB#6:                                 # %if.else.i
	movups	(%r15), %xmm0
	movups	%xmm0, (%rax)
	jmp	.LBB13_7
.LBB13_5:                               # %if.then.i
	movw	$3584, (%rax)           # imm = 0xE00
.LBB13_7:                               # %if.end.i
	movl	%r14d, 56(%rbx)
	movl	%r13d, 80(%rbx)
	movq	8(%rbx), %rdi
	movl	$4, %edx
	movl	$.L.str.6, %ecx
	movl	%r13d, %esi
	callq	*88(%rdi)
	movq	%rax, 72(%rbx)
	movl	$-25, %ebp
	testq	%rax, %rax
	je	.LBB13_9
# BB#8:                                 # %if.end.12.i
	movl	%r13d, %edx
	shlq	$2, %rdx
	xorl	%ebp, %ebp
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	memset
	movl	$0, 84(%rbx)
.LBB13_9:                               # %cleanup
	movl	%ebp, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end13:
	.size	dict_param_list_read, .Lfunc_end13-dict_param_list_read
	.cfi_endproc

	.align	16, 0x90
	.type	empty_param_read,@function
empty_param_read:                       # @empty_param_read
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$1, %eax
	retq
.Lfunc_end14:
	.size	empty_param_read, .Lfunc_end14-empty_param_read
	.cfi_endproc

	.align	16, 0x90
	.type	dict_param_read,@function
dict_param_read:                        # @dict_param_read
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp120:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp121:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp122:
	.cfi_def_cfa_offset 32
.Ltmp123:
	.cfi_offset %rbx, -32
.Ltmp124:
	.cfi_offset %r14, -24
.Ltmp125:
	.cfi_offset %r15, -16
	movq	%rdx, %r15
	movq	%rdi, %r14
	leaq	88(%r14), %rbx
	movq	%rbx, %rdi
	callq	dict_find
	movl	%eax, %ecx
	movl	$1, %eax
	cmpl	$1, %ecx
	jne	.LBB15_2
# BB#1:                                 # %if.end
	movq	(%r15), %rsi
	movq	%rbx, %rdi
	callq	dict_value_index
	cltq
	movq	72(%r14), %rcx
	leaq	(%rcx,%rax,4), %rdx
	movq	%rdx, 8(%r15)
	movl	$1, (%rcx,%rax,4)
	xorl	%eax, %eax
.LBB15_2:                               # %cleanup
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end15:
	.size	dict_param_read, .Lfunc_end15-dict_param_read
	.cfi_endproc

	.align	16, 0x90
	.type	ref_param_write_typed,@function
ref_param_write_typed:                  # @ref_param_write_typed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp126:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp127:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp128:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp129:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp130:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp131:
	.cfi_def_cfa_offset 56
	subq	$104, %rsp
.Ltmp132:
	.cfi_def_cfa_offset 160
.Ltmp133:
	.cfi_offset %rbx, -56
.Ltmp134:
	.cfi_offset %r12, -48
.Ltmp135:
	.cfi_offset %r13, -40
.Ltmp136:
	.cfi_offset %r14, -32
.Ltmp137:
	.cfi_offset %r15, -24
.Ltmp138:
	.cfi_offset %rbp, -16
	movq	%rdx, %r13
	movq	%rsi, %r14
	movq	%rdi, %r15
	movl	16(%r13), %ecx
	movl	$-20, %eax
	cmpq	$13, %rcx
	ja	.LBB16_69
# BB#1:                                 # %entry
	jmpq	*.LJTI16_0(,%rcx,8)
.LBB16_58:                              # %sw.bb.56
	addl	$-11, %ecx
	movq	%r15, %rdi
	movq	%r14, %rsi
	movq	%r13, %rdx
	callq	ref_param_begin_write_collection
	jmp	.LBB16_69
.LBB16_2:                               # %sw.bb
	movw	$3584, 48(%rsp)         # imm = 0xE00
	jmp	.LBB16_61
.LBB16_3:                               # %sw.bb.1
	movw	(%r13), %ax
	movw	%ax, 56(%rsp)
	movw	$256, 48(%rsp)          # imm = 0x100
	jmp	.LBB16_61
.LBB16_4:                               # %sw.bb.6
	movslq	(%r13), %rax
	jmp	.LBB16_5
.LBB16_6:                               # %sw.bb.12
	movq	(%r13), %rax
.LBB16_5:                               # %if.end.62
	movq	%rax, 56(%rsp)
	movw	$2816, 48(%rsp)         # imm = 0xB00
	jmp	.LBB16_61
.LBB16_7:                               # %sw.bb.18
	movl	(%r13), %eax
	movl	%eax, 56(%rsp)
	movw	$4096, 48(%rsp)         # imm = 0x1000
	jmp	.LBB16_61
.LBB16_8:                               # %sw.bb.23
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	ref_param_requested
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	.LBB16_69
# BB#9:                                 # %if.end
	movq	(%r13), %rbx
	movl	8(%r13), %r12d
	cmpl	$0, 12(%r13)
	je	.LBB16_11
# BB#10:                                # %if.then.i
	movq	%rbx, 56(%rsp)
	movw	$4704, 48(%rsp)         # imm = 0x1260
	movl	%r12d, 52(%rsp)
	jmp	.LBB16_61
.LBB16_59:                              # %sw.bb.26
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	ref_param_requested
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	.LBB16_69
# BB#60:                                # %sw.epilog
	movq	8(%r15), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	movq	(%r13), %rsi
	movl	8(%r13), %edx
	cmpl	$0, 12(%r13)
	sete	%al
	movzbl	%al, %r8d
	leaq	48(%rsp), %rcx
	callq	names_ref
	testl	%eax, %eax
	jns	.LBB16_61
	jmp	.LBB16_69
.LBB16_13:                              # %sw.bb.33
	movl	8(%r13), %r12d
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	ref_param_requested
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	.LBB16_69
# BB#14:                                # %if.end.i.i
	movq	24(%r15), %rdi
	leaq	64(%rsp), %rsi
	movl	$112, %edx
	movl	$.L.str.1, %r8d
	movl	%r12d, %ecx
	callq	gs_alloc_ref_array
	testl	%eax, %eax
	js	.LBB16_69
# BB#15:                                # %if.end.i.41
	testl	%r12d, %r12d
	je	.LBB16_18
# BB#16:                                # %for.body.lr.ph.i
	movq	72(%rsp), %rbx
	addq	$8, %rbx
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB16_17:                              # %for.inc.i
                                        # =>This Inner Loop Header: Depth=1
	movq	24(%r15), %rdi
	movq	(%r13), %rax
	movslq	(%rax,%rbp,4), %rax
	movq	%rax, (%rbx)
	callq	imemory_new_mask
	addl	$2816, %eax             # imm = 0xB00
	movw	%ax, -8(%rbx)
	incq	%rbp
	addq	$16, %rbx
	cmpl	%ebp, %r12d
	jne	.LBB16_17
	jmp	.LBB16_18
.LBB16_27:                              # %sw.bb.38
	movl	8(%r13), %r12d
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	ref_param_requested
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	.LBB16_69
# BB#28:                                # %if.end.i.i.54
	movq	24(%r15), %rdi
	leaq	64(%rsp), %rsi
	movl	$112, %edx
	movl	$.L.str.1, %r8d
	movl	%r12d, %ecx
	callq	gs_alloc_ref_array
	testl	%eax, %eax
	js	.LBB16_69
# BB#29:                                # %if.end.i.56
	testl	%r12d, %r12d
	je	.LBB16_18
# BB#30:                                # %for.body.lr.ph.i.59
	movq	72(%rsp), %rbx
	addq	$8, %rbx
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB16_31:                              # %for.inc.i.68
                                        # =>This Inner Loop Header: Depth=1
	movq	24(%r15), %rdi
	movq	(%r13), %rax
	movl	(%rax,%rbp,4), %eax
	movl	%eax, (%rbx)
	callq	imemory_new_mask
	addl	$4096, %eax             # imm = 0x1000
	movw	%ax, -8(%rbx)
	incq	%rbp
	addq	$16, %rbx
	cmpl	%ebp, %r12d
	jne	.LBB16_31
.LBB16_18:                              # %for.end.i
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	ref_param_requested
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	.LBB16_69
# BB#19:                                # %if.end.i.183
	cmpl	$0, 84(%r15)
	je	.LBB16_23
# BB#20:                                # %if.then.i.245
	leaq	96(%rsp), %rdx
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	jmp	.LBB16_21
.LBB16_32:                              # %sw.bb.44
	movl	8(%r13), %ebx
	movq	%r13, 40(%rsp)          # 8-byte Spill
	movq	%r15, %rdi
	movq	%r15, 24(%rsp)          # 8-byte Spill
	movq	%r14, %rsi
	movq	%r14, 16(%rsp)          # 8-byte Spill
	callq	ref_param_requested
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	.LBB16_69
# BB#33:                                # %if.end.i.i.87
	movq	24(%rsp), %rax          # 8-byte Reload
	movq	24(%rax), %rdi
	leaq	64(%rsp), %rsi
	movl	$112, %edx
	movl	$.L.str.1, %r8d
	movl	%ebx, %ecx
	callq	gs_alloc_ref_array
	testl	%eax, %eax
	js	.LBB16_69
# BB#34:                                # %if.end.i.89
	movq	%rbx, %rcx
	movq	%rcx, 8(%rsp)           # 8-byte Spill
	testl	%ecx, %ecx
	je	.LBB16_41
# BB#35:                                # %for.body.lr.ph.i.92
	movq	72(%rsp), %rbp
	xorl	%r15d, %r15d
	movl	$8, %r13d
	.align	16, 0x90
.LBB16_36:                              # %for.body.i.97
                                        # =>This Inner Loop Header: Depth=1
	movq	40(%rsp), %rax          # 8-byte Reload
	movq	(%rax), %rax
	movq	-8(%rax,%r13), %rdx
	movl	(%rax,%r13), %ebx
	cmpl	$0, 4(%rax,%r13)
	je	.LBB16_38
# BB#37:                                # %if.then.i.118
                                        #   in Loop: Header=BB16_36 Depth=1
	movq	%rdx, (%rbp,%r13)
	movw	$4704, -8(%rbp,%r13)    # imm = 0x1260
	movl	%ebx, -4(%rbp,%r13)
	jmp	.LBB16_40
.LBB16_38:                              # %if.else.i.122
                                        #   in Loop: Header=BB16_36 Depth=1
	movq	%rdx, 32(%rsp)          # 8-byte Spill
	movq	24(%rsp), %rax          # 8-byte Reload
	movq	24(%rax), %r12
	movl	$.L.str, %edx
	movq	%r12, %rdi
	movl	%ebx, %esi
	callq	*136(%r12)
	movq	%rax, %r14
	movl	$-25, %eax
	testq	%r14, %r14
	je	.LBB16_69
# BB#39:                                # %if.end.i.133
                                        #   in Loop: Header=BB16_36 Depth=1
	movq	%r14, %rdi
	movq	32(%rsp), %rsi          # 8-byte Reload
	movq	%rbx, %rdx
	callq	memcpy
	movq	%r14, (%rbp,%r13)
	movq	%r12, %rdi
	callq	imemory_space
	orl	$96, %eax
	addl	$4608, %eax             # imm = 0x1200
	movw	%ax, -8(%rbp,%r13)
	movl	%ebx, -4(%rbp,%r13)
	movq	8(%rsp), %rcx           # 8-byte Reload
.LBB16_40:                              # %for.inc.i.101
                                        #   in Loop: Header=BB16_36 Depth=1
	incq	%r15
	addq	$16, %r13
	cmpq	%rcx, %r15
	jb	.LBB16_36
.LBB16_41:                              # %for.end.i.103
	movq	24(%rsp), %rbp          # 8-byte Reload
	movq	%rbp, %rdi
	movq	16(%rsp), %rbx          # 8-byte Reload
	movq	%rbx, %rsi
	callq	ref_param_requested
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	.LBB16_69
# BB#42:                                # %if.end.i.207
	cmpl	$0, 84(%rbp)
	je	.LBB16_45
# BB#43:                                # %if.then.i.285
	leaq	96(%rsp), %rdx
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	__isoc99_sscanf
	movl	%eax, %ecx
	movl	$-15, %eax
	cmpl	$1, %ecx
	jne	.LBB16_46
# BB#44:                                # %if.end.i.288
	movq	96(%rsp), %rax
	movq	%rax, 88(%rsp)
	movw	$2816, 80(%rsp)         # imm = 0xB00
	xorl	%eax, %eax
	jmp	.LBB16_46
.LBB16_48:                              # %sw.bb.50
	movl	8(%r13), %r12d
	movq	%r15, %rdi
	movq	%r14, %rsi
	movq	%r14, 16(%rsp)          # 8-byte Spill
	callq	ref_param_requested
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	.LBB16_69
# BB#49:                                # %if.end.i.i.142
	movq	24(%r15), %rdi
	leaq	64(%rsp), %rsi
	movl	$112, %edx
	movl	$.L.str.1, %r8d
	movl	%r12d, %ecx
	callq	gs_alloc_ref_array
	testl	%eax, %eax
	js	.LBB16_69
# BB#50:                                # %if.end.i.144
	testl	%r12d, %r12d
	je	.LBB16_54
# BB#51:                                # %for.body.lr.ph.i.147
	movq	72(%rsp), %r14
	xorl	%ebp, %ebp
	xorl	%ebx, %ebx
.LBB16_52:                              # %for.body.i.152
                                        # =>This Inner Loop Header: Depth=1
	movq	24(%r15), %rax
	movq	(%r13), %rcx
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	movq	(%rcx,%rbp), %rsi
	cmpl	$0, 12(%rcx,%rbp)
	movl	8(%rcx,%rbp), %edx
	sete	%al
	movzbl	%al, %r8d
	leaq	(%r14,%rbp), %rcx
	callq	names_ref
	testl	%eax, %eax
	js	.LBB16_69
# BB#53:                                # %for.inc.i.156
                                        #   in Loop: Header=BB16_52 Depth=1
	incq	%rbx
	addq	$16, %rbp
	cmpq	%r12, %rbx
	jb	.LBB16_52
.LBB16_54:                              # %for.end.i.158
	movq	%r15, %rdi
	movq	16(%rsp), %rbp          # 8-byte Reload
	movq	%rbp, %rsi
	callq	ref_param_requested
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	.LBB16_69
# BB#55:                                # %if.end.i.219
	cmpl	$0, 84(%r15)
	je	.LBB16_57
# BB#56:                                # %if.then.i.305
	leaq	96(%rsp), %rdx
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
.LBB16_21:                              # %if.then.i.245
	callq	__isoc99_sscanf
	movl	%eax, %ecx
	movl	$-15, %eax
	cmpl	$1, %ecx
	jne	.LBB16_25
# BB#22:                                # %if.end.i.248
	movq	96(%rsp), %rax
	movq	%rax, 88(%rsp)
	movw	$2816, 80(%rsp)         # imm = 0xB00
	xorl	%eax, %eax
	jmp	.LBB16_25
.LBB16_11:                              # %if.else.i
	movq	24(%r15), %r13
	movl	$.L.str, %edx
	movq	%r13, %rdi
	movl	%r12d, %esi
	callq	*136(%r13)
	movq	%rax, %rbp
	movl	$-25, %eax
	testq	%rbp, %rbp
	je	.LBB16_69
# BB#12:                                # %if.end.i
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	movq	%r12, %rdx
	callq	memcpy
	movq	%rbp, 56(%rsp)
	movq	%r13, %rdi
	callq	imemory_space
	orl	$96, %eax
	addl	$4608, %eax             # imm = 0x1200
	movw	%ax, 48(%rsp)
	movl	%r12d, 52(%rsp)
.LBB16_61:                              # %if.end.62
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	ref_param_requested
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	.LBB16_69
# BB#62:                                # %if.end.i.176
	cmpl	$0, 84(%r15)
	je	.LBB16_65
# BB#63:                                # %if.then.i.229
	leaq	64(%rsp), %rdx
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	__isoc99_sscanf
	movl	%eax, %ecx
	movl	$-15, %eax
	cmpl	$1, %ecx
	jne	.LBB16_66
# BB#64:                                # %if.end.i.232
	movq	64(%rsp), %rax
	movq	%rax, 88(%rsp)
	movw	$2816, 80(%rsp)         # imm = 0xB00
	xorl	%eax, %eax
	jmp	.LBB16_66
.LBB16_65:                              # %if.else.i.238
	movq	8(%r15), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rbx
	movq	%r14, %rdi
	callq	strlen
	leaq	80(%rsp), %rcx
	xorl	%r8d, %r8d
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movl	%eax, %edx
	callq	names_ref
.LBB16_66:                              # %ref_param_key.exit
	testl	%eax, %eax
	js	.LBB16_69
# BB#67:                                # %if.end.3.i
	leaq	80(%rsp), %rsi
	leaq	48(%rsp), %rdx
.LBB16_68:                              # %cleanup
	movq	%r15, %rdi
	callq	*32(%r15)
.LBB16_69:                              # %cleanup
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB16_23:                              # %if.else.i.257
	movq	8(%r15), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rbx
	movq	%r14, %rdi
	callq	strlen
	leaq	80(%rsp), %rcx
	xorl	%r8d, %r8d
	movq	%rbx, %rdi
	movq	%r14, %rsi
	jmp	.LBB16_24
.LBB16_45:                              # %if.else.i.297
	movq	8(%rbp), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %r14
	movq	%rbx, %rdi
	callq	strlen
	leaq	80(%rsp), %rcx
	xorl	%r8d, %r8d
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movl	%eax, %edx
	callq	names_ref
.LBB16_46:                              # %ref_param_key.exit299
	testl	%eax, %eax
	js	.LBB16_69
# BB#47:                                # %if.end.3.i.211
	leaq	80(%rsp), %rsi
	leaq	64(%rsp), %rdx
	movq	%rbp, %rdi
	callq	*32(%rbp)
	jmp	.LBB16_69
.LBB16_57:                              # %if.else.i.317
	movq	8(%r15), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rbx
	movq	%rbp, %rdi
	callq	strlen
	leaq	80(%rsp), %rcx
	xorl	%r8d, %r8d
	movq	%rbx, %rdi
	movq	%rbp, %rsi
.LBB16_24:                              # %ref_param_key.exit259
	movl	%eax, %edx
	callq	names_ref
.LBB16_25:                              # %ref_param_key.exit259
	testl	%eax, %eax
	js	.LBB16_69
# BB#26:                                # %if.end.3.i.187
	leaq	80(%rsp), %rsi
	leaq	64(%rsp), %rdx
	jmp	.LBB16_68
.Lfunc_end16:
	.size	ref_param_write_typed, .Lfunc_end16-ref_param_write_typed
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI16_0:
	.quad	.LBB16_2
	.quad	.LBB16_3
	.quad	.LBB16_4
	.quad	.LBB16_6
	.quad	.LBB16_7
	.quad	.LBB16_8
	.quad	.LBB16_59
	.quad	.LBB16_13
	.quad	.LBB16_27
	.quad	.LBB16_32
	.quad	.LBB16_48
	.quad	.LBB16_58
	.quad	.LBB16_58
	.quad	.LBB16_58

	.text
	.align	16, 0x90
	.type	ref_param_begin_write_collection,@function
ref_param_begin_write_collection:       # @ref_param_begin_write_collection
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp139:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp140:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp141:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp142:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp143:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp144:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp145:
	.cfi_def_cfa_offset 80
.Ltmp146:
	.cfi_offset %rbx, -56
.Ltmp147:
	.cfi_offset %r12, -48
.Ltmp148:
	.cfi_offset %r13, -40
.Ltmp149:
	.cfi_offset %r14, -32
.Ltmp150:
	.cfi_offset %r15, -24
.Ltmp151:
	.cfi_offset %rbp, -16
	movl	%ecx, %r13d
	movq	%rdx, %r14
	movq	%rdi, %r15
	movq	8(%r15), %rdi
	movq	24(%r15), %r12
	movl	$104, %esi
	movl	$.L.str.3, %edx
	callq	*64(%rdi)
	movq	%rax, %rbx
	movl	$-25, %ebp
	testq	%rbx, %rbx
	je	.LBB17_15
# BB#1:                                 # %if.end
	cmpl	$2, %r13d
	jne	.LBB17_2
# BB#7:                                 # %if.else
	movl	8(%r14), %ecx
	leaq	8(%rsp), %rsi
	movl	$112, %edx
	movl	$.L.str.3, %r8d
	movq	%r12, %rdi
	callq	gs_alloc_ref_array
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB17_12
# BB#8:                                 # %if.then.14
	movzbl	9(%rsp), %eax
	cmpl	$4, %eax
	jne	.LBB17_9
# BB#10:                                # %do.body.2.i
	movl	$-7, %ebp
	testb	$16, 8(%rsp)
	je	.LBB17_12
# BB#11:                                # %do.end.8.i
	movq	$array_new_indexed_param_write, 32(%rbx)
	movl	$ref_write_procs, %esi
	movq	%rbx, %rdi
	movq	%r12, %rdx
	callq	gs_param_list_init
	movq	%r12, 24(%rbx)
	movw	$3584, 40(%rbx)         # imm = 0xE00
	movq	$0, 72(%rbx)
	movl	$0, 84(%rbx)
	movups	8(%rsp), %xmm0
	movups	%xmm0, 88(%rbx)
	movl	$1, 84(%rbx)
	xorl	%ebp, %ebp
	jmp	.LBB17_12
.LBB17_2:                               # %if.then.3
	movl	8(%r14), %esi
	leaq	8(%rsp), %rdx
	movq	%r12, %rdi
	callq	dict_alloc
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB17_12
# BB#3:                                 # %if.then.6
	movq	16(%rsp), %rax
	testb	$16, (%rax)
	jne	.LBB17_5
# BB#4:                                 # %if.then.6.dict_param_list_write.exit_crit_edge
	movq	%rbx, %rax
	addq	$84, %rax
	movl	$-7, %ebp
	jmp	.LBB17_6
.LBB17_9:                               # %if.then.i
	leaq	8(%rsp), %rdi
	callq	check_type_failed
	movl	%eax, %ebp
	jmp	.LBB17_12
.LBB17_5:                               # %do.end.i
	movq	$dict_param_write, 32(%rbx)
	movq	$dict_param_enumerate, 64(%rbx)
	movl	$ref_write_procs, %esi
	movq	%rbx, %rdi
	movq	%r12, %rdx
	callq	gs_param_list_init
	movq	%r12, 24(%rbx)
	movw	$3584, 40(%rbx)         # imm = 0xE00
	movq	$0, 72(%rbx)
	movq	%rbx, %rax
	addq	$84, %rax
	movl	$0, 84(%rbx)
	movups	8(%rsp), %xmm0
	movups	%xmm0, 88(%rbx)
	xorl	%ebp, %ebp
.LBB17_6:                               # %dict_param_list_write.exit
	cmpl	$1, %r13d
	sete	%cl
	movzbl	%cl, %ecx
	movl	%ecx, (%rax)
.LBB17_12:                              # %if.end.17
	testl	%ebp, %ebp
	js	.LBB17_13
# BB#14:                                # %if.else.24
	movq	%rbx, (%r14)
	jmp	.LBB17_15
.LBB17_13:                              # %if.then.20
	movq	8(%r15), %rdi
	movl	$.L.str.3, %edx
	movq	%rbx, %rsi
	callq	*24(%rdi)
.LBB17_15:                              # %cleanup
	movl	%ebp, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end17:
	.size	ref_param_begin_write_collection, .Lfunc_end17-ref_param_begin_write_collection
	.cfi_endproc

	.align	16, 0x90
	.type	ref_param_end_write_collection,@function
ref_param_end_write_collection:         # @ref_param_end_write_collection
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp152:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp153:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp154:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp155:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp156:
	.cfi_def_cfa_offset 48
	subq	$32, %rsp
.Ltmp157:
	.cfi_def_cfa_offset 80
.Ltmp158:
	.cfi_offset %rbx, -48
.Ltmp159:
	.cfi_offset %r12, -40
.Ltmp160:
	.cfi_offset %r14, -32
.Ltmp161:
	.cfi_offset %r15, -24
.Ltmp162:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movq	%rsi, %r12
	movq	%rdi, %rbx
	movq	(%r14), %r15
	callq	ref_param_requested
	xorl	%ebp, %ebp
	testl	%eax, %eax
	je	.LBB18_7
# BB#1:                                 # %if.end.i
	cmpl	$0, 84(%rbx)
	je	.LBB18_4
# BB#2:                                 # %if.then.i
	leaq	24(%rsp), %rdx
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	__isoc99_sscanf
	movl	$-15, %ebp
	cmpl	$1, %eax
	jne	.LBB18_5
# BB#3:                                 # %if.end.i.10
	movq	24(%rsp), %rax
	movq	%rax, 16(%rsp)
	movw	$2816, 8(%rsp)          # imm = 0xB00
	xorl	%ebp, %ebp
	jmp	.LBB18_5
.LBB18_4:                               # %if.else.i
	movq	8(%rbx), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rbp
	movq	%r12, %rdi
	callq	strlen
	leaq	8(%rsp), %rcx
	xorl	%r8d, %r8d
	movq	%rbp, %rdi
	movq	%r12, %rsi
	movl	%eax, %edx
	callq	names_ref
	movl	%eax, %ebp
.LBB18_5:                               # %ref_param_key.exit
	testl	%ebp, %ebp
	js	.LBB18_7
# BB#6:                                 # %if.end.3.i
	addq	$88, %r15
	leaq	8(%rsp), %rsi
	movq	%rbx, %rdi
	movq	%r15, %rdx
	callq	*32(%rbx)
	movl	%eax, %ebp
.LBB18_7:                               # %ref_param_write.exit
	movq	8(%rbx), %rdi
	movq	(%r14), %rsi
	movl	$.L.str.4, %edx
	callq	*24(%rdi)
	movq	$0, (%r14)
	movl	%ebp, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end18:
	.size	ref_param_end_write_collection, .Lfunc_end18-ref_param_end_write_collection
	.cfi_endproc

	.align	16, 0x90
	.type	ref_param_get_next_key,@function
ref_param_get_next_key:                 # @ref_param_get_next_key
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp163:
	.cfi_def_cfa_offset 16
	leaq	4(%rsp), %rcx
	callq	*64(%rdi)
	popq	%rdx
	retq
.Lfunc_end19:
	.size	ref_param_get_next_key, .Lfunc_end19-ref_param_get_next_key
	.cfi_endproc

	.align	16, 0x90
	.type	ref_param_requested,@function
ref_param_requested:                    # @ref_param_requested
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp164:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp165:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp166:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp167:
	.cfi_def_cfa_offset 40
	subq	$40, %rsp
.Ltmp168:
	.cfi_def_cfa_offset 80
.Ltmp169:
	.cfi_offset %rbx, -40
.Ltmp170:
	.cfi_offset %r14, -32
.Ltmp171:
	.cfi_offset %r15, -24
.Ltmp172:
	.cfi_offset %rbp, -16
	movq	%rsi, %rbp
	movq	%rdi, %rbx
	movl	$-1, %r14d
	movzbl	41(%rbx), %eax
	cmpl	$2, %eax
	jne	.LBB20_7
# BB#1:                                 # %if.end
	cmpl	$0, 84(%rbx)
	je	.LBB20_4
# BB#2:                                 # %if.then.i
	leaq	32(%rsp), %rdx
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	callq	__isoc99_sscanf
	movl	%eax, %ecx
	movl	$-15, %eax
	cmpl	$1, %ecx
	jne	.LBB20_5
# BB#3:                                 # %if.end.i
	movq	32(%rsp), %rax
	movq	%rax, 24(%rsp)
	movw	$2816, 16(%rsp)         # imm = 0xB00
	xorl	%eax, %eax
	jmp	.LBB20_5
.LBB20_4:                               # %if.else.i
	movq	8(%rbx), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %r15
	movq	%rbp, %rdi
	callq	strlen
	leaq	16(%rsp), %rcx
	xorl	%r8d, %r8d
	movq	%r15, %rdi
	movq	%rbp, %rsi
	movl	%eax, %edx
	callq	names_ref
.LBB20_5:                               # %ref_param_key.exit
	testl	%eax, %eax
	js	.LBB20_7
# BB#6:                                 # %if.end.5
	addq	$40, %rbx
	leaq	16(%rsp), %rsi
	leaq	8(%rsp), %rdx
	movq	%rbx, %rdi
	callq	dict_find
	testl	%eax, %eax
	setg	%al
	movzbl	%al, %r14d
.LBB20_7:                               # %cleanup
	movl	%r14d, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end20:
	.size	ref_param_requested, .Lfunc_end20-ref_param_requested
	.cfi_endproc

	.align	16, 0x90
	.type	array_new_indexed_param_write,@function
array_new_indexed_param_write:          # @array_new_indexed_param_write
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp173:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp174:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp175:
	.cfi_def_cfa_offset 32
.Ltmp176:
	.cfi_offset %rbx, -24
.Ltmp177:
	.cfi_offset %r14, -16
	movl	$-20, %eax
	movzbl	1(%rsi), %ecx
	cmpl	$11, %ecx
	jne	.LBB21_4
# BB#1:                                 # %if.end.9
	movq	8(%rsi), %rbx
	movl	92(%rdi), %ecx
	movl	$-15, %eax
	cmpq	%rcx, %rbx
	jae	.LBB21_4
# BB#2:                                 # %do.end
	movzwl	(%rdx), %ecx
	andl	$12, %ecx
	movzwl	88(%rdi), %esi
	andl	$12, %esi
	movl	$-7, %eax
	cmpl	%esi, %ecx
	ja	.LBB21_4
# BB#3:                                 # %if.end.26
	movq	96(%rdi), %r14
	shlq	$4, %rbx
	movups	(%rdx), %xmm0
	movups	%xmm0, (%r14,%rbx)
	movq	24(%rdi), %rdi
	callq	imemory_new_mask
	movzwl	(%r14,%rbx), %ecx
	orl	%eax, %ecx
	movw	%cx, (%r14,%rbx)
	xorl	%eax, %eax
.LBB21_4:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end21:
	.size	array_new_indexed_param_write, .Lfunc_end21-array_new_indexed_param_write
	.cfi_endproc

	.align	16, 0x90
	.type	ref_to_key,@function
ref_to_key:                             # @ref_to_key
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp178:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp179:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp180:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp181:
	.cfi_def_cfa_offset 40
	subq	$24, %rsp
.Ltmp182:
	.cfi_def_cfa_offset 64
.Ltmp183:
	.cfi_offset %rbx, -40
.Ltmp184:
	.cfi_offset %r14, -32
.Ltmp185:
	.cfi_offset %r15, -24
.Ltmp186:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rax
	movzbl	1(%rax), %ecx
	cmpl	$11, %ecx
	jne	.LBB22_1
# BB#3:                                 # %if.then.9
	movq	8(%rax), %rdx
	xorl	%ebp, %ebp
	leaq	(%rsp), %rbx
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	gs_sprintf
	movq	%rbx, %rdi
	callq	strlen
	movq	%rax, %rbx
	movq	8(%r14), %rdi
	movl	$.L.str.5, %edx
	movl	%ebx, %esi
	callq	*136(%rdi)
	testq	%rax, %rax
	je	.LBB22_5
# BB#4:                                 # %if.end
	movq	%rax, (%r15)
	movl	%ebx, 8(%r15)
	movl	$1, 12(%r15)
	jmp	.LBB22_6
.LBB22_1:                               # %entry
	movl	$-20, %ebp
	movzbl	%cl, %ecx
	cmpl	$13, %ecx
	jne	.LBB22_6
# BB#2:                                 # %if.then
	movq	8(%r14), %rcx
	movq	192(%rcx), %rcx
	movq	120(%rcx), %rdi
	leaq	(%rsp), %rdx
	movq	%rax, %rsi
	callq	names_string_ref
	movq	8(%rsp), %rax
	movq	%rax, (%r15)
	movl	4(%rsp), %eax
	movl	%eax, 8(%r15)
	movl	$0, 12(%r15)
	xorl	%ebp, %ebp
	jmp	.LBB22_6
.LBB22_5:                               # %cleanup
	movl	$-25, %ebp
.LBB22_6:                               # %return
	movl	%ebp, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end22:
	.size	ref_to_key, .Lfunc_end22-ref_to_key
	.cfi_endproc

	.align	16, 0x90
	.type	ref_param_read_typed,@function
ref_param_read_typed:                   # @ref_param_read_typed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp187:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp188:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp189:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp190:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp191:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp192:
	.cfi_def_cfa_offset 56
	subq	$120, %rsp
.Ltmp193:
	.cfi_def_cfa_offset 176
.Ltmp194:
	.cfi_offset %rbx, -56
.Ltmp195:
	.cfi_offset %r12, -48
.Ltmp196:
	.cfi_offset %r13, -40
.Ltmp197:
	.cfi_offset %r14, -32
.Ltmp198:
	.cfi_offset %r15, -24
.Ltmp199:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	cmpl	$0, 84(%rbx)
	je	.LBB23_3
# BB#1:                                 # %if.then.i.i
	leaq	80(%rsp), %rdx
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	movq	%r15, %rdi
	callq	__isoc99_sscanf
	movl	$-15, %ebp
	cmpl	$1, %eax
	jne	.LBB23_4
# BB#2:                                 # %if.end.i.i
	movq	80(%rsp), %rax
	movq	%rax, 104(%rsp)
	movw	$2816, 96(%rsp)         # imm = 0xB00
	xorl	%ebp, %ebp
	jmp	.LBB23_4
.LBB23_3:                               # %if.else.i.i
	movq	8(%rbx), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rbp
	movq	%r15, %rdi
	callq	strlen
	leaq	96(%rsp), %rcx
	xorl	%r8d, %r8d
	movq	%rbp, %rdi
	movq	%r15, %rsi
	movl	%eax, %edx
	callq	names_ref
	movl	%eax, %ebp
.LBB23_4:                               # %ref_param_key.exit.i
	testl	%ebp, %ebp
	js	.LBB23_68
# BB#5:                                 # %ref_param_read.exit
	leaq	96(%rsp), %rsi
	leaq	32(%rsp), %rdx
	movq	%rbx, %rdi
	callq	*32(%rbx)
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jne	.LBB23_68
# BB#6:                                 # %if.end
	movq	32(%rsp), %rsi
	movzbl	1(%rsi), %eax
	movl	$-20, %ebp
	decl	%eax
	cmpl	$17, %eax
	ja	.LBB23_68
# BB#7:                                 # %if.end
	jmpq	*.LJTI23_0(,%rax,8)
.LBB23_8:                               # %sw.bb
	testb	$32, (%rsi)
	jne	.LBB23_11
# BB#9:                                 # %if.then.6
	movq	40(%rsp), %rax
.LBB23_10:                              # %cleanup
	movl	$-7, (%rax)
	movl	$-7, %ebp
	jmp	.LBB23_68
.LBB23_65:                              # %sw.bb.88
	movl	$5, 16(%r14)
	jmp	.LBB23_66
.LBB23_11:                              # %if.end.7
	cmpl	$0, 4(%rsi)
	je	.LBB23_12
# BB#13:                                # %if.end.15
	movq	8(%rbx), %rdi
	leaq	16(%rsp), %rcx
	xorl	%edx, %edx
	callq	array_get
	movzbl	17(%rsp), %eax
	addl	$-11, %eax
	cmpl	$7, %eax
	ja	.LBB23_68
# BB#14:                                # %if.end.15
	jmpq	*.LJTI23_1(,%rax,8)
.LBB23_16:                              # %sw.bb.22
	movl	$7, 16(%r14)
	cmpl	$0, 84(%rbx)
	je	.LBB23_19
# BB#17:                                # %if.then.i.i.i
	leaq	64(%rsp), %rdx
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	movq	%r15, %rdi
	callq	__isoc99_sscanf
	movl	$-15, %ebp
	cmpl	$1, %eax
	jne	.LBB23_20
# BB#18:                                # %if.end.i.i.i
	movq	64(%rsp), %rax
	movq	%rax, 104(%rsp)
	movw	$2816, 96(%rsp)         # imm = 0xB00
	xorl	%ebp, %ebp
	jmp	.LBB23_20
.LBB23_55:                              # %sw.bb.43
	movl	$1, 16(%r14)
	movzwl	8(%rsi), %eax
	movl	%eax, (%r14)
	xorl	%ebp, %ebp
	jmp	.LBB23_68
.LBB23_56:                              # %sw.bb.49
	xorl	%ecx, %ecx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	ref_param_begin_read_collection
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB23_68
# BB#57:                                # %if.end.56
	movl	$11, 16(%r14)
	leaq	80(%rsp), %rbp
	movq	%rbp, %rdi
	callq	param_init_enumerator
	movq	(%r14), %rdi
	leaq	96(%rsp), %rdx
	leaq	64(%rsp), %rcx
	movq	%rbp, %rsi
	callq	*64(%rbx)
	testl	%eax, %eax
	jne	.LBB23_60
# BB#58:                                # %if.end.56
	cmpl	$11, 64(%rsp)
	jne	.LBB23_60
# BB#59:                                # %if.then.65
	movq	(%r14), %rax
	movl	$1, 84(%rax)
	movl	$12, 16(%r14)
.LBB23_60:                              # %if.end.70
	xorl	%ebp, %ebp
	jmp	.LBB23_68
.LBB23_61:                              # %sw.bb.71
	movl	$3, 16(%r14)
	movq	8(%rsi), %rax
	movq	%rax, (%r14)
	xorl	%ebp, %ebp
	jmp	.LBB23_68
.LBB23_62:                              # %sw.bb.76
	movl	$6, 16(%r14)
.LBB23_66:                              # %cleanup
	movq	8(%rbx), %rdi
	leaq	32(%rsp), %rsi
	movq	%r14, %rdx
	callq	ref_param_read_string_value
.LBB23_67:                              # %cleanup
	movl	%eax, %ebp
	jmp	.LBB23_68
.LBB23_63:                              # %sw.bb.81
	movl	$0, 16(%r14)
	xorl	%ebp, %ebp
	jmp	.LBB23_68
.LBB23_64:                              # %sw.bb.83
	movl	8(%rsi), %eax
	movl	%eax, (%r14)
	movl	$4, 16(%r14)
	xorl	%ebp, %ebp
	jmp	.LBB23_68
.LBB23_12:                              # %if.then.12
	movl	$13, 16(%r14)
	movq	$0, (%r14)
	movl	$0, 8(%r14)
	xorl	%ebp, %ebp
.LBB23_68:                              # %cleanup
	movl	%ebp, %eax
	addq	$120, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB23_54:                              # %sw.bb.39
	movl	$10, 16(%r14)
	jmp	.LBB23_53
.LBB23_15:                              # %if.end.15.sw.bb.31_crit_edge
	leaq	16(%r14), %rax
	jmp	.LBB23_35
.LBB23_52:                              # %sw.bb.35
	movl	$9, 16(%r14)
.LBB23_53:                              # %cleanup
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	ref_param_read_string_array
	jmp	.LBB23_67
.LBB23_19:                              # %if.else.i.i.i
	movq	8(%rbx), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rbp
	movq	%r15, %rdi
	callq	strlen
	leaq	96(%rsp), %rcx
	xorl	%r8d, %r8d
	movq	%rbp, %rdi
	movq	%r15, %rsi
	movl	%eax, %edx
	callq	names_ref
	movl	%eax, %ebp
.LBB23_20:                              # %ref_param_key.exit.i.i
	testl	%ebp, %ebp
	js	.LBB23_33
# BB#21:                                # %ref_param_read.exit.i
	leaq	96(%rsp), %rsi
	leaq	80(%rsp), %rdx
	movq	%rbx, %rdi
	callq	*32(%rbx)
	movl	%eax, %ebp
	testl	%ebp, %ebp
	je	.LBB23_22
.LBB23_33:                              # %ref_param_read_int_array.exit
	cmpl	$-20, %ebp
	jne	.LBB23_68
	jmp	.LBB23_34
.LBB23_22:                              # %if.end.i.i.52
	movq	80(%rsp), %rax
	movzwl	(%rax), %ecx
	movl	%ecx, %edx
	andl	$15360, %edx            # imm = 0x3C00
	cmpl	$1024, %edx             # imm = 0x400
	jne	.LBB23_23
# BB#24:                                # %if.end.4.i.i
	testb	$32, %cl
	je	.LBB23_25
# BB#26:                                # %if.end.i.54
	movl	4(%rax), %r12d
	movq	8(%rbx), %rdi
	movl	$4, %edx
	movl	$.L.str.7, %ecx
	movl	%r12d, %esi
	callq	*88(%rdi)
	movq	%rax, %r13
	movl	$-25, %ebp
	testq	%r13, %r13
	je	.LBB23_68
# BB#27:                                # %for.cond.preheader.i
	testl	%r12d, %r12d
	je	.LBB23_31
# BB#28:                                # %for.body.lr.ph.i
	xorl	%ebp, %ebp
.LBB23_29:                              # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	8(%rbx), %rdi
	movq	80(%rsp), %rsi
	movq	%rbp, %rdx
	leaq	96(%rsp), %rcx
	callq	array_get
	movzbl	97(%rsp), %eax
	cmpl	$11, %eax
	jne	.LBB23_69
# BB#30:                                # %for.inc.i
                                        #   in Loop: Header=BB23_29 Depth=1
	movl	104(%rsp), %eax
	movl	%eax, (%r13,%rbp,4)
	incq	%rbp
	cmpq	%r12, %rbp
	jl	.LBB23_29
.LBB23_31:                              # %if.end.26.i
	movq	%r13, (%r14)
	movl	%r12d, 8(%r14)
	jmp	.LBB23_32
.LBB23_69:                              # %if.then.22.i
	movq	8(%rbx), %rdi
	movl	$.L.str.7, %edx
	movq	%r13, %rsi
	callq	*24(%rdi)
.LBB23_23:                              # %if.then.3.i.i
	movq	88(%rsp), %rax
	movl	$-20, (%rax)
.LBB23_34:                              # %if.end.29
	leaq	16(%r14), %rax
	movq	40(%rsp), %rcx
	movl	$0, (%rcx)
.LBB23_35:                              # %sw.bb.31
	movl	$8, (%rax)
	cmpl	$0, 84(%rbx)
	je	.LBB23_38
# BB#36:                                # %if.then.i.i.i.64
	leaq	112(%rsp), %rdx
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	movq	%r15, %rdi
	callq	__isoc99_sscanf
	movl	$-15, %ebp
	cmpl	$1, %eax
	jne	.LBB23_39
# BB#37:                                # %if.end.i.i.i.67
	movq	112(%rsp), %rax
	movq	%rax, 104(%rsp)
	movw	$2816, 96(%rsp)         # imm = 0xB00
	xorl	%ebp, %ebp
	jmp	.LBB23_39
.LBB23_38:                              # %if.else.i.i.i.75
	movq	8(%rbx), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rbp
	movq	%r15, %rdi
	callq	strlen
	leaq	96(%rsp), %rcx
	xorl	%r8d, %r8d
	movq	%rbp, %rdi
	movq	%r15, %rsi
	movl	%eax, %edx
	callq	names_ref
	movl	%eax, %ebp
.LBB23_39:                              # %ref_param_key.exit.i.i.77
	testl	%ebp, %ebp
	js	.LBB23_68
# BB#40:                                # %ref_param_read.exit.i.83
	leaq	96(%rsp), %rsi
	leaq	80(%rsp), %rdx
	movq	%rbx, %rdi
	callq	*32(%rbx)
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jne	.LBB23_68
# BB#41:                                # %if.end.i.i.89
	movq	80(%rsp), %rax
	movzwl	(%rax), %ecx
	movl	%ecx, %edx
	andl	$15360, %edx            # imm = 0x3C00
	cmpl	$1024, %edx             # imm = 0x400
	jne	.LBB23_42
# BB#43:                                # %if.end.4.i.i.94
	testb	$32, %cl
	jne	.LBB23_44
.LBB23_25:                              # %if.then.10.i.i
	movq	88(%rsp), %rax
	jmp	.LBB23_10
.LBB23_42:                              # %if.then.3.i.i.91
	movq	88(%rsp), %rax
	movl	$-20, (%rax)
	movl	$-20, %ebp
	jmp	.LBB23_68
.LBB23_44:                              # %if.end.i.102
	movl	4(%rax), %r12d
	movq	8(%rbx), %rdi
	movl	$4, %edx
	movl	$.L.str.8, %ecx
	movl	%r12d, %esi
	callq	*88(%rdi)
	movq	%rax, (%rsp)            # 8-byte Spill
	movl	$-25, %ebp
	testq	%rax, %rax
	je	.LBB23_68
# BB#45:                                # %if.end.6.i
	movq	80(%rsp), %rax
	movups	(%rax), %xmm0
	movaps	%xmm0, 64(%rsp)
	leaq	48(%rsp), %rax
	movq	%rax, 80(%rsp)
	movl	$1, %r15d
	testl	%r12d, %r12d
	movq	%r12, 8(%rsp)           # 8-byte Spill
	je	.LBB23_51
# BB#46:
	leaq	48(%rsp), %r12
	movq	(%rsp), %r13            # 8-byte Reload
.LBB23_47:                              # %for.body.i.105
                                        # =>This Inner Loop Header: Depth=1
	movq	8(%rbx), %rdi
	leaq	-1(%r15), %rdx
	leaq	64(%rsp), %rsi
	movq	%r12, %rcx
	callq	array_get
	movq	%r12, %rdi
	movq	%r13, %rsi
	callq	float_param
	movl	%eax, %ebp
	cmpq	8(%rsp), %r15           # 8-byte Folded Reload
	jge	.LBB23_49
# BB#48:                                # %for.body.i.105
                                        #   in Loop: Header=BB23_47 Depth=1
	incq	%r15
	addq	$4, %r13
	testl	%ebp, %ebp
	jns	.LBB23_47
.LBB23_49:                              # %for.end.i
	testl	%ebp, %ebp
	js	.LBB23_50
.LBB23_51:                              # %if.end.21.i
	movq	(%rsp), %rax            # 8-byte Reload
	movq	%rax, (%r14)
	movq	8(%rsp), %rax           # 8-byte Reload
	movl	%eax, 8(%r14)
.LBB23_32:                              # %cleanup
	movl	$1, 12(%r14)
	xorl	%ebp, %ebp
	jmp	.LBB23_68
.LBB23_50:                              # %if.then.17.i
	movq	8(%rbx), %rdi
	movl	$.L.str.9, %edx
	movq	(%rsp), %rsi            # 8-byte Reload
	callq	*24(%rdi)
	movq	88(%rsp), %rax
	movl	%ebp, (%rax)
	jmp	.LBB23_68
.Lfunc_end23:
	.size	ref_param_read_typed, .Lfunc_end23-ref_param_read_typed
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI23_0:
	.quad	.LBB23_55
	.quad	.LBB23_56
	.quad	.LBB23_68
	.quad	.LBB23_8
	.quad	.LBB23_8
	.quad	.LBB23_8
	.quad	.LBB23_68
	.quad	.LBB23_68
	.quad	.LBB23_65
	.quad	.LBB23_68
	.quad	.LBB23_61
	.quad	.LBB23_68
	.quad	.LBB23_62
	.quad	.LBB23_63
	.quad	.LBB23_68
	.quad	.LBB23_64
	.quad	.LBB23_68
	.quad	.LBB23_65
.LJTI23_1:
	.quad	.LBB23_16
	.quad	.LBB23_68
	.quad	.LBB23_54
	.quad	.LBB23_68
	.quad	.LBB23_68
	.quad	.LBB23_15
	.quad	.LBB23_68
	.quad	.LBB23_52

	.text
	.align	16, 0x90
	.type	ref_param_begin_read_collection,@function
ref_param_begin_read_collection:        # @ref_param_begin_read_collection
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp200:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp201:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp202:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp203:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp204:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp205:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp206:
	.cfi_def_cfa_offset 96
.Ltmp207:
	.cfi_offset %rbx, -56
.Ltmp208:
	.cfi_offset %r12, -48
.Ltmp209:
	.cfi_offset %r13, -40
.Ltmp210:
	.cfi_offset %r14, -32
.Ltmp211:
	.cfi_offset %r15, -24
.Ltmp212:
	.cfi_offset %rbp, -16
	movl	%ecx, %r12d
	movq	%rdx, %r14
	movq	%rsi, %rbp
	movq	%rdi, %rbx
	testl	%r12d, %r12d
	setne	%r13b
	cmpl	$0, 84(%rbx)
	je	.LBB24_3
# BB#1:                                 # %if.then.i.i
	leaq	32(%rsp), %rdx
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	callq	__isoc99_sscanf
	movl	$-15, %ebp
	cmpl	$1, %eax
	jne	.LBB24_4
# BB#2:                                 # %if.end.i.i
	movq	32(%rsp), %rax
	movq	%rax, 24(%rsp)
	movw	$2816, 16(%rsp)         # imm = 0xB00
	xorl	%ebp, %ebp
	jmp	.LBB24_4
.LBB24_3:                               # %if.else.i.i
	movq	8(%rbx), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %r15
	movq	%rbp, %rdi
	callq	strlen
	leaq	16(%rsp), %rcx
	xorl	%r8d, %r8d
	movq	%r15, %rdi
	movq	%rbp, %rsi
	movl	%eax, %edx
	callq	names_ref
	movl	%eax, %ebp
.LBB24_4:                               # %ref_param_key.exit.i
	testl	%ebp, %ebp
	js	.LBB24_15
# BB#5:                                 # %ref_param_read.exit
	leaq	16(%rsp), %rsi
	leaq	(%rsp), %rdx
	movq	%rbx, %rdi
	callq	*32(%rbx)
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jne	.LBB24_15
# BB#6:                                 # %if.end
	movq	8(%rbx), %rdi
	movl	$104, %esi
	movl	$.L.str.11, %edx
	callq	*64(%rdi)
	movq	%rax, %r15
	movl	$-25, %ebp
	testq	%r15, %r15
	je	.LBB24_15
# BB#7:                                 # %if.end.8
	movq	(%rsp), %rsi
	movzbl	1(%rsi), %eax
	cmpl	$2, %eax
	jne	.LBB24_10
# BB#8:                                 # %if.then.13
	movzbl	%r13b, %r12d
	movq	24(%rbx), %r8
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movq	%r15, %rdi
	callq	dict_param_list_read
	movl	%eax, %ebp
	movl	%r12d, 84(%r15)
	testl	%ebp, %ebp
	js	.LBB24_16
# BB#9:                                 # %if.then.19
	movq	(%rsp), %rdi
	callq	dict_length
	jmp	.LBB24_14
.LBB24_10:                              # %if.else
	movl	$-20, %ebp
	testl	%r12d, %r12d
	je	.LBB24_16
# BB#11:                                # %land.lhs.true
	movzwl	(%rsi), %eax
	andl	$15360, %eax            # imm = 0x3C00
	cmpl	$1024, %eax             # imm = 0x400
	jne	.LBB24_16
# BB#12:                                # %if.then.29
	movq	24(%rbx), %r8
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movq	%r15, %rdi
	callq	array_indexed_param_list_read
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB24_16
# BB#13:                                # %if.then.35
	movq	(%rsp), %rax
	movl	4(%rax), %eax
.LBB24_14:                              # %if.end.49
	movl	%eax, 8(%r14)
	movq	%r15, (%r14)
	xorl	%ebp, %ebp
	jmp	.LBB24_15
.LBB24_16:                              # %if.then.45
	movq	8(%rbx), %rdi
	movl	$.L.str.3, %edx
	movq	%r15, %rsi
	callq	*24(%rdi)
	movq	8(%rsp), %rax
	movl	%ebp, (%rax)
.LBB24_15:                              # %cleanup
	movl	%ebp, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end24:
	.size	ref_param_begin_read_collection, .Lfunc_end24-ref_param_begin_read_collection
	.cfi_endproc

	.align	16, 0x90
	.type	ref_param_end_read_collection,@function
ref_param_end_read_collection:          # @ref_param_end_read_collection
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp213:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp214:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp215:
	.cfi_def_cfa_offset 32
.Ltmp216:
	.cfi_offset %rbx, -24
.Ltmp217:
	.cfi_offset %r14, -16
	movq	%rdx, %rbx
	movq	%rdi, %r14
	movq	(%rbx), %rax
	movq	8(%rax), %rdi
	movq	72(%rax), %rsi
	movl	$.L.str.12, %edx
	callq	*24(%rdi)
	movq	8(%r14), %rdi
	movq	(%rbx), %rsi
	movl	$.L.str.13, %edx
	callq	*24(%rdi)
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end25:
	.size	ref_param_end_read_collection, .Lfunc_end25-ref_param_end_read_collection
	.cfi_endproc

	.align	16, 0x90
	.type	ref_param_read_get_policy,@function
ref_param_read_get_policy:              # @ref_param_read_get_policy
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp218:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp219:
	.cfi_def_cfa_offset 32
.Ltmp220:
	.cfi_offset %rbx, -16
	movl	$1, %ebx
	movzbl	41(%rdi), %eax
	cmpl	$2, %eax
	jne	.LBB26_4
# BB#1:                                 # %land.lhs.true
	addq	$40, %rdi
	leaq	8(%rsp), %rdx
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB26_4
# BB#2:                                 # %land.lhs.true.7
	movq	8(%rsp), %rax
	movzbl	1(%rax), %ecx
	cmpl	$11, %ecx
	jne	.LBB26_4
# BB#3:                                 # %if.end
	movl	8(%rax), %ebx
.LBB26_4:                               # %cleanup
	movl	%ebx, %eax
	addq	$16, %rsp
	popq	%rbx
	retq
.Lfunc_end26:
	.size	ref_param_read_get_policy, .Lfunc_end26-ref_param_read_get_policy
	.cfi_endproc

	.align	16, 0x90
	.type	ref_param_read_signal_error,@function
ref_param_read_signal_error:            # @ref_param_read_signal_error
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp221:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp222:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp223:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp224:
	.cfi_def_cfa_offset 40
	subq	$40, %rsp
.Ltmp225:
	.cfi_def_cfa_offset 80
.Ltmp226:
	.cfi_offset %rbx, -40
.Ltmp227:
	.cfi_offset %r14, -32
.Ltmp228:
	.cfi_offset %r15, -24
.Ltmp229:
	.cfi_offset %rbp, -16
	movl	%edx, %r14d
	movq	%rsi, %rbx
	movq	%rdi, %rbp
	cmpl	$0, 84(%rbp)
	je	.LBB27_3
# BB#1:                                 # %if.then.i.i
	leaq	32(%rsp), %rdx
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	__isoc99_sscanf
	movl	%eax, %ecx
	movl	$-15, %eax
	cmpl	$1, %ecx
	jne	.LBB27_4
# BB#2:                                 # %if.end.i.i
	movq	32(%rsp), %rax
	movq	%rax, 24(%rsp)
	movw	$2816, 16(%rsp)         # imm = 0xB00
	xorl	%eax, %eax
	jmp	.LBB27_4
.LBB27_3:                               # %if.else.i.i
	movq	8(%rbp), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %r15
	movq	%rbx, %rdi
	callq	strlen
	leaq	16(%rsp), %rcx
	xorl	%r8d, %r8d
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movl	%eax, %edx
	callq	names_ref
.LBB27_4:                               # %ref_param_key.exit.i
	testl	%eax, %eax
	js	.LBB27_6
# BB#5:                                 # %if.end.i
	leaq	16(%rsp), %rsi
	leaq	(%rsp), %rdx
	movq	%rbp, %rdi
	callq	*32(%rbp)
.LBB27_6:                               # %ref_param_read.exit
	movq	8(%rsp), %rax
	movl	%r14d, (%rax)
	movzbl	41(%rbp), %eax
	cmpl	$2, %eax
	jne	.LBB27_9
# BB#7:                                 # %land.lhs.true.i
	addq	$40, %rbp
	leaq	16(%rsp), %rdx
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB27_9
# BB#8:                                 # %land.lhs.true.7.i
	movq	16(%rsp), %rax
	movzbl	1(%rax), %ecx
	cmpl	$11, %ecx
	jne	.LBB27_9
# BB#10:                                # %ref_param_read_get_policy.exit
	movl	8(%rax), %ecx
	xorl	%eax, %eax
	cmpl	$1, %ecx
	je	.LBB27_14
# BB#11:                                # %ref_param_read_get_policy.exit
	cmpl	$2, %ecx
	jne	.LBB27_13
# BB#12:                                # %sw.bb.2
	movl	$-26, %eax
	jmp	.LBB27_14
.LBB27_9:                               # %ref_param_read_get_policy.exit.thread
	xorl	%eax, %eax
.LBB27_14:                              # %cleanup
	addq	$40, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB27_13:                              # %sw.default
	movl	%r14d, %eax
	jmp	.LBB27_14
.Lfunc_end27:
	.size	ref_param_read_signal_error, .Lfunc_end27-ref_param_read_signal_error
	.cfi_endproc

	.align	16, 0x90
	.type	ref_param_read_commit,@function
ref_param_read_commit:                  # @ref_param_read_commit
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	cmpl	$0, 56(%rdi)
	je	.LBB28_6
# BB#1:                                 # %for.cond.preheader
	movl	80(%rdi), %ecx
	testl	%ecx, %ecx
	je	.LBB28_6
# BB#2:                                 # %for.body.lr.ph
	movq	72(%rdi), %rdx
	xorl	%esi, %esi
	xorl	%eax, %eax
	.align	16, 0x90
.LBB28_3:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, (%rdx,%rsi,4)
	jne	.LBB28_5
# BB#4:                                 # %if.then.2
                                        #   in Loop: Header=BB28_3 Depth=1
	movl	$-21, (%rdx,%rsi,4)
	movl	80(%rdi), %ecx
	movl	$-21, %eax
.LBB28_5:                               # %for.inc
                                        #   in Loop: Header=BB28_3 Depth=1
	incq	%rsi
	cmpl	%ecx, %esi
	jb	.LBB28_3
.LBB28_6:                               # %cleanup
	retq
.Lfunc_end28:
	.size	ref_param_read_commit, .Lfunc_end28-ref_param_read_commit
	.cfi_endproc

	.align	16, 0x90
	.type	ref_param_read_string_array,@function
ref_param_read_string_array:            # @ref_param_read_string_array
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp230:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp231:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp232:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp233:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp234:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp235:
	.cfi_def_cfa_offset 56
	subq	$72, %rsp
.Ltmp236:
	.cfi_def_cfa_offset 128
.Ltmp237:
	.cfi_offset %rbx, -56
.Ltmp238:
	.cfi_offset %r12, -48
.Ltmp239:
	.cfi_offset %r13, -40
.Ltmp240:
	.cfi_offset %r14, -32
.Ltmp241:
	.cfi_offset %r15, -24
.Ltmp242:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movq	%rdi, %r12
	cmpl	$0, 84(%r12)
	je	.LBB29_3
# BB#1:                                 # %if.then.i.i
	leaq	64(%rsp), %rdx
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	__isoc99_sscanf
	movl	$-15, %ebp
	cmpl	$1, %eax
	jne	.LBB29_4
# BB#2:                                 # %if.end.i.i
	movq	64(%rsp), %rax
	movq	%rax, 56(%rsp)
	movw	$2816, 48(%rsp)         # imm = 0xB00
	xorl	%ebp, %ebp
	jmp	.LBB29_4
.LBB29_3:                               # %if.else.i.i
	movq	8(%r12), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rbp
	movq	%rbx, %rdi
	callq	strlen
	leaq	48(%rsp), %rcx
	xorl	%r8d, %r8d
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	movl	%eax, %edx
	callq	names_ref
	movl	%eax, %ebp
.LBB29_4:                               # %ref_param_key.exit.i
	testl	%ebp, %ebp
	js	.LBB29_23
# BB#5:                                 # %ref_param_read.exit
	leaq	48(%rsp), %r13
	leaq	32(%rsp), %rdx
	movq	%r12, %rdi
	movq	%r13, %rsi
	callq	*32(%r12)
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jne	.LBB29_23
# BB#6:                                 # %if.end.i
	movq	32(%rsp), %rax
	movzwl	(%rax), %ecx
	movl	%ecx, %edx
	andl	$15360, %edx            # imm = 0x3C00
	cmpl	$1024, %edx             # imm = 0x400
	jne	.LBB29_7
# BB#8:                                 # %if.end.4.i
	testb	$32, %cl
	jne	.LBB29_10
# BB#9:                                 # %if.then.10.i
	movq	40(%rsp), %rax
	movl	$-7, (%rax)
	movl	$-7, %ebp
	jmp	.LBB29_23
.LBB29_7:                               # %if.then.3.i
	movq	40(%rsp), %rax
	movl	$-20, (%rax)
	movl	$-20, %ebp
	jmp	.LBB29_23
.LBB29_10:                              # %if.end
	movl	4(%rax), %r15d
	movq	8(%r12), %rdi
	movl	$16, %edx
	movl	$.L.str.10, %ecx
	movl	%r15d, %esi
	callq	*88(%rdi)
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movl	$-25, %ebp
	testq	%rax, %rax
	je	.LBB29_23
# BB#11:                                # %if.end.6
	movq	32(%rsp), %rax
	movups	(%rax), %xmm0
	movaps	%xmm0, 16(%rsp)
	movzbl	17(%rsp), %eax
	cmpl	$4, %eax
	jne	.LBB29_16
# BB#12:                                # %for.cond.preheader
	testl	%r15d, %r15d
	je	.LBB29_22
# BB#13:                                # %for.body.lr.ph
	xorl	%ebx, %ebx
	movl	$1, %r13d
	.align	16, 0x90
.LBB29_14:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	24(%rsp), %rax
	addq	%rbx, %rax
	movq	%rax, 32(%rsp)
	movq	8(%r12), %rdi
	movq	8(%rsp), %rax           # 8-byte Reload
	leaq	(%rax,%rbx), %rdx
	leaq	32(%rsp), %rsi
	callq	ref_param_read_string_value
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB29_20
# BB#15:                                # %for.body
                                        #   in Loop: Header=BB29_14 Depth=1
	addq	$16, %rbx
	cmpq	%r15, %r13
	leaq	1(%r13), %r13
	jl	.LBB29_14
	jmp	.LBB29_20
.LBB29_16:                              # %if.else
	movq	%r13, 32(%rsp)
	xorl	%ebx, %ebx
	testl	%r15d, %r15d
	movl	$0, %ebp
	je	.LBB29_20
# BB#17:
	movq	8(%rsp), %r13           # 8-byte Reload
	.align	16, 0x90
.LBB29_18:                              # %for.body.30
                                        # =>This Inner Loop Header: Depth=1
	movq	8(%r12), %rdi
	leaq	16(%rsp), %rsi
	movq	%rbx, %rdx
	leaq	48(%rsp), %rcx
	callq	array_get
	movq	8(%r12), %rdi
	leaq	32(%rsp), %rsi
	movq	%r13, %rdx
	callq	ref_param_read_string_value
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB29_20
# BB#19:                                # %for.body.30
                                        #   in Loop: Header=BB29_18 Depth=1
	incq	%rbx
	addq	$16, %r13
	cmpq	%r15, %rbx
	jl	.LBB29_18
.LBB29_20:                              # %if.end.39
	testl	%ebp, %ebp
	js	.LBB29_21
.LBB29_22:                              # %if.end.46
	movq	8(%rsp), %rax           # 8-byte Reload
	movq	%rax, (%r14)
	movl	%r15d, 8(%r14)
	movl	$1, 12(%r14)
	xorl	%ebp, %ebp
	jmp	.LBB29_23
.LBB29_21:                              # %if.then.42
	movq	8(%r12), %rdi
	movl	$.L.str.10, %edx
	movq	8(%rsp), %rsi           # 8-byte Reload
	callq	*24(%rdi)
	movq	40(%rsp), %rax
	movl	%ebp, (%rax)
.LBB29_23:                              # %cleanup
	movl	%ebp, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end29:
	.size	ref_param_read_string_array, .Lfunc_end29-ref_param_read_string_array
	.cfi_endproc

	.align	16, 0x90
	.type	ref_param_read_string_value,@function
ref_param_read_string_value:            # @ref_param_read_string_value
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp243:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp244:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp245:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp246:
	.cfi_def_cfa_offset 40
	subq	$24, %rsp
.Ltmp247:
	.cfi_def_cfa_offset 64
.Ltmp248:
	.cfi_offset %rbx, -40
.Ltmp249:
	.cfi_offset %r12, -32
.Ltmp250:
	.cfi_offset %r14, -24
.Ltmp251:
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %r12
	movq	(%r15), %rbx
	movzbl	1(%rbx), %eax
	cmpl	$9, %eax
	je	.LBB30_8
# BB#1:                                 # %entry
	cmpl	$18, %eax
	jne	.LBB30_2
# BB#4:                                 # %sw.bb.3
	testb	$32, (%rbx)
	je	.LBB30_5
# BB#6:                                 # %if.end
	movq	8(%rbx), %rax
	movq	%rax, (%r14)
	movl	4(%rbx), %eax
	jmp	.LBB30_7
.LBB30_8:                               # %sw.bb.15
	testb	$32, (%rbx)
	jne	.LBB30_9
.LBB30_5:                               # %if.then
	movq	8(%r15), %rax
	movl	$-7, (%rax)
	movl	$-7, %eax
	jmp	.LBB30_12
.LBB30_2:                               # %entry
	cmpl	$13, %eax
	jne	.LBB30_11
# BB#3:                                 # %sw.bb
	movq	192(%r12), %rax
	movq	120(%rax), %rdi
	leaq	8(%rsp), %rdx
	movq	%rbx, %rsi
	callq	names_string_ref
	movq	16(%rsp), %rax
	movq	%rax, (%r14)
	movl	12(%rsp), %eax
	movl	%eax, 8(%r14)
	movl	$1, 12(%r14)
	xorl	%eax, %eax
	jmp	.LBB30_12
.LBB30_9:                               # %if.end.24
	movq	8(%rbx), %rsi
	movq	%r12, %rdi
	callq	*128(%r12)
	movl	$st_bytes, %ecx
	cmpq	%rcx, %rax
	je	.LBB30_10
.LBB30_11:                              # %sw.default
	movq	8(%r15), %rax
	movl	$-20, (%rax)
	movl	$-20, %eax
	jmp	.LBB30_12
.LBB30_10:                              # %if.end.29
	movq	8(%rbx), %rax
	movq	%rax, (%r14)
	movq	8(%rbx), %rsi
	movq	%r12, %rdi
	callq	*120(%r12)
.LBB30_7:                               # %cleanup
	movl	%eax, 8(%r14)
	movl	$0, 12(%r14)
	xorl	%eax, %eax
.LBB30_12:                              # %cleanup
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end30:
	.size	ref_param_read_string_value, .Lfunc_end30-ref_param_read_string_value
	.cfi_endproc

	.type	ref_write_procs,@object # @ref_write_procs
	.section	.rodata,"a",@progbits
	.align	8
ref_write_procs:
	.quad	ref_param_write_typed
	.quad	ref_param_begin_write_collection
	.quad	ref_param_end_write_collection
	.quad	ref_param_get_next_key
	.quad	0
	.quad	ref_param_requested
	.quad	0
	.quad	0
	.quad	0
	.size	ref_write_procs, 72

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"ref_param_write_string"
	.size	.L.str, 23

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"ref_param_write_typed_array"
	.size	.L.str.1, 28

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"%ld"
	.size	.L.str.2, 4

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"ref_param_begin_write_collection"
	.size	.L.str.3, 33

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"ref_param_end_write_collection"
	.size	.L.str.4, 31

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"ref_to_key"
	.size	.L.str.5, 11

	.type	ref_read_procs,@object  # @ref_read_procs
	.section	.rodata,"a",@progbits
	.align	8
ref_read_procs:
	.quad	ref_param_read_typed
	.quad	ref_param_begin_read_collection
	.quad	ref_param_end_read_collection
	.quad	ref_param_get_next_key
	.quad	0
	.quad	0
	.quad	ref_param_read_get_policy
	.quad	ref_param_read_signal_error
	.quad	ref_param_read_commit
	.size	ref_read_procs, 72

	.type	.L.str.6,@object        # @.str.6
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"ref_param_read_init"
	.size	.L.str.6, 20

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"ref_param_read_int_array"
	.size	.L.str.7, 25

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"ref_param_read_float_array"
	.size	.L.str.8, 27

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"ref_read_float_array_param"
	.size	.L.str.9, 27

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"ref_param_read_string_array"
	.size	.L.str.10, 28

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"ref_param_begin_read_collection"
	.size	.L.str.11, 32

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"iparam_list_release"
	.size	.L.str.12, 20

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"ref_param_end_read_collection"
	.size	.L.str.13, 30


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
