	.text
	.file	"zfunc4.bc"
	.globl	gs_build_function_4
	.align	16, 0x90
	.type	gs_build_function_4,@function
gs_build_function_4:                    # @gs_build_function_4
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
	pushq	%r13
.Ltmp3:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp4:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp5:
	.cfi_def_cfa_offset 56
	subq	$72, %rsp
.Ltmp6:
	.cfi_def_cfa_offset 128
.Ltmp7:
	.cfi_offset %rbx, -56
.Ltmp8:
	.cfi_offset %r12, -48
.Ltmp9:
	.cfi_offset %r13, -40
.Ltmp10:
	.cfi_offset %r14, -32
.Ltmp11:
	.cfi_offset %r15, -24
.Ltmp12:
	.cfi_offset %rbp, -16
	movq	%r9, %r12
	movq	%r8, %rbx
	movq	%rsi, %rax
	movq	%rdi, %r15
	movups	(%rdx), %xmm0
	movups	16(%rdx), %xmm1
	movaps	%xmm1, 32(%rsp)
	movaps	%xmm0, 16(%rsp)
	movq	$0, 48(%rsp)
	movl	$0, 56(%rsp)
	leaq	8(%rsp), %rdx
	movl	$.L.str, %esi
	movq	%rax, %rdi
	callq	dict_find_string
	movl	$-15, %r14d
	testl	%eax, %eax
	movl	$-15, %ebp
	jle	.LBB0_5
# BB#1:                                 # %if.end
	movq	8(%rsp), %rsi
	movzwl	(%rsi), %eax
	andl	$15552, %eax            # imm = 0x3CC0
	movl	$-20, %ebp
	cmpl	$1216, %eax             # imm = 0x4C0
	jne	.LBB0_5
# BB#2:                                 # %if.end.7
	movl	$0, 4(%rsp)
	leaq	4(%rsp), %r8
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movq	%r15, %rdi
	callq	check_psc_function
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB0_5
# BB#3:                                 # %if.end.12
	movl	4(%rsp), %esi
	incl	%esi
	movl	$.L.str.1, %edx
	movq	%r12, %rdi
	callq	*136(%r12)
	movq	%rax, %r13
	movl	$-25, %ebp
	testq	%r13, %r13
	je	.LBB0_5
# BB#4:                                 # %if.end.17
	movl	$0, 4(%rsp)
	movq	8(%rsp), %rsi
	movq	%rbx, %rbp
	xorl	%ebx, %ebx
	leaq	4(%rsp), %r8
	xorl	%edx, %edx
	movq	%r15, %rdi
	movq	%r13, %rcx
	callq	check_psc_function
	movslq	4(%rsp), %rax
	movb	$45, (%r13,%rax)
	movq	%r13, 48(%rsp)
	movl	4(%rsp), %eax
	incl	%eax
	movl	%eax, 56(%rsp)
	leaq	16(%rsp), %rsi
	movq	%rbp, %rdi
	movq	%r12, %rdx
	callq	gs_function_PtCr_init
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jns	.LBB0_6
.LBB0_5:                                # %fail
	leaq	16(%rsp), %rdi
	movq	%r12, %rsi
	callq	gs_function_PtCr_free_params
	testl	%ebp, %ebp
	cmovsl	%ebp, %r14d
	movl	%r14d, %ebx
.LBB0_6:                                # %cleanup
	movl	%ebx, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gs_build_function_4, .Lfunc_end0-gs_build_function_4
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI1_0:
	.long	1065353216              # float 1
.LCPI1_1:
	.long	0                       # float 0
	.text
	.align	16, 0x90
	.type	check_psc_function,@function
check_psc_function:                     # @check_psc_function
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp13:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp14:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp15:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp16:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp17:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp18:
	.cfi_def_cfa_offset 56
	subq	$248, %rsp
.Ltmp19:
	.cfi_def_cfa_offset 304
.Ltmp20:
	.cfi_offset %rbx, -56
.Ltmp21:
	.cfi_offset %r12, -48
.Ltmp22:
	.cfi_offset %r13, -40
.Ltmp23:
	.cfi_offset %r14, -32
.Ltmp24:
	.cfi_offset %r15, -24
.Ltmp25:
	.cfi_offset %rbp, -16
	movq	%r8, %r14
	movq	%rcx, %rbx
	movq	%rbx, 88(%rsp)          # 8-byte Spill
	movl	%edx, %r12d
	movq	%r12, 64(%rsp)          # 8-byte Spill
	movq	%rsi, 80(%rsp)          # 8-byte Spill
	movq	%rdi, %rbp
	movl	4(%rsi), %r13d
	testl	%r12d, %r12d
	jne	.LBB1_87
# BB#1:                                 # %entry
	cmpl	$2, %r13d
	jne	.LBB1_87
# BB#2:                                 # %if.then
	movl	(%r14), %r15d
	movq	8(%rbp), %rdi
	leaq	112(%rsp), %rcx
	xorl	%edx, %edx
	movq	80(%rsp), %rsi          # 8-byte Reload
	callq	array_get
	testl	%eax, %eax
	js	.LBB1_87
# BB#3:                                 # %if.end
	movq	8(%rbp), %rdi
	leaq	224(%rsp), %rcx
	movl	$1, %edx
	movq	80(%rsp), %rsi          # 8-byte Reload
	callq	array_get
	testl	%eax, %eax
	js	.LBB1_87
# BB#4:                                 # %if.end.9
	movzbl	113(%rsp), %eax
	cmpl	$13, %eax
	jne	.LBB1_87
# BB#5:                                 # %land.lhs.true.13
	movzbl	225(%rsp), %eax
	cmpl	$13, %eax
	jne	.LBB1_87
# BB#6:                                 # %if.then.20
	movq	8(%rbp), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	leaq	208(%rsp), %rdx
	movl	$.L.str.5, %esi
	callq	names_enter_string
	testl	%eax, %eax
	js	.LBB1_197
# BB#7:                                 # %if.end.27
	movq	120(%rsp), %rax
	cmpq	216(%rsp), %rax
	jne	.LBB1_87
# BB#8:                                 # %if.then.32
	movq	8(%rbp), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	leaq	192(%rsp), %rdx
	movl	$.L.str.6, %esi
	callq	names_enter_string
	testl	%eax, %eax
	js	.LBB1_197
# BB#9:                                 # %if.end.41
	movq	232(%rsp), %rax
	cmpq	200(%rsp), %rax
	jne	.LBB1_87
# BB#10:                                # %if.then.48
	movq	%r12, 64(%rsp)          # 8-byte Spill
	movq	%r14, %r12
	leaq	368(%rbp), %r14
	movq	8(%rbp), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	leaq	208(%rsp), %rsi
	callq	names_index
	movq	%r14, %rdi
	movl	%eax, %esi
	callq	dstack_find_name_by_index
	movq	%rax, 96(%rsp)          # 8-byte Spill
	movq	8(%rbp), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	leaq	192(%rsp), %rsi
	callq	names_index
	movq	%r14, %rdi
	movq	%r12, %r14
	movq	64(%rsp), %r12          # 8-byte Reload
	movl	%eax, %esi
	callq	dstack_find_name_by_index
	movq	96(%rsp), %rdx          # 8-byte Reload
	testq	%rdx, %rdx
	je	.LBB1_87
# BB#11:                                # %if.then.48
	testq	%rax, %rax
	je	.LBB1_87
# BB#12:                                # %land.lhs.true.64
	movzwl	(%rdx), %ecx
	andl	$15360, %ecx            # imm = 0x3C00
	cmpl	$1024, %ecx             # imm = 0x400
	jne	.LBB1_87
# BB#13:                                # %land.lhs.true.70
	movzwl	(%rax), %ecx
	andl	$15360, %ecx            # imm = 0x3C00
	cmpl	$1024, %ecx             # imm = 0x400
	jne	.LBB1_87
# BB#14:                                # %if.then.77
	movl	4(%rdx), %ecx
	testb	$3, %cl
	jne	.LBB1_87
# BB#15:                                # %land.lhs.true.83
	cmpl	$31, 4(%rax)
	jne	.LBB1_87
# BB#16:                                # %if.then.88
	movl	%r13d, 20(%rsp)         # 4-byte Spill
	movq	%r14, 24(%rsp)          # 8-byte Spill
	shrl	$2, %ecx
	movq	%rcx, 40(%rsp)          # 8-byte Spill
	leal	1(%rcx), %edx
	xorl	%ecx, %ecx
	movq	%rbx, %rsi
.LBB1_17:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_19 Depth 2
	movl	$1, 72(%rsp)            # 4-byte Folded Spill
	movq	40(%rsp), %rax          # 8-byte Reload
	testl	%eax, %eax
	je	.LBB1_201
# BB#18:                                #   in Loop: Header=BB1_17 Depth=1
	movq	%rcx, %r13
	movq	%rcx, 8(%rsp)           # 8-byte Spill
	movl	%edx, %ebx
	movl	%edx, 16(%rsp)          # 4-byte Spill
	xorl	%r14d, %r14d
	movq	%rsi, %r12
.LBB1_19:                               # %for.body.94
                                        #   Parent Loop BB1_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	8(%rbp), %rdi
	movq	96(%rsp), %rsi          # 8-byte Reload
	movq	%r13, %rdx
	leaq	176(%rsp), %rcx
	callq	array_get
	testl	%eax, %eax
	js	.LBB1_86
# BB#20:                                # %if.end.102
                                        #   in Loop: Header=BB1_19 Depth=2
	movzbl	177(%rsp), %eax
	cmpl	$16, %eax
	jne	.LBB1_21
# BB#23:                                # %if.then.118
                                        #   in Loop: Header=BB1_19 Depth=2
	movss	184(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	jmp	.LBB1_24
.LBB1_21:                               # %if.end.102
                                        #   in Loop: Header=BB1_19 Depth=2
	movzbl	%al, %eax
	cmpl	$11, %eax
	jne	.LBB1_86
# BB#22:                                # %if.then.109
                                        #   in Loop: Header=BB1_19 Depth=2
	cvtsi2ssq	184(%rsp), %xmm0
.LBB1_24:                               # %if.end.122
                                        #   in Loop: Header=BB1_19 Depth=2
	ucomiss	.LCPI1_1, %xmm0
	jne	.LBB1_25
	jnp	.LBB1_52
.LBB1_25:                               # %if.then.126
                                        #   in Loop: Header=BB1_19 Depth=2
	cmpl	$0, 72(%rsp)            # 4-byte Folded Reload
	je	.LBB1_26
# BB#27:                                # %if.then.128
                                        #   in Loop: Header=BB1_19 Depth=2
	testq	%r12, %r12
	movl	$0, %eax
	je	.LBB1_29
# BB#28:                                # %if.then.3.i
                                        #   in Loop: Header=BB1_19 Depth=2
	movw	$294, (%r12)            # imm = 0x126
	addq	$2, %r12
	movq	%r12, %rax
.LBB1_29:                               # %put_int.exit
                                        #   in Loop: Header=BB1_19 Depth=2
	movq	%r14, 56(%rsp)          # 8-byte Spill
	addl	$2, %r15d
	movq	%rax, %r12
	jmp	.LBB1_30
.LBB1_26:                               #   in Loop: Header=BB1_19 Depth=2
	movq	%r14, 56(%rsp)          # 8-byte Spill
.LBB1_30:                               # %if.end.131
                                        #   in Loop: Header=BB1_19 Depth=2
	testq	%r12, %r12
	movl	$0, %r14d
	je	.LBB1_32
# BB#31:                                # %if.then.3.i.145
                                        #   in Loop: Header=BB1_19 Depth=2
	movw	$294, (%r12)            # imm = 0x126
	addq	$2, %r12
	movq	%r12, %r14
.LBB1_32:                               # %put_int.exit146
                                        #   in Loop: Header=BB1_19 Depth=2
	addl	$2, %r15d
	cmpl	$0, 72(%rsp)            # 4-byte Folded Reload
	sete	%al
	movzbl	%al, %eax
	leal	(%rax,%rbx), %eax
	movl	%eax, 168(%rsp)
	movzbl	%al, %ecx
	cmpl	%ecx, %eax
	jne	.LBB1_35
# BB#33:                                # %if.then.i
                                        #   in Loop: Header=BB1_19 Depth=2
	movq	%rbx, 48(%rsp)          # 8-byte Spill
	movl	$2, %eax
	testq	%r14, %r14
	je	.LBB1_202
# BB#34:                                # %if.then.3.i.152
                                        #   in Loop: Header=BB1_19 Depth=2
	movb	$38, (%r14)
	movb	168(%rsp), %al
	movb	%al, 1(%r14)
	leaq	2(%r14), %rcx
	movl	$2, %eax
	movl	$2, %edx
	jmp	.LBB1_37
.LBB1_35:                               # %if.else.i
                                        #   in Loop: Header=BB1_19 Depth=2
	movq	%rbx, 48(%rsp)          # 8-byte Spill
	movl	$5, %eax
	testq	%r14, %r14
	je	.LBB1_202
# BB#36:                                # %if.then.7.i
                                        #   in Loop: Header=BB1_19 Depth=2
	movb	$39, (%r14)
	leaq	1(%r14), %rdi
	movl	$4, %edx
	leaq	168(%rsp), %rsi
	movss	%xmm0, 32(%rsp)         # 4-byte Spill
	callq	memcpy
	movss	32(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	leaq	5(%r14), %rcx
	movl	$5, %eax
	movl	$5, %edx
.LBB1_37:                               # %if.then.i.155
                                        #   in Loop: Header=BB1_19 Depth=2
	leaq	1(%r14,%rdx), %rbx
	movb	$35, (%rcx)
	jmp	.LBB1_38
.LBB1_202:                              # %put_int.exit153.thread
                                        #   in Loop: Header=BB1_19 Depth=2
	xorl	%ebx, %ebx
.LBB1_38:                               # %put_op.exit
                                        #   in Loop: Header=BB1_19 Depth=2
	ucomiss	.LCPI1_0(%rip), %xmm0
	movq	56(%rsp), %r14          # 8-byte Reload
	jne	.LBB1_40
	jp	.LBB1_40
	jmp	.LBB1_39
.LBB1_40:                               # %if.then.145
                                        #   in Loop: Header=BB1_19 Depth=2
	addl	%eax, %r15d
	movss	%xmm0, 168(%rsp)
	testq	%rbx, %rbx
	je	.LBB1_41
# BB#42:                                # %put_float.exit
                                        #   in Loop: Header=BB1_19 Depth=2
	movb	$40, (%rbx)
	leaq	1(%rbx), %rdi
	movl	$4, %edx
	leaq	168(%rsp), %rsi
	callq	memcpy
	movb	$16, 5(%rbx)
	addq	$6, %rbx
	jmp	.LBB1_43
.LBB1_39:                               #   in Loop: Header=BB1_19 Depth=2
	leal	1(%r15,%rax), %r15d
	jmp	.LBB1_44
.LBB1_41:                               # %put_float.exit.thread
                                        #   in Loop: Header=BB1_19 Depth=2
	xorl	%ebx, %ebx
.LBB1_43:                               # %put_op.exit173
                                        #   in Loop: Header=BB1_19 Depth=2
	addl	$7, %r15d
.LBB1_44:                               # %if.end.150
                                        #   in Loop: Header=BB1_19 Depth=2
	testq	%rbx, %rbx
	movl	$0, %r12d
	je	.LBB1_46
# BB#45:                                # %if.then.i.224
                                        #   in Loop: Header=BB1_19 Depth=2
	movb	$23, (%rbx)
	incq	%rbx
	movq	%rbx, %r12
.LBB1_46:                               # %put_op.exit226
                                        #   in Loop: Header=BB1_19 Depth=2
	cmpl	$0, 72(%rsp)            # 4-byte Folded Reload
	je	.LBB1_48
# BB#47:                                # %if.then.154
                                        #   in Loop: Header=BB1_19 Depth=2
	incl	%r15d
	movl	$0, 72(%rsp)            # 4-byte Folded Spill
	jmp	.LBB1_51
.LBB1_48:                               # %if.else.155
                                        #   in Loop: Header=BB1_19 Depth=2
	testq	%r12, %r12
	movl	$0, %eax
	je	.LBB1_50
# BB#49:                                # %if.then.i.277
                                        #   in Loop: Header=BB1_19 Depth=2
	movb	$16, (%r12)
	incq	%r12
	movq	%r12, %rax
.LBB1_50:                               # %put_op.exit279
                                        #   in Loop: Header=BB1_19 Depth=2
	addl	$2, %r15d
	movl	$0, 72(%rsp)            # 4-byte Folded Spill
	movq	%rax, %r12
.LBB1_51:                               # %for.inc
                                        #   in Loop: Header=BB1_19 Depth=2
	movq	48(%rsp), %rbx          # 8-byte Reload
.LBB1_52:                               # %for.inc
                                        #   in Loop: Header=BB1_19 Depth=2
	incq	%r14
	decl	%ebx
	addq	$4, %r13
	cmpq	40(%rsp), %r14          # 8-byte Folded Reload
	jb	.LBB1_19
# BB#53:                                # %for.end
                                        #   in Loop: Header=BB1_17 Depth=1
	cmpl	$0, 72(%rsp)            # 4-byte Folded Reload
	je	.LBB1_56
# BB#54:                                # %if.then.161
                                        #   in Loop: Header=BB1_17 Depth=1
	movl	$2, %eax
	testq	%r12, %r12
	movl	$0, %esi
	movl	16(%rsp), %edx          # 4-byte Reload
	movq	8(%rsp), %rcx           # 8-byte Reload
	jne	.LBB1_55
	jmp	.LBB1_60
.LBB1_201:                              # %for.end.thread
                                        #   in Loop: Header=BB1_17 Depth=1
	movl	$2, %eax
	testq	%rsi, %rsi
	movq	%rsi, %r12
	movl	$0, %esi
	je	.LBB1_60
.LBB1_55:                               # %if.then.3.i.304
                                        #   in Loop: Header=BB1_17 Depth=1
	movw	$38, (%r12)
	addq	$2, %r12
	movl	$2, %eax
	movq	%r12, %rsi
	jmp	.LBB1_60
.LBB1_56:                               # %if.else.164
                                        #   in Loop: Header=BB1_17 Depth=1
	movl	$1, %eax
	testq	%r12, %r12
	je	.LBB1_57
# BB#58:                                # %if.then.i.325
                                        #   in Loop: Header=BB1_17 Depth=1
	movb	$23, (%r12)
	incq	%r12
	movq	%r12, %rsi
	jmp	.LBB1_59
.LBB1_57:                               #   in Loop: Header=BB1_17 Depth=1
	xorl	%esi, %esi
.LBB1_59:                               # %for.inc.170
                                        #   in Loop: Header=BB1_17 Depth=1
	movl	16(%rsp), %edx          # 4-byte Reload
	movq	8(%rsp), %rcx           # 8-byte Reload
.LBB1_60:                               # %for.inc.170
                                        #   in Loop: Header=BB1_17 Depth=1
	addl	%eax, %r15d
	incq	%rcx
	incl	%edx
	cmpq	$4, %rcx
	jb	.LBB1_17
# BB#61:                                # %for.end.172
	movq	40(%rsp), %rax          # 8-byte Reload
	leal	4(%rax), %eax
	movl	%eax, 176(%rsp)
	movzbl	%al, %ecx
	cmpl	%eax, %ecx
	jne	.LBB1_64
# BB#62:                                # %if.then.i.351
	movl	$2, %eax
	testq	%rsi, %rsi
	je	.LBB1_203
# BB#63:                                # %if.then.3.i.355
	movb	$38, (%rsi)
	movb	176(%rsp), %al
	movb	%al, 1(%rsi)
	leaq	2(%rsi), %rdx
	movl	$2, %eax
	movl	$2, %ecx
	jmp	.LBB1_66
.LBB1_86:                               # %cleanup.198
	movq	24(%rsp), %r14          # 8-byte Reload
	movq	64(%rsp), %r12          # 8-byte Reload
	movl	20(%rsp), %r13d         # 4-byte Reload
	movq	88(%rsp), %rbx          # 8-byte Reload
.LBB1_87:                               # %for.cond.208.preheader
	movq	%r12, 64(%rsp)          # 8-byte Spill
	xorl	%eax, %eax
	testl	%r13d, %r13d
	je	.LBB1_197
# BB#88:                                # %for.body.211.lr.ph
	movq	64(%rsp), %rax          # 8-byte Reload
	leal	1(%rax), %eax
	movl	%eax, 56(%rsp)          # 4-byte Spill
	testq	%rbx, %rbx
	sete	40(%rsp)                # 1-byte Folded Spill
	leaq	504(%rbp), %rax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 72(%rsp)          # 8-byte Spill
	xorl	%r15d, %r15d
	jmp	.LBB1_90
	.align	16, 0x90
.LBB1_89:                               # %for.cond.208
                                        #   in Loop: Header=BB1_90 Depth=1
	incl	%r15d
	xorl	%eax, %eax
	cmpl	%r13d, %r15d
	movq	88(%rsp), %rbx          # 8-byte Reload
	movq	%r12, %r14
	jb	.LBB1_90
	jmp	.LBB1_197
.LBB1_106:                              # %sw.bb.235
                                        #   in Loop: Header=BB1_90 Depth=1
	movq	%rbx, 88(%rsp)          # 8-byte Spill
	movl	232(%rsp), %eax
	movl	%eax, 112(%rsp)
	movq	96(%rsp), %rdi          # 8-byte Reload
	testq	%rdi, %rdi
	je	.LBB1_108
# BB#107:                               # %if.then.i.295
                                        #   in Loop: Header=BB1_90 Depth=1
	movb	$40, (%rdi)
	incq	%rdi
	movl	$4, %edx
	leaq	112(%rsp), %rsi
	callq	memcpy
.LBB1_108:                              # %put_float.exit297
                                        #   in Loop: Header=BB1_90 Depth=1
	addl	$5, (%r14)
	movq	%r14, %r12
	jmp	.LBB1_194
.LBB1_102:                              # %if.else.i.316
                                        #   in Loop: Header=BB1_90 Depth=1
	movl	$5, %r12d
	movq	96(%rsp), %rdi          # 8-byte Reload
	testq	%rdi, %rdi
	je	.LBB1_104
# BB#103:                               # %if.then.7.i.320
                                        #   in Loop: Header=BB1_90 Depth=1
	movb	$39, (%rdi)
	incq	%rdi
	movl	$4, %edx
	leaq	112(%rsp), %rsi
	callq	memcpy
.LBB1_104:                              # %put_int.exit322
                                        #   in Loop: Header=BB1_90 Depth=1
	addl	%r12d, (%r14)
	movq	%r14, %r12
	jmp	.LBB1_194
.LBB1_112:                              # %if.then.264
                                        #   in Loop: Header=BB1_90 Depth=1
	movq	96(%rsp), %rax          # 8-byte Reload
	movb	$41, (%rax)
	incl	(%r12)
	jmp	.LBB1_194
.LBB1_138:                              # %cond.false.i.244
                                        #   in Loop: Header=BB1_90 Depth=1
	movzbl	%cl, %ecx
	cmpl	$15, %ecx
	jne	.LBB1_149
.LBB1_139:                              # %if.then.10.i.249
                                        #   in Loop: Header=BB1_90 Depth=1
	movl	$zrepeat, %eax
	cmpq	%rax, 216(%rsp)
.LBB1_146:                              # %resolves_to_oper.exit274
                                        #   in Loop: Header=BB1_90 Depth=1
	sete	%al
	movzbl	%al, %ecx
.LBB1_147:                              # %resolves_to_oper.exit274
                                        #   in Loop: Header=BB1_90 Depth=1
	testl	%ecx, %ecx
	je	.LBB1_148
# BB#154:                               # %if.then.357
                                        #   in Loop: Header=BB1_90 Depth=1
	movl	$1, 108(%rsp)
	movq	(%rbp), %rax
	movq	1872(%rax), %rax
	movq	24(%rax), %rsi
	leaq	112(%rsp), %r15
	movq	%r15, %rdi
	callq	gs_c_param_list_write
	movq	(%rbp), %rax
	movq	1872(%rax), %rdi
	xorl	%edx, %edx
	movq	%r15, %rsi
	callq	gs_get_device_or_hw_params
	testl	%eax, %eax
	js	.LBB1_204
# BB#155:                               # %if.end.365
                                        #   in Loop: Header=BB1_90 Depth=1
	movq	%r15, %rdi
	callq	gs_c_param_list_read
	movl	$.L.str.9, %esi
	movq	%r15, %rdi
	leaq	108(%rsp), %rdx
	callq	param_read_bool
	testl	%eax, %eax
	js	.LBB1_204
# BB#156:                               # %if.end.370
                                        #   in Loop: Header=BB1_90 Depth=1
	movq	%r15, %rdi
	callq	gs_c_param_list_release
	movl	$-15, %eax
	cmpl	$0, 108(%rsp)
	je	.LBB1_204
# BB#157:                               # %if.end.373
                                        #   in Loop: Header=BB1_90 Depth=1
	movq	88(%rsp), %rsi          # 8-byte Reload
	testq	%rsi, %rsi
	je	.LBB1_159
# BB#158:                               # %if.then.375
                                        #   in Loop: Header=BB1_90 Depth=1
	movq	96(%rsp), %rdx          # 8-byte Reload
	movb	$46, (%rdx)
	movslq	(%r12), %rax
	leaq	(%rax,%rsi), %rax
	leaq	3(%rdx), %rcx
	subq	%rcx, %rax
	movb	%ah, 1(%rdx)  # NOREX
	movb	%al, 2(%rdx)
	movslq	(%r12), %rax
	movb	$47, (%rsi,%rax)
.LBB1_159:                              # %cleanup.382
                                        #   in Loop: Header=BB1_90 Depth=1
	incl	(%r12)
	xorl	%r14d, %r14d
	movl	%ebx, %r15d
	jmp	.LBB1_195
.LBB1_204:                              # %cleanup.382.thread
                                        #   in Loop: Header=BB1_90 Depth=1
	movl	%ebx, %r15d
	movq	%rax, 72(%rsp)          # 8-byte Spill
	jmp	.LBB1_195
.LBB1_148:                              # %resolves_to_oper.exit274.if.else.386thread-pre-split_crit_edge
                                        #   in Loop: Header=BB1_90 Depth=1
	movzwl	208(%rsp), %eax
.LBB1_149:                              # %if.else.386
                                        #   in Loop: Header=BB1_90 Depth=1
	testb	$-128, %al
	je	.LBB1_169
# BB#150:                               # %if.end.i.189
                                        #   in Loop: Header=BB1_90 Depth=1
	movzwl	%ax, %ecx
	cmpl	$5375, %ecx             # imm = 0x14FF
	ja	.LBB1_153
# BB#151:                               # %cond.false.i.191
                                        #   in Loop: Header=BB1_90 Depth=1
	movzbl	209(%rsp), %ecx
	cmpl	$13, %ecx
	jne	.LBB1_152
# BB#160:                               # %if.then.28.i.200
                                        #   in Loop: Header=BB1_90 Depth=1
	movq	48(%rsp), %rdi          # 8-byte Reload
	leaq	208(%rsp), %rsi
	leaq	112(%rsp), %rdx
	callq	dict_find
	xorl	%ecx, %ecx
	testl	%eax, %eax
	jle	.LBB1_167
# BB#161:                               # %if.end.32.i.203
                                        #   in Loop: Header=BB1_90 Depth=1
	movq	112(%rsp), %rax
	movzwl	(%rax), %edx
	cmpl	$5375, %edx             # imm = 0x14FF
	jbe	.LBB1_162
# BB#164:                               # %if.end.49.i.212
                                        #   in Loop: Header=BB1_90 Depth=1
	testb	$-128, %dl
	je	.LBB1_167
	jmp	.LBB1_165
.LBB1_115:                              # %if.then.273
                                        #   in Loop: Header=BB1_90 Depth=1
	movq	96(%rsp), %rax          # 8-byte Reload
	movb	$42, (%rax)
	incl	(%r12)
	jmp	.LBB1_194
.LBB1_152:                              # %cond.false.i.191
                                        #   in Loop: Header=BB1_90 Depth=1
	movzbl	%cl, %ecx
	cmpl	$15, %ecx
	jne	.LBB1_169
.LBB1_153:                              # %if.then.10.i.196
                                        #   in Loop: Header=BB1_90 Depth=1
	movl	$zif, %eax
	cmpq	%rax, 216(%rsp)
.LBB1_166:                              # %resolves_to_oper.exit221
                                        #   in Loop: Header=BB1_90 Depth=1
	sete	%al
	movzbl	%al, %ecx
.LBB1_167:                              # %resolves_to_oper.exit221
                                        #   in Loop: Header=BB1_90 Depth=1
	testl	%ecx, %ecx
	je	.LBB1_168
# BB#171:                               # %if.then.389
                                        #   in Loop: Header=BB1_90 Depth=1
	xorl	%r14d, %r14d
	movq	88(%rsp), %rcx          # 8-byte Reload
	testq	%rcx, %rcx
	je	.LBB1_172
# BB#173:                               # %if.then.391
                                        #   in Loop: Header=BB1_90 Depth=1
	movq	96(%rsp), %rdx          # 8-byte Reload
	movb	$43, (%rdx)
	movslq	(%r12), %rax
	leaq	(%rax,%rcx), %rax
	leaq	3(%rdx), %rcx
	subq	%rcx, %rax
	movb	%ah, 1(%rdx)  # NOREX
	movb	%al, 2(%rdx)
	movl	%ebx, %r15d
	jmp	.LBB1_195
.LBB1_168:                              # %resolves_to_oper.exit221.if.else.395_crit_edge
                                        #   in Loop: Header=BB1_90 Depth=1
	movzwl	208(%rsp), %eax
.LBB1_169:                              # %if.else.395
                                        #   in Loop: Header=BB1_90 Depth=1
	andl	$15552, %eax            # imm = 0x3CC0
	cmpl	$1216, %eax             # imm = 0x4C0
	jne	.LBB1_170
# BB#174:                               # %if.else.403
                                        #   in Loop: Header=BB1_90 Depth=1
	movq	8(%rbp), %rdi
	addl	$2, %r15d
	movq	80(%rsp), %rsi          # 8-byte Reload
	movq	%r15, %rdx
	leaq	192(%rsp), %rcx
	callq	array_get
	testl	%eax, %eax
	js	.LBB1_175
# BB#176:                               # %if.else.412
                                        #   in Loop: Header=BB1_90 Depth=1
	movzwl	192(%rsp), %eax
	testb	$-128, %al
	je	.LBB1_110
# BB#177:                               # %if.end.i
                                        #   in Loop: Header=BB1_90 Depth=1
	movzwl	%ax, %eax
	cmpl	$5375, %eax             # imm = 0x14FF
	ja	.LBB1_180
# BB#178:                               # %cond.false.i
                                        #   in Loop: Header=BB1_90 Depth=1
	movzbl	193(%rsp), %eax
	cmpl	$13, %eax
	jne	.LBB1_179
# BB#181:                               # %if.then.28.i
                                        #   in Loop: Header=BB1_90 Depth=1
	movq	48(%rsp), %rdi          # 8-byte Reload
	leaq	192(%rsp), %rsi
	leaq	112(%rsp), %rdx
	callq	dict_find
	xorl	%ecx, %ecx
	testl	%eax, %eax
	jle	.LBB1_188
# BB#182:                               # %if.end.32.i
                                        #   in Loop: Header=BB1_90 Depth=1
	movq	112(%rsp), %rax
	movzwl	(%rax), %edx
	cmpl	$5375, %edx             # imm = 0x14FF
	jbe	.LBB1_183
# BB#185:                               # %if.end.49.i
                                        #   in Loop: Header=BB1_90 Depth=1
	testb	$-128, %dl
	je	.LBB1_188
	jmp	.LBB1_186
.LBB1_170:                              #   in Loop: Header=BB1_90 Depth=1
	movl	%ebx, %r15d
.LBB1_110:                              #   in Loop: Header=BB1_90 Depth=1
	movl	$-15, %eax
	movq	%rax, 72(%rsp)          # 8-byte Spill
	jmp	.LBB1_195
.LBB1_175:                              #   in Loop: Header=BB1_90 Depth=1
	movq	%rax, 72(%rsp)          # 8-byte Spill
	jmp	.LBB1_195
.LBB1_117:                              #   in Loop: Header=BB1_90 Depth=1
	movl	$-21, %eax
	movq	%rax, 72(%rsp)          # 8-byte Spill
	jmp	.LBB1_195
.LBB1_172:                              #   in Loop: Header=BB1_90 Depth=1
	movl	%ebx, %r15d
	jmp	.LBB1_195
.LBB1_142:                              # %cond.false.39.i.262
                                        #   in Loop: Header=BB1_90 Depth=1
	testb	$-128, %dl
	je	.LBB1_147
# BB#143:                               # %cond.false.39.i.262
                                        #   in Loop: Header=BB1_90 Depth=1
	movzbl	1(%rax), %edx
	cmpl	$15, %edx
	jne	.LBB1_147
.LBB1_145:                              # %if.end.56.i.270
                                        #   in Loop: Header=BB1_90 Depth=1
	movl	$zrepeat, %ecx
	cmpq	%rcx, 8(%rax)
	jmp	.LBB1_146
.LBB1_120:                              #   in Loop: Header=BB1_90 Depth=1
	movl	$-20, %eax
	movq	%rax, 72(%rsp)          # 8-byte Spill
	jmp	.LBB1_195
.LBB1_162:                              # %cond.false.39.i.209
                                        #   in Loop: Header=BB1_90 Depth=1
	testb	$-128, %dl
	je	.LBB1_167
# BB#163:                               # %cond.false.39.i.209
                                        #   in Loop: Header=BB1_90 Depth=1
	movzbl	1(%rax), %edx
	cmpl	$15, %edx
	jne	.LBB1_167
.LBB1_165:                              # %if.end.56.i.217
                                        #   in Loop: Header=BB1_90 Depth=1
	movl	$zif, %ecx
	cmpq	%rcx, 8(%rax)
	jmp	.LBB1_166
.LBB1_179:                              # %cond.false.i
                                        #   in Loop: Header=BB1_90 Depth=1
	movzbl	%al, %eax
	cmpl	$15, %eax
	jne	.LBB1_110
.LBB1_180:                              # %if.then.10.i
                                        #   in Loop: Header=BB1_90 Depth=1
	movl	$zifelse, %eax
	cmpq	%rax, 200(%rsp)
.LBB1_187:                              # %resolves_to_oper.exit
                                        #   in Loop: Header=BB1_90 Depth=1
	sete	%al
	movzbl	%al, %ecx
.LBB1_188:                              # %resolves_to_oper.exit
                                        #   in Loop: Header=BB1_90 Depth=1
	testl	%ecx, %ecx
	je	.LBB1_110
# BB#189:                               # %if.then.415
                                        #   in Loop: Header=BB1_90 Depth=1
	movq	88(%rsp), %rbx          # 8-byte Reload
	testq	%rbx, %rbx
	je	.LBB1_191
# BB#190:                               # %if.then.417
                                        #   in Loop: Header=BB1_90 Depth=1
	movq	96(%rsp), %rdx          # 8-byte Reload
	movb	$43, (%rdx)
	movslq	(%r12), %rax
	leaq	3(%rbx,%rax), %rax
	leaq	3(%rdx), %rcx
	subq	%rcx, %rax
	movb	%ah, 1(%rdx)  # NOREX
	movb	%al, 2(%rdx)
	movslq	(%r12), %rax
	leaq	(%rbx,%rax), %rcx
	movq	%rcx, 96(%rsp)          # 8-byte Spill
	movb	$44, (%rbx,%rax)
.LBB1_191:                              # %if.end.423
                                        #   in Loop: Header=BB1_90 Depth=1
	addl	$3, (%r12)
	movq	%rbp, %rdi
	leaq	208(%rsp), %rsi
	movl	56(%rsp), %edx          # 4-byte Reload
	movq	%rbx, %rcx
	movq	%r12, %r8
	callq	check_psc_function
	movl	%eax, %r14d
	testl	%r14d, %r14d
	sets	%cl
	movq	72(%rsp), %rax          # 8-byte Reload
	cmovsl	%r14d, %eax
	orb	40(%rsp), %cl           # 1-byte Folded Reload
	je	.LBB1_193
# BB#192:                               #   in Loop: Header=BB1_90 Depth=1
	shrl	$31, %r14d
	movq	%rax, 72(%rsp)          # 8-byte Spill
	jmp	.LBB1_195
.LBB1_193:                              # %if.then.432
                                        #   in Loop: Header=BB1_90 Depth=1
	movslq	(%r12), %rax
	leaq	(%rax,%rbx), %rax
	movq	96(%rsp), %rdx          # 8-byte Reload
	leaq	3(%rdx), %rcx
	subq	%rcx, %rax
	movb	%ah, 1(%rdx)  # NOREX
	movb	%al, 2(%rdx)
	jmp	.LBB1_194
.LBB1_183:                              # %cond.false.39.i
                                        #   in Loop: Header=BB1_90 Depth=1
	testb	$-128, %dl
	je	.LBB1_188
# BB#184:                               # %cond.false.39.i
                                        #   in Loop: Header=BB1_90 Depth=1
	movzbl	1(%rax), %edx
	cmpl	$15, %edx
	jne	.LBB1_188
.LBB1_186:                              # %if.end.56.i
                                        #   in Loop: Header=BB1_90 Depth=1
	movl	$zifelse, %ecx
	cmpq	%rcx, 8(%rax)
	jmp	.LBB1_187
	.align	16, 0x90
.LBB1_90:                               # %for.body.211
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_124 Depth 2
	testq	%rbx, %rbx
	leaq	168(%rsp), %rax
	je	.LBB1_92
# BB#91:                                # %cond.true
                                        #   in Loop: Header=BB1_90 Depth=1
	movslq	(%r14), %rax
	leaq	(%rax,%rbx), %rax
.LBB1_92:                               # %cond.end
                                        #   in Loop: Header=BB1_90 Depth=1
	movq	%rax, 96(%rsp)          # 8-byte Spill
	movq	8(%rbp), %rdi
	movl	%r15d, %edx
	movq	80(%rsp), %rsi          # 8-byte Reload
	leaq	224(%rsp), %rcx
	callq	array_get
	movzwl	224(%rsp), %eax
	cmpl	$5375, %eax             # imm = 0x14FF
	ja	.LBB1_123
# BB#93:                                # %cond.end.228
                                        #   in Loop: Header=BB1_90 Depth=1
	movzbl	225(%rsp), %ecx
	leal	-11(%rcx), %edx
	cmpl	$5, %edx
	jbe	.LBB1_98
# BB#94:                                # %cond.end.228
                                        #   in Loop: Header=BB1_90 Depth=1
	cmpl	$1, %ecx
	jne	.LBB1_129
# BB#95:                                # %sw.bb.240
                                        #   in Loop: Header=BB1_90 Depth=1
	movq	%rbx, 88(%rsp)          # 8-byte Spill
	movb	$41, %al
	cmpw	$0, 232(%rsp)
	jne	.LBB1_97
# BB#96:                                # %select.mid
                                        #   in Loop: Header=BB1_90 Depth=1
	movb	$42, %al
	jmp	.LBB1_97
	.align	16, 0x90
.LBB1_98:                               # %cond.end.228
                                        #   in Loop: Header=BB1_90 Depth=1
	jmpq	*.LJTI1_0(,%rdx,8)
.LBB1_99:                               # %sw.bb
                                        #   in Loop: Header=BB1_90 Depth=1
	movq	%rbx, 88(%rsp)          # 8-byte Spill
	movq	232(%rsp), %rax
	movl	%eax, 112(%rsp)
	movzbl	%al, %ecx
	cmpl	%eax, %ecx
	jne	.LBB1_102
# BB#100:                               # %if.then.i.311
                                        #   in Loop: Header=BB1_90 Depth=1
	movl	$2, %r12d
	movq	96(%rsp), %rcx          # 8-byte Reload
	testq	%rcx, %rcx
	je	.LBB1_104
# BB#101:                               # %if.then.3.i.315
                                        #   in Loop: Header=BB1_90 Depth=1
	movb	$38, (%rcx)
	movb	%al, 1(%rcx)
	jmp	.LBB1_104
	.align	16, 0x90
.LBB1_129:                              # %sw.default
                                        #   in Loop: Header=BB1_90 Depth=1
	movq	%r14, %r12
	andl	$15552, %eax            # imm = 0x3CC0
	cmpl	$1216, %eax             # imm = 0x4C0
	movl	$-13, %eax
	movl	$-20, %ecx
	cmovnel	%ecx, %eax
	movl	$1, %r14d
	jne	.LBB1_130
# BB#131:                               # %sw.default
                                        #   in Loop: Header=BB1_90 Depth=1
	movq	64(%rsp), %rcx          # 8-byte Reload
	cmpl	$10, %ecx
	je	.LBB1_132
# BB#133:                               # %if.end.338
                                        #   in Loop: Header=BB1_90 Depth=1
	movq	8(%rbp), %rdi
	leal	1(%r15), %ebx
	movq	80(%rsp), %rsi          # 8-byte Reload
	movq	%rbx, %rdx
	leaq	208(%rsp), %rcx
	callq	array_get
	testl	%eax, %eax
	js	.LBB1_204
# BB#134:                               # %if.end.347
                                        #   in Loop: Header=BB1_90 Depth=1
	addl	$3, (%r12)
	movq	%rbp, %rdi
	leaq	224(%rsp), %rsi
	movl	56(%rsp), %edx          # 4-byte Reload
	movq	88(%rsp), %rcx          # 8-byte Reload
	movq	%r12, %r8
	callq	check_psc_function
	testl	%eax, %eax
	js	.LBB1_204
# BB#135:                               # %if.end.354
                                        #   in Loop: Header=BB1_90 Depth=1
	movzwl	208(%rsp), %eax
	testb	$-128, %al
	je	.LBB1_149
# BB#136:                               # %if.end.i.242
                                        #   in Loop: Header=BB1_90 Depth=1
	movzwl	%ax, %ecx
	cmpl	$5375, %ecx             # imm = 0x14FF
	ja	.LBB1_139
# BB#137:                               # %cond.false.i.244
                                        #   in Loop: Header=BB1_90 Depth=1
	movzbl	209(%rsp), %ecx
	cmpl	$13, %ecx
	jne	.LBB1_138
# BB#140:                               # %if.then.28.i.253
                                        #   in Loop: Header=BB1_90 Depth=1
	movq	48(%rsp), %rdi          # 8-byte Reload
	leaq	208(%rsp), %rsi
	leaq	112(%rsp), %rdx
	callq	dict_find
	xorl	%ecx, %ecx
	testl	%eax, %eax
	jle	.LBB1_147
# BB#141:                               # %if.end.32.i.256
                                        #   in Loop: Header=BB1_90 Depth=1
	movq	112(%rsp), %rax
	movzwl	(%rax), %edx
	cmpl	$5375, %edx             # imm = 0x14FF
	jbe	.LBB1_142
# BB#144:                               # %if.end.49.i.265
                                        #   in Loop: Header=BB1_90 Depth=1
	testb	$-128, %dl
	je	.LBB1_147
	jmp	.LBB1_145
.LBB1_130:                              #   in Loop: Header=BB1_90 Depth=1
	movq	%rax, 72(%rsp)          # 8-byte Spill
	jmp	.LBB1_195
.LBB1_132:                              #   in Loop: Header=BB1_90 Depth=1
	movq	%rax, 72(%rsp)          # 8-byte Spill
	jmp	.LBB1_195
.LBB1_109:                              # %sw.bb.247
                                        #   in Loop: Header=BB1_90 Depth=1
	movq	%r14, %r12
	movq	%rbx, 88(%rsp)          # 8-byte Spill
	movl	$1, %r14d
	testb	$-128, %al
	je	.LBB1_110
# BB#111:                               # %if.end.254
                                        #   in Loop: Header=BB1_90 Depth=1
	movq	8(%rbp), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	leaq	224(%rsp), %rsi
	movq	%rsi, %rdx
	callq	names_string_ref
	movq	232(%rsp), %rdi
	movl	228(%rsp), %esi
	movl	$.L.str.7, %edx
	movl	$4, %ecx
	callq	bytes_compare
	testl	%eax, %eax
	je	.LBB1_112
# BB#114:                               # %if.end.266
                                        #   in Loop: Header=BB1_90 Depth=1
	movq	232(%rsp), %rdi
	movl	228(%rsp), %esi
	movl	$.L.str.8, %edx
	movl	$5, %ecx
	callq	bytes_compare
	testl	%eax, %eax
	je	.LBB1_115
# BB#116:                               # %if.end.275
                                        #   in Loop: Header=BB1_90 Depth=1
	movq	48(%rsp), %rdi          # 8-byte Reload
	leaq	224(%rsp), %rsi
	leaq	176(%rsp), %rdx
	callq	dict_find
	testl	%eax, %eax
	jle	.LBB1_117
# BB#118:                               # %if.end.281
                                        #   in Loop: Header=BB1_90 Depth=1
	movq	176(%rsp), %rax
	movzwl	(%rax), %ecx
	cmpl	$5375, %ecx             # imm = 0x14FF
	ja	.LBB1_121
# BB#119:                               # %cond.end.293
                                        #   in Loop: Header=BB1_90 Depth=1
	movzbl	1(%rax), %edx
	cmpl	$15, %edx
	jne	.LBB1_120
.LBB1_121:                              # %if.end.298
                                        #   in Loop: Header=BB1_90 Depth=1
	testb	$-128, %cl
	je	.LBB1_110
# BB#122:                               # %if.end.305
                                        #   in Loop: Header=BB1_90 Depth=1
	movups	(%rax), %xmm0
	movaps	%xmm0, 224(%rsp)
	movq	%r12, %r14
	.align	16, 0x90
.LBB1_123:                              # %for.cond.308.preheader
                                        #   in Loop: Header=BB1_90 Depth=1
	movq	232(%rsp), %rcx
	movl	$calc_ops+32, %edx
	xorl	%eax, %eax
	.align	16, 0x90
.LBB1_124:                              # %for.body.312
                                        #   Parent Loop BB1_90 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	-32(%rdx), %rcx
	je	.LBB1_128
# BB#125:                               # %for.cond.308
                                        #   in Loop: Header=BB1_124 Depth=2
	cmpq	-16(%rdx), %rcx
	je	.LBB1_126
# BB#198:                               # %for.cond.308.1
                                        #   in Loop: Header=BB1_124 Depth=2
	cmpq	(%rdx), %rcx
	je	.LBB1_127
# BB#199:                               # %for.cond.308.2
                                        #   in Loop: Header=BB1_124 Depth=2
	addq	$3, %rax
	addq	$48, %rdx
	cmpl	$39, %eax
	jb	.LBB1_124
# BB#200:                               #   in Loop: Header=BB1_90 Depth=1
	movq	%r14, %r12
	movl	$-15, %eax
	movq	%rax, 72(%rsp)          # 8-byte Spill
	movl	$1, %r14d
	jmp	.LBB1_195
.LBB1_126:                              #   in Loop: Header=BB1_90 Depth=1
	incq	%rax
	jmp	.LBB1_128
.LBB1_127:                              # %for.cond.308.1.cleanup.326.thread_crit_edge
                                        #   in Loop: Header=BB1_90 Depth=1
	addq	$2, %rax
.LBB1_128:                              # %cleanup.326.thread
                                        #   in Loop: Header=BB1_90 Depth=1
	shlq	$4, %rax
	movb	calc_ops+8(%rax), %al
.LBB1_97:                               # %select.end
                                        #   in Loop: Header=BB1_90 Depth=1
	movq	96(%rsp), %rcx          # 8-byte Reload
	movb	%al, (%rcx)
	incl	(%r14)
	movq	%r14, %r12
.LBB1_194:                              # %cleanup.443
                                        #   in Loop: Header=BB1_90 Depth=1
	xorl	%r14d, %r14d
.LBB1_195:                              # %cleanup.443
                                        #   in Loop: Header=BB1_90 Depth=1
	testl	%r14d, %r14d
	je	.LBB1_89
# BB#196:
	movq	72(%rsp), %rax          # 8-byte Reload
.LBB1_197:                              # %cleanup.453
	addq	$248, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB1_64:                               # %if.else.i.356
	movl	$5, %eax
	testq	%rsi, %rsi
	je	.LBB1_203
# BB#65:                                # %if.then.7.i.360
	movq	%rsi, %rbx
	movb	$39, (%rbx)
	leaq	1(%rbx), %rdi
	leaq	176(%rsp), %rsi
	movl	$4, %edx
	callq	memcpy
	leaq	5(%rbx), %rdx
	movq	%rbx, %rsi
	movl	$5, %eax
	movl	$5, %ecx
.LBB1_66:                               # %put_int.exit346
	movb	$38, (%rdx)
	movw	$9476, 1(%rsi,%rcx)     # imm = 0x2504
	leal	2(%r15,%rax), %eax
	leaq	3(%rsi,%rcx), %rdx
	jmp	.LBB1_67
.LBB1_203:                              # %put_int.exit346.thread
	leal	2(%r15,%rax), %eax
	xorl	%edx, %edx
.LBB1_67:                               # %for.cond.180.preheader
	movq	40(%rsp), %rcx          # 8-byte Reload
	testl	%ecx, %ecx
	je	.LBB1_85
# BB#68:                                # %for.body.183.lr.ph
	movq	40(%rsp), %r13          # 8-byte Reload
	leal	-1(%r13), %esi
	xorl	%edi, %edi
	testb	$3, %r13b
	movq	%r13, %rbx
	je	.LBB1_69
# BB#70:                                # %for.body.183.prol.preheader
	movl	%ebx, %ebp
	andl	$3, %ebp
	xorl	%edi, %edi
.LBB1_71:                               # %for.body.183.prol
                                        # =>This Inner Loop Header: Depth=1
	testq	%rdx, %rdx
	movl	$0, %ecx
	je	.LBB1_73
# BB#72:                                # %if.then.i.330.prol
                                        #   in Loop: Header=BB1_71 Depth=1
	movb	$36, (%rdx)
	incq	%rdx
	movq	%rdx, %rcx
.LBB1_73:                               # %put_op.exit332.prol
                                        #   in Loop: Header=BB1_71 Depth=1
	incl	%edi
	cmpl	%edi, %ebp
	movq	%rcx, %rdx
	jne	.LBB1_71
	jmp	.LBB1_74
.LBB1_69:
	movq	%rdx, %rcx
.LBB1_74:                               # %for.body.183.lr.ph.split
	addl	%ebx, %eax
	cmpl	$3, %esi
	jb	.LBB1_85
# BB#75:                                # %for.body.183.lr.ph.split.split
	subl	%edi, %ebx
.LBB1_76:                               # %for.body.183
                                        # =>This Inner Loop Header: Depth=1
	testq	%rcx, %rcx
	movl	$0, %edx
	je	.LBB1_78
# BB#77:                                # %if.then.i.330
                                        #   in Loop: Header=BB1_76 Depth=1
	movb	$36, (%rcx)
	incq	%rcx
	movq	%rcx, %rdx
.LBB1_78:                               # %put_op.exit332
                                        #   in Loop: Header=BB1_76 Depth=1
	testq	%rdx, %rdx
	movl	$0, %ecx
	je	.LBB1_80
# BB#79:                                # %if.then.i.330.1
                                        #   in Loop: Header=BB1_76 Depth=1
	movb	$36, (%rdx)
	incq	%rdx
	movq	%rdx, %rcx
.LBB1_80:                               # %put_op.exit332.1
                                        #   in Loop: Header=BB1_76 Depth=1
	testq	%rcx, %rcx
	movl	$0, %edx
	je	.LBB1_82
# BB#81:                                # %if.then.i.330.2
                                        #   in Loop: Header=BB1_76 Depth=1
	movb	$36, (%rcx)
	incq	%rcx
	movq	%rcx, %rdx
.LBB1_82:                               # %put_op.exit332.2
                                        #   in Loop: Header=BB1_76 Depth=1
	testq	%rdx, %rdx
	movl	$0, %ecx
	je	.LBB1_84
# BB#83:                                # %if.then.i.330.3
                                        #   in Loop: Header=BB1_76 Depth=1
	movb	$36, (%rdx)
	incq	%rdx
	movq	%rdx, %rcx
.LBB1_84:                               # %put_op.exit332.3
                                        #   in Loop: Header=BB1_76 Depth=1
	addl	$-4, %ebx
	jne	.LBB1_76
.LBB1_85:                               # %cleanup.198.thread473
	incl	%eax
	movq	24(%rsp), %rcx          # 8-byte Reload
	movl	%eax, (%rcx)
	xorl	%eax, %eax
	jmp	.LBB1_197
.Lfunc_end1:
	.size	check_psc_function, .Lfunc_end1-check_psc_function
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI1_0:
	.quad	.LBB1_99
	.quad	.LBB1_129
	.quad	.LBB1_109
	.quad	.LBB1_129
	.quad	.LBB1_123
	.quad	.LBB1_106

	.text
	.globl	make_type4_function
	.align	16, 0x90
	.type	make_type4_function,@function
make_type4_function:                    # @make_type4_function
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp26:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp27:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp28:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp29:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp30:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp31:
	.cfi_def_cfa_offset 56
	subq	$104, %rsp
.Ltmp32:
	.cfi_def_cfa_offset 160
.Ltmp33:
	.cfi_offset %rbx, -56
.Ltmp34:
	.cfi_offset %r12, -48
.Ltmp35:
	.cfi_offset %r13, -40
.Ltmp36:
	.cfi_offset %r14, -32
.Ltmp37:
	.cfi_offset %r15, -24
.Ltmp38:
	.cfi_offset %rbp, -16
	movq	%rcx, %r14
	movq	%rdx, %r15
	movq	%rsi, %rbx
	movq	%rdi, %r12
	leaq	24(%rsp), %rax
	movq	%rax, 16(%rsp)
	leaq	8(%rsp), %rdx
	callq	get_space_object
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB2_19
# BB#1:                                 # %if.end
	movq	8(%rsp), %rax
	movq	24(%rax), %rax
	movl	$-20, %ebp
	testq	%rax, %rax
	je	.LBB2_19
# BB#2:                                 # %if.end.2
	leaq	16(%rsp), %rdx
	leaq	92(%rsp), %rcx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	*%rax
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB2_19
# BB#3:                                 # %if.end.7
	movq	16(%rsp), %rsi
	leaq	(%rsp), %rdx
	movq	%r12, %rdi
	callq	get_space_object
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB2_19
# BB#4:                                 # %if.end.11
	movq	8(%rsp), %rax
	leaq	96(%rsp), %rdx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	*32(%rax)
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB2_19
# BB#5:                                 # %if.end.15
	movq	8(%r12), %rdi
	movl	96(%rsp), %esi
	addl	%esi, %esi
	movl	$4, %edx
	movl	$.L.str.2, %ecx
	callq	*88(%rdi)
	movq	%rax, %r13
	movl	$-25, %ebp
	testq	%r13, %r13
	je	.LBB2_19
# BB#6:                                 # %if.end.21
	movq	8(%rsp), %rax
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movq	%r13, %rdx
	callq	*48(%rax)
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB2_7
# BB#8:                                 # %if.end.27
	movq	%r13, 48(%rsp)
	movl	96(%rsp), %eax
	movl	%eax, 40(%rsp)
	movq	(%rsp), %rax
	leaq	24(%rsp), %rsi
	leaq	96(%rsp), %rdx
	movq	%r12, %rdi
	callq	*32(%rax)
	movl	%eax, %ebx
	movq	8(%r12), %rdi
	testl	%ebx, %ebx
	js	.LBB2_9
# BB#10:                                # %if.end.35
	movl	96(%rsp), %esi
	addl	%esi, %esi
	movl	$4, %edx
	movl	$.L.str.3, %ecx
	callq	*88(%rdi)
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB2_11
# BB#12:                                # %if.end.49
	movq	(%rsp), %rax
	leaq	24(%rsp), %rsi
	movq	%r12, %rdi
	movq	%rbx, %rdx
	callq	*40(%rax)
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB2_13
# BB#14:                                # %if.end.58
	movq	%rbx, 64(%rsp)
	movl	96(%rsp), %eax
	movl	%eax, 56(%rsp)
	movq	$0, 72(%rsp)
	movl	$0, 80(%rsp)
	movl	$0, 100(%rsp)
	leaq	100(%rsp), %r8
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	check_psc_function
	movl	%eax, %ebp
	movq	8(%r12), %rcx
	testl	%ebp, %ebp
	js	.LBB2_15
# BB#16:                                # %if.end.67
	movl	100(%rsp), %esi
	incl	%esi
	movl	$.L.str.4, %edx
	movq	%rcx, %rdi
	callq	*136(%rcx)
	movq	%rax, %rbx
	movl	$0, 100(%rsp)
	leaq	100(%rsp), %r8
	xorl	%edx, %edx
	movq	%r12, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rcx
	callq	check_psc_function
	movslq	100(%rsp), %rax
	movb	$45, (%rbx,%rax)
	movq	%rbx, 72(%rsp)
	movl	100(%rsp), %eax
	incl	%eax
	movl	%eax, 80(%rsp)
	movq	8(%r12), %rdx
	leaq	40(%rsp), %rsi
	movq	%r14, %rdi
	callq	gs_function_PtCr_init
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jns	.LBB2_19
# BB#17:                                # %if.then.84
	movq	8(%r12), %rsi
	leaq	40(%rsp), %rdi
	jmp	.LBB2_18
.LBB2_7:                                # %if.then.24
	movq	8(%r12), %rdi
.LBB2_9:                                # %if.then.31
	movl	$.L.str.2, %edx
	movq	%r13, %rsi
	callq	gs_free_const_object
	movl	%ebx, %ebp
	jmp	.LBB2_19
.LBB2_11:                               # %if.then.45
	movq	8(%r12), %rdi
	movl	$.L.str.2, %edx
	movq	%r13, %rsi
	callq	gs_free_const_object
	jmp	.LBB2_19
.LBB2_13:                               # %if.then.52
	movq	8(%r12), %rdi
	movl	$.L.str.2, %edx
	movq	%rbx, %rsi
	callq	gs_free_const_object
	movq	8(%r12), %rdi
	movq	48(%rsp), %rsi
	movl	$.L.str.3, %edx
	callq	gs_free_const_object
	jmp	.LBB2_19
.LBB2_15:                               # %if.then.64
	leaq	40(%rsp), %rdi
	movq	%rcx, %rsi
.LBB2_18:                               # %cleanup
	callq	gs_function_PtCr_free_params
.LBB2_19:                               # %cleanup
	movl	%ebp, %eax
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	make_type4_function, .Lfunc_end2-make_type4_function
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Function"
	.size	.L.str, 9

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"gs_build_function_4(ops)"
	.size	.L.str.1, 25

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"make_type4_function(Domain)"
	.size	.L.str.2, 28

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"make_type4_function(Range)"
	.size	.L.str.3, 27

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"make_type4_function(ops)"
	.size	.L.str.4, 25

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"tint_params"
	.size	.L.str.5, 12

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"CorelTintTransformFunction"
	.size	.L.str.6, 27

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"true"
	.size	.L.str.7, 5

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"false"
	.size	.L.str.8, 6

	.type	calc_ops,@object        # @calc_ops
	.section	.rodata,"a",@progbits
	.align	16
calc_ops:
	.quad	zabs
	.long	0                       # 0x0
	.zero	4
	.quad	zadd
	.long	1                       # 0x1
	.zero	4
	.quad	zand
	.long	2                       # 0x2
	.zero	4
	.quad	zatan
	.long	3                       # 0x3
	.zero	4
	.quad	zbitshift
	.long	4                       # 0x4
	.zero	4
	.quad	zceiling
	.long	5                       # 0x5
	.zero	4
	.quad	zcos
	.long	6                       # 0x6
	.zero	4
	.quad	zcvi
	.long	7                       # 0x7
	.zero	4
	.quad	zcvr
	.long	8                       # 0x8
	.zero	4
	.quad	zdiv
	.long	9                       # 0x9
	.zero	4
	.quad	zexp
	.long	10                      # 0xa
	.zero	4
	.quad	zfloor
	.long	11                      # 0xb
	.zero	4
	.quad	zidiv
	.long	12                      # 0xc
	.zero	4
	.quad	zln
	.long	13                      # 0xd
	.zero	4
	.quad	zlog
	.long	14                      # 0xe
	.zero	4
	.quad	zmod
	.long	15                      # 0xf
	.zero	4
	.quad	zmul
	.long	16                      # 0x10
	.zero	4
	.quad	zneg
	.long	17                      # 0x11
	.zero	4
	.quad	znot
	.long	18                      # 0x12
	.zero	4
	.quad	zor
	.long	19                      # 0x13
	.zero	4
	.quad	zround
	.long	20                      # 0x14
	.zero	4
	.quad	zsin
	.long	21                      # 0x15
	.zero	4
	.quad	zsqrt
	.long	22                      # 0x16
	.zero	4
	.quad	zsub
	.long	23                      # 0x17
	.zero	4
	.quad	ztruncate
	.long	24                      # 0x18
	.zero	4
	.quad	zxor
	.long	25                      # 0x19
	.zero	4
	.quad	zeq
	.long	26                      # 0x1a
	.zero	4
	.quad	zge
	.long	27                      # 0x1b
	.zero	4
	.quad	zgt
	.long	28                      # 0x1c
	.zero	4
	.quad	zle
	.long	29                      # 0x1d
	.zero	4
	.quad	zlt
	.long	30                      # 0x1e
	.zero	4
	.quad	zne
	.long	31                      # 0x1f
	.zero	4
	.quad	zcopy
	.long	32                      # 0x20
	.zero	4
	.quad	z2copy
	.long	32                      # 0x20
	.zero	4
	.quad	zdup
	.long	33                      # 0x21
	.zero	4
	.quad	zexch
	.long	34                      # 0x22
	.zero	4
	.quad	zindex
	.long	35                      # 0x23
	.zero	4
	.quad	zpop
	.long	36                      # 0x24
	.zero	4
	.quad	zroll
	.long	37                      # 0x25
	.zero	4
	.size	calc_ops, 624

	.type	.L.str.9,@object        # @.str.9
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.9:
	.asciz	"AllowPSRepeatFunctions"
	.size	.L.str.9, 23


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
