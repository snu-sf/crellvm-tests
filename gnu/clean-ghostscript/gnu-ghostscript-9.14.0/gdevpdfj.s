	.text
	.file	"gdevpdfj.bc"
	.align	16, 0x90
	.type	pdf_image_writer_enum_ptrs,@function
pdf_image_writer_enum_ptrs:             # @pdf_image_writer_enum_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp0:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp1:
	.cfi_def_cfa_offset 32
.Ltmp2:
	.cfi_offset %rbx, -16
	movq	%r8, %rbx
	movl	%ecx, %eax
	cmpl	$3, %ecx
	jbe	.LBB0_1
# BB#2:                                 # %sw.default
	addl	$-4, %ecx
	imull	$3, 128(%rsi), %edx
	xorl	%eax, %eax
	cmpl	%edx, %ecx
	jge	.LBB0_11
# BB#3:                                 # %if.then
	movq	32(%rsp), %r8
	movslq	%ecx, %rdx
	imulq	$1431655766, %rdx, %rdx # imm = 0x55555556
	movq	%rdx, %rax
	shrq	$63, %rax
	shrq	$32, %rdx
	addl	%eax, %edx
	movslq	%edx, %rax
	shlq	$5, %rax
	addq	%rax, %rsi
	leal	(%rdx,%rdx,2), %eax
	subl	%eax, %ecx
	movq	%r8, (%rsp)
	movl	$32, %edx
	movl	$st_psdf_binary_writer, %r9d
	movq	%rbx, %r8
	callq	*st_psdf_binary_writer+32(%rip)
	testq	%rax, %rax
	jne	.LBB0_11
# BB#4:                                 # %if.then.2
	movq	$0, (%rbx)
	jmp	.LBB0_10
.LBB0_1:                                # %entry
	jmpq	*.LJTI0_0(,%rax,8)
.LBB0_5:                                # %sw.bb
	movq	144(%rsi), %rax
	jmp	.LBB0_9
.LBB0_6:                                # %sw.bb.5
	movq	160(%rsi), %rax
	jmp	.LBB0_9
.LBB0_7:                                # %sw.bb.7
	movq	176(%rsi), %rax
	jmp	.LBB0_9
.LBB0_8:                                # %sw.bb.9
	movq	184(%rsi), %rax
.LBB0_9:                                # %cleanup.11
	movq	%rax, (%rbx)
.LBB0_10:                               # %cleanup.11
	movl	$ptr_struct_procs, %eax
.LBB0_11:                               # %cleanup.11
	addq	$16, %rsp
	popq	%rbx
	retq
.Lfunc_end0:
	.size	pdf_image_writer_enum_ptrs, .Lfunc_end0-pdf_image_writer_enum_ptrs
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI0_0:
	.quad	.LBB0_5
	.quad	.LBB0_6
	.quad	.LBB0_7
	.quad	.LBB0_8

	.text
	.align	16, 0x90
	.type	pdf_image_writer_reloc_ptrs,@function
pdf_image_writer_reloc_ptrs:            # @pdf_image_writer_reloc_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp3:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp4:
	.cfi_def_cfa_offset 24
	pushq	%r13
.Ltmp5:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp6:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp7:
	.cfi_def_cfa_offset 48
.Ltmp8:
	.cfi_offset %rbx, -48
.Ltmp9:
	.cfi_offset %r12, -40
.Ltmp10:
	.cfi_offset %r13, -32
.Ltmp11:
	.cfi_offset %r14, -24
.Ltmp12:
	.cfi_offset %r15, -16
	movq	%rcx, %r14
	movq	%rdi, %r15
	cmpl	$0, 128(%r15)
	jle	.LBB1_3
# BB#1:                                 # %for.body.lr.ph
	movq	st_psdf_binary_writer+40(%rip), %r12
	xorl	%r13d, %r13d
	movq	%r15, %rbx
	.align	16, 0x90
.LBB1_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$32, %esi
	movl	$st_psdf_binary_writer, %edx
	movq	%rbx, %rdi
	movq	%r14, %rcx
	callq	*%r12
	incq	%r13
	movslq	128(%r15), %rax
	addq	$32, %rbx
	cmpq	%rax, %r13
	jl	.LBB1_2
.LBB1_3:                                # %for.end
	movq	(%r14), %rax
	movq	144(%r15), %rdi
	movq	%r14, %rsi
	callq	*(%rax)
	movq	%rax, 144(%r15)
	movq	(%r14), %rax
	movq	160(%r15), %rdi
	movq	%r14, %rsi
	callq	*(%rax)
	movq	%rax, 160(%r15)
	movq	(%r14), %rax
	movq	176(%r15), %rdi
	movq	%r14, %rsi
	callq	*(%rax)
	movq	%rax, 176(%r15)
	movq	(%r14), %rax
	movq	184(%r15), %rdi
	movq	%r14, %rsi
	callq	*(%rax)
	movq	%rax, 184(%r15)
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.Lfunc_end1:
	.size	pdf_image_writer_reloc_ptrs, .Lfunc_end1-pdf_image_writer_reloc_ptrs
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4608533498688228557     # double 1.3
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI2_1:
	.long	1065353216              # float 1
	.text
	.globl	pdf_put_image_values
	.align	16, 0x90
	.type	pdf_put_image_values,@function
pdf_put_image_values:                   # @pdf_put_image_values
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
	movq	%rcx, 32(%rsp)          # 8-byte Spill
	movq	%rdx, %rbx
	movq	%rsi, %rbp
	movq	%rdi, 40(%rsp)          # 8-byte Spill
	movq	576(%rbx), %r13
	movq	(%rbx), %rax
	movl	48(%rax), %ecx
	cmpl	$4, %ecx
	je	.LBB2_7
# BB#1:                                 # %entry
	movl	$-15, %eax
	cmpl	$3, %ecx
	jne	.LBB2_2
# BB#6:                                 # %sw.bb.4
	movq	%r8, 16(%rsp)           # 8-byte Spill
	movsd	.LCPI2_0(%rip), %xmm0   # xmm0 = mem[0],zero
	ucomisd	9368(%rbp), %xmm0
	movq	%rbp, 24(%rsp)          # 8-byte Spill
	jbe	.LBB2_18
	jmp	.LBB2_45
.LBB2_7:                                # %sw.bb.8
	movq	%r8, 16(%rsp)           # 8-byte Spill
	movq	%r13, %rdi
	callq	gs_color_space_num_components
	movl	%eax, %r15d
	movsd	.LCPI2_0(%rip), %xmm0   # xmm0 = mem[0],zero
	ucomisd	9368(%rbp), %xmm0
	movq	%rbp, 24(%rsp)          # 8-byte Spill
	ja	.LBB2_18
# BB#8:                                 # %if.end.14
	movl	$.L.str.44, %esi
	movq	24(%rsp), %rdi          # 8-byte Reload
	callq	cos_array_alloc
	movq	%rax, %r14
	movl	$-25, %eax
	testq	%r14, %r14
	je	.LBB2_45
# BB#9:                                 # %for.cond.preheader
	testl	%r15d, %r15d
	jle	.LBB2_17
# BB#10:                                # %for.body.lr.ph
	movslq	%r15d, %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movl	$1, %r12d
	xorl	%r15d, %r15d
	.align	16, 0x90
.LBB2_12:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, 584(%rbx)
	je	.LBB2_14
# BB#13:                                # %if.then.21
                                        #   in Loop: Header=BB2_12 Depth=1
	leal	-1(%r12), %eax
	cltq
	movl	588(%rbx,%rax,4), %esi
	movslq	%r12d, %rax
	movl	588(%rbx,%rax,4), %ebp
	jmp	.LBB2_15
	.align	16, 0x90
.LBB2_14:                               # %if.else
                                        #   in Loop: Header=BB2_12 Depth=1
	movl	588(%rbx,%r15,4), %esi
	movl	%esi, %ebp
.LBB2_15:                               # %do.body.30
                                        #   in Loop: Header=BB2_12 Depth=1
	movq	%r14, %rdi
	callq	cos_array_add_int
	testl	%eax, %eax
	js	.LBB2_45
# BB#16:                                # %do.body.37
                                        #   in Loop: Header=BB2_12 Depth=1
	movq	%r14, %rdi
	movl	%ebp, %esi
	callq	cos_array_add_int
	testl	%eax, %eax
	js	.LBB2_45
# BB#11:                                # %for.cond
                                        #   in Loop: Header=BB2_12 Depth=1
	incq	%r15
	addl	$2, %r12d
	cmpq	8(%rsp), %r15           # 8-byte Folded Reload
	jl	.LBB2_12
.LBB2_17:                               # %cleanup.55
	movl	$.L.str.45, %esi
	movq	40(%rsp), %rdi          # 8-byte Reload
	movq	%r14, %rdx
	callq	cos_dict_put_c_key_object
	testl	%eax, %eax
	jns	.LBB2_18
	jmp	.LBB2_45
.LBB2_2:                                # %entry
	movq	%r8, 16(%rsp)           # 8-byte Spill
	movq	%rbp, 24(%rsp)          # 8-byte Spill
	cmpl	$1, %ecx
	jne	.LBB2_45
# BB#3:                                 # %sw.bb
	cmpl	$0, 584(%rbx)
	je	.LBB2_18
# BB#4:                                 # %do.body
	movq	32(%rsp), %rax          # 8-byte Reload
	movq	152(%rax), %rsi
	movl	$.L.str.43, %edx
	movq	40(%rsp), %rdi          # 8-byte Reload
	callq	cos_dict_put_c_strings
	testl	%eax, %eax
	js	.LBB2_45
# BB#5:                                 # %sw.epilog.thread
	movq	24(%rsp), %rax          # 8-byte Reload
	orb	$1, 26584(%rax)
	movl	$1, %r14d
	movb	$1, %r15b
	xorl	%ebp, %ebp
	jmp	.LBB2_23
.LBB2_18:                               # %sw.epilog
	xorl	%ebp, %ebp
	testq	%r13, %r13
	je	.LBB2_19
# BB#20:                                # %do.body.i
	movq	32(%rsp), %rax          # 8-byte Reload
	movq	128(%rax), %rsi
	movq	40(%rsp), %rdi          # 8-byte Reload
	movq	16(%rsp), %rdx          # 8-byte Reload
	callq	cos_dict_put_c_key
	testl	%eax, %eax
	js	.LBB2_45
# BB#21:                                # %do.end.i
	movq	24(%rsp), %rdi          # 8-byte Reload
	movq	%r13, %rsi
	callq	pdf_color_space_procsets
	movq	%r13, %rdi
	callq	gs_color_space_num_components
	movl	%eax, %r14d
	movq	%r13, %rdi
	callq	gs_color_space_get_index
	xorl	%ebp, %ebp
	xorl	%r15d, %r15d
	cmpl	$10, %eax
	jne	.LBB2_23
# BB#22:                                # %if.then.5.i
	leaq	48(%rsp), %rbp
	movl	$0, 48(%rsp)
	movb	40(%rbx), %cl
	movl	$1, %eax
	shll	%cl, %eax
	decl	%eax
	cvtsi2ssl	%eax, %xmm0
	movss	%xmm0, 52(%rsp)
	xorl	%r15d, %r15d
	jmp	.LBB2_23
.LBB2_19:
	movl	$1, %r14d
	movb	$1, %r15b
.LBB2_23:                               # %do.body.9.i
	movq	32(%rsp), %rax          # 8-byte Reload
	movq	168(%rax), %rsi
	movl	32(%rbx), %edx
	movq	40(%rsp), %rdi          # 8-byte Reload
	callq	cos_dict_put_c_key_int
	testl	%eax, %eax
	js	.LBB2_45
# BB#24:                                # %do.body.18.i
	movq	32(%rsp), %rax          # 8-byte Reload
	movq	144(%rax), %rsi
	movl	36(%rbx), %edx
	movq	40(%rsp), %rdi          # 8-byte Reload
	callq	cos_dict_put_c_key_int
	testl	%eax, %eax
	js	.LBB2_45
# BB#25:                                # %do.body.27.i
	movq	32(%rsp), %rax          # 8-byte Reload
	movq	120(%rax), %rsi
	movl	40(%rbx), %edx
	movq	40(%rsp), %rdi          # 8-byte Reload
	callq	cos_dict_put_c_key_int
	testl	%eax, %eax
	js	.LBB2_45
# BB#26:                                # %for.cond.preheader.i
	testl	%r14d, %r14d
	jle	.LBB2_40
# BB#27:                                # %for.body.lr.ph.i
	addl	%r14d, %r14d
	movslq	%r14d, %r14
	xorl	%eax, %eax
	.align	16, 0x90
.LBB2_29:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	testq	%rbp, %rbp
	movss	44(%rbx,%rax,4), %xmm0  # xmm0 = mem[0],zero,zero,zero
	je	.LBB2_31
# BB#30:                                # %cond.true.i
                                        #   in Loop: Header=BB2_29 Depth=1
	movss	(%rbp,%rax,4), %xmm1    # xmm1 = mem[0],zero,zero,zero
	jmp	.LBB2_32
	.align	16, 0x90
.LBB2_31:                               # %cond.false.i
                                        #   in Loop: Header=BB2_29 Depth=1
	movl	%eax, %ecx
	andl	$1, %ecx
	cvtsi2ssl	%ecx, %xmm1
.LBB2_32:                               # %cond.end.i
                                        #   in Loop: Header=BB2_29 Depth=1
	ucomiss	%xmm1, %xmm0
	jne	.LBB2_33
	jnp	.LBB2_28
.LBB2_33:                               # %if.then.51.i
	movl	$.L.str.62, %esi
	movq	24(%rsp), %rdi          # 8-byte Reload
	callq	cos_array_alloc
	movq	%rax, %r12
	movl	$-25, %eax
	testq	%r12, %r12
	jne	.LBB2_34
	jmp	.LBB2_45
	.align	16, 0x90
.LBB2_28:                               # %for.cond.i
                                        #   in Loop: Header=BB2_29 Depth=1
	incq	%rax
	cmpq	%r14, %rax
	jl	.LBB2_29
	jmp	.LBB2_40
.LBB2_34:                               # %if.end.56.i
	xorl	%ebp, %ebp
	testb	%r15b, %r15b
	je	.LBB2_38
.LBB2_36:                               # %do.body.65.i
                                        # =>This Inner Loop Header: Depth=1
	movss	44(%rbx,%rbp,4), %xmm0  # xmm0 = mem[0],zero,zero,zero
	minss	.LCPI2_1(%rip), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movq	%r12, %rdi
	callq	cos_array_add_real
	testl	%eax, %eax
	js	.LBB2_45
# BB#35:                                # %for.cond.60.i
                                        #   in Loop: Header=BB2_36 Depth=1
	incq	%rbp
	cmpq	%r14, %rbp
	jl	.LBB2_36
	jmp	.LBB2_39
.LBB2_38:                               # %do.body.95.i
                                        # =>This Inner Loop Header: Depth=1
	movss	44(%rbx,%rbp,4), %xmm0  # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movq	%r12, %rdi
	callq	cos_array_add_real
	testl	%eax, %eax
	js	.LBB2_45
# BB#37:                                # %for.cond.90.i
                                        #   in Loop: Header=BB2_38 Depth=1
	incq	%rbp
	cmpq	%r14, %rbp
	jl	.LBB2_38
.LBB2_39:                               # %do.body.111.i
	movq	32(%rsp), %rax          # 8-byte Reload
	movq	136(%rax), %rsi
	movq	40(%rsp), %rdi          # 8-byte Reload
	movq	%r12, %rdx
	callq	cos_dict_put_c_key_object
	testl	%eax, %eax
	js	.LBB2_45
.LBB2_40:                               # %cleanup.cont.123.i
	cmpl	$0, 564(%rbx)
	je	.LBB2_44
# BB#41:                                # %if.then.125.i
	movq	24(%rsp), %rbx          # 8-byte Reload
	cmpl	$0, 9564(%rbx)
	je	.LBB2_43
# BB#42:                                # %if.then.128.i
	movq	24(%rbx), %r14
	callq	gs_program_name
	movq	%rax, %rbp
	callq	gs_revision_number
	movq	%r14, %rdi
	movq	%rbp, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	24(%rbx), %rdi
	movl	$.L.str.63, %esi
	xorl	%eax, %eax
	callq	errprintf
	jmp	.LBB2_44
.LBB2_43:                               # %do.body.134.i
	movq	32(%rsp), %rax          # 8-byte Reload
	movq	160(%rax), %rsi
	movl	$.L.str.43, %edx
	movq	40(%rsp), %rdi          # 8-byte Reload
	callq	cos_dict_put_c_strings
	testl	%eax, %eax
	js	.LBB2_45
.LBB2_44:                               # %if.end.144.i
	xorl	%eax, %eax
.LBB2_45:                               # %cleanup.62
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	pdf_put_image_values, .Lfunc_end2-pdf_put_image_values
	.cfi_endproc

	.globl	pdf_put_image_filters
	.align	16, 0x90
	.type	pdf_put_image_filters,@function
pdf_put_image_filters:                  # @pdf_put_image_filters
	.cfi_startproc
# BB#0:                                 # %entry
	movq	16(%rdx), %rdx
	addq	$32, %rcx
	jmp	pdf_put_filters         # TAILCALL
.Lfunc_end3:
	.size	pdf_put_image_filters, .Lfunc_end3-pdf_put_image_filters
	.cfi_endproc

	.globl	pdf_make_bitmap_matrix
	.align	16, 0x90
	.type	pdf_make_bitmap_matrix,@function
pdf_make_bitmap_matrix:                 # @pdf_make_bitmap_matrix
	.cfi_startproc
# BB#0:                                 # %entry
	cvtsi2ssl	%ecx, %xmm0
	movss	%xmm0, (%rdi)
	movl	$0, 4(%rdi)
	movl	$0, 8(%rdi)
	negl	%r9d
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%r9d, %xmm0
	movss	%xmm0, 12(%rdi)
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%esi, %xmm0
	movss	%xmm0, 16(%rdi)
	addl	%r8d, %edx
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%edx, %xmm0
	movss	%xmm0, 20(%rdi)
	retq
.Lfunc_end4:
	.size	pdf_make_bitmap_matrix, .Lfunc_end4-pdf_make_bitmap_matrix
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	pdf_put_image_matrix
	.align	16, 0x90
	.type	pdf_put_image_matrix,@function
pdf_put_image_matrix:                   # @pdf_put_image_matrix
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp26:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp27:
	.cfi_def_cfa_offset 24
	subq	$40, %rsp
.Ltmp28:
	.cfi_def_cfa_offset 64
.Ltmp29:
	.cfi_offset %rbx, -24
.Ltmp30:
	.cfi_offset %r14, -16
	movsd	%xmm0, 8(%rsp)          # 8-byte Spill
	movq	%rdi, %r14
	movq	.Lpdf_put_image_matrix.imat+16(%rip), %rax
	movq	%rax, 32(%rsp)
	movups	.Lpdf_put_image_matrix.imat(%rip), %xmm1
	movaps	%xmm1, 16(%rsp)
	movsd	.LCPI5_0(%rip), %xmm1   # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	leaq	16(%rsp), %rbx
	xorpd	%xmm0, %xmm0
	movq	%rsi, %rdi
	movq	%rbx, %rsi
	callq	gs_matrix_translate
	movq	%rbx, %rdi
	movsd	.LCPI5_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	8(%rsp), %xmm1          # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movq	%rbx, %rsi
	callq	gs_matrix_scale
	movl	$.L.str.46, %esi
	movl	$.L.str.47, %ecx
	movq	%r14, %rdi
	movq	%rbx, %rdx
	callq	pdf_put_matrix
	addq	$40, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end5:
	.size	pdf_put_image_matrix, .Lfunc_end5-pdf_put_image_matrix
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	pdf_do_image_by_id
	.align	16, 0x90
	.type	pdf_do_image_by_id,@function
pdf_do_image_by_id:                     # @pdf_do_image_by_id
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp31:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp32:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp33:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp34:
	.cfi_def_cfa_offset 40
	subq	$40, %rsp
.Ltmp35:
	.cfi_def_cfa_offset 80
.Ltmp36:
	.cfi_offset %rbx, -40
.Ltmp37:
	.cfi_offset %r12, -32
.Ltmp38:
	.cfi_offset %r14, -24
.Ltmp39:
	.cfi_offset %r15, -16
	movq	%rcx, %r14
	movq	%rsi, %rbx
	movsd	%xmm0, 8(%rsp)          # 8-byte Spill
	movq	%rdi, %r15
	testl	%edx, %edx
	je	.LBB6_2
# BB#1:                                 # %if.then
	movl	$1, %esi
	movq	%r15, %rdi
	callq	pdf_open_contents
	testl	%eax, %eax
	js	.LBB6_5
.LBB6_2:                                # %if.end.2
	testq	%rbx, %rbx
	je	.LBB6_4
# BB#3:                                 # %if.then.4
	movq	.Lpdf_put_image_matrix.imat+16(%rip), %rax
	movq	%rax, 32(%rsp)
	movups	.Lpdf_put_image_matrix.imat(%rip), %xmm0
	movaps	%xmm0, 16(%rsp)
	movsd	.LCPI6_0(%rip), %xmm1   # xmm1 = mem[0],zero
	subsd	8(%rsp), %xmm1          # 8-byte Folded Reload
	leaq	16(%rsp), %r12
	xorps	%xmm0, %xmm0
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	gs_matrix_translate
	movq	%r12, %rdi
	movsd	.LCPI6_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	8(%rsp), %xmm1          # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movq	%r12, %rsi
	callq	gs_matrix_scale
	movl	$.L.str.46, %esi
	movl	$.L.str.47, %ecx
	movq	%r15, %rdi
	movq	%r12, %rdx
	callq	pdf_put_matrix
.LBB6_4:                                # %if.end.5
	movq	5848(%r15), %rdi
	movl	$.L.str.48, %esi
	movq	%r14, %rdx
	callq	pprintld1
	xorl	%eax, %eax
.LBB6_5:                                # %return
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end6:
	.size	pdf_do_image_by_id, .Lfunc_end6-pdf_do_image_by_id
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI7_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	pdf_do_image
	.align	16, 0x90
	.type	pdf_do_image,@function
pdf_do_image:                           # @pdf_do_image
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp40:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp41:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp42:
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
.Ltmp43:
	.cfi_def_cfa_offset 48
.Ltmp44:
	.cfi_offset %rbx, -32
.Ltmp45:
	.cfi_offset %r14, -24
.Ltmp46:
	.cfi_offset %rbp, -16
	movl	%ecx, %r14d
	movq	%rdx, %rbx
	movq	%rdi, %rbp
	testq	%rbx, %rbx
	je	.LBB7_1
# BB#2:                                 # %if.then
	cvtsi2sdl	80(%rsi), %xmm1
	cvtsi2sdl	76(%rsi), %xmm0
	divsd	%xmm0, %xmm1
	movsd	%xmm1, 8(%rsp)          # 8-byte Spill
	jmp	.LBB7_3
.LBB7_1:
	movsd	.LCPI7_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	%xmm0, 8(%rsp)          # 8-byte Spill
.LBB7_3:                                # %if.end
	movq	%rsi, %rdi
	callq	pdf_resource_id
	movq	%rbp, %rdi
	movsd	8(%rsp), %xmm0          # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movq	%rbx, %rsi
	movl	%r14d, %edx
	movq	%rax, %rcx
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	pdf_do_image_by_id      # TAILCALL
.Lfunc_end7:
	.size	pdf_do_image, .Lfunc_end7-pdf_do_image
	.cfi_endproc

	.globl	pdf_image_writer_init
	.align	16, 0x90
	.type	pdf_image_writer_init,@function
pdf_image_writer_init:                  # @pdf_image_writer_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp47:
	.cfi_def_cfa_offset 16
.Ltmp48:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	xorl	%esi, %esi
	movl	$192, %edx
	callq	memset
	movl	$1, 128(%rbx)
	popq	%rbx
	retq
.Lfunc_end8:
	.size	pdf_image_writer_init, .Lfunc_end8-pdf_image_writer_init
	.cfi_endproc

	.globl	pdf_begin_write_image
	.align	16, 0x90
	.type	pdf_begin_write_image,@function
pdf_begin_write_image:                  # @pdf_begin_write_image
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp49:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp50:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp51:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp52:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp53:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp54:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp55:
	.cfi_def_cfa_offset 96
.Ltmp56:
	.cfi_offset %rbx, -56
.Ltmp57:
	.cfi_offset %r12, -48
.Ltmp58:
	.cfi_offset %r13, -40
.Ltmp59:
	.cfi_offset %r14, -32
.Ltmp60:
	.cfi_offset %r15, -24
.Ltmp61:
	.cfi_offset %rbp, -16
	movl	%r8d, 28(%rsp)          # 4-byte Spill
	movq	%rdx, %rbp
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movl	96(%rsp), %eax
	movq	5848(%r14), %r13
	movq	160(%rbx), %r12
	xorl	%r15d, %r15d
	testq	%r12, %r12
	je	.LBB9_2
# BB#1:                                 # %cond.false
	movslq	128(%rbx), %r15
.LBB9_2:                                # %cond.end
	testl	%eax, %eax
	je	.LBB9_5
# BB#3:                                 # %if.then
	movq	$0, 144(%rbx)
	movq	$pdf_image_names_short, 136(%rbx)
	movl	$.L.str.49, %esi
	movq	%r14, %rdi
	callq	cos_stream_alloc
	movq	%rax, %rbp
	movl	$-25, %eax
	testq	%rbp, %rbp
	je	.LBB9_16
# BB#4:                                 # %if.end
	movq	$.L.str.50, 168(%rbx)
	movq	$0, 176(%rbx)
	jmp	.LBB9_12
.LBB9_5:                                # %if.else
	movl	%ecx, 4(%rsp)           # 4-byte Spill
	movq	%r13, 16(%rsp)          # 8-byte Spill
	movq	$-1, %r8
	testq	%r9, %r9
	je	.LBB9_7
# BB#6:                                 # %cond.true.9
	movq	8(%r9), %r8
.LBB9_7:                                # %cond.end.12
	movq	%r9, 8(%rsp)            # 8-byte Spill
	leaq	32(%rsp), %rcx
	movl	$4, %esi
	movq	%r14, %rdi
	movq	%rbp, %rdx
	callq	pdf_alloc_resource
	testl	%eax, %eax
	js	.LBB9_16
# BB#8:                                 # %if.end.18
	leaq	184(%rbx), %rax
	leaq	144(%rbx), %rcx
	testq	%r12, %r12
	movq	32(%rsp), %rdx
	cmovneq	%rax, %rcx
	movq	%rdx, (%rcx)
	movq	64(%rdx), %rdi
	movl	$cos_stream_procs, %esi
	callq	cos_become
	movq	32(%rsp), %r13
	movq	%rbp, 16(%r13)
	movq	$pdf_image_names_full, 136(%rbx)
	movq	64(%r13), %rbp
	movq	%rbp, %rdi
	callq	cos_stream_dict
	movl	$.L.str.51, %esi
	movl	$.L.str.52, %edx
	movq	%rax, %rdi
	callq	cos_dict_put_c_strings
	testl	%eax, %eax
	js	.LBB9_16
# BB#9:                                 # %do.end
	testq	%r12, %r12
	movl	4(%rsp), %eax           # 4-byte Reload
	movl	%eax, 72(%r13)
	movl	28(%rsp), %eax          # 4-byte Reload
	movl	%eax, 76(%r13)
	movl	%eax, 80(%r13)
	movq	8(%rsp), %rax           # 8-byte Reload
	jne	.LBB9_11
# BB#10:                                # %if.then.35
	movq	%rax, 176(%rbx)
.LBB9_11:                               # %cleanup.thread
	movq	16(%rsp), %r13          # 8-byte Reload
.LBB9_12:                               # %if.end.40
	movq	22352(%r14), %rax
	movq	%rax, 5848(%r14)
	movl	$.L.str.53, %edx
	movq	%rbp, %rdi
	movq	%r14, %rsi
	callq	cos_write_stream_alloc
	movq	%rax, %rcx
	movq	%rcx, 5848(%r14)
	movl	$-25, %eax
	testq	%rcx, %rcx
	je	.LBB9_16
# BB#13:                                # %if.end.49
	testq	%r12, %r12
	jne	.LBB9_15
# BB#14:                                # %if.then.51
	movq	%rbp, 160(%rbx)
.LBB9_15:                               # %if.end.53
	movl	28(%rsp), %eax          # 4-byte Reload
	movl	%eax, 152(%rbx)
	shlq	$5, %r15
	leaq	(%rbx,%r15), %rsi
	movq	%r14, %rdi
	callq	psdf_begin_binary
	movq	$0, 8(%rbx,%r15)
	movq	%r13, 5848(%r14)
.LBB9_16:                               # %cleanup.60
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end9:
	.size	pdf_begin_write_image, .Lfunc_end9-pdf_begin_write_image
	.cfi_endproc

	.globl	pdf_make_alt_stream
	.align	16, 0x90
	.type	pdf_make_alt_stream,@function
pdf_make_alt_stream:                    # @pdf_make_alt_stream
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp62:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp63:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp64:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp65:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp66:
	.cfi_def_cfa_offset 48
.Ltmp67:
	.cfi_offset %rbx, -40
.Ltmp68:
	.cfi_offset %r12, -32
.Ltmp69:
	.cfi_offset %r14, -24
.Ltmp70:
	.cfi_offset %r15, -16
	movq	%rsi, %r14
	movq	%rdi, %r15
	movq	5848(%r15), %r12
	movl	$.L.str.54, %esi
	callq	cos_stream_alloc
	movq	%rax, %rbx
	movl	$-25, %eax
	testq	%rbx, %rbx
	je	.LBB10_4
# BB#1:                                 # %if.end
	movq	$0, 8(%rbx)
	movq	%rbx, %rdi
	callq	cos_stream_dict
	movl	$.L.str.51, %esi
	movl	$.L.str.52, %edx
	movq	%rax, %rdi
	callq	cos_dict_put_c_strings
	testl	%eax, %eax
	js	.LBB10_4
# BB#2:                                 # %do.end
	movl	$.L.str.54, %edx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	cos_write_stream_alloc
	movq	%rax, %rcx
	movq	%rcx, 16(%r14)
	testq	%rcx, %rcx
	movl	$-25, %eax
	je	.LBB10_4
# BB#3:                                 # %if.end.11
	movq	%r15, 24(%r14)
	movq	1728(%r15), %rax
	movq	%rax, (%r14)
	movq	%rcx, 5848(%r15)
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	psdf_begin_binary
	movq	%r12, 5848(%r15)
	movq	$0, 8(%r14)
.LBB10_4:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end10:
	.size	pdf_make_alt_stream, .Lfunc_end10-pdf_make_alt_stream
	.cfi_endproc

	.globl	pdf_begin_image_data
	.align	16, 0x90
	.type	pdf_begin_image_data,@function
pdf_begin_image_data:                   # @pdf_begin_image_data
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp71:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp72:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp73:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp74:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp75:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp76:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp77:
	.cfi_def_cfa_offset 64
.Ltmp78:
	.cfi_offset %rbx, -56
.Ltmp79:
	.cfi_offset %r12, -48
.Ltmp80:
	.cfi_offset %r13, -40
.Ltmp81:
	.cfi_offset %r14, -32
.Ltmp82:
	.cfi_offset %r15, -24
.Ltmp83:
	.cfi_offset %rbp, -16
	movq	%rcx, %r12
	movq	%rdx, %rbp
	movq	%rsi, %r13
	movq	%rdi, %r14
	movslq	%r8d, %rbx
	shlq	$5, %rbx
	movq	16(%r13,%rbx), %rdi
	callq	cos_stream_from_pipeline
	movq	%rax, %rdi
	callq	cos_stream_dict
	movq	%rax, %r15
	movq	136(%r13), %rcx
	movq	%r15, %rdi
	movq	%r14, %rsi
	movq	%rbp, %rdx
	movq	%r12, %r8
	callq	pdf_put_image_values
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB11_2
# BB#1:                                 # %if.end
	leaq	16(%r13,%rbx), %rax
	movq	136(%r13), %rcx
	movq	(%rax), %rdx
	addq	$32, %rcx
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	pdf_put_filters
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jns	.LBB11_5
.LBB11_2:                               # %if.then.9
	cmpq	$0, 144(%r13)
	jne	.LBB11_4
# BB#3:                                 # %if.then.10
	movq	160(%r13), %rdi
	movl	$.L.str.49, %esi
	callq	cos_free
.LBB11_4:                               # %if.end.11
	movq	$0, 160(%r13)
.LBB11_5:                               # %if.end.13
	movl	%ebp, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end11:
	.size	pdf_begin_image_data, .Lfunc_end11-pdf_begin_image_data
	.cfi_endproc

	.globl	pdf_complete_image_data
	.align	16, 0x90
	.type	pdf_complete_image_data,@function
pdf_complete_image_data:                # @pdf_complete_image_data
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp84:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp85:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp86:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp87:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp88:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp89:
	.cfi_def_cfa_offset 56
	subq	$296, %rsp              # imm = 0x128
.Ltmp90:
	.cfi_def_cfa_offset 352
.Ltmp91:
	.cfi_offset %rbx, -56
.Ltmp92:
	.cfi_offset %r12, -48
.Ltmp93:
	.cfi_offset %r13, -40
.Ltmp94:
	.cfi_offset %r14, -32
.Ltmp95:
	.cfi_offset %r15, -24
.Ltmp96:
	.cfi_offset %rbp, -16
	movl	%r8d, %ebp
	movq	%rsi, %r14
	movl	152(%r14), %esi
	xorl	%eax, %eax
	subl	%edx, %esi
	je	.LBB12_14
# BB#1:                                 # %if.then
	movq	16(%r14), %rdx
	movq	224(%rdx), %rdx
	cmpq	s_DCTE_template+16(%rip), %rdx
	je	.LBB12_3
# BB#2:                                 # %if.then
	cmpq	s_PNGPE_template+16(%rip), %rdx
	jne	.LBB12_14
.LBB12_3:                               # %for.cond.10.preheader.lr.ph
	movl	%esi, 8(%rsp)           # 4-byte Spill
	imull	%ecx, %ebp
	movq	%rbp, 16(%rsp)          # 8-byte Spill
	leal	7(%rbp), %eax
	sarl	$31, %eax
	shrl	$29, %eax
	leal	7(%rbp,%rax), %r15d
	sarl	$3, %r15d
	movl	%r15d, 12(%rsp)         # 4-byte Spill
	leaq	32(%rsp), %r12
	movl	$128, %esi
	movl	$256, %edx              # imm = 0x100
	movq	%r12, %rdi
	callq	memset
	movl	128(%r14), %eax
	leaq	28(%rsp), %rbx
.LBB12_4:                               # %for.cond.10.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_5 Depth 2
                                        #       Child Loop BB12_8 Depth 3
	testl	%eax, %eax
	movl	$0, %r13d
	jle	.LBB12_12
.LBB12_5:                               # %for.cond.13.preheader
                                        #   Parent Loop BB12_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB12_8 Depth 3
	testl	%ebp, %ebp
	jle	.LBB12_11
# BB#6:                                 # %for.body.15.lr.ph
                                        #   in Loop: Header=BB12_5 Depth=2
	movq	%r13, %rax
	shlq	$5, %rax
	movq	%r14, %rbp
	leaq	16(%rbp,%rax), %r14
	.align	16, 0x90
.LBB12_8:                               # %for.body.15
                                        #   Parent Loop BB12_4 Depth=1
                                        #     Parent Loop BB12_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	(%r14), %rdi
	cmpl	$256, %r15d             # imm = 0x100
	movl	$256, %edx              # imm = 0x100
	cmovbl	%r15d, %edx
	movq	%r12, %rsi
	movq	%rbx, %rcx
	callq	sputs
	testl	%eax, %eax
	js	.LBB12_9
# BB#7:                                 # %for.cond.13
                                        #   in Loop: Header=BB12_8 Depth=3
	cmpl	$257, %r15d             # imm = 0x101
	leal	-256(%r15), %eax
	movl	%eax, %r15d
	jge	.LBB12_8
# BB#10:                                # %for.cond.13.for.inc.25_crit_edge
                                        #   in Loop: Header=BB12_5 Depth=2
	movq	%rbp, %r14
	movl	128(%r14), %eax
	movq	16(%rsp), %rbp          # 8-byte Reload
	movl	12(%rsp), %r15d         # 4-byte Reload
.LBB12_11:                              # %for.inc.25
                                        #   in Loop: Header=BB12_5 Depth=2
	incq	%r13
	movslq	%eax, %rcx
	cmpq	%rcx, %r13
	jl	.LBB12_5
.LBB12_12:                              # %for.inc.27
                                        #   in Loop: Header=BB12_4 Depth=1
	decl	8(%rsp)                 # 4-byte Folded Spill
	jne	.LBB12_4
# BB#13:                                # %cleanup
	xorl	%eax, %eax
	jmp	.LBB12_14
.LBB12_9:                               # %return.critedge
	movl	$-12, %eax
.LBB12_14:                              # %return
	addq	$296, %rsp              # imm = 0x128
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end12:
	.size	pdf_complete_image_data, .Lfunc_end12-pdf_complete_image_data
	.cfi_endproc

	.globl	pdf_end_image_binary
	.align	16, 0x90
	.type	pdf_end_image_binary,@function
pdf_end_image_binary:                   # @pdf_end_image_binary
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp97:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp98:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp99:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp100:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp101:
	.cfi_def_cfa_offset 48
	subq	$256, %rsp              # imm = 0x100
.Ltmp102:
	.cfi_def_cfa_offset 304
.Ltmp103:
	.cfi_offset %rbx, -48
.Ltmp104:
	.cfi_offset %r12, -40
.Ltmp105:
	.cfi_offset %r14, -32
.Ltmp106:
	.cfi_offset %r15, -24
.Ltmp107:
	.cfi_offset %rbp, -16
	movl	%edx, %r15d
	movq	%rsi, %rbx
	cmpl	$3, 128(%rbx)
	jl	.LBB13_2
# BB#1:                                 # %if.then
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	pdf_choose_compression
	jmp	.LBB13_3
.LBB13_2:                               # %if.else
	movq	%rbx, %rdi
	callq	psdf_end_binary
.LBB13_3:                               # %if.end
	movl	%eax, %r14d
	xorl	%eax, %eax
	cmpl	%r15d, 152(%rbx)
	je	.LBB13_11
# BB#4:                                 # %if.then.3
	movq	160(%rbx), %rdi
	callq	cos_stream_dict
	movq	%rax, %r12
	movq	136(%rbx), %rax
	movq	144(%rax), %rbp
	movq	%rbp, %rdi
	callq	strlen
	movq	%r12, %rdi
	movq	%rbp, %rsi
	movl	%eax, %edx
	callq	cos_dict_find
	movq	%rax, %rbp
	testq	%rbp, %rbp
	je	.LBB13_8
# BB#5:                                 # %lor.lhs.false
	movl	16(%rbp), %edx
	cmpq	$255, %rdx
	jbe	.LBB13_6
.LBB13_8:                               # %cleanup
	movl	$-15, %eax
	jmp	.LBB13_12
.LBB13_6:                               # %if.end.13
	movq	8(%rbp), %rsi
	leaq	(%rsp), %r12
	movq	%r12, %rdi
	callq	strncpy
	movl	16(%rbp), %eax
	movb	$0, (%rsp,%rax)
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%r12, %rdi
	callq	strtol
	movl	152(%rbx), %ecx
	cmpl	%ecx, %eax
	jne	.LBB13_7
# BB#9:                                 # %if.else.41
	movq	160(%rbx), %rdi
	callq	cos_stream_dict
	movq	136(%rbx), %rcx
	movq	144(%rcx), %rsi
	movq	%rax, %rdi
	movl	%r15d, %edx
	jmp	.LBB13_10
.LBB13_7:                               # %if.then.30
	cvtsi2ssl	%eax, %xmm0
	cvtsi2ssl	%ecx, %xmm1
	divss	%xmm1, %xmm0
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%r15d, %xmm1
	mulss	%xmm0, %xmm1
	cvttss2si	%xmm1, %ebp
	movq	160(%rbx), %rdi
	callq	cos_stream_dict
	movq	136(%rbx), %rcx
	movq	144(%rcx), %rsi
	movq	%rax, %rdi
	movl	%ebp, %edx
.LBB13_10:                              # %if.end.50
	callq	cos_dict_put_c_key_int
.LBB13_11:                              # %if.end.50
	testl	%r14d, %r14d
	cmovsl	%r14d, %eax
.LBB13_12:                              # %cleanup.53
	addq	$256, %rsp              # imm = 0x100
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end13:
	.size	pdf_end_image_binary, .Lfunc_end13-pdf_end_image_binary
	.cfi_endproc

	.globl	pdf_choose_compression
	.align	16, 0x90
	.type	pdf_choose_compression,@function
pdf_choose_compression:                 # @pdf_choose_compression
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp108:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp109:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp110:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp111:
	.cfi_def_cfa_offset 40
	subq	$24, %rsp
.Ltmp112:
	.cfi_def_cfa_offset 64
.Ltmp113:
	.cfi_offset %rbx, -40
.Ltmp114:
	.cfi_offset %r14, -32
.Ltmp115:
	.cfi_offset %r15, -24
.Ltmp116:
	.cfi_offset %rbp, -16
	movl	%esi, %r14d
	movq	%rdi, %rbx
	movq	16(%rbx), %rdi
	callq	cos_stream_from_pipeline
	movq	%rax, %r15
	movq	%r15, (%rsp)
	movq	48(%rbx), %rdi
	callq	cos_stream_from_pipeline
	movq	%rax, %rbp
	movq	%rbp, 8(%rsp)
	testl	%r14d, %r14d
	je	.LBB14_4
# BB#1:                                 # %if.then
	leaq	16(%rbx), %rdi
	movq	8(%rbx), %rsi
	callq	s_close_filters
	movl	$-12, %ecx
	testl	%eax, %eax
	js	.LBB14_18
# BB#2:                                 # %if.end
	leaq	48(%rbx), %rdi
	movq	40(%rbx), %rsi
	callq	s_close_filters
	testl	%eax, %eax
	jns	.LBB14_4
# BB#3:                                 # %if.then.22
	movq	$-1, 56(%rbp)
.LBB14_4:                               # %if.end.25
	movq	%r15, %rdi
	callq	cos_stream_length
	movq	%rax, %r15
	movq	%rbp, %rdi
	callq	cos_stream_length
	movq	%rax, %rbp
	testl	%r14d, %r14d
	je	.LBB14_6
# BB#5:                                 # %land.lhs.true.i
	cmpq	%rbp, %r15
	movl	$1, %eax
	jg	.LBB14_7
	jmp	.LBB14_15
.LBB14_6:                               # %lor.lhs.false.i
	movl	$1, %eax
.LBB14_7:                               # %lor.lhs.false.i
	cmpq	$-1, %rbp
	je	.LBB14_15
# BB#8:                                 # %if.else.i
	movq	80(%rbx), %rax
	movq	256(%rax), %rdi
	movl	%r14d, %esi
	callq	s_compr_chooser__get_choice
	testq	%rbp, %rbp
	jle	.LBB14_12
# BB#9:                                 # %if.else.i
	testq	%r15, %r15
	jle	.LBB14_12
# BB#10:                                # %if.else.i
	testl	%eax, %eax
	je	.LBB14_12
# BB#11:                                # %if.then.11.i
	decl	%eax
	jmp	.LBB14_15
.LBB14_12:                              # %if.else.12.i
	movabsq	$6148914691236517206, %rdi # imm = 0x5555555555555556
	movq	%r15, %rax
	imulq	%rdi
	cmpq	$1048577, %r15          # imm = 0x100001
	jl	.LBB14_14
# BB#13:                                # %if.else.12.i
	movq	%rdx, %rsi
	shrq	$63, %rsi
	addq	%rdx, %rsi
	xorl	%eax, %eax
	cmpq	%rbp, %rsi
	jg	.LBB14_15
.LBB14_14:                              # %if.else.16.i
	cmpq	$1048576, %rbp          # imm = 0x100000
	setg	%cl
	movq	%rbp, %rax
	imulq	%rdi
	movq	%rdx, %rax
	shrq	$63, %rax
	addq	%rdx, %rax
	cmpq	%r15, %rax
	setg	%al
	andb	%cl, %al
	movzbl	%al, %edx
	movl	$1, %eax
	xorl	%ecx, %ecx
	orl	%r14d, %edx
	je	.LBB14_18
.LBB14_15:                              # %if.end.25.i
	movl	$1, %r14d
	subl	%eax, %r14d
	movslq	%eax, %rbp
	movq	%rbp, %rax
	shlq	$5, %rax
	leaq	16(%rbx,%rax), %rdi
	movq	8(%rbx,%rax), %rsi
	callq	s_close_filters
	movq	(%rsp,%rbp,8), %rbp
	movq	(%rbp), %rax
	movl	$.L.str.64, %esi
	movq	%rbp, %rdi
	callq	*(%rax)
	movb	$1, 50(%rbp)
	movslq	%r14d, %rbp
	movq	%rbp, %rax
	shlq	$5, %rax
	movq	16(%rbx,%rax), %rax
	movq	%rax, 16(%rbx)
	leaq	80(%rbx), %rdi
	movq	72(%rbx), %rsi
	callq	s_close_filters
	xorps	%xmm0, %xmm0
	movups	%xmm0, 72(%rbx)
	movups	%xmm0, 40(%rbx)
	movq	144(%rbx), %rax
	movq	64(%rax), %rcx
	movq	8(%rcx), %rcx
	movq	(%rsp,%rbp,8), %rdx
	movq	%rcx, 8(%rdx)
	movq	%rdx, 64(%rax)
	movq	%rdx, 160(%rbx)
	movl	128(%rbx), %eax
	cmpl	$4, %eax
	jl	.LBB14_17
# BB#16:                                # %if.then.75.i
	movups	96(%rbx), %xmm1
	movups	112(%rbx), %xmm2
	movups	%xmm2, 48(%rbx)
	movups	%xmm1, 32(%rbx)
	movups	%xmm0, 104(%rbx)
.LBB14_17:                              # %if.end.86.i
	addl	$-2, %eax
	movl	%eax, 128(%rbx)
	xorl	%ecx, %ecx
.LBB14_18:                              # %cleanup.26
	movl	%ecx, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end14:
	.size	pdf_choose_compression, .Lfunc_end14-pdf_choose_compression
	.cfi_endproc

	.globl	pdf_end_write_image
	.align	16, 0x90
	.type	pdf_end_write_image,@function
pdf_end_write_image:                    # @pdf_end_write_image
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
	pushq	%rax
.Ltmp123:
	.cfi_def_cfa_offset 64
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
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	144(%rbx), %r15
	testq	%r15, %r15
	je	.LBB15_13
# BB#1:                                 # %if.then
	movq	176(%rbx), %r12
	addq	$144, %rbx
	testq	%r12, %r12
	je	.LBB15_6
# BB#2:                                 # %if.then.4
	movq	64(%r15), %r13
	cmpl	$0, 9524(%r14)
	je	.LBB15_4
# BB#3:                                 # %if.then.6
	movl	$.L.str.55, %esi
	movl	$1, %edx
	movq	%r12, %rdi
	callq	cos_dict_put_c_key_bool
	testl	%eax, %eax
	js	.LBB15_16
.LBB15_4:                               # %if.end.8
	movq	%r13, %rdi
	callq	cos_stream_dict
	movq	%rax, %rdi
	movq	%r12, %rsi
	callq	cos_dict_move_all
	testl	%eax, %eax
	js	.LBB15_16
# BB#5:                                 # %if.end.13
	movl	$1, 24(%r15)
	movl	$200, %edx
	movq	%r12, %rdi
	movq	%r13, %rsi
	callq	memcpy
	movq	%r12, 64(%r15)
	movq	(%rbx), %r15
	jmp	.LBB15_12
.LBB15_13:                              # %if.else.49
	movq	5848(%r14), %r15
	movl	9648(%r14), %ebp
	movl	$.L.str.57, %esi
	movq	%r15, %rdi
	callq	stream_puts
	movq	160(%rbx), %rdi
	movq	%r14, %rsi
	callq	cos_stream_elements_write
	movl	$.L.str.58, %esi
	cmpl	$0, 8852(%r14)
	jne	.LBB15_15
# BB#14:                                # %select.mid
	movl	$.L.str.59, %esi
.LBB15_15:                              # %select.end
	movq	%r15, %rdi
	callq	stream_puts
	movl	$0, 9648(%r14)
	movq	160(%rbx), %rdi
	movq	%r14, %rsi
	callq	cos_stream_contents_write
	movl	%ebp, 9648(%r14)
	movq	168(%rbx), %rdx
	movl	$.L.str.60, %esi
	movq	%r15, %rdi
	callq	pprints1
	movq	160(%rbx), %rdi
	movl	$.L.str.61, %esi
	callq	cos_free
	movl	$1, %eax
	jmp	.LBB15_16
.LBB15_6:                               # %if.else
	cmpl	$0, 24(%r15)
	jne	.LBB15_12
# BB#7:                                 # %if.then.18
	cmpl	$0, 30728(%r14)
	je	.LBB15_10
# BB#8:                                 # %if.then.20
	movl	72(%r15), %r12d
	movl	76(%r15), %ebp
	movl	$4, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	pdf_substitute_resource
	testl	%eax, %eax
	js	.LBB15_16
# BB#9:                                 # %if.end.28
	movq	(%rbx), %r15
	movl	%ebp, 76(%r15)
	movl	%r12d, 72(%r15)
	jmp	.LBB15_11
.LBB15_10:                              # %if.else.34
	xorl	%edx, %edx
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	pdf_reserve_object_id
	movq	(%rbx), %r15
.LBB15_11:                              # %if.end.36
	movq	26664(%r14), %rax
	orq	%rax, 56(%r15)
.LBB15_12:                              # %if.end.39
	movq	30448(%r14), %rsi
	movl	$.L.str.56, %edx
	movq	%r14, %rdi
	movq	%r15, %rcx
	callq	pdf_add_resource
	movl	%eax, %ecx
	sarl	$31, %eax
	andl	%ecx, %eax
.LBB15_16:                              # %cleanup.64
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end15:
	.size	pdf_end_write_image, .Lfunc_end15-pdf_end_write_image
	.cfi_endproc

	.globl	pdf_copy_mask_bits
	.align	16, 0x90
	.type	pdf_copy_mask_bits,@function
pdf_copy_mask_bits:                     # @pdf_copy_mask_bits
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
	subq	$88, %rsp
.Ltmp136:
	.cfi_def_cfa_offset 144
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
	movl	%r9d, %r12d
	movl	%r12d, 28(%rsp)         # 4-byte Spill
	movl	%ecx, 68(%rsp)          # 4-byte Spill
	movl	%edx, %r14d
	movq	%rsi, 56(%rsp)          # 8-byte Spill
	movq	%rdi, %rbx
	testl	%r12d, %r12d
	jle	.LBB16_21
# BB#1:                                 # %for.body.lr.ph
	movl	%r14d, %eax
	sarl	$3, %eax
	movslq	%eax, %rdx
	movq	%rdx, 48(%rsp)          # 8-byte Spill
	andl	$7, %r14d
	movq	%r8, 16(%rsp)           # 8-byte Spill
	leal	7(%r8), %eax
	sarl	$3, %eax
	movl	%eax, 32(%rsp)          # 4-byte Spill
	movl	$8, %eax
	subl	%r14d, %eax
	movl	%eax, 84(%rsp)          # 4-byte Spill
	leal	(%r14,%r8), %eax
	movl	%eax, 36(%rsp)          # 4-byte Spill
	movzbl	144(%rsp), %r13d
	leal	-9(%r14,%r8), %eax
	shrl	$3, %eax
	leal	(,%rax,8), %ecx
	negl	%ecx
	leal	-8(%r8,%rcx), %ecx
	movl	%ecx, 12(%rsp)          # 4-byte Spill
	leaq	(%rax,%rdx), %rax
	movq	56(%rsp), %rcx          # 8-byte Reload
	leaq	1(%rcx,%rax), %rax
	movq	%rax, (%rsp)            # 8-byte Spill
	movslq	68(%rsp), %rax          # 4-byte Folded Reload
	movq	%rax, 40(%rsp)          # 8-byte Spill
	xorl	%edx, %edx
	movl	$0, 80(%rsp)            # 4-byte Folded Spill
	.align	16, 0x90
.LBB16_2:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_11 Depth 2
                                        #     Child Loop BB16_4 Depth 2
	movq	%rdx, %rax
	imulq	40(%rsp), %rax          # 8-byte Folded Reload
	movq	56(%rsp), %rcx          # 8-byte Reload
	leaq	(%rax,%rcx), %r15
	addq	48(%rsp), %r15          # 8-byte Folded Reload
	testl	%r14d, %r14d
	je	.LBB16_3
# BB#8:                                 # %if.else
                                        #   in Loop: Header=BB16_2 Depth=1
	movl	36(%rsp), %eax          # 4-byte Reload
	cmpl	$9, %eax
	jl	.LBB16_9
# BB#10:                                #   in Loop: Header=BB16_2 Depth=1
	movq	%rdx, 72(%rsp)          # 8-byte Spill
	movl	%eax, %r12d
	movslq	80(%rsp), %rax          # 4-byte Folded Reload
	movq	(%rsp), %rdx            # 8-byte Reload
	leaq	(%rax,%rdx), %rbp
	.align	16, 0x90
.LBB16_11:                              # %for.body.29
                                        #   Parent Loop BB16_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	120(%rbx), %rax
	cmpq	128(%rbx), %rax
	jae	.LBB16_13
# BB#12:                                # %cond.true.38
                                        #   in Loop: Header=BB16_11 Depth=2
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rbx)
	movzbl	(%r15), %edx
	movb	%r14b, %cl
	shll	%cl, %edx
	movzbl	1(%r15), %esi
	incq	%r15
	movl	84(%rsp), %ecx          # 4-byte Reload
	shrl	%cl, %esi
	addl	%edx, %esi
	xorl	%r13d, %esi
	movb	%sil, 1(%rax)
	jmp	.LBB16_14
	.align	16, 0x90
.LBB16_13:                              # %cond.false.53
                                        #   in Loop: Header=BB16_11 Depth=2
	movzbl	(%r15), %eax
	movb	%r14b, %cl
	shll	%cl, %eax
	movzbl	1(%r15), %edx
	incq	%r15
	movl	84(%rsp), %ecx          # 4-byte Reload
	shrl	%cl, %edx
	addl	%eax, %edx
	xorl	%r13d, %edx
	movzbl	%dl, %esi
	movq	%rbx, %rdi
	callq	spputc
.LBB16_14:                              # %for.inc.66
                                        #   in Loop: Header=BB16_11 Depth=2
	addl	$-8, %r12d
	cmpl	$8, %r12d
	jg	.LBB16_11
# BB#15:                                #   in Loop: Header=BB16_2 Depth=1
	movl	12(%rsp), %eax          # 4-byte Reload
	movl	28(%rsp), %r12d         # 4-byte Reload
	jmp	.LBB16_16
	.align	16, 0x90
.LBB16_3:                               # %if.then
                                        #   in Loop: Header=BB16_2 Depth=1
	movq	%rdx, 72(%rsp)          # 8-byte Spill
	movl	32(%rsp), %eax          # 4-byte Reload
	testl	%eax, %eax
	movl	%eax, %ebp
	jle	.LBB16_20
	.align	16, 0x90
.LBB16_4:                               # %for.body.7
                                        #   Parent Loop BB16_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	120(%rbx), %rax
	cmpq	128(%rbx), %rax
	jae	.LBB16_6
# BB#5:                                 # %cond.true
                                        #   in Loop: Header=BB16_4 Depth=2
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rbx)
	movb	(%r15), %cl
	xorb	144(%rsp), %cl
	movb	%cl, 1(%rax)
	jmp	.LBB16_7
	.align	16, 0x90
.LBB16_6:                               # %cond.false
                                        #   in Loop: Header=BB16_4 Depth=2
	movb	(%r15), %al
	xorb	144(%rsp), %al
	movzbl	%al, %esi
	movq	%rbx, %rdi
	callq	spputc
.LBB16_7:                               # %for.inc
                                        #   in Loop: Header=BB16_4 Depth=2
	incq	%r15
	decl	%ebp
	jne	.LBB16_4
	jmp	.LBB16_20
	.align	16, 0x90
.LBB16_9:                               #   in Loop: Header=BB16_2 Depth=1
	movq	%rdx, 72(%rsp)          # 8-byte Spill
	movq	16(%rsp), %rax          # 8-byte Reload
	movq	%r15, %rbp
.LBB16_16:                              # %for.end.69
                                        #   in Loop: Header=BB16_2 Depth=1
	testl	%eax, %eax
	jle	.LBB16_20
# BB#17:                                # %if.then.72
                                        #   in Loop: Header=BB16_2 Depth=1
	movq	120(%rbx), %rdx
	cmpq	128(%rbx), %rdx
	jae	.LBB16_19
# BB#18:                                # %cond.true.81
                                        #   in Loop: Header=BB16_2 Depth=1
	leaq	1(%rdx), %rcx
	movq	%rcx, 120(%rbx)
	movzbl	(%rbp), %esi
	movb	%r14b, %cl
	shll	%cl, %esi
	xorl	%r13d, %esi
	movl	$65280, %edi            # imm = 0xFF00
	movb	%al, %cl
	shrl	%cl, %edi
	andl	%esi, %edi
	movb	%dil, 1(%rdx)
	jmp	.LBB16_20
.LBB16_19:                              # %cond.false.98
                                        #   in Loop: Header=BB16_2 Depth=1
	movzbl	(%rbp), %edx
	movb	%r14b, %cl
	shll	%cl, %edx
	xorl	%r13d, %edx
	movl	$65280, %esi            # imm = 0xFF00
	movb	%al, %cl
	shrl	%cl, %esi
	andl	%edx, %esi
	movzbl	%sil, %esi
	movq	%rbx, %rdi
	callq	spputc
	.align	16, 0x90
.LBB16_20:                              # %if.end.111
                                        #   in Loop: Header=BB16_2 Depth=1
	movq	72(%rsp), %rdx          # 8-byte Reload
	incq	%rdx
	movl	80(%rsp), %eax          # 4-byte Reload
	addl	68(%rsp), %eax          # 4-byte Folded Reload
	movl	%eax, 80(%rsp)          # 4-byte Spill
	cmpl	%r12d, %edx
	jne	.LBB16_2
.LBB16_21:                              # %for.end.114
	xorl	%eax, %eax
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end16:
	.size	pdf_copy_mask_bits, .Lfunc_end16-pdf_copy_mask_bits
	.cfi_endproc

	.globl	pdf_copy_color_bits
	.align	16, 0x90
	.type	pdf_copy_color_bits,@function
pdf_copy_color_bits:                    # @pdf_copy_color_bits
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp143:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp144:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp145:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp146:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp147:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp148:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp149:
	.cfi_def_cfa_offset 64
.Ltmp150:
	.cfi_offset %rbx, -56
.Ltmp151:
	.cfi_offset %r12, -48
.Ltmp152:
	.cfi_offset %r13, -40
.Ltmp153:
	.cfi_offset %r14, -32
.Ltmp154:
	.cfi_offset %r15, -24
.Ltmp155:
	.cfi_offset %rbp, -16
	movl	%r9d, %ebx
	movl	%r8d, %r14d
	movq	%rsi, %rbp
	movq	%rdi, %r15
	testl	%ebx, %ebx
	jle	.LBB17_3
# BB#1:                                 # %for.body.lr.ph
	movl	64(%rsp), %eax
	imull	%eax, %edx
	imull	%eax, %r14d
	movslq	%edx, %rax
	addq	%rax, %rbp
	movslq	%ecx, %r13
	leaq	4(%rsp), %r12
	.align	16, 0x90
.LBB17_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%r15, %rdi
	movq	%rbp, %rsi
	movl	%r14d, %edx
	movq	%r12, %rcx
	callq	sputs
	addq	%r13, %rbp
	decl	%ebx
	jne	.LBB17_2
.LBB17_3:                               # %for.end
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end17:
	.size	pdf_copy_color_bits, .Lfunc_end17-pdf_copy_color_bits
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"pdf_image_writer"
	.size	.L.str, 17

	.type	st_pdf_image_writer,@object # @st_pdf_image_writer
	.section	.rodata,"a",@progbits
	.globl	st_pdf_image_writer
	.align	8
st_pdf_image_writer:
	.long	192                     # 0xc0
	.zero	4
	.quad	.L.str
	.quad	0
	.quad	0
	.quad	pdf_image_writer_enum_ptrs
	.quad	pdf_image_writer_reloc_ptrs
	.quad	0
	.quad	0
	.size	st_pdf_image_writer, 64

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"/DeviceCMYK"
	.size	.L.str.1, 12

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"/DeviceGray"
	.size	.L.str.2, 12

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"/DeviceRGB"
	.size	.L.str.3, 11

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"/Indexed"
	.size	.L.str.4, 9

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"/ASCII85Decode"
	.size	.L.str.5, 15

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"/ASCIIHexDecode"
	.size	.L.str.6, 16

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"/CCITTFaxDecode"
	.size	.L.str.7, 16

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"/DCTDecode"
	.size	.L.str.8, 11

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"/DecodeParms"
	.size	.L.str.9, 13

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"/Filter"
	.size	.L.str.10, 8

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"/FlateDecode"
	.size	.L.str.11, 13

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"/LZWDecode"
	.size	.L.str.12, 11

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"/RunLengthDecode"
	.size	.L.str.13, 17

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"/JBIG2Decode"
	.size	.L.str.14, 13

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"/JPXDecode"
	.size	.L.str.15, 11

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"/BitsPerComponent"
	.size	.L.str.16, 18

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"/ColorSpace"
	.size	.L.str.17, 12

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"/Decode"
	.size	.L.str.18, 8

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"/Height"
	.size	.L.str.19, 8

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"/ImageMask"
	.size	.L.str.20, 11

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"/Interpolate"
	.size	.L.str.21, 13

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"/Width"
	.size	.L.str.22, 7

	.type	pdf_image_names_full,@object # @pdf_image_names_full
	.section	.rodata,"a",@progbits
	.globl	pdf_image_names_full
	.align	8
pdf_image_names_full:
	.quad	.L.str.1
	.quad	.L.str.2
	.quad	.L.str.3
	.quad	.L.str.4
	.quad	.L.str.5
	.quad	.L.str.6
	.quad	.L.str.7
	.quad	.L.str.8
	.quad	.L.str.9
	.quad	.L.str.10
	.quad	.L.str.11
	.quad	.L.str.12
	.quad	.L.str.13
	.quad	.L.str.14
	.quad	.L.str.15
	.quad	.L.str.16
	.quad	.L.str.17
	.quad	.L.str.18
	.quad	.L.str.19
	.quad	.L.str.20
	.quad	.L.str.21
	.quad	.L.str.22
	.size	pdf_image_names_full, 176

	.type	.L.str.23,@object       # @.str.23
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.23:
	.asciz	"/CMYK"
	.size	.L.str.23, 6

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"/G"
	.size	.L.str.24, 3

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"/RGB"
	.size	.L.str.25, 5

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"/I"
	.size	.L.str.26, 3

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"/A85"
	.size	.L.str.27, 5

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"/AHx"
	.size	.L.str.28, 5

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"/CCF"
	.size	.L.str.29, 5

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"/DCT"
	.size	.L.str.30, 5

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"/DP"
	.size	.L.str.31, 4

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"/F"
	.size	.L.str.32, 3

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"/Fl"
	.size	.L.str.33, 4

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"/LZW"
	.size	.L.str.34, 5

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"/RL"
	.size	.L.str.35, 4

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"/???"
	.size	.L.str.36, 5

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"/BPC"
	.size	.L.str.37, 5

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"/CS"
	.size	.L.str.38, 4

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"/D"
	.size	.L.str.39, 3

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"/H"
	.size	.L.str.40, 3

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"/IM"
	.size	.L.str.41, 4

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"/W"
	.size	.L.str.42, 3

	.type	pdf_image_names_short,@object # @pdf_image_names_short
	.section	.rodata,"a",@progbits
	.globl	pdf_image_names_short
	.align	8
pdf_image_names_short:
	.quad	.L.str.23
	.quad	.L.str.24
	.quad	.L.str.25
	.quad	.L.str.26
	.quad	.L.str.27
	.quad	.L.str.28
	.quad	.L.str.29
	.quad	.L.str.30
	.quad	.L.str.31
	.quad	.L.str.32
	.quad	.L.str.33
	.quad	.L.str.34
	.quad	.L.str.35
	.quad	.L.str.36
	.quad	.L.str.36
	.quad	.L.str.37
	.quad	.L.str.38
	.quad	.L.str.39
	.quad	.L.str.40
	.quad	.L.str.41
	.quad	.L.str.26
	.quad	.L.str.42
	.size	pdf_image_names_short, 176

	.type	.L.str.43,@object       # @.str.43
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.43:
	.asciz	"true"
	.size	.L.str.43, 5

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"pdf_put_image_values(mask)"
	.size	.L.str.44, 27

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"/Mask"
	.size	.L.str.45, 6

	.type	.Lpdf_put_image_matrix.imat,@object # @pdf_put_image_matrix.imat
	.section	.rodata,"a",@progbits
	.align	4
.Lpdf_put_image_matrix.imat:
	.long	1065353216              # float 1
	.long	0                       # float 0
	.long	0                       # float 0
	.long	1065353216              # float 1
	.long	0                       # float 0
	.long	0                       # float 0
	.size	.Lpdf_put_image_matrix.imat, 24

	.type	.L.str.46,@object       # @.str.46
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.46:
	.asciz	"q "
	.size	.L.str.46, 3

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"cm\n"
	.size	.L.str.47, 4

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"/R%ld Do\nQ\n"
	.size	.L.str.48, 12

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"pdf_begin_image_data"
	.size	.L.str.49, 21

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	" Q"
	.size	.L.str.50, 3

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"/Subtype"
	.size	.L.str.51, 9

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"/Image"
	.size	.L.str.52, 7

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"pdf_begin_write_image"
	.size	.L.str.53, 22

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"pdf_make_alt_stream"
	.size	.L.str.54, 20

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"/.Global"
	.size	.L.str.55, 9

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"/XObject"
	.size	.L.str.56, 9

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"BI\n"
	.size	.L.str.57, 4

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"ID "
	.size	.L.str.58, 4

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"ID\n"
	.size	.L.str.59, 4

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"\nEI%s\n"
	.size	.L.str.60, 7

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"pdf_end_write_image"
	.size	.L.str.61, 20

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"pdf_put_pixel_image_values(decode)"
	.size	.L.str.62, 35

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"PDFA doesn't allow images with Interpolate true.\n"
	.size	.L.str.63, 50

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"pdf_image_choose_filter"
	.size	.L.str.64, 24


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
