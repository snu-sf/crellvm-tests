	.text
	.file	"zfunc.bc"
	.globl	buildfunction
	.align	16, 0x90
	.type	buildfunction,@function
buildfunction:                          # @buildfunction
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp2:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp3:
	.cfi_def_cfa_offset 40
	subq	$24, %rsp
.Ltmp4:
	.cfi_def_cfa_offset 64
.Ltmp5:
	.cfi_offset %rbx, -40
.Ltmp6:
	.cfi_offset %r14, -32
.Ltmp7:
	.cfi_offset %r15, -24
.Ltmp8:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %r14
	movq	$0, (%rsp)
	cmpl	$4, %ecx
	jne	.LBB0_1
# BB#3:                                 # %sw.bb.1
	leaq	(%rsp), %rcx
	movq	%rbx, %rdi
	callq	make_type4_function
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jne	.LBB0_7
# BB#4:                                 # %if.then
	movq	(%rsp), %r15
	movq	8(%rbx), %rdi
	leaq	8(%rsp), %rsi
	movl	$192, %edx
	movl	$2, %ecx
	movl	$.L.str.8, %r8d
	callq	gs_alloc_ref_array
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB0_6
# BB#5:                                 # %make_function_proc.exit
	movq	16(%rsp), %rax
	movq	%r15, 8(%rax)
	movl	76(%rbx), %eax
	movl	56(%rbx), %ecx
	orl	%eax, %ecx
	orl	$192, %ecx
	addl	$2048, %ecx             # imm = 0x800
	movq	16(%rsp), %rdx
	movw	%cx, (%rdx)
	movq	$zexecfunction, 24(%rdx)
	orl	$128, %eax
	addl	$3840, %eax             # imm = 0xF00
	movq	16(%rsp), %rcx
	movw	%ax, 16(%rcx)
	movl	$0, 20(%rcx)
	movups	8(%rsp), %xmm0
	movups	%xmm0, (%r14)
	xorl	%ebp, %ebp
	jmp	.LBB0_7
.LBB0_1:                                # %entry
	testl	%ecx, %ecx
	movl	$0, %ebp
	jne	.LBB0_7
# BB#2:                                 # %sw.bb
	leaq	(%rsp), %rcx
	movq	%rbx, %rdi
	callq	make_sampled_function
	movl	%eax, %ebp
	jmp	.LBB0_7
.LBB0_6:                                # %if.then.5
	movq	(%rsp), %rdi
	movq	8(%rbx), %rdx
	movl	$1, %esi
	callq	*56(%rdi)
.LBB0_7:                                # %sw.epilog
	movl	%ebp, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	buildfunction, .Lfunc_end0-buildfunction
	.cfi_endproc

	.globl	zexecfunction
	.align	16, 0x90
	.type	zexecfunction,@function
zexecfunction:                          # @zexecfunction
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp9:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp10:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp11:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp12:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp13:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp14:
	.cfi_def_cfa_offset 56
	subq	$104, %rsp
.Ltmp15:
	.cfi_def_cfa_offset 160
.Ltmp16:
	.cfi_offset %rbx, -56
.Ltmp17:
	.cfi_offset %r12, -48
.Ltmp18:
	.cfi_offset %r13, -40
.Ltmp19:
	.cfi_offset %r14, -32
.Ltmp20:
	.cfi_offset %r15, -24
.Ltmp21:
	.cfi_offset %rbp, -16
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	movzwl	(%rbx), %eax
	andl	$16112, %eax            # imm = 0x3EF0
	movl	$-20, %r15d
	cmpl	$2240, %eax             # imm = 0x8C0
	jne	.LBB1_18
# BB#1:                                 # %if.end
	movq	8(%rbx), %r13
	movslq	72(%r13), %rbp
	movslq	88(%r13), %rdx
	movl	%ebp, %eax
	notl	%eax
	leal	(%rax,%rdx), %edi
	testl	%edi, %edi
	jle	.LBB1_4
# BB#2:                                 # %if.then.13
	movq	640(%r14), %rax
	subq	%rbx, %rax
	sarq	$4, %rax
	movslq	%edi, %rcx
	cmpq	%rcx, %rax
	jge	.LBB1_4
# BB#3:                                 # %if.then.22
	movl	%edi, 688(%r14)
	movl	$-16, %r15d
	jmp	.LBB1_18
.LBB1_4:                                # %if.end.26
	leal	(%rbp,%rdx), %esi
	cmpl	$20, %esi
	ja	.LBB1_6
# BB#5:                                 # %if.then.32
	movl	%edi, 4(%rsp)           # 4-byte Spill
	movq	%rdx, 8(%rsp)           # 8-byte Spill
	leaq	16(%rsp), %r12
	jmp	.LBB1_7
.LBB1_6:                                # %if.else
	movl	%edi, 4(%rsp)           # 4-byte Spill
	movq	%rdx, 8(%rsp)           # 8-byte Spill
	movq	8(%r14), %rdi
	movl	$4, %edx
	movl	$.L.str, %ecx
	callq	*88(%rdi)
	movq	%rax, %r12
	movl	$-25, %r15d
	testq	%r12, %r12
	je	.LBB1_16
.LBB1_7:                                # %lor.lhs.false.43
	leaq	-16(%rbx), %rdi
	movl	%ebp, %esi
	movq	%r12, %rdx
	callq	float_params
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB1_16
# BB#8:                                 # %lor.lhs.false.48
	leaq	(%r12,%rbp,4), %rbp
	movq	%r13, %rdi
	movq	%r12, %rsi
	movq	%rbp, %rdx
	callq	*8(%r13)
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB1_16
# BB#9:                                 # %if.else.54
	movl	4(%rsp), %ecx           # 4-byte Reload
	testl	%ecx, %ecx
	jle	.LBB1_12
# BB#10:                                # %do.body.58
	movslq	%ecx, %rax
	shlq	$4, %rax
	addq	%rax, %rbx
	cmpq	640(%r14), %rbx
	movq	8(%rsp), %rdx           # 8-byte Reload
	jbe	.LBB1_14
# BB#11:                                # %if.then.66
	movl	%ecx, 688(%r14)
	movl	$-16, %r15d
	jmp	.LBB1_18
.LBB1_12:                               # %if.else.77
	movq	8(%rsp), %rdx           # 8-byte Reload
	jns	.LBB1_15
# BB#13:                                # %if.then.80
	negl	%ecx
	movq	624(%r14), %rbx
	movslq	%ecx, %rax
	shlq	$4, %rax
	subq	%rax, %rbx
.LBB1_14:                               # %if.end.91
	movq	%rbx, 624(%r14)
.LBB1_15:                               # %if.end.91
	movq	%rdx, %rax
	shlq	$4, %rax
	subq	%rax, %rbx
	addq	$16, %rbx
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	make_floats
	movl	%eax, %r15d
.LBB1_16:                               # %if.end.97
	leaq	16(%rsp), %rax
	cmpq	%rax, %r12
	je	.LBB1_18
# BB#17:                                # %if.then.101
	movq	8(%r14), %rdi
	movl	$.L.str.1, %edx
	movq	%r12, %rsi
	callq	*24(%rdi)
.LBB1_18:                               # %cleanup.115
	movl	%r15d, %eax
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	zexecfunction, .Lfunc_end1-zexecfunction
	.cfi_endproc

	.globl	fn_build_function
	.align	16, 0x90
	.type	fn_build_function,@function
fn_build_function:                      # @fn_build_function
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp22:
	.cfi_def_cfa_offset 16
	movq	%r8, %r10
	movq	%rcx, %rax
	movl	%r9d, (%rsp)
	xorl	%ecx, %ecx
	movq	%rax, %r8
	movq	%r10, %r9
	callq	fn_build_sub_function
	popq	%rdx
	retq
.Lfunc_end2:
	.size	fn_build_function, .Lfunc_end2-fn_build_function
	.cfi_endproc

	.globl	fn_build_sub_function
	.align	16, 0x90
	.type	fn_build_sub_function,@function
fn_build_sub_function:                  # @fn_build_sub_function
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp23:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp24:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp25:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp26:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp27:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp28:
	.cfi_def_cfa_offset 56
	subq	$72, %rsp
.Ltmp29:
	.cfi_def_cfa_offset 128
.Ltmp30:
	.cfi_offset %rbx, -56
.Ltmp31:
	.cfi_offset %r12, -48
.Ltmp32:
	.cfi_offset %r13, -40
.Ltmp33:
	.cfi_offset %r14, -32
.Ltmp34:
	.cfi_offset %r15, -24
.Ltmp35:
	.cfi_offset %rbp, -16
	movq	%r9, %rbx
	movq	%rsi, %rbp
	movl	$-13, %r15d
	cmpl	$3, %ecx
	jg	.LBB3_31
# BB#1:                                 # %if.end
	movl	%ecx, %r13d
	movq	%rdx, %r12
	movzbl	1(%rbp), %eax
	cmpl	$2, %eax
	jne	.LBB3_2
# BB#3:                                 # %if.end.4
	xorl	%r14d, %r14d
	movq	%rdi, 24(%rsp)          # 8-byte Spill
	movq	%r8, %r15
	leaq	68(%rsp), %r9
	movl	$.L.str.2, %esi
	xorl	%edx, %edx
	movl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	movl	$-1, %r8d
	movq	%rbp, %rdi
	callq	dict_int_param
	movq	%rbx, %rsi
	movq	%rbp, %rdi
	movq	%r15, %r9
	movq	24(%rsp), %rbx          # 8-byte Reload
	movl	%eax, %r15d
	testl	%r15d, %r15d
	movl	%r13d, %ebp
	js	.LBB3_31
# BB#4:                                 # %for.cond.preheader
	movl	build_function_type_table_count(%rip), %eax
	testl	%eax, %eax
	je	.LBB3_8
# BB#5:                                 # %for.body.lr.ph
	movl	$build_function_type_table, %ecx
	xorl	%r14d, %r14d
	movl	68(%rsp), %edx
	.align	16, 0x90
.LBB3_6:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	cmpl	%edx, (%rcx)
	je	.LBB3_8
# BB#7:                                 # %for.inc
                                        #   in Loop: Header=BB3_6 Depth=1
	incl	%r14d
	addq	$16, %rcx
	cmpl	%eax, %r14d
	jb	.LBB3_6
.LBB3_8:                                # %for.end
	movl	$-15, %r15d
	cmpl	%eax, %r14d
	je	.LBB3_31
# BB#9:                                 # %if.end.21
	movq	%rbx, %r13
	movl	%ebp, 12(%rsp)          # 4-byte Spill
	movq	%rsi, %rbx
	leaq	40(%rsp), %r8
	movq	$0, 40(%rsp)
	movq	$0, 56(%rsp)
	movl	$.L.str.3, %esi
	movl	$1, %edx
	movl	$1, %ecx
	movq	%r9, 16(%rsp)           # 8-byte Spill
	movq	%rdi, %rbp
	callq	fn_build_float_array
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB3_10
# BB#11:                                # %if.end.27
	movl	%r15d, %eax
	sarl	%eax
	movl	%eax, 32(%rsp)
	testl	%eax, %eax
	movq	%rbp, %r10
	movq	%rbx, %rdi
	jle	.LBB3_18
# BB#12:                                # %for.body.32.lr.ph
	movq	40(%rsp), %rcx
	leal	(%rax,%rax), %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	.align	16, 0x90
.LBB3_14:                               # %for.body.32
                                        # =>This Inner Loop Header: Depth=1
	movss	(%rcx,%rsi,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	ucomiss	4(%rcx,%rsi,4), %xmm0
	jae	.LBB3_15
# BB#13:                                # %for.cond.28
                                        #   in Loop: Header=BB3_14 Depth=1
	addq	$2, %rsi
	cmpq	%rdx, %rsi
	jl	.LBB3_14
.LBB3_18:                               # %for.end.45
	testq	%rdi, %rdi
	movq	16(%rsp), %r9           # 8-byte Reload
	je	.LBB3_28
# BB#19:                                # %if.then.46
	movl	128(%rsp), %edx
	cmpl	%edx, %eax
	movl	$-15, %eax
	cmovel	%r15d, %eax
	testl	%edx, %edx
	jle	.LBB3_26
# BB#20:                                # %if.then.46
	testl	%eax, %eax
	js	.LBB3_26
# BB#21:                                # %for.body.57.lr.ph
	addl	%edx, %edx
	movq	40(%rsp), %rcx
	movslq	%edx, %rdx
	movl	$2, %esi
	movl	$-15, %r15d
.LBB3_22:                               # %for.body.57
                                        # =>This Inner Loop Header: Depth=1
	movss	-8(%rcx,%rsi,4), %xmm0  # xmm0 = mem[0],zero,zero,zero
	ucomiss	-8(%rdi,%rsi,4), %xmm0
	ja	.LBB3_27
# BB#23:                                # %lor.lhs.false
                                        #   in Loop: Header=BB3_22 Depth=1
	movss	-4(%rdi,%rsi,4), %xmm0  # xmm0 = mem[0],zero,zero,zero
	ucomiss	-4(%rcx,%rsi,4), %xmm0
	ja	.LBB3_27
# BB#24:                                # %for.inc.76
                                        #   in Loop: Header=BB3_22 Depth=1
	cmpq	%rdx, %rsi
	jge	.LBB3_26
# BB#25:                                # %for.inc.76
                                        #   in Loop: Header=BB3_22 Depth=1
	addq	$2, %rsi
	testl	%eax, %eax
	jns	.LBB3_22
.LBB3_26:                               # %for.end.78
	testl	%eax, %eax
	movl	%eax, %r15d
	js	.LBB3_27
.LBB3_28:                               # %if.end.83
	leaq	56(%rsp), %r8
	movl	$.L.str.4, %esi
	xorl	%edx, %edx
	movl	$1, %ecx
	movq	%r10, %rdi
	movq	%r9, %r15
	movq	%r10, %rbp
	callq	fn_build_float_array
	movq	%r15, %r9
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB3_17
# BB#29:                                # %if.end.89
	sarl	%r15d
	movl	%r15d, 48(%rsp)
	movl	%r14d, %r10d
	shlq	$4, %r10
	movl	12(%rsp), %ecx          # 4-byte Reload
	incl	%ecx
	leaq	32(%rsp), %rdx
	movq	%r13, %rdi
	movq	%rbp, %rsi
	movq	%r12, %r8
	callq	*build_function_type_table+8(%r10)
	jmp	.LBB3_30
.LBB3_2:                                # %if.then.3
	movq	%rbp, %rdi
	callq	check_type_failed
.LBB3_30:                               # %cleanup
	movl	%eax, %r15d
	jmp	.LBB3_31
.LBB3_10:                               # %if.then.26
	movl	$.L.str.3, %edx
	movq	%r13, %rdi
	movq	%rbp, %rsi
	callq	gs_errorinfo_put_pair_from_dict
	jmp	.LBB3_16
.LBB3_15:                               # %if.then.41
	movl	$.L.str.3, %edx
	movq	%r13, %rdi
	movq	%r10, %rsi
	callq	gs_errorinfo_put_pair_from_dict
	movl	$-15, %r15d
.LBB3_16:                               # %fail
	movq	16(%rsp), %r9           # 8-byte Reload
	jmp	.LBB3_17
.LBB3_27:                               # %if.then.81
	movl	$.L.str.3, %edx
	movq	%r13, %rdi
	movq	%r10, %rsi
	movq	%r9, %rbx
	callq	gs_errorinfo_put_pair_from_dict
	movq	%rbx, %r9
.LBB3_17:                               # %fail
	movq	56(%rsp), %rsi
	movl	$.L.str.4, %edx
	movq	%r9, %rdi
	movq	%r9, %rbx
	callq	gs_free_const_object
	movq	40(%rsp), %rsi
	movl	$.L.str.3, %edx
	movq	%rbx, %rdi
	callq	gs_free_const_object
.LBB3_31:                               # %cleanup
	movl	%r15d, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	fn_build_sub_function, .Lfunc_end3-fn_build_sub_function
	.cfi_endproc

	.globl	fn_build_float_array
	.align	16, 0x90
	.type	fn_build_float_array,@function
fn_build_float_array:                   # @fn_build_float_array
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
	pushq	%r13
.Ltmp39:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp40:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp41:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp42:
	.cfi_def_cfa_offset 96
.Ltmp43:
	.cfi_offset %rbx, -56
.Ltmp44:
	.cfi_offset %r12, -48
.Ltmp45:
	.cfi_offset %r13, -40
.Ltmp46:
	.cfi_offset %r14, -32
.Ltmp47:
	.cfi_offset %r15, -24
.Ltmp48:
	.cfi_offset %rbp, -16
	movq	%r9, %r14
	movq	%r8, %r15
	movl	%ecx, %ebp
	movl	%edx, %ebx
	movq	%rsi, %r12
	movq	%rdi, %r13
	movq	$0, (%r15)
	leaq	32(%rsp), %rdx
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB4_1
# BB#2:                                 # %if.end
	movl	%ebp, 28(%rsp)          # 4-byte Spill
	movq	32(%rsp), %rcx
	movzwl	(%rcx), %edx
	andl	$15360, %edx            # imm = 0x3C00
	movl	$-20, %eax
	cmpl	$1024, %edx             # imm = 0x400
	jne	.LBB4_9
# BB#3:                                 # %if.end.4
	movl	4(%rcx), %ebp
	movl	$4, %edx
	movq	%r14, %rdi
	movl	%ebp, %esi
	movq	%r12, %rcx
	callq	*88(%r14)
	movq	%rax, %rbx
	movl	$-25, %eax
	testq	%rbx, %rbx
	je	.LBB4_9
# BB#4:                                 # %if.end.10
	movl	$-15, 8(%rsp)
	movl	$0, (%rsp)
	xorl	%r9d, %r9d
	movq	%r14, %rdi
	movq	%r13, %rsi
	movq	%r12, %rdx
	movl	%ebp, %ecx
	movq	%rbx, %r8
	callq	dict_float_array_check_param
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB4_7
# BB#5:                                 # %lor.lhs.false
	cmpl	$0, 28(%rsp)            # 4-byte Folded Reload
	je	.LBB4_8
# BB#6:                                 # %lor.lhs.false
	movl	%ebp, %eax
	andl	$1, %eax
	je	.LBB4_8
.LBB4_7:                                # %if.then.18
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%r12, %rdx
	callq	*24(%r14)
	testl	%ebp, %ebp
	movl	$-15, %eax
	cmovsl	%ebp, %eax
	jmp	.LBB4_9
.LBB4_1:                                # %if.then
	testl	%ebx, %ebx
	movl	$-15, %eax
	cmovel	%ebx, %eax
.LBB4_9:                                # %cleanup.25
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB4_8:                                # %if.end.23
	movq	%rbx, (%r15)
	movl	%ebp, %eax
	jmp	.LBB4_9
.Lfunc_end4:
	.size	fn_build_float_array, .Lfunc_end4-fn_build_float_array
	.cfi_endproc

	.globl	fn_build_float_array_forced
	.align	16, 0x90
	.type	fn_build_float_array_forced,@function
fn_build_float_array_forced:            # @fn_build_float_array_forced
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
	pushq	%r13
.Ltmp52:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp53:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp54:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp55:
	.cfi_def_cfa_offset 96
.Ltmp56:
	.cfi_offset %rbx, -56
.Ltmp57:
	.cfi_offset %r12, -48
.Ltmp58:
	.cfi_offset %r13, -40
.Ltmp59:
	.cfi_offset %r14, -32
.Ltmp60:
	.cfi_offset %r15, -24
.Ltmp61:
	.cfi_offset %rbp, -16
	movq	%r8, %r13
	movq	%rcx, %rbx
	movl	%edx, %ebp
	movq	%rsi, %r15
	movq	%rdi, %r12
	movq	$0, (%rbx)
	leaq	32(%rsp), %rdx
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB5_1
# BB#2:                                 # %if.end
	movq	32(%rsp), %rax
	movzwl	(%rax), %ecx
	andl	$15360, %ecx            # imm = 0x3C00
	cmpl	$1024, %ecx             # imm = 0x400
	jne	.LBB5_4
# BB#3:                                 # %if.then.3
	movq	%rbx, 24(%rsp)          # 8-byte Spill
	movl	4(%rax), %ebp
	jmp	.LBB5_6
.LBB5_1:                                # %if.then
	testl	%ebp, %ebp
	movl	$-15, %r14d
	cmovel	%ebp, %r14d
	jmp	.LBB5_13
.LBB5_4:                                # %if.else
	movq	%rbx, 24(%rsp)          # 8-byte Spill
	movzbl	1(%rax), %eax
	movl	$1, %ebp
	cmpl	$16, %eax
	je	.LBB5_6
# BB#5:                                 # %if.else
	movl	$-20, %r14d
	movzbl	%al, %eax
	cmpl	$11, %eax
	jne	.LBB5_13
.LBB5_6:                                # %if.end.19
	movl	$4, %edx
	movq	%r13, %rbx
	movq	%rbx, %rdi
	movl	%ebp, %esi
	movq	%r15, %rcx
	callq	*88(%rbx)
	movq	%rax, %r13
	movl	$-25, %r14d
	testq	%r13, %r13
	je	.LBB5_13
# BB#7:                                 # %if.end.24
	movq	32(%rsp), %rax
	movzwl	(%rax), %eax
	andl	$15360, %eax            # imm = 0x3C00
	cmpl	$1024, %eax             # imm = 0x400
	jne	.LBB5_9
# BB#8:                                 # %if.then.31
	movl	$-15, 8(%rsp)
	movl	$0, (%rsp)
	xorl	%r9d, %r9d
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	%r15, %rdx
	movl	%ebp, %ecx
	movq	%r13, %r8
	callq	dict_float_array_check_param
	movl	%eax, %r14d
	jmp	.LBB5_10
.LBB5_9:                                # %if.else.33
	xorps	%xmm0, %xmm0
	movq	%r12, %rdi
	movq	%r15, %rsi
	movq	%r13, %rdx
	callq	dict_float_param
	movl	%eax, %r14d
	movl	$1, %eax
	testl	%r14d, %r14d
	je	.LBB5_12
.LBB5_10:                               # %if.end.39
	testl	%r14d, %r14d
	js	.LBB5_14
# BB#11:
	movl	%r14d, %eax
.LBB5_12:                               # %if.end.44
	movq	24(%rsp), %rcx          # 8-byte Reload
	movq	%r13, (%rcx)
	movl	%eax, %r14d
	jmp	.LBB5_13
.LBB5_14:                               # %if.then.42
	movq	%rbx, %rdi
	movq	%r13, %rsi
	movq	%r15, %rdx
	callq	*24(%rbx)
.LBB5_13:                               # %cleanup
	movl	%r14d, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	fn_build_float_array_forced, .Lfunc_end5-fn_build_float_array_forced
	.cfi_endproc

	.globl	ref_function
	.align	16, 0x90
	.type	ref_function,@function
ref_function:                           # @ref_function
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	movzbl	1(%rdi), %ecx
	cmpl	$4, %ecx
	jne	.LBB6_7
# BB#1:                                 # %land.lhs.true
	movzwl	(%rdi), %ecx
	andl	$240, %ecx
	xorl	%eax, %eax
	cmpl	$192, %ecx
	jne	.LBB6_7
# BB#2:                                 # %land.lhs.true.7
	xorl	%eax, %eax
	cmpl	$2, 4(%rdi)
	jne	.LBB6_7
# BB#3:                                 # %land.lhs.true.11
	movq	8(%rdi), %rcx
	movzwl	16(%rcx), %edx
	andl	$16256, %edx            # imm = 0x3F80
	xorl	%eax, %eax
	cmpl	$3968, %edx             # imm = 0xF80
	jne	.LBB6_7
# BB#4:                                 # %land.lhs.true.18
	movl	$zexecfunction, %edx
	xorl	%eax, %eax
	cmpq	%rdx, 24(%rcx)
	jne	.LBB6_7
# BB#5:                                 # %land.lhs.true.25
	movzwl	(%rcx), %edx
	andl	$16112, %edx            # imm = 0x3EF0
	xorl	%eax, %eax
	cmpl	$2240, %edx             # imm = 0x8C0
	jne	.LBB6_7
# BB#6:                                 # %if.then
	movq	8(%rcx), %rax
.LBB6_7:                                # %return
	retq
.Lfunc_end6:
	.size	ref_function, .Lfunc_end6-ref_function
	.cfi_endproc

	.align	16, 0x90
	.type	zbuildfunction,@function
zbuildfunction:                         # @zbuildfunction
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp62:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp63:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp64:
	.cfi_def_cfa_offset 32
	subq	$32, %rsp
.Ltmp65:
	.cfi_def_cfa_offset 64
.Ltmp66:
	.cfi_offset %rbx, -32
.Ltmp67:
	.cfi_offset %r14, -24
.Ltmp68:
	.cfi_offset %r15, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %r14
	movq	8(%rbx), %r8
	movl	$0, (%rsp)
	leaq	8(%rsp), %rdx
	xorl	%ecx, %ecx
	xorl	%r9d, %r9d
	movq	%r14, %rsi
	callq	fn_build_sub_function
	testl	%eax, %eax
	js	.LBB7_5
# BB#1:                                 # %if.end
	movq	8(%rsp), %r15
	movq	8(%rbx), %rdi
	leaq	16(%rsp), %rsi
	movl	$192, %edx
	movl	$2, %ecx
	movl	$.L.str.8, %r8d
	callq	gs_alloc_ref_array
	testl	%eax, %eax
	js	.LBB7_3
# BB#2:                                 # %make_function_proc.exit
	movq	24(%rsp), %rax
	movq	%r15, 8(%rax)
	movl	76(%rbx), %eax
	movl	56(%rbx), %ecx
	orl	%eax, %ecx
	orl	$192, %ecx
	addl	$2048, %ecx             # imm = 0x800
	movq	24(%rsp), %rdx
	movw	%cx, (%rdx)
	movq	$zexecfunction, 24(%rdx)
	orl	$128, %eax
	addl	$3840, %eax             # imm = 0xF00
	movq	24(%rsp), %rcx
	movw	%ax, 16(%rcx)
	movl	$0, 20(%rcx)
	movups	16(%rsp), %xmm0
	movups	%xmm0, (%r14)
	jmp	.LBB7_4
.LBB7_3:                                # %if.then.3
	movq	8(%rsp), %rdi
	movq	8(%rbx), %rdx
	movl	$1, %esi
	callq	*56(%rdi)
.LBB7_4:                                # %cleanup
	xorl	%eax, %eax
.LBB7_5:                                # %cleanup
	addq	$32, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end7:
	.size	zbuildfunction, .Lfunc_end7-zbuildfunction
	.cfi_endproc

	.align	16, 0x90
	.type	zisencapfunction,@function
zisencapfunction:                       # @zisencapfunction
	.cfi_startproc
# BB#0:                                 # %entry
	movq	624(%rdi), %rdi
	movzwl	(%rdi), %ecx
	movl	%ecx, %eax
	andl	$15552, %eax            # imm = 0x3CC0
	cmpl	$1216, %eax             # imm = 0x4C0
	jne	.LBB8_13
# BB#1:                                 # %do.end
	andl	$240, %ecx
	xorl	%eax, %eax
	cmpl	$192, %ecx
	jne	.LBB8_12
# BB#2:                                 # %do.end
	movzbl	1(%rdi), %ecx
	cmpl	$4, %ecx
	jne	.LBB8_12
# BB#3:                                 # %land.lhs.true.7.i
	cmpl	$2, 4(%rdi)
	jne	.LBB8_4
# BB#5:                                 # %land.lhs.true.11.i
	movq	8(%rdi), %rax
	movzwl	16(%rax), %ecx
	andl	$16256, %ecx            # imm = 0x3F80
	cmpl	$3968, %ecx             # imm = 0xF80
	jne	.LBB8_6
# BB#7:                                 # %land.lhs.true.18.i
	movl	$zexecfunction, %ecx
	cmpq	%rcx, 24(%rax)
	je	.LBB8_9
# BB#8:
	xorl	%eax, %eax
	jmp	.LBB8_12
.LBB8_13:                               # %if.then
	jmp	check_proc_failed       # TAILCALL
.LBB8_4:
	xorl	%eax, %eax
	jmp	.LBB8_12
.LBB8_6:
	xorl	%eax, %eax
	jmp	.LBB8_12
.LBB8_9:                                # %land.lhs.true.25.i
	movzwl	(%rax), %ecx
	andl	$16112, %ecx            # imm = 0x3EF0
	cmpl	$2240, %ecx             # imm = 0x8C0
	jne	.LBB8_10
# BB#11:                                # %if.then.i
	cmpq	$0, 8(%rax)
	setne	%al
	jmp	.LBB8_12
.LBB8_10:
	xorl	%eax, %eax
.LBB8_12:                               # %cleanup
	movzbl	%al, %eax
	movw	%ax, 8(%rdi)
	movw	$256, (%rdi)            # imm = 0x100
	xorl	%eax, %eax
	retq
.Lfunc_end8:
	.size	zisencapfunction, .Lfunc_end8-zisencapfunction
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%execfunction(in/out)"
	.size	.L.str, 22

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"%execfunction(in)"
	.size	.L.str.1, 18

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"FunctionType"
	.size	.L.str.2, 13

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Domain"
	.size	.L.str.3, 7

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Range"
	.size	.L.str.4, 6

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"1.buildfunction"
	.size	.L.str.5, 16

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"1%execfunction"
	.size	.L.str.6, 15

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"1.isencapfunction"
	.size	.L.str.7, 18

	.type	zfunc_op_defs,@object   # @zfunc_op_defs
	.section	.rodata,"a",@progbits
	.globl	zfunc_op_defs
	.align	16
zfunc_op_defs:
	.quad	.L.str.5
	.quad	zbuildfunction
	.quad	.L.str.6
	.quad	zexecfunction
	.quad	.L.str.7
	.quad	zisencapfunction
	.zero	16
	.size	zfunc_op_defs, 64

	.type	.L.str.8,@object        # @.str.8
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.8:
	.asciz	".buildfunction"
	.size	.L.str.8, 15


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
