	.text
	.file	"gdevpdfk.bc"
	.globl	pdf_put_lab_color_space
	.align	16, 0x90
	.type	pdf_put_lab_color_space,@function
pdf_put_lab_color_space:                # @pdf_put_lab_color_space
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp2:
	.cfi_def_cfa_offset 32
	subq	$32, %rsp
.Ltmp3:
	.cfi_def_cfa_offset 64
.Ltmp4:
	.cfi_offset %rbx, -32
.Ltmp5:
	.cfi_offset %r14, -24
.Ltmp6:
	.cfi_offset %r15, -16
	movq	%rdx, %r15
	movq	%rsi, %r14
	movq	%rdi, %rbx
	leaq	8(%rsp), %rdi
	movl	$.L.str, %esi
	callq	cos_c_string_value
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	cos_array_add
	testl	%eax, %eax
	js	.LBB0_2
# BB#1:                                 # %if.then
	addq	$8, %r15
	movl	$2, %edx
	xorl	%ecx, %ecx
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	pdf_cie_add_ranges
.LBB0_2:                                # %if.end
	addq	$32, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end0:
	.size	pdf_put_lab_color_space, .Lfunc_end0-pdf_put_lab_color_space
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI1_0:
	.long	1065353216              # float 1
.LCPI1_2:
	.long	0                       # float 0
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_1:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	pdf_cie_add_ranges,@function
pdf_cie_add_ranges:                     # @pdf_cie_add_ranges
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
	subq	$24, %rsp
.Ltmp13:
	.cfi_def_cfa_offset 80
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
	movl	%ecx, %r15d
	movl	%edx, %r13d
	movq	%rsi, %r12
	movq	%rdi, 8(%rsp)           # 8-byte Spill
	movq	32(%rdi), %rdi
	movl	$.L.str.1, %esi
	callq	cos_array_alloc
	movq	%rax, %rbx
	movl	$-25, %ebp
	testq	%rbx, %rbx
	je	.LBB1_14
# BB#1:                                 # %for.cond.preheader
	testl	%r13d, %r13d
	jle	.LBB1_12
# BB#2:                                 # %for.body.lr.ph
	movslq	%r13d, %r13
	xorl	%r14d, %r14d
	.align	16, 0x90
.LBB1_4:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	testl	%r15d, %r15d
	movss	(%r12,%r14,8), %xmm0    # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm2
	movss	4(%r12,%r14,8), %xmm1   # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm3
	je	.LBB1_5
# BB#6:                                 # %if.then.7
                                        #   in Loop: Header=BB1_4 Depth=1
	movsd	%xmm3, 16(%rsp)         # 8-byte Spill
	xorpd	%xmm3, %xmm3
	ucomiss	%xmm0, %xmm3
	xorps	%xmm0, %xmm0
	ja	.LBB1_8
# BB#7:                                 # %if.then.7
                                        #   in Loop: Header=BB1_4 Depth=1
	movaps	%xmm2, %xmm0
.LBB1_8:                                # %if.then.7
                                        #   in Loop: Header=BB1_4 Depth=1
	ucomiss	.LCPI1_0(%rip), %xmm1
	jbe	.LBB1_10
# BB#9:                                 # %if.then.14
                                        #   in Loop: Header=BB1_4 Depth=1
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	%xmm1, 16(%rsp)         # 8-byte Spill
	jmp	.LBB1_10
	.align	16, 0x90
.LBB1_5:                                #   in Loop: Header=BB1_4 Depth=1
	movsd	%xmm3, 16(%rsp)         # 8-byte Spill
	movaps	%xmm2, %xmm0
.LBB1_10:                               # %if.end.16
                                        #   in Loop: Header=BB1_4 Depth=1
	movq	%rbx, %rdi
	callq	cos_array_add_real
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_13
# BB#11:                                # %cleanup
                                        #   in Loop: Header=BB1_4 Depth=1
	movq	%rbx, %rdi
	movsd	16(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	cos_array_add_real
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_13
# BB#3:                                 # %for.cond
                                        #   in Loop: Header=BB1_4 Depth=1
	incq	%r14
	cmpq	%r13, %r14
	jl	.LBB1_4
.LBB1_12:                               # %if.end.30
	movl	$.L.str.2, %esi
	movq	8(%rsp), %rdi           # 8-byte Reload
	movq	%rbx, %rdx
	callq	cos_dict_put_c_key_object
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jns	.LBB1_14
.LBB1_13:                               # %if.then.33
	movl	$.L.str.1, %esi
	movq	%rbx, %rdi
	callq	cos_free
.LBB1_14:                               # %cleanup.36
	movl	%ebp, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	pdf_cie_add_ranges, .Lfunc_end1-pdf_cie_add_ranges
	.cfi_endproc

	.globl	pdf_iccbased_color_space
	.align	16, 0x90
	.type	pdf_iccbased_color_space,@function
pdf_iccbased_color_space:               # @pdf_iccbased_color_space
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp20:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp21:
	.cfi_def_cfa_offset 24
	subq	$24, %rsp
.Ltmp22:
	.cfi_def_cfa_offset 48
.Ltmp23:
	.cfi_offset %rbx, -24
.Ltmp24:
	.cfi_offset %r14, -16
	movq	%rdx, %rbx
	movq	40(%rbx), %r8
	movq	64(%rbx), %rax
	movzbl	(%rax), %edx
	addq	$20, %rax
	movq	$0, (%rsp)
	leaq	16(%rsp), %r9
	movq	%rcx, %rsi
	movq	%rax, %rcx
	callq	pdf_make_iccbased
	testl	%eax, %eax
	js	.LBB2_3
# BB#1:                                 # %if.end
	movq	16(%rsp), %r14
	movq	64(%rbx), %rax
	movq	256(%rax), %rsi
	movl	220(%rax), %edx
	movq	%r14, %rdi
	callq	cos_stream_add_bytes
	testl	%eax, %eax
	js	.LBB2_3
# BB#2:                                 # %if.then.8
	movq	32(%r14), %rbx
	movq	%rbx, %rdi
	callq	pdf_obj_ref
	movq	%rax, 8(%r14)
	movl	$30, %edx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	cos_write_object
.LBB2_3:                                # %cleanup
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end2:
	.size	pdf_iccbased_color_space, .Lfunc_end2-pdf_iccbased_color_space
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI3_0:
	.long	1065353216              # float 1
	.text
	.align	16, 0x90
	.type	pdf_make_iccbased,@function
pdf_make_iccbased:                      # @pdf_make_iccbased
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp25:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp26:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp27:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp28:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp29:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp30:
	.cfi_def_cfa_offset 56
	subq	$88, %rsp
.Ltmp31:
	.cfi_def_cfa_offset 144
.Ltmp32:
	.cfi_offset %rbx, -56
.Ltmp33:
	.cfi_offset %r12, -48
.Ltmp34:
	.cfi_offset %r13, -40
.Ltmp35:
	.cfi_offset %r14, -32
.Ltmp36:
	.cfi_offset %r15, -24
.Ltmp37:
	.cfi_offset %rbp, -16
	movq	%r9, 32(%rsp)           # 8-byte Spill
	movq	%r8, 40(%rsp)           # 8-byte Spill
	movq	%rcx, %rbx
	movl	%edx, %ebp
	movq	%rsi, 56(%rsp)          # 8-byte Spill
	movq	%rdi, 48(%rsp)          # 8-byte Spill
	xorl	%r13d, %r13d
	movl	$1, %r12d
	cmpl	$0, 30760(%rdi)
	je	.LBB3_11
# BB#1:                                 # %if.then
	movq	144(%rsp), %rax
	testq	%rax, %rax
	je	.LBB3_3
# BB#2:                                 # %if.then.2
	movq	$0, (%rax)
.LBB3_3:                                # %for.cond.preheader
	testl	%ebp, %ebp
	jle	.LBB3_11
# BB#4:                                 # %for.body.lr.ph
	movslq	%ebp, %rcx
	movl	$1, %r12d
	xorl	%edx, %edx
	xorps	%xmm0, %xmm0
	movss	.LCPI3_0(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	xorl	%esi, %esi
	xorl	%r13d, %r13d
	movl	$-15, %r15d
	.align	16, 0x90
.LBB3_5:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movss	(%rbx,%rsi,8), %xmm2    # xmm2 = mem[0],zero,zero,zero
	ucomiss	%xmm2, %xmm0
	ja	.LBB3_7
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB3_5 Depth=1
	movss	4(%rbx,%rsi,8), %xmm3   # xmm3 = mem[0],zero,zero,zero
	ucomiss	.LCPI3_0(%rip), %xmm3
	ja	.LBB3_7
# BB#9:                                 # %if.else
                                        #   in Loop: Header=BB3_5 Depth=1
	ucomiss	%xmm3, %xmm1
	cmoval	%edx, %r12d
	ucomiss	%xmm0, %xmm2
	cmoval	%edx, %r12d
	jmp	.LBB3_10
	.align	16, 0x90
.LBB3_7:                                # %if.then.12
                                        #   in Loop: Header=BB3_5 Depth=1
	testq	%rax, %rax
	je	.LBB3_23
# BB#8:                                 # %if.end.16
                                        #   in Loop: Header=BB3_5 Depth=1
	movq	%rbx, (%rax)
	movl	$1, %r13d
.LBB3_10:                               # %for.inc
                                        #   in Loop: Header=BB3_5 Depth=1
	incq	%rsi
	cmpq	%rcx, %rsi
	jl	.LBB3_5
.LBB3_11:                               # %if.end.26
	leaq	64(%rsp), %rdi
	movl	$.L.str.3, %esi
	callq	cos_c_string_value
	movq	56(%rsp), %rdi          # 8-byte Reload
	movq	%rax, %rsi
	callq	cos_array_add
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB3_23
# BB#12:                                # %if.end.31
	movl	$.L.str.4, %esi
	movq	48(%rsp), %rdi          # 8-byte Reload
	callq	cos_stream_alloc
	movq	%rax, %r14
	movl	$-25, %r15d
	testq	%r14, %r14
	je	.LBB3_23
# BB#13:                                # %if.end.36
	movq	%r14, %rdi
	callq	cos_stream_dict
	movl	$.L.str.5, %esi
	movq	%rax, %rdi
	movl	%ebp, %edx
	callq	cos_dict_put_c_key_int
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB3_22
# BB#14:                                # %if.end.42
	orl	%r12d, %r13d
	jne	.LBB3_16
# BB#15:                                # %if.then.45
	movq	%r14, %rdi
	callq	cos_stream_dict
	movl	$1, %ecx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movl	%ebp, %edx
	callq	pdf_cie_add_ranges
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB3_22
.LBB3_16:                               # %if.end.52
	cmpq	$0, 40(%rsp)            # 8-byte Folded Reload
	je	.LBB3_20
# BB#17:                                # %if.then.55
	movq	40(%rsp), %rdi          # 8-byte Reload
	callq	gs_color_space_get_index
	cmpl	$3, %eax
	jb	.LBB3_20
# BB#18:                                # %sw.default
	movl	$1, 16(%rsp)
	movl	$0, 8(%rsp)
	movq	$0, (%rsp)
	leaq	64(%rsp), %rsi
	xorl	%edx, %edx
	movl	$pdf_color_space_names, %r8d
	xorl	%r9d, %r9d
	movq	48(%rsp), %rdi          # 8-byte Reload
	movq	40(%rsp), %rcx          # 8-byte Reload
	callq	pdf_color_space_named
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB3_22
# BB#19:                                # %lor.lhs.false.60
	movq	%r14, %rdi
	callq	cos_stream_dict
	leaq	64(%rsp), %rdx
	movl	$.L.str.6, %esi
	movq	%rax, %rdi
	callq	cos_dict_put_c_key
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB3_22
.LBB3_20:                               # %if.end.67
	movq	56(%rsp), %rdi          # 8-byte Reload
	movq	%r14, %rsi
	callq	cos_array_add_object
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB3_22
# BB#21:                                # %if.end.72
	movq	32(%rsp), %rax          # 8-byte Reload
	movq	%r14, (%rax)
	jmp	.LBB3_23
.LBB3_22:                               # %if.then.78
	movl	$.L.str.4, %esi
	movq	%r14, %rdi
	callq	cos_free
.LBB3_23:                               # %cleanup.81
	movl	%r15d, %eax
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	pdf_make_iccbased, .Lfunc_end3-pdf_make_iccbased
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4608533498688228557     # double 1.3
.LCPI4_1:
	.quad	4607182418800017408     # double 1
.LCPI4_2:
	.quad	4657715973212602368     # double 2500
.LCPI4_5:
	.quad	4679240012837945344     # double 65536
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI4_3:
	.long	1064752592              # float 0.964200019
.LCPI4_4:
	.long	1062415525              # float 0.824899971
	.text
	.globl	pdf_convert_cie_space
	.align	16, 0x90
	.type	pdf_convert_cie_space,@function
pdf_convert_cie_space:                  # @pdf_convert_cie_space
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp38:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp39:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp40:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp41:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp42:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp43:
	.cfi_def_cfa_offset 56
	subq	$1064, %rsp             # imm = 0x428
.Ltmp44:
	.cfi_def_cfa_offset 1120
.Ltmp45:
	.cfi_offset %rbx, -56
.Ltmp46:
	.cfi_offset %r12, -48
.Ltmp47:
	.cfi_offset %r13, -40
.Ltmp48:
	.cfi_offset %r14, -32
.Ltmp49:
	.cfi_offset %r15, -24
.Ltmp50:
	.cfi_offset %rbp, -16
	movq	%r9, %r14
	movq	%rcx, %rbx
	movq	%rsi, %r15
	movl	$-15, %ebp
	movsd	.LCPI4_0(%rip), %xmm0   # xmm0 = mem[0],zero
	ucomisd	9368(%rdi), %xmm0
	ja	.LBB4_24
# BB#1:                                 # %cond.false
	movq	%r8, 40(%rsp)           # 8-byte Spill
	movq	1136(%rsp), %r12
	movq	%rdi, %rbp
	movq	%rbp, 32(%rsp)          # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rdx, 24(%rsp)          # 8-byte Spill
	callq	gs_color_space_num_components
	movl	%eax, %r13d
	movq	24(%rbp), %rdi
	leaq	1056(%rsp), %rsi
	movl	%r13d, %edx
	callq	pdf_cspace_init_Device
	movq	1056(%rsp), %r8
	movq	%r12, (%rsp)
	leaq	1048(%rsp), %r9
	movq	%rbp, %rdi
	movq	%r15, %rsi
	movl	%r13d, %edx
	movq	%r14, %rcx
	callq	pdf_make_iccbased
	movl	%eax, %ebp
	movq	1056(%rsp), %rdi
	movl	$.L.str.8, %esi
	callq	rc_decrement_cs
	testl	%ebp, %ebp
	js	.LBB4_24
# BB#2:                                 # %if.end.i
	movl	1120(%rsp), %r14d
	leaq	912(%rsp), %rbp
	xorl	%esi, %esi
	movl	$128, %edx
	movq	%rbp, %rdi
	callq	memset
	movl	$pdf_convert_cie_to_iccbased.header_data, %esi
	movl	$68, %edx
	movq	%rbp, %rdi
	callq	memcpy
	leaq	928(%rsp), %rdi
	movl	$4, %edx
	movq	%rbx, %rsi
	callq	memcpy
	leaq	816(%rsp), %rbx
	xorl	%esi, %esi
	movl	$96, %edx
	movq	%rbx, %rdi
	callq	memset
	movl	$pdf_convert_cie_to_iccbased.desc_data, %esi
	movl	$18, %edx
	movq	%rbx, %rdi
	callq	memcpy
	movq	$.L.str.9, 160(%rsp)
	movq	%rbx, 168(%rsp)
	movl	$96, 176(%rsp)
	movl	$96, 180(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 200(%rsp)
	leaq	784(%rsp), %rbx
	movl	$.L.str.18, %esi
	movl	$8, %edx
	movq	%rbx, %rdi
	callq	memcpy
	leaq	792(%rsp), %rsi
	movb	$0, 792(%rsp)
	movb	$0, 793(%rsp)
	movb	$-10, 794(%rsp)
	movb	$-43, 795(%rsp)
	movb	$0, 796(%rsp)
	movb	$1, 797(%rsp)
	movb	$0, 798(%rsp)
	movb	$0, 799(%rsp)
	movb	$0, 800(%rsp)
	movb	$0, 801(%rsp)
	movb	$-45, 802(%rsp)
	movb	$44, 803(%rsp)
	movq	$.L.str.10, 208(%rsp)
	movq	%rbx, 216(%rsp)
	movl	$20, 224(%rsp)
	movl	$20, 228(%rsp)
	movq	$0, 232(%rsp)
	movq	$0, 248(%rsp)
	leaq	980(%rsp), %rdi
	movl	$12, %edx
	callq	memcpy
	movl	$pdf_convert_cie_to_iccbased.cprt_data, %eax
	movd	%rax, %xmm0
	movl	$.L.str.11, %eax
	movd	%rax, %xmm1
	punpcklqdq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0]
	movdqa	%xmm1, 256(%rsp)
	movl	$13, 272(%rsp)
	movl	$13, 276(%rsp)
	movq	$0, 280(%rsp)
	movq	$0, 296(%rsp)
	leal	-1(%r14), %eax
	cmpl	$1, %eax
	ja	.LBB4_7
# BB#3:                                 # %if.end.i
	movq	1128(%rsp), %r15
	testq	%r15, %r15
	je	.LBB4_7
# BB#4:                                 # %if.then.25.i
	leaq	700(%rsp), %rbx
	movl	$.L.str.19, %esi
	movl	$8, %edx
	movq	%rbx, %rdi
	callq	memcpy
	movb	$0, 708(%rsp)
	movb	$0, 709(%rsp)
	movb	$2, 710(%rsp)
	movb	$0, 711(%rsp)
	movq	$.L.str.12, 304(%rsp)
	movq	%rbx, 312(%rsp)
	movl	$12, 324(%rsp)
	movq	$0, 344(%rsp)
	movl	$1036, 320(%rsp)        # imm = 0x40C
	cmpl	$2, %r14d
	movl	$write_trc_abc, %eax
	movl	$write_trc_lmn, %ebp
	cmoveq	%rax, %rbp
	movq	%rbp, 328(%rsp)
	movq	40(%rsp), %rbx          # 8-byte Reload
	movq	%rbx, 336(%rsp)
	leaq	688(%rsp), %r14
	movl	$.L.str.19, %esi
	movl	$8, %edx
	movq	%r14, %rdi
	callq	memcpy
	movb	$0, 696(%rsp)
	movb	$0, 697(%rsp)
	movb	$2, 698(%rsp)
	movb	$0, 699(%rsp)
	movq	$.L.str.13, 352(%rsp)
	movq	%r14, 360(%rsp)
	movl	$12, 372(%rsp)
	movq	$0, 392(%rsp)
	movl	$1036, 368(%rsp)        # imm = 0x40C
	movq	%rbp, 376(%rsp)
	movq	%rbx, 384(%rsp)
	leaq	676(%rsp), %r14
	movl	$.L.str.19, %esi
	movl	$8, %edx
	movq	%r14, %rdi
	callq	memcpy
	movb	$0, 684(%rsp)
	movb	$0, 685(%rsp)
	movb	$2, 686(%rsp)
	movb	$0, 687(%rsp)
	movq	$.L.str.14, 400(%rsp)
	movq	%r14, 408(%rsp)
	movl	$12, 420(%rsp)
	movq	$0, 440(%rsp)
	movl	$1036, 416(%rsp)        # imm = 0x40C
	movq	%rbp, 424(%rsp)
	movq	%rbx, 432(%rsp)
	movq	1136(%rsp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.LBB4_6
# BB#5:                                 # %if.then.32.i
	movq	%rax, 344(%rsp)
	leaq	8(%rax), %rcx
	movq	%rcx, 392(%rsp)
	addq	$16, %rax
	movq	%rax, 440(%rsp)
.LBB4_6:                                # %if.end.37.i
	movss	(%r15), %xmm0           # xmm0 = mem[0],zero,zero,zero
	mulss	.LCPI4_3(%rip), %xmm0
	divss	104(%rbx), %xmm0
	movss	%xmm0, 12(%rsp)         # 4-byte Spill
	movss	4(%r15), %xmm0          # xmm0 = mem[0],zero,zero,zero
	divss	108(%rbx), %xmm0
	movss	%xmm0, 16(%rsp)         # 4-byte Spill
	movss	8(%r15), %xmm0          # xmm0 = mem[0],zero,zero,zero
	mulss	.LCPI4_4(%rip), %xmm0
	divss	112(%rbx), %xmm0
	movss	%xmm0, 24(%rsp)         # 4-byte Spill
	leaq	656(%rsp), %rbp
	movl	$.L.str.18, %esi
	movl	$8, %edx
	movq	%rbp, %rdi
	callq	memcpy
	movss	12(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI4_5(%rip), %xmm1   # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, %ecx
	shrl	$24, %ecx
	movb	%cl, 664(%rsp)
	movl	%eax, %ecx
	shrl	$16, %ecx
	movb	%cl, 665(%rsp)
	movb	%ah, 666(%rsp)  # NOREX
	movb	%al, 667(%rsp)
	movss	16(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, %ecx
	shrl	$24, %ecx
	movb	%cl, 668(%rsp)
	movl	%eax, %ecx
	shrl	$16, %ecx
	movb	%cl, 669(%rsp)
	movb	%ah, 670(%rsp)  # NOREX
	movb	%al, 671(%rsp)
	movss	24(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, %ecx
	shrl	$24, %ecx
	movb	%cl, 672(%rsp)
	movl	%eax, %ecx
	shrl	$16, %ecx
	movb	%cl, 673(%rsp)
	movb	%ah, 674(%rsp)  # NOREX
	movb	%al, 675(%rsp)
	movq	$.L.str.15, 448(%rsp)
	movq	%rbp, 456(%rsp)
	movl	$20, 464(%rsp)
	movl	$20, 468(%rsp)
	movq	$0, 472(%rsp)
	movq	$0, 488(%rsp)
	movss	12(%r15), %xmm0         # xmm0 = mem[0],zero,zero,zero
	mulss	.LCPI4_3(%rip), %xmm0
	divss	104(%rbx), %xmm0
	movss	%xmm0, 12(%rsp)         # 4-byte Spill
	movss	16(%r15), %xmm0         # xmm0 = mem[0],zero,zero,zero
	divss	108(%rbx), %xmm0
	movss	%xmm0, 16(%rsp)         # 4-byte Spill
	movss	20(%r15), %xmm0         # xmm0 = mem[0],zero,zero,zero
	mulss	.LCPI4_4(%rip), %xmm0
	divss	112(%rbx), %xmm0
	movss	%xmm0, 24(%rsp)         # 4-byte Spill
	leaq	624(%rsp), %rbp
	movl	$.L.str.18, %esi
	movl	$8, %edx
	movq	%rbp, %rdi
	callq	memcpy
	movss	12(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI4_5(%rip), %xmm1   # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, %ecx
	shrl	$24, %ecx
	movb	%cl, 632(%rsp)
	movl	%eax, %ecx
	shrl	$16, %ecx
	movb	%cl, 633(%rsp)
	movb	%ah, 634(%rsp)  # NOREX
	movb	%al, 635(%rsp)
	movss	16(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, %ecx
	shrl	$24, %ecx
	movb	%cl, 636(%rsp)
	movl	%eax, %ecx
	shrl	$16, %ecx
	movb	%cl, 637(%rsp)
	movb	%ah, 638(%rsp)  # NOREX
	movb	%al, 639(%rsp)
	movss	24(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, %ecx
	shrl	$24, %ecx
	movb	%cl, 640(%rsp)
	movl	%eax, %ecx
	shrl	$16, %ecx
	movb	%cl, 641(%rsp)
	movb	%ah, 642(%rsp)  # NOREX
	movb	%al, 643(%rsp)
	movq	$.L.str.16, 496(%rsp)
	movq	%rbp, 504(%rsp)
	movl	$20, 512(%rsp)
	movl	$20, 516(%rsp)
	movq	$0, 520(%rsp)
	movq	$0, 536(%rsp)
	movss	.LCPI4_3(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	mulss	24(%r15), %xmm0
	divss	104(%rbx), %xmm0
	movss	%xmm0, 12(%rsp)         # 4-byte Spill
	movss	28(%r15), %xmm0         # xmm0 = mem[0],zero,zero,zero
	divss	108(%rbx), %xmm0
	movss	%xmm0, 16(%rsp)         # 4-byte Spill
	movss	.LCPI4_4(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	mulss	32(%r15), %xmm0
	divss	112(%rbx), %xmm0
	movss	%xmm0, 24(%rsp)         # 4-byte Spill
	leaq	592(%rsp), %rbp
	movl	$.L.str.18, %esi
	movl	$8, %edx
	movq	%rbp, %rdi
	callq	memcpy
	movss	12(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI4_5(%rip), %xmm1   # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, %ecx
	shrl	$24, %ecx
	movb	%cl, 600(%rsp)
	movl	%eax, %ecx
	shrl	$16, %ecx
	movb	%cl, 601(%rsp)
	movb	%ah, 602(%rsp)  # NOREX
	movb	%al, 603(%rsp)
	movss	16(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, %ecx
	shrl	$24, %ecx
	movb	%cl, 604(%rsp)
	movl	%eax, %ecx
	shrl	$16, %ecx
	movb	%cl, 605(%rsp)
	movb	%ah, 606(%rsp)  # NOREX
	movb	%al, 607(%rsp)
	movss	24(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, %ecx
	shrl	$24, %ecx
	movb	%cl, 608(%rsp)
	movl	%eax, %ecx
	shrl	$16, %ecx
	movb	%cl, 609(%rsp)
	movb	%ah, 610(%rsp)  # NOREX
	movb	%al, 611(%rsp)
	leaq	592(%rsp), %rax
	movq	$.L.str.17, 544(%rsp)
	movq	%rbp, 552(%rsp)
	movl	$20, 560(%rsp)
	movl	$20, 564(%rsp)
	movq	$0, 568(%rsp)
	movq	$0, 584(%rsp)
	jmp	.LBB4_10
.LBB4_7:                                # %if.else.i
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%r13d, %xmm0
	movsd	%xmm0, 16(%rsp)         # 8-byte Spill
	movsd	.LCPI4_1(%rip), %xmm1   # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	.LCPI4_2(%rip), %xmm0   # xmm0 = mem[0],zero
	callq	pow
	callq	floor
	cvttsd2si	%xmm0, %ebx
	cmpl	$256, %ebx              # imm = 0x100
	movl	$255, %ebp
	cmovll	%ebx, %ebp
	leaq	712(%rsp), %r14
	movl	$add_a2b0.a2b0_data, %esi
	movl	$52, %edx
	movq	%r14, %rdi
	callq	memcpy
	cmpl	$255, %ebx
	movb	%r13b, 720(%rsp)
	jl	.LBB4_9
# BB#8:                                 # %if.else.i
	movb	$-1, %bl
.LBB4_9:                                # %if.else.i
	movb	%bl, 722(%rsp)
	movq	24(%rsp), %rax          # 8-byte Reload
	movq	%rax, 768(%rsp)
	movl	%ebp, 776(%rsp)
	cvtsi2sdl	%ebp, %xmm0
	movsd	16(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	pow
	cvttsd2si	%xmm0, %eax
	movl	%eax, 780(%rsp)
	leal	(%rax,%rax,2), %eax
	addl	%eax, %eax
	leal	64(%rax,%r13,4), %ecx
	leaq	352(%rsp), %rax
	movq	$.L.str.20, 304(%rsp)
	movq	%r14, 312(%rsp)
	movl	%ecx, 320(%rsp)
	movl	$52, 324(%rsp)
	movq	$write_a2b0, 328(%rsp)
	movq	%r14, 336(%rsp)
	movq	1136(%rsp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, 344(%rsp)
.LBB4_10:                               # %if.end.47.i
	leaq	160(%rsp), %r15
	subq	%r15, %rax
	sarq	$4, %rax
	movabsq	$-6148914691236517205, %rcx # imm = 0xAAAAAAAAAAAAAAAB
	imulq	%rax, %rcx
	leal	(,%rcx,4), %r14d
	leal	132(%r14,%r14,2), %edx
	movl	%ecx, %eax
	shrl	$24, %eax
	movb	%al, 48(%rsp)
	movl	%ecx, %eax
	shrl	$16, %eax
	movb	%al, 49(%rsp)
	movb	%ch, 50(%rsp)  # NOREX
	movb	%cl, 51(%rsp)
	testl	%ecx, %ecx
	jle	.LBB4_11
# BB#12:                                # %for.body.lr.ph.i
	leaq	52(%rsp), %rbp
	leaq	176(%rsp), %rbx
	movl	%ecx, %r12d
	movq	%rcx, 24(%rsp)          # 8-byte Spill
	.align	16, 0x90
.LBB4_13:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbx), %rsi
	movl	%edx, %r13d
	movl	$4, %edx
	movq	%rbp, %rdi
	callq	memcpy
	movl	%r13d, %edx
	movl	%edx, %eax
	shrl	$24, %eax
	movb	%al, 4(%rbp)
	movl	%edx, %eax
	shrl	$16, %eax
	movb	%al, 5(%rbp)
	movb	%dh, 6(%rbp)  # NOREX
	movb	%dl, 7(%rbp)
	movl	(%rbx), %eax
	movl	%eax, %ecx
	shrl	$24, %ecx
	movb	%cl, 8(%rbp)
	movl	%eax, %ecx
	shrl	$16, %ecx
	movb	%cl, 9(%rbp)
	movb	%ah, 10(%rbp)  # NOREX
	movb	%al, 11(%rbp)
	movl	(%rbx), %eax
	addl	$3, %eax
	andl	$-4, %eax
	addl	%eax, %edx
	addq	$48, %rbx
	addq	$12, %rbp
	decl	%r12d
	jne	.LBB4_13
	jmp	.LBB4_14
.LBB4_11:
	movq	%rcx, 24(%rsp)          # 8-byte Spill
.LBB4_14:                               # %for.end.i
	movl	%edx, %eax
	shrl	$24, %eax
	movb	%al, 912(%rsp)
	movl	%edx, %eax
	shrl	$16, %eax
	movb	%al, 913(%rsp)
	movb	%dh, 914(%rsp)  # NOREX
	movb	%dl, 915(%rsp)
	movq	1048(%rsp), %r12
	leaq	912(%rsp), %rsi
	movl	$128, %edx
	movq	%r12, %rdi
	callq	cos_stream_add_bytes
	movl	%eax, %ebp
	testl	%ebp, %ebp
	movq	40(%rsp), %r13          # 8-byte Reload
	js	.LBB4_24
# BB#15:                                # %lor.lhs.false.79.i
	leal	4(%r14,%r14,2), %edx
	leaq	48(%rsp), %rsi
	movq	%r12, %rdi
	callq	cos_stream_add_bytes
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB4_24
# BB#16:                                # %for.cond.86.preheader.i
	movq	24(%rsp), %rax          # 8-byte Reload
	testl	%eax, %eax
	jle	.LBB4_23
# BB#17:                                # %for.body.89.lr.ph.i
	movslq	%eax, %r14
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB4_19:                               # %for.body.89.i
                                        # =>This Inner Loop Header: Depth=1
	movl	20(%r15), %edx
	movq	8(%r15), %rsi
	movq	%r12, %rdi
	callq	cos_stream_add_bytes
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB4_24
# BB#20:                                # %lor.lhs.false.97.i
                                        #   in Loop: Header=BB4_19 Depth=1
	movq	24(%r15), %rax
	testq	%rax, %rax
	je	.LBB4_22
# BB#21:                                # %land.lhs.true.102.i
                                        #   in Loop: Header=BB4_19 Depth=1
	movq	32(%rsp), %rcx          # 8-byte Reload
	movq	1728(%rcx), %rdx
	movq	%r12, %rdi
	movq	%r15, %rsi
	movq	%r13, %rcx
	callq	*%rax
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB4_24
.LBB4_22:                               # %lor.lhs.false.111.i
                                        #   in Loop: Header=BB4_19 Depth=1
	movl	16(%r15), %edx
	negl	%edx
	andl	$3, %edx
	movl	$pdf_convert_cie_to_iccbased.pad, %esi
	movq	%r12, %rdi
	callq	cos_stream_add_bytes
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB4_24
# BB#18:                                # %for.cond.86.i
                                        #   in Loop: Header=BB4_19 Depth=1
	incq	%rbx
	addq	$48, %r15
	cmpq	%r14, %rbx
	jl	.LBB4_19
.LBB4_23:                               # %cleanup.cont.131.i
	movq	32(%r12), %rbx
	movq	%rbx, %rdi
	callq	pdf_obj_ref
	movq	%rax, 8(%r12)
	movl	$30, %edx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	cos_write_object
	movl	%eax, %ebp
.LBB4_24:                               # %cond.end
	movl	%ebp, %eax
	addq	$1064, %rsp             # imm = 0x428
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	pdf_convert_cie_space, .Lfunc_end4-pdf_convert_cie_space
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_0:
	.quad	4647697223260307456     # double 511
.LCPI5_1:
	.quad	4679239875398991872     # double 65535
.LCPI5_2:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	write_trc_abc,@function
write_trc_abc:                          # @write_trc_abc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp51:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp52:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp53:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp54:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp55:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp56:
	.cfi_def_cfa_offset 56
	subq	$1048, %rsp             # imm = 0x418
.Ltmp57:
	.cfi_def_cfa_offset 1104
.Ltmp58:
	.cfi_offset %rbx, -56
.Ltmp59:
	.cfi_offset %r12, -48
.Ltmp60:
	.cfi_offset %r13, -40
.Ltmp61:
	.cfi_offset %r14, -32
.Ltmp62:
	.cfi_offset %r15, -24
.Ltmp63:
	.cfi_offset %rbp, -16
	movq	%rsi, %r12
	movq	%rdi, %r14
	movq	(%r12), %rax
	movq	32(%r12), %r15
	movzbl	(%rax), %eax
	cmpl	$103, %eax
	setne	%cl
	movzbl	%cl, %ecx
	incq	%rcx
	xorl	%ebp, %ebp
	cmpl	$114, %eax
	cmoveq	%rbp, %rcx
	movq	6440(%r15,%rcx,8), %rbx
	xorpd	%xmm1, %xmm1
	movl	$65535, %r13d           # imm = 0xFFFF
	.align	16, 0x90
.LBB5_1:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	40(%r12), %rax
	movapd	%xmm1, %xmm0
	divsd	.LCPI5_0(%rip), %xmm0
	testq	%rax, %rax
	je	.LBB5_2
# BB#3:                                 # %if.then.i
                                        #   in Loop: Header=BB5_1 Depth=1
	movsd	%xmm1, 8(%rsp)          # 8-byte Spill
	movss	(%rax), %xmm1           # xmm1 = mem[0],zero,zero,zero
	movss	4(%rax), %xmm2          # xmm2 = mem[0],zero,zero,zero
	subss	%xmm1, %xmm2
	cvtss2sd	%xmm2, %xmm2
	mulsd	%xmm2, %xmm0
	cvtss2sd	%xmm1, %xmm1
	addsd	%xmm1, %xmm0
	jmp	.LBB5_4
	.align	16, 0x90
.LBB5_2:                                #   in Loop: Header=BB5_1 Depth=1
	movsd	%xmm1, 8(%rsp)          # 8-byte Spill
.LBB5_4:                                # %cache_arg.exit
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	%r15, %rdi
	callq	*%rbx
	cvtss2sd	%xmm0, %xmm0
	mulsd	.LCPI5_1(%rip), %xmm0
	cvttsd2si	%xmm0, %edx
	cmpl	$65535, %edx            # imm = 0xFFFF
	movl	%edx, %ecx
	cmovgl	%r13d, %ecx
	movb	$-1, %al
	jg	.LBB5_6
# BB#5:                                 # %cache_arg.exit
                                        #   in Loop: Header=BB5_1 Depth=1
	movb	%dl, %al
.LBB5_6:                                # %cache_arg.exit
                                        #   in Loop: Header=BB5_1 Depth=1
	xorl	%esi, %esi
	testl	%edx, %edx
	cmovsl	%esi, %ecx
	movb	%ch, 16(%rsp,%rbp,2)  # NOREX
	movsd	8(%rsp), %xmm1          # 8-byte Reload
                                        # xmm1 = mem[0],zero
	js	.LBB5_8
# BB#7:                                 # %cache_arg.exit
                                        #   in Loop: Header=BB5_1 Depth=1
	movb	%al, %sil
.LBB5_8:                                # %cache_arg.exit
                                        #   in Loop: Header=BB5_1 Depth=1
	movb	%sil, 17(%rsp,%rbp,2)
	addsd	.LCPI5_2(%rip), %xmm1
	incq	%rbp
	cmpl	$512, %ebp              # imm = 0x200
	jne	.LBB5_1
# BB#9:                                 # %for.end
	leaq	16(%rsp), %rsi
	movl	$1024, %edx             # imm = 0x400
	movq	%r14, %rdi
	callq	cos_stream_add_bytes
	addq	$1048, %rsp             # imm = 0x418
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	write_trc_abc, .Lfunc_end5-write_trc_abc
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	4647697223260307456     # double 511
.LCPI6_1:
	.quad	4679239875398991872     # double 65535
.LCPI6_2:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	write_trc_lmn,@function
write_trc_lmn:                          # @write_trc_lmn
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp64:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp65:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp66:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp67:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp68:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp69:
	.cfi_def_cfa_offset 56
	subq	$1048, %rsp             # imm = 0x418
.Ltmp70:
	.cfi_def_cfa_offset 1104
.Ltmp71:
	.cfi_offset %rbx, -56
.Ltmp72:
	.cfi_offset %r12, -48
.Ltmp73:
	.cfi_offset %r13, -40
.Ltmp74:
	.cfi_offset %r14, -32
.Ltmp75:
	.cfi_offset %r15, -24
.Ltmp76:
	.cfi_offset %rbp, -16
	movq	%rsi, %r12
	movq	%rdi, %r14
	movq	(%r12), %rax
	movq	32(%r12), %r15
	movzbl	(%rax), %eax
	cmpl	$103, %eax
	setne	%cl
	movzbl	%cl, %ecx
	incq	%rcx
	xorl	%ebp, %ebp
	cmpl	$114, %eax
	cmoveq	%rbp, %rcx
	movq	40(%r15,%rcx,8), %rbx
	xorpd	%xmm1, %xmm1
	movl	$65535, %r13d           # imm = 0xFFFF
	.align	16, 0x90
.LBB6_1:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	40(%r12), %rax
	movapd	%xmm1, %xmm0
	divsd	.LCPI6_0(%rip), %xmm0
	testq	%rax, %rax
	je	.LBB6_2
# BB#3:                                 # %if.then.i
                                        #   in Loop: Header=BB6_1 Depth=1
	movsd	%xmm1, 8(%rsp)          # 8-byte Spill
	movss	(%rax), %xmm1           # xmm1 = mem[0],zero,zero,zero
	movss	4(%rax), %xmm2          # xmm2 = mem[0],zero,zero,zero
	subss	%xmm1, %xmm2
	cvtss2sd	%xmm2, %xmm2
	mulsd	%xmm2, %xmm0
	cvtss2sd	%xmm1, %xmm1
	addsd	%xmm1, %xmm0
	jmp	.LBB6_4
	.align	16, 0x90
.LBB6_2:                                #   in Loop: Header=BB6_1 Depth=1
	movsd	%xmm1, 8(%rsp)          # 8-byte Spill
.LBB6_4:                                # %cache_arg.exit
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	%r15, %rdi
	callq	*%rbx
	cvtss2sd	%xmm0, %xmm0
	mulsd	.LCPI6_1(%rip), %xmm0
	cvttsd2si	%xmm0, %edx
	cmpl	$65535, %edx            # imm = 0xFFFF
	movl	%edx, %ecx
	cmovgl	%r13d, %ecx
	movb	$-1, %al
	jg	.LBB6_6
# BB#5:                                 # %cache_arg.exit
                                        #   in Loop: Header=BB6_1 Depth=1
	movb	%dl, %al
.LBB6_6:                                # %cache_arg.exit
                                        #   in Loop: Header=BB6_1 Depth=1
	xorl	%esi, %esi
	testl	%edx, %edx
	cmovsl	%esi, %ecx
	movb	%ch, 16(%rsp,%rbp,2)  # NOREX
	movsd	8(%rsp), %xmm1          # 8-byte Reload
                                        # xmm1 = mem[0],zero
	js	.LBB6_8
# BB#7:                                 # %cache_arg.exit
                                        #   in Loop: Header=BB6_1 Depth=1
	movb	%al, %sil
.LBB6_8:                                # %cache_arg.exit
                                        #   in Loop: Header=BB6_1 Depth=1
	movb	%sil, 17(%rsp,%rbp,2)
	addsd	.LCPI6_2(%rip), %xmm1
	incq	%rbp
	cmpl	$512, %ebp              # imm = 0x200
	jne	.LBB6_1
# BB#9:                                 # %for.end
	leaq	16(%rsp), %rsi
	movl	$1024, %edx             # imm = 0x400
	movq	%r14, %rdi
	callq	cos_stream_add_bytes
	addq	$1048, %rsp             # imm = 0x418
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	write_trc_lmn, .Lfunc_end6-write_trc_lmn
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI7_0:
	.quad	4606859961066697680     # double 0.96419999999999995
.LCPI7_1:
	.quad	4605605258210512260     # double 0.82489999999999996
.LCPI7_2:
	.quad	4611685880988434432     # double 1.999969482421875
.LCPI7_3:
	.quad	4679239875398991872     # double 65535
	.text
	.align	16, 0x90
	.type	write_a2b0,@function
write_a2b0:                             # @write_a2b0
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp77:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp78:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp79:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp80:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp81:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp82:
	.cfi_def_cfa_offset 56
	subq	$424, %rsp              # imm = 0x1A8
.Ltmp83:
	.cfi_def_cfa_offset 480
.Ltmp84:
	.cfi_offset %rbx, -56
.Ltmp85:
	.cfi_offset %r12, -48
.Ltmp86:
	.cfi_offset %r13, -40
.Ltmp87:
	.cfi_offset %r14, -32
.Ltmp88:
	.cfi_offset %r15, -24
.Ltmp89:
	.cfi_offset %rbp, -16
	movq	%rcx, 64(%rsp)          # 8-byte Spill
	movq	%rdx, %r15
	movq	%rsi, 32(%rsp)          # 8-byte Spill
	movq	%rdi, 48(%rsp)          # 8-byte Spill
	movq	32(%rsi), %rax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	movq	56(%rax), %rbx
	movzbl	8(%rax), %ecx
	movq	%rcx, 80(%rsp)          # 8-byte Spill
	movl	64(%rax), %r14d
	movl	%ecx, %edx
	shll	$2, %edx
	movl	$write_a2b0.v01, %esi
	callq	cos_stream_add_bytes
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB7_44
# BB#1:                                 # %if.end
	leaq	128(%rsp), %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	gx_cie_to_xyz_alloc
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB7_44
# BB#2:                                 # %for.cond.preheader
	movq	%rbx, 72(%rsp)          # 8-byte Spill
	movq	56(%rsp), %rax          # 8-byte Reload
	cmpl	$0, 68(%rax)
	jle	.LBB7_43
# BB#3:                                 # %for.body.lr.ph
	leal	-1(%r14), %eax
	cvtsi2sdl	%eax, %xmm3
	movsd	%xmm3, 40(%rsp)         # 8-byte Spill
	movq	80(%rsp), %rax          # 8-byte Reload
	leaq	(,%rax,8), %rax
	movl	$8, %ecx
	subq	%rax, %rcx
	movq	%rcx, 24(%rsp)          # 8-byte Spill
	xorl	%r12d, %r12d
	.align	16, 0x90
.LBB7_5:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_7 Depth 2
                                        #     Child Loop BB7_17 Depth 2
                                        #     Child Loop BB7_21 Depth 2
	movq	80(%rsp), %rax          # 8-byte Reload
	testb	%al, %al
	je	.LBB7_11
# BB#6:                                 # %for.body.15.lr.ph
                                        #   in Loop: Header=BB7_5 Depth=1
	movq	32(%rsp), %rax          # 8-byte Reload
	movq	40(%rax), %rsi
	movq	24(%rsp), %rdi          # 8-byte Reload
	subq	%rsi, %rdi
	movq	80(%rsp), %rbx          # 8-byte Reload
	movl	%r12d, %ecx
	.align	16, 0x90
.LBB7_7:                                # %for.body.15
                                        #   Parent Loop BB7_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rbx, %rbp
	leaq	-1(%rbp), %rbx
	movl	%ecx, %eax
	cltd
	idivl	%r14d
	testq	%rsi, %rsi
	cvtsi2sdl	%edx, %xmm0
	divsd	%xmm3, %xmm0
	je	.LBB7_10
# BB#8:                                 # %for.body.15
                                        #   in Loop: Header=BB7_7 Depth=2
	testq	%rdi, %rdi
	je	.LBB7_10
# BB#9:                                 # %if.then.i
                                        #   in Loop: Header=BB7_7 Depth=2
	movss	-4(%rsi,%rbp,8), %xmm1  # xmm1 = mem[0],zero,zero,zero
	movss	-8(%rsi,%rbp,8), %xmm2  # xmm2 = mem[0],zero,zero,zero
	subss	%xmm2, %xmm1
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm1, %xmm0
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
.LBB7_10:                               # %cache_arg.exit
                                        #   in Loop: Header=BB7_7 Depth=2
	movsd	%xmm0, 88(%rsp,%rbp,8)
	movl	%ecx, %eax
	cltd
	idivl	%r14d
	leaq	1(%rbx), %rcx
	addq	$8, %rdi
	cmpq	$1, %rcx
	movl	%eax, %ecx
	jg	.LBB7_7
.LBB7_11:                               # %for.end
                                        #   in Loop: Header=BB7_5 Depth=1
	movq	128(%rsp), %r15
	movq	72(%rsp), %rbx          # 8-byte Reload
	movq	%rbx, %rdi
	callq	gs_color_space_num_components
	movl	%eax, %r13d
	movq	%rbx, %rdi
	callq	gs_color_space_get_index
	testl	%r13d, %r13d
	jle	.LBB7_22
# BB#12:                                # %for.body.i.preheader
                                        #   in Loop: Header=BB7_5 Depth=1
	leal	-1(%r13), %edx
	leaq	1(%rdx), %rcx
	movq	%rcx, %rsi
	movabsq	$8589934588, %rdi       # imm = 0x1FFFFFFFC
	andq	%rdi, %rsi
	movl	$0, %edi
	je	.LBB7_19
# BB#13:                                # %vector.body.preheader
                                        #   in Loop: Header=BB7_5 Depth=1
	leaq	1(%rdx), %rdi
	movabsq	$8589934588, %rbp       # imm = 0x1FFFFFFFC
	andq	%rbp, %rdi
	addq	$-4, %rdi
	movq	%rdi, %rbp
	shrq	$2, %rbp
	btq	$2, %rdi
	movl	$0, %ebx
	jb	.LBB7_15
# BB#14:                                # %vector.body.prol
                                        #   in Loop: Header=BB7_5 Depth=1
	cvtpd2ps	96(%rsp), %xmm0
	cvtpd2ps	112(%rsp), %xmm1
	movlpd	%xmm0, 168(%rsp)
	movlpd	%xmm1, 176(%rsp)
	movl	$4, %ebx
.LBB7_15:                               # %vector.body.preheader.split
                                        #   in Loop: Header=BB7_5 Depth=1
	testq	%rbp, %rbp
	je	.LBB7_18
# BB#16:                                # %vector.body.preheader.split.split
                                        #   in Loop: Header=BB7_5 Depth=1
	incq	%rdx
	movabsq	$8589934588, %rdi       # imm = 0x1FFFFFFFC
	andq	%rdi, %rdx
	subq	%rbx, %rdx
	leaq	144(%rsp), %rdi
	leaq	(%rdi,%rbx,8), %rdi
	leaq	192(%rsp), %rbp
	leaq	(%rbp,%rbx,4), %rbx
	.align	16, 0x90
.LBB7_17:                               # %vector.body
                                        #   Parent Loop BB7_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cvtpd2ps	-48(%rdi), %xmm0
	cvtpd2ps	-32(%rdi), %xmm1
	movlpd	%xmm0, -24(%rbx)
	movlpd	%xmm1, -16(%rbx)
	cvtpd2ps	-16(%rdi), %xmm0
	cvtpd2ps	(%rdi), %xmm1
	movlpd	%xmm0, -8(%rbx)
	movlpd	%xmm1, (%rbx)
	addq	$64, %rdi
	addq	$32, %rbx
	addq	$-8, %rdx
	jne	.LBB7_17
.LBB7_18:                               #   in Loop: Header=BB7_5 Depth=1
	movq	%rsi, %rdi
.LBB7_19:                               # %middle.block
                                        #   in Loop: Header=BB7_5 Depth=1
	cmpq	%rdi, %rcx
	je	.LBB7_22
# BB#20:                                # %for.body.i.preheader65
                                        #   in Loop: Header=BB7_5 Depth=1
	leaq	96(%rsp,%rdi,8), %rcx
	subl	%edi, %r13d
	leaq	168(%rsp), %rdx
	leaq	(%rdx,%rdi,4), %rdx
	.align	16, 0x90
.LBB7_21:                               # %for.body.i
                                        #   Parent Loop BB7_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsd	(%rcx), %xmm0           # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, (%rdx)
	addq	$8, %rcx
	addq	$4, %rdx
	decl	%r13d
	jne	.LBB7_21
.LBB7_22:                               # %for.end.i
                                        #   in Loop: Header=BB7_5 Depth=1
	addl	$-5, %eax
	cmpl	$3, %eax
	movsd	.LCPI7_2(%rip), %xmm4   # xmm4 = mem[0],zero
	movsd	.LCPI7_3(%rip), %xmm5   # xmm5 = mem[0],zero
	ja	.LBB7_29
# BB#23:                                # %for.end.i
                                        #   in Loop: Header=BB7_5 Depth=1
	jmpq	*.LJTI7_0(,%rax,8)
.LBB7_26:                               # %sw.bb.21.i
                                        #   in Loop: Header=BB7_5 Depth=1
	leaq	160(%rsp), %rdi
	movq	72(%rsp), %rsi          # 8-byte Reload
	leaq	154(%rsp), %rdx
	leaq	140(%rsp), %rcx
	movq	%r15, %r8
	callq	gx_psconcretize_CIEDEFG
	jmp	.LBB7_28
.LBB7_25:                               # %sw.bb.17.i
                                        #   in Loop: Header=BB7_5 Depth=1
	leaq	160(%rsp), %rdi
	movq	72(%rsp), %rsi          # 8-byte Reload
	leaq	154(%rsp), %rdx
	leaq	140(%rsp), %rcx
	movq	%r15, %r8
	callq	gx_psconcretize_CIEDEF
	jmp	.LBB7_28
.LBB7_24:                               # %sw.bb.13.i
                                        #   in Loop: Header=BB7_5 Depth=1
	leaq	160(%rsp), %rdi
	movq	72(%rsp), %rsi          # 8-byte Reload
	leaq	154(%rsp), %rdx
	leaq	140(%rsp), %rcx
	movq	%r15, %r8
	callq	gx_psconcretize_CIEABC
	jmp	.LBB7_28
.LBB7_27:                               # %if.then.i.40
                                        #   in Loop: Header=BB7_5 Depth=1
	leaq	160(%rsp), %rdi
	movq	72(%rsp), %rsi          # 8-byte Reload
	leaq	154(%rsp), %rdx
	leaq	140(%rsp), %rcx
	movq	%r15, %r8
	callq	gx_psconcretize_CIEA
	movss	144(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movq	64(%rsp), %rax          # 8-byte Reload
	movss	104(%rax), %xmm1        # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm1
	movss	%xmm1, 140(%rsp)
	mulss	112(%rax), %xmm0
	movss	%xmm0, 148(%rsp)
.LBB7_28:                               # %cie_to_xyz.exit
                                        #   in Loop: Header=BB7_5 Depth=1
	movsd	.LCPI7_2(%rip), %xmm4   # xmm4 = mem[0],zero
	movsd	.LCPI7_3(%rip), %xmm5   # xmm5 = mem[0],zero
.LBB7_29:                               # %cie_to_xyz.exit
                                        #   in Loop: Header=BB7_5 Depth=1
	movss	140(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	144(%rsp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm3
	mulsd	.LCPI7_0(%rip), %xmm3
	movq	64(%rsp), %rax          # 8-byte Reload
	movss	104(%rax), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	112(%rax), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	divsd	%xmm0, %xmm3
	movss	148(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	divsd	%xmm4, %xmm3
	mulsd	%xmm5, %xmm3
	cvttsd2si	%xmm3, %esi
	cmpl	$65535, %esi            # imm = 0xFFFF
	movl	%esi, %edx
	movl	$65535, %edi            # imm = 0xFFFF
	cmovgl	%edi, %edx
	movb	$-1, %al
	movb	$-1, %bl
	jg	.LBB7_31
# BB#30:                                # %cie_to_xyz.exit
                                        #   in Loop: Header=BB7_5 Depth=1
	movb	%sil, %bl
.LBB7_31:                               # %cie_to_xyz.exit
                                        #   in Loop: Header=BB7_5 Depth=1
	cvtss2sd	%xmm0, %xmm0
	cvtss2sd	%xmm2, %xmm2
	xorl	%ecx, %ecx
	testl	%esi, %esi
	cmovsl	%ecx, %edx
	movb	%dh, 90(%rsp)  # NOREX
	movl	$0, %edx
	js	.LBB7_33
# BB#32:                                # %cie_to_xyz.exit
                                        #   in Loop: Header=BB7_5 Depth=1
	movb	%bl, %dl
.LBB7_33:                               # %cie_to_xyz.exit
                                        #   in Loop: Header=BB7_5 Depth=1
	mulsd	.LCPI7_1(%rip), %xmm0
	cvtss2sd	%xmm1, %xmm1
	movb	%dl, 91(%rsp)
	divsd	%xmm4, %xmm2
	mulsd	%xmm5, %xmm2
	cvttsd2si	%xmm2, %esi
	cmpl	$65535, %esi            # imm = 0xFFFF
	movl	%esi, %edx
	cmovgl	%edi, %edx
	movb	$-1, %bl
	jg	.LBB7_35
# BB#34:                                # %cie_to_xyz.exit
                                        #   in Loop: Header=BB7_5 Depth=1
	movb	%sil, %bl
.LBB7_35:                               # %cie_to_xyz.exit
                                        #   in Loop: Header=BB7_5 Depth=1
	divsd	%xmm1, %xmm0
	testl	%esi, %esi
	cmovsl	%ecx, %edx
	movb	%dh, 92(%rsp)  # NOREX
	movl	$0, %edx
	js	.LBB7_37
# BB#36:                                # %cie_to_xyz.exit
                                        #   in Loop: Header=BB7_5 Depth=1
	movb	%bl, %dl
.LBB7_37:                               # %cie_to_xyz.exit
                                        #   in Loop: Header=BB7_5 Depth=1
	movb	%dl, 93(%rsp)
	divsd	%xmm4, %xmm0
	mulsd	%xmm5, %xmm0
	cvttsd2si	%xmm0, %esi
	cmpl	$65535, %esi            # imm = 0xFFFF
	movl	%esi, %edx
	cmovgl	%edi, %edx
	jg	.LBB7_39
# BB#38:                                # %cie_to_xyz.exit
                                        #   in Loop: Header=BB7_5 Depth=1
	movb	%sil, %al
.LBB7_39:                               # %cie_to_xyz.exit
                                        #   in Loop: Header=BB7_5 Depth=1
	testl	%esi, %esi
	cmovsl	%ecx, %edx
	movb	%dh, 94(%rsp)  # NOREX
	js	.LBB7_41
# BB#40:                                # %cie_to_xyz.exit
                                        #   in Loop: Header=BB7_5 Depth=1
	movb	%al, %cl
.LBB7_41:                               # %cie_to_xyz.exit
                                        #   in Loop: Header=BB7_5 Depth=1
	movb	%cl, 95(%rsp)
	movl	$6, %edx
	movq	48(%rsp), %rdi          # 8-byte Reload
	leaq	90(%rsp), %rsi
	callq	cos_stream_add_bytes
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB7_42
# BB#4:                                 # %for.cond
                                        #   in Loop: Header=BB7_5 Depth=1
	incl	%r12d
	movq	56(%rsp), %rax          # 8-byte Reload
	cmpl	68(%rax), %r12d
	movsd	40(%rsp), %xmm3         # 8-byte Reload
                                        # xmm3 = mem[0],zero
	jl	.LBB7_5
.LBB7_43:                               # %if.end.50
	movq	128(%rsp), %rdi
	callq	gx_cie_to_xyz_free
	movl	$write_a2b0.v01, %esi
	movl	$12, %edx
	movq	48(%rsp), %rdi          # 8-byte Reload
	callq	cos_stream_add_bytes
	movl	%eax, %ebp
	jmp	.LBB7_44
.LBB7_42:                               # %for.end.46.thread57
	movq	128(%rsp), %rdi
	callq	gx_cie_to_xyz_free
.LBB7_44:                               # %cleanup.52
	movl	%ebp, %eax
	addq	$424, %rsp              # imm = 0x1A8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	write_a2b0, .Lfunc_end7-write_a2b0
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI7_0:
	.quad	.LBB7_26
	.quad	.LBB7_25
	.quad	.LBB7_24
	.quad	.LBB7_27

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"/Lab"
	.size	.L.str, 5

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"pdf_cie_add_ranges"
	.size	.L.str.1, 19

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"/Range"
	.size	.L.str.2, 7

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"/ICCBased"
	.size	.L.str.3, 10

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"pdf_make_iccbased(stream)"
	.size	.L.str.4, 26

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"/N"
	.size	.L.str.5, 3

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"/Alternate"
	.size	.L.str.6, 11

	.type	pdf_convert_cie_to_iccbased.header_data,@object # @pdf_convert_cie_to_iccbased.header_data
	.section	.rodata,"a",@progbits
	.align	16
pdf_convert_cie_to_iccbased.header_data:
	.ascii	"\000\000\000\000\000\000\000\000\002 \000\000scnr\000\000\000\000XYZ \007\322\000\001\000\001\000\000\000\000\000\000acsp\000\000\000\000\000\000\000\003\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\002"
	.size	pdf_convert_cie_to_iccbased.header_data, 68

	.type	pdf_convert_cie_to_iccbased.desc_data,@object # @pdf_convert_cie_to_iccbased.desc_data
	.align	16
pdf_convert_cie_to_iccbased.desc_data:
	.asciz	"desc\000\000\000\000\000\000\000\006adhoc"
	.size	pdf_convert_cie_to_iccbased.desc_data, 18

	.type	pdf_convert_cie_to_iccbased.cprt_data,@object # @pdf_convert_cie_to_iccbased.cprt_data
pdf_convert_cie_to_iccbased.cprt_data:
	.asciz	"text\000\000\000\000none"
	.size	pdf_convert_cie_to_iccbased.cprt_data, 13

	.type	.L.str.8,@object        # @.str.8
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.8:
	.asciz	"pdf_convert_cie_to_iccbased"
	.size	.L.str.8, 28

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"desc"
	.size	.L.str.9, 5

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"wtpt"
	.size	.L.str.10, 5

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"cprt"
	.size	.L.str.11, 5

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"rTRC"
	.size	.L.str.12, 5

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"gTRC"
	.size	.L.str.13, 5

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"bTRC"
	.size	.L.str.14, 5

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"rXYZ"
	.size	.L.str.15, 5

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"gXYZ"
	.size	.L.str.16, 5

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"bXYZ"
	.size	.L.str.17, 5

	.type	pdf_convert_cie_to_iccbased.pad,@object # @pdf_convert_cie_to_iccbased.pad
	.section	.rodata,"a",@progbits
pdf_convert_cie_to_iccbased.pad:
	.zero	3
	.size	pdf_convert_cie_to_iccbased.pad, 3

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"XYZ \000\000\000\000"
	.size	.L.str.18, 9

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"curv\000\000\000\000"
	.size	.L.str.19, 9

	.type	add_a2b0.a2b0_data,@object # @add_a2b0.a2b0_data
	.align	16
add_a2b0.a2b0_data:
	.ascii	"mft2\000\000\000\000\000\003\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\002\000\002"
	.size	add_a2b0.a2b0_data, 52

	.type	.L.str.20,@object       # @.str.20
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.20:
	.asciz	"A2B0"
	.size	.L.str.20, 5

	.type	write_a2b0.v01,@object  # @write_a2b0.v01
	.section	.rodata,"a",@progbits
	.align	16
write_a2b0.v01:
	.ascii	"\000\000\377\377\000\000\377\377\000\000\377\377\000\000\377\377"
	.size	write_a2b0.v01, 16


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
