	.text
	.file	"phix_manager.bc"
	.globl	opj_write_phix
	.align	16, 0x90
	.type	opj_write_phix,@function
opj_write_phix:                         # @opj_write_phix
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
	subq	$152, %rsp
.Ltmp6:
	.cfi_def_cfa_offset 208
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
	movq	%r8, %r13
	movq	%rcx, %rbp
	movl	%edx, 140(%rsp)         # 4-byte Spill
	movl	%edi, 136(%rsp)         # 4-byte Spill
	movslq	260(%rsp), %r15
	xorl	%ebx, %ebx
	testq	%r15, %r15
	js	.LBB0_2
# BB#1:                                 # %cond.false
	movl	$12, %esi
	movq	%r15, %rdi
	callq	calloc
	movq	%rax, %rbx
.LBB0_2:                                # %if.end
	movq	%rbx, 128(%rsp)         # 8-byte Spill
	leaq	208(%rsp), %r12
	movq	%rbp, %rdi
	callq	opj_stream_tell
	movq	%rax, 120(%rsp)         # 8-byte Spill
	movl	$4, %esi
	movq	%rbp, %rdi
	movq	%r13, %rdx
	callq	opj_stream_skip
	movq	%r15, %r14
	movq	%rbp, %r15
	leaq	144(%rsp), %rbp
	movl	$1885890936, %esi       # imm = 0x70686978
	movl	$4, %edx
	movq	%rbp, %rdi
	callq	opj_write_bytes_LE
	movl	$4, %edx
	movq	%r15, %rdi
	movq	%rbp, %rsi
	movq	%r13, %rcx
	callq	opj_stream_write_data
	xorl	%edi, %edi
	movl	%r14d, %esi
	movq	%rbx, %rdx
	movq	%r13, %rbx
	movq	%r15, %rcx
	movq	%rbx, %r8
	callq	opj_write_manf
	testl	%r14d, %r14d
	jle	.LBB0_5
# BB#3:                                 # %for.body.20.preheader
	movq	128(%rsp), %rax         # 8-byte Reload
	leaq	4(%rax), %r13
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB0_4:                                # %for.body.20
                                        # =>This Inner Loop Header: Depth=1
	movups	96(%r12), %xmm0
	movups	%xmm0, 96(%rsp)
	movups	80(%r12), %xmm0
	movups	%xmm0, 80(%rsp)
	movups	64(%r12), %xmm0
	movups	%xmm0, 64(%rsp)
	movups	(%r12), %xmm0
	movups	16(%r12), %xmm1
	movups	32(%r12), %xmm2
	movups	48(%r12), %xmm3
	movups	%xmm3, 48(%rsp)
	movups	%xmm2, 32(%rsp)
	movups	%xmm1, 16(%rsp)
	movups	%xmm0, (%rsp)
	movl	136(%rsp), %edi         # 4-byte Reload
	movl	%ebp, %esi
	movl	140(%rsp), %ecx         # 4-byte Reload
	movq	%r15, %r8
	movq	%rbx, %r9
	callq	opj_write_phixfaix
	movl	%eax, -4(%r13)
	movl	$1717660024, (%r13)     # imm = 0x66616978
	incq	%rbp
	addq	$12, %r13
	cmpq	%r14, %rbp
	jl	.LBB0_4
.LBB0_5:                                # %if.end.1
	movq	%r15, %rdi
	callq	opj_stream_tell
	movq	%rax, %rbp
	subq	120(%rsp), %rbp         # 8-byte Folded Reload
	movl	$4, %esi
	movq	%r15, %rdi
	movq	%rbx, %rdx
	callq	opj_stream_seek
	leaq	144(%rsp), %r13
	movl	$4, %edx
	movq	%r13, %rdi
	movl	%ebp, %esi
	callq	opj_write_bytes_LE
	movl	$4, %edx
	movq	%r15, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rcx
	callq	opj_stream_write_data
	movslq	%ebp, %rsi
	movq	120(%rsp), %rbp         # 8-byte Reload
	addq	%rbp, %rsi
	movq	%r15, %rdi
	movq	%rbx, %rdx
	callq	opj_stream_seek
	movq	%r15, %rdi
	movq	%rbp, %rsi
	movq	%rbx, %rdx
	callq	opj_stream_seek
	movq	%r15, %rdi
	callq	opj_stream_tell
	movq	%rax, 120(%rsp)         # 8-byte Spill
	movl	$4, %esi
	movq	%r15, %rdi
	movq	%rbx, %rdx
	callq	opj_stream_skip
	movl	$1885890936, %esi       # imm = 0x70686978
	movl	$4, %edx
	movq	%r13, %rdi
	callq	opj_write_bytes_LE
	movl	$4, %edx
	movq	%r15, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rcx
	callq	opj_stream_write_data
	movl	$1, %edi
	movl	%r14d, %esi
	movq	128(%rsp), %rdx         # 8-byte Reload
	movq	%r15, %rcx
	movq	%rbx, %r8
	callq	opj_write_manf
	testl	%r14d, %r14d
	movq	%rbx, %r13
	jle	.LBB0_8
# BB#6:                                 # %for.body.20.1.preheader
	movq	128(%rsp), %rax         # 8-byte Reload
	leaq	4(%rax), %rbx
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB0_7:                                # %for.body.20.1
                                        # =>This Inner Loop Header: Depth=1
	movups	96(%r12), %xmm0
	movups	%xmm0, 96(%rsp)
	movups	80(%r12), %xmm0
	movups	%xmm0, 80(%rsp)
	movups	64(%r12), %xmm0
	movups	%xmm0, 64(%rsp)
	movups	(%r12), %xmm0
	movups	16(%r12), %xmm1
	movups	32(%r12), %xmm2
	movups	48(%r12), %xmm3
	movups	%xmm3, 48(%rsp)
	movups	%xmm2, 32(%rsp)
	movups	%xmm1, 16(%rsp)
	movups	%xmm0, (%rsp)
	movl	136(%rsp), %edi         # 4-byte Reload
	movl	%ebp, %esi
	movl	140(%rsp), %ecx         # 4-byte Reload
	movq	%r15, %r8
	movq	%r13, %r9
	callq	opj_write_phixfaix
	movl	%eax, -4(%rbx)
	movl	$1717660024, (%rbx)     # imm = 0x66616978
	incq	%rbp
	addq	$12, %rbx
	cmpq	%r14, %rbp
	jl	.LBB0_7
.LBB0_8:                                # %for.end.1
	movq	%r15, %rdi
	callq	opj_stream_tell
	movq	%rax, %rbp
	movq	120(%rsp), %rbx         # 8-byte Reload
	subq	%rbx, %rbp
	movl	$4, %esi
	movq	%r15, %rdi
	movq	%r13, %rdx
	callq	opj_stream_seek
	leaq	144(%rsp), %r14
	movl	$4, %edx
	movq	%r14, %rdi
	movl	%ebp, %esi
	callq	opj_write_bytes_LE
	movl	$4, %edx
	movq	%r15, %rdi
	movq	%r14, %rsi
	movq	%r13, %rcx
	callq	opj_stream_write_data
	movslq	%ebp, %rbp
	leaq	(%rbx,%rbp), %rsi
	movq	%r15, %rdi
	movq	%r13, %rdx
	callq	opj_stream_seek
	movq	128(%rsp), %rdi         # 8-byte Reload
	callq	free
	movl	%ebp, %eax
	addq	$152, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	opj_write_phix, .Lfunc_end0-opj_write_phix
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_0:
	.quad	4611686018427387904     # double 2
.LCPI1_1:
	.quad	4629700416936869888     # double 32
	.text
	.globl	opj_write_phixfaix
	.align	16, 0x90
	.type	opj_write_phixfaix,@function
opj_write_phixfaix:                     # @opj_write_phixfaix
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
	subq	$392, %rsp              # imm = 0x188
.Ltmp19:
	.cfi_def_cfa_offset 448
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
	movq	%r9, %rbp
	movq	%r8, %r14
	movl	%esi, %r15d
	movl	%edi, 364(%rsp)         # 4-byte Spill
	cvtsi2sdl	%ecx, %xmm0
	movsd	%xmm0, 368(%rsp)        # 8-byte Spill
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	callq	pow
	movsd	368(%rsp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	seta	%al
	movzbl	%al, %ebx
	leal	4(,%rbx,4), %r13d
	movq	%r14, %rdi
	callq	opj_stream_tell
	movq	%rax, 16(%rsp)          # 8-byte Spill
	movl	$4, %esi
	movq	%r14, %rdi
	movq	%rbp, %rdx
	callq	opj_stream_skip
	leaq	384(%rsp), %r12
	movl	$1717660024, %esi       # imm = 0x66616978
	movl	$4, %edx
	movq	%r12, %rdi
	callq	opj_write_bytes_LE
	movl	$4, %edx
	movq	%r14, %rdi
	movq	%r12, %rsi
	movq	%rbp, %rcx
	callq	opj_stream_write_data
	movl	$1, %edx
	movq	%r12, %rdi
	movl	%ebx, %esi
	callq	opj_write_bytes_LE
	movl	$1, %edx
	movq	%r14, %rdi
	movq	%r12, %rsi
	movq	%rbp, %rcx
	callq	opj_stream_write_data
	movslq	%r15d, %rcx
	movq	%rcx, 104(%rsp)         # 8-byte Spill
	movq	512(%rsp), %rax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	movslq	(%rax,%rcx,4), %rax
	xorl	%ebx, %ebx
	testq	%rax, %rax
	js	.LBB1_13
# BB#1:                                 # %for.body.lr.ph
	leaq	448(%rsp), %rcx
	movq	%rcx, %rdx
	movq	104(%rdx), %rcx
	movl	56(%rdx), %edx
	xorl	%esi, %esi
	cmpl	$-1, %eax
	movl	$0, %ebx
	je	.LBB1_11
# BB#2:                                 # %overflow.checked
	leaq	1(%rax), %r8
	xorl	%esi, %esi
	movq	%r8, %r9
	andq	$-8, %r9
	xorpd	%xmm1, %xmm1
	pxor	%xmm2, %xmm2
	je	.LBB1_10
# BB#3:                                 # %vector.ph
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm8        # xmm8 = xmm0[0,0,0,0]
	leaq	-7(%rax), %rsi
	movq	%rsi, %rbx
	shrq	$3, %rbx
	xorl	%edi, %edi
	btq	$3, %rsi
	jb	.LBB1_4
# BB#5:                                 # %vector.body.prol
	movdqu	24(%rcx), %xmm1
	movdqu	40(%rcx), %xmm2
	movdqu	156(%rcx), %xmm3
	movdqu	172(%rcx), %xmm4
	pshufd	$245, %xmm3, %xmm5      # xmm5 = xmm3[1,1,3,3]
	pshufd	$245, %xmm1, %xmm6      # xmm6 = xmm1[1,1,3,3]
	pmuludq	%xmm5, %xmm6
	pshufd	$232, %xmm6, %xmm5      # xmm5 = xmm6[0,2,2,3]
	pmuludq	%xmm3, %xmm1
	pshufd	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,2,2,3]
	punpckldq	%xmm5, %xmm1    # xmm1 = xmm1[0],xmm5[0],xmm1[1],xmm5[1]
	pshufd	$245, %xmm4, %xmm3      # xmm3 = xmm4[1,1,3,3]
	pshufd	$245, %xmm2, %xmm5      # xmm5 = xmm2[1,1,3,3]
	pmuludq	%xmm3, %xmm5
	pshufd	$232, %xmm5, %xmm3      # xmm3 = xmm5[0,2,2,3]
	pmuludq	%xmm4, %xmm2
	pshufd	$232, %xmm2, %xmm2      # xmm2 = xmm2[0,2,2,3]
	punpckldq	%xmm3, %xmm2    # xmm2 = xmm2[0],xmm3[0],xmm2[1],xmm3[1]
	pshufd	$245, %xmm1, %xmm3      # xmm3 = xmm1[1,1,3,3]
	pmuludq	%xmm8, %xmm1
	pshufd	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,2,2,3]
	pshufd	$245, %xmm8, %xmm4      # xmm4 = xmm8[1,1,3,3]
	pmuludq	%xmm4, %xmm3
	pshufd	$232, %xmm3, %xmm3      # xmm3 = xmm3[0,2,2,3]
	punpckldq	%xmm3, %xmm1    # xmm1 = xmm1[0],xmm3[0],xmm1[1],xmm3[1]
	pshufd	$245, %xmm2, %xmm3      # xmm3 = xmm2[1,1,3,3]
	pmuludq	%xmm8, %xmm2
	pshufd	$232, %xmm2, %xmm2      # xmm2 = xmm2[0,2,2,3]
	pmuludq	%xmm4, %xmm3
	pshufd	$232, %xmm3, %xmm3      # xmm3 = xmm3[0,2,2,3]
	punpckldq	%xmm3, %xmm2    # xmm2 = xmm2[0],xmm3[0],xmm2[1],xmm3[1]
	movl	$8, %edi
	jmp	.LBB1_6
.LBB1_4:
	xorpd	%xmm1, %xmm1
	pxor	%xmm2, %xmm2
.LBB1_6:                                # %vector.ph.split
	testq	%rbx, %rbx
	je	.LBB1_9
# BB#7:                                 # %vector.ph.split.split
	movq	%r8, %rsi
	andq	$-8, %rsi
	subq	%rdi, %rsi
	leaq	204(%rcx,%rdi,4), %rbx
	pshufd	$245, %xmm8, %xmm9      # xmm9 = xmm8[1,1,3,3]
	.align	16, 0x90
.LBB1_8:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movdqu	-48(%rbx), %xmm4
	movdqu	-32(%rbx), %xmm6
	movdqu	-180(%rbx), %xmm0
	movdqu	-164(%rbx), %xmm3
	movdqu	-148(%rbx), %xmm7
	movdqu	-132(%rbx), %xmm10
	pshufd	$245, %xmm0, %xmm5      # xmm5 = xmm0[1,1,3,3]
	pmuludq	%xmm4, %xmm0
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	pshufd	$245, %xmm4, %xmm4      # xmm4 = xmm4[1,1,3,3]
	pmuludq	%xmm5, %xmm4
	pshufd	$232, %xmm4, %xmm4      # xmm4 = xmm4[0,2,2,3]
	punpckldq	%xmm4, %xmm0    # xmm0 = xmm0[0],xmm4[0],xmm0[1],xmm4[1]
	pshufd	$245, %xmm3, %xmm4      # xmm4 = xmm3[1,1,3,3]
	pmuludq	%xmm6, %xmm3
	pshufd	$232, %xmm3, %xmm3      # xmm3 = xmm3[0,2,2,3]
	pshufd	$245, %xmm6, %xmm5      # xmm5 = xmm6[1,1,3,3]
	pmuludq	%xmm4, %xmm5
	pshufd	$232, %xmm5, %xmm4      # xmm4 = xmm5[0,2,2,3]
	punpckldq	%xmm4, %xmm3    # xmm3 = xmm3[0],xmm4[0],xmm3[1],xmm4[1]
	pshufd	$245, %xmm0, %xmm5      # xmm5 = xmm0[1,1,3,3]
	pmuludq	%xmm8, %xmm0
	pshufd	$232, %xmm0, %xmm4      # xmm4 = xmm0[0,2,2,3]
	pmuludq	%xmm9, %xmm5
	pshufd	$232, %xmm5, %xmm0      # xmm0 = xmm5[0,2,2,3]
	punpckldq	%xmm0, %xmm4    # xmm4 = xmm4[0],xmm0[0],xmm4[1],xmm0[1]
	pshufd	$245, %xmm3, %xmm0      # xmm0 = xmm3[1,1,3,3]
	pmuludq	%xmm8, %xmm3
	pshufd	$232, %xmm3, %xmm6      # xmm6 = xmm3[0,2,2,3]
	pmuludq	%xmm9, %xmm0
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	punpckldq	%xmm0, %xmm6    # xmm6 = xmm6[0],xmm0[0],xmm6[1],xmm0[1]
	paddd	%xmm1, %xmm4
	paddd	%xmm2, %xmm6
	movdqu	-16(%rbx), %xmm0
	movdqu	(%rbx), %xmm1
	pshufd	$245, %xmm7, %xmm2      # xmm2 = xmm7[1,1,3,3]
	pmuludq	%xmm0, %xmm7
	pshufd	$232, %xmm7, %xmm3      # xmm3 = xmm7[0,2,2,3]
	pshufd	$245, %xmm0, %xmm0      # xmm0 = xmm0[1,1,3,3]
	pmuludq	%xmm2, %xmm0
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	punpckldq	%xmm0, %xmm3    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1]
	pshufd	$245, %xmm10, %xmm0     # xmm0 = xmm10[1,1,3,3]
	pmuludq	%xmm1, %xmm10
	pshufd	$232, %xmm10, %xmm2     # xmm2 = xmm10[0,2,2,3]
	pshufd	$245, %xmm1, %xmm1      # xmm1 = xmm1[1,1,3,3]
	pmuludq	%xmm0, %xmm1
	pshufd	$232, %xmm1, %xmm0      # xmm0 = xmm1[0,2,2,3]
	punpckldq	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1]
	pshufd	$245, %xmm3, %xmm0      # xmm0 = xmm3[1,1,3,3]
	pmuludq	%xmm8, %xmm3
	pshufd	$232, %xmm3, %xmm1      # xmm1 = xmm3[0,2,2,3]
	pmuludq	%xmm9, %xmm0
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	punpckldq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1]
	pshufd	$245, %xmm2, %xmm0      # xmm0 = xmm2[1,1,3,3]
	pmuludq	%xmm8, %xmm2
	pshufd	$232, %xmm2, %xmm2      # xmm2 = xmm2[0,2,2,3]
	pmuludq	%xmm9, %xmm0
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	punpckldq	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1]
	paddd	%xmm4, %xmm1
	paddd	%xmm6, %xmm2
	addq	$64, %rbx
	addq	$-16, %rsi
	jne	.LBB1_8
.LBB1_9:
	movq	%r9, %rsi
.LBB1_10:                               # %middle.block
	paddd	%xmm2, %xmm1
	pshufd	$78, %xmm1, %xmm0       # xmm0 = xmm1[2,3,0,1]
	paddd	%xmm1, %xmm0
	pshufd	$229, %xmm0, %xmm1      # xmm1 = xmm0[1,1,2,3]
	paddd	%xmm0, %xmm1
	movd	%xmm1, %ebx
	cmpq	%rsi, %r8
	je	.LBB1_13
.LBB1_11:                               # %for.body.preheader
	decq	%rsi
	.align	16, 0x90
.LBB1_12:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	28(%rcx,%rsi,4), %edi
	imull	160(%rcx,%rsi,4), %edi
	imull	%edx, %edi
	addl	%edi, %ebx
	incq	%rsi
	cmpq	%rax, %rsi
	jl	.LBB1_12
.LBB1_13:                               # %for.end
	movl	%ebx, 52(%rsp)          # 4-byte Spill
	movl	%ebx, %esi
	leaq	384(%rsp), %r12
	movq	%r12, %rdi
	movl	%r13d, %edx
	callq	opj_write_bytes_LE
	movl	%r13d, %edx
	movq	%rdx, 8(%rsp)           # 8-byte Spill
	movq	%r14, %rdi
	movq	%r12, %rsi
	movq	%rbp, %r15
	movq	%r15, 64(%rsp)          # 8-byte Spill
	movq	%r15, %rcx
	callq	opj_stream_write_data
	leaq	448(%rsp), %rbp
	movslq	44(%rbp), %rax
	movq	48(%rbp), %rcx
	movq	%rcx, 80(%rsp)          # 8-byte Spill
	movslq	%ecx, %rbx
	imulq	%rax, %rbx
	movq	%rbx, 40(%rsp)          # 8-byte Spill
	movq	%r12, %rdi
	movl	%ebx, %esi
	movl	%r13d, %edx
	callq	opj_write_bytes_LE
	movq	%r14, %rdi
	movq	%r12, %rsi
	movq	8(%rsp), %r12           # 8-byte Reload
	movq	%r12, %rdx
	movq	%r15, %rcx
	callq	opj_stream_write_data
	testl	%ebx, %ebx
	jle	.LBB1_21
# BB#14:                                # %for.body.34.lr.ph
	movq	104(%rbp), %rax
	movq	%rax, 128(%rsp)         # 8-byte Spill
	movslq	56(%rbp), %rcx
	movq	%rcx, 216(%rsp)         # 8-byte Spill
	movl	24(%rbp), %eax
	movl	%eax, 300(%rsp)         # 4-byte Spill
	movl	364(%rsp), %eax         # 4-byte Reload
	movq	%rax, 288(%rsp)         # 8-byte Spill
	movq	80(%rsp), %rax          # 8-byte Reload
	sarq	$32, %rax
	movq	%rax, 80(%rsp)          # 8-byte Spill
	movq	104(%rsp), %rsi         # 8-byte Reload
	movq	%rsi, %rdx
	shlq	$5, %rdx
	movq	%rdx, 32(%rsp)          # 8-byte Spill
	movq	%rax, %rdx
	shlq	$5, %rdx
	movq	%rdx, 144(%rsp)         # 8-byte Spill
	imulq	%rcx, %rax
	shlq	$5, %rax
	movq	%rax, 208(%rsp)         # 8-byte Spill
	movq	%rcx, %rax
	shlq	$5, %rax
	movq	%rax, 136(%rsp)         # 8-byte Spill
	imulq	%rsi, %rcx
	shlq	$5, %rcx
	movq	%rcx, 24(%rsp)          # 8-byte Spill
	pcmpeqd	%xmm0, %xmm0
	leaq	384(%rsp), %rbp
	xorl	%edx, %edx
	.align	16, 0x90
.LBB1_15:                               # %for.body.34
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_23 Depth 2
                                        #       Child Loop BB1_25 Depth 3
                                        #         Child Loop BB1_27 Depth 4
                                        #     Child Loop BB1_19 Depth 2
	movq	%rbp, %r15
	movl	%r13d, %ebx
	movq	64(%rsp), %r13          # 8-byte Reload
	movq	104(%rsp), %rax         # 8-byte Reload
	movq	56(%rsp), %rcx          # 8-byte Reload
	movslq	(%rcx,%rax,4), %rax
	testq	%rax, %rax
	js	.LBB1_16
# BB#22:                                # %for.body.45.lr.ph
                                        #   in Loop: Header=BB1_15 Depth=1
	movdqa	%xmm0, 368(%rsp)        # 16-byte Spill
	incq	%rax
	movq	%rax, 120(%rsp)         # 8-byte Spill
	imulq	$608, %rdx, %rsi        # imm = 0x260
	movq	%rsi, 112(%rsp)         # 8-byte Spill
	movq	%rdx, 72(%rsp)          # 8-byte Spill
	movq	%rax, %rcx
	movq	128(%rsp), %rax         # 8-byte Reload
	leaq	552(%rax,%rsi), %rax
	movq	%rax, 280(%rsp)         # 8-byte Spill
	movslq	%ecx, %rax
	movq	%rax, 96(%rsp)          # 8-byte Spill
	movq	144(%rsp), %rcx         # 8-byte Reload
	imulq	%rax, %rcx
	movq	%rcx, 88(%rsp)          # 8-byte Spill
	movq	24(%rsp), %rcx          # 8-byte Reload
	imulq	%rax, %rcx
	movq	%rcx, 168(%rsp)         # 8-byte Spill
	movq	208(%rsp), %rcx         # 8-byte Reload
	imulq	%rax, %rcx
	movq	%rcx, 184(%rsp)         # 8-byte Spill
	movq	136(%rsp), %rcx         # 8-byte Reload
	imulq	%rax, %rcx
	movq	%rcx, 176(%rsp)         # 8-byte Spill
	xorl	%ebp, %ebp
	movq	32(%rsp), %rax          # 8-byte Reload
	movq	%rax, 160(%rsp)         # 8-byte Spill
	movq	%rax, 152(%rsp)         # 8-byte Spill
	xorl	%r8d, %r8d
	.align	16, 0x90
.LBB1_23:                               # %for.body.45
                                        #   Parent Loop BB1_15 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_25 Depth 3
                                        #         Child Loop BB1_27 Depth 4
	movq	%rbp, 200(%rsp)         # 8-byte Spill
	movq	128(%rsp), %rax         # 8-byte Reload
	movq	112(%rsp), %rcx         # 8-byte Reload
	leaq	(%rax,%rcx), %rcx
	movl	24(%rcx,%rbp,4), %edi
	movl	156(%rcx,%rbp,4), %r9d
	movl	%r9d, %esi
	imull	%edi, %esi
	movl	%esi, 196(%rsp)         # 4-byte Spill
	testl	%esi, %esi
	jle	.LBB1_38
# BB#24:                                # %for.body.56.lr.ph
                                        #   in Loop: Header=BB1_23 Depth=2
	movslq	%esi, %rdx
	movq	152(%rsp), %r10         # 8-byte Reload
	imulq	%rdx, %r10
	movq	88(%rsp), %rax          # 8-byte Reload
	imulq	%rdx, %rax
	movq	%rax, 304(%rsp)         # 8-byte Spill
	movq	160(%rsp), %r11         # 8-byte Reload
	imulq	%rdx, %r11
	imulq	144(%rsp), %rdx         # 8-byte Folded Reload
	movq	%rdx, 312(%rsp)         # 8-byte Spill
	movl	%ebp, %edx
	imull	%esi, %edx
	movslq	%edx, %rdx
	imulq	80(%rsp), %rdx          # 8-byte Folded Reload
	movq	104(%rsp), %rsi         # 8-byte Reload
	leaq	(%rdx,%rsi), %rdx
	movq	136(%rsp), %rcx         # 8-byte Reload
	imulq	%rcx, %rdx
	imull	%esi, %r9d
	imull	%edi, %r9d
	movslq	%r9d, %rax
	imulq	96(%rsp), %rax          # 8-byte Folded Reload
	leaq	(%rax,%rbp), %rsi
	imulq	%rcx, %rsi
	movq	168(%rsp), %rdi         # 8-byte Reload
	xorl	%eax, %eax
	.align	16, 0x90
.LBB1_25:                               # %for.body.56
                                        #   Parent Loop BB1_15 Depth=1
                                        #     Parent Loop BB1_23 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB1_27 Depth 4
	movq	%rax, 224(%rsp)         # 8-byte Spill
	movq	%rdi, 232(%rsp)         # 8-byte Spill
	movq	%rsi, 240(%rsp)         # 8-byte Spill
	movq	%rdx, 248(%rsp)         # 8-byte Spill
	movq	%r11, 256(%rsp)         # 8-byte Spill
	movq	%r10, 264(%rsp)         # 8-byte Spill
	movq	%r8, 272(%rsp)          # 8-byte Spill
	movq	216(%rsp), %rax         # 8-byte Reload
	testl	%eax, %eax
	movl	%eax, %ebp
	jle	.LBB1_26
	.align	16, 0x90
.LBB1_27:                               # %for.body.61
                                        #   Parent Loop BB1_15 Depth=1
                                        #     Parent Loop BB1_23 Depth=2
                                        #       Parent Loop BB1_25 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	300(%rsp), %eax         # 4-byte Reload
	movl	%eax, %r8d
	cmpl	$4, %eax
	jbe	.LBB1_28
# BB#34:                                # %sw.default
                                        #   in Loop: Header=BB1_27 Depth=4
	movq	%r10, 320(%rsp)         # 8-byte Spill
	movq	%r11, 328(%rsp)         # 8-byte Spill
	movq	%rdx, 336(%rsp)         # 8-byte Spill
	movq	%rdi, 344(%rsp)         # 8-byte Spill
	movq	%rsi, 352(%rsp)         # 8-byte Spill
	movl	%ebp, 364(%rsp)         # 4-byte Spill
	movq	stderr(%rip), %rdi
	movl	$.L.str, %esi
	xorl	%eax, %eax
	callq	fprintf
	movaps	368(%rsp), %xmm0        # 16-byte Reload
	jmp	.LBB1_35
	.align	16, 0x90
.LBB1_28:                               # %for.body.61
                                        #   in Loop: Header=BB1_27 Depth=4
	jmpq	*.LJTI1_0(,%r8,8)
.LBB1_29:                               # %sw.bb
                                        #   in Loop: Header=BB1_27 Depth=4
	movq	%r11, 328(%rsp)         # 8-byte Spill
	movq	%rdx, 336(%rsp)         # 8-byte Spill
	movq	%rdi, 344(%rsp)         # 8-byte Spill
	movq	%rsi, 352(%rsp)         # 8-byte Spill
	movl	%ebp, 364(%rsp)         # 4-byte Spill
	movq	280(%rsp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movups	(%rax,%r10), %xmm0
	movq	%r10, 320(%rsp)         # 8-byte Spill
	jmp	.LBB1_35
.LBB1_30:                               # %sw.bb.71
                                        #   in Loop: Header=BB1_27 Depth=4
	movq	%r10, 320(%rsp)         # 8-byte Spill
	movq	%rdx, 336(%rsp)         # 8-byte Spill
	movq	%rdi, 344(%rsp)         # 8-byte Spill
	movq	%rsi, 352(%rsp)         # 8-byte Spill
	movl	%ebp, 364(%rsp)         # 4-byte Spill
	movq	280(%rsp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movups	(%rax,%r11), %xmm0
	movq	%r11, 328(%rsp)         # 8-byte Spill
	jmp	.LBB1_35
.LBB1_31:                               # %sw.bb.82
                                        #   in Loop: Header=BB1_27 Depth=4
	movq	%r10, 320(%rsp)         # 8-byte Spill
	movq	%r11, 328(%rsp)         # 8-byte Spill
	movq	%rdi, 344(%rsp)         # 8-byte Spill
	movq	%rsi, 352(%rsp)         # 8-byte Spill
	movl	%ebp, 364(%rsp)         # 4-byte Spill
	movq	280(%rsp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movups	(%rax,%rdx), %xmm0
	movq	%rdx, 336(%rsp)         # 8-byte Spill
	jmp	.LBB1_35
.LBB1_32:                               # %sw.bb.93
                                        #   in Loop: Header=BB1_27 Depth=4
	movq	%r10, 320(%rsp)         # 8-byte Spill
	movq	%r11, 328(%rsp)         # 8-byte Spill
	movq	%rdx, 336(%rsp)         # 8-byte Spill
	movq	%rsi, 352(%rsp)         # 8-byte Spill
	movl	%ebp, 364(%rsp)         # 4-byte Spill
	movq	280(%rsp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movups	(%rax,%rdi), %xmm0
	movq	%rdi, 344(%rsp)         # 8-byte Spill
	jmp	.LBB1_35
.LBB1_33:                               # %sw.bb.104
                                        #   in Loop: Header=BB1_27 Depth=4
	movq	%r10, 320(%rsp)         # 8-byte Spill
	movq	%r11, 328(%rsp)         # 8-byte Spill
	movq	%rdx, 336(%rsp)         # 8-byte Spill
	movq	%rdi, 344(%rsp)         # 8-byte Spill
	movl	%ebp, 364(%rsp)         # 4-byte Spill
	movq	280(%rsp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movups	(%rax,%rsi), %xmm0
	movq	%rsi, 352(%rsp)         # 8-byte Spill
	.align	16, 0x90
.LBB1_35:                               # %sw.epilog
                                        #   in Loop: Header=BB1_27 Depth=4
	movaps	%xmm0, 368(%rsp)        # 16-byte Spill
	movd	%xmm0, %ebp
	movl	%ebp, %esi
	movq	288(%rsp), %rax         # 8-byte Reload
	subl	%eax, %esi
	movq	%r15, %rdi
	movl	%ebx, %edx
	callq	opj_write_bytes_LE
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%r12, %rdx
	movq	%r13, %rcx
	callq	opj_stream_write_data
	pshufd	$78, 368(%rsp), %xmm0   # 16-byte Folded Reload
                                        # xmm0 = mem[2,3,0,1]
	movd	%xmm0, %esi
	incl	%esi
	subl	%ebp, %esi
	movq	%r15, %rdi
	movl	%ebx, %edx
	callq	opj_write_bytes_LE
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%r12, %rdx
	movq	%r13, %rcx
	callq	opj_stream_write_data
	movq	320(%rsp), %r10         # 8-byte Reload
	addq	304(%rsp), %r10         # 8-byte Folded Reload
	movq	328(%rsp), %r11         # 8-byte Reload
	addq	312(%rsp), %r11         # 8-byte Folded Reload
	movq	336(%rsp), %rdx         # 8-byte Reload
	addq	$32, %rdx
	movq	344(%rsp), %rdi         # 8-byte Reload
	addq	$32, %rdi
	movq	352(%rsp), %rsi         # 8-byte Reload
	addq	$32, %rsi
	movl	364(%rsp), %ebp         # 4-byte Reload
	decl	%ebp
	jne	.LBB1_27
# BB#36:                                # %for.cond.58.for.inc.135_crit_edge
                                        #   in Loop: Header=BB1_25 Depth=3
	movq	216(%rsp), %rax         # 8-byte Reload
	movq	272(%rsp), %r8          # 8-byte Reload
	leal	(%r8,%rax), %r8d
	jmp	.LBB1_37
	.align	16, 0x90
.LBB1_26:                               #   in Loop: Header=BB1_25 Depth=3
	movq	272(%rsp), %r8          # 8-byte Reload
.LBB1_37:                               # %for.inc.135
                                        #   in Loop: Header=BB1_25 Depth=3
	movq	200(%rsp), %rbp         # 8-byte Reload
	movl	196(%rsp), %r9d         # 4-byte Reload
	movq	264(%rsp), %r10         # 8-byte Reload
	movq	256(%rsp), %r11         # 8-byte Reload
	movq	248(%rsp), %rdx         # 8-byte Reload
	movq	240(%rsp), %rsi         # 8-byte Reload
	movq	232(%rsp), %rdi         # 8-byte Reload
	movq	224(%rsp), %rax         # 8-byte Reload
	incq	%rax
	addq	$32, %r10
	addq	$32, %r11
	addq	208(%rsp), %rdx         # 8-byte Folded Reload
	addq	184(%rsp), %rdi         # 8-byte Folded Reload
	addq	176(%rsp), %rsi         # 8-byte Folded Reload
	cmpl	%r9d, %eax
	jne	.LBB1_25
.LBB1_38:                               # %for.inc.138
                                        #   in Loop: Header=BB1_23 Depth=2
	incq	%rbp
	movq	152(%rsp), %rax         # 8-byte Reload
	addq	144(%rsp), %rax         # 8-byte Folded Reload
	movq	%rax, 152(%rsp)         # 8-byte Spill
	movq	160(%rsp), %rax         # 8-byte Reload
	addq	208(%rsp), %rax         # 8-byte Folded Reload
	movq	%rax, 160(%rsp)         # 8-byte Spill
	movq	168(%rsp), %rax         # 8-byte Reload
	addq	136(%rsp), %rax         # 8-byte Folded Reload
	movq	%rax, 168(%rsp)         # 8-byte Spill
	cmpq	120(%rsp), %rbp         # 8-byte Folded Reload
	jl	.LBB1_23
	jmp	.LBB1_17
	.align	16, 0x90
.LBB1_16:                               #   in Loop: Header=BB1_15 Depth=1
	movdqa	%xmm0, 368(%rsp)        # 16-byte Spill
	movq	%rdx, 72(%rsp)          # 8-byte Spill
	xorl	%r8d, %r8d
.LBB1_17:                               # %while.cond.preheader
                                        #   in Loop: Header=BB1_15 Depth=1
	movl	52(%rsp), %eax          # 4-byte Reload
	cmpl	%eax, %r8d
	movq	%r13, %rcx
	movl	%ebx, %r13d
	movq	%r15, %rbp
	movq	%rcx, %r15
	jge	.LBB1_20
# BB#18:                                # %while.body.preheader
                                        #   in Loop: Header=BB1_15 Depth=1
	movl	%eax, %ebx
	subl	%r8d, %ebx
	.align	16, 0x90
.LBB1_19:                               # %while.body
                                        #   Parent Loop BB1_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%esi, %esi
	movq	%rbp, %rdi
	movl	%r13d, %edx
	callq	opj_write_bytes_LE
	movq	%r14, %rdi
	movq	%rbp, %rsi
	movq	%r12, %rdx
	movq	%r15, %rcx
	callq	opj_stream_write_data
	xorl	%esi, %esi
	movq	%rbp, %rdi
	movl	%r13d, %edx
	callq	opj_write_bytes_LE
	movq	%r14, %rdi
	movq	%rbp, %rsi
	movq	%r12, %rdx
	movq	%r15, %rcx
	callq	opj_stream_write_data
	decl	%ebx
	jne	.LBB1_19
.LBB1_20:                               # %for.inc.152
                                        #   in Loop: Header=BB1_15 Depth=1
	movq	72(%rsp), %rdx          # 8-byte Reload
	incq	%rdx
	cmpq	40(%rsp), %rdx          # 8-byte Folded Reload
	movapd	368(%rsp), %xmm0        # 16-byte Reload
	jl	.LBB1_15
.LBB1_21:                               # %for.end.154
	movq	%r14, %rdi
	callq	opj_stream_tell
	movq	%rax, %rbx
	movq	16(%rsp), %r15          # 8-byte Reload
	subq	%r15, %rbx
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	64(%rsp), %rbp          # 8-byte Reload
	movq	%rbp, %rdx
	callq	opj_stream_seek
	leaq	384(%rsp), %r12
	movl	$4, %edx
	movq	%r12, %rdi
	movl	%ebx, %esi
	callq	opj_write_bytes_LE
	movl	$4, %edx
	movq	%r14, %rdi
	movq	%r12, %rsi
	movq	%rbp, %rcx
	callq	opj_stream_write_data
	movl	%ebx, %esi
	addq	%r15, %rsi
	movq	%r14, %rdi
	movq	%rbp, %rdx
	callq	opj_stream_seek
	movl	%ebx, %eax
	addq	$392, %rsp              # imm = 0x188
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	opj_write_phixfaix, .Lfunc_end1-opj_write_phixfaix
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI1_0:
	.quad	.LBB1_29
	.quad	.LBB1_30
	.quad	.LBB1_31
	.quad	.LBB1_32
	.quad	.LBB1_33

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"failed to ppix indexing\n"
	.size	.L.str, 25


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
