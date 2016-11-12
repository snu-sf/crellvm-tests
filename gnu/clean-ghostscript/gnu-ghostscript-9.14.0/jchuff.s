	.text
	.file	"jchuff.bc"
	.globl	jinit_huff_encoder
	.align	16, 0x90
	.type	jinit_huff_encoder,@function
jinit_huff_encoder:                     # @jinit_huff_encoder
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp0:
	.cfi_def_cfa_offset 16
.Ltmp1:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	8(%rbx), %rax
	movl	$1, %esi
	movl	$248, %edx
	callq	*(%rax)
	movq	%rax, 560(%rbx)
	movq	$start_pass_huff, (%rax)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 96(%rax)
	movups	%xmm0, 64(%rax)
	movups	%xmm0, 160(%rax)
	movups	%xmm0, 128(%rax)
	movq	$0, 144(%rax)
	movups	%xmm0, 112(%rax)
	movups	%xmm0, 80(%rax)
	movups	%xmm0, 176(%rax)
	movq	$0, 152(%rax)
	cmpl	$0, 348(%rbx)
	je	.LBB0_2
# BB#1:                                 # %if.then
	movq	$0, 240(%rax)
.LBB0_2:                                # %if.end
	popq	%rbx
	retq
.Lfunc_end0:
	.size	jinit_huff_encoder, .Lfunc_end0-jinit_huff_encoder
	.cfi_endproc

	.align	16, 0x90
	.type	start_pass_huff,@function
start_pass_huff:                        # @start_pass_huff
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
	pushq	%rax
.Ltmp8:
	.cfi_def_cfa_offset 64
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
	movl	%esi, %r14d
	movq	%rdi, %r12
	movq	560(%r12), %r15
	testl	%r14d, %r14d
	movl	$finish_pass_gather, %eax
	movl	$finish_pass_huff, %ecx
	cmovneq	%rax, %rcx
	movq	%rcx, 16(%r15)
	cmpl	$0, 348(%r12)
	je	.LBB1_10
# BB#1:                                 # %if.then.7
	movq	%r12, 216(%r15)
	movl	%r14d, 192(%r15)
	movl	460(%r12), %eax
	cmpl	$0, 468(%r12)
	je	.LBB1_2
# BB#5:                                 # %if.else.18
	testl	%eax, %eax
	je	.LBB1_6
# BB#7:                                 # %if.else.24
	movq	$encode_mcu_AC_refine, 8(%r15)
	cmpq	$0, 240(%r15)
	jne	.LBB1_9
# BB#8:                                 # %if.then.28
	movq	8(%r12), %rax
	movl	$1, %esi
	movl	$1000, %edx             # imm = 0x3E8
	movq	%r12, %rdi
	callq	*(%rax)
	movq	%rax, 240(%r15)
	jmp	.LBB1_9
.LBB1_10:                               # %if.else.34
	testl	%r14d, %r14d
	je	.LBB1_12
# BB#11:                                # %if.then.36
	movq	$encode_mcu_gather, 8(%r15)
	jmp	.LBB1_13
.LBB1_2:                                # %if.then.10
	testl	%eax, %eax
	je	.LBB1_3
# BB#4:                                 # %if.else.14
	movq	$encode_mcu_AC_first, 8(%r15)
	jmp	.LBB1_9
.LBB1_6:                                # %if.then.21
	movq	$encode_mcu_DC_refine, 8(%r15)
	jmp	.LBB1_9
.LBB1_12:                               # %if.else.39
	movq	$encode_mcu_huff, 8(%r15)
	jmp	.LBB1_13
.LBB1_3:                                # %if.then.12
	movq	$encode_mcu_DC_first, 8(%r15)
.LBB1_9:                                # %if.end.32
	movq	376(%r12), %rax
	movl	24(%rax), %eax
	movl	%eax, 224(%r15)
	movl	$0, 228(%r15)
	movl	$0, 232(%r15)
.LBB1_13:                               # %for.cond.preheader
	cmpl	$0, 372(%r12)
	jle	.LBB1_34
# BB#14:                                # %for.body.lr.ph
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB1_15:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	376(%r12,%rbx,8), %rbp
	cmpl	$0, 460(%r12)
	jne	.LBB1_25
# BB#16:                                # %land.lhs.true
                                        #   in Loop: Header=BB1_15 Depth=1
	cmpl	$0, 468(%r12)
	jne	.LBB1_25
# BB#17:                                # %if.then.51
                                        #   in Loop: Header=BB1_15 Depth=1
	movl	20(%rbp), %eax
	movslq	%eax, %r13
	testl	%r14d, %r14d
	je	.LBB1_23
# BB#18:                                # %if.then.53
                                        #   in Loop: Header=BB1_15 Depth=1
	cmpl	$4, %eax
	jb	.LBB1_20
# BB#19:                                # %if.then.56
                                        #   in Loop: Header=BB1_15 Depth=1
	movq	(%r12), %rcx
	movl	$52, 40(%rcx)
	movl	%eax, 44(%rcx)
	movq	%r12, %rdi
	callq	*(%rcx)
.LBB1_20:                               # %if.end.60
                                        #   in Loop: Header=BB1_15 Depth=1
	movq	128(%r15,%r13,8), %rdi
	testq	%rdi, %rdi
	jne	.LBB1_22
# BB#21:                                # %if.then.64
                                        #   in Loop: Header=BB1_15 Depth=1
	movq	8(%r12), %rax
	movl	$1, %esi
	movl	$2056, %edx             # imm = 0x808
	movq	%r12, %rdi
	callq	*(%rax)
	movq	%rax, %rdi
	movq	%rdi, 128(%r15,%r13,8)
.LBB1_22:                               # %if.end.71
                                        #   in Loop: Header=BB1_15 Depth=1
	xorl	%esi, %esi
	movl	$2056, %edx             # imm = 0x808
	callq	memset
	jmp	.LBB1_24
.LBB1_23:                               # %if.else.76
                                        #   in Loop: Header=BB1_15 Depth=1
	leaq	64(%r15,%r13,8), %rcx
	movl	$1, %esi
	movq	%r12, %rdi
	movl	%r13d, %edx
	callq	jpeg_make_c_derived_tbl
.LBB1_24:                               # %if.end.79
                                        #   in Loop: Header=BB1_15 Depth=1
	movl	$0, 36(%r15,%rbx,4)
	.align	16, 0x90
.LBB1_25:                               # %if.end.82
                                        #   in Loop: Header=BB1_15 Depth=1
	cmpl	$0, 464(%r12)
	je	.LBB1_33
# BB#26:                                # %if.then.84
                                        #   in Loop: Header=BB1_15 Depth=1
	movl	24(%rbp), %eax
	movslq	%eax, %rbp
	testl	%r14d, %r14d
	je	.LBB1_32
# BB#27:                                # %if.then.87
                                        #   in Loop: Header=BB1_15 Depth=1
	cmpl	$4, %eax
	jb	.LBB1_29
# BB#28:                                # %if.then.91
                                        #   in Loop: Header=BB1_15 Depth=1
	movq	(%r12), %rcx
	movl	$52, 40(%rcx)
	movl	%eax, 44(%rcx)
	movq	%r12, %rdi
	callq	*(%rcx)
.LBB1_29:                               # %if.end.100
                                        #   in Loop: Header=BB1_15 Depth=1
	movq	160(%r15,%rbp,8), %rdi
	testq	%rdi, %rdi
	jne	.LBB1_31
# BB#30:                                # %if.then.104
                                        #   in Loop: Header=BB1_15 Depth=1
	movq	8(%r12), %rax
	movl	$1, %esi
	movl	$2056, %edx             # imm = 0x808
	movq	%r12, %rdi
	callq	*(%rax)
	movq	%rax, %rdi
	movq	%rdi, 160(%r15,%rbp,8)
.LBB1_31:                               # %if.end.111
                                        #   in Loop: Header=BB1_15 Depth=1
	xorl	%esi, %esi
	movl	$2056, %edx             # imm = 0x808
	callq	memset
	jmp	.LBB1_33
	.align	16, 0x90
.LBB1_32:                               # %if.else.116
                                        #   in Loop: Header=BB1_15 Depth=1
	leaq	96(%r15,%rbp,8), %rcx
	xorl	%esi, %esi
	movq	%r12, %rdi
	movl	%ebp, %edx
	callq	jpeg_make_c_derived_tbl
.LBB1_33:                               # %for.inc
                                        #   in Loop: Header=BB1_15 Depth=1
	incq	%rbx
	movslq	372(%r12), %rax
	cmpq	%rax, %rbx
	jl	.LBB1_15
.LBB1_34:                               # %for.end
	movq	$0, 24(%r15)
	movl	$0, 32(%r15)
	movl	316(%r12), %eax
	movl	%eax, 56(%r15)
	movl	$0, 60(%r15)
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	start_pass_huff, .Lfunc_end1-start_pass_huff
	.cfi_endproc

	.align	16, 0x90
	.type	finish_pass_gather,@function
finish_pass_gather:                     # @finish_pass_gather
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp15:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp16:
	.cfi_def_cfa_offset 24
	pushq	%r13
.Ltmp17:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp18:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp19:
	.cfi_def_cfa_offset 48
	subq	$32, %rsp
.Ltmp20:
	.cfi_def_cfa_offset 80
.Ltmp21:
	.cfi_offset %rbx, -48
.Ltmp22:
	.cfi_offset %r12, -40
.Ltmp23:
	.cfi_offset %r13, -32
.Ltmp24:
	.cfi_offset %r14, -24
.Ltmp25:
	.cfi_offset %r15, -16
	movq	%rdi, %r15
	movq	560(%r15), %r14
	cmpl	$0, 348(%r15)
	je	.LBB2_2
# BB#1:                                 # %if.then
	movq	%r14, %rdi
	callq	emit_eobrun
.LBB2_2:                                # %if.end
	leaq	16(%rsp), %rdi
	xorl	%esi, %esi
	movl	$16, %edx
	callq	memset
	leaq	(%rsp), %rdi
	xorl	%esi, %esi
	movl	$16, %edx
	callq	memset
	cmpl	$0, 372(%r15)
	jle	.LBB2_16
# BB#3:                                 # %for.body.lr.ph
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB2_4:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	376(%r15,%rbx,8), %r12
	cmpl	$0, 460(%r15)
	jne	.LBB2_10
# BB#5:                                 # %land.lhs.true
                                        #   in Loop: Header=BB2_4 Depth=1
	cmpl	$0, 468(%r15)
	jne	.LBB2_10
# BB#6:                                 # %if.then.6
                                        #   in Loop: Header=BB2_4 Depth=1
	movslq	20(%r12), %r13
	cmpl	$0, 16(%rsp,%r13,4)
	jne	.LBB2_10
# BB#7:                                 # %if.then.10
                                        #   in Loop: Header=BB2_4 Depth=1
	movq	160(%r15,%r13,8), %rsi
	testq	%rsi, %rsi
	jne	.LBB2_9
# BB#8:                                 # %if.then.14
                                        #   in Loop: Header=BB2_4 Depth=1
	movq	%r15, %rdi
	callq	jpeg_alloc_huff_table
	movq	%rax, %rsi
	movq	%rsi, 160(%r15,%r13,8)
.LBB2_9:                                # %if.end.16
                                        #   in Loop: Header=BB2_4 Depth=1
	movq	128(%r14,%r13,8), %rdx
	movq	%r15, %rdi
	callq	jpeg_gen_optimal_table
	movl	$1, 16(%rsp,%r13,4)
	.align	16, 0x90
.LBB2_10:                               # %if.end.22
                                        #   in Loop: Header=BB2_4 Depth=1
	cmpl	$0, 464(%r15)
	je	.LBB2_15
# BB#11:                                # %if.then.24
                                        #   in Loop: Header=BB2_4 Depth=1
	movslq	24(%r12), %r12
	cmpl	$0, (%rsp,%r12,4)
	jne	.LBB2_15
# BB#12:                                # %if.then.28
                                        #   in Loop: Header=BB2_4 Depth=1
	movq	192(%r15,%r12,8), %rsi
	testq	%rsi, %rsi
	jne	.LBB2_14
# BB#13:                                # %if.then.32
                                        #   in Loop: Header=BB2_4 Depth=1
	movq	%r15, %rdi
	callq	jpeg_alloc_huff_table
	movq	%rax, %rsi
	movq	%rsi, 192(%r15,%r12,8)
.LBB2_14:                               # %if.end.34
                                        #   in Loop: Header=BB2_4 Depth=1
	movq	160(%r14,%r12,8), %rdx
	movq	%r15, %rdi
	callq	jpeg_gen_optimal_table
	movl	$1, (%rsp,%r12,4)
.LBB2_15:                               # %for.inc
                                        #   in Loop: Header=BB2_4 Depth=1
	incq	%rbx
	movslq	372(%r15), %rax
	cmpq	%rax, %rbx
	jl	.LBB2_4
.LBB2_16:                               # %for.end
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.Lfunc_end2:
	.size	finish_pass_gather, .Lfunc_end2-finish_pass_gather
	.cfi_endproc

	.align	16, 0x90
	.type	finish_pass_huff,@function
finish_pass_huff:                       # @finish_pass_huff
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
	subq	$56, %rsp
.Ltmp32:
	.cfi_def_cfa_offset 112
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
	movq	%rdi, %rbp
	movq	560(%rbp), %rbx
	cmpl	$0, 348(%rbp)
	movq	40(%rbp), %rax
	movq	(%rax), %r12
	je	.LBB3_2
# BB#1:                                 # %if.then
	movq	%r12, 200(%rbx)
	movq	8(%rax), %rax
	movq	%rax, 208(%rbx)
	movq	%rbx, %rdi
	callq	emit_eobrun
	movq	%rbx, %rdi
	callq	flush_bits_e
	movq	40(%rbp), %rax
	movups	200(%rbx), %xmm0
	movups	%xmm0, (%rax)
	jmp	.LBB3_16
.LBB3_2:                                # %if.else
	movq	%rbp, %r8
	movq	8(%rax), %rax
	movq	24(%rbx), %rdi
	movl	32(%rbx), %esi
	leaq	36(%rbx), %rdx
	movl	52(%rbx), %ecx
	movl	%ecx, 48(%rsp)
	movups	36(%rbx), %xmm0
	movaps	%xmm0, 32(%rsp)
	xorl	%ecx, %ecx
	testl	%esi, %esi
	jle	.LBB3_3
# BB#4:                                 # %while.body.i.preheader
	movq	%rdx, 16(%rsp)          # 8-byte Spill
	movq	%rbx, 24(%rsp)          # 8-byte Spill
	movl	$17, %ecx
	subl	%esi, %ecx
	movl	$127, %ebp
	shlq	%cl, %rbp
	orq	%rdi, %rbp
	movq	%rdi, 8(%rsp)           # 8-byte Spill
	movq	%rsi, (%rsp)            # 8-byte Spill
	leal	7(%rsi), %r15d
	movq	%r8, %rbx
	.align	16, 0x90
.LBB3_5:                                # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbp, %r13
	shrq	$16, %r13
	movb	%r13b, (%r12)
	incq	%r12
	decq	%rax
	jne	.LBB3_8
# BB#6:                                 # %if.then.17.i
                                        #   in Loop: Header=BB3_5 Depth=1
	movq	40(%rbx), %r14
	movq	%rbx, %rdi
	callq	*24(%r14)
	testl	%eax, %eax
	je	.LBB3_12
# BB#7:                                 # %dump_buffer_s.exit39
                                        #   in Loop: Header=BB3_5 Depth=1
	movq	(%r14), %r12
	movq	8(%r14), %rax
.LBB3_8:                                # %if.end.20.i
                                        #   in Loop: Header=BB3_5 Depth=1
	movzbl	%r13b, %ecx
	cmpl	$255, %ecx
	jne	.LBB3_14
# BB#9:                                 # %if.then.23.i
                                        #   in Loop: Header=BB3_5 Depth=1
	movb	$0, (%r12)
	incq	%r12
	decq	%rax
	jne	.LBB3_14
# BB#10:                                # %if.then.30.i
                                        #   in Loop: Header=BB3_5 Depth=1
	movq	%rbx, %rdi
	movq	40(%rdi), %rbx
	movq	%rdi, %r14
	callq	*24(%rbx)
	testl	%eax, %eax
	je	.LBB3_11
# BB#13:                                # %dump_buffer_s.exit
                                        #   in Loop: Header=BB3_5 Depth=1
	movq	(%rbx), %r12
	movq	8(%rbx), %rax
	movq	%r14, %rbx
	.align	16, 0x90
.LBB3_14:                               # %cleanup.i
                                        #   in Loop: Header=BB3_5 Depth=1
	shlq	$8, %rbp
	addl	$-8, %r15d
	xorl	%ecx, %ecx
	cmpl	$7, %r15d
	movl	$0, %edx
	jg	.LBB3_5
	jmp	.LBB3_15
.LBB3_3:
	movq	%rdx, 16(%rsp)          # 8-byte Spill
	movq	%rbx, 24(%rsp)          # 8-byte Spill
	xorl	%edx, %edx
	movq	%r8, %rbx
	jmp	.LBB3_15
.LBB3_11:
	movq	%r14, %rbx
.LBB3_12:                               # %if.then.19
	movq	(%rbx), %rax
	movl	$25, 40(%rax)
	movq	%rbx, %rdi
	callq	*(%rax)
	xorl	%eax, %eax
	movq	8(%rsp), %rcx           # 8-byte Reload
	movq	(%rsp), %rdx            # 8-byte Reload
.LBB3_15:                               # %if.end
	movq	40(%rbx), %rsi
	movq	%r12, (%rsi)
	movq	%rax, 8(%rsi)
	movq	24(%rsp), %rax          # 8-byte Reload
	movq	%rcx, 24(%rax)
	movl	%edx, 32(%rax)
	movl	48(%rsp), %eax
	movq	16(%rsp), %rcx          # 8-byte Reload
	movl	%eax, 16(%rcx)
	movaps	32(%rsp), %xmm0
	movups	%xmm0, (%rcx)
.LBB3_16:                               # %if.end.29
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	finish_pass_huff, .Lfunc_end3-finish_pass_huff
	.cfi_endproc

	.align	16, 0x90
	.type	encode_mcu_DC_first,@function
encode_mcu_DC_first:                    # @encode_mcu_DC_first
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp39:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp40:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp41:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp42:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp43:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp44:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp45:
	.cfi_def_cfa_offset 96
.Ltmp46:
	.cfi_offset %rbx, -56
.Ltmp47:
	.cfi_offset %r12, -48
.Ltmp48:
	.cfi_offset %r13, -40
.Ltmp49:
	.cfi_offset %r14, -32
.Ltmp50:
	.cfi_offset %r15, -24
.Ltmp51:
	.cfi_offset %rbp, -16
	movq	%rsi, 24(%rsp)          # 8-byte Spill
	movq	%rdi, %r15
	movq	%r15, 8(%rsp)           # 8-byte Spill
	movq	560(%r15), %r12
	movq	40(%r15), %rax
	movups	(%rax), %xmm0
	movups	%xmm0, 200(%r12)
	cmpl	$0, 316(%r15)
	je	.LBB4_3
# BB#1:                                 # %if.then
	cmpl	$0, 56(%r12)
	jne	.LBB4_3
# BB#2:                                 # %if.then.5
	movl	60(%r12), %esi
	movq	%r12, %rdi
	callq	emit_restart_e
.LBB4_3:                                # %for.cond.preheader
	cmpl	$0, 416(%r15)
	jle	.LBB4_43
# BB#4:                                 # %for.body.lr.ph
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB4_5:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_6 Depth 2
                                        #     Child Loop BB4_15 Depth 2
                                        #     Child Loop BB4_30 Depth 2
	movq	%rcx, 32(%rsp)          # 8-byte Spill
	movslq	420(%r15,%rcx,4), %rdx
	movq	376(%r15,%rdx,8), %rax
	movslq	20(%rax), %r14
	movq	24(%rsp), %rax          # 8-byte Reload
	movq	(%rax,%rcx,8), %rax
	movswl	(%rax), %esi
	movb	472(%r15), %cl
	sarl	%cl, %esi
	movl	%esi, %ebp
	subl	36(%r12,%rdx,4), %ebp
	movl	%ebp, %eax
	sarl	$31, %eax
	addl	%eax, %ebp
	movl	%esi, 36(%r12,%rdx,4)
	xorl	%ebp, %eax
	movl	$-1, %ecx
	movl	$0, %ebx
	je	.LBB4_9
	.align	16, 0x90
.LBB4_6:                                # %while.body
                                        #   Parent Loop BB4_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%ecx, %ebx
	sarl	%eax
	leal	1(%rbx), %ecx
	testl	%eax, %eax
	jne	.LBB4_6
# BB#7:                                 # %while.end
                                        #   in Loop: Header=BB4_5 Depth=1
	addl	$2, %ebx
	cmpl	$11, %ecx
	jl	.LBB4_9
# BB#8:                                 # %if.then.29
                                        #   in Loop: Header=BB4_5 Depth=1
	movq	(%r15), %rax
	movl	$6, 40(%rax)
	movq	%r15, %rdi
	callq	*(%rax)
.LBB4_9:                                # %if.end.31
                                        #   in Loop: Header=BB4_5 Depth=1
	cmpl	$0, 192(%r12)
	je	.LBB4_11
# BB#10:                                # %if.then.i
                                        #   in Loop: Header=BB4_5 Depth=1
	movslq	%ebx, %rax
	movq	128(%r12,%r14,8), %rcx
	incq	(%rcx,%rax,8)
	jmp	.LBB4_27
	.align	16, 0x90
.LBB4_11:                               # %if.else.i
                                        #   in Loop: Header=BB4_5 Depth=1
	movq	64(%r12,%r14,8), %rax
	movslq	%ebx, %rcx
	movl	(%rax,%rcx,4), %r14d
	movsbl	1024(%rax,%rcx), %r13d
	testl	%r13d, %r13d
	jne	.LBB4_13
# BB#12:                                # %if.end.i.i
                                        #   in Loop: Header=BB4_5 Depth=1
	movq	216(%r12), %rdi
	movq	(%rdi), %rax
	movl	$41, 40(%rax)
	callq	*(%rax)
	cmpl	$0, 192(%r12)
	jne	.LBB4_27
	.align	16, 0x90
.LBB4_13:                               # %if.end.5.i.i
                                        #   in Loop: Header=BB4_5 Depth=1
	movl	%ebp, 20(%rsp)          # 4-byte Spill
	movl	$1, %eax
	movb	%r13b, %cl
	shlq	%cl, %rax
	movl	%r13d, %ebp
	movl	$4294967295, %r13d      # imm = 0xFFFFFFFF
	addl	%eax, %r13d
	andq	%r14, %r13
	addl	32(%r12), %ebp
	movl	%ebp, 16(%rsp)          # 4-byte Spill
	movl	$24, %ecx
	subl	%ebp, %ecx
	shlq	%cl, %r13
	orq	24(%r12), %r13
	cmpl	$8, %ebp
	jl	.LBB4_14
	.align	16, 0x90
.LBB4_15:                               # %while.body.i.i
                                        #   Parent Loop BB4_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r13, %r14
	shrq	$16, %r14
	movq	200(%r12), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 200(%r12)
	movb	%r14b, (%rax)
	decq	208(%r12)
	jne	.LBB4_19
# BB#16:                                # %if.then.19.i.i
                                        #   in Loop: Header=BB4_15 Depth=2
	movq	216(%r12), %rdi
	movq	40(%rdi), %r15
	callq	*24(%r15)
	testl	%eax, %eax
	jne	.LBB4_18
# BB#17:                                # %if.then.i.25.i
                                        #   in Loop: Header=BB4_15 Depth=2
	movq	216(%r12), %rdi
	movq	(%rdi), %rax
	movl	$25, 40(%rax)
	callq	*(%rax)
.LBB4_18:                               # %dump_buffer_e.exit30.i
                                        #   in Loop: Header=BB4_15 Depth=2
	movups	(%r15), %xmm0
	movups	%xmm0, 200(%r12)
.LBB4_19:                               # %if.end.20.i.i
                                        #   in Loop: Header=BB4_15 Depth=2
	movzbl	%r14b, %eax
	cmpl	$255, %eax
	jne	.LBB4_24
# BB#20:                                # %if.then.23.i.i
                                        #   in Loop: Header=BB4_15 Depth=2
	movq	200(%r12), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 200(%r12)
	movb	$0, (%rax)
	decq	208(%r12)
	jne	.LBB4_24
# BB#21:                                # %if.then.30.i.i
                                        #   in Loop: Header=BB4_15 Depth=2
	movq	216(%r12), %rdi
	movq	40(%rdi), %r14
	callq	*24(%r14)
	testl	%eax, %eax
	jne	.LBB4_23
# BB#22:                                # %if.then.i.14.i
                                        #   in Loop: Header=BB4_15 Depth=2
	movq	216(%r12), %rdi
	movq	(%rdi), %rax
	movl	$25, 40(%rax)
	callq	*(%rax)
.LBB4_23:                               # %dump_buffer_e.exit.i
                                        #   in Loop: Header=BB4_15 Depth=2
	movups	(%r14), %xmm0
	movups	%xmm0, 200(%r12)
	.align	16, 0x90
.LBB4_24:                               # %if.end.32.i.i
                                        #   in Loop: Header=BB4_15 Depth=2
	shlq	$8, %r13
	addl	$-8, %ebp
	cmpl	$7, %ebp
	jg	.LBB4_15
# BB#25:                                # %while.cond.while.end_crit_edge.i.i
                                        #   in Loop: Header=BB4_5 Depth=1
	movl	16(%rsp), %eax          # 4-byte Reload
	andl	$7, %eax
	movq	8(%rsp), %r15           # 8-byte Reload
	jmp	.LBB4_26
.LBB4_14:                               #   in Loop: Header=BB4_5 Depth=1
	movq	8(%rsp), %r15           # 8-byte Reload
	movl	16(%rsp), %eax          # 4-byte Reload
.LBB4_26:                               # %while.end.i.i
                                        #   in Loop: Header=BB4_5 Depth=1
	movq	%r13, 24(%r12)
	movl	%eax, 32(%r12)
	movl	20(%rsp), %ebp          # 4-byte Reload
.LBB4_27:                               # %emit_dc_symbol.exit
                                        #   in Loop: Header=BB4_5 Depth=1
	testl	%ebx, %ebx
	je	.LBB4_42
# BB#28:                                # %if.end.i
                                        #   in Loop: Header=BB4_5 Depth=1
	cmpl	$0, 192(%r12)
	jne	.LBB4_42
# BB#29:                                # %if.end.5.i
                                        #   in Loop: Header=BB4_5 Depth=1
	movl	%ebp, %eax
	movl	$1, %edx
	movb	%bl, %cl
	shlq	%cl, %rdx
	movl	$4294967295, %r14d      # imm = 0xFFFFFFFF
	addl	%edx, %r14d
	andq	%rax, %r14
	addl	32(%r12), %ebx
	movl	$24, %ecx
	subl	%ebx, %ecx
	shlq	%cl, %r14
	orq	24(%r12), %r14
	cmpl	$8, %ebx
	movl	%ebx, %r15d
	jl	.LBB4_41
	.align	16, 0x90
.LBB4_30:                               # %while.body.i
                                        #   Parent Loop BB4_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r14, %rbp
	shrq	$16, %rbp
	movq	200(%r12), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 200(%r12)
	movb	%bpl, (%rax)
	decq	208(%r12)
	jne	.LBB4_34
# BB#31:                                # %if.then.19.i
                                        #   in Loop: Header=BB4_30 Depth=2
	movq	216(%r12), %rdi
	movq	40(%rdi), %r13
	callq	*24(%r13)
	testl	%eax, %eax
	jne	.LBB4_33
# BB#32:                                # %if.then.i.72
                                        #   in Loop: Header=BB4_30 Depth=2
	movq	216(%r12), %rdi
	movq	(%rdi), %rax
	movl	$25, 40(%rax)
	callq	*(%rax)
.LBB4_33:                               # %dump_buffer_e.exit77
                                        #   in Loop: Header=BB4_30 Depth=2
	movups	(%r13), %xmm0
	movups	%xmm0, 200(%r12)
.LBB4_34:                               # %if.end.20.i
                                        #   in Loop: Header=BB4_30 Depth=2
	movzbl	%bpl, %eax
	cmpl	$255, %eax
	jne	.LBB4_39
# BB#35:                                # %if.then.23.i
                                        #   in Loop: Header=BB4_30 Depth=2
	movq	200(%r12), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 200(%r12)
	movb	$0, (%rax)
	decq	208(%r12)
	jne	.LBB4_39
# BB#36:                                # %if.then.30.i
                                        #   in Loop: Header=BB4_30 Depth=2
	movq	216(%r12), %rdi
	movq	40(%rdi), %rbp
	callq	*24(%rbp)
	testl	%eax, %eax
	jne	.LBB4_38
# BB#37:                                # %if.then.i.61
                                        #   in Loop: Header=BB4_30 Depth=2
	movq	216(%r12), %rdi
	movq	(%rdi), %rax
	movl	$25, 40(%rax)
	callq	*(%rax)
.LBB4_38:                               # %dump_buffer_e.exit
                                        #   in Loop: Header=BB4_30 Depth=2
	movups	(%rbp), %xmm0
	movups	%xmm0, 200(%r12)
	.align	16, 0x90
.LBB4_39:                               # %if.end.32.i
                                        #   in Loop: Header=BB4_30 Depth=2
	shlq	$8, %r14
	addl	$-8, %r15d
	cmpl	$7, %r15d
	jg	.LBB4_30
# BB#40:                                # %while.cond.while.end_crit_edge.i
                                        #   in Loop: Header=BB4_5 Depth=1
	andl	$7, %ebx
.LBB4_41:                               # %while.end.i
                                        #   in Loop: Header=BB4_5 Depth=1
	movq	%r14, 24(%r12)
	movl	%ebx, 32(%r12)
	movq	8(%rsp), %r15           # 8-byte Reload
.LBB4_42:                               # %for.inc
                                        #   in Loop: Header=BB4_5 Depth=1
	movq	32(%rsp), %rcx          # 8-byte Reload
	incq	%rcx
	movslq	416(%r15), %rax
	cmpq	%rax, %rcx
	jl	.LBB4_5
.LBB4_43:                               # %for.end
	movq	40(%r15), %rax
	movups	200(%r12), %xmm0
	movups	%xmm0, (%rax)
	movl	316(%r15), %eax
	testl	%eax, %eax
	je	.LBB4_47
# BB#44:                                # %if.then.44
	movl	56(%r12), %ecx
	testl	%ecx, %ecx
	jne	.LBB4_46
# BB#45:                                # %if.then.48
	movl	%eax, 56(%r12)
	movl	60(%r12), %ecx
	incl	%ecx
	andl	$7, %ecx
	movl	%ecx, 60(%r12)
	movl	%eax, %ecx
.LBB4_46:                               # %if.end.54
	decl	%ecx
	movl	%ecx, 56(%r12)
.LBB4_47:                               # %if.end.57
	movl	$1, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	encode_mcu_DC_first, .Lfunc_end4-encode_mcu_DC_first
	.cfi_endproc

	.align	16, 0x90
	.type	encode_mcu_AC_first,@function
encode_mcu_AC_first:                    # @encode_mcu_AC_first
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp52:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp53:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp54:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp55:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp56:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp57:
	.cfi_def_cfa_offset 56
	subq	$72, %rsp
.Ltmp58:
	.cfi_def_cfa_offset 128
.Ltmp59:
	.cfi_offset %rbx, -56
.Ltmp60:
	.cfi_offset %r12, -48
.Ltmp61:
	.cfi_offset %r13, -40
.Ltmp62:
	.cfi_offset %r14, -32
.Ltmp63:
	.cfi_offset %r15, -24
.Ltmp64:
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	560(%rdi), %rbx
	movq	40(%rdi), %rax
	movups	(%rax), %xmm0
	movups	%xmm0, 200(%rbx)
	cmpl	$0, 316(%rdi)
	movq	%rdi, %rbp
	je	.LBB5_3
# BB#1:                                 # %if.then
	cmpl	$0, 56(%rbx)
	jne	.LBB5_3
# BB#2:                                 # %if.then.5
	movl	60(%rbx), %esi
	movq	%rbx, %rdi
	callq	emit_restart_e
.LBB5_3:                                # %if.end.6
	movq	%rbp, 8(%rsp)           # 8-byte Spill
	movslq	464(%rbp), %rcx
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	movslq	460(%rbp), %rdx
	cmpl	%ecx, %edx
	jg	.LBB5_78
# BB#4:                                 # %for.body.lr.ph
	movq	8(%rsp), %rax           # 8-byte Reload
	movl	472(%rax), %esi
	movl	%esi, 28(%rsp)          # 4-byte Spill
	movq	480(%rax), %rax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	movq	(%r14), %rax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	movq	%rdx, %r14
	.align	16, 0x90
.LBB5_5:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_14 Depth 2
                                        #       Child Loop BB5_27 Depth 3
                                        #     Child Loop BB5_18 Depth 2
                                        #     Child Loop BB5_44 Depth 2
                                        #     Child Loop BB5_61 Depth 2
	movq	%r14, 48(%rsp)          # 8-byte Spill
	movq	40(%rsp), %rax          # 8-byte Reload
	movslq	(%rax,%r14,4), %rax
	movq	32(%rsp), %rdx          # 8-byte Reload
	movswl	(%rdx,%rax,2), %r14d
	testl	%r14d, %r14d
	je	.LBB5_6
# BB#7:                                 # %if.end.17
                                        #   in Loop: Header=BB5_5 Depth=1
	testw	%r14w, %r14w
	js	.LBB5_8
# BB#9:                                 # %if.else
                                        #   in Loop: Header=BB5_5 Depth=1
	movq	%rcx, %rax
	movl	28(%rsp), %ecx          # 4-byte Reload
	sarl	%cl, %r14d
	movq	%rax, %rcx
	movl	%r14d, %eax
	jmp	.LBB5_10
	.align	16, 0x90
.LBB5_8:                                # %if.then.20
                                        #   in Loop: Header=BB5_5 Depth=1
	negl	%r14d
	movq	%rcx, %rax
	movl	28(%rsp), %ecx          # 4-byte Reload
	sarl	%cl, %r14d
	movq	%rax, %rcx
	movl	%r14d, %eax
	notl	%eax
.LBB5_10:                               # %if.end.22
                                        #   in Loop: Header=BB5_5 Depth=1
	testl	%r14d, %r14d
	je	.LBB5_6
# BB#11:                                # %if.end.27
                                        #   in Loop: Header=BB5_5 Depth=1
	movl	%eax, 24(%rsp)          # 4-byte Spill
	cmpl	$0, 228(%rbx)
	je	.LBB5_13
# BB#12:                                # %if.then.30
                                        #   in Loop: Header=BB5_5 Depth=1
	movq	%rbx, %rdi
	callq	emit_eobrun
.LBB5_13:                               # %while.cond.preheader
                                        #   in Loop: Header=BB5_5 Depth=1
	movq	56(%rsp), %rax          # 8-byte Reload
	cmpl	$15, %eax
	movl	%eax, %ebp
	jle	.LBB5_17
	.align	16, 0x90
.LBB5_14:                               # %while.body
                                        #   Parent Loop BB5_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_27 Depth 3
	cmpl	$0, 192(%rbx)
	movslq	224(%rbx), %rax
	je	.LBB5_23
# BB#15:                                # %if.then.i
                                        #   in Loop: Header=BB5_14 Depth=2
	movq	160(%rbx,%rax,8), %rax
	incq	1920(%rax)
	jmp	.LBB5_39
	.align	16, 0x90
.LBB5_23:                               # %if.else.i
                                        #   in Loop: Header=BB5_14 Depth=2
	movq	96(%rbx,%rax,8), %rax
	movl	960(%rax), %r12d
	movsbl	1264(%rax), %r15d
	testl	%r15d, %r15d
	jne	.LBB5_25
# BB#24:                                # %if.end.i
                                        #   in Loop: Header=BB5_14 Depth=2
	movq	216(%rbx), %rdi
	movq	(%rdi), %rax
	movl	$41, 40(%rax)
	callq	*(%rax)
	cmpl	$0, 192(%rbx)
	jne	.LBB5_39
	.align	16, 0x90
.LBB5_25:                               # %if.end.5.i
                                        #   in Loop: Header=BB5_14 Depth=2
	movl	%ebp, 68(%rsp)          # 4-byte Spill
	movl	$1, %eax
	movb	%r15b, %cl
	shlq	%cl, %rax
	movl	%r15d, %ebp
	movl	$4294967295, %r15d      # imm = 0xFFFFFFFF
	addl	%eax, %r15d
	andq	%r12, %r15
	addl	32(%rbx), %ebp
	movl	%ebp, 64(%rsp)          # 4-byte Spill
	movl	$24, %ecx
	subl	%ebp, %ecx
	shlq	%cl, %r15
	orq	24(%rbx), %r15
	cmpl	$8, %ebp
	jl	.LBB5_26
	.align	16, 0x90
.LBB5_27:                               # %while.body.i
                                        #   Parent Loop BB5_5 Depth=1
                                        #     Parent Loop BB5_14 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%r15, %r12
	shrq	$16, %r12
	movq	200(%rbx), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 200(%rbx)
	movb	%r12b, (%rax)
	decq	208(%rbx)
	jne	.LBB5_31
# BB#28:                                # %if.then.19.i
                                        #   in Loop: Header=BB5_27 Depth=3
	movq	216(%rbx), %rdi
	movq	40(%rdi), %r13
	callq	*24(%r13)
	testl	%eax, %eax
	jne	.LBB5_30
# BB#29:                                # %if.then.i.230
                                        #   in Loop: Header=BB5_27 Depth=3
	movq	216(%rbx), %rdi
	movq	(%rdi), %rax
	movl	$25, 40(%rax)
	callq	*(%rax)
.LBB5_30:                               # %dump_buffer_e.exit235
                                        #   in Loop: Header=BB5_27 Depth=3
	movups	(%r13), %xmm0
	movups	%xmm0, 200(%rbx)
.LBB5_31:                               # %if.end.20.i
                                        #   in Loop: Header=BB5_27 Depth=3
	movzbl	%r12b, %eax
	cmpl	$255, %eax
	jne	.LBB5_36
# BB#32:                                # %if.then.23.i
                                        #   in Loop: Header=BB5_27 Depth=3
	movq	200(%rbx), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 200(%rbx)
	movb	$0, (%rax)
	decq	208(%rbx)
	jne	.LBB5_36
# BB#33:                                # %if.then.30.i
                                        #   in Loop: Header=BB5_27 Depth=3
	movq	216(%rbx), %rdi
	movq	40(%rdi), %r12
	callq	*24(%r12)
	testl	%eax, %eax
	jne	.LBB5_35
# BB#34:                                # %if.then.i.72
                                        #   in Loop: Header=BB5_27 Depth=3
	movq	216(%rbx), %rdi
	movq	(%rdi), %rax
	movl	$25, 40(%rax)
	callq	*(%rax)
.LBB5_35:                               # %dump_buffer_e.exit
                                        #   in Loop: Header=BB5_27 Depth=3
	movups	(%r12), %xmm0
	movups	%xmm0, 200(%rbx)
	.align	16, 0x90
.LBB5_36:                               # %if.end.32.i
                                        #   in Loop: Header=BB5_27 Depth=3
	shlq	$8, %r15
	addl	$-8, %ebp
	cmpl	$7, %ebp
	jg	.LBB5_27
# BB#37:                                # %while.cond.while.end_crit_edge.i
                                        #   in Loop: Header=BB5_14 Depth=2
	movl	64(%rsp), %eax          # 4-byte Reload
	andl	$7, %eax
	movl	68(%rsp), %ebp          # 4-byte Reload
	jmp	.LBB5_38
.LBB5_26:                               #   in Loop: Header=BB5_14 Depth=2
	movl	68(%rsp), %ebp          # 4-byte Reload
	movl	64(%rsp), %eax          # 4-byte Reload
.LBB5_38:                               # %while.end.i
                                        #   in Loop: Header=BB5_14 Depth=2
	movq	%r15, 24(%rbx)
	movl	%eax, 32(%rbx)
.LBB5_39:                               # %emit_ac_symbol.exit
                                        #   in Loop: Header=BB5_14 Depth=2
	addl	$-16, %ebp
	cmpl	$15, %ebp
	jg	.LBB5_14
# BB#16:                                # %while.cond.while.cond.35.preheader_crit_edge
                                        #   in Loop: Header=BB5_5 Depth=1
	movq	56(%rsp), %rax          # 8-byte Reload
	andl	$15, %eax
	movq	%rax, 56(%rsp)          # 8-byte Spill
.LBB5_17:                               # %while.cond.35.preheader
                                        #   in Loop: Header=BB5_5 Depth=1
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB5_18:                               # %while.cond.35
                                        #   Parent Loop BB5_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	sarl	%r14d
	incl	%ebp
	testl	%r14d, %r14d
	jne	.LBB5_18
# BB#19:                                # %while.end.40
                                        #   in Loop: Header=BB5_5 Depth=1
	cmpl	$11, %ebp
	jl	.LBB5_21
# BB#20:                                # %if.then.43
                                        #   in Loop: Header=BB5_5 Depth=1
	movq	8(%rsp), %rdi           # 8-byte Reload
	movq	(%rdi), %rax
	movl	$6, 40(%rax)
	callq	*(%rax)
.LBB5_21:                               # %if.end.45
                                        #   in Loop: Header=BB5_5 Depth=1
	movslq	224(%rbx), %rax
	movq	56(%rsp), %rcx          # 8-byte Reload
	shll	$4, %ecx
	leal	(%rcx,%rbp), %ecx
	cmpl	$0, 192(%rbx)
	movq	48(%rsp), %r14          # 8-byte Reload
	je	.LBB5_40
# BB#22:                                # %if.then.i.81
                                        #   in Loop: Header=BB5_5 Depth=1
	movslq	%ecx, %rcx
	movq	160(%rbx,%rax,8), %rax
	incq	(%rax,%rcx,8)
	jmp	.LBB5_56
	.align	16, 0x90
.LBB5_6:                                # %if.then.16
                                        #   in Loop: Header=BB5_5 Depth=1
	movq	56(%rsp), %rax          # 8-byte Reload
	incl	%eax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	jmp	.LBB5_73
.LBB5_40:                               # %if.else.i.87
                                        #   in Loop: Header=BB5_5 Depth=1
	movq	96(%rbx,%rax,8), %rax
	movslq	%ecx, %rcx
	movl	(%rax,%rcx,4), %r15d
	movsbl	1024(%rax,%rcx), %r12d
	testl	%r12d, %r12d
	jne	.LBB5_42
# BB#41:                                # %if.end.i.98
                                        #   in Loop: Header=BB5_5 Depth=1
	movq	216(%rbx), %rdi
	movq	(%rdi), %rax
	movl	$41, 40(%rax)
	callq	*(%rax)
	cmpl	$0, 192(%rbx)
	jne	.LBB5_56
.LBB5_42:                               # %if.end.5.i.112
                                        #   in Loop: Header=BB5_5 Depth=1
	movl	$1, %eax
	movb	%r12b, %cl
	shlq	%cl, %rax
	movl	$4294967295, %r14d      # imm = 0xFFFFFFFF
	addl	%eax, %r14d
	andq	%r15, %r14
	addl	32(%rbx), %r12d
	movl	%r12d, 68(%rsp)         # 4-byte Spill
	movl	$24, %ecx
	subl	%r12d, %ecx
	shlq	%cl, %r14
	orq	24(%rbx), %r14
	cmpl	$8, %r12d
	movl	%r12d, %r15d
	jl	.LBB5_43
	.align	16, 0x90
.LBB5_44:                               # %while.body.i.123
                                        #   Parent Loop BB5_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r14, %r13
	shrq	$16, %r13
	movq	200(%rbx), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 200(%rbx)
	movb	%r13b, (%rax)
	decq	208(%rbx)
	jne	.LBB5_48
# BB#45:                                # %if.then.19.i.124
                                        #   in Loop: Header=BB5_44 Depth=2
	movq	216(%rbx), %rdi
	movq	40(%rdi), %r12
	callq	*24(%r12)
	testl	%eax, %eax
	jne	.LBB5_47
# BB#46:                                # %if.then.i.244
                                        #   in Loop: Header=BB5_44 Depth=2
	movq	216(%rbx), %rdi
	movq	(%rdi), %rax
	movl	$25, 40(%rax)
	callq	*(%rax)
.LBB5_47:                               # %dump_buffer_e.exit249
                                        #   in Loop: Header=BB5_44 Depth=2
	movups	(%r12), %xmm0
	movups	%xmm0, 200(%rbx)
.LBB5_48:                               # %if.end.20.i.127
                                        #   in Loop: Header=BB5_44 Depth=2
	movzbl	%r13b, %eax
	cmpl	$255, %eax
	jne	.LBB5_53
# BB#49:                                # %if.then.23.i.131
                                        #   in Loop: Header=BB5_44 Depth=2
	movq	200(%rbx), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 200(%rbx)
	movb	$0, (%rax)
	decq	208(%rbx)
	jne	.LBB5_53
# BB#50:                                # %if.then.30.i.132
                                        #   in Loop: Header=BB5_44 Depth=2
	movq	216(%rbx), %rdi
	movq	40(%rdi), %r12
	callq	*24(%r12)
	testl	%eax, %eax
	jne	.LBB5_52
# BB#51:                                # %if.then.i.150
                                        #   in Loop: Header=BB5_44 Depth=2
	movq	216(%rbx), %rdi
	movq	(%rdi), %rax
	movl	$25, 40(%rax)
	callq	*(%rax)
.LBB5_52:                               # %dump_buffer_e.exit155
                                        #   in Loop: Header=BB5_44 Depth=2
	movups	(%r12), %xmm0
	movups	%xmm0, 200(%rbx)
	.align	16, 0x90
.LBB5_53:                               # %if.end.32.i.136
                                        #   in Loop: Header=BB5_44 Depth=2
	shlq	$8, %r14
	addl	$-8, %r15d
	cmpl	$7, %r15d
	jg	.LBB5_44
# BB#54:                                # %while.cond.while.end_crit_edge.i.137
                                        #   in Loop: Header=BB5_5 Depth=1
	movl	68(%rsp), %eax          # 4-byte Reload
	andl	$7, %eax
	jmp	.LBB5_55
.LBB5_43:                               #   in Loop: Header=BB5_5 Depth=1
	movl	68(%rsp), %eax          # 4-byte Reload
.LBB5_55:                               # %while.end.i.140
                                        #   in Loop: Header=BB5_5 Depth=1
	movq	%r14, 24(%rbx)
	movl	%eax, 32(%rbx)
	movq	48(%rsp), %r14          # 8-byte Reload
.LBB5_56:                               # %emit_ac_symbol.exit89
                                        #   in Loop: Header=BB5_5 Depth=1
	testl	%ebp, %ebp
	jne	.LBB5_58
# BB#57:                                # %if.then.i.161
                                        #   in Loop: Header=BB5_5 Depth=1
	movq	216(%rbx), %rdi
	movq	(%rdi), %rax
	movl	$41, 40(%rax)
	callq	*(%rax)
.LBB5_58:                               # %if.end.i.164
                                        #   in Loop: Header=BB5_5 Depth=1
	xorl	%eax, %eax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	cmpl	$0, 192(%rbx)
	je	.LBB5_60
# BB#59:                                #   in Loop: Header=BB5_5 Depth=1
	movq	16(%rsp), %rcx          # 8-byte Reload
	jmp	.LBB5_74
.LBB5_60:                               # %if.end.5.i.178
                                        #   in Loop: Header=BB5_5 Depth=1
	movq	%r14, 48(%rsp)          # 8-byte Spill
	movl	24(%rsp), %eax          # 4-byte Reload
	movl	$1, %edx
	movb	%bpl, %cl
	shlq	%cl, %rdx
	movl	$4294967295, %r14d      # imm = 0xFFFFFFFF
	addl	%edx, %r14d
	andq	%rax, %r14
	addl	32(%rbx), %ebp
	movl	$24, %ecx
	subl	%ebp, %ecx
	shlq	%cl, %r14
	orq	24(%rbx), %r14
	cmpl	$8, %ebp
	movl	%ebp, %r15d
	jl	.LBB5_72
	.align	16, 0x90
.LBB5_61:                               # %while.body.i.189
                                        #   Parent Loop BB5_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r14, %r12
	shrq	$16, %r12
	movq	200(%rbx), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 200(%rbx)
	movb	%r12b, (%rax)
	decq	208(%rbx)
	jne	.LBB5_65
# BB#62:                                # %if.then.19.i.190
                                        #   in Loop: Header=BB5_61 Depth=2
	movq	216(%rbx), %rdi
	movq	40(%rdi), %r13
	callq	*24(%r13)
	testl	%eax, %eax
	jne	.LBB5_64
# BB#63:                                # %if.then.i.258
                                        #   in Loop: Header=BB5_61 Depth=2
	movq	216(%rbx), %rdi
	movq	(%rdi), %rax
	movl	$25, 40(%rax)
	callq	*(%rax)
.LBB5_64:                               # %dump_buffer_e.exit263
                                        #   in Loop: Header=BB5_61 Depth=2
	movups	(%r13), %xmm0
	movups	%xmm0, 200(%rbx)
.LBB5_65:                               # %if.end.20.i.193
                                        #   in Loop: Header=BB5_61 Depth=2
	movzbl	%r12b, %eax
	cmpl	$255, %eax
	jne	.LBB5_70
# BB#66:                                # %if.then.23.i.197
                                        #   in Loop: Header=BB5_61 Depth=2
	movq	200(%rbx), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 200(%rbx)
	movb	$0, (%rax)
	decq	208(%rbx)
	jne	.LBB5_70
# BB#67:                                # %if.then.30.i.198
                                        #   in Loop: Header=BB5_61 Depth=2
	movq	216(%rbx), %rdi
	movq	40(%rdi), %r12
	callq	*24(%r12)
	testl	%eax, %eax
	jne	.LBB5_69
# BB#68:                                # %if.then.i.216
                                        #   in Loop: Header=BB5_61 Depth=2
	movq	216(%rbx), %rdi
	movq	(%rdi), %rax
	movl	$25, 40(%rax)
	callq	*(%rax)
.LBB5_69:                               # %dump_buffer_e.exit221
                                        #   in Loop: Header=BB5_61 Depth=2
	movups	(%r12), %xmm0
	movups	%xmm0, 200(%rbx)
	.align	16, 0x90
.LBB5_70:                               # %if.end.32.i.202
                                        #   in Loop: Header=BB5_61 Depth=2
	shlq	$8, %r14
	addl	$-8, %r15d
	cmpl	$7, %r15d
	jg	.LBB5_61
# BB#71:                                # %while.cond.while.end_crit_edge.i.203
                                        #   in Loop: Header=BB5_5 Depth=1
	andl	$7, %ebp
.LBB5_72:                               # %while.end.i.206
                                        #   in Loop: Header=BB5_5 Depth=1
	movq	16(%rsp), %rcx          # 8-byte Reload
	movq	%r14, 24(%rbx)
	movl	%ebp, 32(%rbx)
	.align	16, 0x90
.LBB5_73:                               # %for.inc
                                        #   in Loop: Header=BB5_5 Depth=1
	movq	48(%rsp), %r14          # 8-byte Reload
.LBB5_74:                               # %for.inc
                                        #   in Loop: Header=BB5_5 Depth=1
	cmpq	%rcx, %r14
	leaq	1(%r14), %r14
	jl	.LBB5_5
# BB#75:                                # %for.end
	movq	56(%rsp), %rax          # 8-byte Reload
	testl	%eax, %eax
	jle	.LBB5_78
# BB#76:                                # %if.then.50
	movl	228(%rbx), %eax
	incl	%eax
	movl	%eax, 228(%rbx)
	cmpl	$32767, %eax            # imm = 0x7FFF
	jne	.LBB5_78
# BB#77:                                # %if.then.56
	movq	%rbx, %rdi
	callq	emit_eobrun
.LBB5_78:                               # %if.end.58
	movq	8(%rsp), %rcx           # 8-byte Reload
	movq	40(%rcx), %rax
	movups	200(%rbx), %xmm0
	movups	%xmm0, (%rax)
	movl	316(%rcx), %eax
	testl	%eax, %eax
	je	.LBB5_82
# BB#79:                                # %if.then.67
	movl	56(%rbx), %ecx
	testl	%ecx, %ecx
	jne	.LBB5_81
# BB#80:                                # %if.then.71
	movl	%eax, 56(%rbx)
	movl	60(%rbx), %ecx
	incl	%ecx
	andl	$7, %ecx
	movl	%ecx, 60(%rbx)
	movl	%eax, %ecx
.LBB5_81:                               # %if.end.77
	decl	%ecx
	movl	%ecx, 56(%rbx)
.LBB5_82:                               # %if.end.79
	movl	$1, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	encode_mcu_AC_first, .Lfunc_end5-encode_mcu_AC_first
	.cfi_endproc

	.align	16, 0x90
	.type	encode_mcu_DC_refine,@function
encode_mcu_DC_refine:                   # @encode_mcu_DC_refine
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp65:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp66:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp67:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp68:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp69:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp70:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp71:
	.cfi_def_cfa_offset 96
.Ltmp72:
	.cfi_offset %rbx, -56
.Ltmp73:
	.cfi_offset %r12, -48
.Ltmp74:
	.cfi_offset %r13, -40
.Ltmp75:
	.cfi_offset %r14, -32
.Ltmp76:
	.cfi_offset %r15, -24
.Ltmp77:
	.cfi_offset %rbp, -16
	movq	%rsi, 24(%rsp)          # 8-byte Spill
	movq	%rdi, 8(%rsp)           # 8-byte Spill
	movq	560(%rdi), %rbx
	movq	40(%rdi), %rax
	movups	(%rax), %xmm0
	movups	%xmm0, 200(%rbx)
	cmpl	$0, 316(%rdi)
	je	.LBB6_3
# BB#1:                                 # %if.then
	cmpl	$0, 56(%rbx)
	jne	.LBB6_3
# BB#2:                                 # %if.then.5
	movl	60(%rbx), %esi
	movq	%rbx, %rdi
	callq	emit_restart_e
.LBB6_3:                                # %if.end.6
	movq	8(%rsp), %rax           # 8-byte Reload
	movl	416(%rax), %eax
	testl	%eax, %eax
	jle	.LBB6_21
# BB#4:                                 # %for.body.lr.ph
	movq	8(%rsp), %rcx           # 8-byte Reload
	movl	472(%rcx), %ecx
	movl	%ecx, 20(%rsp)          # 4-byte Spill
	xorl	%r13d, %r13d
	.align	16, 0x90
.LBB6_5:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_8 Depth 2
	cmpl	$0, 192(%rbx)
	jne	.LBB6_20
# BB#6:                                 # %if.end.5.i
                                        #   in Loop: Header=BB6_5 Depth=1
	movq	24(%rsp), %rcx          # 8-byte Reload
	movq	(%rcx,%r13,8), %rcx
	movswl	(%rcx), %r14d
	movl	20(%rsp), %ecx          # 4-byte Reload
	shrl	%cl, %r14d
	andl	$1, %r14d
	movl	32(%rbx), %r15d
	movl	$23, %ecx
	subl	%r15d, %ecx
	incl	%r15d
	movl	%r15d, 36(%rsp)         # 4-byte Spill
	shlq	%cl, %r14
	orq	24(%rbx), %r14
	cmpl	$8, %r15d
	jl	.LBB6_7
	.align	16, 0x90
.LBB6_8:                                # %while.body.i
                                        #   Parent Loop BB6_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r14, %rbp
	shrq	$16, %rbp
	movq	200(%rbx), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 200(%rbx)
	movb	%bpl, (%rax)
	decq	208(%rbx)
	jne	.LBB6_12
# BB#9:                                 # %if.then.19.i
                                        #   in Loop: Header=BB6_8 Depth=2
	movq	216(%rbx), %rdi
	movq	40(%rdi), %r12
	callq	*24(%r12)
	testl	%eax, %eax
	jne	.LBB6_11
# BB#10:                                # %if.then.i.36
                                        #   in Loop: Header=BB6_8 Depth=2
	movq	216(%rbx), %rdi
	movq	(%rdi), %rax
	movl	$25, 40(%rax)
	callq	*(%rax)
.LBB6_11:                               # %dump_buffer_e.exit40
                                        #   in Loop: Header=BB6_8 Depth=2
	movups	(%r12), %xmm0
	movups	%xmm0, 200(%rbx)
.LBB6_12:                               # %if.end.20.i
                                        #   in Loop: Header=BB6_8 Depth=2
	movzbl	%bpl, %eax
	cmpl	$255, %eax
	jne	.LBB6_17
# BB#13:                                # %if.then.23.i
                                        #   in Loop: Header=BB6_8 Depth=2
	movq	200(%rbx), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 200(%rbx)
	movb	$0, (%rax)
	decq	208(%rbx)
	jne	.LBB6_17
# BB#14:                                # %if.then.30.i
                                        #   in Loop: Header=BB6_8 Depth=2
	movq	216(%rbx), %rdi
	movq	40(%rdi), %rbp
	callq	*24(%rbp)
	testl	%eax, %eax
	jne	.LBB6_16
# BB#15:                                # %if.then.i
                                        #   in Loop: Header=BB6_8 Depth=2
	movq	216(%rbx), %rdi
	movq	(%rdi), %rax
	movl	$25, 40(%rax)
	callq	*(%rax)
.LBB6_16:                               # %dump_buffer_e.exit
                                        #   in Loop: Header=BB6_8 Depth=2
	movups	(%rbp), %xmm0
	movups	%xmm0, 200(%rbx)
	.align	16, 0x90
.LBB6_17:                               # %if.end.32.i
                                        #   in Loop: Header=BB6_8 Depth=2
	shlq	$8, %r14
	addl	$-8, %r15d
	cmpl	$7, %r15d
	jg	.LBB6_8
# BB#18:                                # %while.cond.while.end_crit_edge.i
                                        #   in Loop: Header=BB6_5 Depth=1
	movl	36(%rsp), %ecx          # 4-byte Reload
	andl	$7, %ecx
	movq	8(%rsp), %rax           # 8-byte Reload
	movl	416(%rax), %eax
	jmp	.LBB6_19
.LBB6_7:                                #   in Loop: Header=BB6_5 Depth=1
	movl	36(%rsp), %ecx          # 4-byte Reload
.LBB6_19:                               # %while.end.i
                                        #   in Loop: Header=BB6_5 Depth=1
	movq	%r14, 24(%rbx)
	movl	%ecx, 32(%rbx)
.LBB6_20:                               # %emit_bits_e.exit
                                        #   in Loop: Header=BB6_5 Depth=1
	incq	%r13
	movslq	%eax, %rcx
	cmpq	%rcx, %r13
	jl	.LBB6_5
.LBB6_21:                               # %for.end
	movq	8(%rsp), %rcx           # 8-byte Reload
	movq	40(%rcx), %rax
	movups	200(%rbx), %xmm0
	movups	%xmm0, (%rax)
	movl	316(%rcx), %eax
	testl	%eax, %eax
	je	.LBB6_25
# BB#22:                                # %if.then.19
	movl	56(%rbx), %ecx
	testl	%ecx, %ecx
	jne	.LBB6_24
# BB#23:                                # %if.then.23
	movl	%eax, 56(%rbx)
	movl	60(%rbx), %ecx
	incl	%ecx
	andl	$7, %ecx
	movl	%ecx, 60(%rbx)
	movl	%eax, %ecx
.LBB6_24:                               # %if.end.29
	decl	%ecx
	movl	%ecx, 56(%rbx)
.LBB6_25:                               # %if.end.31
	movl	$1, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	encode_mcu_DC_refine, .Lfunc_end6-encode_mcu_DC_refine
	.cfi_endproc

	.align	16, 0x90
	.type	encode_mcu_AC_refine,@function
encode_mcu_AC_refine:                   # @encode_mcu_AC_refine
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp78:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp79:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp80:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp81:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp82:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp83:
	.cfi_def_cfa_offset 56
	subq	$360, %rsp              # imm = 0x168
.Ltmp84:
	.cfi_def_cfa_offset 416
.Ltmp85:
	.cfi_offset %rbx, -56
.Ltmp86:
	.cfi_offset %r12, -48
.Ltmp87:
	.cfi_offset %r13, -40
.Ltmp88:
	.cfi_offset %r14, -32
.Ltmp89:
	.cfi_offset %r15, -24
.Ltmp90:
	.cfi_offset %rbp, -16
	movq	%rsi, %rbx
	movq	%rdi, %rbp
	movq	560(%rbp), %r13
	movq	40(%rbp), %rax
	movups	(%rax), %xmm0
	movups	%xmm0, 200(%r13)
	cmpl	$0, 316(%rbp)
	je	.LBB7_3
# BB#1:                                 # %if.then
	cmpl	$0, 56(%r13)
	jne	.LBB7_3
# BB#2:                                 # %if.then.5
	movl	60(%r13), %esi
	movq	%r13, %rdi
	callq	emit_restart_e
.LBB7_3:                                # %if.end.6
	movslq	464(%rbp), %rax
	movl	460(%rbp), %r8d
	cmpl	%eax, %r8d
	jle	.LBB7_5
# BB#4:                                 # %for.end.thread
	leaq	232(%r13), %rcx
	xorl	%r15d, %r15d
	xorl	%ebx, %ebx
	jmp	.LBB7_107
.LBB7_5:                                # %for.body.lr.ph
	movl	472(%rbp), %ecx
	movq	480(%rbp), %r9
	movq	%rbp, 32(%rsp)          # 8-byte Spill
	movq	(%rbx), %r10
	movslq	%r8d, %rdx
	movq	%rdx, %rsi
	movq	%rdx, %r11
	decq	%rsi
	xorl	%edx, %edx
	movl	%r8d, %edi
	.align	16, 0x90
.LBB7_6:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movslq	4(%r9,%rsi,4), %rbp
	movswl	(%r10,%rbp,2), %ebx
	movl	%ebx, %ebp
	negl	%ebp
	cmovll	%ebx, %ebp
	sarl	%cl, %ebp
	movl	%ebp, 100(%rsp,%rsi,4)
	cmpl	$1, %ebp
	cmovel	%edi, %edx
	incq	%rsi
	incl	%edi
	cmpq	%rax, %rsi
	jl	.LBB7_6
# BB#7:                                 # %for.end
	leaq	232(%r13), %rcx
	xorl	%r15d, %r15d
	cmpl	%eax, %r8d
	movq	%rax, 48(%rsp)          # 8-byte Spill
	jle	.LBB7_9
# BB#8:
	xorl	%ebx, %ebx
	movq	32(%rsp), %rbp          # 8-byte Reload
	jmp	.LBB7_107
.LBB7_9:                                # %for.body.28.lr.ph
	movq	%rcx, 8(%rsp)           # 8-byte Spill
	movq	%r10, 16(%rsp)          # 8-byte Spill
	movq	%r9, 24(%rsp)           # 8-byte Spill
	movl	232(%r13), %ebp
	addq	240(%r13), %rbp
	movslq	%edx, %rcx
	movq	%rcx, 40(%rsp)          # 8-byte Spill
	xorl	%r15d, %r15d
	xorl	%ebx, %ebx
	movq	%r11, %rcx
	jmp	.LBB7_10
.LBB7_57:                               # %if.else.i.173
                                        #   in Loop: Header=BB7_10 Depth=1
	movq	96(%r13,%rax,8), %rax
	movslq	%ebx, %rcx
	movl	(%rax,%rcx,4), %r12d
	movsbl	1024(%rax,%rcx), %r14d
	testl	%r14d, %r14d
	jne	.LBB7_59
# BB#58:                                # %if.end.i.184
                                        #   in Loop: Header=BB7_10 Depth=1
	movq	216(%r13), %rdi
	movq	(%rdi), %rax
	movl	$41, 40(%rax)
	callq	*(%rax)
	cmpl	$0, 192(%r13)
	jne	.LBB7_103
.LBB7_59:                               # %if.end.5.i.198
                                        #   in Loop: Header=BB7_10 Depth=1
	movq	%rbp, 80(%rsp)          # 8-byte Spill
	movl	%r15d, 92(%rsp)         # 4-byte Spill
	movl	$1, %eax
	movb	%r14b, %cl
	shlq	%cl, %rax
	movl	$4294967295, %r15d      # imm = 0xFFFFFFFF
	addl	%eax, %r15d
	andq	%r12, %r15
	addl	32(%r13), %r14d
	movl	$24, %ecx
	subl	%r14d, %ecx
	shlq	%cl, %r15
	orq	24(%r13), %r15
	cmpl	$7, %r14d
	jle	.LBB7_117
# BB#60:                                #   in Loop: Header=BB7_10 Depth=1
	movl	%r14d, %ebx
	.align	16, 0x90
.LBB7_61:                               # %while.body.i.209
                                        #   Parent Loop BB7_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r15, %rbp
	shrq	$16, %rbp
	movq	200(%r13), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 200(%r13)
	movb	%bpl, (%rax)
	decq	208(%r13)
	jne	.LBB7_65
# BB#62:                                # %if.then.19.i.210
                                        #   in Loop: Header=BB7_61 Depth=2
	movq	216(%r13), %rdi
	movq	40(%rdi), %r12
	callq	*24(%r12)
	testl	%eax, %eax
	jne	.LBB7_64
# BB#63:                                # %if.then.i.405
                                        #   in Loop: Header=BB7_61 Depth=2
	movq	216(%r13), %rdi
	movq	(%rdi), %rax
	movl	$25, 40(%rax)
	callq	*(%rax)
.LBB7_64:                               # %dump_buffer_e.exit410
                                        #   in Loop: Header=BB7_61 Depth=2
	movups	(%r12), %xmm0
	movups	%xmm0, 200(%r13)
.LBB7_65:                               # %if.end.20.i.213
                                        #   in Loop: Header=BB7_61 Depth=2
	movzbl	%bpl, %eax
	cmpl	$255, %eax
	jne	.LBB7_70
# BB#66:                                # %if.then.23.i.217
                                        #   in Loop: Header=BB7_61 Depth=2
	movq	200(%r13), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 200(%r13)
	movb	$0, (%rax)
	decq	208(%r13)
	jne	.LBB7_70
# BB#67:                                # %if.then.30.i.218
                                        #   in Loop: Header=BB7_61 Depth=2
	movq	216(%r13), %rdi
	movq	40(%rdi), %rbp
	callq	*24(%rbp)
	testl	%eax, %eax
	jne	.LBB7_69
# BB#68:                                # %if.then.i.236
                                        #   in Loop: Header=BB7_61 Depth=2
	movq	216(%r13), %rdi
	movq	(%rdi), %rax
	movl	$25, 40(%rax)
	callq	*(%rax)
.LBB7_69:                               # %dump_buffer_e.exit241
                                        #   in Loop: Header=BB7_61 Depth=2
	movups	(%rbp), %xmm0
	movups	%xmm0, 200(%r13)
	.align	16, 0x90
.LBB7_70:                               # %if.end.32.i.222
                                        #   in Loop: Header=BB7_61 Depth=2
	shlq	$8, %r15
	addl	$-8, %ebx
	cmpl	$7, %ebx
	jg	.LBB7_61
# BB#71:                                # %emit_ac_symbol.exit175
                                        #   in Loop: Header=BB7_10 Depth=1
	andl	$7, %r14d
	cmpl	$0, 192(%r13)
	movq	%r15, 24(%r13)
	movl	%r14d, 32(%r13)
	movl	92(%rsp), %eax          # 4-byte Reload
	movq	80(%rsp), %rcx          # 8-byte Reload
	jne	.LBB7_103
	jmp	.LBB7_72
.LBB7_117:                              # %emit_ac_symbol.exit175.thread486
                                        #   in Loop: Header=BB7_10 Depth=1
	movq	%r15, 24(%r13)
	movl	%r14d, 32(%r13)
	movl	92(%rsp), %eax          # 4-byte Reload
	movq	80(%rsp), %rcx          # 8-byte Reload
.LBB7_72:                               # %if.end.5.i.255
                                        #   in Loop: Header=BB7_10 Depth=1
	movq	%rcx, 80(%rsp)          # 8-byte Spill
	movl	%eax, 92(%rsp)          # 4-byte Spill
	movq	24(%rsp), %rax          # 8-byte Reload
	movq	64(%rsp), %rcx          # 8-byte Reload
	movslq	(%rax,%rcx,4), %rax
	movq	16(%rsp), %rcx          # 8-byte Reload
	movzwl	(%rcx,%rax,2), %r15d
	shrl	$15, %r15d
	xorq	$1, %r15
	movl	32(%r13), %ebx
	movl	$23, %ecx
	subl	%ebx, %ecx
	incl	%ebx
	movl	%ebx, 76(%rsp)          # 4-byte Spill
	shlq	%cl, %r15
	orq	24(%r13), %r15
	xorl	%r14d, %r14d
	cmpl	$8, %ebx
	jl	.LBB7_73
	.align	16, 0x90
.LBB7_74:                               # %while.body.i.266
                                        #   Parent Loop BB7_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r15, %rbp
	shrq	$16, %rbp
	movq	200(%r13), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 200(%r13)
	movb	%bpl, (%rax)
	decq	208(%r13)
	jne	.LBB7_78
# BB#75:                                # %if.then.19.i.267
                                        #   in Loop: Header=BB7_74 Depth=2
	movq	216(%r13), %rdi
	movq	40(%rdi), %r12
	callq	*24(%r12)
	testl	%eax, %eax
	jne	.LBB7_77
# BB#76:                                # %if.then.i.419
                                        #   in Loop: Header=BB7_74 Depth=2
	movq	216(%r13), %rdi
	movq	(%rdi), %rax
	movl	$25, 40(%rax)
	callq	*(%rax)
.LBB7_77:                               # %dump_buffer_e.exit424
                                        #   in Loop: Header=BB7_74 Depth=2
	movups	(%r12), %xmm0
	movups	%xmm0, 200(%r13)
.LBB7_78:                               # %if.end.20.i.270
                                        #   in Loop: Header=BB7_74 Depth=2
	movzbl	%bpl, %eax
	cmpl	$255, %eax
	jne	.LBB7_83
# BB#79:                                # %if.then.23.i.274
                                        #   in Loop: Header=BB7_74 Depth=2
	movq	200(%r13), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 200(%r13)
	movb	$0, (%rax)
	decq	208(%r13)
	jne	.LBB7_83
# BB#80:                                # %if.then.30.i.275
                                        #   in Loop: Header=BB7_74 Depth=2
	movq	216(%r13), %rdi
	movq	40(%rdi), %rbp
	callq	*24(%rbp)
	testl	%eax, %eax
	jne	.LBB7_82
# BB#81:                                # %if.then.i.293
                                        #   in Loop: Header=BB7_74 Depth=2
	movq	216(%r13), %rdi
	movq	(%rdi), %rax
	movl	$25, 40(%rax)
	callq	*(%rax)
.LBB7_82:                               # %dump_buffer_e.exit298
                                        #   in Loop: Header=BB7_74 Depth=2
	movups	(%rbp), %xmm0
	movups	%xmm0, 200(%r13)
	.align	16, 0x90
.LBB7_83:                               # %if.end.32.i.279
                                        #   in Loop: Header=BB7_74 Depth=2
	shlq	$8, %r15
	addl	$-8, %ebx
	cmpl	$7, %ebx
	jg	.LBB7_74
# BB#84:                                # %while.cond.while.end_crit_edge.i.280
                                        #   in Loop: Header=BB7_10 Depth=1
	movl	76(%rsp), %ecx          # 4-byte Reload
	andl	$7, %ecx
	movl	192(%r13), %eax
	jmp	.LBB7_85
.LBB7_73:                               #   in Loop: Header=BB7_10 Depth=1
	xorl	%eax, %eax
	movl	76(%rsp), %ecx          # 4-byte Reload
.LBB7_85:                               # %emit_bits_e.exit284
                                        #   in Loop: Header=BB7_10 Depth=1
	movq	%r15, 24(%r13)
	movl	%ecx, 32(%r13)
	movl	92(%rsp), %ecx          # 4-byte Reload
	testl	%ecx, %ecx
	movq	80(%rsp), %rdx          # 8-byte Reload
	je	.LBB7_103
# BB#86:                                # %emit_bits_e.exit284
                                        #   in Loop: Header=BB7_10 Depth=1
	testl	%eax, %eax
	je	.LBB7_88
	jmp	.LBB7_103
	.align	16, 0x90
.LBB7_87:                               # %while.body.i.309thread-pre-split
                                        #   in Loop: Header=BB7_88 Depth=2
	incq	%rdx
	movl	192(%r13), %r14d
.LBB7_88:                               # %while.body.i.309
                                        #   Parent Loop BB7_10 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_90 Depth 3
	testl	%r14d, %r14d
	jne	.LBB7_102
# BB#89:                                # %if.end.5.i.325
                                        #   in Loop: Header=BB7_88 Depth=2
	movl	%ecx, 92(%rsp)          # 4-byte Spill
	movq	%rdx, 80(%rsp)          # 8-byte Spill
	movzbl	(%rdx), %r15d
	andl	$1, %r15d
	movl	32(%r13), %r14d
	movl	$23, %ecx
	subl	%r14d, %ecx
	incl	%r14d
	shlq	%cl, %r15
	orq	24(%r13), %r15
	cmpl	$8, %r14d
	movl	%r14d, %ebx
	jl	.LBB7_101
	.align	16, 0x90
.LBB7_90:                               # %while.body.i.336
                                        #   Parent Loop BB7_10 Depth=1
                                        #     Parent Loop BB7_88 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%r15, %rbp
	shrq	$16, %rbp
	movq	200(%r13), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 200(%r13)
	movb	%bpl, (%rax)
	decq	208(%r13)
	jne	.LBB7_94
# BB#91:                                # %if.then.19.i.337
                                        #   in Loop: Header=BB7_90 Depth=3
	movq	216(%r13), %rdi
	movq	40(%rdi), %r12
	callq	*24(%r12)
	testl	%eax, %eax
	jne	.LBB7_93
# BB#92:                                # %if.then.i.433
                                        #   in Loop: Header=BB7_90 Depth=3
	movq	216(%r13), %rdi
	movq	(%rdi), %rax
	movl	$25, 40(%rax)
	callq	*(%rax)
.LBB7_93:                               # %dump_buffer_e.exit438
                                        #   in Loop: Header=BB7_90 Depth=3
	movups	(%r12), %xmm0
	movups	%xmm0, 200(%r13)
.LBB7_94:                               # %if.end.20.i.340
                                        #   in Loop: Header=BB7_90 Depth=3
	movzbl	%bpl, %eax
	cmpl	$255, %eax
	jne	.LBB7_99
# BB#95:                                # %if.then.23.i.344
                                        #   in Loop: Header=BB7_90 Depth=3
	movq	200(%r13), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 200(%r13)
	movb	$0, (%rax)
	decq	208(%r13)
	jne	.LBB7_99
# BB#96:                                # %if.then.30.i.345
                                        #   in Loop: Header=BB7_90 Depth=3
	movq	216(%r13), %rdi
	movq	40(%rdi), %rbp
	callq	*24(%rbp)
	testl	%eax, %eax
	jne	.LBB7_98
# BB#97:                                # %if.then.i.363
                                        #   in Loop: Header=BB7_90 Depth=3
	movq	216(%r13), %rdi
	movq	(%rdi), %rax
	movl	$25, 40(%rax)
	callq	*(%rax)
.LBB7_98:                               # %dump_buffer_e.exit368
                                        #   in Loop: Header=BB7_90 Depth=3
	movups	(%rbp), %xmm0
	movups	%xmm0, 200(%r13)
	.align	16, 0x90
.LBB7_99:                               # %if.end.32.i.349
                                        #   in Loop: Header=BB7_90 Depth=3
	shlq	$8, %r15
	addl	$-8, %ebx
	cmpl	$7, %ebx
	jg	.LBB7_90
# BB#100:                               # %while.cond.while.end_crit_edge.i.350
                                        #   in Loop: Header=BB7_88 Depth=2
	andl	$7, %r14d
.LBB7_101:                              # %while.end.i.353
                                        #   in Loop: Header=BB7_88 Depth=2
	movq	%r15, 24(%r13)
	movl	%r14d, 32(%r13)
	movl	92(%rsp), %ecx          # 4-byte Reload
	movq	80(%rsp), %rdx          # 8-byte Reload
.LBB7_102:                              # %emit_bits_e.exit354
                                        #   in Loop: Header=BB7_88 Depth=2
	decl	%ecx
	jne	.LBB7_87
	jmp	.LBB7_103
	.align	16, 0x90
.LBB7_10:                               # %for.body.28
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_15 Depth 2
                                        #       Child Loop BB7_22 Depth 3
                                        #       Child Loop BB7_36 Depth 3
                                        #         Child Loop BB7_38 Depth 4
                                        #     Child Loop BB7_61 Depth 2
                                        #     Child Loop BB7_74 Depth 2
                                        #     Child Loop BB7_88 Depth 2
                                        #       Child Loop BB7_90 Depth 3
	movl	96(%rsp,%rcx,4), %edx
	testl	%edx, %edx
	je	.LBB7_13
# BB#11:                                # %while.cond.preheader
                                        #   in Loop: Header=BB7_10 Depth=1
	cmpq	40(%rsp), %rcx          # 8-byte Folded Reload
	jg	.LBB7_12
# BB#14:                                # %while.cond.preheader
                                        #   in Loop: Header=BB7_10 Depth=1
	movl	%edx, 60(%rsp)          # 4-byte Spill
	movq	%rcx, 64(%rsp)          # 8-byte Spill
	cmpl	$16, %ebx
	jl	.LBB7_53
	.align	16, 0x90
.LBB7_15:                               # %while.body
                                        #   Parent Loop BB7_10 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_22 Depth 3
                                        #       Child Loop BB7_36 Depth 3
                                        #         Child Loop BB7_38 Depth 4
	movq	%r13, %rdi
	callq	emit_eobrun
	cmpl	$0, 192(%r13)
	movslq	224(%r13), %rax
	je	.LBB7_18
# BB#16:                                # %if.then.i
                                        #   in Loop: Header=BB7_15 Depth=2
	movl	%ebx, 76(%rsp)          # 4-byte Spill
	movq	160(%r13,%rax,8), %rax
	incq	1920(%rax)
.LBB7_17:                               # %emit_ac_symbol.exit.thread
                                        #   in Loop: Header=BB7_15 Depth=2
	movl	76(%rsp), %ebx          # 4-byte Reload
	addl	$-16, %ebx
	jmp	.LBB7_52
	.align	16, 0x90
.LBB7_18:                               # %if.else.i
                                        #   in Loop: Header=BB7_15 Depth=2
	movl	%ebx, 76(%rsp)          # 4-byte Spill
	movq	96(%r13,%rax,8), %rax
	movl	960(%rax), %r14d
	movsbl	1264(%rax), %ebx
	testl	%ebx, %ebx
	jne	.LBB7_20
# BB#19:                                # %if.end.i
                                        #   in Loop: Header=BB7_15 Depth=2
	movq	216(%r13), %rdi
	movq	(%rdi), %rax
	movl	$41, 40(%rax)
	callq	*(%rax)
	cmpl	$0, 192(%r13)
	jne	.LBB7_17
	.align	16, 0x90
.LBB7_20:                               # %if.end.5.i
                                        #   in Loop: Header=BB7_15 Depth=2
	movq	%rbp, 80(%rsp)          # 8-byte Spill
	movl	%r15d, 92(%rsp)         # 4-byte Spill
	movl	$1, %eax
	movb	%bl, %cl
	shlq	%cl, %rax
	movl	%ebx, %ebp
	movl	$4294967295, %ebx       # imm = 0xFFFFFFFF
	addl	%eax, %ebx
	andq	%r14, %rbx
	addl	32(%r13), %ebp
	movl	%ebp, 72(%rsp)          # 4-byte Spill
	movl	$24, %ecx
	subl	%ebp, %ecx
	shlq	%cl, %rbx
	orq	24(%r13), %rbx
	xorl	%r14d, %r14d
	cmpl	$8, %ebp
	jl	.LBB7_21
	.align	16, 0x90
.LBB7_22:                               # %while.body.i
                                        #   Parent Loop BB7_10 Depth=1
                                        #     Parent Loop BB7_15 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%rbx, %r15
	shrq	$16, %r15
	movq	200(%r13), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 200(%r13)
	movb	%r15b, (%rax)
	decq	208(%r13)
	jne	.LBB7_26
# BB#23:                                # %if.then.19.i
                                        #   in Loop: Header=BB7_22 Depth=3
	movq	216(%r13), %rdi
	movq	40(%rdi), %r12
	callq	*24(%r12)
	testl	%eax, %eax
	jne	.LBB7_25
# BB#24:                                # %if.then.i.377
                                        #   in Loop: Header=BB7_22 Depth=3
	movq	216(%r13), %rdi
	movq	(%rdi), %rax
	movl	$25, 40(%rax)
	callq	*(%rax)
.LBB7_25:                               # %dump_buffer_e.exit382
                                        #   in Loop: Header=BB7_22 Depth=3
	movups	(%r12), %xmm0
	movups	%xmm0, 200(%r13)
.LBB7_26:                               # %if.end.20.i
                                        #   in Loop: Header=BB7_22 Depth=3
	movzbl	%r15b, %eax
	cmpl	$255, %eax
	jne	.LBB7_31
# BB#27:                                # %if.then.23.i
                                        #   in Loop: Header=BB7_22 Depth=3
	movq	200(%r13), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 200(%r13)
	movb	$0, (%rax)
	decq	208(%r13)
	jne	.LBB7_31
# BB#28:                                # %if.then.30.i
                                        #   in Loop: Header=BB7_22 Depth=3
	movq	216(%r13), %rdi
	movq	40(%rdi), %r15
	callq	*24(%r15)
	testl	%eax, %eax
	jne	.LBB7_30
# BB#29:                                # %if.then.i.93
                                        #   in Loop: Header=BB7_22 Depth=3
	movq	216(%r13), %rdi
	movq	(%rdi), %rax
	movl	$25, 40(%rax)
	callq	*(%rax)
.LBB7_30:                               # %dump_buffer_e.exit
                                        #   in Loop: Header=BB7_22 Depth=3
	movups	(%r15), %xmm0
	movups	%xmm0, 200(%r13)
	.align	16, 0x90
.LBB7_31:                               # %if.end.32.i
                                        #   in Loop: Header=BB7_22 Depth=3
	shlq	$8, %rbx
	addl	$-8, %ebp
	cmpl	$7, %ebp
	jg	.LBB7_22
# BB#32:                                # %while.cond.while.end_crit_edge.i
                                        #   in Loop: Header=BB7_15 Depth=2
	movl	72(%rsp), %esi          # 4-byte Reload
	andl	$7, %esi
	movl	192(%r13), %eax
	movl	92(%rsp), %ecx          # 4-byte Reload
	movq	80(%rsp), %rdx          # 8-byte Reload
	jmp	.LBB7_33
.LBB7_21:                               #   in Loop: Header=BB7_15 Depth=2
	xorl	%eax, %eax
	movl	92(%rsp), %ecx          # 4-byte Reload
	movq	80(%rsp), %rdx          # 8-byte Reload
	movl	72(%rsp), %esi          # 4-byte Reload
.LBB7_33:                               # %emit_ac_symbol.exit
                                        #   in Loop: Header=BB7_15 Depth=2
	movq	%rbx, 24(%r13)
	movl	%esi, 32(%r13)
	addl	$-16, 76(%rsp)          # 4-byte Folded Spill
	testl	%ecx, %ecx
	je	.LBB7_51
# BB#34:                                # %emit_ac_symbol.exit
                                        #   in Loop: Header=BB7_15 Depth=2
	testl	%eax, %eax
	je	.LBB7_36
	jmp	.LBB7_51
	.align	16, 0x90
.LBB7_35:                               # %while.body.i.102thread-pre-split
                                        #   in Loop: Header=BB7_36 Depth=3
	incq	%rdx
	movl	192(%r13), %r14d
.LBB7_36:                               # %while.body.i.102
                                        #   Parent Loop BB7_10 Depth=1
                                        #     Parent Loop BB7_15 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB7_38 Depth 4
	testl	%r14d, %r14d
	jne	.LBB7_50
# BB#37:                                # %if.end.5.i.117
                                        #   in Loop: Header=BB7_36 Depth=3
	movl	%ecx, 92(%rsp)          # 4-byte Spill
	movq	%rdx, 80(%rsp)          # 8-byte Spill
	movzbl	(%rdx), %r15d
	andl	$1, %r15d
	movl	32(%r13), %r14d
	movl	$23, %ecx
	subl	%r14d, %ecx
	incl	%r14d
	shlq	%cl, %r15
	orq	24(%r13), %r15
	cmpl	$8, %r14d
	movl	%r14d, %ebx
	jl	.LBB7_49
	.align	16, 0x90
.LBB7_38:                               # %while.body.i.128
                                        #   Parent Loop BB7_10 Depth=1
                                        #     Parent Loop BB7_15 Depth=2
                                        #       Parent Loop BB7_36 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movq	%r15, %rbp
	shrq	$16, %rbp
	movq	200(%r13), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 200(%r13)
	movb	%bpl, (%rax)
	decq	208(%r13)
	jne	.LBB7_42
# BB#39:                                # %if.then.19.i.129
                                        #   in Loop: Header=BB7_38 Depth=4
	movq	216(%r13), %rdi
	movq	40(%rdi), %r12
	callq	*24(%r12)
	testl	%eax, %eax
	jne	.LBB7_41
# BB#40:                                # %if.then.i.391
                                        #   in Loop: Header=BB7_38 Depth=4
	movq	216(%r13), %rdi
	movq	(%rdi), %rax
	movl	$25, 40(%rax)
	callq	*(%rax)
.LBB7_41:                               # %dump_buffer_e.exit396
                                        #   in Loop: Header=BB7_38 Depth=4
	movups	(%r12), %xmm0
	movups	%xmm0, 200(%r13)
.LBB7_42:                               # %if.end.20.i.132
                                        #   in Loop: Header=BB7_38 Depth=4
	movzbl	%bpl, %eax
	cmpl	$255, %eax
	jne	.LBB7_47
# BB#43:                                # %if.then.23.i.136
                                        #   in Loop: Header=BB7_38 Depth=4
	movq	200(%r13), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 200(%r13)
	movb	$0, (%rax)
	decq	208(%r13)
	jne	.LBB7_47
# BB#44:                                # %if.then.30.i.137
                                        #   in Loop: Header=BB7_38 Depth=4
	movq	216(%r13), %rdi
	movq	40(%rdi), %rbp
	callq	*24(%rbp)
	testl	%eax, %eax
	jne	.LBB7_46
# BB#45:                                # %if.then.i.155
                                        #   in Loop: Header=BB7_38 Depth=4
	movq	216(%r13), %rdi
	movq	(%rdi), %rax
	movl	$25, 40(%rax)
	callq	*(%rax)
.LBB7_46:                               # %dump_buffer_e.exit160
                                        #   in Loop: Header=BB7_38 Depth=4
	movups	(%rbp), %xmm0
	movups	%xmm0, 200(%r13)
	.align	16, 0x90
.LBB7_47:                               # %if.end.32.i.141
                                        #   in Loop: Header=BB7_38 Depth=4
	shlq	$8, %r15
	addl	$-8, %ebx
	cmpl	$7, %ebx
	jg	.LBB7_38
# BB#48:                                # %while.cond.while.end_crit_edge.i.142
                                        #   in Loop: Header=BB7_36 Depth=3
	andl	$7, %r14d
.LBB7_49:                               # %while.end.i.145
                                        #   in Loop: Header=BB7_36 Depth=3
	movq	%r15, 24(%r13)
	movl	%r14d, 32(%r13)
	movl	92(%rsp), %ecx          # 4-byte Reload
	movq	80(%rsp), %rdx          # 8-byte Reload
.LBB7_50:                               # %emit_bits_e.exit146
                                        #   in Loop: Header=BB7_36 Depth=3
	decl	%ecx
	jne	.LBB7_35
.LBB7_51:                               #   in Loop: Header=BB7_15 Depth=2
	movl	76(%rsp), %ebx          # 4-byte Reload
.LBB7_52:                               # %emit_buffered_bits.exit
                                        #   in Loop: Header=BB7_15 Depth=2
	movq	240(%r13), %rbp
	xorl	%r15d, %r15d
	cmpl	$15, %ebx
	jg	.LBB7_15
	jmp	.LBB7_53
	.align	16, 0x90
.LBB7_13:                               # %if.then.33
                                        #   in Loop: Header=BB7_10 Depth=1
	incl	%ebx
	jmp	.LBB7_105
.LBB7_12:                               #   in Loop: Header=BB7_10 Depth=1
	movl	%edx, 60(%rsp)          # 4-byte Spill
	movq	%rcx, 64(%rsp)          # 8-byte Spill
.LBB7_53:                               # %while.end
                                        #   in Loop: Header=BB7_10 Depth=1
	movl	60(%rsp), %ecx          # 4-byte Reload
	cmpl	$2, %ecx
	jl	.LBB7_55
# BB#54:                                # %if.then.44
                                        #   in Loop: Header=BB7_10 Depth=1
	andb	$1, %cl
	movl	%r15d, %eax
	incl	%r15d
	movb	%cl, (%rbp,%rax)
	jmp	.LBB7_104
	.align	16, 0x90
.LBB7_55:                               # %if.end.49
                                        #   in Loop: Header=BB7_10 Depth=1
	movq	%r13, %rdi
	callq	emit_eobrun
	movslq	224(%r13), %rax
	shll	$4, %ebx
	orl	$1, %ebx
	cmpl	$0, 192(%r13)
	je	.LBB7_57
# BB#56:                                # %if.then.i.167
                                        #   in Loop: Header=BB7_10 Depth=1
	movslq	%ebx, %rcx
	movq	160(%r13,%rax,8), %rax
	incq	(%rax,%rcx,8)
.LBB7_103:                              # %emit_buffered_bits.exit311
                                        #   in Loop: Header=BB7_10 Depth=1
	movq	240(%r13), %rbp
	xorl	%ebx, %ebx
	xorl	%r15d, %r15d
.LBB7_104:                              # %for.inc.59
                                        #   in Loop: Header=BB7_10 Depth=1
	movq	48(%rsp), %rax          # 8-byte Reload
	movq	64(%rsp), %rcx          # 8-byte Reload
.LBB7_105:                              # %for.inc.59
                                        #   in Loop: Header=BB7_10 Depth=1
	cmpq	%rax, %rcx
	leaq	1(%rcx), %rcx
	jl	.LBB7_10
# BB#106:
	movq	32(%rsp), %rbp          # 8-byte Reload
	movq	8(%rsp), %rcx           # 8-byte Reload
.LBB7_107:                              # %for.end.61
	testl	%ebx, %ebx
	jg	.LBB7_109
# BB#108:                               # %for.end.61
	testl	%r15d, %r15d
	je	.LBB7_112
.LBB7_109:                              # %if.then.66
	movl	228(%r13), %eax
	incl	%eax
	movl	%eax, 228(%r13)
	addl	(%rcx), %r15d
	movl	%r15d, (%rcx)
	cmpl	$32767, %eax            # imm = 0x7FFF
	je	.LBB7_111
# BB#110:                               # %if.then.66
	cmpl	$938, %r15d             # imm = 0x3AA
	jb	.LBB7_112
.LBB7_111:                              # %if.then.77
	movq	%r13, %rdi
	callq	emit_eobrun
.LBB7_112:                              # %if.end.79
	movq	40(%rbp), %rax
	movups	200(%r13), %xmm0
	movups	%xmm0, (%rax)
	movl	316(%rbp), %eax
	testl	%eax, %eax
	je	.LBB7_116
# BB#113:                               # %if.then.88
	movl	56(%r13), %ecx
	testl	%ecx, %ecx
	jne	.LBB7_115
# BB#114:                               # %if.then.92
	movl	%eax, 56(%r13)
	movl	60(%r13), %ecx
	incl	%ecx
	andl	$7, %ecx
	movl	%ecx, 60(%r13)
	movl	%eax, %ecx
.LBB7_115:                              # %if.end.99
	decl	%ecx
	movl	%ecx, 56(%r13)
.LBB7_116:                              # %if.end.101
	movl	$1, %eax
	addq	$360, %rsp              # imm = 0x168
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	encode_mcu_AC_refine, .Lfunc_end7-encode_mcu_AC_refine
	.cfi_endproc

	.align	16, 0x90
	.type	encode_mcu_gather,@function
encode_mcu_gather:                      # @encode_mcu_gather
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp91:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp92:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp93:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp94:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp95:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp96:
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
.Ltmp97:
	.cfi_def_cfa_offset 112
.Ltmp98:
	.cfi_offset %rbx, -56
.Ltmp99:
	.cfi_offset %r12, -48
.Ltmp100:
	.cfi_offset %r13, -40
.Ltmp101:
	.cfi_offset %r14, -32
.Ltmp102:
	.cfi_offset %r15, -24
.Ltmp103:
	.cfi_offset %rbp, -16
	movq	%rsi, 16(%rsp)          # 8-byte Spill
	movq	560(%rdi), %rdx
	movq	%rdx, 8(%rsp)           # 8-byte Spill
	movl	316(%rdi), %eax
	testl	%eax, %eax
	je	.LBB8_8
# BB#1:                                 # %if.then
	movl	56(%rdx), %ecx
	testl	%ecx, %ecx
	jne	.LBB8_7
# BB#2:                                 # %for.cond.preheader
	cmpl	$0, 372(%rdi)
	jle	.LBB8_6
# BB#3:                                 # %for.body.preheader
	xorl	%eax, %eax
	.align	16, 0x90
.LBB8_4:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$0, 36(%rdx,%rax,4)
	incq	%rax
	movslq	372(%rdi), %rcx
	cmpq	%rcx, %rax
	jl	.LBB8_4
# BB#5:                                 # %for.cond.for.end_crit_edge
	movl	316(%rdi), %eax
.LBB8_6:                                # %for.end
	movl	%eax, 56(%rdx)
	movl	%eax, %ecx
.LBB8_7:                                # %if.end
	decl	%ecx
	movl	%ecx, 56(%rdx)
.LBB8_8:                                # %for.cond.8.preheader
	cmpl	$0, 416(%rdi)
	jle	.LBB8_28
# BB#9:                                 # %for.body.10.lr.ph
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB8_10:                               # %for.body.10
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_11 Depth 2
                                        #     Child Loop BB8_16 Depth 2
                                        #       Child Loop BB8_20 Depth 3
	movq	%rcx, 32(%rsp)          # 8-byte Spill
	movslq	420(%rdi,%rcx,4), %rbx
	movq	%rbx, 24(%rsp)          # 8-byte Spill
	movq	376(%rdi,%rbx,8), %rax
	movq	(%rsi,%rcx,8), %rbp
	movq	%rbp, 40(%rsp)          # 8-byte Spill
	movslq	20(%rax), %rcx
	movq	128(%rdx,%rcx,8), %r12
	movslq	24(%rax), %rax
	movq	160(%rdx,%rax,8), %r15
	movq	%r15, 48(%rsp)          # 8-byte Spill
	movl	488(%rdi), %r14d
	movq	480(%rdi), %rsi
	movswl	(%rbp), %eax
	subl	36(%rdx,%rbx,4), %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	addl	%ecx, %eax
	xorl	%ecx, %eax
	movl	$-1, %ecx
	movl	$0, %ebx
	je	.LBB8_14
	.align	16, 0x90
.LBB8_11:                               # %while.body.i
                                        #   Parent Loop BB8_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%ecx, %ebx
	sarl	%eax
	leal	1(%rbx), %ecx
	testl	%eax, %eax
	jne	.LBB8_11
# BB#12:                                # %while.end.i
                                        #   in Loop: Header=BB8_10 Depth=1
	addl	$2, %ebx
	cmpl	$11, %ecx
	jl	.LBB8_14
# BB#13:                                # %if.then.6.i
                                        #   in Loop: Header=BB8_10 Depth=1
	movq	(%rdi), %rax
	movl	$6, 40(%rax)
	movq	%rdi, %r13
	movq	%rsi, (%rsp)            # 8-byte Spill
	callq	*(%rax)
	movq	(%rsp), %rsi            # 8-byte Reload
	movq	%r13, %rdi
.LBB8_14:                               # %if.end.8.i
                                        #   in Loop: Header=BB8_10 Depth=1
	movslq	%ebx, %rax
	incq	(%r12,%rax,8)
	testl	%r14d, %r14d
	jle	.LBB8_27
# BB#15:                                # %for.body.lr.ph.i
                                        #   in Loop: Header=BB8_10 Depth=1
	incl	%r14d
	xorl	%r12d, %r12d
	movl	$1, %ebx
	.align	16, 0x90
.LBB8_16:                               # %for.body.i
                                        #   Parent Loop BB8_10 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB8_20 Depth 3
	movslq	(%rsi,%rbx,4), %rax
	movswl	(%rbp,%rax,2), %eax
	testl	%eax, %eax
	je	.LBB8_29
# BB#17:                                # %while.cond.22.preheader.i
                                        #   in Loop: Header=BB8_16 Depth=2
	cmpl	$16, %r12d
	jl	.LBB8_19
# BB#18:                                # %while.body.25.lr.ph.i
                                        #   in Loop: Header=BB8_16 Depth=2
	movq	1920(%r15), %rcx
	addl	$-16, %r12d
	movl	%r12d, %edx
	shrl	$4, %edx
	leaq	1(%rdx,%rcx), %rcx
	shll	$4, %edx
	subl	%edx, %r12d
	movq	%rcx, 1920(%r15)
.LBB8_19:                               # %while.end.29.i
                                        #   in Loop: Header=BB8_16 Depth=2
	movl	%eax, %ecx
	negl	%ecx
	testw	%ax, %ax
	cmovnsl	%eax, %ecx
	xorl	%r13d, %r13d
	.align	16, 0x90
.LBB8_20:                               # %while.cond.35.i
                                        #   Parent Loop BB8_10 Depth=1
                                        #     Parent Loop BB8_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	sarl	%ecx
	incl	%r13d
	testl	%ecx, %ecx
	jne	.LBB8_20
# BB#21:                                # %while.end.40.i
                                        #   in Loop: Header=BB8_16 Depth=2
	cmpl	$11, %r13d
	jl	.LBB8_23
# BB#22:                                # %if.then.43.i
                                        #   in Loop: Header=BB8_16 Depth=2
	movq	(%rdi), %rax
	movl	$6, 40(%rax)
	movl	%r14d, %ebp
	movq	%rdi, %r14
	movq	%rsi, %r15
	callq	*(%rax)
	movq	%r15, %rsi
	movq	%r14, %rdi
	movl	%ebp, %r14d
	movq	48(%rsp), %r15          # 8-byte Reload
	movq	40(%rsp), %rbp          # 8-byte Reload
.LBB8_23:                               # %if.end.48.i
                                        #   in Loop: Header=BB8_16 Depth=2
	shll	$4, %r12d
	addl	%r12d, %r13d
	movslq	%r13d, %rax
	incq	(%r15,%rax,8)
	xorl	%r12d, %r12d
	jmp	.LBB8_24
	.align	16, 0x90
.LBB8_29:                               # %if.then.20.i
                                        #   in Loop: Header=BB8_16 Depth=2
	incl	%r12d
.LBB8_24:                               # %for.inc.i
                                        #   in Loop: Header=BB8_16 Depth=2
	incq	%rbx
	cmpl	%r14d, %ebx
	jne	.LBB8_16
# BB#25:                                # %for.end.i
                                        #   in Loop: Header=BB8_10 Depth=1
	testl	%r12d, %r12d
	jle	.LBB8_27
# BB#26:                                # %if.then.56.i
                                        #   in Loop: Header=BB8_10 Depth=1
	incq	(%r15)
.LBB8_27:                               # %htest_one_block.exit
                                        #   in Loop: Header=BB8_10 Depth=1
	movq	16(%rsp), %rsi          # 8-byte Reload
	movq	32(%rsp), %rcx          # 8-byte Reload
	movq	(%rsi,%rcx,8), %rax
	movswl	(%rax), %eax
	movq	8(%rsp), %rdx           # 8-byte Reload
	movq	24(%rsp), %rbp          # 8-byte Reload
	movl	%eax, 36(%rdx,%rbp,4)
	incq	%rcx
	movslq	416(%rdi), %rax
	cmpq	%rax, %rcx
	jl	.LBB8_10
.LBB8_28:                               # %for.end.36
	movl	$1, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	encode_mcu_gather, .Lfunc_end8-encode_mcu_gather
	.cfi_endproc

	.align	16, 0x90
	.type	encode_mcu_huff,@function
encode_mcu_huff:                        # @encode_mcu_huff
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp104:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp105:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp106:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp107:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp108:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp109:
	.cfi_def_cfa_offset 56
	subq	$152, %rsp
.Ltmp110:
	.cfi_def_cfa_offset 208
.Ltmp111:
	.cfi_offset %rbx, -56
.Ltmp112:
	.cfi_offset %r12, -48
.Ltmp113:
	.cfi_offset %r13, -40
.Ltmp114:
	.cfi_offset %r14, -32
.Ltmp115:
	.cfi_offset %r15, -24
.Ltmp116:
	.cfi_offset %rbp, -16
	movq	560(%rdi), %rbx
	movq	40(%rdi), %rax
	movups	(%rax), %xmm0
	movaps	%xmm0, 96(%rsp)
	movups	24(%rbx), %xmm1
	movups	40(%rbx), %xmm2
	movaps	%xmm2, 128(%rsp)
	movaps	%xmm1, 112(%rsp)
	movq	%rdi, 144(%rsp)
	cmpl	$0, 316(%rdi)
	movq	%rdi, %rbp
	je	.LBB9_24
# BB#1:                                 # %if.then
	cmpl	$0, 56(%rbx)
	movq	%rdi, %rbp
	jne	.LBB9_24
# BB#2:                                 # %if.then.6
	movd	%xmm0, %rax
	movl	60(%rbx), %r14d
	movl	120(%rsp), %ebp
	testl	%ebp, %ebp
	jle	.LBB9_14
# BB#3:                                 # %while.body.lr.ph.i.i
	movq	%rsi, 32(%rsp)          # 8-byte Spill
	movq	%rdi, 40(%rsp)          # 8-byte Spill
	movq	%rbx, %r13
	movl	$17, %ecx
	subl	%ebp, %ecx
	movl	$127, %r15d
	shlq	%cl, %r15
	orq	112(%rsp), %r15
	addl	$7, %ebp
	jmp	.LBB9_4
	.align	16, 0x90
.LBB9_12:                               # %cleanup.i.i.while.body.i.i_crit_edge
                                        #   in Loop: Header=BB9_4 Depth=1
	shlq	$8, %r15
	movq	96(%rsp), %rax
.LBB9_4:                                # %while.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%r15, %rbx
	shrq	$16, %rbx
	leaq	1(%rax), %rcx
	movq	%rcx, 96(%rsp)
	movb	%bl, (%rax)
	decq	104(%rsp)
	jne	.LBB9_7
# BB#5:                                 # %if.then.17.i.i
                                        #   in Loop: Header=BB9_4 Depth=1
	movq	144(%rsp), %rdi
	movq	40(%rdi), %r12
	callq	*24(%r12)
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	.LBB9_115
# BB#6:                                 # %dump_buffer_s.exit52.i
                                        #   in Loop: Header=BB9_4 Depth=1
	movups	(%r12), %xmm0
	movaps	%xmm0, 96(%rsp)
.LBB9_7:                                # %if.end.20.i.i
                                        #   in Loop: Header=BB9_4 Depth=1
	movzbl	%bl, %eax
	cmpl	$255, %eax
	jne	.LBB9_11
# BB#8:                                 # %if.then.23.i.i
                                        #   in Loop: Header=BB9_4 Depth=1
	movq	96(%rsp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 96(%rsp)
	movb	$0, (%rax)
	decq	104(%rsp)
	jne	.LBB9_11
# BB#9:                                 # %if.then.30.i.i
                                        #   in Loop: Header=BB9_4 Depth=1
	movq	144(%rsp), %rdi
	movq	40(%rdi), %rbx
	callq	*24(%rbx)
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	.LBB9_115
# BB#10:                                # %dump_buffer_s.exit.i
                                        #   in Loop: Header=BB9_4 Depth=1
	movups	(%rbx), %xmm0
	movaps	%xmm0, 96(%rsp)
	.align	16, 0x90
.LBB9_11:                               # %cleanup.i.i
                                        #   in Loop: Header=BB9_4 Depth=1
	addl	$-8, %ebp
	cmpl	$8, %ebp
	jge	.LBB9_12
# BB#13:                                # %if.end.i.loopexit
	movq	96(%rsp), %rax
	movq	%r13, %rbx
	movq	40(%rsp), %rdi          # 8-byte Reload
	movq	32(%rsp), %rsi          # 8-byte Reload
.LBB9_14:                               # %if.end.i
	movq	$0, 112(%rsp)
	movl	$0, 120(%rsp)
	leaq	1(%rax), %rcx
	movq	%rcx, 96(%rsp)
	movb	$-1, (%rax)
	decq	104(%rsp)
	je	.LBB9_16
# BB#15:                                # %if.end.if.end.6_crit_edge.i
	movq	96(%rsp), %rax
	jmp	.LBB9_18
.LBB9_16:                               # %if.then.1.i
	movq	%rsi, %r12
	movq	%rdi, %r15
	movq	%rbx, %rbp
	movq	144(%rsp), %rdi
	movq	40(%rdi), %rbx
	callq	*24(%rbx)
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	.LBB9_115
# BB#17:                                # %dump_buffer_s.exit30.i
	movups	(%rbx), %xmm0
	movaps	%xmm0, 96(%rsp)
	movd	%xmm0, %rax
	movq	%rbp, %rbx
	movq	%r15, %rdi
	movq	%r12, %rsi
.LBB9_18:                               # %if.end.6.i
	addl	$208, %r14d
	leaq	1(%rax), %rcx
	movq	%rcx, 96(%rsp)
	movb	%r14b, (%rax)
	decq	104(%rsp)
	movq	144(%rsp), %rbp
	jne	.LBB9_21
# BB#19:                                # %if.then.13.i
	movq	%rsi, %r12
	movq	%rdi, %r15
	movq	%rbx, %r14
	movq	40(%rbp), %rbx
	movq	%rbp, %rdi
	callq	*24(%rbx)
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	.LBB9_115
# BB#20:                                # %dump_buffer_s.exit41.i
	movups	(%rbx), %xmm0
	movaps	%xmm0, 96(%rsp)
	movq	%r14, %rbx
	movq	%r15, %rdi
	movq	%r12, %rsi
.LBB9_21:                               # %for.cond.preheader.i
	cmpl	$0, 372(%rbp)
	jle	.LBB9_24
# BB#22:                                # %for.body.i.preheader
	xorl	%eax, %eax
	.align	16, 0x90
.LBB9_23:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movl	$0, 124(%rsp,%rax,4)
	incq	%rax
	movq	144(%rsp), %rbp
	movslq	372(%rbp), %rcx
	cmpq	%rcx, %rax
	jl	.LBB9_23
.LBB9_24:                               # %for.cond.preheader
	cmpl	$0, 416(%rdi)
	jle	.LBB9_111
# BB#25:                                # %for.body.lr.ph
	xorl	%ecx, %ecx
	jmp	.LBB9_26
	.align	16, 0x90
.LBB9_110:                              # %if.end.27.for.body_crit_edge
                                        #   in Loop: Header=BB9_26 Depth=1
	movq	144(%rsp), %rbp
.LBB9_26:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_27 Depth 2
                                        #     Child Loop BB9_33 Depth 2
                                        #     Child Loop BB9_43 Depth 2
                                        #     Child Loop BB9_54 Depth 2
                                        #       Child Loop BB9_56 Depth 3
                                        #         Child Loop BB9_59 Depth 4
                                        #       Child Loop BB9_69 Depth 3
                                        #       Child Loop BB9_75 Depth 3
                                        #       Child Loop BB9_86 Depth 3
                                        #     Child Loop BB9_100 Depth 2
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	movq	%rbx, 72(%rsp)          # 8-byte Spill
	movslq	420(%rdi,%rcx,4), %rdx
	movq	%rdx, 8(%rsp)           # 8-byte Spill
	movq	376(%rdi,%rdx,8), %rax
	movq	%rdi, 40(%rsp)          # 8-byte Spill
	movq	(%rsi,%rcx,8), %rdi
	movq	%rdi, 56(%rsp)          # 8-byte Spill
	movq	%rsi, 32(%rsp)          # 8-byte Spill
	movslq	20(%rax), %rcx
	movq	64(%rbx,%rcx,8), %r12
	movslq	24(%rax), %rax
	movq	96(%rbx,%rax,8), %rax
	movq	%rax, 88(%rsp)          # 8-byte Spill
	movslq	488(%rbp), %rax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	movq	480(%rbp), %rax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	movswl	(%rdi), %r14d
	subl	124(%rsp,%rdx,4), %r14d
	movl	%r14d, %eax
	sarl	$31, %eax
	addl	%eax, %r14d
	xorl	%r14d, %eax
	movl	$-1, %ecx
	movl	$0, %r15d
	je	.LBB9_30
	.align	16, 0x90
.LBB9_27:                               # %while.body.i
                                        #   Parent Loop BB9_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%ecx, %r15d
	sarl	%eax
	leal	1(%r15), %ecx
	testl	%eax, %eax
	jne	.LBB9_27
# BB#28:                                # %while.end.i
                                        #   in Loop: Header=BB9_26 Depth=1
	addl	$2, %r15d
	cmpl	$11, %ecx
	jl	.LBB9_30
# BB#29:                                # %if.then.7.i
                                        #   in Loop: Header=BB9_26 Depth=1
	movq	(%rbp), %rax
	movl	$6, 40(%rax)
	movq	%rbp, %rdi
	callq	*(%rax)
.LBB9_30:                               # %if.end.12.i
                                        #   in Loop: Header=BB9_26 Depth=1
	movslq	%r15d, %rax
	movl	(%r12,%rax,4), %ebx
	movsbl	1024(%r12,%rax), %r12d
	testl	%r12d, %r12d
	jne	.LBB9_32
# BB#31:                                # %if.then.i.i
                                        #   in Loop: Header=BB9_26 Depth=1
	movq	(%rbp), %rax
	movl	$41, 40(%rax)
	movq	%rbp, %rdi
	callq	*(%rax)
.LBB9_32:                               # %if.end.i.i
                                        #   in Loop: Header=BB9_26 Depth=1
	movl	$1, %r13d
	movb	%r12b, %cl
	shlq	%cl, %r13
	decl	%r13d
	andq	%rbx, %r13
	addl	120(%rsp), %r12d
	movl	$24, %ecx
	subl	%r12d, %ecx
	shlq	%cl, %r13
	orq	112(%rsp), %r13
	cmpl	$8, %r12d
	jl	.LBB9_41
	.align	16, 0x90
.LBB9_33:                               # %while.body.i.i.54
                                        #   Parent Loop BB9_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r13, %rbp
	shrq	$16, %rbp
	movq	96(%rsp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 96(%rsp)
	movb	%bpl, (%rax)
	decq	104(%rsp)
	jne	.LBB9_36
# BB#34:                                # %if.then.17.i.i.55
                                        #   in Loop: Header=BB9_33 Depth=2
	movq	144(%rsp), %rdi
	movq	40(%rdi), %rbx
	callq	*24(%rbx)
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	.LBB9_115
# BB#35:                                # %dump_buffer_s.exit384.i
                                        #   in Loop: Header=BB9_33 Depth=2
	movups	(%rbx), %xmm0
	movaps	%xmm0, 96(%rsp)
.LBB9_36:                               # %if.end.20.i.i.58
                                        #   in Loop: Header=BB9_33 Depth=2
	movzbl	%bpl, %eax
	cmpl	$255, %eax
	jne	.LBB9_40
# BB#37:                                # %if.then.23.i.i.62
                                        #   in Loop: Header=BB9_33 Depth=2
	movq	96(%rsp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 96(%rsp)
	movb	$0, (%rax)
	decq	104(%rsp)
	jne	.LBB9_40
# BB#38:                                # %if.then.30.i.i.65
                                        #   in Loop: Header=BB9_33 Depth=2
	movq	144(%rsp), %rdi
	movq	40(%rdi), %rbx
	callq	*24(%rbx)
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	.LBB9_115
# BB#39:                                # %dump_buffer_s.exit.i.66
                                        #   in Loop: Header=BB9_33 Depth=2
	movups	(%rbx), %xmm0
	movaps	%xmm0, 96(%rsp)
	.align	16, 0x90
.LBB9_40:                               # %cleanup.i.i.70
                                        #   in Loop: Header=BB9_33 Depth=2
	shlq	$8, %r13
	addl	$-8, %r12d
	cmpl	$7, %r12d
	jg	.LBB9_33
.LBB9_41:                               # %if.end.19.i
                                        #   in Loop: Header=BB9_26 Depth=1
	movq	%r13, 112(%rsp)
	movl	%r12d, 120(%rsp)
	testl	%r15d, %r15d
	je	.LBB9_52
# BB#42:                                # %if.end.i.78.i
                                        #   in Loop: Header=BB9_26 Depth=1
	movl	%r14d, %eax
	movl	$1, %edx
	movb	%r15b, %cl
	shlq	%cl, %rdx
	movl	$4294967295, %r14d      # imm = 0xFFFFFFFF
	addl	%edx, %r14d
	andq	%rax, %r14
	addl	%r15d, %r12d
	movl	$24, %ecx
	subl	%r12d, %ecx
	shlq	%cl, %r14
	orq	%r13, %r14
	cmpl	$8, %r12d
	jl	.LBB9_51
	.align	16, 0x90
.LBB9_43:                               # %while.body.i.89.i
                                        #   Parent Loop BB9_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r14, %rbx
	shrq	$16, %rbx
	movq	96(%rsp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 96(%rsp)
	movb	%bl, (%rax)
	decq	104(%rsp)
	jne	.LBB9_46
# BB#44:                                # %if.then.17.i.92.i
                                        #   in Loop: Header=BB9_43 Depth=2
	movq	144(%rsp), %rdi
	movq	40(%rdi), %rbp
	callq	*24(%rbp)
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	.LBB9_115
# BB#45:                                # %dump_buffer_s.exit394.i
                                        #   in Loop: Header=BB9_43 Depth=2
	movups	(%rbp), %xmm0
	movaps	%xmm0, 96(%rsp)
.LBB9_46:                               # %if.end.20.i.95.i
                                        #   in Loop: Header=BB9_43 Depth=2
	movzbl	%bl, %eax
	cmpl	$255, %eax
	jne	.LBB9_50
# BB#47:                                # %if.then.23.i.99.i
                                        #   in Loop: Header=BB9_43 Depth=2
	movq	96(%rsp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 96(%rsp)
	movb	$0, (%rax)
	decq	104(%rsp)
	jne	.LBB9_50
# BB#48:                                # %if.then.30.i.101.i
                                        #   in Loop: Header=BB9_43 Depth=2
	movq	144(%rsp), %rdi
	movq	40(%rdi), %rbx
	callq	*24(%rbx)
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	.LBB9_115
# BB#49:                                # %dump_buffer_s.exit121.i
                                        #   in Loop: Header=BB9_43 Depth=2
	movups	(%rbx), %xmm0
	movaps	%xmm0, 96(%rsp)
	.align	16, 0x90
.LBB9_50:                               # %cleanup.i.105.i
                                        #   in Loop: Header=BB9_43 Depth=2
	shlq	$8, %r14
	addl	$-8, %r12d
	cmpl	$7, %r12d
	jg	.LBB9_43
.LBB9_51:                               # %emit_bits_s.exit110.i
                                        #   in Loop: Header=BB9_26 Depth=1
	movq	%r14, 112(%rsp)
	movl	%r12d, 120(%rsp)
	movq	%r14, %r13
.LBB9_52:                               # %for.cond.preheader.i.72
                                        #   in Loop: Header=BB9_26 Depth=1
	movq	72(%rsp), %rbx          # 8-byte Reload
	movq	64(%rsp), %rax          # 8-byte Reload
	testl	%eax, %eax
	jle	.LBB9_109
# BB#53:                                # %for.body.lr.ph.i
                                        #   in Loop: Header=BB9_26 Depth=1
	xorl	%ebp, %ebp
	movl	$1, %edx
.LBB9_54:                               # %for.body.i.74
                                        #   Parent Loop BB9_26 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_56 Depth 3
                                        #         Child Loop BB9_59 Depth 4
                                        #       Child Loop BB9_69 Depth 3
                                        #       Child Loop BB9_75 Depth 3
                                        #       Child Loop BB9_86 Depth 3
	movq	48(%rsp), %rax          # 8-byte Reload
	movslq	(%rax,%rdx,4), %rax
	movq	56(%rsp), %rcx          # 8-byte Reload
	movswl	(%rcx,%rax,2), %eax
	testl	%eax, %eax
	je	.LBB9_116
# BB#55:                                # %while.cond.38.preheader.i
                                        #   in Loop: Header=BB9_54 Depth=2
	movl	%eax, 28(%rsp)          # 4-byte Spill
	movq	%rdx, (%rsp)            # 8-byte Spill
	movq	%rbx, 72(%rsp)          # 8-byte Spill
	cmpl	$15, %ebp
	jle	.LBB9_68
.LBB9_56:                               # %while.body.41.i
                                        #   Parent Loop BB9_26 Depth=1
                                        #     Parent Loop BB9_54 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB9_59 Depth 4
	movq	%rbp, 80(%rsp)          # 8-byte Spill
	movq	88(%rsp), %rax          # 8-byte Reload
	movl	960(%rax), %ebx
	movsbl	1264(%rax), %r15d
	testl	%r15d, %r15d
	jne	.LBB9_58
# BB#57:                                # %if.then.i.127.i
                                        #   in Loop: Header=BB9_56 Depth=3
	movq	144(%rsp), %rdi
	movq	(%rdi), %rax
	movl	$41, 40(%rax)
	callq	*(%rax)
.LBB9_58:                               # %if.end.i.141.i
                                        #   in Loop: Header=BB9_56 Depth=3
	movl	$1, %eax
	movb	%r15b, %cl
	shlq	%cl, %rax
	movl	$4294967295, %r14d      # imm = 0xFFFFFFFF
	addl	%eax, %r14d
	andq	%rbx, %r14
	addl	%r15d, %r12d
	movl	$24, %ecx
	subl	%r12d, %ecx
	shlq	%cl, %r14
	orq	%r13, %r14
	cmpl	$8, %r12d
	jl	.LBB9_67
	.align	16, 0x90
.LBB9_59:                               # %while.body.i.152.i
                                        #   Parent Loop BB9_26 Depth=1
                                        #     Parent Loop BB9_54 Depth=2
                                        #       Parent Loop BB9_56 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movq	%r14, %rbx
	shrq	$16, %rbx
	movq	96(%rsp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 96(%rsp)
	movb	%bl, (%rax)
	decq	104(%rsp)
	jne	.LBB9_62
# BB#60:                                # %if.then.17.i.155.i
                                        #   in Loop: Header=BB9_59 Depth=4
	movq	144(%rsp), %rdi
	movq	40(%rdi), %rbp
	callq	*24(%rbp)
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	.LBB9_115
# BB#61:                                # %dump_buffer_s.exit405.i
                                        #   in Loop: Header=BB9_59 Depth=4
	movups	(%rbp), %xmm0
	movaps	%xmm0, 96(%rsp)
.LBB9_62:                               # %if.end.20.i.158.i
                                        #   in Loop: Header=BB9_59 Depth=4
	movzbl	%bl, %eax
	cmpl	$255, %eax
	jne	.LBB9_66
# BB#63:                                # %if.then.23.i.162.i
                                        #   in Loop: Header=BB9_59 Depth=4
	movq	96(%rsp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 96(%rsp)
	movb	$0, (%rax)
	decq	104(%rsp)
	jne	.LBB9_66
# BB#64:                                # %if.then.30.i.164.i
                                        #   in Loop: Header=BB9_59 Depth=4
	movq	144(%rsp), %rdi
	movq	40(%rdi), %rbx
	callq	*24(%rbx)
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	.LBB9_115
# BB#65:                                # %dump_buffer_s.exit184.i
                                        #   in Loop: Header=BB9_59 Depth=4
	movups	(%rbx), %xmm0
	movaps	%xmm0, 96(%rsp)
	.align	16, 0x90
.LBB9_66:                               # %cleanup.i.168.i
                                        #   in Loop: Header=BB9_59 Depth=4
	shlq	$8, %r14
	addl	$-8, %r12d
	cmpl	$7, %r12d
	jg	.LBB9_59
.LBB9_67:                               # %if.end.50.i
                                        #   in Loop: Header=BB9_56 Depth=3
	movq	%r14, 112(%rsp)
	movl	%r12d, 120(%rsp)
	movq	80(%rsp), %rbp          # 8-byte Reload
	addl	$-16, %ebp
	cmpl	$15, %ebp
	movq	%r14, %r13
	jg	.LBB9_56
	.align	16, 0x90
.LBB9_68:                               # %while.end.52.i
                                        #   in Loop: Header=BB9_54 Depth=2
	movl	28(%rsp), %ecx          # 4-byte Reload
	movl	%ecx, %eax
	negl	%eax
	movw	%cx, %dx
	sarw	$15, %dx
	movw	%dx, 80(%rsp)           # 2-byte Spill
	testw	%cx, %cx
	cmovnsl	%ecx, %eax
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB9_69:                               # %while.cond.59.i
                                        #   Parent Loop BB9_26 Depth=1
                                        #     Parent Loop BB9_54 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	sarl	%eax
	incl	%ebx
	testl	%eax, %eax
	jne	.LBB9_69
# BB#70:                                # %while.end.64.i
                                        #   in Loop: Header=BB9_54 Depth=2
	cmpl	$11, %ebx
	jl	.LBB9_72
# BB#71:                                # %if.then.67.i
                                        #   in Loop: Header=BB9_54 Depth=2
	movq	144(%rsp), %rdi
	movq	(%rdi), %rax
	movl	$6, 40(%rax)
	callq	*(%rax)
.LBB9_72:                               # %if.end.75.i
                                        #   in Loop: Header=BB9_54 Depth=2
	shll	$4, %ebp
	leal	(%rbp,%rbx), %eax
	cltq
	movq	88(%rsp), %rcx          # 8-byte Reload
	movl	(%rcx,%rax,4), %r14d
	movsbl	1024(%rcx,%rax), %ebp
	testl	%ebp, %ebp
	jne	.LBB9_74
# BB#73:                                # %if.then.i.190.i
                                        #   in Loop: Header=BB9_54 Depth=2
	movq	144(%rsp), %rdi
	movq	(%rdi), %rax
	movl	$41, 40(%rax)
	callq	*(%rax)
.LBB9_74:                               # %if.end.i.204.i
                                        #   in Loop: Header=BB9_54 Depth=2
	movl	$1, %eax
	movb	%bpl, %cl
	shlq	%cl, %rax
	movl	$4294967295, %r15d      # imm = 0xFFFFFFFF
	addl	%eax, %r15d
	andq	%r14, %r15
	addl	%ebp, %r12d
	movl	$24, %ecx
	subl	%r12d, %ecx
	shlq	%cl, %r15
	orq	%r13, %r15
	cmpl	$8, %r12d
	jl	.LBB9_83
	.align	16, 0x90
.LBB9_75:                               # %while.body.i.215.i
                                        #   Parent Loop BB9_26 Depth=1
                                        #     Parent Loop BB9_54 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%r15, %rbp
	shrq	$16, %rbp
	movq	96(%rsp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 96(%rsp)
	movb	%bpl, (%rax)
	decq	104(%rsp)
	jne	.LBB9_78
# BB#76:                                # %if.then.17.i.218.i
                                        #   in Loop: Header=BB9_75 Depth=3
	movq	144(%rsp), %rdi
	movq	40(%rdi), %r14
	callq	*24(%r14)
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	.LBB9_115
# BB#77:                                # %dump_buffer_s.exit416.i
                                        #   in Loop: Header=BB9_75 Depth=3
	movups	(%r14), %xmm0
	movaps	%xmm0, 96(%rsp)
.LBB9_78:                               # %if.end.20.i.221.i
                                        #   in Loop: Header=BB9_75 Depth=3
	movzbl	%bpl, %eax
	cmpl	$255, %eax
	jne	.LBB9_82
# BB#79:                                # %if.then.23.i.225.i
                                        #   in Loop: Header=BB9_75 Depth=3
	movq	96(%rsp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 96(%rsp)
	movb	$0, (%rax)
	decq	104(%rsp)
	jne	.LBB9_82
# BB#80:                                # %if.then.30.i.227.i
                                        #   in Loop: Header=BB9_75 Depth=3
	movq	144(%rsp), %rdi
	movq	40(%rdi), %rbp
	callq	*24(%rbp)
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	.LBB9_115
# BB#81:                                # %dump_buffer_s.exit247.i
                                        #   in Loop: Header=BB9_75 Depth=3
	movups	(%rbp), %xmm0
	movaps	%xmm0, 96(%rsp)
	.align	16, 0x90
.LBB9_82:                               # %cleanup.i.231.i
                                        #   in Loop: Header=BB9_75 Depth=3
	shlq	$8, %r15
	addl	$-8, %r12d
	cmpl	$7, %r12d
	jg	.LBB9_75
.LBB9_83:                               # %if.end.86.i
                                        #   in Loop: Header=BB9_54 Depth=2
	movswl	80(%rsp), %ebp          # 2-byte Folded Reload
	addl	28(%rsp), %ebp          # 4-byte Folded Reload
	movq	%r15, 112(%rsp)
	movl	%r12d, 120(%rsp)
	testl	%ebx, %ebx
	jne	.LBB9_85
# BB#84:                                # %if.then.i.253.i
                                        #   in Loop: Header=BB9_54 Depth=2
	movq	144(%rsp), %rdi
	movq	(%rdi), %rax
	movl	$41, 40(%rax)
	callq	*(%rax)
.LBB9_85:                               # %if.end.i.267.i
                                        #   in Loop: Header=BB9_54 Depth=2
	movl	%ebp, %eax
	movl	$1, %edx
	movb	%bl, %cl
	shlq	%cl, %rdx
	movl	$4294967295, %r13d      # imm = 0xFFFFFFFF
	addl	%edx, %r13d
	andq	%rax, %r13
	addl	%ebx, %r12d
	movl	$24, %ecx
	subl	%r12d, %ecx
	shlq	%cl, %r13
	orq	%r15, %r13
	cmpl	$8, %r12d
	jl	.LBB9_94
	.align	16, 0x90
.LBB9_86:                               # %while.body.i.278.i
                                        #   Parent Loop BB9_26 Depth=1
                                        #     Parent Loop BB9_54 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%r13, %rbx
	shrq	$16, %rbx
	movq	96(%rsp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 96(%rsp)
	movb	%bl, (%rax)
	decq	104(%rsp)
	jne	.LBB9_89
# BB#87:                                # %if.then.17.i.281.i
                                        #   in Loop: Header=BB9_86 Depth=3
	movq	144(%rsp), %rdi
	movq	40(%rdi), %rbp
	callq	*24(%rbp)
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	.LBB9_115
# BB#88:                                # %dump_buffer_s.exit427.i
                                        #   in Loop: Header=BB9_86 Depth=3
	movups	(%rbp), %xmm0
	movaps	%xmm0, 96(%rsp)
.LBB9_89:                               # %if.end.20.i.284.i
                                        #   in Loop: Header=BB9_86 Depth=3
	movzbl	%bl, %eax
	cmpl	$255, %eax
	jne	.LBB9_93
# BB#90:                                # %if.then.23.i.288.i
                                        #   in Loop: Header=BB9_86 Depth=3
	movq	96(%rsp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 96(%rsp)
	movb	$0, (%rax)
	decq	104(%rsp)
	jne	.LBB9_93
# BB#91:                                # %if.then.30.i.290.i
                                        #   in Loop: Header=BB9_86 Depth=3
	movq	144(%rsp), %rdi
	movq	40(%rdi), %rbx
	callq	*24(%rbx)
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	.LBB9_115
# BB#92:                                # %dump_buffer_s.exit310.i
                                        #   in Loop: Header=BB9_86 Depth=3
	movups	(%rbx), %xmm0
	movaps	%xmm0, 96(%rsp)
	.align	16, 0x90
.LBB9_93:                               # %cleanup.i.294.i
                                        #   in Loop: Header=BB9_86 Depth=3
	shlq	$8, %r13
	addl	$-8, %r12d
	cmpl	$7, %r12d
	jg	.LBB9_86
.LBB9_94:                               # %emit_bits_s.exit299.i
                                        #   in Loop: Header=BB9_54 Depth=2
	movq	%r13, 112(%rsp)
	movl	%r12d, 120(%rsp)
	xorl	%ebp, %ebp
	movq	72(%rsp), %rbx          # 8-byte Reload
	movq	(%rsp), %rdx            # 8-byte Reload
	jmp	.LBB9_95
	.align	16, 0x90
.LBB9_116:                              # %if.then.36.i
                                        #   in Loop: Header=BB9_54 Depth=2
	incl	%ebp
.LBB9_95:                               # %for.inc.i
                                        #   in Loop: Header=BB9_54 Depth=2
	cmpq	64(%rsp), %rdx          # 8-byte Folded Reload
	leaq	1(%rdx), %rdx
	jl	.LBB9_54
# BB#96:                                # %for.end.i
                                        #   in Loop: Header=BB9_26 Depth=1
	testl	%ebp, %ebp
	jle	.LBB9_109
# BB#97:                                # %if.then.95.i
                                        #   in Loop: Header=BB9_26 Depth=1
	movq	%rbx, %r15
	movq	88(%rsp), %rax          # 8-byte Reload
	movl	(%rax), %ebx
	movsbl	1024(%rax), %r14d
	testl	%r14d, %r14d
	jne	.LBB9_99
# BB#98:                                # %if.then.i.316.i
                                        #   in Loop: Header=BB9_26 Depth=1
	movq	144(%rsp), %rdi
	movq	(%rdi), %rax
	movl	$41, 40(%rax)
	callq	*(%rax)
.LBB9_99:                               # %if.end.i.330.i
                                        #   in Loop: Header=BB9_26 Depth=1
	movl	$1, %eax
	movb	%r14b, %cl
	shlq	%cl, %rax
	movl	$4294967295, %ebp       # imm = 0xFFFFFFFF
	addl	%eax, %ebp
	andq	%rbx, %rbp
	addl	%r14d, %r12d
	movl	$24, %ecx
	subl	%r12d, %ecx
	shlq	%cl, %rbp
	orq	%r13, %rbp
	cmpl	$8, %r12d
	jl	.LBB9_108
.LBB9_100:                              # %while.body.i.341.i
                                        #   Parent Loop BB9_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rbp, %rbx
	shrq	$16, %rbx
	movq	96(%rsp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 96(%rsp)
	movb	%bl, (%rax)
	decq	104(%rsp)
	jne	.LBB9_103
# BB#101:                               # %if.then.17.i.344.i
                                        #   in Loop: Header=BB9_100 Depth=2
	movq	144(%rsp), %rdi
	movq	40(%rdi), %r14
	callq	*24(%r14)
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	.LBB9_115
# BB#102:                               # %dump_buffer_s.exit438.i
                                        #   in Loop: Header=BB9_100 Depth=2
	movups	(%r14), %xmm0
	movaps	%xmm0, 96(%rsp)
.LBB9_103:                              # %if.end.20.i.347.i
                                        #   in Loop: Header=BB9_100 Depth=2
	movzbl	%bl, %eax
	cmpl	$255, %eax
	jne	.LBB9_107
# BB#104:                               # %if.then.23.i.351.i
                                        #   in Loop: Header=BB9_100 Depth=2
	movq	96(%rsp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 96(%rsp)
	movb	$0, (%rax)
	decq	104(%rsp)
	jne	.LBB9_107
# BB#105:                               # %if.then.30.i.353.i
                                        #   in Loop: Header=BB9_100 Depth=2
	movq	144(%rsp), %rdi
	movq	40(%rdi), %rbx
	callq	*24(%rbx)
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	.LBB9_115
# BB#106:                               # %dump_buffer_s.exit373.i
                                        #   in Loop: Header=BB9_100 Depth=2
	movups	(%rbx), %xmm0
	movaps	%xmm0, 96(%rsp)
.LBB9_107:                              # %cleanup.i.357.i
                                        #   in Loop: Header=BB9_100 Depth=2
	shlq	$8, %rbp
	addl	$-8, %r12d
	cmpl	$7, %r12d
	jg	.LBB9_100
.LBB9_108:                              # %emit_bits_s.exit362.i
                                        #   in Loop: Header=BB9_26 Depth=1
	movq	%rbp, 112(%rsp)
	movl	%r12d, 120(%rsp)
	movq	%r15, %rbx
	.align	16, 0x90
.LBB9_109:                              # %if.end.27
                                        #   in Loop: Header=BB9_26 Depth=1
	movq	32(%rsp), %rsi          # 8-byte Reload
	movq	16(%rsp), %rcx          # 8-byte Reload
	movq	(%rsi,%rcx,8), %rax
	movswl	(%rax), %eax
	movq	8(%rsp), %rdx           # 8-byte Reload
	movl	%eax, 124(%rsp,%rdx,4)
	incq	%rcx
	movq	40(%rsp), %rdi          # 8-byte Reload
	movslq	416(%rdi), %rax
	cmpq	%rax, %rcx
	jl	.LBB9_110
.LBB9_111:                              # %for.end
	leaq	112(%rsp), %rax
	leaq	24(%rbx), %rcx
	movq	40(%rdi), %rdx
	movaps	96(%rsp), %xmm0
	movups	%xmm0, (%rdx)
	movups	(%rax), %xmm0
	movups	16(%rax), %xmm1
	movups	%xmm1, 16(%rcx)
	movups	%xmm0, (%rcx)
	movl	316(%rdi), %ecx
	movl	$1, %eax
	testl	%ecx, %ecx
	je	.LBB9_115
# BB#112:                               # %if.then.46
	movl	56(%rbx), %edx
	testl	%edx, %edx
	jne	.LBB9_114
# BB#113:                               # %if.then.50
	movl	%ecx, 56(%rbx)
	movl	60(%rbx), %edx
	incl	%edx
	andl	$7, %edx
	movl	%edx, 60(%rbx)
	movl	%ecx, %edx
.LBB9_114:                              # %if.end.56
	decl	%edx
	movl	%edx, 56(%rbx)
.LBB9_115:                              # %cleanup
	addq	$152, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end9:
	.size	encode_mcu_huff, .Lfunc_end9-encode_mcu_huff
	.cfi_endproc

	.align	16, 0x90
	.type	jpeg_make_c_derived_tbl,@function
jpeg_make_c_derived_tbl:                # @jpeg_make_c_derived_tbl
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp117:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp118:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp119:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp120:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp121:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp122:
	.cfi_def_cfa_offset 56
	subq	$1336, %rsp             # imm = 0x538
.Ltmp123:
	.cfi_def_cfa_offset 1392
.Ltmp124:
	.cfi_offset %rbx, -56
.Ltmp125:
	.cfi_offset %r12, -48
.Ltmp126:
	.cfi_offset %r13, -40
.Ltmp127:
	.cfi_offset %r14, -32
.Ltmp128:
	.cfi_offset %r15, -24
.Ltmp129:
	.cfi_offset %rbp, -16
	movq	%rcx, %r12
	movl	%edx, %ebp
	movl	%esi, %ebx
	movq	%rdi, %r13
	cmpl	$4, %ebp
	jb	.LBB10_2
# BB#1:                                 # %if.then
	movq	(%r13), %rax
	movl	$52, 40(%rax)
	movl	%ebp, 44(%rax)
	movq	%r13, %rdi
	callq	*(%rax)
.LBB10_2:                               # %if.end
	testl	%ebx, %ebx
	movslq	%ebp, %rax
	leaq	160(%r13,%rax,8), %rcx
	leaq	192(%r13,%rax,8), %rax
	cmovneq	%rcx, %rax
	movq	(%rax), %r15
	testq	%r15, %r15
	jne	.LBB10_4
# BB#3:                                 # %if.then.9
	movq	(%r13), %rax
	movl	$52, 40(%rax)
	movl	%ebp, 44(%rax)
	movq	%r13, %rdi
	callq	*(%rax)
.LBB10_4:                               # %if.end.18
	movq	(%r12), %rax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	testq	%rax, %rax
	je	.LBB10_6
# BB#5:                                 # %if.end.18.if.end.21_crit_edge
	movl	%ebx, 12(%rsp)          # 4-byte Spill
	jmp	.LBB10_7
.LBB10_6:                               # %if.then.20
	movl	%ebx, 12(%rsp)          # 4-byte Spill
	movq	8(%r13), %rax
	movl	$1, %esi
	movl	$1280, %edx             # imm = 0x500
	movq	%r13, %rdi
	callq	*(%rax)
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movq	%rax, (%r12)
.LBB10_7:                               # %if.end.21
	xorl	%r14d, %r14d
	movl	$1, %ebp
	.align	16, 0x90
.LBB10_8:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_13 Depth 2
                                        #     Child Loop BB10_17 Depth 2
	movzbl	(%r15,%rbp), %ebx
	leal	(%rbx,%r14), %r12d
	cmpl	$257, %r12d             # imm = 0x101
	jl	.LBB10_10
# BB#9:                                 # %if.then.30
                                        #   in Loop: Header=BB10_8 Depth=1
	movq	(%r13), %rax
	movl	$9, 40(%rax)
	movq	%r13, %rdi
	callq	*(%rax)
.LBB10_10:                              # %while.cond.preheader
                                        #   in Loop: Header=BB10_8 Depth=1
	testb	%bl, %bl
	je	.LBB10_19
# BB#11:                                # %while.body.lr.ph
                                        #   in Loop: Header=BB10_8 Depth=1
	movslq	%r14d, %rsi
	leal	-1(%rbx), %eax
	leaq	1(%rax), %rdi
	movl	%ebx, %ecx
	andl	$31, %ecx
	subq	%rcx, %rdi
	leaq	1(%rax,%rsi), %rax
	je	.LBB10_15
# BB#12:                                # %vector.ph
                                        #   in Loop: Header=BB10_8 Depth=1
	leaq	(%rdi,%rsi), %rcx
	movl	%ebx, %edx
	subl	%edi, %edx
	movzbl	%bpl, %edi
	movd	%edi, %xmm0
	punpcklbw	%xmm0, %xmm0    # xmm0 = xmm0[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	pshufd	$196, %xmm0, %xmm0      # xmm0 = xmm0[0,1,0,3]
	pshuflw	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	pshufhw	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,1,2,3,4,4,4,4]
	movslq	%esi, %rsi
	leaq	1088(%rsp), %rdi
	leaq	(%rsi,%rdi), %rsi
	leal	-1(%rbx), %edi
	incq	%rdi
	andl	$31, %ebx
	subq	%rbx, %rdi
	.align	16, 0x90
.LBB10_13:                              # %vector.body
                                        #   Parent Loop BB10_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	%xmm0, -16(%rsi)
	movdqu	%xmm0, (%rsi)
	addq	$32, %rsi
	addq	$-32, %rdi
	jne	.LBB10_13
# BB#14:                                #   in Loop: Header=BB10_8 Depth=1
	movq	%rcx, %rsi
	movl	%edx, %ebx
.LBB10_15:                              # %middle.block
                                        #   in Loop: Header=BB10_8 Depth=1
	cmpq	%rsi, %rax
	je	.LBB10_18
# BB#16:                                # %while.body.preheader
                                        #   in Loop: Header=BB10_8 Depth=1
	leaq	1072(%rsp,%rsi), %rax
	.align	16, 0x90
.LBB10_17:                              # %while.body
                                        #   Parent Loop BB10_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	decl	%ebx
	movb	%bpl, (%rax)
	leaq	1(%rax), %rax
	jne	.LBB10_17
.LBB10_18:                              #   in Loop: Header=BB10_8 Depth=1
	movl	%r12d, %r14d
.LBB10_19:                              # %for.inc
                                        #   in Loop: Header=BB10_8 Depth=1
	incq	%rbp
	cmpq	$17, %rbp
	jne	.LBB10_8
# BB#20:                                # %for.end
	movq	%r13, 16(%rsp)          # 8-byte Spill
	movslq	%r14d, %rax
	movb	$0, 1072(%rsp,%rax)
	movsbl	1072(%rsp), %r13d
	testl	%r13d, %r13d
	je	.LBB10_28
# BB#21:                                # %while.cond.50.preheader.lr.ph
	xorl	%ebx, %ebx
	movb	%r13b, %r12b
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB10_22:                              # %while.cond.50.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_24 Depth 2
	movsbl	%r12b, %eax
	cmpl	%r13d, %eax
	jne	.LBB10_25
# BB#23:                                # %while.body.56.lr.ph
                                        #   in Loop: Header=BB10_22 Depth=1
	movslq	%ebp, %rax
	leal	1(%rax), %ecx
	movslq	%ecx, %rcx
	leaq	1072(%rsp,%rcx), %rcx
	.align	16, 0x90
.LBB10_24:                              # %while.body.56
                                        #   Parent Loop BB10_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	incl	%ebp
	movl	%ebx, 32(%rsp,%rax,4)
	incl	%ebx
	movslq	%ebp, %rax
	movsbl	(%rcx), %r12d
	incq	%rcx
	cmpl	%r13d, %r12d
	je	.LBB10_24
.LBB10_25:                              # %while.end.61
                                        #   in Loop: Header=BB10_22 Depth=1
	movl	%ebx, %eax
	movl	$1, %edx
	movb	%r13b, %cl
	shlq	%cl, %rdx
	cmpq	%rdx, %rax
	jl	.LBB10_27
# BB#26:                                # %if.then.65
                                        #   in Loop: Header=BB10_22 Depth=1
	movq	16(%rsp), %rdi          # 8-byte Reload
	movq	(%rdi), %rax
	movl	$9, 40(%rax)
	callq	*(%rax)
.LBB10_27:                              # %if.end.70
                                        #   in Loop: Header=BB10_22 Depth=1
	addl	%ebx, %ebx
	incl	%r13d
	testb	%r12b, %r12b
	jne	.LBB10_22
.LBB10_28:                              # %while.end.73
	movq	24(%rsp), %rax          # 8-byte Reload
	leaq	1024(%rax), %rdi
	xorl	%esi, %esi
	movl	$256, %edx              # imm = 0x100
	callq	memset
	cmpl	$0, 12(%rsp)            # 4-byte Folded Reload
	movl	$15, %eax
	movl	$255, %r12d
	cmovnel	%eax, %r12d
	testl	%r14d, %r14d
	jle	.LBB10_34
# BB#29:                                # %for.body.80.preheader
	addq	$17, %r15
	leaq	32(%rsp), %r13
	leaq	1072(%rsp), %rbx
	.align	16, 0x90
.LBB10_30:                              # %for.body.80
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%r15), %ebp
	cmpl	%r12d, %ebp
	ja	.LBB10_32
# BB#31:                                # %lor.lhs.false.89
                                        #   in Loop: Header=BB10_30 Depth=1
	movq	24(%rsp), %rax          # 8-byte Reload
	cmpb	$0, 1024(%rax,%rbp)
	je	.LBB10_33
.LBB10_32:                              # %if.then.95
                                        #   in Loop: Header=BB10_30 Depth=1
	movq	16(%rsp), %rdi          # 8-byte Reload
	movq	(%rdi), %rax
	movl	$9, 40(%rax)
	callq	*(%rax)
.LBB10_33:                              # %if.end.100
                                        #   in Loop: Header=BB10_30 Depth=1
	movl	(%r13), %eax
	movq	24(%rsp), %rcx          # 8-byte Reload
	movl	%eax, (%rcx,%rbp,4)
	movb	(%rbx), %al
	movb	%al, 1024(%rcx,%rbp)
	addq	$4, %r13
	incq	%rbx
	incq	%r15
	decl	%r14d
	jne	.LBB10_30
.LBB10_34:                              # %for.end.112
	addq	$1336, %rsp             # imm = 0x538
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end10:
	.size	jpeg_make_c_derived_tbl, .Lfunc_end10-jpeg_make_c_derived_tbl
	.cfi_endproc

	.align	16, 0x90
	.type	emit_eobrun,@function
emit_eobrun:                            # @emit_eobrun
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp130:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp131:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp132:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp133:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp134:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp135:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp136:
	.cfi_def_cfa_offset 80
.Ltmp137:
	.cfi_offset %rbx, -56
.Ltmp138:
	.cfi_offset %r12, -48
.Ltmp139:
	.cfi_offset %r13, -40
.Ltmp140:
	.cfi_offset %r14, -32
.Ltmp141:
	.cfi_offset %r15, -24
.Ltmp142:
	.cfi_offset %rbp, -16
	movq	%rdi, %r13
	movl	228(%r13), %eax
	testl	%eax, %eax
	je	.LBB11_60
# BB#1:
	movl	$-1, %ebp
	.align	16, 0x90
.LBB11_2:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	sarl	%eax
	incl	%ebp
	testl	%eax, %eax
	jne	.LBB11_2
# BB#3:                                 # %while.end
	cmpl	$15, %ebp
	jl	.LBB11_5
# BB#4:                                 # %if.then.3
	movq	216(%r13), %rdi
	movq	(%rdi), %rax
	movl	$41, 40(%rax)
	callq	*(%rax)
.LBB11_5:                               # %if.end
	movl	$4294967295, %ebx       # imm = 0xFFFFFFFF
	movslq	224(%r13), %rax
	movl	%ebp, %ecx
	shll	$4, %ecx
	cmpl	$0, 192(%r13)
	je	.LBB11_7
# BB#6:                                 # %if.then.i
	movslq	%ecx, %rcx
	movq	160(%r13,%rax,8), %rax
	incq	(%rax,%rcx,8)
	jmp	.LBB11_23
.LBB11_7:                               # %if.else.i
	movq	96(%r13,%rax,8), %rax
	movslq	%ecx, %rcx
	movl	(%rax,%rcx,4), %r14d
	movsbl	1024(%rax,%rcx), %r12d
	testl	%r12d, %r12d
	jne	.LBB11_9
# BB#8:                                 # %if.end.i
	movq	216(%r13), %rdi
	movq	(%rdi), %rax
	movl	$41, 40(%rax)
	callq	*(%rax)
	cmpl	$0, 192(%r13)
	jne	.LBB11_23
.LBB11_9:                               # %if.end.5.i
	movl	$1, %eax
	movb	%r12b, %cl
	shlq	%cl, %rax
	movl	$4294967295, %r15d      # imm = 0xFFFFFFFF
	addl	%eax, %r15d
	andq	%r14, %r15
	addl	32(%r13), %r12d
	movl	$24, %ecx
	subl	%r12d, %ecx
	shlq	%cl, %r15
	orq	24(%r13), %r15
	cmpl	$8, %r12d
	jl	.LBB11_22
# BB#10:                                # %while.body.lr.ph.i
	movl	%r12d, %ebx
	movl	%r12d, 16(%rsp)         # 4-byte Spill
	.align	16, 0x90
.LBB11_11:                              # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%r15, %r12
	shrq	$16, %r12
	movq	200(%r13), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 200(%r13)
	movb	%r12b, (%rax)
	decq	208(%r13)
	jne	.LBB11_15
# BB#12:                                # %if.then.19.i
                                        #   in Loop: Header=BB11_11 Depth=1
	movq	216(%r13), %rdi
	movq	40(%rdi), %r14
	callq	*24(%r14)
	testl	%eax, %eax
	jne	.LBB11_14
# BB#13:                                # %if.then.i.170
                                        #   in Loop: Header=BB11_11 Depth=1
	movq	216(%r13), %rdi
	movq	(%rdi), %rax
	movl	$25, 40(%rax)
	callq	*(%rax)
.LBB11_14:                              # %dump_buffer_e.exit175
                                        #   in Loop: Header=BB11_11 Depth=1
	movups	(%r14), %xmm0
	movups	%xmm0, 200(%r13)
.LBB11_15:                              # %if.end.20.i
                                        #   in Loop: Header=BB11_11 Depth=1
	movzbl	%r12b, %eax
	cmpl	$255, %eax
	jne	.LBB11_20
# BB#16:                                # %if.then.23.i
                                        #   in Loop: Header=BB11_11 Depth=1
	movq	200(%r13), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 200(%r13)
	movb	$0, (%rax)
	decq	208(%r13)
	jne	.LBB11_20
# BB#17:                                # %if.then.30.i
                                        #   in Loop: Header=BB11_11 Depth=1
	movq	216(%r13), %rdi
	movq	40(%rdi), %r14
	callq	*24(%r14)
	testl	%eax, %eax
	jne	.LBB11_19
# BB#18:                                # %if.then.i.28
                                        #   in Loop: Header=BB11_11 Depth=1
	movq	216(%r13), %rdi
	movq	(%rdi), %rax
	movl	$25, 40(%rax)
	callq	*(%rax)
.LBB11_19:                              # %dump_buffer_e.exit
                                        #   in Loop: Header=BB11_11 Depth=1
	movups	(%r14), %xmm0
	movups	%xmm0, 200(%r13)
	.align	16, 0x90
.LBB11_20:                              # %if.end.32.i
                                        #   in Loop: Header=BB11_11 Depth=1
	shlq	$8, %r15
	addl	$-8, %ebx
	cmpl	$7, %ebx
	jg	.LBB11_11
# BB#21:                                # %while.cond.while.end_crit_edge.i
	movl	16(%rsp), %r12d         # 4-byte Reload
	andl	$7, %r12d
	movl	$4294967295, %ebx       # imm = 0xFFFFFFFF
.LBB11_22:                              # %while.end.i
	movq	%r15, 24(%r13)
	movl	%r12d, 32(%r13)
.LBB11_23:                              # %emit_ac_symbol.exit
	testl	%ebp, %ebp
	je	.LBB11_39
# BB#24:                                # %if.end.i.39
	cmpl	$0, 192(%r13)
	jne	.LBB11_39
# BB#25:                                # %if.end.5.i.53
	movl	228(%r13), %eax
	movl	$1, %r14d
	movb	%bpl, %cl
	shlq	%cl, %r14
	addq	%rbx, %r14
	andq	%rax, %r14
	addl	32(%r13), %ebp
	movl	$24, %ecx
	subl	%ebp, %ecx
	shlq	%cl, %r14
	orq	24(%r13), %r14
	cmpl	$8, %ebp
	jl	.LBB11_38
# BB#26:                                # %while.body.lr.ph.i.56
	movl	%ebp, %r15d
	.align	16, 0x90
.LBB11_27:                              # %while.body.i.64
                                        # =>This Inner Loop Header: Depth=1
	movq	%r14, %rbx
	shrq	$16, %rbx
	movq	200(%r13), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 200(%r13)
	movb	%bl, (%rax)
	decq	208(%r13)
	jne	.LBB11_31
# BB#28:                                # %if.then.19.i.65
                                        #   in Loop: Header=BB11_27 Depth=1
	movq	216(%r13), %rdi
	movq	40(%rdi), %r12
	callq	*24(%r12)
	testl	%eax, %eax
	jne	.LBB11_30
# BB#29:                                # %if.then.i.184
                                        #   in Loop: Header=BB11_27 Depth=1
	movq	216(%r13), %rdi
	movq	(%rdi), %rax
	movl	$25, 40(%rax)
	callq	*(%rax)
.LBB11_30:                              # %dump_buffer_e.exit189
                                        #   in Loop: Header=BB11_27 Depth=1
	movups	(%r12), %xmm0
	movups	%xmm0, 200(%r13)
.LBB11_31:                              # %if.end.20.i.68
                                        #   in Loop: Header=BB11_27 Depth=1
	movzbl	%bl, %eax
	cmpl	$255, %eax
	jne	.LBB11_36
# BB#32:                                # %if.then.23.i.72
                                        #   in Loop: Header=BB11_27 Depth=1
	movq	200(%r13), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 200(%r13)
	movb	$0, (%rax)
	decq	208(%r13)
	jne	.LBB11_36
# BB#33:                                # %if.then.30.i.73
                                        #   in Loop: Header=BB11_27 Depth=1
	movq	216(%r13), %rdi
	movq	40(%rdi), %rbx
	callq	*24(%rbx)
	testl	%eax, %eax
	jne	.LBB11_35
# BB#34:                                # %if.then.i.91
                                        #   in Loop: Header=BB11_27 Depth=1
	movq	216(%r13), %rdi
	movq	(%rdi), %rax
	movl	$25, 40(%rax)
	callq	*(%rax)
.LBB11_35:                              # %dump_buffer_e.exit96
                                        #   in Loop: Header=BB11_27 Depth=1
	movups	(%rbx), %xmm0
	movups	%xmm0, 200(%r13)
	.align	16, 0x90
.LBB11_36:                              # %if.end.32.i.77
                                        #   in Loop: Header=BB11_27 Depth=1
	shlq	$8, %r14
	addl	$-8, %r15d
	cmpl	$7, %r15d
	jg	.LBB11_27
# BB#37:                                # %while.cond.while.end_crit_edge.i.78
	andl	$7, %ebp
.LBB11_38:                              # %while.end.i.81
	movq	%r14, 24(%r13)
	movl	%ebp, 32(%r13)
.LBB11_39:                              # %if.end.10
	movl	$0, 228(%r13)
	movl	232(%r13), %r15d
	testl	%r15d, %r15d
	je	.LBB11_59
# BB#40:                                # %if.end.10
	movl	192(%r13), %eax
	testl	%eax, %eax
	jne	.LBB11_59
# BB#41:                                # %while.body.i.103.preheader
	movq	240(%r13), %rcx
	xorl	%eax, %eax
	jmp	.LBB11_43
	.align	16, 0x90
.LBB11_42:                              # %while.body.i.103thread-pre-split
                                        #   in Loop: Header=BB11_43 Depth=1
	incq	%rcx
	movl	192(%r13), %eax
.LBB11_43:                              # %while.body.i.103
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_46 Depth 2
	testl	%eax, %eax
	jne	.LBB11_58
# BB#44:                                # %if.end.5.i.118
                                        #   in Loop: Header=BB11_43 Depth=1
	movzbl	(%rcx), %r14d
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	andl	$1, %r14d
	movl	32(%r13), %ebx
	movl	$23, %ecx
	subl	%ebx, %ecx
	incl	%ebx
	movl	%ebx, 12(%rsp)          # 4-byte Spill
	shlq	%cl, %r14
	orq	24(%r13), %r14
	cmpl	$8, %ebx
	jl	.LBB11_45
	.align	16, 0x90
.LBB11_46:                              # %while.body.i.129
                                        #   Parent Loop BB11_43 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r14, %rbp
	shrq	$16, %rbp
	movq	200(%r13), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 200(%r13)
	movb	%bpl, (%rax)
	decq	208(%r13)
	jne	.LBB11_50
# BB#47:                                # %if.then.19.i.130
                                        #   in Loop: Header=BB11_46 Depth=2
	movq	216(%r13), %rdi
	movq	40(%rdi), %r12
	callq	*24(%r12)
	testl	%eax, %eax
	jne	.LBB11_49
# BB#48:                                # %if.then.i.198
                                        #   in Loop: Header=BB11_46 Depth=2
	movq	216(%r13), %rdi
	movq	(%rdi), %rax
	movl	$25, 40(%rax)
	callq	*(%rax)
.LBB11_49:                              # %dump_buffer_e.exit203
                                        #   in Loop: Header=BB11_46 Depth=2
	movups	(%r12), %xmm0
	movups	%xmm0, 200(%r13)
.LBB11_50:                              # %if.end.20.i.133
                                        #   in Loop: Header=BB11_46 Depth=2
	movzbl	%bpl, %eax
	cmpl	$255, %eax
	jne	.LBB11_55
# BB#51:                                # %if.then.23.i.137
                                        #   in Loop: Header=BB11_46 Depth=2
	movq	200(%r13), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 200(%r13)
	movb	$0, (%rax)
	decq	208(%r13)
	jne	.LBB11_55
# BB#52:                                # %if.then.30.i.138
                                        #   in Loop: Header=BB11_46 Depth=2
	movq	216(%r13), %rdi
	movq	40(%rdi), %rbp
	callq	*24(%rbp)
	testl	%eax, %eax
	jne	.LBB11_54
# BB#53:                                # %if.then.i.156
                                        #   in Loop: Header=BB11_46 Depth=2
	movq	216(%r13), %rdi
	movq	(%rdi), %rax
	movl	$25, 40(%rax)
	callq	*(%rax)
.LBB11_54:                              # %dump_buffer_e.exit161
                                        #   in Loop: Header=BB11_46 Depth=2
	movups	(%rbp), %xmm0
	movups	%xmm0, 200(%r13)
	.align	16, 0x90
.LBB11_55:                              # %if.end.32.i.142
                                        #   in Loop: Header=BB11_46 Depth=2
	shlq	$8, %r14
	addl	$-8, %ebx
	cmpl	$7, %ebx
	jg	.LBB11_46
# BB#56:                                # %while.cond.while.end_crit_edge.i.143
                                        #   in Loop: Header=BB11_43 Depth=1
	movl	12(%rsp), %eax          # 4-byte Reload
	andl	$7, %eax
	movq	16(%rsp), %rcx          # 8-byte Reload
	jmp	.LBB11_57
.LBB11_45:                              #   in Loop: Header=BB11_43 Depth=1
	movq	16(%rsp), %rcx          # 8-byte Reload
	movl	12(%rsp), %eax          # 4-byte Reload
.LBB11_57:                              # %while.end.i.146
                                        #   in Loop: Header=BB11_43 Depth=1
	movq	%r14, 24(%r13)
	movl	%eax, 32(%r13)
.LBB11_58:                              # %emit_bits_e.exit147
                                        #   in Loop: Header=BB11_43 Depth=1
	decl	%r15d
	jne	.LBB11_42
.LBB11_59:                              # %emit_buffered_bits.exit
	movl	$0, 232(%r13)
.LBB11_60:                              # %if.end.13
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end11:
	.size	emit_eobrun, .Lfunc_end11-emit_eobrun
	.cfi_endproc

	.align	16, 0x90
	.type	jpeg_gen_optimal_table,@function
jpeg_gen_optimal_table:                 # @jpeg_gen_optimal_table
	.cfi_startproc
# BB#0:                                 # %for.body
	pushq	%r15
.Ltmp143:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp144:
	.cfi_def_cfa_offset 24
	pushq	%r13
.Ltmp145:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp146:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp147:
	.cfi_def_cfa_offset 48
	subq	$2128, %rsp             # imm = 0x850
.Ltmp148:
	.cfi_def_cfa_offset 2176
.Ltmp149:
	.cfi_offset %rbx, -48
.Ltmp150:
	.cfi_offset %r12, -40
.Ltmp151:
	.cfi_offset %r13, -32
.Ltmp152:
	.cfi_offset %r14, -24
.Ltmp153:
	.cfi_offset %r15, -16
	movq	%rdx, %r13
	movq	%rsi, %r15
	movq	%rdi, %r14
	leaq	2080(%rsp), %rdi
	xorl	%r12d, %r12d
	xorl	%esi, %esi
	movl	$33, %edx
	callq	memset
	leaq	1040(%rsp), %rdi
	xorl	%esi, %esi
	movl	$1028, %edx             # imm = 0x404
	callq	memset
	pcmpeqd	%xmm0, %xmm0
	movdqa	%xmm0, (%rsp)
	movdqa	%xmm0, 16(%rsp)
	movdqa	%xmm0, 32(%rsp)
	movdqa	%xmm0, 48(%rsp)
	movdqa	%xmm0, 64(%rsp)
	movdqa	%xmm0, 80(%rsp)
	movdqa	%xmm0, 96(%rsp)
	movdqa	%xmm0, 112(%rsp)
	movdqa	%xmm0, 128(%rsp)
	movdqa	%xmm0, 144(%rsp)
	movdqa	%xmm0, 160(%rsp)
	movdqa	%xmm0, 176(%rsp)
	movdqa	%xmm0, 192(%rsp)
	movdqa	%xmm0, 208(%rsp)
	movdqa	%xmm0, 224(%rsp)
	movdqa	%xmm0, 240(%rsp)
	movdqa	%xmm0, 256(%rsp)
	movdqa	%xmm0, 272(%rsp)
	movdqa	%xmm0, 288(%rsp)
	movdqa	%xmm0, 304(%rsp)
	movdqa	%xmm0, 320(%rsp)
	movdqa	%xmm0, 336(%rsp)
	movdqa	%xmm0, 352(%rsp)
	movdqa	%xmm0, 368(%rsp)
	movdqa	%xmm0, 384(%rsp)
	movdqa	%xmm0, 400(%rsp)
	movdqa	%xmm0, 416(%rsp)
	movdqa	%xmm0, 432(%rsp)
	movdqa	%xmm0, 448(%rsp)
	movdqa	%xmm0, 464(%rsp)
	movdqa	%xmm0, 480(%rsp)
	movdqa	%xmm0, 496(%rsp)
	movdqa	%xmm0, 512(%rsp)
	movdqa	%xmm0, 528(%rsp)
	movdqa	%xmm0, 544(%rsp)
	movdqa	%xmm0, 560(%rsp)
	movdqa	%xmm0, 576(%rsp)
	movdqa	%xmm0, 592(%rsp)
	movdqa	%xmm0, 608(%rsp)
	movdqa	%xmm0, 624(%rsp)
	movdqa	%xmm0, 640(%rsp)
	movdqa	%xmm0, 656(%rsp)
	movdqa	%xmm0, 672(%rsp)
	movdqa	%xmm0, 688(%rsp)
	movdqa	%xmm0, 704(%rsp)
	movdqa	%xmm0, 720(%rsp)
	movdqa	%xmm0, 736(%rsp)
	movdqa	%xmm0, 752(%rsp)
	movdqa	%xmm0, 768(%rsp)
	movdqa	%xmm0, 784(%rsp)
	movdqa	%xmm0, 800(%rsp)
	movdqa	%xmm0, 816(%rsp)
	movdqa	%xmm0, 832(%rsp)
	movdqa	%xmm0, 848(%rsp)
	movdqa	%xmm0, 864(%rsp)
	movdqa	%xmm0, 880(%rsp)
	movdqa	%xmm0, 896(%rsp)
	movdqa	%xmm0, 912(%rsp)
	movdqa	%xmm0, 928(%rsp)
	movdqa	%xmm0, 944(%rsp)
	movdqa	%xmm0, 960(%rsp)
	movdqa	%xmm0, 976(%rsp)
	movdqa	%xmm0, 992(%rsp)
	movdqa	%xmm0, 1008(%rsp)
	movl	$-1, 1024(%rsp)
	movq	$1, 2048(%r13)
	movl	$-1, %r8d
	jmp	.LBB12_1
	.align	16, 0x90
.LBB12_35:                              #   in Loop: Header=BB12_1 Depth=1
	xorl	%r12d, %r12d
.LBB12_1:                               # %for.cond.5
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_2 Depth 2
                                        #       Child Loop BB12_4 Depth 3
                                        #       Child Loop BB12_32 Depth 3
                                        #     Child Loop BB12_34 Depth 2
	movl	$1000000000, %ecx       # imm = 0x3B9ACA00
	jmp	.LBB12_2
	.align	16, 0x90
.LBB12_36:                              # %for.body.7
                                        #   in Loop: Header=BB12_2 Depth=2
	movslq	%r12d, %rdx
	movq	(%r13,%rdx,8), %rdx
	testq	%rdx, %rdx
	sete	%sil
	cmpq	%rcx, %rdx
	setg	%al
	orb	%sil, %al
	cmovel	%r12d, %r8d
	cmoveq	%rdx, %rcx
	incl	%r12d
.LBB12_2:                               # %for.cond.5
                                        #   Parent Loop BB12_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB12_4 Depth 3
                                        #       Child Loop BB12_32 Depth 3
	cmpl	$257, %r12d             # imm = 0x101
	jl	.LBB12_36
# BB#3:                                 # %for.body.20.preheader
                                        #   in Loop: Header=BB12_2 Depth=2
	movl	%r8d, %r9d
	movl	$-1, %ecx
	xorl	%esi, %esi
	movl	$1000000000, %edi       # imm = 0x3B9ACA00
	.align	16, 0x90
.LBB12_4:                               # %for.body.20
                                        #   Parent Loop BB12_1 Depth=1
                                        #     Parent Loop BB12_2 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	(%r13,%rsi,8), %rax
	testq	%rax, %rax
	sete	%bl
	cmpq	%rdi, %rax
	setg	%dl
	orb	%bl, %dl
	cmpl	%esi, %r9d
	sete	%bl
	orb	%dl, %bl
	cmovel	%esi, %ecx
	cmoveq	%rax, %rdi
	incq	%rsi
	cmpq	$257, %rsi              # imm = 0x101
	jne	.LBB12_4
# BB#5:                                 # %for.end.36
                                        #   in Loop: Header=BB12_2 Depth=2
	testl	%ecx, %ecx
	js	.LBB12_6
# BB#30:                                # %if.end.39
                                        #   in Loop: Header=BB12_2 Depth=2
	movslq	%ecx, %rdx
	movq	(%r13,%rdx,8), %rax
	movslq	%r8d, %rsi
	addq	%rax, (%r13,%rsi,8)
	movq	$0, (%r13,%rdx,8)
	jmp	.LBB12_32
	.align	16, 0x90
.LBB12_31:                              # %while.body
                                        #   in Loop: Header=BB12_32 Depth=3
	movslq	%eax, %rsi
.LBB12_32:                              # %while.body
                                        #   Parent Loop BB12_1 Depth=1
                                        #     Parent Loop BB12_2 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	incl	1040(%rsp,%rsi,4)
	movl	(%rsp,%rsi,4), %eax
	testl	%eax, %eax
	jns	.LBB12_31
# BB#33:                                #   in Loop: Header=BB12_2 Depth=2
	leaq	(%rsp,%rsi,4), %rax
	movl	%ecx, (%rax)
	incl	1040(%rsp,%rdx,4)
	movl	(%rsp,%rdx,4), %edx
	movl	$-1, %r8d
	testl	%edx, %edx
	movl	$0, %r12d
	movl	$1000000000, %ecx       # imm = 0x3B9ACA00
	js	.LBB12_2
	.align	16, 0x90
.LBB12_34:                              # %while.body.66
                                        #   Parent Loop BB12_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	%edx, %rax
	incl	1040(%rsp,%rax,4)
	movl	(%rsp,%rax,4), %edx
	testl	%edx, %edx
	jns	.LBB12_34
	jmp	.LBB12_35
.LBB12_6:                               # %for.cond.74.preheader
	xorl	%r13d, %r13d
	movl	$32, %ebx
	movl	$31, %r12d
	.align	16, 0x90
.LBB12_7:                               # %for.body.76
                                        # =>This Inner Loop Header: Depth=1
	movl	1040(%rsp,%r13,4), %eax
	testl	%eax, %eax
	je	.LBB12_11
# BB#8:                                 # %if.then.80
                                        #   in Loop: Header=BB12_7 Depth=1
	cmpl	$33, %eax
	jl	.LBB12_10
# BB#9:                                 # %if.then.84
                                        #   in Loop: Header=BB12_7 Depth=1
	movq	(%r14), %rax
	movl	$40, 40(%rax)
	movq	%r14, %rdi
	callq	*(%rax)
	movl	1040(%rsp,%r13,4), %eax
.LBB12_10:                              # %if.end.86
                                        #   in Loop: Header=BB12_7 Depth=1
	cltq
	incb	2080(%rsp,%rax)
.LBB12_11:                              # %for.inc.93
                                        #   in Loop: Header=BB12_7 Depth=1
	incq	%r13
	cmpq	$257, %r13              # imm = 0x101
	jne	.LBB12_7
# BB#12:
	movabsq	$4294967296, %rax       # imm = 0x100000000
	.align	16, 0x90
.LBB12_13:                              # %while.cond.99.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_14 Depth 2
                                        #       Child Loop BB12_16 Depth 3
	movb	2080(%rsp,%rbx), %dl
	leaq	-1(%rbx), %rcx
	jmp	.LBB12_14
	.align	16, 0x90
.LBB12_17:                              # %while.end.112
                                        #   in Loop: Header=BB12_14 Depth=2
	addb	$-2, %dl
	movb	%dl, 2080(%rsp,%rbx)
	incb	2079(%rsp,%rbx)
	movq	%rsi, %rdx
	shlq	$32, %rdx
	addq	%rax, %rdx
	sarq	$32, %rdx
	addb	$2, 2080(%rsp,%rdx)
	decb	2080(%rsp,%rsi)
	movb	2080(%rsp,%rbx), %dl
.LBB12_14:                              # %while.cond.99.preheader
                                        #   Parent Loop BB12_13 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB12_16 Depth 3
	testb	%dl, %dl
	je	.LBB12_18
# BB#15:                                # %while.body.104
                                        #   in Loop: Header=BB12_14 Depth=2
	movq	%r12, %rsi
	.align	16, 0x90
.LBB12_16:                              # %while.cond.105
                                        #   Parent Loop BB12_13 Depth=1
                                        #     Parent Loop BB12_14 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpb	$0, 2079(%rsp,%rsi)
	leaq	-1(%rsi), %rsi
	je	.LBB12_16
	jmp	.LBB12_17
	.align	16, 0x90
.LBB12_18:                              # %for.inc.132
                                        #   in Loop: Header=BB12_13 Depth=1
	decq	%r12
	cmpq	$16, %rcx
	movq	%rcx, %rbx
	jg	.LBB12_13
# BB#19:                                # %while.cond.135.preheader
	leaq	2097(%rsp), %rax
	.align	16, 0x90
.LBB12_20:                              # %while.cond.135
                                        # =>This Inner Loop Header: Depth=1
	movb	-1(%rax), %cl
	decq	%rax
	testb	%cl, %cl
	je	.LBB12_20
# BB#21:                                # %while.end.143
	decb	%cl
	movb	%cl, (%rax)
	leaq	2080(%rsp), %rsi
	movl	$17, %edx
	movq	%r15, %rdi
	callq	memcpy
	xorl	%eax, %eax
	movl	$1, %ecx
	.align	16, 0x90
.LBB12_22:                              # %for.cond.155.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_23 Depth 2
	xorl	%edx, %edx
	.align	16, 0x90
.LBB12_23:                              # %for.body.158
                                        #   Parent Loop BB12_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	%ecx, 1040(%rsp,%rdx,4)
	jne	.LBB12_25
# BB#24:                                # %if.then.163
                                        #   in Loop: Header=BB12_23 Depth=2
	cltq
	movb	%dl, 17(%r15,%rax)
	incl	%eax
.LBB12_25:                              # %for.inc.169
                                        #   in Loop: Header=BB12_23 Depth=2
	cmpl	%ecx, 1044(%rsp,%rdx,4)
	jne	.LBB12_27
# BB#26:                                # %if.then.163.1
                                        #   in Loop: Header=BB12_23 Depth=2
	cltq
	leal	1(%rdx), %esi
	movb	%sil, 17(%r15,%rax)
	incl	%eax
.LBB12_27:                              # %for.inc.169.1
                                        #   in Loop: Header=BB12_23 Depth=2
	addq	$2, %rdx
	cmpq	$256, %rdx              # imm = 0x100
	jne	.LBB12_23
# BB#28:                                # %for.inc.172
                                        #   in Loop: Header=BB12_22 Depth=1
	incl	%ecx
	cmpl	$33, %ecx
	jne	.LBB12_22
# BB#29:                                # %for.end.174
	movl	$0, 276(%r15)
	addq	$2128, %rsp             # imm = 0x850
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.Lfunc_end12:
	.size	jpeg_gen_optimal_table, .Lfunc_end12-jpeg_gen_optimal_table
	.cfi_endproc

	.align	16, 0x90
	.type	flush_bits_e,@function
flush_bits_e:                           # @flush_bits_e
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp154:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp155:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp156:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp157:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp158:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp159:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp160:
	.cfi_def_cfa_offset 80
.Ltmp161:
	.cfi_offset %rbx, -56
.Ltmp162:
	.cfi_offset %r12, -48
.Ltmp163:
	.cfi_offset %r13, -40
.Ltmp164:
	.cfi_offset %r14, -32
.Ltmp165:
	.cfi_offset %r15, -24
.Ltmp166:
	.cfi_offset %rbp, -16
	movq	%rdi, %r13
	cmpl	$0, 192(%r13)
	je	.LBB13_2
# BB#1:                                 # %entry.emit_bits_e.exit_crit_edge
	leaq	24(%r13), %rax
	addq	$32, %r13
	movq	%r13, %rdx
	jmp	.LBB13_16
.LBB13_2:                               # %if.end.5.i
	leaq	32(%r13), %rdx
	leaq	24(%r13), %rax
	movl	32(%r13), %r12d
	movl	$17, %ecx
	subl	%r12d, %ecx
	addl	$7, %r12d
	movl	$127, %r14d
	shlq	%cl, %r14
	orq	24(%r13), %r14
	cmpl	$8, %r12d
	jl	.LBB13_15
# BB#3:                                 # %while.body.lr.ph.i
	movq	%rdx, 8(%rsp)           # 8-byte Spill
	movq	%rax, 16(%rsp)          # 8-byte Spill
	movl	%r12d, %ebx
	.align	16, 0x90
.LBB13_4:                               # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%r14, %rbp
	shrq	$16, %rbp
	movq	200(%r13), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 200(%r13)
	movb	%bpl, (%rax)
	decq	208(%r13)
	jne	.LBB13_8
# BB#5:                                 # %if.then.19.i
                                        #   in Loop: Header=BB13_4 Depth=1
	movq	216(%r13), %rdi
	movq	40(%rdi), %r15
	callq	*24(%r15)
	testl	%eax, %eax
	jne	.LBB13_7
# BB#6:                                 # %if.then.i.13
                                        #   in Loop: Header=BB13_4 Depth=1
	movq	216(%r13), %rdi
	movq	(%rdi), %rax
	movl	$25, 40(%rax)
	callq	*(%rax)
.LBB13_7:                               # %dump_buffer_e.exit17
                                        #   in Loop: Header=BB13_4 Depth=1
	movups	(%r15), %xmm0
	movups	%xmm0, 200(%r13)
.LBB13_8:                               # %if.end.20.i
                                        #   in Loop: Header=BB13_4 Depth=1
	movzbl	%bpl, %eax
	cmpl	$255, %eax
	jne	.LBB13_13
# BB#9:                                 # %if.then.23.i
                                        #   in Loop: Header=BB13_4 Depth=1
	movq	200(%r13), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 200(%r13)
	movb	$0, (%rax)
	decq	208(%r13)
	jne	.LBB13_13
# BB#10:                                # %if.then.30.i
                                        #   in Loop: Header=BB13_4 Depth=1
	movq	216(%r13), %rdi
	movq	40(%rdi), %rbp
	callq	*24(%rbp)
	testl	%eax, %eax
	jne	.LBB13_12
# BB#11:                                # %if.then.i
                                        #   in Loop: Header=BB13_4 Depth=1
	movq	216(%r13), %rdi
	movq	(%rdi), %rax
	movl	$25, 40(%rax)
	callq	*(%rax)
.LBB13_12:                              # %dump_buffer_e.exit
                                        #   in Loop: Header=BB13_4 Depth=1
	movups	(%rbp), %xmm0
	movups	%xmm0, 200(%r13)
	.align	16, 0x90
.LBB13_13:                              # %if.end.32.i
                                        #   in Loop: Header=BB13_4 Depth=1
	shlq	$8, %r14
	addl	$-8, %ebx
	cmpl	$7, %ebx
	jg	.LBB13_4
# BB#14:                                # %while.cond.while.end_crit_edge.i
	andl	$7, %r12d
	movq	16(%rsp), %rax          # 8-byte Reload
	movq	8(%rsp), %rdx           # 8-byte Reload
.LBB13_15:                              # %while.end.i
	movq	%r14, (%rax)
	movl	%r12d, (%rdx)
.LBB13_16:                              # %emit_bits_e.exit
	movq	$0, (%rax)
	movl	$0, (%rdx)
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end13:
	.size	flush_bits_e, .Lfunc_end13-flush_bits_e
	.cfi_endproc

	.align	16, 0x90
	.type	emit_restart_e,@function
emit_restart_e:                         # @emit_restart_e
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp167:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp168:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp169:
	.cfi_def_cfa_offset 32
.Ltmp170:
	.cfi_offset %rbx, -32
.Ltmp171:
	.cfi_offset %r14, -24
.Ltmp172:
	.cfi_offset %rbp, -16
	movl	%esi, %ebp
	movq	%rdi, %rbx
	callq	emit_eobrun
	cmpl	$0, 192(%rbx)
	jne	.LBB14_10
# BB#1:                                 # %if.then
	movq	%rbx, %rdi
	callq	flush_bits_e
	movq	200(%rbx), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 200(%rbx)
	movb	$-1, (%rax)
	decq	208(%rbx)
	je	.LBB14_3
# BB#2:                                 # %if.then.if.end_crit_edge
	movq	200(%rbx), %rax
	jmp	.LBB14_6
.LBB14_3:                               # %if.then.1
	movq	216(%rbx), %rdi
	movq	40(%rdi), %r14
	callq	*24(%r14)
	testl	%eax, %eax
	jne	.LBB14_5
# BB#4:                                 # %if.then.i
	movq	216(%rbx), %rdi
	movq	(%rdi), %rax
	movl	$25, 40(%rax)
	callq	*(%rax)
.LBB14_5:                               # %dump_buffer_e.exit
	movups	(%r14), %xmm0
	movups	%xmm0, 200(%rbx)
	movd	%xmm0, %rax
.LBB14_6:                               # %if.end
	addl	$208, %ebp
	leaq	1(%rax), %rcx
	movq	%rcx, 200(%rbx)
	movb	%bpl, (%rax)
	decq	208(%rbx)
	jne	.LBB14_10
# BB#7:                                 # %if.then.8
	movq	216(%rbx), %rdi
	movq	40(%rdi), %rbp
	callq	*24(%rbp)
	testl	%eax, %eax
	jne	.LBB14_9
# BB#8:                                 # %if.then.i.25
	movq	216(%rbx), %rdi
	movq	(%rdi), %rax
	movl	$25, 40(%rax)
	callq	*(%rax)
.LBB14_9:                               # %dump_buffer_e.exit29
	movups	(%rbp), %xmm0
	movups	%xmm0, 200(%rbx)
.LBB14_10:                              # %if.end.10
	movq	216(%rbx), %rax
	cmpl	$0, 460(%rax)
	je	.LBB14_11
# BB#14:                                # %if.else
	movq	$0, 228(%rbx)
	jmp	.LBB14_15
.LBB14_11:                              # %for.cond.preheader
	cmpl	$0, 372(%rax)
	jle	.LBB14_15
# BB#12:                                # %for.body.preheader
	xorl	%eax, %eax
	.align	16, 0x90
.LBB14_13:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$0, 36(%rbx,%rax,4)
	incq	%rax
	movq	216(%rbx), %rcx
	movslq	372(%rcx), %rcx
	cmpq	%rcx, %rax
	jl	.LBB14_13
.LBB14_15:                              # %if.end.17
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end14:
	.size	emit_restart_e, .Lfunc_end14-emit_restart_e
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
