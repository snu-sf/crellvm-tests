	.text
	.file	"sdcparam.bc"
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI0_0:
	.long	1065353216              # float 1
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_1:
	.quad	4607182418800017408     # double 1
.LCPI0_2:
	.quad	4643176031446892544     # double 255
	.text
	.globl	s_DCT_get_quantization_tables
	.align	16, 0x90
	.type	s_DCT_get_quantization_tables,@function
s_DCT_get_quantization_tables:          # @s_DCT_get_quantization_tables
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
	subq	$520, %rsp              # imm = 0x208
.Ltmp6:
	.cfi_def_cfa_offset 576
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
	movq	8(%rsi), %rax
	movss	128(%rsi), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 52(%rsp)         # 4-byte Spill
	testl	%ecx, %ecx
	je	.LBB0_4
# BB#1:                                 # %if.then
	movq	%rax, 16(%rsp)          # 8-byte Spill
	movq	152(%rsi), %rax
	movl	556(%rax), %esi
	movq	568(%rax), %rcx
	movq	%rcx, 56(%rsp)          # 8-byte Spill
	addq	$576, %rax              # imm = 0x240
	movq	%rax, 64(%rsp)          # 8-byte Spill
	testq	%rdx, %rdx
	je	.LBB0_6
# BB#2:                                 # %if.end.35
	movq	%rdi, 24(%rsp)          # 8-byte Spill
	xorl	%ebp, %ebp
	testl	%esi, %esi
	jle	.LBB0_38
# BB#3:
	movq	152(%rdx), %rbx
	movq	568(%rbx), %r14
	addq	$576, %rbx              # imm = 0x240
	movl	%esi, %eax
	jmp	.LBB0_14
.LBB0_4:                                # %if.else
	movq	%rax, 16(%rsp)          # 8-byte Spill
	movl	$4, 120(%rsp)
	movl	$0, 144(%rsp)
	movl	$1, 240(%rsp)
	movl	$2, 336(%rsp)
	movl	$3, 432(%rsp)
	movl	$664, %eax              # imm = 0x298
	addq	152(%rsi), %rax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	testq	%rdx, %rdx
	je	.LBB0_5
# BB#13:                                # %if.end.35.thread
	movq	%rdi, 24(%rsp)          # 8-byte Spill
	leaq	128(%rsp), %r14
	movq	%r14, 56(%rsp)          # 8-byte Spill
	movl	$664, %ebx              # imm = 0x298
	addq	152(%rdx), %rbx
	movl	$4, %eax
.LBB0_14:                               # %for.body.41.lr.ph
	movl	%eax, 40(%rsp)          # 4-byte Spill
	movslq	%eax, %r12
	xorl	%r15d, %r15d
	movl	$16, %r13d
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB0_15:                               # %for.body.41
                                        # =>This Inner Loop Header: Depth=1
	testq	%r14, %r14
	movq	56(%rsp), %rax          # 8-byte Reload
	movslq	(%rax,%r13), %rax
	movq	64(%rsp), %rcx          # 8-byte Reload
	movq	(%rcx,%rax,8), %rdi
	movl	$0, %esi
	je	.LBB0_17
# BB#16:                                # %cond.false
                                        #   in Loop: Header=BB0_15 Depth=1
	movslq	(%r14,%r13), %rax
	movq	(%rbx,%rax,8), %rsi
.LBB0_17:                               # %cond.end
                                        #   in Loop: Header=BB0_15 Depth=1
	cmpq	%rsi, %rdi
	je	.LBB0_22
# BB#18:                                # %if.end.59
                                        #   in Loop: Header=BB0_15 Depth=1
	testq	%rdi, %rdi
	je	.LBB0_19
# BB#20:                                # %if.end.59
                                        #   in Loop: Header=BB0_15 Depth=1
	testq	%rsi, %rsi
	je	.LBB0_19
# BB#21:                                # %cleanup
                                        #   in Loop: Header=BB0_15 Depth=1
	movl	$128, %edx
	callq	memcmp
	testl	%eax, %eax
	jne	.LBB0_19
.LBB0_22:                               # %for.inc.73
                                        #   in Loop: Header=BB0_15 Depth=1
	incq	%r15
	addq	$96, %r13
	cmpq	%r12, %r15
	jl	.LBB0_15
	jmp	.LBB0_38
.LBB0_19:
	movq	24(%rsp), %rdi          # 8-byte Reload
	movl	40(%rsp), %esi          # 4-byte Reload
	jmp	.LBB0_6
.LBB0_5:
	leaq	128(%rsp), %rax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	movl	$4, %esi
.LBB0_6:                                # %if.end.82
	movq	%rdi, 24(%rsp)          # 8-byte Spill
	movl	%esi, 120(%rsp)
	movl	%esi, %ebx
	movq	(%rdi), %rax
	leaq	112(%rsp), %rdx
	movl	$.L.str, %esi
	movl	$2, %ecx
	callq	*8(%rax)
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB0_38
# BB#7:                                 # %for.cond.89.preheader
	testl	%ebx, %ebx
	movq	16(%rsp), %r13          # 8-byte Reload
	jle	.LBB0_37
# BB#8:                                 # %for.body.92.lr.ph
	movss	52(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, 40(%rsp)         # 8-byte Spill
	movslq	%ebx, %rax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	leaq	109(%rsp), %r15
	xorl	%r12d, %r12d
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB0_9:                                # %for.body.92
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_11 Depth 2
                                        #     Child Loop BB0_32 Depth 2
	movl	$.L.str.1, %esi
	xorl	%eax, %eax
	movq	%r15, %rdi
	movl	%r12d, %edx
	callq	gs_sprintf
	leaq	(%r12,%r12,2), %rax
	shlq	$5, %rax
	movq	56(%rsp), %rcx          # 8-byte Reload
	leaq	16(%rcx,%rax), %r14
	movss	52(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI0_0(%rip), %xmm0
	jne	.LBB0_31
	jp	.LBB0_31
# BB#10:                                # %if.then.97
                                        #   in Loop: Header=BB0_9 Depth=1
	movslq	(%r14), %rax
	movq	64(%rsp), %rcx          # 8-byte Reload
	movq	(%rcx,%rax,8), %rbx
	movl	$64, %esi
	movl	$.L.str.2, %edx
	movq	%r13, %rdi
	callq	*136(%r13)
	xorl	%edx, %edx
	movl	$-25, %esi
	testq	%rax, %rax
	movl	$0, %ecx
	movsd	40(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	.LCPI0_1(%rip), %xmm2   # xmm2 = mem[0],zero
	je	.LBB0_39
	.align	16, 0x90
.LBB0_11:                               # %for.body.i
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	inverse_natural_order(%rdx), %esi
	movzwl	(%rbx,%rsi,2), %esi
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%esi, %xmm0
	divsd	%xmm1, %xmm0
	ucomisd	%xmm0, %xmm2
	jbe	.LBB0_23
# BB#12:                                #   in Loop: Header=BB0_11 Depth=2
	movb	$1, %sil
	movl	$1, %ecx
	jmp	.LBB0_26
	.align	16, 0x90
.LBB0_23:                               # %cond.false.i
                                        #   in Loop: Header=BB0_11 Depth=2
	ucomisd	.LCPI0_2(%rip), %xmm0
	jbe	.LBB0_25
# BB#24:                                #   in Loop: Header=BB0_11 Depth=2
	movb	$-1, %sil
	movl	$255, %ecx
	jmp	.LBB0_26
	.align	16, 0x90
.LBB0_25:                               # %cond.false.10.i
                                        #   in Loop: Header=BB0_11 Depth=2
	cvttsd2si	%xmm0, %esi
.LBB0_26:                               # %cond.end.13.i
                                        #   in Loop: Header=BB0_11 Depth=2
	movb	%sil, (%rax,%rdx)
	incq	%rdx
	cmpq	$64, %rdx
	jne	.LBB0_11
# BB#27:                                # %quant_param_string.exit
                                        #   in Loop: Header=BB0_9 Depth=1
	movq	%rax, 88(%rsp)
	movabsq	$4294967360, %rdx       # imm = 0x100000040
	movq	%rdx, 96(%rsp)
	testb	$1, %cl
	je	.LBB0_28
# BB#30:                                # %sw.epilog
                                        #   in Loop: Header=BB0_9 Depth=1
	movl	$64, %edx
	movl	$.L.str.2, %ecx
	movq	%r13, %rdi
	movq	%rax, %rsi
	callq	gs_free_const_string
.LBB0_31:                               # %if.end.114
                                        #   in Loop: Header=BB0_9 Depth=1
	movslq	(%r14), %rax
	movq	64(%rsp), %rcx          # 8-byte Reload
	movq	(%rcx,%rax,8), %rbx
	movl	$64, %esi
	movl	$4, %edx
	movl	$.L.str.5, %ecx
	movq	%r13, %rdi
	callq	*88(%r13)
	movl	$-25, %esi
	testq	%rax, %rax
	movl	$0, %ecx
	movsd	40(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	je	.LBB0_39
	.align	16, 0x90
.LBB0_32:                               # %for.body.i.81
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	inverse_natural_order(%rcx), %edx
	movzwl	(%rbx,%rdx,2), %edx
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%edx, %xmm0
	divsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, (%rax,%rcx,4)
	movzbl	inverse_natural_order+1(%rcx), %edx
	movzwl	(%rbx,%rdx,2), %edx
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%edx, %xmm0
	divsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 4(%rax,%rcx,4)
	addq	$2, %rcx
	cmpq	$64, %rcx
	jne	.LBB0_32
# BB#33:                                # %if.end.126
                                        #   in Loop: Header=BB0_9 Depth=1
	movq	%rax, 72(%rsp)
	movabsq	$4294967360, %rax       # imm = 0x100000040
	movq	%rax, 80(%rsp)
	movq	112(%rsp), %rdi
	movq	%r15, %rsi
	leaq	72(%rsp), %rdx
	callq	param_write_float_array
	testl	%eax, %eax
	cmovsl	%eax, %ebp
	shrl	$31, %eax
	jmp	.LBB0_34
	.align	16, 0x90
.LBB0_28:                               # %quant_param_string.exit
                                        #   in Loop: Header=BB0_9 Depth=1
	andl	$1, %ecx
	movl	%ecx, %esi
	jne	.LBB0_39
# BB#29:                                # %sw.bb
                                        #   in Loop: Header=BB0_9 Depth=1
	movq	112(%rsp), %rdi
	movq	%r15, %rsi
	leaq	88(%rsp), %rdx
	callq	param_write_string
	testl	%eax, %eax
	cmovsl	%eax, %ebp
	sarl	$31, %eax
	andl	$-9, %eax
	addl	$10, %eax
.LBB0_34:                               # %cleanup.134
                                        #   in Loop: Header=BB0_9 Depth=1
	cmpl	$10, %eax
	je	.LBB0_36
# BB#35:                                # %cleanup.134
                                        #   in Loop: Header=BB0_9 Depth=1
	testl	%eax, %eax
	jne	.LBB0_38
.LBB0_36:                               # %for.inc.139
                                        #   in Loop: Header=BB0_9 Depth=1
	incq	%r12
	cmpq	32(%rsp), %r12          # 8-byte Folded Reload
	jl	.LBB0_9
.LBB0_37:                               # %for.end.141
	movq	24(%rsp), %rdi          # 8-byte Reload
	movq	(%rdi), %rax
	leaq	112(%rsp), %rdx
	movl	$.L.str, %esi
	callq	*16(%rax)
	movl	%eax, %ebp
	jmp	.LBB0_38
.LBB0_39:                               # %cleanup.134.thread
	movl	%esi, %ebp
.LBB0_38:                               # %cleanup.144
	movl	%ebp, %eax
	addq	$520, %rsp              # imm = 0x208
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	s_DCT_get_quantization_tables, .Lfunc_end0-s_DCT_get_quantization_tables
	.cfi_endproc

	.globl	s_DCT_get_huffman_tables
	.align	16, 0x90
	.type	s_DCT_get_huffman_tables,@function
s_DCT_get_huffman_tables:               # @s_DCT_get_huffman_tables
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
	subq	$56, %rsp
.Ltmp19:
	.cfi_def_cfa_offset 112
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
	movq	8(%rsi), %rbx
	testl	%ecx, %ecx
	je	.LBB1_2
# BB#1:                                 # %if.then
	movq	%rdi, 8(%rsp)           # 8-byte Spill
	movq	152(%rsi), %rax
	movl	520(%rax), %ebp
	leaq	624(%rax), %rcx
	movq	%rcx, 32(%rsp)          # 8-byte Spill
	leaq	656(%rax), %r14
	jmp	.LBB1_7
.LBB1_2:                                # %if.else
	movq	152(%rsi), %rax
	leaq	696(%rax), %rcx
	movq	%rcx, 32(%rsp)          # 8-byte Spill
	leaq	728(%rax), %r14
	movl	$92, %ecx
	.align	16, 0x90
.LBB1_3:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	leaq	-90(%rcx), %rbp
	testq	%rbp, %rbp
	jle	.LBB1_6
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB1_3 Depth=1
	cmpq	$0, -32(%rax,%rcx,8)
	jne	.LBB1_6
# BB#5:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB1_3 Depth=1
	cmpq	$0, (%rax,%rcx,8)
	leaq	-1(%rcx), %rcx
	je	.LBB1_3
.LBB1_6:                                # %lor.lhs.false.if.end.27.loopexit_crit_edge
	movq	%rdi, 8(%rsp)           # 8-byte Spill
.LBB1_7:                                # %if.end.27
	leal	(%rbp,%rbp), %esi
	movl	%esi, 28(%rsp)          # 4-byte Spill
	movl	$16, %edx
	movl	$.L.str.3, %ecx
	movq	%rbx, %rdi
	callq	*88(%rbx)
	movq	%rax, %rcx
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	movl	$-25, %eax
	testq	%rcx, %rcx
	je	.LBB1_15
# BB#8:                                 # %for.cond.31.preheader
	testl	%ebp, %ebp
	jle	.LBB1_14
# BB#9:                                 # %for.body.33.lr.ph
	movslq	28(%rsp), %r15          # 4-byte Folded Reload
	xorl	%r12d, %r12d
	movq	16(%rsp), %rbp          # 8-byte Reload
	.align	16, 0x90
.LBB1_11:                               # %for.body.33
                                        # =>This Inner Loop Header: Depth=1
	movl	%r12d, %eax
	sarl	%eax
	movslq	%eax, %r13
	movq	(%r14,%r13,8), %rsi
	movq	%rbp, %rdi
	movq	%rbx, %rdx
	callq	pack_huff_table
	testl	%eax, %eax
	js	.LBB1_15
# BB#12:                                # %lor.lhs.false.38
                                        #   in Loop: Header=BB1_11 Depth=1
	movq	32(%rsp), %rax          # 8-byte Reload
	movq	(%rax,%r13,8), %rsi
	leaq	16(%rbp), %rdi
	movq	%rbx, %rdx
	callq	pack_huff_table
	testl	%eax, %eax
	jne	.LBB1_13
# BB#10:                                # %for.cond.31
                                        #   in Loop: Header=BB1_11 Depth=1
	addq	$2, %r12
	addq	$32, %rbp
	cmpq	%r15, %r12
	jl	.LBB1_11
	jmp	.LBB1_14
.LBB1_13:                               # %for.end.50
	js	.LBB1_15
.LBB1_14:                               # %if.end.53
	movq	16(%rsp), %rax          # 8-byte Reload
	movq	%rax, 40(%rsp)
	movl	28(%rsp), %eax          # 4-byte Reload
	movl	%eax, 48(%rsp)
	movl	$1, 52(%rsp)
	leaq	40(%rsp), %rdx
	movl	$.L.str.4, %esi
	movq	8(%rsp), %rdi           # 8-byte Reload
	callq	param_write_string_array
.LBB1_15:                               # %cleanup
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	s_DCT_get_huffman_tables, .Lfunc_end1-s_DCT_get_huffman_tables
	.cfi_endproc

	.align	16, 0x90
	.type	pack_huff_table,@function
pack_huff_table:                        # @pack_huff_table
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
	pushq	%r12
.Ltmp29:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp30:
	.cfi_def_cfa_offset 48
.Ltmp31:
	.cfi_offset %rbx, -48
.Ltmp32:
	.cfi_offset %r12, -40
.Ltmp33:
	.cfi_offset %r14, -32
.Ltmp34:
	.cfi_offset %r15, -24
.Ltmp35:
	.cfi_offset %rbp, -16
	movq	%rdx, %rax
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movzbl	1(%rbx), %ecx
	movzbl	2(%rbx), %edx
	addq	%rcx, %rdx
	movzbl	3(%rbx), %ecx
	addq	%rdx, %rcx
	movzbl	4(%rbx), %edx
	addq	%rcx, %rdx
	movzbl	5(%rbx), %ecx
	addq	%rdx, %rcx
	movzbl	6(%rbx), %edx
	addq	%rcx, %rdx
	movzbl	7(%rbx), %ecx
	addq	%rdx, %rcx
	movzbl	8(%rbx), %edx
	addq	%rcx, %rdx
	movzbl	9(%rbx), %ecx
	addq	%rdx, %rcx
	movzbl	10(%rbx), %edx
	addq	%rcx, %rdx
	movzbl	11(%rbx), %ecx
	addq	%rdx, %rcx
	movzbl	12(%rbx), %edx
	addq	%rcx, %rdx
	movzbl	13(%rbx), %ecx
	addq	%rdx, %rcx
	movzbl	14(%rbx), %edx
	addq	%rcx, %rdx
	movzbl	15(%rbx), %ecx
	addq	%rdx, %rcx
	movzbl	16(%rbx), %r15d
	addq	%rcx, %r15
	leal	16(%r15), %r12d
	movl	$.L.str.6, %edx
	movq	%rax, %rdi
	movl	%r12d, %esi
	callq	*136(%rax)
	movq	%rax, %rbp
	movl	$-25, %eax
	testq	%rbp, %rbp
	je	.LBB2_2
# BB#1:                                 # %if.end
	leaq	1(%rbx), %rsi
	movl	$16, %edx
	movq	%rbp, %rdi
	callq	memcpy
	movq	%rbp, %rdi
	addq	$16, %rdi
	addq	$17, %rbx
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	memcpy
	movq	%rbp, (%r14)
	movl	%r12d, 8(%r14)
	movl	$1, 12(%r14)
	xorl	%eax, %eax
.LBB2_2:                                # %cleanup
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	pack_huff_table, .Lfunc_end2-pack_huff_table
	.cfi_endproc

	.globl	s_DCT_get_params
	.align	16, 0x90
	.type	s_DCT_get_params,@function
s_DCT_get_params:                       # @s_DCT_get_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp36:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp37:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp38:
	.cfi_def_cfa_offset 32
.Ltmp39:
	.cfi_offset %rbx, -32
.Ltmp40:
	.cfi_offset %r14, -24
.Ltmp41:
	.cfi_offset %r15, -16
	movq	%rdx, %r15
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movl	$s_DCT_param_items, %ecx
	callq	gs_param_write_items
	testl	%eax, %eax
	js	.LBB3_4
# BB#1:                                 # %if.then
	movq	152(%rbx), %rsi
	xorl	%edx, %edx
	testq	%r15, %r15
	je	.LBB3_3
# BB#2:                                 # %cond.true
	movq	152(%r15), %rdx
.LBB3_3:                                # %cond.end
	movl	$jsd_param_items, %ecx
	movq	%r14, %rdi
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	gs_param_write_items    # TAILCALL
.LBB3_4:                                # %if.end
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end3:
	.size	s_DCT_get_params, .Lfunc_end3-s_DCT_get_params
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI4_0:
	.long	1132396544              # float 255
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_1:
	.quad	4602678819172646912     # double 0.5
	.text
	.globl	s_DCT_byte_params
	.align	16, 0x90
	.type	s_DCT_byte_params,@function
s_DCT_byte_params:                      # @s_DCT_byte_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp42:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp43:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp44:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp45:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp46:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp47:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp48:
	.cfi_def_cfa_offset 96
.Ltmp49:
	.cfi_offset %rbx, -56
.Ltmp50:
	.cfi_offset %r12, -48
.Ltmp51:
	.cfi_offset %r13, -40
.Ltmp52:
	.cfi_offset %r14, -32
.Ltmp53:
	.cfi_offset %r15, -24
.Ltmp54:
	.cfi_offset %rbp, -16
	movq	%r8, %rbx
	movl	%ecx, %r14d
	movl	%edx, %r13d
	movq	%rsi, %r15
	movq	%rdi, %r12
	leaq	24(%rsp), %rdx
	callq	param_read_string
	testl	%eax, %eax
	je	.LBB4_1
# BB#19:                                # %sw.default
	leaq	8(%rsp), %rdx
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	param_read_float_array
	movl	%eax, %ebp
	testl	%ebp, %ebp
	je	.LBB4_20
# BB#26:                                # %sw.epilog
	movl	%ebp, %eax
	jns	.LBB4_28
	jmp	.LBB4_27
.LBB4_1:                                # %sw.bb
	leal	(%r14,%r13), %eax
	movl	$-15, %ebp
	cmpl	%eax, 32(%rsp)
	jb	.LBB4_27
# BB#2:                                 # %for.cond.preheader
	xorl	%eax, %eax
	testl	%r14d, %r14d
	jle	.LBB4_28
# BB#3:                                 # %for.body.lr.ph
	movabsq	$8589934560, %r9        # imm = 0x1FFFFFFE0
	movslq	%r13d, %r10
	movq	24(%rsp), %r8
	leal	-1(%r14), %edi
	leaq	1(%rdi), %r11
	xorl	%eax, %eax
	movq	%r11, %rbp
	andq	%r9, %rbp
	movl	$0, %esi
	je	.LBB4_12
# BB#4:                                 # %vector.memcheck
	leaq	(%r10,%rdi), %rcx
	leaq	(%rcx,%r8), %rcx
	xorl	%esi, %esi
	cmpq	%rbx, %rcx
	jb	.LBB4_6
# BB#5:                                 # %vector.memcheck
	leaq	(%rbx,%rdi), %rcx
	leaq	(%r8,%r10), %rdx
	cmpq	%rcx, %rdx
	jbe	.LBB4_12
.LBB4_6:                                # %vector.body.preheader
	leaq	1(%rdi), %rdx
	andq	%r9, %rdx
	addq	$-32, %rdx
	movq	%rdx, %rsi
	shrq	$5, %rsi
	xorl	%ecx, %ecx
	btq	$5, %rdx
	jb	.LBB4_8
# BB#7:                                 # %vector.body.prol
	movups	(%r8,%r10), %xmm0
	movupd	16(%r8,%r10), %xmm1
	movups	%xmm0, (%rbx)
	movupd	%xmm1, 16(%rbx)
	movl	$32, %ecx
.LBB4_8:                                # %vector.body.preheader.split
	testq	%rsi, %rsi
	je	.LBB4_11
# BB#9:                                 # %vector.body.preheader.split.split
	incq	%rdi
	andq	%r9, %rdi
	subq	%rcx, %rdi
	leaq	(%rcx,%r10), %rdx
	leaq	48(%r8,%rdx), %rsi
	leaq	48(%rcx,%rbx), %rcx
	.align	16, 0x90
.LBB4_10:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movups	-48(%rsi), %xmm0
	movups	-32(%rsi), %xmm1
	movups	%xmm0, -48(%rcx)
	movups	%xmm1, -32(%rcx)
	movups	-16(%rsi), %xmm0
	movupd	(%rsi), %xmm1
	movups	%xmm0, -16(%rcx)
	movupd	%xmm1, (%rcx)
	addq	$64, %rsi
	addq	$64, %rcx
	addq	$-64, %rdi
	jne	.LBB4_10
.LBB4_11:
	movq	%rbp, %rsi
.LBB4_12:                               # %middle.block
	cmpq	%rsi, %r11
	je	.LBB4_28
# BB#13:                                # %for.body.preheader
	leal	1(%r14), %edx
	movl	%esi, %ecx
	orl	$1, %ecx
	movl	%edx, %ebp
	subl	%ecx, %ebp
	movl	%r14d, %edi
	subl	%ecx, %edi
	testb	$3, %bpl
	je	.LBB4_16
# BB#14:                                # %for.body.prol.preheader
	leaq	(%r8,%r10), %rbp
	leal	1(%rsi), %ecx
	subl	%ecx, %edx
	andl	$3, %edx
	negl	%edx
	.align	16, 0x90
.LBB4_15:                               # %for.body.prol
                                        # =>This Inner Loop Header: Depth=1
	movb	(%rbp,%rsi), %cl
	movb	%cl, (%rbx,%rsi)
	incq	%rsi
	incl	%edx
	jne	.LBB4_15
.LBB4_16:                               # %for.body.preheader.split
	cmpl	$3, %edi
	jb	.LBB4_28
# BB#17:                                # %for.body.preheader.split.split
	subl	%esi, %r14d
	leaq	3(%rsi,%rbx), %rdx
	addq	%rsi, %r10
	leaq	3(%r8,%r10), %rcx
	.align	16, 0x90
.LBB4_18:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movb	-3(%rcx), %bl
	movb	%bl, -3(%rdx)
	movb	-2(%rcx), %bl
	movb	%bl, -2(%rdx)
	movb	-1(%rcx), %bl
	movb	%bl, -1(%rdx)
	movb	(%rcx), %bl
	movb	%bl, (%rdx)
	addq	$4, %rdx
	addq	$4, %rcx
	addl	$-4, %r14d
	jne	.LBB4_18
	jmp	.LBB4_28
.LBB4_20:                               # %if.then.6
	leal	(%r14,%r13), %eax
	movl	$-15, %ebp
	cmpl	%eax, 16(%rsp)
	jb	.LBB4_27
# BB#21:                                # %for.cond.12.preheader
	xorl	%eax, %eax
	testl	%r14d, %r14d
	jle	.LBB4_28
# BB#22:                                # %for.body.14.lr.ph
	movslq	%r14d, %rcx
	movslq	%r13d, %rdx
	shlq	$2, %rdx
	addq	8(%rsp), %rdx
	xorl	%esi, %esi
	xorps	%xmm0, %xmm0
	movsd	.LCPI4_1(%rip), %xmm1   # xmm1 = mem[0],zero
	.align	16, 0x90
.LBB4_23:                               # %for.body.14
                                        # =>This Inner Loop Header: Depth=1
	movss	(%rdx,%rsi,4), %xmm2    # xmm2 = mem[0],zero,zero,zero
	ucomiss	%xmm2, %xmm0
	ja	.LBB4_27
# BB#24:                                # %for.body.14
                                        #   in Loop: Header=BB4_23 Depth=1
	ucomiss	.LCPI4_0(%rip), %xmm2
	ja	.LBB4_27
# BB#25:                                # %for.inc.27
                                        #   in Loop: Header=BB4_23 Depth=1
	cvtss2sd	%xmm2, %xmm2
	addsd	%xmm1, %xmm2
	cvttsd2si	%xmm2, %eax
	movb	%al, (%rbx,%rsi)
	incq	%rsi
	xorl	%eax, %eax
	cmpq	%rcx, %rsi
	jl	.LBB4_23
	jmp	.LBB4_28
.LBB4_27:                               # %if.then.33
	movq	(%r12), %rax
	movq	%r12, %rdi
	movq	%r15, %rsi
	movl	%ebp, %edx
	callq	*56(%rax)
	movl	%ebp, %eax
.LBB4_28:                               # %cleanup.36
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	s_DCT_byte_params, .Lfunc_end4-s_DCT_byte_params
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI5_0:
	.long	1232348160              # float 1.0E+6
	.text
	.globl	s_DCT_put_params
	.align	16, 0x90
	.type	s_DCT_put_params,@function
s_DCT_put_params:                       # @s_DCT_put_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp55:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp56:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp57:
	.cfi_def_cfa_offset 32
.Ltmp58:
	.cfi_offset %rbx, -24
.Ltmp59:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movl	$s_DCT_param_items, %edx
	callq	gs_param_read_items
	testl	%eax, %eax
	js	.LBB5_6
# BB#1:                                 # %if.end
	movq	152(%r14), %rsi
	movl	$jsd_param_items, %edx
	movq	%rbx, %rdi
	callq	gs_param_read_items
	testl	%eax, %eax
	js	.LBB5_6
# BB#2:                                 # %if.end.4
	movq	152(%r14), %rcx
	movl	$-15, %eax
	cmpl	$1, 456(%rcx)
	ja	.LBB5_6
# BB#3:                                 # %lor.lhs.false.12
	cmpl	$1, 460(%rcx)
	ja	.LBB5_6
# BB#4:                                 # %lor.lhs.false.21
	movl	132(%r14), %ecx
	incl	%ecx
	cmpl	$3, %ecx
	ja	.LBB5_6
# BB#5:                                 # %lor.lhs.false.26
	movss	128(%r14), %xmm0        # xmm0 = mem[0],zero,zero,zero
	xorl	%eax, %eax
	ucomiss	.LCPI5_0(%rip), %xmm0
	movl	$-15, %ecx
	cmoval	%ecx, %eax
	xorps	%xmm1, %xmm1
	ucomiss	%xmm0, %xmm1
	cmoval	%ecx, %eax
.LBB5_6:                                # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end5:
	.size	s_DCT_put_params, .Lfunc_end5-s_DCT_put_params
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	4607182418800017408     # double 1
.LCPI6_1:
	.quad	4602678819172646912     # double 0.5
.LCPI6_2:
	.quad	4643176031446892544     # double 255
	.text
	.globl	s_DCT_put_quantization_tables
	.align	16, 0x90
	.type	s_DCT_put_quantization_tables,@function
s_DCT_put_quantization_tables:          # @s_DCT_put_quantization_tables
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp60:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp61:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp62:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp63:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp64:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp65:
	.cfi_def_cfa_offset 56
	subq	$248, %rsp
.Ltmp66:
	.cfi_def_cfa_offset 304
.Ltmp67:
	.cfi_offset %rbx, -56
.Ltmp68:
	.cfi_offset %r12, -48
.Ltmp69:
	.cfi_offset %r13, -40
.Ltmp70:
	.cfi_offset %r14, -32
.Ltmp71:
	.cfi_offset %r15, -24
.Ltmp72:
	.cfi_offset %rbp, -16
	movl	%edx, %ebp
	movq	%rsi, 40(%rsp)          # 8-byte Spill
	movq	%rdi, %rbx
	movq	(%rbx), %rax
	leaq	200(%rsp), %rdx
	movl	$1, %r15d
	movl	$.L.str, %esi
	movl	$1, %ecx
	callq	*8(%rax)
	testl	%eax, %eax
	jne	.LBB6_1
# BB#3:                                 # %sw.epilog
	testl	%ebp, %ebp
	je	.LBB6_6
# BB#4:                                 # %if.then
	movq	40(%rsp), %rax          # 8-byte Reload
	movq	152(%rax), %r14
	movl	556(%r14), %eax
	movl	$-15, %r15d
	cmpl	%eax, 208(%rsp)
	jb	.LBB6_39
# BB#5:                                 # %if.end
	movq	568(%r14), %rbp
	addq	$576, %r14              # imm = 0x240
	jmp	.LBB6_7
.LBB6_1:                                # %entry
	cmpl	$1, %eax
	je	.LBB6_39
# BB#2:                                 # %sw.default
	movq	(%rbx), %rcx
	movl	$.L.str, %esi
	movq	%rbx, %rdi
	movl	%eax, %edx
	callq	*56(%rcx)
	movl	%eax, %r15d
	jmp	.LBB6_39
.LBB6_6:                                # %if.else
	movl	208(%rsp), %eax
	movl	$664, %r14d             # imm = 0x298
	movq	40(%rsp), %rcx          # 8-byte Reload
	addq	152(%rcx), %r14
	xorl	%ebp, %ebp
.LBB6_7:                                # %if.end.16
	xorl	%r15d, %r15d
	testl	%eax, %eax
	jle	.LBB6_39
# BB#8:                                 # %for.body.lr.ph
	cltq
	movq	%rax, 32(%rsp)          # 8-byte Spill
	leaq	195(%rsp), %rbx
	xorl	%r12d, %r12d
	movl	$0, 60(%rsp)            # 4-byte Folded Spill
	.align	16, 0x90
.LBB6_9:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_18 Depth 2
                                        #     Child Loop BB6_12 Depth 2
                                        #     Child Loop BB6_26 Depth 2
	movl	$.L.str.1, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	movl	%r12d, %edx
	callq	gs_sprintf
	movq	200(%rsp), %r13
	movq	40(%rsp), %rax          # 8-byte Reload
	movss	128(%rax), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, 48(%rsp)         # 8-byte Spill
	movq	%r13, %rdi
	movq	%rbx, %rsi
	leaq	232(%rsp), %rdx
	callq	param_read_string
	testl	%eax, %eax
	je	.LBB6_10
# BB#15:                                # %sw.default.i
                                        #   in Loop: Header=BB6_9 Depth=1
	movq	%r13, %rdi
	movq	%rbx, %rsi
	leaq	216(%rsp), %rdx
	callq	param_read_float_array
	testl	%eax, %eax
	movsd	.LCPI6_0(%rip), %xmm3   # xmm3 = mem[0],zero
	movsd	.LCPI6_1(%rip), %xmm4   # xmm4 = mem[0],zero
	movsd	.LCPI6_2(%rip), %xmm5   # xmm5 = mem[0],zero
	movsd	48(%rsp), %xmm6         # 8-byte Reload
                                        # xmm6 = mem[0],zero
	jne	.LBB6_21
# BB#16:                                # %if.then.17.i
                                        #   in Loop: Header=BB6_9 Depth=1
	movl	$-15, %r15d
	cmpl	$64, 224(%rsp)
	jne	.LBB6_23
# BB#17:                                # %for.cond.23.preheader.i
                                        #   in Loop: Header=BB6_9 Depth=1
	movq	216(%rsp), %rcx
	xorl	%edx, %edx
	.align	16, 0x90
.LBB6_18:                               # %for.body.26.i
                                        #   Parent Loop BB6_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movss	(%rcx,%rdx,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm1
	mulsd	%xmm6, %xmm1
	ucomisd	%xmm1, %xmm3
	movapd	%xmm3, %xmm0
	ja	.LBB6_20
# BB#19:                                # %cond.false.36.i
                                        #   in Loop: Header=BB6_18 Depth=2
	movapd	%xmm5, %xmm0
	cmpltsd	%xmm1, %xmm0
	addsd	%xmm4, %xmm1
	movapd	%xmm0, %xmm2
	andpd	%xmm5, %xmm2
	andnpd	%xmm1, %xmm0
	orpd	%xmm2, %xmm0
.LBB6_20:                               # %cond.end.44.i
                                        #   in Loop: Header=BB6_18 Depth=2
	cvttsd2si	%xmm0, %esi
	movzbl	natural_order(%rdx), %edi
	movw	%si, 64(%rsp,%rdi,2)
	incq	%rdx
	cmpq	$64, %rdx
	jne	.LBB6_18
.LBB6_21:                               # %sw.epilog.i
                                        #   in Loop: Header=BB6_9 Depth=1
	testl	%eax, %eax
	movl	%eax, %r15d
	jns	.LBB6_22
	jmp	.LBB6_23
	.align	16, 0x90
.LBB6_10:                               # %sw.bb.i
                                        #   in Loop: Header=BB6_9 Depth=1
	movl	$-15, %r15d
	cmpl	$64, 240(%rsp)
	movsd	.LCPI6_0(%rip), %xmm3   # xmm3 = mem[0],zero
	movsd	.LCPI6_1(%rip), %xmm4   # xmm4 = mem[0],zero
	movsd	.LCPI6_2(%rip), %xmm5   # xmm5 = mem[0],zero
	movsd	48(%rsp), %xmm6         # 8-byte Reload
                                        # xmm6 = mem[0],zero
	jne	.LBB6_23
# BB#11:                                # %for.cond.preheader.i
                                        #   in Loop: Header=BB6_9 Depth=1
	movq	232(%rsp), %rax
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB6_12:                               # %for.body.i
                                        #   Parent Loop BB6_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rax,%rcx), %edx
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%edx, %xmm1
	mulsd	%xmm6, %xmm1
	ucomisd	%xmm1, %xmm3
	movapd	%xmm3, %xmm0
	ja	.LBB6_14
# BB#13:                                # %cond.false.i
                                        #   in Loop: Header=BB6_12 Depth=2
	movapd	%xmm5, %xmm0
	cmpltsd	%xmm1, %xmm0
	addsd	%xmm4, %xmm1
	movapd	%xmm0, %xmm2
	andpd	%xmm5, %xmm2
	andnpd	%xmm1, %xmm0
	orpd	%xmm2, %xmm0
.LBB6_14:                               # %cond.end.9.i
                                        #   in Loop: Header=BB6_12 Depth=2
	cvttsd2si	%xmm0, %edx
	movzbl	natural_order(%rcx), %esi
	movw	%dx, 64(%rsp,%rsi,2)
	incq	%rcx
	cmpq	$64, %rcx
	jne	.LBB6_12
.LBB6_22:                               # %quant_params.exit.thread
                                        #   in Loop: Header=BB6_9 Depth=1
	movq	%rbx, %r13
	jmp	.LBB6_24
	.align	16, 0x90
.LBB6_23:                               # %quant_params.exit
                                        #   in Loop: Header=BB6_9 Depth=1
	movq	(%r13), %rax
	movq	%r13, %rdi
	movq	%rbx, %rsi
	movq	%rbx, %r13
	movl	%r15d, %edx
	callq	*56(%rax)
	testl	%r15d, %r15d
	js	.LBB6_39
.LBB6_24:                               # %for.cond.27.preheader
                                        #   in Loop: Header=BB6_9 Depth=1
	xorl	%eax, %eax
	cmpl	$0, 60(%rsp)            # 4-byte Folded Reload
	movl	$0, %ebx
	jle	.LBB6_30
# BB#25:                                # %for.body.30.lr.ph
                                        #   in Loop: Header=BB6_9 Depth=1
	movq	%rbp, %r15
	movslq	60(%rsp), %rbp          # 4-byte Folded Reload
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB6_26:                               # %for.body.30
                                        #   Parent Loop BB6_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%r14,%rbx,8), %rdi
	movl	$128, %edx
	leaq	64(%rsp), %rsi
	callq	memcmp
	testl	%eax, %eax
	je	.LBB6_40
# BB#27:                                # %for.inc
                                        #   in Loop: Header=BB6_26 Depth=2
	incq	%rbx
	cmpq	%rbp, %rbx
	jl	.LBB6_26
# BB#28:                                # %for.cond.27.for.end_crit_edge
                                        #   in Loop: Header=BB6_9 Depth=1
	xorl	%eax, %eax
	jmp	.LBB6_29
	.align	16, 0x90
.LBB6_40:                               # %for.body.30.for.end_crit_edge
                                        #   in Loop: Header=BB6_9 Depth=1
	movb	$1, %al
.LBB6_29:                               # %for.end
                                        #   in Loop: Header=BB6_9 Depth=1
	movq	%r15, %rbp
.LBB6_30:                               # %for.end
                                        #   in Loop: Header=BB6_9 Depth=1
	testq	%rbp, %rbp
	je	.LBB6_32
# BB#31:                                # %if.then.39
                                        #   in Loop: Header=BB6_9 Depth=1
	leaq	(%r12,%r12,2), %rcx
	shlq	$5, %rcx
	movl	%ebx, 16(%rbp,%rcx)
.LBB6_32:                               # %if.end.42
                                        #   in Loop: Header=BB6_9 Depth=1
	testb	%al, %al
	jne	.LBB6_38
# BB#33:                                # %if.end.46
                                        #   in Loop: Header=BB6_9 Depth=1
	movl	$-15, %r15d
	cmpl	$3, 60(%rsp)            # 4-byte Folded Reload
	jg	.LBB6_39
# BB#34:                                # %if.end.51
                                        #   in Loop: Header=BB6_9 Depth=1
	movslq	%ebx, %rbx
	movq	(%r14,%rbx,8), %rax
	testq	%rax, %rax
	jne	.LBB6_37
# BB#35:                                # %if.then.56
                                        #   in Loop: Header=BB6_9 Depth=1
	movq	40(%rsp), %rdi          # 8-byte Reload
	callq	gs_jpeg_alloc_quant_table
	movl	$-25, %r15d
	testq	%rax, %rax
	je	.LBB6_39
# BB#36:                                # %if.end.61
                                        #   in Loop: Header=BB6_9 Depth=1
	movq	%rax, (%r14,%rbx,8)
.LBB6_37:                               # %if.end.64
                                        #   in Loop: Header=BB6_9 Depth=1
	incl	60(%rsp)                # 4-byte Folded Spill
	movl	$128, %edx
	movq	%rax, %rdi
	leaq	64(%rsp), %rsi
	callq	memcpy
.LBB6_38:                               # %for.inc.70
                                        #   in Loop: Header=BB6_9 Depth=1
	movq	%r13, %rbx
	incq	%r12
	xorl	%r15d, %r15d
	cmpq	32(%rsp), %r12          # 8-byte Folded Reload
	jl	.LBB6_9
.LBB6_39:                               # %cleanup.73
	movl	%r15d, %eax
	addq	$248, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	s_DCT_put_quantization_tables, .Lfunc_end6-s_DCT_put_quantization_tables
	.cfi_endproc

	.globl	s_DCT_put_huffman_tables
	.align	16, 0x90
	.type	s_DCT_put_huffman_tables,@function
s_DCT_put_huffman_tables:               # @s_DCT_put_huffman_tables
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp73:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp74:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp75:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp76:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp77:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp78:
	.cfi_def_cfa_offset 56
	subq	$360, %rsp              # imm = 0x168
.Ltmp79:
	.cfi_def_cfa_offset 416
.Ltmp80:
	.cfi_offset %rbx, -56
.Ltmp81:
	.cfi_offset %r12, -48
.Ltmp82:
	.cfi_offset %r13, -40
.Ltmp83:
	.cfi_offset %r14, -32
.Ltmp84:
	.cfi_offset %r15, -24
.Ltmp85:
	.cfi_offset %rbp, -16
	movl	%edx, %ebp
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	(%rbx), %rax
	leaq	344(%rsp), %rdx
	movl	$.L.str.4, %esi
	movl	$1, %ecx
	callq	*8(%rax)
	movl	%eax, %ecx
	testl	%ecx, %ecx
	jne	.LBB7_1
# BB#3:                                 # %sw.epilog
	testl	%ebp, %ebp
	je	.LBB7_8
# BB#4:                                 # %if.then
	movq	152(%r14), %rdx
	movl	520(%rdx), %ecx
	leal	(%rcx,%rcx), %r13d
	movl	$-15, %eax
	cmpl	%r13d, 352(%rsp)
	jb	.LBB7_47
# BB#5:                                 # %if.end
	movq	568(%rdx), %rsi
	cmpl	$0, 460(%rdx)
	leaq	624(%rdx), %rax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	leaq	656(%rdx), %rax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	je	.LBB7_6
# BB#7:                                 # %if.then.18
	movq	%r14, 16(%rsp)          # 8-byte Spill
	cmpl	$1, %ecx
	movl	$2, %eax
	cmovgl	%ecx, %eax
	movl	%eax, 12(%rsp)          # 4-byte Spill
	movq	%rsi, %r14
	jmp	.LBB7_11
.LBB7_1:                                # %entry
	xorl	%eax, %eax
	cmpl	$1, %ecx
	je	.LBB7_47
# BB#2:                                 # %sw.default
	movq	(%rbx), %rax
	movl	$.L.str.4, %esi
	movq	%rbx, %rdi
	movl	%ecx, %edx
	callq	*56(%rax)
	jmp	.LBB7_47
.LBB7_8:                                # %if.else
	movl	352(%rsp), %r13d
	movq	152(%r14), %rcx
	movq	%r14, 16(%rsp)          # 8-byte Spill
	movl	$2, %eax
	cmpl	$0, 460(%rcx)
	je	.LBB7_10
# BB#9:                                 # %select.mid
	movl	$4, %eax
.LBB7_10:                               # %select.end
	movl	%eax, 12(%rsp)          # 4-byte Spill
	leaq	696(%rcx), %rax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	addq	$728, %rcx              # imm = 0x2D8
	movq	%rcx, 56(%rsp)          # 8-byte Spill
	xorl	%r14d, %r14d
	jmp	.LBB7_11
.LBB7_6:
	movl	$2, 12(%rsp)            # 4-byte Folded Spill
	movq	%r14, 16(%rsp)          # 8-byte Spill
	movq	%rsi, %r14
.LBB7_11:                               # %if.end.44
	movl	%r13d, 36(%rsp)         # 4-byte Spill
	movq	%r14, 24(%rsp)          # 8-byte Spill
	testl	%r13d, %r13d
	movl	$0, 40(%rsp)            # 4-byte Folded Spill
	movl	$0, 44(%rsp)            # 4-byte Folded Spill
	jle	.LBB7_46
# BB#12:                                # %for.body.lr.ph
	movl	$0, 40(%rsp)            # 4-byte Folded Spill
	movl	$0, 44(%rsp)            # 4-byte Folded Spill
	xorl	%r15d, %r15d
	.align	16, 0x90
.LBB7_13:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_19 Depth 2
                                        #     Child Loop BB7_31 Depth 2
	movl	$.L.str.1, %esi
	xorl	%eax, %eax
	leaq	339(%rsp), %rbx
	movq	%rbx, %rdi
	movl	%r15d, %edx
	callq	gs_sprintf
	movq	344(%rsp), %rdi
	xorl	%edx, %edx
	movl	$16, %ecx
	movq	%rbx, %rsi
	leaq	320(%rsp), %r8
	callq	s_DCT_byte_params
	testl	%eax, %eax
	js	.LBB7_47
# BB#14:                                # %for.cond.54.preheader
                                        #   in Loop: Header=BB7_13 Depth=1
	movzbl	320(%rsp), %eax
	movzbl	321(%rsp), %ecx
	addq	%rax, %rcx
	movzbl	322(%rsp), %eax
	addq	%rcx, %rax
	movzbl	323(%rsp), %ecx
	addq	%rax, %rcx
	movzbl	324(%rsp), %eax
	addq	%rcx, %rax
	movzbl	325(%rsp), %ecx
	addq	%rax, %rcx
	movzbl	326(%rsp), %eax
	addq	%rcx, %rax
	movzbl	327(%rsp), %ecx
	addq	%rax, %rcx
	movzbl	328(%rsp), %eax
	addq	%rcx, %rax
	movzbl	329(%rsp), %ecx
	addq	%rax, %rcx
	movzbl	330(%rsp), %eax
	addq	%rcx, %rax
	movzbl	331(%rsp), %ecx
	addq	%rax, %rcx
	movzbl	332(%rsp), %eax
	addq	%rcx, %rax
	movzbl	333(%rsp), %ecx
	addq	%rax, %rcx
	movzbl	334(%rsp), %eax
	addq	%rcx, %rax
	movzbl	335(%rsp), %r12d
	addq	%rax, %r12
	movl	$-15, %eax
	cmpl	$256, %r12d             # imm = 0x100
	jg	.LBB7_47
# BB#15:                                # %if.end.60
                                        #   in Loop: Header=BB7_13 Depth=1
	movq	344(%rsp), %rdi
	movl	$16, %edx
	leaq	339(%rsp), %rsi
	movl	%r12d, %ecx
	leaq	64(%rsp), %r8
	callq	s_DCT_byte_params
	testl	%eax, %eax
	js	.LBB7_47
# BB#16:                                # %if.end.68
                                        #   in Loop: Header=BB7_13 Depth=1
	xorl	%ebx, %ebx
	testb	$1, %r15b
	jne	.LBB7_17
# BB#29:                                # %if.else.89
                                        #   in Loop: Header=BB7_13 Depth=1
	movl	44(%rsp), %ecx          # 4-byte Reload
	testl	%ecx, %ecx
	jle	.LBB7_35
# BB#30:                                # %for.body.lr.ph.i.71
                                        #   in Loop: Header=BB7_13 Depth=1
	movslq	%r12d, %r14
	movslq	%ecx, %r13
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB7_31:                               # %for.body.i.77
                                        #   Parent Loop BB7_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	48(%rsp), %rax          # 8-byte Reload
	movq	(%rax,%rbx,8), %rbp
	movl	$16, %edx
	movq	%rbp, %rdi
	leaq	320(%rsp), %rsi
	callq	memcmp
	testl	%eax, %eax
	jne	.LBB7_33
# BB#32:                                # %land.lhs.true.i.81
                                        #   in Loop: Header=BB7_31 Depth=2
	addq	$17, %rbp
	movq	%rbp, %rdi
	leaq	64(%rsp), %rsi
	movq	%r14, %rdx
	callq	memcmp
	testl	%eax, %eax
	je	.LBB7_34
.LBB7_33:                               # %for.inc.i.84
                                        #   in Loop: Header=BB7_31 Depth=2
	incq	%rbx
	cmpq	%r13, %rbx
	jl	.LBB7_31
.LBB7_34:                               # %for.cond.for.end_crit_edge.i.86
                                        #   in Loop: Header=BB7_13 Depth=1
	movl	36(%rsp), %r13d         # 4-byte Reload
	movq	24(%rsp), %r14          # 8-byte Reload
	movl	44(%rsp), %ecx          # 4-byte Reload
.LBB7_35:                               # %find_huff_values.exit88
                                        #   in Loop: Header=BB7_13 Depth=1
	testq	%r14, %r14
	je	.LBB7_37
# BB#36:                                # %if.then.95
                                        #   in Loop: Header=BB7_13 Depth=1
	movl	%r15d, %eax
	sarl	%eax
	cltq
	leaq	(%rax,%rax,2), %rax
	shlq	$5, %rax
	movl	%ebx, 20(%r14,%rax)
.LBB7_37:                               # %if.end.99
                                        #   in Loop: Header=BB7_13 Depth=1
	cmpl	%ecx, %ebx
	jge	.LBB7_39
# BB#38:                                #   in Loop: Header=BB7_13 Depth=1
	movl	%ecx, 44(%rsp)          # 4-byte Spill
	jmp	.LBB7_45
	.align	16, 0x90
.LBB7_17:                               # %if.then.70
                                        #   in Loop: Header=BB7_13 Depth=1
	movl	40(%rsp), %ecx          # 4-byte Reload
	testl	%ecx, %ecx
	jle	.LBB7_23
# BB#18:                                # %for.body.lr.ph.i
                                        #   in Loop: Header=BB7_13 Depth=1
	movq	%r14, %r13
	movslq	%ecx, %r14
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB7_19:                               # %for.body.i
                                        #   Parent Loop BB7_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	56(%rsp), %rax          # 8-byte Reload
	movq	(%rax,%rbx,8), %rbp
	movl	$16, %edx
	movq	%rbp, %rdi
	leaq	320(%rsp), %rsi
	callq	memcmp
	testl	%eax, %eax
	jne	.LBB7_21
# BB#20:                                # %land.lhs.true.i
                                        #   in Loop: Header=BB7_19 Depth=2
	addq	$17, %rbp
	movq	%rbp, %rdi
	leaq	64(%rsp), %rsi
	movq	%r12, %rdx
	callq	memcmp
	testl	%eax, %eax
	je	.LBB7_22
.LBB7_21:                               # %for.inc.i
                                        #   in Loop: Header=BB7_19 Depth=2
	incq	%rbx
	cmpq	%r14, %rbx
	jl	.LBB7_19
.LBB7_22:                               # %for.cond.for.end_crit_edge.i
                                        #   in Loop: Header=BB7_13 Depth=1
	movq	%r13, %r14
	movl	36(%rsp), %r13d         # 4-byte Reload
	movl	40(%rsp), %ecx          # 4-byte Reload
.LBB7_23:                               # %find_huff_values.exit
                                        #   in Loop: Header=BB7_13 Depth=1
	testq	%r14, %r14
	je	.LBB7_25
# BB#24:                                # %if.then.76
                                        #   in Loop: Header=BB7_13 Depth=1
	movl	%r15d, %eax
	sarl	%eax
	cltq
	leaq	(%rax,%rax,2), %rax
	shlq	$5, %rax
	movl	%ebx, 24(%r14,%rax)
.LBB7_25:                               # %if.end.79
                                        #   in Loop: Header=BB7_13 Depth=1
	cmpl	%ecx, %ebx
	jge	.LBB7_27
# BB#26:                                #   in Loop: Header=BB7_13 Depth=1
	movl	%ecx, 40(%rsp)          # 4-byte Spill
	jmp	.LBB7_45
	.align	16, 0x90
.LBB7_39:                               # %if.end.103
                                        #   in Loop: Header=BB7_13 Depth=1
	cmpl	$3, %ecx
	movl	%ecx, 44(%rsp)          # 4-byte Spill
	movl	$-15, %eax
	jg	.LBB7_47
# BB#40:                                # %if.end.108
                                        #   in Loop: Header=BB7_13 Depth=1
	incl	44(%rsp)                # 4-byte Folded Spill
	movslq	%ebx, %rax
	movq	48(%rsp), %rcx          # 8-byte Reload
	jmp	.LBB7_41
	.align	16, 0x90
.LBB7_27:                               # %if.end.83
                                        #   in Loop: Header=BB7_13 Depth=1
	cmpl	$3, %ecx
	movl	%ecx, 40(%rsp)          # 4-byte Spill
	movl	$-15, %eax
	jg	.LBB7_47
# BB#28:                                # %if.end.88
                                        #   in Loop: Header=BB7_13 Depth=1
	incl	40(%rsp)                # 4-byte Folded Spill
	movslq	%ebx, %rax
	movq	56(%rsp), %rcx          # 8-byte Reload
.LBB7_41:                               # %if.end.111
                                        #   in Loop: Header=BB7_13 Depth=1
	leaq	(%rcx,%rax,8), %rbx
	movq	(%rbx), %rbp
	testq	%rbp, %rbp
	jne	.LBB7_44
# BB#42:                                # %if.then.114
                                        #   in Loop: Header=BB7_13 Depth=1
	movq	16(%rsp), %rdi          # 8-byte Reload
	callq	gs_jpeg_alloc_huff_table
	movq	%rax, %rbp
	movl	$-25, %eax
	testq	%rbp, %rbp
	je	.LBB7_47
# BB#43:                                # %if.end.119
                                        #   in Loop: Header=BB7_13 Depth=1
	movq	%rbp, (%rbx)
.LBB7_44:                               # %if.end.120
                                        #   in Loop: Header=BB7_13 Depth=1
	movl	$16, %edx
	movq	%rbp, %rdi
	leaq	320(%rsp), %rsi
	callq	memcpy
	addq	$17, %rbp
	movslq	%r12d, %rdx
	movq	%rbp, %rdi
	leaq	64(%rsp), %rsi
	callq	memcpy
.LBB7_45:                               # %for.inc.131
                                        #   in Loop: Header=BB7_13 Depth=1
	incl	%r15d
	cmpl	%r13d, %r15d
	jl	.LBB7_13
.LBB7_46:                               # %for.end.133
	movl	12(%rsp), %ecx          # 4-byte Reload
	cmpl	%ecx, 40(%rsp)          # 4-byte Folded Reload
	movl	$-15, %eax
	movl	$0, %edx
	cmovgl	%eax, %edx
	cmpl	%ecx, 44(%rsp)          # 4-byte Folded Reload
	cmovgl	%eax, %edx
	movl	%edx, %eax
.LBB7_47:                               # %cleanup.140
	addq	$360, %rsp              # imm = 0x168
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	s_DCT_put_huffman_tables, .Lfunc_end7-s_DCT_put_huffman_tables
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"QuantTables"
	.size	.L.str, 12

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"%d"
	.size	.L.str.1, 3

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"quant_param_string"
	.size	.L.str.2, 19

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"get huffman tables"
	.size	.L.str.3, 19

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"HuffTables"
	.size	.L.str.4, 11

	.type	s_DCT_param_items,@object # @s_DCT_param_items
	.section	.rodata,"a",@progbits
	.align	16
s_DCT_param_items:
	.quad	.L.str.7
	.byte	2                       # 0x2
	.zero	1
	.short	132                     # 0x84
	.zero	4
	.quad	.L.str.8
	.byte	4                       # 0x4
	.zero	1
	.short	128                     # 0x80
	.zero	4
	.zero	16
	.size	s_DCT_param_items, 48

	.type	jsd_param_items,@object # @jsd_param_items
	.align	16
jsd_param_items:
	.quad	.L.str.9
	.byte	2                       # 0x2
	.zero	1
	.short	456                     # 0x1c8
	.zero	4
	.quad	.L.str.10
	.byte	2                       # 0x2
	.zero	1
	.short	460                     # 0x1cc
	.zero	4
	.zero	16
	.size	jsd_param_items, 48

	.type	inverse_natural_order,@object # @inverse_natural_order
	.align	16
inverse_natural_order:
	.ascii	"\000\001\005\006\016\017\033\034\002\004\007\r\020\032\035*\003\b\f\021\031\036)+\t\013\022\030\037(,5\n\023\027 '-46\024\026!&.37<\025\"%/28;=#$019:>?"
	.size	inverse_natural_order, 64

	.type	.L.str.5,@object        # @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"quant_param_array"
	.size	.L.str.5, 18

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"pack_huff_table"
	.size	.L.str.6, 16

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"ColorTransform"
	.size	.L.str.7, 15

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"QFactor"
	.size	.L.str.8, 8

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Picky"
	.size	.L.str.9, 6

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Relax"
	.size	.L.str.10, 6

	.type	natural_order,@object   # @natural_order
	.section	.rodata,"a",@progbits
	.align	16
natural_order:
	.ascii	"\000\001\b\020\t\002\003\n\021\030 \031\022\013\004\005\f\023\032!(0)\"\033\024\r\006\007\016\025\034#*1892+$\035\026\017\027\036%,3:;4-&\037'.5<=6/7>?"
	.size	natural_order, 64


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
