	.text
	.file	"gdevpdfu.bc"
	.globl	ps2write_dsc_header
	.align	16, 0x90
	.type	ps2write_dsc_header,@function
ps2write_dsc_header:                    # @ps2write_dsc_header
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
	subq	$360, %rsp              # imm = 0x168
.Ltmp6:
	.cfi_def_cfa_offset 416
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
	movq	%rdi, %r13
	movq	5848(%r13), %rdi
	movq	%rdi, 352(%rsp)
	xorl	%r15d, %r15d
	cmpl	$0, 9524(%r13)
	je	.LBB0_40
# BB#1:                                 # %if.then
	cmpl	$0, 9528(%r13)
	je	.LBB0_3
# BB#2:                                 # %if.then.2
	movl	%esi, 28(%rsp)          # 4-byte Spill
	movl	$.L.str.2147, %esi
	movl	$24, %edx
	jmp	.LBB0_4
.LBB0_3:                                # %if.else
	movl	%esi, 28(%rsp)          # 4-byte Spill
	movl	$.L.str.2148, %esi
	movl	$15, %edx
.LBB0_4:                                # %for.cond.preheader
	callq	stream_write
	movl	$1, %r12d
	xorpd	%xmm0, %xmm0
	movsd	%xmm0, 40(%rsp)         # 8-byte Spill
	xorl	%r15d, %r15d
	xorpd	%xmm0, %xmm0
	movsd	%xmm0, 32(%rsp)         # 8-byte Spill
	.align	16, 0x90
.LBB0_5:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_6 Depth 2
	movq	28464(%r13,%r15,8), %rbx
	jmp	.LBB0_6
	.align	16, 0x90
.LBB0_11:                               # %for.inc
                                        #   in Loop: Header=BB0_6 Depth=2
	movq	(%rbx), %rbx
.LBB0_6:                                # %for.body
                                        #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testq	%rbx, %rbx
	je	.LBB0_12
# BB#7:                                 # %for.body.7
                                        #   in Loop: Header=BB0_6 Depth=2
	cmpl	$0, 24(%rbx)
	je	.LBB0_9
# BB#8:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB0_6 Depth=2
	cmpl	$0, 9524(%r13)
	je	.LBB0_11
.LBB0_9:                                # %land.lhs.true
                                        #   in Loop: Header=BB0_6 Depth=2
	movq	64(%rbx), %rax
	cmpb	$0, 50(%rax)
	jne	.LBB0_11
# BB#10:                                # %if.then.12
                                        #   in Loop: Header=BB0_6 Depth=2
	leal	-1(%r12), %eax
	cltq
	movq	26648(%r13), %rbp
	imulq	$208, %rax, %r14
	movsd	8(%rbp,%r14), %xmm0     # xmm0 = mem[0],zero
	callq	ceil
	maxsd	32(%rsp), %xmm0         # 8-byte Folded Reload
	movsd	%xmm0, 32(%rsp)         # 8-byte Spill
	movsd	16(%rbp,%r14), %xmm0    # xmm0 = mem[0],zero
	callq	ceil
	maxsd	40(%rsp), %xmm0         # 8-byte Folded Reload
	incl	%r12d
	movsd	%xmm0, 40(%rsp)         # 8-byte Spill
	jmp	.LBB0_11
	.align	16, 0x90
.LBB0_12:                               # %for.end
                                        #   in Loop: Header=BB0_5 Depth=1
	incq	%r15
	cmpq	$16, %r15
	jne	.LBB0_5
# BB#13:                                # %for.end.34
	cmpl	$0, 9528(%r13)
	je	.LBB0_16
# BB#14:                                # %lor.lhs.false.37
	movsd	9784(%r13), %xmm0       # xmm0 = mem[0],zero
	movsd	9800(%r13), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	ja	.LBB0_16
# BB#15:                                # %lor.lhs.false.43
	movsd	9792(%r13), %xmm3       # xmm3 = mem[0],zero
	movsd	9808(%r13), %xmm2       # xmm2 = mem[0],zero
	ucomisd	%xmm2, %xmm3
	jbe	.LBB0_17
.LBB0_16:                               # %if.then.51
	cvttsd2si	32(%rsp), %edx  # 8-byte Folded Reload
	cvttsd2si	40(%rsp), %ecx  # 8-byte Folded Reload
	leaq	48(%rsp), %rdi
	movl	$.L.str.2149, %esi
	xorl	%eax, %eax
	callq	gs_sprintf
.LBB0_18:                               # %if.end.77
	movl	28(%rsp), %ebx          # 4-byte Reload
	movq	352(%rsp), %rbp
	leaq	48(%rsp), %r15
	movq	%r15, %rdi
	callq	strlen
	movq	%rbp, %rdi
	movq	%r15, %rsi
	movl	%eax, %edx
	callq	stream_write
	cmpl	$0, 9528(%r13)
	je	.LBB0_21
# BB#19:                                # %lor.lhs.false.85
	movsd	9784(%r13), %xmm0       # xmm0 = mem[0],zero
	movsd	9800(%r13), %xmm2       # xmm2 = mem[0],zero
	ucomisd	%xmm2, %xmm0
	ja	.LBB0_21
# BB#20:                                # %lor.lhs.false.94
	movsd	9792(%r13), %xmm1       # xmm1 = mem[0],zero
	movsd	9808(%r13), %xmm3       # xmm3 = mem[0],zero
	ucomisd	%xmm3, %xmm1
	jbe	.LBB0_22
.LBB0_21:                               # %if.then.103
	leaq	48(%rsp), %rdi
	movl	$.L.str.2151, %esi
	movb	$2, %al
	movsd	32(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	40(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	gs_sprintf
.LBB0_23:                               # %if.end.121
	movq	352(%rsp), %rbp
	leaq	48(%rsp), %r12
	movq	%r12, %rdi
	callq	strlen
	movq	%rbp, %rdi
	movq	%r12, %rsi
	movl	%eax, %edx
	callq	stream_write
	leaq	304(%rsp), %r15
	movl	$.L.str.2153, %esi
	movl	$40, %ecx
	movq	%r13, %rdi
	movq	%r15, %rdx
	callq	pdf_get_docinfo_item
	cltq
	movb	$0, 304(%rsp,%rax)
	movq	gs_product(%rip), %rdx
	movl	gs_revision(%rip), %ecx
	movq	16(%r13), %r8
	movl	$.L.str.2154, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	gs_sprintf
	movq	352(%rsp), %rbp
	movq	%r12, %rdi
	callq	strlen
	movq	%rbp, %rdi
	movq	%r12, %rsi
	movl	%eax, %edx
	callq	stream_write
	movq	352(%rsp), %rdi
	movl	$.L.str.2155, %esi
	callq	stream_puts
	movl	$.L.str.2156, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
	movq	%r15, %rdx
	callq	gs_sprintf
	movq	352(%rsp), %rbp
	movq	%r12, %rdi
	callq	strlen
	movq	%rbp, %rdi
	movq	%r12, %rsi
	movl	%eax, %edx
	callq	stream_write
	movl	$.L.str.2157, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
	movl	%ebx, %edx
	callq	gs_sprintf
	movq	352(%rsp), %rbp
	movq	%r12, %rdi
	callq	strlen
	movq	%rbp, %rdi
	movq	%r12, %rsi
	movl	%eax, %edx
	callq	stream_write
	movl	$.L.str.2158, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	gs_sprintf
	movq	352(%rsp), %rbp
	movq	%r12, %rdi
	callq	strlen
	movq	%rbp, %rdi
	movq	%r12, %rsi
	movl	%eax, %edx
	callq	stream_write
	movl	$.L.str.2159, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	gs_sprintf
	movq	352(%rsp), %rbp
	movq	%r12, %rdi
	callq	strlen
	movq	%rbp, %rdi
	movq	%r12, %rsi
	movl	%eax, %edx
	callq	stream_write
	cmpl	$0, 8892(%r13)
	je	.LBB0_33
# BB#24:                                # %if.then.170
	movq	352(%rsp), %rdi
	movl	$.L.str.2160, %esi
	movl	$61, %edx
	callq	stream_write
	movq	1728(%r13), %r14
	movq	s_A85E_template(%rip), %rsi
	movl	$.L.str.2262, %edx
	movq	%r14, %rdi
	callq	s_alloc_state
	movq	%rax, %rbp
	movl	$-25, %r15d
	testq	%rbp, %rbp
	je	.LBB0_40
# BB#25:                                # %if.end.i
	movq	s_A85E_template+40(%rip), %rax
	testq	%rax, %rax
	je	.LBB0_27
# BB#26:                                # %if.then.1.i
	movq	%rbp, %rdi
	callq	*%rax
.LBB0_27:                               # %if.end.3.i
	leaq	352(%rsp), %rdi
	movl	$s_A85E_template, %esi
	movq	%rbp, %rdx
	movq	%r14, %rcx
	callq	s_add_filter
	testq	%rax, %rax
	je	.LBB0_28
# BB#29:                                # %if.end.176
	movq	1728(%r13), %r14
	movq	s_LZWE_template(%rip), %rsi
	movl	$.L.str.2262, %edx
	movq	%r14, %rdi
	callq	s_alloc_state
	movq	%rax, %rbp
	testq	%rbp, %rbp
	je	.LBB0_40
# BB#30:                                # %if.end.i.64
	movq	s_LZWE_template+40(%rip), %rax
	testq	%rax, %rax
	je	.LBB0_32
# BB#31:                                # %if.then.1.i.65
	movq	%rbp, %rdi
	callq	*%rax
.LBB0_32:                               # %if.end.3.i.68
	leaq	352(%rsp), %rdi
	movl	$s_LZWE_template, %esi
	movq	%rbp, %rdx
	movq	%r14, %rcx
	callq	s_add_filter
	testq	%rax, %rax
	je	.LBB0_28
.LBB0_33:                               # %if.end.183
	movq	352(%rsp), %rdi
	movl	$.L.str.2161, %esi
	callq	stream_puts
	cmpl	$0, 9528(%r13)
	je	.LBB0_35
# BB#34:                                # %if.then.187
	movq	352(%rsp), %rdi
	movl	$.L.str.2162, %esi
	callq	stream_puts
	movq	352(%rsp), %rdi
	movl	$.L.str.2163, %esi
	jmp	.LBB0_38
.LBB0_28:                               # %if.then.6.i
	movl	$.L.str.2262, %edx
	movq	%r14, %rdi
	movq	%rbp, %rsi
	callq	*24(%r14)
	jmp	.LBB0_40
.LBB0_35:                               # %if.else.190
	cmpl	$0, 30696(%r13)
	je	.LBB0_37
# BB#36:                                # %if.then.192
	movq	352(%rsp), %rdi
	movl	$.L.str.2164, %esi
	callq	stream_puts
.LBB0_37:                               # %if.end.194
	movq	352(%rsp), %rdi
	movl	$.L.str.2165, %esi
.LBB0_38:                               # %if.end.196
	callq	stream_puts
	movq	352(%rsp), %rdi
	movl	8860(%r13), %esi
	callq	copy_procsets
	movq	5848(%r13), %rsi
	leaq	352(%rsp), %rdi
	callq	s_close_filters
	movl	$-12, %r15d
	testl	%eax, %eax
	js	.LBB0_40
# BB#39:                                # %cleanup
	movq	352(%rsp), %rdi
	movl	$.L.str.2166, %esi
	callq	stream_puts
	movq	352(%rsp), %rdi
	callq	stell
	movl	%eax, 30672(%r13)
	xorl	%r15d, %r15d
.LBB0_40:                               # %cleanup.216
	movl	%r15d, %eax
	addq	$360, %rsp              # imm = 0x168
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_17:                               # %if.else.54
	movsd	%xmm1, 8(%rsp)          # 8-byte Spill
	movsd	%xmm2, 16(%rsp)         # 8-byte Spill
	movsd	%xmm3, (%rsp)           # 8-byte Spill
	callq	floor
	cvttsd2si	%xmm0, %r15d
	movsd	(%rsp), %xmm0           # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	floor
	cvttsd2si	%xmm0, %r12d
	movsd	8(%rsp), %xmm0          # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	ceil
	cvttsd2si	%xmm0, %ebp
	movsd	16(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	ceil
	cvttsd2si	%xmm0, %r9d
	leaq	48(%rsp), %rdi
	movl	$.L.str.2150, %esi
	xorl	%eax, %eax
	movl	%ebp, %r8d
	movl	%r15d, %edx
	movl	%r12d, %ecx
	callq	gs_sprintf
	jmp	.LBB0_18
.LBB0_22:                               # %if.else.106
	leaq	48(%rsp), %rdi
	movl	$.L.str.2152, %esi
	movb	$4, %al
	callq	gs_sprintf
	jmp	.LBB0_23
.Lfunc_end0:
	.size	ps2write_dsc_header, .Lfunc_end0-ps2write_dsc_header
	.cfi_endproc

	.align	16, 0x90
	.type	copy_procsets,@function
copy_procsets:                          # @copy_procsets
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
	pushq	%rbx
.Ltmp16:
	.cfi_def_cfa_offset 40
	subq	$264, %rsp              # imm = 0x108
.Ltmp17:
	.cfi_def_cfa_offset 304
.Ltmp18:
	.cfi_offset %rbx, -40
.Ltmp19:
	.cfi_offset %r14, -32
.Ltmp20:
	.cfi_offset %r15, -24
.Ltmp21:
	.cfi_offset %rbp, -16
	movl	%esi, %r14d
	movq	%rdi, %r15
	movq	opdfread_ps(%rip), %rbp
	movl	$opdfread_ps+8, %ebx
	jmp	.LBB1_2
	.align	16, 0x90
.LBB1_1:                                # %if.end.i
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	%rbp, %rdi
	callq	strlen
	movq	%r15, %rdi
	movq	%rbp, %rsi
	movl	%eax, %edx
	callq	stream_write
	movq	(%rbx), %rbp
	addq	$8, %rbx
.LBB1_2:                                # %if.end.i
                                        # =>This Inner Loop Header: Depth=1
	testq	%rbp, %rbp
	jne	.LBB1_1
# BB#3:                                 # %write_opdfread.exit
	movq	gs_mro_e_ps(%rip), %rbp
	movl	$gs_mro_e_ps+8, %ebx
	jmp	.LBB1_5
	.align	16, 0x90
.LBB1_4:                                # %if.end.i.6
                                        #   in Loop: Header=BB1_5 Depth=1
	movq	%rbp, %rdi
	callq	strlen
	movq	%r15, %rdi
	movq	%rbp, %rsi
	movl	%eax, %edx
	callq	stream_write
	movq	(%rbx), %rbp
	addq	$8, %rbx
.LBB1_5:                                # %if.end.i.6
                                        # =>This Inner Loop Header: Depth=1
	testq	%rbp, %rbp
	jne	.LBB1_4
# BB#6:                                 # %do.end.i
	testl	%r14d, %r14d
	je	.LBB1_13
# BB#7:                                 # %if.then.6.i
	leaq	(%rsp), %rbp
	movl	$.L.str.2263, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	callq	gs_sprintf
	movq	%rbp, %rdi
	callq	strlen
	movq	%r15, %rdi
	movq	%rbp, %rsi
	movl	%eax, %edx
	callq	stream_write
	movq	SingleGlyphList(%rip), %rdx
	movl	$SingleGlyphList+16, %ebx
	testq	%rdx, %rdx
	je	.LBB1_10
# BB#8:
	leaq	(%rsp), %rbp
	.align	16, 0x90
.LBB1_9:                                # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	movzwl	-8(%rbx), %ecx
	movl	$.L.str.2264, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	callq	gs_sprintf
	movq	%rbp, %rdi
	callq	strlen
	movq	%r15, %rdi
	movq	%rbp, %rsi
	movl	%eax, %edx
	callq	stream_write
	movq	(%rbx), %rdx
	addq	$16, %rbx
	testq	%rdx, %rdx
	jne	.LBB1_9
.LBB1_10:                               # %while.end.i
	leaq	(%rsp), %rbp
	movl	$.L.str.1058, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	callq	gs_sprintf
	movq	%rbp, %rdi
	callq	strlen
	movq	%r15, %rdi
	movq	%rbp, %rsi
	movl	%eax, %edx
	callq	stream_write
	movq	gs_mgl_e_ps(%rip), %rbp
	movl	$gs_mgl_e_ps+8, %ebx
	jmp	.LBB1_12
	.align	16, 0x90
.LBB1_11:                               # %if.end.37.i
                                        #   in Loop: Header=BB1_12 Depth=1
	movq	%rbp, %rdi
	callq	strlen
	movq	%r15, %rdi
	movq	%rbp, %rsi
	movl	%eax, %edx
	callq	stream_write
	movq	(%rbx), %rbp
	addq	$8, %rbx
.LBB1_12:                               # %if.end.37.i
                                        # =>This Inner Loop Header: Depth=1
	testq	%rbp, %rbp
	jne	.LBB1_11
.LBB1_13:                               # %write_tt_encodings.exit
	addq	$264, %rsp              # imm = 0x108
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	copy_procsets, .Lfunc_end1-copy_procsets
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4621819117588971520     # double 10
.LCPI2_1:
	.quad	4602678819172646912     # double 0.5
.LCPI2_2:
	.quad	4634766966517661696     # double 72
	.text
	.globl	pdfwrite_pdf_open_document
	.align	16, 0x90
	.type	pdfwrite_pdf_open_document,@function
pdfwrite_pdf_open_document:             # @pdfwrite_pdf_open_document
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
	pushq	%r12
.Ltmp25:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp26:
	.cfi_def_cfa_offset 48
	subq	$288, %rsp              # imm = 0x120
.Ltmp27:
	.cfi_def_cfa_offset 336
.Ltmp28:
	.cfi_offset %rbx, -48
.Ltmp29:
	.cfi_offset %r12, -40
.Ltmp30:
	.cfi_offset %r14, -32
.Ltmp31:
	.cfi_offset %r15, -24
.Ltmp32:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	cmpq	$0, 26552(%rbx)
	jne	.LBB2_34
# BB#1:                                 # %land.lhs.true
	movq	5848(%rbx), %rbp
	movq	%rbp, %rdi
	callq	stell
	cmpq	18224(%rbx), %rbp
	jne	.LBB2_3
# BB#2:
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
.LBB2_3:                                # %select.end
	testq	%rax, %rax
	jne	.LBB2_34
# BB#4:                                 # %if.then
	movq	5848(%rbx), %r14
	movq	%r14, 280(%rsp)
	movsd	9368(%rbx), %xmm0       # xmm0 = mem[0],zero
	cmpl	$0, 8880(%rbx)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, 8852(%rbx)
	cmpl	$0, 9524(%rbx)
	je	.LBB2_32
# BB#5:                                 # %if.then.3
	cmpl	$0, 9548(%rbx)
	je	.LBB2_7
# BB#6:                                 # %if.end.86.thread
	movl	$0, 9532(%rbx)
	jmp	.LBB2_34
.LBB2_7:                                # %if.else
	movsd	%xmm0, 8(%rsp)          # 8-byte Spill
	xorps	%xmm0, %xmm0
	cvtsi2sdl	836(%rbx), %xmm0
	movsd	.LCPI2_2(%rip), %xmm1   # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movss	884(%rbx), %xmm2        # xmm2 = mem[0],zero,zero,zero
	movss	888(%rbx), %xmm3        # xmm3 = mem[0],zero,zero,zero
	cvtss2sd	%xmm3, %xmm3
	divsd	%xmm3, %xmm0
	movsd	.LCPI2_1(%rip), %xmm3   # xmm3 = mem[0],zero
	addsd	%xmm3, %xmm0
	cvttsd2si	%xmm0, %r15d
	xorps	%xmm0, %xmm0
	cvtsi2sdl	832(%rbx), %xmm0
	mulsd	%xmm1, %xmm0
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm2, %xmm1
	divsd	%xmm1, %xmm0
	addsd	%xmm3, %xmm0
	cvttsd2si	%xmm0, %r12d
	movl	$.L.str.2167, %esi
	movl	$3, %edx
	movq	%r14, %rdi
	callq	stream_write
	leaq	16(%rsp), %rbp
	movl	$.L.str.2149, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	movl	%r12d, %edx
	movl	%r15d, %ecx
	callq	gs_sprintf
	movq	%rbp, %rdi
	callq	strlen
	movq	%r14, %rdi
	movq	%rbp, %rsi
	movl	%eax, %edx
	callq	stream_write
	cmpl	$0, 8892(%rbx)
	jne	.LBB2_9
# BB#8:                                 # %lor.lhs.false
	cmpl	$0, 9532(%rbx)
	je	.LBB2_19
.LBB2_9:                                # %if.then.32
	movl	$.L.str.2160, %esi
	movl	$61, %edx
	movq	%r14, %rdi
	callq	stream_write
	movq	1728(%rbx), %r14
	movq	s_A85E_template(%rip), %rsi
	movl	$.L.str.2262, %edx
	movq	%r14, %rdi
	callq	s_alloc_state
	movq	%rax, %r15
	movl	$-25, %ebp
	testq	%r15, %r15
	je	.LBB2_37
# BB#10:                                # %if.end.i
	movq	s_A85E_template+40(%rip), %rax
	testq	%rax, %rax
	je	.LBB2_12
# BB#11:                                # %if.then.1.i
	movq	%r15, %rdi
	callq	*%rax
.LBB2_12:                               # %if.end.3.i
	leaq	280(%rsp), %rdi
	movl	$s_A85E_template, %esi
	movq	%r15, %rdx
	movq	%r14, %rcx
	callq	s_add_filter
	testq	%rax, %rax
	je	.LBB2_13
# BB#14:                                # %if.end
	movq	1728(%rbx), %r14
	movq	s_LZWE_template(%rip), %rsi
	movl	$.L.str.2262, %edx
	movq	%r14, %rdi
	callq	s_alloc_state
	movq	%rax, %r15
	testq	%r15, %r15
	je	.LBB2_37
# BB#15:                                # %if.end.i.47
	movq	s_LZWE_template+40(%rip), %rax
	testq	%rax, %rax
	je	.LBB2_17
# BB#16:                                # %if.then.1.i.48
	movq	%r15, %rdi
	callq	*%rax
.LBB2_17:                               # %if.end.3.i.51
	leaq	280(%rsp), %rdi
	movl	$s_LZWE_template, %esi
	movq	%r15, %rdx
	movq	%r14, %rcx
	callq	s_add_filter
	testq	%rax, %rax
	je	.LBB2_13
# BB#18:                                # %if.end.3.i.51.if.end.44_crit_edge
	movq	280(%rsp), %r14
.LBB2_19:                               # %if.end.44
	movl	$.L.str.2168, %esi
	movq	%r14, %rdi
	callq	stream_puts
	movq	280(%rsp), %rdi
	movl	8860(%rbx), %esi
	callq	copy_procsets
	cmpl	$0, 9532(%rbx)
	je	.LBB2_20
# BB#21:                                # %if.else.60
	movq	280(%rsp), %rax
	movq	%rax, 5848(%rbx)
	jmp	.LBB2_22
.LBB2_13:                               # %if.then.6.i
	movl	$.L.str.2262, %edx
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	*24(%r14)
	jmp	.LBB2_37
.LBB2_20:                               # %if.then.53
	movq	5848(%rbx), %rsi
	leaq	280(%rsp), %rdi
	callq	s_close_filters
	movl	$-12, %ebp
	testl	%eax, %eax
	js	.LBB2_37
.LBB2_22:                               # %if.end.62
	cmpl	$0, 30696(%rbx)
	je	.LBB2_24
# BB#23:                                # %if.then.64
	movq	280(%rsp), %rdi
	movl	$.L.str.2164, %esi
	callq	stream_puts
.LBB2_24:                               # %if.end.66
	cmpl	$0, 30700(%rbx)
	je	.LBB2_26
# BB#25:                                # %if.then.68
	movq	280(%rsp), %rdi
	movl	$.L.str.2169, %esi
	callq	stream_puts
.LBB2_26:                               # %if.end.70
	cmpl	$0, 30704(%rbx)
	je	.LBB2_28
# BB#27:                                # %if.then.72
	movq	280(%rsp), %rdi
	movl	$.L.str.2170, %esi
	callq	stream_puts
.LBB2_28:                               # %if.end.74
	cmpl	$0, 30708(%rbx)
	je	.LBB2_30
# BB#29:                                # %if.then.76
	movq	280(%rsp), %rdi
	movl	$.L.str.2171, %esi
	callq	stream_puts
.LBB2_30:                               # %if.end.86
	movq	280(%rsp), %rdi
	callq	stell
	movl	%eax, 30672(%rbx)
	cmpl	$0, 9524(%rbx)
	jne	.LBB2_34
# BB#31:                                # %if.end.86.if.then.89_crit_edge
	movq	280(%rsp), %r14
	movsd	8(%rsp), %xmm0          # 8-byte Reload
                                        # xmm0 = mem[0],zero
.LBB2_32:                               # %if.then.89
	mulsd	.LCPI2_0(%rip), %xmm0
	addsd	.LCPI2_1(%rip), %xmm0
	cvttsd2si	%xmm0, %eax
	movslq	%eax, %rcx
	imulq	$1717986919, %rcx, %rdx # imm = 0x66666667
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	$34, %rdx
	addl	%eax, %edx
	leal	(%rdx,%rdx), %eax
	leal	(%rax,%rax,4), %eax
	subl	%eax, %ecx
	movl	$.L.str.2172, %esi
	movq	%r14, %rdi
	callq	pprintd2
	cmpl	$0, 8852(%rbx)
	je	.LBB2_34
# BB#33:                                # %if.then.94
	movq	280(%rsp), %rdi
	movl	$.L.str.2173, %esi
	callq	stream_puts
.LBB2_34:                               # %if.end.102
	xorl	%ebp, %ebp
	cmpl	$0, 8892(%rbx)
	movl	$0, %eax
	je	.LBB2_36
# BB#35:                                # %select.mid93
	movl	$2, %eax
.LBB2_36:                               # %select.end92
	movl	%eax, 9984(%rbx)
.LBB2_37:                               # %return
	movl	%ebp, %eax
	addq	$288, %rsp              # imm = 0x120
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	pdfwrite_pdf_open_document, .Lfunc_end2-pdfwrite_pdf_open_document
	.cfi_endproc

	.globl	pdf_stell
	.align	16, 0x90
	.type	pdf_stell,@function
pdf_stell:                              # @pdf_stell
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp33:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp34:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp35:
	.cfi_def_cfa_offset 32
.Ltmp36:
	.cfi_offset %rbx, -24
.Ltmp37:
	.cfi_offset %r14, -16
	movq	%rdi, %r14
	movq	5848(%r14), %rbx
	movq	%rbx, %rdi
	callq	stell
	cmpq	18224(%r14), %rbx
	jne	.LBB3_2
# BB#1:
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
.LBB3_2:                                # %select.end
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end3:
	.size	pdf_stell, .Lfunc_end3-pdf_stell
	.cfi_endproc

	.globl	pdf_obj_forward_ref
	.align	16, 0x90
	.type	pdf_obj_forward_ref,@function
pdf_obj_forward_ref:                    # @pdf_obj_forward_ref
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp38:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp39:
	.cfi_def_cfa_offset 32
.Ltmp40:
	.cfi_offset %rbx, -16
	movq	26504(%rdi), %rbx
	leaq	1(%rbx), %rax
	movq	%rax, 26504(%rdi)
	movq	$0, 8(%rsp)
	movq	14088(%rdi), %rcx
	leaq	8(%rsp), %rdi
	movl	$8, %esi
	movl	$1, %edx
	callq	fwrite
	movq	%rbx, %rax
	addq	$16, %rsp
	popq	%rbx
	retq
.Lfunc_end4:
	.size	pdf_obj_forward_ref, .Lfunc_end4-pdf_obj_forward_ref
	.cfi_endproc

	.globl	pdf_obj_ref
	.align	16, 0x90
	.type	pdf_obj_ref,@function
pdf_obj_ref:                            # @pdf_obj_ref
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp41:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp42:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp43:
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
.Ltmp44:
	.cfi_def_cfa_offset 48
.Ltmp45:
	.cfi_offset %rbx, -32
.Ltmp46:
	.cfi_offset %r14, -24
.Ltmp47:
	.cfi_offset %r15, -16
	movq	%rdi, %rbx
	movq	26504(%rbx), %r14
	leaq	1(%r14), %rax
	movq	%rax, 26504(%rbx)
	movq	5848(%rbx), %r15
	movq	%r15, %rdi
	callq	stell
	cmpq	18224(%rbx), %r15
	jne	.LBB5_2
# BB#1:
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
.LBB5_2:                                # %select.end
	movq	%rax, 8(%rsp)
	movq	14088(%rbx), %rcx
	leaq	8(%rsp), %rdi
	movl	$8, %esi
	movl	$1, %edx
	callq	fwrite
	movq	%r14, %rax
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end5:
	.size	pdf_obj_ref, .Lfunc_end5-pdf_obj_ref
	.cfi_endproc

	.globl	pdf_open_obj
	.align	16, 0x90
	.type	pdf_open_obj,@function
pdf_open_obj:                           # @pdf_open_obj
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp48:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp49:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp50:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp51:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp52:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp53:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp54:
	.cfi_def_cfa_offset 64
.Ltmp55:
	.cfi_offset %rbx, -56
.Ltmp56:
	.cfi_offset %r12, -48
.Ltmp57:
	.cfi_offset %r13, -40
.Ltmp58:
	.cfi_offset %r14, -32
.Ltmp59:
	.cfi_offset %r15, -24
.Ltmp60:
	.cfi_offset %rbp, -16
	movl	%edx, %r12d
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movabsq	$-9223372036854775808, %rbp # imm = 0x8000000000000000
	movq	5848(%rbx), %r14
	testq	%r15, %r15
	jle	.LBB6_1
# BB#4:                                 # %if.else
	movq	%r14, %rdi
	callq	stell
	cmpq	18224(%rbx), %r14
	jne	.LBB6_6
# BB#5:
	xorq	%rbp, %rax
.LBB6_6:                                # %select.end78
	movq	%rax, (%rsp)
	movq	14088(%rbx), %rbp
	movq	%rbp, %rdi
	callq	gp_ftell_64
	movq	%rax, %r13
	movq	%r15, %rsi
	subq	9472(%rbx), %rsi
	shlq	$3, %rsi
	xorl	%edx, %edx
	movq	%rbp, %rdi
	callq	gp_fseek_64
	leaq	(%rsp), %rdi
	movl	$8, %esi
	movl	$1, %edx
	movq	%rbp, %rcx
	callq	fwrite
	xorl	%edx, %edx
	movq	%rbp, %rdi
	movq	%r13, %rsi
	callq	gp_fseek_64
	jmp	.LBB6_7
.LBB6_1:                                # %if.then
	movq	26504(%rbx), %r15
	leaq	1(%r15), %rax
	movq	%rax, 26504(%rbx)
	movq	%r14, %rdi
	callq	stell
	cmpq	18224(%rbx), %r14
	jne	.LBB6_3
# BB#2:
	xorq	%rbp, %rax
.LBB6_3:                                # %select.end
	movq	%rax, (%rsp)
	movq	14088(%rbx), %rcx
	leaq	(%rsp), %rdi
	movl	$8, %esi
	movl	$1, %edx
	callq	fwrite
.LBB6_7:                                # %if.end
	cmpl	$0, 9524(%rbx)
	je	.LBB6_43
# BB#8:                                 # %land.lhs.true
	cmpl	$0, 9548(%rbx)
	je	.LBB6_43
# BB#9:                                 # %if.then.7
	movl	%r12d, %eax
	cmpl	$34, %r12d
	ja	.LBB6_41
# BB#10:                                # %if.then.7
	jmpq	*.LJTI6_0(,%rax,8)
.LBB6_15:                               # %sw.bb.15
	movl	$.L.str.2178, %esi
	jmp	.LBB6_42
.LBB6_41:                               # %sw.default
	movl	$.L.str.2204, %esi
.LBB6_42:                               # %if.end.68
	movq	%r14, %rdi
	movq	%r15, %rdx
	callq	pprintld1
.LBB6_43:                               # %if.end.68
	movl	$.L.str.2205, %esi
	movq	%r14, %rdi
	movq	%r15, %rdx
	callq	pprintld1
	movq	%r15, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB6_11:                               # %sw.bb
	movl	$.L.str.2174, %esi
	jmp	.LBB6_42
.LBB6_12:                               # %sw.bb.9
	movl	$.L.str.2175, %esi
	jmp	.LBB6_42
.LBB6_13:                               # %sw.bb.11
	movl	$.L.str.2176, %esi
	jmp	.LBB6_42
.LBB6_14:                               # %sw.bb.13
	movl	$.L.str.2177, %esi
	jmp	.LBB6_42
.LBB6_26:                               # %sw.bb.37
	movl	$.L.str.2189, %esi
	jmp	.LBB6_42
.LBB6_16:                               # %sw.bb.17
	movl	$.L.str.2179, %esi
	jmp	.LBB6_42
.LBB6_17:                               # %sw.bb.19
	movl	$.L.str.2180, %esi
	jmp	.LBB6_42
.LBB6_18:                               # %sw.bb.21
	movl	$.L.str.2181, %esi
	jmp	.LBB6_42
.LBB6_19:                               # %sw.bb.23
	movl	$.L.str.2182, %esi
	jmp	.LBB6_42
.LBB6_25:                               # %sw.bb.35
	movl	$.L.str.2188, %esi
	jmp	.LBB6_42
.LBB6_20:                               # %sw.bb.25
	movl	$.L.str.2183, %esi
	jmp	.LBB6_42
.LBB6_21:                               # %sw.bb.27
	movl	$.L.str.2184, %esi
	jmp	.LBB6_42
.LBB6_22:                               # %sw.bb.29
	movl	$.L.str.2185, %esi
	jmp	.LBB6_42
.LBB6_23:                               # %sw.bb.31
	movl	$.L.str.2186, %esi
	jmp	.LBB6_42
.LBB6_24:                               # %sw.bb.33
	movl	$.L.str.2187, %esi
	jmp	.LBB6_42
.LBB6_27:                               # %sw.bb.39
	movl	$.L.str.2190, %esi
	jmp	.LBB6_42
.LBB6_28:                               # %sw.bb.41
	movl	$.L.str.2191, %esi
	jmp	.LBB6_42
.LBB6_29:                               # %sw.bb.43
	movl	$.L.str.2192, %esi
	jmp	.LBB6_42
.LBB6_30:                               # %sw.bb.45
	movl	$.L.str.2193, %esi
	jmp	.LBB6_42
.LBB6_32:                               # %sw.bb.49
	movl	$.L.str.2195, %esi
	jmp	.LBB6_42
.LBB6_33:                               # %sw.bb.51
	movl	$.L.str.2196, %esi
	jmp	.LBB6_42
.LBB6_34:                               # %sw.bb.53
	movl	$.L.str.2197, %esi
	jmp	.LBB6_42
.LBB6_35:                               # %sw.bb.55
	movl	$.L.str.2198, %esi
	jmp	.LBB6_42
.LBB6_36:                               # %sw.bb.57
	movl	$.L.str.2199, %esi
	jmp	.LBB6_42
.LBB6_37:                               # %sw.bb.59
	movl	$.L.str.2200, %esi
	jmp	.LBB6_42
.LBB6_38:                               # %sw.bb.61
	movl	$.L.str.2201, %esi
	jmp	.LBB6_42
.LBB6_39:                               # %sw.bb.63
	movl	$.L.str.2202, %esi
	jmp	.LBB6_42
.LBB6_31:                               # %sw.bb.47
	movl	$.L.str.2194, %esi
	jmp	.LBB6_42
.LBB6_40:                               # %sw.bb.65
	movl	$.L.str.2203, %esi
	jmp	.LBB6_42
.Lfunc_end6:
	.size	pdf_open_obj, .Lfunc_end6-pdf_open_obj
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI6_0:
	.quad	.LBB6_11
	.quad	.LBB6_12
	.quad	.LBB6_13
	.quad	.LBB6_14
	.quad	.LBB6_26
	.quad	.LBB6_41
	.quad	.LBB6_15
	.quad	.LBB6_16
	.quad	.LBB6_15
	.quad	.LBB6_17
	.quad	.LBB6_18
	.quad	.LBB6_19
	.quad	.LBB6_25
	.quad	.LBB6_20
	.quad	.LBB6_43
	.quad	.LBB6_41
	.quad	.LBB6_21
	.quad	.LBB6_22
	.quad	.LBB6_23
	.quad	.LBB6_24
	.quad	.LBB6_27
	.quad	.LBB6_28
	.quad	.LBB6_29
	.quad	.LBB6_30
	.quad	.LBB6_32
	.quad	.LBB6_33
	.quad	.LBB6_34
	.quad	.LBB6_35
	.quad	.LBB6_36
	.quad	.LBB6_37
	.quad	.LBB6_38
	.quad	.LBB6_39
	.quad	.LBB6_31
	.quad	.LBB6_40
	.quad	.LBB6_43

	.text
	.globl	pdf_begin_obj
	.align	16, 0x90
	.type	pdf_begin_obj,@function
pdf_begin_obj:                          # @pdf_begin_obj
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%esi, %eax
	xorl	%esi, %esi
	movl	%eax, %edx
	jmp	pdf_open_obj            # TAILCALL
.Lfunc_end7:
	.size	pdf_begin_obj, .Lfunc_end7-pdf_begin_obj
	.cfi_endproc

	.globl	pdf_end_obj
	.align	16, 0x90
	.type	pdf_end_obj,@function
pdf_end_obj:                            # @pdf_end_obj
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp61:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp62:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp63:
	.cfi_def_cfa_offset 32
.Ltmp64:
	.cfi_offset %rbx, -24
.Ltmp65:
	.cfi_offset %rbp, -16
	movl	%esi, %ebp
	movq	%rdi, %rbx
	movq	5848(%rbx), %rdi
	movl	$.L.str.2206, %esi
	callq	stream_puts
	cmpl	$0, 9524(%rbx)
	je	.LBB8_4
# BB#1:                                 # %land.lhs.true
	cmpl	$14, %ebp
	je	.LBB8_4
# BB#2:                                 # %land.lhs.true
	movl	9548(%rbx), %eax
	testl	%eax, %eax
	je	.LBB8_4
# BB#3:                                 # %sw.default
	movq	5848(%rbx), %rdi
	movl	$.L.str.2207, %esi
	callq	stream_puts
.LBB8_4:                                # %if.end
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end8:
	.size	pdf_end_obj, .Lfunc_end8-pdf_end_obj
	.cfi_endproc

	.globl	pdf_encrypt_init
	.align	16, 0x90
	.type	pdf_encrypt_init,@function
pdf_encrypt_init:                       # @pdf_encrypt_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp66:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp67:
	.cfi_def_cfa_offset 24
	subq	$24, %rsp
.Ltmp68:
	.cfi_def_cfa_offset 48
.Ltmp69:
	.cfi_offset %rbx, -24
.Ltmp70:
	.cfi_offset %r14, -16
	movq	%rdx, %rbx
	leaq	(%rsp), %r14
	movq	%r14, %rdx
	callq	pdf_object_key
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movl	%eax, %edx
	callq	s_arcfour_set_key
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end9:
	.size	pdf_encrypt_init, .Lfunc_end9-pdf_encrypt_init
	.cfi_endproc

	.align	16, 0x90
	.type	pdf_object_key,@function
pdf_object_key:                         # @pdf_object_key
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
	pushq	%r12
.Ltmp74:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp75:
	.cfi_def_cfa_offset 48
	subq	$96, %rsp
.Ltmp76:
	.cfi_def_cfa_offset 144
.Ltmp77:
	.cfi_offset %rbx, -48
.Ltmp78:
	.cfi_offset %r12, -40
.Ltmp79:
	.cfi_offset %r14, -32
.Ltmp80:
	.cfi_offset %r15, -24
.Ltmp81:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movq	%rdi, %r12
	movw	$0, 6(%rsp)
	movl	9648(%r12), %ebp
	shrl	$3, %ebp
	leaq	8(%rsp), %r15
	movq	%r15, %rdi
	callq	gs_md5_init
	leaq	9752(%r12), %rsi
	movq	%r15, %rdi
	movl	%ebp, %edx
	callq	gs_md5_append
	movb	%bl, 5(%rsp)
	leaq	5(%rsp), %r12
	movl	$1, %edx
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	gs_md5_append
	movb	%bh, 5(%rsp)  # NOREX
	movl	$1, %edx
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	gs_md5_append
	shrq	$16, %rbx
	movb	%bl, 5(%rsp)
	movl	$1, %edx
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	gs_md5_append
	leaq	6(%rsp), %rsi
	movl	$2, %edx
	movq	%r15, %rdi
	callq	gs_md5_append
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	gs_md5_finish
	addl	$5, %ebp
	cmpl	$16, %ebp
	movl	$16, %eax
	cmovbl	%ebp, %eax
	addq	$96, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end10:
	.size	pdf_object_key, .Lfunc_end10-pdf_object_key
	.cfi_endproc

	.globl	pdf_begin_encrypt
	.align	16, 0x90
	.type	pdf_begin_encrypt,@function
pdf_begin_encrypt:                      # @pdf_begin_encrypt
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp82:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp83:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp84:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp85:
	.cfi_def_cfa_offset 40
	subq	$24, %rsp
.Ltmp86:
	.cfi_def_cfa_offset 64
.Ltmp87:
	.cfi_offset %rbx, -40
.Ltmp88:
	.cfi_offset %r14, -32
.Ltmp89:
	.cfi_offset %r15, -24
.Ltmp90:
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	xorl	%eax, %eax
	cmpl	$0, 9648(%rdi)
	je	.LBB11_4
# BB#1:                                 # %if.end
	movq	1728(%rdi), %r15
	leaq	(%rsp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdx
	callq	pdf_object_key
	movl	%eax, %ebp
	movq	s_arcfour_template(%rip), %rsi
	movl	$.L.str.2208, %edx
	movq	%r15, %rdi
	callq	*72(%r15)
	movq	%rax, %rbx
	movl	$-25, %eax
	testq	%rbx, %rbx
	je	.LBB11_4
# BB#2:                                 # %if.end.3
	leaq	(%rsp), %rsi
	movq	%rbx, %rdi
	movl	%ebp, %edx
	callq	s_arcfour_set_key
	testl	%eax, %eax
	js	.LBB11_4
# BB#3:                                 # %if.end.8
	movl	$s_arcfour_template, %esi
	movq	%r14, %rdi
	movq	%rbx, %rdx
	movq	%r15, %rcx
	callq	s_add_filter
	xorl	%ecx, %ecx
	testq	%rax, %rax
	movl	$-25, %eax
	cmovnel	%ecx, %eax
.LBB11_4:                               # %cleanup
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end11:
	.size	pdf_begin_encrypt, .Lfunc_end11-pdf_begin_encrypt
	.cfi_endproc

	.globl	pdf_end_encrypt
	.align	16, 0x90
	.type	pdf_end_encrypt,@function
pdf_end_encrypt:                        # @pdf_end_encrypt
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp91:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp92:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp93:
	.cfi_def_cfa_offset 32
.Ltmp94:
	.cfi_offset %rbx, -32
.Ltmp95:
	.cfi_offset %r14, -24
.Ltmp96:
	.cfi_offset %r15, -16
	movq	%rdi, %rbx
	cmpl	$0, 9648(%rbx)
	je	.LBB12_2
# BB#1:                                 # %if.then
	movq	5848(%rbx), %r14
	movq	240(%r14), %r15
	movq	%r14, %rdi
	callq	sclose
	movq	1728(%rbx), %rdi
	movq	136(%r14), %rsi
	movl	$.L.str.2209, %edx
	callq	*24(%rdi)
	movq	1728(%rbx), %rdi
	movl	$.L.str.2210, %edx
	movq	%r14, %rsi
	callq	*24(%rdi)
	movq	%r15, 5848(%rbx)
.LBB12_2:                               # %if.end
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end12:
	.size	pdf_end_encrypt, .Lfunc_end12-pdf_end_encrypt
	.cfi_endproc

	.globl	pdf_open_contents
	.align	16, 0x90
	.type	pdf_open_contents,@function
pdf_open_contents:                      # @pdf_open_contents
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp97:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp98:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp99:
	.cfi_def_cfa_offset 32
.Ltmp100:
	.cfi_offset %rbx, -32
.Ltmp101:
	.cfi_offset %r14, -24
.Ltmp102:
	.cfi_offset %rbp, -16
	movl	%esi, %r14d
	movq	%rdi, %rbx
	movl	%r14d, %ebp
	movl	26560(%rbx), %eax
	jmp	.LBB13_1
	.align	16, 0x90
.LBB13_3:                               # %cleanup.thread
                                        #   in Loop: Header=BB13_1 Depth=1
	movl	%eax, 26560(%rbx)
	movl	%eax, %eax
.LBB13_1:                               # %entry
                                        # =>This Inner Loop Header: Depth=1
	shlq	$5, %rax
	movq	context_procs(%rax,%rbp,8), %rax
	testq	%rax, %rax
	je	.LBB13_4
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB13_1 Depth=1
	movq	%rbx, %rdi
	callq	*%rax
	testl	%eax, %eax
	jns	.LBB13_3
	jmp	.LBB13_5
.LBB13_4:                               # %while.end
	movl	%r14d, 26560(%rbx)
	xorl	%eax, %eax
.LBB13_5:                               # %cleanup.7
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end13:
	.size	pdf_open_contents, .Lfunc_end13-pdf_open_contents
	.cfi_endproc

	.globl	pdf_close_contents
	.align	16, 0x90
	.type	pdf_close_contents,@function
pdf_close_contents:                     # @pdf_close_contents
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp103:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp104:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp105:
	.cfi_def_cfa_offset 32
.Ltmp106:
	.cfi_offset %rbx, -24
.Ltmp107:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movl	26560(%rbx), %eax
	xorl	%ebp, %ebp
	testl	%eax, %eax
	je	.LBB14_11
# BB#1:                                 # %if.end
	testl	%esi, %esi
	jne	.LBB14_2
	jmp	.LBB14_7
	.align	16, 0x90
.LBB14_5:                               # %cleanup.thread.i
                                        #   in Loop: Header=BB14_2 Depth=1
	movl	%eax, 26560(%rbx)
.LBB14_2:                               # %if.then.1
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$1, %eax
	je	.LBB14_6
# BB#3:                                 # %while.body.i
                                        #   in Loop: Header=BB14_2 Depth=1
	movl	%eax, %eax
	shlq	$5, %rax
	movq	%rbx, %rdi
	callq	*context_procs+8(%rax)
	testl	%eax, %eax
	jns	.LBB14_5
# BB#4:
	movl	%eax, %ebp
	jmp	.LBB14_11
.LBB14_6:                               # %if.end.6
	movl	$1, 26560(%rbx)
	movq	5848(%rbx), %rdi
	movl	$.L.str.2211, %esi
	callq	stream_puts
	movq	%rbx, %rdi
	callq	pdf_close_text_contents
	movl	26560(%rbx), %eax
	testl	%eax, %eax
	je	.LBB14_10
	.align	16, 0x90
.LBB14_7:                               # %while.body.i.13
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, %ecx
	shlq	$5, %rcx
	movq	%rbx, %rdi
	callq	*context_procs(%rcx)
	testl	%eax, %eax
	js	.LBB14_8
# BB#9:                                 # %cleanup.thread.i.17
                                        #   in Loop: Header=BB14_7 Depth=1
	movl	%eax, 26560(%rbx)
	jne	.LBB14_7
.LBB14_10:                              # %while.end.i.18
	movl	$0, 26560(%rbx)
	jmp	.LBB14_11
.LBB14_8:
	movl	%eax, %ebp
.LBB14_11:                              # %return
	movl	%ebp, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end14:
	.size	pdf_close_contents, .Lfunc_end14-pdf_close_contents
	.cfi_endproc

	.globl	pdf_cancel_resource
	.align	16, 0x90
	.type	pdf_cancel_resource,@function
pdf_cancel_resource:                    # @pdf_cancel_resource
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp108:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp109:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp110:
	.cfi_def_cfa_offset 32
.Ltmp111:
	.cfi_offset %rbx, -24
.Ltmp112:
	.cfi_offset %r14, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	$0, 56(%rbx)
	movq	64(%rbx), %rdi
	xorl	%eax, %eax
	testq	%rdi, %rdi
	je	.LBB15_7
# BB#1:                                 # %if.then
	movb	$1, 50(%rdi)
	cmpl	$15, %edx
	ja	.LBB15_4
# BB#2:                                 # %switch.early.test
	cmpl	$7, %edx
	ja	.LBB15_6
# BB#3:                                 # %switch.early.test
	movl	$176, %eax
	btl	%edx, %eax
	jae	.LBB15_6
.LBB15_4:                               # %if.then.7
	callq	cos_stream_release_pieces
	testl	%eax, %eax
	js	.LBB15_7
# BB#5:                                 # %if.then.7.if.end.11_crit_edge
	movq	64(%rbx), %rdi
.LBB15_6:                               # %if.end.11
	movl	$.L.str.2222, %esi
	callq	cos_release
	movq	1728(%r14), %rdi
	movq	64(%rbx), %rsi
	movl	$.L.str.2223, %edx
	callq	*24(%rdi)
	movq	$0, 64(%rbx)
	xorl	%eax, %eax
.LBB15_7:                               # %return
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end15:
	.size	pdf_cancel_resource, .Lfunc_end15-pdf_cancel_resource
	.cfi_endproc

	.globl	pdf_forget_resource
	.align	16, 0x90
	.type	pdf_forget_resource,@function
pdf_forget_resource:                    # @pdf_forget_resource
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp113:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp114:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp115:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp116:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp117:
	.cfi_def_cfa_offset 48
.Ltmp118:
	.cfi_offset %rbx, -40
.Ltmp119:
	.cfi_offset %r12, -32
.Ltmp120:
	.cfi_offset %r14, -24
.Ltmp121:
	.cfi_offset %r15, -16
	movq	%rsi, %r15
	movq	%rdi, %r14
	movl	%edx, %eax
	leaq	28648(%r14), %rcx
	movslq	30388(%r14), %rdx
	testq	%rdx, %rdx
	jle	.LBB16_9
# BB#1:                                 # %for.body.lr.ph
	movq	30400(%r14), %rsi
	addq	$88, %rsi
	xorl	%edi, %edi
	.align	16, 0x90
.LBB16_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	cmpq	%r15, -24(%rsi)
	je	.LBB16_3
# BB#4:                                 # %if.else
                                        #   in Loop: Header=BB16_2 Depth=1
	cmpq	%r15, -16(%rsi)
	je	.LBB16_5
# BB#6:                                 # %if.else.17
                                        #   in Loop: Header=BB16_2 Depth=1
	cmpq	%r15, (%rsi)
	jne	.LBB16_8
# BB#7:                                 # %if.then.22
                                        #   in Loop: Header=BB16_2 Depth=1
	movq	$0, (%rsi)
	jmp	.LBB16_8
	.align	16, 0x90
.LBB16_3:                               # %if.then
                                        #   in Loop: Header=BB16_2 Depth=1
	movq	$0, -24(%rsi)
	jmp	.LBB16_8
	.align	16, 0x90
.LBB16_5:                               # %if.then.12
                                        #   in Loop: Header=BB16_2 Depth=1
	movq	$0, -16(%rsi)
.LBB16_8:                               # %for.inc
                                        #   in Loop: Header=BB16_2 Depth=1
	incq	%rdi
	addq	$120, %rsi
	cmpq	%rdx, %rdi
	jl	.LBB16_2
	.align	16, 0x90
.LBB16_9:                               # %for.cond.29
                                        # =>This Inner Loop Header: Depth=1
	movq	%rcx, %rdx
	movq	(%rdx), %rcx
	testq	%rcx, %rcx
	je	.LBB16_12
# BB#10:                                # %for.body.31
                                        #   in Loop: Header=BB16_9 Depth=1
	cmpq	%r15, %rcx
	leaq	8(%rcx), %rcx
	jne	.LBB16_9
# BB#11:                                # %if.then.33
	movq	(%rcx), %rcx
	movq	%rcx, (%rdx)
.LBB16_12:                              # %for.cond.38.preheader
	xorl	%ebx, %ebx
	shlq	$7, %rax
	leaq	(%rax,%r14), %r12
	.align	16, 0x90
.LBB16_13:                              # %for.body.40
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_15 Depth 2
	movq	26672(%r12,%rbx,8), %rax
	testq	%rax, %rax
	je	.LBB16_20
# BB#14:                                #   in Loop: Header=BB16_13 Depth=1
	leaq	26672(%r12,%rbx,8), %rcx
	.align	16, 0x90
.LBB16_15:                              # %for.body.43
                                        #   Parent Loop BB16_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	%r15, %rax
	je	.LBB16_16
# BB#19:                                # %for.inc.57
                                        #   in Loop: Header=BB16_15 Depth=2
	movq	%rax, %rcx
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.LBB16_15
	jmp	.LBB16_20
	.align	16, 0x90
.LBB16_16:                              # %if.then.45
                                        #   in Loop: Header=BB16_13 Depth=1
	movq	(%r15), %rax
	movq	%rax, (%rcx)
	movq	64(%r15), %rdi
	testq	%rdi, %rdi
	je	.LBB16_18
# BB#17:                                # %if.then.46
                                        #   in Loop: Header=BB16_13 Depth=1
	movl	$.L.str.2224, %esi
	callq	cos_release
	movq	1728(%r14), %rdi
	movq	64(%r15), %rsi
	movl	$.L.str.2224, %edx
	callq	*24(%rdi)
	movq	$0, 64(%r15)
.LBB16_18:                              # %if.end.51
                                        #   in Loop: Header=BB16_13 Depth=1
	movq	1728(%r14), %rdi
	movl	$.L.str.2224, %edx
	movq	%r15, %rsi
	callq	*24(%rdi)
.LBB16_20:                              # %for.inc.60
                                        #   in Loop: Header=BB16_13 Depth=1
	incq	%rbx
	cmpq	$16, %rbx
	jne	.LBB16_13
# BB#21:                                # %for.end.62
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end16:
	.size	pdf_forget_resource, .Lfunc_end16-pdf_forget_resource
	.cfi_endproc

	.globl	pdf_substitute_resource
	.align	16, 0x90
	.type	pdf_substitute_resource,@function
pdf_substitute_resource:                # @pdf_substitute_resource
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp122:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp123:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp124:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp125:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp126:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp127:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp128:
	.cfi_def_cfa_offset 96
.Ltmp129:
	.cfi_offset %rbx, -56
.Ltmp130:
	.cfi_offset %r12, -48
.Ltmp131:
	.cfi_offset %r13, -40
.Ltmp132:
	.cfi_offset %r14, -32
.Ltmp133:
	.cfi_offset %r15, -24
.Ltmp134:
	.cfi_offset %rbp, -16
	movl	%r8d, 8(%rsp)           # 4-byte Spill
	movl	%edx, 12(%rsp)          # 4-byte Spill
	movq	%rsi, %rbx
	movq	%rdi, %r13
	movq	(%rbx), %rsi
	movq	%rsi, 16(%rsp)          # 8-byte Spill
	testq	%rcx, %rcx
	movl	$nocheck, %r14d
	cmovneq	%rcx, %r14
	movl	%edx, %eax
	movq	64(%rsi), %rbp
	xorl	%r12d, %r12d
	shlq	$7, %rax
	leaq	(%rax,%r13), %rax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	.align	16, 0x90
.LBB17_1:                               # %for.body.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_2 Depth 2
	movq	24(%rsp), %rax          # 8-byte Reload
	movq	26672(%rax,%r12,8), %r15
	jmp	.LBB17_2
	.align	16, 0x90
.LBB17_10:                              # %for.inc.i
                                        #   in Loop: Header=BB17_2 Depth=2
	movq	(%r15), %r15
.LBB17_2:                               # %for.body.i
                                        #   Parent Loop BB17_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testq	%r15, %r15
	je	.LBB17_19
# BB#3:                                 # %for.body.5.i
                                        #   in Loop: Header=BB17_2 Depth=2
	cmpq	%r15, (%rbx)
	je	.LBB17_10
# BB#4:                                 # %if.then.i
                                        #   in Loop: Header=BB17_2 Depth=2
	movq	64(%r15), %rsi
	testq	%rsi, %rsi
	je	.LBB17_10
# BB#5:                                 # %lor.lhs.false.i
                                        #   in Loop: Header=BB17_2 Depth=2
	movq	(%rbp), %rax
	cmpq	(%rsi), %rax
	jne	.LBB17_10
# BB#6:                                 # %if.end.i
                                        #   in Loop: Header=BB17_2 Depth=2
	movq	%rbp, %rdi
	movq	%r13, %rdx
	callq	*16(%rax)
	testl	%eax, %eax
	js	.LBB17_27
# BB#7:                                 # %if.end.15.i
                                        #   in Loop: Header=BB17_2 Depth=2
	jle	.LBB17_10
# BB#8:                                 # %if.then.17.i
                                        #   in Loop: Header=BB17_2 Depth=2
	movq	(%rbx), %rsi
	movq	%r13, %rdi
	movq	%r15, %rdx
	callq	*%r14
	testl	%eax, %eax
	js	.LBB17_27
# BB#9:                                 # %if.end.21.i
                                        #   in Loop: Header=BB17_2 Depth=2
	jle	.LBB17_10
	jmp	.LBB17_11
	.align	16, 0x90
.LBB17_19:                              # %for.inc.28.i
                                        #   in Loop: Header=BB17_1 Depth=1
	incq	%r12
	cmpq	$16, %r12
	jl	.LBB17_1
# BB#20:                                # %if.else
	movq	16(%rsp), %rbx          # 8-byte Reload
	movq	64(%rbx), %rax
	cmpq	$0, 8(%rax)
	jns	.LBB17_24
# BB#21:                                # %if.then.8
	movq	26504(%r13), %r14
	leaq	1(%r14), %rax
	movq	%rax, 26504(%r13)
	movq	5848(%r13), %rbp
	movq	%rbp, %rdi
	callq	stell
	cmpq	18224(%r13), %rbp
	jne	.LBB17_23
# BB#22:
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
.LBB17_23:                              # %select.end
	movq	%rax, 32(%rsp)
	movq	14088(%r13), %rcx
	leaq	32(%rsp), %rdi
	movl	$8, %esi
	movl	$1, %edx
	callq	fwrite
	movq	64(%rbx), %rax
	movq	%r14, 8(%rax)
	leaq	32(%rbx), %rdi
	movl	$.L.str.2228, %esi
	xorl	%eax, %eax
	movq	%r14, %rdx
	callq	gs_sprintf
.LBB17_24:                              # %if.end.9
	movl	$1, %eax
	cmpl	$0, 8(%rsp)             # 4-byte Folded Reload
	je	.LBB17_27
# BB#25:                                # %if.then.11
	movq	64(%rbx), %rdi
	movq	%r13, %rsi
	movl	12(%rsp), %edx          # 4-byte Reload
	callq	cos_write_object
	testl	%eax, %eax
	js	.LBB17_27
# BB#26:                                # %if.end.16
	movq	64(%rbx), %rax
	movb	$1, 50(%rax)
	movl	$1, %eax
	jmp	.LBB17_27
.LBB17_11:                              # %if.then.2
	movq	%r15, (%rbx)
	movq	16(%rsp), %rbx          # 8-byte Reload
	movq	$0, 56(%rbx)
	movq	64(%rbx), %rdi
	testq	%rdi, %rdi
	movl	12(%rsp), %ebp          # 4-byte Reload
	je	.LBB17_18
# BB#12:                                # %if.then.i.24
	movb	$1, 50(%rdi)
	cmpl	$15, %ebp
	ja	.LBB17_15
# BB#13:                                # %switch.early.test.i
	cmpl	$7, %ebp
	ja	.LBB17_17
# BB#14:                                # %switch.early.test.i
	movl	$176, %eax
	btl	%ebp, %eax
	jae	.LBB17_17
.LBB17_15:                              # %if.then.7.i
	callq	cos_stream_release_pieces
	testl	%eax, %eax
	js	.LBB17_27
# BB#16:                                # %if.then.7.if.end.11_crit_edge.i
	movq	64(%rbx), %rdi
.LBB17_17:                              # %if.end.11.i
	movl	$.L.str.2222, %esi
	callq	cos_release
	movq	1728(%r13), %rdi
	movq	64(%rbx), %rsi
	movl	$.L.str.2223, %edx
	callq	*24(%rdi)
	movq	$0, 64(%rbx)
.LBB17_18:                              # %if.end.6
	movq	%r13, %rdi
	movq	%rbx, %rsi
	movl	%ebp, %edx
	callq	pdf_forget_resource
	xorl	%eax, %eax
.LBB17_27:                              # %cleanup
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end17:
	.size	pdf_substitute_resource, .Lfunc_end17-pdf_substitute_resource
	.cfi_endproc

	.globl	pdf_find_same_resource
	.align	16, 0x90
	.type	pdf_find_same_resource,@function
pdf_find_same_resource:                 # @pdf_find_same_resource
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp135:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp136:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp137:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp138:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp139:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp140:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp141:
	.cfi_def_cfa_offset 64
.Ltmp142:
	.cfi_offset %rbx, -56
.Ltmp143:
	.cfi_offset %r12, -48
.Ltmp144:
	.cfi_offset %r13, -40
.Ltmp145:
	.cfi_offset %r14, -32
.Ltmp146:
	.cfi_offset %r15, -24
.Ltmp147:
	.cfi_offset %rbp, -16
	movq	%rcx, %r14
	movq	%rdx, %r13
	movq	%rdi, %r15
	movl	%esi, %eax
	movq	(%r13), %rcx
	movq	64(%rcx), %r12
	xorl	%ebp, %ebp
	shlq	$7, %rax
	leaq	(%rax,%r15), %rax
	movq	%rax, (%rsp)            # 8-byte Spill
	.align	16, 0x90
.LBB18_1:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_2 Depth 2
	movq	(%rsp), %rax            # 8-byte Reload
	movq	26672(%rax,%rbp,8), %rbx
	jmp	.LBB18_2
	.align	16, 0x90
.LBB18_11:                              # %for.inc
                                        #   in Loop: Header=BB18_2 Depth=2
	movq	(%rbx), %rbx
.LBB18_2:                               # %for.body
                                        #   Parent Loop BB18_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testq	%rbx, %rbx
	je	.LBB18_12
# BB#3:                                 # %for.body.5
                                        #   in Loop: Header=BB18_2 Depth=2
	cmpq	%rbx, (%r13)
	je	.LBB18_11
# BB#4:                                 # %if.then
                                        #   in Loop: Header=BB18_2 Depth=2
	movq	64(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB18_11
# BB#5:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB18_2 Depth=2
	movq	(%r12), %rax
	cmpq	(%rsi), %rax
	jne	.LBB18_11
# BB#6:                                 # %if.end
                                        #   in Loop: Header=BB18_2 Depth=2
	movq	%r12, %rdi
	movq	%r15, %rdx
	callq	*16(%rax)
	testl	%eax, %eax
	js	.LBB18_13
# BB#7:                                 # %if.end.15
                                        #   in Loop: Header=BB18_2 Depth=2
	jle	.LBB18_11
# BB#8:                                 # %if.then.17
                                        #   in Loop: Header=BB18_2 Depth=2
	movq	(%r13), %rsi
	movq	%r15, %rdi
	movq	%rbx, %rdx
	callq	*%r14
	testl	%eax, %eax
	js	.LBB18_13
# BB#9:                                 # %if.end.21
                                        #   in Loop: Header=BB18_2 Depth=2
	jle	.LBB18_11
	jmp	.LBB18_10
	.align	16, 0x90
.LBB18_12:                              # %for.inc.28
                                        #   in Loop: Header=BB18_1 Depth=1
	incq	%rbp
	xorl	%eax, %eax
	cmpq	$16, %rbp
	jl	.LBB18_1
	jmp	.LBB18_13
.LBB18_10:                              # %if.then.23
	movq	%rbx, (%r13)
	movl	$1, %eax
.LBB18_13:                              # %cleanup.30
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end18:
	.size	pdf_find_same_resource, .Lfunc_end18-pdf_find_same_resource
	.cfi_endproc

	.align	16, 0x90
	.type	nocheck,@function
nocheck:                                # @nocheck
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$1, %eax
	retq
.Lfunc_end19:
	.size	nocheck, .Lfunc_end19-nocheck
	.cfi_endproc

	.globl	pdf_reserve_object_id
	.align	16, 0x90
	.type	pdf_reserve_object_id,@function
pdf_reserve_object_id:                  # @pdf_reserve_object_id
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp148:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp149:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp150:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp151:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp152:
	.cfi_def_cfa_offset 48
.Ltmp153:
	.cfi_offset %rbx, -40
.Ltmp154:
	.cfi_offset %r12, -32
.Ltmp155:
	.cfi_offset %r14, -24
.Ltmp156:
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movq	%rdi, %r15
	testq	%r14, %r14
	jne	.LBB20_4
# BB#1:                                 # %cond.true
	movq	26504(%r15), %r14
	leaq	1(%r14), %rax
	movq	%rax, 26504(%r15)
	movq	5848(%r15), %r12
	movq	%r12, %rdi
	callq	stell
	cmpq	18224(%r15), %r12
	jne	.LBB20_3
# BB#2:
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
.LBB20_3:                               # %select.end
	movq	%rax, (%rsp)
	movq	14088(%r15), %rcx
	leaq	(%rsp), %rdi
	movl	$8, %esi
	movl	$1, %edx
	callq	fwrite
.LBB20_4:                               # %cond.end
	movq	64(%rbx), %rax
	movq	%r14, 8(%rax)
	addq	$32, %rbx
	movl	$.L.str.2228, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	movq	%r14, %rdx
	callq	gs_sprintf
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end20:
	.size	pdf_reserve_object_id, .Lfunc_end20-pdf_reserve_object_id
	.cfi_endproc

	.globl	pdf_find_resource_by_gs_id
	.align	16, 0x90
	.type	pdf_find_resource_by_gs_id,@function
pdf_find_resource_by_gs_id:             # @pdf_find_resource_by_gs_id
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%edx, %r8d
	shrl	$4, %r8d
	addl	%edx, %r8d
	andl	$15, %r8d
	movl	%esi, %esi
	shlq	$7, %rsi
	addq	%rdi, %rsi
	movq	26672(%rsi,%r8,8), %rcx
	xorl	%eax, %eax
	testq	%rcx, %rcx
	je	.LBB21_7
# BB#1:
	leaq	26672(%rsi,%r8,8), %rsi
	xorl	%eax, %eax
	movq	%rsi, %rdi
	.align	16, 0x90
.LBB21_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	cmpq	%rdx, 16(%rcx)
	je	.LBB21_3
# BB#6:                                 # %for.inc
                                        #   in Loop: Header=BB21_2 Depth=1
	movq	%rcx, %rdi
	movq	(%rcx), %rcx
	testq	%rcx, %rcx
	jne	.LBB21_2
.LBB21_7:                               # %cleanup
	retq
.LBB21_3:                               # %if.then
	cmpq	%rsi, %rdi
	je	.LBB21_4
# BB#5:                                 # %if.then.5
	movq	(%rcx), %rax
	movq	%rax, (%rdi)
	movq	(%rsi), %rax
	movq	%rax, (%rcx)
	movq	%rcx, (%rsi)
	movq	%rcx, %rax
	retq
.LBB21_4:
	movq	%rcx, %rax
	retq
.Lfunc_end21:
	.size	pdf_find_resource_by_gs_id, .Lfunc_end21-pdf_find_resource_by_gs_id
	.cfi_endproc

	.globl	pdf_find_resource_by_resource_id
	.align	16, 0x90
	.type	pdf_find_resource_by_resource_id,@function
pdf_find_resource_by_resource_id:       # @pdf_find_resource_by_resource_id
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%esi, %r8d
	xorl	%eax, %eax
	shlq	$7, %r8
	addq	%rdi, %r8
	xorl	%esi, %esi
.LBB22_1:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB22_2 Depth 2
	movq	26672(%r8,%rsi,8), %rdi
	jmp	.LBB22_2
	.align	16, 0x90
.LBB22_5:                               # %for.inc
                                        #   in Loop: Header=BB22_2 Depth=2
	movq	(%rdi), %rdi
.LBB22_2:                               # %for.body
                                        #   Parent Loop BB22_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testq	%rdi, %rdi
	je	.LBB22_6
# BB#3:                                 # %for.body.5
                                        #   in Loop: Header=BB22_2 Depth=2
	movq	64(%rdi), %rcx
	cmpq	%rdx, 8(%rcx)
	jne	.LBB22_5
	jmp	.LBB22_4
	.align	16, 0x90
.LBB22_6:                               # %for.inc.8
                                        #   in Loop: Header=BB22_1 Depth=1
	incq	%rsi
	cmpq	$16, %rsi
	jl	.LBB22_1
# BB#7:                                 # %cleanup
	retq
.LBB22_4:
	movq	%rdi, %rax
	retq
.Lfunc_end22:
	.size	pdf_find_resource_by_resource_id, .Lfunc_end22-pdf_find_resource_by_resource_id
	.cfi_endproc

	.globl	pdf_drop_resources
	.align	16, 0x90
	.type	pdf_drop_resources,@function
pdf_drop_resources:                     # @pdf_drop_resources
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp157:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp158:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp159:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp160:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp161:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp162:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp163:
	.cfi_def_cfa_offset 64
.Ltmp164:
	.cfi_offset %rbx, -56
.Ltmp165:
	.cfi_offset %r12, -48
.Ltmp166:
	.cfi_offset %r13, -40
.Ltmp167:
	.cfi_offset %r14, -32
.Ltmp168:
	.cfi_offset %r15, -24
.Ltmp169:
	.cfi_offset %rbp, -16
	movq	%rdx, %r15
	movq	%rdi, %r14
	movl	%esi, %eax
	xorl	%r12d, %r12d
	shlq	$7, %rax
	leaq	(%rax,%r14), %r13
	.align	16, 0x90
.LBB23_1:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB23_4 Depth 2
                                        #       Child Loop BB23_5 Depth 3
	movq	26672(%r13,%r12,8), %rax
	testq	%rax, %rax
	je	.LBB23_7
# BB#2:                                 #   in Loop: Header=BB23_1 Depth=1
	leaq	26672(%r13,%r12,8), %rbp
.LBB23_4:                               # %for.body.3.lr.ph
                                        #   Parent Loop BB23_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB23_5 Depth 3
	movq	%rax, %rbx
	.align	16, 0x90
.LBB23_5:                               # %for.body.3
                                        #   Parent Loop BB23_1 Depth=1
                                        #     Parent Loop BB23_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	*%r15
	testl	%eax, %eax
	je	.LBB23_3
# BB#6:                                 # %if.then
                                        #   in Loop: Header=BB23_5 Depth=3
	movq	(%rbx), %rax
	movq	%rax, (%rbp)
	movq	%rbx, (%rbx)
	movq	(%rbp), %rbx
	testq	%rbx, %rbx
	jne	.LBB23_5
	jmp	.LBB23_7
	.align	16, 0x90
.LBB23_3:                               # %for.cond.1.outer.loopexit
                                        #   in Loop: Header=BB23_4 Depth=2
	movq	(%rbx), %rax
	testq	%rax, %rax
	movq	%rbx, %rbp
	jne	.LBB23_4
	.align	16, 0x90
.LBB23_7:                               # %for.inc
                                        #   in Loop: Header=BB23_1 Depth=1
	incq	%r12
	cmpq	$16, %r12
	jne	.LBB23_1
# BB#8:                                 # %for.end.6
	movq	28648(%r14), %rax
	testq	%rax, %rax
	je	.LBB23_16
# BB#9:
	leaq	28648(%r14), %r15
.LBB23_11:                              # %for.body.9.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB23_12 Depth 2
	movq	%rax, %rbx
	.align	16, 0x90
.LBB23_12:                              # %for.body.9
                                        #   Parent Loop BB23_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	%rbx, (%rbx)
	jne	.LBB23_10
# BB#13:                                # %if.then.12
                                        #   in Loop: Header=BB23_12 Depth=2
	movq	8(%rbx), %rax
	movq	%rax, (%r15)
	movq	64(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB23_15
# BB#14:                                # %if.then.14
                                        #   in Loop: Header=BB23_12 Depth=2
	movl	$.L.str.2225, %esi
	callq	cos_release
	movq	1728(%r14), %rdi
	movq	64(%rbx), %rsi
	movl	$.L.str.2225, %edx
	callq	*24(%rdi)
	movq	$0, 64(%rbx)
.LBB23_15:                              # %if.end.19
                                        #   in Loop: Header=BB23_12 Depth=2
	movq	1728(%r14), %rdi
	movl	$.L.str.2225, %edx
	movq	%rbx, %rsi
	callq	*24(%rdi)
	movq	(%r15), %rbx
	testq	%rbx, %rbx
	jne	.LBB23_12
	jmp	.LBB23_16
	.align	16, 0x90
.LBB23_10:                              # %for.cond.7.outer.loopexit
                                        #   in Loop: Header=BB23_11 Depth=1
	addq	$8, %rbx
	movq	(%rbx), %rax
	testq	%rax, %rax
	movq	%rbx, %r15
	jne	.LBB23_11
.LBB23_16:                              # %for.end.27
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end23:
	.size	pdf_drop_resources, .Lfunc_end23-pdf_drop_resources
	.cfi_endproc

	.globl	pdf_print_resource_statistics
	.align	16, 0x90
	.type	pdf_print_resource_statistics,@function
pdf_print_resource_statistics:          # @pdf_print_resource_statistics
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp170:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp171:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp172:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp173:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp174:
	.cfi_def_cfa_offset 48
.Ltmp175:
	.cfi_offset %rbx, -40
.Ltmp176:
	.cfi_offset %r12, -32
.Ltmp177:
	.cfi_offset %r14, -24
.Ltmp178:
	.cfi_offset %r15, -16
	movq	%rdi, %r14
	movl	$.L.str.2227, %r15d
	movl	$8031, %r12d            # imm = 0x1F5F
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB24_1:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB24_2 Depth 2
                                        #       Child Loop BB24_4 Depth 3
                                        #       Child Loop BB24_9 Depth 3
	movq	pdf_resource_type_names(,%rbx,8), %rcx
	xorl	%eax, %eax
	xorl	%r8d, %r8d
	.align	16, 0x90
.LBB24_2:                               # %for.body.5
                                        #   Parent Loop BB24_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB24_4 Depth 3
                                        #       Child Loop BB24_9 Depth 3
	movq	%rbx, %rdx
	shlq	$7, %rdx
	leaq	(%rdx,%r14), %rdx
	movq	26672(%rdx,%rax,8), %rsi
	jmp	.LBB24_4
	.align	16, 0x90
.LBB24_3:                               # %for.inc
                                        #   in Loop: Header=BB24_4 Depth=3
	incl	%r8d
	movq	(%rsi), %rsi
.LBB24_4:                               # %for.inc
                                        #   Parent Loop BB24_1 Depth=1
                                        #     Parent Loop BB24_2 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	testq	%rsi, %rsi
	jne	.LBB24_3
# BB#5:                                 # %for.inc.11
                                        #   in Loop: Header=BB24_2 Depth=2
	movq	%rax, %rsi
	orq	$1, %rsi
	movq	26672(%rdx,%rsi,8), %rdx
	jmp	.LBB24_9
	.align	16, 0x90
.LBB24_8:                               # %for.inc.1
                                        #   in Loop: Header=BB24_9 Depth=3
	incl	%r8d
	movq	(%rdx), %rdx
.LBB24_9:                               # %for.inc.1
                                        #   Parent Loop BB24_1 Depth=1
                                        #     Parent Loop BB24_2 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	testq	%rdx, %rdx
	jne	.LBB24_8
# BB#10:                                # %for.inc.11.1
                                        #   in Loop: Header=BB24_2 Depth=2
	addq	$2, %rax
	cmpq	$16, %rax
	jne	.LBB24_2
# BB#6:                                 # %for.end.13
                                        #   in Loop: Header=BB24_1 Depth=1
	movq	1728(%r14), %rdi
	btq	%rbx, %r12
	cmovaeq	%r15, %rcx
	movl	$.L.str.2226, %esi
	xorl	%eax, %eax
	movl	%ebx, %edx
	callq	errprintf
	incq	%rbx
	cmpq	$15, %rbx
	jne	.LBB24_1
# BB#7:                                 # %for.end.16
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end24:
	.size	pdf_print_resource_statistics, .Lfunc_end24-pdf_print_resource_statistics
	.cfi_endproc

	.globl	pdf_open_separate
	.align	16, 0x90
	.type	pdf_open_separate,@function
pdf_open_separate:                      # @pdf_open_separate
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp179:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp180:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp181:
	.cfi_def_cfa_offset 32
.Ltmp182:
	.cfi_offset %rbx, -32
.Ltmp183:
	.cfi_offset %r14, -24
.Ltmp184:
	.cfi_offset %rbp, -16
	movl	%edx, %r14d
	movq	%rsi, %rbx
	movq	%rdi, %rbp
	callq	pdfwrite_pdf_open_document
	testl	%eax, %eax
	js	.LBB25_1
# BB#2:                                 # %if.end
	movq	5848(%rbp), %rax
	movq	%rax, 18240(%rbp)
	movq	18224(%rbp), %rax
	movq	%rax, 5848(%rbp)
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	movl	%r14d, %edx
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	pdf_open_obj            # TAILCALL
.LBB25_1:                               # %cleanup
	cltq
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end25:
	.size	pdf_open_separate, .Lfunc_end25-pdf_open_separate
	.cfi_endproc

	.globl	pdf_begin_separate
	.align	16, 0x90
	.type	pdf_begin_separate,@function
pdf_begin_separate:                     # @pdf_begin_separate
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp185:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp186:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp187:
	.cfi_def_cfa_offset 32
.Ltmp188:
	.cfi_offset %rbx, -24
.Ltmp189:
	.cfi_offset %rbp, -16
	movl	%esi, %ebp
	movq	%rdi, %rbx
	callq	pdfwrite_pdf_open_document
	testl	%eax, %eax
	js	.LBB26_1
# BB#2:                                 # %if.end.i
	movq	5848(%rbx), %rax
	movq	%rax, 18240(%rbx)
	movq	18224(%rbx), %rax
	movq	%rax, 5848(%rbx)
	xorl	%esi, %esi
	movq	%rbx, %rdi
	movl	%ebp, %edx
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmp	pdf_open_obj            # TAILCALL
.LBB26_1:                               # %pdf_open_separate.exit
	cltq
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end26:
	.size	pdf_begin_separate, .Lfunc_end26-pdf_begin_separate
	.cfi_endproc

	.globl	pdf_alloc_aside
	.align	16, 0x90
	.type	pdf_alloc_aside,@function
pdf_alloc_aside:                        # @pdf_alloc_aside
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp190:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp191:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp192:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp193:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp194:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp195:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp196:
	.cfi_def_cfa_offset 80
.Ltmp197:
	.cfi_offset %rbx, -56
.Ltmp198:
	.cfi_offset %r12, -48
.Ltmp199:
	.cfi_offset %r13, -40
.Ltmp200:
	.cfi_offset %r14, -32
.Ltmp201:
	.cfi_offset %r15, -24
.Ltmp202:
	.cfi_offset %rbp, -16
	movq	%r8, %r12
	movq	%rcx, %rbp
	movq	%rsi, 8(%rsp)           # 8-byte Spill
	movq	%rdi, %r13
	testq	%rdx, %rdx
	movl	$st_pdf_resource, %r14d
	cmovneq	%rdx, %r14
	movq	1728(%r13), %rdi
	movl	$.L.str.2229, %edx
	movq	%r14, %rsi
	callq	*72(%rdi)
	movq	%rax, %rbx
	movl	$-25, %r15d
	testq	%rbx, %rbx
	je	.LBB27_10
# BB#1:                                 # %if.end.4
	movq	%rbp, (%rsp)            # 8-byte Spill
	movl	$.L.str.2230, %esi
	movq	%r13, %rdi
	callq	cos_object_alloc
	movq	%rax, %rbp
	testq	%rbp, %rbp
	je	.LBB27_10
# BB#2:                                 # %if.end.8
	leaq	72(%rbx), %rdi
	movl	(%r14), %edx
	addq	$-72, %rdx
	xorl	%esi, %esi
	callq	memset
	movq	%rbp, 64(%rbx)
	testq	%r12, %r12
	js	.LBB27_3
# BB#4:                                 # %if.else
	jne	.LBB27_8
# BB#5:                                 # %cond.true.i
	movq	26504(%r13), %r12
	leaq	1(%r12), %rax
	movq	%rax, 26504(%r13)
	movq	5848(%r13), %rbp
	movq	%rbp, %rdi
	callq	stell
	cmpq	18224(%r13), %rbp
	jne	.LBB27_7
# BB#6:
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
.LBB27_7:                               # %select.end
	movq	%rax, 16(%rsp)
	movq	14088(%r13), %rcx
	leaq	16(%rsp), %rdi
	movl	$8, %esi
	movl	$1, %edx
	callq	fwrite
	movq	64(%rbx), %rbp
.LBB27_8:                               # %pdf_reserve_object_id.exit
	movq	%r12, 8(%rbp)
	movq	%rbx, %rdi
	addq	$32, %rdi
	movl	$.L.str.2228, %esi
	xorl	%eax, %eax
	movq	%r12, %rdx
	callq	gs_sprintf
	jmp	.LBB27_9
.LBB27_3:                               # %if.then.13
	movq	$-1, 8(%rbp)
	movb	$0, 32(%rbx)
.LBB27_9:                               # %if.end.15
	movq	(%rsp), %rcx            # 8-byte Reload
	movq	8(%rsp), %rdx           # 8-byte Reload
	movq	(%rdx), %rax
	movq	%rax, (%rbx)
	movq	$0, 16(%rbx)
	movq	%rbx, (%rdx)
	movq	28648(%r13), %rax
	movq	%rax, 8(%rbx)
	movq	%rbx, 28648(%r13)
	movq	$0, 24(%rbx)
	movq	26664(%r13), %rax
	movq	%rax, 56(%rbx)
	movq	%rbx, (%rcx)
	xorl	%r15d, %r15d
.LBB27_10:                              # %cleanup
	movl	%r15d, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end27:
	.size	pdf_alloc_aside, .Lfunc_end27-pdf_alloc_aside
	.cfi_endproc

	.globl	pdf_begin_aside
	.align	16, 0x90
	.type	pdf_begin_aside,@function
pdf_begin_aside:                        # @pdf_begin_aside
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp203:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp204:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp205:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp206:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp207:
	.cfi_def_cfa_offset 48
.Ltmp208:
	.cfi_offset %rbx, -48
.Ltmp209:
	.cfi_offset %r12, -40
.Ltmp210:
	.cfi_offset %r14, -32
.Ltmp211:
	.cfi_offset %r15, -24
.Ltmp212:
	.cfi_offset %rbp, -16
	movl	%r8d, %ebp
	movq	%rcx, %r14
	movq	%rdx, %r15
	movq	%rsi, %r12
	movq	%rdi, %rbx
	callq	pdfwrite_pdf_open_document
	testl	%eax, %eax
	js	.LBB28_1
# BB#2:                                 # %pdf_begin_separate.exit
	movq	5848(%rbx), %rax
	movq	%rax, 18240(%rbx)
	movq	18224(%rbx), %rax
	movq	%rax, 5848(%rbx)
	xorl	%esi, %esi
	movq	%rbx, %rdi
	movl	%ebp, %edx
	callq	pdf_open_obj
	testq	%rax, %rax
	js	.LBB28_3
# BB#4:                                 # %if.end
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	%r15, %rdx
	movq	%r14, %rcx
	movq	%rax, %r8
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	pdf_alloc_aside         # TAILCALL
.LBB28_1:                               # %pdf_begin_separate.exit.thread
	cltq
.LBB28_3:                               # %cleanup
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end28:
	.size	pdf_begin_aside, .Lfunc_end28-pdf_begin_aside
	.cfi_endproc

	.globl	pdf_begin_resource_body
	.align	16, 0x90
	.type	pdf_begin_resource_body,@function
pdf_begin_resource_body:                # @pdf_begin_resource_body
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp213:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp214:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp215:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp216:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp217:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp218:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp219:
	.cfi_def_cfa_offset 64
.Ltmp220:
	.cfi_offset %rbx, -56
.Ltmp221:
	.cfi_offset %r12, -48
.Ltmp222:
	.cfi_offset %r13, -40
.Ltmp223:
	.cfi_offset %r14, -32
.Ltmp224:
	.cfi_offset %r15, -24
.Ltmp225:
	.cfi_offset %rbp, -16
	movq	%rcx, %r14
	movq	%rdx, %r15
	movq	%rdi, %r12
	cmpl	$15, %esi
	movl	$5, %ebp
	cmovbel	%esi, %ebp
	movl	%r15d, %ebx
	shrl	$4, %ebx
	addl	%r15d, %ebx
	andl	$15, %ebx
	movl	%ebp, %r13d
	callq	pdfwrite_pdf_open_document
	testl	%eax, %eax
	js	.LBB29_1
# BB#2:                                 # %pdf_begin_separate.exit.i
	movq	5848(%r12), %rax
	movq	%rax, 18240(%r12)
	movq	18224(%r12), %rax
	movq	%rax, 5848(%r12)
	xorl	%esi, %esi
	movq	%r12, %rdi
	movl	%ebp, %edx
	callq	pdf_open_obj
	testq	%rax, %rax
	js	.LBB29_4
# BB#3:                                 # %if.end.i
	movq	pdf_resource_type_structs(,%r13,8), %rdx
	shlq	$7, %r13
	leaq	(%r13,%r12), %rcx
	leaq	26672(%rcx,%rbx,8), %rsi
	movq	%r12, %rdi
	movq	%r14, %rcx
	movq	%rax, %r8
	callq	pdf_alloc_aside
	jmp	.LBB29_4
.LBB29_1:                               # %pdf_begin_separate.exit.thread.i
	cltq
.LBB29_4:                               # %pdf_begin_aside.exit
	testl	%eax, %eax
	js	.LBB29_6
# BB#5:                                 # %if.then.5
	movq	(%r14), %rcx
	movq	%r15, 16(%rcx)
.LBB29_6:                               # %if.end.7
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end29:
	.size	pdf_begin_resource_body, .Lfunc_end29-pdf_begin_resource_body
	.cfi_endproc

	.globl	pdf_begin_resource
	.align	16, 0x90
	.type	pdf_begin_resource,@function
pdf_begin_resource:                     # @pdf_begin_resource
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp226:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp227:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp228:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp229:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp230:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp231:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp232:
	.cfi_def_cfa_offset 64
.Ltmp233:
	.cfi_offset %rbx, -56
.Ltmp234:
	.cfi_offset %r12, -48
.Ltmp235:
	.cfi_offset %r13, -40
.Ltmp236:
	.cfi_offset %r14, -32
.Ltmp237:
	.cfi_offset %r15, -24
.Ltmp238:
	.cfi_offset %rbp, -16
	movq	%rcx, %r14
	movq	%rdx, %r15
	movq	%rdi, %rbx
	cmpl	$15, %esi
	movl	$5, %eax
	cmovbel	%esi, %eax
	movl	%r15d, %ebp
	shrl	$4, %ebp
	addl	%r15d, %ebp
	andl	$15, %ebp
	movl	%eax, %r12d
	callq	pdfwrite_pdf_open_document
	testl	%eax, %eax
	js	.LBB30_1
# BB#2:                                 # %pdf_begin_separate.exit.i.i
	movq	5848(%rbx), %rax
	movq	%rax, 18240(%rbx)
	movq	18224(%rbx), %rax
	movq	%rax, 5848(%rbx)
	xorl	%esi, %esi
	movq	%rbx, %rdi
	movl	%r12d, %edx
	callq	pdf_open_obj
	movq	%rax, %r13
	testq	%r13, %r13
	js	.LBB30_4
# BB#3:                                 # %if.end.i.i
	movq	%r12, %rax
	shlq	$7, %rax
	leaq	(%rax,%rbx), %rax
	leaq	26672(%rax,%rbp,8), %rsi
	movq	pdf_resource_type_structs(,%r12,8), %rdx
	movq	%rbx, %rdi
	movq	%r14, %rcx
	movq	%r13, %r8
	callq	pdf_alloc_aside
	movl	%eax, %r13d
	jmp	.LBB30_4
.LBB30_1:                               # %pdf_begin_separate.exit.thread.i.i
	movslq	%eax, %r13
.LBB30_4:                               # %pdf_begin_aside.exit.i
	testl	%r13d, %r13d
	js	.LBB30_7
# BB#5:                                 # %land.lhs.true
	movq	(%r14), %rax
	movq	%r15, 16(%rax)
	movl	$8031, %eax             # imm = 0x1F5F
	btq	%r12, %rax
	jae	.LBB30_7
# BB#6:                                 # %if.then.3
	movq	pdf_resource_type_names(,%r12,8), %rdx
	movq	5848(%rbx), %rbx
	movl	$.L.str.2231, %esi
	movq	%rbx, %rdi
	callq	pprints1
	movq	(%r14), %rax
	movq	64(%rax), %rax
	movq	8(%rax), %rdx
	movl	$.L.str.2232, %esi
	movq	%rbx, %rdi
	callq	pprintld1
.LBB30_7:                               # %if.end.8
	movl	%r13d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end30:
	.size	pdf_begin_resource, .Lfunc_end30-pdf_begin_resource
	.cfi_endproc

	.globl	pdf_alloc_resource
	.align	16, 0x90
	.type	pdf_alloc_resource,@function
pdf_alloc_resource:                     # @pdf_alloc_resource
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp239:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp240:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp241:
	.cfi_def_cfa_offset 32
.Ltmp242:
	.cfi_offset %rbx, -24
.Ltmp243:
	.cfi_offset %r14, -16
	movq	%rcx, %r14
	movq	%rdx, %rbx
	movl	%ebx, %eax
	shrl	$4, %eax
	addl	%ebx, %eax
	andl	$15, %eax
	cmpl	$15, %esi
	movl	%esi, %ecx
	movl	$5, %esi
	cmovbeq	%rcx, %rsi
	movq	pdf_resource_type_structs(,%rsi,8), %rdx
	shlq	$7, %rsi
	leaq	(%rsi,%rdi), %rcx
	leaq	26672(%rcx,%rax,8), %rsi
	movq	%r14, %rcx
	callq	pdf_alloc_aside
	testl	%eax, %eax
	js	.LBB31_2
# BB#1:                                 # %if.then.5
	movq	(%r14), %rcx
	movq	%rbx, 16(%rcx)
.LBB31_2:                               # %if.end.7
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end31:
	.size	pdf_alloc_resource, .Lfunc_end31-pdf_alloc_resource
	.cfi_endproc

	.globl	pdf_resource_id
	.align	16, 0x90
	.type	pdf_resource_id,@function
pdf_resource_id:                        # @pdf_resource_id
	.cfi_startproc
# BB#0:                                 # %entry
	movq	64(%rdi), %rax
	movq	8(%rax), %rax
	retq
.Lfunc_end32:
	.size	pdf_resource_id, .Lfunc_end32-pdf_resource_id
	.cfi_endproc

	.globl	pdf_end_separate
	.align	16, 0x90
	.type	pdf_end_separate,@function
pdf_end_separate:                       # @pdf_end_separate
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp244:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp245:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp246:
	.cfi_def_cfa_offset 32
.Ltmp247:
	.cfi_offset %rbx, -24
.Ltmp248:
	.cfi_offset %rbp, -16
	movl	%esi, %ebp
	movq	%rdi, %rbx
	movq	5848(%rbx), %rdi
	movl	$.L.str.2206, %esi
	callq	stream_puts
	cmpl	$0, 9524(%rbx)
	je	.LBB33_4
# BB#1:                                 # %land.lhs.true.i
	cmpl	$14, %ebp
	je	.LBB33_4
# BB#2:                                 # %land.lhs.true.i
	movl	9548(%rbx), %eax
	testl	%eax, %eax
	je	.LBB33_4
# BB#3:                                 # %sw.default.i
	movq	5848(%rbx), %rdi
	movl	$.L.str.2207, %esi
	callq	stream_puts
.LBB33_4:                               # %pdf_end_obj.exit
	movq	18240(%rbx), %rax
	movq	%rax, 5848(%rbx)
	movq	$0, 18240(%rbx)
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end33:
	.size	pdf_end_separate, .Lfunc_end33-pdf_end_separate
	.cfi_endproc

	.globl	pdf_end_aside
	.align	16, 0x90
	.type	pdf_end_aside,@function
pdf_end_aside:                          # @pdf_end_aside
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp249:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp250:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp251:
	.cfi_def_cfa_offset 32
.Ltmp252:
	.cfi_offset %rbx, -24
.Ltmp253:
	.cfi_offset %rbp, -16
	movl	%esi, %ebp
	movq	%rdi, %rbx
	movq	5848(%rbx), %rdi
	movl	$.L.str.2206, %esi
	callq	stream_puts
	cmpl	$0, 9524(%rbx)
	je	.LBB34_4
# BB#1:                                 # %land.lhs.true.i.i
	cmpl	$14, %ebp
	je	.LBB34_4
# BB#2:                                 # %land.lhs.true.i.i
	movl	9548(%rbx), %eax
	testl	%eax, %eax
	je	.LBB34_4
# BB#3:                                 # %sw.default.i.i
	movq	5848(%rbx), %rdi
	movl	$.L.str.2207, %esi
	callq	stream_puts
.LBB34_4:                               # %pdf_end_separate.exit
	movq	18240(%rbx), %rax
	movq	%rax, 5848(%rbx)
	movq	$0, 18240(%rbx)
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end34:
	.size	pdf_end_aside, .Lfunc_end34-pdf_end_aside
	.cfi_endproc

	.globl	pdf_end_resource
	.align	16, 0x90
	.type	pdf_end_resource,@function
pdf_end_resource:                       # @pdf_end_resource
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp254:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp255:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp256:
	.cfi_def_cfa_offset 32
.Ltmp257:
	.cfi_offset %rbx, -24
.Ltmp258:
	.cfi_offset %rbp, -16
	movl	%esi, %ebp
	movq	%rdi, %rbx
	movq	5848(%rbx), %rdi
	movl	$.L.str.2206, %esi
	callq	stream_puts
	cmpl	$0, 9524(%rbx)
	je	.LBB35_4
# BB#1:                                 # %land.lhs.true.i.i.i
	cmpl	$14, %ebp
	je	.LBB35_4
# BB#2:                                 # %land.lhs.true.i.i.i
	movl	9548(%rbx), %eax
	testl	%eax, %eax
	je	.LBB35_4
# BB#3:                                 # %sw.default.i.i.i
	movq	5848(%rbx), %rdi
	movl	$.L.str.2207, %esi
	callq	stream_puts
.LBB35_4:                               # %pdf_end_aside.exit
	movq	18240(%rbx), %rax
	movq	%rax, 5848(%rbx)
	movq	$0, 18240(%rbx)
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end35:
	.size	pdf_end_resource, .Lfunc_end35-pdf_end_resource
	.cfi_endproc

	.globl	pdf_write_resource_objects
	.align	16, 0x90
	.type	pdf_write_resource_objects,@function
pdf_write_resource_objects:             # @pdf_write_resource_objects
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp259:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp260:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp261:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp262:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp263:
	.cfi_def_cfa_offset 48
.Ltmp264:
	.cfi_offset %rbx, -48
.Ltmp265:
	.cfi_offset %r12, -40
.Ltmp266:
	.cfi_offset %r14, -32
.Ltmp267:
	.cfi_offset %r15, -24
.Ltmp268:
	.cfi_offset %rbp, -16
	movl	%esi, %r14d
	movq	%rdi, %rbx
	movl	%r14d, %eax
	xorl	%r12d, %r12d
	shlq	$7, %rax
	leaq	(%rax,%rbx), %r15
	xorl	%eax, %eax
	.align	16, 0x90
.LBB36_1:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB36_2 Depth 2
	movq	26672(%r15,%r12,8), %rbp
	jmp	.LBB36_2
	.align	16, 0x90
.LBB36_8:                               # %for.inc
                                        #   in Loop: Header=BB36_2 Depth=2
	movq	(%rbp), %rbp
.LBB36_2:                               # %for.body
                                        #   Parent Loop BB36_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testq	%rbp, %rbp
	je	.LBB36_9
# BB#3:                                 # %for.body.6
                                        #   in Loop: Header=BB36_2 Depth=2
	cmpl	$0, 24(%rbp)
	je	.LBB36_5
# BB#4:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB36_2 Depth=2
	cmpl	$0, 9524(%rbx)
	je	.LBB36_8
.LBB36_5:                               # %land.lhs.true
                                        #   in Loop: Header=BB36_2 Depth=2
	movq	64(%rbp), %rdi
	testq	%rdi, %rdi
	je	.LBB36_8
# BB#6:                                 # %land.lhs.true.9
                                        #   in Loop: Header=BB36_2 Depth=2
	cmpb	$0, 50(%rdi)
	jne	.LBB36_8
# BB#7:                                 # %if.then
                                        #   in Loop: Header=BB36_2 Depth=2
	movq	%rbx, %rsi
	movl	%r14d, %edx
	callq	cos_write_object
	jmp	.LBB36_8
	.align	16, 0x90
.LBB36_9:                               # %for.end
                                        #   in Loop: Header=BB36_1 Depth=1
	incq	%r12
	cmpq	$15, %r12
	jg	.LBB36_11
# BB#10:                                # %for.end
                                        #   in Loop: Header=BB36_1 Depth=1
	testl	%eax, %eax
	jns	.LBB36_1
.LBB36_11:                              # %for.end.14
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end36:
	.size	pdf_write_resource_objects, .Lfunc_end36-pdf_write_resource_objects
	.cfi_endproc

	.globl	pdf_reverse_resource_chain
	.align	16, 0x90
	.type	pdf_reverse_resource_chain,@function
pdf_reverse_resource_chain:             # @pdf_reverse_resource_chain
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%esi, %ecx
	shlq	$7, %rcx
	movq	26672(%rdi,%rcx), %rax
	testq	%rax, %rax
	je	.LBB37_5
# BB#1:                                 # %if.end
	leaq	26672(%rdi,%rcx), %rcx
	movq	(%rax), %rdx
	testq	%rdx, %rdx
	movq	%rax, %rsi
	je	.LBB37_4
# BB#2:
	movq	%rax, %rdi
	.align	16, 0x90
.LBB37_3:                               # %if.end.4
                                        # =>This Inner Loop Header: Depth=1
	movq	%rdx, %rsi
	movq	(%rsi), %rdx
	movq	%rdi, (%rsi)
	testq	%rdx, %rdx
	movq	%rsi, %rdi
	jne	.LBB37_3
.LBB37_4:                               # %for.end
	movq	$0, (%rax)
	movq	%rsi, (%rcx)
.LBB37_5:                               # %cleanup
	retq
.Lfunc_end37:
	.size	pdf_reverse_resource_chain, .Lfunc_end37-pdf_reverse_resource_chain
	.cfi_endproc

	.globl	pdf_free_resource_objects
	.align	16, 0x90
	.type	pdf_free_resource_objects,@function
pdf_free_resource_objects:              # @pdf_free_resource_objects
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp269:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp270:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp271:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp272:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp273:
	.cfi_def_cfa_offset 48
.Ltmp274:
	.cfi_offset %rbx, -40
.Ltmp275:
	.cfi_offset %r12, -32
.Ltmp276:
	.cfi_offset %r14, -24
.Ltmp277:
	.cfi_offset %r15, -16
	movl	%esi, %r14d
	xorl	%r15d, %r15d
	shlq	$7, %r14
	addq	%rdi, %r14
	.align	16, 0x90
.LBB38_1:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB38_3 Depth 2
	movq	26672(%r14,%r15,8), %rbx
	testq	%rbx, %rbx
	je	.LBB38_6
# BB#2:                                 #   in Loop: Header=BB38_1 Depth=1
	leaq	26672(%r14,%r15,8), %r12
	jmp	.LBB38_3
.LBB38_4:                               # %if.then
                                        #   in Loop: Header=BB38_3 Depth=2
	movq	%rbx, %r12
	movq	(%rbx), %rbx
	jmp	.LBB38_5
	.align	16, 0x90
.LBB38_3:                               # %while.body
                                        #   Parent Loop BB38_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$0, 24(%rbx)
	jne	.LBB38_4
# BB#8:                                 # %if.else
                                        #   in Loop: Header=BB38_3 Depth=2
	movq	64(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB38_10
# BB#9:                                 # %if.then.5
                                        #   in Loop: Header=BB38_3 Depth=2
	movl	$.L.str.2233, %esi
	callq	cos_free
	movq	$0, 64(%rbx)
.LBB38_10:                              # %if.end
                                        #   in Loop: Header=BB38_3 Depth=2
	movq	(%rbx), %rbx
	movq	%rbx, (%r12)
.LBB38_5:                               # %if.then
                                        #   in Loop: Header=BB38_3 Depth=2
	testq	%rbx, %rbx
	jne	.LBB38_3
.LBB38_6:                               # %while.end
                                        #   in Loop: Header=BB38_1 Depth=1
	incq	%r15
	cmpq	$16, %r15
	jne	.LBB38_1
# BB#7:                                 # %for.end
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end38:
	.size	pdf_free_resource_objects, .Lfunc_end38-pdf_free_resource_objects
	.cfi_endproc

	.globl	pdf_store_page_resources
	.align	16, 0x90
	.type	pdf_store_page_resources,@function
pdf_store_page_resources:               # @pdf_store_page_resources
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp278:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp279:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp280:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp281:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp282:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp283:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp284:
	.cfi_def_cfa_offset 80
.Ltmp285:
	.cfi_offset %rbx, -56
.Ltmp286:
	.cfi_offset %r12, -48
.Ltmp287:
	.cfi_offset %r13, -40
.Ltmp288:
	.cfi_offset %r14, -32
.Ltmp289:
	.cfi_offset %r15, -24
.Ltmp290:
	.cfi_offset %rbp, -16
	movl	%edx, %r12d
	movq	%rsi, 8(%rsp)           # 8-byte Spill
	movq	%rdi, %rbx
	xorl	%eax, %eax
	.align	16, 0x90
.LBB39_1:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB39_3 Depth 2
                                        #       Child Loop BB39_4 Depth 3
                                        #     Child Loop BB39_22 Depth 2
                                        #       Child Loop BB39_23 Depth 3
	movq	%rax, %rcx
	cmpq	$5, %rcx
	movl	$6, %eax
	je	.LBB39_1
# BB#2:                                 # %if.end
                                        #   in Loop: Header=BB39_1 Depth=1
	movq	%rcx, %rax
	shlq	$32, %rax
	movslq	%ecx, %rdx
	movq	%rdx, 16(%rsp)          # 8-byte Spill
	movq	%rcx, (%rsp)            # 8-byte Spill
	sarq	$29, %rax
	movq	8(%rsp), %rcx           # 8-byte Reload
	movq	$0, 40(%rcx,%rax)
	xorl	%r15d, %r15d
	xorl	%r13d, %r13d
	.align	16, 0x90
.LBB39_3:                               # %for.body.5
                                        #   Parent Loop BB39_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB39_4 Depth 3
	movq	16(%rsp), %rax          # 8-byte Reload
	shlq	$7, %rax
	leaq	(%rax,%rbx), %rax
	movq	26672(%rax,%r15,8), %r14
	jmp	.LBB39_4
	.align	16, 0x90
.LBB39_14:                              # %for.inc
                                        #   in Loop: Header=BB39_4 Depth=3
	movq	(%r14), %r14
.LBB39_4:                               # %for.body.5
                                        #   Parent Loop BB39_1 Depth=1
                                        #     Parent Loop BB39_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	testq	%r14, %r14
	je	.LBB39_15
# BB#5:                                 # %for.body.12
                                        #   in Loop: Header=BB39_4 Depth=3
	movq	26664(%rbx), %rax
	testq	56(%r14), %rax
	je	.LBB39_14
# BB#6:                                 # %if.then.13
                                        #   in Loop: Header=BB39_4 Depth=3
	movq	64(%r14), %rax
	movq	8(%rax), %rbp
	cmpq	$-1, %rbp
	je	.LBB39_14
# BB#7:                                 # %if.end.16
                                        #   in Loop: Header=BB39_4 Depth=3
	testq	%r13, %r13
	jne	.LBB39_12
# BB#8:                                 # %if.then.18
                                        #   in Loop: Header=BB39_4 Depth=3
	movq	%rbx, %rdi
	callq	pdfwrite_pdf_open_document
	testl	%eax, %eax
	js	.LBB39_9
# BB#10:                                # %if.end.i.i
                                        #   in Loop: Header=BB39_4 Depth=3
	movq	5848(%rbx), %rax
	movq	%rax, 18240(%rbx)
	movq	18224(%rbx), %rax
	movq	%rax, 5848(%rbx)
	xorl	%esi, %esi
	movq	%rbx, %rdi
	movq	(%rsp), %rdx            # 8-byte Reload
	callq	pdf_open_obj
	movq	%rax, %rsi
	jmp	.LBB39_11
.LBB39_9:                               # %if.then.i.i
                                        #   in Loop: Header=BB39_4 Depth=3
	movslq	%eax, %rsi
.LBB39_11:                              # %pdf_begin_separate.exit
                                        #   in Loop: Header=BB39_4 Depth=3
	movq	8(%rsp), %rax           # 8-byte Reload
	movq	16(%rsp), %rcx          # 8-byte Reload
	movq	%rsi, 40(%rax,%rcx,8)
	movl	26544(%rbx), %edx
	movq	%rbx, %rdi
	callq	pdf_record_usage
	movq	5848(%rbx), %r13
	movl	$.L.str.2234, %esi
	movq	%r13, %rdi
	callq	stream_puts
.LBB39_12:                              # %if.end.28
                                        #   in Loop: Header=BB39_4 Depth=3
	leaq	32(%r14), %rdx
	movl	$.L.str.2235, %esi
	movq	%r13, %rdi
	callq	pprints1
	movl	$.L.str.2236, %esi
	movq	%r13, %rdi
	movq	%rbp, %rdx
	callq	pprintld1
	movl	26544(%rbx), %edx
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	pdf_record_usage
	testl	%r12d, %r12d
	je	.LBB39_14
# BB#13:                                # %if.then.34
                                        #   in Loop: Header=BB39_4 Depth=3
	movq	26664(%rbx), %rax
	subq	%rax, 56(%r14)
	jmp	.LBB39_14
	.align	16, 0x90
.LBB39_15:                              # %for.end
                                        #   in Loop: Header=BB39_3 Depth=2
	incq	%r15
	cmpq	$16, %r15
	jne	.LBB39_3
# BB#16:                                # %for.end.40
                                        #   in Loop: Header=BB39_1 Depth=1
	testq	%r13, %r13
	je	.LBB39_21
# BB#17:                                # %if.then.42
                                        #   in Loop: Header=BB39_1 Depth=1
	movl	$.L.str.2237, %esi
	movq	%r13, %rdi
	callq	stream_puts
	movq	5848(%rbx), %rdi
	movl	$.L.str.2206, %esi
	callq	stream_puts
	cmpl	$0, 9524(%rbx)
	je	.LBB39_20
# BB#18:                                # %land.lhs.true.i.i
                                        #   in Loop: Header=BB39_1 Depth=1
	cmpl	$0, 9548(%rbx)
	je	.LBB39_20
# BB#19:                                # %sw.default.i.i
                                        #   in Loop: Header=BB39_1 Depth=1
	movq	5848(%rbx), %rdi
	movl	$.L.str.2207, %esi
	callq	stream_puts
.LBB39_20:                              # %pdf_end_separate.exit
                                        #   in Loop: Header=BB39_1 Depth=1
	movq	18240(%rbx), %rax
	movq	%rax, 5848(%rbx)
	movq	$0, 18240(%rbx)
.LBB39_21:                              # %if.end.45
                                        #   in Loop: Header=BB39_1 Depth=1
	xorl	%r14d, %r14d
	movq	(%rsp), %r15            # 8-byte Reload
	cmpq	$6, %r15
	movl	$0, %eax
	je	.LBB39_33
	.align	16, 0x90
.LBB39_22:                              # %for.body.i
                                        #   Parent Loop BB39_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB39_23 Depth 3
	movq	%r15, %rcx
	shlq	$7, %rcx
	leaq	(%rcx,%rbx), %rcx
	movq	26672(%rcx,%r14,8), %rbp
	jmp	.LBB39_23
	.align	16, 0x90
.LBB39_29:                              # %for.inc.i
                                        #   in Loop: Header=BB39_23 Depth=3
	movq	(%rbp), %rbp
.LBB39_23:                              # %for.body.i
                                        #   Parent Loop BB39_1 Depth=1
                                        #     Parent Loop BB39_22 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	testq	%rbp, %rbp
	je	.LBB39_30
# BB#24:                                # %for.body.6.i
                                        #   in Loop: Header=BB39_23 Depth=3
	cmpl	$0, 24(%rbp)
	je	.LBB39_26
# BB#25:                                # %lor.lhs.false.i
                                        #   in Loop: Header=BB39_23 Depth=3
	cmpl	$0, 9524(%rbx)
	je	.LBB39_29
.LBB39_26:                              # %land.lhs.true.i
                                        #   in Loop: Header=BB39_23 Depth=3
	movq	64(%rbp), %rdi
	testq	%rdi, %rdi
	je	.LBB39_29
# BB#27:                                # %land.lhs.true.9.i
                                        #   in Loop: Header=BB39_23 Depth=3
	cmpb	$0, 50(%rdi)
	jne	.LBB39_29
# BB#28:                                # %if.then.i
                                        #   in Loop: Header=BB39_23 Depth=3
	movq	%rbx, %rsi
	movl	%r15d, %edx
	callq	cos_write_object
	jmp	.LBB39_29
	.align	16, 0x90
.LBB39_30:                              # %for.end.i
                                        #   in Loop: Header=BB39_22 Depth=2
	incq	%r14
	cmpq	$15, %r14
	jg	.LBB39_32
# BB#31:                                # %for.end.i
                                        #   in Loop: Header=BB39_22 Depth=2
	testl	%eax, %eax
	jns	.LBB39_22
.LBB39_32:                              # %cleanup.50
                                        #   in Loop: Header=BB39_1 Depth=1
	incq	%r15
	cmpq	$7, %r15
	movq	%r15, %rax
	jne	.LBB39_1
.LBB39_33:                              # %for.end.56
	movl	26584(%rbx), %eax
	movq	8(%rsp), %rcx           # 8-byte Reload
	movl	%eax, 24(%rcx)
	xorl	%eax, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end39:
	.size	pdf_store_page_resources, .Lfunc_end39-pdf_store_page_resources
	.cfi_endproc

	.globl	pdf_copy_data
	.align	16, 0x90
	.type	pdf_copy_data,@function
pdf_copy_data:                          # @pdf_copy_data
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp291:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp292:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp293:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp294:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp295:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp296:
	.cfi_def_cfa_offset 56
	subq	$536, %rsp              # imm = 0x218
.Ltmp297:
	.cfi_def_cfa_offset 592
.Ltmp298:
	.cfi_offset %rbx, -56
.Ltmp299:
	.cfi_offset %r12, -48
.Ltmp300:
	.cfi_offset %r13, -40
.Ltmp301:
	.cfi_offset %r14, -32
.Ltmp302:
	.cfi_offset %r15, -24
.Ltmp303:
	.cfi_offset %rbp, -16
	movq	%rcx, %r14
	movq	%rdx, %rbx
	movq	%rsi, %r15
	movq	%rdi, 8(%rsp)           # 8-byte Spill
	testq	%rbx, %rbx
	jle	.LBB40_6
# BB#1:                                 # %while.body.lr.ph
	leaq	16(%rsp), %r13
	.align	16, 0x90
.LBB40_2:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$513, %rbx              # imm = 0x201
	movl	$512, %eax              # imm = 0x200
	cmovlq	%rbx, %rax
	cmpq	$512, %rbx              # imm = 0x200
	movl	$512, %r12d             # imm = 0x200
	cmovll	%ebx, %r12d
	movl	%eax, %ebp
	movl	$1, %esi
	movq	%r13, %rdi
	movq	%rbp, %rdx
	movq	%r15, %rcx
	callq	fread
	testq	%rax, %rax
	jle	.LBB40_6
# BB#3:                                 # %if.end
                                        #   in Loop: Header=BB40_2 Depth=1
	testq	%r14, %r14
	je	.LBB40_5
# BB#4:                                 # %if.then.5
                                        #   in Loop: Header=BB40_2 Depth=1
	movq	%r14, %rdi
	movq	%r13, %rsi
	movl	%r12d, %edx
	callq	s_arcfour_process_buffer
.LBB40_5:                               # %cleanup.thread
                                        #   in Loop: Header=BB40_2 Depth=1
	movq	8(%rsp), %rdi           # 8-byte Reload
	movq	%r13, %rsi
	movl	%r12d, %edx
	callq	stream_write
	subq	%rbp, %rbx
	jg	.LBB40_2
.LBB40_6:                               # %cleanup.12
	addq	$536, %rsp              # imm = 0x218
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end40:
	.size	pdf_copy_data, .Lfunc_end40-pdf_copy_data
	.cfi_endproc

	.globl	pdf_copy_data_safe
	.align	16, 0x90
	.type	pdf_copy_data_safe,@function
pdf_copy_data_safe:                     # @pdf_copy_data_safe
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp304:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp305:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp306:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp307:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp308:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp309:
	.cfi_def_cfa_offset 56
	subq	$520, %rsp              # imm = 0x208
.Ltmp310:
	.cfi_def_cfa_offset 576
.Ltmp311:
	.cfi_offset %rbx, -56
.Ltmp312:
	.cfi_offset %r12, -48
.Ltmp313:
	.cfi_offset %r13, -40
.Ltmp314:
	.cfi_offset %r14, -32
.Ltmp315:
	.cfi_offset %r15, -24
.Ltmp316:
	.cfi_offset %rbp, -16
	movq	%rcx, %r13
	movq	%rsi, %r14
	movq	%rdi, %r15
	testq	%r13, %r13
	jle	.LBB41_4
# BB#1:                                 # %while.body.lr.ph
	leaq	(%rdx,%r13), %r12
	.align	16, 0x90
.LBB41_2:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$513, %r13              # imm = 0x201
	movl	$512, %ebx              # imm = 0x200
	cmovlq	%r13, %rbx
	movq	%r14, %rdi
	callq	gp_ftell_64
	movq	%rax, %rbp
	movq	%r12, %rsi
	subq	%r13, %rsi
	xorl	%edx, %edx
	movq	%r14, %rdi
	callq	gp_fseek_64
	movl	$1, %esi
	leaq	(%rsp), %rdi
	movq	%rbx, %rdx
	movq	%r14, %rcx
	callq	fread
	testq	%rax, %rax
	jle	.LBB41_4
# BB#3:                                 # %cleanup.thread
                                        #   in Loop: Header=BB41_2 Depth=1
	xorl	%edx, %edx
	movq	%r14, %rdi
	movq	%rbp, %rsi
	callq	gp_fseek_64
	movq	%r15, %rdi
	leaq	(%rsp), %rsi
	movl	%ebx, %edx
	callq	stream_write
	movq	%r15, %rdi
	callq	*208(%r15)
	subq	%rbx, %r13
	jg	.LBB41_2
.LBB41_4:                               # %cleanup.12
	addq	$520, %rsp              # imm = 0x208
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end41:
	.size	pdf_copy_data_safe, .Lfunc_end41-pdf_copy_data_safe
	.cfi_endproc

	.globl	pdf_page_id
	.align	16, 0x90
	.type	pdf_page_id,@function
pdf_page_id:                            # @pdf_page_id
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp317:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp318:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp319:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp320:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp321:
	.cfi_def_cfa_offset 48
	subq	$16, %rsp
.Ltmp322:
	.cfi_def_cfa_offset 64
.Ltmp323:
	.cfi_offset %rbx, -48
.Ltmp324:
	.cfi_offset %r12, -40
.Ltmp325:
	.cfi_offset %r14, -32
.Ltmp326:
	.cfi_offset %r15, -24
.Ltmp327:
	.cfi_offset %rbp, -16
	movl	%esi, %ebx
	movq	%rdi, %r14
	xorl	%ebp, %ebp
	testl	%ebx, %ebx
	jle	.LBB42_8
# BB#1:                                 # %if.end
	movl	26656(%r14), %r12d
	cmpl	%ebx, %r12d
	jle	.LBB42_3
# BB#2:                                 # %if.end.if.end.25_crit_edge
	movq	26648(%r14), %r15
	jmp	.LBB42_5
.LBB42_3:                               # %if.then.2
	cmpl	$2147483637, %ebx       # imm = 0x7FFFFFF5
	movl	$2147483637, %eax       # imm = 0x7FFFFFF5
	cmovgl	%eax, %ebx
	leal	10(%rbx), %eax
	addl	%r12d, %r12d
	cmpl	%r12d, %eax
	cmovgel	%eax, %r12d
	movq	1728(%r14), %rdi
	movq	26648(%r14), %rsi
	movl	$.L.str.2238, %ecx
	movl	%r12d, %edx
	callq	*16(%rdi)
	movq	%rax, %r15
	xorl	%ebp, %ebp
	testq	%r15, %r15
	je	.LBB42_8
# BB#4:                                 # %if.end.17
	movslq	26656(%r14), %rax
	imulq	$208, %rax, %rdi
	addq	%r15, %rdi
	movl	%r12d, %ecx
	subl	%eax, %ecx
	imulq	$208, %rcx, %rdx
	xorl	%esi, %esi
	callq	memset
	movq	%r15, 26648(%r14)
	movl	%r12d, 26656(%r14)
.LBB42_5:                               # %if.end.25
	decl	%ebx
	movslq	%ebx, %rax
	imulq	$208, %rax, %rbp
	movq	(%r15,%rbp), %rax
	testq	%rax, %rax
	je	.LBB42_7
# BB#6:                                 # %if.end.25.if.end.41_crit_edge
	movq	8(%rax), %rbp
	jmp	.LBB42_8
.LBB42_7:                               # %if.then.33
	movl	$.L.str.2239, %esi
	movq	%r14, %rdi
	callq	cos_dict_alloc
	movq	%rax, %rbx
	movq	26648(%r14), %rax
	movq	%rbx, (%rax,%rbp)
	movq	26504(%r14), %rbp
	leaq	1(%rbp), %rax
	movq	%rax, 26504(%r14)
	movq	$0, 8(%rsp)
	movq	14088(%r14), %rcx
	leaq	8(%rsp), %rdi
	movl	$8, %esi
	movl	$1, %edx
	callq	fwrite
	movq	%rbp, 8(%rbx)
.LBB42_8:                               # %cleanup.43
	movq	%rbp, %rax
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end42:
	.size	pdf_page_id, .Lfunc_end42-pdf_page_id
	.cfi_endproc

	.globl	pdf_current_page
	.align	16, 0x90
	.type	pdf_current_page,@function
pdf_current_page:                       # @pdf_current_page
	.cfi_startproc
# BB#0:                                 # %entry
	movslq	26544(%rdi), %rax
	imulq	$208, %rax, %rax
	addq	26648(%rdi), %rax
	retq
.Lfunc_end43:
	.size	pdf_current_page, .Lfunc_end43-pdf_current_page
	.cfi_endproc

	.globl	pdf_current_page_dict
	.align	16, 0x90
	.type	pdf_current_page_dict,@function
pdf_current_page_dict:                  # @pdf_current_page_dict
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp328:
	.cfi_def_cfa_offset 16
.Ltmp329:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movl	26544(%rbx), %esi
	incl	%esi
	callq	pdf_page_id
	movq	%rax, %rcx
	xorl	%eax, %eax
	testq	%rcx, %rcx
	jle	.LBB44_2
# BB#1:                                 # %if.end
	movslq	26544(%rbx), %rax
	movq	26648(%rbx), %rcx
	imulq	$208, %rax, %rax
	movq	(%rcx,%rax), %rax
.LBB44_2:                               # %return
	popq	%rbx
	retq
.Lfunc_end44:
	.size	pdf_current_page_dict, .Lfunc_end44-pdf_current_page_dict
	.cfi_endproc

	.globl	pdf_write_saved_string
	.align	16, 0x90
	.type	pdf_write_saved_string,@function
pdf_write_saved_string:                 # @pdf_write_saved_string
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp330:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp331:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp332:
	.cfi_def_cfa_offset 32
.Ltmp333:
	.cfi_offset %rbx, -24
.Ltmp334:
	.cfi_offset %r14, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB45_2
# BB#1:                                 # %if.then
	movq	5848(%r14), %rdi
	movl	8(%rbx), %edx
	callq	stream_write
	movq	1728(%r14), %rdi
	movq	(%rbx), %rsi
	movl	8(%rbx), %edx
	movl	$.L.str.2240, %ecx
	callq	*160(%rdi)
	movq	$0, (%rbx)
.LBB45_2:                               # %if.end
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end45:
	.size	pdf_write_saved_string, .Lfunc_end45-pdf_write_saved_string
	.cfi_endproc

	.globl	pdf_open_page
	.align	16, 0x90
	.type	pdf_open_page,@function
pdf_open_page:                          # @pdf_open_page
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp335:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp336:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp337:
	.cfi_def_cfa_offset 32
.Ltmp338:
	.cfi_offset %rbx, -32
.Ltmp339:
	.cfi_offset %r14, -24
.Ltmp340:
	.cfi_offset %rbp, -16
	movl	%esi, %r14d
	movq	%rdi, %rbx
	cmpq	$0, 26552(%rbx)
	jne	.LBB46_3
# BB#1:                                 # %if.then
	movl	26544(%rbx), %esi
	incl	%esi
	movq	%rbx, %rdi
	callq	pdf_page_id
	movq	%rax, %rcx
	movl	$-25, %eax
	testq	%rcx, %rcx
	je	.LBB46_8
# BB#2:                                 # %cleanup
	movq	%rbx, %rdi
	callq	pdfwrite_pdf_open_document
	testl	%eax, %eax
	js	.LBB46_8
.LBB46_3:                               # %if.end.7
	movl	%r14d, %ebp
	movl	26560(%rbx), %eax
	jmp	.LBB46_4
	.align	16, 0x90
.LBB46_6:                               # %cleanup.thread.i
                                        #   in Loop: Header=BB46_4 Depth=1
	movl	%eax, 26560(%rbx)
	movl	%eax, %eax
.LBB46_4:                               # %if.end.7
                                        # =>This Inner Loop Header: Depth=1
	shlq	$5, %rax
	movq	context_procs(%rax,%rbp,8), %rcx
	testq	%rcx, %rcx
	je	.LBB46_7
# BB#5:                                 # %while.body.i
                                        #   in Loop: Header=BB46_4 Depth=1
	movq	%rbx, %rdi
	callq	*%rcx
	testl	%eax, %eax
	jns	.LBB46_6
	jmp	.LBB46_8
.LBB46_7:                               # %while.end.i
	movl	%r14d, 26560(%rbx)
	xorl	%eax, %eax
.LBB46_8:                               # %return
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end46:
	.size	pdf_open_page, .Lfunc_end46-pdf_open_page
	.cfi_endproc

	.globl	pdf_unclip
	.align	16, 0x90
	.type	pdf_unclip,@function
pdf_unclip:                             # @pdf_unclip
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp341:
	.cfi_def_cfa_offset 16
.Ltmp342:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	cmpl	$0, 9536(%rbx)
	setne	%al
	movzbl	%al, %eax
	cmpl	%eax, 30392(%rbx)
	jle	.LBB47_1
# BB#8:                                 # %if.end.3
	movl	26560(%rbx), %eax
	cmpl	$2, %eax
	jb	.LBB47_12
	.align	16, 0x90
.LBB47_9:                               # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, %ecx
	shlq	$5, %rcx
	movq	%rbx, %rdi
	callq	*context_procs+8(%rcx)
	testl	%eax, %eax
	js	.LBB47_16
# BB#10:                                # %cleanup.thread.i
                                        #   in Loop: Header=BB47_9 Depth=1
	movl	%eax, 26560(%rbx)
	cmpl	$1, %eax
	jne	.LBB47_9
	jmp	.LBB47_11
.LBB47_1:                               # %if.then
	cmpq	$0, 26552(%rbx)
	jne	.LBB47_4
# BB#2:                                 # %if.then.i
	movl	26544(%rbx), %esi
	incl	%esi
	movq	%rbx, %rdi
	callq	pdf_page_id
	movq	%rax, %rcx
	movl	$-25, %eax
	testq	%rcx, %rcx
	je	.LBB47_16
# BB#3:                                 # %cleanup.i
	movq	%rbx, %rdi
	callq	pdfwrite_pdf_open_document
	testl	%eax, %eax
	js	.LBB47_16
.LBB47_4:                               # %if.end.7.i
	movl	26560(%rbx), %eax
	jmp	.LBB47_5
	.align	16, 0x90
.LBB47_7:                               # %cleanup.thread.i.i
                                        #   in Loop: Header=BB47_5 Depth=1
	movl	%eax, 26560(%rbx)
.LBB47_5:                               # %if.end.7.i
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$1, %eax
	je	.LBB47_11
# BB#6:                                 # %while.body.i.i
                                        #   in Loop: Header=BB47_5 Depth=1
	movl	%eax, %ecx
	shlq	$5, %rcx
	movq	%rbx, %rdi
	callq	*context_procs+8(%rcx)
	testl	%eax, %eax
	jns	.LBB47_7
	jmp	.LBB47_16
.LBB47_11:                              # %pdf_open_contents.exit.thread
	movl	$1, 26560(%rbx)
.LBB47_12:                              # %if.end.14
	movl	28860(%rbx), %ecx
	xorl	%eax, %eax
	cmpl	28864(%rbx), %ecx
	jle	.LBB47_16
# BB#13:                                # %if.then.16
	movq	5848(%rbx), %rsi
	movq	%rbx, %rdi
	callq	pdf_restore_viewer_state
	testl	%eax, %eax
	js	.LBB47_16
# BB#14:                                # %if.end.21
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	pdf_remember_clip_path
	testl	%eax, %eax
	js	.LBB47_16
# BB#15:                                # %cleanup.26
	movq	8776(%rbx), %rax
	movq	%rax, 8784(%rbx)
	xorl	%eax, %eax
.LBB47_16:                              # %cleanup.30
	popq	%rbx
	retq
.Lfunc_end47:
	.size	pdf_unclip, .Lfunc_end47-pdf_unclip
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI48_0:
	.quad	4636737291354636288     # double 100
	.text
	.globl	pdf_store_default_Producer
	.align	16, 0x90
	.type	pdf_store_default_Producer,@function
pdf_store_default_Producer:             # @pdf_store_default_Producer
	.cfi_startproc
# BB#0:                                 # %entry
	movq	gs_revision(%rip), %rcx
	movabsq	$-6640827866535438581, %rdx # imm = 0xA3D70A3D70A3D70B
	movq	%rcx, %rax
	imulq	%rdx
	addq	%rcx, %rdx
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	$6, %rdx
	addq	%rax, %rdx
	imulq	$100, %rdx, %rax
	movq	gs_product(%rip), %rdx
	cvtsi2sdq	%rcx, %xmm0
	divsd	.LCPI48_0(%rip), %xmm0
	cmpq	%rax, %rcx
	je	.LBB48_1
# BB#2:                                 # %if.else
	movl	$.L.str.2242, %esi
	movb	$1, %al
	jmp	gs_sprintf              # TAILCALL
.LBB48_1:                               # %if.then
	movl	$.L.str.2241, %esi
	movb	$1, %al
	jmp	gs_sprintf              # TAILCALL
.Lfunc_end48:
	.size	pdf_store_default_Producer, .Lfunc_end48-pdf_store_default_Producer
	.cfi_endproc

	.globl	pdf_put_matrix
	.align	16, 0x90
	.type	pdf_put_matrix,@function
pdf_put_matrix:                         # @pdf_put_matrix
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp343:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp344:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp345:
	.cfi_def_cfa_offset 32
.Ltmp346:
	.cfi_offset %rbx, -32
.Ltmp347:
	.cfi_offset %r14, -24
.Ltmp348:
	.cfi_offset %r15, -16
	movq	%rcx, %r14
	movq	%rdx, %rbx
	movq	5848(%rdi), %r15
	testq	%rsi, %rsi
	je	.LBB49_2
# BB#1:                                 # %if.then
	movq	%r15, %rdi
	callq	stream_puts
.LBB49_2:                               # %if.end
	movss	(%rbx), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movss	4(%rbx), %xmm1          # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm1
	movss	8(%rbx), %xmm2          # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	movss	12(%rbx), %xmm3         # xmm3 = mem[0],zero,zero,zero
	cvtss2sd	%xmm3, %xmm3
	movss	16(%rbx), %xmm4         # xmm4 = mem[0],zero,zero,zero
	cvtss2sd	%xmm4, %xmm4
	movss	20(%rbx), %xmm5         # xmm5 = mem[0],zero,zero,zero
	cvtss2sd	%xmm5, %xmm5
	movl	$.L.str.2243, %esi
	movq	%r15, %rdi
	callq	pprintg6
	testq	%r14, %r14
	je	.LBB49_3
# BB#4:                                 # %if.then.8
	movq	%r15, %rdi
	movq	%r14, %rsi
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	stream_puts             # TAILCALL
.LBB49_3:                               # %if.end.10
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end49:
	.size	pdf_put_matrix, .Lfunc_end49-pdf_put_matrix
	.cfi_endproc

	.globl	pdf_put_name_chars_proc
	.align	16, 0x90
	.type	pdf_put_name_chars_proc,@function
pdf_put_name_chars_proc:                # @pdf_put_name_chars_proc
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$pdf_put_name_chars_1_2, %eax
	retq
.Lfunc_end50:
	.size	pdf_put_name_chars_proc, .Lfunc_end50-pdf_put_name_chars_proc
	.cfi_endproc

	.align	16, 0x90
	.type	pdf_put_name_chars_1_2,@function
pdf_put_name_chars_1_2:                 # @pdf_put_name_chars_1_2
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp349:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp350:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp351:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp352:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp353:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp354:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp355:
	.cfi_def_cfa_offset 64
.Ltmp356:
	.cfi_offset %rbx, -56
.Ltmp357:
	.cfi_offset %r12, -48
.Ltmp358:
	.cfi_offset %r13, -40
.Ltmp359:
	.cfi_offset %r14, -32
.Ltmp360:
	.cfi_offset %r15, -24
.Ltmp361:
	.cfi_offset %rbp, -16
	movl	%edx, %ebp
	movq	%rsi, %rbx
	movq	%rdi, %r14
	testl	%ebp, %ebp
	je	.LBB51_12
# BB#1:                                 # %for.body.lr.ph
	movabsq	$21474836485, %r12      # imm = 0x500000005
	leaq	4(%rsp), %r15
	movabsq	$5764751730856165376, %r13 # imm = 0x5000832800000000
	.align	16, 0x90
.LBB51_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rbx), %edx
	cmpl	$62, %edx
	ja	.LBB51_3
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB51_2 Depth=1
	btq	%rdx, %r13
	jb	.LBB51_13
# BB#8:                                 # %for.body
                                        #   in Loop: Header=BB51_2 Depth=1
	testq	%rdx, %rdx
	jne	.LBB51_3
# BB#9:                                 # %sw.bb.9
                                        #   in Loop: Header=BB51_2 Depth=1
	movl	$.L.str.2294, %esi
	movq	%r14, %rdi
	jmp	.LBB51_10
	.align	16, 0x90
.LBB51_3:                               # %for.body
                                        #   in Loop: Header=BB51_2 Depth=1
	leal	-91(%rdx), %eax
	cmpl	$34, %eax
	ja	.LBB51_5
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB51_2 Depth=1
	btq	%rax, %r12
	jb	.LBB51_13
	.align	16, 0x90
.LBB51_5:                               # %sw.default
                                        #   in Loop: Header=BB51_2 Depth=1
	movb	%dl, %al
	addb	$-33, %al
	movzbl	%al, %eax
	cmpl	$93, %eax
	ja	.LBB51_13
# BB#6:                                 # %if.then
                                        #   in Loop: Header=BB51_2 Depth=1
	movq	%r14, %rdi
	movl	%edx, %esi
	callq	spputc
	jmp	.LBB51_11
	.align	16, 0x90
.LBB51_13:                              # %sw.bb
                                        #   in Loop: Header=BB51_2 Depth=1
	movl	$.L.str.2293, %esi
	xorl	%eax, %eax
	movq	%r15, %rdi
	callq	gs_sprintf
	movq	%r14, %rdi
	movq	%r15, %rsi
.LBB51_10:                              # %sw.epilog
                                        #   in Loop: Header=BB51_2 Depth=1
	callq	stream_puts
.LBB51_11:                              # %sw.epilog
                                        #   in Loop: Header=BB51_2 Depth=1
	incq	%rbx
	decl	%ebp
	jne	.LBB51_2
.LBB51_12:                              # %for.end
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end51:
	.size	pdf_put_name_chars_1_2, .Lfunc_end51-pdf_put_name_chars_1_2
	.cfi_endproc

	.globl	pdf_put_name_chars
	.align	16, 0x90
	.type	pdf_put_name_chars,@function
pdf_put_name_chars:                     # @pdf_put_name_chars
	.cfi_startproc
# BB#0:                                 # %entry
	movq	5848(%rdi), %rdi
	jmp	pdf_put_name_chars_1_2  # TAILCALL
.Lfunc_end52:
	.size	pdf_put_name_chars, .Lfunc_end52-pdf_put_name_chars
	.cfi_endproc

	.globl	pdf_put_name
	.align	16, 0x90
	.type	pdf_put_name,@function
pdf_put_name:                           # @pdf_put_name
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp362:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp363:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp364:
	.cfi_def_cfa_offset 32
.Ltmp365:
	.cfi_offset %rbx, -32
.Ltmp366:
	.cfi_offset %r14, -24
.Ltmp367:
	.cfi_offset %rbp, -16
	movl	%edx, %r14d
	movq	%rsi, %rbx
	movq	%rdi, %rbp
	movq	5848(%rbp), %rdi
	movl	$47, %esi
	callq	spputc
	movq	5848(%rbp), %rdi
	movq	%rbx, %rsi
	movl	%r14d, %edx
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	pdf_put_name_chars_1_2  # TAILCALL
.Lfunc_end53:
	.size	pdf_put_name, .Lfunc_end53-pdf_put_name
	.cfi_endproc

	.globl	pdf_put_string
	.align	16, 0x90
	.type	pdf_put_string,@function
pdf_put_string:                         # @pdf_put_string
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp368:
	.cfi_def_cfa_offset 16
	movq	5848(%rdi), %rax
	cmpl	$0, 8852(%rdi)
	setne	%cl
	movzbl	%cl, %ecx
	movq	%rax, %rdi
	callq	s_write_ps_string
	xorl	%eax, %eax
	popq	%rdx
	retq
.Lfunc_end54:
	.size	pdf_put_string, .Lfunc_end54-pdf_put_string
	.cfi_endproc

	.globl	pdf_write_value
	.align	16, 0x90
	.type	pdf_write_value,@function
pdf_write_value:                        # @pdf_write_value
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp369:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp370:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp371:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp372:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp373:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp374:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp375:
	.cfi_def_cfa_offset 96
.Ltmp376:
	.cfi_offset %rbx, -56
.Ltmp377:
	.cfi_offset %r12, -48
.Ltmp378:
	.cfi_offset %r13, -40
.Ltmp379:
	.cfi_offset %r14, -32
.Ltmp380:
	.cfi_offset %r15, -24
.Ltmp381:
	.cfi_offset %rbp, -16
	movl	%edx, %ebx
	movq	%rsi, %r14
	movq	%rdi, %r15
	testl	%ebx, %ebx
	je	.LBB55_66
# BB#1:                                 # %land.lhs.true
	movzbl	(%r14), %eax
	cmpl	$47, %eax
	jne	.LBB55_4
# BB#2:                                 # %if.then
	incq	%r14
	decl	%ebx
.LBB55_3:                               # %if.then
	movq	5848(%r15), %rdi
	movl	$47, %esi
	callq	spputc
	movq	5848(%r15), %rdi
	movq	%r14, %rsi
	movl	%ebx, %edx
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	pdf_put_name_chars_1_2  # TAILCALL
.LBB55_4:                               # %if.else
	cmpl	$6, %ebx
	jb	.LBB55_13
# BB#5:                                 # %land.lhs.true.5
	movzbl	%al, %edx
	cmpl	$123, %edx
	je	.LBB55_22
# BB#6:                                 # %land.lhs.true.5
	cmpl	$91, %edx
	je	.LBB55_22
# BB#7:                                 # %land.lhs.true.5
	testb	%al, %al
	jne	.LBB55_23
# BB#8:                                 # %land.lhs.true.10
	cmpb	$0, 1(%r14)
	jne	.LBB55_17
# BB#9:                                 # %land.lhs.true.15
	cmpb	$0, 2(%r14)
	jne	.LBB55_17
# BB#10:                                # %land.lhs.true.20
	leal	-1(%rbx), %eax
	cmpb	$0, (%r14,%rax)
	jne	.LBB55_17
# BB#11:                                # %land.lhs.true.26
	leal	-2(%rbx), %eax
	cmpb	$0, (%r14,%rax)
	jne	.LBB55_17
# BB#12:                                # %if.then.33
	addq	$4, %r14
	addl	$-5, %ebx
	jmp	.LBB55_3
.LBB55_13:                              # %if.else.37
	cmpl	$4, %ebx
	jb	.LBB55_20
# BB#14:                                # %land.lhs.true.40
	movzbl	%al, %edx
	cmpl	$123, %edx
	je	.LBB55_22
# BB#15:                                # %land.lhs.true.40
	cmpl	$91, %edx
	je	.LBB55_22
# BB#16:                                # %land.lhs.true.40
	testb	%al, %al
	jne	.LBB55_23
.LBB55_17:                              # %land.lhs.true.45
	cmpb	$0, 1(%r14)
	jne	.LBB55_66
# BB#18:                                # %land.lhs.true.50
	leal	-1(%rbx), %eax
	cmpb	$0, (%r14,%rax)
	jne	.LBB55_66
# BB#19:                                # %if.then.57
	addq	$3, %r14
	addl	$-4, %ebx
	jmp	.LBB55_3
.LBB55_20:                              # %if.else.61
	cmpl	$2, %ebx
	jb	.LBB55_66
# BB#21:                                # %land.lhs.true.64
	movb	%al, %dl
	orb	$32, %dl
	movzbl	%dl, %edx
	cmpl	$123, %edx
	je	.LBB55_22
.LBB55_23:                              # %if.else.75
	cmpl	$3, %ebx
	jb	.LBB55_27
# BB#24:                                # %if.else.75
	movzbl	%al, %edx
	cmpl	$60, %edx
	jne	.LBB55_27
# BB#25:                                # %land.lhs.true.83
	movzbl	1(%r14), %eax
	cmpl	$60, %eax
	jne	.LBB55_26
.LBB55_22:                              # %if.then.73
	movq	%r15, %rdi
	movq	%r14, %rsi
	movl	%ebx, %edx
	callq	pdf_put_composite
	jmp	.LBB55_68
.LBB55_27:                              # %land.lhs.true.93
	movzbl	%al, %eax
	cmpl	$60, %eax
	jne	.LBB55_28
.LBB55_26:                              # %if.then.111
	movq	24(%r15), %r12
	callq	gs_program_name
	movq	%rax, %r13
	callq	gs_revision_number
	movq	%r12, %rdi
	movq	%r13, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	24(%r15), %rdi
	movl	$.L.str.2297, %esi
	xorl	%eax, %eax
	callq	errprintf
	movq	5848(%r15), %rdi
	movq	%r14, %rsi
	movl	%ebx, %edx
	callq	stream_write
	movl	$-28, %eax
	jmp	.LBB55_69
.LBB55_28:                              # %land.lhs.true.93
	cmpl	$40, %eax
	jne	.LBB55_66
# BB#29:                                # %if.then.98
	cmpl	$0, 9648(%r15)
	sete	%dl
	cmpq	$-1, %rcx
	sete	%al
	orb	%dl, %al
	cmpl	$0, 9524(%r15)
	je	.LBB55_65
# BB#30:                                # %if.then.99
	testb	%al, %al
	je	.LBB55_70
# BB#31:                                # %land.lhs.true.i
	movaps	.Lpdf_put_encoded_string_as_hex.hex(%rip), %xmm0
	movaps	%xmm0, 16(%rsp)
	cmpl	$0, 9548(%r15)
	je	.LBB55_33
# BB#32:                                # %if.then.3.i
	movq	5848(%r15), %rdi
	movl	$.L.str.2166, %esi
	movl	$1, %edx
	callq	stream_write
.LBB55_33:                              # %if.end.i
	movq	5848(%r15), %rdi
	movl	$1, %ebp
	movl	$.L.str.2295, %esi
	movl	$1, %edx
	callq	stream_write
	decl	%ebx
	cmpl	$2, %ebx
	jb	.LBB55_62
# BB#34:                                # %for.body.lr.ph.i
	movl	$1, %r12d
.LBB55_35:                              # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movslq	%r12d, %r13
	movzbl	(%r14,%r13), %eax
	cmpl	$92, %eax
	jne	.LBB55_55
# BB#36:                                # %if.then.9.i
                                        #   in Loop: Header=BB55_35 Depth=1
	movzbl	1(%r14,%r13), %edx
	movb	%dl, %al
	addb	$-48, %al
	movzbl	%al, %eax
	cmpl	$9, %eax
	ja	.LBB55_38
# BB#37:                                # %if.then.22.i
                                        #   in Loop: Header=BB55_35 Depth=1
	shll	$6, %edx
	movzbl	2(%r13,%r14), %eax
	movzbl	3(%r14,%r13), %ecx
	addq	$3, %r13
	leal	(%rdx,%rax,8), %eax
	leal	-3504(%rcx,%rax), %edx
	movl	%r13d, %r12d
	jmp	.LBB55_49
.LBB55_55:                              # %if.else.76.i
                                        #   in Loop: Header=BB55_35 Depth=1
	cmpl	$253, %ebp
	jl	.LBB55_56
# BB#57:                                # %land.lhs.true.79.i
                                        #   in Loop: Header=BB55_35 Depth=1
	movl	%ebp, 12(%rsp)          # 4-byte Spill
	cmpl	$0, 9524(%r15)
	je	.LBB55_60
# BB#58:                                # %land.lhs.true.82.i
                                        #   in Loop: Header=BB55_35 Depth=1
	cmpl	$0, 9548(%r15)
	je	.LBB55_60
# BB#59:                                # %if.then.85.i
                                        #   in Loop: Header=BB55_35 Depth=1
	movq	5848(%r15), %rdi
	movl	$.L.str.2166, %esi
	movl	$1, %edx
	callq	stream_write
	movb	(%r14,%r13), %al
	movl	$0, 12(%rsp)            # 4-byte Folded Spill
	jmp	.LBB55_60
.LBB55_38:                              # %if.else.i
                                        #   in Loop: Header=BB55_35 Depth=1
	incq	%r13
	movl	%r13d, %r12d
	cmpl	$109, %edx
	jle	.LBB55_39
# BB#41:                                # %if.else.i
                                        #   in Loop: Header=BB55_35 Depth=1
	cmpl	$110, %edx
	je	.LBB55_45
# BB#42:                                # %if.else.i
                                        #   in Loop: Header=BB55_35 Depth=1
	cmpl	$114, %edx
	jne	.LBB55_43
# BB#48:                                # %sw.bb.49.i
                                        #   in Loop: Header=BB55_35 Depth=1
	movl	$13, %edx
	jmp	.LBB55_49
.LBB55_56:                              #   in Loop: Header=BB55_35 Depth=1
	movl	%ebp, 12(%rsp)          # 4-byte Spill
.LBB55_60:                              # %if.end.88.i
                                        #   in Loop: Header=BB55_35 Depth=1
	movq	5848(%r15), %rdi
	movzbl	%al, %eax
	shrq	$4, %rax
	leaq	16(%rsp), %rcx
	movq	%rcx, %rbp
	leaq	(%rax,%rbp), %rsi
	movl	$1, %edx
	callq	stream_write
	movq	5848(%r15), %rdi
	movzbl	(%r14,%r13), %eax
	andl	$15, %eax
	leaq	(%rax,%rbp), %rsi
	jmp	.LBB55_61
.LBB55_39:                              # %if.else.i
                                        #   in Loop: Header=BB55_35 Depth=1
	cmpl	$98, %edx
	jne	.LBB55_46
# BB#40:                                #   in Loop: Header=BB55_35 Depth=1
	movl	$8, %edx
	jmp	.LBB55_49
.LBB55_45:                              # %sw.bb.47.i
                                        #   in Loop: Header=BB55_35 Depth=1
	movl	$10, %edx
	jmp	.LBB55_49
.LBB55_43:                              # %if.else.i
                                        #   in Loop: Header=BB55_35 Depth=1
	cmpl	$116, %edx
	jne	.LBB55_49
# BB#44:                                # %sw.bb.46.i
                                        #   in Loop: Header=BB55_35 Depth=1
	movl	$9, %edx
	jmp	.LBB55_49
.LBB55_46:                              # %if.else.i
                                        #   in Loop: Header=BB55_35 Depth=1
	cmpl	$102, %edx
	jne	.LBB55_49
# BB#47:                                # %sw.bb.48.i
                                        #   in Loop: Header=BB55_35 Depth=1
	movl	$12, %edx
.LBB55_49:                              # %if.end.53.i
                                        #   in Loop: Header=BB55_35 Depth=1
	cmpl	$253, %ebp
	jl	.LBB55_50
# BB#51:                                # %land.lhs.true.56.i
                                        #   in Loop: Header=BB55_35 Depth=1
	movl	%ebp, 12(%rsp)          # 4-byte Spill
	cmpl	$0, 9524(%r15)
	je	.LBB55_54
# BB#52:                                # %land.lhs.true.59.i
                                        #   in Loop: Header=BB55_35 Depth=1
	cmpl	$0, 9548(%r15)
	je	.LBB55_54
# BB#53:                                # %if.then.62.i
                                        #   in Loop: Header=BB55_35 Depth=1
	movq	5848(%r15), %rdi
	movl	$.L.str.2166, %esi
	movq	%rdx, %rbp
	movl	$1, %edx
	callq	stream_write
	movq	%rbp, %rdx
	movl	$0, 12(%rsp)            # 4-byte Folded Spill
	jmp	.LBB55_54
.LBB55_50:                              #   in Loop: Header=BB55_35 Depth=1
	movl	%ebp, 12(%rsp)          # 4-byte Spill
.LBB55_54:                              # %if.end.65.i
                                        #   in Loop: Header=BB55_35 Depth=1
	movq	5848(%r15), %rdi
	movl	%edx, %eax
	shrl	$4, %eax
	andl	$15, %eax
	leaq	16(%rsp), %rcx
	movq	%rcx, %r13
	leaq	(%rax,%r13), %rsi
	movq	%rdx, %rbp
	movl	$1, %edx
	callq	stream_write
	movq	5848(%r15), %rdi
	andl	$15, %ebp
	leaq	(%rbp,%r13), %rsi
.LBB55_61:                              # %for.inc.i
                                        #   in Loop: Header=BB55_35 Depth=1
	movl	$1, %edx
	callq	stream_write
	movl	12(%rsp), %ebp          # 4-byte Reload
	addl	$2, %ebp
	incl	%r12d
	cmpl	%ebx, %r12d
	jb	.LBB55_35
.LBB55_62:                              # %for.end.i
	movq	5848(%r15), %rdi
	movl	$.L.str.2296, %esi
	movl	$1, %edx
	callq	stream_write
	cmpl	$0, 9524(%r15)
	je	.LBB55_68
# BB#63:                                # %land.lhs.true.113.i
	cmpl	$0, 9548(%r15)
	je	.LBB55_68
# BB#64:                                # %if.then.116.i
	movq	5848(%r15), %rdi
	movl	$.L.str.2166, %esi
	movl	$1, %edx
	jmp	.LBB55_67
.LBB55_65:                              # %if.else.101
	testb	%al, %al
	je	.LBB55_70
.LBB55_66:                              # %if.end.118
	movq	5848(%r15), %rdi
	movq	%r14, %rsi
	movl	%ebx, %edx
.LBB55_67:                              # %return
	callq	stream_write
.LBB55_68:                              # %return
	xorl	%eax, %eax
.LBB55_69:                              # %return
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB55_70:                              # %if.else.120.i
	movq	%r15, %rdi
	movq	%r14, %rsi
	movl	%ebx, %edx
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	pdf_encrypt_encoded_string # TAILCALL
.Lfunc_end55:
	.size	pdf_write_value, .Lfunc_end55-pdf_write_value
	.cfi_endproc

	.align	16, 0x90
	.type	pdf_put_composite,@function
pdf_put_composite:                      # @pdf_put_composite
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp382:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp383:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp384:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp385:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp386:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp387:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp388:
	.cfi_def_cfa_offset 64
.Ltmp389:
	.cfi_offset %rbx, -56
.Ltmp390:
	.cfi_offset %r12, -48
.Ltmp391:
	.cfi_offset %r13, -40
.Ltmp392:
	.cfi_offset %r14, -32
.Ltmp393:
	.cfi_offset %r15, -24
.Ltmp394:
	.cfi_offset %rbp, -16
	movq	%rcx, %r12
	movl	%edx, %ebx
	movq	%rsi, %r15
	movq	%rdi, %r14
	cmpq	$-1, %r12
	je	.LBB56_7
# BB#1:                                 # %entry
	movl	9648(%r14), %eax
	testl	%eax, %eax
	je	.LBB56_7
# BB#2:                                 # %for.cond.preheader
	testl	%ebx, %ebx
	jle	.LBB56_44
# BB#3:
	movabsq	$4294976512, %rbp       # imm = 0x100002400
	jmp	.LBB56_4
.LBB56_7:                               # %if.then
	cmpl	$0, 9524(%r14)
	je	.LBB56_28
# BB#8:                                 # %land.lhs.true
	cmpl	$0, 9548(%r14)
	je	.LBB56_28
# BB#9:                                 # %if.then.3
	movq	5848(%r14), %rdi
	movl	$10, %esi
	callq	spputc
	cmpl	$256, %ebx              # imm = 0x100
	jb	.LBB56_28
# BB#10:                                # %while.body.lr.ph.lr.ph
	movl	%ebx, %eax
	leaq	(%rax,%r15), %rbx
	xorl	%ebp, %ebp
	movabsq	$576460752303456513, %rsi # imm = 0x800000000008101
	movq	%r15, %r13
.LBB56_11:                              # %while.body.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB56_12 Depth 2
                                        #     Child Loop BB56_18 Depth 2
	movq	%r13, %r12
	.align	16, 0x90
.LBB56_12:                              # %while.body
                                        #   Parent Loop BB56_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%r12), %eax
	xorl	%ecx, %ecx
	cmpl	$13, %eax
	je	.LBB56_14
# BB#13:                                # %while.body
                                        #   in Loop: Header=BB56_12 Depth=2
	movzbl	%al, %edx
	cmpl	$10, %edx
	je	.LBB56_14
# BB#15:                                # %if.end
                                        #   in Loop: Header=BB56_12 Depth=2
	cmpl	$255, %ebp
	jge	.LBB56_16
# BB#27:                                # %if.else.60
                                        #   in Loop: Header=BB56_12 Depth=2
	incl	%ebp
	movl	%ebp, %ecx
.LBB56_14:                              # %while.cond.backedge
                                        #   in Loop: Header=BB56_12 Depth=2
	incq	%r12
	cmpq	%rbx, %r12
	movl	%ecx, %ebp
	jb	.LBB56_12
	jmp	.LBB56_44
.LBB56_16:                              # %while.cond.17.preheader
                                        #   in Loop: Header=BB56_11 Depth=1
	cmpq	%r15, %r12
	movq	%r12, %r13
	jbe	.LBB56_24
# BB#17:                                # %while.body.20.lr.ph.preheader
                                        #   in Loop: Header=BB56_11 Depth=1
	leaq	-1(%r12), %r13
	jmp	.LBB56_18
.LBB56_21:                              # %if.else.while.body.20.lr.ph_crit_edge
                                        #   in Loop: Header=BB56_18 Depth=2
	movb	(%r13), %al
	decq	%r13
.LBB56_18:                              # %while.body.20.lr.ph
                                        #   Parent Loop BB56_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	%al, %cl
	addb	$-32, %cl
	movzbl	%cl, %ecx
	cmpl	$59, %ecx
	ja	.LBB56_19
# BB#22:                                # %while.body.20.lr.ph
                                        #   in Loop: Header=BB56_18 Depth=2
	btq	%rcx, %rsi
	jb	.LBB56_23
.LBB56_19:                              # %while.body.20.lr.ph
                                        #   in Loop: Header=BB56_18 Depth=2
	movzbl	%al, %eax
	cmpl	$123, %eax
	je	.LBB56_23
# BB#20:                                # %if.else
                                        #   in Loop: Header=BB56_18 Depth=2
	cmpq	%r15, %r13
	ja	.LBB56_21
.LBB56_24:                              # %while.end
                                        #   in Loop: Header=BB56_11 Depth=1
	cmpq	%r15, %r13
	jne	.LBB56_26
	jmp	.LBB56_25
.LBB56_23:                              # %while.end.thread
                                        #   in Loop: Header=BB56_11 Depth=1
	incq	%r13
	movq	5848(%r14), %rdi
	movl	%r13d, %edx
	subl	%r15d, %edx
	movq	%r15, %rsi
	callq	stream_write
	movq	5848(%r14), %rdi
	movl	$10, %esi
	callq	spputc
.LBB56_25:                              # %if.then.50
                                        #   in Loop: Header=BB56_11 Depth=1
	movq	5848(%r14), %rdi
	movl	%r12d, %edx
	subl	%r13d, %edx
	movq	%r13, %rsi
	callq	stream_write
	movq	5848(%r14), %rdi
	movl	$10, %esi
	callq	spputc
	movq	%r12, %r15
.LBB56_26:                              # %while.cond.outer.backedge
                                        #   in Loop: Header=BB56_11 Depth=1
	cmpq	%rbx, %r13
	movabsq	$576460752303456513, %rsi # imm = 0x800000000008101
	jb	.LBB56_11
	jmp	.LBB56_44
.LBB56_28:                              # %if.else.68
	movq	5848(%r14), %rdi
	movq	%r15, %rsi
	movl	%ebx, %edx
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	stream_write            # TAILCALL
.LBB56_41:                              # %pdf_scan_item.exit.loopexit
                                        #   in Loop: Header=BB56_4 Depth=1
	movl	%ebx, %r13d
	jmp	.LBB56_42
	.align	16, 0x90
.LBB56_4:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB56_33 Depth 2
	movl	%ebx, %ebx
	movsbl	(%r15), %eax
	movl	$1, %r13d
	cmpl	$31, %eax
	jle	.LBB56_5
# BB#29:                                # %for.body
                                        #   in Loop: Header=BB56_4 Depth=1
	movzbl	%al, %eax
	cmpl	$32, %eax
	je	.LBB56_42
# BB#30:                                # %for.body
                                        #   in Loop: Header=BB56_4 Depth=1
	cmpl	$40, %eax
	jne	.LBB56_31
# BB#45:                                # %if.then.79
                                        #   in Loop: Header=BB56_4 Depth=1
	movq	%r14, %rdi
	movq	%r15, %rsi
	movl	%ebx, %edx
	movq	%r12, %rcx
	callq	pdf_encrypt_encoded_string
	movl	%eax, %r13d
	jmp	.LBB56_43
	.align	16, 0x90
.LBB56_5:                               # %for.body
                                        #   in Loop: Header=BB56_4 Depth=1
	movzbl	%al, %eax
	cmpl	$10, %eax
	je	.LBB56_42
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB56_4 Depth=1
	cmpl	$13, %eax
	jne	.LBB56_32
	jmp	.LBB56_42
	.align	16, 0x90
.LBB56_31:                              # %for.body
                                        #   in Loop: Header=BB56_4 Depth=1
	cmpl	$116, %eax
	je	.LBB56_42
.LBB56_32:                              # %for.cond.i.preheader
                                        #   in Loop: Header=BB56_4 Depth=1
	leaq	-1(%rbx), %rax
	xorl	%ecx, %ecx
.LBB56_33:                              # %for.cond.i
                                        #   Parent Loop BB56_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	%ecx, %eax
	je	.LBB56_41
# BB#34:                                # %for.body.i
                                        #   in Loop: Header=BB56_33 Depth=2
	movzbl	1(%r15,%rcx), %edx
	cmpq	$60, %rdx
	leaq	1(%r15,%rcx), %r13
	ja	.LBB56_35
# BB#38:                                # %for.body.i
                                        #   in Loop: Header=BB56_33 Depth=2
	btq	%rdx, %rbp
	jb	.LBB56_40
# BB#39:                                # %for.body.i
                                        #   in Loop: Header=BB56_33 Depth=2
	movabsq	$1153063341606830080, %rsi # imm = 0x1000810000000000
	btq	%rdx, %rsi
	jb	.LBB56_40
.LBB56_35:                              # %for.body.i
                                        #   in Loop: Header=BB56_33 Depth=2
	incq	%rcx
	addb	$-91, %dl
	movzbl	%dl, %edx
	cmpl	$34, %edx
	ja	.LBB56_33
# BB#36:                                # %for.body.i
                                        #   in Loop: Header=BB56_33 Depth=2
	movabsq	$21474836485, %rsi      # imm = 0x500000005
	btq	%rdx, %rsi
	jb	.LBB56_40
# BB#37:                                # %for.body.i
                                        #   in Loop: Header=BB56_33 Depth=2
	cmpq	$25, %rdx
	jne	.LBB56_33
.LBB56_40:                              # %if.then.60.i
                                        #   in Loop: Header=BB56_4 Depth=1
	subl	%r15d, %r13d
.LBB56_42:                              # %pdf_scan_item.exit
                                        #   in Loop: Header=BB56_4 Depth=1
	movq	5848(%r14), %rdi
	movq	%r15, %rsi
	movl	%r13d, %edx
	callq	stream_write
.LBB56_43:                              # %if.end.85
                                        #   in Loop: Header=BB56_4 Depth=1
	movslq	%r13d, %rax
	addq	%rax, %r15
	subl	%eax, %ebx
	jg	.LBB56_4
.LBB56_44:                              # %if.end.88
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end56:
	.size	pdf_put_composite, .Lfunc_end56-pdf_put_composite
	.cfi_endproc

	.globl	pdf_put_filters
	.align	16, 0x90
	.type	pdf_put_filters,@function
pdf_put_filters:                        # @pdf_put_filters
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp395:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp396:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp397:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp398:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp399:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp400:
	.cfi_def_cfa_offset 56
	subq	$264, %rsp              # imm = 0x108
.Ltmp401:
	.cfi_def_cfa_offset 320
.Ltmp402:
	.cfi_offset %rbx, -56
.Ltmp403:
	.cfi_offset %r12, -48
.Ltmp404:
	.cfi_offset %r13, -40
.Ltmp405:
	.cfi_offset %r14, -32
.Ltmp406:
	.cfi_offset %r15, -24
.Ltmp407:
	.cfi_offset %rbp, -16
	movq	%rcx, 24(%rsp)          # 8-byte Spill
	movq	%rdx, %rbx
	movq	%rsi, 16(%rsp)          # 8-byte Spill
	movq	%rdi, 8(%rsp)           # 8-byte Spill
	testq	%rbx, %rbx
	je	.LBB57_46
# BB#1:                                 # %for.body.lr.ph
	movq	s_A85E_template+16(%rip), %r12
	movl	$1, %r15d
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	.align	16, 0x90
.LBB57_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	256(%rbx), %rbp
	movq	(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	%r12, %rax
	je	.LBB57_3
# BB#4:                                 # %if.else
                                        #   in Loop: Header=BB57_2 Depth=1
	cmpq	s_CFE_template+16(%rip), %rax
	je	.LBB57_5
# BB#11:                                # %if.else.22
                                        #   in Loop: Header=BB57_2 Depth=1
	cmpq	s_DCTE_template+16(%rip), %rax
	je	.LBB57_12
# BB#13:                                # %if.else.26
                                        #   in Loop: Header=BB57_2 Depth=1
	cmpq	s_zlibE_template+16(%rip), %rax
	je	.LBB57_14
# BB#15:                                # %if.else.30
                                        #   in Loop: Header=BB57_2 Depth=1
	cmpq	s_LZWE_template+16(%rip), %rax
	je	.LBB57_16
# BB#17:                                # %if.else.34
                                        #   in Loop: Header=BB57_2 Depth=1
	cmpq	s_PNGPE_template+16(%rip), %rax
	je	.LBB57_18
# BB#25:                                # %if.else.81
                                        #   in Loop: Header=BB57_2 Depth=1
	cmpq	s_RLE_template+16(%rip), %rax
	jne	.LBB57_27
# BB#26:                                # %if.then.84
                                        #   in Loop: Header=BB57_2 Depth=1
	movq	24(%rsp), %rax          # 8-byte Reload
	movq	64(%rax), %r14
	jmp	.LBB57_27
	.align	16, 0x90
.LBB57_3:                               #   in Loop: Header=BB57_2 Depth=1
	xorl	%r15d, %r15d
	jmp	.LBB57_27
	.align	16, 0x90
.LBB57_5:                               # %if.then.5
                                        #   in Loop: Header=BB57_2 Depth=1
	movl	$.L.str.2244, %esi
	movq	16(%rsp), %rdi          # 8-byte Reload
	callq	cos_dict_alloc
	movq	%rax, %r13
	movl	$-25, %eax
	testq	%r13, %r13
	je	.LBB57_47
# BB#6:                                 # %do.body
                                        #   in Loop: Header=BB57_2 Depth=1
	xorl	%edx, %edx
	leaq	224(%rsp), %rdi
	movq	%r13, %rsi
	callq	cos_param_list_writer_init
	testl	%eax, %eax
	js	.LBB57_47
# BB#7:                                 # %do.end
                                        #   in Loop: Header=BB57_2 Depth=1
	movl	$192, %edx
	leaq	32(%rsp), %rdi
	movq	%rbp, %rsi
	callq	memcpy
	cmpl	$0, 176(%rsp)
	je	.LBB57_9
# BB#8:                                 # %if.then.12
                                        #   in Loop: Header=BB57_2 Depth=1
	movl	$0, 172(%rsp)
.LBB57_9:                               # %do.body.14
                                        #   in Loop: Header=BB57_2 Depth=1
	xorl	%edx, %edx
	leaq	224(%rsp), %rdi
	leaq	32(%rsp), %rsi
	callq	s_CF_get_params
	testl	%eax, %eax
	js	.LBB57_47
# BB#10:                                # %cleanup
                                        #   in Loop: Header=BB57_2 Depth=1
	movq	24(%rsp), %rax          # 8-byte Reload
	movq	16(%rax), %r14
	jmp	.LBB57_27
.LBB57_12:                              # %if.then.25
                                        #   in Loop: Header=BB57_2 Depth=1
	movq	24(%rsp), %rax          # 8-byte Reload
	movq	24(%rax), %r14
	jmp	.LBB57_27
.LBB57_14:                              # %if.then.29
                                        #   in Loop: Header=BB57_2 Depth=1
	movq	24(%rsp), %rax          # 8-byte Reload
	movq	48(%rax), %r14
	jmp	.LBB57_27
.LBB57_16:                              # %if.then.33
                                        #   in Loop: Header=BB57_2 Depth=1
	movq	24(%rsp), %rax          # 8-byte Reload
	movq	56(%rax), %r14
	jmp	.LBB57_27
.LBB57_18:                              # %if.then.37
                                        #   in Loop: Header=BB57_2 Depth=1
	movl	$.L.str.2244, %esi
	movq	16(%rsp), %rdi          # 8-byte Reload
	callq	cos_dict_alloc
	movq	%rax, %r13
	movl	$-25, %eax
	testq	%r13, %r13
	je	.LBB57_47
# BB#19:                                # %do.body.42
                                        #   in Loop: Header=BB57_2 Depth=1
	movl	120(%rbp), %edx
	movl	$.L.str.2245, %esi
	movq	%r13, %rdi
	callq	cos_dict_put_c_key_int
	testl	%eax, %eax
	js	.LBB57_47
# BB#20:                                # %do.body.49
                                        #   in Loop: Header=BB57_2 Depth=1
	movl	116(%rbp), %edx
	movl	$.L.str.2246, %esi
	movq	%r13, %rdi
	callq	cos_dict_put_c_key_int
	testl	%eax, %eax
	js	.LBB57_47
# BB#21:                                # %do.end.55
                                        #   in Loop: Header=BB57_2 Depth=1
	movl	108(%rbp), %edx
	cmpl	$1, %edx
	je	.LBB57_23
# BB#22:                                # %do.body.58
                                        #   in Loop: Header=BB57_2 Depth=1
	movl	$.L.str.2247, %esi
	movq	%r13, %rdi
	callq	cos_dict_put_c_key_int
	testl	%eax, %eax
	js	.LBB57_47
.LBB57_23:                              # %if.end.66
                                        #   in Loop: Header=BB57_2 Depth=1
	movl	112(%rbp), %edx
	cmpl	$8, %edx
	je	.LBB57_27
# BB#24:                                # %do.body.69
                                        #   in Loop: Header=BB57_2 Depth=1
	movl	$.L.str.2248, %esi
	movq	%r13, %rdi
	callq	cos_dict_put_c_key_int
	testl	%eax, %eax
	js	.LBB57_47
	.align	16, 0x90
.LBB57_27:                              # %for.inc
                                        #   in Loop: Header=BB57_2 Depth=1
	movq	240(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.LBB57_2
# BB#28:                                # %for.end
	testq	%r14, %r14
	je	.LBB57_43
# BB#29:                                # %if.then.97
	testl	%r15d, %r15d
	je	.LBB57_34
# BB#30:                                # %do.body.100
	movq	24(%rsp), %rax          # 8-byte Reload
	movq	40(%rax), %rsi
	movq	8(%rsp), %rdi           # 8-byte Reload
	movq	%r14, %rdx
	callq	cos_dict_put_c_strings
	testl	%eax, %eax
	js	.LBB57_47
# BB#31:                                # %do.end.106
	testq	%r13, %r13
	je	.LBB57_46
# BB#32:                                # %do.body.109
	movq	24(%rsp), %rax          # 8-byte Reload
	movq	32(%rax), %rsi
	movq	8(%rsp), %rdi           # 8-byte Reload
	movq	%r13, %rdx
	callq	cos_dict_put_c_key_object
	jmp	.LBB57_45
.LBB57_43:                              # %if.else.180
	testl	%r15d, %r15d
	jne	.LBB57_46
# BB#44:                                # %do.body.183
	movq	24(%rsp), %rax          # 8-byte Reload
	movq	(%rax), %rdx
	movq	40(%rax), %rsi
	movq	8(%rsp), %rdi           # 8-byte Reload
	callq	cos_dict_put_c_strings
.LBB57_45:                              # %do.body.183
	testl	%eax, %eax
	jns	.LBB57_46
	jmp	.LBB57_47
.LBB57_34:                              # %if.else.117
	movl	$.L.str.2249, %esi
	movq	16(%rsp), %rdi          # 8-byte Reload
	callq	cos_array_alloc
	movq	%rax, %rbx
	movl	$-25, %eax
	testq	%rbx, %rbx
	je	.LBB57_47
# BB#35:                                # %do.body.122
	movq	24(%rsp), %rax          # 8-byte Reload
	movq	(%rax), %rsi
	movq	%rbx, %rdi
	callq	cos_array_add_c_string
	testl	%eax, %eax
	js	.LBB57_47
# BB#36:                                # %do.body.129
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	cos_array_add_c_string
	testl	%eax, %eax
	js	.LBB57_47
# BB#37:                                # %do.body.136
	movq	24(%rsp), %rax          # 8-byte Reload
	movq	40(%rax), %rsi
	movq	8(%rsp), %rdi           # 8-byte Reload
	movq	%rbx, %rdx
	callq	cos_dict_put_c_key_object
	testl	%eax, %eax
	js	.LBB57_47
# BB#38:                                # %do.end.144
	testq	%r13, %r13
	je	.LBB57_46
# BB#39:                                # %if.then.146
	movl	$.L.str.2250, %esi
	movq	16(%rsp), %rdi          # 8-byte Reload
	callq	cos_array_alloc
	movq	%rax, %rbx
	testq	%rbx, %rbx
	movl	$-25, %eax
	je	.LBB57_47
# BB#40:                                # %do.body.151
	movl	$.L.str.2251, %esi
	movq	%rbx, %rdi
	callq	cos_array_add_c_string
	testl	%eax, %eax
	js	.LBB57_47
# BB#41:                                # %do.body.158
	movq	%rbx, %rdi
	movq	%r13, %rsi
	callq	cos_array_add_object
	testl	%eax, %eax
	js	.LBB57_47
# BB#42:                                # %do.body.166
	movq	24(%rsp), %rax          # 8-byte Reload
	movq	32(%rax), %rsi
	movq	8(%rsp), %rdi           # 8-byte Reload
	movq	%rbx, %rdx
	callq	cos_dict_put_c_key_object
	jmp	.LBB57_45
.LBB57_46:                              # %if.end.193
	xorl	%eax, %eax
.LBB57_47:                              # %cleanup.194
	addq	$264, %rsp              # imm = 0x108
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end57:
	.size	pdf_put_filters, .Lfunc_end57-pdf_put_filters
	.cfi_endproc

	.globl	pdf_begin_data
	.align	16, 0x90
	.type	pdf_begin_data,@function
pdf_begin_data:                         # @pdf_begin_data
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp408:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp409:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp410:
	.cfi_def_cfa_offset 32
.Ltmp411:
	.cfi_offset %rbx, -24
.Ltmp412:
	.cfi_offset %r14, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	%r14, 56(%rbx)
	movq	5848(%r14), %rax
	movq	%rax, 8(%rbx)
	movq	%r14, 24(%rbx)
	movq	$0, 16(%rbx)
	leaq	48(%rbx), %rcx
	movl	$34, %esi
	xorl	%edx, %edx
	movl	$1, %r8d
	movl	$3, %r9d
	callq	pdf_open_aside
	movq	5848(%r14), %rcx
	movq	%rcx, 16(%rbx)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end58:
	.size	pdf_begin_data, .Lfunc_end58-pdf_begin_data
	.cfi_endproc

	.globl	pdf_begin_data_stream
	.align	16, 0x90
	.type	pdf_begin_data_stream,@function
pdf_begin_data_stream:                  # @pdf_begin_data_stream
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp413:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp414:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp415:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp416:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp417:
	.cfi_def_cfa_offset 48
.Ltmp418:
	.cfi_offset %rbx, -48
.Ltmp419:
	.cfi_offset %r12, -40
.Ltmp420:
	.cfi_offset %r14, -32
.Ltmp421:
	.cfi_offset %r15, -24
.Ltmp422:
	.cfi_offset %rbp, -16
	movq	%rcx, %r15
	movl	%edx, %eax
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	%r14, 56(%rbx)
	movq	5848(%r14), %rcx
	movq	%rcx, 8(%rbx)
	movq	%r14, 24(%rbx)
	movq	$0, 16(%rbx)
	leaq	48(%rbx), %rbp
	testq	%r15, %r15
	sete	%cl
	movzbl	%cl, %r8d
	movl	$34, %esi
	xorl	%edx, %edx
	movq	%rbp, %rcx
	movl	%eax, %r9d
	callq	pdf_open_aside
	movl	%eax, %r12d
	testq	%r15, %r15
	je	.LBB59_2
# BB#1:                                 # %pdf_reserve_object_id.exit
	movq	(%rbp), %rdi
	movq	64(%rdi), %rax
	movq	%r15, 8(%rax)
	addq	$32, %rdi
	movl	$.L.str.2228, %esi
	xorl	%eax, %eax
	movq	%r15, %rdx
	callq	gs_sprintf
.LBB59_2:                               # %if.end
	movq	5848(%r14), %rax
	movq	%rax, 16(%rbx)
	movl	%r12d, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end59:
	.size	pdf_begin_data_stream, .Lfunc_end59-pdf_begin_data_stream
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI60_0:
	.quad	4608533498688228557     # double 1.3
	.text
	.globl	pdf_append_data_stream_filters
	.align	16, 0x90
	.type	pdf_append_data_stream_filters,@function
pdf_append_data_stream_filters:         # @pdf_append_data_stream_filters
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp423:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp424:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp425:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp426:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp427:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp428:
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
.Ltmp429:
	.cfi_def_cfa_offset 112
.Ltmp430:
	.cfi_offset %rbx, -56
.Ltmp431:
	.cfi_offset %r12, -48
.Ltmp432:
	.cfi_offset %r13, -40
.Ltmp433:
	.cfi_offset %r14, -32
.Ltmp434:
	.cfi_offset %r15, -24
.Ltmp435:
	.cfi_offset %rbp, -16
	movl	%edx, %ebp
	movq	%rsi, %r14
	movq	%rdi, %r12
	movq	5848(%r12), %rbx
	movq	%rbx, 24(%rsp)
	movl	%ebp, %r15d
	andl	$2, %r15d
	movl	%r15d, %eax
	shrl	%eax
	movl	%ebp, %r13d
	andl	$1, %r13d
	orl	%eax, %r13d
	je	.LBB60_2
# BB#1:                                 # %land.lhs.true
	cmpl	$0, 8852(%r12)
	sete	%al
	movzbl	%al, %eax
	orl	%eax, %r15d
.LBB60_2:                               # %if.end.7
	testb	$4, %bpl
	jne	.LBB60_11
# BB#3:                                 # %if.then.10
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	movsd	.LCPI60_0(%rip), %xmm0  # xmm0 = mem[0],zero
	ucomisd	9368(%r12), %xmm0
	movl	$pdf_append_data_stream_filters.fnames1_2, %eax
	movslq	%r15d, %rcx
	ja	.LBB60_5
# BB#4:                                 # %select.mid
	movl	$pdf_append_data_stream_filters.fnames, %eax
.LBB60_5:                               # %select.end
	movq	(%rax,%rcx,8), %rsi
	movq	%rbx, %rdi
	callq	stream_puts
	cmpl	$0, 9536(%r12)
	je	.LBB60_7
# BB#6:                                 # %if.then.14
	movq	%rbx, %rdi
	callq	stell
	addq	$8, %rax
	movq	%rax, 40(%r14)
	movl	$.L.str.2257, %esi
	movq	%rbx, %rdi
	callq	stream_puts
	movq	$-1, 64(%r14)
	jmp	.LBB60_10
.LBB60_7:                               # %if.else
	movq	$-1, 40(%r14)
	movq	26504(%r12), %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	leaq	1(%rax), %rax
	movq	%rax, 26504(%r12)
	movq	5848(%r12), %rbx
	movq	%rbx, %rdi
	callq	stell
	cmpq	18224(%r12), %rbx
	jne	.LBB60_9
# BB#8:
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
.LBB60_9:                               # %select.end52
	movq	%rax, 32(%rsp)
	movq	14088(%r12), %rcx
	leaq	32(%rsp), %rdi
	movl	$8, %esi
	movl	$1, %edx
	callq	fwrite
	movq	8(%rsp), %rdx           # 8-byte Reload
	movq	%rdx, 64(%r14)
	movq	24(%rsp), %rdi
	movl	$.L.str.2258, %esi
	callq	pprintld1
.LBB60_10:                              # %if.end.23
	movq	16(%rsp), %rcx          # 8-byte Reload
.LBB60_11:                              # %if.end.23
	testb	$8, %bpl
	jne	.LBB60_12
# BB#17:                                # %if.else.32
	movl	$0, 72(%r14)
	jmp	.LBB60_18
.LBB60_12:                              # %if.then.26
	cmpl	$0, 9648(%r12)
	je	.LBB60_16
# BB#13:                                # %if.end.i
	movq	1728(%r12), %rbx
	movq	%rbx, 8(%rsp)           # 8-byte Spill
	leaq	32(%rsp), %rdx
	movq	%r12, %rdi
	movq	%rcx, %rsi
	callq	pdf_object_key
	movl	%eax, 16(%rsp)          # 4-byte Spill
	movq	s_arcfour_template(%rip), %rsi
	movl	$.L.str.2208, %edx
	movq	%rbx, %rdi
	callq	*72(%rbx)
	movq	%rax, %rbp
	movl	$-25, %ebx
	testq	%rbp, %rbp
	je	.LBB60_28
# BB#14:                                # %if.end.3.i
	leaq	32(%rsp), %rsi
	movq	%rbp, %rdi
	movl	16(%rsp), %edx          # 4-byte Reload
	callq	s_arcfour_set_key
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB60_28
# BB#15:                                # %if.end.8.i
	leaq	24(%rsp), %rdi
	movl	$s_arcfour_template, %esi
	movq	%rbp, %rdx
	movq	8(%rsp), %rcx           # 8-byte Reload
	callq	s_add_filter
	testq	%rax, %rax
	movl	$-25, %ebx
	je	.LBB60_28
.LBB60_16:                              # %if.end.30
	movq	24(%rsp), %rax
	movq	%rax, 5848(%r12)
	movl	$1, 72(%r14)
.LBB60_18:                              # %if.end.34
	testl	%r13d, %r13d
	je	.LBB60_20
# BB#19:                                # %if.then.37
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	psdf_begin_binary
	movl	%eax, %ebx
	testl	%ebx, %ebx
	jns	.LBB60_21
	jmp	.LBB60_28
.LBB60_20:                              # %if.else.42
	movq	5848(%r12), %rax
	movq	%rax, 8(%r14)
	movq	%r12, 24(%r14)
	movq	%rax, 16(%r14)
	xorl	%ebx, %ebx
.LBB60_21:                              # %if.end.49
	movq	24(%rsp), %rdi
	callq	stell
	movq	%rax, 32(%r14)
	testb	$2, %r15b
	je	.LBB60_28
# BB#22:                                # %if.then.53
	movl	$s_LZWE_template, %r15d
	movsd	.LCPI60_0(%rip), %xmm0  # xmm0 = mem[0],zero
	ucomisd	9368(%r12), %xmm0
	ja	.LBB60_24
# BB#23:                                # %select.mid63
	movl	$s_zlibE_template, %r15d
.LBB60_24:                              # %select.end62
	movq	1728(%r12), %rdi
	movq	(%r15), %rsi
	movl	$.L.str.2298, %edx
	callq	s_alloc_state
	movq	%rax, %rbp
	movl	$-25, %ebx
	testq	%rbp, %rbp
	je	.LBB60_28
# BB#25:                                # %if.end.i.43
	movq	40(%r15), %rax
	testq	%rax, %rax
	je	.LBB60_27
# BB#26:                                # %if.then.2.i
	movq	%rbp, %rdi
	callq	*%rax
.LBB60_27:                              # %if.end.4.i
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rbp, %rdx
	callq	psdf_encode_binary
	movl	%eax, %ebx
.LBB60_28:                              # %cleanup
	movl	%ebx, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end60:
	.size	pdf_append_data_stream_filters, .Lfunc_end60-pdf_append_data_stream_filters
	.cfi_endproc

	.globl	pdf_end_data
	.align	16, 0x90
	.type	pdf_end_data,@function
pdf_end_data:                           # @pdf_end_data
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp436:
	.cfi_def_cfa_offset 16
.Ltmp437:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	56(%rbx), %rdi
	callq	pdf_close_aside
	testl	%eax, %eax
	js	.LBB61_2
# BB#1:                                 # %if.end
	movq	48(%rbx), %rax
	movq	56(%rbx), %rsi
	movq	64(%rax), %rdi
	movl	$34, %edx
	callq	cos_write_object
	movl	%eax, %ecx
	sarl	$31, %eax
	andl	%ecx, %eax
.LBB61_2:                               # %cleanup
	popq	%rbx
	retq
.Lfunc_end61:
	.size	pdf_end_data, .Lfunc_end61-pdf_end_data
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI62_0:
	.quad	-9223372036854775808    # 0x8000000000000000
	.quad	-9223372036854775808    # 0x8000000000000000
.LCPI62_1:
	.quad	4607182418800017408     # double 1.000000e+00
	.quad	4607182418800017408     # double 1.000000e+00
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI62_2:
	.quad	4607182418800017408     # double 1
	.text
	.globl	pdf_function_scaled
	.align	16, 0x90
	.type	pdf_function_scaled,@function
pdf_function_scaled:                    # @pdf_function_scaled
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp438:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp439:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp440:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp441:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp442:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp443:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp444:
	.cfi_def_cfa_offset 80
.Ltmp445:
	.cfi_offset %rbx, -56
.Ltmp446:
	.cfi_offset %r12, -48
.Ltmp447:
	.cfi_offset %r13, -40
.Ltmp448:
	.cfi_offset %r14, -32
.Ltmp449:
	.cfi_offset %r15, -24
.Ltmp450:
	.cfi_offset %rbp, -16
	movq	%rdx, %rbp
	movq	%rsi, %r13
	movq	%rdi, %r12
	testq	%rbp, %rbp
	je	.LBB62_17
# BB#1:                                 # %if.end
	movq	%rcx, 8(%rsp)           # 8-byte Spill
	movq	1728(%r12), %r15
	movl	88(%r13), %esi
	movl	$8, %edx
	movl	$.L.str.2259, %ecx
	movq	%r15, %rdi
	callq	*88(%r15)
	movq	%rax, %rbx
	movl	$-25, %r14d
	testq	%rbx, %rbx
	je	.LBB62_16
# BB#2:                                 # %for.cond.preheader
	movslq	88(%r13), %rax
	testq	%rax, %rax
	jle	.LBB62_13
# BB#3:                                 # %for.body.lr.ph
	xorl	%edx, %edx
	testl	%eax, %eax
	je	.LBB62_11
# BB#4:                                 # %overflow.checked
	xorl	%edx, %edx
	movq	%rax, %rcx
	andq	$-2, %rcx
	je	.LBB62_10
# BB#5:                                 # %vector.memcheck
	leaq	-4(%rbp,%rax,8), %rsi
	xorl	%edx, %edx
	cmpq	%rsi, %rbx
	ja	.LBB62_7
# BB#6:                                 # %vector.memcheck
	leaq	-4(%rbx,%rax,8), %rsi
	cmpq	%rsi, %rbp
	jbe	.LBB62_10
.LBB62_7:                               # %vector.body.preheader
	movq	%rbx, %rdx
	addq	$12, %rdx
	leaq	12(%rbp), %rsi
	movq	%rax, %rdi
	andq	$-2, %rdi
	movapd	.LCPI62_0(%rip), %xmm0  # xmm0 = [9223372036854775808,9223372036854775808]
	movapd	.LCPI62_1(%rip), %xmm1  # xmm1 = [1.000000e+00,1.000000e+00]
	.align	16, 0x90
.LBB62_8:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movss	-4(%rsi), %xmm2         # xmm2 = mem[0],zero,zero,zero
	movss	-12(%rsi), %xmm3        # xmm3 = mem[0],zero,zero,zero
	movss	-8(%rsi), %xmm4         # xmm4 = mem[0],zero,zero,zero
	unpcklps	%xmm2, %xmm3    # xmm3 = xmm3[0],xmm2[0],xmm3[1],xmm2[1]
	cvtps2pd	%xmm3, %xmm2
	movss	(%rsi), %xmm3           # xmm3 = mem[0],zero,zero,zero
	unpcklps	%xmm3, %xmm4    # xmm4 = xmm4[0],xmm3[0],xmm4[1],xmm3[1]
	cvtps2pd	%xmm4, %xmm3
	subpd	%xmm2, %xmm3
	xorpd	%xmm0, %xmm2
	divpd	%xmm3, %xmm2
	cvtpd2ps	%xmm2, %xmm4
	movapd	%xmm1, %xmm5
	divpd	%xmm3, %xmm5
	addpd	%xmm2, %xmm5
	cvtpd2ps	%xmm5, %xmm2
	unpcklps	%xmm2, %xmm4    # xmm4 = xmm4[0],xmm2[0],xmm4[1],xmm2[1]
	movups	%xmm4, -12(%rdx)
	addq	$16, %rdx
	addq	$16, %rsi
	addq	$-2, %rdi
	jne	.LBB62_8
# BB#9:
	movq	%rcx, %rdx
.LBB62_10:                              # %middle.block
	cmpq	%rdx, %rax
	je	.LBB62_13
.LBB62_11:                              # %for.body.preheader
	movapd	.LCPI62_0(%rip), %xmm0  # xmm0 = [9223372036854775808,9223372036854775808]
	movsd	.LCPI62_2(%rip), %xmm1  # xmm1 = mem[0],zero
	.align	16, 0x90
.LBB62_12:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movss	(%rbp,%rdx,8), %xmm2    # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	movss	4(%rbp,%rdx,8), %xmm3   # xmm3 = mem[0],zero,zero,zero
	cvtss2sd	%xmm3, %xmm3
	subsd	%xmm2, %xmm3
	xorpd	%xmm0, %xmm2
	divsd	%xmm3, %xmm2
	xorps	%xmm4, %xmm4
	cvtsd2ss	%xmm2, %xmm4
	movss	%xmm4, (%rbx,%rdx,8)
	movapd	%xmm1, %xmm4
	divsd	%xmm3, %xmm4
	addsd	%xmm2, %xmm4
	xorps	%xmm2, %xmm2
	cvtsd2ss	%xmm4, %xmm2
	movss	%xmm2, 4(%rbx,%rdx,8)
	incq	%rdx
	cmpq	%rax, %rdx
	jl	.LBB62_12
.LBB62_13:                              # %for.end
	leaq	16(%rsp), %rsi
	movq	%r13, %rdi
	movq	%rbx, %rdx
	movq	%r15, %rcx
	callq	*40(%r13)
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB62_15
# BB#14:                                # %if.then.25
	movq	16(%rsp), %rsi
	movq	%r12, %rdi
	movq	8(%rsp), %rdx           # 8-byte Reload
	callq	pdf_function
	movl	%eax, %r14d
	movq	16(%rsp), %rdi
	movl	$1, %esi
	movq	%r15, %rdx
	callq	*56(%rdi)
.LBB62_15:                              # %if.end.29
	movl	$.L.str.2259, %edx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	*24(%r15)
.LBB62_16:                              # %return
	movl	%r14d, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB62_17:                              # %if.then
	movq	%r12, %rdi
	movq	%r13, %rsi
	movq	%rcx, %rdx
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	pdf_function            # TAILCALL
.Lfunc_end62:
	.size	pdf_function_scaled, .Lfunc_end62-pdf_function_scaled
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI63_0:
	.quad	4608533498688228557     # double 1.3
	.text
	.globl	pdf_function
	.align	16, 0x90
	.type	pdf_function,@function
pdf_function:                           # @pdf_function
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp451:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp452:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp453:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp454:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp455:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp456:
	.cfi_def_cfa_offset 56
	subq	$264, %rsp              # imm = 0x108
.Ltmp457:
	.cfi_def_cfa_offset 320
.Ltmp458:
	.cfi_offset %rbx, -56
.Ltmp459:
	.cfi_offset %r12, -48
.Ltmp460:
	.cfi_offset %r13, -40
.Ltmp461:
	.cfi_offset %r14, -32
.Ltmp462:
	.cfi_offset %r15, -24
.Ltmp463:
	.cfi_offset %rbp, -16
	movq	%rdx, %rbx
	movq	%rsi, %r15
	movq	%rdi, %r13
	movq	1728(%r13), %rdi
	movl	$st_pdf_resource, %esi
	movl	$.L.str.2229, %edx
	callq	*72(%rdi)
	movq	%rax, %rbp
	testq	%rbp, %rbp
	je	.LBB63_2
# BB#1:                                 # %if.end.4.i
	movl	$.L.str.2230, %esi
	movq	%r13, %rdi
	callq	cos_object_alloc
	movq	%rax, %r14
	testq	%r14, %r14
	je	.LBB63_2
# BB#3:                                 # %if.end.i
	movq	%rbx, 24(%rsp)          # 8-byte Spill
	movq	%rbp, %rdi
	addq	$72, %rdi
	xorl	%ebx, %ebx
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	memset
	movq	%r14, 64(%rbp)
	movq	$-1, 8(%r14)
	movb	$0, 32(%rbp)
	movq	28336(%r13), %rax
	movq	%rax, (%rbp)
	movq	%rbp, 28336(%r13)
	movq	28648(%r13), %rax
	movq	%rax, 8(%rbp)
	movq	%rbp, 28648(%r13)
	movq	$0, 24(%rbp)
	movq	26664(%r13), %rax
	movq	%rax, 56(%rbp)
	movq	$0, 16(%rbp)
	movq	%rbp, 32(%rsp)
	movq	64(%rbp), %r12
	leaq	232(%rsp), %rsi
	movq	%r15, %rdi
	callq	*24(%r15)
	cmpl	$-1, (%r15)
	je	.LBB63_4
# BB#9:                                 # %if.end.6.i
	cmpq	$0, 232(%rsp)
	je	.LBB63_25
# BB#10:                                # %if.then.8.i
	movq	5848(%r13), %rbp
	movl	$cos_stream_procs, %esi
	movq	%r12, %rdi
	callq	cos_become
	movq	%r12, %rdi
	callq	cos_stream_dict
	movq	%rax, %rbx
	movl	$.L.str.2299, %edx
	movq	%r12, %rdi
	movq	%r13, %rsi
	callq	cos_write_stream_alloc
	movq	%rax, %r12
	testq	%r12, %r12
	je	.LBB63_11
# BB#12:                                # %if.end.14.i
	movq	%rbp, 8(%rsp)           # 8-byte Spill
	movq	%rbx, 16(%rsp)          # 8-byte Spill
	movq	%r12, 5848(%r13)
	leaq	160(%rsp), %rsi
	movq	%r13, %rdi
	callq	psdf_begin_binary
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB63_40
# BB#13:                                # %land.lhs.true.i
	cmpq	$31, 240(%rsp)
	jb	.LBB63_20
# BB#14:                                # %if.then.19.i
	movl	$s_LZWE_template, %r14d
	movsd	.LCPI63_0(%rip), %xmm0  # xmm0 = mem[0],zero
	ucomisd	9368(%r13), %xmm0
	ja	.LBB63_16
# BB#15:                                # %select.mid
	movl	$s_zlibE_template, %r14d
.LBB63_16:                              # %select.end
	movq	1728(%r13), %rdi
	movq	(%r14), %rsi
	movl	$.L.str.2298, %edx
	callq	s_alloc_state
	movq	%rax, %rbp
	movl	$-25, %ebx
	testq	%rbp, %rbp
	je	.LBB63_40
# BB#17:                                # %if.end.i.i
	movq	40(%r14), %rax
	testq	%rax, %rax
	je	.LBB63_19
# BB#18:                                # %if.then.2.i.i
	movq	%rbp, %rdi
	callq	*%rax
.LBB63_19:                              # %if.end.21.i
	leaq	160(%rsp), %rdi
	movq	%r14, %rsi
	movq	%rbp, %rdx
	callq	psdf_encode_binary
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB63_40
.LBB63_20:                              # %if.end.26.i
	movq	176(%rsp), %rdx
	movl	$pdf_function_aux.fnames, %ecx
	movq	16(%rsp), %rdi          # 8-byte Reload
	movq	%r13, %rsi
	callq	pdf_put_filters
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB63_40
# BB#21:                                # %if.then.28.i
	movq	%r12, (%rsp)            # 8-byte Spill
	movq	240(%rsp), %r12
	xorl	%ebx, %ebx
	testq	%r12, %r12
	je	.LBB63_24
# BB#22:
	leaq	40(%rsp), %rbp
	.align	16, 0x90
.LBB63_23:                              # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	subq	%rbx, %r12
	cmpq	$100, %r12
	movq	%r12, %r14
	movl	$100, %eax
	cmovaq	%rax, %r14
	movl	$100, %eax
	cmoval	%eax, %r12d
	movq	232(%rsp), %rdi
	movq	%rbx, %rsi
	movl	%r12d, %edx
	leaq	48(%rsp), %rcx
	movq	%rbp, %r8
	callq	*(%rdi)
	movq	176(%rsp), %rdi
	movq	40(%rsp), %rsi
	movl	%r12d, %edx
	callq	stream_write
	movl	%r14d, %eax
	addq	%rax, %rbx
	movq	240(%rsp), %r12
	cmpq	%rbx, %r12
	ja	.LBB63_23
.LBB63_24:                              # %cleanup.i
	leaq	160(%rsp), %rdi
	callq	psdf_end_binary
	movl	%eax, %ebx
	movq	(%rsp), %rdi            # 8-byte Reload
	callq	sclose
	movq	8(%rsp), %rax           # 8-byte Reload
	movq	%rax, 5848(%r13)
	testl	%ebx, %ebx
	movq	16(%rsp), %rbp          # 8-byte Reload
	jns	.LBB63_26
	jmp	.LBB63_41
.LBB63_2:                               # %if.then.i
	movq	$0, 32(%rsp)
	movl	$-25, %ebx
.LBB63_41:                              # %cleanup
	movl	%ebx, %eax
	addq	$264, %rsp              # imm = 0x108
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB63_4:                               # %if.then.3.i
	movl	$cos_array_procs, %esi
	movq	%r12, %rdi
	callq	cos_become
	cmpl	$0, 256(%rsp)
	jle	.LBB63_37
# BB#5:                                 # %for.body.i.18.lr.ph
	xorl	%ebp, %ebp
	leaq	48(%rsp), %r14
	.align	16, 0x90
.LBB63_7:                               # %for.body.i.18
                                        # =>This Inner Loop Header: Depth=1
	movq	248(%rsp), %rax
	movq	(%rax,%rbp,8), %rsi
	movq	%r13, %rdi
	movq	%r14, %rdx
	callq	pdf_function
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB63_37
# BB#8:                                 # %lor.lhs.false.i.19
                                        #   in Loop: Header=BB63_7 Depth=1
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	cos_array_add
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB63_37
# BB#6:                                 # %for.cond.i.15
                                        #   in Loop: Header=BB63_7 Depth=1
	incq	%rbp
	movslq	256(%rsp), %rax
	cmpq	%rax, %rbp
	jl	.LBB63_7
	jmp	.LBB63_37
.LBB63_25:                              # %if.else.i
	movl	$cos_dict_procs, %esi
	movq	%r12, %rdi
	callq	cos_become
	movq	%r12, %rbp
.LBB63_26:                              # %if.end.53.i
	cmpq	$0, 248(%rsp)
	je	.LBB63_35
# BB#27:                                # %if.then.56.i
	movl	$.L.str.2311, %esi
	movq	%r13, %rdi
	callq	cos_array_alloc
	movq	%rax, %r14
	movl	$-25, %ebx
	testq	%r14, %r14
	je	.LBB63_41
# BB#28:                                # %if.end.61.i
	movq	%rbp, 16(%rsp)          # 8-byte Spill
	xorl	%ebp, %ebp
	cmpl	$0, 256(%rsp)
	jle	.LBB63_33
# BB#29:
	leaq	48(%rsp), %r12
	.align	16, 0x90
.LBB63_31:                              # %for.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	movq	248(%rsp), %rax
	movq	(%rax,%rbp,8), %rsi
	movq	%r13, %rdi
	movq	%r12, %rdx
	callq	pdf_function
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB63_34
# BB#32:                                # %lor.lhs.false.i.i
                                        #   in Loop: Header=BB63_31 Depth=1
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	cos_array_add
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB63_34
# BB#30:                                # %for.cond.i.i
                                        #   in Loop: Header=BB63_31 Depth=1
	incq	%rbp
	movslq	256(%rsp), %rax
	cmpq	%rax, %rbp
	jl	.LBB63_31
.LBB63_33:                              # %lor.lhs.false.i
	leaq	160(%rsp), %rdi
	movq	%r14, %rsi
	callq	cos_object_value
	movl	$.L.str.2312, %esi
	movq	16(%rsp), %rbp          # 8-byte Reload
	movq	%rbp, %rdi
	movq	%rax, %rdx
	callq	cos_dict_put_c_key
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB63_34
.LBB63_35:                              # %if.end.76.i
	leaq	192(%rsp), %rdi
	movl	$1, %edx
	movq	%rbp, %rsi
	callq	cos_param_list_writer_init
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB63_41
# BB#36:                                # %if.end.81.i
	leaq	192(%rsp), %rsi
	movq	%r15, %rdi
	callq	*32(%r15)
	movl	%eax, %ebx
.LBB63_37:                              # %pdf_function_aux.exit
	testl	%ebx, %ebx
	js	.LBB63_41
# BB#38:                                # %if.end
	leaq	32(%rsp), %rsi
	movl	$13, %edx
	movl	$functions_equal, %ecx
	xorl	%r8d, %r8d
	movq	%r13, %rdi
	callq	pdf_substitute_resource
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB63_41
# BB#39:                                # %if.end.4
	movq	26664(%r13), %rax
	movq	32(%rsp), %rcx
	orq	%rax, 56(%rcx)
	movq	64(%rcx), %rsi
	movq	24(%rsp), %rdi          # 8-byte Reload
	callq	cos_object_value
	xorl	%ebx, %ebx
	jmp	.LBB63_41
.LBB63_40:                              # %cleanup.i.thread33
	movq	8(%rsp), %rax           # 8-byte Reload
	movq	%rax, 5848(%r13)
	jmp	.LBB63_41
.LBB63_11:                              # %cleanup.i.thread
	movl	$-25, %ebx
	jmp	.LBB63_41
.LBB63_34:                              # %if.then.69.i
	movl	$.L.str.2311, %esi
	movq	%r14, %rdi
	callq	cos_free
	jmp	.LBB63_41
.Lfunc_end63:
	.size	pdf_function, .Lfunc_end63-pdf_function
	.cfi_endproc

	.align	16, 0x90
	.type	functions_equal,@function
functions_equal:                        # @functions_equal
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$1, %eax
	retq
.Lfunc_end64:
	.size	functions_equal, .Lfunc_end64-functions_equal
	.cfi_endproc

	.globl	pdf_write_function
	.align	16, 0x90
	.type	pdf_write_function,@function
pdf_write_function:                     # @pdf_write_function
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp464:
	.cfi_def_cfa_offset 16
	subq	$32, %rsp
.Ltmp465:
	.cfi_def_cfa_offset 48
.Ltmp466:
	.cfi_offset %rbx, -16
	movq	%rdx, %rbx
	leaq	8(%rsp), %rdx
	callq	pdf_function
	testl	%eax, %eax
	js	.LBB65_2
# BB#1:                                 # %if.end
	movq	16(%rsp), %rax
	movq	8(%rax), %rax
	movq	%rax, (%rbx)
	xorl	%eax, %eax
.LBB65_2:                               # %cleanup
	addq	$32, %rsp
	popq	%rbx
	retq
.Lfunc_end65:
	.size	pdf_write_function, .Lfunc_end65-pdf_write_function
	.cfi_endproc

	.globl	pdf_write_font_bbox
	.align	16, 0x90
	.type	pdf_write_font_bbox,@function
pdf_write_font_bbox:                    # @pdf_write_font_bbox
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp467:
	.cfi_def_cfa_offset 16
	movq	5848(%rdi), %rdi
	movl	8(%rsi), %eax
	movl	(%rsi), %edx
	movl	4(%rsi), %ecx
	xorl	%r10d, %r10d
	cmpl	%eax, %edx
	movl	$1000, %r9d             # imm = 0x3E8
	movl	$0, %r8d
	cmovel	%r9d, %r8d
	addl	%eax, %r8d
	movl	12(%rsi), %eax
	cmpl	%eax, %ecx
	cmovnel	%r10d, %r9d
	addl	%eax, %r9d
	movl	$.L.str.2260, %esi
	callq	pprintd4
	xorl	%eax, %eax
	popq	%rdx
	retq
.Lfunc_end66:
	.size	pdf_write_font_bbox, .Lfunc_end66-pdf_write_font_bbox
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI67_0:
	.quad	4652007308841189376     # double 1000
	.text
	.globl	pdf_write_font_bbox_float
	.align	16, 0x90
	.type	pdf_write_font_bbox_float,@function
pdf_write_font_bbox_float:              # @pdf_write_font_bbox_float
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp468:
	.cfi_def_cfa_offset 16
	movq	5848(%rdi), %rdi
	movsd	16(%rsi), %xmm2         # xmm2 = mem[0],zero
	movsd	(%rsi), %xmm0           # xmm0 = mem[0],zero
	movsd	8(%rsi), %xmm1          # xmm1 = mem[0],zero
	movapd	%xmm0, %xmm3
	cmpeqsd	%xmm2, %xmm3
	movsd	.LCPI67_0(%rip), %xmm4  # xmm4 = mem[0],zero
	andpd	%xmm4, %xmm3
	addsd	%xmm2, %xmm3
	xorps	%xmm2, %xmm2
	cvtsd2ss	%xmm3, %xmm2
	movsd	24(%rsi), %xmm3         # xmm3 = mem[0],zero
	movapd	%xmm1, %xmm5
	cmpeqsd	%xmm3, %xmm5
	andpd	%xmm4, %xmm5
	addsd	%xmm3, %xmm5
	xorps	%xmm3, %xmm3
	cvtsd2ss	%xmm5, %xmm3
	cvtss2sd	%xmm2, %xmm2
	cvtss2sd	%xmm3, %xmm3
	movl	$.L.str.2261, %esi
	callq	pprintg4
	xorl	%eax, %eax
	popq	%rdx
	retq
.Lfunc_end67:
	.size	pdf_write_font_bbox_float, .Lfunc_end67-pdf_write_font_bbox_float
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI68_0:
	.quad	4634766966517661696     # double 72
.LCPI68_1:
	.quad	4608533498688228557     # double 1.3
	.text
	.align	16, 0x90
	.type	none_to_stream,@function
none_to_stream:                         # @none_to_stream
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp469:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp470:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp471:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp472:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp473:
	.cfi_def_cfa_offset 48
	subq	$32, %rsp
.Ltmp474:
	.cfi_def_cfa_offset 80
.Ltmp475:
	.cfi_offset %rbx, -48
.Ltmp476:
	.cfi_offset %r12, -40
.Ltmp477:
	.cfi_offset %r14, -32
.Ltmp478:
	.cfi_offset %r15, -24
.Ltmp479:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movl	$-100, %eax
	cmpq	$0, 26552(%rbx)
	jne	.LBB68_32
# BB#1:                                 # %if.end
	movl	9984(%rbx), %eax
	movl	%eax, 9988(%rbx)
	cmpl	$0, 9536(%rbx)
	je	.LBB68_4
# BB#2:                                 # %if.then.1
	movl	8892(%rbx), %r9d
	leaq	16(%rsp), %rcx
	movl	$14, %esi
	xorl	%edx, %edx
	movl	$1, %r8d
	movq	%rbx, %rdi
	callq	pdf_enter_substream
	testl	%eax, %eax
	js	.LBB68_32
# BB#3:                                 # %if.end.4
	movq	16(%rsp), %rax
	movq	64(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, 26552(%rbx)
	movq	$-1, %rax
	movd	%rax, %xmm0
	pslldq	$8, %xmm0               # xmm0 = zero,zero,zero,zero,zero,zero,zero,zero,xmm0[0,1,2,3,4,5,6,7]
	movdqu	%xmm0, 26568(%rbx)
	movq	5848(%rbx), %r14
	movq	%r14, 8(%rsp)
	jmp	.LBB68_28
.LBB68_4:                               # %if.else
	movabsq	$-9223372036854775808, %r12 # imm = 0x8000000000000000
	xorl	%esi, %esi
	movl	$20, %edx
	movq	%rbx, %rdi
	callq	pdf_open_obj
	movq	%rax, 26552(%rbx)
	movq	26504(%rbx), %r14
	leaq	1(%r14), %rax
	movq	%rax, 26504(%rbx)
	movq	5848(%rbx), %rbp
	movq	%rbp, %rdi
	callq	stell
	cmpq	18224(%rbx), %rbp
	jne	.LBB68_6
# BB#5:
	xorq	%r12, %rax
.LBB68_6:                               # %select.end
	movq	%rax, 16(%rsp)
	movq	14088(%rbx), %rcx
	leaq	16(%rsp), %rdi
	movl	$8, %esi
	movl	$1, %edx
	callq	fwrite
	movq	%r14, 26568(%rbx)
	movq	5848(%rbx), %r15
	movq	%r15, 8(%rsp)
	movl	$.L.str.2265, %esi
	movq	%r15, %rdi
	movq	%r14, %rdx
	callq	pprintld1
	cmpl	$2, 9984(%rbx)
	jne	.LBB68_11
# BB#7:                                 # %if.then.15
	cmpl	$0, 8852(%rbx)
	je	.LBB68_9
# BB#8:                                 # %if.then.17
	movl	$.L.str.2266, %esi
	jmp	.LBB68_10
.LBB68_9:                               # %if.else.19
	movl	$.L.str.2268, %esi
.LBB68_10:                              # %if.end.22
	movl	$.L.str.2267, %edx
	movq	%r15, %rdi
	callq	pprints1
.LBB68_11:                              # %if.end.22
	movq	8(%rsp), %r14
	movl	$.L.str.2269, %esi
	movq	%r14, %rdi
	callq	stream_puts
	movq	5848(%rbx), %rbp
	movq	%rbp, %rdi
	callq	stell
	cmpq	18224(%rbx), %rbp
	jne	.LBB68_13
# BB#12:
	xorq	%r12, %rax
.LBB68_13:                              # %select.end115
	movq	%rax, 26576(%rbx)
	cmpl	$0, 9648(%rbx)
	je	.LBB68_18
# BB#14:                                # %if.end.i
	movq	26552(%rbx), %rsi
	movq	1728(%rbx), %r14
	leaq	16(%rsp), %rdx
	movq	%rbx, %rdi
	callq	pdf_object_key
	movl	%eax, %ebp
	movq	s_arcfour_template(%rip), %rsi
	movl	$.L.str.2208, %edx
	movq	%r14, %rdi
	callq	*72(%r14)
	movq	%rax, %r15
	movl	$-25, %eax
	testq	%r15, %r15
	je	.LBB68_32
# BB#15:                                # %if.end.3.i
	leaq	16(%rsp), %rsi
	movq	%r15, %rdi
	movl	%ebp, %edx
	callq	s_arcfour_set_key
	testl	%eax, %eax
	js	.LBB68_32
# BB#16:                                # %if.end.8.i
	leaq	8(%rsp), %rdi
	movl	$s_arcfour_template, %esi
	movq	%r15, %rdx
	movq	%r14, %rcx
	callq	s_add_filter
	testq	%rax, %rax
	movl	$-25, %eax
	je	.LBB68_32
# BB#17:                                # %if.end.8.i.if.end.30_crit_edge
	movq	8(%rsp), %r14
.LBB68_18:                              # %if.end.30
	movq	%r14, 5848(%rbx)
	cmpl	$2, 9984(%rbx)
	jne	.LBB68_28
# BB#19:                                # %if.then.34
	cmpl	$0, 8852(%rbx)
	jne	.LBB68_24
# BB#20:                                # %if.then.37
	movq	1728(%rbx), %rdi
	movl	$.L.str.2270, %esi
	callq	s_alloc
	movq	%rax, %r14
	movq	1728(%rbx), %rdi
	movl	$512, %esi              # imm = 0x200
	movl	$.L.str.2271, %edx
	callq	*64(%rdi)
	movq	%rax, %r12
	movq	1728(%rbx), %rdi
	movq	s_A85E_template(%rip), %rsi
	movl	$.L.str.2272, %edx
	callq	*72(%rdi)
	movq	%rax, %r15
	testq	%r12, %r12
	movl	$-25, %eax
	je	.LBB68_32
# BB#21:                                # %if.then.37
	testq	%r14, %r14
	je	.LBB68_32
# BB#22:                                # %if.then.37
	testq	%r15, %r15
	je	.LBB68_32
# BB#23:                                # %cleanup.60.thread
	movl	$512, %edx              # imm = 0x200
	movl	$s_filter_write_procs, %ecx
	movl	$2, %r8d
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	s_std_init
	movq	1728(%rbx), %rax
	movq	%rax, 8(%r15)
	movq	$s_A85E_template, (%r15)
	movq	%r15, 256(%r14)
	movq	s_A85E_template+16(%rip), %rax
	movq	%rax, 224(%r14)
	movq	8(%rsp), %rax
	movq	%rax, 240(%r14)
	movq	%r15, %rdi
	callq	*s_A85E_template+8(%rip)
	movq	%r14, 8(%rsp)
	movq	%r14, 5848(%rbx)
.LBB68_24:                              # %if.end.66
	movq	1728(%rbx), %rdi
	movl	$.L.str.2273, %esi
	callq	s_alloc
	movq	%rax, %r14
	movq	1728(%rbx), %rdi
	movl	$512, %esi              # imm = 0x200
	movl	$.L.str.2274, %edx
	callq	*64(%rdi)
	movq	%rax, %r12
	movq	1728(%rbx), %rdi
	movq	s_zlibE_template(%rip), %rsi
	movl	$.L.str.2275, %edx
	callq	*72(%rdi)
	movq	%rax, %r15
	testq	%r12, %r12
	movl	$-25, %eax
	je	.LBB68_32
# BB#25:                                # %if.end.66
	testq	%r14, %r14
	je	.LBB68_32
# BB#26:                                # %if.end.66
	testq	%r15, %r15
	je	.LBB68_32
# BB#27:                                # %cleanup.98
	movl	$512, %edx              # imm = 0x200
	movl	$s_filter_write_procs, %ecx
	movl	$2, %r8d
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	s_std_init
	movq	1728(%rbx), %rax
	movq	%rax, 8(%r15)
	movq	$s_zlibE_template, (%r15)
	movq	%r15, 256(%r14)
	movq	s_zlibE_template+16(%rip), %rax
	movq	%rax, 224(%r14)
	movq	8(%rsp), %rax
	movq	%rax, 240(%r14)
	movq	%r15, %rdi
	callq	*s_zlibE_template+40(%rip)
	movq	%r15, %rdi
	callq	*s_zlibE_template+8(%rip)
	movq	%r14, 8(%rsp)
	movq	%r14, 5848(%rbx)
.LBB68_28:                              # %if.end.105
	movss	884(%rbx), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	888(%rbx), %xmm2        # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm3
	movsd	.LCPI68_0(%rip), %xmm1  # xmm1 = mem[0],zero
	movapd	%xmm1, %xmm0
	divsd	%xmm3, %xmm0
	cvtss2sd	%xmm2, %xmm2
	divsd	%xmm2, %xmm1
	movl	$.L.str.2276, %esi
	movq	%r14, %rdi
	callq	pprintg2
	movsd	9368(%rbx), %xmm0       # xmm0 = mem[0],zero
	ucomisd	.LCPI68_1(%rip), %xmm0
	jb	.LBB68_31
# BB#29:                                # %if.then.113
	movslq	8896(%rbx), %rax
	testq	%rax, %rax
	je	.LBB68_31
# BB#30:                                # %if.then.117
	movq	8(%rsp), %rdi
	movq	none_to_stream.ri_names(,%rax,8), %rdx
	movl	$.L.str.2282, %esi
	callq	pprints1
.LBB68_31:                              # %if.end.123
	movl	$0, 30464(%rbx)
	movl	$1, %eax
.LBB68_32:                              # %cleanup.124
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end68:
	.size	none_to_stream, .Lfunc_end68-none_to_stream
	.cfi_endproc

	.align	16, 0x90
	.type	stream_to_none,@function
stream_to_none:                         # @stream_to_none
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp480:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp481:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp482:
	.cfi_def_cfa_offset 32
.Ltmp483:
	.cfi_offset %rbx, -32
.Ltmp484:
	.cfi_offset %r14, -24
.Ltmp485:
	.cfi_offset %r15, -16
	movq	%rdi, %rbx
	cmpl	$0, 9536(%rbx)
	je	.LBB69_2
# BB#1:                                 # %if.then
	movq	%rbx, %rdi
	callq	pdf_exit_substream
	testl	%eax, %eax
	jns	.LBB69_20
	jmp	.LBB69_21
.LBB69_2:                               # %if.else
	movq	5848(%rbx), %r14
	cmpl	$0, 28860(%rbx)
	je	.LBB69_4
# BB#3:                                 # %if.then.4
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	pdf_restore_viewer_state
	testl	%eax, %eax
	js	.LBB69_21
.LBB69_4:                               # %if.end.9
	cmpl	$2, 9988(%rbx)
	jne	.LBB69_8
# BB#5:                                 # %if.then.11
	movq	240(%r14), %r15
	cmpl	$0, 8852(%rbx)
	jne	.LBB69_7
# BB#6:                                 # %if.then.14
	movq	%r14, %rdi
	callq	sclose
	movq	1728(%rbx), %rdi
	movq	136(%r14), %rsi
	movl	$.L.str.2283, %edx
	callq	*24(%rdi)
	movq	1728(%rbx), %rdi
	movl	$.L.str.2284, %edx
	movq	%r14, %rsi
	callq	*24(%rdi)
	movq	%r15, 5848(%rbx)
	movq	%r15, %r14
	movq	240(%r15), %r15
.LBB69_7:                               # %if.end.23
	movq	%r14, %rdi
	callq	sclose
	movq	1728(%rbx), %rdi
	movq	136(%r14), %rsi
	movl	$.L.str.2285, %edx
	callq	*24(%rdi)
	movq	1728(%rbx), %rdi
	movl	$.L.str.2286, %edx
	movq	%r14, %rsi
	callq	*24(%rdi)
	movq	%r15, 5848(%rbx)
.LBB69_8:                               # %if.end.35
	cmpl	$0, 9648(%rbx)
	movq	5848(%rbx), %r14
	je	.LBB69_10
# BB#9:                                 # %if.then.i
	movq	240(%r14), %r15
	movq	%r14, %rdi
	callq	sclose
	movq	1728(%rbx), %rdi
	movq	136(%r14), %rsi
	movl	$.L.str.2209, %edx
	callq	*24(%rdi)
	movq	1728(%rbx), %rdi
	movl	$.L.str.2210, %edx
	movq	%r14, %rsi
	callq	*24(%rdi)
	movq	%r15, 5848(%rbx)
	movq	%r15, %r14
.LBB69_10:                              # %pdf_end_encrypt.exit
	movq	%r14, %rdi
	callq	stell
	movq	%rax, %r15
	cmpq	18224(%rbx), %r14
	jne	.LBB69_12
# BB#11:
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	xorq	%rax, %r15
.LBB69_12:                              # %select.end
	subq	26576(%rbx), %r15
	cmpl	$0, 9564(%rbx)
	je	.LBB69_14
# BB#13:                                # %if.then.39
	movl	$.L.str.2166, %esi
	movq	%r14, %rdi
	callq	stream_puts
.LBB69_14:                              # %if.end.41
	movl	$.L.str.2287, %esi
	movq	%r14, %rdi
	callq	stream_puts
	movq	5848(%rbx), %rdi
	movl	$.L.str.2206, %esi
	callq	stream_puts
	cmpl	$0, 9524(%rbx)
	je	.LBB69_17
# BB#15:                                # %land.lhs.true.i
	cmpl	$0, 9548(%rbx)
	je	.LBB69_17
# BB#16:                                # %sw.default.i
	movq	5848(%rbx), %rdi
	movl	$.L.str.2207, %esi
	callq	stream_puts
.LBB69_17:                              # %pdf_end_obj.exit
	movq	26568(%rbx), %rsi
	movl	$19, %edx
	movq	%rbx, %rdi
	callq	pdf_open_obj
	movl	$.L.str.2288, %esi
	movq	%r14, %rdi
	movq	%r15, %rdx
	callq	pprintld1
	movq	5848(%rbx), %rdi
	movl	$.L.str.2206, %esi
	callq	stream_puts
	cmpl	$0, 9524(%rbx)
	je	.LBB69_20
# BB#18:                                # %land.lhs.true.i.57
	cmpl	$0, 9548(%rbx)
	je	.LBB69_20
# BB#19:                                # %sw.default.i.59
	movq	5848(%rbx), %rdi
	movl	$.L.str.2207, %esi
	callq	stream_puts
.LBB69_20:                              # %if.end.47
	xorl	%eax, %eax
.LBB69_21:                              # %cleanup.48
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end69:
	.size	stream_to_none, .Lfunc_end69-stream_to_none
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI70_0:
	.quad	4634766966517661696     # double 72
	.text
	.align	16, 0x90
	.type	stream_to_text,@function
stream_to_text:                         # @stream_to_text
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp486:
	.cfi_def_cfa_offset 16
.Ltmp487:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	5848(%rbx), %rsi
	callq	pdf_save_viewer_state
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	js	.LBB70_2
# BB#1:                                 # %if.end
	movq	5848(%rbx), %rdi
	movss	884(%rbx), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	888(%rbx), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI70_0(%rip), %xmm2  # xmm2 = mem[0],zero
	divsd	%xmm2, %xmm0
	cvtss2sd	%xmm1, %xmm1
	divsd	%xmm2, %xmm1
	movl	$.L.str.2289, %esi
	callq	pprintg2
	orb	$8, 26584(%rbx)
	movq	%rbx, %rdi
	callq	pdf_from_stream_to_text
	movl	%eax, %ecx
	testl	%ecx, %ecx
	movl	$2, %eax
	cmovsl	%ecx, %eax
.LBB70_2:                               # %cleanup
	popq	%rbx
	retq
.Lfunc_end70:
	.size	stream_to_text, .Lfunc_end70-stream_to_text
	.cfi_endproc

	.align	16, 0x90
	.type	text_to_stream,@function
text_to_stream:                         # @text_to_stream
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp488:
	.cfi_def_cfa_offset 16
.Ltmp489:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	5848(%rbx), %rdi
	movl	$.L.str.2290, %esi
	callq	stream_puts
	movq	5848(%rbx), %rsi
	movq	%rbx, %rdi
	callq	pdf_restore_viewer_state
	testl	%eax, %eax
	js	.LBB71_2
# BB#1:                                 # %if.end
	movq	%rbx, %rdi
	callq	pdf_reset_text
	movl	$1, %eax
.LBB71_2:                               # %cleanup
	popq	%rbx
	retq
.Lfunc_end71:
	.size	text_to_stream, .Lfunc_end71-text_to_stream
	.cfi_endproc

	.align	16, 0x90
	.type	string_to_text,@function
string_to_text:                         # @string_to_text
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp490:
	.cfi_def_cfa_offset 16
	callq	pdf_from_string_to_text
	testl	%eax, %eax
	movl	$2, %ecx
	cmovnsl	%ecx, %eax
	popq	%rdx
	retq
.Lfunc_end72:
	.size	string_to_text, .Lfunc_end72-string_to_text
	.cfi_endproc

	.align	16, 0x90
	.type	pdf_encrypt_encoded_string,@function
pdf_encrypt_encoded_string:             # @pdf_encrypt_encoded_string
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp491:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp492:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp493:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp494:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp495:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp496:
	.cfi_def_cfa_offset 56
	subq	$1912, %rsp             # imm = 0x778
.Ltmp497:
	.cfi_def_cfa_offset 1968
.Ltmp498:
	.cfi_offset %rbx, -56
.Ltmp499:
	.cfi_offset %r12, -48
.Ltmp500:
	.cfi_offset %r13, -40
.Ltmp501:
	.cfi_offset %r14, -32
.Ltmp502:
	.cfi_offset %r15, -24
.Ltmp503:
	.cfi_offset %rbp, -16
	movl	%edx, %ebx
	movq	%rsi, %r15
	movq	%rdi, %r14
	leaq	1888(%rsp), %rbp
	movq	%rcx, %rsi
	movq	%rbp, %rdx
	callq	pdf_object_key
	leaq	8(%rsp), %rdi
	movq	%rbp, %rsi
	movl	%eax, %edx
	callq	s_arcfour_set_key
	testl	%eax, %eax
	js	.LBB73_1
# BB#2:                                 # %if.end
	leaq	1536(%rsp), %r12
	xorl	%esi, %esi
	movq	%r12, %rdi
	callq	s_init
	incq	%r15
	movq	%r12, %rdi
	movq	%r15, %rsi
	movl	%ebx, %edx
	callq	sread_string
	leaq	1184(%rsp), %r15
	xorl	%esi, %esi
	movq	%r15, %rdi
	callq	s_init
	movl	$0, 1476(%rsp)
	leaq	712(%rsp), %rbp
	movl	$s_PSSD_template, %esi
	xorl	%edx, %edx
	movq	%rbp, %rdi
	callq	s_init_state
	leaq	496(%rsp), %rbx
	movl	$100, %ecx
	movq	%r15, %rdi
	movq	%rbp, %rsi
	movq	%rbx, %rdx
	movq	%r12, %r8
	callq	s_init_filter
	leaq	832(%rsp), %r12
	xorl	%esi, %esi
	movq	%r12, %rdi
	callq	s_init
	leaq	600(%rsp), %rbp
	movl	$s_PSSE_template, %esi
	xorl	%edx, %edx
	movq	%rbp, %rdi
	callq	s_init_state
	movq	5848(%r14), %r8
	leaq	384(%rsp), %rdx
	movl	$100, %ecx
	movq	%r12, %rdi
	movq	%rbp, %rsi
	callq	s_init_filter
	movq	5848(%r14), %rdi
	movl	$40, %esi
	callq	spputc
	leaq	1888(%rsp), %r14
	leaq	8(%rsp), %r13
	.align	16, 0x90
.LBB73_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	$100, %edx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	%r14, %rcx
	callq	sgets
	movl	%eax, %ebp
	movl	1888(%rsp), %edx
	testl	%edx, %edx
	je	.LBB73_5
# BB#4:                                 # %if.then.11
                                        #   in Loop: Header=BB73_3 Depth=1
	movq	%r13, %rdi
	movq	%rbx, %rsi
	callq	s_arcfour_process_buffer
	movl	1888(%rsp), %edx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	stream_write
.LBB73_5:                               # %if.end.16
                                        #   in Loop: Header=BB73_3 Depth=1
	cmpl	$-1, %ebp
	je	.LBB73_8
# BB#6:                                 # %if.end.19
                                        #   in Loop: Header=BB73_3 Depth=1
	testl	%ebp, %ebp
	js	.LBB73_8
# BB#7:                                 # %if.end.19
                                        #   in Loop: Header=BB73_3 Depth=1
	cmpl	$100, 1888(%rsp)
	jae	.LBB73_3
.LBB73_8:                               # %cleanup
	leaq	832(%rsp), %rdi
	callq	sclose
	leaq	1536(%rsp), %rdi
	callq	stell
	movq	%rax, %rbx
	incl	%ebx
	jmp	.LBB73_9
.LBB73_1:                               # %if.then
	movq	5848(%r14), %rdi
	movq	%r15, %rsi
	movl	%ebx, %edx
	callq	stream_write
.LBB73_9:                               # %cleanup.29
	movl	%ebx, %eax
	addq	$1912, %rsp             # imm = 0x778
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end73:
	.size	pdf_encrypt_encoded_string, .Lfunc_end73-pdf_encrypt_encoded_string
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"currentdict/DSC_OPDFREAD known{\n"
	.size	.L.str, 33

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"currentdict/DSC_OPDFREAD get\n"
	.size	.L.str.1, 30

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"}{\n"
	.size	.L.str.2, 4

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"false\n"
	.size	.L.str.3, 7

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"}ifelse\n"
	.size	.L.str.4, 9

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"10 dict begin\n"
	.size	.L.str.5, 15

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"/DSC_OPDFREAD exch def\n"
	.size	.L.str.6, 24

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"/this currentdict def\n"
	.size	.L.str.7, 23

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"/y 720 def\n"
	.size	.L.str.8, 12

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"/ebuf 200 string def\n"
	.size	.L.str.9, 22

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"/prnt{\n"
	.size	.L.str.10, 8

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"36//this/y get moveto//ebuf cvs show\n"
	.size	.L.str.11, 38

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"//this/y 2 copy get 12 sub put\n"
	.size	.L.str.12, 32

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"}bind def\n"
	.size	.L.str.13, 11

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"/newline{\n"
	.size	.L.str.14, 11

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"36//this/y get moveto\n"
	.size	.L.str.15, 23

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"errordict/handleerror\n"
	.size	.L.str.16, 23

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"{systemdict begin\n"
	.size	.L.str.17, 19

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"$error begin\n"
	.size	.L.str.18, 14

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"newerror\n"
	.size	.L.str.19, 10

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"{(%%[ Error handled by opdfread.ps : )print errorname//ebuf cvs print(; OffendingCommand: )\n"
	.size	.L.str.20, 93

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"print/command load//ebuf cvs print( ]%%)= flush\n"
	.size	.L.str.21, 49

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"/newerror false store vmstatus pop pop 0 ne\n"
	.size	.L.str.22, 45

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"{grestoreall\n"
	.size	.L.str.23, 14

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"}if\n"
	.size	.L.str.24, 5

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"errorname(VMerror)ne\n"
	.size	.L.str.25, 22

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"{showpage\n"
	.size	.L.str.26, 11

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"initgraphics\n"
	.size	.L.str.27, 14

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"0 720 moveto\n"
	.size	.L.str.28, 14

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"errorname(VMerror)eq\n"
	.size	.L.str.29, 22

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"{//this/ehsave known\n"
	.size	.L.str.30, 22

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"{clear//this/ehsave get restore 2 vmreclaim\n"
	.size	.L.str.31, 45

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"vmstatus exch pop exch pop\n"
	.size	.L.str.32, 28

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"}\n"
	.size	.L.str.33, 3

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"/Courier 12 selectfont\n"
	.size	.L.str.34, 24

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"{\n"
	.size	.L.str.35, 3

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"(ERROR: )//prnt exec errorname//prnt exec\n"
	.size	.L.str.36, 43

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"(OFFENDING COMMAND: )//prnt exec\n"
	.size	.L.str.37, 34

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"/command load//prnt exec\n"
	.size	.L.str.38, 26

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"$error/ostack known{\n"
	.size	.L.str.39, 22

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"(%%[STACK:)=\n"
	.size	.L.str.40, 14

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"(STACK:)//prnt exec\n"
	.size	.L.str.41, 21

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"$error/ostack get aload length{\n"
	.size	.L.str.42, 33

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"//newline exec\n"
	.size	.L.str.43, 16

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"dup mark eq{\n"
	.size	.L.str.44, 14

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"(-mark-)dup = show\n"
	.size	.L.str.45, 20

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"dup type/nametype eq{\n"
	.size	.L.str.46, 23

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"dup xcheck not{\n"
	.size	.L.str.47, 17

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"(/)show\n"
	.size	.L.str.48, 9

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"(/)print\n"
	.size	.L.str.49, 10

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"dup =//ebuf cvs show\n"
	.size	.L.str.50, 22

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"}repeat\n"
	.size	.L.str.51, 9

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"(%%]%)=\n"
	.size	.L.str.52, 9

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"//systemdict/showpage get exec\n"
	.size	.L.str.53, 32

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"quit\n"
	.size	.L.str.54, 6

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"end\n"
	.size	.L.str.55, 5

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"}bind readonly put\n"
	.size	.L.str.56, 20

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"50 dict begin\n"
	.size	.L.str.57, 15

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"/DefaultSwitch\n"
	.size	.L.str.58, 16

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"dup where{\n"
	.size	.L.str.59, 12

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"pop pop\n"
	.size	.L.str.60, 9

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"false def\n"
	.size	.L.str.61, 11

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"/=string 256 string def\n"
	.size	.L.str.62, 25

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"/=only{\n"
	.size	.L.str.63, 9

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"//=string cvs print\n"
	.size	.L.str.64, 21

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"/HexDigits(0123456789ABCDEF)readonly def\n"
	.size	.L.str.65, 42

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"/PrintHex\n"
	.size	.L.str.66, 11

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"{8{\n"
	.size	.L.str.67, 5

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"dup -28 bitshift//HexDigits exch 1 getinterval//=only exec\n"
	.size	.L.str.68, 60

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"4 bitshift\n"
	.size	.L.str.69, 12

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"pop\n"
	.size	.L.str.70, 5

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"/PDFR_DEBUG DefaultSwitch\n"
	.size	.L.str.71, 27

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"/PDFR_DUMP DefaultSwitch\n"
	.size	.L.str.72, 26

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"/PDFR_STREAM DefaultSwitch\n"
	.size	.L.str.73, 28

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"/TTFDEBUG DefaultSwitch\n"
	.size	.L.str.74, 25

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"/RotatePages DefaultSwitch\n"
	.size	.L.str.75, 28

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"/FitPages DefaultSwitch\n"
	.size	.L.str.76, 25

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"/CenterPages DefaultSwitch\n"
	.size	.L.str.77, 28

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"/SetPageSize DefaultSwitch\n"
	.size	.L.str.78, 28

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"/error\n"
	.size	.L.str.79, 8

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"counttomark 1 sub -1 0{\n"
	.size	.L.str.80, 25

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"index dup type/arraytype eq{==}{=only}ifelse\n"
	.size	.L.str.81, 46

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"}for\n"
	.size	.L.str.82, 6

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"()=\n"
	.size	.L.str.83, 5

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"cleartomark\n"
	.size	.L.str.84, 13

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"....Undefined\n"
	.size	.L.str.85, 15

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"//SetPageSize{\n"
	.size	.L.str.86, 16

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"//RotatePages//FitPages or//CenterPages or{\n"
	.size	.L.str.87, 45

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"mark(/RotatePages, /FitPages and CenterPages are not allowed with /SetPageSize)//error exec\n"
	.size	.L.str.88, 93

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"//FitPages//CenterPages and{\n"
	.size	.L.str.89, 30

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"mark(CenterPages is not allowed with /FitPages)//error exec\n"
	.size	.L.str.90, 61

	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	"ifelse\n"
	.size	.L.str.91, 8

	.type	.L.str.92,@object       # @.str.92
.L.str.92:
	.asciz	"/knownget\n"
	.size	.L.str.92, 11

	.type	.L.str.93,@object       # @.str.93
.L.str.93:
	.asciz	"2 copy known{\n"
	.size	.L.str.93, 15

	.type	.L.str.94,@object       # @.str.94
.L.str.94:
	.asciz	"get true\n"
	.size	.L.str.94, 10

	.type	.L.str.95,@object       # @.str.95
.L.str.95:
	.asciz	"pop pop false\n"
	.size	.L.str.95, 15

	.type	.L.str.96,@object       # @.str.96
.L.str.96:
	.asciz	"/IsUpper\n"
	.size	.L.str.96, 10

	.type	.L.str.97,@object       # @.str.97
.L.str.97:
	.asciz	"{dup(A)0 get ge exch(Z)0 get le and\n"
	.size	.L.str.97, 37

	.type	.L.str.98,@object       # @.str.98
.L.str.98:
	.asciz	"/cpa2g{\n"
	.size	.L.str.98, 9

	.type	.L.str.99,@object       # @.str.99
.L.str.99:
	.asciz	"dup length array\n"
	.size	.L.str.99, 18

	.type	.L.str.100,@object      # @.str.100
.L.str.100:
	.asciz	"0 1 2 index length 1 sub{\n"
	.size	.L.str.100, 27

	.type	.L.str.101,@object      # @.str.101
.L.str.101:
	.asciz	"dup 3 index exch get cp2g\n"
	.size	.L.str.101, 27

	.type	.L.str.102,@object      # @.str.102
.L.str.102:
	.asciz	"3 copy put pop pop\n"
	.size	.L.str.102, 20

	.type	.L.str.103,@object      # @.str.103
.L.str.103:
	.asciz	"exch pop\n"
	.size	.L.str.103, 10

	.type	.L.str.104,@object      # @.str.104
.L.str.104:
	.asciz	"/cpd2g{\n"
	.size	.L.str.104, 9

	.type	.L.str.105,@object      # @.str.105
.L.str.105:
	.asciz	"dup length dict exch{\n"
	.size	.L.str.105, 23

	.type	.L.str.106,@object      # @.str.106
.L.str.106:
	.asciz	"cp2g 2 index 3 1 roll put\n"
	.size	.L.str.106, 27

	.type	.L.str.107,@object      # @.str.107
.L.str.107:
	.asciz	"}forall\n"
	.size	.L.str.107, 9

	.type	.L.str.108,@object      # @.str.108
.L.str.108:
	.asciz	"/cps2g{\n"
	.size	.L.str.108, 9

	.type	.L.str.109,@object      # @.str.109
.L.str.109:
	.asciz	"dup length string copy\n"
	.size	.L.str.109, 24

	.type	.L.str.110,@object      # @.str.110
.L.str.110:
	.asciz	"/cp2gprocs\n"
	.size	.L.str.110, 12

	.type	.L.str.111,@object      # @.str.111
.L.str.111:
	.asciz	"<</arraytype//cpa2g/dicttype//cpd2g/packedarraytype//cpa2g/stringtype//cps2g >>\n"
	.size	.L.str.111, 81

	.type	.L.str.112,@object      # @.str.112
.L.str.112:
	.asciz	"def\n"
	.size	.L.str.112, 5

	.type	.L.str.113,@object      # @.str.113
.L.str.113:
	.asciz	"/cp2g{\n"
	.size	.L.str.113, 8

	.type	.L.str.114,@object      # @.str.114
.L.str.114:
	.asciz	"dup gcheck not{\n"
	.size	.L.str.114, 17

	.type	.L.str.115,@object      # @.str.115
.L.str.115:
	.asciz	"dup//cp2gprocs 1 index type\n"
	.size	.L.str.115, 29

	.type	.L.str.116,@object      # @.str.116
.L.str.116:
	.asciz	"get currentglobal 3 1 roll true setglobal exec exch setglobal\n"
	.size	.L.str.116, 63

	.type	.L.str.117,@object      # @.str.117
.L.str.117:
	.asciz	"1 index wcheck not{readonly}if\n"
	.size	.L.str.117, 32

	.type	.L.str.118,@object      # @.str.118
.L.str.118:
	.asciz	"1 index xcheck{cvx}if\n"
	.size	.L.str.118, 23

	.type	.L.str.119,@object      # @.str.119
.L.str.119:
	.asciz	"/BlockBuffer 65535 string def\n"
	.size	.L.str.119, 31

	.type	.L.str.120,@object      # @.str.120
.L.str.120:
	.asciz	"/PDFReader currentdict def\n"
	.size	.L.str.120, 28

	.type	.L.str.121,@object      # @.str.121
.L.str.121:
	.asciz	"/ObjectRegistryMaxLength 50000 def\n"
	.size	.L.str.121, 36

	.type	.L.str.122,@object      # @.str.122
.L.str.122:
	.asciz	"/ObjectRegistry 10 dict def\n"
	.size	.L.str.122, 29

	.type	.L.str.123,@object      # @.str.123
.L.str.123:
	.asciz	"ObjectRegistry\n"
	.size	.L.str.123, 16

	.type	.L.str.124,@object      # @.str.124
.L.str.124:
	.asciz	"begin 0 ObjectRegistryMaxLength dict def end\n"
	.size	.L.str.124, 46

	.type	.L.str.125,@object      # @.str.125
.L.str.125:
	.asciz	"/CurrentObject null def\n"
	.size	.L.str.125, 25

	.type	.L.str.126,@object      # @.str.126
.L.str.126:
	.asciz	"/DoneDocumentStructure false def\n"
	.size	.L.str.126, 34

	.type	.L.str.127,@object      # @.str.127
.L.str.127:
	.asciz	"/GraphicState 20 dict begin\n"
	.size	.L.str.127, 29

	.type	.L.str.128,@object      # @.str.128
.L.str.128:
	.asciz	"/InitialTextMatrix matrix def\n"
	.size	.L.str.128, 31

	.type	.L.str.129,@object      # @.str.129
.L.str.129:
	.asciz	"/InitialMatrix matrix currentmatrix def\n"
	.size	.L.str.129, 41

	.type	.L.str.130,@object      # @.str.130
.L.str.130:
	.asciz	"currentdict end def\n"
	.size	.L.str.130, 21

	.type	.L.str.131,@object      # @.str.131
.L.str.131:
	.asciz	"/TempMatrix matrix def\n"
	.size	.L.str.131, 24

	.type	.L.str.132,@object      # @.str.132
.L.str.132:
	.asciz	"/GraphicStateStack 20 array def\n"
	.size	.L.str.132, 33

	.type	.L.str.133,@object      # @.str.133
.L.str.133:
	.asciz	"/GraphicStateStackPointer 0 def\n"
	.size	.L.str.133, 33

	.type	.L.str.134,@object      # @.str.134
.L.str.134:
	.asciz	"/InitialTextMatrixStack 20 array def\n"
	.size	.L.str.134, 38

	.type	.L.str.135,@object      # @.str.135
.L.str.135:
	.asciz	"/InitialTextMatrixStackPointer 0 def\n"
	.size	.L.str.135, 38

	.type	.L.str.136,@object      # @.str.136
.L.str.136:
	.asciz	"/PDFColorSpaces 50 dict def\n"
	.size	.L.str.136, 29

	.type	.L.str.137,@object      # @.str.137
.L.str.137:
	.asciz	"/InstalledFonts 50 dict def\n"
	.size	.L.str.137, 29

	.type	.L.str.138,@object      # @.str.138
.L.str.138:
	.asciz	"/MacRomanEncodingInverse null def\n"
	.size	.L.str.138, 35

	.type	.L.str.139,@object      # @.str.139
.L.str.139:
	.asciz	"currentglobal false setglobal\n"
	.size	.L.str.139, 31

	.type	.L.str.140,@object      # @.str.140
.L.str.140:
	.asciz	"userdict/PDFR_InitialGS gstate put\n"
	.size	.L.str.140, 36

	.type	.L.str.141,@object      # @.str.141
.L.str.141:
	.asciz	"userdict/PDFR_Patterns 50 dict put\n"
	.size	.L.str.141, 36

	.type	.L.str.142,@object      # @.str.142
.L.str.142:
	.asciz	"userdict/FuncDataReader 10 dict put\n"
	.size	.L.str.142, 37

	.type	.L.str.143,@object      # @.str.143
.L.str.143:
	.asciz	"setglobal\n"
	.size	.L.str.143, 11

	.type	.L.str.144,@object      # @.str.144
.L.str.144:
	.asciz	"/InitialExtGState 20 dict begin\n"
	.size	.L.str.144, 33

	.type	.L.str.145,@object      # @.str.145
.L.str.145:
	.asciz	"/BG2 currentblackgeneration cp2g def\n"
	.size	.L.str.145, 38

	.type	.L.str.146,@object      # @.str.146
.L.str.146:
	.asciz	"/UCR2 currentundercolorremoval cp2g def\n"
	.size	.L.str.146, 41

	.type	.L.str.147,@object      # @.str.147
.L.str.147:
	.asciz	"/TR2 currentglobal false setglobal[currentcolortransfer]exch setglobal cp2g def\n"
	.size	.L.str.147, 81

	.type	.L.str.148,@object      # @.str.148
.L.str.148:
	.asciz	"/HT currenthalftone cp2g def\n"
	.size	.L.str.148, 30

	.type	.L.str.149,@object      # @.str.149
.L.str.149:
	.asciz	"currentdict end readonly def\n"
	.size	.L.str.149, 30

	.type	.L.str.150,@object      # @.str.150
.L.str.150:
	.asciz	"/InitialGraphicState 20 dict begin\n"
	.size	.L.str.150, 36

	.type	.L.str.151,@object      # @.str.151
.L.str.151:
	.asciz	"/FontSize 0 def\n"
	.size	.L.str.151, 17

	.type	.L.str.152,@object      # @.str.152
.L.str.152:
	.asciz	"/CharacterSpacing 0 def\n"
	.size	.L.str.152, 25

	.type	.L.str.153,@object      # @.str.153
.L.str.153:
	.asciz	"/TextLeading 0 def\n"
	.size	.L.str.153, 20

	.type	.L.str.154,@object      # @.str.154
.L.str.154:
	.asciz	"/TextRenderingMode 0 def\n"
	.size	.L.str.154, 26

	.type	.L.str.155,@object      # @.str.155
.L.str.155:
	.asciz	"/WordSpacing 0 def\n"
	.size	.L.str.155, 20

	.type	.L.str.156,@object      # @.str.156
.L.str.156:
	.asciz	"/SimpleColorSpaceNames 15 dict begin\n"
	.size	.L.str.156, 38

	.type	.L.str.157,@object      # @.str.157
.L.str.157:
	.asciz	"/DeviceGray true def\n"
	.size	.L.str.157, 22

	.type	.L.str.158,@object      # @.str.158
.L.str.158:
	.asciz	"/DeviceRGB true def\n"
	.size	.L.str.158, 21

	.type	.L.str.159,@object      # @.str.159
.L.str.159:
	.asciz	"/DeviceCMYK true def\n"
	.size	.L.str.159, 22

	.type	.L.str.160,@object      # @.str.160
.L.str.160:
	.asciz	"/1_24_bitshift_1_sub 1 24 bitshift 1 sub def\n"
	.size	.L.str.160, 46

	.type	.L.str.161,@object      # @.str.161
.L.str.161:
	.asciz	"/ReadFontProcs 10 dict def\n"
	.size	.L.str.161, 28

	.type	.L.str.162,@object      # @.str.162
.L.str.162:
	.asciz	"/GetObject{\n"
	.size	.L.str.162, 13

	.type	.L.str.163,@object      # @.str.163
.L.str.163:
	.asciz	"dup ObjectRegistryMaxLength idiv\n"
	.size	.L.str.163, 34

	.type	.L.str.164,@object      # @.str.164
.L.str.164:
	.asciz	"//PDFReader /ObjectRegistry get exch knownget\n"
	.size	.L.str.164, 47

	.type	.L.str.165,@object      # @.str.165
.L.str.165:
	.asciz	"{exch knownget}{pop false}ifelse\n"
	.size	.L.str.165, 34

	.type	.L.str.166,@object      # @.str.166
.L.str.166:
	.asciz	"/PutObject\n"
	.size	.L.str.166, 12

	.type	.L.str.167,@object      # @.str.167
.L.str.167:
	.asciz	"{1 index ObjectRegistryMaxLength idiv\n"
	.size	.L.str.167, 39

	.type	.L.str.168,@object      # @.str.168
.L.str.168:
	.asciz	"//PDFReader /ObjectRegistry get 1 index knownget{\n"
	.size	.L.str.168, 51

	.type	.L.str.169,@object      # @.str.169
.L.str.169:
	.asciz	"exch pop 3 1 roll put}{\n"
	.size	.L.str.169, 25

	.type	.L.str.170,@object      # @.str.170
.L.str.170:
	.asciz	"//PDFReader /ObjectRegistry get dup begin\n"
	.size	.L.str.170, 43

	.type	.L.str.171,@object      # @.str.171
.L.str.171:
	.asciz	"1 index ObjectRegistryMaxLength dict def\n"
	.size	.L.str.171, 42

	.type	.L.str.172,@object      # @.str.172
.L.str.172:
	.asciz	"end exch get 3 1 roll put\n"
	.size	.L.str.172, 27

	.type	.L.str.173,@object      # @.str.173
.L.str.173:
	.asciz	"/Register\n"
	.size	.L.str.173, 11

	.type	.L.str.174,@object      # @.str.174
.L.str.174:
	.asciz	"{1 index GetObject{\n"
	.size	.L.str.174, 21

	.type	.L.str.175,@object      # @.str.175
.L.str.175:
	.asciz	"dup xcheck{\n"
	.size	.L.str.175, 13

	.type	.L.str.176,@object      # @.str.176
.L.str.176:
	.asciz	"4 3 roll pop\n"
	.size	.L.str.176, 14

	.type	.L.str.177,@object      # @.str.177
.L.str.177:
	.asciz	"//PDFR_DEBUG{\n"
	.size	.L.str.177, 15

	.type	.L.str.178,@object      # @.str.178
.L.str.178:
	.asciz	"(Have a daemon for ) print 2 index ==\n"
	.size	.L.str.178, 39

	.type	.L.str.179,@object      # @.str.179
.L.str.179:
	.asciz	"exec\n"
	.size	.L.str.179, 6

	.type	.L.str.180,@object      # @.str.180
.L.str.180:
	.asciz	"dup null ne{\n"
	.size	.L.str.180, 14

	.type	.L.str.181,@object      # @.str.181
.L.str.181:
	.asciz	"mark (The object ) 4 index (is already defined : ) 4 index //error exec\n"
	.size	.L.str.181, 73

	.type	.L.str.182,@object      # @.str.182
.L.str.182:
	.asciz	"3 2 roll\n"
	.size	.L.str.182, 10

	.type	.L.str.183,@object      # @.str.183
.L.str.183:
	.asciz	"PutObject\n"
	.size	.L.str.183, 11

	.type	.L.str.184,@object      # @.str.184
.L.str.184:
	.asciz	"} bind def\n"
	.size	.L.str.184, 12

	.type	.L.str.185,@object      # @.str.185
.L.str.185:
	.asciz	"/IsRegistered{\n"
	.size	.L.str.185, 16

	.type	.L.str.186,@object      # @.str.186
.L.str.186:
	.asciz	"GetObject{\n"
	.size	.L.str.186, 12

	.type	.L.str.187,@object      # @.str.187
.L.str.187:
	.asciz	"null ne\n"
	.size	.L.str.187, 9

	.type	.L.str.188,@object      # @.str.188
.L.str.188:
	.asciz	"/GetRegistered{\n"
	.size	.L.str.188, 17

	.type	.L.str.189,@object      # @.str.189
.L.str.189:
	.asciz	"dup GetObject not{\n"
	.size	.L.str.189, 20

	.type	.L.str.190,@object      # @.str.190
.L.str.190:
	.asciz	"exch mark exch (Object ) exch ( isn't defined before needed (1).) //error exec\n"
	.size	.L.str.190, 80

	.type	.L.str.191,@object      # @.str.191
.L.str.191:
	.asciz	"exch mark exch (Object ) exch ( isn't defined before needed (2).) //error exec\n"
	.size	.L.str.191, 80

	.type	.L.str.192,@object      # @.str.192
.L.str.192:
	.asciz	"dup null eq{\n"
	.size	.L.str.192, 14

	.type	.L.str.193,@object      # @.str.193
.L.str.193:
	.asciz	"exch mark exch (Object ) exch ( isn't defined before needed (3).) //error exec\n"
	.size	.L.str.193, 80

	.type	.L.str.194,@object      # @.str.194
.L.str.194:
	.asciz	"/StandardFontNames<<\n"
	.size	.L.str.194, 22

	.type	.L.str.195,@object      # @.str.195
.L.str.195:
	.asciz	"/Times-Roman true\n"
	.size	.L.str.195, 19

	.type	.L.str.196,@object      # @.str.196
.L.str.196:
	.asciz	"/Helvetica true\n"
	.size	.L.str.196, 17

	.type	.L.str.197,@object      # @.str.197
.L.str.197:
	.asciz	"/Courier true\n"
	.size	.L.str.197, 15

	.type	.L.str.198,@object      # @.str.198
.L.str.198:
	.asciz	"/Symbol true\n"
	.size	.L.str.198, 14

	.type	.L.str.199,@object      # @.str.199
.L.str.199:
	.asciz	"/Times-Bold true\n"
	.size	.L.str.199, 18

	.type	.L.str.200,@object      # @.str.200
.L.str.200:
	.asciz	"/Helvetica-Bold true\n"
	.size	.L.str.200, 22

	.type	.L.str.201,@object      # @.str.201
.L.str.201:
	.asciz	"/Courier-Bold true\n"
	.size	.L.str.201, 20

	.type	.L.str.202,@object      # @.str.202
.L.str.202:
	.asciz	"/ZapfDingbats true\n"
	.size	.L.str.202, 20

	.type	.L.str.203,@object      # @.str.203
.L.str.203:
	.asciz	"/Times-Italic true\n"
	.size	.L.str.203, 20

	.type	.L.str.204,@object      # @.str.204
.L.str.204:
	.asciz	"/Helvetica-Oblique true\n"
	.size	.L.str.204, 25

	.type	.L.str.205,@object      # @.str.205
.L.str.205:
	.asciz	"/Courier-Oblique true\n"
	.size	.L.str.205, 23

	.type	.L.str.206,@object      # @.str.206
.L.str.206:
	.asciz	"/Times-BoldItalic true\n"
	.size	.L.str.206, 24

	.type	.L.str.207,@object      # @.str.207
.L.str.207:
	.asciz	"/Helvetica-BoldOblique true\n"
	.size	.L.str.207, 29

	.type	.L.str.208,@object      # @.str.208
.L.str.208:
	.asciz	"/Courier-BoldOblique true\n"
	.size	.L.str.208, 27

	.type	.L.str.209,@object      # @.str.209
.L.str.209:
	.asciz	">>def\n"
	.size	.L.str.209, 7

	.type	.L.str.210,@object      # @.str.210
.L.str.210:
	.asciz	"/CleanAllResources\n"
	.size	.L.str.210, 20

	.type	.L.str.211,@object      # @.str.211
.L.str.211:
	.asciz	"{//PDFR_DEBUG{\n"
	.size	.L.str.211, 16

	.type	.L.str.212,@object      # @.str.212
.L.str.212:
	.asciz	"(CleanAllResources beg)=\n"
	.size	.L.str.212, 26

	.type	.L.str.213,@object      # @.str.213
.L.str.213:
	.asciz	"//PDFReader/ObjectRegistry get{\n"
	.size	.L.str.213, 33

	.type	.L.str.214,@object      # @.str.214
.L.str.214:
	.asciz	"dup length 0 exch 1 exch 1 sub{\n"
	.size	.L.str.214, 33

	.type	.L.str.215,@object      # @.str.215
.L.str.215:
	.asciz	"2 copy get dup xcheck{\n"
	.size	.L.str.215, 24

	.type	.L.str.216,@object      # @.str.216
.L.str.216:
	.asciz	"dup type/dicttype eq{/.Global known}{pop false}ifelse{\n"
	.size	.L.str.216, 56

	.type	.L.str.217,@object      # @.str.217
.L.str.217:
	.asciz	"(Dropping )print dup =\n"
	.size	.L.str.217, 24

	.type	.L.str.218,@object      # @.str.218
.L.str.218:
	.asciz	"1 index exch/DroppedObject put\n"
	.size	.L.str.218, 32

	.type	.L.str.219,@object      # @.str.219
.L.str.219:
	.asciz	"FontDirectory length dict begin\n"
	.size	.L.str.219, 33

	.type	.L.str.220,@object      # @.str.220
.L.str.220:
	.asciz	"FontDirectory{\n"
	.size	.L.str.220, 16

	.type	.L.str.221,@object      # @.str.221
.L.str.221:
	.asciz	"dup//StandardFontNames exch known not{\n"
	.size	.L.str.221, 40

	.type	.L.str.222,@object      # @.str.222
.L.str.222:
	.asciz	"dup null def\n"
	.size	.L.str.222, 14

	.type	.L.str.223,@object      # @.str.223
.L.str.223:
	.asciz	"currentdict\n"
	.size	.L.str.223, 13

	.type	.L.str.224,@object      # @.str.224
.L.str.224:
	.asciz	"end{\n"
	.size	.L.str.224, 6

	.type	.L.str.225,@object      # @.str.225
.L.str.225:
	.asciz	"(Undefining font )print dup =\n"
	.size	.L.str.225, 31

	.type	.L.str.226,@object      # @.str.226
.L.str.226:
	.asciz	"undefinefont\n"
	.size	.L.str.226, 14

	.type	.L.str.227,@object      # @.str.227
.L.str.227:
	.asciz	"(CleanAllResources end)=\n"
	.size	.L.str.227, 26

	.type	.L.str.228,@object      # @.str.228
.L.str.228:
	.asciz	"/PrintReference\n"
	.size	.L.str.228, 17

	.type	.L.str.229,@object      # @.str.229
.L.str.229:
	.asciz	"({ )print\n"
	.size	.L.str.229, 11

	.type	.L.str.230,@object      # @.str.230
.L.str.230:
	.asciz	"dup{\n"
	.size	.L.str.230, 6

	.type	.L.str.231,@object      # @.str.231
.L.str.231:
	.asciz	"=only( )print\n"
	.size	.L.str.231, 15

	.type	.L.str.232,@object      # @.str.232
.L.str.232:
	.asciz	"( })=\n"
	.size	.L.str.232, 7

	.type	.L.str.233,@object      # @.str.233
.L.str.233:
	.asciz	"/R\n"
	.size	.L.str.233, 4

	.type	.L.str.234,@object      # @.str.234
.L.str.234:
	.asciz	"0 ne{\n"
	.size	.L.str.234, 7

	.type	.L.str.235,@object      # @.str.235
.L.str.235:
	.asciz	"exch mark exch(A referred object generation )exch( isn't 0.)//error exec\n"
	.size	.L.str.235, 74

	.type	.L.str.236,@object      # @.str.236
.L.str.236:
	.asciz	"[\n"
	.size	.L.str.236, 3

	.type	.L.str.237,@object      # @.str.237
.L.str.237:
	.asciz	"exch//GetRegistered/exec load\n"
	.size	.L.str.237, 31

	.type	.L.str.238,@object      # @.str.238
.L.str.238:
	.asciz	"]cvx\n"
	.size	.L.str.238, 6

	.type	.L.str.239,@object      # @.str.239
.L.str.239:
	.asciz	"//PrintReference exec\n"
	.size	.L.str.239, 23

	.type	.L.str.240,@object      # @.str.240
.L.str.240:
	.asciz	"/IsObjRef\n"
	.size	.L.str.240, 11

	.type	.L.str.241,@object      # @.str.241
.L.str.241:
	.asciz	"dup type/arraytype eq{\n"
	.size	.L.str.241, 24

	.type	.L.str.242,@object      # @.str.242
.L.str.242:
	.asciz	"dup length 3 eq{\n"
	.size	.L.str.242, 18

	.type	.L.str.243,@object      # @.str.243
.L.str.243:
	.asciz	"dup xcheck exch\n"
	.size	.L.str.243, 17

	.type	.L.str.244,@object      # @.str.244
.L.str.244:
	.asciz	"dup 0 get type/integertype eq 3 2 roll and exch\n"
	.size	.L.str.244, 49

	.type	.L.str.245,@object      # @.str.245
.L.str.245:
	.asciz	"dup 1 get//GetRegistered eq 3 2 roll and exch\n"
	.size	.L.str.245, 47

	.type	.L.str.246,@object      # @.str.246
.L.str.246:
	.asciz	"2 get/exec load eq and\n"
	.size	.L.str.246, 24

	.type	.L.str.247,@object      # @.str.247
.L.str.247:
	.asciz	"pop false\n"
	.size	.L.str.247, 11

	.type	.L.str.248,@object      # @.str.248
.L.str.248:
	.asciz	"/DoNothing\n"
	.size	.L.str.248, 12

	.type	.L.str.249,@object      # @.str.249
.L.str.249:
	.asciz	"}def\n"
	.size	.L.str.249, 6

	.type	.L.str.250,@object      # @.str.250
.L.str.250:
	.asciz	"/RunTypeDaemon\n"
	.size	.L.str.250, 16

	.type	.L.str.251,@object      # @.str.251
.L.str.251:
	.asciz	"dup type/dicttype eq{\n"
	.size	.L.str.251, 23

	.type	.L.str.252,@object      # @.str.252
.L.str.252:
	.asciz	"dup/Type//knownget exec{\n"
	.size	.L.str.252, 26

	.type	.L.str.253,@object      # @.str.253
.L.str.253:
	.asciz	"//PDFReader/TypeDaemons get exch\n"
	.size	.L.str.253, 34

	.type	.L.str.254,@object      # @.str.254
.L.str.254:
	.asciz	"//knownget exec{\n"
	.size	.L.str.254, 18

	.type	.L.str.255,@object      # @.str.255
.L.str.255:
	.asciz	"/obj\n"
	.size	.L.str.255, 6

	.type	.L.str.256,@object      # @.str.256
.L.str.256:
	.asciz	"(Defining )print 1 index =only( )print dup =only( obj)=\n"
	.size	.L.str.256, 57

	.type	.L.str.257,@object      # @.str.257
.L.str.257:
	.asciz	"exch mark exch(An object generation )exch( isn't 0.)//error exec\n"
	.size	.L.str.257, 66

	.type	.L.str.258,@object      # @.str.258
.L.str.258:
	.asciz	"/endobj\n"
	.size	.L.str.258, 9

	.type	.L.str.259,@object      # @.str.259
.L.str.259:
	.asciz	"(endobj )=\n"
	.size	.L.str.259, 12

	.type	.L.str.260,@object      # @.str.260
.L.str.260:
	.asciz	"dup/.endobj_daemon//knownget exec{\n"
	.size	.L.str.260, 36

	.type	.L.str.261,@object      # @.str.261
.L.str.261:
	.asciz	"//PDFR_DEBUG{(.endobj_daemon for )print 2 index =}if\n"
	.size	.L.str.261, 54

	.type	.L.str.262,@object      # @.str.262
.L.str.262:
	.asciz	"dup type/dicttype eq{dup/ImmediateExec known}{false}ifelse{\n"
	.size	.L.str.262, 61

	.type	.L.str.263,@object      # @.str.263
.L.str.263:
	.asciz	"(Storing )print 1 index =\n"
	.size	.L.str.263, 27

	.type	.L.str.264,@object      # @.str.264
.L.str.264:
	.asciz	"//RunTypeDaemon exec\n"
	.size	.L.str.264, 22

	.type	.L.str.265,@object      # @.str.265
.L.str.265:
	.asciz	"//DoNothing 3 1 roll//Register exec\n"
	.size	.L.str.265, 37

	.type	.L.str.266,@object      # @.str.266
.L.str.266:
	.asciz	"/StoreBlock\n"
	.size	.L.str.266, 13

	.type	.L.str.267,@object      # @.str.267
.L.str.267:
	.asciz	"(StoreBlock )print//PDFReader/BlockCount get =only(, Length = )print dup length =\n"
	.size	.L.str.267, 83

	.type	.L.str.268,@object      # @.str.268
.L.str.268:
	.asciz	"//PDFReader/BlockCount get exch\n"
	.size	.L.str.268, 33

	.type	.L.str.269,@object      # @.str.269
.L.str.269:
	.asciz	"//PDFReader/CurrentObject get 3 1 roll\n"
	.size	.L.str.269, 40

	.type	.L.str.270,@object      # @.str.270
.L.str.270:
	.asciz	"put\n"
	.size	.L.str.270, 5

	.type	.L.str.271,@object      # @.str.271
.L.str.271:
	.asciz	"//PDFReader/BlockCount get 1 add\n"
	.size	.L.str.271, 34

	.type	.L.str.272,@object      # @.str.272
.L.str.272:
	.asciz	"//PDFReader exch/BlockCount exch put\n"
	.size	.L.str.272, 38

	.type	.L.str.273,@object      # @.str.273
.L.str.273:
	.asciz	"/CheckLength\n"
	.size	.L.str.273, 14

	.type	.L.str.274,@object      # @.str.274
.L.str.274:
	.asciz	"{dup type/integertype ne{\n"
	.size	.L.str.274, 27

	.type	.L.str.275,@object      # @.str.275
.L.str.275:
	.asciz	"mark(Object length isn't an integer.)//error exec\n"
	.size	.L.str.275, 51

	.type	.L.str.276,@object      # @.str.276
.L.str.276:
	.asciz	"/ResolveD\n"
	.size	.L.str.276, 11

	.type	.L.str.277,@object      # @.str.277
.L.str.277:
	.asciz	"3 copy pop get\n"
	.size	.L.str.277, 16

	.type	.L.str.278,@object      # @.str.278
.L.str.278:
	.asciz	"dup//IsObjRef exec{\n"
	.size	.L.str.278, 21

	.type	.L.str.279,@object      # @.str.279
.L.str.279:
	.asciz	"(Resolving )print//PrintReference exec\n"
	.size	.L.str.279, 40

	.type	.L.str.280,@object      # @.str.280
.L.str.280:
	.asciz	"exch exec\n"
	.size	.L.str.280, 11

	.type	.L.str.281,@object      # @.str.281
.L.str.281:
	.asciz	"dup 4 1 roll\n"
	.size	.L.str.281, 14

	.type	.L.str.282,@object      # @.str.282
.L.str.282:
	.asciz	"/ResolveA\n"
	.size	.L.str.282, 11

	.type	.L.str.283,@object      # @.str.283
.L.str.283:
	.asciz	"{2 index 2 index get\n"
	.size	.L.str.283, 22

	.type	.L.str.284,@object      # @.str.284
.L.str.284:
	.asciz	"3 copy put\n"
	.size	.L.str.284, 12

	.type	.L.str.285,@object      # @.str.285
.L.str.285:
	.asciz	"exch pop exch pop\n"
	.size	.L.str.285, 19

	.type	.L.str.286,@object      # @.str.286
.L.str.286:
	.asciz	"/StoreStream\n"
	.size	.L.str.286, 14

	.type	.L.str.287,@object      # @.str.287
.L.str.287:
	.asciz	"dup//PDFReader exch/CurrentObject exch put\n"
	.size	.L.str.287, 44

	.type	.L.str.288,@object      # @.str.288
.L.str.288:
	.asciz	"//PDFReader/BlockCount 0 put\n"
	.size	.L.str.288, 30

	.type	.L.str.289,@object      # @.str.289
.L.str.289:
	.asciz	"dup/Length//CheckLength//ResolveD exec\n"
	.size	.L.str.289, 40

	.type	.L.str.290,@object      # @.str.290
.L.str.290:
	.asciz	"(StoreStream Length = )print dup =\n"
	.size	.L.str.290, 36

	.type	.L.str.291,@object      # @.str.291
.L.str.291:
	.asciz	"currentfile exch()/SubFileDecode filter\n"
	.size	.L.str.291, 41

	.type	.L.str.292,@object      # @.str.292
.L.str.292:
	.asciz	"{dup//BlockBuffer readstring{\n"
	.size	.L.str.292, 31

	.type	.L.str.293,@object      # @.str.293
.L.str.293:
	.asciz	"//StoreBlock exec\n"
	.size	.L.str.293, 19

	.type	.L.str.294,@object      # @.str.294
.L.str.294:
	.asciz	"exit\n"
	.size	.L.str.294, 6

	.type	.L.str.295,@object      # @.str.295
.L.str.295:
	.asciz	"}loop\n"
	.size	.L.str.295, 7

	.type	.L.str.296,@object      # @.str.296
.L.str.296:
	.asciz	"//PDFReader/CurrentObject null put\n"
	.size	.L.str.296, 36

	.type	.L.str.297,@object      # @.str.297
.L.str.297:
	.asciz	"(StoreStream end.)=\n"
	.size	.L.str.297, 21

	.type	.L.str.298,@object      # @.str.298
.L.str.298:
	.asciz	"/MakeStreamDumper\n"
	.size	.L.str.298, 19

	.type	.L.str.299,@object      # @.str.299
.L.str.299:
	.asciz	"(MakeStreamDumper beg.)=\n"
	.size	.L.str.299, 26

	.type	.L.str.300,@object      # @.str.300
.L.str.300:
	.asciz	"currentglobal exch dup gcheck setglobal\n"
	.size	.L.str.300, 41

	.type	.L.str.301,@object      # @.str.301
.L.str.301:
	.asciz	"[exch\n"
	.size	.L.str.301, 7

	.type	.L.str.302,@object      # @.str.302
.L.str.302:
	.asciz	"1 dict dup/c 0 put exch\n"
	.size	.L.str.302, 25

	.type	.L.str.303,@object      # @.str.303
.L.str.303:
	.asciz	"1024 string\n"
	.size	.L.str.303, 13

	.type	.L.str.304,@object      # @.str.304
.L.str.304:
	.asciz	"{readstring pop\n"
	.size	.L.str.304, 17

	.type	.L.str.305,@object      # @.str.305
.L.str.305:
	.asciz	"(StreamDumper )print 1 index/c get =string cvs print( )print\n"
	.size	.L.str.305, 62

	.type	.L.str.306,@object      # @.str.306
.L.str.306:
	.asciz	"dup length =string cvs print( <)print dup print(>\\n)print\n"
	.size	.L.str.306, 59

	.type	.L.str.307,@object      # @.str.307
.L.str.307:
	.asciz	"dup length\n"
	.size	.L.str.307, 12

	.type	.L.str.308,@object      # @.str.308
.L.str.308:
	.asciz	"dup/c get\n"
	.size	.L.str.308, 11

	.type	.L.str.309,@object      # @.str.309
.L.str.309:
	.asciz	"add/c exch put\n"
	.size	.L.str.309, 16

	.type	.L.str.310,@object      # @.str.310
.L.str.310:
	.asciz	"}/exec load\n"
	.size	.L.str.310, 13

	.type	.L.str.311,@object      # @.str.311
.L.str.311:
	.asciz	"]\n"
	.size	.L.str.311, 3

	.type	.L.str.312,@object      # @.str.312
.L.str.312:
	.asciz	"cvx 0()/SubFileDecode filter\n"
	.size	.L.str.312, 30

	.type	.L.str.313,@object      # @.str.313
.L.str.313:
	.asciz	"exch setglobal\n"
	.size	.L.str.313, 16

	.type	.L.str.314,@object      # @.str.314
.L.str.314:
	.asciz	"(MakeStreamDumper end.)=\n"
	.size	.L.str.314, 26

	.type	.L.str.315,@object      # @.str.315
.L.str.315:
	.asciz	"/ShortFilterNames 15 dict begin\n"
	.size	.L.str.315, 33

	.type	.L.str.316,@object      # @.str.316
.L.str.316:
	.asciz	"/AHx/ASCIIHexDecode def\n"
	.size	.L.str.316, 25

	.type	.L.str.317,@object      # @.str.317
.L.str.317:
	.asciz	"/A85/ASCII85Decode def\n"
	.size	.L.str.317, 24

	.type	.L.str.318,@object      # @.str.318
.L.str.318:
	.asciz	"/LZW/LZWDecode def\n"
	.size	.L.str.318, 20

	.type	.L.str.319,@object      # @.str.319
.L.str.319:
	.asciz	"/Fl/FlateDecode def\n"
	.size	.L.str.319, 21

	.type	.L.str.320,@object      # @.str.320
.L.str.320:
	.asciz	"/RL/RunLengthDecode def\n"
	.size	.L.str.320, 25

	.type	.L.str.321,@object      # @.str.321
.L.str.321:
	.asciz	"/CCF/CCITTFaxDecode def\n"
	.size	.L.str.321, 25

	.type	.L.str.322,@object      # @.str.322
.L.str.322:
	.asciz	"/DCT/DCTDecode def\n"
	.size	.L.str.322, 20

	.type	.L.str.323,@object      # @.str.323
.L.str.323:
	.asciz	"/AppendFilters\n"
	.size	.L.str.323, 16

	.type	.L.str.324,@object      # @.str.324
.L.str.324:
	.asciz	"(AppendFilters beg.)=\n"
	.size	.L.str.324, 23

	.type	.L.str.325,@object      # @.str.325
.L.str.325:
	.asciz	"dup 3 1 roll\n"
	.size	.L.str.325, 14

	.type	.L.str.326,@object      # @.str.326
.L.str.326:
	.asciz	"/Filter//knownget exec{\n"
	.size	.L.str.326, 25

	.type	.L.str.327,@object      # @.str.327
.L.str.327:
	.asciz	"dup//ShortFilterNames exch//knownget exec{\n"
	.size	.L.str.327, 44

	.type	.L.str.328,@object      # @.str.328
.L.str.328:
	.asciz	"2 index/DecodeParms//knownget exec{\n"
	.size	.L.str.328, 37

	.type	.L.str.329,@object      # @.str.329
.L.str.329:
	.asciz	"exch\n"
	.size	.L.str.329, 6

	.type	.L.str.330,@object      # @.str.330
.L.str.330:
	.asciz	"filter\n"
	.size	.L.str.330, 8

	.type	.L.str.331,@object      # @.str.331
.L.str.331:
	.asciz	"dup 0 exch 1 exch length 1 sub{\n"
	.size	.L.str.331, 33

	.type	.L.str.332,@object      # @.str.332
.L.str.332:
	.asciz	"2 copy get\n"
	.size	.L.str.332, 12

	.type	.L.str.333,@object      # @.str.333
.L.str.333:
	.asciz	"3 1 roll\n"
	.size	.L.str.333, 10

	.type	.L.str.334,@object      # @.str.334
.L.str.334:
	.asciz	"4 index/DecodeParms//knownget exec{\n"
	.size	.L.str.334, 37

	.type	.L.str.335,@object      # @.str.335
.L.str.335:
	.asciz	"exch get\n"
	.size	.L.str.335, 10

	.type	.L.str.336,@object      # @.str.336
.L.str.336:
	.asciz	"pop null\n"
	.size	.L.str.336, 10

	.type	.L.str.337,@object      # @.str.337
.L.str.337:
	.asciz	"pop 3 1 roll filter exch\n"
	.size	.L.str.337, 26

	.type	.L.str.338,@object      # @.str.338
.L.str.338:
	.asciz	"4 1 roll filter exch\n"
	.size	.L.str.338, 22

	.type	.L.str.339,@object      # @.str.339
.L.str.339:
	.asciz	"//PDFR_DEBUG//PDFR_DUMP and{\n"
	.size	.L.str.339, 30

	.type	.L.str.340,@object      # @.str.340
.L.str.340:
	.asciz	"//MakeStreamDumper exec\n"
	.size	.L.str.340, 25

	.type	.L.str.341,@object      # @.str.341
.L.str.341:
	.asciz	"(AppendFilters end.)=\n"
	.size	.L.str.341, 23

	.type	.L.str.342,@object      # @.str.342
.L.str.342:
	.asciz	"/ExecuteStream\n"
	.size	.L.str.342, 16

	.type	.L.str.343,@object      # @.str.343
.L.str.343:
	.asciz	"(ExecuteStream id = )print 2 index =only( Length = )print dup =\n"
	.size	.L.str.343, 65

	.type	.L.str.344,@object      # @.str.344
.L.str.344:
	.asciz	"//PDFReader/InitialGraphicState get\n"
	.size	.L.str.344, 37

	.type	.L.str.345,@object      # @.str.345
.L.str.345:
	.asciz	"//PDFReader/GraphicState get copy pop\n"
	.size	.L.str.345, 39

	.type	.L.str.346,@object      # @.str.346
.L.str.346:
	.asciz	"//PDFReader/Operators get begin\n"
	.size	.L.str.346, 33

	.type	.L.str.347,@object      # @.str.347
.L.str.347:
	.asciz	"pop currentfile 0(endstream)/SubFileDecode filter\n"
	.size	.L.str.347, 51

	.type	.L.str.348,@object      # @.str.348
.L.str.348:
	.asciz	"1 index//AppendFilters exec\n"
	.size	.L.str.348, 29

	.type	.L.str.349,@object      # @.str.349
.L.str.349:
	.asciz	"cvx mark exch\n"
	.size	.L.str.349, 15

	.type	.L.str.350,@object      # @.str.350
.L.str.350:
	.asciz	"counttomark 0 ne{\n"
	.size	.L.str.350, 19

	.type	.L.str.351,@object      # @.str.351
.L.str.351:
	.asciz	"mark(Data left on ostack after an immediate stream execution.)//error exec\n"
	.size	.L.str.351, 76

	.type	.L.str.352,@object      # @.str.352
.L.str.352:
	.asciz	"(ExecuteStream end.)=\n"
	.size	.L.str.352, 23

	.type	.L.str.353,@object      # @.str.353
.L.str.353:
	.asciz	"dup/IsPage known{\n"
	.size	.L.str.353, 19

	.type	.L.str.354,@object      # @.str.354
.L.str.354:
	.asciz	"dup/Context get/NumCopies//knownget exec{\n"
	.size	.L.str.354, 43

	.type	.L.str.355,@object      # @.str.355
.L.str.355:
	.asciz	"1 sub{\n"
	.size	.L.str.355, 8

	.type	.L.str.356,@object      # @.str.356
.L.str.356:
	.asciz	"copypage\n"
	.size	.L.str.356, 10

	.type	.L.str.357,@object      # @.str.357
.L.str.357:
	.asciz	"EPS2Write not {showpage} if\n"
	.size	.L.str.357, 29

	.type	.L.str.358,@object      # @.str.358
.L.str.358:
	.asciz	"/stream\n"
	.size	.L.str.358, 9

	.type	.L.str.359,@object      # @.str.359
.L.str.359:
	.asciz	"1 index =only( stream)=\n"
	.size	.L.str.359, 25

	.type	.L.str.360,@object      # @.str.360
.L.str.360:
	.asciz	"1 index GetObject{\n"
	.size	.L.str.360, 20

	.type	.L.str.361,@object      # @.str.361
.L.str.361:
	.asciz	"1 index null PutObject\n"
	.size	.L.str.361, 24

	.type	.L.str.362,@object      # @.str.362
.L.str.362:
	.asciz	"dup/ImmediateExec known{\n"
	.size	.L.str.362, 26

	.type	.L.str.363,@object      # @.str.363
.L.str.363:
	.asciz	"dup/GlobalExec//knownget exec{\n"
	.size	.L.str.363, 32

	.type	.L.str.364,@object      # @.str.364
.L.str.364:
	.asciz	"currentglobal 4 1 roll\n"
	.size	.L.str.364, 24

	.type	.L.str.365,@object      # @.str.365
.L.str.365:
	.asciz	"//ExecuteStream exec\n"
	.size	.L.str.365, 22

	.type	.L.str.366,@object      # @.str.366
.L.str.366:
	.asciz	"3 2 roll setglobal\n"
	.size	.L.str.366, 20

	.type	.L.str.367,@object      # @.str.367
.L.str.367:
	.asciz	"//StoreStream exec\n"
	.size	.L.str.367, 20

	.type	.L.str.368,@object      # @.str.368
.L.str.368:
	.asciz	"dup/.CleanResources//knownget exec{\n"
	.size	.L.str.368, 37

	.type	.L.str.369,@object      # @.str.369
.L.str.369:
	.asciz	"/All eq{\n"
	.size	.L.str.369, 10

	.type	.L.str.370,@object      # @.str.370
.L.str.370:
	.asciz	"//CleanAllResources exec\n"
	.size	.L.str.370, 26

	.type	.L.str.371,@object      # @.str.371
.L.str.371:
	.asciz	"/HookFont\n"
	.size	.L.str.371, 11

	.type	.L.str.372,@object      # @.str.372
.L.str.372:
	.asciz	"(Loaded the font )print dup/FontName get =\n"
	.size	.L.str.372, 44

	.type	.L.str.373,@object      # @.str.373
.L.str.373:
	.asciz	"dup/FontFileType get dup/Type1 eq exch/MMType1 eq or{\n"
	.size	.L.str.373, 55

	.type	.L.str.374,@object      # @.str.374
.L.str.374:
	.asciz	"dup/FontName get\n"
	.size	.L.str.374, 18

	.type	.L.str.375,@object      # @.str.375
.L.str.375:
	.asciz	"//PDFReader/RemoveFontNamePrefix get exec\n"
	.size	.L.str.375, 43

	.type	.L.str.376,@object      # @.str.376
.L.str.376:
	.asciz	"findfont\n"
	.size	.L.str.376, 10

	.type	.L.str.377,@object      # @.str.377
.L.str.377:
	.asciz	"dup/FontFileType get/TrueType eq{\n"
	.size	.L.str.377, 35

	.type	.L.str.378,@object      # @.str.378
.L.str.378:
	.asciz	"//PDFReader/MakeType42 get exec\n"
	.size	.L.str.378, 33

	.type	.L.str.379,@object      # @.str.379
.L.str.379:
	.asciz	"(Font dict <<)=\n"
	.size	.L.str.379, 17

	.type	.L.str.380,@object      # @.str.380
.L.str.380:
	.asciz	"1 index/sfnts eq{\n"
	.size	.L.str.380, 19

	.type	.L.str.381,@object      # @.str.381
.L.str.381:
	.asciz	"(/sfnts [)print\n"
	.size	.L.str.381, 17

	.type	.L.str.382,@object      # @.str.382
.L.str.382:
	.asciz	"(-string\\()print length//=only exec(\\)- )=\n"
	.size	.L.str.382, 44

	.type	.L.str.383,@object      # @.str.383
.L.str.383:
	.asciz	"(])=\n"
	.size	.L.str.383, 6

	.type	.L.str.384,@object      # @.str.384
.L.str.384:
	.asciz	"exch//=only exec( )print ==\n"
	.size	.L.str.384, 29

	.type	.L.str.385,@object      # @.str.385
.L.str.385:
	.asciz	"(>>)=\n"
	.size	.L.str.385, 7

	.type	.L.str.386,@object      # @.str.386
.L.str.386:
	.asciz	"dup/FontName get exch definefont\n"
	.size	.L.str.386, 34

	.type	.L.str.387,@object      # @.str.387
.L.str.387:
	.asciz	"mark(FontHook has no proc for )2 index/FontFileType get//error exec\n"
	.size	.L.str.387, 69

	.type	.L.str.388,@object      # @.str.388
.L.str.388:
	.asciz	"/Font exch put\n"
	.size	.L.str.388, 16

	.type	.L.str.389,@object      # @.str.389
.L.str.389:
	.asciz	"/endstream\n"
	.size	.L.str.389, 12

	.type	.L.str.390,@object      # @.str.390
.L.str.390:
	.asciz	"/xref\n"
	.size	.L.str.390, 7

	.type	.L.str.391,@object      # @.str.391
.L.str.391:
	.asciz	"(xref)=\n"
	.size	.L.str.391, 9

	.type	.L.str.392,@object      # @.str.392
.L.str.392:
	.asciz	"//PDFR_DUMP{\n"
	.size	.L.str.392, 14

	.type	.L.str.393,@object      # @.str.393
.L.str.393:
	.asciz	"//PDFReader/ObjectRegistry get ==\n"
	.size	.L.str.393, 35

	.type	.L.str.394,@object      # @.str.394
.L.str.394:
	.asciz	"count 0 ne{\n"
	.size	.L.str.394, 13

	.type	.L.str.395,@object      # @.str.395
.L.str.395:
	.asciz	"mark(Excessive data on estack at the end of the interpretation.)//error exec\n"
	.size	.L.str.395, 78

	.type	.L.str.396,@object      # @.str.396
.L.str.396:
	.asciz	"currentfile 1(%%EOF)/SubFileDecode filter\n"
	.size	.L.str.396, 43

	.type	.L.str.397,@object      # @.str.397
.L.str.397:
	.asciz	"flushfile\n"
	.size	.L.str.397, 11

	.type	.L.str.398,@object      # @.str.398
.L.str.398:
	.asciz	"cleardictstack\n"
	.size	.L.str.398, 16

	.type	.L.str.399,@object      # @.str.399
.L.str.399:
	.asciz	"/ResolveDict\n"
	.size	.L.str.399, 14

	.type	.L.str.400,@object      # @.str.400
.L.str.400:
	.asciz	"{dup{\n"
	.size	.L.str.400, 7

	.type	.L.str.401,@object      # @.str.401
.L.str.401:
	.asciz	"pop 1 index exch\n"
	.size	.L.str.401, 18

	.type	.L.str.402,@object      # @.str.402
.L.str.402:
	.asciz	"//DoNothing//ResolveD exec\n"
	.size	.L.str.402, 28

	.type	.L.str.403,@object      # @.str.403
.L.str.403:
	.asciz	"/SetupPageView\n"
	.size	.L.str.403, 16

	.type	.L.str.404,@object      # @.str.404
.L.str.404:
	.asciz	"(SetupPageView beg)=\n"
	.size	.L.str.404, 22

	.type	.L.str.405,@object      # @.str.405
.L.str.405:
	.asciz	"//DSC_OPDFREAD not{\n"
	.size	.L.str.405, 21

	.type	.L.str.406,@object      # @.str.406
.L.str.406:
	.asciz	"//GraphicState/InitialMatrix get setmatrix\n"
	.size	.L.str.406, 44

	.type	.L.str.407,@object      # @.str.407
.L.str.407:
	.asciz	"/MediaBox get aload pop\n"
	.size	.L.str.407, 25

	.type	.L.str.408,@object      # @.str.408
.L.str.408:
	.asciz	"3 index neg 3 index neg translate\n"
	.size	.L.str.408, 35

	.type	.L.str.409,@object      # @.str.409
.L.str.409:
	.asciz	"3 -1 roll sub 3 1 roll exch sub exch\n"
	.size	.L.str.409, 38

	.type	.L.str.410,@object      # @.str.410
.L.str.410:
	.asciz	"userdict/.HWMargins//knownget exec{\n"
	.size	.L.str.410, 37

	.type	.L.str.411,@object      # @.str.411
.L.str.411:
	.asciz	"aload pop\n"
	.size	.L.str.411, 11

	.type	.L.str.412,@object      # @.str.412
.L.str.412:
	.asciz	"currentpagedevice/.HWMargins//knownget exec{\n"
	.size	.L.str.412, 46

	.type	.L.str.413,@object      # @.str.413
.L.str.413:
	.asciz	"0 0 0 0\n"
	.size	.L.str.413, 9

	.type	.L.str.414,@object      # @.str.414
.L.str.414:
	.asciz	"currentpagedevice/PageSize get aload pop\n"
	.size	.L.str.414, 42

	.type	.L.str.415,@object      # @.str.415
.L.str.415:
	.asciz	"exch 3 index sub exch 3 index sub\n"
	.size	.L.str.415, 35

	.type	.L.str.416,@object      # @.str.416
.L.str.416:
	.asciz	"(Setting page size to )print 1 index//=only exec( )print dup =\n"
	.size	.L.str.416, 64

	.type	.L.str.417,@object      # @.str.417
.L.str.417:
	.asciz	"pop pop 3 index 3 index 2 copy\n"
	.size	.L.str.417, 32

	.type	.L.str.418,@object      # @.str.418
.L.str.418:
	.asciz	"currentglobal false setglobal 3 1 roll\n"
	.size	.L.str.418, 40

	.type	.L.str.419,@object      # @.str.419
.L.str.419:
	.asciz	"currentpagedevice dup /PageSize known{\n"
	.size	.L.str.419, 40

	.type	.L.str.420,@object      # @.str.420
.L.str.420:
	.asciz	"/PageSize get aload pop}{\n"
	.size	.L.str.420, 27

	.type	.L.str.421,@object      # @.str.421
.L.str.421:
	.asciz	"0 0}ifelse\n"
	.size	.L.str.421, 12

	.type	.L.str.422,@object      # @.str.422
.L.str.422:
	.asciz	"round cvi 2 index round cvi eq\n"
	.size	.L.str.422, 32

	.type	.L.str.423,@object      # @.str.423
.L.str.423:
	.asciz	"exch round cvi 3 index round cvi eq and{\n"
	.size	.L.str.423, 42

	.type	.L.str.424,@object      # @.str.424
.L.str.424:
	.asciz	"//PDFR_DEBUG{(PageSize matches request) == flush}if\n"
	.size	.L.str.424, 53

	.type	.L.str.425,@object      # @.str.425
.L.str.425:
	.asciz	"pop pop}{\n"
	.size	.L.str.425, 11

	.type	.L.str.426,@object      # @.str.426
.L.str.426:
	.asciz	"/MediaRequested where {\n"
	.size	.L.str.426, 25

	.type	.L.str.427,@object      # @.str.427
.L.str.427:
	.asciz	"//PDFR_DEBUG{(MediaRequested is true, check against new request) == flush}if\n"
	.size	.L.str.427, 78

	.type	.L.str.428,@object      # @.str.428
.L.str.428:
	.asciz	"/MediaRequested get aload pop\n"
	.size	.L.str.428, 31

	.type	.L.str.429,@object      # @.str.429
.L.str.429:
	.asciz	"exch round cvi 3 index round cvi eq and\n"
	.size	.L.str.429, 41

	.type	.L.str.430,@object      # @.str.430
.L.str.430:
	.asciz	"{//PDFR_DEBUG{(MediaRequested same as current request, ignore) == flush}if pop pop false}\n"
	.size	.L.str.430, 91

	.type	.L.str.431,@object      # @.str.431
.L.str.431:
	.asciz	"{//PDFR_DEBUG{(MediaRequested different to current request) == flush}if true}ifelse\n"
	.size	.L.str.431, 85

	.type	.L.str.432,@object      # @.str.432
.L.str.432:
	.asciz	"//PDFR_DEBUG{(No MediaRequested yet) == flush}if\n"
	.size	.L.str.432, 50

	.type	.L.str.433,@object      # @.str.433
.L.str.433:
	.asciz	"true\n"
	.size	.L.str.433, 6

	.type	.L.str.434,@object      # @.str.434
.L.str.434:
	.asciz	"//PDFR_DEBUG{(Setting pagesize) == flush}if\n"
	.size	.L.str.434, 45

	.type	.L.str.435,@object      # @.str.435
.L.str.435:
	.asciz	"2 array astore\n"
	.size	.L.str.435, 16

	.type	.L.str.436,@object      # @.str.436
.L.str.436:
	.asciz	"dup /MediaRequested exch def\n"
	.size	.L.str.436, 30

	.type	.L.str.437,@object      # @.str.437
.L.str.437:
	.asciz	"<< exch /PageSize exch >> setpagedevice\n"
	.size	.L.str.437, 41

	.type	.L.str.438,@object      # @.str.438
.L.str.438:
	.asciz	"/pagesave save def\n"
	.size	.L.str.438, 20

	.type	.L.str.439,@object      # @.str.439
.L.str.439:
	.asciz	"//RotatePages{\n"
	.size	.L.str.439, 16

	.type	.L.str.440,@object      # @.str.440
.L.str.440:
	.asciz	"2 copy gt 6 index 6 index gt ne{\n"
	.size	.L.str.440, 34

	.type	.L.str.441,@object      # @.str.441
.L.str.441:
	.asciz	"1 index 5 index le 1 index 5 index le and not\n"
	.size	.L.str.441, 47

	.type	.L.str.442,@object      # @.str.442
.L.str.442:
	.asciz	"{//CenterPages{\n"
	.size	.L.str.442, 17

	.type	.L.str.443,@object      # @.str.443
.L.str.443:
	.asciz	"(Rotating page, and then centering it)==\n"
	.size	.L.str.443, 42

	.type	.L.str.444,@object      # @.str.444
.L.str.444:
	.asciz	"90 rotate\n"
	.size	.L.str.444, 11

	.type	.L.str.445,@object      # @.str.445
.L.str.445:
	.asciz	"0 5 index neg translate\n"
	.size	.L.str.445, 25

	.type	.L.str.446,@object      # @.str.446
.L.str.446:
	.asciz	"5 index 1 index exch sub 2 div\n"
	.size	.L.str.446, 32

	.type	.L.str.447,@object      # @.str.447
.L.str.447:
	.asciz	"2 index 6 index sub 2 div neg\n"
	.size	.L.str.447, 31

	.type	.L.str.448,@object      # @.str.448
.L.str.448:
	.asciz	"translate\n"
	.size	.L.str.448, 11

	.type	.L.str.449,@object      # @.str.449
.L.str.449:
	.asciz	"//FitPages{\n"
	.size	.L.str.449, 13

	.type	.L.str.450,@object      # @.str.450
.L.str.450:
	.asciz	"1 index 5 index div 1 index 7 index div\n"
	.size	.L.str.450, 41

	.type	.L.str.451,@object      # @.str.451
.L.str.451:
	.asciz	"2 copy gt{\n"
	.size	.L.str.451, 12

	.type	.L.str.452,@object      # @.str.452
.L.str.452:
	.asciz	"pop dup scale\n"
	.size	.L.str.452, 15

	.type	.L.str.453,@object      # @.str.453
.L.str.453:
	.asciz	"//CenterPages{\n"
	.size	.L.str.453, 16

	.type	.L.str.454,@object      # @.str.454
.L.str.454:
	.asciz	"(Ccentering page)==\n"
	.size	.L.str.454, 21

	.type	.L.str.455,@object      # @.str.455
.L.str.455:
	.asciz	"1 index 6 index sub 2 div\n"
	.size	.L.str.455, 27

	.type	.L.str.456,@object      # @.str.456
.L.str.456:
	.asciz	"1 index 6 index div 1 index 6 index div\n"
	.size	.L.str.456, 41

	.type	.L.str.457,@object      # @.str.457
.L.str.457:
	.asciz	"(SetupPageView end)=\n"
	.size	.L.str.457, 22

	.type	.L.str.458,@object      # @.str.458
.L.str.458:
	.asciz	"/PageContentsDaemon\n"
	.size	.L.str.458, 21

	.type	.L.str.459,@object      # @.str.459
.L.str.459:
	.asciz	"(Executing PageContentsDaemon for )print 2 index =\n"
	.size	.L.str.459, 52

	.type	.L.str.460,@object      # @.str.460
.L.str.460:
	.asciz	"1 index exch/Context exch put\n"
	.size	.L.str.460, 31

	.type	.L.str.461,@object      # @.str.461
.L.str.461:
	.asciz	"dup/ImmediateExec true put\n"
	.size	.L.str.461, 28

	.type	.L.str.462,@object      # @.str.462
.L.str.462:
	.asciz	"dup/IsPage true put\n"
	.size	.L.str.462, 21

	.type	.L.str.463,@object      # @.str.463
.L.str.463:
	.asciz	"SetPageSize {dup/Context get//SetupPageView exec}if\n"
	.size	.L.str.463, 53

	.type	.L.str.464,@object      # @.str.464
.L.str.464:
	.asciz	"/FontFileDaemon\n"
	.size	.L.str.464, 17

	.type	.L.str.465,@object      # @.str.465
.L.str.465:
	.asciz	"(Executing FontFileDaemon for )print 2 index =\n"
	.size	.L.str.465, 48

	.type	.L.str.466,@object      # @.str.466
.L.str.466:
	.asciz	"dup/FontFileType get\n"
	.size	.L.str.466, 22

	.type	.L.str.467,@object      # @.str.467
.L.str.467:
	.asciz	"2 index exch\n"
	.size	.L.str.467, 14

	.type	.L.str.468,@object      # @.str.468
.L.str.468:
	.asciz	"dup//ReadFontProcs exch//knownget exec{\n"
	.size	.L.str.468, 41

	.type	.L.str.469,@object      # @.str.469
.L.str.469:
	.asciz	"exch pop exec\n"
	.size	.L.str.469, 15

	.type	.L.str.470,@object      # @.str.470
.L.str.470:
	.asciz	"mark(FontFile reader for )2 index( isn't implemented yet.)//error exec\n"
	.size	.L.str.470, 72

	.type	.L.str.471,@object      # @.str.471
.L.str.471:
	.asciz	"(FontFileDaemon end)=\n"
	.size	.L.str.471, 23

	.type	.L.str.472,@object      # @.str.472
.L.str.472:
	.asciz	"/FontDescriptorDaemon\n"
	.size	.L.str.472, 23

	.type	.L.str.473,@object      # @.str.473
.L.str.473:
	.asciz	"(Executing FontDescriptorDaemon for )print 2 index =\n"
	.size	.L.str.473, 54

	.type	.L.str.474,@object      # @.str.474
.L.str.474:
	.asciz	"2 copy/FontResource exch put\n"
	.size	.L.str.474, 30

	.type	.L.str.475,@object      # @.str.475
.L.str.475:
	.asciz	"/Subtype get 1 index exch/FontFileType exch put\n"
	.size	.L.str.475, 49

	.type	.L.str.476,@object      # @.str.476
.L.str.476:
	.asciz	"/UnPDFEscape{\n"
	.size	.L.str.476, 15

	.type	.L.str.477,@object      # @.str.477
.L.str.477:
	.asciz	"dup dup length string cvs\n"
	.size	.L.str.477, 27

	.type	.L.str.478,@object      # @.str.478
.L.str.478:
	.asciz	"dup(#)search{\n"
	.size	.L.str.478, 15

	.type	.L.str.479,@object      # @.str.479
.L.str.479:
	.asciz	"(16#--)2 index 0 2 getinterval\n"
	.size	.L.str.479, 32

	.type	.L.str.480,@object      # @.str.480
.L.str.480:
	.asciz	"1 index 3 2 getinterval copy pop\n"
	.size	.L.str.480, 34

	.type	.L.str.481,@object      # @.str.481
.L.str.481:
	.asciz	"cvi\n"
	.size	.L.str.481, 5

	.type	.L.str.482,@object      # @.str.482
.L.str.482:
	.asciz	"0 exch put\n"
	.size	.L.str.482, 12

	.type	.L.str.483,@object      # @.str.483
.L.str.483:
	.asciz	"0\n"
	.size	.L.str.483, 3

	.type	.L.str.484,@object      # @.str.484
.L.str.484:
	.asciz	"1 index 2 1 index length 2 sub getinterval\n"
	.size	.L.str.484, 44

	.type	.L.str.485,@object      # @.str.485
.L.str.485:
	.asciz	"3 copy putinterval\n"
	.size	.L.str.485, 20

	.type	.L.str.486,@object      # @.str.486
.L.str.486:
	.asciz	"length\n"
	.size	.L.str.486, 8

	.type	.L.str.487,@object      # @.str.487
.L.str.487:
	.asciz	"3 copy exch put\n"
	.size	.L.str.487, 17

	.type	.L.str.488,@object      # @.str.488
.L.str.488:
	.asciz	"getinterval\n"
	.size	.L.str.488, 13

	.type	.L.str.489,@object      # @.str.489
.L.str.489:
	.asciz	"(#)search not{\n"
	.size	.L.str.489, 16

	.type	.L.str.490,@object      # @.str.490
.L.str.490:
	.asciz	"pop exit\n"
	.size	.L.str.490, 10

	.type	.L.str.491,@object      # @.str.491
.L.str.491:
	.asciz	"(\\0)search pop exch pop exch pop\n"
	.size	.L.str.491, 34

	.type	.L.str.492,@object      # @.str.492
.L.str.492:
	.asciz	"cvn\n"
	.size	.L.str.492, 5

	.type	.L.str.493,@object      # @.str.493
.L.str.493:
	.asciz	"/TypeDaemons<<\n"
	.size	.L.str.493, 16

	.type	.L.str.494,@object      # @.str.494
.L.str.494:
	.asciz	"/Page\n"
	.size	.L.str.494, 7

	.type	.L.str.495,@object      # @.str.495
.L.str.495:
	.asciz	"(Recognized a page.)=\n"
	.size	.L.str.495, 23

	.type	.L.str.496,@object      # @.str.496
.L.str.496:
	.asciz	"dup/Contents//knownget exec{\n"
	.size	.L.str.496, 30

	.type	.L.str.497,@object      # @.str.497
.L.str.497:
	.asciz	"0 get//DoNothing exch\n"
	.size	.L.str.497, 23

	.type	.L.str.498,@object      # @.str.498
.L.str.498:
	.asciz	"3 index//PageContentsDaemon/exec load\n"
	.size	.L.str.498, 39

	.type	.L.str.499,@object      # @.str.499
.L.str.499:
	.asciz	"//Register exec\n"
	.size	.L.str.499, 17

	.type	.L.str.500,@object      # @.str.500
.L.str.500:
	.asciz	"(fixme: page with no Contents won't be printed.)=\n"
	.size	.L.str.500, 51

	.type	.L.str.501,@object      # @.str.501
.L.str.501:
	.asciz	"}bind\n"
	.size	.L.str.501, 7

	.type	.L.str.502,@object      # @.str.502
.L.str.502:
	.asciz	"/FontDescriptor\n"
	.size	.L.str.502, 17

	.type	.L.str.503,@object      # @.str.503
.L.str.503:
	.asciz	"(Recognized a font descriptor.)=\n"
	.size	.L.str.503, 34

	.type	.L.str.504,@object      # @.str.504
.L.str.504:
	.asciz	"dup/FontName//knownget exec{\n"
	.size	.L.str.504, 30

	.type	.L.str.505,@object      # @.str.505
.L.str.505:
	.asciz	"1 index/FontName 3 -1 roll//UnPDFEscape exec put\n"
	.size	.L.str.505, 50

	.type	.L.str.506,@object      # @.str.506
.L.str.506:
	.asciz	"dup dup/FontFile known{/FontFile}{/FontFile2}ifelse\n"
	.size	.L.str.506, 53

	.type	.L.str.507,@object      # @.str.507
.L.str.507:
	.asciz	"3 index//FontFileDaemon/exec load\n"
	.size	.L.str.507, 35

	.type	.L.str.508,@object      # @.str.508
.L.str.508:
	.asciz	"(Font descriptor )print 1 index =only( has no FontFile.)=\n"
	.size	.L.str.508, 59

	.type	.L.str.509,@object      # @.str.509
.L.str.509:
	.asciz	"/Font\n"
	.size	.L.str.509, 7

	.type	.L.str.510,@object      # @.str.510
.L.str.510:
	.asciz	"(Recognized a font resource.)=\n"
	.size	.L.str.510, 32

	.type	.L.str.511,@object      # @.str.511
.L.str.511:
	.asciz	"dup/BaseFont//knownget exec{\n"
	.size	.L.str.511, 30

	.type	.L.str.512,@object      # @.str.512
.L.str.512:
	.asciz	"//UnPDFEscape exec 2 copy/BaseFont exch put\n"
	.size	.L.str.512, 45

	.type	.L.str.513,@object      # @.str.513
.L.str.513:
	.asciz	"currentglobal exch\n"
	.size	.L.str.513, 20

	.type	.L.str.514,@object      # @.str.514
.L.str.514:
	.asciz	"dup/Font resourcestatus{\n"
	.size	.L.str.514, 26

	.type	.L.str.515,@object      # @.str.515
.L.str.515:
	.asciz	"//PDFReader/GetInstalledFont get exec pop\n"
	.size	.L.str.515, 43

	.type	.L.str.516,@object      # @.str.516
.L.str.516:
	.asciz	"dup/FontDescriptor//knownget exec{\n"
	.size	.L.str.516, 36

	.type	.L.str.517,@object      # @.str.517
.L.str.517:
	.asciz	"0 get\n"
	.size	.L.str.517, 7

	.type	.L.str.518,@object      # @.str.518
.L.str.518:
	.asciz	"dup//IsRegistered exec{\n"
	.size	.L.str.518, 25

	.type	.L.str.519,@object      # @.str.519
.L.str.519:
	.asciz	"(already registered )print dup =\n"
	.size	.L.str.519, 34

	.type	.L.str.520,@object      # @.str.520
.L.str.520:
	.asciz	"//DoNothing exch\n"
	.size	.L.str.520, 18

	.type	.L.str.521,@object      # @.str.521
.L.str.521:
	.asciz	"3 index//FontDescriptorDaemon/exec load\n"
	.size	.L.str.521, 41

	.type	.L.str.522,@object      # @.str.522
.L.str.522:
	.asciz	"/MakeStreamReader\n"
	.size	.L.str.522, 19

	.type	.L.str.523,@object      # @.str.523
.L.str.523:
	.asciz	"{dup\n"
	.size	.L.str.523, 6

	.type	.L.str.524,@object      # @.str.524
.L.str.524:
	.asciz	"(Stream proc )\n"
	.size	.L.str.524, 16

	.type	.L.str.525,@object      # @.str.525
.L.str.525:
	.asciz	"/print load\n"
	.size	.L.str.525, 13

	.type	.L.str.526,@object      # @.str.526
.L.str.526:
	.asciz	"//PDFR_STREAM{\n"
	.size	.L.str.526, 16

	.type	.L.str.527,@object      # @.str.527
.L.str.527:
	.asciz	"(<)\n"
	.size	.L.str.527, 5

	.type	.L.str.528,@object      # @.str.528
.L.str.528:
	.asciz	"1 dict dup/i -1 put\n"
	.size	.L.str.528, 21

	.type	.L.str.529,@object      # @.str.529
.L.str.529:
	.asciz	"/dup load\n"
	.size	.L.str.529, 11

	.type	.L.str.530,@object      # @.str.530
.L.str.530:
	.asciz	"/i\n"
	.size	.L.str.530, 4

	.type	.L.str.531,@object      # @.str.531
.L.str.531:
	.asciz	"/get load\n"
	.size	.L.str.531, 11

	.type	.L.str.532,@object      # @.str.532
.L.str.532:
	.asciz	"1\n"
	.size	.L.str.532, 3

	.type	.L.str.533,@object      # @.str.533
.L.str.533:
	.asciz	"/add load\n"
	.size	.L.str.533, 11

	.type	.L.str.534,@object      # @.str.534
.L.str.534:
	.asciz	"3\n"
	.size	.L.str.534, 3

	.type	.L.str.535,@object      # @.str.535
.L.str.535:
	.asciz	"/roll load\n"
	.size	.L.str.535, 12

	.type	.L.str.536,@object      # @.str.536
.L.str.536:
	.asciz	"/exch load\n"
	.size	.L.str.536, 12

	.type	.L.str.537,@object      # @.str.537
.L.str.537:
	.asciz	"/put load\n"
	.size	.L.str.537, 11

	.type	.L.str.538,@object      # @.str.538
.L.str.538:
	.asciz	"//knownget\n"
	.size	.L.str.538, 12

	.type	.L.str.539,@object      # @.str.539
.L.str.539:
	.asciz	"/exec load\n"
	.size	.L.str.539, 12

	.type	.L.str.540,@object      # @.str.540
.L.str.540:
	.asciz	"/not load\n"
	.size	.L.str.540, 11

	.type	.L.str.541,@object      # @.str.541
.L.str.541:
	.asciz	"{()}\n"
	.size	.L.str.541, 6

	.type	.L.str.542,@object      # @.str.542
.L.str.542:
	.asciz	"/if load\n"
	.size	.L.str.542, 10

	.type	.L.str.543,@object      # @.str.543
.L.str.543:
	.asciz	"(>)\n"
	.size	.L.str.543, 5

	.type	.L.str.544,@object      # @.str.544
.L.str.544:
	.asciz	"( end of stream proc.\\n)\n"
	.size	.L.str.544, 26

	.type	.L.str.545,@object      # @.str.545
.L.str.545:
	.asciz	"(Stream reader )print dup ==\n"
	.size	.L.str.545, 30

	.type	.L.str.546,@object      # @.str.546
.L.str.546:
	.asciz	"0()/SubFileDecode filter\n"
	.size	.L.str.546, 26

	.type	.L.str.547,@object      # @.str.547
.L.str.547:
	.asciz	"exch//AppendFilters exec\n"
	.size	.L.str.547, 26

	.type	.L.str.548,@object      # @.str.548
.L.str.548:
	.asciz	"/RunDelayedStream\n"
	.size	.L.str.548, 19

	.type	.L.str.549,@object      # @.str.549
.L.str.549:
	.asciz	"//GraphicState/InitialTextMatrix get\n"
	.size	.L.str.549, 38

	.type	.L.str.550,@object      # @.str.550
.L.str.550:
	.asciz	"//InitialTextMatrixStack//PDFReader/InitialTextMatrixStackPointer get\n"
	.size	.L.str.550, 71

	.type	.L.str.551,@object      # @.str.551
.L.str.551:
	.asciz	"2 copy get null eq{\n"
	.size	.L.str.551, 21

	.type	.L.str.552,@object      # @.str.552
.L.str.552:
	.asciz	"2 copy currentglobal true setglobal matrix exch setglobal put\n"
	.size	.L.str.552, 63

	.type	.L.str.553,@object      # @.str.553
.L.str.553:
	.asciz	"get copy pop\n"
	.size	.L.str.553, 14

	.type	.L.str.554,@object      # @.str.554
.L.str.554:
	.asciz	"//PDFReader/InitialTextMatrixStackPointer 2 copy get 1 add put\n"
	.size	.L.str.554, 64

	.type	.L.str.555,@object      # @.str.555
.L.str.555:
	.asciz	"//MakeStreamReader exec\n"
	.size	.L.str.555, 25

	.type	.L.str.556,@object      # @.str.556
.L.str.556:
	.asciz	"mark exch\n"
	.size	.L.str.556, 11

	.type	.L.str.557,@object      # @.str.557
.L.str.557:
	.asciz	"cvx exec\n"
	.size	.L.str.557, 10

	.type	.L.str.558,@object      # @.str.558
.L.str.558:
	.asciz	"mark(Data left on ostack after a delayed stream execution.)//error exec\n"
	.size	.L.str.558, 73

	.type	.L.str.559,@object      # @.str.559
.L.str.559:
	.asciz	"//PDFReader/InitialTextMatrixStackPointer 2 copy get 1 sub put\n"
	.size	.L.str.559, 64

	.type	.L.str.560,@object      # @.str.560
.L.str.560:
	.asciz	"//InitialTextMatrixStack//PDFReader/InitialTextMatrixStackPointer get get\n"
	.size	.L.str.560, 75

	.type	.L.str.561,@object      # @.str.561
.L.str.561:
	.asciz	"copy pop\n"
	.size	.L.str.561, 10

	.type	.L.str.562,@object      # @.str.562
.L.str.562:
	.asciz	"//ReadFontProcs begin\n"
	.size	.L.str.562, 23

	.type	.L.str.563,@object      # @.str.563
.L.str.563:
	.asciz	"/Type1\n"
	.size	.L.str.563, 8

	.type	.L.str.564,@object      # @.str.564
.L.str.564:
	.asciz	"(ReadFontProcs.Type1)=\n"
	.size	.L.str.564, 24

	.type	.L.str.565,@object      # @.str.565
.L.str.565:
	.asciz	"dup/.endobj_daemon[4 index//HookFont/exec load]cvx put\n"
	.size	.L.str.565, 56

	.type	.L.str.566,@object      # @.str.566
.L.str.566:
	.asciz	"/GlobalExec true put\n"
	.size	.L.str.566, 22

	.type	.L.str.567,@object      # @.str.567
.L.str.567:
	.asciz	"/MMType1//Type1 def\n"
	.size	.L.str.567, 21

	.type	.L.str.568,@object      # @.str.568
.L.str.568:
	.asciz	"/TrueType\n"
	.size	.L.str.568, 11

	.type	.L.str.569,@object      # @.str.569
.L.str.569:
	.asciz	"(ReadFontProcs.TrueType)=\n"
	.size	.L.str.569, 27

	.type	.L.str.570,@object      # @.str.570
.L.str.570:
	.asciz	"/.opdloadttfontdict 50 dict def\n"
	.size	.L.str.570, 33

	.type	.L.str.571,@object      # @.str.571
.L.str.571:
	.asciz	".opdloadttfontdict begin\n"
	.size	.L.str.571, 26

	.type	.L.str.572,@object      # @.str.572
.L.str.572:
	.asciz	"/maxstring 65400 def\n"
	.size	.L.str.572, 22

	.type	.L.str.573,@object      # @.str.573
.L.str.573:
	.asciz	"/.InsertionSort\n"
	.size	.L.str.573, 17

	.type	.L.str.574,@object      # @.str.574
.L.str.574:
	.asciz	"/CompareProc exch def\n"
	.size	.L.str.574, 23

	.type	.L.str.575,@object      # @.str.575
.L.str.575:
	.asciz	"/Array exch def\n"
	.size	.L.str.575, 17

	.type	.L.str.576,@object      # @.str.576
.L.str.576:
	.asciz	"1 1 Array length 1 sub\n"
	.size	.L.str.576, 24

	.type	.L.str.577,@object      # @.str.577
.L.str.577:
	.asciz	"/Ix exch def\n"
	.size	.L.str.577, 14

	.type	.L.str.578,@object      # @.str.578
.L.str.578:
	.asciz	"/Value1 Array Ix get def\n"
	.size	.L.str.578, 26

	.type	.L.str.579,@object      # @.str.579
.L.str.579:
	.asciz	"/Jx Ix 1 sub def\n"
	.size	.L.str.579, 18

	.type	.L.str.580,@object      # @.str.580
.L.str.580:
	.asciz	"Jx 0 lt{\n"
	.size	.L.str.580, 10

	.type	.L.str.581,@object      # @.str.581
.L.str.581:
	.asciz	"/Value2 Array Jx get def\n"
	.size	.L.str.581, 26

	.type	.L.str.582,@object      # @.str.582
.L.str.582:
	.asciz	"Value1 Value2 CompareProc{\n"
	.size	.L.str.582, 28

	.type	.L.str.583,@object      # @.str.583
.L.str.583:
	.asciz	"Array Jx 1 add Value2 put\n"
	.size	.L.str.583, 27

	.type	.L.str.584,@object      # @.str.584
.L.str.584:
	.asciz	"/Jx Jx 1 sub def\n"
	.size	.L.str.584, 18

	.type	.L.str.585,@object      # @.str.585
.L.str.585:
	.asciz	"Array Jx 1 add Value1 put\n"
	.size	.L.str.585, 27

	.type	.L.str.586,@object      # @.str.586
.L.str.586:
	.asciz	"Array\n"
	.size	.L.str.586, 7

	.type	.L.str.587,@object      # @.str.587
.L.str.587:
	.asciz	"/putu16{\n"
	.size	.L.str.587, 10

	.type	.L.str.588,@object      # @.str.588
.L.str.588:
	.asciz	"3 copy -8 bitshift put\n"
	.size	.L.str.588, 24

	.type	.L.str.589,@object      # @.str.589
.L.str.589:
	.asciz	"exch 1 add exch 16#ff and put\n"
	.size	.L.str.589, 31

	.type	.L.str.590,@object      # @.str.590
.L.str.590:
	.asciz	"/putu32{\n"
	.size	.L.str.590, 10

	.type	.L.str.591,@object      # @.str.591
.L.str.591:
	.asciz	"3 copy -16 bitshift putu16\n"
	.size	.L.str.591, 28

	.type	.L.str.592,@object      # @.str.592
.L.str.592:
	.asciz	"exch 2 add exch 16#ffff and putu16\n"
	.size	.L.str.592, 36

	.type	.L.str.593,@object      # @.str.593
.L.str.593:
	.asciz	"/.readtable{\n"
	.size	.L.str.593, 14

	.type	.L.str.594,@object      # @.str.594
.L.str.594:
	.asciz	"dup dup 1 and add string\n"
	.size	.L.str.594, 26

	.type	.L.str.595,@object      # @.str.595
.L.str.595:
	.asciz	"dup 0 4 -1 roll getinterval\n"
	.size	.L.str.595, 29

	.type	.L.str.596,@object      # @.str.596
.L.str.596:
	.asciz	"3 -1 roll exch\n"
	.size	.L.str.596, 16

	.type	.L.str.597,@object      # @.str.597
.L.str.597:
	.asciz	"dup()ne{readstring}if pop pop\n"
	.size	.L.str.597, 31

	.type	.L.str.598,@object      # @.str.598
.L.str.598:
	.asciz	"/.readbigtable{\n"
	.size	.L.str.598, 17

	.type	.L.str.599,@object      # @.str.599
.L.str.599:
	.asciz	"dup maxstring lt{\n"
	.size	.L.str.599, 19

	.type	.L.str.600,@object      # @.str.600
.L.str.600:
	.asciz	".readtable\n"
	.size	.L.str.600, 12

	.type	.L.str.601,@object      # @.str.601
.L.str.601:
	.asciz	"currentuserparams/VMReclaim get -2 vmreclaim\n"
	.size	.L.str.601, 46

	.type	.L.str.602,@object      # @.str.602
.L.str.602:
	.asciz	"[4 2 roll{\n"
	.size	.L.str.602, 12

	.type	.L.str.603,@object      # @.str.603
.L.str.603:
	.asciz	"dup maxstring le{exit}if\n"
	.size	.L.str.603, 26

	.type	.L.str.604,@object      # @.str.604
.L.str.604:
	.asciz	"1 index maxstring string readstring pop 3 1 roll maxstring sub\n"
	.size	.L.str.604, 64

	.type	.L.str.605,@object      # @.str.605
.L.str.605:
	.asciz	"}loop .readtable]\n"
	.size	.L.str.605, 19

	.type	.L.str.606,@object      # @.str.606
.L.str.606:
	.asciz	"exch vmreclaim\n"
	.size	.L.str.606, 16

	.type	.L.str.607,@object      # @.str.607
.L.str.607:
	.asciz	"/ReadTTF\n"
	.size	.L.str.607, 10

	.type	.L.str.608,@object      # @.str.608
.L.str.608:
	.asciz	"/TTFontFile exch def\n"
	.size	.L.str.608, 22

	.type	.L.str.609,@object      # @.str.609
.L.str.609:
	.asciz	"/TableDir TTFontFile 12 string readstring pop def\n"
	.size	.L.str.609, 51

	.type	.L.str.610,@object      # @.str.610
.L.str.610:
	.asciz	"/tables TTFontFile TableDir 4 getu16 16 mul string readstring pop def\n"
	.size	.L.str.610, 71

	.type	.L.str.611,@object      # @.str.611
.L.str.611:
	.asciz	"/tabarray tables length 16 idiv array def\n"
	.size	.L.str.611, 43

	.type	.L.str.612,@object      # @.str.612
.L.str.612:
	.asciz	"TableDir 0 4 getinterval(ttcf)eq{\n"
	.size	.L.str.612, 35

	.type	.L.str.613,@object      # @.str.613
.L.str.613:
	.asciz	"QUIET not{(Can't handle TrueType font Collections.)=}if\n"
	.size	.L.str.613, 57

	.type	.L.str.614,@object      # @.str.614
.L.str.614:
	.asciz	"/.loadttfonttables cvx/invalidfont signalerror\n"
	.size	.L.str.614, 48

	.type	.L.str.615,@object      # @.str.615
.L.str.615:
	.asciz	"0 16 tables length 1 sub{\n"
	.size	.L.str.615, 27

	.type	.L.str.616,@object      # @.str.616
.L.str.616:
	.asciz	"dup\n"
	.size	.L.str.616, 5

	.type	.L.str.617,@object      # @.str.617
.L.str.617:
	.asciz	"tables exch 16 getinterval\n"
	.size	.L.str.617, 28

	.type	.L.str.618,@object      # @.str.618
.L.str.618:
	.asciz	"exch 16 div cvi exch\n"
	.size	.L.str.618, 22

	.type	.L.str.619,@object      # @.str.619
.L.str.619:
	.asciz	"tabarray 3 1 roll put\n"
	.size	.L.str.619, 23

	.type	.L.str.620,@object      # @.str.620
.L.str.620:
	.asciz	"tabarray{exch 8 getu32 exch 8 getu32 gt}.InsertionSort pop\n"
	.size	.L.str.620, 60

	.type	.L.str.621,@object      # @.str.621
.L.str.621:
	.asciz	"/Read TableDir length tables length add def\n"
	.size	.L.str.621, 45

	.type	.L.str.622,@object      # @.str.622
.L.str.622:
	.asciz	"/tabs[\n"
	.size	.L.str.622, 8

	.type	.L.str.623,@object      # @.str.623
.L.str.623:
	.asciz	"tabarray{\n"
	.size	.L.str.623, 11

	.type	.L.str.624,@object      # @.str.624
.L.str.624:
	.asciz	"dup 8 getu32\n"
	.size	.L.str.624, 14

	.type	.L.str.625,@object      # @.str.625
.L.str.625:
	.asciz	"Read sub\n"
	.size	.L.str.625, 10

	.type	.L.str.626,@object      # @.str.626
.L.str.626:
	.asciz	"dup 0 gt{\n"
	.size	.L.str.626, 11

	.type	.L.str.627,@object      # @.str.627
.L.str.627:
	.asciz	"dup string TTFontFile exch readstring pop pop\n"
	.size	.L.str.627, 47

	.type	.L.str.628,@object      # @.str.628
.L.str.628:
	.asciz	"Read add/Read exch def\n"
	.size	.L.str.628, 24

	.type	.L.str.629,@object      # @.str.629
.L.str.629:
	.asciz	"12 getu32\n"
	.size	.L.str.629, 11

	.type	.L.str.630,@object      # @.str.630
.L.str.630:
	.asciz	"dup Read add\n"
	.size	.L.str.630, 14

	.type	.L.str.631,@object      # @.str.631
.L.str.631:
	.asciz	"/Read exch def\n"
	.size	.L.str.631, 16

	.type	.L.str.632,@object      # @.str.632
.L.str.632:
	.asciz	"TTFontFile exch .readbigtable\n"
	.size	.L.str.632, 31

	.type	.L.str.633,@object      # @.str.633
.L.str.633:
	.asciz	"]def\n"
	.size	.L.str.633, 6

	.type	.L.str.634,@object      # @.str.634
.L.str.634:
	.asciz	"/GetLocaType\n"
	.size	.L.str.634, 14

	.type	.L.str.635,@object      # @.str.635
.L.str.635:
	.asciz	"0 1 tabarray length 1 sub{\n"
	.size	.L.str.635, 28

	.type	.L.str.636,@object      # @.str.636
.L.str.636:
	.asciz	"dup tabarray exch get\n"
	.size	.L.str.636, 23

	.type	.L.str.637,@object      # @.str.637
.L.str.637:
	.asciz	"0 4 getinterval(head)eq{\n"
	.size	.L.str.637, 26

	.type	.L.str.638,@object      # @.str.638
.L.str.638:
	.asciz	"tabs exch get\n"
	.size	.L.str.638, 15

	.type	.L.str.639,@object      # @.str.639
.L.str.639:
	.asciz	"50 gets16\n"
	.size	.L.str.639, 11

	.type	.L.str.640,@object      # @.str.640
.L.str.640:
	.asciz	"/LocaType exch def\n"
	.size	.L.str.640, 20

	.type	.L.str.641,@object      # @.str.641
.L.str.641:
	.asciz	"/GetNumGlyphs\n"
	.size	.L.str.641, 15

	.type	.L.str.642,@object      # @.str.642
.L.str.642:
	.asciz	"0 4 getinterval(maxp)eq{\n"
	.size	.L.str.642, 26

	.type	.L.str.643,@object      # @.str.643
.L.str.643:
	.asciz	"4 getu16\n"
	.size	.L.str.643, 10

	.type	.L.str.644,@object      # @.str.644
.L.str.644:
	.asciz	"/NumGlyphs exch def\n"
	.size	.L.str.644, 21

	.type	.L.str.645,@object      # @.str.645
.L.str.645:
	.asciz	"/StringToLoca\n"
	.size	.L.str.645, 15

	.type	.L.str.646,@object      # @.str.646
.L.str.646:
	.asciz	"/LocaIndex exch def\n"
	.size	.L.str.646, 21

	.type	.L.str.647,@object      # @.str.647
.L.str.647:
	.asciz	"/StringOffset 0 def\n"
	.size	.L.str.647, 21

	.type	.L.str.648,@object      # @.str.648
.L.str.648:
	.asciz	"dup length StringOffset gt{\n"
	.size	.L.str.648, 29

	.type	.L.str.649,@object      # @.str.649
.L.str.649:
	.asciz	"LocaType 1 eq{\n"
	.size	.L.str.649, 16

	.type	.L.str.650,@object      # @.str.650
.L.str.650:
	.asciz	"StringOffset getu32\n"
	.size	.L.str.650, 21

	.type	.L.str.651,@object      # @.str.651
.L.str.651:
	.asciz	"LocaArray LocaIndex 3 -1 roll put\n"
	.size	.L.str.651, 35

	.type	.L.str.652,@object      # @.str.652
.L.str.652:
	.asciz	"/LocaIndex LocaIndex 1 add def\n"
	.size	.L.str.652, 32

	.type	.L.str.653,@object      # @.str.653
.L.str.653:
	.asciz	"/StringOffset StringOffset 4 add\n"
	.size	.L.str.653, 34

	.type	.L.str.654,@object      # @.str.654
.L.str.654:
	.asciz	"StringOffset getu16\n"
	.size	.L.str.654, 21

	.type	.L.str.655,@object      # @.str.655
.L.str.655:
	.asciz	"LocaIndex\n"
	.size	.L.str.655, 11

	.type	.L.str.656,@object      # @.str.656
.L.str.656:
	.asciz	"/GetSortedLoca\n"
	.size	.L.str.656, 16

	.type	.L.str.657,@object      # @.str.657
.L.str.657:
	.asciz	"NumGlyphs 1 add array/LocaArray exch def\n"
	.size	.L.str.657, 42

	.type	.L.str.658,@object      # @.str.658
.L.str.658:
	.asciz	"0 4 getinterval(loca)eq{\n"
	.size	.L.str.658, 26

	.type	.L.str.659,@object      # @.str.659
.L.str.659:
	.asciz	"dup type/stringtype eq{\n"
	.size	.L.str.659, 25

	.type	.L.str.660,@object      # @.str.660
.L.str.660:
	.asciz	"0 StringToLoca pop\n"
	.size	.L.str.660, 20

	.type	.L.str.661,@object      # @.str.661
.L.str.661:
	.asciz	"0 exch\n"
	.size	.L.str.661, 8

	.type	.L.str.662,@object      # @.str.662
.L.str.662:
	.asciz	"exch StringToLoca\n"
	.size	.L.str.662, 19

	.type	.L.str.663,@object      # @.str.663
.L.str.663:
	.asciz	"LocaArray{gt}.InsertionSort pop\n"
	.size	.L.str.663, 33

	.type	.L.str.664,@object      # @.str.664
.L.str.664:
	.asciz	"/GetWorkingString\n"
	.size	.L.str.664, 19

	.type	.L.str.665,@object      # @.str.665
.L.str.665:
	.asciz	"WorkString 0\n"
	.size	.L.str.665, 14

	.type	.L.str.666,@object      # @.str.666
.L.str.666:
	.asciz	"GlyfArray GlyfStringIndex get\n"
	.size	.L.str.666, 31

	.type	.L.str.667,@object      # @.str.667
.L.str.667:
	.asciz	"putinterval\n"
	.size	.L.str.667, 13

	.type	.L.str.668,@object      # @.str.668
.L.str.668:
	.asciz	"/WorkBytes GlyfArray GlyfStringIndex get length def\n"
	.size	.L.str.668, 53

	.type	.L.str.669,@object      # @.str.669
.L.str.669:
	.asciz	"/GlyfStringIndex GlyfStringIndex 1 add def\n"
	.size	.L.str.669, 44

	.type	.L.str.670,@object      # @.str.670
.L.str.670:
	.asciz	"/GetWorkingBytes\n"
	.size	.L.str.670, 18

	.type	.L.str.671,@object      # @.str.671
.L.str.671:
	.asciz	"/BytesToRead exch def\n"
	.size	.L.str.671, 23

	.type	.L.str.672,@object      # @.str.672
.L.str.672:
	.asciz	"WorkString 0 BytesToRead getinterval\n"
	.size	.L.str.672, 38

	.type	.L.str.673,@object      # @.str.673
.L.str.673:
	.asciz	"WorkString BytesToRead WorkBytes BytesToRead sub getinterval\n"
	.size	.L.str.673, 62

	.type	.L.str.674,@object      # @.str.674
.L.str.674:
	.asciz	"WorkString 0 3 -1 roll putinterval\n"
	.size	.L.str.674, 36

	.type	.L.str.675,@object      # @.str.675
.L.str.675:
	.asciz	"/WorkBytes WorkBytes BytesToRead sub def\n"
	.size	.L.str.675, 42

	.type	.L.str.676,@object      # @.str.676
.L.str.676:
	.asciz	"/GetGlyfBytes\n"
	.size	.L.str.676, 15

	.type	.L.str.677,@object      # @.str.677
.L.str.677:
	.asciz	"/ToRead exch def\n"
	.size	.L.str.677, 18

	.type	.L.str.678,@object      # @.str.678
.L.str.678:
	.asciz	"WorkBytes 0 eq{\n"
	.size	.L.str.678, 17

	.type	.L.str.679,@object      # @.str.679
.L.str.679:
	.asciz	"GetWorkingString\n"
	.size	.L.str.679, 18

	.type	.L.str.680,@object      # @.str.680
.L.str.680:
	.asciz	"WorkBytes ToRead ge{\n"
	.size	.L.str.680, 22

	.type	.L.str.681,@object      # @.str.681
.L.str.681:
	.asciz	"ToRead string dup 0\n"
	.size	.L.str.681, 21

	.type	.L.str.682,@object      # @.str.682
.L.str.682:
	.asciz	"ToRead GetWorkingBytes putinterval\n"
	.size	.L.str.682, 36

	.type	.L.str.683,@object      # @.str.683
.L.str.683:
	.asciz	"ToRead string\n"
	.size	.L.str.683, 15

	.type	.L.str.684,@object      # @.str.684
.L.str.684:
	.asciz	"WorkString 0 WorkBytes getinterval\n"
	.size	.L.str.684, 36

	.type	.L.str.685,@object      # @.str.685
.L.str.685:
	.asciz	"WorkBytes\n"
	.size	.L.str.685, 11

	.type	.L.str.686,@object      # @.str.686
.L.str.686:
	.asciz	"ToRead WorkBytes sub\n"
	.size	.L.str.686, 22

	.type	.L.str.687,@object      # @.str.687
.L.str.687:
	.asciz	"GetWorkingBytes\n"
	.size	.L.str.687, 17

	.type	.L.str.688,@object      # @.str.688
.L.str.688:
	.asciz	"/SplitGlyf\n"
	.size	.L.str.688, 12

	.type	.L.str.689,@object      # @.str.689
.L.str.689:
	.asciz	"/GlyfArray exch def\n"
	.size	.L.str.689, 21

	.type	.L.str.690,@object      # @.str.690
.L.str.690:
	.asciz	"/DestArray GlyfArray length 2 mul array def\n"
	.size	.L.str.690, 45

	.type	.L.str.691,@object      # @.str.691
.L.str.691:
	.asciz	"/DestArrayIndex 0 def\n"
	.size	.L.str.691, 23

	.type	.L.str.692,@object      # @.str.692
.L.str.692:
	.asciz	"/LastLoca 0 def\n"
	.size	.L.str.692, 17

	.type	.L.str.693,@object      # @.str.693
.L.str.693:
	.asciz	"/NextLocaIndex 0 def\n"
	.size	.L.str.693, 22

	.type	.L.str.694,@object      # @.str.694
.L.str.694:
	.asciz	"/LastLocaIndex 0 def\n"
	.size	.L.str.694, 22

	.type	.L.str.695,@object      # @.str.695
.L.str.695:
	.asciz	"/GlyfStringIndex 0 def\n"
	.size	.L.str.695, 24

	.type	.L.str.696,@object      # @.str.696
.L.str.696:
	.asciz	"/WorkString maxstring string def\n"
	.size	.L.str.696, 34

	.type	.L.str.697,@object      # @.str.697
.L.str.697:
	.asciz	"/WorkBytes 0 def\n"
	.size	.L.str.697, 18

	.type	.L.str.698,@object      # @.str.698
.L.str.698:
	.asciz	"LocaArray NextLocaIndex get\n"
	.size	.L.str.698, 29

	.type	.L.str.699,@object      # @.str.699
.L.str.699:
	.asciz	"LastLoca sub maxstring gt\n"
	.size	.L.str.699, 27

	.type	.L.str.700,@object      # @.str.700
.L.str.700:
	.asciz	"LocaArray LastLocaIndex get LastLoca sub\n"
	.size	.L.str.700, 42

	.type	.L.str.701,@object      # @.str.701
.L.str.701:
	.asciz	"GetGlyfBytes\n"
	.size	.L.str.701, 14

	.type	.L.str.702,@object      # @.str.702
.L.str.702:
	.asciz	"DestArray DestArrayIndex 3 -1 roll put\n"
	.size	.L.str.702, 40

	.type	.L.str.703,@object      # @.str.703
.L.str.703:
	.asciz	"/DestArrayIndex DestArrayIndex 1 add def\n"
	.size	.L.str.703, 42

	.type	.L.str.704,@object      # @.str.704
.L.str.704:
	.asciz	"LocaArray LastLocaIndex get/LastLoca exch def\n"
	.size	.L.str.704, 47

	.type	.L.str.705,@object      # @.str.705
.L.str.705:
	.asciz	"/LastLocaIndex NextLocaIndex def\n"
	.size	.L.str.705, 34

	.type	.L.str.706,@object      # @.str.706
.L.str.706:
	.asciz	"/NextLocaIndex NextLocaIndex 1 add def\n"
	.size	.L.str.706, 40

	.type	.L.str.707,@object      # @.str.707
.L.str.707:
	.asciz	"NextLocaIndex NumGlyphs gt\n"
	.size	.L.str.707, 28

	.type	.L.str.708,@object      # @.str.708
.L.str.708:
	.asciz	"GlyfStringIndex GlyfArray length lt{\n"
	.size	.L.str.708, 38

	.type	.L.str.709,@object      # @.str.709
.L.str.709:
	.asciz	"GlyfArray GlyfStringIndex get length\n"
	.size	.L.str.709, 38

	.type	.L.str.710,@object      # @.str.710
.L.str.710:
	.asciz	"add string dup\n"
	.size	.L.str.710, 16

	.type	.L.str.711,@object      # @.str.711
.L.str.711:
	.asciz	"DestArray\n"
	.size	.L.str.711, 11

	.type	.L.str.712,@object      # @.str.712
.L.str.712:
	.asciz	"/ProcessTTData\n"
	.size	.L.str.712, 16

	.type	.L.str.713,@object      # @.str.713
.L.str.713:
	.asciz	"/ix exch def\n"
	.size	.L.str.713, 14

	.type	.L.str.714,@object      # @.str.714
.L.str.714:
	.asciz	"tabarray ix get\n"
	.size	.L.str.714, 17

	.type	.L.str.715,@object      # @.str.715
.L.str.715:
	.asciz	"12 getu32 dup maxstring le{\n"
	.size	.L.str.715, 29

	.type	.L.str.716,@object      # @.str.716
.L.str.716:
	.asciz	"dup 4 mod 0 ne{\n"
	.size	.L.str.716, 17

	.type	.L.str.717,@object      # @.str.717
.L.str.717:
	.asciz	"4 div cvi 1 add 4 mul string/newstring exch def\n"
	.size	.L.str.717, 49

	.type	.L.str.718,@object      # @.str.718
.L.str.718:
	.asciz	"/oldstring tabs ix get def\n"
	.size	.L.str.718, 28

	.type	.L.str.719,@object      # @.str.719
.L.str.719:
	.asciz	"newstring 0 oldstring putinterval\n"
	.size	.L.str.719, 35

	.type	.L.str.720,@object      # @.str.720
.L.str.720:
	.asciz	"0 1 newstring length oldstring length sub 1 sub{\n"
	.size	.L.str.720, 50

	.type	.L.str.721,@object      # @.str.721
.L.str.721:
	.asciz	"newstring exch oldstring length add 0 put\n"
	.size	.L.str.721, 43

	.type	.L.str.722,@object      # @.str.722
.L.str.722:
	.asciz	"tabs ix newstring put\n"
	.size	.L.str.722, 23

	.type	.L.str.723,@object      # @.str.723
.L.str.723:
	.asciz	"dup maxstring idiv maxstring mul sub\n"
	.size	.L.str.723, 38

	.type	.L.str.724,@object      # @.str.724
.L.str.724:
	.asciz	"4 idiv 1 add 4 mul string/newstring exch def\n"
	.size	.L.str.724, 46

	.type	.L.str.725,@object      # @.str.725
.L.str.725:
	.asciz	"tabs ix get\n"
	.size	.L.str.725, 13

	.type	.L.str.726,@object      # @.str.726
.L.str.726:
	.asciz	"dup length 1 sub dup/iy exch def get/oldstring exch def\n"
	.size	.L.str.726, 57

	.type	.L.str.727,@object      # @.str.727
.L.str.727:
	.asciz	"tabs ix get iy newstring put\n"
	.size	.L.str.727, 30

	.type	.L.str.728,@object      # @.str.728
.L.str.728:
	.asciz	"dup 12 getu32 maxstring gt{\n"
	.size	.L.str.728, 29

	.type	.L.str.729,@object      # @.str.729
.L.str.729:
	.asciz	"0 4 getinterval dup(glyf)eq{\n"
	.size	.L.str.729, 30

	.type	.L.str.730,@object      # @.str.730
.L.str.730:
	.asciz	"GetLocaType\n"
	.size	.L.str.730, 13

	.type	.L.str.731,@object      # @.str.731
.L.str.731:
	.asciz	"GetNumGlyphs\n"
	.size	.L.str.731, 14

	.type	.L.str.732,@object      # @.str.732
.L.str.732:
	.asciz	"GetSortedLoca\n"
	.size	.L.str.732, 15

	.type	.L.str.733,@object      # @.str.733
.L.str.733:
	.asciz	"dup tabs exch get\n"
	.size	.L.str.733, 19

	.type	.L.str.734,@object      # @.str.734
.L.str.734:
	.asciz	"SplitGlyf\n"
	.size	.L.str.734, 11

	.type	.L.str.735,@object      # @.str.735
.L.str.735:
	.asciz	"tabs 3 1 roll put\n"
	.size	.L.str.735, 19

	.type	.L.str.736,@object      # @.str.736
.L.str.736:
	.asciz	"(Warning, table )print print( > 64Kb\\n)print\n"
	.size	.L.str.736, 46

	.type	.L.str.737,@object      # @.str.737
.L.str.737:
	.asciz	"/Makesfnts\n"
	.size	.L.str.737, 12

	.type	.L.str.738,@object      # @.str.738
.L.str.738:
	.asciz	"tabs{\n"
	.size	.L.str.738, 7

	.type	.L.str.739,@object      # @.str.739
.L.str.739:
	.asciz	"1 add\n"
	.size	.L.str.739, 7

	.type	.L.str.740,@object      # @.str.740
.L.str.740:
	.asciz	"type/stringtype eq{\n"
	.size	.L.str.740, 21

	.type	.L.str.741,@object      # @.str.741
.L.str.741:
	.asciz	"/TTOffset\n"
	.size	.L.str.741, 11

	.type	.L.str.742,@object      # @.str.742
.L.str.742:
	.asciz	"TableDir length\n"
	.size	.L.str.742, 17

	.type	.L.str.743,@object      # @.str.743
.L.str.743:
	.asciz	"tabarray length 16 mul add\n"
	.size	.L.str.743, 28

	.type	.L.str.744,@object      # @.str.744
.L.str.744:
	.asciz	"exch dup 1 add\n"
	.size	.L.str.744, 16

	.type	.L.str.745,@object      # @.str.745
.L.str.745:
	.asciz	"TTOffset\n"
	.size	.L.str.745, 10

	.type	.L.str.746,@object      # @.str.746
.L.str.746:
	.asciz	"dup 3 1 roll add\n"
	.size	.L.str.746, 18

	.type	.L.str.747,@object      # @.str.747
.L.str.747:
	.asciz	"/TTOffset exch def\n"
	.size	.L.str.747, 20

	.type	.L.str.748,@object      # @.str.748
.L.str.748:
	.asciz	"8 exch putu32\n"
	.size	.L.str.748, 15

	.type	.L.str.749,@object      # @.str.749
.L.str.749:
	.asciz	"exch tabarray 3 1 roll\n"
	.size	.L.str.749, 24

	.type	.L.str.750,@object      # @.str.750
.L.str.750:
	.asciz	"length add\n"
	.size	.L.str.750, 12

	.type	.L.str.751,@object      # @.str.751
.L.str.751:
	.asciz	"array\n"
	.size	.L.str.751, 7

	.type	.L.str.752,@object      # @.str.752
.L.str.752:
	.asciz	"dup 0\n"
	.size	.L.str.752, 7

	.type	.L.str.753,@object      # @.str.753
.L.str.753:
	.asciz	"tables length add\n"
	.size	.L.str.753, 19

	.type	.L.str.754,@object      # @.str.754
.L.str.754:
	.asciz	"string\n"
	.size	.L.str.754, 8

	.type	.L.str.755,@object      # @.str.755
.L.str.755:
	.asciz	"dup 0 TableDir putinterval\n"
	.size	.L.str.755, 28

	.type	.L.str.756,@object      # @.str.756
.L.str.756:
	.asciz	"dup 12 tables putinterval\n"
	.size	.L.str.756, 27

	.type	.L.str.757,@object      # @.str.757
.L.str.757:
	.asciz	"/ix 1 def\n"
	.size	.L.str.757, 11

	.type	.L.str.758,@object      # @.str.758
.L.str.758:
	.asciz	"ix exch\n"
	.size	.L.str.758, 9

	.type	.L.str.759,@object      # @.str.759
.L.str.759:
	.asciz	"put dup\n"
	.size	.L.str.759, 9

	.type	.L.str.760,@object      # @.str.760
.L.str.760:
	.asciz	"/ix ix 1 add def\n"
	.size	.L.str.760, 18

	.type	.L.str.761,@object      # @.str.761
.L.str.761:
	.asciz	"ix exch put dup\n"
	.size	.L.str.761, 17

	.type	.L.str.762,@object      # @.str.762
.L.str.762:
	.asciz	"/MakeType42\n"
	.size	.L.str.762, 13

	.type	.L.str.763,@object      # @.str.763
.L.str.763:
	.asciz	"(MakeType42 beg)=\n"
	.size	.L.str.763, 19

	.type	.L.str.764,@object      # @.str.764
.L.str.764:
	.asciz	"/FontName 1 index/FontName get def\n"
	.size	.L.str.764, 36

	.type	.L.str.765,@object      # @.str.765
.L.str.765:
	.asciz	"/FontType 42 def\n"
	.size	.L.str.765, 18

	.type	.L.str.766,@object      # @.str.766
.L.str.766:
	.asciz	"/FontMatrix[1 0 0 1 0 0]def\n"
	.size	.L.str.766, 29

	.type	.L.str.767,@object      # @.str.767
.L.str.767:
	.asciz	"/FontBBox 1 index/FontBBox get def\n"
	.size	.L.str.767, 36

	.type	.L.str.768,@object      # @.str.768
.L.str.768:
	.asciz	"dup/FontResource get\n"
	.size	.L.str.768, 22

	.type	.L.str.769,@object      # @.str.769
.L.str.769:
	.asciz	"dup/Encoding known{\n"
	.size	.L.str.769, 21

	.type	.L.str.770,@object      # @.str.770
.L.str.770:
	.asciz	"//PDFReader/ObtainEncoding get exec\n"
	.size	.L.str.770, 37

	.type	.L.str.771,@object      # @.str.771
.L.str.771:
	.asciz	"/Encoding get\n"
	.size	.L.str.771, 15

	.type	.L.str.772,@object      # @.str.772
.L.str.772:
	.asciz	"/PDFEncoding exch def\n"
	.size	.L.str.772, 23

	.type	.L.str.773,@object      # @.str.773
.L.str.773:
	.asciz	"/CharStrings 2 index//PDFReader/MakeTTCharStrings get exec def\n"
	.size	.L.str.773, 64

	.type	.L.str.774,@object      # @.str.774
.L.str.774:
	.asciz	"/sfnts 2 index//MakeStreamReader exec\n"
	.size	.L.str.774, 39

	.type	.L.str.775,@object      # @.str.775
.L.str.775:
	.asciz	"ReadTTF\n"
	.size	.L.str.775, 9

	.type	.L.str.776,@object      # @.str.776
.L.str.776:
	.asciz	"ProcessTTData\n"
	.size	.L.str.776, 15

	.type	.L.str.777,@object      # @.str.777
.L.str.777:
	.asciz	"Makesfnts\n"
	.size	.L.str.777, 11

	.type	.L.str.778,@object      # @.str.778
.L.str.778:
	.asciz	"/Encoding StandardEncoding def\n"
	.size	.L.str.778, 32

	.type	.L.str.779,@object      # @.str.779
.L.str.779:
	.asciz	"/PaintType 0 def\n"
	.size	.L.str.779, 18

	.type	.L.str.780,@object      # @.str.780
.L.str.780:
	.asciz	"currentdict end\n"
	.size	.L.str.780, 17

	.type	.L.str.781,@object      # @.str.781
.L.str.781:
	.asciz	"(MakeType42 end)=\n"
	.size	.L.str.781, 19

	.type	.L.str.782,@object      # @.str.782
.L.str.782:
	.asciz	"/GetInstalledFont\n"
	.size	.L.str.782, 19

	.type	.L.str.783,@object      # @.str.783
.L.str.783:
	.asciz	"dup//InstalledFonts exch knownget{\n"
	.size	.L.str.783, 36

	.type	.L.str.784,@object      # @.str.784
.L.str.784:
	.asciz	"dup findfont dup 3 1 roll\n"
	.size	.L.str.784, 27

	.type	.L.str.785,@object      # @.str.785
.L.str.785:
	.asciz	"//InstalledFonts 3 1 roll put\n"
	.size	.L.str.785, 31

	.type	.L.str.786,@object      # @.str.786
.L.str.786:
	.asciz	"/RemoveFontNamePrefix\n"
	.size	.L.str.786, 23

	.type	.L.str.787,@object      # @.str.787
.L.str.787:
	.asciz	"{//=string cvs true\n"
	.size	.L.str.787, 21

	.type	.L.str.788,@object      # @.str.788
.L.str.788:
	.asciz	"0 1 5{\n"
	.size	.L.str.788, 8

	.type	.L.str.789,@object      # @.str.789
.L.str.789:
	.asciz	"2 index exch get//IsUpper exec not{\n"
	.size	.L.str.789, 37

	.type	.L.str.790,@object      # @.str.790
.L.str.790:
	.asciz	"pop false exit\n"
	.size	.L.str.790, 16

	.type	.L.str.791,@object      # @.str.791
.L.str.791:
	.asciz	"{(+)search{\n"
	.size	.L.str.791, 13

	.type	.L.str.792,@object      # @.str.792
.L.str.792:
	.asciz	"/CheckFont\n"
	.size	.L.str.792, 12

	.type	.L.str.793,@object      # @.str.793
.L.str.793:
	.asciz	"{dup/Type get/Font ne{\n"
	.size	.L.str.793, 24

	.type	.L.str.794,@object      # @.str.794
.L.str.794:
	.asciz	"mark(Resource )3 index( must have /Type/Font .)//error exec\n"
	.size	.L.str.794, 61

	.type	.L.str.795,@object      # @.str.795
.L.str.795:
	.asciz	"/CheckEncoding\n"
	.size	.L.str.795, 16

	.type	.L.str.796,@object      # @.str.796
.L.str.796:
	.asciz	"{dup type/nametype ne{\n"
	.size	.L.str.796, 24

	.type	.L.str.797,@object      # @.str.797
.L.str.797:
	.asciz	"dup/Type get/Encoding ne{\n"
	.size	.L.str.797, 27

	.type	.L.str.798,@object      # @.str.798
.L.str.798:
	.asciz	"mark(Resource )3 index( must have /Type/Encoding .)//error exec\n"
	.size	.L.str.798, 65

	.type	.L.str.799,@object      # @.str.799
.L.str.799:
	.asciz	"/ObtainEncoding\n"
	.size	.L.str.799, 17

	.type	.L.str.800,@object      # @.str.800
.L.str.800:
	.asciz	"{dup/Encoding known{\n"
	.size	.L.str.800, 22

	.type	.L.str.801,@object      # @.str.801
.L.str.801:
	.asciz	"dup dup/Encoding//CheckEncoding//ResolveD exec\n"
	.size	.L.str.801, 48

	.type	.L.str.802,@object      # @.str.802
.L.str.802:
	.asciz	"dup type dup/arraytype eq exch/packedarraytype eq or{\n"
	.size	.L.str.802, 55

	.type	.L.str.803,@object      # @.str.803
.L.str.803:
	.asciz	"/Encoding findresource\n"
	.size	.L.str.803, 24

	.type	.L.str.804,@object      # @.str.804
.L.str.804:
	.asciz	"dup/BaseEncoding//knownget exec not{\n"
	.size	.L.str.804, 38

	.type	.L.str.805,@object      # @.str.805
.L.str.805:
	.asciz	"/StandardEncoding\n"
	.size	.L.str.805, 19

	.type	.L.str.806,@object      # @.str.806
.L.str.806:
	.asciz	"/Differences//knownget exec{\n"
	.size	.L.str.806, 30

	.type	.L.str.807,@object      # @.str.807
.L.str.807:
	.asciz	"exch dup length array copy exch\n"
	.size	.L.str.807, 33

	.type	.L.str.808,@object      # @.str.808
.L.str.808:
	.asciz	"dup type/integertype eq{\n"
	.size	.L.str.808, 26

	.type	.L.str.809,@object      # @.str.809
.L.str.809:
	.asciz	"3 copy put pop\n"
	.size	.L.str.809, 16

	.type	.L.str.810,@object      # @.str.810
.L.str.810:
	.asciz	"/Encoding exch put\n"
	.size	.L.str.810, 20

	.type	.L.str.811,@object      # @.str.811
.L.str.811:
	.asciz	"dup/Encoding/StandardEncoding/Encoding findresource put\n"
	.size	.L.str.811, 57

	.type	.L.str.812,@object      # @.str.812
.L.str.812:
	.asciz	"/ObtainMetrics\n"
	.size	.L.str.812, 16

	.type	.L.str.813,@object      # @.str.813
.L.str.813:
	.asciz	"{dup/Widths//knownget exec{\n"
	.size	.L.str.813, 29

	.type	.L.str.814,@object      # @.str.814
.L.str.814:
	.asciz	"1 index/Encoding get\n"
	.size	.L.str.814, 22

	.type	.L.str.815,@object      # @.str.815
.L.str.815:
	.asciz	"256 dict\n"
	.size	.L.str.815, 10

	.type	.L.str.816,@object      # @.str.816
.L.str.816:
	.asciz	"3 index/Subtype get/TrueType eq{\n"
	.size	.L.str.816, 34

	.type	.L.str.817,@object      # @.str.817
.L.str.817:
	.asciz	"1000\n"
	.size	.L.str.817, 6

	.type	.L.str.818,@object      # @.str.818
.L.str.818:
	.asciz	"4 index/MissingWidth//knownget exec not{\n"
	.size	.L.str.818, 42

	.type	.L.str.819,@object      # @.str.819
.L.str.819:
	.asciz	"5 index/FirstChar//knownget exec not{\n"
	.size	.L.str.819, 39

	.type	.L.str.820,@object      # @.str.820
.L.str.820:
	.asciz	"6 5 roll\n"
	.size	.L.str.820, 10

	.type	.L.str.821,@object      # @.str.821
.L.str.821:
	.asciz	"exch 3 index add\n"
	.size	.L.str.821, 18

	.type	.L.str.822,@object      # @.str.822
.L.str.822:
	.asciz	"7 index exch get\n"
	.size	.L.str.822, 18

	.type	.L.str.823,@object      # @.str.823
.L.str.823:
	.asciz	"dup dup null ne exch/.notdef ne and{\n"
	.size	.L.str.823, 38

	.type	.L.str.824,@object      # @.str.824
.L.str.824:
	.asciz	"6 index 3 1 roll exch\n"
	.size	.L.str.824, 23

	.type	.L.str.825,@object      # @.str.825
.L.str.825:
	.asciz	"6 index div\n"
	.size	.L.str.825, 13

	.type	.L.str.826,@object      # @.str.826
.L.str.826:
	.asciz	"3 copy pop//knownget exec{\n"
	.size	.L.str.826, 28

	.type	.L.str.827,@object      # @.str.827
.L.str.827:
	.asciz	"0 eq\n"
	.size	.L.str.827, 6

	.type	.L.str.828,@object      # @.str.828
.L.str.828:
	.asciz	"{put\n"
	.size	.L.str.828, 6

	.type	.L.str.829,@object      # @.str.829
.L.str.829:
	.asciz	"pop pop pop\n"
	.size	.L.str.829, 13

	.type	.L.str.830,@object      # @.str.830
.L.str.830:
	.asciz	"pop pop pop pop exch pop\n"
	.size	.L.str.830, 26

	.type	.L.str.831,@object      # @.str.831
.L.str.831:
	.asciz	"1 index exch/Metrics exch put\n"
	.size	.L.str.831, 31

	.type	.L.str.832,@object      # @.str.832
.L.str.832:
	.asciz	"dup/MissingWidth//knownget exec{\n"
	.size	.L.str.832, 34

	.type	.L.str.833,@object      # @.str.833
.L.str.833:
	.asciz	"2 index/Encoding get{\n"
	.size	.L.str.833, 23

	.type	.L.str.834,@object      # @.str.834
.L.str.834:
	.asciz	"3 copy 3 2 roll put\n"
	.size	.L.str.834, 21

	.type	.L.str.835,@object      # @.str.835
.L.str.835:
	.asciz	"/NotDef\n"
	.size	.L.str.835, 9

	.type	.L.str.836,@object      # @.str.836
.L.str.836:
	.asciz	"FontMatrix aload pop pop pop exch pop exch pop\n"
	.size	.L.str.836, 48

	.type	.L.str.837,@object      # @.str.837
.L.str.837:
	.asciz	"1 exch div exch\n"
	.size	.L.str.837, 17

	.type	.L.str.838,@object      # @.str.838
.L.str.838:
	.asciz	"1 index 0 setcharwidth\n"
	.size	.L.str.838, 24

	.type	.L.str.839,@object      # @.str.839
.L.str.839:
	.asciz	"0 setlinewidth\n"
	.size	.L.str.839, 16

	.type	.L.str.840,@object      # @.str.840
.L.str.840:
	.asciz	"0 0 moveto\n"
	.size	.L.str.840, 12

	.type	.L.str.841,@object      # @.str.841
.L.str.841:
	.asciz	"2 copy rlineto\n"
	.size	.L.str.841, 16

	.type	.L.str.842,@object      # @.str.842
.L.str.842:
	.asciz	"1 index 0 rlineto\n"
	.size	.L.str.842, 19

	.type	.L.str.843,@object      # @.str.843
.L.str.843:
	.asciz	"neg exch neg exch rlineto\n"
	.size	.L.str.843, 27

	.type	.L.str.844,@object      # @.str.844
.L.str.844:
	.asciz	"closepath stroke\n"
	.size	.L.str.844, 18

	.type	.L.str.845,@object      # @.str.845
.L.str.845:
	.asciz	"/SaveResourcesToStack{"
	.size	.L.str.845, 23

	.type	.L.str.846,@object      # @.str.846
.L.str.846:
	.asciz	"[//PDFReader/OldResources known{"
	.size	.L.str.846, 33

	.type	.L.str.847,@object      # @.str.847
.L.str.847:
	.asciz	"//PDFReader/OldResources get}{null}ifelse\n"
	.size	.L.str.847, 43

	.type	.L.str.848,@object      # @.str.848
.L.str.848:
	.asciz	"//PDFReader/CurrentObject get/Context get/Resources get]"
	.size	.L.str.848, 57

	.type	.L.str.849,@object      # @.str.849
.L.str.849:
	.asciz	"//PDFReader/OldResources 3 -1 roll put}bind def\n"
	.size	.L.str.849, 49

	.type	.L.str.850,@object      # @.str.850
.L.str.850:
	.asciz	"/RestoreResourcesFromStack{"
	.size	.L.str.850, 28

	.type	.L.str.851,@object      # @.str.851
.L.str.851:
	.asciz	"//PDFReader/OldResources get dup\n"
	.size	.L.str.851, 34

	.type	.L.str.852,@object      # @.str.852
.L.str.852:
	.asciz	"0 get//PDFReader/OldResources 3 -1 roll put\n"
	.size	.L.str.852, 45

	.type	.L.str.853,@object      # @.str.853
.L.str.853:
	.asciz	"1 get//PDFReader/CurrentObject get/Context get/Resources 3 -1 roll put"
	.size	.L.str.853, 71

	.type	.L.str.854,@object      # @.str.854
.L.str.854:
	.asciz	"/BuildChar\n"
	.size	.L.str.854, 12

	.type	.L.str.855,@object      # @.str.855
.L.str.855:
	.asciz	"(BuildChar )print dup//=only exec( )print\n"
	.size	.L.str.855, 43

	.type	.L.str.856,@object      # @.str.856
.L.str.856:
	.asciz	"exch begin\n"
	.size	.L.str.856, 12

	.type	.L.str.857,@object      # @.str.857
.L.str.857:
	.asciz	"Encoding exch get\n"
	.size	.L.str.857, 19

	.type	.L.str.858,@object      # @.str.858
.L.str.858:
	.asciz	"dup =\n"
	.size	.L.str.858, 7

	.type	.L.str.859,@object      # @.str.859
.L.str.859:
	.asciz	"pop//NotDef exec\n"
	.size	.L.str.859, 18

	.type	.L.str.860,@object      # @.str.860
.L.str.860:
	.asciz	"CharProcs exch//knownget exec{"
	.size	.L.str.860, 31

	.type	.L.str.861,@object      # @.str.861
.L.str.861:
	.asciz	"currentfont/Font get/Resources//knownget exec{"
	.size	.L.str.861, 47

	.type	.L.str.862,@object      # @.str.862
.L.str.862:
	.asciz	"exec SaveResourcesToStack"
	.size	.L.str.862, 26

	.type	.L.str.863,@object      # @.str.863
.L.str.863:
	.asciz	"//PDFReader/CurrentObject get/Context get"
	.size	.L.str.863, 42

	.type	.L.str.864,@object      # @.str.864
.L.str.864:
	.asciz	"/Resources 3 -1 roll put"
	.size	.L.str.864, 25

	.type	.L.str.865,@object      # @.str.865
.L.str.865:
	.asciz	"//RunDelayedStream exec RestoreResourcesFromStack"
	.size	.L.str.865, 50

	.type	.L.str.866,@object      # @.str.866
.L.str.866:
	.asciz	"}{//RunDelayedStream exec}ifelse"
	.size	.L.str.866, 33

	.type	.L.str.867,@object      # @.str.867
.L.str.867:
	.asciz	"//NotDef exec\n"
	.size	.L.str.867, 15

	.type	.L.str.868,@object      # @.str.868
.L.str.868:
	.asciz	"/printdict\n"
	.size	.L.str.868, 12

	.type	.L.str.869,@object      # @.str.869
.L.str.869:
	.asciz	"{(<<)=\n"
	.size	.L.str.869, 8

	.type	.L.str.870,@object      # @.str.870
.L.str.870:
	.asciz	"{exch = ==}forall\n"
	.size	.L.str.870, 19

	.type	.L.str.871,@object      # @.str.871
.L.str.871:
	.asciz	"/printfont\n"
	.size	.L.str.871, 12

	.type	.L.str.872,@object      # @.str.872
.L.str.872:
	.asciz	"exch dup =\n"
	.size	.L.str.872, 12

	.type	.L.str.873,@object      # @.str.873
.L.str.873:
	.asciz	"dup/Encoding eq{\n"
	.size	.L.str.873, 18

	.type	.L.str.874,@object      # @.str.874
.L.str.874:
	.asciz	"pop =\n"
	.size	.L.str.874, 7

	.type	.L.str.875,@object      # @.str.875
.L.str.875:
	.asciz	"dup/FontInfo eq exch/Private eq or{\n"
	.size	.L.str.875, 37

	.type	.L.str.876,@object      # @.str.876
.L.str.876:
	.asciz	"//printdict exec\n"
	.size	.L.str.876, 18

	.type	.L.str.877,@object      # @.str.877
.L.str.877:
	.asciz	"==\n"
	.size	.L.str.877, 4

	.type	.L.str.878,@object      # @.str.878
.L.str.878:
	.asciz	"/ScaleMetrics\n"
	.size	.L.str.878, 15

	.type	.L.str.879,@object      # @.str.879
.L.str.879:
	.asciz	"{1 index{\n"
	.size	.L.str.879, 11

	.type	.L.str.880,@object      # @.str.880
.L.str.880:
	.asciz	"2 index div\n"
	.size	.L.str.880, 13

	.type	.L.str.881,@object      # @.str.881
.L.str.881:
	.asciz	"3 index\n"
	.size	.L.str.881, 9

	.type	.L.str.882,@object      # @.str.882
.L.str.882:
	.asciz	"3 1 roll put\n"
	.size	.L.str.882, 14

	.type	.L.str.883,@object      # @.str.883
.L.str.883:
	.asciz	"/ResolveAndSetFontAux\n"
	.size	.L.str.883, 23

	.type	.L.str.884,@object      # @.str.884
.L.str.884:
	.asciz	"{exch dup\n"
	.size	.L.str.884, 11

	.type	.L.str.885,@object      # @.str.885
.L.str.885:
	.asciz	"//PDFReader/CurrentObject get/Context get/Resources get\n"
	.size	.L.str.885, 57

	.type	.L.str.886,@object      # @.str.886
.L.str.886:
	.asciz	"/Font//DoNothing//ResolveD exec\n"
	.size	.L.str.886, 33

	.type	.L.str.887,@object      # @.str.887
.L.str.887:
	.asciz	"exch//CheckFont//ResolveD exec\n"
	.size	.L.str.887, 32

	.type	.L.str.888,@object      # @.str.888
.L.str.888:
	.asciz	"dup/Font//knownget exec{\n"
	.size	.L.str.888, 26

	.type	.L.str.889,@object      # @.str.889
.L.str.889:
	.asciz	"dup/Subtype get dup dup/Type1 eq exch/TrueType eq or exch/MMType1 eq or{\n"
	.size	.L.str.889, 74

	.type	.L.str.890,@object      # @.str.890
.L.str.890:
	.asciz	"dup/BaseFont get\n"
	.size	.L.str.890, 18

	.type	.L.str.891,@object      # @.str.891
.L.str.891:
	.asciz	"//RemoveFontNamePrefix exec\n"
	.size	.L.str.891, 29

	.type	.L.str.892,@object      # @.str.892
.L.str.892:
	.asciz	"(Font )print dup =\n"
	.size	.L.str.892, 20

	.type	.L.str.893,@object      # @.str.893
.L.str.893:
	.asciz	"1 index/FontDescriptor known{\n"
	.size	.L.str.893, 31

	.type	.L.str.894,@object      # @.str.894
.L.str.894:
	.asciz	"(Font from a font descriptor.)=\n"
	.size	.L.str.894, 33

	.type	.L.str.895,@object      # @.str.895
.L.str.895:
	.asciz	"1 index\n"
	.size	.L.str.895, 9

	.type	.L.str.896,@object      # @.str.896
.L.str.896:
	.asciz	"/FontDescriptor//DoNothing//ResolveD exec\n"
	.size	.L.str.896, 43

	.type	.L.str.897,@object      # @.str.897
.L.str.897:
	.asciz	"/Font//knownget exec{\n"
	.size	.L.str.897, 23

	.type	.L.str.898,@object      # @.str.898
.L.str.898:
	.asciz	"(Font descriptor has no Font resolved.)=\n"
	.size	.L.str.898, 42

	.type	.L.str.899,@object      # @.str.899
.L.str.899:
	.asciz	"//GetInstalledFont exec\n"
	.size	.L.str.899, 25

	.type	.L.str.900,@object      # @.str.900
.L.str.900:
	.asciz	"dup/Encoding known not{\n"
	.size	.L.str.900, 25

	.type	.L.str.901,@object      # @.str.901
.L.str.901:
	.asciz	"1 index/Encoding get 1 index exch/Encoding exch put\n"
	.size	.L.str.901, 53

	.type	.L.str.902,@object      # @.str.902
.L.str.902:
	.asciz	"//ObtainEncoding exec\n"
	.size	.L.str.902, 23

	.type	.L.str.903,@object      # @.str.903
.L.str.903:
	.asciz	"//ObtainMetrics exec\n"
	.size	.L.str.903, 22

	.type	.L.str.904,@object      # @.str.904
.L.str.904:
	.asciz	"dup length dict copy\n"
	.size	.L.str.904, 22

	.type	.L.str.905,@object      # @.str.905
.L.str.905:
	.asciz	"dup 2 index/Encoding get\n"
	.size	.L.str.905, 26

	.type	.L.str.906,@object      # @.str.906
.L.str.906:
	.asciz	"1 index/Metrics//knownget exec{\n"
	.size	.L.str.906, 33

	.type	.L.str.907,@object      # @.str.907
.L.str.907:
	.asciz	"2 index/Subtype get/TrueType ne{\n"
	.size	.L.str.907, 34

	.type	.L.str.908,@object      # @.str.908
.L.str.908:
	.asciz	"1 index/FontMatrix get 0 get\n"
	.size	.L.str.908, 30

	.type	.L.str.909,@object      # @.str.909
.L.str.909:
	.asciz	"dup 0 eq{\n"
	.size	.L.str.909, 11

	.type	.L.str.910,@object      # @.str.910
.L.str.910:
	.asciz	"1 index/FontMatrix get 1 get\n"
	.size	.L.str.910, 30

	.type	.L.str.911,@object      # @.str.911
.L.str.911:
	.asciz	"dup 0 eq{pop 1}if\n"
	.size	.L.str.911, 19

	.type	.L.str.912,@object      # @.str.912
.L.str.912:
	.asciz	"0.001 div\n"
	.size	.L.str.912, 11

	.type	.L.str.913,@object      # @.str.913
.L.str.913:
	.asciz	"//ScaleMetrics exec\n"
	.size	.L.str.913, 21

	.type	.L.str.914,@object      # @.str.914
.L.str.914:
	.asciz	"1 index/sfnts known not{\n"
	.size	.L.str.914, 26

	.type	.L.str.915,@object      # @.str.915
.L.str.915:
	.asciz	"1 index/BaseFont get\n"
	.size	.L.str.915, 22

	.type	.L.str.916,@object      # @.str.916
.L.str.916:
	.asciz	"dup/FID undef\n"
	.size	.L.str.916, 15

	.type	.L.str.917,@object      # @.str.917
.L.str.917:
	.asciz	"dup/UniqueID undef\n"
	.size	.L.str.917, 20

	.type	.L.str.918,@object      # @.str.918
.L.str.918:
	.asciz	"definefont\n"
	.size	.L.str.918, 12

	.type	.L.str.919,@object      # @.str.919
.L.str.919:
	.asciz	"dup/Subtype get/Type3 eq{\n"
	.size	.L.str.919, 27

	.type	.L.str.920,@object      # @.str.920
.L.str.920:
	.asciz	"2 copy exch/FontName exch put\n"
	.size	.L.str.920, 31

	.type	.L.str.921,@object      # @.str.921
.L.str.921:
	.asciz	"dup/CharProcs get//ResolveDict exec\n"
	.size	.L.str.921, 37

	.type	.L.str.922,@object      # @.str.922
.L.str.922:
	.asciz	"dup/FontType 3 put\n"
	.size	.L.str.922, 20

	.type	.L.str.923,@object      # @.str.923
.L.str.923:
	.asciz	"dup/BuildChar//BuildChar put\n"
	.size	.L.str.923, 30

	.type	.L.str.924,@object      # @.str.924
.L.str.924:
	.asciz	"dup dup/Font exch put\n"
	.size	.L.str.924, 23

	.type	.L.str.925,@object      # @.str.925
.L.str.925:
	.asciz	"2 copy ne{\n"
	.size	.L.str.925, 12

	.type	.L.str.926,@object      # @.str.926
.L.str.926:
	.asciz	"2 copy/Font exch put\n"
	.size	.L.str.926, 22

	.type	.L.str.927,@object      # @.str.927
.L.str.927:
	.asciz	"dup/Subtype get/Type0 eq{\n"
	.size	.L.str.927, 27

	.type	.L.str.928,@object      # @.str.928
.L.str.928:
	.asciz	"dup/Subtype get/CIDFontType0 eq{\n"
	.size	.L.str.928, 34

	.type	.L.str.929,@object      # @.str.929
.L.str.929:
	.asciz	"dup/Subtype get/CIDFontType2 eq{\n"
	.size	.L.str.929, 34

	.type	.L.str.930,@object      # @.str.930
.L.str.930:
	.asciz	"mark(Unknown font type )2 index/Subtype get//error exec\n"
	.size	.L.str.930, 57

	.type	.L.str.931,@object      # @.str.931
.L.str.931:
	.asciz	"exch scalefont setfont\n"
	.size	.L.str.931, 24

	.type	.L.str.932,@object      # @.str.932
.L.str.932:
	.asciz	"/ResolveAndSetFont\n"
	.size	.L.str.932, 20

	.type	.L.str.933,@object      # @.str.933
.L.str.933:
	.asciz	"//ResolveAndSetFontAux exec\n"
	.size	.L.str.933, 29

	.type	.L.str.934,@object      # @.str.934
.L.str.934:
	.asciz	"/.knownget\n"
	.size	.L.str.934, 12

	.type	.L.str.935,@object      # @.str.935
.L.str.935:
	.asciz	"{2 copy known{\n"
	.size	.L.str.935, 16

	.type	.L.str.936,@object      # @.str.936
.L.str.936:
	.asciz	"/.min\n"
	.size	.L.str.936, 7

	.type	.L.str.937,@object      # @.str.937
.L.str.937:
	.asciz	"{2 copy lt{\n"
	.size	.L.str.937, 13

	.type	.L.str.938,@object      # @.str.938
.L.str.938:
	.asciz	"/.max\n"
	.size	.L.str.938, 7

	.type	.L.str.939,@object      # @.str.939
.L.str.939:
	.asciz	"{2 copy gt{\n"
	.size	.L.str.939, 13

	.type	.L.str.940,@object      # @.str.940
.L.str.940:
	.asciz	"/.dicttomark\n"
	.size	.L.str.940, 14

	.type	.L.str.941,@object      # @.str.941
.L.str.941:
	.asciz	"{>>\n"
	.size	.L.str.941, 5

	.type	.L.str.942,@object      # @.str.942
.L.str.942:
	.asciz	"/getu16{\n"
	.size	.L.str.942, 10

	.type	.L.str.943,@object      # @.str.943
.L.str.943:
	.asciz	"2 copy get 8 bitshift 3 1 roll 1 add get add\n"
	.size	.L.str.943, 46

	.type	.L.str.944,@object      # @.str.944
.L.str.944:
	.asciz	"/gets16{\n"
	.size	.L.str.944, 10

	.type	.L.str.945,@object      # @.str.945
.L.str.945:
	.asciz	"getu16 16#8000 xor 16#8000 sub\n"
	.size	.L.str.945, 32

	.type	.L.str.946,@object      # @.str.946
.L.str.946:
	.asciz	"/getu32{\n"
	.size	.L.str.946, 10

	.type	.L.str.947,@object      # @.str.947
.L.str.947:
	.asciz	"2 copy getu16 16 bitshift 3 1 roll 2 add getu16 add\n"
	.size	.L.str.947, 53

	.type	.L.str.948,@object      # @.str.948
.L.str.948:
	.asciz	"/gets32{\n"
	.size	.L.str.948, 10

	.type	.L.str.949,@object      # @.str.949
.L.str.949:
	.asciz	"2 copy gets16 16 bitshift 3 1 roll 2 add getu16 add\n"
	.size	.L.str.949, 53

	.type	.L.str.950,@object      # @.str.950
.L.str.950:
	.asciz	"/cmapformats mark\n"
	.size	.L.str.950, 19

	.type	.L.str.951,@object      # @.str.951
.L.str.951:
	.asciz	"0{\n"
	.size	.L.str.951, 4

	.type	.L.str.952,@object      # @.str.952
.L.str.952:
	.asciz	"6 256 getinterval{}forall 256 packedarray\n"
	.size	.L.str.952, 43

	.type	.L.str.953,@object      # @.str.953
.L.str.953:
	.asciz	"2{\n"
	.size	.L.str.953, 4

	.type	.L.str.954,@object      # @.str.954
.L.str.954:
	.asciz	"/sHK_sz 2 def\n"
	.size	.L.str.954, 15

	.type	.L.str.955,@object      # @.str.955
.L.str.955:
	.asciz	"/sH_sz 8 def\n"
	.size	.L.str.955, 14

	.type	.L.str.956,@object      # @.str.956
.L.str.956:
	.asciz	"dup 2 getu16/cmapf2_tblen exch def\n"
	.size	.L.str.956, 36

	.type	.L.str.957,@object      # @.str.957
.L.str.957:
	.asciz	"dup 4 getu16/cmapf2_lang exch def\n"
	.size	.L.str.957, 35

	.type	.L.str.958,@object      # @.str.958
.L.str.958:
	.asciz	"dup 6 256 sHK_sz mul getinterval/sHKs exch def\n"
	.size	.L.str.958, 48

	.type	.L.str.959,@object      # @.str.959
.L.str.959:
	.asciz	"0 1 255{\n"
	.size	.L.str.959, 10

	.type	.L.str.960,@object      # @.str.960
.L.str.960:
	.asciz	"sHKs exch\n"
	.size	.L.str.960, 11

	.type	.L.str.961,@object      # @.str.961
.L.str.961:
	.asciz	"2 mul getu16\n"
	.size	.L.str.961, 14

	.type	.L.str.962,@object      # @.str.962
.L.str.962:
	.asciz	"lt{exch}if pop\n"
	.size	.L.str.962, 16

	.type	.L.str.963,@object      # @.str.963
.L.str.963:
	.asciz	"/sH_len exch def\n"
	.size	.L.str.963, 18

	.type	.L.str.964,@object      # @.str.964
.L.str.964:
	.asciz	"dup 6 256 sHK_sz mul add\n"
	.size	.L.str.964, 26

	.type	.L.str.965,@object      # @.str.965
.L.str.965:
	.asciz	"cmapf2_tblen 1 index sub getinterval\n"
	.size	.L.str.965, 38

	.type	.L.str.966,@object      # @.str.966
.L.str.966:
	.asciz	"/sH_gIA exch def\n"
	.size	.L.str.966, 18

	.type	.L.str.967,@object      # @.str.967
.L.str.967:
	.asciz	"/cmapf2_glyph_array 65535 array def\n"
	.size	.L.str.967, 37

	.type	.L.str.968,@object      # @.str.968
.L.str.968:
	.asciz	"/.cmapf2_putGID{\n"
	.size	.L.str.968, 18

	.type	.L.str.969,@object      # @.str.969
.L.str.969:
	.asciz	"/cmapf2_ch cmapf2_ch_hi 8 bitshift cmapf2_ch_lo add def\n"
	.size	.L.str.969, 57

	.type	.L.str.970,@object      # @.str.970
.L.str.970:
	.asciz	"firstCode cmapf2_ch_lo le\n"
	.size	.L.str.970, 27

	.type	.L.str.971,@object      # @.str.971
.L.str.971:
	.asciz	"cmapf2_ch_lo firstCode entryCount add lt\n"
	.size	.L.str.971, 42

	.type	.L.str.972,@object      # @.str.972
.L.str.972:
	.asciz	"and{\n"
	.size	.L.str.972, 6

	.type	.L.str.973,@object      # @.str.973
.L.str.973:
	.asciz	"sH_offset idRangeOffset add\n"
	.size	.L.str.973, 29

	.type	.L.str.974,@object      # @.str.974
.L.str.974:
	.asciz	"cmapf2_ch_lo firstCode sub 2 mul\n"
	.size	.L.str.974, 34

	.type	.L.str.975,@object      # @.str.975
.L.str.975:
	.asciz	"add 6 add\n"
	.size	.L.str.975, 11

	.type	.L.str.976,@object      # @.str.976
.L.str.976:
	.asciz	"sH_gIA exch getu16\n"
	.size	.L.str.976, 20

	.type	.L.str.977,@object      # @.str.977
.L.str.977:
	.asciz	"idDelta add\n"
	.size	.L.str.977, 13

	.type	.L.str.978,@object      # @.str.978
.L.str.978:
	.asciz	"cmapf2_glyph_array exch cmapf2_ch exch put\n"
	.size	.L.str.978, 44

	.type	.L.str.979,@object      # @.str.979
.L.str.979:
	.asciz	"16#00 1 16#ff{\n"
	.size	.L.str.979, 16

	.type	.L.str.980,@object      # @.str.980
.L.str.980:
	.asciz	"/cmapf2_ch_hi exch def\n"
	.size	.L.str.980, 24

	.type	.L.str.981,@object      # @.str.981
.L.str.981:
	.asciz	"sHKs cmapf2_ch_hi sHK_sz mul getu16\n"
	.size	.L.str.981, 37

	.type	.L.str.982,@object      # @.str.982
.L.str.982:
	.asciz	"/sH_offset exch def\n"
	.size	.L.str.982, 21

	.type	.L.str.983,@object      # @.str.983
.L.str.983:
	.asciz	"sH_gIA sH_offset sH_sz getinterval\n"
	.size	.L.str.983, 36

	.type	.L.str.984,@object      # @.str.984
.L.str.984:
	.asciz	"dup 0 getu16/firstCode exch def\n"
	.size	.L.str.984, 33

	.type	.L.str.985,@object      # @.str.985
.L.str.985:
	.asciz	"dup 2 getu16/entryCount exch def\n"
	.size	.L.str.985, 34

	.type	.L.str.986,@object      # @.str.986
.L.str.986:
	.asciz	"dup 4 gets16/idDelta exch def\n"
	.size	.L.str.986, 31

	.type	.L.str.987,@object      # @.str.987
.L.str.987:
	.asciz	"dup 6 getu16/idRangeOffset exch def\n"
	.size	.L.str.987, 37

	.type	.L.str.988,@object      # @.str.988
.L.str.988:
	.asciz	"sH_offset 0 eq{\n"
	.size	.L.str.988, 17

	.type	.L.str.989,@object      # @.str.989
.L.str.989:
	.asciz	"/cmapf2_ch_lo cmapf2_ch_hi def\n"
	.size	.L.str.989, 32

	.type	.L.str.990,@object      # @.str.990
.L.str.990:
	.asciz	"/cmapf2_ch_hi 0 def\n"
	.size	.L.str.990, 21

	.type	.L.str.991,@object      # @.str.991
.L.str.991:
	.asciz	".cmapf2_putGID\n"
	.size	.L.str.991, 16

	.type	.L.str.992,@object      # @.str.992
.L.str.992:
	.asciz	"/cmapf2_ch_lo exch def\n"
	.size	.L.str.992, 24

	.type	.L.str.993,@object      # @.str.993
.L.str.993:
	.asciz	"0 1 cmapf2_glyph_array length 1 sub{\n"
	.size	.L.str.993, 38

	.type	.L.str.994,@object      # @.str.994
.L.str.994:
	.asciz	"dup cmapf2_glyph_array exch get\n"
	.size	.L.str.994, 33

	.type	.L.str.995,@object      # @.str.995
.L.str.995:
	.asciz	"null eq{cmapf2_glyph_array exch 0 put}{pop}ifelse\n"
	.size	.L.str.995, 51

	.type	.L.str.996,@object      # @.str.996
.L.str.996:
	.asciz	"cmapf2_glyph_array\n"
	.size	.L.str.996, 20

	.type	.L.str.997,@object      # @.str.997
.L.str.997:
	.asciz	"4{\n"
	.size	.L.str.997, 4

	.type	.L.str.998,@object      # @.str.998
.L.str.998:
	.asciz	"/etab exch def\n"
	.size	.L.str.998, 16

	.type	.L.str.999,@object      # @.str.999
.L.str.999:
	.asciz	"/nseg2 etab 6 getu16 def\n"
	.size	.L.str.999, 26

	.type	.L.str.1000,@object     # @.str.1000
.L.str.1000:
	.asciz	"14/endc etab 2 index nseg2 getinterval def\n"
	.size	.L.str.1000, 44

	.type	.L.str.1001,@object     # @.str.1001
.L.str.1001:
	.asciz	"2 add\n"
	.size	.L.str.1001, 7

	.type	.L.str.1002,@object     # @.str.1002
.L.str.1002:
	.asciz	"nseg2 add/startc etab 2 index nseg2 getinterval def\n"
	.size	.L.str.1002, 53

	.type	.L.str.1003,@object     # @.str.1003
.L.str.1003:
	.asciz	"nseg2 add/iddelta etab 2 index nseg2 getinterval def\n"
	.size	.L.str.1003, 54

	.type	.L.str.1004,@object     # @.str.1004
.L.str.1004:
	.asciz	"nseg2 add/idroff etab 2 index nseg2 getinterval def\n"
	.size	.L.str.1004, 53

	.type	.L.str.1005,@object     # @.str.1005
.L.str.1005:
	.asciz	"/firstcode startc 0 getu16 16#ff00 and dup 16#f000 ne{pop 0}if def\n"
	.size	.L.str.1005, 68

	.type	.L.str.1006,@object     # @.str.1006
.L.str.1006:
	.asciz	"/lastcode firstcode def\n"
	.size	.L.str.1006, 25

	.type	.L.str.1007,@object     # @.str.1007
.L.str.1007:
	.asciz	"/striptopbyte false def\n"
	.size	.L.str.1007, 25

	.type	.L.str.1008,@object     # @.str.1008
.L.str.1008:
	.asciz	"/putglyph{\n"
	.size	.L.str.1008, 12

	.type	.L.str.1009,@object     # @.str.1009
.L.str.1009:
	.asciz	"glyphs code 3 -1 roll put/code code 1 add def\n"
	.size	.L.str.1009, 47

	.type	.L.str.1010,@object     # @.str.1010
.L.str.1010:
	.asciz	"/numcodes 0 def/glyphs 0 0 2 nseg2 3 sub{\n"
	.size	.L.str.1010, 43

	.type	.L.str.1011,@object     # @.str.1011
.L.str.1011:
	.asciz	"/i2 exch def\n"
	.size	.L.str.1011, 14

	.type	.L.str.1012,@object     # @.str.1012
.L.str.1012:
	.asciz	"/scode startc i2 getu16 def\n"
	.size	.L.str.1012, 29

	.type	.L.str.1013,@object     # @.str.1013
.L.str.1013:
	.asciz	"/ecode endc i2 getu16 def\n"
	.size	.L.str.1013, 27

	.type	.L.str.1014,@object     # @.str.1014
.L.str.1014:
	.asciz	"ecode lastcode gt {\n"
	.size	.L.str.1014, 21

	.type	.L.str.1015,@object     # @.str.1015
.L.str.1015:
	.asciz	"/lastcode ecode def\n"
	.size	.L.str.1015, 21

	.type	.L.str.1016,@object     # @.str.1016
.L.str.1016:
	.asciz	"}for pop\n"
	.size	.L.str.1016, 10

	.type	.L.str.1017,@object     # @.str.1017
.L.str.1017:
	.asciz	"firstcode 16#f000 ge lastcode firstcode sub 255 le and {\n"
	.size	.L.str.1017, 58

	.type	.L.str.1018,@object     # @.str.1018
.L.str.1018:
	.asciz	"lastcode 255 and\n"
	.size	.L.str.1018, 18

	.type	.L.str.1019,@object     # @.str.1019
.L.str.1019:
	.asciz	"/striptopbyte true def\n"
	.size	.L.str.1019, 24

	.type	.L.str.1020,@object     # @.str.1020
.L.str.1020:
	.asciz	"} {\n"
	.size	.L.str.1020, 5

	.type	.L.str.1021,@object     # @.str.1021
.L.str.1021:
	.asciz	"lastcode\n"
	.size	.L.str.1021, 10

	.type	.L.str.1022,@object     # @.str.1022
.L.str.1022:
	.asciz	"array def\n"
	.size	.L.str.1022, 11

	.type	.L.str.1023,@object     # @.str.1023
.L.str.1023:
	.asciz	"glyphs length 1024 ge{\n"
	.size	.L.str.1023, 24

	.type	.L.str.1024,@object     # @.str.1024
.L.str.1024:
	.asciz	".array1024z 0 1024 glyphs length 1023 sub{glyphs exch 2 index putinterval}for\n"
	.size	.L.str.1024, 79

	.type	.L.str.1025,@object     # @.str.1025
.L.str.1025:
	.asciz	"glyphs dup length 1024 sub 3 -1 roll\n"
	.size	.L.str.1025, 38

	.type	.L.str.1026,@object     # @.str.1026
.L.str.1026:
	.asciz	"0 1 glyphs length 1 sub{glyphs exch 0 put}for\n"
	.size	.L.str.1026, 47

	.type	.L.str.1027,@object     # @.str.1027
.L.str.1027:
	.asciz	"/numcodes 0 def/code 0 def\n"
	.size	.L.str.1027, 28

	.type	.L.str.1028,@object     # @.str.1028
.L.str.1028:
	.asciz	"0 2 nseg2 3 sub{\n"
	.size	.L.str.1028, 18

	.type	.L.str.1029,@object     # @.str.1029
.L.str.1029:
	.asciz	"numcodes scode firstcode sub\n"
	.size	.L.str.1029, 30

	.type	.L.str.1030,@object     # @.str.1030
.L.str.1030:
	.asciz	"exch sub 0 .max dup/code exch code exch add def\n"
	.size	.L.str.1030, 49

	.type	.L.str.1031,@object     # @.str.1031
.L.str.1031:
	.asciz	"ecode scode sub 1 add add numcodes add/numcodes exch def\n"
	.size	.L.str.1031, 58

	.type	.L.str.1032,@object     # @.str.1032
.L.str.1032:
	.asciz	"/delta iddelta i2 gets16 def\n"
	.size	.L.str.1032, 30

	.type	.L.str.1033,@object     # @.str.1033
.L.str.1033:
	.asciz	"TTFDEBUG{\n"
	.size	.L.str.1033, 11

	.type	.L.str.1034,@object     # @.str.1034
.L.str.1034:
	.asciz	"(scode=)print scode =only\n"
	.size	.L.str.1034, 27

	.type	.L.str.1035,@object     # @.str.1035
.L.str.1035:
	.asciz	"( ecode=)print ecode =only\n"
	.size	.L.str.1035, 28

	.type	.L.str.1036,@object     # @.str.1036
.L.str.1036:
	.asciz	"( delta=)print delta =only\n"
	.size	.L.str.1036, 28

	.type	.L.str.1037,@object     # @.str.1037
.L.str.1037:
	.asciz	"( droff=)print idroff i2 getu16 =\n"
	.size	.L.str.1037, 35

	.type	.L.str.1038,@object     # @.str.1038
.L.str.1038:
	.asciz	"idroff i2 getu16 dup 0 eq{\n"
	.size	.L.str.1038, 28

	.type	.L.str.1039,@object     # @.str.1039
.L.str.1039:
	.asciz	"pop scode delta add 65535 and 1 ecode delta add 65535 and\n"
	.size	.L.str.1039, 59

	.type	.L.str.1040,@object     # @.str.1040
.L.str.1040:
	.asciz	"striptopbyte {\n"
	.size	.L.str.1040, 16

	.type	.L.str.1041,@object     # @.str.1041
.L.str.1041:
	.asciz	"/code scode 255 and def\n"
	.size	.L.str.1041, 25

	.type	.L.str.1042,@object     # @.str.1042
.L.str.1042:
	.asciz	"/code scode def\n"
	.size	.L.str.1042, 17

	.type	.L.str.1043,@object     # @.str.1043
.L.str.1043:
	.asciz	"} ifelse\n"
	.size	.L.str.1043, 10

	.type	.L.str.1044,@object     # @.str.1044
.L.str.1044:
	.asciz	"{putglyph}for\n"
	.size	.L.str.1044, 15

	.type	.L.str.1045,@object     # @.str.1045
.L.str.1045:
	.asciz	"/gloff exch 14 nseg2 3 mul add 2 add i2 add add def\n"
	.size	.L.str.1045, 53

	.type	.L.str.1046,@object     # @.str.1046
.L.str.1046:
	.asciz	"0 1 ecode scode sub{\n"
	.size	.L.str.1046, 22

	.type	.L.str.1047,@object     # @.str.1047
.L.str.1047:
	.asciz	"2 mul gloff add etab exch getu16\n"
	.size	.L.str.1047, 34

	.type	.L.str.1048,@object     # @.str.1048
.L.str.1048:
	.asciz	"dup 0 ne{delta add 65535 and}if putglyph\n"
	.size	.L.str.1048, 42

	.type	.L.str.1049,@object     # @.str.1049
.L.str.1049:
	.asciz	"}for glyphs/glyphs null def\n"
	.size	.L.str.1049, 29

	.type	.L.str.1050,@object     # @.str.1050
.L.str.1050:
	.asciz	"6{\n"
	.size	.L.str.1050, 4

	.type	.L.str.1051,@object     # @.str.1051
.L.str.1051:
	.asciz	"dup 6 getu16/firstcode exch def dup 8 getu16/ng exch def\n"
	.size	.L.str.1051, 58

	.type	.L.str.1052,@object     # @.str.1052
.L.str.1052:
	.asciz	"firstcode ng add array\n"
	.size	.L.str.1052, 24

	.type	.L.str.1053,@object     # @.str.1053
.L.str.1053:
	.asciz	"0 1 firstcode 1 sub{2 copy 0 put pop}for\n"
	.size	.L.str.1053, 42

	.type	.L.str.1054,@object     # @.str.1054
.L.str.1054:
	.asciz	"dup firstcode ng getinterval\n"
	.size	.L.str.1054, 30

	.type	.L.str.1055,@object     # @.str.1055
.L.str.1055:
	.asciz	"0 1 ng 1 sub{\n"
	.size	.L.str.1055, 15

	.type	.L.str.1056,@object     # @.str.1056
.L.str.1056:
	.asciz	"dup 2 mul 10 add 4 index exch getu16 3 copy put pop pop\n"
	.size	.L.str.1056, 57

	.type	.L.str.1057,@object     # @.str.1057
.L.str.1057:
	.asciz	"}for pop exch pop\n"
	.size	.L.str.1057, 19

	.type	.L.str.1058,@object     # @.str.1058
.L.str.1058:
	.asciz	".dicttomark readonly def\n"
	.size	.L.str.1058, 26

	.type	.L.str.1059,@object     # @.str.1059
.L.str.1059:
	.asciz	"/cmaparray{\n"
	.size	.L.str.1059, 13

	.type	.L.str.1060,@object     # @.str.1060
.L.str.1060:
	.asciz	"dup 0 getu16 cmapformats exch .knownget{\n"
	.size	.L.str.1060, 42

	.type	.L.str.1061,@object     # @.str.1061
.L.str.1061:
	.asciz	"(cmap: format )print 1 index 0 getu16 = flush\n"
	.size	.L.str.1061, 47

	.type	.L.str.1062,@object     # @.str.1062
.L.str.1062:
	.asciz	"}if exec\n"
	.size	.L.str.1062, 10

	.type	.L.str.1063,@object     # @.str.1063
.L.str.1063:
	.asciz	"(Can't handle format )print 0 getu16 = flush\n"
	.size	.L.str.1063, 46

	.type	.L.str.1064,@object     # @.str.1064
.L.str.1064:
	.asciz	"0 1 255{}for 256 packedarray\n"
	.size	.L.str.1064, 30

	.type	.L.str.1065,@object     # @.str.1065
.L.str.1065:
	.asciz	"(cmap: length=)print dup length = dup ==\n"
	.size	.L.str.1065, 42

	.type	.L.str.1066,@object     # @.str.1066
.L.str.1066:
	.asciz	"/postremap mark\n"
	.size	.L.str.1066, 17

	.type	.L.str.1067,@object     # @.str.1067
.L.str.1067:
	.asciz	"/Cdot/Cdotaccent\n"
	.size	.L.str.1067, 18

	.type	.L.str.1068,@object     # @.str.1068
.L.str.1068:
	.asciz	"/Edot/Edotaccent\n"
	.size	.L.str.1068, 18

	.type	.L.str.1069,@object     # @.str.1069
.L.str.1069:
	.asciz	"/Eoverdot/Edotaccent\n"
	.size	.L.str.1069, 22

	.type	.L.str.1070,@object     # @.str.1070
.L.str.1070:
	.asciz	"/Gdot/Gdotaccent\n"
	.size	.L.str.1070, 18

	.type	.L.str.1071,@object     # @.str.1071
.L.str.1071:
	.asciz	"/Ldot/Ldotaccent\n"
	.size	.L.str.1071, 18

	.type	.L.str.1072,@object     # @.str.1072
.L.str.1072:
	.asciz	"/Zdot/Zdotaccent\n"
	.size	.L.str.1072, 18

	.type	.L.str.1073,@object     # @.str.1073
.L.str.1073:
	.asciz	"/cdot/cdotaccent\n"
	.size	.L.str.1073, 18

	.type	.L.str.1074,@object     # @.str.1074
.L.str.1074:
	.asciz	"/edot/edotaccent\n"
	.size	.L.str.1074, 18

	.type	.L.str.1075,@object     # @.str.1075
.L.str.1075:
	.asciz	"/eoverdot/edotaccent\n"
	.size	.L.str.1075, 22

	.type	.L.str.1076,@object     # @.str.1076
.L.str.1076:
	.asciz	"/gdot/gdotaccent\n"
	.size	.L.str.1076, 18

	.type	.L.str.1077,@object     # @.str.1077
.L.str.1077:
	.asciz	"/ldot/ldotaccent\n"
	.size	.L.str.1077, 18

	.type	.L.str.1078,@object     # @.str.1078
.L.str.1078:
	.asciz	"/zdot/zdotaccent\n"
	.size	.L.str.1078, 18

	.type	.L.str.1079,@object     # @.str.1079
.L.str.1079:
	.asciz	"/get_from_stringarray\n"
	.size	.L.str.1079, 23

	.type	.L.str.1080,@object     # @.str.1080
.L.str.1080:
	.asciz	"{1 index type/stringtype eq{\n"
	.size	.L.str.1080, 30

	.type	.L.str.1081,@object     # @.str.1081
.L.str.1081:
	.asciz	"get\n"
	.size	.L.str.1081, 5

	.type	.L.str.1082,@object     # @.str.1082
.L.str.1082:
	.asciz	"exch{\n"
	.size	.L.str.1082, 7

	.type	.L.str.1083,@object     # @.str.1083
.L.str.1083:
	.asciz	"2 copy length ge{\n"
	.size	.L.str.1083, 19

	.type	.L.str.1084,@object     # @.str.1084
.L.str.1084:
	.asciz	"length sub\n"
	.size	.L.str.1084, 12

	.type	.L.str.1085,@object     # @.str.1085
.L.str.1085:
	.asciz	"exch get exit\n"
	.size	.L.str.1085, 15

	.type	.L.str.1086,@object     # @.str.1086
.L.str.1086:
	.asciz	"/getinterval_from_stringarray\n"
	.size	.L.str.1086, 31

	.type	.L.str.1087,@object     # @.str.1087
.L.str.1087:
	.asciz	"2 index type/stringtype eq{\n"
	.size	.L.str.1087, 29

	.type	.L.str.1088,@object     # @.str.1088
.L.str.1088:
	.asciz	"string exch 0\n"
	.size	.L.str.1088, 15

	.type	.L.str.1089,@object     # @.str.1089
.L.str.1089:
	.asciz	"4 3 roll{\n"
	.size	.L.str.1089, 11

	.type	.L.str.1090,@object     # @.str.1090
.L.str.1090:
	.asciz	"dup 4 index lt{\n"
	.size	.L.str.1090, 17

	.type	.L.str.1091,@object     # @.str.1091
.L.str.1091:
	.asciz	"3 index exch sub\n"
	.size	.L.str.1091, 18

	.type	.L.str.1092,@object     # @.str.1092
.L.str.1092:
	.asciz	"exch pop 3 1 roll exch pop\n"
	.size	.L.str.1092, 28

	.type	.L.str.1093,@object     # @.str.1093
.L.str.1093:
	.asciz	"4 index sub\n"
	.size	.L.str.1093, 13

	.type	.L.str.1094,@object     # @.str.1094
.L.str.1094:
	.asciz	"5 index length 4 index sub\n"
	.size	.L.str.1094, 28

	.type	.L.str.1095,@object     # @.str.1095
.L.str.1095:
	.asciz	"2 copy gt{exch}if pop\n"
	.size	.L.str.1095, 23

	.type	.L.str.1096,@object     # @.str.1096
.L.str.1096:
	.asciz	"5 index exch getinterval\n"
	.size	.L.str.1096, 26

	.type	.L.str.1097,@object     # @.str.1097
.L.str.1097:
	.asciz	"5 index 4 index 3 index\n"
	.size	.L.str.1097, 25

	.type	.L.str.1098,@object     # @.str.1098
.L.str.1098:
	.asciz	"exch pop add exch pop 0 exch\n"
	.size	.L.str.1098, 30

	.type	.L.str.1099,@object     # @.str.1099
.L.str.1099:
	.asciz	"dup 3 index length ge{exit}if\n"
	.size	.L.str.1099, 31

	.type	.L.str.1100,@object     # @.str.1100
.L.str.1100:
	.asciz	"/string_array_size\n"
	.size	.L.str.1100, 20

	.type	.L.str.1101,@object     # @.str.1101
.L.str.1101:
	.asciz	"{dup type/stringtype eq{\n"
	.size	.L.str.1101, 26

	.type	.L.str.1102,@object     # @.str.1102
.L.str.1102:
	.asciz	"0 exch{length add}forall\n"
	.size	.L.str.1102, 26

	.type	.L.str.1103,@object     # @.str.1103
.L.str.1103:
	.asciz	"/postformats mark\n"
	.size	.L.str.1103, 19

	.type	.L.str.1104,@object     # @.str.1104
.L.str.1104:
	.asciz	"16#00010000{\n"
	.size	.L.str.1104, 14

	.type	.L.str.1105,@object     # @.str.1105
.L.str.1105:
	.asciz	"pop MacGlyphEncoding\n"
	.size	.L.str.1105, 22

	.type	.L.str.1106,@object     # @.str.1106
.L.str.1106:
	.asciz	"16#00020000{\n"
	.size	.L.str.1106, 14

	.type	.L.str.1107,@object     # @.str.1107
.L.str.1107:
	.asciz	"dup dup type/arraytype eq{0 get}if length 36 lt{\n"
	.size	.L.str.1107, 50

	.type	.L.str.1108,@object     # @.str.1108
.L.str.1108:
	.asciz	"TTFDEBUG{(post format 2.0 invalid.)= flush}if\n"
	.size	.L.str.1108, 47

	.type	.L.str.1109,@object     # @.str.1109
.L.str.1109:
	.asciz	"pop[]\n"
	.size	.L.str.1109, 7

	.type	.L.str.1110,@object     # @.str.1110
.L.str.1110:
	.asciz	"/postglyphs exch def\n"
	.size	.L.str.1110, 22

	.type	.L.str.1111,@object     # @.str.1111
.L.str.1111:
	.asciz	"/post_first postglyphs dup type/arraytype eq{0 get}if def\n"
	.size	.L.str.1111, 59

	.type	.L.str.1112,@object     # @.str.1112
.L.str.1112:
	.asciz	"post_first 32 getu16/numglyphs exch def\n"
	.size	.L.str.1112, 41

	.type	.L.str.1113,@object     # @.str.1113
.L.str.1113:
	.asciz	"/glyphnames numglyphs 2 mul 34 add def\n"
	.size	.L.str.1113, 40

	.type	.L.str.1114,@object     # @.str.1114
.L.str.1114:
	.asciz	"/postpos glyphnames def\n"
	.size	.L.str.1114, 25

	.type	.L.str.1115,@object     # @.str.1115
.L.str.1115:
	.asciz	"/total_length postglyphs//string_array_size exec def\n"
	.size	.L.str.1115, 54

	.type	.L.str.1116,@object     # @.str.1116
.L.str.1116:
	.asciz	"numglyphs array 0 1 numglyphs 1 sub{\n"
	.size	.L.str.1116, 38

	.type	.L.str.1117,@object     # @.str.1117
.L.str.1117:
	.asciz	"postpos total_length ge{\n"
	.size	.L.str.1117, 26

	.type	.L.str.1118,@object     # @.str.1118
.L.str.1118:
	.asciz	"1 numglyphs 1 sub{1 index exch/.notdef put}for\n"
	.size	.L.str.1118, 48

	.type	.L.str.1119,@object     # @.str.1119
.L.str.1119:
	.asciz	"postglyphs postpos//get_from_stringarray exec\n"
	.size	.L.str.1119, 47

	.type	.L.str.1120,@object     # @.str.1120
.L.str.1120:
	.asciz	"postglyphs postpos 1 add 2 index//getinterval_from_stringarray exec cvn\n"
	.size	.L.str.1120, 73

	.type	.L.str.1121,@object     # @.str.1121
.L.str.1121:
	.asciz	"exch postpos add 1 add/postpos exch def\n"
	.size	.L.str.1121, 41

	.type	.L.str.1122,@object     # @.str.1122
.L.str.1122:
	.asciz	"2 index 3 1 roll\n"
	.size	.L.str.1122, 18

	.type	.L.str.1123,@object     # @.str.1123
.L.str.1123:
	.asciz	"/postnames exch def\n"
	.size	.L.str.1123, 21

	.type	.L.str.1124,@object     # @.str.1124
.L.str.1124:
	.asciz	"dup 2 mul 34 add postglyphs exch 2//getinterval_from_stringarray exec\n"
	.size	.L.str.1124, 71

	.type	.L.str.1125,@object     # @.str.1125
.L.str.1125:
	.asciz	"dup 0 get 8 bitshift exch 1 get add dup 258 lt{\n"
	.size	.L.str.1125, 49

	.type	.L.str.1126,@object     # @.str.1126
.L.str.1126:
	.asciz	"MacGlyphEncoding exch get\n"
	.size	.L.str.1126, 27

	.type	.L.str.1127,@object     # @.str.1127
.L.str.1127:
	.asciz	"dup 32768 ge{\n"
	.size	.L.str.1127, 15

	.type	.L.str.1128,@object     # @.str.1128
.L.str.1128:
	.asciz	"pop/.notdef\n"
	.size	.L.str.1128, 13

	.type	.L.str.1129,@object     # @.str.1129
.L.str.1129:
	.asciz	"258 sub dup postnames length ge{\n"
	.size	.L.str.1129, 34

	.type	.L.str.1130,@object     # @.str.1130
.L.str.1130:
	.asciz	"TTFDEBUG{(   *** warning: glyph index past end of 'post' table)= flush}if\n"
	.size	.L.str.1130, 75

	.type	.L.str.1131,@object     # @.str.1131
.L.str.1131:
	.asciz	"postnames exch get\n"
	.size	.L.str.1131, 20

	.type	.L.str.1132,@object     # @.str.1132
.L.str.1132:
	.asciz	"postremap 1 index .knownget{exch pop}if\n"
	.size	.L.str.1132, 41

	.type	.L.str.1133,@object     # @.str.1133
.L.str.1133:
	.asciz	"2 index 3 1 roll put\n"
	.size	.L.str.1133, 22

	.type	.L.str.1134,@object     # @.str.1134
.L.str.1134:
	.asciz	"16#00030000{\n"
	.size	.L.str.1134, 14

	.type	.L.str.1135,@object     # @.str.1135
.L.str.1135:
	.asciz	"/first_post_string\n"
	.size	.L.str.1135, 20

	.type	.L.str.1136,@object     # @.str.1136
.L.str.1136:
	.asciz	"post dup type/arraytype eq{0 get}if\n"
	.size	.L.str.1136, 37

	.type	.L.str.1137,@object     # @.str.1137
.L.str.1137:
	.asciz	"/.getpost{\n"
	.size	.L.str.1137, 12

	.type	.L.str.1138,@object     # @.str.1138
.L.str.1138:
	.asciz	"/glyphencoding post null eq{\n"
	.size	.L.str.1138, 30

	.type	.L.str.1139,@object     # @.str.1139
.L.str.1139:
	.asciz	"TTFDEBUG{(post missing)= flush}if[]\n"
	.size	.L.str.1139, 37

	.type	.L.str.1140,@object     # @.str.1140
.L.str.1140:
	.asciz	"postformats first_post_string 0 getu32 .knownget{\n"
	.size	.L.str.1140, 51

	.type	.L.str.1141,@object     # @.str.1141
.L.str.1141:
	.asciz	"(post: format )print\n"
	.size	.L.str.1141, 22

	.type	.L.str.1142,@object     # @.str.1142
.L.str.1142:
	.asciz	"first_post_string\n"
	.size	.L.str.1142, 19

	.type	.L.str.1143,@object     # @.str.1143
.L.str.1143:
	.asciz	"dup 0 getu16 =only(,)print 2 getu16 = flush\n"
	.size	.L.str.1143, 45

	.type	.L.str.1144,@object     # @.str.1144
.L.str.1144:
	.asciz	"post exch exec\n"
	.size	.L.str.1144, 16

	.type	.L.str.1145,@object     # @.str.1145
.L.str.1145:
	.asciz	"TTFDEBUG{(post: unknown format )print post 0 getu32 = flush}if[]\n"
	.size	.L.str.1145, 66

	.type	.L.str.1146,@object     # @.str.1146
.L.str.1146:
	.asciz	"}ifelse def\n"
	.size	.L.str.1146, 13

	.type	.L.str.1147,@object     # @.str.1147
.L.str.1147:
	.asciz	"/TTParser<<\n"
	.size	.L.str.1147, 13

	.type	.L.str.1148,@object     # @.str.1148
.L.str.1148:
	.asciz	"/Pos 0\n"
	.size	.L.str.1148, 8

	.type	.L.str.1149,@object     # @.str.1149
.L.str.1149:
	.asciz	"/post null\n"
	.size	.L.str.1149, 12

	.type	.L.str.1150,@object     # @.str.1150
.L.str.1150:
	.asciz	"/readu8\n"
	.size	.L.str.1150, 9

	.type	.L.str.1151,@object     # @.str.1151
.L.str.1151:
	.asciz	"{read not{\n"
	.size	.L.str.1151, 12

	.type	.L.str.1152,@object     # @.str.1152
.L.str.1152:
	.asciz	"mark(Insufficient data in the stream.)//error exec\n"
	.size	.L.str.1152, 52

	.type	.L.str.1153,@object     # @.str.1153
.L.str.1153:
	.asciz	"/readu16\n"
	.size	.L.str.1153, 10

	.type	.L.str.1154,@object     # @.str.1154
.L.str.1154:
	.asciz	"{dup//readu8 exec 8 bitshift exch//readu8 exec or\n"
	.size	.L.str.1154, 51

	.type	.L.str.1155,@object     # @.str.1155
.L.str.1155:
	.asciz	"/reads16\n"
	.size	.L.str.1155, 10

	.type	.L.str.1156,@object     # @.str.1156
.L.str.1156:
	.asciz	"{//readu16 exec 16#8000 xor 16#8000 sub\n"
	.size	.L.str.1156, 41

	.type	.L.str.1157,@object     # @.str.1157
.L.str.1157:
	.asciz	"/readu32\n"
	.size	.L.str.1157, 10

	.type	.L.str.1158,@object     # @.str.1158
.L.str.1158:
	.asciz	"{dup//readu16 exec 16 bitshift exch//readu16 exec or\n"
	.size	.L.str.1158, 54

	.type	.L.str.1159,@object     # @.str.1159
.L.str.1159:
	.asciz	"/reads32\n"
	.size	.L.str.1159, 10

	.type	.L.str.1160,@object     # @.str.1160
.L.str.1160:
	.asciz	"{dup//reads16 exec 16 bitshift exch//readu16 exec or\n"
	.size	.L.str.1160, 54

	.type	.L.str.1161,@object     # @.str.1161
.L.str.1161:
	.asciz	"/SkipToPosition\n"
	.size	.L.str.1161, 17

	.type	.L.str.1162,@object     # @.str.1162
.L.str.1162:
	.asciz	"{dup//TTParser/Pos get\n"
	.size	.L.str.1162, 24

	.type	.L.str.1163,@object     # @.str.1163
.L.str.1163:
	.asciz	"exch//TTParser exch/Pos exch put\n"
	.size	.L.str.1163, 34

	.type	.L.str.1164,@object     # @.str.1164
.L.str.1164:
	.asciz	"sub\n"
	.size	.L.str.1164, 5

	.type	.L.str.1165,@object     # @.str.1165
.L.str.1165:
	.asciz	"(Skipping )print dup//=only exec( bytes.)=\n"
	.size	.L.str.1165, 44

	.type	.L.str.1166,@object     # @.str.1166
.L.str.1166:
	.asciz	"()/SubFileDecode filter\n"
	.size	.L.str.1166, 25

	.type	.L.str.1167,@object     # @.str.1167
.L.str.1167:
	.asciz	"{1 index//BlockBuffer readstring pop length\n"
	.size	.L.str.1167, 45

	.type	.L.str.1168,@object     # @.str.1168
.L.str.1168:
	.asciz	"dup 0 eq{pop exch pop exit}if\n"
	.size	.L.str.1168, 31

	.type	.L.str.1169,@object     # @.str.1169
.L.str.1169:
	.asciz	"mark(Insufficient data in the stream for SkipToPosition.)//error exec\n"
	.size	.L.str.1169, 71

	.type	.L.str.1170,@object     # @.str.1170
.L.str.1170:
	.asciz	"/TagBuffer 4 string def\n"
	.size	.L.str.1170, 25

	.type	.L.str.1171,@object     # @.str.1171
.L.str.1171:
	.asciz	"/ParseTTTableDirectory\n"
	.size	.L.str.1171, 24

	.type	.L.str.1172,@object     # @.str.1172
.L.str.1172:
	.asciz	"(ParseTTTableDirectory beg)=\n"
	.size	.L.str.1172, 30

	.type	.L.str.1173,@object     # @.str.1173
.L.str.1173:
	.asciz	"15 dict begin\n"
	.size	.L.str.1173, 15

	.type	.L.str.1174,@object     # @.str.1174
.L.str.1174:
	.asciz	"dup//readu32 exec 16#00010000 ne{\n"
	.size	.L.str.1174, 35

	.type	.L.str.1175,@object     # @.str.1175
.L.str.1175:
	.asciz	"mark(Unknown True Type version.)//error exec\n"
	.size	.L.str.1175, 46

	.type	.L.str.1176,@object     # @.str.1176
.L.str.1176:
	.asciz	"dup//readu16 exec/NumTables exch def\n"
	.size	.L.str.1176, 38

	.type	.L.str.1177,@object     # @.str.1177
.L.str.1177:
	.asciz	"dup//readu16 exec/SearchRange exch def\n"
	.size	.L.str.1177, 40

	.type	.L.str.1178,@object     # @.str.1178
.L.str.1178:
	.asciz	"dup//readu16 exec/EntrySelector exch def\n"
	.size	.L.str.1178, 42

	.type	.L.str.1179,@object     # @.str.1179
.L.str.1179:
	.asciz	"dup//readu16 exec/RangeShift exch def\n"
	.size	.L.str.1179, 39

	.type	.L.str.1180,@object     # @.str.1180
.L.str.1180:
	.asciz	"(NumTables = )print NumTables =\n"
	.size	.L.str.1180, 33

	.type	.L.str.1181,@object     # @.str.1181
.L.str.1181:
	.asciz	"NumTables{\n"
	.size	.L.str.1181, 12

	.type	.L.str.1182,@object     # @.str.1182
.L.str.1182:
	.asciz	"dup//TagBuffer readstring not{\n"
	.size	.L.str.1182, 32

	.type	.L.str.1183,@object     # @.str.1183
.L.str.1183:
	.asciz	"mark(Could not read TT tag.)//error exec\n"
	.size	.L.str.1183, 42

	.type	.L.str.1184,@object     # @.str.1184
.L.str.1184:
	.asciz	"[2 index//readu32 exec pop\n"
	.size	.L.str.1184, 28

	.type	.L.str.1185,@object     # @.str.1185
.L.str.1185:
	.asciz	"2 index//readu32 exec\n"
	.size	.L.str.1185, 23

	.type	.L.str.1186,@object     # @.str.1186
.L.str.1186:
	.asciz	"3 index//readu32 exec\n"
	.size	.L.str.1186, 23

	.type	.L.str.1187,@object     # @.str.1187
.L.str.1187:
	.asciz	"2 copy exch//=only exec( )print ==\n"
	.size	.L.str.1187, 36

	.type	.L.str.1188,@object     # @.str.1188
.L.str.1188:
	.asciz	"//TTParser/Pos 12 NumTables 16 mul add put\n"
	.size	.L.str.1188, 44

	.type	.L.str.1189,@object     # @.str.1189
.L.str.1189:
	.asciz	"(ParseTTTableDirectory end)=\n"
	.size	.L.str.1189, 30

	.type	.L.str.1190,@object     # @.str.1190
.L.str.1190:
	.asciz	"/ParseTTcmap\n"
	.size	.L.str.1190, 14

	.type	.L.str.1191,@object     # @.str.1191
.L.str.1191:
	.asciz	"(ParseTTcmap beg)=\n"
	.size	.L.str.1191, 20

	.type	.L.str.1192,@object     # @.str.1192
.L.str.1192:
	.asciz	"/cmap get aload pop\n"
	.size	.L.str.1192, 21

	.type	.L.str.1193,@object     # @.str.1193
.L.str.1193:
	.asciz	"7 dict begin\n"
	.size	.L.str.1193, 14

	.type	.L.str.1194,@object     # @.str.1194
.L.str.1194:
	.asciz	"(Current position = )print//TTParser/Pos get =\n"
	.size	.L.str.1194, 48

	.type	.L.str.1195,@object     # @.str.1195
.L.str.1195:
	.asciz	"(cmap position = )print dup =\n"
	.size	.L.str.1195, 31

	.type	.L.str.1196,@object     # @.str.1196
.L.str.1196:
	.asciz	"1 index exch//SkipToPosition exec\n"
	.size	.L.str.1196, 35

	.type	.L.str.1197,@object     # @.str.1197
.L.str.1197:
	.asciz	"//TTParser/Pos get/TablePos exch def\n"
	.size	.L.str.1197, 38

	.type	.L.str.1198,@object     # @.str.1198
.L.str.1198:
	.asciz	"dup//readu16 exec pop\n"
	.size	.L.str.1198, 23

	.type	.L.str.1199,@object     # @.str.1199
.L.str.1199:
	.asciz	"dup//readu16 exec/NumEncodings exch def\n"
	.size	.L.str.1199, 41

	.type	.L.str.1200,@object     # @.str.1200
.L.str.1200:
	.asciz	"(NumEncodings = )print NumEncodings =\n"
	.size	.L.str.1200, 39

	.type	.L.str.1201,@object     # @.str.1201
.L.str.1201:
	.asciz	"null\n"
	.size	.L.str.1201, 6

	.type	.L.str.1202,@object     # @.str.1202
.L.str.1202:
	.asciz	"NumEncodings{\n"
	.size	.L.str.1202, 15

	.type	.L.str.1203,@object     # @.str.1203
.L.str.1203:
	.asciz	"1 index//readu32 exec\n"
	.size	.L.str.1203, 23

	.type	.L.str.1204,@object     # @.str.1204
.L.str.1204:
	.asciz	"3 array dup 3 2 roll 0 exch put\n"
	.size	.L.str.1204, 33

	.type	.L.str.1205,@object     # @.str.1205
.L.str.1205:
	.asciz	"2 index null ne{\n"
	.size	.L.str.1205, 18

	.type	.L.str.1206,@object     # @.str.1206
.L.str.1206:
	.asciz	"dup 0 get 3 index 0 get sub\n"
	.size	.L.str.1206, 29

	.type	.L.str.1207,@object     # @.str.1207
.L.str.1207:
	.asciz	"3 index exch 1 exch put\n"
	.size	.L.str.1207, 25

	.type	.L.str.1208,@object     # @.str.1208
.L.str.1208:
	.asciz	"dup 4 3 roll pop 3 1 roll\n"
	.size	.L.str.1208, 27

	.type	.L.str.1209,@object     # @.str.1209
.L.str.1209:
	.asciz	"dup 0 get\n"
	.size	.L.str.1209, 11

	.type	.L.str.1210,@object     # @.str.1210
.L.str.1210:
	.asciz	"4 3 roll exch sub\n"
	.size	.L.str.1210, 19

	.type	.L.str.1211,@object     # @.str.1211
.L.str.1211:
	.asciz	"1 exch put\n"
	.size	.L.str.1211, 12

	.type	.L.str.1212,@object     # @.str.1212
.L.str.1212:
	.asciz	"currentdict{\n"
	.size	.L.str.1212, 14

	.type	.L.str.1213,@object     # @.str.1213
.L.str.1213:
	.asciz	"exch dup type/integertype eq{\n"
	.size	.L.str.1213, 31

	.type	.L.str.1214,@object     # @.str.1214
.L.str.1214:
	.asciz	"//PrintHex exec( )print ==\n"
	.size	.L.str.1214, 28

	.type	.L.str.1215,@object     # @.str.1215
.L.str.1215:
	.asciz	"4 NumEncodings 8 mul add/HeaderLength exch def\n"
	.size	.L.str.1215, 48

	.type	.L.str.1216,@object     # @.str.1216
.L.str.1216:
	.asciz	"//TTParser/Pos//TTParser/Pos get HeaderLength add put\n"
	.size	.L.str.1216, 55

	.type	.L.str.1217,@object     # @.str.1217
.L.str.1217:
	.asciz	"16#7FFFFFF null\n"
	.size	.L.str.1217, 17

	.type	.L.str.1218,@object     # @.str.1218
.L.str.1218:
	.asciz	"1 index type/integertype eq{\n"
	.size	.L.str.1218, 30

	.type	.L.str.1219,@object     # @.str.1219
.L.str.1219:
	.asciz	"exch pop dup 0 get\n"
	.size	.L.str.1219, 20

	.type	.L.str.1220,@object     # @.str.1220
.L.str.1220:
	.asciz	"dup 5 index gt{\n"
	.size	.L.str.1220, 17

	.type	.L.str.1221,@object     # @.str.1221
.L.str.1221:
	.asciz	"4 1 roll\n"
	.size	.L.str.1221, 10

	.type	.L.str.1222,@object     # @.str.1222
.L.str.1222:
	.asciz	"(Obtaining subtable for )print dup ==\n"
	.size	.L.str.1222, 39

	.type	.L.str.1223,@object     # @.str.1223
.L.str.1223:
	.asciz	"3 2 roll pop\n"
	.size	.L.str.1223, 14

	.type	.L.str.1224,@object     # @.str.1224
.L.str.1224:
	.asciz	"3 copy pop\n"
	.size	.L.str.1224, 12

	.type	.L.str.1225,@object     # @.str.1225
.L.str.1225:
	.asciz	"TablePos add//SkipToPosition exec\n"
	.size	.L.str.1225, 35

	.type	.L.str.1226,@object     # @.str.1226
.L.str.1226:
	.asciz	"3 copy exch pop 1 get\n"
	.size	.L.str.1226, 23

	.type	.L.str.1227,@object     # @.str.1227
.L.str.1227:
	.asciz	"//TTParser/Pos//TTParser/Pos get 3 index add put\n"
	.size	.L.str.1227, 50

	.type	.L.str.1228,@object     # @.str.1228
.L.str.1228:
	.asciz	"readstring not{\n"
	.size	.L.str.1228, 17

	.type	.L.str.1229,@object     # @.str.1229
.L.str.1229:
	.asciz	"mark(Can't read a cmap subtable.)//error exec\n"
	.size	.L.str.1229, 47

	.type	.L.str.1230,@object     # @.str.1230
.L.str.1230:
	.asciz	"2 exch put\n"
	.size	.L.str.1230, 12

	.type	.L.str.1231,@object     # @.str.1231
.L.str.1231:
	.asciz	"(ParseTTcmap end)=\n"
	.size	.L.str.1231, 20

	.type	.L.str.1232,@object     # @.str.1232
.L.str.1232:
	.asciz	"/GetTTEncoding\n"
	.size	.L.str.1232, 16

	.type	.L.str.1233,@object     # @.str.1233
.L.str.1233:
	.asciz	"(GetTTEncoding beg)=\n"
	.size	.L.str.1233, 22

	.type	.L.str.1234,@object     # @.str.1234
.L.str.1234:
	.asciz	"2 get\n"
	.size	.L.str.1234, 7

	.type	.L.str.1235,@object     # @.str.1235
.L.str.1235:
	.asciz	"/TTFDEBUG//PDFR_DEBUG def\n"
	.size	.L.str.1235, 27

	.type	.L.str.1236,@object     # @.str.1236
.L.str.1236:
	.asciz	"//cmaparray exec\n"
	.size	.L.str.1236, 18

	.type	.L.str.1237,@object     # @.str.1237
.L.str.1237:
	.asciz	"(GetTTEncoding end)=\n"
	.size	.L.str.1237, 22

	.type	.L.str.1238,@object     # @.str.1238
.L.str.1238:
	.asciz	"dup ==\n"
	.size	.L.str.1238, 8

	.type	.L.str.1239,@object     # @.str.1239
.L.str.1239:
	.asciz	"/InverseEncoding\n"
	.size	.L.str.1239, 18

	.type	.L.str.1240,@object     # @.str.1240
.L.str.1240:
	.asciz	"256 dict begin\n"
	.size	.L.str.1240, 16

	.type	.L.str.1241,@object     # @.str.1241
.L.str.1241:
	.asciz	"dup length 1 sub -1 0{\n"
	.size	.L.str.1241, 24

	.type	.L.str.1242,@object     # @.str.1242
.L.str.1242:
	.asciz	"1 index currentdict exch//knownget exec{\n"
	.size	.L.str.1242, 42

	.type	.L.str.1243,@object     # @.str.1243
.L.str.1243:
	.asciz	"aload length 1 add array astore\n"
	.size	.L.str.1243, 33

	.type	.L.str.1244,@object     # @.str.1244
.L.str.1244:
	.asciz	"/GetMacRomanEncodingInverse\n"
	.size	.L.str.1244, 29

	.type	.L.str.1245,@object     # @.str.1245
.L.str.1245:
	.asciz	"{//PDFReader/MacRomanEncodingInverse get\n"
	.size	.L.str.1245, 42

	.type	.L.str.1246,@object     # @.str.1246
.L.str.1246:
	.asciz	"MacRomanEncoding//InverseEncoding exec\n"
	.size	.L.str.1246, 40

	.type	.L.str.1247,@object     # @.str.1247
.L.str.1247:
	.asciz	"dup//PDFReader exch/MacRomanEncodingInverse exch put\n"
	.size	.L.str.1247, 54

	.type	.L.str.1248,@object     # @.str.1248
.L.str.1248:
	.asciz	"/PutCharStringSingle\n"
	.size	.L.str.1248, 22

	.type	.L.str.1249,@object     # @.str.1249
.L.str.1249:
	.asciz	"dup 3 index length lt{\n"
	.size	.L.str.1249, 24

	.type	.L.str.1250,@object     # @.str.1250
.L.str.1250:
	.asciz	"2 index exch get\n"
	.size	.L.str.1250, 18

	.type	.L.str.1251,@object     # @.str.1251
.L.str.1251:
	.asciz	"dup 0 ne{\n"
	.size	.L.str.1251, 11

	.type	.L.str.1252,@object     # @.str.1252
.L.str.1252:
	.asciz	"/PutCharString\n"
	.size	.L.str.1252, 16

	.type	.L.str.1253,@object     # @.str.1253
.L.str.1253:
	.asciz	"{1 index type/nametype ne{\n"
	.size	.L.str.1253, 28

	.type	.L.str.1254,@object     # @.str.1254
.L.str.1254:
	.asciz	"mark(Bad charstring name)//error exec\n"
	.size	.L.str.1254, 39

	.type	.L.str.1255,@object     # @.str.1255
.L.str.1255:
	.asciz	"3 copy//PutCharStringSingle exec\n"
	.size	.L.str.1255, 34

	.type	.L.str.1256,@object     # @.str.1256
.L.str.1256:
	.asciz	"//PutCharStringSingle exec\n"
	.size	.L.str.1256, 28

	.type	.L.str.1257,@object     # @.str.1257
.L.str.1257:
	.asciz	"/ComposeCharStrings\n"
	.size	.L.str.1257, 21

	.type	.L.str.1258,@object     # @.str.1258
.L.str.1258:
	.asciz	"(ComposeCharStrings beg)=\n"
	.size	.L.str.1258, 27

	.type	.L.str.1259,@object     # @.str.1259
.L.str.1259:
	.asciz	"1 index length 1 add dict begin\n"
	.size	.L.str.1259, 33

	.type	.L.str.1260,@object     # @.str.1260
.L.str.1260:
	.asciz	"/.notdef 0 def\n"
	.size	.L.str.1260, 16

	.type	.L.str.1261,@object     # @.str.1261
.L.str.1261:
	.asciz	"//TTParser/post get\n"
	.size	.L.str.1261, 21

	.type	.L.str.1262,@object     # @.str.1262
.L.str.1262:
	.asciz	"1 index length 1 sub -1 0{\n"
	.size	.L.str.1262, 28

	.type	.L.str.1263,@object     # @.str.1263
.L.str.1263:
	.asciz	"dup 3 index exch get exch\n"
	.size	.L.str.1263, 27

	.type	.L.str.1264,@object     # @.str.1264
.L.str.1264:
	.asciz	"dup 0 eq 2 index/.notdef eq or{\n"
	.size	.L.str.1264, 33

	.type	.L.str.1265,@object     # @.str.1265
.L.str.1265:
	.asciz	"exch pop exch\n"
	.size	.L.str.1265, 15

	.type	.L.str.1266,@object     # @.str.1266
.L.str.1266:
	.asciz	"//PutCharString exec\n"
	.size	.L.str.1266, 22

	.type	.L.str.1267,@object     # @.str.1267
.L.str.1267:
	.asciz	"(ComposeCharStrings end)=\n"
	.size	.L.str.1267, 27

	.type	.L.str.1268,@object     # @.str.1268
.L.str.1268:
	.asciz	"/ParseTTpost\n"
	.size	.L.str.1268, 14

	.type	.L.str.1269,@object     # @.str.1269
.L.str.1269:
	.asciz	"(ParseTTpost beg)=\n"
	.size	.L.str.1269, 20

	.type	.L.str.1270,@object     # @.str.1270
.L.str.1270:
	.asciz	"/post get aload pop\n"
	.size	.L.str.1270, 21

	.type	.L.str.1271,@object     # @.str.1271
.L.str.1271:
	.asciz	"(post position = )print dup =\n"
	.size	.L.str.1271, 31

	.type	.L.str.1272,@object     # @.str.1272
.L.str.1272:
	.asciz	"//TTParser/Pos//TTParser/Pos get 4 index add put\n"
	.size	.L.str.1272, 50

	.type	.L.str.1273,@object     # @.str.1273
.L.str.1273:
	.asciz	"exch dup 65535 le{\n"
	.size	.L.str.1273, 20

	.type	.L.str.1274,@object     # @.str.1274
.L.str.1274:
	.asciz	"mark(Insufficient data in the stream for ParseTTpost.)//error exec\n"
	.size	.L.str.1274, 68

	.type	.L.str.1275,@object     # @.str.1275
.L.str.1275:
	.asciz	"[3 1 roll\n"
	.size	.L.str.1275, 11

	.type	.L.str.1276,@object     # @.str.1276
.L.str.1276:
	.asciz	"dup 16384 div floor cvi\n"
	.size	.L.str.1276, 25

	.type	.L.str.1277,@object     # @.str.1277
.L.str.1277:
	.asciz	"exch 1 index 16384 mul\n"
	.size	.L.str.1277, 24

	.type	.L.str.1278,@object     # @.str.1278
.L.str.1278:
	.asciz	"sub exch\n"
	.size	.L.str.1278, 10

	.type	.L.str.1279,@object     # @.str.1279
.L.str.1279:
	.asciz	"1 sub 0 1 3 -1 roll\n"
	.size	.L.str.1279, 21

	.type	.L.str.1280,@object     # @.str.1280
.L.str.1280:
	.asciz	"1 add index\n"
	.size	.L.str.1280, 13

	.type	.L.str.1281,@object     # @.str.1281
.L.str.1281:
	.asciz	"16384 string readstring not{\n"
	.size	.L.str.1281, 30

	.type	.L.str.1282,@object     # @.str.1282
.L.str.1282:
	.asciz	"counttomark -2 roll\n"
	.size	.L.str.1282, 21

	.type	.L.str.1283,@object     # @.str.1283
.L.str.1283:
	.asciz	"string readstring not{\n"
	.size	.L.str.1283, 24

	.type	.L.str.1284,@object     # @.str.1284
.L.str.1284:
	.asciz	"1 dict begin\n"
	.size	.L.str.1284, 14

	.type	.L.str.1285,@object     # @.str.1285
.L.str.1285:
	.asciz	"/post exch def\n"
	.size	.L.str.1285, 16

	.type	.L.str.1286,@object     # @.str.1286
.L.str.1286:
	.asciz	"//.getpost exec\n"
	.size	.L.str.1286, 17

	.type	.L.str.1287,@object     # @.str.1287
.L.str.1287:
	.asciz	"//TTParser/post glyphencoding put\n"
	.size	.L.str.1287, 35

	.type	.L.str.1288,@object     # @.str.1288
.L.str.1288:
	.asciz	"(ParseTTpost end)=\n"
	.size	.L.str.1288, 20

	.type	.L.str.1289,@object     # @.str.1289
.L.str.1289:
	.asciz	"glyphencoding ==\n"
	.size	.L.str.1289, 18

	.type	.L.str.1290,@object     # @.str.1290
.L.str.1290:
	.asciz	"/MakeTTCharStrings\n"
	.size	.L.str.1290, 20

	.type	.L.str.1291,@object     # @.str.1291
.L.str.1291:
	.asciz	"{//MakeStreamReader exec\n"
	.size	.L.str.1291, 26

	.type	.L.str.1292,@object     # @.str.1292
.L.str.1292:
	.asciz	"dup dup//ParseTTTableDirectory exec\n"
	.size	.L.str.1292, 37

	.type	.L.str.1293,@object     # @.str.1293
.L.str.1293:
	.asciz	"//TTParser/post null put\n"
	.size	.L.str.1293, 26

	.type	.L.str.1294,@object     # @.str.1294
.L.str.1294:
	.asciz	"dup/post//knownget exec{\n"
	.size	.L.str.1294, 26

	.type	.L.str.1295,@object     # @.str.1295
.L.str.1295:
	.asciz	"1 index/cmap get 0 get\n"
	.size	.L.str.1295, 24

	.type	.L.str.1296,@object     # @.str.1296
.L.str.1296:
	.asciz	"lt{\n"
	.size	.L.str.1296, 5

	.type	.L.str.1297,@object     # @.str.1297
.L.str.1297:
	.asciz	"2 copy//ParseTTpost exec\n"
	.size	.L.str.1297, 26

	.type	.L.str.1298,@object     # @.str.1298
.L.str.1298:
	.asciz	"//ParseTTcmap exec\n"
	.size	.L.str.1298, 20

	.type	.L.str.1299,@object     # @.str.1299
.L.str.1299:
	.asciz	"2 copy//ParseTTcmap exec\n"
	.size	.L.str.1299, 26

	.type	.L.str.1300,@object     # @.str.1300
.L.str.1300:
	.asciz	"//ParseTTpost exec\n"
	.size	.L.str.1300, 20

	.type	.L.str.1301,@object     # @.str.1301
.L.str.1301:
	.asciz	"dup 16#00030001 known{\n"
	.size	.L.str.1301, 24

	.type	.L.str.1302,@object     # @.str.1302
.L.str.1302:
	.asciz	"(Using the TT cmap encoding for Windows Unicode.)=\n"
	.size	.L.str.1302, 52

	.type	.L.str.1303,@object     # @.str.1303
.L.str.1303:
	.asciz	"16#00030001//GetTTEncoding exec\n"
	.size	.L.str.1303, 33

	.type	.L.str.1304,@object     # @.str.1304
.L.str.1304:
	.asciz	"AdobeGlyphList//ComposeCharStrings exec\n"
	.size	.L.str.1304, 41

	.type	.L.str.1305,@object     # @.str.1305
.L.str.1305:
	.asciz	"dup 16#00010000 known{\n"
	.size	.L.str.1305, 24

	.type	.L.str.1306,@object     # @.str.1306
.L.str.1306:
	.asciz	"(Using the TT cmap encoding for Macintosh Roman.)=\n"
	.size	.L.str.1306, 52

	.type	.L.str.1307,@object     # @.str.1307
.L.str.1307:
	.asciz	"16#00010000//GetTTEncoding exec\n"
	.size	.L.str.1307, 33

	.type	.L.str.1308,@object     # @.str.1308
.L.str.1308:
	.asciz	"PDFEncoding dup null eq{\n"
	.size	.L.str.1308, 26

	.type	.L.str.1309,@object     # @.str.1309
.L.str.1309:
	.asciz	"pop//GetMacRomanEncodingInverse exec\n"
	.size	.L.str.1309, 38

	.type	.L.str.1310,@object     # @.str.1310
.L.str.1310:
	.asciz	"//InverseEncoding exec\n"
	.size	.L.str.1310, 24

	.type	.L.str.1311,@object     # @.str.1311
.L.str.1311:
	.asciz	"//ComposeCharStrings exec\n"
	.size	.L.str.1311, 27

	.type	.L.str.1312,@object     # @.str.1312
.L.str.1312:
	.asciz	"dup 16#00030000 known{\n"
	.size	.L.str.1312, 24

	.type	.L.str.1313,@object     # @.str.1313
.L.str.1313:
	.asciz	"(Using the TT cmap encoding 3.0 - not sure why Ghostscript writes it since old versions.)=\n"
	.size	.L.str.1313, 92

	.type	.L.str.1314,@object     # @.str.1314
.L.str.1314:
	.asciz	"16#00030000//GetTTEncoding exec\n"
	.size	.L.str.1314, 33

	.type	.L.str.1315,@object     # @.str.1315
.L.str.1315:
	.asciz	"mark(True Type cmap has no useful encodings.)//error exec\n"
	.size	.L.str.1315, 59

	.type	.L.str.1316,@object     # @.str.1316
.L.str.1316:
	.asciz	"(CharStrings <<)=\n"
	.size	.L.str.1316, 19

	.type	.L.str.1317,@object     # @.str.1317
.L.str.1317:
	.asciz	"//=only exec\n"
	.size	.L.str.1317, 14

	.type	.L.str.1318,@object     # @.str.1318
.L.str.1318:
	.asciz	"( )print ==\n"
	.size	.L.str.1318, 13

	.type	.L.str.1319,@object     # @.str.1319
.L.str.1319:
	.asciz	"/ScaleVal\n"
	.size	.L.str.1319, 11

	.type	.L.str.1320,@object     # @.str.1320
.L.str.1320:
	.asciz	"1 index sub\n"
	.size	.L.str.1320, 13

	.type	.L.str.1321,@object     # @.str.1321
.L.str.1321:
	.asciz	"3 2 roll mul add\n"
	.size	.L.str.1321, 18

	.type	.L.str.1322,@object     # @.str.1322
.L.str.1322:
	.asciz	"/ScaleArg\n"
	.size	.L.str.1322, 11

	.type	.L.str.1323,@object     # @.str.1323
.L.str.1323:
	.asciz	"sub exch div\n"
	.size	.L.str.1323, 14

	.type	.L.str.1324,@object     # @.str.1324
.L.str.1324:
	.asciz	"/ScaleArgN\n"
	.size	.L.str.1324, 12

	.type	.L.str.1325,@object     # @.str.1325
.L.str.1325:
	.asciz	"dup length 2 sub -2 0{\n"
	.size	.L.str.1325, 24

	.type	.L.str.1326,@object     # @.str.1326
.L.str.1326:
	.asciz	"2\n"
	.size	.L.str.1326, 3

	.type	.L.str.1327,@object     # @.str.1327
.L.str.1327:
	.asciz	"2 index 3 1 roll getinterval\n"
	.size	.L.str.1327, 30

	.type	.L.str.1328,@object     # @.str.1328
.L.str.1328:
	.asciz	"exch//ScaleArg exec\n"
	.size	.L.str.1328, 21

	.type	.L.str.1329,@object     # @.str.1329
.L.str.1329:
	.asciz	"1 index length 2 idiv 1 add 1 roll\n"
	.size	.L.str.1329, 36

	.type	.L.str.1330,@object     # @.str.1330
.L.str.1330:
	.asciz	"/ComputeFunction_10\n"
	.size	.L.str.1330, 21

	.type	.L.str.1331,@object     # @.str.1331
.L.str.1331:
	.asciz	"(ComputeFunction_10 beg )print 1 index//=only exec( stack=)print count =\n"
	.size	.L.str.1331, 74

	.type	.L.str.1332,@object     # @.str.1332
.L.str.1332:
	.asciz	"dup 1 eq{\n"
	.size	.L.str.1332, 11

	.type	.L.str.1333,@object     # @.str.1333
.L.str.1333:
	.asciz	"pop dup length 1 sub get\n"
	.size	.L.str.1333, 26

	.type	.L.str.1334,@object     # @.str.1334
.L.str.1334:
	.asciz	"1 index length 1 sub mul\n"
	.size	.L.str.1334, 26

	.type	.L.str.1335,@object     # @.str.1335
.L.str.1335:
	.asciz	"dup dup floor sub\n"
	.size	.L.str.1335, 19

	.type	.L.str.1336,@object     # @.str.1336
.L.str.1336:
	.asciz	"pop cvi get\n"
	.size	.L.str.1336, 13

	.type	.L.str.1337,@object     # @.str.1337
.L.str.1337:
	.asciz	"3 1 roll floor cvi\n"
	.size	.L.str.1337, 20

	.type	.L.str.1338,@object     # @.str.1338
.L.str.1338:
	.asciz	"2 getinterval\n"
	.size	.L.str.1338, 15

	.type	.L.str.1339,@object     # @.str.1339
.L.str.1339:
	.asciz	"2 index mul 3 2 roll 1 exch sub 3 2 roll mul add\n"
	.size	.L.str.1339, 50

	.type	.L.str.1340,@object     # @.str.1340
.L.str.1340:
	.asciz	"(ComputeFunction_10 end )print dup//=only exec( stack=)print count =\n"
	.size	.L.str.1340, 70

	.type	.L.str.1341,@object     # @.str.1341
.L.str.1341:
	.asciz	"/ComputeFunction_n0\n"
	.size	.L.str.1341, 21

	.type	.L.str.1342,@object     # @.str.1342
.L.str.1342:
	.asciz	"(ComputeFunction_n0 beg N=)print dup//=only exec( stack=)print count =\n"
	.size	.L.str.1342, 72

	.type	.L.str.1343,@object     # @.str.1343
.L.str.1343:
	.asciz	"dup 2 add -1 roll\n"
	.size	.L.str.1343, 19

	.type	.L.str.1344,@object     # @.str.1344
.L.str.1344:
	.asciz	"dup 3 index length 1 sub ge{\n"
	.size	.L.str.1344, 30

	.type	.L.str.1345,@object     # @.str.1345
.L.str.1345:
	.asciz	"pop 1 sub\n"
	.size	.L.str.1345, 11

	.type	.L.str.1346,@object     # @.str.1346
.L.str.1346:
	.asciz	"exch dup length 1 sub get exch\n"
	.size	.L.str.1346, 32

	.type	.L.str.1347,@object     # @.str.1347
.L.str.1347:
	.asciz	"//PDFReader/ComputeFunction_n0 get exec\n"
	.size	.L.str.1347, 41

	.type	.L.str.1348,@object     # @.str.1348
.L.str.1348:
	.asciz	"dup floor cvi dup\n"
	.size	.L.str.1348, 19

	.type	.L.str.1349,@object     # @.str.1349
.L.str.1349:
	.asciz	"4 index exch get\n"
	.size	.L.str.1349, 18

	.type	.L.str.1350,@object     # @.str.1350
.L.str.1350:
	.asciz	"3 index dup\n"
	.size	.L.str.1350, 13

	.type	.L.str.1351,@object     # @.str.1351
.L.str.1351:
	.asciz	"5 add copy\n"
	.size	.L.str.1351, 12

	.type	.L.str.1352,@object     # @.str.1352
.L.str.1352:
	.asciz	"6 2 roll\n"
	.size	.L.str.1352, 10

	.type	.L.str.1353,@object     # @.str.1353
.L.str.1353:
	.asciz	"pop pop pop pop\n"
	.size	.L.str.1353, 17

	.type	.L.str.1354,@object     # @.str.1354
.L.str.1354:
	.asciz	"1 sub\n"
	.size	.L.str.1354, 7

	.type	.L.str.1355,@object     # @.str.1355
.L.str.1355:
	.asciz	"4 3 roll exch\n"
	.size	.L.str.1355, 15

	.type	.L.str.1356,@object     # @.str.1356
.L.str.1356:
	.asciz	"4 add 2 roll 1 add\n"
	.size	.L.str.1356, 20

	.type	.L.str.1357,@object     # @.str.1357
.L.str.1357:
	.asciz	"3 2 roll exch get\n"
	.size	.L.str.1357, 19

	.type	.L.str.1358,@object     # @.str.1358
.L.str.1358:
	.asciz	"exch 1 sub\n"
	.size	.L.str.1358, 12

	.type	.L.str.1359,@object     # @.str.1359
.L.str.1359:
	.asciz	"1 index mul\n"
	.size	.L.str.1359, 13

	.type	.L.str.1360,@object     # @.str.1360
.L.str.1360:
	.asciz	"1 exch sub mul add\n"
	.size	.L.str.1360, 20

	.type	.L.str.1361,@object     # @.str.1361
.L.str.1361:
	.asciz	"(ComputeFunction_n0 end )print dup//=only exec( stack=)print count =\n"
	.size	.L.str.1361, 70

	.type	.L.str.1362,@object     # @.str.1362
.L.str.1362:
	.asciz	"/FunctionToProc_x01\n"
	.size	.L.str.1362, 21

	.type	.L.str.1363,@object     # @.str.1363
.L.str.1363:
	.asciz	"dup/Domain get exch\n"
	.size	.L.str.1363, 21

	.type	.L.str.1364,@object     # @.str.1364
.L.str.1364:
	.asciz	"dup/Data get 0 get exch\n"
	.size	.L.str.1364, 25

	.type	.L.str.1365,@object     # @.str.1365
.L.str.1365:
	.asciz	"/Size get length\n"
	.size	.L.str.1365, 18

	.type	.L.str.1366,@object     # @.str.1366
.L.str.1366:
	.asciz	"[4 1 roll\n"
	.size	.L.str.1366, 11

	.type	.L.str.1367,@object     # @.str.1367
.L.str.1367:
	.asciz	"{(function beg, stack =)print count//=only exec(\\n)print}/exec load\n"
	.size	.L.str.1367, 69

	.type	.L.str.1368,@object     # @.str.1368
.L.str.1368:
	.asciz	"5 2 roll\n"
	.size	.L.str.1368, 10

	.type	.L.str.1369,@object     # @.str.1369
.L.str.1369:
	.asciz	"dup 1 gt{\n"
	.size	.L.str.1369, 11

	.type	.L.str.1370,@object     # @.str.1370
.L.str.1370:
	.asciz	"{mark exch\n"
	.size	.L.str.1370, 12

	.type	.L.str.1371,@object     # @.str.1371
.L.str.1371:
	.asciz	"3 add 2 roll\n"
	.size	.L.str.1371, 14

	.type	.L.str.1372,@object     # @.str.1372
.L.str.1372:
	.asciz	"//ScaleArgN exec\n"
	.size	.L.str.1372, 18

	.type	.L.str.1373,@object     # @.str.1373
.L.str.1373:
	.asciz	"counttomark dup\n"
	.size	.L.str.1373, 17

	.type	.L.str.1374,@object     # @.str.1374
.L.str.1374:
	.asciz	"3 add -2 roll\n"
	.size	.L.str.1374, 15

	.type	.L.str.1375,@object     # @.str.1375
.L.str.1375:
	.asciz	"pop exch\n"
	.size	.L.str.1375, 10

	.type	.L.str.1376,@object     # @.str.1376
.L.str.1376:
	.asciz	"//ComputeFunction_n0 exec\n"
	.size	.L.str.1376, 27

	.type	.L.str.1377,@object     # @.str.1377
.L.str.1377:
	.asciz	"3 1/roll load//ScaleArg/exec load\n"
	.size	.L.str.1377, 35

	.type	.L.str.1378,@object     # @.str.1378
.L.str.1378:
	.asciz	"//ComputeFunction_10/exec load\n"
	.size	.L.str.1378, 32

	.type	.L.str.1379,@object     # @.str.1379
.L.str.1379:
	.asciz	"(function end, stack =)/print load/count load//=only/exec load(\\n)/print load\n"
	.size	.L.str.1379, 79

	.type	.L.str.1380,@object     # @.str.1380
.L.str.1380:
	.asciz	"(Made a procedure for the 1-result function :)=\n"
	.size	.L.str.1380, 49

	.type	.L.str.1381,@object     # @.str.1381
.L.str.1381:
	.asciz	"/FunctionProcDebugBeg\n"
	.size	.L.str.1381, 23

	.type	.L.str.1382,@object     # @.str.1382
.L.str.1382:
	.asciz	"{(FunctionProcDebugBeg )print count =\n"
	.size	.L.str.1382, 39

	.type	.L.str.1383,@object     # @.str.1383
.L.str.1383:
	.asciz	"/FunctionProcDebugEnd\n"
	.size	.L.str.1383, 23

	.type	.L.str.1384,@object     # @.str.1384
.L.str.1384:
	.asciz	"{(FunctionProcDebugEnd )print count =\n"
	.size	.L.str.1384, 39

	.type	.L.str.1385,@object     # @.str.1385
.L.str.1385:
	.asciz	"/FunctionToProc_x0n\n"
	.size	.L.str.1385, 21

	.type	.L.str.1386,@object     # @.str.1386
.L.str.1386:
	.asciz	"PDFR_DEBUG{\n"
	.size	.L.str.1386, 13

	.type	.L.str.1387,@object     # @.str.1387
.L.str.1387:
	.asciz	"(FunctionToProc_x0n beg m=)print dup =\n"
	.size	.L.str.1387, 40

	.type	.L.str.1388,@object     # @.str.1388
.L.str.1388:
	.asciz	"1 index/Size get length exch\n"
	.size	.L.str.1388, 30

	.type	.L.str.1389,@object     # @.str.1389
.L.str.1389:
	.asciz	"dup 7 mul 2 add array\n"
	.size	.L.str.1389, 23

	.type	.L.str.1390,@object     # @.str.1390
.L.str.1390:
	.asciz	"dup 0//FunctionProcDebugBeg put\n"
	.size	.L.str.1390, 33

	.type	.L.str.1391,@object     # @.str.1391
.L.str.1391:
	.asciz	"dup 0//DoNothing put\n"
	.size	.L.str.1391, 22

	.type	.L.str.1392,@object     # @.str.1392
.L.str.1392:
	.asciz	"dup 1/exec load put\n"
	.size	.L.str.1392, 21

	.type	.L.str.1393,@object     # @.str.1393
.L.str.1393:
	.asciz	"dup 2 5 index/Domain get put\n"
	.size	.L.str.1393, 30

	.type	.L.str.1394,@object     # @.str.1394
.L.str.1394:
	.asciz	"2 index 1 eq{\n"
	.size	.L.str.1394, 15

	.type	.L.str.1395,@object     # @.str.1395
.L.str.1395:
	.asciz	"dup 3//ScaleArg put\n"
	.size	.L.str.1395, 21

	.type	.L.str.1396,@object     # @.str.1396
.L.str.1396:
	.asciz	"dup 3//ScaleArgN put\n"
	.size	.L.str.1396, 22

	.type	.L.str.1397,@object     # @.str.1397
.L.str.1397:
	.asciz	"dup 4/exec load put\n"
	.size	.L.str.1397, 21

	.type	.L.str.1398,@object     # @.str.1398
.L.str.1398:
	.asciz	"1 index 1 sub 0 exch 1 exch{\n"
	.size	.L.str.1398, 30

	.type	.L.str.1399,@object     # @.str.1399
.L.str.1399:
	.asciz	"dup 7 mul 5 add\n"
	.size	.L.str.1399, 17

	.type	.L.str.1400,@object     # @.str.1400
.L.str.1400:
	.asciz	"1 index 4 index 1 sub ne{\n"
	.size	.L.str.1400, 27

	.type	.L.str.1401,@object     # @.str.1401
.L.str.1401:
	.asciz	"dup 3 index exch 6 index put 1 add\n"
	.size	.L.str.1401, 36

	.type	.L.str.1402,@object     # @.str.1402
.L.str.1402:
	.asciz	"dup 3 index exch/copy load put 1 add\n"
	.size	.L.str.1402, 38

	.type	.L.str.1403,@object     # @.str.1403
.L.str.1403:
	.asciz	"6 index/Data get 3 index get\n"
	.size	.L.str.1403, 30

	.type	.L.str.1404,@object     # @.str.1404
.L.str.1404:
	.asciz	"6 index 1 eq{\n"
	.size	.L.str.1404, 15

	.type	.L.str.1405,@object     # @.str.1405
.L.str.1405:
	.asciz	"6 index\n"
	.size	.L.str.1405, 9

	.type	.L.str.1406,@object     # @.str.1406
.L.str.1406:
	.asciz	"//ComputeFunction_n0/exec load\n"
	.size	.L.str.1406, 32

	.type	.L.str.1407,@object     # @.str.1407
.L.str.1407:
	.asciz	"3 index exch 2 index exch put 1 add\n"
	.size	.L.str.1407, 37

	.type	.L.str.1408,@object     # @.str.1408
.L.str.1408:
	.asciz	"2 index 1 index/exec load put 1 add\n"
	.size	.L.str.1408, 37

	.type	.L.str.1409,@object     # @.str.1409
.L.str.1409:
	.asciz	"2 index 1 index 6 index 1 add put 1 add\n"
	.size	.L.str.1409, 41

	.type	.L.str.1410,@object     # @.str.1410
.L.str.1410:
	.asciz	"2 index 1 index 1 put 1 add\n"
	.size	.L.str.1410, 29

	.type	.L.str.1411,@object     # @.str.1411
.L.str.1411:
	.asciz	"2 index 1 index/roll load put\n"
	.size	.L.str.1411, 31

	.type	.L.str.1412,@object     # @.str.1412
.L.str.1412:
	.asciz	"dup dup length 2 sub//FunctionProcDebugEnd put\n"
	.size	.L.str.1412, 48

	.type	.L.str.1413,@object     # @.str.1413
.L.str.1413:
	.asciz	"dup dup length 2 sub//DoNothing put\n"
	.size	.L.str.1413, 37

	.type	.L.str.1414,@object     # @.str.1414
.L.str.1414:
	.asciz	"dup dup length 1 sub/exec load put\n"
	.size	.L.str.1414, 36

	.type	.L.str.1415,@object     # @.str.1415
.L.str.1415:
	.asciz	"cvx exch pop exch pop exch pop\n"
	.size	.L.str.1415, 32

	.type	.L.str.1416,@object     # @.str.1416
.L.str.1416:
	.asciz	"(Made a procedure for the n-argument function :)=\n"
	.size	.L.str.1416, 51

	.type	.L.str.1417,@object     # @.str.1417
.L.str.1417:
	.asciz	"(FunctionToProc_x0n end)=\n"
	.size	.L.str.1417, 27

	.type	.L.str.1418,@object     # @.str.1418
.L.str.1418:
	.asciz	"/MakeTableRec\n"
	.size	.L.str.1418, 15

	.type	.L.str.1419,@object     # @.str.1419
.L.str.1419:
	.asciz	"/MakeTable\n"
	.size	.L.str.1419, 12

	.type	.L.str.1420,@object     # @.str.1420
.L.str.1420:
	.asciz	"(MakeTable beg )print count =\n"
	.size	.L.str.1420, 31

	.type	.L.str.1421,@object     # @.str.1421
.L.str.1421:
	.asciz	"1 index/Size get exch\n"
	.size	.L.str.1421, 23

	.type	.L.str.1422,@object     # @.str.1422
.L.str.1422:
	.asciz	"1 sub dup\n"
	.size	.L.str.1422, 11

	.type	.L.str.1423,@object     # @.str.1423
.L.str.1423:
	.asciz	"1 index 0 eq{\n"
	.size	.L.str.1423, 15

	.type	.L.str.1424,@object     # @.str.1424
.L.str.1424:
	.asciz	"3 index 3 index//MakeTableRec exec\n"
	.size	.L.str.1424, 36

	.type	.L.str.1425,@object     # @.str.1425
.L.str.1425:
	.asciz	"(MakeTable end )print count =\n"
	.size	.L.str.1425, 31

	.type	.L.str.1426,@object     # @.str.1426
.L.str.1426:
	.asciz	"//MakeTableRec 0//MakeTable put\n"
	.size	.L.str.1426, 33

	.type	.L.str.1427,@object     # @.str.1427
.L.str.1427:
	.asciz	"/StoreSample\n"
	.size	.L.str.1427, 14

	.type	.L.str.1428,@object     # @.str.1428
.L.str.1428:
	.asciz	"-1 1{\n"
	.size	.L.str.1428, 7

	.type	.L.str.1429,@object     # @.str.1429
.L.str.1429:
	.asciz	"I exch get get\n"
	.size	.L.str.1429, 16

	.type	.L.str.1430,@object     # @.str.1430
.L.str.1430:
	.asciz	"I 0 get 3 2 roll put\n"
	.size	.L.str.1430, 22

	.type	.L.str.1431,@object     # @.str.1431
.L.str.1431:
	.asciz	"/ReadSample32\n"
	.size	.L.str.1431, 15

	.type	.L.str.1432,@object     # @.str.1432
.L.str.1432:
	.asciz	"File read not{\n"
	.size	.L.str.1432, 16

	.type	.L.str.1433,@object     # @.str.1433
.L.str.1433:
	.asciz	"mark(Insufficient data for function.)//error exec\n"
	.size	.L.str.1433, 51

	.type	.L.str.1434,@object     # @.str.1434
.L.str.1434:
	.asciz	"3 1 roll exch\n"
	.size	.L.str.1434, 15

	.type	.L.str.1435,@object     # @.str.1435
.L.str.1435:
	.asciz	"256 mul add 256 mul add\n"
	.size	.L.str.1435, 25

	.type	.L.str.1436,@object     # @.str.1436
.L.str.1436:
	.asciz	"//1_24_bitshift_1_sub div\n"
	.size	.L.str.1436, 27

	.type	.L.str.1437,@object     # @.str.1437
.L.str.1437:
	.asciz	"/ReadSample\n"
	.size	.L.str.1437, 13

	.type	.L.str.1438,@object     # @.str.1438
.L.str.1438:
	.asciz	"Buffer BitsLeft BitsPerSample\n"
	.size	.L.str.1438, 31

	.type	.L.str.1439,@object     # @.str.1439
.L.str.1439:
	.asciz	"{2 copy ge{\n"
	.size	.L.str.1439, 13

	.type	.L.str.1440,@object     # @.str.1440
.L.str.1440:
	.asciz	"8 add 3 1 roll\n"
	.size	.L.str.1440, 16

	.type	.L.str.1441,@object     # @.str.1441
.L.str.1441:
	.asciz	"256 mul File read not{\n"
	.size	.L.str.1441, 24

	.type	.L.str.1442,@object     # @.str.1442
.L.str.1442:
	.asciz	"add\n"
	.size	.L.str.1442, 5

	.type	.L.str.1443,@object     # @.str.1443
.L.str.1443:
	.asciz	"sub dup\n"
	.size	.L.str.1443, 9

	.type	.L.str.1444,@object     # @.str.1444
.L.str.1444:
	.asciz	"neg bitshift\n"
	.size	.L.str.1444, 14

	.type	.L.str.1445,@object     # @.str.1445
.L.str.1445:
	.asciz	"2 copy exch bitshift\n"
	.size	.L.str.1445, 22

	.type	.L.str.1446,@object     # @.str.1446
.L.str.1446:
	.asciz	"/Buffer exch def\n"
	.size	.L.str.1446, 18

	.type	.L.str.1447,@object     # @.str.1447
.L.str.1447:
	.asciz	"exch/BitsLeft exch def\n"
	.size	.L.str.1447, 24

	.type	.L.str.1448,@object     # @.str.1448
.L.str.1448:
	.asciz	"Div div\n"
	.size	.L.str.1448, 9

	.type	.L.str.1449,@object     # @.str.1449
.L.str.1449:
	.asciz	"/ReadSamplesRec\n"
	.size	.L.str.1449, 17

	.type	.L.str.1450,@object     # @.str.1450
.L.str.1450:
	.asciz	"{0\n"
	.size	.L.str.1450, 4

	.type	.L.str.1451,@object     # @.str.1451
.L.str.1451:
	.asciz	"/ReadSamples\n"
	.size	.L.str.1451, 14

	.type	.L.str.1452,@object     # @.str.1452
.L.str.1452:
	.asciz	"(ReadSamples beg )print count =\n"
	.size	.L.str.1452, 33

	.type	.L.str.1453,@object     # @.str.1453
.L.str.1453:
	.asciz	"0 1 Size 0 get 1 sub{\n"
	.size	.L.str.1453, 23

	.type	.L.str.1454,@object     # @.str.1454
.L.str.1454:
	.asciz	"I exch 0 exch put\n"
	.size	.L.str.1454, 19

	.type	.L.str.1455,@object     # @.str.1455
.L.str.1455:
	.asciz	"0 1 M 1 sub{\n"
	.size	.L.str.1455, 14

	.type	.L.str.1456,@object     # @.str.1456
.L.str.1456:
	.asciz	"dup Range exch 2 mul 2 getinterval\n"
	.size	.L.str.1456, 36

	.type	.L.str.1457,@object     # @.str.1457
.L.str.1457:
	.asciz	"(Will read a sample ... )print\n"
	.size	.L.str.1457, 32

	.type	.L.str.1458,@object     # @.str.1458
.L.str.1458:
	.asciz	"BitsPerSample 32 eq{//ReadSample32}{//ReadSample}ifelse\n"
	.size	.L.str.1458, 57

	.type	.L.str.1459,@object     # @.str.1459
.L.str.1459:
	.asciz	"exec exch//ScaleVal exec\n"
	.size	.L.str.1459, 26

	.type	.L.str.1460,@object     # @.str.1460
.L.str.1460:
	.asciz	"(value=)print dup =\n"
	.size	.L.str.1460, 21

	.type	.L.str.1461,@object     # @.str.1461
.L.str.1461:
	.asciz	"exch Table exch get\n"
	.size	.L.str.1461, 21

	.type	.L.str.1462,@object     # @.str.1462
.L.str.1462:
	.asciz	"Size length//StoreSample exec\n"
	.size	.L.str.1462, 31

	.type	.L.str.1463,@object     # @.str.1463
.L.str.1463:
	.asciz	"dup Size exch get 0 exch 1 exch 1 sub{\n"
	.size	.L.str.1463, 40

	.type	.L.str.1464,@object     # @.str.1464
.L.str.1464:
	.asciz	"I exch 2 index exch put\n"
	.size	.L.str.1464, 25

	.type	.L.str.1465,@object     # @.str.1465
.L.str.1465:
	.asciz	"dup//ReadSamplesRec exec\n"
	.size	.L.str.1465, 26

	.type	.L.str.1466,@object     # @.str.1466
.L.str.1466:
	.asciz	"(ReadSamples end )print count =\n"
	.size	.L.str.1466, 33

	.type	.L.str.1467,@object     # @.str.1467
.L.str.1467:
	.asciz	"//ReadSamplesRec 0//ReadSamples put\n"
	.size	.L.str.1467, 37

	.type	.L.str.1468,@object     # @.str.1468
.L.str.1468:
	.asciz	"/StreamToArray\n"
	.size	.L.str.1468, 16

	.type	.L.str.1469,@object     # @.str.1469
.L.str.1469:
	.asciz	"(StreamToArray beg )print count =\n"
	.size	.L.str.1469, 35

	.type	.L.str.1470,@object     # @.str.1470
.L.str.1470:
	.asciz	"userdict/FuncDataReader get begin\n"
	.size	.L.str.1470, 35

	.type	.L.str.1471,@object     # @.str.1471
.L.str.1471:
	.asciz	"dup/BitsPerSample get/BitsPerSample exch def\n"
	.size	.L.str.1471, 46

	.type	.L.str.1472,@object     # @.str.1472
.L.str.1472:
	.asciz	"dup/Size get length/N exch def\n"
	.size	.L.str.1472, 32

	.type	.L.str.1473,@object     # @.str.1473
.L.str.1473:
	.asciz	"dup/Range get length 2 idiv/M exch def\n"
	.size	.L.str.1473, 40

	.type	.L.str.1474,@object     # @.str.1474
.L.str.1474:
	.asciz	"1 BitsPerSample bitshift 1 sub/Div exch def\n"
	.size	.L.str.1474, 45

	.type	.L.str.1475,@object     # @.str.1475
.L.str.1475:
	.asciz	"/BitsLeft 0 def\n"
	.size	.L.str.1475, 17

	.type	.L.str.1476,@object     # @.str.1476
.L.str.1476:
	.asciz	"/Buffer 0 def\n"
	.size	.L.str.1476, 15

	.type	.L.str.1477,@object     # @.str.1477
.L.str.1477:
	.asciz	"dup/Size get/Size exch def\n"
	.size	.L.str.1477, 28

	.type	.L.str.1478,@object     # @.str.1478
.L.str.1478:
	.asciz	"dup/Range get/Range exch def\n"
	.size	.L.str.1478, 30

	.type	.L.str.1479,@object     # @.str.1479
.L.str.1479:
	.asciz	"/File 1 index//MakeStreamReader exec def\n"
	.size	.L.str.1479, 42

	.type	.L.str.1480,@object     # @.str.1480
.L.str.1480:
	.asciz	"/I[N{0}repeat]def\n"
	.size	.L.str.1480, 19

	.type	.L.str.1481,@object     # @.str.1481
.L.str.1481:
	.asciz	"M array\n"
	.size	.L.str.1481, 9

	.type	.L.str.1482,@object     # @.str.1482
.L.str.1482:
	.asciz	"2 index N//MakeTable exec\n"
	.size	.L.str.1482, 27

	.type	.L.str.1483,@object     # @.str.1483
.L.str.1483:
	.asciz	"/Table exch def\n"
	.size	.L.str.1483, 17

	.type	.L.str.1484,@object     # @.str.1484
.L.str.1484:
	.asciz	"N//ReadSamples exec\n"
	.size	.L.str.1484, 21

	.type	.L.str.1485,@object     # @.str.1485
.L.str.1485:
	.asciz	"(Table = )print Table ==\n"
	.size	.L.str.1485, 26

	.type	.L.str.1486,@object     # @.str.1486
.L.str.1486:
	.asciz	"/Data Table put\n"
	.size	.L.str.1486, 17

	.type	.L.str.1487,@object     # @.str.1487
.L.str.1487:
	.asciz	"(StreamToArray end )print count =\n"
	.size	.L.str.1487, 35

	.type	.L.str.1488,@object     # @.str.1488
.L.str.1488:
	.asciz	"/FunctionToProc10\n"
	.size	.L.str.1488, 19

	.type	.L.str.1489,@object     # @.str.1489
.L.str.1489:
	.asciz	"(FunctionToProc10 beg, Range = )print dup/Range get ==\n"
	.size	.L.str.1489, 56

	.type	.L.str.1490,@object     # @.str.1490
.L.str.1490:
	.asciz	"dup/Order//knownget exec{\n"
	.size	.L.str.1490, 27

	.type	.L.str.1491,@object     # @.str.1491
.L.str.1491:
	.asciz	"1 ne{\n"
	.size	.L.str.1491, 7

	.type	.L.str.1492,@object     # @.str.1492
.L.str.1492:
	.asciz	"(Underimplemented function Type 0 Order 3.)=\n"
	.size	.L.str.1492, 46

	.type	.L.str.1493,@object     # @.str.1493
.L.str.1493:
	.asciz	"dup//StreamToArray exec\n"
	.size	.L.str.1493, 25

	.type	.L.str.1494,@object     # @.str.1494
.L.str.1494:
	.asciz	"dup/Range get length dup 2 eq{\n"
	.size	.L.str.1494, 32

	.type	.L.str.1495,@object     # @.str.1495
.L.str.1495:
	.asciz	"pop//FunctionToProc_x01 exec\n"
	.size	.L.str.1495, 30

	.type	.L.str.1496,@object     # @.str.1496
.L.str.1496:
	.asciz	"2 idiv//FunctionToProc_x0n exec\n"
	.size	.L.str.1496, 33

	.type	.L.str.1497,@object     # @.str.1497
.L.str.1497:
	.asciz	"(FunctionToProc10 end)=\n"
	.size	.L.str.1497, 25

	.type	.L.str.1498,@object     # @.str.1498
.L.str.1498:
	.asciz	"/FunctionToProc12\n"
	.size	.L.str.1498, 19

	.type	.L.str.1499,@object     # @.str.1499
.L.str.1499:
	.asciz	"{begin\n"
	.size	.L.str.1499, 8

	.type	.L.str.1500,@object     # @.str.1500
.L.str.1500:
	.asciz	"currentdict/C0//knownget exec{length 1 eq}{true}ifelse{\n"
	.size	.L.str.1500, 57

	.type	.L.str.1501,@object     # @.str.1501
.L.str.1501:
	.asciz	"N\n"
	.size	.L.str.1501, 3

	.type	.L.str.1502,@object     # @.str.1502
.L.str.1502:
	.asciz	"currentdict/C0//knownget exec{\n"
	.size	.L.str.1502, 32

	.type	.L.str.1503,@object     # @.str.1503
.L.str.1503:
	.asciz	"currentdict/C1//knownget exec{\n"
	.size	.L.str.1503, 32

	.type	.L.str.1504,@object     # @.str.1504
.L.str.1504:
	.asciz	"4 2 roll\n"
	.size	.L.str.1504, 10

	.type	.L.str.1505,@object     # @.str.1505
.L.str.1505:
	.asciz	"exp mul add\n"
	.size	.L.str.1505, 13

	.type	.L.str.1506,@object     # @.str.1506
.L.str.1506:
	.asciz	"}aload pop\n"
	.size	.L.str.1506, 12

	.type	.L.str.1507,@object     # @.str.1507
.L.str.1507:
	.asciz	"0 1 C0 length 1 sub{\n"
	.size	.L.str.1507, 22

	.type	.L.str.1508,@object     # @.str.1508
.L.str.1508:
	.asciz	"C0 2 index get\n"
	.size	.L.str.1508, 16

	.type	.L.str.1509,@object     # @.str.1509
.L.str.1509:
	.asciz	"C1 3 index get\n"
	.size	.L.str.1509, 16

	.type	.L.str.1510,@object     # @.str.1510
.L.str.1510:
	.asciz	"[/dup load\n"
	.size	.L.str.1510, 12

	.type	.L.str.1511,@object     # @.str.1511
.L.str.1511:
	.asciz	"/pop load\n"
	.size	.L.str.1511, 11

	.type	.L.str.1512,@object     # @.str.1512
.L.str.1512:
	.asciz	"(FunctionType2Proc : )print dup ==\n"
	.size	.L.str.1512, 36

	.type	.L.str.1513,@object     # @.str.1513
.L.str.1513:
	.asciz	"/FunctionToProc14\n"
	.size	.L.str.1513, 19

	.type	.L.str.1514,@object     # @.str.1514
.L.str.1514:
	.asciz	"{//MakeStreamReader exec cvx exec\n"
	.size	.L.str.1514, 35

	.type	.L.str.1515,@object     # @.str.1515
.L.str.1515:
	.asciz	"(FunctionType4Proc : )print dup ==\n"
	.size	.L.str.1515, 36

	.type	.L.str.1516,@object     # @.str.1516
.L.str.1516:
	.asciz	"/FunctionToProc1\n"
	.size	.L.str.1516, 18

	.type	.L.str.1517,@object     # @.str.1517
.L.str.1517:
	.asciz	"dup/FunctionType get\n"
	.size	.L.str.1517, 22

	.type	.L.str.1518,@object     # @.str.1518
.L.str.1518:
	.asciz	"{dup 0 eq{\n"
	.size	.L.str.1518, 12

	.type	.L.str.1519,@object     # @.str.1519
.L.str.1519:
	.asciz	"pop//FunctionToProc10 exec exit\n"
	.size	.L.str.1519, 33

	.type	.L.str.1520,@object     # @.str.1520
.L.str.1520:
	.asciz	"dup 2 eq{\n"
	.size	.L.str.1520, 11

	.type	.L.str.1521,@object     # @.str.1521
.L.str.1521:
	.asciz	"pop//FunctionToProc12 exec exit\n"
	.size	.L.str.1521, 33

	.type	.L.str.1522,@object     # @.str.1522
.L.str.1522:
	.asciz	"dup 4 eq{\n"
	.size	.L.str.1522, 11

	.type	.L.str.1523,@object     # @.str.1523
.L.str.1523:
	.asciz	"pop//FunctionToProc14 exec exit\n"
	.size	.L.str.1523, 33

	.type	.L.str.1524,@object     # @.str.1524
.L.str.1524:
	.asciz	"mark exch(Function type )exch( isn't implemented yet.)//error exec\n"
	.size	.L.str.1524, 68

	.type	.L.str.1525,@object     # @.str.1525
.L.str.1525:
	.asciz	"/FunctionToProc20\n"
	.size	.L.str.1525, 19

	.type	.L.str.1526,@object     # @.str.1526
.L.str.1526:
	.asciz	"(FunctionToProc20, Range = )print dup/Range get ==\n"
	.size	.L.str.1526, 52

	.type	.L.str.1527,@object     # @.str.1527
.L.str.1527:
	.asciz	"/FunctionToProc\n"
	.size	.L.str.1527, 17

	.type	.L.str.1528,@object     # @.str.1528
.L.str.1528:
	.asciz	"(FunctionToProc beg )print count =\n"
	.size	.L.str.1528, 36

	.type	.L.str.1529,@object     # @.str.1529
.L.str.1529:
	.asciz	"dup/Domain get length 2 idiv\n"
	.size	.L.str.1529, 30

	.type	.L.str.1530,@object     # @.str.1530
.L.str.1530:
	.asciz	"pop//FunctionToProc1 exec exit\n"
	.size	.L.str.1530, 32

	.type	.L.str.1531,@object     # @.str.1531
.L.str.1531:
	.asciz	"pop//FunctionToProc20 exec exit\n"
	.size	.L.str.1531, 33

	.type	.L.str.1532,@object     # @.str.1532
.L.str.1532:
	.asciz	"mark(Functions with many arguments aren't implemented yet.)//error exec\n"
	.size	.L.str.1532, 73

	.type	.L.str.1533,@object     # @.str.1533
.L.str.1533:
	.asciz	"//PDFR_DEBUG{(Not a function dict, assume already a procedure.)print}if\n"
	.size	.L.str.1533, 73

	.type	.L.str.1534,@object     # @.str.1534
.L.str.1534:
	.asciz	"(FunctionToProc end )print count =\n"
	.size	.L.str.1534, 36

	.type	.L.str.1535,@object     # @.str.1535
.L.str.1535:
	.asciz	"/spotfunctions mark\n"
	.size	.L.str.1535, 21

	.type	.L.str.1536,@object     # @.str.1536
.L.str.1536:
	.asciz	"/Round{\n"
	.size	.L.str.1536, 9

	.type	.L.str.1537,@object     # @.str.1537
.L.str.1537:
	.asciz	"abs exch abs 2 copy add 1 le{\n"
	.size	.L.str.1537, 31

	.type	.L.str.1538,@object     # @.str.1538
.L.str.1538:
	.asciz	"dup mul exch dup mul add 1 exch sub\n"
	.size	.L.str.1538, 37

	.type	.L.str.1539,@object     # @.str.1539
.L.str.1539:
	.asciz	"1 sub dup mul exch 1 sub dup mul add 1 sub\n"
	.size	.L.str.1539, 44

	.type	.L.str.1540,@object     # @.str.1540
.L.str.1540:
	.asciz	"/Diamond{\n"
	.size	.L.str.1540, 11

	.type	.L.str.1541,@object     # @.str.1541
.L.str.1541:
	.asciz	"abs exch abs 2 copy add .75 le{\n"
	.size	.L.str.1541, 33

	.type	.L.str.1542,@object     # @.str.1542
.L.str.1542:
	.asciz	"2 copy add 1.23 le{\n"
	.size	.L.str.1542, 21

	.type	.L.str.1543,@object     # @.str.1543
.L.str.1543:
	.asciz	".85 mul add 1 exch sub\n"
	.size	.L.str.1543, 24

	.type	.L.str.1544,@object     # @.str.1544
.L.str.1544:
	.asciz	"/Ellipse{\n"
	.size	.L.str.1544, 11

	.type	.L.str.1545,@object     # @.str.1545
.L.str.1545:
	.asciz	"abs exch abs 2 copy 3 mul exch 4 mul add 3 sub dup 0 lt{\n"
	.size	.L.str.1545, 58

	.type	.L.str.1546,@object     # @.str.1546
.L.str.1546:
	.asciz	"pop dup mul exch .75 div dup mul add 4 div 1 exch sub\n"
	.size	.L.str.1546, 55

	.type	.L.str.1547,@object     # @.str.1547
.L.str.1547:
	.asciz	"pop 1 exch sub dup mul exch 1 exch sub\n"
	.size	.L.str.1547, 40

	.type	.L.str.1548,@object     # @.str.1548
.L.str.1548:
	.asciz	".75 div dup mul add 4 div 1 sub\n"
	.size	.L.str.1548, 33

	.type	.L.str.1549,@object     # @.str.1549
.L.str.1549:
	.asciz	".5 exch sub exch pop exch pop\n"
	.size	.L.str.1549, 31

	.type	.L.str.1550,@object     # @.str.1550
.L.str.1550:
	.asciz	"/EllipseA{dup mul .9 mul exch dup mul add 1 exch sub}\n"
	.size	.L.str.1550, 55

	.type	.L.str.1551,@object     # @.str.1551
.L.str.1551:
	.asciz	"/InvertedEllipseA{dup mul .9 mul exch dup mul add 1 sub}\n"
	.size	.L.str.1551, 58

	.type	.L.str.1552,@object     # @.str.1552
.L.str.1552:
	.asciz	"/EllipseB{dup 5 mul 8 div mul exch dup mul exch add sqrt 1 exch sub}\n"
	.size	.L.str.1552, 70

	.type	.L.str.1553,@object     # @.str.1553
.L.str.1553:
	.asciz	"/EllipseC{dup mul .9 mul exch dup mul add 1 exch sub}\n"
	.size	.L.str.1553, 55

	.type	.L.str.1554,@object     # @.str.1554
.L.str.1554:
	.asciz	"/InvertedEllipseC{dup mul .9 mul exch dup mul add 1 sub}\n"
	.size	.L.str.1554, 58

	.type	.L.str.1555,@object     # @.str.1555
.L.str.1555:
	.asciz	"/Line{exch pop abs neg}\n"
	.size	.L.str.1555, 25

	.type	.L.str.1556,@object     # @.str.1556
.L.str.1556:
	.asciz	"/LineX{pop}\n"
	.size	.L.str.1556, 13

	.type	.L.str.1557,@object     # @.str.1557
.L.str.1557:
	.asciz	"/LineY{exch pop}\n"
	.size	.L.str.1557, 18

	.type	.L.str.1558,@object     # @.str.1558
.L.str.1558:
	.asciz	"/Square{abs exch abs 2 copy lt{exch}if pop neg}\n"
	.size	.L.str.1558, 49

	.type	.L.str.1559,@object     # @.str.1559
.L.str.1559:
	.asciz	"/Cross{abs exch abs 2 copy gt{exch}if pop neg}\n"
	.size	.L.str.1559, 48

	.type	.L.str.1560,@object     # @.str.1560
.L.str.1560:
	.asciz	"/Rhomboid{abs exch abs 0.9 mul add 2 div}\n"
	.size	.L.str.1560, 43

	.type	.L.str.1561,@object     # @.str.1561
.L.str.1561:
	.asciz	"/DoubleDot{2{360 mul sin 2 div exch}repeat add}\n"
	.size	.L.str.1561, 49

	.type	.L.str.1562,@object     # @.str.1562
.L.str.1562:
	.asciz	"/InvertedDoubleDot{2{360 mul sin 2 div exch}repeat add neg}\n"
	.size	.L.str.1562, 61

	.type	.L.str.1563,@object     # @.str.1563
.L.str.1563:
	.asciz	"/SimpleDot{dup mul exch dup mul add 1 exch sub}\n"
	.size	.L.str.1563, 49

	.type	.L.str.1564,@object     # @.str.1564
.L.str.1564:
	.asciz	"/InvertedSimpleDot{dup mul exch dup mul add 1 sub}\n"
	.size	.L.str.1564, 52

	.type	.L.str.1565,@object     # @.str.1565
.L.str.1565:
	.asciz	"/CosineDot{180 mul cos exch 180 mul cos add 2 div}\n"
	.size	.L.str.1565, 52

	.type	.L.str.1566,@object     # @.str.1566
.L.str.1566:
	.asciz	"/Double{exch 2 div exch 2{360 mul sin 2 div exch}repeat add}\n"
	.size	.L.str.1566, 62

	.type	.L.str.1567,@object     # @.str.1567
.L.str.1567:
	.asciz	"/InvertedDouble{\n"
	.size	.L.str.1567, 18

	.type	.L.str.1568,@object     # @.str.1568
.L.str.1568:
	.asciz	"exch 2 div exch 2{360 mul sin 2 div exch}repeat add neg\n"
	.size	.L.str.1568, 57

	.type	.L.str.1569,@object     # @.str.1569
.L.str.1569:
	.asciz	"/CheckColorSpace\n"
	.size	.L.str.1569, 18

	.type	.L.str.1570,@object     # @.str.1570
.L.str.1570:
	.asciz	"dup type/arraytype ne{\n"
	.size	.L.str.1570, 24

	.type	.L.str.1571,@object     # @.str.1571
.L.str.1571:
	.asciz	"mark(Resource )3 index( must be an array.)//error exec\n"
	.size	.L.str.1571, 56

	.type	.L.str.1572,@object     # @.str.1572
.L.str.1572:
	.asciz	"/SubstitutePDFColorSpaceRec\n"
	.size	.L.str.1572, 29

	.type	.L.str.1573,@object     # @.str.1573
.L.str.1573:
	.asciz	"/SubstitutePDFColorSpace\n"
	.size	.L.str.1573, 26

	.type	.L.str.1574,@object     # @.str.1574
.L.str.1574:
	.asciz	"dup 0 get/Pattern eq{\n"
	.size	.L.str.1574, 23

	.type	.L.str.1575,@object     # @.str.1575
.L.str.1575:
	.asciz	"dup length 1 gt{\n"
	.size	.L.str.1575, 18

	.type	.L.str.1576,@object     # @.str.1576
.L.str.1576:
	.asciz	"dup dup 1//CheckColorSpace//ResolveA exec\n"
	.size	.L.str.1576, 43

	.type	.L.str.1577,@object     # @.str.1577
.L.str.1577:
	.asciz	"dup type/nametype ne{\n"
	.size	.L.str.1577, 23

	.type	.L.str.1578,@object     # @.str.1578
.L.str.1578:
	.asciz	"//SubstitutePDFColorSpaceRec exec\n"
	.size	.L.str.1578, 35

	.type	.L.str.1579,@object     # @.str.1579
.L.str.1579:
	.asciz	"dup 0 get/Indexed eq{\n"
	.size	.L.str.1579, 23

	.type	.L.str.1580,@object     # @.str.1580
.L.str.1580:
	.asciz	"dup 0 get/Separation eq{\n"
	.size	.L.str.1580, 26

	.type	.L.str.1581,@object     # @.str.1581
.L.str.1581:
	.asciz	"dup dup 2//CheckColorSpace//ResolveA exec\n"
	.size	.L.str.1581, 43

	.type	.L.str.1582,@object     # @.str.1582
.L.str.1582:
	.asciz	"dup 0 get/CalGray eq{\n"
	.size	.L.str.1582, 23

	.type	.L.str.1583,@object     # @.str.1583
.L.str.1583:
	.asciz	"1 get\n"
	.size	.L.str.1583, 7

	.type	.L.str.1584,@object     # @.str.1584
.L.str.1584:
	.asciz	"dup/Gamma//knownget exec{\n"
	.size	.L.str.1584, 27

	.type	.L.str.1585,@object     # @.str.1585
.L.str.1585:
	.asciz	"[exch[exch/exp load]cvx dup dup]\n"
	.size	.L.str.1585, 34

	.type	.L.str.1586,@object     # @.str.1586
.L.str.1586:
	.asciz	"1 index exch/DecodeLMN exch put\n"
	.size	.L.str.1586, 33

	.type	.L.str.1587,@object     # @.str.1587
.L.str.1587:
	.asciz	"[exch/CIEBasedA exch]\n"
	.size	.L.str.1587, 23

	.type	.L.str.1588,@object     # @.str.1588
.L.str.1588:
	.asciz	"dup 0 get/CalRGB eq{\n"
	.size	.L.str.1588, 22

	.type	.L.str.1589,@object     # @.str.1589
.L.str.1589:
	.asciz	"dup/Matrix//knownget exec{\n"
	.size	.L.str.1589, 28

	.type	.L.str.1590,@object     # @.str.1590
.L.str.1590:
	.asciz	"1 index exch/MatrixLMN exch put\n"
	.size	.L.str.1590, 33

	.type	.L.str.1591,@object     # @.str.1591
.L.str.1591:
	.asciz	"[exch/exp load]cvx\n"
	.size	.L.str.1591, 20

	.type	.L.str.1592,@object     # @.str.1592
.L.str.1592:
	.asciz	"3 array astore\n"
	.size	.L.str.1592, 16

	.type	.L.str.1593,@object     # @.str.1593
.L.str.1593:
	.asciz	"[exch/CIEBasedABC exch]\n"
	.size	.L.str.1593, 25

	.type	.L.str.1594,@object     # @.str.1594
.L.str.1594:
	.asciz	"dup 0 get/Lab eq{\n"
	.size	.L.str.1594, 19

	.type	.L.str.1595,@object     # @.str.1595
.L.str.1595:
	.asciz	"begin\n"
	.size	.L.str.1595, 7

	.type	.L.str.1596,@object     # @.str.1596
.L.str.1596:
	.asciz	"currentdict/Range//knownget exec{aload pop}{-100 100 -100 100}ifelse\n"
	.size	.L.str.1596, 70

	.type	.L.str.1597,@object     # @.str.1597
.L.str.1597:
	.asciz	"0 100 6 2 roll 6 array astore\n"
	.size	.L.str.1597, 31

	.type	.L.str.1598,@object     # @.str.1598
.L.str.1598:
	.asciz	"/RangeABC exch def\n"
	.size	.L.str.1598, 20

	.type	.L.str.1599,@object     # @.str.1599
.L.str.1599:
	.asciz	"/DecodeABC[{16 add 116 div}bind{500 div}bind{200 div}bind]def\n"
	.size	.L.str.1599, 63

	.type	.L.str.1600,@object     # @.str.1600
.L.str.1600:
	.asciz	"/MatrixABC[1 1 1 1 0 0 0 0 -1]def\n"
	.size	.L.str.1600, 35

	.type	.L.str.1601,@object     # @.str.1601
.L.str.1601:
	.asciz	"{dup 6 29 div ge{dup dup mul mul}{4 29 div sub 108 841 div mul}ifelse}\n"
	.size	.L.str.1601, 72

	.type	.L.str.1602,@object     # @.str.1602
.L.str.1602:
	.asciz	"/DecodeLMN[\n"
	.size	.L.str.1602, 13

	.type	.L.str.1603,@object     # @.str.1603
.L.str.1603:
	.asciz	"[3 index aload pop WhitePoint 0 get/mul load]cvx\n"
	.size	.L.str.1603, 50

	.type	.L.str.1604,@object     # @.str.1604
.L.str.1604:
	.asciz	"[4 index aload pop WhitePoint 1 get/mul load]cvx\n"
	.size	.L.str.1604, 50

	.type	.L.str.1605,@object     # @.str.1605
.L.str.1605:
	.asciz	"[5 index aload pop WhitePoint 2 get/mul load]cvx\n"
	.size	.L.str.1605, 50

	.type	.L.str.1606,@object     # @.str.1606
.L.str.1606:
	.asciz	"]def pop\n"
	.size	.L.str.1606, 10

	.type	.L.str.1607,@object     # @.str.1607
.L.str.1607:
	.asciz	"(Constructed from Lab <<)=\n"
	.size	.L.str.1607, 28

	.type	.L.str.1608,@object     # @.str.1608
.L.str.1608:
	.asciz	"currentdict{exch = ==}forall\n"
	.size	.L.str.1608, 30

	.type	.L.str.1609,@object     # @.str.1609
.L.str.1609:
	.asciz	"[/CIEBasedABC currentdict]\n"
	.size	.L.str.1609, 28

	.type	.L.str.1610,@object     # @.str.1610
.L.str.1610:
	.asciz	"dup 0 get/CIEBasedA eq{exit}if\n"
	.size	.L.str.1610, 32

	.type	.L.str.1611,@object     # @.str.1611
.L.str.1611:
	.asciz	"dup 0 get/CIEBasedABC eq{exit}if\n"
	.size	.L.str.1611, 34

	.type	.L.str.1612,@object     # @.str.1612
.L.str.1612:
	.asciz	"mark exch(Unimplemented color space )exch//error exec\n"
	.size	.L.str.1612, 55

	.type	.L.str.1613,@object     # @.str.1613
.L.str.1613:
	.asciz	"//SubstitutePDFColorSpaceRec 0//SubstitutePDFColorSpace put\n"
	.size	.L.str.1613, 61

	.type	.L.str.1614,@object     # @.str.1614
.L.str.1614:
	.asciz	"/ResolveArrayElement\n"
	.size	.L.str.1614, 22

	.type	.L.str.1615,@object     # @.str.1615
.L.str.1615:
	.asciz	"{2 copy get\n"
	.size	.L.str.1615, 13

	.type	.L.str.1616,@object     # @.str.1616
.L.str.1616:
	.asciz	"dup type dup/arraytype eq exch\n"
	.size	.L.str.1616, 32

	.type	.L.str.1617,@object     # @.str.1617
.L.str.1617:
	.asciz	"/packedarraytype eq or{\n"
	.size	.L.str.1617, 25

	.type	.L.str.1618,@object     # @.str.1618
.L.str.1618:
	.asciz	"dup length 1 ge exch xcheck and{\n"
	.size	.L.str.1618, 34

	.type	.L.str.1619,@object     # @.str.1619
.L.str.1619:
	.asciz	"dup 0 get type/integertype eq\n"
	.size	.L.str.1619, 31

	.type	.L.str.1620,@object     # @.str.1620
.L.str.1620:
	.asciz	"1 index 1 get type dup/arraytype\n"
	.size	.L.str.1620, 34

	.type	.L.str.1621,@object     # @.str.1621
.L.str.1621:
	.asciz	"eq exch\n"
	.size	.L.str.1621, 9

	.type	.L.str.1622,@object     # @.str.1622
.L.str.1622:
	.asciz	"/packedarraytype eq or\n"
	.size	.L.str.1622, 24

	.type	.L.str.1623,@object     # @.str.1623
.L.str.1623:
	.asciz	"2 index 4 1 roll put\n"
	.size	.L.str.1623, 22

	.type	.L.str.1624,@object     # @.str.1624
.L.str.1624:
	.asciz	"/ResolveColorSpaceArrayRec\n"
	.size	.L.str.1624, 28

	.type	.L.str.1625,@object     # @.str.1625
.L.str.1625:
	.asciz	"/SetColorSpaceSafe\n"
	.size	.L.str.1625, 20

	.type	.L.str.1626,@object     # @.str.1626
.L.str.1626:
	.asciz	"(SetColorSpaceSafe beg)=\n"
	.size	.L.str.1626, 26

	.type	.L.str.1627,@object     # @.str.1627
.L.str.1627:
	.asciz	"currentcolorspace dup type/arraytype eq{\n"
	.size	.L.str.1627, 42

	.type	.L.str.1628,@object     # @.str.1628
.L.str.1628:
	.asciz	"1 index type/arraytype eq{\n"
	.size	.L.str.1628, 28

	.type	.L.str.1629,@object     # @.str.1629
.L.str.1629:
	.asciz	"dup length 2 index length eq{\n"
	.size	.L.str.1629, 31

	.type	.L.str.1630,@object     # @.str.1630
.L.str.1630:
	.asciz	"false exch\n"
	.size	.L.str.1630, 12

	.type	.L.str.1631,@object     # @.str.1631
.L.str.1631:
	.asciz	"4 index exch get exch\n"
	.size	.L.str.1631, 23

	.type	.L.str.1632,@object     # @.str.1632
.L.str.1632:
	.asciz	"ne{\n"
	.size	.L.str.1632, 5

	.type	.L.str.1633,@object     # @.str.1633
.L.str.1633:
	.asciz	"exch pop true exch exit\n"
	.size	.L.str.1633, 25

	.type	.L.str.1634,@object     # @.str.1634
.L.str.1634:
	.asciz	"setcolorspace\n"
	.size	.L.str.1634, 15

	.type	.L.str.1635,@object     # @.str.1635
.L.str.1635:
	.asciz	"pop setcolorspace\n"
	.size	.L.str.1635, 19

	.type	.L.str.1636,@object     # @.str.1636
.L.str.1636:
	.asciz	"(SetColorSpaceSafe end)=\n"
	.size	.L.str.1636, 26

	.type	.L.str.1637,@object     # @.str.1637
.L.str.1637:
	.asciz	"/ResolveColorSpaceArray\n"
	.size	.L.str.1637, 25

	.type	.L.str.1638,@object     # @.str.1638
.L.str.1638:
	.asciz	"(ResolveColorSpaceArray beg )print dup ==\n"
	.size	.L.str.1638, 43

	.type	.L.str.1639,@object     # @.str.1639
.L.str.1639:
	.asciz	"1//ResolveArrayElement exec\n"
	.size	.L.str.1639, 29

	.type	.L.str.1640,@object     # @.str.1640
.L.str.1640:
	.asciz	"dup dup 1 get\n"
	.size	.L.str.1640, 15

	.type	.L.str.1641,@object     # @.str.1641
.L.str.1641:
	.asciz	"//SubstitutePDFColorSpace exec\n"
	.size	.L.str.1641, 32

	.type	.L.str.1642,@object     # @.str.1642
.L.str.1642:
	.asciz	"//ResolveColorSpaceArrayRec exec\n"
	.size	.L.str.1642, 34

	.type	.L.str.1643,@object     # @.str.1643
.L.str.1643:
	.asciz	"3//ResolveArrayElement exec\n"
	.size	.L.str.1643, 29

	.type	.L.str.1644,@object     # @.str.1644
.L.str.1644:
	.asciz	"dup 3 get//FunctionToProc exec\n"
	.size	.L.str.1644, 32

	.type	.L.str.1645,@object     # @.str.1645
.L.str.1645:
	.asciz	"2 copy 3 exch put\n"
	.size	.L.str.1645, 19

	.type	.L.str.1646,@object     # @.str.1646
.L.str.1646:
	.asciz	"dup length 1 gt{dup\n"
	.size	.L.str.1646, 21

	.type	.L.str.1647,@object     # @.str.1647
.L.str.1647:
	.asciz	"1 get dup type/arraytype eq{\n"
	.size	.L.str.1647, 30

	.type	.L.str.1648,@object     # @.str.1648
.L.str.1648:
	.asciz	"ResolveColorSpaceArray\n"
	.size	.L.str.1648, 24

	.type	.L.str.1649,@object     # @.str.1649
.L.str.1649:
	.asciz	"1 index 1 3 -1 roll put\n"
	.size	.L.str.1649, 25

	.type	.L.str.1650,@object     # @.str.1650
.L.str.1650:
	.asciz	"}{pop}ifelse}if\n"
	.size	.L.str.1650, 17

	.type	.L.str.1651,@object     # @.str.1651
.L.str.1651:
	.asciz	"(Construcrted color space :)=\n"
	.size	.L.str.1651, 31

	.type	.L.str.1652,@object     # @.str.1652
.L.str.1652:
	.asciz	"(ResolveColorSpaceArray end )print dup ==\n"
	.size	.L.str.1652, 43

	.type	.L.str.1653,@object     # @.str.1653
.L.str.1653:
	.asciz	"//ResolveColorSpaceArrayRec 0//ResolveColorSpaceArray put\n"
	.size	.L.str.1653, 59

	.type	.L.str.1654,@object     # @.str.1654
.L.str.1654:
	.asciz	"/ResolveColorSpace\n"
	.size	.L.str.1654, 20

	.type	.L.str.1655,@object     # @.str.1655
.L.str.1655:
	.asciz	"(ResolveColorSpace beg )print dup =\n"
	.size	.L.str.1655, 37

	.type	.L.str.1656,@object     # @.str.1656
.L.str.1656:
	.asciz	"dup//SimpleColorSpaceNames exch known not{\n"
	.size	.L.str.1656, 44

	.type	.L.str.1657,@object     # @.str.1657
.L.str.1657:
	.asciz	"dup//PDFColorSpaces exch//knownget exec{\n"
	.size	.L.str.1657, 42

	.type	.L.str.1658,@object     # @.str.1658
.L.str.1658:
	.asciz	"(ResolveColorSpace known )=\n"
	.size	.L.str.1658, 29

	.type	.L.str.1659,@object     # @.str.1659
.L.str.1659:
	.asciz	"/ColorSpace//DoNothing//ResolveD exec\n"
	.size	.L.str.1659, 39

	.type	.L.str.1660,@object     # @.str.1660
.L.str.1660:
	.asciz	"exch//CheckColorSpace//ResolveD exec\n"
	.size	.L.str.1660, 38

	.type	.L.str.1661,@object     # @.str.1661
.L.str.1661:
	.asciz	"//ResolveColorSpaceArray exec\n"
	.size	.L.str.1661, 31

	.type	.L.str.1662,@object     # @.str.1662
.L.str.1662:
	.asciz	"dup//PDFColorSpaces 4 2 roll put\n"
	.size	.L.str.1662, 34

	.type	.L.str.1663,@object     # @.str.1663
.L.str.1663:
	.asciz	"(ResolveColorSpace end )print dup ==\n"
	.size	.L.str.1663, 38

	.type	.L.str.1664,@object     # @.str.1664
.L.str.1664:
	.asciz	"/CheckPattern\n"
	.size	.L.str.1664, 15

	.type	.L.str.1665,@object     # @.str.1665
.L.str.1665:
	.asciz	"dup/PatternType//knownget exec{\n"
	.size	.L.str.1665, 33

	.type	.L.str.1666,@object     # @.str.1666
.L.str.1666:
	.asciz	"dup 1 ne{\n"
	.size	.L.str.1666, 11

	.type	.L.str.1667,@object     # @.str.1667
.L.str.1667:
	.asciz	"mark(Resource )4 index( is a shading, which can't be handled at level 2. )//error exec\n"
	.size	.L.str.1667, 88

	.type	.L.str.1668,@object     # @.str.1668
.L.str.1668:
	.asciz	"dup/Type knownget{\n"
	.size	.L.str.1668, 20

	.type	.L.str.1669,@object     # @.str.1669
.L.str.1669:
	.asciz	"/Pattern ne{\n"
	.size	.L.str.1669, 14

	.type	.L.str.1670,@object     # @.str.1670
.L.str.1670:
	.asciz	"mark(Resource )4 index( must have /Type/Pattern .)//error exec\n"
	.size	.L.str.1670, 64

	.type	.L.str.1671,@object     # @.str.1671
.L.str.1671:
	.asciz	"/PaintProc\n"
	.size	.L.str.1671, 12

	.type	.L.str.1672,@object     # @.str.1672
.L.str.1672:
	.asciz	"{/Context get\n"
	.size	.L.str.1672, 15

	.type	.L.str.1673,@object     # @.str.1673
.L.str.1673:
	.asciz	"//RunDelayedStream exec\n"
	.size	.L.str.1673, 25

	.type	.L.str.1674,@object     # @.str.1674
.L.str.1674:
	.asciz	"/ResolvePattern\n"
	.size	.L.str.1674, 17

	.type	.L.str.1675,@object     # @.str.1675
.L.str.1675:
	.asciz	"userdict/PDFR_Patterns get\n"
	.size	.L.str.1675, 28

	.type	.L.str.1676,@object     # @.str.1676
.L.str.1676:
	.asciz	"exch//knownget exec{\n"
	.size	.L.str.1676, 22

	.type	.L.str.1677,@object     # @.str.1677
.L.str.1677:
	.asciz	"/Pattern//DoNothing//ResolveD exec\n"
	.size	.L.str.1677, 36

	.type	.L.str.1678,@object     # @.str.1678
.L.str.1678:
	.asciz	"exch//CheckPattern//ResolveD exec\n"
	.size	.L.str.1678, 35

	.type	.L.str.1679,@object     # @.str.1679
.L.str.1679:
	.asciz	"dup dup/Context exch put\n"
	.size	.L.str.1679, 26

	.type	.L.str.1680,@object     # @.str.1680
.L.str.1680:
	.asciz	"dup/Resources//DoNothing//ResolveD exec pop\n"
	.size	.L.str.1680, 45

	.type	.L.str.1681,@object     # @.str.1681
.L.str.1681:
	.asciz	"dup/PaintProc//PaintProc put\n"
	.size	.L.str.1681, 30

	.type	.L.str.1682,@object     # @.str.1682
.L.str.1682:
	.asciz	"gsave userdict/PDFR_InitialGS get setgstate\n"
	.size	.L.str.1682, 45

	.type	.L.str.1683,@object     # @.str.1683
.L.str.1683:
	.asciz	"currentglobal exch false setglobal\n"
	.size	.L.str.1683, 36

	.type	.L.str.1684,@object     # @.str.1684
.L.str.1684:
	.asciz	"dup/Matrix get\n"
	.size	.L.str.1684, 16

	.type	.L.str.1685,@object     # @.str.1685
.L.str.1685:
	.asciz	"makepattern\n"
	.size	.L.str.1685, 13

	.type	.L.str.1686,@object     # @.str.1686
.L.str.1686:
	.asciz	"grestore\n"
	.size	.L.str.1686, 10

	.type	.L.str.1687,@object     # @.str.1687
.L.str.1687:
	.asciz	"dup userdict/PDFR_Patterns get\n"
	.size	.L.str.1687, 32

	.type	.L.str.1688,@object     # @.str.1688
.L.str.1688:
	.asciz	"/SetColor\n"
	.size	.L.str.1688, 11

	.type	.L.str.1689,@object     # @.str.1689
.L.str.1689:
	.asciz	"(SetColor beg)=\n"
	.size	.L.str.1689, 17

	.type	.L.str.1690,@object     # @.str.1690
.L.str.1690:
	.asciz	"currentcolorspace dup type/nametype eq{\n"
	.size	.L.str.1690, 41

	.type	.L.str.1691,@object     # @.str.1691
.L.str.1691:
	.asciz	"pop setcolor\n"
	.size	.L.str.1691, 14

	.type	.L.str.1692,@object     # @.str.1692
.L.str.1692:
	.asciz	"0 get/Pattern eq{\n"
	.size	.L.str.1692, 19

	.type	.L.str.1693,@object     # @.str.1693
.L.str.1693:
	.asciz	"//ResolvePattern exec setpattern\n"
	.size	.L.str.1693, 34

	.type	.L.str.1694,@object     # @.str.1694
.L.str.1694:
	.asciz	"setcolor\n"
	.size	.L.str.1694, 10

	.type	.L.str.1695,@object     # @.str.1695
.L.str.1695:
	.asciz	"(SetColor end)=\n"
	.size	.L.str.1695, 17

	.type	.L.str.1696,@object     # @.str.1696
.L.str.1696:
	.asciz	"/ImageKeys 15 dict begin\n"
	.size	.L.str.1696, 26

	.type	.L.str.1697,@object     # @.str.1697
.L.str.1697:
	.asciz	"/BPC/BitsPerComponent def\n"
	.size	.L.str.1697, 27

	.type	.L.str.1698,@object     # @.str.1698
.L.str.1698:
	.asciz	"/CS/ColorSpace def\n"
	.size	.L.str.1698, 20

	.type	.L.str.1699,@object     # @.str.1699
.L.str.1699:
	.asciz	"/D/Decode def\n"
	.size	.L.str.1699, 15

	.type	.L.str.1700,@object     # @.str.1700
.L.str.1700:
	.asciz	"/DP/DecodeParms def\n"
	.size	.L.str.1700, 21

	.type	.L.str.1701,@object     # @.str.1701
.L.str.1701:
	.asciz	"/F/Filter def\n"
	.size	.L.str.1701, 15

	.type	.L.str.1702,@object     # @.str.1702
.L.str.1702:
	.asciz	"/H/Height def\n"
	.size	.L.str.1702, 15

	.type	.L.str.1703,@object     # @.str.1703
.L.str.1703:
	.asciz	"/IM/ImageMask def\n"
	.size	.L.str.1703, 19

	.type	.L.str.1704,@object     # @.str.1704
.L.str.1704:
	.asciz	"/I/Interpolate def\n"
	.size	.L.str.1704, 20

	.type	.L.str.1705,@object     # @.str.1705
.L.str.1705:
	.asciz	"/W/Width def\n"
	.size	.L.str.1705, 14

	.type	.L.str.1706,@object     # @.str.1706
.L.str.1706:
	.asciz	"/ImageValues 15 dict begin\n"
	.size	.L.str.1706, 28

	.type	.L.str.1707,@object     # @.str.1707
.L.str.1707:
	.asciz	"/G/DeviceGray def\n"
	.size	.L.str.1707, 19

	.type	.L.str.1708,@object     # @.str.1708
.L.str.1708:
	.asciz	"/RGB/DeviceRGB def\n"
	.size	.L.str.1708, 20

	.type	.L.str.1709,@object     # @.str.1709
.L.str.1709:
	.asciz	"/CMYK/DeviceCMYK def\n"
	.size	.L.str.1709, 22

	.type	.L.str.1710,@object     # @.str.1710
.L.str.1710:
	.asciz	"/I/Indexed def\n"
	.size	.L.str.1710, 16

	.type	.L.str.1711,@object     # @.str.1711
.L.str.1711:
	.asciz	"/GetColorSpaceRange\n"
	.size	.L.str.1711, 21

	.type	.L.str.1712,@object     # @.str.1712
.L.str.1712:
	.asciz	"{2 index/ColorSpace get\n"
	.size	.L.str.1712, 25

	.type	.L.str.1713,@object     # @.str.1713
.L.str.1713:
	.asciz	"/DecodeArrays 15 dict begin\n"
	.size	.L.str.1713, 29

	.type	.L.str.1714,@object     # @.str.1714
.L.str.1714:
	.asciz	"/DeviceGray{[0 1]}def\n"
	.size	.L.str.1714, 23

	.type	.L.str.1715,@object     # @.str.1715
.L.str.1715:
	.asciz	"/DeviceRGB{[0 1 0 1 0 1]}def\n"
	.size	.L.str.1715, 30

	.type	.L.str.1716,@object     # @.str.1716
.L.str.1716:
	.asciz	"/DeviceCMYK{[0 1 0 1 0 1 0 1]}def\n"
	.size	.L.str.1716, 35

	.type	.L.str.1717,@object     # @.str.1717
.L.str.1717:
	.asciz	"/Indexed{\n"
	.size	.L.str.1717, 11

	.type	.L.str.1718,@object     # @.str.1718
.L.str.1718:
	.asciz	"dup/BitsPerComponent get 1 exch bitshift 1 sub[exch 0 exch]\n"
	.size	.L.str.1718, 61

	.type	.L.str.1719,@object     # @.str.1719
.L.str.1719:
	.asciz	"/Separation{[0 1]}def\n"
	.size	.L.str.1719, 23

	.type	.L.str.1720,@object     # @.str.1720
.L.str.1720:
	.asciz	"/CIEBasedA{[0 1]/RangeA//GetColorSpaceRange exec}def\n"
	.size	.L.str.1720, 54

	.type	.L.str.1721,@object     # @.str.1721
.L.str.1721:
	.asciz	"/CIEBasedABC{[0 1 0 1 0 1]/RangeABC//GetColorSpaceRange exec}def\n"
	.size	.L.str.1721, 66

	.type	.L.str.1722,@object     # @.str.1722
.L.str.1722:
	.asciz	"/Substitute\n"
	.size	.L.str.1722, 13

	.type	.L.str.1723,@object     # @.str.1723
.L.str.1723:
	.asciz	"{1 index//knownget exec{\n"
	.size	.L.str.1723, 26

	.type	.L.str.1724,@object     # @.str.1724
.L.str.1724:
	.asciz	"/DebugImagePrinting\n"
	.size	.L.str.1724, 21

	.type	.L.str.1725,@object     # @.str.1725
.L.str.1725:
	.asciz	"(Image :)=\n"
	.size	.L.str.1725, 12

	.type	.L.str.1726,@object     # @.str.1726
.L.str.1726:
	.asciz	"dup{exch//=only exec( )print ==\n"
	.size	.L.str.1726, 33

	.type	.L.str.1727,@object     # @.str.1727
.L.str.1727:
	.asciz	"/CompleteImage\n"
	.size	.L.str.1727, 16

	.type	.L.str.1728,@object     # @.str.1728
.L.str.1728:
	.asciz	"dup/ColorSpace known{\n"
	.size	.L.str.1728, 23

	.type	.L.str.1729,@object     # @.str.1729
.L.str.1729:
	.asciz	"dup/ColorSpace//CheckColorSpace//ResolveD exec pop\n"
	.size	.L.str.1729, 52

	.type	.L.str.1730,@object     # @.str.1730
.L.str.1730:
	.asciz	"dup/Decode known not{\n"
	.size	.L.str.1730, 23

	.type	.L.str.1731,@object     # @.str.1731
.L.str.1731:
	.asciz	"dup/ColorSpace//knownget exec{\n"
	.size	.L.str.1731, 32

	.type	.L.str.1732,@object     # @.str.1732
.L.str.1732:
	.asciz	"//DecodeArrays exch get exec\n"
	.size	.L.str.1732, 30

	.type	.L.str.1733,@object     # @.str.1733
.L.str.1733:
	.asciz	"[0 1]\n"
	.size	.L.str.1733, 7

	.type	.L.str.1734,@object     # @.str.1734
.L.str.1734:
	.asciz	"1 index exch/Decode exch put\n"
	.size	.L.str.1734, 30

	.type	.L.str.1735,@object     # @.str.1735
.L.str.1735:
	.asciz	"dup/ImageMatrix[2 index/Width get 0 0 5 index/Height get neg\n"
	.size	.L.str.1735, 62

	.type	.L.str.1736,@object     # @.str.1736
.L.str.1736:
	.asciz	"0 7 index/Height get]put\n"
	.size	.L.str.1736, 26

	.type	.L.str.1737,@object     # @.str.1737
.L.str.1737:
	.asciz	"//DebugImagePrinting exec\n"
	.size	.L.str.1737, 27

	.type	.L.str.1738,@object     # @.str.1738
.L.str.1738:
	.asciz	"/CompleteInlineImage\n"
	.size	.L.str.1738, 22

	.type	.L.str.1739,@object     # @.str.1739
.L.str.1739:
	.asciz	"(CompleteInlineImage beg)=\n"
	.size	.L.str.1739, 28

	.type	.L.str.1740,@object     # @.str.1740
.L.str.1740:
	.asciz	"dup/ImageType known not{\n"
	.size	.L.str.1740, 26

	.type	.L.str.1741,@object     # @.str.1741
.L.str.1741:
	.asciz	"dup/ImageType 1 put\n"
	.size	.L.str.1741, 21

	.type	.L.str.1742,@object     # @.str.1742
.L.str.1742:
	.asciz	"exch//ImageKeys//Substitute exec\n"
	.size	.L.str.1742, 34

	.type	.L.str.1743,@object     # @.str.1743
.L.str.1743:
	.asciz	"dup/Filter eq{\n"
	.size	.L.str.1743, 16

	.type	.L.str.1744,@object     # @.str.1744
.L.str.1744:
	.asciz	"exch//ImageValues//Substitute exec exch\n"
	.size	.L.str.1744, 41

	.type	.L.str.1745,@object     # @.str.1745
.L.str.1745:
	.asciz	"dup/ColorSpace eq{\n"
	.size	.L.str.1745, 20

	.type	.L.str.1746,@object     # @.str.1746
.L.str.1746:
	.asciz	"dup//ImageValues exch//knownget exec{\n"
	.size	.L.str.1746, 39

	.type	.L.str.1747,@object     # @.str.1747
.L.str.1747:
	.asciz	"//ResolveColorSpace exec\n"
	.size	.L.str.1747, 26

	.type	.L.str.1748,@object     # @.str.1748
.L.str.1748:
	.asciz	"//CompleteImage exec\n"
	.size	.L.str.1748, 22

	.type	.L.str.1749,@object     # @.str.1749
.L.str.1749:
	.asciz	"dup/DataSource 2 copy get\n"
	.size	.L.str.1749, 27

	.type	.L.str.1750,@object     # @.str.1750
.L.str.1750:
	.asciz	"2 index//AppendFilters exec put\n"
	.size	.L.str.1750, 33

	.type	.L.str.1751,@object     # @.str.1751
.L.str.1751:
	.asciz	"(CompleteInlineImage end)=\n"
	.size	.L.str.1751, 28

	.type	.L.str.1752,@object     # @.str.1752
.L.str.1752:
	.asciz	"/CompleteOutlineImage\n"
	.size	.L.str.1752, 23

	.type	.L.str.1753,@object     # @.str.1753
.L.str.1753:
	.asciz	"(CompleteOutlineImage beg)=\n"
	.size	.L.str.1753, 29

	.type	.L.str.1754,@object     # @.str.1754
.L.str.1754:
	.asciz	"dup dup//MakeStreamReader exec/DataSource exch put\n"
	.size	.L.str.1754, 52

	.type	.L.str.1755,@object     # @.str.1755
.L.str.1755:
	.asciz	"dup/ColorSpace//CheckColorSpace//ResolveD exec\n"
	.size	.L.str.1755, 48

	.type	.L.str.1756,@object     # @.str.1756
.L.str.1756:
	.asciz	"1 index exch/ColorSpace exch put\n"
	.size	.L.str.1756, 34

	.type	.L.str.1757,@object     # @.str.1757
.L.str.1757:
	.asciz	"(CompleteOutlineImage end)=\n"
	.size	.L.str.1757, 29

	.type	.L.str.1758,@object     # @.str.1758
.L.str.1758:
	.asciz	"/DoImage\n"
	.size	.L.str.1758, 10

	.type	.L.str.1759,@object     # @.str.1759
.L.str.1759:
	.asciz	"(DoImage beg)=\n"
	.size	.L.str.1759, 16

	.type	.L.str.1760,@object     # @.str.1760
.L.str.1760:
	.asciz	"gsave\n"
	.size	.L.str.1760, 7

	.type	.L.str.1761,@object     # @.str.1761
.L.str.1761:
	.asciz	"dup/ColorSpace//knownget exec{setcolorspace}if\n"
	.size	.L.str.1761, 48

	.type	.L.str.1762,@object     # @.str.1762
.L.str.1762:
	.asciz	"dup/ImageMask//knownget exec not{false}if\n"
	.size	.L.str.1762, 43

	.type	.L.str.1763,@object     # @.str.1763
.L.str.1763:
	.asciz	"{imagemask}{image}ifelse\n"
	.size	.L.str.1763, 26

	.type	.L.str.1764,@object     # @.str.1764
.L.str.1764:
	.asciz	"(DoImage end)=\n"
	.size	.L.str.1764, 16

	.type	.L.str.1765,@object     # @.str.1765
.L.str.1765:
	.asciz	"/GSave\n"
	.size	.L.str.1765, 8

	.type	.L.str.1766,@object     # @.str.1766
.L.str.1766:
	.asciz	"//PDFReader/GraphicStateStackPointer get\n"
	.size	.L.str.1766, 42

	.type	.L.str.1767,@object     # @.str.1767
.L.str.1767:
	.asciz	"dup//GraphicStateStack exch get null eq{\n"
	.size	.L.str.1767, 42

	.type	.L.str.1768,@object     # @.str.1768
.L.str.1768:
	.asciz	"dup//GraphicStateStack exch//InitialGraphicState length dict put\n"
	.size	.L.str.1768, 66

	.type	.L.str.1769,@object     # @.str.1769
.L.str.1769:
	.asciz	"dup//GraphicStateStack exch get\n"
	.size	.L.str.1769, 33

	.type	.L.str.1770,@object     # @.str.1770
.L.str.1770:
	.asciz	"//GraphicState exch copy pop\n"
	.size	.L.str.1770, 30

	.type	.L.str.1771,@object     # @.str.1771
.L.str.1771:
	.asciz	"1 add//PDFReader exch/GraphicStateStackPointer exch put\n"
	.size	.L.str.1771, 57

	.type	.L.str.1772,@object     # @.str.1772
.L.str.1772:
	.asciz	"/GRestore\n"
	.size	.L.str.1772, 11

	.type	.L.str.1773,@object     # @.str.1773
.L.str.1773:
	.asciz	"//PDFReader exch/GraphicStateStackPointer exch put\n"
	.size	.L.str.1773, 52

	.type	.L.str.1774,@object     # @.str.1774
.L.str.1774:
	.asciz	"//GraphicStateStack exch get\n"
	.size	.L.str.1774, 30

	.type	.L.str.1775,@object     # @.str.1775
.L.str.1775:
	.asciz	"//GraphicState copy pop\n"
	.size	.L.str.1775, 25

	.type	.L.str.1776,@object     # @.str.1776
.L.str.1776:
	.asciz	"/SetFont\n"
	.size	.L.str.1776, 10

	.type	.L.str.1777,@object     # @.str.1777
.L.str.1777:
	.asciz	"{dup//GraphicState exch/FontSize exch put\n"
	.size	.L.str.1777, 43

	.type	.L.str.1778,@object     # @.str.1778
.L.str.1778:
	.asciz	"//ResolveAndSetFont exec\n"
	.size	.L.str.1778, 26

	.type	.L.str.1779,@object     # @.str.1779
.L.str.1779:
	.asciz	"//GraphicState/FontMatrixNonHV currentfont/FontMatrix get 1 get 0 ne put\n"
	.size	.L.str.1779, 74

	.type	.L.str.1780,@object     # @.str.1780
.L.str.1780:
	.asciz	"/ShowText\n"
	.size	.L.str.1780, 11

	.type	.L.str.1781,@object     # @.str.1781
.L.str.1781:
	.asciz	"{//GraphicState/TextRenderingMode get 0 eq{\n"
	.size	.L.str.1781, 45

	.type	.L.str.1782,@object     # @.str.1782
.L.str.1782:
	.asciz	"//GraphicState/WordSpacing get 0\n"
	.size	.L.str.1782, 34

	.type	.L.str.1783,@object     # @.str.1783
.L.str.1783:
	.asciz	"32\n"
	.size	.L.str.1783, 4

	.type	.L.str.1784,@object     # @.str.1784
.L.str.1784:
	.asciz	"//GraphicState/CharacterSpacing get 0\n"
	.size	.L.str.1784, 39

	.type	.L.str.1785,@object     # @.str.1785
.L.str.1785:
	.asciz	"//GraphicState/FontMatrixNonHV get{\n"
	.size	.L.str.1785, 37

	.type	.L.str.1786,@object     # @.str.1786
.L.str.1786:
	.asciz	"7 -2 roll pop\n"
	.size	.L.str.1786, 15

	.type	.L.str.1787,@object     # @.str.1787
.L.str.1787:
	.asciz	"5 -2 roll pop\n"
	.size	.L.str.1787, 15

	.type	.L.str.1788,@object     # @.str.1788
.L.str.1788:
	.asciz	"5 -1 roll\n"
	.size	.L.str.1788, 11

	.type	.L.str.1789,@object     # @.str.1789
.L.str.1789:
	.asciz	"3 index add\n"
	.size	.L.str.1789, 13

	.type	.L.str.1790,@object     # @.str.1790
.L.str.1790:
	.asciz	"exch 2 index eq{3 index add}if\n"
	.size	.L.str.1790, 32

	.type	.L.str.1791,@object     # @.str.1791
.L.str.1791:
	.asciz	"currentfont/FontMatrix get 0 get 0 ne{\n"
	.size	.L.str.1791, 40

	.type	.L.str.1792,@object     # @.str.1792
.L.str.1792:
	.asciz	"1 1 index length 1 sub getinterval cvx\n"
	.size	.L.str.1792, 40

	.type	.L.str.1793,@object     # @.str.1793
.L.str.1793:
	.asciz	"5 index\n"
	.size	.L.str.1793, 9

	.type	.L.str.1794,@object     # @.str.1794
.L.str.1794:
	.asciz	"cshow\n"
	.size	.L.str.1794, 7

	.type	.L.str.1795,@object     # @.str.1795
.L.str.1795:
	.asciz	"pop pop pop]\n"
	.size	.L.str.1795, 14

	.type	.L.str.1796,@object     # @.str.1796
.L.str.1796:
	.asciz	"xshow\n"
	.size	.L.str.1796, 7

	.type	.L.str.1797,@object     # @.str.1797
.L.str.1797:
	.asciz	"awidthshow\n"
	.size	.L.str.1797, 12

	.type	.L.str.1798,@object     # @.str.1798
.L.str.1798:
	.asciz	"//GraphicState/CharacterSpacing get 0 eq\n"
	.size	.L.str.1798, 42

	.type	.L.str.1799,@object     # @.str.1799
.L.str.1799:
	.asciz	"//GraphicState/FontMatrixNonHV get not and\n"
	.size	.L.str.1799, 44

	.type	.L.str.1800,@object     # @.str.1800
.L.str.1800:
	.asciz	"//GraphicState/WordSpacing get 0 eq and{\n"
	.size	.L.str.1800, 42

	.type	.L.str.1801,@object     # @.str.1801
.L.str.1801:
	.asciz	"true charpath\n"
	.size	.L.str.1801, 15

	.type	.L.str.1802,@object     # @.str.1802
.L.str.1802:
	.asciz	"pop 0\n"
	.size	.L.str.1802, 7

	.type	.L.str.1803,@object     # @.str.1803
.L.str.1803:
	.asciz	"currentpoint 5 4 roll\n"
	.size	.L.str.1803, 23

	.type	.L.str.1804,@object     # @.str.1804
.L.str.1804:
	.asciz	"( )dup 0 3 index put true charpath\n"
	.size	.L.str.1804, 36

	.type	.L.str.1805,@object     # @.str.1805
.L.str.1805:
	.asciz	"5 1 roll\n"
	.size	.L.str.1805, 10

	.type	.L.str.1806,@object     # @.str.1806
.L.str.1806:
	.asciz	"moveto rmoveto\n"
	.size	.L.str.1806, 16

	.type	.L.str.1807,@object     # @.str.1807
.L.str.1807:
	.asciz	"//GraphicState/CharacterSpacing get 0 rmoveto\n"
	.size	.L.str.1807, 47

	.type	.L.str.1808,@object     # @.str.1808
.L.str.1808:
	.asciz	"32 eq{\n"
	.size	.L.str.1808, 8

	.type	.L.str.1809,@object     # @.str.1809
.L.str.1809:
	.asciz	"//GraphicState/WordSpacing get 0 rmoveto\n"
	.size	.L.str.1809, 42

	.type	.L.str.1810,@object     # @.str.1810
.L.str.1810:
	.asciz	"//GraphicState/FontMatrixNonHV get dup not exch{\n"
	.size	.L.str.1810, 50

	.type	.L.str.1811,@object     # @.str.1811
.L.str.1811:
	.asciz	"pop currentfont/FontMatrix get 0 get 0 ne\n"
	.size	.L.str.1811, 43

	.type	.L.str.1812,@object     # @.str.1812
.L.str.1812:
	.asciz	"}if{\n"
	.size	.L.str.1812, 6

	.type	.L.str.1813,@object     # @.str.1813
.L.str.1813:
	.asciz	"exch cshow\n"
	.size	.L.str.1813, 12

	.type	.L.str.1814,@object     # @.str.1814
.L.str.1814:
	.asciz	"/ShowTextBeg\n"
	.size	.L.str.1814, 14

	.type	.L.str.1815,@object     # @.str.1815
.L.str.1815:
	.asciz	"{//GraphicState/TextRenderingMode get 0 ne{\n"
	.size	.L.str.1815, 45

	.type	.L.str.1816,@object     # @.str.1816
.L.str.1816:
	.asciz	"currentpoint newpath moveto\n"
	.size	.L.str.1816, 29

	.type	.L.str.1817,@object     # @.str.1817
.L.str.1817:
	.asciz	"/ShowTextEnd\n"
	.size	.L.str.1817, 14

	.type	.L.str.1818,@object     # @.str.1818
.L.str.1818:
	.asciz	"{//GraphicState/TextRenderingMode get\n"
	.size	.L.str.1818, 39

	.type	.L.str.1819,@object     # @.str.1819
.L.str.1819:
	.asciz	"{dup 1 eq{\n"
	.size	.L.str.1819, 12

	.type	.L.str.1820,@object     # @.str.1820
.L.str.1820:
	.asciz	"stroke exit\n"
	.size	.L.str.1820, 13

	.type	.L.str.1821,@object     # @.str.1821
.L.str.1821:
	.asciz	"gsave fill grestore stroke exit\n"
	.size	.L.str.1821, 33

	.type	.L.str.1822,@object     # @.str.1822
.L.str.1822:
	.asciz	"dup 3 eq{\n"
	.size	.L.str.1822, 11

	.type	.L.str.1823,@object     # @.str.1823
.L.str.1823:
	.asciz	"gsave fill grestore clip exit\n"
	.size	.L.str.1823, 31

	.type	.L.str.1824,@object     # @.str.1824
.L.str.1824:
	.asciz	"dup 5 eq{\n"
	.size	.L.str.1824, 11

	.type	.L.str.1825,@object     # @.str.1825
.L.str.1825:
	.asciz	"gsave stroke grestore clip exit\n"
	.size	.L.str.1825, 33

	.type	.L.str.1826,@object     # @.str.1826
.L.str.1826:
	.asciz	"dup 6 eq{\n"
	.size	.L.str.1826, 11

	.type	.L.str.1827,@object     # @.str.1827
.L.str.1827:
	.asciz	"gsave fill grestore gsave stroke grestore fill exit\n"
	.size	.L.str.1827, 53

	.type	.L.str.1828,@object     # @.str.1828
.L.str.1828:
	.asciz	"dup 7 eq{\n"
	.size	.L.str.1828, 11

	.type	.L.str.1829,@object     # @.str.1829
.L.str.1829:
	.asciz	"clip exit\n"
	.size	.L.str.1829, 11

	.type	.L.str.1830,@object     # @.str.1830
.L.str.1830:
	.asciz	"/ShowTextWithGlyphPositioning\n"
	.size	.L.str.1830, 31

	.type	.L.str.1831,@object     # @.str.1831
.L.str.1831:
	.asciz	"{//ShowTextBeg exec\n"
	.size	.L.str.1831, 21

	.type	.L.str.1832,@object     # @.str.1832
.L.str.1832:
	.asciz	"//ShowText exec\n"
	.size	.L.str.1832, 17

	.type	.L.str.1833,@object     # @.str.1833
.L.str.1833:
	.asciz	"neg 1000 div//GraphicState/FontSize get mul 0 rmoveto\n"
	.size	.L.str.1833, 55

	.type	.L.str.1834,@object     # @.str.1834
.L.str.1834:
	.asciz	"//ShowTextEnd exec\n"
	.size	.L.str.1834, 20

	.type	.L.str.1835,@object     # @.str.1835
.L.str.1835:
	.asciz	"{dup/Type get/ExtGState ne{\n"
	.size	.L.str.1835, 29

	.type	.L.str.1836,@object     # @.str.1836
.L.str.1836:
	.asciz	"mark(Resource )3 index( must have /Type/ExtGState.)//error exec\n"
	.size	.L.str.1836, 65

	.type	.L.str.1837,@object     # @.str.1837
.L.str.1837:
	.asciz	"/SetTransfer\n"
	.size	.L.str.1837, 14

	.type	.L.str.1838,@object     # @.str.1838
.L.str.1838:
	.asciz	"//PDFR_DEBUG{(SetTransfer beg )print count =}if\n"
	.size	.L.str.1838, 49

	.type	.L.str.1839,@object     # @.str.1839
.L.str.1839:
	.asciz	"dup type/arraytype eq 1 index xcheck not and{\n"
	.size	.L.str.1839, 47

	.type	.L.str.1840,@object     # @.str.1840
.L.str.1840:
	.asciz	"0 4 getinterval aload pop\n"
	.size	.L.str.1840, 27

	.type	.L.str.1841,@object     # @.str.1841
.L.str.1841:
	.asciz	"setcolortransfer\n"
	.size	.L.str.1841, 18

	.type	.L.str.1842,@object     # @.str.1842
.L.str.1842:
	.asciz	"settransfer\n"
	.size	.L.str.1842, 13

	.type	.L.str.1843,@object     # @.str.1843
.L.str.1843:
	.asciz	"//PDFR_DEBUG{(SetTransfer end )print count =}if\n"
	.size	.L.str.1843, 49

	.type	.L.str.1844,@object     # @.str.1844
.L.str.1844:
	.asciz	"/CheckExtGState\n"
	.size	.L.str.1844, 17

	.type	.L.str.1845,@object     # @.str.1845
.L.str.1845:
	.asciz	"/CheckHalftone\n"
	.size	.L.str.1845, 16

	.type	.L.str.1846,@object     # @.str.1846
.L.str.1846:
	.asciz	"{dup/HalftoneType known not{\n"
	.size	.L.str.1846, 30

	.type	.L.str.1847,@object     # @.str.1847
.L.str.1847:
	.asciz	"mark(Resource )3 index( must have /HalftoneType.)//error exec\n"
	.size	.L.str.1847, 63

	.type	.L.str.1848,@object     # @.str.1848
.L.str.1848:
	.asciz	"/ResolveFunction\n"
	.size	.L.str.1848, 18

	.type	.L.str.1849,@object     # @.str.1849
.L.str.1849:
	.asciz	"//PDFR_DEBUG{(ResolveFunction beg )print dup = count =}if\n"
	.size	.L.str.1849, 59

	.type	.L.str.1850,@object     # @.str.1850
.L.str.1850:
	.asciz	"2 copy get//IsObjRef exec{\n"
	.size	.L.str.1850, 28

	.type	.L.str.1851,@object     # @.str.1851
.L.str.1851:
	.asciz	"2 copy//DoNothing//ResolveD exec\n"
	.size	.L.str.1851, 34

	.type	.L.str.1852,@object     # @.str.1852
.L.str.1852:
	.asciz	"2 copy get dup type/arraytype eq exch xcheck and not{\n"
	.size	.L.str.1852, 55

	.type	.L.str.1853,@object     # @.str.1853
.L.str.1853:
	.asciz	"2 copy//DoNothing ResolveA\n"
	.size	.L.str.1853, 28

	.type	.L.str.1854,@object     # @.str.1854
.L.str.1854:
	.asciz	"dup/Identity eq{\n"
	.size	.L.str.1854, 18

	.type	.L.str.1855,@object     # @.str.1855
.L.str.1855:
	.asciz	"pop 2 copy{}put\n"
	.size	.L.str.1855, 17

	.type	.L.str.1856,@object     # @.str.1856
.L.str.1856:
	.asciz	"//FunctionToProc exec\n"
	.size	.L.str.1856, 23

	.type	.L.str.1857,@object     # @.str.1857
.L.str.1857:
	.asciz	"dup/Default eq{\n"
	.size	.L.str.1857, 17

	.type	.L.str.1858,@object     # @.str.1858
.L.str.1858:
	.asciz	"pop{}\n"
	.size	.L.str.1858, 7

	.type	.L.str.1859,@object     # @.str.1859
.L.str.1859:
	.asciz	"}{dup type/nametype eq{\n"
	.size	.L.str.1859, 25

	.type	.L.str.1860,@object     # @.str.1860
.L.str.1860:
	.asciz	"//spotfunctions exch get\n"
	.size	.L.str.1860, 26

	.type	.L.str.1861,@object     # @.str.1861
.L.str.1861:
	.asciz	"1 index exch get\n"
	.size	.L.str.1861, 18

	.type	.L.str.1862,@object     # @.str.1862
.L.str.1862:
	.asciz	"//PDFR_DEBUG{(ResolveFunction end )print dup == count =}if\n"
	.size	.L.str.1862, 60

	.type	.L.str.1863,@object     # @.str.1863
.L.str.1863:
	.asciz	"/ResolveFunctionSafe\n"
	.size	.L.str.1863, 22

	.type	.L.str.1864,@object     # @.str.1864
.L.str.1864:
	.asciz	"//ResolveFunction exec\n"
	.size	.L.str.1864, 24

	.type	.L.str.1865,@object     # @.str.1865
.L.str.1865:
	.asciz	"/CreateHalftoneThresholds\n"
	.size	.L.str.1865, 27

	.type	.L.str.1866,@object     # @.str.1866
.L.str.1866:
	.asciz	"dup/Thresholds known not{\n"
	.size	.L.str.1866, 27

	.type	.L.str.1867,@object     # @.str.1867
.L.str.1867:
	.asciz	"dup/HalftoneType get 10 eq{\n"
	.size	.L.str.1867, 29

	.type	.L.str.1868,@object     # @.str.1868
.L.str.1868:
	.asciz	"dup dup//MakeStreamReader exec\n"
	.size	.L.str.1868, 32

	.type	.L.str.1869,@object     # @.str.1869
.L.str.1869:
	.asciz	"/Thresholds exch put\n"
	.size	.L.str.1869, 22

	.type	.L.str.1870,@object     # @.str.1870
.L.str.1870:
	.asciz	"dup/HalftoneType get dup 3 eq exch 6 eq or{\n"
	.size	.L.str.1870, 45

	.type	.L.str.1871,@object     # @.str.1871
.L.str.1871:
	.asciz	"//BlockBuffer readstring pop\n"
	.size	.L.str.1871, 30

	.type	.L.str.1872,@object     # @.str.1872
.L.str.1872:
	.asciz	"mark(Could not read Thresholds)//error exec\n"
	.size	.L.str.1872, 45

	.type	.L.str.1873,@object     # @.str.1873
.L.str.1873:
	.asciz	"string copy/Thresholds exch put\n"
	.size	.L.str.1873, 33

	.type	.L.str.1874,@object     # @.str.1874
.L.str.1874:
	.asciz	"dup/HalftoneType 3 put\n"
	.size	.L.str.1874, 24

	.type	.L.str.1875,@object     # @.str.1875
.L.str.1875:
	.asciz	"/SetExtGState\n"
	.size	.L.str.1875, 15

	.type	.L.str.1876,@object     # @.str.1876
.L.str.1876:
	.asciz	"/ExtGState//DoNothing//ResolveD exec\n"
	.size	.L.str.1876, 38

	.type	.L.str.1877,@object     # @.str.1877
.L.str.1877:
	.asciz	"exch//CheckExtGState//ResolveD exec\n"
	.size	.L.str.1877, 37

	.type	.L.str.1878,@object     # @.str.1878
.L.str.1878:
	.asciz	"dup/LW//knownget exec{\n"
	.size	.L.str.1878, 24

	.type	.L.str.1879,@object     # @.str.1879
.L.str.1879:
	.asciz	"setlinewidth\n"
	.size	.L.str.1879, 14

	.type	.L.str.1880,@object     # @.str.1880
.L.str.1880:
	.asciz	"dup/LC//knownget exec{\n"
	.size	.L.str.1880, 24

	.type	.L.str.1881,@object     # @.str.1881
.L.str.1881:
	.asciz	"setlinecap\n"
	.size	.L.str.1881, 12

	.type	.L.str.1882,@object     # @.str.1882
.L.str.1882:
	.asciz	"dup/LJ//knownget exec{\n"
	.size	.L.str.1882, 24

	.type	.L.str.1883,@object     # @.str.1883
.L.str.1883:
	.asciz	"setlinejoin\n"
	.size	.L.str.1883, 13

	.type	.L.str.1884,@object     # @.str.1884
.L.str.1884:
	.asciz	"dup/ML//knownget exec{\n"
	.size	.L.str.1884, 24

	.type	.L.str.1885,@object     # @.str.1885
.L.str.1885:
	.asciz	"setmeterlimit\n"
	.size	.L.str.1885, 15

	.type	.L.str.1886,@object     # @.str.1886
.L.str.1886:
	.asciz	"dup/D//knownget exec{\n"
	.size	.L.str.1886, 23

	.type	.L.str.1887,@object     # @.str.1887
.L.str.1887:
	.asciz	"setdash\n"
	.size	.L.str.1887, 9

	.type	.L.str.1888,@object     # @.str.1888
.L.str.1888:
	.asciz	"dup/RI//knownget exec{\n"
	.size	.L.str.1888, 24

	.type	.L.str.1889,@object     # @.str.1889
.L.str.1889:
	.asciz	"mark(Unimplemented ExtGState.RI)//error exec\n"
	.size	.L.str.1889, 46

	.type	.L.str.1890,@object     # @.str.1890
.L.str.1890:
	.asciz	"dup/OP//knownget exec{\n"
	.size	.L.str.1890, 24

	.type	.L.str.1891,@object     # @.str.1891
.L.str.1891:
	.asciz	"setoverprint\n"
	.size	.L.str.1891, 14

	.type	.L.str.1892,@object     # @.str.1892
.L.str.1892:
	.asciz	"dup/op//knownget exec{\n"
	.size	.L.str.1892, 24

	.type	.L.str.1893,@object     # @.str.1893
.L.str.1893:
	.asciz	"dup/OPM//knownget exec{\n"
	.size	.L.str.1893, 25

	.type	.L.str.1894,@object     # @.str.1894
.L.str.1894:
	.asciz	"mark(Unimplemented ExtGState.OPM)//error exec\n"
	.size	.L.str.1894, 47

	.type	.L.str.1895,@object     # @.str.1895
.L.str.1895:
	.asciz	"mark(Unimplemented ExtGState.Font)//error exec\n"
	.size	.L.str.1895, 48

	.type	.L.str.1896,@object     # @.str.1896
.L.str.1896:
	.asciz	"dup/BG known{\n"
	.size	.L.str.1896, 15

	.type	.L.str.1897,@object     # @.str.1897
.L.str.1897:
	.asciz	"/BG//ResolveFunction exec\n"
	.size	.L.str.1897, 27

	.type	.L.str.1898,@object     # @.str.1898
.L.str.1898:
	.asciz	"setblackgeneration\n"
	.size	.L.str.1898, 20

	.type	.L.str.1899,@object     # @.str.1899
.L.str.1899:
	.asciz	"dup/BG2 known{\n"
	.size	.L.str.1899, 16

	.type	.L.str.1900,@object     # @.str.1900
.L.str.1900:
	.asciz	"/BG2//ResolveFunction exec\n"
	.size	.L.str.1900, 28

	.type	.L.str.1901,@object     # @.str.1901
.L.str.1901:
	.asciz	"//InitialExtGState/BG2 get\n"
	.size	.L.str.1901, 28

	.type	.L.str.1902,@object     # @.str.1902
.L.str.1902:
	.asciz	"dup/UCR known{\n"
	.size	.L.str.1902, 16

	.type	.L.str.1903,@object     # @.str.1903
.L.str.1903:
	.asciz	"/UCR//ResolveFunction exec\n"
	.size	.L.str.1903, 28

	.type	.L.str.1904,@object     # @.str.1904
.L.str.1904:
	.asciz	"setundercolorremoval\n"
	.size	.L.str.1904, 22

	.type	.L.str.1905,@object     # @.str.1905
.L.str.1905:
	.asciz	"dup/UCR2 known{\n"
	.size	.L.str.1905, 17

	.type	.L.str.1906,@object     # @.str.1906
.L.str.1906:
	.asciz	"/UCR2//ResolveFunction exec\n"
	.size	.L.str.1906, 29

	.type	.L.str.1907,@object     # @.str.1907
.L.str.1907:
	.asciz	"//InitialExtGState/UCR2 get\n"
	.size	.L.str.1907, 29

	.type	.L.str.1908,@object     # @.str.1908
.L.str.1908:
	.asciz	"dup/TR known{\n"
	.size	.L.str.1908, 15

	.type	.L.str.1909,@object     # @.str.1909
.L.str.1909:
	.asciz	"/TR//ResolveFunction exec\n"
	.size	.L.str.1909, 27

	.type	.L.str.1910,@object     # @.str.1910
.L.str.1910:
	.asciz	"//SetTransfer exec\n"
	.size	.L.str.1910, 20

	.type	.L.str.1911,@object     # @.str.1911
.L.str.1911:
	.asciz	"dup/TR2 known{\n"
	.size	.L.str.1911, 16

	.type	.L.str.1912,@object     # @.str.1912
.L.str.1912:
	.asciz	"/TR2//ResolveFunction exec\n"
	.size	.L.str.1912, 28

	.type	.L.str.1913,@object     # @.str.1913
.L.str.1913:
	.asciz	"pop//InitialExtGState/TR2 get\n"
	.size	.L.str.1913, 31

	.type	.L.str.1914,@object     # @.str.1914
.L.str.1914:
	.asciz	"aload pop setcolortransfer\n"
	.size	.L.str.1914, 28

	.type	.L.str.1915,@object     # @.str.1915
.L.str.1915:
	.asciz	"dup/HT//knownget exec{\n"
	.size	.L.str.1915, 24

	.type	.L.str.1916,@object     # @.str.1916
.L.str.1916:
	.asciz	"pop//InitialExtGState/HT get\n"
	.size	.L.str.1916, 30

	.type	.L.str.1917,@object     # @.str.1917
.L.str.1917:
	.asciz	"sethalftone\n"
	.size	.L.str.1917, 13

	.type	.L.str.1918,@object     # @.str.1918
.L.str.1918:
	.asciz	"//PDFR_DEBUG{(Ht beg)=}if\n"
	.size	.L.str.1918, 27

	.type	.L.str.1919,@object     # @.str.1919
.L.str.1919:
	.asciz	"pop dup/HT//CheckHalftone//ResolveD exec\n"
	.size	.L.str.1919, 42

	.type	.L.str.1920,@object     # @.str.1920
.L.str.1920:
	.asciz	"/SpotFunction//ResolveFunctionSafe exec\n"
	.size	.L.str.1920, 41

	.type	.L.str.1921,@object     # @.str.1921
.L.str.1921:
	.asciz	"/TransferFunction//ResolveFunctionSafe exec\n"
	.size	.L.str.1921, 45

	.type	.L.str.1922,@object     # @.str.1922
.L.str.1922:
	.asciz	"null exch\n"
	.size	.L.str.1922, 11

	.type	.L.str.1923,@object     # @.str.1923
.L.str.1923:
	.asciz	"dup/HalftoneType get dup 5 eq exch dup 4 eq exch 2 eq or or{\n"
	.size	.L.str.1923, 62

	.type	.L.str.1924,@object     # @.str.1924
.L.str.1924:
	.asciz	"1 index exch//CheckHalftone ResolveD\n"
	.size	.L.str.1924, 38

	.type	.L.str.1925,@object     # @.str.1925
.L.str.1925:
	.asciz	"dup/SpotFunction//ResolveFunctionSafe exec\n"
	.size	.L.str.1925, 44

	.type	.L.str.1926,@object     # @.str.1926
.L.str.1926:
	.asciz	"//CreateHalftoneThresholds exec\n"
	.size	.L.str.1926, 33

	.type	.L.str.1927,@object     # @.str.1927
.L.str.1927:
	.asciz	"dup/HalftoneType get 5 gt{\n"
	.size	.L.str.1927, 28

	.type	.L.str.1928,@object     # @.str.1928
.L.str.1928:
	.asciz	"(HT:)=\n"
	.size	.L.str.1928, 8

	.type	.L.str.1929,@object     # @.str.1929
.L.str.1929:
	.asciz	"1 index/Default eq{\n"
	.size	.L.str.1929, 21

	.type	.L.str.1930,@object     # @.str.1930
.L.str.1930:
	.asciz	"(Default <<)=\n"
	.size	.L.str.1930, 15

	.type	.L.str.1931,@object     # @.str.1931
.L.str.1931:
	.asciz	"exch = ==\n"
	.size	.L.str.1931, 11

	.type	.L.str.1932,@object     # @.str.1932
.L.str.1932:
	.asciz	"(HT end)= flush\n"
	.size	.L.str.1932, 17

	.type	.L.str.1933,@object     # @.str.1933
.L.str.1933:
	.asciz	"exch dup null ne{\n"
	.size	.L.str.1933, 19

	.type	.L.str.1934,@object     # @.str.1934
.L.str.1934:
	.asciz	"(Warning: Ignoring a halftone with a Level 3 component halftone Type )print dup/HalftoneType get =\n"
	.size	.L.str.1934, 100

	.type	.L.str.1935,@object     # @.str.1935
.L.str.1935:
	.asciz	"(Warning: Ignoring a Level 3 halftone Type )print dup/HalftoneType get =\n"
	.size	.L.str.1935, 74

	.type	.L.str.1936,@object     # @.str.1936
.L.str.1936:
	.asciz	"//PDFR_DEBUG{(HT set)= flush}if\n"
	.size	.L.str.1936, 33

	.type	.L.str.1937,@object     # @.str.1937
.L.str.1937:
	.asciz	"dup/FL//knownget exec{\n"
	.size	.L.str.1937, 24

	.type	.L.str.1938,@object     # @.str.1938
.L.str.1938:
	.asciz	"setflattness\n"
	.size	.L.str.1938, 14

	.type	.L.str.1939,@object     # @.str.1939
.L.str.1939:
	.asciz	"dup/SM//knownget exec{\n"
	.size	.L.str.1939, 24

	.type	.L.str.1940,@object     # @.str.1940
.L.str.1940:
	.asciz	"setsmoothness\n"
	.size	.L.str.1940, 15

	.type	.L.str.1941,@object     # @.str.1941
.L.str.1941:
	.asciz	"dup/SA//knownget exec{\n"
	.size	.L.str.1941, 24

	.type	.L.str.1942,@object     # @.str.1942
.L.str.1942:
	.asciz	"setstrokeadjust\n"
	.size	.L.str.1942, 17

	.type	.L.str.1943,@object     # @.str.1943
.L.str.1943:
	.asciz	"dup/BM//knownget exec{\n"
	.size	.L.str.1943, 24

	.type	.L.str.1944,@object     # @.str.1944
.L.str.1944:
	.asciz	"mark(Unimplemented ExtGState.BM)//error exec\n"
	.size	.L.str.1944, 46

	.type	.L.str.1945,@object     # @.str.1945
.L.str.1945:
	.asciz	"dup/SMask//knownget exec{\n"
	.size	.L.str.1945, 27

	.type	.L.str.1946,@object     # @.str.1946
.L.str.1946:
	.asciz	"mark(Unimplemented ExtGState.SMask)//error exec\n"
	.size	.L.str.1946, 49

	.type	.L.str.1947,@object     # @.str.1947
.L.str.1947:
	.asciz	"dup/CA//knownget exec{\n"
	.size	.L.str.1947, 24

	.type	.L.str.1948,@object     # @.str.1948
.L.str.1948:
	.asciz	"mark(Unimplemented ExtGState.CA)//error exec\n"
	.size	.L.str.1948, 46

	.type	.L.str.1949,@object     # @.str.1949
.L.str.1949:
	.asciz	"dup/ca//knownget exec{\n"
	.size	.L.str.1949, 24

	.type	.L.str.1950,@object     # @.str.1950
.L.str.1950:
	.asciz	"mark(Unimplemented ExtGState.ca)//error exec\n"
	.size	.L.str.1950, 46

	.type	.L.str.1951,@object     # @.str.1951
.L.str.1951:
	.asciz	"dup/AIS//knownget exec{\n"
	.size	.L.str.1951, 25

	.type	.L.str.1952,@object     # @.str.1952
.L.str.1952:
	.asciz	"mark(Unimplemented ExtGState.AIS)//error exec\n"
	.size	.L.str.1952, 47

	.type	.L.str.1953,@object     # @.str.1953
.L.str.1953:
	.asciz	"dup/TK//knownget exec{\n"
	.size	.L.str.1953, 24

	.type	.L.str.1954,@object     # @.str.1954
.L.str.1954:
	.asciz	"mark(Unimplemented ExtGState.TK)//error exec\n"
	.size	.L.str.1954, 46

	.type	.L.str.1955,@object     # @.str.1955
.L.str.1955:
	.asciz	"/CheckXObject\n"
	.size	.L.str.1955, 15

	.type	.L.str.1956,@object     # @.str.1956
.L.str.1956:
	.asciz	"{dup/Subtype get dup/Image ne exch dup/Form ne exch/PS ne and and{\n"
	.size	.L.str.1956, 68

	.type	.L.str.1957,@object     # @.str.1957
.L.str.1957:
	.asciz	"mark(Resource )3 index( must have /Subtype /Image or /Form or /PS.)//error exec\n"
	.size	.L.str.1957, 81

	.type	.L.str.1958,@object     # @.str.1958
.L.str.1958:
	.asciz	"/DoXObject\n"
	.size	.L.str.1958, 12

	.type	.L.str.1959,@object     # @.str.1959
.L.str.1959:
	.asciz	"/XObject//DoNothing//ResolveD exec\n"
	.size	.L.str.1959, 36

	.type	.L.str.1960,@object     # @.str.1960
.L.str.1960:
	.asciz	"exch//CheckXObject//ResolveD exec\n"
	.size	.L.str.1960, 35

	.type	.L.str.1961,@object     # @.str.1961
.L.str.1961:
	.asciz	"dup/Subtype get\n"
	.size	.L.str.1961, 17

	.type	.L.str.1962,@object     # @.str.1962
.L.str.1962:
	.asciz	"dup/Image eq{\n"
	.size	.L.str.1962, 15

	.type	.L.str.1963,@object     # @.str.1963
.L.str.1963:
	.asciz	"//CompleteOutlineImage exec\n"
	.size	.L.str.1963, 29

	.type	.L.str.1964,@object     # @.str.1964
.L.str.1964:
	.asciz	"//DoImage exec\n"
	.size	.L.str.1964, 16

	.type	.L.str.1965,@object     # @.str.1965
.L.str.1965:
	.asciz	"dup/PS eq{\n"
	.size	.L.str.1965, 12

	.type	.L.str.1966,@object     # @.str.1966
.L.str.1966:
	.asciz	"(Executing a PS Xobject)=\n"
	.size	.L.str.1966, 27

	.type	.L.str.1967,@object     # @.str.1967
.L.str.1967:
	.asciz	"dup/Form eq{\n"
	.size	.L.str.1967, 14

	.type	.L.str.1968,@object     # @.str.1968
.L.str.1968:
	.asciz	"(Executing a Form XObject)=\n"
	.size	.L.str.1968, 29

	.type	.L.str.1969,@object     # @.str.1969
.L.str.1969:
	.asciz	"//PDFReader/CurrentObject get exch\n"
	.size	.L.str.1969, 36

	.type	.L.str.1970,@object     # @.str.1970
.L.str.1970:
	.asciz	"dup//PDFReader exch<< exch/Context exch >>/CurrentObject exch put\n"
	.size	.L.str.1970, 67

	.type	.L.str.1971,@object     # @.str.1971
.L.str.1971:
	.asciz	"dup/Matrix get concat\n"
	.size	.L.str.1971, 23

	.type	.L.str.1972,@object     # @.str.1972
.L.str.1972:
	.asciz	"dup/BBox get aload pop exch 3 index sub exch 2 index sub rectclip\n"
	.size	.L.str.1972, 67

	.type	.L.str.1973,@object     # @.str.1973
.L.str.1973:
	.asciz	"//PDFReader exch/CurrentObject exch put\n"
	.size	.L.str.1973, 41

	.type	.L.str.1974,@object     # @.str.1974
.L.str.1974:
	.asciz	"mark exch(unimplemented XObject type )exch//error exec\n"
	.size	.L.str.1974, 56

	.type	.L.str.1975,@object     # @.str.1975
.L.str.1975:
	.asciz	"/Operators 50 dict begin\n"
	.size	.L.str.1975, 26

	.type	.L.str.1976,@object     # @.str.1976
.L.str.1976:
	.asciz	"/q{//GSave exec}bind def\n"
	.size	.L.str.1976, 26

	.type	.L.str.1977,@object     # @.str.1977
.L.str.1977:
	.asciz	"/Q{//GRestore exec}bind def\n"
	.size	.L.str.1977, 29

	.type	.L.str.1978,@object     # @.str.1978
.L.str.1978:
	.asciz	"/cm{//TempMatrix astore concat}bind def\n"
	.size	.L.str.1978, 41

	.type	.L.str.1979,@object     # @.str.1979
.L.str.1979:
	.asciz	"/i{1 .min setflat}bind def\n"
	.size	.L.str.1979, 28

	.type	.L.str.1980,@object     # @.str.1980
.L.str.1980:
	.asciz	"/J/setlinecap load def\n"
	.size	.L.str.1980, 24

	.type	.L.str.1981,@object     # @.str.1981
.L.str.1981:
	.asciz	"/d/setdash load def\n"
	.size	.L.str.1981, 21

	.type	.L.str.1982,@object     # @.str.1982
.L.str.1982:
	.asciz	"/j/setlinejoin load def\n"
	.size	.L.str.1982, 25

	.type	.L.str.1983,@object     # @.str.1983
.L.str.1983:
	.asciz	"/w/setlinewidth load def\n"
	.size	.L.str.1983, 26

	.type	.L.str.1984,@object     # @.str.1984
.L.str.1984:
	.asciz	"/M/setmiterlimit load def\n"
	.size	.L.str.1984, 27

	.type	.L.str.1985,@object     # @.str.1985
.L.str.1985:
	.asciz	"/gs{SetExtGState}bind def\n"
	.size	.L.str.1985, 27

	.type	.L.str.1986,@object     # @.str.1986
.L.str.1986:
	.asciz	"/g/setgray load def\n"
	.size	.L.str.1986, 21

	.type	.L.str.1987,@object     # @.str.1987
.L.str.1987:
	.asciz	"/rg/setrgbcolor load def\n"
	.size	.L.str.1987, 26

	.type	.L.str.1988,@object     # @.str.1988
.L.str.1988:
	.asciz	"/k/setcmykcolor load def\n"
	.size	.L.str.1988, 26

	.type	.L.str.1989,@object     # @.str.1989
.L.str.1989:
	.asciz	"/cs{//ResolveColorSpace exec//SetColorSpaceSafe exec\n"
	.size	.L.str.1989, 54

	.type	.L.str.1990,@object     # @.str.1990
.L.str.1990:
	.asciz	"/sc/setcolor load def\n"
	.size	.L.str.1990, 23

	.type	.L.str.1991,@object     # @.str.1991
.L.str.1991:
	.asciz	"/scn{//SetColor exec}bind def\n"
	.size	.L.str.1991, 31

	.type	.L.str.1992,@object     # @.str.1992
.L.str.1992:
	.asciz	"/G/setgray load def\n"
	.size	.L.str.1992, 21

	.type	.L.str.1993,@object     # @.str.1993
.L.str.1993:
	.asciz	"/RG/setrgbcolor load def\n"
	.size	.L.str.1993, 26

	.type	.L.str.1994,@object     # @.str.1994
.L.str.1994:
	.asciz	"/K/setcmykcolor load def\n"
	.size	.L.str.1994, 26

	.type	.L.str.1995,@object     # @.str.1995
.L.str.1995:
	.asciz	"/CS//cs def\n"
	.size	.L.str.1995, 13

	.type	.L.str.1996,@object     # @.str.1996
.L.str.1996:
	.asciz	"/ri{SetColorRenderingIntent}bind def\n"
	.size	.L.str.1996, 38

	.type	.L.str.1997,@object     # @.str.1997
.L.str.1997:
	.asciz	"/SC/setcolor load def\n"
	.size	.L.str.1997, 23

	.type	.L.str.1998,@object     # @.str.1998
.L.str.1998:
	.asciz	"/SCN{//SetColor exec}bind def\n"
	.size	.L.str.1998, 31

	.type	.L.str.1999,@object     # @.str.1999
.L.str.1999:
	.asciz	"/m/moveto load def\n"
	.size	.L.str.1999, 20

	.type	.L.str.2000,@object     # @.str.2000
.L.str.2000:
	.asciz	"/l/lineto load def\n"
	.size	.L.str.2000, 20

	.type	.L.str.2001,@object     # @.str.2001
.L.str.2001:
	.asciz	"/c/curveto load def\n"
	.size	.L.str.2001, 21

	.type	.L.str.2002,@object     # @.str.2002
.L.str.2002:
	.asciz	"/v{currentpoint 6 2 roll curveto}bind def\n"
	.size	.L.str.2002, 43

	.type	.L.str.2003,@object     # @.str.2003
.L.str.2003:
	.asciz	"/y{2 copy curveto}bind def\n"
	.size	.L.str.2003, 28

	.type	.L.str.2004,@object     # @.str.2004
.L.str.2004:
	.asciz	"/re{\n"
	.size	.L.str.2004, 6

	.type	.L.str.2005,@object     # @.str.2005
.L.str.2005:
	.asciz	"4 2 roll moveto exch dup 0 rlineto 0 3 -1 roll rlineto neg 0 rlineto\n"
	.size	.L.str.2005, 70

	.type	.L.str.2006,@object     # @.str.2006
.L.str.2006:
	.asciz	"closepath\n"
	.size	.L.str.2006, 11

	.type	.L.str.2007,@object     # @.str.2007
.L.str.2007:
	.asciz	"/h/closepath load def\n"
	.size	.L.str.2007, 23

	.type	.L.str.2008,@object     # @.str.2008
.L.str.2008:
	.asciz	"/n/newpath load def\n"
	.size	.L.str.2008, 21

	.type	.L.str.2009,@object     # @.str.2009
.L.str.2009:
	.asciz	"/S/stroke load def\n"
	.size	.L.str.2009, 20

	.type	.L.str.2010,@object     # @.str.2010
.L.str.2010:
	.asciz	"/s{closepath stroke}bind def\n"
	.size	.L.str.2010, 30

	.type	.L.str.2011,@object     # @.str.2011
.L.str.2011:
	.asciz	"/f/fill load def\n"
	.size	.L.str.2011, 18

	.type	.L.str.2012,@object     # @.str.2012
.L.str.2012:
	.asciz	"/f*/eofill load def\n"
	.size	.L.str.2012, 21

	.type	.L.str.2013,@object     # @.str.2013
.L.str.2013:
	.asciz	"/B{gsave fill grestore stroke}bind def\n"
	.size	.L.str.2013, 40

	.type	.L.str.2014,@object     # @.str.2014
.L.str.2014:
	.asciz	"/b{closepath gsave fill grestore stroke}bind def\n"
	.size	.L.str.2014, 50

	.type	.L.str.2015,@object     # @.str.2015
.L.str.2015:
	.asciz	"/B*{gsave eofill grestore stroke}bind def\n"
	.size	.L.str.2015, 43

	.type	.L.str.2016,@object     # @.str.2016
.L.str.2016:
	.asciz	"/b*{closepath gsave eofill grestore stroke}bind def\n"
	.size	.L.str.2016, 53

	.type	.L.str.2017,@object     # @.str.2017
.L.str.2017:
	.asciz	"/W/clip load def\n"
	.size	.L.str.2017, 18

	.type	.L.str.2018,@object     # @.str.2018
.L.str.2018:
	.asciz	"/W*/eoclip load def\n"
	.size	.L.str.2018, 21

	.type	.L.str.2019,@object     # @.str.2019
.L.str.2019:
	.asciz	"/sh{\n"
	.size	.L.str.2019, 6

	.type	.L.str.2020,@object     # @.str.2020
.L.str.2020:
	.asciz	"ResolveShading\n"
	.size	.L.str.2020, 16

	.type	.L.str.2021,@object     # @.str.2021
.L.str.2021:
	.asciz	"dup/Background known{\n"
	.size	.L.str.2021, 23

	.type	.L.str.2022,@object     # @.str.2022
.L.str.2022:
	.asciz	"dup/ColorSpace get setcolorspace\n"
	.size	.L.str.2022, 34

	.type	.L.str.2023,@object     # @.str.2023
.L.str.2023:
	.asciz	"dup/Background get aload pop setcolor\n"
	.size	.L.str.2023, 39

	.type	.L.str.2024,@object     # @.str.2024
.L.str.2024:
	.asciz	"pathbbox\n"
	.size	.L.str.2024, 10

	.type	.L.str.2025,@object     # @.str.2025
.L.str.2025:
	.asciz	"2 index sub exch 3 index sub exch\n"
	.size	.L.str.2025, 35

	.type	.L.str.2026,@object     # @.str.2026
.L.str.2026:
	.asciz	"rectfill\n"
	.size	.L.str.2026, 10

	.type	.L.str.2027,@object     # @.str.2027
.L.str.2027:
	.asciz	"shfill\n"
	.size	.L.str.2027, 8

	.type	.L.str.2028,@object     # @.str.2028
.L.str.2028:
	.asciz	"/Do{//DoXObject exec}bind def\n"
	.size	.L.str.2028, 31

	.type	.L.str.2029,@object     # @.str.2029
.L.str.2029:
	.asciz	"/BI{currentglobal false setglobal<<}bind def\n"
	.size	.L.str.2029, 46

	.type	.L.str.2030,@object     # @.str.2030
.L.str.2030:
	.asciz	"/ID{>>\n"
	.size	.L.str.2030, 8

	.type	.L.str.2031,@object     # @.str.2031
.L.str.2031:
	.asciz	"dup/DataSource currentfile\n"
	.size	.L.str.2031, 28

	.type	.L.str.2032,@object     # @.str.2032
.L.str.2032:
	.asciz	"2 index/F//knownget exec{\n"
	.size	.L.str.2032, 27

	.type	.L.str.2033,@object     # @.str.2033
.L.str.2033:
	.asciz	"/A85 eq{\n"
	.size	.L.str.2033, 10

	.type	.L.str.2034,@object     # @.str.2034
.L.str.2034:
	.asciz	"0(~>)/SubFileDecode filter\n"
	.size	.L.str.2034, 28

	.type	.L.str.2035,@object     # @.str.2035
.L.str.2035:
	.asciz	"//CompleteInlineImage exec\n"
	.size	.L.str.2035, 28

	.type	.L.str.2036,@object     # @.str.2036
.L.str.2036:
	.asciz	"/EI{}bind def\n"
	.size	.L.str.2036, 15

	.type	.L.str.2037,@object     # @.str.2037
.L.str.2037:
	.asciz	"/BT{gsave//GraphicState/InitialTextMatrix get currentmatrix pop}bind def\n"
	.size	.L.str.2037, 74

	.type	.L.str.2038,@object     # @.str.2038
.L.str.2038:
	.asciz	"/ET{grestore}bind def\n"
	.size	.L.str.2038, 23

	.type	.L.str.2039,@object     # @.str.2039
.L.str.2039:
	.asciz	"/Tc{//GraphicState exch/CharacterSpacing exch put}bind def\n"
	.size	.L.str.2039, 60

	.type	.L.str.2040,@object     # @.str.2040
.L.str.2040:
	.asciz	"/TL{//GraphicState exch/TextLeading exch put}bind def\n"
	.size	.L.str.2040, 55

	.type	.L.str.2041,@object     # @.str.2041
.L.str.2041:
	.asciz	"/Tr{//GraphicState exch/TextRenderingMode exch put}bind def\n"
	.size	.L.str.2041, 61

	.type	.L.str.2042,@object     # @.str.2042
.L.str.2042:
	.asciz	"/Ts{\n"
	.size	.L.str.2042, 6

	.type	.L.str.2043,@object     # @.str.2043
.L.str.2043:
	.asciz	"mark(Unimplemented SetTextRise)//error exec\n"
	.size	.L.str.2043, 45

	.type	.L.str.2044,@object     # @.str.2044
.L.str.2044:
	.asciz	"/Tw{//GraphicState exch/WordSpacing exch put}bind def\n"
	.size	.L.str.2044, 55

	.type	.L.str.2045,@object     # @.str.2045
.L.str.2045:
	.asciz	"/Tz{\n"
	.size	.L.str.2045, 6

	.type	.L.str.2046,@object     # @.str.2046
.L.str.2046:
	.asciz	"mark(Unimplemented SetHorizontalTextScaling)//error exec\n"
	.size	.L.str.2046, 58

	.type	.L.str.2047,@object     # @.str.2047
.L.str.2047:
	.asciz	"/Td{translate 0 0 moveto}bind def\n"
	.size	.L.str.2047, 35

	.type	.L.str.2048,@object     # @.str.2048
.L.str.2048:
	.asciz	"/TD{dup neg//TL exec//Td exec}bind def\n"
	.size	.L.str.2048, 40

	.type	.L.str.2049,@object     # @.str.2049
.L.str.2049:
	.asciz	"/Tm{//GraphicState/InitialTextMatrix get setmatrix\n"
	.size	.L.str.2049, 52

	.type	.L.str.2050,@object     # @.str.2050
.L.str.2050:
	.asciz	"//TempMatrix astore concat\n"
	.size	.L.str.2050, 28

	.type	.L.str.2051,@object     # @.str.2051
.L.str.2051:
	.asciz	"0 0 moveto}bind def\n"
	.size	.L.str.2051, 21

	.type	.L.str.2052,@object     # @.str.2052
.L.str.2052:
	.asciz	"/T*{0//GraphicState/TextLeading get neg//Td exec}bind def\n"
	.size	.L.str.2052, 59

	.type	.L.str.2053,@object     # @.str.2053
.L.str.2053:
	.asciz	"/Tj{//ShowTextBeg exec//ShowText exec//ShowTextEnd exec}bind def\n"
	.size	.L.str.2053, 66

	.type	.L.str.2054,@object     # @.str.2054
.L.str.2054:
	.asciz	"/'{//T* exec//ShowText exec//ShowTextEnd exec}bind def\n"
	.size	.L.str.2054, 56

	.type	.L.str.2055,@object     # @.str.2055
.L.str.2055:
	.asciz	"/\"{3 2 roll//Tw exec exch//Tc exec//' exec}bind def\n"
	.size	.L.str.2055, 53

	.type	.L.str.2056,@object     # @.str.2056
.L.str.2056:
	.asciz	"/TJ//ShowTextWithGlyphPositioning def\n"
	.size	.L.str.2056, 39

	.type	.L.str.2057,@object     # @.str.2057
.L.str.2057:
	.asciz	"/Tf//SetFont def\n"
	.size	.L.str.2057, 18

	.type	.L.str.2058,@object     # @.str.2058
.L.str.2058:
	.asciz	"/d0/setcharwidth load def\n"
	.size	.L.str.2058, 27

	.type	.L.str.2059,@object     # @.str.2059
.L.str.2059:
	.asciz	"/d1/setcachedevice load def\n"
	.size	.L.str.2059, 29

	.type	.L.str.2060,@object     # @.str.2060
.L.str.2060:
	.asciz	"/BDC{BeginMarkedContentSequenceWithPropertyList}bind def\n"
	.size	.L.str.2060, 58

	.type	.L.str.2061,@object     # @.str.2061
.L.str.2061:
	.asciz	"/BMC{BeginMarkedContentSequence}bind def\n"
	.size	.L.str.2061, 42

	.type	.L.str.2062,@object     # @.str.2062
.L.str.2062:
	.asciz	"/EMC{EndMarkedContentSequence}bind def\n"
	.size	.L.str.2062, 40

	.type	.L.str.2063,@object     # @.str.2063
.L.str.2063:
	.asciz	"/BX{BeginCompatibilitySection}bind def\n"
	.size	.L.str.2063, 40

	.type	.L.str.2064,@object     # @.str.2064
.L.str.2064:
	.asciz	"/EX{EndCompatibilitySection}bind def\n"
	.size	.L.str.2064, 38

	.type	.L.str.2065,@object     # @.str.2065
.L.str.2065:
	.asciz	"/DP{DefineMarkedContentPointWithPropertyList}bind def\n"
	.size	.L.str.2065, 55

	.type	.L.str.2066,@object     # @.str.2066
.L.str.2066:
	.asciz	"/MP{DefineMarkedContentPoint}bind def\n"
	.size	.L.str.2066, 39

	.type	.L.str.2067,@object     # @.str.2067
.L.str.2067:
	.asciz	"/PS{cvx exec}bind def\n"
	.size	.L.str.2067, 23

	.type	.L.str.2068,@object     # @.str.2068
.L.str.2068:
	.asciz	"//Operators length dict begin\n"
	.size	.L.str.2068, 31

	.type	.L.str.2069,@object     # @.str.2069
.L.str.2069:
	.asciz	"//Operators{\n"
	.size	.L.str.2069, 14

	.type	.L.str.2070,@object     # @.str.2070
.L.str.2070:
	.asciz	"exch dup\n"
	.size	.L.str.2070, 10

	.type	.L.str.2071,@object     # @.str.2071
.L.str.2071:
	.asciz	"[exch//=only/exec load\n"
	.size	.L.str.2071, 24

	.type	.L.str.2072,@object     # @.str.2072
.L.str.2072:
	.asciz	"( )/print load\n"
	.size	.L.str.2072, 16

	.type	.L.str.2073,@object     # @.str.2073
.L.str.2073:
	.asciz	"8 7 roll\n"
	.size	.L.str.2073, 10

	.type	.L.str.2074,@object     # @.str.2074
.L.str.2074:
	.asciz	"currentdict end/Operators exch def\n"
	.size	.L.str.2074, 36

	.type	.L.str.2075,@object     # @.str.2075
.L.str.2075:
	.asciz	"/.registerencoding\n"
	.size	.L.str.2075, 20

	.type	.L.str.2076,@object     # @.str.2076
.L.str.2076:
	.asciz	"{pop pop\n"
	.size	.L.str.2076, 10

	.type	.L.str.2077,@object     # @.str.2077
.L.str.2077:
	.asciz	"/.defineencoding\n"
	.size	.L.str.2077, 18

	.type	.L.str.2078,@object     # @.str.2078
.L.str.2078:
	.asciz	"{def\n"
	.size	.L.str.2078, 6

	.type	.L.str.2079,@object     # @.str.2079
.L.str.2079:
	.asciz	"/.findencoding\n"
	.size	.L.str.2079, 16

	.type	.L.str.2080,@object     # @.str.2080
.L.str.2080:
	.asciz	"{load\n"
	.size	.L.str.2080, 7

	.type	opdfread_ps,@object     # @opdfread_ps
	.data
	.globl	opdfread_ps
	.align	16
opdfread_ps:
	.quad	.L.str
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
	.quad	.L.str.12
	.quad	.L.str.13
	.quad	.L.str.16
	.quad	.L.str.17
	.quad	.L.str.18
	.quad	.L.str.19
	.quad	.L.str.20
	.quad	.L.str.21
	.quad	.L.str.22
	.quad	.L.str.23
	.quad	.L.str.24
	.quad	.L.str.25
	.quad	.L.str.26
	.quad	.L.str.24
	.quad	.L.str.27
	.quad	.L.str.28
	.quad	.L.str.29
	.quad	.L.str.30
	.quad	.L.str.31
	.quad	.L.str.24
	.quad	.L.str.32
	.quad	.L.str.33
	.quad	.L.str.34
	.quad	.L.str.35
	.quad	.L.str.36
	.quad	.L.str.37
	.quad	.L.str.38
	.quad	.L.str.39
	.quad	.L.str.40
	.quad	.L.str.41
	.quad	.L.str.42
	.quad	.L.str.43
	.quad	.L.str.44
	.quad	.L.str.45
	.quad	.L.str.2
	.quad	.L.str.46
	.quad	.L.str.47
	.quad	.L.str.48
	.quad	.L.str.49
	.quad	.L.str.24
	.quad	.L.str.24
	.quad	.L.str.50
	.quad	.L.str.4
	.quad	.L.str.51
	.quad	.L.str.24
	.quad	.L.str.4
	.quad	.L.str.52
	.quad	.L.str.53
	.quad	.L.str.54
	.quad	.L.str.24
	.quad	.L.str.55
	.quad	.L.str.55
	.quad	.L.str.56
	.quad	.L.str.55
	.quad	.L.str.57
	.quad	.L.str.58
	.quad	.L.str.35
	.quad	.L.str.59
	.quad	.L.str.60
	.quad	.L.str.2
	.quad	.L.str.61
	.quad	.L.str.4
	.quad	.L.str.13
	.quad	.L.str.62
	.quad	.L.str.63
	.quad	.L.str.64
	.quad	.L.str.13
	.quad	.L.str.65
	.quad	.L.str.66
	.quad	.L.str.67
	.quad	.L.str.68
	.quad	.L.str.69
	.quad	.L.str.51
	.quad	.L.str.70
	.quad	.L.str.13
	.quad	.L.str.71
	.quad	.L.str.72
	.quad	.L.str.73
	.quad	.L.str.74
	.quad	.L.str.75
	.quad	.L.str.76
	.quad	.L.str.77
	.quad	.L.str.78
	.quad	.L.str.79
	.quad	.L.str.35
	.quad	.L.str.80
	.quad	.L.str.81
	.quad	.L.str.82
	.quad	.L.str.83
	.quad	.L.str.84
	.quad	.L.str.85
	.quad	.L.str.13
	.quad	.L.str.86
	.quad	.L.str.87
	.quad	.L.str.88
	.quad	.L.str.24
	.quad	.L.str.33
	.quad	.L.str.35
	.quad	.L.str.89
	.quad	.L.str.90
	.quad	.L.str.24
	.quad	.L.str.33
	.quad	.L.str.91
	.quad	.L.str.92
	.quad	.L.str.35
	.quad	.L.str.93
	.quad	.L.str.94
	.quad	.L.str.2
	.quad	.L.str.95
	.quad	.L.str.4
	.quad	.L.str.13
	.quad	.L.str.96
	.quad	.L.str.97
	.quad	.L.str.13
	.quad	.L.str.98
	.quad	.L.str.99
	.quad	.L.str.100
	.quad	.L.str.101
	.quad	.L.str.102
	.quad	.L.str.82
	.quad	.L.str.103
	.quad	.L.str.13
	.quad	.L.str.104
	.quad	.L.str.105
	.quad	.L.str.106
	.quad	.L.str.107
	.quad	.L.str.13
	.quad	.L.str.108
	.quad	.L.str.109
	.quad	.L.str.13
	.quad	.L.str.110
	.quad	.L.str.111
	.quad	.L.str.112
	.quad	.L.str.113
	.quad	.L.str.114
	.quad	.L.str.115
	.quad	.L.str.93
	.quad	.L.str.116
	.quad	.L.str.117
	.quad	.L.str.118
	.quad	.L.str.103
	.quad	.L.str.2
	.quad	.L.str.60
	.quad	.L.str.4
	.quad	.L.str.24
	.quad	.L.str.13
	.quad	.L.str.119
	.quad	.L.str.120
	.quad	.L.str.121
	.quad	.L.str.122
	.quad	.L.str.123
	.quad	.L.str.124
	.quad	.L.str.125
	.quad	.L.str.126
	.quad	.L.str.127
	.quad	.L.str.128
	.quad	.L.str.129
	.quad	.L.str.130
	.quad	.L.str.131
	.quad	.L.str.132
	.quad	.L.str.133
	.quad	.L.str.134
	.quad	.L.str.135
	.quad	.L.str.136
	.quad	.L.str.137
	.quad	.L.str.138
	.quad	.L.str.139
	.quad	.L.str.140
	.quad	.L.str.141
	.quad	.L.str.142
	.quad	.L.str.143
	.quad	.L.str.144
	.quad	.L.str.145
	.quad	.L.str.146
	.quad	.L.str.147
	.quad	.L.str.148
	.quad	.L.str.149
	.quad	.L.str.150
	.quad	.L.str.151
	.quad	.L.str.152
	.quad	.L.str.153
	.quad	.L.str.154
	.quad	.L.str.155
	.quad	.L.str.149
	.quad	.L.str.156
	.quad	.L.str.157
	.quad	.L.str.158
	.quad	.L.str.159
	.quad	.L.str.149
	.quad	.L.str.160
	.quad	.L.str.161
	.quad	.L.str.162
	.quad	.L.str.163
	.quad	.L.str.164
	.quad	.L.str.165
	.quad	.L.str.13
	.quad	.L.str.166
	.quad	.L.str.167
	.quad	.L.str.168
	.quad	.L.str.169
	.quad	.L.str.170
	.quad	.L.str.171
	.quad	.L.str.172
	.quad	.L.str.4
	.quad	.L.str.13
	.quad	.L.str.173
	.quad	.L.str.174
	.quad	.L.str.175
	.quad	.L.str.176
	.quad	.L.str.177
	.quad	.L.str.178
	.quad	.L.str.24
	.quad	.L.str.179
	.quad	.L.str.2
	.quad	.L.str.180
	.quad	.L.str.181
	.quad	.L.str.2
	.quad	.L.str.70
	.quad	.L.str.4
	.quad	.L.str.182
	.quad	.L.str.179
	.quad	.L.str.4
	.quad	.L.str.2
	.quad	.L.str.182
	.quad	.L.str.179
	.quad	.L.str.4
	.quad	.L.str.183
	.quad	.L.str.184
	.quad	.L.str.185
	.quad	.L.str.186
	.quad	.L.str.187
	.quad	.L.str.2
	.quad	.L.str.3
	.quad	.L.str.4
	.quad	.L.str.13
	.quad	.L.str.188
	.quad	.L.str.189
	.quad	.L.str.190
	.quad	.L.str.24
	.quad	.L.str.175
	.quad	.L.str.191
	.quad	.L.str.2
	.quad	.L.str.192
	.quad	.L.str.193
	.quad	.L.str.24
	.quad	.L.str.103
	.quad	.L.str.4
	.quad	.L.str.13
	.quad	.L.str.194
	.quad	.L.str.195
	.quad	.L.str.196
	.quad	.L.str.197
	.quad	.L.str.198
	.quad	.L.str.199
	.quad	.L.str.200
	.quad	.L.str.201
	.quad	.L.str.202
	.quad	.L.str.203
	.quad	.L.str.204
	.quad	.L.str.205
	.quad	.L.str.206
	.quad	.L.str.207
	.quad	.L.str.208
	.quad	.L.str.209
	.quad	.L.str.210
	.quad	.L.str.211
	.quad	.L.str.212
	.quad	.L.str.24
	.quad	.L.str.213
	.quad	.L.str.214
	.quad	.L.str.215
	.quad	.L.str.60
	.quad	.L.str.2
	.quad	.L.str.192
	.quad	.L.str.60
	.quad	.L.str.2
	.quad	.L.str.216
	.quad	.L.str.70
	.quad	.L.str.2
	.quad	.L.str.177
	.quad	.L.str.217
	.quad	.L.str.24
	.quad	.L.str.218
	.quad	.L.str.4
	.quad	.L.str.4
	.quad	.L.str.4
	.quad	.L.str.82
	.quad	.L.str.70
	.quad	.L.str.107
	.quad	.L.str.219
	.quad	.L.str.220
	.quad	.L.str.70
	.quad	.L.str.221
	.quad	.L.str.222
	.quad	.L.str.24
	.quad	.L.str.70
	.quad	.L.str.107
	.quad	.L.str.223
	.quad	.L.str.224
	.quad	.L.str.70
	.quad	.L.str.177
	.quad	.L.str.225
	.quad	.L.str.24
	.quad	.L.str.226
	.quad	.L.str.107
	.quad	.L.str.177
	.quad	.L.str.227
	.quad	.L.str.24
	.quad	.L.str.13
	.quad	.L.str.228
	.quad	.L.str.35
	.quad	.L.str.177
	.quad	.L.str.229
	.quad	.L.str.230
	.quad	.L.str.231
	.quad	.L.str.107
	.quad	.L.str.232
	.quad	.L.str.24
	.quad	.L.str.13
	.quad	.L.str.233
	.quad	.L.str.35
	.quad	.L.str.234
	.quad	.L.str.235
	.quad	.L.str.24
	.quad	.L.str.236
	.quad	.L.str.237
	.quad	.L.str.238
	.quad	.L.str.239
	.quad	.L.str.13
	.quad	.L.str.240
	.quad	.L.str.35
	.quad	.L.str.241
	.quad	.L.str.242
	.quad	.L.str.243
	.quad	.L.str.244
	.quad	.L.str.245
	.quad	.L.str.246
	.quad	.L.str.2
	.quad	.L.str.247
	.quad	.L.str.4
	.quad	.L.str.2
	.quad	.L.str.247
	.quad	.L.str.4
	.quad	.L.str.13
	.quad	.L.str.248
	.quad	.L.str.35
	.quad	.L.str.249
	.quad	.L.str.250
	.quad	.L.str.35
	.quad	.L.str.251
	.quad	.L.str.252
	.quad	.L.str.253
	.quad	.L.str.254
	.quad	.L.str.179
	.quad	.L.str.24
	.quad	.L.str.24
	.quad	.L.str.24
	.quad	.L.str.13
	.quad	.L.str.255
	.quad	.L.str.35
	.quad	.L.str.177
	.quad	.L.str.256
	.quad	.L.str.24
	.quad	.L.str.234
	.quad	.L.str.257
	.quad	.L.str.24
	.quad	.L.str.13
	.quad	.L.str.258
	.quad	.L.str.35
	.quad	.L.str.177
	.quad	.L.str.259
	.quad	.L.str.24
	.quad	.L.str.251
	.quad	.L.str.260
	.quad	.L.str.261
	.quad	.L.str.179
	.quad	.L.str.24
	.quad	.L.str.24
	.quad	.L.str.262
	.quad	.L.str.60
	.quad	.L.str.2
	.quad	.L.str.177
	.quad	.L.str.263
	.quad	.L.str.24
	.quad	.L.str.264
	.quad	.L.str.265
	.quad	.L.str.4
	.quad	.L.str.13
	.quad	.L.str.266
	.quad	.L.str.35
	.quad	.L.str.177
	.quad	.L.str.267
	.quad	.L.str.24
	.quad	.L.str.109
	.quad	.L.str.268
	.quad	.L.str.269
	.quad	.L.str.270
	.quad	.L.str.271
	.quad	.L.str.272
	.quad	.L.str.13
	.quad	.L.str.273
	.quad	.L.str.274
	.quad	.L.str.275
	.quad	.L.str.24
	.quad	.L.str.13
	.quad	.L.str.276
	.quad	.L.str.35
	.quad	.L.str.277
	.quad	.L.str.278
	.quad	.L.str.177
	.quad	.L.str.279
	.quad	.L.str.24
	.quad	.L.str.179
	.quad	.L.str.280
	.quad	.L.str.2
	.quad	.L.str.103
	.quad	.L.str.4
	.quad	.L.str.281
	.quad	.L.str.270
	.quad	.L.str.13
	.quad	.L.str.282
	.quad	.L.str.283
	.quad	.L.str.278
	.quad	.L.str.179
	.quad	.L.str.280
	.quad	.L.str.284
	.quad	.L.str.2
	.quad	.L.str.103
	.quad	.L.str.4
	.quad	.L.str.285
	.quad	.L.str.13
	.quad	.L.str.286
	.quad	.L.str.35
	.quad	.L.str.287
	.quad	.L.str.288
	.quad	.L.str.289
	.quad	.L.str.177
	.quad	.L.str.290
	.quad	.L.str.24
	.quad	.L.str.291
	.quad	.L.str.292
	.quad	.L.str.293
	.quad	.L.str.2
	.quad	.L.str.293
	.quad	.L.str.294
	.quad	.L.str.4
	.quad	.L.str.295
	.quad	.L.str.70
	.quad	.L.str.296
	.quad	.L.str.177
	.quad	.L.str.297
	.quad	.L.str.24
	.quad	.L.str.13
	.quad	.L.str.298
	.quad	.L.str.35
	.quad	.L.str.177
	.quad	.L.str.299
	.quad	.L.str.24
	.quad	.L.str.300
	.quad	.L.str.301
	.quad	.L.str.302
	.quad	.L.str.303
	.quad	.L.str.304
	.quad	.L.str.305
	.quad	.L.str.306
	.quad	.L.str.307
	.quad	.L.str.182
	.quad	.L.str.308
	.quad	.L.str.182
	.quad	.L.str.309
	.quad	.L.str.310
	.quad	.L.str.311
	.quad	.L.str.312
	.quad	.L.str.313
	.quad	.L.str.177
	.quad	.L.str.314
	.quad	.L.str.24
	.quad	.L.str.13
	.quad	.L.str.315
	.quad	.L.str.316
	.quad	.L.str.317
	.quad	.L.str.318
	.quad	.L.str.319
	.quad	.L.str.320
	.quad	.L.str.321
	.quad	.L.str.322
	.quad	.L.str.149
	.quad	.L.str.323
	.quad	.L.str.35
	.quad	.L.str.177
	.quad	.L.str.324
	.quad	.L.str.24
	.quad	.L.str.325
	.quad	.L.str.326
	.quad	.L.str.46
	.quad	.L.str.327
	.quad	.L.str.103
	.quad	.L.str.24
	.quad	.L.str.328
	.quad	.L.str.329
	.quad	.L.str.24
	.quad	.L.str.330
	.quad	.L.str.2
	.quad	.L.str.331
	.quad	.L.str.332
	.quad	.L.str.327
	.quad	.L.str.103
	.quad	.L.str.24
	.quad	.L.str.333
	.quad	.L.str.334
	.quad	.L.str.335
	.quad	.L.str.2
	.quad	.L.str.336
	.quad	.L.str.4
	.quad	.L.str.192
	.quad	.L.str.337
	.quad	.L.str.2
	.quad	.L.str.333
	.quad	.L.str.338
	.quad	.L.str.4
	.quad	.L.str.82
	.quad	.L.str.70
	.quad	.L.str.4
	.quad	.L.str.339
	.quad	.L.str.340
	.quad	.L.str.24
	.quad	.L.str.24
	.quad	.L.str.103
	.quad	.L.str.177
	.quad	.L.str.341
	.quad	.L.str.24
	.quad	.L.str.13
	.quad	.L.str.342
	.quad	.L.str.35
	.quad	.L.str.287
	.quad	.L.str.289
	.quad	.L.str.177
	.quad	.L.str.343
	.quad	.L.str.24
	.quad	.L.str.344
	.quad	.L.str.345
	.quad	.L.str.346
	.quad	.L.str.347
	.quad	.L.str.348
	.quad	.L.str.349
	.quad	.L.str.179
	.quad	.L.str.350
	.quad	.L.str.351
	.quad	.L.str.24
	.quad	.L.str.84
	.quad	.L.str.55
	.quad	.L.str.177
	.quad	.L.str.352
	.quad	.L.str.24
	.quad	.L.str.296
	.quad	.L.str.353
	.quad	.L.str.354
	.quad	.L.str.355
	.quad	.L.str.356
	.quad	.L.str.51
	.quad	.L.str.24
	.quad	.L.str.357
	.quad	.L.str.24
	.quad	.L.str.13
	.quad	.L.str.358
	.quad	.L.str.35
	.quad	.L.str.177
	.quad	.L.str.359
	.quad	.L.str.24
	.quad	.L.str.360
	.quad	.L.str.175
	.quad	.L.str.179
	.quad	.L.str.361
	.quad	.L.str.2
	.quad	.L.str.70
	.quad	.L.str.4
	.quad	.L.str.24
	.quad	.L.str.362
	.quad	.L.str.363
	.quad	.L.str.364
	.quad	.L.str.143
	.quad	.L.str.365
	.quad	.L.str.366
	.quad	.L.str.2
	.quad	.L.str.365
	.quad	.L.str.4
	.quad	.L.str.2
	.quad	.L.str.367
	.quad	.L.str.4
	.quad	.L.str.368
	.quad	.L.str.369
	.quad	.L.str.370
	.quad	.L.str.24
	.quad	.L.str.24
	.quad	.L.str.13
	.quad	.L.str.371
	.quad	.L.str.35
	.quad	.L.str.177
	.quad	.L.str.372
	.quad	.L.str.24
	.quad	.L.str.35
	.quad	.L.str.373
	.quad	.L.str.374
	.quad	.L.str.375
	.quad	.L.str.376
	.quad	.L.str.294
	.quad	.L.str.24
	.quad	.L.str.377
	.quad	.L.str.378
	.quad	.L.str.177
	.quad	.L.str.379
	.quad	.L.str.230
	.quad	.L.str.380
	.quad	.L.str.103
	.quad	.L.str.381
	.quad	.L.str.35
	.quad	.L.str.382
	.quad	.L.str.107
	.quad	.L.str.383
	.quad	.L.str.2
	.quad	.L.str.384
	.quad	.L.str.4
	.quad	.L.str.107
	.quad	.L.str.385
	.quad	.L.str.24
	.quad	.L.str.386
	.quad	.L.str.294
	.quad	.L.str.24
	.quad	.L.str.387
	.quad	.L.str.295
	.quad	.L.str.388
	.quad	.L.str.13
	.quad	.L.str.389
	.quad	.L.str.35
	.quad	.L.str.13
	.quad	.L.str.390
	.quad	.L.str.35
	.quad	.L.str.177
	.quad	.L.str.391
	.quad	.L.str.392
	.quad	.L.str.393
	.quad	.L.str.24
	.quad	.L.str.24
	.quad	.L.str.55
	.quad	.L.str.394
	.quad	.L.str.395
	.quad	.L.str.24
	.quad	.L.str.396
	.quad	.L.str.397
	.quad	.L.str.398
	.quad	.L.str.13
	.quad	.L.str.399
	.quad	.L.str.400
	.quad	.L.str.401
	.quad	.L.str.402
	.quad	.L.str.70
	.quad	.L.str.107
	.quad	.L.str.70
	.quad	.L.str.13
	.quad	.L.str.403
	.quad	.L.str.35
	.quad	.L.str.177
	.quad	.L.str.404
	.quad	.L.str.24
	.quad	.L.str.405
	.quad	.L.str.406
	.quad	.L.str.24
	.quad	.L.str.407
	.quad	.L.str.408
	.quad	.L.str.409
	.quad	.L.str.410
	.quad	.L.str.411
	.quad	.L.str.2
	.quad	.L.str.412
	.quad	.L.str.411
	.quad	.L.str.2
	.quad	.L.str.413
	.quad	.L.str.4
	.quad	.L.str.4
	.quad	.L.str.414
	.quad	.L.str.409
	.quad	.L.str.415
	.quad	.L.str.86
	.quad	.L.str.177
	.quad	.L.str.416
	.quad	.L.str.24
	.quad	.L.str.417
	.quad	.L.str.418
	.quad	.L.str.419
	.quad	.L.str.420
	.quad	.L.str.421
	.quad	.L.str.422
	.quad	.L.str.423
	.quad	.L.str.424
	.quad	.L.str.425
	.quad	.L.str.426
	.quad	.L.str.427
	.quad	.L.str.428
	.quad	.L.str.422
	.quad	.L.str.429
	.quad	.L.str.430
	.quad	.L.str.431
	.quad	.L.str.2
	.quad	.L.str.432
	.quad	.L.str.433
	.quad	.L.str.4
	.quad	.L.str.35
	.quad	.L.str.434
	.quad	.L.str.435
	.quad	.L.str.436
	.quad	.L.str.437
	.quad	.L.str.438
	.quad	.L.str.24
	.quad	.L.str.4
	.quad	.L.str.140
	.quad	.L.str.143
	.quad	.L.str.24
	.quad	.L.str.439
	.quad	.L.str.440
	.quad	.L.str.441
	.quad	.L.str.2
	.quad	.L.str.3
	.quad	.L.str.4
	.quad	.L.str.2
	.quad	.L.str.3
	.quad	.L.str.4
	.quad	.L.str.442
	.quad	.L.str.177
	.quad	.L.str.443
	.quad	.L.str.24
	.quad	.L.str.444
	.quad	.L.str.445
	.quad	.L.str.446
	.quad	.L.str.447
	.quad	.L.str.448
	.quad	.L.str.2
	.quad	.L.str.449
	.quad	.L.str.450
	.quad	.L.str.451
	.quad	.L.str.329
	.quad	.L.str.24
	.quad	.L.str.452
	.quad	.L.str.24
	.quad	.L.str.444
	.quad	.L.str.445
	.quad	.L.str.4
	.quad	.L.str.2
	.quad	.L.str.453
	.quad	.L.str.177
	.quad	.L.str.454
	.quad	.L.str.24
	.quad	.L.str.455
	.quad	.L.str.455
	.quad	.L.str.448
	.quad	.L.str.2
	.quad	.L.str.449
	.quad	.L.str.456
	.quad	.L.str.451
	.quad	.L.str.329
	.quad	.L.str.24
	.quad	.L.str.452
	.quad	.L.str.24
	.quad	.L.str.4
	.quad	.L.str.4
	.quad	.L.str.60
	.quad	.L.str.448
	.quad	.L.str.60
	.quad	.L.str.177
	.quad	.L.str.457
	.quad	.L.str.24
	.quad	.L.str.13
	.quad	.L.str.458
	.quad	.L.str.35
	.quad	.L.str.177
	.quad	.L.str.459
	.quad	.L.str.24
	.quad	.L.str.460
	.quad	.L.str.461
	.quad	.L.str.462
	.quad	.L.str.463
	.quad	.L.str.13
	.quad	.L.str.464
	.quad	.L.str.35
	.quad	.L.str.177
	.quad	.L.str.465
	.quad	.L.str.24
	.quad	.L.str.466
	.quad	.L.str.467
	.quad	.L.str.468
	.quad	.L.str.469
	.quad	.L.str.2
	.quad	.L.str.470
	.quad	.L.str.4
	.quad	.L.str.177
	.quad	.L.str.471
	.quad	.L.str.24
	.quad	.L.str.70
	.quad	.L.str.13
	.quad	.L.str.472
	.quad	.L.str.35
	.quad	.L.str.177
	.quad	.L.str.473
	.quad	.L.str.24
	.quad	.L.str.474
	.quad	.L.str.475
	.quad	.L.str.13
	.quad	.L.str.476
	.quad	.L.str.477
	.quad	.L.str.478
	.quad	.L.str.35
	.quad	.L.str.70
	.quad	.L.str.479
	.quad	.L.str.480
	.quad	.L.str.481
	.quad	.L.str.482
	.quad	.L.str.483
	.quad	.L.str.484
	.quad	.L.str.485
	.quad	.L.str.486
	.quad	.L.str.487
	.quad	.L.str.488
	.quad	.L.str.489
	.quad	.L.str.490
	.quad	.L.str.24
	.quad	.L.str.295
	.quad	.L.str.491
	.quad	.L.str.492
	.quad	.L.str.103
	.quad	.L.str.2
	.quad	.L.str.60
	.quad	.L.str.4
	.quad	.L.str.13
	.quad	.L.str.493
	.quad	.L.str.494
	.quad	.L.str.211
	.quad	.L.str.495
	.quad	.L.str.24
	.quad	.L.str.496
	.quad	.L.str.497
	.quad	.L.str.236
	.quad	.L.str.498
	.quad	.L.str.238
	.quad	.L.str.499
	.quad	.L.str.2
	.quad	.L.str.500
	.quad	.L.str.4
	.quad	.L.str.501
	.quad	.L.str.502
	.quad	.L.str.211
	.quad	.L.str.503
	.quad	.L.str.24
	.quad	.L.str.504
	.quad	.L.str.505
	.quad	.L.str.24
	.quad	.L.str.506
	.quad	.L.str.254
	.quad	.L.str.497
	.quad	.L.str.236
	.quad	.L.str.507
	.quad	.L.str.238
	.quad	.L.str.499
	.quad	.L.str.2
	.quad	.L.str.508
	.quad	.L.str.4
	.quad	.L.str.501
	.quad	.L.str.509
	.quad	.L.str.211
	.quad	.L.str.510
	.quad	.L.str.24
	.quad	.L.str.511
	.quad	.L.str.512
	.quad	.L.str.375
	.quad	.L.str.513
	.quad	.L.str.514
	.quad	.L.str.60
	.quad	.L.str.515
	.quad	.L.str.2
	.quad	.L.str.70
	.quad	.L.str.4
	.quad	.L.str.143
	.quad	.L.str.24
	.quad	.L.str.516
	.quad	.L.str.517
	.quad	.L.str.518
	.quad	.L.str.177
	.quad	.L.str.519
	.quad	.L.str.24
	.quad	.L.str.70
	.quad	.L.str.2
	.quad	.L.str.520
	.quad	.L.str.236
	.quad	.L.str.521
	.quad	.L.str.238
	.quad	.L.str.499
	.quad	.L.str.4
	.quad	.L.str.24
	.quad	.L.str.501
	.quad	.L.str.209
	.quad	.L.str.522
	.quad	.L.str.523
	.quad	.L.str.236
	.quad	.L.str.329
	.quad	.L.str.177
	.quad	.L.str.524
	.quad	.L.str.525
	.quad	.L.str.526
	.quad	.L.str.527
	.quad	.L.str.525
	.quad	.L.str.24
	.quad	.L.str.24
	.quad	.L.str.528
	.quad	.L.str.529
	.quad	.L.str.530
	.quad	.L.str.531
	.quad	.L.str.532
	.quad	.L.str.533
	.quad	.L.str.529
	.quad	.L.str.534
	.quad	.L.str.532
	.quad	.L.str.535
	.quad	.L.str.530
	.quad	.L.str.536
	.quad	.L.str.537
	.quad	.L.str.538
	.quad	.L.str.539
	.quad	.L.str.540
	.quad	.L.str.541
	.quad	.L.str.542
	.quad	.L.str.177
	.quad	.L.str.526
	.quad	.L.str.529
	.quad	.L.str.525
	.quad	.L.str.543
	.quad	.L.str.525
	.quad	.L.str.24
	.quad	.L.str.544
	.quad	.L.str.525
	.quad	.L.str.24
	.quad	.L.str.238
	.quad	.L.str.177
	.quad	.L.str.545
	.quad	.L.str.24
	.quad	.L.str.546
	.quad	.L.str.547
	.quad	.L.str.13
	.quad	.L.str.548
	.quad	.L.str.35
	.quad	.L.str.549
	.quad	.L.str.550
	.quad	.L.str.551
	.quad	.L.str.552
	.quad	.L.str.24
	.quad	.L.str.553
	.quad	.L.str.554
	.quad	.L.str.555
	.quad	.L.str.556
	.quad	.L.str.557
	.quad	.L.str.350
	.quad	.L.str.558
	.quad	.L.str.24
	.quad	.L.str.84
	.quad	.L.str.559
	.quad	.L.str.560
	.quad	.L.str.549
	.quad	.L.str.561
	.quad	.L.str.13
	.quad	.L.str.562
	.quad	.L.str.563
	.quad	.L.str.211
	.quad	.L.str.564
	.quad	.L.str.24
	.quad	.L.str.565
	.quad	.L.str.461
	.quad	.L.str.566
	.quad	.L.str.13
	.quad	.L.str.567
	.quad	.L.str.568
	.quad	.L.str.211
	.quad	.L.str.569
	.quad	.L.str.24
	.quad	.L.str.565
	.quad	.L.str.70
	.quad	.L.str.13
	.quad	.L.str.55
	.quad	.L.str.570
	.quad	.L.str.571
	.quad	.L.str.572
	.quad	.L.str.55
	.quad	.L.str.573
	.quad	.L.str.35
	.quad	.L.str.574
	.quad	.L.str.575
	.quad	.L.str.576
	.quad	.L.str.35
	.quad	.L.str.577
	.quad	.L.str.578
	.quad	.L.str.579
	.quad	.L.str.35
	.quad	.L.str.580
	.quad	.L.str.294
	.quad	.L.str.24
	.quad	.L.str.581
	.quad	.L.str.582
	.quad	.L.str.294
	.quad	.L.str.24
	.quad	.L.str.583
	.quad	.L.str.584
	.quad	.L.str.295
	.quad	.L.str.585
	.quad	.L.str.82
	.quad	.L.str.586
	.quad	.L.str.13
	.quad	.L.str.587
	.quad	.L.str.588
	.quad	.L.str.589
	.quad	.L.str.13
	.quad	.L.str.590
	.quad	.L.str.591
	.quad	.L.str.592
	.quad	.L.str.13
	.quad	.L.str.593
	.quad	.L.str.594
	.quad	.L.str.595
	.quad	.L.str.596
	.quad	.L.str.597
	.quad	.L.str.13
	.quad	.L.str.598
	.quad	.L.str.599
	.quad	.L.str.600
	.quad	.L.str.2
	.quad	.L.str.601
	.quad	.L.str.602
	.quad	.L.str.603
	.quad	.L.str.604
	.quad	.L.str.605
	.quad	.L.str.606
	.quad	.L.str.4
	.quad	.L.str.13
	.quad	.L.str.607
	.quad	.L.str.35
	.quad	.L.str.571
	.quad	.L.str.608
	.quad	.L.str.609
	.quad	.L.str.610
	.quad	.L.str.611
	.quad	.L.str.612
	.quad	.L.str.613
	.quad	.L.str.614
	.quad	.L.str.2
	.quad	.L.str.615
	.quad	.L.str.616
	.quad	.L.str.617
	.quad	.L.str.618
	.quad	.L.str.619
	.quad	.L.str.82
	.quad	.L.str.4
	.quad	.L.str.620
	.quad	.L.str.621
	.quad	.L.str.622
	.quad	.L.str.623
	.quad	.L.str.624
	.quad	.L.str.625
	.quad	.L.str.626
	.quad	.L.str.627
	.quad	.L.str.628
	.quad	.L.str.2
	.quad	.L.str.70
	.quad	.L.str.4
	.quad	.L.str.629
	.quad	.L.str.630
	.quad	.L.str.631
	.quad	.L.str.632
	.quad	.L.str.107
	.quad	.L.str.633
	.quad	.L.str.55
	.quad	.L.str.13
	.quad	.L.str.634
	.quad	.L.str.35
	.quad	.L.str.635
	.quad	.L.str.636
	.quad	.L.str.637
	.quad	.L.str.638
	.quad	.L.str.639
	.quad	.L.str.640
	.quad	.L.str.294
	.quad	.L.str.2
	.quad	.L.str.70
	.quad	.L.str.4
	.quad	.L.str.82
	.quad	.L.str.13
	.quad	.L.str.641
	.quad	.L.str.35
	.quad	.L.str.635
	.quad	.L.str.636
	.quad	.L.str.642
	.quad	.L.str.638
	.quad	.L.str.643
	.quad	.L.str.644
	.quad	.L.str.294
	.quad	.L.str.2
	.quad	.L.str.70
	.quad	.L.str.4
	.quad	.L.str.82
	.quad	.L.str.13
	.quad	.L.str.645
	.quad	.L.str.35
	.quad	.L.str.646
	.quad	.L.str.647
	.quad	.L.str.35
	.quad	.L.str.648
	.quad	.L.str.616
	.quad	.L.str.649
	.quad	.L.str.650
	.quad	.L.str.651
	.quad	.L.str.652
	.quad	.L.str.653
	.quad	.L.str.112
	.quad	.L.str.2
	.quad	.L.str.616
	.quad	.L.str.654
	.quad	.L.str.651
	.quad	.L.str.652
	.quad	.L.str.653
	.quad	.L.str.112
	.quad	.L.str.4
	.quad	.L.str.2
	.quad	.L.str.70
	.quad	.L.str.655
	.quad	.L.str.294
	.quad	.L.str.4
	.quad	.L.str.295
	.quad	.L.str.13
	.quad	.L.str.656
	.quad	.L.str.35
	.quad	.L.str.657
	.quad	.L.str.635
	.quad	.L.str.636
	.quad	.L.str.658
	.quad	.L.str.638
	.quad	.L.str.294
	.quad	.L.str.2
	.quad	.L.str.70
	.quad	.L.str.4
	.quad	.L.str.82
	.quad	.L.str.659
	.quad	.L.str.660
	.quad	.L.str.2
	.quad	.L.str.661
	.quad	.L.str.35
	.quad	.L.str.662
	.quad	.L.str.107
	.quad	.L.str.70
	.quad	.L.str.4
	.quad	.L.str.663
	.quad	.L.str.13
	.quad	.L.str.664
	.quad	.L.str.35
	.quad	.L.str.665
	.quad	.L.str.666
	.quad	.L.str.667
	.quad	.L.str.668
	.quad	.L.str.669
	.quad	.L.str.13
	.quad	.L.str.670
	.quad	.L.str.35
	.quad	.L.str.671
	.quad	.L.str.672
	.quad	.L.str.109
	.quad	.L.str.673
	.quad	.L.str.109
	.quad	.L.str.674
	.quad	.L.str.675
	.quad	.L.str.13
	.quad	.L.str.676
	.quad	.L.str.35
	.quad	.L.str.677
	.quad	.L.str.678
	.quad	.L.str.679
	.quad	.L.str.24
	.quad	.L.str.680
	.quad	.L.str.681
	.quad	.L.str.682
	.quad	.L.str.2
	.quad	.L.str.683
	.quad	.L.str.616
	.quad	.L.str.483
	.quad	.L.str.684
	.quad	.L.str.667
	.quad	.L.str.616
	.quad	.L.str.685
	.quad	.L.str.686
	.quad	.L.str.679
	.quad	.L.str.687
	.quad	.L.str.667
	.quad	.L.str.4
	.quad	.L.str.13
	.quad	.L.str.688
	.quad	.L.str.35
	.quad	.L.str.689
	.quad	.L.str.690
	.quad	.L.str.691
	.quad	.L.str.692
	.quad	.L.str.693
	.quad	.L.str.694
	.quad	.L.str.695
	.quad	.L.str.696
	.quad	.L.str.697
	.quad	.L.str.35
	.quad	.L.str.698
	.quad	.L.str.699
	.quad	.L.str.35
	.quad	.L.str.700
	.quad	.L.str.701
	.quad	.L.str.702
	.quad	.L.str.703
	.quad	.L.str.704
	.quad	.L.str.2
	.quad	.L.str.705
	.quad	.L.str.706
	.quad	.L.str.707
	.quad	.L.str.35
	.quad	.L.str.685
	.quad	.L.str.708
	.quad	.L.str.709
	.quad	.L.str.710
	.quad	.L.str.483
	.quad	.L.str.684
	.quad	.L.str.667
	.quad	.L.str.616
	.quad	.L.str.685
	.quad	.L.str.679
	.quad	.L.str.684
	.quad	.L.str.667
	.quad	.L.str.2
	.quad	.L.str.70
	.quad	.L.str.684
	.quad	.L.str.4
	.quad	.L.str.109
	.quad	.L.str.702
	.quad	.L.str.294
	.quad	.L.str.24
	.quad	.L.str.4
	.quad	.L.str.295
	.quad	.L.str.711
	.quad	.L.str.13
	.quad	.L.str.712
	.quad	.L.str.35
	.quad	.L.str.571
	.quad	.L.str.635
	.quad	.L.str.713
	.quad	.L.str.714
	.quad	.L.str.715
	.quad	.L.str.716
	.quad	.L.str.717
	.quad	.L.str.718
	.quad	.L.str.719
	.quad	.L.str.720
	.quad	.L.str.721
	.quad	.L.str.82
	.quad	.L.str.722
	.quad	.L.str.2
	.quad	.L.str.70
	.quad	.L.str.4
	.quad	.L.str.2
	.quad	.L.str.716
	.quad	.L.str.723
	.quad	.L.str.724
	.quad	.L.str.725
	.quad	.L.str.726
	.quad	.L.str.719
	.quad	.L.str.720
	.quad	.L.str.721
	.quad	.L.str.82
	.quad	.L.str.727
	.quad	.L.str.2
	.quad	.L.str.70
	.quad	.L.str.4
	.quad	.L.str.4
	.quad	.L.str.82
	.quad	.L.str.635
	.quad	.L.str.636
	.quad	.L.str.728
	.quad	.L.str.729
	.quad	.L.str.70
	.quad	.L.str.730
	.quad	.L.str.731
	.quad	.L.str.732
	.quad	.L.str.733
	.quad	.L.str.734
	.quad	.L.str.735
	.quad	.L.str.2
	.quad	.L.str.736
	.quad	.L.str.70
	.quad	.L.str.4
	.quad	.L.str.2
	.quad	.L.str.70
	.quad	.L.str.70
	.quad	.L.str.4
	.quad	.L.str.82
	.quad	.L.str.55
	.quad	.L.str.13
	.quad	.L.str.737
	.quad	.L.str.35
	.quad	.L.str.571
	.quad	.L.str.483
	.quad	.L.str.738
	.quad	.L.str.659
	.quad	.L.str.70
	.quad	.L.str.739
	.quad	.L.str.2
	.quad	.L.str.35
	.quad	.L.str.740
	.quad	.L.str.739
	.quad	.L.str.24
	.quad	.L.str.107
	.quad	.L.str.4
	.quad	.L.str.107
	.quad	.L.str.739
	.quad	.L.str.741
	.quad	.L.str.742
	.quad	.L.str.743
	.quad	.L.str.112
	.quad	.L.str.483
	.quad	.L.str.623
	.quad	.L.str.744
	.quad	.L.str.333
	.quad	.L.str.616
	.quad	.L.str.638
	.quad	.L.str.659
	.quad	.L.str.486
	.quad	.L.str.467
	.quad	.L.str.745
	.quad	.L.str.746
	.quad	.L.str.747
	.quad	.L.str.748
	.quad	.L.str.749
	.quad	.L.str.270
	.quad	.L.str.2
	.quad	.L.str.661
	.quad	.L.str.35
	.quad	.L.str.659
	.quad	.L.str.750
	.quad	.L.str.2
	.quad	.L.str.70
	.quad	.L.str.4
	.quad	.L.str.107
	.quad	.L.str.467
	.quad	.L.str.745
	.quad	.L.str.746
	.quad	.L.str.747
	.quad	.L.str.748
	.quad	.L.str.749
	.quad	.L.str.270
	.quad	.L.str.4
	.quad	.L.str.107
	.quad	.L.str.70
	.quad	.L.str.751
	.quad	.L.str.752
	.quad	.L.str.742
	.quad	.L.str.753
	.quad	.L.str.754
	.quad	.L.str.755
	.quad	.L.str.756
	.quad	.L.str.270
	.quad	.L.str.616
	.quad	.L.str.757
	.quad	.L.str.738
	.quad	.L.str.659
	.quad	.L.str.758
	.quad	.L.str.759
	.quad	.L.str.760
	.quad	.L.str.2
	.quad	.L.str.35
	.quad	.L.str.659
	.quad	.L.str.761
	.quad	.L.str.760
	.quad	.L.str.2
	.quad	.L.str.70
	.quad	.L.str.4
	.quad	.L.str.107
	.quad	.L.str.4
	.quad	.L.str.107
	.quad	.L.str.70
	.quad	.L.str.55
	.quad	.L.str.13
	.quad	.L.str.762
	.quad	.L.str.35
	.quad	.L.str.177
	.quad	.L.str.763
	.quad	.L.str.24
	.quad	.L.str.5
	.quad	.L.str.764
	.quad	.L.str.765
	.quad	.L.str.766
	.quad	.L.str.767
	.quad	.L.str.768
	.quad	.L.str.769
	.quad	.L.str.770
	.quad	.L.str.771
	.quad	.L.str.2
	.quad	.L.str.336
	.quad	.L.str.4
	.quad	.L.str.772
	.quad	.L.str.773
	.quad	.L.str.774
	.quad	.L.str.775
	.quad	.L.str.776
	.quad	.L.str.777
	.quad	.L.str.112
	.quad	.L.str.778
	.quad	.L.str.779
	.quad	.L.str.780
	.quad	.L.str.177
	.quad	.L.str.781
	.quad	.L.str.24
	.quad	.L.str.13
	.quad	.L.str.782
	.quad	.L.str.35
	.quad	.L.str.783
	.quad	.L.str.103
	.quad	.L.str.2
	.quad	.L.str.784
	.quad	.L.str.785
	.quad	.L.str.4
	.quad	.L.str.13
	.quad	.L.str.786
	.quad	.L.str.787
	.quad	.L.str.788
	.quad	.L.str.789
	.quad	.L.str.790
	.quad	.L.str.24
	.quad	.L.str.82
	.quad	.L.str.791
	.quad	.L.str.60
	.quad	.L.str.24
	.quad	.L.str.24
	.quad	.L.str.492
	.quad	.L.str.13
	.quad	.L.str.792
	.quad	.L.str.793
	.quad	.L.str.794
	.quad	.L.str.24
	.quad	.L.str.13
	.quad	.L.str.795
	.quad	.L.str.796
	.quad	.L.str.797
	.quad	.L.str.798
	.quad	.L.str.24
	.quad	.L.str.24
	.quad	.L.str.13
	.quad	.L.str.799
	.quad	.L.str.800
	.quad	.L.str.801
	.quad	.L.str.802
	.quad	.L.str.60
	.quad	.L.str.2
	.quad	.L.str.46
	.quad	.L.str.803
	.quad	.L.str.2
	.quad	.L.str.804
	.quad	.L.str.805
	.quad	.L.str.24
	.quad	.L.str.803
	.quad	.L.str.329
	.quad	.L.str.806
	.quad	.L.str.807
	.quad	.L.str.661
	.quad	.L.str.35
	.quad	.L.str.808
	.quad	.L.str.103
	.quad	.L.str.2
	.quad	.L.str.809
	.quad	.L.str.739
	.quad	.L.str.4
	.quad	.L.str.107
	.quad	.L.str.70
	.quad	.L.str.24
	.quad	.L.str.4
	.quad	.L.str.810
	.quad	.L.str.4
	.quad	.L.str.2
	.quad	.L.str.811
	.quad	.L.str.4
	.quad	.L.str.13
	.quad	.L.str.812
	.quad	.L.str.813
	.quad	.L.str.814
	.quad	.L.str.815
	.quad	.L.str.816
	.quad	.L.str.817
	.quad	.L.str.2
	.quad	.L.str.532
	.quad	.L.str.4
	.quad	.L.str.818
	.quad	.L.str.483
	.quad	.L.str.24
	.quad	.L.str.819
	.quad	.L.str.483
	.quad	.L.str.24
	.quad	.L.str.820
	.quad	.L.str.331
	.quad	.L.str.332
	.quad	.L.str.821
	.quad	.L.str.822
	.quad	.L.str.823
	.quad	.L.str.824
	.quad	.L.str.825
	.quad	.L.str.826
	.quad	.L.str.827
	.quad	.L.str.2
	.quad	.L.str.433
	.quad	.L.str.4
	.quad	.L.str.828
	.quad	.L.str.2
	.quad	.L.str.829
	.quad	.L.str.4
	.quad	.L.str.2
	.quad	.L.str.60
	.quad	.L.str.4
	.quad	.L.str.82
	.quad	.L.str.830
	.quad	.L.str.831
	.quad	.L.str.2
	.quad	.L.str.832
	.quad	.L.str.815
	.quad	.L.str.833
	.quad	.L.str.180
	.quad	.L.str.834
	.quad	.L.str.24
	.quad	.L.str.70
	.quad	.L.str.107
	.quad	.L.str.103
	.quad	.L.str.831
	.quad	.L.str.24
	.quad	.L.str.4
	.quad	.L.str.13
	.quad	.L.str.835
	.quad	.L.str.35
	.quad	.L.str.836
	.quad	.L.str.837
	.quad	.L.str.837
	.quad	.L.str.838
	.quad	.L.str.839
	.quad	.L.str.840
	.quad	.L.str.841
	.quad	.L.str.842
	.quad	.L.str.843
	.quad	.L.str.844
	.quad	.L.str.13
	.quad	.L.str.845
	.quad	.L.str.846
	.quad	.L.str.847
	.quad	.L.str.848
	.quad	.L.str.849
	.quad	.L.str.850
	.quad	.L.str.851
	.quad	.L.str.852
	.quad	.L.str.853
	.quad	.L.str.184
	.quad	.L.str.854
	.quad	.L.str.211
	.quad	.L.str.855
	.quad	.L.str.24
	.quad	.L.str.856
	.quad	.L.str.857
	.quad	.L.str.177
	.quad	.L.str.858
	.quad	.L.str.24
	.quad	.L.str.192
	.quad	.L.str.859
	.quad	.L.str.2
	.quad	.L.str.860
	.quad	.L.str.861
	.quad	.L.str.862
	.quad	.L.str.863
	.quad	.L.str.864
	.quad	.L.str.865
	.quad	.L.str.866
	.quad	.L.str.2
	.quad	.L.str.867
	.quad	.L.str.4
	.quad	.L.str.4
	.quad	.L.str.55
	.quad	.L.str.13
	.quad	.L.str.868
	.quad	.L.str.869
	.quad	.L.str.870
	.quad	.L.str.385
	.quad	.L.str.13
	.quad	.L.str.871
	.quad	.L.str.35
	.quad	.L.str.230
	.quad	.L.str.872
	.quad	.L.str.873
	.quad	.L.str.874
	.quad	.L.str.2
	.quad	.L.str.875
	.quad	.L.str.876
	.quad	.L.str.2
	.quad	.L.str.877
	.quad	.L.str.4
	.quad	.L.str.4
	.quad	.L.str.107
	.quad	.L.str.13
	.quad	.L.str.878
	.quad	.L.str.879
	.quad	.L.str.880
	.quad	.L.str.881
	.quad	.L.str.882
	.quad	.L.str.107
	.quad	.L.str.70
	.quad	.L.str.13
	.quad	.L.str.883
	.quad	.L.str.884
	.quad	.L.str.885
	.quad	.L.str.886
	.quad	.L.str.887
	.quad	.L.str.888
	.quad	.L.str.285
	.quad	.L.str.2
	.quad	.L.str.35
	.quad	.L.str.889
	.quad	.L.str.103
	.quad	.L.str.890
	.quad	.L.str.891
	.quad	.L.str.177
	.quad	.L.str.892
	.quad	.L.str.24
	.quad	.L.str.893
	.quad	.L.str.177
	.quad	.L.str.894
	.quad	.L.str.24
	.quad	.L.str.895
	.quad	.L.str.896
	.quad	.L.str.897
	.quad	.L.str.103
	.quad	.L.str.2
	.quad	.L.str.177
	.quad	.L.str.898
	.quad	.L.str.24
	.quad	.L.str.899
	.quad	.L.str.4
	.quad	.L.str.2
	.quad	.L.str.899
	.quad	.L.str.4
	.quad	.L.str.329
	.quad	.L.str.900
	.quad	.L.str.901
	.quad	.L.str.24
	.quad	.L.str.902
	.quad	.L.str.903
	.quad	.L.str.329
	.quad	.L.str.904
	.quad	.L.str.905
	.quad	.L.str.810
	.quad	.L.str.906
	.quad	.L.str.907
	.quad	.L.str.908
	.quad	.L.str.909
	.quad	.L.str.70
	.quad	.L.str.910
	.quad	.L.str.911
	.quad	.L.str.24
	.quad	.L.str.912
	.quad	.L.str.913
	.quad	.L.str.2
	.quad	.L.str.914
	.quad	.L.str.908
	.quad	.L.str.909
	.quad	.L.str.70
	.quad	.L.str.910
	.quad	.L.str.911
	.quad	.L.str.24
	.quad	.L.str.913
	.quad	.L.str.24
	.quad	.L.str.4
	.quad	.L.str.831
	.quad	.L.str.24
	.quad	.L.str.915
	.quad	.L.str.329
	.quad	.L.str.916
	.quad	.L.str.917
	.quad	.L.str.918
	.quad	.L.str.325
	.quad	.L.str.388
	.quad	.L.str.294
	.quad	.L.str.24
	.quad	.L.str.919
	.quad	.L.str.902
	.quad	.L.str.920
	.quad	.L.str.921
	.quad	.L.str.922
	.quad	.L.str.923
	.quad	.L.str.924
	.quad	.L.str.325
	.quad	.L.str.918
	.quad	.L.str.925
	.quad	.L.str.926
	.quad	.L.str.24
	.quad	.L.str.103
	.quad	.L.str.294
	.quad	.L.str.24
	.quad	.L.str.927
	.quad	.L.str.24
	.quad	.L.str.928
	.quad	.L.str.24
	.quad	.L.str.929
	.quad	.L.str.24
	.quad	.L.str.930
	.quad	.L.str.295
	.quad	.L.str.4
	.quad	.L.str.931
	.quad	.L.str.13
	.quad	.L.str.932
	.quad	.L.str.35
	.quad	.L.str.933
	.quad	.L.str.13
	.quad	.L.str.934
	.quad	.L.str.935
	.quad	.L.str.94
	.quad	.L.str.2
	.quad	.L.str.95
	.quad	.L.str.4
	.quad	.L.str.13
	.quad	.L.str.936
	.quad	.L.str.937
	.quad	.L.str.329
	.quad	.L.str.24
	.quad	.L.str.70
	.quad	.L.str.13
	.quad	.L.str.938
	.quad	.L.str.939
	.quad	.L.str.329
	.quad	.L.str.24
	.quad	.L.str.70
	.quad	.L.str.13
	.quad	.L.str.940
	.quad	.L.str.941
	.quad	.L.str.13
	.quad	.L.str.942
	.quad	.L.str.943
	.quad	.L.str.13
	.quad	.L.str.944
	.quad	.L.str.945
	.quad	.L.str.13
	.quad	.L.str.946
	.quad	.L.str.947
	.quad	.L.str.13
	.quad	.L.str.948
	.quad	.L.str.949
	.quad	.L.str.13
	.quad	.L.str.950
	.quad	.L.str.951
	.quad	.L.str.952
	.quad	.L.str.501
	.quad	.L.str.953
	.quad	.L.str.954
	.quad	.L.str.955
	.quad	.L.str.956
	.quad	.L.str.957
	.quad	.L.str.958
	.quad	.L.str.483
	.quad	.L.str.959
	.quad	.L.str.960
	.quad	.L.str.961
	.quad	.L.str.895
	.quad	.L.str.895
	.quad	.L.str.962
	.quad	.L.str.82
	.quad	.L.str.963
	.quad	.L.str.964
	.quad	.L.str.965
	.quad	.L.str.966
	.quad	.L.str.967
	.quad	.L.str.968
	.quad	.L.str.969
	.quad	.L.str.970
	.quad	.L.str.971
	.quad	.L.str.972
	.quad	.L.str.973
	.quad	.L.str.974
	.quad	.L.str.975
	.quad	.L.str.976
	.quad	.L.str.626
	.quad	.L.str.977
	.quad	.L.str.978
	.quad	.L.str.2
	.quad	.L.str.70
	.quad	.L.str.4
	.quad	.L.str.2
	.quad	.L.str.4
	.quad	.L.str.249
	.quad	.L.str.979
	.quad	.L.str.980
	.quad	.L.str.981
	.quad	.L.str.982
	.quad	.L.str.983
	.quad	.L.str.984
	.quad	.L.str.985
	.quad	.L.str.986
	.quad	.L.str.987
	.quad	.L.str.70
	.quad	.L.str.988
	.quad	.L.str.989
	.quad	.L.str.990
	.quad	.L.str.991
	.quad	.L.str.2
	.quad	.L.str.979
	.quad	.L.str.992
	.quad	.L.str.991
	.quad	.L.str.82
	.quad	.L.str.4
	.quad	.L.str.82
	.quad	.L.str.70
	.quad	.L.str.993
	.quad	.L.str.994
	.quad	.L.str.995
	.quad	.L.str.82
	.quad	.L.str.996
	.quad	.L.str.501
	.quad	.L.str.997
	.quad	.L.str.998
	.quad	.L.str.999
	.quad	.L.str.1000
	.quad	.L.str.1001
	.quad	.L.str.1002
	.quad	.L.str.1003
	.quad	.L.str.1004
	.quad	.L.str.70
	.quad	.L.str.1005
	.quad	.L.str.1006
	.quad	.L.str.1007
	.quad	.L.str.1008
	.quad	.L.str.1009
	.quad	.L.str.13
	.quad	.L.str.1010
	.quad	.L.str.1011
	.quad	.L.str.1012
	.quad	.L.str.1013
	.quad	.L.str.1014
	.quad	.L.str.1015
	.quad	.L.str.24
	.quad	.L.str.1016
	.quad	.L.str.1017
	.quad	.L.str.1018
	.quad	.L.str.1019
	.quad	.L.str.1020
	.quad	.L.str.1021
	.quad	.L.str.4
	.quad	.L.str.739
	.quad	.L.str.1022
	.quad	.L.str.1023
	.quad	.L.str.1024
	.quad	.L.str.1025
	.quad	.L.str.667
	.quad	.L.str.2
	.quad	.L.str.1026
	.quad	.L.str.4
	.quad	.L.str.1027
	.quad	.L.str.1028
	.quad	.L.str.1011
	.quad	.L.str.1012
	.quad	.L.str.1013
	.quad	.L.str.1029
	.quad	.L.str.1030
	.quad	.L.str.1031
	.quad	.L.str.1032
	.quad	.L.str.1033
	.quad	.L.str.1034
	.quad	.L.str.1035
	.quad	.L.str.1036
	.quad	.L.str.1037
	.quad	.L.str.24
	.quad	.L.str.1038
	.quad	.L.str.1039
	.quad	.L.str.1040
	.quad	.L.str.1041
	.quad	.L.str.1020
	.quad	.L.str.1042
	.quad	.L.str.1043
	.quad	.L.str.1044
	.quad	.L.str.2
	.quad	.L.str.1045
	.quad	.L.str.1040
	.quad	.L.str.1041
	.quad	.L.str.1020
	.quad	.L.str.1042
	.quad	.L.str.1043
	.quad	.L.str.1046
	.quad	.L.str.1047
	.quad	.L.str.1048
	.quad	.L.str.82
	.quad	.L.str.4
	.quad	.L.str.1049
	.quad	.L.str.501
	.quad	.L.str.1050
	.quad	.L.str.1051
	.quad	.L.str.1052
	.quad	.L.str.1053
	.quad	.L.str.1054
	.quad	.L.str.1055
	.quad	.L.str.1056
	.quad	.L.str.1057
	.quad	.L.str.501
	.quad	.L.str.1058
	.quad	.L.str.1059
	.quad	.L.str.1060
	.quad	.L.str.1033
	.quad	.L.str.1061
	.quad	.L.str.1062
	.quad	.L.str.2
	.quad	.L.str.1063
	.quad	.L.str.1064
	.quad	.L.str.4
	.quad	.L.str.1033
	.quad	.L.str.1065
	.quad	.L.str.24
	.quad	.L.str.13
	.quad	.L.str.1066
	.quad	.L.str.1067
	.quad	.L.str.1068
	.quad	.L.str.1069
	.quad	.L.str.1070
	.quad	.L.str.1071
	.quad	.L.str.1072
	.quad	.L.str.1073
	.quad	.L.str.1074
	.quad	.L.str.1075
	.quad	.L.str.1076
	.quad	.L.str.1077
	.quad	.L.str.1078
	.quad	.L.str.1058
	.quad	.L.str.1079
	.quad	.L.str.1080
	.quad	.L.str.1081
	.quad	.L.str.2
	.quad	.L.str.1082
	.quad	.L.str.1083
	.quad	.L.str.1084
	.quad	.L.str.2
	.quad	.L.str.1085
	.quad	.L.str.4
	.quad	.L.str.107
	.quad	.L.str.4
	.quad	.L.str.13
	.quad	.L.str.1086
	.quad	.L.str.35
	.quad	.L.str.1087
	.quad	.L.str.488
	.quad	.L.str.2
	.quad	.L.str.1088
	.quad	.L.str.1089
	.quad	.L.str.307
	.quad	.L.str.1090
	.quad	.L.str.1091
	.quad	.L.str.1092
	.quad	.L.str.2
	.quad	.L.str.325
	.quad	.L.str.1093
	.quad	.L.str.1094
	.quad	.L.str.1095
	.quad	.L.str.325
	.quad	.L.str.1096
	.quad	.L.str.1097
	.quad	.L.str.488
	.quad	.L.str.561
	.quad	.L.str.1098
	.quad	.L.str.1099
	.quad	.L.str.4
	.quad	.L.str.107
	.quad	.L.str.60
	.quad	.L.str.4
	.quad	.L.str.13
	.quad	.L.str.1100
	.quad	.L.str.1101
	.quad	.L.str.486
	.quad	.L.str.2
	.quad	.L.str.1102
	.quad	.L.str.4
	.quad	.L.str.13
	.quad	.L.str.1103
	.quad	.L.str.1104
	.quad	.L.str.1105
	.quad	.L.str.33
	.quad	.L.str.1106
	.quad	.L.str.1107
	.quad	.L.str.1108
	.quad	.L.str.1109
	.quad	.L.str.2
	.quad	.L.str.1110
	.quad	.L.str.1111
	.quad	.L.str.1112
	.quad	.L.str.1113
	.quad	.L.str.1114
	.quad	.L.str.1115
	.quad	.L.str.1116
	.quad	.L.str.1117
	.quad	.L.str.1118
	.quad	.L.str.294
	.quad	.L.str.24
	.quad	.L.str.1119
	.quad	.L.str.1120
	.quad	.L.str.1121
	.quad	.L.str.1122
	.quad	.L.str.270
	.quad	.L.str.82
	.quad	.L.str.1123
	.quad	.L.str.1116
	.quad	.L.str.1124
	.quad	.L.str.1125
	.quad	.L.str.1126
	.quad	.L.str.2
	.quad	.L.str.1127
	.quad	.L.str.1128
	.quad	.L.str.2
	.quad	.L.str.1129
	.quad	.L.str.1130
	.quad	.L.str.70
	.quad	.L.str.294
	.quad	.L.str.24
	.quad	.L.str.1131
	.quad	.L.str.1132
	.quad	.L.str.4
	.quad	.L.str.4
	.quad	.L.str.1133
	.quad	.L.str.82
	.quad	.L.str.33
	.quad	.L.str.91
	.quad	.L.str.501
	.quad	.L.str.1134
	.quad	.L.str.1109
	.quad	.L.str.501
	.quad	.L.str.1058
	.quad	.L.str.1135
	.quad	.L.str.35
	.quad	.L.str.1136
	.quad	.L.str.13
	.quad	.L.str.1137
	.quad	.L.str.1138
	.quad	.L.str.1139
	.quad	.L.str.2
	.quad	.L.str.1140
	.quad	.L.str.1033
	.quad	.L.str.1141
	.quad	.L.str.1142
	.quad	.L.str.1143
	.quad	.L.str.24
	.quad	.L.str.1144
	.quad	.L.str.2
	.quad	.L.str.1145
	.quad	.L.str.4
	.quad	.L.str.1146
	.quad	.L.str.13
	.quad	.L.str.1147
	.quad	.L.str.1148
	.quad	.L.str.1149
	.quad	.L.str.209
	.quad	.L.str.1150
	.quad	.L.str.1151
	.quad	.L.str.1152
	.quad	.L.str.24
	.quad	.L.str.13
	.quad	.L.str.1153
	.quad	.L.str.1154
	.quad	.L.str.13
	.quad	.L.str.1155
	.quad	.L.str.1156
	.quad	.L.str.13
	.quad	.L.str.1157
	.quad	.L.str.1158
	.quad	.L.str.13
	.quad	.L.str.1159
	.quad	.L.str.1160
	.quad	.L.str.13
	.quad	.L.str.1161
	.quad	.L.str.1162
	.quad	.L.str.1163
	.quad	.L.str.1164
	.quad	.L.str.177
	.quad	.L.str.1165
	.quad	.L.str.24
	.quad	.L.str.909
	.quad	.L.str.60
	.quad	.L.str.2
	.quad	.L.str.325
	.quad	.L.str.1166
	.quad	.L.str.329
	.quad	.L.str.1167
	.quad	.L.str.1168
	.quad	.L.str.1164
	.quad	.L.str.295
	.quad	.L.str.234
	.quad	.L.str.1169
	.quad	.L.str.24
	.quad	.L.str.4
	.quad	.L.str.13
	.quad	.L.str.1170
	.quad	.L.str.1171
	.quad	.L.str.211
	.quad	.L.str.1172
	.quad	.L.str.24
	.quad	.L.str.1173
	.quad	.L.str.1174
	.quad	.L.str.1175
	.quad	.L.str.24
	.quad	.L.str.1176
	.quad	.L.str.1177
	.quad	.L.str.1178
	.quad	.L.str.1179
	.quad	.L.str.177
	.quad	.L.str.1180
	.quad	.L.str.24
	.quad	.L.str.1181
	.quad	.L.str.1182
	.quad	.L.str.1183
	.quad	.L.str.24
	.quad	.L.str.492
	.quad	.L.str.1184
	.quad	.L.str.1185
	.quad	.L.str.1186
	.quad	.L.str.311
	.quad	.L.str.177
	.quad	.L.str.1187
	.quad	.L.str.24
	.quad	.L.str.112
	.quad	.L.str.51
	.quad	.L.str.70
	.quad	.L.str.1188
	.quad	.L.str.780
	.quad	.L.str.177
	.quad	.L.str.1189
	.quad	.L.str.24
	.quad	.L.str.13
	.quad	.L.str.1190
	.quad	.L.str.211
	.quad	.L.str.1191
	.quad	.L.str.24
	.quad	.L.str.1192
	.quad	.L.str.333
	.quad	.L.str.1193
	.quad	.L.str.177
	.quad	.L.str.1194
	.quad	.L.str.1195
	.quad	.L.str.24
	.quad	.L.str.1196
	.quad	.L.str.1197
	.quad	.L.str.1198
	.quad	.L.str.1199
	.quad	.L.str.177
	.quad	.L.str.1200
	.quad	.L.str.24
	.quad	.L.str.1201
	.quad	.L.str.1202
	.quad	.L.str.1203
	.quad	.L.str.1185
	.quad	.L.str.1204
	.quad	.L.str.1205
	.quad	.L.str.1206
	.quad	.L.str.1207
	.quad	.L.str.24
	.quad	.L.str.1208
	.quad	.L.str.112
	.quad	.L.str.51
	.quad	.L.str.1209
	.quad	.L.str.1210
	.quad	.L.str.1211
	.quad	.L.str.177
	.quad	.L.str.1212
	.quad	.L.str.1213
	.quad	.L.str.1214
	.quad	.L.str.2
	.quad	.L.str.60
	.quad	.L.str.4
	.quad	.L.str.107
	.quad	.L.str.24
	.quad	.L.str.1215
	.quad	.L.str.1216
	.quad	.L.str.483
	.quad	.L.str.1202
	.quad	.L.str.1217
	.quad	.L.str.1212
	.quad	.L.str.1218
	.quad	.L.str.1219
	.quad	.L.str.1220
	.quad	.L.str.1090
	.quad	.L.str.1221
	.quad	.L.str.285
	.quad	.L.str.2
	.quad	.L.str.60
	.quad	.L.str.4
	.quad	.L.str.2
	.quad	.L.str.60
	.quad	.L.str.4
	.quad	.L.str.2
	.quad	.L.str.60
	.quad	.L.str.4
	.quad	.L.str.107
	.quad	.L.str.177
	.quad	.L.str.1222
	.quad	.L.str.24
	.quad	.L.str.1223
	.quad	.L.str.1224
	.quad	.L.str.1225
	.quad	.L.str.1226
	.quad	.L.str.1227
	.quad	.L.str.754
	.quad	.L.str.1228
	.quad	.L.str.1229
	.quad	.L.str.24
	.quad	.L.str.1230
	.quad	.L.str.51
	.quad	.L.str.60
	.quad	.L.str.780
	.quad	.L.str.177
	.quad	.L.str.1231
	.quad	.L.str.24
	.quad	.L.str.13
	.quad	.L.str.1232
	.quad	.L.str.211
	.quad	.L.str.1233
	.quad	.L.str.24
	.quad	.L.str.1081
	.quad	.L.str.103
	.quad	.L.str.1234
	.quad	.L.str.5
	.quad	.L.str.1235
	.quad	.L.str.1236
	.quad	.L.str.55
	.quad	.L.str.177
	.quad	.L.str.1237
	.quad	.L.str.1238
	.quad	.L.str.24
	.quad	.L.str.13
	.quad	.L.str.1239
	.quad	.L.str.35
	.quad	.L.str.1240
	.quad	.L.str.1241
	.quad	.L.str.332
	.quad	.L.str.329
	.quad	.L.str.1242
	.quad	.L.str.241
	.quad	.L.str.1243
	.quad	.L.str.2
	.quad	.L.str.435
	.quad	.L.str.4
	.quad	.L.str.24
	.quad	.L.str.112
	.quad	.L.str.82
	.quad	.L.str.70
	.quad	.L.str.780
	.quad	.L.str.13
	.quad	.L.str.1244
	.quad	.L.str.1245
	.quad	.L.str.192
	.quad	.L.str.70
	.quad	.L.str.1246
	.quad	.L.str.1247
	.quad	.L.str.24
	.quad	.L.str.13
	.quad	.L.str.1248
	.quad	.L.str.35
	.quad	.L.str.1249
	.quad	.L.str.1250
	.quad	.L.str.1251
	.quad	.L.str.112
	.quad	.L.str.2
	.quad	.L.str.60
	.quad	.L.str.4
	.quad	.L.str.2
	.quad	.L.str.60
	.quad	.L.str.4
	.quad	.L.str.13
	.quad	.L.str.1252
	.quad	.L.str.1253
	.quad	.L.str.1254
	.quad	.L.str.24
	.quad	.L.str.241
	.quad	.L.str.35
	.quad	.L.str.1255
	.quad	.L.str.60
	.quad	.L.str.107
	.quad	.L.str.70
	.quad	.L.str.2
	.quad	.L.str.1256
	.quad	.L.str.4
	.quad	.L.str.13
	.quad	.L.str.1257
	.quad	.L.str.35
	.quad	.L.str.177
	.quad	.L.str.1258
	.quad	.L.str.24
	.quad	.L.str.1259
	.quad	.L.str.1260
	.quad	.L.str.329
	.quad	.L.str.1261
	.quad	.L.str.180
	.quad	.L.str.329
	.quad	.L.str.1262
	.quad	.L.str.1263
	.quad	.L.str.1264
	.quad	.L.str.60
	.quad	.L.str.2
	.quad	.L.str.112
	.quad	.L.str.4
	.quad	.L.str.82
	.quad	.L.str.24
	.quad	.L.str.1265
	.quad	.L.str.35
	.quad	.L.str.1266
	.quad	.L.str.107
	.quad	.L.str.70
	.quad	.L.str.780
	.quad	.L.str.177
	.quad	.L.str.1267
	.quad	.L.str.24
	.quad	.L.str.13
	.quad	.L.str.1268
	.quad	.L.str.35
	.quad	.L.str.177
	.quad	.L.str.1269
	.quad	.L.str.24
	.quad	.L.str.1270
	.quad	.L.str.333
	.quad	.L.str.177
	.quad	.L.str.1194
	.quad	.L.str.1271
	.quad	.L.str.24
	.quad	.L.str.1196
	.quad	.L.str.1272
	.quad	.L.str.1273
	.quad	.L.str.754
	.quad	.L.str.1228
	.quad	.L.str.1274
	.quad	.L.str.24
	.quad	.L.str.2
	.quad	.L.str.1275
	.quad	.L.str.1276
	.quad	.L.str.1277
	.quad	.L.str.1278
	.quad	.L.str.1279
	.quad	.L.str.35
	.quad	.L.str.1280
	.quad	.L.str.1281
	.quad	.L.str.1274
	.quad	.L.str.24
	.quad	.L.str.82
	.quad	.L.str.1282
	.quad	.L.str.1283
	.quad	.L.str.1274
	.quad	.L.str.24
	.quad	.L.str.311
	.quad	.L.str.4
	.quad	.L.str.1284
	.quad	.L.str.1285
	.quad	.L.str.1286
	.quad	.L.str.1287
	.quad	.L.str.177
	.quad	.L.str.1288
	.quad	.L.str.1289
	.quad	.L.str.24
	.quad	.L.str.55
	.quad	.L.str.13
	.quad	.L.str.1290
	.quad	.L.str.1291
	.quad	.L.str.1292
	.quad	.L.str.1293
	.quad	.L.str.1294
	.quad	.L.str.517
	.quad	.L.str.1295
	.quad	.L.str.1296
	.quad	.L.str.1297
	.quad	.L.str.1298
	.quad	.L.str.2
	.quad	.L.str.1299
	.quad	.L.str.333
	.quad	.L.str.1300
	.quad	.L.str.4
	.quad	.L.str.2
	.quad	.L.str.1298
	.quad	.L.str.4
	.quad	.L.str.35
	.quad	.L.str.1301
	.quad	.L.str.177
	.quad	.L.str.1302
	.quad	.L.str.24
	.quad	.L.str.1303
	.quad	.L.str.1304
	.quad	.L.str.294
	.quad	.L.str.24
	.quad	.L.str.1305
	.quad	.L.str.177
	.quad	.L.str.1306
	.quad	.L.str.24
	.quad	.L.str.1307
	.quad	.L.str.1308
	.quad	.L.str.1309
	.quad	.L.str.2
	.quad	.L.str.1310
	.quad	.L.str.4
	.quad	.L.str.1311
	.quad	.L.str.294
	.quad	.L.str.24
	.quad	.L.str.1312
	.quad	.L.str.177
	.quad	.L.str.1313
	.quad	.L.str.24
	.quad	.L.str.1314
	.quad	.L.str.1308
	.quad	.L.str.1309
	.quad	.L.str.2
	.quad	.L.str.1310
	.quad	.L.str.4
	.quad	.L.str.1311
	.quad	.L.str.294
	.quad	.L.str.24
	.quad	.L.str.1315
	.quad	.L.str.295
	.quad	.L.str.177
	.quad	.L.str.1316
	.quad	.L.str.230
	.quad	.L.str.329
	.quad	.L.str.46
	.quad	.L.str.1317
	.quad	.L.str.2
	.quad	.L.str.877
	.quad	.L.str.4
	.quad	.L.str.1318
	.quad	.L.str.107
	.quad	.L.str.385
	.quad	.L.str.24
	.quad	.L.str.13
	.quad	.L.str.1319
	.quad	.L.str.35
	.quad	.L.str.411
	.quad	.L.str.1320
	.quad	.L.str.1321
	.quad	.L.str.13
	.quad	.L.str.1322
	.quad	.L.str.35
	.quad	.L.str.411
	.quad	.L.str.1320
	.quad	.L.str.333
	.quad	.L.str.1323
	.quad	.L.str.13
	.quad	.L.str.1324
	.quad	.L.str.35
	.quad	.L.str.1325
	.quad	.L.str.1326
	.quad	.L.str.1327
	.quad	.L.str.182
	.quad	.L.str.1328
	.quad	.L.str.1329
	.quad	.L.str.82
	.quad	.L.str.70
	.quad	.L.str.13
	.quad	.L.str.1330
	.quad	.L.str.35
	.quad	.L.str.177
	.quad	.L.str.1331
	.quad	.L.str.24
	.quad	.L.str.329
	.quad	.L.str.1332
	.quad	.L.str.1333
	.quad	.L.str.2
	.quad	.L.str.1334
	.quad	.L.str.1335
	.quad	.L.str.909
	.quad	.L.str.1336
	.quad	.L.str.2
	.quad	.L.str.1337
	.quad	.L.str.1338
	.quad	.L.str.411
	.quad	.L.str.1339
	.quad	.L.str.4
	.quad	.L.str.4
	.quad	.L.str.177
	.quad	.L.str.1340
	.quad	.L.str.24
	.quad	.L.str.13
	.quad	.L.str.1341
	.quad	.L.str.35
	.quad	.L.str.177
	.quad	.L.str.1342
	.quad	.L.str.24
	.quad	.L.str.909
	.quad	.L.str.70
	.quad	.L.str.2
	.quad	.L.str.1343
	.quad	.L.str.1344
	.quad	.L.str.1345
	.quad	.L.str.1346
	.quad	.L.str.1347
	.quad	.L.str.2
	.quad	.L.str.1348
	.quad	.L.str.1349
	.quad	.L.str.1350
	.quad	.L.str.1351
	.quad	.L.str.1352
	.quad	.L.str.1353
	.quad	.L.str.1354
	.quad	.L.str.1347
	.quad	.L.str.1223
	.quad	.L.str.329
	.quad	.L.str.1355
	.quad	.L.str.1356
	.quad	.L.str.1357
	.quad	.L.str.1358
	.quad	.L.str.1347
	.quad	.L.str.1359
	.quad	.L.str.333
	.quad	.L.str.1360
	.quad	.L.str.4
	.quad	.L.str.4
	.quad	.L.str.177
	.quad	.L.str.1361
	.quad	.L.str.24
	.quad	.L.str.13
	.quad	.L.str.1362
	.quad	.L.str.35
	.quad	.L.str.1363
	.quad	.L.str.1364
	.quad	.L.str.1365
	.quad	.L.str.1366
	.quad	.L.str.177
	.quad	.L.str.1367
	.quad	.L.str.1368
	.quad	.L.str.24
	.quad	.L.str.1369
	.quad	.L.str.1370
	.quad	.L.str.1371
	.quad	.L.str.1372
	.quad	.L.str.1373
	.quad	.L.str.1374
	.quad	.L.str.1375
	.quad	.L.str.1376
	.quad	.L.str.310
	.quad	.L.str.2
	.quad	.L.str.70
	.quad	.L.str.1377
	.quad	.L.str.536
	.quad	.L.str.1378
	.quad	.L.str.4
	.quad	.L.str.177
	.quad	.L.str.1379
	.quad	.L.str.24
	.quad	.L.str.238
	.quad	.L.str.177
	.quad	.L.str.1380
	.quad	.L.str.1238
	.quad	.L.str.24
	.quad	.L.str.13
	.quad	.L.str.1381
	.quad	.L.str.1382
	.quad	.L.str.13
	.quad	.L.str.1383
	.quad	.L.str.1384
	.quad	.L.str.13
	.quad	.L.str.1385
	.quad	.L.str.35
	.quad	.L.str.1386
	.quad	.L.str.1387
	.quad	.L.str.24
	.quad	.L.str.1388
	.quad	.L.str.1389
	.quad	.L.str.1386
	.quad	.L.str.1390
	.quad	.L.str.2
	.quad	.L.str.1391
	.quad	.L.str.4
	.quad	.L.str.1392
	.quad	.L.str.1393
	.quad	.L.str.1394
	.quad	.L.str.1395
	.quad	.L.str.2
	.quad	.L.str.1396
	.quad	.L.str.4
	.quad	.L.str.1397
	.quad	.L.str.1398
	.quad	.L.str.1399
	.quad	.L.str.1400
	.quad	.L.str.1401
	.quad	.L.str.1402
	.quad	.L.str.24
	.quad	.L.str.236
	.quad	.L.str.1403
	.quad	.L.str.1404
	.quad	.L.str.1378
	.quad	.L.str.2
	.quad	.L.str.1405
	.quad	.L.str.1406
	.quad	.L.str.4
	.quad	.L.str.238
	.quad	.L.str.1407
	.quad	.L.str.1408
	.quad	.L.str.1400
	.quad	.L.str.1409
	.quad	.L.str.1410
	.quad	.L.str.1411
	.quad	.L.str.24
	.quad	.L.str.60
	.quad	.L.str.82
	.quad	.L.str.1386
	.quad	.L.str.1412
	.quad	.L.str.2
	.quad	.L.str.1413
	.quad	.L.str.4
	.quad	.L.str.1414
	.quad	.L.str.1415
	.quad	.L.str.177
	.quad	.L.str.1416
	.quad	.L.str.1238
	.quad	.L.str.24
	.quad	.L.str.1386
	.quad	.L.str.1417
	.quad	.L.str.24
	.quad	.L.str.13
	.quad	.L.str.1418
	.quad	.L.str.35
	.quad	.L.str.483
	.quad	.L.str.179
	.quad	.L.str.13
	.quad	.L.str.1419
	.quad	.L.str.211
	.quad	.L.str.1420
	.quad	.L.str.24
	.quad	.L.str.1421
	.quad	.L.str.1422
	.quad	.L.str.333
	.quad	.L.str.1081
	.quad	.L.str.751
	.quad	.L.str.1423
	.quad	.L.str.285
	.quad	.L.str.2
	.quad	.L.str.1241
	.quad	.L.str.1424
	.quad	.L.str.1133
	.quad	.L.str.82
	.quad	.L.str.285
	.quad	.L.str.4
	.quad	.L.str.177
	.quad	.L.str.1425
	.quad	.L.str.24
	.quad	.L.str.13
	.quad	.L.str.1426
	.quad	.L.str.1427
	.quad	.L.str.35
	.quad	.L.str.1354
	.quad	.L.str.909
	.quad	.L.str.70
	.quad	.L.str.2
	.quad	.L.str.1428
	.quad	.L.str.1429
	.quad	.L.str.82
	.quad	.L.str.4
	.quad	.L.str.1430
	.quad	.L.str.13
	.quad	.L.str.1431
	.quad	.L.str.35
	.quad	.L.str.997
	.quad	.L.str.1432
	.quad	.L.str.1433
	.quad	.L.str.24
	.quad	.L.str.51
	.quad	.L.str.70
	.quad	.L.str.1434
	.quad	.L.str.1435
	.quad	.L.str.1436
	.quad	.L.str.13
	.quad	.L.str.1437
	.quad	.L.str.35
	.quad	.L.str.1438
	.quad	.L.str.1439
	.quad	.L.str.294
	.quad	.L.str.24
	.quad	.L.str.333
	.quad	.L.str.1440
	.quad	.L.str.1441
	.quad	.L.str.1433
	.quad	.L.str.24
	.quad	.L.str.1442
	.quad	.L.str.333
	.quad	.L.str.295
	.quad	.L.str.1443
	.quad	.L.str.467
	.quad	.L.str.1444
	.quad	.L.str.1445
	.quad	.L.str.1210
	.quad	.L.str.1446
	.quad	.L.str.1447
	.quad	.L.str.1448
	.quad	.L.str.13
	.quad	.L.str.1449
	.quad	.L.str.1450
	.quad	.L.str.179
	.quad	.L.str.13
	.quad	.L.str.1451
	.quad	.L.str.35
	.quad	.L.str.177
	.quad	.L.str.1452
	.quad	.L.str.24
	.quad	.L.str.1332
	.quad	.L.str.70
	.quad	.L.str.1453
	.quad	.L.str.1454
	.quad	.L.str.1455
	.quad	.L.str.1456
	.quad	.L.str.177
	.quad	.L.str.1457
	.quad	.L.str.24
	.quad	.L.str.1458
	.quad	.L.str.1459
	.quad	.L.str.177
	.quad	.L.str.1460
	.quad	.L.str.24
	.quad	.L.str.1461
	.quad	.L.str.1462
	.quad	.L.str.82
	.quad	.L.str.82
	.quad	.L.str.2
	.quad	.L.str.1354
	.quad	.L.str.1463
	.quad	.L.str.1464
	.quad	.L.str.1465
	.quad	.L.str.82
	.quad	.L.str.70
	.quad	.L.str.4
	.quad	.L.str.177
	.quad	.L.str.1466
	.quad	.L.str.24
	.quad	.L.str.13
	.quad	.L.str.1467
	.quad	.L.str.1468
	.quad	.L.str.211
	.quad	.L.str.1469
	.quad	.L.str.24
	.quad	.L.str.1470
	.quad	.L.str.1471
	.quad	.L.str.1472
	.quad	.L.str.1473
	.quad	.L.str.1474
	.quad	.L.str.1475
	.quad	.L.str.1476
	.quad	.L.str.1477
	.quad	.L.str.1478
	.quad	.L.str.1479
	.quad	.L.str.1480
	.quad	.L.str.1481
	.quad	.L.str.1241
	.quad	.L.str.1482
	.quad	.L.str.1133
	.quad	.L.str.82
	.quad	.L.str.1483
	.quad	.L.str.1484
	.quad	.L.str.1386
	.quad	.L.str.1485
	.quad	.L.str.24
	.quad	.L.str.1486
	.quad	.L.str.55
	.quad	.L.str.177
	.quad	.L.str.1487
	.quad	.L.str.24
	.quad	.L.str.13
	.quad	.L.str.1488
	.quad	.L.str.35
	.quad	.L.str.1386
	.quad	.L.str.1489
	.quad	.L.str.24
	.quad	.L.str.1490
	.quad	.L.str.1491
	.quad	.L.str.1492
	.quad	.L.str.24
	.quad	.L.str.24
	.quad	.L.str.1493
	.quad	.L.str.1494
	.quad	.L.str.1495
	.quad	.L.str.2
	.quad	.L.str.1496
	.quad	.L.str.4
	.quad	.L.str.1386
	.quad	.L.str.1497
	.quad	.L.str.24
	.quad	.L.str.13
	.quad	.L.str.1498
	.quad	.L.str.1499
	.quad	.L.str.1500
	.quad	.L.str.1501
	.quad	.L.str.1502
	.quad	.L.str.517
	.quad	.L.str.2
	.quad	.L.str.483
	.quad	.L.str.4
	.quad	.L.str.1503
	.quad	.L.str.517
	.quad	.L.str.2
	.quad	.L.str.532
	.quad	.L.str.4
	.quad	.L.str.1320
	.quad	.L.str.1366
	.quad	.L.str.35
	.quad	.L.str.1504
	.quad	.L.str.1505
	.quad	.L.str.1506
	.quad	.L.str.238
	.quad	.L.str.2
	.quad	.L.str.236
	.quad	.L.str.1507
	.quad	.L.str.1501
	.quad	.L.str.1508
	.quad	.L.str.1509
	.quad	.L.str.176
	.quad	.L.str.1320
	.quad	.L.str.1510
	.quad	.L.str.1368
	.quad	.L.str.35
	.quad	.L.str.1504
	.quad	.L.str.1505
	.quad	.L.str.329
	.quad	.L.str.1506
	.quad	.L.str.238
	.quad	.L.str.539
	.quad	.L.str.82
	.quad	.L.str.1511
	.quad	.L.str.238
	.quad	.L.str.4
	.quad	.L.str.55
	.quad	.L.str.177
	.quad	.L.str.1512
	.quad	.L.str.24
	.quad	.L.str.13
	.quad	.L.str.1513
	.quad	.L.str.1514
	.quad	.L.str.177
	.quad	.L.str.1515
	.quad	.L.str.24
	.quad	.L.str.13
	.quad	.L.str.1516
	.quad	.L.str.35
	.quad	.L.str.1517
	.quad	.L.str.1518
	.quad	.L.str.1519
	.quad	.L.str.24
	.quad	.L.str.1520
	.quad	.L.str.1521
	.quad	.L.str.24
	.quad	.L.str.1522
	.quad	.L.str.1523
	.quad	.L.str.24
	.quad	.L.str.1524
	.quad	.L.str.295
	.quad	.L.str.13
	.quad	.L.str.1525
	.quad	.L.str.35
	.quad	.L.str.1386
	.quad	.L.str.1526
	.quad	.L.str.24
	.quad	.L.str.1490
	.quad	.L.str.1491
	.quad	.L.str.1492
	.quad	.L.str.24
	.quad	.L.str.24
	.quad	.L.str.1493
	.quad	.L.str.1494
	.quad	.L.str.1495
	.quad	.L.str.2
	.quad	.L.str.1496
	.quad	.L.str.4
	.quad	.L.str.13
	.quad	.L.str.1527
	.quad	.L.str.211
	.quad	.L.str.1528
	.quad	.L.str.24
	.quad	.L.str.251
	.quad	.L.str.1529
	.quad	.L.str.35
	.quad	.L.str.1332
	.quad	.L.str.1530
	.quad	.L.str.24
	.quad	.L.str.1520
	.quad	.L.str.1531
	.quad	.L.str.24
	.quad	.L.str.1532
	.quad	.L.str.295
	.quad	.L.str.2
	.quad	.L.str.1533
	.quad	.L.str.4
	.quad	.L.str.177
	.quad	.L.str.1534
	.quad	.L.str.24
	.quad	.L.str.13
	.quad	.L.str.1535
	.quad	.L.str.1536
	.quad	.L.str.1537
	.quad	.L.str.1538
	.quad	.L.str.2
	.quad	.L.str.1539
	.quad	.L.str.4
	.quad	.L.str.33
	.quad	.L.str.1540
	.quad	.L.str.1541
	.quad	.L.str.1538
	.quad	.L.str.2
	.quad	.L.str.1542
	.quad	.L.str.1543
	.quad	.L.str.2
	.quad	.L.str.1539
	.quad	.L.str.4
	.quad	.L.str.4
	.quad	.L.str.33
	.quad	.L.str.1544
	.quad	.L.str.1545
	.quad	.L.str.1546
	.quad	.L.str.2
	.quad	.L.str.1369
	.quad	.L.str.1547
	.quad	.L.str.1548
	.quad	.L.str.2
	.quad	.L.str.1549
	.quad	.L.str.4
	.quad	.L.str.4
	.quad	.L.str.33
	.quad	.L.str.1550
	.quad	.L.str.1551
	.quad	.L.str.1552
	.quad	.L.str.1553
	.quad	.L.str.1554
	.quad	.L.str.1555
	.quad	.L.str.1556
	.quad	.L.str.1557
	.quad	.L.str.1558
	.quad	.L.str.1559
	.quad	.L.str.1560
	.quad	.L.str.1561
	.quad	.L.str.1562
	.quad	.L.str.1563
	.quad	.L.str.1564
	.quad	.L.str.1565
	.quad	.L.str.1566
	.quad	.L.str.1567
	.quad	.L.str.1568
	.quad	.L.str.33
	.quad	.L.str.1058
	.quad	.L.str.1569
	.quad	.L.str.35
	.quad	.L.str.1570
	.quad	.L.str.1571
	.quad	.L.str.24
	.quad	.L.str.13
	.quad	.L.str.1572
	.quad	.L.str.1450
	.quad	.L.str.179
	.quad	.L.str.13
	.quad	.L.str.1573
	.quad	.L.str.35
	.quad	.L.str.35
	.quad	.L.str.1574
	.quad	.L.str.1575
	.quad	.L.str.1576
	.quad	.L.str.1577
	.quad	.L.str.1578
	.quad	.L.str.24
	.quad	.L.str.1211
	.quad	.L.str.24
	.quad	.L.str.294
	.quad	.L.str.24
	.quad	.L.str.1579
	.quad	.L.str.294
	.quad	.L.str.24
	.quad	.L.str.1580
	.quad	.L.str.1581
	.quad	.L.str.1577
	.quad	.L.str.1578
	.quad	.L.str.24
	.quad	.L.str.1230
	.quad	.L.str.294
	.quad	.L.str.24
	.quad	.L.str.1582
	.quad	.L.str.1583
	.quad	.L.str.1584
	.quad	.L.str.1585
	.quad	.L.str.1586
	.quad	.L.str.24
	.quad	.L.str.1587
	.quad	.L.str.294
	.quad	.L.str.24
	.quad	.L.str.1588
	.quad	.L.str.1583
	.quad	.L.str.1589
	.quad	.L.str.1590
	.quad	.L.str.24
	.quad	.L.str.1584
	.quad	.L.str.411
	.quad	.L.str.1591
	.quad	.L.str.333
	.quad	.L.str.1591
	.quad	.L.str.333
	.quad	.L.str.1591
	.quad	.L.str.333
	.quad	.L.str.1592
	.quad	.L.str.1586
	.quad	.L.str.24
	.quad	.L.str.1593
	.quad	.L.str.294
	.quad	.L.str.24
	.quad	.L.str.1594
	.quad	.L.str.1583
	.quad	.L.str.1595
	.quad	.L.str.1596
	.quad	.L.str.1597
	.quad	.L.str.1598
	.quad	.L.str.1599
	.quad	.L.str.1600
	.quad	.L.str.1601
	.quad	.L.str.1602
	.quad	.L.str.1603
	.quad	.L.str.1604
	.quad	.L.str.1605
	.quad	.L.str.1606
	.quad	.L.str.177
	.quad	.L.str.1607
	.quad	.L.str.1608
	.quad	.L.str.385
	.quad	.L.str.24
	.quad	.L.str.1609
	.quad	.L.str.55
	.quad	.L.str.294
	.quad	.L.str.70
	.quad	.L.str.24
	.quad	.L.str.1610
	.quad	.L.str.1611
	.quad	.L.str.1612
	.quad	.L.str.295
	.quad	.L.str.13
	.quad	.L.str.1613
	.quad	.L.str.1614
	.quad	.L.str.1615
	.quad	.L.str.1616
	.quad	.L.str.1617
	.quad	.L.str.1618
	.quad	.L.str.332
	.quad	.L.str.1619
	.quad	.L.str.1620
	.quad	.L.str.1621
	.quad	.L.str.1622
	.quad	.L.str.972
	.quad	.L.str.179
	.quad	.L.str.1623
	.quad	.L.str.2
	.quad	.L.str.60
	.quad	.L.str.4
	.quad	.L.str.2
	.quad	.L.str.70
	.quad	.L.str.4
	.quad	.L.str.2
	.quad	.L.str.60
	.quad	.L.str.4
	.quad	.L.str.13
	.quad	.L.str.1624
	.quad	.L.str.1450
	.quad	.L.str.179
	.quad	.L.str.13
	.quad	.L.str.1625
	.quad	.L.str.35
	.quad	.L.str.1386
	.quad	.L.str.1626
	.quad	.L.str.24
	.quad	.L.str.1627
	.quad	.L.str.1628
	.quad	.L.str.1629
	.quad	.L.str.1630
	.quad	.L.str.214
	.quad	.L.str.616
	.quad	.L.str.1631
	.quad	.L.str.1250
	.quad	.L.str.1632
	.quad	.L.str.1633
	.quad	.L.str.24
	.quad	.L.str.82
	.quad	.L.str.70
	.quad	.L.str.35
	.quad	.L.str.1634
	.quad	.L.str.2
	.quad	.L.str.70
	.quad	.L.str.4
	.quad	.L.str.2
	.quad	.L.str.1635
	.quad	.L.str.4
	.quad	.L.str.2
	.quad	.L.str.1635
	.quad	.L.str.4
	.quad	.L.str.2
	.quad	.L.str.1635
	.quad	.L.str.4
	.quad	.L.str.1386
	.quad	.L.str.1636
	.quad	.L.str.24
	.quad	.L.str.13
	.quad	.L.str.1637
	.quad	.L.str.35
	.quad	.L.str.177
	.quad	.L.str.1638
	.quad	.L.str.24
	.quad	.L.str.1579
	.quad	.L.str.1639
	.quad	.L.str.1640
	.quad	.L.str.241
	.quad	.L.str.1641
	.quad	.L.str.1642
	.quad	.L.str.1211
	.quad	.L.str.2
	.quad	.L.str.60
	.quad	.L.str.4
	.quad	.L.str.24
	.quad	.L.str.1580
	.quad	.L.str.1643
	.quad	.L.str.1644
	.quad	.L.str.1645
	.quad	.L.str.70
	.quad	.L.str.24
	.quad	.L.str.1574
	.quad	.L.str.1646
	.quad	.L.str.1647
	.quad	.L.str.1648
	.quad	.L.str.1649
	.quad	.L.str.1650
	.quad	.L.str.24
	.quad	.L.str.1386
	.quad	.L.str.1651
	.quad	.L.str.1238
	.quad	.L.str.24
	.quad	.L.str.177
	.quad	.L.str.1652
	.quad	.L.str.24
	.quad	.L.str.13
	.quad	.L.str.1653
	.quad	.L.str.1654
	.quad	.L.str.35
	.quad	.L.str.177
	.quad	.L.str.1655
	.quad	.L.str.24
	.quad	.L.str.1656
	.quad	.L.str.1657
	.quad	.L.str.103
	.quad	.L.str.177
	.quad	.L.str.1658
	.quad	.L.str.24
	.quad	.L.str.2
	.quad	.L.str.616
	.quad	.L.str.885
	.quad	.L.str.1659
	.quad	.L.str.1660
	.quad	.L.str.241
	.quad	.L.str.1641
	.quad	.L.str.1661
	.quad	.L.str.1662
	.quad	.L.str.24
	.quad	.L.str.4
	.quad	.L.str.24
	.quad	.L.str.177
	.quad	.L.str.1663
	.quad	.L.str.24
	.quad	.L.str.13
	.quad	.L.str.1664
	.quad	.L.str.35
	.quad	.L.str.1665
	.quad	.L.str.1666
	.quad	.L.str.1667
	.quad	.L.str.24
	.quad	.L.str.70
	.quad	.L.str.24
	.quad	.L.str.1668
	.quad	.L.str.1669
	.quad	.L.str.1670
	.quad	.L.str.24
	.quad	.L.str.24
	.quad	.L.str.13
	.quad	.L.str.1671
	.quad	.L.str.1672
	.quad	.L.str.1673
	.quad	.L.str.13
	.quad	.L.str.1674
	.quad	.L.str.35
	.quad	.L.str.616
	.quad	.L.str.1675
	.quad	.L.str.1676
	.quad	.L.str.103
	.quad	.L.str.2
	.quad	.L.str.616
	.quad	.L.str.885
	.quad	.L.str.1677
	.quad	.L.str.1678
	.quad	.L.str.1679
	.quad	.L.str.1680
	.quad	.L.str.1681
	.quad	.L.str.1682
	.quad	.L.str.1683
	.quad	.L.str.1684
	.quad	.L.str.1685
	.quad	.L.str.313
	.quad	.L.str.1686
	.quad	.L.str.1687
	.quad	.L.str.1504
	.quad	.L.str.270
	.quad	.L.str.4
	.quad	.L.str.13
	.quad	.L.str.1688
	.quad	.L.str.211
	.quad	.L.str.1689
	.quad	.L.str.24
	.quad	.L.str.1690
	.quad	.L.str.1691
	.quad	.L.str.2
	.quad	.L.str.1692
	.quad	.L.str.1693
	.quad	.L.str.2
	.quad	.L.str.1694
	.quad	.L.str.4
	.quad	.L.str.4
	.quad	.L.str.177
	.quad	.L.str.1695
	.quad	.L.str.24
	.quad	.L.str.13
	.quad	.L.str.1696
	.quad	.L.str.1697
	.quad	.L.str.1698
	.quad	.L.str.1699
	.quad	.L.str.1700
	.quad	.L.str.1701
	.quad	.L.str.1702
	.quad	.L.str.1703
	.quad	.L.str.1704
	.quad	.L.str.1705
	.quad	.L.str.149
	.quad	.L.str.1706
	.quad	.L.str.1707
	.quad	.L.str.1708
	.quad	.L.str.1709
	.quad	.L.str.1710
	.quad	.L.str.316
	.quad	.L.str.317
	.quad	.L.str.318
	.quad	.L.str.319
	.quad	.L.str.320
	.quad	.L.str.321
	.quad	.L.str.322
	.quad	.L.str.149
	.quad	.L.str.1711
	.quad	.L.str.1712
	.quad	.L.str.241
	.quad	.L.str.1583
	.quad	.L.str.24
	.quad	.L.str.1676
	.quad	.L.str.103
	.quad	.L.str.24
	.quad	.L.str.13
	.quad	.L.str.1713
	.quad	.L.str.1714
	.quad	.L.str.1715
	.quad	.L.str.1716
	.quad	.L.str.1717
	.quad	.L.str.1718
	.quad	.L.str.249
	.quad	.L.str.1719
	.quad	.L.str.1720
	.quad	.L.str.1721
	.quad	.L.str.149
	.quad	.L.str.1722
	.quad	.L.str.1723
	.quad	.L.str.103
	.quad	.L.str.24
	.quad	.L.str.13
	.quad	.L.str.1724
	.quad	.L.str.35
	.quad	.L.str.177
	.quad	.L.str.1725
	.quad	.L.str.1726
	.quad	.L.str.107
	.quad	.L.str.24
	.quad	.L.str.13
	.quad	.L.str.1727
	.quad	.L.str.35
	.quad	.L.str.1728
	.quad	.L.str.1729
	.quad	.L.str.24
	.quad	.L.str.1730
	.quad	.L.str.1731
	.quad	.L.str.241
	.quad	.L.str.517
	.quad	.L.str.24
	.quad	.L.str.1732
	.quad	.L.str.2
	.quad	.L.str.1733
	.quad	.L.str.4
	.quad	.L.str.1734
	.quad	.L.str.24
	.quad	.L.str.1735
	.quad	.L.str.1736
	.quad	.L.str.1737
	.quad	.L.str.13
	.quad	.L.str.1738
	.quad	.L.str.35
	.quad	.L.str.177
	.quad	.L.str.1739
	.quad	.L.str.24
	.quad	.L.str.1740
	.quad	.L.str.1741
	.quad	.L.str.24
	.quad	.L.str.105
	.quad	.L.str.1742
	.quad	.L.str.1743
	.quad	.L.str.1744
	.quad	.L.str.24
	.quad	.L.str.1745
	.quad	.L.str.329
	.quad	.L.str.1746
	.quad	.L.str.103
	.quad	.L.str.2
	.quad	.L.str.1747
	.quad	.L.str.4
	.quad	.L.str.329
	.quad	.L.str.24
	.quad	.L.str.329
	.quad	.L.str.1133
	.quad	.L.str.107
	.quad	.L.str.1748
	.quad	.L.str.1749
	.quad	.L.str.1750
	.quad	.L.str.177
	.quad	.L.str.1751
	.quad	.L.str.24
	.quad	.L.str.13
	.quad	.L.str.1752
	.quad	.L.str.35
	.quad	.L.str.300
	.quad	.L.str.177
	.quad	.L.str.1753
	.quad	.L.str.24
	.quad	.L.str.1754
	.quad	.L.str.1740
	.quad	.L.str.1748
	.quad	.L.str.1741
	.quad	.L.str.1728
	.quad	.L.str.1755
	.quad	.L.str.241
	.quad	.L.str.1661
	.quad	.L.str.1641
	.quad	.L.str.1756
	.quad	.L.str.2
	.quad	.L.str.70
	.quad	.L.str.4
	.quad	.L.str.24
	.quad	.L.str.24
	.quad	.L.str.177
	.quad	.L.str.1757
	.quad	.L.str.24
	.quad	.L.str.313
	.quad	.L.str.13
	.quad	.L.str.1758
	.quad	.L.str.35
	.quad	.L.str.177
	.quad	.L.str.1759
	.quad	.L.str.24
	.quad	.L.str.1760
	.quad	.L.str.1761
	.quad	.L.str.1762
	.quad	.L.str.1763
	.quad	.L.str.1686
	.quad	.L.str.177
	.quad	.L.str.1764
	.quad	.L.str.24
	.quad	.L.str.13
	.quad	.L.str.1765
	.quad	.L.str.35
	.quad	.L.str.1760
	.quad	.L.str.1766
	.quad	.L.str.1767
	.quad	.L.str.1768
	.quad	.L.str.24
	.quad	.L.str.1769
	.quad	.L.str.1770
	.quad	.L.str.1771
	.quad	.L.str.13
	.quad	.L.str.1772
	.quad	.L.str.35
	.quad	.L.str.1686
	.quad	.L.str.1766
	.quad	.L.str.1422
	.quad	.L.str.1773
	.quad	.L.str.1774
	.quad	.L.str.1775
	.quad	.L.str.13
	.quad	.L.str.1776
	.quad	.L.str.1777
	.quad	.L.str.1778
	.quad	.L.str.1779
	.quad	.L.str.13
	.quad	.L.str.1780
	.quad	.L.str.1781
	.quad	.L.str.1782
	.quad	.L.str.1783
	.quad	.L.str.1784
	.quad	.L.str.820
	.quad	.L.str.1785
	.quad	.L.str.236
	.quad	.L.str.1786
	.quad	.L.str.1787
	.quad	.L.str.1788
	.quad	.L.str.35
	.quad	.L.str.329
	.quad	.L.str.70
	.quad	.L.str.1789
	.quad	.L.str.1790
	.quad	.L.str.1221
	.quad	.L.str.33
	.quad	.L.str.1791
	.quad	.L.str.1792
	.quad	.L.str.24
	.quad	.L.str.1793
	.quad	.L.str.1794
	.quad	.L.str.1795
	.quad	.L.str.1796
	.quad	.L.str.2
	.quad	.L.str.1797
	.quad	.L.str.4
	.quad	.L.str.2
	.quad	.L.str.1798
	.quad	.L.str.1799
	.quad	.L.str.1800
	.quad	.L.str.1801
	.quad	.L.str.2
	.quad	.L.str.35
	.quad	.L.str.329
	.quad	.L.str.1802
	.quad	.L.str.1803
	.quad	.L.str.1804
	.quad	.L.str.1805
	.quad	.L.str.1806
	.quad	.L.str.1807
	.quad	.L.str.1808
	.quad	.L.str.1809
	.quad	.L.str.24
	.quad	.L.str.33
	.quad	.L.str.1810
	.quad	.L.str.1811
	.quad	.L.str.1812
	.quad	.L.str.1792
	.quad	.L.str.24
	.quad	.L.str.1813
	.quad	.L.str.4
	.quad	.L.str.4
	.quad	.L.str.13
	.quad	.L.str.1814
	.quad	.L.str.1815
	.quad	.L.str.1816
	.quad	.L.str.24
	.quad	.L.str.13
	.quad	.L.str.1817
	.quad	.L.str.1818
	.quad	.L.str.1819
	.quad	.L.str.1820
	.quad	.L.str.24
	.quad	.L.str.1520
	.quad	.L.str.1821
	.quad	.L.str.24
	.quad	.L.str.1822
	.quad	.L.str.1816
	.quad	.L.str.24
	.quad	.L.str.1522
	.quad	.L.str.1823
	.quad	.L.str.24
	.quad	.L.str.1824
	.quad	.L.str.1825
	.quad	.L.str.24
	.quad	.L.str.1826
	.quad	.L.str.1827
	.quad	.L.str.24
	.quad	.L.str.1828
	.quad	.L.str.1829
	.quad	.L.str.24
	.quad	.L.str.294
	.quad	.L.str.295
	.quad	.L.str.70
	.quad	.L.str.13
	.quad	.L.str.1830
	.quad	.L.str.1831
	.quad	.L.str.1101
	.quad	.L.str.1832
	.quad	.L.str.2
	.quad	.L.str.1833
	.quad	.L.str.4
	.quad	.L.str.107
	.quad	.L.str.1834
	.quad	.L.str.13
	.quad	.L.str.792
	.quad	.L.str.1835
	.quad	.L.str.1836
	.quad	.L.str.24
	.quad	.L.str.13
	.quad	.L.str.1837
	.quad	.L.str.35
	.quad	.L.str.1838
	.quad	.L.str.1839
	.quad	.L.str.1840
	.quad	.L.str.1841
	.quad	.L.str.2
	.quad	.L.str.1842
	.quad	.L.str.4
	.quad	.L.str.1843
	.quad	.L.str.13
	.quad	.L.str.1844
	.quad	.L.str.1835
	.quad	.L.str.1836
	.quad	.L.str.24
	.quad	.L.str.13
	.quad	.L.str.1845
	.quad	.L.str.1846
	.quad	.L.str.1847
	.quad	.L.str.24
	.quad	.L.str.13
	.quad	.L.str.1848
	.quad	.L.str.35
	.quad	.L.str.1849
	.quad	.L.str.1850
	.quad	.L.str.1851
	.quad	.L.str.809
	.quad	.L.str.24
	.quad	.L.str.1852
	.quad	.L.str.332
	.quad	.L.str.1839
	.quad	.L.str.1241
	.quad	.L.str.1853
	.quad	.L.str.1854
	.quad	.L.str.1855
	.quad	.L.str.2
	.quad	.L.str.1856
	.quad	.L.str.809
	.quad	.L.str.4
	.quad	.L.str.70
	.quad	.L.str.82
	.quad	.L.str.2
	.quad	.L.str.1857
	.quad	.L.str.2
	.quad	.L.str.1854
	.quad	.L.str.1858
	.quad	.L.str.1859
	.quad	.L.str.1860
	.quad	.L.str.2
	.quad	.L.str.1856
	.quad	.L.str.4
	.quad	.L.str.4
	.quad	.L.str.4
	.quad	.L.str.4
	.quad	.L.str.284
	.quad	.L.str.103
	.quad	.L.str.2
	.quad	.L.str.1861
	.quad	.L.str.4
	.quad	.L.str.1862
	.quad	.L.str.13
	.quad	.L.str.1863
	.quad	.L.str.935
	.quad	.L.str.1864
	.quad	.L.str.24
	.quad	.L.str.70
	.quad	.L.str.13
	.quad	.L.str.1865
	.quad	.L.str.35
	.quad	.L.str.1866
	.quad	.L.str.1867
	.quad	.L.str.1868
	.quad	.L.str.1869
	.quad	.L.str.24
	.quad	.L.str.1870
	.quad	.L.str.1868
	.quad	.L.str.1871
	.quad	.L.str.307
	.quad	.L.str.909
	.quad	.L.str.1872
	.quad	.L.str.24
	.quad	.L.str.1873
	.quad	.L.str.1874
	.quad	.L.str.24
	.quad	.L.str.24
	.quad	.L.str.13
	.quad	.L.str.1875
	.quad	.L.str.35
	.quad	.L.str.885
	.quad	.L.str.1876
	.quad	.L.str.1877
	.quad	.L.str.1878
	.quad	.L.str.1879
	.quad	.L.str.24
	.quad	.L.str.1880
	.quad	.L.str.1881
	.quad	.L.str.24
	.quad	.L.str.1882
	.quad	.L.str.1883
	.quad	.L.str.24
	.quad	.L.str.1884
	.quad	.L.str.1885
	.quad	.L.str.24
	.quad	.L.str.1886
	.quad	.L.str.1887
	.quad	.L.str.24
	.quad	.L.str.1888
	.quad	.L.str.1889
	.quad	.L.str.24
	.quad	.L.str.1890
	.quad	.L.str.1891
	.quad	.L.str.24
	.quad	.L.str.1892
	.quad	.L.str.1891
	.quad	.L.str.24
	.quad	.L.str.1893
	.quad	.L.str.1894
	.quad	.L.str.24
	.quad	.L.str.888
	.quad	.L.str.1895
	.quad	.L.str.24
	.quad	.L.str.1896
	.quad	.L.str.1897
	.quad	.L.str.1898
	.quad	.L.str.24
	.quad	.L.str.1899
	.quad	.L.str.1900
	.quad	.L.str.1857
	.quad	.L.str.1901
	.quad	.L.str.24
	.quad	.L.str.1898
	.quad	.L.str.24
	.quad	.L.str.1902
	.quad	.L.str.1903
	.quad	.L.str.1904
	.quad	.L.str.24
	.quad	.L.str.1905
	.quad	.L.str.1906
	.quad	.L.str.1857
	.quad	.L.str.1907
	.quad	.L.str.24
	.quad	.L.str.1904
	.quad	.L.str.24
	.quad	.L.str.1908
	.quad	.L.str.1909
	.quad	.L.str.1910
	.quad	.L.str.24
	.quad	.L.str.1911
	.quad	.L.str.1912
	.quad	.L.str.1857
	.quad	.L.str.1913
	.quad	.L.str.1914
	.quad	.L.str.2
	.quad	.L.str.1910
	.quad	.L.str.4
	.quad	.L.str.24
	.quad	.L.str.1915
	.quad	.L.str.1857
	.quad	.L.str.1916
	.quad	.L.str.1917
	.quad	.L.str.2
	.quad	.L.str.1918
	.quad	.L.str.1919
	.quad	.L.str.1920
	.quad	.L.str.1921
	.quad	.L.str.1922
	.quad	.L.str.1923
	.quad	.L.str.230
	.quad	.L.str.278
	.quad	.L.str.70
	.quad	.L.str.1924
	.quad	.L.str.24
	.quad	.L.str.251
	.quad	.L.str.1925
	.quad	.L.str.1921
	.quad	.L.str.1926
	.quad	.L.str.1927
	.quad	.L.str.176
	.quad	.L.str.281
	.quad	.L.str.24
	.quad	.L.str.24
	.quad	.L.str.60
	.quad	.L.str.107
	.quad	.L.str.24
	.quad	.L.str.1926
	.quad	.L.str.177
	.quad	.L.str.1928
	.quad	.L.str.230
	.quad	.L.str.1929
	.quad	.L.str.1930
	.quad	.L.str.103
	.quad	.L.str.870
	.quad	.L.str.385
	.quad	.L.str.2
	.quad	.L.str.1931
	.quad	.L.str.4
	.quad	.L.str.107
	.quad	.L.str.1932
	.quad	.L.str.24
	.quad	.L.str.1933
	.quad	.L.str.1934
	.quad	.L.str.60
	.quad	.L.str.2
	.quad	.L.str.70
	.quad	.L.str.1927
	.quad	.L.str.1935
	.quad	.L.str.70
	.quad	.L.str.2
	.quad	.L.str.1917
	.quad	.L.str.4
	.quad	.L.str.4
	.quad	.L.str.1936
	.quad	.L.str.4
	.quad	.L.str.24
	.quad	.L.str.1937
	.quad	.L.str.1938
	.quad	.L.str.24
	.quad	.L.str.1939
	.quad	.L.str.1940
	.quad	.L.str.24
	.quad	.L.str.1941
	.quad	.L.str.1942
	.quad	.L.str.24
	.quad	.L.str.1943
	.quad	.L.str.1944
	.quad	.L.str.24
	.quad	.L.str.1945
	.quad	.L.str.1946
	.quad	.L.str.24
	.quad	.L.str.1947
	.quad	.L.str.1948
	.quad	.L.str.24
	.quad	.L.str.1949
	.quad	.L.str.1950
	.quad	.L.str.24
	.quad	.L.str.1951
	.quad	.L.str.1952
	.quad	.L.str.24
	.quad	.L.str.1953
	.quad	.L.str.1954
	.quad	.L.str.24
	.quad	.L.str.70
	.quad	.L.str.13
	.quad	.L.str.1955
	.quad	.L.str.1956
	.quad	.L.str.1957
	.quad	.L.str.24
	.quad	.L.str.13
	.quad	.L.str.1958
	.quad	.L.str.35
	.quad	.L.str.885
	.quad	.L.str.1959
	.quad	.L.str.1960
	.quad	.L.str.1961
	.quad	.L.str.1962
	.quad	.L.str.70
	.quad	.L.str.1963
	.quad	.L.str.1964
	.quad	.L.str.2
	.quad	.L.str.1965
	.quad	.L.str.1386
	.quad	.L.str.1966
	.quad	.L.str.24
	.quad	.L.str.70
	.quad	.L.str.1673
	.quad	.L.str.2
	.quad	.L.str.1967
	.quad	.L.str.70
	.quad	.L.str.1386
	.quad	.L.str.1968
	.quad	.L.str.24
	.quad	.L.str.1969
	.quad	.L.str.1970
	.quad	.L.str.1971
	.quad	.L.str.1972
	.quad	.L.str.1673
	.quad	.L.str.1973
	.quad	.L.str.2
	.quad	.L.str.1974
	.quad	.L.str.4
	.quad	.L.str.4
	.quad	.L.str.4
	.quad	.L.str.13
	.quad	.L.str.1975
	.quad	.L.str.1976
	.quad	.L.str.1977
	.quad	.L.str.1978
	.quad	.L.str.1979
	.quad	.L.str.1980
	.quad	.L.str.1981
	.quad	.L.str.1982
	.quad	.L.str.1983
	.quad	.L.str.1984
	.quad	.L.str.1985
	.quad	.L.str.1986
	.quad	.L.str.1987
	.quad	.L.str.1988
	.quad	.L.str.1989
	.quad	.L.str.13
	.quad	.L.str.1990
	.quad	.L.str.1991
	.quad	.L.str.1992
	.quad	.L.str.1993
	.quad	.L.str.1994
	.quad	.L.str.1995
	.quad	.L.str.1996
	.quad	.L.str.1997
	.quad	.L.str.1998
	.quad	.L.str.1999
	.quad	.L.str.2000
	.quad	.L.str.2001
	.quad	.L.str.2002
	.quad	.L.str.2003
	.quad	.L.str.2004
	.quad	.L.str.2005
	.quad	.L.str.2006
	.quad	.L.str.249
	.quad	.L.str.2007
	.quad	.L.str.2008
	.quad	.L.str.2009
	.quad	.L.str.2010
	.quad	.L.str.2011
	.quad	.L.str.2012
	.quad	.L.str.2013
	.quad	.L.str.2014
	.quad	.L.str.2015
	.quad	.L.str.2016
	.quad	.L.str.2017
	.quad	.L.str.2018
	.quad	.L.str.2019
	.quad	.L.str.2020
	.quad	.L.str.2021
	.quad	.L.str.1760
	.quad	.L.str.2022
	.quad	.L.str.2023
	.quad	.L.str.2024
	.quad	.L.str.2025
	.quad	.L.str.2026
	.quad	.L.str.1686
	.quad	.L.str.24
	.quad	.L.str.2027
	.quad	.L.str.13
	.quad	.L.str.2028
	.quad	.L.str.2029
	.quad	.L.str.2030
	.quad	.L.str.2031
	.quad	.L.str.2032
	.quad	.L.str.2033
	.quad	.L.str.2034
	.quad	.L.str.24
	.quad	.L.str.24
	.quad	.L.str.270
	.quad	.L.str.2035
	.quad	.L.str.313
	.quad	.L.str.1964
	.quad	.L.str.13
	.quad	.L.str.2036
	.quad	.L.str.2037
	.quad	.L.str.2038
	.quad	.L.str.2039
	.quad	.L.str.2040
	.quad	.L.str.2041
	.quad	.L.str.2042
	.quad	.L.str.2043
	.quad	.L.str.13
	.quad	.L.str.2044
	.quad	.L.str.2045
	.quad	.L.str.2046
	.quad	.L.str.13
	.quad	.L.str.2047
	.quad	.L.str.2048
	.quad	.L.str.2049
	.quad	.L.str.2050
	.quad	.L.str.2051
	.quad	.L.str.2052
	.quad	.L.str.2053
	.quad	.L.str.2054
	.quad	.L.str.2055
	.quad	.L.str.2056
	.quad	.L.str.2057
	.quad	.L.str.2058
	.quad	.L.str.2059
	.quad	.L.str.2060
	.quad	.L.str.2061
	.quad	.L.str.2062
	.quad	.L.str.2063
	.quad	.L.str.2064
	.quad	.L.str.2065
	.quad	.L.str.2066
	.quad	.L.str.2067
	.quad	.L.str.130
	.quad	.L.str.526
	.quad	.L.str.2068
	.quad	.L.str.2069
	.quad	.L.str.2070
	.quad	.L.str.2071
	.quad	.L.str.2072
	.quad	.L.str.2073
	.quad	.L.str.241
	.quad	.L.str.539
	.quad	.L.str.24
	.quad	.L.str.2072
	.quad	.L.str.238
	.quad	.L.str.112
	.quad	.L.str.107
	.quad	.L.str.2074
	.quad	.L.str.24
	.quad	.L.str.2075
	.quad	.L.str.2076
	.quad	.L.str.13
	.quad	.L.str.2077
	.quad	.L.str.2078
	.quad	.L.str.13
	.quad	.L.str.2079
	.quad	.L.str.2080
	.quad	.L.str.13
	.quad	0
	.size	opdfread_ps, 31440

	.type	.L.str.2081,@object     # @.str.2081
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2081:
	.asciz	"/currentglobal where\n"
	.size	.L.str.2081, 22

	.type	.L.str.2082,@object     # @.str.2082
.L.str.2082:
	.asciz	"{pop currentglobal{setglobal}true setglobal}\n"
	.size	.L.str.2082, 46

	.type	.L.str.2083,@object     # @.str.2083
.L.str.2083:
	.asciz	"{{}}\n"
	.size	.L.str.2083, 6

	.type	.L.str.2084,@object     # @.str.2084
.L.str.2084:
	.asciz	"/MacRomanEncoding .findencoding\n"
	.size	.L.str.2084, 33

	.type	.L.str.2085,@object     # @.str.2085
.L.str.2085:
	.asciz	"/MacGlyphEncoding\n"
	.size	.L.str.2085, 19

	.type	.L.str.2086,@object     # @.str.2086
.L.str.2086:
	.asciz	"/.notdef/.null/CR\n"
	.size	.L.str.2086, 19

	.type	.L.str.2087,@object     # @.str.2087
.L.str.2087:
	.asciz	"4 index 32 95 getinterval aload pop\n"
	.size	.L.str.2087, 37

	.type	.L.str.2088,@object     # @.str.2088
.L.str.2088:
	.asciz	"99 index 128 45 getinterval aload pop\n"
	.size	.L.str.2088, 39

	.type	.L.str.2089,@object     # @.str.2089
.L.str.2089:
	.asciz	"/notequal/AE\n"
	.size	.L.str.2089, 14

	.type	.L.str.2090,@object     # @.str.2090
.L.str.2090:
	.asciz	"/Oslash/infinity/plusminus/lessequal/greaterequal\n"
	.size	.L.str.2090, 51

	.type	.L.str.2091,@object     # @.str.2091
.L.str.2091:
	.asciz	"/yen/mu1/partialdiff/summation/product\n"
	.size	.L.str.2091, 40

	.type	.L.str.2092,@object     # @.str.2092
.L.str.2092:
	.asciz	"/pi/integral/ordfeminine/ordmasculine/Ohm\n"
	.size	.L.str.2092, 43

	.type	.L.str.2093,@object     # @.str.2093
.L.str.2093:
	.asciz	"/ae/oslash/questiondown/exclamdown/logicalnot\n"
	.size	.L.str.2093, 47

	.type	.L.str.2094,@object     # @.str.2094
.L.str.2094:
	.asciz	"/radical/florin/approxequal/increment/guillemotleft\n"
	.size	.L.str.2094, 53

	.type	.L.str.2095,@object     # @.str.2095
.L.str.2095:
	.asciz	"/guillemotright/ellipsis/nbspace\n"
	.size	.L.str.2095, 34

	.type	.L.str.2096,@object     # @.str.2096
.L.str.2096:
	.asciz	"174 index 203 12 getinterval aload pop\n"
	.size	.L.str.2096, 40

	.type	.L.str.2097,@object     # @.str.2097
.L.str.2097:
	.asciz	"/lozenge\n"
	.size	.L.str.2097, 10

	.type	.L.str.2098,@object     # @.str.2098
.L.str.2098:
	.asciz	"187 index 216 24 getinterval aload pop\n"
	.size	.L.str.2098, 40

	.type	.L.str.2099,@object     # @.str.2099
.L.str.2099:
	.asciz	"/applelogo\n"
	.size	.L.str.2099, 12

	.type	.L.str.2100,@object     # @.str.2100
.L.str.2100:
	.asciz	"212 index 241 7 getinterval aload pop\n"
	.size	.L.str.2100, 39

	.type	.L.str.2101,@object     # @.str.2101
.L.str.2101:
	.asciz	"/overscore\n"
	.size	.L.str.2101, 12

	.type	.L.str.2102,@object     # @.str.2102
.L.str.2102:
	.asciz	"220 index 249 7 getinterval aload pop\n"
	.size	.L.str.2102, 39

	.type	.L.str.2103,@object     # @.str.2103
.L.str.2103:
	.asciz	"/Lslash/lslash/Scaron/scaron\n"
	.size	.L.str.2103, 30

	.type	.L.str.2104,@object     # @.str.2104
.L.str.2104:
	.asciz	"/Zcaron/zcaron/brokenbar/Eth/eth\n"
	.size	.L.str.2104, 34

	.type	.L.str.2105,@object     # @.str.2105
.L.str.2105:
	.asciz	"/Yacute/yacute/Thorn/thorn/minus\n"
	.size	.L.str.2105, 34

	.type	.L.str.2106,@object     # @.str.2106
.L.str.2106:
	.asciz	"/multiply/onesuperior/twosuperior/threesuperior/onehalf\n"
	.size	.L.str.2106, 57

	.type	.L.str.2107,@object     # @.str.2107
.L.str.2107:
	.asciz	"/onequarter/threequarters/franc/Gbreve/gbreve\n"
	.size	.L.str.2107, 47

	.type	.L.str.2108,@object     # @.str.2108
.L.str.2108:
	.asciz	"/Idotaccent/Scedilla/scedilla/Cacute/cacute\n"
	.size	.L.str.2108, 45

	.type	.L.str.2109,@object     # @.str.2109
.L.str.2109:
	.asciz	"/Ccaron/ccaron/dmacron\n"
	.size	.L.str.2109, 24

	.type	.L.str.2110,@object     # @.str.2110
.L.str.2110:
	.asciz	"260 -1 roll pop\n"
	.size	.L.str.2110, 17

	.type	.L.str.2111,@object     # @.str.2111
.L.str.2111:
	.asciz	"258 packedarray\n"
	.size	.L.str.2111, 17

	.type	.L.str.2112,@object     # @.str.2112
.L.str.2112:
	.asciz	"7 1 index .registerencoding\n"
	.size	.L.str.2112, 29

	.type	.L.str.2113,@object     # @.str.2113
.L.str.2113:
	.asciz	".defineencoding\n"
	.size	.L.str.2113, 17

	.type	gs_mgl_e_ps,@object     # @gs_mgl_e_ps
	.data
	.globl	gs_mgl_e_ps
	.align	16
gs_mgl_e_ps:
	.quad	.L.str.2081
	.quad	.L.str.2082
	.quad	.L.str.2083
	.quad	.L.str.91
	.quad	.L.str.2084
	.quad	.L.str.2085
	.quad	.L.str.2086
	.quad	.L.str.2087
	.quad	.L.str.2088
	.quad	.L.str.2089
	.quad	.L.str.2090
	.quad	.L.str.2091
	.quad	.L.str.2092
	.quad	.L.str.2093
	.quad	.L.str.2094
	.quad	.L.str.2095
	.quad	.L.str.2096
	.quad	.L.str.2097
	.quad	.L.str.2098
	.quad	.L.str.2099
	.quad	.L.str.2100
	.quad	.L.str.2101
	.quad	.L.str.2102
	.quad	.L.str.2103
	.quad	.L.str.2104
	.quad	.L.str.2105
	.quad	.L.str.2106
	.quad	.L.str.2107
	.quad	.L.str.2108
	.quad	.L.str.2109
	.quad	.L.str.2110
	.quad	.L.str.2111
	.quad	.L.str.2112
	.quad	.L.str.2113
	.quad	.L.str.179
	.quad	0
	.size	gs_mgl_e_ps, 288

	.type	.L.str.2114,@object     # @.str.2114
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2114:
	.asciz	"/MacRomanEncoding\n"
	.size	.L.str.2114, 19

	.type	.L.str.2115,@object     # @.str.2115
.L.str.2115:
	.asciz	"StandardEncoding 0 39 getinterval aload pop\n"
	.size	.L.str.2115, 45

	.type	.L.str.2116,@object     # @.str.2116
.L.str.2116:
	.asciz	"/quotesingle\n"
	.size	.L.str.2116, 14

	.type	.L.str.2117,@object     # @.str.2117
.L.str.2117:
	.asciz	"StandardEncoding 40 56 getinterval aload pop\n"
	.size	.L.str.2117, 46

	.type	.L.str.2118,@object     # @.str.2118
.L.str.2118:
	.asciz	"/grave\n"
	.size	.L.str.2118, 8

	.type	.L.str.2119,@object     # @.str.2119
.L.str.2119:
	.asciz	"StandardEncoding 97 31 getinterval aload pop\n"
	.size	.L.str.2119, 46

	.type	.L.str.2120,@object     # @.str.2120
.L.str.2120:
	.asciz	"/Adieresis/Aring/Ccedilla/Eacute/Ntilde/Odieresis/Udieresis/aacute\n"
	.size	.L.str.2120, 68

	.type	.L.str.2121,@object     # @.str.2121
.L.str.2121:
	.asciz	"/agrave/acircumflex/adieresis/atilde/aring/ccedilla/eacute/egrave\n"
	.size	.L.str.2121, 67

	.type	.L.str.2122,@object     # @.str.2122
.L.str.2122:
	.asciz	"/ecircumflex/edieresis/iacute/igrave\n"
	.size	.L.str.2122, 38

	.type	.L.str.2123,@object     # @.str.2123
.L.str.2123:
	.asciz	"/icircumflex/idieresis/ntilde/oacute\n"
	.size	.L.str.2123, 38

	.type	.L.str.2124,@object     # @.str.2124
.L.str.2124:
	.asciz	"/ograve/ocircumflex/odieresis/otilde\n"
	.size	.L.str.2124, 38

	.type	.L.str.2125,@object     # @.str.2125
.L.str.2125:
	.asciz	"/uacute/ugrave/ucircumflex/udieresis\n"
	.size	.L.str.2125, 38

	.type	.L.str.2126,@object     # @.str.2126
.L.str.2126:
	.asciz	"/dagger/degree/cent/sterling/section/bullet/paragraph/germandbls\n"
	.size	.L.str.2126, 66

	.type	.L.str.2127,@object     # @.str.2127
.L.str.2127:
	.asciz	"/registered/copyright/trademark/acute/dieresis/.notdef/AE/Oslash\n"
	.size	.L.str.2127, 66

	.type	.L.str.2128,@object     # @.str.2128
.L.str.2128:
	.asciz	"/.notdef/plusminus/.notdef/.notdef/yen/mu/.notdef/.notdef\n"
	.size	.L.str.2128, 59

	.type	.L.str.2129,@object     # @.str.2129
.L.str.2129:
	.asciz	"/.notdef/.notdef/.notdef/ordfeminine/ordmasculine/.notdef/ae/oslash\n"
	.size	.L.str.2129, 69

	.type	.L.str.2130,@object     # @.str.2130
.L.str.2130:
	.asciz	"/questiondown/exclamdown/logicalnot/.notdef\n"
	.size	.L.str.2130, 45

	.type	.L.str.2131,@object     # @.str.2131
.L.str.2131:
	.asciz	"/florin/.notdef/.notdef/guillemotleft\n"
	.size	.L.str.2131, 39

	.type	.L.str.2132,@object     # @.str.2132
.L.str.2132:
	.asciz	"/guillemotright/ellipsis/space/Agrave/Atilde/Otilde/OE/oe\n"
	.size	.L.str.2132, 59

	.type	.L.str.2133,@object     # @.str.2133
.L.str.2133:
	.asciz	"/endash/emdash/quotedblleft/quotedblright\n"
	.size	.L.str.2133, 43

	.type	.L.str.2134,@object     # @.str.2134
.L.str.2134:
	.asciz	"/quoteleft/quoteright/divide/.notdef\n"
	.size	.L.str.2134, 38

	.type	.L.str.2135,@object     # @.str.2135
.L.str.2135:
	.asciz	"/ydieresis/Ydieresis/fraction/currency\n"
	.size	.L.str.2135, 40

	.type	.L.str.2136,@object     # @.str.2136
.L.str.2136:
	.asciz	"/guilsinglleft/guilsinglright/fi/fl\n"
	.size	.L.str.2136, 37

	.type	.L.str.2137,@object     # @.str.2137
.L.str.2137:
	.asciz	"/daggerdbl/periodcentered/quotesinglbase/quotedblbase\n"
	.size	.L.str.2137, 55

	.type	.L.str.2138,@object     # @.str.2138
.L.str.2138:
	.asciz	"/perthousand/Acircumflex/Ecircumflex/Aacute\n"
	.size	.L.str.2138, 45

	.type	.L.str.2139,@object     # @.str.2139
.L.str.2139:
	.asciz	"/Edieresis/Egrave/Iacute/Icircumflex\n"
	.size	.L.str.2139, 38

	.type	.L.str.2140,@object     # @.str.2140
.L.str.2140:
	.asciz	"/Idieresis/Igrave/Oacute/Ocircumflex\n"
	.size	.L.str.2140, 38

	.type	.L.str.2141,@object     # @.str.2141
.L.str.2141:
	.asciz	"/.notdef/Ograve/Uacute/Ucircumflex\n"
	.size	.L.str.2141, 36

	.type	.L.str.2142,@object     # @.str.2142
.L.str.2142:
	.asciz	"/Ugrave/dotlessi/circumflex/tilde\n"
	.size	.L.str.2142, 35

	.type	.L.str.2143,@object     # @.str.2143
.L.str.2143:
	.asciz	"/macron/breve/dotaccent/ring/cedilla/hungarumlaut/ogonek/caron\n"
	.size	.L.str.2143, 64

	.type	.L.str.2144,@object     # @.str.2144
.L.str.2144:
	.asciz	"256 packedarray\n"
	.size	.L.str.2144, 17

	.type	.L.str.2145,@object     # @.str.2145
.L.str.2145:
	.asciz	"5 1 index .registerencoding\n"
	.size	.L.str.2145, 29

	.type	gs_mro_e_ps,@object     # @gs_mro_e_ps
	.data
	.globl	gs_mro_e_ps
	.align	16
gs_mro_e_ps:
	.quad	.L.str.2081
	.quad	.L.str.2082
	.quad	.L.str.2083
	.quad	.L.str.91
	.quad	.L.str.2114
	.quad	.L.str.2115
	.quad	.L.str.2116
	.quad	.L.str.2117
	.quad	.L.str.2118
	.quad	.L.str.2119
	.quad	.L.str.2120
	.quad	.L.str.2121
	.quad	.L.str.2122
	.quad	.L.str.2123
	.quad	.L.str.2124
	.quad	.L.str.2125
	.quad	.L.str.2126
	.quad	.L.str.2127
	.quad	.L.str.2128
	.quad	.L.str.2129
	.quad	.L.str.2130
	.quad	.L.str.2131
	.quad	.L.str.2132
	.quad	.L.str.2133
	.quad	.L.str.2134
	.quad	.L.str.2135
	.quad	.L.str.2136
	.quad	.L.str.2137
	.quad	.L.str.2138
	.quad	.L.str.2139
	.quad	.L.str.2140
	.quad	.L.str.2141
	.quad	.L.str.2142
	.quad	.L.str.2143
	.quad	.L.str.2144
	.quad	.L.str.2145
	.quad	.L.str.2113
	.quad	.L.str.179
	.quad	0
	.size	gs_mro_e_ps, 312

	.type	.L.str.2146,@object     # @.str.2146
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2146:
	.asciz	"pdf_resource_t"
	.size	.L.str.2146, 15

	.type	pdf_resource_reloc_ptrs,@object # @pdf_resource_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
pdf_resource_reloc_ptrs:
	.short	3                       # 0x3
	.short	0                       # 0x0
	.zero	4
	.quad	0
	.quad	pdf_resource_enum_ptrs
	.size	pdf_resource_reloc_ptrs, 24

	.type	st_pdf_resource,@object # @st_pdf_resource
	.globl	st_pdf_resource
	.align	8
st_pdf_resource:
	.long	72                      # 0x48
	.zero	4
	.quad	.L.str.2146
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	pdf_resource_reloc_ptrs
	.size	st_pdf_resource, 64

	.type	.L.str.2147,@object     # @.str.2147
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2147:
	.asciz	"%!PS-Adobe-3.0 EPSF-3.0\n"
	.size	.L.str.2147, 25

	.type	.L.str.2148,@object     # @.str.2148
.L.str.2148:
	.asciz	"%!PS-Adobe-3.0\n"
	.size	.L.str.2148, 16

	.type	.L.str.2149,@object     # @.str.2149
.L.str.2149:
	.asciz	"%%%%BoundingBox: 0 0 %d %d\n"
	.size	.L.str.2149, 28

	.type	.L.str.2150,@object     # @.str.2150
.L.str.2150:
	.asciz	"%%%%BoundingBox: %d %d %d %d\n"
	.size	.L.str.2150, 30

	.type	.L.str.2151,@object     # @.str.2151
.L.str.2151:
	.asciz	"%%%%HiResBoundingBox: 0 0 %.2f %.2f\n"
	.size	.L.str.2151, 37

	.type	.L.str.2152,@object     # @.str.2152
.L.str.2152:
	.asciz	"%%%%HiResBoundingBox: %.2f %.2f %.2f %.2f\n"
	.size	.L.str.2152, 43

	.type	.L.str.2153,@object     # @.str.2153
.L.str.2153:
	.asciz	"/CreationDate"
	.size	.L.str.2153, 14

	.type	.L.str.2154,@object     # @.str.2154
.L.str.2154:
	.asciz	"%%%%Creator: %s %d (%s)\n"
	.size	.L.str.2154, 25

	.type	.L.str.2155,@object     # @.str.2155
.L.str.2155:
	.asciz	"%%LanguageLevel: 2\n"
	.size	.L.str.2155, 20

	.type	.L.str.2156,@object     # @.str.2156
.L.str.2156:
	.asciz	"%%%%CreationDate: %s\n"
	.size	.L.str.2156, 22

	.type	.L.str.2157,@object     # @.str.2157
.L.str.2157:
	.asciz	"%%%%Pages: %d\n"
	.size	.L.str.2157, 15

	.type	.L.str.2158,@object     # @.str.2158
.L.str.2158:
	.asciz	"%%%%EndComments\n"
	.size	.L.str.2158, 17

	.type	.L.str.2159,@object     # @.str.2159
.L.str.2159:
	.asciz	"%%%%BeginProlog\n"
	.size	.L.str.2159, 17

	.type	.L.str.2160,@object     # @.str.2160
.L.str.2160:
	.asciz	"currentfile /ASCII85Decode filter /LZWDecode filter cvx exec\n"
	.size	.L.str.2160, 62

	.type	.L.str.2161,@object     # @.str.2161
.L.str.2161:
	.asciz	"/DSC_OPDFREAD true def\n"
	.size	.L.str.2161, 24

	.type	.L.str.2162,@object     # @.str.2162
.L.str.2162:
	.asciz	"/SetPageSize false def\n"
	.size	.L.str.2162, 24

	.type	.L.str.2163,@object     # @.str.2163
.L.str.2163:
	.asciz	"/EPS2Write true def\n"
	.size	.L.str.2163, 21

	.type	.L.str.2164,@object     # @.str.2164
.L.str.2164:
	.asciz	"/SetPageSize true def\n"
	.size	.L.str.2164, 23

	.type	.L.str.2165,@object     # @.str.2165
.L.str.2165:
	.asciz	"/EPS2Write false def\n"
	.size	.L.str.2165, 22

	.type	.L.str.2166,@object     # @.str.2166
.L.str.2166:
	.asciz	"\n"
	.size	.L.str.2166, 2

	.type	.L.str.2167,@object     # @.str.2167
.L.str.2167:
	.asciz	"%!\r"
	.size	.L.str.2167, 4

	.type	.L.str.2168,@object     # @.str.2168
.L.str.2168:
	.asciz	"/DSC_OPDFREAD false def\n"
	.size	.L.str.2168, 25

	.type	.L.str.2169,@object     # @.str.2169
.L.str.2169:
	.asciz	"/RotatePages true def\n"
	.size	.L.str.2169, 23

	.type	.L.str.2170,@object     # @.str.2170
.L.str.2170:
	.asciz	"/FitPages true def\n"
	.size	.L.str.2170, 20

	.type	.L.str.2171,@object     # @.str.2171
.L.str.2171:
	.asciz	"/CenterPages true def\n"
	.size	.L.str.2171, 23

	.type	.L.str.2172,@object     # @.str.2172
.L.str.2172:
	.asciz	"%%PDF-%d.%d\n"
	.size	.L.str.2172, 13

	.type	.L.str.2173,@object     # @.str.2173
.L.str.2173:
	.asciz	"%\307\354\217\242\n"
	.size	.L.str.2173, 7

	.type	.L.str.2174,@object     # @.str.2174
.L.str.2174:
	.asciz	"%%%%BeginResource: file (PDF Color Space obj_%ld)\n"
	.size	.L.str.2174, 51

	.type	.L.str.2175,@object     # @.str.2175
.L.str.2175:
	.asciz	"%%%%BeginResource: file (PDF Extended Graphics State obj_%ld)\n"
	.size	.L.str.2175, 63

	.type	.L.str.2176,@object     # @.str.2176
.L.str.2176:
	.asciz	"%%%%BeginResource: pattern (PDF Pattern obj_%ld)\n"
	.size	.L.str.2176, 50

	.type	.L.str.2177,@object     # @.str.2177
.L.str.2177:
	.asciz	"%%%%BeginResource: file (PDF Shading obj_%ld)\n"
	.size	.L.str.2177, 47

	.type	.L.str.2178,@object     # @.str.2178
.L.str.2178:
	.asciz	"%%%%BeginResource: font (PDF Font obj_%ld)\n"
	.size	.L.str.2178, 44

	.type	.L.str.2179,@object     # @.str.2179
.L.str.2179:
	.asciz	"%%%%BeginResource: file (PDF CharProc obj_%ld)\n"
	.size	.L.str.2179, 48

	.type	.L.str.2180,@object     # @.str.2180
.L.str.2180:
	.asciz	"%%%%BeginResource: file (PDF CMap obj_%ld)\n"
	.size	.L.str.2180, 44

	.type	.L.str.2181,@object     # @.str.2181
.L.str.2181:
	.asciz	"%%%%BeginResource: file (PDF FontDescriptor obj_%ld)\n"
	.size	.L.str.2181, 54

	.type	.L.str.2182,@object     # @.str.2182
.L.str.2182:
	.asciz	"%%%%BeginResource: file (PDF Group obj_%ld)\n"
	.size	.L.str.2182, 45

	.type	.L.str.2183,@object     # @.str.2183
.L.str.2183:
	.asciz	"%%%%BeginResource: file (PDF Function obj_%ld)\n"
	.size	.L.str.2183, 48

	.type	.L.str.2184,@object     # @.str.2184
.L.str.2184:
	.asciz	"%%%%BeginResource: encoding (PDF Encoding obj_%ld)\n"
	.size	.L.str.2184, 52

	.type	.L.str.2185,@object     # @.str.2185
.L.str.2185:
	.asciz	"%%%%BeginResource: file (PDF CIDSystemInfo obj_%ld)\n"
	.size	.L.str.2185, 53

	.type	.L.str.2186,@object     # @.str.2186
.L.str.2186:
	.asciz	"%%%%BeginResource: file (PDF Halftone obj_%ld)\n"
	.size	.L.str.2186, 48

	.type	.L.str.2187,@object     # @.str.2187
.L.str.2187:
	.asciz	"%%%%BeginResource: file (PDF Length obj_%ld)\n"
	.size	.L.str.2187, 46

	.type	.L.str.2188,@object     # @.str.2188
.L.str.2188:
	.asciz	"%%%%BeginResource: file (PDF SoftMask obj_%ld)\n"
	.size	.L.str.2188, 48

	.type	.L.str.2189,@object     # @.str.2189
.L.str.2189:
	.asciz	"%%%%BeginResource: file (PDF XObject obj_%ld)\n"
	.size	.L.str.2189, 47

	.type	.L.str.2190,@object     # @.str.2190
.L.str.2190:
	.asciz	"%%%%BeginResource: file (PDF stream obj_%ld)\n"
	.size	.L.str.2190, 46

	.type	.L.str.2191,@object     # @.str.2191
.L.str.2191:
	.asciz	"%%%%BeginResource: file (PDF Outline obj_%ld)\n"
	.size	.L.str.2191, 47

	.type	.L.str.2192,@object     # @.str.2192
.L.str.2192:
	.asciz	"%%%%BeginResource: file (PDF Article obj_%ld)\n"
	.size	.L.str.2192, 47

	.type	.L.str.2193,@object     # @.str.2193
.L.str.2193:
	.asciz	"%%%%BeginResource: file (PDF Dests obj_%ld)\n"
	.size	.L.str.2193, 45

	.type	.L.str.2194,@object     # @.str.2194
.L.str.2194:
	.asciz	"%%%%BeginResource: file (PDF EmbeddedFiles obj_%ld)\n"
	.size	.L.str.2194, 53

	.type	.L.str.2195,@object     # @.str.2195
.L.str.2195:
	.asciz	"%%%%BeginResource: file (PDF Page Labels obj_%ld)\n"
	.size	.L.str.2195, 51

	.type	.L.str.2196,@object     # @.str.2196
.L.str.2196:
	.asciz	"%%%%BeginResource: file (PDF Thread obj_%ld)\n"
	.size	.L.str.2196, 46

	.type	.L.str.2197,@object     # @.str.2197
.L.str.2197:
	.asciz	"%%%%BeginResource: file (PDF Catalog obj_%ld)\n"
	.size	.L.str.2197, 47

	.type	.L.str.2198,@object     # @.str.2198
.L.str.2198:
	.asciz	"%%%%BeginResource: file (PDF Encryption obj_%ld)\n"
	.size	.L.str.2198, 50

	.type	.L.str.2199,@object     # @.str.2199
.L.str.2199:
	.asciz	"%%%%BeginResource: file (PDF Pages Tree obj_%ld)\n"
	.size	.L.str.2199, 50

	.type	.L.str.2200,@object     # @.str.2200
.L.str.2200:
	.asciz	"%%%%BeginResource: file (PDF Metadata obj_%ld)\n"
	.size	.L.str.2200, 48

	.type	.L.str.2201,@object     # @.str.2201
.L.str.2201:
	.asciz	"%%%%BeginResource: file (PDF ICC Profile obj_%ld)\n"
	.size	.L.str.2201, 51

	.type	.L.str.2202,@object     # @.str.2202
.L.str.2202:
	.asciz	"%%%%BeginResource: file (PDF Annotation obj_%ld)\n"
	.size	.L.str.2202, 50

	.type	.L.str.2203,@object     # @.str.2203
.L.str.2203:
	.asciz	"%%%%BeginResource: file (PDF FontFile obj_%ld)\n"
	.size	.L.str.2203, 48

	.type	.L.str.2204,@object     # @.str.2204
.L.str.2204:
	.asciz	"%%%%BeginResource: file (PDF object obj_%ld)\n"
	.size	.L.str.2204, 46

	.type	.L.str.2205,@object     # @.str.2205
.L.str.2205:
	.asciz	"%ld 0 obj\n"
	.size	.L.str.2205, 11

	.type	.L.str.2206,@object     # @.str.2206
.L.str.2206:
	.asciz	"endobj\n"
	.size	.L.str.2206, 8

	.type	.L.str.2207,@object     # @.str.2207
.L.str.2207:
	.asciz	"%%EndResource\n"
	.size	.L.str.2207, 15

	.type	.L.str.2208,@object     # @.str.2208
.L.str.2208:
	.asciz	"psdf_encrypt"
	.size	.L.str.2208, 13

	.type	.L.str.2209,@object     # @.str.2209
.L.str.2209:
	.asciz	"encrypt buffer"
	.size	.L.str.2209, 15

	.type	.L.str.2210,@object     # @.str.2210
.L.str.2210:
	.asciz	"encrypt stream"
	.size	.L.str.2210, 15

	.type	context_procs,@object   # @context_procs
	.section	.rodata,"a",@progbits
	.align	16
context_procs:
	.quad	0
	.quad	none_to_stream
	.quad	none_to_stream
	.quad	none_to_stream
	.quad	stream_to_none
	.quad	0
	.quad	stream_to_text
	.quad	stream_to_text
	.quad	text_to_stream
	.quad	text_to_stream
	.quad	0
	.quad	0
	.quad	string_to_text
	.quad	string_to_text
	.quad	string_to_text
	.quad	0
	.size	context_procs, 128

	.type	.L.str.2211,@object     # @.str.2211
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2211:
	.asciz	"Q\n"
	.size	.L.str.2211, 3

	.type	.L.str.2212,@object     # @.str.2212
.L.str.2212:
	.asciz	"/ColorSpace"
	.size	.L.str.2212, 12

	.type	.L.str.2213,@object     # @.str.2213
.L.str.2213:
	.asciz	"/ExtGState"
	.size	.L.str.2213, 11

	.type	.L.str.2214,@object     # @.str.2214
.L.str.2214:
	.asciz	"/Pattern"
	.size	.L.str.2214, 9

	.type	.L.str.2215,@object     # @.str.2215
.L.str.2215:
	.asciz	"/Shading"
	.size	.L.str.2215, 9

	.type	.L.str.2216,@object     # @.str.2216
.L.str.2216:
	.asciz	"/XObject"
	.size	.L.str.2216, 9

	.type	.L.str.2217,@object     # @.str.2217
.L.str.2217:
	.asciz	"/Font"
	.size	.L.str.2217, 6

	.type	.L.str.2218,@object     # @.str.2218
.L.str.2218:
	.asciz	"/CMap"
	.size	.L.str.2218, 6

	.type	.L.str.2219,@object     # @.str.2219
.L.str.2219:
	.asciz	"/FontDescriptor"
	.size	.L.str.2219, 16

	.type	.L.str.2220,@object     # @.str.2220
.L.str.2220:
	.asciz	"/Group"
	.size	.L.str.2220, 7

	.type	.L.str.2221,@object     # @.str.2221
.L.str.2221:
	.asciz	"/Mask"
	.size	.L.str.2221, 6

	.type	pdf_resource_type_names,@object # @pdf_resource_type_names
	.section	.rodata,"a",@progbits
	.globl	pdf_resource_type_names
	.align	16
pdf_resource_type_names:
	.quad	.L.str.2212
	.quad	.L.str.2213
	.quad	.L.str.2214
	.quad	.L.str.2215
	.quad	.L.str.2216
	.quad	0
	.quad	.L.str.2217
	.quad	0
	.quad	.L.str.2217
	.quad	.L.str.2218
	.quad	.L.str.2219
	.quad	.L.str.2220
	.quad	.L.str.2221
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
	.size	pdf_resource_type_names, 256

	.type	pdf_resource_type_structs,@object # @pdf_resource_type_structs
	.globl	pdf_resource_type_structs
	.align	16
pdf_resource_type_structs:
	.quad	st_pdf_color_space
	.quad	st_pdf_resource
	.quad	st_pdf_pattern
	.quad	st_pdf_resource
	.quad	st_pdf_x_object
	.quad	st_pdf_resource
	.quad	st_pdf_font_resource
	.quad	st_pdf_char_proc
	.quad	st_pdf_font_resource
	.quad	st_pdf_resource
	.quad	st_pdf_font_descriptor
	.quad	st_pdf_resource
	.quad	st_pdf_resource
	.quad	st_pdf_resource
	.quad	st_pdf_resource
	.size	pdf_resource_type_structs, 120

	.type	.L.str.2222,@object     # @.str.2222
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2222:
	.asciz	"pdf_cancel_resource"
	.size	.L.str.2222, 20

	.type	.L.str.2223,@object     # @.str.2223
.L.str.2223:
	.asciz	"pdf_cancel_resources"
	.size	.L.str.2223, 21

	.type	.L.str.2224,@object     # @.str.2224
.L.str.2224:
	.asciz	"pdf_forget_resource"
	.size	.L.str.2224, 20

	.type	.L.str.2225,@object     # @.str.2225
.L.str.2225:
	.asciz	"pdf_drop_resources"
	.size	.L.str.2225, 19

	.type	.L.str.2226,@object     # @.str.2226
.L.str.2226:
	.asciz	"Resource type %d (%s) has %d instances.\n"
	.size	.L.str.2226, 41

	.type	.L.str.2227,@object     # @.str.2227
.L.str.2227:
	.zero	1
	.size	.L.str.2227, 1

	.type	.L.str.2228,@object     # @.str.2228
.L.str.2228:
	.asciz	"R%ld"
	.size	.L.str.2228, 5

	.type	.L.str.2229,@object     # @.str.2229
.L.str.2229:
	.asciz	"pdf_alloc_aside(resource)"
	.size	.L.str.2229, 26

	.type	.L.str.2230,@object     # @.str.2230
.L.str.2230:
	.asciz	"pdf_alloc_aside(object)"
	.size	.L.str.2230, 24

	.type	.L.str.2231,@object     # @.str.2231
.L.str.2231:
	.asciz	"<</Type%s"
	.size	.L.str.2231, 10

	.type	.L.str.2232,@object     # @.str.2232
.L.str.2232:
	.asciz	"/Name/R%ld"
	.size	.L.str.2232, 11

	.type	.L.str.2233,@object     # @.str.2233
.L.str.2233:
	.asciz	"pdf_free_resource_objects"
	.size	.L.str.2233, 26

	.type	.L.str.2234,@object     # @.str.2234
.L.str.2234:
	.asciz	"<<"
	.size	.L.str.2234, 3

	.type	.L.str.2235,@object     # @.str.2235
.L.str.2235:
	.asciz	"/%s\n"
	.size	.L.str.2235, 5

	.type	.L.str.2236,@object     # @.str.2236
.L.str.2236:
	.asciz	"%ld 0 R"
	.size	.L.str.2236, 8

	.type	.L.str.2237,@object     # @.str.2237
.L.str.2237:
	.asciz	">>\n"
	.size	.L.str.2237, 4

	.type	.L.str.2238,@object     # @.str.2238
.L.str.2238:
	.asciz	"pdf_page_id(resize pages)"
	.size	.L.str.2238, 26

	.type	.L.str.2239,@object     # @.str.2239
.L.str.2239:
	.asciz	"pdf_page_id"
	.size	.L.str.2239, 12

	.type	.L.str.2240,@object     # @.str.2240
.L.str.2240:
	.asciz	"pdf_write_saved_string"
	.size	.L.str.2240, 23

	.type	.L.str.2241,@object     # @.str.2241
.L.str.2241:
	.asciz	"(%s %1.1f)"
	.size	.L.str.2241, 11

	.type	.L.str.2242,@object     # @.str.2242
.L.str.2242:
	.asciz	"(%s %1.2f)"
	.size	.L.str.2242, 11

	.type	.L.str.2243,@object     # @.str.2243
.L.str.2243:
	.asciz	"%g %g %g %g %g %g "
	.size	.L.str.2243, 19

	.type	.L.str.2244,@object     # @.str.2244
.L.str.2244:
	.asciz	"pdf_put_image_filters(decode_parms)"
	.size	.L.str.2244, 36

	.type	.L.str.2245,@object     # @.str.2245
.L.str.2245:
	.asciz	"/Predictor"
	.size	.L.str.2245, 11

	.type	.L.str.2246,@object     # @.str.2246
.L.str.2246:
	.asciz	"/Columns"
	.size	.L.str.2246, 9

	.type	.L.str.2247,@object     # @.str.2247
.L.str.2247:
	.asciz	"/Colors"
	.size	.L.str.2247, 8

	.type	.L.str.2248,@object     # @.str.2248
.L.str.2248:
	.asciz	"/BitsPerComponent"
	.size	.L.str.2248, 18

	.type	.L.str.2249,@object     # @.str.2249
.L.str.2249:
	.asciz	"pdf_put_image_filters(Filters)"
	.size	.L.str.2249, 31

	.type	.L.str.2250,@object     # @.str.2250
.L.str.2250:
	.asciz	"pdf_put_image_filters(DecodeParms)"
	.size	.L.str.2250, 35

	.type	.L.str.2251,@object     # @.str.2251
.L.str.2251:
	.asciz	"null"
	.size	.L.str.2251, 5

	.type	pdf_append_data_stream_filters.fnames,@object # @pdf_append_data_stream_filters.fnames
	.section	.rodata,"a",@progbits
	.align	16
pdf_append_data_stream_filters.fnames:
	.quad	.L.str.2227
	.quad	.L.str.2252
	.quad	.L.str.2253
	.quad	.L.str.2254
	.size	pdf_append_data_stream_filters.fnames, 32

	.type	.L.str.2252,@object     # @.str.2252
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2252:
	.asciz	"/Filter/ASCII85Decode"
	.size	.L.str.2252, 22

	.type	.L.str.2253,@object     # @.str.2253
.L.str.2253:
	.asciz	"/Filter/FlateDecode"
	.size	.L.str.2253, 20

	.type	.L.str.2254,@object     # @.str.2254
.L.str.2254:
	.asciz	"/Filter[/ASCII85Decode/FlateDecode]"
	.size	.L.str.2254, 36

	.type	pdf_append_data_stream_filters.fnames1_2,@object # @pdf_append_data_stream_filters.fnames1_2
	.section	.rodata,"a",@progbits
	.align	16
pdf_append_data_stream_filters.fnames1_2:
	.quad	.L.str.2227
	.quad	.L.str.2252
	.quad	.L.str.2255
	.quad	.L.str.2256
	.size	pdf_append_data_stream_filters.fnames1_2, 32

	.type	.L.str.2255,@object     # @.str.2255
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2255:
	.asciz	"/Filter/LZWDecode"
	.size	.L.str.2255, 18

	.type	.L.str.2256,@object     # @.str.2256
.L.str.2256:
	.asciz	"/Filter[/ASCII85Decode/LZWDecode]"
	.size	.L.str.2256, 34

	.type	.L.str.2257,@object     # @.str.2257
.L.str.2257:
	.asciz	"/Length             >>stream\n"
	.size	.L.str.2257, 30

	.type	.L.str.2258,@object     # @.str.2258
.L.str.2258:
	.asciz	"/Length %ld 0 R>>stream\n"
	.size	.L.str.2258, 25

	.type	.L.str.2259,@object     # @.str.2259
.L.str.2259:
	.asciz	"pdf_function_scaled"
	.size	.L.str.2259, 20

	.type	.L.str.2260,@object     # @.str.2260
.L.str.2260:
	.asciz	"/FontBBox[%d %d %d %d]"
	.size	.L.str.2260, 23

	.type	.L.str.2261,@object     # @.str.2261
.L.str.2261:
	.asciz	"/FontBBox[%g %g %g %g]"
	.size	.L.str.2261, 23

	.type	pdf_resource_enum_ptrs,@object # @pdf_resource_enum_ptrs
	.section	.rodata,"a",@progbits
	.align	2
pdf_resource_enum_ptrs:
	.zero	4
	.short	0                       # 0x0
	.short	8                       # 0x8
	.short	0                       # 0x0
	.short	64                      # 0x40
	.size	pdf_resource_enum_ptrs, 12

	.type	.L.str.2262,@object     # @.str.2262
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2262:
	.asciz	"pdfwrite_pdf_open_document.encode"
	.size	.L.str.2262, 34

	.type	.L.str.2263,@object     # @.str.2263
.L.str.2263:
	.asciz	"/AdobeGlyphList mark\n"
	.size	.L.str.2263, 22

	.type	.L.str.2264,@object     # @.str.2264
.L.str.2264:
	.asciz	"/%s 16#%04x\n"
	.size	.L.str.2264, 13

	.type	.L.str.2265,@object     # @.str.2265
.L.str.2265:
	.asciz	"<</Length %ld 0 R"
	.size	.L.str.2265, 18

	.type	.L.str.2266,@object     # @.str.2266
.L.str.2266:
	.asciz	"/Filter /%s"
	.size	.L.str.2266, 12

	.type	.L.str.2267,@object     # @.str.2267
.L.str.2267:
	.asciz	"FlateDecode"
	.size	.L.str.2267, 12

	.type	.L.str.2268,@object     # @.str.2268
.L.str.2268:
	.asciz	"/Filter [/ASCII85Decode /%s]"
	.size	.L.str.2268, 29

	.type	.L.str.2269,@object     # @.str.2269
.L.str.2269:
	.asciz	">>\nstream\n"
	.size	.L.str.2269, 11

	.type	.L.str.2270,@object     # @.str.2270
.L.str.2270:
	.asciz	"PDF contents stream"
	.size	.L.str.2270, 20

	.type	.L.str.2271,@object     # @.str.2271
.L.str.2271:
	.asciz	"PDF contents buffer"
	.size	.L.str.2271, 20

	.type	.L.str.2272,@object     # @.str.2272
.L.str.2272:
	.asciz	"PDF contents state"
	.size	.L.str.2272, 19

	.type	.L.str.2273,@object     # @.str.2273
.L.str.2273:
	.asciz	"PDF compression stream"
	.size	.L.str.2273, 23

	.type	.L.str.2274,@object     # @.str.2274
.L.str.2274:
	.asciz	"PDF compression buffer"
	.size	.L.str.2274, 23

	.type	.L.str.2275,@object     # @.str.2275
.L.str.2275:
	.asciz	"PDF compression state"
	.size	.L.str.2275, 22

	.type	.L.str.2276,@object     # @.str.2276
.L.str.2276:
	.asciz	"q %g 0 0 %g 0 0 cm\n"
	.size	.L.str.2276, 20

	.type	none_to_stream.ri_names,@object # @none_to_stream.ri_names
	.section	.rodata,"a",@progbits
	.align	16
none_to_stream.ri_names:
	.quad	.L.str.2277
	.quad	.L.str.2278
	.quad	.L.str.2279
	.quad	.L.str.2280
	.quad	.L.str.2281
	.size	none_to_stream.ri_names, 40

	.type	.L.str.2277,@object     # @.str.2277
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2277:
	.asciz	"Default"
	.size	.L.str.2277, 8

	.type	.L.str.2278,@object     # @.str.2278
.L.str.2278:
	.asciz	"Perceptual"
	.size	.L.str.2278, 11

	.type	.L.str.2279,@object     # @.str.2279
.L.str.2279:
	.asciz	"Saturation"
	.size	.L.str.2279, 11

	.type	.L.str.2280,@object     # @.str.2280
.L.str.2280:
	.asciz	"RelativeColorimetric"
	.size	.L.str.2280, 21

	.type	.L.str.2281,@object     # @.str.2281
.L.str.2281:
	.asciz	"AbsoluteColorimetric"
	.size	.L.str.2281, 21

	.type	.L.str.2282,@object     # @.str.2282
.L.str.2282:
	.asciz	"/%s ri\n"
	.size	.L.str.2282, 8

	.type	.L.str.2283,@object     # @.str.2283
.L.str.2283:
	.asciz	"A85E contents buffer"
	.size	.L.str.2283, 21

	.type	.L.str.2284,@object     # @.str.2284
.L.str.2284:
	.asciz	"A85E contents stream"
	.size	.L.str.2284, 21

	.type	.L.str.2285,@object     # @.str.2285
.L.str.2285:
	.asciz	"zlib buffer"
	.size	.L.str.2285, 12

	.type	.L.str.2286,@object     # @.str.2286
.L.str.2286:
	.asciz	"zlib stream"
	.size	.L.str.2286, 12

	.type	.L.str.2287,@object     # @.str.2287
.L.str.2287:
	.asciz	"endstream\n"
	.size	.L.str.2287, 11

	.type	.L.str.2288,@object     # @.str.2288
.L.str.2288:
	.asciz	"%ld\n"
	.size	.L.str.2288, 5

	.type	.L.str.2289,@object     # @.str.2289
.L.str.2289:
	.asciz	"%g 0 0 %g 0 0 cm BT\n"
	.size	.L.str.2289, 21

	.type	.L.str.2290,@object     # @.str.2290
.L.str.2290:
	.asciz	"ET\n"
	.size	.L.str.2290, 4

	.type	.L.str.2291,@object     # @.str.2291
.L.str.2291:
	.asciz	"pdf_pattern_t"
	.size	.L.str.2291, 14

	.type	pdf_pattern_reloc_ptrs,@object # @pdf_pattern_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
pdf_pattern_reloc_ptrs:
	.short	1                       # 0x1
	.short	0                       # 0x0
	.zero	4
	.quad	st_pdf_resource
	.quad	pdf_pattern_enum_ptrs
	.size	pdf_pattern_reloc_ptrs, 24

	.type	st_pdf_pattern,@object  # @st_pdf_pattern
	.align	8
st_pdf_pattern:
	.long	80                      # 0x50
	.zero	4
	.quad	.L.str.2291
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	pdf_pattern_reloc_ptrs
	.size	st_pdf_pattern, 64

	.type	pdf_pattern_enum_ptrs,@object # @pdf_pattern_enum_ptrs
	.align	2
pdf_pattern_enum_ptrs:
	.short	0                       # 0x0
	.short	72                      # 0x48
	.size	pdf_pattern_enum_ptrs, 4

	.type	.L.str.2292,@object     # @.str.2292
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2292:
	.asciz	"pdf_x_object_t"
	.size	.L.str.2292, 15

	.type	pdf_x_object_reloc_ptrs,@object # @pdf_x_object_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
pdf_x_object_reloc_ptrs:
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	st_pdf_resource
	.quad	0
	.size	pdf_x_object_reloc_ptrs, 24

	.type	st_pdf_x_object,@object # @st_pdf_x_object
	.align	8
st_pdf_x_object:
	.long	88                      # 0x58
	.zero	4
	.quad	.L.str.2292
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	pdf_x_object_reloc_ptrs
	.size	st_pdf_x_object, 64

	.type	.L.str.2293,@object     # @.str.2293
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2293:
	.asciz	"#%02x"
	.size	.L.str.2293, 6

	.type	.L.str.2294,@object     # @.str.2294
.L.str.2294:
	.asciz	"BnZr"
	.size	.L.str.2294, 5

	.type	.Lpdf_put_encoded_string_as_hex.hex,@object # @pdf_put_encoded_string_as_hex.hex
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.Lpdf_put_encoded_string_as_hex.hex:
	.ascii	"0123456789ABCDEF"
	.size	.Lpdf_put_encoded_string_as_hex.hex, 16

	.type	.L.str.2295,@object     # @.str.2295
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2295:
	.asciz	"<"
	.size	.L.str.2295, 2

	.type	.L.str.2296,@object     # @.str.2296
.L.str.2296:
	.asciz	">"
	.size	.L.str.2296, 2

	.type	.L.str.2297,@object     # @.str.2297
.L.str.2297:
	.asciz	"Unimplemented function : pdf_put_encoded_hex_string\n"
	.size	.L.str.2297, 53

	.type	.L.str.2298,@object     # @.str.2298
.L.str.2298:
	.asciz	"pdf_write_function"
	.size	.L.str.2298, 19

	.type	.L.str.2299,@object     # @.str.2299
.L.str.2299:
	.asciz	"pdf_function"
	.size	.L.str.2299, 13

	.type	pdf_function_aux.fnames,@object # @pdf_function_aux.fnames
	.section	.rodata,"a",@progbits
	.align	8
pdf_function_aux.fnames:
	.quad	.L.str.2300
	.quad	.L.str.2301
	.quad	.L.str.2302
	.quad	.L.str.2303
	.quad	.L.str.2304
	.quad	.L.str.2305
	.quad	.L.str.2306
	.quad	.L.str.2307
	.quad	.L.str.2308
	.quad	.L.str.2309
	.quad	.L.str.2310
	.size	pdf_function_aux.fnames, 88

	.type	.L.str.2300,@object     # @.str.2300
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2300:
	.asciz	"/ASCII85Decode"
	.size	.L.str.2300, 15

	.type	.L.str.2301,@object     # @.str.2301
.L.str.2301:
	.asciz	"/ASCIIHexDecode"
	.size	.L.str.2301, 16

	.type	.L.str.2302,@object     # @.str.2302
.L.str.2302:
	.asciz	"/CCITTFaxDecode"
	.size	.L.str.2302, 16

	.type	.L.str.2303,@object     # @.str.2303
.L.str.2303:
	.asciz	"/DCTDecode"
	.size	.L.str.2303, 11

	.type	.L.str.2304,@object     # @.str.2304
.L.str.2304:
	.asciz	"/DecodeParms"
	.size	.L.str.2304, 13

	.type	.L.str.2305,@object     # @.str.2305
.L.str.2305:
	.asciz	"/Filter"
	.size	.L.str.2305, 8

	.type	.L.str.2306,@object     # @.str.2306
.L.str.2306:
	.asciz	"/FlateDecode"
	.size	.L.str.2306, 13

	.type	.L.str.2307,@object     # @.str.2307
.L.str.2307:
	.asciz	"/LZWDecode"
	.size	.L.str.2307, 11

	.type	.L.str.2308,@object     # @.str.2308
.L.str.2308:
	.asciz	"/RunLengthDecode"
	.size	.L.str.2308, 17

	.type	.L.str.2309,@object     # @.str.2309
.L.str.2309:
	.asciz	"/JBIG2Decode"
	.size	.L.str.2309, 13

	.type	.L.str.2310,@object     # @.str.2310
.L.str.2310:
	.asciz	"/JPXDecode"
	.size	.L.str.2310, 11

	.type	.L.str.2311,@object     # @.str.2311
.L.str.2311:
	.asciz	"pdf_function(Functions)"
	.size	.L.str.2311, 24

	.type	.L.str.2312,@object     # @.str.2312
.L.str.2312:
	.asciz	"/Functions"
	.size	.L.str.2312, 11


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
