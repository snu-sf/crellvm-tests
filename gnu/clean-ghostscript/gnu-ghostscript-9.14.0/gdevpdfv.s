	.text
	.file	"gdevpdfv.bc"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	4634766966517661696     # double 72
.LCPI0_1:
	.quad	4607182418800017408     # double 1
.LCPI0_3:
	.quad	4547007122018943789     # double 1.0E-4
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI0_2:
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.text
	.globl	pdf_store_pattern1_params
	.align	16, 0x90
	.type	pdf_store_pattern1_params,@function
pdf_store_pattern1_params:              # @pdf_store_pattern1_params
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
	subq	$120, %rsp
.Ltmp6:
	.cfi_def_cfa_offset 176
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
	movq	%rdx, %r14
	movq	%rdi, %r13
	movq	32(%r14), %rax
	movq	148(%rax), %rcx
	movq	%rcx, 80(%rsp)
	movups	132(%rax), %xmm0
	movaps	%xmm0, 64(%rsp)
	movss	884(%r13), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 8(%rsp)          # 4-byte Spill
	movss	888(%r13), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 12(%rsp)         # 4-byte Spill
	movq	64(%rsi), %rdi
	callq	cos_stream_dict
	movq	%rax, %r15
	movl	$.L.str, %esi
	movq	%r13, %rdi
	callq	cos_dict_alloc
	movq	%rax, %r12
	testq	%r15, %r15
	movl	$-25, %eax
	je	.LBB0_23
# BB#1:                                 # %entry
	testq	%r12, %r12
	je	.LBB0_23
# BB#2:                                 # %if.end
	movq	%r12, 30448(%r13)
	movsd	104(%r14), %xmm0        # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 16(%rsp)
	movsd	112(%r14), %xmm0        # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 20(%rsp)
	movsd	120(%r14), %xmm0        # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 24(%rsp)
	movsd	128(%r14), %xmm0        # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 28(%rsp)
	movss	168(%r14), %xmm0        # xmm0 = mem[0],zero,zero,zero
	addss	80(%rsp), %xmm0
	movss	%xmm0, 80(%rsp)
	movss	172(%r14), %xmm0        # xmm0 = mem[0],zero,zero,zero
	addss	84(%rsp), %xmm0
	movss	%xmm0, 84(%rsp)
	cmpl	$0, 30408(%r13)
	je	.LBB0_3
# BB#4:                                 # %if.else
	movq	80(%rsp), %rax
	movq	%rax, 48(%rsp)
	movapd	64(%rsp), %xmm0
	movapd	%xmm0, 32(%rsp)
	jmp	.LBB0_5
.LBB0_3:                                # %if.then.30
	movss	8(%rsp), %xmm0          # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm2
	movsd	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero
	divsd	%xmm0, %xmm2
	movss	12(%rsp), %xmm1         # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm3
	divsd	%xmm0, %xmm3
	movsd	.LCPI0_1(%rip), %xmm1   # xmm1 = mem[0],zero
	movapd	%xmm1, %xmm0
	divsd	%xmm2, %xmm0
	divsd	%xmm3, %xmm1
	leaq	96(%rsp), %rbx
	movq	%rbx, %rdi
	callq	gs_make_scaling
	leaq	64(%rsp), %rdi
	leaq	32(%rsp), %rdx
	movq	%rbx, %rsi
	callq	gs_matrix_multiply
.LBB0_5:                                # %if.end.35
	cmpl	$0, 9524(%r13)
	je	.LBB0_9
# BB#6:                                 # %if.then.36
	leaq	30420(%r13), %rbx
	cmpl	$0, 30416(%r13)
	je	.LBB0_8
# BB#7:                                 # %if.then.38
	leaq	32(%rsp), %rbp
	leaq	64(%rsp), %rdx
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	callq	gs_matrix_multiply
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movq	%rbx, %rdx
	callq	gs_matrix_multiply
	movq	80(%rsp), %rax
	movq	%rax, 48(%rsp)
	movapd	64(%rsp), %xmm0
	movapd	%xmm0, 32(%rsp)
	jmp	.LBB0_9
.LBB0_8:                                # %if.else.43
	movq	%rbx, %rdi
	callq	gs_make_identity
	leaq	32(%rsp), %rsi
	movq	%rbx, %rdi
	movq	%rbx, %rdx
	callq	gs_matrix_multiply
.LBB0_9:                                # %if.end.49
	movss	48(%rsp), %xmm1         # xmm1 = mem[0],zero,zero,zero
	movaps	.LCPI0_2(%rip), %xmm2   # xmm2 = [2147483648,2147483648,2147483648,2147483648]
	xorps	%xmm1, %xmm2
	xorpd	%xmm0, %xmm0
	movaps	%xmm1, %xmm3
	cmpltss	%xmm0, %xmm3
	movaps	%xmm3, %xmm4
	andnps	%xmm1, %xmm4
	andps	%xmm2, %xmm3
	orps	%xmm4, %xmm3
	xorps	%xmm2, %xmm2
	cvtss2sd	%xmm3, %xmm2
	movsd	.LCPI0_3(%rip), %xmm1   # xmm1 = mem[0],zero
	ucomisd	%xmm2, %xmm1
	jbe	.LBB0_11
# BB#10:                                # %if.then.58
	movl	$0, 48(%rsp)
.LBB0_11:                               # %if.end.60
	movss	52(%rsp), %xmm2         # xmm2 = mem[0],zero,zero,zero
	movaps	.LCPI0_2(%rip), %xmm3   # xmm3 = [2147483648,2147483648,2147483648,2147483648]
	xorps	%xmm2, %xmm3
	movaps	%xmm2, %xmm4
	cmpltss	%xmm0, %xmm4
	movaps	%xmm4, %xmm0
	andnps	%xmm2, %xmm0
	andps	%xmm3, %xmm4
	orps	%xmm0, %xmm4
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm4, %xmm0
	ucomisd	%xmm0, %xmm1
	jbe	.LBB0_13
# BB#12:                                # %if.then.74
	movl	$0, 52(%rsp)
.LBB0_13:                               # %if.end.76
	movl	$.L.str.1, %esi
	movl	$.L.str.2, %edx
	movq	%r15, %rdi
	callq	cos_dict_put_c_strings
	testl	%eax, %eax
	js	.LBB0_22
# BB#14:                                # %if.end.82
	movl	$.L.str.3, %esi
	movl	$1, %edx
	movq	%r15, %rdi
	callq	cos_dict_put_c_key_int
	testl	%eax, %eax
	js	.LBB0_22
# BB#15:                                # %if.end.87
	movl	88(%r14), %edx
	movl	$.L.str.4, %esi
	movq	%r15, %rdi
	callq	cos_dict_put_c_key_int
	testl	%eax, %eax
	js	.LBB0_22
# BB#16:                                # %if.end.92
	movl	92(%r14), %edx
	movl	$.L.str.5, %esi
	movq	%r15, %rdi
	callq	cos_dict_put_c_key_int
	testl	%eax, %eax
	js	.LBB0_22
# BB#17:                                # %if.end.97
	leaq	16(%rsp), %rdx
	movl	$.L.str.6, %esi
	movl	$4, %ecx
	movq	%r15, %rdi
	callq	cos_dict_put_c_key_floats
	testl	%eax, %eax
	js	.LBB0_22
# BB#18:                                # %if.end.102
	movaps	32(%rsp), %xmm0
	movaps	%xmm0, 96(%rsp)
	movl	48(%rsp), %eax
	movl	%eax, 112(%rsp)
	movl	52(%rsp), %eax
	movl	%eax, 116(%rsp)
	leaq	96(%rsp), %rdx
	movl	$.L.str.7, %esi
	movl	$6, %ecx
	movq	%r15, %rdi
	callq	cos_dict_put_c_key_floats
	testl	%eax, %eax
	js	.LBB0_22
# BB#19:                                # %if.end.108
	movss	136(%r14), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movl	$.L.str.8, %esi
	movq	%r15, %rdi
	callq	cos_dict_put_c_key_real
	testl	%eax, %eax
	js	.LBB0_22
# BB#20:                                # %if.end.114
	movss	140(%r14), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movl	$.L.str.9, %esi
	movq	%r15, %rdi
	callq	cos_dict_put_c_key_real
	testl	%eax, %eax
	js	.LBB0_22
# BB#21:                                # %if.then.117
	movl	$.L.str.10, %esi
	movq	%r15, %rdi
	movq	%r12, %rdx
	callq	cos_dict_put_c_key_object
.LBB0_22:                               # %if.end.119
	cmpl	$2, 88(%r14)
	sete	%cl
	movzbl	%cl, %ecx
	movl	%ecx, 30460(%r13)
.LBB0_23:                               # %cleanup
	addq	$120, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	pdf_store_pattern1_params, .Lfunc_end0-pdf_store_pattern1_params
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_0:
	.quad	4608983858650965606     # double 1.3999999999999999
.LCPI1_1:
	.quad	4608533498688228557     # double 1.3
	.text
	.globl	pdf_put_uncolored_pattern
	.align	16, 0x90
	.type	pdf_put_uncolored_pattern,@function
pdf_put_uncolored_pattern:              # @pdf_put_uncolored_pattern
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
	subq	$712, %rsp              # imm = 0x2C8
.Ltmp19:
	.cfi_def_cfa_offset 768
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
	movq	%r9, %r13
	movl	%r8d, %ebp
	movq	%rcx, %r15
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	648(%r14), %r12
	testl	%ebp, %ebp
	jne	.LBB1_3
# BB#1:                                 # %entry
	testq	%r12, %r12
	jne	.LBB1_3
# BB#2:                                 # %if.then
	movq	$0, (%r13)
	movq	8(%r14), %rax
	movq	%rax, 64(%rsp)
	movq	$gx_dc_type_data_pure, 56(%rsp)
	movl	$0, 416(%rsp)
	movl	30760(%rbx), %ecx
	leaq	56(%rsp), %rsi
	movq	%rbx, %rdi
	movq	%r15, %rdx
.LBB1_19:                               # %cleanup.51
	callq	psdf_set_color
	jmp	.LBB1_20
.LBB1_3:                                # %if.else
	movq	5848(%rbx), %rsi
	testq	%r12, %r12
	je	.LBB1_4
# BB#5:                                 # %cond.end.5.i
	movzwl	176(%r12), %eax
	addl	$7, %eax
	shrl	$3, %eax
	movzwl	178(%r12), %ecx
	imull	%eax, %ecx
	leaq	9368(%rbx), %rax
	cmpl	$65501, %ecx            # imm = 0xFFDD
	jb	.LBB1_6
# BB#7:                                 # %cond.end.5.i
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movq	%rsi, 16(%rsp)          # 8-byte Spill
	movl	$-13, %eax
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	ucomisd	9368(%rbx), %xmm0
	ja	.LBB1_20
	jmp	.LBB1_8
.LBB1_4:                                # %cond.end.5.i.thread
	movq	%rsi, 16(%rsp)          # 8-byte Spill
	leaq	9368(%rbx), %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	jmp	.LBB1_8
.LBB1_6:
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movq	%rsi, 16(%rsp)          # 8-byte Spill
.LBB1_8:                                # %if.end
	testl	%ebp, %ebp
	je	.LBB1_9
# BB#12:                                # %if.else.18
	leaq	32(%rsp), %rax
	movq	%rbx, %rdi
	movq	%rdx, %rsi
	movq	%rax, %rdx
	callq	pdf_cs_Pattern_uncolored_hl
	testl	%eax, %eax
	js	.LBB1_20
# BB#13:                                # %if.end.22
	movq	640(%r14), %rdx
	movl	$2, %esi
	movq	%rbx, %rdi
	callq	pdf_find_resource_by_gs_id
	movq	%rax, (%r13)
	movq	%rax, %rdi
	callq	pdf_substitute_pattern
	movq	%rax, (%r13)
	cmpl	$0, 30464(%rbx)
	jne	.LBB1_16
# BB#14:                                # %land.lhs.true.27
	movsd	.LCPI1_1(%rip), %xmm0   # xmm0 = mem[0],zero
	movq	8(%rsp), %rcx           # 8-byte Reload
	ucomisd	(%rcx), %xmm0
	jb	.LBB1_16
# BB#15:                                # %if.then.29
	movq	5848(%rbx), %rdi
	movl	$.L.str.11, %esi
	callq	stream_puts
	movl	$1, 30464(%rbx)
	movq	(%r13), %rax
.LBB1_16:                               # %if.end.33
	movq	26664(%rbx), %rcx
	orq	%rcx, 56(%rax)
	jmp	.LBB1_17
.LBB1_9:                                # %if.then.8
	leaq	32(%rsp), %rsi
	movq	%rbx, %rdi
	callq	pdf_cs_Pattern_uncolored
	testl	%eax, %eax
	js	.LBB1_20
# BB#10:                                # %lor.lhs.false
	leaq	24(%rsp), %rdx
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	pdf_put_pattern_mask
	testl	%eax, %eax
	js	.LBB1_20
# BB#11:                                # %lor.lhs.false.13
	movq	24(%rsp), %r8
	xorl	%edx, %edx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movq	%r12, %rcx
	movq	%r13, %r9
	callq	pdf_pattern
	testl	%eax, %eax
	js	.LBB1_20
.LBB1_17:                               # %if.end.34
	leaq	32(%rsp), %rdi
	movq	%rbx, %rsi
	callq	cos_value_write
	movq	24(%r15), %rdx
	movl	$.L.str.12, %esi
	movq	16(%rsp), %rdi          # 8-byte Reload
	callq	pprints1
	xorl	%eax, %eax
	testl	%ebp, %ebp
	je	.LBB1_18
.LBB1_20:                               # %cleanup.51
	addq	$712, %rsp              # imm = 0x2C8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB1_18:                               # %if.end.39
	movq	8(%r14), %rax
	movq	%rax, 64(%rsp)
	movq	$gx_dc_type_data_pure, 56(%rsp)
	movl	$0, 416(%rsp)
	movl	30760(%rbx), %ecx
	leaq	56(%rsp), %rsi
	movl	$pdf_put_uncolored_pattern.no_scc, %edx
	movq	%rbx, %rdi
	jmp	.LBB1_19
.Lfunc_end1:
	.size	pdf_put_uncolored_pattern, .Lfunc_end1-pdf_put_uncolored_pattern
	.cfi_endproc

	.align	16, 0x90
	.type	pdf_put_pattern_mask,@function
pdf_put_pattern_mask:                   # @pdf_put_pattern_mask
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
	subq	$808, %rsp              # imm = 0x328
.Ltmp32:
	.cfi_def_cfa_offset 864
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
	movq	%rdx, %r14
	movq	%rsi, %rbp
	movq	%rdi, %r15
	movzwl	176(%rbp), %r12d
	movzwl	178(%rbp), %r13d
	leaq	208(%rsp), %rdi
	movl	$1, %esi
	xorl	%edx, %edx
	callq	gs_image_t_init_mask_adjust
	movzwl	176(%rbp), %eax
	movl	%eax, 240(%rsp)
	cvtsi2ssl	%eax, %xmm0
	movss	%xmm0, 216(%rsp)
	movzwl	178(%rbp), %eax
	movl	%eax, 244(%rsp)
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	movss	%xmm0, 228(%rsp)
	leaq	16(%rsp), %rbx
	movq	%rbx, %rdi
	callq	pdf_image_writer_init
	movl	$0, (%rsp)
	xorl	%edx, %edx
	xorl	%r9d, %r9d
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movl	%r12d, %ecx
	movl	%r13d, %r8d
	callq	pdf_begin_write_image
	testl	%eax, %eax
	js	.LBB2_8
# BB#1:                                 # %lor.lhs.false
	cmpl	$0, 9244(%r15)
	je	.LBB2_3
# BB#2:                                 # %land.lhs.true
	leaq	16(%rsp), %rdi
	movl	$1, %ecx
	movl	%r12d, %esi
	movl	%r13d, %edx
	callq	psdf_CFE_binary
	testl	%eax, %eax
	js	.LBB2_8
.LBB2_3:                                # %lor.lhs.false.8
	leaq	16(%rsp), %rsi
	leaq	208(%rsp), %rdx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movq	%r15, %rdi
	callq	pdf_begin_image_data
	testl	%eax, %eax
	js	.LBB2_8
# BB#4:                                 # %if.end
	movq	32(%rsp), %rdi
	leal	-1(%r13), %eax
	movl	152(%rbp), %ecx
	imull	%ecx, %eax
	movslq	%eax, %rsi
	addq	144(%rbp), %rsi
	negl	%ecx
	movl	$0, (%rsp)
	xorl	%edx, %edx
	movl	%r12d, %r8d
	movl	%r13d, %r9d
	callq	pdf_copy_mask_bits
	testl	%eax, %eax
	js	.LBB2_8
# BB#5:                                 # %lor.lhs.false.22
	leaq	16(%rsp), %rsi
	movq	%r15, %rdi
	movl	%r13d, %edx
	callq	pdf_end_image_binary
	testl	%eax, %eax
	js	.LBB2_8
# BB#6:                                 # %lor.lhs.false.26
	leaq	16(%rsp), %rsi
	movq	%r15, %rdi
	callq	pdf_end_write_image
	testl	%eax, %eax
	js	.LBB2_8
# BB#7:                                 # %if.end.31
	movq	160(%rsp), %rax
	movq	64(%rax), %rax
	movq	%rax, (%r14)
	xorl	%eax, %eax
.LBB2_8:                                # %cleanup
	addq	$808, %rsp              # imm = 0x328
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	pdf_put_pattern_mask, .Lfunc_end2-pdf_put_pattern_mask
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_0:
	.quad	4608983858650965606     # double 1.3999999999999999
.LCPI3_1:
	.quad	4634766966517661696     # double 72
	.text
	.align	16, 0x90
	.type	pdf_pattern,@function
pdf_pattern:                            # @pdf_pattern
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
	subq	$136, %rsp
.Ltmp45:
	.cfi_def_cfa_offset 192
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
	movq	%r9, 40(%rsp)           # 8-byte Spill
	movq	%r8, 32(%rsp)           # 8-byte Spill
	movq	%rcx, %r14
	movq	%rdx, %r12
	movq	%rdi, %rbx
	movq	640(%rsi), %rdx
	xorl	%r13d, %r13d
	movl	$2, %esi
	xorl	%r8d, %r8d
	movq	%r9, %rcx
	callq	pdf_alloc_resource
	movl	%eax, %ebp
	movl	$.L.str, %esi
	movq	%rbx, %rdi
	callq	cos_dict_alloc
	leaq	96(%r12), %rcx
	leaq	144(%r14), %rdx
	testq	%r12, %r12
	movq	%r14, %r15
	cmovneq	%r12, %r15
	cmovneq	%rcx, %rdx
	testl	%ebp, %ebp
	js	.LBB3_27
# BB#1:                                 # %if.end
	testq	%r12, %r12
	je	.LBB3_3
# BB#2:                                 # %cond.false.i
	movzwl	128(%r12), %esi
	imull	8(%r12), %esi
	leal	7(%rsi), %ecx
	sarl	$31, %ecx
	shrl	$29, %ecx
	leal	7(%rsi,%rcx), %ecx
	sarl	$3, %ecx
	movzwl	130(%r12), %r13d
	imull	%ecx, %r13d
.LBB3_3:                                # %cond.end.i
	xorl	%esi, %esi
	testq	%r14, %r14
	je	.LBB3_5
# BB#4:                                 # %cond.false.3.i
	movzwl	176(%r14), %ecx
	addl	$7, %ecx
	shrl	$3, %ecx
	movzwl	178(%r14), %esi
	imull	%ecx, %esi
.LBB3_5:                                # %cond.end.5.i
	movsd	.LCPI3_0(%rip), %xmm0   # xmm0 = mem[0],zero
	ucomisd	9368(%rbx), %xmm0
	jbe	.LBB3_7
# BB#6:                                 # %tile_size_ok.exit
	cmpl	%esi, %r13d
	cmoval	%r13d, %esi
	movl	$-13, %ebp
	cmpl	$65500, %esi            # imm = 0xFFDC
	ja	.LBB3_27
.LBB3_7:                                # %if.end.13
	leaq	40(%r15), %rcx
	movss	44(%r15), %xmm2         # xmm2 = mem[0],zero,zero,zero
	xorpd	%xmm0, %xmm0
	ucomiss	%xmm0, %xmm2
	jne	.LBB3_10
	jp	.LBB3_10
# BB#8:                                 # %land.lhs.true
	movss	48(%r15), %xmm1         # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jne	.LBB3_10
	jp	.LBB3_10
# BB#9:                                 # %if.then.21
	movss	52(%r15), %xmm2         # xmm2 = mem[0],zero,zero,zero
	jmp	.LBB3_13
.LBB3_10:                               # %if.else
	movss	(%rcx), %xmm1           # xmm1 = mem[0],zero,zero,zero
	movl	$-15, %ebp
	ucomiss	%xmm0, %xmm1
	jne	.LBB3_27
	jp	.LBB3_27
# BB#11:                                # %land.lhs.true.31
	movss	52(%r15), %xmm0         # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jne	.LBB3_27
	jp	.LBB3_27
# BB#12:                                # %if.then.37
	leaq	48(%r15), %rcx
.LBB3_13:                               # %if.end.48
	movl	$-25, %ebp
	testq	%rax, %rax
	je	.LBB3_27
# BB#14:                                # %if.end.52
	movss	%xmm2, 12(%rsp)         # 4-byte Spill
	movq	%rax, 16(%rsp)          # 8-byte Spill
	movss	(%rcx), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 8(%rsp)          # 4-byte Spill
	leaq	112(%rsp), %rdi
	movq	%rdx, %rbp
	movq	%rbp, 24(%rsp)          # 8-byte Spill
	callq	gs_make_identity
	movzwl	32(%rbp), %eax
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	movss	884(%rbx), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	movsd	.LCPI3_1(%rip), %xmm2   # xmm2 = mem[0],zero
	divsd	%xmm2, %xmm1
	divsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 112(%rsp)
	movzwl	34(%rbp), %eax
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	movss	888(%rbx), %xmm3        # xmm3 = mem[0],zero,zero,zero
	cvtss2sd	%xmm3, %xmm3
	divsd	%xmm2, %xmm3
	divsd	%xmm3, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 124(%rsp)
	movss	56(%r15), %xmm0         # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	divsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 128(%rsp)
	movss	60(%r15), %xmm0         # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	divsd	%xmm3, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 132(%rsp)
	movq	40(%rsp), %rax          # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	movl	$.L.str.18, %esi
	movq	%rbx, %rdi
	callq	cos_dict_alloc
	movq	%rax, %r14
	movl	$-25, %ebp
	testq	%r14, %r14
	je	.LBB3_27
# BB#15:                                # %if.end.90
	movq	32(%rsp), %r13          # 8-byte Reload
	movq	8(%r13), %rdx
	leaq	48(%rsp), %rbp
	movl	$.L.str.19, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	callq	gs_sprintf
	movl	$.L.str.20, %esi
	movq	%rbx, %rdi
	callq	cos_reference_alloc
	movq	8(%r13), %rcx
	movq	%rcx, 8(%rax)
	leaq	88(%rsp), %rbx
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	cos_object_value
	movq	%rbp, %rdi
	callq	strlen
	movq	%r14, %rdi
	movq	%rbp, %rsi
	movl	%eax, %edx
	movq	%rbx, %rcx
	callq	cos_dict_put
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB3_27
# BB#16:                                # %cleanup
	movl	$.L.str.21, %esi
	movq	16(%rsp), %r13          # 8-byte Reload
	movq	%r13, %rdi
	movq	%r14, %rdx
	callq	cos_dict_put_c_key_object
	movl	%eax, %ebp
	testl	%ebp, %ebp
	movq	24(%rsp), %rcx          # 8-byte Reload
	js	.LBB3_27
# BB#17:                                # %cleanup.cont
	testq	%r12, %r12
	movl	$.L.str.23, %eax
	movq	%rcx, %rbx
	movl	$.L.str.24, %edx
	cmoveq	%rax, %rdx
	movl	$.L.str.22, %esi
	movq	%r13, %rdi
	callq	cos_dict_put_c_strings
	movq	%rbx, %rcx
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB3_27
# BB#18:                                # %if.end.119
	movq	40(%rsp), %rbx          # 8-byte Reload
	movq	64(%rbx), %rdi
	movl	$cos_stream_procs, %esi
	movq	%rcx, %rbp
	callq	cos_become
	movq	64(%rbx), %rdi
	movq	%rdi, 40(%rsp)          # 8-byte Spill
	callq	cos_stream_dict
	movq	%rax, %r14
	movl	$1, %ebx
	movl	$.L.str.3, %esi
	movl	$1, %edx
	movq	%r14, %rdi
	callq	cos_dict_put_c_key_int
	movq	%rbp, %rcx
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB3_27
# BB#19:                                # %lor.lhs.false.127
	cmpq	$1, %r12
	adcl	$0, %ebx
	movl	$.L.str.4, %esi
	movq	%r14, %rdi
	movq	%rcx, %rbp
	movl	%ebx, %edx
	callq	cos_dict_put_c_key_int
	movq	%rbp, %rcx
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB3_27
# BB#20:                                # %lor.lhs.false.133
	movq	%rcx, %rbp
	movl	36(%r15), %edx
	movl	$.L.str.5, %esi
	movq	%r14, %rdi
	callq	cos_dict_put_c_key_int
	movq	%rbp, %rcx
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB3_27
# BB#21:                                # %lor.lhs.false.137
	movl	$.L.str.10, %esi
	movq	%r14, %rdi
	movq	%rcx, %rbx
	movq	%r13, %rdx
	callq	cos_dict_put_c_key_object
	movq	%rbx, %rcx
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB3_27
# BB#22:                                # %lor.lhs.false.142
	movl	$.L.str.6, %esi
	movq	%rcx, %rbx
	movl	$.L.str.25, %edx
	movq	%r14, %rdi
	callq	cos_dict_put_c_strings
	movq	%rbx, %rcx
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB3_27
# BB#23:                                # %lor.lhs.false.146
	movapd	112(%rsp), %xmm0
	movapd	%xmm0, 48(%rsp)
	movl	128(%rsp), %eax
	movl	%eax, 64(%rsp)
	movl	132(%rsp), %eax
	movl	%eax, 68(%rsp)
	movq	%rcx, %rbx
	leaq	48(%rsp), %rdx
	movl	$.L.str.7, %esi
	movl	$6, %ecx
	movq	%r14, %rdi
	callq	cos_dict_put_c_key_floats
	movq	%rbx, %rcx
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB3_27
# BB#24:                                # %lor.lhs.false.150
	movss	8(%rsp), %xmm0          # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movzwl	32(%rcx), %eax
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm1, %xmm0
	movl	$.L.str.8, %esi
	movq	%r14, %rdi
	movq	%rcx, %rbx
	callq	cos_dict_put_c_key_real
	movss	12(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movq	%rbx, %rcx
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB3_27
# BB#25:                                # %lor.lhs.false.159
	cvtss2sd	%xmm0, %xmm0
	movzwl	34(%rcx), %eax
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm1, %xmm0
	movl	$.L.str.9, %esi
	movq	%r14, %rdi
	callq	cos_dict_put_c_key_real
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB3_27
# BB#26:                                # %if.end.169
	movq	32(%rsp), %rax          # 8-byte Reload
	movq	8(%rax), %rdx
	xorl	%ebp, %ebp
	leaq	48(%rsp), %rbx
	movl	$.L.str.26, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	gs_sprintf
	movq	%rbx, %rdi
	callq	strlen
	movq	40(%rsp), %rdi          # 8-byte Reload
	movq	%rbx, %rsi
	movl	%eax, %edx
	callq	cos_stream_add_bytes
.LBB3_27:                               # %cleanup.178
	movl	%ebp, %eax
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	pdf_pattern, .Lfunc_end3-pdf_pattern
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4608533498688228557     # double 1.3
.LCPI4_1:
	.quad	4608983858650965606     # double 1.3999999999999999
	.text
	.globl	pdf_put_colored_pattern
	.align	16, 0x90
	.type	pdf_put_colored_pattern,@function
pdf_put_colored_pattern:                # @pdf_put_colored_pattern
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
	subq	$1640, %rsp             # imm = 0x668
.Ltmp58:
	.cfi_def_cfa_offset 1696
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
	movq	%r9, %r13
	movl	%r8d, 108(%rsp)         # 4-byte Spill
	movq	%rcx, 96(%rsp)          # 8-byte Spill
	movq	%rsi, %r14
	movq	%rdi, %rbp
	movq	8(%r14), %rbx
	movzwl	128(%rbx), %r15d
	movzwl	130(%rbx), %eax
	movq	%rax, 112(%rsp)         # 8-byte Spill
	xorl	%r12d, %r12d
	testl	%r8d, %r8d
	jne	.LBB4_32
# BB#1:                                 # %if.then
	movq	648(%r14), %rax
	movq	%rax, 80(%rsp)          # 8-byte Spill
	testq	%rax, %rax
	je	.LBB4_26
# BB#2:                                 # %if.then.6
	movq	%rdx, 32(%rsp)          # 8-byte Spill
	movq	%r14, 48(%rsp)          # 8-byte Spill
	movq	%r13, 56(%rsp)          # 8-byte Spill
	movq	%rbp, 64(%rsp)          # 8-byte Spill
	testq	%rbx, %rbx
	movq	%rbx, 88(%rsp)          # 8-byte Spill
	je	.LBB4_25
# BB#3:                                 # %land.lhs.true
	movq	88(%rsp), %rax          # 8-byte Reload
	movl	8(%rax), %ebx
	cmpl	$64, %ebx
	ja	.LBB4_25
# BB#4:                                 # %land.lhs.true
	movl	%ebx, %eax
	andl	$7, %eax
	jne	.LBB4_25
# BB#5:                                 # %if.then.13
	xorl	%edx, %edx
	movq	112(%rsp), %rax         # 8-byte Reload
	testw	%ax, %ax
	movl	$0, %r14d
	je	.LBB4_23
# BB#6:                                 # %for.cond.29.preheader.lr.ph
	sarl	$3, %ebx
	movq	88(%rsp), %rax          # 8-byte Reload
	movq	96(%rax), %r9
	movq	144(%rax), %rdi
	movslq	104(%rax), %rcx
	movslq	%ebx, %rsi
	movq	%rsi, 120(%rsp)         # 8-byte Spill
	movq	%rsi, %rax
	imulq	%r15, %rax
	subq	%rax, %rcx
	movq	%rcx, 40(%rsp)          # 8-byte Spill
	leal	-1(%rsi), %r11d
	leaq	1(%r11), %rax
	movq	%rax, 128(%rsp)         # 8-byte Spill
	movl	%esi, %ebp
	andl	$3, %ebp
	movl	%ebx, %eax
	andl	$3, %eax
	movl	$1, %r8d
	xorl	%r14d, %r14d
	.align	16, 0x90
.LBB4_7:                                # %for.cond.29.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_8 Depth 2
                                        #       Child Loop BB4_12 Depth 3
                                        #       Child Loop BB4_16 Depth 3
	movq	%rdx, 72(%rsp)          # 8-byte Spill
	xorl	%r13d, %r13d
	testw	%r15w, %r15w
	je	.LBB4_22
	.align	16, 0x90
.LBB4_8:                                # %for.body.32
                                        #   Parent Loop BB4_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_12 Depth 3
                                        #       Child Loop BB4_16 Depth 3
	movl	%r13d, %ecx
	sarl	$3, %ecx
	movslq	%ecx, %rcx
	movzbl	(%rdi,%rcx), %esi
	movb	%r13b, %cl
	andb	$7, %cl
	movl	$128, %edx
	shrl	%cl, %edx
	testl	%edx, %esi
	je	.LBB4_20
# BB#9:                                 # %for.cond.40.preheader
                                        #   in Loop: Header=BB4_8 Depth=2
	testl	%ebx, %ebx
	jle	.LBB4_10
# BB#11:                                # %for.body.43.preheader
                                        #   in Loop: Header=BB4_8 Depth=2
	xorl	%r10d, %r10d
	testl	%ebp, %ebp
	movl	$0, %ecx
	movq	%r9, %rsi
	je	.LBB4_14
	.align	16, 0x90
.LBB4_12:                               # %for.body.43.prol
                                        #   Parent Loop BB4_7 Depth=1
                                        #     Parent Loop BB4_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%r10, %rsi
	movq	%rcx, %rdx
	shlq	$8, %rdx
	movzbl	(%r9,%rsi), %ecx
	orq	%rdx, %rcx
	leaq	1(%rsi), %r10
	cmpl	%r10d, %eax
	jne	.LBB4_12
# BB#13:                                #   in Loop: Header=BB4_8 Depth=2
	leaq	1(%r9,%rsi), %rsi
.LBB4_14:                               # %for.body.43.preheader.split
                                        #   in Loop: Header=BB4_8 Depth=2
	cmpl	$3, %r11d
	jb	.LBB4_17
# BB#15:                                # %for.body.43.preheader.split.split
                                        #   in Loop: Header=BB4_8 Depth=2
	movl	%ebx, %r12d
	subl	%r10d, %r12d
	.align	16, 0x90
.LBB4_16:                               # %for.body.43
                                        #   Parent Loop BB4_7 Depth=1
                                        #     Parent Loop BB4_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	shlq	$8, %rcx
	movzbl	(%rsi), %edx
	orq	%rcx, %rdx
	shlq	$8, %rdx
	movzbl	1(%rsi), %ecx
	orq	%rdx, %rcx
	shlq	$8, %rcx
	movzbl	2(%rsi), %edx
	orq	%rcx, %rdx
	shlq	$8, %rdx
	movzbl	3(%rsi), %ecx
	orq	%rdx, %rcx
	addq	$4, %rsi
	addl	$-4, %r12d
	jne	.LBB4_16
.LBB4_17:                               # %for.cond.40.for.end_crit_edge
                                        #   in Loop: Header=BB4_8 Depth=2
	addq	128(%rsp), %r9          # 8-byte Folded Reload
	jmp	.LBB4_18
	.align	16, 0x90
.LBB4_20:                               # %if.else.51
                                        #   in Loop: Header=BB4_8 Depth=2
	addq	120(%rsp), %r9          # 8-byte Folded Reload
	movl	%r8d, %esi
	jmp	.LBB4_21
	.align	16, 0x90
.LBB4_10:                               #   in Loop: Header=BB4_8 Depth=2
	xorl	%ecx, %ecx
.LBB4_18:                               # %for.end
                                        #   in Loop: Header=BB4_8 Depth=2
	xorl	%esi, %esi
	testl	%r8d, %r8d
	je	.LBB4_24
# BB#19:                                #   in Loop: Header=BB4_8 Depth=2
	movq	%rcx, %r14
	jmp	.LBB4_21
	.align	16, 0x90
.LBB4_24:                               # %if.else
                                        #   in Loop: Header=BB4_8 Depth=2
	cmpq	%r14, %rcx
	jne	.LBB4_25
.LBB4_21:                               # %for.inc.53
                                        #   in Loop: Header=BB4_8 Depth=2
	incl	%r13d
	cmpl	%r15d, %r13d
	movl	%esi, %r8d
	jl	.LBB4_8
.LBB4_22:                               # %for.inc.56
                                        #   in Loop: Header=BB4_7 Depth=1
	movq	72(%rsp), %rdx          # 8-byte Reload
	incl	%edx
	addq	40(%rsp), %r9           # 8-byte Folded Reload
	movq	88(%rsp), %rcx          # 8-byte Reload
	movslq	152(%rcx), %rcx
	addq	%rcx, %rdi
	movq	112(%rsp), %rcx         # 8-byte Reload
	cmpl	%ecx, %edx
	jl	.LBB4_7
.LBB4_23:                               # %cleanup.67
	leaq	136(%rsp), %rbx
	movl	$656, %edx              # imm = 0x290
	movq	%rbx, %rdi
	movq	48(%rsp), %rsi          # 8-byte Reload
	callq	memcpy
	movq	%r14, 144(%rsp)
	xorl	%r8d, %r8d
	movq	64(%rsp), %rdi          # 8-byte Reload
	movq	%rbx, %rsi
	movq	32(%rsp), %rdx          # 8-byte Reload
	movq	96(%rsp), %rcx          # 8-byte Reload
	movq	56(%rsp), %r9           # 8-byte Reload
	callq	pdf_put_uncolored_pattern
	jmp	.LBB4_48
.LBB4_25:                               # %if.end.79
	movl	$-15, %eax
	movsd	.LCPI4_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movq	64(%rsp), %rbp          # 8-byte Reload
	ucomisd	9368(%rbp), %xmm0
	movq	56(%rsp), %r13          # 8-byte Reload
	movq	48(%rsp), %r14          # 8-byte Reload
	movq	88(%rsp), %rbx          # 8-byte Reload
	ja	.LBB4_48
.LBB4_26:                               # %if.end.84
	xorl	%ecx, %ecx
	testq	%rbx, %rbx
	movl	$0, %eax
	je	.LBB4_28
# BB#27:                                # %cond.false.i
	movl	8(%rbx), %eax
	imull	%r15d, %eax
	leal	7(%rax), %edx
	sarl	$31, %edx
	shrl	$29, %edx
	leal	7(%rax,%rdx), %eax
	sarl	$3, %eax
	movq	112(%rsp), %rdx         # 8-byte Reload
	imull	%edx, %eax
.LBB4_28:                               # %cond.end.i
	movq	80(%rsp), %r12          # 8-byte Reload
	testq	%r12, %r12
	je	.LBB4_30
# BB#29:                                # %cond.false.3.i
	movzwl	176(%r12), %edx
	addl	$7, %edx
	shrl	$3, %edx
	movzwl	178(%r12), %ecx
	imull	%edx, %ecx
.LBB4_30:                               # %cond.end.5.i
	movsd	.LCPI4_1(%rip), %xmm0   # xmm0 = mem[0],zero
	ucomisd	9368(%rbp), %xmm0
	jbe	.LBB4_32
# BB#31:                                # %tile_size_ok.exit
	cmpl	%ecx, %eax
	cmoval	%eax, %ecx
	movl	$-13, %eax
	cmpl	$65500, %ecx            # imm = 0xFFDC
	ja	.LBB4_48
.LBB4_32:                               # %if.end.89
	leaq	1584(%rsp), %rsi
	movq	%rbp, %rdi
	callq	pdf_cs_Pattern_colored
	testl	%eax, %eax
	js	.LBB4_48
# BB#33:                                # %if.end.94
	movq	24(%rbp), %rdi
	movl	100(%rbp), %edx
	leaq	1632(%rsp), %rsi
	callq	pdf_cspace_init_Device
	movq	1632(%rsp), %rcx
	movl	$0, 16(%rsp)
	movl	$0, 8(%rsp)
	movq	$0, (%rsp)
	leaq	1608(%rsp), %rsi
	xorl	%edx, %edx
	movl	$pdf_color_space_names, %r8d
	movl	$1, %r9d
	movq	%rbp, %rdi
	callq	pdf_color_space_named
	testl	%eax, %eax
	js	.LBB4_48
# BB#34:                                # %if.end.100
	cmpl	$0, 108(%rsp)           # 4-byte Folded Reload
	je	.LBB4_35
# BB#46:                                # %if.else.176
	movq	(%rbx), %rdx
	movl	$2, %esi
	movq	%rbp, %rdi
	callq	pdf_find_resource_by_gs_id
	movq	%rax, (%r13)
	movq	%rax, %rdi
	callq	pdf_substitute_pattern
	movq	%rax, (%r13)
	movq	26664(%rbp), %rcx
	orq	%rcx, 56(%rax)
.LBB4_47:                               # %if.end.179
	movq	1632(%rsp), %rdi
	movl	$.L.str.14, %esi
	callq	rc_decrement_cs
	leaq	1584(%rsp), %rdi
	movq	%rbp, %rsi
	callq	cos_value_write
	movq	5848(%rbp), %rdi
	movq	96(%rsp), %rax          # 8-byte Reload
	movq	24(%rax), %rdx
	movl	$.L.str.15, %esi
	callq	pprints1
	xorl	%eax, %eax
.LBB4_48:                               # %cleanup.183
	addq	$1640, %rsp             # imm = 0x668
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB4_35:                               # %if.then.102
	movq	$0, 136(%rsp)
	movq	1632(%rsp), %rsi
	leaq	984(%rsp), %rdi
	xorl	%edx, %edx
	callq	gs_image_t_init_adjust
	movl	$8, 1024(%rsp)
	movzwl	128(%rbx), %eax
	movl	%eax, 1016(%rsp)
	cvtsi2ssl	%eax, %xmm0
	movss	%xmm0, 992(%rsp)
	movzwl	130(%rbx), %eax
	movq	%rbx, 88(%rsp)          # 8-byte Spill
	movl	%eax, 1020(%rsp)
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	movss	%xmm0, 1004(%rsp)
	testq	%r12, %r12
	je	.LBB4_37
# BB#36:                                # %if.then.105
	leaq	136(%rsp), %rdx
	movq	%rbp, %rdi
	movq	%r12, %rsi
	callq	pdf_put_pattern_mask
	testl	%eax, %eax
	js	.LBB4_48
.LBB4_37:                               # %if.end.111
	leaq	792(%rsp), %rbx
	movq	%rbx, %rdi
	callq	pdf_image_writer_init
	movq	9368(%rbp), %rax
	movq	%rax, 8872(%rbp)
	movl	$0, (%rsp)
	xorl	%edx, %edx
	xorl	%r9d, %r9d
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	movl	%r15d, %ecx
	movq	112(%rsp), %r8          # 8-byte Reload
	callq	pdf_begin_write_image
	testl	%eax, %eax
	js	.LBB4_48
# BB#38:                                # %lor.lhs.false
	leaq	792(%rsp), %rsi
	leaq	984(%rsp), %rdx
	xorl	%ecx, %ecx
	movq	%rbp, %rdi
	callq	psdf_setup_lossless_filters
	testl	%eax, %eax
	js	.LBB4_48
# BB#39:                                # %lor.lhs.false.120
	leaq	792(%rsp), %rsi
	leaq	984(%rsp), %rdx
	leaq	1608(%rsp), %rcx
	xorl	%r8d, %r8d
	movq	%rbp, %rdi
	callq	pdf_begin_image_data
	testl	%eax, %eax
	js	.LBB4_48
# BB#40:                                # %if.end.125
	movq	808(%rsp), %rdi
	movq	112(%rsp), %r9          # 8-byte Reload
	leal	-1(%r9), %eax
	movq	88(%rsp), %rdx          # 8-byte Reload
	movl	104(%rdx), %ecx
	imull	%ecx, %eax
	movslq	%eax, %rsi
	addq	96(%rdx), %rsi
	negl	%ecx
	movzwl	108(%rbp), %eax
	shrl	$3, %eax
	movl	%eax, (%rsp)
	xorl	%edx, %edx
	movl	%r15d, %r8d
	movq	%r9, %rbx
	callq	pdf_copy_color_bits
	testl	%eax, %eax
	js	.LBB4_48
# BB#41:                                # %lor.lhs.false.146
	leaq	792(%rsp), %rsi
	movq	%rbp, %rdi
	movl	%ebx, %edx
	callq	pdf_end_image_binary
	testl	%eax, %eax
	js	.LBB4_48
# BB#42:                                # %if.end.151
	movq	136(%rsp), %rbx
	testq	%rbx, %rbx
	je	.LBB4_44
# BB#43:                                # %land.lhs.true.154
	movq	936(%rsp), %rax
	movq	64(%rax), %rdi
	callq	cos_stream_dict
	movl	$.L.str.13, %esi
	movq	%rax, %rdi
	movq	%rbx, %rdx
	callq	cos_dict_put_c_key_object
	testl	%eax, %eax
	js	.LBB4_48
.LBB4_44:                               # %lor.lhs.false.159
	leaq	792(%rsp), %rsi
	movq	%rbp, %rdi
	callq	pdf_end_write_image
	testl	%eax, %eax
	js	.LBB4_48
# BB#45:                                # %cleanup.172
	movq	936(%rsp), %rax
	movq	64(%rax), %r8
	movq	%rbp, %rdi
	movq	%r14, %rsi
	movq	88(%rsp), %rdx          # 8-byte Reload
	movq	%r12, %rcx
	movq	%r13, %r9
	callq	pdf_pattern
	testl	%eax, %eax
	jns	.LBB4_47
	jmp	.LBB4_48
.Lfunc_end4:
	.size	pdf_put_colored_pattern, .Lfunc_end4-pdf_put_colored_pattern
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_0:
	.quad	-4553139223271571456    # double -16384
.LCPI5_1:
	.quad	4670232811435720704     # double 16383.99609375
.LCPI5_2:
	.quad	4607182418800017408     # double 1
.LCPI5_3:
	.quad	4679239875398991872     # double 65535
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI5_4:
	.quad	4607182418800017408     # double 1.000000e+00
	.quad	4607182418800017408     # double 1.000000e+00
.LCPI5_5:
	.quad	4634766966517661696     # double 7.200000e+01
	.quad	4634766966517661696     # double 7.200000e+01
	.text
	.globl	pdf_put_pattern2
	.align	16, 0x90
	.type	pdf_put_pattern2,@function
pdf_put_pattern2:                       # @pdf_put_pattern2
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
	subq	$760, %rsp              # imm = 0x2F8
.Ltmp71:
	.cfi_def_cfa_offset 816
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
	movq	%rcx, %r15
	movq	%rdx, %rbx
	movq	%rdi, %r14
	movq	368(%rsi), %r13
	movq	88(%r13), %r12
	leaq	208(%rsp), %rsi
	callq	pdf_cs_Pattern_colored
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB5_110
# BB#1:                                 # %if.end
	movl	$2, %esi
	xorl	%edx, %edx
	movq	$-1, %r8
	movq	%r14, %rdi
	movq	%r15, %rcx
	callq	pdf_alloc_resource
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB5_110
# BB#2:                                 # %if.end.4
	movq	(%r15), %rbp
	movq	%rbp, 200(%rsp)
	movq	64(%rbp), %rdi
	movl	$cos_dict_procs, %esi
	callq	cos_become
	movq	64(%rbp), %rax
	movq	%rax, 152(%rsp)         # 8-byte Spill
	leaq	192(%rsp), %rcx
	movl	$3, %esi
	xorl	%edx, %edx
	movq	$-1, %r8
	movq	%r14, %rdi
	callq	pdf_alloc_resource
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB5_110
# BB#3:                                 # %if.end.10
	movq	192(%rsp), %rax
	movq	64(%rax), %rbp
	cmpl	$4, (%r12)
	jb	.LBB5_80
# BB#4:                                 # %if.then.13
	movl	$cos_stream_procs, %esi
	movq	%rbp, %rdi
	callq	cos_become
	movq	%rbp, %rdi
	callq	cos_stream_dict
	movl	96(%r13), %edx
	leaq	184(%rsp), %rcx
	movq	%rax, %rdi
	movq	%r12, %rsi
	callq	pdf_put_shading_common
	movq	%rbp, %rdi
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB5_96
# BB#5:                                 # %if.then.18
	movq	%r15, 104(%rsp)         # 8-byte Spill
	movq	%rbx, 136(%rsp)         # 8-byte Spill
	movq	184(%rsp), %rbx
	movq	%rdi, 144(%rsp)         # 8-byte Spill
	callq	cos_stream_dict
	movq	%rax, 128(%rsp)         # 8-byte Spill
	leaq	16(%r12), %rsi
	movq	16(%r12), %rax
	movq	%rax, 88(%rsp)          # 8-byte Spill
	movl	96(%r12), %r15d
	movl	$1, %eax
	movq	%rax, 120(%rsp)         # 8-byte Spill
	xorl	%ecx, %ecx
	cmpq	$0, 136(%r12)
	jne	.LBB5_7
# BB#6:                                 # %if.else.i
	movq	%rbx, 112(%rsp)         # 8-byte Spill
	movq	%rsi, 96(%rsp)          # 8-byte Spill
	movq	96(%rsp), %rax          # 8-byte Reload
	movq	112(%rax), %rax
	leaq	16(%rax), %rbx
	testq	%rax, %rax
	cmoveq	%rax, %rbx
	movq	88(%rsp), %rdi          # 8-byte Reload
	callq	gs_color_space_num_components
	movq	%rbx, %rcx
	movq	%rax, 120(%rsp)         # 8-byte Spill
	movq	96(%rsp), %rsi          # 8-byte Reload
	movq	112(%rsp), %rbx         # 8-byte Reload
.LBB5_7:                                # %if.end.i
	movq	%rcx, 80(%rsp)          # 8-byte Spill
	movq	%rbx, 112(%rsp)         # 8-byte Spill
	movq	%rcx, 720(%rsp)
	movq	%rbx, 728(%rsp)
	leaq	272(%rsp), %rdi
	xorl	%edx, %edx
	movq	%rsi, %rbx
	callq	shade_next_init
	cmpl	$2, %r15d
	movl	%r15d, 76(%rsp)         # 4-byte Spill
	jne	.LBB5_29
# BB#8:                                 # %if.then.8.i
	movq	%rbx, 96(%rsp)          # 8-byte Spill
	movq	128(%rsp), %rax         # 8-byte Reload
	movq	32(%rax), %rdi
	movl	$.L.str.32, %esi
	callq	cos_array_alloc
	movq	%rax, %rbx
	movl	$-25, %esi
	testq	%rbx, %rbx
	movq	104(%rsp), %r15         # 8-byte Reload
	je	.LBB5_79
# BB#9:                                 # %for.cond.preheader.i
	movsd	.LCPI5_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movq	%rbx, %rdi
	callq	cos_array_add_real
	movl	%eax, %esi
	testl	%esi, %esi
	js	.LBB5_79
# BB#10:                                # %pdf_array_add_real2.exit.i
	movsd	.LCPI5_1(%rip), %xmm0   # xmm0 = mem[0],zero
	movq	%rbx, %rdi
	callq	cos_array_add_real
	movl	%eax, %esi
	testl	%esi, %esi
	js	.LBB5_79
# BB#11:                                # %for.cond.i
	movsd	.LCPI5_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movq	%rbx, %rdi
	callq	cos_array_add_real
	movl	%eax, %esi
	testl	%esi, %esi
	js	.LBB5_79
# BB#12:                                # %pdf_array_add_real2.exit.1.i
	movsd	.LCPI5_1(%rip), %xmm0   # xmm0 = mem[0],zero
	movq	%rbx, %rdi
	callq	cos_array_add_real
	movl	%eax, %esi
	testl	%esi, %esi
	js	.LBB5_79
# BB#13:                                # %for.cond.1.i
	movl	$0, 712(%rsp)
	movq	88(%rsp), %rdi          # 8-byte Reload
	callq	gs_color_space_get_index
	cmpl	$10, %eax
	jne	.LBB5_14
# BB#16:                                # %if.then.24.i
	movl	$1, 712(%rsp)
	xorpd	%xmm0, %xmm0
	movq	%rbx, %rdi
	callq	cos_array_add_real
	movl	%eax, %esi
	testl	%esi, %esi
	js	.LBB5_79
# BB#17:                                # %pdf_array_add_real2.exit105.i
	movsd	.LCPI5_3(%rip), %xmm0   # xmm0 = mem[0],zero
	movq	%rbx, %rdi
	callq	cos_array_add_real
	movl	%eax, %esi
	testl	%esi, %esi
	jns	.LBB5_18
	jmp	.LBB5_79
.LBB5_80:                               # %if.else.21
	movl	$cos_dict_procs, %esi
	movq	%rbp, %rdi
	callq	cos_become
	movl	96(%r13), %edx
	leaq	184(%rsp), %rcx
	movq	%rbp, %rdi
	movq	%rbp, 144(%rsp)         # 8-byte Spill
	movq	%r12, %rsi
	callq	pdf_put_shading_common
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB5_97
# BB#81:                                # %if.then.26
	movq	%rbx, 136(%rsp)         # 8-byte Spill
	movq	184(%rsp), %rbx
	movl	(%r12), %eax
	cmpl	$3, %eax
	je	.LBB5_95
# BB#82:                                # %if.then.26
	movl	$0, 128(%rsp)           # 4-byte Folded Spill
	cmpl	$2, %eax
	jne	.LBB5_83
# BB#93:                                # %sw.bb.7.i
	leaq	84(%r12), %rsi
	leaq	100(%r12), %rcx
	movq	112(%r12), %r8
	addq	$120, %r12
	movq	%rbx, (%rsp)
	movl	$4, %edx
	jmp	.LBB5_94
.LBB5_96:                               # %if.else
	movq	%rdi, 144(%rsp)         # 8-byte Spill
.LBB5_97:                               # %if.else.28
	movq	192(%rsp), %rax
	movq	$0, 56(%rax)
	movl	$0, 128(%rsp)           # 4-byte Folded Spill
	jmp	.LBB5_98
.LBB5_29:                               # %if.else.77.i
	movq	112(%rbx), %rdx
	movq	120(%rsp), %rax         # 8-byte Reload
	leal	4(%rax,%rax), %ecx
	movl	$.L.str.33, %esi
	movq	128(%rsp), %rdi         # 8-byte Reload
	callq	cos_dict_put_c_key_floats
	movl	%eax, %esi
	testl	%esi, %esi
	movq	104(%rsp), %r15         # 8-byte Reload
	js	.LBB5_79
# BB#30:                                # %if.end.87.i
	movq	624(%rsp), %rsi
	movq	144(%rsp), %rdi         # 8-byte Reload
	callq	cos_stream_add_stream_contents
	movl	%eax, %esi
	testl	%esi, %esi
	js	.LBB5_79
# BB#31:                                # %lor.lhs.false.90.i
	movq	%rbx, 96(%rsp)          # 8-byte Spill
	movl	104(%rbx), %edx
	movl	108(%rbx), %eax
	movq	120(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB5_32
# BB#33:                                # %lor.lhs.false.90.i.if.then.i.114.i_crit_edge
	movl	%edx, 80(%rsp)          # 4-byte Spill
	movl	%eax, 88(%rsp)          # 4-byte Spill
	movq	128(%rsp), %rax         # 8-byte Reload
	addq	$32, %rax
	movl	$-1, %ebx
.LBB5_34:                               # %if.then.i.114.i
	movq	(%rax), %rdi
	leaq	736(%rsp), %rcx
	movq	112(%rsp), %rdx         # 8-byte Reload
	callq	pdf_function_scaled
	movl	%eax, %esi
	testl	%esi, %esi
	js	.LBB5_79
# BB#35:                                # %pdf_put_shading_Function.exit.i
	movl	%ebx, 112(%rsp)         # 4-byte Spill
	leaq	736(%rsp), %rdx
	movl	$.L.str.38, %esi
	movq	128(%rsp), %rdi         # 8-byte Reload
	callq	cos_dict_put_c_key
	movl	%eax, %esi
	testl	%esi, %esi
	movl	80(%rsp), %edx          # 4-byte Reload
	jns	.LBB5_36
	jmp	.LBB5_79
.LBB5_95:                               # %sw.bb.17.i
	movl	$0, 128(%rsp)           # 4-byte Folded Spill
	leaq	108(%r12), %rcx
	movq	120(%r12), %r8
	leaq	84(%r12), %rsi
	subq	$-128, %r12
	movq	%rbx, (%rsp)
	movl	$6, %edx
.LBB5_94:                               # %if.end.31
	movq	144(%rsp), %rdi         # 8-byte Reload
	movq	%r12, %r9
	callq	pdf_put_linear_shading
	movl	%eax, %ebp
	movq	136(%rsp), %rbx         # 8-byte Reload
	jmp	.LBB5_98
.LBB5_83:                               # %if.then.26
	movl	$-15, %ebp
	cmpl	$1, %eax
	jne	.LBB5_84
# BB#85:                                # %sw.bb.i.57
	leaq	84(%r12), %rdx
	movl	$.L.str.39, %esi
	movl	$4, %ecx
	movq	144(%rsp), %rdi         # 8-byte Reload
	callq	cos_dict_put_c_key_floats
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB5_86
# BB#87:                                # %lor.lhs.false.i
	addq	$16, %r12
	movq	112(%r12), %rsi
	testq	%rsi, %rsi
	je	.LBB5_92
# BB#88:                                # %if.then.i.i
	movq	144(%rsp), %rax         # 8-byte Reload
	movq	32(%rax), %rdi
	leaq	272(%rsp), %rcx
	movq	%rbx, %rdx
	callq	pdf_function_scaled
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB5_89
# BB#90:                                # %pdf_put_shading_Function.exit.i.64
	leaq	272(%rsp), %rdx
	movl	$.L.str.38, %esi
	movq	144(%rsp), %rdi         # 8-byte Reload
	callq	cos_dict_put_c_key
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB5_91
.LBB5_92:                               # %lor.lhs.false.4.i
	movl	84(%r12), %eax
	movl	%eax, 272(%rsp)
	movl	88(%r12), %eax
	movl	%eax, 276(%rsp)
	movl	92(%r12), %eax
	movl	%eax, 280(%rsp)
	movl	96(%r12), %eax
	movl	%eax, 284(%rsp)
	movl	100(%r12), %eax
	movl	%eax, 288(%rsp)
	movl	104(%r12), %eax
	movl	%eax, 292(%rsp)
	leaq	272(%rsp), %rdx
	movl	$.L.str.7, %esi
	movl	$6, %ecx
	movq	144(%rsp), %rdi         # 8-byte Reload
	callq	cos_dict_put_c_key_floats
	movl	%eax, %ebp
	sarl	$31, %ebp
	andl	%eax, %ebp
	movq	136(%rsp), %rbx         # 8-byte Reload
	jmp	.LBB5_98
.LBB5_84:
	movq	136(%rsp), %rbx         # 8-byte Reload
	jmp	.LBB5_98
.LBB5_32:
	movl	%eax, 88(%rsp)          # 4-byte Spill
	movl	$-1, 112(%rsp)          # 4-byte Folded Spill
.LBB5_36:                               # %lor.lhs.false.95.i
	movl	$.L.str.34, %esi
	movq	128(%rsp), %rdi         # 8-byte Reload
	callq	cos_dict_put_c_key_int
	movl	%eax, %esi
	testl	%esi, %esi
	js	.LBB5_79
# BB#37:                                # %lor.lhs.false.99.i
	movl	$.L.str.35, %esi
	movq	128(%rsp), %rdi         # 8-byte Reload
	movl	88(%rsp), %edx          # 4-byte Reload
	callq	cos_dict_put_c_key_int
	testl	%eax, %eax
	js	.LBB5_78
# BB#38:                                # %if.end.104.i
	movl	(%r12), %ecx
	movl	$-15, %esi
	addl	$-4, %ecx
	cmpl	$3, %ecx
	ja	.LBB5_79
# BB#39:                                # %if.end.104.i
	movl	76(%rsp), %edx          # 4-byte Reload
	jmpq	*.LJTI5_0(,%rcx,8)
.LBB5_40:                               # %sw.bb.i
	movl	$1, 704(%rsp)
	movq	120(%rsp), %rcx         # 8-byte Reload
	movl	%ecx, 708(%rsp)
	cmpl	$2, %edx
	jne	.LBB5_41
# BB#42:
	leaq	272(%rsp), %r12
	movl	%eax, %esi
.LBB5_43:                               # %while.cond.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%esi, %ebx
	xorl	%esi, %esi
	movq	%r12, %rdi
	callq	shade_next_flag
	testl	%eax, %eax
	js	.LBB5_45
# BB#44:                                # %while.body.i
                                        #   in Loop: Header=BB5_43 Depth=1
	movq	144(%rsp), %rdi         # 8-byte Reload
	movq	%r12, %rsi
	movl	%eax, %edx
	leaq	704(%rsp), %rcx
	callq	put_float_mesh_data
	movl	%eax, %esi
	testl	%esi, %esi
	jns	.LBB5_43
	jmp	.LBB5_79
.LBB5_86:
	movq	136(%rsp), %rbx         # 8-byte Reload
	jmp	.LBB5_98
.LBB5_89:                               # %pdf_put_shading_Function.exit.thread24.i
	movq	136(%rsp), %rbx         # 8-byte Reload
	jmp	.LBB5_98
.LBB5_14:                               # %for.cond.32.preheader.i
	movq	120(%rsp), %rax         # 8-byte Reload
	testl	%eax, %eax
	jle	.LBB5_18
# BB#15:                                # %for.body.35.lr.ph.i
	movq	120(%rsp), %rax         # 8-byte Reload
	cltq
	movq	%rax, 8(%rsp)           # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 88(%rsp)          # 8-byte Spill
	movsd	.LCPI5_2(%rip), %xmm0   # xmm0 = mem[0],zero
	pslldq	$8, %xmm0               # xmm0 = zero,zero,zero,zero,zero,zero,zero,zero,xmm0[0,1,2,3,4,5,6,7]
	movdqa	%xmm0, 16(%rsp)         # 16-byte Spill
	xorl	%eax, %eax
	movq	%rax, 40(%rsp)          # 8-byte Spill
                                        # implicit-def: EAX
	movl	%eax, 72(%rsp)          # 4-byte Spill
.LBB5_22:                               # %for.body.35.i
                                        # =>This Inner Loop Header: Depth=1
	movq	80(%rsp), %rcx          # 8-byte Reload
	testq	%rcx, %rcx
	movapd	16(%rsp), %xmm1         # 16-byte Reload
	movapd	%xmm1, %xmm0
	je	.LBB5_26
# BB#23:                                # %for.body.35.i
                                        #   in Loop: Header=BB5_22 Depth=1
	cmpq	$0, 112(%rsp)           # 8-byte Folded Reload
	movapd	%xmm1, %xmm0
	jne	.LBB5_26
# BB#24:                                # %for.body.35.i
                                        #   in Loop: Header=BB5_22 Depth=1
	movq	96(%rsp), %rax          # 8-byte Reload
	movq	120(%rax), %rax
	testq	%rax, %rax
	movapd	%xmm1, %xmm0
	jne	.LBB5_26
# BB#25:                                # %if.else.44.i
                                        #   in Loop: Header=BB5_22 Depth=1
	movq	88(%rsp), %rax          # 8-byte Reload
	cltq
	cvtps2pd	(%rcx,%rax,4), %xmm0
.LBB5_26:                               # %if.end.52.i
                                        #   in Loop: Header=BB5_22 Depth=1
	movapd	%xmm0, 48(%rsp)         # 16-byte Spill
	movq	%rbx, %rdi
	callq	cos_array_add_real
	movl	%eax, %esi
	testl	%esi, %esi
	js	.LBB5_79
# BB#27:                                # %pdf_array_add_real2.exit111.i
                                        #   in Loop: Header=BB5_22 Depth=1
	movapd	48(%rsp), %xmm0         # 16-byte Reload
	shufpd	$1, %xmm0, %xmm0        # xmm0 = xmm0[1,0]
	movq	%rbx, %rdi
	callq	cos_array_add_real
	testl	%eax, %eax
	movl	72(%rsp), %ecx          # 4-byte Reload
	cmovsl	%eax, %ecx
	movl	%ecx, %eax
	js	.LBB5_78
# BB#21:                                # %for.cond.32.i
                                        #   in Loop: Header=BB5_22 Depth=1
	movl	%eax, 72(%rsp)          # 4-byte Spill
	movq	40(%rsp), %rax          # 8-byte Reload
	movq	%rax, %rcx
	incq	%rcx
	movq	%rcx, 40(%rsp)          # 8-byte Spill
	movq	88(%rsp), %rax          # 8-byte Reload
	addl	$2, %eax
	movq	%rax, 88(%rsp)          # 8-byte Spill
	cmpq	8(%rsp), %rcx           # 8-byte Folded Reload
	jl	.LBB5_22
.LBB5_18:                               # %if.end.62.i
	movl	$.L.str.33, %esi
	movq	128(%rsp), %rdi         # 8-byte Reload
	movq	%rbx, %rdx
	callq	cos_dict_put_c_key_object
	movl	%eax, %esi
	testl	%esi, %esi
	js	.LBB5_79
# BB#19:                                # %if.end.67.i
	leaq	232(%rsp), %rbx
	movq	%rbx, %rdi
	callq	gs_make_identity
	movl	$0, 260(%rsp)
	movl	$0, 256(%rsp)
	movl	$1, 264(%rsp)
	movq	%rbx, 656(%rsp)
	movq	96(%rsp), %rax          # 8-byte Reload
	movq	120(%rax), %rsi
	testq	%rsi, %rsi
	je	.LBB5_20
# BB#28:                                # %lor.lhs.false.90.thread.i
	movq	128(%rsp), %rax         # 8-byte Reload
	addq	$32, %rax
	movq	$0, 728(%rsp)
	movl	$24, 80(%rsp)           # 4-byte Folded Spill
	movl	$16, 88(%rsp)           # 4-byte Folded Spill
	movl	$8, %ebx
	jmp	.LBB5_34
.LBB5_91:
	movq	136(%rsp), %rbx         # 8-byte Reload
	jmp	.LBB5_98
.LBB5_50:                               # %sw.bb.136.i
	movl	$1, 704(%rsp)
	movq	120(%rsp), %rax         # 8-byte Reload
	movl	%eax, 708(%rsp)
	cmpl	$2, %edx
	jne	.LBB5_77
# BB#51:                                # %while.cond.142.preheader.i
	leaq	272(%rsp), %rbx
	leaq	704(%rsp), %r12
.LBB5_52:                               # %while.cond.142.i
                                        # =>This Inner Loop Header: Depth=1
	movq	624(%rsp), %rax
	movq	112(%rax), %rcx
	cmpq	120(%rax), %rcx
	jb	.LBB5_54
# BB#53:                                # %land.rhs.i
                                        #   in Loop: Header=BB5_52 Depth=1
	movzwl	152(%rax), %eax
	cmpl	$65535, %eax            # imm = 0xFFFF
	je	.LBB5_77
.LBB5_54:                               # %while.body.158.i
                                        #   in Loop: Header=BB5_52 Depth=1
	movl	$-1, %edx
	movq	144(%rsp), %rdi         # 8-byte Reload
	movq	%rbx, %rsi
	movq	%r12, %rcx
	callq	put_float_mesh_data
	movl	%eax, %esi
	testl	%esi, %esi
	jns	.LBB5_52
	jmp	.LBB5_79
.LBB5_55:                               # %sw.bb.168.i
	cmpl	$2, %edx
	jne	.LBB5_56
# BB#57:                                # %while.cond.172.preheader.i
	leaq	272(%rsp), %r12
	movl	%eax, %esi
.LBB5_58:                               # %while.cond.172.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%esi, %ebx
	xorl	%esi, %esi
	movq	%r12, %rdi
	callq	shade_next_flag
	testl	%eax, %eax
	js	.LBB5_60
# BB#59:                                # %while.body.176.i
                                        #   in Loop: Header=BB5_58 Depth=1
	sete	%cl
	movzbl	%cl, %ecx
	leal	8(,%rcx,4), %edx
	movl	%edx, 704(%rsp)
	leal	2(%rcx,%rcx), %ecx
	movq	120(%rsp), %rdx         # 8-byte Reload
	imull	%edx, %ecx
	movl	%ecx, 708(%rsp)
	movq	144(%rsp), %rdi         # 8-byte Reload
	movq	%r12, %rsi
	movl	%eax, %edx
	leaq	704(%rsp), %rcx
	callq	put_float_mesh_data
	movl	%eax, %esi
	testl	%esi, %esi
	jns	.LBB5_58
	jmp	.LBB5_79
.LBB5_65:                               # %sw.bb.218.i
	cmpl	$2, %edx
	jne	.LBB5_66
# BB#67:                                # %while.cond.222.preheader.i
	leaq	272(%rsp), %r12
	movl	%eax, %esi
.LBB5_68:                               # %while.cond.222.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%esi, %ebx
	xorl	%esi, %esi
	movq	%r12, %rdi
	callq	shade_next_flag
	testl	%eax, %eax
	js	.LBB5_70
# BB#69:                                # %while.body.226.i
                                        #   in Loop: Header=BB5_68 Depth=1
	sete	%cl
	movzbl	%cl, %ecx
	leal	12(,%rcx,4), %edx
	movl	%edx, 704(%rsp)
	leal	2(%rcx,%rcx), %ecx
	movq	120(%rsp), %rdx         # 8-byte Reload
	imull	%edx, %ecx
	movl	%ecx, 708(%rsp)
	movq	144(%rsp), %rdi         # 8-byte Reload
	movq	%r12, %rsi
	movl	%eax, %edx
	leaq	704(%rsp), %rcx
	callq	put_float_mesh_data
	movl	%eax, %esi
	testl	%esi, %esi
	jns	.LBB5_68
	jmp	.LBB5_79
.LBB5_20:
	movl	$24, %edx
	movl	$16, 88(%rsp)           # 4-byte Folded Spill
	movl	$8, 112(%rsp)           # 4-byte Folded Spill
	jmp	.LBB5_36
.LBB5_77:                               # %if.end.165.i
	movq	96(%rsp), %rax          # 8-byte Reload
	movl	128(%rax), %edx
	movl	$.L.str.36, %esi
	movq	128(%rsp), %rdi         # 8-byte Reload
	callq	cos_dict_put_c_key_int
.LBB5_78:                               # %pdf_put_mesh_shading.exit
	movl	%eax, %esi
	jmp	.LBB5_79
.LBB5_41:
	movl	%eax, %ebx
	jmp	.LBB5_48
.LBB5_56:
	movl	%eax, %ebx
	jmp	.LBB5_63
.LBB5_66:
	movl	%eax, %ebx
	jmp	.LBB5_73
.LBB5_45:                               # %while.end.i
	movq	624(%rsp), %rax
	movq	112(%rax), %rcx
	cmpq	120(%rax), %rcx
	jb	.LBB5_47
# BB#46:                                # %land.lhs.true.i
	movzwl	152(%rax), %eax
	cmpl	$65535, %eax            # imm = 0xFFFF
	je	.LBB5_48
.LBB5_47:                               # %if.then.127.i
	movl	$-15, %ebx
.LBB5_48:                               # %if.end.129.i
	cmpl	$0, 112(%rsp)           # 4-byte Folded Reload
	js	.LBB5_75
# BB#49:
	movl	112(%rsp), %edx         # 4-byte Reload
	jmp	.LBB5_76
.LBB5_60:                               # %while.end.191.i
	movq	624(%rsp), %rax
	movq	112(%rax), %rcx
	cmpq	120(%rax), %rcx
	jb	.LBB5_62
# BB#61:                                # %land.lhs.true.202.i
	movzwl	152(%rax), %eax
	cmpl	$65535, %eax            # imm = 0xFFFF
	je	.LBB5_63
.LBB5_62:                               # %if.then.208.i
	movl	$-15, %ebx
.LBB5_63:                               # %if.end.210.i
	cmpl	$0, 112(%rsp)           # 4-byte Folded Reload
	js	.LBB5_75
# BB#64:
	movl	112(%rsp), %edx         # 4-byte Reload
	jmp	.LBB5_76
.LBB5_70:                               # %while.end.241.i
	movq	624(%rsp), %rax
	movq	112(%rax), %rcx
	cmpq	120(%rax), %rcx
	jb	.LBB5_72
# BB#71:                                # %land.lhs.true.252.i
	movzwl	152(%rax), %eax
	cmpl	$65535, %eax            # imm = 0xFFFF
	je	.LBB5_73
.LBB5_72:                               # %if.then.258.i
	movl	$-15, %ebx
.LBB5_73:                               # %if.end.260.i
	cmpl	$0, 112(%rsp)           # 4-byte Folded Reload
	js	.LBB5_75
# BB#74:
	movl	112(%rsp), %edx         # 4-byte Reload
	jmp	.LBB5_76
.LBB5_75:                               # %if.then.263.i
	movq	96(%rsp), %rax          # 8-byte Reload
	movl	128(%rax), %edx
.LBB5_76:                               # %sw.epilog.i
	movl	$.L.str.37, %esi
	movq	128(%rsp), %rdi         # 8-byte Reload
	callq	cos_dict_put_c_key_int
	movl	%ebx, %esi
.LBB5_79:                               # %pdf_put_mesh_shading.exit
	movl	%esi, 128(%rsp)         # 4-byte Spill
	movq	136(%rsp), %rbx         # 8-byte Reload
.LBB5_98:                               # %if.end.31
	movq	192(%rsp), %rax
	cmpq	$0, 56(%rax)
	je	.LBB5_101
# BB#99:                                # %if.then.33
	leaq	192(%rsp), %rsi
	movl	$3, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movq	%r14, %rdi
	callq	pdf_substitute_resource
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB5_110
# BB#100:                               # %if.end.37
	movq	192(%rsp), %rax
	movq	64(%rax), %rcx
	movq	%rcx, 144(%rsp)         # 8-byte Spill
	movq	26664(%r14), %rcx
	orq	%rcx, 56(%rax)
.LBB5_101:                              # %if.end.40
	movq	32(%r13), %rdi
	leaq	160(%rsp), %rsi
	callq	gs_currentmatrix
	cmpl	$0, 30408(%r14)
	je	.LBB5_103
# BB#102:
	movapd	.LCPI5_4(%rip), %xmm0   # xmm0 = [1.000000e+00,1.000000e+00]
	jmp	.LBB5_104
.LBB5_103:                              # %if.then.43
	cvtps2pd	884(%r14), %xmm1
	movapd	.LCPI5_5(%rip), %xmm0   # xmm0 = [7.200000e+01,7.200000e+01]
	divpd	%xmm1, %xmm0
.LBB5_104:                              # %if.end.48
	movss	160(%rsp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm1
	movss	%xmm1, 160(%rsp)
	movss	168(%rsp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm1
	movss	%xmm1, 168(%rsp)
	movss	176(%rsp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm1
	movss	%xmm1, 176(%rsp)
	movss	164(%rsp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	shufpd	$1, %xmm0, %xmm0        # xmm0 = xmm0[1,0]
	mulsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm1
	movss	%xmm1, 164(%rsp)
	movss	172(%rsp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm1
	movss	%xmm1, 172(%rsp)
	movss	180(%rsp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, 180(%rsp)
	testl	%ebp, %ebp
	js	.LBB5_110
# BB#105:                               # %lor.lhs.false
	movl	$.L.str.3, %esi
	movl	$2, %edx
	movq	152(%rsp), %rdi         # 8-byte Reload
	callq	cos_dict_put_c_key_int
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB5_110
# BB#106:                               # %lor.lhs.false.71
	movl	$.L.str.16, %esi
	movq	152(%rsp), %rdi         # 8-byte Reload
	movq	144(%rsp), %rdx         # 8-byte Reload
	callq	cos_dict_put_c_key_object
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB5_110
# BB#107:                               # %lor.lhs.false.75
	movaps	160(%rsp), %xmm0
	movaps	%xmm0, 272(%rsp)
	movl	176(%rsp), %eax
	movl	%eax, 288(%rsp)
	movl	180(%rsp), %eax
	movl	%eax, 292(%rsp)
	leaq	272(%rsp), %rdx
	movl	$.L.str.7, %esi
	movl	$6, %ecx
	movq	152(%rsp), %rdi         # 8-byte Reload
	callq	cos_dict_put_c_key_floats
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB5_110
# BB#108:                               # %if.end.80
	leaq	200(%rsp), %rsi
	movl	$2, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movq	%r14, %rdi
	callq	pdf_substitute_resource
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB5_110
# BB#109:                               # %if.end.85
	movq	26664(%r14), %rax
	movq	200(%rsp), %rcx
	orq	%rax, 56(%rcx)
	movq	%rcx, (%r15)
	leaq	208(%rsp), %rdi
	movq	%r14, %rsi
	callq	cos_value_write
	movq	5848(%r14), %rdi
	movq	24(%rbx), %rdx
	movl	$.L.str.17, %esi
	callq	pprints1
	movl	128(%rsp), %ebp         # 4-byte Reload
.LBB5_110:                              # %cleanup
	movl	%ebp, %eax
	addq	$760, %rsp              # imm = 0x2F8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	pdf_put_pattern2, .Lfunc_end5-pdf_put_pattern2
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI5_0:
	.quad	.LBB5_40
	.quad	.LBB5_50
	.quad	.LBB5_55
	.quad	.LBB5_65

	.text
	.align	16, 0x90
	.type	pdf_put_shading_common,@function
pdf_put_shading_common:                 # @pdf_put_shading_common
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
	pushq	%r12
.Ltmp81:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp82:
	.cfi_def_cfa_offset 48
	subq	$80, %rsp
.Ltmp83:
	.cfi_def_cfa_offset 128
.Ltmp84:
	.cfi_offset %rbx, -48
.Ltmp85:
	.cfi_offset %r12, -40
.Ltmp86:
	.cfi_offset %r14, -32
.Ltmp87:
	.cfi_offset %r15, -24
.Ltmp88:
	.cfi_offset %rbp, -16
	movq	%rcx, %rbp
	movl	%edx, %r12d
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movl	(%rbx), %edx
	movq	16(%rbx), %r15
	movl	$.L.str.27, %esi
	callq	cos_dict_put_c_key_int
	testl	%eax, %eax
	js	.LBB6_11
# BB#1:                                 # %lor.lhs.false
	cmpl	$0, 80(%rbx)
	je	.LBB6_3
# BB#2:                                 # %land.lhs.true
	movl	$.L.str.28, %esi
	movl	$.L.str.29, %edx
	movq	%r14, %rdi
	callq	cos_dict_put_c_strings
	testl	%eax, %eax
	js	.LBB6_11
.LBB6_3:                                # %lor.lhs.false.5
	movq	32(%r14), %rdi
	movl	$0, 16(%rsp)
	movl	$0, 8(%rsp)
	movq	$0, (%rsp)
	leaq	56(%rsp), %rsi
	movl	$pdf_color_space_names, %r8d
	xorl	%r9d, %r9d
	movq	%rbp, %rdx
	movq	%r15, %rcx
	callq	pdf_color_space_named
	testl	%eax, %eax
	js	.LBB6_11
# BB#4:                                 # %lor.lhs.false.8
	leaq	56(%rsp), %rdx
	movl	$.L.str.30, %esi
	movq	%r14, %rdi
	callq	cos_dict_put_c_key
	testl	%eax, %eax
	js	.LBB6_11
# BB#5:                                 # %if.end
	testl	%r12d, %r12d
	jne	.LBB6_8
# BB#6:                                 # %if.end
	movq	32(%rbx), %rbp
	testq	%rbp, %rbp
	je	.LBB6_8
# BB#7:                                 # %if.then.15
	addq	$8, %rbp
	movq	%r15, %rdi
	callq	gs_color_space_num_components
	movl	$.L.str.31, %esi
	movq	%r14, %rdi
	movq	%rbp, %rdx
	movl	%eax, %ecx
	callq	cos_dict_put_c_key_floats
	testl	%eax, %eax
	js	.LBB6_11
.LBB6_8:                                # %if.end.23
	cmpl	$0, 40(%rbx)
	je	.LBB6_10
# BB#9:                                 # %if.then.26
	movsd	48(%rbx), %xmm0         # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 32(%rsp)
	movsd	56(%rbx), %xmm0         # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 36(%rsp)
	movsd	64(%rbx), %xmm0         # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 40(%rsp)
	movsd	72(%rbx), %xmm0         # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 44(%rsp)
	leaq	32(%rsp), %rdx
	movl	$.L.str.6, %esi
	movl	$4, %ecx
	movq	%r14, %rdi
	callq	cos_dict_put_c_key_floats
	testl	%eax, %eax
	js	.LBB6_11
.LBB6_10:                               # %if.end.50
	xorl	%eax, %eax
.LBB6_11:                               # %cleanup.51
	addq	$80, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	pdf_put_shading_common, .Lfunc_end6-pdf_put_shading_common
	.cfi_endproc

	.globl	gdev_pdf_include_color_space
	.align	16, 0x90
	.type	gdev_pdf_include_color_space,@function
gdev_pdf_include_color_space:           # @gdev_pdf_include_color_space
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$56, %rsp
.Ltmp89:
	.cfi_def_cfa_offset 64
	movq	%rsi, %rax
	movl	%ecx, 8(%rsp)
	movq	%rdx, (%rsp)
	movl	$0, 16(%rsp)
	leaq	32(%rsp), %rsi
	xorl	%edx, %edx
	movl	$pdf_color_space_names, %r8d
	movl	$1, %r9d
	movq	%rax, %rcx
	callq	pdf_color_space_named
	addq	$56, %rsp
	retq
.Lfunc_end7:
	.size	gdev_pdf_include_color_space, .Lfunc_end7-gdev_pdf_include_color_space
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI8_0:
	.quad	4571153621781053440     # double 0.00390625
.LCPI8_1:
	.quad	4670232813583204352     # double 16384
.LCPI8_2:
	.quad	4647714815714787360     # double 512.00003051758176
.LCPI8_3:
	.quad	-4508103226997866496    # double -16777216
.LCPI8_4:
	.quad	4715268809856909312     # double 16777216
.LCPI8_5:
	.quad	4607182418800017408     # double 1
.LCPI8_6:
	.quad	4679239875398991872     # double 65535
.LCPI8_7:
	.quad	-4544132024016830464    # double -65536
.LCPI8_8:
	.quad	4679240012837945344     # double 65536
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI8_9:
	.long	0                       # float 0
	.text
	.align	16, 0x90
	.type	put_float_mesh_data,@function
put_float_mesh_data:                    # @put_float_mesh_data
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp90:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp91:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp92:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp93:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp94:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp95:
	.cfi_def_cfa_offset 56
	subq	$280, %rsp              # imm = 0x118
.Ltmp96:
	.cfi_def_cfa_offset 336
.Ltmp97:
	.cfi_offset %rbx, -56
.Ltmp98:
	.cfi_offset %r12, -48
.Ltmp99:
	.cfi_offset %r13, -40
.Ltmp100:
	.cfi_offset %r14, -32
.Ltmp101:
	.cfi_offset %r15, -24
.Ltmp102:
	.cfi_offset %rbp, -16
	movq	%rcx, %rbp
	movl	%edx, %r12d
	movq	%rsi, %r14
	movq	%rdi, %r15
	movl	(%rbp), %r13d
	movq	16(%rbp), %rbx
	movq	24(%rbp), %rax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	movb	%r12b, 176(%rsp)
	leaq	48(%rsp), %rsi
	movq	%r14, %rdi
	movl	%r13d, %edx
	callq	shade_next_coords
	testl	%eax, %eax
	js	.LBB8_25
# BB#1:                                 # %for.cond.preheader
	movq	%rbx, 8(%rsp)           # 8-byte Spill
	testl	%r13d, %r13d
	jle	.LBB8_10
# BB#2:                                 # %for.body.lr.ph
	leaq	182(%rsp), %rax
	leaq	52(%rsp), %rcx
	movsd	.LCPI8_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI8_1(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	.LCPI8_2(%rip), %xmm2   # xmm2 = mem[0],zero
	movsd	.LCPI8_3(%rip), %xmm3   # xmm3 = mem[0],zero
	movl	%r13d, %esi
	.align	16, 0x90
.LBB8_3:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	xorps	%xmm4, %xmm4
	cvtsi2sdl	-4(%rcx), %xmm4
	mulsd	%xmm0, %xmm4
	addsd	%xmm1, %xmm4
	mulsd	%xmm2, %xmm4
	movl	$-16777215, %ebx        # imm = 0xFFFFFFFFFF000001
	ucomisd	%xmm4, %xmm3
	movl	$-16777215, %edx        # imm = 0xFFFFFFFFFF000001
	jae	.LBB8_6
# BB#4:                                 # %if.else.i.i
                                        #   in Loop: Header=BB8_3 Depth=1
	movl	$16777215, %edx         # imm = 0xFFFFFF
	ucomisd	.LCPI8_4(%rip), %xmm4
	jae	.LBB8_6
# BB#5:                                 # %if.else.8.i.i
                                        #   in Loop: Header=BB8_3 Depth=1
	cvttsd2si	%xmm4, %edx
.LBB8_6:                                # %put_clamped_coord.exit
                                        #   in Loop: Header=BB8_3 Depth=1
	movl	%edx, %edi
	shrl	$16, %edi
	movb	%dil, -5(%rax)
	movb	%dh, -4(%rax)  # NOREX
	movb	%dl, -3(%rax)
	xorps	%xmm4, %xmm4
	cvtsi2sdl	(%rcx), %xmm4
	mulsd	%xmm0, %xmm4
	addsd	%xmm1, %xmm4
	mulsd	%xmm2, %xmm4
	ucomisd	%xmm4, %xmm3
	jae	.LBB8_9
# BB#7:                                 # %if.else.i.i.51
                                        #   in Loop: Header=BB8_3 Depth=1
	movl	$16777215, %ebx         # imm = 0xFFFFFF
	ucomisd	.LCPI8_4(%rip), %xmm4
	jae	.LBB8_9
# BB#8:                                 # %if.else.8.i.i.53
                                        #   in Loop: Header=BB8_3 Depth=1
	cvttsd2si	%xmm4, %ebx
.LBB8_9:                                # %put_clamped_coord.exit62
                                        #   in Loop: Header=BB8_3 Depth=1
	movl	%ebx, %edx
	shrl	$16, %edx
	movb	%dl, -2(%rax)
	movb	%bh, -1(%rax)  # NOREX
	movb	%bl, (%rax)
	addq	$6, %rax
	addq	$8, %rcx
	decl	%esi
	jne	.LBB8_3
.LBB8_10:                               # %for.end
	shrl	$31, %r12d
	leaq	176(%rsp), %rsi
	orq	%r12, %rsi
	addl	%r13d, %r13d
	leal	(%r13,%r13,2), %edx
	orl	%r12d, %edx
	xorl	$1, %edx
	movq	%r15, %rdi
	callq	cos_stream_add_bytes
	testl	%eax, %eax
	movq	8(%rsp), %rbx           # 8-byte Reload
	js	.LBB8_25
# BB#11:                                # %for.cond.32.preheader
	xorl	%eax, %eax
	cmpl	$0, 4(%rbp)
	jle	.LBB8_25
# BB#12:                                # %for.body.35.lr.ph
	xorl	%r12d, %r12d
	movsd	.LCPI8_5(%rip), %xmm0   # xmm0 = mem[0],zero
	pslldq	$8, %xmm0               # xmm0 = zero,zero,zero,zero,zero,zero,zero,zero,xmm0[0,1,2,3,4,5,6,7]
	movdqa	%xmm0, 16(%rsp)         # 16-byte Spill
	xorl	%r13d, %r13d
	.align	16, 0x90
.LBB8_14:                               # %for.body.35
                                        # =>This Inner Loop Header: Depth=1
	xorl	%esi, %esi
	xorl	%edx, %edx
	movq	%r14, %rdi
	leaq	44(%rsp), %rcx
	callq	*400(%r14)
	cmpl	$0, 8(%rbp)
	je	.LBB8_16
# BB#15:                                # %if.then.37
                                        #   in Loop: Header=BB8_14 Depth=1
	movss	44(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	addss	.LCPI8_9, %xmm0
	cvtss2sd	%xmm0, %xmm0
	jmp	.LBB8_21
	.align	16, 0x90
.LBB8_16:                               # %if.else
                                        #   in Loop: Header=BB8_14 Depth=1
	testq	%rbx, %rbx
	movapd	16(%rsp), %xmm0         # 16-byte Reload
	je	.LBB8_18
# BB#17:                                # %if.then.41
                                        #   in Loop: Header=BB8_14 Depth=1
	movslq	%r12d, %rax
	cvtps2pd	(%rbx,%rax,4), %xmm0
.LBB8_18:                               # %if.end.52
                                        #   in Loop: Header=BB8_14 Depth=1
	movq	32(%rsp), %rax          # 8-byte Reload
	testq	%rax, %rax
	je	.LBB8_20
# BB#19:                                # %if.then.54
                                        #   in Loop: Header=BB8_14 Depth=1
	movss	(%rax,%r13,8), %xmm1    # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	movss	4(%rax,%r13,8), %xmm2   # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	subsd	%xmm1, %xmm2
	movlhps	%xmm2, %xmm2            # xmm2 = xmm2[0,0]
	mulpd	%xmm0, %xmm2
	movlhps	%xmm1, %xmm1            # xmm1 = xmm1[0,0]
	addpd	%xmm2, %xmm1
	movapd	%xmm1, %xmm0
.LBB8_20:                               # %if.end.65
                                        #   in Loop: Header=BB8_14 Depth=1
	movss	44(%rsp), %xmm1         # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	subsd	%xmm0, %xmm1
	movapd	%xmm0, %xmm2
	shufpd	$1, %xmm2, %xmm2        # xmm2 = xmm2[1,0]
	subsd	%xmm0, %xmm2
	movsd	.LCPI8_6(%rip), %xmm0   # xmm0 = mem[0],zero
	divsd	%xmm2, %xmm0
	mulsd	%xmm1, %xmm0
.LBB8_21:                               # %if.end.70
                                        #   in Loop: Header=BB8_14 Depth=1
	movl	$-65535, %eax           # imm = 0xFFFFFFFFFFFF0001
	movsd	.LCPI8_7(%rip), %xmm1   # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jae	.LBB8_24
# BB#22:                                # %if.else.i
                                        #   in Loop: Header=BB8_14 Depth=1
	movl	$65535, %eax            # imm = 0xFFFF
	ucomisd	.LCPI8_8(%rip), %xmm0
	jae	.LBB8_24
# BB#23:                                # %if.else.8.i
                                        #   in Loop: Header=BB8_14 Depth=1
	cvttsd2si	%xmm0, %eax
.LBB8_24:                               # %if.end.10.i
                                        #   in Loop: Header=BB8_14 Depth=1
	movb	%ah, 176(%rsp)  # NOREX
	movb	%al, 177(%rsp)
	movl	$2, %edx
	movq	%r15, %rdi
	leaq	176(%rsp), %rsi
	callq	cos_stream_add_bytes
	testl	%eax, %eax
	js	.LBB8_25
# BB#13:                                # %for.cond.32
                                        #   in Loop: Header=BB8_14 Depth=1
	incq	%r13
	movslq	4(%rbp), %rcx
	addl	$2, %r12d
	xorl	%eax, %eax
	cmpq	%rcx, %r13
	jl	.LBB8_14
.LBB8_25:                               # %cleanup.82
	addq	$280, %rsp              # imm = 0x118
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	put_float_mesh_data, .Lfunc_end8-put_float_mesh_data
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI9_0:
	.long	1065353216              # float 1
	.text
	.align	16, 0x90
	.type	pdf_put_linear_shading,@function
pdf_put_linear_shading:                 # @pdf_put_linear_shading
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp103:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp104:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp105:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp106:
	.cfi_def_cfa_offset 40
	subq	$24, %rsp
.Ltmp107:
	.cfi_def_cfa_offset 64
.Ltmp108:
	.cfi_offset %rbx, -40
.Ltmp109:
	.cfi_offset %r12, -32
.Ltmp110:
	.cfi_offset %r14, -24
.Ltmp111:
	.cfi_offset %r15, -16
	movq	%r9, %r14
	movq	%r8, %r15
	movq	%rcx, %rbx
	movl	%edx, %eax
	movq	%rsi, %rcx
	movq	%rdi, %r12
	movl	$.L.str.40, %esi
	movq	%rcx, %rdx
	movl	%eax, %ecx
	callq	cos_dict_put_c_key_floats
	testl	%eax, %eax
	js	.LBB9_9
# BB#1:                                 # %lor.lhs.false
	movss	(%rbx), %xmm0           # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jne	.LBB9_3
	jp	.LBB9_3
# BB#2:                                 # %lor.lhs.false.2
	movss	4(%rbx), %xmm0          # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI9_0(%rip), %xmm0
	jne	.LBB9_3
	jnp	.LBB9_4
.LBB9_3:                                # %land.lhs.true
	movl	$.L.str.39, %esi
	movl	$2, %ecx
	movq	%r12, %rdi
	movq	%rbx, %rdx
	callq	cos_dict_put_c_key_floats
	testl	%eax, %eax
	js	.LBB9_9
.LBB9_4:                                # %lor.lhs.false.7
	xorl	%eax, %eax
	testq	%r15, %r15
	je	.LBB9_7
# BB#5:                                 # %if.then.i
	movq	64(%rsp), %rdx
	movq	32(%r12), %rdi
	leaq	(%rsp), %rcx
	movq	%r15, %rsi
	callq	pdf_function_scaled
	testl	%eax, %eax
	js	.LBB9_9
# BB#6:                                 # %pdf_put_shading_Function.exit
	leaq	(%rsp), %rdx
	movl	$.L.str.38, %esi
	movq	%r12, %rdi
	callq	cos_dict_put_c_key
	testl	%eax, %eax
	js	.LBB9_9
.LBB9_7:                                # %if.end
	movl	(%r14), %ecx
	movl	4(%r14), %esi
	movl	%esi, %edx
	orl	%ecx, %edx
	je	.LBB9_9
# BB#8:                                 # %if.then.12
	testl	%ecx, %ecx
	movl	$.L.str.29, %eax
	movl	$.L.str.42, %ecx
	movl	$.L.str.42, %edx
	cmovneq	%rax, %rdx
	testl	%esi, %esi
	cmovneq	%rax, %rcx
	leaq	(%rsp), %rbx
	movl	$.L.str.41, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	gs_sprintf
	movq	%rbx, %rdi
	callq	strlen
	movl	$.L.str.43, %esi
	movq	%r12, %rdi
	movq	%rbx, %rdx
	movl	%eax, %ecx
	callq	cos_dict_put_c_key_string
.LBB9_9:                                # %cleanup
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end9:
	.size	pdf_put_linear_shading, .Lfunc_end9-pdf_put_linear_shading
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"pdf_pattern(Resources)"
	.size	.L.str, 23

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"/Type"
	.size	.L.str.1, 6

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"/Pattern"
	.size	.L.str.2, 9

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"/PatternType"
	.size	.L.str.3, 13

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"/PaintType"
	.size	.L.str.4, 11

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"/TilingType"
	.size	.L.str.5, 12

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"/BBox"
	.size	.L.str.6, 6

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"/Matrix"
	.size	.L.str.7, 8

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"/XStep"
	.size	.L.str.8, 7

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"/YStep"
	.size	.L.str.9, 7

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"/Resources"
	.size	.L.str.10, 11

	.type	pdf_put_uncolored_pattern.no_scc,@object # @pdf_put_uncolored_pattern.no_scc
	.section	.rodata,"a",@progbits
	.align	8
pdf_put_uncolored_pattern.no_scc:
	.zero	48
	.size	pdf_put_uncolored_pattern.no_scc, 48

	.type	.L.str.11,@object       # @.str.11
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.11:
	.asciz	"q q Q Q\n"
	.size	.L.str.11, 9

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	" %s "
	.size	.L.str.12, 5

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"/Mask"
	.size	.L.str.13, 6

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"pdf_put_colored_pattern"
	.size	.L.str.14, 24

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	" %s"
	.size	.L.str.15, 4

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"/Shading"
	.size	.L.str.16, 9

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	" %s\n"
	.size	.L.str.17, 5

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"pdf_pattern(XObject)"
	.size	.L.str.18, 21

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"/R%ld"
	.size	.L.str.19, 6

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"pdf_pattern(reference copy of XObject)"
	.size	.L.str.20, 39

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"/XObject"
	.size	.L.str.21, 9

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"/ProcSet"
	.size	.L.str.22, 9

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"[/PDF/ImageB]"
	.size	.L.str.23, 14

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"[/PDF/ImageC]"
	.size	.L.str.24, 14

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"[0 0 1 1]"
	.size	.L.str.25, 10

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"/R%ld Do\n"
	.size	.L.str.26, 10

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"/ShadingType"
	.size	.L.str.27, 13

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"/AntiAlias"
	.size	.L.str.28, 11

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"true"
	.size	.L.str.29, 5

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"/ColorSpace"
	.size	.L.str.30, 12

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"/Background"
	.size	.L.str.31, 12

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"pdf_put_mesh_shading"
	.size	.L.str.32, 21

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"/Decode"
	.size	.L.str.33, 8

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"/BitsPerCoordinate"
	.size	.L.str.34, 19

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"/BitsPerComponent"
	.size	.L.str.35, 18

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"/VerticesPerRow"
	.size	.L.str.36, 16

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"/BitsPerFlag"
	.size	.L.str.37, 13

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"/Function"
	.size	.L.str.38, 10

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"/Domain"
	.size	.L.str.39, 8

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"/Coords"
	.size	.L.str.40, 8

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"[%s %s]"
	.size	.L.str.41, 8

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"false"
	.size	.L.str.42, 6

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"/Extend"
	.size	.L.str.43, 8


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
