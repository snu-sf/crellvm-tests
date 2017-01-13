	.text
	.file	"zcid.bc"
	.globl	cid_system_info_param
	.align	16, 0x90
	.type	cid_system_info_param,@function
cid_system_info_param:                  # @cid_system_info_param
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp2:
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
.Ltmp3:
	.cfi_def_cfa_offset 48
.Ltmp4:
	.cfi_offset %rbx, -32
.Ltmp5:
	.cfi_offset %r14, -24
.Ltmp6:
	.cfi_offset %rbp, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movl	$-20, %ebp
	movzbl	1(%rbx), %eax
	cmpl	$2, %eax
	jne	.LBB0_10
# BB#1:                                 # %if.end
	leaq	8(%rsp), %rdx
	movl	$.L.str, %esi
	movq	%rbx, %rdi
	callq	dict_find_string
	movl	$-15, %ebp
	testl	%eax, %eax
	jle	.LBB0_10
# BB#2:                                 # %lor.lhs.false
	leaq	(%rsp), %rdx
	movl	$.L.str.1, %esi
	movq	%rbx, %rdi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB0_10
# BB#3:                                 # %do.body
	movq	8(%rsp), %rax
	movzwl	(%rax), %ecx
	andl	$16160, %ecx            # imm = 0x3F20
	cmpl	$4640, %ecx             # imm = 0x1220
	jne	.LBB0_4
# BB#6:                                 # %do.body.22
	movq	(%rsp), %rcx
	movzwl	(%rcx), %edx
	andl	$16160, %edx            # imm = 0x3F20
	cmpl	$4640, %edx             # imm = 0x1220
	jne	.LBB0_7
# BB#9:                                 # %do.end.40
	movq	8(%rax), %rdx
	movq	%rdx, (%r14)
	movl	4(%rax), %eax
	movl	%eax, 8(%r14)
	movq	8(%rcx), %rax
	movq	%rax, 16(%r14)
	movl	4(%rcx), %eax
	movl	%eax, 24(%r14)
	addq	$32, %r14
	movl	$.L.str.2, %esi
	xorl	%edx, %edx
	movl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	movl	$-1, %r8d
	movq	%rbx, %rdi
	movq	%r14, %r9
	callq	dict_int_param
	movl	%eax, %ebp
	sarl	$31, %ebp
	andl	%eax, %ebp
	jmp	.LBB0_10
.LBB0_4:                                # %if.then.14
	movzbl	1(%rax), %eax
	movl	$-20, %ebp
	cmpl	$18, %eax
	jne	.LBB0_10
# BB#5:                                 # %select.mid
	movl	$-7, %ebp
	jmp	.LBB0_10
.LBB0_7:                                # %if.then.29
	movzbl	1(%rcx), %eax
	movl	$-20, %ebp
	cmpl	$18, %eax
	jne	.LBB0_10
# BB#8:                                 # %select.mid13
	movl	$-7, %ebp
.LBB0_10:                               # %cleanup
	movl	%ebp, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end0:
	.size	cid_system_info_param, .Lfunc_end0-cid_system_info_param
	.cfi_endproc

	.globl	cid_to_TT_charcode
	.align	16, 0x90
	.type	cid_to_TT_charcode,@function
cid_to_TT_charcode:                     # @cid_to_TT_charcode
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp7:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp8:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp9:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp10:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp11:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp12:
	.cfi_def_cfa_offset 56
	subq	$104, %rsp
.Ltmp13:
	.cfi_def_cfa_offset 160
.Ltmp14:
	.cfi_offset %rbx, -56
.Ltmp15:
	.cfi_offset %r12, -48
.Ltmp16:
	.cfi_offset %r13, -40
.Ltmp17:
	.cfi_offset %r14, -32
.Ltmp18:
	.cfi_offset %r15, -24
.Ltmp19:
	.cfi_offset %rbp, -16
	movq	%r9, %r15
	movl	%r8d, %r12d
	movq	%rcx, %r13
	movq	%r13, 40(%rsp)          # 8-byte Spill
	movq	%rdx, %rbx
	movq	%rsi, %r14
	movq	%rdi, %rbp
	movslq	4(%r13), %rax
	movq	%rax, (%rsp)            # 8-byte Spill
	movl	%r12d, %ecx
	movq	%r15, %r8
	callq	TT_char_code_from_CID_no_subst
	testl	%eax, %eax
	je	.LBB1_1
# BB#20:                                # %if.then
	movq	160(%rsp), %rax
	movw	$3584, (%rax)           # imm = 0xE00
	movl	$1, %eax
	jmp	.LBB1_19
.LBB1_1:                                # %for.cond.preheader
	movl	%r12d, 36(%rsp)         # 4-byte Spill
	movq	%rbp, 48(%rsp)          # 8-byte Spill
	movq	%r14, 8(%rsp)           # 8-byte Spill
	movq	%rbx, 16(%rsp)          # 8-byte Spill
	movq	%r15, 24(%rsp)          # 8-byte Spill
	movq	(%rsp), %rax            # 8-byte Reload
	testl	%eax, %eax
	movq	%rax, %rbx
	jle	.LBB1_18
# BB#2:                                 # %for.body.lr.ph
	xorl	%r12d, %r12d
	.align	16, 0x90
.LBB1_3:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	leaq	1(%r12), %rdx
	movq	48(%rsp), %rbp          # 8-byte Reload
	movq	%rbp, %rdi
	movq	%r13, %rsi
	leaq	88(%rsp), %rcx
	callq	array_get
	testl	%eax, %eax
	js	.LBB1_19
# BB#4:                                 # %if.end.6
                                        #   in Loop: Header=BB1_3 Depth=1
	leaq	2(%r12), %rdx
	movq	%rbp, %rdi
	movq	%r13, %rsi
	leaq	72(%rsp), %rcx
	callq	array_get
	testl	%eax, %eax
	js	.LBB1_19
# BB#5:                                 # %if.end.13
                                        #   in Loop: Header=BB1_3 Depth=1
	leaq	3(%r12), %rdx
	movq	%rbp, %rdi
	movq	%r13, %rsi
	leaq	56(%rsp), %rcx
	callq	array_get
	testl	%eax, %eax
	js	.LBB1_19
# BB#6:                                 # %if.end.20
                                        #   in Loop: Header=BB1_3 Depth=1
	movl	96(%rsp), %r15d
	movl	80(%rsp), %r14d
	movl	64(%rsp), %r13d
	movl	36(%rsp), %ebp          # 4-byte Reload
	cmpl	%ebp, %r15d
	ja	.LBB1_11
# BB#7:                                 # %if.end.20
                                        #   in Loop: Header=BB1_3 Depth=1
	cmpl	%ebp, %r14d
	jb	.LBB1_11
# BB#8:                                 # %if.then.32
                                        #   in Loop: Header=BB1_3 Depth=1
	movl	%ebp, %ecx
	subl	%r15d, %ecx
	addl	%r13d, %ecx
	movq	48(%rsp), %rdi          # 8-byte Reload
	movq	8(%rsp), %rsi           # 8-byte Reload
	movq	16(%rsp), %rdx          # 8-byte Reload
	movq	24(%rsp), %r8           # 8-byte Reload
	callq	TT_char_code_from_CID_no_subst
	testl	%eax, %eax
	jne	.LBB1_9
.LBB1_11:                               # %if.end.52
                                        #   in Loop: Header=BB1_3 Depth=1
	cmpl	%ebp, %r13d
	ja	.LBB1_17
# BB#12:                                # %land.lhs.true.55
                                        #   in Loop: Header=BB1_3 Depth=1
	subl	%r15d, %r14d
	addl	%r13d, %r14d
	cmpl	%ebp, %r14d
	jb	.LBB1_17
# BB#13:                                # %if.then.60
                                        #   in Loop: Header=BB1_3 Depth=1
	addl	%ebp, %r15d
	subl	%r13d, %r15d
	movq	48(%rsp), %rdi          # 8-byte Reload
	movq	8(%rsp), %rsi           # 8-byte Reload
	movq	16(%rsp), %rdx          # 8-byte Reload
	movl	%r15d, %ecx
	movq	24(%rsp), %r8           # 8-byte Reload
	callq	TT_char_code_from_CID_no_subst
	testl	%eax, %eax
	jne	.LBB1_14
.LBB1_17:                               # %for.inc
                                        #   in Loop: Header=BB1_3 Depth=1
	addq	$5, %r12
	cmpq	%rbx, %r12
	movq	40(%rsp), %r13          # 8-byte Reload
	jl	.LBB1_3
.LBB1_18:                               # %for.end
	movq	24(%rsp), %rax          # 8-byte Reload
	movl	$0, (%rax)
	xorl	%eax, %eax
.LBB1_19:                               # %cleanup.88
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB1_9:                                # %if.then.36
	movslq	%r12d, %rdx
	movq	48(%rsp), %rbx          # 8-byte Reload
	movq	%rbx, %rdi
	movq	40(%rsp), %rbp          # 8-byte Reload
	movq	%rbp, %rsi
	movq	160(%rsp), %rcx
	callq	array_get
	testl	%eax, %eax
	js	.LBB1_19
# BB#10:                                # %if.end.43
	shlq	$32, %r12
	movabsq	$17179869184, %rax      # imm = 0x400000000
	addq	%rax, %r12
	sarq	$32, %r12
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movq	%r12, %rdx
	movq	168(%rsp), %rcx
	jmp	.LBB1_16
.LBB1_14:                               # %if.then.65
	movslq	%r12d, %rdx
	movq	48(%rsp), %rbx          # 8-byte Reload
	movq	%rbx, %rdi
	movq	40(%rsp), %rbp          # 8-byte Reload
	movq	%rbp, %rsi
	movq	168(%rsp), %rcx
	callq	array_get
	testl	%eax, %eax
	js	.LBB1_19
# BB#15:                                # %if.end.72
	shlq	$32, %r12
	movabsq	$17179869184, %rax      # imm = 0x400000000
	addq	%rax, %r12
	sarq	$32, %r12
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movq	%r12, %rdx
	movq	160(%rsp), %rcx
.LBB1_16:                               # %cleanup.thread
	callq	array_get
	movl	%eax, %ecx
	testl	%ecx, %ecx
	movl	$1, %eax
	cmovsl	%ecx, %eax
	jmp	.LBB1_19
.Lfunc_end1:
	.size	cid_to_TT_charcode, .Lfunc_end1-cid_to_TT_charcode
	.cfi_endproc

	.align	16, 0x90
	.type	TT_char_code_from_CID_no_subst,@function
TT_char_code_from_CID_no_subst:         # @TT_char_code_from_CID_no_subst
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp20:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp21:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp22:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp23:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp24:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp25:
	.cfi_def_cfa_offset 56
	subq	$72, %rsp
.Ltmp26:
	.cfi_def_cfa_offset 128
.Ltmp27:
	.cfi_offset %rbx, -56
.Ltmp28:
	.cfi_offset %r12, -48
.Ltmp29:
	.cfi_offset %r13, -40
.Ltmp30:
	.cfi_offset %r14, -32
.Ltmp31:
	.cfi_offset %r15, -24
.Ltmp32:
	.cfi_offset %rbp, -16
	movq	%r8, %r14
	movl	%ecx, %ebp
	movq	%rdx, %r15
	movq	%rdi, %r12
	movl	%ebp, %eax
	shrl	$8, %eax
	movq	%rax, 24(%rsp)
	movw	$2816, 16(%rsp)         # imm = 0xB00
	leaq	16(%rsp), %rax
	leaq	64(%rsp), %rdx
	movq	%rsi, %rdi
	movq	%rax, %rsi
	callq	dict_find
	xorl	%ebx, %ebx
	testl	%eax, %eax
	jle	.LBB2_16
# BB#1:                                 # %lor.lhs.false
	movq	64(%rsp), %rsi
	movzbl	1(%rsi), %eax
	cmpl	$4, %eax
	jne	.LBB2_16
# BB#2:                                 # %lor.lhs.false.7
	movzbl	%bpl, %ebp
	leaq	48(%rsp), %r13
	movq	%r12, %rdi
	movq	%rbp, %rdx
	movq	%r13, %rcx
	callq	array_get
	testl	%eax, %eax
	js	.LBB2_16
# BB#3:                                 # %if.end
	movq	%r14, (%rsp)            # 8-byte Spill
	movzbl	49(%rsp), %eax
	cmpl	$4, %eax
	jne	.LBB2_4
# BB#6:                                 # %for.cond.preheader
	movq	%r13, 64(%rsp)
	movl	52(%rsp), %r14d
	xorl	%ebx, %ebx
	testl	%r14d, %r14d
	jne	.LBB2_7
	jmp	.LBB2_16
.LBB2_4:                                # %if.end
	movzbl	%al, %eax
	cmpl	$11, %eax
	jne	.LBB2_16
# BB#5:                                 # %for.cond.preheader.thread
	movl	$1, %r14d
	movq	%rbp, %rbx
.LBB2_7:                                # %for.body.lr.ph
	leaq	32(%rsp), %r13
	movq	%rbx, %rbp
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB2_8:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	64(%rsp), %rsi
	movq	%r12, %rdi
	movq	%rbp, %rdx
	movq	%r13, %rcx
	callq	array_get
	testl	%eax, %eax
	js	.LBB2_9
# BB#10:                                # %lor.lhs.false.34
                                        #   in Loop: Header=BB2_8 Depth=1
	movzbl	33(%rsp), %eax
	cmpl	$11, %eax
	jne	.LBB2_11
# BB#12:                                # %if.end.42
                                        #   in Loop: Header=BB2_8 Depth=1
	movq	%r15, %rdi
	movq	%r13, %rsi
	leaq	8(%rsp), %rdx
	callq	dict_find
	testl	%eax, %eax
	js	.LBB2_15
# BB#13:                                # %land.lhs.true
                                        #   in Loop: Header=BB2_8 Depth=1
	movq	8(%rsp), %rax
	movzbl	1(%rax), %ecx
	cmpl	$11, %ecx
	jne	.LBB2_15
# BB#14:                                # %if.then.52
                                        #   in Loop: Header=BB2_8 Depth=1
	movl	8(%rax), %eax
	movq	(%rsp), %rcx            # 8-byte Reload
	movl	%eax, (%rcx)
	movl	$1, %ebx
	testl	%eax, %eax
	jne	.LBB2_16
.LBB2_15:                               # %for.inc
                                        #   in Loop: Header=BB2_8 Depth=1
	decl	%r14d
	incq	%rbp
	testl	%r14d, %r14d
	jne	.LBB2_8
	jmp	.LBB2_16
.LBB2_9:
	xorl	%ebx, %ebx
	jmp	.LBB2_16
.LBB2_11:
	xorl	%ebx, %ebx
.LBB2_16:                               # %cleanup
	movl	%ebx, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	TT_char_code_from_CID_no_subst, .Lfunc_end2-TT_char_code_from_CID_no_subst
	.cfi_endproc

	.globl	cid_fill_CIDMap
	.align	16, 0x90
	.type	cid_fill_CIDMap,@function
cid_fill_CIDMap:                        # @cid_fill_CIDMap
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp33:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp34:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp35:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp36:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp37:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp38:
	.cfi_def_cfa_offset 56
	subq	$168, %rsp
.Ltmp39:
	.cfi_def_cfa_offset 224
.Ltmp40:
	.cfi_offset %rbx, -56
.Ltmp41:
	.cfi_offset %r12, -48
.Ltmp42:
	.cfi_offset %r13, -40
.Ltmp43:
	.cfi_offset %r14, -32
.Ltmp44:
	.cfi_offset %r15, -24
.Ltmp45:
	.cfi_offset %rbp, -16
	movq	%r9, %r15
	movq	%rdx, %r13
	movl	$-28, %eax
	cmpl	$2, %r8d
	jne	.LBB3_30
# BB#1:                                 # %if.end
	movq	%rdi, 64(%rsp)          # 8-byte Spill
	movzbl	1(%r15), %edx
	cmpl	$4, %edx
	jne	.LBB3_30
# BB#2:                                 # %if.end.4
	movq	%rsi, %r12
	movq	%rcx, 48(%rsp)          # 8-byte Spill
	movslq	4(%r15), %rbx
	testq	%rbx, %rbx
	jle	.LBB3_8
# BB#3:                                 # %for.body.lr.ph
	xorl	%ebp, %ebp
	leaq	152(%rsp), %r14
	.align	16, 0x90
.LBB3_4:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	64(%rsp), %rdi          # 8-byte Reload
	movq	%r15, %rsi
	movq	%rbp, %rdx
	movq	%r14, %rcx
	callq	array_get
	testl	%eax, %eax
	js	.LBB3_30
# BB#5:                                 # %if.end.12
                                        #   in Loop: Header=BB3_4 Depth=1
	movzbl	153(%rsp), %eax
	cmpl	$18, %eax
	jne	.LBB3_6
# BB#7:                                 # %for.inc
                                        #   in Loop: Header=BB3_4 Depth=1
	incq	%rbp
	cmpq	%rbx, %rbp
	jl	.LBB3_4
.LBB3_8:                                # %for.end
	movq	%r12, %r14
	movq	%r14, %rdi
	callq	dict_first
	leaq	112(%rsp), %rdx
	movq	%r14, %rdi
	movl	%eax, %esi
	callq	dict_next
	movl	%eax, %ebp
	xorl	%eax, %eax
	cmpl	$-1, %ebp
	je	.LBB3_30
# BB#9:
	leaq	112(%rsp), %rbx
                                        # implicit-def: EAX
	movl	%eax, 20(%rsp)          # 4-byte Spill
	.align	16, 0x90
.LBB3_11:                               # %if.end.31
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_17 Depth 2
                                        #       Child Loop BB3_24 Depth 3
	movzbl	113(%rsp), %eax
	cmpl	$11, %eax
	jne	.LBB3_12
# BB#13:                                # %if.end.40
                                        #   in Loop: Header=BB3_11 Depth=1
	movl	$-20, %eax
	movzbl	129(%rsp), %ecx
	cmpl	$4, %ecx
	jne	.LBB3_30
# BB#14:                                # %if.end.49
                                        #   in Loop: Header=BB3_11 Depth=1
	movl	132(%rsp), %r12d
	testl	%r12d, %r12d
	jg	.LBB3_15
.LBB3_12:                               # %for.cond.24.backedge
                                        #   in Loop: Header=BB3_11 Depth=1
	movq	%r14, %rdi
	movl	%ebp, %esi
	movq	%rbx, %rdx
	callq	dict_next
	movl	%eax, %ebp
	xorl	%eax, %eax
	cmpl	$-1, %ebp
	jne	.LBB3_11
	jmp	.LBB3_30
.LBB3_15:                               # %for.body.58.lr.ph
                                        #   in Loop: Header=BB3_11 Depth=1
	movq	%r14, 32(%rsp)          # 8-byte Spill
	movq	%r13, 40(%rsp)          # 8-byte Spill
	movl	120(%rsp), %eax
	shll	$8, %eax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	xorl	%r13d, %r13d
	movq	64(%rsp), %rbx          # 8-byte Reload
	.align	16, 0x90
.LBB3_17:                               # %for.body.58
                                        #   Parent Loop BB3_11 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_24 Depth 3
	movq	24(%rsp), %rax          # 8-byte Reload
	leal	(%r13,%rax), %r14d
	leaq	72(%rsp), %rax
	movq	%rax, 8(%rsp)
	leaq	88(%rsp), %rax
	movq	%rax, (%rsp)
	movq	%rbx, %rdi
	movq	32(%rsp), %rsi          # 8-byte Reload
	movq	40(%rsp), %rdx          # 8-byte Reload
	movq	48(%rsp), %rcx          # 8-byte Reload
	movl	%r14d, %r8d
	leaq	108(%rsp), %r9
	callq	cid_to_TT_charcode
	testl	%eax, %eax
	js	.LBB3_18
# BB#19:                                # %if.end.64
                                        #   in Loop: Header=BB3_17 Depth=2
	movb	$1, %cl
	jle	.LBB3_28
# BB#20:                                # %if.then.67
                                        #   in Loop: Header=BB3_17 Depth=2
	movl	108(%rsp), %eax
	cmpl	$65536, %eax            # imm = 0x10000
	jb	.LBB3_22
# BB#21:                                # %set_CIDMap_element.exit.thread30
                                        #   in Loop: Header=BB3_17 Depth=2
	movl	$-15, 20(%rsp)          # 4-byte Folded Spill
	xorl	%ecx, %ecx
	jmp	.LBB3_28
.LBB3_18:                               #   in Loop: Header=BB3_17 Depth=2
	xorl	%ecx, %ecx
	movl	%eax, 20(%rsp)          # 4-byte Spill
	jmp	.LBB3_28
.LBB3_22:                               # %if.end.i
                                        #   in Loop: Header=BB3_17 Depth=2
	movl	%eax, 16(%rsp)          # 4-byte Spill
	movslq	4(%r15), %rax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	testl	%eax, %eax
	jle	.LBB3_27
# BB#23:                                # %for.body.lr.ph.i
                                        #   in Loop: Header=BB3_17 Depth=2
	addl	%r14d, %r14d
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB3_24:                               # %for.body.i
                                        #   Parent Loop BB3_11 Depth=1
                                        #     Parent Loop BB3_17 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	64(%rsp), %rdi          # 8-byte Reload
	movq	%r15, %rsi
	movq	%rbx, %rdx
	leaq	152(%rsp), %rcx
	callq	array_get
	movl	156(%rsp), %ecx
	andl	$-2, %ecx
	movl	%r14d, %eax
	subl	%ecx, %eax
	jl	.LBB3_25
# BB#26:                                # %if.end.11.i
                                        #   in Loop: Header=BB3_24 Depth=3
	incq	%rbx
	cmpq	56(%rsp), %rbx          # 8-byte Folded Reload
	movl	%eax, %r14d
	jl	.LBB3_24
	jmp	.LBB3_27
.LBB3_25:                               # %if.then.6.i
                                        #   in Loop: Header=BB3_17 Depth=2
	movq	160(%rsp), %rax
	movslq	%r14d, %rcx
	movl	16(%rsp), %edx          # 4-byte Reload
	movb	%dh, (%rax,%rcx)  # NOREX
	movb	%dl, 1(%rax,%rcx)
.LBB3_27:                               # %set_CIDMap_element.exit.thread
                                        #   in Loop: Header=BB3_17 Depth=2
	movq	64(%rsp), %rbx          # 8-byte Reload
	movb	$1, %cl
	.align	16, 0x90
.LBB3_28:                               # %cleanup.74
                                        #   in Loop: Header=BB3_17 Depth=2
	testb	%cl, %cl
	je	.LBB3_29
# BB#16:                                # %for.cond.55
                                        #   in Loop: Header=BB3_17 Depth=2
	incl	%r13d
	cmpl	%r12d, %r13d
	jl	.LBB3_17
# BB#10:                                # %for.cond.24.outer.outer.loopexit
                                        #   in Loop: Header=BB3_11 Depth=1
	movq	%rbx, 64(%rsp)          # 8-byte Spill
	movq	32(%rsp), %r14          # 8-byte Reload
	movq	%r14, %rdi
	movl	%ebp, %esi
	leaq	112(%rsp), %rbx
	movq	%rbx, %rdx
	callq	dict_next
	movl	%eax, %ebp
	xorl	%eax, %eax
	cmpl	$-1, %ebp
	movq	40(%rsp), %r13          # 8-byte Reload
	jne	.LBB3_11
	jmp	.LBB3_30
.LBB3_6:                                # %if.then.19
	leaq	152(%rsp), %rdi
	callq	check_type_failed
	jmp	.LBB3_30
.LBB3_29:
	movl	20(%rsp), %eax          # 4-byte Reload
.LBB3_30:                               # %cleanup.90
	addq	$168, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	cid_fill_CIDMap, .Lfunc_end3-cid_fill_CIDMap
	.cfi_endproc

	.globl	cid_fill_Identity_CIDMap
	.align	16, 0x90
	.type	cid_fill_Identity_CIDMap,@function
cid_fill_Identity_CIDMap:               # @cid_fill_Identity_CIDMap
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp46:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp47:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp48:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp49:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp50:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp51:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp52:
	.cfi_def_cfa_offset 80
.Ltmp53:
	.cfi_offset %rbx, -56
.Ltmp54:
	.cfi_offset %r12, -48
.Ltmp55:
	.cfi_offset %r13, -40
.Ltmp56:
	.cfi_offset %r14, -32
.Ltmp57:
	.cfi_offset %r15, -24
.Ltmp58:
	.cfi_offset %rbp, -16
	movq	%rsi, %r12
	movq	%rdi, %r14
	movl	$-15, %eax
	cmpl	$3, 4(%r12)
	jne	.LBB4_10
# BB#1:                                 # %for.body
	leaq	8(%rsp), %rcx
	xorl	%edx, %edx
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	array_get
	testl	%eax, %eax
	js	.LBB4_10
# BB#2:                                 # %if.end.5
	movzbl	9(%rsp), %eax
	cmpl	$18, %eax
	jne	.LBB4_3
# BB#11:                                # %for.inc
	leaq	8(%rsp), %rcx
	movl	$1, %edx
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	array_get
	testl	%eax, %eax
	js	.LBB4_10
# BB#12:                                # %if.end.5.1
	movzbl	9(%rsp), %eax
	cmpl	$18, %eax
	jne	.LBB4_3
# BB#13:                                # %for.inc.1
	leaq	8(%rsp), %rcx
	movl	$2, %edx
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	array_get
	testl	%eax, %eax
	js	.LBB4_10
# BB#14:                                # %if.end.5.2
	movzbl	9(%rsp), %eax
	cmpl	$18, %eax
	jne	.LBB4_3
# BB#15:                                # %for.inc.2
	xorl	%r15d, %r15d
	.align	16, 0x90
.LBB4_4:                                # %if.end.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_6 Depth 2
	movslq	4(%r12), %r13
	testq	%r13, %r13
	jle	.LBB4_9
# BB#5:                                 # %for.body.lr.ph.i
                                        #   in Loop: Header=BB4_4 Depth=1
	leal	(%r15,%r15), %ebp
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB4_6:                                # %for.body.i
                                        #   Parent Loop BB4_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r14, %rdi
	movq	%r12, %rsi
	movq	%rbx, %rdx
	leaq	8(%rsp), %rcx
	callq	array_get
	movl	12(%rsp), %ecx
	andl	$-2, %ecx
	movl	%ebp, %eax
	subl	%ecx, %eax
	jl	.LBB4_7
# BB#8:                                 # %if.end.11.i
                                        #   in Loop: Header=BB4_6 Depth=2
	incq	%rbx
	cmpq	%r13, %rbx
	movl	%eax, %ebp
	jl	.LBB4_6
	jmp	.LBB4_9
.LBB4_7:                                # %if.then.6.i
                                        #   in Loop: Header=BB4_4 Depth=1
	movq	16(%rsp), %rax
	movslq	%ebp, %rcx
	movq	%r15, %rdx
	movb	%dh, (%rax,%rcx)  # NOREX
	movb	%dl, 1(%rax,%rcx)
.LBB4_9:                                # %for.inc.27
                                        #   in Loop: Header=BB4_4 Depth=1
	incl	%r15d
	xorl	%eax, %eax
	cmpl	$65025, %r15d           # imm = 0xFE01
	jl	.LBB4_4
	jmp	.LBB4_10
.LBB4_3:                                # %if.then.10
	leaq	8(%rsp), %rdi
	callq	check_type_failed
.LBB4_10:                               # %cleanup.30
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	cid_fill_Identity_CIDMap, .Lfunc_end4-cid_fill_Identity_CIDMap
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Registry"
	.size	.L.str, 9

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Ordering"
	.size	.L.str.1, 9

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Supplement"
	.size	.L.str.2, 11


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
