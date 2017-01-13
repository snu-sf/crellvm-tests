	.text
	.file	"gdevjpeg.bc"
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI0_0:
	.long	1120403456              # float 100
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_1:
	.quad	4636737291354636288     # double 100
.LCPI0_2:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	jpeg_print_page,@function
jpeg_print_page:                        # @jpeg_print_page
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
	subq	$952, %rsp              # imm = 0x3B8
.Ltmp6:
	.cfi_def_cfa_offset 1008
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
	movq	%rsi, %r13
	movq	%rdi, %r12
	movq	24(%r12), %rbx
	xorl	%esi, %esi
	callq	gx_device_raster
	movl	$.L.str.12, %edx
	movq	%rbx, %rdi
	movl	%eax, %esi
	callq	*64(%rbx)
	movq	%rax, %rbp
	movl	$st_jpeg_compress_data, %esi
	movl	$.L.str.13, %edx
	movq	%rbx, %rdi
	callq	*80(%rbx)
	movq	%rax, %r15
	testq	%rbp, %rbp
	movl	$-25, %r14d
	je	.LBB0_40
# BB#1:                                 # %entry
	testq	%r15, %r15
	je	.LBB0_40
# BB#2:                                 # %if.end
	movq	s_DCTE_template+48(%rip), %rax
	movq	%rax, 48(%r15)
	movups	s_DCTE_template+32(%rip), %xmm0
	movups	%xmm0, 32(%r15)
	movups	s_DCTE_template+16(%rip), %xmm0
	movups	%xmm0, 16(%r15)
	movups	s_DCTE_template(%rip), %xmm0
	movups	%xmm0, (%r15)
	leaq	760(%rsp), %rdi
	xorl	%edx, %edx
	movq	%r15, %rsi
	callq	s_init_state
	movq	760(%rsp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.LBB0_4
# BB#3:                                 # %if.then.7
	movq	%rbx, 768(%rsp)
	leaq	760(%rsp), %rdi
	callq	*%rax
	movq	$0, 768(%rsp)
.LBB0_4:                                # %if.end.12
	movl	$1065353216, 888(%rsp)  # imm = 0x3F800000
	movl	$1, 892(%rsp)
	movl	$1, 896(%rsp)
	movq	$0, 872(%rsp)
	movl	$0, 880(%rsp)
	movq	%r15, 912(%rsp)
	movq	$0, 920(%rsp)
	movq	1104(%r12), %rax
	testq	%rax, %rax
	je	.LBB0_8
# BB#5:                                 # %land.lhs.true
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.LBB0_8
# BB#6:                                 # %if.then.18
	movzbl	(%rax), %ecx
	cmpl	100(%r12), %ecx
	jne	.LBB0_8
# BB#7:                                 # %if.then.25
	movq	%rax, 920(%rsp)
.LBB0_8:                                # %if.end.28
	movq	%rbx, 904(%rsp)
	movq	%rbx, 432(%r15)
	leaq	760(%rsp), %rdi
	callq	gs_jpeg_create_compress
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB0_40
# BB#9:                                 # %if.end.34
	movl	832(%r12), %eax
	movl	%eax, 512(%r15)
	movl	836(%r12), %eax
	movl	%eax, 516(%r15)
	movzwl	108(%r12), %eax
	cmpl	$8, %eax
	je	.LBB0_14
# BB#10:                                # %if.end.34
	cmpl	$24, %eax
	jne	.LBB0_11
# BB#13:                                # %sw.bb.40
	movabsq	$8589934595, %rax       # imm = 0x200000003
	jmp	.LBB0_15
.LBB0_40:                               # %fail
	testq	%r15, %r15
	je	.LBB0_42
# BB#41:                                # %if.then.178
	movl	$.L.str.13, %edx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	*24(%rbx)
	jmp	.LBB0_42
.LBB0_14:                               # %sw.bb.45
	movabsq	$4294967297, %rax       # imm = 0x100000001
	jmp	.LBB0_15
.LBB0_11:                               # %if.end.34
	cmpl	$32, %eax
	jne	.LBB0_16
# BB#12:                                # %sw.bb
	movabsq	$17179869188, %rax      # imm = 0x400000004
.LBB0_15:                               # %sw.epilog
	movq	%rax, 520(%r15)
.LBB0_16:                               # %sw.epilog
	leaq	760(%rsp), %rdi
	callq	gs_jpeg_set_defaults
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB0_17
# BB#18:                                # %if.end.54
	movq	%r13, 24(%rsp)          # 8-byte Spill
	movl	18472(%r12), %esi
	testl	%esi, %esi
	jle	.LBB0_20
# BB#19:                                # %if.then.57
	leaq	760(%rsp), %rdi
	movl	$1, %edx
	callq	gs_jpeg_set_quality
	jmp	.LBB0_24
.LBB0_17:
	xorl	%esi, %esi
	xorl	%r13d, %r13d
	jmp	.LBB0_38
.LBB0_20:                               # %if.else
	movss	18476(%r12), %xmm0      # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jbe	.LBB0_25
# BB#21:                                # %if.then.68
	movl	$10000, %esi            # imm = 0x2710
	movss	.LCPI0_0(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jbe	.LBB0_23
# BB#22:                                # %cond.true
	cvtss2sd	%xmm0, %xmm0
	mulsd	.LCPI0_1(%rip), %xmm0
	addsd	.LCPI0_2(%rip), %xmm0
	cvttsd2si	%xmm0, %esi
.LBB0_23:                               # %cond.end
	leaq	760(%rsp), %rdi
	movl	$1, %edx
	callq	gs_jpeg_set_linear_quality
.LBB0_24:                               # %cond.end
	movl	%eax, %r14d
	xorl	%r13d, %r13d
	testl	%r14d, %r14d
	movl	$0, %esi
	js	.LBB0_38
.LBB0_25:                               # %if.end.82
	movq	%rbp, 32(%rsp)          # 8-byte Spill
	movl	$0, 780(%r15)
	movb	$1, 794(%r15)
	cvttss2si	884(%r12), %eax
	movw	%ax, 796(%r15)
	cvttss2si	888(%r12), %eax
	movw	%ax, 798(%r15)
	movl	512(%r15), %r13d
	imull	520(%r15), %r13d
	movl	%r13d, 944(%rsp)
	movq	s_DCTE_template+24(%rip), %rax
	cmpl	%r13d, %eax
	cmoval	%eax, %r13d
	movl	%r13d, 24(%r15)
	shrq	$32, %rax
	movl	880(%rsp), %ecx
	cmpl	%ecx, %eax
	cmoval	%eax, %ecx
	movl	%ecx, 28(%r15)
	cmpl	$512, %ecx              # imm = 0x200
	movl	$512, %ebp              # imm = 0x200
	cmovael	%ecx, %ebp
	movl	$.L.str.14, %edx
	movq	%rbx, %rdi
	movl	%ebp, %esi
	callq	*64(%rbx)
	xorl	%esi, %esi
	testq	%rax, %rax
	je	.LBB0_26
# BB#27:                                # %lor.lhs.false.134
	movq	%rax, 16(%rsp)          # 8-byte Spill
	movl	$.L.str.15, %edx
	movq	%rbx, %rdi
	movl	%r13d, %esi
	callq	*64(%rbx)
	testq	%rax, %rax
	je	.LBB0_28
# BB#29:                                # %if.end.141
	leaq	408(%rsp), %rdi
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movq	%rbx, %rsi
	callq	s_init
	leaq	408(%rsp), %rdi
	movq	24(%rsp), %rsi          # 8-byte Reload
	movq	16(%rsp), %rdx          # 8-byte Reload
	movl	%ebp, %ecx
	callq	swrite_file
	leaq	56(%rsp), %rbp
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	callq	s_init
	movl	$s_filter_write_procs, %ecx
	movl	$2, %r8d
	movq	%rbp, %rdi
	movq	8(%rsp), %rsi           # 8-byte Reload
	movl	%r13d, %edx
	callq	s_std_init
	leaq	760(%rsp), %rax
	movq	%rax, 312(%rsp)
	movq	760(%rsp), %rax
	movq	16(%rax), %rcx
	movq	%rcx, 280(%rsp)
	leaq	408(%rsp), %rcx
	movq	%rcx, 296(%rsp)
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.LBB0_31
# BB#30:                                # %if.then.148
	leaq	760(%rsp), %rdi
	callq	*%rax
.LBB0_31:                               # %for.cond.preheader
	cmpl	$0, 836(%r12)
	jle	.LBB0_36
# BB#32:                                # %for.body.lr.ph
	xorl	%ebp, %ebp
	leaq	44(%rsp), %r13
	.align	16, 0x90
.LBB0_33:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	cmpw	$0, 208(%rsp)
	jne	.LBB0_34
# BB#35:                                # %for.inc
                                        #   in Loop: Header=BB0_33 Depth=1
	movq	%r12, %rdi
	movl	%ebp, %esi
	movq	32(%rsp), %rdx          # 8-byte Reload
	leaq	48(%rsp), %rcx
	callq	gdev_prn_get_bits
	movq	48(%rsp), %rsi
	movl	944(%rsp), %edx
	leaq	56(%rsp), %rdi
	movq	%r13, %rcx
	callq	sputs
	incl	%ebp
	cmpl	836(%r12), %ebp
	jl	.LBB0_33
.LBB0_36:                               # %for.end
	leaq	56(%rsp), %rdi
	callq	sclose
	leaq	408(%rsp), %rdi
	callq	*616(%rsp)
	xorl	%r15d, %r15d
	jmp	.LBB0_37
.LBB0_26:
	xorl	%r13d, %r13d
	movl	$-25, %r14d
	movq	32(%rsp), %rbp          # 8-byte Reload
	jmp	.LBB0_38
.LBB0_28:
	xorl	%esi, %esi
	movl	$-25, %r14d
	movq	32(%rsp), %rbp          # 8-byte Reload
	movq	16(%rsp), %r13          # 8-byte Reload
	jmp	.LBB0_38
.LBB0_34:                               # %cleanup
	movl	$-12, %r14d
.LBB0_37:                               # %done
	movq	32(%rsp), %rbp          # 8-byte Reload
	movq	16(%rsp), %r13          # 8-byte Reload
	movq	8(%rsp), %rsi           # 8-byte Reload
.LBB0_38:                               # %done
	movl	$.L.str.15, %edx
	movq	%rbx, %rdi
	callq	*24(%rbx)
	movl	$.L.str.14, %edx
	movq	%rbx, %rdi
	movq	%r13, %rsi
	callq	*24(%rbx)
	testq	%r15, %r15
	je	.LBB0_42
# BB#39:                                # %if.then.172
	leaq	760(%rsp), %rdi
	callq	gs_jpeg_destroy
.LBB0_42:                               # %if.end.181
	movl	$.L.str.12, %edx
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	*24(%rbx)
	movl	%r14d, %eax
	addq	$952, %rsp              # imm = 0x3B8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	jpeg_print_page, .Lfunc_end0-jpeg_print_page
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_0:
	.quad	4634766966517661696     # double 72
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI1_1:
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.text
	.align	16, 0x90
	.type	jpeg_get_initial_matrix,@function
jpeg_get_initial_matrix:                # @jpeg_get_initial_matrix
	.cfi_startproc
# BB#0:                                 # %entry
	movss	884(%rdi), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm2
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	divsd	%xmm0, %xmm2
	movsd	18480(%rdi), %xmm1      # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm2
	movss	888(%rdi), %xmm3        # xmm3 = mem[0],zero,zero,zero
	cvtss2sd	%xmm3, %xmm3
	divsd	%xmm0, %xmm3
	movsd	18488(%rdi), %xmm0      # xmm0 = mem[0],zero
	mulsd	%xmm0, %xmm3
	movl	852(%rdi), %eax
	cmpl	$3, %eax
	je	.LBB1_5
# BB#1:                                 # %entry
	cmpl	$2, %eax
	jne	.LBB1_2
# BB#4:                                 # %sw.bb.25
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm2, %xmm0
	movaps	.LCPI1_1(%rip), %xmm2   # xmm2 = [2147483648,2147483648,2147483648,2147483648]
	xorps	%xmm2, %xmm0
	movss	%xmm0, (%rsi)
	movl	$0, 4(%rsi)
	movl	$0, 8(%rsi)
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm3, %xmm0
	movss	%xmm0, 12(%rsi)
	xorps	%xmm0, %xmm0
	cvtsi2sdl	832(%rdi), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	18496(%rdi), %xmm1      # xmm1 = mem[0],zero
	subsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 16(%rsi)
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm0
	xorps	%xmm2, %xmm0
	movss	%xmm0, 20(%rsi)
	retq
.LBB1_5:                                # %sw.bb.48
	movl	$0, (%rsi)
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm3, %xmm0
	movss	%xmm0, 4(%rsi)
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm2, %xmm0
	movss	%xmm0, 8(%rsi)
	movl	$0, 12(%rsi)
	movsd	18496(%rdi), %xmm0      # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movaps	.LCPI1_1(%rip), %xmm1   # xmm1 = [2147483648,2147483648,2147483648,2147483648]
	xorps	%xmm1, %xmm0
	movss	%xmm0, 16(%rsi)
	movsd	18504(%rdi), %xmm0      # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	xorps	%xmm1, %xmm0
	movss	%xmm0, 20(%rsi)
	retq
.LBB1_2:                                # %entry
	cmpl	$1, %eax
	jne	.LBB1_6
# BB#3:                                 # %sw.bb
	movl	$0, (%rsi)
	cvtsd2ss	%xmm3, %xmm3
	movaps	.LCPI1_1(%rip), %xmm4   # xmm4 = [2147483648,2147483648,2147483648,2147483648]
	xorps	%xmm4, %xmm3
	movss	%xmm3, 4(%rsi)
	cvtsd2ss	%xmm2, %xmm2
	xorps	%xmm4, %xmm2
	movss	%xmm2, 8(%rsi)
	movl	$0, 12(%rsi)
	xorps	%xmm2, %xmm2
	cvtsi2sdl	832(%rdi), %xmm2
	mulsd	%xmm1, %xmm2
	subsd	18496(%rdi), %xmm2
	cvtsd2ss	%xmm2, %xmm1
	jmp	.LBB1_7
.LBB1_6:                                # %sw.bb.65
	xorps	%xmm1, %xmm1
	cvtsd2ss	%xmm2, %xmm1
	movss	%xmm1, (%rsi)
	movl	$0, 4(%rsi)
	movl	$0, 8(%rsi)
	xorps	%xmm1, %xmm1
	cvtsd2ss	%xmm3, %xmm1
	movaps	.LCPI1_1(%rip), %xmm2   # xmm2 = [2147483648,2147483648,2147483648,2147483648]
	xorps	%xmm2, %xmm1
	movss	%xmm1, 12(%rsi)
	movsd	18496(%rdi), %xmm1      # xmm1 = mem[0],zero
	cvtsd2ss	%xmm1, %xmm1
	xorps	%xmm2, %xmm1
.LBB1_7:                                # %sw.epilog
	movss	%xmm1, 16(%rsi)
	xorps	%xmm1, %xmm1
	cvtsi2sdl	836(%rdi), %xmm1
	mulsd	%xmm0, %xmm1
	subsd	18504(%rdi), %xmm1
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, 20(%rsi)
	retq
.Lfunc_end1:
	.size	jpeg_get_initial_matrix, .Lfunc_end1-jpeg_get_initial_matrix
	.cfi_endproc

	.align	16, 0x90
	.type	jpeg_get_params,@function
jpeg_get_params:                        # @jpeg_get_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp13:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp14:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp15:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp16:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp17:
	.cfi_def_cfa_offset 48
.Ltmp18:
	.cfi_offset %rbx, -40
.Ltmp19:
	.cfi_offset %r12, -32
.Ltmp20:
	.cfi_offset %r14, -24
.Ltmp21:
	.cfi_offset %r15, -16
	movq	%rsi, %r14
	movq	%rdi, %r15
	callq	gdev_prn_get_params
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB2_2
# BB#1:                                 # %if.end
	leaq	18472(%r15), %rdx
	movl	$.L.str.6, %esi
	movq	%r14, %rdi
	callq	param_write_int
	testl	%eax, %eax
	cmovsl	%eax, %ebx
	leaq	18476(%r15), %rdx
	movl	$.L.str.7, %esi
	movq	%r14, %rdi
	callq	param_write_float
	testl	%eax, %eax
	cmovsl	%eax, %ebx
	movsd	18480(%r15), %xmm0      # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 4(%rsp)
	leaq	4(%rsp), %r12
	movl	$.L.str.8, %esi
	movq	%r14, %rdi
	movq	%r12, %rdx
	callq	param_write_float
	testl	%eax, %eax
	cmovsl	%eax, %ebx
	movsd	18488(%r15), %xmm0      # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 4(%rsp)
	movl	$.L.str.9, %esi
	movq	%r14, %rdi
	movq	%r12, %rdx
	callq	param_write_float
	testl	%eax, %eax
	cmovsl	%eax, %ebx
	movsd	18496(%r15), %xmm0      # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 4(%rsp)
	movl	$.L.str.10, %esi
	movq	%r14, %rdi
	movq	%r12, %rdx
	callq	param_write_float
	testl	%eax, %eax
	cmovsl	%eax, %ebx
	movsd	18504(%r15), %xmm0      # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 4(%rsp)
	movl	$.L.str.11, %esi
	movq	%r14, %rdi
	movq	%r12, %rdx
	callq	param_write_float
	testl	%eax, %eax
	cmovsl	%eax, %ebx
.LBB2_2:                                # %cleanup
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end2:
	.size	jpeg_get_params, .Lfunc_end2-jpeg_get_params
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI3_0:
	.long	1232348160              # float 1.0E+6
.LCPI3_1:
	.long	1065353216              # float 1
	.text
	.align	16, 0x90
	.type	jpeg_put_params,@function
jpeg_put_params:                        # @jpeg_put_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp22:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp23:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp24:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp25:
	.cfi_def_cfa_offset 40
	subq	$24, %rsp
.Ltmp26:
	.cfi_def_cfa_offset 64
.Ltmp27:
	.cfi_offset %rbx, -40
.Ltmp28:
	.cfi_offset %r14, -32
.Ltmp29:
	.cfi_offset %r15, -24
.Ltmp30:
	.cfi_offset %rbp, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movl	18472(%r14), %eax
	movl	%eax, 20(%rsp)
	movl	18476(%r14), %eax
	movl	%eax, 16(%rsp)
	leaq	20(%rsp), %rdx
	movl	$.L.str.6, %esi
	movq	%rbx, %rdi
	callq	param_read_int
	movl	%eax, %ebp
	xorl	%r15d, %r15d
	cmpl	$1, %ebp
	je	.LBB3_4
# BB#1:                                 # %entry
	testl	%ebp, %ebp
	jne	.LBB3_3
# BB#2:                                 # %sw.bb
	movl	$-13, %ebp
	cmpl	$101, 20(%rsp)
	jb	.LBB3_4
.LBB3_3:                                # %jqe
	movq	(%rbx), %rax
	movl	$.L.str.6, %esi
	movq	%rbx, %rdi
	movl	%ebp, %edx
	callq	*56(%rax)
	movl	%ebp, %r15d
.LBB3_4:                                # %sw.epilog
	leaq	16(%rsp), %rdx
	movl	$.L.str.7, %esi
	movq	%rbx, %rdi
	callq	param_read_float
	movl	%eax, %ebp
	cmpl	$1, %ebp
	je	.LBB3_9
# BB#5:                                 # %sw.epilog
	testl	%ebp, %ebp
	jne	.LBB3_8
# BB#6:                                 # %sw.bb.4
	movss	16(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	ucomiss	%xmm0, %xmm1
	movl	$-13, %ebp
	ja	.LBB3_8
# BB#7:                                 # %sw.bb.4
	ucomiss	.LCPI3_0(%rip), %xmm0
	jbe	.LBB3_9
.LBB3_8:                                # %qfe
	movq	(%rbx), %rax
	movl	$.L.str.7, %esi
	movq	%rbx, %rdi
	movl	%ebp, %edx
	callq	*56(%rax)
	movl	%ebp, %r15d
.LBB3_9:                                # %sw.epilog.18
	leaq	12(%rsp), %rdx
	movl	$.L.str.8, %esi
	movq	%rbx, %rdi
	callq	param_read_float
	movl	%eax, %ebp
	testl	%ebp, %ebp
	je	.LBB3_10
# BB#13:                                # %if.else.33
	jg	.LBB3_15
# BB#14:                                # %if.then.36
	movq	(%rbx), %rax
	movl	$.L.str.8, %esi
	movq	%rbx, %rdi
	movl	%ebp, %edx
	callq	*56(%rax)
	movl	%ebp, %r15d
	jmp	.LBB3_15
.LBB3_10:                               # %if.then.22
	movss	12(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI3_1(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jbe	.LBB3_12
# BB#11:                                # %if.then.26
	movq	(%rbx), %rax
	movl	$.L.str.8, %esi
	movl	$-13, %edx
	movq	%rbx, %rdi
	callq	*56(%rax)
	jmp	.LBB3_15
.LBB3_12:                               # %if.else.30
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, 18480(%r14)
.LBB3_15:                               # %if.end.41
	leaq	12(%rsp), %rdx
	movl	$.L.str.9, %esi
	movq	%rbx, %rdi
	callq	param_read_float
	movl	%eax, %ebp
	testl	%ebp, %ebp
	je	.LBB3_16
# BB#19:                                # %if.else.57
	jg	.LBB3_21
# BB#20:                                # %if.then.60
	movq	(%rbx), %rax
	movl	$.L.str.9, %esi
	movq	%rbx, %rdi
	movl	%ebp, %edx
	callq	*56(%rax)
	movl	%ebp, %r15d
	jmp	.LBB3_21
.LBB3_16:                               # %if.then.45
	movss	12(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI3_1(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jbe	.LBB3_18
# BB#17:                                # %if.then.49
	movq	(%rbx), %rax
	movl	$.L.str.9, %esi
	movl	$-13, %edx
	movq	%rbx, %rdi
	callq	*56(%rax)
	jmp	.LBB3_21
.LBB3_18:                               # %if.else.53
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, 18488(%r14)
.LBB3_21:                               # %if.end.65
	leaq	12(%rsp), %rdx
	movl	$.L.str.10, %esi
	movq	%rbx, %rdi
	callq	param_read_float
	movl	%eax, %ebp
	testl	%ebp, %ebp
	je	.LBB3_22
# BB#23:                                # %if.else.72
	jg	.LBB3_25
# BB#24:                                # %if.then.75
	movq	(%rbx), %rax
	movl	$.L.str.10, %esi
	movq	%rbx, %rdi
	movl	%ebp, %edx
	callq	*56(%rax)
	movl	%ebp, %r15d
	jmp	.LBB3_25
.LBB3_22:                               # %if.then.69
	movss	12(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, 18496(%r14)
.LBB3_25:                               # %if.end.80
	leaq	12(%rsp), %rdx
	movl	$.L.str.11, %esi
	movq	%rbx, %rdi
	callq	param_read_float
	movl	%eax, %ebp
	testl	%ebp, %ebp
	je	.LBB3_26
# BB#27:                                # %if.else.88
	jg	.LBB3_29
# BB#28:                                # %if.then.91
	movq	(%rbx), %rax
	movl	$.L.str.11, %esi
	movq	%rbx, %rdi
	movl	%ebp, %edx
	callq	*56(%rax)
	movl	%ebp, %r15d
	jmp	.LBB3_29
.LBB3_26:                               # %if.then.84
	movss	12(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, 18504(%r14)
.LBB3_29:                               # %if.end.96
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	gdev_prn_put_params
	testl	%eax, %eax
	js	.LBB3_32
# BB#30:                                # %if.end.101
	testl	%r15d, %r15d
	movl	%r15d, %eax
	js	.LBB3_32
# BB#31:                                # %if.end.105
	movl	20(%rsp), %eax
	movl	%eax, 18472(%r14)
	movl	16(%rsp), %eax
	movl	%eax, 18476(%r14)
	xorl	%eax, %eax
.LBB3_32:                               # %cleanup
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	jpeg_put_params, .Lfunc_end3-jpeg_put_params
	.cfi_endproc

	.align	16, 0x90
	.type	jpegcmyk_map_color_rgb,@function
jpegcmyk_map_color_rgb:                 # @jpegcmyk_map_color_rgb
	.cfi_startproc
# BB#0:                                 # %entry
	movzbl	%sil, %eax
	movq	%rsi, %rcx
	shrq	$24, %rcx
	notl	%ecx
	movl	%eax, %edi
	subl	%ecx, %edi
	imull	$257, %edi, %r8d        # imm = 0x101
	xorl	%r9d, %r9d
	cmpl	%ecx, %eax
	cmovnsw	%r8w, %r9w
	movl	%esi, %ecx
	shrl	$16, %ecx
	orl	$65280, %ecx            # imm = 0xFF00
	xorl	$255, %ecx
	movl	%eax, %edi
	subl	%ecx, %edi
	shrl	$8, %esi
	orl	$65280, %esi            # imm = 0xFF00
	xorl	$255, %esi
	subl	%esi, %eax
	movw	%r9w, (%rdx)
	imull	$257, %edi, %ecx        # imm = 0x101
	movw	%cx, 2(%rdx)
	imull	$257, %eax, %eax        # imm = 0x101
	movw	%ax, 4(%rdx)
	xorl	%eax, %eax
	retq
.Lfunc_end4:
	.size	jpegcmyk_map_color_rgb, .Lfunc_end4-jpegcmyk_map_color_rgb
	.cfi_endproc

	.align	16, 0x90
	.type	jpegcmyk_map_cmyk_color,@function
jpegcmyk_map_cmyk_color:                # @jpegcmyk_map_cmyk_color
	.cfi_startproc
# BB#0:                                 # %entry
	movzwl	6(%rsi), %eax
	imull	$65281, %eax, %eax      # imm = 0xFF01
	addl	$8388608, %eax          # imm = 0x800000
	shrl	$24, %eax
	movzwl	4(%rsi), %ecx
	imull	$65281, %ecx, %ecx      # imm = 0xFF01
	addl	$8388608, %ecx          # imm = 0x800000
	shrl	$16, %ecx
	andl	$65280, %ecx            # imm = 0xFF00
	orl	%eax, %ecx
	movzwl	2(%rsi), %eax
	imull	$65281, %eax, %edx      # imm = 0xFF01
	addl	$8388608, %edx          # imm = 0x800000
	shrl	$8, %edx
	andl	$16711680, %edx         # imm = 0xFF0000
	orl	%ecx, %edx
	movzwl	(%rsi), %eax
	imull	$65281, %eax, %eax      # imm = 0xFF01
	addl	$8388608, %eax          # imm = 0x800000
	andl	$-16777216, %eax        # imm = 0xFFFFFFFFFF000000
	orl	%edx, %eax
	notl	%eax
	retq
.Lfunc_end5:
	.size	jpegcmyk_map_cmyk_color, .Lfunc_end5-jpegcmyk_map_cmyk_color
	.cfi_endproc

	.type	jpeg_procs,@object      # @jpeg_procs
	.section	.rodata,"a",@progbits
	.align	8
jpeg_procs:
	.quad	gdev_prn_open
	.quad	jpeg_get_initial_matrix
	.quad	0
	.quad	gdev_prn_bg_output_page
	.quad	gdev_prn_close
	.quad	gx_default_rgb_map_rgb_color
	.quad	gx_default_rgb_map_color_rgb
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	jpeg_get_params
	.quad	jpeg_put_params
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_page_device_get_page_device
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
	.size	jpeg_procs, 584

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"jpeg"
	.size	.L.str, 5

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"DeviceRGB"
	.size	.L.str.1, 10

	.type	gs_jpeg_device,@object  # @gs_jpeg_device
	.section	.rodata,"a",@progbits
	.globl	gs_jpeg_device
	.align	8
gs_jpeg_device:
	.long	18512                   # 0x4850
	.zero	4
	.quad	jpeg_procs
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
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	1                       # 0x1
	.short	24                      # 0x18
	.byte	255                     # 0xff
	.zero	1
	.long	0                       # 0x0
	.long	255                     # 0xff
	.long	1                       # 0x1
	.long	256                     # 0x100
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
	.long	612                     # 0x264
	.long	792                     # 0x318
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1116733440              # float 7.200000e+01
	.long	1116733440              # float 7.200000e+01
	.long	1116733440              # float 7.200000e+01
	.long	1116733440              # float 7.200000e+01
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
	.quad	jpeg_print_page
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
	.long	0                       # 0x0
	.long	0                       # float 0
	.quad	4607182418800017408     # double 1
	.quad	4607182418800017408     # double 1
	.zero	16
	.size	gs_jpeg_device, 18512

	.type	jpeggray_procs,@object  # @jpeggray_procs
	.align	8
jpeggray_procs:
	.quad	gdev_prn_open
	.quad	jpeg_get_initial_matrix
	.quad	0
	.quad	gdev_prn_bg_output_page
	.quad	gdev_prn_close
	.quad	gx_default_gray_map_rgb_color
	.quad	gx_default_gray_map_color_rgb
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	jpeg_get_params
	.quad	jpeg_put_params
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_page_device_get_page_device
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
	.size	jpeggray_procs, 584

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"jpeggray"
	.size	.L.str.2, 9

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"DeviceGray"
	.size	.L.str.3, 11

	.type	gs_jpeggray_device,@object # @gs_jpeggray_device
	.section	.rodata,"a",@progbits
	.globl	gs_jpeggray_device
	.align	8
gs_jpeggray_device:
	.long	18512                   # 0x4850
	.zero	4
	.quad	jpeggray_procs
	.quad	.L.str.2
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
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.short	8                       # 0x8
	.byte	0                       # 0x0
	.zero	1
	.long	255                     # 0xff
	.long	0                       # 0x0
	.long	256                     # 0x100
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.3
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	612                     # 0x264
	.long	792                     # 0x318
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1116733440              # float 7.200000e+01
	.long	1116733440              # float 7.200000e+01
	.long	1116733440              # float 7.200000e+01
	.long	1116733440              # float 7.200000e+01
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
	.quad	jpeg_print_page
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
	.long	0                       # 0x0
	.long	0                       # float 0
	.quad	4607182418800017408     # double 1
	.quad	4607182418800017408     # double 1
	.zero	16
	.size	gs_jpeggray_device, 18512

	.type	jpegcmyk_procs,@object  # @jpegcmyk_procs
	.align	8
jpegcmyk_procs:
	.quad	gdev_prn_open
	.quad	gx_default_get_initial_matrix
	.quad	0
	.quad	gdev_prn_bg_output_page
	.quad	gdev_prn_close
	.quad	0
	.quad	jpegcmyk_map_color_rgb
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	jpeg_get_params
	.quad	jpeg_put_params
	.quad	jpegcmyk_map_cmyk_color
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_page_device_get_page_device
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
	.size	jpegcmyk_procs, 584

	.type	.L.str.4,@object        # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"jpegcmyk"
	.size	.L.str.4, 9

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"DeviceCMYK"
	.size	.L.str.5, 11

	.type	gs_jpegcmyk_device,@object # @gs_jpegcmyk_device
	.section	.rodata,"a",@progbits
	.globl	gs_jpegcmyk_device
	.align	8
gs_jpegcmyk_device:
	.long	18512                   # 0x4850
	.zero	4
	.quad	jpegcmyk_procs
	.quad	.L.str.4
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
	.long	256                     # 0x100
	.long	256                     # 0x100
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.5
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	612                     # 0x264
	.long	792                     # 0x318
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1116733440              # float 7.200000e+01
	.long	1116733440              # float 7.200000e+01
	.long	1116733440              # float 7.200000e+01
	.long	1116733440              # float 7.200000e+01
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
	.quad	jpeg_print_page
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
	.long	0                       # 0x0
	.long	0                       # float 0
	.quad	4607182418800017408     # double 1
	.quad	4607182418800017408     # double 1
	.zero	16
	.size	gs_jpegcmyk_device, 18512

	.type	.L.str.6,@object        # @.str.6
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"JPEGQ"
	.size	.L.str.6, 6

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"QFactor"
	.size	.L.str.7, 8

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"ViewScaleX"
	.size	.L.str.8, 11

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"ViewScaleY"
	.size	.L.str.9, 11

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"ViewTransX"
	.size	.L.str.10, 11

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"ViewTransY"
	.size	.L.str.11, 11

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"jpeg_print_page(in)"
	.size	.L.str.12, 20

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"jpeg_print_page(jpeg_compress_data)"
	.size	.L.str.13, 36

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"jpeg_print_page(fbuf)"
	.size	.L.str.14, 22

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"jpeg_print_page(jbuf)"
	.size	.L.str.15, 22


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
