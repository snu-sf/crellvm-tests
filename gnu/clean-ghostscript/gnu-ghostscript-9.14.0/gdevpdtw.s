	.text
	.file	"gdevpdtw.bc"
	.globl	pdf_different_encoding_index
	.align	16, 0x90
	.type	pdf_different_encoding_index,@function
pdf_different_encoding_index:           # @pdf_different_encoding_index
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp2:
	.cfi_def_cfa_offset 32
.Ltmp3:
	.cfi_offset %rbx, -32
.Ltmp4:
	.cfi_offset %r14, -24
.Ltmp5:
	.cfi_offset %rbp, -16
	movl	%esi, %ebx
	movq	%rdi, %r14
	cmpl	$255, %ebx
	jg	.LBB0_1
# BB#2:
	movl	184(%r14), %ebp
	.align	16, 0x90
.LBB0_3:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%r14, %rdi
	movl	%ebx, %esi
	movl	%ebp, %edx
	callq	pdf_different_encoding_element
	testl	%eax, %eax
	js	.LBB0_7
# BB#4:                                 # %if.end
                                        #   in Loop: Header=BB0_3 Depth=1
	jne	.LBB0_5
# BB#6:                                 # %for.inc
                                        #   in Loop: Header=BB0_3 Depth=1
	incl	%ebx
	cmpl	$256, %ebx              # imm = 0x100
	movl	%ebx, %eax
	jl	.LBB0_3
	jmp	.LBB0_7
.LBB0_1:
	movl	%ebx, %eax
	jmp	.LBB0_7
.LBB0_5:
	movl	%ebx, %eax
.LBB0_7:                                # %cleanup
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end0:
	.size	pdf_different_encoding_index, .Lfunc_end0-pdf_different_encoding_index
	.cfi_endproc

	.align	16, 0x90
	.type	pdf_different_encoding_element,@function
pdf_different_encoding_element:         # @pdf_different_encoding_element
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp6:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp7:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp8:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp9:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp10:
	.cfi_def_cfa_offset 48
	subq	$16, %rsp
.Ltmp11:
	.cfi_def_cfa_offset 64
.Ltmp12:
	.cfi_offset %rbx, -48
.Ltmp13:
	.cfi_offset %r12, -40
.Ltmp14:
	.cfi_offset %r14, -32
.Ltmp15:
	.cfi_offset %r15, -24
.Ltmp16:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movslq	%esi, %rdi
	movq	192(%rbx), %rax
	movq	%rdi, %rbp
	shlq	$5, %rbp
	movl	$1, %r15d
	cmpl	$0, 24(%rax,%rbp)
	jne	.LBB1_7
# BB#1:                                 # %if.else
	xorl	%r15d, %r15d
	cmpl	$-1, %edx
	je	.LBB1_7
# BB#2:                                 # %if.then.1
	movl	%edx, %esi
	callq	gs_c_known_encode
	movq	192(%rbx), %rcx
	movq	(%rcx,%rbp), %r12
	leaq	(%rsp), %rsi
	movq	%rax, %rdi
	callq	gs_c_glyph_name
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB1_6
# BB#3:                                 # %if.end
	cmpq	$2147483647, %r12       # imm = 0x7FFFFFFF
	je	.LBB1_7
# BB#4:                                 # %if.then.13
	movq	192(%rbx), %rax
	movl	8(%rsp), %edx
	movl	$1, %r14d
	cmpl	16(%rax,%rbp), %edx
	jne	.LBB1_6
# BB#5:                                 # %land.rhs.i
	movq	(%rsp), %rdi
	movq	8(%rax,%rbp), %rsi
	callq	memcmp
	testl	%eax, %eax
	je	.LBB1_7
.LBB1_6:                                # %cleanup.thread
	movl	%r14d, %r15d
.LBB1_7:                                # %return
	movl	%r15d, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	pdf_different_encoding_element, .Lfunc_end1-pdf_different_encoding_element
	.cfi_endproc

	.globl	pdf_write_encoding
	.align	16, 0x90
	.type	pdf_write_encoding,@function
pdf_write_encoding:                     # @pdf_write_encoding
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp17:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp18:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp19:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp20:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp21:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp22:
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
.Ltmp23:
	.cfi_def_cfa_offset 112
.Ltmp24:
	.cfi_offset %rbx, -56
.Ltmp25:
	.cfi_offset %r12, -48
.Ltmp26:
	.cfi_offset %r13, -40
.Ltmp27:
	.cfi_offset %r14, -32
.Ltmp28:
	.cfi_offset %r15, -24
.Ltmp29:
	.cfi_offset %rbp, -16
	movl	%ecx, %r15d
	movq	%rdx, %rbp
	movq	%rsi, %rbx
	movq	%rbx, 32(%rsp)          # 8-byte Spill
	movq	%rdi, %r14
	movq	%r14, (%rsp)            # 8-byte Spill
	movl	184(%rbx), %r13d
	movl	$gx_extendeg_glyph_name_separator, %edi
	callq	strlen
	movq	%rax, 16(%rsp)          # 8-byte Spill
	movl	$16, %edx
	movq	%r14, %rdi
	movq	%rbp, %rsi
	callq	pdf_open_separate
	movq	5848(%r14), %rbp
	movl	$.L.str, %esi
	movq	%rbp, %rdi
	callq	stream_puts
	testl	%r13d, %r13d
	jns	.LBB2_3
# BB#1:                                 # %land.lhs.true
	cmpl	$0, 9524(%r14)
	je	.LBB2_3
# BB#2:                                 # %select.mid
	xorl	%r13d, %r13d
.LBB2_3:                                # %if.end
	movl	%r13d, 28(%rsp)         # 4-byte Spill
	testl	%r13d, %r13d
	jle	.LBB2_5
# BB#4:                                 # %if.then.6
	movslq	%r13d, %rax
	movq	encoding_names(,%rax,8), %rdx
	movl	$.L.str.1, %esi
	movq	%rbp, %rdi
	callq	pprints1
.LBB2_5:                                # %if.end.8
	movl	$.L.str.2, %esi
	movq	%rbp, %rdi
	movq	%rbp, 8(%rsp)           # 8-byte Spill
	callq	stream_puts
	cmpl	$255, %r15d
	jg	.LBB2_27
# BB#6:                                 # %for.body.lr.ph
	movq	16(%rsp), %rax          # 8-byte Reload
	movslq	%eax, %rbp
	movslq	%r15d, %r15
	movl	$256, 52(%rsp)          # 4-byte Folded Spill
                                        # imm = 0x100
	xorl	%eax, %eax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	.align	16, 0x90
.LBB2_7:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_17 Depth 2
	movq	%rbx, %rdi
	movl	%r15d, %esi
	movl	%r13d, %edx
	callq	pdf_different_encoding_element
	testl	%eax, %eax
	js	.LBB2_28
# BB#8:                                 # %if.end.16
                                        #   in Loop: Header=BB2_7 Depth=1
	je	.LBB2_10
# BB#9:                                 # %if.end.16.if.then.55_crit_edge
                                        #   in Loop: Header=BB2_7 Depth=1
	movq	192(%rbx), %rax
	movq	%r15, %rcx
	shlq	$5, %rcx
	movl	16(%rax,%rcx), %r12d
.LBB2_14:                               # %if.then.55
                                        #   in Loop: Header=BB2_7 Depth=1
	movq	%r15, %rcx
	shlq	$5, %rcx
	movq	8(%rax,%rcx), %r13
	cmpl	$0, 9540(%r14)
	je	.LBB2_21
# BB#15:                                # %if.then.55
                                        #   in Loop: Header=BB2_7 Depth=1
	movq	16(%rsp), %rax          # 8-byte Reload
	cmpl	%r12d, %eax
	jge	.LBB2_21
# BB#16:                                # %for.body.74.lr.ph
                                        #   in Loop: Header=BB2_7 Depth=1
	movslq	%r12d, %r14
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB2_17:                               # %for.body.74
                                        #   Parent Loop BB2_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leaq	(%r13,%rbx), %rdi
	movl	$gx_extendeg_glyph_name_separator, %esi
	movq	%rbp, %rdx
	callq	memcmp
	testl	%eax, %eax
	je	.LBB2_19
# BB#18:                                # %for.inc
                                        #   in Loop: Header=BB2_17 Depth=2
	leaq	1(%rbp,%rbx), %rax
	incq	%rbx
	cmpq	%r14, %rax
	jl	.LBB2_17
	jmp	.LBB2_20
	.align	16, 0x90
.LBB2_10:                               # %land.lhs.true.19
                                        #   in Loop: Header=BB2_7 Depth=1
	movl	72(%rbx), %eax
	cmpq	$54, %rax
	ja	.LBB2_26
# BB#11:                                # %land.lhs.true.19
                                        #   in Loop: Header=BB2_7 Depth=1
	movabsq	$33776997205278728, %rcx # imm = 0x78000000000008
	btq	%rax, %rcx
	jae	.LBB2_26
# BB#12:                                # %if.then.37
                                        #   in Loop: Header=BB2_7 Depth=1
	movl	%r15d, %eax
	sarl	$3, %eax
	cltq
	movq	136(%rbx), %rcx
	movzbl	(%rcx,%rax), %eax
	movb	%r15b, %cl
	andb	$7, %cl
	movl	$128, %edx
	shrl	%cl, %edx
	testl	%edx, %eax
	je	.LBB2_26
# BB#13:                                # %if.then.44
                                        #   in Loop: Header=BB2_7 Depth=1
	movq	192(%rbx), %rax
	movq	%r15, %rcx
	shlq	$5, %rcx
	movl	16(%rax,%rcx), %r12d
	testl	%r12d, %r12d
	jne	.LBB2_14
	jmp	.LBB2_26
.LBB2_19:                               # %for.body.74.if.end.80.loopexit_crit_edge
                                        #   in Loop: Header=BB2_7 Depth=1
	movl	%ebx, %r12d
.LBB2_20:                               # %if.end.80
                                        #   in Loop: Header=BB2_7 Depth=1
	movq	(%rsp), %r14            # 8-byte Reload
.LBB2_21:                               # %if.end.80
                                        #   in Loop: Header=BB2_7 Depth=1
	movl	52(%rsp), %eax          # 4-byte Reload
	incl	%eax
	cmpl	%eax, %r15d
	jne	.LBB2_22
# BB#23:                                # %if.else
                                        #   in Loop: Header=BB2_7 Depth=1
	movq	40(%rsp), %rax          # 8-byte Reload
	leal	1(%rax), %ebx
	testb	$15, %al
	jne	.LBB2_25
# BB#24:                                # %if.then.89
                                        #   in Loop: Header=BB2_7 Depth=1
	movl	$.L.str.4, %esi
	movq	8(%rsp), %rdi           # 8-byte Reload
	callq	stream_puts
	jmp	.LBB2_25
	.align	16, 0x90
.LBB2_22:                               # %if.then.84
                                        #   in Loop: Header=BB2_7 Depth=1
	movl	$.L.str.3, %esi
	movq	8(%rsp), %rdi           # 8-byte Reload
	movl	%r15d, %edx
	callq	pprintd1
	movl	$1, %ebx
.LBB2_25:                               # %if.end.92
                                        #   in Loop: Header=BB2_7 Depth=1
	movq	%r14, %rdi
	movq	%r13, %rsi
	movl	%r12d, %edx
	callq	pdf_put_name
	movl	%r15d, %eax
	movl	%eax, 52(%rsp)          # 4-byte Spill
	movl	%ebx, %eax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	movq	32(%rsp), %rbx          # 8-byte Reload
	movl	28(%rsp), %r13d         # 4-byte Reload
.LBB2_26:                               # %for.inc.95
                                        #   in Loop: Header=BB2_7 Depth=1
	incq	%r15
	cmpq	$256, %r15              # imm = 0x100
	jl	.LBB2_7
.LBB2_27:                               # %for.end.97
	movl	$.L.str.5, %esi
	movq	8(%rsp), %rdi           # 8-byte Reload
	callq	stream_puts
	movl	$16, %esi
	movq	%r14, %rdi
	callq	pdf_end_separate
	xorl	%eax, %eax
.LBB2_28:                               # %cleanup
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	pdf_write_encoding, .Lfunc_end2-pdf_write_encoding
	.cfi_endproc

	.globl	pdf_write_encoding_ref
	.align	16, 0x90
	.type	pdf_write_encoding_ref,@function
pdf_write_encoding_ref:                 # @pdf_write_encoding_ref
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp30:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp31:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp32:
	.cfi_def_cfa_offset 32
.Ltmp33:
	.cfi_offset %rbx, -32
.Ltmp34:
	.cfi_offset %r14, -24
.Ltmp35:
	.cfi_offset %r15, -16
	movq	%rdx, %rbx
	movq	%rsi, %r15
	movq	%rdi, %r14
	movq	5848(%r14), %rdi
	testq	%rbx, %rbx
	je	.LBB3_2
# BB#1:                                 # %if.then
	movl	$.L.str.6, %esi
	movq	%rbx, %rdx
	callq	pprintld1
	movq	64(%r15), %rax
	movq	8(%rax), %rdx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	pdf_record_usage_by_parent
	jmp	.LBB3_4
.LBB3_2:                                # %if.else
	movslq	184(%r15), %rax
	testq	%rax, %rax
	jle	.LBB3_4
# BB#3:                                 # %if.then.4
	movq	encoding_names(,%rax,8), %rdx
	movl	$.L.str.7, %esi
	callq	pprints1
.LBB3_4:                                # %if.end.9
	xorl	%eax, %eax
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end3:
	.size	pdf_write_encoding_ref, .Lfunc_end3-pdf_write_encoding_ref
	.cfi_endproc

	.globl	pdf_write_contents_type0
	.align	16, 0x90
	.type	pdf_write_contents_type0,@function
pdf_write_contents_type0:               # @pdf_write_contents_type0
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp36:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp37:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp38:
	.cfi_def_cfa_offset 32
.Ltmp39:
	.cfi_offset %rbx, -32
.Ltmp40:
	.cfi_offset %r14, -24
.Ltmp41:
	.cfi_offset %r15, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	5848(%r14), %r15
	cmpb	$0, 184(%rbx)
	je	.LBB4_2
# BB#1:                                 # %if.then
	leaq	184(%rbx), %rdx
	movl	$.L.str.8, %esi
	movq	%r15, %rdi
	callq	pprints1
.LBB4_2:                                # %if.end
	movq	176(%rbx), %rdi
	callq	pdf_font_id
	movl	$.L.str.9, %esi
	movq	%r15, %rdi
	movq	%rax, %rdx
	callq	pprintld1
	movl	$.L.str.10, %esi
	movq	%r15, %rdi
	callq	stream_puts
	movl	$6, %esi
	movq	%r14, %rdi
	callq	pdf_end_separate
	xorl	%eax, %eax
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end4:
	.size	pdf_write_contents_type0, .Lfunc_end4-pdf_write_contents_type0
	.cfi_endproc

	.globl	pdf_finish_write_contents_type3
	.align	16, 0x90
	.type	pdf_finish_write_contents_type3,@function
pdf_finish_write_contents_type3:        # @pdf_finish_write_contents_type3
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp42:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp43:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp44:
	.cfi_def_cfa_offset 32
.Ltmp45:
	.cfi_offset %rbx, -32
.Ltmp46:
	.cfi_offset %r14, -24
.Ltmp47:
	.cfi_offset %r15, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	5848(%r14), %r15
	leaq	216(%rbx), %rsi
	callq	pdf_write_font_bbox_float
	movl	176(%rbx), %esi
	movl	180(%rbx), %edx
	movq	128(%rbx), %rcx
	movq	%r14, %rdi
	callq	pdf_write_Widths
	movl	$.L.str.11, %esi
	movq	%r15, %rdi
	callq	stream_puts
	movl	$6, %esi
	movq	%r14, %rdi
	callq	pdf_end_separate
	xorl	%eax, %eax
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end5:
	.size	pdf_finish_write_contents_type3, .Lfunc_end5-pdf_finish_write_contents_type3
	.cfi_endproc

	.align	16, 0x90
	.type	pdf_write_Widths,@function
pdf_write_Widths:                       # @pdf_write_Widths
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
	movq	%rcx, %r14
	movl	%edx, %r15d
	movl	%esi, %ebp
	movq	5848(%rdi), %r12
	xorl	%eax, %eax
	cmpl	%r15d, %ebp
	cmovgl	%eax, %r15d
	cmovgl	%eax, %ebp
	movl	$.L.str.30, %esi
	movq	%r12, %rdi
	movl	%ebp, %edx
	movl	%r15d, %ecx
	callq	pprintd2
	cmpl	%r15d, %ebp
	jg	.LBB6_3
# BB#1:                                 # %for.body.lr.ph
	movslq	%ebp, %rbx
	movslq	%r15d, %r15
	movl	$.L.str.31, %r13d
	.align	16, 0x90
.LBB6_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	testb	$15, %bl
	movl	$.L.str.32, %ebp
	cmovneq	%r13, %rbp
	movsd	(%r14,%rbx,8), %xmm0    # xmm0 = mem[0],zero
	movl	$100, %edi
	movl	$10, %esi
	callq	psdf_round
	movq	%r12, %rdi
	movq	%rbp, %rsi
	callq	pprintg1
	cmpq	%r15, %rbx
	leaq	1(%rbx), %rbx
	jl	.LBB6_2
.LBB6_3:                                # %for.end
	movl	$.L.str.33, %esi
	movq	%r12, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	stream_puts             # TAILCALL
.Lfunc_end6:
	.size	pdf_write_Widths, .Lfunc_end6-pdf_write_Widths
	.cfi_endproc

	.globl	pdf_write_contents_std
	.align	16, 0x90
	.type	pdf_write_contents_std,@function
pdf_write_contents_std:                 # @pdf_write_contents_std
	.cfi_startproc
# BB#0:                                 # %entry
	jmp	pdf_write_simple_contents # TAILCALL
.Lfunc_end7:
	.size	pdf_write_contents_std, .Lfunc_end7-pdf_write_contents_std
	.cfi_endproc

	.align	16, 0x90
	.type	pdf_write_simple_contents,@function
pdf_write_simple_contents:              # @pdf_write_simple_contents
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp61:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp62:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp63:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp64:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp65:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp66:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp67:
	.cfi_def_cfa_offset 64
.Ltmp68:
	.cfi_offset %rbx, -56
.Ltmp69:
	.cfi_offset %r12, -48
.Ltmp70:
	.cfi_offset %r13, -40
.Ltmp71:
	.cfi_offset %r14, -32
.Ltmp72:
	.cfi_offset %r15, -24
.Ltmp73:
	.cfi_offset %rbp, -16
	movq	%rsi, %r13
	movq	%rdi, %r14
	movq	5848(%r14), %r15
	cmpq	$0, 192(%r13)
	movl	$256, %ebx              # imm = 0x100
	je	.LBB8_8
# BB#1:
	xorl	%ebx, %ebx
	movl	184(%r13), %r12d
	.align	16, 0x90
.LBB8_2:                                # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%r13, %rdi
	movl	%ebx, %esi
	movl	%r12d, %edx
	callq	pdf_different_encoding_element
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB8_5
# BB#3:                                 # %if.end.i
                                        #   in Loop: Header=BB8_2 Depth=1
	jne	.LBB8_4
# BB#7:                                 # %for.inc.i
                                        #   in Loop: Header=BB8_2 Depth=1
	incl	%ebx
	cmpl	$256, %ebx              # imm = 0x100
	jl	.LBB8_2
.LBB8_8:                                # %if.end.thread
	movq	5848(%r14), %rdi
	movl	%ebx, %ebp
	jmp	.LBB8_9
.LBB8_4:
	movl	%ebx, %ebp
.LBB8_5:                                # %if.end
	movq	%r14, %rdi
	callq	pdf_obj_ref
	movq	%rax, %r12
	movq	5848(%r14), %rdi
	testq	%r12, %r12
	je	.LBB8_9
# BB#6:                                 # %if.then.i
	movl	$.L.str.6, %esi
	movq	%r12, %rdx
	callq	pprintld1
	movq	64(%r13), %rax
	movq	8(%rax), %rdx
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	pdf_record_usage_by_parent
	xorl	%ebx, %ebx
	jmp	.LBB8_11
.LBB8_9:                                # %if.else.i
	movslq	184(%r13), %rax
	xorl	%r12d, %r12d
	testq	%rax, %rax
	movb	$1, %bl
	jle	.LBB8_11
# BB#10:                                # %if.then.4.i
	movq	encoding_names(,%rax,8), %rdx
	movl	$.L.str.7, %esi
	callq	pprints1
	xorl	%r12d, %r12d
.LBB8_11:                               # %pdf_write_encoding_ref.exit
	movl	$.L.str.35, %edx
	cmpl	$42, 72(%r13)
	je	.LBB8_14
# BB#12:                                # %cond.false
	movl	$.L.str.36, %edx
	cmpl	$0, 216(%r13)
	jne	.LBB8_14
# BB#13:                                # %select.mid
	movl	$.L.str.37, %edx
.LBB8_14:                               # %cond.end
	movl	$.L.str.34, %esi
	movq	%r15, %rdi
	callq	pprints1
	movl	$6, %esi
	movq	%r14, %rdi
	callq	pdf_end_separate
	testb	%bl, %bl
	jne	.LBB8_16
# BB#15:                                # %if.then.16
	movq	%r13, %rdi
	callq	mark_font_descriptor_symbolic
	movq	%r14, %rdi
	movq	%r13, %rsi
	movq	%r12, %rdx
	movl	%ebp, %ecx
	callq	pdf_write_encoding
	testl	%eax, %eax
	js	.LBB8_17
.LBB8_16:                               # %if.end.22
	xorl	%eax, %eax
.LBB8_17:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	pdf_write_simple_contents, .Lfunc_end8-pdf_write_simple_contents
	.cfi_endproc

	.globl	pdf_write_contents_simple
	.align	16, 0x90
	.type	pdf_write_contents_simple,@function
pdf_write_contents_simple:              # @pdf_write_contents_simple
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp74:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp75:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp76:
	.cfi_def_cfa_offset 32
.Ltmp77:
	.cfi_offset %rbx, -24
.Ltmp78:
	.cfi_offset %r14, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movl	176(%rbx), %esi
	movl	180(%rbx), %edx
	movq	128(%rbx), %rcx
	callq	pdf_write_Widths
	movq	%r14, %rdi
	movq	%rbx, %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	pdf_write_simple_contents # TAILCALL
.Lfunc_end9:
	.size	pdf_write_contents_simple, .Lfunc_end9-pdf_write_contents_simple
	.cfi_endproc

	.globl	pdf_write_contents_cid0
	.align	16, 0x90
	.type	pdf_write_contents_cid0,@function
pdf_write_contents_cid0:                # @pdf_write_contents_cid0
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp79:
	.cfi_def_cfa_offset 16
	xorl	%edx, %edx
	callq	write_contents_cid_common
	xorl	%eax, %eax
	popq	%rdx
	retq
.Lfunc_end10:
	.size	pdf_write_contents_cid0, .Lfunc_end10-pdf_write_contents_cid0
	.cfi_endproc

	.align	16, 0x90
	.type	write_contents_cid_common,@function
write_contents_cid_common:              # @write_contents_cid_common
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp80:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp81:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp82:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp83:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp84:
	.cfi_def_cfa_offset 48
.Ltmp85:
	.cfi_offset %rbx, -40
.Ltmp86:
	.cfi_offset %r14, -32
.Ltmp87:
	.cfi_offset %r15, -24
.Ltmp88:
	.cfi_offset %rbp, -16
	movl	%edx, %r14d
	movq	%rsi, %rbp
	movq	%rdi, %rbx
	movq	5848(%rbx), %r15
	cmpq	$0, 128(%rbp)
	je	.LBB11_2
# BB#1:                                 # %if.then
	xorl	%edx, %edx
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	pdf_write_CIDFont_widths
	jmp	.LBB11_3
.LBB11_2:                               # %if.else
	movl	$.L.str.38, %esi
	movq	%r15, %rdi
	callq	stream_puts
.LBB11_3:                               # %if.end.4
	cmpq	$0, 208(%rbp)
	je	.LBB11_5
# BB#4:                                 # %if.then.6
	movl	$1, %edx
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	pdf_write_CIDFont_widths
.LBB11_5:                               # %if.end.11
	movq	176(%rbp), %rdx
	testq	%rdx, %rdx
	je	.LBB11_7
# BB#6:                                 # %if.then.14
	movl	$.L.str.39, %esi
	movq	%r15, %rdi
	callq	pprintld1
.LBB11_7:                               # %if.end.19
	movl	$.L.str.40, %esi
	movq	%r15, %rdi
	movl	%r14d, %edx
	callq	pprintd1
	movl	$6, %esi
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	pdf_end_separate        # TAILCALL
.Lfunc_end11:
	.size	write_contents_cid_common, .Lfunc_end11-write_contents_cid_common
	.cfi_endproc

	.globl	pdf_write_contents_cid2
	.align	16, 0x90
	.type	pdf_write_contents_cid2,@function
pdf_write_contents_cid2:                # @pdf_write_contents_cid2
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp89:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp90:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp91:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp92:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp93:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp94:
	.cfi_def_cfa_offset 56
	subq	$136, %rsp
.Ltmp95:
	.cfi_def_cfa_offset 192
.Ltmp96:
	.cfi_offset %rbx, -56
.Ltmp97:
	.cfi_offset %r12, -48
.Ltmp98:
	.cfi_offset %r13, -40
.Ltmp99:
	.cfi_offset %r14, -32
.Ltmp100:
	.cfi_offset %r15, -24
.Ltmp101:
	.cfi_offset %rbp, -16
	movq	%rsi, %r12
	movq	%rdi, %r14
	movl	120(%r12), %ecx
	movq	136(%r12), %rdx
	leaq	88(%rsp), %r15
	xorl	%esi, %esi
	movl	$1, %r8d
	movq	%r15, %rdi
	callq	psf_enumerate_bits_begin
	leaq	80(%rsp), %rbx
	movl	$2147483648, %r13d      # imm = 0x80000000
	.align	16, 0x90
.LBB12_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	psf_enumerate_glyphs_next
	testl	%eax, %eax
	jne	.LBB12_4
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	80(%rsp), %rax
	addq	%r13, %rax
	movq	%rax, %rcx
	shlq	$32, %rcx
	movq	184(%r12), %rdx
	sarq	$31, %rcx
	movzwl	(%rdx,%rcx), %ecx
	cmpl	%eax, %ecx
	je	.LBB12_1
# BB#3:                                 # %while.end
	movq	%r14, %rdi
	callq	pdf_obj_ref
	movq	%rax, %r15
	movq	5848(%r14), %rdi
	movl	$.L.str.12, %esi
	movq	%r15, %rdx
	callq	pprintld1
	testq	%r15, %r15
	je	.LBB12_4
# BB#7:                                 # %land.lhs.true.25
	movl	$2, %edx
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	write_contents_cid_common
	movq	104(%r12), %rdi
	callq	pdf_font_descriptor_embedding
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	.LBB12_14
# BB#8:                                 # %if.then.29
	movl	$3, %edx
	cmpl	$0, 9480(%r14)
	jne	.LBB12_10
# BB#9:                                 # %select.mid
	movl	$1, %edx
.LBB12_10:                              # %select.end
	leaq	(%rsp), %rsi
	movq	%r14, %rdi
	movq	%r15, %rcx
	callq	pdf_begin_data_stream
	cmpl	$0, 192(%r12)
	je	.LBB12_13
# BB#11:                                # %for.body.lr.ph
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB12_12:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	184(%r12), %rax
	movq	16(%rsp), %rdi
	movzwl	(%rax,%rbx,2), %ebp
	movl	%ebp, %esi
	shrl	$8, %esi
	callq	spputc
	movq	16(%rsp), %rdi
	movzbl	%bpl, %esi
	callq	spputc
	incq	%rbx
	cmpl	192(%r12), %ebx
	jb	.LBB12_12
.LBB12_13:                              # %for.end
	leaq	(%rsp), %rdi
	callq	pdf_end_data
	jmp	.LBB12_14
.LBB12_4:                               # %land.lhs.true
	movq	104(%r12), %rdi
	callq	pdf_font_descriptor_embedding
	testl	%eax, %eax
	je	.LBB12_6
# BB#5:                                 # %if.then.11
	movq	5848(%r14), %rdi
	movl	$.L.str.13, %esi
	callq	stream_puts
	testl	%eax, %eax
	js	.LBB12_14
.LBB12_6:                               # %if.end.18.thread
	movl	$2, %edx
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	write_contents_cid_common
	xorl	%eax, %eax
.LBB12_14:                              # %cleanup.52
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end12:
	.size	pdf_write_contents_cid2, .Lfunc_end12-pdf_write_contents_cid2
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI13_0:
	.quad	4608083138725491507     # double 1.2
.LCPI13_1:
	.quad	4607182418800017408     # double 1
	.text
	.globl	write_font_resources
	.align	16, 0x90
	.type	write_font_resources,@function
write_font_resources:                   # @write_font_resources
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp102:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp103:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp104:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp105:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp106:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp107:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp108:
	.cfi_def_cfa_offset 80
.Ltmp109:
	.cfi_offset %rbx, -56
.Ltmp110:
	.cfi_offset %r12, -48
.Ltmp111:
	.cfi_offset %r13, -40
.Ltmp112:
	.cfi_offset %r14, -32
.Ltmp113:
	.cfi_offset %r15, -24
.Ltmp114:
	.cfi_offset %rbp, -16
	movq	%rsi, (%rsp)            # 8-byte Spill
	movq	%rdi, %r12
	xorl	%eax, %eax
	movq	%rax, 8(%rsp)           # 8-byte Spill
.LBB13_1:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_2 Depth 2
                                        #       Child Loop BB13_13 Depth 3
	movq	(%rsp), %rax            # 8-byte Reload
	movq	8(%rsp), %rcx           # 8-byte Reload
	movq	(%rax,%rcx,8), %rbx
	jmp	.LBB13_2
	.align	16, 0x90
.LBB13_56:                              # %for.inc
                                        #   in Loop: Header=BB13_2 Depth=2
	movq	(%rbx), %rbx
.LBB13_2:                               # %for.body
                                        #   Parent Loop BB13_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB13_13 Depth 3
	testq	%rbx, %rbx
	je	.LBB13_57
# BB#3:                                 # %for.body.3
                                        #   in Loop: Header=BB13_2 Depth=2
	movq	%rbx, %rdi
	callq	pdf_resource_id
	cmpq	$-1, %rax
	je	.LBB13_56
# BB#4:                                 # %if.then
                                        #   in Loop: Header=BB13_2 Depth=2
	movl	$1, %edx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	pdf_compute_BaseFont
	testl	%eax, %eax
	js	.LBB13_58
# BB#5:                                 # %if.end
                                        #   in Loop: Header=BB13_2 Depth=2
	movq	152(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB13_25
# BB#6:                                 # %land.lhs.true.i
                                        #   in Loop: Header=BB13_2 Depth=2
	cmpq	$0, 144(%rbx)
	jne	.LBB13_25
# BB#7:                                 # %if.then.i
                                        #   in Loop: Header=BB13_2 Depth=2
	movl	72(%rbx), %eax
	cmpq	$54, %rax
	ja	.LBB13_25
# BB#8:                                 # %if.then.i
                                        #   in Loop: Header=BB13_2 Depth=2
	movabsq	$33781395251789838, %rcx # imm = 0x7804000000000E
	btq	%rax, %rcx
	jae	.LBB13_9
# BB#10:                                # %land.lhs.true.26.i
                                        #   in Loop: Header=BB13_2 Depth=2
	leal	-1(%rax), %ecx
	cmpl	$1, %ecx
	seta	%dl
	cmpl	$42, %eax
	je	.LBB13_23
# BB#11:                                # %land.lhs.true.26.i
                                        #   in Loop: Header=BB13_2 Depth=2
	movq	192(%rbx), %rcx
	testq	%rcx, %rcx
	je	.LBB13_23
# BB#12:                                #   in Loop: Header=BB13_2 Depth=2
	movzbl	%dl, %r15d
	incl	%r15d
	movl	$16, %r13d
	xorl	%ebp, %ebp
	jmp	.LBB13_13
	.align	16, 0x90
.LBB13_21:                              # %for.inc.for.body_crit_edge.i.i
                                        #   in Loop: Header=BB13_13 Depth=3
	addq	$32, %r13
	movq	192(%rbx), %rcx
.LBB13_13:                              # %for.body.i.i
                                        #   Parent Loop BB13_1 Depth=1
                                        #     Parent Loop BB13_2 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-16(%rcx,%r13), %rax
	cmpq	$2147483647, %rax       # imm = 0x7FFFFFFF
	je	.LBB13_20
# BB#14:                                # %if.end.19.i.i
                                        #   in Loop: Header=BB13_13 Depth=3
	ja	.LBB13_16
# BB#15:                                # %if.end.19.i.i
                                        #   in Loop: Header=BB13_13 Depth=3
	cmpq	gs_c_min_std_encoding_glyph(%rip), %rax
	jae	.LBB13_18
.LBB13_16:                              # %if.then.24.i.i
                                        #   in Loop: Header=BB13_13 Depth=3
	movl	(%rcx,%r13), %esi
	testl	%esi, %esi
	je	.LBB13_22
# BB#17:                                # %if.end.28.i.i
                                        #   in Loop: Header=BB13_13 Depth=3
	movq	-8(%rcx,%r13), %rdi
	callq	gs_c_name_glyph
	cmpq	$2147483647, %rax       # imm = 0x7FFFFFFF
	je	.LBB13_22
.LBB13_18:                              # %if.end.36.i.i
                                        #   in Loop: Header=BB13_13 Depth=3
	subq	gs_c_min_std_encoding_glyph(%rip), %rax
	cmpq	$21894, %rax            # imm = 0x5586
	ja	.LBB13_22
# BB#19:                                # %cleanup.i.i
                                        #   in Loop: Header=BB13_13 Depth=3
	movq	%rax, %rcx
	shrq	$2, %rcx
	movzbl	gs_c_pdf_glyph_type(%rcx), %edx
	addq	%rax, %rax
	andb	$6, %al
	movl	%r15d, %esi
	movb	%al, %cl
	shll	%cl, %esi
	testl	%esi, %edx
	je	.LBB13_22
.LBB13_20:                              # %for.inc.i.i
                                        #   in Loop: Header=BB13_13 Depth=3
	incq	%rbp
	cmpq	$255, %rbp
	jle	.LBB13_21
	jmp	.LBB13_25
.LBB13_22:                              # %if.then.27.loopexit.i
                                        #   in Loop: Header=BB13_2 Depth=2
	movq	152(%rbx), %rsi
	jmp	.LBB13_23
.LBB13_9:                               # %if.then.i
                                        #   in Loop: Header=BB13_2 Depth=2
	testq	%rax, %rax
	jne	.LBB13_25
.LBB13_23:                              # %if.then.27.i
                                        #   in Loop: Header=BB13_2 Depth=2
	movl	$-1, %ecx
	movq	%r12, %rdi
	leaq	16(%rsp), %rdx
	callq	pdf_cmap_alloc
	testl	%eax, %eax
	js	.LBB13_58
# BB#24:                                # %if.end.i
                                        #   in Loop: Header=BB13_2 Depth=2
	movq	16(%rsp), %rax
	movq	%rax, 144(%rbx)
	.align	16, 0x90
.LBB13_25:                              # %if.end.35.i
                                        #   in Loop: Header=BB13_2 Depth=2
	movsd	9368(%r12), %xmm0       # xmm0 = mem[0],zero
	ucomisd	.LCPI13_0(%rip), %xmm0
	movl	$0, %r15d
	jb	.LBB13_33
# BB#26:                                # %land.lhs.true.37.i
                                        #   in Loop: Header=BB13_2 Depth=2
	movl	72(%rbx), %eax
	cmpq	$54, %rax
	jbe	.LBB13_28
# BB#27:                                #   in Loop: Header=BB13_2 Depth=2
	xorl	%r15d, %r15d
	jmp	.LBB13_33
.LBB13_28:                              # %land.lhs.true.37.i
                                        #   in Loop: Header=BB13_2 Depth=2
	movabsq	$33776997205278728, %rcx # imm = 0x78000000000008
	btq	%rax, %rcx
	movl	$0, %r15d
	jae	.LBB13_33
# BB#29:                                # %land.lhs.true.52.i
                                        #   in Loop: Header=BB13_2 Depth=2
	movq	288(%rbx), %r13
	testq	%r13, %r13
	movl	$0, %r15d
	je	.LBB13_33
# BB#30:                                # %land.lhs.true.55.i
                                        #   in Loop: Header=BB13_2 Depth=2
	cmpq	$0, 16(%r13)
	movl	$0, %r15d
	je	.LBB13_33
# BB#31:                                # %if.then.62.i
                                        #   in Loop: Header=BB13_2 Depth=2
	movq	%r12, %rdi
	callq	pdf_obj_ref
	movq	%rax, 8(%r13)
	movl	$6, %edx
	movq	%r12, %rdi
	movq	%rax, %rsi
	callq	pdf_open_separate
	movq	8(%r13), %rdx
	movq	%r13, %rdi
	movq	%r12, %rsi
	callq	cos_write
	testl	%eax, %eax
	js	.LBB13_58
# BB#32:                                # %cleanup.79.thread.i
                                        #   in Loop: Header=BB13_2 Depth=2
	movl	$6, %esi
	movq	%r12, %rdi
	callq	pdf_end_separate
	movq	%r13, %r15
	.align	16, 0x90
.LBB13_33:                              # %if.end.82.i
                                        #   in Loop: Header=BB13_2 Depth=2
	movq	%rbx, %rdi
	callq	pdf_font_id
	movl	$6, %edx
	movq	%r12, %rdi
	movq	%rax, %rsi
	callq	pdf_open_separate
	movq	5848(%r12), %r13
	movl	$.L.str.50, %esi
	movq	%r13, %rdi
	callq	stream_puts
	cmpl	$0, 96(%rbx)
	je	.LBB13_34
# BB#35:                                # %if.then.87.i
                                        #   in Loop: Header=BB13_2 Depth=2
	movl	$.L.str.51, %esi
	movq	%r13, %rdi
	callq	stream_puts
	leaq	104(%rbx), %r14
	movq	104(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB13_39
# BB#36:                                # %land.lhs.true.90.i
                                        #   in Loop: Header=BB13_2 Depth=2
	callq	pdf_font_descriptor_embedding
	testl	%eax, %eax
	jne	.LBB13_39
# BB#37:                                # %land.lhs.true.94.i
                                        #   in Loop: Header=BB13_2 Depth=2
	movq	88(%rbx), %rdi
	movl	96(%rbx), %esi
	callq	pdf_find_base14_name
	movq	%rax, %rbp
	testq	%rbp, %rbp
	je	.LBB13_39
# BB#38:                                # %if.then.100.i
                                        #   in Loop: Header=BB13_2 Depth=2
	movq	%rbp, %rdi
	callq	strlen
	movq	%r12, %rdi
	movq	%rbp, %rsi
	movl	%eax, %edx
	jmp	.LBB13_40
	.align	16, 0x90
.LBB13_39:                              # %if.else.i
                                        #   in Loop: Header=BB13_2 Depth=2
	movq	88(%rbx), %rsi
	movl	96(%rbx), %edx
	movq	%r12, %rdi
.LBB13_40:                              # %if.end.109.i
                                        #   in Loop: Header=BB13_2 Depth=2
	callq	pdf_put_name
	jmp	.LBB13_41
	.align	16, 0x90
.LBB13_34:                              # %if.end.82.if.end.109_crit_edge.i
                                        #   in Loop: Header=BB13_2 Depth=2
	leaq	104(%rbx), %r14
.LBB13_41:                              # %if.end.109.i
                                        #   in Loop: Header=BB13_2 Depth=2
	movq	(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB13_44
# BB#42:                                # %if.then.112.i
                                        #   in Loop: Header=BB13_2 Depth=2
	callq	pdf_font_descriptor_id
	movslq	%eax, %rdx
	movl	$.L.str.52, %esi
	movq	%r13, %rdi
	callq	pprintld1
	cmpl	$0, 30764(%r12)
	je	.LBB13_44
# BB#43:                                # %if.then.119.i
                                        #   in Loop: Header=BB13_2 Depth=2
	movq	64(%rbx), %rax
	movq	104(%rbx), %rdx
	movl	8(%rax), %esi
	movq	%r12, %rdi
	callq	pdf_set_font_descriptor_usage
.LBB13_44:                              # %if.end.125.i
                                        #   in Loop: Header=BB13_2 Depth=2
	movq	144(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB13_46
# BB#45:                                # %if.then.128.i
                                        #   in Loop: Header=BB13_2 Depth=2
	callq	pdf_resource_id
	movslq	%eax, %rbp
	movl	$.L.str.53, %esi
	movq	%r13, %rdi
	movq	%rbp, %rdx
	callq	pprintld1
	movq	64(%rbx), %rax
	movq	8(%rax), %rdx
	movq	%r12, %rdi
	movq	%rbp, %rsi
	callq	pdf_record_usage_by_parent
.LBB13_46:                              # %if.end.138.i
                                        #   in Loop: Header=BB13_2 Depth=2
	movsd	9368(%r12), %xmm0       # xmm0 = mem[0],zero
	ucomisd	.LCPI13_1(%rip), %xmm0
	jbe	.LBB13_48
# BB#47:                                # %if.then.142.i
                                        #   in Loop: Header=BB13_2 Depth=2
	movl	$.L.str.54, %esi
	movq	%r13, %rdi
	callq	stream_puts
	jmp	.LBB13_49
	.align	16, 0x90
.LBB13_48:                              # %if.else.144.i
                                        #   in Loop: Header=BB13_2 Depth=2
	movq	%rbx, %rdi
	callq	pdf_font_id
	movl	$.L.str.55, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	callq	pprintld1
.LBB13_49:                              # %if.end.147.i
                                        #   in Loop: Header=BB13_2 Depth=2
	cmpl	$0, 9524(%r12)
	je	.LBB13_52
# BB#50:                                # %land.lhs.true.149.i
                                        #   in Loop: Header=BB13_2 Depth=2
	cmpl	$0, 28(%rbx)
	je	.LBB13_52
# BB#51:                                # %if.then.151.i
                                        #   in Loop: Header=BB13_2 Depth=2
	movl	$.L.str.56, %esi
	movq	%r13, %rdi
	callq	stream_puts
.LBB13_52:                              # %if.end.153.i
                                        #   in Loop: Header=BB13_2 Depth=2
	testq	%r15, %r15
	je	.LBB13_54
# BB#53:                                # %if.then.156.i
                                        #   in Loop: Header=BB13_2 Depth=2
	movslq	8(%r15), %rbp
	movl	$.L.str.57, %esi
	movq	%r13, %rdi
	movq	%rbp, %rdx
	callq	pprintld1
	movq	64(%rbx), %rax
	movq	8(%rax), %rdx
	movq	%r12, %rdi
	movq	%rbp, %rsi
	callq	pdf_record_usage_by_parent
.LBB13_54:                              # %pdf_write_font_resource.exit
                                        #   in Loop: Header=BB13_2 Depth=2
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	*80(%rbx)
	testl	%eax, %eax
	js	.LBB13_58
# BB#55:                                # %cleanup
                                        #   in Loop: Header=BB13_2 Depth=2
	movq	64(%rbx), %rax
	movb	$1, 50(%rax)
	jmp	.LBB13_56
	.align	16, 0x90
.LBB13_57:                              # %for.inc.16
                                        #   in Loop: Header=BB13_1 Depth=1
	movq	8(%rsp), %rax           # 8-byte Reload
	movq	%rax, %rcx
	incq	%rcx
	movq	%rcx, 8(%rsp)           # 8-byte Spill
	xorl	%eax, %eax
	cmpq	$16, %rcx
	jl	.LBB13_1
.LBB13_58:                              # %cleanup.18
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end13:
	.size	write_font_resources, .Lfunc_end13-write_font_resources
	.cfi_endproc

	.globl	pdf_finish_resources
	.align	16, 0x90
	.type	pdf_finish_resources,@function
pdf_finish_resources:                   # @pdf_finish_resources
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp115:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp116:
	.cfi_def_cfa_offset 24
	pushq	%r13
.Ltmp117:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp118:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp119:
	.cfi_def_cfa_offset 48
.Ltmp120:
	.cfi_offset %rbx, -48
.Ltmp121:
	.cfi_offset %r12, -40
.Ltmp122:
	.cfi_offset %r13, -32
.Ltmp123:
	.cfi_offset %r14, -24
.Ltmp124:
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rdi, %r15
	movl	%esi, %eax
	xorl	%r12d, %r12d
	shlq	$7, %rax
	leaq	(%rax,%r15), %r13
.LBB14_1:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_3 Depth 2
	movq	26672(%r13,%r12,8), %rbx
	jmp	.LBB14_3
	.align	16, 0x90
.LBB14_2:                               # %for.cond.3
                                        #   in Loop: Header=BB14_3 Depth=2
	movq	(%rbx), %rbx
.LBB14_3:                               # %for.cond.3
                                        #   Parent Loop BB14_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testq	%rbx, %rbx
	je	.LBB14_5
# BB#4:                                 # %for.body.5
                                        #   in Loop: Header=BB14_3 Depth=2
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	*%r14
	testl	%eax, %eax
	jns	.LBB14_2
	jmp	.LBB14_6
	.align	16, 0x90
.LBB14_5:                               # %for.inc.7
                                        #   in Loop: Header=BB14_1 Depth=1
	incq	%r12
	xorl	%eax, %eax
	cmpq	$16, %r12
	jl	.LBB14_1
.LBB14_6:                               # %cleanup.9
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.Lfunc_end14:
	.size	pdf_finish_resources, .Lfunc_end14-pdf_finish_resources
	.cfi_endproc

	.globl	pdf_write_cid_system_info
	.align	16, 0x90
	.type	pdf_write_cid_system_info,@function
pdf_write_cid_system_info:              # @pdf_write_cid_system_info
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdx, %rax
	movq	%rsi, %rcx
	movq	5848(%rdi), %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	jmp	pdf_write_cid_system_info_to_stream # TAILCALL
.Lfunc_end15:
	.size	pdf_write_cid_system_info, .Lfunc_end15-pdf_write_cid_system_info
	.cfi_endproc

	.align	16, 0x90
	.type	pdf_write_cid_system_info_to_stream,@function
pdf_write_cid_system_info_to_stream:    # @pdf_write_cid_system_info_to_stream
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
	subq	$392, %rsp              # imm = 0x188
.Ltmp131:
	.cfi_def_cfa_offset 448
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
	movq	%rcx, %rbx
	movq	%rdx, %r15
	movq	%rsi, %rbp
	movq	%rdi, %r13
	movq	1728(%r13), %rdi
	movl	8(%r15), %esi
	movl	$.L.str.58, %edx
	callq	*64(%rdi)
	movl	$-25, %r14d
	testq	%rax, %rax
	je	.LBB16_12
# BB#1:                                 # %if.end
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movq	1728(%r13), %rdi
	movl	24(%r15), %esi
	movl	$.L.str.58, %edx
	callq	*64(%rdi)
	movq	%rax, %r12
	testq	%r12, %r12
	je	.LBB16_2
# BB#3:                                 # %if.end.15
	movq	(%r15), %rsi
	movl	8(%r15), %edx
	movq	8(%rsp), %rdi           # 8-byte Reload
	callq	memcpy
	movq	16(%r15), %rsi
	movl	24(%r15), %edx
	movq	%r12, %rdi
	callq	memcpy
	testq	%rbx, %rbx
	je	.LBB16_11
# BB#4:                                 # %if.end.15
	movl	9648(%r13), %eax
	testl	%eax, %eax
	je	.LBB16_11
# BB#5:                                 # %if.then.28
	movq	%r12, (%rsp)            # 8-byte Spill
	leaq	16(%rsp), %rdx
	movq	%r13, %rdi
	movq	%rbx, %r12
	movq	%r12, %rsi
	callq	pdf_encrypt_init
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB16_6
# BB#7:                                 # %if.end.41
	movl	8(%r15), %edx
	leaq	16(%rsp), %r14
	movq	%r14, %rdi
	movq	8(%rsp), %rbx           # 8-byte Reload
	movq	%rbx, %rsi
	callq	s_arcfour_process_buffer
	movq	%r13, %rdi
	movq	%r12, %rsi
	movq	%r14, %rdx
	callq	pdf_encrypt_init
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB16_8
# BB#10:                                # %cleanup
	movl	24(%r15), %edx
	leaq	16(%rsp), %rdi
	movq	(%rsp), %r12            # 8-byte Reload
	movq	%r12, %rsi
	callq	s_arcfour_process_buffer
.LBB16_11:                              # %if.end.62
	movl	$.L.str.61, %esi
	movq	%rbp, %rdi
	callq	stream_puts
	movl	8(%r15), %edx
	movl	$4, %ecx
	movq	%rbp, %rdi
	movq	8(%rsp), %rbx           # 8-byte Reload
	movq	%rbx, %rsi
	callq	s_write_ps_string
	movl	$.L.str.62, %esi
	movq	%rbp, %rdi
	callq	stream_puts
	movl	24(%r15), %edx
	movl	$4, %ecx
	movq	%rbp, %rdi
	movq	%r12, %rsi
	callq	s_write_ps_string
	movl	32(%r15), %edx
	movl	$.L.str.63, %esi
	movq	%rbp, %rdi
	callq	pprintd1
	movq	1728(%r13), %rdi
	movl	$.L.str.59, %edx
	movq	%rbx, %rsi
	callq	*24(%rdi)
	movq	1728(%r13), %rdi
	movl	$.L.str.60, %edx
	movq	%r12, %rsi
	callq	*24(%rdi)
	xorl	%r14d, %r14d
	jmp	.LBB16_12
.LBB16_2:                               # %if.then.11
	movq	1728(%r13), %rdi
	movl	$.L.str.59, %edx
	movq	8(%rsp), %rsi           # 8-byte Reload
	callq	*24(%rdi)
	jmp	.LBB16_12
.LBB16_6:                               # %if.then.32
	movq	1728(%r13), %rdi
	movl	$.L.str.59, %edx
	movq	8(%rsp), %rsi           # 8-byte Reload
	jmp	.LBB16_9
.LBB16_8:                               # %if.then.48
	movq	1728(%r13), %rdi
	movl	$.L.str.59, %edx
	movq	%rbx, %rsi
.LBB16_9:                               # %cleanup.78
	callq	*24(%rdi)
	movq	1728(%r13), %rdi
	movl	$.L.str.60, %edx
	movq	(%rsp), %rsi            # 8-byte Reload
	callq	*24(%rdi)
.LBB16_12:                              # %cleanup.78
	movl	%r14d, %eax
	addq	$392, %rsp              # imm = 0x188
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end16:
	.size	pdf_write_cid_system_info_to_stream, .Lfunc_end16-pdf_write_cid_system_info_to_stream
	.cfi_endproc

	.globl	pdf_write_cid_systemInfo_separate
	.align	16, 0x90
	.type	pdf_write_cid_systemInfo_separate,@function
pdf_write_cid_systemInfo_separate:      # @pdf_write_cid_systemInfo_separate
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
	pushq	%rbx
.Ltmp141:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp142:
	.cfi_def_cfa_offset 48
.Ltmp143:
	.cfi_offset %rbx, -40
.Ltmp144:
	.cfi_offset %r14, -32
.Ltmp145:
	.cfi_offset %r15, -24
.Ltmp146:
	.cfi_offset %rbp, -16
	movq	%rdx, %r15
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movl	$17, %esi
	callq	pdf_begin_separate
	movq	%rax, (%r15)
	movq	5848(%rbx), %rsi
	movq	%rbx, %rdi
	movq	%r14, %rdx
	movq	%rax, %rcx
	callq	pdf_write_cid_system_info_to_stream
	movl	%eax, %ebp
	movl	$17, %esi
	movq	%rbx, %rdi
	callq	pdf_end_separate
	movl	%ebp, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end17:
	.size	pdf_write_cid_systemInfo_separate, .Lfunc_end17-pdf_write_cid_systemInfo_separate
	.cfi_endproc

	.globl	pdf_write_cmap
	.align	16, 0x90
	.type	pdf_write_cmap,@function
pdf_write_cmap:                         # @pdf_write_cmap
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp147:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp148:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp149:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp150:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp151:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp152:
	.cfi_def_cfa_offset 56
	subq	$648, %rsp              # imm = 0x288
.Ltmp153:
	.cfi_def_cfa_offset 704
.Ltmp154:
	.cfi_offset %rbx, -56
.Ltmp155:
	.cfi_offset %r12, -48
.Ltmp156:
	.cfi_offset %r13, -40
.Ltmp157:
	.cfi_offset %r14, -32
.Ltmp158:
	.cfi_offset %r15, -24
.Ltmp159:
	.cfi_offset %rbp, -16
	movl	%ecx, %r14d
	movq	%rdx, %r15
	movq	%rsi, %r13
	movq	%rdi, %r12
	movl	$2, %edx
	cmpl	$0, 9480(%r12)
	jne	.LBB18_2
# BB#1:                                 # %select.mid
	xorl	%edx, %edx
.LBB18_2:                               # %select.end
	leaq	568(%rsp), %rsi
	xorl	%ecx, %ecx
	movq	%r12, %rdi
	callq	pdf_begin_data_stream
	testl	%eax, %eax
	js	.LBB18_14
# BB#3:                                 # %if.end
	movq	616(%rsp), %rax
	movq	%rax, (%r15)
	movq	$0, 56(%rax)
	cmpl	$0, 80(%r13)
	jne	.LBB18_9
# BB#4:                                 # %if.then.3
	movq	64(%rax), %rbp
	movl	72(%r13), %edx
	movl	$.L.str.14, %esi
	movq	%rbp, %rdi
	callq	cos_dict_put_c_key_int
	testl	%eax, %eax
	js	.LBB18_14
# BB#5:                                 # %if.end.8
	movb	$47, 352(%rsp)
	leaq	353(%rsp), %rdi
	movq	16(%r13), %rsi
	movl	24(%r13), %edx
	callq	memcpy
	movl	24(%r13), %ecx
	incl	%ecx
	leaq	352(%rsp), %rdx
	movl	$.L.str.15, %esi
	movq	%rbp, %rdi
	callq	cos_dict_put_c_key_string
	testl	%eax, %eax
	js	.LBB18_14
# BB#6:                                 # %if.end.19
	movq	24(%r12), %rsi
	leaq	(%rsp), %rbx
	movq	%rbx, %rdi
	callq	s_init
	leaq	352(%rsp), %rsi
	movl	$200, %edx
	movq	%rbx, %rdi
	callq	swrite_string
	movq	32(%r13), %rdx
	xorl	%ecx, %ecx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	pdf_write_cid_system_info_to_stream
	testl	%eax, %eax
	js	.LBB18_14
# BB#7:                                 # %if.end.25
	leaq	(%rsp), %rdi
	callq	stell
	leaq	352(%rsp), %rdx
	movl	$.L.str.16, %esi
	movq	%rbp, %rdi
	movl	%eax, %ecx
	callq	cos_dict_put_c_key_string
	testl	%eax, %eax
	js	.LBB18_14
# BB#8:                                 # %cleanup
	movl	$.L.str.17, %esi
	movl	$.L.str.18, %edx
	movq	%rbp, %rdi
	callq	cos_dict_put_string_copy
	testl	%eax, %eax
	js	.LBB18_14
.LBB18_9:
	leaq	24(%r13), %rax
	cmpl	$0, (%rax)
	je	.LBB18_11
# BB#10:
	leaq	16(%r13), %r15
	jmp	.LBB18_12
.LBB18_11:                              # %if.then.46
	movq	(%r15), %rdi
	addq	$32, %rdi
	movq	%rdi, 552(%rsp)
	callq	strlen
	movl	%eax, 560(%rsp)
	leaq	552(%rsp), %r15
.LBB18_12:                              # %if.end.54
	movq	24(%r12), %rbx
	movq	584(%rsp), %rbp
	movq	%r12, %rdi
	callq	pdf_put_name_chars_proc
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movq	%r13, %rdx
	movq	%rax, %rcx
	movq	%r15, %r8
	movl	%r14d, %r9d
	callq	psf_write_cmap
	testl	%eax, %eax
	js	.LBB18_14
# BB#13:                                # %if.end.61
	leaq	568(%rsp), %rdi
	callq	pdf_end_data
.LBB18_14:                              # %cleanup.67
	addq	$648, %rsp              # imm = 0x288
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end18:
	.size	pdf_write_cmap, .Lfunc_end18-pdf_write_cmap
	.cfi_endproc

	.globl	pdf_write_OneByteIdentityH
	.align	16, 0x90
	.type	pdf_write_OneByteIdentityH,@function
pdf_write_OneByteIdentityH:             # @pdf_write_OneByteIdentityH
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp160:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp161:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp162:
	.cfi_def_cfa_offset 32
	subq	$288, %rsp              # imm = 0x120
.Ltmp163:
	.cfi_def_cfa_offset 320
.Ltmp164:
	.cfi_offset %rbx, -32
.Ltmp165:
	.cfi_offset %r14, -24
.Ltmp166:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	cmpq	$0, 28664(%rbx)
	jne	.LBB19_3
# BB#1:                                 # %if.then
	movl	$17, %esi
	movq	%rbx, %rdi
	callq	pdf_begin_separate
	movq	%rax, %r14
	movq	5848(%rbx), %rsi
	movl	$pdf_write_OneByteIdentityH.cidsi, %edx
	movq	%rbx, %rdi
	movq	%r14, %rcx
	callq	pdf_write_cid_system_info_to_stream
	movl	%eax, %ebp
	movl	$17, %esi
	movq	%rbx, %rdi
	callq	pdf_end_separate
	testl	%ebp, %ebp
	js	.LBB19_13
# BB#2:                                 # %if.end
	movq	%r14, 28664(%rbx)
.LBB19_3:                               # %if.end.4
	xorl	%ebp, %ebp
	cmpq	$0, 28656(%rbx)
	jne	.LBB19_13
# BB#4:                                 # %if.end.7
	movl	$2, %edx
	cmpl	$0, 9480(%rbx)
	jne	.LBB19_6
# BB#5:                                 # %select.mid
	xorl	%edx, %edx
.LBB19_6:                               # %select.end
	leaq	208(%rsp), %rsi
	xorl	%ecx, %ecx
	movq	%rbx, %rdi
	callq	pdf_begin_data_stream
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB19_13
# BB#7:                                 # %if.end.11
	movq	256(%rsp), %rax
	movq	%rax, 28656(%rbx)
	movq	64(%rax), %r14
	movl	$.L.str.15, %esi
	movl	$.L.str.21, %edx
	movq	%r14, %rdi
	callq	cos_dict_put_string_copy
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB19_13
# BB#8:                                 # %if.end.17
	movq	28664(%rbx), %rdx
	leaq	(%rsp), %rbp
	movl	$.L.str.22, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	callq	gs_sprintf
	movl	$.L.str.16, %esi
	movq	%r14, %rdi
	movq	%rbp, %rdx
	callq	cos_dict_put_string_copy
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB19_13
# BB#9:                                 # %if.end.24
	movl	$.L.str.17, %esi
	movl	$.L.str.18, %edx
	movq	%r14, %rdi
	callq	cos_dict_put_string_copy
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB19_13
# BB#10:                                # %for.cond.preheader
	movq	$-192, %rbp
	.align	16, 0x90
.LBB19_11:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	OneByteIdentityH+192(%rbp), %rsi
	movq	5848(%rbx), %rdi
	callq	stream_puts
	movq	5848(%rbx), %rdi
	movl	$10, %esi
	callq	spputc
	addq	$8, %rbp
	jne	.LBB19_11
# BB#12:                                # %for.end
	leaq	208(%rsp), %rdi
	callq	pdf_end_data
	movl	%eax, %ebp
.LBB19_13:                              # %cleanup
	movl	%ebp, %eax
	addq	$288, %rsp              # imm = 0x120
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end19:
	.size	pdf_write_OneByteIdentityH, .Lfunc_end19-pdf_write_OneByteIdentityH
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI20_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	pdf_write_CIDFont_widths,@function
pdf_write_CIDFont_widths:               # @pdf_write_CIDFont_widths
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp167:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp168:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp169:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp170:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp171:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp172:
	.cfi_def_cfa_offset 56
	subq	$3208, %rsp             # imm = 0xC88
.Ltmp173:
	.cfi_def_cfa_offset 3264
.Ltmp174:
	.cfi_offset %rbx, -56
.Ltmp175:
	.cfi_offset %r12, -48
.Ltmp176:
	.cfi_offset %r13, -40
.Ltmp177:
	.cfi_offset %r14, -32
.Ltmp178:
	.cfi_offset %r15, -24
.Ltmp179:
	.cfi_offset %rbp, -16
	movl	%edx, 68(%rsp)          # 4-byte Spill
	movq	%rsi, %r14
	movq	%rdi, 48(%rsp)          # 8-byte Spill
	movq	5848(%rdi), %rax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	leaq	208(%r14), %rax
	movq	%r14, %rcx
	subq	$-128, %rcx
	leaq	224(%r14), %rsi
	leaq	136(%r14), %rdi
	testl	%edx, %edx
	cmovneq	%rax, %rcx
	movq	(%rcx), %rax
	movq	%rax, 72(%rsp)          # 8-byte Spill
	cmovneq	%rsi, %rdi
	movq	%rdi, 56(%rsp)          # 8-byte Spill
	movq	(%rdi), %rdx
	movl	120(%r14), %ecx
	xorl	%eax, %eax
	movq	%rax, 80(%rsp)          # 8-byte Spill
	leaq	3160(%rsp), %rbp
	xorl	%esi, %esi
	movl	$1, %r8d
	movq	%rbp, %rdi
	callq	psf_enumerate_bits_begin
	leaq	144(%rsp), %rdi
	xorl	%esi, %esi
	movl	$3000, %edx             # imm = 0xBB8
	callq	memset
	movl	$2147483648, %r15d      # imm = 0x80000000
	leaq	3152(%rsp), %rbx
	movl	$1499, %r13d            # imm = 0x5DB
	xorl	%r12d, %r12d
	jmp	.LBB20_1
.LBB20_12:                              # %if.else.i
                                        #   in Loop: Header=BB20_1 Depth=1
	shrl	$31, %eax
	addl	%eax, %r12d
	.align	16, 0x90
.LBB20_1:                               # %while.cond.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	callq	psf_enumerate_glyphs_next
	testl	%eax, %eax
	jne	.LBB20_2
# BB#9:                                 # %while.body.i
                                        #   in Loop: Header=BB20_1 Depth=1
	movq	3152(%rsp), %rax
	addq	%r15, %rax
	cmpl	120(%r14), %eax
	jae	.LBB20_1
# BB#10:                                # %if.then.i
                                        #   in Loop: Header=BB20_1 Depth=1
	shlq	$32, %rax
	sarq	$29, %rax
	movq	72(%rsp), %rcx          # 8-byte Reload
	movsd	(%rcx,%rax), %xmm0      # xmm0 = mem[0],zero
	addsd	.LCPI20_0(%rip), %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, %ecx
	negl	%ecx
	cmovll	%eax, %ecx
	cmpl	$1499, %ecx             # imm = 0x5DB
	movslq	%ecx, %rcx
	cmovaeq	%r13, %rcx
	incw	144(%rsp,%rcx,2)
	testl	%eax, %eax
	jle	.LBB20_12
# BB#11:                                # %if.then.39.i
                                        #   in Loop: Header=BB20_1 Depth=1
	movq	80(%rsp), %rax          # 8-byte Reload
	incl	%eax
	movq	%rax, 80(%rsp)          # 8-byte Spill
	jmp	.LBB20_1
.LBB20_2:                               # %for.body.i.preheader
	cmpl	$0, 68(%rsp)            # 4-byte Folded Reload
	movl	$.L.str.41, %eax
	movl	$.L.str.42, %ecx
	cmovneq	%rax, %rcx
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	xorl	%r13d, %r13d
	movl	$1, %eax
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB20_3:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movzwl	144(%rsp,%rax,2), %ecx
	cmpl	%r13d, %ecx
	cmovgl	%eax, %ebp
	cmovgel	%ecx, %r13d
	incq	%rax
	cmpq	$1500, %rax             # imm = 0x5DC
	jne	.LBB20_3
# BB#4:                                 # %for.end.i
	movl	%ebp, %ebx
	negl	%ebx
	movq	80(%rsp), %rax          # 8-byte Reload
	cmpl	%eax, %r12d
	movl	%ebp, %eax
	cmovgl	%ebx, %eax
	movl	%eax, 64(%rsp)          # 4-byte Spill
	movl	$0, 44(%rsp)            # 4-byte Folded Spill
	cmpl	$0, 68(%rsp)            # 4-byte Folded Reload
	je	.LBB20_15
# BB#5:                                 # %if.then.69.i
	leaq	3160(%rsp), %r12
	movq	%r12, %rdi
	callq	psf_enumerate_glyphs_reset
	leaq	3152(%rsp), %rsi
	movq	%r12, %rdi
	callq	psf_enumerate_glyphs_next
	testl	%eax, %eax
	jne	.LBB20_15
# BB#6:                                 # %while.body.74.lr.ph.i
	testl	%ebp, %ebp
	cmovnsl	%ebp, %ebx
	movslq	%ebx, %rbx
	leaq	3160(%rsp), %r12
	leaq	3152(%rsp), %rbp
	.align	16, 0x90
.LBB20_7:                               # %while.body.74.i
                                        # =>This Inner Loop Header: Depth=1
	movq	3152(%rsp), %rax
	addq	%r15, %rax
	cmpl	120(%r14), %eax
	jae	.LBB20_8
# BB#13:                                # %if.then.81.i
                                        #   in Loop: Header=BB20_7 Depth=1
	movq	%rax, %rcx
	shlq	$32, %rcx
	sarq	$29, %rcx
	movq	72(%rsp), %rdx          # 8-byte Reload
	movsd	(%rdx,%rcx), %xmm0      # xmm0 = mem[0],zero
	addsd	.LCPI20_0(%rip), %xmm0
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, %edx
	negl	%edx
	cmovll	%ecx, %edx
	cmpl	$1499, %edx             # imm = 0x5DB
	movslq	%edx, %rcx
	movl	$1499, %edx             # imm = 0x5DB
	cmovaeq	%rdx, %rcx
	cmpq	%rbx, %rcx
	je	.LBB20_14
.LBB20_8:                               # %while.cond.70.backedge.i
                                        #   in Loop: Header=BB20_7 Depth=1
	movq	%r12, %rdi
	movq	%rbp, %rsi
	callq	psf_enumerate_glyphs_next
	testl	%eax, %eax
	je	.LBB20_7
	jmp	.LBB20_15
.LBB20_14:                              # %cleanup.129.i
	leal	1(%rax,%rax), %eax
	cltq
	movq	216(%r14), %rcx
	movsd	(%rcx,%rax,8), %xmm0    # xmm0 = mem[0],zero
	addsd	.LCPI20_0(%rip), %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, 44(%rsp)          # 4-byte Spill
.LBB20_15:                              # %pdf_compute_CIDFont_default_widths.exit
	movq	56(%rsp), %rbx          # 8-byte Reload
	movzwl	144(%rsp), %eax
	addl	%r13d, %eax
	jle	.LBB20_19
# BB#16:                                # %if.then
	cmpl	$0, 68(%rsp)            # 4-byte Folded Reload
	je	.LBB20_18
# BB#17:                                # %if.then.5
	movl	$.L.str.43, %esi
	movq	32(%rsp), %rdi          # 8-byte Reload
	movl	44(%rsp), %edx          # 4-byte Reload
	movl	64(%rsp), %ecx          # 4-byte Reload
	callq	pprintd2
	jmp	.LBB20_19
.LBB20_18:                              # %if.else
	movl	$.L.str.44, %esi
	movq	32(%rsp), %rdi          # 8-byte Reload
	movl	64(%rsp), %edx          # 4-byte Reload
	callq	pprintd1
.LBB20_19:                              # %if.end.8
	movq	(%rbx), %rdx
	movl	120(%r14), %ecx
	leaq	96(%rsp), %rbx
	xorl	%esi, %esi
	movl	$1, %r8d
	movq	%rbx, %rdi
	callq	psf_enumerate_bits_begin
	leaq	88(%rsp), %rsi
	movq	%rbx, %rdi
	callq	psf_enumerate_glyphs_next
	testl	%eax, %eax
	jne	.LBB20_52
# BB#20:                                # %while.body.lr.ph.lr.ph
	movl	$-2, %eax
	leaq	96(%rsp), %r13
	leaq	88(%rsp), %rbp
	jmp	.LBB20_21
.LBB20_33:                              # %if.else.80
                                        #   in Loop: Header=BB20_21 Depth=1
	movl	$.L.str.3, %esi
	movq	32(%rsp), %rdi          # 8-byte Reload
	movl	%r13d, %edx
	callq	pprintd1
	movq	%rbp, %r13
	movq	%rbx, %rbp
	movq	56(%rsp), %r12          # 8-byte Reload
	jmp	.LBB20_49
	.align	16, 0x90
.LBB20_21:                              # %while.body.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB20_22 Depth 2
	movq	%rax, 24(%rsp)          # 8-byte Spill
	leal	1(%rax), %eax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	.align	16, 0x90
.LBB20_22:                              # %while.body
                                        #   Parent Loop BB20_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	88(%rsp), %r12
	addq	%r15, %r12
	movq	%r12, %rax
	shlq	$32, %rax
	sarq	$29, %rax
	movq	72(%rsp), %rcx          # 8-byte Reload
	movsd	(%rcx,%rax), %xmm0      # xmm0 = mem[0],zero
	movsd	%xmm0, 80(%rsp)         # 8-byte Spill
	xorl	%esi, %esi
	movq	%r14, %rdi
	callq	pdf_font_resource_font
	movq	%rax, %rbx
	cmpl	$42, 128(%rbx)
	jne	.LBB20_28
# BB#23:                                # %if.then.21
                                        #   in Loop: Header=BB20_22 Depth=2
	movzbl	88(%rsp), %esi
	xorl	%edx, %edx
	movq	%rbx, %rdi
	callq	*200(%rbx)
	testl	%r12d, %r12d
	jne	.LBB20_26
# BB#24:                                # %if.then.21
                                        #   in Loop: Header=BB20_22 Depth=2
	cmpq	$2147483647, %rax       # imm = 0x7FFFFFFF
	jne	.LBB20_26
# BB#25:                                # %if.then.29
                                        #   in Loop: Header=BB20_22 Depth=2
	xorl	%esi, %esi
	movq	%r14, %rdi
	callq	pdf_font_resource_font
	movq	%rax, %rdi
	callq	copied_get_notdef
.LBB20_26:                              # %if.end.32
                                        #   in Loop: Header=BB20_22 Depth=2
	cmpq	$2147483647, %rax       # imm = 0x7FFFFFFF
	je	.LBB20_42
# BB#27:                                # %if.end.36
                                        #   in Loop: Header=BB20_22 Depth=2
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movq	%rbx, %rdi
	movq	%rax, %rsi
	jmp	.LBB20_29
	.align	16, 0x90
.LBB20_28:                              # %if.else.44
                                        #   in Loop: Header=BB20_22 Depth=2
	movq	88(%rsp), %rsi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movq	%rbx, %rdi
.LBB20_29:                              # %if.else.44
                                        #   in Loop: Header=BB20_22 Depth=2
	leaq	144(%rsp), %r8
	callq	*224(%rbx)
	testl	%eax, %eax
	js	.LBB20_42
# BB#30:                                # %cleanup.cont.56
                                        #   in Loop: Header=BB20_22 Depth=2
	movq	%rbp, %rbx
	movq	%r13, %rbp
	movsd	.LCPI20_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	80(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %r13d
	movq	56(%rsp), %rax          # 8-byte Reload
	cmpl	%eax, %r12d
	je	.LBB20_31
# BB#34:                                # %if.else.83
                                        #   in Loop: Header=BB20_22 Depth=2
	cmpl	64(%rsp), %r13d         # 4-byte Folded Reload
	jne	.LBB20_39
# BB#35:                                # %if.else.83
                                        #   in Loop: Header=BB20_22 Depth=2
	movq	48(%rsp), %rax          # 8-byte Reload
	movl	9564(%rax), %eax
	testl	%eax, %eax
	jne	.LBB20_39
# BB#36:                                # %land.lhs.true.89
                                        #   in Loop: Header=BB20_22 Depth=2
	cmpl	$0, 68(%rsp)            # 4-byte Folded Reload
	movq	%rbp, %r13
	movq	%rbx, %rbp
	je	.LBB20_42
# BB#37:                                # %lor.lhs.false
                                        #   in Loop: Header=BB20_22 Depth=2
	movslq	%r12d, %rdx
	leal	(%r12,%r12), %eax
	movslq	%eax, %rsi
	movq	128(%r14), %rdi
	movq	216(%r14), %rcx
	movsd	(%rcx,%rsi,8), %xmm0    # xmm0 = mem[0],zero
	movsd	.LCPI20_0(%rip), %xmm1  # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %esi
	movsd	(%rdi,%rdx,8), %xmm0    # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %edx
	cmpl	%edx, %esi
	jne	.LBB20_38
# BB#41:                                # %lor.lhs.false.109
                                        #   in Loop: Header=BB20_22 Depth=2
	orl	$1, %eax
	cltq
	movsd	(%rcx,%rax,8), %xmm0    # xmm0 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	cmpl	44(%rsp), %eax          # 4-byte Folded Reload
	jne	.LBB20_38
.LBB20_42:                              # %while.cond.backedge
                                        #   in Loop: Header=BB20_22 Depth=2
	movq	%r13, %rdi
	movq	%rbp, %rsi
	callq	psf_enumerate_glyphs_next
	testl	%eax, %eax
	je	.LBB20_22
	jmp	.LBB20_43
	.align	16, 0x90
.LBB20_38:                              #   in Loop: Header=BB20_21 Depth=1
	movq	%rbp, %rbx
	movq	%r13, %rbp
	movl	64(%rsp), %r13d         # 4-byte Reload
.LBB20_39:                              # %if.else.122
                                        #   in Loop: Header=BB20_21 Depth=1
	movq	24(%rsp), %rax          # 8-byte Reload
	testl	%eax, %eax
	js	.LBB20_44
# BB#40:                                # %if.then.125
                                        #   in Loop: Header=BB20_21 Depth=1
	movl	$.L.str.33, %esi
	jmp	.LBB20_45
.LBB20_31:                              # %if.then.60
                                        #   in Loop: Header=BB20_21 Depth=1
	cmpl	$0, 68(%rsp)            # 4-byte Folded Reload
	je	.LBB20_33
# BB#32:                                # %if.then.62
                                        #   in Loop: Header=BB20_21 Depth=1
	movq	56(%rsp), %r12          # 8-byte Reload
	leal	(%r12,%r12), %eax
	cltq
	movq	216(%r14), %rdx
	movsd	(%rdx,%rax,8), %xmm0    # xmm0 = mem[0],zero
	movsd	.LCPI20_0(%rip), %xmm1  # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	leal	1(%r12,%r12), %eax
	cltq
	movsd	(%rdx,%rax,8), %xmm0    # xmm0 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %r8d
	movl	$.L.str.45, %esi
	movq	32(%rsp), %rdi          # 8-byte Reload
	movl	%r13d, %edx
	callq	pprintd3
	jmp	.LBB20_48
.LBB20_44:                              # %if.else.127
                                        #   in Loop: Header=BB20_21 Depth=1
	movq	32(%rsp), %rdi          # 8-byte Reload
	movq	16(%rsp), %rsi          # 8-byte Reload
	callq	stream_puts
	movl	$.L.str.46, %esi
.LBB20_45:                              # %if.end.130
                                        #   in Loop: Header=BB20_21 Depth=1
	movq	32(%rsp), %rdi          # 8-byte Reload
	callq	stream_puts
	cmpl	$0, 68(%rsp)            # 4-byte Folded Reload
	je	.LBB20_47
# BB#46:                                # %if.then.132
                                        #   in Loop: Header=BB20_21 Depth=1
	leal	(%r12,%r12), %eax
	cltq
	movq	216(%r14), %rcx
	movsd	(%rcx,%rax,8), %xmm0    # xmm0 = mem[0],zero
	movsd	.LCPI20_0(%rip), %xmm1  # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %r8d
	leal	1(%r12,%r12), %eax
	cltq
	movsd	(%rcx,%rax,8), %xmm0    # xmm0 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %r9d
	movl	$.L.str.47, %esi
	movq	32(%rsp), %rdi          # 8-byte Reload
	movl	%r12d, %edx
	movl	%r13d, %ecx
	callq	pprintd4
	jmp	.LBB20_48
.LBB20_47:                              # %if.else.154
                                        #   in Loop: Header=BB20_21 Depth=1
	movl	$.L.str.48, %esi
	movq	32(%rsp), %rdi          # 8-byte Reload
	movl	%r12d, %edx
	movl	%r13d, %ecx
	callq	pprintd2
.LBB20_48:                              # %while.cond.outer.backedge
                                        #   in Loop: Header=BB20_21 Depth=1
	movq	%rbp, %r13
	movq	%rbx, %rbp
.LBB20_49:                              # %while.cond.outer.backedge
                                        #   in Loop: Header=BB20_21 Depth=1
	movq	%r13, %rdi
	movq	%rbp, %rsi
	callq	psf_enumerate_glyphs_next
	testl	%eax, %eax
	movl	%r12d, %eax
	je	.LBB20_21
	jmp	.LBB20_50
.LBB20_43:
	movq	24(%rsp), %r12          # 8-byte Reload
.LBB20_50:                              # %while.end
	testl	%r12d, %r12d
	js	.LBB20_52
# BB#51:                                # %if.then.165
	movl	$.L.str.49, %esi
	movq	32(%rsp), %rdi          # 8-byte Reload
	callq	stream_puts
.LBB20_52:                              # %if.end.167
	addq	$3208, %rsp             # imm = 0xC88
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end20:
	.size	pdf_write_CIDFont_widths, .Lfunc_end20-pdf_write_CIDFont_widths
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"<</Type/Encoding"
	.size	.L.str, 17

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"/BaseEncoding/%s"
	.size	.L.str.1, 17

	.type	encoding_names,@object  # @encoding_names
	.section	.rodata,"a",@progbits
	.align	16
encoding_names:
	.quad	.L.str.23
	.quad	.L.str.24
	.quad	.L.str.25
	.quad	.L.str.26
	.quad	.L.str.27
	.quad	.L.str.28
	.quad	.L.str.29
	.size	encoding_names, 56

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"/Differences["
	.size	.L.str.2, 14

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"\n%d"
	.size	.L.str.3, 4

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"\n"
	.size	.L.str.4, 2

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"]>>\n"
	.size	.L.str.5, 5

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"/Encoding %ld 0 R"
	.size	.L.str.6, 18

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"/Encoding/%s"
	.size	.L.str.7, 13

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"/Encoding %s"
	.size	.L.str.8, 13

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"/DescendantFonts[%ld 0 R]"
	.size	.L.str.9, 26

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"/Subtype/Type0>>\n"
	.size	.L.str.10, 18

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"/Subtype/Type3>>\n"
	.size	.L.str.11, 18

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"/CIDToGIDMap %ld 0 R\n"
	.size	.L.str.12, 22

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"/CIDToGIDMap /Identity\n"
	.size	.L.str.13, 24

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"/WMode"
	.size	.L.str.14, 7

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"/CMapName"
	.size	.L.str.15, 10

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"/CIDSystemInfo"
	.size	.L.str.16, 15

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"/Type"
	.size	.L.str.17, 6

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"/CMap"
	.size	.L.str.18, 6

	.type	pdf_write_OneByteIdentityH.cidsi,@object # @pdf_write_OneByteIdentityH.cidsi
	.section	.rodata,"a",@progbits
	.align	8
pdf_write_OneByteIdentityH.cidsi:
	.quad	.L.str.19
	.long	5                       # 0x5
	.zero	4
	.quad	.L.str.20
	.long	8                       # 0x8
	.zero	4
	.long	0                       # 0x0
	.zero	4
	.size	pdf_write_OneByteIdentityH.cidsi, 40

	.type	.L.str.19,@object       # @.str.19
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.19:
	.asciz	"Adobe"
	.size	.L.str.19, 6

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"Identity"
	.size	.L.str.20, 9

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"/OneByteIdentityH"
	.size	.L.str.21, 18

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"%ld 0 R"
	.size	.L.str.22, 8

	.type	OneByteIdentityH,@object # @OneByteIdentityH
	.section	.rodata,"a",@progbits
	.align	16
OneByteIdentityH:
	.quad	.L.str.64
	.quad	.L.str.65
	.quad	.L.str.66
	.quad	.L.str.67
	.quad	.L.str.68
	.quad	.L.str.69
	.quad	.L.str.70
	.quad	.L.str.71
	.quad	.L.str.72
	.quad	.L.str.73
	.quad	.L.str.74
	.quad	.L.str.75
	.quad	.L.str.76
	.quad	.L.str.77
	.quad	.L.str.78
	.quad	.L.str.79
	.quad	.L.str.80
	.quad	.L.str.81
	.quad	.L.str.82
	.quad	.L.str.83
	.quad	.L.str.84
	.quad	.L.str.85
	.quad	.L.str.86
	.quad	.L.str.86
	.quad	0
	.size	OneByteIdentityH, 200

	.type	.L.str.23,@object       # @.str.23
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.23:
	.asciz	"StandardEncoding"
	.size	.L.str.23, 17

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"ISOLatin1Encoding"
	.size	.L.str.24, 18

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"SymbolEncoding"
	.size	.L.str.25, 15

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"DingbatsEncoding"
	.size	.L.str.26, 17

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"WinAnsiEncoding"
	.size	.L.str.27, 16

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"MacRomanEncoding"
	.size	.L.str.28, 17

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"MacExpertEncoding"
	.size	.L.str.29, 18

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"/FirstChar %d/LastChar %d/Widths["
	.size	.L.str.30, 34

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	" %g"
	.size	.L.str.31, 4

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"\n%g"
	.size	.L.str.32, 4

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"]\n"
	.size	.L.str.33, 3

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"/Subtype/%s>>\n"
	.size	.L.str.34, 15

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"TrueType"
	.size	.L.str.35, 9

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"MMType1"
	.size	.L.str.36, 8

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"Type1"
	.size	.L.str.37, 6

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"/DW 0\n"
	.size	.L.str.38, 7

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"/CIDSystemInfo %ld 0 R"
	.size	.L.str.39, 23

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"/Subtype/CIDFontType%d>>\n"
	.size	.L.str.40, 26

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"/W2"
	.size	.L.str.41, 4

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"/W"
	.size	.L.str.42, 3

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"/DW2 [%d %d]\n"
	.size	.L.str.43, 14

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"/DW %d\n"
	.size	.L.str.44, 8

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"\n%d %d %d"
	.size	.L.str.45, 10

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"["
	.size	.L.str.46, 2

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"%d[%d %d %d"
	.size	.L.str.47, 12

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"%d[%d"
	.size	.L.str.48, 6

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"]]\n"
	.size	.L.str.49, 4

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"<<"
	.size	.L.str.50, 3

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"/BaseFont"
	.size	.L.str.51, 10

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"/FontDescriptor %ld 0 R"
	.size	.L.str.52, 24

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"/ToUnicode %ld 0 R"
	.size	.L.str.53, 19

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"/Type/Font\n"
	.size	.L.str.54, 12

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"/Type/Font/Name/R%ld\n"
	.size	.L.str.55, 22

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"/.Global true\n"
	.size	.L.str.56, 15

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"/Resources %ld 0 R\n"
	.size	.L.str.57, 20

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"temporary buffer for Registry"
	.size	.L.str.58, 30

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"free temporary Registry buffer"
	.size	.L.str.59, 31

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"free temporary Ordering buffer"
	.size	.L.str.60, 31

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"<<\n/Registry"
	.size	.L.str.61, 13

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"\n/Ordering"
	.size	.L.str.62, 11

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"\n/Supplement %d\n>>\n"
	.size	.L.str.63, 20

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"/CIDInit /ProcSet findresource begin"
	.size	.L.str.64, 37

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"12 dict begin"
	.size	.L.str.65, 14

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"begincmap"
	.size	.L.str.66, 10

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"/CIDSystemInfo 3 dict dup begin"
	.size	.L.str.67, 32

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"/Registry (Adobe) def"
	.size	.L.str.68, 22

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"/Ordering (Identity) def"
	.size	.L.str.69, 25

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"/Supplement 0 def"
	.size	.L.str.70, 18

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"end def"
	.size	.L.str.71, 8

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"/CMapName /OneByteIdentityH def"
	.size	.L.str.72, 32

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"/CMapVersion 1.000 def"
	.size	.L.str.73, 23

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"/CMapType 1 def"
	.size	.L.str.74, 16

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"/UIDOffset 0 def"
	.size	.L.str.75, 17

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"/XUID [1 10 25404 9999] def"
	.size	.L.str.76, 28

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"/WMode 0 def"
	.size	.L.str.77, 13

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"1 begincodespacerange"
	.size	.L.str.78, 22

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"<00> <FF>"
	.size	.L.str.79, 10

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"endcodespacerange"
	.size	.L.str.80, 18

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"1 begincidrange"
	.size	.L.str.81, 16

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"<00> <FF> 0"
	.size	.L.str.82, 12

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"endcidrange"
	.size	.L.str.83, 12

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"endcmap"
	.size	.L.str.84, 8

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"CMapName currentdict /CMap defineresource pop"
	.size	.L.str.85, 46

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"end"
	.size	.L.str.86, 4


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
