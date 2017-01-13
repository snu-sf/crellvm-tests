	.text
	.file	"gdevpdfi.bc"
	.globl	gdev_pdf_begin_typed_image
	.align	16, 0x90
	.type	gdev_pdf_begin_typed_image,@function
gdev_pdf_begin_typed_image:             # @gdev_pdf_begin_typed_image
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$40, %rsp
.Ltmp0:
	.cfi_def_cfa_offset 48
	movq	64(%rsp), %rax
	movq	56(%rsp), %r11
	movq	48(%rsp), %r10
	cmpl	$0, 30760(%rdi)
	je	.LBB0_1
# BB#2:                                 # %if.else.i
	movq	%rax, 16(%rsp)
	movq	%r11, 8(%rsp)
	movq	%r10, (%rsp)
	movl	$0, 24(%rsp)
	callq	old_pdf_begin_typed_image
	addq	$40, %rsp
	retq
.LBB0_1:                                # %if.then.i
	movq	%rax, 16(%rsp)
	movq	%r11, 8(%rsp)
	movq	%r10, (%rsp)
	movl	$0, 24(%rsp)
	callq	new_pdf_begin_typed_image
	addq	$40, %rsp
	retq
.Lfunc_end0:
	.size	gdev_pdf_begin_typed_image, .Lfunc_end0-gdev_pdf_begin_typed_image
	.cfi_endproc

	.globl	pdf_substitute_pattern
	.align	16, 0x90
	.type	pdf_substitute_pattern,@function
pdf_substitute_pattern:                 # @pdf_substitute_pattern
	.cfi_startproc
# BB#0:                                 # %entry
	movq	72(%rdi), %rax
	testq	%rax, %rax
	cmoveq	%rdi, %rax
	retq
.Lfunc_end1:
	.size	pdf_substitute_pattern, .Lfunc_end1-pdf_substitute_pattern
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4634766966517661696     # double 72
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI2_1:
	.long	1116733440              # float 72
	.text
	.globl	gdev_pdf_dev_spec_op
	.align	16, 0x90
	.type	gdev_pdf_dev_spec_op,@function
gdev_pdf_dev_spec_op:                   # @gdev_pdf_dev_spec_op
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp1:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp2:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp3:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp4:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp5:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp6:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp7:
	.cfi_def_cfa_offset 96
.Ltmp8:
	.cfi_offset %rbx, -56
.Ltmp9:
	.cfi_offset %r12, -48
.Ltmp10:
	.cfi_offset %r13, -40
.Ltmp11:
	.cfi_offset %r14, -32
.Ltmp12:
	.cfi_offset %r15, -24
.Ltmp13:
	.cfi_offset %rbp, -16
	movq	%rdx, %rbx
	movq	%rdi, %r14
	movl	%esi, %edx
	cmpl	$18, %esi
	ja	.LBB2_47
# BB#1:                                 # %entry
	movslq	%ecx, %r15
	movl	$1, %eax
	jmpq	*.LJTI2_0(,%rdx,8)
.LBB2_46:                               # %sw.bb.278
	xorl	%eax, %eax
	jmp	.LBB2_48
.LBB2_47:                               # %sw.epilog
	movq	%r14, %rdi
	movq	%rbx, %rdx
	callq	gx_default_dev_spec_op
.LBB2_48:                               # %cleanup.282
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB2_29:                               # %sw.bb.181
	movl	9480(%r14), %r9d
	leaq	32(%rsp), %rcx
	movl	$2, %esi
	xorl	%r8d, %r8d
	movq	%r14, %rdi
	movq	%r15, %rdx
	callq	pdf_enter_substream
	testl	%eax, %eax
	js	.LBB2_48
# BB#30:                                # %if.end.187
	movq	32(%rsp), %rsi
	movq	%r15, 16(%rsi)
	movq	%r14, %rdi
	movq	%rbx, %rdx
	callq	pdf_store_pattern1_params
	testl	%eax, %eax
	js	.LBB2_48
# BB#31:                                # %if.end.193
	movq	5848(%r14), %rdi
	movss	884(%r14), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	888(%r14), %xmm2        # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm3
	movsd	.LCPI2_0(%rip), %xmm1   # xmm1 = mem[0],zero
	movapd	%xmm1, %xmm0
	divsd	%xmm3, %xmm0
	cvtss2sd	%xmm2, %xmm2
	divsd	%xmm2, %xmm1
	movl	$.L.str.11, %esi
	callq	pprintg2
	incl	30416(%r14)
	movl	$1, %eax
	jmp	.LBB2_48
.LBB2_32:                               # %sw.bb.206
	movq	30448(%r14), %rdi
	movl	26584(%r14), %esi
	callq	pdf_add_procsets
	testl	%eax, %eax
	js	.LBB2_48
# BB#33:                                # %if.end.213
	movq	30480(%r14), %rbx
	movq	%rbx, 32(%rsp)
	movq	%r14, %rdi
	callq	pdf_exit_substream
	testl	%eax, %eax
	js	.LBB2_48
# BB#34:                                # %if.end.219
	cmpl	$301, 30584(%r14)       # imm = 0x12D
	jl	.LBB2_37
# BB#35:                                # %land.lhs.true.222
	movl	30588(%r14), %eax
	cmpl	26544(%r14), %eax
	je	.LBB2_37
# BB#36:                                # %if.then.225
	movl	$2, %esi
	movl	$check_unsubstituted1, %edx
	movq	%r14, %rdi
	callq	pdf_drop_resources
	movl	$0, 30584(%r14)
	movl	26544(%r14), %eax
	movl	%eax, 30588(%r14)
.LBB2_37:                               # %if.end.229
	leaq	32(%rsp), %rdx
	movl	$2, %esi
	movl	$check_unsubstituted2, %ecx
	movq	%r14, %rdi
	callq	pdf_find_same_resource
	testl	%eax, %eax
	js	.LBB2_48
# BB#38:                                # %if.end.234
	jle	.LBB2_41
# BB#39:                                # %if.then.237
	movl	$2, %edx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	pdf_cancel_resource
	testl	%eax, %eax
	js	.LBB2_48
# BB#40:                                # %if.end.242
	movq	32(%rsp), %rax
	movq	%rax, 72(%rbx)
	movq	26664(%r14), %rax
	movq	32(%rsp), %rcx
	orq	%rax, 56(%rcx)
	incl	30584(%r14)
	jmp	.LBB2_43
.LBB2_44:                               # %sw.bb.259
	movl	$2, %esi
	movq	%r14, %rdi
	movq	%r15, %rdx
	callq	pdf_find_resource_by_gs_id
	movq	%rax, %rdx
	movq	%rdx, 32(%rsp)
	movl	$-21, %eax
	testq	%rdx, %rdx
	je	.LBB2_48
# BB#45:                                # %if.end.264
	movq	72(%rdx), %rcx
	testq	%rcx, %rcx
	cmoveq	%rdx, %rcx
	movq	%rcx, 32(%rsp)
	movq	26664(%r14), %rax
	orq	%rax, 56(%rcx)
	movq	30448(%r14), %rsi
	movl	$.L.str.13, %edx
	movq	%r14, %rdi
	callq	pdf_add_resource
	movl	%eax, %ecx
	testl	%ecx, %ecx
	movl	$1, %eax
	cmovsl	%ecx, %eax
	jmp	.LBB2_48
.LBB2_2:                                # %sw.bb.1
	xorl	%eax, %eax
	cmpl	$0, 30412(%r14)
	jne	.LBB2_48
# BB#3:                                 # %land.lhs.true
	cmpl	$0, 30416(%r14)
	jne	.LBB2_48
# BB#4:                                 # %if.then
	movq	%r14, %rdi
	callq	pdfwrite_pdf_open_document
	testl	%eax, %eax
	js	.LBB2_48
# BB#5:                                 # %if.end
	movl	$1, %esi
	movq	%r14, %rdi
	callq	pdf_open_contents
	testl	%eax, %eax
	js	.LBB2_48
# BB#6:                                 # %if.end.12
	movq	80(%rbx), %rsi
	movq	%r14, %rdi
	callq	pdf_put_clip_path
	testl	%eax, %eax
	js	.LBB2_48
# BB#7:                                 # %if.end.17
	movq	5848(%r14), %rdi
	movss	56(%rbx), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	60(%rbx), %xmm1         # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm1
	movss	64(%rbx), %xmm2         # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	movss	68(%rbx), %xmm3         # xmm3 = mem[0],zero,zero,zero
	cvtss2sd	%xmm3, %xmm3
	movss	72(%rbx), %xmm4         # xmm4 = mem[0],zero,zero,zero
	cvtss2sd	%xmm4, %xmm4
	movss	76(%rbx), %xmm5         # xmm5 = mem[0],zero,zero,zero
	cvtss2sd	%xmm5, %xmm5
	movl	$.L.str, %esi
	callq	pprintg6
	movl	9480(%r14), %r9d
	leaq	32(%rsp), %rcx
	movl	$4, %esi
	xorl	%r8d, %r8d
	movq	%r14, %rdi
	movq	%r15, %rdx
	callq	pdf_enter_substream
	testl	%eax, %eax
	js	.LBB2_48
# BB#8:                                 # %if.end.34
	movq	32(%rsp), %rax
	movq	64(%rax), %rdi
	callq	cos_stream_dict
	movq	%rax, %r13
	movl	$.L.str.1, %esi
	movq	%r14, %rdi
	callq	cos_dict_alloc
	movq	%rax, %r12
	testq	%r13, %r13
	movl	$-25, %eax
	je	.LBB2_48
# BB#9:                                 # %if.end.34
	testq	%r12, %r12
	je	.LBB2_48
# BB#10:                                # %if.end.42
	movl	$.L.str.2, %esi
	movl	$.L.str.3, %edx
	movq	%r13, %rdi
	callq	cos_dict_put_c_strings
	testl	%eax, %eax
	js	.LBB2_14
# BB#11:                                # %if.end.48
	movl	$.L.str.4, %esi
	movl	$.L.str.5, %edx
	movq	%r13, %rdi
	callq	cos_dict_put_c_strings
	testl	%eax, %eax
	js	.LBB2_14
# BB#12:                                # %if.end.53
	movl	$.L.str.6, %esi
	movl	$.L.str.7, %edx
	movq	%r13, %rdi
	callq	cos_dict_put_c_strings
	testl	%eax, %eax
	js	.LBB2_14
# BB#13:                                # %if.then.56
	movl	$.L.str.8, %esi
	movq	%r13, %rdi
	movq	%r12, %rdx
	callq	cos_dict_put_c_key_object
.LBB2_14:                               # %if.end.58
	movsd	(%rbx), %xmm0           # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, (%rsp)
	movsd	8(%rbx), %xmm0          # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 4(%rsp)
	movsd	16(%rbx), %xmm0         # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 8(%rsp)
	movsd	24(%rbx), %xmm0         # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 12(%rsp)
	testl	%eax, %eax
	js	.LBB2_48
# BB#15:                                # %if.end.77
	leaq	(%rsp), %rdx
	movl	$.L.str.9, %esi
	movl	$4, %ecx
	movq	%r13, %rdi
	callq	cos_dict_put_c_key_floats
	testl	%eax, %eax
	js	.LBB2_48
# BB#16:                                # %if.end.81
	movups	32(%rbx), %xmm0
	movaps	%xmm0, (%rsp)
	movl	48(%rbx), %eax
	movl	%eax, 16(%rsp)
	movl	52(%rbx), %eax
	movl	%eax, 20(%rsp)
	leaq	(%rsp), %rdx
	movl	$.L.str.10, %esi
	movl	$6, %ecx
	movq	%r13, %rdi
	callq	cos_dict_put_c_key_floats
	movl	%eax, %ebp
	movq	5848(%r14), %rdi
	movss	884(%r14), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	888(%r14), %xmm2        # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm3
	movsd	.LCPI2_0(%rip), %xmm1   # xmm1 = mem[0],zero
	movapd	%xmm1, %xmm0
	divsd	%xmm3, %xmm0
	cvtss2sd	%xmm2, %xmm2
	divsd	%xmm2, %xmm1
	movl	$.L.str.11, %esi
	callq	pprintg2
	movss	884(%r14), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI2_1(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	divss	%xmm1, %xmm0
	movss	%xmm0, 56(%rbx)
	movq	$0, 60(%rbx)
	movss	884(%r14), %xmm0        # xmm0 = mem[0],zero,zero,zero
	divss	%xmm1, %xmm0
	movss	%xmm0, 68(%rbx)
	movl	$0, 72(%rbx)
	movl	$0, 76(%rbx)
	movq	%r12, 30448(%r14)
	movq	32(%rsp), %rax
	movq	%r15, 16(%rax)
	movl	$1, %eax
	testl	%ebp, %ebp
	js	.LBB2_48
# BB#17:                                # %if.then.129
	incl	30412(%r14)
	jmp	.LBB2_48
.LBB2_18:                               # %sw.bb.136
	xorl	%eax, %eax
	cmpl	$1, 30412(%r14)
	jne	.LBB2_48
# BB#19:                                # %land.lhs.true.140
	cmpl	$0, 30416(%r14)
	jne	.LBB2_48
# BB#20:                                # %if.then.144
	movq	30448(%r14), %rdi
	movl	26584(%r14), %esi
	callq	pdf_add_procsets
	testl	%eax, %eax
	js	.LBB2_48
# BB#21:                                # %if.end.150
	movq	30480(%r14), %rbx
	movq	%rbx, 32(%rsp)
	movq	%r14, %rdi
	callq	pdf_exit_substream
	testl	%eax, %eax
	js	.LBB2_48
# BB#22:                                # %if.end.155
	leaq	32(%rsp), %rdx
	movl	$4, %esi
	movl	$check_unsubstituted2, %ecx
	movq	%r14, %rdi
	callq	pdf_find_same_resource
	testl	%eax, %eax
	js	.LBB2_48
# BB#23:                                # %if.end.160
	jle	.LBB2_26
# BB#24:                                # %if.then.163
	movl	$4, %edx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	pdf_cancel_resource
	testl	%eax, %eax
	js	.LBB2_48
# BB#25:                                # %if.end.168
	movq	26664(%r14), %rcx
	movq	32(%rsp), %rax
	orq	%rcx, 56(%rax)
	jmp	.LBB2_28
.LBB2_41:                               # %if.else.249
	movq	32(%rsp), %rsi
	movq	64(%rsi), %rax
	cmpq	$0, 8(%rax)
	jns	.LBB2_43
# BB#42:                                # %if.then.254
	xorl	%edx, %edx
	movq	%r14, %rdi
	callq	pdf_reserve_object_id
.LBB2_43:                               # %if.end.256
	decl	30416(%r14)
	movl	$1, %eax
	jmp	.LBB2_48
.LBB2_26:                               # %if.else
	movq	32(%rsp), %rax
	movq	64(%rax), %rcx
	cmpq	$0, 8(%rcx)
	jns	.LBB2_28
# BB#27:                                # %if.then.173
	xorl	%edx, %edx
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	pdf_reserve_object_id
	movq	32(%rsp), %rax
.LBB2_28:                               # %if.end.175
	movq	5848(%r14), %rbx
	movq	%rax, %rdi
	callq	pdf_resource_id
	movl	$.L.str.12, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	callq	pprintld1
	decl	30412(%r14)
	xorl	%eax, %eax
	jmp	.LBB2_48
.Lfunc_end2:
	.size	gdev_pdf_dev_spec_op, .Lfunc_end2-gdev_pdf_dev_spec_op
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI2_0:
	.quad	.LBB2_48
	.quad	.LBB2_29
	.quad	.LBB2_32
	.quad	.LBB2_44
	.quad	.LBB2_46
	.quad	.LBB2_46
	.quad	.LBB2_46
	.quad	.LBB2_46
	.quad	.LBB2_47
	.quad	.LBB2_47
	.quad	.LBB2_47
	.quad	.LBB2_47
	.quad	.LBB2_48
	.quad	.LBB2_47
	.quad	.LBB2_47
	.quad	.LBB2_48
	.quad	.LBB2_47
	.quad	.LBB2_2
	.quad	.LBB2_18

	.text
	.align	16, 0x90
	.type	check_unsubstituted2,@function
check_unsubstituted2:                   # @check_unsubstituted2
	.cfi_startproc
# BB#0:                                 # %entry
	cmpq	$0, 72(%rsi)
	je	.LBB3_2
# BB#1:
	xorl	%eax, %eax
	movzbl	%al, %eax
	retq
.LBB3_2:                                # %land.rhs
	cmpq	$0, 72(%rdx)
	sete	%al
	movzbl	%al, %eax
	retq
.Lfunc_end3:
	.size	check_unsubstituted2, .Lfunc_end3-check_unsubstituted2
	.cfi_endproc

	.align	16, 0x90
	.type	check_unsubstituted1,@function
check_unsubstituted1:                   # @check_unsubstituted1
	.cfi_startproc
# BB#0:                                 # %entry
	cmpq	$0, 72(%rsi)
	setne	%al
	movzbl	%al, %eax
	retq
.Lfunc_end4:
	.size	check_unsubstituted1, .Lfunc_end4-check_unsubstituted1
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_0:
	.quad	4608083138725491507     # double 1.2
.LCPI5_1:
	.quad	4608533498688228557     # double 1.3
.LCPI5_2:
	.quad	4608983858650965606     # double 1.3999999999999999
.LCPI5_3:
	.quad	4602678819172646912     # double 0.5
.LCPI5_4:
	.quad	4607182418800017408     # double 1
.LCPI5_6:
	.quad	4643211215818981376     # double 256
.LCPI5_7:
	.quad	4571153621781053440     # double 0.00390625
.LCPI5_8:
	.quad	4634766966517661696     # double 72
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI5_5:
	.long	1065353216              # float 1
	.text
	.align	16, 0x90
	.type	new_pdf_begin_typed_image,@function
new_pdf_begin_typed_image:              # @new_pdf_begin_typed_image
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp14:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp15:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp16:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp17:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp18:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp19:
	.cfi_def_cfa_offset 56
	subq	$2888, %rsp             # imm = 0xB48
.Ltmp20:
	.cfi_def_cfa_offset 2944
.Ltmp21:
	.cfi_offset %rbx, -56
.Ltmp22:
	.cfi_offset %r12, -48
.Ltmp23:
	.cfi_offset %r13, -40
.Ltmp24:
	.cfi_offset %r14, -32
.Ltmp25:
	.cfi_offset %r15, -24
.Ltmp26:
	.cfi_offset %rbp, -16
	movq	%r9, %r12
	movq	%r8, 160(%rsp)          # 8-byte Spill
	movq	%rcx, %rbp
	movq	%rdx, %rbx
	movq	%rsi, 176(%rsp)         # 8-byte Spill
	movq	%rdi, %r14
	movq	2952(%rsp), %r15
	movq	$0, 2880(%rsp)
	movq	$0, 2848(%rsp)
	movq	200(%r15), %rax
	movq	200(%rax), %rdi
	movl	$4, %esi
	movl	$2248, %edx             # imm = 0x8C8
	movl	$.L.str.14, %ecx
	callq	*88(%rdi)
	movl	$-25, %r13d
	testq	%rax, %rax
	je	.LBB5_328
# BB#1:                                 # %if.end
	movq	%rbx, 152(%rsp)         # 8-byte Spill
	movq	%rax, 168(%rsp)         # 8-byte Spill
	movq	2960(%rsp), %r13
	movq	28768(%r14), %rdi
	leaq	840(%rsp), %rsi
	callq	cos_array_unadd
	xorl	%r9d, %r9d
	testl	%eax, %eax
	movq	848(%rsp), %rdx
	cmovsq	%r9, %rdx
	movq	$0, 30592(%r14)
	movq	(%rbp), %rax
	movl	48(%rax), %eax
	movl	$1, %ebx
	cmpl	$3, %eax
	movq	%rbp, %rcx
	jg	.LBB5_11
# BB#2:                                 # %if.end
	cmpl	$1, %eax
	jne	.LBB5_3
# BB#20:                                # %sw.bb
	movl	584(%rcx), %r9d
	movl	$-1, %ebx
	cmpl	$0, 592(%rcx)
	je	.LBB5_22
# BB#21:
	movq	%rdx, 136(%rsp)         # 8-byte Spill
	jmp	.LBB5_30
.LBB5_11:                               # %if.end
	movq	%rdx, 136(%rsp)         # 8-byte Spill
	cmpl	$4, %eax
	jne	.LBB5_12
# BB#49:                                # %sw.bb.74
	movl	$0, 30600(%r14)
	leaq	840(%rsp), %r9
	movq	%r14, %rdi
	movq	176(%rsp), %rsi         # 8-byte Reload
	movq	%r12, %rdx
	movq	%r12, 144(%rsp)         # 8-byte Spill
	movq	%rcx, %r12
	movq	168(%rsp), %r8          # 8-byte Reload
	callq	pdf_convert_image4_to_image1
	movl	%eax, %ecx
	movl	$1, %eax
	testl	%ecx, %ecx
	js	.LBB5_62
# BB#50:                                # %if.then.i.620
	movq	176(%rsp), %rdi         # 8-byte Reload
	callq	gx_hld_get_gstate_ptr
	movq	%rax, %rbx
	movl	$-28, %eax
	testq	%rbx, %rbx
	je	.LBB5_62
# BB#51:                                # %if.end.i.622
	movq	136(%rsp), %rsi         # 8-byte Reload
	testq	%rsi, %rsi
	je	.LBB5_53
# BB#52:                                # %if.then.4.i
	movq	28768(%r14), %rdi
	callq	cos_array_add_object
.LBB5_53:                               # %if.end.6.i
	movq	%rbx, %rdi
	callq	gs_gsave
	testl	%eax, %eax
	js	.LBB5_62
# BB#54:                                # %if.end.10.i
	movq	576(%r12), %rsi
	movq	%rbx, %rdi
	callq	gs_setcolorspace
	testl	%eax, %eax
	js	.LBB5_62
# BB#55:                                # %if.end.14.i.626
	cmpl	$0, 30760(%r14)
	je	.LBB5_56
# BB#57:                                # %if.else.i.632
	movl	2968(%rsp), %eax
	movl	%eax, 24(%rsp)
	movq	%r13, 16(%rsp)
	movq	%r15, 8(%rsp)
	movq	2944(%rsp), %rax
	movq	%rax, (%rsp)
	leaq	840(%rsp), %r9
	movq	%r14, %rdi
	movq	176(%rsp), %rsi         # 8-byte Reload
	movq	152(%rsp), %rdx         # 8-byte Reload
	movq	168(%rsp), %rcx         # 8-byte Reload
	movq	160(%rsp), %r8          # 8-byte Reload
	callq	old_pdf_begin_typed_image
	jmp	.LBB5_58
.LBB5_3:                                # %if.end
	movq	%r12, 144(%rsp)         # 8-byte Spill
	movq	%rdx, 136(%rsp)         # 8-byte Spill
	cmpl	$3, %eax
	movl	$0, %r8d
	jne	.LBB5_74
# BB#4:                                 # %sw.bb.12
	movq	%rcx, %r12
	movl	$0, 30600(%r14)
	movsd	.LCPI5_0(%rip), %xmm0   # xmm0 = mem[0],zero
	ucomisd	9368(%r14), %xmm0
	movq	152(%rsp), %rbx         # 8-byte Reload
	movq	160(%rsp), %rbp         # 8-byte Reload
	ja	.LBB5_10
# BB#5:                                 # %lor.lhs.false
	testq	%rbp, %rbp
	je	.LBB5_31
# BB#6:                                 # %land.lhs.true
	cmpl	$0, (%rbp)
	jne	.LBB5_10
# BB#7:                                 # %land.lhs.true.15
	cmpl	$0, 4(%rbp)
	jne	.LBB5_10
# BB#8:                                 # %land.lhs.true.18
	movl	8(%rbp), %eax
	cmpl	32(%r12), %eax
	jne	.LBB5_10
# BB#9:                                 # %land.lhs.true.21
	movl	12(%rbp), %eax
	cmpl	36(%r12), %eax
	jne	.LBB5_10
.LBB5_31:                               # %if.end.32
	movq	%rbp, %rbx
	movq	200(%r15), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.14, %edx
	movq	168(%rsp), %rsi         # 8-byte Reload
	callq	*24(%rdi)
	movsd	.LCPI5_1(%rip), %xmm0   # xmm0 = mem[0],zero
	ucomisd	9368(%r14), %xmm0
	jbe	.LBB5_32
# BB#33:                                # %land.lhs.true.i.540
	cmpl	$0, 9556(%r14)
	je	.LBB5_34
.LBB5_32:
	movq	%r14, 168(%rsp)         # 8-byte Spill
	movq	%r12, %r14
	movq	144(%rsp), %r12         # 8-byte Reload
.LBB5_47:                               # %if.end.77.i
	movq	%r13, 32(%rsp)
	movq	%r15, 8(%rsp)
	movq	2944(%rsp), %rax
	movq	%rax, (%rsp)
	movq	$pdf_image3_make_mcde, 24(%rsp)
	movq	$pdf_image3_make_mid, 16(%rsp)
	movq	168(%rsp), %rdi         # 8-byte Reload
	movq	176(%rsp), %rsi         # 8-byte Reload
	movq	152(%rsp), %rdx         # 8-byte Reload
	movq	%r14, %rcx
	movq	%rbx, %r8
	movq	%r12, %r9
	callq	gx_begin_image3_generic
	jmp	.LBB5_327
.LBB5_12:                               # %if.end
	movq	%r12, 144(%rsp)         # 8-byte Spill
	cmpl	$103, %eax
	movl	$0, %r8d
	jne	.LBB5_74
# BB#13:                                # %sw.bb.40
	movq	200(%r15), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.14, %edx
	movq	168(%rsp), %rsi         # 8-byte Reload
	movq	%rcx, %rbx
	callq	*24(%rdi)
	movq	%rbx, %rcx
	movsd	.LCPI5_2(%rip), %xmm0   # xmm0 = mem[0],zero
	ucomisd	9368(%r14), %xmm0
	movq	160(%rsp), %r8          # 8-byte Reload
	ja	.LBB5_19
# BB#14:                                # %lor.lhs.false.49
	testq	%r8, %r8
	je	.LBB5_48
# BB#15:                                # %land.lhs.true.51
	cmpl	$0, (%r8)
	jne	.LBB5_19
# BB#16:                                # %land.lhs.true.55
	cmpl	$0, 4(%r8)
	jne	.LBB5_19
# BB#17:                                # %land.lhs.true.59
	movl	8(%r8), %eax
	cmpl	32(%rcx), %eax
	jne	.LBB5_19
# BB#18:                                # %land.lhs.true.64
	movl	12(%r8), %eax
	cmpl	36(%rcx), %eax
	jne	.LBB5_19
.LBB5_48:                               # %if.end.71
	movl	$1, 30600(%r14)
	movq	%r13, 32(%rsp)
	movq	%r15, 8(%rsp)
	movq	2944(%rsp), %rax
	movq	%rax, (%rsp)
	movq	$pdf_image3x_make_mcde, 24(%rsp)
	movq	$pdf_image3x_make_mid, 16(%rsp)
	movq	%r14, %rdi
	movq	176(%rsp), %rsi         # 8-byte Reload
	movq	152(%rsp), %rdx         # 8-byte Reload
	movq	144(%rsp), %r9          # 8-byte Reload
	callq	gx_begin_image3x_generic
	jmp	.LBB5_327
.LBB5_10:                               # %if.then.25
	movq	200(%r15), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.14, %edx
	movq	168(%rsp), %rsi         # 8-byte Reload
	callq	*24(%rdi)
	movq	%r13, 16(%rsp)
	movq	%r15, 8(%rsp)
	movq	2944(%rsp), %rax
	movq	%rax, (%rsp)
	movq	%r14, %rdi
	movq	176(%rsp), %rsi         # 8-byte Reload
	movq	%rbx, %rdx
	movq	%r12, %rcx
	movq	%rbp, %r8
	jmp	.LBB5_325
.LBB5_19:                               # %if.then.69
	movq	%r13, 16(%rsp)
	movq	%r15, 8(%rsp)
	movq	2944(%rsp), %rax
	movq	%rax, (%rsp)
	movq	%r14, %rdi
	movq	176(%rsp), %rsi         # 8-byte Reload
	movq	152(%rsp), %rdx         # 8-byte Reload
	jmp	.LBB5_325
.LBB5_22:                               # %if.end.i
	movq	%rdx, 136(%rsp)         # 8-byte Spill
	testl	%r9d, %r9d
	je	.LBB5_29
# BB#23:                                # %if.then.1.i
	movq	%r9, %r13
	movq	%r12, %rdi
	movq	%rcx, %rbp
	callq	gx_dc_is_pattern1_color
	movq	%r13, %r9
	movq	%rbp, %rcx
	testl	%eax, %eax
	jne	.LBB5_29
# BB#24:                                # %if.then.3.i
	cmpl	$1, 40(%rcx)
	jne	.LBB5_30
# BB#25:                                # %lor.lhs.false.i
	movss	44(%rcx), %xmm0         # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jne	.LBB5_27
	jp	.LBB5_27
# BB#26:                                # %land.lhs.true.i
	movss	48(%rcx), %xmm1         # xmm1 = mem[0],zero,zero,zero
	ucomiss	.LCPI5_5(%rip), %xmm1
	jne	.LBB5_27
	jnp	.LBB5_29
.LBB5_27:                               # %lor.lhs.false.12.i
	ucomiss	.LCPI5_5(%rip), %xmm0
	jne	.LBB5_30
	jp	.LBB5_30
# BB#28:                                # %land.lhs.true.18.i
	movss	48(%rcx), %xmm0         # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jne	.LBB5_30
	jp	.LBB5_30
.LBB5_29:                               # %if.end.27.i
	movl	$600, %edx              # imm = 0x258
	movq	%r9, %rbp
	movq	168(%rsp), %rdi         # 8-byte Reload
	movq	%rcx, %rsi
	movq	%rcx, %rbx
	callq	memcpy
	movq	%rbp, %r9
	movq	%rbx, %rcx
	cmpl	$0, 2968(%rsp)
	sete	%al
	movzbl	%al, %ebx
.LBB5_30:                               # %setup_type1_image.exit
	movq	%r12, 144(%rsp)         # 8-byte Spill
	xorl	%r8d, %r8d
	testl	%ebx, %ebx
	cmovnsl	%ebx, %r8d
	shrl	$31, %ebx
	jmp	.LBB5_74
.LBB5_56:                               # %if.then.i.630
	movl	2968(%rsp), %eax
	movl	%eax, 24(%rsp)
	movq	%r13, 16(%rsp)
	movq	%r15, 8(%rsp)
	movq	2944(%rsp), %rax
	movq	%rax, (%rsp)
	leaq	840(%rsp), %r9
	movq	%r14, %rdi
	movq	176(%rsp), %rsi         # 8-byte Reload
	movq	152(%rsp), %rdx         # 8-byte Reload
	movq	168(%rsp), %rcx         # 8-byte Reload
	movq	160(%rsp), %r8          # 8-byte Reload
	callq	new_pdf_begin_typed_image
.LBB5_58:                               # %pdf_begin_typed_image.exit
	testl	%eax, %eax
	js	.LBB5_62
# BB#59:                                # %convert_type4_image.exit
	movq	%rbx, %rdi
	callq	gs_grestore
	testl	%eax, %eax
	je	.LBB5_60
.LBB5_62:                               # %if.end.87
	shrl	$31, %eax
	movsd	9368(%r14), %xmm0       # xmm0 = mem[0],zero
	movsd	.LCPI5_0(%rip), %xmm1   # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	movl	$1, %ebx
	cmovbel	%eax, %ebx
	movsd	.LCPI5_1(%rip), %xmm1   # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB5_73
# BB#63:                                # %land.lhs.true.94
	cmpl	$0, 9556(%r14)
	je	.LBB5_64
.LBB5_73:                               # %if.end.104
	movl	$1112, %edx             # imm = 0x458
	movq	168(%rsp), %rdi         # 8-byte Reload
	movq	%r12, %rbp
	movq	%rbp, %rsi
	callq	memcpy
	movq	%rbp, %rcx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
.LBB5_74:                               # %sw.epilog
	movq	%r14, %r12
	movl	568(%rcx), %edi
	movl	32(%rcx), %eax
	testl	%eax, %eax
	je	.LBB5_76
# BB#75:                                # %lor.lhs.false.111
	cmpl	$2, %edi
	movl	$1, %r14d
	cmovbl	%ebx, %r14d
	cmpl	$0, 36(%rcx)
	jne	.LBB5_77
.LBB5_76:                               # %if.then.114
	movl	$1, %r14d
.LBB5_77:                               # %if.end.115
	movl	40(%rcx), %esi
	cmpl	$16, %esi
	ja	.LBB5_329
# BB#78:                                # %if.end.115
	movl	$278, %edx              # imm = 0x116
	btl	%esi, %edx
	jb	.LBB5_81
# BB#79:                                # %if.end.115
	movl	$69632, %edx            # imm = 0x11000
	btl	%esi, %edx
	jae	.LBB5_329
# BB#80:                                # %sw.bb.117
	movl	$1, %r14d
.LBB5_81:                               # %sw.epilog.125
	movq	160(%rsp), %rsi         # 8-byte Reload
	testq	%rsi, %rsi
	je	.LBB5_83
# BB#82:                                # %if.then.127
	movl	(%rsi), %ebp
	movl	4(%rsi), %ebx
	leaq	12(%rsi), %rdx
	movl	8(%rsi), %r10d
	jmp	.LBB5_84
.LBB5_329:                              # %sw.default.118
	movq	200(%r15), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.14, %edx
	movq	168(%rsp), %rsi         # 8-byte Reload
	callq	*24(%rdi)
	movl	$-15, %r13d
	jmp	.LBB5_328
.LBB5_83:                               # %if.else.128
	leaq	36(%rcx), %rdx
	xorl	%ebp, %ebp
	movl	%eax, %r10d
	xorl	%ebx, %ebx
.LBB5_84:                               # %if.end.139
	movl	(%rdx), %esi
	movl	%ebx, %edx
	orl	%ebp, %edx
	jne	.LBB5_89
# BB#85:                                # %if.end.139
	cmpl	%eax, %r10d
	jne	.LBB5_89
# BB#86:                                # %lor.lhs.false.152
	cmpl	36(%rcx), %esi
	jne	.LBB5_89
# BB#87:                                # %lor.lhs.false.157
	testl	%r9d, %r9d
	je	.LBB5_90
# BB#88:                                # %land.lhs.true.159
	cmpl	$0, 572(%rcx)
	je	.LBB5_90
.LBB5_89:                               # %if.then.161
	movl	$1, %r14d
.LBB5_90:                               # %if.end.162
	movl	%edi, 84(%rsp)          # 4-byte Spill
	movl	%ebx, 88(%rsp)          # 4-byte Spill
	movl	%ebp, 100(%rsp)         # 4-byte Spill
	movl	%esi, 116(%rsp)         # 4-byte Spill
	cmpl	$0, 9528(%r12)
	je	.LBB5_109
# BB#91:                                # %if.then.164
	cmpl	$0, 30524(%r12)
	je	.LBB5_92
# BB#93:                                # %select.mid
	movl	%r10d, %ebx
	movl	%r8d, 120(%rsp)         # 4-byte Spill
	movq	%r9, 128(%rsp)          # 8-byte Spill
	leaq	30528(%r12), %rbp
	jmp	.LBB5_94
.LBB5_92:
	movl	%r10d, %ebx
	movl	%r8d, 120(%rsp)         # 4-byte Spill
	movq	%r9, 128(%rsp)          # 8-byte Spill
	leaq	9784(%r12), %rbp
.LBB5_94:                               # %select.end
	leaq	8(%rcx), %rdi
	movq	%rcx, 104(%rsp)         # 8-byte Spill
	leaq	2696(%rsp), %rsi
	callq	gs_matrix_invert
	movl	%eax, %r13d
	testl	%r13d, %r13d
	js	.LBB5_95
# BB#96:                                # %lor.lhs.false.174
	movq	176(%rsp), %rax         # 8-byte Reload
	leaq	132(%rax), %rsi
	movq	152(%rsp), %rax         # 8-byte Reload
	testq	%rax, %rax
	cmovneq	%rax, %rsi
	leaq	2696(%rsp), %rdi
	movq	%rdi, %rdx
	callq	gs_matrix_multiply
	movl	%eax, %r13d
	testl	%r13d, %r13d
	js	.LBB5_95
# BB#97:                                # %if.end.178
	movq	%rbp, 72(%rsp)          # 8-byte Spill
	movl	100(%rsp), %eax         # 4-byte Reload
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, 2816(%rsp)
	movl	88(%rsp), %eax          # 4-byte Reload
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, 2824(%rsp)
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%ebx, %xmm0
	movl	%ebx, 80(%rsp)          # 4-byte Spill
	movsd	%xmm0, 2832(%rsp)
	movl	116(%rsp), %eax         # 4-byte Reload
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, 2840(%rsp)
	leaq	2816(%rsp), %rdi
	leaq	2696(%rsp), %rsi
	leaq	2720(%rsp), %rbx
	movq	%rbx, %rdx
	callq	gs_bbox_transform_only
	leaq	2784(%rsp), %rsi
	movq	%rbx, %rdi
	callq	gs_points_bbox
	movsd	.LCPI5_6(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	2784(%rsp), %xmm0       # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movsd	2792(%rsp), %xmm0       # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %r13d
	movsd	2800(%rsp), %xmm0       # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %r15d
	movsd	2808(%rsp), %xmm0       # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ebx
	movq	2944(%rsp), %rbp
	movq	%rbp, %rdi
	testq	%rdi, %rdi
	je	.LBB5_100
# BB#98:                                # %land.lhs.true.226
	movl	%ecx, %ebp
	movl	%ebp, %esi
	movl	%r13d, %edx
	movl	%r15d, %ecx
	movl	%ebx, %r8d
	callq	gx_cpath_includes_rectangle
	movq	2944(%rsp), %rsi
	movl	%ebp, %ecx
	testl	%eax, %eax
	je	.LBB5_99
.LBB5_100:                              # %if.else.280
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%ecx, %xmm0
	movsd	.LCPI5_7(%rip), %xmm4   # xmm4 = mem[0],zero
	mulsd	%xmm4, %xmm0
	movss	884(%r12), %xmm1        # xmm1 = mem[0],zero,zero,zero
	movss	888(%r12), %xmm2        # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	movsd	.LCPI5_8(%rip), %xmm3   # xmm3 = mem[0],zero
	divsd	%xmm3, %xmm1
	divsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm5
	cvtsi2sdl	%r13d, %xmm6
	mulsd	%xmm4, %xmm6
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm2, %xmm0
	divsd	%xmm3, %xmm0
	divsd	%xmm0, %xmm6
	xorps	%xmm2, %xmm2
	cvtsd2ss	%xmm6, %xmm2
	xorps	%xmm3, %xmm3
	cvtsi2sdl	%r15d, %xmm3
	mulsd	%xmm4, %xmm3
	divsd	%xmm1, %xmm3
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%ebx, %xmm1
	mulsd	%xmm4, %xmm1
	movq	72(%rsp), %rdx          # 8-byte Reload
	movsd	(%rdx), %xmm6           # xmm6 = mem[0],zero
	cvtss2sd	%xmm5, %xmm4
	ucomisd	%xmm4, %xmm6
	movq	104(%rsp), %rcx         # 8-byte Reload
	movq	128(%rsp), %r9          # 8-byte Reload
	movl	120(%rsp), %r8d         # 4-byte Reload
	jbe	.LBB5_102
# BB#101:                               # %if.then.326
	movsd	%xmm4, (%rdx)
.LBB5_102:                              # %if.end.330
	divsd	%xmm0, %xmm1
	cvtsd2ss	%xmm3, %xmm0
	movsd	8(%rdx), %xmm3          # xmm3 = mem[0],zero
	cvtss2sd	%xmm2, %xmm2
	ucomisd	%xmm2, %xmm3
	movl	80(%rsp), %r10d         # 4-byte Reload
	jbe	.LBB5_104
# BB#103:                               # %if.then.336
	movsd	%xmm2, 8(%rdx)
.LBB5_104:                              # %if.end.340
	cvtsd2ss	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm0
	ucomisd	16(%rdx), %xmm0
	jbe	.LBB5_106
# BB#105:                               # %if.then.346
	movsd	%xmm0, 16(%rdx)
.LBB5_106:                              # %if.end.350
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm0
	movb	$1, %al
	ucomisd	24(%rdx), %xmm0
	jbe	.LBB5_108
# BB#107:                               # %if.then.356
	movsd	%xmm0, 24(%rdx)
                                        # implicit-def: R13D
	jmp	.LBB5_108
.LBB5_95:
	xorl	%eax, %eax
	movq	104(%rsp), %rcx         # 8-byte Reload
	movq	128(%rsp), %r9          # 8-byte Reload
	movl	120(%rsp), %r8d         # 4-byte Reload
	movl	%ebx, %r10d
.LBB5_108:                              # %cleanup
	testb	%al, %al
	movq	2952(%rsp), %r15
	je	.LBB5_328
.LBB5_109:                              # %if.end.368
	movq	%rcx, %r13
	testl	%r14d, %r14d
	je	.LBB5_111
# BB#110:                               # %if.then.370
	movq	200(%r15), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.14, %edx
	movq	168(%rsp), %rsi         # 8-byte Reload
	callq	*24(%rdi)
	movq	2960(%rsp), %rax
	movq	%rax, 16(%rsp)
	movq	%r15, 8(%rsp)
	movq	2944(%rsp), %rax
	movq	%rax, (%rsp)
	movq	%r12, %rdi
.LBB5_127:                              # %cleanup.950
	movq	176(%rsp), %rsi         # 8-byte Reload
	movq	152(%rsp), %rdx         # 8-byte Reload
	movq	%r13, %rcx
.LBB5_324:                              # %cleanup.950
	movq	160(%rsp), %r8          # 8-byte Reload
.LBB5_325:                              # %cleanup.950
	movq	144(%rsp), %r9          # 8-byte Reload
.LBB5_326:                              # %cleanup.950
	callq	gx_default_begin_typed_image
.LBB5_327:                              # %cleanup.950
	movl	%eax, %r13d
.LBB5_328:                              # %cleanup.950
	movl	%r13d, %eax
	addq	$2888, %rsp             # imm = 0xB48
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB5_111:                              # %if.end.378
	movl	%r8d, 120(%rsp)         # 4-byte Spill
	movl	%r10d, 80(%rsp)         # 4-byte Spill
	movq	576(%r13), %rbp
	movl	$1, %eax
	testl	%r9d, %r9d
	movq	%r9, 128(%rsp)          # 8-byte Spill
	movq	2960(%rsp), %rbx
	movq	%rbx, %r14
	movq	%r12, %rbx
	jne	.LBB5_113
# BB#112:                               # %cond.false
	movq	%rbp, %rdi
	callq	gs_color_space_num_components
.LBB5_113:                              # %cond.end
	movq	%rbp, 72(%rsp)          # 8-byte Spill
	movl	%eax, 68(%rsp)          # 4-byte Spill
	movq	%rbx, %rdi
	movq	2944(%rsp), %rbp
	movq	%rbp, %r12
	movq	%r12, %rsi
	callq	pdf_must_put_clip_path
	testl	%eax, %eax
	movq	144(%rsp), %rbp         # 8-byte Reload
	je	.LBB5_115
# BB#114:                               # %if.then.383
	movq	%rbx, %rdi
	callq	pdf_unclip
	jmp	.LBB5_116
.LBB5_64:                               # %if.then.96
	movq	200(%r15), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.14, %edx
	movq	168(%rsp), %rsi         # 8-byte Reload
	callq	*24(%rdi)
	leaq	840(%rsp), %rdi
	movl	$1112, %edx             # imm = 0x458
	movq	%r12, %rsi
	callq	memcpy
	movq	$0, 2784(%rsp)
	movq	%r14, %rdi
	movq	2944(%rsp), %rsi
	callq	pdf_must_put_clip_path
	testl	%eax, %eax
	je	.LBB5_66
# BB#65:                                # %if.then.i.557
	movq	%r14, %rdi
	callq	pdf_unclip
	jmp	.LBB5_67
.LBB5_115:                              # %if.else.385
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	pdf_open_page
.LBB5_116:                              # %if.end.387
	testl	%eax, %eax
	js	.LBB5_117
# BB#118:                               # %if.end.398
	cmpl	$1, 2968(%rsp)
	jne	.LBB5_122
# BB#119:                               # %if.end.410.thread
	movq	24(%rbx), %rdi
	callq	gs_cspace_new_DeviceGray
	movq	%rax, 72(%rsp)          # 8-byte Spill
	jmp	.LBB5_120
.LBB5_117:                              # %if.then.390
	movq	200(%r15), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.14, %edx
	movq	168(%rsp), %rsi         # 8-byte Reload
	callq	*24(%rdi)
	movq	%r14, 16(%rsp)
	movq	%r15, 8(%rsp)
	movq	%r12, (%rsp)
	movq	%rbx, %rdi
	movq	176(%rsp), %rsi         # 8-byte Reload
	movq	152(%rsp), %rdx         # 8-byte Reload
	movq	%r13, %rcx
	movq	160(%rsp), %r8          # 8-byte Reload
	movq	%rbp, %r9
	jmp	.LBB5_326
.LBB5_122:                              # %if.else.403
	movq	128(%rsp), %rax         # 8-byte Reload
	movq	%rbx, %rdi
	testl	%eax, %eax
	je	.LBB5_124
# BB#123:                               # %if.then.405
	movq	176(%rsp), %rsi         # 8-byte Reload
	movq	%rbp, %rdx
	callq	pdf_prepare_imagemask
	jmp	.LBB5_125
.LBB5_99:                               # %if.then.237
	movsd	2720(%rsp), %xmm0       # xmm0 = mem[0],zero
	movsd	.LCPI5_6(%rip), %xmm1   # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, 68(%rsp)          # 4-byte Spill
	movsd	2728(%rsp), %xmm0       # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %r13d
	movsd	2752(%rsp), %xmm0       # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	subl	%ecx, %eax
	movl	%eax, 72(%rsp)          # 4-byte Spill
	movsd	2760(%rsp), %xmm0       # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %r15d
	subl	%r13d, %r15d
	movq	%r12, %rbx
	incl	9776(%rbx)
	leaq	840(%rsp), %rdi
	movq	%rdi, %rbp
	movq	%rbx, %rdx
	callq	gx_make_clip_device_on_stack
	movq	%rbx, %rdi
	callq	gx_device_black
	movq	%rax, 192(%rsp)
	movq	$gx_dc_type_data_pure, 184(%rsp)
	movl	$0, 544(%rsp)
	movsd	2736(%rsp), %xmm0       # xmm0 = mem[0],zero
	movsd	.LCPI5_6(%rip), %xmm1   # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movl	68(%rsp), %esi          # 4-byte Reload
	subl	%esi, %ecx
	movsd	2744(%rsp), %xmm0       # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %r8d
	subl	%r13d, %r8d
	leaq	184(%rsp), %rax
	movq	%rax, 8(%rsp)
	movl	%r15d, (%rsp)
	movl	$252, 16(%rsp)
	movq	%rbp, %rdi
	movl	%esi, %ebp
	movl	%r13d, %edx
	movl	72(%rsp), %r12d         # 4-byte Reload
	movl	%r12d, %r9d
	callq	gx_default_fill_triangle
	movsd	2768(%rsp), %xmm0       # xmm0 = mem[0],zero
	movsd	.LCPI5_6(%rip), %xmm1   # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	subl	%ebp, %ecx
	mulsd	2776(%rsp), %xmm1
	cvttsd2si	%xmm1, %r8d
	subl	%r13d, %r8d
	leaq	184(%rsp), %rax
	movq	%rax, 8(%rsp)
	movl	%r15d, (%rsp)
	movl	$252, 16(%rsp)
	leaq	840(%rsp), %rdi
	movl	%ebp, %esi
	movl	%r13d, %edx
	movl	%r12d, %r9d
	callq	gx_default_fill_triangle
	decl	9776(%rbx)
	movq	%rbx, %r12
	movb	$1, %al
                                        # implicit-def: R13D
	movq	104(%rsp), %rcx         # 8-byte Reload
	movl	80(%rsp), %r10d         # 4-byte Reload
	movq	128(%rsp), %r9          # 8-byte Reload
	movl	120(%rsp), %r8d         # 4-byte Reload
	jmp	.LBB5_108
.LBB5_66:                               # %if.else.i.558
	movl	$1, %esi
	movq	%r14, %rdi
	callq	pdf_open_page
.LBB5_67:                               # %if.end.i.561
	movl	%eax, %r13d
	testl	%r13d, %r13d
	js	.LBB5_328
# BB#68:                                # %if.end.4.i
	movq	%r14, %rdi
	movq	2944(%rsp), %rsi
	callq	pdf_put_clip_path
	movl	%eax, %r13d
	testl	%r13d, %r13d
	js	.LBB5_328
# BB#69:                                # %if.end.8.i
	leaq	2720(%rsp), %rdi
	callq	gs_make_identity
	movq	%r12, %rdi
	addq	$8, %rdi
	leaq	2816(%rsp), %rbx
	movq	%rbx, %rsi
	callq	gs_matrix_invert
	movq	176(%rsp), %rax         # 8-byte Reload
	leaq	132(%rax), %rsi
	movq	%r14, %rbp
	leaq	184(%rsp), %r14
	movq	%rbx, %rdi
	movq	%r14, %rdx
	callq	gs_matrix_multiply
	movq	872(%rsp), %rax
	movq	%rax, %rcx
	shrq	$32, %rcx
	movl	%ecx, 16(%rsp)
	movl	%eax, 8(%rsp)
	movl	$0, 24(%rsp)
	movl	$0, (%rsp)
	leaq	2784(%rsp), %rcx
	movl	$1, %r8d
	xorl	%r9d, %r9d
	movq	%rbp, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	pdf_setup_masked_image_converter
	movl	%eax, %r13d
	testl	%r13d, %r13d
	js	.LBB5_328
# BB#70:                                # %if.end.14.i
	movq	2784(%rsp), %rax
	movl	$1, 84(%rax)
	movq	2792(%rax), %rdi
	movl	$1, 84(%rdi)
	movl	$0, 2840(%rax)
	movl	832(%rdi), %ecx
	movl	836(%rdi), %r8d
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%r9d, %r9d
	callq	*1200(%rdi)
	movl	%eax, %r13d
	testl	%r13d, %r13d
	js	.LBB5_328
# BB#71:                                # %if.end.23.i
	movq	2784(%rsp), %rdi
	movl	$1, %esi
	callq	gx_device_retain
	movq	2784(%rsp), %rax
	movq	2792(%rax), %rdi
	movl	$1, %esi
	callq	gx_device_retain
	leaq	848(%rsp), %rdi
	callq	gs_make_identity
	movq	2784(%rsp), %rdi
	movq	2960(%rsp), %rax
	movq	%rax, 16(%rsp)
	movq	%r15, 8(%rsp)
	movq	$0, (%rsp)
	leaq	2720(%rsp), %rdx
	leaq	840(%rsp), %rcx
	movq	176(%rsp), %rsi         # 8-byte Reload
	movq	160(%rsp), %r8          # 8-byte Reload
	movq	144(%rsp), %r9          # 8-byte Reload
	callq	gx_default_begin_typed_image
	movl	%eax, %r13d
	testl	%r13d, %r13d
	js	.LBB5_328
# BB#72:                                # %if.end.29.i
	movq	2960(%rsp), %rax
	movq	(%rax), %rax
	movq	$pdf_image_cvd_enum_procs, 8(%rax)
	xorl	%r13d, %r13d
	jmp	.LBB5_328
.LBB5_124:                              # %if.else.407
	movq	176(%rsp), %rsi         # 8-byte Reload
	callq	pdf_prepare_image
.LBB5_125:                              # %if.end.410
	testl	%eax, %eax
	js	.LBB5_126
.LBB5_120:                              # %if.end.421
	movl	$st_pdf_image_enum, %esi
	movl	$.L.str.15, %edx
	movq	%r15, %rdi
	callq	*72(%r15)
	movq	%rax, %r12
	testq	%r12, %r12
	je	.LBB5_121
# BB#128:                               # %if.end.433
	xorl	%esi, %esi
	movl	$800, %edx              # imm = 0x320
	movq	%r12, %rdi
	callq	memset
	movq	%r12, (%r14)
	movsd	9368(%rbx), %xmm0       # xmm0 = mem[0],zero
	movq	%rbx, %r15
	ucomisd	.LCPI5_1(%rip), %xmm0
	jae	.LBB5_129
# BB#130:                               # %cond.false.442
	movl	$pdf_image_object_enum_procs, %edx
	cmpl	$1, 2968(%rsp)
	movq	%r13, %rsi
	movq	160(%rsp), %rcx         # 8-byte Reload
	je	.LBB5_132
# BB#131:                               # %cond.false.446
	cmpl	$2, 2968(%rsp)
	movl	$pdf_image_object_enum_procs2, %eax
	movl	$pdf_image_enum_procs, %edx
	cmoveq	%rax, %rdx
	jmp	.LBB5_132
.LBB5_121:                              # %if.then.426
	movq	200(%r15), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.14, %edx
	movq	168(%rsp), %rsi         # 8-byte Reload
	callq	*24(%rdi)
	movl	$-25, %r13d
	jmp	.LBB5_328
.LBB5_129:                              # %cond.true.438
	cmpl	$1, 2968(%rsp)
	movl	$pdf_image_object_enum_procs, %eax
	movl	$pdf_image_enum_procs, %edx
	cmoveq	%rax, %rdx
	movq	%r13, %rsi
	movq	160(%rsp), %rcx         # 8-byte Reload
.LBB5_132:                              # %cond.end.452
	movq	%rcx, 160(%rsp)         # 8-byte Spill
	movq	%r12, %rdi
	movq	%r15, %rcx
	movq	%rsi, %r13
	movl	68(%rsp), %ebx          # 4-byte Reload
	movl	%ebx, %r8d
	movl	84(%rsp), %r9d          # 4-byte Reload
	callq	gx_image_enum_common_init
	movq	2952(%rsp), %rax
	movq	%rax, 24(%r12)
	movl	80(%rsp), %edi          # 4-byte Reload
	movl	100(%rsp), %esi         # 4-byte Reload
	subl	%esi, %edi
	movl	%edi, 568(%r12)
	movl	116(%rsp), %r9d         # 4-byte Reload
	movl	88(%rsp), %r10d         # 4-byte Reload
	subl	%r10d, %r9d
	movl	40(%r13), %eax
	imull	%ebx, %eax
	movl	44(%r12), %ecx
	xorl	%r14d, %r14d
	xorl	%edx, %edx
	divl	%ecx
	movl	%eax, 572(%r12)
	movl	%r9d, 576(%r12)
	cmpq	$0, 136(%rsp)           # 8-byte Folded Reload
	jne	.LBB5_134
# BB#133:                               # %if.else.478
	movslq	%edi, %rdx
	cltq
	imulq	%rdx, %rax
	addq	$7, %rax
	shrq	$3, %rax
	cvtsi2sdq	%rax, %xmm0
	cvtsi2sdl	%ecx, %xmm1
	mulsd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%r9d, %xmm0
	mulsd	%xmm1, %xmm0
	xorps	%xmm1, %xmm1
	cvtsi2sdq	9592(%r15), %xmm1
	ucomisd	%xmm0, %xmm1
	seta	%al
	movzbl	%al, %r14d
	andl	120(%rsp), %r14d        # 4-byte Folded Reload
.LBB5_134:                              # %if.end.494
	movl	%edi, 80(%rsp)          # 4-byte Spill
	movq	176(%rsp), %rax         # 8-byte Reload
	leaq	132(%rax), %rbp
	movq	152(%rsp), %rax         # 8-byte Reload
	testq	%rax, %rax
	cmovneq	%rax, %rbp
	negl	%esi
	negl	%r10d
	movl	32(%r13), %ecx
	movq	%r13, %rbx
	movq	%rbx, 104(%rsp)         # 8-byte Spill
	movl	36(%rbx), %r8d
	leaq	184(%rsp), %rdi
	movl	%r10d, %edx
	movl	%r9d, 116(%rsp)         # 4-byte Spill
	callq	pdf_make_bitmap_matrix
	leaq	8(%rbx), %rdi
	leaq	840(%rsp), %rsi
	callq	gs_matrix_invert
	movl	%eax, %r13d
	testl	%r13d, %r13d
	js	.LBB5_137
# BB#135:                               # %lor.lhs.false.514
	leaq	184(%rsp), %rdi
	leaq	840(%rsp), %rsi
	movq	%rsi, %rdx
	callq	gs_matrix_multiply
	movl	%eax, %r13d
	testl	%r13d, %r13d
	js	.LBB5_137
# BB#136:                               # %lor.lhs.false.518
	leaq	776(%r12), %rdx
	leaq	840(%rsp), %rdi
	movq	%rbp, %rsi
	callq	gs_matrix_multiply
	movl	%eax, %r13d
	testl	%r13d, %r13d
	js	.LBB5_137
# BB#138:                               # %cleanup.543
	movq	776(%r12), %xmm0        # xmm0 = mem[0],zero
	movss	784(%r12), %xmm1        # xmm1 = mem[0],zero,zero,zero
	movss	788(%r12), %xmm2        # xmm2 = mem[0],zero,zero,zero
	movq	%r12, 56(%rsp)          # 8-byte Spill
	unpcklps	%xmm1, %xmm2    # xmm2 = xmm2[0],xmm1[0],xmm2[1],xmm1[1]
	mulps	%xmm0, %xmm2
	movaps	%xmm2, %xmm0
	shufps	$229, %xmm0, %xmm0      # xmm0 = xmm0[1,1,2,3]
	ucomiss	%xmm0, %xmm2
	jne	.LBB5_139
	jnp	.LBB5_323
.LBB5_139:                              # %cleanup.cont.547
	movq	%r15, %rdi
	movq	2944(%rsp), %rsi
	callq	pdf_put_clip_path
	movl	%eax, %r13d
	testl	%r13d, %r13d
	js	.LBB5_140
# BB#141:                               # %if.end.560
	movq	56(%rsp), %rbx          # 8-byte Reload
	leaq	584(%rbx), %rdi
	movq	%rdi, 152(%rsp)         # 8-byte Spill
	callq	pdf_image_writer_init
	movb	$1, %al
	testl	%r14d, %r14d
	jne	.LBB5_145
# BB#142:                               # %lor.rhs
	movq	104(%rsp), %rax         # 8-byte Reload
	cmpl	$64, 32(%rax)
	jg	.LBB5_143
# BB#144:                               # %land.rhs
	cmpl	$65, 36(%rax)
	setl	%al
	jmp	.LBB5_145
.LBB5_137:                              # %cleanup.543.thread
	movq	2952(%rsp), %rbx
	movq	200(%rbx), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.14, %edx
	movq	168(%rsp), %rsi         # 8-byte Reload
	callq	*24(%rdi)
	movl	$.L.str.15, %edx
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	*24(%rbx)
	jmp	.LBB5_328
.LBB5_126:                              # %if.then.413
	movq	200(%r15), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.14, %edx
	movq	168(%rsp), %rsi         # 8-byte Reload
	callq	*24(%rdi)
	movq	%r14, 16(%rsp)
	movq	%r15, 8(%rsp)
	movq	%r12, (%rsp)
	movq	%rbx, %rdi
	jmp	.LBB5_127
.LBB5_60:                               # %if.then.80
	movq	200(%r15), %rax
.LBB5_61:                               # %cleanup.950
	movq	200(%rax), %rdi
	movl	$.L.str.14, %edx
	movq	168(%rsp), %rsi         # 8-byte Reload
	callq	*24(%rdi)
	xorl	%r13d, %r13d
	jmp	.LBB5_328
.LBB5_34:                               # %if.then.i
	movq	%r12, %r15
	movq	%r14, %rdi
	movq	2944(%rsp), %rbx
	movq	%rbx, %rsi
	callq	pdf_must_put_clip_path
	testl	%eax, %eax
	je	.LBB5_36
# BB#35:                                # %if.then.2.i
	movq	%r14, %rdi
	callq	pdf_unclip
	jmp	.LBB5_37
.LBB5_36:                               # %if.else.i
	movl	$1, %esi
	movq	%r14, %rdi
	callq	pdf_open_page
.LBB5_37:                               # %if.end.i.543
	movl	%eax, %r13d
	movq	144(%rsp), %r12         # 8-byte Reload
	testl	%r13d, %r13d
	js	.LBB5_328
# BB#38:                                # %if.end.7.i
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	pdf_put_clip_path
	movl	%eax, %r13d
	testl	%r13d, %r13d
	js	.LBB5_328
# BB#39:                                # %if.end.11.i
	movq	%r14, 168(%rsp)         # 8-byte Spill
	leaq	184(%rsp), %rdi
	movq	%rdi, 152(%rsp)         # 8-byte Spill
	callq	gs_make_identity
	movq	176(%rsp), %rbx         # 8-byte Reload
	movss	148(%rbx), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	addsd	.LCPI5_3(%rip), %xmm0
	callq	floor
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 200(%rsp)
	movss	152(%rbx), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	addsd	.LCPI5_3(%rip), %xmm0
	callq	floor
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 204(%rsp)
	leaq	840(%rsp), %r14
	movl	$1160, %edx             # imm = 0x488
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	memcpy
	leaq	848(%rsp), %r15
	leaq	2720(%rsp), %rsi
	movq	%r15, %rdi
	callq	gs_matrix_invert
	movq	%r15, %rdi
	callq	gs_make_identity
	movq	872(%rsp), %rcx
	movq	1464(%rsp), %rax
	testl	%ecx, %ecx
	jle	.LBB5_41
# BB#40:                                # %if.end.11.i
	cmpl	%eax, %ecx
	jge	.LBB5_41
# BB#42:                                # %if.then.30.i
	leal	-1(%rcx,%rax), %eax
	cltd
	idivl	%ecx
	cvtsi2sdl	%eax, %xmm2
	movsd	.LCPI5_4(%rip), %xmm1   # xmm1 = mem[0],zero
	movapd	%xmm1, %xmm0
	divsd	%xmm2, %xmm0
	movsd	%xmm0, 136(%rsp)        # 8-byte Spill
	leaq	2720(%rsp), %rdi
	movq	%rdi, %rsi
	callq	gs_matrix_scale
	movq	%r15, %rdi
	movsd	136(%rsp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI5_4(%rip), %xmm1   # xmm1 = mem[0],zero
	movq	%r15, %rsi
	callq	gs_matrix_scale
	movl	876(%rsp), %ecx
	movl	1468(%rsp), %eax
	jmp	.LBB5_43
.LBB5_41:                               # %if.end.11.if.end.44_crit_edge.i
	shrq	$32, %rax
	shrq	$32, %rcx
.LBB5_43:                               # %if.end.44.i
	movq	176(%rsp), %rdx         # 8-byte Reload
	leaq	132(%rdx), %r13
	testl	%ecx, %ecx
	jle	.LBB5_46
# BB#44:                                # %if.end.44.i
	cmpl	%eax, %ecx
	jge	.LBB5_46
# BB#45:                                # %if.then.53.i
	leal	-1(%rax,%rcx), %eax
	cltd
	idivl	%ecx
	cvtsi2sdl	%eax, %xmm2
	movsd	.LCPI5_4(%rip), %xmm0   # xmm0 = mem[0],zero
	movapd	%xmm0, %xmm1
	divsd	%xmm2, %xmm1
	movsd	%xmm1, 136(%rsp)        # 8-byte Spill
	leaq	2720(%rsp), %rdi
	movq	%rdi, %rsi
	callq	gs_matrix_scale
	movq	%r15, %rdi
	movsd	.LCPI5_4(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	136(%rsp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movq	%r15, %rsi
	callq	gs_matrix_scale
.LBB5_46:                               # %if.end.69.i
	leaq	1440(%rsp), %rsi
	leaq	2720(%rsp), %rbp
	movq	%rbp, %rdi
	movq	%rsi, %rdx
	callq	gs_matrix_multiply
	movq	168(%rsp), %rax         # 8-byte Reload
	leaq	30612(%rax), %rdx
	movq	%rbp, %rdi
	movq	%r13, %rsi
	callq	gs_matrix_multiply
	movq	160(%rsp), %rbx         # 8-byte Reload
	movq	2952(%rsp), %r15
	movq	2960(%rsp), %r13
	jmp	.LBB5_47
.LBB5_140:                              # %if.then.551
	movq	2952(%rsp), %rbx
	movq	200(%rbx), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.14, %edx
	movq	168(%rsp), %rsi         # 8-byte Reload
	callq	*24(%rdi)
	movl	$.L.str.15, %edx
	movq	%rbx, %rdi
	movq	56(%rsp), %rsi          # 8-byte Reload
	callq	*24(%rbx)
	jmp	.LBB5_328
.LBB5_143:
	xorl	%eax, %eax
.LBB5_145:                              # %lor.end
	cmpb	$1, %al
	movl	$1, %eax
	adcl	$0, %eax
	movl	%eax, 712(%rbx)
	movq	168(%rsp), %rax         # 8-byte Reload
	movq	576(%rax), %rax
	testq	%rax, %rax
	movq	128(%rsp), %rdx         # 8-byte Reload
	je	.LBB5_148
# BB#146:                               # %land.lhs.true.574
	movq	(%rax), %rcx
	cmpl	$10, (%rcx)
	jne	.LBB5_148
# BB#147:                               # %land.lhs.true.582
	cmpl	$2, 9072(%r15)
	jne	.LBB5_149
.LBB5_148:                              # %lor.lhs.false.585
	xorl	%ecx, %ecx
	cmpl	$0, 9960(%r15)
	je	.LBB5_150
.LBB5_149:                              # %if.then.587
	movl	$1, %ecx
.LBB5_150:                              # %if.end.588
	movl	%ecx, 100(%rsp)         # 4-byte Spill
	testl	%r14d, %r14d
	movl	%r14d, %r13d
	movl	$pdf_color_space_names_short, %ecx
	movl	$pdf_color_space_names, %ebx
	cmovneq	%rcx, %rbx
	xorl	%ecx, %ecx
	movq	%rcx, 120(%rsp)         # 8-byte Spill
	testl	%edx, %edx
	movl	$0, %ecx
	movq	%rcx, 128(%rsp)         # 8-byte Spill
	movl	$0, %r14d
	jne	.LBB5_280
# BB#151:                               # %if.then.592
	xorl	%r14d, %r14d
	cmpl	$1, 2968(%rsp)
	je	.LBB5_152
# BB#154:                               # %if.then.592
	testq	%rax, %rax
	movl	$0, %eax
	movq	%rax, 128(%rsp)         # 8-byte Spill
	je	.LBB5_153
# BB#155:                               # %if.then.601
	movq	72(%rsp), %rdi          # 8-byte Reload
	callq	gs_color_space_get_index
	cmpl	$12, %eax
	jne	.LBB5_157
# BB#156:                               # %if.then.i.570
	movq	72(%rsp), %rax          # 8-byte Reload
	movq	64(%rax), %rdi
	callq	gsicc_get_default_type
.LBB5_157:                              # %if.end.i.572
	movsd	.LCPI5_0(%rip), %xmm0   # xmm0 = mem[0],zero
	ucomisd	9368(%r15), %xmm0
	jae	.LBB5_158
# BB#203:                               # %if.else.130.i
	movl	9008(%r15), %ecx
	xorl	%edx, %edx
	movq	%rdx, 128(%rsp)         # 8-byte Spill
	addl	$-2, %ecx
	cmpl	$5, %ecx
	ja	.LBB5_153
# BB#204:                               # %if.else.130.i
	jmpq	*.LJTI5_1(,%rcx,8)
.LBB5_249:                              # %sw.bb.321.i
	xorl	%ecx, %ecx
	movq	%rcx, 128(%rsp)         # 8-byte Spill
	movl	%eax, %edx
	cmpl	$10, %eax
	ja	.LBB5_169
# BB#250:                               # %sw.bb.321.i
	movq	72(%rsp), %rcx          # 8-byte Reload
	movq	%rcx, %rax
	jmpq	*.LJTI5_4(,%rdx,8)
.LBB5_256:                              # %while.cond.340.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%rcx, %r14
	movq	40(%r14), %rcx
	testq	%rcx, %rcx
	jne	.LBB5_256
# BB#257:                               # %while.end.345.i
	movq	%rbx, 88(%rsp)          # 8-byte Spill
	movq	%r14, %rdi
	callq	gs_color_space_get_index
	cmpl	$12, %eax
	jne	.LBB5_260
# BB#258:                               # %if.then.348.i
	movq	64(%r14), %rdi
	jmp	.LBB5_259
.LBB5_152:
	xorl	%eax, %eax
	movq	%rax, 128(%rsp)         # 8-byte Spill
	jmp	.LBB5_153
.LBB5_158:                              # %if.then.3.i.574
	cmpl	$10, %eax
	movq	72(%rsp), %r12          # 8-byte Reload
	jne	.LBB5_160
# BB#159:                               # %if.then.5.i
	movq	72(%rsp), %rax          # 8-byte Reload
	movq	40(%rax), %r12
	movq	%r12, %rdi
	callq	gs_color_space_get_index
.LBB5_160:                              # %if.end.7.i.575
	xorl	%ecx, %ecx
	movq	%rcx, 128(%rsp)         # 8-byte Spill
	movl	%eax, %ecx
	xorl	%r14d, %r14d
	cmpl	$12, %eax
	ja	.LBB5_153
# BB#161:                               # %if.end.7.i.575
	jmpq	*.LJTI5_0(,%rcx,8)
.LBB5_180:                              # %sw.bb.46.i
	xorl	%ecx, %ecx
	movq	%rcx, 128(%rsp)         # 8-byte Spill
	cmpl	$0, 9524(%r15)
	je	.LBB5_278
# BB#181:                               # %if.then.48.i
	movl	9008(%r15), %ecx
	cmpl	$8, %ecx
	ja	.LBB5_184
# BB#182:                               # %if.then.48.i
	movl	$267, %edx              # imm = 0x10B
	btl	%ecx, %edx
	jae	.LBB5_184
# BB#183:                               # %sw.bb.51.i
	xorl	%ecx, %ecx
	movq	%rcx, 128(%rsp)         # 8-byte Spill
	cmpl	$9, %eax
	je	.LBB5_153
	jmp	.LBB5_184
.LBB5_251:                              # %while.cond.324.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%rax, %r14
	movq	40(%r14), %rax
	testq	%rax, %rax
	jne	.LBB5_251
# BB#252:                               # %while.end.329.i
	movq	%rbx, 88(%rsp)          # 8-byte Spill
	movq	%r14, %rdi
	callq	gs_color_space_get_index
	cmpl	$12, %eax
	jne	.LBB5_255
# BB#253:                               # %if.then.332.i
	movq	64(%r14), %rdi
.LBB5_254:                              # %if.end.335.i
	callq	gsicc_get_default_type
.LBB5_255:                              # %if.end.335.i
	cmpl	$1, %eax
	jmp	.LBB5_211
.LBB5_205:                              # %sw.bb.135.i
	xorl	%ecx, %ecx
	movq	%rcx, 128(%rsp)         # 8-byte Spill
	movl	%eax, %edx
	cmpl	$10, %eax
	ja	.LBB5_179
# BB#206:                               # %sw.bb.135.i
	movq	72(%rsp), %rcx          # 8-byte Reload
	movq	%rcx, %rax
	jmpq	*.LJTI5_2(,%rdx,8)
.LBB5_213:                              # %while.cond.151.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%rcx, %r14
	movq	40(%r14), %rcx
	testq	%rcx, %rcx
	jne	.LBB5_213
	jmp	.LBB5_214
.LBB5_207:                              # %while.cond.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%rax, %r14
	movq	40(%r14), %rax
	testq	%rax, %rax
	jne	.LBB5_207
	jmp	.LBB5_208
.LBB5_225:                              # %sw.bb.234.i
	movq	%rbx, 88(%rsp)          # 8-byte Spill
	xorl	%ecx, %ecx
	movq	%rcx, 128(%rsp)         # 8-byte Spill
	cmpl	$8, %eax
	jg	.LBB5_233
# BB#226:                               # %sw.bb.234.i
	testl	%eax, %eax
	movl	$0, %r14d
	movq	88(%rsp), %rbx          # 8-byte Reload
	je	.LBB5_153
# BB#227:                               # %sw.bb.234.i
	cmpl	$4, %eax
	jne	.LBB5_187
# BB#228:
	movq	72(%rsp), %rax          # 8-byte Reload
.LBB5_229:                              # %while.cond.253.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%rax, %rbx
	movq	40(%rbx), %rax
	testq	%rax, %rax
	jne	.LBB5_229
	jmp	.LBB5_230
.LBB5_233:                              # %sw.bb.234.i
	cmpl	$10, %eax
	jne	.LBB5_234
# BB#240:                               # %sw.bb.268.i
	movq	72(%rsp), %rax          # 8-byte Reload
	movq	40(%rax), %rbx
	movq	%rbx, %rdi
	callq	gs_color_space_get_index
	cmpl	$12, %eax
	jne	.LBB5_242
# BB#241:                               # %if.then.272.i
	movq	64(%rbx), %rdi
	callq	gsicc_get_default_type
.LBB5_242:                              # %if.end.275.i
	xorl	%ecx, %ecx
	movq	%rcx, 128(%rsp)         # 8-byte Spill
	testl	%eax, %eax
	movl	$0, %r14d
	movq	88(%rsp), %rbx          # 8-byte Reload
	je	.LBB5_153
# BB#243:                               # %if.end.275.i
	cmpl	$4, %eax
	jne	.LBB5_246
# BB#244:
	movq	72(%rsp), %rax          # 8-byte Reload
.LBB5_245:                              # %while.cond.294.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%rax, %rbx
	movq	40(%rbx), %rax
	testq	%rax, %rax
	jne	.LBB5_245
.LBB5_230:                              # %while.end.258.i
	movq	%rbx, %rdi
	callq	gs_color_space_get_index
	cmpl	$12, %eax
	jne	.LBB5_232
# BB#231:                               # %if.then.261.i
	movq	64(%rbx), %rdi
	callq	gsicc_get_default_type
.LBB5_232:                              # %if.end.264.i
	testl	%eax, %eax
	jmp	.LBB5_217
.LBB5_162:                              # %sw.bb.i
	movl	9008(%r15), %eax
	xorl	%ecx, %ecx
	movq	%rcx, 128(%rsp)         # 8-byte Spill
	testl	%eax, %eax
	jne	.LBB5_164
# BB#163:
	xorl	%r14d, %r14d
	jmp	.LBB5_153
.LBB5_166:                              # %sw.bb.17.i
	movl	9008(%r15), %eax
	xorl	%ecx, %ecx
	movq	%rcx, 128(%rsp)         # 8-byte Spill
	testl	%eax, %eax
	jne	.LBB5_168
# BB#167:
	xorl	%r14d, %r14d
	jmp	.LBB5_153
.LBB5_176:                              # %sw.bb.31.i
	movl	9008(%r15), %eax
	cmpl	$5, %eax
	je	.LBB5_178
# BB#177:                               # %sw.bb.31.i
	testl	%eax, %eax
	jne	.LBB5_179
.LBB5_178:                              # %land.lhs.true.i.579
	xorl	%eax, %eax
	movq	%rax, 128(%rsp)         # 8-byte Spill
	cmpl	$0, 9112(%r15)
	je	.LBB5_153
.LBB5_179:                              # %if.else.41.i
	movq	(%rbx), %rsi
	jmp	.LBB5_170
.LBB5_188:                              # %sw.bb.73.i
	movq	64(%r12), %rdi
	callq	gsicc_get_default_type
	cmpl	$2, %eax
	je	.LBB5_197
# BB#189:                               # %sw.bb.73.i
	cmpl	$1, %eax
	jne	.LBB5_190
# BB#194:                               # %sw.bb.86.i
	movl	9008(%r15), %eax
	xorl	%ecx, %ecx
	movq	%rcx, 128(%rsp)         # 8-byte Spill
	testl	%eax, %eax
	jne	.LBB5_196
# BB#195:
	xorl	%r14d, %r14d
	jmp	.LBB5_153
.LBB5_234:                              # %sw.bb.234.i
	cmpl	$9, %eax
	jne	.LBB5_187
# BB#235:
	movq	72(%rsp), %rax          # 8-byte Reload
.LBB5_236:                              # %while.cond.237.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%rax, %rbx
	movq	40(%rbx), %rax
	testq	%rax, %rax
	jne	.LBB5_236
	jmp	.LBB5_237
.LBB5_164:                              # %sw.bb.i
	cmpl	$6, %eax
	movl	$0, %r14d
	je	.LBB5_153
# BB#165:                               # %if.else.i.576
	movq	8(%rbx), %rsi
	jmp	.LBB5_170
.LBB5_168:                              # %sw.bb.17.i
	cmpl	$7, %eax
	movl	$0, %r14d
	je	.LBB5_153
.LBB5_169:                              # %sw.default.402.i
	movq	16(%rbx), %rsi
.LBB5_170:                              # %sw.default.402.i
	movq	%rbx, 88(%rsp)          # 8-byte Spill
	jmp	.LBB5_171
.LBB5_261:                              # %sw.bb.355.i
	movq	%rbx, %r12
	movq	72(%rsp), %rax          # 8-byte Reload
	movq	40(%rax), %rbx
	movq	%rbx, %rdi
	callq	gs_color_space_get_index
	cmpl	$12, %eax
	jne	.LBB5_263
# BB#262:                               # %if.then.359.i
	movq	64(%rbx), %rdi
	callq	gsicc_get_default_type
.LBB5_263:                              # %if.end.362.i
	xorl	%ecx, %ecx
	movq	%rcx, 128(%rsp)         # 8-byte Spill
	cmpl	$2, %eax
	movl	$0, %r14d
	movq	%r12, %rbx
	jb	.LBB5_153
# BB#264:                               # %if.end.362.i
	movq	%rbx, 88(%rsp)          # 8-byte Spill
	cmpl	$4, %eax
	jne	.LBB5_269
# BB#265:
	movq	72(%rsp), %rax          # 8-byte Reload
.LBB5_266:                              # %while.cond.381.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%rax, %rbx
	movq	40(%rbx), %rax
	testq	%rax, %rax
	jne	.LBB5_266
# BB#267:                               # %while.end.386.i
	movq	%rbx, %rdi
	callq	gs_color_space_get_index
	cmpl	$12, %eax
	jne	.LBB5_260
# BB#268:                               # %if.then.389.i
	movq	64(%rbx), %rdi
.LBB5_259:                              # %if.end.351.i
	callq	gsicc_get_default_type
.LBB5_260:                              # %if.end.351.i
	cmpl	$1, %eax
	jmp	.LBB5_217
.LBB5_197:                              # %sw.bb.96.i
	movl	9008(%r15), %eax
	xorl	%ecx, %ecx
	movq	%rcx, 128(%rsp)         # 8-byte Spill
	testl	%eax, %eax
	jne	.LBB5_199
# BB#198:
	xorl	%r14d, %r14d
	jmp	.LBB5_153
.LBB5_190:                              # %sw.bb.73.i
	testl	%eax, %eax
	jne	.LBB5_184
# BB#191:                               # %sw.bb.76.i
	movl	9008(%r15), %eax
	xorl	%ecx, %ecx
	movq	%rcx, 128(%rsp)         # 8-byte Spill
	testl	%eax, %eax
	jne	.LBB5_193
# BB#192:
	xorl	%r14d, %r14d
	jmp	.LBB5_153
.LBB5_218:                              # %sw.bb.166.i
	movq	%rbx, %r12
	movq	72(%rsp), %rax          # 8-byte Reload
	movq	40(%rax), %rbx
	movq	%rbx, %rdi
	callq	gs_color_space_get_index
	cmpl	$12, %eax
	jne	.LBB5_220
# BB#219:                               # %if.then.170.i
	movq	64(%rbx), %rdi
	callq	gsicc_get_default_type
.LBB5_220:                              # %if.end.173.i
	xorl	%ecx, %ecx
	movq	%rcx, 128(%rsp)         # 8-byte Spill
	movl	%eax, %edx
	cmpl	$9, %eax
	movl	$0, %r14d
	movq	%r12, %rbx
	ja	.LBB5_184
# BB#221:                               # %if.end.173.i
	movq	72(%rsp), %rcx          # 8-byte Reload
	movq	%rcx, %rax
	jmpq	*.LJTI5_3(,%rdx,8)
.LBB5_223:                              # %while.cond.192.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%rcx, %r14
	movq	40(%r14), %rcx
	testq	%rcx, %rcx
	jne	.LBB5_223
.LBB5_214:                              # %while.end.156.i
	movq	%rbx, 88(%rsp)          # 8-byte Spill
	movq	%r14, %rdi
	callq	gs_color_space_get_index
	cmpl	$12, %eax
	jne	.LBB5_216
# BB#215:                               # %if.then.159.i
	movq	64(%r14), %rdi
	callq	gsicc_get_default_type
.LBB5_216:                              # %if.end.162.i
	cmpl	$2, %eax
.LBB5_217:                              # %if.end.604
	setne	%al
	movzbl	%al, %ecx
	shll	$2, %ecx
	jmp	.LBB5_212
.LBB5_222:                              # %while.cond.176.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%rax, %r14
	movq	40(%r14), %rax
	testq	%rax, %rax
	jne	.LBB5_222
.LBB5_208:                              # %while.end.i
	movq	%rbx, 88(%rsp)          # 8-byte Spill
	movq	%r14, %rdi
	callq	gs_color_space_get_index
	cmpl	$12, %eax
	jne	.LBB5_210
# BB#209:                               # %if.then.143.i
	movq	64(%r14), %rdi
	callq	gsicc_get_default_type
.LBB5_210:                              # %if.end.146.i
	cmpl	$2, %eax
	jmp	.LBB5_211
.LBB5_246:                              # %if.end.275.i
	cmpl	$9, %eax
	jne	.LBB5_187
# BB#247:
	movq	72(%rsp), %rax          # 8-byte Reload
.LBB5_248:                              # %while.cond.278.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%rax, %rbx
	movq	40(%rbx), %rax
	testq	%rax, %rax
	jne	.LBB5_248
.LBB5_237:                              # %while.end.242.i
	movq	%rbx, %rdi
	callq	gs_color_space_get_index
	cmpl	$12, %eax
	jne	.LBB5_239
# BB#238:                               # %if.then.245.i
	movq	64(%rbx), %rdi
	callq	gsicc_get_default_type
.LBB5_239:                              # %if.end.248.i
	testl	%eax, %eax
.LBB5_211:                              # %if.end.604
	setne	%al
	movzbl	%al, %eax
	leal	(%rax,%rax,2), %ecx
.LBB5_212:                              # %if.end.604
	xorl	%eax, %eax
	movq	%rax, 128(%rsp)         # 8-byte Spill
	jmp	.LBB5_174
.LBB5_196:                              # %sw.bb.86.i
	cmpl	$7, %eax
	jmp	.LBB5_200
.LBB5_199:                              # %sw.bb.96.i
	cmpl	$5, %eax
	jmp	.LBB5_200
.LBB5_269:                              # %if.end.362.i
	cmpl	$9, %eax
	jne	.LBB5_201
# BB#270:
	movq	72(%rsp), %rax          # 8-byte Reload
.LBB5_271:                              # %while.cond.365.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%rax, %rbx
	movq	40(%rbx), %rax
	testq	%rax, %rax
	jne	.LBB5_271
# BB#272:                               # %while.end.370.i
	movq	%rbx, %rdi
	callq	gs_color_space_get_index
	cmpl	$12, %eax
	jne	.LBB5_255
# BB#273:                               # %if.then.373.i
	movq	64(%rbx), %rdi
	jmp	.LBB5_254
.LBB5_193:                              # %sw.bb.76.i
	cmpl	$6, %eax
.LBB5_200:                              # %sw.bb.96.i
	movl	$0, %r14d
	je	.LBB5_153
.LBB5_184:                              # %sw.default.i
	movq	%rbx, 88(%rsp)          # 8-byte Spill
	movl	30456(%r15), %eax
	cmpl	$2, %eax
	je	.LBB5_224
# BB#185:                               # %sw.default.i
	cmpl	$1, %eax
	jne	.LBB5_186
.LBB5_201:                              # %sw.bb.58.i
	movq	88(%rsp), %rax          # 8-byte Reload
	movq	16(%rax), %rsi
	jmp	.LBB5_171
.LBB5_186:                              # %sw.default.i
	testl	%eax, %eax
	jne	.LBB5_202
.LBB5_187:                              # %sw.bb.55.i
	movq	88(%rsp), %rax          # 8-byte Reload
	movq	8(%rax), %rsi
	jmp	.LBB5_171
.LBB5_224:                              # %sw.bb.61.i
	movq	88(%rsp), %rax          # 8-byte Reload
	movq	(%rax), %rsi
.LBB5_171:                              # %sw.default.402.i
	movq	$0, 840(%rsp)
	leaq	2856(%rsp), %rdi
	callq	cos_c_string_value
	movq	168(%rsp), %rax         # 8-byte Reload
	movq	576(%rax), %rax
	movq	%rax, 128(%rsp)         # 8-byte Spill
	movl	30456(%r15), %esi
	leaq	840(%rsp), %rdx
	movq	%r15, %rdi
	callq	make_device_color_space
	testl	%eax, %eax
	js	.LBB5_173
# BB#172:                               # %if.end.i.365.i
	movq	840(%rsp), %rax
	movq	168(%rsp), %rcx         # 8-byte Reload
	movq	%rax, 576(%rcx)
	xorl	%eax, %eax
.LBB5_173:                              # %setup_image_process_colorspace.exit367.i
	testl	%eax, %eax
	movl	$1, %ecx
	cmovsl	%eax, %ecx
.LBB5_174:                              # %if.end.604
	decl	%ecx
	cmpl	$3, %ecx
	ja	.LBB5_175
# BB#274:                               # %if.end.604
	xorl	%r14d, %r14d
	movq	88(%rsp), %rbx          # 8-byte Reload
	jmpq	*.LJTI5_5(,%rcx,8)
.LBB5_278:                              # %if.then.625
	movl	30456(%r15), %esi
	leaq	2880(%rsp), %rdx
	movq	%r15, %rdi
	callq	make_device_color_space
	testl	%eax, %eax
	js	.LBB5_323
# BB#279:                               # %if.end.630
	movq	2880(%rsp), %rcx
	movq	%rcx, 120(%rsp)         # 8-byte Spill
	movq	168(%rsp), %rax         # 8-byte Reload
	movq	%rcx, 576(%rax)
	movl	$0, 16(%rsp)
	movl	$0, 8(%rsp)
	movq	$0, (%rsp)
	leaq	2856(%rsp), %rsi
	leaq	2848(%rsp), %rdx
	movq	%r15, %rdi
	movq	%rbx, %r8
	movl	%r13d, %r9d
	callq	pdf_color_space_named
	movl	$1, %r14d
	testl	%eax, %eax
	jns	.LBB5_280
	jmp	.LBB5_323
.LBB5_322:                              # %if.then.642
	movl	$1, 16(%rsp)
	movl	$0, 8(%rsp)
	movq	$0, (%rsp)
	leaq	2856(%rsp), %rsi
	leaq	2848(%rsp), %rdx
	movq	%r15, %rdi
	movq	72(%rsp), %rcx          # 8-byte Reload
	movq	%rbx, %r8
	movl	%r13d, %r9d
	callq	pdf_color_space_named
	xorl	%ecx, %ecx
	movq	%rcx, 120(%rsp)         # 8-byte Spill
	testl	%eax, %eax
	movl	$0, %r14d
	jns	.LBB5_280
	jmp	.LBB5_323
.LBB5_277:                              # %if.then.616
	movl	%r13d, 16(%rsp)
	leaq	2856(%rsp), %rax
	movq	%rax, 8(%rsp)
	movq	$0, (%rsp)
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movq	%r15, %rdi
	movq	176(%rsp), %rsi         # 8-byte Reload
	movq	72(%rsp), %rdx          # 8-byte Reload
	callq	convert_separation_alternate
	jmp	.LBB5_276
.LBB5_275:                              # %if.then.607
	movl	%r13d, 16(%rsp)
	leaq	2856(%rsp), %rax
	movq	%rax, 8(%rsp)
	movq	$0, (%rsp)
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movq	%r15, %rdi
	movq	176(%rsp), %rsi         # 8-byte Reload
	movq	72(%rsp), %rdx          # 8-byte Reload
	callq	convert_DeviceN_alternate
.LBB5_276:                              # %if.then.607
	testl	%eax, %eax
	jns	.LBB5_153
	jmp	.LBB5_323
.LBB5_202:                              # %sw.default.64.i
	movq	24(%r15), %r12
	callq	gs_program_name
	movq	%rax, %rbx
	callq	gs_revision_number
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	24(%r15), %rdi
	xorl	%eax, %eax
	movq	%rax, 128(%rsp)         # 8-byte Spill
	movl	$.L.str.30, %esi
	xorl	%eax, %eax
	callq	errprintf
.LBB5_175:
	xorl	%r14d, %r14d
	movq	88(%rsp), %rbx          # 8-byte Reload
.LBB5_153:                              # %if.else.648
	movl	$0, 16(%rsp)
	movl	$0, 8(%rsp)
	movq	$0, (%rsp)
	leaq	2856(%rsp), %rsi
	leaq	2848(%rsp), %rdx
	movq	%r15, %rdi
	movq	72(%rsp), %rcx          # 8-byte Reload
	movq	%rbx, %r8
	movl	%r13d, %r9d
	callq	pdf_color_space_named
	testl	%eax, %eax
	movl	$0, %eax
	movq	%rax, 120(%rsp)         # 8-byte Spill
	js	.LBB5_323
.LBB5_280:                              # %if.end.656
	movq	168(%rsp), %rsi         # 8-byte Reload
	leaq	2248(%rsi), %r12
	movl	$2248, %edx             # imm = 0x8C8
	movq	%r12, %rdi
	callq	memcpy
	movq	9368(%r15), %rax
	movq	%rax, 8872(%r15)
	movl	%r13d, (%rsp)
	xorl	%edx, %edx
	movq	%r15, %rdi
	movq	152(%rsp), %rsi         # 8-byte Reload
	movl	80(%rsp), %ecx          # 4-byte Reload
	movl	116(%rsp), %r8d         # 4-byte Reload
	movq	136(%rsp), %r9          # 8-byte Reload
	callq	pdf_begin_write_image
	testl	%eax, %eax
	js	.LBB5_323
# BB#281:                               # %if.end.665
	movl	%r13d, %ecx
	testl	%ecx, %ecx
	je	.LBB5_283
# BB#282:                               # %if.then.667
	movq	%r15, %rdi
	movq	152(%rsp), %rsi         # 8-byte Reload
	movq	168(%rsp), %rdx         # 8-byte Reload
	movl	%ecx, 136(%rsp)         # 4-byte Spill
	movl	%r14d, %r8d
	callq	new_setup_lossless_filters
	jmp	.LBB5_286
.LBB5_283:                              # %if.else.673
	movl	%ecx, 136(%rsp)         # 4-byte Spill
	cmpl	$0, 100(%rsp)           # 4-byte Folded Reload
	movq	168(%rsp), %rdx         # 8-byte Reload
	je	.LBB5_285
# BB#284:                               # %if.then.675
	movq	%r15, %rbx
	movq	%r14, %r15
	movl	9072(%rbx), %r14d
	movl	$2, 9072(%rbx)
	movl	%r15d, 8(%rsp)
	movl	$0, (%rsp)
	movl	$1, %r9d
	movq	%rbx, %rdi
	movq	152(%rsp), %rsi         # 8-byte Reload
	movq	%rbp, %rcx
	movq	176(%rsp), %r8          # 8-byte Reload
	callq	new_setup_image_filters
	movl	%r14d, 9072(%rbx)
	movq	%r15, %r14
	movq	%rbx, %r15
	jmp	.LBB5_286
.LBB5_285:                              # %if.else.691
	movl	%r14d, 8(%rsp)
	movl	$0, (%rsp)
	movl	$1, %r9d
	movq	%r15, %rdi
	movq	152(%rsp), %rsi         # 8-byte Reload
	movq	%rbp, %rcx
	movq	176(%rsp), %r8          # 8-byte Reload
	callq	new_setup_image_filters
.LBB5_286:                              # %if.end.699
	testl	%eax, %eax
	js	.LBB5_323
# BB#287:                               # %if.end.703
	testl	%r14d, %r14d
	je	.LBB5_290
# BB#288:                               # %if.then.705
	movq	168(%rsp), %rdx         # 8-byte Reload
	movq	128(%rsp), %rax         # 8-byte Reload
	movq	%rax, 576(%rdx)
	movq	152(%rsp), %rdi         # 8-byte Reload
	movq	%r15, %rsi
	movq	176(%rsp), %rcx         # 8-byte Reload
	callq	psdf_setup_image_colors_filter
	testl	%eax, %eax
	js	.LBB5_323
# BB#289:                               # %if.end.718
	movq	168(%rsp), %rax         # 8-byte Reload
	movq	120(%rsp), %rcx         # 8-byte Reload
	movq	%rcx, 576(%rax)
.LBB5_290:                              # %if.end.736
	movq	56(%rsp), %rax          # 8-byte Reload
	movl	712(%rax), %ebx
	xorl	%r13d, %r13d
	cmpl	$2, %ebx
	jl	.LBB5_302
# BB#291:                               # %if.then.741
	movq	56(%rsp), %rax          # 8-byte Reload
	leaq	616(%rax), %rbx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	pdf_make_alt_stream
	testl	%eax, %eax
	jne	.LBB5_323
# BB#292:                               # %if.end.748
	movl	%r14d, 8(%rsp)
	movl	136(%rsp), %eax         # 4-byte Reload
	movl	%eax, (%rsp)
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	%r12, %rdx
	movq	%rbp, %rcx
	movq	176(%rsp), %r8          # 8-byte Reload
	movl	100(%rsp), %r9d         # 4-byte Reload
	callq	new_setup_image_filters
	testl	%eax, %eax
	jne	.LBB5_293
# BB#298:                               # %if.else.794
	xorl	%r13d, %r13d
	testl	%r14d, %r14d
	je	.LBB5_301
# BB#299:                               # %if.then.796
	movq	168(%rsp), %rax         # 8-byte Reload
	movq	128(%rsp), %rcx         # 8-byte Reload
	movq	%rcx, 2824(%rax)
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%r12, %rdx
	movq	176(%rsp), %rcx         # 8-byte Reload
	callq	psdf_setup_image_colors_filter
	testl	%eax, %eax
	js	.LBB5_323
# BB#300:                               # %if.end.809
	movq	168(%rsp), %rax         # 8-byte Reload
	movq	120(%rsp), %rcx         # 8-byte Reload
	movq	%rcx, 2824(%rax)
	jmp	.LBB5_301
.LBB5_293:                              # %if.end.748
	cmpl	$-15, %eax
	jne	.LBB5_323
# BB#294:                               # %for.cond.preheader
	movq	%rbx, 128(%rsp)         # 8-byte Spill
	movq	56(%rsp), %rax          # 8-byte Reload
	cmpl	$2, 712(%rax)
	movq	%r15, %r14
	movq	%rax, %r15
	jl	.LBB5_297
# BB#295:                               # %for.body.lr.ph
	leaq	632(%r15), %rbx
	movl	$1, %r13d
.LBB5_296:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rbx), %rax
	movq	%rax, 840(%rsp)
	movq	(%rbx), %rdi
	callq	cos_stream_from_pipeline
	movq	%rax, %r12
	xorl	%esi, %esi
	leaq	840(%rsp), %rdi
	callq	s_close_filters
	movq	1728(%r14), %rdi
	movq	840(%rsp), %rsi
	movl	$.L.str.16, %edx
	callq	*24(%rdi)
	movq	(%r12), %rax
	movl	$.L.str.17, %esi
	movq	%r12, %rdi
	callq	*(%rax)
	movq	1728(%r14), %rdi
	movl	$.L.str.18, %edx
	movq	%r12, %rsi
	callq	*24(%rdi)
	incq	%r13
	movslq	712(%r15), %rax
	addq	$32, %rbx
	cmpq	%rax, %r13
	jl	.LBB5_296
.LBB5_297:                              # %for.end
	movq	%r15, %rbx
	movq	%r14, %r15
	movl	$1, 712(%rbx)
	xorl	%r13d, %r13d
	xorl	%esi, %esi
	movl	$32, %edx
	movq	128(%rsp), %rdi         # 8-byte Reload
	callq	memset
	leaq	648(%rbx), %rdi
	xorl	%esi, %esi
	movl	$32, %edx
	callq	memset
.LBB5_301:                              # %for.cond.831thread-pre-split
	movq	56(%rsp), %rax          # 8-byte Reload
	movl	712(%rax), %ebx
.LBB5_302:                              # %for.cond.831
	cmpl	%ebx, %r13d
	jge	.LBB5_309
# BB#303:                               # %for.body.836
	movslq	%r13d, %rax
	imulq	$2248, %rax, %rcx       # imm = 0x8C8
	movq	168(%rsp), %rax         # 8-byte Reload
	leaq	(%rax,%rcx), %rdx
	cmpl	$0, 68(%rsp)            # 4-byte Folded Reload
	jle	.LBB5_307
# BB#304:                               # %for.body.836
	movq	2848(%rsp), %rax
	testq	%rax, %rax
	je	.LBB5_307
# BB#305:                               # %for.body.lr.ph.i.589
	movq	168(%rsp), %rsi         # 8-byte Reload
	leaq	44(%rsi,%rcx), %rcx
	movl	68(%rsp), %esi          # 4-byte Reload
.LBB5_306:                              # %for.body.i.611
                                        # =>This Inner Loop Header: Depth=1
	movss	(%rcx), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movss	4(%rcx), %xmm1          # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm1
	movss	(%rax), %xmm2           # xmm2 = mem[0],zero,zero,zero
	movss	4(%rax), %xmm3          # xmm3 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	cvtss2sd	%xmm3, %xmm3
	subsd	%xmm2, %xmm3
	subsd	%xmm0, %xmm1
	divsd	%xmm3, %xmm1
	subsd	%xmm2, %xmm0
	addsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm1
	movss	%xmm1, 4(%rcx)
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, (%rcx)
	addq	$8, %rcx
	addq	$8, %rax
	decl	%esi
	jne	.LBB5_306
.LBB5_307:                              # %pdf_begin_image_data_decoded.exit615
	leaq	2856(%rsp), %rcx
	movq	%r15, %rdi
	movq	152(%rsp), %rsi         # 8-byte Reload
	movl	%r13d, %r8d
	callq	pdf_begin_image_data
	testl	%eax, %eax
	js	.LBB5_323
# BB#308:                               # %for.inc.845
	incl	%r13d
	jmp	.LBB5_301
.LBB5_309:                              # %for.end.847
	cmpl	$2, %ebx
	jne	.LBB5_311
# BB#310:                               # %if.then.852
	movq	56(%rsp), %rbx          # 8-byte Reload
	movq	%rbx, %rdi
	addq	$648, %rdi              # imm = 0x288
	movq	104(%rsp), %rax         # 8-byte Reload
	movl	32(%rax), %edx
	movl	36(%rax), %ecx
	movl	40(%rax), %r9d
	movq	%r15, %rsi
	movl	68(%rsp), %r8d          # 4-byte Reload
	callq	psdf_setup_compression_chooser
	movl	$3, 712(%rbx)
	movl	$3, %ebx
.LBB5_311:                              # %if.end.862
	movq	104(%rsp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	cmpl	$4, 48(%rax)
	jne	.LBB5_321
# BB#312:                               # %land.lhs.true.867
	movsd	.LCPI5_1(%rip), %xmm0   # xmm0 = mem[0],zero
	ucomisd	9368(%r15), %xmm0
	jbe	.LBB5_321
# BB#313:                               # %if.then.871
	movslq	%ebx, %r13
	imulq	$2248, %r13, %r14       # imm = 0x8C8
	movq	%r14, 120(%rsp)         # 8-byte Spill
	movq	168(%rsp), %r12         # 8-byte Reload
	leaq	(%r12,%r14), %rdi
	movq	%rdi, 128(%rsp)         # 8-byte Spill
	movl	$1, %esi
	xorl	%edx, %edx
	callq	gs_image_t_init_mask_adjust
	movl	32(%r12), %eax
	movl	%eax, 32(%r12,%r14)
	movl	36(%r12), %eax
	movl	%eax, 36(%r12,%r14)
	movl	$0, (%rsp)
	xorl	%edx, %edx
	xorl	%r9d, %r9d
	movq	%r15, %rdi
	movq	152(%rsp), %rsi         # 8-byte Reload
	movl	80(%rsp), %ecx          # 4-byte Reload
	movl	116(%rsp), %r8d         # 4-byte Reload
	callq	pdf_begin_write_image
	testl	%eax, %eax
	jne	.LBB5_323
# BB#314:                               # %if.end.895
	shlq	$5, %r13
	movq	152(%rsp), %rax         # 8-byte Reload
	leaq	(%r13,%rax), %r13
	movl	136(%rsp), %eax         # 4-byte Reload
	movl	%eax, (%rsp)
	movq	%r15, %rdi
	movq	%r13, %rsi
	movq	128(%rsp), %rdx         # 8-byte Reload
	movq	%rbp, %rcx
	movq	176(%rsp), %r8          # 8-byte Reload
	movl	100(%rsp), %r9d         # 4-byte Reload
	callq	psdf_setup_image_filters
	testl	%eax, %eax
	js	.LBB5_323
# BB#315:                               # %if.end.907
	movq	104(%rsp), %rax         # 8-byte Reload
	movl	32(%rax), %edx
	movl	36(%rax), %ecx
	movl	40(%rax), %r9d
	movq	168(%rsp), %rax         # 8-byte Reload
	movq	120(%rsp), %rsi         # 8-byte Reload
	leaq	588(%rax,%rsi), %rax
	movq	%rax, (%rsp)
	movq	%r13, %rdi
	movq	%r15, %rsi
	movl	68(%rsp), %r12d         # 4-byte Reload
	movl	%r12d, %r8d
	callq	psdf_setup_image_to_mask_filter
	testl	%r12d, %r12d
	jle	.LBB5_319
# BB#316:                               # %if.end.907
	movq	2848(%rsp), %rax
	testq	%rax, %rax
	je	.LBB5_319
# BB#317:                               # %for.body.lr.ph.i
	movq	168(%rsp), %rcx         # 8-byte Reload
	movq	120(%rsp), %rdx         # 8-byte Reload
	leaq	44(%rcx,%rdx), %rcx
.LBB5_318:                              # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movss	(%rcx), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movss	4(%rcx), %xmm1          # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm1
	movss	(%rax), %xmm2           # xmm2 = mem[0],zero,zero,zero
	movss	4(%rax), %xmm3          # xmm3 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	cvtss2sd	%xmm3, %xmm3
	subsd	%xmm2, %xmm3
	subsd	%xmm0, %xmm1
	divsd	%xmm3, %xmm1
	subsd	%xmm2, %xmm0
	addsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm1
	movss	%xmm1, 4(%rcx)
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, (%rcx)
	addq	$8, %rcx
	addq	$8, %rax
	decl	%r12d
	jne	.LBB5_318
.LBB5_319:                              # %pdf_begin_image_data_decoded.exit
	leaq	2856(%rsp), %rcx
	movq	%r15, %rdi
	movq	152(%rsp), %rsi         # 8-byte Reload
	movq	128(%rsp), %rdx         # 8-byte Reload
	movl	%ebx, %r8d
	callq	pdf_begin_image_data
	testl	%eax, %eax
	js	.LBB5_323
# BB#320:                               # %cleanup.931
	movq	56(%rsp), %rax          # 8-byte Reload
	incl	712(%rax)
.LBB5_321:                              # %if.end.934
	movq	2952(%rsp), %rax
	movq	200(%rax), %rax
	jmp	.LBB5_61
.LBB5_323:                              # %fail_and_fallback
	movq	2952(%rsp), %rbx
	movq	200(%rbx), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.14, %edx
	movq	168(%rsp), %rsi         # 8-byte Reload
	callq	*24(%rdi)
	movl	$.L.str.15, %edx
	movq	%rbx, %rdi
	movq	56(%rsp), %rsi          # 8-byte Reload
	callq	*24(%rbx)
	movq	2960(%rsp), %rax
	movq	%rax, 16(%rsp)
	movq	%rbx, 8(%rsp)
	movq	2944(%rsp), %rax
	movq	%rax, (%rsp)
	movq	%r15, %rdi
	movq	176(%rsp), %rsi         # 8-byte Reload
	movq	%rbp, %rdx
	movq	104(%rsp), %rcx         # 8-byte Reload
	jmp	.LBB5_324
.Lfunc_end5:
	.size	new_pdf_begin_typed_image, .Lfunc_end5-new_pdf_begin_typed_image
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI5_0:
	.quad	.LBB5_162
	.quad	.LBB5_166
	.quad	.LBB5_176
	.quad	.LBB5_184
	.quad	.LBB5_184
	.quad	.LBB5_180
	.quad	.LBB5_180
	.quad	.LBB5_180
	.quad	.LBB5_180
	.quad	.LBB5_180
	.quad	.LBB5_184
	.quad	.LBB5_153
	.quad	.LBB5_188
.LJTI5_1:
	.quad	.LBB5_322
	.quad	.LBB5_153
	.quad	.LBB5_249
	.quad	.LBB5_205
	.quad	.LBB5_225
	.quad	.LBB5_249
.LJTI5_2:
	.quad	.LBB5_153
	.quad	.LBB5_179
	.quad	.LBB5_153
	.quad	.LBB5_179
	.quad	.LBB5_213
	.quad	.LBB5_179
	.quad	.LBB5_179
	.quad	.LBB5_179
	.quad	.LBB5_179
	.quad	.LBB5_207
	.quad	.LBB5_218
.LJTI5_3:
	.quad	.LBB5_153
	.quad	.LBB5_184
	.quad	.LBB5_153
	.quad	.LBB5_184
	.quad	.LBB5_223
	.quad	.LBB5_184
	.quad	.LBB5_184
	.quad	.LBB5_184
	.quad	.LBB5_184
	.quad	.LBB5_222
.LJTI5_4:
	.quad	.LBB5_153
	.quad	.LBB5_153
	.quad	.LBB5_169
	.quad	.LBB5_169
	.quad	.LBB5_256
	.quad	.LBB5_169
	.quad	.LBB5_169
	.quad	.LBB5_169
	.quad	.LBB5_169
	.quad	.LBB5_251
	.quad	.LBB5_261
.LJTI5_5:
	.quad	.LBB5_278
	.quad	.LBB5_322
	.quad	.LBB5_277
	.quad	.LBB5_275

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	4608083138725491507     # double 1.2
.LCPI6_1:
	.quad	4608533498688228557     # double 1.3
.LCPI6_2:
	.quad	4608983858650965606     # double 1.3999999999999999
.LCPI6_3:
	.quad	4602678819172646912     # double 0.5
.LCPI6_4:
	.quad	4607182418800017408     # double 1
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI6_5:
	.long	1065353216              # float 1
	.text
	.align	16, 0x90
	.type	old_pdf_begin_typed_image,@function
old_pdf_begin_typed_image:              # @old_pdf_begin_typed_image
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp27:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp28:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp29:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp30:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp31:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp32:
	.cfi_def_cfa_offset 56
	subq	$2136, %rsp             # imm = 0x858
.Ltmp33:
	.cfi_def_cfa_offset 2192
.Ltmp34:
	.cfi_offset %rbx, -56
.Ltmp35:
	.cfi_offset %r12, -48
.Ltmp36:
	.cfi_offset %r13, -40
.Ltmp37:
	.cfi_offset %r14, -32
.Ltmp38:
	.cfi_offset %r15, -24
.Ltmp39:
	.cfi_offset %rbp, -16
	movq	%r9, %r15
	movq	%r8, %r14
	movq	%rcx, %r13
	movq	%rdx, 192(%rsp)         # 8-byte Spill
	movq	%rsi, %rbx
	movq	%rdi, %r12
	movq	2200(%rsp), %rax
	movq	200(%rax), %rax
	movq	200(%rax), %rdi
	movl	$4, %esi
	movl	$2248, %edx             # imm = 0x8C8
	movl	$.L.str.14, %ecx
	callq	*88(%rdi)
	movl	$-25, %ebp
	testq	%rax, %rax
	je	.LBB6_257
# BB#1:                                 # %if.end
	movq	%rax, 184(%rsp)         # 8-byte Spill
	movq	%rbx, 176(%rsp)         # 8-byte Spill
	movq	2208(%rsp), %rbx
	movq	2192(%rsp), %rbp
	movq	$0, 2104(%rsp)
	movq	$0, 2096(%rsp)
	movq	$0, 2088(%rsp)
	movq	28768(%r12), %rdi
	leaq	928(%rsp), %rsi
	callq	cos_array_unadd
	xorl	%edx, %edx
	testl	%eax, %eax
	cmovnsq	936(%rsp), %rdx
	movq	$0, 30592(%r12)
	movq	(%r13), %rax
	movl	48(%rax), %eax
	cmpl	$3, %eax
	movq	%r13, %r10
	movq	%r12, %r9
	jg	.LBB6_12
# BB#2:                                 # %if.end
	cmpl	$1, %eax
	movq	%r14, %r8
	jne	.LBB6_3
# BB#15:                                # %sw.bb.i
	movq	%rbx, %r12
	movq	%r8, 168(%rsp)          # 8-byte Spill
	cmpl	$0, 592(%r10)
	jne	.LBB6_254
# BB#16:                                # %if.end.3.i
	movq	%rdx, 160(%rsp)         # 8-byte Spill
	movl	584(%r10), %eax
	movl	%eax, 152(%rsp)         # 4-byte Spill
	testl	%eax, %eax
	je	.LBB6_23
# BB#17:                                # %if.then.4.i
	movq	%r15, %rdi
	movq	%r10, %rbp
	movq	%r9, %rbx
	callq	gx_dc_is_pattern1_color
	movq	%rbx, %r9
	movq	%rbp, %r10
	testl	%eax, %eax
	jne	.LBB6_23
# BB#18:                                # %if.then.7.i
	cmpl	$1, 40(%r10)
	jne	.LBB6_254
# BB#19:                                # %lor.lhs.false.i
	movss	44(%r10), %xmm0         # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jne	.LBB6_21
	jp	.LBB6_21
# BB#20:                                # %land.lhs.true.i
	movss	48(%r10), %xmm1         # xmm1 = mem[0],zero,zero,zero
	ucomiss	.LCPI6_5(%rip), %xmm1
	jne	.LBB6_21
	jnp	.LBB6_23
.LBB6_21:                               # %lor.lhs.false.16.i
	ucomiss	.LCPI6_5(%rip), %xmm0
	jne	.LBB6_254
	jp	.LBB6_254
# BB#22:                                # %land.lhs.true.22.i
	movss	48(%r10), %xmm0         # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jne	.LBB6_254
	jp	.LBB6_254
.LBB6_23:                               # %if.end.31.i
	movq	%r9, %rbx
	cmpl	$0, 2216(%rsp)
	sete	%al
	movzbl	%al, %r14d
	movl	$600, %edx              # imm = 0x258
	movq	184(%rsp), %rdi         # 8-byte Reload
	movq	%r10, %rsi
	movq	%r10, %r13
	callq	memcpy
.LBB6_74:                               # %sw.epilog.i
	movl	568(%r13), %edx
	cmpl	$1, %edx
	movq	%r13, %r10
	movq	%rbx, %r9
	ja	.LBB6_254
# BB#75:                                # %sw.epilog.305.i
	cmpl	$0, 32(%r10)
	je	.LBB6_254
# BB#76:                                # %lor.lhs.false.309.i
	cmpl	$0, 36(%r10)
	je	.LBB6_254
# BB#77:                                # %if.end.314.i
	movl	40(%r10), %eax
	movl	$-15, %ebp
	cmpl	$16, %eax
	ja	.LBB6_256
# BB#78:                                # %if.end.314.i
	movl	$278, %ecx              # imm = 0x116
	btl	%eax, %ecx
	jae	.LBB6_79
# BB#80:                                # %sw.epilog.319.i
	movl	%edx, 136(%rsp)         # 4-byte Spill
	movl	%r14d, 124(%rsp)        # 4-byte Spill
	movq	576(%r10), %rbx
	movq	%r10, %r14
	movl	$1, %ebp
	cmpl	$0, 152(%rsp)           # 4-byte Folded Reload
	jne	.LBB6_82
# BB#81:                                # %cond.false.i
	movq	%rbx, %rdi
	movq	%r9, %rbp
	callq	gs_color_space_num_components
	movq	%rbp, %r9
	movl	%eax, %ebp
.LBB6_82:                               # %cond.end.i
	movq	%rbx, 128(%rsp)         # 8-byte Spill
	movq	%r9, %rdi
	movq	2192(%rsp), %rsi
	movq	%r9, %r13
	callq	pdf_must_put_clip_path
	testl	%eax, %eax
	je	.LBB6_84
# BB#83:                                # %if.then.325.i
	movl	%ebp, 148(%rsp)         # 4-byte Spill
	movq	%r13, %rdi
	callq	pdf_unclip
	jmp	.LBB6_85
.LBB6_12:                               # %if.end
	movq	%r9, %rcx
	cmpl	$4, %eax
	jne	.LBB6_13
# BB#48:                                # %sw.bb.192.i
	movq	%rdx, 160(%rsp)         # 8-byte Spill
	movq	%r14, 168(%rsp)         # 8-byte Spill
	movq	%rcx, %rbp
	movl	$0, 30600(%rbp)
	leaq	248(%rsp), %r9
	movq	%rbp, %rdi
	movq	176(%rsp), %rbx         # 8-byte Reload
	movq	%rbx, %rsi
	movq	%r15, %rdx
	movq	%r10, %rcx
	movq	%r10, %r13
	movq	184(%rsp), %r14         # 8-byte Reload
	movq	%r14, %r8
	callq	pdf_convert_image4_to_image1
	testl	%eax, %eax
	js	.LBB6_59
# BB#49:                                # %if.then.199.i
	movq	%rbp, %r15
	movq	%rbx, %rdi
	callq	gx_hld_get_gstate_ptr
	movq	%rax, %r12
	movl	$-28, %ebp
	testq	%r12, %r12
	je	.LBB6_256
# BB#50:                                # %if.end.204.i
	movq	160(%rsp), %rsi         # 8-byte Reload
	testq	%rsi, %rsi
	je	.LBB6_52
# BB#51:                                # %if.then.206.i
	movq	28768(%r15), %rdi
	callq	cos_array_add_object
.LBB6_52:                               # %if.end.209.i
	movq	%r12, %rdi
	callq	gs_gsave
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB6_256
# BB#53:                                # %if.end.214.i
	movq	576(%r13), %rsi
	movq	%r12, %rdi
	callq	gs_setcolorspace
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB6_256
# BB#54:                                # %if.end.219.i
	cmpl	$0, 30760(%r15)
	je	.LBB6_55
# BB#56:                                # %if.else.i.11
	movl	2216(%rsp), %eax
	movl	%eax, 24(%rsp)
	movq	2208(%rsp), %rax
	movq	%rax, 16(%rsp)
	movq	2200(%rsp), %rax
	movq	%rax, 8(%rsp)
	movq	2192(%rsp), %rax
	movq	%rax, (%rsp)
	leaq	248(%rsp), %r9
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	192(%rsp), %rdx         # 8-byte Reload
	movq	184(%rsp), %rcx         # 8-byte Reload
	movq	168(%rsp), %r8          # 8-byte Reload
	callq	old_pdf_begin_typed_image
	jmp	.LBB6_57
.LBB6_3:                                # %if.end
	cmpl	$3, %eax
	jne	.LBB6_253
# BB#4:                                 # %sw.bb.37.i
	movl	$0, 30600(%r9)
	movsd	9368(%r9), %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI6_0(%rip), %xmm1   # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	ja	.LBB6_253
# BB#5:                                 # %if.end.41.i
	testq	%r8, %r8
	je	.LBB6_10
# BB#6:                                 # %land.lhs.true.43.i
	cmpl	$0, (%r8)
	jne	.LBB6_253
# BB#7:                                 # %land.lhs.true.46.i
	cmpl	$0, 4(%r8)
	jne	.LBB6_253
# BB#8:                                 # %land.lhs.true.50.i
	movl	8(%r8), %eax
	cmpl	32(%r10), %eax
	jne	.LBB6_253
# BB#9:                                 # %land.lhs.true.54.i
	movl	12(%r8), %eax
	cmpl	36(%r10), %eax
	jne	.LBB6_253
.LBB6_10:                               # %if.end.60.i
	movsd	.LCPI6_1(%rip), %xmm1   # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB6_11
# BB#24:                                # %land.lhs.true.64.i
	cmpl	$0, 9556(%r9)
	movq	176(%rsp), %r12         # 8-byte Reload
	je	.LBB6_26
# BB#25:
	movq	%r10, %rbp
	jmp	.LBB6_39
.LBB6_13:                               # %if.end
	cmpl	$103, %eax
	jne	.LBB6_14
# BB#40:                                # %sw.bb.158.i
	movsd	.LCPI6_2(%rip), %xmm0   # xmm0 = mem[0],zero
	movq	%rcx, %r9
	ucomisd	9368(%r9), %xmm0
	ja	.LBB6_41
# BB#42:                                # %if.end.163.i
	testq	%r14, %r14
	movq	176(%rsp), %rsi         # 8-byte Reload
	je	.LBB6_47
# BB#43:                                # %land.lhs.true.165.i
	cmpl	$0, (%r14)
	jne	.LBB6_41
# BB#44:                                # %land.lhs.true.170.i
	cmpl	$0, 4(%r14)
	jne	.LBB6_41
# BB#45:                                # %land.lhs.true.175.i
	movl	8(%r14), %eax
	cmpl	32(%r10), %eax
	jne	.LBB6_41
# BB#46:                                # %land.lhs.true.181.i
	movl	12(%r14), %eax
	cmpl	36(%r10), %eax
	movq	176(%rsp), %rsi         # 8-byte Reload
	jne	.LBB6_41
.LBB6_47:                               # %cleanup.191.i
	movl	$1, 30600(%r9)
	movq	%rbx, 32(%rsp)
	movq	2200(%rsp), %rax
	movq	%rax, 8(%rsp)
	movq	%rbp, (%rsp)
	movq	$pdf_image3x_make_mcde, 24(%rsp)
	movq	$pdf_image3x_make_mid, 16(%rsp)
	movq	%r9, %rdi
	movq	192(%rsp), %rdx         # 8-byte Reload
	movq	%r10, %rcx
	movq	%r14, %r8
	movq	%r15, %r9
	callq	gx_begin_image3x_generic
	jmp	.LBB6_255
.LBB6_253:                              # %cleanup.152.i.thread
	movq	%rbx, %r12
	movq	%r8, 168(%rsp)          # 8-byte Spill
	jmp	.LBB6_254
.LBB6_14:
	movq	%rbx, %r12
	movq	%r14, 168(%rsp)         # 8-byte Spill
	movq	%rcx, %r9
	jmp	.LBB6_254
.LBB6_41:
	movq	%rbx, %r12
	movq	%r14, 168(%rsp)         # 8-byte Spill
	jmp	.LBB6_254
.LBB6_59:                               # %if.end.229.i
	movsd	9368(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	.LCPI6_0(%rip), %xmm1   # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	ja	.LBB6_72
# BB#60:                                # %lor.lhs.false.233.i
	cmpl	$0, 9008(%rbp)
	je	.LBB6_61
.LBB6_72:                               # %cleanup.300.i.thread14
	movq	2208(%rsp), %r12
	movq	%rbp, %r9
	movq	%r13, %r10
.LBB6_254:                              # %nyi.i
	movq	%r12, 16(%rsp)
	movq	2200(%rsp), %rax
	movq	%rax, 8(%rsp)
	movq	2192(%rsp), %rax
	movq	%rax, (%rsp)
	movq	%r9, %rdi
	movq	176(%rsp), %rsi         # 8-byte Reload
	movq	192(%rsp), %rdx         # 8-byte Reload
	movq	%r10, %rcx
	movq	168(%rsp), %r8          # 8-byte Reload
	movq	%r15, %r9
	callq	gx_default_begin_typed_image
.LBB6_255:                              # %pdf_begin_typed_image_impl.exit
	movl	%eax, %ebp
.LBB6_256:                              # %pdf_begin_typed_image_impl.exit
	movq	2200(%rsp), %rax
	movq	200(%rax), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.14, %edx
	movq	184(%rsp), %rsi         # 8-byte Reload
	callq	*24(%rdi)
.LBB6_257:                              # %cleanup
	movl	%ebp, %eax
	addq	$2136, %rsp             # imm = 0x858
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB6_61:                               # %if.end.237.i
	movsd	.LCPI6_1(%rip), %xmm1   # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	movq	2208(%rsp), %rbx
	movq	%r14, %rdi
	jbe	.LBB6_73
# BB#62:                                # %land.lhs.true.241.i
	cmpl	$0, 9556(%rbp)
	je	.LBB6_63
.LBB6_73:                               # %cleanup.300.i
	movq	%rbx, %r12
	movq	%rbp, %rbx
	movl	$1112, %edx             # imm = 0x458
	movq	%r13, %rsi
	callq	memcpy
	xorl	%r14d, %r14d
	movl	$0, 152(%rsp)           # 4-byte Folded Spill
	jmp	.LBB6_74
.LBB6_55:                               # %if.then.i
	movl	2216(%rsp), %eax
	movl	%eax, 24(%rsp)
	movq	2208(%rsp), %rax
	movq	%rax, 16(%rsp)
	movq	2200(%rsp), %rax
	movq	%rax, 8(%rsp)
	movq	2192(%rsp), %rax
	movq	%rax, (%rsp)
	leaq	248(%rsp), %r9
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	192(%rsp), %rdx         # 8-byte Reload
	movq	184(%rsp), %rcx         # 8-byte Reload
	movq	168(%rsp), %r8          # 8-byte Reload
	callq	new_pdf_begin_typed_image
.LBB6_57:                               # %pdf_begin_typed_image.exit
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB6_256
# BB#58:                                # %if.end.226.i
	movq	%r12, %rdi
	callq	gs_grestore
	jmp	.LBB6_255
.LBB6_11:
	movq	%r10, %rbp
	movq	176(%rsp), %r12         # 8-byte Reload
.LBB6_39:                               # %if.end.150.i
	movq	%rbx, 32(%rsp)
	movq	2200(%rsp), %rax
	movq	%rax, 8(%rsp)
	movq	2192(%rsp), %rax
	movq	%rax, (%rsp)
	movq	$pdf_image3_make_mcde, 24(%rsp)
	movq	$pdf_image3_make_mid, 16(%rsp)
	movq	%r9, %rdi
	movq	%r12, %rsi
	movq	192(%rsp), %rdx         # 8-byte Reload
	movq	%rbp, %rcx
	movq	%r15, %r9
	callq	gx_begin_image3_generic
	jmp	.LBB6_255
.LBB6_26:                               # %if.then.66.i
	movq	%r8, 168(%rsp)          # 8-byte Spill
	movq	%r10, %rbx
	movq	%r9, %rdi
	movq	2192(%rsp), %rsi
	movq	%r9, %rbp
	callq	pdf_must_put_clip_path
	testl	%eax, %eax
	je	.LBB6_28
# BB#27:                                # %if.then.69.i
	movq	%rbp, %rdi
	movq	%rbp, %r13
	callq	pdf_unclip
	jmp	.LBB6_29
.LBB6_63:                               # %if.then.244.i
	movq	%r15, 192(%rsp)         # 8-byte Spill
	movq	%rbx, %r12
	leaq	928(%rsp), %rdi
	movl	$1112, %edx             # imm = 0x458
	movq	%r13, %rsi
	movq	%rbp, %rbx
	callq	memcpy
	movq	%rbx, %rdi
	movq	2192(%rsp), %rsi
	callq	pdf_must_put_clip_path
	testl	%eax, %eax
	je	.LBB6_65
# BB#64:                                # %if.then.249.i
	movq	%rbx, %rdi
	callq	pdf_unclip
	jmp	.LBB6_66
.LBB6_79:                               # %if.end.314.i
	movl	$69632, %ecx            # imm = 0x11000
	btl	%eax, %ecx
	jb	.LBB6_254
	jmp	.LBB6_256
.LBB6_84:                               # %if.else.327.i
	movl	%ebp, 148(%rsp)         # 4-byte Spill
	movl	$1, %esi
	movq	%r13, %rdi
	callq	pdf_open_page
.LBB6_85:                               # %if.end.329.i
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB6_256
# BB#86:                                # %if.end.333.i
	movl	2216(%rsp), %ebx
	cmpl	$1, %ebx
	jne	.LBB6_90
# BB#87:                                # %if.end.345.i.thread
	movq	24(%r13), %rdi
	callq	gs_cspace_new_DeviceGray
	movq	%r14, %r10
	movq	%rax, 128(%rsp)         # 8-byte Spill
	jmp	.LBB6_88
.LBB6_90:                               # %if.else.338.i
	movq	%r14, %rbp
	cmpl	$0, 152(%rsp)           # 4-byte Folded Reload
	je	.LBB6_92
# BB#91:                                # %if.then.340.i
	movq	%r13, %rdi
	movq	176(%rsp), %rsi         # 8-byte Reload
	movq	%r15, %rdx
	callq	pdf_prepare_imagemask
	jmp	.LBB6_93
.LBB6_28:                               # %if.else.i
	movl	$1, %esi
	movq	%rbp, %rdi
	movq	%rbp, %r13
	callq	pdf_open_page
.LBB6_29:                               # %if.end.72.i
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB6_256
# BB#30:                                # %if.end.76.i
	movq	%r13, %rdi
	movq	2192(%rsp), %rsi
	callq	pdf_put_clip_path
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB6_256
# BB#31:                                # %if.end.81.i
	leaq	248(%rsp), %rdi
	movq	%rdi, 192(%rsp)         # 8-byte Spill
	callq	gs_make_identity
	movss	148(%r12), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	addsd	.LCPI6_3(%rip), %xmm0
	callq	floor
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 264(%rsp)
	movss	152(%r12), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	addsd	.LCPI6_3(%rip), %xmm0
	callq	floor
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 268(%rsp)
	leaq	928(%rsp), %rbp
	movl	$1160, %edx             # imm = 0x488
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	callq	memcpy
	leaq	936(%rsp), %r14
	leaq	904(%rsp), %rsi
	movq	%r14, %rdi
	callq	gs_matrix_invert
	movq	%r14, %rdi
	callq	gs_make_identity
	movq	960(%rsp), %rcx
	movq	1552(%rsp), %rax
	testl	%ecx, %ecx
	jle	.LBB6_33
# BB#32:                                # %if.end.81.i
	cmpl	%eax, %ecx
	jge	.LBB6_33
# BB#34:                                # %if.then.102.i
	leal	-1(%rcx,%rax), %eax
	cltd
	idivl	%ecx
	cvtsi2sdl	%eax, %xmm2
	movsd	.LCPI6_4(%rip), %xmm1   # xmm1 = mem[0],zero
	movapd	%xmm1, %xmm0
	divsd	%xmm2, %xmm0
	movsd	%xmm0, 160(%rsp)        # 8-byte Spill
	leaq	904(%rsp), %rdi
	movq	%rdi, %rsi
	callq	gs_matrix_scale
	movq	%r14, %rdi
	movsd	160(%rsp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI6_4(%rip), %xmm1   # xmm1 = mem[0],zero
	movq	%r14, %rsi
	callq	gs_matrix_scale
	movl	964(%rsp), %ecx
	movl	1556(%rsp), %eax
	jmp	.LBB6_35
.LBB6_65:                               # %if.else.251.i
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	pdf_open_page
.LBB6_66:                               # %if.end.253.i
	movl	%eax, %ebp
	movq	168(%rsp), %r15         # 8-byte Reload
	testl	%ebp, %ebp
	js	.LBB6_256
# BB#67:                                # %if.end.257.i
	movq	%rbx, %rdi
	movq	2192(%rsp), %rsi
	callq	pdf_put_clip_path
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB6_256
# BB#68:                                # %if.end.262.i
	leaq	224(%rsp), %rdi
	callq	gs_make_identity
	addq	$8, %r13
	leaq	200(%rsp), %rbp
	movq	%r13, %rdi
	movq	%rbp, %rsi
	callq	gs_matrix_invert
	movq	176(%rsp), %rax         # 8-byte Reload
	leaq	132(%rax), %rsi
	leaq	904(%rsp), %r13
	movq	%rbp, %rdi
	movq	%r13, %rdx
	callq	gs_matrix_multiply
	movq	960(%rsp), %rax
	movq	%rax, %rcx
	shrq	$32, %rcx
	movl	%ecx, 16(%rsp)
	movl	%eax, 8(%rsp)
	movl	$0, 24(%rsp)
	movl	$0, (%rsp)
	leaq	2088(%rsp), %rcx
	movl	$1, %r8d
	xorl	%r9d, %r9d
	movq	%rbx, %rdi
	movq	2200(%rsp), %rsi
	movq	%r13, %rdx
	callq	pdf_setup_masked_image_converter
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB6_256
# BB#69:                                # %if.end.273.i
	movq	2088(%rsp), %rax
	movl	$1, 84(%rax)
	movq	2792(%rax), %rdi
	movl	$1, 84(%rdi)
	movl	$0, 2840(%rax)
	movl	832(%rdi), %ecx
	movl	836(%rdi), %r8d
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%r9d, %r9d
	callq	*1200(%rdi)
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB6_256
# BB#70:                                # %if.end.285.i
	movq	2088(%rsp), %rdi
	movl	$1, %esi
	callq	gx_device_retain
	movq	2088(%rsp), %rax
	movq	2792(%rax), %rdi
	movl	$1, %esi
	callq	gx_device_retain
	leaq	936(%rsp), %rdi
	callq	gs_make_identity
	movq	2088(%rsp), %rdi
	movq	%r12, 16(%rsp)
	movq	2200(%rsp), %rax
	movq	%rax, 8(%rsp)
	movq	$0, (%rsp)
	leaq	224(%rsp), %rdx
	leaq	928(%rsp), %rcx
	movq	176(%rsp), %rsi         # 8-byte Reload
	movq	%r15, %r8
	movq	192(%rsp), %r9          # 8-byte Reload
	callq	gx_default_begin_typed_image
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB6_256
# BB#71:                                # %if.end.292.i
	movq	(%r12), %rax
	movq	$pdf_image_cvd_enum_procs, 8(%rax)
	xorl	%ebp, %ebp
	jmp	.LBB6_256
.LBB6_33:                               # %if.end.81.i.if.end.116.i_crit_edge
	shrq	$32, %rax
	shrq	$32, %rcx
.LBB6_35:                               # %if.end.116.i
	leaq	132(%r12), %rbx
	testl	%ecx, %ecx
	jle	.LBB6_38
# BB#36:                                # %if.end.116.i
	cmpl	%eax, %ecx
	jge	.LBB6_38
# BB#37:                                # %if.then.126.i
	leal	-1(%rcx,%rax), %eax
	cltd
	idivl	%ecx
	cvtsi2sdl	%eax, %xmm2
	movsd	.LCPI6_4(%rip), %xmm0   # xmm0 = mem[0],zero
	movapd	%xmm0, %xmm1
	divsd	%xmm2, %xmm1
	movsd	%xmm1, 160(%rsp)        # 8-byte Spill
	leaq	904(%rsp), %rdi
	movq	%rdi, %rsi
	callq	gs_matrix_scale
	movq	%r14, %rdi
	movsd	.LCPI6_4(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	160(%rsp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movq	%r14, %rsi
	callq	gs_matrix_scale
.LBB6_38:                               # %if.end.142.i
	leaq	1528(%rsp), %rsi
	leaq	904(%rsp), %r14
	movq	%r14, %rdi
	movq	%rsi, %rdx
	callq	gs_matrix_multiply
	leaq	30612(%r13), %rdx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	gs_matrix_multiply
	movq	%r13, %r9
	movq	176(%rsp), %r12         # 8-byte Reload
	movq	2208(%rsp), %rbx
	movq	168(%rsp), %r8          # 8-byte Reload
	jmp	.LBB6_39
.LBB6_92:                               # %if.else.342.i
	movq	%r13, %rdi
	movq	176(%rsp), %rsi         # 8-byte Reload
	callq	pdf_prepare_image
.LBB6_93:                               # %if.end.345.i
	testl	%eax, %eax
	movq	%rbp, %r10
	js	.LBB6_94
.LBB6_88:                               # %if.end.349.i
	leaq	32(%r10), %rax
	leaq	36(%r10), %rdx
	movq	168(%rsp), %rcx         # 8-byte Reload
	testq	%rcx, %rcx
	je	.LBB6_89
# BB#95:                                # %if.then.351.i
	movq	%rax, 80(%rsp)          # 8-byte Spill
	movq	%rdx, 72(%rsp)          # 8-byte Spill
	movq	%r10, %r14
	movl	(%rcx), %eax
	movl	%eax, 96(%rsp)          # 4-byte Spill
	movl	4(%rcx), %eax
	movl	%eax, 92(%rsp)          # 4-byte Spill
	leaq	8(%rcx), %rax
	leaq	12(%rcx), %rcx
	jmp	.LBB6_96
.LBB6_89:
	movq	%r10, %r14
	movl	$0, 96(%rsp)            # 4-byte Folded Spill
	movl	$0, 92(%rsp)            # 4-byte Folded Spill
	movq	%rax, 80(%rsp)          # 8-byte Spill
	movq	%rdx, %rcx
	movq	%rdx, 72(%rsp)          # 8-byte Spill
.LBB6_96:                               # %if.end.363.i
	movl	(%rcx), %ecx
	movl	%ecx, 112(%rsp)         # 4-byte Spill
	movl	(%rax), %eax
	movl	%eax, 108(%rsp)         # 4-byte Spill
	movl	$st_pdf_image_enum, %esi
	movl	$.L.str.15, %edx
	movq	2200(%rsp), %rdi
	callq	*72(%rdi)
	movl	$-25, %ebp
	testq	%rax, %rax
	je	.LBB6_256
# BB#97:                                # %if.end.369.i
	xorl	%esi, %esi
	movl	$800, %edx              # imm = 0x320
	movq	%rax, %rdi
	movq	%rax, %rbp
	callq	memset
	movq	%r13, %rcx
	movq	%rbp, %rdi
	movq	%rdi, (%r12)
	movsd	9368(%rcx), %xmm0       # xmm0 = mem[0],zero
	ucomisd	.LCPI6_1(%rip), %xmm0
	jae	.LBB6_98
# BB#99:                                # %cond.false.378.i
	movl	$pdf_image_object_enum_procs, %edx
	cmpl	$1, %ebx
	movq	%r14, %r13
	movl	148(%rsp), %r14d        # 4-byte Reload
	movl	136(%rsp), %r9d         # 4-byte Reload
	je	.LBB6_101
# BB#100:                               # %cond.false.382.i
	cmpl	$2, %ebx
	movl	$pdf_image_object_enum_procs2, %eax
	movl	$pdf_image_enum_procs, %edx
	cmoveq	%rax, %rdx
	jmp	.LBB6_101
.LBB6_98:                               # %cond.true.374.i
	movl	%ebx, %eax
	cmpl	$1, %eax
	movl	$pdf_image_object_enum_procs, %eax
	movl	$pdf_image_enum_procs, %edx
	cmoveq	%rax, %rdx
	movq	%r14, %r13
	movl	148(%rsp), %r14d        # 4-byte Reload
	movl	136(%rsp), %r9d         # 4-byte Reload
.LBB6_101:                              # %cond.end.388.i
	movl	%r14d, 148(%rsp)        # 4-byte Spill
	movq	%r13, %rsi
	movq	%rcx, 136(%rsp)         # 8-byte Spill
	movl	%r14d, %r8d
	movq	%rdi, %rbp
	callq	gx_image_enum_common_init
	movq	%rbp, %rsi
	movq	2200(%rsp), %rax
	movq	%rax, 24(%rsi)
	movl	108(%rsp), %ecx         # 4-byte Reload
	movl	%ecx, %edi
	movl	96(%rsp), %r9d          # 4-byte Reload
	subl	%r9d, %edi
	movl	%edi, 568(%rsi)
	movl	112(%rsp), %r8d         # 4-byte Reload
	movl	%r8d, %ebp
	movl	92(%rsp), %r11d         # 4-byte Reload
	subl	%r11d, %ebp
	movl	40(%r13), %eax
	imull	%r14d, %eax
	movl	44(%rsi), %ebx
	cltd
	idivl	%ebx
	movl	%eax, 572(%rsi)
	movl	%ebp, 576(%rsi)
	xorl	%edx, %edx
	movq	160(%rsp), %r10         # 8-byte Reload
	testq	%r10, %r10
	jne	.LBB6_103
# BB#102:                               # %if.else.408.i
	movslq	%edi, %rdx
	cltq
	imulq	%rdx, %rax
	addq	$7, %rax
	shrq	$3, %rax
	cvtsi2sdq	%rax, %xmm0
	cvtsi2sdl	%ebx, %xmm1
	mulsd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%ebp, %xmm0
	mulsd	%xmm1, %xmm0
	movq	136(%rsp), %rax         # 8-byte Reload
	xorps	%xmm1, %xmm1
	cvtsi2sdq	9592(%rax), %xmm1
	ucomisd	%xmm0, %xmm1
	seta	%al
	movzbl	%al, %edx
	andl	124(%rsp), %edx         # 4-byte Folded Reload
.LBB6_103:                              # %if.end.425.i
	movl	%r11d, %eax
	orl	%r9d, %eax
	jne	.LBB6_108
# BB#104:                               # %lor.lhs.false.435.i
	movq	80(%rsp), %rax          # 8-byte Reload
	cmpl	(%rax), %ecx
	jne	.LBB6_108
# BB#105:                               # %lor.lhs.false.441.i
	movq	72(%rsp), %rax          # 8-byte Reload
	cmpl	(%rax), %r8d
	jne	.LBB6_108
# BB#106:                               # %lor.lhs.false.447.i
	cmpl	$0, 152(%rsp)           # 4-byte Folded Reload
	je	.LBB6_109
# BB#107:                               # %land.lhs.true.449.i
	cmpl	$0, 572(%r13)
	je	.LBB6_109
.LBB6_108:                              # %if.then.451.i
	movl	$.L.str.15, %edx
	movq	2200(%rsp), %rdi
	callq	*24(%rdi)
	movq	%r13, %r10
	movq	136(%rsp), %r9          # 8-byte Reload
	jmp	.LBB6_254
.LBB6_94:
	movq	%r13, %r9
	jmp	.LBB6_254
.LBB6_109:                              # %if.end.453.i
	movl	%edx, 124(%rsp)         # 4-byte Spill
	movl	%edi, 60(%rsp)          # 4-byte Spill
	movq	%rsi, 64(%rsp)          # 8-byte Spill
	movq	176(%rsp), %rax         # 8-byte Reload
	leaq	132(%rax), %rax
	movq	192(%rsp), %r14         # 8-byte Reload
	testq	%r14, %r14
	cmoveq	%rax, %r14
	negl	%r9d
	negl	%r11d
	leaq	248(%rsp), %rdi
	movl	%r9d, %esi
	movl	%r11d, %edx
	movl	%ebp, %r9d
	movl	%r9d, 56(%rsp)          # 4-byte Spill
	callq	pdf_make_bitmap_matrix
	leaq	8(%r13), %rdi
	leaq	928(%rsp), %rsi
	callq	gs_matrix_invert
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB6_112
# BB#110:                               # %lor.lhs.false.472.i
	leaq	248(%rsp), %rdi
	leaq	928(%rsp), %rsi
	movq	%rsi, %rdx
	callq	gs_matrix_multiply
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB6_112
# BB#111:                               # %lor.lhs.false.476.i
	movq	64(%rsp), %rax          # 8-byte Reload
	leaq	776(%rax), %rdx
	leaq	928(%rsp), %rdi
	movq	%r14, %rsi
	callq	gs_matrix_multiply
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB6_112
# BB#113:                               # %if.end.484.i
	movq	%r14, 192(%rsp)         # 8-byte Spill
	movq	64(%rsp), %r14          # 8-byte Reload
	movq	776(%r14), %xmm0        # xmm0 = mem[0],zero
	movss	784(%r14), %xmm1        # xmm1 = mem[0],zero,zero,zero
	movss	788(%r14), %xmm2        # xmm2 = mem[0],zero,zero,zero
	unpcklps	%xmm1, %xmm2    # xmm2 = xmm2[0],xmm1[0],xmm2[1],xmm1[1]
	mulps	%xmm0, %xmm2
	movaps	%xmm2, %xmm0
	shufps	$229, %xmm0, %xmm0      # xmm0 = xmm0[1,1,2,3]
	ucomiss	%xmm0, %xmm2
	jne	.LBB6_115
	jp	.LBB6_115
# BB#114:                               # %cleanup.497.i
	movl	$.L.str.15, %edx
	movq	2200(%rsp), %rdi
	movq	%r14, %rsi
	callq	*24(%rdi)
	movq	136(%rsp), %r9          # 8-byte Reload
	movq	%r13, %r10
	jmp	.LBB6_254
.LBB6_112:                              # %cleanup.497.i.thread
	movl	$.L.str.15, %edx
	movq	2200(%rsp), %rdi
	movq	64(%rsp), %rsi          # 8-byte Reload
	callq	*24(%rdi)
	jmp	.LBB6_256
.LBB6_115:                              # %cleanup.cont.i
	movq	136(%rsp), %rbx         # 8-byte Reload
	movq	%rbx, %rdi
	movq	2192(%rsp), %rsi
	callq	pdf_put_clip_path
	movl	%eax, %ebp
	testl	%ebp, %ebp
	movq	%r14, %rax
	js	.LBB6_256
# BB#116:                               # %if.end.505.i
	movq	%r13, 48(%rsp)          # 8-byte Spill
	movq	%rbx, %r14
	leaq	584(%rax), %rdi
	movq	%rdi, 112(%rsp)         # 8-byte Spill
	callq	pdf_image_writer_init
	movb	$1, %al
	cmpl	$0, 124(%rsp)           # 4-byte Folded Reload
	jne	.LBB6_120
# BB#117:                               # %lor.rhs.i
	movq	80(%rsp), %rax          # 8-byte Reload
	cmpl	$64, (%rax)
	jg	.LBB6_118
# BB#119:                               # %land.rhs.510.i
	movq	72(%rsp), %rax          # 8-byte Reload
	cmpl	$65, (%rax)
	setl	%al
	jmp	.LBB6_120
.LBB6_118:
	xorl	%eax, %eax
.LBB6_120:                              # %lor.end.i
	cmpb	$1, %al
	movl	$1, %eax
	adcl	$0, %eax
	movq	64(%rsp), %rcx          # 8-byte Reload
	movl	%eax, 712(%rcx)
	movq	184(%rsp), %rax         # 8-byte Reload
	movq	576(%rax), %rax
	testq	%rax, %rax
	je	.LBB6_123
# BB#121:                               # %land.lhs.true.522.i
	movq	(%rax), %rax
	cmpl	$10, (%rax)
	jne	.LBB6_123
# BB#122:                               # %land.lhs.true.530.i
	cmpl	$2, 9072(%r14)
	jne	.LBB6_124
.LBB6_123:                              # %lor.lhs.false.534.i
	movl	$0, 108(%rsp)           # 4-byte Folded Spill
	cmpl	$0, 9960(%r14)
	je	.LBB6_125
.LBB6_124:                              # %if.then.536.i
	movl	$1, 108(%rsp)           # 4-byte Folded Spill
.LBB6_125:                              # %if.end.537.i
	movq	184(%rsp), %rsi         # 8-byte Reload
	leaq	2248(%rsi), %rdi
	movq	%rdi, 96(%rsp)          # 8-byte Spill
	movl	$2248, %edx             # imm = 0x8C8
	callq	memcpy
	cmpl	$0, 124(%rsp)           # 4-byte Folded Reload
	movl	$pdf_color_space_names_short, %eax
	movl	$pdf_color_space_names, %ebx
	cmovneq	%rax, %rbx
	xorl	%ebp, %ebp
	cmpl	$0, 152(%rsp)           # 4-byte Folded Reload
	jne	.LBB6_137
# BB#126:                               # %if.then.543.i
	movq	%r14, %rdi
	movq	176(%rsp), %rsi         # 8-byte Reload
	movq	48(%rsp), %rdx          # 8-byte Reload
	callq	psdf_is_converting_image_to_RGB
	testl	%eax, %eax
	je	.LBB6_128
# BB#127:                               # %if.then.546.i
	movq	16(%rbx), %rsi
	leaq	2112(%rsp), %rdi
	callq	cos_c_string_value
	jmp	.LBB6_137
.LBB6_128:                              # %if.else.548.i
	movq	128(%rsp), %rcx         # 8-byte Reload
	leaq	64(%rcx), %r12
	movq	64(%rcx), %rax
	movq	%rcx, %r13
	testq	%rax, %rax
	je	.LBB6_131
# BB#129:                               # %land.lhs.true.551.i
	cmpl	$0, 4(%rax)
	je	.LBB6_131
# BB#130:                               # %if.then.554.i
	movq	%r12, %rdi
	callq	gscms_set_icc_range
.LBB6_131:                              # %if.end.556.i
	leaq	2112(%rsp), %rdx
	movq	%r14, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rcx
	callq	pdf_convert_ICC
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jne	.LBB6_133
# BB#132:                               # %if.then.560.i
	movl	$0, 16(%rsp)
	movl	$0, 8(%rsp)
	movq	$0, (%rsp)
	leaq	2112(%rsp), %rsi
	leaq	2104(%rsp), %rdx
	movq	%r14, %rdi
	movq	%r13, %rcx
	movq	%rbx, %r8
	movl	124(%rsp), %r9d         # 4-byte Reload
	callq	pdf_color_space_named
	movl	%eax, %ebp
.LBB6_133:                              # %if.end.562.i
	movq	(%r12), %rdi
	testq	%rdi, %rdi
	je	.LBB6_136
# BB#134:                               # %land.lhs.true.566.i
	cmpl	$0, 4(%rdi)
	je	.LBB6_136
# BB#135:                               # %if.then.570.i
	callq	gsicc_setrange_lab
.LBB6_136:                              # %if.end.572.i
	shrl	$31, %ebp
.LBB6_137:                              # %if.end.578.i
	cmpl	$1, 2216(%rsp)
	je	.LBB6_191
# BB#138:                               # %if.end.578.i
	movq	184(%rsp), %rax         # 8-byte Reload
	movq	576(%rax), %rax
	testq	%rax, %rax
	je	.LBB6_191
# BB#139:                               # %if.then.587.i
	movl	9008(%r14), %ecx
	cmpl	$4, %ecx
	jne	.LBB6_140
# BB#144:                               # %land.lhs.true.602.i
	movq	%r14, %rdi
	movq	176(%rsp), %rsi         # 8-byte Reload
	movq	184(%rsp), %rdx         # 8-byte Reload
	callq	psdf_is_converting_image_to_RGB
	testl	%eax, %eax
	jne	.LBB6_149
# BB#145:                               # %land.lhs.true.607.i
	movq	184(%rsp), %rax         # 8-byte Reload
	movq	576(%rax), %rax
	movq	(%rax), %rcx
	movl	(%rcx), %ecx
	cmpl	$2, %ecx
	jb	.LBB6_149
# BB#146:                               # %land.lhs.true.607.i
	cmpl	$10, %ecx
	jne	.LBB6_155
# BB#147:                               # %if.then.6.i.558.i
	movq	40(%rax), %rcx
	movq	(%rcx), %rcx
	cmpl	$0, (%rcx)
	je	.LBB6_149
# BB#148:                               # %if.then.6.i.572.i
	movq	40(%rax), %rax
	movq	(%rax), %rax
	cmpl	$1, (%rax)
	jne	.LBB6_155
	jmp	.LBB6_149
.LBB6_140:                              # %if.then.587.i
	cmpl	$6, %ecx
	jne	.LBB6_149
# BB#141:                               # %land.lhs.true.592.i
	movq	(%rax), %rcx
	movl	(%rcx), %ecx
	testl	%ecx, %ecx
	je	.LBB6_149
# BB#142:                               # %land.lhs.true.592.i
	cmpl	$10, %ecx
	jne	.LBB6_155
# BB#143:                               # %if.then.6.i.i
	movq	40(%rax), %rax
	movq	(%rax), %rax
	cmpl	$0, (%rax)
	jne	.LBB6_155
.LBB6_149:                              # %lor.lhs.false.617.i
	cmpl	$5, 9008(%r14)
	jne	.LBB6_191
# BB#150:                               # %land.lhs.true.622.i
	movq	184(%rsp), %rax         # 8-byte Reload
	movq	576(%rax), %rax
	movq	(%rax), %rcx
	movl	(%rcx), %ecx
	testl	%ecx, %ecx
	je	.LBB6_191
# BB#151:                               # %land.lhs.true.622.i
	cmpl	$2, %ecx
	je	.LBB6_191
# BB#152:                               # %land.lhs.true.622.i
	cmpl	$10, %ecx
	jne	.LBB6_155
# BB#153:                               # %if.then.6.i.586.i
	movq	40(%rax), %rcx
	movq	(%rcx), %rcx
	cmpl	$0, (%rcx)
	je	.LBB6_191
# BB#154:                               # %if.then.6.i.600.i
	movq	40(%rax), %rax
	movq	(%rax), %rax
	cmpl	$2, (%rax)
	jne	.LBB6_155
.LBB6_191:                              # %if.end.832.i
	testl	%ebp, %ebp
	jne	.LBB6_193
# BB#192:                               # %if.end.832.i.if.end.869.i_crit_edge
	movq	184(%rsp), %rax         # 8-byte Reload
	movq	576(%rax), %rdi
	movl	$1, %ebx
	xorl	%r13d, %r13d
	xorl	%r12d, %r12d
	xorl	%eax, %eax
	movq	%rax, 152(%rsp)         # 8-byte Spill
	jmp	.LBB6_202
.LBB6_155:                              # %if.then.632.i
	movl	9008(%r14), %eax
	cmpl	$5, %eax
	jne	.LBB6_167
# BB#156:                               # %land.lhs.true.638.i
	movl	$.L.str.32, %edi
	callq	strlen
	movq	%rax, %rcx
	movq	784(%r14), %rdi
	cmpq	$3, %rcx
	ja	.LBB6_164
# BB#157:                               # %cond.true.642.i
	movzbl	(%rdi), %eax
	addl	$-68, %eax
	testq	%rcx, %rcx
	je	.LBB6_165
# BB#158:                               # %cond.true.642.i
	testl	%eax, %eax
	jne	.LBB6_165
# BB#159:                               # %if.then.654.i
	movzbl	1(%rdi), %eax
	addl	$-101, %eax
	cmpq	$2, %rcx
	jb	.LBB6_165
# BB#160:                               # %if.then.654.i
	testl	%eax, %eax
	jne	.LBB6_165
# BB#161:                               # %if.then.664.i
	movzbl	2(%rdi), %eax
	addl	$-118, %eax
	cmpq	$3, %rcx
	jb	.LBB6_165
# BB#162:                               # %if.then.664.i
	testl	%eax, %eax
	jne	.LBB6_165
# BB#163:                               # %if.then.674.i
	movzbl	3(%rdi), %eax
	addl	$-105, %eax
	jmp	.LBB6_165
.LBB6_164:                              # %cond.false.683.i
	movl	$.L.str.32, %esi
	callq	strcmp
.LBB6_165:                              # %cond.end.687.i
	testl	%eax, %eax
	jne	.LBB6_190
# BB#166:                               # %lor.lhs.false.690.ithread-pre-split
	movl	9008(%r14), %eax
.LBB6_167:                              # %lor.lhs.false.690.i
	cmpl	$4, %eax
	jne	.LBB6_179
# BB#168:                               # %land.lhs.true.701.i
	movl	$.L.str.33, %edi
	callq	strlen
	movq	%rax, %rcx
	movq	784(%r14), %rdi
	cmpq	$3, %rcx
	ja	.LBB6_176
# BB#169:                               # %cond.true.705.i
	movzbl	(%rdi), %eax
	addl	$-68, %eax
	testq	%rcx, %rcx
	je	.LBB6_177
# BB#170:                               # %cond.true.705.i
	testl	%eax, %eax
	jne	.LBB6_177
# BB#171:                               # %if.then.721.i
	movzbl	1(%rdi), %eax
	addl	$-101, %eax
	cmpq	$2, %rcx
	jb	.LBB6_177
# BB#172:                               # %if.then.721.i
	testl	%eax, %eax
	jne	.LBB6_177
# BB#173:                               # %if.then.731.i
	movzbl	2(%rdi), %eax
	addl	$-118, %eax
	cmpq	$3, %rcx
	jb	.LBB6_177
# BB#174:                               # %if.then.731.i
	testl	%eax, %eax
	jne	.LBB6_177
# BB#175:                               # %if.then.741.i
	movzbl	3(%rdi), %eax
	addl	$-105, %eax
	jmp	.LBB6_177
.LBB6_176:                              # %cond.false.750.i
	movl	$.L.str.33, %esi
	callq	strcmp
.LBB6_177:                              # %cond.end.754.i
	testl	%eax, %eax
	jne	.LBB6_190
# BB#178:                               # %cond.end.754.i.lor.lhs.false.757.i_crit_edge
	movl	9008(%r14), %eax
.LBB6_179:                              # %lor.lhs.false.757.i
	cmpl	$6, %eax
	jne	.LBB6_193
# BB#180:                               # %land.lhs.true.768.i
	movl	$.L.str.34, %edi
	callq	strlen
	movq	%rax, %rcx
	movq	784(%r14), %rdi
	cmpq	$3, %rcx
	ja	.LBB6_188
# BB#181:                               # %cond.true.772.i
	movzbl	(%rdi), %eax
	addl	$-68, %eax
	testq	%rcx, %rcx
	je	.LBB6_189
# BB#182:                               # %cond.true.772.i
	testl	%eax, %eax
	jne	.LBB6_189
# BB#183:                               # %if.then.788.i
	movzbl	1(%rdi), %eax
	addl	$-101, %eax
	cmpq	$2, %rcx
	jb	.LBB6_189
# BB#184:                               # %if.then.788.i
	testl	%eax, %eax
	jne	.LBB6_189
# BB#185:                               # %if.then.798.i
	movzbl	2(%rdi), %eax
	addl	$-118, %eax
	cmpq	$3, %rcx
	jb	.LBB6_189
# BB#186:                               # %if.then.798.i
	testl	%eax, %eax
	jne	.LBB6_189
# BB#187:                               # %if.then.808.i
	movzbl	3(%rdi), %eax
	addl	$-105, %eax
	jmp	.LBB6_189
.LBB6_188:                              # %cond.false.817.i
	movl	$.L.str.34, %esi
	callq	strcmp
.LBB6_189:                              # %cond.end.821.i
	testl	%eax, %eax
	je	.LBB6_193
.LBB6_190:                              # %if.then.824.i
	movq	%r14, %rbx
	movq	24(%rbx), %r14
	callq	gs_program_name
	movq	%rax, %rbp
	callq	gs_revision_number
	movq	%r14, %rdi
	movq	%rbp, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	24(%rbx), %rdi
	movl	$.L.str.35, %esi
	xorl	%eax, %eax
	callq	errprintf
	movl	$-15, %ebp
	jmp	.LBB6_256
.LBB6_193:                              # %if.then.834.i
	movl	30456(%r14), %eax
	cmpl	$2, %eax
	je	.LBB6_199
# BB#194:                               # %if.then.834.i
	cmpl	$1, %eax
	jne	.LBB6_195
# BB#198:                               # %sw.bb.837.i
	addq	$16, %rbx
	jmp	.LBB6_199
.LBB6_195:                              # %if.then.834.i
	testl	%eax, %eax
	jne	.LBB6_197
# BB#196:                               # %sw.bb.836.i
	addq	$8, %rbx
.LBB6_199:                              # %sw.epilog.846.i
	movq	(%rbx), %rsi
	leaq	2112(%rsp), %rdi
	callq	cos_c_string_value
	movq	184(%rsp), %rax         # 8-byte Reload
	movq	576(%rax), %rcx
	movq	%rcx, 152(%rsp)         # 8-byte Spill
	movl	40(%rax), %ebx
	movq	%r14, %rdi
	movl	30456(%rdi), %esi
	leaq	2096(%rsp), %rdx
	callq	make_device_color_space
	testl	%eax, %eax
	js	.LBB6_200
# BB#201:                               # %cleanup.866.i.thread29
	movq	2096(%rsp), %r13
	movq	184(%rsp), %rax         # 8-byte Reload
	movq	%r13, 576(%rax)
	movl	$8, 40(%rax)
	movb	$1, %r12b
	movq	%r13, %rdi
.LBB6_202:                              # %if.end.869.i
	movq	%r14, %rbp
	movq	9368(%rbp), %rax
	movq	%rax, 8872(%rbp)
	callq	rc_increment_cs
	movl	124(%rsp), %eax         # 4-byte Reload
	movl	%eax, (%rsp)
	xorl	%edx, %edx
	movq	%rbp, %rdi
	movq	%rbp, %r14
	movq	112(%rsp), %rsi         # 8-byte Reload
	movl	60(%rsp), %ecx          # 4-byte Reload
	movl	56(%rsp), %r8d          # 4-byte Reload
	movq	160(%rsp), %r9          # 8-byte Reload
	callq	pdf_begin_write_image
	testl	%eax, %eax
	js	.LBB6_200
# BB#203:                               # %if.end.879.i
	movq	64(%rsp), %rax          # 8-byte Reload
	cmpl	$1, 712(%rax)
	jne	.LBB6_205
# BB#204:                               # %if.then.884.i
	movq	%r14, %rdi
	movq	112(%rsp), %rsi         # 8-byte Reload
	movq	184(%rsp), %rdx         # 8-byte Reload
	movl	124(%rsp), %ecx         # 4-byte Reload
	callq	psdf_setup_lossless_filters
	jmp	.LBB6_209
.LBB6_205:                              # %if.else.890.i
	cmpl	$0, 108(%rsp)           # 4-byte Folded Reload
	je	.LBB6_207
# BB#206:                               # %if.then.892.i
	movq	%r14, %rbp
	movl	9072(%rbp), %r14d
	movl	$2, 9072(%rbp)
	movl	124(%rsp), %eax         # 4-byte Reload
	movl	%eax, (%rsp)
	movl	$1, %r9d
	movq	%rbp, %rdi
	movq	112(%rsp), %rsi         # 8-byte Reload
	movq	184(%rsp), %rdx         # 8-byte Reload
	movq	192(%rsp), %rcx         # 8-byte Reload
	movq	176(%rsp), %r8          # 8-byte Reload
	callq	psdf_setup_image_filters
	movl	%r14d, 9072(%rbp)
	movq	%rbp, %r14
	jmp	.LBB6_209
.LBB6_197:                              # %cleanup.866.i.thread
	movq	%r14, %rbx
	movq	24(%rbx), %r14
	callq	gs_program_name
	movq	%rax, %rbp
	callq	gs_revision_number
	movq	%r14, %rdi
	movq	%rbp, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	24(%rbx), %rdi
	movl	$.L.str.30, %esi
	xorl	%eax, %eax
	callq	errprintf
	movl	$-21, %ebp
	jmp	.LBB6_256
.LBB6_207:                              # %if.else.909.i
	testb	%r12b, %r12b
	jne	.LBB6_214
# BB#208:                               # %if.then.911.i
	movl	124(%rsp), %eax         # 4-byte Reload
	movl	%eax, (%rsp)
	movl	$1, %r9d
	movq	%r14, %rdi
	movq	112(%rsp), %rsi         # 8-byte Reload
	movq	184(%rsp), %rdx         # 8-byte Reload
	movq	192(%rsp), %rcx         # 8-byte Reload
	movq	176(%rsp), %r8          # 8-byte Reload
	callq	psdf_setup_image_filters
.LBB6_209:                              # %if.end.920.i
	testl	%eax, %eax
	js	.LBB6_210
# BB#213:                               # %if.end.933.i
	testb	%r12b, %r12b
	je	.LBB6_216
.LBB6_214:                              # %if.then.935.i
	movq	184(%rsp), %rdx         # 8-byte Reload
	movq	152(%rsp), %rax         # 8-byte Reload
	movq	%rax, 576(%rdx)
	movl	%ebx, 40(%rdx)
	movq	112(%rsp), %rdi         # 8-byte Reload
	movq	%r14, %rsi
	movq	176(%rsp), %rcx         # 8-byte Reload
	callq	psdf_setup_image_colors_filter
	testl	%eax, %eax
	js	.LBB6_200
# BB#215:                               # %if.end.951.i
	movq	184(%rsp), %rax         # 8-byte Reload
	movq	%r13, 576(%rax)
	movl	$8, 40(%rax)
.LBB6_216:                              # %if.end.958.i
	movq	184(%rsp), %rax         # 8-byte Reload
	movq	2824(%rax), %rdi
	callq	rc_increment_cs
	movq	64(%rsp), %rax          # 8-byte Reload
	cmpl	$2, 712(%rax)
	jl	.LBB6_230
# BB#217:                               # %if.then.966.i
	movq	64(%rsp), %rax          # 8-byte Reload
	leaq	616(%rax), %rsi
	movq	%rsi, 160(%rsp)         # 8-byte Spill
	movq	%r14, %rdi
	callq	pdf_make_alt_stream
	testl	%eax, %eax
	jne	.LBB6_200
# BB#218:                               # %if.end.973.i
	testb	%r12b, %r12b
	je	.LBB6_220
# BB#219:                               # %if.then.975.i
	movq	184(%rsp), %rax         # 8-byte Reload
	movq	%r13, 2824(%rax)
	movl	$8, 2288(%rax)
.LBB6_220:                              # %if.end.982.i
	movl	124(%rsp), %eax         # 4-byte Reload
	movl	%eax, (%rsp)
	movq	%r14, %rdi
	movq	160(%rsp), %rsi         # 8-byte Reload
	movq	96(%rsp), %rdx          # 8-byte Reload
	movq	192(%rsp), %rcx         # 8-byte Reload
	movq	176(%rsp), %r8          # 8-byte Reload
	movl	108(%rsp), %r9d         # 4-byte Reload
	callq	psdf_setup_image_filters
	testl	%eax, %eax
	jne	.LBB6_221
# BB#226:                               # %if.else.1038.i
	testb	%r12b, %r12b
	je	.LBB6_230
# BB#227:                               # %if.then.1040.i
	movq	184(%rsp), %rcx         # 8-byte Reload
	movl	2280(%rcx), %ebp
	movl	2284(%rcx), %r12d
	movq	152(%rsp), %rax         # 8-byte Reload
	movq	%rax, 2824(%rcx)
	movl	%ebx, 2288(%rcx)
	movl	32(%rcx), %eax
	movl	%eax, 2280(%rcx)
	movl	36(%rcx), %eax
	movl	%eax, 2284(%rcx)
	movq	160(%rsp), %rdi         # 8-byte Reload
	movq	%r14, %rsi
	movq	96(%rsp), %rdx          # 8-byte Reload
	movq	176(%rsp), %rcx         # 8-byte Reload
	callq	psdf_setup_image_colors_filter
	testl	%eax, %eax
	js	.LBB6_228
# BB#229:                               # %cleanup.1100.i
	movq	184(%rsp), %rax         # 8-byte Reload
	movl	%ebp, 2280(%rax)
	movl	%r12d, 2284(%rax)
	movq	%r13, 2824(%rax)
	movl	$8, 2288(%rax)
	jmp	.LBB6_230
.LBB6_210:                              # %if.then.923.i
	movq	184(%rsp), %rax         # 8-byte Reload
	movq	576(%rax), %rdi
.LBB6_211:                              # %if.then.923.i
	movq	48(%rsp), %rax          # 8-byte Reload
	cmpq	576(%rax), %rdi
	jne	.LBB6_200
# BB#212:                               # %if.then.930.i
	movl	$.L.str.36, %esi
	callq	rc_decrement_only_cs
	jmp	.LBB6_200
.LBB6_221:                              # %if.end.982.i
	cmpl	$-15, %eax
	jne	.LBB6_228
# BB#222:                               # %for.cond.i.preheader
	movq	64(%rsp), %rax          # 8-byte Reload
	cmpl	$2, 712(%rax)
	jl	.LBB6_225
# BB#223:                               # %for.body.i.lr.ph
	movq	64(%rsp), %rax          # 8-byte Reload
	leaq	632(%rax), %r12
	movl	$1, %ebp
	leaq	928(%rsp), %rbx
.LBB6_224:                              # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r12), %rax
	movq	%rax, 928(%rsp)
	movq	(%r12), %rdi
	callq	cos_stream_from_pipeline
	movq	%rax, %r13
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	s_close_filters
	movq	1728(%r14), %rdi
	movq	928(%rsp), %rsi
	movl	$.L.str.16, %edx
	callq	*24(%rdi)
	movq	(%r13), %rax
	movl	$.L.str.17, %esi
	movq	%r13, %rdi
	callq	*(%rax)
	movq	1728(%r14), %rdi
	movl	$.L.str.18, %edx
	movq	%r13, %rsi
	callq	*24(%rdi)
	incq	%rbp
	movq	64(%rsp), %rax          # 8-byte Reload
	movslq	712(%rax), %rax
	addq	$32, %r12
	cmpq	%rax, %rbp
	jl	.LBB6_224
.LBB6_225:                              # %for.end.i
	movq	64(%rsp), %rbx          # 8-byte Reload
	movl	$1, 712(%rbx)
	xorl	%esi, %esi
	movl	$32, %edx
	movq	160(%rsp), %rdi         # 8-byte Reload
	callq	memset
	leaq	648(%rbx), %rdi
	xorl	%esi, %esi
	movl	$32, %edx
	callq	memset
.LBB6_230:                              # %if.end.1107.i
	movq	184(%rsp), %rax         # 8-byte Reload
	movq	2824(%rax), %rdi
	movq	48(%rsp), %rax          # 8-byte Reload
	cmpq	576(%rax), %rdi
	jne	.LBB6_232
# BB#231:                               # %if.then.1114.i
	movl	$.L.str.36, %esi
	callq	rc_decrement_only_cs
.LBB6_232:                              # %for.cond.1117.i.preheader
	movq	64(%rsp), %rax          # 8-byte Reload
	movl	712(%rax), %r12d
	testl	%r12d, %r12d
	jle	.LBB6_242
# BB#233:                               # %for.body.1122.i.lr.ph
	xorl	%ebp, %ebp
	leaq	2112(%rsp), %r13
.LBB6_235:                              # %for.body.1122.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_238 Depth 2
	imulq	$2248, %rbp, %rcx       # imm = 0x8C8
	movq	184(%rsp), %rax         # 8-byte Reload
	leaq	(%rax,%rcx), %rdx
	cmpl	$0, 148(%rsp)           # 4-byte Folded Reload
	jle	.LBB6_239
# BB#236:                               # %for.body.1122.i
                                        #   in Loop: Header=BB6_235 Depth=1
	movq	2104(%rsp), %rax
	testq	%rax, %rax
	je	.LBB6_239
# BB#237:                               # %for.body.lr.ph.i.i
                                        #   in Loop: Header=BB6_235 Depth=1
	movq	184(%rsp), %rsi         # 8-byte Reload
	leaq	44(%rsi,%rcx), %rcx
	movl	148(%rsp), %esi         # 4-byte Reload
.LBB6_238:                              # %for.body.i.i
                                        #   Parent Loop BB6_235 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movss	(%rcx), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movss	4(%rcx), %xmm1          # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm1
	movss	(%rax), %xmm2           # xmm2 = mem[0],zero,zero,zero
	movss	4(%rax), %xmm3          # xmm3 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	cvtss2sd	%xmm3, %xmm3
	subsd	%xmm2, %xmm3
	subsd	%xmm0, %xmm1
	divsd	%xmm3, %xmm1
	subsd	%xmm2, %xmm0
	addsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm1
	movss	%xmm1, 4(%rcx)
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, (%rcx)
	addq	$8, %rcx
	addq	$8, %rax
	decl	%esi
	jne	.LBB6_238
.LBB6_239:                              # %pdf_begin_image_data_decoded.exit.i
                                        #   in Loop: Header=BB6_235 Depth=1
	movq	%r14, %rdi
	movq	112(%rsp), %rsi         # 8-byte Reload
	movq	%r13, %rcx
	movl	%ebp, %r8d
	callq	pdf_begin_image_data
	testl	%eax, %eax
	js	.LBB6_200
# BB#234:                               # %for.cond.1117.i
                                        #   in Loop: Header=BB6_235 Depth=1
	incq	%rbp
	movq	64(%rsp), %rax          # 8-byte Reload
	movslq	712(%rax), %r12
	cmpq	%r12, %rbp
	jl	.LBB6_235
# BB#240:                               # %for.end.1133.i
	cmpl	$2, %r12d
	jne	.LBB6_242
# BB#241:                               # %if.then.1138.i
	movq	64(%rsp), %rbx          # 8-byte Reload
	movq	%rbx, %rdi
	addq	$648, %rdi              # imm = 0x288
	movq	48(%rsp), %rax          # 8-byte Reload
	movl	32(%rax), %edx
	movl	36(%rax), %ecx
	movl	40(%rax), %r9d
	movq	%r14, %rsi
	movl	148(%rsp), %r8d         # 4-byte Reload
	callq	psdf_setup_compression_chooser
	movl	$3, 712(%rbx)
	movl	$3, %r12d
.LBB6_242:                              # %if.end.1148.i
	movq	48(%rsp), %rax          # 8-byte Reload
	movq	(%rax), %rax
	xorl	%ebp, %ebp
	cmpl	$4, 48(%rax)
	jne	.LBB6_256
# BB#243:                               # %land.lhs.true.1153.i
	movsd	.LCPI6_1(%rip), %xmm0   # xmm0 = mem[0],zero
	movq	%r14, %r13
	ucomisd	9368(%r13), %xmm0
	jbe	.LBB6_256
# BB#244:                               # %if.then.1157.i
	movslq	%r12d, %rbp
	imulq	$2248, %rbp, %r14       # imm = 0x8C8
	movq	184(%rsp), %rbx         # 8-byte Reload
	leaq	(%rbx,%r14), %rdi
	movq	%rdi, 160(%rsp)         # 8-byte Spill
	movl	$1, %esi
	xorl	%edx, %edx
	callq	gs_image_t_init_mask_adjust
	movl	32(%rbx), %eax
	movl	%eax, 32(%rbx,%r14)
	movl	36(%rbx), %eax
	movl	%eax, 36(%rbx,%r14)
	movl	$0, (%rsp)
	xorl	%edx, %edx
	xorl	%r9d, %r9d
	movq	%r13, %rdi
	movq	112(%rsp), %rsi         # 8-byte Reload
	movl	60(%rsp), %ecx          # 4-byte Reload
	movl	56(%rsp), %r8d          # 4-byte Reload
	callq	pdf_begin_write_image
	testl	%eax, %eax
	jne	.LBB6_245
# BB#246:                               # %if.end.1183.i
	shlq	$5, %rbp
	movq	112(%rsp), %rax         # 8-byte Reload
	leaq	(%rbp,%rax), %rbp
	movl	124(%rsp), %eax         # 4-byte Reload
	movl	%eax, (%rsp)
	movq	%r13, %rdi
	movq	%rbp, %rsi
	movq	160(%rsp), %rdx         # 8-byte Reload
	movq	192(%rsp), %rcx         # 8-byte Reload
	movq	176(%rsp), %r8          # 8-byte Reload
	movl	108(%rsp), %r9d         # 4-byte Reload
	callq	psdf_setup_image_filters
	testl	%eax, %eax
	js	.LBB6_245
# BB#247:                               # %if.end.1195.i
	movq	48(%rsp), %rax          # 8-byte Reload
	movl	32(%rax), %edx
	movl	36(%rax), %ecx
	movl	40(%rax), %r9d
	movq	184(%rsp), %rax         # 8-byte Reload
	leaq	588(%rax,%r14), %rax
	movq	%rax, (%rsp)
	movq	%rbp, %rdi
	movq	%r13, %rsi
	movl	148(%rsp), %ebx         # 4-byte Reload
	movl	%ebx, %r8d
	callq	psdf_setup_image_to_mask_filter
	testl	%ebx, %ebx
	jle	.LBB6_251
# BB#248:                               # %if.end.1195.i
	movq	2104(%rsp), %rax
	testq	%rax, %rax
	je	.LBB6_251
# BB#249:                               # %for.body.lr.ph.i.609.i
	movq	184(%rsp), %rcx         # 8-byte Reload
	leaq	44(%rcx,%r14), %rcx
.LBB6_250:                              # %for.body.i.631.i
                                        # =>This Inner Loop Header: Depth=1
	movss	(%rcx), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movss	4(%rcx), %xmm1          # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm1
	movss	(%rax), %xmm2           # xmm2 = mem[0],zero,zero,zero
	movss	4(%rax), %xmm3          # xmm3 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	cvtss2sd	%xmm3, %xmm3
	subsd	%xmm2, %xmm3
	subsd	%xmm0, %xmm1
	divsd	%xmm3, %xmm1
	subsd	%xmm2, %xmm0
	addsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm1
	movss	%xmm1, 4(%rcx)
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, (%rcx)
	addq	$8, %rcx
	addq	$8, %rax
	decl	%ebx
	jne	.LBB6_250
.LBB6_251:                              # %pdf_begin_image_data_decoded.exit635.i
	leaq	2112(%rsp), %rcx
	movq	%r13, %rbx
	movq	%rbx, %rdi
	movq	112(%rsp), %rsi         # 8-byte Reload
	movq	160(%rsp), %rdx         # 8-byte Reload
	movl	%r12d, %r8d
	callq	pdf_begin_image_data
	movq	%rbx, %r9
	testl	%eax, %eax
	movq	2208(%rsp), %r12
	movq	48(%rsp), %r10          # 8-byte Reload
	movq	64(%rsp), %rax          # 8-byte Reload
	js	.LBB6_254
# BB#252:                               # %cleanup.1219.i
	incl	712(%rax)
	xorl	%ebp, %ebp
	jmp	.LBB6_256
.LBB6_200:
	movq	2208(%rsp), %r12
	movq	%r14, %r9
	movq	48(%rsp), %r10          # 8-byte Reload
	jmp	.LBB6_254
.LBB6_245:
	movq	2208(%rsp), %r12
	movq	%r13, %r9
	movq	48(%rsp), %r10          # 8-byte Reload
	jmp	.LBB6_254
.LBB6_228:                              # %if.then.1028.i
	movq	184(%rsp), %rax         # 8-byte Reload
	movq	2824(%rax), %rdi
	jmp	.LBB6_211
.Lfunc_end6:
	.size	old_pdf_begin_typed_image, .Lfunc_end6-old_pdf_begin_typed_image
	.cfi_endproc

	.align	16, 0x90
	.type	pdf_image3x_make_mid,@function
pdf_image3x_make_mid:                   # @pdf_image3x_make_mid
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp40:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp41:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp42:
	.cfi_def_cfa_offset 32
.Ltmp43:
	.cfi_offset %rbx, -24
.Ltmp44:
	.cfi_offset %r14, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	leaq	(%rsp), %rdi
	movl	$gs_null_device, %esi
	movq	%r9, %rdx
	callq	gs_copydevice
	testl	%eax, %eax
	js	.LBB7_2
# BB#1:                                 # %if.end
	movq	(%rsp), %rdi
	movq	%rbx, %rsi
	callq	gx_device_set_target
	movq	(%rsp), %rax
	movq	%rax, (%r14)
	movq	$pdf_mid_begin_typed_image, 1440(%rax)
	xorl	%eax, %eax
.LBB7_2:                                # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end7:
	.size	pdf_image3x_make_mid, .Lfunc_end7-pdf_image3x_make_mid
	.cfi_endproc

	.align	16, 0x90
	.type	pdf_image3x_make_mcde,@function
pdf_image3x_make_mcde:                  # @pdf_image3x_make_mcde
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp45:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp46:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp47:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp48:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp49:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp50:
	.cfi_def_cfa_offset 56
	subq	$88, %rsp
.Ltmp51:
	.cfi_def_cfa_offset 144
.Ltmp52:
	.cfi_offset %rbx, -56
.Ltmp53:
	.cfi_offset %r12, -48
.Ltmp54:
	.cfi_offset %r13, -40
.Ltmp55:
	.cfi_offset %r14, -32
.Ltmp56:
	.cfi_offset %r15, -24
.Ltmp57:
	.cfi_offset %rbp, -16
	movq	%rdx, %rbp
	movq	%rsi, %r14
	movq	%rdi, %r12
	movq	200(%rsp), %rdx
	movq	176(%rsp), %rax
	movq	(%rax), %r15
	movq	8(%rax), %rsi
	movl	$-15, %eax
	testq	%r15, %r15
	je	.LBB8_3
# BB#1:                                 # %if.then
	testq	%rsi, %rsi
	jne	.LBB8_15
# BB#2:                                 # %if.end
	movq	%rcx, 56(%rsp)          # 8-byte Spill
	movq	%r8, 64(%rsp)           # 8-byte Spill
	movq	%r9, 72(%rsp)           # 8-byte Spill
	leaq	584(%rdx), %rax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	jmp	.LBB8_5
.LBB8_3:                                # %if.else
	testq	%rsi, %rsi
	je	.LBB8_15
# BB#4:                                 # %if.then.6
	movq	%rcx, 56(%rsp)          # 8-byte Spill
	movq	%r8, 64(%rsp)           # 8-byte Spill
	movq	%r9, 72(%rsp)           # 8-byte Spill
	leaq	1416(%rdx), %rax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	movl	$1, %eax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	movq	%rsi, %r15
.LBB8_5:                                # %if.end.9
	movq	152(%rsp), %r13
	leaq	80(%rsp), %rdi
	movl	$gs_null_device, %esi
	movq	%r13, %rdx
	callq	gs_copydevice
	testl	%eax, %eax
	js	.LBB8_15
# BB#6:                                 # %if.end.12
	movq	168(%rsp), %rbx
	movq	80(%rsp), %rdi
	movq	%r15, %rsi
	callq	gx_device_set_target
	movq	80(%rsp), %rax
	movq	%rax, (%rbx)
	cmpl	$0, 30760(%r12)
	je	.LBB8_7
# BB#8:                                 # %if.else.i
	movq	160(%rsp), %rax
	movq	%rax, %rbx
	movq	%rbx, 16(%rsp)
	movq	%r13, 8(%rsp)
	movq	144(%rsp), %rax
	movq	%rax, (%rsp)
	movl	$2, 24(%rsp)
	movq	%r12, %rdi
	movq	%r14, %rsi
	movq	%rbp, %rdx
	movq	56(%rsp), %rcx          # 8-byte Reload
	movq	64(%rsp), %r8           # 8-byte Reload
	movq	72(%rsp), %r9           # 8-byte Reload
	callq	old_pdf_begin_typed_image
	jmp	.LBB8_9
.LBB8_7:                                # %if.then.i
	movq	160(%rsp), %rax
	movq	%rax, %rbx
	movq	%rbx, 16(%rsp)
	movq	%r13, 8(%rsp)
	movq	144(%rsp), %rax
	movq	%rax, (%rsp)
	movl	$2, 24(%rsp)
	movq	%r12, %rdi
	movq	%r14, %rsi
	movq	%rbp, %rdx
	movq	56(%rsp), %rcx          # 8-byte Reload
	movq	64(%rsp), %r8           # 8-byte Reload
	movq	72(%rsp), %r9           # 8-byte Reload
	callq	new_pdf_begin_typed_image
.LBB8_9:                                # %pdf_begin_typed_image.exit
	movq	%rbx, %rdx
	testl	%eax, %eax
	movq	200(%rsp), %rcx
	js	.LBB8_15
# BB#10:                                # %if.end.16
	movq	(%rdx), %rdi
	movl	$pdf_image_enum_procs, %eax
	cmpq	%rax, 8(%rdi)
	je	.LBB8_12
# BB#11:                                # %if.then.18
	xorl	%esi, %esi
	callq	gx_image_end
	movq	168(%rsp), %rax
	movq	(%rax), %rsi
	movl	$.L.str.19, %edx
	movq	%r13, %rdi
	callq	*24(%r13)
	movl	$-15, %eax
	jmp	.LBB8_15
.LBB8_12:                               # %if.end.21
	movq	48(%rsp), %rax          # 8-byte Reload
	cmpl	$0, 260(%rax)
	je	.LBB8_14
# BB#13:                                # %if.then.25
	movq	184(%rsp), %rax
	movq	40(%rsp), %rdx          # 8-byte Reload
	movq	(%rax,%rdx,8), %rbx
	movq	576(%rcx), %rdi
	callq	gs_color_space_num_components
	movq	728(%rbx), %rcx
	movq	64(%rcx), %rdi
	movq	48(%rsp), %rdx          # 8-byte Reload
	addq	$4, %rdx
	movl	$.L.str.20, %esi
	movl	%eax, %ecx
	callq	cos_dict_put_c_key_floats
	testl	%eax, %eax
	js	.LBB8_15
.LBB8_14:                               # %if.end.31
	xorl	%eax, %eax
.LBB8_15:                               # %cleanup.32
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	pdf_image3x_make_mcde, .Lfunc_end8-pdf_image3x_make_mcde
	.cfi_endproc

	.align	16, 0x90
	.type	make_device_color_space,@function
make_device_color_space:                # @make_device_color_space
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp58:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp59:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp60:
	.cfi_def_cfa_offset 32
.Ltmp61:
	.cfi_offset %rbx, -24
.Ltmp62:
	.cfi_offset %r14, -16
	movq	%rdx, %r14
	movq	1728(%rdi), %rbx
	cmpl	$2, %esi
	je	.LBB9_4
# BB#1:                                 # %entry
	cmpl	$1, %esi
	jne	.LBB9_2
# BB#6:                                 # %sw.bb.1
	movq	%rbx, %rdi
	callq	gs_cspace_new_DeviceRGB
	jmp	.LBB9_7
.LBB9_4:                                # %sw.bb.3
	movq	%rbx, %rdi
	callq	gs_cspace_new_DeviceCMYK
	jmp	.LBB9_7
.LBB9_2:                                # %entry
	testl	%esi, %esi
	jne	.LBB9_5
# BB#3:                                 # %sw.bb
	movq	%rbx, %rdi
	callq	gs_cspace_new_DeviceGray
.LBB9_7:                                # %sw.epilog
	movl	$-25, %ecx
	testq	%rax, %rax
	je	.LBB9_9
# BB#8:                                 # %if.end
	movq	%rax, (%r14)
	xorl	%ecx, %ecx
	jmp	.LBB9_9
.LBB9_5:                                # %sw.default
	callq	gs_program_name
	movq	%rax, %r14
	callq	gs_revision_number
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movl	$.L.str.31, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	errprintf
	movl	$-21, %ecx
.LBB9_9:                                # %cleanup
	movl	%ecx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end9:
	.size	make_device_color_space, .Lfunc_end9-make_device_color_space
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI10_0:
	.quad	4608533498688228557     # double 1.3
	.text
	.align	16, 0x90
	.type	pdf_image3_make_mid,@function
pdf_image3_make_mid:                    # @pdf_image3_make_mid
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp63:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp64:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp65:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp66:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp67:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp68:
	.cfi_def_cfa_offset 56
	subq	$72, %rsp
.Ltmp69:
	.cfi_def_cfa_offset 128
.Ltmp70:
	.cfi_offset %rbx, -56
.Ltmp71:
	.cfi_offset %r12, -48
.Ltmp72:
	.cfi_offset %r13, -40
.Ltmp73:
	.cfi_offset %r14, -32
.Ltmp74:
	.cfi_offset %r15, -24
.Ltmp75:
	.cfi_offset %rbp, -16
	movq	%r8, %r15
	movl	%ecx, %r12d
	movl	%edx, %ebp
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movsd	.LCPI10_0(%rip), %xmm0  # xmm0 = mem[0],zero
	ucomisd	9368(%rbx), %xmm0
	jbe	.LBB10_4
# BB#1:                                 # %land.lhs.true
	cmpl	$0, 9556(%rbx)
	je	.LBB10_2
.LBB10_4:                               # %if.else
	leaq	48(%rsp), %rdi
	movl	$gs_null_device, %esi
	movq	%r15, %rdx
	callq	gs_copydevice
	testl	%eax, %eax
	js	.LBB10_7
# BB#5:                                 # %if.end.10
	movq	48(%rsp), %rdi
	movq	%rbx, %rsi
	callq	gx_device_set_target
	movq	48(%rsp), %rax
	movq	%rax, (%r14)
	movq	$pdf_mid_begin_typed_image, 1440(%rax)
	jmp	.LBB10_6
.LBB10_2:                               # %if.then
	movq	$0, 40(%rsp)
	leaq	48(%rsp), %r13
	movq	%r13, %rdi
	callq	gs_make_identity
	movl	%r12d, 16(%rsp)
	movl	%ebp, 8(%rsp)
	movl	$1, 24(%rsp)
	movl	$0, (%rsp)
	leaq	40(%rsp), %rcx
	movl	$1, %r8d
	xorl	%r9d, %r9d
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%r13, %rdx
	callq	pdf_setup_masked_image_converter
	testl	%eax, %eax
	js	.LBB10_7
# BB#3:                                 # %if.end
	movq	40(%rsp), %rax
	movq	2792(%rax), %rcx
	movq	%rax, 1728(%rcx)
	movq	40(%rsp), %rax
	movl	$0, 2840(%rax)
	movq	2792(%rax), %rax
	movq	%rax, (%r14)
.LBB10_6:                               # %cleanup.13
	xorl	%eax, %eax
.LBB10_7:                               # %cleanup.13
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end10:
	.size	pdf_image3_make_mid, .Lfunc_end10-pdf_image3_make_mid
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI11_0:
	.quad	4608533498688228557     # double 1.3
	.text
	.align	16, 0x90
	.type	pdf_image3_make_mcde,@function
pdf_image3_make_mcde:                   # @pdf_image3_make_mcde
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp76:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp77:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp78:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp79:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp80:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp81:
	.cfi_def_cfa_offset 56
	subq	$72, %rsp
.Ltmp82:
	.cfi_def_cfa_offset 128
.Ltmp83:
	.cfi_offset %rbx, -56
.Ltmp84:
	.cfi_offset %r12, -48
.Ltmp85:
	.cfi_offset %r13, -40
.Ltmp86:
	.cfi_offset %r14, -32
.Ltmp87:
	.cfi_offset %r15, -24
.Ltmp88:
	.cfi_offset %rbp, -16
	movq	%rdx, %rbx
	movq	%rdi, %rbp
	movq	160(%rsp), %r15
	movq	152(%rsp), %r14
	movq	144(%rsp), %r12
	movq	136(%rsp), %r13
	movsd	.LCPI11_0(%rip), %xmm0  # xmm0 = mem[0],zero
	ucomisd	9368(%rbp), %xmm0
	jbe	.LBB11_3
# BB#1:                                 # %land.lhs.true
	cmpl	$0, 9556(%rbp)
	je	.LBB11_2
.LBB11_3:                               # %if.else
	movq	%rsi, 32(%rsp)          # 8-byte Spill
	movq	%rcx, 40(%rsp)          # 8-byte Spill
	movq	%r8, 48(%rsp)           # 8-byte Spill
	movq	%r9, 56(%rsp)           # 8-byte Spill
	leaq	64(%rsp), %rdi
	movl	$gs_null_device, %esi
	movq	%r13, %rdx
	callq	gs_copydevice
	testl	%eax, %eax
	js	.LBB11_9
# BB#4:                                 # %if.end.10
	movq	64(%rsp), %rdi
	movq	%r15, %rsi
	callq	gx_device_set_target
	movq	64(%rsp), %rax
	movq	%rax, (%r14)
	cmpl	$0, 30760(%rbp)
	je	.LBB11_5
# BB#6:                                 # %if.else.i
	movq	%r12, 16(%rsp)
	movq	%r13, 8(%rsp)
	movq	128(%rsp), %rax
	movq	%rax, (%rsp)
	movl	$2, 24(%rsp)
	movq	%rbp, %rdi
	movq	32(%rsp), %rsi          # 8-byte Reload
	movq	%rbx, %rdx
	movq	40(%rsp), %rcx          # 8-byte Reload
	movq	48(%rsp), %r8           # 8-byte Reload
	movq	56(%rsp), %r9           # 8-byte Reload
	callq	old_pdf_begin_typed_image
	jmp	.LBB11_7
.LBB11_2:                               # %if.then
	movq	176(%rsp), %r10
	movq	1728(%r15), %rdi
	movq	$0, 1728(%r15)
	movq	30628(%rbp), %rax
	movq	%rax, 2876(%rdi)
	movupd	30612(%rbp), %xmm0
	movupd	%xmm0, 2860(%rdi)
	movl	(%r10), %eax
	movl	%eax, 2748(%rdi)
	movl	4(%r10), %eax
	movl	%eax, 2752(%rdi)
	movq	%rdi, (%r14)
	movq	%r12, 16(%rsp)
	movq	%r13, 8(%rsp)
	movq	$0, (%rsp)
	movq	%rbx, %rdx
	callq	gx_default_begin_typed_image
	jmp	.LBB11_7
.LBB11_5:                               # %if.then.i
	movq	%r12, 16(%rsp)
	movq	%r13, 8(%rsp)
	movq	128(%rsp), %rax
	movq	%rax, (%rsp)
	movl	$2, 24(%rsp)
	movq	%rbp, %rdi
	movq	32(%rsp), %rsi          # 8-byte Reload
	movq	%rbx, %rdx
	movq	40(%rsp), %rcx          # 8-byte Reload
	movq	48(%rsp), %r8           # 8-byte Reload
	movq	56(%rsp), %r9           # 8-byte Reload
	callq	new_pdf_begin_typed_image
.LBB11_7:                               # %pdf_begin_typed_image.exit
	testl	%eax, %eax
	js	.LBB11_9
# BB#8:                                 # %if.end.15
	xorl	%eax, %eax
.LBB11_9:                               # %cleanup.16
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end11:
	.size	pdf_image3_make_mcde, .Lfunc_end11-pdf_image3_make_mcde
	.cfi_endproc

	.align	16, 0x90
	.type	pdf_mid_begin_typed_image,@function
pdf_mid_begin_typed_image:              # @pdf_mid_begin_typed_image
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$40, %rsp
.Ltmp89:
	.cfi_def_cfa_offset 48
	movq	64(%rsp), %rax
	movq	56(%rsp), %r11
	movq	48(%rsp), %r10
	movq	1728(%rdi), %rdi
	cmpl	$0, 30760(%rdi)
	je	.LBB12_1
# BB#2:                                 # %if.else.i
	movq	%rax, 16(%rsp)
	movq	%r11, 8(%rsp)
	movq	%r10, (%rsp)
	movl	$1, 24(%rsp)
	callq	old_pdf_begin_typed_image
	addq	$40, %rsp
	retq
.LBB12_1:                               # %if.then.i
	movq	%rax, 16(%rsp)
	movq	%r11, 8(%rsp)
	movq	%r10, (%rsp)
	movl	$1, 24(%rsp)
	callq	new_pdf_begin_typed_image
	addq	$40, %rsp
	retq
.Lfunc_end12:
	.size	pdf_mid_begin_typed_image, .Lfunc_end12-pdf_mid_begin_typed_image
	.cfi_endproc

	.align	16, 0x90
	.type	pdf_convert_image4_to_image1,@function
pdf_convert_image4_to_image1:           # @pdf_convert_image4_to_image1
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
	movq	%r9, %r15
	movq	%rcx, %rbx
	movq	%rdx, %r13
	movq	%rsi, %r14
	movq	%rdi, %r12
	movl	$-1, %ebp
	cmpl	$1, 40(%rbx)
	jne	.LBB13_32
# BB#1:                                 # %land.lhs.true
	movq	%r8, 8(%rsp)            # 8-byte Spill
	movq	576(%rbx), %rdi
	movq	(%rdi), %rax
	callq	*24(%rax)
	cmpl	$1, %eax
	jne	.LBB13_32
# BB#2:                                 # %land.lhs.true.3
	cmpl	$0, 584(%rbx)
	movl	588(%rbx), %eax
	movl	%eax, %ecx
	je	.LBB13_4
# BB#3:                                 # %cond.true
	movl	592(%rbx), %ecx
	orl	%eax, %ecx
.LBB13_4:                               # %cond.end
	cmpl	$1, %ecx
	ja	.LBB13_32
# BB#5:                                 # %if.then
	movq	576(%rbx), %rsi
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movq	%rax, (%rsp)            # 8-byte Spill
	movl	44(%rbx,%rax,4), %eax
	movl	%eax, 24(%rsp)
	movq	$0, 16(%rsp)
	movq	(%rsi), %rax
	leaq	16(%rsp), %rdi
	xorl	%r9d, %r9d
	movq	%r15, %rdx
	movq	%r14, %rcx
	movq	%r12, %r8
	callq	*72(%rax)
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB13_32
# BB#6:                                 # %if.end
	movl	212(%r14), %ecx
	movl	$gx_dc_type_data_pure, %eax
	movl	$-1, %edx
	cmpq	%rax, (%r15)
	jne	.LBB13_14
# BB#7:                                 # %cond.false.i
	movl	%ecx, %r14d
	movq	8(%r15), %rbp
	movq	%r12, %rdi
	callq	gx_device_black
	cmpq	%rax, %rbp
	jne	.LBB13_8
# BB#10:                                # %sw.bb
	movl	%r14d, %ecx
	movl	%ecx, %eax
	andl	$51, %eax
	shll	$2, %eax
	andl	$-461, %ecx             # imm = 0xFFFFFFFFFFFFFE33
	orl	%eax, %ecx
	xorl	%edx, %edx
	jmp	.LBB13_14
.LBB13_8:                               # %color_is_black_or_white.exit
	movq	8(%r15), %rbp
	movq	%r12, %rdi
	callq	gx_device_white
	cmpq	%rax, %rbp
	jne	.LBB13_9
# BB#11:                                # %sw.bb.23
	movl	$1, %edx
	movl	%r14d, %ecx
	testb	$1, %ch
	jne	.LBB13_12
# BB#13:                                # %cond.false.27
	movl	%ecx, %eax
	shrl	$2, %eax
	andl	$51, %eax
	andl	$-52, %ecx
	orl	%eax, %ecx
	jmp	.LBB13_14
.LBB13_9:
	movl	%r14d, %ecx
	movl	$-1, %edx
	jmp	.LBB13_14
.LBB13_12:
	movl	$170, %ecx
.LBB13_14:                              # %sw.epilog
	cmpl	$0, 572(%rbx)
	je	.LBB13_23
# BB#15:                                # %if.then.34
	movl	$gx_dc_type_data_pure, %eax
	cmpq	%rax, (%r13)
	jne	.LBB13_24
# BB#16:                                # %cond.false.i.58
	movl	%edx, %r15d
	movl	%ecx, %r14d
	movq	8(%r13), %rbp
	movq	%r12, %rdi
	callq	gx_device_black
	cmpq	%rax, %rbp
	jne	.LBB13_17
# BB#19:                                # %sw.bb.36
	movl	%r14d, %ecx
	movl	%ecx, %eax
	andl	$15, %eax
	shll	$4, %eax
	andl	$-753, %ecx             # imm = 0xFFFFFFFFFFFFFD0F
	jmp	.LBB13_22
.LBB13_23:                              # %if.else
	movl	%ecx, %eax
	andl	$15, %eax
	shll	$4, %eax
	andl	$-753, %ecx             # imm = 0xFFFFFFFFFFFFFD0F
	orl	%eax, %ecx
	jmp	.LBB13_24
.LBB13_17:                              # %color_is_black_or_white.exit64
	movq	8(%r13), %rbp
	movq	%r12, %rdi
	callq	gx_device_white
	cmpq	%rax, %rbp
	jne	.LBB13_18
# BB#20:                                # %sw.bb.42
	movl	$-1, %ebp
	movl	%r14d, %ecx
	testb	$2, %ch
	jne	.LBB13_32
# BB#21:                                # %cond.false.46
	movl	%ecx, %eax
	shrl	$4, %eax
	andl	$15, %eax
	andl	$-16, %ecx
.LBB13_22:                              # %if.end.63
	orl	%eax, %ecx
	movl	%r15d, %edx
	jmp	.LBB13_24
.LBB13_18:
	movl	%r14d, %ecx
	movl	%r15d, %edx
.LBB13_24:                              # %if.end.63
	movzbl	%cl, %eax
	movl	$-1, %ebp
	cmpl	$255, %eax
	je	.LBB13_28
# BB#25:                                # %if.end.63
	cmpl	$204, %eax
	je	.LBB13_29
# BB#26:                                # %if.end.63
	testl	%eax, %eax
	jne	.LBB13_32
# BB#27:                                # %sw.bb.65
	testl	%edx, %edx
	jne	.LBB13_32
	jmp	.LBB13_31
.LBB13_28:                              # %sw.bb.69
	cmpl	$1, %edx
	jne	.LBB13_32
.LBB13_29:                              # %sw.epilog.74
	cmpl	$1, %edx
	jne	.LBB13_31
# BB#30:                                # %sw.epilog.74
	andl	$256, %ecx              # imm = 0x100
	jne	.LBB13_32
.LBB13_31:                              # %cleanup.cont
	xorl	%ebp, %ebp
	xorl	%edx, %edx
	movq	8(%rsp), %r14           # 8-byte Reload
	movq	%r14, %rdi
	movq	(%rsp), %rsi            # 8-byte Reload
	callq	gs_image_t_init_mask_adjust
	movq	24(%rbx), %rax
	movq	%rax, 24(%r14)
	movups	8(%rbx), %xmm0
	movups	%xmm0, 8(%r14)
	movl	32(%rbx), %eax
	movl	%eax, 32(%r14)
	movl	36(%rbx), %eax
	movl	%eax, 36(%r14)
	movl	$1, 40(%r14)
	movl	564(%rbx), %eax
	movl	%eax, 564(%r14)
	movl	$0, 568(%r14)
.LBB13_32:                              # %return
	movl	%ebp, %eax
	addq	$280, %rsp              # imm = 0x118
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end13:
	.size	pdf_convert_image4_to_image1, .Lfunc_end13-pdf_convert_image4_to_image1
	.cfi_endproc

	.align	16, 0x90
	.type	pdf_image_end_image_cvd,@function
pdf_image_end_image_cvd:                # @pdf_image_end_image_cvd
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp103:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp104:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp105:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp106:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp107:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp108:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp109:
	.cfi_def_cfa_offset 64
.Ltmp110:
	.cfi_offset %rbx, -56
.Ltmp111:
	.cfi_offset %r12, -48
.Ltmp112:
	.cfi_offset %r13, -40
.Ltmp113:
	.cfi_offset %r14, -32
.Ltmp114:
	.cfi_offset %r15, -24
.Ltmp115:
	.cfi_offset %rbp, -16
	movl	%esi, %r14d
	movq	%rdi, %rbp
	movq	16(%rbp), %rbx
	movq	2800(%rbx), %rdi
	movq	%rbx, %rsi
	callq	pdf_dump_converted_image
	movl	%eax, %r13d
	movq	%rbp, %rdi
	movl	%r14d, %esi
	callq	gx_image1_end_image
	movl	%eax, %r14d
	movq	2792(%rbx), %rdi
	callq	gs_closedevice
	movl	%eax, %r15d
	movq	%rbx, %rdi
	callq	gs_closedevice
	movl	%eax, %r12d
	movq	2792(%rbx), %rsi
	movq	24(%rsi), %rdi
	movl	$.L.str.21, %edx
	callq	*24(%rdi)
	movq	24(%rbx), %rdi
	movl	$.L.str.21, %edx
	movq	%rbx, %rsi
	callq	*24(%rdi)
	testl	%r13d, %r13d
	js	.LBB14_3
# BB#1:                                 # %cond.false
	testl	%r14d, %r14d
	movl	%r14d, %r13d
	js	.LBB14_3
# BB#2:                                 # %cond.false.15
	testl	%r15d, %r15d
	cmovsl	%r15d, %r12d
	movl	%r12d, %r13d
.LBB14_3:                               # %cond.end.21
	movl	%r13d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end14:
	.size	pdf_image_end_image_cvd, .Lfunc_end14-pdf_image_end_image_cvd
	.cfi_endproc

	.align	16, 0x90
	.type	pdf_image_enum_enum_ptrs,@function
pdf_image_enum_enum_ptrs:               # @pdf_image_enum_enum_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp116:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp117:
	.cfi_def_cfa_offset 32
.Ltmp118:
	.cfi_offset %rbx, -16
	movq	%r8, %rbx
	cmpl	$15, %ecx
	jg	.LBB15_4
# BB#1:                                 # %if.then
	movq	32(%rsp), %rax
	addq	$584, %rsi              # imm = 0x248
	movq	%rax, (%rsp)
	movl	$192, %edx
	movl	$st_pdf_image_writer, %r9d
	movq	%rbx, %r8
	callq	*st_pdf_image_writer+32(%rip)
	testq	%rax, %rax
	jne	.LBB15_3
# BB#2:                                 # %if.then.2
	movq	$0, (%rbx)
	movl	$ptr_struct_procs, %eax
.LBB15_3:                               # %cleanup.5
	addq	$16, %rsp
	popq	%rbx
	retq
.LBB15_4:                               # %if.end.3
	addl	$-16, %ecx
	movl	$st_gx_image_enum_common, %r9d
	movq	%rbx, %r8
	addq	$16, %rsp
	popq	%rbx
	jmpq	*st_gx_image_enum_common+32(%rip) # TAILCALL
.Lfunc_end15:
	.size	pdf_image_enum_enum_ptrs, .Lfunc_end15-pdf_image_enum_enum_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	pdf_image_enum_reloc_ptrs,@function
pdf_image_enum_reloc_ptrs:              # @pdf_image_enum_reloc_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp119:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp120:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp121:
	.cfi_def_cfa_offset 32
.Ltmp122:
	.cfi_offset %rbx, -32
.Ltmp123:
	.cfi_offset %r14, -24
.Ltmp124:
	.cfi_offset %rbp, -16
	movq	%rcx, %rbx
	movl	%esi, %r14d
	movq	%rdi, %rbp
	leaq	584(%rbp), %rdi
	movl	$192, %esi
	movl	$st_pdf_image_writer, %edx
	callq	*st_pdf_image_writer+40(%rip)
	movl	$st_gx_image_enum_common, %edx
	movq	%rbp, %rdi
	movl	%r14d, %esi
	movq	%rbx, %rcx
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmpq	*st_gx_image_enum_common+40(%rip) # TAILCALL
.Lfunc_end16:
	.size	pdf_image_enum_reloc_ptrs, .Lfunc_end16-pdf_image_enum_reloc_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	pdf_image_plane_data,@function
pdf_image_plane_data:                   # @pdf_image_plane_data
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp125:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp126:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp127:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp128:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp129:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp130:
	.cfi_def_cfa_offset 56
	subq	$872, %rsp              # imm = 0x368
.Ltmp131:
	.cfi_def_cfa_offset 928
.Ltmp132:
	.cfi_offset %rbx, -56
.Ltmp133:
	.cfi_offset %r12, -48
.Ltmp134:
	.cfi_offset %r13, -40
.Ltmp135:
	.cfi_offset %r14, -32
.Ltmp136:
	.cfi_offset %r15, -24
.Ltmp137:
	.cfi_offset %rbp, -16
	movl	%edx, 20(%rsp)          # 4-byte Spill
	movq	%rsi, %r14
	movq	%r14, 48(%rsp)          # 8-byte Spill
	cmpl	$0, 712(%rdi)
	jle	.LBB17_1
# BB#2:                                 # %for.body.lr.ph
	movq	%rcx, 8(%rsp)           # 8-byte Spill
	leaq	584(%rdi), %rax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movl	576(%rdi), %eax
	movq	%rdi, 96(%rsp)          # 8-byte Spill
	leaq	28(%r14), %rcx
	movq	%rcx, 40(%rsp)          # 8-byte Spill
	leaq	128(%rsp), %r13
	xorl	%ecx, %ecx
	movq	%rcx, 32(%rsp)          # 8-byte Spill
.LBB17_5:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_8 Depth 2
                                        #       Child Loop BB17_13 Depth 3
                                        #       Child Loop BB17_16 Depth 3
	movl	20(%rsp), %ecx          # 4-byte Reload
	cmpl	%ecx, %eax
	movl	%eax, %ebp
	cmovgl	%ecx, %ebp
	movl	%ebp, 68(%rsp)          # 4-byte Spill
	testl	%ebp, %ebp
	jle	.LBB17_3
# BB#6:                                 # %for.body.lr.ph.i
                                        #   in Loop: Header=BB17_5 Depth=1
	movq	96(%rsp), %rax          # 8-byte Reload
	movl	48(%rax), %ecx
	imull	568(%rax), %ecx
	movq	%rcx, 80(%rsp)          # 8-byte Spill
	leal	7(%rcx), %ecx
	shrl	$3, %ecx
	movl	%ecx, 76(%rsp)          # 4-byte Spill
	movl	44(%rax), %edx
	movq	%rdx, 120(%rsp)         # 8-byte Spill
	leal	(%rdx,%rdx,2), %eax
	movl	%eax, 64(%rsp)          # 4-byte Spill
	movq	32(%rsp), %rax          # 8-byte Reload
	shlq	$5, %rax
	movq	24(%rsp), %rcx          # 8-byte Reload
	leaq	16(%rcx,%rax), %rax
	movq	%rax, 112(%rsp)         # 8-byte Spill
	movl	%edx, %eax
	andl	$1, %eax
	movl	%eax, 60(%rsp)          # 4-byte Spill
	xorl	%ecx, %ecx
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB17_8:                               # %for.body.i
                                        #   Parent Loop BB17_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB17_13 Depth 3
                                        #       Child Loop BB17_16 Depth 3
	movq	120(%rsp), %rax         # 8-byte Reload
	cmpl	$2, %eax
	jl	.LBB17_21
# BB#9:                                 # %for.body.9.lr.ph.i
                                        #   in Loop: Header=BB17_8 Depth=2
	movl	$200, %eax
	xorl	%edx, %edx
	idivl	64(%rsp)                # 4-byte Folded Reload
	cmpl	$0, 60(%rsp)            # 4-byte Folded Reload
	movl	$0, %edi
	je	.LBB17_11
# BB#10:                                # %for.body.9.i.prol
                                        #   in Loop: Header=BB17_8 Depth=2
	movl	12(%r14), %edx
	imull	%ebx, %edx
	addq	(%r14), %rdx
	movq	%rdx, 336(%rsp)
	movl	$1, %edi
.LBB17_11:                              # %for.body.9.lr.ph.i.split
                                        #   in Loop: Header=BB17_8 Depth=2
	movq	120(%rsp), %rdx         # 8-byte Reload
	cmpl	$1, %edx
	je	.LBB17_14
# BB#12:                                # %for.body.9.lr.ph.i.split.split
                                        #   in Loop: Header=BB17_8 Depth=2
	movq	120(%rsp), %rdx         # 8-byte Reload
	subl	%edi, %edx
	leaq	344(%rsp), %rsi
	leaq	(%rsi,%rdi,8), %rsi
	shlq	$4, %rdi
	movq	40(%rsp), %rbp          # 8-byte Reload
	leaq	(%rdi,%rbp), %rdi
	.align	16, 0x90
.LBB17_13:                              # %for.body.9.i
                                        #   Parent Loop BB17_5 Depth=1
                                        #     Parent Loop BB17_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-16(%rdi), %ebp
	imull	%ebx, %ebp
	addq	-28(%rdi), %rbp
	movq	%rbp, -8(%rsi)
	movl	(%rdi), %ebp
	imull	%ebx, %ebp
	addq	-12(%rdi), %rbp
	movq	%rbp, (%rsi)
	addq	$16, %rsi
	addq	$32, %rdi
	addl	$-2, %edx
	jne	.LBB17_13
.LBB17_14:                              # %while.cond.i
                                        #   in Loop: Header=BB17_8 Depth=2
	movl	%ebx, 72(%rsp)          # 4-byte Spill
	cmpl	$0, 76(%rsp)            # 4-byte Folded Reload
	je	.LBB17_20
# BB#15:                                # %while.body.preheader.i
                                        #   in Loop: Header=BB17_8 Depth=2
	leal	(%rax,%rax,2), %ebx
	shll	$3, %eax
	leal	(%rax,%rax,2), %eax
	movl	%eax, 92(%rsp)          # 4-byte Spill
	movl	%ebx, %ecx
	movq	120(%rsp), %rax         # 8-byte Reload
	imull	%eax, %ecx
	movl	%ecx, 108(%rsp)         # 4-byte Spill
	xorl	%r14d, %r14d
	movl	76(%rsp), %ebp          # 4-byte Reload
	.align	16, 0x90
.LBB17_16:                              # %while.body.i
                                        #   Parent Loop BB17_5 Depth=1
                                        #     Parent Loop BB17_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	%ebx, %ebp
	movl	%ebx, %r15d
	movl	108(%rsp), %r12d        # 4-byte Reload
	jae	.LBB17_18
# BB#17:                                # %if.else.i
                                        #   in Loop: Header=BB17_16 Depth=3
	xorl	%edx, %edx
	movq	80(%rsp), %rax          # 8-byte Reload
	divl	92(%rsp)                # 4-byte Folded Reload
	movl	%edx, %r12d
	movq	120(%rsp), %rax         # 8-byte Reload
	imull	%eax, %r12d
	addl	$7, %r12d
	shrl	$3, %r12d
	movl	%ebp, %r15d
.LBB17_18:                              # %if.end.23.i
                                        #   in Loop: Header=BB17_16 Depth=3
	movq	96(%rsp), %rax          # 8-byte Reload
	movl	48(%rax), %r9d
	movq	%r13, %rdi
	leaq	336(%rsp), %rsi
	movl	%r14d, %edx
	movl	%r15d, %ecx
	movq	120(%rsp), %r8          # 8-byte Reload
	callq	image_flip_planes
	movq	112(%rsp), %rax         # 8-byte Reload
	movq	(%rax), %rdi
	movq	%r13, %rsi
	movl	%r12d, %edx
	leaq	868(%rsp), %rcx
	callq	sputs
	movl	%eax, %ecx
	testl	%ecx, %ecx
	movl	$0, %eax
	cmovsl	%eax, %r15d
	setns	%al
	subl	%r15d, %ebp
	je	.LBB17_20
# BB#19:                                # %if.end.23.i
                                        #   in Loop: Header=BB17_16 Depth=3
	addl	%r15d, %r14d
	testb	%al, %al
	jne	.LBB17_16
.LBB17_20:                              # %while.end.i
                                        #   in Loop: Header=BB17_8 Depth=2
	movq	48(%rsp), %r14          # 8-byte Reload
	movl	68(%rsp), %ebp          # 4-byte Reload
	movl	72(%rsp), %ebx          # 4-byte Reload
	jmp	.LBB17_22
	.align	16, 0x90
.LBB17_21:                              # %if.else.36.i
                                        #   in Loop: Header=BB17_8 Depth=2
	movq	112(%rsp), %rax         # 8-byte Reload
	movq	(%rax), %rdi
	movl	12(%r14), %esi
	imull	%ebx, %esi
	addq	(%r14), %rsi
	movl	76(%rsp), %edx          # 4-byte Reload
	leaq	868(%rsp), %rcx
	callq	sputs
	movl	%eax, %ecx
.LBB17_22:                              # %if.end.50.i
                                        #   in Loop: Header=BB17_8 Depth=2
	testl	%ecx, %ecx
	js	.LBB17_23
# BB#7:                                 # %for.cond.i
                                        #   in Loop: Header=BB17_8 Depth=2
	incl	%ebx
	cmpl	%ebp, %ebx
	jl	.LBB17_8
.LBB17_3:                               # %pdf_image_plane_data_alt.exit
                                        #   in Loop: Header=BB17_5 Depth=1
	movq	8(%rsp), %rax           # 8-byte Reload
	movl	%ebp, (%rax)
	movq	96(%rsp), %rax          # 8-byte Reload
	movl	576(%rax), %eax
	testl	%eax, %eax
	je	.LBB17_27
# BB#4:                                 # %for.cond
                                        #   in Loop: Header=BB17_5 Depth=1
	movq	32(%rsp), %rcx          # 8-byte Reload
	movq	%rcx, %rdx
	incq	%rdx
	movq	%rdx, 32(%rsp)          # 8-byte Spill
	movq	24(%rsp), %rcx          # 8-byte Reload
	movslq	128(%rcx), %rcx
	cmpq	%rcx, %rdx
	jl	.LBB17_5
# BB#24:                                # %for.end
	subl	%ebp, %eax
	movq	96(%rsp), %rbx          # 8-byte Reload
	movl	%eax, 576(%rbx)
	cmpl	$3, %ecx
	jl	.LBB17_26
# BB#25:                                # %if.then.4
	xorl	%esi, %esi
	movq	24(%rsp), %rdi          # 8-byte Reload
	callq	pdf_choose_compression
	movl	576(%rbx), %eax
	jmp	.LBB17_26
.LBB17_23:                              # %pdf_image_plane_data_alt.exit.thread
	movq	8(%rsp), %rax           # 8-byte Reload
	movl	%ebp, (%rax)
	movl	$-12, %eax
	jmp	.LBB17_28
.LBB17_1:                               # %for.end.thread
	movl	576(%rdi), %eax
	subl	(%rcx), %eax
	movl	%eax, 576(%rdi)
.LBB17_26:                              # %if.end.7
	testl	%eax, %eax
.LBB17_27:                              # %cleanup.10.loopexit
	sete	%al
	movzbl	%al, %eax
.LBB17_28:                              # %cleanup.10
	addq	$872, %rsp              # imm = 0x368
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end17:
	.size	pdf_image_plane_data, .Lfunc_end17-pdf_image_plane_data
	.cfi_endproc

	.align	16, 0x90
	.type	pdf_image_end_image_object,@function
pdf_image_end_image_object:             # @pdf_image_end_image_object
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%esi, %esi
	jmp	pdf_image_end_image_data # TAILCALL
.Lfunc_end18:
	.size	pdf_image_end_image_object, .Lfunc_end18-pdf_image_end_image_object
	.cfi_endproc

	.align	16, 0x90
	.type	pdf_image_end_image_data,@function
pdf_image_end_image_data:               # @pdf_image_end_image_data
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp138:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp139:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp140:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp141:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp142:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp143:
	.cfi_def_cfa_offset 56
	subq	$200, %rsp
.Ltmp144:
	.cfi_def_cfa_offset 256
.Ltmp145:
	.cfi_offset %rbx, -56
.Ltmp146:
	.cfi_offset %r12, -48
.Ltmp147:
	.cfi_offset %r13, -40
.Ltmp148:
	.cfi_offset %r14, -32
.Ltmp149:
	.cfi_offset %r15, -24
.Ltmp150:
	.cfi_offset %rbp, -16
	movl	%esi, %r12d
	movq	%rdi, %r13
	movq	%r13, 192(%rsp)
	movq	16(%r13), %r14
	movl	736(%r13), %eax
	movl	%eax, %ebp
	subl	576(%r13), %ebp
	movq	728(%r13), %rcx
	testq	%rcx, %rcx
	je	.LBB19_1
# BB#3:                                 # %if.end.8
	movl	%ebp, 80(%rcx)
	xorl	%ebx, %ebx
	testl	%ebp, %ebp
	jg	.LBB19_4
	jmp	.LBB19_15
.LBB19_1:                               # %if.else
	xorl	%ebx, %ebx
	testl	%ebp, %ebp
	jle	.LBB19_15
# BB#2:                                 # %if.end.8.thread
	leaq	776(%r13), %rsi
	cvtsi2sdl	%ebp, %xmm0
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm1, %xmm0
	movq	%r14, %rdi
	callq	pdf_put_image_matrix
.LBB19_4:                               # %if.then.11
	leaq	584(%r13), %r15
	movl	568(%r13), %ecx
	movl	572(%r13), %r8d
	movq	%r14, %rdi
	movq	%r15, %rsi
	movl	%ebp, %edx
	callq	pdf_complete_image_data
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB19_16
# BB#5:                                 # %if.end.16
	movq	%r14, %rdi
	movq	%r15, %rsi
	movl	%ebp, %edx
	callq	pdf_end_image_binary
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB19_16
# BB#6:                                 # %if.end.22
	cmpl	$2, 128(%r15)
	jne	.LBB19_13
# BB#7:                                 # %if.then.26
	leaq	(%rsp), %rbx
	movl	$192, %edx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	memcpy
	leaq	32(%r15), %rdi
	movupd	32(%r15), %xmm0
	movupd	48(%r15), %xmm1
	movapd	%xmm1, 16(%rsp)
	movapd	%xmm0, (%rsp)
	movq	184(%r15), %rax
	movq	%rax, 144(%rsp)
	movl	$1, 128(%rsp)
	xorl	%esi, %esi
	movl	$32, %edx
	callq	memset
	decl	128(%r15)
	movq	$0, 184(%r15)
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movl	%ebp, %edx
	callq	pdf_end_image_binary
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB19_16
# BB#8:                                 # %if.end.47
	addq	$776, %r13              # imm = 0x308
	leaq	(%rsp), %rsi
	movq	%r14, %rdi
	callq	pdf_end_write_image
	movl	%eax, %ebx
	cmpl	$1, %ebx
	je	.LBB19_12
# BB#9:                                 # %if.end.47
	testl	%ebx, %ebx
	jne	.LBB19_11
# BB#10:                                # %sw.bb.2.i
	movq	144(%rsp), %rdi
	cvtsi2sdl	80(%rdi), %xmm0
	cvtsi2sdl	76(%rdi), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, 30640(%r14)
	callq	pdf_resource_id
	movq	%rax, 30592(%r14)
	movq	16(%r13), %rax
	movq	%rax, 30628(%r14)
	movupd	(%r13), %xmm0
	movupd	%xmm0, 30612(%r14)
	jmp	.LBB19_12
.LBB19_13:                              # %if.else.58
	movq	32(%r13), %rcx
	addq	$776, %r13              # imm = 0x308
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%r13, %rdx
	movl	%r12d, %r8d
	jmp	.LBB19_14
.LBB19_11:                              # %pdf_end_and_do_image.exit
	js	.LBB19_16
.LBB19_12:                              # %cleanup
	movq	192(%rsp), %rax
	movq	32(%rax), %rcx
	movl	$2, %r8d
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%r13, %rdx
.LBB19_14:                              # %if.end.63
	callq	pdf_end_and_do_image
	movl	%eax, %ebx
	decl	128(%r15)
.LBB19_15:                              # %if.end.67
	leaq	192(%rsp), %rdi
	callq	gx_image_free_enum
.LBB19_16:                              # %cleanup.68
	movl	%ebx, %eax
	addq	$200, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end19:
	.size	pdf_image_end_image_data, .Lfunc_end19-pdf_image_end_image_data
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI20_0:
	.quad	4607182418800017408     # double 1.000000e+00
	.quad	4607182418800017408     # double 1.000000e+00
	.text
	.align	16, 0x90
	.type	pdf_end_and_do_image,@function
pdf_end_and_do_image:                   # @pdf_end_and_do_image
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp151:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp152:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp153:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp154:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp155:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp156:
	.cfi_def_cfa_offset 56
	subq	$1928, %rsp             # imm = 0x788
.Ltmp157:
	.cfi_def_cfa_offset 1984
.Ltmp158:
	.cfi_offset %rbx, -56
.Ltmp159:
	.cfi_offset %r12, -48
.Ltmp160:
	.cfi_offset %r13, -40
.Ltmp161:
	.cfi_offset %r14, -32
.Ltmp162:
	.cfi_offset %r15, -24
.Ltmp163:
	.cfi_offset %rbp, -16
	movl	%r8d, %ebx
	movq	%rcx, %r12
	movq	%rdx, %r14
	movq	%rsi, %rbp
	movq	%rdi, %r13
	callq	pdf_end_write_image
	xorl	%r15d, %r15d
	cmpl	$1, %eax
	je	.LBB20_18
# BB#1:                                 # %entry
	testl	%eax, %eax
	jne	.LBB20_19
# BB#2:                                 # %sw.bb.2
	movq	144(%rbp), %rbp
	testl	%ebx, %ebx
	je	.LBB20_11
# BB#3:                                 # %sw.bb.2
	cmpl	$2, %ebx
	jne	.LBB20_4
# BB#12:                                # %if.then.25
	leaq	304(%rsp), %r15
	xorl	%esi, %esi
	movl	$1616, %edx             # imm = 0x650
	movq	%r15, %rdi
	callq	memset
	movups	(%r14), %xmm0
	movups	%xmm0, 436(%rsp)
	movl	16(%r14), %eax
	movl	%eax, 452(%rsp)
	movl	20(%r14), %eax
	movl	%eax, 456(%rsp)
	leaq	56(%rsp), %rbx
	xorl	%esi, %esi
	movl	$248, %edx
	movq	%rbx, %rdi
	callq	memset
	movq	%r15, 88(%rsp)
	movl	$1, 144(%rsp)
	movl	$1, 148(%rsp)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 160(%rsp)
	movapd	.LCPI20_0(%rip), %xmm0  # xmm0 = [1.000000e+00,1.000000e+00]
	movupd	%xmm0, 176(%rsp)
	movl	$1073741824, 192(%rsp)  # imm = 0x40000000
	movl	$1073741824, 196(%rsp)  # imm = 0x40000000
	movl	$1, %esi
	movq	%r13, %rdi
	movq	%rbx, %rdx
	movl	%r12d, %ecx
	callq	*1664(%r13)
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB20_18
# BB#13:                                # %if.end.35.i
	movq	5848(%r13), %rbx
	movq	%rbp, %rdi
	callq	pdf_resource_id
	movl	$.L.str.26, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	callq	pprintld1
	movq	30448(%r13), %rsi
	movq	30480(%r13), %rbx
	movl	$.L.str.3, %edx
	movq	%r13, %rdi
	movq	%rbp, %rcx
	callq	pdf_add_resource
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB20_18
# BB#14:                                # %if.end.43.i
	leaq	56(%rsp), %rdx
	movl	$2, %esi
	movq	%r13, %rdi
	movl	%r12d, %ecx
	callq	*1664(%r13)
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB20_18
# BB#15:                                # %if.end.51.i
	leaq	56(%rsp), %rdx
	movl	$3, %esi
	movq	%r13, %rdi
	movl	%r12d, %ecx
	callq	*1664(%r13)
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB20_18
# BB#16:                                # %if.end.58.i
	movq	5848(%r13), %rdi
	movl	$.L.str.27, %esi
	callq	stream_puts
	leaq	32(%rsp), %rsi
	movq	%r13, %rdi
	callq	pdf_cs_Pattern_colored
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB20_18
# BB#17:                                # %if.then.61.i
	leaq	32(%rsp), %rdi
	movq	%r13, %rsi
	callq	cos_value_write
	movq	5848(%r13), %rbp
	movq	%rbx, %rdi
	callq	pdf_resource_id
	movl	$.L.str.28, %esi
	movq	%rbp, %rdi
	movq	%rax, %rdx
	callq	pprintld1
	movups	30612(%r13), %xmm0
	movaps	%xmm0, (%rsp)
	movl	16(%r14), %eax
	movl	%eax, 16(%rsp)
	movl	20(%r14), %eax
	movl	%eax, 20(%rsp)
	movsd	30640(%r13), %xmm0      # xmm0 = mem[0],zero
	movq	30592(%r13), %rcx
	leaq	(%rsp), %rsi
	movl	$1, %edx
	movq	%r13, %rdi
	callq	pdf_do_image_by_id
	movl	%eax, %r15d
	movq	5848(%r13), %rdi
	movl	$.L.str.29, %esi
	callq	stream_puts
	jmp	.LBB20_18
.LBB20_11:                              # %if.then.18
	cvtsi2sdl	80(%rbp), %xmm0
	cvtsi2sdl	76(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, 30640(%r13)
	movq	%rbp, %rdi
	callq	pdf_resource_id
	movq	%rax, 30592(%r13)
	movq	16(%r14), %rax
	movq	%rax, 30628(%r13)
	movupd	(%r14), %xmm0
	movupd	%xmm0, 30612(%r13)
	jmp	.LBB20_18
.LBB20_4:                               # %sw.bb.2
	cmpl	$1, %ebx
	jne	.LBB20_18
# BB#5:                                 # %if.then
	movq	30592(%r13), %rdx
	testq	%rdx, %rdx
	je	.LBB20_9
# BB#6:                                 # %if.then.4
	leaq	304(%rsp), %rdi
	movl	$.L.str.23, %esi
	xorl	%eax, %eax
	callq	gs_sprintf
	movq	64(%rbp), %rdi
	movl	$.L.str.24, %esi
	cmpl	$0, 30600(%r13)
	jne	.LBB20_8
# BB#7:                                 # %select.mid
	movl	$.L.str.25, %esi
.LBB20_8:                               # %select.end
	leaq	304(%rsp), %rdx
	callq	cos_dict_put_string_copy
	testl	%eax, %eax
	js	.LBB20_19
.LBB20_9:                               # %if.end.11
	cmpl	$0, 30604(%r13)
	jne	.LBB20_18
# BB#10:                                # %if.else
	movl	$1, %ecx
	movq	%r13, %rdi
	movq	%rbp, %rsi
	movq	%r14, %rdx
	callq	pdf_do_image
	movl	%eax, %r15d
.LBB20_18:                              # %sw.epilog
	movl	%r15d, %eax
.LBB20_19:                              # %cleanup.30
	addq	$1928, %rsp             # imm = 0x788
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end20:
	.size	pdf_end_and_do_image, .Lfunc_end20-pdf_end_and_do_image
	.cfi_endproc

	.align	16, 0x90
	.type	pdf_image_end_image,@function
pdf_image_end_image:                    # @pdf_image_end_image
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$1, %esi
	jmp	pdf_image_end_image_data # TAILCALL
.Lfunc_end21:
	.size	pdf_image_end_image, .Lfunc_end21-pdf_image_end_image
	.cfi_endproc

	.align	16, 0x90
	.type	pdf_image_end_image_object2,@function
pdf_image_end_image_object2:            # @pdf_image_end_image_object2
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$2, %esi
	jmp	pdf_image_end_image_data # TAILCALL
.Lfunc_end22:
	.size	pdf_image_end_image_object2, .Lfunc_end22-pdf_image_end_image_object2
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"q %g %g %g %g %g %g cm\n"
	.size	.L.str, 24

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"pdf_pattern(Resources)"
	.size	.L.str.1, 23

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"/Type"
	.size	.L.str.2, 6

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"/XObject"
	.size	.L.str.3, 9

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"/Subtype"
	.size	.L.str.4, 9

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"/Form"
	.size	.L.str.5, 6

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"/FormType"
	.size	.L.str.6, 10

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"1"
	.size	.L.str.7, 2

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"/Resources"
	.size	.L.str.8, 11

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"/BBox"
	.size	.L.str.9, 6

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"/Matrix"
	.size	.L.str.10, 8

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"%g 0 0 %g 0 0 cm\n"
	.size	.L.str.11, 18

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"/R%ld Do Q\n"
	.size	.L.str.12, 12

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"/Pattern"
	.size	.L.str.13, 9

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"pdf_begin_typed_image(image)"
	.size	.L.str.14, 29

	.type	st_pdf_image_enum,@object # @st_pdf_image_enum
	.section	.rodata,"a",@progbits
	.align	8
st_pdf_image_enum:
	.long	800                     # 0x320
	.zero	4
	.quad	.L.str.22
	.quad	0
	.quad	0
	.quad	pdf_image_enum_enum_ptrs
	.quad	pdf_image_enum_reloc_ptrs
	.quad	0
	.quad	0
	.size	st_pdf_image_enum, 64

	.type	.L.str.15,@object       # @.str.15
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.15:
	.asciz	"pdf_begin_image"
	.size	.L.str.15, 16

	.type	pdf_image_object_enum_procs,@object # @pdf_image_object_enum_procs
	.section	.rodata,"a",@progbits
	.align	8
pdf_image_object_enum_procs:
	.quad	pdf_image_plane_data
	.quad	pdf_image_end_image_object
	.quad	0
	.quad	0
	.size	pdf_image_object_enum_procs, 32

	.type	pdf_image_enum_procs,@object # @pdf_image_enum_procs
	.align	8
pdf_image_enum_procs:
	.quad	pdf_image_plane_data
	.quad	pdf_image_end_image
	.quad	0
	.quad	0
	.size	pdf_image_enum_procs, 32

	.type	pdf_image_object_enum_procs2,@object # @pdf_image_object_enum_procs2
	.align	8
pdf_image_object_enum_procs2:
	.quad	pdf_image_plane_data
	.quad	pdf_image_end_image_object2
	.quad	0
	.quad	0
	.size	pdf_image_object_enum_procs2, 32

	.type	.L.str.16,@object       # @.str.16
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.16:
	.asciz	"compressed image stream"
	.size	.L.str.16, 24

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"pdf_begin_typed_image_impl"
	.size	.L.str.17, 27

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"compressed image cos_stream"
	.size	.L.str.18, 28

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"pdf_image3x_make_mcde"
	.size	.L.str.19, 22

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"/Matte"
	.size	.L.str.20, 7

	.type	pdf_image_cvd_enum_procs,@object # @pdf_image_cvd_enum_procs
	.section	.rodata,"a",@progbits
	.align	8
pdf_image_cvd_enum_procs:
	.quad	gx_image1_plane_data
	.quad	pdf_image_end_image_cvd
	.quad	gx_image1_flush
	.quad	0
	.size	pdf_image_cvd_enum_procs, 32

	.type	.L.str.21,@object       # @.str.21
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.21:
	.asciz	"pdf_image_end_image_cvd"
	.size	.L.str.21, 24

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"pdf_image_enum"
	.size	.L.str.22, 15

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"%ld 0 R"
	.size	.L.str.23, 8

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"/SMask"
	.size	.L.str.24, 7

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"/Mask"
	.size	.L.str.25, 6

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"/R%ld Do\n"
	.size	.L.str.26, 10

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"q "
	.size	.L.str.27, 3

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	" cs /R%ld scn "
	.size	.L.str.28, 15

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"Q\n"
	.size	.L.str.29, 3

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"Unsupported ProcessColorModel."
	.size	.L.str.30, 31

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"Unsupported ProcessColorModel"
	.size	.L.str.31, 30

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"DeviceCMYK"
	.size	.L.str.32, 11

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"DeviceRGB"
	.size	.L.str.33, 10

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"DeviceGray"
	.size	.L.str.34, 11

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"ColorConversionStrategy isn't compatible to ProcessColorModel."
	.size	.L.str.35, 63

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"psdf_setup_image_filters"
	.size	.L.str.36, 25


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
