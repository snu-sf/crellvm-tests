	.text
	.file	"gdevpdti.bc"
	.globl	pdf_write_contents_bitmap
	.align	16, 0x90
	.type	pdf_write_contents_bitmap,@function
pdf_write_contents_bitmap:              # @pdf_write_contents_bitmap
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
	pushq	%rax
.Ltmp6:
	.cfi_def_cfa_offset 64
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
	movq	%rdi, %r14
	movq	5848(%r14), %r12
	cmpl	$0, 284(%r13)
	je	.LBB0_2
# BB#1:                                 # %if.then
	movq	26592(%r14), %rax
	movq	8(%rax), %rax
	movq	16(%rax), %r15
	jmp	.LBB0_3
.LBB0_2:                                # %if.else
	movq	%r14, %rdi
	callq	pdf_obj_ref
	movq	%rax, %r15
.LBB0_3:                                # %if.end
	movq	%r14, %rdi
	movq	%r13, %rsi
	movq	%r15, %rdx
	callq	pdf_write_encoding_ref
	testl	%eax, %eax
	js	.LBB0_16
# BB#4:                                 # %if.end.4
	movl	$.L.str.1, %esi
	movq	%r12, %rdi
	callq	stream_puts
	movq	272(%r13), %rbp
	jmp	.LBB0_5
	.align	16, 0x90
.LBB0_10:                               # %if.end.29
                                        #   in Loop: Header=BB0_5 Depth=1
	movq	(%rbp), %rdi
	callq	pdf_resource_id
	movq	64(%r13), %rcx
	movq	8(%rcx), %rdx
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	pdf_record_usage_by_parent
	movq	16(%rbp), %rbp
.LBB0_5:                                # %if.end.4
                                        # =>This Inner Loop Header: Depth=1
	testq	%rbp, %rbp
	je	.LBB0_11
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB0_5 Depth=1
	cmpl	$0, 284(%r13)
	je	.LBB0_8
# BB#7:                                 # %if.then.17
                                        #   in Loop: Header=BB0_5 Depth=1
	movq	(%rbp), %rdi
	movq	32(%rbp), %rbx
	callq	pdf_resource_id
	movl	$.L.str.2, %esi
	movq	%r12, %rdi
	movq	%rbx, %rdx
	movq	%rax, %rcx
	callq	pprintld2
	jmp	.LBB0_10
	.align	16, 0x90
.LBB0_8:                                # %if.else.20
                                        #   in Loop: Header=BB0_5 Depth=1
	cmpl	$0, 64(%rbp)
	jne	.LBB0_10
# BB#9:                                 # %if.then.22
                                        #   in Loop: Header=BB0_5 Depth=1
	movq	48(%rbp), %rsi
	movl	56(%rbp), %edx
	movq	%r14, %rdi
	callq	pdf_put_name
	movq	(%rbp), %rdi
	callq	pdf_resource_id
	movl	$.L.str.3, %esi
	movq	%r12, %rdi
	movq	%rax, %rdx
	callq	pprintld1
	jmp	.LBB0_10
.LBB0_11:                               # %for.end
	movl	$.L.str.4, %esi
	movq	%r12, %rdi
	callq	stream_puts
	movss	248(%r13), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	252(%r13), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm1
	movss	256(%r13), %xmm2        # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	movss	260(%r13), %xmm3        # xmm3 = mem[0],zero,zero,zero
	cvtss2sd	%xmm3, %xmm3
	movss	264(%r13), %xmm4        # xmm4 = mem[0],zero,zero,zero
	cvtss2sd	%xmm4, %xmm4
	movss	268(%r13), %xmm5        # xmm5 = mem[0],zero,zero,zero
	cvtss2sd	%xmm5, %xmm5
	movl	$.L.str.5, %esi
	movq	%r12, %rdi
	callq	pprintg6
	movq	%r14, %rdi
	movq	%r13, %rsi
	callq	pdf_finish_write_contents_type3
	testl	%eax, %eax
	js	.LBB0_16
# BB#12:                                # %if.end.73
	testq	%r15, %r15
	jle	.LBB0_15
# BB#13:                                # %if.end.73
	movl	284(%r13), %eax
	testl	%eax, %eax
	jne	.LBB0_15
# BB#14:                                # %if.then.82
	xorl	%ecx, %ecx
	movq	%r14, %rdi
	movq	%r13, %rsi
	movq	%r15, %rdx
	callq	pdf_write_encoding
	testl	%eax, %eax
	js	.LBB0_16
.LBB0_15:                               # %if.end.88
	xorl	%eax, %eax
.LBB0_16:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	pdf_write_contents_bitmap, .Lfunc_end0-pdf_write_contents_bitmap
	.cfi_endproc

	.globl	pdf_bitmap_fonts_alloc
	.align	16, 0x90
	.type	pdf_bitmap_fonts_alloc,@function
pdf_bitmap_fonts_alloc:                 # @pdf_bitmap_fonts_alloc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp13:
	.cfi_def_cfa_offset 16
.Ltmp14:
	.cfi_offset %rbx, -16
	movl	$st_pdf_bitmap_fonts, %esi
	movl	$.L.str.6, %edx
	callq	*72(%rdi)
	movq	%rax, %rbx
	xorl	%eax, %eax
	testq	%rbx, %rbx
	je	.LBB1_2
# BB#1:                                 # %if.end
	xorl	%esi, %esi
	movl	$32, %edx
	movq	%rbx, %rdi
	callq	memset
	movl	$-1, 24(%rbx)
	movq	%rbx, %rax
.LBB1_2:                                # %cleanup
	popq	%rbx
	retq
.Lfunc_end1:
	.size	pdf_bitmap_fonts_alloc, .Lfunc_end1-pdf_bitmap_fonts_alloc
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4608083138725491507     # double 1.2
	.text
	.globl	pdf_close_text_page
	.align	16, 0x90
	.type	pdf_close_text_page,@function
pdf_close_text_page:                    # @pdf_close_text_page
	.cfi_startproc
# BB#0:                                 # %entry
	movsd	.LCPI2_0(%rip), %xmm0   # xmm0 = mem[0],zero
	ucomisd	9368(%rdi), %xmm0
	jb	.LBB2_2
# BB#1:                                 # %if.then
	movq	26592(%rdi), %rax
	movq	8(%rax), %rax
	movl	$0, 8(%rax)
.LBB2_2:                                # %if.end
	retq
.Lfunc_end2:
	.size	pdf_close_text_page, .Lfunc_end2-pdf_close_text_page
	.cfi_endproc

	.globl	pdf_charproc_y_offset
	.align	16, 0x90
	.type	pdf_charproc_y_offset,@function
pdf_charproc_y_offset:                  # @pdf_charproc_y_offset
	.cfi_startproc
# BB#0:                                 # %entry
	movl	80(%rdi), %eax
	retq
.Lfunc_end3:
	.size	pdf_charproc_y_offset, .Lfunc_end3-pdf_charproc_y_offset
	.cfi_endproc

	.globl	pdf_charproc_x_offset
	.align	16, 0x90
	.type	pdf_charproc_x_offset,@function
pdf_charproc_x_offset:                  # @pdf_charproc_x_offset
	.cfi_startproc
# BB#0:                                 # %entry
	movl	84(%rdi), %eax
	retq
.Lfunc_end4:
	.size	pdf_charproc_x_offset, .Lfunc_end4-pdf_charproc_x_offset
	.cfi_endproc

	.globl	pdf_free_charproc_ownership
	.align	16, 0x90
	.type	pdf_free_charproc_ownership,@function
pdf_free_charproc_ownership:            # @pdf_free_charproc_ownership
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp15:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp16:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp17:
	.cfi_def_cfa_offset 32
.Ltmp18:
	.cfi_offset %rbx, -24
.Ltmp19:
	.cfi_offset %r14, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	jmp	.LBB5_1
	.align	16, 0x90
.LBB5_5:                                # %if.end
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	1728(%r14), %rdi
	movl	$.L.str.7, %edx
	callq	*24(%rdi)
.LBB5_1:                                # %entry
                                        # =>This Inner Loop Header: Depth=1
	testq	%rbx, %rbx
	je	.LBB5_6
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	%rbx, %rsi
	movq	16(%rsi), %rbx
	cmpl	$0, 56(%rsi)
	je	.LBB5_5
# BB#3:                                 # %land.lhs.true
                                        #   in Loop: Header=BB5_1 Depth=1
	cmpq	$0, 48(%rsi)
	je	.LBB5_5
# BB#4:                                 # %if.then
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	$0, 48(%rsi)
	movl	$0, 56(%rsi)
	jmp	.LBB5_5
.LBB5_6:                                # %while.end
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end5:
	.size	pdf_free_charproc_ownership, .Lfunc_end5-pdf_free_charproc_ownership
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI6_0:
	.long	1065353216              # float 1
	.text
	.globl	pdf_begin_char_proc
	.align	16, 0x90
	.type	pdf_begin_char_proc,@function
pdf_begin_char_proc:                    # @pdf_begin_char_proc
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
	subq	$88, %rsp
.Ltmp26:
	.cfi_def_cfa_offset 144
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
	movl	%r9d, 40(%rsp)          # 4-byte Spill
	movl	%r8d, %r13d
	movq	%rdx, 48(%rsp)          # 8-byte Spill
	movl	%esi, 44(%rsp)          # 4-byte Spill
	movq	%rdi, %r14
	movq	$0, 80(%rsp)
	movq	26592(%r14), %rax
	movq	8(%rax), %rbp
	movq	$2147483647, 56(%rsp)   # imm = 0x7FFFFFFF
	movq	28840(%r14), %rbx
	movl	(%rbx), %eax
	andl	$23, %eax
	movq	192(%rbx), %r12
	movl	128(%r12), %ecx
	cmpq	$53, %rcx
	ja	.LBB6_2
# BB#1:                                 # %entry
	movabsq	$15762598695796744, %rdx # imm = 0x38000000000008
	btq	%rcx, %rdx
	jae	.LBB6_2
# BB#5:                                 # %land.lhs.true
	testl	%eax, %eax
	jne	.LBB6_6
	jmp	.LBB6_4
.LBB6_2:                                # %lor.lhs.false.13
	testl	%eax, %eax
	je	.LBB6_4
# BB#3:                                 # %lor.lhs.false.13
	cmpl	$54, %ecx
	jne	.LBB6_4
.LBB6_6:                                # %land.lhs.true.17
	movss	80(%r12), %xmm0         # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI6_0(%rip), %xmm0
	jne	.LBB6_4
	jp	.LBB6_4
# BB#7:                                 # %land.lhs.true.20
	movss	84(%r12), %xmm1         # xmm1 = mem[0],zero,zero,zero
	xorps	%xmm0, %xmm0
	ucomiss	%xmm0, %xmm1
	jne	.LBB6_4
	jp	.LBB6_4
# BB#8:                                 # %land.lhs.true.24
	movss	88(%r12), %xmm1         # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jne	.LBB6_4
	jp	.LBB6_4
# BB#9:                                 # %land.lhs.true.28
	movss	92(%r12), %xmm0         # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI6_0(%rip), %xmm0
	jne	.LBB6_4
	jp	.LBB6_4
# BB#10:                                # %if.then
	movq	$0, (%rsp)
	leaq	72(%rsp), %rdx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	pdf_attached_font_resource
	testl	%eax, %eax
	js	.LBB6_45
# BB#11:                                # %if.end
	decl	232(%rbx)
	leaq	80(%rsp), %rsi
	leaq	56(%rsp), %rdx
	movq	%rbx, %rdi
	callq	gs_default_next_char_glyph
	testl	%eax, %eax
	js	.LBB6_45
# BB#12:                                # %if.end.39
	movq	80(%rsp), %rbx
	cmpq	$255, %rbx
	ja	.LBB6_39
# BB#13:                                # %if.then.43
	movq	72(%rsp), %rdi
	movq	192(%rdi), %r8
	movq	%rbx, %rsi
	shlq	$5, %rsi
	movq	%r8, %rdx
	addq	%rsi, %rdx
	je	.LBB6_39
# BB#14:                                # %if.then.45
	movq	272(%rdi), %rax
	testq	%rax, %rax
	je	.LBB6_19
# BB#15:                                # %for.body.lr.ph
	movq	(%rdx), %rcx
.LBB6_16:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	cmpq	%rcx, 40(%rax)
	jne	.LBB6_18
# BB#17:                                # %land.lhs.true.52
                                        #   in Loop: Header=BB6_16 Depth=1
	cmpq	%rbx, 32(%rax)
	je	.LBB6_39
.LBB6_18:                               # %for.inc
                                        #   in Loop: Header=BB6_16 Depth=1
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.LBB6_16
.LBB6_19:                               # %land.lhs.true.60
	cmpq	$2147483647, (%rdx)     # imm = 0x7FFFFFFF
	je	.LBB6_39
# BB#20:                                # %land.lhs.true.63
	leaq	8(%r8,%rsi), %r15
	cmpl	$7, 16(%r8,%rsi)
	jne	.LBB6_34
# BB#21:                                # %land.lhs.true.66
	movq	%rdi, 8(%rsp)           # 8-byte Spill
	movq	%rdx, 16(%rsp)          # 8-byte Spill
	movq	%rsi, 24(%rsp)          # 8-byte Spill
	movq	%r8, 32(%rsp)           # 8-byte Spill
	movl	$.L.str.8, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$6, %rcx
	ja	.LBB6_33
# BB#22:                                # %land.lhs.true.69
	movq	(%r15), %rdi
	cmpq	$3, %rcx
	ja	.LBB6_30
# BB#23:                                # %cond.true.72
	movzbl	(%rdi), %eax
	addl	$-46, %eax
	testq	%rcx, %rcx
	movq	32(%rsp), %r8           # 8-byte Reload
	movq	24(%rsp), %rsi          # 8-byte Reload
	movq	16(%rsp), %rdx          # 8-byte Reload
	je	.LBB6_31
# BB#24:                                # %cond.true.72
	testl	%eax, %eax
	jne	.LBB6_31
# BB#25:                                # %if.then.83
	movzbl	1(%rdi), %eax
	addl	$-110, %eax
	cmpq	$2, %rcx
	jb	.LBB6_31
# BB#26:                                # %if.then.83
	testl	%eax, %eax
	jne	.LBB6_31
# BB#27:                                # %if.then.93
	movzbl	2(%rdi), %eax
	addl	$-111, %eax
	cmpq	$3, %rcx
	jb	.LBB6_31
# BB#28:                                # %if.then.93
	testl	%eax, %eax
	jne	.LBB6_31
# BB#29:                                # %if.then.103
	movzbl	3(%rdi), %eax
	addl	$-116, %eax
	jmp	.LBB6_31
.LBB6_4:                                # %if.else.186
	movq	%r14, %rdi
	movq	%rbx, %rsi
.LBB6_40:                               # %if.end.191
	callq	assign_char_code
	cltq
	movq	%rax, 80(%rsp)
	movq	(%rbp), %rax
	movq	%rax, 72(%rsp)
	xorl	%r15d, %r15d
.LBB6_41:                               # %if.end.191
	movq	144(%rsp), %rdx
	leaq	64(%rsp), %rcx
	movl	$7, %esi
	movq	%r14, %rdi
	callq	pdf_begin_resource
	testl	%eax, %eax
	js	.LBB6_45
# BB#42:                                # %if.end.196
	movq	64(%rsp), %rbx
	movq	72(%rsp), %rsi
	movq	56(%rsp), %rcx
	movq	80(%rsp), %r8
	movq	%r14, %rdi
	movq	%rbx, %rdx
	movq	%r15, %r9
	callq	pdf_attach_charproc
	testl	%eax, %eax
	js	.LBB6_45
# BB#43:                                # %if.end.201
	movq	160(%rsp), %r15
	movq	64(%rsp), %rax
	movq	64(%rax), %rax
	movb	$1, 50(%rax)
	movq	5848(%r14), %rbp
	movl	$.L.str.9, %esi
	movq	%rbp, %rdi
	callq	stream_puts
	movq	%rbp, %rdi
	callq	stell
	movq	%rax, 8(%r15)
	movq	64(%rsp), %rax
	movq	64(%rax), %rax
	movq	8(%rax), %rdx
	leaq	5848(%r14), %rsi
	movq	%r14, %rdi
	callq	pdf_begin_encrypt
	testl	%eax, %eax
	js	.LBB6_45
# BB#44:                                # %if.end.213
	movq	152(%rsp), %rax
	movl	%r13d, 80(%rbx)
	movl	40(%rsp), %ecx          # 4-byte Reload
	movl	%ecx, 84(%rbx)
	movq	72(%rsp), %rcx
	movsd	232(%rcx), %xmm0        # xmm0 = mem[0],zero
	movl	44(%rsp), %edx          # 4-byte Reload
	cvtsi2sdl	%edx, %xmm1
	maxsd	%xmm1, %xmm0
	movsd	%xmm0, 232(%rcx)
	movsd	240(%rcx), %xmm0        # xmm0 = mem[0],zero
	movq	48(%rsp), %rdx          # 8-byte Reload
	movq	%rdx, %rdi
	addl	%edi, %r13d
	cvtsi2sdl	%r13d, %xmm2
	maxsd	%xmm2, %xmm0
	movsd	%xmm0, 240(%rcx)
	movl	280(%rcx), %edx
	movl	%edi, %esi
	sarl	$2, %esi
	addl	%edi, %esi
	cmpl	%esi, %edx
	cmovgel	%edx, %esi
	movl	%esi, 280(%rcx)
	movsd	%xmm1, 88(%rbx)
	movsd	%xmm2, 96(%rbx)
	movq	%rbx, (%rax)
	xorl	%eax, %eax
.LBB6_45:                               # %cleanup.305
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB6_33:                               # %cond.false.116
	movq	(%r15), %rdi
	movl	$.L.str.8, %esi
	movl	$7, %edx
	callq	strncmp
	testl	%eax, %eax
	movq	32(%rsp), %r8           # 8-byte Reload
	movq	24(%rsp), %rsi          # 8-byte Reload
	movq	16(%rsp), %rdx          # 8-byte Reload
	movq	8(%rsp), %rdi           # 8-byte Reload
	jne	.LBB6_34
	jmp	.LBB6_39
.LBB6_30:                               # %cond.false
	movl	$.L.str.8, %esi
	callq	strcmp
	movq	32(%rsp), %r8           # 8-byte Reload
	movq	24(%rsp), %rsi          # 8-byte Reload
	movq	16(%rsp), %rdx          # 8-byte Reload
.LBB6_31:                               # %cond.end
	testl	%eax, %eax
	je	.LBB6_39
# BB#32:                                # %cond.end.if.then.121_crit_edge
	movq	80(%rsp), %rbx
	movq	72(%rsp), %rdi
.LBB6_34:                               # %if.then.121
	movslq	176(%rdi), %rax
	cmpq	%rax, %rbx
	jae	.LBB6_36
# BB#35:                                # %if.then.127
	movl	%ebx, 176(%rdi)
.LBB6_36:                               # %if.end.132
	cmpl	180(%rdi), %ebx
	jle	.LBB6_38
# BB#37:                                # %if.then.138
	movl	%ebx, 180(%rdi)
.LBB6_38:                               # %if.end.143
	movsd	392(%r12), %xmm0        # xmm0 = mem[0],zero
	movl	44(%rsp), %eax          # 4-byte Reload
	cvtsi2sdl	%eax, %xmm1
	maxsd	%xmm1, %xmm0
	movsd	%xmm0, 392(%r12)
	movsd	400(%r12), %xmm0        # xmm0 = mem[0],zero
	movq	48(%rsp), %rax          # 8-byte Reload
	leal	(%r13,%rax), %eax
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%eax, %xmm1
	maxsd	%xmm1, %xmm0
	movsd	%xmm0, 400(%r12)
	movq	(%rdx), %rax
	movq	%rax, 56(%rsp)
	movl	$1, 24(%r8,%rsi)
	movsd	28792(%r14), %xmm0      # xmm0 = mem[0],zero
	movl	$100, %edi
	movl	$10, %esi
	callq	psdf_round
	movq	80(%rsp), %rax
	movq	72(%rsp), %rcx
	movq	128(%rcx), %rcx
	movsd	%xmm0, (%rcx,%rax,8)
	jmp	.LBB6_41
.LBB6_39:                               # %if.else.180
	movq	28840(%r14), %rsi
	movq	%r14, %rdi
	jmp	.LBB6_40
.Lfunc_end6:
	.size	pdf_begin_char_proc, .Lfunc_end6-pdf_begin_char_proc
	.cfi_endproc

	.align	16, 0x90
	.type	assign_char_code,@function
assign_char_code:                       # @assign_char_code
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp33:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp34:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp35:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp36:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp37:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp38:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp39:
	.cfi_def_cfa_offset 64
.Ltmp40:
	.cfi_offset %rbx, -56
.Ltmp41:
	.cfi_offset %r12, -48
.Ltmp42:
	.cfi_offset %r13, -40
.Ltmp43:
	.cfi_offset %r14, -32
.Ltmp44:
	.cfi_offset %r15, -24
.Ltmp45:
	.cfi_offset %rbp, -16
	movq	%rsi, %r15
	movq	%rdi, %r14
	movq	26592(%r14), %rax
	movq	8(%rax), %r12
	movq	(%r12), %r13
	movq	%r13, (%rsp)
	movl	(%r15), %ebx
	cmpq	$0, 16(%r12)
	jne	.LBB7_2
# BB#1:                                 # %if.then
	movq	%r14, %rdi
	callq	pdf_obj_ref
	movq	%rax, 16(%r12)
.LBB7_2:                                # %if.end
	testq	%r13, %r13
	je	.LBB7_5
# BB#3:                                 # %lor.lhs.false
	cmpl	$255, 180(%r13)
	je	.LBB7_5
# BB#4:                                 # %lor.lhs.false.6
	cmpl	$0, 8(%r12)
	jne	.LBB7_15
.LBB7_5:                                # %if.then.7
	leaq	(%rsp), %rsi
	movl	$pdf_write_contents_bitmap, %edx
	movq	%r14, %rdi
	callq	pdf_font_type3_alloc
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB7_29
# BB#6:                                 # %if.end.11
	movq	(%rsp), %rdi
	movl	$1, 284(%rdi)
	movq	(%r12), %rsi
	addq	$32, %rdi
	testq	%rsi, %rsi
	je	.LBB7_7
# BB#8:                                 # %if.else
	addq	$32, %rsi
	callq	strcpy
	jmp	.LBB7_9
.LBB7_7:                                # %if.then.16
	movb	$0, (%rdi)
.LBB7_9:                                # %if.end.22
	movq	(%rsp), %rax
	xorps	%xmm0, %xmm0
	movups	%xmm0, 216(%rax)
	movups	%xmm0, 232(%rax)
	movq	$0, 160(%rax)
	movl	$248, %edi
	addq	(%rsp), %rdi
	callq	gs_make_identity
	movq	(%rsp), %rax
	movzbl	32(%rax), %ecx
	addq	$32, %rax
	jmp	.LBB7_11
	.align	16, 0x90
.LBB7_10:                               # %for.body
                                        #   in Loop: Header=BB7_11 Depth=1
	movb	$64, (%rax)
	movzbl	1(%rax), %ecx
	incq	%rax
.LBB7_11:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$90, %ecx
	je	.LBB7_10
# BB#12:                                # %for.end
	movb	%cl, %dl
	incb	%dl
	movb	%dl, (%rax)
	testb	%cl, %cl
	jne	.LBB7_14
# BB#13:                                # %if.then.57
	movw	$65, (%rax)
.LBB7_14:                               # %if.end.59
	movq	(%rsp), %rax
	movq	%rax, (%r12)
	movl	$1, 8(%r12)
	movq	(%rsp), %r13
	movl	$255, 176(%r13)
.LBB7_15:                               # %if.end.64
	testb	$23, %bl
	je	.LBB7_24
# BB#16:                                # %if.then.69
	movq	8(%r15), %rax
	movzbl	(%rax), %ebp
	movb	%bpl, %dl
	shrb	$3, %dl
	movb	%bpl, %cl
	andb	$7, %cl
	movl	$1, %eax
	movl	$1, %edi
	shll	%cl, %edi
	movzbl	%dl, %esi
	movq	136(%r13), %rbx
	movzbl	(%rbx,%rsi), %esi
	movzbl	%cl, %ecx
	btl	%ecx, %esi
	jae	.LBB7_22
# BB#17:                                # %for.cond.82.preheader
	movq	136(%r13), %rbx
	xorl	%esi, %esi
	.align	16, 0x90
.LBB7_18:                               # %for.body.85
                                        # =>This Inner Loop Header: Depth=1
	leal	-1(%rax), %ecx
	movl	%ecx, %edx
	sarl	$31, %edx
	shrl	$29, %edx
	leal	-1(%rax,%rdx), %edx
	sarl	$3, %edx
	andb	$6, %cl
	movl	$1, %edi
	shll	%cl, %edi
	movzbl	%dl, %ebp
	movzbl	(%rbx,%rbp), %ebp
	movzbl	%cl, %ecx
	btl	%ecx, %ebp
	jae	.LBB7_19
# BB#20:                                # %for.inc.100
                                        #   in Loop: Header=BB7_18 Depth=1
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$29, %ecx
	leal	(%rcx,%rax), %edx
	sarl	$3, %edx
	movb	%al, %cl
	andb	$7, %cl
	movl	$1, %edi
	shll	%cl, %edi
	movzbl	%dl, %ebp
	movzbl	(%rbx,%rbp), %ebp
	movzbl	%cl, %ecx
	btl	%ecx, %ebp
	jae	.LBB7_21
# BB#30:                                # %for.inc.100.1
                                        #   in Loop: Header=BB7_18 Depth=1
	addl	$2, %esi
	leal	2(%rax), %ecx
	incl	%eax
	xorl	%ebp, %ebp
	cmpl	$256, %eax              # imm = 0x100
	movl	%ecx, %eax
	jl	.LBB7_18
	jmp	.LBB7_22
.LBB7_24:                               # %if.else.122
	movl	180(%r13), %eax
	leal	1(%rax), %ebp
	movl	%ebp, 180(%r13)
	movl	%ebp, %ecx
	sarl	$31, %ecx
	shrl	$29, %ecx
	leal	1(%rax,%rcx), %eax
	shrl	$3, %eax
	movb	%bpl, %cl
	andb	$7, %cl
	movl	$1, %edx
	shll	%cl, %edx
	movzbl	%al, %eax
	movq	136(%r13), %rcx
	movzbl	(%rcx,%rax), %esi
	orl	%edx, %esi
	movb	%sil, (%rcx,%rax)
	movq	(%rsp), %rax
	jmp	.LBB7_25
.LBB7_19:
	movl	%esi, %ebp
	jmp	.LBB7_22
.LBB7_21:
	movl	%eax, %ebp
.LBB7_22:                               # %if.end.105
	movzbl	%dl, %eax
	movq	136(%r13), %rcx
	movzbl	(%rcx,%rax), %edx
	orl	%edi, %edx
	movb	%dl, (%rcx,%rax)
	movq	(%rsp), %rax
	cmpl	180(%rax), %ebp
	jle	.LBB7_25
# BB#23:                                # %if.then.117
	movl	%ebp, 180(%rax)
.LBB7_25:                               # %if.end.141
	cmpl	176(%rax), %ebp
	jge	.LBB7_27
# BB#26:                                # %if.then.147
	movl	%ebp, 176(%rax)
.LBB7_27:                               # %if.end.151
	movsd	28792(%r14), %xmm0      # xmm0 = mem[0],zero
	movl	$100, %edi
	movl	$10, %esi
	callq	psdf_round
	movslq	%ebp, %rax
	movq	(%rsp), %rcx
	movq	128(%rcx), %rcx
	movsd	%xmm0, (%rcx,%rax,8)
	cmpl	24(%r12), %ebp
	jle	.LBB7_29
# BB#28:                                # %if.then.158
	movl	%ebp, 24(%r12)
.LBB7_29:                               # %cleanup.161
	movl	%ebp, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	assign_char_code, .Lfunc_end7-assign_char_code
	.cfi_endproc

	.align	16, 0x90
	.type	pdf_attach_charproc,@function
pdf_attach_charproc:                    # @pdf_attach_charproc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp46:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp47:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp48:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp49:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp50:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp51:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp52:
	.cfi_def_cfa_offset 80
.Ltmp53:
	.cfi_offset %rbx, -56
.Ltmp54:
	.cfi_offset %r12, -48
.Ltmp55:
	.cfi_offset %r13, -40
.Ltmp56:
	.cfi_offset %r14, -32
.Ltmp57:
	.cfi_offset %r15, -24
.Ltmp58:
	.cfi_offset %rbp, -16
	movq	%r9, %r14
	movq	%r8, %r15
	movq	%rcx, %rbx
	movq	%rdx, 8(%rsp)           # 8-byte Spill
	movq	%rsi, %r13
	movq	272(%r13), %rbp
	testq	%rbp, %rbp
	je	.LBB8_5
# BB#1:
	movq	%rbp, %rax
	.align	16, 0x90
.LBB8_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	cmpq	%rbx, 40(%rax)
	jne	.LBB8_4
# BB#3:                                 # %land.lhs.true
                                        #   in Loop: Header=BB8_2 Depth=1
	xorl	%ecx, %ecx
	cmpq	%r15, 32(%rax)
	je	.LBB8_18
.LBB8_4:                                # %for.inc
                                        #   in Loop: Header=BB8_2 Depth=1
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.LBB8_2
.LBB8_5:                                # %for.end
	cmpl	$0, 284(%r13)
	jne	.LBB8_6
# BB#7:                                 # %for.end
	movq	%rdi, 16(%rsp)          # 8-byte Spill
	testq	%rbp, %rbp
	je	.LBB8_8
# BB#11:
	movl	$1, %r12d
	.align	16, 0x90
.LBB8_12:                               # %for.body.17
                                        # =>This Inner Loop Header: Depth=1
	movq	48(%rbp), %rdi
	movl	56(%rbp), %esi
	movq	(%r14), %rdx
	movl	8(%r14), %ecx
	callq	bytes_compare
	testl	%eax, %eax
	je	.LBB8_13
# BB#9:                                 # %for.cond.15
                                        #   in Loop: Header=BB8_12 Depth=1
	movq	16(%rbp), %rbp
	testq	%rbp, %rbp
	jne	.LBB8_12
# BB#10:
	xorl	%r12d, %r12d
	jmp	.LBB8_13
.LBB8_6:
	movq	%rdi, 16(%rsp)          # 8-byte Spill
	xorl	%r12d, %r12d
	jmp	.LBB8_13
.LBB8_8:
	xorl	%r12d, %r12d
.LBB8_13:                               # %if.end.27
	movq	16(%rsp), %rax          # 8-byte Reload
	movq	1728(%rax), %rdi
	movl	$st_pdf_char_proc_ownership, %esi
	movl	$.L.str.43, %edx
	callq	*72(%rdi)
	movl	$-25, %ecx
	testq	%rax, %rax
	je	.LBB8_18
# BB#14:                                # %if.end.32
	movq	%r13, 24(%rax)
	movq	272(%r13), %rcx
	movq	%rcx, 16(%rax)
	movq	%rax, 272(%r13)
	movq	8(%rsp), %rdx           # 8-byte Reload
	movq	%rdx, (%rax)
	movq	72(%rdx), %rcx
	movq	%rcx, 8(%rax)
	movq	%rax, 72(%rdx)
	movq	%r15, 32(%rax)
	movq	%rbx, 40(%rax)
	testq	%r14, %r14
	je	.LBB8_15
# BB#16:                                # %if.else
	movq	%rax, %rcx
	addq	$48, %rcx
	movups	(%r14), %xmm0
	movups	%xmm0, (%rcx)
	jmp	.LBB8_17
.LBB8_15:                               # %if.then.48
	movq	$0, 48(%rax)
	movl	$0, 56(%rax)
.LBB8_17:                               # %if.end.54
	movl	%r12d, 64(%rax)
	xorl	%ecx, %ecx
.LBB8_18:                               # %cleanup
	movl	%ecx, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	pdf_attach_charproc, .Lfunc_end8-pdf_attach_charproc
	.cfi_endproc

	.globl	pdf_end_char_proc
	.align	16, 0x90
	.type	pdf_end_char_proc,@function
pdf_end_char_proc:                      # @pdf_end_char_proc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp59:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp60:
	.cfi_def_cfa_offset 24
	pushq	%r13
.Ltmp61:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp62:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp63:
	.cfi_def_cfa_offset 48
.Ltmp64:
	.cfi_offset %rbx, -48
.Ltmp65:
	.cfi_offset %r12, -40
.Ltmp66:
	.cfi_offset %r13, -32
.Ltmp67:
	.cfi_offset %r14, -24
.Ltmp68:
	.cfi_offset %r15, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	callq	pdf_end_encrypt
	movq	5848(%r14), %r12
	movq	8(%rbx), %r13
	movq	%r12, %rdi
	callq	stell
	movq	%rax, %r15
	movq	%r15, %rbx
	subq	%r13, %rbx
	movl	$-13, %eax
	cmpq	$999999, %rbx           # imm = 0xF423F
	jg	.LBB9_4
# BB#1:                                 # %if.end
	addq	$-15, %r13
	movq	%r12, %rdi
	movq	%r13, %rsi
	callq	spseek
	movl	$.L.str.10, %esi
	movq	%r12, %rdi
	movl	%ebx, %edx
	callq	pprintd1
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	spseek
	cmpl	$0, 9564(%r14)
	je	.LBB9_3
# BB#2:                                 # %if.then.8
	movl	$.L.str.11, %esi
	movq	%r12, %rdi
	callq	stream_puts
.LBB9_3:                                # %if.end.10
	movl	$.L.str.12, %esi
	movq	%r12, %rdi
	callq	stream_puts
	movl	$7, %esi
	movq	%r14, %rdi
	callq	pdf_end_separate
	xorl	%eax, %eax
.LBB9_4:                                # %cleanup
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.Lfunc_end9:
	.size	pdf_end_char_proc, .Lfunc_end9-pdf_end_char_proc
	.cfi_endproc

	.globl	pdf_mark_glyph_names
	.align	16, 0x90
	.type	pdf_mark_glyph_names,@function
pdf_mark_glyph_names:                   # @pdf_mark_glyph_names
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp69:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp70:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp71:
	.cfi_def_cfa_offset 32
.Ltmp72:
	.cfi_offset %rbx, -32
.Ltmp73:
	.cfi_offset %r14, -24
.Ltmp74:
	.cfi_offset %r15, -16
	movq	%rsi, %r14
	movq	%rdi, %r15
	cmpq	$0, 160(%r15)
	je	.LBB10_12
# BB#1:                                 # %if.end
	movq	192(%r15), %rax
	testq	%rax, %rax
	je	.LBB10_7
# BB#2:                                 # %for.cond.preheader
	xorl	%ebx, %ebx
	jmp	.LBB10_3
	.align	16, 0x90
.LBB10_6:                               # %for.inc.for.body_crit_edge
                                        #   in Loop: Header=BB10_3 Depth=1
	movq	192(%r15), %rax
.LBB10_3:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rax,%rbx), %rsi
	cmpq	$2147483647, %rsi       # imm = 0x7FFFFFFF
	je	.LBB10_5
# BB#4:                                 # %if.then.8
                                        #   in Loop: Header=BB10_3 Depth=1
	movq	168(%r15), %rdx
	movq	%r14, %rdi
	callq	*160(%r15)
.LBB10_5:                               # %for.inc
                                        #   in Loop: Header=BB10_3 Depth=1
	addq	$32, %rbx
	cmpq	$8192, %rbx             # imm = 0x2000
	jne	.LBB10_6
.LBB10_7:                               # %if.end.17
	movl	72(%r15), %eax
	cmpq	$54, %rax
	ja	.LBB10_12
# BB#8:                                 # %if.end.17
	movabsq	$33776997205278728, %rcx # imm = 0x78000000000008
	btq	%rax, %rcx
	jae	.LBB10_12
# BB#9:                                 # %if.then.30
	movq	272(%r15), %rbx
	jmp	.LBB10_11
	.align	16, 0x90
.LBB10_10:                              # %for.body.35
                                        #   in Loop: Header=BB10_11 Depth=1
	movq	40(%rbx), %rsi
	movq	168(%r15), %rdx
	movq	%r14, %rdi
	callq	*160(%r15)
	movq	8(%rbx), %rbx
.LBB10_11:                              # %for.body.35
                                        # =>This Inner Loop Header: Depth=1
	testq	%rbx, %rbx
	jne	.LBB10_10
.LBB10_12:                              # %if.end.42
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end10:
	.size	pdf_mark_glyph_names, .Lfunc_end10-pdf_mark_glyph_names
	.cfi_endproc

	.globl	pdf_do_char_image
	.align	16, 0x90
	.type	pdf_do_char_image,@function
pdf_do_char_image:                      # @pdf_do_char_image
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp75:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp76:
	.cfi_def_cfa_offset 24
	pushq	%r13
.Ltmp77:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp78:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp79:
	.cfi_def_cfa_offset 48
	subq	$64, %rsp
.Ltmp80:
	.cfi_def_cfa_offset 112
.Ltmp81:
	.cfi_offset %rbx, -48
.Ltmp82:
	.cfi_offset %r12, -40
.Ltmp83:
	.cfi_offset %r13, -32
.Ltmp84:
	.cfi_offset %r14, -24
.Ltmp85:
	.cfi_offset %r15, -16
	movq	%rdx, %r15
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	72(%rbx), %rax
	movq	24(%rax), %r12
	movq	32(%rax), %r13
	movb	%r13b, 63(%rsp)
	movl	$0, (%rsp)
	movq	%r12, 8(%rsp)
	movabsq	$4607182418800017408, %rax # imm = 0x3FF0000000000000
	movq	%rax, 16(%rsp)
	movq	16(%r15), %rax
	movq	%rax, 40(%rsp)
	movups	(%r15), %xmm0
	movups	%xmm0, 24(%rsp)
	movq	$0, 48(%rsp)
	leaq	(%rsp), %rsi
	callq	pdf_set_text_state_values
	movl	80(%rbx), %edx
	movl	84(%rbx), %esi
	movsd	88(%rbx), %xmm0         # xmm0 = mem[0],zero
	movsd	96(%rbx), %xmm1         # xmm1 = mem[0],zero
	movq	%r14, %rdi
	callq	pdf_bitmap_char_update_bbox
	movzbl	%r13b, %eax
	movq	128(%r12), %rcx
	movss	(%r15), %xmm0           # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	mulsd	(%rcx,%rax,8), %xmm0
	leaq	63(%rsp), %rsi
	movl	$1, %edx
	xorpd	%xmm1, %xmm1
	xorl	%ecx, %ecx
	movq	%r14, %rdi
	callq	pdf_append_chars
	xorl	%eax, %eax
	addq	$64, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.Lfunc_end11:
	.size	pdf_do_char_image, .Lfunc_end11-pdf_do_char_image
	.cfi_endproc

	.globl	pdf_write_bitmap_fonts_Encoding
	.align	16, 0x90
	.type	pdf_write_bitmap_fonts_Encoding,@function
pdf_write_bitmap_fonts_Encoding:        # @pdf_write_bitmap_fonts_Encoding
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp86:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp87:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp88:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp89:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp90:
	.cfi_def_cfa_offset 48
.Ltmp91:
	.cfi_offset %rbx, -40
.Ltmp92:
	.cfi_offset %r14, -32
.Ltmp93:
	.cfi_offset %r15, -24
.Ltmp94:
	.cfi_offset %rbp, -16
	movq	%rdi, %r14
	movq	26592(%r14), %rax
	movq	8(%rax), %r15
	movq	16(%r15), %rsi
	testq	%rsi, %rsi
	je	.LBB12_7
# BB#1:                                 # %if.then
	movl	$16, %edx
	movq	%r14, %rdi
	callq	pdf_open_separate
	movq	5848(%r14), %rbx
	movl	$.L.str.13, %esi
	movq	%rbx, %rdi
	callq	stream_puts
	cmpl	$0, 24(%r15)
	js	.LBB12_6
# BB#2:
	movl	$-1, %ebp
	.align	16, 0x90
.LBB12_3:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	incl	%ebp
	testb	$15, %bpl
	jne	.LBB12_5
# BB#4:                                 # %if.then.4
                                        #   in Loop: Header=BB12_3 Depth=1
	movl	$.L.str.11, %esi
	movq	%rbx, %rdi
	callq	stream_puts
.LBB12_5:                               # %if.end
                                        #   in Loop: Header=BB12_3 Depth=1
	movl	$.L.str.14, %esi
	movq	%rbx, %rdi
	movl	%ebp, %edx
	callq	pprintd1
	cmpl	24(%r15), %ebp
	jl	.LBB12_3
.LBB12_6:                               # %for.end
	movl	$.L.str.15, %esi
	movq	%rbx, %rdi
	callq	stream_puts
	movl	$16, %esi
	movq	%r14, %rdi
	callq	pdf_end_separate
	movq	$0, 16(%r15)
.LBB12_7:                               # %if.end.10
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end12:
	.size	pdf_write_bitmap_fonts_Encoding, .Lfunc_end12-pdf_write_bitmap_fonts_Encoding
	.cfi_endproc

	.globl	pdf_start_charproc_accum
	.align	16, 0x90
	.type	pdf_start_charproc_accum,@function
pdf_start_charproc_accum:               # @pdf_start_charproc_accum
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp95:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp96:
	.cfi_def_cfa_offset 32
.Ltmp97:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	24(%rbx), %rdi
	movl	$1, %esi
	callq	gs_next_ids
	movl	9480(%rbx), %r9d
	leaq	8(%rsp), %rcx
	movl	$7, %esi
	xorl	%r8d, %r8d
	movq	%rbx, %rdi
	movq	%rax, %rdx
	callq	pdf_enter_substream
	testl	%eax, %eax
	js	.LBB13_2
# BB#1:                                 # %if.end
	movq	8(%rsp), %rax
	movq	$0, 72(%rax)
	xorl	%eax, %eax
.LBB13_2:                               # %cleanup
	addq	$16, %rsp
	popq	%rbx
	retq
.Lfunc_end13:
	.size	pdf_start_charproc_accum, .Lfunc_end13-pdf_start_charproc_accum
	.cfi_endproc

	.globl	pdf_enter_substream
	.align	16, 0x90
	.type	pdf_enter_substream,@function
pdf_enter_substream:                    # @pdf_enter_substream
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp98:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp99:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp100:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp101:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp102:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp103:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp104:
	.cfi_def_cfa_offset 80
.Ltmp105:
	.cfi_offset %rbx, -56
.Ltmp106:
	.cfi_offset %r12, -48
.Ltmp107:
	.cfi_offset %r13, -40
.Ltmp108:
	.cfi_offset %r14, -32
.Ltmp109:
	.cfi_offset %r15, -24
.Ltmp110:
	.cfi_offset %rbp, -16
	movl	%r9d, %r14d
	movq	%rcx, 8(%rsp)           # 8-byte Spill
	movq	%rdx, %r13
	movl	%esi, %ebp
	movq	%rdi, %rbx
	movslq	30392(%rbx), %rax
	movl	$-28, %r15d
	cmpl	30388(%rbx), %eax
	jge	.LBB14_7
# BB#1:                                 # %if.end
	movq	5848(%rbx), %rcx
	movq	%rcx, (%rsp)            # 8-byte Spill
	movq	30400(%rbx), %rcx
	imulq	$120, %rax, %r12
	cmpq	$0, 8(%rcx,%r12)
	jne	.LBB14_3
# BB#2:                                 # %if.then.3
	movq	1728(%rbx), %rdi
	movl	%r8d, %r15d
	callq	pdf_text_state_alloc
	movl	%r15d, %r8d
	movq	30400(%rbx), %rcx
	movq	%rax, 8(%rcx,%r12)
	movl	$-25, %r15d
	testq	%rax, %rax
	je	.LBB14_7
.LBB14_3:                               # %if.end.15
	testl	%r14d, %r14d
	setne	%al
	movzbl	%al, %r9d
	addl	%r9d, %r9d
	leaq	16(%rsp), %rcx
	movq	%rbx, %rdi
	movl	%ebp, %esi
	movq	%r13, %rdx
	callq	pdf_open_aside
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB14_7
# BB#4:                                 # %if.end.19
	xorl	%r15d, %r15d
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	pdf_save_viewer_state
	testl	%eax, %eax
	js	.LBB14_5
# BB#6:                                 # %if.end.24
	movl	26560(%rbx), %eax
	movq	30400(%rbx), %rcx
	movl	%eax, (%rcx,%r12)
	movq	8(%rcx,%r12), %rdi
	movq	26592(%rbx), %rax
	movq	16(%rax), %rsi
	callq	pdf_text_state_copy
	movq	26592(%rbx), %rax
	movq	16(%rax), %rdi
	callq	pdf_set_text_state_default
	movq	28808(%rbx), %rax
	movq	30400(%rbx), %rcx
	movq	%rax, 16(%rcx,%r12)
	movq	$0, 28808(%rbx)
	movq	8784(%rbx), %rax
	movq	%rax, 24(%rcx,%r12)
	movq	8776(%rbx), %rax
	movq	%rax, 8784(%rbx)
	movl	28864(%rbx), %eax
	movl	%eax, 32(%rcx,%r12)
	movl	28860(%rbx), %eax
	movl	%eax, 28864(%rbx)
	movq	(%rsp), %rax            # 8-byte Reload
	movq	%rax, 40(%rcx,%r12)
	movl	26584(%rbx), %eax
	movl	%eax, 56(%rcx,%r12)
	movq	30448(%rbx), %rax
	movq	%rax, 48(%rcx,%r12)
	movl	30460(%rbx), %eax
	movl	%eax, 60(%rcx,%r12)
	movups	30472(%rbx), %xmm0
	movups	%xmm0, 64(%rcx,%r12)
	movl	30560(%rbx), %eax
	movl	%eax, 80(%rcx,%r12)
	movl	30568(%rbx), %eax
	movl	%eax, 84(%rcx,%r12)
	movq	30648(%rbx), %rax
	movq	%rax, 88(%rcx,%r12)
	movups	30656(%rbx), %xmm0
	movups	%xmm0, 96(%rcx,%r12)
	movl	30688(%rbx), %eax
	movq	30400(%rbx), %rcx
	movl	%eax, 112(%rcx,%r12)
	movl	$0, 30460(%rbx)
	movl	$0, 30560(%rbx)
	movq	$0, 30648(%rbx)
	movq	$0, 30656(%rbx)
	movl	$0, 30664(%rbx)
	incl	30392(%rbx)
	movl	$0, 26584(%rbx)
	movq	$0, 30472(%rbx)
	movl	$1, 26560(%rbx)
	movq	16(%rsp), %rbp
	movq	%rbp, 30480(%rbx)
	movl	$0, 30688(%rbx)
	movq	%rbx, %rdi
	callq	pdf_reset_graphics
	movq	8(%rsp), %rax           # 8-byte Reload
	movq	%rbp, (%rax)
	jmp	.LBB14_7
.LBB14_5:                               # %if.then.22
	movq	(%rsp), %rcx            # 8-byte Reload
	movq	%rcx, 5848(%rbx)
	movl	%eax, %r15d
.LBB14_7:                               # %cleanup
	movl	%r15d, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end14:
	.size	pdf_enter_substream, .Lfunc_end14-pdf_enter_substream
	.cfi_endproc

	.globl	pdf_set_charproc_attrs
	.align	16, 0x90
	.type	pdf_set_charproc_attrs,@function
pdf_set_charproc_attrs:                 # @pdf_set_charproc_attrs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp111:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp112:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp113:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp114:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp115:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp116:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp117:
	.cfi_def_cfa_offset 80
.Ltmp118:
	.cfi_offset %rbx, -56
.Ltmp119:
	.cfi_offset %r12, -48
.Ltmp120:
	.cfi_offset %r13, -40
.Ltmp121:
	.cfi_offset %r14, -32
.Ltmp122:
	.cfi_offset %r15, -24
.Ltmp123:
	.cfi_offset %rbp, -16
	movq	%r9, 8(%rsp)            # 8-byte Spill
	movl	%r8d, %r13d
	movl	%ecx, %ebp
	movq	%rdx, %rbx
	movq	%rsi, %r12
	movq	%rdi, %r15
	movq	30480(%r15), %r14
	movq	$0, (%rsp)
	leaq	16(%rsp), %rdx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	callq	pdf_attached_font_resource
	testl	%eax, %eax
	js	.LBB15_17
# BB#1:                                 # %if.end
	movq	$0, 72(%r14)
	cmpl	$0, 148(%r12)
	setne	%al
	cmpl	$6, %ebp
	setg	%cl
	xorl	%edx, %edx
	andb	%al, %cl
	movl	$6, %eax
	cmovneq	%rax, %rdx
	movq	(%rbx,%rdx,8), %rax
	movq	%rax, 88(%r14)
	testb	%cl, %cl
	movl	$7, %eax
	movl	$1, %ecx
	cmovneq	%rax, %rcx
	movq	(%rbx,%rcx,8), %rax
	movq	%rax, 96(%r14)
	cmpl	$9, %ebp
	jl	.LBB15_3
# BB#2:                                 # %cond.true
	movq	64(%rbx), %rax
	movq	%rax, 104(%r14)
	movsd	72(%rbx), %xmm0         # xmm0 = mem[0],zero
	jmp	.LBB15_4
.LBB15_3:                               # %cond.end.19.critedge
	movq	$0, 104(%r14)
	xorpd	%xmm0, %xmm0
.LBB15_4:                               # %cond.end.19
	movl	80(%rsp), %ebp
	movsd	%xmm0, 112(%r14)
	testl	%r13d, %r13d
	je	.LBB15_5
# BB#6:                                 # %if.else
	movl	$1, 30460(%r15)
	movsd	16(%rbx), %xmm0         # xmm0 = mem[0],zero
	movsd	32(%rbx), %xmm1         # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB15_7
# BB#8:                                 # %if.then.52
	movsd	%xmm1, 16(%rbx)
	movsd	%xmm0, 32(%rbx)
	movapd	%xmm0, %xmm4
	jmp	.LBB15_9
.LBB15_5:                               # %if.then.24
	movl	$0, 30460(%r15)
	movq	5848(%r15), %rdi
	movsd	(%rbx), %xmm0           # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movl	$.L.str.16, %esi
	callq	pprintg1
	movl	128(%r12), %eax
	addl	$-51, %eax
	cmpl	$3, %eax
	jbe	.LBB15_13
	jmp	.LBB15_14
.LBB15_7:
	movapd	%xmm1, %xmm4
	movapd	%xmm0, %xmm1
.LBB15_9:                               # %if.end.57
	movsd	24(%rbx), %xmm0         # xmm0 = mem[0],zero
	movsd	40(%rbx), %xmm3         # xmm3 = mem[0],zero
	ucomisd	%xmm3, %xmm0
	jbe	.LBB15_10
# BB#11:                                # %if.then.62
	movsd	%xmm0, 40(%rbx)
	movsd	%xmm3, 24(%rbx)
	movapd	%xmm0, %xmm5
	jmp	.LBB15_12
.LBB15_10:
	movapd	%xmm3, %xmm5
	movapd	%xmm0, %xmm3
.LBB15_12:                              # %if.end.67
	movq	5848(%r15), %rdi
	movsd	(%rbx), %xmm0           # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	cvtss2sd	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm1
	cvtss2sd	%xmm1, %xmm2
	xorps	%xmm1, %xmm1
	cvtsd2ss	%xmm3, %xmm1
	xorps	%xmm3, %xmm3
	cvtss2sd	%xmm1, %xmm3
	xorps	%xmm1, %xmm1
	cvtsd2ss	%xmm4, %xmm1
	cvtss2sd	%xmm1, %xmm4
	xorps	%xmm1, %xmm1
	cvtsd2ss	%xmm5, %xmm1
	xorps	%xmm5, %xmm5
	cvtss2sd	%xmm1, %xmm5
	movl	$.L.str.17, %esi
	xorps	%xmm1, %xmm1
	callq	pprintg6
.LBB15_13:                              # %if.end.98
	movq	8(%rsp), %rsi           # 8-byte Reload
	movb	%sil, %cl
	andb	$7, %cl
	movl	$128, %eax
	shrl	%cl, %eax
	shrq	$3, %rsi
	movq	16(%rsp), %rcx
	movq	296(%rcx), %rcx
	movzbl	(%rcx,%rsi), %edx
	orl	%eax, %edx
	movb	%dl, (%rcx,%rsi)
.LBB15_14:                              # %if.end.98
	testl	%ebp, %ebp
	je	.LBB15_16
# BB#15:                                # %if.then.100
	movq	5848(%r15), %rdi
	movl	$.L.str.18, %esi
	callq	stream_puts
	testl	%eax, %eax
	js	.LBB15_17
.LBB15_16:                              # %if.end.107
	xorl	%eax, %eax
.LBB15_17:                              # %cleanup
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end15:
	.size	pdf_set_charproc_attrs, .Lfunc_end15-pdf_set_charproc_attrs
	.cfi_endproc

	.globl	pdf_open_aside
	.align	16, 0x90
	.type	pdf_open_aside,@function
pdf_open_aside:                         # @pdf_open_aside
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp124:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp125:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp126:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp127:
	.cfi_def_cfa_offset 40
	subq	$88, %rsp
.Ltmp128:
	.cfi_def_cfa_offset 128
.Ltmp129:
	.cfi_offset %rbx, -40
.Ltmp130:
	.cfi_offset %r14, -32
.Ltmp131:
	.cfi_offset %r15, -24
.Ltmp132:
	.cfi_offset %rbp, -16
	movl	%r9d, %ebp
	movq	%rcx, %r14
	movq	%rdi, %rbx
	movq	5848(%rbx), %r15
	movq	%r15, 22368(%rbx)
	movl	%edx, %eax
	shrl	$4, %eax
	addl	%edx, %eax
	andl	$15, %eax
	cmpl	$15, %esi
	movl	%esi, %ecx
	movl	$5, %esi
	cmovbeq	%rcx, %rsi
	movq	pdf_resource_type_structs(,%rsi,8), %rdx
	shlq	$7, %rsi
	leaq	(%rsi,%rbx), %rcx
	leaq	26672(%rcx,%rax,8), %rsi
	cmpl	$1, %r8d
	sbbq	%r8, %r8
	leaq	80(%rsp), %rcx
	callq	pdf_alloc_aside
	testl	%eax, %eax
	js	.LBB16_7
# BB#1:                                 # %if.end.9
	movq	80(%rsp), %rax
	movq	64(%rax), %rdi
	movl	$cos_stream_procs, %esi
	callq	cos_become
	movq	80(%rsp), %rax
	movq	64(%rax), %rdi
	movl	$.L.str.30, %edx
	movq	%rbx, %rsi
	callq	cos_write_stream_alloc
	movq	%rax, %rcx
	movl	$-25, %eax
	testq	%rcx, %rcx
	je	.LBB16_7
# BB#2:                                 # %if.end.16
	movq	%rcx, 5848(%rbx)
	orl	$4, %ebp
	movq	80(%rsp), %rax
	movq	64(%rax), %rax
	movq	8(%rax), %rcx
	leaq	(%rsp), %rsi
	movq	%rbx, %rdi
	movl	%ebp, %edx
	callq	pdf_append_data_stream_filters
	testl	%eax, %eax
	js	.LBB16_3
# BB#4:                                 # %if.end.25
	movq	80(%rsp), %rax
	movq	64(%rax), %rdi
	movq	16(%rsp), %rdx
	movl	$pdf_open_aside.fnames, %ecx
	movq	%rbx, %rsi
	callq	pdf_put_filters
	testl	%eax, %eax
	js	.LBB16_5
# BB#6:                                 # %if.end.33
	movq	16(%rsp), %rax
	movq	%rax, 5848(%rbx)
	movq	80(%rsp), %rax
	movq	%rax, (%r14)
	xorl	%eax, %eax
	jmp	.LBB16_7
.LBB16_3:                               # %if.then.23
	movq	%r15, 5848(%rbx)
	jmp	.LBB16_7
.LBB16_5:                               # %if.then.31
	movq	%r15, 5848(%rbx)
.LBB16_7:                               # %cleanup
	addq	$88, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end16:
	.size	pdf_open_aside, .Lfunc_end16-pdf_open_aside
	.cfi_endproc

	.globl	pdf_close_aside
	.align	16, 0x90
	.type	pdf_close_aside,@function
pdf_close_aside:                        # @pdf_close_aside
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp133:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp134:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp135:
	.cfi_def_cfa_offset 32
.Ltmp136:
	.cfi_offset %rbx, -24
.Ltmp137:
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	movq	5848(%rbx), %rdi
	movq	%rdi, (%rsp)
	callq	cos_stream_from_pipeline
	movq	%rax, %r14
	leaq	(%rsp), %rdi
	xorl	%esi, %esi
	callq	s_close_filters
	movl	%eax, %ecx
	movq	22368(%rbx), %rax
	movq	%rax, 5848(%rbx)
	movl	$-12, %eax
	testl	%ecx, %ecx
	js	.LBB17_2
# BB#1:                                 # %if.end
	movb	$0, 48(%r14)
	xorl	%eax, %eax
.LBB17_2:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end17:
	.size	pdf_close_aside, .Lfunc_end17-pdf_close_aside
	.cfi_endproc

	.globl	pdf_exit_substream
	.align	16, 0x90
	.type	pdf_exit_substream,@function
pdf_exit_substream:                     # @pdf_exit_substream
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
	pushq	%r12
.Ltmp141:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp142:
	.cfi_def_cfa_offset 48
	subq	$16, %rsp
.Ltmp143:
	.cfi_def_cfa_offset 64
.Ltmp144:
	.cfi_offset %rbx, -48
.Ltmp145:
	.cfi_offset %r12, -40
.Ltmp146:
	.cfi_offset %r14, -32
.Ltmp147:
	.cfi_offset %r15, -24
.Ltmp148:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movl	$-28, %eax
	cmpl	$0, 30392(%rbx)
	jle	.LBB18_9
# BB#1:                                 # %if.end
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	pdf_open_contents
	movl	%eax, %ebp
	movslq	30392(%rbx), %r15
	jmp	.LBB18_3
	.align	16, 0x90
.LBB18_2:                               # %while.body
                                        #   in Loop: Header=BB18_3 Depth=1
	movq	5848(%rbx), %rsi
	movq	%rbx, %rdi
	callq	pdf_restore_viewer_state
	testl	%ebp, %ebp
	cmovnsl	%eax, %ebp
.LBB18_3:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movl	28860(%rbx), %eax
	cmpl	28864(%rbx), %eax
	jg	.LBB18_2
# BB#4:                                 # %while.end
	decq	%r15
	movq	28808(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB18_6
# BB#5:                                 # %if.then.8
	movl	$.L.str.31, %esi
	callq	gx_path_free
.LBB18_6:                               # %if.end.10
	movq	5848(%rbx), %rdi
	movq	%rdi, 8(%rsp)
	callq	cos_stream_from_pipeline
	movq	%rax, %r14
	leaq	8(%rsp), %rdi
	xorl	%esi, %esi
	callq	s_close_filters
	movq	22368(%rbx), %rcx
	movq	%rcx, 5848(%rbx)
	movl	$-12, %r12d
	testl	%eax, %eax
	js	.LBB18_8
# BB#7:                                 # %if.end.i
	movb	$0, 48(%r14)
	xorl	%r12d, %r12d
.LBB18_8:                               # %pdf_close_aside.exit
	testl	%r12d, %r12d
	cmovnsl	%ebp, %r12d
	testl	%ebp, %ebp
	cmovsl	%ebp, %r12d
	movq	30400(%rbx), %rax
	imulq	$120, %r15, %rbp
	movl	(%rax,%rbp), %ecx
	movl	%ecx, 26560(%rbx)
	movq	26592(%rbx), %rcx
	movq	16(%rcx), %rdi
	movq	8(%rax,%rbp), %rsi
	callq	pdf_text_state_copy
	movq	30400(%rbx), %rax
	movq	16(%rax,%rbp), %rcx
	movq	%rcx, 28808(%rbx)
	movq	$0, 16(%rax,%rbp)
	movq	24(%rax,%rbp), %rcx
	movq	%rcx, 8784(%rbx)
	movl	32(%rax,%rbp), %ecx
	movl	%ecx, 28864(%rbx)
	movq	40(%rax,%rbp), %rcx
	movq	%rcx, 5848(%rbx)
	movq	$0, 40(%rax,%rbp)
	movl	56(%rax,%rbp), %ecx
	movl	%ecx, 26584(%rbx)
	movq	48(%rax,%rbp), %rcx
	movq	%rcx, 30448(%rbx)
	movq	$0, 48(%rax,%rbp)
	movl	60(%rax,%rbp), %ecx
	movl	%ecx, 30460(%rbx)
	movups	64(%rax,%rbp), %xmm0
	movq	$0, 64(%rax,%rbp)
	movups	%xmm0, 30472(%rbx)
	movq	$0, 72(%rax,%rbp)
	movl	80(%rax,%rbp), %ecx
	movl	%ecx, 30560(%rbx)
	movl	84(%rax,%rbp), %ecx
	movl	%ecx, 30568(%rbx)
	movq	88(%rax,%rbp), %rcx
	movq	%rcx, 30648(%rbx)
	movups	96(%rax,%rbp), %xmm0
	movups	%xmm0, 30656(%rbx)
	movl	112(%rax,%rbp), %eax
	movl	%eax, 30688(%rbx)
	movl	%r15d, 30392(%rbx)
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	pdf_restore_viewer_state
	testl	%eax, %eax
	cmovnsl	%r12d, %eax
	testl	%r12d, %r12d
	cmovsl	%r12d, %eax
.LBB18_9:                               # %cleanup
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end18:
	.size	pdf_exit_substream, .Lfunc_end18-pdf_exit_substream
	.cfi_endproc

	.globl	pdf_end_charproc_accum
	.align	16, 0x90
	.type	pdf_end_charproc_accum,@function
pdf_end_charproc_accum:                 # @pdf_end_charproc_accum
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp149:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp150:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp151:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp152:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp153:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp154:
	.cfi_def_cfa_offset 56
	subq	$120, %rsp
.Ltmp155:
	.cfi_def_cfa_offset 176
.Ltmp156:
	.cfi_offset %rbx, -56
.Ltmp157:
	.cfi_offset %r12, -48
.Ltmp158:
	.cfi_offset %r13, -40
.Ltmp159:
	.cfi_offset %r14, -32
.Ltmp160:
	.cfi_offset %r15, -24
.Ltmp161:
	.cfi_offset %rbp, -16
	movq	%r9, %rbx
	movq	%r8, %r13
	movq	%rcx, %rbp
	movq	%rdx, %r14
	movq	%rdi, %r12
	movq	30480(%r12), %r15
	movq	%r15, 48(%rsp)
	movl	$-28, %eax
	cmpq	$255, %r13
	ja	.LBB19_43
# BB#1:                                 # %if.end.3
	movq	$0, (%rsp)
	leaq	40(%rsp), %rdx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movq	%r12, %rdi
	movq	%rsi, 32(%rsp)          # 8-byte Spill
	callq	pdf_attached_font_resource
	testl	%eax, %eax
	js	.LBB19_43
# BB#2:                                 # %if.end.6
	movq	40(%rsp), %rax
	cmpq	30472(%r12), %rax
	movl	$-28, %eax
	jne	.LBB19_43
# BB#3:                                 # %if.end.9
	movq	%r12, %rdi
	callq	pdf_exit_substream
	testl	%eax, %eax
	js	.LBB19_43
# BB#4:                                 # %if.end.13
	movq	%r13, %rax
	shrq	$3, %rax
	movq	40(%rsp), %rdi
	movq	136(%rdi), %rcx
	movzbl	(%rcx,%rax), %esi
	movb	%r13b, %cl
	andb	$7, %cl
	movl	$128, %edx
	shrl	%cl, %edx
	testl	%edx, %esi
	je	.LBB19_6
# BB#5:                                 # %lor.lhs.false
	movq	296(%rdi), %rcx
	movzbl	(%rcx,%rax), %eax
	testl	%edx, %eax
	je	.LBB19_6
# BB#41:                                # %if.end.80.critedge
	xorl	%edx, %edx
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	pdf_reserve_object_id
	jmp	.LBB19_42
.LBB19_6:                               # %if.then.24
	movq	%rbx, 16(%rsp)          # 8-byte Spill
	movq	%r14, 56(%rsp)
	movq	%rdi, 64(%rsp)
	movq	%r13, 72(%rsp)
	movq	%rbp, 80(%rsp)
	movq	%rbp, 24(%rsp)          # 8-byte Spill
	movq	32(%rsp), %rcx          # 8-byte Reload
	movq	%rcx, 88(%rsp)
	leaq	56(%rsp), %rax
	movq	%rax, 30680(%r12)
	movq	272(%rdi), %rbp
	testq	%rbp, %rbp
	je	.LBB19_19
# BB#7:
	movq	%r15, %rax
	jmp	.LBB19_8
	.align	16, 0x90
.LBB19_18:                              # %for.inc.i.i.for.body.i.i_crit_edge
                                        #   in Loop: Header=BB19_8 Depth=1
	movq	48(%rsp), %rax
.LBB19_8:                               # %for.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rbp), %rbx
	cmpq	%rbx, %rax
	je	.LBB19_17
# BB#9:                                 # %land.lhs.true.i.i
                                        #   in Loop: Header=BB19_8 Depth=1
	movsd	88(%rax), %xmm0         # xmm0 = mem[0],zero
	ucomisd	88(%rbx), %xmm0
	jne	.LBB19_17
	jp	.LBB19_17
# BB#10:                                # %if.end.i.i.i
                                        #   in Loop: Header=BB19_8 Depth=1
	movsd	96(%rax), %xmm0         # xmm0 = mem[0],zero
	ucomisd	96(%rbx), %xmm0
	jne	.LBB19_17
	jp	.LBB19_17
# BB#11:                                # %if.end.8.i.i.i
                                        #   in Loop: Header=BB19_8 Depth=1
	movsd	104(%rax), %xmm0        # xmm0 = mem[0],zero
	ucomisd	104(%rbx), %xmm0
	jne	.LBB19_17
	jp	.LBB19_17
# BB#12:                                # %pdf_is_same_charproc_attrs1.exit.i.i
                                        #   in Loop: Header=BB19_8 Depth=1
	movsd	112(%rax), %xmm0        # xmm0 = mem[0],zero
	ucomisd	112(%rbx), %xmm0
	jne	.LBB19_17
	jp	.LBB19_17
# BB#13:                                # %if.then.i.i
                                        #   in Loop: Header=BB19_8 Depth=1
	movq	%rdi, 8(%rsp)           # 8-byte Spill
	movq	%rcx, %r14
	movq	64(%rbx), %rdi
	movq	64(%rax), %rsi
	movq	(%rdi), %rax
	movq	%r12, %rdx
	callq	*16(%rax)
	testl	%eax, %eax
	js	.LBB19_14
# BB#15:                                # %if.end.i.i
                                        #   in Loop: Header=BB19_8 Depth=1
	movq	%r14, %rcx
	movq	8(%rsp), %rdi           # 8-byte Reload
	jne	.LBB19_16
	.align	16, 0x90
.LBB19_17:                              # %for.inc.i.i
                                        #   in Loop: Header=BB19_8 Depth=1
	movq	16(%rbp), %rbp
	testq	%rbp, %rbp
	jne	.LBB19_18
.LBB19_19:                              # %pdf_find_same_charproc.exit
	movq	%rdi, %r14
	movq	%rcx, 32(%rsp)          # 8-byte Spill
	leaq	48(%rsp), %rdx
	movl	$7, %esi
	movl	$pdf_is_charproc_compatible, %ecx
	movq	%r12, %rdi
	callq	pdf_find_same_resource
	movq	$0, 30680(%r12)
	movq	64(%rsp), %rcx
	movq	%rcx, 40(%rsp)
	testl	%eax, %eax
	movq	16(%rsp), %rbx          # 8-byte Reload
	movq	24(%rsp), %rbp          # 8-byte Reload
	js	.LBB19_43
# BB#20:                                # %if.end.29
	jne	.LBB19_21
# BB#31:                                # %if.end.53
	movq	272(%rcx), %rax
	jmp	.LBB19_33
.LBB19_32:                              # %for.cond.i
                                        #   in Loop: Header=BB19_33 Depth=1
	movq	16(%rax), %rax
.LBB19_33:                              # %for.cond.i
                                        # =>This Inner Loop Header: Depth=1
	testq	%rax, %rax
	je	.LBB19_40
# BB#34:                                # %for.body.i.74
                                        #   in Loop: Header=BB19_33 Depth=1
	cmpq	%r13, 32(%rax)
	jne	.LBB19_32
# BB#35:
	movq	32(%rsp), %r14          # 8-byte Reload
.LBB19_36:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	%r14, %rbp
	movq	64(%rbp), %r14
	cmpq	%rbp, %r14
	je	.LBB19_38
# BB#37:                                # %land.rhs
                                        #   in Loop: Header=BB19_36 Depth=1
	movl	$1, %edx
	movq	%rbp, %rdi
	movq	%r14, %rsi
	callq	*192(%rbp)
	testl	%eax, %eax
	jne	.LBB19_36
.LBB19_38:                              # %while.end
	leaq	40(%rsp), %rdx
	movq	%r12, %rdi
	movq	%rbp, %rsi
	callq	pdf_make_font3_resource
	testl	%eax, %eax
	movq	24(%rsp), %rbp          # 8-byte Reload
	js	.LBB19_43
# BB#39:                                # %if.end.65
	movq	40(%rsp), %rdx
	movq	%r12, %rdi
	movq	32(%rsp), %rsi          # 8-byte Reload
	callq	pdf_attach_font_resource
	testl	%eax, %eax
	js	.LBB19_43
.LBB19_40:                              # %if.end.76
	xorl	%edx, %edx
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	pdf_reserve_object_id
	movl	$1, 30560(%r12)
	jmp	.LBB19_42
.LBB19_14:                              # %pdf_find_same_charproc.exit.thread
	movq	$0, 30680(%r12)
	movq	64(%rsp), %rcx
	movq	%rcx, 40(%rsp)
	jmp	.LBB19_43
.LBB19_16:                              # %if.end.29.thread
	movq	%rdi, %r14
	movq	%rcx, 32(%rsp)          # 8-byte Spill
	movq	%rbx, 48(%rsp)
	movq	$0, 30680(%r12)
	movq	64(%rsp), %rax
	movq	%rax, 40(%rsp)
	movq	16(%rsp), %rbx          # 8-byte Reload
	movq	24(%rsp), %rbp          # 8-byte Reload
.LBB19_21:                              # %if.then.32
	movl	$7, %edx
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	pdf_cancel_resource
	testl	%eax, %eax
	js	.LBB19_43
# BB#22:                                # %if.end.37
	movl	$7, %edx
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	pdf_forget_resource
	movq	40(%rsp), %rdx
	cmpq	%rdx, %r14
	je	.LBB19_30
# BB#23:                                # %if.then.40
	movq	%r12, %rdi
	movq	32(%rsp), %rsi          # 8-byte Reload
	callq	pdf_attach_font_resource
	testl	%eax, %eax
	js	.LBB19_43
# BB#24:                                # %if.end.45
	leaq	96(%rsp), %rax
	movq	%rax, (%rsp)
	leaq	56(%rsp), %rdx
	leaq	104(%rsp), %rcx
	leaq	112(%rsp), %r8
	leaq	100(%rsp), %r9
	movq	%r12, %rdi
	movq	32(%rsp), %rsi          # 8-byte Reload
	callq	pdf_attached_font_resource
	testl	%eax, %eax
	js	.LBB19_29
# BB#25:                                # %if.end.i
	movq	56(%rsp), %rax
	movq	272(%rax), %rdx
	xorl	%eax, %eax
	testq	%rdx, %rdx
	je	.LBB19_29
# BB#26:
	movq	%rbp, %r9
	movq	%rbx, %r8
.LBB19_27:                              # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rdx), %rcx
	movq	32(%rdx), %rbx
	movq	88(%rcx), %rdi
	movq	112(%rsp), %rbp
	movq	%rbx, %rsi
	shlq	$4, %rsi
	movq	%rdi, (%rbp,%rsi)
	movq	96(%rcx), %rcx
	movq	%rcx, 8(%rbp,%rsi)
	movb	%bl, %cl
	andb	$7, %cl
	movl	$128, %esi
	shrl	%cl, %esi
	shrq	$3, %rbx
	movq	104(%rsp), %rcx
	movzbl	(%rcx,%rbx), %edi
	orl	%esi, %edi
	movb	%dil, (%rcx,%rbx)
	movq	16(%rdx), %rdx
	testq	%rdx, %rdx
	jne	.LBB19_27
# BB#28:
	movq	%r8, %rbx
	movq	%r9, %rbp
.LBB19_29:                              # %pdf_char_widths_from_charprocs.exit
	testl	%eax, %eax
	js	.LBB19_43
.LBB19_30:                              # %if.end.51
	movl	$1, 30560(%r12)
.LBB19_42:                              # %if.end.80
	movq	48(%rsp), %r8
	movq	%r12, %rdi
	movq	32(%rsp), %rsi          # 8-byte Reload
	movq	%rbp, %rdx
	movq	%r13, %rcx
	movq	%rbx, %r9
	callq	complete_adding_char
.LBB19_43:                              # %cleanup.82
	addq	$120, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end19:
	.size	pdf_end_charproc_accum, .Lfunc_end19-pdf_end_charproc_accum
	.cfi_endproc

	.align	16, 0x90
	.type	complete_adding_char,@function
complete_adding_char:                   # @complete_adding_char
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp162:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp163:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp164:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp165:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp166:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp167:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp168:
	.cfi_def_cfa_offset 96
.Ltmp169:
	.cfi_offset %rbx, -56
.Ltmp170:
	.cfi_offset %r12, -48
.Ltmp171:
	.cfi_offset %r13, -40
.Ltmp172:
	.cfi_offset %r14, -32
.Ltmp173:
	.cfi_offset %r15, -24
.Ltmp174:
	.cfi_offset %rbp, -16
	movq	%r9, %r14
	movq	%r8, %r12
	movq	%rcx, %rbx
	movq	%rdx, %r15
	movq	%rsi, %r13
	movq	%rdi, %rbp
	leaq	8(%rsp), %rax
	movq	%rax, (%rsp)
	leaq	32(%rsp), %rdx
	leaq	16(%rsp), %rcx
	leaq	24(%rsp), %r8
	leaq	12(%rsp), %r9
	callq	pdf_attached_font_resource
	testl	%eax, %eax
	js	.LBB20_11
# BB#1:                                 # %if.end
	movq	32(%rsp), %rsi
	movq	%rbp, %rdi
	movq	%r12, %rdx
	movq	%r15, %rcx
	movq	%rbx, %r8
	movq	%r14, %r9
	callq	pdf_attach_charproc
	testl	%eax, %eax
	js	.LBB20_11
# BB#2:                                 # %if.end.4
	movslq	12(%rsp), %rcx
	movl	$-28, %eax
	cmpq	%rbx, %rcx
	jbe	.LBB20_11
# BB#3:                                 # %lor.lhs.false
	movslq	8(%rsp), %rcx
	cmpq	%rbx, %rcx
	jbe	.LBB20_11
# BB#4:                                 # %if.end.11
	movq	32(%rsp), %rax
	movq	128(%rax), %rcx
	movq	192(%rax), %rax
	movq	88(%r12), %rdx
	movq	%rdx, (%rcx,%rbx,8)
	movq	88(%r12), %rcx
	movq	24(%rsp), %rsi
	movq	%rbx, %rdx
	shlq	$4, %rdx
	movq	%rcx, (%rsi,%rdx)
	movq	96(%r12), %rcx
	movq	%rcx, 8(%rsi,%rdx)
	movb	%bl, %cl
	andb	$7, %cl
	movl	$128, %esi
	shrl	%cl, %esi
	movq	%rbx, %rcx
	shrq	$3, %rcx
	movq	16(%rsp), %rdi
	movzbl	(%rdi,%rcx), %ebp
	orl	%esi, %ebp
	movb	%bpl, (%rdi,%rcx)
	movq	32(%rsp), %rdi
	movq	136(%rdi), %rdi
	movzbl	(%rdi,%rcx), %ebp
	orl	%esi, %ebp
	movb	%bpl, (%rdi,%rcx)
	movq	32(%rsp), %rcx
	movq	200(%rcx), %rsi
	testq	%rsi, %rsi
	je	.LBB20_7
# BB#5:                                 # %land.lhs.true
	cmpl	$0, 148(%r13)
	je	.LBB20_7
# BB#6:                                 # %if.then.34
	movq	104(%r12), %rdi
	movq	%rdi, (%rsi,%rdx)
	movq	104(%r12), %rdi
	movq	%rdi, 8(%rsi,%rdx)
.LBB20_7:                               # %if.end.49
	movq	%rbx, %rdx
	shlq	$5, %rdx
	movq	%r15, (%rax,%rdx)
	movups	(%r14), %xmm0
	movups	%xmm0, 8(%rax,%rdx)
	movl	$1, 24(%rax,%rdx)
	cmpl	%ebx, 180(%rcx)
	jge	.LBB20_9
# BB#8:                                 # %if.then.56
	movl	%ebx, 180(%rcx)
.LBB20_9:                               # %if.end.61
	xorl	%eax, %eax
	cmpl	%ebx, 176(%rcx)
	jle	.LBB20_11
# BB#10:                                # %if.then.67
	movl	%ebx, 176(%rcx)
.LBB20_11:                              # %cleanup
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end20:
	.size	complete_adding_char, .Lfunc_end20-complete_adding_char
	.cfi_endproc

	.globl	pdf_add_procsets
	.align	16, 0x90
	.type	pdf_add_procsets,@function
pdf_add_procsets:                       # @pdf_add_procsets
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp175:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp176:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp177:
	.cfi_def_cfa_offset 32
	subq	$80, %rsp
.Ltmp178:
	.cfi_def_cfa_offset 112
.Ltmp179:
	.cfi_offset %rbx, -32
.Ltmp180:
	.cfi_offset %r14, -24
.Ltmp181:
	.cfi_offset %rbp, -16
	movl	%esi, %ebp
	movq	%rdi, %r14
	leaq	32(%rsp), %rdi
	movl	$.L.str.32, %esi
	callq	strcpy
	testb	$1, %bpl
	je	.LBB21_2
# BB#1:                                 # %if.then
	leaq	32(%rsp), %rdi
	movl	$.L.str.33, %esi
	callq	strcat
.LBB21_2:                               # %if.end
	testb	$2, %bpl
	je	.LBB21_4
# BB#3:                                 # %if.then.5
	leaq	32(%rsp), %rdi
	movl	$.L.str.34, %esi
	callq	strcat
.LBB21_4:                               # %if.end.8
	testb	$4, %bpl
	je	.LBB21_6
# BB#5:                                 # %if.then.11
	leaq	32(%rsp), %rdi
	movl	$.L.str.35, %esi
	callq	strcat
.LBB21_6:                               # %if.end.14
	testb	$8, %bpl
	je	.LBB21_8
# BB#7:                                 # %if.then.17
	leaq	32(%rsp), %rdi
	movl	$.L.str.36, %esi
	callq	strcat
.LBB21_8:                               # %if.end.20
	leaq	32(%rsp), %rbp
	movl	$.L.str.37, %esi
	movq	%rbp, %rdi
	callq	strcat
	movq	%rbp, %rdi
	callq	strlen
	leaq	8(%rsp), %rbx
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movl	%eax, %edx
	callq	cos_string_value
	movl	$.L.str.38, %esi
	movq	%r14, %rdi
	movq	%rbx, %rdx
	callq	cos_dict_put_c_key
	addq	$80, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end21:
	.size	pdf_add_procsets, .Lfunc_end21-pdf_add_procsets
	.cfi_endproc

	.globl	pdf_add_resource
	.align	16, 0x90
	.type	pdf_add_resource,@function
pdf_add_resource:                       # @pdf_add_resource
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp182:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp183:
	.cfi_def_cfa_offset 24
	pushq	%r13
.Ltmp184:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp185:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp186:
	.cfi_def_cfa_offset 48
	subq	$64, %rsp
.Ltmp187:
	.cfi_def_cfa_offset 112
.Ltmp188:
	.cfi_offset %rbx, -48
.Ltmp189:
	.cfi_offset %r12, -40
.Ltmp190:
	.cfi_offset %r13, -32
.Ltmp191:
	.cfi_offset %r14, -24
.Ltmp192:
	.cfi_offset %r15, -16
	movq	%rcx, %r14
	movq	%rdx, %r15
	movq	%rsi, %rbx
	movq	%rdi, %r12
	xorl	%eax, %eax
	testq	%rbx, %rbx
	je	.LBB22_11
# BB#1:                                 # %if.then
	movq	%r15, %rdi
	callq	strlen
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movl	%eax, %edx
	callq	cos_dict_find
	movq	%rax, %r13
	cmpl	$0, 9524(%r12)
	je	.LBB22_5
# BB#2:                                 # %land.lhs.true
	cmpl	$0, 28(%r14)
	jne	.LBB22_5
# BB#3:                                 # %land.lhs.true.3
	cmpl	$0, 30568(%r12)
	je	.LBB22_5
# BB#4:                                 # %if.then.5
	movl	$1, 28(%r14)
	movq	64(%r14), %rdi
	movl	$.L.str.39, %esi
	movl	$1, %edx
	callq	cos_dict_put_c_key_bool
	testl	%eax, %eax
	js	.LBB22_11
.LBB22_5:                               # %if.end.11
	movq	64(%r14), %rax
	movq	8(%rax), %rdx
	leaq	32(%rsp), %rdi
	movl	$.L.str.40, %esi
	xorl	%eax, %eax
	callq	gs_sprintf
	testq	%r13, %r13
	je	.LBB22_8
# BB#6:                                 # %if.then.16
	movl	(%r13), %ecx
	andl	$-2, %ecx
	movl	$-28, %eax
	cmpl	$2, %ecx
	jne	.LBB22_11
# BB#7:                                 # %if.end.24
	movq	8(%r13), %r12
	movl	$cos_dict_procs, %ecx
	cmpq	%rcx, (%r12)
	jne	.LBB22_11
	jmp	.LBB22_10
.LBB22_8:                               # %if.else
	movl	$.L.str.41, %esi
	movq	%r12, %rdi
	callq	cos_dict_alloc
	movq	%rax, %r12
	movl	$-25, %eax
	testq	%r12, %r12
	je	.LBB22_11
# BB#9:                                 # %if.end.34
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%r12, %rdx
	callq	cos_dict_put_c_key_object
	testl	%eax, %eax
	js	.LBB22_11
.LBB22_10:                              # %if.end.40
	movb	$47, (%rsp)
	leaq	1(%rsp), %rdi
	addq	$32, %r14
	movq	%r14, %rsi
	callq	strcpy
	leaq	(%rsp), %r14
	movq	%r14, %rdi
	callq	strlen
	movq	%rax, %rbx
	leaq	32(%rsp), %r15
	movq	%r15, %rdi
	callq	strlen
	movq	%r12, %rdi
	movq	%r14, %rsi
	movl	%ebx, %edx
	movq	%r15, %rcx
	movl	%eax, %r8d
	callq	cos_dict_put_string
.LBB22_11:                              # %return
	addq	$64, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.Lfunc_end22:
	.size	pdf_add_resource, .Lfunc_end22-pdf_add_resource
	.cfi_endproc

	.align	16, 0x90
	.type	pdf_is_charproc_compatible,@function
pdf_is_charproc_compatible:             # @pdf_is_charproc_compatible
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp193:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp194:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp195:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp196:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp197:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp198:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp199:
	.cfi_def_cfa_offset 64
.Ltmp200:
	.cfi_offset %rbx, -56
.Ltmp201:
	.cfi_offset %r12, -48
.Ltmp202:
	.cfi_offset %r13, -40
.Ltmp203:
	.cfi_offset %r14, -32
.Ltmp204:
	.cfi_offset %r15, -24
.Ltmp205:
	.cfi_offset %rbp, -16
	movq	%rdx, %rbx
	movsd	88(%rsi), %xmm0         # xmm0 = mem[0],zero
	xorl	%eax, %eax
	ucomisd	88(%rbx), %xmm0
	jne	.LBB23_34
	jp	.LBB23_34
# BB#1:                                 # %if.end.i
	movsd	96(%rsi), %xmm0         # xmm0 = mem[0],zero
	ucomisd	96(%rbx), %xmm0
	jne	.LBB23_34
	jp	.LBB23_34
# BB#2:                                 # %if.end.8.i
	movsd	104(%rsi), %xmm0        # xmm0 = mem[0],zero
	ucomisd	104(%rbx), %xmm0
	jne	.LBB23_34
	jp	.LBB23_34
# BB#3:                                 # %pdf_is_same_charproc_attrs1.exit
	movsd	112(%rsi), %xmm0        # xmm0 = mem[0],zero
	ucomisd	112(%rbx), %xmm0
	jne	.LBB23_34
	jp	.LBB23_34
# BB#4:                                 # %if.end
	movq	30680(%rdi), %r15
	movq	8(%r15), %r12
	movq	72(%rbx), %rcx
	xorl	%ebp, %ebp
	testq	%rcx, %rcx
	je	.LBB23_15
# BB#5:                                 # %for.body.lr.ph
	xorl	%ebp, %ebp
.LBB23_6:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB23_12 Depth 2
	cmpq	24(%rcx), %r12
	jne	.LBB23_14
# BB#7:                                 # %if.then.3
                                        #   in Loop: Header=BB23_6 Depth=1
	movq	16(%r15), %rdx
	cmpq	%rdx, 32(%rcx)
	jne	.LBB23_9
# BB#8:                                 # %land.lhs.true
                                        #   in Loop: Header=BB23_6 Depth=1
	movq	40(%rcx), %rsi
	movl	$1, %eax
	cmpq	24(%r15), %rsi
	je	.LBB23_34
.LBB23_9:                               # %if.end.9
                                        #   in Loop: Header=BB23_6 Depth=1
	testl	%ebp, %ebp
	jne	.LBB23_14
# BB#10:                                # %if.then.11
                                        #   in Loop: Header=BB23_6 Depth=1
	movq	272(%r12), %rsi
	jmp	.LBB23_12
	.align	16, 0x90
.LBB23_11:                              # %for.cond.i.52
                                        #   in Loop: Header=BB23_12 Depth=2
	movq	16(%rsi), %rsi
.LBB23_12:                              # %for.cond.i.52
                                        #   Parent Loop BB23_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$1, %eax
	testq	%rsi, %rsi
	je	.LBB23_34
# BB#13:                                # %for.body.i.56
                                        #   in Loop: Header=BB23_12 Depth=2
	movl	$1, %ebp
	cmpq	%rdx, 32(%rsi)
	jne	.LBB23_11
.LBB23_14:                              # %for.inc
                                        #   in Loop: Header=BB23_6 Depth=1
	movq	16(%rcx), %rcx
	testq	%rcx, %rcx
	jne	.LBB23_6
.LBB23_15:                              # %for.end
	movq	32(%r15), %rsi
	callq	pdf_locate_font_cache_elem
	movq	%rax, %r14
	testq	%r14, %r14
	je	.LBB23_27
# BB#16:                                # %for.cond.25.preheader
	movq	72(%rbx), %rbx
	testq	%rbx, %rbx
	je	.LBB23_27
# BB#17:                                # %for.body.27.lr.ph
	leaq	248(%r12), %r13
	.align	16, 0x90
.LBB23_18:                              # %for.body.27
                                        # =>This Inner Loop Header: Depth=1
	movq	32(%rbx), %rax
	cmpq	16(%r15), %rax
	jne	.LBB23_26
# BB#19:                                # %lor.lhs.false
                                        #   in Loop: Header=BB23_18 Depth=1
	movq	40(%rbx), %rax
	cmpq	24(%r15), %rax
	jne	.LBB23_26
# BB#20:                                # %if.end.35
                                        #   in Loop: Header=BB23_18 Depth=1
	movl	284(%r12), %eax
	movq	24(%rbx), %rsi
	cmpl	284(%rsi), %eax
	jne	.LBB23_26
# BB#21:                                # %if.end.44
                                        #   in Loop: Header=BB23_18 Depth=1
	addq	$248, %rsi
	movq	%r13, %rdi
	callq	gs_matrix_compare
	testl	%eax, %eax
	jne	.LBB23_26
# BB#22:                                # %if.end.58
                                        #   in Loop: Header=BB23_18 Depth=1
	movq	(%r15), %rsi
	testq	%rsi, %rsi
	je	.LBB23_24
# BB#23:                                # %if.then.60
                                        #   in Loop: Header=BB23_18 Depth=1
	movq	24(%rbx), %rdi
	movl	(%rsi), %edx
	addq	$16, %rsi
	callq	pdf_check_encoding_compatibility
	testl	%eax, %eax
	je	.LBB23_26
.LBB23_24:                              # %if.end.69
                                        #   in Loop: Header=BB23_18 Depth=1
	movq	(%r14), %rax
	movq	24(%rax), %rax
	cmpq	24(%rbx), %rax
	je	.LBB23_25
	.align	16, 0x90
.LBB23_26:                              # %for.inc.77
                                        #   in Loop: Header=BB23_18 Depth=1
	movq	16(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.LBB23_18
.LBB23_27:                              # %if.end.80
	xorl	%eax, %eax
	testl	%ebp, %ebp
	jne	.LBB23_34
# BB#28:                                # %if.then.82
	movq	272(%r12), %rcx
	testq	%rcx, %rcx
	je	.LBB23_29
# BB#32:
	movq	16(%r15), %rdx
.LBB23_33:                              # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	cmpq	%rdx, 32(%rcx)
	je	.LBB23_34
# BB#30:                                # %for.cond.i
                                        #   in Loop: Header=BB23_33 Depth=1
	movq	16(%rcx), %rcx
	testq	%rcx, %rcx
	jne	.LBB23_33
# BB#31:
	movl	$1, %eax
	jmp	.LBB23_34
.LBB23_29:
	movl	$1, %eax
.LBB23_34:                              # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB23_25:                              # %if.end.74
	movq	%rax, 8(%r15)
	movl	$1, %eax
	jmp	.LBB23_34
.Lfunc_end23:
	.size	pdf_is_charproc_compatible, .Lfunc_end23-pdf_is_charproc_compatible
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"pdf_char_proc_t"
	.size	.L.str, 16

	.type	pdf_char_proc_reloc_ptrs,@object # @pdf_char_proc_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
pdf_char_proc_reloc_ptrs:
	.short	1                       # 0x1
	.short	0                       # 0x0
	.zero	4
	.quad	st_pdf_resource
	.quad	pdf_char_proc_enum_ptrs
	.size	pdf_char_proc_reloc_ptrs, 24

	.type	st_pdf_char_proc,@object # @st_pdf_char_proc
	.globl	st_pdf_char_proc
	.align	8
st_pdf_char_proc:
	.long	120                     # 0x78
	.zero	4
	.quad	.L.str
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	pdf_char_proc_reloc_ptrs
	.size	st_pdf_char_proc, 64

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"/CharProcs <<"
	.size	.L.str.1, 14

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"/a%ld %ld 0 R\n"
	.size	.L.str.2, 15

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	" %ld 0 R\n"
	.size	.L.str.3, 10

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	">>"
	.size	.L.str.4, 3

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"/FontMatrix[%g %g %g %g %g %g]"
	.size	.L.str.5, 31

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"pdf_bitmap_fonts_alloc"
	.size	.L.str.6, 23

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Free CharProc"
	.size	.L.str.7, 14

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	".notdef"
	.size	.L.str.8, 8

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"<</Length       >>stream\n"
	.size	.L.str.9, 26

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"%d"
	.size	.L.str.10, 3

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"\n"
	.size	.L.str.11, 2

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"endstream\n"
	.size	.L.str.12, 11

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"<</Type/Encoding/Differences[0"
	.size	.L.str.13, 31

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"/a%d"
	.size	.L.str.14, 5

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"\n] >>\n"
	.size	.L.str.15, 7

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"%g 0 d0\n"
	.size	.L.str.16, 9

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"%g %g %g %g %g %g d1\n"
	.size	.L.str.17, 22

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"0.01 0 0 0.01 0 0 cm\n"
	.size	.L.str.18, 22

	.type	pdf_open_aside.fnames,@object # @pdf_open_aside.fnames
	.section	.rodata,"a",@progbits
	.align	8
pdf_open_aside.fnames:
	.quad	.L.str.19
	.quad	.L.str.20
	.quad	.L.str.21
	.quad	.L.str.22
	.quad	.L.str.23
	.quad	.L.str.24
	.quad	.L.str.25
	.quad	.L.str.26
	.quad	.L.str.27
	.quad	.L.str.28
	.quad	.L.str.29
	.size	pdf_open_aside.fnames, 88

	.type	.L.str.19,@object       # @.str.19
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.19:
	.asciz	"/ASCII85Decode"
	.size	.L.str.19, 15

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"/ASCIIHexDecode"
	.size	.L.str.20, 16

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"/CCITTFaxDecode"
	.size	.L.str.21, 16

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"/DCTDecode"
	.size	.L.str.22, 11

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"/DecodeParms"
	.size	.L.str.23, 13

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"/Filter"
	.size	.L.str.24, 8

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"/FlateDecode"
	.size	.L.str.25, 13

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"/LZWDecode"
	.size	.L.str.26, 11

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"/RunLengthDecode"
	.size	.L.str.27, 17

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"/JBIG2Decode"
	.size	.L.str.28, 13

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"/JPXDecode"
	.size	.L.str.29, 11

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"pdf_enter_substream"
	.size	.L.str.30, 20

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"pdf_end_charproc_accum"
	.size	.L.str.31, 23

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"[/PDF"
	.size	.L.str.32, 6

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"/ImageB"
	.size	.L.str.33, 8

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"/ImageC"
	.size	.L.str.34, 8

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"/ImageI"
	.size	.L.str.35, 8

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"/Text"
	.size	.L.str.36, 6

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"]"
	.size	.L.str.37, 2

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"/ProcSet"
	.size	.L.str.38, 9

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"/.Global"
	.size	.L.str.39, 9

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"%ld 0 R\n"
	.size	.L.str.40, 9

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"pdf_add_resource"
	.size	.L.str.41, 17

	.type	pdf_char_proc_enum_ptrs,@object # @pdf_char_proc_enum_ptrs
	.section	.rodata,"a",@progbits
	.align	2
pdf_char_proc_enum_ptrs:
	.short	0                       # 0x0
	.short	72                      # 0x48
	.size	pdf_char_proc_enum_ptrs, 4

	.type	.L.str.42,@object       # @.str.42
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.42:
	.asciz	"pdf_bitmap_fonts_t"
	.size	.L.str.42, 19

	.type	pdf_bitmap_fonts_reloc_ptrs,@object # @pdf_bitmap_fonts_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
pdf_bitmap_fonts_reloc_ptrs:
	.short	1                       # 0x1
	.short	0                       # 0x0
	.zero	4
	.quad	0
	.quad	pdf_bitmap_fonts_enum_ptrs
	.size	pdf_bitmap_fonts_reloc_ptrs, 24

	.type	st_pdf_bitmap_fonts,@object # @st_pdf_bitmap_fonts
	.align	8
st_pdf_bitmap_fonts:
	.long	32                      # 0x20
	.zero	4
	.quad	.L.str.42
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	pdf_bitmap_fonts_reloc_ptrs
	.size	st_pdf_bitmap_fonts, 64

	.type	pdf_bitmap_fonts_enum_ptrs,@object # @pdf_bitmap_fonts_enum_ptrs
	.align	2
pdf_bitmap_fonts_enum_ptrs:
	.zero	4
	.size	pdf_bitmap_fonts_enum_ptrs, 4

	.type	.L.str.43,@object       # @.str.43
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.43:
	.asciz	"pdf_attach_charproc"
	.size	.L.str.43, 20

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"pdf_char_proc_ownership_t"
	.size	.L.str.44, 26

	.type	pdf_char_proc_ownership_reloc_ptrs,@object # @pdf_char_proc_ownership_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
pdf_char_proc_ownership_reloc_ptrs:
	.short	5                       # 0x5
	.short	0                       # 0x0
	.zero	4
	.quad	0
	.quad	pdf_char_proc_ownership_enum_ptrs
	.size	pdf_char_proc_ownership_reloc_ptrs, 24

	.type	st_pdf_char_proc_ownership,@object # @st_pdf_char_proc_ownership
	.align	8
st_pdf_char_proc_ownership:
	.long	72                      # 0x48
	.zero	4
	.quad	.L.str.44
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	pdf_char_proc_ownership_reloc_ptrs
	.size	st_pdf_char_proc_ownership, 64

	.type	pdf_char_proc_ownership_enum_ptrs,@object # @pdf_char_proc_ownership_enum_ptrs
	.align	16
pdf_char_proc_ownership_enum_ptrs:
	.short	2                       # 0x2
	.short	48                      # 0x30
	.zero	4
	.short	0                       # 0x0
	.short	16                      # 0x10
	.short	0                       # 0x0
	.short	8                       # 0x8
	.short	0                       # 0x0
	.short	24                      # 0x18
	.size	pdf_char_proc_ownership_enum_ptrs, 20


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
