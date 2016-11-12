	.text
	.file	"fns.bc"
	.globl	Fidentity
	.align	16, 0x90
	.type	Fidentity,@function
Fidentity:                              # @Fidentity
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
.Lfunc_end0:
	.size	Fidentity, .Lfunc_end0-Fidentity
	.cfi_endproc

	.globl	Frandom
	.align	16, 0x90
	.type	Frandom,@function
Frandom:                                # @Frandom
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
	subq	$64, %rsp
	movl	$901, %eax              # imm = 0x385
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB1_2
# BB#1:                                 # %if.then
	callq	init_random
	jmp	.LBB1_5
.LBB1_2:                                # %if.else
	movq	-16(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB1_3
	jmp	.LBB1_4
.LBB1_3:                                # %if.then.2
	movq	-16(%rbp), %rdi
	callq	SSDATA
	movq	-16(%rbp), %rdi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	SBYTES
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	seed_random
.LBB1_4:                                # %if.end
	jmp	.LBB1_5
.LBB1_5:                                # %if.end.5
	callq	get_random
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB1_11
# BB#6:                                 # %land.lhs.true
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	sarq	$2, %rdx
	cmpq	%rdx, %rcx
	jge	.LBB1_11
# BB#7:                                 # %if.then.12
	jmp	.LBB1_8
.LBB1_8:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movabsq	$4611686018427387903, %rax # imm = 0x3FFFFFFFFFFFFFFF
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	sarq	$2, %rdx
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	%rcx, %rax
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	cqto
	movq	-64(%rbp), %rcx         # 8-byte Reload
	idivq	%rcx
	movq	%rdx, -32(%rbp)
	movq	-24(%rbp), %rdx
	subq	-32(%rbp), %rdx
	movq	-16(%rbp), %rsi
	sarq	$2, %rsi
	movq	-56(%rbp), %rdi         # 8-byte Reload
	subq	%rsi, %rdi
	addq	$1, %rdi
	cmpq	%rdi, %rdx
	jg	.LBB1_10
# BB#9:                                 # %if.then.18
	movq	-32(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB1_12
.LBB1_10:                               # %if.end.20
                                        #   in Loop: Header=BB1_8 Depth=1
	callq	get_random
	movq	%rax, -24(%rbp)
	jmp	.LBB1_8
.LBB1_11:                               # %if.end.22
	movq	-24(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -8(%rbp)
.LBB1_12:                               # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	Frandom, .Lfunc_end1-Frandom
	.cfi_endproc

	.globl	Flength
	.align	16, 0x90
	.type	Flength,@function
Flength:                                # @Flength
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
	movq	-8(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB2_1
	jmp	.LBB2_2
.LBB2_1:                                # %if.then
	movq	-8(%rbp), %rdi
	callq	SCHARS
	movq	%rax, %rdi
	callq	make_natnum
	movq	%rax, -16(%rbp)
	jmp	.LBB2_36
.LBB2_2:                                # %if.else
	movq	-8(%rbp), %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB2_3
	jmp	.LBB2_4
.LBB2_3:                                # %if.then.4
	movq	-8(%rbp), %rdi
	callq	ASIZE
	movq	%rax, %rdi
	callq	make_natnum
	movq	%rax, -16(%rbp)
	jmp	.LBB2_35
.LBB2_4:                                # %if.else.7
	movq	-8(%rbp), %rdi
	callq	CHAR_TABLE_P
	testb	$1, %al
	jne	.LBB2_5
	jmp	.LBB2_6
.LBB2_5:                                # %if.then.9
	movl	$4194303, %eax          # imm = 0x3FFFFF
	movl	%eax, %edi
	callq	make_natnum
	movq	%rax, -16(%rbp)
	jmp	.LBB2_34
.LBB2_6:                                # %if.else.11
	movq	-8(%rbp), %rdi
	callq	BOOL_VECTOR_P
	testb	$1, %al
	jne	.LBB2_7
	jmp	.LBB2_8
.LBB2_7:                                # %if.then.13
	movq	-8(%rbp), %rdi
	callq	bool_vector_size
	movq	%rax, %rdi
	callq	make_natnum
	movq	%rax, -16(%rbp)
	jmp	.LBB2_33
.LBB2_8:                                # %if.else.16
	movq	-8(%rbp), %rdi
	callq	COMPILEDP
	testb	$1, %al
	jne	.LBB2_9
	jmp	.LBB2_10
.LBB2_9:                                # %if.then.18
	movq	-8(%rbp), %rdi
	callq	ASIZE
	andq	$4095, %rax             # imm = 0xFFF
	movq	%rax, %rdi
	callq	make_natnum
	movq	%rax, -16(%rbp)
	jmp	.LBB2_32
.LBB2_10:                               # %if.else.21
	movq	-8(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB2_27
# BB#11:                                # %if.then.24
	movq	$0, -24(%rbp)
.LBB2_12:                               # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	andq	$65535, %rax            # imm = 0xFFFF
	cmpq	$0, %rax
	jne	.LBB2_24
# BB#13:                                # %if.then.28
                                        #   in Loop: Header=BB2_12 Depth=1
	movabsq	$2305843009213693951, %rax # imm = 0x1FFFFFFFFFFFFFFF
	cmpq	-24(%rbp), %rax
	jge	.LBB2_15
# BB#14:                                # %if.then.31
	movabsq	$.L.str, %rdi
	movb	$0, %al
	callq	error
.LBB2_15:                               # %if.end
                                        #   in Loop: Header=BB2_12 Depth=1
	jmp	.LBB2_16
.LBB2_16:                               # %do.body.32
                                        #   in Loop: Header=BB2_12 Depth=1
	xorl	%edi, %edi
	movq	globals+1928, %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB2_19
# BB#17:                                # %land.lhs.true
                                        #   in Loop: Header=BB2_12 Depth=1
	xorl	%edi, %edi
	movq	globals+1104, %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB2_19
# BB#18:                                # %if.then.39
                                        #   in Loop: Header=BB2_12 Depth=1
	callq	process_quit_flag
	jmp	.LBB2_22
.LBB2_19:                               # %if.else.40
                                        #   in Loop: Header=BB2_12 Depth=1
	movb	pending_signals, %al
	testb	$1, %al
	je	.LBB2_21
# BB#20:                                # %if.then.41
                                        #   in Loop: Header=BB2_12 Depth=1
	callq	process_pending_signals
.LBB2_21:                               # %if.end.42
                                        #   in Loop: Header=BB2_12 Depth=1
	jmp	.LBB2_22
.LBB2_22:                               # %if.end.43
                                        #   in Loop: Header=BB2_12 Depth=1
	jmp	.LBB2_23
.LBB2_23:                               # %do.end
                                        #   in Loop: Header=BB2_12 Depth=1
	jmp	.LBB2_24
.LBB2_24:                               # %if.end.44
                                        #   in Loop: Header=BB2_12 Depth=1
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
# BB#25:                                # %do.cond
                                        #   in Loop: Header=BB2_12 Depth=1
	movq	-8(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	je	.LBB2_12
# BB#26:                                # %do.end.49
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	CHECK_LIST_END
	movq	-24(%rbp), %rsi
	shlq	$2, %rsi
	addq	$2, %rsi
	movq	%rsi, -16(%rbp)
	jmp	.LBB2_31
.LBB2_27:                               # %if.else.50
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB2_29
# BB#28:                                # %if.then.54
	xorl	%eax, %eax
	movl	%eax, %edi
	callq	make_natnum
	movq	%rax, -16(%rbp)
	jmp	.LBB2_30
.LBB2_29:                               # %if.else.56
	movl	$844, %edi              # imm = 0x34C
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -56(%rbp)         # 8-byte Spill
.LBB2_30:                               # %if.end.58
	jmp	.LBB2_31
.LBB2_31:                               # %if.end.59
	jmp	.LBB2_32
.LBB2_32:                               # %if.end.60
	jmp	.LBB2_33
.LBB2_33:                               # %if.end.61
	jmp	.LBB2_34
.LBB2_34:                               # %if.end.62
	jmp	.LBB2_35
.LBB2_35:                               # %if.end.63
	jmp	.LBB2_36
.LBB2_36:                               # %if.end.64
	movq	-16(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	Flength, .Lfunc_end2-Flength
	.cfi_endproc

	.align	16, 0x90
	.type	CHECK_LIST_END,@function
CHECK_LIST_END:                         # @CHECK_LIST_END
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
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movl	%eax, %edi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB3_2
# BB#1:                                 # %cond.true
	jmp	.LBB3_3
.LBB3_2:                                # %cond.false
	movl	$626, %edi              # imm = 0x272
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -32(%rbp)         # 8-byte Spill
.LBB3_3:                                # %cond.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	CHECK_LIST_END, .Lfunc_end3-CHECK_LIST_END
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4895412794951729152     # double 1.8446744073709552E+19
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI4_1:
	.long	1127219200              # 0x43300000
	.long	1160773632              # 0x45300000
	.long	0                       # 0x0
	.long	0                       # 0x0
.LCPI4_2:
	.quad	4841369599423283200     # double 4.503600e+15
	.quad	4985484787499139072     # double 1.934281e+25
	.text
	.globl	Fsafe_length
	.align	16, 0x90
	.type	Fsafe_length,@function
Fsafe_length:                           # @Fsafe_length
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
	subq	$80, %rsp
	xorps	%xmm0, %xmm0
	movq	%rdi, -16(%rbp)
	movsd	%xmm0, -40(%rbp)
	movq	$1, -48(%rbp)
	movq	-16(%rbp), %rdi
	andq	$7, %rdi
	movl	%edi, %eax
	cmpl	$3, %eax
	je	.LBB4_2
# BB#1:                                 # %if.then
	movq	$2, -8(%rbp)
	jmp	.LBB4_31
.LBB4_2:                                # %if.end
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	%rax, -24(%rbp)
.LBB4_3:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	je	.LBB4_5
# BB#4:                                 # %if.then.6
	jmp	.LBB4_22
.LBB4_5:                                # %if.end.7
                                        #   in Loop: Header=BB4_3 Depth=1
	movq	-24(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB4_7
# BB#6:                                 # %if.then.10
	jmp	.LBB4_22
.LBB4_7:                                # %if.end.11
                                        #   in Loop: Header=BB4_3 Depth=1
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	andq	$1, %rax
	cmpq	$0, %rax
	jne	.LBB4_21
# BB#8:                                 # %if.then.15
                                        #   in Loop: Header=BB4_3 Depth=1
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-48(%rbp), %rax
	andq	$65535, %rax            # imm = 0xFFFF
	cmpq	$0, %rax
	jne	.LBB4_20
# BB#9:                                 # %if.then.22
                                        #   in Loop: Header=BB4_3 Depth=1
	jmp	.LBB4_10
.LBB4_10:                               # %do.body
                                        #   in Loop: Header=BB4_3 Depth=1
	xorl	%edi, %edi
	movq	globals+1928, %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB4_13
# BB#11:                                # %land.lhs.true
                                        #   in Loop: Header=BB4_3 Depth=1
	xorl	%edi, %edi
	movq	globals+1104, %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB4_13
# BB#12:                                # %if.then.28
                                        #   in Loop: Header=BB4_3 Depth=1
	callq	process_quit_flag
	jmp	.LBB4_16
.LBB4_13:                               # %if.else
                                        #   in Loop: Header=BB4_3 Depth=1
	movb	pending_signals, %al
	testb	$1, %al
	je	.LBB4_15
# BB#14:                                # %if.then.29
                                        #   in Loop: Header=BB4_3 Depth=1
	callq	process_pending_signals
.LBB4_15:                               # %if.end.30
                                        #   in Loop: Header=BB4_3 Depth=1
	jmp	.LBB4_16
.LBB4_16:                               # %if.end.31
                                        #   in Loop: Header=BB4_3 Depth=1
	jmp	.LBB4_17
.LBB4_17:                               # %do.end
                                        #   in Loop: Header=BB4_3 Depth=1
	cmpq	$0, -48(%rbp)
	jne	.LBB4_19
# BB#18:                                # %if.then.34
                                        #   in Loop: Header=BB4_3 Depth=1
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	addsd	-40(%rbp), %xmm0
	movsd	%xmm0, -40(%rbp)
.LBB4_19:                               # %if.end.35
                                        #   in Loop: Header=BB4_3 Depth=1
	jmp	.LBB4_20
.LBB4_20:                               # %if.end.36
                                        #   in Loop: Header=BB4_3 Depth=1
	jmp	.LBB4_21
.LBB4_21:                               # %if.end.37
                                        #   in Loop: Header=BB4_3 Depth=1
	jmp	.LBB4_3
.LBB4_22:                               # %for.end
	xorps	%xmm0, %xmm0
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB4_23
	jp	.LBB4_23
	jmp	.LBB4_24
.LBB4_23:                               # %cond.true
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movaps	.LCPI4_1(%rip), %xmm1   # xmm1 = [1127219200,1160773632,0,0]
	movq	-48(%rbp), %xmm2        # xmm2 = mem[0],zero
	punpckldq	%xmm1, %xmm2    # xmm2 = xmm2[0],xmm1[0],xmm2[1],xmm1[1]
	movapd	.LCPI4_2(%rip), %xmm1   # xmm1 = [4.503600e+15,1.934281e+25]
	subpd	%xmm1, %xmm2
	pshufd	$78, %xmm2, %xmm1       # xmm1 = xmm2[2,3,0,1]
	addpd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	callq	make_float
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jmp	.LBB4_30
.LBB4_24:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	cmpq	-48(%rbp), %rcx
	jbe	.LBB4_26
# BB#25:                                # %lor.lhs.false
	movabsq	$-2305843009213693952, %rax # imm = 0xE000000000000000
	cmpq	-48(%rbp), %rax
	ja	.LBB4_27
.LBB4_26:                               # %land.lhs.true.46
	movabsq	$2305843009213693951, %rax # imm = 0x1FFFFFFFFFFFFFFF
	cmpq	%rax, -48(%rbp)
	jbe	.LBB4_28
.LBB4_27:                               # %cond.true.49
	movaps	.LCPI4_1(%rip), %xmm0   # xmm0 = [1127219200,1160773632,0,0]
	movq	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	punpckldq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1]
	movapd	.LCPI4_2(%rip), %xmm0   # xmm0 = [4.503600e+15,1.934281e+25]
	subpd	%xmm0, %xmm1
	pshufd	$78, %xmm1, %xmm0       # xmm0 = xmm1[2,3,0,1]
	addpd	%xmm1, %xmm0
	callq	make_float
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB4_29
.LBB4_28:                               # %cond.false.52
	movq	-48(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB4_29:                               # %cond.end
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	%rax, -72(%rbp)         # 8-byte Spill
.LBB4_30:                               # %cond.end.54
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rax, -8(%rbp)
.LBB4_31:                               # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	Fsafe_length, .Lfunc_end4-Fsafe_length
	.cfi_endproc

	.globl	Fstring_bytes
	.align	16, 0x90
	.type	Fstring_bytes,@function
Fstring_bytes:                          # @Fstring_bytes
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
	movq	-8(%rbp), %rdi
	callq	CHECK_STRING
	movq	-8(%rbp), %rdi
	callq	SBYTES
	shlq	$2, %rax
	addq	$2, %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	Fstring_bytes, .Lfunc_end5-Fstring_bytes
	.cfi_endproc

	.globl	Fstring_equal
	.align	16, 0x90
	.type	Fstring_equal,@function
Fstring_equal:                          # @Fstring_equal
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	andq	$7, %rsi
	movl	%esi, %eax
	cmpl	$0, %eax
	jne	.LBB6_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	callq	SYMBOL_NAME
	movq	%rax, -16(%rbp)
.LBB6_2:                                # %if.end
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB6_4
# BB#3:                                 # %if.then.6
	movq	-24(%rbp), %rdi
	callq	SYMBOL_NAME
	movq	%rax, -24(%rbp)
.LBB6_4:                                # %if.end.8
	movq	-16(%rbp), %rdi
	callq	CHECK_STRING
	movq	-24(%rbp), %rdi
	callq	CHECK_STRING
	movq	-16(%rbp), %rdi
	callq	SCHARS
	movq	-24(%rbp), %rdi
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	SCHARS
	movq	-32(%rbp), %rdi         # 8-byte Reload
	cmpq	%rax, %rdi
	jne	.LBB6_7
# BB#5:                                 # %lor.lhs.false
	movq	-16(%rbp), %rdi
	callq	SBYTES
	movq	-24(%rbp), %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	SBYTES
	movq	-40(%rbp), %rdi         # 8-byte Reload
	cmpq	%rax, %rdi
	jne	.LBB6_7
# BB#6:                                 # %lor.lhs.false.17
	movq	-16(%rbp), %rdi
	callq	SDATA
	movq	-24(%rbp), %rdi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	SDATA
	movq	-16(%rbp), %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	SBYTES
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	memcmp
	cmpl	$0, %eax
	je	.LBB6_8
.LBB6_7:                                # %if.then.22
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB6_9
.LBB6_8:                                # %if.end.24
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB6_9:                                # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	Fstring_equal, .Lfunc_end6-Fstring_equal
	.cfi_endproc

	.globl	Fcompare_strings
	.align	16, 0x90
	.type	Fcompare_strings,@function
Fcompare_strings:                       # @Fcompare_strings
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
	subq	$288, %rsp              # imm = 0x120
	movq	16(%rbp), %rax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	movq	%rax, -64(%rbp)
	movq	-16(%rbp), %rdi
	callq	CHECK_STRING
	movq	-40(%rbp), %rdi
	callq	CHECK_STRING
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %r10d
	andl	$-5, %r10d
	cmpl	$2, %r10d
	jne	.LBB7_3
# BB#1:                                 # %land.lhs.true
	movq	-16(%rbp), %rdi
	callq	SCHARS
	movq	-32(%rbp), %rdi
	sarq	$2, %rdi
	cmpq	%rdi, %rax
	jge	.LBB7_3
# BB#2:                                 # %if.then
	movq	-16(%rbp), %rdi
	callq	SCHARS
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -32(%rbp)
.LBB7_3:                                # %if.end
	movq	-56(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB7_6
# BB#4:                                 # %land.lhs.true.11
	movq	-40(%rbp), %rdi
	callq	SCHARS
	movq	-56(%rbp), %rdi
	sarq	$2, %rdi
	cmpq	%rdi, %rax
	jge	.LBB7_6
# BB#5:                                 # %if.then.16
	movq	-40(%rbp), %rdi
	callq	SCHARS
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -56(%rbp)
.LBB7_6:                                # %if.end.20
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rdx, -184(%rbp)        # 8-byte Spill
	movq	%rsi, -192(%rbp)        # 8-byte Spill
	callq	SCHARS
	leaq	-72(%rbp), %r8
	leaq	-80(%rbp), %r9
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	-192(%rbp), %rsi        # 8-byte Reload
	movq	-184(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	validate_subarray
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdi, -200(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rdx, -208(%rbp)        # 8-byte Spill
	movq	%rsi, -216(%rbp)        # 8-byte Spill
	callq	SCHARS
	leaq	-88(%rbp), %r8
	leaq	-96(%rbp), %r9
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	-216(%rbp), %rsi        # 8-byte Reload
	movq	-208(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	validate_subarray
	movq	-72(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -120(%rbp)
	movq	-16(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	string_char_to_byte
	movq	%rax, -112(%rbp)
	movq	-40(%rbp), %rdi
	movq	-120(%rbp), %rsi
	callq	string_char_to_byte
	movq	%rax, -128(%rbp)
.LBB7_7:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-104(%rbp), %rdx
	cmpq	-80(%rbp), %rdx
	movb	%cl, -217(%rbp)         # 1-byte Spill
	jge	.LBB7_9
# BB#8:                                 # %land.rhs
                                        #   in Loop: Header=BB7_7 Depth=1
	movq	-120(%rbp), %rax
	cmpq	-96(%rbp), %rax
	setl	%cl
	movb	%cl, -217(%rbp)         # 1-byte Spill
.LBB7_9:                                # %land.end
                                        #   in Loop: Header=BB7_7 Depth=1
	movb	-217(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB7_10
	jmp	.LBB7_57
.LBB7_10:                               # %while.body
                                        #   in Loop: Header=BB7_7 Depth=1
	jmp	.LBB7_11
.LBB7_11:                               # %do.body
                                        #   in Loop: Header=BB7_7 Depth=1
	movq	-104(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -104(%rbp)
	movq	-16(%rbp), %rdi
	callq	STRING_MULTIBYTE
	testb	$1, %al
	jne	.LBB7_12
	jmp	.LBB7_22
.LBB7_12:                               # %if.then.30
                                        #   in Loop: Header=BB7_7 Depth=1
	movq	-112(%rbp), %rax
	movq	-16(%rbp), %rdi
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	SDATA
	movq	-232(%rbp), %rdi        # 8-byte Reload
	addq	%rdi, %rax
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB7_14
# BB#13:                                # %cond.true
                                        #   in Loop: Header=BB7_7 Depth=1
	movl	$1, -148(%rbp)
	movq	-144(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -236(%rbp)        # 4-byte Spill
	jmp	.LBB7_21
.LBB7_14:                               # %cond.false
                                        #   in Loop: Header=BB7_7 Depth=1
	movq	-144(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB7_16
# BB#15:                                # %cond.true.41
                                        #   in Loop: Header=BB7_7 Depth=1
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
	movl	$2, -148(%rbp)
	movq	-144(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$31, %esi
	shll	$6, %esi
	movq	-144(%rbp), %rdx
	movzbl	1(%rdx), %edi
	andl	$63, %edi
	orl	%edi, %esi
	movq	-144(%rbp), %rdx
	movzbl	(%rdx), %edi
	cmpl	$194, %edi
	cmovll	%ecx, %eax
	addl	%eax, %esi
	movl	%esi, -240(%rbp)        # 4-byte Spill
	jmp	.LBB7_20
.LBB7_16:                               # %cond.false.54
                                        #   in Loop: Header=BB7_7 Depth=1
	movq	-144(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB7_18
# BB#17:                                # %cond.true.59
                                        #   in Loop: Header=BB7_7 Depth=1
	movl	$3, -148(%rbp)
	movq	-144(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$15, %ecx
	shll	$12, %ecx
	movq	-144(%rbp), %rax
	movzbl	1(%rax), %edx
	andl	$63, %edx
	shll	$6, %edx
	orl	%edx, %ecx
	movq	-144(%rbp), %rax
	movzbl	2(%rax), %edx
	andl	$63, %edx
	orl	%edx, %ecx
	movl	%ecx, -244(%rbp)        # 4-byte Spill
	jmp	.LBB7_19
.LBB7_18:                               # %cond.false.73
                                        #   in Loop: Header=BB7_7 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-148(%rbp), %rdx
	movq	-144(%rbp), %rdi
	callq	string_char
	movl	%eax, -244(%rbp)        # 4-byte Spill
.LBB7_19:                               # %cond.end
                                        #   in Loop: Header=BB7_7 Depth=1
	movl	-244(%rbp), %eax        # 4-byte Reload
	movl	%eax, -240(%rbp)        # 4-byte Spill
.LBB7_20:                               # %cond.end.76
                                        #   in Loop: Header=BB7_7 Depth=1
	movl	-240(%rbp), %eax        # 4-byte Reload
	movl	%eax, -236(%rbp)        # 4-byte Spill
.LBB7_21:                               # %cond.end.78
                                        #   in Loop: Header=BB7_7 Depth=1
	movl	-236(%rbp), %eax        # 4-byte Reload
	movl	%eax, -132(%rbp)
	movslq	-148(%rbp), %rcx
	addq	-112(%rbp), %rcx
	movq	%rcx, -112(%rbp)
	jmp	.LBB7_28
.LBB7_22:                               # %if.else
                                        #   in Loop: Header=BB7_7 Depth=1
	movq	-16(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	SREF
	movb	$1, %cl
	movzbl	%al, %edx
	movl	%edx, -132(%rbp)
	movq	-112(%rbp), %rsi
	addq	$1, %rsi
	movq	%rsi, -112(%rbp)
	testb	$1, %cl
	jne	.LBB7_23
	jmp	.LBB7_24
.LBB7_23:                               # %cond.true.85
                                        #   in Loop: Header=BB7_7 Depth=1
	movl	-132(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB7_25
	jmp	.LBB7_26
.LBB7_24:                               # %cond.false.89
                                        #   in Loop: Header=BB7_7 Depth=1
	movslq	-132(%rbp), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB7_26
.LBB7_25:                               # %cond.true.94
                                        #   in Loop: Header=BB7_7 Depth=1
	movl	-132(%rbp), %eax
	movl	%eax, -248(%rbp)        # 4-byte Spill
	jmp	.LBB7_27
.LBB7_26:                               # %cond.false.95
                                        #   in Loop: Header=BB7_7 Depth=1
	movl	-132(%rbp), %eax
	addl	$4194048, %eax          # imm = 0x3FFF00
	movl	%eax, -248(%rbp)        # 4-byte Spill
.LBB7_27:                               # %cond.end.97
                                        #   in Loop: Header=BB7_7 Depth=1
	movl	-248(%rbp), %eax        # 4-byte Reload
	movl	%eax, -132(%rbp)
.LBB7_28:                               # %if.end.99
                                        #   in Loop: Header=BB7_7 Depth=1
	jmp	.LBB7_29
.LBB7_29:                               # %do.end
                                        #   in Loop: Header=BB7_7 Depth=1
	jmp	.LBB7_30
.LBB7_30:                               # %do.body.100
                                        #   in Loop: Header=BB7_7 Depth=1
	movq	-120(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -120(%rbp)
	movq	-40(%rbp), %rdi
	callq	STRING_MULTIBYTE
	testb	$1, %al
	jne	.LBB7_31
	jmp	.LBB7_41
.LBB7_31:                               # %if.then.103
                                        #   in Loop: Header=BB7_7 Depth=1
	movq	-128(%rbp), %rax
	movq	-40(%rbp), %rdi
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	SDATA
	movq	-256(%rbp), %rdi        # 8-byte Reload
	addq	%rdi, %rax
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB7_33
# BB#32:                                # %cond.true.112
                                        #   in Loop: Header=BB7_7 Depth=1
	movl	$1, -164(%rbp)
	movq	-160(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -260(%rbp)        # 4-byte Spill
	jmp	.LBB7_40
.LBB7_33:                               # %cond.false.115
                                        #   in Loop: Header=BB7_7 Depth=1
	movq	-160(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB7_35
# BB#34:                                # %cond.true.120
                                        #   in Loop: Header=BB7_7 Depth=1
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
	movl	$2, -164(%rbp)
	movq	-160(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$31, %esi
	shll	$6, %esi
	movq	-160(%rbp), %rdx
	movzbl	1(%rdx), %edi
	andl	$63, %edi
	orl	%edi, %esi
	movq	-160(%rbp), %rdx
	movzbl	(%rdx), %edi
	cmpl	$194, %edi
	cmovll	%ecx, %eax
	addl	%eax, %esi
	movl	%esi, -264(%rbp)        # 4-byte Spill
	jmp	.LBB7_39
.LBB7_35:                               # %cond.false.135
                                        #   in Loop: Header=BB7_7 Depth=1
	movq	-160(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB7_37
# BB#36:                                # %cond.true.140
                                        #   in Loop: Header=BB7_7 Depth=1
	movl	$3, -164(%rbp)
	movq	-160(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$15, %ecx
	shll	$12, %ecx
	movq	-160(%rbp), %rax
	movzbl	1(%rax), %edx
	andl	$63, %edx
	shll	$6, %edx
	orl	%edx, %ecx
	movq	-160(%rbp), %rax
	movzbl	2(%rax), %edx
	andl	$63, %edx
	orl	%edx, %ecx
	movl	%ecx, -268(%rbp)        # 4-byte Spill
	jmp	.LBB7_38
.LBB7_37:                               # %cond.false.154
                                        #   in Loop: Header=BB7_7 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-164(%rbp), %rdx
	movq	-160(%rbp), %rdi
	callq	string_char
	movl	%eax, -268(%rbp)        # 4-byte Spill
.LBB7_38:                               # %cond.end.156
                                        #   in Loop: Header=BB7_7 Depth=1
	movl	-268(%rbp), %eax        # 4-byte Reload
	movl	%eax, -264(%rbp)        # 4-byte Spill
.LBB7_39:                               # %cond.end.158
                                        #   in Loop: Header=BB7_7 Depth=1
	movl	-264(%rbp), %eax        # 4-byte Reload
	movl	%eax, -260(%rbp)        # 4-byte Spill
.LBB7_40:                               # %cond.end.160
                                        #   in Loop: Header=BB7_7 Depth=1
	movl	-260(%rbp), %eax        # 4-byte Reload
	movl	%eax, -136(%rbp)
	movslq	-164(%rbp), %rcx
	addq	-128(%rbp), %rcx
	movq	%rcx, -128(%rbp)
	jmp	.LBB7_47
.LBB7_41:                               # %if.else.164
                                        #   in Loop: Header=BB7_7 Depth=1
	movq	-40(%rbp), %rdi
	movq	-128(%rbp), %rsi
	callq	SREF
	movb	$1, %cl
	movzbl	%al, %edx
	movl	%edx, -136(%rbp)
	movq	-128(%rbp), %rsi
	addq	$1, %rsi
	movq	%rsi, -128(%rbp)
	testb	$1, %cl
	jne	.LBB7_42
	jmp	.LBB7_43
.LBB7_42:                               # %cond.true.168
                                        #   in Loop: Header=BB7_7 Depth=1
	movl	-136(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB7_44
	jmp	.LBB7_45
.LBB7_43:                               # %cond.false.172
                                        #   in Loop: Header=BB7_7 Depth=1
	movslq	-136(%rbp), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB7_45
.LBB7_44:                               # %cond.true.177
                                        #   in Loop: Header=BB7_7 Depth=1
	movl	-136(%rbp), %eax
	movl	%eax, -272(%rbp)        # 4-byte Spill
	jmp	.LBB7_46
.LBB7_45:                               # %cond.false.178
                                        #   in Loop: Header=BB7_7 Depth=1
	movl	-136(%rbp), %eax
	addl	$4194048, %eax          # imm = 0x3FFF00
	movl	%eax, -272(%rbp)        # 4-byte Spill
.LBB7_46:                               # %cond.end.180
                                        #   in Loop: Header=BB7_7 Depth=1
	movl	-272(%rbp), %eax        # 4-byte Reload
	movl	%eax, -136(%rbp)
.LBB7_47:                               # %if.end.182
                                        #   in Loop: Header=BB7_7 Depth=1
	jmp	.LBB7_48
.LBB7_48:                               # %do.end.183
                                        #   in Loop: Header=BB7_7 Depth=1
	movl	-132(%rbp), %eax
	cmpl	-136(%rbp), %eax
	jne	.LBB7_50
# BB#49:                                # %if.then.186
                                        #   in Loop: Header=BB7_7 Depth=1
	jmp	.LBB7_7
.LBB7_50:                               # %if.end.187
                                        #   in Loop: Header=BB7_7 Depth=1
	xorl	%edi, %edi
	movq	-64(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-280(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB7_52
# BB#51:                                # %if.then.191
                                        #   in Loop: Header=BB7_7 Depth=1
	movslq	-132(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rdi
	callq	Fupcase
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -132(%rbp)
	movslq	-136(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rdi
	callq	Fupcase
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -136(%rbp)
.LBB7_52:                               # %if.end.204
                                        #   in Loop: Header=BB7_7 Depth=1
	movl	-132(%rbp), %eax
	cmpl	-136(%rbp), %eax
	jne	.LBB7_54
# BB#53:                                # %if.then.207
                                        #   in Loop: Header=BB7_7 Depth=1
	jmp	.LBB7_7
.LBB7_54:                               # %if.end.208
	movl	-132(%rbp), %eax
	cmpl	-136(%rbp), %eax
	jge	.LBB7_56
# BB#55:                                # %if.then.211
	xorl	%eax, %eax
	movl	%eax, %ecx
	subq	-104(%rbp), %rcx
	addq	-72(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rcx, -8(%rbp)
	jmp	.LBB7_62
.LBB7_56:                               # %if.else.215
	movq	-104(%rbp), %rax
	subq	-72(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB7_62
.LBB7_57:                               # %while.end
	movq	-104(%rbp), %rax
	cmpq	-80(%rbp), %rax
	jge	.LBB7_59
# BB#58:                                # %if.then.221
	movq	-104(%rbp), %rax
	subq	-72(%rbp), %rax
	addq	$1, %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB7_62
.LBB7_59:                               # %if.end.226
	movq	-120(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jge	.LBB7_61
# BB#60:                                # %if.then.229
	xorl	%eax, %eax
	movl	%eax, %ecx
	subq	-104(%rbp), %rcx
	addq	-72(%rbp), %rcx
	subq	$1, %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rcx, -8(%rbp)
	jmp	.LBB7_62
.LBB7_61:                               # %if.end.235
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB7_62:                               # %return
	movq	-8(%rbp), %rax
	addq	$288, %rsp              # imm = 0x120
	popq	%rbp
	retq
.Lfunc_end7:
	.size	Fcompare_strings, .Lfunc_end7-Fcompare_strings
	.cfi_endproc

	.globl	validate_subarray
	.align	16, 0x90
	.type	validate_subarray,@function
validate_subarray:                      # @validate_subarray
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-16(%rbp), %rcx
	andq	$7, %rcx
	movl	%ecx, %eax
	andl	$-5, %eax
	cmpl	$2, %eax
	jne	.LBB8_4
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jge	.LBB8_3
# BB#2:                                 # %if.then.5
	movq	-32(%rbp), %rax
	addq	-56(%rbp), %rax
	movq	%rax, -56(%rbp)
.LBB8_3:                                # %if.end
	jmp	.LBB8_8
.LBB8_4:                                # %if.else
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB8_6
# BB#5:                                 # %if.then.8
	movq	$0, -56(%rbp)
	jmp	.LBB8_7
.LBB8_6:                                # %if.else.9
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB8_7:                                # %if.end.11
	jmp	.LBB8_8
.LBB8_8:                                # %if.end.12
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB8_12
# BB#9:                                 # %if.then.18
	movq	-24(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jge	.LBB8_11
# BB#10:                                # %if.then.22
	movq	-32(%rbp), %rax
	addq	-64(%rbp), %rax
	movq	%rax, -64(%rbp)
.LBB8_11:                               # %if.end.24
	jmp	.LBB8_16
.LBB8_12:                               # %if.else.25
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB8_14
# BB#13:                                # %if.then.29
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB8_15
.LBB8_14:                               # %if.else.30
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -96(%rbp)         # 8-byte Spill
.LBB8_15:                               # %if.end.32
	jmp	.LBB8_16
.LBB8_16:                               # %if.end.33
	xorl	%eax, %eax
	movl	%eax, %ecx
	cmpq	-56(%rbp), %rcx
	jg	.LBB8_19
# BB#17:                                # %land.lhs.true
	movq	-56(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jg	.LBB8_19
# BB#18:                                # %land.lhs.true.38
	movq	-64(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jle	.LBB8_20
.LBB8_19:                               # %if.then.41
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	args_out_of_range_3
.LBB8_20:                               # %if.end.42
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-64(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	validate_subarray, .Lfunc_end8-validate_subarray
	.cfi_endproc

	.globl	string_char_to_byte
	.align	16, 0x90
	.type	string_char_to_byte,@function
string_char_to_byte:                    # @string_char_to_byte
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
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -40(%rbp)
	movq	-16(%rbp), %rdi
	callq	SCHARS
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rdi
	callq	SBYTES
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB9_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB9_29
.LBB9_2:                                # %if.end
	movq	-16(%rbp), %rax
	cmpq	string_char_byte_cache_string, %rax
	jne	.LBB9_7
# BB#3:                                 # %if.then.3
	movq	string_char_byte_cache_charpos, %rax
	cmpq	-24(%rbp), %rax
	jge	.LBB9_5
# BB#4:                                 # %if.then.5
	movq	string_char_byte_cache_charpos, %rax
	movq	%rax, -40(%rbp)
	movq	string_char_byte_cache_bytepos, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB9_6
.LBB9_5:                                # %if.else
	movq	string_char_byte_cache_charpos, %rax
	movq	%rax, -56(%rbp)
	movq	string_char_byte_cache_bytepos, %rax
	movq	%rax, -64(%rbp)
.LBB9_6:                                # %if.end.6
	jmp	.LBB9_7
.LBB9_7:                                # %if.end.7
	movq	-24(%rbp), %rax
	subq	-40(%rbp), %rax
	movq	-56(%rbp), %rcx
	subq	-24(%rbp), %rcx
	cmpq	%rcx, %rax
	jge	.LBB9_21
# BB#8:                                 # %if.then.10
	movq	-16(%rbp), %rdi
	callq	SDATA
	addq	-48(%rbp), %rax
	movq	%rax, -72(%rbp)
.LBB9_9:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jge	.LBB9_20
# BB#10:                                # %while.body
                                        #   in Loop: Header=BB9_9 Depth=1
	movq	-72(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB9_12
# BB#11:                                # %cond.true
                                        #   in Loop: Header=BB9_9 Depth=1
	movl	$1, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	jmp	.LBB9_19
.LBB9_12:                               # %cond.false
                                        #   in Loop: Header=BB9_9 Depth=1
	movq	-72(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB9_14
# BB#13:                                # %cond.true.16
                                        #   in Loop: Header=BB9_9 Depth=1
	movl	$2, %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	jmp	.LBB9_18
.LBB9_14:                               # %cond.false.17
                                        #   in Loop: Header=BB9_9 Depth=1
	movq	-72(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB9_16
# BB#15:                                # %cond.true.21
                                        #   in Loop: Header=BB9_9 Depth=1
	movl	$3, %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	jmp	.LBB9_17
.LBB9_16:                               # %cond.false.22
                                        #   in Loop: Header=BB9_9 Depth=1
	movl	$5, %eax
	movl	$4, %ecx
	movq	-72(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$8, %esi
	cmpl	$0, %esi
	setne	%dil
	xorb	$-1, %dil
	testb	$1, %dil
	cmovnel	%ecx, %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
.LBB9_17:                               # %cond.end
                                        #   in Loop: Header=BB9_9 Depth=1
	movl	-92(%rbp), %eax         # 4-byte Reload
	movl	%eax, -88(%rbp)         # 4-byte Spill
.LBB9_18:                               # %cond.end.27
                                        #   in Loop: Header=BB9_9 Depth=1
	movl	-88(%rbp), %eax         # 4-byte Reload
	movl	%eax, -84(%rbp)         # 4-byte Spill
.LBB9_19:                               # %cond.end.29
                                        #   in Loop: Header=BB9_9 Depth=1
	movl	-84(%rbp), %eax         # 4-byte Reload
	movq	-72(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -72(%rbp)
	movq	-40(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -40(%rbp)
	jmp	.LBB9_9
.LBB9_20:                               # %while.end
	movq	-72(%rbp), %rax
	movq	-16(%rbp), %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	SDATA
	movq	-104(%rbp), %rdi        # 8-byte Reload
	subq	%rax, %rdi
	movq	%rdi, -32(%rbp)
	jmp	.LBB9_28
.LBB9_21:                               # %if.else.33
	movq	-16(%rbp), %rdi
	callq	SDATA
	addq	-64(%rbp), %rax
	movq	%rax, -80(%rbp)
.LBB9_22:                               # %while.cond.37
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_24 Depth 2
	movq	-56(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jle	.LBB9_27
# BB#23:                                # %while.body.40
                                        #   in Loop: Header=BB9_22 Depth=1
	movq	-80(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -80(%rbp)
.LBB9_24:                               # %while.cond.41
                                        #   Parent Loop BB9_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-80(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$192, %ecx
	cmpl	$128, %ecx
	setne	%dl
	xorb	$-1, %dl
	testb	$1, %dl
	jne	.LBB9_25
	jmp	.LBB9_26
.LBB9_25:                               # %while.body.47
                                        #   in Loop: Header=BB9_24 Depth=2
	movq	-80(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -80(%rbp)
	jmp	.LBB9_24
.LBB9_26:                               # %while.end.49
                                        #   in Loop: Header=BB9_22 Depth=1
	movq	-56(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB9_22
.LBB9_27:                               # %while.end.50
	movq	-80(%rbp), %rax
	movq	-16(%rbp), %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	SDATA
	movq	-112(%rbp), %rdi        # 8-byte Reload
	subq	%rax, %rdi
	movq	%rdi, -32(%rbp)
.LBB9_28:                               # %if.end.55
	movq	-32(%rbp), %rax
	movq	%rax, string_char_byte_cache_bytepos
	movq	-24(%rbp), %rax
	movq	%rax, string_char_byte_cache_charpos
	movq	-16(%rbp), %rax
	movq	%rax, string_char_byte_cache_string
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB9_29:                               # %return
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	string_char_to_byte, .Lfunc_end9-string_char_to_byte
	.cfi_endproc

	.globl	Fstring_lessp
	.align	16, 0x90
	.type	Fstring_lessp,@function
Fstring_lessp:                          # @Fstring_lessp
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
	subq	$192, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	andq	$7, %rsi
	movl	%esi, %eax
	cmpl	$0, %eax
	jne	.LBB10_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	callq	SYMBOL_NAME
	movq	%rax, -16(%rbp)
.LBB10_2:                               # %if.end
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB10_4
# BB#3:                                 # %if.then.6
	movq	-24(%rbp), %rdi
	callq	SYMBOL_NAME
	movq	%rax, -24(%rbp)
.LBB10_4:                               # %if.end.8
	movq	-16(%rbp), %rdi
	callq	CHECK_STRING
	movq	-24(%rbp), %rdi
	callq	CHECK_STRING
	movq	$0, -64(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -40(%rbp)
	movq	-16(%rbp), %rdi
	callq	SCHARS
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	SCHARS
	movq	-112(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jle	.LBB10_6
# BB#5:                                 # %if.then.13
	movq	-24(%rbp), %rdi
	callq	SCHARS
	movq	%rax, -32(%rbp)
.LBB10_6:                               # %if.end.15
	jmp	.LBB10_7
.LBB10_7:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jge	.LBB10_42
# BB#8:                                 # %while.body
                                        #   in Loop: Header=BB10_7 Depth=1
	jmp	.LBB10_9
.LBB10_9:                               # %do.body
                                        #   in Loop: Header=BB10_7 Depth=1
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rdi
	callq	STRING_MULTIBYTE
	testb	$1, %al
	jne	.LBB10_10
	jmp	.LBB10_20
.LBB10_10:                              # %if.then.19
                                        #   in Loop: Header=BB10_7 Depth=1
	movq	-48(%rbp), %rax
	movq	-16(%rbp), %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	SDATA
	movq	-120(%rbp), %rdi        # 8-byte Reload
	addq	%rdi, %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB10_12
# BB#11:                                # %cond.true
                                        #   in Loop: Header=BB10_7 Depth=1
	movl	$1, -84(%rbp)
	movq	-80(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -124(%rbp)        # 4-byte Spill
	jmp	.LBB10_19
.LBB10_12:                              # %cond.false
                                        #   in Loop: Header=BB10_7 Depth=1
	movq	-80(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB10_14
# BB#13:                                # %cond.true.30
                                        #   in Loop: Header=BB10_7 Depth=1
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
	movl	$2, -84(%rbp)
	movq	-80(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$31, %esi
	shll	$6, %esi
	movq	-80(%rbp), %rdx
	movzbl	1(%rdx), %edi
	andl	$63, %edi
	orl	%edi, %esi
	movq	-80(%rbp), %rdx
	movzbl	(%rdx), %edi
	cmpl	$194, %edi
	cmovll	%ecx, %eax
	addl	%eax, %esi
	movl	%esi, -128(%rbp)        # 4-byte Spill
	jmp	.LBB10_18
.LBB10_14:                              # %cond.false.41
                                        #   in Loop: Header=BB10_7 Depth=1
	movq	-80(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB10_16
# BB#15:                                # %cond.true.46
                                        #   in Loop: Header=BB10_7 Depth=1
	movl	$3, -84(%rbp)
	movq	-80(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$15, %ecx
	shll	$12, %ecx
	movq	-80(%rbp), %rax
	movzbl	1(%rax), %edx
	andl	$63, %edx
	shll	$6, %edx
	orl	%edx, %ecx
	movq	-80(%rbp), %rax
	movzbl	2(%rax), %edx
	andl	$63, %edx
	orl	%edx, %ecx
	movl	%ecx, -132(%rbp)        # 4-byte Spill
	jmp	.LBB10_17
.LBB10_16:                              # %cond.false.60
                                        #   in Loop: Header=BB10_7 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-84(%rbp), %rdx
	movq	-80(%rbp), %rdi
	callq	string_char
	movl	%eax, -132(%rbp)        # 4-byte Spill
.LBB10_17:                              # %cond.end
                                        #   in Loop: Header=BB10_7 Depth=1
	movl	-132(%rbp), %eax        # 4-byte Reload
	movl	%eax, -128(%rbp)        # 4-byte Spill
.LBB10_18:                              # %cond.end.63
                                        #   in Loop: Header=BB10_7 Depth=1
	movl	-128(%rbp), %eax        # 4-byte Reload
	movl	%eax, -124(%rbp)        # 4-byte Spill
.LBB10_19:                              # %cond.end.65
                                        #   in Loop: Header=BB10_7 Depth=1
	movl	-124(%rbp), %eax        # 4-byte Reload
	movl	%eax, -68(%rbp)
	movslq	-84(%rbp), %rcx
	addq	-48(%rbp), %rcx
	movq	%rcx, -48(%rbp)
	jmp	.LBB10_21
.LBB10_20:                              # %if.else
                                        #   in Loop: Header=BB10_7 Depth=1
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	SREF
	movzbl	%al, %ecx
	movl	%ecx, -68(%rbp)
	movq	-48(%rbp), %rsi
	addq	$1, %rsi
	movq	%rsi, -48(%rbp)
.LBB10_21:                              # %if.end.72
                                        #   in Loop: Header=BB10_7 Depth=1
	jmp	.LBB10_22
.LBB10_22:                              # %do.end
                                        #   in Loop: Header=BB10_7 Depth=1
	jmp	.LBB10_23
.LBB10_23:                              # %do.body.73
                                        #   in Loop: Header=BB10_7 Depth=1
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rdi
	callq	STRING_MULTIBYTE
	testb	$1, %al
	jne	.LBB10_24
	jmp	.LBB10_34
.LBB10_24:                              # %if.then.76
                                        #   in Loop: Header=BB10_7 Depth=1
	movq	-64(%rbp), %rax
	movq	-24(%rbp), %rdi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	SDATA
	movq	-144(%rbp), %rdi        # 8-byte Reload
	addq	%rdi, %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB10_26
# BB#25:                                # %cond.true.85
                                        #   in Loop: Header=BB10_7 Depth=1
	movl	$1, -100(%rbp)
	movq	-96(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -148(%rbp)        # 4-byte Spill
	jmp	.LBB10_33
.LBB10_26:                              # %cond.false.88
                                        #   in Loop: Header=BB10_7 Depth=1
	movq	-96(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB10_28
# BB#27:                                # %cond.true.93
                                        #   in Loop: Header=BB10_7 Depth=1
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
	movl	$2, -100(%rbp)
	movq	-96(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$31, %esi
	shll	$6, %esi
	movq	-96(%rbp), %rdx
	movzbl	1(%rdx), %edi
	andl	$63, %edi
	orl	%edi, %esi
	movq	-96(%rbp), %rdx
	movzbl	(%rdx), %edi
	cmpl	$194, %edi
	cmovll	%ecx, %eax
	addl	%eax, %esi
	movl	%esi, -152(%rbp)        # 4-byte Spill
	jmp	.LBB10_32
.LBB10_28:                              # %cond.false.108
                                        #   in Loop: Header=BB10_7 Depth=1
	movq	-96(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB10_30
# BB#29:                                # %cond.true.113
                                        #   in Loop: Header=BB10_7 Depth=1
	movl	$3, -100(%rbp)
	movq	-96(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$15, %ecx
	shll	$12, %ecx
	movq	-96(%rbp), %rax
	movzbl	1(%rax), %edx
	andl	$63, %edx
	shll	$6, %edx
	orl	%edx, %ecx
	movq	-96(%rbp), %rax
	movzbl	2(%rax), %edx
	andl	$63, %edx
	orl	%edx, %ecx
	movl	%ecx, -156(%rbp)        # 4-byte Spill
	jmp	.LBB10_31
.LBB10_30:                              # %cond.false.127
                                        #   in Loop: Header=BB10_7 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-100(%rbp), %rdx
	movq	-96(%rbp), %rdi
	callq	string_char
	movl	%eax, -156(%rbp)        # 4-byte Spill
.LBB10_31:                              # %cond.end.129
                                        #   in Loop: Header=BB10_7 Depth=1
	movl	-156(%rbp), %eax        # 4-byte Reload
	movl	%eax, -152(%rbp)        # 4-byte Spill
.LBB10_32:                              # %cond.end.131
                                        #   in Loop: Header=BB10_7 Depth=1
	movl	-152(%rbp), %eax        # 4-byte Reload
	movl	%eax, -148(%rbp)        # 4-byte Spill
.LBB10_33:                              # %cond.end.133
                                        #   in Loop: Header=BB10_7 Depth=1
	movl	-148(%rbp), %eax        # 4-byte Reload
	movl	%eax, -72(%rbp)
	movslq	-100(%rbp), %rcx
	addq	-64(%rbp), %rcx
	movq	%rcx, -64(%rbp)
	jmp	.LBB10_35
.LBB10_34:                              # %if.else.137
                                        #   in Loop: Header=BB10_7 Depth=1
	movq	-24(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	SREF
	movzbl	%al, %ecx
	movl	%ecx, -72(%rbp)
	movq	-64(%rbp), %rsi
	addq	$1, %rsi
	movq	%rsi, -64(%rbp)
.LBB10_35:                              # %if.end.141
                                        #   in Loop: Header=BB10_7 Depth=1
	jmp	.LBB10_36
.LBB10_36:                              # %do.end.142
                                        #   in Loop: Header=BB10_7 Depth=1
	movl	-68(%rbp), %eax
	cmpl	-72(%rbp), %eax
	je	.LBB10_41
# BB#37:                                # %if.then.145
	movl	-68(%rbp), %eax
	cmpl	-72(%rbp), %eax
	jge	.LBB10_39
# BB#38:                                # %cond.true.148
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -168(%rbp)        # 8-byte Spill
	jmp	.LBB10_40
.LBB10_39:                              # %cond.false.150
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -168(%rbp)        # 8-byte Spill
.LBB10_40:                              # %cond.end.152
	movq	-168(%rbp), %rax        # 8-byte Reload
	movq	%rax, -8(%rbp)
	jmp	.LBB10_46
.LBB10_41:                              # %if.end.154
                                        #   in Loop: Header=BB10_7 Depth=1
	jmp	.LBB10_7
.LBB10_42:                              # %while.end
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rdi
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	SCHARS
	movq	-176(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jge	.LBB10_44
# BB#43:                                # %cond.true.158
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -184(%rbp)        # 8-byte Spill
	jmp	.LBB10_45
.LBB10_44:                              # %cond.false.160
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -184(%rbp)        # 8-byte Spill
.LBB10_45:                              # %cond.end.162
	movq	-184(%rbp), %rax        # 8-byte Reload
	movq	%rax, -8(%rbp)
.LBB10_46:                              # %return
	movq	-8(%rbp), %rax
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	Fstring_lessp, .Lfunc_end10-Fstring_lessp
	.cfi_endproc

	.globl	Fstring_collate_lessp
	.align	16, 0x90
	.type	Fstring_collate_lessp,@function
Fstring_collate_lessp:                  # @Fstring_collate_lessp
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rcx
	andq	$7, %rcx
	movl	%ecx, %eax
	cmpl	$0, %eax
	jne	.LBB11_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	SYMBOL_NAME
	movq	%rax, -8(%rbp)
.LBB11_2:                               # %if.end
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB11_4
# BB#3:                                 # %if.then.6
	movq	-16(%rbp), %rdi
	callq	SYMBOL_NAME
	movq	%rax, -16(%rbp)
.LBB11_4:                               # %if.end.8
	movq	-8(%rbp), %rdi
	callq	CHECK_STRING
	movq	-16(%rbp), %rdi
	callq	CHECK_STRING
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB11_6
# BB#5:                                 # %if.then.12
	movq	-24(%rbp), %rdi
	callq	CHECK_STRING
.LBB11_6:                               # %if.end.13
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	callq	str_collate
	cmpl	$0, %eax
	jge	.LBB11_8
# BB#7:                                 # %cond.true
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB11_9
.LBB11_8:                               # %cond.false
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB11_9:                               # %cond.end
	movq	-48(%rbp), %rax         # 8-byte Reload
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	Fstring_collate_lessp, .Lfunc_end11-Fstring_collate_lessp
	.cfi_endproc

	.globl	Fstring_collate_equalp
	.align	16, 0x90
	.type	Fstring_collate_equalp,@function
Fstring_collate_equalp:                 # @Fstring_collate_equalp
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rcx
	andq	$7, %rcx
	movl	%ecx, %eax
	cmpl	$0, %eax
	jne	.LBB12_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	SYMBOL_NAME
	movq	%rax, -8(%rbp)
.LBB12_2:                               # %if.end
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB12_4
# BB#3:                                 # %if.then.6
	movq	-16(%rbp), %rdi
	callq	SYMBOL_NAME
	movq	%rax, -16(%rbp)
.LBB12_4:                               # %if.end.8
	movq	-8(%rbp), %rdi
	callq	CHECK_STRING
	movq	-16(%rbp), %rdi
	callq	CHECK_STRING
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB12_6
# BB#5:                                 # %if.then.12
	movq	-24(%rbp), %rdi
	callq	CHECK_STRING
.LBB12_6:                               # %if.end.13
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	callq	str_collate
	cmpl	$0, %eax
	jne	.LBB12_8
# BB#7:                                 # %cond.true
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB12_9
.LBB12_8:                               # %cond.false
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB12_9:                               # %cond.end
	movq	-48(%rbp), %rax         # 8-byte Reload
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	Fstring_collate_equalp, .Lfunc_end12-Fstring_collate_equalp
	.cfi_endproc

	.globl	concat2
	.align	16, 0x90
	.type	concat2,@function
concat2:                                # @concat2
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
	subq	$32, %rsp
	movl	$2, %eax
	movl	%eax, %ecx
	movl	$4, %edx
	xorl	%eax, %eax
	leaq	-32(%rbp), %r8
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -32(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	movq	%rcx, %rdi
	movq	%r8, %rsi
	movl	%eax, %ecx
	callq	concat
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	concat2, .Lfunc_end13-concat2
	.cfi_endproc

	.align	16, 0x90
	.type	concat,@function
concat:                                 # @concat
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
	subq	$560, %rsp              # imm = 0x230
	movb	%cl, %al
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	andb	$1, %al
	movb	%al, -29(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -128(%rbp)
	movq	$0, -136(%rbp)
	movq	$16384, -144(%rbp)      # imm = 0x4000
	callq	SPECPDL_INDEX
	xorl	%edi, %edi
	movq	%rax, -152(%rbp)
	movb	$0, -153(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, -48(%rbp)
	testb	$1, -29(%rbp)
	je	.LBB14_3
# BB#1:                                 # %land.lhs.true
	cmpq	$0, -16(%rbp)
	jle	.LBB14_3
# BB#2:                                 # %if.then
	movq	-16(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -104(%rbp)
	jmp	.LBB14_4
.LBB14_3:                               # %if.else
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -104(%rbp)
.LBB14_4:                               # %if.end
	movq	$0, -96(%rbp)
.LBB14_5:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-96(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jge	.LBB14_15
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB14_5 Depth=1
	movq	-96(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %edx
	cmpl	$3, %edx
	je	.LBB14_13
# BB#7:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB14_5 Depth=1
	xorl	%edi, %edi
	movq	-56(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-296(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB14_13
# BB#8:                                 # %lor.lhs.false.10
                                        #   in Loop: Header=BB14_5 Depth=1
	movq	-56(%rbp), %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB14_13
# BB#9:                                 # %lor.lhs.false.13
                                        #   in Loop: Header=BB14_5 Depth=1
	movq	-56(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB14_13
# BB#10:                                # %lor.lhs.false.16
                                        #   in Loop: Header=BB14_5 Depth=1
	movq	-56(%rbp), %rdi
	callq	COMPILEDP
	testb	$1, %al
	jne	.LBB14_13
# BB#11:                                # %lor.lhs.false.19
                                        #   in Loop: Header=BB14_5 Depth=1
	movq	-56(%rbp), %rdi
	callq	BOOL_VECTOR_P
	testb	$1, %al
	jne	.LBB14_13
# BB#12:                                # %if.then.22
	movl	$844, %edi              # imm = 0x34C
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -304(%rbp)        # 8-byte Spill
.LBB14_13:                              # %if.end.24
                                        #   in Loop: Header=BB14_5 Depth=1
	jmp	.LBB14_14
.LBB14_14:                              # %for.inc
                                        #   in Loop: Header=BB14_5 Depth=1
	movq	-96(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -96(%rbp)
	jmp	.LBB14_5
.LBB14_15:                              # %for.end
	movq	$0, -88(%rbp)
	movq	$0, -80(%rbp)
	movb	$0, -113(%rbp)
	movq	$0, -96(%rbp)
.LBB14_16:                              # %for.cond.25
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_21 Depth 2
                                        #     Child Loop BB14_53 Depth 2
	movq	-96(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jge	.LBB14_95
# BB#17:                                # %for.body.28
                                        #   in Loop: Header=BB14_16 Depth=1
	movq	-96(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	Flength
	sarq	$2, %rax
	movq	%rax, -168(%rbp)
	cmpl	$4, -28(%rbp)
	jne	.LBB14_91
# BB#18:                                # %if.then.33
                                        #   in Loop: Header=BB14_16 Depth=1
	movq	-56(%rbp), %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB14_20
# BB#19:                                # %lor.lhs.false.36
                                        #   in Loop: Header=BB14_16 Depth=1
	movq	-56(%rbp), %rdi
	callq	COMPILEDP
	testb	$1, %al
	jne	.LBB14_20
	jmp	.LBB14_48
.LBB14_20:                              # %if.then.39
                                        #   in Loop: Header=BB14_16 Depth=1
	movq	$0, -176(%rbp)
.LBB14_21:                              # %for.cond.40
                                        #   Parent Loop BB14_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-176(%rbp), %rax
	cmpq	-168(%rbp), %rax
	jge	.LBB14_47
# BB#22:                                # %for.body.43
                                        #   in Loop: Header=BB14_21 Depth=2
	movq	-56(%rbp), %rdi
	movq	-176(%rbp), %rsi
	callq	AREF
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %rdi
	callq	NATNUMP
	testb	$1, %al
	jne	.LBB14_23
	jmp	.LBB14_25
.LBB14_23:                              # %land.lhs.true.47
                                        #   in Loop: Header=BB14_21 Depth=2
	movq	-184(%rbp), %rax
	sarq	$2, %rax
	cmpq	$4194303, %rax          # imm = 0x3FFFFF
	jg	.LBB14_25
# BB#24:                                # %cond.true
                                        #   in Loop: Header=BB14_21 Depth=2
	jmp	.LBB14_26
.LBB14_25:                              # %cond.false
	movl	$260, %edi              # imm = 0x104
	callq	builtin_lisp_symbol
	movq	-184(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -312(%rbp)        # 8-byte Spill
.LBB14_26:                              # %cond.end
                                        #   in Loop: Header=BB14_21 Depth=2
	movq	-184(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -188(%rbp)
	cmpl	$127, -188(%rbp)
	jg	.LBB14_28
# BB#27:                                # %cond.true.56
                                        #   in Loop: Header=BB14_21 Depth=2
	movl	$1, %eax
	movl	%eax, -316(%rbp)        # 4-byte Spill
	jmp	.LBB14_38
.LBB14_28:                              # %cond.false.57
                                        #   in Loop: Header=BB14_21 Depth=2
	cmpl	$2047, -188(%rbp)       # imm = 0x7FF
	jg	.LBB14_30
# BB#29:                                # %cond.true.60
                                        #   in Loop: Header=BB14_21 Depth=2
	movl	$2, %eax
	movl	%eax, -320(%rbp)        # 4-byte Spill
	jmp	.LBB14_37
.LBB14_30:                              # %cond.false.61
                                        #   in Loop: Header=BB14_21 Depth=2
	cmpl	$65535, -188(%rbp)      # imm = 0xFFFF
	jg	.LBB14_32
# BB#31:                                # %cond.true.64
                                        #   in Loop: Header=BB14_21 Depth=2
	movl	$3, %eax
	movl	%eax, -324(%rbp)        # 4-byte Spill
	jmp	.LBB14_36
.LBB14_32:                              # %cond.false.65
                                        #   in Loop: Header=BB14_21 Depth=2
	cmpl	$2097151, -188(%rbp)    # imm = 0x1FFFFF
	jg	.LBB14_34
# BB#33:                                # %cond.true.68
                                        #   in Loop: Header=BB14_21 Depth=2
	movl	$4, %eax
	movl	%eax, -328(%rbp)        # 4-byte Spill
	jmp	.LBB14_35
.LBB14_34:                              # %cond.false.69
                                        #   in Loop: Header=BB14_21 Depth=2
	movl	$2, %eax
	movl	$5, %ecx
	cmpl	$4194175, -188(%rbp)    # imm = 0x3FFF7F
	cmovlel	%ecx, %eax
	movl	%eax, -328(%rbp)        # 4-byte Spill
.LBB14_35:                              # %cond.end.72
                                        #   in Loop: Header=BB14_21 Depth=2
	movl	-328(%rbp), %eax        # 4-byte Reload
	movl	%eax, -324(%rbp)        # 4-byte Spill
.LBB14_36:                              # %cond.end.74
                                        #   in Loop: Header=BB14_21 Depth=2
	movl	-324(%rbp), %eax        # 4-byte Reload
	movl	%eax, -320(%rbp)        # 4-byte Spill
.LBB14_37:                              # %cond.end.76
                                        #   in Loop: Header=BB14_21 Depth=2
	movl	-320(%rbp), %eax        # 4-byte Reload
	movl	%eax, -316(%rbp)        # 4-byte Spill
.LBB14_38:                              # %cond.end.78
                                        #   in Loop: Header=BB14_21 Depth=2
	movl	-316(%rbp), %eax        # 4-byte Reload
	movabsq	$2305843009213693951, %rcx # imm = 0x1FFFFFFFFFFFFFFF
	movslq	%eax, %rdx
	movq	%rdx, -200(%rbp)
	subq	-88(%rbp), %rcx
	cmpq	-200(%rbp), %rcx
	jge	.LBB14_40
# BB#39:                                # %if.then.83
	callq	string_overflow
.LBB14_40:                              # %if.end.84
                                        #   in Loop: Header=BB14_21 Depth=2
	movb	$1, %al
	movq	-200(%rbp), %rcx
	addq	-88(%rbp), %rcx
	movq	%rcx, -88(%rbp)
	testb	$1, %al
	jne	.LBB14_41
	jmp	.LBB14_42
.LBB14_41:                              # %cond.true.85
                                        #   in Loop: Header=BB14_21 Depth=2
	movl	-188(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB14_45
	jmp	.LBB14_43
.LBB14_42:                              # %cond.false.89
                                        #   in Loop: Header=BB14_21 Depth=2
	movslq	-188(%rbp), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jb	.LBB14_45
.LBB14_43:                              # %land.lhs.true.94
                                        #   in Loop: Header=BB14_21 Depth=2
	cmpl	$4194175, -188(%rbp)    # imm = 0x3FFF7F
	jg	.LBB14_45
# BB#44:                                # %if.then.97
                                        #   in Loop: Header=BB14_21 Depth=2
	movb	$1, -113(%rbp)
.LBB14_45:                              # %if.end.98
                                        #   in Loop: Header=BB14_21 Depth=2
	jmp	.LBB14_46
.LBB14_46:                              # %for.inc.99
                                        #   in Loop: Header=BB14_21 Depth=2
	movq	-176(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -176(%rbp)
	jmp	.LBB14_21
.LBB14_47:                              # %for.end.101
                                        #   in Loop: Header=BB14_16 Depth=1
	jmp	.LBB14_90
.LBB14_48:                              # %if.else.102
                                        #   in Loop: Header=BB14_16 Depth=1
	movq	-56(%rbp), %rdi
	callq	BOOL_VECTOR_P
	testb	$1, %al
	jne	.LBB14_49
	jmp	.LBB14_51
.LBB14_49:                              # %land.lhs.true.105
                                        #   in Loop: Header=BB14_16 Depth=1
	movq	-56(%rbp), %rdi
	callq	bool_vector_size
	cmpq	$0, %rax
	jle	.LBB14_51
# BB#50:                                # %if.then.109
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	movl	$2, %edi
	movl	%edi, %esi
	movq	-56(%rbp), %rdi
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	Faref
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	wrong_type_argument
	movq	%rax, -344(%rbp)        # 8-byte Spill
.LBB14_51:                              # %if.else.112
                                        #   in Loop: Header=BB14_16 Depth=1
	movq	-56(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB14_80
# BB#52:                                # %if.then.117
                                        #   in Loop: Header=BB14_16 Depth=1
	jmp	.LBB14_53
.LBB14_53:                              # %for.cond.118
                                        #   Parent Loop BB14_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-56(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB14_79
# BB#54:                                # %for.body.123
                                        #   in Loop: Header=BB14_53 Depth=2
	movq	-56(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %rdi
	callq	NATNUMP
	testb	$1, %al
	jne	.LBB14_55
	jmp	.LBB14_57
.LBB14_55:                              # %land.lhs.true.127
                                        #   in Loop: Header=BB14_53 Depth=2
	movq	-184(%rbp), %rax
	sarq	$2, %rax
	cmpq	$4194303, %rax          # imm = 0x3FFFFF
	jg	.LBB14_57
# BB#56:                                # %cond.true.131
                                        #   in Loop: Header=BB14_53 Depth=2
	jmp	.LBB14_58
.LBB14_57:                              # %cond.false.132
	movl	$260, %edi              # imm = 0x104
	callq	builtin_lisp_symbol
	movq	-184(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -352(%rbp)        # 8-byte Spill
.LBB14_58:                              # %cond.end.134
                                        #   in Loop: Header=BB14_53 Depth=2
	movq	-184(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -188(%rbp)
	cmpl	$127, -188(%rbp)
	jg	.LBB14_60
# BB#59:                                # %cond.true.139
                                        #   in Loop: Header=BB14_53 Depth=2
	movl	$1, %eax
	movl	%eax, -356(%rbp)        # 4-byte Spill
	jmp	.LBB14_70
.LBB14_60:                              # %cond.false.140
                                        #   in Loop: Header=BB14_53 Depth=2
	cmpl	$2047, -188(%rbp)       # imm = 0x7FF
	jg	.LBB14_62
# BB#61:                                # %cond.true.143
                                        #   in Loop: Header=BB14_53 Depth=2
	movl	$2, %eax
	movl	%eax, -360(%rbp)        # 4-byte Spill
	jmp	.LBB14_69
.LBB14_62:                              # %cond.false.144
                                        #   in Loop: Header=BB14_53 Depth=2
	cmpl	$65535, -188(%rbp)      # imm = 0xFFFF
	jg	.LBB14_64
# BB#63:                                # %cond.true.147
                                        #   in Loop: Header=BB14_53 Depth=2
	movl	$3, %eax
	movl	%eax, -364(%rbp)        # 4-byte Spill
	jmp	.LBB14_68
.LBB14_64:                              # %cond.false.148
                                        #   in Loop: Header=BB14_53 Depth=2
	cmpl	$2097151, -188(%rbp)    # imm = 0x1FFFFF
	jg	.LBB14_66
# BB#65:                                # %cond.true.151
                                        #   in Loop: Header=BB14_53 Depth=2
	movl	$4, %eax
	movl	%eax, -368(%rbp)        # 4-byte Spill
	jmp	.LBB14_67
.LBB14_66:                              # %cond.false.152
                                        #   in Loop: Header=BB14_53 Depth=2
	movl	$2, %eax
	movl	$5, %ecx
	cmpl	$4194175, -188(%rbp)    # imm = 0x3FFF7F
	cmovlel	%ecx, %eax
	movl	%eax, -368(%rbp)        # 4-byte Spill
.LBB14_67:                              # %cond.end.156
                                        #   in Loop: Header=BB14_53 Depth=2
	movl	-368(%rbp), %eax        # 4-byte Reload
	movl	%eax, -364(%rbp)        # 4-byte Spill
.LBB14_68:                              # %cond.end.158
                                        #   in Loop: Header=BB14_53 Depth=2
	movl	-364(%rbp), %eax        # 4-byte Reload
	movl	%eax, -360(%rbp)        # 4-byte Spill
.LBB14_69:                              # %cond.end.160
                                        #   in Loop: Header=BB14_53 Depth=2
	movl	-360(%rbp), %eax        # 4-byte Reload
	movl	%eax, -356(%rbp)        # 4-byte Spill
.LBB14_70:                              # %cond.end.162
                                        #   in Loop: Header=BB14_53 Depth=2
	movl	-356(%rbp), %eax        # 4-byte Reload
	movabsq	$2305843009213693951, %rcx # imm = 0x1FFFFFFFFFFFFFFF
	movslq	%eax, %rdx
	movq	%rdx, -200(%rbp)
	subq	-88(%rbp), %rcx
	cmpq	-200(%rbp), %rcx
	jge	.LBB14_72
# BB#71:                                # %if.then.168
	callq	string_overflow
.LBB14_72:                              # %if.end.169
                                        #   in Loop: Header=BB14_53 Depth=2
	movb	$1, %al
	movq	-200(%rbp), %rcx
	addq	-88(%rbp), %rcx
	movq	%rcx, -88(%rbp)
	testb	$1, %al
	jne	.LBB14_73
	jmp	.LBB14_74
.LBB14_73:                              # %cond.true.171
                                        #   in Loop: Header=BB14_53 Depth=2
	movl	-188(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB14_77
	jmp	.LBB14_75
.LBB14_74:                              # %cond.false.175
                                        #   in Loop: Header=BB14_53 Depth=2
	movslq	-188(%rbp), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jb	.LBB14_77
.LBB14_75:                              # %land.lhs.true.180
                                        #   in Loop: Header=BB14_53 Depth=2
	cmpl	$4194175, -188(%rbp)    # imm = 0x3FFF7F
	jg	.LBB14_77
# BB#76:                                # %if.then.183
                                        #   in Loop: Header=BB14_53 Depth=2
	movb	$1, -113(%rbp)
.LBB14_77:                              # %if.end.184
                                        #   in Loop: Header=BB14_53 Depth=2
	jmp	.LBB14_78
.LBB14_78:                              # %for.inc.185
                                        #   in Loop: Header=BB14_53 Depth=2
	movq	-56(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB14_53
.LBB14_79:                              # %for.end.187
                                        #   in Loop: Header=BB14_16 Depth=1
	jmp	.LBB14_88
.LBB14_80:                              # %if.else.188
                                        #   in Loop: Header=BB14_16 Depth=1
	movq	-56(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB14_81
	jmp	.LBB14_87
.LBB14_81:                              # %if.then.190
                                        #   in Loop: Header=BB14_16 Depth=1
	movq	-56(%rbp), %rdi
	callq	STRING_MULTIBYTE
	testb	$1, %al
	jne	.LBB14_82
	jmp	.LBB14_83
.LBB14_82:                              # %if.then.192
                                        #   in Loop: Header=BB14_16 Depth=1
	movb	$1, -113(%rbp)
	movq	-56(%rbp), %rdi
	callq	SBYTES
	movq	%rax, -200(%rbp)
	jmp	.LBB14_84
.LBB14_83:                              # %if.else.194
                                        #   in Loop: Header=BB14_16 Depth=1
	movq	-56(%rbp), %rdi
	callq	SDATA
	movq	-56(%rbp), %rdi
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	SCHARS
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	count_size_as_multibyte
	movq	%rax, -200(%rbp)
.LBB14_84:                              # %if.end.198
                                        #   in Loop: Header=BB14_16 Depth=1
	movabsq	$2305843009213693951, %rax # imm = 0x1FFFFFFFFFFFFFFF
	subq	-88(%rbp), %rax
	cmpq	-200(%rbp), %rax
	jge	.LBB14_86
# BB#85:                                # %if.then.202
	callq	string_overflow
.LBB14_86:                              # %if.end.203
                                        #   in Loop: Header=BB14_16 Depth=1
	movq	-200(%rbp), %rax
	addq	-88(%rbp), %rax
	movq	%rax, -88(%rbp)
.LBB14_87:                              # %if.end.205
                                        #   in Loop: Header=BB14_16 Depth=1
	jmp	.LBB14_88
.LBB14_88:                              # %if.end.206
                                        #   in Loop: Header=BB14_16 Depth=1
	jmp	.LBB14_89
.LBB14_89:                              # %if.end.207
                                        #   in Loop: Header=BB14_16 Depth=1
	jmp	.LBB14_90
.LBB14_90:                              # %if.end.208
                                        #   in Loop: Header=BB14_16 Depth=1
	jmp	.LBB14_91
.LBB14_91:                              # %if.end.209
                                        #   in Loop: Header=BB14_16 Depth=1
	movabsq	$2305843009213693951, %rax # imm = 0x1FFFFFFFFFFFFFFF
	movq	-168(%rbp), %rcx
	addq	-80(%rbp), %rcx
	movq	%rcx, -80(%rbp)
	cmpq	-80(%rbp), %rax
	jge	.LBB14_93
# BB#92:                                # %if.then.213
	movq	$-1, %rdi
	callq	memory_full
.LBB14_93:                              # %if.end.214
                                        #   in Loop: Header=BB14_16 Depth=1
	jmp	.LBB14_94
.LBB14_94:                              # %for.inc.215
                                        #   in Loop: Header=BB14_16 Depth=1
	movq	-96(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -96(%rbp)
	jmp	.LBB14_16
.LBB14_95:                              # %for.end.217
	testb	$1, -113(%rbp)
	jne	.LBB14_97
# BB#96:                                # %if.then.219
	movq	-80(%rbp), %rax
	movq	%rax, -88(%rbp)
.LBB14_97:                              # %if.end.220
	cmpl	$3, -28(%rbp)
	jne	.LBB14_99
# BB#98:                                # %if.then.223
	xorl	%edi, %edi
	movq	-80(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fmake_list
	movq	%rax, -40(%rbp)
	jmp	.LBB14_106
.LBB14_99:                              # %if.else.227
	cmpl	$5, -28(%rbp)
	jne	.LBB14_101
# BB#100:                               # %if.then.230
	xorl	%edi, %edi
	movq	-80(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fmake_vector
	movq	%rax, -40(%rbp)
	jmp	.LBB14_105
.LBB14_101:                             # %if.else.235
	testb	$1, -113(%rbp)
	je	.LBB14_103
# BB#102:                               # %if.then.237
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	make_uninit_multibyte_string
	movq	%rax, -40(%rbp)
	jmp	.LBB14_104
.LBB14_103:                             # %if.else.239
	movq	-80(%rbp), %rdi
	callq	make_uninit_string
	movq	%rax, -40(%rbp)
.LBB14_104:                             # %if.end.241
	jmp	.LBB14_105
.LBB14_105:                             # %if.end.242
	jmp	.LBB14_106
.LBB14_106:                             # %if.end.243
	cmpl	$3, -28(%rbp)
	jne	.LBB14_109
# BB#107:                               # %land.lhs.true.246
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-400(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB14_109
# BB#108:                               # %if.then.250
	movq	-104(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB14_216
.LBB14_109:                             # %if.end.251
	movq	-40(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB14_111
# BB#110:                               # %if.then.256
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	$-1, -64(%rbp)
	jmp	.LBB14_112
.LBB14_111:                             # %if.else.257
	movq	$0, -64(%rbp)
	movq	$0, -72(%rbp)
.LBB14_112:                             # %if.end.258
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -112(%rbp)
	movq	-40(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB14_113
	jmp	.LBB14_119
.LBB14_113:                             # %if.then.261
	jmp	.LBB14_114
.LBB14_114:                             # %do.body
	movl	$24, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movq	-144(%rbp), %rax
	xorl	%esi, %esi
	movq	%rdx, -408(%rbp)        # 8-byte Spill
	movl	%esi, %edx
	divq	%rcx
	shrq	$0, %rax
	movq	-408(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	ja	.LBB14_116
# BB#115:                               # %if.then.265
	movq	-16(%rbp), %rax
	shlq	$3, %rax
	leaq	(%rax,%rax,2), %rax
	movq	-144(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -144(%rbp)
	movq	-16(%rbp), %rax
	leaq	(%rax,%rax,2), %rax
	leaq	15(,%rax,8), %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -128(%rbp)
	jmp	.LBB14_117
.LBB14_116:                             # %if.else.268
	movl	$24, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	xnmalloc
	movabsq	$xfree, %rdi
	movq	%rax, -128(%rbp)
	movb	$1, -153(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, %rsi
	callq	record_unwind_protect_ptr
.LBB14_117:                             # %if.end.270
	jmp	.LBB14_118
.LBB14_118:                             # %do.end
	jmp	.LBB14_119
.LBB14_119:                             # %if.end.271
	movq	$0, -96(%rbp)
.LBB14_120:                             # %for.cond.272
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_135 Depth 2
	movq	-96(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jge	.LBB14_201
# BB#121:                               # %for.body.275
                                        #   in Loop: Header=BB14_120 Depth=1
	movq	$0, -216(%rbp)
	movq	$0, -224(%rbp)
	movq	$0, -232(%rbp)
	movq	-96(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %edx
	cmpl	$3, %edx
	je	.LBB14_123
# BB#122:                               # %if.then.281
                                        #   in Loop: Header=BB14_120 Depth=1
	movq	-56(%rbp), %rdi
	callq	Flength
	movq	%rax, -208(%rbp)
	movq	-208(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -216(%rbp)
.LBB14_123:                             # %if.end.284
                                        #   in Loop: Header=BB14_120 Depth=1
	movq	-56(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB14_124
	jmp	.LBB14_129
.LBB14_124:                             # %land.lhs.true.287
                                        #   in Loop: Header=BB14_120 Depth=1
	movq	-40(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB14_125
	jmp	.LBB14_129
.LBB14_125:                             # %land.lhs.true.290
                                        #   in Loop: Header=BB14_120 Depth=1
	movq	-56(%rbp), %rdi
	callq	STRING_MULTIBYTE
	andb	$1, %al
	movzbl	%al, %ecx
	movb	-113(%rbp), %al
	andb	$1, %al
	movzbl	%al, %edx
	cmpl	%edx, %ecx
	jne	.LBB14_129
# BB#126:                               # %if.then.297
                                        #   in Loop: Header=BB14_120 Depth=1
	movq	-56(%rbp), %rdi
	callq	SBYTES
	movq	%rax, -240(%rbp)
	movq	-40(%rbp), %rdi
	callq	SDATA
	addq	-72(%rbp), %rax
	movq	-56(%rbp), %rdi
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	SDATA
	movq	-56(%rbp), %rdi
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	SBYTES
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movq	-424(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	memcpy
	movq	-56(%rbp), %rdi
	callq	string_intervals
	cmpq	$0, %rax
	je	.LBB14_128
# BB#127:                               # %if.then.304
                                        #   in Loop: Header=BB14_120 Depth=1
	movq	-96(%rbp), %rax
	movq	-136(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	addq	-128(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-136(%rbp), %rax
	imulq	$24, %rax, %rax
	addq	-128(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-64(%rbp), %rax
	movq	-136(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -136(%rbp)
	imulq	$24, %rcx, %rcx
	addq	-128(%rbp), %rcx
	movq	%rax, 16(%rcx)
.LBB14_128:                             # %if.end.310
                                        #   in Loop: Header=BB14_120 Depth=1
	movq	-240(%rbp), %rax
	addq	-72(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-216(%rbp), %rax
	addq	-64(%rbp), %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB14_199
.LBB14_129:                             # %if.else.313
                                        #   in Loop: Header=BB14_120 Depth=1
	movq	-56(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB14_130
	jmp	.LBB14_134
.LBB14_130:                             # %land.lhs.true.316
                                        #   in Loop: Header=BB14_120 Depth=1
	movq	-40(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB14_131
	jmp	.LBB14_134
.LBB14_131:                             # %if.then.319
                                        #   in Loop: Header=BB14_120 Depth=1
	movq	-56(%rbp), %rdi
	callq	string_intervals
	cmpq	$0, %rax
	je	.LBB14_133
# BB#132:                               # %if.then.322
                                        #   in Loop: Header=BB14_120 Depth=1
	movq	-96(%rbp), %rax
	movq	-136(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	addq	-128(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-136(%rbp), %rax
	imulq	$24, %rax, %rax
	addq	-128(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-64(%rbp), %rax
	movq	-136(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -136(%rbp)
	imulq	$24, %rcx, %rcx
	addq	-128(%rbp), %rcx
	movq	%rax, 16(%rcx)
.LBB14_133:                             # %if.end.330
                                        #   in Loop: Header=BB14_120 Depth=1
	movq	-56(%rbp), %rdi
	callq	SDATA
	movq	-40(%rbp), %rdi
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	SDATA
	addq	-72(%rbp), %rax
	movq	-56(%rbp), %rdi
	movq	%rax, -440(%rbp)        # 8-byte Spill
	callq	SCHARS
	xorl	%ecx, %ecx
	movl	$1, %r8d
	movq	-432(%rbp), %rdi        # 8-byte Reload
	movq	-440(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	copy_text
	addq	-72(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-216(%rbp), %rax
	addq	-64(%rbp), %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB14_198
.LBB14_134:                             # %if.else.338
                                        #   in Loop: Header=BB14_120 Depth=1
	jmp	.LBB14_135
.LBB14_135:                             # %while.body
                                        #   Parent Loop BB14_120 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%edi, %edi
	movq	-56(%rbp), %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-448(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB14_137
# BB#136:                               # %if.then.342
                                        #   in Loop: Header=BB14_120 Depth=1
	jmp	.LBB14_197
.LBB14_137:                             # %if.end.343
                                        #   in Loop: Header=BB14_135 Depth=2
	movq	-56(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB14_139
# BB#138:                               # %if.then.348
                                        #   in Loop: Header=BB14_135 Depth=2
	movq	-56(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -248(%rbp)
	movq	-56(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB14_168
.LBB14_139:                             # %if.else.354
                                        #   in Loop: Header=BB14_135 Depth=2
	movq	-224(%rbp), %rax
	cmpq	-216(%rbp), %rax
	jl	.LBB14_141
# BB#140:                               # %if.then.357
                                        #   in Loop: Header=BB14_120 Depth=1
	jmp	.LBB14_197
.LBB14_141:                             # %if.else.358
                                        #   in Loop: Header=BB14_135 Depth=2
	movq	-56(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB14_142
	jmp	.LBB14_162
.LBB14_142:                             # %if.then.360
                                        #   in Loop: Header=BB14_135 Depth=2
	movq	-56(%rbp), %rdi
	callq	STRING_MULTIBYTE
	testb	$1, %al
	jne	.LBB14_143
	jmp	.LBB14_155
.LBB14_143:                             # %if.then.363
                                        #   in Loop: Header=BB14_135 Depth=2
	jmp	.LBB14_144
.LBB14_144:                             # %do.body.364
                                        #   in Loop: Header=BB14_135 Depth=2
	movq	-232(%rbp), %rax
	movq	-56(%rbp), %rdi
	movq	%rax, -456(%rbp)        # 8-byte Spill
	callq	SDATA
	movq	-456(%rbp), %rdi        # 8-byte Reload
	addq	%rdi, %rax
	movq	%rax, -264(%rbp)
	movq	-264(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB14_146
# BB#145:                               # %cond.true.371
                                        #   in Loop: Header=BB14_135 Depth=2
	movl	$1, -268(%rbp)
	movq	-264(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -460(%rbp)        # 4-byte Spill
	jmp	.LBB14_153
.LBB14_146:                             # %cond.false.374
                                        #   in Loop: Header=BB14_135 Depth=2
	movq	-264(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB14_148
# BB#147:                               # %cond.true.379
                                        #   in Loop: Header=BB14_135 Depth=2
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
	movl	$2, -268(%rbp)
	movq	-264(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$31, %esi
	shll	$6, %esi
	movq	-264(%rbp), %rdx
	movzbl	1(%rdx), %edi
	andl	$63, %edi
	orl	%edi, %esi
	movq	-264(%rbp), %rdx
	movzbl	(%rdx), %edi
	cmpl	$194, %edi
	cmovll	%ecx, %eax
	addl	%eax, %esi
	movl	%esi, -464(%rbp)        # 4-byte Spill
	jmp	.LBB14_152
.LBB14_148:                             # %cond.false.393
                                        #   in Loop: Header=BB14_135 Depth=2
	movq	-264(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB14_150
# BB#149:                               # %cond.true.398
                                        #   in Loop: Header=BB14_135 Depth=2
	movl	$3, -268(%rbp)
	movq	-264(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$15, %ecx
	shll	$12, %ecx
	movq	-264(%rbp), %rax
	movzbl	1(%rax), %edx
	andl	$63, %edx
	shll	$6, %edx
	orl	%edx, %ecx
	movq	-264(%rbp), %rax
	movzbl	2(%rax), %edx
	andl	$63, %edx
	orl	%edx, %ecx
	movl	%ecx, -468(%rbp)        # 4-byte Spill
	jmp	.LBB14_151
.LBB14_150:                             # %cond.false.412
                                        #   in Loop: Header=BB14_135 Depth=2
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-268(%rbp), %rdx
	movq	-264(%rbp), %rdi
	callq	string_char
	movl	%eax, -468(%rbp)        # 4-byte Spill
.LBB14_151:                             # %cond.end.414
                                        #   in Loop: Header=BB14_135 Depth=2
	movl	-468(%rbp), %eax        # 4-byte Reload
	movl	%eax, -464(%rbp)        # 4-byte Spill
.LBB14_152:                             # %cond.end.416
                                        #   in Loop: Header=BB14_135 Depth=2
	movl	-464(%rbp), %eax        # 4-byte Reload
	movl	%eax, -460(%rbp)        # 4-byte Spill
.LBB14_153:                             # %cond.end.418
                                        #   in Loop: Header=BB14_135 Depth=2
	movl	-460(%rbp), %eax        # 4-byte Reload
	movl	%eax, -252(%rbp)
	movslq	-268(%rbp), %rcx
	addq	-232(%rbp), %rcx
	movq	%rcx, -232(%rbp)
	movq	-224(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -224(%rbp)
# BB#154:                               # %do.end.423
                                        #   in Loop: Header=BB14_135 Depth=2
	jmp	.LBB14_161
.LBB14_155:                             # %if.else.424
                                        #   in Loop: Header=BB14_135 Depth=2
	movq	-56(%rbp), %rdi
	movq	-224(%rbp), %rsi
	callq	SREF
	movzbl	%al, %ecx
	movl	%ecx, -252(%rbp)
	movq	-224(%rbp), %rsi
	addq	$1, %rsi
	movq	%rsi, -224(%rbp)
	testb	$1, -113(%rbp)
	je	.LBB14_160
# BB#156:                               # %land.lhs.true.430
                                        #   in Loop: Header=BB14_135 Depth=2
	movb	$1, %al
	testb	$1, %al
	jne	.LBB14_157
	jmp	.LBB14_158
.LBB14_157:                             # %cond.true.431
                                        #   in Loop: Header=BB14_135 Depth=2
	movl	-252(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB14_160
	jmp	.LBB14_159
.LBB14_158:                             # %cond.false.435
                                        #   in Loop: Header=BB14_135 Depth=2
	movslq	-252(%rbp), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jb	.LBB14_160
.LBB14_159:                             # %if.then.440
                                        #   in Loop: Header=BB14_135 Depth=2
	movl	-252(%rbp), %eax
	addl	$4194048, %eax          # imm = 0x3FFF00
	movl	%eax, -252(%rbp)
.LBB14_160:                             # %if.end.442
                                        #   in Loop: Header=BB14_135 Depth=2
	jmp	.LBB14_161
.LBB14_161:                             # %if.end.443
                                        #   in Loop: Header=BB14_135 Depth=2
	movslq	-252(%rbp), %rdi
	callq	make_natnum
	movq	%rax, -248(%rbp)
	jmp	.LBB14_166
.LBB14_162:                             # %if.else.446
                                        #   in Loop: Header=BB14_135 Depth=2
	movq	-56(%rbp), %rdi
	callq	BOOL_VECTOR_P
	testb	$1, %al
	jne	.LBB14_163
	jmp	.LBB14_164
.LBB14_163:                             # %if.then.448
                                        #   in Loop: Header=BB14_135 Depth=2
	movq	-56(%rbp), %rdi
	movq	-224(%rbp), %rsi
	callq	bool_vector_ref
	movq	%rax, -248(%rbp)
	movq	-224(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -224(%rbp)
	jmp	.LBB14_165
.LBB14_164:                             # %if.else.451
                                        #   in Loop: Header=BB14_135 Depth=2
	movq	-56(%rbp), %rdi
	movq	-224(%rbp), %rsi
	callq	AREF
	movq	%rax, -248(%rbp)
	movq	-224(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -224(%rbp)
.LBB14_165:                             # %if.end.454
                                        #   in Loop: Header=BB14_135 Depth=2
	jmp	.LBB14_166
.LBB14_166:                             # %if.end.455
                                        #   in Loop: Header=BB14_135 Depth=2
	jmp	.LBB14_167
.LBB14_167:                             # %if.end.456
                                        #   in Loop: Header=BB14_135 Depth=2
	jmp	.LBB14_168
.LBB14_168:                             # %if.end.457
                                        #   in Loop: Header=BB14_135 Depth=2
	cmpq	$0, -64(%rbp)
	jge	.LBB14_170
# BB#169:                               # %if.then.460
                                        #   in Loop: Header=BB14_135 Depth=2
	movq	-48(%rbp), %rdi
	movq	-248(%rbp), %rsi
	callq	XSETCAR
	movq	-48(%rbp), %rsi
	movq	%rsi, -112(%rbp)
	movq	-48(%rbp), %rsi
	subq	$3, %rsi
	movq	8(%rsi), %rsi
	movq	%rsi, -48(%rbp)
	jmp	.LBB14_196
.LBB14_170:                             # %if.else.464
                                        #   in Loop: Header=BB14_135 Depth=2
	movq	-40(%rbp), %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB14_171
	jmp	.LBB14_172
.LBB14_171:                             # %if.then.466
                                        #   in Loop: Header=BB14_135 Depth=2
	movq	-40(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-248(%rbp), %rdx
	callq	ASET
	movq	-64(%rbp), %rdx
	addq	$1, %rdx
	movq	%rdx, -64(%rbp)
	jmp	.LBB14_195
.LBB14_172:                             # %if.else.468
                                        #   in Loop: Header=BB14_135 Depth=2
	movq	-248(%rbp), %rdi
	callq	NATNUMP
	testb	$1, %al
	jne	.LBB14_173
	jmp	.LBB14_175
.LBB14_173:                             # %land.lhs.true.472
                                        #   in Loop: Header=BB14_135 Depth=2
	movq	-248(%rbp), %rax
	sarq	$2, %rax
	cmpq	$4194303, %rax          # imm = 0x3FFFFF
	jg	.LBB14_175
# BB#174:                               # %cond.true.476
                                        #   in Loop: Header=BB14_135 Depth=2
	jmp	.LBB14_176
.LBB14_175:                             # %cond.false.477
	movl	$260, %edi              # imm = 0x104
	callq	builtin_lisp_symbol
	movq	-248(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -480(%rbp)        # 8-byte Spill
.LBB14_176:                             # %cond.end.479
                                        #   in Loop: Header=BB14_135 Depth=2
	movq	-248(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -272(%rbp)
	testb	$1, -113(%rbp)
	je	.LBB14_193
# BB#177:                               # %if.then.483
                                        #   in Loop: Header=BB14_135 Depth=2
	movb	$1, %al
	testb	$1, %al
	jne	.LBB14_178
	jmp	.LBB14_179
.LBB14_178:                             # %cond.true.484
                                        #   in Loop: Header=BB14_135 Depth=2
	movl	-272(%rbp), %eax
	addl	$0, %eax
	cmpl	$127, %eax
	jbe	.LBB14_180
	jmp	.LBB14_181
.LBB14_179:                             # %cond.false.488
                                        #   in Loop: Header=BB14_135 Depth=2
	movslq	-272(%rbp), %rax
	addq	$0, %rax
	cmpq	$127, %rax
	ja	.LBB14_181
.LBB14_180:                             # %cond.true.493
                                        #   in Loop: Header=BB14_135 Depth=2
	movl	-272(%rbp), %eax
	movb	%al, %cl
	movq	-40(%rbp), %rdi
	movb	%cl, -481(%rbp)         # 1-byte Spill
	callq	SDATA
	movl	$1, %edx
	movq	-72(%rbp), %rdi
	movb	-481(%rbp), %cl         # 1-byte Reload
	movb	%cl, (%rax,%rdi)
	movl	%edx, -488(%rbp)        # 4-byte Spill
	jmp	.LBB14_192
.LBB14_181:                             # %cond.false.498
                                        #   in Loop: Header=BB14_135 Depth=2
	movb	$1, %al
	testb	$1, %al
	jne	.LBB14_182
	jmp	.LBB14_183
.LBB14_182:                             # %cond.true.499
                                        #   in Loop: Header=BB14_135 Depth=2
	movl	-272(%rbp), %eax
	addl	$0, %eax
	cmpl	$2047, %eax             # imm = 0x7FF
	jbe	.LBB14_184
	jmp	.LBB14_185
.LBB14_183:                             # %cond.false.503
                                        #   in Loop: Header=BB14_135 Depth=2
	movslq	-272(%rbp), %rax
	addq	$0, %rax
	cmpq	$2047, %rax             # imm = 0x7FF
	ja	.LBB14_185
.LBB14_184:                             # %cond.true.508
                                        #   in Loop: Header=BB14_135 Depth=2
	movl	-272(%rbp), %eax
	sarl	$6, %eax
	orl	$192, %eax
	movb	%al, %cl
	movq	-40(%rbp), %rdi
	movb	%cl, -489(%rbp)         # 1-byte Spill
	callq	SDATA
	movq	-72(%rbp), %rdi
	movb	-489(%rbp), %cl         # 1-byte Reload
	movb	%cl, (%rax,%rdi)
	movl	-272(%rbp), %edx
	andl	$63, %edx
	orl	$128, %edx
	movb	%dl, %cl
	movq	-40(%rbp), %rdi
	movb	%cl, -490(%rbp)         # 1-byte Spill
	callq	SDATA
	movl	$2, %edx
	movq	-72(%rbp), %rdi
	movb	-490(%rbp), %cl         # 1-byte Reload
	movb	%cl, 1(%rax,%rdi)
	movl	%edx, -496(%rbp)        # 4-byte Spill
	jmp	.LBB14_191
.LBB14_185:                             # %cond.false.521
                                        #   in Loop: Header=BB14_135 Depth=2
	movb	$1, %al
	testb	$1, %al
	jne	.LBB14_186
	jmp	.LBB14_187
.LBB14_186:                             # %cond.true.522
                                        #   in Loop: Header=BB14_135 Depth=2
	movl	-272(%rbp), %eax
	addl	$0, %eax
	cmpl	$65535, %eax            # imm = 0xFFFF
	jbe	.LBB14_188
	jmp	.LBB14_189
.LBB14_187:                             # %cond.false.526
                                        #   in Loop: Header=BB14_135 Depth=2
	movslq	-272(%rbp), %rax
	addq	$0, %rax
	cmpq	$65535, %rax            # imm = 0xFFFF
	ja	.LBB14_189
.LBB14_188:                             # %cond.true.531
                                        #   in Loop: Header=BB14_135 Depth=2
	movl	-272(%rbp), %eax
	sarl	$12, %eax
	orl	$224, %eax
	movb	%al, %cl
	movq	-40(%rbp), %rdi
	movb	%cl, -497(%rbp)         # 1-byte Spill
	callq	SDATA
	movq	-72(%rbp), %rdi
	movb	-497(%rbp), %cl         # 1-byte Reload
	movb	%cl, (%rax,%rdi)
	movl	-272(%rbp), %edx
	sarl	$6, %edx
	andl	$63, %edx
	orl	$128, %edx
	movb	%dl, %cl
	movq	-40(%rbp), %rdi
	movb	%cl, -498(%rbp)         # 1-byte Spill
	callq	SDATA
	movq	-72(%rbp), %rdi
	movb	-498(%rbp), %cl         # 1-byte Reload
	movb	%cl, 1(%rax,%rdi)
	movl	-272(%rbp), %edx
	andl	$63, %edx
	orl	$128, %edx
	movb	%dl, %cl
	movq	-40(%rbp), %rdi
	movb	%cl, -499(%rbp)         # 1-byte Spill
	callq	SDATA
	movl	$3, %edx
	movq	-72(%rbp), %rdi
	movb	-499(%rbp), %cl         # 1-byte Reload
	movb	%cl, 2(%rax,%rdi)
	movl	%edx, -504(%rbp)        # 4-byte Spill
	jmp	.LBB14_190
.LBB14_189:                             # %cond.false.551
                                        #   in Loop: Header=BB14_135 Depth=2
	movl	-272(%rbp), %edi
	movq	-40(%rbp), %rax
	movl	%edi, -508(%rbp)        # 4-byte Spill
	movq	%rax, %rdi
	callq	SDATA
	addq	-72(%rbp), %rax
	movl	-508(%rbp), %edi        # 4-byte Reload
	movq	%rax, %rsi
	callq	char_string
	movl	%eax, -504(%rbp)        # 4-byte Spill
.LBB14_190:                             # %cond.end.555
                                        #   in Loop: Header=BB14_135 Depth=2
	movl	-504(%rbp), %eax        # 4-byte Reload
	movl	%eax, -496(%rbp)        # 4-byte Spill
.LBB14_191:                             # %cond.end.557
                                        #   in Loop: Header=BB14_135 Depth=2
	movl	-496(%rbp), %eax        # 4-byte Reload
	movl	%eax, -488(%rbp)        # 4-byte Spill
.LBB14_192:                             # %cond.end.559
                                        #   in Loop: Header=BB14_135 Depth=2
	movl	-488(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	addq	-72(%rbp), %rcx
	movq	%rcx, -72(%rbp)
	jmp	.LBB14_194
.LBB14_193:                             # %if.else.563
                                        #   in Loop: Header=BB14_135 Depth=2
	movq	-40(%rbp), %rdi
	movq	-72(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -72(%rbp)
	movl	-272(%rbp), %edx
	movb	%dl, %sil
	movb	%sil, -509(%rbp)        # 1-byte Spill
	movq	%rax, %rsi
	movb	-509(%rbp), %r8b        # 1-byte Reload
	movzbl	%r8b, %edx
	callq	SSET
.LBB14_194:                             # %if.end.566
                                        #   in Loop: Header=BB14_135 Depth=2
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -64(%rbp)
.LBB14_195:                             # %if.end.568
                                        #   in Loop: Header=BB14_135 Depth=2
	jmp	.LBB14_196
.LBB14_196:                             # %if.end.569
                                        #   in Loop: Header=BB14_135 Depth=2
	jmp	.LBB14_135
.LBB14_197:                             # %while.end
                                        #   in Loop: Header=BB14_120 Depth=1
	jmp	.LBB14_198
.LBB14_198:                             # %if.end.570
                                        #   in Loop: Header=BB14_120 Depth=1
	jmp	.LBB14_199
.LBB14_199:                             # %if.end.571
                                        #   in Loop: Header=BB14_120 Depth=1
	jmp	.LBB14_200
.LBB14_200:                             # %for.inc.572
                                        #   in Loop: Header=BB14_120 Depth=1
	movq	-96(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -96(%rbp)
	jmp	.LBB14_120
.LBB14_201:                             # %for.end.574
	xorl	%edi, %edi
	movq	-112(%rbp), %rax
	movq	%rax, -520(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-520(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB14_203
# BB#202:                               # %if.then.578
	movq	-112(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	XSETCDR
.LBB14_203:                             # %if.end.579
	cmpq	$0, -136(%rbp)
	jle	.LBB14_211
# BB#204:                               # %if.then.582
	movq	$-1, -288(%rbp)
	movq	$0, -96(%rbp)
.LBB14_205:                             # %for.cond.583
                                        # =>This Inner Loop Header: Depth=1
	movq	-96(%rbp), %rax
	cmpq	-136(%rbp), %rax
	jge	.LBB14_210
# BB#206:                               # %for.body.586
                                        #   in Loop: Header=BB14_205 Depth=1
	movq	-96(%rbp), %rax
	imulq	$24, %rax, %rax
	addq	-128(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	movq	-56(%rbp), %rax
	movq	%rdi, -528(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	SCHARS
	xorl	%edi, %edi
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -536(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$2, %edi
	movl	%edi, %esi
	movq	-528(%rbp), %rdi        # 8-byte Reload
	movq	-536(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	text_property_list
	movq	%rax, -280(%rbp)
	movq	-288(%rbp), %rax
	movq	-96(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	addq	-128(%rbp), %rcx
	cmpq	16(%rcx), %rax
	jne	.LBB14_208
# BB#207:                               # %if.then.599
                                        #   in Loop: Header=BB14_205 Depth=1
	movq	-280(%rbp), %rdi
	callq	make_composition_value_copy
.LBB14_208:                             # %if.end.600
                                        #   in Loop: Header=BB14_205 Depth=1
	movq	-40(%rbp), %rdi
	movq	-280(%rbp), %rsi
	movq	-96(%rbp), %rax
	imulq	$24, %rax, %rax
	addq	-128(%rbp), %rax
	movq	16(%rax), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rdx
	callq	add_text_properties_from_list
	movq	-96(%rbp), %rax
	imulq	$24, %rax, %rax
	addq	-128(%rbp), %rax
	movq	16(%rax), %rax
	movq	-56(%rbp), %rdi
	movq	%rax, -544(%rbp)        # 8-byte Spill
	callq	SCHARS
	movq	-544(%rbp), %rdx        # 8-byte Reload
	addq	%rax, %rdx
	movq	%rdx, -288(%rbp)
# BB#209:                               # %for.inc.609
                                        #   in Loop: Header=BB14_205 Depth=1
	movq	-96(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -96(%rbp)
	jmp	.LBB14_205
.LBB14_210:                             # %for.end.611
	jmp	.LBB14_211
.LBB14_211:                             # %if.end.612
	jmp	.LBB14_212
.LBB14_212:                             # %do.body.613
	testb	$1, -153(%rbp)
	je	.LBB14_214
# BB#213:                               # %if.then.615
	xorl	%edi, %edi
	movb	$0, -153(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -552(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -560(%rbp)        # 8-byte Spill
.LBB14_214:                             # %if.end.618
	jmp	.LBB14_215
.LBB14_215:                             # %do.end.619
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB14_216:                             # %return
	movq	-8(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	concat, .Lfunc_end14-concat
	.cfi_endproc

	.globl	concat3
	.align	16, 0x90
	.type	concat3,@function
concat3:                                # @concat3
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
	subq	$48, %rsp
	movl	$3, %eax
	movl	%eax, %ecx
	movl	$4, %eax
	xorl	%r8d, %r8d
	leaq	-48(%rbp), %r9
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -48(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -32(%rbp)
	movq	%rcx, %rdi
	movq	%r9, %rsi
	movl	%eax, %edx
	movl	%r8d, %ecx
	callq	concat
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	concat3, .Lfunc_end15-concat3
	.cfi_endproc

	.globl	Fappend
	.align	16, 0x90
	.type	Fappend,@function
Fappend:                                # @Fappend
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
	subq	$16, %rsp
	movl	$3, %edx
	movl	$1, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	concat
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	Fappend, .Lfunc_end16-Fappend
	.cfi_endproc

	.globl	Fconcat
	.align	16, 0x90
	.type	Fconcat,@function
Fconcat:                                # @Fconcat
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
	movl	$4, %edx
	xorl	%ecx, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	concat
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	Fconcat, .Lfunc_end17-Fconcat
	.cfi_endproc

	.globl	Fvconcat
	.align	16, 0x90
	.type	Fvconcat,@function
Fvconcat:                               # @Fvconcat
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
	movl	$5, %edx
	xorl	%ecx, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	concat
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	Fvconcat, .Lfunc_end18-Fvconcat
	.cfi_endproc

	.globl	Fcopy_sequence
	.align	16, 0x90
	.type	Fcopy_sequence,@function
Fcopy_sequence:                         # @Fcopy_sequence
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
	subq	$64, %rsp
	xorl	%eax, %eax
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB19_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB19_11
.LBB19_2:                               # %if.end
	movq	-16(%rbp), %rdi
	callq	CHAR_TABLE_P
	testb	$1, %al
	jne	.LBB19_3
	jmp	.LBB19_4
.LBB19_3:                               # %if.then.2
	movq	-16(%rbp), %rdi
	callq	copy_char_table
	movq	%rax, -8(%rbp)
	jmp	.LBB19_11
.LBB19_4:                               # %if.end.4
	movq	-16(%rbp), %rdi
	callq	BOOL_VECTOR_P
	testb	$1, %al
	jne	.LBB19_5
	jmp	.LBB19_6
.LBB19_5:                               # %if.then.6
	movq	-16(%rbp), %rdi
	callq	bool_vector_size
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	bool_vector_bytes
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	callq	make_uninit_bool_vector
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	bool_vector_data
	movq	-16(%rbp), %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	bool_vector_data
	movq	-32(%rbp), %rdx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	memcpy
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB19_11
.LBB19_6:                               # %if.end.12
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	je	.LBB19_10
# BB#7:                                 # %land.lhs.true
	movq	-16(%rbp), %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB19_10
# BB#8:                                 # %land.lhs.true.16
	movq	-16(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB19_10
# BB#9:                                 # %if.then.18
	movl	$844, %edi              # imm = 0x34C
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -64(%rbp)         # 8-byte Spill
.LBB19_10:                              # %if.end.20
	movl	$1, %eax
	movl	%eax, %edi
	leaq	-16(%rbp), %rsi
	xorl	%ecx, %ecx
	movq	-16(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	movl	%eax, %edx
	callq	concat
	movq	%rax, -8(%rbp)
.LBB19_11:                              # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	Fcopy_sequence, .Lfunc_end19-Fcopy_sequence
	.cfi_endproc

	.globl	clear_string_char_byte_cache
	.align	16, 0x90
	.type	clear_string_char_byte_cache,@function
clear_string_char_byte_cache:           # @clear_string_char_byte_cache
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
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, string_char_byte_cache_string
	popq	%rbp
	retq
.Lfunc_end20:
	.size	clear_string_char_byte_cache, .Lfunc_end20-clear_string_char_byte_cache
	.cfi_endproc

	.globl	string_byte_to_char
	.align	16, 0x90
	.type	string_byte_to_char,@function
string_byte_to_char:                    # @string_byte_to_char
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
	subq	$144, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -48(%rbp)
	movq	-16(%rbp), %rdi
	callq	SCHARS
	movq	%rax, -64(%rbp)
	movq	-16(%rbp), %rdi
	callq	SBYTES
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB21_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB21_29
.LBB21_2:                               # %if.end
	movq	-16(%rbp), %rax
	cmpq	string_char_byte_cache_string, %rax
	jne	.LBB21_7
# BB#3:                                 # %if.then.3
	movq	string_char_byte_cache_bytepos, %rax
	cmpq	-24(%rbp), %rax
	jge	.LBB21_5
# BB#4:                                 # %if.then.5
	movq	string_char_byte_cache_charpos, %rax
	movq	%rax, -48(%rbp)
	movq	string_char_byte_cache_bytepos, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB21_6
.LBB21_5:                               # %if.else
	movq	string_char_byte_cache_charpos, %rax
	movq	%rax, -64(%rbp)
	movq	string_char_byte_cache_bytepos, %rax
	movq	%rax, -72(%rbp)
.LBB21_6:                               # %if.end.6
	jmp	.LBB21_7
.LBB21_7:                               # %if.end.7
	movq	-24(%rbp), %rax
	subq	-56(%rbp), %rax
	movq	-72(%rbp), %rcx
	subq	-24(%rbp), %rcx
	cmpq	%rcx, %rax
	jge	.LBB21_21
# BB#8:                                 # %if.then.10
	movq	-16(%rbp), %rdi
	callq	SDATA
	addq	-56(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-16(%rbp), %rdi
	callq	SDATA
	addq	-24(%rbp), %rax
	movq	%rax, -88(%rbp)
.LBB21_9:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-80(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jae	.LBB21_20
# BB#10:                                # %while.body
                                        #   in Loop: Header=BB21_9 Depth=1
	movq	-80(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB21_12
# BB#11:                                # %cond.true
                                        #   in Loop: Header=BB21_9 Depth=1
	movl	$1, %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
	jmp	.LBB21_19
.LBB21_12:                              # %cond.false
                                        #   in Loop: Header=BB21_9 Depth=1
	movq	-80(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB21_14
# BB#13:                                # %cond.true.18
                                        #   in Loop: Header=BB21_9 Depth=1
	movl	$2, %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
	jmp	.LBB21_18
.LBB21_14:                              # %cond.false.19
                                        #   in Loop: Header=BB21_9 Depth=1
	movq	-80(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB21_16
# BB#15:                                # %cond.true.23
                                        #   in Loop: Header=BB21_9 Depth=1
	movl	$3, %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
	jmp	.LBB21_17
.LBB21_16:                              # %cond.false.24
                                        #   in Loop: Header=BB21_9 Depth=1
	movl	$5, %eax
	movl	$4, %ecx
	movq	-80(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$8, %esi
	cmpl	$0, %esi
	setne	%dil
	xorb	$-1, %dil
	testb	$1, %dil
	cmovnel	%ecx, %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
.LBB21_17:                              # %cond.end
                                        #   in Loop: Header=BB21_9 Depth=1
	movl	-116(%rbp), %eax        # 4-byte Reload
	movl	%eax, -112(%rbp)        # 4-byte Spill
.LBB21_18:                              # %cond.end.29
                                        #   in Loop: Header=BB21_9 Depth=1
	movl	-112(%rbp), %eax        # 4-byte Reload
	movl	%eax, -108(%rbp)        # 4-byte Spill
.LBB21_19:                              # %cond.end.31
                                        #   in Loop: Header=BB21_9 Depth=1
	movl	-108(%rbp), %eax        # 4-byte Reload
	movq	-80(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -80(%rbp)
	movq	-48(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -48(%rbp)
	jmp	.LBB21_9
.LBB21_20:                              # %while.end
	movq	-48(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-80(%rbp), %rax
	movq	-16(%rbp), %rdi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	SDATA
	movq	-128(%rbp), %rdi        # 8-byte Reload
	subq	%rax, %rdi
	movq	%rdi, -40(%rbp)
	jmp	.LBB21_28
.LBB21_21:                              # %if.else.35
	movq	-16(%rbp), %rdi
	callq	SDATA
	addq	-72(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-16(%rbp), %rdi
	callq	SDATA
	addq	-24(%rbp), %rax
	movq	%rax, -104(%rbp)
.LBB21_22:                              # %while.cond.41
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB21_24 Depth 2
	movq	-96(%rbp), %rax
	cmpq	-104(%rbp), %rax
	jbe	.LBB21_27
# BB#23:                                # %while.body.44
                                        #   in Loop: Header=BB21_22 Depth=1
	movq	-96(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -96(%rbp)
.LBB21_24:                              # %while.cond.45
                                        #   Parent Loop BB21_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-96(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$192, %ecx
	cmpl	$128, %ecx
	setne	%dl
	xorb	$-1, %dl
	testb	$1, %dl
	jne	.LBB21_25
	jmp	.LBB21_26
.LBB21_25:                              # %while.body.51
                                        #   in Loop: Header=BB21_24 Depth=2
	movq	-96(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -96(%rbp)
	jmp	.LBB21_24
.LBB21_26:                              # %while.end.53
                                        #   in Loop: Header=BB21_22 Depth=1
	movq	-64(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB21_22
.LBB21_27:                              # %while.end.54
	movq	-64(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-96(%rbp), %rax
	movq	-16(%rbp), %rdi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	SDATA
	movq	-136(%rbp), %rdi        # 8-byte Reload
	subq	%rax, %rdi
	movq	%rdi, -40(%rbp)
.LBB21_28:                              # %if.end.59
	movq	-40(%rbp), %rax
	movq	%rax, string_char_byte_cache_bytepos
	movq	-32(%rbp), %rax
	movq	%rax, string_char_byte_cache_charpos
	movq	-16(%rbp), %rax
	movq	%rax, string_char_byte_cache_string
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB21_29:                              # %return
	movq	-8(%rbp), %rax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	string_byte_to_char, .Lfunc_end21-string_byte_to_char
	.cfi_endproc

	.globl	string_to_multibyte
	.align	16, 0x90
	.type	string_to_multibyte,@function
string_to_multibyte:                    # @string_to_multibyte
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
	subq	$160, %rsp
	movq	%rdi, -16(%rbp)
	movq	$16384, -48(%rbp)       # imm = 0x4000
	callq	SPECPDL_INDEX
	movq	%rax, -56(%rbp)
	movb	$0, -57(%rbp)
	movq	-16(%rbp), %rdi
	callq	STRING_MULTIBYTE
	testb	$1, %al
	jne	.LBB22_1
	jmp	.LBB22_2
.LBB22_1:                               # %if.then
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB22_12
.LBB22_2:                               # %if.end
	movq	-16(%rbp), %rdi
	callq	SDATA
	movq	-16(%rbp), %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	SBYTES
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	count_size_as_multibyte
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	SBYTES
	movq	-80(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB22_4
# BB#3:                                 # %if.then.6
	movq	-16(%rbp), %rdi
	callq	SSDATA
	movq	-32(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	callq	make_multibyte_string
	movq	%rax, -8(%rbp)
	jmp	.LBB22_12
.LBB22_4:                               # %if.end.9
	movq	-32(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jg	.LBB22_6
# BB#5:                                 # %cond.true
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -48(%rbp)
	movq	-32(%rbp), %rax
	addq	$15, %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	jmp	.LBB22_7
.LBB22_6:                               # %cond.false
	movb	$1, -57(%rbp)
	movq	-32(%rbp), %rdi
	callq	record_xmalloc
	movq	%rax, -88(%rbp)         # 8-byte Spill
.LBB22_7:                               # %cond.end
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	SDATA
	movq	-16(%rbp), %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	SBYTES
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	-104(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	memcpy
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -120(%rbp)        # 8-byte Spill
	callq	SBYTES
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	-120(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	str_to_multibyte
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	SCHARS
	movq	-32(%rbp), %rdx
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	make_multibyte_string
	movq	%rax, -40(%rbp)
# BB#8:                                 # %do.body
	testb	$1, -57(%rbp)
	je	.LBB22_10
# BB#9:                                 # %if.then.18
	xorl	%edi, %edi
	movb	$0, -57(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -152(%rbp)        # 8-byte Spill
.LBB22_10:                              # %if.end.21
	jmp	.LBB22_11
.LBB22_11:                              # %do.end
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB22_12:                              # %return
	movq	-8(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	string_to_multibyte, .Lfunc_end22-string_to_multibyte
	.cfi_endproc

	.globl	string_make_unibyte
	.align	16, 0x90
	.type	string_make_unibyte,@function
string_make_unibyte:                    # @string_make_unibyte
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
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movq	$16384, -48(%rbp)       # imm = 0x4000
	callq	SPECPDL_INDEX
	movq	%rax, -56(%rbp)
	movb	$0, -57(%rbp)
	movq	-16(%rbp), %rdi
	callq	STRING_MULTIBYTE
	testb	$1, %al
	jne	.LBB23_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB23_10
.LBB23_2:                               # %if.end
	movq	-16(%rbp), %rdi
	callq	SCHARS
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jg	.LBB23_4
# BB#3:                                 # %cond.true
	movq	-24(%rbp), %rax
	movq	-48(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -48(%rbp)
	movq	-24(%rbp), %rax
	addq	$15, %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	jmp	.LBB23_5
.LBB23_4:                               # %cond.false
	movb	$1, -57(%rbp)
	movq	-24(%rbp), %rdi
	callq	record_xmalloc
	movq	%rax, -72(%rbp)         # 8-byte Spill
.LBB23_5:                               # %cond.end
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	SDATA
	movq	-32(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	callq	SBYTES
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	-88(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	copy_text
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	make_unibyte_string
	movq	%rax, -40(%rbp)
# BB#6:                                 # %do.body
	testb	$1, -57(%rbp)
	je	.LBB23_8
# BB#7:                                 # %if.then.8
	xorl	%edi, %edi
	movb	$0, -57(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -112(%rbp)        # 8-byte Spill
.LBB23_8:                               # %if.end.11
	jmp	.LBB23_9
.LBB23_9:                               # %do.end
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB23_10:                              # %return
	movq	-8(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	string_make_unibyte, .Lfunc_end23-string_make_unibyte
	.cfi_endproc

	.globl	Fstring_make_multibyte
	.align	16, 0x90
	.type	Fstring_make_multibyte,@function
Fstring_make_multibyte:                 # @Fstring_make_multibyte
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	CHECK_STRING
	movq	-8(%rbp), %rdi
	callq	string_make_multibyte
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	Fstring_make_multibyte, .Lfunc_end24-Fstring_make_multibyte
	.cfi_endproc

	.align	16, 0x90
	.type	string_make_multibyte,@function
string_make_multibyte:                  # @string_make_multibyte
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
	subq	$144, %rsp
	movq	%rdi, -16(%rbp)
	movq	$16384, -48(%rbp)       # imm = 0x4000
	callq	SPECPDL_INDEX
	movq	%rax, -56(%rbp)
	movb	$0, -57(%rbp)
	movq	-16(%rbp), %rdi
	callq	STRING_MULTIBYTE
	testb	$1, %al
	jne	.LBB25_1
	jmp	.LBB25_2
.LBB25_1:                               # %if.then
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB25_12
.LBB25_2:                               # %if.end
	movq	-16(%rbp), %rdi
	callq	SDATA
	movq	-16(%rbp), %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	SCHARS
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	count_size_as_multibyte
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	SBYTES
	movq	-80(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB25_4
# BB#3:                                 # %if.then.6
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB25_12
.LBB25_4:                               # %if.end.7
	movq	-32(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jg	.LBB25_6
# BB#5:                                 # %cond.true
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -48(%rbp)
	movq	-32(%rbp), %rax
	addq	$15, %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	jmp	.LBB25_7
.LBB25_6:                               # %cond.false
	movb	$1, -57(%rbp)
	movq	-32(%rbp), %rdi
	callq	record_xmalloc
	movq	%rax, -88(%rbp)         # 8-byte Spill
.LBB25_7:                               # %cond.end
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	SDATA
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	callq	SBYTES
	xorl	%ecx, %ecx
	movl	$1, %r8d
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	-104(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	copy_text
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	SCHARS
	movq	-32(%rbp), %rdx
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	make_multibyte_string
	movq	%rax, -40(%rbp)
# BB#8:                                 # %do.body
	testb	$1, -57(%rbp)
	je	.LBB25_10
# BB#9:                                 # %if.then.15
	xorl	%edi, %edi
	movb	$0, -57(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -136(%rbp)        # 8-byte Spill
.LBB25_10:                              # %if.end.18
	jmp	.LBB25_11
.LBB25_11:                              # %do.end
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB25_12:                              # %return
	movq	-8(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	string_make_multibyte, .Lfunc_end25-string_make_multibyte
	.cfi_endproc

	.globl	Fstring_make_unibyte
	.align	16, 0x90
	.type	Fstring_make_unibyte,@function
Fstring_make_unibyte:                   # @Fstring_make_unibyte
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp78:
	.cfi_def_cfa_offset 16
.Ltmp79:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp80:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	CHECK_STRING
	movq	-8(%rbp), %rdi
	callq	string_make_unibyte
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	Fstring_make_unibyte, .Lfunc_end26-Fstring_make_unibyte
	.cfi_endproc

	.globl	Fstring_as_unibyte
	.align	16, 0x90
	.type	Fstring_as_unibyte,@function
Fstring_as_unibyte:                     # @Fstring_as_unibyte
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp81:
	.cfi_def_cfa_offset 16
.Ltmp82:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp83:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	CHECK_STRING
	movq	-8(%rbp), %rdi
	callq	STRING_MULTIBYTE
	testb	$1, %al
	jne	.LBB27_1
	jmp	.LBB27_2
.LBB27_1:                               # %if.then
	movq	-8(%rbp), %rdi
	callq	xlispstrdup
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	SBYTES
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	str_as_unibyte
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	make_unibyte_string
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rdi
	callq	xfree
.LBB27_2:                               # %if.end
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	Fstring_as_unibyte, .Lfunc_end27-Fstring_as_unibyte
	.cfi_endproc

	.globl	Fstring_as_multibyte
	.align	16, 0x90
	.type	Fstring_as_multibyte,@function
Fstring_as_multibyte:                   # @Fstring_as_multibyte
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp84:
	.cfi_def_cfa_offset 16
.Ltmp85:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp86:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	CHECK_STRING
	movq	-8(%rbp), %rdi
	callq	STRING_MULTIBYTE
	testb	$1, %al
	jne	.LBB28_4
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	SDATA
	movq	-8(%rbp), %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	SBYTES
	leaq	-24(%rbp), %rdx
	leaq	-32(%rbp), %rcx
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	parse_str_as_multibyte
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	make_uninit_multibyte_string
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	SDATA
	movq	-8(%rbp), %rdi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	SDATA
	movq	-8(%rbp), %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	SBYTES
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	memcpy
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	SBYTES
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB28_3
# BB#2:                                 # %if.then.8
	movq	-16(%rbp), %rdi
	callq	SDATA
	movq	-32(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	callq	SBYTES
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	str_as_multibyte
	movq	%rax, -88(%rbp)         # 8-byte Spill
.LBB28_3:                               # %if.end
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	%rcx, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	set_string_intervals
.LBB28_4:                               # %if.end.12
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	Fstring_as_multibyte, .Lfunc_end28-Fstring_as_multibyte
	.cfi_endproc

	.globl	Fstring_to_multibyte
	.align	16, 0x90
	.type	Fstring_to_multibyte,@function
Fstring_to_multibyte:                   # @Fstring_to_multibyte
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp87:
	.cfi_def_cfa_offset 16
.Ltmp88:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp89:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	CHECK_STRING
	movq	-8(%rbp), %rdi
	callq	string_to_multibyte
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end29:
	.size	Fstring_to_multibyte, .Lfunc_end29-Fstring_to_multibyte
	.cfi_endproc

	.globl	Fstring_to_unibyte
	.align	16, 0x90
	.type	Fstring_to_unibyte,@function
Fstring_to_unibyte:                     # @Fstring_to_unibyte
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp90:
	.cfi_def_cfa_offset 16
.Ltmp91:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp92:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	CHECK_STRING
	movq	-8(%rbp), %rdi
	callq	STRING_MULTIBYTE
	testb	$1, %al
	jne	.LBB30_1
	jmp	.LBB30_4
.LBB30_1:                               # %if.then
	movq	-8(%rbp), %rdi
	callq	SCHARS
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	xmalloc
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	SDATA
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	%rax, %rdi
	callq	str_to_unibyte
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jge	.LBB30_3
# BB#2:                                 # %if.then.5
	movabsq	$.L.str.1, %rdi
	movq	-32(%rbp), %rsi
	movb	$0, %al
	callq	error
.LBB30_3:                               # %if.end
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	make_unibyte_string
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rdi
	callq	xfree
.LBB30_4:                               # %if.end.7
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	Fstring_to_unibyte, .Lfunc_end30-Fstring_to_unibyte
	.cfi_endproc

	.globl	Fcopy_alist
	.align	16, 0x90
	.type	Fcopy_alist,@function
Fcopy_alist:                            # @Fcopy_alist
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp93:
	.cfi_def_cfa_offset 16
.Ltmp94:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp95:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	CHECK_LIST
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB31_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB31_9
.LBB31_2:                               # %if.end
	movl	$1, %eax
	movl	%eax, %edi
	leaq	-16(%rbp), %rsi
	movl	$3, %edx
	xorl	%ecx, %ecx
	callq	concat
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
.LBB31_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB31_8
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB31_3 Depth=1
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB31_6
# BB#5:                                 # %if.then.9
                                        #   in Loop: Header=BB31_3 Depth=1
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rcx
	subq	$3, %rcx
	movq	8(%rcx), %rsi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	Fcons
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	XSETCAR
.LBB31_6:                               # %if.end.14
                                        #   in Loop: Header=BB31_3 Depth=1
	jmp	.LBB31_7
.LBB31_7:                               # %for.inc
                                        #   in Loop: Header=BB31_3 Depth=1
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB31_3
.LBB31_8:                               # %for.end
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB31_9:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end31:
	.size	Fcopy_alist, .Lfunc_end31-Fcopy_alist
	.cfi_endproc

	.globl	Fsubstring
	.align	16, 0x90
	.type	Fsubstring,@function
Fsubstring:                             # @Fsubstring
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp96:
	.cfi_def_cfa_offset 16
.Ltmp97:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp98:
	.cfi_def_cfa_register %rbp
	subq	$176, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	CHECK_VECTOR_OR_STRING
	leaq	-48(%rbp), %r8
	leaq	-56(%rbp), %r9
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rcx
	callq	validate_subarray
	movq	-8(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB32_1
	jmp	.LBB32_8
.LBB32_1:                               # %if.then
	cmpq	$0, -48(%rbp)
	jne	.LBB32_3
# BB#2:                                 # %cond.true
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	jmp	.LBB32_4
.LBB32_3:                               # %cond.false
	movq	-8(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	string_char_to_byte
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB32_4:                               # %cond.end
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB32_6
# BB#5:                                 # %cond.true.3
	movq	-8(%rbp), %rdi
	callq	SBYTES
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB32_7
.LBB32_6:                               # %cond.false.5
	movq	-8(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	string_char_to_byte
	movq	%rax, -88(%rbp)         # 8-byte Spill
.LBB32_7:                               # %cond.end.7
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rax, -72(%rbp)
	movq	-8(%rbp), %rdi
	callq	SSDATA
	addq	-64(%rbp), %rax
	movq	-56(%rbp), %rdi
	subq	-48(%rbp), %rdi
	movq	-72(%rbp), %rcx
	subq	-64(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	callq	STRING_MULTIBYTE
	movzbl	%al, %esi
	andl	$1, %esi
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	-96(%rbp), %rcx         # 8-byte Reload
	movl	%esi, -116(%rbp)        # 4-byte Spill
	movq	%rcx, %rsi
	movq	-112(%rbp), %rdx        # 8-byte Reload
	movl	-116(%rbp), %ecx        # 4-byte Reload
	callq	make_specified_string
	xorl	%edi, %edi
	movq	%rax, -32(%rbp)
	movq	-48(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	-56(%rbp), %rdx
	shlq	$2, %rdx
	addq	$2, %rdx
	movq	-8(%rbp), %rsi
	movq	-32(%rbp), %r8
	movq	%r8, -128(%rbp)         # 8-byte Spill
	movq	%rax, -136(%rbp)        # 8-byte Spill
	movq	%rdx, -144(%rbp)        # 8-byte Spill
	movq	%rsi, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$2, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	-144(%rbp), %rsi        # 8-byte Reload
	movq	-152(%rbp), %rdx        # 8-byte Reload
	movq	-128(%rbp), %r8         # 8-byte Reload
	movq	%rax, %r9
	callq	copy_text_properties
	movq	%rax, -160(%rbp)        # 8-byte Spill
	jmp	.LBB32_9
.LBB32_8:                               # %if.else
	movq	-56(%rbp), %rax
	subq	-48(%rbp), %rax
	movq	-8(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	aref_addr
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fvector
	movq	%rax, -32(%rbp)
.LBB32_9:                               # %if.end
	movq	-32(%rbp), %rax
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end32:
	.size	Fsubstring, .Lfunc_end32-Fsubstring
	.cfi_endproc

	.globl	Fsubstring_no_properties
	.align	16, 0x90
	.type	Fsubstring_no_properties,@function
Fsubstring_no_properties:               # @Fsubstring_no_properties
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp99:
	.cfi_def_cfa_offset 16
.Ltmp100:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp101:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	CHECK_STRING
	movq	-8(%rbp), %rdi
	callq	SCHARS
	leaq	-32(%rbp), %r8
	leaq	-40(%rbp), %r9
	movq	%rax, -64(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-64(%rbp), %rcx
	callq	validate_subarray
	cmpq	$0, -32(%rbp)
	jne	.LBB33_2
# BB#1:                                 # %cond.true
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	jmp	.LBB33_3
.LBB33_2:                               # %cond.false
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	string_char_to_byte
	movq	%rax, -72(%rbp)         # 8-byte Spill
.LBB33_3:                               # %cond.end
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB33_5
# BB#4:                                 # %cond.true.2
	movq	-8(%rbp), %rdi
	callq	SBYTES
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB33_6
.LBB33_5:                               # %cond.false.4
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	string_char_to_byte
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB33_6:                               # %cond.end.6
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rdi
	callq	SSDATA
	addq	-48(%rbp), %rax
	movq	-40(%rbp), %rdi
	subq	-32(%rbp), %rdi
	movq	-56(%rbp), %rcx
	subq	-48(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	callq	STRING_MULTIBYTE
	movzbl	%al, %esi
	andl	$1, %esi
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	-88(%rbp), %rcx         # 8-byte Reload
	movl	%esi, -108(%rbp)        # 4-byte Spill
	movq	%rcx, %rsi
	movq	-104(%rbp), %rdx        # 8-byte Reload
	movl	-108(%rbp), %ecx        # 4-byte Reload
	callq	make_specified_string
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end33:
	.size	Fsubstring_no_properties, .Lfunc_end33-Fsubstring_no_properties
	.cfi_endproc

	.globl	substring_both
	.align	16, 0x90
	.type	substring_both,@function
substring_both:                         # @substring_both
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp102:
	.cfi_def_cfa_offset 16
.Ltmp103:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp104:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-8(%rbp), %rdi
	callq	CHECK_VECTOR_OR_STRING
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	movq	%rax, -56(%rbp)
	cmpq	-16(%rbp), %rcx
	jg	.LBB34_3
# BB#1:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jg	.LBB34_3
# BB#2:                                 # %land.lhs.true.2
	movq	-32(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jle	.LBB34_4
.LBB34_3:                               # %if.then
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	-32(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	args_out_of_range_3
.LBB34_4:                               # %if.end
	movq	-8(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB34_5
	jmp	.LBB34_6
.LBB34_5:                               # %if.then.7
	movq	-8(%rbp), %rdi
	callq	SSDATA
	addq	-24(%rbp), %rax
	movq	-32(%rbp), %rdi
	subq	-16(%rbp), %rdi
	movq	-40(%rbp), %rcx
	subq	-24(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	callq	STRING_MULTIBYTE
	movzbl	%al, %esi
	andl	$1, %esi
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movl	%esi, -84(%rbp)         # 4-byte Spill
	movq	%rcx, %rsi
	movq	-80(%rbp), %rdx         # 8-byte Reload
	movl	-84(%rbp), %ecx         # 4-byte Reload
	callq	make_specified_string
	xorl	%edi, %edi
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	-32(%rbp), %rdx
	shlq	$2, %rdx
	addq	$2, %rdx
	movq	-8(%rbp), %rsi
	movq	-48(%rbp), %r8
	movq	%r8, -96(%rbp)          # 8-byte Spill
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movq	%rdx, -112(%rbp)        # 8-byte Spill
	movq	%rsi, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$2, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	-112(%rbp), %rsi        # 8-byte Reload
	movq	-120(%rbp), %rdx        # 8-byte Reload
	movq	-96(%rbp), %r8          # 8-byte Reload
	movq	%rax, %r9
	callq	copy_text_properties
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jmp	.LBB34_7
.LBB34_6:                               # %if.else
	movq	-32(%rbp), %rax
	subq	-16(%rbp), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	aref_addr
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fvector
	movq	%rax, -48(%rbp)
.LBB34_7:                               # %if.end.21
	movq	-48(%rbp), %rax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end34:
	.size	substring_both, .Lfunc_end34-substring_both
	.cfi_endproc

	.globl	Fnthcdr
	.align	16, 0x90
	.type	Fnthcdr,@function
Fnthcdr:                                # @Fnthcdr
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp105:
	.cfi_def_cfa_offset 16
.Ltmp106:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp107:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	andq	$7, %rsi
	movl	%esi, %eax
	andl	$-5, %eax
	cmpl	$2, %eax
	jne	.LBB35_2
# BB#1:                                 # %cond.true
	jmp	.LBB35_3
.LBB35_2:                               # %cond.false
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -40(%rbp)         # 8-byte Spill
.LBB35_3:                               # %cond.end
	movq	-8(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -32(%rbp)
	movq	$0, -24(%rbp)
.LBB35_4:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	cmpq	-32(%rbp), %rdx
	movb	%cl, -41(%rbp)          # 1-byte Spill
	jge	.LBB35_6
# BB#5:                                 # %land.rhs
                                        #   in Loop: Header=BB35_4 Depth=1
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	xorb	$-1, %dl
	movb	%dl, -41(%rbp)          # 1-byte Spill
.LBB35_6:                               # %land.end
                                        #   in Loop: Header=BB35_4 Depth=1
	movb	-41(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB35_7
	jmp	.LBB35_20
.LBB35_7:                               # %for.body
                                        #   in Loop: Header=BB35_4 Depth=1
	jmp	.LBB35_8
.LBB35_8:                               # %do.body
                                        #   in Loop: Header=BB35_4 Depth=1
	xorl	%edi, %edi
	movq	globals+1928, %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB35_11
# BB#9:                                 # %land.lhs.true
                                        #   in Loop: Header=BB35_4 Depth=1
	xorl	%edi, %edi
	movq	globals+1104, %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB35_11
# BB#10:                                # %if.then
                                        #   in Loop: Header=BB35_4 Depth=1
	callq	process_quit_flag
	jmp	.LBB35_14
.LBB35_11:                              # %if.else
                                        #   in Loop: Header=BB35_4 Depth=1
	movb	pending_signals, %al
	testb	$1, %al
	je	.LBB35_13
# BB#12:                                # %if.then.14
                                        #   in Loop: Header=BB35_4 Depth=1
	callq	process_pending_signals
.LBB35_13:                              # %if.end
                                        #   in Loop: Header=BB35_4 Depth=1
	jmp	.LBB35_14
.LBB35_14:                              # %if.end.15
                                        #   in Loop: Header=BB35_4 Depth=1
	jmp	.LBB35_15
.LBB35_15:                              # %do.end
                                        #   in Loop: Header=BB35_4 Depth=1
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB35_17
# BB#16:                                # %cond.true.20
                                        #   in Loop: Header=BB35_4 Depth=1
	jmp	.LBB35_18
.LBB35_17:                              # %cond.false.21
	movl	$626, %edi              # imm = 0x272
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB35_18:                              # %cond.end.23
                                        #   in Loop: Header=BB35_4 Depth=1
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
# BB#19:                                # %for.inc
                                        #   in Loop: Header=BB35_4 Depth=1
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB35_4
.LBB35_20:                              # %for.end
	movq	-16(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end35:
	.size	Fnthcdr, .Lfunc_end35-Fnthcdr
	.cfi_endproc

	.globl	Fnth
	.align	16, 0x90
	.type	Fnth,@function
Fnth:                                   # @Fnth
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp108:
	.cfi_def_cfa_offset 16
.Ltmp109:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp110:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	Fnthcdr
	movq	%rax, %rdi
	callq	Fcar
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end36:
	.size	Fnth, .Lfunc_end36-Fnth
	.cfi_endproc

	.globl	Felt
	.align	16, 0x90
	.type	Felt,@function
Felt:                                   # @Felt
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp111:
	.cfi_def_cfa_offset 16
.Ltmp112:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp113:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	andq	$7, %rsi
	movl	%esi, %eax
	andl	$-5, %eax
	cmpl	$2, %eax
	jne	.LBB37_2
# BB#1:                                 # %cond.true
	jmp	.LBB37_3
.LBB37_2:                               # %cond.false
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -32(%rbp)         # 8-byte Spill
.LBB37_3:                               # %cond.end
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	je	.LBB37_5
# BB#4:                                 # %lor.lhs.false
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB37_6
.LBB37_5:                               # %if.then
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	Fnthcdr
	movq	%rax, %rdi
	callq	Fcar
	movq	%rax, -8(%rbp)
	jmp	.LBB37_7
.LBB37_6:                               # %if.end
	movl	$844, %edi              # imm = 0x34C
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	CHECK_ARRAY
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	Faref
	movq	%rax, -8(%rbp)
.LBB37_7:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end37:
	.size	Felt, .Lfunc_end37-Felt
	.cfi_endproc

	.globl	Fmember
	.align	16, 0x90
	.type	Fmember,@function
Fmember:                                # @Fmember
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp114:
	.cfi_def_cfa_offset 16
.Ltmp115:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp116:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rsi, -32(%rbp)
.LBB38_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB38_17
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB38_1 Depth=1
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB38_4
# BB#3:                                 # %cond.true
                                        #   in Loop: Header=BB38_1 Depth=1
	jmp	.LBB38_5
.LBB38_4:                               # %cond.false
	movl	$626, %edi              # imm = 0x272
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB38_5:                               # %cond.end
                                        #   in Loop: Header=BB38_1 Depth=1
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	Fequal
	xorl	%edi, %edi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB38_7
# BB#6:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB38_18
.LBB38_7:                               # %if.end
                                        #   in Loop: Header=BB38_1 Depth=1
	jmp	.LBB38_8
.LBB38_8:                               # %do.body
                                        #   in Loop: Header=BB38_1 Depth=1
	xorl	%edi, %edi
	movq	globals+1928, %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB38_11
# BB#9:                                 # %land.lhs.true
                                        #   in Loop: Header=BB38_1 Depth=1
	xorl	%edi, %edi
	movq	globals+1104, %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB38_11
# BB#10:                                # %if.then.16
                                        #   in Loop: Header=BB38_1 Depth=1
	callq	process_quit_flag
	jmp	.LBB38_14
.LBB38_11:                              # %if.else
                                        #   in Loop: Header=BB38_1 Depth=1
	movb	pending_signals, %al
	testb	$1, %al
	je	.LBB38_13
# BB#12:                                # %if.then.17
                                        #   in Loop: Header=BB38_1 Depth=1
	callq	process_pending_signals
.LBB38_13:                              # %if.end.18
                                        #   in Loop: Header=BB38_1 Depth=1
	jmp	.LBB38_14
.LBB38_14:                              # %if.end.19
                                        #   in Loop: Header=BB38_1 Depth=1
	jmp	.LBB38_15
.LBB38_15:                              # %do.end
                                        #   in Loop: Header=BB38_1 Depth=1
	jmp	.LBB38_16
.LBB38_16:                              # %for.inc
                                        #   in Loop: Header=BB38_1 Depth=1
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB38_1
.LBB38_17:                              # %for.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB38_18:                              # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end38:
	.size	Fmember, .Lfunc_end38-Fmember
	.cfi_endproc

	.globl	Fequal
	.align	16, 0x90
	.type	Fequal,@function
Fequal:                                 # @Fequal
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp117:
	.cfi_def_cfa_offset 16
.Ltmp118:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp119:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	-24(%rbp), %rsi         # 8-byte Reload
	movl	%edi, -36(%rbp)         # 4-byte Spill
	movq	%rsi, %rdi
	movq	-32(%rbp), %rsi         # 8-byte Reload
	movl	-36(%rbp), %edx         # 4-byte Reload
	movl	-36(%rbp), %ecx         # 4-byte Reload
	movq	%rax, %r8
	callq	internal_equal
	testb	$1, %al
	jne	.LBB39_1
	jmp	.LBB39_2
.LBB39_1:                               # %cond.true
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB39_3
.LBB39_2:                               # %cond.false
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB39_3:                               # %cond.end
	movq	-48(%rbp), %rax         # 8-byte Reload
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end39:
	.size	Fequal, .Lfunc_end39-Fequal
	.cfi_endproc

	.globl	Fmemq
	.align	16, 0x90
	.type	Fmemq,@function
Fmemq:                                  # @Fmemq
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp120:
	.cfi_def_cfa_offset 16
.Ltmp121:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp122:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
.LBB40_1:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB40_3
# BB#2:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB40_1 Depth=1
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	cmpq	-8(%rbp), %rax
	jne	.LBB40_4
.LBB40_3:                               # %if.then
	jmp	.LBB40_19
.LBB40_4:                               # %if.end
                                        #   in Loop: Header=BB40_1 Depth=1
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB40_6
# BB#5:                                 # %lor.lhs.false.9
                                        #   in Loop: Header=BB40_1 Depth=1
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	cmpq	-8(%rbp), %rax
	jne	.LBB40_7
.LBB40_6:                               # %if.then.14
	jmp	.LBB40_19
.LBB40_7:                               # %if.end.15
                                        #   in Loop: Header=BB40_1 Depth=1
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB40_9
# BB#8:                                 # %lor.lhs.false.23
                                        #   in Loop: Header=BB40_1 Depth=1
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	cmpq	-8(%rbp), %rax
	jne	.LBB40_10
.LBB40_9:                               # %if.then.28
	jmp	.LBB40_19
.LBB40_10:                              # %if.end.29
                                        #   in Loop: Header=BB40_1 Depth=1
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
# BB#11:                                # %do.body
                                        #   in Loop: Header=BB40_1 Depth=1
	xorl	%edi, %edi
	movq	globals+1928, %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB40_14
# BB#12:                                # %land.lhs.true
                                        #   in Loop: Header=BB40_1 Depth=1
	xorl	%edi, %edi
	movq	globals+1104, %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB40_14
# BB#13:                                # %if.then.38
                                        #   in Loop: Header=BB40_1 Depth=1
	callq	process_quit_flag
	jmp	.LBB40_17
.LBB40_14:                              # %if.else
                                        #   in Loop: Header=BB40_1 Depth=1
	movb	pending_signals, %al
	testb	$1, %al
	je	.LBB40_16
# BB#15:                                # %if.then.39
                                        #   in Loop: Header=BB40_1 Depth=1
	callq	process_pending_signals
.LBB40_16:                              # %if.end.40
                                        #   in Loop: Header=BB40_1 Depth=1
	jmp	.LBB40_17
.LBB40_17:                              # %if.end.41
                                        #   in Loop: Header=BB40_1 Depth=1
	jmp	.LBB40_18
.LBB40_18:                              # %do.end
                                        #   in Loop: Header=BB40_1 Depth=1
	jmp	.LBB40_1
.LBB40_19:                              # %while.end
	movq	-16(%rbp), %rdi
	callq	CHECK_LIST
	movq	-16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end40:
	.size	Fmemq, .Lfunc_end40-Fmemq
	.cfi_endproc

	.globl	Fmemql
	.align	16, 0x90
	.type	Fmemql,@function
Fmemql:                                 # @Fmemql
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp123:
	.cfi_def_cfa_offset 16
.Ltmp124:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp125:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	andq	$7, %rsi
	movl	%esi, %eax
	cmpl	$7, %eax
	je	.LBB41_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	Fmemq
	movq	%rax, -8(%rbp)
	jmp	.LBB41_21
.LBB41_2:                               # %if.end
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB41_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB41_20
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB41_3 Depth=1
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB41_6
# BB#5:                                 # %cond.true
                                        #   in Loop: Header=BB41_3 Depth=1
	jmp	.LBB41_7
.LBB41_6:                               # %cond.false
	movl	$626, %edi              # imm = 0x272
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB41_7:                               # %cond.end
                                        #   in Loop: Header=BB41_3 Depth=1
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$7, %ecx
	jne	.LBB41_10
# BB#8:                                 # %land.lhs.true
                                        #   in Loop: Header=BB41_3 Depth=1
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	-40(%rbp), %rsi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movl	%edi, -68(%rbp)         # 4-byte Spill
	movq	%rsi, %rdi
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movl	-68(%rbp), %edx         # 4-byte Reload
	movl	-68(%rbp), %ecx         # 4-byte Reload
	movq	%rax, %r8
	callq	internal_equal
	testb	$1, %al
	jne	.LBB41_9
	jmp	.LBB41_10
.LBB41_9:                               # %if.then.18
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB41_21
.LBB41_10:                              # %if.end.19
                                        #   in Loop: Header=BB41_3 Depth=1
	jmp	.LBB41_11
.LBB41_11:                              # %do.body
                                        #   in Loop: Header=BB41_3 Depth=1
	xorl	%edi, %edi
	movq	globals+1928, %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB41_14
# BB#12:                                # %land.lhs.true.23
                                        #   in Loop: Header=BB41_3 Depth=1
	xorl	%edi, %edi
	movq	globals+1104, %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB41_14
# BB#13:                                # %if.then.27
                                        #   in Loop: Header=BB41_3 Depth=1
	callq	process_quit_flag
	jmp	.LBB41_17
.LBB41_14:                              # %if.else
                                        #   in Loop: Header=BB41_3 Depth=1
	movb	pending_signals, %al
	testb	$1, %al
	je	.LBB41_16
# BB#15:                                # %if.then.28
                                        #   in Loop: Header=BB41_3 Depth=1
	callq	process_pending_signals
.LBB41_16:                              # %if.end.29
                                        #   in Loop: Header=BB41_3 Depth=1
	jmp	.LBB41_17
.LBB41_17:                              # %if.end.30
                                        #   in Loop: Header=BB41_3 Depth=1
	jmp	.LBB41_18
.LBB41_18:                              # %do.end
                                        #   in Loop: Header=BB41_3 Depth=1
	jmp	.LBB41_19
.LBB41_19:                              # %for.inc
                                        #   in Loop: Header=BB41_3 Depth=1
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB41_3
.LBB41_20:                              # %for.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB41_21:                              # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end41:
	.size	Fmemql, .Lfunc_end41-Fmemql
	.cfi_endproc

	.align	16, 0x90
	.type	internal_equal,@function
internal_equal:                         # @internal_equal
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp126:
	.cfi_def_cfa_offset 16
.Ltmp127:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp128:
	.cfi_def_cfa_register %rbp
	subq	$384, %rsp              # imm = 0x180
	movb	%cl, %al
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	andb	$1, %al
	movb	%al, -29(%rbp)
	movq	%r8, -40(%rbp)
	cmpl	$10, -28(%rbp)
	jle	.LBB42_15
# BB#1:                                 # %if.then
	cmpl	$200, -28(%rbp)
	jle	.LBB42_3
# BB#2:                                 # %if.then.2
	movabsq	$.L.str.27, %rdi
	movb	$0, %al
	callq	error
.LBB42_3:                               # %if.end
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-152(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB42_5
# BB#4:                                 # %if.then.4
	movl	$129, %edi
	callq	builtin_lisp_symbol
	movl	$369, %edi              # imm = 0x171
	movq	%rax, -56(%rbp)
	callq	builtin_lisp_symbol
	movl	$2, %edi
                                        # kill: RDI<def> EDI<kill>
	leaq	-56(%rbp), %rsi
	movq	%rax, -48(%rbp)
	callq	Fmake_hash_table
	movq	%rax, -40(%rbp)
.LBB42_5:                               # %if.end.8
	movl	-16(%rbp), %eax
	andl	$7, %eax
	movl	%eax, %ecx
	subl	$1, %ecx
	movl	%eax, -156(%rbp)        # 4-byte Spill
	movl	%ecx, -160(%rbp)        # 4-byte Spill
	je	.LBB42_6
	jmp	.LBB42_86
.LBB42_86:                              # %if.end.8
	movl	-156(%rbp), %eax        # 4-byte Reload
	subl	$3, %eax
	movl	%eax, -164(%rbp)        # 4-byte Spill
	je	.LBB42_6
	jmp	.LBB42_87
.LBB42_87:                              # %if.end.8
	movl	-156(%rbp), %eax        # 4-byte Reload
	subl	$5, %eax
	movl	%eax, -168(%rbp)        # 4-byte Spill
	jne	.LBB42_13
	jmp	.LBB42_6
.LBB42_6:                               # %sw.bb
	movq	-40(%rbp), %rdi
	callq	XHASH_TABLE
	leaq	-72(%rbp), %rdx
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	hash_lookup
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	jl	.LBB42_11
# BB#7:                                 # %if.then.13
	movq	-64(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	HASH_VALUE
	movq	%rax, -88(%rbp)
	movq	-24(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	Fmemq
	xorl	%edi, %edi
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-176(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB42_9
# BB#8:                                 # %if.then.19
	movb	$1, -1(%rbp)
	jmp	.LBB42_85
.LBB42_9:                               # %if.else
	movq	-64(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	-88(%rbp), %rcx
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -192(%rbp)        # 8-byte Spill
	movq	%rcx, %rsi
	callq	Fcons
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	-192(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	set_hash_value_slot
# BB#10:                                # %if.end.21
	jmp	.LBB42_12
.LBB42_11:                              # %if.else.22
	xorl	%edi, %edi
	movq	-64(%rbp), %rax
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rcx
	movq	%rcx, -200(%rbp)        # 8-byte Spill
	movq	%rax, -208(%rbp)        # 8-byte Spill
	movq	%rsi, -216(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movq	-72(%rbp), %rcx
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	-216(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	hash_put
	movq	%rax, -224(%rbp)        # 8-byte Spill
.LBB42_12:                              # %if.end.26
	jmp	.LBB42_13
.LBB42_13:                              # %sw.default
	jmp	.LBB42_14
.LBB42_14:                              # %sw.epilog
	jmp	.LBB42_15
.LBB42_15:                              # %if.end.27
	jmp	.LBB42_16
.LBB42_16:                              # %tail_recurse
                                        # =>This Inner Loop Header: Depth=1
	jmp	.LBB42_17
.LBB42_17:                              # %do.body
                                        #   in Loop: Header=BB42_16 Depth=1
	xorl	%edi, %edi
	movq	globals+1928, %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-232(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB42_20
# BB#18:                                # %land.lhs.true
                                        #   in Loop: Header=BB42_16 Depth=1
	xorl	%edi, %edi
	movq	globals+1104, %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-240(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB42_20
# BB#19:                                # %if.then.34
                                        #   in Loop: Header=BB42_16 Depth=1
	callq	process_quit_flag
	jmp	.LBB42_23
.LBB42_20:                              # %if.else.35
                                        #   in Loop: Header=BB42_16 Depth=1
	movb	pending_signals, %al
	testb	$1, %al
	je	.LBB42_22
# BB#21:                                # %if.then.36
                                        #   in Loop: Header=BB42_16 Depth=1
	callq	process_pending_signals
.LBB42_22:                              # %if.end.37
                                        #   in Loop: Header=BB42_16 Depth=1
	jmp	.LBB42_23
.LBB42_23:                              # %if.end.38
                                        #   in Loop: Header=BB42_16 Depth=1
	jmp	.LBB42_24
.LBB42_24:                              # %do.end
                                        #   in Loop: Header=BB42_16 Depth=1
	movq	-16(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB42_26
# BB#25:                                # %if.then.41
	movb	$1, -1(%rbp)
	jmp	.LBB42_85
.LBB42_26:                              # %if.end.42
                                        #   in Loop: Header=BB42_16 Depth=1
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %edx
	cmpl	%edx, %ecx
	je	.LBB42_28
# BB#27:                                # %if.then.49
	movb	$0, -1(%rbp)
	jmp	.LBB42_85
.LBB42_28:                              # %if.end.50
                                        #   in Loop: Header=BB42_16 Depth=1
	movl	-16(%rbp), %eax
	andl	$7, %eax
	decl	%eax
	movl	%eax, %ecx
	subl	$6, %eax
	movq	%rcx, -248(%rbp)        # 8-byte Spill
	movl	%eax, -252(%rbp)        # 4-byte Spill
	ja	.LBB42_83
# BB#88:                                # %if.end.50
                                        #   in Loop: Header=BB42_16 Depth=1
	movq	-248(%rbp), %rax        # 8-byte Reload
	movq	.LJTI42_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB42_29:                              # %sw.bb.53
	movq	-16(%rbp), %rdi
	callq	extract_float
	movsd	%xmm0, -96(%rbp)
	movq	-24(%rbp), %rdi
	callq	extract_float
	movb	$1, %al
	movsd	%xmm0, -104(%rbp)
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-104(%rbp), %xmm0
	movb	%al, -253(%rbp)         # 1-byte Spill
	jne	.LBB42_30
	jp	.LBB42_30
	jmp	.LBB42_33
.LBB42_30:                              # %lor.rhs
	xorl	%eax, %eax
	movb	%al, %cl
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-96(%rbp), %xmm0
	movb	%cl, -254(%rbp)         # 1-byte Spill
	jne	.LBB42_31
	jp	.LBB42_31
	jmp	.LBB42_32
.LBB42_31:                              # %land.rhs
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	ucomisd	-104(%rbp), %xmm0
	setne	%al
	setp	%cl
	orb	%cl, %al
	movb	%al, -254(%rbp)         # 1-byte Spill
.LBB42_32:                              # %land.end
	movb	-254(%rbp), %al         # 1-byte Reload
	movb	%al, -253(%rbp)         # 1-byte Spill
.LBB42_33:                              # %lor.end
	movb	-253(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movb	%al, -1(%rbp)
	jmp	.LBB42_85
.LBB42_34:                              # %sw.bb.62
                                        #   in Loop: Header=BB42_16 Depth=1
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rsi
	movl	-28(%rbp), %ecx
	addl	$1, %ecx
	movb	-29(%rbp), %dl
	movq	-40(%rbp), %r8
	andb	$1, %dl
	movb	%dl, -255(%rbp)         # 1-byte Spill
	movl	%ecx, %edx
	movb	-255(%rbp), %r9b        # 1-byte Reload
	movzbl	%r9b, %ecx
	callq	internal_equal
	testb	$1, %al
	jne	.LBB42_36
# BB#35:                                # %if.then.67
	movb	$0, -1(%rbp)
	jmp	.LBB42_85
.LBB42_36:                              # %if.end.68
                                        #   in Loop: Header=BB42_16 Depth=1
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB42_16
.LBB42_37:                              # %sw.bb.73
                                        #   in Loop: Header=BB42_16 Depth=1
	movq	-16(%rbp), %rdi
	callq	XMISCTYPE
	movq	-24(%rbp), %rdi
	movl	%eax, -260(%rbp)        # 4-byte Spill
	callq	XMISCTYPE
	movl	-260(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	je	.LBB42_39
# BB#38:                                # %if.then.78
	movb	$0, -1(%rbp)
	jmp	.LBB42_85
.LBB42_39:                              # %if.end.79
                                        #   in Loop: Header=BB42_16 Depth=1
	movq	-16(%rbp), %rdi
	callq	OVERLAYP
	testb	$1, %al
	jne	.LBB42_40
	jmp	.LBB42_44
.LBB42_40:                              # %if.then.81
                                        #   in Loop: Header=BB42_16 Depth=1
	movq	-16(%rbp), %rdi
	callq	XOVERLAY
	movq	16(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -272(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	XOVERLAY
	movq	16(%rax), %rsi
	movl	-28(%rbp), %ecx
	addl	$1, %ecx
	movb	-29(%rbp), %dl
	movq	-40(%rbp), %r8
	andb	$1, %dl
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movb	%dl, -273(%rbp)         # 1-byte Spill
	movl	%ecx, %edx
	movb	-273(%rbp), %r9b        # 1-byte Reload
	movzbl	%r9b, %ecx
	callq	internal_equal
	testb	$1, %al
	jne	.LBB42_41
	jmp	.LBB42_42
.LBB42_41:                              # %lor.lhs.false
                                        #   in Loop: Header=BB42_16 Depth=1
	movq	-16(%rbp), %rdi
	callq	XOVERLAY
	movq	24(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -288(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	XOVERLAY
	movq	24(%rax), %rsi
	movl	-28(%rbp), %ecx
	addl	$1, %ecx
	movb	-29(%rbp), %dl
	movq	-40(%rbp), %r8
	andb	$1, %dl
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movb	%dl, -289(%rbp)         # 1-byte Spill
	movl	%ecx, %edx
	movb	-289(%rbp), %r9b        # 1-byte Reload
	movzbl	%r9b, %ecx
	callq	internal_equal
	testb	$1, %al
	jne	.LBB42_43
.LBB42_42:                              # %if.then.94
	movb	$0, -1(%rbp)
	jmp	.LBB42_85
.LBB42_43:                              # %if.end.95
                                        #   in Loop: Header=BB42_16 Depth=1
	movq	-16(%rbp), %rdi
	callq	XOVERLAY
	movq	32(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rdi
	callq	XOVERLAY
	movq	32(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB42_16
.LBB42_44:                              # %if.end.99
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB42_51
# BB#45:                                # %land.lhs.true.104
	movq	-16(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB42_51
# BB#46:                                # %if.then.108
	movq	-16(%rbp), %rdi
	callq	XMARKER
	movq	8(%rax), %rax
	movq	-24(%rbp), %rdi
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	XMARKER
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	-304(%rbp), %rdi        # 8-byte Reload
	cmpq	8(%rax), %rdi
	movb	%dl, -305(%rbp)         # 1-byte Spill
	jne	.LBB42_50
# BB#47:                                # %land.rhs.114
	movq	-16(%rbp), %rdi
	callq	XMARKER
	movb	$1, %cl
	cmpq	$0, 8(%rax)
	movb	%cl, -306(%rbp)         # 1-byte Spill
	je	.LBB42_49
# BB#48:                                # %lor.rhs.119
	movq	-16(%rbp), %rdi
	callq	XMARKER
	movq	32(%rax), %rax
	movq	-24(%rbp), %rdi
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	XMARKER
	movq	-320(%rbp), %rdi        # 8-byte Reload
	cmpq	32(%rax), %rdi
	sete	%cl
	movb	%cl, -306(%rbp)         # 1-byte Spill
.LBB42_49:                              # %lor.end.125
	movb	-306(%rbp), %al         # 1-byte Reload
	movb	%al, -305(%rbp)         # 1-byte Spill
.LBB42_50:                              # %land.end.126
	movb	-305(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movb	%al, -1(%rbp)
	jmp	.LBB42_85
.LBB42_51:                              # %if.end.127
	jmp	.LBB42_84
.LBB42_52:                              # %sw.bb.128
	movq	-16(%rbp), %rdi
	callq	ASIZE
	movq	%rax, -120(%rbp)
	movq	-24(%rbp), %rdi
	callq	ASIZE
	cmpq	-120(%rbp), %rax
	je	.LBB42_54
# BB#53:                                # %if.then.134
	movb	$0, -1(%rbp)
	jmp	.LBB42_85
.LBB42_54:                              # %if.end.135
	movq	-16(%rbp), %rdi
	callq	BOOL_VECTOR_P
	testb	$1, %al
	jne	.LBB42_55
	jmp	.LBB42_60
.LBB42_55:                              # %if.then.137
	movq	-16(%rbp), %rdi
	callq	bool_vector_size
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	movq	-24(%rbp), %rdi
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	bool_vector_size
	movq	-328(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	je	.LBB42_57
# BB#56:                                # %if.then.143
	movb	$0, -1(%rbp)
	jmp	.LBB42_85
.LBB42_57:                              # %if.end.144
	movq	-16(%rbp), %rdi
	callq	bool_vector_data
	movq	-24(%rbp), %rdi
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	bool_vector_data
	movq	-128(%rbp), %rdi
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	bool_vector_bytes
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	-344(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	memcmp
	cmpl	$0, %eax
	je	.LBB42_59
# BB#58:                                # %if.then.150
	movb	$0, -1(%rbp)
	jmp	.LBB42_85
.LBB42_59:                              # %if.end.151
	movb	$1, -1(%rbp)
	jmp	.LBB42_85
.LBB42_60:                              # %if.end.152
	movq	-16(%rbp), %rdi
	callq	WINDOW_CONFIGURATIONP
	testb	$1, %al
	jne	.LBB42_61
	jmp	.LBB42_62
.LBB42_61:                              # %if.then.154
	xorl	%edx, %edx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	compare_window_configurations
	andb	$1, %al
	movb	%al, -1(%rbp)
	jmp	.LBB42_85
.LBB42_62:                              # %if.end.156
	movabsq	$4611686018427387904, %rax # imm = 0x4000000000000000
	andq	-120(%rbp), %rax
	cmpq	$0, %rax
	je	.LBB42_66
# BB#63:                                # %if.then.159
	movq	-120(%rbp), %rax
	andq	$1056964608, %rax       # imm = 0x3F000000
	sarq	$24, %rax
	cmpq	$14, %rax
	jge	.LBB42_65
# BB#64:                                # %if.then.163
	movb	$0, -1(%rbp)
	jmp	.LBB42_85
.LBB42_65:                              # %if.end.164
	movq	-120(%rbp), %rax
	andq	$4095, %rax             # imm = 0xFFF
	movq	%rax, -120(%rbp)
.LBB42_66:                              # %if.end.166
	movl	$0, -108(%rbp)
.LBB42_67:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-108(%rbp), %rax
	cmpq	-120(%rbp), %rax
	jge	.LBB42_72
# BB#68:                                # %for.body
                                        #   in Loop: Header=BB42_67 Depth=1
	movq	-16(%rbp), %rdi
	movslq	-108(%rbp), %rsi
	callq	AREF
	movq	%rax, -136(%rbp)
	movq	-24(%rbp), %rdi
	movslq	-108(%rbp), %rsi
	callq	AREF
	movq	%rax, -144(%rbp)
	movq	-136(%rbp), %rdi
	movq	-144(%rbp), %rsi
	movl	-28(%rbp), %ecx
	addl	$1, %ecx
	movb	-29(%rbp), %dl
	movq	-40(%rbp), %r8
	andb	$1, %dl
	movb	%dl, -345(%rbp)         # 1-byte Spill
	movl	%ecx, %edx
	movb	-345(%rbp), %r9b        # 1-byte Reload
	movzbl	%r9b, %ecx
	callq	internal_equal
	testb	$1, %al
	jne	.LBB42_70
# BB#69:                                # %if.then.177
	movb	$0, -1(%rbp)
	jmp	.LBB42_85
.LBB42_70:                              # %if.end.178
                                        #   in Loop: Header=BB42_67 Depth=1
	jmp	.LBB42_71
.LBB42_71:                              # %for.inc
                                        #   in Loop: Header=BB42_67 Depth=1
	movl	-108(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -108(%rbp)
	jmp	.LBB42_67
.LBB42_72:                              # %for.end
	movb	$1, -1(%rbp)
	jmp	.LBB42_85
.LBB42_73:                              # %sw.bb.179
	movq	-16(%rbp), %rdi
	callq	SCHARS
	movq	-24(%rbp), %rdi
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	SCHARS
	movq	-360(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	je	.LBB42_75
# BB#74:                                # %if.then.184
	movb	$0, -1(%rbp)
	jmp	.LBB42_85
.LBB42_75:                              # %if.end.185
	movq	-16(%rbp), %rdi
	callq	SBYTES
	movq	-24(%rbp), %rdi
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	SBYTES
	movq	-368(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	je	.LBB42_77
# BB#76:                                # %if.then.190
	movb	$0, -1(%rbp)
	jmp	.LBB42_85
.LBB42_77:                              # %if.end.191
	movq	-16(%rbp), %rdi
	callq	SDATA
	movq	-24(%rbp), %rdi
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	SDATA
	movq	-16(%rbp), %rdi
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	SBYTES
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	-384(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	memcmp
	cmpl	$0, %eax
	je	.LBB42_79
# BB#78:                                # %if.then.197
	movb	$0, -1(%rbp)
	jmp	.LBB42_85
.LBB42_79:                              # %if.end.198
	testb	$1, -29(%rbp)
	je	.LBB42_82
# BB#80:                                # %land.lhs.true.201
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	compare_string_intervals
	testb	$1, %al
	jne	.LBB42_82
# BB#81:                                # %if.then.203
	movb	$0, -1(%rbp)
	jmp	.LBB42_85
.LBB42_82:                              # %if.end.204
	movb	$1, -1(%rbp)
	jmp	.LBB42_85
.LBB42_83:                              # %sw.default.205
	jmp	.LBB42_84
.LBB42_84:                              # %sw.epilog.206
	movb	$0, -1(%rbp)
.LBB42_85:                              # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end42:
	.size	internal_equal, .Lfunc_end42-internal_equal
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI42_0:
	.quad	.LBB42_37
	.quad	.LBB42_83
	.quad	.LBB42_34
	.quad	.LBB42_73
	.quad	.LBB42_52
	.quad	.LBB42_83
	.quad	.LBB42_29

	.text
	.globl	Fassq
	.align	16, 0x90
	.type	Fassq,@function
Fassq:                                  # @Fassq
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp129:
	.cfi_def_cfa_offset 16
.Ltmp130:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp131:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
.LBB43_1:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB43_4
# BB#2:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB43_1 Depth=1
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB43_5
# BB#3:                                 # %land.lhs.true
                                        #   in Loop: Header=BB43_1 Depth=1
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	cmpq	-8(%rbp), %rax
	jne	.LBB43_5
.LBB43_4:                               # %if.then
	jmp	.LBB43_22
.LBB43_5:                               # %if.end
                                        #   in Loop: Header=BB43_1 Depth=1
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB43_8
# BB#6:                                 # %lor.lhs.false.17
                                        #   in Loop: Header=BB43_1 Depth=1
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB43_9
# BB#7:                                 # %land.lhs.true.24
                                        #   in Loop: Header=BB43_1 Depth=1
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	cmpq	-8(%rbp), %rax
	jne	.LBB43_9
.LBB43_8:                               # %if.then.31
	jmp	.LBB43_22
.LBB43_9:                               # %if.end.32
                                        #   in Loop: Header=BB43_1 Depth=1
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB43_12
# BB#10:                                # %lor.lhs.false.40
                                        #   in Loop: Header=BB43_1 Depth=1
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB43_13
# BB#11:                                # %land.lhs.true.47
                                        #   in Loop: Header=BB43_1 Depth=1
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	cmpq	-8(%rbp), %rax
	jne	.LBB43_13
.LBB43_12:                              # %if.then.54
	jmp	.LBB43_22
.LBB43_13:                              # %if.end.55
                                        #   in Loop: Header=BB43_1 Depth=1
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
# BB#14:                                # %do.body
                                        #   in Loop: Header=BB43_1 Depth=1
	xorl	%edi, %edi
	movq	globals+1928, %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB43_17
# BB#15:                                # %land.lhs.true.61
                                        #   in Loop: Header=BB43_1 Depth=1
	xorl	%edi, %edi
	movq	globals+1104, %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB43_17
# BB#16:                                # %if.then.65
                                        #   in Loop: Header=BB43_1 Depth=1
	callq	process_quit_flag
	jmp	.LBB43_20
.LBB43_17:                              # %if.else
                                        #   in Loop: Header=BB43_1 Depth=1
	movb	pending_signals, %al
	testb	$1, %al
	je	.LBB43_19
# BB#18:                                # %if.then.66
                                        #   in Loop: Header=BB43_1 Depth=1
	callq	process_pending_signals
.LBB43_19:                              # %if.end.67
                                        #   in Loop: Header=BB43_1 Depth=1
	jmp	.LBB43_20
.LBB43_20:                              # %if.end.68
                                        #   in Loop: Header=BB43_1 Depth=1
	jmp	.LBB43_21
.LBB43_21:                              # %do.end
                                        #   in Loop: Header=BB43_1 Depth=1
	jmp	.LBB43_1
.LBB43_22:                              # %while.end
	movq	-16(%rbp), %rdi
	callq	CAR
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end43:
	.size	Fassq, .Lfunc_end43-Fassq
	.cfi_endproc

	.globl	assq_no_quit
	.align	16, 0x90
	.type	assq_no_quit,@function
assq_no_quit:                           # @assq_no_quit
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp132:
	.cfi_def_cfa_offset 16
.Ltmp133:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp134:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
.LBB44_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$3, %eax
	movb	%cl, -17(%rbp)          # 1-byte Spill
	jne	.LBB44_5
# BB#2:                                 # %land.rhs
                                        #   in Loop: Header=BB44_1 Depth=1
	movb	$1, %al
	movq	-16(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rcx
	andq	$7, %rcx
	movl	%ecx, %edx
	cmpl	$3, %edx
	movb	%al, -18(%rbp)          # 1-byte Spill
	jne	.LBB44_4
# BB#3:                                 # %lor.rhs
                                        #   in Loop: Header=BB44_1 Depth=1
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	cmpq	-8(%rbp), %rax
	sete	%cl
	xorb	$-1, %cl
	movb	%cl, -18(%rbp)          # 1-byte Spill
.LBB44_4:                               # %lor.end
                                        #   in Loop: Header=BB44_1 Depth=1
	movb	-18(%rbp), %al          # 1-byte Reload
	movb	%al, -17(%rbp)          # 1-byte Spill
.LBB44_5:                               # %land.end
                                        #   in Loop: Header=BB44_1 Depth=1
	movb	-17(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB44_6
	jmp	.LBB44_7
.LBB44_6:                               # %while.body
                                        #   in Loop: Header=BB44_1 Depth=1
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB44_1
.LBB44_7:                               # %while.end
	movq	-16(%rbp), %rdi
	callq	CAR_SAFE
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end44:
	.size	assq_no_quit, .Lfunc_end44-assq_no_quit
	.cfi_endproc

	.globl	Fassoc
	.align	16, 0x90
	.type	Fassoc,@function
Fassoc:                                 # @Fassoc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp135:
	.cfi_def_cfa_offset 16
.Ltmp136:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp137:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
.LBB45_1:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB45_6
# BB#2:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB45_1 Depth=1
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB45_7
# BB#3:                                 # %land.lhs.true
                                        #   in Loop: Header=BB45_1 Depth=1
	movb	$1, %al
	movq	-16(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -24(%rbp)
	movq	-24(%rbp), %rcx
	cmpq	-8(%rbp), %rcx
	movb	%al, -25(%rbp)          # 1-byte Spill
	je	.LBB45_5
# BB#4:                                 # %lor.rhs
                                        #   in Loop: Header=BB45_1 Depth=1
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	Fequal
	xorl	%edi, %edi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	sete	%cl
	xorb	$-1, %cl
	movb	%cl, -25(%rbp)          # 1-byte Spill
.LBB45_5:                               # %lor.end
                                        #   in Loop: Header=BB45_1 Depth=1
	movb	-25(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB45_6
	jmp	.LBB45_7
.LBB45_6:                               # %if.then
	jmp	.LBB45_28
.LBB45_7:                               # %if.end
                                        #   in Loop: Header=BB45_1 Depth=1
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB45_12
# BB#8:                                 # %lor.lhs.false.21
                                        #   in Loop: Header=BB45_1 Depth=1
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB45_13
# BB#9:                                 # %land.lhs.true.28
                                        #   in Loop: Header=BB45_1 Depth=1
	movb	$1, %al
	movq	-16(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -24(%rbp)
	movq	-24(%rbp), %rcx
	cmpq	-8(%rbp), %rcx
	movb	%al, -41(%rbp)          # 1-byte Spill
	je	.LBB45_11
# BB#10:                                # %lor.rhs.35
                                        #   in Loop: Header=BB45_1 Depth=1
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	Fequal
	xorl	%edi, %edi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	sete	%cl
	xorb	$-1, %cl
	movb	%cl, -41(%rbp)          # 1-byte Spill
.LBB45_11:                              # %lor.end.41
                                        #   in Loop: Header=BB45_1 Depth=1
	movb	-41(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB45_12
	jmp	.LBB45_13
.LBB45_12:                              # %if.then.42
	jmp	.LBB45_28
.LBB45_13:                              # %if.end.43
                                        #   in Loop: Header=BB45_1 Depth=1
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB45_18
# BB#14:                                # %lor.lhs.false.51
                                        #   in Loop: Header=BB45_1 Depth=1
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB45_19
# BB#15:                                # %land.lhs.true.58
                                        #   in Loop: Header=BB45_1 Depth=1
	movb	$1, %al
	movq	-16(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -24(%rbp)
	movq	-24(%rbp), %rcx
	cmpq	-8(%rbp), %rcx
	movb	%al, -57(%rbp)          # 1-byte Spill
	je	.LBB45_17
# BB#16:                                # %lor.rhs.65
                                        #   in Loop: Header=BB45_1 Depth=1
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	Fequal
	xorl	%edi, %edi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	sete	%cl
	xorb	$-1, %cl
	movb	%cl, -57(%rbp)          # 1-byte Spill
.LBB45_17:                              # %lor.end.71
                                        #   in Loop: Header=BB45_1 Depth=1
	movb	-57(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB45_18
	jmp	.LBB45_19
.LBB45_18:                              # %if.then.72
	jmp	.LBB45_28
.LBB45_19:                              # %if.end.73
                                        #   in Loop: Header=BB45_1 Depth=1
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
# BB#20:                                # %do.body
                                        #   in Loop: Header=BB45_1 Depth=1
	xorl	%edi, %edi
	movq	globals+1928, %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB45_23
# BB#21:                                # %land.lhs.true.80
                                        #   in Loop: Header=BB45_1 Depth=1
	xorl	%edi, %edi
	movq	globals+1104, %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB45_23
# BB#22:                                # %if.then.84
                                        #   in Loop: Header=BB45_1 Depth=1
	callq	process_quit_flag
	jmp	.LBB45_26
.LBB45_23:                              # %if.else
                                        #   in Loop: Header=BB45_1 Depth=1
	movb	pending_signals, %al
	testb	$1, %al
	je	.LBB45_25
# BB#24:                                # %if.then.85
                                        #   in Loop: Header=BB45_1 Depth=1
	callq	process_pending_signals
.LBB45_25:                              # %if.end.86
                                        #   in Loop: Header=BB45_1 Depth=1
	jmp	.LBB45_26
.LBB45_26:                              # %if.end.87
                                        #   in Loop: Header=BB45_1 Depth=1
	jmp	.LBB45_27
.LBB45_27:                              # %do.end
                                        #   in Loop: Header=BB45_1 Depth=1
	jmp	.LBB45_1
.LBB45_28:                              # %while.end
	movq	-16(%rbp), %rdi
	callq	CAR
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end45:
	.size	Fassoc, .Lfunc_end45-Fassoc
	.cfi_endproc

	.globl	assoc_no_quit
	.align	16, 0x90
	.type	assoc_no_quit,@function
assoc_no_quit:                          # @assoc_no_quit
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp138:
	.cfi_def_cfa_offset 16
.Ltmp139:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp140:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
.LBB46_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$3, %eax
	movb	%cl, -17(%rbp)          # 1-byte Spill
	jne	.LBB46_7
# BB#2:                                 # %land.rhs
                                        #   in Loop: Header=BB46_1 Depth=1
	movb	$1, %al
	movq	-16(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rcx
	andq	$7, %rcx
	movl	%ecx, %edx
	cmpl	$3, %edx
	movb	%al, -18(%rbp)          # 1-byte Spill
	jne	.LBB46_6
# BB#3:                                 # %lor.rhs
                                        #   in Loop: Header=BB46_1 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	subq	$3, %rdx
	movq	(%rdx), %rdx
	subq	$3, %rdx
	movq	(%rdx), %rdx
	cmpq	-8(%rbp), %rdx
	movb	%cl, -19(%rbp)          # 1-byte Spill
	je	.LBB46_5
# BB#4:                                 # %land.rhs.12
                                        #   in Loop: Header=BB46_1 Depth=1
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	movq	-8(%rbp), %rsi
	callq	Fequal
	xorl	%edi, %edi
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	sete	%cl
	movb	%cl, -19(%rbp)          # 1-byte Spill
.LBB46_5:                               # %land.end
                                        #   in Loop: Header=BB46_1 Depth=1
	movb	-19(%rbp), %al          # 1-byte Reload
	movb	%al, -18(%rbp)          # 1-byte Spill
.LBB46_6:                               # %lor.end
                                        #   in Loop: Header=BB46_1 Depth=1
	movb	-18(%rbp), %al          # 1-byte Reload
	movb	%al, -17(%rbp)          # 1-byte Spill
.LBB46_7:                               # %land.end.20
                                        #   in Loop: Header=BB46_1 Depth=1
	movb	-17(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB46_8
	jmp	.LBB46_9
.LBB46_8:                               # %while.body
                                        #   in Loop: Header=BB46_1 Depth=1
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB46_1
.LBB46_9:                               # %while.end
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB46_11
# BB#10:                                # %cond.true
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	jmp	.LBB46_12
.LBB46_11:                              # %cond.false
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -40(%rbp)         # 8-byte Spill
.LBB46_12:                              # %cond.end
	movq	-40(%rbp), %rax         # 8-byte Reload
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end46:
	.size	assoc_no_quit, .Lfunc_end46-assoc_no_quit
	.cfi_endproc

	.globl	Frassq
	.align	16, 0x90
	.type	Frassq,@function
Frassq:                                 # @Frassq
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp141:
	.cfi_def_cfa_offset 16
.Ltmp142:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp143:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
.LBB47_1:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB47_4
# BB#2:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB47_1 Depth=1
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB47_5
# BB#3:                                 # %land.lhs.true
                                        #   in Loop: Header=BB47_1 Depth=1
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	cmpq	-8(%rbp), %rax
	jne	.LBB47_5
.LBB47_4:                               # %if.then
	jmp	.LBB47_22
.LBB47_5:                               # %if.end
                                        #   in Loop: Header=BB47_1 Depth=1
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB47_8
# BB#6:                                 # %lor.lhs.false.18
                                        #   in Loop: Header=BB47_1 Depth=1
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB47_9
# BB#7:                                 # %land.lhs.true.25
                                        #   in Loop: Header=BB47_1 Depth=1
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	cmpq	-8(%rbp), %rax
	jne	.LBB47_9
.LBB47_8:                               # %if.then.33
	jmp	.LBB47_22
.LBB47_9:                               # %if.end.34
                                        #   in Loop: Header=BB47_1 Depth=1
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB47_12
# BB#10:                                # %lor.lhs.false.42
                                        #   in Loop: Header=BB47_1 Depth=1
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB47_13
# BB#11:                                # %land.lhs.true.49
                                        #   in Loop: Header=BB47_1 Depth=1
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	cmpq	-8(%rbp), %rax
	jne	.LBB47_13
.LBB47_12:                              # %if.then.57
	jmp	.LBB47_22
.LBB47_13:                              # %if.end.58
                                        #   in Loop: Header=BB47_1 Depth=1
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
# BB#14:                                # %do.body
                                        #   in Loop: Header=BB47_1 Depth=1
	xorl	%edi, %edi
	movq	globals+1928, %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB47_17
# BB#15:                                # %land.lhs.true.64
                                        #   in Loop: Header=BB47_1 Depth=1
	xorl	%edi, %edi
	movq	globals+1104, %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB47_17
# BB#16:                                # %if.then.68
                                        #   in Loop: Header=BB47_1 Depth=1
	callq	process_quit_flag
	jmp	.LBB47_20
.LBB47_17:                              # %if.else
                                        #   in Loop: Header=BB47_1 Depth=1
	movb	pending_signals, %al
	testb	$1, %al
	je	.LBB47_19
# BB#18:                                # %if.then.69
                                        #   in Loop: Header=BB47_1 Depth=1
	callq	process_pending_signals
.LBB47_19:                              # %if.end.70
                                        #   in Loop: Header=BB47_1 Depth=1
	jmp	.LBB47_20
.LBB47_20:                              # %if.end.71
                                        #   in Loop: Header=BB47_1 Depth=1
	jmp	.LBB47_21
.LBB47_21:                              # %do.end
                                        #   in Loop: Header=BB47_1 Depth=1
	jmp	.LBB47_1
.LBB47_22:                              # %while.end
	movq	-16(%rbp), %rdi
	callq	CAR
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end47:
	.size	Frassq, .Lfunc_end47-Frassq
	.cfi_endproc

	.globl	Frassoc
	.align	16, 0x90
	.type	Frassoc,@function
Frassoc:                                # @Frassoc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp144:
	.cfi_def_cfa_offset 16
.Ltmp145:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp146:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
.LBB48_1:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB48_6
# BB#2:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB48_1 Depth=1
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB48_7
# BB#3:                                 # %land.lhs.true
                                        #   in Loop: Header=BB48_1 Depth=1
	movb	$1, %al
	movq	-16(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rcx
	subq	$3, %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, -24(%rbp)
	movq	-24(%rbp), %rcx
	cmpq	-8(%rbp), %rcx
	movb	%al, -25(%rbp)          # 1-byte Spill
	je	.LBB48_5
# BB#4:                                 # %lor.rhs
                                        #   in Loop: Header=BB48_1 Depth=1
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	Fequal
	xorl	%edi, %edi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	sete	%cl
	xorb	$-1, %cl
	movb	%cl, -25(%rbp)          # 1-byte Spill
.LBB48_5:                               # %lor.end
                                        #   in Loop: Header=BB48_1 Depth=1
	movb	-25(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB48_6
	jmp	.LBB48_7
.LBB48_6:                               # %if.then
	jmp	.LBB48_28
.LBB48_7:                               # %if.end
                                        #   in Loop: Header=BB48_1 Depth=1
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB48_12
# BB#8:                                 # %lor.lhs.false.22
                                        #   in Loop: Header=BB48_1 Depth=1
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB48_13
# BB#9:                                 # %land.lhs.true.29
                                        #   in Loop: Header=BB48_1 Depth=1
	movb	$1, %al
	movq	-16(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rcx
	subq	$3, %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, -24(%rbp)
	movq	-24(%rbp), %rcx
	cmpq	-8(%rbp), %rcx
	movb	%al, -41(%rbp)          # 1-byte Spill
	je	.LBB48_11
# BB#10:                                # %lor.rhs.37
                                        #   in Loop: Header=BB48_1 Depth=1
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	Fequal
	xorl	%edi, %edi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	sete	%cl
	xorb	$-1, %cl
	movb	%cl, -41(%rbp)          # 1-byte Spill
.LBB48_11:                              # %lor.end.43
                                        #   in Loop: Header=BB48_1 Depth=1
	movb	-41(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB48_12
	jmp	.LBB48_13
.LBB48_12:                              # %if.then.44
	jmp	.LBB48_28
.LBB48_13:                              # %if.end.45
                                        #   in Loop: Header=BB48_1 Depth=1
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB48_18
# BB#14:                                # %lor.lhs.false.53
                                        #   in Loop: Header=BB48_1 Depth=1
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB48_19
# BB#15:                                # %land.lhs.true.60
                                        #   in Loop: Header=BB48_1 Depth=1
	movb	$1, %al
	movq	-16(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rcx
	subq	$3, %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, -24(%rbp)
	movq	-24(%rbp), %rcx
	cmpq	-8(%rbp), %rcx
	movb	%al, -57(%rbp)          # 1-byte Spill
	je	.LBB48_17
# BB#16:                                # %lor.rhs.68
                                        #   in Loop: Header=BB48_1 Depth=1
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	Fequal
	xorl	%edi, %edi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	sete	%cl
	xorb	$-1, %cl
	movb	%cl, -57(%rbp)          # 1-byte Spill
.LBB48_17:                              # %lor.end.74
                                        #   in Loop: Header=BB48_1 Depth=1
	movb	-57(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB48_18
	jmp	.LBB48_19
.LBB48_18:                              # %if.then.75
	jmp	.LBB48_28
.LBB48_19:                              # %if.end.76
                                        #   in Loop: Header=BB48_1 Depth=1
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
# BB#20:                                # %do.body
                                        #   in Loop: Header=BB48_1 Depth=1
	xorl	%edi, %edi
	movq	globals+1928, %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB48_23
# BB#21:                                # %land.lhs.true.83
                                        #   in Loop: Header=BB48_1 Depth=1
	xorl	%edi, %edi
	movq	globals+1104, %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB48_23
# BB#22:                                # %if.then.87
                                        #   in Loop: Header=BB48_1 Depth=1
	callq	process_quit_flag
	jmp	.LBB48_26
.LBB48_23:                              # %if.else
                                        #   in Loop: Header=BB48_1 Depth=1
	movb	pending_signals, %al
	testb	$1, %al
	je	.LBB48_25
# BB#24:                                # %if.then.88
                                        #   in Loop: Header=BB48_1 Depth=1
	callq	process_pending_signals
.LBB48_25:                              # %if.end.89
                                        #   in Loop: Header=BB48_1 Depth=1
	jmp	.LBB48_26
.LBB48_26:                              # %if.end.90
                                        #   in Loop: Header=BB48_1 Depth=1
	jmp	.LBB48_27
.LBB48_27:                              # %do.end
                                        #   in Loop: Header=BB48_1 Depth=1
	jmp	.LBB48_1
.LBB48_28:                              # %while.end
	movq	-16(%rbp), %rdi
	callq	CAR
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end48:
	.size	Frassoc, .Lfunc_end48-Frassoc
	.cfi_endproc

	.globl	Fdelq
	.align	16, 0x90
	.type	Fdelq,@function
Fdelq:                                  # @Fdelq
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp147:
	.cfi_def_cfa_offset 16
.Ltmp148:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp149:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	%rax, -32(%rbp)
	movb	$1, -41(%rbp)
.LBB49_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB49_16
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB49_1 Depth=1
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB49_7
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB49_1 Depth=1
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB49_5
# BB#4:                                 # %if.then.7
                                        #   in Loop: Header=BB49_1 Depth=1
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB49_6
.LBB49_5:                               # %if.else
                                        #   in Loop: Header=BB49_1 Depth=1
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rsi
	callq	Fsetcdr
	movq	%rax, -72(%rbp)         # 8-byte Spill
.LBB49_6:                               # %if.end
                                        #   in Loop: Header=BB49_1 Depth=1
	jmp	.LBB49_8
.LBB49_7:                               # %if.else.13
                                        #   in Loop: Header=BB49_1 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB49_8:                               # %if.end.14
                                        #   in Loop: Header=BB49_1 Depth=1
	jmp	.LBB49_9
.LBB49_9:                               # %for.inc
                                        #   in Loop: Header=BB49_1 Depth=1
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movb	-41(%rbp), %cl
	xorb	$-1, %cl
	andb	$1, %cl
	movb	%cl, -41(%rbp)
	testb	$1, -41(%rbp)
	je	.LBB49_14
# BB#10:                                # %cond.true
                                        #   in Loop: Header=BB49_1 Depth=1
	movq	-24(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB49_12
# BB#11:                                # %cond.true.22
	movl	$265, %edi              # imm = 0x109
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	xsignal1
.LBB49_12:                              # %cond.false
                                        #   in Loop: Header=BB49_1 Depth=1
	jmp	.LBB49_13
.LBB49_13:                              # %cond.end
                                        #   in Loop: Header=BB49_1 Depth=1
	jmp	.LBB49_15
.LBB49_14:                              # %cond.false.24
                                        #   in Loop: Header=BB49_1 Depth=1
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB49_15:                              # %cond.end.28
                                        #   in Loop: Header=BB49_1 Depth=1
	jmp	.LBB49_1
.LBB49_16:                              # %for.end
	movq	-16(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end49:
	.size	Fdelq, .Lfunc_end49-Fdelq
	.cfi_endproc

	.globl	Fdelete
	.align	16, 0x90
	.type	Fdelete,@function
Fdelete:                                # @Fdelete
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp150:
	.cfi_def_cfa_offset 16
.Ltmp151:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp152:
	.cfi_def_cfa_register %rbp
	subq	$368, %rsp              # imm = 0x170
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB50_1
	jmp	.LBB50_16
.LBB50_1:                               # %if.then
	movq	$0, -32(%rbp)
	movq	$0, -24(%rbp)
.LBB50_2:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rdi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	ASIZE
	movq	-144(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jge	.LBB50_7
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB50_2 Depth=1
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	AREF
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fequal
	xorl	%edi, %edi
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-152(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB50_5
# BB#4:                                 # %if.then.6
                                        #   in Loop: Header=BB50_2 Depth=1
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
.LBB50_5:                               # %if.end
                                        #   in Loop: Header=BB50_2 Depth=1
	jmp	.LBB50_6
.LBB50_6:                               # %for.inc
                                        #   in Loop: Header=BB50_2 Depth=1
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB50_2
.LBB50_7:                               # %for.end
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rdi
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	ASIZE
	movq	-160(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	je	.LBB50_15
# BB#8:                                 # %if.then.10
	movq	-32(%rbp), %rdi
	callq	allocate_vector
	movq	%rax, -40(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -24(%rbp)
.LBB50_9:                               # %for.cond.12
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rdi
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	ASIZE
	movq	-168(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jge	.LBB50_14
# BB#10:                                # %for.body.15
                                        #   in Loop: Header=BB50_9 Depth=1
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	AREF
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fequal
	xorl	%edi, %edi
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-176(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB50_12
# BB#11:                                # %if.then.20
                                        #   in Loop: Header=BB50_9 Depth=1
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	AREF
	movq	-32(%rbp), %rsi
	movq	%rsi, %rdi
	addq	$1, %rdi
	movq	%rdi, -32(%rbp)
	movq	-40(%rbp), %rdi
	movq	%rax, 8(%rdi,%rsi,8)
.LBB50_12:                              # %if.end.23
                                        #   in Loop: Header=BB50_9 Depth=1
	jmp	.LBB50_13
.LBB50_13:                              # %for.inc.24
                                        #   in Loop: Header=BB50_9 Depth=1
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB50_9
.LBB50_14:                              # %for.end.26
	movl	$5, %esi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -16(%rbp)
.LBB50_15:                              # %if.end.28
	jmp	.LBB50_115
.LBB50_16:                              # %if.else
	movq	-16(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB50_17
	jmp	.LBB50_92
.LBB50_17:                              # %if.then.30
	movq	$0, -56(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -48(%rbp)
.LBB50_18:                              # %for.cond.32
                                        # =>This Inner Loop Header: Depth=1
	movq	-48(%rbp), %rax
	movq	-16(%rbp), %rdi
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	SCHARS
	movq	-184(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jge	.LBB50_48
# BB#19:                                # %for.body.35
                                        #   in Loop: Header=BB50_18 Depth=1
	movq	-16(%rbp), %rdi
	callq	STRING_MULTIBYTE
	testb	$1, %al
	jne	.LBB50_20
	jmp	.LBB50_42
.LBB50_20:                              # %if.then.37
                                        #   in Loop: Header=BB50_18 Depth=1
	movq	-16(%rbp), %rdi
	callq	SDATA
	movq	-56(%rbp), %rdi
	movzbl	(%rax,%rdi), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB50_22
# BB#21:                                # %cond.true
                                        #   in Loop: Header=BB50_18 Depth=1
	movq	-16(%rbp), %rdi
	callq	SDATA
	movq	-56(%rbp), %rdi
	movzbl	(%rax,%rdi), %ecx
	movl	%ecx, -188(%rbp)        # 4-byte Spill
	jmp	.LBB50_29
.LBB50_22:                              # %cond.false
                                        #   in Loop: Header=BB50_18 Depth=1
	movq	-16(%rbp), %rdi
	callq	SDATA
	movq	-56(%rbp), %rdi
	movzbl	(%rax,%rdi), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB50_24
# BB#23:                                # %cond.true.50
                                        #   in Loop: Header=BB50_18 Depth=1
	movq	-16(%rbp), %rdi
	callq	SDATA
	movq	-56(%rbp), %rdi
	movzbl	(%rax,%rdi), %ecx
	andl	$31, %ecx
	shll	$6, %ecx
	movq	-16(%rbp), %rdi
	movl	%ecx, -192(%rbp)        # 4-byte Spill
	callq	SDATA
	movq	-56(%rbp), %rdi
	movzbl	1(%rax,%rdi), %ecx
	andl	$63, %ecx
	movl	-192(%rbp), %edx        # 4-byte Reload
	orl	%ecx, %edx
	movq	-16(%rbp), %rdi
	movl	%edx, -196(%rbp)        # 4-byte Spill
	callq	SDATA
	xorl	%ecx, %ecx
	movl	$4194176, %edx          # imm = 0x3FFF80
	movq	-56(%rbp), %rdi
	movzbl	(%rax,%rdi), %esi
	cmpl	$194, %esi
	cmovll	%edx, %ecx
	movl	-196(%rbp), %edx        # 4-byte Reload
	addl	%ecx, %edx
	movl	%edx, -200(%rbp)        # 4-byte Spill
	jmp	.LBB50_28
.LBB50_24:                              # %cond.false.67
                                        #   in Loop: Header=BB50_18 Depth=1
	movq	-16(%rbp), %rdi
	callq	SDATA
	movq	-56(%rbp), %rdi
	movzbl	(%rax,%rdi), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB50_26
# BB#25:                                # %cond.true.74
                                        #   in Loop: Header=BB50_18 Depth=1
	movq	-16(%rbp), %rdi
	callq	SDATA
	movq	-56(%rbp), %rdi
	movzbl	(%rax,%rdi), %ecx
	andl	$15, %ecx
	shll	$12, %ecx
	movq	-16(%rbp), %rdi
	movl	%ecx, -204(%rbp)        # 4-byte Spill
	callq	SDATA
	movq	-56(%rbp), %rdi
	movzbl	1(%rax,%rdi), %ecx
	andl	$63, %ecx
	shll	$6, %ecx
	movl	-204(%rbp), %edx        # 4-byte Reload
	orl	%ecx, %edx
	movq	-16(%rbp), %rdi
	movl	%edx, -208(%rbp)        # 4-byte Spill
	callq	SDATA
	movq	-56(%rbp), %rdi
	movzbl	2(%rax,%rdi), %ecx
	andl	$63, %ecx
	movl	-208(%rbp), %edx        # 4-byte Reload
	orl	%ecx, %edx
	movl	%edx, -212(%rbp)        # 4-byte Spill
	jmp	.LBB50_27
.LBB50_26:                              # %cond.false.94
                                        #   in Loop: Header=BB50_18 Depth=1
	movq	-16(%rbp), %rdi
	callq	SDATA
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	addq	-56(%rbp), %rax
	movq	%rdi, -224(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-224(%rbp), %rsi        # 8-byte Reload
	movq	-224(%rbp), %rdx        # 8-byte Reload
	callq	string_char
	movl	%eax, -212(%rbp)        # 4-byte Spill
.LBB50_27:                              # %cond.end
                                        #   in Loop: Header=BB50_18 Depth=1
	movl	-212(%rbp), %eax        # 4-byte Reload
	movl	%eax, -200(%rbp)        # 4-byte Spill
.LBB50_28:                              # %cond.end.99
                                        #   in Loop: Header=BB50_18 Depth=1
	movl	-200(%rbp), %eax        # 4-byte Reload
	movl	%eax, -188(%rbp)        # 4-byte Spill
.LBB50_29:                              # %cond.end.101
                                        #   in Loop: Header=BB50_18 Depth=1
	movl	-188(%rbp), %eax        # 4-byte Reload
	movl	%eax, -84(%rbp)
	cmpl	$127, -84(%rbp)
	jg	.LBB50_31
# BB#30:                                # %cond.true.105
                                        #   in Loop: Header=BB50_18 Depth=1
	movl	$1, %eax
	movl	%eax, -228(%rbp)        # 4-byte Spill
	jmp	.LBB50_41
.LBB50_31:                              # %cond.false.106
                                        #   in Loop: Header=BB50_18 Depth=1
	cmpl	$2047, -84(%rbp)        # imm = 0x7FF
	jg	.LBB50_33
# BB#32:                                # %cond.true.109
                                        #   in Loop: Header=BB50_18 Depth=1
	movl	$2, %eax
	movl	%eax, -232(%rbp)        # 4-byte Spill
	jmp	.LBB50_40
.LBB50_33:                              # %cond.false.110
                                        #   in Loop: Header=BB50_18 Depth=1
	cmpl	$65535, -84(%rbp)       # imm = 0xFFFF
	jg	.LBB50_35
# BB#34:                                # %cond.true.113
                                        #   in Loop: Header=BB50_18 Depth=1
	movl	$3, %eax
	movl	%eax, -236(%rbp)        # 4-byte Spill
	jmp	.LBB50_39
.LBB50_35:                              # %cond.false.114
                                        #   in Loop: Header=BB50_18 Depth=1
	cmpl	$2097151, -84(%rbp)     # imm = 0x1FFFFF
	jg	.LBB50_37
# BB#36:                                # %cond.true.117
                                        #   in Loop: Header=BB50_18 Depth=1
	movl	$4, %eax
	movl	%eax, -240(%rbp)        # 4-byte Spill
	jmp	.LBB50_38
.LBB50_37:                              # %cond.false.118
                                        #   in Loop: Header=BB50_18 Depth=1
	movl	$2, %eax
	movl	$5, %ecx
	cmpl	$4194175, -84(%rbp)     # imm = 0x3FFF7F
	cmovlel	%ecx, %eax
	movl	%eax, -240(%rbp)        # 4-byte Spill
.LBB50_38:                              # %cond.end.122
                                        #   in Loop: Header=BB50_18 Depth=1
	movl	-240(%rbp), %eax        # 4-byte Reload
	movl	%eax, -236(%rbp)        # 4-byte Spill
.LBB50_39:                              # %cond.end.124
                                        #   in Loop: Header=BB50_18 Depth=1
	movl	-236(%rbp), %eax        # 4-byte Reload
	movl	%eax, -232(%rbp)        # 4-byte Spill
.LBB50_40:                              # %cond.end.126
                                        #   in Loop: Header=BB50_18 Depth=1
	movl	-232(%rbp), %eax        # 4-byte Reload
	movl	%eax, -228(%rbp)        # 4-byte Spill
.LBB50_41:                              # %cond.end.128
                                        #   in Loop: Header=BB50_18 Depth=1
	movl	-228(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	%rcx, -80(%rbp)
	jmp	.LBB50_43
.LBB50_42:                              # %if.else.131
                                        #   in Loop: Header=BB50_18 Depth=1
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	SREF
	movzbl	%al, %ecx
	movl	%ecx, -84(%rbp)
	movq	$1, -80(%rbp)
.LBB50_43:                              # %if.end.134
                                        #   in Loop: Header=BB50_18 Depth=1
	movq	-8(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB50_45
# BB#44:                                # %lor.lhs.false
                                        #   in Loop: Header=BB50_18 Depth=1
	movslq	-84(%rbp), %rax
	movq	-8(%rbp), %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	je	.LBB50_46
.LBB50_45:                              # %if.then.143
                                        #   in Loop: Header=BB50_18 Depth=1
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -64(%rbp)
	movq	-80(%rbp), %rax
	addq	-72(%rbp), %rax
	movq	%rax, -72(%rbp)
.LBB50_46:                              # %if.end.146
                                        #   in Loop: Header=BB50_18 Depth=1
	jmp	.LBB50_47
.LBB50_47:                              # %for.inc.147
                                        #   in Loop: Header=BB50_18 Depth=1
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	movq	-80(%rbp), %rax
	addq	-56(%rbp), %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB50_18
.LBB50_48:                              # %for.end.150
	movq	-64(%rbp), %rax
	movq	-16(%rbp), %rdi
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	SCHARS
	movq	-248(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	je	.LBB50_91
# BB#49:                                # %if.then.154
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	make_uninit_multibyte_string
	movq	%rax, -96(%rbp)
	movq	-16(%rbp), %rdi
	callq	STRING_MULTIBYTE
	testb	$1, %al
	jne	.LBB50_56
# BB#50:                                # %if.then.157
	jmp	.LBB50_51
.LBB50_51:                              # %do.body
	movq	-96(%rbp), %rdi
	callq	XSTRING
	cmpq	$0, (%rax)
	jne	.LBB50_53
# BB#52:                                # %if.then.161
	movq	empty_unibyte_string, %rax
	movq	%rax, -96(%rbp)
	jmp	.LBB50_54
.LBB50_53:                              # %if.else.162
	movq	-96(%rbp), %rdi
	callq	XSTRING
	movq	$-1, 8(%rax)
.LBB50_54:                              # %if.end.164
	jmp	.LBB50_55
.LBB50_55:                              # %do.end
	jmp	.LBB50_56
.LBB50_56:                              # %if.end.165
	movq	$0, -56(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -48(%rbp)
.LBB50_57:                              # %for.cond.166
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB50_85 Depth 2
	movq	-48(%rbp), %rax
	movq	-16(%rbp), %rdi
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	SCHARS
	movq	-256(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jge	.LBB50_90
# BB#58:                                # %for.body.170
                                        #   in Loop: Header=BB50_57 Depth=1
	movq	-16(%rbp), %rdi
	callq	STRING_MULTIBYTE
	testb	$1, %al
	jne	.LBB50_59
	jmp	.LBB50_81
.LBB50_59:                              # %if.then.172
                                        #   in Loop: Header=BB50_57 Depth=1
	movq	-16(%rbp), %rdi
	callq	SDATA
	movq	-56(%rbp), %rdi
	movzbl	(%rax,%rdi), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB50_61
# BB#60:                                # %cond.true.179
                                        #   in Loop: Header=BB50_57 Depth=1
	movq	-16(%rbp), %rdi
	callq	SDATA
	movq	-56(%rbp), %rdi
	movzbl	(%rax,%rdi), %ecx
	movl	%ecx, -260(%rbp)        # 4-byte Spill
	jmp	.LBB50_68
.LBB50_61:                              # %cond.false.184
                                        #   in Loop: Header=BB50_57 Depth=1
	movq	-16(%rbp), %rdi
	callq	SDATA
	movq	-56(%rbp), %rdi
	movzbl	(%rax,%rdi), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB50_63
# BB#62:                                # %cond.true.191
                                        #   in Loop: Header=BB50_57 Depth=1
	movq	-16(%rbp), %rdi
	callq	SDATA
	movq	-56(%rbp), %rdi
	movzbl	(%rax,%rdi), %ecx
	andl	$31, %ecx
	shll	$6, %ecx
	movq	-16(%rbp), %rdi
	movl	%ecx, -264(%rbp)        # 4-byte Spill
	callq	SDATA
	movq	-56(%rbp), %rdi
	movzbl	1(%rax,%rdi), %ecx
	andl	$63, %ecx
	movl	-264(%rbp), %edx        # 4-byte Reload
	orl	%ecx, %edx
	movq	-16(%rbp), %rdi
	movl	%edx, -268(%rbp)        # 4-byte Spill
	callq	SDATA
	xorl	%ecx, %ecx
	movl	$4194176, %edx          # imm = 0x3FFF80
	movq	-56(%rbp), %rdi
	movzbl	(%rax,%rdi), %esi
	cmpl	$194, %esi
	cmovll	%edx, %ecx
	movl	-268(%rbp), %edx        # 4-byte Reload
	addl	%ecx, %edx
	movl	%edx, -272(%rbp)        # 4-byte Spill
	jmp	.LBB50_67
.LBB50_63:                              # %cond.false.212
                                        #   in Loop: Header=BB50_57 Depth=1
	movq	-16(%rbp), %rdi
	callq	SDATA
	movq	-56(%rbp), %rdi
	movzbl	(%rax,%rdi), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB50_65
# BB#64:                                # %cond.true.219
                                        #   in Loop: Header=BB50_57 Depth=1
	movq	-16(%rbp), %rdi
	callq	SDATA
	movq	-56(%rbp), %rdi
	movzbl	(%rax,%rdi), %ecx
	andl	$15, %ecx
	shll	$12, %ecx
	movq	-16(%rbp), %rdi
	movl	%ecx, -276(%rbp)        # 4-byte Spill
	callq	SDATA
	movq	-56(%rbp), %rdi
	movzbl	1(%rax,%rdi), %ecx
	andl	$63, %ecx
	shll	$6, %ecx
	movl	-276(%rbp), %edx        # 4-byte Reload
	orl	%ecx, %edx
	movq	-16(%rbp), %rdi
	movl	%edx, -280(%rbp)        # 4-byte Spill
	callq	SDATA
	movq	-56(%rbp), %rdi
	movzbl	2(%rax,%rdi), %ecx
	andl	$63, %ecx
	movl	-280(%rbp), %edx        # 4-byte Reload
	orl	%ecx, %edx
	movl	%edx, -284(%rbp)        # 4-byte Spill
	jmp	.LBB50_66
.LBB50_65:                              # %cond.false.239
                                        #   in Loop: Header=BB50_57 Depth=1
	movq	-16(%rbp), %rdi
	callq	SDATA
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	addq	-56(%rbp), %rax
	movq	%rdi, -296(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-296(%rbp), %rsi        # 8-byte Reload
	movq	-296(%rbp), %rdx        # 8-byte Reload
	callq	string_char
	movl	%eax, -284(%rbp)        # 4-byte Spill
.LBB50_66:                              # %cond.end.243
                                        #   in Loop: Header=BB50_57 Depth=1
	movl	-284(%rbp), %eax        # 4-byte Reload
	movl	%eax, -272(%rbp)        # 4-byte Spill
.LBB50_67:                              # %cond.end.245
                                        #   in Loop: Header=BB50_57 Depth=1
	movl	-272(%rbp), %eax        # 4-byte Reload
	movl	%eax, -260(%rbp)        # 4-byte Spill
.LBB50_68:                              # %cond.end.247
                                        #   in Loop: Header=BB50_57 Depth=1
	movl	-260(%rbp), %eax        # 4-byte Reload
	movl	%eax, -84(%rbp)
	cmpl	$127, -84(%rbp)
	jg	.LBB50_70
# BB#69:                                # %cond.true.251
                                        #   in Loop: Header=BB50_57 Depth=1
	movl	$1, %eax
	movl	%eax, -300(%rbp)        # 4-byte Spill
	jmp	.LBB50_80
.LBB50_70:                              # %cond.false.252
                                        #   in Loop: Header=BB50_57 Depth=1
	cmpl	$2047, -84(%rbp)        # imm = 0x7FF
	jg	.LBB50_72
# BB#71:                                # %cond.true.255
                                        #   in Loop: Header=BB50_57 Depth=1
	movl	$2, %eax
	movl	%eax, -304(%rbp)        # 4-byte Spill
	jmp	.LBB50_79
.LBB50_72:                              # %cond.false.256
                                        #   in Loop: Header=BB50_57 Depth=1
	cmpl	$65535, -84(%rbp)       # imm = 0xFFFF
	jg	.LBB50_74
# BB#73:                                # %cond.true.259
                                        #   in Loop: Header=BB50_57 Depth=1
	movl	$3, %eax
	movl	%eax, -308(%rbp)        # 4-byte Spill
	jmp	.LBB50_78
.LBB50_74:                              # %cond.false.260
                                        #   in Loop: Header=BB50_57 Depth=1
	cmpl	$2097151, -84(%rbp)     # imm = 0x1FFFFF
	jg	.LBB50_76
# BB#75:                                # %cond.true.263
                                        #   in Loop: Header=BB50_57 Depth=1
	movl	$4, %eax
	movl	%eax, -312(%rbp)        # 4-byte Spill
	jmp	.LBB50_77
.LBB50_76:                              # %cond.false.264
                                        #   in Loop: Header=BB50_57 Depth=1
	movl	$2, %eax
	movl	$5, %ecx
	cmpl	$4194175, -84(%rbp)     # imm = 0x3FFF7F
	cmovlel	%ecx, %eax
	movl	%eax, -312(%rbp)        # 4-byte Spill
.LBB50_77:                              # %cond.end.268
                                        #   in Loop: Header=BB50_57 Depth=1
	movl	-312(%rbp), %eax        # 4-byte Reload
	movl	%eax, -308(%rbp)        # 4-byte Spill
.LBB50_78:                              # %cond.end.270
                                        #   in Loop: Header=BB50_57 Depth=1
	movl	-308(%rbp), %eax        # 4-byte Reload
	movl	%eax, -304(%rbp)        # 4-byte Spill
.LBB50_79:                              # %cond.end.272
                                        #   in Loop: Header=BB50_57 Depth=1
	movl	-304(%rbp), %eax        # 4-byte Reload
	movl	%eax, -300(%rbp)        # 4-byte Spill
.LBB50_80:                              # %cond.end.274
                                        #   in Loop: Header=BB50_57 Depth=1
	movl	-300(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	%rcx, -80(%rbp)
	jmp	.LBB50_82
.LBB50_81:                              # %if.else.277
                                        #   in Loop: Header=BB50_57 Depth=1
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	SREF
	movzbl	%al, %ecx
	movl	%ecx, -84(%rbp)
	movq	$1, -80(%rbp)
.LBB50_82:                              # %if.end.280
                                        #   in Loop: Header=BB50_57 Depth=1
	movq	-8(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB50_84
# BB#83:                                # %lor.lhs.false.286
                                        #   in Loop: Header=BB50_57 Depth=1
	movslq	-84(%rbp), %rax
	movq	-8(%rbp), %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	je	.LBB50_88
.LBB50_84:                              # %if.then.291
                                        #   in Loop: Header=BB50_57 Depth=1
	movq	-16(%rbp), %rdi
	callq	SDATA
	addq	-56(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-96(%rbp), %rdi
	callq	SDATA
	addq	-72(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -64(%rbp)
	movq	-80(%rbp), %rax
	addq	-72(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -120(%rbp)
.LBB50_85:                              # %for.cond.299
                                        #   Parent Loop BB50_57 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-120(%rbp), %rax
	movq	%rax, %rcx
	addq	$-1, %rcx
	movq	%rcx, -120(%rbp)
	cmpq	$0, %rax
	je	.LBB50_87
# BB#86:                                # %for.body.301
                                        #   in Loop: Header=BB50_85 Depth=2
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)
	movb	(%rax), %dl
	movq	-112(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -112(%rbp)
	movb	%dl, (%rax)
	jmp	.LBB50_85
.LBB50_87:                              # %for.end.303
                                        #   in Loop: Header=BB50_57 Depth=1
	jmp	.LBB50_88
.LBB50_88:                              # %if.end.304
                                        #   in Loop: Header=BB50_57 Depth=1
	jmp	.LBB50_89
.LBB50_89:                              # %for.inc.305
                                        #   in Loop: Header=BB50_57 Depth=1
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	movq	-80(%rbp), %rax
	addq	-56(%rbp), %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB50_57
.LBB50_90:                              # %for.end.308
	movq	-96(%rbp), %rax
	movq	%rax, -16(%rbp)
.LBB50_91:                              # %if.end.309
	jmp	.LBB50_114
.LBB50_92:                              # %if.else.310
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -128(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, -136(%rbp)
.LBB50_93:                              # %for.cond.312
                                        # =>This Inner Loop Header: Depth=1
	movq	-128(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB50_113
# BB#94:                                # %for.body.317
                                        #   in Loop: Header=BB50_93 Depth=1
	movq	-128(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB50_96
# BB#95:                                # %cond.true.322
                                        #   in Loop: Header=BB50_93 Depth=1
	jmp	.LBB50_97
.LBB50_96:                              # %cond.false.323
	movl	$626, %edi              # imm = 0x272
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -320(%rbp)        # 8-byte Spill
.LBB50_97:                              # %cond.end.325
                                        #   in Loop: Header=BB50_93 Depth=1
	movq	-8(%rbp), %rdi
	movq	-128(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rsi
	callq	Fequal
	xorl	%edi, %edi
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-328(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB50_102
# BB#98:                                # %if.then.330
                                        #   in Loop: Header=BB50_93 Depth=1
	xorl	%edi, %edi
	movq	-136(%rbp), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-336(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB50_100
# BB#99:                                # %if.then.334
                                        #   in Loop: Header=BB50_93 Depth=1
	movq	-128(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB50_101
.LBB50_100:                             # %if.else.336
                                        #   in Loop: Header=BB50_93 Depth=1
	movq	-136(%rbp), %rdi
	movq	-128(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rsi
	callq	Fsetcdr
	movq	%rax, -344(%rbp)        # 8-byte Spill
.LBB50_101:                             # %if.end.341
                                        #   in Loop: Header=BB50_93 Depth=1
	jmp	.LBB50_103
.LBB50_102:                             # %if.else.342
                                        #   in Loop: Header=BB50_93 Depth=1
	movq	-128(%rbp), %rax
	movq	%rax, -136(%rbp)
.LBB50_103:                             # %if.end.343
                                        #   in Loop: Header=BB50_93 Depth=1
	jmp	.LBB50_104
.LBB50_104:                             # %do.body.344
                                        #   in Loop: Header=BB50_93 Depth=1
	xorl	%edi, %edi
	movq	globals+1928, %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-352(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB50_107
# BB#105:                               # %land.lhs.true
                                        #   in Loop: Header=BB50_93 Depth=1
	xorl	%edi, %edi
	movq	globals+1104, %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-360(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB50_107
# BB#106:                               # %if.then.351
                                        #   in Loop: Header=BB50_93 Depth=1
	callq	process_quit_flag
	jmp	.LBB50_110
.LBB50_107:                             # %if.else.352
                                        #   in Loop: Header=BB50_93 Depth=1
	movb	pending_signals, %al
	testb	$1, %al
	je	.LBB50_109
# BB#108:                               # %if.then.354
                                        #   in Loop: Header=BB50_93 Depth=1
	callq	process_pending_signals
.LBB50_109:                             # %if.end.355
                                        #   in Loop: Header=BB50_93 Depth=1
	jmp	.LBB50_110
.LBB50_110:                             # %if.end.356
                                        #   in Loop: Header=BB50_93 Depth=1
	jmp	.LBB50_111
.LBB50_111:                             # %do.end.357
                                        #   in Loop: Header=BB50_93 Depth=1
	jmp	.LBB50_112
.LBB50_112:                             # %for.inc.358
                                        #   in Loop: Header=BB50_93 Depth=1
	movq	-128(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -128(%rbp)
	jmp	.LBB50_93
.LBB50_113:                             # %for.end.362
	jmp	.LBB50_114
.LBB50_114:                             # %if.end.363
	jmp	.LBB50_115
.LBB50_115:                             # %if.end.364
	movq	-16(%rbp), %rax
	addq	$368, %rsp              # imm = 0x170
	popq	%rbp
	retq
.Lfunc_end50:
	.size	Fdelete, .Lfunc_end50-Fdelete
	.cfi_endproc

	.globl	Fnreverse
	.align	16, 0x90
	.type	Fnreverse,@function
Fnreverse:                              # @Fnreverse
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp153:
	.cfi_def_cfa_offset 16
.Ltmp154:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp155:
	.cfi_def_cfa_register %rbp
	subq	$192, %rsp
	xorl	%eax, %eax
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB51_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB51_39
.LBB51_2:                               # %if.else
	movq	-16(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB51_3
	jmp	.LBB51_4
.LBB51_3:                               # %if.then.2
	movq	-16(%rbp), %rdi
	callq	Freverse
	movq	%rax, -8(%rbp)
	jmp	.LBB51_39
.LBB51_4:                               # %if.else.4
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB51_21
# BB#5:                                 # %if.then.7
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB51_6:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	xorb	$-1, %dl
	testb	$1, %dl
	jne	.LBB51_7
	jmp	.LBB51_20
.LBB51_7:                               # %for.body
                                        #   in Loop: Header=BB51_6 Depth=1
	jmp	.LBB51_8
.LBB51_8:                               # %do.body
                                        #   in Loop: Header=BB51_6 Depth=1
	xorl	%edi, %edi
	movq	globals+1928, %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB51_11
# BB#9:                                 # %land.lhs.true
                                        #   in Loop: Header=BB51_6 Depth=1
	xorl	%edi, %edi
	movq	globals+1104, %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-120(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB51_11
# BB#10:                                # %if.then.18
                                        #   in Loop: Header=BB51_6 Depth=1
	callq	process_quit_flag
	jmp	.LBB51_14
.LBB51_11:                              # %if.else.19
                                        #   in Loop: Header=BB51_6 Depth=1
	movb	pending_signals, %al
	testb	$1, %al
	je	.LBB51_13
# BB#12:                                # %if.then.20
                                        #   in Loop: Header=BB51_6 Depth=1
	callq	process_pending_signals
.LBB51_13:                              # %if.end
                                        #   in Loop: Header=BB51_6 Depth=1
	jmp	.LBB51_14
.LBB51_14:                              # %if.end.21
                                        #   in Loop: Header=BB51_6 Depth=1
	jmp	.LBB51_15
.LBB51_15:                              # %do.end
                                        #   in Loop: Header=BB51_6 Depth=1
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB51_17
# BB#16:                                # %cond.true
                                        #   in Loop: Header=BB51_6 Depth=1
	jmp	.LBB51_18
.LBB51_17:                              # %cond.false
	movl	$626, %edi              # imm = 0x272
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -128(%rbp)        # 8-byte Spill
.LBB51_18:                              # %cond.end
                                        #   in Loop: Header=BB51_6 Depth=1
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	Fsetcdr
	movq	-32(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	movq	%rax, -136(%rbp)        # 8-byte Spill
# BB#19:                                # %for.inc
                                        #   in Loop: Header=BB51_6 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB51_6
.LBB51_20:                              # %for.end
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB51_36
.LBB51_21:                              # %if.else.28
	movq	-16(%rbp), %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB51_22
	jmp	.LBB51_27
.LBB51_22:                              # %if.then.30
	movq	-16(%rbp), %rdi
	callq	ASIZE
	movq	%rax, -56(%rbp)
	movq	$0, -48(%rbp)
.LBB51_23:                              # %for.cond.32
                                        # =>This Inner Loop Header: Depth=1
	movl	$2, %eax
	movl	%eax, %ecx
	movq	-48(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, -144(%rbp)        # 8-byte Spill
	cqto
	idivq	%rcx
	movq	-144(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jge	.LBB51_26
# BB#24:                                # %for.body.35
                                        #   in Loop: Header=BB51_23 Depth=1
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	AREF
	movq	%rax, -64(%rbp)
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	-56(%rbp), %rcx
	subq	-48(%rbp), %rcx
	subq	$1, %rcx
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -160(%rbp)        # 8-byte Spill
	movq	%rcx, %rsi
	callq	AREF
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	-160(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
	movq	-16(%rbp), %rdi
	movq	-56(%rbp), %rax
	subq	-48(%rbp), %rax
	subq	$1, %rax
	movq	-64(%rbp), %rdx
	movq	%rax, %rsi
	callq	ASET
# BB#25:                                # %for.inc.42
                                        #   in Loop: Header=BB51_23 Depth=1
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB51_23
.LBB51_26:                              # %for.end.43
	jmp	.LBB51_35
.LBB51_27:                              # %if.else.44
	movq	-16(%rbp), %rdi
	callq	BOOL_VECTOR_P
	testb	$1, %al
	jne	.LBB51_28
	jmp	.LBB51_33
.LBB51_28:                              # %if.then.46
	movq	-16(%rbp), %rdi
	callq	bool_vector_size
	movq	%rax, -80(%rbp)
	movq	$0, -72(%rbp)
.LBB51_29:                              # %for.cond.50
                                        # =>This Inner Loop Header: Depth=1
	movl	$2, %eax
	movl	%eax, %ecx
	movq	-72(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, -168(%rbp)        # 8-byte Spill
	cqto
	idivq	%rcx
	movq	-168(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jge	.LBB51_32
# BB#30:                                # %for.body.54
                                        #   in Loop: Header=BB51_29 Depth=1
	movq	-16(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	bool_vector_bitref
	andb	$1, %al
	movb	%al, -81(%rbp)
	movq	-16(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movq	-16(%rbp), %rcx
	movq	-80(%rbp), %rdx
	subq	-72(%rbp), %rdx
	subq	$1, %rdx
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rsi, -184(%rbp)        # 8-byte Spill
	movq	%rdx, %rsi
	callq	bool_vector_bitref
	movzbl	%al, %r8d
	andl	$1, %r8d
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	-184(%rbp), %rsi        # 8-byte Reload
	movl	%r8d, %edx
	callq	bool_vector_set
	movq	-16(%rbp), %rdi
	movq	-80(%rbp), %rcx
	subq	-72(%rbp), %rcx
	subq	$1, %rcx
	movb	-81(%rbp), %al
	andb	$1, %al
	movq	%rcx, %rsi
	movzbl	%al, %edx
	callq	bool_vector_set
# BB#31:                                # %for.inc.63
                                        #   in Loop: Header=BB51_29 Depth=1
	movq	-72(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -72(%rbp)
	jmp	.LBB51_29
.LBB51_32:                              # %for.end.65
	jmp	.LBB51_34
.LBB51_33:                              # %if.else.66
	movl	$179, %edi
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -192(%rbp)        # 8-byte Spill
.LBB51_34:                              # %if.end.68
	jmp	.LBB51_35
.LBB51_35:                              # %if.end.69
	jmp	.LBB51_36
.LBB51_36:                              # %if.end.70
	jmp	.LBB51_37
.LBB51_37:                              # %if.end.71
	jmp	.LBB51_38
.LBB51_38:                              # %if.end.72
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB51_39:                              # %return
	movq	-8(%rbp), %rax
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end51:
	.size	Fnreverse, .Lfunc_end51-Fnreverse
	.cfi_endproc

	.globl	Freverse
	.align	16, 0x90
	.type	Freverse,@function
Freverse:                               # @Freverse
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp156:
	.cfi_def_cfa_offset 16
.Ltmp157:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp158:
	.cfi_def_cfa_register %rbp
	subq	$224, %rsp
	xorl	%eax, %eax
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB52_2
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB52_70
.LBB52_2:                               # %if.else
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB52_16
# BB#3:                                 # %if.then.4
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -24(%rbp)
.LBB52_4:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB52_15
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB52_4 Depth=1
	jmp	.LBB52_6
.LBB52_6:                               # %do.body
                                        #   in Loop: Header=BB52_4 Depth=1
	xorl	%edi, %edi
	movq	globals+1928, %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-120(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB52_9
# BB#7:                                 # %land.lhs.true
                                        #   in Loop: Header=BB52_4 Depth=1
	xorl	%edi, %edi
	movq	globals+1104, %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-128(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB52_9
# BB#8:                                 # %if.then.16
                                        #   in Loop: Header=BB52_4 Depth=1
	callq	process_quit_flag
	jmp	.LBB52_12
.LBB52_9:                               # %if.else.17
                                        #   in Loop: Header=BB52_4 Depth=1
	movb	pending_signals, %al
	testb	$1, %al
	je	.LBB52_11
# BB#10:                                # %if.then.18
                                        #   in Loop: Header=BB52_4 Depth=1
	callq	process_pending_signals
.LBB52_11:                              # %if.end
                                        #   in Loop: Header=BB52_4 Depth=1
	jmp	.LBB52_12
.LBB52_12:                              # %if.end.19
                                        #   in Loop: Header=BB52_4 Depth=1
	jmp	.LBB52_13
.LBB52_13:                              # %do.end
                                        #   in Loop: Header=BB52_4 Depth=1
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	movq	-24(%rbp), %rsi
	callq	Fcons
	movq	%rax, -24(%rbp)
# BB#14:                                # %for.inc
                                        #   in Loop: Header=BB52_4 Depth=1
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB52_4
.LBB52_15:                              # %for.end
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	CHECK_LIST_END
	jmp	.LBB52_68
.LBB52_16:                              # %if.else.22
	movq	-16(%rbp), %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB52_17
	jmp	.LBB52_22
.LBB52_17:                              # %if.then.24
	movq	-16(%rbp), %rdi
	callq	ASIZE
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	make_uninit_vector
	movq	%rax, -24(%rbp)
	movq	$0, -32(%rbp)
.LBB52_18:                              # %for.cond.27
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jge	.LBB52_21
# BB#19:                                # %for.body.30
                                        #   in Loop: Header=BB52_18 Depth=1
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	-40(%rbp), %rcx
	subq	-32(%rbp), %rcx
	subq	$1, %rcx
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -144(%rbp)        # 8-byte Spill
	movq	%rcx, %rsi
	callq	AREF
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	-144(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
# BB#20:                                # %for.inc.34
                                        #   in Loop: Header=BB52_18 Depth=1
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB52_18
.LBB52_21:                              # %for.end.35
	jmp	.LBB52_67
.LBB52_22:                              # %if.else.36
	movq	-16(%rbp), %rdi
	callq	BOOL_VECTOR_P
	testb	$1, %al
	jne	.LBB52_23
	jmp	.LBB52_28
.LBB52_23:                              # %if.then.38
	movq	-16(%rbp), %rdi
	callq	bool_vector_size
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	make_uninit_bool_vector
	movq	%rax, -24(%rbp)
	movq	$0, -48(%rbp)
.LBB52_24:                              # %for.cond.42
                                        # =>This Inner Loop Header: Depth=1
	movq	-48(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jge	.LBB52_27
# BB#25:                                # %for.body.45
                                        #   in Loop: Header=BB52_24 Depth=1
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	-56(%rbp), %rcx
	subq	-48(%rbp), %rcx
	subq	$1, %rcx
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -160(%rbp)        # 8-byte Spill
	movq	%rcx, %rsi
	callq	bool_vector_bitref
	movzbl	%al, %edx
	andl	$1, %edx
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	-160(%rbp), %rsi        # 8-byte Reload
	callq	bool_vector_set
# BB#26:                                # %for.inc.49
                                        #   in Loop: Header=BB52_24 Depth=1
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB52_24
.LBB52_27:                              # %for.end.51
	jmp	.LBB52_66
.LBB52_28:                              # %if.else.52
	movq	-16(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB52_29
	jmp	.LBB52_64
.LBB52_29:                              # %if.then.54
	movq	-16(%rbp), %rdi
	callq	SCHARS
	movq	%rax, -64(%rbp)
	movq	-16(%rbp), %rdi
	callq	SBYTES
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB52_35
# BB#30:                                # %if.then.60
	movq	-64(%rbp), %rdi
	callq	make_uninit_string
	movq	%rax, -24(%rbp)
	movq	$0, -80(%rbp)
.LBB52_31:                              # %for.cond.63
                                        # =>This Inner Loop Header: Depth=1
	movq	-80(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jge	.LBB52_34
# BB#32:                                # %for.body.66
                                        #   in Loop: Header=BB52_31 Depth=1
	movq	-24(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	-64(%rbp), %rcx
	subq	-80(%rbp), %rcx
	subq	$1, %rcx
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -176(%rbp)        # 8-byte Spill
	movq	%rcx, %rsi
	callq	SREF
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	-176(%rbp), %rsi        # 8-byte Reload
	movzbl	%al, %edx
	callq	SSET
# BB#33:                                # %for.inc.70
                                        #   in Loop: Header=BB52_31 Depth=1
	movq	-80(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -80(%rbp)
	jmp	.LBB52_31
.LBB52_34:                              # %for.end.72
	jmp	.LBB52_63
.LBB52_35:                              # %if.else.73
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	make_uninit_multibyte_string
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	SDATA
	movq	%rax, -88(%rbp)
	movq	-24(%rbp), %rdi
	callq	SDATA
	addq	-72(%rbp), %rax
	movq	%rax, -96(%rbp)
.LBB52_36:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-96(%rbp), %rax
	movq	-24(%rbp), %rdi
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	SDATA
	movq	-184(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jbe	.LBB52_62
# BB#37:                                # %while.body
                                        #   in Loop: Header=BB52_36 Depth=1
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB52_39
# BB#38:                                # %cond.true
                                        #   in Loop: Header=BB52_36 Depth=1
	movl	$1, -104(%rbp)
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -188(%rbp)        # 4-byte Spill
	jmp	.LBB52_46
.LBB52_39:                              # %cond.false
                                        #   in Loop: Header=BB52_36 Depth=1
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB52_41
# BB#40:                                # %cond.true.89
                                        #   in Loop: Header=BB52_36 Depth=1
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
	movl	$2, -104(%rbp)
	movq	-88(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$31, %esi
	shll	$6, %esi
	movq	-88(%rbp), %rdx
	movzbl	1(%rdx), %edi
	andl	$63, %edi
	orl	%edi, %esi
	movq	-88(%rbp), %rdx
	movzbl	(%rdx), %edi
	cmpl	$194, %edi
	cmovll	%ecx, %eax
	addl	%eax, %esi
	movl	%esi, -192(%rbp)        # 4-byte Spill
	jmp	.LBB52_45
.LBB52_41:                              # %cond.false.100
                                        #   in Loop: Header=BB52_36 Depth=1
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB52_43
# BB#42:                                # %cond.true.105
                                        #   in Loop: Header=BB52_36 Depth=1
	movl	$3, -104(%rbp)
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$15, %ecx
	shll	$12, %ecx
	movq	-88(%rbp), %rax
	movzbl	1(%rax), %edx
	andl	$63, %edx
	shll	$6, %edx
	orl	%edx, %ecx
	movq	-88(%rbp), %rax
	movzbl	2(%rax), %edx
	andl	$63, %edx
	orl	%edx, %ecx
	movl	%ecx, -196(%rbp)        # 4-byte Spill
	jmp	.LBB52_44
.LBB52_43:                              # %cond.false.119
                                        #   in Loop: Header=BB52_36 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-104(%rbp), %rdx
	movq	-88(%rbp), %rdi
	callq	string_char
	movl	%eax, -196(%rbp)        # 4-byte Spill
.LBB52_44:                              # %cond.end
                                        #   in Loop: Header=BB52_36 Depth=1
	movl	-196(%rbp), %eax        # 4-byte Reload
	movl	%eax, -192(%rbp)        # 4-byte Spill
.LBB52_45:                              # %cond.end.122
                                        #   in Loop: Header=BB52_36 Depth=1
	movl	-192(%rbp), %eax        # 4-byte Reload
	movl	%eax, -188(%rbp)        # 4-byte Spill
.LBB52_46:                              # %cond.end.124
                                        #   in Loop: Header=BB52_36 Depth=1
	movl	-188(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	xorl	%edx, %edx
	movl	%edx, %esi
	movl	%eax, -100(%rbp)
	movl	-104(%rbp), %eax
	movq	-88(%rbp), %rdi
	movslq	%eax, %r8
	addq	%r8, %rdi
	movq	%rdi, -88(%rbp)
	movl	-104(%rbp), %eax
	movq	-96(%rbp), %rdi
	movslq	%eax, %r8
	subq	%r8, %rsi
	addq	%rsi, %rdi
	movq	%rdi, -96(%rbp)
	testb	$1, %cl
	jne	.LBB52_47
	jmp	.LBB52_48
.LBB52_47:                              # %cond.true.129
                                        #   in Loop: Header=BB52_36 Depth=1
	movl	-100(%rbp), %eax
	addl	$0, %eax
	cmpl	$127, %eax
	jbe	.LBB52_49
	jmp	.LBB52_50
.LBB52_48:                              # %cond.false.133
                                        #   in Loop: Header=BB52_36 Depth=1
	movslq	-100(%rbp), %rax
	addq	$0, %rax
	cmpq	$127, %rax
	ja	.LBB52_50
.LBB52_49:                              # %cond.true.138
                                        #   in Loop: Header=BB52_36 Depth=1
	movl	-100(%rbp), %eax
	movb	%al, %cl
	movq	-96(%rbp), %rdx
	movb	%cl, (%rdx)
	jmp	.LBB52_61
.LBB52_50:                              # %cond.false.141
                                        #   in Loop: Header=BB52_36 Depth=1
	movb	$1, %al
	testb	$1, %al
	jne	.LBB52_51
	jmp	.LBB52_52
.LBB52_51:                              # %cond.true.142
                                        #   in Loop: Header=BB52_36 Depth=1
	movl	-100(%rbp), %eax
	addl	$0, %eax
	cmpl	$2047, %eax             # imm = 0x7FF
	jbe	.LBB52_53
	jmp	.LBB52_54
.LBB52_52:                              # %cond.false.146
                                        #   in Loop: Header=BB52_36 Depth=1
	movslq	-100(%rbp), %rax
	addq	$0, %rax
	cmpq	$2047, %rax             # imm = 0x7FF
	ja	.LBB52_54
.LBB52_53:                              # %cond.true.151
                                        #   in Loop: Header=BB52_36 Depth=1
	movl	$2, %eax
	movl	-100(%rbp), %ecx
	sarl	$6, %ecx
	orl	$192, %ecx
	movb	%cl, %dl
	movq	-96(%rbp), %rsi
	movb	%dl, (%rsi)
	movl	-100(%rbp), %ecx
	andl	$63, %ecx
	orl	$128, %ecx
	movb	%cl, %dl
	movq	-96(%rbp), %rsi
	movb	%dl, 1(%rsi)
	movl	%eax, -200(%rbp)        # 4-byte Spill
	jmp	.LBB52_60
.LBB52_54:                              # %cond.false.159
                                        #   in Loop: Header=BB52_36 Depth=1
	movb	$1, %al
	testb	$1, %al
	jne	.LBB52_55
	jmp	.LBB52_56
.LBB52_55:                              # %cond.true.160
                                        #   in Loop: Header=BB52_36 Depth=1
	movl	-100(%rbp), %eax
	addl	$0, %eax
	cmpl	$65535, %eax            # imm = 0xFFFF
	jbe	.LBB52_57
	jmp	.LBB52_58
.LBB52_56:                              # %cond.false.164
                                        #   in Loop: Header=BB52_36 Depth=1
	movslq	-100(%rbp), %rax
	addq	$0, %rax
	cmpq	$65535, %rax            # imm = 0xFFFF
	ja	.LBB52_58
.LBB52_57:                              # %cond.true.169
                                        #   in Loop: Header=BB52_36 Depth=1
	movl	$3, %eax
	movl	-100(%rbp), %ecx
	sarl	$12, %ecx
	orl	$224, %ecx
	movb	%cl, %dl
	movq	-96(%rbp), %rsi
	movb	%dl, (%rsi)
	movl	-100(%rbp), %ecx
	sarl	$6, %ecx
	andl	$63, %ecx
	orl	$128, %ecx
	movb	%cl, %dl
	movq	-96(%rbp), %rsi
	movb	%dl, 1(%rsi)
	movl	-100(%rbp), %ecx
	andl	$63, %ecx
	orl	$128, %ecx
	movb	%cl, %dl
	movq	-96(%rbp), %rsi
	movb	%dl, 2(%rsi)
	movl	%eax, -204(%rbp)        # 4-byte Spill
	jmp	.LBB52_59
.LBB52_58:                              # %cond.false.183
                                        #   in Loop: Header=BB52_36 Depth=1
	movl	-100(%rbp), %edi
	movq	-96(%rbp), %rsi
	callq	char_string
	movl	%eax, -204(%rbp)        # 4-byte Spill
.LBB52_59:                              # %cond.end.185
                                        #   in Loop: Header=BB52_36 Depth=1
	movl	-204(%rbp), %eax        # 4-byte Reload
	movl	%eax, -200(%rbp)        # 4-byte Spill
.LBB52_60:                              # %cond.end.187
                                        #   in Loop: Header=BB52_36 Depth=1
	movl	-200(%rbp), %eax        # 4-byte Reload
	movl	%eax, -208(%rbp)        # 4-byte Spill
.LBB52_61:                              # %cond.end.189
                                        #   in Loop: Header=BB52_36 Depth=1
	jmp	.LBB52_36
.LBB52_62:                              # %while.end
	jmp	.LBB52_63
.LBB52_63:                              # %if.end.191
	jmp	.LBB52_65
.LBB52_64:                              # %if.else.192
	movl	$844, %edi              # imm = 0x34C
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -216(%rbp)        # 8-byte Spill
.LBB52_65:                              # %if.end.194
	jmp	.LBB52_66
.LBB52_66:                              # %if.end.195
	jmp	.LBB52_67
.LBB52_67:                              # %if.end.196
	jmp	.LBB52_68
.LBB52_68:                              # %if.end.197
	jmp	.LBB52_69
.LBB52_69:                              # %if.end.198
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB52_70:                              # %return
	movq	-8(%rbp), %rax
	addq	$224, %rsp
	popq	%rbp
	retq
.Lfunc_end52:
	.size	Freverse, .Lfunc_end52-Freverse
	.cfi_endproc

	.globl	Fsort
	.align	16, 0x90
	.type	Fsort,@function
Fsort:                                  # @Fsort
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp159:
	.cfi_def_cfa_offset 16
.Ltmp160:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp161:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	andq	$7, %rsi
	movl	%esi, %eax
	cmpl	$3, %eax
	jne	.LBB53_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	sort_list
	movq	%rax, -8(%rbp)
	jmp	.LBB53_8
.LBB53_2:                               # %if.else
	movq	-8(%rbp), %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB53_3
	jmp	.LBB53_4
.LBB53_3:                               # %if.then.3
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	sort_vector
	jmp	.LBB53_7
.LBB53_4:                               # %if.else.4
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB53_6
# BB#5:                                 # %if.then.8
	movl	$844, %edi              # imm = 0x34C
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -32(%rbp)         # 8-byte Spill
.LBB53_6:                               # %if.end
	jmp	.LBB53_7
.LBB53_7:                               # %if.end.10
	jmp	.LBB53_8
.LBB53_8:                               # %if.end.11
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end53:
	.size	Fsort, .Lfunc_end53-Fsort
	.cfi_endproc

	.align	16, 0x90
	.type	sort_list,@function
sort_list:                              # @sort_list
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp162:
	.cfi_def_cfa_offset 16
.Ltmp163:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp164:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	Flength
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -64(%rbp)
	cmpq	$2, -64(%rbp)
	jge	.LBB54_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB54_3
.LBB54_2:                               # %if.end
	movl	$2, %eax
	movl	%eax, %ecx
	movq	-64(%rbp), %rax
	cqto
	idivq	%rcx
	subq	$1, %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	Fnthcdr
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	Fcdr
	xorl	%edi, %edi
	movq	%rax, -40(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fsetcdr
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	Fsort
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	Fsort
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdx
	callq	merge
	movq	%rax, -8(%rbp)
.LBB54_3:                               # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end54:
	.size	sort_list, .Lfunc_end54-sort_list
	.cfi_endproc

	.align	16, 0x90
	.type	sort_vector,@function
sort_vector:                            # @sort_vector
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp165:
	.cfi_def_cfa_offset 16
.Ltmp166:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp167:
	.cfi_def_cfa_register %rbp
	subq	$944, %rsp              # imm = 0x3B0
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	ASIZE
	movq	%rax, -24(%rbp)
	cmpq	$2, -24(%rbp)
	jge	.LBB55_2
# BB#1:                                 # %if.then
	jmp	.LBB55_417
.LBB55_2:                               # %if.end
	movq	-24(%rbp), %rax
	sarq	$1, %rax
	movq	%rax, -32(%rbp)
	movq	$16384, -48(%rbp)       # imm = 0x4000
	callq	SPECPDL_INDEX
	movq	%rax, -56(%rbp)
	movb	$0, -57(%rbp)
# BB#3:                                 # %do.body
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB55_4
	jmp	.LBB55_83
.LBB55_4:                               # %cond.true
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB55_5
	jmp	.LBB55_44
.LBB55_5:                               # %cond.true.6
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB55_7
# BB#6:                                 # %cond.true.10
	xorl	%eax, %eax
	movq	-32(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movq	-32(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	jmp	.LBB55_8
.LBB55_7:                               # %cond.false
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -92(%rbp)         # 4-byte Spill
.LBB55_8:                               # %cond.end
	movl	-92(%rbp), %eax         # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB55_10
# BB#9:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jl	.LBB55_36
.LBB55_10:                              # %lor.lhs.false
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB55_11
	jmp	.LBB55_22
.LBB55_11:                              # %cond.true.39
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jge	.LBB55_16
# BB#12:                                # %cond.true.44
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -96(%rbp)         # 4-byte Spill
	jge	.LBB55_14
# BB#13:                                # %cond.true.54
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -100(%rbp)        # 4-byte Spill
	jmp	.LBB55_15
.LBB55_14:                              # %cond.false.64
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -100(%rbp)        # 4-byte Spill
.LBB55_15:                              # %cond.end.70
	movl	-100(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-96(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB55_36
	jmp	.LBB55_33
.LBB55_16:                              # %cond.false.74
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB55_17
	jmp	.LBB55_18
.LBB55_17:                              # %cond.true.75
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB55_36
	jmp	.LBB55_33
.LBB55_18:                              # %cond.false.76
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB55_20
# BB#19:                                # %cond.true.84
	xorl	%eax, %eax
	movq	-32(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movq	-32(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
	jmp	.LBB55_21
.LBB55_20:                              # %cond.false.104
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -104(%rbp)        # 4-byte Spill
.LBB55_21:                              # %cond.end.110
	movl	-104(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-32(%rbp), %rsi
	movb	%sil, %dil
	movsbl	%dil, %ecx
	cmpl	%ecx, %eax
	jl	.LBB55_36
	jmp	.LBB55_33
.LBB55_22:                              # %cond.false.117
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB55_23
	jmp	.LBB55_24
.LBB55_23:                              # %cond.true.118
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB55_36
	jmp	.LBB55_33
.LBB55_24:                              # %cond.false.119
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jge	.LBB55_29
# BB#25:                                # %cond.true.124
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -108(%rbp)        # 4-byte Spill
	jge	.LBB55_27
# BB#26:                                # %cond.true.134
	xorl	%eax, %eax
	movq	-32(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movq	-32(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
	jmp	.LBB55_28
.LBB55_27:                              # %cond.false.154
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -112(%rbp)        # 4-byte Spill
.LBB55_28:                              # %cond.end.160
	movl	-112(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-108(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB55_36
	jmp	.LBB55_33
.LBB55_29:                              # %cond.false.165
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB55_31
# BB#30:                                # %cond.true.173
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -116(%rbp)        # 4-byte Spill
	jmp	.LBB55_32
.LBB55_31:                              # %cond.false.183
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -116(%rbp)        # 4-byte Spill
.LBB55_32:                              # %cond.end.189
	movl	-116(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-32(%rbp), %rsi
	movb	%sil, %dil
	movsbl	%dil, %ecx
	cmpl	%ecx, %eax
	jl	.LBB55_36
.LBB55_33:                              # %lor.lhs.false.196
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	shll	$3, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB55_35
# BB#34:                                # %land.lhs.true.204
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	shll	$3, %edx
	cmpl	$-128, %edx
	jl	.LBB55_36
.LBB55_35:                              # %lor.lhs.false.210
	movl	$127, %eax
	movq	-32(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	shll	$3, %esi
	cmpl	%esi, %eax
	jge	.LBB55_40
.LBB55_36:                              # %cond.true.216
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	cmpl	$127, %edx
	jg	.LBB55_38
# BB#37:                                # %cond.true.222
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -120(%rbp)        # 4-byte Spill
	jmp	.LBB55_39
.LBB55_38:                              # %cond.false.228
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -120(%rbp)        # 4-byte Spill
.LBB55_39:                              # %cond.end.236
	movl	-120(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -72(%rbp)
	testb	$1, %cl
	jne	.LBB55_403
	jmp	.LBB55_402
.LBB55_40:                              # %cond.false.239
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	cmpl	$127, %edx
	jg	.LBB55_42
# BB#41:                                # %cond.true.245
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -124(%rbp)        # 4-byte Spill
	jmp	.LBB55_43
.LBB55_42:                              # %cond.false.251
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -124(%rbp)        # 4-byte Spill
.LBB55_43:                              # %cond.end.259
	movl	-124(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -72(%rbp)
	testb	$1, %dl
	jne	.LBB55_403
	jmp	.LBB55_402
.LBB55_44:                              # %cond.false.262
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB55_46
# BB#45:                                # %cond.true.268
	xorl	%eax, %eax
	movq	-32(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	jmp	.LBB55_47
.LBB55_46:                              # %cond.false.285
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
.LBB55_47:                              # %cond.end.289
	movq	-136(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB55_49
# BB#48:                                # %land.lhs.true.293
	cmpq	$0, -32(%rbp)
	jl	.LBB55_75
.LBB55_49:                              # %lor.lhs.false.296
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB55_50
	jmp	.LBB55_61
.LBB55_50:                              # %cond.true.297
	cmpq	$0, -32(%rbp)
	jge	.LBB55_55
# BB#51:                                # %cond.true.300
	movq	-32(%rbp), %rax
	movq	-32(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -144(%rbp)        # 8-byte Spill
	jge	.LBB55_53
# BB#52:                                # %cond.true.306
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	jmp	.LBB55_54
.LBB55_53:                              # %cond.false.314
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
.LBB55_54:                              # %cond.end.318
	movq	-152(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -160(%rbp)        # 8-byte Spill
	cqto
	movq	-160(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-144(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB55_75
	jmp	.LBB55_72
.LBB55_55:                              # %cond.false.323
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB55_56
	jmp	.LBB55_57
.LBB55_56:                              # %cond.true.324
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB55_75
	jmp	.LBB55_72
.LBB55_57:                              # %cond.false.325
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB55_59
# BB#58:                                # %cond.true.331
	xorl	%eax, %eax
	movq	-32(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	jmp	.LBB55_60
.LBB55_59:                              # %cond.false.348
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
.LBB55_60:                              # %cond.end.352
	movq	-168(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -176(%rbp)        # 8-byte Spill
	cqto
	movq	-176(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-32(%rbp), %rax
	jl	.LBB55_75
	jmp	.LBB55_72
.LBB55_61:                              # %cond.false.357
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB55_62
	jmp	.LBB55_63
.LBB55_62:                              # %cond.true.358
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB55_75
	jmp	.LBB55_72
.LBB55_63:                              # %cond.false.359
	cmpq	$0, -32(%rbp)
	jge	.LBB55_68
# BB#64:                                # %cond.true.362
	movq	-32(%rbp), %rax
	movq	-32(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -184(%rbp)        # 8-byte Spill
	jge	.LBB55_66
# BB#65:                                # %cond.true.368
	xorl	%eax, %eax
	movq	-32(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -192(%rbp)        # 8-byte Spill
	jmp	.LBB55_67
.LBB55_66:                              # %cond.false.385
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
.LBB55_67:                              # %cond.end.389
	movq	-192(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -200(%rbp)        # 8-byte Spill
	cqto
	movq	-200(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-184(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB55_75
	jmp	.LBB55_72
.LBB55_68:                              # %cond.false.394
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB55_70
# BB#69:                                # %cond.true.400
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	jmp	.LBB55_71
.LBB55_70:                              # %cond.false.408
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
.LBB55_71:                              # %cond.end.412
	movq	-208(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -216(%rbp)        # 8-byte Spill
	cqto
	movq	-216(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-32(%rbp), %rax
	jl	.LBB55_75
.LBB55_72:                              # %lor.lhs.false.417
	movq	-32(%rbp), %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB55_74
# BB#73:                                # %land.lhs.true.423
	movq	-32(%rbp), %rax
	shlq	$3, %rax
	cmpq	$-128, %rax
	jl	.LBB55_75
.LBB55_74:                              # %lor.lhs.false.427
	movl	$127, %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rdx
	shlq	$3, %rdx
	cmpq	%rdx, %rcx
	jge	.LBB55_79
.LBB55_75:                              # %cond.true.431
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	cmpl	$127, %edx
	jg	.LBB55_77
# BB#76:                                # %cond.true.437
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -220(%rbp)        # 4-byte Spill
	jmp	.LBB55_78
.LBB55_77:                              # %cond.false.443
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -220(%rbp)        # 4-byte Spill
.LBB55_78:                              # %cond.end.451
	movl	-220(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -72(%rbp)
	testb	$1, %cl
	jne	.LBB55_403
	jmp	.LBB55_402
.LBB55_79:                              # %cond.false.454
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	cmpl	$127, %edx
	jg	.LBB55_81
# BB#80:                                # %cond.true.460
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -224(%rbp)        # 4-byte Spill
	jmp	.LBB55_82
.LBB55_81:                              # %cond.false.466
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -224(%rbp)        # 4-byte Spill
.LBB55_82:                              # %cond.end.474
	movl	-224(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -72(%rbp)
	testb	$1, %dl
	jne	.LBB55_403
	jmp	.LBB55_402
.LBB55_83:                              # %cond.false.477
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB55_84
	jmp	.LBB55_163
.LBB55_84:                              # %cond.true.478
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB55_85
	jmp	.LBB55_124
.LBB55_85:                              # %cond.true.479
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB55_87
# BB#86:                                # %cond.true.487
	xorl	%eax, %eax
	movq	-32(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dil
	andb	$1, %dil
	movzbl	%dil, %esi
	subl	%esi, %eax
	movq	-32(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -228(%rbp)        # 4-byte Spill
	jmp	.LBB55_88
.LBB55_87:                              # %cond.false.507
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -228(%rbp)        # 4-byte Spill
.LBB55_88:                              # %cond.end.513
	movl	-228(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB55_90
# BB#89:                                # %land.lhs.true.517
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jl	.LBB55_116
.LBB55_90:                              # %lor.lhs.false.522
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB55_91
	jmp	.LBB55_102
.LBB55_91:                              # %cond.true.523
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jge	.LBB55_96
# BB#92:                                # %cond.true.528
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -232(%rbp)        # 4-byte Spill
	jge	.LBB55_94
# BB#93:                                # %cond.true.538
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -236(%rbp)        # 4-byte Spill
	jmp	.LBB55_95
.LBB55_94:                              # %cond.false.548
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -236(%rbp)        # 4-byte Spill
.LBB55_95:                              # %cond.end.554
	movl	-236(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-232(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB55_116
	jmp	.LBB55_113
.LBB55_96:                              # %cond.false.559
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB55_97
	jmp	.LBB55_98
.LBB55_97:                              # %cond.true.560
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB55_116
	jmp	.LBB55_113
.LBB55_98:                              # %cond.false.561
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB55_100
# BB#99:                                # %cond.true.569
	xorl	%eax, %eax
	movq	-32(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dil
	andb	$1, %dil
	movzbl	%dil, %esi
	subl	%esi, %eax
	movq	-32(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -240(%rbp)        # 4-byte Spill
	jmp	.LBB55_101
.LBB55_100:                             # %cond.false.589
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -240(%rbp)        # 4-byte Spill
.LBB55_101:                             # %cond.end.595
	movl	-240(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-32(%rbp), %rsi
	movw	%si, %di
	movswl	%di, %ecx
	cmpl	%ecx, %eax
	jl	.LBB55_116
	jmp	.LBB55_113
.LBB55_102:                             # %cond.false.602
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB55_103
	jmp	.LBB55_104
.LBB55_103:                             # %cond.true.603
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB55_116
	jmp	.LBB55_113
.LBB55_104:                             # %cond.false.604
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jge	.LBB55_109
# BB#105:                               # %cond.true.609
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -244(%rbp)        # 4-byte Spill
	jge	.LBB55_107
# BB#106:                               # %cond.true.619
	xorl	%eax, %eax
	movq	-32(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dil
	andb	$1, %dil
	movzbl	%dil, %esi
	subl	%esi, %eax
	movq	-32(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -248(%rbp)        # 4-byte Spill
	jmp	.LBB55_108
.LBB55_107:                             # %cond.false.639
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -248(%rbp)        # 4-byte Spill
.LBB55_108:                             # %cond.end.645
	movl	-248(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-244(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB55_116
	jmp	.LBB55_113
.LBB55_109:                             # %cond.false.650
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB55_111
# BB#110:                               # %cond.true.658
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -252(%rbp)        # 4-byte Spill
	jmp	.LBB55_112
.LBB55_111:                             # %cond.false.668
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -252(%rbp)        # 4-byte Spill
.LBB55_112:                             # %cond.end.674
	movl	-252(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-32(%rbp), %rsi
	movw	%si, %di
	movswl	%di, %ecx
	cmpl	%ecx, %eax
	jl	.LBB55_116
.LBB55_113:                             # %lor.lhs.false.681
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	shll	$3, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB55_115
# BB#114:                               # %land.lhs.true.689
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	shll	$3, %edx
	cmpl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	jl	.LBB55_116
.LBB55_115:                             # %lor.lhs.false.695
	movl	$32767, %eax            # imm = 0x7FFF
	movq	-32(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	shll	$3, %esi
	cmpl	%esi, %eax
	jge	.LBB55_120
.LBB55_116:                             # %cond.true.701
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB55_118
# BB#117:                               # %cond.true.707
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -256(%rbp)        # 4-byte Spill
	jmp	.LBB55_119
.LBB55_118:                             # %cond.false.713
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -256(%rbp)        # 4-byte Spill
.LBB55_119:                             # %cond.end.721
	movl	-256(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -72(%rbp)
	testb	$1, %cl
	jne	.LBB55_403
	jmp	.LBB55_402
.LBB55_120:                             # %cond.false.724
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB55_122
# BB#121:                               # %cond.true.730
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -260(%rbp)        # 4-byte Spill
	jmp	.LBB55_123
.LBB55_122:                             # %cond.false.736
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -260(%rbp)        # 4-byte Spill
.LBB55_123:                             # %cond.end.744
	movl	-260(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -72(%rbp)
	testb	$1, %dl
	jne	.LBB55_403
	jmp	.LBB55_402
.LBB55_124:                             # %cond.false.747
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB55_126
# BB#125:                               # %cond.true.753
	xorl	%eax, %eax
	movq	-32(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -272(%rbp)        # 8-byte Spill
	jmp	.LBB55_127
.LBB55_126:                             # %cond.false.770
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
.LBB55_127:                             # %cond.end.774
	movq	-272(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB55_129
# BB#128:                               # %land.lhs.true.778
	cmpq	$0, -32(%rbp)
	jl	.LBB55_155
.LBB55_129:                             # %lor.lhs.false.781
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB55_130
	jmp	.LBB55_141
.LBB55_130:                             # %cond.true.782
	cmpq	$0, -32(%rbp)
	jge	.LBB55_135
# BB#131:                               # %cond.true.785
	movq	-32(%rbp), %rax
	movq	-32(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -280(%rbp)        # 8-byte Spill
	jge	.LBB55_133
# BB#132:                               # %cond.true.791
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	jmp	.LBB55_134
.LBB55_133:                             # %cond.false.799
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
.LBB55_134:                             # %cond.end.803
	movq	-288(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -296(%rbp)        # 8-byte Spill
	cqto
	movq	-296(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-280(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB55_155
	jmp	.LBB55_152
.LBB55_135:                             # %cond.false.808
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB55_136
	jmp	.LBB55_137
.LBB55_136:                             # %cond.true.809
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB55_155
	jmp	.LBB55_152
.LBB55_137:                             # %cond.false.810
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB55_139
# BB#138:                               # %cond.true.816
	xorl	%eax, %eax
	movq	-32(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -304(%rbp)        # 8-byte Spill
	jmp	.LBB55_140
.LBB55_139:                             # %cond.false.833
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
.LBB55_140:                             # %cond.end.837
	movq	-304(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -312(%rbp)        # 8-byte Spill
	cqto
	movq	-312(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-32(%rbp), %rax
	jl	.LBB55_155
	jmp	.LBB55_152
.LBB55_141:                             # %cond.false.842
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB55_142
	jmp	.LBB55_143
.LBB55_142:                             # %cond.true.843
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB55_155
	jmp	.LBB55_152
.LBB55_143:                             # %cond.false.844
	cmpq	$0, -32(%rbp)
	jge	.LBB55_148
# BB#144:                               # %cond.true.847
	movq	-32(%rbp), %rax
	movq	-32(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -320(%rbp)        # 8-byte Spill
	jge	.LBB55_146
# BB#145:                               # %cond.true.853
	xorl	%eax, %eax
	movq	-32(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -328(%rbp)        # 8-byte Spill
	jmp	.LBB55_147
.LBB55_146:                             # %cond.false.870
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
.LBB55_147:                             # %cond.end.874
	movq	-328(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -336(%rbp)        # 8-byte Spill
	cqto
	movq	-336(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-320(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB55_155
	jmp	.LBB55_152
.LBB55_148:                             # %cond.false.879
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB55_150
# BB#149:                               # %cond.true.885
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	jmp	.LBB55_151
.LBB55_150:                             # %cond.false.893
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
.LBB55_151:                             # %cond.end.897
	movq	-344(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -352(%rbp)        # 8-byte Spill
	cqto
	movq	-352(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-32(%rbp), %rax
	jl	.LBB55_155
.LBB55_152:                             # %lor.lhs.false.902
	movq	-32(%rbp), %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB55_154
# BB#153:                               # %land.lhs.true.908
	movq	-32(%rbp), %rax
	shlq	$3, %rax
	cmpq	$-32768, %rax           # imm = 0xFFFFFFFFFFFF8000
	jl	.LBB55_155
.LBB55_154:                             # %lor.lhs.false.912
	movl	$32767, %eax            # imm = 0x7FFF
	movl	%eax, %ecx
	movq	-32(%rbp), %rdx
	shlq	$3, %rdx
	cmpq	%rdx, %rcx
	jge	.LBB55_159
.LBB55_155:                             # %cond.true.916
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB55_157
# BB#156:                               # %cond.true.922
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -356(%rbp)        # 4-byte Spill
	jmp	.LBB55_158
.LBB55_157:                             # %cond.false.928
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -356(%rbp)        # 4-byte Spill
.LBB55_158:                             # %cond.end.936
	movl	-356(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -72(%rbp)
	testb	$1, %cl
	jne	.LBB55_403
	jmp	.LBB55_402
.LBB55_159:                             # %cond.false.939
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB55_161
# BB#160:                               # %cond.true.945
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -360(%rbp)        # 4-byte Spill
	jmp	.LBB55_162
.LBB55_161:                             # %cond.false.951
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -360(%rbp)        # 4-byte Spill
.LBB55_162:                             # %cond.end.959
	movl	-360(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -72(%rbp)
	testb	$1, %dl
	jne	.LBB55_403
	jmp	.LBB55_402
.LBB55_163:                             # %cond.false.962
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB55_164
	jmp	.LBB55_243
.LBB55_164:                             # %cond.true.963
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB55_165
	jmp	.LBB55_204
.LBB55_165:                             # %cond.true.964
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB55_167
# BB#166:                               # %cond.true.971
	xorl	%eax, %eax
	movq	-32(%rbp), %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %eax
	movq	-32(%rbp), %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -364(%rbp)        # 4-byte Spill
	jmp	.LBB55_168
.LBB55_167:                             # %cond.false.989
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -364(%rbp)        # 4-byte Spill
.LBB55_168:                             # %cond.end.994
	movl	-364(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB55_170
# BB#169:                               # %land.lhs.true.998
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jl	.LBB55_196
.LBB55_170:                             # %lor.lhs.false.1002
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB55_171
	jmp	.LBB55_182
.LBB55_171:                             # %cond.true.1003
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jge	.LBB55_176
# BB#172:                               # %cond.true.1007
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	movq	-32(%rbp), %rax
	movl	%eax, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	movl	%ecx, -368(%rbp)        # 4-byte Spill
	jge	.LBB55_174
# BB#173:                               # %cond.true.1015
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	%ecx, -372(%rbp)        # 4-byte Spill
	jmp	.LBB55_175
.LBB55_174:                             # %cond.false.1024
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	movl	%ecx, -372(%rbp)        # 4-byte Spill
.LBB55_175:                             # %cond.end.1029
	movl	-372(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-368(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB55_196
	jmp	.LBB55_193
.LBB55_176:                             # %cond.false.1034
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB55_177
	jmp	.LBB55_178
.LBB55_177:                             # %cond.true.1035
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB55_196
	jmp	.LBB55_193
.LBB55_178:                             # %cond.false.1036
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB55_180
# BB#179:                               # %cond.true.1043
	xorl	%eax, %eax
	movq	-32(%rbp), %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %eax
	movq	-32(%rbp), %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -376(%rbp)        # 4-byte Spill
	jmp	.LBB55_181
.LBB55_180:                             # %cond.false.1061
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -376(%rbp)        # 4-byte Spill
.LBB55_181:                             # %cond.end.1066
	movl	-376(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-32(%rbp), %rsi
	movl	%esi, %ecx
	cmpl	%ecx, %eax
	jl	.LBB55_196
	jmp	.LBB55_193
.LBB55_182:                             # %cond.false.1072
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB55_183
	jmp	.LBB55_184
.LBB55_183:                             # %cond.true.1073
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB55_196
	jmp	.LBB55_193
.LBB55_184:                             # %cond.false.1074
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jge	.LBB55_189
# BB#185:                               # %cond.true.1078
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	movq	-32(%rbp), %rax
	movl	%eax, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	movl	%ecx, -380(%rbp)        # 4-byte Spill
	jge	.LBB55_187
# BB#186:                               # %cond.true.1086
	xorl	%eax, %eax
	movq	-32(%rbp), %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %eax
	movq	-32(%rbp), %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -384(%rbp)        # 4-byte Spill
	jmp	.LBB55_188
.LBB55_187:                             # %cond.false.1104
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -384(%rbp)        # 4-byte Spill
.LBB55_188:                             # %cond.end.1109
	movl	-384(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-380(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB55_196
	jmp	.LBB55_193
.LBB55_189:                             # %cond.false.1114
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB55_191
# BB#190:                               # %cond.true.1121
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	%ecx, -388(%rbp)        # 4-byte Spill
	jmp	.LBB55_192
.LBB55_191:                             # %cond.false.1130
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	movl	%ecx, -388(%rbp)        # 4-byte Spill
.LBB55_192:                             # %cond.end.1135
	movl	-388(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-32(%rbp), %rsi
	movl	%esi, %ecx
	cmpl	%ecx, %eax
	jl	.LBB55_196
.LBB55_193:                             # %lor.lhs.false.1141
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB55_195
# BB#194:                               # %land.lhs.true.1148
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	cmpl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	jl	.LBB55_196
.LBB55_195:                             # %lor.lhs.false.1153
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movq	-32(%rbp), %rcx
	movl	%ecx, %edx
	shll	$3, %edx
	cmpl	%edx, %eax
	jge	.LBB55_200
.LBB55_196:                             # %cond.true.1158
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB55_198
# BB#197:                               # %cond.true.1163
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	movl	%ecx, -392(%rbp)        # 4-byte Spill
	jmp	.LBB55_199
.LBB55_198:                             # %cond.false.1166
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -392(%rbp)        # 4-byte Spill
.LBB55_199:                             # %cond.end.1171
	movl	-392(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -72(%rbp)
	testb	$1, %cl
	jne	.LBB55_403
	jmp	.LBB55_402
.LBB55_200:                             # %cond.false.1174
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB55_202
# BB#201:                               # %cond.true.1179
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	movl	%ecx, -396(%rbp)        # 4-byte Spill
	jmp	.LBB55_203
.LBB55_202:                             # %cond.false.1182
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -396(%rbp)        # 4-byte Spill
.LBB55_203:                             # %cond.end.1187
	movl	-396(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -72(%rbp)
	testb	$1, %dl
	jne	.LBB55_403
	jmp	.LBB55_402
.LBB55_204:                             # %cond.false.1190
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB55_206
# BB#205:                               # %cond.true.1196
	xorl	%eax, %eax
	movq	-32(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -408(%rbp)        # 8-byte Spill
	jmp	.LBB55_207
.LBB55_206:                             # %cond.false.1213
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
.LBB55_207:                             # %cond.end.1217
	movq	-408(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB55_209
# BB#208:                               # %land.lhs.true.1221
	cmpq	$0, -32(%rbp)
	jl	.LBB55_235
.LBB55_209:                             # %lor.lhs.false.1224
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB55_210
	jmp	.LBB55_221
.LBB55_210:                             # %cond.true.1225
	cmpq	$0, -32(%rbp)
	jge	.LBB55_215
# BB#211:                               # %cond.true.1228
	movq	-32(%rbp), %rax
	movq	-32(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -416(%rbp)        # 8-byte Spill
	jge	.LBB55_213
# BB#212:                               # %cond.true.1234
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -424(%rbp)        # 8-byte Spill
	jmp	.LBB55_214
.LBB55_213:                             # %cond.false.1242
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -424(%rbp)        # 8-byte Spill
.LBB55_214:                             # %cond.end.1246
	movq	-424(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -432(%rbp)        # 8-byte Spill
	cqto
	movq	-432(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-416(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB55_235
	jmp	.LBB55_232
.LBB55_215:                             # %cond.false.1251
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB55_216
	jmp	.LBB55_217
.LBB55_216:                             # %cond.true.1252
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB55_235
	jmp	.LBB55_232
.LBB55_217:                             # %cond.false.1253
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB55_219
# BB#218:                               # %cond.true.1259
	xorl	%eax, %eax
	movq	-32(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -440(%rbp)        # 8-byte Spill
	jmp	.LBB55_220
.LBB55_219:                             # %cond.false.1276
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -440(%rbp)        # 8-byte Spill
.LBB55_220:                             # %cond.end.1280
	movq	-440(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -448(%rbp)        # 8-byte Spill
	cqto
	movq	-448(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-32(%rbp), %rax
	jl	.LBB55_235
	jmp	.LBB55_232
.LBB55_221:                             # %cond.false.1285
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB55_222
	jmp	.LBB55_223
.LBB55_222:                             # %cond.true.1286
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB55_235
	jmp	.LBB55_232
.LBB55_223:                             # %cond.false.1287
	cmpq	$0, -32(%rbp)
	jge	.LBB55_228
# BB#224:                               # %cond.true.1290
	movq	-32(%rbp), %rax
	movq	-32(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -456(%rbp)        # 8-byte Spill
	jge	.LBB55_226
# BB#225:                               # %cond.true.1296
	xorl	%eax, %eax
	movq	-32(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -464(%rbp)        # 8-byte Spill
	jmp	.LBB55_227
.LBB55_226:                             # %cond.false.1313
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -464(%rbp)        # 8-byte Spill
.LBB55_227:                             # %cond.end.1317
	movq	-464(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -472(%rbp)        # 8-byte Spill
	cqto
	movq	-472(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-456(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB55_235
	jmp	.LBB55_232
.LBB55_228:                             # %cond.false.1322
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB55_230
# BB#229:                               # %cond.true.1328
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -480(%rbp)        # 8-byte Spill
	jmp	.LBB55_231
.LBB55_230:                             # %cond.false.1336
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -480(%rbp)        # 8-byte Spill
.LBB55_231:                             # %cond.end.1340
	movq	-480(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -488(%rbp)        # 8-byte Spill
	cqto
	movq	-488(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-32(%rbp), %rax
	jl	.LBB55_235
.LBB55_232:                             # %lor.lhs.false.1345
	movq	-32(%rbp), %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB55_234
# BB#233:                               # %land.lhs.true.1351
	movq	-32(%rbp), %rax
	shlq	$3, %rax
	cmpq	$-2147483648, %rax      # imm = 0xFFFFFFFF80000000
	jl	.LBB55_235
.LBB55_234:                             # %lor.lhs.false.1355
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movl	%eax, %ecx
	movq	-32(%rbp), %rdx
	shlq	$3, %rdx
	cmpq	%rdx, %rcx
	jge	.LBB55_239
.LBB55_235:                             # %cond.true.1359
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB55_237
# BB#236:                               # %cond.true.1364
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	movl	%ecx, -492(%rbp)        # 4-byte Spill
	jmp	.LBB55_238
.LBB55_237:                             # %cond.false.1367
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -492(%rbp)        # 4-byte Spill
.LBB55_238:                             # %cond.end.1372
	movl	-492(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -72(%rbp)
	testb	$1, %cl
	jne	.LBB55_403
	jmp	.LBB55_402
.LBB55_239:                             # %cond.false.1375
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB55_241
# BB#240:                               # %cond.true.1380
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	movl	%ecx, -496(%rbp)        # 4-byte Spill
	jmp	.LBB55_242
.LBB55_241:                             # %cond.false.1383
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -496(%rbp)        # 4-byte Spill
.LBB55_242:                             # %cond.end.1388
	movl	-496(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -72(%rbp)
	testb	$1, %dl
	jne	.LBB55_403
	jmp	.LBB55_402
.LBB55_243:                             # %cond.false.1391
	movb	$1, %al
	testb	$1, %al
	jne	.LBB55_244
	jmp	.LBB55_323
.LBB55_244:                             # %cond.true.1392
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB55_245
	jmp	.LBB55_284
.LBB55_245:                             # %cond.true.1393
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB55_247
# BB#246:                               # %cond.true.1399
	xorl	%eax, %eax
	movq	-32(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -504(%rbp)        # 8-byte Spill
	jmp	.LBB55_248
.LBB55_247:                             # %cond.false.1416
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -504(%rbp)        # 8-byte Spill
.LBB55_248:                             # %cond.end.1420
	movq	-504(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB55_250
# BB#249:                               # %land.lhs.true.1424
	cmpq	$0, -32(%rbp)
	jl	.LBB55_276
.LBB55_250:                             # %lor.lhs.false.1427
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB55_251
	jmp	.LBB55_262
.LBB55_251:                             # %cond.true.1428
	cmpq	$0, -32(%rbp)
	jge	.LBB55_256
# BB#252:                               # %cond.true.1431
	movq	-32(%rbp), %rax
	movq	-32(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -512(%rbp)        # 8-byte Spill
	jge	.LBB55_254
# BB#253:                               # %cond.true.1437
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -520(%rbp)        # 8-byte Spill
	jmp	.LBB55_255
.LBB55_254:                             # %cond.false.1445
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -520(%rbp)        # 8-byte Spill
.LBB55_255:                             # %cond.end.1449
	movq	-520(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -528(%rbp)        # 8-byte Spill
	cqto
	movq	-528(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-512(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB55_276
	jmp	.LBB55_273
.LBB55_256:                             # %cond.false.1454
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB55_257
	jmp	.LBB55_258
.LBB55_257:                             # %cond.true.1455
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB55_276
	jmp	.LBB55_273
.LBB55_258:                             # %cond.false.1456
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB55_260
# BB#259:                               # %cond.true.1462
	xorl	%eax, %eax
	movq	-32(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -536(%rbp)        # 8-byte Spill
	jmp	.LBB55_261
.LBB55_260:                             # %cond.false.1479
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -536(%rbp)        # 8-byte Spill
.LBB55_261:                             # %cond.end.1483
	movq	-536(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -544(%rbp)        # 8-byte Spill
	cqto
	movq	-544(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-32(%rbp), %rax
	jl	.LBB55_276
	jmp	.LBB55_273
.LBB55_262:                             # %cond.false.1488
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB55_263
	jmp	.LBB55_264
.LBB55_263:                             # %cond.true.1489
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB55_276
	jmp	.LBB55_273
.LBB55_264:                             # %cond.false.1490
	cmpq	$0, -32(%rbp)
	jge	.LBB55_269
# BB#265:                               # %cond.true.1493
	movq	-32(%rbp), %rax
	movq	-32(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -552(%rbp)        # 8-byte Spill
	jge	.LBB55_267
# BB#266:                               # %cond.true.1499
	xorl	%eax, %eax
	movq	-32(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -560(%rbp)        # 8-byte Spill
	jmp	.LBB55_268
.LBB55_267:                             # %cond.false.1516
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -560(%rbp)        # 8-byte Spill
.LBB55_268:                             # %cond.end.1520
	movq	-560(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -568(%rbp)        # 8-byte Spill
	cqto
	movq	-568(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-552(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB55_276
	jmp	.LBB55_273
.LBB55_269:                             # %cond.false.1525
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB55_271
# BB#270:                               # %cond.true.1531
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -576(%rbp)        # 8-byte Spill
	jmp	.LBB55_272
.LBB55_271:                             # %cond.false.1539
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -576(%rbp)        # 8-byte Spill
.LBB55_272:                             # %cond.end.1543
	movq	-576(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -584(%rbp)        # 8-byte Spill
	cqto
	movq	-584(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-32(%rbp), %rax
	jl	.LBB55_276
.LBB55_273:                             # %lor.lhs.false.1548
	movq	-32(%rbp), %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB55_275
# BB#274:                               # %land.lhs.true.1554
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-32(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	jl	.LBB55_276
.LBB55_275:                             # %lor.lhs.false.1558
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-32(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rcx, %rax
	jge	.LBB55_280
.LBB55_276:                             # %cond.true.1562
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-32(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB55_278
# BB#277:                               # %cond.true.1566
	movq	-32(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, -592(%rbp)        # 8-byte Spill
	jmp	.LBB55_279
.LBB55_278:                             # %cond.false.1568
	movq	-32(%rbp), %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -592(%rbp)        # 8-byte Spill
.LBB55_279:                             # %cond.end.1572
	movq	-592(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -72(%rbp)
	testb	$1, %cl
	jne	.LBB55_403
	jmp	.LBB55_402
.LBB55_280:                             # %cond.false.1574
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-32(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB55_282
# BB#281:                               # %cond.true.1578
	movq	-32(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, -600(%rbp)        # 8-byte Spill
	jmp	.LBB55_283
.LBB55_282:                             # %cond.false.1580
	movq	-32(%rbp), %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -600(%rbp)        # 8-byte Spill
.LBB55_283:                             # %cond.end.1584
	movq	-600(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -72(%rbp)
	testb	$1, %dl
	jne	.LBB55_403
	jmp	.LBB55_402
.LBB55_284:                             # %cond.false.1586
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB55_286
# BB#285:                               # %cond.true.1592
	xorl	%eax, %eax
	movq	-32(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -608(%rbp)        # 8-byte Spill
	jmp	.LBB55_287
.LBB55_286:                             # %cond.false.1609
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -608(%rbp)        # 8-byte Spill
.LBB55_287:                             # %cond.end.1613
	movq	-608(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB55_289
# BB#288:                               # %land.lhs.true.1617
	cmpq	$0, -32(%rbp)
	jl	.LBB55_315
.LBB55_289:                             # %lor.lhs.false.1620
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB55_290
	jmp	.LBB55_301
.LBB55_290:                             # %cond.true.1621
	cmpq	$0, -32(%rbp)
	jge	.LBB55_295
# BB#291:                               # %cond.true.1624
	movq	-32(%rbp), %rax
	movq	-32(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -616(%rbp)        # 8-byte Spill
	jge	.LBB55_293
# BB#292:                               # %cond.true.1630
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -624(%rbp)        # 8-byte Spill
	jmp	.LBB55_294
.LBB55_293:                             # %cond.false.1638
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -624(%rbp)        # 8-byte Spill
.LBB55_294:                             # %cond.end.1642
	movq	-624(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -632(%rbp)        # 8-byte Spill
	cqto
	movq	-632(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-616(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB55_315
	jmp	.LBB55_312
.LBB55_295:                             # %cond.false.1647
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB55_296
	jmp	.LBB55_297
.LBB55_296:                             # %cond.true.1648
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB55_315
	jmp	.LBB55_312
.LBB55_297:                             # %cond.false.1649
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB55_299
# BB#298:                               # %cond.true.1655
	xorl	%eax, %eax
	movq	-32(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -640(%rbp)        # 8-byte Spill
	jmp	.LBB55_300
.LBB55_299:                             # %cond.false.1672
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -640(%rbp)        # 8-byte Spill
.LBB55_300:                             # %cond.end.1676
	movq	-640(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -648(%rbp)        # 8-byte Spill
	cqto
	movq	-648(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-32(%rbp), %rax
	jl	.LBB55_315
	jmp	.LBB55_312
.LBB55_301:                             # %cond.false.1681
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB55_302
	jmp	.LBB55_303
.LBB55_302:                             # %cond.true.1682
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB55_315
	jmp	.LBB55_312
.LBB55_303:                             # %cond.false.1683
	cmpq	$0, -32(%rbp)
	jge	.LBB55_308
# BB#304:                               # %cond.true.1686
	movq	-32(%rbp), %rax
	movq	-32(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -656(%rbp)        # 8-byte Spill
	jge	.LBB55_306
# BB#305:                               # %cond.true.1692
	xorl	%eax, %eax
	movq	-32(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -664(%rbp)        # 8-byte Spill
	jmp	.LBB55_307
.LBB55_306:                             # %cond.false.1709
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -664(%rbp)        # 8-byte Spill
.LBB55_307:                             # %cond.end.1713
	movq	-664(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -672(%rbp)        # 8-byte Spill
	cqto
	movq	-672(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-656(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB55_315
	jmp	.LBB55_312
.LBB55_308:                             # %cond.false.1718
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB55_310
# BB#309:                               # %cond.true.1724
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -680(%rbp)        # 8-byte Spill
	jmp	.LBB55_311
.LBB55_310:                             # %cond.false.1732
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -680(%rbp)        # 8-byte Spill
.LBB55_311:                             # %cond.end.1736
	movq	-680(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -688(%rbp)        # 8-byte Spill
	cqto
	movq	-688(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-32(%rbp), %rax
	jl	.LBB55_315
.LBB55_312:                             # %lor.lhs.false.1741
	movq	-32(%rbp), %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB55_314
# BB#313:                               # %land.lhs.true.1747
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-32(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	jl	.LBB55_315
.LBB55_314:                             # %lor.lhs.false.1751
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-32(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rcx, %rax
	jge	.LBB55_319
.LBB55_315:                             # %cond.true.1755
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-32(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB55_317
# BB#316:                               # %cond.true.1759
	movq	-32(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, -696(%rbp)        # 8-byte Spill
	jmp	.LBB55_318
.LBB55_317:                             # %cond.false.1761
	movq	-32(%rbp), %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -696(%rbp)        # 8-byte Spill
.LBB55_318:                             # %cond.end.1765
	movq	-696(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -72(%rbp)
	testb	$1, %cl
	jne	.LBB55_403
	jmp	.LBB55_402
.LBB55_319:                             # %cond.false.1767
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-32(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB55_321
# BB#320:                               # %cond.true.1771
	movq	-32(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, -704(%rbp)        # 8-byte Spill
	jmp	.LBB55_322
.LBB55_321:                             # %cond.false.1773
	movq	-32(%rbp), %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -704(%rbp)        # 8-byte Spill
.LBB55_322:                             # %cond.end.1777
	movq	-704(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -72(%rbp)
	testb	$1, %dl
	jne	.LBB55_403
	jmp	.LBB55_402
.LBB55_323:                             # %cond.false.1779
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB55_324
	jmp	.LBB55_363
.LBB55_324:                             # %cond.true.1780
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB55_326
# BB#325:                               # %cond.true.1786
	xorl	%eax, %eax
	movq	-32(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -712(%rbp)        # 8-byte Spill
	jmp	.LBB55_327
.LBB55_326:                             # %cond.false.1803
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -712(%rbp)        # 8-byte Spill
.LBB55_327:                             # %cond.end.1807
	movq	-712(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB55_329
# BB#328:                               # %land.lhs.true.1811
	cmpq	$0, -32(%rbp)
	jl	.LBB55_355
.LBB55_329:                             # %lor.lhs.false.1814
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB55_330
	jmp	.LBB55_341
.LBB55_330:                             # %cond.true.1815
	cmpq	$0, -32(%rbp)
	jge	.LBB55_335
# BB#331:                               # %cond.true.1818
	movq	-32(%rbp), %rax
	movq	-32(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -720(%rbp)        # 8-byte Spill
	jge	.LBB55_333
# BB#332:                               # %cond.true.1824
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -728(%rbp)        # 8-byte Spill
	jmp	.LBB55_334
.LBB55_333:                             # %cond.false.1832
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -728(%rbp)        # 8-byte Spill
.LBB55_334:                             # %cond.end.1836
	movq	-728(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -736(%rbp)        # 8-byte Spill
	cqto
	movq	-736(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-720(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB55_355
	jmp	.LBB55_352
.LBB55_335:                             # %cond.false.1841
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB55_336
	jmp	.LBB55_337
.LBB55_336:                             # %cond.true.1842
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB55_355
	jmp	.LBB55_352
.LBB55_337:                             # %cond.false.1843
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB55_339
# BB#338:                               # %cond.true.1849
	xorl	%eax, %eax
	movq	-32(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -744(%rbp)        # 8-byte Spill
	jmp	.LBB55_340
.LBB55_339:                             # %cond.false.1866
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -744(%rbp)        # 8-byte Spill
.LBB55_340:                             # %cond.end.1870
	movq	-744(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -752(%rbp)        # 8-byte Spill
	cqto
	movq	-752(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-32(%rbp), %rax
	jl	.LBB55_355
	jmp	.LBB55_352
.LBB55_341:                             # %cond.false.1875
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB55_342
	jmp	.LBB55_343
.LBB55_342:                             # %cond.true.1876
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB55_355
	jmp	.LBB55_352
.LBB55_343:                             # %cond.false.1877
	cmpq	$0, -32(%rbp)
	jge	.LBB55_348
# BB#344:                               # %cond.true.1880
	movq	-32(%rbp), %rax
	movq	-32(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -760(%rbp)        # 8-byte Spill
	jge	.LBB55_346
# BB#345:                               # %cond.true.1886
	xorl	%eax, %eax
	movq	-32(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -768(%rbp)        # 8-byte Spill
	jmp	.LBB55_347
.LBB55_346:                             # %cond.false.1903
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -768(%rbp)        # 8-byte Spill
.LBB55_347:                             # %cond.end.1907
	movq	-768(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -776(%rbp)        # 8-byte Spill
	cqto
	movq	-776(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-760(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB55_355
	jmp	.LBB55_352
.LBB55_348:                             # %cond.false.1912
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB55_350
# BB#349:                               # %cond.true.1918
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -784(%rbp)        # 8-byte Spill
	jmp	.LBB55_351
.LBB55_350:                             # %cond.false.1926
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -784(%rbp)        # 8-byte Spill
.LBB55_351:                             # %cond.end.1930
	movq	-784(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -792(%rbp)        # 8-byte Spill
	cqto
	movq	-792(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-32(%rbp), %rax
	jl	.LBB55_355
.LBB55_352:                             # %lor.lhs.false.1935
	movq	-32(%rbp), %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB55_354
# BB#353:                               # %land.lhs.true.1941
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-32(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	jl	.LBB55_355
.LBB55_354:                             # %lor.lhs.false.1945
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-32(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rcx, %rax
	jge	.LBB55_359
.LBB55_355:                             # %cond.true.1949
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-32(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB55_357
# BB#356:                               # %cond.true.1953
	movq	-32(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, -800(%rbp)        # 8-byte Spill
	jmp	.LBB55_358
.LBB55_357:                             # %cond.false.1955
	movq	-32(%rbp), %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -800(%rbp)        # 8-byte Spill
.LBB55_358:                             # %cond.end.1959
	movq	-800(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -72(%rbp)
	testb	$1, %cl
	jne	.LBB55_403
	jmp	.LBB55_402
.LBB55_359:                             # %cond.false.1961
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-32(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB55_361
# BB#360:                               # %cond.true.1965
	movq	-32(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, -808(%rbp)        # 8-byte Spill
	jmp	.LBB55_362
.LBB55_361:                             # %cond.false.1967
	movq	-32(%rbp), %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -808(%rbp)        # 8-byte Spill
.LBB55_362:                             # %cond.end.1971
	movq	-808(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -72(%rbp)
	testb	$1, %dl
	jne	.LBB55_403
	jmp	.LBB55_402
.LBB55_363:                             # %cond.false.1973
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB55_365
# BB#364:                               # %cond.true.1979
	xorl	%eax, %eax
	movq	-32(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -816(%rbp)        # 8-byte Spill
	jmp	.LBB55_366
.LBB55_365:                             # %cond.false.1996
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -816(%rbp)        # 8-byte Spill
.LBB55_366:                             # %cond.end.2000
	movq	-816(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB55_368
# BB#367:                               # %land.lhs.true.2004
	cmpq	$0, -32(%rbp)
	jl	.LBB55_394
.LBB55_368:                             # %lor.lhs.false.2007
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB55_369
	jmp	.LBB55_380
.LBB55_369:                             # %cond.true.2008
	cmpq	$0, -32(%rbp)
	jge	.LBB55_374
# BB#370:                               # %cond.true.2011
	movq	-32(%rbp), %rax
	movq	-32(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -824(%rbp)        # 8-byte Spill
	jge	.LBB55_372
# BB#371:                               # %cond.true.2017
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -832(%rbp)        # 8-byte Spill
	jmp	.LBB55_373
.LBB55_372:                             # %cond.false.2025
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -832(%rbp)        # 8-byte Spill
.LBB55_373:                             # %cond.end.2029
	movq	-832(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -840(%rbp)        # 8-byte Spill
	cqto
	movq	-840(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-824(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB55_394
	jmp	.LBB55_391
.LBB55_374:                             # %cond.false.2034
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB55_375
	jmp	.LBB55_376
.LBB55_375:                             # %cond.true.2035
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB55_394
	jmp	.LBB55_391
.LBB55_376:                             # %cond.false.2036
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB55_378
# BB#377:                               # %cond.true.2042
	xorl	%eax, %eax
	movq	-32(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -848(%rbp)        # 8-byte Spill
	jmp	.LBB55_379
.LBB55_378:                             # %cond.false.2059
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -848(%rbp)        # 8-byte Spill
.LBB55_379:                             # %cond.end.2063
	movq	-848(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -856(%rbp)        # 8-byte Spill
	cqto
	movq	-856(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-32(%rbp), %rax
	jl	.LBB55_394
	jmp	.LBB55_391
.LBB55_380:                             # %cond.false.2068
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB55_381
	jmp	.LBB55_382
.LBB55_381:                             # %cond.true.2069
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB55_394
	jmp	.LBB55_391
.LBB55_382:                             # %cond.false.2070
	cmpq	$0, -32(%rbp)
	jge	.LBB55_387
# BB#383:                               # %cond.true.2073
	movq	-32(%rbp), %rax
	movq	-32(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -864(%rbp)        # 8-byte Spill
	jge	.LBB55_385
# BB#384:                               # %cond.true.2079
	xorl	%eax, %eax
	movq	-32(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -872(%rbp)        # 8-byte Spill
	jmp	.LBB55_386
.LBB55_385:                             # %cond.false.2096
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -872(%rbp)        # 8-byte Spill
.LBB55_386:                             # %cond.end.2100
	movq	-872(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -880(%rbp)        # 8-byte Spill
	cqto
	movq	-880(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-864(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB55_394
	jmp	.LBB55_391
.LBB55_387:                             # %cond.false.2105
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB55_389
# BB#388:                               # %cond.true.2111
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -888(%rbp)        # 8-byte Spill
	jmp	.LBB55_390
.LBB55_389:                             # %cond.false.2119
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -888(%rbp)        # 8-byte Spill
.LBB55_390:                             # %cond.end.2123
	movq	-888(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -896(%rbp)        # 8-byte Spill
	cqto
	movq	-896(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-32(%rbp), %rax
	jl	.LBB55_394
.LBB55_391:                             # %lor.lhs.false.2128
	movq	-32(%rbp), %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB55_393
# BB#392:                               # %land.lhs.true.2134
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-32(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	jl	.LBB55_394
.LBB55_393:                             # %lor.lhs.false.2138
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-32(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rcx, %rax
	jge	.LBB55_398
.LBB55_394:                             # %cond.true.2142
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-32(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB55_396
# BB#395:                               # %cond.true.2146
	movq	-32(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, -904(%rbp)        # 8-byte Spill
	jmp	.LBB55_397
.LBB55_396:                             # %cond.false.2148
	movq	-32(%rbp), %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -904(%rbp)        # 8-byte Spill
.LBB55_397:                             # %cond.end.2152
	movq	-904(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -72(%rbp)
	testb	$1, %cl
	jne	.LBB55_403
	jmp	.LBB55_402
.LBB55_398:                             # %cond.false.2154
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-32(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB55_400
# BB#399:                               # %cond.true.2158
	movq	-32(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, -912(%rbp)        # 8-byte Spill
	jmp	.LBB55_401
.LBB55_400:                             # %cond.false.2160
	movq	-32(%rbp), %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -912(%rbp)        # 8-byte Spill
.LBB55_401:                             # %cond.end.2164
	movq	-912(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -72(%rbp)
	testb	$1, %dl
	jne	.LBB55_403
.LBB55_402:                             # %lor.lhs.false.2166
	movq	$-1, %rax
	cmpq	-72(%rbp), %rax
	jae	.LBB55_404
.LBB55_403:                             # %if.then.2169
	movq	$-1, %rdi
	callq	memory_full
.LBB55_404:                             # %if.else
	movq	-72(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jg	.LBB55_406
# BB#405:                               # %if.then.2172
	movq	-72(%rbp), %rax
	movq	-48(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -48(%rbp)
	movq	-72(%rbp), %rax
	addq	$15, %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -40(%rbp)
	jmp	.LBB55_407
.LBB55_406:                             # %if.else.2174
	movq	-72(%rbp), %rdi
	callq	xmalloc
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	make_save_memory
	movabsq	$free_save_value, %rdi
	movq	%rax, -80(%rbp)
	movb	$1, -57(%rbp)
	movq	-80(%rbp), %rsi
	callq	record_unwind_protect
.LBB55_407:                             # %if.end.2178
	jmp	.LBB55_408
.LBB55_408:                             # %if.end.2179
	jmp	.LBB55_409
.LBB55_409:                             # %do.end
	movq	$0, -88(%rbp)
.LBB55_410:                             # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-88(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jge	.LBB55_413
# BB#411:                               # %for.body
                                        #   in Loop: Header=BB55_410 Depth=1
	movq	-88(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	$2, (%rcx,%rax,8)
# BB#412:                               # %for.inc
                                        #   in Loop: Header=BB55_410 Depth=1
	movq	-88(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -88(%rbp)
	jmp	.LBB55_410
.LBB55_413:                             # %for.end
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdi, -920(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -928(%rbp)        # 8-byte Spill
	callq	XVECTOR
	addq	$8, %rax
	movq	-40(%rbp), %rcx
	movq	-920(%rbp), %rdi        # 8-byte Reload
	movq	-928(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	sort_vector_inplace
# BB#414:                               # %do.body.2184
	testb	$1, -57(%rbp)
	je	.LBB55_416
# BB#415:                               # %if.then.2185
	xorl	%edi, %edi
	movb	$0, -57(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -936(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-936(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -944(%rbp)        # 8-byte Spill
.LBB55_416:                             # %if.end.2188
	jmp	.LBB55_417
.LBB55_417:                             # %do.end.2189
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end55:
	.size	sort_vector, .Lfunc_end55-sort_vector
	.cfi_endproc

	.globl	merge
	.align	16, 0x90
	.type	merge,@function
merge:                                  # @merge
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp168:
	.cfi_def_cfa_offset 16
.Ltmp169:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp170:
	.cfi_def_cfa_register %rbp
	subq	$160, %rsp
	xorl	%eax, %eax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -48(%rbp)
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -56(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, -64(%rbp)
.LBB56_1:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB56_5
# BB#2:                                 # %if.then
	xorl	%edi, %edi
	movq	-56(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB56_4
# BB#3:                                 # %if.then.5
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB56_16
.LBB56_4:                               # %if.end
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	Fsetcdr
	movq	-64(%rbp), %rsi
	movq	%rsi, -8(%rbp)
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB56_16
.LBB56_5:                               # %if.end.7
                                        #   in Loop: Header=BB56_1 Depth=1
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB56_9
# BB#6:                                 # %if.then.10
	xorl	%edi, %edi
	movq	-56(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB56_8
# BB#7:                                 # %if.then.13
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB56_16
.LBB56_8:                               # %if.end.14
	movq	-56(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	Fsetcdr
	movq	-64(%rbp), %rsi
	movq	%rsi, -8(%rbp)
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB56_16
.LBB56_9:                               # %if.end.16
                                        #   in Loop: Header=BB56_1 Depth=1
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	Fcar
	movq	-48(%rbp), %rdi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	Fcar
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	-136(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	inorder
	testb	$1, %al
	jne	.LBB56_10
	jmp	.LBB56_11
.LBB56_10:                              # %if.then.20
                                        #   in Loop: Header=BB56_1 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-40(%rbp), %rdi
	callq	Fcdr
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB56_12
.LBB56_11:                              # %if.else
                                        #   in Loop: Header=BB56_1 Depth=1
	movq	-48(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-48(%rbp), %rdi
	callq	Fcdr
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -24(%rbp)
.LBB56_12:                              # %if.end.23
                                        #   in Loop: Header=BB56_1 Depth=1
	xorl	%edi, %edi
	movq	-56(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-144(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB56_14
# BB#13:                                # %if.then.26
                                        #   in Loop: Header=BB56_1 Depth=1
	movq	-72(%rbp), %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB56_15
.LBB56_14:                              # %if.else.27
                                        #   in Loop: Header=BB56_1 Depth=1
	movq	-56(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	Fsetcdr
	movq	%rax, -152(%rbp)        # 8-byte Spill
.LBB56_15:                              # %if.end.29
                                        #   in Loop: Header=BB56_1 Depth=1
	movq	-72(%rbp), %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB56_1
.LBB56_16:                              # %return
	movq	-8(%rbp), %rax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end56:
	.size	merge, .Lfunc_end56-merge
	.cfi_endproc

	.align	16, 0x90
	.type	inorder,@function
inorder:                                # @inorder
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp171:
	.cfi_def_cfa_offset 16
.Ltmp172:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp173:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rdx
	callq	call2
	xorl	%edi, %edi
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end57:
	.size	inorder, .Lfunc_end57-inorder
	.cfi_endproc

	.globl	Fplist_get
	.align	16, 0x90
	.type	Fplist_get,@function
Fplist_get:                             # @Fplist_get
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp174:
	.cfi_def_cfa_offset 16
.Ltmp175:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp176:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -40(%rbp)
	movq	%rsi, -32(%rbp)
.LBB58_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-32(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$3, %eax
	movb	%cl, -41(%rbp)          # 1-byte Spill
	jne	.LBB58_3
# BB#2:                                 # %land.rhs
                                        #   in Loop: Header=BB58_1 Depth=1
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	sete	%dl
	movb	%dl, -41(%rbp)          # 1-byte Spill
.LBB58_3:                               # %land.end
                                        #   in Loop: Header=BB58_1 Depth=1
	movb	-41(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB58_4
	jmp	.LBB58_9
.LBB58_4:                               # %while.body
                                        #   in Loop: Header=BB58_1 Depth=1
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rcx
	subq	$3, %rcx
	cmpq	(%rcx), %rax
	jne	.LBB58_6
# BB#5:                                 # %if.then
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB58_10
.LBB58_6:                               # %if.end
                                        #   in Loop: Header=BB58_1 Depth=1
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB58_8
# BB#7:                                 # %if.then.25
	jmp	.LBB58_9
.LBB58_8:                               # %if.end.26
                                        #   in Loop: Header=BB58_1 Depth=1
	jmp	.LBB58_1
.LBB58_9:                               # %while.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB58_10:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end58:
	.size	Fplist_get, .Lfunc_end58-Fplist_get
	.cfi_endproc

	.globl	Fget
	.align	16, 0x90
	.type	Fget,@function
Fget:                                   # @Fget
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp177:
	.cfi_def_cfa_offset 16
.Ltmp178:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp179:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	andq	$7, %rsi
	movl	%esi, %eax
	cmpl	$0, %eax
	jne	.LBB59_2
# BB#1:                                 # %cond.true
	jmp	.LBB59_3
.LBB59_2:                               # %cond.false
	movl	$897, %edi              # imm = 0x381
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -24(%rbp)         # 8-byte Spill
.LBB59_3:                               # %cond.end
	movq	-8(%rbp), %rax
	subq	$0, %rax
	movq	lispsym+32(,%rax), %rdi
	movq	-16(%rbp), %rsi
	callq	Fplist_get
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end59:
	.size	Fget, .Lfunc_end59-Fget
	.cfi_endproc

	.globl	Fplist_put
	.align	16, 0x90
	.type	Fplist_put,@function
Fplist_put:                             # @Fplist_put
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp180:
	.cfi_def_cfa_offset 16
.Ltmp181:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp182:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	xorl	%eax, %eax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB60_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-40(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$3, %eax
	movb	%cl, -57(%rbp)          # 1-byte Spill
	jne	.LBB60_3
# BB#2:                                 # %land.rhs
                                        #   in Loop: Header=BB60_1 Depth=1
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	sete	%dl
	movb	%dl, -57(%rbp)          # 1-byte Spill
.LBB60_3:                               # %land.end
                                        #   in Loop: Header=BB60_1 Depth=1
	movb	-57(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB60_4
	jmp	.LBB60_16
.LBB60_4:                               # %for.body
                                        #   in Loop: Header=BB60_1 Depth=1
	movq	-24(%rbp), %rax
	movq	-40(%rbp), %rcx
	subq	$3, %rcx
	cmpq	(%rcx), %rax
	jne	.LBB60_6
# BB#5:                                 # %if.then
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rdi
	movq	-32(%rbp), %rsi
	callq	Fsetcar
	movq	-16(%rbp), %rsi
	movq	%rsi, -8(%rbp)
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jmp	.LBB60_23
.LBB60_6:                               # %if.end
                                        #   in Loop: Header=BB60_1 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
# BB#7:                                 # %do.body
                                        #   in Loop: Header=BB60_1 Depth=1
	xorl	%edi, %edi
	movq	globals+1928, %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB60_10
# BB#8:                                 # %land.lhs.true
                                        #   in Loop: Header=BB60_1 Depth=1
	xorl	%edi, %edi
	movq	globals+1104, %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB60_10
# BB#9:                                 # %if.then.19
                                        #   in Loop: Header=BB60_1 Depth=1
	callq	process_quit_flag
	jmp	.LBB60_13
.LBB60_10:                              # %if.else
                                        #   in Loop: Header=BB60_1 Depth=1
	movb	pending_signals, %al
	testb	$1, %al
	je	.LBB60_12
# BB#11:                                # %if.then.20
                                        #   in Loop: Header=BB60_1 Depth=1
	callq	process_pending_signals
.LBB60_12:                              # %if.end.21
                                        #   in Loop: Header=BB60_1 Depth=1
	jmp	.LBB60_13
.LBB60_13:                              # %if.end.22
                                        #   in Loop: Header=BB60_1 Depth=1
	jmp	.LBB60_14
.LBB60_14:                              # %do.end
                                        #   in Loop: Header=BB60_1 Depth=1
	jmp	.LBB60_15
.LBB60_15:                              # %for.inc
                                        #   in Loop: Header=BB60_1 Depth=1
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB60_1
.LBB60_16:                              # %for.end
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	%rdx, -96(%rbp)         # 8-byte Spill
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB60_18
# BB#17:                                # %cond.true
	movq	-16(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB60_19
.LBB60_18:                              # %cond.false
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
.LBB60_19:                              # %cond.end
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	xorl	%edi, %edi
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-128(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB60_21
# BB#20:                                # %if.then.43
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB60_23
.LBB60_21:                              # %if.else.44
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rdi
	movq	-56(%rbp), %rsi
	callq	Fsetcdr
	movq	%rax, -136(%rbp)        # 8-byte Spill
# BB#22:                                # %if.end.49
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB60_23:                              # %return
	movq	-8(%rbp), %rax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end60:
	.size	Fplist_put, .Lfunc_end60-Fplist_put
	.cfi_endproc

	.globl	Fput
	.align	16, 0x90
	.type	Fput,@function
Fput:                                   # @Fput
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp183:
	.cfi_def_cfa_offset 16
.Ltmp184:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp185:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$0, %eax
	jne	.LBB61_2
# BB#1:                                 # %cond.true
	jmp	.LBB61_3
.LBB61_2:                               # %cond.false
	movl	$897, %edi              # imm = 0x381
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -32(%rbp)         # 8-byte Spill
.LBB61_3:                               # %cond.end
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	subq	$0, %rax
	movq	lispsym+32(,%rax), %rax
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	Fplist_put
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	set_symbol_plist
	movq	-24(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end61:
	.size	Fput, .Lfunc_end61-Fput
	.cfi_endproc

	.globl	Flax_plist_get
	.align	16, 0x90
	.type	Flax_plist_get,@function
Flax_plist_get:                         # @Flax_plist_get
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp186:
	.cfi_def_cfa_offset 16
.Ltmp187:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp188:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -32(%rbp)
.LBB62_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-32(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$3, %eax
	movb	%cl, -33(%rbp)          # 1-byte Spill
	jne	.LBB62_3
# BB#2:                                 # %land.rhs
                                        #   in Loop: Header=BB62_1 Depth=1
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	sete	%dl
	movb	%dl, -33(%rbp)          # 1-byte Spill
.LBB62_3:                               # %land.end
                                        #   in Loop: Header=BB62_1 Depth=1
	movb	-33(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB62_4
	jmp	.LBB62_16
.LBB62_4:                               # %for.body
                                        #   in Loop: Header=BB62_1 Depth=1
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rsi
	callq	Fequal
	xorl	%edi, %edi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB62_6
# BB#5:                                 # %if.then
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB62_17
.LBB62_6:                               # %if.end
                                        #   in Loop: Header=BB62_1 Depth=1
	jmp	.LBB62_7
.LBB62_7:                               # %do.body
                                        #   in Loop: Header=BB62_1 Depth=1
	xorl	%edi, %edi
	movq	globals+1928, %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB62_10
# BB#8:                                 # %land.lhs.true
                                        #   in Loop: Header=BB62_1 Depth=1
	xorl	%edi, %edi
	movq	globals+1104, %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB62_10
# BB#9:                                 # %if.then.21
                                        #   in Loop: Header=BB62_1 Depth=1
	callq	process_quit_flag
	jmp	.LBB62_13
.LBB62_10:                              # %if.else
                                        #   in Loop: Header=BB62_1 Depth=1
	movb	pending_signals, %al
	testb	$1, %al
	je	.LBB62_12
# BB#11:                                # %if.then.22
                                        #   in Loop: Header=BB62_1 Depth=1
	callq	process_pending_signals
.LBB62_12:                              # %if.end.23
                                        #   in Loop: Header=BB62_1 Depth=1
	jmp	.LBB62_13
.LBB62_13:                              # %if.end.24
                                        #   in Loop: Header=BB62_1 Depth=1
	jmp	.LBB62_14
.LBB62_14:                              # %do.end
                                        #   in Loop: Header=BB62_1 Depth=1
	jmp	.LBB62_15
.LBB62_15:                              # %for.inc
                                        #   in Loop: Header=BB62_1 Depth=1
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB62_1
.LBB62_16:                              # %for.end
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	CHECK_LIST_END
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB62_17:                              # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end62:
	.size	Flax_plist_get, .Lfunc_end62-Flax_plist_get
	.cfi_endproc

	.globl	Flax_plist_put
	.align	16, 0x90
	.type	Flax_plist_put,@function
Flax_plist_put:                         # @Flax_plist_put
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp189:
	.cfi_def_cfa_offset 16
.Ltmp190:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp191:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	xorl	%eax, %eax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB63_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-40(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$3, %eax
	movb	%cl, -57(%rbp)          # 1-byte Spill
	jne	.LBB63_3
# BB#2:                                 # %land.rhs
                                        #   in Loop: Header=BB63_1 Depth=1
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	sete	%dl
	movb	%dl, -57(%rbp)          # 1-byte Spill
.LBB63_3:                               # %land.end
                                        #   in Loop: Header=BB63_1 Depth=1
	movb	-57(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB63_4
	jmp	.LBB63_16
.LBB63_4:                               # %for.body
                                        #   in Loop: Header=BB63_1 Depth=1
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rsi
	callq	Fequal
	xorl	%edi, %edi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB63_6
# BB#5:                                 # %if.then
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rdi
	movq	-32(%rbp), %rsi
	callq	Fsetcar
	movq	-16(%rbp), %rsi
	movq	%rsi, -8(%rbp)
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB63_20
.LBB63_6:                               # %if.end
                                        #   in Loop: Header=BB63_1 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
# BB#7:                                 # %do.body
                                        #   in Loop: Header=BB63_1 Depth=1
	xorl	%edi, %edi
	movq	globals+1928, %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB63_10
# BB#8:                                 # %land.lhs.true
                                        #   in Loop: Header=BB63_1 Depth=1
	xorl	%edi, %edi
	movq	globals+1104, %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB63_10
# BB#9:                                 # %if.then.21
                                        #   in Loop: Header=BB63_1 Depth=1
	callq	process_quit_flag
	jmp	.LBB63_13
.LBB63_10:                              # %if.else
                                        #   in Loop: Header=BB63_1 Depth=1
	movb	pending_signals, %al
	testb	$1, %al
	je	.LBB63_12
# BB#11:                                # %if.then.22
                                        #   in Loop: Header=BB63_1 Depth=1
	callq	process_pending_signals
.LBB63_12:                              # %if.end.23
                                        #   in Loop: Header=BB63_1 Depth=1
	jmp	.LBB63_13
.LBB63_13:                              # %if.end.24
                                        #   in Loop: Header=BB63_1 Depth=1
	jmp	.LBB63_14
.LBB63_14:                              # %do.end
                                        #   in Loop: Header=BB63_1 Depth=1
	jmp	.LBB63_15
.LBB63_15:                              # %for.inc
                                        #   in Loop: Header=BB63_1 Depth=1
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB63_1
.LBB63_16:                              # %for.end
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	list2
	xorl	%edi, %edi
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB63_18
# BB#17:                                # %if.then.35
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB63_20
.LBB63_18:                              # %if.else.36
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rdi
	movq	-56(%rbp), %rsi
	callq	Fsetcdr
	movq	%rax, -112(%rbp)        # 8-byte Spill
# BB#19:                                # %if.end.41
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB63_20:                              # %return
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end63:
	.size	Flax_plist_put, .Lfunc_end63-Flax_plist_put
	.cfi_endproc

	.globl	Feql
	.align	16, 0x90
	.type	Feql,@function
Feql:                                   # @Feql
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp192:
	.cfi_def_cfa_offset 16
.Ltmp193:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp194:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	andq	$7, %rsi
	movl	%esi, %eax
	cmpl	$7, %eax
	jne	.LBB64_5
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	-40(%rbp), %rsi         # 8-byte Reload
	movl	%edi, -44(%rbp)         # 4-byte Spill
	movq	%rsi, %rdi
	movq	-32(%rbp), %rsi         # 8-byte Reload
	movl	-44(%rbp), %edx         # 4-byte Reload
	movl	-44(%rbp), %ecx         # 4-byte Reload
	movq	%rax, %r8
	callq	internal_equal
	testb	$1, %al
	jne	.LBB64_2
	jmp	.LBB64_3
.LBB64_2:                               # %cond.true
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB64_4
.LBB64_3:                               # %cond.false
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -56(%rbp)         # 8-byte Spill
.LBB64_4:                               # %cond.end
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, -8(%rbp)
	jmp	.LBB64_9
.LBB64_5:                               # %if.else
	movq	-16(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB64_7
# BB#6:                                 # %cond.true.8
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB64_8
.LBB64_7:                               # %cond.false.10
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -64(%rbp)         # 8-byte Spill
.LBB64_8:                               # %cond.end.12
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	%rax, -8(%rbp)
.LBB64_9:                               # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end64:
	.size	Feql, .Lfunc_end64-Feql
	.cfi_endproc

	.globl	Fequal_including_properties
	.align	16, 0x90
	.type	Fequal_including_properties,@function
Fequal_including_properties:            # @Fequal_including_properties
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp195:
	.cfi_def_cfa_offset 16
.Ltmp196:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp197:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edx, %edx
	movl	$1, %ecx
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	-32(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %r8
	callq	internal_equal
	testb	$1, %al
	jne	.LBB65_1
	jmp	.LBB65_2
.LBB65_1:                               # %cond.true
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -40(%rbp)         # 8-byte Spill
	jmp	.LBB65_3
.LBB65_2:                               # %cond.false
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -40(%rbp)         # 8-byte Spill
.LBB65_3:                               # %cond.end
	movq	-40(%rbp), %rax         # 8-byte Reload
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end65:
	.size	Fequal_including_properties, .Lfunc_end65-Fequal_including_properties
	.cfi_endproc

	.globl	Ffillarray
	.align	16, 0x90
	.type	Ffillarray,@function
Ffillarray:                             # @Ffillarray
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp198:
	.cfi_def_cfa_offset 16
.Ltmp199:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp200:
	.cfi_def_cfa_register %rbp
	subq	$720, %rsp              # imm = 0x2D0
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB66_1
	jmp	.LBB66_6
.LBB66_1:                               # %if.then
	movq	$0, -40(%rbp)
	movq	-16(%rbp), %rdi
	callq	ASIZE
	movq	%rax, -32(%rbp)
.LBB66_2:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jge	.LBB66_5
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB66_2 Depth=1
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	ASET
# BB#4:                                 # %for.inc
                                        #   in Loop: Header=BB66_2 Depth=1
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB66_2
.LBB66_5:                               # %for.end
	jmp	.LBB66_480
.LBB66_6:                               # %if.else
	movq	-16(%rbp), %rdi
	callq	CHAR_TABLE_P
	testb	$1, %al
	jne	.LBB66_7
	jmp	.LBB66_12
.LBB66_7:                               # %if.then.3
	movl	$0, -44(%rbp)
.LBB66_8:                               # %for.cond.4
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$64, -44(%rbp)
	jge	.LBB66_11
# BB#9:                                 # %for.body.6
                                        #   in Loop: Header=BB66_8 Depth=1
	movq	-16(%rbp), %rdi
	movslq	-44(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	set_char_table_contents
# BB#10:                                # %for.inc.7
                                        #   in Loop: Header=BB66_8 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB66_8
.LBB66_11:                              # %for.end.9
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	set_char_table_defalt
	jmp	.LBB66_479
.LBB66_12:                              # %if.else.10
	movq	-16(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB66_13
	jmp	.LBB66_475
.LBB66_13:                              # %if.then.12
	movq	-16(%rbp), %rdi
	callq	SDATA
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rdi
	callq	NATNUMP
	testb	$1, %al
	jne	.LBB66_14
	jmp	.LBB66_16
.LBB66_14:                              # %land.lhs.true
	movq	-24(%rbp), %rax
	sarq	$2, %rax
	cmpq	$4194303, %rax          # imm = 0x3FFFFF
	jg	.LBB66_16
# BB#15:                                # %cond.true
	jmp	.LBB66_17
.LBB66_16:                              # %cond.false
	movl	$260, %edi              # imm = 0x104
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -96(%rbp)         # 8-byte Spill
.LBB66_17:                              # %cond.end
	movq	-24(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -60(%rbp)
	movq	-16(%rbp), %rdi
	callq	SCHARS
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	STRING_MULTIBYTE
	testb	$1, %al
	jne	.LBB66_18
	jmp	.LBB66_469
.LBB66_18:                              # %if.then.23
	movb	$1, %al
	testb	$1, %al
	jne	.LBB66_19
	jmp	.LBB66_20
.LBB66_19:                              # %cond.true.24
	movl	-60(%rbp), %eax
	addl	$0, %eax
	cmpl	$127, %eax
	jbe	.LBB66_21
	jmp	.LBB66_22
.LBB66_20:                              # %cond.false.27
	movslq	-60(%rbp), %rax
	addq	$0, %rax
	cmpq	$127, %rax
	ja	.LBB66_22
.LBB66_21:                              # %cond.true.32
	movl	$1, %eax
	movl	-60(%rbp), %ecx
	movb	%cl, %dl
	movb	%dl, -65(%rbp)
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jmp	.LBB66_33
.LBB66_22:                              # %cond.false.34
	movb	$1, %al
	testb	$1, %al
	jne	.LBB66_23
	jmp	.LBB66_24
.LBB66_23:                              # %cond.true.35
	movl	-60(%rbp), %eax
	addl	$0, %eax
	cmpl	$2047, %eax             # imm = 0x7FF
	jbe	.LBB66_25
	jmp	.LBB66_26
.LBB66_24:                              # %cond.false.39
	movslq	-60(%rbp), %rax
	addq	$0, %rax
	cmpq	$2047, %rax             # imm = 0x7FF
	ja	.LBB66_26
.LBB66_25:                              # %cond.true.44
	movl	$2, %eax
	movl	-60(%rbp), %ecx
	sarl	$6, %ecx
	orl	$192, %ecx
	movb	%cl, %dl
	movb	%dl, -65(%rbp)
	movl	-60(%rbp), %ecx
	andl	$63, %ecx
	orl	$128, %ecx
	movb	%cl, %dl
	movb	%dl, -64(%rbp)
	movl	%eax, -104(%rbp)        # 4-byte Spill
	jmp	.LBB66_32
.LBB66_26:                              # %cond.false.51
	movb	$1, %al
	testb	$1, %al
	jne	.LBB66_27
	jmp	.LBB66_28
.LBB66_27:                              # %cond.true.52
	movl	-60(%rbp), %eax
	addl	$0, %eax
	cmpl	$65535, %eax            # imm = 0xFFFF
	jbe	.LBB66_29
	jmp	.LBB66_30
.LBB66_28:                              # %cond.false.56
	movslq	-60(%rbp), %rax
	addq	$0, %rax
	cmpq	$65535, %rax            # imm = 0xFFFF
	ja	.LBB66_30
.LBB66_29:                              # %cond.true.61
	movl	$3, %eax
	movl	-60(%rbp), %ecx
	sarl	$12, %ecx
	orl	$224, %ecx
	movb	%cl, %dl
	movb	%dl, -65(%rbp)
	movl	-60(%rbp), %ecx
	sarl	$6, %ecx
	andl	$63, %ecx
	orl	$128, %ecx
	movb	%cl, %dl
	movb	%dl, -64(%rbp)
	movl	-60(%rbp), %ecx
	andl	$63, %ecx
	orl	$128, %ecx
	movb	%cl, %dl
	movb	%dl, -63(%rbp)
	movl	%eax, -108(%rbp)        # 4-byte Spill
	jmp	.LBB66_31
.LBB66_30:                              # %cond.false.75
	leaq	-65(%rbp), %rsi
	movl	-60(%rbp), %edi
	callq	char_string
	movl	%eax, -108(%rbp)        # 4-byte Spill
.LBB66_31:                              # %cond.end.77
	movl	-108(%rbp), %eax        # 4-byte Reload
	movl	%eax, -104(%rbp)        # 4-byte Spill
.LBB66_32:                              # %cond.end.78
	movl	-104(%rbp), %eax        # 4-byte Reload
	movl	%eax, -100(%rbp)        # 4-byte Spill
.LBB66_33:                              # %cond.end.80
	movl	-100(%rbp), %eax        # 4-byte Reload
	movl	%eax, -72(%rbp)
	movq	-16(%rbp), %rdi
	callq	SBYTES
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -80(%rbp)
	testb	$1, %dl
	jne	.LBB66_34
	jmp	.LBB66_119
.LBB66_34:                              # %cond.true.83
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB66_35
	jmp	.LBB66_77
.LBB66_35:                              # %cond.true.84
	movl	-72(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	imull	$0, %eax, %eax
	movq	-32(%rbp), %rdx
	movb	%dl, %cl
	movsbl	%cl, %esi
	addl	%esi, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB66_37
# BB#36:                                # %cond.true.93
	xorl	%eax, %eax
	movl	-72(%rbp), %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	imull	$0, %ecx, %ecx
	movq	-32(%rbp), %rsi
	movb	%sil, %dl
	movsbl	%dl, %edi
	addl	%edi, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	subl	%ecx, %eax
	movl	-72(%rbp), %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	imull	$0, %ecx, %ecx
	movq	-32(%rbp), %rsi
	movb	%sil, %dl
	movsbl	%dl, %edi
	addl	%edi, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
	jmp	.LBB66_38
.LBB66_37:                              # %cond.false.117
	movl	-72(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	imull	$0, %eax, %eax
	movq	-32(%rbp), %rdx
	movb	%dl, %cl
	movsbl	%cl, %esi
	addl	%esi, %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
.LBB66_38:                              # %cond.end.126
	movl	-112(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB66_43
# BB#39:                                # %land.lhs.true.130
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jge	.LBB66_41
# BB#40:                                # %land.lhs.true.135
	xorl	%eax, %eax
	movl	-72(%rbp), %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	cmpl	%ecx, %eax
	jl	.LBB66_69
.LBB66_41:                              # %lor.lhs.false
	movl	-72(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	cmpl	$0, %eax
	jge	.LBB66_43
# BB#42:                                # %land.lhs.true.144
	xorl	%eax, %eax
	movq	-32(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	cmpl	%esi, %eax
	jl	.LBB66_69
.LBB66_43:                              # %lor.lhs.false.149
	movl	-72(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	cmpl	$0, %eax
	jge	.LBB66_55
# BB#44:                                # %cond.true.154
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jge	.LBB66_49
# BB#45:                                # %cond.true.159
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movl	-72(%rbp), %esi
	movb	%sil, %cl
	movsbl	%cl, %esi
	imull	$0, %esi, %esi
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -116(%rbp)        # 4-byte Spill
	jge	.LBB66_47
# BB#46:                                # %cond.true.172
	movl	-72(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	imull	$0, %eax, %eax
	movq	-32(%rbp), %rdx
	movb	%dl, %cl
	movsbl	%cl, %esi
	addl	%esi, %eax
	imull	$0, %eax, %eax
	addl	$1, %eax
	shll	$30, %eax
	subl	$1, %eax
	shll	$1, %eax
	addl	$1, %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
	jmp	.LBB66_48
.LBB66_47:                              # %cond.false.185
	movl	-72(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	imull	$0, %eax, %eax
	movq	-32(%rbp), %rdx
	movb	%dl, %cl
	movsbl	%cl, %esi
	addl	%esi, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
.LBB66_48:                              # %cond.end.194
	movl	-120(%rbp), %eax        # 4-byte Reload
	movl	-72(%rbp), %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	cltd
	idivl	%ecx
	movl	-116(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB66_69
	jmp	.LBB66_66
.LBB66_49:                              # %cond.false.200
	movl	-72(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	cmpl	$-1, %eax
	jne	.LBB66_51
# BB#50:                                # %cond.true.205
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB66_69
	jmp	.LBB66_66
.LBB66_51:                              # %cond.false.206
	movl	-72(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	imull	$0, %eax, %eax
	movq	-32(%rbp), %rdx
	movb	%dl, %cl
	movsbl	%cl, %esi
	addl	%esi, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB66_53
# BB#52:                                # %cond.true.217
	xorl	%eax, %eax
	movl	-72(%rbp), %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	imull	$0, %ecx, %ecx
	movq	-32(%rbp), %rsi
	movb	%sil, %dl
	movsbl	%dl, %edi
	addl	%edi, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	subl	%ecx, %eax
	movl	-72(%rbp), %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	imull	$0, %ecx, %ecx
	movq	-32(%rbp), %rsi
	movb	%sil, %dl
	movsbl	%dl, %edi
	addl	%edi, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -124(%rbp)        # 4-byte Spill
	jmp	.LBB66_54
.LBB66_53:                              # %cond.false.243
	movl	-72(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	imull	$0, %eax, %eax
	movq	-32(%rbp), %rdx
	movb	%dl, %cl
	movsbl	%cl, %esi
	addl	%esi, %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -124(%rbp)        # 4-byte Spill
.LBB66_54:                              # %cond.end.252
	movl	-124(%rbp), %eax        # 4-byte Reload
	movl	-72(%rbp), %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	cltd
	idivl	%ecx
	movq	-32(%rbp), %rsi
	movb	%sil, %dil
	movsbl	%dil, %ecx
	cmpl	%ecx, %eax
	jl	.LBB66_69
	jmp	.LBB66_66
.LBB66_55:                              # %cond.false.261
	movl	-72(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	cmpl	$0, %eax
	jne	.LBB66_57
# BB#56:                                # %cond.true.266
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB66_69
	jmp	.LBB66_66
.LBB66_57:                              # %cond.false.267
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jge	.LBB66_62
# BB#58:                                # %cond.true.272
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movl	-72(%rbp), %esi
	movb	%sil, %cl
	movsbl	%cl, %esi
	imull	$0, %esi, %esi
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -128(%rbp)        # 4-byte Spill
	jge	.LBB66_60
# BB#59:                                # %cond.true.285
	xorl	%eax, %eax
	movl	-72(%rbp), %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	imull	$0, %ecx, %ecx
	movq	-32(%rbp), %rsi
	movb	%sil, %dl
	movsbl	%dl, %edi
	addl	%edi, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	subl	%ecx, %eax
	movl	-72(%rbp), %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	imull	$0, %ecx, %ecx
	movq	-32(%rbp), %rsi
	movb	%sil, %dl
	movsbl	%dl, %edi
	addl	%edi, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -132(%rbp)        # 4-byte Spill
	jmp	.LBB66_61
.LBB66_60:                              # %cond.false.311
	movl	-72(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	imull	$0, %eax, %eax
	movq	-32(%rbp), %rdx
	movb	%dl, %cl
	movsbl	%cl, %esi
	addl	%esi, %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -132(%rbp)        # 4-byte Spill
.LBB66_61:                              # %cond.end.320
	movl	-132(%rbp), %eax        # 4-byte Reload
	movl	-72(%rbp), %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	cltd
	idivl	%ecx
	movl	-128(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB66_69
	jmp	.LBB66_66
.LBB66_62:                              # %cond.false.327
	movl	-72(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	imull	$0, %eax, %eax
	movq	-32(%rbp), %rdx
	movb	%dl, %cl
	movsbl	%cl, %esi
	addl	%esi, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB66_64
# BB#63:                                # %cond.true.338
	movl	-72(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	imull	$0, %eax, %eax
	movq	-32(%rbp), %rdx
	movb	%dl, %cl
	movsbl	%cl, %esi
	addl	%esi, %eax
	imull	$0, %eax, %eax
	addl	$1, %eax
	shll	$30, %eax
	subl	$1, %eax
	shll	$1, %eax
	addl	$1, %eax
	movl	%eax, -136(%rbp)        # 4-byte Spill
	jmp	.LBB66_65
.LBB66_64:                              # %cond.false.351
	movl	-72(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	imull	$0, %eax, %eax
	movq	-32(%rbp), %rdx
	movb	%dl, %cl
	movsbl	%cl, %esi
	addl	%esi, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	movl	%eax, -136(%rbp)        # 4-byte Spill
.LBB66_65:                              # %cond.end.360
	movl	-136(%rbp), %eax        # 4-byte Reload
	movl	-72(%rbp), %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	cltd
	idivl	%ecx
	movq	-32(%rbp), %rsi
	movb	%sil, %dil
	movsbl	%dil, %ecx
	cmpl	%ecx, %eax
	jl	.LBB66_69
.LBB66_66:                              # %lor.lhs.false.369
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movl	-72(%rbp), %esi
	movb	%sil, %cl
	movsbl	%cl, %esi
	imull	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB66_68
# BB#67:                                # %land.lhs.true.379
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movl	-72(%rbp), %esi
	movb	%sil, %cl
	movsbl	%cl, %esi
	imull	%esi, %edx
	cmpl	$-128, %edx
	jl	.LBB66_69
.LBB66_68:                              # %lor.lhs.false.387
	movl	$127, %eax
	movq	-32(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	movl	-72(%rbp), %edi
	movb	%dil, %dl
	movsbl	%dl, %edi
	imull	%edi, %esi
	cmpl	%esi, %eax
	jge	.LBB66_73
.LBB66_69:                              # %cond.true.395
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movl	-72(%rbp), %esi
	movb	%sil, %cl
	movzbl	%cl, %esi
	imull	%esi, %edx
	cmpl	$127, %edx
	jg	.LBB66_71
# BB#70:                                # %cond.true.403
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movl	-72(%rbp), %esi
	movb	%sil, %cl
	movzbl	%cl, %esi
	imull	%esi, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -140(%rbp)        # 4-byte Spill
	jmp	.LBB66_72
.LBB66_71:                              # %cond.false.411
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movl	-72(%rbp), %esi
	movb	%sil, %cl
	movzbl	%cl, %esi
	imull	%esi, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -140(%rbp)        # 4-byte Spill
.LBB66_72:                              # %cond.end.421
	movl	-140(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -88(%rbp)
	testb	$1, %cl
	jne	.LBB66_463
	jmp	.LBB66_462
.LBB66_73:                              # %cond.false.424
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movl	-72(%rbp), %esi
	movb	%sil, %cl
	movzbl	%cl, %esi
	imull	%esi, %edx
	cmpl	$127, %edx
	jg	.LBB66_75
# BB#74:                                # %cond.true.432
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movl	-72(%rbp), %esi
	movb	%sil, %cl
	movzbl	%cl, %esi
	imull	%esi, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -144(%rbp)        # 4-byte Spill
	jmp	.LBB66_76
.LBB66_75:                              # %cond.false.440
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movl	-72(%rbp), %esi
	movb	%sil, %cl
	movzbl	%cl, %esi
	imull	%esi, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -144(%rbp)        # 4-byte Spill
.LBB66_76:                              # %cond.end.450
	movl	-144(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -88(%rbp)
	testb	$1, %dl
	jne	.LBB66_463
	jmp	.LBB66_462
.LBB66_77:                              # %cond.false.453
	imull	$0, -72(%rbp), %eax
	movslq	%eax, %rcx
	addq	-32(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	jge	.LBB66_79
# BB#78:                                # %cond.true.461
	xorl	%eax, %eax
	imull	$0, -72(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	-32(%rbp), %rdx
	imulq	$0, %rdx, %rdx
	addq	$0, %rdx
	xorq	$-1, %rdx
	cmpq	$-1, %rdx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %ecx
	subl	%ecx, %eax
	movslq	%eax, %rdx
	imull	$0, -72(%rbp), %eax
	movslq	%eax, %rdi
	addq	-32(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rdx
	movq	%rdx, -152(%rbp)        # 8-byte Spill
	jmp	.LBB66_80
.LBB66_79:                              # %cond.false.482
	imull	$0, -72(%rbp), %eax
	movslq	%eax, %rcx
	addq	-32(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	movq	%rcx, -152(%rbp)        # 8-byte Spill
.LBB66_80:                              # %cond.end.488
	movq	-152(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB66_85
# BB#81:                                # %land.lhs.true.492
	cmpq	$0, -32(%rbp)
	jge	.LBB66_83
# BB#82:                                # %land.lhs.true.495
	xorl	%eax, %eax
	cmpl	-72(%rbp), %eax
	jl	.LBB66_111
.LBB66_83:                              # %lor.lhs.false.498
	cmpl	$0, -72(%rbp)
	jge	.LBB66_85
# BB#84:                                # %land.lhs.true.501
	xorl	%eax, %eax
	movl	%eax, %ecx
	cmpq	-32(%rbp), %rcx
	jl	.LBB66_111
.LBB66_85:                              # %lor.lhs.false.504
	cmpl	$0, -72(%rbp)
	jge	.LBB66_97
# BB#86:                                # %cond.true.507
	cmpq	$0, -32(%rbp)
	jge	.LBB66_91
# BB#87:                                # %cond.true.510
	movq	-32(%rbp), %rax
	imull	$0, -72(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	-32(%rbp), %rdx
	imulq	$0, %rdx, %rdx
	subq	$1, %rdx
	cmpq	$0, %rdx
	movq	%rax, -160(%rbp)        # 8-byte Spill
	jge	.LBB66_89
# BB#88:                                # %cond.true.518
	imull	$0, -72(%rbp), %eax
	movslq	%eax, %rcx
	addq	-32(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$1, %rcx
	shlq	$62, %rcx
	subq	$1, %rcx
	shlq	$1, %rcx
	addq	$1, %rcx
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	jmp	.LBB66_90
.LBB66_89:                              # %cond.false.528
	imull	$0, -72(%rbp), %eax
	movslq	%eax, %rcx
	addq	-32(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	movq	%rcx, -168(%rbp)        # 8-byte Spill
.LBB66_90:                              # %cond.end.534
	movq	-168(%rbp), %rax        # 8-byte Reload
	movslq	-72(%rbp), %rcx
	cqto
	idivq	%rcx
	movq	-160(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB66_111
	jmp	.LBB66_108
.LBB66_91:                              # %cond.false.540
	cmpl	$-1, -72(%rbp)
	jne	.LBB66_93
# BB#92:                                # %cond.true.543
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB66_111
	jmp	.LBB66_108
.LBB66_93:                              # %cond.false.544
	imull	$0, -72(%rbp), %eax
	movslq	%eax, %rcx
	addq	-32(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	jge	.LBB66_95
# BB#94:                                # %cond.true.552
	xorl	%eax, %eax
	imull	$0, -72(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	-32(%rbp), %rdx
	imulq	$0, %rdx, %rdx
	addq	$0, %rdx
	xorq	$-1, %rdx
	cmpq	$-1, %rdx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %ecx
	subl	%ecx, %eax
	movslq	%eax, %rdx
	imull	$0, -72(%rbp), %eax
	movslq	%eax, %rdi
	addq	-32(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rdx
	movq	%rdx, -176(%rbp)        # 8-byte Spill
	jmp	.LBB66_96
.LBB66_95:                              # %cond.false.573
	imull	$0, -72(%rbp), %eax
	movslq	%eax, %rcx
	addq	-32(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	movq	%rcx, -176(%rbp)        # 8-byte Spill
.LBB66_96:                              # %cond.end.579
	movq	-176(%rbp), %rax        # 8-byte Reload
	movslq	-72(%rbp), %rcx
	cqto
	idivq	%rcx
	cmpq	-32(%rbp), %rax
	jl	.LBB66_111
	jmp	.LBB66_108
.LBB66_97:                              # %cond.false.585
	cmpl	$0, -72(%rbp)
	jne	.LBB66_99
# BB#98:                                # %cond.true.588
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB66_111
	jmp	.LBB66_108
.LBB66_99:                              # %cond.false.589
	cmpq	$0, -32(%rbp)
	jge	.LBB66_104
# BB#100:                               # %cond.true.592
	movq	-32(%rbp), %rax
	imull	$0, -72(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	-32(%rbp), %rdx
	imulq	$0, %rdx, %rdx
	subq	$1, %rdx
	cmpq	$0, %rdx
	movq	%rax, -184(%rbp)        # 8-byte Spill
	jge	.LBB66_102
# BB#101:                               # %cond.true.600
	xorl	%eax, %eax
	imull	$0, -72(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	-32(%rbp), %rdx
	imulq	$0, %rdx, %rdx
	addq	$0, %rdx
	xorq	$-1, %rdx
	cmpq	$-1, %rdx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %ecx
	subl	%ecx, %eax
	movslq	%eax, %rdx
	imull	$0, -72(%rbp), %eax
	movslq	%eax, %rdi
	addq	-32(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rdx
	movq	%rdx, -192(%rbp)        # 8-byte Spill
	jmp	.LBB66_103
.LBB66_102:                             # %cond.false.621
	imull	$0, -72(%rbp), %eax
	movslq	%eax, %rcx
	addq	-32(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	movq	%rcx, -192(%rbp)        # 8-byte Spill
.LBB66_103:                             # %cond.end.627
	movq	-192(%rbp), %rax        # 8-byte Reload
	movslq	-72(%rbp), %rcx
	cqto
	idivq	%rcx
	movq	-184(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB66_111
	jmp	.LBB66_108
.LBB66_104:                             # %cond.false.633
	imull	$0, -72(%rbp), %eax
	movslq	%eax, %rcx
	addq	-32(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	jge	.LBB66_106
# BB#105:                               # %cond.true.641
	imull	$0, -72(%rbp), %eax
	movslq	%eax, %rcx
	addq	-32(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$1, %rcx
	shlq	$62, %rcx
	subq	$1, %rcx
	shlq	$1, %rcx
	addq	$1, %rcx
	movq	%rcx, -200(%rbp)        # 8-byte Spill
	jmp	.LBB66_107
.LBB66_106:                             # %cond.false.651
	imull	$0, -72(%rbp), %eax
	movslq	%eax, %rcx
	addq	-32(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	movq	%rcx, -200(%rbp)        # 8-byte Spill
.LBB66_107:                             # %cond.end.657
	movq	-200(%rbp), %rax        # 8-byte Reload
	movslq	-72(%rbp), %rcx
	cqto
	idivq	%rcx
	cmpq	-32(%rbp), %rax
	jl	.LBB66_111
.LBB66_108:                             # %lor.lhs.false.663
	movq	-32(%rbp), %rax
	movslq	-72(%rbp), %rcx
	imulq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB66_110
# BB#109:                               # %land.lhs.true.670
	movq	-32(%rbp), %rax
	movslq	-72(%rbp), %rcx
	imulq	%rcx, %rax
	cmpq	$-128, %rax
	jl	.LBB66_111
.LBB66_110:                             # %lor.lhs.false.675
	movl	$127, %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rdx
	movslq	-72(%rbp), %rsi
	imulq	%rsi, %rdx
	cmpq	%rdx, %rcx
	jge	.LBB66_115
.LBB66_111:                             # %cond.true.680
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movl	-72(%rbp), %esi
	movb	%sil, %cl
	movzbl	%cl, %esi
	imull	%esi, %edx
	cmpl	$127, %edx
	jg	.LBB66_113
# BB#112:                               # %cond.true.688
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movl	-72(%rbp), %esi
	movb	%sil, %cl
	movzbl	%cl, %esi
	imull	%esi, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -204(%rbp)        # 4-byte Spill
	jmp	.LBB66_114
.LBB66_113:                             # %cond.false.696
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movl	-72(%rbp), %esi
	movb	%sil, %cl
	movzbl	%cl, %esi
	imull	%esi, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -204(%rbp)        # 4-byte Spill
.LBB66_114:                             # %cond.end.706
	movl	-204(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -88(%rbp)
	testb	$1, %cl
	jne	.LBB66_463
	jmp	.LBB66_462
.LBB66_115:                             # %cond.false.709
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movl	-72(%rbp), %esi
	movb	%sil, %cl
	movzbl	%cl, %esi
	imull	%esi, %edx
	cmpl	$127, %edx
	jg	.LBB66_117
# BB#116:                               # %cond.true.717
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movl	-72(%rbp), %esi
	movb	%sil, %cl
	movzbl	%cl, %esi
	imull	%esi, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -208(%rbp)        # 4-byte Spill
	jmp	.LBB66_118
.LBB66_117:                             # %cond.false.725
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movl	-72(%rbp), %esi
	movb	%sil, %cl
	movzbl	%cl, %esi
	imull	%esi, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -208(%rbp)        # 4-byte Spill
.LBB66_118:                             # %cond.end.735
	movl	-208(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -88(%rbp)
	testb	$1, %dl
	jne	.LBB66_463
	jmp	.LBB66_462
.LBB66_119:                             # %cond.false.738
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB66_120
	jmp	.LBB66_205
.LBB66_120:                             # %cond.true.739
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB66_121
	jmp	.LBB66_163
.LBB66_121:                             # %cond.true.740
	movl	-72(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	imull	$0, %eax, %eax
	movq	-32(%rbp), %rdx
	movw	%dx, %cx
	movswl	%cx, %esi
	addl	%esi, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB66_123
# BB#122:                               # %cond.true.751
	xorl	%eax, %eax
	movl	-72(%rbp), %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	imull	$0, %ecx, %ecx
	movq	-32(%rbp), %rsi
	movw	%si, %dx
	movswl	%dx, %edi
	addl	%edi, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %ecx
	subl	%ecx, %eax
	movl	-72(%rbp), %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	imull	$0, %ecx, %ecx
	movq	-32(%rbp), %rsi
	movw	%si, %dx
	movswl	%dx, %edi
	addl	%edi, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -212(%rbp)        # 4-byte Spill
	jmp	.LBB66_124
.LBB66_123:                             # %cond.false.777
	movl	-72(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	imull	$0, %eax, %eax
	movq	-32(%rbp), %rdx
	movw	%dx, %cx
	movswl	%cx, %esi
	addl	%esi, %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -212(%rbp)        # 4-byte Spill
.LBB66_124:                             # %cond.end.786
	movl	-212(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB66_129
# BB#125:                               # %land.lhs.true.790
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jge	.LBB66_127
# BB#126:                               # %land.lhs.true.795
	xorl	%eax, %eax
	movl	-72(%rbp), %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	cmpl	%ecx, %eax
	jl	.LBB66_155
.LBB66_127:                             # %lor.lhs.false.800
	movl	-72(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	cmpl	$0, %eax
	jge	.LBB66_129
# BB#128:                               # %land.lhs.true.805
	xorl	%eax, %eax
	movq	-32(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	cmpl	%esi, %eax
	jl	.LBB66_155
.LBB66_129:                             # %lor.lhs.false.810
	movl	-72(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	cmpl	$0, %eax
	jge	.LBB66_141
# BB#130:                               # %cond.true.815
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jge	.LBB66_135
# BB#131:                               # %cond.true.820
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movl	-72(%rbp), %esi
	movw	%si, %cx
	movswl	%cx, %esi
	imull	$0, %esi, %esi
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -216(%rbp)        # 4-byte Spill
	jge	.LBB66_133
# BB#132:                               # %cond.true.833
	movl	-72(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	imull	$0, %eax, %eax
	movq	-32(%rbp), %rdx
	movw	%dx, %cx
	movswl	%cx, %esi
	addl	%esi, %eax
	imull	$0, %eax, %eax
	addl	$1, %eax
	shll	$30, %eax
	subl	$1, %eax
	shll	$1, %eax
	addl	$1, %eax
	movl	%eax, -220(%rbp)        # 4-byte Spill
	jmp	.LBB66_134
.LBB66_133:                             # %cond.false.846
	movl	-72(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	imull	$0, %eax, %eax
	movq	-32(%rbp), %rdx
	movw	%dx, %cx
	movswl	%cx, %esi
	addl	%esi, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	movl	%eax, -220(%rbp)        # 4-byte Spill
.LBB66_134:                             # %cond.end.855
	movl	-220(%rbp), %eax        # 4-byte Reload
	movl	-72(%rbp), %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	cltd
	idivl	%ecx
	movl	-216(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB66_155
	jmp	.LBB66_152
.LBB66_135:                             # %cond.false.862
	movl	-72(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	cmpl	$-1, %eax
	jne	.LBB66_137
# BB#136:                               # %cond.true.867
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB66_155
	jmp	.LBB66_152
.LBB66_137:                             # %cond.false.868
	movl	-72(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	imull	$0, %eax, %eax
	movq	-32(%rbp), %rdx
	movw	%dx, %cx
	movswl	%cx, %esi
	addl	%esi, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB66_139
# BB#138:                               # %cond.true.879
	xorl	%eax, %eax
	movl	-72(%rbp), %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	imull	$0, %ecx, %ecx
	movq	-32(%rbp), %rsi
	movw	%si, %dx
	movswl	%dx, %edi
	addl	%edi, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %ecx
	subl	%ecx, %eax
	movl	-72(%rbp), %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	imull	$0, %ecx, %ecx
	movq	-32(%rbp), %rsi
	movw	%si, %dx
	movswl	%dx, %edi
	addl	%edi, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -224(%rbp)        # 4-byte Spill
	jmp	.LBB66_140
.LBB66_139:                             # %cond.false.905
	movl	-72(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	imull	$0, %eax, %eax
	movq	-32(%rbp), %rdx
	movw	%dx, %cx
	movswl	%cx, %esi
	addl	%esi, %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -224(%rbp)        # 4-byte Spill
.LBB66_140:                             # %cond.end.914
	movl	-224(%rbp), %eax        # 4-byte Reload
	movl	-72(%rbp), %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	cltd
	idivl	%ecx
	movq	-32(%rbp), %rsi
	movw	%si, %di
	movswl	%di, %ecx
	cmpl	%ecx, %eax
	jl	.LBB66_155
	jmp	.LBB66_152
.LBB66_141:                             # %cond.false.923
	movl	-72(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	cmpl	$0, %eax
	jne	.LBB66_143
# BB#142:                               # %cond.true.928
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB66_155
	jmp	.LBB66_152
.LBB66_143:                             # %cond.false.929
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jge	.LBB66_148
# BB#144:                               # %cond.true.934
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movl	-72(%rbp), %esi
	movw	%si, %cx
	movswl	%cx, %esi
	imull	$0, %esi, %esi
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -228(%rbp)        # 4-byte Spill
	jge	.LBB66_146
# BB#145:                               # %cond.true.947
	xorl	%eax, %eax
	movl	-72(%rbp), %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	imull	$0, %ecx, %ecx
	movq	-32(%rbp), %rsi
	movw	%si, %dx
	movswl	%dx, %edi
	addl	%edi, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %ecx
	subl	%ecx, %eax
	movl	-72(%rbp), %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	imull	$0, %ecx, %ecx
	movq	-32(%rbp), %rsi
	movw	%si, %dx
	movswl	%dx, %edi
	addl	%edi, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -232(%rbp)        # 4-byte Spill
	jmp	.LBB66_147
.LBB66_146:                             # %cond.false.973
	movl	-72(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	imull	$0, %eax, %eax
	movq	-32(%rbp), %rdx
	movw	%dx, %cx
	movswl	%cx, %esi
	addl	%esi, %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -232(%rbp)        # 4-byte Spill
.LBB66_147:                             # %cond.end.982
	movl	-232(%rbp), %eax        # 4-byte Reload
	movl	-72(%rbp), %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	cltd
	idivl	%ecx
	movl	-228(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB66_155
	jmp	.LBB66_152
.LBB66_148:                             # %cond.false.989
	movl	-72(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	imull	$0, %eax, %eax
	movq	-32(%rbp), %rdx
	movw	%dx, %cx
	movswl	%cx, %esi
	addl	%esi, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB66_150
# BB#149:                               # %cond.true.1000
	movl	-72(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	imull	$0, %eax, %eax
	movq	-32(%rbp), %rdx
	movw	%dx, %cx
	movswl	%cx, %esi
	addl	%esi, %eax
	imull	$0, %eax, %eax
	addl	$1, %eax
	shll	$30, %eax
	subl	$1, %eax
	shll	$1, %eax
	addl	$1, %eax
	movl	%eax, -236(%rbp)        # 4-byte Spill
	jmp	.LBB66_151
.LBB66_150:                             # %cond.false.1013
	movl	-72(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	imull	$0, %eax, %eax
	movq	-32(%rbp), %rdx
	movw	%dx, %cx
	movswl	%cx, %esi
	addl	%esi, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	movl	%eax, -236(%rbp)        # 4-byte Spill
.LBB66_151:                             # %cond.end.1022
	movl	-236(%rbp), %eax        # 4-byte Reload
	movl	-72(%rbp), %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	cltd
	idivl	%ecx
	movq	-32(%rbp), %rsi
	movw	%si, %di
	movswl	%di, %ecx
	cmpl	%ecx, %eax
	jl	.LBB66_155
.LBB66_152:                             # %lor.lhs.false.1031
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movl	-72(%rbp), %esi
	movw	%si, %cx
	movswl	%cx, %esi
	imull	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB66_154
# BB#153:                               # %land.lhs.true.1041
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movl	-72(%rbp), %esi
	movw	%si, %cx
	movswl	%cx, %esi
	imull	%esi, %edx
	cmpl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	jl	.LBB66_155
.LBB66_154:                             # %lor.lhs.false.1049
	movl	$32767, %eax            # imm = 0x7FFF
	movq	-32(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	movl	-72(%rbp), %edi
	movw	%di, %dx
	movswl	%dx, %edi
	imull	%edi, %esi
	cmpl	%esi, %eax
	jge	.LBB66_159
.LBB66_155:                             # %cond.true.1057
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movl	-72(%rbp), %esi
	movw	%si, %cx
	movzwl	%cx, %esi
	imull	%esi, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB66_157
# BB#156:                               # %cond.true.1065
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movl	-72(%rbp), %esi
	movw	%si, %cx
	movzwl	%cx, %esi
	imull	%esi, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -240(%rbp)        # 4-byte Spill
	jmp	.LBB66_158
.LBB66_157:                             # %cond.false.1073
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movl	-72(%rbp), %esi
	movw	%si, %cx
	movzwl	%cx, %esi
	imull	%esi, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -240(%rbp)        # 4-byte Spill
.LBB66_158:                             # %cond.end.1083
	movl	-240(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -88(%rbp)
	testb	$1, %cl
	jne	.LBB66_463
	jmp	.LBB66_462
.LBB66_159:                             # %cond.false.1086
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movl	-72(%rbp), %esi
	movw	%si, %cx
	movzwl	%cx, %esi
	imull	%esi, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB66_161
# BB#160:                               # %cond.true.1094
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movl	-72(%rbp), %esi
	movw	%si, %cx
	movzwl	%cx, %esi
	imull	%esi, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -244(%rbp)        # 4-byte Spill
	jmp	.LBB66_162
.LBB66_161:                             # %cond.false.1102
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movl	-72(%rbp), %esi
	movw	%si, %cx
	movzwl	%cx, %esi
	imull	%esi, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -244(%rbp)        # 4-byte Spill
.LBB66_162:                             # %cond.end.1112
	movl	-244(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -88(%rbp)
	testb	$1, %dl
	jne	.LBB66_463
	jmp	.LBB66_462
.LBB66_163:                             # %cond.false.1115
	imull	$0, -72(%rbp), %eax
	movslq	%eax, %rcx
	addq	-32(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	jge	.LBB66_165
# BB#164:                               # %cond.true.1123
	xorl	%eax, %eax
	imull	$0, -72(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	-32(%rbp), %rdx
	imulq	$0, %rdx, %rdx
	addq	$0, %rdx
	xorq	$-1, %rdx
	cmpq	$-1, %rdx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %ecx
	subl	%ecx, %eax
	movslq	%eax, %rdx
	imull	$0, -72(%rbp), %eax
	movslq	%eax, %rdi
	addq	-32(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rdx
	movq	%rdx, -256(%rbp)        # 8-byte Spill
	jmp	.LBB66_166
.LBB66_165:                             # %cond.false.1144
	imull	$0, -72(%rbp), %eax
	movslq	%eax, %rcx
	addq	-32(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	movq	%rcx, -256(%rbp)        # 8-byte Spill
.LBB66_166:                             # %cond.end.1150
	movq	-256(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB66_171
# BB#167:                               # %land.lhs.true.1154
	cmpq	$0, -32(%rbp)
	jge	.LBB66_169
# BB#168:                               # %land.lhs.true.1157
	xorl	%eax, %eax
	cmpl	-72(%rbp), %eax
	jl	.LBB66_197
.LBB66_169:                             # %lor.lhs.false.1160
	cmpl	$0, -72(%rbp)
	jge	.LBB66_171
# BB#170:                               # %land.lhs.true.1163
	xorl	%eax, %eax
	movl	%eax, %ecx
	cmpq	-32(%rbp), %rcx
	jl	.LBB66_197
.LBB66_171:                             # %lor.lhs.false.1166
	cmpl	$0, -72(%rbp)
	jge	.LBB66_183
# BB#172:                               # %cond.true.1169
	cmpq	$0, -32(%rbp)
	jge	.LBB66_177
# BB#173:                               # %cond.true.1172
	movq	-32(%rbp), %rax
	imull	$0, -72(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	-32(%rbp), %rdx
	imulq	$0, %rdx, %rdx
	subq	$1, %rdx
	cmpq	$0, %rdx
	movq	%rax, -264(%rbp)        # 8-byte Spill
	jge	.LBB66_175
# BB#174:                               # %cond.true.1180
	imull	$0, -72(%rbp), %eax
	movslq	%eax, %rcx
	addq	-32(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$1, %rcx
	shlq	$62, %rcx
	subq	$1, %rcx
	shlq	$1, %rcx
	addq	$1, %rcx
	movq	%rcx, -272(%rbp)        # 8-byte Spill
	jmp	.LBB66_176
.LBB66_175:                             # %cond.false.1190
	imull	$0, -72(%rbp), %eax
	movslq	%eax, %rcx
	addq	-32(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	movq	%rcx, -272(%rbp)        # 8-byte Spill
.LBB66_176:                             # %cond.end.1196
	movq	-272(%rbp), %rax        # 8-byte Reload
	movslq	-72(%rbp), %rcx
	cqto
	idivq	%rcx
	movq	-264(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB66_197
	jmp	.LBB66_194
.LBB66_177:                             # %cond.false.1202
	cmpl	$-1, -72(%rbp)
	jne	.LBB66_179
# BB#178:                               # %cond.true.1205
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB66_197
	jmp	.LBB66_194
.LBB66_179:                             # %cond.false.1206
	imull	$0, -72(%rbp), %eax
	movslq	%eax, %rcx
	addq	-32(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	jge	.LBB66_181
# BB#180:                               # %cond.true.1214
	xorl	%eax, %eax
	imull	$0, -72(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	-32(%rbp), %rdx
	imulq	$0, %rdx, %rdx
	addq	$0, %rdx
	xorq	$-1, %rdx
	cmpq	$-1, %rdx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %ecx
	subl	%ecx, %eax
	movslq	%eax, %rdx
	imull	$0, -72(%rbp), %eax
	movslq	%eax, %rdi
	addq	-32(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rdx
	movq	%rdx, -280(%rbp)        # 8-byte Spill
	jmp	.LBB66_182
.LBB66_181:                             # %cond.false.1235
	imull	$0, -72(%rbp), %eax
	movslq	%eax, %rcx
	addq	-32(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	movq	%rcx, -280(%rbp)        # 8-byte Spill
.LBB66_182:                             # %cond.end.1241
	movq	-280(%rbp), %rax        # 8-byte Reload
	movslq	-72(%rbp), %rcx
	cqto
	idivq	%rcx
	cmpq	-32(%rbp), %rax
	jl	.LBB66_197
	jmp	.LBB66_194
.LBB66_183:                             # %cond.false.1247
	cmpl	$0, -72(%rbp)
	jne	.LBB66_185
# BB#184:                               # %cond.true.1250
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB66_197
	jmp	.LBB66_194
.LBB66_185:                             # %cond.false.1251
	cmpq	$0, -32(%rbp)
	jge	.LBB66_190
# BB#186:                               # %cond.true.1254
	movq	-32(%rbp), %rax
	imull	$0, -72(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	-32(%rbp), %rdx
	imulq	$0, %rdx, %rdx
	subq	$1, %rdx
	cmpq	$0, %rdx
	movq	%rax, -288(%rbp)        # 8-byte Spill
	jge	.LBB66_188
# BB#187:                               # %cond.true.1262
	xorl	%eax, %eax
	imull	$0, -72(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	-32(%rbp), %rdx
	imulq	$0, %rdx, %rdx
	addq	$0, %rdx
	xorq	$-1, %rdx
	cmpq	$-1, %rdx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %ecx
	subl	%ecx, %eax
	movslq	%eax, %rdx
	imull	$0, -72(%rbp), %eax
	movslq	%eax, %rdi
	addq	-32(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rdx
	movq	%rdx, -296(%rbp)        # 8-byte Spill
	jmp	.LBB66_189
.LBB66_188:                             # %cond.false.1283
	imull	$0, -72(%rbp), %eax
	movslq	%eax, %rcx
	addq	-32(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	movq	%rcx, -296(%rbp)        # 8-byte Spill
.LBB66_189:                             # %cond.end.1289
	movq	-296(%rbp), %rax        # 8-byte Reload
	movslq	-72(%rbp), %rcx
	cqto
	idivq	%rcx
	movq	-288(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB66_197
	jmp	.LBB66_194
.LBB66_190:                             # %cond.false.1295
	imull	$0, -72(%rbp), %eax
	movslq	%eax, %rcx
	addq	-32(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	jge	.LBB66_192
# BB#191:                               # %cond.true.1303
	imull	$0, -72(%rbp), %eax
	movslq	%eax, %rcx
	addq	-32(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$1, %rcx
	shlq	$62, %rcx
	subq	$1, %rcx
	shlq	$1, %rcx
	addq	$1, %rcx
	movq	%rcx, -304(%rbp)        # 8-byte Spill
	jmp	.LBB66_193
.LBB66_192:                             # %cond.false.1313
	imull	$0, -72(%rbp), %eax
	movslq	%eax, %rcx
	addq	-32(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	movq	%rcx, -304(%rbp)        # 8-byte Spill
.LBB66_193:                             # %cond.end.1319
	movq	-304(%rbp), %rax        # 8-byte Reload
	movslq	-72(%rbp), %rcx
	cqto
	idivq	%rcx
	cmpq	-32(%rbp), %rax
	jl	.LBB66_197
.LBB66_194:                             # %lor.lhs.false.1325
	movq	-32(%rbp), %rax
	movslq	-72(%rbp), %rcx
	imulq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB66_196
# BB#195:                               # %land.lhs.true.1332
	movq	-32(%rbp), %rax
	movslq	-72(%rbp), %rcx
	imulq	%rcx, %rax
	cmpq	$-32768, %rax           # imm = 0xFFFFFFFFFFFF8000
	jl	.LBB66_197
.LBB66_196:                             # %lor.lhs.false.1337
	movl	$32767, %eax            # imm = 0x7FFF
	movl	%eax, %ecx
	movq	-32(%rbp), %rdx
	movslq	-72(%rbp), %rsi
	imulq	%rsi, %rdx
	cmpq	%rdx, %rcx
	jge	.LBB66_201
.LBB66_197:                             # %cond.true.1342
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movl	-72(%rbp), %esi
	movw	%si, %cx
	movzwl	%cx, %esi
	imull	%esi, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB66_199
# BB#198:                               # %cond.true.1350
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movl	-72(%rbp), %esi
	movw	%si, %cx
	movzwl	%cx, %esi
	imull	%esi, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -308(%rbp)        # 4-byte Spill
	jmp	.LBB66_200
.LBB66_199:                             # %cond.false.1358
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movl	-72(%rbp), %esi
	movw	%si, %cx
	movzwl	%cx, %esi
	imull	%esi, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -308(%rbp)        # 4-byte Spill
.LBB66_200:                             # %cond.end.1368
	movl	-308(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -88(%rbp)
	testb	$1, %cl
	jne	.LBB66_463
	jmp	.LBB66_462
.LBB66_201:                             # %cond.false.1371
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movl	-72(%rbp), %esi
	movw	%si, %cx
	movzwl	%cx, %esi
	imull	%esi, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB66_203
# BB#202:                               # %cond.true.1379
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movl	-72(%rbp), %esi
	movw	%si, %cx
	movzwl	%cx, %esi
	imull	%esi, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -312(%rbp)        # 4-byte Spill
	jmp	.LBB66_204
.LBB66_203:                             # %cond.false.1387
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movl	-72(%rbp), %esi
	movw	%si, %cx
	movzwl	%cx, %esi
	imull	%esi, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -312(%rbp)        # 4-byte Spill
.LBB66_204:                             # %cond.end.1397
	movl	-312(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -88(%rbp)
	testb	$1, %dl
	jne	.LBB66_463
	jmp	.LBB66_462
.LBB66_205:                             # %cond.false.1400
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB66_206
	jmp	.LBB66_291
.LBB66_206:                             # %cond.true.1401
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB66_207
	jmp	.LBB66_249
.LBB66_207:                             # %cond.true.1402
	imull	$0, -72(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%ecx, %edx
	addl	%edx, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB66_209
# BB#208:                               # %cond.true.1410
	xorl	%eax, %eax
	imull	$0, -72(%rbp), %ecx
	movq	-32(%rbp), %rdx
	movl	%edx, %esi
	addl	%esi, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%dil
	andb	$1, %dil
	movzbl	%dil, %ecx
	subl	%ecx, %eax
	imull	$0, -72(%rbp), %ecx
	movq	-32(%rbp), %rdx
	movl	%edx, %esi
	addl	%esi, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -316(%rbp)        # 4-byte Spill
	jmp	.LBB66_210
.LBB66_209:                             # %cond.false.1430
	imull	$0, -72(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%ecx, %edx
	addl	%edx, %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -316(%rbp)        # 4-byte Spill
.LBB66_210:                             # %cond.end.1436
	movl	-316(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB66_215
# BB#211:                               # %land.lhs.true.1440
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jge	.LBB66_213
# BB#212:                               # %land.lhs.true.1444
	xorl	%eax, %eax
	cmpl	-72(%rbp), %eax
	jl	.LBB66_241
.LBB66_213:                             # %lor.lhs.false.1447
	cmpl	$0, -72(%rbp)
	jge	.LBB66_215
# BB#214:                               # %land.lhs.true.1450
	xorl	%eax, %eax
	movq	-32(%rbp), %rcx
	movl	%ecx, %edx
	cmpl	%edx, %eax
	jl	.LBB66_241
.LBB66_215:                             # %lor.lhs.false.1454
	cmpl	$0, -72(%rbp)
	jge	.LBB66_227
# BB#216:                               # %cond.true.1457
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jge	.LBB66_221
# BB#217:                               # %cond.true.1461
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	imull	$0, -72(%rbp), %edx
	movq	-32(%rbp), %rax
	movl	%eax, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	movl	%ecx, -320(%rbp)        # 4-byte Spill
	jge	.LBB66_219
# BB#218:                               # %cond.true.1470
	imull	$0, -72(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%ecx, %edx
	addl	%edx, %eax
	imull	$0, %eax, %eax
	addl	$1, %eax
	shll	$30, %eax
	subl	$1, %eax
	shll	$1, %eax
	addl	$1, %eax
	movl	%eax, -324(%rbp)        # 4-byte Spill
	jmp	.LBB66_220
.LBB66_219:                             # %cond.false.1480
	imull	$0, -72(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%ecx, %edx
	addl	%edx, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	movl	%eax, -324(%rbp)        # 4-byte Spill
.LBB66_220:                             # %cond.end.1486
	movl	-324(%rbp), %eax        # 4-byte Reload
	cltd
	idivl	-72(%rbp)
	movl	-320(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB66_241
	jmp	.LBB66_238
.LBB66_221:                             # %cond.false.1491
	cmpl	$-1, -72(%rbp)
	jne	.LBB66_223
# BB#222:                               # %cond.true.1494
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB66_241
	jmp	.LBB66_238
.LBB66_223:                             # %cond.false.1495
	imull	$0, -72(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%ecx, %edx
	addl	%edx, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB66_225
# BB#224:                               # %cond.true.1503
	xorl	%eax, %eax
	imull	$0, -72(%rbp), %ecx
	movq	-32(%rbp), %rdx
	movl	%edx, %esi
	addl	%esi, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%dil
	andb	$1, %dil
	movzbl	%dil, %ecx
	subl	%ecx, %eax
	imull	$0, -72(%rbp), %ecx
	movq	-32(%rbp), %rdx
	movl	%edx, %esi
	addl	%esi, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -328(%rbp)        # 4-byte Spill
	jmp	.LBB66_226
.LBB66_225:                             # %cond.false.1523
	imull	$0, -72(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%ecx, %edx
	addl	%edx, %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -328(%rbp)        # 4-byte Spill
.LBB66_226:                             # %cond.end.1529
	movl	-328(%rbp), %eax        # 4-byte Reload
	cltd
	idivl	-72(%rbp)
	movq	-32(%rbp), %rcx
	movl	%ecx, %esi
	cmpl	%esi, %eax
	jl	.LBB66_241
	jmp	.LBB66_238
.LBB66_227:                             # %cond.false.1535
	cmpl	$0, -72(%rbp)
	jne	.LBB66_229
# BB#228:                               # %cond.true.1538
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB66_241
	jmp	.LBB66_238
.LBB66_229:                             # %cond.false.1539
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jge	.LBB66_234
# BB#230:                               # %cond.true.1543
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	imull	$0, -72(%rbp), %edx
	movq	-32(%rbp), %rax
	movl	%eax, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	movl	%ecx, -332(%rbp)        # 4-byte Spill
	jge	.LBB66_232
# BB#231:                               # %cond.true.1552
	xorl	%eax, %eax
	imull	$0, -72(%rbp), %ecx
	movq	-32(%rbp), %rdx
	movl	%edx, %esi
	addl	%esi, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%dil
	andb	$1, %dil
	movzbl	%dil, %ecx
	subl	%ecx, %eax
	imull	$0, -72(%rbp), %ecx
	movq	-32(%rbp), %rdx
	movl	%edx, %esi
	addl	%esi, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -336(%rbp)        # 4-byte Spill
	jmp	.LBB66_233
.LBB66_232:                             # %cond.false.1572
	imull	$0, -72(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%ecx, %edx
	addl	%edx, %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -336(%rbp)        # 4-byte Spill
.LBB66_233:                             # %cond.end.1578
	movl	-336(%rbp), %eax        # 4-byte Reload
	cltd
	idivl	-72(%rbp)
	movl	-332(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB66_241
	jmp	.LBB66_238
.LBB66_234:                             # %cond.false.1583
	imull	$0, -72(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%ecx, %edx
	addl	%edx, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB66_236
# BB#235:                               # %cond.true.1591
	imull	$0, -72(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%ecx, %edx
	addl	%edx, %eax
	imull	$0, %eax, %eax
	addl	$1, %eax
	shll	$30, %eax
	subl	$1, %eax
	shll	$1, %eax
	addl	$1, %eax
	movl	%eax, -340(%rbp)        # 4-byte Spill
	jmp	.LBB66_237
.LBB66_236:                             # %cond.false.1601
	imull	$0, -72(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%ecx, %edx
	addl	%edx, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	movl	%eax, -340(%rbp)        # 4-byte Spill
.LBB66_237:                             # %cond.end.1607
	movl	-340(%rbp), %eax        # 4-byte Reload
	cltd
	idivl	-72(%rbp)
	movq	-32(%rbp), %rcx
	movl	%ecx, %esi
	cmpl	%esi, %eax
	jl	.LBB66_241
.LBB66_238:                             # %lor.lhs.false.1613
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	imull	-72(%rbp), %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB66_240
# BB#239:                               # %land.lhs.true.1620
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	imull	-72(%rbp), %ecx
	cmpl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	jl	.LBB66_241
.LBB66_240:                             # %lor.lhs.false.1625
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movq	-32(%rbp), %rcx
	movl	%ecx, %edx
	imull	-72(%rbp), %edx
	cmpl	%edx, %eax
	jge	.LBB66_245
.LBB66_241:                             # %cond.true.1630
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	imull	-72(%rbp), %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB66_243
# BB#242:                               # %cond.true.1635
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	imull	-72(%rbp), %ecx
	movl	%ecx, -344(%rbp)        # 4-byte Spill
	jmp	.LBB66_244
.LBB66_243:                             # %cond.false.1638
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	imull	-72(%rbp), %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -344(%rbp)        # 4-byte Spill
.LBB66_244:                             # %cond.end.1643
	movl	-344(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -88(%rbp)
	testb	$1, %cl
	jne	.LBB66_463
	jmp	.LBB66_462
.LBB66_245:                             # %cond.false.1646
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	imull	-72(%rbp), %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB66_247
# BB#246:                               # %cond.true.1651
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	imull	-72(%rbp), %ecx
	movl	%ecx, -348(%rbp)        # 4-byte Spill
	jmp	.LBB66_248
.LBB66_247:                             # %cond.false.1654
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	imull	-72(%rbp), %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -348(%rbp)        # 4-byte Spill
.LBB66_248:                             # %cond.end.1659
	movl	-348(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -88(%rbp)
	testb	$1, %dl
	jne	.LBB66_463
	jmp	.LBB66_462
.LBB66_249:                             # %cond.false.1662
	imull	$0, -72(%rbp), %eax
	movslq	%eax, %rcx
	addq	-32(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	jge	.LBB66_251
# BB#250:                               # %cond.true.1670
	xorl	%eax, %eax
	imull	$0, -72(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	-32(%rbp), %rdx
	imulq	$0, %rdx, %rdx
	addq	$0, %rdx
	xorq	$-1, %rdx
	cmpq	$-1, %rdx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %ecx
	subl	%ecx, %eax
	movslq	%eax, %rdx
	imull	$0, -72(%rbp), %eax
	movslq	%eax, %rdi
	addq	-32(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rdx
	movq	%rdx, -360(%rbp)        # 8-byte Spill
	jmp	.LBB66_252
.LBB66_251:                             # %cond.false.1691
	imull	$0, -72(%rbp), %eax
	movslq	%eax, %rcx
	addq	-32(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	movq	%rcx, -360(%rbp)        # 8-byte Spill
.LBB66_252:                             # %cond.end.1697
	movq	-360(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB66_257
# BB#253:                               # %land.lhs.true.1701
	cmpq	$0, -32(%rbp)
	jge	.LBB66_255
# BB#254:                               # %land.lhs.true.1704
	xorl	%eax, %eax
	cmpl	-72(%rbp), %eax
	jl	.LBB66_283
.LBB66_255:                             # %lor.lhs.false.1707
	cmpl	$0, -72(%rbp)
	jge	.LBB66_257
# BB#256:                               # %land.lhs.true.1710
	xorl	%eax, %eax
	movl	%eax, %ecx
	cmpq	-32(%rbp), %rcx
	jl	.LBB66_283
.LBB66_257:                             # %lor.lhs.false.1713
	cmpl	$0, -72(%rbp)
	jge	.LBB66_269
# BB#258:                               # %cond.true.1716
	cmpq	$0, -32(%rbp)
	jge	.LBB66_263
# BB#259:                               # %cond.true.1719
	movq	-32(%rbp), %rax
	imull	$0, -72(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	-32(%rbp), %rdx
	imulq	$0, %rdx, %rdx
	subq	$1, %rdx
	cmpq	$0, %rdx
	movq	%rax, -368(%rbp)        # 8-byte Spill
	jge	.LBB66_261
# BB#260:                               # %cond.true.1727
	imull	$0, -72(%rbp), %eax
	movslq	%eax, %rcx
	addq	-32(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$1, %rcx
	shlq	$62, %rcx
	subq	$1, %rcx
	shlq	$1, %rcx
	addq	$1, %rcx
	movq	%rcx, -376(%rbp)        # 8-byte Spill
	jmp	.LBB66_262
.LBB66_261:                             # %cond.false.1737
	imull	$0, -72(%rbp), %eax
	movslq	%eax, %rcx
	addq	-32(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	movq	%rcx, -376(%rbp)        # 8-byte Spill
.LBB66_262:                             # %cond.end.1743
	movq	-376(%rbp), %rax        # 8-byte Reload
	movslq	-72(%rbp), %rcx
	cqto
	idivq	%rcx
	movq	-368(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB66_283
	jmp	.LBB66_280
.LBB66_263:                             # %cond.false.1749
	cmpl	$-1, -72(%rbp)
	jne	.LBB66_265
# BB#264:                               # %cond.true.1752
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB66_283
	jmp	.LBB66_280
.LBB66_265:                             # %cond.false.1753
	imull	$0, -72(%rbp), %eax
	movslq	%eax, %rcx
	addq	-32(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	jge	.LBB66_267
# BB#266:                               # %cond.true.1761
	xorl	%eax, %eax
	imull	$0, -72(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	-32(%rbp), %rdx
	imulq	$0, %rdx, %rdx
	addq	$0, %rdx
	xorq	$-1, %rdx
	cmpq	$-1, %rdx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %ecx
	subl	%ecx, %eax
	movslq	%eax, %rdx
	imull	$0, -72(%rbp), %eax
	movslq	%eax, %rdi
	addq	-32(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rdx
	movq	%rdx, -384(%rbp)        # 8-byte Spill
	jmp	.LBB66_268
.LBB66_267:                             # %cond.false.1782
	imull	$0, -72(%rbp), %eax
	movslq	%eax, %rcx
	addq	-32(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	movq	%rcx, -384(%rbp)        # 8-byte Spill
.LBB66_268:                             # %cond.end.1788
	movq	-384(%rbp), %rax        # 8-byte Reload
	movslq	-72(%rbp), %rcx
	cqto
	idivq	%rcx
	cmpq	-32(%rbp), %rax
	jl	.LBB66_283
	jmp	.LBB66_280
.LBB66_269:                             # %cond.false.1794
	cmpl	$0, -72(%rbp)
	jne	.LBB66_271
# BB#270:                               # %cond.true.1797
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB66_283
	jmp	.LBB66_280
.LBB66_271:                             # %cond.false.1798
	cmpq	$0, -32(%rbp)
	jge	.LBB66_276
# BB#272:                               # %cond.true.1801
	movq	-32(%rbp), %rax
	imull	$0, -72(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	-32(%rbp), %rdx
	imulq	$0, %rdx, %rdx
	subq	$1, %rdx
	cmpq	$0, %rdx
	movq	%rax, -392(%rbp)        # 8-byte Spill
	jge	.LBB66_274
# BB#273:                               # %cond.true.1809
	xorl	%eax, %eax
	imull	$0, -72(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	-32(%rbp), %rdx
	imulq	$0, %rdx, %rdx
	addq	$0, %rdx
	xorq	$-1, %rdx
	cmpq	$-1, %rdx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %ecx
	subl	%ecx, %eax
	movslq	%eax, %rdx
	imull	$0, -72(%rbp), %eax
	movslq	%eax, %rdi
	addq	-32(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rdx
	movq	%rdx, -400(%rbp)        # 8-byte Spill
	jmp	.LBB66_275
.LBB66_274:                             # %cond.false.1830
	imull	$0, -72(%rbp), %eax
	movslq	%eax, %rcx
	addq	-32(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	movq	%rcx, -400(%rbp)        # 8-byte Spill
.LBB66_275:                             # %cond.end.1836
	movq	-400(%rbp), %rax        # 8-byte Reload
	movslq	-72(%rbp), %rcx
	cqto
	idivq	%rcx
	movq	-392(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB66_283
	jmp	.LBB66_280
.LBB66_276:                             # %cond.false.1842
	imull	$0, -72(%rbp), %eax
	movslq	%eax, %rcx
	addq	-32(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	jge	.LBB66_278
# BB#277:                               # %cond.true.1850
	imull	$0, -72(%rbp), %eax
	movslq	%eax, %rcx
	addq	-32(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$1, %rcx
	shlq	$62, %rcx
	subq	$1, %rcx
	shlq	$1, %rcx
	addq	$1, %rcx
	movq	%rcx, -408(%rbp)        # 8-byte Spill
	jmp	.LBB66_279
.LBB66_278:                             # %cond.false.1860
	imull	$0, -72(%rbp), %eax
	movslq	%eax, %rcx
	addq	-32(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	movq	%rcx, -408(%rbp)        # 8-byte Spill
.LBB66_279:                             # %cond.end.1866
	movq	-408(%rbp), %rax        # 8-byte Reload
	movslq	-72(%rbp), %rcx
	cqto
	idivq	%rcx
	cmpq	-32(%rbp), %rax
	jl	.LBB66_283
.LBB66_280:                             # %lor.lhs.false.1872
	movq	-32(%rbp), %rax
	movslq	-72(%rbp), %rcx
	imulq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB66_282
# BB#281:                               # %land.lhs.true.1879
	movq	-32(%rbp), %rax
	movslq	-72(%rbp), %rcx
	imulq	%rcx, %rax
	cmpq	$-2147483648, %rax      # imm = 0xFFFFFFFF80000000
	jl	.LBB66_283
.LBB66_282:                             # %lor.lhs.false.1884
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movl	%eax, %ecx
	movq	-32(%rbp), %rdx
	movslq	-72(%rbp), %rsi
	imulq	%rsi, %rdx
	cmpq	%rdx, %rcx
	jge	.LBB66_287
.LBB66_283:                             # %cond.true.1889
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	imull	-72(%rbp), %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB66_285
# BB#284:                               # %cond.true.1894
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	imull	-72(%rbp), %ecx
	movl	%ecx, -412(%rbp)        # 4-byte Spill
	jmp	.LBB66_286
.LBB66_285:                             # %cond.false.1897
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	imull	-72(%rbp), %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -412(%rbp)        # 4-byte Spill
.LBB66_286:                             # %cond.end.1902
	movl	-412(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -88(%rbp)
	testb	$1, %cl
	jne	.LBB66_463
	jmp	.LBB66_462
.LBB66_287:                             # %cond.false.1905
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	imull	-72(%rbp), %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB66_289
# BB#288:                               # %cond.true.1910
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	imull	-72(%rbp), %ecx
	movl	%ecx, -416(%rbp)        # 4-byte Spill
	jmp	.LBB66_290
.LBB66_289:                             # %cond.false.1913
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	imull	-72(%rbp), %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -416(%rbp)        # 4-byte Spill
.LBB66_290:                             # %cond.end.1918
	movl	-416(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -88(%rbp)
	testb	$1, %dl
	jne	.LBB66_463
	jmp	.LBB66_462
.LBB66_291:                             # %cond.false.1921
	movb	$1, %al
	testb	$1, %al
	jne	.LBB66_292
	jmp	.LBB66_377
.LBB66_292:                             # %cond.true.1922
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB66_293
	jmp	.LBB66_335
.LBB66_293:                             # %cond.true.1923
	movslq	-72(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	-32(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB66_295
# BB#294:                               # %cond.true.1931
	xorl	%eax, %eax
	movslq	-72(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	-32(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movslq	-72(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	-32(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -424(%rbp)        # 8-byte Spill
	jmp	.LBB66_296
.LBB66_295:                             # %cond.false.1952
	movslq	-72(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	-32(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -424(%rbp)        # 8-byte Spill
.LBB66_296:                             # %cond.end.1958
	movq	-424(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB66_301
# BB#297:                               # %land.lhs.true.1962
	cmpq	$0, -32(%rbp)
	jge	.LBB66_299
# BB#298:                               # %land.lhs.true.1965
	xorl	%eax, %eax
	movl	%eax, %ecx
	movslq	-72(%rbp), %rdx
	cmpq	%rdx, %rcx
	jl	.LBB66_327
.LBB66_299:                             # %lor.lhs.false.1969
	movslq	-72(%rbp), %rax
	cmpq	$0, %rax
	jge	.LBB66_301
# BB#300:                               # %land.lhs.true.1973
	xorl	%eax, %eax
	movl	%eax, %ecx
	cmpq	-32(%rbp), %rcx
	jl	.LBB66_327
.LBB66_301:                             # %lor.lhs.false.1976
	movslq	-72(%rbp), %rax
	cmpq	$0, %rax
	jge	.LBB66_313
# BB#302:                               # %cond.true.1980
	cmpq	$0, -32(%rbp)
	jge	.LBB66_307
# BB#303:                               # %cond.true.1983
	movq	-32(%rbp), %rax
	movslq	-72(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	-32(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -432(%rbp)        # 8-byte Spill
	jge	.LBB66_305
# BB#304:                               # %cond.true.1991
	movslq	-72(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	-32(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -440(%rbp)        # 8-byte Spill
	jmp	.LBB66_306
.LBB66_305:                             # %cond.false.2001
	movslq	-72(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	-32(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -440(%rbp)        # 8-byte Spill
.LBB66_306:                             # %cond.end.2007
	movq	-440(%rbp), %rax        # 8-byte Reload
	movslq	-72(%rbp), %rcx
	cqto
	idivq	%rcx
	movq	-432(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB66_327
	jmp	.LBB66_324
.LBB66_307:                             # %cond.false.2013
	movslq	-72(%rbp), %rax
	cmpq	$-1, %rax
	jne	.LBB66_309
# BB#308:                               # %cond.true.2017
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB66_327
	jmp	.LBB66_324
.LBB66_309:                             # %cond.false.2018
	movslq	-72(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	-32(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB66_311
# BB#310:                               # %cond.true.2026
	xorl	%eax, %eax
	movslq	-72(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	-32(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movslq	-72(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	-32(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -448(%rbp)        # 8-byte Spill
	jmp	.LBB66_312
.LBB66_311:                             # %cond.false.2047
	movslq	-72(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	-32(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
.LBB66_312:                             # %cond.end.2053
	movq	-448(%rbp), %rax        # 8-byte Reload
	movslq	-72(%rbp), %rcx
	cqto
	idivq	%rcx
	cmpq	-32(%rbp), %rax
	jl	.LBB66_327
	jmp	.LBB66_324
.LBB66_313:                             # %cond.false.2059
	movslq	-72(%rbp), %rax
	cmpq	$0, %rax
	jne	.LBB66_315
# BB#314:                               # %cond.true.2063
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB66_327
	jmp	.LBB66_324
.LBB66_315:                             # %cond.false.2064
	cmpq	$0, -32(%rbp)
	jge	.LBB66_320
# BB#316:                               # %cond.true.2067
	movq	-32(%rbp), %rax
	movslq	-72(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	-32(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -456(%rbp)        # 8-byte Spill
	jge	.LBB66_318
# BB#317:                               # %cond.true.2075
	xorl	%eax, %eax
	movslq	-72(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	-32(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movslq	-72(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	-32(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -464(%rbp)        # 8-byte Spill
	jmp	.LBB66_319
.LBB66_318:                             # %cond.false.2096
	movslq	-72(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	-32(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -464(%rbp)        # 8-byte Spill
.LBB66_319:                             # %cond.end.2102
	movq	-464(%rbp), %rax        # 8-byte Reload
	movslq	-72(%rbp), %rcx
	cqto
	idivq	%rcx
	movq	-456(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB66_327
	jmp	.LBB66_324
.LBB66_320:                             # %cond.false.2108
	movslq	-72(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	-32(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB66_322
# BB#321:                               # %cond.true.2116
	movslq	-72(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	-32(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -472(%rbp)        # 8-byte Spill
	jmp	.LBB66_323
.LBB66_322:                             # %cond.false.2126
	movslq	-72(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	-32(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -472(%rbp)        # 8-byte Spill
.LBB66_323:                             # %cond.end.2132
	movq	-472(%rbp), %rax        # 8-byte Reload
	movslq	-72(%rbp), %rcx
	cqto
	idivq	%rcx
	cmpq	-32(%rbp), %rax
	jl	.LBB66_327
.LBB66_324:                             # %lor.lhs.false.2138
	movq	-32(%rbp), %rax
	movslq	-72(%rbp), %rcx
	imulq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB66_326
# BB#325:                               # %land.lhs.true.2145
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-32(%rbp), %rcx
	movslq	-72(%rbp), %rdx
	imulq	%rdx, %rcx
	cmpq	%rax, %rcx
	jl	.LBB66_327
.LBB66_326:                             # %lor.lhs.false.2150
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-32(%rbp), %rcx
	movslq	-72(%rbp), %rdx
	imulq	%rdx, %rcx
	cmpq	%rcx, %rax
	jge	.LBB66_331
.LBB66_327:                             # %cond.true.2155
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-32(%rbp), %rcx
	movslq	-72(%rbp), %rdx
	imulq	%rdx, %rcx
	cmpq	%rax, %rcx
	ja	.LBB66_329
# BB#328:                               # %cond.true.2160
	movq	-32(%rbp), %rax
	movslq	-72(%rbp), %rcx
	imulq	%rcx, %rax
	movq	%rax, -480(%rbp)        # 8-byte Spill
	jmp	.LBB66_330
.LBB66_329:                             # %cond.false.2163
	movq	-32(%rbp), %rax
	movslq	-72(%rbp), %rcx
	imulq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -480(%rbp)        # 8-byte Spill
.LBB66_330:                             # %cond.end.2168
	movq	-480(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -88(%rbp)
	testb	$1, %cl
	jne	.LBB66_463
	jmp	.LBB66_462
.LBB66_331:                             # %cond.false.2170
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-32(%rbp), %rcx
	movslq	-72(%rbp), %rdx
	imulq	%rdx, %rcx
	cmpq	%rax, %rcx
	ja	.LBB66_333
# BB#332:                               # %cond.true.2175
	movq	-32(%rbp), %rax
	movslq	-72(%rbp), %rcx
	imulq	%rcx, %rax
	movq	%rax, -488(%rbp)        # 8-byte Spill
	jmp	.LBB66_334
.LBB66_333:                             # %cond.false.2178
	movq	-32(%rbp), %rax
	movslq	-72(%rbp), %rcx
	imulq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -488(%rbp)        # 8-byte Spill
.LBB66_334:                             # %cond.end.2183
	movq	-488(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -88(%rbp)
	testb	$1, %dl
	jne	.LBB66_463
	jmp	.LBB66_462
.LBB66_335:                             # %cond.false.2185
	imull	$0, -72(%rbp), %eax
	movslq	%eax, %rcx
	addq	-32(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	jge	.LBB66_337
# BB#336:                               # %cond.true.2193
	xorl	%eax, %eax
	imull	$0, -72(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	-32(%rbp), %rdx
	imulq	$0, %rdx, %rdx
	addq	$0, %rdx
	xorq	$-1, %rdx
	cmpq	$-1, %rdx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %ecx
	subl	%ecx, %eax
	movslq	%eax, %rdx
	imull	$0, -72(%rbp), %eax
	movslq	%eax, %rdi
	addq	-32(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rdx
	movq	%rdx, -496(%rbp)        # 8-byte Spill
	jmp	.LBB66_338
.LBB66_337:                             # %cond.false.2214
	imull	$0, -72(%rbp), %eax
	movslq	%eax, %rcx
	addq	-32(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	movq	%rcx, -496(%rbp)        # 8-byte Spill
.LBB66_338:                             # %cond.end.2220
	movq	-496(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB66_343
# BB#339:                               # %land.lhs.true.2224
	cmpq	$0, -32(%rbp)
	jge	.LBB66_341
# BB#340:                               # %land.lhs.true.2227
	xorl	%eax, %eax
	cmpl	-72(%rbp), %eax
	jl	.LBB66_369
.LBB66_341:                             # %lor.lhs.false.2230
	cmpl	$0, -72(%rbp)
	jge	.LBB66_343
# BB#342:                               # %land.lhs.true.2233
	xorl	%eax, %eax
	movl	%eax, %ecx
	cmpq	-32(%rbp), %rcx
	jl	.LBB66_369
.LBB66_343:                             # %lor.lhs.false.2236
	cmpl	$0, -72(%rbp)
	jge	.LBB66_355
# BB#344:                               # %cond.true.2239
	cmpq	$0, -32(%rbp)
	jge	.LBB66_349
# BB#345:                               # %cond.true.2242
	movq	-32(%rbp), %rax
	imull	$0, -72(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	-32(%rbp), %rdx
	imulq	$0, %rdx, %rdx
	subq	$1, %rdx
	cmpq	$0, %rdx
	movq	%rax, -504(%rbp)        # 8-byte Spill
	jge	.LBB66_347
# BB#346:                               # %cond.true.2250
	imull	$0, -72(%rbp), %eax
	movslq	%eax, %rcx
	addq	-32(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$1, %rcx
	shlq	$62, %rcx
	subq	$1, %rcx
	shlq	$1, %rcx
	addq	$1, %rcx
	movq	%rcx, -512(%rbp)        # 8-byte Spill
	jmp	.LBB66_348
.LBB66_347:                             # %cond.false.2260
	imull	$0, -72(%rbp), %eax
	movslq	%eax, %rcx
	addq	-32(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	movq	%rcx, -512(%rbp)        # 8-byte Spill
.LBB66_348:                             # %cond.end.2266
	movq	-512(%rbp), %rax        # 8-byte Reload
	movslq	-72(%rbp), %rcx
	cqto
	idivq	%rcx
	movq	-504(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB66_369
	jmp	.LBB66_366
.LBB66_349:                             # %cond.false.2272
	cmpl	$-1, -72(%rbp)
	jne	.LBB66_351
# BB#350:                               # %cond.true.2275
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB66_369
	jmp	.LBB66_366
.LBB66_351:                             # %cond.false.2276
	imull	$0, -72(%rbp), %eax
	movslq	%eax, %rcx
	addq	-32(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	jge	.LBB66_353
# BB#352:                               # %cond.true.2284
	xorl	%eax, %eax
	imull	$0, -72(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	-32(%rbp), %rdx
	imulq	$0, %rdx, %rdx
	addq	$0, %rdx
	xorq	$-1, %rdx
	cmpq	$-1, %rdx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %ecx
	subl	%ecx, %eax
	movslq	%eax, %rdx
	imull	$0, -72(%rbp), %eax
	movslq	%eax, %rdi
	addq	-32(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rdx
	movq	%rdx, -520(%rbp)        # 8-byte Spill
	jmp	.LBB66_354
.LBB66_353:                             # %cond.false.2305
	imull	$0, -72(%rbp), %eax
	movslq	%eax, %rcx
	addq	-32(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	movq	%rcx, -520(%rbp)        # 8-byte Spill
.LBB66_354:                             # %cond.end.2311
	movq	-520(%rbp), %rax        # 8-byte Reload
	movslq	-72(%rbp), %rcx
	cqto
	idivq	%rcx
	cmpq	-32(%rbp), %rax
	jl	.LBB66_369
	jmp	.LBB66_366
.LBB66_355:                             # %cond.false.2317
	cmpl	$0, -72(%rbp)
	jne	.LBB66_357
# BB#356:                               # %cond.true.2320
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB66_369
	jmp	.LBB66_366
.LBB66_357:                             # %cond.false.2321
	cmpq	$0, -32(%rbp)
	jge	.LBB66_362
# BB#358:                               # %cond.true.2324
	movq	-32(%rbp), %rax
	imull	$0, -72(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	-32(%rbp), %rdx
	imulq	$0, %rdx, %rdx
	subq	$1, %rdx
	cmpq	$0, %rdx
	movq	%rax, -528(%rbp)        # 8-byte Spill
	jge	.LBB66_360
# BB#359:                               # %cond.true.2332
	xorl	%eax, %eax
	imull	$0, -72(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	-32(%rbp), %rdx
	imulq	$0, %rdx, %rdx
	addq	$0, %rdx
	xorq	$-1, %rdx
	cmpq	$-1, %rdx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %ecx
	subl	%ecx, %eax
	movslq	%eax, %rdx
	imull	$0, -72(%rbp), %eax
	movslq	%eax, %rdi
	addq	-32(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rdx
	movq	%rdx, -536(%rbp)        # 8-byte Spill
	jmp	.LBB66_361
.LBB66_360:                             # %cond.false.2353
	imull	$0, -72(%rbp), %eax
	movslq	%eax, %rcx
	addq	-32(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	movq	%rcx, -536(%rbp)        # 8-byte Spill
.LBB66_361:                             # %cond.end.2359
	movq	-536(%rbp), %rax        # 8-byte Reload
	movslq	-72(%rbp), %rcx
	cqto
	idivq	%rcx
	movq	-528(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB66_369
	jmp	.LBB66_366
.LBB66_362:                             # %cond.false.2365
	imull	$0, -72(%rbp), %eax
	movslq	%eax, %rcx
	addq	-32(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	jge	.LBB66_364
# BB#363:                               # %cond.true.2373
	imull	$0, -72(%rbp), %eax
	movslq	%eax, %rcx
	addq	-32(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$1, %rcx
	shlq	$62, %rcx
	subq	$1, %rcx
	shlq	$1, %rcx
	addq	$1, %rcx
	movq	%rcx, -544(%rbp)        # 8-byte Spill
	jmp	.LBB66_365
.LBB66_364:                             # %cond.false.2383
	imull	$0, -72(%rbp), %eax
	movslq	%eax, %rcx
	addq	-32(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	movq	%rcx, -544(%rbp)        # 8-byte Spill
.LBB66_365:                             # %cond.end.2389
	movq	-544(%rbp), %rax        # 8-byte Reload
	movslq	-72(%rbp), %rcx
	cqto
	idivq	%rcx
	cmpq	-32(%rbp), %rax
	jl	.LBB66_369
.LBB66_366:                             # %lor.lhs.false.2395
	movq	-32(%rbp), %rax
	movslq	-72(%rbp), %rcx
	imulq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB66_368
# BB#367:                               # %land.lhs.true.2402
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-32(%rbp), %rcx
	movslq	-72(%rbp), %rdx
	imulq	%rdx, %rcx
	cmpq	%rax, %rcx
	jl	.LBB66_369
.LBB66_368:                             # %lor.lhs.false.2407
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-32(%rbp), %rcx
	movslq	-72(%rbp), %rdx
	imulq	%rdx, %rcx
	cmpq	%rcx, %rax
	jge	.LBB66_373
.LBB66_369:                             # %cond.true.2412
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-32(%rbp), %rcx
	movslq	-72(%rbp), %rdx
	imulq	%rdx, %rcx
	cmpq	%rax, %rcx
	ja	.LBB66_371
# BB#370:                               # %cond.true.2417
	movq	-32(%rbp), %rax
	movslq	-72(%rbp), %rcx
	imulq	%rcx, %rax
	movq	%rax, -552(%rbp)        # 8-byte Spill
	jmp	.LBB66_372
.LBB66_371:                             # %cond.false.2420
	movq	-32(%rbp), %rax
	movslq	-72(%rbp), %rcx
	imulq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -552(%rbp)        # 8-byte Spill
.LBB66_372:                             # %cond.end.2425
	movq	-552(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -88(%rbp)
	testb	$1, %cl
	jne	.LBB66_463
	jmp	.LBB66_462
.LBB66_373:                             # %cond.false.2427
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-32(%rbp), %rcx
	movslq	-72(%rbp), %rdx
	imulq	%rdx, %rcx
	cmpq	%rax, %rcx
	ja	.LBB66_375
# BB#374:                               # %cond.true.2432
	movq	-32(%rbp), %rax
	movslq	-72(%rbp), %rcx
	imulq	%rcx, %rax
	movq	%rax, -560(%rbp)        # 8-byte Spill
	jmp	.LBB66_376
.LBB66_375:                             # %cond.false.2435
	movq	-32(%rbp), %rax
	movslq	-72(%rbp), %rcx
	imulq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -560(%rbp)        # 8-byte Spill
.LBB66_376:                             # %cond.end.2440
	movq	-560(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -88(%rbp)
	testb	$1, %dl
	jne	.LBB66_463
	jmp	.LBB66_462
.LBB66_377:                             # %cond.false.2442
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB66_378
	jmp	.LBB66_420
.LBB66_378:                             # %cond.true.2443
	movslq	-72(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	-32(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB66_380
# BB#379:                               # %cond.true.2451
	xorl	%eax, %eax
	movslq	-72(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	-32(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movslq	-72(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	-32(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -568(%rbp)        # 8-byte Spill
	jmp	.LBB66_381
.LBB66_380:                             # %cond.false.2472
	movslq	-72(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	-32(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -568(%rbp)        # 8-byte Spill
.LBB66_381:                             # %cond.end.2478
	movq	-568(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB66_386
# BB#382:                               # %land.lhs.true.2482
	cmpq	$0, -32(%rbp)
	jge	.LBB66_384
# BB#383:                               # %land.lhs.true.2485
	xorl	%eax, %eax
	movl	%eax, %ecx
	movslq	-72(%rbp), %rdx
	cmpq	%rdx, %rcx
	jl	.LBB66_412
.LBB66_384:                             # %lor.lhs.false.2489
	movslq	-72(%rbp), %rax
	cmpq	$0, %rax
	jge	.LBB66_386
# BB#385:                               # %land.lhs.true.2493
	xorl	%eax, %eax
	movl	%eax, %ecx
	cmpq	-32(%rbp), %rcx
	jl	.LBB66_412
.LBB66_386:                             # %lor.lhs.false.2496
	movslq	-72(%rbp), %rax
	cmpq	$0, %rax
	jge	.LBB66_398
# BB#387:                               # %cond.true.2500
	cmpq	$0, -32(%rbp)
	jge	.LBB66_392
# BB#388:                               # %cond.true.2503
	movq	-32(%rbp), %rax
	movslq	-72(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	-32(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -576(%rbp)        # 8-byte Spill
	jge	.LBB66_390
# BB#389:                               # %cond.true.2511
	movslq	-72(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	-32(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -584(%rbp)        # 8-byte Spill
	jmp	.LBB66_391
.LBB66_390:                             # %cond.false.2521
	movslq	-72(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	-32(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -584(%rbp)        # 8-byte Spill
.LBB66_391:                             # %cond.end.2527
	movq	-584(%rbp), %rax        # 8-byte Reload
	movslq	-72(%rbp), %rcx
	cqto
	idivq	%rcx
	movq	-576(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB66_412
	jmp	.LBB66_409
.LBB66_392:                             # %cond.false.2533
	movslq	-72(%rbp), %rax
	cmpq	$-1, %rax
	jne	.LBB66_394
# BB#393:                               # %cond.true.2537
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB66_412
	jmp	.LBB66_409
.LBB66_394:                             # %cond.false.2538
	movslq	-72(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	-32(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB66_396
# BB#395:                               # %cond.true.2546
	xorl	%eax, %eax
	movslq	-72(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	-32(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movslq	-72(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	-32(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -592(%rbp)        # 8-byte Spill
	jmp	.LBB66_397
.LBB66_396:                             # %cond.false.2567
	movslq	-72(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	-32(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -592(%rbp)        # 8-byte Spill
.LBB66_397:                             # %cond.end.2573
	movq	-592(%rbp), %rax        # 8-byte Reload
	movslq	-72(%rbp), %rcx
	cqto
	idivq	%rcx
	cmpq	-32(%rbp), %rax
	jl	.LBB66_412
	jmp	.LBB66_409
.LBB66_398:                             # %cond.false.2579
	movslq	-72(%rbp), %rax
	cmpq	$0, %rax
	jne	.LBB66_400
# BB#399:                               # %cond.true.2583
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB66_412
	jmp	.LBB66_409
.LBB66_400:                             # %cond.false.2584
	cmpq	$0, -32(%rbp)
	jge	.LBB66_405
# BB#401:                               # %cond.true.2587
	movq	-32(%rbp), %rax
	movslq	-72(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	-32(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -600(%rbp)        # 8-byte Spill
	jge	.LBB66_403
# BB#402:                               # %cond.true.2595
	xorl	%eax, %eax
	movslq	-72(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	-32(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movslq	-72(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	-32(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -608(%rbp)        # 8-byte Spill
	jmp	.LBB66_404
.LBB66_403:                             # %cond.false.2616
	movslq	-72(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	-32(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -608(%rbp)        # 8-byte Spill
.LBB66_404:                             # %cond.end.2622
	movq	-608(%rbp), %rax        # 8-byte Reload
	movslq	-72(%rbp), %rcx
	cqto
	idivq	%rcx
	movq	-600(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB66_412
	jmp	.LBB66_409
.LBB66_405:                             # %cond.false.2628
	movslq	-72(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	-32(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB66_407
# BB#406:                               # %cond.true.2636
	movslq	-72(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	-32(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -616(%rbp)        # 8-byte Spill
	jmp	.LBB66_408
.LBB66_407:                             # %cond.false.2646
	movslq	-72(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	-32(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -616(%rbp)        # 8-byte Spill
.LBB66_408:                             # %cond.end.2652
	movq	-616(%rbp), %rax        # 8-byte Reload
	movslq	-72(%rbp), %rcx
	cqto
	idivq	%rcx
	cmpq	-32(%rbp), %rax
	jl	.LBB66_412
.LBB66_409:                             # %lor.lhs.false.2658
	movq	-32(%rbp), %rax
	movslq	-72(%rbp), %rcx
	imulq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB66_411
# BB#410:                               # %land.lhs.true.2665
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-32(%rbp), %rcx
	movslq	-72(%rbp), %rdx
	imulq	%rdx, %rcx
	cmpq	%rax, %rcx
	jl	.LBB66_412
.LBB66_411:                             # %lor.lhs.false.2670
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-32(%rbp), %rcx
	movslq	-72(%rbp), %rdx
	imulq	%rdx, %rcx
	cmpq	%rcx, %rax
	jge	.LBB66_416
.LBB66_412:                             # %cond.true.2675
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-32(%rbp), %rcx
	movslq	-72(%rbp), %rdx
	imulq	%rdx, %rcx
	cmpq	%rax, %rcx
	ja	.LBB66_414
# BB#413:                               # %cond.true.2680
	movq	-32(%rbp), %rax
	movslq	-72(%rbp), %rcx
	imulq	%rcx, %rax
	movq	%rax, -624(%rbp)        # 8-byte Spill
	jmp	.LBB66_415
.LBB66_414:                             # %cond.false.2683
	movq	-32(%rbp), %rax
	movslq	-72(%rbp), %rcx
	imulq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -624(%rbp)        # 8-byte Spill
.LBB66_415:                             # %cond.end.2688
	movq	-624(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -88(%rbp)
	testb	$1, %cl
	jne	.LBB66_463
	jmp	.LBB66_462
.LBB66_416:                             # %cond.false.2690
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-32(%rbp), %rcx
	movslq	-72(%rbp), %rdx
	imulq	%rdx, %rcx
	cmpq	%rax, %rcx
	ja	.LBB66_418
# BB#417:                               # %cond.true.2695
	movq	-32(%rbp), %rax
	movslq	-72(%rbp), %rcx
	imulq	%rcx, %rax
	movq	%rax, -632(%rbp)        # 8-byte Spill
	jmp	.LBB66_419
.LBB66_418:                             # %cond.false.2698
	movq	-32(%rbp), %rax
	movslq	-72(%rbp), %rcx
	imulq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -632(%rbp)        # 8-byte Spill
.LBB66_419:                             # %cond.end.2703
	movq	-632(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -88(%rbp)
	testb	$1, %dl
	jne	.LBB66_463
	jmp	.LBB66_462
.LBB66_420:                             # %cond.false.2705
	imull	$0, -72(%rbp), %eax
	movslq	%eax, %rcx
	addq	-32(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	jge	.LBB66_422
# BB#421:                               # %cond.true.2713
	xorl	%eax, %eax
	imull	$0, -72(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	-32(%rbp), %rdx
	imulq	$0, %rdx, %rdx
	addq	$0, %rdx
	xorq	$-1, %rdx
	cmpq	$-1, %rdx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %ecx
	subl	%ecx, %eax
	movslq	%eax, %rdx
	imull	$0, -72(%rbp), %eax
	movslq	%eax, %rdi
	addq	-32(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rdx
	movq	%rdx, -640(%rbp)        # 8-byte Spill
	jmp	.LBB66_423
.LBB66_422:                             # %cond.false.2734
	imull	$0, -72(%rbp), %eax
	movslq	%eax, %rcx
	addq	-32(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	movq	%rcx, -640(%rbp)        # 8-byte Spill
.LBB66_423:                             # %cond.end.2740
	movq	-640(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB66_428
# BB#424:                               # %land.lhs.true.2744
	cmpq	$0, -32(%rbp)
	jge	.LBB66_426
# BB#425:                               # %land.lhs.true.2747
	xorl	%eax, %eax
	cmpl	-72(%rbp), %eax
	jl	.LBB66_454
.LBB66_426:                             # %lor.lhs.false.2750
	cmpl	$0, -72(%rbp)
	jge	.LBB66_428
# BB#427:                               # %land.lhs.true.2753
	xorl	%eax, %eax
	movl	%eax, %ecx
	cmpq	-32(%rbp), %rcx
	jl	.LBB66_454
.LBB66_428:                             # %lor.lhs.false.2756
	cmpl	$0, -72(%rbp)
	jge	.LBB66_440
# BB#429:                               # %cond.true.2759
	cmpq	$0, -32(%rbp)
	jge	.LBB66_434
# BB#430:                               # %cond.true.2762
	movq	-32(%rbp), %rax
	imull	$0, -72(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	-32(%rbp), %rdx
	imulq	$0, %rdx, %rdx
	subq	$1, %rdx
	cmpq	$0, %rdx
	movq	%rax, -648(%rbp)        # 8-byte Spill
	jge	.LBB66_432
# BB#431:                               # %cond.true.2770
	imull	$0, -72(%rbp), %eax
	movslq	%eax, %rcx
	addq	-32(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$1, %rcx
	shlq	$62, %rcx
	subq	$1, %rcx
	shlq	$1, %rcx
	addq	$1, %rcx
	movq	%rcx, -656(%rbp)        # 8-byte Spill
	jmp	.LBB66_433
.LBB66_432:                             # %cond.false.2780
	imull	$0, -72(%rbp), %eax
	movslq	%eax, %rcx
	addq	-32(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	movq	%rcx, -656(%rbp)        # 8-byte Spill
.LBB66_433:                             # %cond.end.2786
	movq	-656(%rbp), %rax        # 8-byte Reload
	movslq	-72(%rbp), %rcx
	cqto
	idivq	%rcx
	movq	-648(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB66_454
	jmp	.LBB66_451
.LBB66_434:                             # %cond.false.2792
	cmpl	$-1, -72(%rbp)
	jne	.LBB66_436
# BB#435:                               # %cond.true.2795
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB66_454
	jmp	.LBB66_451
.LBB66_436:                             # %cond.false.2796
	imull	$0, -72(%rbp), %eax
	movslq	%eax, %rcx
	addq	-32(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	jge	.LBB66_438
# BB#437:                               # %cond.true.2804
	xorl	%eax, %eax
	imull	$0, -72(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	-32(%rbp), %rdx
	imulq	$0, %rdx, %rdx
	addq	$0, %rdx
	xorq	$-1, %rdx
	cmpq	$-1, %rdx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %ecx
	subl	%ecx, %eax
	movslq	%eax, %rdx
	imull	$0, -72(%rbp), %eax
	movslq	%eax, %rdi
	addq	-32(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rdx
	movq	%rdx, -664(%rbp)        # 8-byte Spill
	jmp	.LBB66_439
.LBB66_438:                             # %cond.false.2825
	imull	$0, -72(%rbp), %eax
	movslq	%eax, %rcx
	addq	-32(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	movq	%rcx, -664(%rbp)        # 8-byte Spill
.LBB66_439:                             # %cond.end.2831
	movq	-664(%rbp), %rax        # 8-byte Reload
	movslq	-72(%rbp), %rcx
	cqto
	idivq	%rcx
	cmpq	-32(%rbp), %rax
	jl	.LBB66_454
	jmp	.LBB66_451
.LBB66_440:                             # %cond.false.2837
	cmpl	$0, -72(%rbp)
	jne	.LBB66_442
# BB#441:                               # %cond.true.2840
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB66_454
	jmp	.LBB66_451
.LBB66_442:                             # %cond.false.2841
	cmpq	$0, -32(%rbp)
	jge	.LBB66_447
# BB#443:                               # %cond.true.2844
	movq	-32(%rbp), %rax
	imull	$0, -72(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	-32(%rbp), %rdx
	imulq	$0, %rdx, %rdx
	subq	$1, %rdx
	cmpq	$0, %rdx
	movq	%rax, -672(%rbp)        # 8-byte Spill
	jge	.LBB66_445
# BB#444:                               # %cond.true.2852
	xorl	%eax, %eax
	imull	$0, -72(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	-32(%rbp), %rdx
	imulq	$0, %rdx, %rdx
	addq	$0, %rdx
	xorq	$-1, %rdx
	cmpq	$-1, %rdx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %ecx
	subl	%ecx, %eax
	movslq	%eax, %rdx
	imull	$0, -72(%rbp), %eax
	movslq	%eax, %rdi
	addq	-32(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rdx
	movq	%rdx, -680(%rbp)        # 8-byte Spill
	jmp	.LBB66_446
.LBB66_445:                             # %cond.false.2873
	imull	$0, -72(%rbp), %eax
	movslq	%eax, %rcx
	addq	-32(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	movq	%rcx, -680(%rbp)        # 8-byte Spill
.LBB66_446:                             # %cond.end.2879
	movq	-680(%rbp), %rax        # 8-byte Reload
	movslq	-72(%rbp), %rcx
	cqto
	idivq	%rcx
	movq	-672(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB66_454
	jmp	.LBB66_451
.LBB66_447:                             # %cond.false.2885
	imull	$0, -72(%rbp), %eax
	movslq	%eax, %rcx
	addq	-32(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	jge	.LBB66_449
# BB#448:                               # %cond.true.2893
	imull	$0, -72(%rbp), %eax
	movslq	%eax, %rcx
	addq	-32(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$1, %rcx
	shlq	$62, %rcx
	subq	$1, %rcx
	shlq	$1, %rcx
	addq	$1, %rcx
	movq	%rcx, -688(%rbp)        # 8-byte Spill
	jmp	.LBB66_450
.LBB66_449:                             # %cond.false.2903
	imull	$0, -72(%rbp), %eax
	movslq	%eax, %rcx
	addq	-32(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	movq	%rcx, -688(%rbp)        # 8-byte Spill
.LBB66_450:                             # %cond.end.2909
	movq	-688(%rbp), %rax        # 8-byte Reload
	movslq	-72(%rbp), %rcx
	cqto
	idivq	%rcx
	cmpq	-32(%rbp), %rax
	jl	.LBB66_454
.LBB66_451:                             # %lor.lhs.false.2915
	movq	-32(%rbp), %rax
	movslq	-72(%rbp), %rcx
	imulq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB66_453
# BB#452:                               # %land.lhs.true.2922
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-32(%rbp), %rcx
	movslq	-72(%rbp), %rdx
	imulq	%rdx, %rcx
	cmpq	%rax, %rcx
	jl	.LBB66_454
.LBB66_453:                             # %lor.lhs.false.2927
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-32(%rbp), %rcx
	movslq	-72(%rbp), %rdx
	imulq	%rdx, %rcx
	cmpq	%rcx, %rax
	jge	.LBB66_458
.LBB66_454:                             # %cond.true.2932
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-32(%rbp), %rcx
	movslq	-72(%rbp), %rdx
	imulq	%rdx, %rcx
	cmpq	%rax, %rcx
	ja	.LBB66_456
# BB#455:                               # %cond.true.2937
	movq	-32(%rbp), %rax
	movslq	-72(%rbp), %rcx
	imulq	%rcx, %rax
	movq	%rax, -696(%rbp)        # 8-byte Spill
	jmp	.LBB66_457
.LBB66_456:                             # %cond.false.2940
	movq	-32(%rbp), %rax
	movslq	-72(%rbp), %rcx
	imulq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -696(%rbp)        # 8-byte Spill
.LBB66_457:                             # %cond.end.2945
	movq	-696(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -88(%rbp)
	testb	$1, %cl
	jne	.LBB66_463
	jmp	.LBB66_462
.LBB66_458:                             # %cond.false.2947
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-32(%rbp), %rcx
	movslq	-72(%rbp), %rdx
	imulq	%rdx, %rcx
	cmpq	%rax, %rcx
	ja	.LBB66_460
# BB#459:                               # %cond.true.2952
	movq	-32(%rbp), %rax
	movslq	-72(%rbp), %rcx
	imulq	%rcx, %rax
	movq	%rax, -704(%rbp)        # 8-byte Spill
	jmp	.LBB66_461
.LBB66_460:                             # %cond.false.2955
	movq	-32(%rbp), %rax
	movslq	-72(%rbp), %rcx
	imulq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -704(%rbp)        # 8-byte Spill
.LBB66_461:                             # %cond.end.2960
	movq	-704(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -88(%rbp)
	testb	$1, %dl
	jne	.LBB66_463
.LBB66_462:                             # %lor.lhs.false.2962
	movq	-88(%rbp), %rax
	cmpq	-80(%rbp), %rax
	je	.LBB66_464
.LBB66_463:                             # %if.then.2965
	movabsq	$.L.str.2, %rdi
	movb	$0, %al
	callq	error
.LBB66_464:                             # %if.end
	movq	$0, -40(%rbp)
.LBB66_465:                             # %for.cond.2966
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	cmpq	-80(%rbp), %rax
	jge	.LBB66_468
# BB#466:                               # %for.body.2969
                                        #   in Loop: Header=BB66_465 Depth=1
	movq	-40(%rbp), %rax
	movslq	-72(%rbp), %rcx
	cqto
	idivq	%rcx
	movb	-65(%rbp,%rdx), %sil
	movq	-56(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -56(%rbp)
	movb	%sil, (%rcx)
# BB#467:                               # %for.inc.2972
                                        #   in Loop: Header=BB66_465 Depth=1
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB66_465
.LBB66_468:                             # %for.end.2974
	jmp	.LBB66_474
.LBB66_469:                             # %if.else.2975
	movq	$0, -40(%rbp)
.LBB66_470:                             # %for.cond.2976
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jge	.LBB66_473
# BB#471:                               # %for.body.2979
                                        #   in Loop: Header=BB66_470 Depth=1
	movl	-60(%rbp), %eax
	movb	%al, %cl
	movq	-40(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
# BB#472:                               # %for.inc.2982
                                        #   in Loop: Header=BB66_470 Depth=1
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB66_470
.LBB66_473:                             # %for.end.2984
	jmp	.LBB66_474
.LBB66_474:                             # %if.end.2985
	jmp	.LBB66_478
.LBB66_475:                             # %if.else.2986
	movq	-16(%rbp), %rdi
	callq	BOOL_VECTOR_P
	testb	$1, %al
	jne	.LBB66_476
	jmp	.LBB66_477
.LBB66_476:                             # %if.then.2988
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	bool_vector_fill
	movq	%rax, -8(%rbp)
	jmp	.LBB66_481
.LBB66_477:                             # %if.else.2990
	movl	$179, %edi
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -712(%rbp)        # 8-byte Spill
.LBB66_478:                             # %if.end.2992
	jmp	.LBB66_479
.LBB66_479:                             # %if.end.2993
	jmp	.LBB66_480
.LBB66_480:                             # %if.end.2994
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB66_481:                             # %return
	movq	-8(%rbp), %rax
	addq	$720, %rsp              # imm = 0x2D0
	popq	%rbp
	retq
.Lfunc_end66:
	.size	Ffillarray, .Lfunc_end66-Ffillarray
	.cfi_endproc

	.globl	Fclear_string
	.align	16, 0x90
	.type	Fclear_string,@function
Fclear_string:                          # @Fclear_string
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp201:
	.cfi_def_cfa_offset 16
.Ltmp202:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp203:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	CHECK_STRING
	movq	-8(%rbp), %rdi
	callq	SBYTES
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	SDATA
	xorl	%esi, %esi
	movq	-16(%rbp), %rdx
	movq	%rax, %rdi
	callq	memset
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	STRING_SET_CHARS
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rdi
	callq	XSTRING
	cmpq	$0, (%rax)
	jne	.LBB67_3
# BB#2:                                 # %if.then
	movq	empty_unibyte_string, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB67_4
.LBB67_3:                               # %if.else
	movq	-8(%rbp), %rdi
	callq	XSTRING
	movq	$-1, 8(%rax)
.LBB67_4:                               # %if.end
	jmp	.LBB67_5
.LBB67_5:                               # %do.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end67:
	.size	Fclear_string, .Lfunc_end67-Fclear_string
	.cfi_endproc

	.globl	nconc2
	.align	16, 0x90
	.type	nconc2,@function
nconc2:                                 # @nconc2
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp204:
	.cfi_def_cfa_offset 16
.Ltmp205:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp206:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	$2, %eax
	movl	%eax, %ecx
	leaq	-32(%rbp), %rdx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -32(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	callq	Fnconc
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end68:
	.size	nconc2, .Lfunc_end68-nconc2
	.cfi_endproc

	.globl	Fnconc
	.align	16, 0x90
	.type	Fnconc,@function
Fnconc:                                 # @Fnconc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp207:
	.cfi_def_cfa_offset 16
.Ltmp208:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp209:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -32(%rbp)
	movq	%rax, -48(%rbp)
	movq	$0, -24(%rbp)
.LBB69_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB69_12 Depth 2
	movq	-24(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jge	.LBB69_26
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB69_1 Depth=1
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB69_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB69_1 Depth=1
	jmp	.LBB69_25
.LBB69_4:                               # %if.end
                                        #   in Loop: Header=BB69_1 Depth=1
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB69_6
# BB#5:                                 # %if.then.5
                                        #   in Loop: Header=BB69_1 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
.LBB69_6:                               # %if.end.6
                                        #   in Loop: Header=BB69_1 Depth=1
	movq	-24(%rbp), %rax
	addq	$1, %rax
	cmpq	-8(%rbp), %rax
	jne	.LBB69_8
# BB#7:                                 # %if.then.8
	jmp	.LBB69_26
.LBB69_8:                               # %if.end.9
                                        #   in Loop: Header=BB69_1 Depth=1
	movq	-40(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB69_10
# BB#9:                                 # %cond.true
                                        #   in Loop: Header=BB69_1 Depth=1
	jmp	.LBB69_11
.LBB69_10:                              # %cond.false
	movl	$626, %edi              # imm = 0x272
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -72(%rbp)         # 8-byte Spill
.LBB69_11:                              # %cond.end
                                        #   in Loop: Header=BB69_1 Depth=1
	jmp	.LBB69_12
.LBB69_12:                              # %while.cond
                                        #   Parent Loop BB69_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-40(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB69_22
# BB#13:                                # %while.body
                                        #   in Loop: Header=BB69_12 Depth=2
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
# BB#14:                                # %do.body
                                        #   in Loop: Header=BB69_12 Depth=2
	xorl	%edi, %edi
	movq	globals+1928, %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB69_17
# BB#15:                                # %land.lhs.true
                                        #   in Loop: Header=BB69_12 Depth=2
	xorl	%edi, %edi
	movq	globals+1104, %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB69_17
# BB#16:                                # %if.then.23
                                        #   in Loop: Header=BB69_12 Depth=2
	callq	process_quit_flag
	jmp	.LBB69_20
.LBB69_17:                              # %if.else
                                        #   in Loop: Header=BB69_12 Depth=2
	movb	pending_signals, %al
	testb	$1, %al
	je	.LBB69_19
# BB#18:                                # %if.then.24
                                        #   in Loop: Header=BB69_12 Depth=2
	callq	process_pending_signals
.LBB69_19:                              # %if.end.25
                                        #   in Loop: Header=BB69_12 Depth=2
	jmp	.LBB69_20
.LBB69_20:                              # %if.end.26
                                        #   in Loop: Header=BB69_12 Depth=2
	jmp	.LBB69_21
.LBB69_21:                              # %do.end
                                        #   in Loop: Header=BB69_12 Depth=2
	jmp	.LBB69_12
.LBB69_22:                              # %while.end
                                        #   in Loop: Header=BB69_1 Depth=1
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	8(%rcx,%rax,8), %rax
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	Fsetcdr
	xorl	%edi, %edi
	movq	-40(%rbp), %rcx
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB69_24
# BB#23:                                # %if.then.33
                                        #   in Loop: Header=BB69_1 Depth=1
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	%rax, 8(%rdx,%rcx,8)
.LBB69_24:                              # %if.end.36
                                        #   in Loop: Header=BB69_1 Depth=1
	jmp	.LBB69_25
.LBB69_25:                              # %for.inc
                                        #   in Loop: Header=BB69_1 Depth=1
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB69_1
.LBB69_26:                              # %for.end
	movq	-48(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end69:
	.size	Fnconc, .Lfunc_end69-Fnconc
	.cfi_endproc

	.globl	Fmapconcat
	.align	16, 0x90
	.type	Fmapconcat,@function
Fmapconcat:                             # @Fmapconcat
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp210:
	.cfi_def_cfa_offset 16
.Ltmp211:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp212:
	.cfi_def_cfa_register %rbp
	subq	$976, %rsp              # imm = 0x3D0
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	$16384, -88(%rbp)       # imm = 0x4000
	callq	SPECPDL_INDEX
	movq	%rax, -96(%rbp)
	movb	$0, -97(%rbp)
	movq	-24(%rbp), %rdi
	callq	Flength
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rdi
	callq	CHAR_TABLE_P
	testb	$1, %al
	jne	.LBB70_1
	jmp	.LBB70_2
.LBB70_1:                               # %if.then
	movl	$626, %edi              # imm = 0x272
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -128(%rbp)        # 8-byte Spill
.LBB70_2:                               # %if.end
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	addq	-48(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jge	.LBB70_4
# BB#3:                                 # %if.then.4
	movq	empty_unibyte_string, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB70_424
.LBB70_4:                               # %if.end.5
	jmp	.LBB70_5
.LBB70_5:                               # %do.body
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB70_6
	jmp	.LBB70_85
.LBB70_6:                               # %cond.true
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB70_7
	jmp	.LBB70_46
.LBB70_7:                               # %cond.true.6
	movq	-56(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB70_9
# BB#8:                                 # %cond.true.12
	xorl	%eax, %eax
	movq	-56(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movq	-56(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -132(%rbp)        # 4-byte Spill
	jmp	.LBB70_10
.LBB70_9:                               # %cond.false
	movq	-56(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -132(%rbp)        # 4-byte Spill
.LBB70_10:                              # %cond.end
	movl	-132(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB70_12
# BB#11:                                # %land.lhs.true
	movq	-56(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jl	.LBB70_38
.LBB70_12:                              # %lor.lhs.false
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB70_13
	jmp	.LBB70_24
.LBB70_13:                              # %cond.true.41
	movq	-56(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jge	.LBB70_18
# BB#14:                                # %cond.true.46
	movq	-56(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	-56(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -136(%rbp)        # 4-byte Spill
	jge	.LBB70_16
# BB#15:                                # %cond.true.56
	movq	-56(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -140(%rbp)        # 4-byte Spill
	jmp	.LBB70_17
.LBB70_16:                              # %cond.false.66
	movq	-56(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -140(%rbp)        # 4-byte Spill
.LBB70_17:                              # %cond.end.72
	movl	-140(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-136(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB70_38
	jmp	.LBB70_35
.LBB70_18:                              # %cond.false.76
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB70_19
	jmp	.LBB70_20
.LBB70_19:                              # %cond.true.77
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB70_38
	jmp	.LBB70_35
.LBB70_20:                              # %cond.false.78
	movq	-56(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB70_22
# BB#21:                                # %cond.true.86
	xorl	%eax, %eax
	movq	-56(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movq	-56(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -144(%rbp)        # 4-byte Spill
	jmp	.LBB70_23
.LBB70_22:                              # %cond.false.106
	movq	-56(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -144(%rbp)        # 4-byte Spill
.LBB70_23:                              # %cond.end.112
	movl	-144(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-56(%rbp), %rsi
	movb	%sil, %dil
	movsbl	%dil, %ecx
	cmpl	%ecx, %eax
	jl	.LBB70_38
	jmp	.LBB70_35
.LBB70_24:                              # %cond.false.119
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB70_25
	jmp	.LBB70_26
.LBB70_25:                              # %cond.true.120
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB70_38
	jmp	.LBB70_35
.LBB70_26:                              # %cond.false.121
	movq	-56(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jge	.LBB70_31
# BB#27:                                # %cond.true.126
	movq	-56(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	-56(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -148(%rbp)        # 4-byte Spill
	jge	.LBB70_29
# BB#28:                                # %cond.true.136
	xorl	%eax, %eax
	movq	-56(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movq	-56(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -152(%rbp)        # 4-byte Spill
	jmp	.LBB70_30
.LBB70_29:                              # %cond.false.156
	movq	-56(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -152(%rbp)        # 4-byte Spill
.LBB70_30:                              # %cond.end.162
	movl	-152(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-148(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB70_38
	jmp	.LBB70_35
.LBB70_31:                              # %cond.false.167
	movq	-56(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB70_33
# BB#32:                                # %cond.true.175
	movq	-56(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -156(%rbp)        # 4-byte Spill
	jmp	.LBB70_34
.LBB70_33:                              # %cond.false.185
	movq	-56(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -156(%rbp)        # 4-byte Spill
.LBB70_34:                              # %cond.end.191
	movl	-156(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-56(%rbp), %rsi
	movb	%sil, %dil
	movsbl	%dil, %ecx
	cmpl	%ecx, %eax
	jl	.LBB70_38
.LBB70_35:                              # %lor.lhs.false.198
	movq	-56(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	shll	$3, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB70_37
# BB#36:                                # %land.lhs.true.206
	movq	-56(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	shll	$3, %edx
	cmpl	$-128, %edx
	jl	.LBB70_38
.LBB70_37:                              # %lor.lhs.false.212
	movl	$127, %eax
	movq	-56(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	shll	$3, %esi
	cmpl	%esi, %eax
	jge	.LBB70_42
.LBB70_38:                              # %cond.true.218
	movq	-56(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	cmpl	$127, %edx
	jg	.LBB70_40
# BB#39:                                # %cond.true.224
	movq	-56(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -160(%rbp)        # 4-byte Spill
	jmp	.LBB70_41
.LBB70_40:                              # %cond.false.230
	movq	-56(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -160(%rbp)        # 4-byte Spill
.LBB70_41:                              # %cond.end.238
	movl	-160(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -112(%rbp)
	testb	$1, %cl
	jne	.LBB70_405
	jmp	.LBB70_404
.LBB70_42:                              # %cond.false.241
	movq	-56(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	cmpl	$127, %edx
	jg	.LBB70_44
# BB#43:                                # %cond.true.247
	movq	-56(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -164(%rbp)        # 4-byte Spill
	jmp	.LBB70_45
.LBB70_44:                              # %cond.false.253
	movq	-56(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -164(%rbp)        # 4-byte Spill
.LBB70_45:                              # %cond.end.261
	movl	-164(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -112(%rbp)
	testb	$1, %dl
	jne	.LBB70_405
	jmp	.LBB70_404
.LBB70_46:                              # %cond.false.264
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB70_48
# BB#47:                                # %cond.true.270
	xorl	%eax, %eax
	movq	-56(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-56(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -176(%rbp)        # 8-byte Spill
	jmp	.LBB70_49
.LBB70_48:                              # %cond.false.287
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
.LBB70_49:                              # %cond.end.291
	movq	-176(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB70_51
# BB#50:                                # %land.lhs.true.295
	cmpq	$0, -56(%rbp)
	jl	.LBB70_77
.LBB70_51:                              # %lor.lhs.false.298
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB70_52
	jmp	.LBB70_63
.LBB70_52:                              # %cond.true.299
	cmpq	$0, -56(%rbp)
	jge	.LBB70_57
# BB#53:                                # %cond.true.302
	movq	-56(%rbp), %rax
	movq	-56(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -184(%rbp)        # 8-byte Spill
	jge	.LBB70_55
# BB#54:                                # %cond.true.308
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	jmp	.LBB70_56
.LBB70_55:                              # %cond.false.316
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
.LBB70_56:                              # %cond.end.320
	movq	-192(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -200(%rbp)        # 8-byte Spill
	cqto
	movq	-200(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-184(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB70_77
	jmp	.LBB70_74
.LBB70_57:                              # %cond.false.325
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB70_58
	jmp	.LBB70_59
.LBB70_58:                              # %cond.true.326
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB70_77
	jmp	.LBB70_74
.LBB70_59:                              # %cond.false.327
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB70_61
# BB#60:                                # %cond.true.333
	xorl	%eax, %eax
	movq	-56(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-56(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -208(%rbp)        # 8-byte Spill
	jmp	.LBB70_62
.LBB70_61:                              # %cond.false.350
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
.LBB70_62:                              # %cond.end.354
	movq	-208(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -216(%rbp)        # 8-byte Spill
	cqto
	movq	-216(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-56(%rbp), %rax
	jl	.LBB70_77
	jmp	.LBB70_74
.LBB70_63:                              # %cond.false.359
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB70_64
	jmp	.LBB70_65
.LBB70_64:                              # %cond.true.360
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB70_77
	jmp	.LBB70_74
.LBB70_65:                              # %cond.false.361
	cmpq	$0, -56(%rbp)
	jge	.LBB70_70
# BB#66:                                # %cond.true.364
	movq	-56(%rbp), %rax
	movq	-56(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -224(%rbp)        # 8-byte Spill
	jge	.LBB70_68
# BB#67:                                # %cond.true.370
	xorl	%eax, %eax
	movq	-56(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-56(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -232(%rbp)        # 8-byte Spill
	jmp	.LBB70_69
.LBB70_68:                              # %cond.false.387
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
.LBB70_69:                              # %cond.end.391
	movq	-232(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -240(%rbp)        # 8-byte Spill
	cqto
	movq	-240(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-224(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB70_77
	jmp	.LBB70_74
.LBB70_70:                              # %cond.false.396
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB70_72
# BB#71:                                # %cond.true.402
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	jmp	.LBB70_73
.LBB70_72:                              # %cond.false.410
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
.LBB70_73:                              # %cond.end.414
	movq	-248(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -256(%rbp)        # 8-byte Spill
	cqto
	movq	-256(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-56(%rbp), %rax
	jl	.LBB70_77
.LBB70_74:                              # %lor.lhs.false.419
	movq	-56(%rbp), %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB70_76
# BB#75:                                # %land.lhs.true.425
	movq	-56(%rbp), %rax
	shlq	$3, %rax
	cmpq	$-128, %rax
	jl	.LBB70_77
.LBB70_76:                              # %lor.lhs.false.429
	movl	$127, %eax
	movl	%eax, %ecx
	movq	-56(%rbp), %rdx
	shlq	$3, %rdx
	cmpq	%rdx, %rcx
	jge	.LBB70_81
.LBB70_77:                              # %cond.true.433
	movq	-56(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	cmpl	$127, %edx
	jg	.LBB70_79
# BB#78:                                # %cond.true.439
	movq	-56(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -260(%rbp)        # 4-byte Spill
	jmp	.LBB70_80
.LBB70_79:                              # %cond.false.445
	movq	-56(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -260(%rbp)        # 4-byte Spill
.LBB70_80:                              # %cond.end.453
	movl	-260(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -112(%rbp)
	testb	$1, %cl
	jne	.LBB70_405
	jmp	.LBB70_404
.LBB70_81:                              # %cond.false.456
	movq	-56(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	cmpl	$127, %edx
	jg	.LBB70_83
# BB#82:                                # %cond.true.462
	movq	-56(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -264(%rbp)        # 4-byte Spill
	jmp	.LBB70_84
.LBB70_83:                              # %cond.false.468
	movq	-56(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -264(%rbp)        # 4-byte Spill
.LBB70_84:                              # %cond.end.476
	movl	-264(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -112(%rbp)
	testb	$1, %dl
	jne	.LBB70_405
	jmp	.LBB70_404
.LBB70_85:                              # %cond.false.479
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB70_86
	jmp	.LBB70_165
.LBB70_86:                              # %cond.true.480
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB70_87
	jmp	.LBB70_126
.LBB70_87:                              # %cond.true.481
	movq	-56(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB70_89
# BB#88:                                # %cond.true.489
	xorl	%eax, %eax
	movq	-56(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dil
	andb	$1, %dil
	movzbl	%dil, %esi
	subl	%esi, %eax
	movq	-56(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -268(%rbp)        # 4-byte Spill
	jmp	.LBB70_90
.LBB70_89:                              # %cond.false.509
	movq	-56(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -268(%rbp)        # 4-byte Spill
.LBB70_90:                              # %cond.end.515
	movl	-268(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB70_92
# BB#91:                                # %land.lhs.true.519
	movq	-56(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jl	.LBB70_118
.LBB70_92:                              # %lor.lhs.false.524
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB70_93
	jmp	.LBB70_104
.LBB70_93:                              # %cond.true.525
	movq	-56(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jge	.LBB70_98
# BB#94:                                # %cond.true.530
	movq	-56(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	-56(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -272(%rbp)        # 4-byte Spill
	jge	.LBB70_96
# BB#95:                                # %cond.true.540
	movq	-56(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -276(%rbp)        # 4-byte Spill
	jmp	.LBB70_97
.LBB70_96:                              # %cond.false.550
	movq	-56(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -276(%rbp)        # 4-byte Spill
.LBB70_97:                              # %cond.end.556
	movl	-276(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-272(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB70_118
	jmp	.LBB70_115
.LBB70_98:                              # %cond.false.561
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB70_99
	jmp	.LBB70_100
.LBB70_99:                              # %cond.true.562
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB70_118
	jmp	.LBB70_115
.LBB70_100:                             # %cond.false.563
	movq	-56(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB70_102
# BB#101:                               # %cond.true.571
	xorl	%eax, %eax
	movq	-56(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dil
	andb	$1, %dil
	movzbl	%dil, %esi
	subl	%esi, %eax
	movq	-56(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -280(%rbp)        # 4-byte Spill
	jmp	.LBB70_103
.LBB70_102:                             # %cond.false.591
	movq	-56(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -280(%rbp)        # 4-byte Spill
.LBB70_103:                             # %cond.end.597
	movl	-280(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-56(%rbp), %rsi
	movw	%si, %di
	movswl	%di, %ecx
	cmpl	%ecx, %eax
	jl	.LBB70_118
	jmp	.LBB70_115
.LBB70_104:                             # %cond.false.604
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB70_105
	jmp	.LBB70_106
.LBB70_105:                             # %cond.true.605
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB70_118
	jmp	.LBB70_115
.LBB70_106:                             # %cond.false.606
	movq	-56(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jge	.LBB70_111
# BB#107:                               # %cond.true.611
	movq	-56(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	-56(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -284(%rbp)        # 4-byte Spill
	jge	.LBB70_109
# BB#108:                               # %cond.true.621
	xorl	%eax, %eax
	movq	-56(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dil
	andb	$1, %dil
	movzbl	%dil, %esi
	subl	%esi, %eax
	movq	-56(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -288(%rbp)        # 4-byte Spill
	jmp	.LBB70_110
.LBB70_109:                             # %cond.false.641
	movq	-56(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -288(%rbp)        # 4-byte Spill
.LBB70_110:                             # %cond.end.647
	movl	-288(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-284(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB70_118
	jmp	.LBB70_115
.LBB70_111:                             # %cond.false.652
	movq	-56(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB70_113
# BB#112:                               # %cond.true.660
	movq	-56(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -292(%rbp)        # 4-byte Spill
	jmp	.LBB70_114
.LBB70_113:                             # %cond.false.670
	movq	-56(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -292(%rbp)        # 4-byte Spill
.LBB70_114:                             # %cond.end.676
	movl	-292(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-56(%rbp), %rsi
	movw	%si, %di
	movswl	%di, %ecx
	cmpl	%ecx, %eax
	jl	.LBB70_118
.LBB70_115:                             # %lor.lhs.false.683
	movq	-56(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	shll	$3, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB70_117
# BB#116:                               # %land.lhs.true.691
	movq	-56(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	shll	$3, %edx
	cmpl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	jl	.LBB70_118
.LBB70_117:                             # %lor.lhs.false.697
	movl	$32767, %eax            # imm = 0x7FFF
	movq	-56(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	shll	$3, %esi
	cmpl	%esi, %eax
	jge	.LBB70_122
.LBB70_118:                             # %cond.true.703
	movq	-56(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB70_120
# BB#119:                               # %cond.true.709
	movq	-56(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -296(%rbp)        # 4-byte Spill
	jmp	.LBB70_121
.LBB70_120:                             # %cond.false.715
	movq	-56(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -296(%rbp)        # 4-byte Spill
.LBB70_121:                             # %cond.end.723
	movl	-296(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -112(%rbp)
	testb	$1, %cl
	jne	.LBB70_405
	jmp	.LBB70_404
.LBB70_122:                             # %cond.false.726
	movq	-56(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB70_124
# BB#123:                               # %cond.true.732
	movq	-56(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -300(%rbp)        # 4-byte Spill
	jmp	.LBB70_125
.LBB70_124:                             # %cond.false.738
	movq	-56(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -300(%rbp)        # 4-byte Spill
.LBB70_125:                             # %cond.end.746
	movl	-300(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -112(%rbp)
	testb	$1, %dl
	jne	.LBB70_405
	jmp	.LBB70_404
.LBB70_126:                             # %cond.false.749
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB70_128
# BB#127:                               # %cond.true.755
	xorl	%eax, %eax
	movq	-56(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-56(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -312(%rbp)        # 8-byte Spill
	jmp	.LBB70_129
.LBB70_128:                             # %cond.false.772
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
.LBB70_129:                             # %cond.end.776
	movq	-312(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB70_131
# BB#130:                               # %land.lhs.true.780
	cmpq	$0, -56(%rbp)
	jl	.LBB70_157
.LBB70_131:                             # %lor.lhs.false.783
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB70_132
	jmp	.LBB70_143
.LBB70_132:                             # %cond.true.784
	cmpq	$0, -56(%rbp)
	jge	.LBB70_137
# BB#133:                               # %cond.true.787
	movq	-56(%rbp), %rax
	movq	-56(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -320(%rbp)        # 8-byte Spill
	jge	.LBB70_135
# BB#134:                               # %cond.true.793
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	jmp	.LBB70_136
.LBB70_135:                             # %cond.false.801
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
.LBB70_136:                             # %cond.end.805
	movq	-328(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -336(%rbp)        # 8-byte Spill
	cqto
	movq	-336(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-320(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB70_157
	jmp	.LBB70_154
.LBB70_137:                             # %cond.false.810
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB70_138
	jmp	.LBB70_139
.LBB70_138:                             # %cond.true.811
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB70_157
	jmp	.LBB70_154
.LBB70_139:                             # %cond.false.812
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB70_141
# BB#140:                               # %cond.true.818
	xorl	%eax, %eax
	movq	-56(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-56(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -344(%rbp)        # 8-byte Spill
	jmp	.LBB70_142
.LBB70_141:                             # %cond.false.835
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
.LBB70_142:                             # %cond.end.839
	movq	-344(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -352(%rbp)        # 8-byte Spill
	cqto
	movq	-352(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-56(%rbp), %rax
	jl	.LBB70_157
	jmp	.LBB70_154
.LBB70_143:                             # %cond.false.844
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB70_144
	jmp	.LBB70_145
.LBB70_144:                             # %cond.true.845
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB70_157
	jmp	.LBB70_154
.LBB70_145:                             # %cond.false.846
	cmpq	$0, -56(%rbp)
	jge	.LBB70_150
# BB#146:                               # %cond.true.849
	movq	-56(%rbp), %rax
	movq	-56(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -360(%rbp)        # 8-byte Spill
	jge	.LBB70_148
# BB#147:                               # %cond.true.855
	xorl	%eax, %eax
	movq	-56(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-56(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -368(%rbp)        # 8-byte Spill
	jmp	.LBB70_149
.LBB70_148:                             # %cond.false.872
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
.LBB70_149:                             # %cond.end.876
	movq	-368(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -376(%rbp)        # 8-byte Spill
	cqto
	movq	-376(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-360(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB70_157
	jmp	.LBB70_154
.LBB70_150:                             # %cond.false.881
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB70_152
# BB#151:                               # %cond.true.887
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	jmp	.LBB70_153
.LBB70_152:                             # %cond.false.895
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
.LBB70_153:                             # %cond.end.899
	movq	-384(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -392(%rbp)        # 8-byte Spill
	cqto
	movq	-392(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-56(%rbp), %rax
	jl	.LBB70_157
.LBB70_154:                             # %lor.lhs.false.904
	movq	-56(%rbp), %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB70_156
# BB#155:                               # %land.lhs.true.910
	movq	-56(%rbp), %rax
	shlq	$3, %rax
	cmpq	$-32768, %rax           # imm = 0xFFFFFFFFFFFF8000
	jl	.LBB70_157
.LBB70_156:                             # %lor.lhs.false.914
	movl	$32767, %eax            # imm = 0x7FFF
	movl	%eax, %ecx
	movq	-56(%rbp), %rdx
	shlq	$3, %rdx
	cmpq	%rdx, %rcx
	jge	.LBB70_161
.LBB70_157:                             # %cond.true.918
	movq	-56(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB70_159
# BB#158:                               # %cond.true.924
	movq	-56(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -396(%rbp)        # 4-byte Spill
	jmp	.LBB70_160
.LBB70_159:                             # %cond.false.930
	movq	-56(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -396(%rbp)        # 4-byte Spill
.LBB70_160:                             # %cond.end.938
	movl	-396(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -112(%rbp)
	testb	$1, %cl
	jne	.LBB70_405
	jmp	.LBB70_404
.LBB70_161:                             # %cond.false.941
	movq	-56(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB70_163
# BB#162:                               # %cond.true.947
	movq	-56(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -400(%rbp)        # 4-byte Spill
	jmp	.LBB70_164
.LBB70_163:                             # %cond.false.953
	movq	-56(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -400(%rbp)        # 4-byte Spill
.LBB70_164:                             # %cond.end.961
	movl	-400(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -112(%rbp)
	testb	$1, %dl
	jne	.LBB70_405
	jmp	.LBB70_404
.LBB70_165:                             # %cond.false.964
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB70_166
	jmp	.LBB70_245
.LBB70_166:                             # %cond.true.965
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB70_167
	jmp	.LBB70_206
.LBB70_167:                             # %cond.true.966
	movq	-56(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB70_169
# BB#168:                               # %cond.true.973
	xorl	%eax, %eax
	movq	-56(%rbp), %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %eax
	movq	-56(%rbp), %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -404(%rbp)        # 4-byte Spill
	jmp	.LBB70_170
.LBB70_169:                             # %cond.false.991
	movq	-56(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -404(%rbp)        # 4-byte Spill
.LBB70_170:                             # %cond.end.996
	movl	-404(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB70_172
# BB#171:                               # %land.lhs.true.1000
	movq	-56(%rbp), %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jl	.LBB70_198
.LBB70_172:                             # %lor.lhs.false.1004
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB70_173
	jmp	.LBB70_184
.LBB70_173:                             # %cond.true.1005
	movq	-56(%rbp), %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jge	.LBB70_178
# BB#174:                               # %cond.true.1009
	movq	-56(%rbp), %rax
	movl	%eax, %ecx
	movq	-56(%rbp), %rax
	movl	%eax, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	movl	%ecx, -408(%rbp)        # 4-byte Spill
	jge	.LBB70_176
# BB#175:                               # %cond.true.1017
	movq	-56(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	%ecx, -412(%rbp)        # 4-byte Spill
	jmp	.LBB70_177
.LBB70_176:                             # %cond.false.1026
	movq	-56(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	movl	%ecx, -412(%rbp)        # 4-byte Spill
.LBB70_177:                             # %cond.end.1031
	movl	-412(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-408(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB70_198
	jmp	.LBB70_195
.LBB70_178:                             # %cond.false.1036
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB70_179
	jmp	.LBB70_180
.LBB70_179:                             # %cond.true.1037
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB70_198
	jmp	.LBB70_195
.LBB70_180:                             # %cond.false.1038
	movq	-56(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB70_182
# BB#181:                               # %cond.true.1045
	xorl	%eax, %eax
	movq	-56(%rbp), %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %eax
	movq	-56(%rbp), %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -416(%rbp)        # 4-byte Spill
	jmp	.LBB70_183
.LBB70_182:                             # %cond.false.1063
	movq	-56(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -416(%rbp)        # 4-byte Spill
.LBB70_183:                             # %cond.end.1068
	movl	-416(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-56(%rbp), %rsi
	movl	%esi, %ecx
	cmpl	%ecx, %eax
	jl	.LBB70_198
	jmp	.LBB70_195
.LBB70_184:                             # %cond.false.1074
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB70_185
	jmp	.LBB70_186
.LBB70_185:                             # %cond.true.1075
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB70_198
	jmp	.LBB70_195
.LBB70_186:                             # %cond.false.1076
	movq	-56(%rbp), %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jge	.LBB70_191
# BB#187:                               # %cond.true.1080
	movq	-56(%rbp), %rax
	movl	%eax, %ecx
	movq	-56(%rbp), %rax
	movl	%eax, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	movl	%ecx, -420(%rbp)        # 4-byte Spill
	jge	.LBB70_189
# BB#188:                               # %cond.true.1088
	xorl	%eax, %eax
	movq	-56(%rbp), %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %eax
	movq	-56(%rbp), %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -424(%rbp)        # 4-byte Spill
	jmp	.LBB70_190
.LBB70_189:                             # %cond.false.1106
	movq	-56(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -424(%rbp)        # 4-byte Spill
.LBB70_190:                             # %cond.end.1111
	movl	-424(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-420(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB70_198
	jmp	.LBB70_195
.LBB70_191:                             # %cond.false.1116
	movq	-56(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB70_193
# BB#192:                               # %cond.true.1123
	movq	-56(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	%ecx, -428(%rbp)        # 4-byte Spill
	jmp	.LBB70_194
.LBB70_193:                             # %cond.false.1132
	movq	-56(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	movl	%ecx, -428(%rbp)        # 4-byte Spill
.LBB70_194:                             # %cond.end.1137
	movl	-428(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-56(%rbp), %rsi
	movl	%esi, %ecx
	cmpl	%ecx, %eax
	jl	.LBB70_198
.LBB70_195:                             # %lor.lhs.false.1143
	movq	-56(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB70_197
# BB#196:                               # %land.lhs.true.1150
	movq	-56(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	cmpl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	jl	.LBB70_198
.LBB70_197:                             # %lor.lhs.false.1155
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movq	-56(%rbp), %rcx
	movl	%ecx, %edx
	shll	$3, %edx
	cmpl	%edx, %eax
	jge	.LBB70_202
.LBB70_198:                             # %cond.true.1160
	movq	-56(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB70_200
# BB#199:                               # %cond.true.1165
	movq	-56(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	movl	%ecx, -432(%rbp)        # 4-byte Spill
	jmp	.LBB70_201
.LBB70_200:                             # %cond.false.1168
	movq	-56(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -432(%rbp)        # 4-byte Spill
.LBB70_201:                             # %cond.end.1173
	movl	-432(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -112(%rbp)
	testb	$1, %cl
	jne	.LBB70_405
	jmp	.LBB70_404
.LBB70_202:                             # %cond.false.1176
	movq	-56(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB70_204
# BB#203:                               # %cond.true.1181
	movq	-56(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	movl	%ecx, -436(%rbp)        # 4-byte Spill
	jmp	.LBB70_205
.LBB70_204:                             # %cond.false.1184
	movq	-56(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -436(%rbp)        # 4-byte Spill
.LBB70_205:                             # %cond.end.1189
	movl	-436(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -112(%rbp)
	testb	$1, %dl
	jne	.LBB70_405
	jmp	.LBB70_404
.LBB70_206:                             # %cond.false.1192
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB70_208
# BB#207:                               # %cond.true.1198
	xorl	%eax, %eax
	movq	-56(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-56(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -448(%rbp)        # 8-byte Spill
	jmp	.LBB70_209
.LBB70_208:                             # %cond.false.1215
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
.LBB70_209:                             # %cond.end.1219
	movq	-448(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB70_211
# BB#210:                               # %land.lhs.true.1223
	cmpq	$0, -56(%rbp)
	jl	.LBB70_237
.LBB70_211:                             # %lor.lhs.false.1226
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB70_212
	jmp	.LBB70_223
.LBB70_212:                             # %cond.true.1227
	cmpq	$0, -56(%rbp)
	jge	.LBB70_217
# BB#213:                               # %cond.true.1230
	movq	-56(%rbp), %rax
	movq	-56(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -456(%rbp)        # 8-byte Spill
	jge	.LBB70_215
# BB#214:                               # %cond.true.1236
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -464(%rbp)        # 8-byte Spill
	jmp	.LBB70_216
.LBB70_215:                             # %cond.false.1244
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -464(%rbp)        # 8-byte Spill
.LBB70_216:                             # %cond.end.1248
	movq	-464(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -472(%rbp)        # 8-byte Spill
	cqto
	movq	-472(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-456(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB70_237
	jmp	.LBB70_234
.LBB70_217:                             # %cond.false.1253
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB70_218
	jmp	.LBB70_219
.LBB70_218:                             # %cond.true.1254
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB70_237
	jmp	.LBB70_234
.LBB70_219:                             # %cond.false.1255
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB70_221
# BB#220:                               # %cond.true.1261
	xorl	%eax, %eax
	movq	-56(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-56(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -480(%rbp)        # 8-byte Spill
	jmp	.LBB70_222
.LBB70_221:                             # %cond.false.1278
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -480(%rbp)        # 8-byte Spill
.LBB70_222:                             # %cond.end.1282
	movq	-480(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -488(%rbp)        # 8-byte Spill
	cqto
	movq	-488(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-56(%rbp), %rax
	jl	.LBB70_237
	jmp	.LBB70_234
.LBB70_223:                             # %cond.false.1287
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB70_224
	jmp	.LBB70_225
.LBB70_224:                             # %cond.true.1288
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB70_237
	jmp	.LBB70_234
.LBB70_225:                             # %cond.false.1289
	cmpq	$0, -56(%rbp)
	jge	.LBB70_230
# BB#226:                               # %cond.true.1292
	movq	-56(%rbp), %rax
	movq	-56(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -496(%rbp)        # 8-byte Spill
	jge	.LBB70_228
# BB#227:                               # %cond.true.1298
	xorl	%eax, %eax
	movq	-56(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-56(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -504(%rbp)        # 8-byte Spill
	jmp	.LBB70_229
.LBB70_228:                             # %cond.false.1315
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -504(%rbp)        # 8-byte Spill
.LBB70_229:                             # %cond.end.1319
	movq	-504(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -512(%rbp)        # 8-byte Spill
	cqto
	movq	-512(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-496(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB70_237
	jmp	.LBB70_234
.LBB70_230:                             # %cond.false.1324
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB70_232
# BB#231:                               # %cond.true.1330
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -520(%rbp)        # 8-byte Spill
	jmp	.LBB70_233
.LBB70_232:                             # %cond.false.1338
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -520(%rbp)        # 8-byte Spill
.LBB70_233:                             # %cond.end.1342
	movq	-520(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -528(%rbp)        # 8-byte Spill
	cqto
	movq	-528(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-56(%rbp), %rax
	jl	.LBB70_237
.LBB70_234:                             # %lor.lhs.false.1347
	movq	-56(%rbp), %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB70_236
# BB#235:                               # %land.lhs.true.1353
	movq	-56(%rbp), %rax
	shlq	$3, %rax
	cmpq	$-2147483648, %rax      # imm = 0xFFFFFFFF80000000
	jl	.LBB70_237
.LBB70_236:                             # %lor.lhs.false.1357
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movl	%eax, %ecx
	movq	-56(%rbp), %rdx
	shlq	$3, %rdx
	cmpq	%rdx, %rcx
	jge	.LBB70_241
.LBB70_237:                             # %cond.true.1361
	movq	-56(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB70_239
# BB#238:                               # %cond.true.1366
	movq	-56(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	movl	%ecx, -532(%rbp)        # 4-byte Spill
	jmp	.LBB70_240
.LBB70_239:                             # %cond.false.1369
	movq	-56(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -532(%rbp)        # 4-byte Spill
.LBB70_240:                             # %cond.end.1374
	movl	-532(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -112(%rbp)
	testb	$1, %cl
	jne	.LBB70_405
	jmp	.LBB70_404
.LBB70_241:                             # %cond.false.1377
	movq	-56(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB70_243
# BB#242:                               # %cond.true.1382
	movq	-56(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	movl	%ecx, -536(%rbp)        # 4-byte Spill
	jmp	.LBB70_244
.LBB70_243:                             # %cond.false.1385
	movq	-56(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -536(%rbp)        # 4-byte Spill
.LBB70_244:                             # %cond.end.1390
	movl	-536(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -112(%rbp)
	testb	$1, %dl
	jne	.LBB70_405
	jmp	.LBB70_404
.LBB70_245:                             # %cond.false.1393
	movb	$1, %al
	testb	$1, %al
	jne	.LBB70_246
	jmp	.LBB70_325
.LBB70_246:                             # %cond.true.1394
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB70_247
	jmp	.LBB70_286
.LBB70_247:                             # %cond.true.1395
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB70_249
# BB#248:                               # %cond.true.1401
	xorl	%eax, %eax
	movq	-56(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-56(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -544(%rbp)        # 8-byte Spill
	jmp	.LBB70_250
.LBB70_249:                             # %cond.false.1418
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -544(%rbp)        # 8-byte Spill
.LBB70_250:                             # %cond.end.1422
	movq	-544(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB70_252
# BB#251:                               # %land.lhs.true.1426
	cmpq	$0, -56(%rbp)
	jl	.LBB70_278
.LBB70_252:                             # %lor.lhs.false.1429
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB70_253
	jmp	.LBB70_264
.LBB70_253:                             # %cond.true.1430
	cmpq	$0, -56(%rbp)
	jge	.LBB70_258
# BB#254:                               # %cond.true.1433
	movq	-56(%rbp), %rax
	movq	-56(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -552(%rbp)        # 8-byte Spill
	jge	.LBB70_256
# BB#255:                               # %cond.true.1439
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -560(%rbp)        # 8-byte Spill
	jmp	.LBB70_257
.LBB70_256:                             # %cond.false.1447
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -560(%rbp)        # 8-byte Spill
.LBB70_257:                             # %cond.end.1451
	movq	-560(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -568(%rbp)        # 8-byte Spill
	cqto
	movq	-568(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-552(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB70_278
	jmp	.LBB70_275
.LBB70_258:                             # %cond.false.1456
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB70_259
	jmp	.LBB70_260
.LBB70_259:                             # %cond.true.1457
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB70_278
	jmp	.LBB70_275
.LBB70_260:                             # %cond.false.1458
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB70_262
# BB#261:                               # %cond.true.1464
	xorl	%eax, %eax
	movq	-56(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-56(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -576(%rbp)        # 8-byte Spill
	jmp	.LBB70_263
.LBB70_262:                             # %cond.false.1481
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -576(%rbp)        # 8-byte Spill
.LBB70_263:                             # %cond.end.1485
	movq	-576(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -584(%rbp)        # 8-byte Spill
	cqto
	movq	-584(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-56(%rbp), %rax
	jl	.LBB70_278
	jmp	.LBB70_275
.LBB70_264:                             # %cond.false.1490
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB70_265
	jmp	.LBB70_266
.LBB70_265:                             # %cond.true.1491
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB70_278
	jmp	.LBB70_275
.LBB70_266:                             # %cond.false.1492
	cmpq	$0, -56(%rbp)
	jge	.LBB70_271
# BB#267:                               # %cond.true.1495
	movq	-56(%rbp), %rax
	movq	-56(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -592(%rbp)        # 8-byte Spill
	jge	.LBB70_269
# BB#268:                               # %cond.true.1501
	xorl	%eax, %eax
	movq	-56(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-56(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -600(%rbp)        # 8-byte Spill
	jmp	.LBB70_270
.LBB70_269:                             # %cond.false.1518
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -600(%rbp)        # 8-byte Spill
.LBB70_270:                             # %cond.end.1522
	movq	-600(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -608(%rbp)        # 8-byte Spill
	cqto
	movq	-608(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-592(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB70_278
	jmp	.LBB70_275
.LBB70_271:                             # %cond.false.1527
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB70_273
# BB#272:                               # %cond.true.1533
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -616(%rbp)        # 8-byte Spill
	jmp	.LBB70_274
.LBB70_273:                             # %cond.false.1541
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -616(%rbp)        # 8-byte Spill
.LBB70_274:                             # %cond.end.1545
	movq	-616(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -624(%rbp)        # 8-byte Spill
	cqto
	movq	-624(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-56(%rbp), %rax
	jl	.LBB70_278
.LBB70_275:                             # %lor.lhs.false.1550
	movq	-56(%rbp), %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB70_277
# BB#276:                               # %land.lhs.true.1556
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-56(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	jl	.LBB70_278
.LBB70_277:                             # %lor.lhs.false.1560
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-56(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rcx, %rax
	jge	.LBB70_282
.LBB70_278:                             # %cond.true.1564
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-56(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB70_280
# BB#279:                               # %cond.true.1568
	movq	-56(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, -632(%rbp)        # 8-byte Spill
	jmp	.LBB70_281
.LBB70_280:                             # %cond.false.1570
	movq	-56(%rbp), %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -632(%rbp)        # 8-byte Spill
.LBB70_281:                             # %cond.end.1574
	movq	-632(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -112(%rbp)
	testb	$1, %cl
	jne	.LBB70_405
	jmp	.LBB70_404
.LBB70_282:                             # %cond.false.1576
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-56(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB70_284
# BB#283:                               # %cond.true.1580
	movq	-56(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, -640(%rbp)        # 8-byte Spill
	jmp	.LBB70_285
.LBB70_284:                             # %cond.false.1582
	movq	-56(%rbp), %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -640(%rbp)        # 8-byte Spill
.LBB70_285:                             # %cond.end.1586
	movq	-640(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -112(%rbp)
	testb	$1, %dl
	jne	.LBB70_405
	jmp	.LBB70_404
.LBB70_286:                             # %cond.false.1588
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB70_288
# BB#287:                               # %cond.true.1594
	xorl	%eax, %eax
	movq	-56(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-56(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -648(%rbp)        # 8-byte Spill
	jmp	.LBB70_289
.LBB70_288:                             # %cond.false.1611
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -648(%rbp)        # 8-byte Spill
.LBB70_289:                             # %cond.end.1615
	movq	-648(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB70_291
# BB#290:                               # %land.lhs.true.1619
	cmpq	$0, -56(%rbp)
	jl	.LBB70_317
.LBB70_291:                             # %lor.lhs.false.1622
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB70_292
	jmp	.LBB70_303
.LBB70_292:                             # %cond.true.1623
	cmpq	$0, -56(%rbp)
	jge	.LBB70_297
# BB#293:                               # %cond.true.1626
	movq	-56(%rbp), %rax
	movq	-56(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -656(%rbp)        # 8-byte Spill
	jge	.LBB70_295
# BB#294:                               # %cond.true.1632
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -664(%rbp)        # 8-byte Spill
	jmp	.LBB70_296
.LBB70_295:                             # %cond.false.1640
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -664(%rbp)        # 8-byte Spill
.LBB70_296:                             # %cond.end.1644
	movq	-664(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -672(%rbp)        # 8-byte Spill
	cqto
	movq	-672(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-656(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB70_317
	jmp	.LBB70_314
.LBB70_297:                             # %cond.false.1649
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB70_298
	jmp	.LBB70_299
.LBB70_298:                             # %cond.true.1650
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB70_317
	jmp	.LBB70_314
.LBB70_299:                             # %cond.false.1651
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB70_301
# BB#300:                               # %cond.true.1657
	xorl	%eax, %eax
	movq	-56(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-56(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -680(%rbp)        # 8-byte Spill
	jmp	.LBB70_302
.LBB70_301:                             # %cond.false.1674
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -680(%rbp)        # 8-byte Spill
.LBB70_302:                             # %cond.end.1678
	movq	-680(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -688(%rbp)        # 8-byte Spill
	cqto
	movq	-688(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-56(%rbp), %rax
	jl	.LBB70_317
	jmp	.LBB70_314
.LBB70_303:                             # %cond.false.1683
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB70_304
	jmp	.LBB70_305
.LBB70_304:                             # %cond.true.1684
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB70_317
	jmp	.LBB70_314
.LBB70_305:                             # %cond.false.1685
	cmpq	$0, -56(%rbp)
	jge	.LBB70_310
# BB#306:                               # %cond.true.1688
	movq	-56(%rbp), %rax
	movq	-56(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -696(%rbp)        # 8-byte Spill
	jge	.LBB70_308
# BB#307:                               # %cond.true.1694
	xorl	%eax, %eax
	movq	-56(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-56(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -704(%rbp)        # 8-byte Spill
	jmp	.LBB70_309
.LBB70_308:                             # %cond.false.1711
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -704(%rbp)        # 8-byte Spill
.LBB70_309:                             # %cond.end.1715
	movq	-704(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -712(%rbp)        # 8-byte Spill
	cqto
	movq	-712(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-696(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB70_317
	jmp	.LBB70_314
.LBB70_310:                             # %cond.false.1720
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB70_312
# BB#311:                               # %cond.true.1726
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -720(%rbp)        # 8-byte Spill
	jmp	.LBB70_313
.LBB70_312:                             # %cond.false.1734
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -720(%rbp)        # 8-byte Spill
.LBB70_313:                             # %cond.end.1738
	movq	-720(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -728(%rbp)        # 8-byte Spill
	cqto
	movq	-728(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-56(%rbp), %rax
	jl	.LBB70_317
.LBB70_314:                             # %lor.lhs.false.1743
	movq	-56(%rbp), %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB70_316
# BB#315:                               # %land.lhs.true.1749
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-56(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	jl	.LBB70_317
.LBB70_316:                             # %lor.lhs.false.1753
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-56(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rcx, %rax
	jge	.LBB70_321
.LBB70_317:                             # %cond.true.1757
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-56(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB70_319
# BB#318:                               # %cond.true.1761
	movq	-56(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, -736(%rbp)        # 8-byte Spill
	jmp	.LBB70_320
.LBB70_319:                             # %cond.false.1763
	movq	-56(%rbp), %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -736(%rbp)        # 8-byte Spill
.LBB70_320:                             # %cond.end.1767
	movq	-736(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -112(%rbp)
	testb	$1, %cl
	jne	.LBB70_405
	jmp	.LBB70_404
.LBB70_321:                             # %cond.false.1769
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-56(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB70_323
# BB#322:                               # %cond.true.1773
	movq	-56(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, -744(%rbp)        # 8-byte Spill
	jmp	.LBB70_324
.LBB70_323:                             # %cond.false.1775
	movq	-56(%rbp), %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -744(%rbp)        # 8-byte Spill
.LBB70_324:                             # %cond.end.1779
	movq	-744(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -112(%rbp)
	testb	$1, %dl
	jne	.LBB70_405
	jmp	.LBB70_404
.LBB70_325:                             # %cond.false.1781
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB70_326
	jmp	.LBB70_365
.LBB70_326:                             # %cond.true.1782
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB70_328
# BB#327:                               # %cond.true.1788
	xorl	%eax, %eax
	movq	-56(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-56(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -752(%rbp)        # 8-byte Spill
	jmp	.LBB70_329
.LBB70_328:                             # %cond.false.1805
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -752(%rbp)        # 8-byte Spill
.LBB70_329:                             # %cond.end.1809
	movq	-752(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB70_331
# BB#330:                               # %land.lhs.true.1813
	cmpq	$0, -56(%rbp)
	jl	.LBB70_357
.LBB70_331:                             # %lor.lhs.false.1816
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB70_332
	jmp	.LBB70_343
.LBB70_332:                             # %cond.true.1817
	cmpq	$0, -56(%rbp)
	jge	.LBB70_337
# BB#333:                               # %cond.true.1820
	movq	-56(%rbp), %rax
	movq	-56(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -760(%rbp)        # 8-byte Spill
	jge	.LBB70_335
# BB#334:                               # %cond.true.1826
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -768(%rbp)        # 8-byte Spill
	jmp	.LBB70_336
.LBB70_335:                             # %cond.false.1834
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -768(%rbp)        # 8-byte Spill
.LBB70_336:                             # %cond.end.1838
	movq	-768(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -776(%rbp)        # 8-byte Spill
	cqto
	movq	-776(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-760(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB70_357
	jmp	.LBB70_354
.LBB70_337:                             # %cond.false.1843
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB70_338
	jmp	.LBB70_339
.LBB70_338:                             # %cond.true.1844
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB70_357
	jmp	.LBB70_354
.LBB70_339:                             # %cond.false.1845
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB70_341
# BB#340:                               # %cond.true.1851
	xorl	%eax, %eax
	movq	-56(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-56(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -784(%rbp)        # 8-byte Spill
	jmp	.LBB70_342
.LBB70_341:                             # %cond.false.1868
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -784(%rbp)        # 8-byte Spill
.LBB70_342:                             # %cond.end.1872
	movq	-784(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -792(%rbp)        # 8-byte Spill
	cqto
	movq	-792(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-56(%rbp), %rax
	jl	.LBB70_357
	jmp	.LBB70_354
.LBB70_343:                             # %cond.false.1877
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB70_344
	jmp	.LBB70_345
.LBB70_344:                             # %cond.true.1878
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB70_357
	jmp	.LBB70_354
.LBB70_345:                             # %cond.false.1879
	cmpq	$0, -56(%rbp)
	jge	.LBB70_350
# BB#346:                               # %cond.true.1882
	movq	-56(%rbp), %rax
	movq	-56(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -800(%rbp)        # 8-byte Spill
	jge	.LBB70_348
# BB#347:                               # %cond.true.1888
	xorl	%eax, %eax
	movq	-56(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-56(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -808(%rbp)        # 8-byte Spill
	jmp	.LBB70_349
.LBB70_348:                             # %cond.false.1905
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -808(%rbp)        # 8-byte Spill
.LBB70_349:                             # %cond.end.1909
	movq	-808(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -816(%rbp)        # 8-byte Spill
	cqto
	movq	-816(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-800(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB70_357
	jmp	.LBB70_354
.LBB70_350:                             # %cond.false.1914
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB70_352
# BB#351:                               # %cond.true.1920
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -824(%rbp)        # 8-byte Spill
	jmp	.LBB70_353
.LBB70_352:                             # %cond.false.1928
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -824(%rbp)        # 8-byte Spill
.LBB70_353:                             # %cond.end.1932
	movq	-824(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -832(%rbp)        # 8-byte Spill
	cqto
	movq	-832(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-56(%rbp), %rax
	jl	.LBB70_357
.LBB70_354:                             # %lor.lhs.false.1937
	movq	-56(%rbp), %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB70_356
# BB#355:                               # %land.lhs.true.1943
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-56(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	jl	.LBB70_357
.LBB70_356:                             # %lor.lhs.false.1947
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-56(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rcx, %rax
	jge	.LBB70_361
.LBB70_357:                             # %cond.true.1951
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-56(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB70_359
# BB#358:                               # %cond.true.1955
	movq	-56(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, -840(%rbp)        # 8-byte Spill
	jmp	.LBB70_360
.LBB70_359:                             # %cond.false.1957
	movq	-56(%rbp), %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -840(%rbp)        # 8-byte Spill
.LBB70_360:                             # %cond.end.1961
	movq	-840(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -112(%rbp)
	testb	$1, %cl
	jne	.LBB70_405
	jmp	.LBB70_404
.LBB70_361:                             # %cond.false.1963
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-56(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB70_363
# BB#362:                               # %cond.true.1967
	movq	-56(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, -848(%rbp)        # 8-byte Spill
	jmp	.LBB70_364
.LBB70_363:                             # %cond.false.1969
	movq	-56(%rbp), %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -848(%rbp)        # 8-byte Spill
.LBB70_364:                             # %cond.end.1973
	movq	-848(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -112(%rbp)
	testb	$1, %dl
	jne	.LBB70_405
	jmp	.LBB70_404
.LBB70_365:                             # %cond.false.1975
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB70_367
# BB#366:                               # %cond.true.1981
	xorl	%eax, %eax
	movq	-56(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-56(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -856(%rbp)        # 8-byte Spill
	jmp	.LBB70_368
.LBB70_367:                             # %cond.false.1998
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -856(%rbp)        # 8-byte Spill
.LBB70_368:                             # %cond.end.2002
	movq	-856(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB70_370
# BB#369:                               # %land.lhs.true.2006
	cmpq	$0, -56(%rbp)
	jl	.LBB70_396
.LBB70_370:                             # %lor.lhs.false.2009
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB70_371
	jmp	.LBB70_382
.LBB70_371:                             # %cond.true.2010
	cmpq	$0, -56(%rbp)
	jge	.LBB70_376
# BB#372:                               # %cond.true.2013
	movq	-56(%rbp), %rax
	movq	-56(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -864(%rbp)        # 8-byte Spill
	jge	.LBB70_374
# BB#373:                               # %cond.true.2019
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -872(%rbp)        # 8-byte Spill
	jmp	.LBB70_375
.LBB70_374:                             # %cond.false.2027
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -872(%rbp)        # 8-byte Spill
.LBB70_375:                             # %cond.end.2031
	movq	-872(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -880(%rbp)        # 8-byte Spill
	cqto
	movq	-880(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-864(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB70_396
	jmp	.LBB70_393
.LBB70_376:                             # %cond.false.2036
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB70_377
	jmp	.LBB70_378
.LBB70_377:                             # %cond.true.2037
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB70_396
	jmp	.LBB70_393
.LBB70_378:                             # %cond.false.2038
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB70_380
# BB#379:                               # %cond.true.2044
	xorl	%eax, %eax
	movq	-56(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-56(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -888(%rbp)        # 8-byte Spill
	jmp	.LBB70_381
.LBB70_380:                             # %cond.false.2061
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -888(%rbp)        # 8-byte Spill
.LBB70_381:                             # %cond.end.2065
	movq	-888(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -896(%rbp)        # 8-byte Spill
	cqto
	movq	-896(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-56(%rbp), %rax
	jl	.LBB70_396
	jmp	.LBB70_393
.LBB70_382:                             # %cond.false.2070
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB70_383
	jmp	.LBB70_384
.LBB70_383:                             # %cond.true.2071
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB70_396
	jmp	.LBB70_393
.LBB70_384:                             # %cond.false.2072
	cmpq	$0, -56(%rbp)
	jge	.LBB70_389
# BB#385:                               # %cond.true.2075
	movq	-56(%rbp), %rax
	movq	-56(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -904(%rbp)        # 8-byte Spill
	jge	.LBB70_387
# BB#386:                               # %cond.true.2081
	xorl	%eax, %eax
	movq	-56(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-56(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -912(%rbp)        # 8-byte Spill
	jmp	.LBB70_388
.LBB70_387:                             # %cond.false.2098
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -912(%rbp)        # 8-byte Spill
.LBB70_388:                             # %cond.end.2102
	movq	-912(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -920(%rbp)        # 8-byte Spill
	cqto
	movq	-920(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-904(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB70_396
	jmp	.LBB70_393
.LBB70_389:                             # %cond.false.2107
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB70_391
# BB#390:                               # %cond.true.2113
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -928(%rbp)        # 8-byte Spill
	jmp	.LBB70_392
.LBB70_391:                             # %cond.false.2121
	movq	-56(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -928(%rbp)        # 8-byte Spill
.LBB70_392:                             # %cond.end.2125
	movq	-928(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -936(%rbp)        # 8-byte Spill
	cqto
	movq	-936(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-56(%rbp), %rax
	jl	.LBB70_396
.LBB70_393:                             # %lor.lhs.false.2130
	movq	-56(%rbp), %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB70_395
# BB#394:                               # %land.lhs.true.2136
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-56(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	jl	.LBB70_396
.LBB70_395:                             # %lor.lhs.false.2140
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-56(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rcx, %rax
	jge	.LBB70_400
.LBB70_396:                             # %cond.true.2144
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-56(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB70_398
# BB#397:                               # %cond.true.2148
	movq	-56(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, -944(%rbp)        # 8-byte Spill
	jmp	.LBB70_399
.LBB70_398:                             # %cond.false.2150
	movq	-56(%rbp), %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -944(%rbp)        # 8-byte Spill
.LBB70_399:                             # %cond.end.2154
	movq	-944(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -112(%rbp)
	testb	$1, %cl
	jne	.LBB70_405
	jmp	.LBB70_404
.LBB70_400:                             # %cond.false.2156
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-56(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB70_402
# BB#401:                               # %cond.true.2160
	movq	-56(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, -952(%rbp)        # 8-byte Spill
	jmp	.LBB70_403
.LBB70_402:                             # %cond.false.2162
	movq	-56(%rbp), %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -952(%rbp)        # 8-byte Spill
.LBB70_403:                             # %cond.end.2166
	movq	-952(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -112(%rbp)
	testb	$1, %dl
	jne	.LBB70_405
.LBB70_404:                             # %lor.lhs.false.2168
	movq	$-1, %rax
	cmpq	-112(%rbp), %rax
	jae	.LBB70_406
.LBB70_405:                             # %if.then.2171
	movq	$-1, %rdi
	callq	memory_full
.LBB70_406:                             # %if.else
	movq	-112(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jg	.LBB70_408
# BB#407:                               # %if.then.2174
	movq	-112(%rbp), %rax
	movq	-88(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -88(%rbp)
	movq	-112(%rbp), %rax
	addq	$15, %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -72(%rbp)
	jmp	.LBB70_409
.LBB70_408:                             # %if.else.2176
	movq	-112(%rbp), %rdi
	callq	xmalloc
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	make_save_memory
	movabsq	$free_save_value, %rdi
	movq	%rax, -120(%rbp)
	movb	$1, -97(%rbp)
	movq	-120(%rbp), %rsi
	callq	record_unwind_protect
.LBB70_409:                             # %if.end.2179
	jmp	.LBB70_410
.LBB70_410:                             # %if.end.2180
	jmp	.LBB70_411
.LBB70_411:                             # %do.end
	movq	-48(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rcx
	callq	mapcar1
	movq	-48(%rbp), %rcx
	subq	$1, %rcx
	movq	%rcx, -64(%rbp)
.LBB70_412:                             # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -64(%rbp)
	jle	.LBB70_415
# BB#413:                               # %for.body
                                        #   in Loop: Header=BB70_412 Depth=1
	movq	-64(%rbp), %rax
	movq	-72(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	-64(%rbp), %rcx
	addq	-64(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
# BB#414:                               # %for.inc
                                        #   in Loop: Header=BB70_412 Depth=1
	movq	-64(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB70_412
.LBB70_415:                             # %for.end
	movq	$1, -64(%rbp)
.LBB70_416:                             # %for.cond.2186
                                        # =>This Inner Loop Header: Depth=1
	movq	-64(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jge	.LBB70_419
# BB#417:                               # %for.body.2189
                                        #   in Loop: Header=BB70_416 Depth=1
	movq	-32(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
# BB#418:                               # %for.inc.2191
                                        #   in Loop: Header=BB70_416 Depth=1
	movq	-64(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB70_416
.LBB70_419:                             # %for.end.2193
	movq	-56(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	Fconcat
	movq	%rax, -80(%rbp)
# BB#420:                               # %do.body.2195
	testb	$1, -97(%rbp)
	je	.LBB70_422
# BB#421:                               # %if.then.2196
	xorl	%edi, %edi
	movb	$0, -97(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-960(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -968(%rbp)        # 8-byte Spill
.LBB70_422:                             # %if.end.2199
	jmp	.LBB70_423
.LBB70_423:                             # %do.end.2200
	movq	-80(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB70_424:                             # %return
	movq	-8(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end70:
	.size	Fmapconcat, .Lfunc_end70-Fmapconcat
	.cfi_endproc

	.align	16, 0x90
	.type	mapcar1,@function
mapcar1:                                # @mapcar1
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp213:
	.cfi_def_cfa_offset 16
.Ltmp214:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp215:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB71_2
# BB#1:                                 # %lor.lhs.false
	movq	-32(%rbp), %rdi
	callq	COMPILEDP
	testb	$1, %al
	jne	.LBB71_2
	jmp	.LBB71_9
.LBB71_2:                               # %if.then
	movq	$0, -56(%rbp)
.LBB71_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-56(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jge	.LBB71_8
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB71_3 Depth=1
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	-56(%rbp), %rsi
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	AREF
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	call1
	movq	%rax, -48(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB71_6
# BB#5:                                 # %if.then.4
                                        #   in Loop: Header=BB71_3 Depth=1
	movq	-48(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
.LBB71_6:                               # %if.end
                                        #   in Loop: Header=BB71_3 Depth=1
	jmp	.LBB71_7
.LBB71_7:                               # %for.inc
                                        #   in Loop: Header=BB71_3 Depth=1
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB71_3
.LBB71_8:                               # %for.end
	jmp	.LBB71_49
.LBB71_9:                               # %if.else
	movq	-32(%rbp), %rdi
	callq	BOOL_VECTOR_P
	testb	$1, %al
	jne	.LBB71_10
	jmp	.LBB71_17
.LBB71_10:                              # %if.then.6
	movq	$0, -56(%rbp)
.LBB71_11:                              # %for.cond.7
                                        # =>This Inner Loop Header: Depth=1
	movq	-56(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jge	.LBB71_16
# BB#12:                                # %for.body.9
                                        #   in Loop: Header=BB71_11 Depth=1
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	-56(%rbp), %rsi
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	bool_vector_ref
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	call1
	movq	%rax, -48(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB71_14
# BB#13:                                # %if.then.13
                                        #   in Loop: Header=BB71_11 Depth=1
	movq	-48(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
.LBB71_14:                              # %if.end.15
                                        #   in Loop: Header=BB71_11 Depth=1
	jmp	.LBB71_15
.LBB71_15:                              # %for.inc.16
                                        #   in Loop: Header=BB71_11 Depth=1
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB71_11
.LBB71_16:                              # %for.end.18
	jmp	.LBB71_48
.LBB71_17:                              # %if.else.19
	movq	-32(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB71_18
	jmp	.LBB71_38
.LBB71_18:                              # %if.then.21
	movq	$0, -56(%rbp)
	movq	$0, -64(%rbp)
.LBB71_19:                              # %for.cond.22
                                        # =>This Inner Loop Header: Depth=1
	movq	-56(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jge	.LBB71_37
# BB#20:                                # %for.body.24
                                        #   in Loop: Header=BB71_19 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, -80(%rbp)
# BB#21:                                # %do.body
                                        #   in Loop: Header=BB71_19 Depth=1
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -56(%rbp)
	movq	-32(%rbp), %rdi
	callq	STRING_MULTIBYTE
	testb	$1, %al
	jne	.LBB71_22
	jmp	.LBB71_32
.LBB71_22:                              # %if.then.27
                                        #   in Loop: Header=BB71_19 Depth=1
	movq	-64(%rbp), %rax
	movq	-32(%rbp), %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	SDATA
	movq	-120(%rbp), %rdi        # 8-byte Reload
	addq	%rdi, %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB71_24
# BB#23:                                # %cond.true
                                        #   in Loop: Header=BB71_19 Depth=1
	movl	$1, -92(%rbp)
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -124(%rbp)        # 4-byte Spill
	jmp	.LBB71_31
.LBB71_24:                              # %cond.false
                                        #   in Loop: Header=BB71_19 Depth=1
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB71_26
# BB#25:                                # %cond.true.38
                                        #   in Loop: Header=BB71_19 Depth=1
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
	movl	$2, -92(%rbp)
	movq	-88(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$31, %esi
	shll	$6, %esi
	movq	-88(%rbp), %rdx
	movzbl	1(%rdx), %edi
	andl	$63, %edi
	orl	%edi, %esi
	movq	-88(%rbp), %rdx
	movzbl	(%rdx), %edi
	cmpl	$194, %edi
	cmovll	%ecx, %eax
	addl	%eax, %esi
	movl	%esi, -128(%rbp)        # 4-byte Spill
	jmp	.LBB71_30
.LBB71_26:                              # %cond.false.49
                                        #   in Loop: Header=BB71_19 Depth=1
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB71_28
# BB#27:                                # %cond.true.54
                                        #   in Loop: Header=BB71_19 Depth=1
	movl	$3, -92(%rbp)
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$15, %ecx
	shll	$12, %ecx
	movq	-88(%rbp), %rax
	movzbl	1(%rax), %edx
	andl	$63, %edx
	shll	$6, %edx
	orl	%edx, %ecx
	movq	-88(%rbp), %rax
	movzbl	2(%rax), %edx
	andl	$63, %edx
	orl	%edx, %ecx
	movl	%ecx, -132(%rbp)        # 4-byte Spill
	jmp	.LBB71_29
.LBB71_28:                              # %cond.false.68
                                        #   in Loop: Header=BB71_19 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-92(%rbp), %rdx
	movq	-88(%rbp), %rdi
	callq	string_char
	movl	%eax, -132(%rbp)        # 4-byte Spill
.LBB71_29:                              # %cond.end
                                        #   in Loop: Header=BB71_19 Depth=1
	movl	-132(%rbp), %eax        # 4-byte Reload
	movl	%eax, -128(%rbp)        # 4-byte Spill
.LBB71_30:                              # %cond.end.71
                                        #   in Loop: Header=BB71_19 Depth=1
	movl	-128(%rbp), %eax        # 4-byte Reload
	movl	%eax, -124(%rbp)        # 4-byte Spill
.LBB71_31:                              # %cond.end.73
                                        #   in Loop: Header=BB71_19 Depth=1
	movl	-124(%rbp), %eax        # 4-byte Reload
	movl	%eax, -68(%rbp)
	movslq	-92(%rbp), %rcx
	addq	-64(%rbp), %rcx
	movq	%rcx, -64(%rbp)
	jmp	.LBB71_33
.LBB71_32:                              # %if.else.77
                                        #   in Loop: Header=BB71_19 Depth=1
	movq	-32(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	SREF
	movzbl	%al, %ecx
	movl	%ecx, -68(%rbp)
	movq	-64(%rbp), %rsi
	addq	$1, %rsi
	movq	%rsi, -64(%rbp)
.LBB71_33:                              # %if.end.81
                                        #   in Loop: Header=BB71_19 Depth=1
	jmp	.LBB71_34
.LBB71_34:                              # %do.end
                                        #   in Loop: Header=BB71_19 Depth=1
	movslq	-68(%rbp), %rdi
	callq	make_natnum
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	call1
	movq	%rax, -48(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB71_36
# BB#35:                                # %if.then.86
                                        #   in Loop: Header=BB71_19 Depth=1
	movq	-48(%rbp), %rax
	movq	-80(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
.LBB71_36:                              # %if.end.88
                                        #   in Loop: Header=BB71_19 Depth=1
	jmp	.LBB71_19
.LBB71_37:                              # %for.end.89
	jmp	.LBB71_47
.LBB71_38:                              # %if.else.90
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	$0, -56(%rbp)
.LBB71_39:                              # %for.cond.91
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-56(%rbp), %rdx
	cmpq	-8(%rbp), %rdx
	movb	%cl, -133(%rbp)         # 1-byte Spill
	jge	.LBB71_41
# BB#40:                                # %land.rhs
                                        #   in Loop: Header=BB71_39 Depth=1
	movq	-40(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	sete	%dl
	movb	%dl, -133(%rbp)         # 1-byte Spill
.LBB71_41:                              # %land.end
                                        #   in Loop: Header=BB71_39 Depth=1
	movb	-133(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB71_42
	jmp	.LBB71_46
.LBB71_42:                              # %for.body.98
                                        #   in Loop: Header=BB71_39 Depth=1
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rsi
	callq	call1
	movq	%rax, -48(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB71_44
# BB#43:                                # %if.then.101
                                        #   in Loop: Header=BB71_39 Depth=1
	movq	-48(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
.LBB71_44:                              # %if.end.103
                                        #   in Loop: Header=BB71_39 Depth=1
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
# BB#45:                                # %for.inc.105
                                        #   in Loop: Header=BB71_39 Depth=1
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB71_39
.LBB71_46:                              # %for.end.107
	jmp	.LBB71_47
.LBB71_47:                              # %if.end.108
	jmp	.LBB71_48
.LBB71_48:                              # %if.end.109
	jmp	.LBB71_49
.LBB71_49:                              # %if.end.110
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end71:
	.size	mapcar1, .Lfunc_end71-mapcar1
	.cfi_endproc

	.globl	Fmapcar
	.align	16, 0x90
	.type	Fmapcar,@function
Fmapcar:                                # @Fmapcar
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp216:
	.cfi_def_cfa_offset 16
.Ltmp217:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp218:
	.cfi_def_cfa_register %rbp
	subq	$944, %rsp              # imm = 0x3B0
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$16384, -56(%rbp)       # imm = 0x4000
	callq	SPECPDL_INDEX
	movq	%rax, -64(%rbp)
	movb	$0, -65(%rbp)
	movq	-16(%rbp), %rdi
	callq	Flength
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	CHAR_TABLE_P
	testb	$1, %al
	jne	.LBB72_1
	jmp	.LBB72_2
.LBB72_1:                               # %if.then
	movl	$626, %edi              # imm = 0x272
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -96(%rbp)         # 8-byte Spill
.LBB72_2:                               # %if.end
	movq	-24(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -32(%rbp)
# BB#3:                                 # %do.body
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB72_4
	jmp	.LBB72_83
.LBB72_4:                               # %cond.true
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB72_5
	jmp	.LBB72_44
.LBB72_5:                               # %cond.true.4
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB72_7
# BB#6:                                 # %cond.true.7
	xorl	%eax, %eax
	movq	-32(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movq	-32(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jmp	.LBB72_8
.LBB72_7:                               # %cond.false
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -100(%rbp)        # 4-byte Spill
.LBB72_8:                               # %cond.end
	movl	-100(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB72_10
# BB#9:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jl	.LBB72_36
.LBB72_10:                              # %lor.lhs.false
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB72_11
	jmp	.LBB72_22
.LBB72_11:                              # %cond.true.36
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jge	.LBB72_16
# BB#12:                                # %cond.true.41
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -104(%rbp)        # 4-byte Spill
	jge	.LBB72_14
# BB#13:                                # %cond.true.51
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -108(%rbp)        # 4-byte Spill
	jmp	.LBB72_15
.LBB72_14:                              # %cond.false.61
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -108(%rbp)        # 4-byte Spill
.LBB72_15:                              # %cond.end.67
	movl	-108(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-104(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB72_36
	jmp	.LBB72_33
.LBB72_16:                              # %cond.false.71
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB72_17
	jmp	.LBB72_18
.LBB72_17:                              # %cond.true.72
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB72_36
	jmp	.LBB72_33
.LBB72_18:                              # %cond.false.73
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB72_20
# BB#19:                                # %cond.true.81
	xorl	%eax, %eax
	movq	-32(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movq	-32(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
	jmp	.LBB72_21
.LBB72_20:                              # %cond.false.101
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -112(%rbp)        # 4-byte Spill
.LBB72_21:                              # %cond.end.107
	movl	-112(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-32(%rbp), %rsi
	movb	%sil, %dil
	movsbl	%dil, %ecx
	cmpl	%ecx, %eax
	jl	.LBB72_36
	jmp	.LBB72_33
.LBB72_22:                              # %cond.false.114
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB72_23
	jmp	.LBB72_24
.LBB72_23:                              # %cond.true.115
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB72_36
	jmp	.LBB72_33
.LBB72_24:                              # %cond.false.116
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jge	.LBB72_29
# BB#25:                                # %cond.true.121
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -116(%rbp)        # 4-byte Spill
	jge	.LBB72_27
# BB#26:                                # %cond.true.131
	xorl	%eax, %eax
	movq	-32(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movq	-32(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
	jmp	.LBB72_28
.LBB72_27:                              # %cond.false.151
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -120(%rbp)        # 4-byte Spill
.LBB72_28:                              # %cond.end.157
	movl	-120(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-116(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB72_36
	jmp	.LBB72_33
.LBB72_29:                              # %cond.false.162
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB72_31
# BB#30:                                # %cond.true.170
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -124(%rbp)        # 4-byte Spill
	jmp	.LBB72_32
.LBB72_31:                              # %cond.false.180
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -124(%rbp)        # 4-byte Spill
.LBB72_32:                              # %cond.end.186
	movl	-124(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-32(%rbp), %rsi
	movb	%sil, %dil
	movsbl	%dil, %ecx
	cmpl	%ecx, %eax
	jl	.LBB72_36
.LBB72_33:                              # %lor.lhs.false.193
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	shll	$3, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB72_35
# BB#34:                                # %land.lhs.true.201
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	shll	$3, %edx
	cmpl	$-128, %edx
	jl	.LBB72_36
.LBB72_35:                              # %lor.lhs.false.207
	movl	$127, %eax
	movq	-32(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	shll	$3, %esi
	cmpl	%esi, %eax
	jge	.LBB72_40
.LBB72_36:                              # %cond.true.213
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	cmpl	$127, %edx
	jg	.LBB72_38
# BB#37:                                # %cond.true.219
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -128(%rbp)        # 4-byte Spill
	jmp	.LBB72_39
.LBB72_38:                              # %cond.false.225
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -128(%rbp)        # 4-byte Spill
.LBB72_39:                              # %cond.end.233
	movl	-128(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -80(%rbp)
	testb	$1, %cl
	jne	.LBB72_403
	jmp	.LBB72_402
.LBB72_40:                              # %cond.false.236
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	cmpl	$127, %edx
	jg	.LBB72_42
# BB#41:                                # %cond.true.242
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -132(%rbp)        # 4-byte Spill
	jmp	.LBB72_43
.LBB72_42:                              # %cond.false.248
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -132(%rbp)        # 4-byte Spill
.LBB72_43:                              # %cond.end.256
	movl	-132(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -80(%rbp)
	testb	$1, %dl
	jne	.LBB72_403
	jmp	.LBB72_402
.LBB72_44:                              # %cond.false.259
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB72_46
# BB#45:                                # %cond.true.265
	xorl	%eax, %eax
	movq	-32(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	jmp	.LBB72_47
.LBB72_46:                              # %cond.false.282
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
.LBB72_47:                              # %cond.end.286
	movq	-144(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB72_49
# BB#48:                                # %land.lhs.true.290
	cmpq	$0, -32(%rbp)
	jl	.LBB72_75
.LBB72_49:                              # %lor.lhs.false.293
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB72_50
	jmp	.LBB72_61
.LBB72_50:                              # %cond.true.294
	cmpq	$0, -32(%rbp)
	jge	.LBB72_55
# BB#51:                                # %cond.true.297
	movq	-32(%rbp), %rax
	movq	-32(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -152(%rbp)        # 8-byte Spill
	jge	.LBB72_53
# BB#52:                                # %cond.true.303
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	jmp	.LBB72_54
.LBB72_53:                              # %cond.false.311
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
.LBB72_54:                              # %cond.end.315
	movq	-160(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -168(%rbp)        # 8-byte Spill
	cqto
	movq	-168(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-152(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB72_75
	jmp	.LBB72_72
.LBB72_55:                              # %cond.false.320
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB72_56
	jmp	.LBB72_57
.LBB72_56:                              # %cond.true.321
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB72_75
	jmp	.LBB72_72
.LBB72_57:                              # %cond.false.322
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB72_59
# BB#58:                                # %cond.true.328
	xorl	%eax, %eax
	movq	-32(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -176(%rbp)        # 8-byte Spill
	jmp	.LBB72_60
.LBB72_59:                              # %cond.false.345
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
.LBB72_60:                              # %cond.end.349
	movq	-176(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -184(%rbp)        # 8-byte Spill
	cqto
	movq	-184(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-32(%rbp), %rax
	jl	.LBB72_75
	jmp	.LBB72_72
.LBB72_61:                              # %cond.false.354
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB72_62
	jmp	.LBB72_63
.LBB72_62:                              # %cond.true.355
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB72_75
	jmp	.LBB72_72
.LBB72_63:                              # %cond.false.356
	cmpq	$0, -32(%rbp)
	jge	.LBB72_68
# BB#64:                                # %cond.true.359
	movq	-32(%rbp), %rax
	movq	-32(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -192(%rbp)        # 8-byte Spill
	jge	.LBB72_66
# BB#65:                                # %cond.true.365
	xorl	%eax, %eax
	movq	-32(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -200(%rbp)        # 8-byte Spill
	jmp	.LBB72_67
.LBB72_66:                              # %cond.false.382
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
.LBB72_67:                              # %cond.end.386
	movq	-200(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -208(%rbp)        # 8-byte Spill
	cqto
	movq	-208(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-192(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB72_75
	jmp	.LBB72_72
.LBB72_68:                              # %cond.false.391
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB72_70
# BB#69:                                # %cond.true.397
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	jmp	.LBB72_71
.LBB72_70:                              # %cond.false.405
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
.LBB72_71:                              # %cond.end.409
	movq	-216(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -224(%rbp)        # 8-byte Spill
	cqto
	movq	-224(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-32(%rbp), %rax
	jl	.LBB72_75
.LBB72_72:                              # %lor.lhs.false.414
	movq	-32(%rbp), %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB72_74
# BB#73:                                # %land.lhs.true.420
	movq	-32(%rbp), %rax
	shlq	$3, %rax
	cmpq	$-128, %rax
	jl	.LBB72_75
.LBB72_74:                              # %lor.lhs.false.424
	movl	$127, %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rdx
	shlq	$3, %rdx
	cmpq	%rdx, %rcx
	jge	.LBB72_79
.LBB72_75:                              # %cond.true.428
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	cmpl	$127, %edx
	jg	.LBB72_77
# BB#76:                                # %cond.true.434
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -228(%rbp)        # 4-byte Spill
	jmp	.LBB72_78
.LBB72_77:                              # %cond.false.440
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -228(%rbp)        # 4-byte Spill
.LBB72_78:                              # %cond.end.448
	movl	-228(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -80(%rbp)
	testb	$1, %cl
	jne	.LBB72_403
	jmp	.LBB72_402
.LBB72_79:                              # %cond.false.451
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	cmpl	$127, %edx
	jg	.LBB72_81
# BB#80:                                # %cond.true.457
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -232(%rbp)        # 4-byte Spill
	jmp	.LBB72_82
.LBB72_81:                              # %cond.false.463
	movq	-32(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -232(%rbp)        # 4-byte Spill
.LBB72_82:                              # %cond.end.471
	movl	-232(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -80(%rbp)
	testb	$1, %dl
	jne	.LBB72_403
	jmp	.LBB72_402
.LBB72_83:                              # %cond.false.474
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB72_84
	jmp	.LBB72_163
.LBB72_84:                              # %cond.true.475
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB72_85
	jmp	.LBB72_124
.LBB72_85:                              # %cond.true.476
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB72_87
# BB#86:                                # %cond.true.484
	xorl	%eax, %eax
	movq	-32(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dil
	andb	$1, %dil
	movzbl	%dil, %esi
	subl	%esi, %eax
	movq	-32(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -236(%rbp)        # 4-byte Spill
	jmp	.LBB72_88
.LBB72_87:                              # %cond.false.504
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -236(%rbp)        # 4-byte Spill
.LBB72_88:                              # %cond.end.510
	movl	-236(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB72_90
# BB#89:                                # %land.lhs.true.514
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jl	.LBB72_116
.LBB72_90:                              # %lor.lhs.false.519
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB72_91
	jmp	.LBB72_102
.LBB72_91:                              # %cond.true.520
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jge	.LBB72_96
# BB#92:                                # %cond.true.525
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -240(%rbp)        # 4-byte Spill
	jge	.LBB72_94
# BB#93:                                # %cond.true.535
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -244(%rbp)        # 4-byte Spill
	jmp	.LBB72_95
.LBB72_94:                              # %cond.false.545
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -244(%rbp)        # 4-byte Spill
.LBB72_95:                              # %cond.end.551
	movl	-244(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-240(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB72_116
	jmp	.LBB72_113
.LBB72_96:                              # %cond.false.556
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB72_97
	jmp	.LBB72_98
.LBB72_97:                              # %cond.true.557
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB72_116
	jmp	.LBB72_113
.LBB72_98:                              # %cond.false.558
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB72_100
# BB#99:                                # %cond.true.566
	xorl	%eax, %eax
	movq	-32(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dil
	andb	$1, %dil
	movzbl	%dil, %esi
	subl	%esi, %eax
	movq	-32(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -248(%rbp)        # 4-byte Spill
	jmp	.LBB72_101
.LBB72_100:                             # %cond.false.586
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -248(%rbp)        # 4-byte Spill
.LBB72_101:                             # %cond.end.592
	movl	-248(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-32(%rbp), %rsi
	movw	%si, %di
	movswl	%di, %ecx
	cmpl	%ecx, %eax
	jl	.LBB72_116
	jmp	.LBB72_113
.LBB72_102:                             # %cond.false.599
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB72_103
	jmp	.LBB72_104
.LBB72_103:                             # %cond.true.600
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB72_116
	jmp	.LBB72_113
.LBB72_104:                             # %cond.false.601
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jge	.LBB72_109
# BB#105:                               # %cond.true.606
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -252(%rbp)        # 4-byte Spill
	jge	.LBB72_107
# BB#106:                               # %cond.true.616
	xorl	%eax, %eax
	movq	-32(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dil
	andb	$1, %dil
	movzbl	%dil, %esi
	subl	%esi, %eax
	movq	-32(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -256(%rbp)        # 4-byte Spill
	jmp	.LBB72_108
.LBB72_107:                             # %cond.false.636
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -256(%rbp)        # 4-byte Spill
.LBB72_108:                             # %cond.end.642
	movl	-256(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-252(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB72_116
	jmp	.LBB72_113
.LBB72_109:                             # %cond.false.647
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB72_111
# BB#110:                               # %cond.true.655
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -260(%rbp)        # 4-byte Spill
	jmp	.LBB72_112
.LBB72_111:                             # %cond.false.665
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -260(%rbp)        # 4-byte Spill
.LBB72_112:                             # %cond.end.671
	movl	-260(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-32(%rbp), %rsi
	movw	%si, %di
	movswl	%di, %ecx
	cmpl	%ecx, %eax
	jl	.LBB72_116
.LBB72_113:                             # %lor.lhs.false.678
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	shll	$3, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB72_115
# BB#114:                               # %land.lhs.true.686
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	shll	$3, %edx
	cmpl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	jl	.LBB72_116
.LBB72_115:                             # %lor.lhs.false.692
	movl	$32767, %eax            # imm = 0x7FFF
	movq	-32(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	shll	$3, %esi
	cmpl	%esi, %eax
	jge	.LBB72_120
.LBB72_116:                             # %cond.true.698
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB72_118
# BB#117:                               # %cond.true.704
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -264(%rbp)        # 4-byte Spill
	jmp	.LBB72_119
.LBB72_118:                             # %cond.false.710
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -264(%rbp)        # 4-byte Spill
.LBB72_119:                             # %cond.end.718
	movl	-264(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -80(%rbp)
	testb	$1, %cl
	jne	.LBB72_403
	jmp	.LBB72_402
.LBB72_120:                             # %cond.false.721
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB72_122
# BB#121:                               # %cond.true.727
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -268(%rbp)        # 4-byte Spill
	jmp	.LBB72_123
.LBB72_122:                             # %cond.false.733
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -268(%rbp)        # 4-byte Spill
.LBB72_123:                             # %cond.end.741
	movl	-268(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -80(%rbp)
	testb	$1, %dl
	jne	.LBB72_403
	jmp	.LBB72_402
.LBB72_124:                             # %cond.false.744
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB72_126
# BB#125:                               # %cond.true.750
	xorl	%eax, %eax
	movq	-32(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -280(%rbp)        # 8-byte Spill
	jmp	.LBB72_127
.LBB72_126:                             # %cond.false.767
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
.LBB72_127:                             # %cond.end.771
	movq	-280(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB72_129
# BB#128:                               # %land.lhs.true.775
	cmpq	$0, -32(%rbp)
	jl	.LBB72_155
.LBB72_129:                             # %lor.lhs.false.778
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB72_130
	jmp	.LBB72_141
.LBB72_130:                             # %cond.true.779
	cmpq	$0, -32(%rbp)
	jge	.LBB72_135
# BB#131:                               # %cond.true.782
	movq	-32(%rbp), %rax
	movq	-32(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -288(%rbp)        # 8-byte Spill
	jge	.LBB72_133
# BB#132:                               # %cond.true.788
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	jmp	.LBB72_134
.LBB72_133:                             # %cond.false.796
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
.LBB72_134:                             # %cond.end.800
	movq	-296(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -304(%rbp)        # 8-byte Spill
	cqto
	movq	-304(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-288(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB72_155
	jmp	.LBB72_152
.LBB72_135:                             # %cond.false.805
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB72_136
	jmp	.LBB72_137
.LBB72_136:                             # %cond.true.806
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB72_155
	jmp	.LBB72_152
.LBB72_137:                             # %cond.false.807
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB72_139
# BB#138:                               # %cond.true.813
	xorl	%eax, %eax
	movq	-32(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -312(%rbp)        # 8-byte Spill
	jmp	.LBB72_140
.LBB72_139:                             # %cond.false.830
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
.LBB72_140:                             # %cond.end.834
	movq	-312(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -320(%rbp)        # 8-byte Spill
	cqto
	movq	-320(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-32(%rbp), %rax
	jl	.LBB72_155
	jmp	.LBB72_152
.LBB72_141:                             # %cond.false.839
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB72_142
	jmp	.LBB72_143
.LBB72_142:                             # %cond.true.840
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB72_155
	jmp	.LBB72_152
.LBB72_143:                             # %cond.false.841
	cmpq	$0, -32(%rbp)
	jge	.LBB72_148
# BB#144:                               # %cond.true.844
	movq	-32(%rbp), %rax
	movq	-32(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -328(%rbp)        # 8-byte Spill
	jge	.LBB72_146
# BB#145:                               # %cond.true.850
	xorl	%eax, %eax
	movq	-32(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -336(%rbp)        # 8-byte Spill
	jmp	.LBB72_147
.LBB72_146:                             # %cond.false.867
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
.LBB72_147:                             # %cond.end.871
	movq	-336(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -344(%rbp)        # 8-byte Spill
	cqto
	movq	-344(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-328(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB72_155
	jmp	.LBB72_152
.LBB72_148:                             # %cond.false.876
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB72_150
# BB#149:                               # %cond.true.882
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	jmp	.LBB72_151
.LBB72_150:                             # %cond.false.890
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
.LBB72_151:                             # %cond.end.894
	movq	-352(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -360(%rbp)        # 8-byte Spill
	cqto
	movq	-360(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-32(%rbp), %rax
	jl	.LBB72_155
.LBB72_152:                             # %lor.lhs.false.899
	movq	-32(%rbp), %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB72_154
# BB#153:                               # %land.lhs.true.905
	movq	-32(%rbp), %rax
	shlq	$3, %rax
	cmpq	$-32768, %rax           # imm = 0xFFFFFFFFFFFF8000
	jl	.LBB72_155
.LBB72_154:                             # %lor.lhs.false.909
	movl	$32767, %eax            # imm = 0x7FFF
	movl	%eax, %ecx
	movq	-32(%rbp), %rdx
	shlq	$3, %rdx
	cmpq	%rdx, %rcx
	jge	.LBB72_159
.LBB72_155:                             # %cond.true.913
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB72_157
# BB#156:                               # %cond.true.919
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -364(%rbp)        # 4-byte Spill
	jmp	.LBB72_158
.LBB72_157:                             # %cond.false.925
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -364(%rbp)        # 4-byte Spill
.LBB72_158:                             # %cond.end.933
	movl	-364(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -80(%rbp)
	testb	$1, %cl
	jne	.LBB72_403
	jmp	.LBB72_402
.LBB72_159:                             # %cond.false.936
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB72_161
# BB#160:                               # %cond.true.942
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -368(%rbp)        # 4-byte Spill
	jmp	.LBB72_162
.LBB72_161:                             # %cond.false.948
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -368(%rbp)        # 4-byte Spill
.LBB72_162:                             # %cond.end.956
	movl	-368(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -80(%rbp)
	testb	$1, %dl
	jne	.LBB72_403
	jmp	.LBB72_402
.LBB72_163:                             # %cond.false.959
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB72_164
	jmp	.LBB72_243
.LBB72_164:                             # %cond.true.960
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB72_165
	jmp	.LBB72_204
.LBB72_165:                             # %cond.true.961
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB72_167
# BB#166:                               # %cond.true.968
	xorl	%eax, %eax
	movq	-32(%rbp), %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %eax
	movq	-32(%rbp), %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -372(%rbp)        # 4-byte Spill
	jmp	.LBB72_168
.LBB72_167:                             # %cond.false.986
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -372(%rbp)        # 4-byte Spill
.LBB72_168:                             # %cond.end.991
	movl	-372(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB72_170
# BB#169:                               # %land.lhs.true.995
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jl	.LBB72_196
.LBB72_170:                             # %lor.lhs.false.999
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB72_171
	jmp	.LBB72_182
.LBB72_171:                             # %cond.true.1000
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jge	.LBB72_176
# BB#172:                               # %cond.true.1004
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	movq	-32(%rbp), %rax
	movl	%eax, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	movl	%ecx, -376(%rbp)        # 4-byte Spill
	jge	.LBB72_174
# BB#173:                               # %cond.true.1012
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	%ecx, -380(%rbp)        # 4-byte Spill
	jmp	.LBB72_175
.LBB72_174:                             # %cond.false.1021
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	movl	%ecx, -380(%rbp)        # 4-byte Spill
.LBB72_175:                             # %cond.end.1026
	movl	-380(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-376(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB72_196
	jmp	.LBB72_193
.LBB72_176:                             # %cond.false.1031
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB72_177
	jmp	.LBB72_178
.LBB72_177:                             # %cond.true.1032
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB72_196
	jmp	.LBB72_193
.LBB72_178:                             # %cond.false.1033
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB72_180
# BB#179:                               # %cond.true.1040
	xorl	%eax, %eax
	movq	-32(%rbp), %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %eax
	movq	-32(%rbp), %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -384(%rbp)        # 4-byte Spill
	jmp	.LBB72_181
.LBB72_180:                             # %cond.false.1058
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -384(%rbp)        # 4-byte Spill
.LBB72_181:                             # %cond.end.1063
	movl	-384(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-32(%rbp), %rsi
	movl	%esi, %ecx
	cmpl	%ecx, %eax
	jl	.LBB72_196
	jmp	.LBB72_193
.LBB72_182:                             # %cond.false.1069
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB72_183
	jmp	.LBB72_184
.LBB72_183:                             # %cond.true.1070
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB72_196
	jmp	.LBB72_193
.LBB72_184:                             # %cond.false.1071
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jge	.LBB72_189
# BB#185:                               # %cond.true.1075
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	movq	-32(%rbp), %rax
	movl	%eax, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	movl	%ecx, -388(%rbp)        # 4-byte Spill
	jge	.LBB72_187
# BB#186:                               # %cond.true.1083
	xorl	%eax, %eax
	movq	-32(%rbp), %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %eax
	movq	-32(%rbp), %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -392(%rbp)        # 4-byte Spill
	jmp	.LBB72_188
.LBB72_187:                             # %cond.false.1101
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -392(%rbp)        # 4-byte Spill
.LBB72_188:                             # %cond.end.1106
	movl	-392(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-388(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB72_196
	jmp	.LBB72_193
.LBB72_189:                             # %cond.false.1111
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB72_191
# BB#190:                               # %cond.true.1118
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	%ecx, -396(%rbp)        # 4-byte Spill
	jmp	.LBB72_192
.LBB72_191:                             # %cond.false.1127
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	movl	%ecx, -396(%rbp)        # 4-byte Spill
.LBB72_192:                             # %cond.end.1132
	movl	-396(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-32(%rbp), %rsi
	movl	%esi, %ecx
	cmpl	%ecx, %eax
	jl	.LBB72_196
.LBB72_193:                             # %lor.lhs.false.1138
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB72_195
# BB#194:                               # %land.lhs.true.1145
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	cmpl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	jl	.LBB72_196
.LBB72_195:                             # %lor.lhs.false.1150
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movq	-32(%rbp), %rcx
	movl	%ecx, %edx
	shll	$3, %edx
	cmpl	%edx, %eax
	jge	.LBB72_200
.LBB72_196:                             # %cond.true.1155
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB72_198
# BB#197:                               # %cond.true.1160
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	movl	%ecx, -400(%rbp)        # 4-byte Spill
	jmp	.LBB72_199
.LBB72_198:                             # %cond.false.1163
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -400(%rbp)        # 4-byte Spill
.LBB72_199:                             # %cond.end.1168
	movl	-400(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -80(%rbp)
	testb	$1, %cl
	jne	.LBB72_403
	jmp	.LBB72_402
.LBB72_200:                             # %cond.false.1171
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB72_202
# BB#201:                               # %cond.true.1176
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	movl	%ecx, -404(%rbp)        # 4-byte Spill
	jmp	.LBB72_203
.LBB72_202:                             # %cond.false.1179
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -404(%rbp)        # 4-byte Spill
.LBB72_203:                             # %cond.end.1184
	movl	-404(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -80(%rbp)
	testb	$1, %dl
	jne	.LBB72_403
	jmp	.LBB72_402
.LBB72_204:                             # %cond.false.1187
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB72_206
# BB#205:                               # %cond.true.1193
	xorl	%eax, %eax
	movq	-32(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -416(%rbp)        # 8-byte Spill
	jmp	.LBB72_207
.LBB72_206:                             # %cond.false.1210
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -416(%rbp)        # 8-byte Spill
.LBB72_207:                             # %cond.end.1214
	movq	-416(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB72_209
# BB#208:                               # %land.lhs.true.1218
	cmpq	$0, -32(%rbp)
	jl	.LBB72_235
.LBB72_209:                             # %lor.lhs.false.1221
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB72_210
	jmp	.LBB72_221
.LBB72_210:                             # %cond.true.1222
	cmpq	$0, -32(%rbp)
	jge	.LBB72_215
# BB#211:                               # %cond.true.1225
	movq	-32(%rbp), %rax
	movq	-32(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -424(%rbp)        # 8-byte Spill
	jge	.LBB72_213
# BB#212:                               # %cond.true.1231
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -432(%rbp)        # 8-byte Spill
	jmp	.LBB72_214
.LBB72_213:                             # %cond.false.1239
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -432(%rbp)        # 8-byte Spill
.LBB72_214:                             # %cond.end.1243
	movq	-432(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -440(%rbp)        # 8-byte Spill
	cqto
	movq	-440(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-424(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB72_235
	jmp	.LBB72_232
.LBB72_215:                             # %cond.false.1248
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB72_216
	jmp	.LBB72_217
.LBB72_216:                             # %cond.true.1249
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB72_235
	jmp	.LBB72_232
.LBB72_217:                             # %cond.false.1250
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB72_219
# BB#218:                               # %cond.true.1256
	xorl	%eax, %eax
	movq	-32(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -448(%rbp)        # 8-byte Spill
	jmp	.LBB72_220
.LBB72_219:                             # %cond.false.1273
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
.LBB72_220:                             # %cond.end.1277
	movq	-448(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -456(%rbp)        # 8-byte Spill
	cqto
	movq	-456(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-32(%rbp), %rax
	jl	.LBB72_235
	jmp	.LBB72_232
.LBB72_221:                             # %cond.false.1282
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB72_222
	jmp	.LBB72_223
.LBB72_222:                             # %cond.true.1283
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB72_235
	jmp	.LBB72_232
.LBB72_223:                             # %cond.false.1284
	cmpq	$0, -32(%rbp)
	jge	.LBB72_228
# BB#224:                               # %cond.true.1287
	movq	-32(%rbp), %rax
	movq	-32(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -464(%rbp)        # 8-byte Spill
	jge	.LBB72_226
# BB#225:                               # %cond.true.1293
	xorl	%eax, %eax
	movq	-32(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -472(%rbp)        # 8-byte Spill
	jmp	.LBB72_227
.LBB72_226:                             # %cond.false.1310
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -472(%rbp)        # 8-byte Spill
.LBB72_227:                             # %cond.end.1314
	movq	-472(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -480(%rbp)        # 8-byte Spill
	cqto
	movq	-480(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-464(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB72_235
	jmp	.LBB72_232
.LBB72_228:                             # %cond.false.1319
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB72_230
# BB#229:                               # %cond.true.1325
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -488(%rbp)        # 8-byte Spill
	jmp	.LBB72_231
.LBB72_230:                             # %cond.false.1333
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -488(%rbp)        # 8-byte Spill
.LBB72_231:                             # %cond.end.1337
	movq	-488(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -496(%rbp)        # 8-byte Spill
	cqto
	movq	-496(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-32(%rbp), %rax
	jl	.LBB72_235
.LBB72_232:                             # %lor.lhs.false.1342
	movq	-32(%rbp), %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB72_234
# BB#233:                               # %land.lhs.true.1348
	movq	-32(%rbp), %rax
	shlq	$3, %rax
	cmpq	$-2147483648, %rax      # imm = 0xFFFFFFFF80000000
	jl	.LBB72_235
.LBB72_234:                             # %lor.lhs.false.1352
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movl	%eax, %ecx
	movq	-32(%rbp), %rdx
	shlq	$3, %rdx
	cmpq	%rdx, %rcx
	jge	.LBB72_239
.LBB72_235:                             # %cond.true.1356
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB72_237
# BB#236:                               # %cond.true.1361
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	movl	%ecx, -500(%rbp)        # 4-byte Spill
	jmp	.LBB72_238
.LBB72_237:                             # %cond.false.1364
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -500(%rbp)        # 4-byte Spill
.LBB72_238:                             # %cond.end.1369
	movl	-500(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -80(%rbp)
	testb	$1, %cl
	jne	.LBB72_403
	jmp	.LBB72_402
.LBB72_239:                             # %cond.false.1372
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB72_241
# BB#240:                               # %cond.true.1377
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	movl	%ecx, -504(%rbp)        # 4-byte Spill
	jmp	.LBB72_242
.LBB72_241:                             # %cond.false.1380
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -504(%rbp)        # 4-byte Spill
.LBB72_242:                             # %cond.end.1385
	movl	-504(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -80(%rbp)
	testb	$1, %dl
	jne	.LBB72_403
	jmp	.LBB72_402
.LBB72_243:                             # %cond.false.1388
	movb	$1, %al
	testb	$1, %al
	jne	.LBB72_244
	jmp	.LBB72_323
.LBB72_244:                             # %cond.true.1389
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB72_245
	jmp	.LBB72_284
.LBB72_245:                             # %cond.true.1390
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB72_247
# BB#246:                               # %cond.true.1396
	xorl	%eax, %eax
	movq	-32(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -512(%rbp)        # 8-byte Spill
	jmp	.LBB72_248
.LBB72_247:                             # %cond.false.1413
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -512(%rbp)        # 8-byte Spill
.LBB72_248:                             # %cond.end.1417
	movq	-512(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB72_250
# BB#249:                               # %land.lhs.true.1421
	cmpq	$0, -32(%rbp)
	jl	.LBB72_276
.LBB72_250:                             # %lor.lhs.false.1424
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB72_251
	jmp	.LBB72_262
.LBB72_251:                             # %cond.true.1425
	cmpq	$0, -32(%rbp)
	jge	.LBB72_256
# BB#252:                               # %cond.true.1428
	movq	-32(%rbp), %rax
	movq	-32(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -520(%rbp)        # 8-byte Spill
	jge	.LBB72_254
# BB#253:                               # %cond.true.1434
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -528(%rbp)        # 8-byte Spill
	jmp	.LBB72_255
.LBB72_254:                             # %cond.false.1442
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -528(%rbp)        # 8-byte Spill
.LBB72_255:                             # %cond.end.1446
	movq	-528(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -536(%rbp)        # 8-byte Spill
	cqto
	movq	-536(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-520(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB72_276
	jmp	.LBB72_273
.LBB72_256:                             # %cond.false.1451
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB72_257
	jmp	.LBB72_258
.LBB72_257:                             # %cond.true.1452
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB72_276
	jmp	.LBB72_273
.LBB72_258:                             # %cond.false.1453
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB72_260
# BB#259:                               # %cond.true.1459
	xorl	%eax, %eax
	movq	-32(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -544(%rbp)        # 8-byte Spill
	jmp	.LBB72_261
.LBB72_260:                             # %cond.false.1476
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -544(%rbp)        # 8-byte Spill
.LBB72_261:                             # %cond.end.1480
	movq	-544(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -552(%rbp)        # 8-byte Spill
	cqto
	movq	-552(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-32(%rbp), %rax
	jl	.LBB72_276
	jmp	.LBB72_273
.LBB72_262:                             # %cond.false.1485
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB72_263
	jmp	.LBB72_264
.LBB72_263:                             # %cond.true.1486
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB72_276
	jmp	.LBB72_273
.LBB72_264:                             # %cond.false.1487
	cmpq	$0, -32(%rbp)
	jge	.LBB72_269
# BB#265:                               # %cond.true.1490
	movq	-32(%rbp), %rax
	movq	-32(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -560(%rbp)        # 8-byte Spill
	jge	.LBB72_267
# BB#266:                               # %cond.true.1496
	xorl	%eax, %eax
	movq	-32(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -568(%rbp)        # 8-byte Spill
	jmp	.LBB72_268
.LBB72_267:                             # %cond.false.1513
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -568(%rbp)        # 8-byte Spill
.LBB72_268:                             # %cond.end.1517
	movq	-568(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -576(%rbp)        # 8-byte Spill
	cqto
	movq	-576(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-560(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB72_276
	jmp	.LBB72_273
.LBB72_269:                             # %cond.false.1522
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB72_271
# BB#270:                               # %cond.true.1528
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -584(%rbp)        # 8-byte Spill
	jmp	.LBB72_272
.LBB72_271:                             # %cond.false.1536
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -584(%rbp)        # 8-byte Spill
.LBB72_272:                             # %cond.end.1540
	movq	-584(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -592(%rbp)        # 8-byte Spill
	cqto
	movq	-592(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-32(%rbp), %rax
	jl	.LBB72_276
.LBB72_273:                             # %lor.lhs.false.1545
	movq	-32(%rbp), %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB72_275
# BB#274:                               # %land.lhs.true.1551
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-32(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	jl	.LBB72_276
.LBB72_275:                             # %lor.lhs.false.1555
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-32(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rcx, %rax
	jge	.LBB72_280
.LBB72_276:                             # %cond.true.1559
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-32(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB72_278
# BB#277:                               # %cond.true.1563
	movq	-32(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, -600(%rbp)        # 8-byte Spill
	jmp	.LBB72_279
.LBB72_278:                             # %cond.false.1565
	movq	-32(%rbp), %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -600(%rbp)        # 8-byte Spill
.LBB72_279:                             # %cond.end.1569
	movq	-600(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -80(%rbp)
	testb	$1, %cl
	jne	.LBB72_403
	jmp	.LBB72_402
.LBB72_280:                             # %cond.false.1571
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-32(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB72_282
# BB#281:                               # %cond.true.1575
	movq	-32(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, -608(%rbp)        # 8-byte Spill
	jmp	.LBB72_283
.LBB72_282:                             # %cond.false.1577
	movq	-32(%rbp), %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -608(%rbp)        # 8-byte Spill
.LBB72_283:                             # %cond.end.1581
	movq	-608(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -80(%rbp)
	testb	$1, %dl
	jne	.LBB72_403
	jmp	.LBB72_402
.LBB72_284:                             # %cond.false.1583
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB72_286
# BB#285:                               # %cond.true.1589
	xorl	%eax, %eax
	movq	-32(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -616(%rbp)        # 8-byte Spill
	jmp	.LBB72_287
.LBB72_286:                             # %cond.false.1606
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -616(%rbp)        # 8-byte Spill
.LBB72_287:                             # %cond.end.1610
	movq	-616(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB72_289
# BB#288:                               # %land.lhs.true.1614
	cmpq	$0, -32(%rbp)
	jl	.LBB72_315
.LBB72_289:                             # %lor.lhs.false.1617
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB72_290
	jmp	.LBB72_301
.LBB72_290:                             # %cond.true.1618
	cmpq	$0, -32(%rbp)
	jge	.LBB72_295
# BB#291:                               # %cond.true.1621
	movq	-32(%rbp), %rax
	movq	-32(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -624(%rbp)        # 8-byte Spill
	jge	.LBB72_293
# BB#292:                               # %cond.true.1627
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -632(%rbp)        # 8-byte Spill
	jmp	.LBB72_294
.LBB72_293:                             # %cond.false.1635
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -632(%rbp)        # 8-byte Spill
.LBB72_294:                             # %cond.end.1639
	movq	-632(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -640(%rbp)        # 8-byte Spill
	cqto
	movq	-640(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-624(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB72_315
	jmp	.LBB72_312
.LBB72_295:                             # %cond.false.1644
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB72_296
	jmp	.LBB72_297
.LBB72_296:                             # %cond.true.1645
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB72_315
	jmp	.LBB72_312
.LBB72_297:                             # %cond.false.1646
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB72_299
# BB#298:                               # %cond.true.1652
	xorl	%eax, %eax
	movq	-32(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -648(%rbp)        # 8-byte Spill
	jmp	.LBB72_300
.LBB72_299:                             # %cond.false.1669
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -648(%rbp)        # 8-byte Spill
.LBB72_300:                             # %cond.end.1673
	movq	-648(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -656(%rbp)        # 8-byte Spill
	cqto
	movq	-656(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-32(%rbp), %rax
	jl	.LBB72_315
	jmp	.LBB72_312
.LBB72_301:                             # %cond.false.1678
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB72_302
	jmp	.LBB72_303
.LBB72_302:                             # %cond.true.1679
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB72_315
	jmp	.LBB72_312
.LBB72_303:                             # %cond.false.1680
	cmpq	$0, -32(%rbp)
	jge	.LBB72_308
# BB#304:                               # %cond.true.1683
	movq	-32(%rbp), %rax
	movq	-32(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -664(%rbp)        # 8-byte Spill
	jge	.LBB72_306
# BB#305:                               # %cond.true.1689
	xorl	%eax, %eax
	movq	-32(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -672(%rbp)        # 8-byte Spill
	jmp	.LBB72_307
.LBB72_306:                             # %cond.false.1706
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -672(%rbp)        # 8-byte Spill
.LBB72_307:                             # %cond.end.1710
	movq	-672(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -680(%rbp)        # 8-byte Spill
	cqto
	movq	-680(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-664(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB72_315
	jmp	.LBB72_312
.LBB72_308:                             # %cond.false.1715
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB72_310
# BB#309:                               # %cond.true.1721
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -688(%rbp)        # 8-byte Spill
	jmp	.LBB72_311
.LBB72_310:                             # %cond.false.1729
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -688(%rbp)        # 8-byte Spill
.LBB72_311:                             # %cond.end.1733
	movq	-688(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -696(%rbp)        # 8-byte Spill
	cqto
	movq	-696(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-32(%rbp), %rax
	jl	.LBB72_315
.LBB72_312:                             # %lor.lhs.false.1738
	movq	-32(%rbp), %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB72_314
# BB#313:                               # %land.lhs.true.1744
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-32(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	jl	.LBB72_315
.LBB72_314:                             # %lor.lhs.false.1748
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-32(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rcx, %rax
	jge	.LBB72_319
.LBB72_315:                             # %cond.true.1752
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-32(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB72_317
# BB#316:                               # %cond.true.1756
	movq	-32(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, -704(%rbp)        # 8-byte Spill
	jmp	.LBB72_318
.LBB72_317:                             # %cond.false.1758
	movq	-32(%rbp), %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -704(%rbp)        # 8-byte Spill
.LBB72_318:                             # %cond.end.1762
	movq	-704(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -80(%rbp)
	testb	$1, %cl
	jne	.LBB72_403
	jmp	.LBB72_402
.LBB72_319:                             # %cond.false.1764
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-32(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB72_321
# BB#320:                               # %cond.true.1768
	movq	-32(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, -712(%rbp)        # 8-byte Spill
	jmp	.LBB72_322
.LBB72_321:                             # %cond.false.1770
	movq	-32(%rbp), %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -712(%rbp)        # 8-byte Spill
.LBB72_322:                             # %cond.end.1774
	movq	-712(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -80(%rbp)
	testb	$1, %dl
	jne	.LBB72_403
	jmp	.LBB72_402
.LBB72_323:                             # %cond.false.1776
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB72_324
	jmp	.LBB72_363
.LBB72_324:                             # %cond.true.1777
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB72_326
# BB#325:                               # %cond.true.1783
	xorl	%eax, %eax
	movq	-32(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -720(%rbp)        # 8-byte Spill
	jmp	.LBB72_327
.LBB72_326:                             # %cond.false.1800
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -720(%rbp)        # 8-byte Spill
.LBB72_327:                             # %cond.end.1804
	movq	-720(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB72_329
# BB#328:                               # %land.lhs.true.1808
	cmpq	$0, -32(%rbp)
	jl	.LBB72_355
.LBB72_329:                             # %lor.lhs.false.1811
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB72_330
	jmp	.LBB72_341
.LBB72_330:                             # %cond.true.1812
	cmpq	$0, -32(%rbp)
	jge	.LBB72_335
# BB#331:                               # %cond.true.1815
	movq	-32(%rbp), %rax
	movq	-32(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -728(%rbp)        # 8-byte Spill
	jge	.LBB72_333
# BB#332:                               # %cond.true.1821
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -736(%rbp)        # 8-byte Spill
	jmp	.LBB72_334
.LBB72_333:                             # %cond.false.1829
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -736(%rbp)        # 8-byte Spill
.LBB72_334:                             # %cond.end.1833
	movq	-736(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -744(%rbp)        # 8-byte Spill
	cqto
	movq	-744(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-728(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB72_355
	jmp	.LBB72_352
.LBB72_335:                             # %cond.false.1838
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB72_336
	jmp	.LBB72_337
.LBB72_336:                             # %cond.true.1839
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB72_355
	jmp	.LBB72_352
.LBB72_337:                             # %cond.false.1840
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB72_339
# BB#338:                               # %cond.true.1846
	xorl	%eax, %eax
	movq	-32(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -752(%rbp)        # 8-byte Spill
	jmp	.LBB72_340
.LBB72_339:                             # %cond.false.1863
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -752(%rbp)        # 8-byte Spill
.LBB72_340:                             # %cond.end.1867
	movq	-752(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -760(%rbp)        # 8-byte Spill
	cqto
	movq	-760(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-32(%rbp), %rax
	jl	.LBB72_355
	jmp	.LBB72_352
.LBB72_341:                             # %cond.false.1872
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB72_342
	jmp	.LBB72_343
.LBB72_342:                             # %cond.true.1873
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB72_355
	jmp	.LBB72_352
.LBB72_343:                             # %cond.false.1874
	cmpq	$0, -32(%rbp)
	jge	.LBB72_348
# BB#344:                               # %cond.true.1877
	movq	-32(%rbp), %rax
	movq	-32(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -768(%rbp)        # 8-byte Spill
	jge	.LBB72_346
# BB#345:                               # %cond.true.1883
	xorl	%eax, %eax
	movq	-32(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -776(%rbp)        # 8-byte Spill
	jmp	.LBB72_347
.LBB72_346:                             # %cond.false.1900
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -776(%rbp)        # 8-byte Spill
.LBB72_347:                             # %cond.end.1904
	movq	-776(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -784(%rbp)        # 8-byte Spill
	cqto
	movq	-784(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-768(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB72_355
	jmp	.LBB72_352
.LBB72_348:                             # %cond.false.1909
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB72_350
# BB#349:                               # %cond.true.1915
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -792(%rbp)        # 8-byte Spill
	jmp	.LBB72_351
.LBB72_350:                             # %cond.false.1923
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -792(%rbp)        # 8-byte Spill
.LBB72_351:                             # %cond.end.1927
	movq	-792(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -800(%rbp)        # 8-byte Spill
	cqto
	movq	-800(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-32(%rbp), %rax
	jl	.LBB72_355
.LBB72_352:                             # %lor.lhs.false.1932
	movq	-32(%rbp), %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB72_354
# BB#353:                               # %land.lhs.true.1938
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-32(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	jl	.LBB72_355
.LBB72_354:                             # %lor.lhs.false.1942
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-32(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rcx, %rax
	jge	.LBB72_359
.LBB72_355:                             # %cond.true.1946
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-32(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB72_357
# BB#356:                               # %cond.true.1950
	movq	-32(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, -808(%rbp)        # 8-byte Spill
	jmp	.LBB72_358
.LBB72_357:                             # %cond.false.1952
	movq	-32(%rbp), %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -808(%rbp)        # 8-byte Spill
.LBB72_358:                             # %cond.end.1956
	movq	-808(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -80(%rbp)
	testb	$1, %cl
	jne	.LBB72_403
	jmp	.LBB72_402
.LBB72_359:                             # %cond.false.1958
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-32(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB72_361
# BB#360:                               # %cond.true.1962
	movq	-32(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, -816(%rbp)        # 8-byte Spill
	jmp	.LBB72_362
.LBB72_361:                             # %cond.false.1964
	movq	-32(%rbp), %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -816(%rbp)        # 8-byte Spill
.LBB72_362:                             # %cond.end.1968
	movq	-816(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -80(%rbp)
	testb	$1, %dl
	jne	.LBB72_403
	jmp	.LBB72_402
.LBB72_363:                             # %cond.false.1970
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB72_365
# BB#364:                               # %cond.true.1976
	xorl	%eax, %eax
	movq	-32(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -824(%rbp)        # 8-byte Spill
	jmp	.LBB72_366
.LBB72_365:                             # %cond.false.1993
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -824(%rbp)        # 8-byte Spill
.LBB72_366:                             # %cond.end.1997
	movq	-824(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB72_368
# BB#367:                               # %land.lhs.true.2001
	cmpq	$0, -32(%rbp)
	jl	.LBB72_394
.LBB72_368:                             # %lor.lhs.false.2004
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB72_369
	jmp	.LBB72_380
.LBB72_369:                             # %cond.true.2005
	cmpq	$0, -32(%rbp)
	jge	.LBB72_374
# BB#370:                               # %cond.true.2008
	movq	-32(%rbp), %rax
	movq	-32(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -832(%rbp)        # 8-byte Spill
	jge	.LBB72_372
# BB#371:                               # %cond.true.2014
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -840(%rbp)        # 8-byte Spill
	jmp	.LBB72_373
.LBB72_372:                             # %cond.false.2022
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -840(%rbp)        # 8-byte Spill
.LBB72_373:                             # %cond.end.2026
	movq	-840(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -848(%rbp)        # 8-byte Spill
	cqto
	movq	-848(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-832(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB72_394
	jmp	.LBB72_391
.LBB72_374:                             # %cond.false.2031
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB72_375
	jmp	.LBB72_376
.LBB72_375:                             # %cond.true.2032
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB72_394
	jmp	.LBB72_391
.LBB72_376:                             # %cond.false.2033
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB72_378
# BB#377:                               # %cond.true.2039
	xorl	%eax, %eax
	movq	-32(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -856(%rbp)        # 8-byte Spill
	jmp	.LBB72_379
.LBB72_378:                             # %cond.false.2056
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -856(%rbp)        # 8-byte Spill
.LBB72_379:                             # %cond.end.2060
	movq	-856(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -864(%rbp)        # 8-byte Spill
	cqto
	movq	-864(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-32(%rbp), %rax
	jl	.LBB72_394
	jmp	.LBB72_391
.LBB72_380:                             # %cond.false.2065
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB72_381
	jmp	.LBB72_382
.LBB72_381:                             # %cond.true.2066
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB72_394
	jmp	.LBB72_391
.LBB72_382:                             # %cond.false.2067
	cmpq	$0, -32(%rbp)
	jge	.LBB72_387
# BB#383:                               # %cond.true.2070
	movq	-32(%rbp), %rax
	movq	-32(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -872(%rbp)        # 8-byte Spill
	jge	.LBB72_385
# BB#384:                               # %cond.true.2076
	xorl	%eax, %eax
	movq	-32(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -880(%rbp)        # 8-byte Spill
	jmp	.LBB72_386
.LBB72_385:                             # %cond.false.2093
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -880(%rbp)        # 8-byte Spill
.LBB72_386:                             # %cond.end.2097
	movq	-880(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -888(%rbp)        # 8-byte Spill
	cqto
	movq	-888(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-872(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB72_394
	jmp	.LBB72_391
.LBB72_387:                             # %cond.false.2102
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB72_389
# BB#388:                               # %cond.true.2108
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -896(%rbp)        # 8-byte Spill
	jmp	.LBB72_390
.LBB72_389:                             # %cond.false.2116
	movq	-32(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -896(%rbp)        # 8-byte Spill
.LBB72_390:                             # %cond.end.2120
	movq	-896(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -904(%rbp)        # 8-byte Spill
	cqto
	movq	-904(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-32(%rbp), %rax
	jl	.LBB72_394
.LBB72_391:                             # %lor.lhs.false.2125
	movq	-32(%rbp), %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB72_393
# BB#392:                               # %land.lhs.true.2131
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-32(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	jl	.LBB72_394
.LBB72_393:                             # %lor.lhs.false.2135
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-32(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rcx, %rax
	jge	.LBB72_398
.LBB72_394:                             # %cond.true.2139
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-32(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB72_396
# BB#395:                               # %cond.true.2143
	movq	-32(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, -912(%rbp)        # 8-byte Spill
	jmp	.LBB72_397
.LBB72_396:                             # %cond.false.2145
	movq	-32(%rbp), %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -912(%rbp)        # 8-byte Spill
.LBB72_397:                             # %cond.end.2149
	movq	-912(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -80(%rbp)
	testb	$1, %cl
	jne	.LBB72_403
	jmp	.LBB72_402
.LBB72_398:                             # %cond.false.2151
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-32(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB72_400
# BB#399:                               # %cond.true.2155
	movq	-32(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, -920(%rbp)        # 8-byte Spill
	jmp	.LBB72_401
.LBB72_400:                             # %cond.false.2157
	movq	-32(%rbp), %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -920(%rbp)        # 8-byte Spill
.LBB72_401:                             # %cond.end.2161
	movq	-920(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -80(%rbp)
	testb	$1, %dl
	jne	.LBB72_403
.LBB72_402:                             # %lor.lhs.false.2163
	movq	$-1, %rax
	cmpq	-80(%rbp), %rax
	jae	.LBB72_404
.LBB72_403:                             # %if.then.2166
	movq	$-1, %rdi
	callq	memory_full
.LBB72_404:                             # %if.else
	movq	-80(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jg	.LBB72_406
# BB#405:                               # %if.then.2169
	movq	-80(%rbp), %rax
	movq	-56(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -56(%rbp)
	movq	-80(%rbp), %rax
	addq	$15, %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -40(%rbp)
	jmp	.LBB72_407
.LBB72_406:                             # %if.else.2171
	movq	-80(%rbp), %rdi
	callq	xmalloc
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	make_save_memory
	movabsq	$free_save_value, %rdi
	movq	%rax, -88(%rbp)
	movb	$1, -65(%rbp)
	movq	-88(%rbp), %rsi
	callq	record_unwind_protect
.LBB72_407:                             # %if.end.2174
	jmp	.LBB72_408
.LBB72_408:                             # %if.end.2175
	jmp	.LBB72_409
.LBB72_409:                             # %do.end
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rcx
	callq	mapcar1
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	Flist
	movq	%rax, -48(%rbp)
# BB#410:                               # %do.body.2177
	testb	$1, -65(%rbp)
	je	.LBB72_412
# BB#411:                               # %if.then.2178
	xorl	%edi, %edi
	movb	$0, -65(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -928(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-928(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -936(%rbp)        # 8-byte Spill
.LBB72_412:                             # %if.end.2181
	jmp	.LBB72_413
.LBB72_413:                             # %do.end.2182
	movq	-48(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end72:
	.size	Fmapcar, .Lfunc_end72-Fmapcar
	.cfi_endproc

	.globl	Fmapc
	.align	16, 0x90
	.type	Fmapc,@function
Fmapc:                                  # @Fmapc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp219:
	.cfi_def_cfa_offset 16
.Ltmp220:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp221:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	Flength
	sarq	$2, %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	CHAR_TABLE_P
	testb	$1, %al
	jne	.LBB73_1
	jmp	.LBB73_2
.LBB73_1:                               # %if.then
	movl	$626, %edi              # imm = 0x272
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -32(%rbp)         # 8-byte Spill
.LBB73_2:                               # %if.end
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rcx
	callq	mapcar1
	movq	-16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end73:
	.size	Fmapc, .Lfunc_end73-Fmapc
	.cfi_endproc

	.globl	do_yes_or_no_p
	.align	16, 0x90
	.type	do_yes_or_no_p,@function
do_yes_or_no_p:                         # @do_yes_or_no_p
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp222:
	.cfi_def_cfa_offset 16
.Ltmp223:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp224:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movabsq	$.L.str.3, %rax
	movq	%rdi, -8(%rbp)
	movq	%rax, %rdi
	callq	intern
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	call1
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end74:
	.size	do_yes_or_no_p, .Lfunc_end74-do_yes_or_no_p
	.cfi_endproc

	.globl	Fyes_or_no_p
	.align	16, 0x90
	.type	Fyes_or_no_p,@function
Fyes_or_no_p:                           # @Fyes_or_no_p
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp225:
	.cfi_def_cfa_offset 16
.Ltmp226:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp227:
	.cfi_def_cfa_register %rbp
	subq	$240, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	CHECK_STRING
	xorl	%edi, %edi
	movq	globals+3016, %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB75_2
# BB#1:                                 # %lor.lhs.false
	movq	globals+3016, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB75_5
.LBB75_2:                               # %land.lhs.true
	testb	$1, globals+3433
	je	.LBB75_5
# BB#3:                                 # %land.lhs.true.4
	xorl	%edi, %edi
	movq	globals+3008, %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-120(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB75_5
# BB#4:                                 # %if.then
	movl	$4, %edi
	callq	redisplay_preserve_echo_area
	movabsq	$.L.str.4, %rdi
	callq	build_string
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movabsq	$.L.str.5, %rdi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	build_string
	xorl	%edi, %edi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	list2
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	Fcons
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -40(%rbp)
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	-40(%rbp), %rsi
	movq	%rax, -152(%rbp)        # 8-byte Spill
	movq	%rsi, -160(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	-160(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fx_popup_dialog
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB75_13
.LBB75_5:                               # %if.end
	movl	$4, %esi
	leaq	-88(%rbp), %rax
	movabsq	$.L.str.6, %rcx
	movq	$12, -88(%rbp)
	movq	$-1, -80(%rbp)
	movq	$0, -72(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movl	$2, %esi
	movl	%esi, %edi
	leaq	-104(%rbp), %rsi
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -96(%rbp)
	callq	Fconcat
	movq	%rax, -16(%rbp)
.LBB75_6:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$1072, %edi             # imm = 0x430
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	-176(%rbp), %rsi        # 8-byte Reload
	movq	-184(%rbp), %rdx        # 8-byte Reload
	movq	-192(%rbp), %rcx        # 8-byte Reload
	movq	-200(%rbp), %r8         # 8-byte Reload
	movq	-208(%rbp), %r9         # 8-byte Reload
	movq	%rax, (%rsp)
	callq	Fread_from_minibuffer
	movq	%rax, %rdi
	callq	Fdowncase
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	SCHARS
	cmpq	$3, %rax
	jne	.LBB75_9
# BB#7:                                 # %land.lhs.true.34
                                        #   in Loop: Header=BB75_6 Depth=1
	movq	-24(%rbp), %rdi
	callq	SSDATA
	movl	$.L.str.7, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB75_9
# BB#8:                                 # %if.then.38
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB75_13
.LBB75_9:                               # %if.end.40
                                        #   in Loop: Header=BB75_6 Depth=1
	movq	-24(%rbp), %rdi
	callq	SCHARS
	cmpq	$2, %rax
	jne	.LBB75_12
# BB#10:                                # %land.lhs.true.44
                                        #   in Loop: Header=BB75_6 Depth=1
	movq	-24(%rbp), %rdi
	callq	SSDATA
	movl	$.L.str.8, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB75_12
# BB#11:                                # %if.then.48
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB75_13
.LBB75_12:                              # %if.end.50
                                        #   in Loop: Header=BB75_6 Depth=1
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	Fding
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	Fdiscard_input
	movabsq	$.L.str.9, %rdi
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	message1
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movl	$10, %edi
                                        # kill: RDI<def> EDI<kill>
	movq	%rax, %rsi
	callq	Fsleep_for
	movq	%rax, -232(%rbp)        # 8-byte Spill
	jmp	.LBB75_6
.LBB75_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$240, %rsp
	popq	%rbp
	retq
.Lfunc_end75:
	.size	Fyes_or_no_p, .Lfunc_end75-Fyes_or_no_p
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI76_0:
	.quad	4636737291354636288     # double 100
.LCPI76_1:
	.quad	4890909195324358656     # double 9.2233720368547758E+18
	.text
	.globl	Fload_average
	.align	16, 0x90
	.type	Fload_average,@function
Fload_average:                          # @Fload_average
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp228:
	.cfi_def_cfa_offset 16
.Ltmp229:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp230:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movl	$3, %esi
	leaq	-32(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movq	%rax, %rdi
	callq	getloadavg
	xorl	%edi, %edi
	movl	%eax, -36(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, -48(%rbp)
	cmpl	$0, -36(%rbp)
	jge	.LBB76_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.10, %rdi
	movb	$0, %al
	callq	error
.LBB76_2:                               # %if.end
	jmp	.LBB76_3
.LBB76_3:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -36(%rbp)
	cmpl	$0, %eax
	jle	.LBB76_8
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB76_3 Depth=1
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB76_6
# BB#5:                                 # %cond.true
                                        #   in Loop: Header=BB76_3 Depth=1
	movslq	-36(%rbp), %rax
	movsd	-32(%rbp,%rax,8), %xmm0 # xmm0 = mem[0],zero
	movsd	.LCPI76_0(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	.LCPI76_1(%rip), %xmm1  # xmm1 = mem[0],zero
	movaps	%xmm0, %xmm2
	subsd	%xmm1, %xmm2
	cvttsd2si	%xmm2, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	cvttsd2si	%xmm0, %rcx
	ucomisd	%xmm1, %xmm0
	cmovbq	%rcx, %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jmp	.LBB76_7
.LBB76_6:                               # %cond.false
                                        #   in Loop: Header=BB76_3 Depth=1
	movslq	-36(%rbp), %rax
	movsd	-32(%rbp,%rax,8), %xmm0 # xmm0 = mem[0],zero
	callq	make_float
	movq	%rax, -72(%rbp)         # 8-byte Spill
.LBB76_7:                               # %cond.end
                                        #   in Loop: Header=BB76_3 Depth=1
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	Fcons
	movq	%rax, -48(%rbp)
	jmp	.LBB76_3
.LBB76_8:                               # %while.end
	movq	-48(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end76:
	.size	Fload_average, .Lfunc_end76-Fload_average
	.cfi_endproc

	.globl	Ffeaturep
	.align	16, 0x90
	.type	Ffeaturep,@function
Ffeaturep:                              # @Ffeaturep
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp231:
	.cfi_def_cfa_offset 16
.Ltmp232:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp233:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	andq	$7, %rsi
	movl	%esi, %eax
	cmpl	$0, %eax
	jne	.LBB77_2
# BB#1:                                 # %cond.true
	jmp	.LBB77_3
.LBB77_2:                               # %cond.false
	movl	$897, %edi              # imm = 0x381
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -32(%rbp)         # 8-byte Spill
.LBB77_3:                               # %cond.end
	movq	-8(%rbp), %rdi
	movq	globals+736, %rsi
	callq	Fmemq
	xorl	%edi, %edi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB77_6
# BB#4:                                 # %land.lhs.true
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB77_6
# BB#5:                                 # %if.then
	movl	$887, %edi              # imm = 0x377
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fget
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fmember
	movq	%rax, -24(%rbp)
.LBB77_6:                               # %if.end
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB77_8
# BB#7:                                 # %cond.true.15
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB77_9
.LBB77_8:                               # %cond.false.17
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB77_9:                               # %cond.end.19
	movq	-80(%rbp), %rax         # 8-byte Reload
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end77:
	.size	Ffeaturep, .Lfunc_end77-Ffeaturep
	.cfi_endproc

	.globl	Fprovide
	.align	16, 0x90
	.type	Fprovide,@function
Fprovide:                               # @Fprovide
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp234:
	.cfi_def_cfa_offset 16
.Ltmp235:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp236:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	andq	$7, %rsi
	movl	%esi, %eax
	cmpl	$0, %eax
	jne	.LBB78_2
# BB#1:                                 # %cond.true
	jmp	.LBB78_3
.LBB78_2:                               # %cond.false
	movl	$897, %edi              # imm = 0x381
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -32(%rbp)         # 8-byte Spill
.LBB78_3:                               # %cond.end
	movq	-16(%rbp), %rdi
	callq	CHECK_LIST
	xorl	%edi, %edi
	movq	Vautoload_queue, %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB78_5
# BB#4:                                 # %if.then
	movl	$2, %eax
	movl	%eax, %edi
	movq	globals+736, %rsi
	callq	Fcons
	movq	Vautoload_queue, %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	%rax, Vautoload_queue
.LBB78_5:                               # %if.end
	movq	-8(%rbp), %rdi
	movq	globals+736, %rsi
	callq	Fmemq
	xorl	%edi, %edi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB78_7
# BB#6:                                 # %if.then.11
	movq	-8(%rbp), %rdi
	movq	globals+736, %rsi
	callq	Fcons
	movq	%rax, globals+736
.LBB78_7:                               # %if.end.13
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB78_9
# BB#8:                                 # %if.then.17
	movl	$887, %edi              # imm = 0x377
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rdx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fput
	movq	%rax, -72(%rbp)         # 8-byte Spill
.LBB78_9:                               # %if.end.20
	movl	$779, %edi              # imm = 0x30B
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	%rax, %rdi
	callq	LOADHIST_ATTACH
	movq	-8(%rbp), %rdi
	movq	globals+24, %rsi
	callq	Fassq
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB78_11
# BB#10:                                # %if.then.28
	movl	$474, %edi              # imm = 0x1DA
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rcx
	subq	$3, %rcx
	movq	8(%rcx), %rsi
	movq	%rax, %rdi
	callq	Fmapc
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB78_11:                              # %if.end.31
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end78:
	.size	Fprovide, .Lfunc_end78-Fprovide
	.cfi_endproc

	.globl	Frequire
	.align	16, 0x90
	.type	Frequire,@function
Frequire:                               # @Frequire
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp237:
	.cfi_def_cfa_offset 16
.Ltmp238:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp239:
	.cfi_def_cfa_register %rbp
	subq	$208, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movb	globals+3406, %al
	andb	$1, %al
	movb	%al, -41(%rbp)
	movq	-16(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %ecx
	cmpl	$0, %ecx
	jne	.LBB79_2
# BB#1:                                 # %cond.true
	jmp	.LBB79_3
.LBB79_2:                               # %cond.false
	movl	$897, %edi              # imm = 0x381
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -72(%rbp)         # 8-byte Spill
.LBB79_3:                               # %cond.end
	testb	$1, -41(%rbp)
	jne	.LBB79_12
# BB#4:                                 # %if.then
	movq	globals+392, %rax
	movq	%rax, -40(%rbp)
.LBB79_5:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB79_11
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB79_5 Depth=1
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB79_9
# BB#7:                                 # %land.lhs.true
                                        #   in Loop: Header=BB79_5 Depth=1
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB79_8
	jmp	.LBB79_9
.LBB79_8:                               # %if.then.13
                                        #   in Loop: Header=BB79_5 Depth=1
	movb	$1, -41(%rbp)
.LBB79_9:                               # %if.end
                                        #   in Loop: Header=BB79_5 Depth=1
	jmp	.LBB79_10
.LBB79_10:                              # %for.inc
                                        #   in Loop: Header=BB79_5 Depth=1
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB79_5
.LBB79_11:                              # %for.end
	jmp	.LBB79_12
.LBB79_12:                              # %if.end.17
	testb	$1, -41(%rbp)
	je	.LBB79_16
# BB#13:                                # %if.then.19
	movl	$808, %edi              # imm = 0x328
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	movq	globals+392, %rsi
	callq	Fmember
	xorl	%edi, %edi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB79_15
# BB#14:                                # %if.then.26
	movq	-40(%rbp), %rdi
	callq	LOADHIST_ATTACH
.LBB79_15:                              # %if.end.27
	jmp	.LBB79_16
.LBB79_16:                              # %if.end.28
	movq	-16(%rbp), %rdi
	movq	globals+736, %rsi
	callq	Fmemq
	xorl	%edi, %edi
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB79_37
# BB#17:                                # %if.then.33
	callq	SPECPDL_INDEX
	xorl	%edi, %edi
	movq	%rax, -56(%rbp)
	movl	$0, -60(%rbp)
	movq	globals+1920, %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB79_19
# BB#18:                                # %if.then.38
	movq	-16(%rbp), %rdi
	callq	SYMBOL_NAME
	movq	%rax, %rdi
	callq	SDATA
	movabsq	$.L.str.11, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	error
.LBB79_19:                              # %if.end.41
	movq	require_nesting_list, %rax
	movq	%rax, -40(%rbp)
.LBB79_20:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	xorb	$-1, %dl
	testb	$1, %dl
	jne	.LBB79_21
	jmp	.LBB79_24
.LBB79_21:                              # %while.body
                                        #   in Loop: Header=BB79_20 Depth=1
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rsi
	callq	Fequal
	xorl	%edi, %edi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-120(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB79_23
# BB#22:                                # %if.then.51
                                        #   in Loop: Header=BB79_20 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
.LBB79_23:                              # %if.end.52
                                        #   in Loop: Header=BB79_20 Depth=1
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB79_20
.LBB79_24:                              # %while.end
	cmpl	$3, -60(%rbp)
	jle	.LBB79_26
# BB#25:                                # %if.then.58
	movq	-16(%rbp), %rdi
	callq	SYMBOL_NAME
	movq	%rax, %rdi
	callq	SDATA
	movabsq	$.L.str.12, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	error
.LBB79_26:                              # %if.end.61
	movabsq	$require_unwind, %rdi
	movq	require_nesting_list, %rsi
	callq	record_unwind_protect
	movq	-16(%rbp), %rdi
	movq	require_nesting_list, %rsi
	callq	Fcons
	movabsq	$un_autoload, %rdi
	movq	%rax, require_nesting_list
	movq	Vautoload_queue, %rsi
	callq	record_unwind_protect
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, Vautoload_queue
	movq	-24(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-128(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB79_28
# BB#27:                                # %cond.true.67
	movq	-16(%rbp), %rdi
	callq	Fsymbol_name
	movq	%rax, -136(%rbp)        # 8-byte Spill
	jmp	.LBB79_29
.LBB79_28:                              # %cond.false.69
	movq	-24(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
.LBB79_29:                              # %cond.end.70
	movq	-136(%rbp), %rax        # 8-byte Reload
	movl	$901, %edi              # imm = 0x385
	movq	-32(%rbp), %rsi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	movq	%rsi, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	-24(%rbp), %rsi
	movq	%rax, -168(%rbp)        # 8-byte Spill
	movq	%rsi, -176(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-176(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB79_31
# BB#30:                                # %cond.true.76
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -184(%rbp)        # 8-byte Spill
	jmp	.LBB79_32
.LBB79_31:                              # %cond.false.78
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -184(%rbp)        # 8-byte Spill
.LBB79_32:                              # %cond.end.80
	movq	-184(%rbp), %rax        # 8-byte Reload
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	-152(%rbp), %rsi        # 8-byte Reload
	movq	-160(%rbp), %rdx        # 8-byte Reload
	movq	-168(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %r8
	callq	Fload
	xorl	%edi, %edi
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-192(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB79_34
# BB#33:                                # %if.then.86
	xorl	%edi, %edi
	movq	-56(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -8(%rbp)
	jmp	.LBB79_38
.LBB79_34:                              # %if.end.89
	movq	-16(%rbp), %rdi
	movq	globals+736, %rsi
	callq	Fmemq
	xorl	%edi, %edi
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-208(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB79_36
# BB#35:                                # %if.then.94
	movq	-16(%rbp), %rdi
	callq	SYMBOL_NAME
	movq	%rax, %rdi
	callq	SDATA
	movabsq	$.L.str.13, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	error
.LBB79_36:                              # %if.end.97
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, Vautoload_queue
	movq	-56(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	unbind_to
	movq	%rax, -16(%rbp)
.LBB79_37:                              # %if.end.100
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB79_38:                              # %return
	movq	-8(%rbp), %rax
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end79:
	.size	Frequire, .Lfunc_end79-Frequire
	.cfi_endproc

	.align	16, 0x90
	.type	require_unwind,@function
require_unwind:                         # @require_unwind
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp240:
	.cfi_def_cfa_offset 16
.Ltmp241:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp242:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, require_nesting_list
	popq	%rbp
	retq
.Lfunc_end80:
	.size	require_unwind, .Lfunc_end80-require_unwind
	.cfi_endproc

	.globl	Fplist_member
	.align	16, 0x90
	.type	Fplist_member,@function
Fplist_member:                          # @Fplist_member
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp243:
	.cfi_def_cfa_offset 16
.Ltmp244:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp245:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
.LBB81_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$3, %eax
	movb	%cl, -17(%rbp)          # 1-byte Spill
	jne	.LBB81_3
# BB#2:                                 # %land.rhs
                                        #   in Loop: Header=BB81_1 Depth=1
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	cmpq	-16(%rbp), %rax
	sete	%cl
	xorb	$-1, %cl
	movb	%cl, -17(%rbp)          # 1-byte Spill
.LBB81_3:                               # %land.end
                                        #   in Loop: Header=BB81_1 Depth=1
	movb	-17(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB81_4
	jmp	.LBB81_13
.LBB81_4:                               # %while.body
                                        #   in Loop: Header=BB81_1 Depth=1
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	CDR
	movq	%rax, -8(%rbp)
# BB#5:                                 # %do.body
                                        #   in Loop: Header=BB81_1 Depth=1
	xorl	%edi, %edi
	movq	globals+1928, %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB81_8
# BB#6:                                 # %land.lhs.true
                                        #   in Loop: Header=BB81_1 Depth=1
	xorl	%edi, %edi
	movq	globals+1104, %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB81_8
# BB#7:                                 # %if.then
                                        #   in Loop: Header=BB81_1 Depth=1
	callq	process_quit_flag
	jmp	.LBB81_11
.LBB81_8:                               # %if.else
                                        #   in Loop: Header=BB81_1 Depth=1
	movb	pending_signals, %al
	testb	$1, %al
	je	.LBB81_10
# BB#9:                                 # %if.then.11
                                        #   in Loop: Header=BB81_1 Depth=1
	callq	process_pending_signals
.LBB81_10:                              # %if.end
                                        #   in Loop: Header=BB81_1 Depth=1
	jmp	.LBB81_11
.LBB81_11:                              # %if.end.12
                                        #   in Loop: Header=BB81_1 Depth=1
	jmp	.LBB81_12
.LBB81_12:                              # %do.end
                                        #   in Loop: Header=BB81_1 Depth=1
	jmp	.LBB81_1
.LBB81_13:                              # %while.end
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end81:
	.size	Fplist_member, .Lfunc_end81-Fplist_member
	.cfi_endproc

	.globl	Fwidget_put
	.align	16, 0x90
	.type	Fwidget_put,@function
Fwidget_put:                            # @Fwidget_put
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp246:
	.cfi_def_cfa_offset 16
.Ltmp247:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp248:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	CHECK_CONS
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rdx
	subq	$3, %rdx
	movq	8(%rdx), %rdx
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	callq	Fplist_put
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	XSETCDR
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end82:
	.size	Fwidget_put, .Lfunc_end82-Fwidget_put
	.cfi_endproc

	.globl	Fwidget_get
	.align	16, 0x90
	.type	Fwidget_get,@function
Fwidget_get:                            # @Fwidget_get
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp249:
	.cfi_def_cfa_offset 16
.Ltmp250:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp251:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
.LBB83_1:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB83_3
# BB#2:                                 # %if.then
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB83_8
.LBB83_3:                               # %if.end
                                        #   in Loop: Header=BB83_1 Depth=1
	movq	-16(%rbp), %rdi
	callq	CHECK_CONS
	movq	-16(%rbp), %rdi
	subq	$3, %rdi
	movq	8(%rdi), %rdi
	movq	-24(%rbp), %rsi
	callq	Fplist_member
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB83_5
# BB#4:                                 # %if.then.5
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	CAR
	movq	%rax, -8(%rbp)
	jmp	.LBB83_8
.LBB83_5:                               # %if.end.10
                                        #   in Loop: Header=BB83_1 Depth=1
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB83_7
# BB#6:                                 # %if.then.15
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB83_8
.LBB83_7:                               # %if.end.17
                                        #   in Loop: Header=BB83_1 Depth=1
	movl	$1016, %edi             # imm = 0x3F8
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fget
	movq	%rax, -16(%rbp)
	jmp	.LBB83_1
.LBB83_8:                               # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end83:
	.size	Fwidget_get, .Lfunc_end83-Fwidget_get
	.cfi_endproc

	.globl	Fwidget_apply
	.align	16, 0x90
	.type	Fwidget_apply,@function
Fwidget_apply:                          # @Fwidget_apply
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp252:
	.cfi_def_cfa_offset 16
.Ltmp253:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp254:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	Fwidget_get
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	subq	$2, %rax
	movq	-16(%rbp), %rsi
	addq	$16, %rsi
	movq	%rax, %rdi
	callq	Flist
	movl	$3, %ecx
	movl	%ecx, %edi
	leaq	-80(%rbp), %rsi
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	Fapply
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end84:
	.size	Fwidget_apply, .Lfunc_end84-Fwidget_apply
	.cfi_endproc

	.globl	Flocale_info
	.align	16, 0x90
	.type	Flocale_info,@function
Flocale_info:                           # @Flocale_info
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp255:
	.cfi_def_cfa_offset 16
.Ltmp256:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp257:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movl	$276, %eax              # imm = 0x114
	movq	%rdi, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB85_2
# BB#1:                                 # %if.then
	movl	$14, %edi
	callq	nl_langinfo
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	build_string
	movq	%rax, -8(%rbp)
	jmp	.LBB85_17
.LBB85_2:                               # %if.else
	movl	$317, %edi              # imm = 0x13D
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB85_8
# BB#3:                                 # %if.then.5
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movl	$30, %edi
                                        # kill: RDI<def> EDI<kill>
	movq	%rax, %rsi
	callq	Fmake_vector
	movq	%rax, -40(%rbp)
	callq	synchronize_system_time_locale
	movl	$0, -44(%rbp)
.LBB85_4:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$7, -44(%rbp)
	jge	.LBB85_7
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB85_4 Depth=1
	movslq	-44(%rbp), %rax
	movl	Flocale_info.days(,%rax,4), %edi
	callq	nl_langinfo
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	build_unibyte_string
	xorl	%edx, %edx
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rdi
	movslq	-44(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	globals+1344, %rcx
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	movq	%rcx, %rsi
	callq	code_convert_string_norecord
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	-96(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
# BB#6:                                 # %for.inc
                                        #   in Loop: Header=BB85_4 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB85_4
.LBB85_7:                               # %for.end
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB85_17
.LBB85_8:                               # %if.else.12
	movl	$683, %edi              # imm = 0x2AB
	movq	-16(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB85_14
# BB#9:                                 # %if.then.16
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movl	$50, %edi
                                        # kill: RDI<def> EDI<kill>
	movq	%rax, %rsi
	callq	Fmake_vector
	movq	%rax, -56(%rbp)
	callq	synchronize_system_time_locale
	movl	$0, -60(%rbp)
.LBB85_10:                              # %for.cond.21
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$12, -60(%rbp)
	jge	.LBB85_13
# BB#11:                                # %for.body.24
                                        #   in Loop: Header=BB85_10 Depth=1
	movslq	-60(%rbp), %rax
	movl	Flocale_info.months(,%rax,4), %edi
	callq	nl_langinfo
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	build_unibyte_string
	xorl	%edx, %edx
	movq	%rax, -32(%rbp)
	movq	-56(%rbp), %rdi
	movslq	-60(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	globals+1344, %rcx
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -120(%rbp)        # 8-byte Spill
	movq	%rcx, %rsi
	callq	code_convert_string_norecord
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	-120(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
# BB#12:                                # %for.inc.31
                                        #   in Loop: Header=BB85_10 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB85_10
.LBB85_13:                              # %for.end.33
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB85_17
.LBB85_14:                              # %if.end
	jmp	.LBB85_15
.LBB85_15:                              # %if.end.34
	jmp	.LBB85_16
.LBB85_16:                              # %if.end.35
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB85_17:                              # %return
	movq	-8(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end85:
	.size	Flocale_info, .Lfunc_end85-Flocale_info
	.cfi_endproc

	.globl	Fbase64_encode_region
	.align	16, 0x90
	.type	Fbase64_encode_region,@function
Fbase64_encode_region:                  # @Fbase64_encode_region
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp258:
	.cfi_def_cfa_offset 16
.Ltmp259:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp260:
	.cfi_def_cfa_register %rbp
	subq	$224, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	current_buffer, %rdx
	movq	736(%rdx), %rdx
	addq	$0, %rdx
	movq	%rdx, -80(%rbp)
	movq	$16384, -88(%rbp)       # imm = 0x4000
	callq	SPECPDL_INDEX
	leaq	-8(%rbp), %rdi
	leaq	-16(%rbp), %rsi
	movq	%rax, -96(%rbp)
	movb	$0, -97(%rbp)
	callq	validate_region
	movq	current_buffer, %rdi
	movq	-8(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, %rsi
	callq	buf_charpos_to_bytepos
	movq	%rax, -56(%rbp)
	movq	current_buffer, %rdi
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, %rsi
	callq	buf_charpos_to_bytepos
	movq	%rax, -64(%rbp)
	movq	-8(%rbp), %rax
	sarq	$2, %rax
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	move_gap_both
	movl	$76, %ecx
	movl	%ecx, %eax
	movl	$3, %ecx
	movl	%ecx, %edx
	movq	-64(%rbp), %rsi
	subq	-56(%rbp), %rsi
	movq	%rsi, -48(%rbp)
	movq	-48(%rbp), %rsi
	movq	-48(%rbp), %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	movq	%rdi, %rax
	movq	%rdx, -120(%rbp)        # 8-byte Spill
	cqto
	movq	-120(%rbp), %rdi        # 8-byte Reload
	idivq	%rdi
	addq	%rax, %rsi
	addq	$1, %rsi
	movq	%rsi, -40(%rbp)
	movq	-40(%rbp), %rax
	cqto
	movq	-112(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	addq	$1, %rax
	addq	$6, %rax
	addq	-40(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jg	.LBB86_2
# BB#1:                                 # %cond.true
	movq	-40(%rbp), %rax
	movq	-88(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -88(%rbp)
	movq	-40(%rbp), %rax
	addq	$15, %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	jmp	.LBB86_3
.LBB86_2:                               # %cond.false
	movb	$1, -97(%rbp)
	movq	-40(%rbp), %rdi
	callq	record_xmalloc
	movq	%rax, -128(%rbp)        # 8-byte Spill
.LBB86_3:                               # %cond.end
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%rax, -32(%rbp)
	movq	-56(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB86_5
# BB#4:                                 # %cond.true.14
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	jmp	.LBB86_6
.LBB86_5:                               # %cond.false.16
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	jmp	.LBB86_6
.LBB86_6:                               # %cond.end.17
	movq	-136(%rbp), %rax        # 8-byte Reload
	xorl	%edi, %edi
	addq	-56(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	(%rcx), %rax
	addq	$-1, %rax
	movq	-32(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	movq	%rax, -152(%rbp)        # 8-byte Spill
	movq	%rsi, -160(%rbp)        # 8-byte Spill
	movq	%rdx, -168(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	-144(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%r8b
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	movb	%r8b, -177(%rbp)        # 1-byte Spill
	callq	builtin_lisp_symbol
	movq	-176(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%r8b
	xorb	$-1, %r8b
	movb	-177(%rbp), %r9b        # 1-byte Reload
	movzbl	%r9b, %edi
	andl	$1, %edi
	movzbl	%r8b, %r10d
	andl	$1, %r10d
	movq	-152(%rbp), %rax        # 8-byte Reload
	movl	%edi, -184(%rbp)        # 4-byte Spill
	movq	%rax, %rdi
	movq	-160(%rbp), %rsi        # 8-byte Reload
	movq	-168(%rbp), %rdx        # 8-byte Reload
	movl	-184(%rbp), %ecx        # 4-byte Reload
	movl	%r10d, %r8d
	callq	base64_encode_1
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jle	.LBB86_8
# BB#7:                                 # %if.then
	callq	emacs_abort
.LBB86_8:                               # %if.end
	cmpq	$0, -72(%rbp)
	jge	.LBB86_14
# BB#9:                                 # %if.then.30
	jmp	.LBB86_10
.LBB86_10:                              # %do.body
	testb	$1, -97(%rbp)
	je	.LBB86_12
# BB#11:                                # %if.then.31
	xorl	%edi, %edi
	movb	$0, -97(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -200(%rbp)        # 8-byte Spill
.LBB86_12:                              # %if.end.34
	jmp	.LBB86_13
.LBB86_13:                              # %do.end
	movabsq	$.L.str.14, %rdi
	movb	$0, %al
	callq	error
.LBB86_14:                              # %if.end.35
	movq	-8(%rbp), %rax
	sarq	$2, %rax
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	set_point_both
	movq	-32(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	insert
# BB#15:                                # %do.body.37
	testb	$1, -97(%rbp)
	je	.LBB86_17
# BB#16:                                # %if.then.39
	xorl	%edi, %edi
	movb	$0, -97(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -216(%rbp)        # 8-byte Spill
.LBB86_17:                              # %if.end.42
	jmp	.LBB86_18
.LBB86_18:                              # %do.end.43
	movl	$1, %edx
	movq	-56(%rbp), %rax
	addq	-72(%rbp), %rax
	movq	-64(%rbp), %rcx
	addq	-72(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	del_range_byte
	movq	-80(%rbp), %rax
	movq	-16(%rbp), %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	jl	.LBB86_20
# BB#19:                                # %if.then.48
	movq	-72(%rbp), %rax
	movq	-16(%rbp), %rcx
	sarq	$2, %rcx
	movq	-8(%rbp), %rdx
	sarq	$2, %rdx
	subq	%rdx, %rcx
	subq	%rcx, %rax
	addq	-80(%rbp), %rax
	movq	%rax, -80(%rbp)
	jmp	.LBB86_23
.LBB86_20:                              # %if.else
	movq	-80(%rbp), %rax
	movq	-8(%rbp), %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	jle	.LBB86_22
# BB#21:                                # %if.then.56
	movq	-8(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -80(%rbp)
.LBB86_22:                              # %if.end.58
	jmp	.LBB86_23
.LBB86_23:                              # %if.end.59
	movq	-80(%rbp), %rdi
	callq	set_point
	movq	-72(%rbp), %rdi
	shlq	$2, %rdi
	addq	$2, %rdi
	movq	%rdi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end86:
	.size	Fbase64_encode_region, .Lfunc_end86-Fbase64_encode_region
	.cfi_endproc

	.align	16, 0x90
	.type	base64_encode_1,@function
base64_encode_1:                        # @base64_encode_1
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp261:
	.cfi_def_cfa_offset 16
.Ltmp262:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp263:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movb	%r8b, %al
	movb	%cl, %r9b
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	andb	$1, %r9b
	movb	%r9b, -33(%rbp)
	andb	$1, %al
	movb	%al, -34(%rbp)
	movl	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -56(%rbp)
.LBB87_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-48(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jge	.LBB87_72
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB87_1 Depth=1
	testb	$1, -34(%rbp)
	je	.LBB87_21
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB87_1 Depth=1
	movq	-16(%rbp), %rax
	movq	-48(%rbp), %rcx
	movzbl	(%rax,%rcx), %edx
	andl	$128, %edx
	cmpl	$0, %edx
	jne	.LBB87_5
# BB#4:                                 # %cond.true
                                        #   in Loop: Header=BB87_1 Depth=1
	movl	$1, -68(%rbp)
	movq	-16(%rbp), %rax
	movq	-48(%rbp), %rcx
	movzbl	(%rax,%rcx), %edx
	movl	%edx, -72(%rbp)         # 4-byte Spill
	jmp	.LBB87_12
.LBB87_5:                               # %cond.false
                                        #   in Loop: Header=BB87_1 Depth=1
	movq	-16(%rbp), %rax
	movq	-48(%rbp), %rcx
	movzbl	(%rax,%rcx), %edx
	andl	$32, %edx
	cmpl	$0, %edx
	jne	.LBB87_7
# BB#6:                                 # %cond.true.11
                                        #   in Loop: Header=BB87_1 Depth=1
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
	movl	$2, -68(%rbp)
	movq	-16(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movzbl	(%rdx,%rsi), %edi
	andl	$31, %edi
	shll	$6, %edi
	movq	-16(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movzbl	1(%rdx,%rsi), %r8d
	andl	$63, %r8d
	orl	%r8d, %edi
	movq	-16(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movzbl	(%rdx,%rsi), %r8d
	cmpl	$194, %r8d
	cmovll	%ecx, %eax
	addl	%eax, %edi
	movl	%edi, -76(%rbp)         # 4-byte Spill
	jmp	.LBB87_11
.LBB87_7:                               # %cond.false.25
                                        #   in Loop: Header=BB87_1 Depth=1
	movq	-16(%rbp), %rax
	movq	-48(%rbp), %rcx
	movzbl	(%rax,%rcx), %edx
	andl	$16, %edx
	cmpl	$0, %edx
	jne	.LBB87_9
# BB#8:                                 # %cond.true.31
                                        #   in Loop: Header=BB87_1 Depth=1
	movl	$3, -68(%rbp)
	movq	-16(%rbp), %rax
	movq	-48(%rbp), %rcx
	movzbl	(%rax,%rcx), %edx
	andl	$15, %edx
	shll	$12, %edx
	movq	-16(%rbp), %rax
	movq	-48(%rbp), %rcx
	movzbl	1(%rax,%rcx), %esi
	andl	$63, %esi
	shll	$6, %esi
	orl	%esi, %edx
	movq	-16(%rbp), %rax
	movq	-48(%rbp), %rcx
	movzbl	2(%rax,%rcx), %esi
	andl	$63, %esi
	orl	%esi, %edx
	movl	%edx, -80(%rbp)         # 4-byte Spill
	jmp	.LBB87_10
.LBB87_9:                               # %cond.false.48
                                        #   in Loop: Header=BB87_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-68(%rbp), %rdx
	movq	-16(%rbp), %rcx
	addq	-48(%rbp), %rcx
	movq	%rcx, %rdi
	callq	string_char
	movl	%eax, -80(%rbp)         # 4-byte Spill
.LBB87_10:                              # %cond.end
                                        #   in Loop: Header=BB87_1 Depth=1
	movl	-80(%rbp), %eax         # 4-byte Reload
	movl	%eax, -76(%rbp)         # 4-byte Spill
.LBB87_11:                              # %cond.end.51
                                        #   in Loop: Header=BB87_1 Depth=1
	movl	-76(%rbp), %eax         # 4-byte Reload
	movl	%eax, -72(%rbp)         # 4-byte Spill
.LBB87_12:                              # %cond.end.53
                                        #   in Loop: Header=BB87_1 Depth=1
	movl	-72(%rbp), %eax         # 4-byte Reload
	movl	%eax, -60(%rbp)
	cmpl	$4194175, -60(%rbp)     # imm = 0x3FFF7F
	jle	.LBB87_17
# BB#13:                                # %if.then.57
                                        #   in Loop: Header=BB87_1 Depth=1
	cmpl	$4194175, -60(%rbp)     # imm = 0x3FFF7F
	jle	.LBB87_15
# BB#14:                                # %cond.true.60
                                        #   in Loop: Header=BB87_1 Depth=1
	movl	-60(%rbp), %eax
	subl	$4194048, %eax          # imm = 0x3FFF00
	movl	%eax, -84(%rbp)         # 4-byte Spill
	jmp	.LBB87_16
.LBB87_15:                              # %cond.false.61
                                        #   in Loop: Header=BB87_1 Depth=1
	movl	-60(%rbp), %eax
	andl	$255, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
.LBB87_16:                              # %cond.end.63
                                        #   in Loop: Header=BB87_1 Depth=1
	movl	-84(%rbp), %eax         # 4-byte Reload
	movl	%eax, -60(%rbp)
	jmp	.LBB87_20
.LBB87_17:                              # %if.else
                                        #   in Loop: Header=BB87_1 Depth=1
	cmpl	$256, -60(%rbp)         # imm = 0x100
	jl	.LBB87_19
# BB#18:                                # %if.then.67
	movq	$-1, -8(%rbp)
	jmp	.LBB87_73
.LBB87_19:                              # %if.end
                                        #   in Loop: Header=BB87_1 Depth=1
	jmp	.LBB87_20
.LBB87_20:                              # %if.end.68
                                        #   in Loop: Header=BB87_1 Depth=1
	movslq	-68(%rbp), %rax
	addq	-48(%rbp), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB87_22
.LBB87_21:                              # %if.else.71
                                        #   in Loop: Header=BB87_1 Depth=1
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -48(%rbp)
	movq	-16(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	movl	%edx, -60(%rbp)
.LBB87_22:                              # %if.end.74
                                        #   in Loop: Header=BB87_1 Depth=1
	testb	$1, -33(%rbp)
	je	.LBB87_27
# BB#23:                                # %if.then.76
                                        #   in Loop: Header=BB87_1 Depth=1
	cmpl	$19, -40(%rbp)
	jge	.LBB87_25
# BB#24:                                # %if.then.79
                                        #   in Loop: Header=BB87_1 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB87_26
.LBB87_25:                              # %if.else.81
                                        #   in Loop: Header=BB87_1 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -56(%rbp)
	movb	$10, (%rax)
	movl	$1, -40(%rbp)
.LBB87_26:                              # %if.end.82
                                        #   in Loop: Header=BB87_1 Depth=1
	jmp	.LBB87_27
.LBB87_27:                              # %if.end.83
                                        #   in Loop: Header=BB87_1 Depth=1
	movl	-60(%rbp), %eax
	sarl	$2, %eax
	andl	$63, %eax
	movslq	%eax, %rcx
	movb	base64_value_to_char(,%rcx), %dl
	movq	-56(%rbp), %rcx
	movq	%rcx, %rsi
	addq	$1, %rsi
	movq	%rsi, -56(%rbp)
	movb	%dl, (%rcx)
	movl	-60(%rbp), %eax
	andl	$3, %eax
	shll	$4, %eax
	movl	%eax, -64(%rbp)
	movq	-48(%rbp), %rcx
	cmpq	-32(%rbp), %rcx
	jne	.LBB87_29
# BB#28:                                # %if.then.91
	movl	-64(%rbp), %eax
	movl	%eax, %ecx
	movb	base64_value_to_char(,%rcx), %dl
	movq	-56(%rbp), %rcx
	movq	%rcx, %rsi
	addq	$1, %rsi
	movq	%rsi, -56(%rbp)
	movb	%dl, (%rcx)
	movq	-56(%rbp), %rcx
	movq	%rcx, %rsi
	addq	$1, %rsi
	movq	%rsi, -56(%rbp)
	movb	$61, (%rcx)
	movq	-56(%rbp), %rcx
	movq	%rcx, %rsi
	addq	$1, %rsi
	movq	%rsi, -56(%rbp)
	movb	$61, (%rcx)
	jmp	.LBB87_72
.LBB87_29:                              # %if.end.97
                                        #   in Loop: Header=BB87_1 Depth=1
	testb	$1, -34(%rbp)
	je	.LBB87_48
# BB#30:                                # %if.then.99
                                        #   in Loop: Header=BB87_1 Depth=1
	movq	-16(%rbp), %rax
	movq	-48(%rbp), %rcx
	movzbl	(%rax,%rcx), %edx
	andl	$128, %edx
	cmpl	$0, %edx
	jne	.LBB87_32
# BB#31:                                # %cond.true.105
                                        #   in Loop: Header=BB87_1 Depth=1
	movl	$1, -68(%rbp)
	movq	-16(%rbp), %rax
	movq	-48(%rbp), %rcx
	movzbl	(%rax,%rcx), %edx
	movl	%edx, -88(%rbp)         # 4-byte Spill
	jmp	.LBB87_39
.LBB87_32:                              # %cond.false.109
                                        #   in Loop: Header=BB87_1 Depth=1
	movq	-16(%rbp), %rax
	movq	-48(%rbp), %rcx
	movzbl	(%rax,%rcx), %edx
	andl	$32, %edx
	cmpl	$0, %edx
	jne	.LBB87_34
# BB#33:                                # %cond.true.115
                                        #   in Loop: Header=BB87_1 Depth=1
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
	movl	$2, -68(%rbp)
	movq	-16(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movzbl	(%rdx,%rsi), %edi
	andl	$31, %edi
	shll	$6, %edi
	movq	-16(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movzbl	1(%rdx,%rsi), %r8d
	andl	$63, %r8d
	orl	%r8d, %edi
	movq	-16(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movzbl	(%rdx,%rsi), %r8d
	cmpl	$194, %r8d
	cmovll	%ecx, %eax
	addl	%eax, %edi
	movl	%edi, -92(%rbp)         # 4-byte Spill
	jmp	.LBB87_38
.LBB87_34:                              # %cond.false.133
                                        #   in Loop: Header=BB87_1 Depth=1
	movq	-16(%rbp), %rax
	movq	-48(%rbp), %rcx
	movzbl	(%rax,%rcx), %edx
	andl	$16, %edx
	cmpl	$0, %edx
	jne	.LBB87_36
# BB#35:                                # %cond.true.139
                                        #   in Loop: Header=BB87_1 Depth=1
	movl	$3, -68(%rbp)
	movq	-16(%rbp), %rax
	movq	-48(%rbp), %rcx
	movzbl	(%rax,%rcx), %edx
	andl	$15, %edx
	shll	$12, %edx
	movq	-16(%rbp), %rax
	movq	-48(%rbp), %rcx
	movzbl	1(%rax,%rcx), %esi
	andl	$63, %esi
	shll	$6, %esi
	orl	%esi, %edx
	movq	-16(%rbp), %rax
	movq	-48(%rbp), %rcx
	movzbl	2(%rax,%rcx), %esi
	andl	$63, %esi
	orl	%esi, %edx
	movl	%edx, -96(%rbp)         # 4-byte Spill
	jmp	.LBB87_37
.LBB87_36:                              # %cond.false.156
                                        #   in Loop: Header=BB87_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-68(%rbp), %rdx
	movq	-16(%rbp), %rcx
	addq	-48(%rbp), %rcx
	movq	%rcx, %rdi
	callq	string_char
	movl	%eax, -96(%rbp)         # 4-byte Spill
.LBB87_37:                              # %cond.end.159
                                        #   in Loop: Header=BB87_1 Depth=1
	movl	-96(%rbp), %eax         # 4-byte Reload
	movl	%eax, -92(%rbp)         # 4-byte Spill
.LBB87_38:                              # %cond.end.161
                                        #   in Loop: Header=BB87_1 Depth=1
	movl	-92(%rbp), %eax         # 4-byte Reload
	movl	%eax, -88(%rbp)         # 4-byte Spill
.LBB87_39:                              # %cond.end.163
                                        #   in Loop: Header=BB87_1 Depth=1
	movl	-88(%rbp), %eax         # 4-byte Reload
	movl	%eax, -60(%rbp)
	cmpl	$4194175, -60(%rbp)     # imm = 0x3FFF7F
	jle	.LBB87_44
# BB#40:                                # %if.then.167
                                        #   in Loop: Header=BB87_1 Depth=1
	cmpl	$4194175, -60(%rbp)     # imm = 0x3FFF7F
	jle	.LBB87_42
# BB#41:                                # %cond.true.170
                                        #   in Loop: Header=BB87_1 Depth=1
	movl	-60(%rbp), %eax
	subl	$4194048, %eax          # imm = 0x3FFF00
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jmp	.LBB87_43
.LBB87_42:                              # %cond.false.172
                                        #   in Loop: Header=BB87_1 Depth=1
	movl	-60(%rbp), %eax
	andl	$255, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
.LBB87_43:                              # %cond.end.174
                                        #   in Loop: Header=BB87_1 Depth=1
	movl	-100(%rbp), %eax        # 4-byte Reload
	movl	%eax, -60(%rbp)
	jmp	.LBB87_47
.LBB87_44:                              # %if.else.176
                                        #   in Loop: Header=BB87_1 Depth=1
	cmpl	$256, -60(%rbp)         # imm = 0x100
	jl	.LBB87_46
# BB#45:                                # %if.then.179
	movq	$-1, -8(%rbp)
	jmp	.LBB87_73
.LBB87_46:                              # %if.end.180
                                        #   in Loop: Header=BB87_1 Depth=1
	jmp	.LBB87_47
.LBB87_47:                              # %if.end.181
                                        #   in Loop: Header=BB87_1 Depth=1
	movslq	-68(%rbp), %rax
	addq	-48(%rbp), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB87_49
.LBB87_48:                              # %if.else.184
                                        #   in Loop: Header=BB87_1 Depth=1
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -48(%rbp)
	movq	-16(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	movl	%edx, -60(%rbp)
.LBB87_49:                              # %if.end.188
                                        #   in Loop: Header=BB87_1 Depth=1
	movl	-64(%rbp), %eax
	movl	-60(%rbp), %ecx
	sarl	$4, %ecx
	andl	$15, %ecx
	orl	%ecx, %eax
	movl	%eax, %eax
	movl	%eax, %edx
	movb	base64_value_to_char(,%rdx), %sil
	movq	-56(%rbp), %rdx
	movq	%rdx, %rdi
	addq	$1, %rdi
	movq	%rdi, -56(%rbp)
	movb	%sil, (%rdx)
	movl	-60(%rbp), %eax
	andl	$15, %eax
	shll	$2, %eax
	movl	%eax, -64(%rbp)
	movq	-48(%rbp), %rdx
	cmpq	-32(%rbp), %rdx
	jne	.LBB87_51
# BB#50:                                # %if.then.199
	movl	-64(%rbp), %eax
	movl	%eax, %ecx
	movb	base64_value_to_char(,%rcx), %dl
	movq	-56(%rbp), %rcx
	movq	%rcx, %rsi
	addq	$1, %rsi
	movq	%rsi, -56(%rbp)
	movb	%dl, (%rcx)
	movq	-56(%rbp), %rcx
	movq	%rcx, %rsi
	addq	$1, %rsi
	movq	%rsi, -56(%rbp)
	movb	$61, (%rcx)
	jmp	.LBB87_72
.LBB87_51:                              # %if.end.204
                                        #   in Loop: Header=BB87_1 Depth=1
	testb	$1, -34(%rbp)
	je	.LBB87_70
# BB#52:                                # %if.then.206
                                        #   in Loop: Header=BB87_1 Depth=1
	movq	-16(%rbp), %rax
	movq	-48(%rbp), %rcx
	movzbl	(%rax,%rcx), %edx
	andl	$128, %edx
	cmpl	$0, %edx
	jne	.LBB87_54
# BB#53:                                # %cond.true.212
                                        #   in Loop: Header=BB87_1 Depth=1
	movl	$1, -68(%rbp)
	movq	-16(%rbp), %rax
	movq	-48(%rbp), %rcx
	movzbl	(%rax,%rcx), %edx
	movl	%edx, -104(%rbp)        # 4-byte Spill
	jmp	.LBB87_61
.LBB87_54:                              # %cond.false.216
                                        #   in Loop: Header=BB87_1 Depth=1
	movq	-16(%rbp), %rax
	movq	-48(%rbp), %rcx
	movzbl	(%rax,%rcx), %edx
	andl	$32, %edx
	cmpl	$0, %edx
	jne	.LBB87_56
# BB#55:                                # %cond.true.222
                                        #   in Loop: Header=BB87_1 Depth=1
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
	movl	$2, -68(%rbp)
	movq	-16(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movzbl	(%rdx,%rsi), %edi
	andl	$31, %edi
	shll	$6, %edi
	movq	-16(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movzbl	1(%rdx,%rsi), %r8d
	andl	$63, %r8d
	orl	%r8d, %edi
	movq	-16(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movzbl	(%rdx,%rsi), %r8d
	cmpl	$194, %r8d
	cmovll	%ecx, %eax
	addl	%eax, %edi
	movl	%edi, -108(%rbp)        # 4-byte Spill
	jmp	.LBB87_60
.LBB87_56:                              # %cond.false.240
                                        #   in Loop: Header=BB87_1 Depth=1
	movq	-16(%rbp), %rax
	movq	-48(%rbp), %rcx
	movzbl	(%rax,%rcx), %edx
	andl	$16, %edx
	cmpl	$0, %edx
	jne	.LBB87_58
# BB#57:                                # %cond.true.246
                                        #   in Loop: Header=BB87_1 Depth=1
	movl	$3, -68(%rbp)
	movq	-16(%rbp), %rax
	movq	-48(%rbp), %rcx
	movzbl	(%rax,%rcx), %edx
	andl	$15, %edx
	shll	$12, %edx
	movq	-16(%rbp), %rax
	movq	-48(%rbp), %rcx
	movzbl	1(%rax,%rcx), %esi
	andl	$63, %esi
	shll	$6, %esi
	orl	%esi, %edx
	movq	-16(%rbp), %rax
	movq	-48(%rbp), %rcx
	movzbl	2(%rax,%rcx), %esi
	andl	$63, %esi
	orl	%esi, %edx
	movl	%edx, -112(%rbp)        # 4-byte Spill
	jmp	.LBB87_59
.LBB87_58:                              # %cond.false.263
                                        #   in Loop: Header=BB87_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-68(%rbp), %rdx
	movq	-16(%rbp), %rcx
	addq	-48(%rbp), %rcx
	movq	%rcx, %rdi
	callq	string_char
	movl	%eax, -112(%rbp)        # 4-byte Spill
.LBB87_59:                              # %cond.end.266
                                        #   in Loop: Header=BB87_1 Depth=1
	movl	-112(%rbp), %eax        # 4-byte Reload
	movl	%eax, -108(%rbp)        # 4-byte Spill
.LBB87_60:                              # %cond.end.268
                                        #   in Loop: Header=BB87_1 Depth=1
	movl	-108(%rbp), %eax        # 4-byte Reload
	movl	%eax, -104(%rbp)        # 4-byte Spill
.LBB87_61:                              # %cond.end.270
                                        #   in Loop: Header=BB87_1 Depth=1
	movl	-104(%rbp), %eax        # 4-byte Reload
	movl	%eax, -60(%rbp)
	cmpl	$4194175, -60(%rbp)     # imm = 0x3FFF7F
	jle	.LBB87_66
# BB#62:                                # %if.then.274
                                        #   in Loop: Header=BB87_1 Depth=1
	cmpl	$4194175, -60(%rbp)     # imm = 0x3FFF7F
	jle	.LBB87_64
# BB#63:                                # %cond.true.277
                                        #   in Loop: Header=BB87_1 Depth=1
	movl	-60(%rbp), %eax
	subl	$4194048, %eax          # imm = 0x3FFF00
	movl	%eax, -116(%rbp)        # 4-byte Spill
	jmp	.LBB87_65
.LBB87_64:                              # %cond.false.279
                                        #   in Loop: Header=BB87_1 Depth=1
	movl	-60(%rbp), %eax
	andl	$255, %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
.LBB87_65:                              # %cond.end.281
                                        #   in Loop: Header=BB87_1 Depth=1
	movl	-116(%rbp), %eax        # 4-byte Reload
	movl	%eax, -60(%rbp)
	jmp	.LBB87_69
.LBB87_66:                              # %if.else.283
                                        #   in Loop: Header=BB87_1 Depth=1
	cmpl	$256, -60(%rbp)         # imm = 0x100
	jl	.LBB87_68
# BB#67:                                # %if.then.286
	movq	$-1, -8(%rbp)
	jmp	.LBB87_73
.LBB87_68:                              # %if.end.287
                                        #   in Loop: Header=BB87_1 Depth=1
	jmp	.LBB87_69
.LBB87_69:                              # %if.end.288
                                        #   in Loop: Header=BB87_1 Depth=1
	movslq	-68(%rbp), %rax
	addq	-48(%rbp), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB87_71
.LBB87_70:                              # %if.else.291
                                        #   in Loop: Header=BB87_1 Depth=1
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -48(%rbp)
	movq	-16(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	movl	%edx, -60(%rbp)
.LBB87_71:                              # %if.end.295
                                        #   in Loop: Header=BB87_1 Depth=1
	movl	-64(%rbp), %eax
	movl	-60(%rbp), %ecx
	sarl	$6, %ecx
	andl	$3, %ecx
	orl	%ecx, %eax
	movl	%eax, %eax
	movl	%eax, %edx
	movb	base64_value_to_char(,%rdx), %sil
	movq	-56(%rbp), %rdx
	movq	%rdx, %rdi
	addq	$1, %rdi
	movq	%rdi, -56(%rbp)
	movb	%sil, (%rdx)
	movl	-60(%rbp), %eax
	andl	$63, %eax
	movslq	%eax, %rdx
	movb	base64_value_to_char(,%rdx), %sil
	movq	-56(%rbp), %rdx
	movq	%rdx, %rdi
	addq	$1, %rdi
	movq	%rdi, -56(%rbp)
	movb	%sil, (%rdx)
	jmp	.LBB87_1
.LBB87_72:                              # %while.end
	movq	-56(%rbp), %rax
	movq	-24(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, -8(%rbp)
.LBB87_73:                              # %return
	movq	-8(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end87:
	.size	base64_encode_1, .Lfunc_end87-base64_encode_1
	.cfi_endproc

	.globl	Fbase64_encode_string
	.align	16, 0x90
	.type	Fbase64_encode_string,@function
Fbase64_encode_string:                  # @Fbase64_encode_string
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp264:
	.cfi_def_cfa_offset 16
.Ltmp265:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp266:
	.cfi_def_cfa_register %rbp
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$16384, -64(%rbp)       # imm = 0x4000
	callq	SPECPDL_INDEX
	movq	%rax, -72(%rbp)
	movb	$0, -73(%rbp)
	movq	-8(%rbp), %rdi
	callq	CHECK_STRING
	movq	-8(%rbp), %rdi
	callq	SBYTES
	movl	$76, %ecx
	movl	%ecx, %esi
	movl	$3, %ecx
	movl	%ecx, %edi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movq	%rdx, %rax
	cqto
	idivq	%rdi
	movq	-88(%rbp), %rdi         # 8-byte Reload
	addq	%rax, %rdi
	addq	$1, %rdi
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	cqto
	idivq	%rsi
	addq	$1, %rax
	addq	$6, %rax
	addq	-24(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jg	.LBB88_2
# BB#1:                                 # %cond.true
	movq	-24(%rbp), %rax
	movq	-64(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -64(%rbp)
	movq	-24(%rbp), %rax
	addq	$15, %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	jmp	.LBB88_3
.LBB88_2:                               # %cond.false
	movb	$1, -73(%rbp)
	movq	-24(%rbp), %rdi
	callq	record_xmalloc
	movq	%rax, -96(%rbp)         # 8-byte Spill
.LBB88_3:                               # %cond.end
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rdi
	callq	SSDATA
	xorl	%edi, %edi
	movq	-48(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	movq	%rsi, -120(%rbp)        # 8-byte Spill
	movq	%rdx, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%r8b
	movq	-8(%rbp), %rdi
	movb	%r8b, -129(%rbp)        # 1-byte Spill
	callq	STRING_MULTIBYTE
	movb	-129(%rbp), %r8b        # 1-byte Reload
	movzbl	%r8b, %r9d
	andl	$1, %r9d
	movzbl	%al, %r10d
	andl	$1, %r10d
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	-120(%rbp), %rsi        # 8-byte Reload
	movq	-128(%rbp), %rdx        # 8-byte Reload
	movl	%r9d, %ecx
	movl	%r10d, %r8d
	callq	base64_encode_1
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jle	.LBB88_5
# BB#4:                                 # %if.then
	callq	emacs_abort
.LBB88_5:                               # %if.end
	cmpq	$0, -40(%rbp)
	jge	.LBB88_7
# BB#6:                                 # %if.then.15
	movabsq	$.L.str.14, %rdi
	movb	$0, %al
	callq	error
.LBB88_7:                               # %if.end.16
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	make_unibyte_string
	movq	%rax, -56(%rbp)
# BB#8:                                 # %do.body
	testb	$1, -73(%rbp)
	je	.LBB88_10
# BB#9:                                 # %if.then.18
	xorl	%edi, %edi
	movb	$0, -73(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -152(%rbp)        # 8-byte Spill
.LBB88_10:                              # %if.end.21
	jmp	.LBB88_11
.LBB88_11:                              # %do.end
	movq	-56(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end88:
	.size	Fbase64_encode_string, .Lfunc_end88-Fbase64_encode_string
	.cfi_endproc

	.globl	Fbase64_decode_region
	.align	16, 0x90
	.type	Fbase64_decode_region,@function
Fbase64_decode_region:                  # @Fbase64_decode_region
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp267:
	.cfi_def_cfa_offset 16
.Ltmp268:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp269:
	.cfi_def_cfa_register %rbp
	subq	$192, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	current_buffer, %rsi
	movq	736(%rsi), %rsi
	addq	$0, %rsi
	movq	%rsi, -64(%rbp)
	movq	current_buffer, %rsi
	movq	312(%rsi), %rsi
	movl	%eax, %edi
	movq	%rsi, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-120(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	sete	%cl
	xorb	$-1, %cl
	andb	$1, %cl
	movb	%cl, -81(%rbp)
	movq	$16384, -96(%rbp)       # imm = 0x4000
	callq	SPECPDL_INDEX
	leaq	-8(%rbp), %rdi
	leaq	-16(%rbp), %rsi
	movq	%rax, -104(%rbp)
	movb	$0, -105(%rbp)
	callq	validate_region
	movq	current_buffer, %rdi
	movq	-8(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, %rsi
	callq	buf_charpos_to_bytepos
	movq	%rax, -24(%rbp)
	movq	current_buffer, %rdi
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, %rsi
	callq	buf_charpos_to_bytepos
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	subq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)
	testb	$1, -81(%rbp)
	je	.LBB89_2
# BB#1:                                 # %cond.true
	movq	-40(%rbp), %rax
	shlq	$1, %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jmp	.LBB89_3
.LBB89_2:                               # %cond.false
	movq	-40(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
.LBB89_3:                               # %cond.end
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jg	.LBB89_5
# BB#4:                                 # %cond.true.6
	movq	-48(%rbp), %rax
	movq	-96(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -96(%rbp)
	movq	-48(%rbp), %rax
	addq	$15, %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	jmp	.LBB89_6
.LBB89_5:                               # %cond.false.8
	movb	$1, -105(%rbp)
	movq	-48(%rbp), %rdi
	callq	record_xmalloc
	movq	%rax, -136(%rbp)        # 8-byte Spill
.LBB89_6:                               # %cond.end.10
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rax
	sarq	$2, %rax
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	move_gap_both
	movq	-24(%rbp), %rax
	movq	current_buffer, %rsi
	movq	720(%rsi), %rsi
	cmpq	24(%rsi), %rax
	jl	.LBB89_8
# BB#7:                                 # %cond.true.14
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	jmp	.LBB89_9
.LBB89_8:                               # %cond.false.16
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	jmp	.LBB89_9
.LBB89_9:                               # %cond.end.17
	movq	-144(%rbp), %rax        # 8-byte Reload
	leaq	-80(%rbp), %r8
	addq	-24(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	(%rcx), %rax
	addq	$-1, %rax
	movq	-56(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movb	-81(%rbp), %dil
	andb	$1, %dil
	movb	%dil, -145(%rbp)        # 1-byte Spill
	movq	%rax, %rdi
	movb	-145(%rbp), %r9b        # 1-byte Reload
	movzbl	%r9b, %ecx
	callq	base64_decode_1
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jle	.LBB89_11
# BB#10:                                # %if.then
	callq	emacs_abort
.LBB89_11:                              # %if.end
	cmpq	$0, -72(%rbp)
	jge	.LBB89_13
# BB#12:                                # %if.then.27
	movabsq	$.L.str.15, %rdi
	movb	$0, %al
	callq	error
.LBB89_13:                              # %if.end.28
	movq	current_buffer, %rdi
	movq	-8(%rbp), %rax
	sarq	$2, %rax
	movq	-24(%rbp), %rdx
	movq	%rax, %rsi
	callq	temp_set_point_both
	xorl	%ecx, %ecx
	movl	$1, %r8d
	movq	-56(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movq	-72(%rbp), %rdx
	movl	%ecx, -152(%rbp)        # 4-byte Spill
	movl	-152(%rbp), %r9d        # 4-byte Reload
	callq	insert_1_both
# BB#14:                                # %do.body
	testb	$1, -105(%rbp)
	je	.LBB89_16
# BB#15:                                # %if.then.31
	xorl	%edi, %edi
	movb	$0, -105(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -168(%rbp)        # 8-byte Spill
.LBB89_16:                              # %if.end.34
	jmp	.LBB89_17
.LBB89_17:                              # %do.end
	movl	$1, %r8d
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	current_buffer, %rcx
	movq	744(%rcx), %rcx
	addq	$0, %rcx
	movq	-16(%rbp), %rdx
	sarq	$2, %rdx
	addq	-80(%rbp), %rdx
	movq	-32(%rbp), %rsi
	addq	-72(%rbp), %rsi
	movq	%rax, %rdi
	movq	%rsi, -176(%rbp)        # 8-byte Spill
	movq	%rcx, %rsi
	movq	-176(%rbp), %rcx        # 8-byte Reload
	callq	del_range_both
	movq	-64(%rbp), %rax
	movq	-16(%rbp), %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	jl	.LBB89_19
# BB#18:                                # %if.then.43
	movq	-80(%rbp), %rax
	movq	-16(%rbp), %rcx
	sarq	$2, %rcx
	movq	-8(%rbp), %rdx
	sarq	$2, %rdx
	subq	%rdx, %rcx
	subq	%rcx, %rax
	addq	-64(%rbp), %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB89_22
.LBB89_19:                              # %if.else
	movq	-64(%rbp), %rax
	movq	-8(%rbp), %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	jle	.LBB89_21
# BB#20:                                # %if.then.51
	movq	-8(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -64(%rbp)
.LBB89_21:                              # %if.end.53
	jmp	.LBB89_22
.LBB89_22:                              # %if.end.54
	movq	-64(%rbp), %rax
	movq	current_buffer, %rcx
	cmpq	768(%rcx), %rax
	jle	.LBB89_24
# BB#23:                                # %cond.true.56
	movq	current_buffer, %rax
	movq	768(%rax), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	jmp	.LBB89_25
.LBB89_24:                              # %cond.false.58
	movq	-64(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
.LBB89_25:                              # %cond.end.59
	movq	-184(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rdi
	callq	set_point
	movq	-80(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end89:
	.size	Fbase64_decode_region, .Lfunc_end89-Fbase64_decode_region
	.cfi_endproc

	.align	16, 0x90
	.type	base64_decode_1,@function
base64_decode_1:                        # @base64_decode_1
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp270:
	.cfi_def_cfa_offset 16
.Ltmp271:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp272:
	.cfi_def_cfa_register %rbp
	movb	%cl, %al
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	andb	$1, %al
	movb	%al, -33(%rbp)
	movq	%r8, -48(%rbp)
	movq	$0, -56(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -64(%rbp)
	movq	$0, -88(%rbp)
.LBB90_1:                               # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB90_2 Depth 2
                                        #     Child Loop BB90_17 Depth 2
                                        #     Child Loop BB90_36 Depth 2
                                        #     Child Loop BB90_49 Depth 2
                                        #     Child Loop BB90_71 Depth 2
	jmp	.LBB90_2
.LBB90_2:                               # %do.body
                                        #   Parent Loop BB90_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-56(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB90_6
# BB#3:                                 # %if.then
	cmpq	$0, -48(%rbp)
	je	.LBB90_5
# BB#4:                                 # %if.then.1
	movq	-88(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB90_5:                               # %if.end
	movq	-64(%rbp), %rax
	movq	-24(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB90_92
.LBB90_6:                               # %if.end.2
                                        #   in Loop: Header=BB90_2 Depth=2
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -56(%rbp)
	movq	-16(%rbp), %rcx
	movb	(%rcx,%rax), %dl
	movb	%dl, -65(%rbp)
# BB#7:                                 # %do.cond
                                        #   in Loop: Header=BB90_2 Depth=2
	movb	$1, %al
	movzbl	-65(%rbp), %ecx
	cmpl	$32, %ecx
	movb	%al, -89(%rbp)          # 1-byte Spill
	je	.LBB90_12
# BB#8:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB90_2 Depth=2
	movb	$1, %al
	movzbl	-65(%rbp), %ecx
	cmpl	$9, %ecx
	movb	%al, -89(%rbp)          # 1-byte Spill
	je	.LBB90_12
# BB#9:                                 # %lor.lhs.false.8
                                        #   in Loop: Header=BB90_2 Depth=2
	movb	$1, %al
	movzbl	-65(%rbp), %ecx
	cmpl	$10, %ecx
	movb	%al, -89(%rbp)          # 1-byte Spill
	je	.LBB90_12
# BB#10:                                # %lor.lhs.false.12
                                        #   in Loop: Header=BB90_2 Depth=2
	movb	$1, %al
	movzbl	-65(%rbp), %ecx
	cmpl	$12, %ecx
	movb	%al, -89(%rbp)          # 1-byte Spill
	je	.LBB90_12
# BB#11:                                # %lor.rhs
                                        #   in Loop: Header=BB90_2 Depth=2
	movzbl	-65(%rbp), %eax
	cmpl	$13, %eax
	sete	%cl
	movb	%cl, -89(%rbp)          # 1-byte Spill
.LBB90_12:                              # %lor.end
                                        #   in Loop: Header=BB90_2 Depth=2
	movb	-89(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB90_2
# BB#13:                                # %do.end
                                        #   in Loop: Header=BB90_1 Depth=1
	movzbl	-65(%rbp), %eax
	cmpl	$128, %eax
	jge	.LBB90_15
# BB#14:                                # %land.lhs.true
                                        #   in Loop: Header=BB90_1 Depth=1
	movzbl	-65(%rbp), %eax
	movl	%eax, %ecx
	movswl	base64_char_to_value(,%rcx,2), %eax
	cmpl	$0, %eax
	jge	.LBB90_16
.LBB90_15:                              # %if.then.26
	movq	$-1, -8(%rbp)
	jmp	.LBB90_92
.LBB90_16:                              # %if.end.27
                                        #   in Loop: Header=BB90_1 Depth=1
	movzbl	-65(%rbp), %eax
	movl	%eax, %ecx
	movswl	base64_char_to_value(,%rcx,2), %eax
	shll	$18, %eax
	movslq	%eax, %rcx
	movq	%rcx, -80(%rbp)
.LBB90_17:                              # %do.body.32
                                        #   Parent Loop BB90_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-56(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB90_21
# BB#18:                                # %if.then.35
	cmpq	$0, -48(%rbp)
	je	.LBB90_20
# BB#19:                                # %if.then.37
	movq	-88(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB90_20:                              # %if.end.38
	movq	$-1, -8(%rbp)
	jmp	.LBB90_92
.LBB90_21:                              # %if.end.39
                                        #   in Loop: Header=BB90_17 Depth=2
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -56(%rbp)
	movq	-16(%rbp), %rcx
	movb	(%rcx,%rax), %dl
	movb	%dl, -65(%rbp)
# BB#22:                                # %do.cond.42
                                        #   in Loop: Header=BB90_17 Depth=2
	movb	$1, %al
	movzbl	-65(%rbp), %ecx
	cmpl	$32, %ecx
	movb	%al, -90(%rbp)          # 1-byte Spill
	je	.LBB90_27
# BB#23:                                # %lor.lhs.false.46
                                        #   in Loop: Header=BB90_17 Depth=2
	movb	$1, %al
	movzbl	-65(%rbp), %ecx
	cmpl	$9, %ecx
	movb	%al, -90(%rbp)          # 1-byte Spill
	je	.LBB90_27
# BB#24:                                # %lor.lhs.false.50
                                        #   in Loop: Header=BB90_17 Depth=2
	movb	$1, %al
	movzbl	-65(%rbp), %ecx
	cmpl	$10, %ecx
	movb	%al, -90(%rbp)          # 1-byte Spill
	je	.LBB90_27
# BB#25:                                # %lor.lhs.false.54
                                        #   in Loop: Header=BB90_17 Depth=2
	movb	$1, %al
	movzbl	-65(%rbp), %ecx
	cmpl	$12, %ecx
	movb	%al, -90(%rbp)          # 1-byte Spill
	je	.LBB90_27
# BB#26:                                # %lor.rhs.58
                                        #   in Loop: Header=BB90_17 Depth=2
	movzbl	-65(%rbp), %eax
	cmpl	$13, %eax
	sete	%cl
	movb	%cl, -90(%rbp)          # 1-byte Spill
.LBB90_27:                              # %lor.end.62
                                        #   in Loop: Header=BB90_17 Depth=2
	movb	-90(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB90_17
# BB#28:                                # %do.end.63
                                        #   in Loop: Header=BB90_1 Depth=1
	movzbl	-65(%rbp), %eax
	cmpl	$128, %eax
	jge	.LBB90_30
# BB#29:                                # %land.lhs.true.67
                                        #   in Loop: Header=BB90_1 Depth=1
	movzbl	-65(%rbp), %eax
	movl	%eax, %ecx
	movswl	base64_char_to_value(,%rcx,2), %eax
	cmpl	$0, %eax
	jge	.LBB90_31
.LBB90_30:                              # %if.then.73
	movq	$-1, -8(%rbp)
	jmp	.LBB90_92
.LBB90_31:                              # %if.end.74
                                        #   in Loop: Header=BB90_1 Depth=1
	movzbl	-65(%rbp), %eax
	movl	%eax, %ecx
	movswl	base64_char_to_value(,%rcx,2), %eax
	shll	$12, %eax
	movslq	%eax, %rcx
	orq	-80(%rbp), %rcx
	movq	%rcx, -80(%rbp)
	movq	-80(%rbp), %rcx
	shrq	$16, %rcx
	movb	%cl, %dl
	movb	%dl, -65(%rbp)
	testb	$1, -33(%rbp)
	je	.LBB90_34
# BB#32:                                # %land.lhs.true.83
                                        #   in Loop: Header=BB90_1 Depth=1
	movzbl	-65(%rbp), %eax
	cmpl	$128, %eax
	jl	.LBB90_34
# BB#33:                                # %if.then.87
                                        #   in Loop: Header=BB90_1 Depth=1
	movzbl	-65(%rbp), %eax
	sarl	$6, %eax
	andl	$1, %eax
	orl	$192, %eax
	movb	%al, %cl
	movq	-64(%rbp), %rdx
	movb	%cl, (%rdx)
	movzbl	-65(%rbp), %eax
	andl	$63, %eax
	orl	$128, %eax
	movb	%al, %cl
	movq	-64(%rbp), %rdx
	movb	%cl, 1(%rdx)
	movq	-64(%rbp), %rdx
	addq	$2, %rdx
	movq	%rdx, -64(%rbp)
	jmp	.LBB90_35
.LBB90_34:                              # %if.else
                                        #   in Loop: Header=BB90_1 Depth=1
	movb	-65(%rbp), %al
	movq	-64(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -64(%rbp)
	movb	%al, (%rcx)
.LBB90_35:                              # %if.end.98
                                        #   in Loop: Header=BB90_1 Depth=1
	movq	-88(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -88(%rbp)
.LBB90_36:                              # %do.body.100
                                        #   Parent Loop BB90_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-56(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB90_40
# BB#37:                                # %if.then.103
	cmpq	$0, -48(%rbp)
	je	.LBB90_39
# BB#38:                                # %if.then.105
	movq	-88(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB90_39:                              # %if.end.106
	movq	$-1, -8(%rbp)
	jmp	.LBB90_92
.LBB90_40:                              # %if.end.107
                                        #   in Loop: Header=BB90_36 Depth=2
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -56(%rbp)
	movq	-16(%rbp), %rcx
	movb	(%rcx,%rax), %dl
	movb	%dl, -65(%rbp)
# BB#41:                                # %do.cond.110
                                        #   in Loop: Header=BB90_36 Depth=2
	movb	$1, %al
	movzbl	-65(%rbp), %ecx
	cmpl	$32, %ecx
	movb	%al, -91(%rbp)          # 1-byte Spill
	je	.LBB90_46
# BB#42:                                # %lor.lhs.false.114
                                        #   in Loop: Header=BB90_36 Depth=2
	movb	$1, %al
	movzbl	-65(%rbp), %ecx
	cmpl	$9, %ecx
	movb	%al, -91(%rbp)          # 1-byte Spill
	je	.LBB90_46
# BB#43:                                # %lor.lhs.false.118
                                        #   in Loop: Header=BB90_36 Depth=2
	movb	$1, %al
	movzbl	-65(%rbp), %ecx
	cmpl	$10, %ecx
	movb	%al, -91(%rbp)          # 1-byte Spill
	je	.LBB90_46
# BB#44:                                # %lor.lhs.false.122
                                        #   in Loop: Header=BB90_36 Depth=2
	movb	$1, %al
	movzbl	-65(%rbp), %ecx
	cmpl	$12, %ecx
	movb	%al, -91(%rbp)          # 1-byte Spill
	je	.LBB90_46
# BB#45:                                # %lor.rhs.126
                                        #   in Loop: Header=BB90_36 Depth=2
	movzbl	-65(%rbp), %eax
	cmpl	$13, %eax
	sete	%cl
	movb	%cl, -91(%rbp)          # 1-byte Spill
.LBB90_46:                              # %lor.end.130
                                        #   in Loop: Header=BB90_36 Depth=2
	movb	-91(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB90_36
# BB#47:                                # %do.end.131
                                        #   in Loop: Header=BB90_1 Depth=1
	movzbl	-65(%rbp), %eax
	cmpl	$61, %eax
	jne	.LBB90_63
# BB#48:                                # %if.then.135
                                        #   in Loop: Header=BB90_1 Depth=1
	jmp	.LBB90_49
.LBB90_49:                              # %do.body.136
                                        #   Parent Loop BB90_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-56(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB90_53
# BB#50:                                # %if.then.139
	cmpq	$0, -48(%rbp)
	je	.LBB90_52
# BB#51:                                # %if.then.141
	movq	-88(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB90_52:                              # %if.end.142
	movq	$-1, -8(%rbp)
	jmp	.LBB90_92
.LBB90_53:                              # %if.end.143
                                        #   in Loop: Header=BB90_49 Depth=2
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -56(%rbp)
	movq	-16(%rbp), %rcx
	movb	(%rcx,%rax), %dl
	movb	%dl, -65(%rbp)
# BB#54:                                # %do.cond.146
                                        #   in Loop: Header=BB90_49 Depth=2
	movb	$1, %al
	movzbl	-65(%rbp), %ecx
	cmpl	$32, %ecx
	movb	%al, -92(%rbp)          # 1-byte Spill
	je	.LBB90_59
# BB#55:                                # %lor.lhs.false.150
                                        #   in Loop: Header=BB90_49 Depth=2
	movb	$1, %al
	movzbl	-65(%rbp), %ecx
	cmpl	$9, %ecx
	movb	%al, -92(%rbp)          # 1-byte Spill
	je	.LBB90_59
# BB#56:                                # %lor.lhs.false.154
                                        #   in Loop: Header=BB90_49 Depth=2
	movb	$1, %al
	movzbl	-65(%rbp), %ecx
	cmpl	$10, %ecx
	movb	%al, -92(%rbp)          # 1-byte Spill
	je	.LBB90_59
# BB#57:                                # %lor.lhs.false.158
                                        #   in Loop: Header=BB90_49 Depth=2
	movb	$1, %al
	movzbl	-65(%rbp), %ecx
	cmpl	$12, %ecx
	movb	%al, -92(%rbp)          # 1-byte Spill
	je	.LBB90_59
# BB#58:                                # %lor.rhs.162
                                        #   in Loop: Header=BB90_49 Depth=2
	movzbl	-65(%rbp), %eax
	cmpl	$13, %eax
	sete	%cl
	movb	%cl, -92(%rbp)          # 1-byte Spill
.LBB90_59:                              # %lor.end.166
                                        #   in Loop: Header=BB90_49 Depth=2
	movb	-92(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB90_49
# BB#60:                                # %do.end.167
                                        #   in Loop: Header=BB90_1 Depth=1
	movzbl	-65(%rbp), %eax
	cmpl	$61, %eax
	je	.LBB90_62
# BB#61:                                # %if.then.171
	movq	$-1, -8(%rbp)
	jmp	.LBB90_92
.LBB90_62:                              # %if.end.172
                                        #   in Loop: Header=BB90_1 Depth=1
	jmp	.LBB90_1
.LBB90_63:                              # %if.end.173
                                        #   in Loop: Header=BB90_1 Depth=1
	movzbl	-65(%rbp), %eax
	cmpl	$128, %eax
	jge	.LBB90_65
# BB#64:                                # %land.lhs.true.177
                                        #   in Loop: Header=BB90_1 Depth=1
	movzbl	-65(%rbp), %eax
	movl	%eax, %ecx
	movswl	base64_char_to_value(,%rcx,2), %eax
	cmpl	$0, %eax
	jge	.LBB90_66
.LBB90_65:                              # %if.then.183
	movq	$-1, -8(%rbp)
	jmp	.LBB90_92
.LBB90_66:                              # %if.end.184
                                        #   in Loop: Header=BB90_1 Depth=1
	movzbl	-65(%rbp), %eax
	movl	%eax, %ecx
	movswl	base64_char_to_value(,%rcx,2), %eax
	shll	$6, %eax
	movslq	%eax, %rcx
	orq	-80(%rbp), %rcx
	movq	%rcx, -80(%rbp)
	movq	-80(%rbp), %rcx
	shrq	$8, %rcx
	andq	$255, %rcx
	movb	%cl, %dl
	movb	%dl, -65(%rbp)
	testb	$1, -33(%rbp)
	je	.LBB90_69
# BB#67:                                # %land.lhs.true.196
                                        #   in Loop: Header=BB90_1 Depth=1
	movzbl	-65(%rbp), %eax
	cmpl	$128, %eax
	jl	.LBB90_69
# BB#68:                                # %if.then.200
                                        #   in Loop: Header=BB90_1 Depth=1
	movzbl	-65(%rbp), %eax
	sarl	$6, %eax
	andl	$1, %eax
	orl	$192, %eax
	movb	%al, %cl
	movq	-64(%rbp), %rdx
	movb	%cl, (%rdx)
	movzbl	-65(%rbp), %eax
	andl	$63, %eax
	orl	$128, %eax
	movb	%al, %cl
	movq	-64(%rbp), %rdx
	movb	%cl, 1(%rdx)
	movq	-64(%rbp), %rdx
	addq	$2, %rdx
	movq	%rdx, -64(%rbp)
	jmp	.LBB90_70
.LBB90_69:                              # %if.else.213
                                        #   in Loop: Header=BB90_1 Depth=1
	movb	-65(%rbp), %al
	movq	-64(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -64(%rbp)
	movb	%al, (%rcx)
.LBB90_70:                              # %if.end.215
                                        #   in Loop: Header=BB90_1 Depth=1
	movq	-88(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -88(%rbp)
.LBB90_71:                              # %do.body.217
                                        #   Parent Loop BB90_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-56(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB90_75
# BB#72:                                # %if.then.220
	cmpq	$0, -48(%rbp)
	je	.LBB90_74
# BB#73:                                # %if.then.222
	movq	-88(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB90_74:                              # %if.end.223
	movq	$-1, -8(%rbp)
	jmp	.LBB90_92
.LBB90_75:                              # %if.end.224
                                        #   in Loop: Header=BB90_71 Depth=2
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -56(%rbp)
	movq	-16(%rbp), %rcx
	movb	(%rcx,%rax), %dl
	movb	%dl, -65(%rbp)
# BB#76:                                # %do.cond.227
                                        #   in Loop: Header=BB90_71 Depth=2
	movb	$1, %al
	movzbl	-65(%rbp), %ecx
	cmpl	$32, %ecx
	movb	%al, -93(%rbp)          # 1-byte Spill
	je	.LBB90_81
# BB#77:                                # %lor.lhs.false.231
                                        #   in Loop: Header=BB90_71 Depth=2
	movb	$1, %al
	movzbl	-65(%rbp), %ecx
	cmpl	$9, %ecx
	movb	%al, -93(%rbp)          # 1-byte Spill
	je	.LBB90_81
# BB#78:                                # %lor.lhs.false.235
                                        #   in Loop: Header=BB90_71 Depth=2
	movb	$1, %al
	movzbl	-65(%rbp), %ecx
	cmpl	$10, %ecx
	movb	%al, -93(%rbp)          # 1-byte Spill
	je	.LBB90_81
# BB#79:                                # %lor.lhs.false.239
                                        #   in Loop: Header=BB90_71 Depth=2
	movb	$1, %al
	movzbl	-65(%rbp), %ecx
	cmpl	$12, %ecx
	movb	%al, -93(%rbp)          # 1-byte Spill
	je	.LBB90_81
# BB#80:                                # %lor.rhs.243
                                        #   in Loop: Header=BB90_71 Depth=2
	movzbl	-65(%rbp), %eax
	cmpl	$13, %eax
	sete	%cl
	movb	%cl, -93(%rbp)          # 1-byte Spill
.LBB90_81:                              # %lor.end.247
                                        #   in Loop: Header=BB90_71 Depth=2
	movb	-93(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB90_71
# BB#82:                                # %do.end.248
                                        #   in Loop: Header=BB90_1 Depth=1
	movzbl	-65(%rbp), %eax
	cmpl	$61, %eax
	jne	.LBB90_84
# BB#83:                                # %if.then.252
                                        #   in Loop: Header=BB90_1 Depth=1
	jmp	.LBB90_1
.LBB90_84:                              # %if.end.253
                                        #   in Loop: Header=BB90_1 Depth=1
	movzbl	-65(%rbp), %eax
	cmpl	$128, %eax
	jge	.LBB90_86
# BB#85:                                # %land.lhs.true.257
                                        #   in Loop: Header=BB90_1 Depth=1
	movzbl	-65(%rbp), %eax
	movl	%eax, %ecx
	movswl	base64_char_to_value(,%rcx,2), %eax
	cmpl	$0, %eax
	jge	.LBB90_87
.LBB90_86:                              # %if.then.263
	movq	$-1, -8(%rbp)
	jmp	.LBB90_92
.LBB90_87:                              # %if.end.264
                                        #   in Loop: Header=BB90_1 Depth=1
	movzbl	-65(%rbp), %eax
	movl	%eax, %ecx
	movswq	base64_char_to_value(,%rcx,2), %rcx
	orq	-80(%rbp), %rcx
	movq	%rcx, -80(%rbp)
	movq	-80(%rbp), %rcx
	andq	$255, %rcx
	movb	%cl, %dl
	movb	%dl, -65(%rbp)
	testb	$1, -33(%rbp)
	je	.LBB90_90
# BB#88:                                # %land.lhs.true.273
                                        #   in Loop: Header=BB90_1 Depth=1
	movzbl	-65(%rbp), %eax
	cmpl	$128, %eax
	jl	.LBB90_90
# BB#89:                                # %if.then.277
                                        #   in Loop: Header=BB90_1 Depth=1
	movzbl	-65(%rbp), %eax
	sarl	$6, %eax
	andl	$1, %eax
	orl	$192, %eax
	movb	%al, %cl
	movq	-64(%rbp), %rdx
	movb	%cl, (%rdx)
	movzbl	-65(%rbp), %eax
	andl	$63, %eax
	orl	$128, %eax
	movb	%al, %cl
	movq	-64(%rbp), %rdx
	movb	%cl, 1(%rdx)
	movq	-64(%rbp), %rdx
	addq	$2, %rdx
	movq	%rdx, -64(%rbp)
	jmp	.LBB90_91
.LBB90_90:                              # %if.else.290
                                        #   in Loop: Header=BB90_1 Depth=1
	movb	-65(%rbp), %al
	movq	-64(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -64(%rbp)
	movb	%al, (%rcx)
.LBB90_91:                              # %if.end.292
                                        #   in Loop: Header=BB90_1 Depth=1
	movq	-88(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -88(%rbp)
	jmp	.LBB90_1
.LBB90_92:                              # %return
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
.Lfunc_end90:
	.size	base64_decode_1, .Lfunc_end90-base64_decode_1
	.cfi_endproc

	.globl	Fbase64_decode_string
	.align	16, 0x90
	.type	Fbase64_decode_string,@function
Fbase64_decode_string:                  # @Fbase64_decode_string
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp273:
	.cfi_def_cfa_offset 16
.Ltmp274:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp275:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	$16384, -48(%rbp)       # imm = 0x4000
	callq	SPECPDL_INDEX
	movq	%rax, -56(%rbp)
	movb	$0, -57(%rbp)
	movq	-8(%rbp), %rdi
	callq	CHECK_STRING
	movq	-8(%rbp), %rdi
	callq	SBYTES
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jg	.LBB91_2
# BB#1:                                 # %cond.true
	movq	-24(%rbp), %rax
	movq	-48(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -48(%rbp)
	movq	-24(%rbp), %rax
	addq	$15, %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	jmp	.LBB91_3
.LBB91_2:                               # %cond.false
	movb	$1, -57(%rbp)
	movq	-24(%rbp), %rdi
	callq	record_xmalloc
	movq	%rax, -72(%rbp)         # 8-byte Spill
.LBB91_3:                               # %cond.end
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	SSDATA
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	%rax, %rdi
	callq	base64_decode_1
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jle	.LBB91_5
# BB#4:                                 # %if.then
	callq	emacs_abort
.LBB91_5:                               # %if.else
	cmpq	$0, -32(%rbp)
	jl	.LBB91_7
# BB#6:                                 # %if.then.7
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	make_unibyte_string
	movq	%rax, -40(%rbp)
	jmp	.LBB91_8
.LBB91_7:                               # %if.else.9
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -40(%rbp)
.LBB91_8:                               # %if.end
	jmp	.LBB91_9
.LBB91_9:                               # %if.end.11
	jmp	.LBB91_10
.LBB91_10:                              # %do.body
	testb	$1, -57(%rbp)
	je	.LBB91_12
# BB#11:                                # %if.then.12
	xorl	%edi, %edi
	movb	$0, -57(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -88(%rbp)         # 8-byte Spill
.LBB91_12:                              # %if.end.15
	jmp	.LBB91_13
.LBB91_13:                              # %do.end
	movq	-40(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB91_15
# BB#14:                                # %if.then.17
	movabsq	$.L.str.15, %rdi
	movb	$0, %al
	callq	error
.LBB91_15:                              # %if.end.18
	movq	-40(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end91:
	.size	Fbase64_decode_string, .Lfunc_end91-Fbase64_decode_string
	.cfi_endproc

	.globl	next_almost_prime
	.align	16, 0x90
	.type	next_almost_prime,@function
next_almost_prime:                      # @next_almost_prime
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp276:
	.cfi_def_cfa_offset 16
.Ltmp277:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp278:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	orq	$1, %rdi
	movq	%rdi, -8(%rbp)
.LBB92_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	$3, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	cqto
	idivq	%rcx
	cmpq	$0, %rdx
	je	.LBB92_5
# BB#2:                                 # %land.lhs.true
                                        #   in Loop: Header=BB92_1 Depth=1
	movl	$5, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	cqto
	idivq	%rcx
	cmpq	$0, %rdx
	je	.LBB92_5
# BB#3:                                 # %land.lhs.true.3
                                        #   in Loop: Header=BB92_1 Depth=1
	movl	$7, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	cqto
	idivq	%rcx
	cmpq	$0, %rdx
	je	.LBB92_5
# BB#4:                                 # %if.then
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
.LBB92_5:                               # %if.end
                                        #   in Loop: Header=BB92_1 Depth=1
	jmp	.LBB92_6
.LBB92_6:                               # %for.inc
                                        #   in Loop: Header=BB92_1 Depth=1
	movq	-8(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB92_1
.Lfunc_end92:
	.size	next_almost_prime, .Lfunc_end92-next_almost_prime
	.cfi_endproc

	.globl	larger_vector
	.align	16, 0x90
	.type	larger_vector,@function
larger_vector:                          # @larger_vector
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp279:
	.cfi_def_cfa_offset 16
.Ltmp280:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp281:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	xorl	%eax, %eax
	movl	%eax, %ecx
	movabsq	$1152921504606846975, %r8 # imm = 0xFFFFFFFFFFFFFFF
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%r8, -72(%rbp)
	cmpq	-24(%rbp), %rcx
	jg	.LBB93_3
# BB#1:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jge	.LBB93_3
# BB#2:                                 # %cond.true
	movq	-24(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB93_4
.LBB93_3:                               # %cond.false
	movq	-72(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
.LBB93_4:                               # %cond.end
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rax, -80(%rbp)
	movq	-8(%rbp), %rdi
	callq	ASIZE
	movq	%rax, -56(%rbp)
	movq	-80(%rbp), %rax
	subq	-56(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	movq	-56(%rbp), %rdi
	sarq	$1, %rdi
	cmpq	-48(%rbp), %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jge	.LBB93_6
# BB#5:                                 # %cond.true.3
	movq	-56(%rbp), %rax
	sarq	$1, %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB93_7
.LBB93_6:                               # %cond.false.5
	movq	-48(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
.LBB93_7:                               # %cond.end.6
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	-96(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jle	.LBB93_9
# BB#8:                                 # %cond.true.9
	movq	-16(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB93_13
.LBB93_9:                               # %cond.false.10
	movq	-56(%rbp), %rax
	sarq	$1, %rax
	cmpq	-48(%rbp), %rax
	jge	.LBB93_11
# BB#10:                                # %cond.true.13
	movq	-56(%rbp), %rax
	sarq	$1, %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB93_12
.LBB93_11:                              # %cond.false.15
	movq	-48(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
.LBB93_12:                              # %cond.end.16
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rax, -112(%rbp)        # 8-byte Spill
.LBB93_13:                              # %cond.end.18
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jge	.LBB93_15
# BB#14:                                # %if.then
	movq	$-1, %rdi
	callq	memory_full
.LBB93_15:                              # %if.end
	movq	-56(%rbp), %rax
	addq	-40(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	callq	allocate_vector
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	addq	$8, %rax
	movq	-8(%rbp), %rdi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	XVECTOR
	addq	$8, %rax
	movq	-56(%rbp), %rdi
	shlq	$3, %rdi
	movq	-128(%rbp), %rcx        # 8-byte Reload
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, %rsi
	movq	-136(%rbp), %rdx        # 8-byte Reload
	callq	memcpy
	movq	-32(%rbp), %rax
	addq	$8, %rax
	movq	-56(%rbp), %rcx
	shlq	$3, %rcx
	addq	%rcx, %rax
	movq	-40(%rbp), %rcx
	shlq	$3, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	memclear
	movl	$5, %esi
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end93:
	.size	larger_vector, .Lfunc_end93-larger_vector
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI94_0:
	.quad	4877398396442247168     # double 1.152921504606847E+18
	.text
	.globl	make_hash_table
	.align	16, 0x90
	.type	make_hash_table,@function
make_hash_table:                        # @make_hash_table
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp282:
	.cfi_def_cfa_offset 16
.Ltmp283:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp284:
	.cfi_def_cfa_register %rbp
	subq	$160, %rsp
	leaq	16(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rcx
	sarq	$2, %rcx
	cmpq	$0, %rcx
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jne	.LBB94_2
# BB#1:                                 # %if.then
	movq	$6, -8(%rbp)
.LBB94_2:                               # %if.end
	movq	-8(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -64(%rbp)
	cvtsi2sdq	-64(%rbp), %xmm0
	movq	-24(%rbp), %rdi
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
	callq	XFLOAT_DATA
	movsd	.LCPI94_0, %xmm1        # xmm1 = mem[0],zero
	movsd	-96(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	divsd	%xmm0, %xmm2
	movsd	%xmm2, -80(%rbp)
	ucomisd	-80(%rbp), %xmm1
	jbe	.LBB94_4
# BB#3:                                 # %cond.true
	cvttsd2si	-80(%rbp), %rdi
	callq	next_almost_prime
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB94_5
.LBB94_4:                               # %cond.false
	movabsq	$1152921504606846976, %rax # imm = 0x1000000000000000
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB94_5
.LBB94_5:                               # %cond.end
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	-64(%rbp), %rcx
	shlq	$1, %rcx
	cmpq	%rcx, %rax
	jle	.LBB94_7
# BB#6:                                 # %cond.true.8
	movq	-56(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB94_8
.LBB94_7:                               # %cond.false.9
	movq	-64(%rbp), %rax
	shlq	$1, %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
.LBB94_8:                               # %cond.end.11
	movq	-112(%rbp), %rax        # 8-byte Reload
	movabsq	$1152921504606846975, %rcx # imm = 0xFFFFFFFFFFFFFFF
	cmpq	%rax, %rcx
	jge	.LBB94_10
# BB#9:                                 # %if.then.15
	movabsq	$.L.str.16, %rdi
	movb	$0, %al
	callq	error
.LBB94_10:                              # %if.end.16
	callq	allocate_hash_table
	xorl	%edi, %edi
	movl	$40, %ecx
	movl	%ecx, %edx
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	addq	$80, %rax
	movq	-88(%rbp), %rsi         # 8-byte Reload
	movl	%edi, -116(%rbp)        # 4-byte Spill
	movq	%rax, %rdi
	callq	memcpy
	movq	-32(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-24(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	-16(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-40(%rbp), %rax
	movq	$0, 64(%rax)
	movq	-64(%rbp), %rax
	shlq	$1, %rax
	shlq	$2, %rax
	addq	$2, %rax
	movl	-116(%rbp), %edi        # 4-byte Reload
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fmake_vector
	xorl	%edi, %edi
	movq	-40(%rbp), %rdx
	movq	%rax, 72(%rdx)
	movq	-8(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fmake_vector
	xorl	%edi, %edi
	movq	-40(%rbp), %rdx
	movq	%rax, 32(%rdx)
	movq	-8(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fmake_vector
	xorl	%edi, %edi
	movq	-40(%rbp), %rdx
	movq	%rax, 40(%rdx)
	movq	-56(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fmake_vector
	movq	-40(%rbp), %rdx
	movq	%rax, 56(%rdx)
	movq	$0, -72(%rbp)
.LBB94_11:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-72(%rbp), %rax
	movq	-64(%rbp), %rcx
	subq	$1, %rcx
	cmpq	%rcx, %rax
	jge	.LBB94_14
# BB#12:                                # %for.body
                                        #   in Loop: Header=BB94_11 Depth=1
	movq	-40(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movq	-72(%rbp), %rax
	addq	$1, %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rdx
	callq	set_hash_next_slot
# BB#13:                                # %for.inc
                                        #   in Loop: Header=BB94_11 Depth=1
	movq	-72(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -72(%rbp)
	jmp	.LBB94_11
.LBB94_14:                              # %for.end
	movl	$5, %esi
	movq	-40(%rbp), %rax
	movq	$2, 48(%rax)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	xorl	%edi, %edi
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-160(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB94_16
# BB#15:                                # %if.then.43
	movq	-40(%rbp), %rax
	movq	$0, 120(%rax)
	jmp	.LBB94_17
.LBB94_16:                              # %if.else
	movq	weak_hash_tables, %rax
	movq	-40(%rbp), %rcx
	movq	%rax, 120(%rcx)
	movq	-40(%rbp), %rax
	movq	%rax, weak_hash_tables
.LBB94_17:                              # %if.end.45
	movq	-48(%rbp), %rax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end94:
	.size	make_hash_table, .Lfunc_end94-make_hash_table
	.cfi_endproc

	.align	16, 0x90
	.type	allocate_hash_table,@function
allocate_hash_table:                    # @allocate_hash_table
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp285:
	.cfi_def_cfa_offset 16
.Ltmp286:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp287:
	.cfi_def_cfa_register %rbp
	movl	$15, %edi
	movl	$7, %eax
	movl	%eax, %esi
	movl	%eax, %edx
	movl	%eax, %ecx
	callq	allocate_pseudovector
	popq	%rbp
	retq
.Lfunc_end95:
	.size	allocate_hash_table, .Lfunc_end95-allocate_hash_table
	.cfi_endproc

	.align	16, 0x90
	.type	set_hash_next_slot,@function
set_hash_next_slot:                     # @set_hash_next_slot
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp288:
	.cfi_def_cfa_offset 16
.Ltmp289:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp290:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	40(%rdx), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	gc_aset
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end96:
	.size	set_hash_next_slot, .Lfunc_end96-set_hash_next_slot
	.cfi_endproc

	.globl	hash_lookup
	.align	16, 0x90
	.type	hash_lookup,@function
hash_lookup:                            # @hash_lookup
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp291:
	.cfi_def_cfa_offset 16
.Ltmp292:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp293:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	112(%rdx), %rdx
	movq	-8(%rbp), %rsi
	addq	$80, %rsi
	movq	-16(%rbp), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-64(%rbp), %rsi         # 8-byte Reload
	callq	*%rdx
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB97_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB97_2:                               # %if.end
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	56(%rcx), %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	ASIZE
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movq	%rcx, %rax
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	movq	-80(%rbp), %rdi         # 8-byte Reload
	divq	%rdi
	movq	%rdx, -40(%rbp)
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	HASH_INDEX
	movq	%rax, -48(%rbp)
.LBB97_3:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	xorb	$-1, %dl
	testb	$1, %dl
	jne	.LBB97_4
	jmp	.LBB97_10
.LBB97_4:                               # %while.body
                                        #   in Loop: Header=BB97_3 Depth=1
	movq	-48(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	HASH_KEY
	movq	-96(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB97_8
# BB#5:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB97_3 Depth=1
	movq	-8(%rbp), %rax
	cmpq	$0, 104(%rax)
	je	.LBB97_9
# BB#6:                                 # %land.lhs.true
                                        #   in Loop: Header=BB97_3 Depth=1
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	HASH_HASH
	movq	%rax, %rdi
	callq	XUINT
	movq	-104(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB97_9
# BB#7:                                 # %land.lhs.true.12
                                        #   in Loop: Header=BB97_3 Depth=1
	movq	-8(%rbp), %rax
	movq	104(%rax), %rax
	movq	-8(%rbp), %rcx
	addq	$80, %rcx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	-56(%rbp), %rdx
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	movq	%rdx, %rsi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	callq	HASH_KEY
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	-112(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	movq	-120(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	testb	$1, %al
	jne	.LBB97_8
	jmp	.LBB97_9
.LBB97_8:                               # %if.then.18
	jmp	.LBB97_10
.LBB97_9:                               # %if.end.19
                                        #   in Loop: Header=BB97_3 Depth=1
	movq	-8(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	HASH_NEXT
	movq	%rax, -48(%rbp)
	jmp	.LBB97_3
.LBB97_10:                              # %while.end
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-136(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB97_12
# BB#11:                                # %cond.true
	movq	$-1, %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	jmp	.LBB97_13
.LBB97_12:                              # %cond.false
	movq	-48(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
.LBB97_13:                              # %cond.end
	movq	-144(%rbp), %rax        # 8-byte Reload
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end97:
	.size	hash_lookup, .Lfunc_end97-hash_lookup
	.cfi_endproc

	.globl	hash_put
	.align	16, 0x90
	.type	hash_put,@function
hash_put:                               # @hash_put
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp294:
	.cfi_def_cfa_offset 16
.Ltmp295:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp296:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	callq	maybe_resize_hash_table
	movq	-8(%rbp), %rcx
	movq	64(%rcx), %rdx
	addq	$1, %rdx
	movq	%rdx, 64(%rcx)
	movq	-8(%rbp), %rcx
	movq	48(%rcx), %rcx
	sarq	$2, %rcx
	movq	%rcx, -48(%rbp)
	movq	-8(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	HASH_NEXT
	movq	-8(%rbp), %rcx
	movq	%rax, 48(%rcx)
	movq	-8(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-16(%rbp), %rdx
	callq	set_hash_key_slot
	movq	-8(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	set_hash_value_slot
	movq	-8(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-32(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rdx
	callq	set_hash_hash_slot
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	56(%rcx), %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	ASIZE
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	%rcx, %rax
	xorl	%r8d, %r8d
	movl	%r8d, %edx
	movq	-64(%rbp), %rsi         # 8-byte Reload
	divq	%rsi
	movq	%rdx, -40(%rbp)
	movq	-8(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-8(%rbp), %rdx
	movq	-40(%rbp), %r9
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	movq	%r9, %rsi
	callq	HASH_INDEX
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	set_hash_next_slot
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-48(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rdx
	callq	set_hash_index_slot
	movq	-48(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end98:
	.size	hash_put, .Lfunc_end98-hash_put
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI99_0:
	.quad	4877398396442247168     # double 1.152921504606847E+18
	.text
	.align	16, 0x90
	.type	maybe_resize_hash_table,@function
maybe_resize_hash_table:                # @maybe_resize_hash_table
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp297:
	.cfi_def_cfa_offset 16
.Ltmp298:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp299:
	.cfi_def_cfa_register %rbp
	subq	$240, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	48(%rdi), %rdi
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB99_34
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	HASH_TABLE_SIZE
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB99_3
# BB#2:                                 # %if.then.5
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	16(%rcx), %rcx
	sarq	$2, %rcx
	addq	%rcx, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB99_9
.LBB99_3:                               # %if.else
	cvtsi2sdq	-16(%rbp), %xmm0
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	movsd	%xmm0, -112(%rbp)       # 8-byte Spill
	callq	XFLOAT_DATA
	movsd	.LCPI99_0, %xmm1        # xmm1 = mem[0],zero
	movsd	-112(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	mulsd	%xmm0, %xmm2
	movsd	%xmm2, -64(%rbp)
	ucomisd	-64(%rbp), %xmm1
	jbe	.LBB99_7
# BB#4:                                 # %if.then.12
	cvttsd2si	-64(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jg	.LBB99_6
# BB#5:                                 # %if.then.16
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
.LBB99_6:                               # %if.end
	jmp	.LBB99_8
.LBB99_7:                               # %if.else.18
	movabsq	$1152921504606846976, %rax # imm = 0x1000000000000000
	movq	%rax, -24(%rbp)
.LBB99_8:                               # %if.end.19
	jmp	.LBB99_9
.LBB99_9:                               # %if.end.20
	cvtsi2sdq	-24(%rbp), %xmm0
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdi
	movsd	%xmm0, -120(%rbp)       # 8-byte Spill
	callq	XFLOAT_DATA
	movsd	.LCPI99_0, %xmm1        # xmm1 = mem[0],zero
	movsd	-120(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	divsd	%xmm0, %xmm2
	movsd	%xmm2, -56(%rbp)
	ucomisd	-56(%rbp), %xmm1
	jbe	.LBB99_11
# BB#10:                                # %cond.true
	cvttsd2si	-56(%rbp), %rdi
	callq	next_almost_prime
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jmp	.LBB99_12
.LBB99_11:                              # %cond.false
	movabsq	$1152921504606846976, %rax # imm = 0x1000000000000000
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jmp	.LBB99_12
.LBB99_12:                              # %cond.end
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	shlq	$1, %rcx
	cmpq	%rcx, %rax
	jle	.LBB99_14
# BB#13:                                # %cond.true.30
	movq	-32(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	jmp	.LBB99_15
.LBB99_14:                              # %cond.false.31
	movq	-24(%rbp), %rax
	shlq	$1, %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
.LBB99_15:                              # %cond.end.33
	movq	-136(%rbp), %rax        # 8-byte Reload
	movabsq	$1152921504606846975, %rcx # imm = 0xFFFFFFFFFFFFFFF
	movq	%rax, -40(%rbp)
	cmpq	-40(%rbp), %rcx
	jge	.LBB99_17
# BB#16:                                # %if.then.37
	movabsq	$.L.str.28, %rdi
	movb	$0, %al
	callq	error
.LBB99_17:                              # %if.end.38
	movq	$-1, %rdx
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movq	-24(%rbp), %rcx
	subq	-16(%rbp), %rcx
	shlq	$1, %rcx
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	larger_vector
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	set_hash_key_and_value
	movq	$-1, %rdx
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	-24(%rbp), %rcx
	subq	-16(%rbp), %rcx
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	larger_vector
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	set_hash_next
	movq	$-1, %rdx
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	-24(%rbp), %rcx
	subq	-16(%rbp), %rcx
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	larger_vector
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	set_hash_hash
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fmake_vector
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	set_hash_index
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
.LBB99_18:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-48(%rbp), %rax
	movq	-24(%rbp), %rcx
	subq	$1, %rcx
	cmpq	%rcx, %rax
	jge	.LBB99_21
# BB#19:                                # %for.body
                                        #   in Loop: Header=BB99_18 Depth=1
	movq	-8(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-48(%rbp), %rax
	addq	$1, %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rdx
	callq	set_hash_next_slot
# BB#20:                                # %for.inc
                                        #   in Loop: Header=BB99_18 Depth=1
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB99_18
.LBB99_21:                              # %for.end
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-184(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB99_26
# BB#22:                                # %if.then.58
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -72(%rbp)
.LBB99_23:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rdi
	movq	-72(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, %rsi
	callq	HASH_NEXT
	xorl	%edi, %edi
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-192(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	sete	%cl
	xorb	$-1, %cl
	testb	$1, %cl
	jne	.LBB99_24
	jmp	.LBB99_25
.LBB99_24:                              # %while.body
                                        #   in Loop: Header=BB99_23 Depth=1
	movq	-80(%rbp), %rax
	movq	%rax, -72(%rbp)
	jmp	.LBB99_23
.LBB99_25:                              # %while.end
	movq	-8(%rbp), %rdi
	movq	-72(%rbp), %rax
	sarq	$2, %rax
	movq	-16(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	set_hash_next_slot
	jmp	.LBB99_27
.LBB99_26:                              # %if.else.69
	movq	-16(%rbp), %rdi
	callq	make_natnum
	movq	-8(%rbp), %rdi
	movq	%rax, 48(%rdi)
.LBB99_27:                              # %if.end.72
	movq	$0, -48(%rbp)
.LBB99_28:                              # %for.cond.73
                                        # =>This Inner Loop Header: Depth=1
	movq	-48(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jge	.LBB99_33
# BB#29:                                # %for.body.76
                                        #   in Loop: Header=BB99_28 Depth=1
	movq	-8(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	HASH_HASH
	xorl	%edi, %edi
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-200(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB99_31
# BB#30:                                # %if.then.81
                                        #   in Loop: Header=BB99_28 Depth=1
	movq	-8(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	HASH_HASH
	movq	%rax, %rdi
	callq	XUINT
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	-8(%rbp), %rsi
	movq	56(%rsi), %rdi
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	ASIZE
	movq	-208(%rbp), %rsi        # 8-byte Reload
	movq	%rax, -216(%rbp)        # 8-byte Spill
	movq	%rsi, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-216(%rbp), %rdi        # 8-byte Reload
	divq	%rdi
	movq	%rdx, -96(%rbp)
	movq	-8(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-8(%rbp), %rdx
	movq	-96(%rbp), %r8
	movq	%rdi, -224(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rsi, -232(%rbp)        # 8-byte Spill
	movq	%r8, %rsi
	callq	HASH_INDEX
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	-232(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	set_hash_next_slot
	movq	-8(%rbp), %rdi
	movq	-96(%rbp), %rsi
	movq	-48(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rdx
	callq	set_hash_index_slot
.LBB99_31:                              # %if.end.88
                                        #   in Loop: Header=BB99_28 Depth=1
	jmp	.LBB99_32
.LBB99_32:                              # %for.inc.89
                                        #   in Loop: Header=BB99_28 Depth=1
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB99_28
.LBB99_33:                              # %for.end.91
	jmp	.LBB99_34
.LBB99_34:                              # %if.end.92
	addq	$240, %rsp
	popq	%rbp
	retq
.Lfunc_end99:
	.size	maybe_resize_hash_table, .Lfunc_end99-maybe_resize_hash_table
	.cfi_endproc

	.align	16, 0x90
	.type	set_hash_hash_slot,@function
set_hash_hash_slot:                     # @set_hash_hash_slot
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp300:
	.cfi_def_cfa_offset 16
.Ltmp301:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp302:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	32(%rdx), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	gc_aset
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end100:
	.size	set_hash_hash_slot, .Lfunc_end100-set_hash_hash_slot
	.cfi_endproc

	.align	16, 0x90
	.type	set_hash_index_slot,@function
set_hash_index_slot:                    # @set_hash_index_slot
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp303:
	.cfi_def_cfa_offset 16
.Ltmp304:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp305:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	56(%rdx), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	gc_aset
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end101:
	.size	set_hash_index_slot, .Lfunc_end101-set_hash_index_slot
	.cfi_endproc

	.globl	hash_remove_from_table
	.align	16, 0x90
	.type	hash_remove_from_table,@function
hash_remove_from_table:                 # @hash_remove_from_table
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp306:
	.cfi_def_cfa_offset 16
.Ltmp307:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp308:
	.cfi_def_cfa_register %rbp
	subq	$224, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	112(%rsi), %rsi
	movq	-8(%rbp), %rdi
	addq	$80, %rdi
	movq	-16(%rbp), %rax
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movq	-64(%rbp), %rax         # 8-byte Reload
	callq	*%rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rsi
	movq	56(%rsi), %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	ASIZE
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movq	%rsi, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	divq	%rdi
	movq	%rdx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	HASH_INDEX
	xorl	%edi, %edi
	movq	%rax, -40(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, -48(%rbp)
.LBB102_1:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	xorb	$-1, %dl
	testb	$1, %dl
	jne	.LBB102_2
	jmp	.LBB102_12
.LBB102_2:                              # %while.body
                                        #   in Loop: Header=BB102_1 Depth=1
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	HASH_KEY
	movq	-96(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB102_6
# BB#3:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB102_1 Depth=1
	movq	-8(%rbp), %rax
	cmpq	$0, 104(%rax)
	je	.LBB102_10
# BB#4:                                 # %land.lhs.true
                                        #   in Loop: Header=BB102_1 Depth=1
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	HASH_HASH
	movq	%rax, %rdi
	callq	XUINT
	movq	-104(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB102_10
# BB#5:                                 # %land.lhs.true.12
                                        #   in Loop: Header=BB102_1 Depth=1
	movq	-8(%rbp), %rax
	movq	104(%rax), %rax
	movq	-8(%rbp), %rcx
	addq	$80, %rcx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	-56(%rbp), %rdx
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	movq	%rdx, %rsi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	callq	HASH_KEY
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	-112(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	movq	-120(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	testb	$1, %al
	jne	.LBB102_6
	jmp	.LBB102_10
.LBB102_6:                              # %if.then
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-136(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB102_8
# BB#7:                                 # %if.then.20
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -152(%rbp)        # 8-byte Spill
	movq	%rcx, %rsi
	callq	HASH_NEXT
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	-152(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	set_hash_index_slot
	jmp	.LBB102_9
.LBB102_8:                              # %if.else
	movq	-8(%rbp), %rdi
	movq	-48(%rbp), %rax
	sarq	$2, %rax
	movq	-8(%rbp), %rcx
	movq	-56(%rbp), %rsi
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	HASH_NEXT
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	-168(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	set_hash_next_slot
.LBB102_9:                              # %if.end
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	-56(%rbp), %rsi
	movq	%rsi, -176(%rbp)        # 8-byte Spill
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	-176(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	set_hash_key_slot
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	-56(%rbp), %rsi
	movq	%rsi, -192(%rbp)        # 8-byte Spill
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	-192(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	set_hash_value_slot
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	-56(%rbp), %rsi
	movq	%rsi, -208(%rbp)        # 8-byte Spill
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	-208(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	set_hash_hash_slot
	movq	-8(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdx
	callq	set_hash_next_slot
	movq	-56(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	-8(%rbp), %rdx
	movq	%rax, 48(%rdx)
	movq	-8(%rbp), %rax
	movq	64(%rax), %rdx
	addq	$-1, %rdx
	movq	%rdx, 64(%rax)
	jmp	.LBB102_12
.LBB102_10:                             # %if.else.28
                                        #   in Loop: Header=BB102_1 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	HASH_NEXT
	movq	%rax, -40(%rbp)
# BB#11:                                # %if.end.30
                                        #   in Loop: Header=BB102_1 Depth=1
	jmp	.LBB102_1
.LBB102_12:                             # %while.end
	addq	$224, %rsp
	popq	%rbp
	retq
.Lfunc_end102:
	.size	hash_remove_from_table, .Lfunc_end102-hash_remove_from_table
	.cfi_endproc

	.globl	sweep_weak_hash_tables
	.align	16, 0x90
	.type	sweep_weak_hash_tables,@function
sweep_weak_hash_tables:                 # @sweep_weak_hash_tables
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp309:
	.cfi_def_cfa_offset 16
.Ltmp310:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp311:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
.LBB103_1:                              # %do.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB103_2 Depth 2
	movb	$0, -25(%rbp)
	movq	weak_hash_tables, %rax
	movq	%rax, -8(%rbp)
.LBB103_2:                              # %for.cond
                                        #   Parent Loop BB103_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -8(%rbp)
	je	.LBB103_7
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB103_2 Depth=2
	movq	-8(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	andq	(%rax), %rcx
	cmpq	$0, %rcx
	je	.LBB103_5
# BB#4:                                 # %if.then
                                        #   in Loop: Header=BB103_2 Depth=2
	xorl	%esi, %esi
	movq	-8(%rbp), %rdi
	callq	sweep_weak_table
	andb	$1, %al
	movzbl	%al, %esi
	movb	-25(%rbp), %al
	andb	$1, %al
	movzbl	%al, %ecx
	orl	%esi, %ecx
	cmpl	$0, %ecx
	setne	%al
	andb	$1, %al
	movb	%al, -25(%rbp)
.LBB103_5:                              # %if.end
                                        #   in Loop: Header=BB103_2 Depth=2
	jmp	.LBB103_6
.LBB103_6:                              # %for.inc
                                        #   in Loop: Header=BB103_2 Depth=2
	movq	-8(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB103_2
.LBB103_7:                              # %for.end
                                        #   in Loop: Header=BB103_1 Depth=1
	jmp	.LBB103_8
.LBB103_8:                              # %do.cond
                                        #   in Loop: Header=BB103_1 Depth=1
	testb	$1, -25(%rbp)
	jne	.LBB103_1
# BB#9:                                 # %do.end
	movq	weak_hash_tables, %rax
	movq	%rax, -8(%rbp)
	movq	$0, -16(%rbp)
.LBB103_10:                             # %for.cond.6
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -8(%rbp)
	je	.LBB103_17
# BB#11:                                # %for.body.8
                                        #   in Loop: Header=BB103_10 Depth=1
	movq	-8(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	andq	(%rax), %rcx
	cmpq	$0, %rcx
	je	.LBB103_15
# BB#12:                                # %if.then.14
                                        #   in Loop: Header=BB103_10 Depth=1
	movq	-8(%rbp), %rax
	cmpq	$0, 64(%rax)
	jle	.LBB103_14
# BB#13:                                # %if.then.16
                                        #   in Loop: Header=BB103_10 Depth=1
	movl	$1, %esi
	movq	-8(%rbp), %rdi
	callq	sweep_weak_table
	movb	%al, -26(%rbp)          # 1-byte Spill
.LBB103_14:                             # %if.end.18
                                        #   in Loop: Header=BB103_10 Depth=1
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 120(%rcx)
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
.LBB103_15:                             # %if.end.20
                                        #   in Loop: Header=BB103_10 Depth=1
	jmp	.LBB103_16
.LBB103_16:                             # %for.inc.21
                                        #   in Loop: Header=BB103_10 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB103_10
.LBB103_17:                             # %for.end.22
	movq	-16(%rbp), %rax
	movq	%rax, weak_hash_tables
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end103:
	.size	sweep_weak_hash_tables, .Lfunc_end103-sweep_weak_hash_tables
	.cfi_endproc

	.align	16, 0x90
	.type	sweep_weak_table,@function
sweep_weak_table:                       # @sweep_weak_table
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp312:
	.cfi_def_cfa_offset 16
.Ltmp313:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp314:
	.cfi_def_cfa_register %rbp
	subq	$192, %rsp
	movb	%sil, %al
	movq	%rdi, -8(%rbp)
	andb	$1, %al
	movb	%al, -9(%rbp)
	movq	-8(%rbp), %rdi
	movq	56(%rdi), %rdi
	callq	gc_asize
	movq	%rax, -24(%rbp)
	movb	$0, -25(%rbp)
	movq	$0, -40(%rbp)
.LBB104_1:                              # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB104_3 Depth 2
	movq	-40(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jge	.LBB104_39
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB104_1 Depth=1
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -64(%rbp)
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	HASH_INDEX
	movq	%rax, -48(%rbp)
.LBB104_3:                              # %for.cond.3
                                        #   Parent Loop BB104_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	xorb	$-1, %dl
	testb	$1, %dl
	jne	.LBB104_4
	jmp	.LBB104_37
.LBB104_4:                              # %for.body.6
                                        #   in Loop: Header=BB104_3 Depth=2
	movq	-48(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -72(%rbp)
	movq	-8(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	HASH_KEY
	movq	%rax, %rdi
	callq	survives_gc_p
	andb	$1, %al
	movb	%al, -73(%rbp)
	movq	-8(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	HASH_VALUE
	movq	%rax, %rdi
	callq	survives_gc_p
	movl	$586, %edi              # imm = 0x24A
	andb	$1, %al
	movb	%al, -74(%rbp)
	movq	-8(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB104_6
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB104_3 Depth=2
	movb	-73(%rbp), %al
	xorb	$-1, %al
	andb	$1, %al
	movb	%al, -75(%rbp)
	jmp	.LBB104_20
.LBB104_6:                              # %if.else
                                        #   in Loop: Header=BB104_3 Depth=2
	movl	$991, %edi              # imm = 0x3DF
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB104_8
# BB#7:                                 # %if.then.20
                                        #   in Loop: Header=BB104_3 Depth=2
	movb	-74(%rbp), %al
	xorb	$-1, %al
	andb	$1, %al
	movb	%al, -75(%rbp)
	jmp	.LBB104_19
.LBB104_8:                              # %if.else.24
                                        #   in Loop: Header=BB104_3 Depth=2
	movl	$588, %edi              # imm = 0x24C
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB104_12
# BB#9:                                 # %if.then.28
                                        #   in Loop: Header=BB104_3 Depth=2
	movb	$1, %al
	testb	$1, -73(%rbp)
	movb	%al, -113(%rbp)         # 1-byte Spill
	jne	.LBB104_11
# BB#10:                                # %lor.rhs
                                        #   in Loop: Header=BB104_3 Depth=2
	movb	-74(%rbp), %al
	movb	%al, -113(%rbp)         # 1-byte Spill
.LBB104_11:                             # %lor.end
                                        #   in Loop: Header=BB104_3 Depth=2
	movb	-113(%rbp), %al         # 1-byte Reload
	xorb	$-1, %al
	andb	$1, %al
	movb	%al, -75(%rbp)
	jmp	.LBB104_18
.LBB104_12:                             # %if.else.33
                                        #   in Loop: Header=BB104_3 Depth=2
	movl	$587, %edi              # imm = 0x24B
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-128(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB104_16
# BB#13:                                # %if.then.37
                                        #   in Loop: Header=BB104_3 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, -73(%rbp)
	movb	%cl, -129(%rbp)         # 1-byte Spill
	je	.LBB104_15
# BB#14:                                # %land.rhs
                                        #   in Loop: Header=BB104_3 Depth=2
	movb	-74(%rbp), %al
	movb	%al, -129(%rbp)         # 1-byte Spill
.LBB104_15:                             # %land.end
                                        #   in Loop: Header=BB104_3 Depth=2
	movb	-129(%rbp), %al         # 1-byte Reload
	xorb	$-1, %al
	andb	$1, %al
	movb	%al, -75(%rbp)
	jmp	.LBB104_17
.LBB104_16:                             # %if.else.42
	callq	emacs_abort
.LBB104_17:                             # %if.end
                                        #   in Loop: Header=BB104_3 Depth=2
	jmp	.LBB104_18
.LBB104_18:                             # %if.end.43
                                        #   in Loop: Header=BB104_3 Depth=2
	jmp	.LBB104_19
.LBB104_19:                             # %if.end.44
                                        #   in Loop: Header=BB104_3 Depth=2
	jmp	.LBB104_20
.LBB104_20:                             # %if.end.45
                                        #   in Loop: Header=BB104_3 Depth=2
	movq	-8(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	HASH_NEXT
	movq	%rax, -56(%rbp)
	testb	$1, -9(%rbp)
	je	.LBB104_28
# BB#21:                                # %if.then.48
                                        #   in Loop: Header=BB104_3 Depth=2
	testb	$1, -75(%rbp)
	je	.LBB104_26
# BB#22:                                # %if.then.50
                                        #   in Loop: Header=BB104_3 Depth=2
	xorl	%edi, %edi
	movq	-64(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-144(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB104_24
# BB#23:                                # %if.then.53
                                        #   in Loop: Header=BB104_3 Depth=2
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-56(%rbp), %rdx
	callq	set_hash_index_slot
	jmp	.LBB104_25
.LBB104_24:                             # %if.else.54
                                        #   in Loop: Header=BB104_3 Depth=2
	movq	-8(%rbp), %rdi
	movq	-64(%rbp), %rax
	sarq	$2, %rax
	movq	-56(%rbp), %rdx
	movq	%rax, %rsi
	callq	set_hash_next_slot
.LBB104_25:                             # %if.end.56
                                        #   in Loop: Header=BB104_3 Depth=2
	movq	-8(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdx
	callq	set_hash_next_slot
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rax, 48(%rdx)
	movq	-8(%rbp), %rax
	movq	-72(%rbp), %rsi
	movq	%rsi, -152(%rbp)        # 8-byte Spill
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	-152(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	set_hash_key_slot
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	-72(%rbp), %rsi
	movq	%rsi, -168(%rbp)        # 8-byte Spill
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	-168(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	set_hash_value_slot
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	-72(%rbp), %rsi
	movq	%rsi, -184(%rbp)        # 8-byte Spill
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	-184(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	set_hash_hash_slot
	movq	-8(%rbp), %rax
	movq	64(%rax), %rdx
	addq	$-1, %rdx
	movq	%rdx, 64(%rax)
	jmp	.LBB104_27
.LBB104_26:                             # %if.else.61
                                        #   in Loop: Header=BB104_3 Depth=2
	movq	-48(%rbp), %rax
	movq	%rax, -64(%rbp)
.LBB104_27:                             # %if.end.62
                                        #   in Loop: Header=BB104_3 Depth=2
	jmp	.LBB104_35
.LBB104_28:                             # %if.else.63
                                        #   in Loop: Header=BB104_3 Depth=2
	testb	$1, -75(%rbp)
	jne	.LBB104_34
# BB#29:                                # %if.then.65
                                        #   in Loop: Header=BB104_3 Depth=2
	testb	$1, -73(%rbp)
	jne	.LBB104_31
# BB#30:                                # %if.then.67
                                        #   in Loop: Header=BB104_3 Depth=2
	movq	-8(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	HASH_KEY
	movq	%rax, %rdi
	callq	mark_object
	movb	$1, -25(%rbp)
.LBB104_31:                             # %if.end.69
                                        #   in Loop: Header=BB104_3 Depth=2
	testb	$1, -74(%rbp)
	jne	.LBB104_33
# BB#32:                                # %if.then.71
                                        #   in Loop: Header=BB104_3 Depth=2
	movq	-8(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	HASH_VALUE
	movq	%rax, %rdi
	callq	mark_object
	movb	$1, -25(%rbp)
.LBB104_33:                             # %if.end.73
                                        #   in Loop: Header=BB104_3 Depth=2
	jmp	.LBB104_34
.LBB104_34:                             # %if.end.74
                                        #   in Loop: Header=BB104_3 Depth=2
	jmp	.LBB104_35
.LBB104_35:                             # %if.end.75
                                        #   in Loop: Header=BB104_3 Depth=2
	jmp	.LBB104_36
.LBB104_36:                             # %for.inc
                                        #   in Loop: Header=BB104_3 Depth=2
	movq	-56(%rbp), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB104_3
.LBB104_37:                             # %for.end
                                        #   in Loop: Header=BB104_1 Depth=1
	jmp	.LBB104_38
.LBB104_38:                             # %for.inc.76
                                        #   in Loop: Header=BB104_1 Depth=1
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB104_1
.LBB104_39:                             # %for.end.77
	movb	-25(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end104:
	.size	sweep_weak_table, .Lfunc_end104-sweep_weak_table
	.cfi_endproc

	.globl	hash_string
	.align	16, 0x90
	.type	hash_string,@function
hash_string:                            # @hash_string
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp315:
	.cfi_def_cfa_offset 16
.Ltmp316:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp317:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	addq	-16(%rbp), %rsi
	movq	%rsi, -32(%rbp)
	movq	$0, -48(%rbp)
.LBB105_1:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	cmpq	-32(%rbp), %rax
	je	.LBB105_3
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB105_1 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	movb	(%rax), %dl
	movb	%dl, -33(%rbp)
	movq	-48(%rbp), %rdi
	movzbl	-33(%rbp), %esi
                                        # kill: RSI<def> ESI<kill>
	callq	sxhash_combine
	movq	%rax, -48(%rbp)
	jmp	.LBB105_1
.LBB105_3:                              # %while.end
	movq	-48(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end105:
	.size	hash_string, .Lfunc_end105-hash_string
	.cfi_endproc

	.globl	sxhash
	.align	16, 0x90
	.type	sxhash,@function
sxhash:                                 # @sxhash
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp318:
	.cfi_def_cfa_offset 16
.Ltmp319:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp320:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	cmpl	$3, -20(%rbp)
	jle	.LBB106_2
# BB#1:                                 # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB106_17
.LBB106_2:                              # %if.end
	movq	-16(%rbp), %rax
	movl	%eax, %ecx
	andl	$7, %ecx
	movl	%ecx, %eax
	movl	%eax, %ecx
	subl	$7, %ecx
	movq	%rax, -40(%rbp)         # 8-byte Spill
	movl	%ecx, -44(%rbp)         # 4-byte Spill
	ja	.LBB106_15
# BB#18:                                # %if.end
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	.LJTI106_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB106_3:                              # %sw.bb
	movq	-16(%rbp), %rdi
	callq	XUINT
	movq	%rax, -32(%rbp)
	jmp	.LBB106_16
.LBB106_4:                              # %sw.bb.1
	movq	-16(%rbp), %rdi
	callq	XUINT
	movq	%rax, -32(%rbp)
	jmp	.LBB106_16
.LBB106_5:                              # %sw.bb.3
	movq	-16(%rbp), %rdi
	callq	SSDATA
	movq	-16(%rbp), %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	SBYTES
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	sxhash_string
	movq	%rax, -32(%rbp)
	jmp	.LBB106_16
.LBB106_6:                              # %sw.bb.7
	movq	-16(%rbp), %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB106_7
	jmp	.LBB106_8
.LBB106_7:                              # %if.then.9
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	sxhash_vector
	movq	%rax, -32(%rbp)
	jmp	.LBB106_12
.LBB106_8:                              # %if.else
	movq	-16(%rbp), %rdi
	callq	BOOL_VECTOR_P
	testb	$1, %al
	jne	.LBB106_9
	jmp	.LBB106_10
.LBB106_9:                              # %if.then.12
	movq	-16(%rbp), %rdi
	callq	sxhash_bool_vector
	movq	%rax, -32(%rbp)
	jmp	.LBB106_11
.LBB106_10:                             # %if.else.14
	movq	-16(%rbp), %rdi
	callq	XUINT
	movq	%rax, -32(%rbp)
.LBB106_11:                             # %if.end.16
	jmp	.LBB106_12
.LBB106_12:                             # %if.end.17
	jmp	.LBB106_16
.LBB106_13:                             # %sw.bb.18
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	sxhash_list
	movq	%rax, -32(%rbp)
	jmp	.LBB106_16
.LBB106_14:                             # %sw.bb.20
	movq	-16(%rbp), %rdi
	callq	XFLOAT_DATA
	callq	sxhash_float
	movq	%rax, -32(%rbp)
	jmp	.LBB106_16
.LBB106_15:                             # %sw.default
	callq	emacs_abort
.LBB106_16:                             # %sw.epilog
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB106_17:                             # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end106:
	.size	sxhash, .Lfunc_end106-sxhash
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI106_0:
	.quad	.LBB106_4
	.quad	.LBB106_4
	.quad	.LBB106_3
	.quad	.LBB106_13
	.quad	.LBB106_5
	.quad	.LBB106_6
	.quad	.LBB106_3
	.quad	.LBB106_14

	.text
	.align	16, 0x90
	.type	sxhash_string,@function
sxhash_string:                          # @sxhash_string
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp321:
	.cfi_def_cfa_offset 16
.Ltmp322:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp323:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	hash_string
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	SXHASH_REDUCE
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end107:
	.size	sxhash_string, .Lfunc_end107-sxhash_string
	.cfi_endproc

	.align	16, 0x90
	.type	sxhash_vector,@function
sxhash_vector:                          # @sxhash_vector
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp324:
	.cfi_def_cfa_offset 16
.Ltmp325:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp326:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	callq	ASIZE
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	ASIZE
	movl	$7, %esi
	movl	%esi, %edi
	cmpq	%rax, %rdi
	jge	.LBB108_2
# BB#1:                                 # %cond.true
	movl	$7, %eax
	movl	%eax, %ecx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	jmp	.LBB108_3
.LBB108_2:                              # %cond.false
	movq	-8(%rbp), %rdi
	callq	ASIZE
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB108_3:                              # %cond.end
	movq	-48(%rbp), %rax         # 8-byte Reload
	movl	%eax, %ecx
	movl	%ecx, -32(%rbp)
	movl	$0, -28(%rbp)
.LBB108_4:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jge	.LBB108_7
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB108_4 Depth=1
	movq	-8(%rbp), %rdi
	movslq	-28(%rbp), %rsi
	callq	AREF
	movl	-12(%rbp), %ecx
	addl	$1, %ecx
	movq	%rax, %rdi
	movl	%ecx, %esi
	callq	sxhash
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	sxhash_combine
	movq	%rax, -24(%rbp)
# BB#6:                                 # %for.inc
                                        #   in Loop: Header=BB108_4 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB108_4
.LBB108_7:                              # %for.end
	movq	-24(%rbp), %rdi
	callq	SXHASH_REDUCE
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end108:
	.size	sxhash_vector, .Lfunc_end108-sxhash_vector
	.cfi_endproc

	.align	16, 0x90
	.type	sxhash_bool_vector,@function
sxhash_bool_vector:                     # @sxhash_bool_vector
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp327:
	.cfi_def_cfa_offset 16
.Ltmp328:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp329:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	bool_vector_size
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	bool_vector_words
	movl	$7, %ecx
	movl	%ecx, %edi
	cmpq	%rax, %rdi
	jge	.LBB109_2
# BB#1:                                 # %cond.true
	movl	$7, %eax
	movl	%eax, %ecx
	movq	%rcx, -40(%rbp)         # 8-byte Spill
	jmp	.LBB109_3
.LBB109_2:                              # %cond.false
	movq	-16(%rbp), %rdi
	callq	bool_vector_words
	movq	%rax, -40(%rbp)         # 8-byte Spill
.LBB109_3:                              # %cond.end
	movq	-40(%rbp), %rax         # 8-byte Reload
	movl	%eax, %ecx
	movl	%ecx, -32(%rbp)
	movl	$0, -28(%rbp)
.LBB109_4:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jge	.LBB109_7
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB109_4 Depth=1
	movq	-24(%rbp), %rdi
	movslq	-28(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	bool_vector_data
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	(%rax,%rcx,8), %rsi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	sxhash_combine
	movq	%rax, -24(%rbp)
# BB#6:                                 # %for.inc
                                        #   in Loop: Header=BB109_4 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB109_4
.LBB109_7:                              # %for.end
	movq	-24(%rbp), %rdi
	callq	SXHASH_REDUCE
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end109:
	.size	sxhash_bool_vector, .Lfunc_end109-sxhash_bool_vector
	.cfi_endproc

	.align	16, 0x90
	.type	sxhash_list,@function
sxhash_list:                            # @sxhash_list
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp330:
	.cfi_def_cfa_offset 16
.Ltmp331:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp332:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	$0, -24(%rbp)
	cmpl	$3, -12(%rbp)
	jge	.LBB110_8
# BB#1:                                 # %if.then
	movl	$0, -28(%rbp)
.LBB110_2:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$3, %eax
	movb	%cl, -49(%rbp)          # 1-byte Spill
	jne	.LBB110_4
# BB#3:                                 # %land.rhs
                                        #   in Loop: Header=BB110_2 Depth=1
	cmpl	$7, -28(%rbp)
	setl	%al
	movb	%al, -49(%rbp)          # 1-byte Spill
.LBB110_4:                              # %land.end
                                        #   in Loop: Header=BB110_2 Depth=1
	movb	-49(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB110_5
	jmp	.LBB110_7
.LBB110_5:                              # %for.body
                                        #   in Loop: Header=BB110_2 Depth=1
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	movl	-12(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, %esi
	callq	sxhash
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	sxhash_combine
	movq	%rax, -24(%rbp)
# BB#6:                                 # %for.inc
                                        #   in Loop: Header=BB110_2 Depth=1
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	movl	-28(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -28(%rbp)
	jmp	.LBB110_2
.LBB110_7:                              # %for.end
	jmp	.LBB110_8
.LBB110_8:                              # %if.end
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB110_10
# BB#9:                                 # %if.then.10
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %esi
	callq	sxhash
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	sxhash_combine
	movq	%rax, -24(%rbp)
.LBB110_10:                             # %if.end.15
	movq	-24(%rbp), %rdi
	callq	SXHASH_REDUCE
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end110:
	.size	sxhash_list, .Lfunc_end110-sxhash_list
	.cfi_endproc

	.align	16, 0x90
	.type	sxhash_float,@function
sxhash_float:                           # @sxhash_float
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp333:
	.cfi_def_cfa_offset 16
.Ltmp334:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp335:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	xorl	%esi, %esi
	xorl	%eax, %eax
	movl	%eax, %edx
	leaq	-24(%rbp), %rcx
	movsd	%xmm0, -8(%rbp)
	movq	$0, -16(%rbp)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -24(%rbp)
	addq	$8, %rcx
	movq	%rcx, %rdi
	callq	memset
	movl	$0, -28(%rbp)
.LBB111_1:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$1, -28(%rbp)
	jge	.LBB111_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB111_1 Depth=1
	movq	-16(%rbp), %rdi
	movslq	-28(%rbp), %rax
	movq	-24(%rbp,%rax,8), %rsi
	callq	sxhash_combine
	movq	%rax, -16(%rbp)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB111_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB111_1
.LBB111_4:                              # %for.end
	movq	-16(%rbp), %rdi
	callq	SXHASH_REDUCE
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end111:
	.size	sxhash_float, .Lfunc_end111-sxhash_float
	.cfi_endproc

	.globl	Fsxhash
	.align	16, 0x90
	.type	Fsxhash,@function
Fsxhash:                                # @Fsxhash
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp336:
	.cfi_def_cfa_offset 16
.Ltmp337:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp338:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	xorl	%esi, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	sxhash
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end112:
	.size	Fsxhash, .Lfunc_end112-Fsxhash
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI113_0:
	.quad	4609434218613702656     # double 1.5
.LCPI113_1:
	.quad	4607182418800017408     # double 1
.LCPI113_2:
	.quad	4605380978949069210     # double 0.80000000000000004
	.text
	.globl	Fmake_hash_table
	.align	16, 0x90
	.type	Fmake_hash_table,@function
Fmake_hash_table:                       # @Fmake_hash_table
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp339:
	.cfi_def_cfa_offset 16
.Ltmp340:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp341:
	.cfi_def_cfa_register %rbp
	subq	$320, %rsp              # imm = 0x140
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$16384, -112(%rbp)      # imm = 0x4000
	callq	SPECPDL_INDEX
	movq	%rax, -120(%rbp)
	movb	$0, -121(%rbp)
	movq	-8(%rbp), %rax
	shlq	$0, %rax
	cmpq	-112(%rbp), %rax
	ja	.LBB113_2
# BB#1:                                 # %cond.true
	movq	-8(%rbp), %rax
	movq	-112(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -112(%rbp)
	movq	-8(%rbp), %rax
	addq	$15, %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -152(%rbp)        # 8-byte Spill
	jmp	.LBB113_3
.LBB113_2:                              # %cond.false
	movb	$1, -121(%rbp)
	movq	-8(%rbp), %rax
	shlq	$0, %rax
	movq	%rax, %rdi
	callq	record_xmalloc
	movq	%rax, -152(%rbp)        # 8-byte Spill
.LBB113_3:                              # %cond.end
	movq	-152(%rbp), %rax        # 8-byte Reload
	movl	$129, %edi
	xorl	%esi, %esi
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	movq	-8(%rbp), %rcx
	shlq	$0, %rcx
	movl	%edi, -156(%rbp)        # 4-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	memset
	movl	-156(%rbp), %edi        # 4-byte Reload
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	-136(%rbp), %rcx
	movq	%rax, %rdi
	callq	get_key_arg
	movq	%rax, -104(%rbp)
	cmpq	$0, -104(%rbp)
	je	.LBB113_5
# BB#4:                                 # %cond.true.8
	movq	-104(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	jmp	.LBB113_6
.LBB113_5:                              # %cond.false.9
	movl	$370, %edi              # imm = 0x172
	callq	builtin_lisp_symbol
	movq	%rax, -168(%rbp)        # 8-byte Spill
.LBB113_6:                              # %cond.end.11
	movq	-168(%rbp), %rax        # 8-byte Reload
	movl	$369, %edi              # imm = 0x171
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-176(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB113_8
# BB#7:                                 # %if.then
	movabsq	$hashtest_eq, %rax
	movl	$40, %ecx
	movl	%ecx, %edx
	leaq	-96(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	callq	memcpy
	jmp	.LBB113_18
.LBB113_8:                              # %if.else
	movl	$370, %edi              # imm = 0x172
	movq	-24(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-184(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB113_10
# BB#9:                                 # %if.then.17
	movabsq	$hashtest_eql, %rax
	movl	$40, %ecx
	movl	%ecx, %edx
	leaq	-96(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	callq	memcpy
	jmp	.LBB113_17
.LBB113_10:                             # %if.else.18
	movl	$371, %edi              # imm = 0x173
	movq	-24(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-192(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB113_12
# BB#11:                                # %if.then.21
	movabsq	$hashtest_equal, %rax
	movl	$40, %ecx
	movl	%ecx, %edx
	leaq	-96(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	callq	memcpy
	jmp	.LBB113_16
.LBB113_12:                             # %if.else.22
	movl	$511, %edi              # imm = 0x1FF
	movq	-24(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fget
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB113_14
# BB#13:                                # %lor.lhs.false
	movq	-144(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	je	.LBB113_15
.LBB113_14:                             # %if.then.32
	movabsq	$.L.str.17, %rdi
	movq	-24(%rbp), %rsi
	callq	signal_error
.LBB113_15:                             # %if.end
	movabsq	$cmpfn_user_defined, %rax
	movabsq	$hashfn_user_defined, %rcx
	movq	-24(%rbp), %rdx
	movq	%rdx, -96(%rbp)
	movq	-144(%rbp), %rdx
	subq	$3, %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -80(%rbp)
	movq	-144(%rbp), %rdx
	subq	$3, %rdx
	movq	8(%rdx), %rdx
	subq	$3, %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -88(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%rax, -72(%rbp)
.LBB113_16:                             # %if.end.39
	jmp	.LBB113_17
.LBB113_17:                             # %if.end.40
	jmp	.LBB113_18
.LBB113_18:                             # %if.end.41
	movl	$118, %edi
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	-136(%rbp), %rcx
	movq	%rax, %rdi
	callq	get_key_arg
	movq	%rax, -104(%rbp)
	cmpq	$0, -104(%rbp)
	je	.LBB113_20
# BB#19:                                # %cond.true.45
	movq	-104(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	jmp	.LBB113_21
.LBB113_20:                             # %cond.false.47
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -208(%rbp)        # 8-byte Spill
.LBB113_21:                             # %cond.end.49
	movq	-208(%rbp), %rax        # 8-byte Reload
	xorl	%edi, %edi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-216(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB113_23
# BB#22:                                # %if.then.54
	movq	$262, -32(%rbp)         # imm = 0x106
	jmp	.LBB113_27
.LBB113_23:                             # %if.else.55
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB113_25
# BB#24:                                # %lor.lhs.false.61
	movq	-32(%rbp), %rax
	sarq	$2, %rax
	cmpq	$0, %rax
	jge	.LBB113_26
.LBB113_25:                             # %if.then.64
	movabsq	$.L.str.18, %rdi
	movq	-32(%rbp), %rsi
	callq	signal_error
.LBB113_26:                             # %if.end.65
	jmp	.LBB113_27
.LBB113_27:                             # %if.end.66
	movl	$103, %edi
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	-136(%rbp), %rcx
	movq	%rax, %rdi
	callq	get_key_arg
	movq	%rax, -104(%rbp)
	cmpq	$0, -104(%rbp)
	je	.LBB113_29
# BB#28:                                # %cond.true.70
	movq	-104(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	jmp	.LBB113_30
.LBB113_29:                             # %cond.false.72
	movsd	.LCPI113_0, %xmm0       # xmm0 = mem[0],zero
	callq	make_float
	movq	%rax, -224(%rbp)        # 8-byte Spill
.LBB113_30:                             # %cond.end.74
	movq	-224(%rbp), %rax        # 8-byte Reload
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB113_32
# BB#31:                                # %land.lhs.true
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-40(%rbp), %rdx
	sarq	$2, %rdx
	cmpq	%rdx, %rcx
	jl	.LBB113_35
.LBB113_32:                             # %lor.lhs.false.84
	movq	-40(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$7, %ecx
	jne	.LBB113_34
# BB#33:                                # %land.lhs.true.89
	movq	-40(%rbp), %rdi
	callq	XFLOAT_DATA
	movsd	.LCPI113_1, %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	ja	.LBB113_35
.LBB113_34:                             # %if.then.93
	movabsq	$.L.str.19, %rdi
	movq	-40(%rbp), %rsi
	callq	signal_error
.LBB113_35:                             # %if.end.94
	movl	$104, %edi
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	-136(%rbp), %rcx
	movq	%rax, %rdi
	callq	get_key_arg
	movq	%rax, -104(%rbp)
	cmpq	$0, -104(%rbp)
	je	.LBB113_37
# BB#36:                                # %cond.true.98
	movq	-104(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	jmp	.LBB113_38
.LBB113_37:                             # %cond.false.100
	movsd	.LCPI113_2, %xmm0       # xmm0 = mem[0],zero
	callq	make_float
	movq	%rax, -232(%rbp)        # 8-byte Spill
.LBB113_38:                             # %cond.end.102
	movq	-232(%rbp), %rax        # 8-byte Reload
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$7, %ecx
	jne	.LBB113_41
# BB#39:                                # %land.lhs.true.108
	movq	-48(%rbp), %rdi
	callq	XFLOAT_DATA
	xorps	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB113_41
# BB#40:                                # %land.lhs.true.112
	movq	-48(%rbp), %rdi
	callq	XFLOAT_DATA
	movsd	.LCPI113_1, %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jae	.LBB113_42
.LBB113_41:                             # %if.then.116
	movabsq	$.L.str.20, %rdi
	movq	-48(%rbp), %rsi
	callq	signal_error
.LBB113_42:                             # %if.end.117
	movl	$137, %edi
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	-136(%rbp), %rcx
	movq	%rax, %rdi
	callq	get_key_arg
	movq	%rax, -104(%rbp)
	cmpq	$0, -104(%rbp)
	je	.LBB113_44
# BB#43:                                # %cond.true.121
	movq	-104(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	jmp	.LBB113_45
.LBB113_44:                             # %cond.false.123
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -240(%rbp)        # 8-byte Spill
.LBB113_45:                             # %cond.end.125
	movq	-240(%rbp), %rax        # 8-byte Reload
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-248(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB113_47
# BB#46:                                # %if.then.130
	movl	$587, %edi              # imm = 0x24B
	callq	builtin_lisp_symbol
	movq	%rax, -56(%rbp)
.LBB113_47:                             # %if.end.132
	xorl	%edi, %edi
	movq	-56(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-256(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB113_53
# BB#48:                                # %land.lhs.true.136
	movl	$586, %edi              # imm = 0x24A
	movq	-56(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-264(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB113_53
# BB#49:                                # %land.lhs.true.140
	movl	$991, %edi              # imm = 0x3DF
	movq	-56(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-272(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB113_53
# BB#50:                                # %land.lhs.true.144
	movl	$588, %edi              # imm = 0x24C
	movq	-56(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-280(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB113_53
# BB#51:                                # %land.lhs.true.148
	movl	$587, %edi              # imm = 0x24B
	movq	-56(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-288(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB113_53
# BB#52:                                # %if.then.152
	movabsq	$.L.str.21, %rdi
	movq	-56(%rbp), %rsi
	callq	signal_error
.LBB113_53:                             # %if.end.153
	movq	$0, -104(%rbp)
.LBB113_54:                             # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-104(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jge	.LBB113_59
# BB#55:                                # %for.body
                                        #   in Loop: Header=BB113_54 Depth=1
	movq	-104(%rbp), %rax
	movq	-136(%rbp), %rcx
	cmpb	$0, (%rcx,%rax)
	jne	.LBB113_57
# BB#56:                                # %if.then.158
	movabsq	$.L.str.22, %rdi
	movq	-104(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rsi
	callq	signal_error
.LBB113_57:                             # %if.end.160
                                        #   in Loop: Header=BB113_54 Depth=1
	jmp	.LBB113_58
.LBB113_58:                             # %for.inc
                                        #   in Loop: Header=BB113_54 Depth=1
	movq	-104(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -104(%rbp)
	jmp	.LBB113_54
.LBB113_59:                             # %for.end
	jmp	.LBB113_60
.LBB113_60:                             # %do.body
	testb	$1, -121(%rbp)
	je	.LBB113_62
# BB#61:                                # %if.then.162
	xorl	%edi, %edi
	movb	$0, -121(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -304(%rbp)        # 8-byte Spill
.LBB113_62:                             # %if.end.165
	jmp	.LBB113_63
.LBB113_63:                             # %do.end
	leaq	-96(%rbp), %rax
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movq	-56(%rbp), %rcx
	subq	$48, %rsp
	movq	-64(%rbp), %r8
	movq	%rsp, %r9
	movq	%r8, 32(%r9)
	movups	-96(%rbp), %xmm0
	movups	-80(%rbp), %xmm1
	movups	%xmm1, 16(%r9)
	movups	%xmm0, (%r9)
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	make_hash_table
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end113:
	.size	Fmake_hash_table, .Lfunc_end113-Fmake_hash_table
	.cfi_endproc

	.align	16, 0x90
	.type	get_key_arg,@function
get_key_arg:                            # @get_key_arg
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp342:
	.cfi_def_cfa_offset 16
.Ltmp343:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp344:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	$1, -48(%rbp)
.LBB114_1:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-48(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jge	.LBB114_7
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB114_1 Depth=1
	movq	-48(%rbp), %rax
	subq	$1, %rax
	movq	-40(%rbp), %rcx
	cmpb	$0, (%rcx,%rax)
	jne	.LBB114_5
# BB#3:                                 # %land.lhs.true
                                        #   in Loop: Header=BB114_1 Depth=1
	movq	-48(%rbp), %rax
	subq	$1, %rax
	movq	-32(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	cmpq	-16(%rbp), %rax
	jne	.LBB114_5
# BB#4:                                 # %if.then
	movq	-48(%rbp), %rax
	subq	$1, %rax
	movq	-40(%rbp), %rcx
	movb	$1, (%rcx,%rax)
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rcx
	movb	$1, (%rcx,%rax)
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB114_8
.LBB114_5:                              # %if.end
                                        #   in Loop: Header=BB114_1 Depth=1
	jmp	.LBB114_6
.LBB114_6:                              # %for.inc
                                        #   in Loop: Header=BB114_1 Depth=1
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB114_1
.LBB114_7:                              # %for.end
	movq	$0, -8(%rbp)
.LBB114_8:                              # %return
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
.Lfunc_end114:
	.size	get_key_arg, .Lfunc_end114-get_key_arg
	.cfi_endproc

	.align	16, 0x90
	.type	hashfn_user_defined,@function
hashfn_user_defined:                    # @hashfn_user_defined
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp345:
	.cfi_def_cfa_offset 16
.Ltmp346:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp347:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	8(%rsi), %rdi
	movq	-16(%rbp), %rsi
	callq	call1
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	hashfn_eq
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end115:
	.size	hashfn_user_defined, .Lfunc_end115-hashfn_user_defined
	.cfi_endproc

	.align	16, 0x90
	.type	cmpfn_user_defined,@function
cmpfn_user_defined:                     # @cmpfn_user_defined
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp348:
	.cfi_def_cfa_offset 16
.Ltmp349:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp350:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	16(%rdx), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	call2
	xorl	%edi, %edi
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	sete	%cl
	xorb	$-1, %cl
	andb	$1, %cl
	movzbl	%cl, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end116:
	.size	cmpfn_user_defined, .Lfunc_end116-cmpfn_user_defined
	.cfi_endproc

	.globl	Fcopy_hash_table
	.align	16, 0x90
	.type	Fcopy_hash_table,@function
Fcopy_hash_table:                       # @Fcopy_hash_table
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp351:
	.cfi_def_cfa_offset 16
.Ltmp352:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp353:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	check_hash_table
	movq	%rax, %rdi
	callq	copy_hash_table
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end117:
	.size	Fcopy_hash_table, .Lfunc_end117-Fcopy_hash_table
	.cfi_endproc

	.align	16, 0x90
	.type	copy_hash_table,@function
copy_hash_table:                        # @copy_hash_table
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp354:
	.cfi_def_cfa_offset 16
.Ltmp355:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp356:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	callq	allocate_hash_table
	movl	$128, %ecx
	movl	%ecx, %edx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-32(%rbp), %rsi         # 8-byte Reload
	callq	memcpy
	movq	-8(%rbp), %rax
	movq	72(%rax), %rdi
	callq	Fcopy_sequence
	movq	-24(%rbp), %rdx
	movq	%rax, 72(%rdx)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	callq	Fcopy_sequence
	movq	-24(%rbp), %rdx
	movq	%rax, 32(%rdx)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdi
	callq	Fcopy_sequence
	movq	-24(%rbp), %rdx
	movq	%rax, 40(%rdx)
	movq	-8(%rbp), %rax
	movq	56(%rax), %rdi
	callq	Fcopy_sequence
	movl	$5, %esi
	movq	-24(%rbp), %rdx
	movq	%rax, 56(%rdx)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	xorl	%edi, %edi
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	je	.LBB118_2
# BB#1:                                 # %if.then
	movq	weak_hash_tables, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 120(%rcx)
	movq	-24(%rbp), %rax
	movq	%rax, weak_hash_tables
.LBB118_2:                              # %if.end
	movq	-16(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end118:
	.size	copy_hash_table, .Lfunc_end118-copy_hash_table
	.cfi_endproc

	.align	16, 0x90
	.type	check_hash_table,@function
check_hash_table:                       # @check_hash_table
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp357:
	.cfi_def_cfa_offset 16
.Ltmp358:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp359:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	CHECK_HASH_TABLE
	movq	-8(%rbp), %rdi
	callq	XHASH_TABLE
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end119:
	.size	check_hash_table, .Lfunc_end119-check_hash_table
	.cfi_endproc

	.globl	Fhash_table_count
	.align	16, 0x90
	.type	Fhash_table_count,@function
Fhash_table_count:                      # @Fhash_table_count
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp360:
	.cfi_def_cfa_offset 16
.Ltmp361:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp362:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	check_hash_table
	movq	64(%rax), %rax
	shlq	$2, %rax
	addq	$2, %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end120:
	.size	Fhash_table_count, .Lfunc_end120-Fhash_table_count
	.cfi_endproc

	.globl	Fhash_table_rehash_size
	.align	16, 0x90
	.type	Fhash_table_rehash_size,@function
Fhash_table_rehash_size:                # @Fhash_table_rehash_size
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp363:
	.cfi_def_cfa_offset 16
.Ltmp364:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp365:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	check_hash_table
	movq	16(%rax), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end121:
	.size	Fhash_table_rehash_size, .Lfunc_end121-Fhash_table_rehash_size
	.cfi_endproc

	.globl	Fhash_table_rehash_threshold
	.align	16, 0x90
	.type	Fhash_table_rehash_threshold,@function
Fhash_table_rehash_threshold:           # @Fhash_table_rehash_threshold
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp366:
	.cfi_def_cfa_offset 16
.Ltmp367:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp368:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	check_hash_table
	movq	24(%rax), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end122:
	.size	Fhash_table_rehash_threshold, .Lfunc_end122-Fhash_table_rehash_threshold
	.cfi_endproc

	.globl	Fhash_table_size
	.align	16, 0x90
	.type	Fhash_table_size,@function
Fhash_table_size:                       # @Fhash_table_size
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp369:
	.cfi_def_cfa_offset 16
.Ltmp370:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp371:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	check_hash_table
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	HASH_TABLE_SIZE
	shlq	$2, %rax
	addq	$2, %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end123:
	.size	Fhash_table_size, .Lfunc_end123-Fhash_table_size
	.cfi_endproc

	.globl	Fhash_table_test
	.align	16, 0x90
	.type	Fhash_table_test,@function
Fhash_table_test:                       # @Fhash_table_test
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp372:
	.cfi_def_cfa_offset 16
.Ltmp373:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp374:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	check_hash_table
	movq	80(%rax), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end124:
	.size	Fhash_table_test, .Lfunc_end124-Fhash_table_test
	.cfi_endproc

	.globl	Fhash_table_weakness
	.align	16, 0x90
	.type	Fhash_table_weakness,@function
Fhash_table_weakness:                   # @Fhash_table_weakness
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp375:
	.cfi_def_cfa_offset 16
.Ltmp376:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp377:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	check_hash_table
	movq	8(%rax), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end125:
	.size	Fhash_table_weakness, .Lfunc_end125-Fhash_table_weakness
	.cfi_endproc

	.globl	Fhash_table_p
	.align	16, 0x90
	.type	Fhash_table_p,@function
Fhash_table_p:                          # @Fhash_table_p
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp378:
	.cfi_def_cfa_offset 16
.Ltmp379:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp380:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	HASH_TABLE_P
	testb	$1, %al
	jne	.LBB126_1
	jmp	.LBB126_2
.LBB126_1:                              # %cond.true
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -16(%rbp)         # 8-byte Spill
	jmp	.LBB126_3
.LBB126_2:                              # %cond.false
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -16(%rbp)         # 8-byte Spill
.LBB126_3:                              # %cond.end
	movq	-16(%rbp), %rax         # 8-byte Reload
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end126:
	.size	Fhash_table_p, .Lfunc_end126-Fhash_table_p
	.cfi_endproc

	.globl	Fclrhash
	.align	16, 0x90
	.type	Fclrhash,@function
Fclrhash:                               # @Fclrhash
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp381:
	.cfi_def_cfa_offset 16
.Ltmp382:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp383:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	check_hash_table
	movq	%rax, %rdi
	callq	hash_clear
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end127:
	.size	Fclrhash, .Lfunc_end127-Fclrhash
	.cfi_endproc

	.align	16, 0x90
	.type	hash_clear,@function
hash_clear:                             # @hash_clear
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp384:
	.cfi_def_cfa_offset 16
.Ltmp385:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp386:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpq	$0, 64(%rdi)
	jle	.LBB128_13
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	HASH_TABLE_SIZE
	movq	%rax, -24(%rbp)
	movq	$0, -16(%rbp)
.LBB128_2:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jge	.LBB128_8
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB128_2 Depth=1
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	subq	$1, %rcx
	cmpq	%rcx, %rax
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	jge	.LBB128_5
# BB#4:                                 # %cond.true
                                        #   in Loop: Header=BB128_2 Depth=1
	movq	-16(%rbp), %rax
	addq	$1, %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB128_6
.LBB128_5:                              # %cond.false
                                        #   in Loop: Header=BB128_2 Depth=1
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB128_6:                              # %cond.end
                                        #   in Loop: Header=BB128_2 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	-40(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	set_hash_next_slot
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rsi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	set_hash_key_slot
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rsi
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	set_hash_value_slot
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rsi
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	-88(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	set_hash_hash_slot
# BB#7:                                 # %for.inc
                                        #   in Loop: Header=BB128_2 Depth=1
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB128_2
.LBB128_8:                              # %for.end
	movq	$0, -16(%rbp)
.LBB128_9:                              # %for.cond.8
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	56(%rcx), %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	ASIZE
	movq	-104(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jge	.LBB128_12
# BB#10:                                # %for.body.11
                                        #   in Loop: Header=BB128_9 Depth=1
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	movq	-16(%rbp), %rsi
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	-112(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
# BB#11:                                # %for.inc.14
                                        #   in Loop: Header=BB128_9 Depth=1
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB128_9
.LBB128_12:                             # %for.end.16
	movq	-8(%rbp), %rax
	movq	$2, 48(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 64(%rax)
.LBB128_13:                             # %if.end
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end128:
	.size	hash_clear, .Lfunc_end128-hash_clear
	.cfi_endproc

	.globl	Fgethash
	.align	16, 0x90
	.type	Fgethash,@function
Fgethash:                               # @Fgethash
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp387:
	.cfi_def_cfa_offset 16
.Ltmp388:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp389:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	check_hash_table
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	hash_lookup
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jl	.LBB129_2
# BB#1:                                 # %cond.true
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	HASH_VALUE
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB129_3
.LBB129_2:                              # %cond.false
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB129_3:                              # %cond.end
	movq	-48(%rbp), %rax         # 8-byte Reload
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end129:
	.size	Fgethash, .Lfunc_end129-Fgethash
	.cfi_endproc

	.globl	Fputhash
	.align	16, 0x90
	.type	Fputhash,@function
Fputhash:                               # @Fputhash
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp390:
	.cfi_def_cfa_offset 16
.Ltmp391:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp392:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	check_hash_table
	leaq	-48(%rbp), %rdx
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	hash_lookup
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jl	.LBB130_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-16(%rbp), %rdx
	callq	set_hash_value_slot
	jmp	.LBB130_3
.LBB130_2:                              # %if.else
	movq	-32(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	-48(%rbp), %rcx
	callq	hash_put
	movq	%rax, -56(%rbp)         # 8-byte Spill
.LBB130_3:                              # %if.end
	movq	-16(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end130:
	.size	Fputhash, .Lfunc_end130-Fputhash
	.cfi_endproc

	.globl	Fremhash
	.align	16, 0x90
	.type	Fremhash,@function
Fremhash:                               # @Fremhash
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp393:
	.cfi_def_cfa_offset 16
.Ltmp394:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp395:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	check_hash_table
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	hash_remove_from_table
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end131:
	.size	Fremhash, .Lfunc_end131-Fremhash
	.cfi_endproc

	.globl	Fmaphash
	.align	16, 0x90
	.type	Fmaphash,@function
Fmaphash:                               # @Fmaphash
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp396:
	.cfi_def_cfa_offset 16
.Ltmp397:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp398:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	check_hash_table
	movq	%rax, -24(%rbp)
	movq	$0, -32(%rbp)
.LBB132_1:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	HASH_TABLE_SIZE
	movq	-40(%rbp), %rdi         # 8-byte Reload
	cmpq	%rax, %rdi
	jge	.LBB132_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB132_1 Depth=1
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	HASH_HASH
	xorl	%edi, %edi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB132_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB132_1 Depth=1
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rsi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	HASH_KEY
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	HASH_VALUE
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	call2
	movq	%rax, -72(%rbp)         # 8-byte Spill
.LBB132_4:                              # %if.end
                                        #   in Loop: Header=BB132_1 Depth=1
	jmp	.LBB132_5
.LBB132_5:                              # %for.inc
                                        #   in Loop: Header=BB132_1 Depth=1
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB132_1
.LBB132_6:                              # %for.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end132:
	.size	Fmaphash, .Lfunc_end132-Fmaphash
	.cfi_endproc

	.globl	Fdefine_hash_table_test
	.align	16, 0x90
	.type	Fdefine_hash_table_test,@function
Fdefine_hash_table_test:                # @Fdefine_hash_table_test
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp399:
	.cfi_def_cfa_offset 16
.Ltmp400:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp401:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	$511, %eax              # imm = 0x1FF
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	list2
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	-40(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	Fput
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end133:
	.size	Fdefine_hash_table_test, .Lfunc_end133-Fdefine_hash_table_test
	.cfi_endproc

	.globl	Fmd5
	.align	16, 0x90
	.type	Fmd5,@function
Fmd5:                                   # @Fmd5
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp402:
	.cfi_def_cfa_offset 16
.Ltmp403:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp404:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movl	$649, %eax              # imm = 0x289
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %r8
	movq	-40(%rbp), %r9
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%r9, -56(%rbp)          # 8-byte Spill
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	movq	%r8, -88(%rbp)          # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	-72(%rbp), %rdx         # 8-byte Reload
	movq	-80(%rbp), %rcx         # 8-byte Reload
	movq	-88(%rbp), %r8          # 8-byte Reload
	movq	-56(%rbp), %r9          # 8-byte Reload
	movq	%rax, (%rsp)
	callq	secure_hash
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end134:
	.size	Fmd5, .Lfunc_end134-Fmd5
	.cfi_endproc

	.align	16, 0x90
	.type	secure_hash,@function
secure_hash:                            # @secure_hash
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp405:
	.cfi_def_cfa_offset 16
.Ltmp406:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp407:
	.cfi_def_cfa_register %rbp
	subq	$608, %rsp              # imm = 0x260
	movq	16(%rbp), %rax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	movq	%rax, -64(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -104(%rbp)
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %r10d
	cmpl	$0, %r10d
	jne	.LBB135_2
# BB#1:                                 # %cond.true
	jmp	.LBB135_3
.LBB135_2:                              # %cond.false
	movl	$897, %edi              # imm = 0x381
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -248(%rbp)        # 8-byte Spill
.LBB135_3:                              # %cond.end
	movq	-24(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB135_4
	jmp	.LBB135_23
.LBB135_4:                              # %if.then
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-256(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB135_9
# BB#5:                                 # %if.then.6
	movq	-24(%rbp), %rdi
	callq	STRING_MULTIBYTE
	testb	$1, %al
	jne	.LBB135_6
	jmp	.LBB135_7
.LBB135_6:                              # %if.then.8
	callq	preferred_coding_system
	movq	%rax, -48(%rbp)
	jmp	.LBB135_8
.LBB135_7:                              # %if.else
	movl	$788, %edi              # imm = 0x314
	callq	builtin_lisp_symbol
	movq	%rax, -48(%rbp)
.LBB135_8:                              # %if.end
	jmp	.LBB135_9
.LBB135_9:                              # %if.end.11
	movq	-48(%rbp), %rdi
	callq	Fcoding_system_p
	xorl	%edi, %edi
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-264(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB135_14
# BB#10:                                # %if.then.16
	xorl	%edi, %edi
	movq	-56(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-272(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB135_12
# BB#11:                                # %if.then.20
	movl	$788, %edi              # imm = 0x314
	callq	builtin_lisp_symbol
	movq	%rax, -48(%rbp)
	jmp	.LBB135_13
.LBB135_12:                             # %if.else.22
	movl	$278, %edi              # imm = 0x116
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	xsignal1
.LBB135_13:                             # %if.end.24
	jmp	.LBB135_14
.LBB135_14:                             # %if.end.25
	movq	-24(%rbp), %rdi
	callq	STRING_MULTIBYTE
	testb	$1, %al
	jne	.LBB135_15
	jmp	.LBB135_16
.LBB135_15:                             # %if.then.27
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	-48(%rbp), %rsi
	movq	%rsi, -280(%rbp)        # 8-byte Spill
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$1, %edi
	xorl	%r8d, %r8d
	movq	-288(%rbp), %rsi        # 8-byte Reload
	movl	%edi, -292(%rbp)        # 4-byte Spill
	movq	%rsi, %rdi
	movq	-280(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	movl	-292(%rbp), %ecx        # 4-byte Reload
	movl	-292(%rbp), %r9d        # 4-byte Reload
	callq	code_convert_string
	movq	%rax, -24(%rbp)
.LBB135_16:                             # %if.end.30
	movq	-24(%rbp), %rdi
	callq	SCHARS
	leaq	-88(%rbp), %r8
	leaq	-104(%rbp), %r9
	movq	%rax, -80(%rbp)
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movq	-80(%rbp), %rcx
	callq	validate_subarray
	cmpq	$0, -88(%rbp)
	jne	.LBB135_18
# BB#17:                                # %cond.true.32
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -304(%rbp)        # 8-byte Spill
	jmp	.LBB135_19
.LBB135_18:                             # %cond.false.33
	movq	-24(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	string_char_to_byte
	movq	%rax, -304(%rbp)        # 8-byte Spill
.LBB135_19:                             # %cond.end.35
	movq	-304(%rbp), %rax        # 8-byte Reload
	movq	%rax, -96(%rbp)
	movq	-104(%rbp), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB135_21
# BB#20:                                # %cond.true.38
	movq	-24(%rbp), %rdi
	callq	SBYTES
	movq	%rax, -312(%rbp)        # 8-byte Spill
	jmp	.LBB135_22
.LBB135_21:                             # %cond.false.40
	movq	-24(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	string_char_to_byte
	movq	%rax, -312(%rbp)        # 8-byte Spill
.LBB135_22:                             # %cond.end.42
	movq	-312(%rbp), %rax        # 8-byte Reload
	movq	%rax, -112(%rbp)
	jmp	.LBB135_84
.LBB135_23:                             # %if.else.44
	movq	current_buffer, %rax
	movq	%rax, -176(%rbp)
	callq	record_unwind_current_buffer
	movq	-24(%rbp), %rdi
	callq	CHECK_BUFFER
	movq	-24(%rbp), %rdi
	callq	XBUFFER
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rdi
	callq	set_buffer_internal
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-320(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB135_25
# BB#24:                                # %if.then.49
	movq	current_buffer, %rax
	movq	752(%rax), %rax
	movq	%rax, -120(%rbp)
	jmp	.LBB135_35
.LBB135_25:                             # %if.else.50
	jmp	.LBB135_26
.LBB135_26:                             # %do.body
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB135_29
# BB#27:                                # %land.lhs.true
	movq	-32(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB135_29
# BB#28:                                # %if.then.58
	movq	-32(%rbp), %rdi
	callq	marker_position
	movq	%rax, %rdi
	callq	make_natnum
	movq	%rax, -32(%rbp)
	jmp	.LBB135_33
.LBB135_29:                             # %if.else.61
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB135_31
# BB#30:                                # %cond.true.67
	jmp	.LBB135_32
.LBB135_31:                             # %cond.false.68
	movl	$558, %edi              # imm = 0x22E
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -328(%rbp)        # 8-byte Spill
.LBB135_32:                             # %cond.end.70
	jmp	.LBB135_33
.LBB135_33:                             # %if.end.71
	jmp	.LBB135_34
.LBB135_34:                             # %do.end
	movq	-32(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -120(%rbp)
.LBB135_35:                             # %if.end.72
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-336(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB135_37
# BB#36:                                # %if.then.76
	movq	current_buffer, %rax
	movq	768(%rax), %rax
	movq	%rax, -128(%rbp)
	jmp	.LBB135_47
.LBB135_37:                             # %if.else.77
	jmp	.LBB135_38
.LBB135_38:                             # %do.body.78
	movq	-40(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB135_41
# BB#39:                                # %land.lhs.true.83
	movq	-40(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB135_41
# BB#40:                                # %if.then.87
	movq	-40(%rbp), %rdi
	callq	marker_position
	movq	%rax, %rdi
	callq	make_natnum
	movq	%rax, -40(%rbp)
	jmp	.LBB135_45
.LBB135_41:                             # %if.else.90
	movq	-40(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB135_43
# BB#42:                                # %cond.true.96
	jmp	.LBB135_44
.LBB135_43:                             # %cond.false.97
	movl	$558, %edi              # imm = 0x22E
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -344(%rbp)        # 8-byte Spill
.LBB135_44:                             # %cond.end.99
	jmp	.LBB135_45
.LBB135_45:                             # %if.end.100
	jmp	.LBB135_46
.LBB135_46:                             # %do.end.101
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -128(%rbp)
.LBB135_47:                             # %if.end.103
	movq	-120(%rbp), %rax
	cmpq	-128(%rbp), %rax
	jle	.LBB135_49
# BB#48:                                # %if.then.106
	movq	-120(%rbp), %rax
	movq	%rax, -144(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -120(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -128(%rbp)
.LBB135_49:                             # %if.end.107
	movq	current_buffer, %rax
	movq	752(%rax), %rax
	cmpq	-120(%rbp), %rax
	jg	.LBB135_51
# BB#50:                                # %land.lhs.true.111
	movq	-128(%rbp), %rax
	movq	current_buffer, %rcx
	cmpq	768(%rcx), %rax
	jle	.LBB135_52
.LBB135_51:                             # %if.then.115
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	args_out_of_range
.LBB135_52:                             # %if.end.116
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-352(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB135_81
# BB#53:                                # %if.then.120
	xorl	%edi, %edi
	movq	globals+288, %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-360(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB135_55
# BB#54:                                # %if.then.124
	movq	globals+288, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB135_75
.LBB135_55:                             # %if.else.125
	movb	$0, -177(%rbp)
	movq	-24(%rbp), %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	320(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-368(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB135_57
# BB#56:                                # %lor.lhs.false
	movl	$221, %edi
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Flocal_variable_p
	xorl	%edi, %edi
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-384(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB135_60
.LBB135_57:                             # %if.then.136
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -48(%rbp)
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-392(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB135_59
# BB#58:                                # %if.then.141
	movb	$1, -177(%rbp)
.LBB135_59:                             # %if.end.142
	jmp	.LBB135_60
.LBB135_60:                             # %if.end.143
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-400(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB135_66
# BB#61:                                # %land.lhs.true.147
	movq	-24(%rbp), %rdi
	callq	Fbuffer_file_name
	xorl	%edi, %edi
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-408(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB135_66
# BB#62:                                # %if.then.152
	movl	$1040, %edi             # imm = 0x410
	callq	builtin_lisp_symbol
	movq	%rax, -224(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -216(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -208(%rbp)
	movq	-24(%rbp), %rdi
	callq	Fbuffer_file_name
	movl	$4, %ecx
	movl	%ecx, %edi
	leaq	-224(%rbp), %rsi
	movq	%rax, -200(%rbp)
	callq	Ffind_operation_coding_system
	movq	%rax, -192(%rbp)
	movq	-192(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB135_65
# BB#63:                                # %land.lhs.true.162
	xorl	%edi, %edi
	movq	-192(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-416(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB135_65
# BB#64:                                # %if.then.166
	movq	-192(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
.LBB135_65:                             # %if.end.170
	jmp	.LBB135_66
.LBB135_66:                             # %if.end.171
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-424(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB135_69
# BB#67:                                # %land.lhs.true.175
	movq	-24(%rbp), %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	320(%rax), %rax
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-432(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB135_69
# BB#68:                                # %if.then.181
	movq	-24(%rbp), %rdi
	callq	XBUFFER
	movq	320(%rax), %rax
	movq	%rax, -48(%rbp)
.LBB135_69:                             # %if.end.184
	testb	$1, -177(%rbp)
	jne	.LBB135_72
# BB#70:                                # %land.lhs.true.186
	movq	globals+2112, %rdi
	callq	Ffboundp
	xorl	%edi, %edi
	movq	%rax, -440(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-440(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB135_72
# BB#71:                                # %if.then.191
	xorl	%edi, %edi
	movq	globals+2112, %rax
	movq	-120(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	-128(%rbp), %rdx
	shlq	$2, %rdx
	addq	$2, %rdx
	movq	-48(%rbp), %rsi
	movq	%rsi, -448(%rbp)        # 8-byte Spill
	movq	%rax, -456(%rbp)        # 8-byte Spill
	movq	%rcx, -464(%rbp)        # 8-byte Spill
	movq	%rdx, -472(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-456(%rbp), %rdi        # 8-byte Reload
	movq	-464(%rbp), %rsi        # 8-byte Reload
	movq	-472(%rbp), %rdx        # 8-byte Reload
	movq	-448(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %r8
	callq	call4
	movq	%rax, -48(%rbp)
.LBB135_72:                             # %if.end.196
	testb	$1, -177(%rbp)
	je	.LBB135_74
# BB#73:                                # %if.then.198
	movl	$788, %edi              # imm = 0x314
	callq	builtin_lisp_symbol
	movq	%rax, -48(%rbp)
.LBB135_74:                             # %if.end.200
	jmp	.LBB135_75
.LBB135_75:                             # %if.end.201
	movq	-48(%rbp), %rdi
	callq	Fcoding_system_p
	xorl	%edi, %edi
	movq	%rax, -480(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-480(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB135_80
# BB#76:                                # %if.then.206
	xorl	%edi, %edi
	movq	-56(%rbp), %rax
	movq	%rax, -488(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-488(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB135_78
# BB#77:                                # %if.then.210
	movl	$788, %edi              # imm = 0x314
	callq	builtin_lisp_symbol
	movq	%rax, -48(%rbp)
	jmp	.LBB135_79
.LBB135_78:                             # %if.else.212
	movl	$278, %edi              # imm = 0x116
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	xsignal1
.LBB135_79:                             # %if.end.214
	jmp	.LBB135_80
.LBB135_80:                             # %if.end.215
	jmp	.LBB135_81
.LBB135_81:                             # %if.end.216
	xorl	%edx, %edx
	movq	-120(%rbp), %rdi
	movq	-128(%rbp), %rsi
	callq	make_buffer_string
	movq	%rax, -24(%rbp)
	movq	-176(%rbp), %rdi
	callq	set_buffer_internal
	movq	specpdl_ptr, %rax
	addq	$-32, %rax
	movq	%rax, specpdl_ptr
	movq	-24(%rbp), %rdi
	callq	STRING_MULTIBYTE
	testb	$1, %al
	jne	.LBB135_82
	jmp	.LBB135_83
.LBB135_82:                             # %if.then.219
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	-48(%rbp), %rsi
	movq	%rsi, -496(%rbp)        # 8-byte Spill
	movq	%rax, -504(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$1, %ecx
	xorl	%edi, %edi
	movq	-504(%rbp), %rsi        # 8-byte Reload
	movl	%edi, -508(%rbp)        # 4-byte Spill
	movq	%rsi, %rdi
	movq	-496(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	movl	-508(%rbp), %r8d        # 4-byte Reload
	movl	-508(%rbp), %r9d        # 4-byte Reload
	callq	code_convert_string
	movq	%rax, -24(%rbp)
.LBB135_83:                             # %if.end.222
	movq	$0, -96(%rbp)
	movq	-24(%rbp), %rdi
	callq	SBYTES
	movq	%rax, -112(%rbp)
.LBB135_84:                             # %if.end.224
	movl	$649, %edi              # imm = 0x289
	movq	-16(%rbp), %rax
	movq	%rax, -520(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-520(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB135_86
# BB#85:                                # %if.then.228
	movabsq	$md5_buffer, %rax
	movl	$16, -148(%rbp)
	movq	%rax, -160(%rbp)
	jmp	.LBB135_102
.LBB135_86:                             # %if.else.229
	movl	$856, %edi              # imm = 0x358
	movq	-16(%rbp), %rax
	movq	%rax, -528(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-528(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB135_88
# BB#87:                                # %if.then.233
	movabsq	$sha1_buffer, %rax
	movl	$20, -148(%rbp)
	movq	%rax, -160(%rbp)
	jmp	.LBB135_101
.LBB135_88:                             # %if.else.234
	movl	$857, %edi              # imm = 0x359
	movq	-16(%rbp), %rax
	movq	%rax, -536(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-536(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB135_90
# BB#89:                                # %if.then.238
	movabsq	$sha224_buffer, %rax
	movl	$28, -148(%rbp)
	movq	%rax, -160(%rbp)
	jmp	.LBB135_100
.LBB135_90:                             # %if.else.239
	movl	$858, %edi              # imm = 0x35A
	movq	-16(%rbp), %rax
	movq	%rax, -544(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-544(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB135_92
# BB#91:                                # %if.then.243
	movabsq	$sha256_buffer, %rax
	movl	$32, -148(%rbp)
	movq	%rax, -160(%rbp)
	jmp	.LBB135_99
.LBB135_92:                             # %if.else.244
	movl	$859, %edi              # imm = 0x35B
	movq	-16(%rbp), %rax
	movq	%rax, -552(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-552(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB135_94
# BB#93:                                # %if.then.248
	movabsq	$sha384_buffer, %rax
	movl	$48, -148(%rbp)
	movq	%rax, -160(%rbp)
	jmp	.LBB135_98
.LBB135_94:                             # %if.else.249
	movl	$860, %edi              # imm = 0x35C
	movq	-16(%rbp), %rax
	movq	%rax, -560(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-560(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB135_96
# BB#95:                                # %if.then.253
	movabsq	$sha512_buffer, %rax
	movl	$64, -148(%rbp)
	movq	%rax, -160(%rbp)
	jmp	.LBB135_97
.LBB135_96:                             # %if.else.254
	movq	-16(%rbp), %rdi
	callq	Fsymbol_name
	movq	%rax, %rdi
	callq	SDATA
	movabsq	$.L.str.29, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	error
.LBB135_97:                             # %if.end.257
	jmp	.LBB135_98
.LBB135_98:                             # %if.end.258
	jmp	.LBB135_99
.LBB135_99:                             # %if.end.259
	jmp	.LBB135_100
.LBB135_100:                            # %if.end.260
	jmp	.LBB135_101
.LBB135_101:                            # %if.end.261
	jmp	.LBB135_102
.LBB135_102:                            # %if.end.262
	movl	-148(%rbp), %eax
	shll	$1, %eax
	movslq	%eax, %rdi
	callq	make_uninit_string
	movq	%rax, -168(%rbp)
	movq	-160(%rbp), %rax
	movq	-24(%rbp), %rdi
	movq	%rax, -568(%rbp)        # 8-byte Spill
	callq	SSDATA
	addq	-96(%rbp), %rax
	movq	-112(%rbp), %rdi
	subq	-96(%rbp), %rdi
	movq	-168(%rbp), %rcx
	movq	%rdi, -576(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, -584(%rbp)        # 8-byte Spill
	callq	SSDATA
	movq	-584(%rbp), %rdi        # 8-byte Reload
	movq	-576(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	movq	-568(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	xorl	%edi, %edi
	movq	-64(%rbp), %rcx
	movq	%rax, -592(%rbp)        # 8-byte Spill
	movq	%rcx, -600(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-600(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB135_108
# BB#103:                               # %if.then.272
	movq	-168(%rbp), %rdi
	callq	SDATA
	movq	%rax, -232(%rbp)
	movl	-148(%rbp), %ecx
	subl	$1, %ecx
	movl	%ecx, -68(%rbp)
.LBB135_104:                            # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -68(%rbp)
	jl	.LBB135_107
# BB#105:                               # %for.body
                                        #   in Loop: Header=BB135_104 Depth=1
	movslq	-68(%rbp), %rax
	movq	-232(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movl	%edx, -236(%rbp)
	movl	-236(%rbp), %edx
	sarl	$4, %edx
	movslq	%edx, %rax
	movb	secure_hash.hexdigit(,%rax), %sil
	movl	-68(%rbp), %edx
	shll	$1, %edx
	movslq	%edx, %rax
	movq	-232(%rbp), %rcx
	movb	%sil, (%rcx,%rax)
	movl	-236(%rbp), %edx
	andl	$15, %edx
	movslq	%edx, %rax
	movb	secure_hash.hexdigit(,%rax), %sil
	movl	-68(%rbp), %edx
	shll	$1, %edx
	addl	$1, %edx
	movslq	%edx, %rax
	movq	-232(%rbp), %rcx
	movb	%sil, (%rcx,%rax)
# BB#106:                               # %for.inc
                                        #   in Loop: Header=BB135_104 Depth=1
	movl	-68(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB135_104
.LBB135_107:                            # %for.end
	movq	-168(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB135_109
.LBB135_108:                            # %if.else.291
	movq	-168(%rbp), %rdi
	callq	SSDATA
	movslq	-148(%rbp), %rsi
	movq	%rax, %rdi
	callq	make_unibyte_string
	movq	%rax, -8(%rbp)
.LBB135_109:                            # %return
	movq	-8(%rbp), %rax
	addq	$608, %rsp              # imm = 0x260
	popq	%rbp
	retq
.Lfunc_end135:
	.size	secure_hash, .Lfunc_end135-secure_hash
	.cfi_endproc

	.globl	Fsecure_hash
	.align	16, 0x90
	.type	Fsecure_hash,@function
Fsecure_hash:                           # @Fsecure_hash
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp408:
	.cfi_def_cfa_offset 16
.Ltmp409:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp410:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rcx
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movq	-64(%rbp), %rdx         # 8-byte Reload
	movq	-56(%rbp), %r8          # 8-byte Reload
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	movq	%r8, %rcx
	movq	-80(%rbp), %r8          # 8-byte Reload
	movq	%rax, %r9
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	callq	secure_hash
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end136:
	.size	Fsecure_hash, .Lfunc_end136-Fsecure_hash
	.cfi_endproc

	.globl	syms_of_fns
	.align	16, 0x90
	.type	syms_of_fns,@function
syms_of_fns:                            # @syms_of_fns
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp411:
	.cfi_def_cfa_offset 16
.Ltmp412:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp413:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movabsq	$Ssxhash, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Smake_hash_table, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Scopy_hash_table, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Shash_table_count, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Shash_table_rehash_size, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Shash_table_rehash_threshold, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Shash_table_size, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Shash_table_test, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Shash_table_weakness, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Shash_table_p, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sclrhash, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sgethash, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sputhash, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sremhash, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Smaphash, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sdefine_hash_table_test, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$string_char_byte_cache_string, %rdi
	callq	staticpro
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, string_char_byte_cache_string
	callq	builtin_lisp_symbol
	movabsq	$require_nesting_list, %rdi
	movq	%rax, require_nesting_list
	callq	staticpro
	movl	$1072, %edi             # imm = 0x430
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -8(%rbp)          # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movq	%rax, %rsi
	callq	Fset
	movq	%rax, -16(%rbp)         # 8-byte Spill
# BB#1:                                 # %do.body
	movabsq	$syms_of_fns.o_fwd, %rdi
	movabsq	$.L.str.23, %rsi
	movabsq	$globals, %rax
	addq	$736, %rax              # imm = 0x2E0
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#2:                                 # %do.end
	movl	$360, %edi              # imm = 0x168
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	list1
	movq	%rax, globals+736
# BB#3:                                 # %do.body.7
	movabsq	$syms_of_fns.b_fwd, %rdi
	movabsq	$.L.str.24, %rsi
	movabsq	$globals, %rax
	addq	$3433, %rax             # imm = 0xD69
	movq	%rax, %rdx
	callq	defvar_bool
# BB#4:                                 # %do.end.8
	movb	$1, globals+3433
# BB#5:                                 # %do.body.9
	movabsq	$syms_of_fns.b_fwd.25, %rdi
	movabsq	$.L.str.26, %rsi
	movabsq	$globals, %rax
	addq	$3434, %rax             # imm = 0xD6A
	movq	%rax, %rdx
	callq	defvar_bool
# BB#6:                                 # %do.end.10
	movabsq	$Sidentity, %rax
	movb	$1, globals+3434
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Srandom, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Slength, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Ssafe_length, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sstring_bytes, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sstring_equal, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Scompare_strings, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sstring_lessp, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sstring_collate_lessp, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sstring_collate_equalp, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sappend, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sconcat, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Svconcat, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Scopy_sequence, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sstring_make_multibyte, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sstring_make_unibyte, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sstring_as_multibyte, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sstring_as_unibyte, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sstring_to_multibyte, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sstring_to_unibyte, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Scopy_alist, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Ssubstring, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Ssubstring_no_properties, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Snthcdr, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Snth, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Selt, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Smember, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Smemq, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Smemql, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sassq, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sassoc, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Srassq, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Srassoc, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sdelq, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sdelete, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Snreverse, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sreverse, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Ssort, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Splist_get, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sget, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Splist_put, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sput, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Slax_plist_get, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Slax_plist_put, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Seql, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sequal, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sequal_including_properties, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sfillarray, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sclear_string, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Snconc, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Smapcar, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Smapc, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Smapconcat, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Syes_or_no_p, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sload_average, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sfeaturep, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Srequire, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sprovide, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Splist_member, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Swidget_put, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Swidget_get, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Swidget_apply, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sbase64_encode_region, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sbase64_decode_region, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sbase64_encode_string, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sbase64_decode_string, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Smd5, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Ssecure_hash, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Slocale_info, %rax
	movq	%rax, %rdi
	callq	defsubr
	movl	$369, %edi              # imm = 0x171
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, hashtest_eq
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, hashtest_eq+8
	callq	builtin_lisp_symbol
	movl	$370, %edi              # imm = 0x172
	movabsq	$hashfn_eq, %rcx
	movq	%rax, hashtest_eq+16
	movq	$0, hashtest_eq+24
	movq	%rcx, hashtest_eq+32
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, hashtest_eql
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, hashtest_eql+8
	callq	builtin_lisp_symbol
	movl	$371, %edi              # imm = 0x173
	movabsq	$hashfn_eql, %rcx
	movabsq	$cmpfn_eql, %rdx
	movq	%rax, hashtest_eql+16
	movq	%rdx, hashtest_eql+24
	movq	%rcx, hashtest_eql+32
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, hashtest_equal
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, hashtest_equal+8
	callq	builtin_lisp_symbol
	movabsq	$hashfn_equal, %rcx
	movabsq	$cmpfn_equal, %rdx
	movq	%rax, hashtest_equal+16
	movq	%rdx, hashtest_equal+24
	movq	%rcx, hashtest_equal+32
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end137:
	.size	syms_of_fns, .Lfunc_end137-syms_of_fns
	.cfi_endproc

	.align	16, 0x90
	.type	hashfn_eq,@function
hashfn_eq:                              # @hashfn_eq
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp414:
	.cfi_def_cfa_offset 16
.Ltmp415:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp416:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	XUINT
	movq	-16(%rbp), %rsi
	andq	$7, %rsi
	movl	%esi, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %esi
	xorq	%rsi, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end138:
	.size	hashfn_eq, .Lfunc_end138-hashfn_eq
	.cfi_endproc

	.align	16, 0x90
	.type	cmpfn_eql,@function
cmpfn_eql:                              # @cmpfn_eql
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp417:
	.cfi_def_cfa_offset 16
.Ltmp418:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp419:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	xorl	%eax, %eax
	movb	%al, %cl
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$7, %eax
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB139_3
# BB#1:                                 # %land.lhs.true
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$7, %eax
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB139_3
# BB#2:                                 # %land.rhs
	movq	-16(%rbp), %rdi
	callq	XFLOAT_DATA
	movq	-24(%rbp), %rdi
	movsd	%xmm0, -40(%rbp)        # 8-byte Spill
	callq	XFLOAT_DATA
	movsd	-40(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	sete	%al
	setnp	%cl
	andb	%cl, %al
	movb	%al, -25(%rbp)          # 1-byte Spill
.LBB139_3:                              # %land.end
	movb	-25(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end139:
	.size	cmpfn_eql, .Lfunc_end139-cmpfn_eql
	.cfi_endproc

	.align	16, 0x90
	.type	hashfn_eql,@function
hashfn_eql:                             # @hashfn_eql
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp420:
	.cfi_def_cfa_offset 16
.Ltmp421:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp422:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	andq	$7, %rsi
	movl	%esi, %eax
	cmpl	$7, %eax
	jne	.LBB140_2
# BB#1:                                 # %if.then
	xorl	%esi, %esi
	movq	-16(%rbp), %rdi
	callq	sxhash
	movq	%rax, -24(%rbp)
	jmp	.LBB140_3
.LBB140_2:                              # %if.else
	movq	-16(%rbp), %rdi
	callq	XUINT
	movq	-16(%rbp), %rdi
	andq	$7, %rdi
	movl	%edi, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edi
	xorq	%rdi, %rax
	movq	%rax, -24(%rbp)
.LBB140_3:                              # %if.end
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end140:
	.size	hashfn_eql, .Lfunc_end140-hashfn_eql
	.cfi_endproc

	.align	16, 0x90
	.type	cmpfn_equal,@function
cmpfn_equal:                            # @cmpfn_equal
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp423:
	.cfi_def_cfa_offset 16
.Ltmp424:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp425:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	Fequal
	xorl	%edi, %edi
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	sete	%cl
	xorb	$-1, %cl
	andb	$1, %cl
	movzbl	%cl, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end141:
	.size	cmpfn_equal, .Lfunc_end141-cmpfn_equal
	.cfi_endproc

	.align	16, 0x90
	.type	hashfn_equal,@function
hashfn_equal:                           # @hashfn_equal
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp426:
	.cfi_def_cfa_offset 16
.Ltmp427:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp428:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movl	%eax, %esi
	callq	sxhash
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end142:
	.size	hashfn_equal, .Lfunc_end142-hashfn_equal
	.cfi_endproc

	.align	16, 0x90
	.type	sort_vector_inplace,@function
sort_vector_inplace:                    # @sort_vector_inplace
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp429:
	.cfi_def_cfa_offset 16
.Ltmp430:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp431:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movl	$2, %eax
	movl	%eax, %r8d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	cmpq	-16(%rbp), %r8
	jg	.LBB143_2
# BB#1:                                 # %cond.true
	jmp	.LBB143_3
.LBB143_2:                              # %cond.false
.LBB143_3:                              # %cond.end
	movq	-16(%rbp), %rax
	sarq	$1, %rax
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	callq	sort_vector_copy
	movl	$1, %r8d
	movl	%r8d, %eax
	movq	-16(%rbp), %rcx
	subq	-40(%rbp), %rcx
	cmpq	%rcx, %rax
	jge	.LBB143_5
# BB#4:                                 # %if.then
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	subq	-40(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	-40(%rbp), %rdx
	shlq	$3, %rdx
	addq	%rdx, %rcx
	movq	-24(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movq	%rcx, %rdx
	movq	-48(%rbp), %rcx         # 8-byte Reload
	callq	sort_vector_inplace
.LBB143_5:                              # %if.end
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rax
	subq	-40(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	-40(%rbp), %r8
	shlq	$3, %r8
	addq	%r8, %rcx
	movq	-24(%rbp), %r9
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rcx
	movq	-56(%rbp), %r8          # 8-byte Reload
	callq	merge_vectors
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end143:
	.size	sort_vector_inplace, .Lfunc_end143-sort_vector_inplace
	.cfi_endproc

	.align	16, 0x90
	.type	sort_vector_copy,@function
sort_vector_copy:                       # @sort_vector_copy
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp432:
	.cfi_def_cfa_offset 16
.Ltmp433:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp434:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	xorl	%eax, %eax
	movl	%eax, %r8d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	cmpq	-16(%rbp), %r8
	jge	.LBB144_2
# BB#1:                                 # %cond.true
	jmp	.LBB144_3
.LBB144_2:                              # %cond.false
.LBB144_3:                              # %cond.end
	movq	-16(%rbp), %rax
	sarq	$1, %rax
	movq	%rax, -40(%rbp)
	cmpq	$1, -40(%rbp)
	jge	.LBB144_5
# BB#4:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	.LBB144_10
.LBB144_5:                              # %if.else
	movl	$1, %eax
	movl	%eax, %ecx
	cmpq	-40(%rbp), %rcx
	jge	.LBB144_7
# BB#6:                                 # %if.then.4
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	callq	sort_vector_inplace
.LBB144_7:                              # %if.end
	movl	$1, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	subq	-40(%rbp), %rdx
	cmpq	%rdx, %rcx
	jge	.LBB144_9
# BB#8:                                 # %if.then.6
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	subq	-40(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	-40(%rbp), %rdx
	shlq	$3, %rdx
	addq	%rdx, %rcx
	movq	-32(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movq	%rcx, %rdx
	movq	-48(%rbp), %rcx         # 8-byte Reload
	callq	sort_vector_inplace
.LBB144_9:                              # %if.end.8
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	subq	-40(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	-40(%rbp), %r8
	shlq	$3, %r8
	addq	%r8, %rcx
	movq	-32(%rbp), %r9
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rcx
	movq	-56(%rbp), %r8          # 8-byte Reload
	callq	merge_vectors
.LBB144_10:                             # %if.end.11
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end144:
	.size	sort_vector_copy, .Lfunc_end144-sort_vector_copy
	.cfi_endproc

	.align	16, 0x90
	.type	merge_vectors,@function
merge_vectors:                          # @merge_vectors
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp435:
	.cfi_def_cfa_offset 16
.Ltmp436:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp437:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	xorl	%eax, %eax
	movl	%eax, %r10d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	cmpq	-16(%rbp), %r10
	jge	.LBB145_3
# BB#1:                                 # %land.lhs.true
	xorl	%eax, %eax
	movl	%eax, %ecx
	cmpq	-32(%rbp), %rcx
	jge	.LBB145_3
# BB#2:                                 # %cond.true
	jmp	.LBB145_4
.LBB145_3:                              # %cond.false
.LBB145_4:                              # %cond.end
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	shlq	$3, %rcx
	addq	%rcx, %rax
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	-32(%rbp), %rcx
	shlq	$3, %rcx
	addq	%rcx, %rax
	movq	%rax, -64(%rbp)
.LBB145_5:                              # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	(%rax), %rsi
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	callq	inorder
	testb	$1, %al
	jne	.LBB145_6
	jmp	.LBB145_11
.LBB145_6:                              # %if.then
                                        #   in Loop: Header=BB145_5 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, -24(%rbp)
	movq	(%rax), %rax
	movq	-48(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$8, %rdx
	movq	%rdx, -48(%rbp)
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB145_10
# BB#7:                                 # %if.then.6
	movq	-48(%rbp), %rax
	cmpq	-40(%rbp), %rax
	je	.LBB145_9
# BB#8:                                 # %if.then.8
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-40(%rbp), %rsi
	subq	%rsi, %rdx
	sarq	$3, %rdx
	shlq	$3, %rdx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	memcpy
.LBB145_9:                              # %if.end
	jmp	.LBB145_15
.LBB145_10:                             # %if.end.9
                                        #   in Loop: Header=BB145_5 Depth=1
	jmp	.LBB145_14
.LBB145_11:                             # %if.else
                                        #   in Loop: Header=BB145_5 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, -40(%rbp)
	movq	(%rax), %rax
	movq	-48(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$8, %rdx
	movq	%rdx, -48(%rbp)
	movq	%rax, (%rcx)
	movq	-40(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB145_13
# BB#12:                                # %if.then.13
	movq	-48(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-24(%rbp), %rsi
	subq	%rsi, %rdx
	sarq	$3, %rdx
	shlq	$3, %rdx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	memcpy
	jmp	.LBB145_15
.LBB145_13:                             # %if.end.19
                                        #   in Loop: Header=BB145_5 Depth=1
	jmp	.LBB145_14
.LBB145_14:                             # %if.end.20
                                        #   in Loop: Header=BB145_5 Depth=1
	jmp	.LBB145_5
.LBB145_15:                             # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end145:
	.size	merge_vectors, .Lfunc_end145-merge_vectors
	.cfi_endproc

	.align	16, 0x90
	.type	set_hash_key_and_value,@function
set_hash_key_and_value:                 # @set_hash_key_and_value
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp438:
	.cfi_def_cfa_offset 16
.Ltmp439:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp440:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 72(%rdi)
	popq	%rbp
	retq
.Lfunc_end146:
	.size	set_hash_key_and_value, .Lfunc_end146-set_hash_key_and_value
	.cfi_endproc

	.align	16, 0x90
	.type	set_hash_next,@function
set_hash_next:                          # @set_hash_next
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp441:
	.cfi_def_cfa_offset 16
.Ltmp442:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp443:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 40(%rdi)
	popq	%rbp
	retq
.Lfunc_end147:
	.size	set_hash_next, .Lfunc_end147-set_hash_next
	.cfi_endproc

	.align	16, 0x90
	.type	set_hash_hash,@function
set_hash_hash:                          # @set_hash_hash
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp444:
	.cfi_def_cfa_offset 16
.Ltmp445:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp446:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 32(%rdi)
	popq	%rbp
	retq
.Lfunc_end148:
	.size	set_hash_hash, .Lfunc_end148-set_hash_hash
	.cfi_endproc

	.align	16, 0x90
	.type	set_hash_index,@function
set_hash_index:                         # @set_hash_index
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp447:
	.cfi_def_cfa_offset 16
.Ltmp448:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp449:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 56(%rdi)
	popq	%rbp
	retq
.Lfunc_end149:
	.size	set_hash_index, .Lfunc_end149-set_hash_index
	.cfi_endproc

	.align	16, 0x90
	.type	CHECK_HASH_TABLE,@function
CHECK_HASH_TABLE:                       # @CHECK_HASH_TABLE
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp450:
	.cfi_def_cfa_offset 16
.Ltmp451:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp452:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	HASH_TABLE_P
	testb	$1, %al
	jne	.LBB150_1
	jmp	.LBB150_2
.LBB150_1:                              # %cond.true
	jmp	.LBB150_3
.LBB150_2:                              # %cond.false
	movl	$510, %edi              # imm = 0x1FE
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -16(%rbp)         # 8-byte Spill
.LBB150_3:                              # %cond.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end150:
	.size	CHECK_HASH_TABLE, .Lfunc_end150-CHECK_HASH_TABLE
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"List too long"
	.size	.L.str, 14

	.type	string_char_byte_cache_string,@object # @string_char_byte_cache_string
	.local	string_char_byte_cache_string
	.comm	string_char_byte_cache_string,8,8
	.type	string_char_byte_cache_charpos,@object # @string_char_byte_cache_charpos
	.local	string_char_byte_cache_charpos
	.comm	string_char_byte_cache_charpos,8,8
	.type	string_char_byte_cache_bytepos,@object # @string_char_byte_cache_bytepos
	.local	string_char_byte_cache_bytepos
	.comm	string_char_byte_cache_bytepos,8,8
	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Can't convert the %ldth character to unibyte"
	.size	.L.str.1, 45

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Attempt to change byte length of a string"
	.size	.L.str.2, 42

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"yes-or-no-p"
	.size	.L.str.3, 12

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Yes"
	.size	.L.str.4, 4

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"No"
	.size	.L.str.5, 3

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"(yes or no) "
	.size	.L.str.6, 13

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"yes"
	.size	.L.str.7, 4

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"no"
	.size	.L.str.8, 3

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Please answer yes or no."
	.size	.L.str.9, 25

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"load-average not implemented for this operating system"
	.size	.L.str.10, 55

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"(require %s) while preparing to dump"
	.size	.L.str.11, 37

	.type	require_nesting_list,@object # @require_nesting_list
	.local	require_nesting_list
	.comm	require_nesting_list,8,8
	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Recursive `require' for feature `%s'"
	.size	.L.str.12, 37

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Required feature `%s' was not provided"
	.size	.L.str.13, 39

	.type	Flocale_info.days,@object # @Flocale_info.days
	.section	.rodata,"a",@progbits
	.align	16
Flocale_info.days:
	.long	131079                  # 0x20007
	.long	131080                  # 0x20008
	.long	131081                  # 0x20009
	.long	131082                  # 0x2000a
	.long	131083                  # 0x2000b
	.long	131084                  # 0x2000c
	.long	131085                  # 0x2000d
	.size	Flocale_info.days, 28

	.type	Flocale_info.months,@object # @Flocale_info.months
	.align	16
Flocale_info.months:
	.long	131098                  # 0x2001a
	.long	131099                  # 0x2001b
	.long	131100                  # 0x2001c
	.long	131101                  # 0x2001d
	.long	131102                  # 0x2001e
	.long	131103                  # 0x2001f
	.long	131104                  # 0x20020
	.long	131105                  # 0x20021
	.long	131106                  # 0x20022
	.long	131107                  # 0x20023
	.long	131108                  # 0x20024
	.long	131109                  # 0x20025
	.size	Flocale_info.months, 48

	.type	.L.str.14,@object       # @.str.14
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.14:
	.asciz	"Multibyte character in data for base64 encoding"
	.size	.L.str.14, 48

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Invalid base64 data"
	.size	.L.str.15, 20

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Hash table too large"
	.size	.L.str.16, 21

	.type	weak_hash_tables,@object # @weak_hash_tables
	.local	weak_hash_tables
	.comm	weak_hash_tables,8,8
	.type	hashtest_eq,@object     # @hashtest_eq
	.comm	hashtest_eq,40,8
	.type	hashtest_eql,@object    # @hashtest_eql
	.comm	hashtest_eql,40,8
	.type	hashtest_equal,@object  # @hashtest_equal
	.comm	hashtest_equal,40,8
	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Invalid hash table test"
	.size	.L.str.17, 24

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"Invalid hash table size"
	.size	.L.str.18, 24

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Invalid hash table rehash size"
	.size	.L.str.19, 31

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"Invalid hash table rehash threshold"
	.size	.L.str.20, 36

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Invalid hash table weakness"
	.size	.L.str.21, 28

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Invalid argument list"
	.size	.L.str.22, 22

	.type	syms_of_fns.o_fwd,@object # @syms_of_fns.o_fwd
	.local	syms_of_fns.o_fwd
	.comm	syms_of_fns.o_fwd,16,8
	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"features"
	.size	.L.str.23, 9

	.type	syms_of_fns.b_fwd,@object # @syms_of_fns.b_fwd
	.local	syms_of_fns.b_fwd
	.comm	syms_of_fns.b_fwd,16,8
	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"use-dialog-box"
	.size	.L.str.24, 15

	.type	syms_of_fns.b_fwd.25,@object # @syms_of_fns.b_fwd.25
	.local	syms_of_fns.b_fwd.25
	.comm	syms_of_fns.b_fwd.25,16,8
	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"use-file-dialog"
	.size	.L.str.26, 16

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"Stack overflow in equal"
	.size	.L.str.27, 24

	.type	base64_value_to_char,@object # @base64_value_to_char
	.section	.rodata,"a",@progbits
	.align	16
base64_value_to_char:
	.ascii	"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
	.size	base64_value_to_char, 64

	.type	base64_char_to_value,@object # @base64_char_to_value
	.align	16
base64_char_to_value:
	.short	65535                   # 0xffff
	.short	65535                   # 0xffff
	.short	65535                   # 0xffff
	.short	65535                   # 0xffff
	.short	65535                   # 0xffff
	.short	65535                   # 0xffff
	.short	65535                   # 0xffff
	.short	65535                   # 0xffff
	.short	65535                   # 0xffff
	.short	65535                   # 0xffff
	.short	65535                   # 0xffff
	.short	65535                   # 0xffff
	.short	65535                   # 0xffff
	.short	65535                   # 0xffff
	.short	65535                   # 0xffff
	.short	65535                   # 0xffff
	.short	65535                   # 0xffff
	.short	65535                   # 0xffff
	.short	65535                   # 0xffff
	.short	65535                   # 0xffff
	.short	65535                   # 0xffff
	.short	65535                   # 0xffff
	.short	65535                   # 0xffff
	.short	65535                   # 0xffff
	.short	65535                   # 0xffff
	.short	65535                   # 0xffff
	.short	65535                   # 0xffff
	.short	65535                   # 0xffff
	.short	65535                   # 0xffff
	.short	65535                   # 0xffff
	.short	65535                   # 0xffff
	.short	65535                   # 0xffff
	.short	65535                   # 0xffff
	.short	65535                   # 0xffff
	.short	65535                   # 0xffff
	.short	65535                   # 0xffff
	.short	65535                   # 0xffff
	.short	65535                   # 0xffff
	.short	65535                   # 0xffff
	.short	65535                   # 0xffff
	.short	65535                   # 0xffff
	.short	65535                   # 0xffff
	.short	65535                   # 0xffff
	.short	62                      # 0x3e
	.short	65535                   # 0xffff
	.short	65535                   # 0xffff
	.short	65535                   # 0xffff
	.short	63                      # 0x3f
	.short	52                      # 0x34
	.short	53                      # 0x35
	.short	54                      # 0x36
	.short	55                      # 0x37
	.short	56                      # 0x38
	.short	57                      # 0x39
	.short	58                      # 0x3a
	.short	59                      # 0x3b
	.short	60                      # 0x3c
	.short	61                      # 0x3d
	.short	65535                   # 0xffff
	.short	65535                   # 0xffff
	.short	65535                   # 0xffff
	.short	65535                   # 0xffff
	.short	65535                   # 0xffff
	.short	65535                   # 0xffff
	.short	65535                   # 0xffff
	.short	0                       # 0x0
	.short	1                       # 0x1
	.short	2                       # 0x2
	.short	3                       # 0x3
	.short	4                       # 0x4
	.short	5                       # 0x5
	.short	6                       # 0x6
	.short	7                       # 0x7
	.short	8                       # 0x8
	.short	9                       # 0x9
	.short	10                      # 0xa
	.short	11                      # 0xb
	.short	12                      # 0xc
	.short	13                      # 0xd
	.short	14                      # 0xe
	.short	15                      # 0xf
	.short	16                      # 0x10
	.short	17                      # 0x11
	.short	18                      # 0x12
	.short	19                      # 0x13
	.short	20                      # 0x14
	.short	21                      # 0x15
	.short	22                      # 0x16
	.short	23                      # 0x17
	.short	24                      # 0x18
	.short	25                      # 0x19
	.short	65535                   # 0xffff
	.short	65535                   # 0xffff
	.short	65535                   # 0xffff
	.short	65535                   # 0xffff
	.short	65535                   # 0xffff
	.short	65535                   # 0xffff
	.short	26                      # 0x1a
	.short	27                      # 0x1b
	.short	28                      # 0x1c
	.short	29                      # 0x1d
	.short	30                      # 0x1e
	.short	31                      # 0x1f
	.short	32                      # 0x20
	.short	33                      # 0x21
	.short	34                      # 0x22
	.short	35                      # 0x23
	.short	36                      # 0x24
	.short	37                      # 0x25
	.short	38                      # 0x26
	.short	39                      # 0x27
	.short	40                      # 0x28
	.short	41                      # 0x29
	.short	42                      # 0x2a
	.short	43                      # 0x2b
	.short	44                      # 0x2c
	.short	45                      # 0x2d
	.short	46                      # 0x2e
	.short	47                      # 0x2f
	.short	48                      # 0x30
	.short	49                      # 0x31
	.short	50                      # 0x32
	.short	51                      # 0x33
	.short	65535                   # 0xffff
	.short	65535                   # 0xffff
	.short	65535                   # 0xffff
	.short	65535                   # 0xffff
	.short	65535                   # 0xffff
	.size	base64_char_to_value, 256

	.type	.L.str.28,@object       # @.str.28
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.28:
	.asciz	"Hash table too large to resize"
	.size	.L.str.28, 31

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"Invalid algorithm arg: %s"
	.size	.L.str.29, 26

	.type	secure_hash.hexdigit,@object # @secure_hash.hexdigit
	.section	.rodata,"a",@progbits
	.align	16
secure_hash.hexdigit:
	.ascii	"0123456789abcdef"
	.size	secure_hash.hexdigit, 16

	.type	.L.str.30,@object       # @.str.30
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.30:
	.asciz	"sxhash"
	.size	.L.str.30, 7

	.type	Ssxhash,@object         # @Ssxhash
	.data
	.align	8
Ssxhash:
	.quad	167772160               # 0xa000000
	.quad	Fsxhash
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.30
	.quad	0
	.quad	0
	.size	Ssxhash, 48

	.type	.L.str.31,@object       # @.str.31
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.31:
	.asciz	"make-hash-table"
	.size	.L.str.31, 16

	.type	Smake_hash_table,@object # @Smake_hash_table
	.data
	.align	8
Smake_hash_table:
	.quad	167772160               # 0xa000000
	.quad	Fmake_hash_table
	.short	0                       # 0x0
	.short	65534                   # 0xfffe
	.zero	4
	.quad	.L.str.31
	.quad	0
	.quad	0
	.size	Smake_hash_table, 48

	.type	.L.str.32,@object       # @.str.32
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.32:
	.asciz	"copy-hash-table"
	.size	.L.str.32, 16

	.type	Scopy_hash_table,@object # @Scopy_hash_table
	.data
	.align	8
Scopy_hash_table:
	.quad	167772160               # 0xa000000
	.quad	Fcopy_hash_table
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.32
	.quad	0
	.quad	0
	.size	Scopy_hash_table, 48

	.type	.L.str.33,@object       # @.str.33
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.33:
	.asciz	"hash-table-count"
	.size	.L.str.33, 17

	.type	Shash_table_count,@object # @Shash_table_count
	.data
	.align	8
Shash_table_count:
	.quad	167772160               # 0xa000000
	.quad	Fhash_table_count
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.33
	.quad	0
	.quad	0
	.size	Shash_table_count, 48

	.type	.L.str.34,@object       # @.str.34
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.34:
	.asciz	"hash-table-rehash-size"
	.size	.L.str.34, 23

	.type	Shash_table_rehash_size,@object # @Shash_table_rehash_size
	.data
	.align	8
Shash_table_rehash_size:
	.quad	167772160               # 0xa000000
	.quad	Fhash_table_rehash_size
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.34
	.quad	0
	.quad	0
	.size	Shash_table_rehash_size, 48

	.type	.L.str.35,@object       # @.str.35
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.35:
	.asciz	"hash-table-rehash-threshold"
	.size	.L.str.35, 28

	.type	Shash_table_rehash_threshold,@object # @Shash_table_rehash_threshold
	.data
	.align	8
Shash_table_rehash_threshold:
	.quad	167772160               # 0xa000000
	.quad	Fhash_table_rehash_threshold
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.35
	.quad	0
	.quad	0
	.size	Shash_table_rehash_threshold, 48

	.type	.L.str.36,@object       # @.str.36
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.36:
	.asciz	"hash-table-size"
	.size	.L.str.36, 16

	.type	Shash_table_size,@object # @Shash_table_size
	.data
	.align	8
Shash_table_size:
	.quad	167772160               # 0xa000000
	.quad	Fhash_table_size
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.36
	.quad	0
	.quad	0
	.size	Shash_table_size, 48

	.type	.L.str.37,@object       # @.str.37
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.37:
	.asciz	"hash-table-test"
	.size	.L.str.37, 16

	.type	Shash_table_test,@object # @Shash_table_test
	.data
	.align	8
Shash_table_test:
	.quad	167772160               # 0xa000000
	.quad	Fhash_table_test
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.37
	.quad	0
	.quad	0
	.size	Shash_table_test, 48

	.type	.L.str.38,@object       # @.str.38
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.38:
	.asciz	"hash-table-weakness"
	.size	.L.str.38, 20

	.type	Shash_table_weakness,@object # @Shash_table_weakness
	.data
	.align	8
Shash_table_weakness:
	.quad	167772160               # 0xa000000
	.quad	Fhash_table_weakness
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.38
	.quad	0
	.quad	0
	.size	Shash_table_weakness, 48

	.type	.L.str.39,@object       # @.str.39
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.39:
	.asciz	"hash-table-p"
	.size	.L.str.39, 13

	.type	Shash_table_p,@object   # @Shash_table_p
	.data
	.align	8
Shash_table_p:
	.quad	167772160               # 0xa000000
	.quad	Fhash_table_p
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.39
	.quad	0
	.quad	0
	.size	Shash_table_p, 48

	.type	.L.str.40,@object       # @.str.40
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.40:
	.asciz	"clrhash"
	.size	.L.str.40, 8

	.type	Sclrhash,@object        # @Sclrhash
	.data
	.align	8
Sclrhash:
	.quad	167772160               # 0xa000000
	.quad	Fclrhash
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.40
	.quad	0
	.quad	0
	.size	Sclrhash, 48

	.type	.L.str.41,@object       # @.str.41
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.41:
	.asciz	"gethash"
	.size	.L.str.41, 8

	.type	Sgethash,@object        # @Sgethash
	.data
	.align	8
Sgethash:
	.quad	167772160               # 0xa000000
	.quad	Fgethash
	.short	2                       # 0x2
	.short	3                       # 0x3
	.zero	4
	.quad	.L.str.41
	.quad	0
	.quad	0
	.size	Sgethash, 48

	.type	.L.str.42,@object       # @.str.42
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.42:
	.asciz	"puthash"
	.size	.L.str.42, 8

	.type	Sputhash,@object        # @Sputhash
	.data
	.align	8
Sputhash:
	.quad	167772160               # 0xa000000
	.quad	Fputhash
	.short	3                       # 0x3
	.short	3                       # 0x3
	.zero	4
	.quad	.L.str.42
	.quad	0
	.quad	0
	.size	Sputhash, 48

	.type	.L.str.43,@object       # @.str.43
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.43:
	.asciz	"remhash"
	.size	.L.str.43, 8

	.type	Sremhash,@object        # @Sremhash
	.data
	.align	8
Sremhash:
	.quad	167772160               # 0xa000000
	.quad	Fremhash
	.short	2                       # 0x2
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.43
	.quad	0
	.quad	0
	.size	Sremhash, 48

	.type	.L.str.44,@object       # @.str.44
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.44:
	.asciz	"maphash"
	.size	.L.str.44, 8

	.type	Smaphash,@object        # @Smaphash
	.data
	.align	8
Smaphash:
	.quad	167772160               # 0xa000000
	.quad	Fmaphash
	.short	2                       # 0x2
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.44
	.quad	0
	.quad	0
	.size	Smaphash, 48

	.type	.L.str.45,@object       # @.str.45
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.45:
	.asciz	"define-hash-table-test"
	.size	.L.str.45, 23

	.type	Sdefine_hash_table_test,@object # @Sdefine_hash_table_test
	.data
	.align	8
Sdefine_hash_table_test:
	.quad	167772160               # 0xa000000
	.quad	Fdefine_hash_table_test
	.short	3                       # 0x3
	.short	3                       # 0x3
	.zero	4
	.quad	.L.str.45
	.quad	0
	.quad	0
	.size	Sdefine_hash_table_test, 48

	.type	.L.str.46,@object       # @.str.46
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.46:
	.asciz	"identity"
	.size	.L.str.46, 9

	.type	Sidentity,@object       # @Sidentity
	.data
	.align	8
Sidentity:
	.quad	167772160               # 0xa000000
	.quad	Fidentity
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.46
	.quad	0
	.quad	0
	.size	Sidentity, 48

	.type	.L.str.47,@object       # @.str.47
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.47:
	.asciz	"random"
	.size	.L.str.47, 7

	.type	Srandom,@object         # @Srandom
	.data
	.align	8
Srandom:
	.quad	167772160               # 0xa000000
	.quad	Frandom
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.47
	.quad	0
	.quad	0
	.size	Srandom, 48

	.type	.L.str.48,@object       # @.str.48
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.48:
	.asciz	"length"
	.size	.L.str.48, 7

	.type	Slength,@object         # @Slength
	.data
	.align	8
Slength:
	.quad	167772160               # 0xa000000
	.quad	Flength
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.48
	.quad	0
	.quad	0
	.size	Slength, 48

	.type	.L.str.49,@object       # @.str.49
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.49:
	.asciz	"safe-length"
	.size	.L.str.49, 12

	.type	Ssafe_length,@object    # @Ssafe_length
	.data
	.align	8
Ssafe_length:
	.quad	167772160               # 0xa000000
	.quad	Fsafe_length
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.49
	.quad	0
	.quad	0
	.size	Ssafe_length, 48

	.type	.L.str.50,@object       # @.str.50
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.50:
	.asciz	"string-bytes"
	.size	.L.str.50, 13

	.type	Sstring_bytes,@object   # @Sstring_bytes
	.data
	.align	8
Sstring_bytes:
	.quad	167772160               # 0xa000000
	.quad	Fstring_bytes
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.50
	.quad	0
	.quad	0
	.size	Sstring_bytes, 48

	.type	.L.str.51,@object       # @.str.51
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.51:
	.asciz	"string-equal"
	.size	.L.str.51, 13

	.type	Sstring_equal,@object   # @Sstring_equal
	.data
	.align	8
Sstring_equal:
	.quad	167772160               # 0xa000000
	.quad	Fstring_equal
	.short	2                       # 0x2
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.51
	.quad	0
	.quad	0
	.size	Sstring_equal, 48

	.type	.L.str.52,@object       # @.str.52
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.52:
	.asciz	"compare-strings"
	.size	.L.str.52, 16

	.type	Scompare_strings,@object # @Scompare_strings
	.data
	.align	8
Scompare_strings:
	.quad	167772160               # 0xa000000
	.quad	Fcompare_strings
	.short	6                       # 0x6
	.short	7                       # 0x7
	.zero	4
	.quad	.L.str.52
	.quad	0
	.quad	0
	.size	Scompare_strings, 48

	.type	.L.str.53,@object       # @.str.53
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.53:
	.asciz	"string-lessp"
	.size	.L.str.53, 13

	.type	Sstring_lessp,@object   # @Sstring_lessp
	.data
	.align	8
Sstring_lessp:
	.quad	167772160               # 0xa000000
	.quad	Fstring_lessp
	.short	2                       # 0x2
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.53
	.quad	0
	.quad	0
	.size	Sstring_lessp, 48

	.type	.L.str.54,@object       # @.str.54
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.54:
	.asciz	"string-collate-lessp"
	.size	.L.str.54, 21

	.type	Sstring_collate_lessp,@object # @Sstring_collate_lessp
	.data
	.align	8
Sstring_collate_lessp:
	.quad	167772160               # 0xa000000
	.quad	Fstring_collate_lessp
	.short	2                       # 0x2
	.short	4                       # 0x4
	.zero	4
	.quad	.L.str.54
	.quad	0
	.quad	0
	.size	Sstring_collate_lessp, 48

	.type	.L.str.55,@object       # @.str.55
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.55:
	.asciz	"string-collate-equalp"
	.size	.L.str.55, 22

	.type	Sstring_collate_equalp,@object # @Sstring_collate_equalp
	.data
	.align	8
Sstring_collate_equalp:
	.quad	167772160               # 0xa000000
	.quad	Fstring_collate_equalp
	.short	2                       # 0x2
	.short	4                       # 0x4
	.zero	4
	.quad	.L.str.55
	.quad	0
	.quad	0
	.size	Sstring_collate_equalp, 48

	.type	.L.str.56,@object       # @.str.56
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.56:
	.asciz	"append"
	.size	.L.str.56, 7

	.type	Sappend,@object         # @Sappend
	.data
	.align	8
Sappend:
	.quad	167772160               # 0xa000000
	.quad	Fappend
	.short	0                       # 0x0
	.short	65534                   # 0xfffe
	.zero	4
	.quad	.L.str.56
	.quad	0
	.quad	0
	.size	Sappend, 48

	.type	.L.str.57,@object       # @.str.57
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.57:
	.asciz	"concat"
	.size	.L.str.57, 7

	.type	Sconcat,@object         # @Sconcat
	.data
	.align	8
Sconcat:
	.quad	167772160               # 0xa000000
	.quad	Fconcat
	.short	0                       # 0x0
	.short	65534                   # 0xfffe
	.zero	4
	.quad	.L.str.57
	.quad	0
	.quad	0
	.size	Sconcat, 48

	.type	.L.str.58,@object       # @.str.58
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.58:
	.asciz	"vconcat"
	.size	.L.str.58, 8

	.type	Svconcat,@object        # @Svconcat
	.data
	.align	8
Svconcat:
	.quad	167772160               # 0xa000000
	.quad	Fvconcat
	.short	0                       # 0x0
	.short	65534                   # 0xfffe
	.zero	4
	.quad	.L.str.58
	.quad	0
	.quad	0
	.size	Svconcat, 48

	.type	.L.str.59,@object       # @.str.59
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.59:
	.asciz	"copy-sequence"
	.size	.L.str.59, 14

	.type	Scopy_sequence,@object  # @Scopy_sequence
	.data
	.align	8
Scopy_sequence:
	.quad	167772160               # 0xa000000
	.quad	Fcopy_sequence
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.59
	.quad	0
	.quad	0
	.size	Scopy_sequence, 48

	.type	.L.str.60,@object       # @.str.60
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.60:
	.asciz	"string-make-multibyte"
	.size	.L.str.60, 22

	.type	Sstring_make_multibyte,@object # @Sstring_make_multibyte
	.data
	.align	8
Sstring_make_multibyte:
	.quad	167772160               # 0xa000000
	.quad	Fstring_make_multibyte
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.60
	.quad	0
	.quad	0
	.size	Sstring_make_multibyte, 48

	.type	.L.str.61,@object       # @.str.61
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.61:
	.asciz	"string-make-unibyte"
	.size	.L.str.61, 20

	.type	Sstring_make_unibyte,@object # @Sstring_make_unibyte
	.data
	.align	8
Sstring_make_unibyte:
	.quad	167772160               # 0xa000000
	.quad	Fstring_make_unibyte
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.61
	.quad	0
	.quad	0
	.size	Sstring_make_unibyte, 48

	.type	.L.str.62,@object       # @.str.62
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.62:
	.asciz	"string-as-multibyte"
	.size	.L.str.62, 20

	.type	Sstring_as_multibyte,@object # @Sstring_as_multibyte
	.data
	.align	8
Sstring_as_multibyte:
	.quad	167772160               # 0xa000000
	.quad	Fstring_as_multibyte
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.62
	.quad	0
	.quad	0
	.size	Sstring_as_multibyte, 48

	.type	.L.str.63,@object       # @.str.63
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.63:
	.asciz	"string-as-unibyte"
	.size	.L.str.63, 18

	.type	Sstring_as_unibyte,@object # @Sstring_as_unibyte
	.data
	.align	8
Sstring_as_unibyte:
	.quad	167772160               # 0xa000000
	.quad	Fstring_as_unibyte
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.63
	.quad	0
	.quad	0
	.size	Sstring_as_unibyte, 48

	.type	.L.str.64,@object       # @.str.64
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.64:
	.asciz	"string-to-multibyte"
	.size	.L.str.64, 20

	.type	Sstring_to_multibyte,@object # @Sstring_to_multibyte
	.data
	.align	8
Sstring_to_multibyte:
	.quad	167772160               # 0xa000000
	.quad	Fstring_to_multibyte
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.64
	.quad	0
	.quad	0
	.size	Sstring_to_multibyte, 48

	.type	.L.str.65,@object       # @.str.65
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.65:
	.asciz	"string-to-unibyte"
	.size	.L.str.65, 18

	.type	Sstring_to_unibyte,@object # @Sstring_to_unibyte
	.data
	.align	8
Sstring_to_unibyte:
	.quad	167772160               # 0xa000000
	.quad	Fstring_to_unibyte
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.65
	.quad	0
	.quad	0
	.size	Sstring_to_unibyte, 48

	.type	.L.str.66,@object       # @.str.66
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.66:
	.asciz	"copy-alist"
	.size	.L.str.66, 11

	.type	Scopy_alist,@object     # @Scopy_alist
	.data
	.align	8
Scopy_alist:
	.quad	167772160               # 0xa000000
	.quad	Fcopy_alist
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.66
	.quad	0
	.quad	0
	.size	Scopy_alist, 48

	.type	.L.str.67,@object       # @.str.67
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.67:
	.asciz	"substring"
	.size	.L.str.67, 10

	.type	Ssubstring,@object      # @Ssubstring
	.data
	.align	8
Ssubstring:
	.quad	167772160               # 0xa000000
	.quad	Fsubstring
	.short	1                       # 0x1
	.short	3                       # 0x3
	.zero	4
	.quad	.L.str.67
	.quad	0
	.quad	0
	.size	Ssubstring, 48

	.type	.L.str.68,@object       # @.str.68
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.68:
	.asciz	"substring-no-properties"
	.size	.L.str.68, 24

	.type	Ssubstring_no_properties,@object # @Ssubstring_no_properties
	.data
	.align	8
Ssubstring_no_properties:
	.quad	167772160               # 0xa000000
	.quad	Fsubstring_no_properties
	.short	1                       # 0x1
	.short	3                       # 0x3
	.zero	4
	.quad	.L.str.68
	.quad	0
	.quad	0
	.size	Ssubstring_no_properties, 48

	.type	.L.str.69,@object       # @.str.69
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.69:
	.asciz	"nthcdr"
	.size	.L.str.69, 7

	.type	Snthcdr,@object         # @Snthcdr
	.data
	.align	8
Snthcdr:
	.quad	167772160               # 0xa000000
	.quad	Fnthcdr
	.short	2                       # 0x2
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.69
	.quad	0
	.quad	0
	.size	Snthcdr, 48

	.type	.L.str.70,@object       # @.str.70
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.70:
	.asciz	"nth"
	.size	.L.str.70, 4

	.type	Snth,@object            # @Snth
	.data
	.align	8
Snth:
	.quad	167772160               # 0xa000000
	.quad	Fnth
	.short	2                       # 0x2
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.70
	.quad	0
	.quad	0
	.size	Snth, 48

	.type	.L.str.71,@object       # @.str.71
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.71:
	.asciz	"elt"
	.size	.L.str.71, 4

	.type	Selt,@object            # @Selt
	.data
	.align	8
Selt:
	.quad	167772160               # 0xa000000
	.quad	Felt
	.short	2                       # 0x2
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.71
	.quad	0
	.quad	0
	.size	Selt, 48

	.type	.L.str.72,@object       # @.str.72
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.72:
	.asciz	"member"
	.size	.L.str.72, 7

	.type	Smember,@object         # @Smember
	.data
	.align	8
Smember:
	.quad	167772160               # 0xa000000
	.quad	Fmember
	.short	2                       # 0x2
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.72
	.quad	0
	.quad	0
	.size	Smember, 48

	.type	.L.str.73,@object       # @.str.73
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.73:
	.asciz	"memq"
	.size	.L.str.73, 5

	.type	Smemq,@object           # @Smemq
	.data
	.align	8
Smemq:
	.quad	167772160               # 0xa000000
	.quad	Fmemq
	.short	2                       # 0x2
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.73
	.quad	0
	.quad	0
	.size	Smemq, 48

	.type	.L.str.74,@object       # @.str.74
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.74:
	.asciz	"memql"
	.size	.L.str.74, 6

	.type	Smemql,@object          # @Smemql
	.data
	.align	8
Smemql:
	.quad	167772160               # 0xa000000
	.quad	Fmemql
	.short	2                       # 0x2
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.74
	.quad	0
	.quad	0
	.size	Smemql, 48

	.type	.L.str.75,@object       # @.str.75
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.75:
	.asciz	"assq"
	.size	.L.str.75, 5

	.type	Sassq,@object           # @Sassq
	.data
	.align	8
Sassq:
	.quad	167772160               # 0xa000000
	.quad	Fassq
	.short	2                       # 0x2
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.75
	.quad	0
	.quad	0
	.size	Sassq, 48

	.type	.L.str.76,@object       # @.str.76
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.76:
	.asciz	"assoc"
	.size	.L.str.76, 6

	.type	Sassoc,@object          # @Sassoc
	.data
	.align	8
Sassoc:
	.quad	167772160               # 0xa000000
	.quad	Fassoc
	.short	2                       # 0x2
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.76
	.quad	0
	.quad	0
	.size	Sassoc, 48

	.type	.L.str.77,@object       # @.str.77
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.77:
	.asciz	"rassq"
	.size	.L.str.77, 6

	.type	Srassq,@object          # @Srassq
	.data
	.align	8
Srassq:
	.quad	167772160               # 0xa000000
	.quad	Frassq
	.short	2                       # 0x2
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.77
	.quad	0
	.quad	0
	.size	Srassq, 48

	.type	.L.str.78,@object       # @.str.78
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.78:
	.asciz	"rassoc"
	.size	.L.str.78, 7

	.type	Srassoc,@object         # @Srassoc
	.data
	.align	8
Srassoc:
	.quad	167772160               # 0xa000000
	.quad	Frassoc
	.short	2                       # 0x2
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.78
	.quad	0
	.quad	0
	.size	Srassoc, 48

	.type	.L.str.79,@object       # @.str.79
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.79:
	.asciz	"delq"
	.size	.L.str.79, 5

	.type	Sdelq,@object           # @Sdelq
	.data
	.align	8
Sdelq:
	.quad	167772160               # 0xa000000
	.quad	Fdelq
	.short	2                       # 0x2
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.79
	.quad	0
	.quad	0
	.size	Sdelq, 48

	.type	.L.str.80,@object       # @.str.80
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.80:
	.asciz	"delete"
	.size	.L.str.80, 7

	.type	Sdelete,@object         # @Sdelete
	.data
	.align	8
Sdelete:
	.quad	167772160               # 0xa000000
	.quad	Fdelete
	.short	2                       # 0x2
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.80
	.quad	0
	.quad	0
	.size	Sdelete, 48

	.type	.L.str.81,@object       # @.str.81
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.81:
	.asciz	"nreverse"
	.size	.L.str.81, 9

	.type	Snreverse,@object       # @Snreverse
	.data
	.align	8
Snreverse:
	.quad	167772160               # 0xa000000
	.quad	Fnreverse
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.81
	.quad	0
	.quad	0
	.size	Snreverse, 48

	.type	.L.str.82,@object       # @.str.82
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.82:
	.asciz	"reverse"
	.size	.L.str.82, 8

	.type	Sreverse,@object        # @Sreverse
	.data
	.align	8
Sreverse:
	.quad	167772160               # 0xa000000
	.quad	Freverse
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.82
	.quad	0
	.quad	0
	.size	Sreverse, 48

	.type	.L.str.83,@object       # @.str.83
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.83:
	.asciz	"sort"
	.size	.L.str.83, 5

	.type	Ssort,@object           # @Ssort
	.data
	.align	8
Ssort:
	.quad	167772160               # 0xa000000
	.quad	Fsort
	.short	2                       # 0x2
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.83
	.quad	0
	.quad	0
	.size	Ssort, 48

	.type	.L.str.84,@object       # @.str.84
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.84:
	.asciz	"plist-get"
	.size	.L.str.84, 10

	.type	Splist_get,@object      # @Splist_get
	.data
	.align	8
Splist_get:
	.quad	167772160               # 0xa000000
	.quad	Fplist_get
	.short	2                       # 0x2
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.84
	.quad	0
	.quad	0
	.size	Splist_get, 48

	.type	.L.str.85,@object       # @.str.85
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.85:
	.asciz	"get"
	.size	.L.str.85, 4

	.type	Sget,@object            # @Sget
	.data
	.align	8
Sget:
	.quad	167772160               # 0xa000000
	.quad	Fget
	.short	2                       # 0x2
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.85
	.quad	0
	.quad	0
	.size	Sget, 48

	.type	.L.str.86,@object       # @.str.86
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.86:
	.asciz	"plist-put"
	.size	.L.str.86, 10

	.type	Splist_put,@object      # @Splist_put
	.data
	.align	8
Splist_put:
	.quad	167772160               # 0xa000000
	.quad	Fplist_put
	.short	3                       # 0x3
	.short	3                       # 0x3
	.zero	4
	.quad	.L.str.86
	.quad	0
	.quad	0
	.size	Splist_put, 48

	.type	.L.str.87,@object       # @.str.87
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.87:
	.asciz	"put"
	.size	.L.str.87, 4

	.type	Sput,@object            # @Sput
	.data
	.align	8
Sput:
	.quad	167772160               # 0xa000000
	.quad	Fput
	.short	3                       # 0x3
	.short	3                       # 0x3
	.zero	4
	.quad	.L.str.87
	.quad	0
	.quad	0
	.size	Sput, 48

	.type	.L.str.88,@object       # @.str.88
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.88:
	.asciz	"lax-plist-get"
	.size	.L.str.88, 14

	.type	Slax_plist_get,@object  # @Slax_plist_get
	.data
	.align	8
Slax_plist_get:
	.quad	167772160               # 0xa000000
	.quad	Flax_plist_get
	.short	2                       # 0x2
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.88
	.quad	0
	.quad	0
	.size	Slax_plist_get, 48

	.type	.L.str.89,@object       # @.str.89
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.89:
	.asciz	"lax-plist-put"
	.size	.L.str.89, 14

	.type	Slax_plist_put,@object  # @Slax_plist_put
	.data
	.align	8
Slax_plist_put:
	.quad	167772160               # 0xa000000
	.quad	Flax_plist_put
	.short	3                       # 0x3
	.short	3                       # 0x3
	.zero	4
	.quad	.L.str.89
	.quad	0
	.quad	0
	.size	Slax_plist_put, 48

	.type	.L.str.90,@object       # @.str.90
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.90:
	.asciz	"eql"
	.size	.L.str.90, 4

	.type	Seql,@object            # @Seql
	.data
	.align	8
Seql:
	.quad	167772160               # 0xa000000
	.quad	Feql
	.short	2                       # 0x2
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.90
	.quad	0
	.quad	0
	.size	Seql, 48

	.type	.L.str.91,@object       # @.str.91
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.91:
	.asciz	"equal"
	.size	.L.str.91, 6

	.type	Sequal,@object          # @Sequal
	.data
	.align	8
Sequal:
	.quad	167772160               # 0xa000000
	.quad	Fequal
	.short	2                       # 0x2
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.91
	.quad	0
	.quad	0
	.size	Sequal, 48

	.type	.L.str.92,@object       # @.str.92
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.92:
	.asciz	"equal-including-properties"
	.size	.L.str.92, 27

	.type	Sequal_including_properties,@object # @Sequal_including_properties
	.data
	.align	8
Sequal_including_properties:
	.quad	167772160               # 0xa000000
	.quad	Fequal_including_properties
	.short	2                       # 0x2
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.92
	.quad	0
	.quad	0
	.size	Sequal_including_properties, 48

	.type	.L.str.93,@object       # @.str.93
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.93:
	.asciz	"fillarray"
	.size	.L.str.93, 10

	.type	Sfillarray,@object      # @Sfillarray
	.data
	.align	8
Sfillarray:
	.quad	167772160               # 0xa000000
	.quad	Ffillarray
	.short	2                       # 0x2
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.93
	.quad	0
	.quad	0
	.size	Sfillarray, 48

	.type	.L.str.94,@object       # @.str.94
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.94:
	.asciz	"clear-string"
	.size	.L.str.94, 13

	.type	Sclear_string,@object   # @Sclear_string
	.data
	.align	8
Sclear_string:
	.quad	167772160               # 0xa000000
	.quad	Fclear_string
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.94
	.quad	0
	.quad	0
	.size	Sclear_string, 48

	.type	.L.str.95,@object       # @.str.95
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.95:
	.asciz	"nconc"
	.size	.L.str.95, 6

	.type	Snconc,@object          # @Snconc
	.data
	.align	8
Snconc:
	.quad	167772160               # 0xa000000
	.quad	Fnconc
	.short	0                       # 0x0
	.short	65534                   # 0xfffe
	.zero	4
	.quad	.L.str.95
	.quad	0
	.quad	0
	.size	Snconc, 48

	.type	.L.str.96,@object       # @.str.96
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.96:
	.asciz	"mapcar"
	.size	.L.str.96, 7

	.type	Smapcar,@object         # @Smapcar
	.data
	.align	8
Smapcar:
	.quad	167772160               # 0xa000000
	.quad	Fmapcar
	.short	2                       # 0x2
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.96
	.quad	0
	.quad	0
	.size	Smapcar, 48

	.type	.L.str.97,@object       # @.str.97
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.97:
	.asciz	"mapc"
	.size	.L.str.97, 5

	.type	Smapc,@object           # @Smapc
	.data
	.align	8
Smapc:
	.quad	167772160               # 0xa000000
	.quad	Fmapc
	.short	2                       # 0x2
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.97
	.quad	0
	.quad	0
	.size	Smapc, 48

	.type	.L.str.98,@object       # @.str.98
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.98:
	.asciz	"mapconcat"
	.size	.L.str.98, 10

	.type	Smapconcat,@object      # @Smapconcat
	.data
	.align	8
Smapconcat:
	.quad	167772160               # 0xa000000
	.quad	Fmapconcat
	.short	3                       # 0x3
	.short	3                       # 0x3
	.zero	4
	.quad	.L.str.98
	.quad	0
	.quad	0
	.size	Smapconcat, 48

	.type	Syes_or_no_p,@object    # @Syes_or_no_p
	.align	8
Syes_or_no_p:
	.quad	167772160               # 0xa000000
	.quad	Fyes_or_no_p
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.3
	.quad	0
	.quad	0
	.size	Syes_or_no_p, 48

	.type	.L.str.99,@object       # @.str.99
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.99:
	.asciz	"load-average"
	.size	.L.str.99, 13

	.type	Sload_average,@object   # @Sload_average
	.data
	.align	8
Sload_average:
	.quad	167772160               # 0xa000000
	.quad	Fload_average
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.99
	.quad	0
	.quad	0
	.size	Sload_average, 48

	.type	.L.str.100,@object      # @.str.100
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.100:
	.asciz	"featurep"
	.size	.L.str.100, 9

	.type	Sfeaturep,@object       # @Sfeaturep
	.data
	.align	8
Sfeaturep:
	.quad	167772160               # 0xa000000
	.quad	Ffeaturep
	.short	1                       # 0x1
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.100
	.quad	0
	.quad	0
	.size	Sfeaturep, 48

	.type	.L.str.101,@object      # @.str.101
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.101:
	.asciz	"require"
	.size	.L.str.101, 8

	.type	Srequire,@object        # @Srequire
	.data
	.align	8
Srequire:
	.quad	167772160               # 0xa000000
	.quad	Frequire
	.short	1                       # 0x1
	.short	3                       # 0x3
	.zero	4
	.quad	.L.str.101
	.quad	0
	.quad	0
	.size	Srequire, 48

	.type	.L.str.102,@object      # @.str.102
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.102:
	.asciz	"provide"
	.size	.L.str.102, 8

	.type	Sprovide,@object        # @Sprovide
	.data
	.align	8
Sprovide:
	.quad	167772160               # 0xa000000
	.quad	Fprovide
	.short	1                       # 0x1
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.102
	.quad	0
	.quad	0
	.size	Sprovide, 48

	.type	.L.str.103,@object      # @.str.103
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.103:
	.asciz	"plist-member"
	.size	.L.str.103, 13

	.type	Splist_member,@object   # @Splist_member
	.data
	.align	8
Splist_member:
	.quad	167772160               # 0xa000000
	.quad	Fplist_member
	.short	2                       # 0x2
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.103
	.quad	0
	.quad	0
	.size	Splist_member, 48

	.type	.L.str.104,@object      # @.str.104
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.104:
	.asciz	"widget-put"
	.size	.L.str.104, 11

	.type	Swidget_put,@object     # @Swidget_put
	.data
	.align	8
Swidget_put:
	.quad	167772160               # 0xa000000
	.quad	Fwidget_put
	.short	3                       # 0x3
	.short	3                       # 0x3
	.zero	4
	.quad	.L.str.104
	.quad	0
	.quad	0
	.size	Swidget_put, 48

	.type	.L.str.105,@object      # @.str.105
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.105:
	.asciz	"widget-get"
	.size	.L.str.105, 11

	.type	Swidget_get,@object     # @Swidget_get
	.data
	.align	8
Swidget_get:
	.quad	167772160               # 0xa000000
	.quad	Fwidget_get
	.short	2                       # 0x2
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.105
	.quad	0
	.quad	0
	.size	Swidget_get, 48

	.type	.L.str.106,@object      # @.str.106
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.106:
	.asciz	"widget-apply"
	.size	.L.str.106, 13

	.type	Swidget_apply,@object   # @Swidget_apply
	.data
	.align	8
Swidget_apply:
	.quad	167772160               # 0xa000000
	.quad	Fwidget_apply
	.short	2                       # 0x2
	.short	65534                   # 0xfffe
	.zero	4
	.quad	.L.str.106
	.quad	0
	.quad	0
	.size	Swidget_apply, 48

	.type	.L.str.107,@object      # @.str.107
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.107:
	.asciz	"base64-encode-region"
	.size	.L.str.107, 21

	.type	.L.str.108,@object      # @.str.108
.L.str.108:
	.asciz	"r"
	.size	.L.str.108, 2

	.type	Sbase64_encode_region,@object # @Sbase64_encode_region
	.data
	.align	8
Sbase64_encode_region:
	.quad	167772160               # 0xa000000
	.quad	Fbase64_encode_region
	.short	2                       # 0x2
	.short	3                       # 0x3
	.zero	4
	.quad	.L.str.107
	.quad	.L.str.108
	.quad	0
	.size	Sbase64_encode_region, 48

	.type	.L.str.109,@object      # @.str.109
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.109:
	.asciz	"base64-decode-region"
	.size	.L.str.109, 21

	.type	Sbase64_decode_region,@object # @Sbase64_decode_region
	.data
	.align	8
Sbase64_decode_region:
	.quad	167772160               # 0xa000000
	.quad	Fbase64_decode_region
	.short	2                       # 0x2
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.109
	.quad	.L.str.108
	.quad	0
	.size	Sbase64_decode_region, 48

	.type	.L.str.110,@object      # @.str.110
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.110:
	.asciz	"base64-encode-string"
	.size	.L.str.110, 21

	.type	Sbase64_encode_string,@object # @Sbase64_encode_string
	.data
	.align	8
Sbase64_encode_string:
	.quad	167772160               # 0xa000000
	.quad	Fbase64_encode_string
	.short	1                       # 0x1
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.110
	.quad	0
	.quad	0
	.size	Sbase64_encode_string, 48

	.type	.L.str.111,@object      # @.str.111
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.111:
	.asciz	"base64-decode-string"
	.size	.L.str.111, 21

	.type	Sbase64_decode_string,@object # @Sbase64_decode_string
	.data
	.align	8
Sbase64_decode_string:
	.quad	167772160               # 0xa000000
	.quad	Fbase64_decode_string
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.111
	.quad	0
	.quad	0
	.size	Sbase64_decode_string, 48

	.type	.L.str.112,@object      # @.str.112
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.112:
	.asciz	"md5"
	.size	.L.str.112, 4

	.type	Smd5,@object            # @Smd5
	.data
	.align	8
Smd5:
	.quad	167772160               # 0xa000000
	.quad	Fmd5
	.short	1                       # 0x1
	.short	5                       # 0x5
	.zero	4
	.quad	.L.str.112
	.quad	0
	.quad	0
	.size	Smd5, 48

	.type	.L.str.113,@object      # @.str.113
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.113:
	.asciz	"secure-hash"
	.size	.L.str.113, 12

	.type	Ssecure_hash,@object    # @Ssecure_hash
	.data
	.align	8
Ssecure_hash:
	.quad	167772160               # 0xa000000
	.quad	Fsecure_hash
	.short	2                       # 0x2
	.short	5                       # 0x5
	.zero	4
	.quad	.L.str.113
	.quad	0
	.quad	0
	.size	Ssecure_hash, 48

	.type	.L.str.114,@object      # @.str.114
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.114:
	.asciz	"locale-info"
	.size	.L.str.114, 12

	.type	Slocale_info,@object    # @Slocale_info
	.data
	.align	8
Slocale_info:
	.quad	167772160               # 0xa000000
	.quad	Flocale_info
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.114
	.quad	0
	.quad	0
	.size	Slocale_info, 48


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
