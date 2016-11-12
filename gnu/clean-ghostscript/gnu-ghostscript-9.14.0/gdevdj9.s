	.text
	.file	"gdevdj9.bc"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	4648488871632306176     # double 600
.LCPI0_1:
	.quad	4643985272004935680     # double 300
.LCPI0_3:
	.quad	4607182418800017408     # double 1
.LCPI0_4:
	.quad	4643176031446892544     # double 255
.LCPI0_5:
	.quad	4636737291354636288     # double 100
.LCPI0_6:
	.quad	4613937818241073152     # double 3
.LCPI0_7:
	.quad	4621819117588971520     # double 10
.LCPI0_8:
	.quad	-4616189618054758400    # double -1
.LCPI0_9:
	.quad	4634766966517661696     # double 72
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI0_2:
	.long	1065353216              # float 1
	.text
	.align	16, 0x90
	.type	cdj970_print_page,@function
cdj970_print_page:                      # @cdj970_print_page
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
	subq	$4024, %rsp             # imm = 0xFB8
.Ltmp6:
	.cfi_def_cfa_offset 4080
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
	movq	%rsi, %r12
	movq	%rdi, %rbx
	cmpl	$0, 18568(%rbx)
	jne	.LBB0_9
# BB#1:                                 # %land.lhs.true
	cmpl	$0, 18508(%rbx)
	jne	.LBB0_9
# BB#2:                                 # %if.then
	movl	18484(%rbx), %ebp
	cmpl	$-1, %ebp
	je	.LBB0_3
# BB#4:                                 # %if.else.i
	movsd	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movq	%rbx, %rdi
	movapd	%xmm0, %xmm1
	callq	gx_device_set_resolution
	testl	%ebp, %ebp
	je	.LBB0_5
# BB#6:                                 # %if.else.6.i
	movq	$0, 18500(%rbx)
	jmp	.LBB0_7
.LBB0_3:                                # %if.then.i
	movsd	.LCPI0_1(%rip), %xmm0   # xmm0 = mem[0],zero
	movq	%rbx, %rdi
	movapd	%xmm0, %xmm1
	callq	gx_device_set_resolution
	movl	$0, 18500(%rbx)
	movl	$0, 18504(%rbx)
	movl	$2, 18496(%rbx)
	jmp	.LBB0_7
.LBB0_5:                                # %if.then.3.i
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, 18500(%rbx)
.LBB0_7:                                # %if.end.9.i
	movq	%rbx, %rdi
	callq	gdev_pcl_paper_size
	cmpl	$26, %eax
	movl	$cdj970_one_time_initialisation.dj_a4, %eax
	movl	$cdj970_one_time_initialisation.dj_letter, %esi
	cmoveq	%rax, %rsi
	movl	$1, %edx
	movq	%rbx, %rdi
	callq	gx_device_set_margins
	movq	17176(%rbx), %rbp
	leaq	2752(%rsp), %r14
	xorl	%esi, %esi
	movl	$1260, %edx             # imm = 0x4EC
	movq	%r14, %rdi
	callq	memset
	leaq	3352(%rsp), %rdi
	movl	$.L.str.17, %esi
	xorl	%eax, %eax
	callq	gs_sprintf
	movl	$1, %esi
	movl	$678, %edx              # imm = 0x2A6
	movq	%r14, %rdi
	movq	%rbp, %rcx
	callq	fwrite
	movl	$.L.str.18, %edi
	movq	%rbp, %rsi
	callq	fputs
	cmpl	$0, 18492(%rbx)
	jle	.LBB0_9
# BB#8:                                 # %if.then.i.i
	movl	$.L.str.19, %edi
	movq	%rbp, %rsi
	callq	fputs
	movl	$32, %edi
	movq	%rbp, %rsi
	callq	fputc
	movl	$4, %edi
	movq	%rbp, %rsi
	callq	fputc
	xorl	%edi, %edi
	movq	%rbp, %rsi
	callq	fputc
	movl	$6, %edi
	movq	%rbp, %rsi
	callq	fputc
	movl	$1, %edi
	movq	%rbp, %rsi
	callq	fputc
	movl	$4, %edi
	movq	%rbp, %rsi
	callq	fputc
	movl	$1, %edi
	movq	%rbp, %rsi
	callq	fputc
	movl	$4, %edi
	movq	%rbp, %rsi
	callq	fputc
	movl	$1, %edi
	movq	%rbp, %rsi
	callq	fputc
	movl	$6, %edi
	movq	%rbp, %rsi
	callq	fputc
	movl	$8, %edi
	movq	%rbp, %rsi
	callq	fputc
	movl	$1, %edi
	movq	%rbp, %rsi
	callq	fputc
	xorl	%edi, %edi
	movq	%rbp, %rsi
	callq	fputc
.LBB0_9:                                # %if.end
	movslq	18508(%rbx), %rax
	movq	gammat(,%rax,8), %rsi
	leaq	48(%rsp), %rdi
	movl	$2048, %edx             # imm = 0x800
	callq	memcpy
	movss	18516(%rbx), %xmm0      # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI0_2(%rip), %xmm0
	jbe	.LBB0_18
# BB#10:                                # %if.then.5
	movss	18532(%rbx), %xmm1      # xmm1 = mem[0],zero,zero,zero
	xorps	%xmm2, %xmm2
	cmpltss	%xmm1, %xmm2
	andps	%xmm2, %xmm1
	andnps	%xmm0, %xmm2
	orps	%xmm1, %xmm2
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm2, %xmm0
	movsd	.LCPI0_3(%rip), %xmm1   # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, 40(%rsp)         # 8-byte Spill
	xorl	%ebp, %ebp
	movsd	.LCPI0_4(%rip), %xmm3   # xmm3 = mem[0],zero
	.align	16, 0x90
.LBB0_11:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%ebp, %xmm0
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm1
	movapd	%xmm3, %xmm0
	subsd	%xmm1, %xmm0
	divsd	%xmm3, %xmm0
	movsd	40(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	pow
	movsd	.LCPI0_3(%rip), %xmm1   # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	mulsd	.LCPI0_4(%rip), %xmm1
	cvttsd2si	%xmm1, %eax
	movb	%al, 816(%rsp,%rbp)
	leal	1(%rbp), %eax
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm1
	movsd	.LCPI0_4(%rip), %xmm0   # xmm0 = mem[0],zero
	subsd	%xmm1, %xmm0
	divsd	.LCPI0_4(%rip), %xmm0
	movsd	40(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	pow
	movsd	.LCPI0_4(%rip), %xmm3   # xmm3 = mem[0],zero
	movsd	.LCPI0_3(%rip), %xmm1   # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	mulsd	%xmm3, %xmm1
	cvttsd2si	%xmm1, %eax
	movb	%al, 817(%rsp,%rbp)
	addq	$2, %rbp
	cmpq	$256, %rbp              # imm = 0x100
	jne	.LBB0_11
# BB#12:                                # %do_gamma.exit
	movss	18516(%rbx), %xmm0      # xmm0 = mem[0],zero,zero,zero
	movss	18520(%rbx), %xmm1      # xmm1 = mem[0],zero,zero,zero
	xorps	%xmm2, %xmm2
	cmpltss	%xmm1, %xmm2
	andps	%xmm2, %xmm1
	andnps	%xmm0, %xmm2
	orps	%xmm1, %xmm2
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm2, %xmm0
	movsd	.LCPI0_3(%rip), %xmm1   # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, 40(%rsp)         # 8-byte Spill
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB0_13:                               # %for.body.i.46
                                        # =>This Inner Loop Header: Depth=1
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%ebp, %xmm0
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm1
	movapd	%xmm3, %xmm0
	subsd	%xmm1, %xmm0
	divsd	%xmm3, %xmm0
	movsd	40(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	pow
	movsd	.LCPI0_3(%rip), %xmm1   # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	mulsd	.LCPI0_4(%rip), %xmm1
	cvttsd2si	%xmm1, %eax
	movb	%al, 48(%rsp,%rbp)
	leal	1(%rbp), %eax
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm1
	movsd	.LCPI0_4(%rip), %xmm0   # xmm0 = mem[0],zero
	subsd	%xmm1, %xmm0
	divsd	.LCPI0_4(%rip), %xmm0
	movsd	40(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	pow
	movsd	.LCPI0_4(%rip), %xmm3   # xmm3 = mem[0],zero
	movsd	.LCPI0_3(%rip), %xmm1   # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	mulsd	%xmm3, %xmm1
	cvttsd2si	%xmm1, %eax
	movb	%al, 49(%rsp,%rbp)
	addq	$2, %rbp
	cmpq	$256, %rbp              # imm = 0x100
	jne	.LBB0_13
# BB#14:                                # %do_gamma.exit47
	movss	18516(%rbx), %xmm0      # xmm0 = mem[0],zero,zero,zero
	movss	18524(%rbx), %xmm1      # xmm1 = mem[0],zero,zero,zero
	xorps	%xmm2, %xmm2
	cmpltss	%xmm1, %xmm2
	andps	%xmm2, %xmm1
	andnps	%xmm0, %xmm2
	orps	%xmm1, %xmm2
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm2, %xmm0
	movsd	.LCPI0_3(%rip), %xmm1   # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, 40(%rsp)         # 8-byte Spill
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB0_15:                               # %for.body.i.64
                                        # =>This Inner Loop Header: Depth=1
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%ebp, %xmm0
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm1
	movapd	%xmm3, %xmm0
	subsd	%xmm1, %xmm0
	divsd	%xmm3, %xmm0
	movsd	40(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	pow
	movsd	.LCPI0_3(%rip), %xmm1   # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	mulsd	.LCPI0_4(%rip), %xmm1
	cvttsd2si	%xmm1, %eax
	movb	%al, 304(%rsp,%rbp)
	leal	1(%rbp), %eax
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm1
	movsd	.LCPI0_4(%rip), %xmm0   # xmm0 = mem[0],zero
	subsd	%xmm1, %xmm0
	divsd	.LCPI0_4(%rip), %xmm0
	movsd	40(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	pow
	movsd	.LCPI0_4(%rip), %xmm3   # xmm3 = mem[0],zero
	movsd	.LCPI0_3(%rip), %xmm1   # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	mulsd	%xmm3, %xmm1
	cvttsd2si	%xmm1, %eax
	movb	%al, 305(%rsp,%rbp)
	addq	$2, %rbp
	cmpq	$256, %rbp              # imm = 0x100
	jne	.LBB0_15
# BB#16:                                # %do_gamma.exit65
	movss	18516(%rbx), %xmm0      # xmm0 = mem[0],zero,zero,zero
	movss	18528(%rbx), %xmm1      # xmm1 = mem[0],zero,zero,zero
	xorps	%xmm2, %xmm2
	cmpltss	%xmm1, %xmm2
	andps	%xmm2, %xmm1
	andnps	%xmm0, %xmm2
	orps	%xmm1, %xmm2
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm2, %xmm0
	movsd	.LCPI0_3(%rip), %xmm1   # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, 40(%rsp)         # 8-byte Spill
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB0_17:                               # %for.body.i.82
                                        # =>This Inner Loop Header: Depth=1
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%ebp, %xmm0
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm1
	movapd	%xmm3, %xmm0
	subsd	%xmm1, %xmm0
	divsd	%xmm3, %xmm0
	movsd	40(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	pow
	movsd	.LCPI0_3(%rip), %xmm1   # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	mulsd	.LCPI0_4(%rip), %xmm1
	cvttsd2si	%xmm1, %eax
	movb	%al, 560(%rsp,%rbp)
	leal	1(%rbp), %eax
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm1
	movsd	.LCPI0_4(%rip), %xmm0   # xmm0 = mem[0],zero
	subsd	%xmm1, %xmm0
	divsd	.LCPI0_4(%rip), %xmm0
	movsd	40(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	pow
	movsd	.LCPI0_4(%rip), %xmm3   # xmm3 = mem[0],zero
	movsd	.LCPI0_3(%rip), %xmm1   # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	mulsd	%xmm3, %xmm1
	cvttsd2si	%xmm1, %eax
	movb	%al, 561(%rsp,%rbp)
	addq	$2, %rbp
	cmpq	$256, %rbp              # imm = 0x100
	jne	.LBB0_17
.LBB0_18:                               # %if.end.13
	movss	18536(%rbx), %xmm0      # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	mulsd	.LCPI0_5(%rip), %xmm0
	movsd	%xmm0, 40(%rsp)         # 8-byte Spill
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB0_19:                               # %for.body.i.93
                                        # =>This Inner Loop Header: Depth=1
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%ebp, %xmm0
	movsd	.LCPI0_4(%rip), %xmm1   # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movsd	.LCPI0_6(%rip), %xmm1   # xmm1 = mem[0],zero
	callq	pow
	movapd	%xmm0, %xmm1
	movsd	.LCPI0_7(%rip), %xmm0   # xmm0 = mem[0],zero
	callq	pow
	movsd	.LCPI0_8(%rip), %xmm1   # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	mulsd	40(%rsp), %xmm0         # 8-byte Folded Reload
	cvttsd2si	%xmm0, %eax
	movl	%eax, 1072(%rsp,%rbp,4)
	leal	1(%rbp), %eax
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	divsd	.LCPI0_4(%rip), %xmm0
	movsd	.LCPI0_6(%rip), %xmm1   # xmm1 = mem[0],zero
	callq	pow
	movapd	%xmm0, %xmm1
	movsd	.LCPI0_7(%rip), %xmm0   # xmm0 = mem[0],zero
	callq	pow
	addsd	.LCPI0_8(%rip), %xmm0
	mulsd	40(%rsp), %xmm0         # 8-byte Folded Reload
	cvttsd2si	%xmm0, %eax
	movl	%eax, 1076(%rsp,%rbp,4)
	addq	$2, %rbp
	cmpq	$256, %rbp              # imm = 0x100
	jne	.LBB0_19
# BB#20:                                # %do_black_correction.exit
	movl	$2, %r14d
	cmpl	$0, 18500(%rbx)
	jne	.LBB0_22
# BB#21:                                # %select.mid
	movl	$1, %r14d
.LBB0_22:                               # %select.end
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	gx_device_raster
	movl	%eax, %ecx
	movl	%ecx, 2096(%rsp)
	cltd
	idivl	%r14d
	movl	%eax, 2100(%rsp)
	movslq	%ecx, %rax
	addq	$7, %rax
	shrq	$3, %rax
	movl	%eax, 2104(%rsp)
	movq	%rbx, %rdi
	callq	gdev_pcl_paper_size
	movl	%eax, 2108(%rsp)
	movslq	100(%rbx), %r10
	movl	%r10d, 2112(%rsp)
	movzwl	108(%rbx), %eax
	movl	%eax, 2116(%rsp)
	leaq	(,%r10,8), %r8
	movl	%r8d, 2120(%rsp)
	movl	%r8d, 2124(%rsp)
	movslq	2096(%rsp), %rax
	movq	%r10, %rcx
	shlq	$6, %rcx
	leaq	-1(%rax,%rcx), %rax
	xorl	%edx, %edx
	divq	%rcx
	movq	%rax, %rcx
	leaq	(,%rcx,8), %rbp
	movl	%ebp, 2128(%rsp)
	movq	%rcx, %rsi
	shlq	$4, %rsi
	movl	%esi, %eax
	cltd
	idivl	%r14d
	movl	%eax, 2132(%rsp)
	imull	%r8d, %ebp
	leal	(%rbp,%r10,4), %edx
	leal	7(,%rdx,4), %r9d
	andl	$-8, %r9d
	movl	%r9d, 2144(%rsp)
	movl	%eax, %edx
	shrl	$31, %edx
	leal	(%rdx,%rax), %edx
	sarl	%edx
	imull	%r8d, %edx
	leal	(%rdx,%r10,4), %r8d
	leal	(,%r8,4), %edi
	movl	%edi, 2148(%rsp)
	movl	%ebp, 2136(%rsp)
	movl	%edx, 2140(%rsp)
	shlq	$5, %rcx
	movl	%ecx, 2152(%rsp)
	imull	%r10d, %esi
	leal	4(%r10,%r10), %edi
	imull	%eax, %edi
	addl	%ecx, %edi
	addl	%ebp, %edi
	addl	%esi, %edi
	addl	%edx, %edi
	leal	(%rdi,%r8,4), %eax
	addl	%r9d, %eax
	movslq	%eax, %rsi
	shrq	$3, %rsi
	movl	%esi, 2172(%rsp)
	movq	24(%rbx), %rax
	movq	200(%rax), %rax
	movq	200(%rax), %rdi
	movl	$8, %edx
	movl	$.L.str.15, %ecx
	callq	*88(%rdi)
	movq	%rax, 2704(%rsp)
	movl	$-25, %ecx
	testq	%rax, %rax
	je	.LBB0_136
# BB#23:                                # %if.end.24
	movq	%rax, %rcx
	movl	$0, 2156(%rsp)
	movl	$0, 2160(%rsp)
	movl	$1, 2164(%rsp)
	movq	%rcx, 2200(%rsp)
	movq	%rcx, 2192(%rsp)
	movq	%rcx, 2184(%rsp)
	movslq	2136(%rsp), %rdx
	addq	%rdx, %rax
	movq	%rax, 2208(%rsp)
	movl	2116(%rsp), %r9d
	cmpl	$2, %r9d
	jl	.LBB0_27
# BB#24:                                # %if.end.i
	cmpl	$5, %r9d
	jl	.LBB0_25
# BB#26:                                # %if.then.12.i
	movslq	2112(%rsp), %rcx
	leaq	(%rax,%rcx,8), %rcx
	movq	%rcx, 2672(%rsp)
	leaq	(%rcx,%rdx,4), %rcx
	movq	%rcx, 2680(%rsp)
	movslq	2144(%rsp), %rcx
	addq	%rax, %rcx
	jmp	.LBB0_27
.LBB0_25:
	movq	%rax, %rcx
.LBB0_27:                               # %for.cond.preheader.i
	movslq	2112(%rsp), %r11
	testq	%r11, %r11
	jle	.LBB0_42
# BB#28:                                # %for.body.lr.ph.i
	movslq	2128(%rsp), %rdx
	leaq	-1(%r11), %r8
	xorl	%ebp, %ebp
	testb	$3, %r11b
	movq	%rcx, %rsi
	je	.LBB0_31
# BB#29:                                # %for.body.i.110.prol.preheader
	movl	%r11d, %eax
	andl	$3, %eax
	xorl	%ebp, %ebp
	movq	%rcx, %rsi
	.align	16, 0x90
.LBB0_30:                               # %for.body.i.110.prol
                                        # =>This Inner Loop Header: Depth=1
	movq	%rsi, 2312(%rsp,%rbp,8)
	movq	%rsi, 2248(%rsp,%rbp,8)
	addq	%rdx, %rsi
	incq	%rbp
	cmpq	%rbp, %rax
	jne	.LBB0_30
.LBB0_31:                               # %for.body.lr.ph.i.split
	movq	%rdx, %r14
	imulq	%r11, %r14
	cmpq	$3, %r8
	jb	.LBB0_34
# BB#32:                                # %for.body.lr.ph.i.split.split
	movq	%r11, %rax
	subq	%rbp, %rax
	leaq	2336(%rsp,%rbp,8), %rbp
	.align	16, 0x90
.LBB0_33:                               # %for.body.i.110
                                        # =>This Inner Loop Header: Depth=1
	movq	%rsi, -24(%rbp)
	movq	%rsi, -88(%rbp)
	addq	%rdx, %rsi
	movq	%rsi, -16(%rbp)
	movq	%rsi, -80(%rbp)
	addq	%rdx, %rsi
	movq	%rsi, -8(%rbp)
	movq	%rsi, -72(%rbp)
	addq	%rdx, %rsi
	movq	%rsi, (%rbp)
	movq	%rsi, -64(%rbp)
	addq	$32, %rbp
	addq	%rdx, %rsi
	addq	$-4, %rax
	jne	.LBB0_33
.LBB0_34:                               # %for.body.39.lr.ph.i
	leaq	(%rcx,%r14), %r10
	xorl	%ebp, %ebp
	testb	$3, %r11b
	movq	%r10, %rsi
	je	.LBB0_38
# BB#35:                                # %for.body.39.i.prol.preheader
	leaq	1(%r11), %rax
	imulq	%rdx, %rax
	movl	%r11d, %esi
	andl	$3, %esi
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB0_36:                               # %for.body.39.i.prol
                                        # =>This Inner Loop Header: Depth=1
	leaq	(%rcx,%r14), %rdi
	movq	%rdi, 2280(%rsp,%rbp,8)
	leaq	(%rcx,%rax), %rdi
	movq	%rdi, 2344(%rsp,%rbp,8)
	incq	%rbp
	addq	%rdx, %rcx
	cmpq	%rbp, %rsi
	jne	.LBB0_36
# BB#37:
	addq	%r14, %rcx
	movq	%rcx, %rsi
.LBB0_38:                               # %for.body.39.lr.ph.i.split
	cmpq	$3, %r8
	jb	.LBB0_41
# BB#39:                                # %for.body.39.lr.ph.i.split.split
	movq	%r11, %rax
	subq	%rbp, %rax
	leaq	2368(%rsp,%rbp,8), %rcx
	.align	16, 0x90
.LBB0_40:                               # %for.body.39.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%rsi, -88(%rcx)
	addq	%rdx, %rsi
	movq	%rsi, -24(%rcx)
	movq	%rsi, -80(%rcx)
	addq	%rdx, %rsi
	movq	%rsi, -16(%rcx)
	movq	%rsi, -72(%rcx)
	addq	%rdx, %rsi
	movq	%rsi, -8(%rcx)
	movq	%rsi, -64(%rcx)
	addq	%rdx, %rsi
	movq	%rsi, (%rcx)
	addq	$32, %rcx
	addq	$-4, %rax
	jne	.LBB0_40
.LBB0_41:                               # %for.end.56.i.loopexit
	addq	%r14, %r10
	movq	%r10, %rcx
.LBB0_42:                               # %for.end.56.i
	movq	%rcx, 2632(%rsp)
	movslq	2152(%rsp), %rbp
	addq	%rcx, %rbp
	movq	%rbp, 2232(%rsp)
	movq	%rbp, 2224(%rsp)
	movq	%rbp, 2216(%rsp)
	movslq	2140(%rsp), %rcx
	leaq	(%rbp,%rcx), %rax
	movq	%rax, 2240(%rsp)
	cmpl	$2, %r9d
	jl	.LBB0_46
# BB#43:                                # %if.end.74.i
	cmpl	$5, %r9d
	jl	.LBB0_44
# BB#45:                                # %if.then.77.i
	leaq	(%rax,%r11,8), %rdx
	movq	%rdx, 2688(%rsp)
	leaq	(%rdx,%rcx,4), %rcx
	movq	%rcx, 2696(%rsp)
	movslq	2148(%rsp), %rbp
	addq	%rax, %rbp
	jmp	.LBB0_46
.LBB0_44:
	movq	%rax, %rbp
.LBB0_46:                               # %for.cond.93.preheader.i
	testl	%r11d, %r11d
	jle	.LBB0_77
# BB#47:                                # %for.body.96.lr.ph.i
	movl	2132(%rsp), %eax
	movl	%eax, %ecx
	shrl	$31, %ecx
	addl	%eax, %ecx
	sarl	%ecx
	movslq	%ecx, %rcx
	leaq	-1(%r11), %r8
	xorl	%edx, %edx
	testb	$3, %r11b
	movq	%rbp, %rsi
	je	.LBB0_50
# BB#48:                                # %for.body.96.i.prol.preheader
	movl	%r11d, %eax
	andl	$3, %eax
	xorl	%edx, %edx
	movq	%rbp, %rsi
	.align	16, 0x90
.LBB0_49:                               # %for.body.96.i.prol
                                        # =>This Inner Loop Header: Depth=1
	movq	%rsi, 2504(%rsp,%rdx,8)
	movq	%rsi, 2376(%rsp,%rdx,8)
	addq	%rcx, %rsi
	incq	%rdx
	cmpq	%rdx, %rax
	jne	.LBB0_49
.LBB0_50:                               # %for.body.96.lr.ph.i.split
	movq	%r11, %r9
	imulq	%rcx, %r9
	cmpq	$3, %r8
	jb	.LBB0_53
# BB#51:                                # %for.body.96.lr.ph.i.split.split
	movq	%r11, %rax
	subq	%rdx, %rax
	leaq	2528(%rsp,%rdx,8), %rdx
	.align	16, 0x90
.LBB0_52:                               # %for.body.96.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%rsi, -24(%rdx)
	movq	%rsi, -152(%rdx)
	addq	%rcx, %rsi
	movq	%rsi, -16(%rdx)
	movq	%rsi, -144(%rdx)
	addq	%rcx, %rsi
	movq	%rsi, -8(%rdx)
	movq	%rsi, -136(%rdx)
	addq	%rcx, %rsi
	movq	%rsi, (%rdx)
	movq	%rsi, -128(%rdx)
	addq	$32, %rdx
	addq	%rcx, %rsi
	addq	$-4, %rax
	jne	.LBB0_52
.LBB0_53:                               # %for.body.112.lr.ph.i
	leaq	(%rbp,%r9), %rdx
	xorl	%edi, %edi
	testb	$3, %r11b
	movq	%rdx, %rsi
	je	.LBB0_57
# BB#54:                                # %for.body.112.i.prol.preheader
	movq	%rbx, %r10
	leaq	1(%r11), %rax
	imulq	%rcx, %rax
	movl	%r11d, %esi
	andl	$3, %esi
	xorl	%edi, %edi
	.align	16, 0x90
.LBB0_55:                               # %for.body.112.i.prol
                                        # =>This Inner Loop Header: Depth=1
	leaq	(%rbp,%r9), %rbx
	movq	%rbx, 2440(%rsp,%rdi,8)
	leaq	(%rbp,%rax), %rbx
	movq	%rbx, 2568(%rsp,%rdi,8)
	incq	%rdi
	addq	%rcx, %rbp
	cmpq	%rdi, %rsi
	jne	.LBB0_55
# BB#56:
	addq	%r9, %rbp
	movq	%rbp, %rsi
	movq	%r10, %rbx
.LBB0_57:                               # %for.body.112.lr.ph.i.split
	cmpq	$3, %r8
	jb	.LBB0_60
# BB#58:                                # %for.body.112.lr.ph.i.split.split
	movq	%r11, %rax
	subq	%rdi, %rax
	leaq	2592(%rsp,%rdi,8), %rdi
	.align	16, 0x90
.LBB0_59:                               # %for.body.112.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%rsi, -152(%rdi)
	addq	%rcx, %rsi
	movq	%rsi, -24(%rdi)
	movq	%rsi, -144(%rdi)
	addq	%rcx, %rsi
	movq	%rsi, -16(%rdi)
	movq	%rsi, -136(%rdi)
	addq	%rcx, %rsi
	movq	%rsi, -8(%rdi)
	movq	%rsi, -128(%rdi)
	addq	%rcx, %rsi
	movq	%rsi, (%rdi)
	addq	$32, %rdi
	addq	$-4, %rax
	jne	.LBB0_59
.LBB0_60:                               # %for.body.135.lr.ph.i
	addq	%r9, %rdx
	xorl	%edi, %edi
	testb	$1, %r11b
	movq	%rdx, %rsi
	je	.LBB0_62
# BB#61:                                # %for.body.135.i.prol
	movq	%rdx, 2536(%rsp)
	movq	%rdx, 2408(%rsp)
	leaq	(%rdx,%rcx), %rsi
	movl	$1, %edi
.LBB0_62:                               # %for.body.135.lr.ph.i.split
	movq	%rbx, %r10
	cmpl	$1, %r11d
	je	.LBB0_65
# BB#63:                                # %for.body.135.lr.ph.i.split.split
	movq	%r11, %rax
	subq	%rdi, %rax
	leaq	2544(%rsp,%rdi,8), %rdi
	.align	16, 0x90
.LBB0_64:                               # %for.body.135.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%rsi, -8(%rdi)
	movq	%rsi, -136(%rdi)
	addq	%rcx, %rsi
	movq	%rsi, (%rdi)
	movq	%rsi, -128(%rdi)
	addq	%rcx, %rsi
	addq	$16, %rdi
	addq	$-2, %rax
	jne	.LBB0_64
.LBB0_65:                               # %for.body.155.lr.ph.i
	addq	%r9, %rdx
	xorl	%edi, %edi
	testb	$1, %r11b
	movq	%rdx, %rsi
	je	.LBB0_67
# BB#66:                                # %for.body.155.i.prol
	movq	%rdx, 2472(%rsp)
	leaq	(%rdx,%rcx), %rsi
	movq	%rsi, 2600(%rsp)
	movl	$1, %edi
.LBB0_67:                               # %for.body.155.lr.ph.i.split
	cmpl	$1, %r11d
	je	.LBB0_70
# BB#68:                                # %for.body.155.lr.ph.i.split.split
	movq	%r11, %rax
	subq	%rdi, %rax
	leaq	2608(%rsp,%rdi,8), %rdi
	leaq	(%rcx,%rcx), %rbp
	.align	16, 0x90
.LBB0_69:                               # %for.body.155.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%rsi, -136(%rdi)
	leaq	(%rsi,%rcx), %rbx
	movq	%rbx, -8(%rdi)
	movq	%rbx, -128(%rdi)
	addq	%rcx, %rbx
	addq	%rbp, %rsi
	movq	%rsi, (%rdi)
	addq	$16, %rdi
	addq	$-2, %rax
	movq	%rbx, %rsi
	jne	.LBB0_69
.LBB0_70:                               # %for.body.180.lr.ph.i
	addq	%r9, %rdx
	xorl	%eax, %eax
	testb	$3, %r11b
	je	.LBB0_71
# BB#72:                                # %for.body.180.i.prol.preheader
	movl	%r11d, %esi
	andl	$3, %esi
	xorl	%eax, %eax
	movq	%r10, %rbx
	.align	16, 0x90
.LBB0_73:                               # %for.body.180.i.prol
                                        # =>This Inner Loop Header: Depth=1
	movq	%rdx, 2640(%rsp,%rax,8)
	addq	%rcx, %rdx
	incq	%rax
	cmpq	%rax, %rsi
	jne	.LBB0_73
	jmp	.LBB0_74
.LBB0_71:
	movq	%r10, %rbx
.LBB0_74:                               # %for.body.180.lr.ph.i.split
	cmpq	$3, %r8
	jb	.LBB0_77
# BB#75:                                # %for.body.180.lr.ph.i.split.split
	subq	%rax, %r11
	leaq	2664(%rsp,%rax,8), %rax
	.align	16, 0x90
.LBB0_76:                               # %for.body.180.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%rdx, -24(%rax)
	addq	%rcx, %rdx
	movq	%rdx, -16(%rax)
	addq	%rcx, %rdx
	movq	%rdx, -8(%rax)
	addq	%rcx, %rdx
	movq	%rdx, (%rax)
	addq	$32, %rax
	addq	%rcx, %rdx
	addq	$-4, %r11
	jne	.LBB0_76
.LBB0_77:                               # %init_data_structure.exit
	movq	2704(%rsp), %rdi
	movl	2172(%rsp), %edx
	shlq	$3, %rdx
	xorl	%ebp, %ebp
	xorl	%esi, %esi
	callq	memset
	movl	2108(%rsp), %esi
	movq	%rbx, %rdi
	movq	%r12, %rdx
	callq	*18544(%rbx)
	subl	832(%rbx), %ebp
	imull	2120(%rsp), %ebp
	movq	$-1, %r13
	movb	%bpl, %cl
	shlq	%cl, %r13
	cvtsi2sdl	836(%rbx), %xmm4
	movss	920(%rbx), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI0_9(%rip), %xmm1   # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movss	888(%rbx), %xmm2        # xmm2 = mem[0],zero,zero,zero
	movss	912(%rbx), %xmm3        # xmm3 = mem[0],zero,zero,zero
	cvtss2sd	%xmm3, %xmm3
	divsd	%xmm1, %xmm3
	addsd	%xmm0, %xmm3
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm2, %xmm0
	mulsd	%xmm3, %xmm0
	subsd	%xmm0, %xmm4
	movsd	%xmm4, 32(%rsp)         # 8-byte Spill
	xorpd	%xmm0, %xmm0
	movapd	%xmm0, 2736(%rsp)
	cmpl	$5, 2116(%rsp)
	jl	.LBB0_83
# BB#78:                                # %if.then.i.i.130
	movq	%r13, %rax
	movq	%rbx, %r13
	movq	%rax, %r15
	movq	%r12, %rbx
	movq	2688(%rsp), %r14
	cmpl	$0, 2136(%rsp)
	jle	.LBB0_81
# BB#79:                                # %for.body.lr.ph.i.i
	movq	2672(%rsp), %r12
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB0_80:                               # %for.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	callq	rand
	shll	$16, %eax
	movslq	%eax, %rcx
	imulq	$-2139062143, %rcx, %rdx # imm = 0xFFFFFFFF80808081
	shrq	$32, %rdx
	addl	%edx, %ecx
	movl	%ecx, %edx
	shrl	$31, %edx
	sarl	$25, %ecx
	addl	%edx, %ecx
	imull	$66846720, %ecx, %ecx   # imm = 0x3FC0000
	negl	%ecx
	leal	-33423360(%rax,%rcx), %eax
	movl	%eax, (%r12,%rbp,4)
	incq	%rbp
	cmpl	2136(%rsp), %ebp
	jl	.LBB0_80
.LBB0_81:                               # %for.cond.3.preheader.i.i
	xorl	%ebp, %ebp
	cmpl	$0, 2140(%rsp)
	movq	%rbx, %r12
	movq	%r13, %rbx
	movq	%r15, %r13
	jle	.LBB0_83
	.align	16, 0x90
.LBB0_82:                               # %for.body.5.i.i
                                        # =>This Inner Loop Header: Depth=1
	callq	rand
	shll	$16, %eax
	movslq	%eax, %rcx
	imulq	$-2139062143, %rcx, %rdx # imm = 0xFFFFFFFF80808081
	shrq	$32, %rdx
	addl	%edx, %ecx
	movl	%ecx, %edx
	shrl	$31, %edx
	sarl	$25, %ecx
	addl	%edx, %ecx
	imull	$66846720, %ecx, %ecx   # imm = 0x3FC0000
	negl	%ecx
	leal	-33423360(%rax,%rcx), %eax
	movl	%eax, (%r14,%rbp,4)
	incq	%rbp
	cmpl	2140(%rsp), %ebp
	jl	.LBB0_82
.LBB0_83:                               # %init_error_buffer.exit.i
	cvttsd2si	32(%rsp), %r15d # 8-byte Folded Reload
	movl	$0, 2168(%rsp)
	cmpl	$2, 18492(%rbx)
	jne	.LBB0_87
# BB#84:                                # %land.lhs.true.i
	movl	18568(%rbx), %eax
	movl	%eax, %ecx
	shrl	$31, %ecx
	leal	(%rcx,%rax), %ecx
	andl	$-2, %ecx
	subl	%ecx, %eax
	cmpl	$1, %eax
	jne	.LBB0_87
# BB#85:                                # %if.then.i.137
	movq	%r12, 32(%rsp)          # 8-byte Spill
	movl	%r15d, 2752(%rsp)
	movl	18484(%rbx), %ebp
	movq	%rbx, %rdi
	callq	gdev_pcl_paper_size
	cmpl	$-1, %ebp
	movl	$102, %r12d
	je	.LBB0_88
# BB#86:                                # %select.mid610
	movl	$205, %r12d
	jmp	.LBB0_88
.LBB0_87:                               # %if.else.24.i
	movq	%r12, 32(%rsp)          # 8-byte Spill
	movl	$-1, 2752(%rsp)
	xorl	%r12d, %r12d
.LBB0_88:                               # %if.end.25.i
	leaq	2752(%rsp), %rsi
	leaq	2184(%rsp), %rdx
	leaq	2096(%rsp), %rcx
	movq	%rbx, %rdi
	movq	%r13, %r8
	movq	%r13, 40(%rsp)          # 8-byte Spill
	callq	GetScanLine
	movl	%eax, %r14d
	movl	2752(%rsp), %ebp
	jmp	.LBB0_89
	.align	16, 0x90
.LBB0_132:                              # %if.then.195.i
                                        #   in Loop: Header=BB0_89 Depth=1
	movq	%rbx, %rdi
	leaq	2184(%rsp), %rsi
	leaq	2096(%rsp), %rdx
	leaq	2736(%rsp), %rcx
	leaq	48(%rsp), %r8
	movq	32(%rsp), %r9           # 8-byte Reload
	callq	*18552(%rbx)
.LBB0_89:                               # %while.cond.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_99 Depth 2
                                        #     Child Loop BB0_121 Depth 2
	movl	18492(%rbx), %eax
	cmpl	%r15d, %ebp
	jge	.LBB0_92
# BB#90:                                # %while.cond.i
                                        #   in Loop: Header=BB0_89 Depth=1
	cmpl	$2, %eax
	jge	.LBB0_92
# BB#91:                                #   in Loop: Header=BB0_89 Depth=1
	movq	40(%rsp), %r13          # 8-byte Reload
	jmp	.LBB0_99
	.align	16, 0x90
.LBB0_92:                               # %lor.lhs.false.i
                                        #   in Loop: Header=BB0_89 Depth=1
	testl	%ebp, %ebp
	js	.LBB0_96
# BB#93:                                # %lor.lhs.false.i
                                        #   in Loop: Header=BB0_89 Depth=1
	cmpl	$2, %eax
	jne	.LBB0_96
# BB#94:                                # %land.lhs.true.39.i
                                        #   in Loop: Header=BB0_89 Depth=1
	movl	18568(%rbx), %ecx
	movl	%ecx, %edx
	shrl	$31, %edx
	leal	(%rdx,%rcx), %edx
	andl	$-2, %edx
	subl	%edx, %ecx
	cmpl	$1, %ecx
	jne	.LBB0_96
# BB#95:                                #   in Loop: Header=BB0_89 Depth=1
	movl	$2, %eax
	movq	40(%rsp), %r13          # 8-byte Reload
	jmp	.LBB0_99
	.align	16, 0x90
.LBB0_96:                               # %lor.rhs.i
                                        #   in Loop: Header=BB0_89 Depth=1
	cmpl	$2, %eax
	movq	40(%rsp), %r13          # 8-byte Reload
	jne	.LBB0_135
# BB#97:                                # %land.lhs.true.47.i
                                        #   in Loop: Header=BB0_89 Depth=1
	cmpl	%r15d, %ebp
	jge	.LBB0_135
# BB#98:                                # %land.lhs.true.47.i
                                        #   in Loop: Header=BB0_89 Depth=1
	movl	18568(%rbx), %eax
	andl	$1, %eax
	movl	$2, %eax
	je	.LBB0_99
	jmp	.LBB0_135
	.align	16, 0x90
.LBB0_107:                              # %while.body.89.i
                                        #   in Loop: Header=BB0_99 Depth=2
	incl	%r12d
	movq	%rbx, %rdi
	leaq	2752(%rsp), %rsi
	leaq	2184(%rsp), %rdx
	leaq	2096(%rsp), %rcx
	movq	%r13, %r8
	callq	GetScanLine
	movl	%eax, %r14d
	movl	18492(%rbx), %eax
	movl	2752(%rsp), %ebp
.LBB0_99:                               # %while.cond.54.i
                                        #   Parent Loop BB0_89 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$2, %eax
	setl	%dl
	cmpl	%r15d, %ebp
	setl	%cl
	andb	%dl, %cl
	jne	.LBB0_106
# BB#100:                               # %lor.lhs.false.61.i
                                        #   in Loop: Header=BB0_99 Depth=2
	testl	%ebp, %ebp
	js	.LBB0_103
# BB#101:                               # %lor.lhs.false.61.i
                                        #   in Loop: Header=BB0_99 Depth=2
	cmpl	$2, %eax
	jne	.LBB0_103
# BB#102:                               # %land.lhs.true.68.i
                                        #   in Loop: Header=BB0_99 Depth=2
	movl	18568(%rbx), %edx
	movl	%edx, %esi
	shrl	$31, %esi
	leal	(%rsi,%rdx), %esi
	andl	$-2, %esi
	subl	%esi, %edx
	cmpl	$1, %edx
	jne	.LBB0_103
	.align	16, 0x90
.LBB0_106:                              # %land.rhs.85.i
                                        #   in Loop: Header=BB0_99 Depth=2
	testl	%r14d, %r14d
	je	.LBB0_107
	jmp	.LBB0_108
	.align	16, 0x90
.LBB0_103:                              # %lor.lhs.false.73.i
                                        #   in Loop: Header=BB0_99 Depth=2
	cmpl	$2, %eax
	jne	.LBB0_135
# BB#104:                               # %land.lhs.true.77.i
                                        #   in Loop: Header=BB0_99 Depth=2
	movl	$2, %eax
	cmpl	%r15d, %ebp
	jge	.LBB0_109
# BB#105:                               # %land.lhs.true.77.i
                                        #   in Loop: Header=BB0_99 Depth=2
	movl	18568(%rbx), %ecx
	andl	$1, %ecx
	orl	%r14d, %ecx
	je	.LBB0_107
	jmp	.LBB0_109
	.align	16, 0x90
.LBB0_108:                              # %while.end.i
                                        #   in Loop: Header=BB0_89 Depth=1
	testb	$1, %cl
	jne	.LBB0_115
.LBB0_109:                              # %lor.lhs.false.97.i
                                        #   in Loop: Header=BB0_89 Depth=1
	testl	%ebp, %ebp
	js	.LBB0_112
# BB#110:                               # %lor.lhs.false.97.i
                                        #   in Loop: Header=BB0_89 Depth=1
	cmpl	$2, %eax
	jne	.LBB0_112
# BB#111:                               # %land.lhs.true.104.i
                                        #   in Loop: Header=BB0_89 Depth=1
	movl	18568(%rbx), %ecx
	movl	%ecx, %edx
	shrl	$31, %edx
	leal	(%rdx,%rcx), %edx
	andl	$-2, %edx
	subl	%edx, %ecx
	cmpl	$1, %ecx
	je	.LBB0_115
.LBB0_112:                              # %lor.lhs.false.109.i
                                        #   in Loop: Header=BB0_89 Depth=1
	cmpl	$2, %eax
	jne	.LBB0_135
# BB#113:                               # %land.lhs.true.113.i
                                        #   in Loop: Header=BB0_89 Depth=1
	cmpl	%r15d, %ebp
	jge	.LBB0_135
# BB#114:                               # %land.lhs.true.113.i
                                        #   in Loop: Header=BB0_89 Depth=1
	movl	18568(%rbx), %eax
	andl	$1, %eax
	jne	.LBB0_135
.LBB0_115:                              # %if.end.122.i
                                        #   in Loop: Header=BB0_89 Depth=1
	testl	%r12d, %r12d
	jle	.LBB0_117
# BB#116:                               # %if.then.125.i
                                        #   in Loop: Header=BB0_89 Depth=1
	movl	18504(%rbx), %ecx
	incl	%ecx
	movl	%r12d, %eax
	cltd
	idivl	%ecx
	movl	%eax, %ecx
	movl	$.L.str.20, %esi
	xorl	%eax, %eax
	movq	32(%rsp), %rdi          # 8-byte Reload
	movl	%ecx, %edx
	callq	fprintf
	movq	2248(%rsp), %rdi
	movl	2128(%rsp), %eax
	addl	%eax, %eax
	movslq	2112(%rsp), %rcx
	movslq	%eax, %rdx
	imulq	%rcx, %rdx
	xorl	%esi, %esi
	callq	memset
	movq	2376(%rsp), %rdi
	movl	2132(%rsp), %eax
	addl	%eax, %eax
	movslq	2112(%rsp), %rcx
	movslq	%eax, %rdx
	imulq	%rcx, %rdx
	xorl	%esi, %esi
	callq	memset
.LBB0_117:                              # %if.end.142.i
                                        #   in Loop: Header=BB0_89 Depth=1
	testb	$1, %bpl
	je	.LBB0_118
# BB#119:                               # %if.end.142.i
                                        #   in Loop: Header=BB0_89 Depth=1
	movl	18504(%rbx), %eax
	testl	%eax, %eax
	je	.LBB0_118
# BB#120:                               # %if.then.148.i
                                        #   in Loop: Header=BB0_89 Depth=1
	movl	%r15d, %r13d
	movq	%rbx, %r15
	movl	$118, %edi
	movq	32(%rsp), %r12          # 8-byte Reload
	movq	%r12, %rsi
	callq	_IO_putc
	jmp	.LBB0_121
	.align	16, 0x90
.LBB0_118:                              #   in Loop: Header=BB0_89 Depth=1
	movl	%r15d, %r13d
	movq	%rbx, %r15
	movq	32(%rsp), %r12          # 8-byte Reload
	jmp	.LBB0_121
	.align	16, 0x90
.LBB0_134:                              # %while.body.186.i
                                        #   in Loop: Header=BB0_121 Depth=2
	movl	%r15d, %r13d
	movl	$0, 2180(%rsp)
	movq	%rbx, %r15
	movq	%r15, %rdi
	leaq	2184(%rsp), %rbp
	movq	%rbp, %rsi
	leaq	2096(%rsp), %rbx
	movq	%rbx, %rdx
	leaq	2736(%rsp), %rcx
	leaq	48(%rsp), %r8
	movq	%r12, %r9
	callq	*18552(%r15)
	movq	%r15, %rdi
	leaq	2752(%rsp), %rsi
	movq	%rbp, %rdx
	movq	%rbx, %rcx
	movq	40(%rsp), %r8           # 8-byte Reload
	callq	GetScanLine
	movl	%eax, %r14d
	movl	2752(%rsp), %ebp
.LBB0_121:                              # %while.cond.151.i
                                        #   Parent Loop BB0_89 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	18492(%r15), %eax
	movq	%r15, %rbx
	movl	%r13d, %r15d
	cmpl	%r15d, %ebp
	jge	.LBB0_123
# BB#122:                               # %while.cond.151.i
                                        #   in Loop: Header=BB0_121 Depth=2
	cmpl	$2, %eax
	jl	.LBB0_133
.LBB0_123:                              # %lor.lhs.false.158.i
                                        #   in Loop: Header=BB0_121 Depth=2
	testl	%ebp, %ebp
	js	.LBB0_126
# BB#124:                               # %lor.lhs.false.158.i
                                        #   in Loop: Header=BB0_121 Depth=2
	cmpl	$2, %eax
	jne	.LBB0_126
# BB#125:                               # %land.lhs.true.165.i
                                        #   in Loop: Header=BB0_121 Depth=2
	movl	18568(%rbx), %ecx
	movl	%ecx, %edx
	shrl	$31, %edx
	leal	(%rdx,%rcx), %edx
	andl	$-2, %edx
	subl	%edx, %ecx
	cmpl	$1, %ecx
	jne	.LBB0_126
	.align	16, 0x90
.LBB0_133:                              # %land.rhs.182.i
                                        #   in Loop: Header=BB0_121 Depth=2
	testl	%r14d, %r14d
	movl	$0, %r14d
	jne	.LBB0_134
	jmp	.LBB0_130
	.align	16, 0x90
.LBB0_126:                              # %lor.lhs.false.170.i
                                        #   in Loop: Header=BB0_121 Depth=2
	cmpl	$2, %eax
	jne	.LBB0_130
# BB#127:                               # %land.lhs.true.174.i
                                        #   in Loop: Header=BB0_121 Depth=2
	cmpl	%r15d, %ebp
	jge	.LBB0_130
# BB#128:                               # %land.lhs.true.174.i
                                        #   in Loop: Header=BB0_121 Depth=2
	testl	%r14d, %r14d
	je	.LBB0_130
# BB#129:                               # %land.lhs.true.174.i
                                        #   in Loop: Header=BB0_121 Depth=2
	movl	18568(%rbx), %eax
	andl	$1, %eax
	je	.LBB0_134
	.align	16, 0x90
.LBB0_130:                              # %while.end.188.i
                                        #   in Loop: Header=BB0_89 Depth=1
	movq	%r12, 32(%rsp)          # 8-byte Spill
	xorl	%r12d, %r12d
	testb	$1, %bpl
	je	.LBB0_89
# BB#131:                               # %while.end.188.i
                                        #   in Loop: Header=BB0_89 Depth=1
	movl	18504(%rbx), %eax
	testl	%eax, %eax
	jne	.LBB0_132
	jmp	.LBB0_89
.LBB0_135:                              # %send_scan_lines.exit
	movq	%rbx, %rdi
	movq	32(%rsp), %rsi          # 8-byte Reload
	callq	*18560(%rbx)
	movq	24(%rbx), %rax
	movq	200(%rax), %rax
	movq	200(%rax), %rdi
	movq	2704(%rsp), %rsi
	movl	$.L.str.16, %edx
	callq	*24(%rdi)
	incl	18568(%rbx)
	xorl	%ecx, %ecx
.LBB0_136:                              # %cleanup
	movl	%ecx, %eax
	addq	$4024, %rsp             # imm = 0xFB8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	cdj970_print_page, .Lfunc_end0-cdj970_print_page
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_0:
	.quad	4634766966517661696     # double 72
.LCPI1_1:
	.quad	-4637446608295947141    # double -0.040000000000000001
.LCPI1_2:
	.quad	4648488871632306176     # double 600
	.text
	.align	16, 0x90
	.type	cdj970_start_raster_mode,@function
cdj970_start_raster_mode:               # @cdj970_start_raster_mode
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp13:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp14:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp15:
	.cfi_def_cfa_offset 32
	subq	$32, %rsp
.Ltmp16:
	.cfi_def_cfa_offset 64
.Ltmp17:
	.cfi_offset %rbx, -32
.Ltmp18:
	.cfi_offset %r14, -24
.Ltmp19:
	.cfi_offset %rbp, -16
	movq	%rdx, %rbx
	movl	%esi, %r8d
	movq	%rdi, %r14
	movups	hp970_cmyk_init+9(%rip), %xmm0
	movups	%xmm0, 9(%rsp)
	movups	hp970_cmyk_init(%rip), %xmm0
	movaps	%xmm0, (%rsp)
	movb	18496(%r14), %al
	movb	%al, 13(%rsp)
	movb	%al, 19(%rsp)
	movb	%al, 25(%rsp)
	movss	884(%r14), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvttss2si	%xmm0, %eax
	cmpl	$600, %eax              # imm = 0x258
	sete	%al
	movb	$88, %sil
	movb	$88, %cl
	je	.LBB1_2
# BB#1:                                 # %entry
	movb	$44, %cl
.LBB1_2:                                # %entry
	incb	%al
	movb	%al, 2(%rsp)
	movb	%cl, 3(%rsp)
	movss	888(%r14), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvttss2si	%xmm1, %eax
	cmpl	$600, %eax              # imm = 0x258
	sete	%al
	movb	$88, %cl
	je	.LBB1_4
# BB#3:                                 # %entry
	movb	$44, %cl
.LBB1_4:                                # %entry
	incb	%al
	movb	%al, 4(%rsp)
	movb	%cl, 5(%rsp)
	movl	18500(%r14), %eax
	movl	18504(%r14), %ecx
	incl	%eax
	cvtsi2ssl	%eax, %xmm2
	divss	%xmm2, %xmm0
	cvttss2si	%xmm0, %ebp
	incl	%ecx
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%ecx, %xmm0
	divss	%xmm0, %xmm1
	cvttss2si	%xmm1, %eax
	cmpl	$600, %ebp              # imm = 0x258
	sete	%dl
	movb	$88, %cl
	je	.LBB1_6
# BB#5:                                 # %entry
	movb	$44, %cl
.LBB1_6:                                # %entry
	incb	%dl
	movb	%dl, 8(%rsp)
	movb	%cl, 9(%rsp)
	cmpl	$600, %eax              # imm = 0x258
	sete	%al
	je	.LBB1_8
# BB#7:                                 # %entry
	movb	$44, %sil
.LBB1_8:                                # %entry
	incb	%al
	movb	%al, 10(%rsp)
	movb	%sil, 11(%rsp)
	movb	%dl, 14(%rsp)
	movb	%cl, 15(%rsp)
	movb	%al, 16(%rsp)
	movb	%sil, 17(%rsp)
	movb	%dl, 20(%rsp)
	movb	%cl, 21(%rsp)
	movb	%al, 22(%rsp)
	movb	%sil, 23(%rsp)
	movl	$.L.str.26, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	movl	%r8d, %edx
	callq	fprintf
	movl	18484(%r14), %edx
	movl	$.L.str.27, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	fprintf
	movl	18488(%r14), %edx
	movl	$.L.str.28, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	fprintf
	movl	$.L.str.29, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	movl	%ebp, %edx
	callq	fprintf
	movss	920(%r14), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	divsd	.LCPI1_0(%rip), %xmm0
	addsd	.LCPI1_1(%rip), %xmm0
	mulsd	.LCPI1_2(%rip), %xmm0
	cvttsd2si	%xmm0, %edx
	movl	$.L.str.30, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	fprintf
	movl	$.L.str.31, %esi
	movl	$26, %edx
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	fprintf
	leaq	(%rsp), %rdi
	movl	$1, %esi
	movl	$26, %edx
	movq	%rbx, %rcx
	callq	fwrite
	movl	$.L.str.32, %edi
	movq	%rbx, %rsi
	callq	fputs
	movl	$.L.str.33, %edi
	movq	%rbx, %rsi
	callq	fputs
	movl	$.L.str.34, %edi
	movq	%rbx, %rsi
	callq	fputs
	movl	18512(%r14), %edx
	testl	%edx, %edx
	je	.LBB1_10
# BB#9:                                 # %if.then
	movl	$.L.str.35, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	fprintf
.LBB1_10:                               # %if.end
	addq	$32, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end1:
	.size	cdj970_start_raster_mode, .Lfunc_end1-cdj970_start_raster_mode
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4643176031446892544     # double 255
.LCPI2_1:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	cdj970_print_non_blank_lines,@function
cdj970_print_non_blank_lines:           # @cdj970_print_non_blank_lines
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
	subq	$184, %rsp
.Ltmp26:
	.cfi_def_cfa_offset 240
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
	movq	%r9, 8(%rsp)            # 8-byte Spill
	movq	%rcx, %r13
	movq	%rsi, 104(%rsp)         # 8-byte Spill
	movq	%rdi, 56(%rsp)          # 8-byte Spill
	movl	40(%rdx), %ebp
	movl	60(%rdx), %eax
	movslq	%eax, %rcx
	leaq	2(%rcx), %rdi
	shlq	$5, %rdi
	movq	88(%rsi,%rdi), %rdi
	movq	%rdi, 176(%rsp)         # 8-byte Spill
	movq	16(%rsi,%rcx,8), %rdi
	movq	%rdi, 152(%rsp)         # 8-byte Spill
	movq	488(%rsi,%rcx,8), %r15
	xorl	%r10d, %r10d
	testl	%ebp, %ebp
	movl	%ebp, %esi
	jle	.LBB2_27
# BB#1:                                 # %for.body.i.preheader
	movq	%rdx, 32(%rsp)          # 8-byte Spill
	movq	104(%rsp), %rax         # 8-byte Reload
	movq	(%rax,%rcx,8), %rdi
	xorl	%ebp, %ebp
	movsd	.LCPI2_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI2_1(%rip), %xmm1   # xmm1 = mem[0],zero
	xorl	%r10d, %r10d
	movl	%esi, %edx
	movl	%edx, 168(%rsp)         # 4-byte Spill
	jmp	.LBB2_2
.LBB2_19:                               # %if.else.206.i
                                        #   in Loop: Header=BB2_2 Depth=1
	cmpl	%eax, %esi
	jb	.LBB2_20
# BB#21:                                # %if.else.206.i
                                        #   in Loop: Header=BB2_2 Depth=1
	cmpl	%eax, %r9d
	movl	168(%rsp), %edx         # 4-byte Reload
	jae	.LBB2_24
# BB#22:                                # %if.then.220.i
                                        #   in Loop: Header=BB2_2 Depth=1
	subb	%r14b, %r11b
	movb	%r11b, 2(%rdi,%rbp)
	subb	%r14b, %r12b
	movb	%r12b, 1(%rdi,%rbp)
	movb	$0, 3(%rdi,%rbp)
	addb	%r14b, (%rdi,%rbp)
	addl	1024(%r8,%rcx,4), %ecx
	cvtsi2sdl	%ecx, %xmm2
	divsd	%xmm0, %xmm2
	addsd	%xmm1, %xmm2
	cvtsd2ss	%xmm2, %xmm2
	movzbl	%r11b, %eax
	cvtsi2ssl	%eax, %xmm3
	mulss	%xmm2, %xmm3
	cvttss2si	%xmm3, %r11d
	movb	%r11b, 2(%rdi,%rbp)
	movzbl	%r12b, %eax
	xorps	%xmm3, %xmm3
	cvtsi2ssl	%eax, %xmm3
	mulss	%xmm2, %xmm3
	cvttss2si	%xmm3, %r12d
	movb	%r12b, 1(%rdi,%rbp)
	jmp	.LBB2_23
.LBB2_20:                               #   in Loop: Header=BB2_2 Depth=1
	movl	168(%rsp), %edx         # 4-byte Reload
	jmp	.LBB2_24
	.align	16, 0x90
.LBB2_2:                                # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movb	1(%rdi,%rbp), %r12b
	movb	2(%rdi,%rbp), %r11b
	movzbl	%r11b, %esi
	movb	3(%rdi,%rbp), %r14b
	movzbl	%r14b, %ecx
	leal	(%rcx,%rsi), %ebx
	movzbl	%r12b, %eax
	addl	%eax, %ebx
	je	.LBB2_25
# BB#3:                                 # %if.then.i
                                        #   in Loop: Header=BB2_2 Depth=1
	movb	%r14b, %bl
	decb	%bl
	movzbl	%bl, %r9d
	cmpl	%esi, %r9d
	jae	.LBB2_6
# BB#4:                                 # %if.then.i
                                        #   in Loop: Header=BB2_2 Depth=1
	cmpl	%esi, %eax
	jb	.LBB2_6
# BB#5:                                 # %if.then.21.i
                                        #   in Loop: Header=BB2_2 Depth=1
	subb	%r14b, %r12b
	movb	%r12b, 1(%rdi,%rbp)
	subb	%r14b, %r11b
	movb	%r11b, 2(%rdi,%rbp)
	movb	$0, 3(%rdi,%rbp)
	addb	%r14b, (%rdi,%rbp)
	addl	1024(%r8,%rcx,4), %ecx
	cvtsi2sdl	%ecx, %xmm2
	divsd	%xmm0, %xmm2
	addsd	%xmm1, %xmm2
	cvtsd2ss	%xmm2, %xmm2
	movzbl	%r12b, %eax
	cvtsi2ssl	%eax, %xmm3
	mulss	%xmm2, %xmm3
	cvttss2si	%xmm3, %r12d
	movb	%r12b, 1(%rdi,%rbp)
	movzbl	%r11b, %eax
	xorps	%xmm3, %xmm3
	cvtsi2ssl	%eax, %xmm3
	mulss	%xmm2, %xmm3
	cvttss2si	%xmm3, %r11d
	movb	%r11b, 2(%rdi,%rbp)
.LBB2_23:                               # %if.end.252.i
                                        #   in Loop: Header=BB2_2 Depth=1
	xorl	%r14d, %r14d
	jmp	.LBB2_24
	.align	16, 0x90
.LBB2_6:                                # %if.else.i
                                        #   in Loop: Header=BB2_2 Depth=1
	movb	%r11b, %bl
	decb	%bl
	movzbl	%bl, %r10d
	cmpl	%ecx, %r10d
	jae	.LBB2_9
# BB#7:                                 # %if.else.i
                                        #   in Loop: Header=BB2_2 Depth=1
	cmpl	%ecx, %eax
	jb	.LBB2_9
# BB#8:                                 # %if.then.56.i
                                        #   in Loop: Header=BB2_2 Depth=1
	subb	%r11b, %r12b
	movb	%r12b, 1(%rdi,%rbp)
	subb	%r11b, %r14b
	movb	%r14b, 3(%rdi,%rbp)
	movb	$0, 2(%rdi,%rbp)
	addb	%r11b, (%rdi,%rbp)
	addl	1024(%r8,%rsi,4), %esi
	cvtsi2sdl	%esi, %xmm2
	divsd	%xmm0, %xmm2
	addsd	%xmm1, %xmm2
	cvtsd2ss	%xmm2, %xmm2
	movzbl	%r12b, %eax
	cvtsi2ssl	%eax, %xmm3
	mulss	%xmm2, %xmm3
	cvttss2si	%xmm3, %r12d
	movb	%r12b, 1(%rdi,%rbp)
	movzbl	%r14b, %eax
	xorps	%xmm3, %xmm3
	cvtsi2ssl	%eax, %xmm3
	mulss	%xmm2, %xmm3
	cvttss2si	%xmm3, %r14d
	movb	%r14b, 3(%rdi,%rbp)
	xorl	%r11d, %r11d
	jmp	.LBB2_24
.LBB2_9:                                # %if.else.83.i
                                        #   in Loop: Header=BB2_2 Depth=1
	movb	%r12b, %dl
	decb	%dl
	cmpl	%esi, %ecx
	jb	.LBB2_13
# BB#10:                                # %if.else.83.i
                                        #   in Loop: Header=BB2_2 Depth=1
	movzbl	%dl, %ebx
	cmpl	%esi, %ebx
	jae	.LBB2_13
# BB#11:                                # %if.then.97.i
                                        #   in Loop: Header=BB2_2 Depth=1
	subb	%r12b, %r14b
	movb	%r14b, 3(%rdi,%rbp)
	subb	%r12b, %r11b
	movb	%r11b, 2(%rdi,%rbp)
	movb	$0, 1(%rdi,%rbp)
	addb	%r12b, (%rdi,%rbp)
	addl	1024(%r8,%rax,4), %eax
	cvtsi2sdl	%eax, %xmm2
	divsd	%xmm0, %xmm2
	addsd	%xmm1, %xmm2
	cvtsd2ss	%xmm2, %xmm2
	movzbl	%r14b, %eax
	cvtsi2ssl	%eax, %xmm3
	mulss	%xmm2, %xmm3
	cvttss2si	%xmm3, %r14d
	movb	%r14b, 3(%rdi,%rbp)
	movzbl	%r11b, %eax
	xorps	%xmm3, %xmm3
	cvtsi2ssl	%eax, %xmm3
	mulss	%xmm2, %xmm3
	cvttss2si	%xmm3, %r11d
	movb	%r11b, 2(%rdi,%rbp)
	jmp	.LBB2_12
.LBB2_13:                               # %if.else.124.i
                                        #   in Loop: Header=BB2_2 Depth=1
	cmpl	%eax, %ecx
	jb	.LBB2_16
# BB#14:                                # %if.else.124.i
                                        #   in Loop: Header=BB2_2 Depth=1
	cmpl	%eax, %r10d
	jae	.LBB2_16
# BB#15:                                # %if.then.138.i
                                        #   in Loop: Header=BB2_2 Depth=1
	subb	%r11b, %r14b
	movb	%r14b, 3(%rdi,%rbp)
	subb	%r11b, %r12b
	movb	%r12b, 1(%rdi,%rbp)
	movb	$0, 2(%rdi,%rbp)
	addb	%r11b, (%rdi,%rbp)
	addl	1024(%r8,%rsi,4), %esi
	cvtsi2sdl	%esi, %xmm2
	divsd	%xmm0, %xmm2
	addsd	%xmm1, %xmm2
	cvtsd2ss	%xmm2, %xmm2
	movzbl	%r14b, %eax
	cvtsi2ssl	%eax, %xmm3
	mulss	%xmm2, %xmm3
	cvttss2si	%xmm3, %r14d
	movb	%r14b, 3(%rdi,%rbp)
	movzbl	%r12b, %eax
	xorps	%xmm3, %xmm3
	cvtsi2ssl	%eax, %xmm3
	mulss	%xmm2, %xmm3
	cvttss2si	%xmm3, %r12d
	movb	%r12b, 1(%rdi,%rbp)
	xorl	%r11d, %r11d
	movl	168(%rsp), %edx         # 4-byte Reload
	jmp	.LBB2_24
.LBB2_16:                               # %if.else.165.i
                                        #   in Loop: Header=BB2_2 Depth=1
	cmpl	%ecx, %esi
	jb	.LBB2_19
# BB#17:                                # %if.else.165.i
                                        #   in Loop: Header=BB2_2 Depth=1
	movzbl	%dl, %ebx
	cmpl	%ecx, %ebx
	jae	.LBB2_19
# BB#18:                                # %if.then.179.i
                                        #   in Loop: Header=BB2_2 Depth=1
	subb	%r12b, %r11b
	movb	%r11b, 2(%rdi,%rbp)
	subb	%r12b, %r14b
	movb	%r14b, 3(%rdi,%rbp)
	movb	$0, 1(%rdi,%rbp)
	addb	%r12b, (%rdi,%rbp)
	addl	1024(%r8,%rax,4), %eax
	cvtsi2sdl	%eax, %xmm2
	divsd	%xmm0, %xmm2
	addsd	%xmm1, %xmm2
	cvtsd2ss	%xmm2, %xmm2
	movzbl	%r11b, %eax
	cvtsi2ssl	%eax, %xmm3
	mulss	%xmm2, %xmm3
	cvttss2si	%xmm3, %r11d
	movb	%r11b, 2(%rdi,%rbp)
	movzbl	%r14b, %eax
	xorps	%xmm3, %xmm3
	cvtsi2ssl	%eax, %xmm3
	mulss	%xmm2, %xmm3
	cvttss2si	%xmm3, %r14d
	movb	%r14b, 3(%rdi,%rbp)
.LBB2_12:                               # %if.end.252.i
                                        #   in Loop: Header=BB2_2 Depth=1
	xorl	%r12d, %r12d
	movl	168(%rsp), %edx         # 4-byte Reload
	.align	16, 0x90
.LBB2_24:                               # %if.end.252.i
                                        #   in Loop: Header=BB2_2 Depth=1
	movzbl	%r12b, %eax
	movb	(%r8,%rax), %al
	movb	%al, 1(%rdi,%rbp)
	movzbl	%r11b, %eax
	movb	256(%r8,%rax), %al
	movb	%al, 2(%rdi,%rbp)
	movzbl	%r14b, %eax
	movb	512(%r8,%rax), %al
	movb	%al, 3(%rdi,%rbp)
	movl	$1, %r10d
.LBB2_25:                               # %if.end.262.i
                                        #   in Loop: Header=BB2_2 Depth=1
	movzbl	(%rdi,%rbp), %eax
	movb	768(%r8,%rax), %al
	movb	%al, (%rdi,%rbp)
	addq	$4, %rbp
	cmpl	%edx, %ebp
	jl	.LBB2_2
# BB#26:                                # %do_gcr.exit.loopexit
	movq	32(%rsp), %rdx          # 8-byte Reload
	movl	60(%rdx), %eax
.LBB2_27:                               # %do_gcr.exit
	movq	%rdx, 32(%rsp)          # 8-byte Spill
	movl	%r10d, 84(%rdx)
	movl	32(%rdx), %ecx
	movl	%ecx, 160(%rsp)         # 4-byte Spill
	movslq	16(%rdx), %r9
	testl	%eax, %eax
	je	.LBB2_35
# BB#28:                                # %for.cond.48.preheader.i
	testl	%ecx, %ecx
	movq	152(%rsp), %rdx         # 8-byte Reload
	jle	.LBB2_42
# BB#29:                                # %for.cond.52.preheader.lr.ph.i
	leaq	(,%r9,4), %r12
	movq	%r12, %rdi
	negq	%rdi
	movq	%r9, %rcx
	shlq	$5, %rcx
	negq	%rcx
	movq	%rcx, 144(%rsp)         # 8-byte Spill
	movq	%r9, %rsi
	negq	%rsi
	subq	%r9, %rdx
	shlq	$3, %r9
	negq	%r9
	movq	%r9, 152(%rsp)          # 8-byte Spill
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB2_30:                               # %for.cond.52.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_31 Depth 2
	movl	%ecx, 168(%rsp)         # 4-byte Spill
	movl	$1, %r9d
	xorl	%ecx, %ecx
	movq	%rdx, %rax
	movl	$1, %ebx
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB2_31:                               # %for.body.56.i
                                        #   Parent Loop BB2_30 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leaq	(%rdi,%rcx), %r8
	movl	12(%r13), %r10d
	imull	$7, %r10d, %r11d
	addl	$8, %r11d
	sarl	$4, %r11d
	addl	(%r15,%r8), %r11d
	movzbl	(%rax), %r14d
	shll	$19, %r14d
	addl	%r11d, %r14d
	cmpl	$67108865, %r14d        # imm = 0x4000001
	jl	.LBB2_33
# BB#32:                                # %if.then.77.i
                                        #   in Loop: Header=BB2_31 Depth=2
	movzbl	%bpl, %ebp
	orl	%ebx, %ebp
	addl	$-133693440, %r14d      # imm = 0xFFFFFFFFF8080000
.LBB2_33:                               # %if.end.84.i
                                        #   in Loop: Header=BB2_31 Depth=2
	movl	%r14d, 12(%r13)
	leal	8(%r14,%r14,2), %ebx
	sarl	$4, %ebx
	addl	%ebx, (%r15,%rcx)
	imull	$5, 12(%r13), %ebx
	leal	8(%r10,%rbx), %ebx
	sarl	$4, %ebx
	movl	%ebx, (%r15,%r8)
	movl	%r9d, %ebx
	addl	%ebx, %ebx
	subq	%r12, %rcx
	addq	%rsi, %rax
	movl	%ebx, %r9d
	andl	$254, %r9d
	jne	.LBB2_31
# BB#34:                                # %for.end.103.i
                                        #   in Loop: Header=BB2_30 Depth=1
	movq	176(%rsp), %rax         # 8-byte Reload
	movb	%bpl, -1(%rax)
	decq	%rax
	movq	%rax, 176(%rsp)         # 8-byte Spill
	movl	168(%rsp), %ecx         # 4-byte Reload
	incl	%ecx
	addq	144(%rsp), %r15         # 8-byte Folded Reload
	addq	152(%rsp), %rdx         # 8-byte Folded Reload
	movl	160(%rsp), %eax         # 4-byte Reload
	cmpl	%eax, %ecx
	jne	.LBB2_30
	jmp	.LBB2_42
.LBB2_35:                               # %for.cond.preheader.i
	testl	%ecx, %ecx
	movq	152(%rsp), %rdx         # 8-byte Reload
	jle	.LBB2_42
# BB#36:                                # %for.cond.2.preheader.lr.ph.i
	movl	%r9d, %eax
	negl	%eax
	leaq	(,%r9,8), %rdi
	movq	%rdi, 168(%rsp)         # 8-byte Spill
	movq	%r9, %r11
	shlq	$5, %r11
	movslq	%eax, %r8
	shlq	$2, %r8
	xorl	%r10d, %r10d
	.align	16, 0x90
.LBB2_37:                               # %for.cond.2.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_38 Depth 2
	movl	%ecx, %r12d
	leaq	(%r15,%r8), %r14
	movl	$128, %ebx
	xorl	%ecx, %ecx
	xorl	%esi, %esi
	.align	16, 0x90
.LBB2_38:                               # %for.body.5.i
                                        #   Parent Loop BB2_37 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	12(%r13), %edi
	imull	$7, %edi, %eax
	addl	$8, %eax
	sarl	$4, %eax
	addl	(%r15,%rcx,4), %eax
	movzbl	(%rdx,%rcx), %ebp
	shll	$19, %ebp
	addl	%eax, %ebp
	cmpl	$67108865, %ebp         # imm = 0x4000001
	jl	.LBB2_40
# BB#39:                                # %if.then.16.i
                                        #   in Loop: Header=BB2_38 Depth=2
	movzbl	%sil, %esi
	orl	%ebx, %esi
	addl	$-133693440, %ebp       # imm = 0xFFFFFFFFF8080000
.LBB2_40:                               # %if.end.i
                                        #   in Loop: Header=BB2_38 Depth=2
	movl	%ebp, 12(%r13)
	leal	8(%rbp,%rbp,2), %eax
	sarl	$4, %eax
	addl	%eax, (%r14,%rcx,4)
	imull	$5, 12(%r13), %eax
	leal	8(%rdi,%rax), %eax
	sarl	$4, %eax
	movl	%eax, (%r15,%rcx,4)
	shrl	%ebx
	addq	%r9, %rcx
	testl	%ebx, %ebx
	jne	.LBB2_38
# BB#41:                                # %for.end.i
                                        #   in Loop: Header=BB2_37 Depth=1
	addq	168(%rsp), %rdx         # 8-byte Folded Reload
	movq	176(%rsp), %rax         # 8-byte Reload
	movb	%sil, (%rax)
	incq	%rax
	movq	%rax, 176(%rsp)         # 8-byte Spill
	incl	%r10d
	addq	%r11, %r15
	movl	%r12d, %ecx
	cmpl	%ecx, %r10d
	jne	.LBB2_37
.LBB2_42:                               # %FSDlinebw.exit
	movq	32(%rsp), %rdx          # 8-byte Reload
	movslq	60(%rdx), %rax
	shlq	$5, %rax
	movq	104(%rsp), %rcx         # 8-byte Reload
	movq	88(%rcx,%rax), %rdi
	movq	448(%rcx), %rbp
	movq	%rcx, %r15
	movslq	32(%rdx), %rax
	movq	%rdx, %r14
	andq	$-8, %rax
	leaq	(%rax,%rdi), %rsi
	movq	%rbp, %rdx
	callq	gdev_pcl_mode2compress
	movl	%eax, %r12d
	testl	%r12d, %r12d
	jle	.LBB2_44
# BB#43:                                # %if.then.i.95
	movl	$.L.str.23, %esi
	movl	$118, %ecx
	xorl	%eax, %eax
	movq	8(%rsp), %rbx           # 8-byte Reload
	movq	%rbx, %rdi
	movl	%r12d, %edx
	callq	fprintf
	movslq	%r12d, %rdx
	movl	$1, %esi
	movq	%rbp, %rdi
	movq	%rbx, %rcx
	callq	fwrite
	jmp	.LBB2_45
.LBB2_44:                               # %if.else.i.97
	movl	$118, %edi
	movq	8(%rsp), %rsi           # 8-byte Reload
	callq	_IO_putc
.LBB2_45:                               # %print_c2plane.exit99
	movq	56(%rsp), %rax          # 8-byte Reload
	movslq	18504(%rax), %rax
	testq	%rax, %rax
	movq	%r14, %rbx
	je	.LBB2_47
# BB#46:                                # %lor.lhs.false
	cmpl	$0, 68(%rbx)
	je	.LBB2_166
.LBB2_47:                               # %if.then
	movq	56(%rsp), %r14          # 8-byte Reload
	movslq	18500(%r14), %rbp
	shlq	$4, %rbp
	movl	40(%rbx), %edi
	movslq	60(%rbx), %rcx
	movq	(%r15,%rcx,8), %rsi
	movl	$1, %edx
	subq	%rcx, %rdx
	movq	(%r15,%rdx,8), %rdx
	movslq	64(%rbx), %rcx
	movq	32(%r15,%rcx,8), %rcx
	callq	*rescale_color_plane(%rbp,%rax,8)
	cltd
	idivl	24(%rbx)
	movl	%eax, 52(%rsp)          # 4-byte Spill
	movslq	64(%rbx), %rax
	movslq	16(%rbx), %r8
	leaq	2(%rax), %rcx
	shlq	$6, %rcx
	movq	208(%r15,%rcx), %r9
	movq	192(%r15,%rcx), %rdi
	movq	%rdi, 128(%rsp)         # 8-byte Spill
	movq	200(%r15,%rcx), %rdi
	movq	240(%r15,%rcx), %rbx
	movq	232(%r15,%rcx), %rsi
	movq	224(%r15,%rcx), %r11
	movq	48(%r15,%rax,8), %rbp
	movq	504(%r15,%rax,8), %rdx
	movl	18496(%r14), %ecx
	cmpl	$4, %ecx
	je	.LBB2_108
# BB#48:                                # %if.then
	cmpl	$3, %ecx
	jne	.LBB2_49
# BB#73:                                # %sw.bb.41.i
	movq	%rdi, 112(%rsp)         # 8-byte Spill
	movq	%r9, 120(%rsp)          # 8-byte Spill
	testl	%eax, %eax
	je	.LBB2_79
# BB#74:                                # %for.cond.196.preheader.i.i
	cmpl	$0, 52(%rsp)            # 4-byte Folded Reload
	movq	%rdx, %r12
	jle	.LBB2_155
# BB#75:                                # %for.cond.200.preheader.lr.ph.i.i
	leal	-3(%r8,%r8), %eax
	cltq
	shlq	$2, %rax
	leaq	(,%r8,4), %rdx
	subq	%rdx, %rax
	movq	%rax, 168(%rsp)         # 8-byte Spill
	movq	%r8, %rax
	shlq	$5, %rax
	negq	%rax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	leal	-2(%r8,%r8), %eax
	cltq
	shlq	$2, %rax
	subq	%rdx, %rax
	movq	%rax, 160(%rsp)         # 8-byte Spill
	leal	-1(%r8,%r8), %eax
	cltq
	shlq	$2, %rax
	subq	%rdx, %rax
	movq	%rax, 152(%rsp)         # 8-byte Spill
	negq	%rdx
	movq	%rdx, 144(%rsp)         # 8-byte Spill
	decq	%rbp
	leaq	(,%r8,8), %rax
	negq	%rax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	negq	%r8
	movq	%r8, 176(%rsp)          # 8-byte Spill
	xorl	%eax, %eax
	.align	16, 0x90
.LBB2_76:                               # %for.cond.200.preheader.i.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_77 Depth 2
	movl	%eax, 40(%rsp)          # 4-byte Spill
	movq	%r11, 80(%rsp)          # 8-byte Spill
	movq	%rsi, 88(%rsp)          # 8-byte Spill
	movq	%rbx, 96(%rsp)          # 8-byte Spill
	movq	%r12, 64(%rsp)          # 8-byte Spill
	movq	%rbp, 72(%rsp)          # 8-byte Spill
	movl	$1, %r14d
	movl	$0, 136(%rsp)           # 4-byte Folded Spill
	movq	%rbp, %rax
	movl	$1, %r10d
	xorl	%esi, %esi
	xorl	%ecx, %ecx
	xorl	%r9d, %r9d
	xorl	%r11d, %r11d
	xorl	%r8d, %r8d
	.align	16, 0x90
.LBB2_77:                               # %for.body.204.i.i
                                        #   Parent Loop BB2_76 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	8(%r13), %ebx
	imull	$7, %ebx, %ebp
	addl	$8, %ebp
	sarl	$4, %ebp
	addl	-4(%r12), %ebp
	movzbl	(%rax), %r15d
	shll	$19, %r15d
	leal	(%rbp,%r15), %edi
	leal	-67108865(%r15,%rbp), %ebp
	cmpl	$33554431, %ebp         # imm = 0x1FFFFFF
	ja	.LBB2_96
# BB#78:                                # %if.end.240.thread.i.i
                                        #   in Loop: Header=BB2_77 Depth=2
	movzbl	%r11b, %r11d
	orl	%r10d, %r11d
	addl	$-83886080, %edi        # imm = 0xFFFFFFFFFB000000
	jmp	.LBB2_98
	.align	16, 0x90
.LBB2_96:                               # %if.end.240.i.i
                                        #   in Loop: Header=BB2_77 Depth=2
	cmpl	$100663297, %edi        # imm = 0x6000001
	jl	.LBB2_98
# BB#97:                                # %if.then.244.i.i
                                        #   in Loop: Header=BB2_77 Depth=2
	movzbl	%sil, %esi
	orl	%r10d, %esi
	addl	$-118489088, %edi       # imm = 0xFFFFFFFFF8F00000
.LBB2_98:                               # %if.end.251.i.i
                                        #   in Loop: Header=BB2_77 Depth=2
	movl	%edi, 8(%r13)
	leal	8(%rdi,%rdi,2), %edi
	sarl	$4, %edi
	movq	152(%rsp), %rdx         # 8-byte Reload
	addl	%edi, (%rdx,%r12)
	imull	$5, 8(%r13), %edi
	leal	8(%rbx,%rdi), %edi
	sarl	$4, %edi
	movl	%edi, -4(%r12)
	movl	4(%r13), %ebx
	imull	$7, %ebx, %ebp
	addl	$8, %ebp
	sarl	$4, %ebp
	addl	-8(%r12), %ebp
	movzbl	-1(%rax), %edx
	shll	$19, %edx
	leal	(%rbp,%rdx), %edi
	leal	-67108865(%rdx,%rbp), %edx
	cmpl	$33554431, %edx         # imm = 0x1FFFFFF
	ja	.LBB2_100
# BB#99:                                # %if.end.299.thread.i.i
                                        #   in Loop: Header=BB2_77 Depth=2
	movzbl	%r9b, %r9d
	orl	%r10d, %r9d
	addl	$-83886080, %edi        # imm = 0xFFFFFFFFFB000000
	jmp	.LBB2_102
	.align	16, 0x90
.LBB2_100:                              # %if.end.299.i.i
                                        #   in Loop: Header=BB2_77 Depth=2
	cmpl	$100663297, %edi        # imm = 0x6000001
	jl	.LBB2_102
# BB#101:                               # %if.then.303.i.i
                                        #   in Loop: Header=BB2_77 Depth=2
	movl	136(%rsp), %edx         # 4-byte Reload
	movzbl	%dl, %edx
	orl	%r10d, %edx
	movl	%edx, 136(%rsp)         # 4-byte Spill
	addl	$-118489088, %edi       # imm = 0xFFFFFFFFF8F00000
.LBB2_102:                              # %if.end.310.i.i
                                        #   in Loop: Header=BB2_77 Depth=2
	movl	%edi, 4(%r13)
	leal	8(%rdi,%rdi,2), %edx
	sarl	$4, %edx
	movq	160(%rsp), %rdi         # 8-byte Reload
	addl	%edx, (%rdi,%r12)
	imull	$5, 4(%r13), %edx
	leal	8(%rbx,%rdx), %edx
	sarl	$4, %edx
	movl	%edx, -8(%r12)
	movl	(%r13), %ebx
	imull	$7, %ebx, %edx
	addl	$8, %edx
	sarl	$4, %edx
	addl	-12(%r12), %edx
	movzbl	-2(%rax), %ebp
	shll	$19, %ebp
	leal	(%rdx,%rbp), %edi
	leal	-67108865(%rbp,%rdx), %edx
	cmpl	$33554431, %edx         # imm = 0x1FFFFFF
	ja	.LBB2_104
# BB#103:                               # %if.end.358.thread.i.i
                                        #   in Loop: Header=BB2_77 Depth=2
	movzbl	%r8b, %r8d
	orl	%r10d, %r8d
	addl	$-83886080, %edi        # imm = 0xFFFFFFFFFB000000
	jmp	.LBB2_106
	.align	16, 0x90
.LBB2_104:                              # %if.end.358.i.i
                                        #   in Loop: Header=BB2_77 Depth=2
	cmpl	$100663297, %edi        # imm = 0x6000001
	jl	.LBB2_106
# BB#105:                               # %if.then.362.i.i
                                        #   in Loop: Header=BB2_77 Depth=2
	movzbl	%cl, %ecx
	orl	%r10d, %ecx
	addl	$-118489088, %edi       # imm = 0xFFFFFFFFF8F00000
.LBB2_106:                              # %if.end.369.i.i
                                        #   in Loop: Header=BB2_77 Depth=2
	movl	%edi, (%r13)
	leal	8(%rdi,%rdi,2), %edx
	sarl	$4, %edx
	movq	168(%rsp), %rdi         # 8-byte Reload
	addl	%edx, (%rdi,%r12)
	imull	$5, (%r13), %edx
	leal	8(%rbx,%rdx), %edx
	sarl	$4, %edx
	movl	%edx, -12(%r12)
	movl	%r14d, %r10d
	addl	%r10d, %r10d
	addq	144(%rsp), %r12         # 8-byte Folded Reload
	addq	176(%rsp), %rax         # 8-byte Folded Reload
	movl	%r10d, %r14d
	andl	$254, %r14d
	jne	.LBB2_77
# BB#107:                               # %for.end.391.i.i
                                        #   in Loop: Header=BB2_76 Depth=1
	movq	128(%rsp), %rdx         # 8-byte Reload
	movb	%r11b, -1(%rdx)
	movq	112(%rsp), %rdi         # 8-byte Reload
	movb	%r9b, -1(%rdi)
	movq	120(%rsp), %rax         # 8-byte Reload
	movb	%r8b, -1(%rax)
	movq	80(%rsp), %r11          # 8-byte Reload
	movb	%sil, -1(%r11)
	movq	88(%rsp), %rsi          # 8-byte Reload
	movl	136(%rsp), %ebp         # 4-byte Reload
	movb	%bpl, -1(%rsi)
	movq	96(%rsp), %rbx          # 8-byte Reload
	movb	%cl, -1(%rbx)
	decq	%rdx
	movq	%rdx, 128(%rsp)         # 8-byte Spill
	decq	%rdi
	movq	%rdi, 112(%rsp)         # 8-byte Spill
	decq	%rax
	movq	%rax, 120(%rsp)         # 8-byte Spill
	decq	%r11
	decq	%rsi
	decq	%rbx
	movl	40(%rsp), %eax          # 4-byte Reload
	incl	%eax
	movq	64(%rsp), %r12          # 8-byte Reload
	addq	24(%rsp), %r12          # 8-byte Folded Reload
	movq	72(%rsp), %rbp          # 8-byte Reload
	addq	16(%rsp), %rbp          # 8-byte Folded Reload
	cmpl	52(%rsp), %eax          # 4-byte Folded Reload
	jne	.LBB2_76
	jmp	.LBB2_155
.LBB2_108:                              # %sw.bb.42.i
	movq	%rdi, 112(%rsp)         # 8-byte Spill
	movq	%r9, 120(%rsp)          # 8-byte Spill
	testl	%eax, %eax
	je	.LBB2_116
# BB#109:                               # %for.cond.253.preheader.i.i
	cmpl	$0, 52(%rsp)            # 4-byte Folded Reload
	movq	%rbp, %rdi
	movq	%rdx, %rbp
	jle	.LBB2_155
# BB#110:                               # %for.cond.257.preheader.lr.ph.i.i
	leal	-3(%r8,%r8), %eax
	cltq
	shlq	$2, %rax
	leaq	(,%r8,4), %r12
	subq	%r12, %rax
	movq	%rax, 168(%rsp)         # 8-byte Spill
	movq	%r8, %rax
	shlq	$5, %rax
	negq	%rax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	leal	-2(%r8,%r8), %eax
	cltq
	shlq	$2, %rax
	subq	%r12, %rax
	movq	%rax, 160(%rsp)         # 8-byte Spill
	leal	-1(%r8,%r8), %eax
	cltq
	shlq	$2, %rax
	subq	%r12, %rax
	movq	%rax, 152(%rsp)         # 8-byte Spill
	negq	%r12
	movq	%r12, 144(%rsp)         # 8-byte Spill
	decq	%rdi
	leaq	(,%r8,8), %rax
	negq	%rax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	negq	%r8
	movq	%r8, 176(%rsp)          # 8-byte Spill
	xorl	%eax, %eax
	.align	16, 0x90
.LBB2_111:                              # %for.cond.257.preheader.i.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_112 Depth 2
	movl	%eax, 136(%rsp)         # 4-byte Spill
	movq	%r11, 80(%rsp)          # 8-byte Spill
	movq	%rsi, 88(%rsp)          # 8-byte Spill
	movq	%rbx, 96(%rsp)          # 8-byte Spill
	movq	%rbp, 64(%rsp)          # 8-byte Spill
	movq	%rdi, 72(%rsp)          # 8-byte Spill
	movl	$1, %ecx
	xorl	%r12d, %r12d
	movq	%rbp, %rdx
	movl	$1, %esi
	xorl	%r11d, %r11d
	xorl	%r10d, %r10d
	xorl	%r9d, %r9d
	xorl	%r14d, %r14d
	xorl	%r8d, %r8d
	.align	16, 0x90
.LBB2_112:                              # %for.body.261.i.i
                                        #   Parent Loop BB2_111 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	8(%r13), %ebp
	imull	$7, %ebp, %eax
	addl	$8, %eax
	sarl	$4, %eax
	addl	-4(%rdx), %eax
	movzbl	(%rdi), %r15d
	shll	$19, %r15d
	leal	(%rax,%r15), %ebx
	leal	-67108865(%r15,%rax), %eax
	cmpl	$33554431, %eax         # imm = 0x1FFFFFF
	ja	.LBB2_114
# BB#113:                               # %if.then.290.i.i
                                        #   in Loop: Header=BB2_112 Depth=2
	movzbl	%r14b, %r14d
	orl	%esi, %r14d
	addl	$-83886080, %ebx        # imm = 0xFFFFFFFFFB000000
.LBB2_114:                              # %if.end.297.i.i
                                        #   in Loop: Header=BB2_112 Depth=2
	leal	-100663297(%rbx), %eax
	cmpl	$17825791, %eax         # imm = 0x10FFFFF
	ja	.LBB2_139
# BB#115:                               # %if.end.312.thread.i.i
                                        #   in Loop: Header=BB2_112 Depth=2
	movzbl	%r11b, %r11d
	orl	%esi, %r11d
	addl	$-118489088, %ebx       # imm = 0xFFFFFFFFF8F00000
	jmp	.LBB2_141
	.align	16, 0x90
.LBB2_139:                              # %if.end.312.i.i
                                        #   in Loop: Header=BB2_112 Depth=2
	cmpl	$118489089, %ebx        # imm = 0x7100001
	jl	.LBB2_141
# BB#140:                               # %if.then.316.i.i
                                        #   in Loop: Header=BB2_112 Depth=2
	movzbl	%r14b, %r14d
	orl	%esi, %r14d
	movzbl	%r11b, %r11d
	orl	%esi, %r11d
	addl	$-133693440, %ebx       # imm = 0xFFFFFFFFF8080000
.LBB2_141:                              # %if.end.327.i.i
                                        #   in Loop: Header=BB2_112 Depth=2
	movl	%ebx, 8(%r13)
	leal	8(%rbx,%rbx,2), %eax
	sarl	$4, %eax
	movq	152(%rsp), %rbx         # 8-byte Reload
	addl	%eax, (%rbx,%rdx)
	imull	$5, 8(%r13), %eax
	leal	8(%rbp,%rax), %eax
	sarl	$4, %eax
	movl	%eax, -4(%rdx)
	movl	4(%r13), %r15d
	imull	$7, %r15d, %eax
	addl	$8, %eax
	sarl	$4, %eax
	addl	-8(%rdx), %eax
	movzbl	-1(%rdi), %ebp
	shll	$19, %ebp
	leal	(%rax,%rbp), %ebx
	leal	-67108865(%rbp,%rax), %eax
	cmpl	$33554431, %eax         # imm = 0x1FFFFFF
	ja	.LBB2_143
# BB#142:                               # %if.then.368.i.i
                                        #   in Loop: Header=BB2_112 Depth=2
	movzbl	%r9b, %r9d
	orl	%esi, %r9d
	addl	$-83886080, %ebx        # imm = 0xFFFFFFFFFB000000
.LBB2_143:                              # %if.end.375.i.i
                                        #   in Loop: Header=BB2_112 Depth=2
	leal	-100663297(%rbx), %eax
	cmpl	$17825791, %eax         # imm = 0x10FFFFF
	ja	.LBB2_145
# BB#144:                               # %if.end.390.thread.i.i
                                        #   in Loop: Header=BB2_112 Depth=2
	movzbl	%r12b, %r12d
	orl	%esi, %r12d
	addl	$-118489088, %ebx       # imm = 0xFFFFFFFFF8F00000
	jmp	.LBB2_147
	.align	16, 0x90
.LBB2_145:                              # %if.end.390.i.i
                                        #   in Loop: Header=BB2_112 Depth=2
	cmpl	$118489089, %ebx        # imm = 0x7100001
	jl	.LBB2_147
# BB#146:                               # %if.then.394.i.i
                                        #   in Loop: Header=BB2_112 Depth=2
	movzbl	%r9b, %r9d
	orl	%esi, %r9d
	movzbl	%r12b, %r12d
	orl	%esi, %r12d
	addl	$-133693440, %ebx       # imm = 0xFFFFFFFFF8080000
.LBB2_147:                              # %if.end.405.i.i
                                        #   in Loop: Header=BB2_112 Depth=2
	movl	%ebx, 4(%r13)
	leal	8(%rbx,%rbx,2), %eax
	sarl	$4, %eax
	movq	160(%rsp), %rbx         # 8-byte Reload
	addl	%eax, (%rbx,%rdx)
	imull	$5, 4(%r13), %eax
	leal	8(%r15,%rax), %eax
	sarl	$4, %eax
	movl	%eax, -8(%rdx)
	movl	(%r13), %r15d
	imull	$7, %r15d, %eax
	addl	$8, %eax
	sarl	$4, %eax
	addl	-12(%rdx), %eax
	movzbl	-2(%rdi), %ebp
	shll	$19, %ebp
	leal	(%rax,%rbp), %ebx
	leal	-67108865(%rbp,%rax), %eax
	cmpl	$33554431, %eax         # imm = 0x1FFFFFF
	ja	.LBB2_149
# BB#148:                               # %if.then.446.i.i
                                        #   in Loop: Header=BB2_112 Depth=2
	movzbl	%r8b, %r8d
	orl	%esi, %r8d
	addl	$-83886080, %ebx        # imm = 0xFFFFFFFFFB000000
.LBB2_149:                              # %if.end.453.i.i
                                        #   in Loop: Header=BB2_112 Depth=2
	leal	-100663297(%rbx), %eax
	cmpl	$17825791, %eax         # imm = 0x10FFFFF
	ja	.LBB2_151
# BB#150:                               # %if.end.468.thread.i.i
                                        #   in Loop: Header=BB2_112 Depth=2
	movzbl	%r10b, %r10d
	orl	%esi, %r10d
	addl	$-118489088, %ebx       # imm = 0xFFFFFFFFF8F00000
	jmp	.LBB2_153
	.align	16, 0x90
.LBB2_151:                              # %if.end.468.i.i
                                        #   in Loop: Header=BB2_112 Depth=2
	cmpl	$118489089, %ebx        # imm = 0x7100001
	jl	.LBB2_153
# BB#152:                               # %if.then.472.i.i
                                        #   in Loop: Header=BB2_112 Depth=2
	movzbl	%r8b, %r8d
	orl	%esi, %r8d
	movzbl	%r10b, %r10d
	orl	%esi, %r10d
	addl	$-133693440, %ebx       # imm = 0xFFFFFFFFF8080000
.LBB2_153:                              # %if.end.483.i.i
                                        #   in Loop: Header=BB2_112 Depth=2
	movl	%ebx, (%r13)
	leal	8(%rbx,%rbx,2), %eax
	sarl	$4, %eax
	movq	168(%rsp), %rsi         # 8-byte Reload
	addl	%eax, (%rsi,%rdx)
	imull	$5, (%r13), %eax
	leal	8(%r15,%rax), %eax
	sarl	$4, %eax
	movl	%eax, -12(%rdx)
	movl	%ecx, %esi
	addl	%esi, %esi
	addq	144(%rsp), %rdx         # 8-byte Folded Reload
	addq	176(%rsp), %rdi         # 8-byte Folded Reload
	movl	%esi, %ecx
	andl	$254, %ecx
	jne	.LBB2_112
# BB#154:                               # %for.end.505.i.i
                                        #   in Loop: Header=BB2_111 Depth=1
	movq	128(%rsp), %rcx         # 8-byte Reload
	movb	%r14b, -1(%rcx)
	movq	112(%rsp), %rdx         # 8-byte Reload
	movb	%r9b, -1(%rdx)
	movq	120(%rsp), %rax         # 8-byte Reload
	movb	%r8b, -1(%rax)
	movq	80(%rsp), %rsi          # 8-byte Reload
	movb	%r11b, -1(%rsi)
	movq	%rsi, %r11
	movq	88(%rsp), %rsi          # 8-byte Reload
	movb	%r12b, -1(%rsi)
	movq	96(%rsp), %rbx          # 8-byte Reload
	movb	%r10b, -1(%rbx)
	decq	%rcx
	movq	%rcx, 128(%rsp)         # 8-byte Spill
	decq	%rdx
	movq	%rdx, 112(%rsp)         # 8-byte Spill
	decq	%rax
	movq	%rax, 120(%rsp)         # 8-byte Spill
	decq	%r11
	decq	%rsi
	decq	%rbx
	movl	136(%rsp), %eax         # 4-byte Reload
	incl	%eax
	movq	64(%rsp), %rbp          # 8-byte Reload
	addq	40(%rsp), %rbp          # 8-byte Folded Reload
	movq	72(%rsp), %rdi          # 8-byte Reload
	addq	24(%rsp), %rdi          # 8-byte Folded Reload
	cmpl	52(%rsp), %eax          # 4-byte Folded Reload
	jne	.LBB2_111
	jmp	.LBB2_155
.LBB2_49:                               # %if.then
	cmpl	$2, %ecx
	jne	.LBB2_167
# BB#50:                                # %sw.bb.i
	movq	%rdi, 112(%rsp)         # 8-byte Spill
	movq	%r9, 120(%rsp)          # 8-byte Spill
	testl	%eax, %eax
	je	.LBB2_62
# BB#51:                                # %for.cond.146.preheader.i.i
	cmpl	$0, 52(%rsp)            # 4-byte Folded Reload
	movq	%rbp, %rcx
	movq	%rdx, %rsi
	jle	.LBB2_155
# BB#52:                                # %for.cond.150.preheader.lr.ph.i.i
	leal	-3(%r8,%r8), %eax
	cltq
	shlq	$2, %rax
	leaq	(,%r8,4), %r15
	subq	%r15, %rax
	movq	%rax, 168(%rsp)         # 8-byte Spill
	movq	%r8, %rax
	shlq	$5, %rax
	negq	%rax
	movq	%rax, 152(%rsp)         # 8-byte Spill
	leal	-2(%r8,%r8), %eax
	cltq
	shlq	$2, %rax
	subq	%r15, %rax
	movq	%rax, 160(%rsp)         # 8-byte Spill
	leal	-1(%r8,%r8), %eax
	movslq	%eax, %r12
	shlq	$2, %r12
	subq	%r15, %r12
	negq	%r15
	decq	%rcx
	leaq	(,%r8,8), %rax
	negq	%rax
	movq	%rax, 144(%rsp)         # 8-byte Spill
	negq	%r8
	movq	%r8, %r14
	xorl	%eax, %eax
	.align	16, 0x90
.LBB2_53:                               # %for.cond.150.preheader.i.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_54 Depth 2
	movl	%eax, 176(%rsp)         # 4-byte Spill
	movq	%rsi, 64(%rsp)          # 8-byte Spill
	movq	%rcx, 72(%rsp)          # 8-byte Spill
	movl	$1, %r9d
	xorl	%r11d, %r11d
	movq	%rcx, %rax
	movq	%rsi, %rdx
	movl	$1, %esi
	xorl	%r8d, %r8d
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB2_54:                               # %for.body.154.i.i
                                        #   Parent Loop BB2_53 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	8(%r13), %ebx
	imull	$7, %ebx, %edi
	addl	$8, %edi
	sarl	$4, %edi
	addl	-4(%rdx), %edi
	movzbl	(%rax), %r10d
	shll	$19, %r10d
	addl	%edi, %r10d
	cmpl	$67108865, %r10d        # imm = 0x4000001
	jl	.LBB2_56
# BB#55:                                # %if.then.179.i.i
                                        #   in Loop: Header=BB2_54 Depth=2
	movzbl	%r8b, %r8d
	orl	%esi, %r8d
	addl	$-133693440, %r10d      # imm = 0xFFFFFFFFF8080000
.LBB2_56:                               # %if.end.186.i.i
                                        #   in Loop: Header=BB2_54 Depth=2
	movl	%r10d, 8(%r13)
	leal	8(%r10,%r10,2), %edi
	sarl	$4, %edi
	addl	%edi, (%r12,%rdx)
	imull	$5, 8(%r13), %edi
	leal	8(%rbx,%rdi), %edi
	sarl	$4, %edi
	movl	%edi, -4(%rdx)
	movl	4(%r13), %ebx
	imull	$7, %ebx, %ebp
	addl	$8, %ebp
	sarl	$4, %ebp
	addl	-8(%rdx), %ebp
	movzbl	-1(%rax), %edi
	shll	$19, %edi
	addl	%ebp, %edi
	cmpl	$67108865, %edi         # imm = 0x4000001
	jl	.LBB2_58
# BB#57:                                # %if.then.223.i.i
                                        #   in Loop: Header=BB2_54 Depth=2
	movzbl	%r11b, %r11d
	orl	%esi, %r11d
	addl	$-133693440, %edi       # imm = 0xFFFFFFFFF8080000
.LBB2_58:                               # %if.end.230.i.i
                                        #   in Loop: Header=BB2_54 Depth=2
	movl	%edi, 4(%r13)
	leal	8(%rdi,%rdi,2), %edi
	sarl	$4, %edi
	movq	160(%rsp), %rbp         # 8-byte Reload
	addl	%edi, (%rbp,%rdx)
	imull	$5, 4(%r13), %edi
	leal	8(%rbx,%rdi), %edi
	sarl	$4, %edi
	movl	%edi, -8(%rdx)
	movl	(%r13), %ebx
	imull	$7, %ebx, %ebp
	addl	$8, %ebp
	sarl	$4, %ebp
	addl	-12(%rdx), %ebp
	movzbl	-2(%rax), %edi
	shll	$19, %edi
	addl	%ebp, %edi
	cmpl	$67108865, %edi         # imm = 0x4000001
	jl	.LBB2_60
# BB#59:                                # %if.then.267.i.i
                                        #   in Loop: Header=BB2_54 Depth=2
	movzbl	%cl, %ecx
	orl	%esi, %ecx
	addl	$-133693440, %edi       # imm = 0xFFFFFFFFF8080000
.LBB2_60:                               # %if.end.274.i.i
                                        #   in Loop: Header=BB2_54 Depth=2
	movl	%edi, (%r13)
	leal	8(%rdi,%rdi,2), %esi
	sarl	$4, %esi
	movq	168(%rsp), %rdi         # 8-byte Reload
	addl	%esi, (%rdi,%rdx)
	imull	$5, (%r13), %esi
	leal	8(%rbx,%rsi), %esi
	sarl	$4, %esi
	movl	%esi, -12(%rdx)
	movl	%r9d, %esi
	addl	%esi, %esi
	addq	%r15, %rdx
	addq	%r14, %rax
	movl	%esi, %r9d
	andl	$254, %r9d
	jne	.LBB2_54
# BB#61:                                # %for.end.296.i.i
                                        #   in Loop: Header=BB2_53 Depth=1
	movq	128(%rsp), %rax         # 8-byte Reload
	movb	%r8b, -1(%rax)
	decq	%rax
	movq	%rax, 128(%rsp)         # 8-byte Spill
	movq	112(%rsp), %rax         # 8-byte Reload
	movb	%r11b, -1(%rax)
	decq	%rax
	movq	%rax, 112(%rsp)         # 8-byte Spill
	movq	120(%rsp), %rax         # 8-byte Reload
	movb	%cl, -1(%rax)
	decq	%rax
	movq	%rax, 120(%rsp)         # 8-byte Spill
	movl	176(%rsp), %eax         # 4-byte Reload
	incl	%eax
	movq	64(%rsp), %rsi          # 8-byte Reload
	addq	152(%rsp), %rsi         # 8-byte Folded Reload
	movq	72(%rsp), %rcx          # 8-byte Reload
	addq	144(%rsp), %rcx         # 8-byte Folded Reload
	cmpl	52(%rsp), %eax          # 4-byte Folded Reload
	jne	.LBB2_53
	jmp	.LBB2_155
.LBB2_79:                               # %for.cond.preheader.i.45.i
	cmpl	$0, 52(%rsp)            # 4-byte Folded Reload
	movq	%rdx, %rax
	jle	.LBB2_155
# BB#80:                                # %for.cond.2.preheader.lr.ph.i.50.i
	movq	%r8, 176(%rsp)          # 8-byte Spill
	movq	%r8, %rcx
	shlq	$5, %rcx
	movq	%rcx, 136(%rsp)         # 8-byte Spill
	leaq	(,%r8,8), %rcx
	movq	%rcx, 72(%rsp)          # 8-byte Spill
	shlq	$2, %r8
	movq	%r8, 64(%rsp)           # 8-byte Spill
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB2_81:                               # %for.cond.2.preheader.i.52.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_82 Depth 2
	movl	%ecx, 144(%rsp)         # 4-byte Spill
	movq	%r11, 80(%rsp)          # 8-byte Spill
	movq	%rsi, 88(%rsp)          # 8-byte Spill
	movq	%rbx, 96(%rsp)          # 8-byte Spill
	movq	64(%rsp), %rcx          # 8-byte Reload
	leaq	(%rax,%rcx), %r11
	movl	$128, %edx
	movq	$-1, %r9
	movl	$0, 168(%rsp)           # 4-byte Folded Spill
	movl	$0, 160(%rsp)           # 4-byte Folded Spill
	movl	$0, 152(%rsp)           # 4-byte Folded Spill
	xorl	%r14d, %r14d
	xorl	%r15d, %r15d
	xorl	%r12d, %r12d
	.align	16, 0x90
.LBB2_82:                               # %for.body.5.i.66.i
                                        #   Parent Loop BB2_81 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r9, %r8
	movl	(%r13), %ebx
	imull	$7, %ebx, %ecx
	addl	$8, %ecx
	sarl	$4, %ecx
	addl	-8(%r11,%r8,4), %ecx
	movq	176(%rsp), %rsi         # 8-byte Reload
	leaq	(%rsi,%r8), %r9
	movzbl	-2(%rbp,%r9), %esi
	shll	$19, %esi
	leal	(%rcx,%rsi), %r10d
	leal	-67108865(%rsi,%rcx), %ecx
	cmpl	$33554431, %ecx         # imm = 0x1FFFFFF
	ja	.LBB2_84
# BB#83:                                # %if.end.thread.i.i
                                        #   in Loop: Header=BB2_82 Depth=2
	movzbl	%r12b, %r12d
	orl	%edx, %r12d
	addl	$-83886080, %r10d       # imm = 0xFFFFFFFFFB000000
	jmp	.LBB2_86
	.align	16, 0x90
.LBB2_84:                               # %if.end.i.71.i
                                        #   in Loop: Header=BB2_82 Depth=2
	cmpl	$100663297, %r10d       # imm = 0x6000001
	jl	.LBB2_86
# BB#85:                                # %if.then.29.i.i
                                        #   in Loop: Header=BB2_82 Depth=2
	movl	152(%rsp), %ecx         # 4-byte Reload
	movzbl	%cl, %ecx
	orl	%edx, %ecx
	movl	%ecx, 152(%rsp)         # 4-byte Spill
	addl	$-118489088, %r10d      # imm = 0xFFFFFFFFF8F00000
.LBB2_86:                               # %if.end.36.i.i
                                        #   in Loop: Header=BB2_82 Depth=2
	movl	%r10d, (%r13)
	leal	8(%r10,%r10,2), %ecx
	sarl	$4, %ecx
	addl	%ecx, -8(%rax,%r8,4)
	imull	$5, (%r13), %ecx
	leal	8(%rbx,%rcx), %ecx
	sarl	$4, %ecx
	movl	%ecx, -8(%r11,%r8,4)
	movl	4(%r13), %ebx
	imull	$7, %ebx, %esi
	addl	$8, %esi
	sarl	$4, %esi
	addl	-4(%r11,%r8,4), %esi
	movzbl	-1(%rbp,%r9), %edi
	shll	$19, %edi
	leal	(%rsi,%rdi), %ecx
	leal	-67108865(%rdi,%rsi), %esi
	cmpl	$33554431, %esi         # imm = 0x1FFFFFF
	ja	.LBB2_88
# BB#87:                                # %if.end.84.thread.i.i
                                        #   in Loop: Header=BB2_82 Depth=2
	movzbl	%r14b, %r14d
	orl	%edx, %r14d
	addl	$-83886080, %ecx        # imm = 0xFFFFFFFFFB000000
	jmp	.LBB2_90
	.align	16, 0x90
.LBB2_88:                               # %if.end.84.i.i
                                        #   in Loop: Header=BB2_82 Depth=2
	cmpl	$100663297, %ecx        # imm = 0x6000001
	jl	.LBB2_90
# BB#89:                                # %if.then.88.i.i
                                        #   in Loop: Header=BB2_82 Depth=2
	movl	168(%rsp), %esi         # 4-byte Reload
	movzbl	%sil, %esi
	orl	%edx, %esi
	movl	%esi, 168(%rsp)         # 4-byte Spill
	addl	$-118489088, %ecx       # imm = 0xFFFFFFFFF8F00000
.LBB2_90:                               # %if.end.95.i.i
                                        #   in Loop: Header=BB2_82 Depth=2
	movl	%ecx, 4(%r13)
	leal	8(%rcx,%rcx,2), %ecx
	sarl	$4, %ecx
	addl	%ecx, -4(%rax,%r8,4)
	imull	$5, 4(%r13), %ecx
	leal	8(%rbx,%rcx), %ecx
	sarl	$4, %ecx
	movl	%ecx, -4(%r11,%r8,4)
	movl	8(%r13), %ebx
	imull	$7, %ebx, %esi
	addl	$8, %esi
	sarl	$4, %esi
	addl	(%r11,%r8,4), %esi
	movzbl	(%rbp,%r9), %edi
	shll	$19, %edi
	leal	(%rsi,%rdi), %ecx
	leal	-67108865(%rdi,%rsi), %esi
	cmpl	$33554431, %esi         # imm = 0x1FFFFFF
	ja	.LBB2_92
# BB#91:                                # %if.end.143.thread.i.i
                                        #   in Loop: Header=BB2_82 Depth=2
	movzbl	%r15b, %r15d
	orl	%edx, %r15d
	addl	$-83886080, %ecx        # imm = 0xFFFFFFFFFB000000
	jmp	.LBB2_94
	.align	16, 0x90
.LBB2_92:                               # %if.end.143.i.i
                                        #   in Loop: Header=BB2_82 Depth=2
	cmpl	$100663297, %ecx        # imm = 0x6000001
	jl	.LBB2_94
# BB#93:                                # %if.then.147.i.i
                                        #   in Loop: Header=BB2_82 Depth=2
	movl	160(%rsp), %esi         # 4-byte Reload
	movzbl	%sil, %esi
	orl	%edx, %esi
	movl	%esi, 160(%rsp)         # 4-byte Spill
	addl	$-118489088, %ecx       # imm = 0xFFFFFFFFF8F00000
.LBB2_94:                               # %if.end.154.i.i
                                        #   in Loop: Header=BB2_82 Depth=2
	movl	%ecx, 8(%r13)
	leal	8(%rcx,%rcx,2), %ecx
	sarl	$4, %ecx
	addl	%ecx, (%rax,%r8,4)
	imull	$5, 8(%r13), %ecx
	leal	8(%rbx,%rcx), %ecx
	sarl	$4, %ecx
	movl	%ecx, (%r11,%r8,4)
	shrl	%edx
	jne	.LBB2_82
# BB#95:                                # %for.end.i.85.i
                                        #   in Loop: Header=BB2_81 Depth=1
	movq	120(%rsp), %r8          # 8-byte Reload
	movb	%r12b, (%r8)
	movq	112(%rsp), %rdx         # 8-byte Reload
	movb	%r14b, (%rdx)
	movq	128(%rsp), %rcx         # 8-byte Reload
	movb	%r15b, (%rcx)
	movq	96(%rsp), %rbx          # 8-byte Reload
	movl	152(%rsp), %esi         # 4-byte Reload
	movb	%sil, (%rbx)
	movq	88(%rsp), %rsi          # 8-byte Reload
	movl	168(%rsp), %edi         # 4-byte Reload
	movb	%dil, (%rsi)
	movq	80(%rsp), %r11          # 8-byte Reload
	movl	160(%rsp), %edi         # 4-byte Reload
	movb	%dil, (%r11)
	addq	72(%rsp), %rbp          # 8-byte Folded Reload
	incq	%r8
	movq	%r8, 120(%rsp)          # 8-byte Spill
	incq	%rdx
	movq	%rdx, 112(%rsp)         # 8-byte Spill
	incq	%rcx
	movq	%rcx, 128(%rsp)         # 8-byte Spill
	incq	%rbx
	incq	%rsi
	incq	%r11
	movl	144(%rsp), %ecx         # 4-byte Reload
	incl	%ecx
	addq	136(%rsp), %rax         # 8-byte Folded Reload
	cmpl	52(%rsp), %ecx          # 4-byte Folded Reload
	jne	.LBB2_81
	jmp	.LBB2_155
.LBB2_116:                              # %for.cond.preheader.i.4.i
	cmpl	$0, 52(%rsp)            # 4-byte Folded Reload
	movq	%rbp, %rax
	movq	%rdx, %rdi
	jle	.LBB2_155
# BB#117:                               # %for.cond.2.preheader.lr.ph.i.9.i
	movq	%r8, 176(%rsp)          # 8-byte Spill
	movq	%r8, %rcx
	shlq	$5, %rcx
	movq	%rcx, 136(%rsp)         # 8-byte Spill
	leaq	(,%r8,8), %rcx
	movq	%rcx, 72(%rsp)          # 8-byte Spill
	shlq	$2, %r8
	movq	%r8, 64(%rsp)           # 8-byte Spill
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB2_118:                              # %for.cond.2.preheader.i.11.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_119 Depth 2
	movl	%ecx, 144(%rsp)         # 4-byte Spill
	movq	%r11, 80(%rsp)          # 8-byte Spill
	movq	%rsi, 88(%rsp)          # 8-byte Spill
	movq	%rbx, 96(%rsp)          # 8-byte Spill
	movq	64(%rsp), %rcx          # 8-byte Reload
	leaq	(%rdi,%rcx), %r15
	movl	$128, %ecx
	movq	$-1, %r8
	movl	$0, 168(%rsp)           # 4-byte Folded Spill
	movl	$0, 160(%rsp)           # 4-byte Folded Spill
	movl	$0, 152(%rsp)           # 4-byte Folded Spill
	xorl	%r12d, %r12d
	xorl	%r11d, %r11d
	xorl	%r9d, %r9d
	.align	16, 0x90
.LBB2_119:                              # %for.body.5.i.23.i
                                        #   Parent Loop BB2_118 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r8, %r14
	movl	(%r13), %esi
	imull	$7, %esi, %ebx
	addl	$8, %ebx
	sarl	$4, %ebx
	addl	-8(%r15,%r14,4), %ebx
	movq	176(%rsp), %rdx         # 8-byte Reload
	leaq	(%rdx,%r14), %r8
	movzbl	-2(%rax,%r8), %edx
	shll	$19, %edx
	leal	(%rbx,%rdx), %r10d
	leal	-67108865(%rdx,%rbx), %edx
	cmpl	$33554431, %edx         # imm = 0x1FFFFFF
	ja	.LBB2_121
# BB#120:                               # %if.then.21.i.i
                                        #   in Loop: Header=BB2_119 Depth=2
	movzbl	%r9b, %r9d
	orl	%ecx, %r9d
	addl	$-83886080, %r10d       # imm = 0xFFFFFFFFFB000000
.LBB2_121:                              # %if.end.i.27.i
                                        #   in Loop: Header=BB2_119 Depth=2
	leal	-100663297(%r10), %edx
	cmpl	$17825791, %edx         # imm = 0x10FFFFF
	ja	.LBB2_123
# BB#122:                               # %if.end.40.thread.i.i
                                        #   in Loop: Header=BB2_119 Depth=2
	movl	152(%rsp), %edx         # 4-byte Reload
	movzbl	%dl, %edx
	orl	%ecx, %edx
	movl	%edx, 152(%rsp)         # 4-byte Spill
	addl	$-118489088, %r10d      # imm = 0xFFFFFFFFF8F00000
	jmp	.LBB2_125
	.align	16, 0x90
.LBB2_123:                              # %if.end.40.i.i
                                        #   in Loop: Header=BB2_119 Depth=2
	cmpl	$118489089, %r10d       # imm = 0x7100001
	jl	.LBB2_125
# BB#124:                               # %if.then.44.i.i
                                        #   in Loop: Header=BB2_119 Depth=2
	movzbl	%r9b, %r9d
	orl	%ecx, %r9d
	movl	152(%rsp), %edx         # 4-byte Reload
	movzbl	%dl, %edx
	orl	%ecx, %edx
	movl	%edx, 152(%rsp)         # 4-byte Spill
	addl	$-133693440, %r10d      # imm = 0xFFFFFFFFF8080000
.LBB2_125:                              # %if.end.55.i.i
                                        #   in Loop: Header=BB2_119 Depth=2
	movl	%r10d, (%r13)
	leal	8(%r10,%r10,2), %edx
	sarl	$4, %edx
	addl	%edx, -8(%rdi,%r14,4)
	imull	$5, (%r13), %edx
	leal	8(%rsi,%rdx), %edx
	sarl	$4, %edx
	movl	%edx, -8(%r15,%r14,4)
	movl	4(%r13), %esi
	imull	$7, %esi, %edx
	addl	$8, %edx
	sarl	$4, %edx
	addl	-4(%r15,%r14,4), %edx
	movzbl	-1(%rax,%r8), %ebp
	shll	$19, %ebp
	leal	(%rdx,%rbp), %ebx
	leal	-67108865(%rbp,%rdx), %edx
	cmpl	$33554431, %edx         # imm = 0x1FFFFFF
	ja	.LBB2_127
# BB#126:                               # %if.then.96.i.i
                                        #   in Loop: Header=BB2_119 Depth=2
	movzbl	%r12b, %r12d
	orl	%ecx, %r12d
	addl	$-83886080, %ebx        # imm = 0xFFFFFFFFFB000000
.LBB2_127:                              # %if.end.103.i.i
                                        #   in Loop: Header=BB2_119 Depth=2
	leal	-100663297(%rbx), %edx
	cmpl	$17825791, %edx         # imm = 0x10FFFFF
	ja	.LBB2_129
# BB#128:                               # %if.end.118.thread.i.i
                                        #   in Loop: Header=BB2_119 Depth=2
	movl	168(%rsp), %edx         # 4-byte Reload
	movzbl	%dl, %edx
	orl	%ecx, %edx
	movl	%edx, 168(%rsp)         # 4-byte Spill
	addl	$-118489088, %ebx       # imm = 0xFFFFFFFFF8F00000
	jmp	.LBB2_131
	.align	16, 0x90
.LBB2_129:                              # %if.end.118.i.i
                                        #   in Loop: Header=BB2_119 Depth=2
	cmpl	$118489089, %ebx        # imm = 0x7100001
	jl	.LBB2_131
# BB#130:                               # %if.then.122.i.i
                                        #   in Loop: Header=BB2_119 Depth=2
	movzbl	%r12b, %r12d
	orl	%ecx, %r12d
	movl	168(%rsp), %edx         # 4-byte Reload
	movzbl	%dl, %edx
	orl	%ecx, %edx
	movl	%edx, 168(%rsp)         # 4-byte Spill
	addl	$-133693440, %ebx       # imm = 0xFFFFFFFFF8080000
.LBB2_131:                              # %if.end.133.i.i
                                        #   in Loop: Header=BB2_119 Depth=2
	movl	%ebx, 4(%r13)
	leal	8(%rbx,%rbx,2), %edx
	sarl	$4, %edx
	addl	%edx, -4(%rdi,%r14,4)
	imull	$5, 4(%r13), %edx
	leal	8(%rsi,%rdx), %edx
	sarl	$4, %edx
	movl	%edx, -4(%r15,%r14,4)
	movl	8(%r13), %esi
	imull	$7, %esi, %edx
	addl	$8, %edx
	sarl	$4, %edx
	addl	(%r15,%r14,4), %edx
	movzbl	(%rax,%r8), %ebp
	shll	$19, %ebp
	leal	(%rdx,%rbp), %ebx
	leal	-67108865(%rbp,%rdx), %edx
	cmpl	$33554431, %edx         # imm = 0x1FFFFFF
	ja	.LBB2_133
# BB#132:                               # %if.then.174.i.i
                                        #   in Loop: Header=BB2_119 Depth=2
	movzbl	%r11b, %r11d
	orl	%ecx, %r11d
	addl	$-83886080, %ebx        # imm = 0xFFFFFFFFFB000000
.LBB2_133:                              # %if.end.181.i.i
                                        #   in Loop: Header=BB2_119 Depth=2
	leal	-100663297(%rbx), %edx
	cmpl	$17825791, %edx         # imm = 0x10FFFFF
	ja	.LBB2_135
# BB#134:                               # %if.end.196.thread.i.i
                                        #   in Loop: Header=BB2_119 Depth=2
	movl	160(%rsp), %edx         # 4-byte Reload
	movzbl	%dl, %edx
	orl	%ecx, %edx
	movl	%edx, 160(%rsp)         # 4-byte Spill
	addl	$-118489088, %ebx       # imm = 0xFFFFFFFFF8F00000
	jmp	.LBB2_137
	.align	16, 0x90
.LBB2_135:                              # %if.end.196.i.i
                                        #   in Loop: Header=BB2_119 Depth=2
	cmpl	$118489089, %ebx        # imm = 0x7100001
	jl	.LBB2_137
# BB#136:                               # %if.then.200.i.i
                                        #   in Loop: Header=BB2_119 Depth=2
	movzbl	%r11b, %r11d
	orl	%ecx, %r11d
	movl	160(%rsp), %edx         # 4-byte Reload
	movzbl	%dl, %edx
	orl	%ecx, %edx
	movl	%edx, 160(%rsp)         # 4-byte Spill
	addl	$-133693440, %ebx       # imm = 0xFFFFFFFFF8080000
.LBB2_137:                              # %if.end.211.i.i
                                        #   in Loop: Header=BB2_119 Depth=2
	movl	%ebx, 8(%r13)
	leal	8(%rbx,%rbx,2), %edx
	sarl	$4, %edx
	addl	%edx, (%rdi,%r14,4)
	imull	$5, 8(%r13), %edx
	leal	8(%rsi,%rdx), %edx
	sarl	$4, %edx
	movl	%edx, (%r15,%r14,4)
	shrl	%ecx
	jne	.LBB2_119
# BB#138:                               # %for.end.i.40.i
                                        #   in Loop: Header=BB2_118 Depth=1
	movq	120(%rsp), %r8          # 8-byte Reload
	movb	%r9b, (%r8)
	movq	112(%rsp), %rdx         # 8-byte Reload
	movb	%r12b, (%rdx)
	movq	128(%rsp), %rbp         # 8-byte Reload
	movb	%r11b, (%rbp)
	movq	96(%rsp), %rbx          # 8-byte Reload
	movl	152(%rsp), %ecx         # 4-byte Reload
	movb	%cl, (%rbx)
	movq	88(%rsp), %rsi          # 8-byte Reload
	movl	168(%rsp), %ecx         # 4-byte Reload
	movb	%cl, (%rsi)
	movq	80(%rsp), %r11          # 8-byte Reload
	movl	160(%rsp), %ecx         # 4-byte Reload
	movb	%cl, (%r11)
	addq	72(%rsp), %rax          # 8-byte Folded Reload
	incq	%r8
	movq	%r8, 120(%rsp)          # 8-byte Spill
	incq	%rdx
	movq	%rdx, 112(%rsp)         # 8-byte Spill
	incq	%rbp
	movq	%rbp, 128(%rsp)         # 8-byte Spill
	incq	%rbx
	incq	%rsi
	incq	%r11
	movl	144(%rsp), %ecx         # 4-byte Reload
	incl	%ecx
	addq	136(%rsp), %rdi         # 8-byte Folded Reload
	cmpl	52(%rsp), %ecx          # 4-byte Folded Reload
	jne	.LBB2_118
	jmp	.LBB2_155
.LBB2_62:                               # %for.cond.preheader.i.i
	cmpl	$0, 52(%rsp)            # 4-byte Folded Reload
	movq	%rbp, %r9
	movq	%rdx, %r10
	jle	.LBB2_155
# BB#63:                                # %for.cond.2.preheader.lr.ph.i.i
	leaq	(,%r8,8), %rax
	movq	%rax, 168(%rsp)         # 8-byte Spill
	movq	%r8, %rax
	shlq	$5, %rax
	movq	%rax, 160(%rsp)         # 8-byte Spill
	leaq	(,%r8,4), %rax
	movq	%rax, 152(%rsp)         # 8-byte Spill
	xorl	%r11d, %r11d
	.align	16, 0x90
.LBB2_64:                               # %for.cond.2.preheader.i.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_65 Depth 2
	movq	152(%rsp), %rax         # 8-byte Reload
	leaq	(%r10,%rax), %rax
	movl	$128, %edx
	movq	$-1, %rcx
	xorl	%r14d, %r14d
	xorl	%r15d, %r15d
	xorl	%r12d, %r12d
	.align	16, 0x90
.LBB2_65:                               # %for.body.5.i.i
                                        #   Parent Loop BB2_64 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%r13), %ebx
	imull	$7, %ebx, %esi
	addl	$8, %esi
	sarl	$4, %esi
	addl	-8(%rax,%rcx,4), %esi
	leaq	(%r8,%rcx), %rdi
	movzbl	-2(%r9,%rdi), %ebp
	shll	$19, %ebp
	addl	%esi, %ebp
	cmpl	$67108865, %ebp         # imm = 0x4000001
	jl	.LBB2_67
# BB#66:                                # %if.then.18.i.i
                                        #   in Loop: Header=BB2_65 Depth=2
	movzbl	%r12b, %r12d
	orl	%edx, %r12d
	addl	$-133693440, %ebp       # imm = 0xFFFFFFFFF8080000
.LBB2_67:                               # %if.end.i.i
                                        #   in Loop: Header=BB2_65 Depth=2
	movl	%ebp, (%r13)
	leal	8(%rbp,%rbp,2), %esi
	sarl	$4, %esi
	addl	%esi, -8(%r10,%rcx,4)
	imull	$5, (%r13), %esi
	leal	8(%rbx,%rsi), %esi
	sarl	$4, %esi
	movl	%esi, -8(%rax,%rcx,4)
	movl	4(%r13), %ebx
	imull	$7, %ebx, %esi
	addl	$8, %esi
	sarl	$4, %esi
	addl	-4(%rax,%rcx,4), %esi
	movzbl	-1(%r9,%rdi), %ebp
	shll	$19, %ebp
	addl	%esi, %ebp
	cmpl	$67108865, %ebp         # imm = 0x4000001
	jl	.LBB2_69
# BB#68:                                # %if.then.59.i.i
                                        #   in Loop: Header=BB2_65 Depth=2
	movzbl	%r14b, %r14d
	orl	%edx, %r14d
	addl	$-133693440, %ebp       # imm = 0xFFFFFFFFF8080000
.LBB2_69:                               # %if.end.66.i.i
                                        #   in Loop: Header=BB2_65 Depth=2
	movl	%ebp, 4(%r13)
	leal	8(%rbp,%rbp,2), %esi
	sarl	$4, %esi
	addl	%esi, -4(%r10,%rcx,4)
	imull	$5, 4(%r13), %esi
	leal	8(%rbx,%rsi), %esi
	sarl	$4, %esi
	movl	%esi, -4(%rax,%rcx,4)
	movl	8(%r13), %ebx
	imull	$7, %ebx, %esi
	addl	$8, %esi
	sarl	$4, %esi
	addl	(%rax,%rcx,4), %esi
	movzbl	(%r9,%rdi), %ebp
	shll	$19, %ebp
	addl	%esi, %ebp
	cmpl	$67108865, %ebp         # imm = 0x4000001
	jl	.LBB2_71
# BB#70:                                # %if.then.103.i.i
                                        #   in Loop: Header=BB2_65 Depth=2
	movzbl	%r15b, %r15d
	orl	%edx, %r15d
	addl	$-133693440, %ebp       # imm = 0xFFFFFFFFF8080000
.LBB2_71:                               # %if.end.110.i.i
                                        #   in Loop: Header=BB2_65 Depth=2
	movl	%ebp, 8(%r13)
	leal	8(%rbp,%rbp,2), %esi
	sarl	$4, %esi
	addl	%esi, (%r10,%rcx,4)
	imull	$5, 8(%r13), %esi
	leal	8(%rbx,%rsi), %esi
	sarl	$4, %esi
	movl	%esi, (%rax,%rcx,4)
	shrl	%edx
	movq	%rdi, %rcx
	jne	.LBB2_65
# BB#72:                                # %for.end.i.i
                                        #   in Loop: Header=BB2_64 Depth=1
	addq	168(%rsp), %r9          # 8-byte Folded Reload
	movq	120(%rsp), %rax         # 8-byte Reload
	movb	%r12b, (%rax)
	incq	%rax
	movq	%rax, 120(%rsp)         # 8-byte Spill
	movq	112(%rsp), %rax         # 8-byte Reload
	movb	%r14b, (%rax)
	incq	%rax
	movq	%rax, 112(%rsp)         # 8-byte Spill
	movq	128(%rsp), %rax         # 8-byte Reload
	movb	%r15b, (%rax)
	incq	%rax
	movq	%rax, 128(%rsp)         # 8-byte Spill
	incl	%r11d
	addq	160(%rsp), %r10         # 8-byte Folded Reload
	cmpl	52(%rsp), %r11d         # 4-byte Folded Reload
	jne	.LBB2_64
.LBB2_155:                              # %do_floyd_steinberg.exit
	movq	32(%rsp), %r12          # 8-byte Reload
	movl	16(%r12), %eax
	addl	$-2, %eax
	movq	8(%rsp), %r13           # 8-byte Reload
	js	.LBB2_165
# BB#156:                               # %for.body.lr.ph
	movslq	52(%rsp), %r14          # 4-byte Folded Reload
	shrq	$3, %r14
	movslq	%eax, %rbx
	.align	16, 0x90
.LBB2_157:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	56(%rsp), %rax          # 8-byte Reload
	cmpl	$3, 18496(%rax)
	jl	.LBB2_161
# BB#158:                               # %if.then.55
                                        #   in Loop: Header=BB2_157 Depth=1
	movslq	64(%r12), %rax
	shlq	$6, %rax
	movq	104(%rsp), %rcx         # 8-byte Reload
	leaq	(%rax,%rcx), %rax
	movq	224(%rax,%rbx,8), %rdi
	movq	448(%rcx), %r15
	leaq	(%rdi,%r14,8), %rsi
	movq	%r15, %rdx
	callq	gdev_pcl_mode2compress
	movl	%eax, %ebp
	movsbl	.L.str.21(%rbx), %ecx
	testl	%ebp, %ebp
	jle	.LBB2_160
# BB#159:                               # %if.then.i.110
                                        #   in Loop: Header=BB2_157 Depth=1
	movl	$.L.str.23, %esi
	xorl	%eax, %eax
	movq	%r13, %rdi
	movl	%ebp, %edx
	callq	fprintf
	movslq	%ebp, %rdx
	movl	$1, %esi
	movq	%r15, %rdi
	movq	%r13, %rcx
	callq	fwrite
	jmp	.LBB2_161
.LBB2_160:                              # %if.else.i.112
                                        #   in Loop: Header=BB2_157 Depth=1
	movl	%ecx, %edi
	movq	%r13, %rsi
	callq	_IO_putc
	.align	16, 0x90
.LBB2_161:                              # %if.end
                                        #   in Loop: Header=BB2_157 Depth=1
	movslq	64(%r12), %rax
	shlq	$6, %rax
	movq	104(%rsp), %rcx         # 8-byte Reload
	leaq	(%rax,%rcx), %rax
	movq	192(%rax,%rbx,8), %rdi
	movq	448(%rcx), %r15
	leaq	(%rdi,%r14,8), %rsi
	movq	%r15, %rdx
	callq	gdev_pcl_mode2compress
	movl	%eax, %ebp
	movsbl	.L.str.22(%rbx), %ecx
	testl	%ebp, %ebp
	jle	.LBB2_163
# BB#162:                               # %if.then.i.75
                                        #   in Loop: Header=BB2_157 Depth=1
	movl	$.L.str.23, %esi
	xorl	%eax, %eax
	movq	%r13, %rdi
	movl	%ebp, %edx
	callq	fprintf
	movslq	%ebp, %rdx
	movl	$1, %esi
	movq	%r15, %rdi
	movq	%r13, %rcx
	callq	fwrite
	jmp	.LBB2_164
	.align	16, 0x90
.LBB2_163:                              # %if.else.i.76
                                        #   in Loop: Header=BB2_157 Depth=1
	movl	%ecx, %edi
	movq	%r13, %rsi
	callq	_IO_putc
.LBB2_164:                              # %print_c2plane.exit
                                        #   in Loop: Header=BB2_157 Depth=1
	testq	%rbx, %rbx
	leaq	-1(%rbx), %rbx
	jg	.LBB2_157
.LBB2_165:                              # %for.end
	movl	$1, %eax
	subl	64(%r12), %eax
	movl	%eax, 64(%r12)
.LBB2_166:                              # %if.end.92
	addq	$184, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB2_167:                              # %sw.default.i
	movl	$.L.str.24, %edi
	movl	$.L.str.25, %esi
	movl	$1182, %edx             # imm = 0x49E
	movl	$.L__PRETTY_FUNCTION__.do_floyd_steinberg, %ecx
	callq	__assert_fail
.Lfunc_end2:
	.size	cdj970_print_non_blank_lines, .Lfunc_end2-cdj970_print_non_blank_lines
	.cfi_endproc

	.align	16, 0x90
	.type	cdj970_terminate_page,@function
cdj970_terminate_page:                  # @cdj970_terminate_page
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$.L.str.14, %edi
	jmp	fputs                   # TAILCALL
.Lfunc_end3:
	.size	cdj970_terminate_page, .Lfunc_end3-cdj970_terminate_page
	.cfi_endproc

	.align	16, 0x90
	.type	hp_colour_open,@function
hp_colour_open:                         # @hp_colour_open
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp33:
	.cfi_def_cfa_offset 16
.Ltmp34:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movl	$0, 18568(%rbx)
	cmpl	$0, 100(%rbx)
	jne	.LBB4_2
# BB#1:                                 # %if.then
	movzwl	108(%rbx), %esi
	xorl	%edx, %edx
	movq	%rbx, %rdi
	callq	cdj_set_bpp
	testl	%eax, %eax
	js	.LBB4_4
.LBB4_2:                                # %if.end.7
	movq	%rbx, %rdi
	callq	gdev_prn_open
	testl	%eax, %eax
	js	.LBB4_4
# BB#3:                                 # %if.else
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	gdev_prn_open_printer
	movl	%eax, %ecx
	sarl	$31, %eax
	andl	%ecx, %eax
.LBB4_4:                                # %cleanup.18
	popq	%rbx
	retq
.Lfunc_end4:
	.size	hp_colour_open, .Lfunc_end4-hp_colour_open
	.cfi_endproc

	.align	16, 0x90
	.type	cdj970_close,@function
cdj970_close:                           # @cdj970_close
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp35:
	.cfi_def_cfa_offset 16
.Ltmp36:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movl	$1, %esi
	callq	gdev_prn_open_printer
	testl	%eax, %eax
	js	.LBB5_1
# BB#2:                                 # %if.end
	movq	17176(%rbx), %rdi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	%rbx, %rdi
	popq	%rbx
	jmp	gdev_prn_close          # TAILCALL
.LBB5_1:                                # %cleanup
	popq	%rbx
	retq
.Lfunc_end5:
	.size	cdj970_close, .Lfunc_end5-cdj970_close
	.cfi_endproc

	.align	16, 0x90
	.type	gdev_cmyk_map_color_rgb,@function
gdev_cmyk_map_color_rgb:                # @gdev_cmyk_map_color_rgb
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdx, %r8
	movzwl	108(%rdi), %eax
	cmpl	$8, %eax
	jne	.LBB6_1
# BB#3:                                 # %sw.bb.4
	cmpl	$1, 100(%rdi)
	jne	.LBB6_6
# BB#4:                                 # %if.then
	xorl	$255, %esi
	imull	$257, %esi, %eax        # imm = 0x101
	jmp	.LBB6_5
.LBB6_1:                                # %entry
	cmpl	$1, %eax
	jne	.LBB6_6
# BB#2:                                 # %sw.bb
	movl	$1, %eax
	subl	%esi, %eax
	imull	$65535, %eax, %eax      # imm = 0xFFFF
.LBB6_5:                                # %sw.epilog
	movw	%ax, 4(%r8)
	movw	%ax, 2(%r8)
	movw	%ax, (%r8)
	xorl	%eax, %eax
	retq
.LBB6_6:                                # %sw.default
	shrl	$2, %eax
	leal	(%rax,%rax,2), %ecx
	movq	%rsi, %r10
	shrq	%cl, %r10
	movl	$1, %edx
	movb	%al, %cl
	shll	%cl, %edx
	decl	%edx
	movslq	%edx, %r9
	andq	%r9, %r10
	movl	$16, %edx
	subl	%eax, %edx
	movb	%dl, %cl
	shlq	%cl, %r10
	movl	%eax, %ecx
	addl	%ecx, %ecx
	movq	%rsi, %rdi
	shrq	%cl, %rdi
	andq	%r9, %rdi
	movb	%dl, %cl
	shlq	%cl, %rdi
	movq	%rsi, %r11
	movb	%al, %cl
	shrq	%cl, %r11
	andq	%r9, %r11
	movb	%dl, %cl
	shlq	%cl, %r11
	andq	%rsi, %r9
	movb	%dl, %cl
	shlq	%cl, %r9
	movl	$65535, %ecx            # imm = 0xFFFF
	movl	$65535, %eax            # imm = 0xFFFF
	subq	%rdi, %rax
	movl	$65535, %esi            # imm = 0xFFFF
	subq	%r10, %rsi
	imulq	%rsi, %rax
	movabsq	$-9223231297218904063, %rdi # imm = 0x8000800080008001
	mulq	%rdi
	shrq	$15, %rdx
	movw	%dx, (%r8)
	movl	$65535, %eax            # imm = 0xFFFF
	subq	%r11, %rax
	imulq	%rsi, %rax
	mulq	%rdi
	shrq	$15, %rdx
	movw	%dx, 2(%r8)
	subq	%r9, %rcx
	imulq	%rsi, %rcx
	movq	%rcx, %rax
	mulq	%rdi
	shrq	$15, %rdx
	movw	%dx, 4(%r8)
	xorl	%eax, %eax
	retq
.Lfunc_end6:
	.size	gdev_cmyk_map_color_rgb, .Lfunc_end6-gdev_cmyk_map_color_rgb
	.cfi_endproc

	.align	16, 0x90
	.type	cdj970_get_params,@function
cdj970_get_params:                      # @cdj970_get_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp37:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp38:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp39:
	.cfi_def_cfa_offset 32
.Ltmp40:
	.cfi_offset %rbx, -32
.Ltmp41:
	.cfi_offset %r14, -24
.Ltmp42:
	.cfi_offset %r15, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	callq	gdev_prn_get_params
	testl	%eax, %eax
	js	.LBB7_9
# BB#1:                                 # %lor.lhs.false
	leaq	18484(%r14), %rdx
	movl	$.L.str.3, %esi
	movq	%rbx, %rdi
	callq	param_write_int
	testl	%eax, %eax
	js	.LBB7_9
# BB#2:                                 # %lor.lhs.false.3
	leaq	18492(%r14), %rdx
	movl	$.L.str.4, %esi
	movq	%rbx, %rdi
	callq	param_write_int
	testl	%eax, %eax
	js	.LBB7_9
# BB#3:                                 # %lor.lhs.false.6
	leaq	18488(%r14), %rdx
	movl	$.L.str.5, %esi
	movq	%rbx, %rdi
	callq	param_write_int
	testl	%eax, %eax
	js	.LBB7_9
# BB#4:                                 # %lor.lhs.false.9
	leaq	18520(%r14), %r15
	movl	$.L.str.6, %esi
	movq	%rbx, %rdi
	movq	%r15, %rdx
	callq	param_write_float
	testl	%eax, %eax
	js	.LBB7_9
# BB#5:                                 # %lor.lhs.false.12
	movl	$.L.str.7, %esi
	movq	%rbx, %rdi
	movq	%r15, %rdx
	callq	param_write_float
	testl	%eax, %eax
	js	.LBB7_9
# BB#6:                                 # %lor.lhs.false.16
	leaq	18524(%r14), %rdx
	movl	$.L.str.8, %esi
	movq	%rbx, %rdi
	callq	param_write_float
	testl	%eax, %eax
	js	.LBB7_9
# BB#7:                                 # %lor.lhs.false.19
	leaq	18528(%r14), %rdx
	movl	$.L.str.9, %esi
	movq	%rbx, %rdi
	callq	param_write_float
	testl	%eax, %eax
	js	.LBB7_9
# BB#8:                                 # %lor.lhs.false.22
	leaq	18532(%r14), %rdx
	movl	$.L.str.10, %esi
	movq	%rbx, %rdi
	callq	param_write_float
	testl	%eax, %eax
	js	.LBB7_9
# BB#10:                                # %lor.lhs.false.25
	addq	$18536, %r14            # imm = 0x4868
	movl	$.L.str.11, %esi
	movq	%rbx, %rdi
	movq	%r14, %rdx
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	param_write_float       # TAILCALL
.LBB7_9:                                # %cleanup
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end7:
	.size	cdj970_get_params, .Lfunc_end7-cdj970_get_params
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI8_0:
	.long	1036831949              # float 0.100000001
.LCPI8_1:
	.long	1091567616              # float 9
	.text
	.align	16, 0x90
	.type	cdj970_put_params,@function
cdj970_put_params:                      # @cdj970_put_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp43:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp44:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp45:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp46:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp47:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp48:
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
.Ltmp49:
	.cfi_def_cfa_offset 112
.Ltmp50:
	.cfi_offset %rbx, -56
.Ltmp51:
	.cfi_offset %r12, -48
.Ltmp52:
	.cfi_offset %r13, -40
.Ltmp53:
	.cfi_offset %r14, -32
.Ltmp54:
	.cfi_offset %r15, -24
.Ltmp55:
	.cfi_offset %rbp, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movl	18484(%r14), %r12d
	movl	18488(%r14), %r15d
	movl	18492(%r14), %r13d
	movl	18516(%r14), %eax
	movl	%eax, 48(%rsp)          # 4-byte Spill
	movl	18520(%r14), %eax
	movl	%eax, 44(%rsp)          # 4-byte Spill
	movl	18524(%r14), %eax
	movl	%eax, 40(%rsp)          # 4-byte Spill
	movl	18528(%r14), %eax
	movl	%eax, 36(%rsp)          # 4-byte Spill
	movl	18532(%r14), %eax
	movl	%eax, 32(%rsp)          # 4-byte Spill
	movl	18536(%r14), %eax
	movl	%eax, 28(%rsp)          # 4-byte Spill
	leaq	52(%rsp), %rdx
	movl	$.L.str.12, %esi
	movq	%rbx, %rdi
	callq	param_read_int
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jne	.LBB8_1
# BB#3:                                 # %sw.bb.1.i
	movl	52(%rsp), %ecx
	leal	-1(%rcx), %eax
	movl	$1, %ebp
	cmpl	$32, %eax
	jb	.LBB8_4
# BB#5:                                 # %if.then.i
	movq	(%rbx), %rax
	movl	$.L.str.12, %esi
	movl	$-15, %edx
	movq	%rbx, %rdi
	callq	*56(%rax)
	movl	52(%rsp), %eax
	jmp	.LBB8_6
.LBB8_1:                                # %entry
	xorl	%eax, %eax
	cmpl	$1, %ebp
	jne	.LBB8_6
# BB#2:                                 # %sw.bb.i
	movq	%rax, 16(%rsp)          # 8-byte Spill
	xorl	%ebp, %ebp
	jmp	.LBB8_7
.LBB8_6:                                # %cdj_put_param_int.exit
	movq	%rax, 16(%rsp)          # 8-byte Spill
	jmp	.LBB8_7
.LBB8_4:
	movq	%rcx, 16(%rsp)          # 8-byte Spill
.LBB8_7:                                # %cdj_put_param_int.exit
	leaq	52(%rsp), %rdx
	movl	$.L.str.3, %esi
	movq	%rbx, %rdi
	callq	param_read_int
	testl	%eax, %eax
	jne	.LBB8_8
# BB#10:                                # %sw.bb.1.i.49
	movl	52(%rsp), %r12d
	cmpl	$3, %r12d
	jb	.LBB8_12
# BB#11:                                # %if.then.i.54
	movq	(%rbx), %rax
	movl	$.L.str.3, %esi
	movl	$-15, %edx
	movq	%rbx, %rdi
	callq	*56(%rax)
	movl	52(%rsp), %r12d
.LBB8_12:                               # %if.end.i.55
	testl	%ebp, %ebp
	movl	$1, %eax
	cmovnsl	%eax, %ebp
	jmp	.LBB8_13
.LBB8_8:                                # %cdj_put_param_int.exit
	cmpl	$1, %eax
	je	.LBB8_13
# BB#9:
	movl	%eax, %ebp
.LBB8_13:                               # %cdj_put_param_int.exit57
	leaq	52(%rsp), %rdx
	movl	$.L.str.5, %esi
	movq	%rbx, %rdi
	callq	param_read_int
	testl	%eax, %eax
	jne	.LBB8_14
# BB#16:                                # %sw.bb.1.i.64
	movl	52(%rsp), %r15d
	cmpl	$5, %r15d
	jb	.LBB8_18
# BB#17:                                # %if.then.i.69
	movq	(%rbx), %rax
	movl	$.L.str.5, %esi
	movl	$-15, %edx
	movq	%rbx, %rdi
	callq	*56(%rax)
	movl	52(%rsp), %r15d
.LBB8_18:                               # %if.end.i.72
	testl	%ebp, %ebp
	movl	$1, %eax
	cmovnsl	%eax, %ebp
	jmp	.LBB8_19
.LBB8_14:                               # %cdj_put_param_int.exit57
	cmpl	$1, %eax
	je	.LBB8_19
# BB#15:
	movl	%eax, %ebp
.LBB8_19:                               # %cdj_put_param_int.exit74
	leaq	52(%rsp), %rdx
	movl	$.L.str.4, %esi
	movq	%rbx, %rdi
	callq	param_read_int
	testl	%eax, %eax
	jne	.LBB8_20
# BB#22:                                # %sw.bb.1.i.81
	movl	52(%rsp), %r13d
	cmpl	$3, %r13d
	jb	.LBB8_24
# BB#23:                                # %if.then.i.86
	movq	(%rbx), %rax
	movl	$.L.str.4, %esi
	movl	$-15, %edx
	movq	%rbx, %rdi
	callq	*56(%rax)
	movl	52(%rsp), %r13d
.LBB8_24:                               # %if.end.i.89
	testl	%ebp, %ebp
	movl	$1, %eax
	cmovnsl	%eax, %ebp
	jmp	.LBB8_25
.LBB8_20:                               # %cdj_put_param_int.exit74
	cmpl	$1, %eax
	je	.LBB8_25
# BB#21:
	movl	%eax, %ebp
.LBB8_25:                               # %cdj_put_param_int.exit91
	leaq	52(%rsp), %rdx
	movl	$.L.str.6, %esi
	movq	%rbx, %rdi
	callq	param_read_float
	testl	%eax, %eax
	jne	.LBB8_26
# BB#28:                                # %sw.bb.1.i.98
	movss	52(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI8_0(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	ja	.LBB8_31
# BB#29:                                # %sw.bb.1.i.98
	ucomiss	.LCPI8_1(%rip), %xmm0
	ja	.LBB8_31
# BB#30:                                # %sw.bb.1.if.end_crit_edge.i
	movd	%xmm0, 48(%rsp)         # 4-byte Folded Spill
	jmp	.LBB8_32
.LBB8_26:                               # %cdj_put_param_int.exit91
	cmpl	$1, %eax
	je	.LBB8_33
# BB#27:
	movl	%eax, %ebp
	jmp	.LBB8_33
.LBB8_31:                               # %if.then.i.103
	movq	(%rbx), %rax
	movl	$.L.str.6, %esi
	movl	$-15, %edx
	movq	%rbx, %rdi
	callq	*56(%rax)
	movl	52(%rsp), %eax
	movl	%eax, 48(%rsp)          # 4-byte Spill
.LBB8_32:                               # %if.end.i.106
	testl	%ebp, %ebp
	movl	$1, %eax
	cmovnsl	%eax, %ebp
.LBB8_33:                               # %cdj_put_param_float.exit
	leaq	52(%rsp), %rdx
	movl	$.L.str.7, %esi
	movq	%rbx, %rdi
	callq	param_read_float
	testl	%eax, %eax
	jne	.LBB8_34
# BB#36:                                # %sw.bb.1.i.114
	movss	52(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	ucomiss	%xmm0, %xmm1
	ja	.LBB8_39
# BB#37:                                # %sw.bb.1.i.114
	ucomiss	.LCPI8_1(%rip), %xmm0
	ja	.LBB8_39
# BB#38:                                # %sw.bb.1.if.end_crit_edge.i.115
	movd	%xmm0, 44(%rsp)         # 4-byte Folded Spill
	jmp	.LBB8_40
.LBB8_34:                               # %cdj_put_param_float.exit
	cmpl	$1, %eax
	je	.LBB8_41
# BB#35:
	movl	%eax, %ebp
	jmp	.LBB8_41
.LBB8_39:                               # %if.then.i.121
	movq	(%rbx), %rax
	movl	$.L.str.7, %esi
	movl	$-15, %edx
	movq	%rbx, %rdi
	callq	*56(%rax)
	movl	52(%rsp), %eax
	movl	%eax, 44(%rsp)          # 4-byte Spill
.LBB8_40:                               # %if.end.i.124
	testl	%ebp, %ebp
	movl	$1, %eax
	cmovnsl	%eax, %ebp
.LBB8_41:                               # %cdj_put_param_float.exit126
	leaq	52(%rsp), %rdx
	movl	$.L.str.8, %esi
	movq	%rbx, %rdi
	callq	param_read_float
	testl	%eax, %eax
	jne	.LBB8_42
# BB#44:                                # %sw.bb.1.i.133
	movss	52(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	ucomiss	%xmm0, %xmm1
	ja	.LBB8_47
# BB#45:                                # %sw.bb.1.i.133
	ucomiss	.LCPI8_1(%rip), %xmm0
	ja	.LBB8_47
# BB#46:                                # %sw.bb.1.if.end_crit_edge.i.134
	movd	%xmm0, 40(%rsp)         # 4-byte Folded Spill
	jmp	.LBB8_48
.LBB8_42:                               # %cdj_put_param_float.exit126
	cmpl	$1, %eax
	je	.LBB8_49
# BB#43:
	movl	%eax, %ebp
	jmp	.LBB8_49
.LBB8_47:                               # %if.then.i.140
	movq	(%rbx), %rax
	movl	$.L.str.8, %esi
	movl	$-15, %edx
	movq	%rbx, %rdi
	callq	*56(%rax)
	movl	52(%rsp), %eax
	movl	%eax, 40(%rsp)          # 4-byte Spill
.LBB8_48:                               # %if.end.i.143
	testl	%ebp, %ebp
	movl	$1, %eax
	cmovnsl	%eax, %ebp
.LBB8_49:                               # %cdj_put_param_float.exit145
	leaq	52(%rsp), %rdx
	movl	$.L.str.9, %esi
	movq	%rbx, %rdi
	callq	param_read_float
	testl	%eax, %eax
	jne	.LBB8_50
# BB#52:                                # %sw.bb.1.i.152
	movss	52(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	ucomiss	%xmm0, %xmm1
	ja	.LBB8_55
# BB#53:                                # %sw.bb.1.i.152
	ucomiss	.LCPI8_1(%rip), %xmm0
	ja	.LBB8_55
# BB#54:                                # %sw.bb.1.if.end_crit_edge.i.153
	movd	%xmm0, 36(%rsp)         # 4-byte Folded Spill
	jmp	.LBB8_56
.LBB8_50:                               # %cdj_put_param_float.exit145
	cmpl	$1, %eax
	je	.LBB8_57
# BB#51:
	movl	%eax, %ebp
	jmp	.LBB8_57
.LBB8_55:                               # %if.then.i.159
	movq	(%rbx), %rax
	movl	$.L.str.9, %esi
	movl	$-15, %edx
	movq	%rbx, %rdi
	callq	*56(%rax)
	movl	52(%rsp), %eax
	movl	%eax, 36(%rsp)          # 4-byte Spill
.LBB8_56:                               # %if.end.i.162
	testl	%ebp, %ebp
	movl	$1, %eax
	cmovnsl	%eax, %ebp
.LBB8_57:                               # %cdj_put_param_float.exit164
	leaq	52(%rsp), %rdx
	movl	$.L.str.10, %esi
	movq	%rbx, %rdi
	callq	param_read_float
	testl	%eax, %eax
	jne	.LBB8_58
# BB#60:                                # %sw.bb.1.i.171
	movss	52(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	ucomiss	%xmm0, %xmm1
	ja	.LBB8_63
# BB#61:                                # %sw.bb.1.i.171
	ucomiss	.LCPI8_1(%rip), %xmm0
	ja	.LBB8_63
# BB#62:                                # %sw.bb.1.if.end_crit_edge.i.172
	movd	%xmm0, 32(%rsp)         # 4-byte Folded Spill
	jmp	.LBB8_64
.LBB8_58:                               # %cdj_put_param_float.exit164
	cmpl	$1, %eax
	je	.LBB8_65
# BB#59:
	movl	%eax, %ebp
	jmp	.LBB8_65
.LBB8_63:                               # %if.then.i.178
	movq	(%rbx), %rax
	movl	$.L.str.10, %esi
	movl	$-15, %edx
	movq	%rbx, %rdi
	callq	*56(%rax)
	movl	52(%rsp), %eax
	movl	%eax, 32(%rsp)          # 4-byte Spill
.LBB8_64:                               # %if.end.i.181
	testl	%ebp, %ebp
	movl	$1, %eax
	cmovnsl	%eax, %ebp
.LBB8_65:                               # %cdj_put_param_float.exit183
	leaq	52(%rsp), %rdx
	movl	$.L.str.11, %esi
	movq	%rbx, %rdi
	callq	param_read_float
	testl	%eax, %eax
	jne	.LBB8_66
# BB#69:                                # %sw.bb.1.i.190
	movss	52(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	ucomiss	%xmm0, %xmm1
	ja	.LBB8_72
# BB#70:                                # %sw.bb.1.i.190
	ucomiss	.LCPI8_1(%rip), %xmm0
	ja	.LBB8_72
# BB#71:                                # %sw.bb.1.if.end_crit_edge.i.191
	movd	%xmm0, 28(%rsp)         # 4-byte Folded Spill
	jmp	.LBB8_73
.LBB8_66:                               # %cdj_put_param_float.exit183
	cmpl	$1, %eax
	jne	.LBB8_68
# BB#67:                                # %sw.bb.i.186
	movl	%ebp, %eax
.LBB8_68:                               # %cdj_put_param_float.exit202
	testl	%eax, %eax
	movl	%eax, %ebp
	jns	.LBB8_74
	jmp	.LBB8_90
.LBB8_72:                               # %if.then.i.197
	movq	(%rbx), %rax
	movl	$.L.str.11, %esi
	movl	$-15, %edx
	movq	%rbx, %rdi
	callq	*56(%rax)
	movl	52(%rsp), %eax
	movl	%eax, 28(%rsp)          # 4-byte Spill
.LBB8_73:                               # %if.end.i.200
	testl	%ebp, %ebp
	js	.LBB8_90
.LBB8_74:                               # %if.end
	movq	16(%rsp), %rbp          # 8-byte Reload
	testl	%ebp, %ebp
	je	.LBB8_75
# BB#76:                                # %if.else.i
	movl	%r13d, 8(%rsp)          # 4-byte Spill
	movl	%r15d, 12(%rsp)         # 4-byte Spill
	movl	%r12d, 4(%rsp)          # 4-byte Spill
	movl	100(%r14), %r13d
	movw	108(%r14), %ax
	movzwl	%ax, %r12d
	cmpl	$3, %r13d
	jne	.LBB8_81
# BB#77:                                # %if.else.i
	movzwl	%ax, %eax
	cmpl	$8, %eax
	jne	.LBB8_81
# BB#78:                                # %land.lhs.true.7.i
	movl	$3, %eax
	cmpl	$0, 18472(%r14)
	je	.LBB8_80
# BB#79:                                # %select.mid
	movl	%r12d, %eax
.LBB8_80:                               # %select.end
	movl	%eax, %r12d
.LBB8_81:                               # %if.end.i.208
	xorl	%edx, %edx
	movq	%r14, %rdi
	movl	%ebp, %esi
	callq	cdj_set_bpp
	movq	%rbp, %r15
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB8_82
# BB#83:                                # %if.end.17.i
	movw	%r15w, 108(%r14)
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	gdev_prn_put_params
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB8_84
# BB#85:                                # %if.end.27.i
	xorl	%edx, %edx
	movq	%r14, %rdi
	movl	%r15d, %esi
	callq	cdj_set_bpp
	movzwl	108(%r14), %eax
	cmpl	%r12d, %eax
	movl	4(%rsp), %r12d          # 4-byte Reload
	movl	12(%rsp), %r15d         # 4-byte Reload
	movl	8(%rsp), %r13d          # 4-byte Reload
	je	.LBB8_89
# BB#86:                                # %land.lhs.true.40.i
	cmpl	$0, 84(%r14)
	je	.LBB8_89
# BB#87:                                # %if.then.42.i
	movq	%r14, %rdi
	callq	gs_closedevice
	jmp	.LBB8_88
.LBB8_75:                               # %if.then.i.205
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	gdev_prn_put_params
.LBB8_88:                               # %cdj_put_param_bpp.exit
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB8_90
.LBB8_89:                               # %if.end.22
	movl	%r12d, 18484(%r14)
	movl	%r15d, 18488(%r14)
	movl	%r13d, 18492(%r14)
	movl	48(%rsp), %eax          # 4-byte Reload
	movl	%eax, 18516(%r14)
	movl	44(%rsp), %eax          # 4-byte Reload
	movl	%eax, 18520(%r14)
	movl	40(%rsp), %eax          # 4-byte Reload
	movl	%eax, 18524(%r14)
	movl	36(%rsp), %eax          # 4-byte Reload
	movl	%eax, 18528(%r14)
	movl	32(%rsp), %eax          # 4-byte Reload
	movl	%eax, 18532(%r14)
	movl	28(%rsp), %eax          # 4-byte Reload
	movl	%eax, 18536(%r14)
	xorl	%ebp, %ebp
	jmp	.LBB8_90
.LBB8_82:                               # %if.then.12.i
	movq	(%rbx), %rax
	movl	$.L.str.12, %esi
	movq	%rbx, %rdi
	movl	%ebp, %edx
	callq	*56(%rax)
	movq	(%rbx), %rax
	movl	$.L.str.13, %esi
	movq	%rbx, %rdi
	movl	%ebp, %edx
	callq	*56(%rax)
	jmp	.LBB8_90
.LBB8_84:                               # %if.then.24.i
	movq	%r14, %rdi
	movl	%r12d, %esi
	movl	%r13d, %edx
	callq	cdj_set_bpp
.LBB8_90:                               # %cleanup
	movl	%ebp, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	cdj970_put_params, .Lfunc_end8-cdj970_put_params
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI9_0:
	.quad	4599075939470750515     # double 0.29999999999999999
.LCPI9_1:
	.quad	4603489467105573601     # double 0.58999999999999997
.LCPI9_2:
	.quad	4592590756007337001     # double 0.11
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI9_3:
	.long	1199570688              # float 65535
.LCPI9_4:
	.long	1593835520              # float 9.22337203E+18
	.text
	.align	16, 0x90
	.type	gdev_cmyk_map_cmyk_color,@function
gdev_cmyk_map_cmyk_color:               # @gdev_cmyk_map_cmyk_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp56:
	.cfi_def_cfa_offset 16
.Ltmp57:
	.cfi_offset %rbx, -16
	movzwl	(%rsi), %r10d
	movzwl	2(%rsi), %r9d
	movzwl	4(%rsi), %r8d
	movzwl	6(%rsi), %eax
	movzwl	108(%rdi), %r11d
	cmpl	$1, %r11d
	jne	.LBB9_2
# BB#1:                                 # %sw.bb
	orl	%r10d, %r9d
	orl	%r9d, %r8d
	orl	%r8d, %eax
	andl	$32768, %eax            # imm = 0x8000
	shrl	$15, %eax
	popq	%rbx
	retq
.LBB9_2:                                # %sw.default
	movzwl	%r9w, %esi
	movzwl	%r10w, %ecx
	cmpl	%esi, %ecx
	jne	.LBB9_5
# BB#3:                                 # %sw.default
	movzwl	%r8w, %edi
	cmpl	%edi, %esi
	jne	.LBB9_5
# BB#4:                                 # %if.then
	cvtsi2ssl	%ecx, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI9_0(%rip), %xmm1   # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	.LCPI9_1(%rip), %xmm2   # xmm2 = mem[0],zero
	mulsd	%xmm0, %xmm2
	addsd	%xmm1, %xmm2
	mulsd	.LCPI9_2(%rip), %xmm0
	addsd	%xmm2, %xmm0
	movzwl	%ax, %eax
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%eax, %xmm1
	cvtss2sd	%xmm1, %xmm1
	addsd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm0
	movss	.LCPI9_3(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	minss	%xmm0, %xmm1
	movss	.LCPI9_4(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	movaps	%xmm1, %xmm2
	subss	%xmm0, %xmm2
	cvttss2si	%xmm2, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rax, %rcx
	cvttss2si	%xmm1, %rax
	ucomiss	%xmm0, %xmm1
	cmovaeq	%rcx, %rax
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	xorl	%r10d, %r10d
.LBB9_5:                                # %if.end
	movzwl	%ax, %ebx
	shrl	$2, %r11d
	movl	$16, %eax
	subl	%r11d, %eax
	movb	%al, %cl
	shrl	%cl, %ebx
	leal	(%r11,%r11,2), %ecx
	shll	%cl, %ebx
	movzwl	%r10w, %edi
	movb	%al, %cl
	shrl	%cl, %edi
	leal	(%r11,%r11), %ecx
	shll	%cl, %edi
	movzwl	%r9w, %edx
	movb	%al, %cl
	shrl	%cl, %edx
	movb	%r11b, %cl
	shll	%cl, %edx
	movzwl	%r8w, %esi
	movb	%al, %cl
	shrl	%cl, %esi
	orl	%edx, %esi
	orl	%ebx, %esi
	orl	%edi, %esi
	movslq	%esi, %rax
	popq	%rbx
	retq
.Lfunc_end9:
	.size	gdev_cmyk_map_cmyk_color, .Lfunc_end9-gdev_cmyk_map_cmyk_color
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI10_0:
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	5                       # 0x5
	.long	5                       # 0x5
	.text
	.align	16, 0x90
	.type	cdj_set_bpp,@function
cdj_set_bpp:                            # @cdj_set_bpp
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp58:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp59:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp60:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp61:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp62:
	.cfi_def_cfa_offset 48
.Ltmp63:
	.cfi_offset %rbx, -40
.Ltmp64:
	.cfi_offset %r14, -32
.Ltmp65:
	.cfi_offset %r15, -24
.Ltmp66:
	.cfi_offset %rbp, -16
	movl	%edx, %r14d
	movl	%esi, %ebp
	movq	%rdi, %rbx
	testl	%ebp, %ebp
	jne	.LBB10_10
# BB#1:                                 # %entry
	testl	%r14d, %r14d
	je	.LBB10_10
# BB#2:                                 # %if.then
	cmpl	$0, 18472(%rbx)
	je	.LBB10_11
# BB#3:                                 # %if.then.2
	movl	$1, %ebp
	cmpl	$1, %r14d
	je	.LBB10_12
# BB#4:                                 # %if.then.2
	cmpl	$4, %r14d
	jne	.LBB10_5
# BB#7:                                 # %sw.bb.4
	movzwl	108(%rbx), %eax
	cmpl	$32, %eax
	ja	.LBB10_9
# BB#8:                                 # %sw.bb.4
	movabsq	$4311810304, %rcx       # imm = 0x101010100
	btq	%rax, %rcx
	jb	.LBB10_11
.LBB10_9:                               # %sw.default.6
	movl	18476(%rbx), %ebp
.LBB10_10:                              # %if.end.8
	testl	%ebp, %ebp
	jne	.LBB10_12
.LBB10_11:                              # %if.then.11
	movzwl	108(%rbx), %ebp
.LBB10_12:                              # %if.end.14
	cmpl	$0, 18472(%rbx)
	jns	.LBB10_15
# BB#13:                                # %if.then.18
	movq	$gdev_cmyk_map_cmyk_color, 1264(%rbx)
	movq	$0, 1184(%rbx)
	movq	$gdev_cmyk_map_color_rgb, 1192(%rbx)
	cmpl	$0, 84(%rbx)
	je	.LBB10_15
# BB#14:                                # %if.then.22
	movq	%rbx, %rdi
	callq	gs_closedevice
.LBB10_15:                              # %if.end.24
	movl	$-15, %r15d
	cmpl	$15, %ebp
	jg	.LBB10_27
# BB#16:                                # %if.end.24
	cmpl	$1, %ebp
	je	.LBB10_36
# BB#17:                                # %if.end.24
	cmpl	$3, %ebp
	jne	.LBB10_18
# BB#42:                                # %sw.bb.101
	movl	$3, %ebp
	cmpl	$0, 18472(%rbx)
	jne	.LBB10_61
	jmp	.LBB10_43
.LBB10_27:                              # %if.end.24
	cmpl	$32, %ebp
	je	.LBB10_30
# BB#28:                                # %if.end.24
	cmpl	$24, %ebp
	jne	.LBB10_29
# BB#32:                                # %sw.bb.35
	movl	18472(%rbx), %eax
	testl	$-5, %r14d
	movl	$24, %ebp
	je	.LBB10_41
# BB#33:                                # %sw.bb.35
	testl	%eax, %eax
	je	.LBB10_41
# BB#34:                                # %if.else
	cmpl	$1, %r14d
	je	.LBB10_61
# BB#35:                                # %sw.epilog.107.thread119
	movl	$-1, 18472(%rbx)
	movl	$24, %ebp
	jmp	.LBB10_25
.LBB10_36:                              # %sw.bb.77
	cmpl	$1, %r14d
	jne	.LBB10_61
# BB#37:                                # %if.end.81
	movl	18472(%rbx), %eax
	movl	$1, %ebp
	testl	%eax, %eax
	jne	.LBB10_38
	jmp	.LBB10_51
.LBB10_18:                              # %if.end.24
	cmpl	$8, %ebp
	jne	.LBB10_61
# BB#19:                                # %sw.bb.51
	movl	18472(%rbx), %eax
	movl	$8, %ebp
	testl	%eax, %eax
	je	.LBB10_43
# BB#20:                                # %if.then.54
	movl	$8, %ebp
	testl	%r14d, %r14d
	je	.LBB10_41
# BB#21:                                # %if.then.56
	movl	$8, %ebp
	cmpl	$1, %r14d
	je	.LBB10_38
# BB#22:                                # %if.then.56
	cmpl	$4, %r14d
	je	.LBB10_41
# BB#23:                                # %if.then.56
	cmpl	$3, %r14d
	jne	.LBB10_61
# BB#24:                                # %sw.epilog.107.thread
	movl	$-1, 18472(%rbx)
	movl	$3, %ebp
	jmp	.LBB10_25
.LBB10_29:                              # %if.end.24
	cmpl	$16, %ebp
	jne	.LBB10_61
.LBB10_30:                              # %sw.bb.25
	movl	18472(%rbx), %eax
	testl	%eax, %eax
	je	.LBB10_41
# BB#31:                                # %switch.early.test
	movl	%r14d, %ecx
	orl	$4, %ecx
	cmpl	$4, %ecx
	je	.LBB10_41
	jmp	.LBB10_61
.LBB10_5:                               # %if.then.2
	movl	$-15, %r15d
	cmpl	$3, %r14d
	jne	.LBB10_61
# BB#6:                                 # %sw.bb.3
	movl	$24, %ebp
	jmp	.LBB10_12
.LBB10_38:                              # %land.lhs.true.84
	movzwl	108(%rbx), %ecx
	cmpl	%ecx, %ebp
	je	.LBB10_41
# BB#39:                                # %if.then.90
	movq	$0, 1264(%rbx)
	movq	$gdev_cmyk_map_rgb_color, 1184(%rbx)
	cmpl	$0, 84(%rbx)
	je	.LBB10_41
# BB#40:                                # %if.then.97
	movq	%rbx, %rdi
	callq	gs_closedevice
	movl	18472(%rbx), %eax
.LBB10_41:                              # %sw.epilog.107
	cmpl	$-1, %eax
	jne	.LBB10_43
.LBB10_25:                              # %if.then.111
	movq	$0, 1264(%rbx)
	movq	$gdev_pcl_map_rgb_color, 1184(%rbx)
	movq	$gdev_pcl_map_color_rgb, 1192(%rbx)
	cmpl	$0, 84(%rbx)
	je	.LBB10_43
# BB#26:                                # %if.then.120
	movq	%rbx, %rdi
	callq	gs_closedevice
.LBB10_43:                              # %if.end.123
	movl	%r14d, %eax
	cmpl	$4, %r14d
	ja	.LBB10_61
# BB#44:                                # %if.end.123
	jmpq	*.LJTI10_0(,%rax,8)
.LBB10_45:                              # %sw.bb.124
	cmpl	$1, %ebp
	je	.LBB10_51
# BB#46:                                # %sw.bb.124
	cmpl	$8, %ebp
	je	.LBB10_51
	jmp	.LBB10_61
.LBB10_47:                              # %sw.bb.132
	cmpl	$8, %ebp
	jl	.LBB10_49
# BB#48:                                # %sw.bb.132
	movl	18472(%rbx), %eax
	testl	%eax, %eax
	jne	.LBB10_52
.LBB10_49:                              # %sw.bb.141
	movl	%ebp, %eax
	cmpl	$32, %ebp
	ja	.LBB10_61
# BB#50:                                # %sw.bb.141
	movabsq	$4311810314, %rcx       # imm = 0x10101010A
	btq	%rax, %rcx
	jae	.LBB10_61
.LBB10_51:                              # %sw.epilog.162thread-pre-split
	movl	18472(%rbx), %eax
.LBB10_52:                              # %sw.epilog.162
	testl	%eax, %eax
	je	.LBB10_59
# BB#53:                                # %if.then.165
	cmpl	$7, %ebp
	setg	%cl
	testl	%eax, %eax
	movzbl	%cl, %eax
	leal	1(%rax,%rax,2), %ecx
	leal	1(%rax,%rax), %edx
	cmovgl	%ecx, %edx
	testl	%r14d, %r14d
	cmovnel	%r14d, %edx
	movl	%edx, 100(%rbx)
	movl	$1, %esi
	cmpl	$1, %ebp
	movl	$1, %eax
	je	.LBB10_55
# BB#54:                                # %land.lhs.true.187
	cmpl	$1, %edx
	movl	$8, %eax
	cmovnel	%ebp, %eax
	cmpl	$8, %ebp
	cmovgel	%ebp, %eax
.LBB10_55:                              # %if.end.198
	movl	%eax, %ecx
	shrl	$2, %ecx
	movl	$1, %edi
	shll	%cl, %edi
	decl	%edi
	movl	%edi, 116(%rbx)
	cmpl	$7, %eax
	movl	$255, %ecx
	cmovlel	%esi, %ecx
	movl	%ecx, 112(%rbx)
	cmpl	$1, %edx
	jne	.LBB10_58
# BB#56:                                # %if.then.205
	cmpl	$1, %eax
	setg	%cl
	movzbl	%cl, %ecx
	addl	%ecx, %ecx
	cmpl	$7, %eax
	jmp	.LBB10_57
.LBB10_59:                              # %if.else.234
	cmpl	$8, %ebp
	setne	%al
	cmpl	$7, %ebp
	setg	%cl
	cmpl	$1, %ebp
	movzbl	%al, %eax
	leal	1(%rax,%rax), %eax
	cmovel	%ebp, %eax
	movl	%eax, 100(%rbx)
	setg	%al
	movzbl	%al, %eax
	movzbl	%cl, %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	pslld	$31, %xmm0
	psrad	$31, %xmm0
	movl	$2, %ecx
	movd	%ecx, %xmm1
	movl	$1, %ecx
	movd	%ecx, %xmm2
	punpckldq	%xmm1, %xmm2    # xmm2 = xmm2[0],xmm1[0],xmm2[1],xmm1[1]
	movd	%eax, %xmm1
	addl	%eax, %eax
	movd	%eax, %xmm3
	punpckldq	%xmm3, %xmm1    # xmm1 = xmm1[0],xmm3[0],xmm1[1],xmm3[1]
	punpckldq	%xmm1, %xmm2    # xmm2 = xmm2[0],xmm1[0],xmm2[1],xmm1[1]
	movdqa	%xmm0, %xmm1
	pandn	%xmm2, %xmm1
	pand	.LCPI10_0(%rip), %xmm0
	por	%xmm1, %xmm0
	movdqu	%xmm0, 112(%rbx)
	movl	%ebp, %eax
	jmp	.LBB10_60
.LBB10_58:                              # %if.else.218
	cmpl	$1, %eax
	setg	%cl
	movzbl	%cl, %ecx
	addl	%ecx, %ecx
	cmpl	$8, %eax
.LBB10_57:                              # %if.end.269
	setg	%dl
	movzbl	%dl, %edx
	leal	2(%rdx,%rdx,2), %edx
	movl	%edx, 120(%rbx)
	movl	$5, %edx
	cmovlel	%ecx, %edx
	movl	%edx, 124(%rbx)
.LBB10_60:                              # %if.end.269
	leal	-2(%rax), %ecx
	cmpl	$6, %ecx
	movw	$8, %cx
	cmovaew	%ax, %cx
	movw	%cx, 108(%rbx)
	xorl	%r15d, %r15d
.LBB10_61:                              # %cleanup
	movl	%r15d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end10:
	.size	cdj_set_bpp, .Lfunc_end10-cdj_set_bpp
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI10_0:
	.quad	.LBB10_51
	.quad	.LBB10_45
	.quad	.LBB10_61
	.quad	.LBB10_49
	.quad	.LBB10_47

	.text
	.align	16, 0x90
	.type	gdev_cmyk_map_rgb_color,@function
gdev_cmyk_map_rgb_color:                # @gdev_cmyk_map_rgb_color
	.cfi_startproc
# BB#0:                                 # %entry
	movzwl	(%rsi), %r8d
	movzwl	2(%rsi), %edx
	movzwl	4(%rsi), %ecx
	movl	%edx, %eax
	andl	%r8d, %eax
	andl	%ecx, %eax
	imull	$65281, %eax, %esi      # imm = 0xFF01
	addl	$8388608, %esi          # imm = 0x800000
	xorl	%eax, %eax
	cmpl	$-16777217, %esi        # imm = 0xFFFFFFFFFEFFFFFF
	ja	.LBB11_5
# BB#1:                                 # %if.else
	notl	%r8d
	notl	%edx
	notl	%ecx
	movzwl	108(%rdi), %esi
	xorl	%eax, %eax
	cmpl	$8, %esi
	jne	.LBB11_2
# BB#4:                                 # %sw.bb.24
	movzwl	%r8w, %eax
	imulq	$300, %rax, %rax        # imm = 0x12C
	movzwl	%dx, %edx
	imulq	$590, %rdx, %rdx        # imm = 0x24E
	addq	%rax, %rdx
	movzwl	%cx, %eax
	imulq	$110, %rax, %rax
	addq	%rdx, %rax
	shrq	$18, %rax
	jmp	.LBB11_5
.LBB11_2:                               # %if.else
	cmpl	$1, %esi
	jne	.LBB11_5
# BB#3:                                 # %sw.bb
	orl	%r8d, %edx
	orl	%edx, %ecx
	andl	$32768, %ecx            # imm = 0x8000
	shrl	$15, %ecx
	movq	%rcx, %rax
	retq
.LBB11_5:                               # %cleanup
	retq
.Lfunc_end11:
	.size	gdev_cmyk_map_rgb_color, .Lfunc_end11-gdev_cmyk_map_rgb_color
	.cfi_endproc

	.align	16, 0x90
	.type	gdev_pcl_map_rgb_color,@function
gdev_pcl_map_rgb_color:                 # @gdev_pcl_map_rgb_color
	.cfi_startproc
# BB#0:                                 # %entry
	movzwl	(%rsi), %edx
	movzwl	2(%rsi), %ecx
	movzwl	4(%rsi), %r11d
	movl	%ecx, %eax
	andl	%edx, %eax
	andl	%r11d, %eax
	imull	$65281, %eax, %esi      # imm = 0xFF01
	addl	$8388608, %esi          # imm = 0x800000
	xorl	%eax, %eax
	cmpl	$-16777217, %esi        # imm = 0xFFFFFFFFFEFFFFFF
	ja	.LBB12_18
# BB#1:                                 # %if.else
	movl	%edx, %r10d
	notl	%r10d
	movl	%ecx, %r8d
	notl	%r8d
	movl	%r11d, %r9d
	notl	%r9d
	movzwl	108(%rdi), %esi
	xorl	%eax, %eax
	cmpl	$15, %esi
	jle	.LBB12_2
# BB#6:                                 # %if.else
	cmpl	$16, %esi
	je	.LBB12_14
# BB#7:                                 # %if.else
	cmpl	$24, %esi
	jne	.LBB12_8
# BB#15:                                # %sw.bb.61
	movzwl	%r9w, %eax
	imull	$65281, %eax, %eax      # imm = 0xFF01
	addl	$8388608, %eax          # imm = 0x800000
	shrl	$24, %eax
	movzwl	%r8w, %ecx
	imull	$65281, %ecx, %ecx      # imm = 0xFF01
	addl	$8388608, %ecx          # imm = 0x800000
	shrl	$16, %ecx
	andl	$65280, %ecx            # imm = 0xFF00
	orl	%eax, %ecx
	movzwl	%r10w, %eax
	imull	$65281, %eax, %eax      # imm = 0xFF01
	addl	$8388608, %eax          # imm = 0x800000
	shrl	$8, %eax
	andl	$16711680, %eax         # imm = 0xFF0000
	jmp	.LBB12_17
.LBB12_2:                               # %if.else
	cmpl	$1, %esi
	jne	.LBB12_3
# BB#12:                                # %sw.bb
	orl	%r10d, %r8d
	orl	%r8d, %r9d
	andl	$32768, %r9d            # imm = 0x8000
	shrl	$15, %r9d
	movq	%r9, %rax
	retq
.LBB12_14:                              # %sw.bb.49
	movzwl	%r9w, %eax
	shrl	$11, %eax
	shrl	$5, %r8d
	andl	$2016, %r8d             # imm = 0x7E0
	andl	$63488, %r10d           # imm = 0xF800
	orl	%r8d, %r10d
	orl	%eax, %r10d
	movq	%r10, %rax
	retq
.LBB12_8:                               # %if.else
	cmpl	$32, %esi
	jne	.LBB12_18
# BB#9:                                 # %sw.bb.85
	movzwl	%r10w, %eax
	movzwl	%dx, %edx
	movzwl	%cx, %ecx
	cmpl	%edx, %ecx
	jne	.LBB12_16
# BB#10:                                # %sw.bb.85
	movzwl	%r11w, %ecx
	cmpl	%edx, %ecx
	jne	.LBB12_16
# BB#11:                                # %cond.true
	imull	$65281, %eax, %eax      # imm = 0xFF01
	addl	$8388608, %eax          # imm = 0x800000
	andl	$-16777216, %eax        # imm = 0xFFFFFFFFFF000000
	retq
.LBB12_3:                               # %if.else
	cmpl	$8, %esi
	jne	.LBB12_18
# BB#4:                                 # %sw.bb.24
	cmpl	$3, 100(%rdi)
	jl	.LBB12_13
# BB#5:                                 # %if.then.28
	movzwl	%r10w, %eax
	shrl	$15, %eax
	shrl	$14, %r8d
	andl	$2, %r8d
	orl	%eax, %r8d
	shrl	$13, %r9d
	andl	$4, %r9d
	orl	%r8d, %r9d
	movq	%r9, %rax
	retq
.LBB12_16:                              # %cond.false
	movzwl	%r8w, %ecx
	movzwl	%r9w, %edx
	imull	$65281, %edx, %edx      # imm = 0xFF01
	addl	$8388608, %edx          # imm = 0x800000
	shrl	$24, %edx
	imull	$65281, %ecx, %ecx      # imm = 0xFF01
	addl	$8388608, %ecx          # imm = 0x800000
	shrl	$16, %ecx
	andl	$65280, %ecx            # imm = 0xFF00
	orl	%edx, %ecx
	imull	$65281, %eax, %eax      # imm = 0xFF01
	addl	$8388608, %eax          # imm = 0x800000
	shrl	$24, %eax
	shlq	$16, %rax
.LBB12_17:                              # %cleanup
	orq	%rcx, %rax
.LBB12_18:                              # %cleanup
	retq
.LBB12_13:                              # %if.else.39
	movzwl	%r10w, %eax
	imulq	$306, %rax, %rax        # imm = 0x132
	movzwl	%r8w, %ecx
	imulq	$601, %rcx, %rcx        # imm = 0x259
	addq	%rax, %rcx
	movzwl	%r9w, %eax
	imulq	$117, %rax, %rax
	addq	%rcx, %rax
	shrq	$18, %rax
	retq
.Lfunc_end12:
	.size	gdev_pcl_map_rgb_color, .Lfunc_end12-gdev_pcl_map_rgb_color
	.cfi_endproc

	.align	16, 0x90
	.type	gdev_pcl_map_color_rgb,@function
gdev_pcl_map_color_rgb:                 # @gdev_pcl_map_color_rgb
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, %rax
	movzwl	108(%rdi), %ecx
	cmpl	$15, %ecx
	jle	.LBB13_1
# BB#5:                                 # %entry
	cmpl	$16, %ecx
	je	.LBB13_11
# BB#6:                                 # %entry
	cmpl	$24, %ecx
	jne	.LBB13_7
# BB#12:                                # %sw.bb.93
	notl	%eax
	movw	$0, (%rdx)
	movzbl	%ah, %ecx  # NOREX
	imull	$257, %ecx, %ecx        # imm = 0x101
	movw	%cx, 2(%rdx)
	movzbl	%al, %eax
	imull	$257, %eax, %eax        # imm = 0x101
	jmp	.LBB13_13
.LBB13_1:                               # %entry
	cmpl	$1, %ecx
	jne	.LBB13_2
# BB#9:                                 # %sw.bb
	xorl	$-2, %eax
	incl	%eax
	movw	%ax, 4(%rdx)
	movw	%ax, 2(%rdx)
	movw	%ax, (%rdx)
	xorl	%eax, %eax
	retq
.LBB13_11:                              # %sw.bb.37
	notl	%eax
	movzwl	%ax, %ecx
	movl	%ecx, %esi
	shrl	$11, %esi
	imull	$2114, %esi, %esi       # imm = 0x842
	movl	%ecx, %edi
	shrl	$15, %edi
	orl	%esi, %edi
	movw	%di, (%rdx)
	shrl	$6, %ecx
	andl	$63, %ecx
	imull	$1040, %ecx, %esi       # imm = 0x410
	shrl	$2, %ecx
	orl	%esi, %ecx
	movw	%cx, 2(%rdx)
	andl	$31, %eax
	imull	$2114, %eax, %ecx       # imm = 0x842
	shrl	$4, %eax
	orl	%ecx, %eax
	movw	%ax, 4(%rdx)
	xorl	%eax, %eax
	retq
.LBB13_7:                               # %entry
	cmpl	$32, %ecx
	jne	.LBB13_14
# BB#8:                                 # %sw.bb.128
	movq	%rax, %rcx
	shrq	$24, %rcx
	imull	$-257, %ecx, %ecx       # imm = 0xFFFFFFFFFFFFFEFF
	movl	%eax, %esi
	shrl	$16, %esi
	movzbl	%sil, %esi
	imull	$-257, %esi, %esi       # imm = 0xFFFFFFFFFFFFFEFF
	leal	65535(%rcx,%rsi), %esi
	movw	%si, (%rdx)
	movzbl	%ah, %esi  # NOREX
	imull	$-257, %esi, %esi       # imm = 0xFFFFFFFFFFFFFEFF
	leal	65535(%rcx,%rsi), %esi
	movw	%si, 2(%rdx)
	movzbl	%al, %eax
	imull	$-257, %eax, %eax       # imm = 0xFFFFFFFFFFFFFEFF
	leal	65535(%rcx,%rax), %eax
	jmp	.LBB13_13
.LBB13_2:                               # %entry
	cmpl	$8, %ecx
	jne	.LBB13_14
# BB#3:                                 # %sw.bb.6
	cmpl	$3, 100(%rdi)
	jl	.LBB13_10
# BB#4:                                 # %if.then
	movzwl	%ax, %eax
	xorl	$7, %eax
	movl	%eax, %ecx
	andl	$1, %ecx
	negl	%ecx
	movw	%cx, (%rdx)
	movl	%eax, %ecx
	shrl	%ecx
	andl	$1, %ecx
	negl	%ecx
	movw	%cx, 2(%rdx)
	shrl	$2, %eax
	negl	%eax
.LBB13_13:                              # %sw.epilog
	movw	%ax, 4(%rdx)
.LBB13_14:                              # %sw.epilog
	xorl	%eax, %eax
	retq
.LBB13_10:                              # %if.else
	xorl	$255, %eax
	imull	$257, %eax, %eax        # imm = 0x101
	movw	%ax, 4(%rdx)
	movw	%ax, 2(%rdx)
	movw	%ax, (%rdx)
	xorl	%eax, %eax
	retq
.Lfunc_end13:
	.size	gdev_pcl_map_color_rgb, .Lfunc_end13-gdev_pcl_map_color_rgb
	.cfi_endproc

	.align	16, 0x90
	.type	GetScanLine,@function
GetScanLine:                            # @GetScanLine
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp67:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp68:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp69:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp70:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp71:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp72:
	.cfi_def_cfa_offset 56
	subq	$40040, %rsp            # imm = 0x9C68
.Ltmp73:
	.cfi_def_cfa_offset 40096
.Ltmp74:
	.cfi_offset %rbx, -56
.Ltmp75:
	.cfi_offset %r12, -48
.Ltmp76:
	.cfi_offset %r13, -40
.Ltmp77:
	.cfi_offset %r14, -32
.Ltmp78:
	.cfi_offset %r15, -24
.Ltmp79:
	.cfi_offset %rbp, -16
	movq	%r8, 24(%rsp)           # 8-byte Spill
	movq	%rcx, %r15
	movq	%rsi, %rbx
	movq	%rdi, %r13
	movslq	60(%r15), %rax
	movq	(%rdx,%rax,8), %rbp
	movslq	8(%r15), %rax
	leaq	(%rbp,%rax,8), %r14
	cmpl	$2, 18492(%r13)
	jne	.LBB14_3
# BB#1:                                 # %land.lhs.true
	movl	18568(%r13), %eax
	movl	%eax, %ecx
	shrl	$31, %ecx
	leal	(%rcx,%rax), %ecx
	andl	$-2, %ecx
	subl	%ecx, %eax
	cmpl	$1, %eax
	jne	.LBB14_3
# BB#2:                                 # %if.then
	movl	(%rbx), %esi
	decl	%esi
	jmp	.LBB14_4
.LBB14_3:                               # %if.else
	movl	(%rbx), %esi
	incl	%esi
.LBB14_4:                               # %if.end
	movl	%esi, (%rbx)
	movq	%rbx, 16(%rsp)          # 8-byte Spill
	movl	(%r15), %ecx
	movq	%r13, %rdi
	movq	%rbp, %rdx
	callq	gdev_prn_copy_scan_lines
	movl	18484(%r13), %ebx
	movq	%r13, %rdi
	callq	gdev_pcl_paper_size
	leaq	-480(%r14), %rax
	movq	%r14, 8(%rsp)           # 8-byte Spill
	leaq	-960(%r14), %r14
	cmpl	$-1, %ebx
	movq	$-60, %rcx
	movq	$-120, %r12
	cmoveq	%rcx, %r12
	cmoveq	%rax, %r14
	cmpl	$2, 18492(%r13)
	jne	.LBB14_11
# BB#5:                                 # %land.lhs.true.18
	movl	18568(%r13), %eax
	movl	%eax, %ecx
	shrl	$31, %ecx
	leal	(%rcx,%rax), %ecx
	andl	$-2, %ecx
	subl	%ecx, %eax
	cmpl	$1, %eax
	jne	.LBB14_11
# BB#6:                                 # %if.then.22
	leaq	32(%rsp), %rdi
	xorl	%ebx, %ebx
	xorl	%esi, %esi
	movl	$40000, %edx            # imm = 0x9C40
	callq	memset
	cmpq	%rbp, %r14
	jbe	.LBB14_10
# BB#7:
	movq	%r14, %rax
	.align	16, 0x90
.LBB14_8:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rax), %rcx
	movq	%rcx, 32(%rsp,%rbx,8)
	incq	%rbx
	addq	$-8, %rax
	cmpq	%rbp, %rax
	ja	.LBB14_8
# BB#9:                                 # %while.cond.while.end_crit_edge
	shlq	$32, %rbx
	sarq	$29, %rbx
.LBB14_10:                              # %while.end
	leaq	32(%rsp), %rsi
	movq	%rbp, %rdi
	movq	%rbx, %rdx
	callq	memcpy
.LBB14_11:                              # %if.end.30
	movl	$1, %eax
	subl	60(%r15), %eax
	movl	%eax, 60(%r15)
	movq	16(%rsp), %rax          # 8-byte Reload
	movl	(%rax), %eax
	andl	$1, %eax
	movl	%eax, 68(%r15)
	movq	24(%rsp), %rax          # 8-byte Reload
	movq	8(%rsp), %rcx           # 8-byte Reload
	andq	%rax, -8(%rcx,%r12,8)
	.align	16, 0x90
.LBB14_12:                              # %while.cond.37
                                        # =>This Inner Loop Header: Depth=1
	movq	%r14, %rax
	subq	%rbp, %rax
	jbe	.LBB14_14
# BB#13:                                # %land.rhs
                                        #   in Loop: Header=BB14_12 Depth=1
	cmpq	$0, -8(%r14)
	leaq	-8(%r14), %r14
	je	.LBB14_12
.LBB14_14:                              # %while.end.45
	shrq	$3, %rax
	addq	$40040, %rsp            # imm = 0x9C68
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end14:
	.size	GetScanLine, .Lfunc_end14-GetScanLine
	.cfi_endproc

	.align	16, 0x90
	.type	rescale_byte_wise1x1,@function
rescale_byte_wise1x1:                   # @rescale_byte_wise1x1
	.cfi_startproc
# BB#0:                                 # %entry
	testl	%edi, %edi
	jle	.LBB15_3
# BB#1:                                 # %for.body.lr.ph
	movslq	%edi, %r8
	xorl	%edx, %edx
	.align	16, 0x90
.LBB15_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movb	1(%rsi,%rdx), %al
	movb	%al, 1(%rcx,%rdx)
	movb	2(%rsi,%rdx), %al
	movb	%al, 2(%rcx,%rdx)
	movb	3(%rsi,%rdx), %al
	movb	%al, 3(%rcx,%rdx)
	addq	$4, %rdx
	cmpq	%r8, %rdx
	jl	.LBB15_2
.LBB15_3:                               # %for.end
	movl	%edi, %eax
	retq
.Lfunc_end15:
	.size	rescale_byte_wise1x1, .Lfunc_end15-rescale_byte_wise1x1
	.cfi_endproc

	.align	16, 0x90
	.type	rescale_byte_wise1x2,@function
rescale_byte_wise1x2:                   # @rescale_byte_wise1x2
	.cfi_startproc
# BB#0:                                 # %entry
	testl	%edi, %edi
	jle	.LBB16_3
# BB#1:                                 # %for.body.lr.ph
	movslq	%edi, %r8
	xorl	%r10d, %r10d
	.align	16, 0x90
.LBB16_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzbl	1(%rsi,%r10), %r9d
	movzbl	1(%rdx,%r10), %eax
	addl	%r9d, %eax
	shrl	%eax
	movb	%al, 1(%rcx,%r10)
	movzbl	2(%rsi,%r10), %r9d
	movzbl	2(%rdx,%r10), %eax
	addl	%r9d, %eax
	shrl	%eax
	movb	%al, 2(%rcx,%r10)
	movzbl	3(%rsi,%r10), %r9d
	movzbl	3(%rdx,%r10), %eax
	addl	%r9d, %eax
	shrl	%eax
	movb	%al, 3(%rcx,%r10)
	addq	$4, %r10
	cmpq	%r8, %r10
	jl	.LBB16_2
.LBB16_3:                               # %for.end
	movl	%edi, %eax
	retq
.Lfunc_end16:
	.size	rescale_byte_wise1x2, .Lfunc_end16-rescale_byte_wise1x2
	.cfi_endproc

	.align	16, 0x90
	.type	rescale_byte_wise2x1,@function
rescale_byte_wise2x1:                   # @rescale_byte_wise2x1
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%edi, %eax
	shrl	$31, %eax
	leal	(%rax,%rdi), %eax
	sarl	%eax
	cmpl	$2, %edi
	jl	.LBB17_3
# BB#1:                                 # %for.body.lr.ph
	movslq	%eax, %r8
	xorl	%edi, %edi
	.align	16, 0x90
.LBB17_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzbl	1(%rsi,%rdi,2), %r9d
	movzbl	5(%rsi,%rdi,2), %edx
	addl	%r9d, %edx
	shrl	%edx
	movb	%dl, 1(%rcx,%rdi)
	movzbl	2(%rsi,%rdi,2), %r9d
	movzbl	6(%rsi,%rdi,2), %edx
	addl	%r9d, %edx
	shrl	%edx
	movb	%dl, 2(%rcx,%rdi)
	movzbl	3(%rsi,%rdi,2), %r9d
	movzbl	7(%rsi,%rdi,2), %edx
	addl	%r9d, %edx
	shrl	%edx
	movb	%dl, 3(%rcx,%rdi)
	addq	$4, %rdi
	cmpq	%r8, %rdi
	jl	.LBB17_2
.LBB17_3:                               # %for.end
	retq
.Lfunc_end17:
	.size	rescale_byte_wise2x1, .Lfunc_end17-rescale_byte_wise2x1
	.cfi_endproc

	.align	16, 0x90
	.type	rescale_byte_wise2x2,@function
rescale_byte_wise2x2:                   # @rescale_byte_wise2x2
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%edi, %eax
	shrl	$31, %eax
	leal	(%rax,%rdi), %eax
	sarl	%eax
	cmpl	$2, %edi
	jl	.LBB18_3
# BB#1:                                 # %for.body.lr.ph
	movslq	%eax, %r8
	xorl	%r11d, %r11d
	.align	16, 0x90
.LBB18_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzbl	1(%rsi,%r11,2), %r9d
	movzbl	5(%rsi,%r11,2), %r10d
	addl	%r9d, %r10d
	movzbl	1(%rdx,%r11,2), %r9d
	addl	%r10d, %r9d
	movzbl	5(%rdx,%r11,2), %edi
	addl	%r9d, %edi
	shrl	$2, %edi
	movb	%dil, 1(%rcx,%r11)
	movzbl	2(%rsi,%r11,2), %r9d
	movzbl	6(%rsi,%r11,2), %edi
	addl	%r9d, %edi
	movzbl	2(%rdx,%r11,2), %r9d
	addl	%edi, %r9d
	movzbl	6(%rdx,%r11,2), %edi
	addl	%r9d, %edi
	shrl	$2, %edi
	movb	%dil, 2(%rcx,%r11)
	movzbl	3(%rsi,%r11,2), %r9d
	movzbl	7(%rsi,%r11,2), %edi
	addl	%r9d, %edi
	movzbl	3(%rdx,%r11,2), %r9d
	addl	%edi, %r9d
	movzbl	7(%rdx,%r11,2), %edi
	addl	%r9d, %edi
	shrl	$2, %edi
	movb	%dil, 3(%rcx,%r11)
	addq	$4, %r11
	cmpq	%r8, %r11
	jl	.LBB18_2
.LBB18_3:                               # %for.end
	retq
.Lfunc_end18:
	.size	rescale_byte_wise2x2, .Lfunc_end18-rescale_byte_wise2x2
	.cfi_endproc

	.type	cdj970_procs,@object    # @cdj970_procs
	.section	.rodata,"a",@progbits
	.align	8
cdj970_procs:
	.quad	hp_colour_open
	.quad	gx_default_get_initial_matrix
	.quad	gx_default_sync_output
	.quad	gdev_prn_output_page
	.quad	cdj970_close
	.quad	0
	.quad	gdev_cmyk_map_color_rgb
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_default_get_bits
	.quad	cdj970_get_params
	.quad	cdj970_put_params
	.quad	gdev_cmyk_map_cmyk_color
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.size	cdj970_procs, 584

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"cdj970"
	.size	.L.str, 7

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"DeviceCMYK"
	.size	.L.str.1, 11

	.type	gs_cdj970_device,@object # @gs_cdj970_device
	.section	.rodata,"a",@progbits
	.globl	gs_cdj970_device
	.align	8
gs_cdj970_device:
	.long	18576                   # 0x4890
	.zero	4
	.quad	cdj970_procs
	.quad	.L.str
	.quad	0
	.quad	st_device_printer
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	4                       # 0x4
	.long	4                       # 0x4
	.long	0                       # 0x0
	.short	32                      # 0x20
	.byte	3                       # 0x3
	.zero	1
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	5                       # 0x5
	.long	5                       # 0x5
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.1
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	5100                    # 0x13ec
	.long	6600                    # 0x19c8
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.zero	8
	.zero	16
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	68
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	10000000                # 0x989680
	.quad	4000000                 # 0x3d0900
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	gx_default_install
	.quad	gx_default_begin_page
	.quad	gx_default_end_page
	.zero	584
	.zero	11240
	.quad	cdj970_print_page
	.quad	gx_default_print_page_copies
	.quad	gx_default_create_buf_device
	.quad	gx_default_size_buf_device
	.quad	gx_default_setup_buf_device
	.quad	gx_default_destroy_buf_device
	.quad	gx_default_get_space_params
	.quad	gx_default_start_render_thread
	.quad	gx_default_open_render_device
	.quad	gx_default_close_render_device
	.quad	gx_default_buffer_page
	.zero	4096
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.quad	0
	.quad	0                       # 0x0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	32
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	584
	.zero	584
	.long	1                       # 0x1
	.long	32                      # 0x20
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4                       # 0x4
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	1065353216              # float 1
	.long	0                       # float 0
	.long	0                       # float 0
	.long	0                       # float 0
	.long	0                       # float 0
	.long	1065353216              # float 1
	.zero	4
	.quad	cdj970_start_raster_mode
	.quad	cdj970_print_non_blank_lines
	.quad	cdj970_terminate_page
	.long	0                       # 0x0
	.zero	4
	.size	gs_cdj970_device, 18576

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"\033E\033%%-12345X"
	.size	.L.str.2, 13

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Quality"
	.size	.L.str.3, 8

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Duplex"
	.size	.L.str.4, 7

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Papertype"
	.size	.L.str.5, 10

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"MasterGamma"
	.size	.L.str.6, 12

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"GammaValC"
	.size	.L.str.7, 10

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"GammaValM"
	.size	.L.str.8, 10

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"GammaValY"
	.size	.L.str.9, 10

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"GammaValK"
	.size	.L.str.10, 10

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"BlackCorrect"
	.size	.L.str.11, 13

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"BitsPerPixel"
	.size	.L.str.12, 13

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"ProcessColorModel"
	.size	.L.str.13, 18

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"\033*rC\f\033&l-2H"
	.size	.L.str.14, 12

	.type	gammat,@object          # @gammat
	.section	.rodata,"a",@progbits
	.align	8
gammat:
	.quad	gammat970
	.size	gammat, 8

	.type	.L.str.15,@object       # @.str.15
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.15:
	.asciz	"cdj970_print_page"
	.size	.L.str.15, 18

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"hp970_print_page"
	.size	.L.str.16, 17

	.type	cdj970_one_time_initialisation.dj_a4,@object # @cdj970_one_time_initialisation.dj_a4
	.section	.rodata,"a",@progbits
	.align	16
cdj970_one_time_initialisation.dj_a4:
	.long	1040522936              # float 1.300000e-01
	.long	1055622431              # float 4.600000e-01
	.long	1040522936              # float 1.300000e-01
	.long	1025758986              # float 4.000000e-02
	.size	cdj970_one_time_initialisation.dj_a4, 16

	.type	cdj970_one_time_initialisation.dj_letter,@object # @cdj970_one_time_initialisation.dj_letter
	.align	16
cdj970_one_time_initialisation.dj_letter:
	.long	1048576000              # float 2.500000e-01
	.long	1056964608              # float 5.000000e-01
	.long	1048576000              # float 2.500000e-01
	.long	1043005964              # float 1.670000e-01
	.size	cdj970_one_time_initialisation.dj_letter, 16

	.type	.L.str.17,@object       # @.str.17
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.17:
	.asciz	"\033E\033%%-12345X@PJL JOB NAME = \"GHOST BY RENE HARSCH\"\n@PJL ENTER LANGUAGE=PCL3GUI\n"
	.size	.L.str.17, 80

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"\033&l1H\033&l-2H"
	.size	.L.str.18, 12

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"\033&l2S\033&b16WPML"
	.size	.L.str.19, 15

	.type	gammat970,@object       # @gammat970
	.section	.rodata,"a",@progbits
	.align	4
gammat970:
	.ascii	"\000\000\000\002\002\002\003\003\003\005\005\005\007\007\006\007\007\006\007\007\007\b\b\b\b\b\b\t\t\t\t\t\n\n\n\n\n\n\013\013\f\f\f\f\f\f\r\r\016\016\016\017\017\020\020\017\020\020\021\021\021\021\021\022\022\022\023\023\024\024\024\024\024\025\025\025\026\026\027\027\027\027\027\030\030\031\031\032\032\032\032\032\033\033\033\033\034\034\035\034\034\035\035\036\036\037\037  !\"##$$%%&&''(())***+++,--..//00122334456667789::;<<=>>?AABCCDEEFHIIJKKLMOOPQRSSTVWXXYZ[\\]^_`aacdefghijlmnoprsuwxz|}\177\201\203\204\207\210\212\214\216\220\222\223\226\230\232\235\237\242\244\246\250\253\256\260\264\266\273\300\305\314\327\377"
	.ascii	"\000\000\000\001\001\001\003\003\003\004\004\004\005\005\005\006\006\006\007\007\007\007\007\007\b\b\b\t\t\n\n\t\n\n\n\013\013\013\013\013\f\f\f\r\r\r\016\016\017\017\017\020\020\020\020\020\021\021\021\021\021\022\022\023\023\023\023\023\024\024\024\025\025\026\026\026\027\027\030\030\031\031\031\032\032\033\033\034\035\035\035\035\036\036\037\036\037\037 \037\037  !!\"\"##$$%%&&''(())**++,,--../001122334556677899::;<<==>?@ABBCDDFGGHIIJLMMNOOPQRSTUVWWXYZ[[\\]^_`abcddefgijklmpqrstvwy{|}\200\201\202\205\206\207\212\213\216\220\221\224\226\230\232\235\237\242\244\250\251\252\254\257\261\263\266\271\275\301\306\314\327\377"
	.ascii	"\000\000\000\002\002\002\003\003\003\005\005\005\007\007\006\007\007\006\007\007\007\b\b\b\b\b\b\t\t\t\t\t\n\t\t\n\n\n\n\n\013\013\013\f\f\r\r\016\016\017\017\020\020\020\020\020\021\021\022\022\022\023\022\023\023\023\024\024\025\025\025\026\026\026\026\026\027\027\030\030\031\031\031\032\033\034\034\035\035\035\036\036\036\036\037\037  !! !!\"\"##$$%%&&''(())**++,,----../00112233455667789:;;<==>>?@ABCCDEEFGHIJJKLMMNOOPQRSTUVWWXYZ[[]^_`abdeffghjklmnoqrstuvwy{|~\200\202\203\206\207\211\213\214\217\221\222\224\226\230\232\234\236\240\243\246\247\251\253\255\260\262\265\270\274\300\306\314\327\377"
	.ascii	"\000\000\000\001\001\001\001\001\001\003\003\003\003\003\002\004\003\003\003\003\003\004\004\004\005\005\005\005\005\006\006\006\006\006\006\007\007\007\007\007\b\b\b\t\t\b\b\b\t\t\t\n\n\n\n\n\013\013\013\013\f\f\f\r\r\f\f\f\r\r\r\r\r\016\016\016\016\016\017\017\020\020\020\021\021\021\021\022\022\022\023\023\024\024\024\024\024\025\025\025\025\026\026\026\026\027\026\027\027\030\030\030\030\031\031\032\032\032\032\033\033\034\034\034\034\035\035\036\036\037\037\037  !!\"\"#$$$%%%&&((())*++++,--.//011244566889:;<<=>??@ABCDEFGHHIKKLMNPQRRSTUVXYZ[^_`bcdegijknopstvxy|~\177\203\205\206\212\214\215\222\224\227\232\234\240\243\246\251\256\261\266\273\302\313\327\377"
	.zero	1024
	.size	gammat970, 2048

	.type	.L.str.20,@object       # @.str.20
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.20:
	.asciz	"%dy"
	.size	.L.str.20, 4

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"vvvv"
	.size	.L.str.21, 5

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"wvvv"
	.size	.L.str.22, 5

	.type	rescale_color_plane,@object # @rescale_color_plane
	.section	.rodata,"a",@progbits
	.align	16
rescale_color_plane:
	.quad	rescale_byte_wise1x1
	.quad	rescale_byte_wise1x2
	.quad	rescale_byte_wise2x1
	.quad	rescale_byte_wise2x2
	.size	rescale_color_plane, 32

	.type	.L.str.23,@object       # @.str.23
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.23:
	.asciz	"%d%c"
	.size	.L.str.23, 5

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"0"
	.size	.L.str.24, 2

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"./contrib/gdevdj9.c"
	.size	.L.str.25, 20

	.type	.L__PRETTY_FUNCTION__.do_floyd_steinberg,@object # @__PRETTY_FUNCTION__.do_floyd_steinberg
.L__PRETTY_FUNCTION__.do_floyd_steinberg:
	.asciz	"void do_floyd_steinberg(int, int, int, int, int, struct ptr_arrays *, gx_device_printer *, struct error_val_field *)"
	.size	.L__PRETTY_FUNCTION__.do_floyd_steinberg, 117

	.type	hp970_cmyk_init,@object # @hp970_cmyk_init
	.section	.rodata,"a",@progbits
hp970_cmyk_init:
	.ascii	"\002\004\001,\001,\000\002\001,\001,\000\002\001,\001,\000\002\001,\001,\000\002"
	.size	hp970_cmyk_init, 26

	.type	.L.str.26,@object       # @.str.26
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.26:
	.asciz	"\033&l%dA"
	.size	.L.str.26, 7

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"\033*o%dM"
	.size	.L.str.27, 7

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"\033&l%dM"
	.size	.L.str.28, 7

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"\033u%dD\033&l0e0L"
	.size	.L.str.29, 13

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"\033*p%dY"
	.size	.L.str.30, 7

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"\033*g%dW"
	.size	.L.str.31, 7

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"\033&l0H"
	.size	.L.str.32, 6

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"\033*r1A"
	.size	.L.str.33, 6

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"\033*b"
	.size	.L.str.34, 4

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"%dm"
	.size	.L.str.35, 4


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
