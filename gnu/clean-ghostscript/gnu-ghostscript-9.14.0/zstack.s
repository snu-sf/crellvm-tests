	.text
	.file	"zstack.bc"
	.globl	zpop
	.align	16, 0x90
	.type	zpop,@function
zpop:                                   # @zpop
	.cfi_startproc
# BB#0:                                 # %entry
	movq	624(%rdi), %rcx
	movl	$-17, %eax
	cmpq	632(%rdi), %rcx
	jb	.LBB0_2
# BB#1:                                 # %if.end
	addq	$-16, %rcx
	movq	%rcx, 624(%rdi)
	xorl	%eax, %eax
.LBB0_2:                                # %cleanup
	retq
.Lfunc_end0:
	.size	zpop, .Lfunc_end0-zpop
	.cfi_endproc

	.globl	zexch
	.align	16, 0x90
	.type	zexch,@function
zexch:                                  # @zexch
	.cfi_startproc
# BB#0:                                 # %entry
	movq	624(%rdi), %rcx
	movq	632(%rdi), %rdx
	addq	$16, %rdx
	movl	$-17, %eax
	cmpq	%rdx, %rcx
	jb	.LBB1_2
# BB#1:                                 # %if.end
	movups	-16(%rcx), %xmm0
	movaps	%xmm0, -24(%rsp)
	movups	(%rcx), %xmm0
	movups	%xmm0, -16(%rcx)
	movaps	-24(%rsp), %xmm0
	movups	%xmm0, (%rcx)
	xorl	%eax, %eax
.LBB1_2:                                # %cleanup
	retq
.Lfunc_end1:
	.size	zexch, .Lfunc_end1-zexch
	.cfi_endproc

	.globl	zdup
	.align	16, 0x90
	.type	zdup,@function
zdup:                                   # @zdup
	.cfi_startproc
# BB#0:                                 # %entry
	movq	624(%rdi), %rcx
	movl	$-17, %eax
	cmpq	632(%rdi), %rcx
	jb	.LBB2_4
# BB#1:                                 # %do.body
	leaq	16(%rcx), %rax
	cmpq	640(%rdi), %rax
	jbe	.LBB2_3
# BB#2:                                 # %if.then.7
	movl	$1, 688(%rdi)
	movl	$-16, %eax
	retq
.LBB2_3:                                # %if.else
	movq	%rax, 624(%rdi)
	movups	(%rcx), %xmm0
	movups	%xmm0, (%rax)
	xorl	%eax, %eax
.LBB2_4:                                # %cleanup
	retq
.Lfunc_end2:
	.size	zdup, .Lfunc_end2-zdup
	.cfi_endproc

	.globl	zindex
	.align	16, 0x90
	.type	zindex,@function
zindex:                                 # @zindex
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp0:
	.cfi_def_cfa_offset 16
.Ltmp1:
	.cfi_offset %rbx, -16
	movq	624(%rdi), %rbx
	movzbl	1(%rbx), %eax
	cmpl	$11, %eax
	jne	.LBB3_8
# BB#1:                                 # %if.end
	movq	8(%rbx), %rsi
	movq	%rbx, %rax
	subq	632(%rdi), %rax
	sarq	$4, %rax
	cmpq	%rax, %rsi
	jae	.LBB3_2
# BB#5:                                 # %if.end.22
	xorq	$-1, %rsi
	shlq	$32, %rsi
	sarq	$28, %rsi
	movups	(%rbx,%rsi), %xmm0
	jmp	.LBB3_6
.LBB3_8:                                # %if.then
	movq	%rbx, %rdi
	popq	%rbx
	jmp	check_type_failed       # TAILCALL
.LBB3_2:                                # %if.then.6
	movl	$-15, %eax
	testq	%rsi, %rsi
	js	.LBB3_7
# BB#3:                                 # %if.end.12
	addq	$624, %rdi              # imm = 0x270
	incq	%rsi
	callq	ref_stack_index
	movq	%rax, %rcx
	movl	$-17, %eax
	testq	%rcx, %rcx
	je	.LBB3_7
# BB#4:                                 # %if.end.21
	movups	(%rcx), %xmm0
.LBB3_6:                                # %cleanup.26
	movups	%xmm0, (%rbx)
	xorl	%eax, %eax
.LBB3_7:                                # %cleanup.26
	popq	%rbx
	retq
.Lfunc_end3:
	.size	zindex, .Lfunc_end3-zindex
	.cfi_endproc

	.globl	zroll
	.align	16, 0x90
	.type	zroll,@function
zroll:                                  # @zroll
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp2:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp3:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp4:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp5:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp6:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp7:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp8:
	.cfi_def_cfa_offset 96
.Ltmp9:
	.cfi_offset %rbx, -56
.Ltmp10:
	.cfi_offset %r12, -48
.Ltmp11:
	.cfi_offset %r13, -40
.Ltmp12:
	.cfi_offset %r14, -32
.Ltmp13:
	.cfi_offset %r15, -24
.Ltmp14:
	.cfi_offset %rbp, -16
	movq	624(%rdi), %r14
	leaq	-16(%r14), %rcx
	movzbl	-15(%r14), %eax
	cmpl	$11, %eax
	jne	.LBB4_1
# BB#3:                                 # %if.end
	movzbl	1(%r14), %eax
	cmpl	$11, %eax
	jne	.LBB4_4
# BB#5:                                 # %if.end.10
	leaq	624(%rdi), %rbp
	movq	-8(%r14), %rbx
	movq	%rcx, %rax
	subq	632(%rdi), %rax
	shrq	$4, %rax
	cmpl	%eax, %ebx
	jbe	.LBB4_19
# BB#6:                                 # %if.then.17
	movl	$-15, %eax
	testq	%rbx, %rbx
	js	.LBB4_65
# BB#7:                                 # %if.end.23
	addq	$2, %rbx
	movq	%rbp, %rdi
	callq	ref_stack_count
	movslq	%eax, %rcx
	movl	$-17, %eax
	cmpq	%rcx, %rbx
	jg	.LBB4_65
# BB#8:                                 # %if.end.33
	movl	-8(%r14), %ebx
	cmpl	$1, %ebx
	jg	.LBB4_10
# BB#9:                                 # %if.then.39
	addq	$-32, (%rbp)
	xorl	%eax, %eax
	jmp	.LBB4_65
.LBB4_1:                                # %if.then
	movq	%rcx, %rdi
	jmp	.LBB4_2
.LBB4_4:                                # %if.then.8
	movq	%r14, %rdi
.LBB4_2:                                # %if.then
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	check_type_failed       # TAILCALL
.LBB4_19:                               # %if.end.87
	cmpl	$1, %ebx
	jg	.LBB4_21
# BB#20:                                # %if.then.93
	addq	$-32, %r14
	movq	%r14, (%rbp)
	xorl	%eax, %eax
	jmp	.LBB4_65
.LBB4_21:                               # %if.end.98
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	movl	8(%r14), %r12d
	cmpl	$-1, %r12d
	jne	.LBB4_22
# BB#31:                                # %sw.bb.114
	leaq	-32(%r14), %rdi
	movq	%rdi, (%rbp)
	movq	%rbx, %rax
	shlq	$32, %rax
	sarq	$28, %rax
	subq	%rax, %rdi
	leaq	16(%rdi), %rdx
	movups	16(%rdi), %xmm0
	movaps	%xmm0, 16(%rsp)
	movl	%ebx, %eax
	decl	%eax
	je	.LBB4_30
# BB#32:                                # %for.body.126.lr.ph
	leal	-1(%rsi,%rbx), %ecx
	andq	%rsi, %rcx
	movslq	%ebx, %rsi
	leal	7(%rsi), %ebp
	leal	-2(%rsi), %r8d
	testb	$7, %bpl
	je	.LBB4_36
# BB#33:                                # %for.body.126.prol.preheader
	movslq	%ebx, %rdx
	movq	$-2, %rdi
	subq	%rdx, %rdi
	shlq	$4, %rdi
	leaq	(%rdi,%r14), %rdi
	addb	$7, %bl
	movzbl	%bl, %ebx
	andl	$7, %ebx
	negl	%ebx
	.align	16, 0x90
.LBB4_34:                               # %for.body.126.prol
                                        # =>This Inner Loop Header: Depth=1
	movq	%rdi, %rdx
	leaq	16(%rdx), %rdi
	movups	32(%rdx), %xmm0
	movups	%xmm0, 16(%rdx)
	decl	%eax
	incl	%ebx
	jne	.LBB4_34
# BB#35:
	addq	$32, %rdx
.LBB4_36:                               # %for.body.126.lr.ph.split
	subq	%rsi, %rcx
	cmpl	$7, %r8d
	jb	.LBB4_29
	.align	16, 0x90
.LBB4_37:                               # %for.body.126
                                        # =>This Inner Loop Header: Depth=1
	movups	32(%rdi), %xmm0
	movups	%xmm0, (%rdx)
	movups	32(%rdx), %xmm0
	movups	%xmm0, 16(%rdx)
	movups	48(%rdx), %xmm0
	movups	%xmm0, 32(%rdx)
	movups	64(%rdx), %xmm0
	movups	%xmm0, 48(%rdx)
	movups	80(%rdx), %xmm0
	movups	%xmm0, 64(%rdx)
	movups	96(%rdx), %xmm0
	movups	%xmm0, 80(%rdx)
	movups	112(%rdx), %xmm0
	movups	%xmm0, 96(%rdx)
	movups	128(%rdx), %xmm0
	movups	%xmm0, 112(%rdx)
	movq	%rdx, %rdi
	subq	$-128, %rdx
	addq	$112, %rdi
	addl	$-8, %eax
	jne	.LBB4_37
	jmp	.LBB4_29
.LBB4_22:                               # %if.end.98
	cmpl	$1, %r12d
	jne	.LBB4_38
# BB#23:                                # %sw.bb
	leaq	-32(%r14), %rdx
	movq	%rdx, (%rbp)
	movups	-32(%r14), %xmm0
	movaps	%xmm0, 16(%rsp)
	movl	%ebx, %eax
	decl	%eax
	je	.LBB4_30
# BB#24:                                # %for.body.110.lr.ph
	leal	-1(%rsi,%rbx), %edi
	andq	%rsi, %rdi
	movq	$-3, %rcx
	leal	7(%rbx), %ebp
	leal	-2(%rbx), %esi
	testb	$7, %bpl
	je	.LBB4_27
# BB#25:                                # %for.body.110.prol.preheader
	leaq	-48(%r14), %rbp
	addb	$7, %bl
	movzbl	%bl, %ebx
	andl	$7, %ebx
	negl	%ebx
.LBB4_26:                               # %for.body.110.prol
                                        # =>This Inner Loop Header: Depth=1
	movups	(%rbp), %xmm0
	movups	%xmm0, 16(%rbp)
	decl	%eax
	incl	%ebx
	movq	%rbp, %rdx
	leaq	-16(%rbp), %rbp
	jne	.LBB4_26
.LBB4_27:                               # %for.body.110.lr.ph.split
	subq	%rdi, %rcx
	cmpl	$7, %esi
	jb	.LBB4_29
.LBB4_28:                               # %for.body.110
                                        # =>This Inner Loop Header: Depth=1
	movups	-16(%rdx), %xmm0
	movups	%xmm0, (%rdx)
	movups	-32(%rdx), %xmm0
	movups	%xmm0, -16(%rdx)
	movups	-48(%rdx), %xmm0
	movups	%xmm0, -32(%rdx)
	movups	-64(%rdx), %xmm0
	movups	%xmm0, -48(%rdx)
	movups	-80(%rdx), %xmm0
	movups	%xmm0, -64(%rdx)
	movups	-96(%rdx), %xmm0
	movups	%xmm0, -80(%rdx)
	movups	-112(%rdx), %xmm0
	movups	%xmm0, -96(%rdx)
	movups	-128(%rdx), %xmm0
	movups	%xmm0, -112(%rdx)
	leaq	-128(%rdx), %rdx
	addl	$-8, %eax
	jne	.LBB4_28
.LBB4_29:                               # %for.cond.107.for.end.113_crit_edge
	shlq	$4, %rcx
	addq	%rcx, %r14
	movq	%r14, %rdx
.LBB4_30:                               # %for.end.113
	movaps	16(%rsp), %xmm0
	movups	%xmm0, (%rdx)
	xorl	%eax, %eax
	jmp	.LBB4_65
.LBB4_10:                               # %if.end.44
	movl	8(%r14), %eax
	movq	%rbp, %rcx
	cmpl	%ebx, %eax
	jge	.LBB4_11
# BB#12:                                # %if.else
	testl	%eax, %eax
	jns	.LBB4_14
# BB#13:                                # %if.then.53
	cltd
	idivl	%ebx
	movl	%edx, %eax
	sarl	$31, %eax
	andl	%ebx, %eax
	addl	%edx, %eax
	jmp	.LBB4_14
.LBB4_38:                               # %sw.epilog
	testl	%r12d, %r12d
	js	.LBB4_39
# BB#41:                                # %if.else.145
	cmpl	%ebx, %r12d
	jl	.LBB4_43
# BB#42:                                # %if.then.148
	movl	%r12d, %eax
	cltd
	idivl	%ebx
	movl	%edx, %r12d
	jmp	.LBB4_43
.LBB4_11:                               # %if.then.50
	cltd
	idivl	%ebx
	movl	%edx, %eax
.LBB4_14:                               # %for.body.lr.ph
	movl	%eax, %r13d
	xorl	%r12d, %r12d
	movl	%ebx, %r15d
	.align	16, 0x90
.LBB4_15:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_16 Depth 2
	movq	%rcx, 8(%rsp)           # 8-byte Spill
	leaq	2(%r12), %rsi
	movq	%rcx, %rdi
	callq	ref_stack_index
	movq	%rax, %rbp
	movups	(%rbp), %xmm0
	movaps	%xmm0, 16(%rsp)
	decl	%r15d
	leal	(%r12,%r13), %eax
	cltd
	idivl	%ebx
	movl	%ebx, %r14d
	movl	%edx, %ebx
	cmpl	%r12d, %ebx
	je	.LBB4_17
	.align	16, 0x90
.LBB4_16:                               # %if.end.73
                                        #   Parent Loop BB4_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leal	2(%rbx), %eax
	movslq	%eax, %rsi
	movq	8(%rsp), %rdi           # 8-byte Reload
	callq	ref_stack_index
	movq	%rax, %rcx
	movups	(%rcx), %xmm0
	movups	%xmm0, (%rbp)
	decl	%r15d
	movl	%r13d, %eax
	addl	%ebx, %eax
	cltd
	idivl	%r14d
	movl	%edx, %ebx
	cmpl	%r12d, %ebx
	movq	%rcx, %rbp
	jne	.LBB4_16
.LBB4_17:                               # %for.end
                                        #   in Loop: Header=BB4_15 Depth=1
	movq	8(%rsp), %rcx           # 8-byte Reload
	movaps	16(%rsp), %xmm0
	movups	%xmm0, (%rbp)
	incq	%r12
	testl	%r15d, %r15d
	movl	%r14d, %ebx
	jne	.LBB4_15
# BB#18:                                # %for.end.81
	addq	$-32, (%rcx)
	xorl	%eax, %eax
	jmp	.LBB4_65
.LBB4_39:                               # %if.then.133
	addl	%ebx, %r12d
	jns	.LBB4_43
# BB#40:                                # %if.then.137
	movl	%r12d, %eax
	cltd
	idivl	%ebx
	movl	%edx, %r12d
	sarl	$31, %r12d
	andl	%ebx, %r12d
	addl	%edx, %r12d
.LBB4_43:                               # %if.end.151
	movl	%ebx, %eax
	sarl	%eax
	cmpl	%eax, %r12d
	jle	.LBB4_44
# BB#55:                                # %if.else.188
	movl	%ebx, %eax
	subl	%r12d, %eax
	movslq	%eax, %r15
	movq	640(%rdi), %rdx
	subq	%r14, %rdx
	sarq	$4, %rdx
	cmpq	%rdx, %r15
	jge	.LBB4_56
# BB#57:                                # %if.end.203
	addq	$-32, %r14
	movq	%r14, (%rbp)
	movq	%rbx, %rax
	shlq	$32, %rax
	sarq	$28, %rax
	subq	%rax, %r14
	addq	$16, %r14
	shlq	$4, %r15
	movq	%rcx, %rdi
	movq	%r14, %rsi
	movq	%r15, %rdx
	callq	memcpy
	xorl	%eax, %eax
	testl	%ebx, %ebx
	je	.LBB4_65
# BB#58:                                # %for.body.222.lr.ph
	leal	-1(%rbx), %ecx
	testb	$7, %bl
	je	.LBB4_59
# BB#60:                                # %for.body.222.prol.preheader
	movl	%ebx, %edx
	subl	%r12d, %edx
	movslq	%edx, %rdx
	shlq	$4, %rdx
	movl	%ebx, %esi
	andl	$7, %esi
	negl	%esi
.LBB4_61:                               # %for.body.222.prol
                                        # =>This Inner Loop Header: Depth=1
	movq	%r14, %rdi
	decl	%ebx
	movups	(%rdi,%rdx), %xmm0
	movups	%xmm0, (%rdi)
	leaq	16(%rdi), %r14
	incl	%esi
	jne	.LBB4_61
# BB#62:
	leaq	16(%rdi,%rdx), %rdx
	jmp	.LBB4_63
.LBB4_44:                               # %if.then.154
	movslq	%r12d, %rdx
	movq	640(%rdi), %rax
	subq	%r14, %rax
	sarq	$4, %rax
	cmpq	%rax, %rdx
	jge	.LBB4_45
# BB#46:                                # %if.end.168
	leaq	-32(%r14), %rax
	movq	%rax, (%rbp)
	movq	$-2, %r10
	testl	%ebx, %ebx
	je	.LBB4_54
# BB#47:                                # %for.body.179.lr.ph
	movq	%rdx, %rbp
	shlq	$4, %rbp
	leal	(%rbx,%rsi), %r9d
	andq	%rsi, %r9
	movq	$-3, %r10
	leal	-1(%rbx), %r8d
	testb	$7, %bl
	je	.LBB4_48
# BB#49:                                # %for.body.179.prol.preheader
	movl	%ebx, %esi
	andl	$7, %esi
	negl	%esi
.LBB4_50:                               # %for.body.179.prol
                                        # =>This Inner Loop Header: Depth=1
	movq	%rax, %rdi
	decl	%ebx
	movups	(%rdi), %xmm0
	movups	%xmm0, (%rdi,%rbp)
	leaq	-16(%rdi), %rax
	incl	%esi
	jne	.LBB4_50
# BB#51:
	leaq	-16(%rdi,%rbp), %rsi
	jmp	.LBB4_52
.LBB4_56:                               # %if.then.199
	movl	%eax, 688(%rdi)
	movl	$-16, %eax
	jmp	.LBB4_65
.LBB4_45:                               # %if.then.165
	movl	%r12d, 688(%rdi)
	movl	$-16, %eax
	jmp	.LBB4_65
.LBB4_59:
	leaq	(%r15,%r14), %rdx
.LBB4_63:                               # %for.body.222.lr.ph.split
	cmpl	$7, %ecx
	jb	.LBB4_65
.LBB4_64:                               # %for.body.222
                                        # =>This Inner Loop Header: Depth=1
	movups	(%rdx), %xmm0
	movups	%xmm0, (%r14)
	movups	16(%rdx), %xmm0
	movups	%xmm0, 16(%r14)
	movups	32(%rdx), %xmm0
	movups	%xmm0, 32(%r14)
	movups	48(%rdx), %xmm0
	movups	%xmm0, 48(%r14)
	movups	64(%rdx), %xmm0
	movups	%xmm0, 64(%r14)
	movups	80(%rdx), %xmm0
	movups	%xmm0, 80(%r14)
	movups	96(%rdx), %xmm0
	movups	%xmm0, 96(%r14)
	movups	112(%rdx), %xmm0
	movups	%xmm0, 112(%r14)
	subq	$-128, %r14
	subq	$-128, %rdx
	addl	$-8, %ebx
	jne	.LBB4_64
	jmp	.LBB4_65
.LBB4_48:
	leaq	(%rbp,%rax), %rsi
.LBB4_52:                               # %for.body.179.lr.ph.split
	subq	%r9, %r10
	cmpl	$7, %r8d
	jb	.LBB4_54
.LBB4_53:                               # %for.body.179
                                        # =>This Inner Loop Header: Depth=1
	movups	(%rax), %xmm0
	movups	%xmm0, (%rsi)
	movups	-16(%rax), %xmm0
	movups	%xmm0, -16(%rsi)
	movups	-32(%rax), %xmm0
	movups	%xmm0, -32(%rsi)
	movups	-48(%rax), %xmm0
	movups	%xmm0, -48(%rsi)
	movups	-64(%rax), %xmm0
	movups	%xmm0, -64(%rsi)
	movups	-80(%rax), %xmm0
	movups	%xmm0, -80(%rsi)
	movups	-96(%rax), %xmm0
	movups	%xmm0, -96(%rsi)
	addl	$-8, %ebx
	movups	-112(%rax), %xmm0
	leaq	-128(%rax), %rax
	movups	%xmm0, -112(%rsi)
	leaq	-128(%rsi), %rsi
	jne	.LBB4_53
.LBB4_54:                               # %for.end.183
	shlq	$4, %r10
	leaq	16(%r14,%r10), %rdi
	shlq	$4, %rdx
	movq	%rcx, %rsi
	callq	memcpy
	xorl	%eax, %eax
.LBB4_65:                               # %cleanup.228
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	zroll, .Lfunc_end4-zroll
	.cfi_endproc

	.globl	zcleartomark
	.align	16, 0x90
	.type	zcleartomark,@function
zcleartomark:                           # @zcleartomark
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp15:
	.cfi_def_cfa_offset 16
.Ltmp16:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	addq	$624, %rbx              # imm = 0x270
	movq	%rbx, %rdi
	callq	ref_stack_counttomark
	movl	$-24, %ecx
	testl	%eax, %eax
	je	.LBB5_2
# BB#1:                                 # %if.end
	movq	%rbx, %rdi
	movl	%eax, %esi
	callq	ref_stack_pop
	xorl	%ecx, %ecx
.LBB5_2:                                # %cleanup
	movl	%ecx, %eax
	popq	%rbx
	retq
.Lfunc_end5:
	.size	zcleartomark, .Lfunc_end5-zcleartomark
	.cfi_endproc

	.align	16, 0x90
	.type	zargindex,@function
zargindex:                              # @zargindex
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp17:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp18:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp19:
	.cfi_def_cfa_offset 32
.Ltmp20:
	.cfi_offset %rbx, -24
.Ltmp21:
	.cfi_offset %r14, -16
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	movzbl	1(%rbx), %eax
	cmpl	$11, %eax
	jne	.LBB6_7
# BB#1:                                 # %if.end.i
	movq	8(%rbx), %rsi
	movq	%rbx, %rax
	subq	632(%r14), %rax
	sarq	$4, %rax
	cmpq	%rax, %rsi
	jae	.LBB6_2
# BB#6:                                 # %if.end.22.i
	xorq	$-1, %rsi
	shlq	$32, %rsi
	sarq	$28, %rsi
	movups	(%rbx,%rsi), %xmm0
	jmp	.LBB6_5
.LBB6_7:                                # %zindex.exit
	movq	%rbx, %rdi
	callq	check_type_failed
	cmpl	$-15, %eax
	jne	.LBB6_10
# BB#8:                                 # %zindex.exit.land.lhs.true_crit_edge
	movq	624(%r14), %rax
	movq	8(%rax), %rsi
	jmp	.LBB6_9
.LBB6_2:                                # %if.then.6.i
	testq	%rsi, %rsi
	js	.LBB6_9
# BB#3:                                 # %if.end.12.i
	addq	$624, %r14              # imm = 0x270
	incq	%rsi
	movq	%r14, %rdi
	callq	ref_stack_index
	movq	%rax, %rcx
	movl	$-17, %eax
	testq	%rcx, %rcx
	je	.LBB6_10
# BB#4:                                 # %if.end.21.i
	movups	(%rcx), %xmm0
.LBB6_5:                                # %if.end
	movups	%xmm0, (%rbx)
	xorl	%eax, %eax
	jmp	.LBB6_10
.LBB6_9:                                # %land.lhs.true
	shrq	$63, %rsi
	leal	-17(%rsi,%rsi), %eax
.LBB6_10:                               # %if.end
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end6:
	.size	zargindex, .Lfunc_end6-zargindex
	.cfi_endproc

	.align	16, 0x90
	.type	zclear_stack,@function
zclear_stack:                           # @zclear_stack
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp22:
	.cfi_def_cfa_offset 16
.Ltmp23:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	addq	$624, %rbx              # imm = 0x270
	movq	%rbx, %rdi
	callq	ref_stack_count
	movq	%rbx, %rdi
	movl	%eax, %esi
	callq	ref_stack_pop
	xorl	%eax, %eax
	popq	%rbx
	retq
.Lfunc_end7:
	.size	zclear_stack, .Lfunc_end7-zclear_stack
	.cfi_endproc

	.align	16, 0x90
	.type	zcount,@function
zcount:                                 # @zcount
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp24:
	.cfi_def_cfa_offset 16
.Ltmp25:
	.cfi_offset %rbx, -16
	movq	624(%rdi), %rbx
	leaq	16(%rbx), %rax
	cmpq	640(%rdi), %rax
	jbe	.LBB8_2
# BB#1:                                 # %if.then
	movl	$1, 688(%rdi)
	movl	$-16, %eax
	popq	%rbx
	retq
.LBB8_2:                                # %if.else
	addq	$624, %rdi              # imm = 0x270
	movq	%rax, (%rdi)
	callq	ref_stack_count
	decl	%eax
	movq	%rax, 24(%rbx)
	movw	$2816, 16(%rbx)         # imm = 0xB00
	xorl	%eax, %eax
	popq	%rbx
	retq
.Lfunc_end8:
	.size	zcount, .Lfunc_end8-zcount
	.cfi_endproc

	.align	16, 0x90
	.type	zcounttomark,@function
zcounttomark:                           # @zcounttomark
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp26:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp27:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp28:
	.cfi_def_cfa_offset 32
.Ltmp29:
	.cfi_offset %rbx, -32
.Ltmp30:
	.cfi_offset %r14, -24
.Ltmp31:
	.cfi_offset %r15, -16
	movq	%rdi, %rbx
	leaq	624(%rbx), %r14
	movq	624(%rbx), %r15
	movq	%r14, %rdi
	callq	ref_stack_counttomark
	movl	$-24, %ecx
	testl	%eax, %eax
	je	.LBB9_4
# BB#1:                                 # %do.body
	leaq	16(%r15), %rcx
	cmpq	640(%rbx), %rcx
	jbe	.LBB9_3
# BB#2:                                 # %if.then.6
	movl	$1, 688(%rbx)
	movl	$-16, %ecx
	jmp	.LBB9_4
.LBB9_3:                                # %if.else
	movq	%rcx, (%r14)
	decl	%eax
	movq	%rax, 24(%r15)
	movw	$2816, 16(%r15)         # imm = 0xB00
	xorl	%ecx, %ecx
.LBB9_4:                                # %cleanup
	movl	%ecx, %eax
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end9:
	.size	zcounttomark, .Lfunc_end9-zcounttomark
	.cfi_endproc

	.align	16, 0x90
	.type	zmark,@function
zmark:                                  # @zmark
	.cfi_startproc
# BB#0:                                 # %entry
	movq	624(%rdi), %rax
	addq	$16, %rax
	cmpq	640(%rdi), %rax
	jbe	.LBB10_2
# BB#1:                                 # %if.then
	movl	$1, 688(%rdi)
	movl	$-16, %eax
	retq
.LBB10_2:                               # %if.else
	movq	%rax, 624(%rdi)
	movw	$3072, (%rax)           # imm = 0xC00
	xorl	%eax, %eax
	retq
.Lfunc_end10:
	.size	zmark, .Lfunc_end10-zmark
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"2.argindex"
	.size	.L.str, 11

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"0clear"
	.size	.L.str.1, 7

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"0cleartomark"
	.size	.L.str.2, 13

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"0count"
	.size	.L.str.3, 7

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"0counttomark"
	.size	.L.str.4, 13

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"1dup"
	.size	.L.str.5, 5

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"2exch"
	.size	.L.str.6, 6

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"2index"
	.size	.L.str.7, 7

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"0mark"
	.size	.L.str.8, 6

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"1pop"
	.size	.L.str.9, 5

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"2roll"
	.size	.L.str.10, 6

	.type	zstack_op_defs,@object  # @zstack_op_defs
	.section	.rodata,"a",@progbits
	.globl	zstack_op_defs
	.align	16
zstack_op_defs:
	.quad	.L.str
	.quad	zargindex
	.quad	.L.str.1
	.quad	zclear_stack
	.quad	.L.str.2
	.quad	zcleartomark
	.quad	.L.str.3
	.quad	zcount
	.quad	.L.str.4
	.quad	zcounttomark
	.quad	.L.str.5
	.quad	zdup
	.quad	.L.str.6
	.quad	zexch
	.quad	.L.str.7
	.quad	zindex
	.quad	.L.str.8
	.quad	zmark
	.quad	.L.str.9
	.quad	zpop
	.quad	.L.str.10
	.quad	zroll
	.zero	16
	.size	zstack_op_defs, 192


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
