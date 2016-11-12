	.text
	.file	"gdevpdfm.bc"
	.globl	pdf_key_eq
	.align	16, 0x90
	.type	pdf_key_eq,@function
pdf_key_eq:                             # @pdf_key_eq
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp2:
	.cfi_def_cfa_offset 32
.Ltmp3:
	.cfi_offset %rbx, -24
.Ltmp4:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	%r14, %rdi
	callq	strlen
	movl	8(%rbx), %ecx
	cmpq	%rcx, %rax
	jne	.LBB0_1
# BB#2:                                 # %land.rhs
	movq	(%rbx), %rsi
	movq	%r14, %rdi
	movq	%rax, %rdx
	callq	strncmp
	testl	%eax, %eax
	sete	%al
	jmp	.LBB0_3
.LBB0_1:
	xorl	%eax, %eax
.LBB0_3:                                # %land.end
	movzbl	%al, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end0:
	.size	pdf_key_eq, .Lfunc_end0-pdf_key_eq
	.cfi_endproc

	.globl	pdfmark_scan_int
	.align	16, 0x90
	.type	pdfmark_scan_int,@function
pdfmark_scan_int:                       # @pdfmark_scan_int
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp5:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp6:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp7:
	.cfi_def_cfa_offset 32
	subq	$32, %rsp
.Ltmp8:
	.cfi_def_cfa_offset 64
.Ltmp9:
	.cfi_offset %rbx, -32
.Ltmp10:
	.cfi_offset %r14, -24
.Ltmp11:
	.cfi_offset %r15, -16
	movq	%rsi, %r14
	movl	8(%rdi), %ebx
	cmpq	$20, %rbx
	movl	$-13, %eax
	ja	.LBB1_2
# BB#1:                                 # %if.end
	movq	(%rdi), %rsi
	leaq	(%rsp), %r15
	movq	%r15, %rdi
	movq	%rbx, %rdx
	callq	memcpy
	movb	$0, (%rsp,%rbx)
	xorl	%ebx, %ebx
	movl	$.L.str, %esi
	xorl	%eax, %eax
	movq	%r15, %rdi
	movq	%r14, %rdx
	callq	__isoc99_sscanf
	cmpl	$1, %eax
	movl	$-15, %eax
	cmovel	%ebx, %eax
.LBB1_2:                                # %cleanup
	addq	$32, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end1:
	.size	pdfmark_scan_int, .Lfunc_end1-pdfmark_scan_int
	.cfi_endproc

	.globl	pdfmark_close_outline
	.align	16, 0x90
	.type	pdfmark_close_outline,@function
pdfmark_close_outline:                  # @pdfmark_close_outline
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp12:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp13:
	.cfi_def_cfa_offset 24
	pushq	%r13
.Ltmp14:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp15:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp16:
	.cfi_def_cfa_offset 48
.Ltmp17:
	.cfi_offset %rbx, -48
.Ltmp18:
	.cfi_offset %r12, -40
.Ltmp19:
	.cfi_offset %r13, -32
.Ltmp20:
	.cfi_offset %r14, -24
.Ltmp21:
	.cfi_offset %r15, -16
	movq	%rdi, %r15
	movslq	28680(%r15), %r13
	movq	28672(%r15), %r12
	imulq	$120, %r13, %rbx
	leaq	56(%r12,%rbx), %r14
	xorl	%eax, %eax
	cmpq	$0, 56(%r12,%rbx)
	je	.LBB2_2
# BB#1:                                 # %if.then
	xorl	%edx, %edx
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	pdfmark_write_outline
.LBB2_2:                                # %if.end
	testl	%r13d, %r13d
	jle	.LBB2_12
# BB#3:                                 # %if.then.2
	leaq	(%r12,%rbx), %rdx
	movq	(%r14), %rcx
	movq	%rcx, -32(%rdx)
	movl	96(%r12,%rbx), %esi
	testl	%esi, %esi
	jle	.LBB2_4
# BB#5:                                 # %if.then.i
	movl	-24(%rdx), %ecx
	testl	%ecx, %ecx
	js	.LBB2_6
# BB#7:                                 # %if.else.i
	addl	%esi, %ecx
	jmp	.LBB2_8
.LBB2_4:                                # %if.then.2.pdfmark_adjust_parent_count.exit_crit_edge
	movl	-24(%rdx), %ecx
	jmp	.LBB2_9
.LBB2_6:                                # %if.then.5.i
	subl	%esi, %ecx
.LBB2_8:                                # %pdfmark_adjust_parent_count.exit
	movl	%ecx, -24(%rdx)
.LBB2_9:                                # %pdfmark_adjust_parent_count.exit
	testl	%ecx, %ecx
	jns	.LBB2_11
# BB#10:                                # %if.then.9
	decl	28688(%r15)
.LBB2_11:                               # %if.end.10
	decl	28680(%r15)
.LBB2_12:                               # %if.end.13
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.Lfunc_end2:
	.size	pdfmark_close_outline, .Lfunc_end2-pdfmark_close_outline
	.cfi_endproc

	.align	16, 0x90
	.type	pdfmark_write_outline,@function
pdfmark_write_outline:                  # @pdfmark_write_outline
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
.Ltmp27:
	.cfi_offset %rbx, -48
.Ltmp28:
	.cfi_offset %r12, -40
.Ltmp29:
	.cfi_offset %r14, -32
.Ltmp30:
	.cfi_offset %r15, -24
.Ltmp31:
	.cfi_offset %rbp, -16
	movq	%rdx, %r15
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	(%rbx), %rsi
	movl	$21, %edx
	callq	pdf_open_separate
	movq	48(%rbx), %rax
	testq	%rax, %rax
	je	.LBB3_2
# BB#1:                                 # %if.then
	movq	(%rbx), %rcx
	movq	%rcx, 8(%rax)
	xorl	%r12d, %r12d
	jmp	.LBB3_3
.LBB3_2:                                # %if.else
	movq	24(%r14), %r12
	callq	gs_program_name
	movq	%rax, %rbp
	callq	gs_revision_number
	movq	%r12, %rdi
	movq	%rbp, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	24(%r14), %rdi
	movq	(%rbx), %rdx
	movl	$.L.str.6, %esi
	xorl	%eax, %eax
	callq	errprintf
	movl	$-21, %r12d
.LBB3_3:                                # %if.end
	movq	5848(%r14), %rbp
	movl	$.L.str.7, %esi
	movq	%rbp, %rdi
	callq	stream_puts
	movq	48(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB3_5
# BB#4:                                 # %if.then.12
	movq	%r14, %rsi
	callq	cos_dict_elements_write
.LBB3_5:                                # %if.end.15
	movl	40(%rbx), %edx
	testl	%edx, %edx
	je	.LBB3_7
# BB#6:                                 # %if.then.16
	movl	$.L.str.8, %esi
	movq	%rbp, %rdi
	callq	pprintd1
.LBB3_7:                                # %if.end.19
	movq	8(%rbx), %rdx
	movl	$.L.str.9, %esi
	movq	%rbp, %rdi
	callq	pprintld1
	movq	16(%rbx), %rdx
	testq	%rdx, %rdx
	je	.LBB3_9
# BB#8:                                 # %if.then.22
	movl	$.L.str.10, %esi
	movq	%rbp, %rdi
	callq	pprintld1
.LBB3_9:                                # %if.end.25
	testq	%r15, %r15
	je	.LBB3_11
# BB#10:                                # %if.then.27
	movl	$.L.str.11, %esi
	movq	%rbp, %rdi
	movq	%r15, %rdx
	callq	pprintld1
.LBB3_11:                               # %if.end.29
	movq	24(%rbx), %rdx
	testq	%rdx, %rdx
	je	.LBB3_13
# BB#12:                                # %if.then.31
	movq	32(%rbx), %rcx
	movl	$.L.str.12, %esi
	movq	%rbp, %rdi
	callq	pprintld2
.LBB3_13:                               # %if.end.34
	movl	$.L.str.13, %esi
	movq	%rbp, %rdi
	callq	stream_puts
	movl	$21, %esi
	movq	%r14, %rdi
	callq	pdf_end_separate
	movq	48(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB3_15
# BB#14:                                # %if.then.39
	movl	$.L.str.14, %esi
	callq	cos_free
.LBB3_15:                               # %if.end.41
	movq	$0, 48(%rbx)
	movl	%r12d, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	pdfmark_write_outline, .Lfunc_end3-pdfmark_write_outline
	.cfi_endproc

	.globl	pdfmark_write_article
	.align	16, 0x90
	.type	pdfmark_write_article,@function
pdfmark_write_article:                  # @pdfmark_write_article
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp32:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp33:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp34:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp35:
	.cfi_def_cfa_offset 40
	subq	$168, %rsp
.Ltmp36:
	.cfi_def_cfa_offset 208
.Ltmp37:
	.cfi_offset %rbx, -40
.Ltmp38:
	.cfi_offset %r12, -32
.Ltmp39:
	.cfi_offset %r14, -24
.Ltmp40:
	.cfi_offset %r15, -16
	movq	%rdi, %rbx
	leaq	8(%rsp), %rdi
	movl	$160, %edx
	callq	memcpy
	movq	24(%rsp), %r14
	movq	96(%rsp), %rax
	testq	%rax, %rax
	je	.LBB4_1
# BB#2:                                 # %if.else
	leaq	96(%rsp), %rsi
	movq	%rax, 40(%rsp)
	movq	%r14, 120(%rsp)
	movq	%rbx, %rdi
	callq	pdfmark_write_bead
	jmp	.LBB4_3
.LBB4_1:                                # %if.then
	movq	%r14, 48(%rsp)
	movq	%r14, 40(%rsp)
.LBB4_3:                                # %if.end
	leaq	24(%rsp), %rsi
	movq	%rbx, %rdi
	callq	pdfmark_write_bead
	movq	16(%rsp), %r15
	movq	8(%r15), %rsi
	movl	$22, %edx
	movq	%rbx, %rdi
	callq	pdf_open_separate
	movq	5848(%rbx), %r12
	movl	$.L.str.1, %esi
	movq	%r12, %rdi
	movq	%r14, %rdx
	callq	pprintld1
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	cos_dict_elements_write
	movl	$.L.str.2, %esi
	movq	%r12, %rdi
	callq	stream_puts
	movl	$22, %esi
	movq	%rbx, %rdi
	callq	pdf_end_separate
	addq	$168, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end4:
	.size	pdfmark_write_article, .Lfunc_end4-pdfmark_write_article
	.cfi_endproc

	.align	16, 0x90
	.type	pdfmark_write_bead,@function
pdfmark_write_bead:                     # @pdfmark_write_bead
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp41:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp42:
	.cfi_def_cfa_offset 24
	pushq	%r13
.Ltmp43:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp44:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp45:
	.cfi_def_cfa_offset 48
	subq	$464, %rsp              # imm = 0x1D0
.Ltmp46:
	.cfi_def_cfa_offset 512
.Ltmp47:
	.cfi_offset %rbx, -48
.Ltmp48:
	.cfi_offset %r12, -40
.Ltmp49:
	.cfi_offset %r13, -32
.Ltmp50:
	.cfi_offset %r14, -24
.Ltmp51:
	.cfi_offset %r15, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	(%rbx), %rsi
	movl	$22, %edx
	callq	pdf_open_separate
	movq	5848(%r14), %r15
	movq	8(%rbx), %rdx
	movq	16(%rbx), %rcx
	movq	24(%rbx), %r8
	movl	$.L.str.15, %esi
	movq	%r15, %rdi
	callq	pprintld3
	movq	32(%rbx), %rdx
	testq	%rdx, %rdx
	je	.LBB5_2
# BB#1:                                 # %if.then
	movl	$.L.str.16, %esi
	movq	%r15, %rdi
	callq	pprintld1
.LBB5_2:                                # %if.end
	leaq	112(%rsp), %r12
	xorl	%esi, %esi
	movq	%r12, %rdi
	callq	s_init
	leaq	(%rsp), %r13
	movl	$99, %edx
	movq	%r12, %rdi
	movq	%r13, %rsi
	callq	swrite_string
	movsd	40(%rbx), %xmm0         # xmm0 = mem[0],zero
	movsd	48(%rbx), %xmm1         # xmm1 = mem[0],zero
	movsd	56(%rbx), %xmm2         # xmm2 = mem[0],zero
	movsd	64(%rbx), %xmm3         # xmm3 = mem[0],zero
	movl	$.L.str.18, %esi
	movq	%r12, %rdi
	callq	pprintg4
	movq	%r12, %rdi
	callq	stell
	movb	$0, (%rsp,%rax)
	movl	$.L.str.17, %esi
	movq	%r15, %rdi
	movq	%r13, %rdx
	callq	pprints1
	movl	$22, %esi
	movq	%r14, %rdi
	callq	pdf_end_separate
	addq	$464, %rsp              # imm = 0x1D0
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.Lfunc_end5:
	.size	pdfmark_write_bead, .Lfunc_end5-pdfmark_write_bead
	.cfi_endproc

	.globl	pdfmark_end_pagelabels
	.align	16, 0x90
	.type	pdfmark_end_pagelabels,@function
pdfmark_end_pagelabels:                 # @pdfmark_end_pagelabels
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%esi, %esi
	jmp	pdfmark_add_pagelabel   # TAILCALL
.Lfunc_end6:
	.size	pdfmark_end_pagelabels, .Lfunc_end6-pdfmark_end_pagelabels
	.cfi_endproc

	.align	16, 0x90
	.type	pdfmark_add_pagelabel,@function
pdfmark_add_pagelabel:                  # @pdfmark_add_pagelabel
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp52:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp53:
	.cfi_def_cfa_offset 24
	pushq	%r13
.Ltmp54:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp55:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp56:
	.cfi_def_cfa_offset 48
	subq	$32, %rsp
.Ltmp57:
	.cfi_def_cfa_offset 80
.Ltmp58:
	.cfi_offset %rbx, -48
.Ltmp59:
	.cfi_offset %r12, -40
.Ltmp60:
	.cfi_offset %r13, -32
.Ltmp61:
	.cfi_offset %r14, -24
.Ltmp62:
	.cfi_offset %r15, -16
	movq	%rsi, %r12
	movq	%rdi, %rbx
	xorl	%r15d, %r15d
	testq	%r12, %r12
	movl	$0, %r14d
	je	.LBB7_9
# BB#1:                                 # %if.then
	cmpq	$0, 28816(%rbx)
	jne	.LBB7_4
# BB#2:                                 # %if.then.1
	movl	$.L.str.19, %esi
	movq	%rbx, %rdi
	callq	cos_array_alloc
	movq	%rax, 28816(%rbx)
	movl	$-25, %r15d
	testq	%rax, %rax
	je	.LBB7_21
# BB#3:                                 # %if.end
	movq	%rbx, %rdi
	callq	pdf_obj_ref
	movq	28816(%rbx), %rcx
	movq	%rax, 8(%rcx)
	movl	$0, 28824(%rbx)
	movl	$.L.str.20, %esi
	movq	%rbx, %rdi
	callq	cos_dict_alloc
	movq	%rax, 28832(%rbx)
	testq	%rax, %rax
	je	.LBB7_21
.LBB7_4:                                # %if.end.13
	movl	$.L.str.21, %esi
	movq	%rbx, %rdi
	callq	cos_dict_alloc
	movq	%rax, %r14
	movl	$-25, %r15d
	testq	%r14, %r14
	je	.LBB7_21
# BB#5:                                 # %if.end.17
	movq	(%r12), %rsi
	movl	8(%r12), %edx
	leaq	8(%rsp), %rdi
	callq	cos_string_value
	movl	$.L.str.22, %esi
	movq	%r14, %rdi
	movq	%rax, %rdx
	callq	cos_dict_put_c_key
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB7_6
# BB#7:                                 # %lor.lhs.false
	movl	26544(%rbx), %eax
	cmpl	28824(%rbx), %eax
	jne	.LBB7_9
# BB#8:                                 # %lor.lhs.false.if.end.70_crit_edge
	leaq	28832(%rbx), %r13
	jmp	.LBB7_18
.LBB7_9:                                # %if.then.27
	leaq	28832(%rbx), %r13
	cmpq	$0, 28832(%rbx)
	je	.LBB7_13
# BB#10:                                # %if.then.32
	movq	28816(%rbx), %rdi
	movl	28824(%rbx), %esi
	callq	cos_array_add_int
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB7_12
# BB#11:                                # %if.then.37
	movq	28816(%rbx), %r15
	movq	28832(%rbx), %rsi
	leaq	8(%rsp), %rdi
	callq	cos_object_value
	movq	%r15, %rdi
	movq	%rax, %rsi
	callq	cos_array_add
	movl	%eax, %r15d
.LBB7_12:                               # %if.end.44
	movq	$0, (%r13)
.LBB7_13:                               # %if.end.46
	cmpq	$0, 28816(%rbx)
	je	.LBB7_18
# BB#14:                                # %if.then.49
	movl	26544(%rbx), %eax
	subl	28824(%rbx), %eax
	cmpl	$2, %eax
	jl	.LBB7_18
# BB#15:                                # %if.then.53
	movl	$.L.str.23, %esi
	movq	%rbx, %rdi
	callq	cos_dict_alloc
	movq	%rax, %r12
	movl	$-25, %r15d
	testq	%r12, %r12
	je	.LBB7_21
# BB#16:                                # %if.end.57
	movq	28816(%rbx), %rdi
	movl	28824(%rbx), %esi
	incl	%esi
	callq	cos_array_add_int
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB7_18
# BB#17:                                # %if.then.62
	movq	28816(%rbx), %r15
	leaq	8(%rsp), %rdi
	movq	%r12, %rsi
	callq	cos_object_value
	movq	%r15, %rdi
	movq	%rax, %rsi
	callq	cos_array_add
	movl	%eax, %r15d
.LBB7_18:                               # %if.end.70
	movq	(%r13), %rdi
	testq	%rdi, %rdi
	je	.LBB7_20
# BB#19:                                # %if.then.73
	movl	$.L.str.24, %esi
	callq	cos_free
.LBB7_20:                               # %if.end.76
	movq	%r14, (%r13)
	movl	26544(%rbx), %eax
	movl	%eax, 28824(%rbx)
	jmp	.LBB7_21
.LBB7_6:                                # %if.then.21
	movl	$.L.str.21, %esi
	movq	%r14, %rdi
	callq	cos_free
.LBB7_21:                               # %cleanup.80
	movl	%r15d, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.Lfunc_end7:
	.size	pdfmark_add_pagelabel, .Lfunc_end7-pdfmark_add_pagelabel
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI8_0:
	.quad	4634766966517661696     # double 72
	.text
	.globl	pdfmark_process
	.align	16, 0x90
	.type	pdfmark_process,@function
pdfmark_process:                        # @pdfmark_process
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
	subq	$296, %rsp              # imm = 0x128
.Ltmp69:
	.cfi_def_cfa_offset 352
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
	movq	%rdi, %r13
	movq	(%rsi), %r14
	movl	8(%rsi), %eax
	leal	-1(%rax), %ebp
	shlq	$4, %rbp
	movslq	-8(%r14,%rbp), %rbx
	cmpq	$199, %rbx
	ja	.LBB8_27
# BB#1:                                 # %if.end
	movq	%rax, 56(%rsp)          # 8-byte Spill
	leaq	(%r14,%rbp), %r15
	movq	-16(%r15), %rsi
	leaq	64(%rsp), %r12
	movq	%r12, %rdi
	movq	%rbx, %rdx
	callq	memcpy
	movb	$0, 64(%rsp,%rbx)
	leaq	276(%rsp), %rcx
	leaq	280(%rsp), %r8
	leaq	284(%rsp), %r9
	leaq	288(%rsp), %rax
	leaq	292(%rsp), %rdx
	movq	%rdx, 8(%rsp)
	movq	%rax, (%rsp)
	leaq	272(%rsp), %rdx
	movl	$.L.str.3, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	__isoc99_sscanf
	cmpl	$6, %eax
	jne	.LBB8_27
# BB#2:                                 # %cleanup.cont
	movq	%r13, 48(%rsp)          # 8-byte Spill
	movq	56(%rsp), %rax          # 8-byte Reload
	leal	-2(%rax), %eax
	movl	%eax, 40(%rsp)          # 4-byte Spill
	movl	8(%r14,%rbp), %ebp
	movl	$mark_names, %r12d
	movl	$.L.str.25, %ebx
	xorl	%r13d, %r13d
	.align	16, 0x90
.LBB8_3:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	callq	strlen
	cmpq	%rbp, %rax
	jne	.LBB8_26
# BB#4:                                 # %land.rhs.i
                                        #   in Loop: Header=BB8_3 Depth=1
	movq	(%r15), %rsi
	movq	%rbx, %rdi
	movq	%rbp, %rdx
	callq	strncmp
	testl	%eax, %eax
	je	.LBB8_5
.LBB8_26:                               # %for.inc.155
                                        #   in Loop: Header=BB8_3 Depth=1
	movq	24(%r12), %rbx
	addq	$24, %r12
	testq	%rbx, %rbx
	jne	.LBB8_3
	jmp	.LBB8_28
.LBB8_5:                                # %if.then.24
	movq	48(%rsp), %rcx          # 8-byte Reload
	movq	1728(%rcx), %rdi
	movzbl	16(%r12), %eax
	movl	%eax, %edx
	shrl	%edx
	andl	$1, %edx
	testb	$16, %al
	movl	40(%rsp), %r13d         # 4-byte Reload
	jne	.LBB8_7
# BB#6:                                 # %if.else
	movss	884(%rcx), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	888(%rcx), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm2
	movsd	.LCPI8_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movapd	%xmm0, %xmm3
	divsd	%xmm2, %xmm3
	cvtss2sd	%xmm1, %xmm1
	divsd	%xmm1, %xmm0
	movss	272(%rsp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm3, %xmm1
	cvtsd2ss	%xmm1, %xmm1
	movss	%xmm1, 272(%rsp)
	movss	276(%rsp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm1
	movss	%xmm1, 276(%rsp)
	movss	280(%rsp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm3, %xmm1
	cvtsd2ss	%xmm1, %xmm1
	movss	%xmm1, 280(%rsp)
	movss	284(%rsp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm1
	movss	%xmm1, 284(%rsp)
	movss	288(%rsp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm3, %xmm1
	cvtsd2ss	%xmm1, %xmm1
	movss	%xmm1, 288(%rsp)
	movss	292(%rsp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, 292(%rsp)
.LBB8_7:                                # %if.end.62
	movl	%edx, %ecx
	xorl	$1, %ecx
	testl	%r13d, %ecx
	je	.LBB8_8
.LBB8_27:                               # %cleanup.157.critedge
	movl	$-15, %r13d
.LBB8_28:                               # %cleanup.157
	movl	%r13d, %eax
	addq	$296, %rsp              # imm = 0x128
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB8_8:                                # %if.end.67
	movq	%rdi, 32(%rsp)          # 8-byte Spill
	movl	%ecx, 28(%rsp)          # 4-byte Spill
	movl	%edx, 24(%rsp)          # 4-byte Spill
	testb	$1, %al
	je	.LBB8_17
# BB#9:                                 # %if.end.67
	testl	%r13d, %r13d
	je	.LBB8_17
# BB#10:                                # %for.body.76.lr.ph
	movl	$.L.str.4, %edi
	callq	strlen
	movq	%rax, %rbp
	xorl	%ebx, %ebx
	movq	%r14, %r15
	.align	16, 0x90
.LBB8_11:                               # %for.body.76
                                        # =>This Inner Loop Header: Depth=1
	movl	8(%r15), %eax
	cmpq	%rax, %rbp
	jne	.LBB8_16
# BB#12:                                # %land.rhs.i.94
                                        #   in Loop: Header=BB8_11 Depth=1
	movq	(%r15), %rsi
	movl	$.L.str.4, %edi
	movq	%rbp, %rdx
	callq	strncmp
	testl	%eax, %eax
	je	.LBB8_13
.LBB8_16:                               # %for.inc
                                        #   in Loop: Header=BB8_11 Depth=1
	addq	$2, %rbx
	addq	$32, %r15
	cmpl	%r13d, %ebx
	jb	.LBB8_11
.LBB8_17:                               # %if.end.107
	movl	$16, %edx
	movl	$.L.str.5, %ecx
	movq	32(%rsp), %rdi          # 8-byte Reload
	movl	%r13d, %esi
	movl	%r13d, %ebx
	callq	*88(%rdi)
	movl	$-25, %r13d
	testq	%rax, %rax
	je	.LBB8_28
# BB#18:                                # %if.end.113
	movl	%ebx, %edx
	shlq	$4, %rdx
	movq	%rax, %rdi
	movq	%rax, 40(%rsp)          # 8-byte Spill
	movq	%r14, %rsi
	callq	memcpy
	xorl	%eax, %eax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	movl	%ebx, %r14d
.LBB8_19:                               # %copied
	movl	28(%rsp), %ebx          # 4-byte Reload
	movzbl	16(%r12), %eax
	testb	$8, %al
	movq	48(%rsp), %rdi          # 8-byte Reload
	jne	.LBB8_25
# BB#20:                                # %if.then.121
	testb	$4, %al
	movl	$1, %eax
	cmovnel	%eax, %ebx
	cmpl	%r14d, %ebx
	jae	.LBB8_25
# BB#21:                                # %for.body.130.lr.ph
	movl	$2, %r15d
	subl	24(%rsp), %r15d         # 4-byte Folded Reload
.LBB8_22:                               # %for.body.130
                                        # =>This Inner Loop Header: Depth=1
	movslq	%ebx, %rax
	shlq	$4, %rax
	movq	40(%rsp), %rcx          # 8-byte Reload
	leaq	(%rax,%rcx), %rsi
	movq	%rdi, %rbp
	movq	%rsi, %rdx
	callq	pdf_replace_names
	movl	%eax, %r13d
	testl	%r13d, %r13d
	js	.LBB8_23
# BB#24:                                # %for.inc.141
                                        #   in Loop: Header=BB8_22 Depth=1
	addl	%r15d, %ebx
	cmpl	%r14d, %ebx
	movq	%rbp, %rdi
	jb	.LBB8_22
.LBB8_25:                               # %cleanup.149
	leaq	272(%rsp), %rcx
	movq	40(%rsp), %rbx          # 8-byte Reload
	movq	%rbx, %rsi
	movl	%r14d, %edx
	movq	16(%rsp), %r8           # 8-byte Reload
	callq	*8(%r12)
	movl	%eax, %r13d
	movl	$.L.str.5, %edx
	movq	32(%rsp), %rdi          # 8-byte Reload
	movq	%rbx, %rsi
	callq	*24(%rdi)
	jmp	.LBB8_28
.LBB8_13:                               # %if.then.81
	movq	%rbx, %rbp
	shlq	$32, %rbp
	sarq	$28, %rbp
	orq	$16, %rbp
	movq	(%r14,%rbp), %rdi
	movl	8(%r14,%rbp), %esi
	callq	pdf_objname_is_valid
	testl	%eax, %eax
	movl	$-15, %r13d
	je	.LBB8_28
# BB#14:                                # %if.end.89
	movq	56(%rsp), %rsi          # 8-byte Reload
	addl	$-4, %esi
	movq	%rsi, 56(%rsp)          # 8-byte Spill
	movl	$16, %edx
	movl	$.L.str.5, %ecx
	movq	32(%rsp), %rdi          # 8-byte Reload
	callq	*88(%rdi)
	movl	$-25, %r13d
	testq	%rax, %rax
	je	.LBB8_28
# BB#15:                                # %if.end.94
	movq	%rbx, %r13
	shlq	$4, %r13
	leaq	(%rbp,%r14), %rcx
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	movq	%rax, %rdi
	movq	%r14, %rsi
	movq	%r13, %rdx
	movq	%rax, %rbp
	movq	%rbp, 40(%rsp)          # 8-byte Spill
	callq	memcpy
	addq	%rbp, %r13
	addq	$32, %r15
	movq	56(%rsp), %rax          # 8-byte Reload
	movl	%eax, %edx
	subl	%ebx, %edx
	shlq	$4, %rdx
	movq	%r13, %rdi
	movq	%r15, %rsi
	movq	%rax, %r14
	callq	memcpy
	jmp	.LBB8_19
.LBB8_23:                               # %if.then.138
	movl	$.L.str.5, %edx
	movq	32(%rsp), %rdi          # 8-byte Reload
	movq	40(%rsp), %rsi          # 8-byte Reload
	callq	*24(%rdi)
	jmp	.LBB8_28
.Lfunc_end8:
	.size	pdfmark_process, .Lfunc_end8-pdfmark_process
	.cfi_endproc

	.align	16, 0x90
	.type	pdfmark_ANN,@function
pdfmark_ANN:                            # @pdfmark_ANN
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$.L.str.68, %r9d
	jmp	pdfmark_annot           # TAILCALL
.Lfunc_end9:
	.size	pdfmark_ANN, .Lfunc_end9-pdfmark_ANN
	.cfi_endproc

	.align	16, 0x90
	.type	pdfmark_LNK,@function
pdfmark_LNK:                            # @pdfmark_LNK
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$.L.str.118, %r9d
	jmp	pdfmark_annot           # TAILCALL
.Lfunc_end10:
	.size	pdfmark_LNK, .Lfunc_end10-pdfmark_LNK
	.cfi_endproc

	.align	16, 0x90
	.type	pdfmark_OUT,@function
pdfmark_OUT:                            # @pdfmark_OUT
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
	subq	$104, %rsp
.Ltmp82:
	.cfi_def_cfa_offset 160
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
	movl	%edx, %r12d
	movq	%rsi, %rbx
	movq	%rdi, 40(%rsp)          # 8-byte Spill
	movslq	28680(%rdi), %rdx
	movq	28672(%rdi), %rax
	movl	$0, 76(%rsp)
	testl	%r12d, %r12d
	je	.LBB11_1
# BB#2:                                 # %for.body.lr.ph
	movq	%rcx, 24(%rsp)          # 8-byte Spill
	movq	%rdx, %rcx
	movq	%rcx, 32(%rsp)          # 8-byte Spill
	movq	%rax, 16(%rsp)          # 8-byte Spill
	xorl	%r14d, %r14d
	.align	16, 0x90
.LBB11_3:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%r14d, %ebp
	shlq	$4, %rbp
	movl	$.L.str.116, %edi
	callq	strlen
	movl	8(%rbx,%rbp), %ecx
	cmpq	%rcx, %rax
	jne	.LBB11_7
# BB#4:                                 # %land.rhs.i
                                        #   in Loop: Header=BB11_3 Depth=1
	leaq	(%rbp,%rbx), %r15
	movq	(%r15), %rsi
	movl	$.L.str.116, %edi
	movq	%rax, %rdx
	callq	strncmp
	testl	%eax, %eax
	jne	.LBB11_7
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB11_3 Depth=1
	movl	24(%r15), %r13d
	cmpq	$20, %r13
	ja	.LBB11_7
# BB#6:                                 # %if.end.i
                                        #   in Loop: Header=BB11_3 Depth=1
	movq	16(%r15), %rsi
	leaq	80(%rsp), %rbp
	movq	%rbp, %rdi
	movq	%r13, %rdx
	callq	memcpy
	movb	$0, 80(%rsp,%r13)
	movl	$.L.str, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	leaq	76(%rsp), %rdx
	callq	__isoc99_sscanf
	.align	16, 0x90
.LBB11_7:                               # %if.end
                                        #   in Loop: Header=BB11_3 Depth=1
	addl	$2, %r14d
	cmpl	%r12d, %r14d
	jb	.LBB11_3
# BB#8:                                 # %for.end
	cmpl	$0, 76(%rsp)
	je	.LBB11_9
# BB#10:                                # %land.lhs.true
	movq	40(%rsp), %rbp          # 8-byte Reload
	movl	28684(%rbp), %eax
	leal	-1(%rax), %ecx
	movq	32(%rsp), %rdx          # 8-byte Reload
	cmpl	%ecx, %edx
	jne	.LBB11_13
# BB#11:                                # %if.then.6
	movq	1728(%rbp), %rdi
	imull	$14400, %eax, %esi      # imm = 0x3840
	addl	$460800, %esi           # imm = 0x70800
	movl	$.L.str.142, %edx
	callq	*64(%rdi)
	movl	$-25, %r15d
	testq	%rax, %rax
	movq	%rax, %rcx
	je	.LBB11_47
# BB#12:                                # %cleanup.thread
	movq	28672(%rbp), %rsi
	movslq	28684(%rbp), %rax
	imulq	$120, %rax, %rdx
	movq	%rcx, %r14
	movq	%r14, 16(%rsp)          # 8-byte Spill
	movq	%r14, %rdi
	callq	memcpy
	movq	1728(%rbp), %rdi
	movq	28672(%rbp), %rsi
	movl	$.L.str.142, %edx
	callq	*24(%rdi)
	movq	%r14, 28672(%rbp)
	addl	$32, 28684(%rbp)
	jmp	.LBB11_13
.LBB11_1:
	movq	%rcx, 24(%rsp)          # 8-byte Spill
	movq	%rdx, %rcx
	movq	%rcx, 32(%rsp)          # 8-byte Spill
	movq	%rax, 16(%rsp)          # 8-byte Spill
	movq	40(%rsp), %rbp          # 8-byte Reload
	jmp	.LBB11_13
.LBB11_9:
	movq	40(%rsp), %rbp          # 8-byte Reload
.LBB11_13:                              # %if.end.31
	movl	$.L.str.143, %esi
	movq	%rbp, %rdi
	callq	cos_dict_alloc
	movq	%rax, %r13
	movl	$-25, %r15d
	testq	%r13, %r13
	je	.LBB11_47
# BB#14:                                # %if.end.37
	movq	%rbp, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$-1, 64(%rsp)
	movl	$1, (%rsp)
	leaq	48(%rsp), %r9
	movq	%rbp, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	movl	%r12d, %ecx
	movq	24(%rsp), %r8           # 8-byte Reload
	callq	pdfmark_put_ao_pairs
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB11_47
# BB#15:                                # %if.end.44
	leaq	26536(%rbp), %rax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	cmpq	$0, 26536(%rbp)
	movq	%rbp, %r14
	movq	32(%rsp), %r15          # 8-byte Reload
	jne	.LBB11_17
# BB#16:                                # %if.then.47
	movq	%r14, %rdi
	callq	pdf_obj_ref
	movq	%rax, 26536(%r14)
.LBB11_17:                              # %if.end.50
	imulq	$120, %r15, %rbp
	movq	16(%rsp), %rbx          # 8-byte Reload
	leaq	(%rbx,%rbp), %r12
	movq	%r14, %rdi
	callq	pdf_obj_ref
	movq	%r15, %rcx
	movq	%rbx, %rdx
	movq	%rax, %r15
	testl	%ecx, %ecx
	leaq	-64(%rdx,%rbp), %rax
	cmoveq	24(%rsp), %rax          # 8-byte Folded Reload
	movq	(%rax), %rsi
	movl	76(%rsp), %eax
	cmpq	$0, (%rdx,%rbp)
	je	.LBB11_18
# BB#21:                                # %if.else
	movq	%rsi, 24(%rsp)          # 8-byte Spill
	movl	%eax, 32(%rsp)          # 4-byte Spill
	leaq	56(%rdx,%rbp), %rsi
	movq	56(%rdx,%rbp), %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	testl	%ecx, %ecx
	movq	%r12, %rbx
	jle	.LBB11_27
# BB#22:                                # %if.then.78
	movl	96(%rdx,%rbp), %eax
	testl	%eax, %eax
	jle	.LBB11_27
# BB#23:                                # %if.then.i
	movl	-24(%rbx), %ecx
	testl	%ecx, %ecx
	js	.LBB11_24
# BB#25:                                # %if.else.i
	addl	%eax, %ecx
	jmp	.LBB11_26
.LBB11_18:                              # %if.then.63
	testl	%ecx, %ecx
	movq	%r12, %rbx
	jle	.LBB11_20
# BB#19:                                # %if.then.66
	movq	%r15, -40(%rbx)
.LBB11_20:                              # %if.end.71
	movq	%r15, (%rbx)
	movq	%rsi, 8(%rdx,%rbp)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 16(%rdx,%rbp)
	movq	$0, 32(%rdx,%rbp)
	movl	%eax, 40(%rdx,%rbp)
	movq	$0, 48(%rdx,%rbp)
	xorl	%ecx, %ecx
	jmp	.LBB11_28
.LBB11_24:                              # %if.then.5.i
	subl	%eax, %ecx
.LBB11_26:                              # %if.end.79
	movl	%ecx, -24(%rbx)
.LBB11_27:                              # %if.end.79
	movq	%r14, %rdi
	movq	%rdx, %r12
	movq	%r15, %rdx
	callq	pdfmark_write_outline
	movq	%r12, %rdx
	movl	32(%rsp), %eax          # 4-byte Reload
	movq	24(%rsp), %rsi          # 8-byte Reload
	movq	8(%rsp), %rcx           # 8-byte Reload
.LBB11_28:                              # %if.end.83
	movq	%r15, 56(%rdx,%rbp)
	movq	%rsi, 64(%rdx,%rbp)
	movq	%rcx, 72(%rdx,%rbp)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 80(%rdx,%rbp)
	movl	%eax, 96(%rdx,%rbp)
	movq	%r13, 104(%rdx,%rbp)
	decl	112(%rdx,%rbp)
	movl	28688(%r14), %eax
	testl	%eax, %eax
	jne	.LBB11_30
# BB#29:                                # %if.then.86
	incl	28692(%r14)
.LBB11_30:                              # %if.end.87
	movl	76(%rsp), %edx
	movl	28680(%r14), %ecx
	testl	%edx, %edx
	je	.LBB11_31
# BB#38:                                # %if.then.90
	incl	%ecx
	movl	%ecx, 28680(%r14)
	movl	%edx, %ecx
	negl	%ecx
	cmovll	%edx, %ecx
	movl	%ecx, 232(%rbx)
	movq	$0, 120(%rbx)
	movq	$0, 224(%rbx)
	movq	$0, 168(%rbx)
	xorl	%r15d, %r15d
	cmpl	$0, 76(%rsp)
	jns	.LBB11_47
# BB#39:                                # %if.then.109
	incl	%eax
	movl	%eax, 28688(%r14)
	jmp	.LBB11_47
.LBB11_31:                              # %while.cond.preheader
	xorl	%r15d, %r15d
	testl	%ecx, %ecx
	jle	.LBB11_47
# BB#32:
	xorl	%r15d, %r15d
	movq	%r14, %r12
	.align	16, 0x90
.LBB11_33:                              # %land.rhs
                                        # =>This Inner Loop Header: Depth=1
	movslq	%ecx, %rax
	movq	28672(%r12), %rbx
	imulq	$120, %rax, %rbp
	cmpl	$0, 112(%rbx,%rbp)
	jne	.LBB11_47
# BB#34:                                # %while.body
                                        #   in Loop: Header=BB11_33 Depth=1
	leaq	(%rbx,%rbp), %r13
	cmpq	$0, 56(%rbx,%rbp)
	movl	$0, %eax
	je	.LBB11_36
# BB#35:                                # %if.then.i.107
                                        #   in Loop: Header=BB11_33 Depth=1
	leaq	56(%rbx,%rbp), %r14
	xorl	%edx, %edx
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	pdfmark_write_outline
	movq	(%r14), %rax
.LBB11_36:                              # %if.then.2.i
                                        #   in Loop: Header=BB11_33 Depth=1
	movq	%rax, -32(%r13)
	movl	96(%rbx,%rbp), %ecx
	testl	%ecx, %ecx
	jle	.LBB11_37
# BB#40:                                # %if.then.i.i
                                        #   in Loop: Header=BB11_33 Depth=1
	movl	-24(%r13), %eax
	testl	%eax, %eax
	js	.LBB11_41
# BB#42:                                # %if.else.i.i
                                        #   in Loop: Header=BB11_33 Depth=1
	addl	%ecx, %eax
	jmp	.LBB11_43
	.align	16, 0x90
.LBB11_37:                              # %if.then.2.pdfmark_adjust_parent_count.exit_crit_edge.i
                                        #   in Loop: Header=BB11_33 Depth=1
	movl	-24(%r13), %eax
	jmp	.LBB11_44
	.align	16, 0x90
.LBB11_41:                              # %if.then.5.i.i
                                        #   in Loop: Header=BB11_33 Depth=1
	subl	%ecx, %eax
.LBB11_43:                              # %pdfmark_adjust_parent_count.exit.i
                                        #   in Loop: Header=BB11_33 Depth=1
	movl	%eax, -24(%r13)
.LBB11_44:                              # %pdfmark_adjust_parent_count.exit.i
                                        #   in Loop: Header=BB11_33 Depth=1
	testl	%eax, %eax
	jns	.LBB11_46
# BB#45:                                # %if.then.9.i
                                        #   in Loop: Header=BB11_33 Depth=1
	decl	28688(%r12)
.LBB11_46:                              # %pdfmark_close_outline.exit
                                        #   in Loop: Header=BB11_33 Depth=1
	movl	28680(%r12), %eax
	leal	-1(%rax), %ecx
	movl	%ecx, 28680(%r12)
	cmpl	$1, %eax
	jg	.LBB11_33
.LBB11_47:                              # %cleanup.125
	movl	%r15d, %eax
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end11:
	.size	pdfmark_OUT, .Lfunc_end11-pdfmark_OUT
	.cfi_endproc

	.align	16, 0x90
	.type	pdfmark_ARTICLE,@function
pdfmark_ARTICLE:                        # @pdfmark_ARTICLE
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
	subq	$120, %rsp
.Ltmp95:
	.cfi_def_cfa_offset 176
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
	movl	%edx, %r13d
	movq	%rsi, %r15
	movq	%rdi, %r12
	movl	$-15, %r14d
	testl	%r13d, %r13d
	je	.LBB12_38
# BB#1:                                 # %for.body.lr.ph.i
	movq	%rcx, 40(%rsp)          # 8-byte Spill
	movq	1728(%r12), %rax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	movl	$.L.str.100, %edi
	callq	strlen
	movq	%rax, %rbp
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB12_2:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebx, %ebx
	movq	%rbx, %rax
	shlq	$4, %rax
	movl	8(%r15,%rax), %ecx
	cmpq	%rcx, %rbp
	jne	.LBB12_4
# BB#3:                                 # %land.rhs.i.i
                                        #   in Loop: Header=BB12_2 Depth=1
	movq	(%r15,%rax), %rsi
	movl	$.L.str.100, %edi
	movq	%rbp, %rdx
	callq	strncmp
	testl	%eax, %eax
	je	.LBB12_5
.LBB12_4:                               # %for.inc.i
                                        #   in Loop: Header=BB12_2 Depth=1
	addl	$2, %ebx
	cmpl	%r13d, %ebx
	jb	.LBB12_2
	jmp	.LBB12_38
.LBB12_5:                               # %for.body.lr.ph.i.74
	movq	%r12, 16(%rsp)          # 8-byte Spill
	orl	$1, %ebx
	shlq	$4, %rbx
	movq	(%r15,%rbx), %rax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movl	8(%r15,%rbx), %ebp
	movl	$.L.str.78, %edi
	callq	strlen
	movq	%rax, %r12
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB12_6:                               # %for.body.i.80
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebx, %ebx
	movq	%rbx, %rax
	shlq	$4, %rax
	movl	8(%r15,%rax), %ecx
	cmpq	%rcx, %r12
	jne	.LBB12_8
# BB#7:                                 # %land.rhs.i.i.84
                                        #   in Loop: Header=BB12_6 Depth=1
	movq	(%r15,%rax), %rsi
	movl	$.L.str.78, %edi
	movq	%r12, %rdx
	callq	strncmp
	testl	%eax, %eax
	je	.LBB12_10
.LBB12_8:                               # %for.inc.i.91
                                        #   in Loop: Header=BB12_6 Depth=1
	addl	$2, %ebx
	cmpl	%r13d, %ebx
	jb	.LBB12_6
# BB#9:                                 # %pdfmark_find_key.exit96.thread
	movq	$0, 96(%rsp)
	movl	$0, 104(%rsp)
.LBB12_38:                              # %cleanup.109
	movl	%r14d, %eax
	addq	$120, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB12_10:                              # %if.end
	orl	$1, %ebx
	shlq	$4, %rbx
	movups	(%r15,%rbx), %xmm0
	movaps	%xmm0, 96(%rsp)
	leaq	64(%rsp), %rdi
	leaq	96(%rsp), %rsi
	movq	40(%rsp), %rdx          # 8-byte Reload
	callq	pdfmark_scan_rect
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB12_38
# BB#11:                                # %if.end.5
	movq	16(%rsp), %r12          # 8-byte Reload
	movq	%r12, %rdi
	callq	pdf_obj_ref
	movq	%rax, 40(%rsp)          # 8-byte Spill
	movq	28696(%r12), %rbx
	testq	%rbx, %rbx
	movq	24(%rsp), %r14          # 8-byte Reload
	je	.LBB12_16
	.align	16, 0x90
.LBB12_12:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	8(%rbx), %rdi
	movl	$.L.str.100, %esi
	callq	cos_dict_find_c_key
	testq	%rax, %rax
	je	.LBB12_15
# BB#13:                                # %land.lhs.true
                                        #   in Loop: Header=BB12_12 Depth=1
	cmpl	$1, (%rax)
	ja	.LBB12_15
# BB#14:                                # %land.lhs.true.11
                                        #   in Loop: Header=BB12_12 Depth=1
	movq	8(%rax), %rdi
	movl	16(%rax), %esi
	movq	%r14, %rdx
	movl	%ebp, %ecx
	callq	bytes_compare
	testl	%eax, %eax
	je	.LBB12_20
.LBB12_15:                              # %for.inc.critedge
                                        #   in Loop: Header=BB12_12 Depth=1
	movq	(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.LBB12_12
.LBB12_16:                              # %if.then.22
	movl	%ebp, 12(%rsp)          # 4-byte Spill
	movl	$.L.str.144, %esi
	movq	%r12, %rdi
	callq	cos_dict_alloc
	movl	$-25, %r14d
	testq	%rax, %rax
	je	.LBB12_38
# BB#17:                                # %if.end.27
	movq	%rax, (%rsp)            # 8-byte Spill
	movl	$st_pdf_article, %esi
	movl	$.L.str.145, %edx
	movq	32(%rsp), %rbp          # 8-byte Reload
	movq	%rbp, %rdi
	callq	*72(%rbp)
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB12_18
# BB#19:                                # %cleanup.48
	movq	%r12, %rdi
	callq	pdf_obj_ref
	movq	(%rsp), %rbp            # 8-byte Reload
	movq	%rax, 8(%rbp)
	movq	28696(%r12), %rax
	movq	%rax, (%rbx)
	movq	%rbx, 28696(%r12)
	movl	$.L.str.100, %esi
	movl	$6, %edx
	movq	%rbp, %rdi
	movq	24(%rsp), %rcx          # 8-byte Reload
	movl	12(%rsp), %r8d          # 4-byte Reload
	callq	cos_dict_put_string
	movq	$0, 88(%rbx)
	movq	$0, 16(%rbx)
	movq	%rbp, 8(%rbx)
.LBB12_20:                              # %if.end.51
	leaq	88(%rbx), %rsi
	cmpq	$0, 88(%rbx)
	movq	40(%rsp), %rbp          # 8-byte Reload
	je	.LBB12_21
# BB#22:                                # %if.else
	movq	%rbp, 112(%rbx)
	movq	%r12, %rdi
	movq	%rsi, 32(%rsp)          # 8-byte Spill
	callq	pdfmark_write_bead
	movq	88(%rbx), %rax
	jmp	.LBB12_23
.LBB12_18:                              # %if.then.35
	xorl	%esi, %esi
	movl	$.L.str.145, %edx
	movq	%rbp, %rdi
	callq	*24(%rbp)
	movl	$.L.str.144, %esi
	movq	(%rsp), %rdi            # 8-byte Reload
	callq	cos_free
	jmp	.LBB12_38
.LBB12_21:                              # %if.then.55
	movq	%rsi, 32(%rsp)          # 8-byte Spill
	movq	%rbp, 40(%rbx)
	movq	16(%rbx), %rax
	movq	%rax, 88(%rbx)
.LBB12_23:                              # %for.body.lr.ph.i.99
	movq	%rax, 104(%rbx)
	movq	%rbp, 88(%rbx)
	movq	8(%rbx), %rax
	movq	8(%rax), %rax
	movq	%rax, 96(%rbx)
	movq	$0, 112(%rbx)
	movups	64(%rsp), %xmm0
	movups	80(%rsp), %xmm1
	movups	%xmm1, 144(%rbx)
	movups	%xmm0, 128(%rbx)
	movq	%rbx, 40(%rsp)          # 8-byte Spill
	movl	$.L.str.107, %edi
	callq	strlen
	movq	%rax, %rbp
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB12_24:                              # %for.body.i.105
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebx, %ebx
	movq	%rbx, %rax
	shlq	$4, %rax
	movl	8(%r15,%rax), %ecx
	cmpq	%rcx, %rbp
	jne	.LBB12_27
# BB#25:                                # %land.rhs.i.i.109
                                        #   in Loop: Header=BB12_24 Depth=1
	movq	(%r15,%rax), %rsi
	movl	$.L.str.107, %edi
	movq	%rbp, %rdx
	callq	strncmp
	testl	%eax, %eax
	je	.LBB12_26
.LBB12_27:                              # %for.inc.i.116
                                        #   in Loop: Header=BB12_24 Depth=1
	addl	$2, %ebx
	cmpl	%r13d, %ebx
	jb	.LBB12_24
# BB#28:                                # %for.end.i.119
	movq	$0, 48(%rsp)
	movl	$0, 56(%rsp)
	jmp	.LBB12_29
.LBB12_26:                              # %if.then.i.113
	orl	$1, %ebx
	shlq	$4, %rbx
	movups	(%r15,%rbx), %xmm0
	movaps	%xmm0, 48(%rsp)
.LBB12_29:                              # %for.body.84.lr.ph
	leaq	48(%rsp), %rsi
	movq	%r12, %rdi
	callq	pdfmark_page_number
	movq	%r12, %rdi
	movl	%eax, %esi
	callq	pdf_page_id
	movq	40(%rsp), %rcx          # 8-byte Reload
	movq	%rax, 120(%rcx)
	xorl	%r12d, %r12d
	.align	16, 0x90
.LBB12_30:                              # %for.body.84
                                        # =>This Inner Loop Header: Depth=1
	movl	%r12d, %ebp
	shlq	$4, %rbp
	leaq	(%r15,%rbp), %rbx
	movl	$.L.str.78, %edi
	callq	strlen
	movl	8(%r15,%rbp), %r14d
	cmpq	%r14, %rax
	jne	.LBB12_32
# BB#31:                                # %land.rhs.i
                                        #   in Loop: Header=BB12_30 Depth=1
	movq	(%rbx), %rsi
	movl	$.L.str.78, %edi
	movq	%rax, %rdx
	callq	strncmp
	testl	%eax, %eax
	je	.LBB12_35
.LBB12_32:                              # %lor.lhs.false.87
                                        #   in Loop: Header=BB12_30 Depth=1
	movl	$.L.str.107, %edi
	callq	strlen
	movq	(%rbx), %rbp
	cmpq	%r14, %rax
	jne	.LBB12_34
# BB#33:                                # %land.rhs.i.132
                                        #   in Loop: Header=BB12_30 Depth=1
	movl	$.L.str.107, %edi
	movq	%rbp, %rsi
	movq	%r14, %rdx
	callq	strncmp
	testl	%eax, %eax
	je	.LBB12_35
.LBB12_34:                              # %if.end.93
                                        #   in Loop: Header=BB12_30 Depth=1
	movq	40(%rsp), %rax          # 8-byte Reload
	movq	8(%rax), %rdi
	movq	16(%rbx), %rcx
	movl	24(%rbx), %r8d
	movq	%rbp, %rsi
	movl	%r14d, %edx
	callq	cos_dict_put_string
.LBB12_35:                              # %for.inc.98
                                        #   in Loop: Header=BB12_30 Depth=1
	addl	$2, %r12d
	cmpl	%r13d, %r12d
	jb	.LBB12_30
# BB#36:                                # %for.end.99
	xorl	%r14d, %r14d
	movq	40(%rsp), %rcx          # 8-byte Reload
	cmpq	$0, 16(%rcx)
	jne	.LBB12_38
# BB#37:                                # %if.then.103
	addq	$16, %rcx
	movq	32(%rsp), %rdx          # 8-byte Reload
	movq	64(%rdx), %rax
	movq	%rax, 64(%rcx)
	movups	(%rdx), %xmm0
	movups	16(%rdx), %xmm1
	movups	32(%rdx), %xmm2
	movups	48(%rdx), %xmm3
	movups	%xmm3, 48(%rcx)
	movups	%xmm2, 32(%rcx)
	movups	%xmm1, 16(%rcx)
	movups	%xmm0, (%rcx)
	movq	$0, (%rdx)
	jmp	.LBB12_38
.Lfunc_end12:
	.size	pdfmark_ARTICLE, .Lfunc_end12-pdfmark_ARTICLE
	.cfi_endproc

	.align	16, 0x90
	.type	pdfmark_DEST,@function
pdfmark_DEST:                           # @pdfmark_DEST
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
	subq	$136, %rsp
.Ltmp108:
	.cfi_def_cfa_offset 192
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
	movq	%r8, %r15
	movl	%edx, %r12d
	movq	%rsi, %r13
	movq	%rdi, %r14
	movl	$-15, 12(%rsp)          # 4-byte Folded Spill
	testl	%r12d, %r12d
	je	.LBB13_26
# BB#1:                                 # %for.body.lr.ph.i
	movl	$.L.str.105, %edi
	callq	strlen
	movq	%rax, %rbp
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB13_2:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebx, %ebx
	movq	%rbx, %rax
	shlq	$4, %rax
	movl	8(%r13,%rax), %ecx
	cmpq	%rcx, %rbp
	jne	.LBB13_4
# BB#3:                                 # %land.rhs.i.i
                                        #   in Loop: Header=BB13_2 Depth=1
	movq	(%r13,%rax), %rsi
	movl	$.L.str.105, %edi
	movq	%rbp, %rdx
	callq	strncmp
	testl	%eax, %eax
	je	.LBB13_5
.LBB13_4:                               # %for.inc.i
                                        #   in Loop: Header=BB13_2 Depth=1
	addl	$2, %ebx
	cmpl	%r12d, %ebx
	jb	.LBB13_2
	jmp	.LBB13_26
.LBB13_5:                               # %lor.lhs.false
	orl	$1, %ebx
	shlq	$4, %rbx
	movq	(%r13,%rbx), %rbp
	movl	8(%r13,%rbx), %eax
	movl	%eax, 8(%rsp)           # 4-byte Spill
	leaq	48(%rsp), %rdi
	movl	$1, %r8d
	movq	%r14, %rsi
	movq	%r13, %rdx
	movl	%r12d, %ecx
	callq	pdfmark_make_dest
	movq	%r14, %rbx
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB13_26
# BB#6:                                 # %if.end
	movq	%rbp, (%rsp)            # 8-byte Spill
	leaq	48(%rsp), %rbp
	movq	%rbp, %rdi
	callq	strlen
	leaq	24(%rsp), %rdi
	movq	%rbp, %rsi
	movl	%eax, %edx
	callq	cos_string_value
	movq	28704(%rbx), %rdi
	movq	%rbx, %rbp
	testq	%rdi, %rdi
	jne	.LBB13_9
# BB#7:                                 # %if.then.7
	movl	$.L.str.147, %esi
	movq	%rbp, %rbx
	movq	%rbx, %rdi
	callq	cos_dict_alloc
	movq	%rax, 28704(%rbx)
	movl	$-25, 12(%rsp)          # 4-byte Folded Spill
	testq	%rax, %rax
	je	.LBB13_26
# BB#8:                                 # %if.end.14
	movq	%rbx, %rdi
	callq	pdf_obj_ref
	movq	28704(%rbx), %rdi
	movq	%rbx, %rbp
	movq	%rax, 8(%rdi)
.LBB13_9:                               # %if.end.17
	testq	%r15, %r15
	jne	.LBB13_11
# BB#10:                                # %lor.lhs.false.19
	leal	2(%r14,%r14), %eax
	cmpl	%r12d, %eax
	jae	.LBB13_25
.LBB13_11:                              # %if.then.22
	leaq	16(%rsp), %rdx
	xorl	%ecx, %ecx
	movq	%rbp, %rbx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	pdf_make_named_dict
	movl	%eax, 12(%rsp)          # 4-byte Spill
	testl	%eax, %eax
	js	.LBB13_26
# BB#12:                                # %if.end.27
	movq	16(%rsp), %rbp
	leaq	48(%rsp), %r14
	movq	%r14, %rdi
	callq	strlen
	movl	$.L.str.126, %esi
	movq	%rbp, %rdi
	movq	%r14, %rdx
	movl	%eax, %ecx
	callq	cos_dict_put_c_key_string
	movl	%eax, 12(%rsp)          # 4-byte Spill
	testl	%eax, %eax
	js	.LBB13_26
# BB#13:                                # %for.body.preheader
	addq	$24, %r13
	movl	$2, %r14d
	.align	16, 0x90
.LBB13_14:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$.L.str.105, %edi
	callq	strlen
	movl	-16(%r13), %ebp
	cmpq	%rbp, %rax
	jne	.LBB13_16
# BB#15:                                # %land.rhs.i
                                        #   in Loop: Header=BB13_14 Depth=1
	movq	-24(%r13), %rsi
	movl	$.L.str.105, %edi
	movq	%rax, %rdx
	callq	strncmp
	testl	%eax, %eax
	je	.LBB13_21
.LBB13_16:                              # %land.lhs.true
                                        #   in Loop: Header=BB13_14 Depth=1
	movl	$.L.str.107, %edi
	callq	strlen
	cmpq	%rbp, %rax
	jne	.LBB13_18
# BB#17:                                # %land.rhs.i.40
                                        #   in Loop: Header=BB13_14 Depth=1
	movq	-24(%r13), %rsi
	movl	$.L.str.107, %edi
	movq	%rbp, %rdx
	callq	strncmp
	testl	%eax, %eax
	je	.LBB13_21
.LBB13_18:                              # %land.lhs.true.43
                                        #   in Loop: Header=BB13_14 Depth=1
	movl	$.L.str.108, %edi
	callq	strlen
	movq	-24(%r13), %r15
	cmpq	%rbp, %rax
	jne	.LBB13_20
# BB#19:                                # %land.rhs.i.50
                                        #   in Loop: Header=BB13_14 Depth=1
	movl	$.L.str.108, %edi
	movq	%r15, %rsi
	movq	%rbp, %rdx
	callq	strncmp
	testl	%eax, %eax
	je	.LBB13_21
.LBB13_20:                              # %if.then.48
                                        #   in Loop: Header=BB13_14 Depth=1
	movq	16(%rsp), %rdi
	movq	-8(%r13), %rcx
	movl	(%r13), %r8d
	movq	%r15, %rsi
	movl	%ebp, %edx
	callq	cos_dict_put_string
	movl	%eax, 12(%rsp)          # 4-byte Spill
.LBB13_21:                              # %for.inc
                                        #   in Loop: Header=BB13_14 Depth=1
	cmpl	%r12d, %r14d
	jae	.LBB13_23
# BB#22:                                # %for.inc
                                        #   in Loop: Header=BB13_14 Depth=1
	addq	$32, %r13
	addl	$2, %r14d
	cmpl	$0, 12(%rsp)            # 4-byte Folded Reload
	jns	.LBB13_14
.LBB13_23:                              # %for.end
	cmpl	$0, 12(%rsp)            # 4-byte Folded Reload
	js	.LBB13_26
# BB#24:                                # %cleanup
	movq	16(%rsp), %rsi
	leaq	24(%rsp), %rdi
	callq	cos_object_value
	movq	28704(%rbx), %rdi
.LBB13_25:                              # %if.end.61
	leaq	24(%rsp), %rcx
	movq	(%rsp), %rsi            # 8-byte Reload
	movl	8(%rsp), %edx           # 4-byte Reload
	callq	cos_dict_put
	movl	%eax, 12(%rsp)          # 4-byte Spill
.LBB13_26:                              # %cleanup.64
	movl	12(%rsp), %eax          # 4-byte Reload
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end13:
	.size	pdfmark_DEST, .Lfunc_end13-pdfmark_DEST
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI14_0:
	.quad	4608983858650965606     # double 1.3999999999999999
	.text
	.align	16, 0x90
	.type	pdfmark_EMBED,@function
pdfmark_EMBED:                          # @pdfmark_EMBED
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp115:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp116:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp117:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp118:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp119:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp120:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp121:
	.cfi_def_cfa_offset 80
.Ltmp122:
	.cfi_offset %rbx, -56
.Ltmp123:
	.cfi_offset %r12, -48
.Ltmp124:
	.cfi_offset %r13, -40
.Ltmp125:
	.cfi_offset %r14, -32
.Ltmp126:
	.cfi_offset %r15, -24
.Ltmp127:
	.cfi_offset %rbp, -16
	movl	%edx, %r13d
	movq	%rsi, %r14
	movq	%rdi, %r12
	movl	$-21, %r15d
	movsd	.LCPI14_0(%rip), %xmm0  # xmm0 = mem[0],zero
	ucomisd	9368(%r12), %xmm0
	ja	.LBB14_17
# BB#1:                                 # %if.end
	movl	$-15, %r15d
	testl	%r13d, %r13d
	je	.LBB14_17
# BB#2:                                 # %for.body.lr.ph.i
	movl	$.L.str.148, %edi
	callq	strlen
	movq	%rax, %rbp
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB14_3:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebx, %ebx
	movq	%rbx, %rax
	shlq	$4, %rax
	movl	8(%r14,%rax), %ecx
	cmpq	%rcx, %rbp
	jne	.LBB14_5
# BB#4:                                 # %land.rhs.i.i
                                        #   in Loop: Header=BB14_3 Depth=1
	movq	(%r14,%rax), %rsi
	movl	$.L.str.148, %edi
	movq	%rbp, %rdx
	callq	strncmp
	testl	%eax, %eax
	je	.LBB14_6
.LBB14_5:                               # %for.inc.i
                                        #   in Loop: Header=BB14_3 Depth=1
	addl	$2, %ebx
	cmpl	%r13d, %ebx
	jb	.LBB14_3
	jmp	.LBB14_17
.LBB14_6:                               # %for.body.lr.ph.i.22
	movq	%r12, %rbx
	movl	$.L.str.149, %edi
	callq	strlen
	movq	%rax, %r12
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB14_7:                               # %for.body.i.28
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebp, %ebp
	movq	%rbp, %rax
	shlq	$4, %rax
	movl	8(%r14,%rax), %ecx
	cmpq	%rcx, %r12
	jne	.LBB14_9
# BB#8:                                 # %land.rhs.i.i.32
                                        #   in Loop: Header=BB14_7 Depth=1
	movq	(%r14,%rax), %rsi
	movl	$.L.str.149, %edi
	movq	%r12, %rdx
	callq	strncmp
	testl	%eax, %eax
	je	.LBB14_10
.LBB14_9:                               # %for.inc.i.39
                                        #   in Loop: Header=BB14_7 Depth=1
	addl	$2, %ebp
	cmpl	%r13d, %ebp
	jb	.LBB14_7
	jmp	.LBB14_17
.LBB14_10:                              # %if.end.6
	orl	$1, %ebp
	shlq	$4, %rbp
	movq	(%r14,%rbp), %rax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	movl	8(%r14,%rbp), %eax
	movl	%eax, 12(%rsp)          # 4-byte Spill
	movq	28712(%rbx), %rcx
	testq	%rcx, %rcx
	jne	.LBB14_13
# BB#11:                                # %if.then.8
	movl	$.L.str.150, %esi
	movq	%rbx, %rdi
	callq	cos_dict_alloc
	movq	%rax, 28712(%rbx)
	movl	$-25, %r15d
	testq	%rax, %rax
	je	.LBB14_17
# BB#12:                                # %if.end.14
	movq	%rbx, %rdi
	callq	pdf_obj_ref
	movq	28712(%rbx), %rcx
	movq	%rax, 8(%rcx)
.LBB14_13:                              # %for.body.lr.ph
	movq	%rcx, (%rsp)            # 8-byte Spill
	movl	$.L.str.148, %edi
	callq	strlen
	movq	%rax, %rbx
	leaq	8(%r14), %r12
	xorl	%ebp, %ebp
	xorl	%r15d, %r15d
	.align	16, 0x90
.LBB14_14:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	(%r12), %eax
	cmpq	%rax, %rbx
	jne	.LBB14_16
# BB#15:                                # %land.rhs.i
                                        #   in Loop: Header=BB14_14 Depth=1
	movq	-8(%r12), %rsi
	movl	$.L.str.148, %edi
	movq	%rbx, %rdx
	callq	strncmp
	testl	%eax, %eax
	je	.LBB14_18
.LBB14_16:                              # %for.inc
                                        #   in Loop: Header=BB14_14 Depth=1
	addq	$2, %rbp
	addq	$32, %r12
	cmpl	%r13d, %ebp
	jb	.LBB14_14
.LBB14_17:                              # %cleanup
	movl	%r15d, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB14_18:                              # %if.then.22
	shlq	$32, %rbp
	sarq	$28, %rbp
	orq	$16, %rbp
	movq	(%r14,%rbp), %rcx
	movl	8(%r14,%rbp), %r8d
	movq	(%rsp), %rdi            # 8-byte Reload
	movq	16(%rsp), %rsi          # 8-byte Reload
	movl	12(%rsp), %edx          # 4-byte Reload
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	cos_dict_put_string     # TAILCALL
.Lfunc_end14:
	.size	pdfmark_EMBED, .Lfunc_end14-pdfmark_EMBED
	.cfi_endproc

	.align	16, 0x90
	.type	pdfmark_PS,@function
pdfmark_PS:                             # @pdfmark_PS
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp128:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp129:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp130:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp131:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp132:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp133:
	.cfi_def_cfa_offset 56
	subq	$152, %rsp
.Ltmp134:
	.cfi_def_cfa_offset 208
.Ltmp135:
	.cfi_offset %rbx, -56
.Ltmp136:
	.cfi_offset %r12, -48
.Ltmp137:
	.cfi_offset %r13, -40
.Ltmp138:
	.cfi_offset %r14, -32
.Ltmp139:
	.cfi_offset %r15, -24
.Ltmp140:
	.cfi_offset %rbp, -16
	movq	%r8, %r13
	movl	%edx, %r15d
	movq	%rsi, %r14
	movq	%rdi, %r12
	testl	%r15d, %r15d
	je	.LBB15_5
# BB#1:                                 # %for.body.lr.ph.i
	movl	$.L.str.151, %edi
	callq	strlen
	movq	%rax, %rbp
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB15_2:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebx, %ebx
	movq	%rbx, %rax
	shlq	$4, %rax
	movl	8(%r14,%rax), %ecx
	cmpq	%rcx, %rbp
	jne	.LBB15_4
# BB#3:                                 # %land.rhs.i.i
                                        #   in Loop: Header=BB15_2 Depth=1
	movq	(%r14,%rax), %rsi
	movl	$.L.str.151, %edi
	movq	%rbp, %rdx
	callq	strncmp
	testl	%eax, %eax
	je	.LBB15_6
.LBB15_4:                               # %for.inc.i
                                        #   in Loop: Header=BB15_2 Depth=1
	addl	$2, %ebx
	cmpl	%r15d, %ebx
	jb	.LBB15_2
.LBB15_5:                               # %pdfmark_find_key.exit.thread
	movq	$0, 128(%rsp)
	movl	$0, 136(%rsp)
	movl	$-15, %r13d
.LBB15_39:                              # %cleanup.136
	movl	%r13d, %eax
	addq	$152, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB15_6:                               # %lor.lhs.false
	movq	%r13, 8(%rsp)           # 8-byte Spill
	orl	$1, %ebx
	shlq	$4, %rbx
	movups	(%r14,%rbx), %xmm0
	movaps	%xmm0, 128(%rsp)
	movq	24(%r12), %rdi
	leaq	128(%rsp), %rsi
	callq	ps_source_ok
	movl	$-15, %r13d
	testl	%eax, %eax
	je	.LBB15_39
# BB#7:                                 # %for.body.lr.ph.i.67
	movl	$.L.str.152, %edi
	callq	strlen
	movq	%rax, %rbp
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB15_8:                               # %for.body.i.73
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebx, %ebx
	movq	%rbx, %rax
	shlq	$4, %rax
	movl	8(%r14,%rax), %ecx
	cmpq	%rcx, %rbp
	jne	.LBB15_10
# BB#9:                                 # %land.rhs.i.i.77
                                        #   in Loop: Header=BB15_8 Depth=1
	movq	(%r14,%rax), %rsi
	movl	$.L.str.152, %edi
	movq	%rbp, %rdx
	callq	strncmp
	testl	%eax, %eax
	je	.LBB15_12
.LBB15_10:                              # %for.inc.i.84
                                        #   in Loop: Header=BB15_8 Depth=1
	addl	$2, %ebx
	cmpl	%r15d, %ebx
	jb	.LBB15_8
# BB#11:                                # %if.end.thread
	movq	$0, 112(%rsp)
	movl	$0, 120(%rsp)
.LBB15_14:                              # %land.lhs.true.9
	movq	8(%rsp), %rax           # 8-byte Reload
	testq	%rax, %rax
	jne	.LBB15_16
# BB#15:                                # %land.lhs.true.9
	movl	136(%rsp), %ebx
	cmpl	$101, %ebx
	jae	.LBB15_16
# BB#17:                                # %if.then.13
	movl	$1, %esi
	movq	%r12, %rdi
	callq	pdf_open_contents
	movl	%eax, %r13d
	testl	%r13d, %r13d
	js	.LBB15_39
# BB#18:                                # %if.end.17
	movq	5848(%r12), %rbp
	movq	128(%rsp), %rsi
	movq	%rbp, %rdi
	movl	%ebx, %edx
	callq	stream_write
	movl	$.L.str.153, %esi
	movq	%rbp, %rdi
	callq	stream_puts
.LBB15_38:                              # %cleanup.136
	xorl	%r13d, %r13d
	jmp	.LBB15_39
.LBB15_16:                              # %if.else.thread
	movq	%rax, %r14
	xorl	%ebx, %ebx
.LBB15_27:                              # %if.end.61
	leaq	104(%rsp), %rsi
	movq	%r12, %rdi
	callq	start_XObject
	movl	%eax, %r13d
	testl	%r13d, %r13d
	js	.LBB15_39
# BB#28:                                # %if.end.66
	movq	30480(%r12), %rax
	movq	%rax, 96(%rsp)
	movq	104(%rsp), %r15
	movq	%r15, %rdi
	callq	cos_stream_dict
	movl	$.L.str.92, %esi
	movl	$.L.str.155, %edx
	movq	%rax, %rdi
	callq	cos_dict_put_c_strings
	movl	%eax, %r13d
	testl	%r13d, %r13d
	js	.LBB15_39
# BB#29:                                # %if.end.71
	movq	%r15, %rdi
	callq	cos_stream_dict
	movl	$.L.str.110, %esi
	movl	$.L.str.156, %edx
	movq	%rax, %rdi
	callq	cos_dict_put_c_strings
	movl	%eax, %r13d
	testl	%r13d, %r13d
	js	.LBB15_39
# BB#30:                                # %if.end.76
	testq	%rbx, %rbx
                                        # implicit-def: EBP
	je	.LBB15_32
# BB#31:                                # %if.then.79
	leaq	16(%rsp), %rbp
	movl	$.L.str.157, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	movq	%rbx, %rdx
	callq	gs_sprintf
	movq	%r15, %rdi
	callq	cos_stream_dict
	movq	%rax, %rbx
	movq	%rbp, %rdi
	callq	strlen
	movl	$.L.str.152, %esi
	movq	%rbx, %rdi
	movq	%rbp, %rdx
	movl	%eax, %ecx
	callq	cos_dict_put_c_key_string
	movl	%eax, %ebp
	testl	%ebp, %ebp
	movl	%ebp, %r13d
	js	.LBB15_39
.LBB15_32:                              # %if.end.94
	movq	5848(%r12), %rbx
	movl	136(%rsp), %edx
	addl	$-2, %edx
	movq	128(%rsp), %rsi
	incq	%rsi
	movq	%rbx, %rdi
	callq	stream_write
	movl	$10, %esi
	movq	%rbx, %rdi
	callq	spputc
	movq	%r12, %rdi
	callq	pdf_exit_substream
	movl	%eax, %r13d
	testl	%r13d, %r13d
	js	.LBB15_39
# BB#33:                                # %if.end.101
	xorl	%esi, %esi
	testq	%r14, %r14
	je	.LBB15_35
# BB#34:                                # %if.then.104
	movq	(%r14), %rax
	movq	%rax, 16(%rsp)
	movl	8(%r14), %eax
	movl	%eax, 24(%rsp)
	leaq	16(%rsp), %rsi
.LBB15_35:                              # %if.end.109
	leaq	96(%rsp), %rdx
	movq	%r12, %rdi
	callq	pdfmark_bind_named_object
	testl	%eax, %eax
	cmovsl	%eax, %ebp
	movl	%ebp, %r13d
	js	.LBB15_39
# BB#36:                                # %cleanup.cont.118
	movl	$1, %esi
	movq	%r12, %rdi
	callq	pdf_open_contents
	movl	%eax, %r13d
	testl	%r13d, %r13d
	js	.LBB15_39
# BB#37:                                # %cleanup.129
	movq	26664(%r12), %rax
	movq	40(%r15), %rcx
	orq	%rax, 56(%rcx)
	movq	5848(%r12), %rdi
	movq	8(%r15), %rdx
	movl	$.L.str.158, %esi
	callq	pprintld1
	jmp	.LBB15_38
.LBB15_12:                              # %land.lhs.true
	orl	$1, %ebx
	shlq	$4, %rbx
	movups	(%r14,%rbx), %xmm0
	movaps	%xmm0, 112(%rsp)
	movq	24(%r12), %rdi
	leaq	112(%rsp), %rsi
	callq	ps_source_ok
	testl	%eax, %eax
	je	.LBB15_39
# BB#13:                                # %if.end
	movq	112(%rsp), %rbx
	testq	%rbx, %rbx
	je	.LBB15_14
# BB#19:                                # %if.then.26
	movl	9480(%r12), %r9d
	leaq	16(%rsp), %rcx
	movl	$4, %esi
	xorl	%edx, %edx
	movl	$1, %r8d
	movq	%r12, %rdi
	callq	pdf_enter_substream
	movl	%eax, %r13d
	testl	%r13d, %r13d
	js	.LBB15_39
# BB#20:                                # %if.end.31
	movq	16(%rsp), %rax
	movq	64(%rax), %rbp
	movq	%rbp, 104(%rsp)
	movq	8(%rsp), %rdx           # 8-byte Reload
	testq	%rdx, %rdx
	je	.LBB15_24
# BB#21:                                # %if.end.31
	movl	9524(%r12), %ecx
	testl	%ecx, %ecx
	je	.LBB15_24
# BB#22:                                # %if.then.35
	movq	%rdx, %r14
	movl	$.L.str.154, %esi
	movl	$1, %edx
	movq	%rbp, %rdi
	callq	cos_dict_put_c_key_bool
	movl	%eax, %r13d
	testl	%r13d, %r13d
	js	.LBB15_39
# BB#23:                                # %if.then.35.if.end.41_crit_edge
	movq	16(%rsp), %rax
	movq	%r14, %rdx
.LBB15_24:                              # %if.end.41
	testq	%rdx, %rdx
	movq	%rdx, %r14
	setne	%cl
	movzbl	%cl, %ecx
	movl	%ecx, 24(%rax)
	movq	$0, 56(%rax)
	movq	%rax, 40(%rbp)
	movq	5848(%r12), %rbp
	movl	120(%rsp), %edx
	addl	$-2, %edx
	incq	%rbx
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	callq	stream_write
	movl	$10, %esi
	movq	%rbp, %rdi
	callq	spputc
	movq	%r12, %rdi
	callq	pdf_exit_substream
	movl	%eax, %r13d
	testl	%r13d, %r13d
	js	.LBB15_39
# BB#25:                                # %if.end.50
	movq	16(%rsp), %rax
	movq	64(%rax), %rdi
	movl	$5, %edx
	movq	%r12, %rsi
	callq	cos_write_object
	movl	%eax, %r13d
	testl	%r13d, %r13d
	js	.LBB15_39
# BB#26:                                # %cleanup.58
	movq	16(%rsp), %rax
	movq	64(%rax), %rax
	movq	8(%rax), %rbx
	jmp	.LBB15_27
.Lfunc_end15:
	.size	pdfmark_PS, .Lfunc_end15-pdfmark_PS
	.cfi_endproc

	.align	16, 0x90
	.type	pdfmark_PAGES,@function
pdfmark_PAGES:                          # @pdfmark_PAGES
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp141:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp142:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp143:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp144:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp145:
	.cfi_def_cfa_offset 48
.Ltmp146:
	.cfi_offset %rbx, -40
.Ltmp147:
	.cfi_offset %r14, -32
.Ltmp148:
	.cfi_offset %r15, -24
.Ltmp149:
	.cfi_offset %rbp, -16
	movl	%edx, %r14d
	movq	%rsi, %rbx
	movl	$-15, %eax
	testb	$1, %r14b
	jne	.LBB16_5
# BB#1:                                 # %for.cond.preheader.i
	xorl	%eax, %eax
	testl	%r14d, %r14d
	je	.LBB16_5
# BB#2:                                 # %for.body.i.preheader
	movq	26528(%rdi), %r15
	addq	$24, %rbx
	movl	$2, %ebp
	.align	16, 0x90
.LBB16_3:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbx), %rsi
	movl	-16(%rbx), %edx
	movq	-8(%rbx), %rcx
	movl	(%rbx), %r8d
	movq	%r15, %rdi
	callq	cos_dict_put_string
	cmpl	%r14d, %ebp
	jae	.LBB16_5
# BB#4:                                 # %for.body.i
                                        #   in Loop: Header=BB16_3 Depth=1
	addl	$2, %ebp
	addq	$32, %rbx
	testl	%eax, %eax
	jns	.LBB16_3
.LBB16_5:                               # %pdfmark_put_pairs.exit
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end16:
	.size	pdfmark_PAGES, .Lfunc_end16-pdfmark_PAGES
	.cfi_endproc

	.align	16, 0x90
	.type	pdfmark_PAGE,@function
pdfmark_PAGE:                           # @pdfmark_PAGE
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp150:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp151:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp152:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp153:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp154:
	.cfi_def_cfa_offset 48
.Ltmp155:
	.cfi_offset %rbx, -40
.Ltmp156:
	.cfi_offset %r14, -32
.Ltmp157:
	.cfi_offset %r15, -24
.Ltmp158:
	.cfi_offset %rbp, -16
	movl	%edx, %r15d
	movq	%rsi, %rbx
	callq	pdf_current_page_dict
	movq	%rax, %r14
	movl	$-15, %eax
	testb	$1, %r15b
	jne	.LBB17_5
# BB#1:                                 # %for.cond.preheader.i
	xorl	%eax, %eax
	testl	%r15d, %r15d
	je	.LBB17_5
# BB#2:                                 # %for.body.i.preheader
	addq	$24, %rbx
	movl	$2, %ebp
	.align	16, 0x90
.LBB17_3:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbx), %rsi
	movl	-16(%rbx), %edx
	movq	-8(%rbx), %rcx
	movl	(%rbx), %r8d
	movq	%r14, %rdi
	callq	cos_dict_put_string
	cmpl	%r15d, %ebp
	jae	.LBB17_5
# BB#4:                                 # %for.body.i
                                        #   in Loop: Header=BB17_3 Depth=1
	addl	$2, %ebp
	addq	$32, %rbx
	testl	%eax, %eax
	jns	.LBB17_3
.LBB17_5:                               # %pdfmark_put_pairs.exit
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end17:
	.size	pdfmark_PAGE, .Lfunc_end17-pdfmark_PAGE
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI18_0:
	.quad	4608533498688228557     # double 1.3
	.text
	.align	16, 0x90
	.type	pdfmark_PAGELABEL,@function
pdfmark_PAGELABEL:                      # @pdfmark_PAGELABEL
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp159:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp160:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp161:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp162:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp163:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp164:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp165:
	.cfi_def_cfa_offset 80
.Ltmp166:
	.cfi_offset %rbx, -56
.Ltmp167:
	.cfi_offset %r12, -48
.Ltmp168:
	.cfi_offset %r13, -40
.Ltmp169:
	.cfi_offset %r14, -32
.Ltmp170:
	.cfi_offset %r15, -24
.Ltmp171:
	.cfi_offset %rbp, -16
	movl	%edx, %r12d
	movq	%rsi, %r13
	movq	%rdi, %r14
	movsd	9368(%r14), %xmm0       # xmm0 = mem[0],zero
	xorl	%r15d, %r15d
	ucomisd	.LCPI18_0(%rip), %xmm0
	jb	.LBB18_8
# BB#1:                                 # %if.then
	testl	%r12d, %r12d
	je	.LBB18_6
# BB#2:                                 # %for.body.lr.ph.i
	movl	$.L.str.164, %edi
	callq	strlen
	movq	%rax, %rbp
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB18_3:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebx, %ebx
	movq	%rbx, %rax
	shlq	$4, %rax
	movl	8(%r13,%rax), %ecx
	cmpq	%rcx, %rbp
	jne	.LBB18_5
# BB#4:                                 # %land.rhs.i.i
                                        #   in Loop: Header=BB18_3 Depth=1
	movq	(%r13,%rax), %rsi
	movl	$.L.str.164, %edi
	movq	%rbp, %rdx
	callq	strncmp
	testl	%eax, %eax
	je	.LBB18_7
.LBB18_5:                               # %for.inc.i
                                        #   in Loop: Header=BB18_3 Depth=1
	addl	$2, %ebx
	cmpl	%r12d, %ebx
	jb	.LBB18_3
.LBB18_6:                               # %pdfmark_find_key.exit.thread
	movq	$0, (%rsp)
	movl	$0, 8(%rsp)
	jmp	.LBB18_8
.LBB18_7:                               # %if.then.1
	orl	$1, %ebx
	shlq	$4, %rbx
	movupd	(%r13,%rbx), %xmm0
	movapd	%xmm0, (%rsp)
	leaq	(%rsp), %rsi
	movq	%r14, %rdi
	callq	pdfmark_add_pagelabel
	movl	%eax, %r15d
.LBB18_8:                               # %cleanup
	movl	%r15d, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end18:
	.size	pdfmark_PAGELABEL, .Lfunc_end18-pdfmark_PAGELABEL
	.cfi_endproc

	.align	16, 0x90
	.type	pdfmark_DOCINFO,@function
pdfmark_DOCINFO:                        # @pdfmark_DOCINFO
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp172:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp173:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp174:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp175:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp176:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp177:
	.cfi_def_cfa_offset 56
	subq	$328, %rsp              # imm = 0x148
.Ltmp178:
	.cfi_def_cfa_offset 384
.Ltmp179:
	.cfi_offset %rbx, -56
.Ltmp180:
	.cfi_offset %r12, -48
.Ltmp181:
	.cfi_offset %r13, -40
.Ltmp182:
	.cfi_offset %r14, -32
.Ltmp183:
	.cfi_offset %r15, -24
.Ltmp184:
	.cfi_offset %rbp, -16
	movl	%edx, 44(%rsp)          # 4-byte Spill
	movq	%rsi, 32(%rsp)          # 8-byte Spill
	movl	$-15, %ebp
	testb	$1, %dl
	jne	.LBB19_28
# BB#1:                                 # %for.cond.preheader
	xorl	%ebp, %ebp
	cmpl	$0, 44(%rsp)            # 4-byte Folded Reload
	je	.LBB19_28
# BB#2:                                 # %for.body.lr.ph
	movq	26520(%rdi), %rax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movq	1728(%rdi), %rax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	xorl	%r13d, %r13d
	jmp	.LBB19_3
.LBB19_9:                               #   in Loop: Header=BB19_3 Depth=1
	xorl	%r15d, %r15d
	jmp	.LBB19_24
	.align	16, 0x90
.LBB19_3:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB19_12 Depth 2
                                        #     Child Loop BB19_19 Depth 2
	movq	%r13, %rbx
	shlq	$4, %rbx
	movq	32(%rsp), %rbp          # 8-byte Reload
	leaq	(%rbp,%rbx), %r14
	movl	$.L.str.165, %edi
	callq	strlen
	movl	8(%rbp,%rbx), %ecx
	movl	$195948557, %r12d       # imm = 0xBADF00D
	cmpq	%rcx, %rax
	jne	.LBB19_4
# BB#5:                                 # %land.rhs.i
                                        #   in Loop: Header=BB19_3 Depth=1
	movq	(%r14), %rsi
	movl	$.L.str.165, %edi
	movq	%rax, %rdx
	callq	strncmp
	testl	%eax, %eax
	je	.LBB19_7
# BB#6:                                 #   in Loop: Header=BB19_3 Depth=1
	xorl	%r15d, %r15d
	jmp	.LBB19_24
	.align	16, 0x90
.LBB19_4:                               #   in Loop: Header=BB19_3 Depth=1
	xorl	%r15d, %r15d
	jmp	.LBB19_24
.LBB19_7:                               # %if.then.5
                                        #   in Loop: Header=BB19_3 Depth=1
	movl	$32, %edx
	leaq	288(%rsp), %rdi
	movq	%r14, %rsi
	callq	memcpy
	movq	304(%rsp), %rbp
	movl	312(%rsp), %r12d
	movl	string_match_params_default+16(%rip), %eax
	movl	%eax, 272(%rsp)
	movups	string_match_params_default(%rip), %xmm0
	movaps	%xmm0, 256(%rsp)
	movl	$1, 268(%rsp)
	movl	$.L.str.166, %edx
	movl	$11, %ecx
	movq	%rbp, %rdi
	movl	%r12d, %esi
	leaq	256(%rsp), %r8
	callq	string_match
	testl	%eax, %eax
	jne	.LBB19_10
# BB#8:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB19_3 Depth=1
	movl	$.L.str.167, %edx
	movl	$20, %ecx
	movq	%rbp, %rdi
	movl	%r12d, %esi
	leaq	256(%rsp), %r8
	callq	string_match
	testl	%eax, %eax
	je	.LBB19_9
.LBB19_10:                              # %if.then.14
                                        #   in Loop: Header=BB19_3 Depth=1
	xorl	%ebx, %ebx
	testl	%r12d, %r12d
	je	.LBB19_14
# BB#11:                                # %land.rhs.17.preheader
                                        #   in Loop: Header=BB19_3 Depth=1
	leal	-1(%r12), %eax
	leaq	(%rax,%rbp), %rax
	movl	%r12d, %ecx
	.align	16, 0x90
.LBB19_12:                              # %land.rhs.17
                                        #   Parent Loop BB19_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leal	-1(%rcx), %ebx
	movzbl	(%rax), %edx
	cmpl	$43, %edx
	je	.LBB19_14
# BB#13:                                # %land.rhs.17
                                        #   in Loop: Header=BB19_12 Depth=2
	decq	%rax
	cmpl	$1, %ecx
	movl	%ebx, %ecx
	jne	.LBB19_12
.LBB19_14:                              # %for.end
                                        #   in Loop: Header=BB19_3 Depth=1
	movl	%r12d, %eax
	subl	%ebx, %eax
	cmpl	$3, %eax
	jb	.LBB19_15
# BB#16:                                # %land.lhs.true
                                        #   in Loop: Header=BB19_3 Depth=1
	movl	%ebx, %eax
	movzbl	(%rbp,%rax), %eax
	cmpl	$43, %eax
	jne	.LBB19_17
# BB#18:                                # %while.cond.preheader
                                        #   in Loop: Header=BB19_3 Depth=1
	incl	%ebx
	.align	16, 0x90
.LBB19_19:                              # %while.cond
                                        #   Parent Loop BB19_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rbx, %rax
	cmpl	%r12d, %eax
	jae	.LBB19_21
# BB#20:                                # %land.rhs.33
                                        #   in Loop: Header=BB19_19 Depth=2
	movzbl	(%rbp,%rax), %ecx
	leaq	1(%rax), %rbx
	cmpl	$32, %ecx
	je	.LBB19_19
.LBB19_21:                              # %while.cond.if.end.41.loopexit_crit_edge
                                        #   in Loop: Header=BB19_3 Depth=1
	movq	%rbp, %r14
	movl	%eax, %ebx
	jmp	.LBB19_22
.LBB19_15:                              #   in Loop: Header=BB19_3 Depth=1
	movq	%rbp, %r14
	jmp	.LBB19_22
.LBB19_17:                              #   in Loop: Header=BB19_3 Depth=1
	movq	%rbp, %r14
.LBB19_22:                              # %if.end.41
                                        #   in Loop: Header=BB19_3 Depth=1
	leaq	48(%rsp), %rbp
	movq	%rbp, %rdi
	callq	pdf_store_default_Producer
	movq	%rbp, %rdi
	callq	strlen
	movq	%rax, %rbp
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	addq	%rax, %rbp
	leal	(%rbp,%rbx), %r12d
	movl	$.L.str.168, %edx
	movq	16(%rsp), %rdi          # 8-byte Reload
	movl	%r12d, %esi
	callq	*136(%rdi)
	movq	%rax, %r15
	testq	%r15, %r15
	je	.LBB19_29
# BB#23:                                # %cleanup.thread
                                        #   in Loop: Header=BB19_3 Depth=1
	movl	%ebx, %ebx
	movq	%r15, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	memcpy
	movq	%r15, %rdi
	addq	%rbx, %rdi
	movslq	%ebp, %rdx
	leaq	49(%rsp), %rsi
	callq	memcpy
	movq	%r15, 304(%rsp)
	movl	%r12d, 312(%rsp)
	leaq	288(%rsp), %r14
	.align	16, 0x90
.LBB19_24:                              # %if.end.72
                                        #   in Loop: Header=BB19_3 Depth=1
	movq	(%r14), %rsi
	movl	8(%r14), %edx
	movq	16(%r14), %rcx
	movl	24(%r14), %r8d
	movq	24(%rsp), %rdi          # 8-byte Reload
	callq	cos_dict_put_string
	movl	%eax, %ebp
	testq	%r15, %r15
	je	.LBB19_26
# BB#25:                                # %if.then.75
                                        #   in Loop: Header=BB19_3 Depth=1
	movl	$.L.str.168, %ecx
	movq	16(%rsp), %rdi          # 8-byte Reload
	movq	%r15, %rsi
	movl	%r12d, %edx
	callq	*160(%rdi)
.LBB19_26:                              # %for.inc
                                        #   in Loop: Header=BB19_3 Depth=1
	addq	$2, %r13
	cmpl	44(%rsp), %r13d         # 4-byte Folded Reload
	jae	.LBB19_28
# BB#27:                                # %for.inc
                                        #   in Loop: Header=BB19_3 Depth=1
	testl	%ebp, %ebp
	jns	.LBB19_3
	jmp	.LBB19_28
.LBB19_29:                              # %cleanup.78
	movl	$-25, %ebp
.LBB19_28:                              # %cleanup.87
	movl	%ebp, %eax
	addq	$328, %rsp              # imm = 0x148
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end19:
	.size	pdfmark_DOCINFO, .Lfunc_end19-pdfmark_DOCINFO
	.cfi_endproc

	.align	16, 0x90
	.type	pdfmark_DOCVIEW,@function
pdfmark_DOCVIEW:                        # @pdfmark_DOCVIEW
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp185:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp186:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp187:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp188:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp189:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp190:
	.cfi_def_cfa_offset 56
	subq	$104, %rsp
.Ltmp191:
	.cfi_def_cfa_offset 160
.Ltmp192:
	.cfi_offset %rbx, -56
.Ltmp193:
	.cfi_offset %r12, -48
.Ltmp194:
	.cfi_offset %r13, -40
.Ltmp195:
	.cfi_offset %r14, -32
.Ltmp196:
	.cfi_offset %r15, -24
.Ltmp197:
	.cfi_offset %rbp, -16
	movl	%edx, %r13d
	movq	%rsi, %rbx
	movq	%rdi, %rax
	movl	$-15, %r14d
	testb	$1, %r13b
	jne	.LBB20_18
# BB#1:                                 # %if.end
	leaq	16(%rsp), %rdi
	xorl	%r8d, %r8d
	movq	%rax, %rsi
	movq	%rax, %rbp
	movq	%rbx, %rdx
	movl	%r13d, %ecx
	callq	pdfmark_make_dest
	testl	%eax, %eax
	js	.LBB20_18
# BB#2:                                 # %if.end.2
	movq	26512(%rbp), %r12
	je	.LBB20_3
# BB#14:                                # %for.cond.preheader.i
	xorl	%r14d, %r14d
	testl	%r13d, %r13d
	je	.LBB20_18
# BB#15:                                # %for.body.i.preheader
	addq	$24, %rbx
	movl	$2, %ebp
	.align	16, 0x90
.LBB20_16:                              # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbx), %rsi
	movl	-16(%rbx), %edx
	movq	-8(%rbx), %rcx
	movl	(%rbx), %r8d
	movq	%r12, %rdi
	callq	cos_dict_put_string
	movl	%eax, %r14d
	cmpl	%r13d, %ebp
	jae	.LBB20_18
# BB#17:                                # %for.body.i
                                        #   in Loop: Header=BB20_16 Depth=1
	addl	$2, %ebp
	addq	$32, %rbx
	testl	%r14d, %r14d
	jns	.LBB20_16
	jmp	.LBB20_18
.LBB20_3:                               # %if.then.4
	leaq	16(%rsp), %r14
	movq	%r14, %rdi
	callq	strlen
	movl	$.L.str.169, %esi
	movq	%r12, %rdi
	movq	%r14, %rdx
	movl	%eax, %ecx
	callq	cos_dict_put_c_key_string
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB20_18
# BB#4:                                 # %if.then.4
	movq	%rbp, 8(%rsp)           # 8-byte Spill
	testl	%r13d, %r13d
	je	.LBB20_18
# BB#5:                                 # %for.body.preheader
	addq	$24, %rbx
	movl	$2, %r15d
	.align	16, 0x90
.LBB20_6:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$.L.str.107, %edi
	callq	strlen
	movl	-16(%rbx), %r12d
	cmpq	%r12, %rax
	jne	.LBB20_9
# BB#7:                                 # %land.rhs.i
                                        #   in Loop: Header=BB20_6 Depth=1
	movq	-24(%rbx), %rsi
	movl	$.L.str.107, %edi
	movq	%rax, %rdx
	callq	strncmp
	testl	%eax, %eax
	je	.LBB20_8
.LBB20_9:                               # %lor.lhs.false
                                        #   in Loop: Header=BB20_6 Depth=1
	movl	%r13d, %ebp
	movl	$.L.str.108, %edi
	callq	strlen
	movq	-24(%rbx), %r13
	cmpq	%r12, %rax
	jne	.LBB20_11
# BB#10:                                # %land.rhs.i.27
                                        #   in Loop: Header=BB20_6 Depth=1
	movl	$.L.str.108, %edi
	movq	%r13, %rsi
	movq	%r12, %rdx
	callq	strncmp
	testl	%eax, %eax
	je	.LBB20_12
.LBB20_11:                              # %if.then.19
                                        #   in Loop: Header=BB20_6 Depth=1
	movq	8(%rsp), %rax           # 8-byte Reload
	movq	26512(%rax), %rdi
	movq	-8(%rbx), %rcx
	movl	(%rbx), %r8d
	movq	%r13, %rsi
	movl	%r12d, %edx
	callq	cos_dict_put_string
	movl	%eax, %r14d
	jmp	.LBB20_12
.LBB20_8:                               #   in Loop: Header=BB20_6 Depth=1
	movl	%r13d, %ebp
	.align	16, 0x90
.LBB20_12:                              # %for.inc
                                        #   in Loop: Header=BB20_6 Depth=1
	testl	%r14d, %r14d
	js	.LBB20_18
# BB#13:                                # %for.inc
                                        #   in Loop: Header=BB20_6 Depth=1
	addq	$32, %rbx
	movl	%ebp, %r13d
	cmpl	%r13d, %r15d
	leal	2(%r15), %eax
	movl	%eax, %r15d
	jb	.LBB20_6
.LBB20_18:                              # %cleanup
	movl	%r14d, %eax
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end20:
	.size	pdfmark_DOCVIEW, .Lfunc_end20-pdfmark_DOCVIEW
	.cfi_endproc

	.align	16, 0x90
	.type	pdfmark_BP,@function
pdfmark_BP:                             # @pdfmark_BP
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp198:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp199:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp200:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp201:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp202:
	.cfi_def_cfa_offset 48
	subq	$720, %rsp              # imm = 0x2D0
.Ltmp203:
	.cfi_def_cfa_offset 768
.Ltmp204:
	.cfi_offset %rbx, -48
.Ltmp205:
	.cfi_offset %r12, -40
.Ltmp206:
	.cfi_offset %r14, -32
.Ltmp207:
	.cfi_offset %r15, -24
.Ltmp208:
	.cfi_offset %rbp, -16
	movq	%r8, %r14
	movq	%rcx, %r12
	movq	%rsi, %rbx
	movq	%rdi, %r15
	cmpl	$2, %edx
	movl	$-15, %ebp
	jne	.LBB21_17
# BB#1:                                 # %entry
	testq	%r14, %r14
	je	.LBB21_17
# BB#2:                                 # %lor.lhs.false.2
	movl	$.L.str.170, %edi
	callq	strlen
	movl	8(%rbx), %ecx
	cmpq	%rcx, %rax
	jne	.LBB21_17
# BB#3:                                 # %land.rhs.i
	movq	(%rbx), %rsi
	movl	$.L.str.170, %edi
	movq	%rax, %rdx
	callq	strncmp
	testl	%eax, %eax
	jne	.LBB21_17
# BB#4:                                 # %if.end
	leaq	656(%rsp), %rsi
	movq	%r12, %rdi
	callq	gs_matrix_invert
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB21_17
# BB#5:                                 # %if.end.6
	movl	24(%rbx), %edx
	cmpq	$100, %rdx
	movl	$-13, %ebp
	ja	.LBB21_17
# BB#6:                                 # %if.end.10
	movq	16(%rbx), %rsi
	leaq	352(%rsp), %rbp
	movq	%rbp, %rdi
	callq	memcpy
	movl	24(%rbx), %eax
	movb	$0, 352(%rsp,%rax)
	leaq	696(%rsp), %rcx
	leaq	704(%rsp), %r8
	leaq	712(%rsp), %r9
	leaq	688(%rsp), %rdx
	movl	$.L.str.171, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	callq	__isoc99_sscanf
	cmpl	$4, %eax
	movl	$-15, %ebp
	jne	.LBB21_17
# BB#7:                                 # %if.end.27
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	testq	26664(%r15), %rax
	movl	$-13, %ebp
	je	.LBB21_17
# BB#8:                                 # %if.end.31
	leaq	680(%rsp), %rsi
	movq	%r15, %rdi
	callq	start_XObject
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB21_17
# BB#9:                                 # %if.end.36
	movq	24(%r15), %rdi
	movl	8(%r14), %esi
	movl	$.L.str.172, %edx
	callq	*136(%rdi)
	movq	%rax, %rbx
	movl	$-25, %ebp
	testq	%rbx, %rbx
	je	.LBB21_17
# BB#10:                                # %if.end.44
	movq	(%r14), %rsi
	movl	8(%r14), %edx
	movq	%rbx, %rdi
	callq	memcpy
	movq	%rbx, 30656(%r15)
	movl	8(%r14), %eax
	movl	%eax, 30664(%r15)
	movq	680(%rsp), %r14
	movb	$1, 49(%r14)
	leaq	688(%rsp), %rdi
	movq	%r12, %rsi
	movq	%rdi, %rdx
	callq	gs_bbox_transform
	leaq	(%rsp), %rbx
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	s_init
	leaq	560(%rsp), %rsi
	movl	$96, %edx
	movq	%rbx, %rdi
	callq	swrite_string
	movsd	688(%rsp), %xmm0        # xmm0 = mem[0],zero
	movsd	696(%rsp), %xmm1        # xmm1 = mem[0],zero
	movsd	704(%rsp), %xmm2        # xmm2 = mem[0],zero
	movsd	712(%rsp), %xmm3        # xmm3 = mem[0],zero
	movl	$.L.str.18, %esi
	movq	%rbx, %rdi
	callq	pprintg4
	movq	%rbx, %rdi
	callq	stell
	movq	%rax, %r12
	leaq	464(%rsp), %rsi
	movl	$96, %edx
	movq	%rbx, %rdi
	callq	swrite_string
	movss	656(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	660(%rsp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm1
	movss	664(%rsp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	movss	668(%rsp), %xmm3        # xmm3 = mem[0],zero,zero,zero
	cvtss2sd	%xmm3, %xmm3
	movss	672(%rsp), %xmm4        # xmm4 = mem[0],zero,zero,zero
	cvtss2sd	%xmm4, %xmm4
	movss	676(%rsp), %xmm5        # xmm5 = mem[0],zero,zero,zero
	cvtss2sd	%xmm5, %xmm5
	movl	$.L.str.3, %esi
	movq	%rbx, %rdi
	callq	pprintg6
	movq	%rbx, %rdi
	callq	stell
	movq	%rax, %rbx
	movq	%r14, %rdi
	callq	cos_stream_dict
	movl	$.L.str.92, %esi
	movl	$.L.str.155, %edx
	movq	%rax, %rdi
	callq	cos_dict_put_c_strings
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB21_17
# BB#11:                                # %lor.lhs.false.80
	movq	%r14, %rdi
	callq	cos_stream_dict
	movl	$.L.str.110, %esi
	movl	$.L.str.173, %edx
	movq	%rax, %rdi
	callq	cos_dict_put_c_strings
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB21_17
# BB#12:                                # %lor.lhs.false.84
	movq	%r14, %rdi
	callq	cos_stream_dict
	movl	$.L.str.174, %esi
	movl	$.L.str.175, %edx
	movq	%rax, %rdi
	callq	cos_dict_put_c_strings
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB21_17
# BB#13:                                # %lor.lhs.false.88
	movq	%r14, %rdi
	callq	cos_stream_dict
	leaq	560(%rsp), %rdx
	movl	$.L.str.170, %esi
	movq	%rax, %rdi
	movl	%r12d, %ecx
	callq	cos_dict_put_c_key_string
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB21_17
# BB#14:                                # %lor.lhs.false.94
	movq	%r14, %rdi
	callq	cos_stream_dict
	leaq	464(%rsp), %rdx
	movl	$.L.str.176, %esi
	movq	%rax, %rdi
	movl	%ebx, %ecx
	callq	cos_dict_put_c_key_string
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB21_17
# BB#15:                                # %lor.lhs.false.100
	movq	%r14, %rdi
	callq	cos_stream_dict
	movq	30448(%r15), %rdx
	movl	$.L.str.177, %esi
	movq	%rax, %rdi
	callq	cos_dict_put_c_key_object
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB21_17
# BB#16:                                # %if.end.106
	incl	30408(%r15)
	xorl	%ebp, %ebp
.LBB21_17:                              # %cleanup.107
	movl	%ebp, %eax
	addq	$720, %rsp              # imm = 0x2D0
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end21:
	.size	pdfmark_BP, .Lfunc_end21-pdfmark_BP
	.cfi_endproc

	.align	16, 0x90
	.type	pdfmark_EP,@function
pdfmark_EP:                             # @pdfmark_EP
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp209:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp210:
	.cfi_def_cfa_offset 24
	subq	$24, %rsp
.Ltmp211:
	.cfi_def_cfa_offset 48
.Ltmp212:
	.cfi_offset %rbx, -24
.Ltmp213:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movq	30480(%rbx), %rax
	movq	%rax, 16(%rsp)
	movups	30656(%rbx), %xmm0
	movaps	%xmm0, (%rsp)
	movq	30448(%rbx), %rdi
	movl	26584(%rbx), %esi
	callq	pdf_add_procsets
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB22_4
# BB#1:                                 # %if.end
	movq	%rbx, %rdi
	callq	pdf_exit_substream
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB22_4
# BB#2:                                 # %if.end.5
	leaq	(%rsp), %rsi
	leaq	16(%rsp), %rdx
	movq	%rbx, %rdi
	callq	pdfmark_bind_named_object
	xorl	%ebp, %ebp
	testl	%eax, %eax
	js	.LBB22_4
# BB#3:                                 # %if.end.9
	movq	24(%rbx), %rdi
	movq	(%rsp), %rsi
	movl	8(%rsp), %edx
	movl	$.L.str.178, %ecx
	callq	gs_free_const_string
	decl	30408(%rbx)
.LBB22_4:                               # %cleanup
	movl	%ebp, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end22:
	.size	pdfmark_EP, .Lfunc_end22-pdfmark_EP
	.cfi_endproc

	.align	16, 0x90
	.type	pdfmark_SP,@function
pdfmark_SP:                             # @pdfmark_SP
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp214:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp215:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp216:
	.cfi_def_cfa_offset 32
.Ltmp217:
	.cfi_offset %rbx, -24
.Ltmp218:
	.cfi_offset %r14, -16
	movq	%rcx, %r14
	movq	%rdi, %rbx
	cmpl	$1, %edx
	jne	.LBB23_1
# BB#2:                                 # %if.end
	leaq	(%rsp), %rcx
	movl	$cos_stream_procs, %edx
	movq	%rbx, %rdi
	callq	pdf_get_named
	testl	%eax, %eax
	js	.LBB23_8
# BB#3:                                 # %if.end.3
	movq	(%rsp), %rax
	cmpb	$0, 48(%rax)
	je	.LBB23_5
# BB#4:
	movl	$-15, %eax
	jmp	.LBB23_8
.LBB23_1:
	movl	$-15, %eax
.LBB23_8:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.LBB23_5:                               # %lor.lhs.false
	cmpb	$0, 49(%rax)
	movl	$-15, %eax
	je	.LBB23_8
# BB#6:                                 # %if.end.6
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	pdf_open_contents
	testl	%eax, %eax
	js	.LBB23_8
# BB#7:                                 # %if.end.11
	movl	$.L.str.179, %esi
	movl	$.L.str.180, %ecx
	movq	%rbx, %rdi
	movq	%r14, %rdx
	callq	pdf_put_matrix
	movq	5848(%rbx), %rdi
	movq	(%rsp), %rax
	movq	8(%rax), %rdx
	movl	$.L.str.181, %esi
	callq	pprintld1
	movq	26664(%rbx), %rax
	movq	(%rsp), %rcx
	movq	40(%rcx), %rcx
	orq	%rax, 56(%rcx)
	movq	30448(%rbx), %rsi
	movl	$.L.str.155, %edx
	movq	%rbx, %rdi
	callq	pdf_add_resource
	movl	%eax, %ecx
	sarl	$31, %eax
	andl	%ecx, %eax
	jmp	.LBB23_8
.Lfunc_end23:
	.size	pdfmark_SP, .Lfunc_end23-pdfmark_SP
	.cfi_endproc

	.align	16, 0x90
	.type	pdfmark_OBJ,@function
pdfmark_OBJ:                            # @pdfmark_OBJ
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp219:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp220:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp221:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp222:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp223:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp224:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp225:
	.cfi_def_cfa_offset 80
.Ltmp226:
	.cfi_offset %rbx, -56
.Ltmp227:
	.cfi_offset %r12, -48
.Ltmp228:
	.cfi_offset %r13, -40
.Ltmp229:
	.cfi_offset %r14, -32
.Ltmp230:
	.cfi_offset %r15, -24
.Ltmp231:
	.cfi_offset %rbp, -16
	movq	%r8, %rbx
	movq	%rsi, %rbp
	movq	%rdi, %r14
	cmpl	$2, %edx
	movl	$-15, %r12d
	jne	.LBB24_32
# BB#1:                                 # %entry
	testq	%rbx, %rbx
	je	.LBB24_32
# BB#2:                                 # %lor.lhs.false.2
	movl	$.L.str.182, %edi
	callq	strlen
	movl	8(%rbp), %ecx
	cmpq	%rcx, %rax
	jne	.LBB24_32
# BB#3:                                 # %land.rhs.i
	movq	(%rbp), %rsi
	movl	$.L.str.182, %edi
	movq	%rax, %rdx
	callq	strncmp
	testl	%eax, %eax
	jne	.LBB24_32
# BB#4:                                 # %if.end
	movl	$.L.str.183, %edi
	callq	strlen
	movl	24(%rbp), %r15d
	cmpq	%r15, %rax
	jne	.LBB24_6
# BB#5:                                 # %land.rhs.i.20
	movq	16(%rbp), %rsi
	movl	$.L.str.183, %edi
	movq	%rax, %rdx
	callq	strncmp
	movl	$cos_array_procs, %edx
	xorl	%r13d, %r13d
	testl	%eax, %eax
	je	.LBB24_11
.LBB24_6:                               # %if.else
	movl	$.L.str.184, %edi
	callq	strlen
	cmpq	%r15, %rax
	jne	.LBB24_8
# BB#7:                                 # %land.rhs.i.30
	movq	16(%rbp), %rsi
	movl	$.L.str.184, %edi
	movq	%r15, %rdx
	callq	strncmp
	movl	$cos_dict_procs, %edx
	xorl	%r13d, %r13d
	testl	%eax, %eax
	je	.LBB24_11
.LBB24_8:                               # %if.else.11
	movl	$.L.str.185, %edi
	callq	strlen
	cmpq	%r15, %rax
	jne	.LBB24_32
# BB#9:                                 # %pdf_key_eq.exit42
	movq	16(%rbp), %rsi
	movl	$.L.str.185, %edi
	movq	%r15, %rdx
	callq	strncmp
	testl	%eax, %eax
	sete	%al
	movl	$cos_stream_procs, %edx
	jne	.LBB24_32
# BB#10:
	movzbl	%al, %r13d
.LBB24_11:                              # %if.end.19
	leaq	16(%rsp), %rcx
	movl	$1, %r8d
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%rdx, %rbp
	callq	pdf_make_named
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB24_12
# BB#18:                                # %if.end.30
	xorl	%r12d, %r12d
	testl	%r13d, %r13d
	je	.LBB24_32
# BB#19:                                # %if.then.32
	movq	16(%rsp), %rbx
	movq	1728(%r14), %r15
	movl	$s_LZWE_template, %ebp
	cmpl	$0, 8936(%r14)
	je	.LBB24_22
# BB#20:                                # %land.rhs.i.44
	movl	$s_zlibE_template, %ebp
	cmpl	$3009, 8848(%r14)       # imm = 0xBC1
	ja	.LBB24_22
# BB#21:                                # %select.mid
	movl	$s_LZWE_template, %ebp
.LBB24_22:                              # %land.end.i
	movl	$.L.str.197, %edx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	cos_write_stream_alloc
	movq	%rax, 64(%rbx)
	movl	$-25, %r12d
	testq	%rax, %rax
	je	.LBB24_32
# BB#23:                                # %if.end.i
	leaq	64(%rbx), %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	cmpl	$0, 8852(%r14)
	jne	.LBB24_27
# BB#24:                                # %if.then.4.i
	movq	s_A85E_template(%rip), %rsi
	movl	$.L.str.197, %edx
	movq	%r15, %rdi
	callq	s_alloc_state
	movq	%rax, %r13
	testq	%r13, %r13
	je	.LBB24_32
# BB#25:                                # %if.end.8.i
	movl	$s_A85E_template, %esi
	movq	8(%rsp), %rdi           # 8-byte Reload
	movq	%r13, %rdx
	movq	%r15, %rcx
	callq	s_add_filter
	testq	%rax, %rax
	je	.LBB24_26
.LBB24_27:                              # %if.end.14.i
	movq	(%rbp), %rsi
	movl	$.L.str.197, %edx
	movq	%r15, %rdi
	callq	s_alloc_state
	movq	%rax, %r13
	testq	%r13, %r13
	je	.LBB24_32
# BB#28:                                # %if.end.18.i
	movq	40(%rbp), %rax
	testq	%rax, %rax
	je	.LBB24_30
# BB#29:                                # %if.then.20.i
	movq	%r13, %rdi
	callq	*%rax
.LBB24_30:                              # %if.end.22.i
	movq	8(%rsp), %rdi           # 8-byte Reload
	movq	%rbp, %rsi
	movq	%r13, %rdx
	movq	%r15, %rcx
	callq	s_add_filter
	testq	%rax, %rax
	je	.LBB24_26
# BB#31:                                # %if.end.29.i
	movq	%rbx, %rdi
	callq	cos_stream_dict
	movq	64(%rbx), %rdx
	movl	$setup_pdfmark_stream_compression.fnames, %ecx
	movq	%rax, %rdi
	movq	%r14, %rsi
	callq	pdf_put_filters
	movl	%eax, %r12d
	jmp	.LBB24_32
.LBB24_12:                              # %if.then.22
	cmpl	$-15, %r15d
	jne	.LBB24_13
# BB#14:                                # %land.lhs.true
	leaq	16(%rsp), %rdx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	pdf_refer_named
	testl	%eax, %eax
	js	.LBB24_15
# BB#16:                                # %land.lhs.true.26
	movq	16(%rsp), %rax
	xorl	%r12d, %r12d
	cmpq	%rbp, (%rax)
	je	.LBB24_32
# BB#17:                                # %if.end.29
	movl	%r15d, %r12d
	jmp	.LBB24_32
.LBB24_13:
	movl	%r15d, %r12d
	jmp	.LBB24_32
.LBB24_26:                              # %if.then.12.i
	movl	$.L.str.198, %edx
	movq	%r15, %rdi
	movq	%r13, %rsi
	callq	*24(%r15)
	jmp	.LBB24_32
.LBB24_15:
	movl	%r15d, %r12d
.LBB24_32:                              # %cleanup
	movl	%r12d, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end24:
	.size	pdfmark_OBJ, .Lfunc_end24-pdfmark_OBJ
	.cfi_endproc

	.align	16, 0x90
	.type	pdfmark_PUT,@function
pdfmark_PUT:                            # @pdfmark_PUT
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp232:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp233:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp234:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp235:
	.cfi_def_cfa_offset 40
	subq	$72, %rsp
.Ltmp236:
	.cfi_def_cfa_offset 112
.Ltmp237:
	.cfi_offset %rbx, -40
.Ltmp238:
	.cfi_offset %r12, -32
.Ltmp239:
	.cfi_offset %r14, -24
.Ltmp240:
	.cfi_offset %r15, -16
	movq	%rsi, %r12
	movl	$-15, %eax
	cmpl	$3, %edx
	jne	.LBB25_7
# BB#1:                                 # %if.end
	leaq	40(%rsp), %rcx
	movl	$cos_array_procs, %edx
	movq	%r12, %rsi
	callq	pdf_get_named
	testl	%eax, %eax
	js	.LBB25_7
# BB#2:                                 # %if.end.3
	movl	24(%r12), %ebx
	cmpq	$20, %rbx
	movl	$-13, %eax
	ja	.LBB25_7
# BB#3:                                 # %if.end.i
	movq	16(%r12), %rsi
	leaq	48(%rsp), %r14
	movq	%r14, %rdi
	movq	%rbx, %rdx
	callq	memcpy
	movb	$0, 48(%rsp,%rbx)
	leaq	12(%rsp), %rdx
	movl	$.L.str, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	__isoc99_sscanf
	movl	%eax, %ecx
	movl	$-15, %eax
	cmpl	$1, %ecx
	jne	.LBB25_7
# BB#4:                                 # %if.end.8
	movslq	12(%rsp), %r14
	testq	%r14, %r14
	movl	$-15, %eax
	js	.LBB25_7
# BB#5:                                 # %if.end.11
	movq	40(%rsp), %r15
	cmpb	$0, 50(%r15)
	jne	.LBB25_7
# BB#6:                                 # %if.end.13
	movq	32(%r12), %rsi
	movl	40(%r12), %edx
	leaq	16(%rsp), %rdi
	callq	cos_string_value
	movq	%r15, %rdi
	movq	%r14, %rsi
	movq	%rax, %rdx
	callq	cos_array_put
.LBB25_7:                               # %cleanup
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end25:
	.size	pdfmark_PUT, .Lfunc_end25-pdfmark_PUT
	.cfi_endproc

	.align	16, 0x90
	.type	pdfmark_PUTDICT,@function
pdfmark_PUTDICT:                        # @pdfmark_PUTDICT
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp241:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp242:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp243:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp244:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp245:
	.cfi_def_cfa_offset 48
.Ltmp246:
	.cfi_offset %rbx, -40
.Ltmp247:
	.cfi_offset %r14, -32
.Ltmp248:
	.cfi_offset %r15, -24
.Ltmp249:
	.cfi_offset %rbp, -16
	movl	%edx, %r14d
	movq	%rsi, %rbx
	leaq	(%rsp), %rdx
	callq	pdf_refer_named
	testl	%eax, %eax
	js	.LBB26_9
# BB#1:                                 # %if.end
	movq	(%rsp), %r15
	movq	(%r15), %rcx
	movl	$cos_dict_procs, %eax
	cmpq	%rax, %rcx
	je	.LBB26_3
# BB#2:                                 # %if.end
	movl	$-20, %eax
	movl	$cos_stream_procs, %edx
	cmpq	%rdx, %rcx
	jne	.LBB26_9
.LBB26_3:                               # %if.end.5
	movl	$-15, %eax
	cmpb	$0, 50(%r15)
	jne	.LBB26_9
# BB#4:                                 # %if.end.7
	decl	%r14d
	testb	$1, %r14b
	jne	.LBB26_9
# BB#5:                                 # %for.cond.preheader.i
	xorl	%eax, %eax
	testl	%r14d, %r14d
	je	.LBB26_9
# BB#6:                                 # %for.body.i.preheader
	addq	$40, %rbx
	movl	$2, %ebp
	.align	16, 0x90
.LBB26_7:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbx), %rsi
	movl	-16(%rbx), %edx
	movq	-8(%rbx), %rcx
	movl	(%rbx), %r8d
	movq	%r15, %rdi
	callq	cos_dict_put_string
	cmpl	%r14d, %ebp
	jae	.LBB26_9
# BB#8:                                 # %for.body.i
                                        #   in Loop: Header=BB26_7 Depth=1
	addl	$2, %ebp
	addq	$32, %rbx
	testl	%eax, %eax
	jns	.LBB26_7
.LBB26_9:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end26:
	.size	pdfmark_PUTDICT, .Lfunc_end26-pdfmark_PUTDICT
	.cfi_endproc

	.align	16, 0x90
	.type	pdfmark_PUTINTERVAL,@function
pdfmark_PUTINTERVAL:                    # @pdfmark_PUTINTERVAL
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp250:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp251:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp252:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp253:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp254:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp255:
	.cfi_def_cfa_offset 56
	subq	$72, %rsp
.Ltmp256:
	.cfi_def_cfa_offset 128
.Ltmp257:
	.cfi_offset %rbx, -56
.Ltmp258:
	.cfi_offset %r12, -48
.Ltmp259:
	.cfi_offset %r13, -40
.Ltmp260:
	.cfi_offset %r14, -32
.Ltmp261:
	.cfi_offset %r15, -24
.Ltmp262:
	.cfi_offset %rbp, -16
	movl	%edx, %r15d
	movq	%rsi, %r12
	movl	$-15, %eax
	cmpl	$2, %r15d
	jb	.LBB27_10
# BB#1:                                 # %if.end
	leaq	40(%rsp), %rcx
	movl	$cos_array_procs, %edx
	movq	%r12, %rsi
	callq	pdf_get_named
	testl	%eax, %eax
	js	.LBB27_10
# BB#2:                                 # %if.end.3
	movl	24(%r12), %ebp
	cmpq	$20, %rbp
	movl	$-13, %eax
	ja	.LBB27_10
# BB#3:                                 # %if.end.i
	movq	16(%r12), %rsi
	leaq	48(%rsp), %r14
	movq	%r14, %rdi
	movq	%rbp, %rdx
	callq	memcpy
	movb	$0, 48(%rsp,%rbp)
	leaq	12(%rsp), %rdx
	movl	$.L.str, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	__isoc99_sscanf
	movl	%eax, %ecx
	movl	$-15, %eax
	cmpl	$1, %ecx
	jne	.LBB27_10
# BB#4:                                 # %if.end.8
	movl	12(%rsp), %ecx
	movl	$-15, %eax
	testl	%ecx, %ecx
	js	.LBB27_10
# BB#5:                                 # %for.cond.preheader
	xorl	%eax, %eax
	cmpl	$3, %r15d
	jb	.LBB27_10
# BB#6:                                 # %for.body.lr.ph
	addq	$40, %r12
	xorl	%ebp, %ebp
	leaq	16(%rsp), %r14
	jmp	.LBB27_7
	.align	16, 0x90
.LBB27_9:                               # %for.body.for.body_crit_edge
                                        #   in Loop: Header=BB27_7 Depth=1
	movl	12(%rsp), %ecx
	addq	$16, %r12
	incl	%ebp
.LBB27_7:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	40(%rsp), %r13
	leal	(%rcx,%rbp), %eax
	movslq	%eax, %rbx
	movq	-8(%r12), %rsi
	movl	(%r12), %edx
	movq	%r14, %rdi
	callq	cos_string_value
	movq	%r13, %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	cos_array_put
	testl	%eax, %eax
	js	.LBB27_10
# BB#8:                                 # %for.body
                                        #   in Loop: Header=BB27_7 Depth=1
	leal	3(%rbp), %ecx
	cmpl	%r15d, %ecx
	jb	.LBB27_9
.LBB27_10:                              # %cleanup
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end27:
	.size	pdfmark_PUTINTERVAL, .Lfunc_end27-pdfmark_PUTINTERVAL
	.cfi_endproc

	.align	16, 0x90
	.type	pdfmark_PUTSTREAM,@function
pdfmark_PUTSTREAM:                      # @pdfmark_PUTSTREAM
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp263:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp264:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp265:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp266:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp267:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp268:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp269:
	.cfi_def_cfa_offset 80
.Ltmp270:
	.cfi_offset %rbx, -56
.Ltmp271:
	.cfi_offset %r12, -48
.Ltmp272:
	.cfi_offset %r13, -40
.Ltmp273:
	.cfi_offset %r14, -32
.Ltmp274:
	.cfi_offset %r15, -24
.Ltmp275:
	.cfi_offset %rbp, -16
	movl	%edx, %r12d
	movq	%rsi, %rbx
	movl	$-15, %r13d
	cmpl	$2, %r12d
	jb	.LBB28_9
# BB#1:                                 # %if.end
	leaq	16(%rsp), %rcx
	movl	$cos_stream_procs, %edx
	movq	%rbx, %rsi
	callq	pdf_get_named
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB28_8
# BB#2:                                 # %if.end.3
	movq	16(%rsp), %rax
	cmpb	$0, 48(%rax)
	je	.LBB28_9
# BB#3:                                 # %for.body.preheader
	addq	$24, %rbx
	movl	$1, %ebp
	leaq	12(%rsp), %r15
	movl	$-12, %r13d
	.align	16, 0x90
.LBB28_5:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	64(%rax), %rdi
	movq	-8(%rbx), %rsi
	movl	(%rbx), %edx
	movq	%r15, %rcx
	callq	sputs
	testl	%eax, %eax
	jne	.LBB28_9
# BB#4:                                 # %for.cond
                                        #   in Loop: Header=BB28_5 Depth=1
	movq	16(%rsp), %rax
	addq	$16, %rbx
	incl	%ebp
	cmpl	%r12d, %ebp
	jb	.LBB28_5
# BB#6:                                 # %for.end
	cmpb	$0, 50(%rax)
	je	.LBB28_8
# BB#7:                                 # %select.mid
	movl	$-15, %r14d
.LBB28_8:                               # %select.end
	movl	%r14d, %r13d
.LBB28_9:                               # %cleanup
	movl	%r13d, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end28:
	.size	pdfmark_PUTSTREAM, .Lfunc_end28-pdfmark_PUTSTREAM
	.cfi_endproc

	.align	16, 0x90
	.type	pdfmark_APPEND,@function
pdfmark_APPEND:                         # @pdfmark_APPEND
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp276:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp277:
	.cfi_def_cfa_offset 24
	subq	$40, %rsp
.Ltmp278:
	.cfi_def_cfa_offset 64
.Ltmp279:
	.cfi_offset %rbx, -24
.Ltmp280:
	.cfi_offset %r14, -16
	movq	%rsi, %rbx
	movl	$-15, %eax
	cmpl	$2, %edx
	jne	.LBB29_3
# BB#1:                                 # %if.end
	leaq	32(%rsp), %rcx
	movl	$cos_array_procs, %edx
	movq	%rbx, %rsi
	callq	pdf_get_named
	testl	%eax, %eax
	js	.LBB29_3
# BB#2:                                 # %if.end.3
	movq	32(%rsp), %r14
	movq	16(%rbx), %rsi
	movl	24(%rbx), %edx
	leaq	8(%rsp), %rdi
	callq	cos_string_value
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	cos_array_add
.LBB29_3:                               # %cleanup
	addq	$40, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end29:
	.size	pdfmark_APPEND, .Lfunc_end29-pdfmark_APPEND
	.cfi_endproc

	.align	16, 0x90
	.type	pdfmark_CLOSE,@function
pdfmark_CLOSE:                          # @pdfmark_CLOSE
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp281:
	.cfi_def_cfa_offset 16
	movl	$-15, %eax
	cmpl	$1, %edx
	jne	.LBB30_4
# BB#1:                                 # %if.end
	leaq	(%rsp), %rcx
	movl	$cos_stream_procs, %edx
	callq	pdf_get_named
	testl	%eax, %eax
	js	.LBB30_4
# BB#2:                                 # %if.end.3
	movq	(%rsp), %rcx
	cmpb	$0, 48(%rcx)
	movl	$-15, %eax
	je	.LBB30_4
# BB#3:                                 # %if.end.5
	movb	$0, 48(%rcx)
	xorl	%eax, %eax
.LBB30_4:                               # %cleanup
	popq	%rdx
	retq
.Lfunc_end30:
	.size	pdfmark_CLOSE, .Lfunc_end30-pdfmark_CLOSE
	.cfi_endproc

	.align	16, 0x90
	.type	pdfmark_NamespacePush,@function
pdfmark_NamespacePush:                  # @pdfmark_NamespacePush
	.cfi_startproc
# BB#0:                                 # %entry
	testl	%edx, %edx
	je	.LBB31_2
# BB#1:                                 # %return
	movl	$-15, %eax
	retq
.LBB31_2:                               # %if.end
	jmp	pdf_push_namespace      # TAILCALL
.Lfunc_end31:
	.size	pdfmark_NamespacePush, .Lfunc_end31-pdfmark_NamespacePush
	.cfi_endproc

	.align	16, 0x90
	.type	pdfmark_NamespacePop,@function
pdfmark_NamespacePop:                   # @pdfmark_NamespacePop
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp282:
	.cfi_def_cfa_offset 16
.Ltmp283:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	testl	%edx, %edx
	je	.LBB32_2
# BB#1:                                 # %return
	movl	$-15, %eax
	popq	%rbx
	retq
.LBB32_2:                               # %if.end
	movq	28760(%rbx), %rdi
	movq	%rbx, %rsi
	callq	cos_dict_objects_write
	movq	%rbx, %rdi
	popq	%rbx
	jmp	pdf_pop_namespace       # TAILCALL
.Lfunc_end32:
	.size	pdfmark_NamespacePop, .Lfunc_end32-pdfmark_NamespacePop
	.cfi_endproc

	.align	16, 0x90
	.type	pdfmark_NI,@function
pdfmark_NI:                             # @pdfmark_NI
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp284:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp285:
	.cfi_def_cfa_offset 32
.Ltmp286:
	.cfi_offset %rbx, -16
	movq	%r8, %rsi
	movq	%rdi, %rbx
	testl	%edx, %edx
	movl	$-15, %eax
	jne	.LBB33_4
# BB#1:                                 # %entry
	testq	%rsi, %rsi
	je	.LBB33_4
# BB#2:                                 # %if.end
	leaq	8(%rsp), %rcx
	movl	$cos_dict_procs, %edx
	movl	$1, %r8d
	movq	%rbx, %rdi
	callq	pdf_make_named
	testl	%eax, %eax
	js	.LBB33_4
# BB#3:                                 # %if.end.4
	movq	28768(%rbx), %rdi
	movq	8(%rsp), %rsi
	callq	cos_array_add_object
.LBB33_4:                               # %cleanup
	addq	$16, %rsp
	popq	%rbx
	retq
.Lfunc_end33:
	.size	pdfmark_NI, .Lfunc_end33-pdfmark_NI
	.cfi_endproc

	.align	16, 0x90
	.type	pdfmark_MP,@function
pdfmark_MP:                             # @pdfmark_MP
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end34:
	.size	pdfmark_MP, .Lfunc_end34-pdfmark_MP
	.cfi_endproc

	.align	16, 0x90
	.type	pdfmark_DP,@function
pdfmark_DP:                             # @pdfmark_DP
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end35:
	.size	pdfmark_DP, .Lfunc_end35-pdfmark_DP
	.cfi_endproc

	.align	16, 0x90
	.type	pdfmark_BMC,@function
pdfmark_BMC:                            # @pdfmark_BMC
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end36:
	.size	pdfmark_BMC, .Lfunc_end36-pdfmark_BMC
	.cfi_endproc

	.align	16, 0x90
	.type	pdfmark_BDC,@function
pdfmark_BDC:                            # @pdfmark_BDC
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end37:
	.size	pdfmark_BDC, .Lfunc_end37-pdfmark_BDC
	.cfi_endproc

	.align	16, 0x90
	.type	pdfmark_EMC,@function
pdfmark_EMC:                            # @pdfmark_EMC
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end38:
	.size	pdfmark_EMC, .Lfunc_end38-pdfmark_EMC
	.cfi_endproc

	.align	16, 0x90
	.type	pdfmark_StRoleMap,@function
pdfmark_StRoleMap:                      # @pdfmark_StRoleMap
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end39:
	.size	pdfmark_StRoleMap, .Lfunc_end39-pdfmark_StRoleMap
	.cfi_endproc

	.align	16, 0x90
	.type	pdfmark_StClassMap,@function
pdfmark_StClassMap:                     # @pdfmark_StClassMap
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end40:
	.size	pdfmark_StClassMap, .Lfunc_end40-pdfmark_StClassMap
	.cfi_endproc

	.align	16, 0x90
	.type	pdfmark_StPNE,@function
pdfmark_StPNE:                          # @pdfmark_StPNE
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end41:
	.size	pdfmark_StPNE, .Lfunc_end41-pdfmark_StPNE
	.cfi_endproc

	.align	16, 0x90
	.type	pdfmark_StBookmarkRoot,@function
pdfmark_StBookmarkRoot:                 # @pdfmark_StBookmarkRoot
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end42:
	.size	pdfmark_StBookmarkRoot, .Lfunc_end42-pdfmark_StBookmarkRoot
	.cfi_endproc

	.align	16, 0x90
	.type	pdfmark_StPush,@function
pdfmark_StPush:                         # @pdfmark_StPush
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end43:
	.size	pdfmark_StPush, .Lfunc_end43-pdfmark_StPush
	.cfi_endproc

	.align	16, 0x90
	.type	pdfmark_StPop,@function
pdfmark_StPop:                          # @pdfmark_StPop
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end44:
	.size	pdfmark_StPop, .Lfunc_end44-pdfmark_StPop
	.cfi_endproc

	.align	16, 0x90
	.type	pdfmark_StPopAll,@function
pdfmark_StPopAll:                       # @pdfmark_StPopAll
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end45:
	.size	pdfmark_StPopAll, .Lfunc_end45-pdfmark_StPopAll
	.cfi_endproc

	.align	16, 0x90
	.type	pdfmark_StBMC,@function
pdfmark_StBMC:                          # @pdfmark_StBMC
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end46:
	.size	pdfmark_StBMC, .Lfunc_end46-pdfmark_StBMC
	.cfi_endproc

	.align	16, 0x90
	.type	pdfmark_StBDC,@function
pdfmark_StBDC:                          # @pdfmark_StBDC
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end47:
	.size	pdfmark_StBDC, .Lfunc_end47-pdfmark_StBDC
	.cfi_endproc

	.align	16, 0x90
	.type	pdfmark_StOBJ,@function
pdfmark_StOBJ:                          # @pdfmark_StOBJ
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end48:
	.size	pdfmark_StOBJ, .Lfunc_end48-pdfmark_StOBJ
	.cfi_endproc

	.align	16, 0x90
	.type	pdfmark_StAttr,@function
pdfmark_StAttr:                         # @pdfmark_StAttr
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end49:
	.size	pdfmark_StAttr, .Lfunc_end49-pdfmark_StAttr
	.cfi_endproc

	.align	16, 0x90
	.type	pdfmark_StStore,@function
pdfmark_StStore:                        # @pdfmark_StStore
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end50:
	.size	pdfmark_StStore, .Lfunc_end50-pdfmark_StStore
	.cfi_endproc

	.align	16, 0x90
	.type	pdfmark_StRetrieve,@function
pdfmark_StRetrieve:                     # @pdfmark_StRetrieve
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end51:
	.size	pdfmark_StRetrieve, .Lfunc_end51-pdfmark_StRetrieve
	.cfi_endproc

	.align	16, 0x90
	.type	pdfmark_annot,@function
pdfmark_annot:                          # @pdfmark_annot
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp287:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp288:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp289:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp290:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp291:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp292:
	.cfi_def_cfa_offset 56
	subq	$312, %rsp              # imm = 0x138
.Ltmp293:
	.cfi_def_cfa_offset 368
.Ltmp294:
	.cfi_offset %rbx, -56
.Ltmp295:
	.cfi_offset %r12, -48
.Ltmp296:
	.cfi_offset %r13, -40
.Ltmp297:
	.cfi_offset %r14, -32
.Ltmp298:
	.cfi_offset %r15, -24
.Ltmp299:
	.cfi_offset %rbp, -16
	movq	%r9, %rbp
	movq	%r8, %r15
	movq	%rcx, 80(%rsp)          # 8-byte Spill
	movl	%edx, %r12d
	movq	%rsi, 88(%rsp)          # 8-byte Spill
	movq	%rdi, %r13
	movl	26544(%r13), %eax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	cmpl	$0, 9564(%r13)
	je	.LBB52_20
# BB#1:                                 # %if.then
	movq	%r15, 72(%rsp)          # 8-byte Spill
	movq	%rbp, %r15
	movl	$0, 112(%rsp)
	testl	%r12d, %r12d
	je	.LBB52_8
# BB#2:                                 # %for.body.lr.ph
	movl	$.L.str.69, %edi
	callq	strlen
	movq	%rax, %r14
	xorl	%ebp, %ebp
	movq	88(%rsp), %rbx          # 8-byte Reload
	.align	16, 0x90
.LBB52_3:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	8(%rbx), %eax
	cmpq	%rax, %r14
	jne	.LBB52_7
# BB#4:                                 # %land.rhs.i
                                        #   in Loop: Header=BB52_3 Depth=1
	movq	(%rbx), %rsi
	movl	$.L.str.69, %edi
	movq	%r14, %rdx
	callq	strncmp
	testl	%eax, %eax
	je	.LBB52_5
.LBB52_7:                               # %for.inc
                                        #   in Loop: Header=BB52_3 Depth=1
	addq	$32, %rbx
	addl	$2, %ebp
	cmpl	%r12d, %ebp
	jb	.LBB52_3
	jmp	.LBB52_8
.LBB52_5:                               # %if.then.2
	movq	16(%rbx), %rdi
	leaq	112(%rsp), %rdx
	movl	$.L.str.70, %esi
	xorl	%eax, %eax
	callq	__isoc99_sscanf
	cmpl	$1, %eax
	je	.LBB52_8
# BB#6:                                 # %if.then.6
	movq	24(%r13), %rbx
	callq	gs_program_name
	movq	%rax, %rbp
	callq	gs_revision_number
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	24(%r13), %rdi
	movl	$.L.str.71, %esi
	xorl	%eax, %eax
	callq	errprintf
.LBB52_8:                               # %for.end
	testb	$4, 112(%rsp)
	jne	.LBB52_19
# BB#9:                                 # %if.then.13
	movl	30724(%r13), %eax
	cmpl	$2, %eax
	je	.LBB52_15
# BB#10:                                # %if.then.13
	cmpl	$1, %eax
	jne	.LBB52_11
# BB#13:                                # %sw.bb.20
	movq	24(%r13), %rbx
	callq	gs_program_name
	movq	%rax, %rbp
	callq	gs_revision_number
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	24(%r13), %rdi
	xorl	%r15d, %r15d
	movl	$.L.str.73, %esi
	jmp	.LBB52_14
.LBB52_15:                              # %sw.bb.26
	movq	24(%r13), %rbx
	callq	gs_program_name
	movq	%rax, %rbp
	callq	gs_revision_number
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	24(%r13), %rdi
	movl	$.L.str.74, %esi
	jmp	.LBB52_16
.LBB52_11:                              # %if.then.13
	testl	%eax, %eax
	jne	.LBB52_17
# BB#12:                                # %sw.bb
	movq	24(%r13), %rbx
	callq	gs_program_name
	movq	%rax, %rbp
	callq	gs_revision_number
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	24(%r13), %rdi
	movl	$.L.str.72, %esi
	jmp	.LBB52_18
.LBB52_17:                              # %sw.default
	movq	24(%r13), %rbx
	callq	gs_program_name
	movq	%rax, %rbp
	callq	gs_revision_number
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	24(%r13), %rdi
	movl	$.L.str.75, %esi
.LBB52_18:                              # %cleanup.40.thread
	xorl	%eax, %eax
	callq	errprintf
	movabsq	$4294967296, %rax       # imm = 0x100000000
	movq	%rax, 9564(%r13)
.LBB52_19:                              # %cleanup.40.thread
	movq	%r15, %rbp
	movq	72(%rsp), %r15          # 8-byte Reload
.LBB52_20:                              # %if.end.44
	cmpl	$0, 9560(%r13)
	je	.LBB52_102
# BB#21:                                # %if.then.46
	movslq	26544(%r13), %rax
	imulq	$208, %rax, %r14
	addq	26648(%r13), %r14
	testq	%rbp, %rbp
	je	.LBB52_26
# BB#22:                                # %if.then.51
	movq	%rbp, %rdi
	callq	strlen
	movq	%rax, %rbx
	movl	$.L.str.76, %edi
	callq	strlen
	movl	%ebx, %ebx
	cmpq	%rbx, %rax
	jne	.LBB52_24
# BB#23:                                # %land.rhs.i.193
	movl	$.L.str.76, %edi
	movq	%rbp, %rsi
	movq	%rax, %rdx
	callq	strncmp
	testl	%eax, %eax
	je	.LBB52_102
.LBB52_24:                              # %lor.lhs.false
	movl	$.L.str.77, %edi
	callq	strlen
	cmpq	%rbx, %rax
	jne	.LBB52_26
# BB#25:                                # %land.rhs.i.203
	movl	$.L.str.77, %edi
	movq	%rbp, %rsi
	movq	%rbx, %rdx
	callq	strncmp
	testl	%eax, %eax
	je	.LBB52_102
.LBB52_26:                              # %for.cond.65.preheader
	testl	%r12d, %r12d
	je	.LBB52_102
# BB#27:                                # %for.body.68.lr.ph
	movq	%rbp, 48(%rsp)          # 8-byte Spill
	movq	%r13, 56(%rsp)          # 8-byte Spill
	movl	$.L.str.78, %edi
	callq	strlen
	movq	%rax, %rbp
	xorl	%r13d, %r13d
	movq	88(%rsp), %rbx          # 8-byte Reload
	.align	16, 0x90
.LBB52_28:                              # %for.body.68
                                        # =>This Inner Loop Header: Depth=1
	movl	8(%rbx), %eax
	cmpq	%rax, %rbp
	jne	.LBB52_92
# BB#29:                                # %land.rhs.i.213
                                        #   in Loop: Header=BB52_28 Depth=1
	movq	(%rbx), %rsi
	movl	$.L.str.78, %edi
	movq	%rbp, %rdx
	callq	strncmp
	testl	%eax, %eax
	je	.LBB52_30
.LBB52_92:                              # %for.inc.522
                                        #   in Loop: Header=BB52_28 Depth=1
	addq	$2, %r13
	addq	$32, %rbx
	cmpl	%r12d, %r13d
	jb	.LBB52_28
	jmp	.LBB52_93
.LBB52_30:                              # %if.then.74
	movq	%r15, 72(%rsp)          # 8-byte Spill
	movq	56(%rsp), %rax          # 8-byte Reload
	movss	856(%rax), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movaps	%xmm0, 32(%rsp)         # 16-byte Spill
	movss	860(%rax), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movaps	%xmm0, 16(%rsp)         # 16-byte Spill
	addq	$16, %rbx
	leaq	224(%rsp), %rdi
	movq	%rbx, %rsi
	movq	80(%rsp), %rdx          # 8-byte Reload
	callq	pdfmark_scan_rect
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB52_112
# BB#31:                                # %if.end.88
	movaps	16(%rsp), %xmm0         # 16-byte Reload
	unpcklps	32(%rsp), %xmm0 # 16-byte Folded Reload
                                        # xmm0 = xmm0[0],mem[0],xmm0[1],mem[1]
	cvtps2pd	%xmm0, %xmm5
	xorpd	%xmm6, %xmm6
	movb	$1, %bpl
	testq	%r14, %r14
	je	.LBB52_32
# BB#35:                                # %land.lhs.true
	movq	(%r14), %rdi
	testq	%rdi, %rdi
	movb	$1, %r15b
	movb	$1, %bl
	je	.LBB52_33
# BB#36:                                # %if.end.100
	movaps	%xmm5, 32(%rsp)         # 16-byte Spill
	movl	$.L.str.79, %esi
	callq	cos_dict_find_c_key
	movq	%rax, 16(%rsp)          # 8-byte Spill
	movq	(%r14), %rdi
	movl	$.L.str.80, %esi
	callq	cos_dict_find_c_key
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movq	(%r14), %rdi
	movl	$.L.str.81, %esi
	callq	cos_dict_find_c_key
	movq	%rax, %rbx
	movq	(%r14), %rdi
	movl	$.L.str.82, %esi
	callq	cos_dict_find_c_key
	xorpd	%xmm6, %xmm6
	movb	$1, %bpl
	testq	%rax, %rax
	je	.LBB52_37
# BB#38:                                # %land.lhs.true.103
	cmpl	$0, (%rax)
	je	.LBB52_41
# BB#39:
	xorl	%r15d, %r15d
	jmp	.LBB52_40
.LBB52_32:
	movb	$1, %r15b
	movb	$1, %bl
	jmp	.LBB52_33
.LBB52_37:
	movb	$1, %r15b
.LBB52_40:                              # %if.end.153
	movapd	32(%rsp), %xmm5         # 16-byte Reload
	movq	%rbx, %r14
	movq	16(%rsp), %rax          # 8-byte Reload
	movq	8(%rsp), %rcx           # 8-byte Reload
.LBB52_46:                              # %if.end.153
	testq	%rcx, %rcx
	je	.LBB52_53
# BB#47:                                # %land.lhs.true.156
	cmpl	$0, (%rcx)
	je	.LBB52_49
# BB#48:
	xorl	%ebp, %ebp
	jmp	.LBB52_53
.LBB52_41:                              # %if.then.106
	movq	8(%rax), %rsi
	movl	16(%rax), %eax
	cmpl	$99, %eax
	movl	$99, %ecx
	cmovbl	%eax, %ecx
	movslq	%ecx, %r14
	leaq	112(%rsp), %rdi
	movq	%r14, %rdx
	callq	memcpy
	movb	$0, 112(%rsp,%r14)
	leaq	100(%rsp), %rcx
	leaq	104(%rsp), %r8
	leaq	108(%rsp), %r9
	xorl	%r15d, %r15d
	leaq	96(%rsp), %rdx
	movl	$.L.str.83, %esi
	xorl	%eax, %eax
	leaq	112(%rsp), %rdi
	callq	__isoc99_sscanf
	xorpd	%xmm6, %xmm6
	cmpl	$4, %eax
	movapd	32(%rsp), %xmm5         # 16-byte Reload
	movq	%rbx, %r14
	movq	16(%rsp), %rax          # 8-byte Reload
	movq	8(%rsp), %rcx           # 8-byte Reload
	jne	.LBB52_46
# BB#42:                                # %if.then.131
	movss	96(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	ja	.LBB52_43
# BB#44:                                # %if.then.131
	xorpd	%xmm6, %xmm6
	jmp	.LBB52_45
.LBB52_49:                              # %if.then.160
	movsd	%xmm6, 8(%rsp)          # 8-byte Spill
	movapd	%xmm5, 32(%rsp)         # 16-byte Spill
	movq	8(%rcx), %rsi
	movl	16(%rcx), %eax
	cmpl	$99, %eax
	movl	$99, %ecx
	cmovbl	%eax, %ecx
	movslq	%ecx, %rbx
	leaq	112(%rsp), %rdi
	movq	%rbx, %rdx
	callq	memcpy
	movb	$0, 112(%rsp,%rbx)
	leaq	100(%rsp), %rcx
	leaq	104(%rsp), %r8
	leaq	108(%rsp), %r9
	xorl	%ebp, %ebp
	leaq	96(%rsp), %rdx
	movl	$.L.str.83, %esi
	xorl	%eax, %eax
	leaq	112(%rsp), %rdi
	callq	__isoc99_sscanf
	cmpl	$4, %eax
	jne	.LBB52_50
# BB#51:                                # %if.then.192
	movss	96(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	maxsd	8(%rsp), %xmm0          # 8-byte Folded Reload
	xorl	%ebp, %ebp
	movapd	%xmm0, %xmm6
	movapd	32(%rsp), %xmm5         # 16-byte Reload
	jmp	.LBB52_52
.LBB52_50:
	movapd	32(%rsp), %xmm5         # 16-byte Reload
	movsd	8(%rsp), %xmm6          # 8-byte Reload
                                        # xmm6 = mem[0],zero
.LBB52_52:                              # %if.end.214
	movq	16(%rsp), %rax          # 8-byte Reload
.LBB52_53:                              # %if.end.214
	movb	$1, %bl
	testq	%rax, %rax
	je	.LBB52_59
# BB#54:                                # %land.lhs.true.217
	cmpl	$0, (%rax)
	je	.LBB52_56
# BB#55:
	xorl	%ebx, %ebx
	jmp	.LBB52_59
.LBB52_56:                              # %if.then.221
	movsd	%xmm6, 8(%rsp)          # 8-byte Spill
	movapd	%xmm5, 32(%rsp)         # 16-byte Spill
	movq	8(%rax), %rsi
	movl	16(%rax), %eax
	cmpl	$99, %eax
	movl	$99, %ecx
	cmovbl	%eax, %ecx
	movslq	%ecx, %rbx
	leaq	112(%rsp), %rdi
	movq	%rbx, %rdx
	callq	memcpy
	movb	$0, 112(%rsp,%rbx)
	leaq	100(%rsp), %rcx
	leaq	104(%rsp), %r8
	leaq	108(%rsp), %r9
	xorl	%ebx, %ebx
	leaq	96(%rsp), %rdx
	movl	$.L.str.83, %esi
	xorl	%eax, %eax
	leaq	112(%rsp), %rdi
	callq	__isoc99_sscanf
	cmpl	$4, %eax
	jne	.LBB52_57
# BB#58:                                # %if.then.253
	movss	96(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	maxsd	8(%rsp), %xmm0          # 8-byte Folded Reload
	xorl	%ebx, %ebx
	movapd	%xmm0, %xmm6
	movapd	32(%rsp), %xmm5         # 16-byte Reload
	jmp	.LBB52_59
.LBB52_57:
	movapd	32(%rsp), %xmm5         # 16-byte Reload
	movsd	8(%rsp), %xmm6          # 8-byte Reload
                                        # xmm6 = mem[0],zero
.LBB52_59:                              # %if.end.275
	testq	%r14, %r14
	je	.LBB52_33
# BB#60:                                # %land.lhs.true.278
	cmpl	$0, (%r14)
	je	.LBB52_62
# BB#61:
	movq	72(%rsp), %r15          # 8-byte Reload
	jmp	.LBB52_80
.LBB52_33:                              # %if.end.336
	testb	%bpl, %bpl
	je	.LBB52_34
# BB#65:                                # %if.end.336
	testb	%r15b, %r15b
	je	.LBB52_66
# BB#67:                                # %if.end.336
	testb	%bl, %bl
	movq	72(%rsp), %r15          # 8-byte Reload
	je	.LBB52_80
# BB#68:                                # %if.then.348
	movq	56(%rsp), %rcx          # 8-byte Reload
	cmpl	$4, 9432(%rcx)
	jb	.LBB52_74
# BB#69:                                # %land.lhs.true.352
	movq	9424(%rcx), %rax
	movss	(%rax), %xmm0           # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm2, %xmm2
	ucomiss	%xmm2, %xmm0
	jb	.LBB52_74
# BB#70:                                # %land.lhs.true.358
	movss	4(%rax), %xmm1          # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm2, %xmm1
	jb	.LBB52_74
# BB#71:                                # %land.lhs.true.364
	movss	8(%rax), %xmm2          # xmm2 = mem[0],zero,zero,zero
	xorps	%xmm3, %xmm3
	ucomiss	%xmm3, %xmm2
	jb	.LBB52_74
# BB#72:                                # %land.lhs.true.370
	movss	12(%rax), %xmm4         # xmm4 = mem[0],zero,zero,zero
	ucomiss	%xmm3, %xmm4
	jae	.LBB52_73
.LBB52_74:                              # %if.else
	cmpl	$4, 9448(%rcx)
	jb	.LBB52_80
# BB#75:                                # %land.lhs.true.403
	movq	9440(%rcx), %rax
	movss	(%rax), %xmm0           # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm2, %xmm2
	ucomiss	%xmm2, %xmm0
	jb	.LBB52_80
# BB#76:                                # %land.lhs.true.409
	movss	4(%rax), %xmm1          # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm2, %xmm1
	jb	.LBB52_80
# BB#77:                                # %land.lhs.true.415
	movss	8(%rax), %xmm2          # xmm2 = mem[0],zero,zero,zero
	xorps	%xmm3, %xmm3
	ucomiss	%xmm3, %xmm2
	jb	.LBB52_80
# BB#78:                                # %land.lhs.true.421
	movss	12(%rax), %xmm4         # xmm4 = mem[0],zero,zero,zero
	ucomiss	%xmm3, %xmm4
	jb	.LBB52_80
# BB#79:                                # %if.then.427
	cvtss2sd	%xmm0, %xmm0
	subsd	%xmm0, %xmm6
	unpcklps	%xmm1, %xmm2    # xmm2 = xmm2[0],xmm1[0],xmm2[1],xmm1[1]
	cvtps2pd	%xmm2, %xmm0
	addpd	%xmm0, %xmm5
	jmp	.LBB52_80
.LBB52_34:
	movq	72(%rsp), %r15          # 8-byte Reload
	jmp	.LBB52_80
.LBB52_66:
	movq	72(%rsp), %r15          # 8-byte Reload
	jmp	.LBB52_80
.LBB52_62:                              # %if.then.282
	movsd	%xmm6, 8(%rsp)          # 8-byte Spill
	movapd	%xmm5, 32(%rsp)         # 16-byte Spill
	movq	8(%r14), %rsi
	movl	16(%r14), %eax
	cmpl	$99, %eax
	movl	$99, %ecx
	cmovbl	%eax, %ecx
	movslq	%ecx, %rbx
	leaq	112(%rsp), %rbp
	movq	%rbp, %rdi
	movq	%rbx, %rdx
	callq	memcpy
	movb	$0, 112(%rsp,%rbx)
	leaq	100(%rsp), %rcx
	leaq	104(%rsp), %r8
	leaq	108(%rsp), %r9
	leaq	96(%rsp), %rdx
	movl	$.L.str.83, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	callq	__isoc99_sscanf
	cmpl	$4, %eax
	movq	72(%rsp), %r15          # 8-byte Reload
	jne	.LBB52_63
# BB#64:                                # %if.then.314
	movss	96(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	maxsd	8(%rsp), %xmm0          # 8-byte Folded Reload
	movapd	%xmm0, %xmm6
	movapd	32(%rsp), %xmm5         # 16-byte Reload
	jmp	.LBB52_80
.LBB52_63:
	movapd	32(%rsp), %xmm5         # 16-byte Reload
	movsd	8(%rsp), %xmm6          # 8-byte Reload
                                        # xmm6 = mem[0],zero
	jmp	.LBB52_80
.LBB52_43:
	xorps	%xmm6, %xmm6
	cvtss2sd	%xmm0, %xmm6
.LBB52_45:                              # %if.then.131
	xorl	%r15d, %r15d
	jmp	.LBB52_46
.LBB52_73:                              # %if.then.376
	cvtss2sd	%xmm0, %xmm0
	addsd	%xmm0, %xmm6
	unpcklps	%xmm1, %xmm2    # xmm2 = xmm2[0],xmm1[0],xmm2[1],xmm1[1]
	cvtps2pd	%xmm2, %xmm0
	subpd	%xmm0, %xmm5
.LBB52_80:                              # %if.end.454
	movsd	224(%rsp), %xmm1        # xmm1 = mem[0],zero
	movapd	%xmm5, %xmm0
	shufpd	$1, %xmm0, %xmm0        # xmm0 = xmm0[1,0]
	ucomisd	%xmm0, %xmm1
	ja	.LBB52_93
# BB#81:                                # %lor.lhs.false.459
	ucomisd	240(%rsp), %xmm6
	ja	.LBB52_93
# BB#82:                                # %lor.lhs.false.464
	movsd	232(%rsp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm5, %xmm1
	ja	.LBB52_93
# BB#83:                                # %lor.lhs.false.469
	ucomisd	248(%rsp), %xmm0
	ja	.LBB52_93
# BB#84:                                # %if.end.476
	movq	56(%rsp), %rax          # 8-byte Reload
	movl	30724(%rax), %eax
	cmpl	$2, %eax
	je	.LBB52_88
# BB#85:                                # %if.end.476
	cmpl	$1, %eax
	jne	.LBB52_86
# BB#91:                                # %sw.bb.486
	movq	56(%rsp), %rbx          # 8-byte Reload
	movq	24(%rbx), %r14
	callq	gs_program_name
	movq	%rax, %rbp
	callq	gs_revision_number
	movq	%r14, %rdi
	movq	%rbp, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	24(%rbx), %rdi
	xorl	%r15d, %r15d
	movl	$.L.str.85, %esi
	jmp	.LBB52_14
.LBB52_88:                              # %sw.bb.492
	movq	56(%rsp), %rbx          # 8-byte Reload
	movq	24(%rbx), %r14
	callq	gs_program_name
	movq	%rax, %rbp
	callq	gs_revision_number
	movq	%r14, %rdi
	movq	%rbp, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	24(%rbx), %rdi
	movl	$.L.str.86, %esi
	jmp	.LBB52_16
.LBB52_86:                              # %if.end.476
	testl	%eax, %eax
	jne	.LBB52_89
# BB#87:                                # %sw.bb.478
	movq	56(%rsp), %rbx          # 8-byte Reload
	movq	24(%rbx), %r14
	callq	gs_program_name
	movq	%rax, %rbp
	callq	gs_revision_number
	movq	%r14, %rdi
	movq	%rbp, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	24(%rbx), %rdi
	movl	$.L.str.84, %esi
	jmp	.LBB52_90
.LBB52_89:                              # %sw.default.498
	movq	56(%rsp), %rbx          # 8-byte Reload
	movq	24(%rbx), %r14
	callq	gs_program_name
	movq	%rax, %rbp
	callq	gs_revision_number
	movq	%r14, %rdi
	movq	%rbp, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	24(%rbx), %rdi
	movl	$.L.str.87, %esi
.LBB52_90:                              # %sw.epilog.506
	xorl	%eax, %eax
	callq	errprintf
	movl	$1, 9568(%rbx)
	movq	%rbx, 56(%rsp)          # 8-byte Spill
	movl	$0, 9560(%rbx)
.LBB52_93:                              # %for.end.524
	cmpl	%r12d, %r13d
	movq	56(%rsp), %r13          # 8-byte Reload
	movq	48(%rsp), %rbp          # 8-byte Reload
	jbe	.LBB52_102
# BB#94:                                # %if.then.527
	movl	30724(%r13), %eax
	cmpl	$2, %eax
	je	.LBB52_99
# BB#95:                                # %if.then.527
	cmpl	$1, %eax
	jne	.LBB52_96
# BB#98:                                # %sw.bb.537
	movq	24(%r13), %rbx
	callq	gs_program_name
	movq	%rax, %rbp
	callq	gs_revision_number
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	24(%r13), %rdi
	xorl	%r15d, %r15d
	movl	$.L.str.89, %esi
.LBB52_14:                              # %cleanup.623
	xorl	%eax, %eax
	callq	errprintf
	jmp	.LBB52_112
.LBB52_99:                              # %sw.bb.543
	movq	24(%r13), %rbx
	callq	gs_program_name
	movq	%rax, %rbp
	callq	gs_revision_number
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	24(%r13), %rdi
	movl	$.L.str.90, %esi
.LBB52_16:                              # %cleanup.623
	xorl	%eax, %eax
	callq	errprintf
	movl	$-10, %r15d
	jmp	.LBB52_112
.LBB52_96:                              # %if.then.527
	movq	%rbp, %r14
	testl	%eax, %eax
	jne	.LBB52_100
# BB#97:                                # %sw.bb.529
	movq	24(%r13), %rbx
	callq	gs_program_name
	movq	%rax, %rbp
	callq	gs_revision_number
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	24(%r13), %rdi
	movl	$.L.str.88, %esi
	jmp	.LBB52_101
.LBB52_100:                             # %sw.default.549
	movq	24(%r13), %rbx
	callq	gs_program_name
	movq	%rax, %rbp
	callq	gs_revision_number
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	24(%r13), %rdi
	movl	$.L.str.91, %esi
.LBB52_101:                             # %if.end.568
	xorl	%eax, %eax
	callq	errprintf
	movl	$1, 9568(%r13)
	movl	$0, 9560(%r13)
	movq	%r14, %rbp
.LBB52_102:                             # %if.end.568
	movq	%r13, 288(%rsp)
	movq	%rbp, 296(%rsp)
	movq	$-1, 304(%rsp)
	leaq	280(%rsp), %rdx
	movl	$1, %ecx
	movq	%r13, %rdi
	movq	%r15, %rsi
	movq	%r15, %rbx
	callq	pdf_make_named_dict
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB52_112
# BB#103:                               # %if.end.575
	movq	280(%rsp), %rdi
	movl	$.L.str.92, %esi
	movl	$.L.str.93, %edx
	callq	cos_dict_put_c_strings
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB52_112
# BB#104:                               # %if.end.580
	movq	280(%rsp), %rsi
	movl	$0, (%rsp)
	leaq	288(%rsp), %r9
	movq	%r13, %rdi
	movq	88(%rsp), %rdx          # 8-byte Reload
	movl	%r12d, %ecx
	movq	80(%rsp), %r8           # 8-byte Reload
	callq	pdfmark_put_ao_pairs
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB52_112
# BB#105:                               # %if.end.585
	movq	304(%rsp), %rax
	testq	%rax, %rax
	movq	64(%rsp), %rcx          # 8-byte Reload
	cmovnsl	%eax, %ecx
	leal	1(%rcx), %esi
	movq	%rcx, %rbp
	movq	%r13, %rdi
	callq	pdf_page_id
	movl	$-15, %r15d
	testq	%rax, %rax
	jle	.LBB52_112
# BB#106:                               # %if.end.598
	movslq	%ebp, %rax
	movq	26648(%r13), %rcx
	imulq	$208, %rax, %r14
	movq	104(%rcx,%r14), %rbp
	testq	%rbp, %rbp
	jne	.LBB52_109
# BB#107:                               # %if.then.604
	movl	$.L.str.94, %esi
	movq	%r13, %rdi
	callq	cos_array_alloc
	movq	%rax, %rbp
	movl	$-25, %r15d
	testq	%rbp, %rbp
	je	.LBB52_112
# BB#108:                               # %if.end.609
	movq	26648(%r13), %rax
	movq	%rbp, 104(%rax,%r14)
.LBB52_109:                             # %if.end.614
	testq	%rbx, %rbx
	jne	.LBB52_111
# BB#110:                               # %if.then.616
	movq	280(%rsp), %rdi
	movl	$31, %edx
	movq	%r13, %rsi
	callq	cos_write_object
	movq	280(%rsp), %rdi
	movl	$.L.str.94, %esi
	callq	cos_release
.LBB52_111:                             # %if.end.619
	movq	280(%rsp), %rsi
	leaq	256(%rsp), %rdi
	callq	cos_object_value
	movq	%rbp, %rdi
	movq	%rax, %rsi
	callq	cos_array_add
	movl	%eax, %r15d
.LBB52_112:                             # %cleanup.623
	movl	%r15d, %eax
	addq	$312, %rsp              # imm = 0x138
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end52:
	.size	pdfmark_annot, .Lfunc_end52-pdfmark_annot
	.cfi_endproc

	.align	16, 0x90
	.type	pdfmark_scan_rect,@function
pdfmark_scan_rect:                      # @pdfmark_scan_rect
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp300:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp301:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp302:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp303:
	.cfi_def_cfa_offset 40
	subq	$168, %rsp
.Ltmp304:
	.cfi_def_cfa_offset 208
.Ltmp305:
	.cfi_offset %rbx, -40
.Ltmp306:
	.cfi_offset %r12, -32
.Ltmp307:
	.cfi_offset %r14, -24
.Ltmp308:
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rdi, %r15
	movl	8(%rsi), %ebx
	cmpq	$100, %rbx
	movl	$-13, %eax
	ja	.LBB53_3
# BB#1:                                 # %if.end
	movq	(%rsi), %rsi
	leaq	16(%rsp), %r12
	movq	%r12, %rdi
	movq	%rbx, %rdx
	callq	memcpy
	leaq	16(%rsp,%rbx), %rdi
	movl	$.L.str.95, %esi
	callq	strcpy
	leaq	136(%rsp), %rcx
	leaq	144(%rsp), %r8
	leaq	152(%rsp), %r9
	leaq	12(%rsp), %rax
	movq	%rax, (%rsp)
	leaq	128(%rsp), %rdx
	movl	$.L.str.96, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	__isoc99_sscanf
	movl	%eax, %ecx
	movl	$-15, %eax
	cmpl	$5, %ecx
	jne	.LBB53_3
# BB#2:                                 # %if.end.13
	movsd	128(%rsp), %xmm0        # xmm0 = mem[0],zero
	movsd	136(%rsp), %xmm1        # xmm1 = mem[0],zero
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	gs_point_transform
	movsd	144(%rsp), %xmm0        # xmm0 = mem[0],zero
	movsd	152(%rsp), %xmm1        # xmm1 = mem[0],zero
	addq	$16, %r15
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	gs_point_transform
	xorl	%eax, %eax
.LBB53_3:                               # %cleanup
	addq	$168, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end53:
	.size	pdfmark_scan_rect, .Lfunc_end53-pdfmark_scan_rect
	.cfi_endproc

	.align	16, 0x90
	.type	pdfmark_put_ao_pairs,@function
pdfmark_put_ao_pairs:                   # @pdfmark_put_ao_pairs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp309:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp310:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp311:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp312:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp313:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp314:
	.cfi_def_cfa_offset 56
	subq	$904, %rsp              # imm = 0x388
.Ltmp315:
	.cfi_def_cfa_offset 960
.Ltmp316:
	.cfi_offset %rbx, -56
.Ltmp317:
	.cfi_offset %r12, -48
.Ltmp318:
	.cfi_offset %r13, -40
.Ltmp319:
	.cfi_offset %r14, -32
.Ltmp320:
	.cfi_offset %r15, -24
.Ltmp321:
	.cfi_offset %rbp, -16
	movq	%r9, 96(%rsp)           # 8-byte Spill
	movq	%r8, %rbp
	movl	%ecx, %r12d
	movq	%rdx, %r14
	movq	%rsi, 152(%rsp)         # 8-byte Spill
	movq	%rdi, 112(%rsp)         # 8-byte Spill
	movq	8(%r9), %rbx
	testq	%rbx, %rbx
                                        # implicit-def: EAX
	movl	$0, %ecx
	je	.LBB54_2
# BB#1:                                 # %if.then
	movq	%rbx, %rdi
	callq	strlen
	movq	%rbx, %rcx
.LBB54_2:                               # %for.cond.preheader
	movq	%rcx, 80(%rsp)          # 8-byte Spill
	movq	%rax, 64(%rsp)          # 8-byte Spill
	testl	%r12d, %r12d
	je	.LBB54_3
# BB#4:                                 # %for.body.lr.ph
	movq	%rbp, 56(%rsp)          # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 144(%rsp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 128(%rsp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 72(%rsp)          # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 120(%rsp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 136(%rsp)         # 8-byte Spill
                                        # implicit-def: EAX
	movq	%rax, 104(%rsp)         # 8-byte Spill
	xorl	%ebp, %ebp
	movl	%r12d, 92(%rsp)         # 4-byte Spill
	movq	%r14, 160(%rsp)         # 8-byte Spill
	jmp	.LBB54_5
.LBB54_3:
	xorl	%eax, %eax
	movq	%rax, 120(%rsp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 144(%rsp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 128(%rsp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 72(%rsp)          # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 136(%rsp)         # 8-byte Spill
                                        # implicit-def: EAX
	movq	%rax, 104(%rsp)         # 8-byte Spill
	jmp	.LBB54_84
.LBB54_72:                              #   in Loop: Header=BB54_5 Depth=1
	movl	$-15, %eax
.LBB54_80:                              # %pdfmark_write_border.exit
                                        #   in Loop: Header=BB54_5 Depth=1
	testl	%eax, %eax
	movl	%eax, %ebx
	js	.LBB54_208
# BB#81:                                # %if.end.210
                                        #   in Loop: Header=BB54_5 Depth=1
	movq	%r12, %rdi
	callq	stell
	movl	$-13, %ebx
	cmpq	$101, %rax
	jge	.LBB54_208
# BB#82:                                # %cleanup.223
                                        #   in Loop: Header=BB54_5 Depth=1
	movq	%r12, %rdi
	callq	stell
	movb	$0, 176(%rsp,%rax)
	leaq	176(%rsp), %rbx
	movq	%rbx, %rdi
	callq	strlen
	movl	$.L.str.115, %esi
	movq	152(%rsp), %rdi         # 8-byte Reload
	movq	%rbx, %rdx
	movl	%eax, %ecx
	callq	cos_dict_put_c_key_string
	movl	92(%rsp), %r12d         # 4-byte Reload
	jmp	.LBB54_83
	.align	16, 0x90
.LBB54_5:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB54_97 Depth 2
                                        #     Child Loop BB54_76 Depth 2
                                        #     Child Loop BB54_50 Depth 2
	movl	%ebp, %ebx
	shlq	$4, %rbx
	leaq	(%r14,%rbx), %r13
	movl	$.L.str.97, %edi
	callq	strlen
	movl	8(%r14,%rbx), %ecx
	cmpq	%rcx, %rax
	jne	.LBB54_9
# BB#6:                                 # %land.rhs.i
                                        #   in Loop: Header=BB54_5 Depth=1
	movq	(%r13), %rsi
	movl	$.L.str.97, %edi
	movq	%rax, %rdx
	callq	strncmp
	testl	%eax, %eax
	jne	.LBB54_9
# BB#7:                                 # %land.lhs.true
                                        #   in Loop: Header=BB54_5 Depth=1
	movq	16(%r13), %rdi
	movl	$.L.str.70, %esi
	xorl	%eax, %eax
	leaq	280(%rsp), %rdx
	callq	__isoc99_sscanf
	cmpl	$1, %eax
	jne	.LBB54_9
# BB#8:                                 # %if.then.13
                                        #   in Loop: Header=BB54_5 Depth=1
	movq	280(%rsp), %rax
	decq	%rax
	movq	96(%rsp), %rcx          # 8-byte Reload
	movq	%rax, 16(%rcx)
	jmp	.LBB54_83
	.align	16, 0x90
.LBB54_9:                               # %if.else.15
                                        #   in Loop: Header=BB54_5 Depth=1
	movl	%ebp, 168(%rsp)         # 4-byte Spill
	leaq	8(%r14,%rbx), %r15
	cmpl	$0, 960(%rsp)
	je	.LBB54_15
# BB#10:                                # %if.else.15.if.else.30_crit_edge
                                        #   in Loop: Header=BB54_5 Depth=1
	movl	(%r15), %ebx
	jmp	.LBB54_11
	.align	16, 0x90
.LBB54_15:                              # %land.lhs.true.17
                                        #   in Loop: Header=BB54_5 Depth=1
	movl	$.L.str.98, %edi
	callq	strlen
	movl	(%r15), %ebx
	cmpq	%rbx, %rax
	jne	.LBB54_20
# BB#16:                                # %land.rhs.i.247
                                        #   in Loop: Header=BB54_5 Depth=1
	movq	(%r13), %rsi
	movl	$.L.str.98, %edi
	movq	%rax, %rdx
	callq	strncmp
	testl	%eax, %eax
	je	.LBB54_17
.LBB54_20:                              # %land.lhs.true.24
                                        #   in Loop: Header=BB54_5 Depth=1
	movl	$.L.str.100, %edi
	callq	strlen
	cmpq	%rbx, %rax
	jne	.LBB54_11
# BB#21:                                # %land.rhs.i.260
                                        #   in Loop: Header=BB54_5 Depth=1
	movq	(%r13), %rsi
	movl	$.L.str.100, %edi
	movq	%rbx, %rdx
	callq	strncmp
	testl	%eax, %eax
	je	.LBB54_22
	.align	16, 0x90
.LBB54_11:                              # %if.else.30
                                        #   in Loop: Header=BB54_5 Depth=1
	movl	$.L.str.102, %edi
	callq	strlen
	movl	%ebx, %ebx
	cmpq	%rbx, %rax
	jne	.LBB54_23
# BB#12:                                # %land.rhs.i.273
                                        #   in Loop: Header=BB54_5 Depth=1
	movq	(%r13), %rsi
	movl	$.L.str.102, %edi
	movq	%rax, %rdx
	callq	strncmp
	testl	%eax, %eax
	je	.LBB54_13
.LBB54_23:                              # %lor.lhs.false
                                        #   in Loop: Header=BB54_5 Depth=1
	movl	$.L.str.103, %edi
	callq	strlen
	cmpq	%rbx, %rax
	jne	.LBB54_25
# BB#24:                                # %land.rhs.i.283
                                        #   in Loop: Header=BB54_5 Depth=1
	movq	(%r13), %rsi
	movl	$.L.str.103, %edi
	movq	%rbx, %rdx
	callq	strncmp
	testl	%eax, %eax
	je	.LBB54_13
.LBB54_25:                              # %if.else.36
                                        #   in Loop: Header=BB54_5 Depth=1
	movl	$.L.str.104, %edi
	callq	strlen
	cmpq	%rbx, %rax
	jne	.LBB54_28
# BB#26:                                # %land.rhs.i.293
                                        #   in Loop: Header=BB54_5 Depth=1
	movq	(%r13), %rsi
	movl	$.L.str.104, %edi
	movq	%rbx, %rdx
	callq	strncmp
	testl	%eax, %eax
	je	.LBB54_27
.LBB54_28:                              # %if.else.40
                                        #   in Loop: Header=BB54_5 Depth=1
	movl	$.L.str.105, %edi
	callq	strlen
	cmpq	%rbx, %rax
	jne	.LBB54_31
# BB#29:                                # %land.rhs.i.303
                                        #   in Loop: Header=BB54_5 Depth=1
	movq	(%r13), %rsi
	movl	$.L.str.105, %edi
	movq	%rbx, %rdx
	callq	strncmp
	testl	%eax, %eax
	je	.LBB54_30
.LBB54_31:                              # %if.else.45
                                        #   in Loop: Header=BB54_5 Depth=1
	movl	$.L.str.106, %edi
	callq	strlen
	cmpq	%rbx, %rax
	jne	.LBB54_34
# BB#32:                                # %land.rhs.i.313
                                        #   in Loop: Header=BB54_5 Depth=1
	movq	(%r13), %rsi
	movl	$.L.str.106, %edi
	movq	%rbx, %rdx
	callq	strncmp
	testl	%eax, %eax
	je	.LBB54_33
.LBB54_34:                              # %if.else.49
                                        #   in Loop: Header=BB54_5 Depth=1
	movl	$.L.str.107, %edi
	callq	strlen
	cmpq	%rbx, %rax
	jne	.LBB54_36
# BB#35:                                # %land.rhs.i.323
                                        #   in Loop: Header=BB54_5 Depth=1
	movq	(%r13), %rsi
	movl	$.L.str.107, %edi
	movq	%rbx, %rdx
	callq	strncmp
	testl	%eax, %eax
	je	.LBB54_38
.LBB54_36:                              # %lor.lhs.false.52
                                        #   in Loop: Header=BB54_5 Depth=1
	movl	$.L.str.108, %edi
	callq	strlen
	cmpq	%rbx, %rax
	jne	.LBB54_42
# BB#37:                                # %land.rhs.i.333
                                        #   in Loop: Header=BB54_5 Depth=1
	movq	(%r13), %rsi
	movl	$.L.str.108, %edi
	movq	%rbx, %rdx
	callq	strncmp
	testl	%eax, %eax
	je	.LBB54_38
.LBB54_42:                              # %if.else.82
                                        #   in Loop: Header=BB54_5 Depth=1
	movl	$.L.str.110, %edi
	callq	strlen
	cmpq	%rbx, %rax
	jne	.LBB54_45
# BB#43:                                # %land.rhs.i.343
                                        #   in Loop: Header=BB54_5 Depth=1
	movq	(%r13), %rsi
	movl	$.L.str.110, %edi
	movq	%rbx, %rdx
	callq	strncmp
	testl	%eax, %eax
	je	.LBB54_44
.LBB54_45:                              # %if.else.87
                                        #   in Loop: Header=BB54_5 Depth=1
	movl	$.L.str.111, %edi
	callq	strlen
	cmpq	%rbx, %rax
	jne	.LBB54_64
# BB#46:                                # %land.rhs.i.353
                                        #   in Loop: Header=BB54_5 Depth=1
	movq	(%r13), %r14
	movl	$.L.str.111, %edi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	strncmp
	testl	%eax, %eax
	je	.LBB54_47
.LBB54_64:                              # %if.else.177
                                        #   in Loop: Header=BB54_5 Depth=1
	movl	$.L.str.78, %edi
	callq	strlen
	cmpq	%rbx, %rax
	jne	.LBB54_68
# BB#65:                                # %land.rhs.i.366
                                        #   in Loop: Header=BB54_5 Depth=1
	movq	(%r13), %rsi
	movl	$.L.str.78, %edi
	movq	%rbx, %rdx
	callq	strncmp
	testl	%eax, %eax
	je	.LBB54_66
.LBB54_68:                              # %if.else.199
                                        #   in Loop: Header=BB54_5 Depth=1
	movl	$.L.str.115, %edi
	callq	strlen
	cmpq	%rbx, %rax
	jne	.LBB54_91
# BB#69:                                # %land.rhs.i.377
                                        #   in Loop: Header=BB54_5 Depth=1
	movq	(%r13), %rsi
	movl	$.L.str.115, %edi
	movq	%rbx, %rdx
	callq	strncmp
	testl	%eax, %eax
	je	.LBB54_70
.LBB54_91:                              # %if.else.228
                                        #   in Loop: Header=BB54_5 Depth=1
	cmpl	$0, 960(%rsp)
	je	.LBB54_95
# BB#92:                                # %land.lhs.true.230
                                        #   in Loop: Header=BB54_5 Depth=1
	movl	$.L.str.116, %edi
	callq	strlen
	cmpq	%rbx, %rax
	jne	.LBB54_95
# BB#93:                                # %land.rhs.i.396
                                        #   in Loop: Header=BB54_5 Depth=1
	movq	(%r13), %rsi
	movl	$.L.str.116, %edi
	movq	%rbx, %rdx
	callq	strncmp
	testl	%eax, %eax
	je	.LBB54_94
.LBB54_95:                              # %if.else.234
                                        #   in Loop: Header=BB54_5 Depth=1
	movq	112(%rsp), %rax         # 8-byte Reload
	movq	24(%rax), %rdi
	movl	24(%r13), %esi
	addl	%esi, %esi
	movl	$.L.str.117, %edx
	callq	*64(%rdi)
	movq	%rax, %rbp
	movl	$-25, %ebx
	testq	%rbp, %rbp
	je	.LBB54_208
# BB#96:                                # %for.cond.250.preheader
                                        #   in Loop: Header=BB54_5 Depth=1
	xorl	%r8d, %r8d
	cmpl	$0, 24(%r13)
	movl	$0, %eax
	movl	$0, %ebx
	je	.LBB54_111
	.align	16, 0x90
.LBB54_97:                              # %for.body.255
                                        #   Parent Loop BB54_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	%eax, %rdx
	movq	16(%r13), %rcx
	movzbl	(%rcx,%rdx), %esi
	movslq	%r8d, %rcx
	leaq	1(%rcx), %r8
	movb	%sil, (%rbp,%rcx)
	cmpl	$92, %esi
	jne	.LBB54_110
# BB#98:                                # %if.then.266
                                        #   in Loop: Header=BB54_97 Depth=2
	movq	16(%r13), %rsi
	movzbl	1(%rsi,%rdx), %esi
	incq	%rdx
	cmpl	$109, %esi
	jle	.LBB54_99
# BB#102:                               # %if.then.266
                                        #   in Loop: Header=BB54_97 Depth=2
	cmpl	$110, %esi
	je	.LBB54_107
# BB#103:                               # %if.then.266
                                        #   in Loop: Header=BB54_97 Depth=2
	cmpl	$114, %esi
	jne	.LBB54_104
# BB#108:                               # %sw.bb.305
                                        #   in Loop: Header=BB54_97 Depth=2
	movb	$48, (%rbp,%r8)
	movw	$13617, 2(%rcx,%rbp)    # imm = 0x3531
	jmp	.LBB54_109
	.align	16, 0x90
.LBB54_99:                              # %if.then.266
                                        #   in Loop: Header=BB54_97 Depth=2
	cmpl	$98, %esi
	jne	.LBB54_100
# BB#106:                               # %sw.bb
                                        #   in Loop: Header=BB54_97 Depth=2
	movb	$48, (%rbp,%r8)
	movw	$14128, 2(%rcx,%rbp)    # imm = 0x3730
	jmp	.LBB54_109
.LBB54_107:                             # %sw.bb.294
                                        #   in Loop: Header=BB54_97 Depth=2
	movb	$48, (%rbp,%r8)
	movw	$12849, 2(%rcx,%rbp)    # imm = 0x3231
	jmp	.LBB54_109
.LBB54_104:                             # %if.then.266
                                        #   in Loop: Header=BB54_97 Depth=2
	cmpl	$116, %esi
	jne	.LBB54_110
# BB#105:                               # %sw.bb.316
                                        #   in Loop: Header=BB54_97 Depth=2
	movb	$48, (%rbp,%r8)
	movw	$12593, 2(%rcx,%rbp)    # imm = 0x3131
	jmp	.LBB54_109
.LBB54_100:                             # %if.then.266
                                        #   in Loop: Header=BB54_97 Depth=2
	cmpl	$102, %esi
	jne	.LBB54_110
# BB#101:                               # %sw.bb.283
                                        #   in Loop: Header=BB54_97 Depth=2
	movb	$48, (%rbp,%r8)
	movw	$13361, 2(%rcx,%rbp)    # imm = 0x3431
	.align	16, 0x90
.LBB54_109:                             # %if.end.327
                                        #   in Loop: Header=BB54_97 Depth=2
	addl	$4, %ecx
	movl	%edx, %eax
	movl	%ecx, %r8d
.LBB54_110:                             # %if.end.327
                                        #   in Loop: Header=BB54_97 Depth=2
	incl	%eax
	movl	24(%r13), %ebx
	cmpl	%ebx, %eax
	jb	.LBB54_97
.LBB54_111:                             # %cleanup.346.thread
                                        #   in Loop: Header=BB54_5 Depth=1
	movq	16(%r13), %r14
	movq	%rbp, 16(%r13)
	movl	%r8d, 24(%r13)
	movq	(%r13), %rsi
	movl	(%r15), %edx
	movq	152(%rsp), %rdi         # 8-byte Reload
	movq	%rbp, %rcx
	callq	cos_dict_put_string
	movq	%r14, 16(%r13)
	movl	%ebx, 24(%r13)
	movq	112(%rsp), %rax         # 8-byte Reload
	movq	24(%rax), %rdi
	movl	$.L.str.117, %edx
	movq	%rbp, %rsi
	callq	*24(%rdi)
	movl	92(%rsp), %r12d         # 4-byte Reload
	jmp	.LBB54_14
	.align	16, 0x90
.LBB54_13:                              #   in Loop: Header=BB54_5 Depth=1
	movq	%r13, 144(%rsp)         # 8-byte Spill
	jmp	.LBB54_14
.LBB54_27:                              #   in Loop: Header=BB54_5 Depth=1
	movq	%r13, 128(%rsp)         # 8-byte Spill
	jmp	.LBB54_14
.LBB54_38:                              # %if.then.55
                                        #   in Loop: Header=BB54_5 Depth=1
	movq	136(%rsp), %rax         # 8-byte Reload
	testq	%rax, %rax
	movl	168(%rsp), %ebp         # 4-byte Reload
	je	.LBB54_40
# BB#39:                                #   in Loop: Header=BB54_5 Depth=1
	movq	160(%rsp), %r14         # 8-byte Reload
	jmp	.LBB54_83
.LBB54_30:                              # %if.then.43
                                        #   in Loop: Header=BB54_5 Depth=1
	movq	16(%r13), %rax
	movq	%rax, 136(%rsp)         # 8-byte Spill
	movl	24(%r13), %eax
	movq	%rax, 104(%rsp)         # 8-byte Spill
	movl	$1, %eax
	movq	%rax, 120(%rsp)         # 8-byte Spill
	jmp	.LBB54_14
.LBB54_33:                              #   in Loop: Header=BB54_5 Depth=1
	movq	%r13, 72(%rsp)          # 8-byte Spill
	jmp	.LBB54_14
.LBB54_17:                              # %if.then.20
                                        #   in Loop: Header=BB54_5 Depth=1
	movq	16(%r13), %rdx
	movl	24(%r13), %ecx
	movl	$.L.str.99, %esi
	jmp	.LBB54_18
.LBB54_22:                              # %if.then.27
                                        #   in Loop: Header=BB54_5 Depth=1
	movq	16(%r13), %rdx
	movl	24(%r13), %ecx
	movl	$.L.str.101, %esi
.LBB54_18:                              # %for.inc.369
                                        #   in Loop: Header=BB54_5 Depth=1
	movq	152(%rsp), %rdi         # 8-byte Reload
	callq	cos_dict_put_c_key_string
	jmp	.LBB54_14
.LBB54_40:                              # %if.then.59
                                        #   in Loop: Header=BB54_5 Depth=1
	movq	96(%rsp), %rax          # 8-byte Reload
	movq	(%rax), %rsi
	xorl	%r8d, %r8d
	leaq	288(%rsp), %rbx
	movq	%rbx, %rdi
	movq	160(%rsp), %r14         # 8-byte Reload
	movq	%r14, %rdx
	movl	%r12d, %ecx
	callq	pdfmark_make_dest
	testl	%eax, %eax
	js	.LBB54_112
# BB#41:                                # %if.then.64
                                        #   in Loop: Header=BB54_5 Depth=1
	movq	%rbx, %rdi
	callq	strlen
	movq	%rax, 104(%rsp)         # 8-byte Spill
	cmpl	$0, 960(%rsp)
	movq	120(%rsp), %rax         # 8-byte Reload
	movl	$0, %ecx
	cmovnel	%ecx, %eax
	movq	%rax, 120(%rsp)         # 8-byte Spill
	movq	%rbx, %rax
	movq	%rax, 136(%rsp)         # 8-byte Spill
	jmp	.LBB54_83
.LBB54_44:                              # %if.then.85
                                        #   in Loop: Header=BB54_5 Depth=1
	movq	16(%r13), %rax
	movq	%rax, 80(%rsp)          # 8-byte Spill
	movl	24(%r13), %eax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	jmp	.LBB54_14
.LBB54_47:                              # %if.then.90
                                        #   in Loop: Header=BB54_5 Depth=1
	movl	%r12d, 92(%rsp)         # 4-byte Spill
	movl	24(%r13), %r12d
	movq	16(%r13), %rcx
	movq	152(%rsp), %rbp         # 8-byte Reload
	movq	%rbp, %rdi
	movq	%r14, %rsi
	movl	%ebx, %edx
	movl	%r12d, %r8d
	callq	cos_dict_put_string
	movl	$.L.str.111, %esi
	movq	%rbp, %rdi
	callq	cos_dict_find_c_key
	movl	$-12, %ebx
	testq	%rax, %rax
	je	.LBB54_208
# BB#48:                                # %if.end.99
                                        #   in Loop: Header=BB54_5 Depth=1
	testl	%r12d, %r12d
	je	.LBB54_94
# BB#49:                                #   in Loop: Header=BB54_5 Depth=1
	movq	8(%rax), %rbx
	movq	%rax, 48(%rsp)          # 8-byte Spill
	xorl	%r13d, %r13d
	xorl	%r14d, %r14d
	.align	16, 0x90
.LBB54_50:                              # %for.body.104
                                        #   Parent Loop BB54_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%r12d, %ebp
	subl	%r13d, %ebp
	movl	%r13d, %eax
	leaq	(%rax,%rbx), %r15
	cmpl	$2, %ebp
	jb	.LBB54_209
# BB#51:                                # %land.lhs.true.108
                                        #   in Loop: Header=BB54_50 Depth=2
	movl	$.L.str.112, %esi
	movl	$2, %edx
	movq	%r15, %rdi
	callq	memcmp
	testl	%eax, %eax
	jne	.LBB54_55
# BB#52:                                # %land.lhs.true.112
                                        #   in Loop: Header=BB54_50 Depth=2
	testl	%r13d, %r13d
	je	.LBB54_54
# BB#53:                                # %lor.lhs.false.115
                                        #   in Loop: Header=BB54_50 Depth=2
	leal	-1(%r13), %eax
	movzbl	(%rbx,%rax), %eax
	cmpl	$92, %eax
	jne	.LBB54_54
	.align	16, 0x90
.LBB54_55:                              # %if.else.129
                                        #   in Loop: Header=BB54_50 Depth=2
	cmpl	$4, %ebp
	jb	.LBB54_209
# BB#56:                                # %land.lhs.true.133
                                        #   in Loop: Header=BB54_50 Depth=2
	movl	$.L.str.113, %esi
	movl	$4, %edx
	movq	%r15, %rdi
	callq	memcmp
	testl	%eax, %eax
	jne	.LBB54_209
# BB#57:                                # %land.lhs.true.138
                                        #   in Loop: Header=BB54_50 Depth=2
	testl	%r13d, %r13d
	je	.LBB54_59
# BB#58:                                # %lor.lhs.false.141
                                        #   in Loop: Header=BB54_50 Depth=2
	leal	-1(%r13), %eax
	movzbl	(%rbx,%rax), %eax
	cmpl	$92, %eax
	jne	.LBB54_59
	.align	16, 0x90
.LBB54_209:                             # %if.else.156
                                        #   in Loop: Header=BB54_50 Depth=2
	incl	%r13d
	movb	(%r15), %al
	movl	%r14d, %ecx
	incl	%r14d
	movb	%al, (%rbx,%rcx)
	jmp	.LBB54_61
.LBB54_54:                              # %if.then.122
                                        #   in Loop: Header=BB54_50 Depth=2
	movl	%r14d, %eax
	movb	$92, (%rbx,%rax)
	leal	1(%r14), %eax
	movb	$114, (%rbx,%rax)
	addl	$2, %r13d
	jmp	.LBB54_60
.LBB54_59:                              # %if.then.148
                                        #   in Loop: Header=BB54_50 Depth=2
	movl	%r14d, %eax
	movb	$92, (%rbx,%rax)
	leal	1(%r14), %eax
	movb	$114, (%rbx,%rax)
	addl	$4, %r13d
.LBB54_60:                              # %for.cond.101.backedge
                                        #   in Loop: Header=BB54_50 Depth=2
	addl	$2, %r14d
	.align	16, 0x90
.LBB54_61:                              # %for.cond.101.backedge
                                        #   in Loop: Header=BB54_50 Depth=2
	cmpl	%r13d, %r12d
	ja	.LBB54_50
# BB#62:                                # %for.end
                                        #   in Loop: Header=BB54_5 Depth=1
	cmpl	%r13d, %r14d
	jne	.LBB54_63
.LBB54_94:                              #   in Loop: Header=BB54_5 Depth=1
	movl	92(%rsp), %r12d         # 4-byte Reload
	jmp	.LBB54_14
.LBB54_66:                              # %if.then.180
                                        #   in Loop: Header=BB54_5 Depth=1
	addq	$16, %r13
	leaq	176(%rsp), %rdi
	movq	%r13, %rsi
	movq	56(%rsp), %rdx          # 8-byte Reload
	callq	pdfmark_scan_rect
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB54_208
# BB#67:                                # %cleanup.194.thread
                                        #   in Loop: Header=BB54_5 Depth=1
	xorl	%esi, %esi
	leaq	368(%rsp), %rbx
	movq	%rbx, %rdi
	callq	s_init
	movl	$99, %edx
	movq	%rbx, %rdi
	leaq	800(%rsp), %rbp
	movq	%rbp, %rsi
	callq	swrite_string
	movsd	176(%rsp), %xmm0        # xmm0 = mem[0],zero
	movsd	184(%rsp), %xmm1        # xmm1 = mem[0],zero
	movsd	192(%rsp), %xmm2        # xmm2 = mem[0],zero
	movsd	200(%rsp), %xmm3        # xmm3 = mem[0],zero
	movl	$.L.str.18, %esi
	movq	%rbx, %rdi
	callq	pprintg4
	movq	%rbx, %rdi
	callq	stell
	movb	$0, 800(%rsp,%rax)
	movq	%rbp, %rdi
	callq	strlen
	movl	$.L.str.78, %esi
	movq	152(%rsp), %rdi         # 8-byte Reload
	movq	%rbp, %rdx
	movl	%eax, %ecx
	callq	cos_dict_put_c_key_string
	jmp	.LBB54_14
.LBB54_70:                              # %if.then.202
                                        #   in Loop: Header=BB54_5 Depth=1
	xorl	%esi, %esi
	leaq	368(%rsp), %r12
	movq	%r12, %rdi
	callq	s_init
	movl	$101, %edx
	movq	%r12, %rdi
	leaq	176(%rsp), %rsi
	callq	swrite_string
	movl	24(%r13), %ebx
	cmpq	$100, %rbx
	movl	$-13, %eax
	movq	160(%rsp), %r14         # 8-byte Reload
	movl	168(%rsp), %ebp         # 4-byte Reload
	ja	.LBB54_80
# BB#71:                                # %if.end.i
                                        #   in Loop: Header=BB54_5 Depth=1
	movq	16(%r13), %rsi
	leaq	800(%rsp), %r15
	movq	%r15, %rdi
	movq	%rbx, %rdx
	callq	memcpy
	movb	$0, 800(%rsp,%rbx)
	movl	$.L.str.138, %esi
	xorl	%eax, %eax
	movq	%r15, %rdi
	leaq	792(%rsp), %rdx
	leaq	784(%rsp), %rcx
	leaq	776(%rsp), %r8
	callq	__isoc99_sscanf
	cmpl	$3, %eax
	jne	.LBB54_72
# BB#73:                                # %if.end.8.i
                                        #   in Loop: Header=BB54_5 Depth=1
	movsd	792(%rsp), %xmm0        # xmm0 = mem[0],zero
	movsd	784(%rsp), %xmm1        # xmm1 = mem[0],zero
	movq	56(%rsp), %rbx          # 8-byte Reload
	movq	%rbx, %rdi
	leaq	760(%rsp), %rsi
	callq	gs_distance_transform
	movsd	776(%rsp), %xmm1        # xmm1 = mem[0],zero
	xorpd	%xmm0, %xmm0
	movq	%rbx, %rdi
	leaq	744(%rsp), %rsi
	callq	gs_distance_transform
	movsd	760(%rsp), %xmm0        # xmm0 = mem[0],zero
	callq	fabs
	movsd	%xmm0, 48(%rsp)         # 8-byte Spill
	movsd	768(%rsp), %xmm0        # xmm0 = mem[0],zero
	callq	fabs
	movsd	%xmm0, 40(%rsp)         # 8-byte Spill
	movsd	744(%rsp), %xmm0        # xmm0 = mem[0],zero
	addsd	752(%rsp), %xmm0
	callq	fabs
	movapd	%xmm0, %xmm2
	movl	$.L.str.139, %esi
	movq	%r12, %rdi
	movsd	48(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	40(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	pprintg3
	movl	$93, %esi
	leaq	801(%rsp), %rdi
	callq	strchr
	movq	%rax, %rbx
	testq	%rbx, %rbx
	movl	$-15, %eax
	je	.LBB54_80
# BB#74:                                # %if.end.22.i
                                        #   in Loop: Header=BB54_5 Depth=1
	cmpb	$0, 1(%rbx)
	je	.LBB54_79
# BB#75:                                # %land.rhs.lr.ph.i
                                        #   in Loop: Header=BB54_5 Depth=1
	movl	$91, %esi
	movq	%r12, %rdi
	callq	spputc
	movq	56(%rsp), %r15          # 8-byte Reload
	leaq	736(%rsp), %r13
	.align	16, 0x90
.LBB54_76:                              # %land.rhs.i.388
                                        #   Parent Loop BB54_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	incq	%rbx
	movl	$.L.str.140, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	movq	%r13, %rdx
	callq	__isoc99_sscanf
	cmpl	$1, %eax
	jne	.LBB54_78
# BB#77:                                # %while.body.i
                                        #   in Loop: Header=BB54_76 Depth=2
	movsd	736(%rsp), %xmm1        # xmm1 = mem[0],zero
	xorpd	%xmm0, %xmm0
	movq	%r15, %rdi
	leaq	720(%rsp), %rsi
	callq	gs_distance_transform
	movsd	720(%rsp), %xmm0        # xmm0 = mem[0],zero
	addsd	728(%rsp), %xmm0
	callq	fabs
	movl	$.L.str.141, %esi
	movq	%r12, %rdi
	callq	pprintg1
	movl	$32, %esi
	movq	%rbx, %rdi
	callq	strchr
	movq	%rax, %rbx
	testq	%rbx, %rbx
	jne	.LBB54_76
.LBB54_78:                              # %while.end.i
                                        #   in Loop: Header=BB54_5 Depth=1
	movl	$93, %esi
	movq	%r12, %rdi
	callq	spputc
.LBB54_79:                              # %if.end.42.i
                                        #   in Loop: Header=BB54_5 Depth=1
	movl	$93, %esi
	movq	%r12, %rdi
	callq	spputc
	xorl	%eax, %eax
	jmp	.LBB54_80
.LBB54_63:                              # %if.then.166
                                        #   in Loop: Header=BB54_5 Depth=1
	movq	112(%rsp), %rax         # 8-byte Reload
	movq	1728(%rax), %rdi
	movl	$.L.str.114, %r8d
	movq	%rbx, %rsi
	movl	%r12d, %edx
	movl	%r14d, %ecx
	callq	*152(%rdi)
	movq	48(%rsp), %rcx          # 8-byte Reload
	movq	%rax, 8(%rcx)
	movl	92(%rsp), %r12d         # 4-byte Reload
	.align	16, 0x90
.LBB54_14:                              # %for.inc.369
                                        #   in Loop: Header=BB54_5 Depth=1
	movq	160(%rsp), %r14         # 8-byte Reload
	movl	168(%rsp), %ebp         # 4-byte Reload
.LBB54_83:                              # %for.inc.369
                                        #   in Loop: Header=BB54_5 Depth=1
	addl	$2, %ebp
	cmpl	%r12d, %ebp
	jb	.LBB54_5
.LBB54_84:                              # %for.end.371
	cmpl	$0, 960(%rsp)
	jne	.LBB54_118
# BB#85:                                # %land.lhs.true.373
	movl	$.L.str.118, %edi
	callq	strlen
	movq	64(%rsp), %rcx          # 8-byte Reload
	movl	%ecx, %ecx
	cmpq	%rcx, %rax
	jne	.LBB54_118
# BB#86:                                # %pdf_key_eq.exit413
	movl	$.L.str.118, %edi
	movq	80(%rsp), %rsi          # 8-byte Reload
	movq	%rax, %rdx
	callq	strncmp
	cmpq	$0, 144(%rsp)           # 8-byte Folded Reload
	je	.LBB54_118
# BB#87:                                # %pdf_key_eq.exit413
	testl	%eax, %eax
	jne	.LBB54_118
# BB#88:                                # %if.then.378
	movl	$.L.str.119, %edi
	callq	strlen
	movq	144(%rsp), %rbx         # 8-byte Reload
	leaq	24(%rbx), %r12
	movl	24(%rbx), %r14d
	cmpq	%r14, %rax
	movq	104(%rsp), %r15         # 8-byte Reload
	jne	.LBB54_113
# BB#89:                                # %land.rhs.i.421
	movq	16(%rbx), %rsi
	movl	$.L.str.119, %edi
	movq	%rax, %rdx
	callq	strncmp
	testl	%eax, %eax
	je	.LBB54_90
.LBB54_113:                             # %lor.lhs.false.382
	movq	128(%rsp), %rax         # 8-byte Reload
	testq	%rax, %rax
	je	.LBB54_114
# BB#115:                               # %land.lhs.true.384
	movl	$.L.str.120, %edi
	callq	strlen
	cmpq	%r14, %rax
	jne	.LBB54_120
# BB#116:                               # %land.rhs.i.431
	movq	16(%rbx), %rsi
	movl	$.L.str.120, %edi
	movq	%r14, %rdx
	callq	strncmp
	testl	%eax, %eax
	je	.LBB54_117
.LBB54_120:                             # %if.then.398.thread804
	leaq	16(%rbx), %rax
	movq	%rax, 168(%rsp)         # 8-byte Spill
	movq	16(%rbx), %rbx
	movb	$1, %r13b
	xorl	%eax, %eax
	movq	%rax, 136(%rsp)         # 8-byte Spill
	jmp	.LBB54_125
.LBB54_118:                             # %if.end.396
	movq	144(%rsp), %rax         # 8-byte Reload
	testq	%rax, %rax
	movq	104(%rsp), %r15         # 8-byte Reload
	je	.LBB54_119
# BB#121:                               # %if.end.396.if.then.398_crit_edge
	leaq	24(%rax), %r12
	movl	24(%rax), %r14d
.LBB54_122:                             # %if.then.398
	leaq	16(%rax), %rcx
	movq	%rcx, 168(%rsp)         # 8-byte Spill
	movq	16(%rax), %rbx
	movb	$1, %r13b
	cmpq	$0, 128(%rsp)           # 8-byte Folded Reload
	jne	.LBB54_125
	jmp	.LBB54_123
.LBB54_119:
	xorl	%r13d, %r13d
	jmp	.LBB54_193
.LBB54_114:                             # %if.then.398.thread807
	leaq	16(%rbx), %rax
	movq	%rax, 168(%rsp)         # 8-byte Spill
	movq	16(%rbx), %rbx
	xorl	%eax, %eax
	movq	%rax, 136(%rsp)         # 8-byte Spill
.LBB54_123:                             # %lor.lhs.false.405
	xorl	%r13d, %r13d
	cmpq	$0, 72(%rsp)            # 8-byte Folded Reload
	jne	.LBB54_125
# BB#124:                               # %lor.lhs.false.405
	cmpq	$0, 136(%rsp)           # 8-byte Folded Reload
	je	.LBB54_151
	jmp	.LBB54_125
.LBB54_112:                             # %if.else.75
	movq	112(%rsp), %rbx         # 8-byte Reload
	movq	24(%rbx), %r14
	callq	gs_program_name
	movq	%rax, %rbp
	callq	gs_revision_number
	movq	%r14, %rdi
	movq	%rbp, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	24(%rbx), %rdi
	movl	$.L.str.109, %esi
	xorl	%eax, %eax
	callq	errprintf
	movl	$-15, %ebx
	jmp	.LBB54_208
.LBB54_90:
	movq	%rbx, %rax
	jmp	.LBB54_122
.LBB54_117:                             # %if.then.398.thread
	leaq	16(%rbx), %rax
	movq	%rax, 168(%rsp)         # 8-byte Spill
	movq	16(%rbx), %rbx
	movb	$1, %r13b
.LBB54_125:                             # %land.lhs.true.412
	movl	$.L.str.121, %edi
	callq	strlen
	movl	%r14d, %ebp
	cmpq	%rbp, %rax
	jne	.LBB54_127
# BB#126:                               # %land.rhs.i.441
	movl	$.L.str.121, %edi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	strncmp
	testl	%eax, %eax
	je	.LBB54_131
.LBB54_127:                             # %lor.lhs.false.416
	movl	$.L.str.120, %edi
	callq	strlen
	cmpq	%rbp, %rax
	jne	.LBB54_129
# BB#128:                               # %pdf_key_eq.exit453
	movl	$.L.str.120, %edi
	movq	%rbx, %rsi
	movq	%rbp, %rdx
	callq	strncmp
	testl	%eax, %eax
	sete	%al
	testb	%al, %r13b
	jne	.LBB54_131
.LBB54_129:                             # %lor.lhs.false.422
	movl	$.L.str.122, %edi
	callq	strlen
	cmpq	%rbp, %rax
	jne	.LBB54_151
# BB#130:                               # %land.rhs.i.461
	movl	$.L.str.122, %edi
	movq	%rbx, %rsi
	movq	%rbp, %rdx
	callq	strncmp
	testl	%eax, %eax
	je	.LBB54_131
.LBB54_151:                             # %if.else.472
	cmpl	$4, %r14d
	jb	.LBB54_187
# BB#152:                               # %land.lhs.true.475
	movl	$.L.str.127, %esi
	movl	$2, %edx
	movq	%rbx, %rdi
	callq	memcmp
	testl	%eax, %eax
	je	.LBB54_153
.LBB54_187:                             # %if.else.588
	movl	$.L.str.119, %edi
	callq	strlen
	movl	%r14d, %ebp
	cmpq	%rbp, %rax
	jne	.LBB54_190
# BB#188:                               # %land.rhs.i.565
	movl	$.L.str.119, %edi
	movq	%rbx, %rsi
	movq	%rbp, %rdx
	callq	strncmp
	testl	%eax, %eax
	je	.LBB54_189
.LBB54_190:                             # %if.else.594
	movq	%rbx, %rsi
	movb	$1, %r13b
	cmpl	$29, %r14d
	ja	.LBB54_193
# BB#191:                               # %if.then.599
	leaq	368(%rsp), %rbx
	movq	%rbx, %rdi
	movq	%rbp, %rdx
	callq	memcpy
	movl	(%r12), %eax
	movb	$0, 368(%rsp,%rax)
	leaq	800(%rsp), %rdx
	leaq	176(%rsp), %rcx
	movl	$.L.str.129, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	__isoc99_sscanf
	cmpl	$2, %eax
	jne	.LBB54_193
# BB#192:                               # %if.then.615
	movq	144(%rsp), %rax         # 8-byte Reload
	movq	(%rax), %rsi
	movl	8(%rax), %edx
	movq	168(%rsp), %rax         # 8-byte Reload
	movq	(%rax), %rcx
	movl	(%r12), %r8d
	movq	152(%rsp), %rdi         # 8-byte Reload
	callq	cos_dict_put_string
	jmp	.LBB54_193
.LBB54_131:                             # %if.then.426
	movl	$.L.str.123, %esi
	movq	112(%rsp), %rdi         # 8-byte Reload
	callq	cos_dict_alloc
	movq	%rax, %r14
	testq	%r14, %r14
	je	.LBB54_132
# BB#133:                               # %if.end.431
	cmpl	$0, 960(%rsp)
	jne	.LBB54_135
# BB#134:                               # %if.then.433
	movl	$.L.str.92, %esi
	movl	$.L.str.102, %edx
	movq	%r14, %rdi
	callq	cos_dict_put_c_strings
.LBB54_135:                             # %if.end.435
	movl	$.L.str.122, %edi
	callq	strlen
	movl	(%r12), %ebp
	movq	168(%rsp), %rcx         # 8-byte Reload
	movq	(%rcx), %rbx
	cmpq	%rbp, %rax
	jne	.LBB54_138
# BB#136:                               # %land.rhs.i.471
	movl	$.L.str.122, %edi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	strncmp
	testl	%eax, %eax
	je	.LBB54_137
.LBB54_138:                             # %if.else.441
	movl	$.L.str.124, %esi
	movq	%r14, %rdi
	movq	%rbx, %rdx
	movl	%ebp, %ecx
	callq	cos_dict_put_c_key_string
	jmp	.LBB54_139
.LBB54_132:                             # %cleanup.468.thread685
	movl	$-25, %ebx
	jmp	.LBB54_208
.LBB54_153:                             # %if.then.478
	leaq	2(%rbx), %rax
	movq	%rax, 760(%rsp)
	movl	%r14d, %r14d
	movl	$.L.str.123, %esi
	movq	112(%rsp), %rdi         # 8-byte Reload
	callq	cos_dict_alloc
	testq	%rax, %rax
	movq	%rax, %rcx
	je	.LBB54_154
# BB#155:                               # %if.end.489
	addq	%r14, %rbx
	movq	72(%rsp), %rax          # 8-byte Reload
	testq	%rax, %rax
	movq	%rbx, %r14
	movq	%rcx, %rbx
	je	.LBB54_157
# BB#156:                               # %if.then.491
	movq	(%rax), %rsi
	movl	8(%rax), %edx
	movq	16(%rax), %rcx
	movl	24(%rax), %r8d
	movq	%rbx, %rdi
	callq	cos_dict_put_string
	movl	$.L.str.124, %esi
	movl	$.L.str.106, %edx
	movq	%rbx, %rdi
	callq	cos_dict_put_c_strings
.LBB54_157:                             # %while.cond.preheader
	leaq	760(%rsp), %rdi
	leaq	800(%rsp), %rdx
	movq	%r14, %rsi
	callq	pdf_scan_token
	testl	%eax, %eax
	jle	.LBB54_158
# BB#159:                               # %while.body.lr.ph
	movq	%rbx, 168(%rsp)         # 8-byte Spill
	movq	%r15, 104(%rsp)         # 8-byte Spill
	leaq	760(%rsp), %rbx
	.align	16, 0x90
.LBB54_160:                             # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movl	760(%rsp), %ebp
	movq	800(%rsp), %rax
	subl	%eax, %ebp
	movl	%ebp, 808(%rsp)
	movzbl	(%rax), %eax
	cmpl	$47, %eax
	jne	.LBB54_181
# BB#161:                               # %lor.lhs.false.507
                                        #   in Loop: Header=BB54_160 Depth=1
	movq	%rbx, %rdi
	movq	%r14, %rsi
	leaq	176(%rsp), %rdx
	callq	pdf_scan_token_composite
	cmpl	$1, %eax
	jne	.LBB54_179
# BB#162:                               # %if.end.513
                                        #   in Loop: Header=BB54_160 Depth=1
	movl	760(%rsp), %r13d
	movq	176(%rsp), %r12
	subl	%r12d, %r13d
	movl	%r13d, 184(%rsp)
	movl	$.L.str.105, %edi
	callq	strlen
	movl	808(%rsp), %r15d
	cmpq	%r15, %rax
	jne	.LBB54_164
# BB#163:                               # %land.rhs.i.504
                                        #   in Loop: Header=BB54_160 Depth=1
	movq	800(%rsp), %rsi
	movl	$.L.str.105, %edi
	movq	%rax, %rdx
	callq	strncmp
	testl	%eax, %eax
	je	.LBB54_166
.LBB54_164:                             # %lor.lhs.false.522
                                        #   in Loop: Header=BB54_160 Depth=1
	movl	$.L.str.126, %edi
	callq	strlen
	cmpq	%r15, %rax
	jne	.LBB54_170
# BB#165:                               # %land.rhs.i.514
                                        #   in Loop: Header=BB54_160 Depth=1
	movq	800(%rsp), %rsi
	movl	$.L.str.126, %edi
	movq	%r15, %rdx
	callq	strncmp
	testl	%eax, %eax
	je	.LBB54_166
.LBB54_170:                             # %if.else.541
                                        #   in Loop: Header=BB54_160 Depth=1
	movl	$.L.str.104, %edi
	callq	strlen
	cmpq	%r15, %rax
	jne	.LBB54_173
# BB#171:                               # %land.rhs.i.535
                                        #   in Loop: Header=BB54_160 Depth=1
	movq	800(%rsp), %rsi
	movl	$.L.str.104, %edi
	movq	%r15, %rdx
	callq	strncmp
	testl	%eax, %eax
	je	.LBB54_172
.LBB54_173:                             # %if.else.551
                                        #   in Loop: Header=BB54_160 Depth=1
	movl	$.L.str.110, %edi
	callq	strlen
	cmpq	%r15, %rax
	jne	.LBB54_177
# BB#174:                               # %land.rhs.i.545
                                        #   in Loop: Header=BB54_160 Depth=1
	movq	800(%rsp), %rsi
	movl	$.L.str.110, %edi
	movq	%r15, %rdx
	callq	strncmp
	testl	%eax, %eax
	jne	.LBB54_177
# BB#175:                               # %if.then.554
                                        #   in Loop: Header=BB54_160 Depth=1
	movq	$.L.str.124, 800(%rsp)
	movl	$.L.str.124, %edi
	jmp	.LBB54_176
.LBB54_166:                             # %if.then.525
                                        #   in Loop: Header=BB54_160 Depth=1
	movq	$.L.str.126, 800(%rsp)
	movl	$.L.str.126, %edi
	callq	strlen
	movq	%rax, %r15
	movl	%r15d, 808(%rsp)
	movl	$1, 812(%rsp)
	movzbl	(%r12), %eax
	cmpl	$40, %eax
	jne	.LBB54_177
# BB#167:                               # %if.then.537
                                        #   in Loop: Header=BB54_160 Depth=1
	testl	%r13d, %r13d
	je	.LBB54_168
# BB#169:                               # %if.end.i.526
                                        #   in Loop: Header=BB54_160 Depth=1
	decl	%r13d
	leaq	288(%rsp), %rbp
	movq	%rbp, %rdi
	movq	%r12, %rsi
	movq	%r13, %rdx
	callq	memcpy
	movb	$47, 288(%rsp)
	movb	$0, 288(%rsp,%r13)
	movq	%rbp, 176(%rsp)
	movl	%r13d, 184(%rsp)
	movl	808(%rsp), %r15d
	movq	%rbp, %r12
	jmp	.LBB54_177
.LBB54_172:                             # %if.then.544
                                        #   in Loop: Header=BB54_160 Depth=1
	movq	$.L.str.69, 800(%rsp)
	movl	$.L.str.69, %edi
.LBB54_176:                             # %if.end.563
                                        #   in Loop: Header=BB54_160 Depth=1
	callq	strlen
	movq	%rax, %r15
	movl	%r15d, 808(%rsp)
	movl	$1, 812(%rsp)
	jmp	.LBB54_177
.LBB54_168:                             #   in Loop: Header=BB54_160 Depth=1
	xorl	%r13d, %r13d
	.align	16, 0x90
.LBB54_177:                             # %if.end.563
                                        #   in Loop: Header=BB54_160 Depth=1
	movq	800(%rsp), %rsi
	movq	168(%rsp), %rdi         # 8-byte Reload
	movl	%r15d, %edx
	movq	%r12, %rcx
	movl	%r13d, %r8d
	callq	cos_dict_put_string
	movq	%rbx, %rdi
	movq	%r14, %rsi
	leaq	800(%rsp), %rdx
	callq	pdf_scan_token
	testl	%eax, %eax
	jg	.LBB54_160
	jmp	.LBB54_178
.LBB54_189:                             # %if.then.592
	movq	144(%rsp), %rax         # 8-byte Reload
	movq	(%rax), %rsi
	movl	8(%rax), %edx
	movq	152(%rsp), %rdi         # 8-byte Reload
	movq	%rbx, %rcx
	movl	%r14d, %r8d
	callq	cos_dict_put_string
	movb	$1, %r13b
	jmp	.LBB54_193
.LBB54_137:                             # %if.then.439
	movl	$.L.str.124, %esi
	movl	$.L.str.125, %edx
	movq	%r14, %rdi
	callq	cos_dict_put_c_strings
	xorl	%eax, %eax
	movq	%rax, 120(%rsp)         # 8-byte Spill
.LBB54_139:                             # %if.end.444
	movq	128(%rsp), %r12         # 8-byte Reload
	cmpq	$0, 136(%rsp)           # 8-byte Folded Reload
	je	.LBB54_146
# BB#140:                               # %if.then.447
	movq	120(%rsp), %rax         # 8-byte Reload
	testl	%eax, %eax
	je	.LBB54_145
# BB#141:                               # %if.then.449
	testl	%r15d, %r15d
	je	.LBB54_142
# BB#143:                               # %lor.lhs.false.i
	movq	136(%rsp), %rsi         # 8-byte Reload
	movzbl	(%rsi), %eax
	cmpl	$40, %eax
	jne	.LBB54_145
# BB#144:                               # %if.end.i.480
	leaq	288(%rsp), %rbx
	decl	%r15d
	movq	%rbx, %rdi
	movq	%r15, %rdx
	callq	memcpy
	movb	$47, 288(%rsp)
	movb	$0, 288(%rsp,%r15)
	movq	%rbx, 136(%rsp)         # 8-byte Spill
	jmp	.LBB54_145
.LBB54_154:
	movl	$-25, %ebx
	xorl	%eax, %eax
	jmp	.LBB54_186
.LBB54_142:
	xorl	%r15d, %r15d
.LBB54_145:                             # %if.end.452
	movl	$.L.str.126, %esi
	movq	%r14, %rdi
	movq	136(%rsp), %rdx         # 8-byte Reload
	movl	%r15d, %ecx
	callq	cos_dict_put_c_key_string
.LBB54_146:                             # %if.end.455
	testb	%r13b, %r13b
	je	.LBB54_148
# BB#147:                               # %if.then.457
	movq	16(%r12), %rdx
	movl	24(%r12), %ecx
	movl	$.L.str.69, %esi
	movq	%r14, %rdi
	callq	cos_dict_put_c_key_string
.LBB54_148:                             # %if.end.460
	movq	72(%rsp), %rax          # 8-byte Reload
	testq	%rax, %rax
	je	.LBB54_150
# BB#149:                               # %if.then.462
	movq	(%rax), %rsi
	movl	8(%rax), %edx
	movq	16(%rax), %rcx
	movl	24(%rax), %r8d
	movq	%r14, %rdi
	callq	cos_dict_put_string
	movl	$.L.str.124, %esi
	movl	$.L.str.106, %edx
	movq	%r14, %rdi
	callq	cos_dict_put_c_strings
.LBB54_150:                             # %if.end.651.thread
	leaq	368(%rsp), %rdi
	movq	%r14, %rsi
	callq	cos_object_value
	movl	$.L.str.103, %esi
	movl	$2, %edx
	movq	152(%rsp), %rdi         # 8-byte Reload
	movq	%rax, %rcx
	callq	cos_dict_put
	jmp	.LBB54_206
.LBB54_158:
	xorl	%eax, %eax
	movl	$-15, %ebx
	jmp	.LBB54_186
.LBB54_179:                             # %while.end
	testl	%eax, %eax
	jle	.LBB54_178
# BB#180:                               # %while.end.lor.lhs.false.571_crit_edge
	movl	808(%rsp), %ebp
.LBB54_181:                             # %lor.lhs.false.571
	movl	$.L.str.128, %edi
	callq	strlen
	movl	%ebp, %ecx
	cmpq	%rcx, %rax
	movl	$-15, %ebx
	jne	.LBB54_182
# BB#183:                               # %land.rhs.i.555
	movq	800(%rsp), %rsi
	movl	$.L.str.128, %edi
	movq	%rax, %rdx
	callq	strncmp
	testl	%eax, %eax
	movq	104(%rsp), %r15         # 8-byte Reload
	je	.LBB54_185
# BB#184:
	xorl	%eax, %eax
	jmp	.LBB54_186
.LBB54_178:
	xorl	%eax, %eax
	movq	104(%rsp), %r15         # 8-byte Reload
	movl	$-15, %ebx
	jmp	.LBB54_186
.LBB54_182:
	xorl	%eax, %eax
	movq	104(%rsp), %r15         # 8-byte Reload
	jmp	.LBB54_186
.LBB54_185:                             # %if.end.575
	leaq	368(%rsp), %rdi
	movq	168(%rsp), %rsi         # 8-byte Reload
	callq	cos_object_value
	movl	$.L.str.103, %esi
	movl	$2, %edx
	movq	152(%rsp), %rdi         # 8-byte Reload
	movq	%rax, %rcx
	callq	cos_dict_put
	movb	$1, %al
                                        # implicit-def: EBX
.LBB54_186:                             # %cleanup.579
	movb	$1, %r13b
	testb	%al, %al
	je	.LBB54_208
.LBB54_193:                             # %if.end.626
	cmpq	$0, 136(%rsp)           # 8-byte Folded Reload
	je	.LBB54_201
# BB#194:                               # %if.then.629
	movq	120(%rsp), %rax         # 8-byte Reload
	testl	%eax, %eax
	je	.LBB54_195
# BB#196:                               # %if.then.631
	testl	%r15d, %r15d
	movq	136(%rsp), %rdx         # 8-byte Reload
	je	.LBB54_197
# BB#198:                               # %lor.lhs.false.i.582
	movzbl	(%rdx), %eax
	cmpl	$40, %eax
	jne	.LBB54_200
# BB#199:                               # %if.end.i.587
	leaq	288(%rsp), %rbx
	decl	%r15d
	movq	%rbx, %rdi
	movq	%rdx, %rsi
	movq	%r15, %rdx
	callq	memcpy
	movb	$47, 288(%rsp)
	movb	$0, 288(%rsp,%r15)
	movq	%rbx, %rdx
	jmp	.LBB54_200
.LBB54_201:                             # %if.else.636
	cmpl	$0, 960(%rsp)
	sete	%al
	orb	%r13b, %al
	jne	.LBB54_204
# BB#202:                               # %if.then.640
	movq	112(%rsp), %rdi         # 8-byte Reload
	movl	26544(%rdi), %esi
	incl	%esi
	callq	pdf_page_id
	movq	%rax, %rcx
	leaq	368(%rsp), %rbx
	movl	$.L.str.130, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	movq	%rcx, %rdx
	callq	gs_sprintf
	movq	%rbx, %rdi
	callq	strlen
	movl	$.L.str.105, %esi
	movq	152(%rsp), %rdi         # 8-byte Reload
	movq	%rbx, %rdx
	movl	%eax, %ecx
	jmp	.LBB54_203
.LBB54_195:
	movq	136(%rsp), %rdx         # 8-byte Reload
	jmp	.LBB54_200
.LBB54_197:
	xorl	%r15d, %r15d
.LBB54_200:                             # %if.end.634
	movl	$.L.str.105, %esi
	movq	152(%rsp), %rdi         # 8-byte Reload
	movl	%r15d, %ecx
.LBB54_203:                             # %if.end.651
	callq	cos_dict_put_c_key_string
.LBB54_204:                             # %if.end.651
	movq	128(%rsp), %rax         # 8-byte Reload
	testq	%rax, %rax
	je	.LBB54_206
# BB#205:                               # %if.then.653
	movq	(%rax), %rsi
	movl	8(%rax), %edx
	movq	16(%rax), %rcx
	movl	24(%rax), %r8d
	movq	152(%rsp), %rdi         # 8-byte Reload
	callq	cos_dict_put_string
.LBB54_206:                             # %if.end.655
	xorl	%ebx, %ebx
	movq	80(%rsp), %rdx          # 8-byte Reload
	testq	%rdx, %rdx
	je	.LBB54_208
# BB#207:                               # %if.then.658
	movl	$.L.str.110, %esi
	movq	152(%rsp), %rdi         # 8-byte Reload
	movq	64(%rsp), %rcx          # 8-byte Reload
	callq	cos_dict_put_c_key_string
.LBB54_208:                             # %cleanup.661
	movl	%ebx, %eax
	addq	$904, %rsp              # imm = 0x388
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end54:
	.size	pdfmark_put_ao_pairs, .Lfunc_end54-pdfmark_put_ao_pairs
	.cfi_endproc

	.align	16, 0x90
	.type	pdfmark_make_dest,@function
pdfmark_make_dest:                      # @pdfmark_make_dest
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp322:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp323:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp324:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp325:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp326:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp327:
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
.Ltmp328:
	.cfi_def_cfa_offset 112
.Ltmp329:
	.cfi_offset %rbx, -56
.Ltmp330:
	.cfi_offset %r12, -48
.Ltmp331:
	.cfi_offset %r13, -40
.Ltmp332:
	.cfi_offset %r14, -32
.Ltmp333:
	.cfi_offset %r15, -24
.Ltmp334:
	.cfi_offset %rbp, -16
	movl	%r8d, %r15d
	movl	%ecx, 28(%rsp)          # 4-byte Spill
	movq	%rdx, %r13
	movq	%rsi, %r14
	movq	%rdi, (%rsp)            # 8-byte Spill
	testl	%ecx, %ecx
	je	.LBB55_6
# BB#1:                                 # %for.body.lr.ph.i
	movl	$.L.str.107, %edi
	callq	strlen
	movq	%rax, %rbx
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB55_2:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebp, %ebp
	movq	%rbp, %rax
	shlq	$4, %rax
	movl	8(%r13,%rax), %ecx
	cmpq	%rcx, %rbx
	jne	.LBB55_5
# BB#3:                                 # %land.rhs.i.i
                                        #   in Loop: Header=BB55_2 Depth=1
	movq	(%r13,%rax), %rsi
	movl	$.L.str.107, %edi
	movq	%rbx, %rdx
	callq	strncmp
	testl	%eax, %eax
	je	.LBB55_4
.LBB55_5:                               # %for.inc.i
                                        #   in Loop: Header=BB55_2 Depth=1
	addl	$2, %ebp
	cmpl	28(%rsp), %ebp          # 4-byte Folded Reload
	jb	.LBB55_2
.LBB55_6:                               # %for.end.i
	movl	%r15d, 12(%rsp)         # 4-byte Spill
	movq	%r14, 16(%rsp)          # 8-byte Spill
	movq	$0, 32(%rsp)
	movl	$0, 40(%rsp)
	movl	$0, 8(%rsp)             # 4-byte Folded Spill
	jmp	.LBB55_7
.LBB55_4:                               # %if.then.i
	movl	%r15d, 12(%rsp)         # 4-byte Spill
	movq	%r14, 16(%rsp)          # 8-byte Spill
	orl	$1, %ebp
	shlq	$4, %rbp
	movups	(%r13,%rbp), %xmm0
	movaps	%xmm0, 32(%rsp)
	movl	$1, 8(%rsp)             # 4-byte Folded Spill
.LBB55_7:                               # %pdfmark_find_key.exit
	cmpl	$0, 28(%rsp)            # 4-byte Folded Reload
	movl	$0, %ebp
	movl	$0, %ebx
	movl	$0, %r15d
	je	.LBB55_13
# BB#8:                                 # %for.body.lr.ph.i.3
	movl	$.L.str.108, %edi
	callq	strlen
	movq	%rax, %r14
	xorl	%r12d, %r12d
	movl	$0, %r15d
	.align	16, 0x90
.LBB55_9:                               # %for.body.i.9
                                        # =>This Inner Loop Header: Depth=1
	movl	%r12d, %r12d
	movq	%r12, %rax
	shlq	$4, %rax
	movl	8(%r13,%rax), %ecx
	cmpq	%rcx, %r14
	jne	.LBB55_12
# BB#10:                                # %land.rhs.i.i.13
                                        #   in Loop: Header=BB55_9 Depth=1
	movq	(%r13,%rax), %rsi
	movl	$.L.str.108, %edi
	movq	%r14, %rdx
	callq	strncmp
	testl	%eax, %eax
	je	.LBB55_11
.LBB55_12:                              # %for.inc.i.20
                                        #   in Loop: Header=BB55_9 Depth=1
	addl	$2, %r12d
	xorl	%ebp, %ebp
	cmpl	28(%rsp), %r12d         # 4-byte Folded Reload
	movl	$0, %ebx
	jb	.LBB55_9
	jmp	.LBB55_13
.LBB55_11:                              # %if.then.i.17
	orl	$1, %r12d
	shlq	$4, %r12
	movq	(%r13,%r12), %rbx
	movl	8(%r13,%r12), %ebp
	movl	$1, %r15d
.LBB55_13:                              # %pdfmark_find_key.exit25
	addl	8(%rsp), %r15d          # 4-byte Folded Reload
	orl	%r15d, 12(%rsp)         # 4-byte Folded Spill
	movq	16(%rsp), %r14          # 8-byte Reload
	movl	$0, %r12d
	je	.LBB55_15
# BB#14:                                # %if.then
	leaq	32(%rsp), %rsi
	movq	%r14, %rdi
	callq	pdfmark_page_number
	movl	%eax, %r12d
.LBB55_15:                              # %if.end
	movl	30768(%r14), %eax
	cmpl	%eax, %r12d
	jl	.LBB55_18
# BB#16:                                # %lor.lhs.false.4
	movl	30772(%r14), %ecx
	testl	%ecx, %ecx
	je	.LBB55_19
# BB#17:                                # %lor.lhs.false.4
	cmpl	%ecx, %r12d
	jle	.LBB55_19
.LBB55_18:                              # %if.then.8
	movq	24(%r14), %rbx
	callq	gs_program_name
	movq	%rax, %rbp
	callq	gs_revision_number
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	24(%r14), %rdi
	movl	$.L.str.131, %esi
	xorl	%eax, %eax
	movl	%r12d, %edx
	callq	errprintf
	movl	$-1, %ecx
.LBB55_36:                              # %cleanup
	movl	%ecx, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB55_19:                              # %if.else
	movq	%r12, %rcx
	leal	1(%rcx), %r14d
	subl	%eax, %r14d
	testl	%eax, %eax
	cmovel	%ecx, %r14d
	testl	%ebp, %ebp
	jne	.LBB55_21
# BB#20:                                # %if.then.21
	movl	$.L.str.132, %ebx
	movl	$.L.str.132, %edi
	callq	strlen
	movq	%rax, %rbp
.LBB55_21:                              # %if.end.25
	testl	%r14d, %r14d
	je	.LBB55_22
# BB#23:                                # %if.else.30
	movl	%r14d, 12(%rsp)         # 4-byte Spill
	cmpl	$0, 28(%rsp)            # 4-byte Folded Reload
	je	.LBB55_28
# BB#24:                                # %for.body.lr.ph.i.28
	movl	$.L.str.102, %edi
	callq	strlen
	movq	%rax, %r12
	xorl	%r14d, %r14d
	.align	16, 0x90
.LBB55_25:                              # %for.body.i.34
                                        # =>This Inner Loop Header: Depth=1
	movl	%r14d, %r14d
	movq	%r14, %rax
	shlq	$4, %rax
	movl	8(%r13,%rax), %ecx
	cmpq	%rcx, %r12
	jne	.LBB55_27
# BB#26:                                # %land.rhs.i.i.38
                                        #   in Loop: Header=BB55_25 Depth=1
	movq	(%r13,%rax), %rsi
	movl	$.L.str.102, %edi
	movq	%r12, %rdx
	callq	strncmp
	testl	%eax, %eax
	je	.LBB55_29
.LBB55_27:                              # %for.inc.i.45
                                        #   in Loop: Header=BB55_25 Depth=1
	addl	$2, %r14d
	cmpl	28(%rsp), %r14d         # 4-byte Folded Reload
	jb	.LBB55_25
	jmp	.LBB55_28
.LBB55_22:                              # %if.then.28
	movl	$.L.str.133, %esi
	movq	(%rsp), %r12            # 8-byte Reload
	movq	%r12, %rdi
	callq	strcpy
	jmp	.LBB55_32
.LBB55_29:                              # %land.lhs.true.33
	orl	$1, %r14d
	shlq	$4, %r14
	movl	8(%r13,%r14), %r12d
	movl	$.L.str.120, %edi
	callq	strlen
	cmpq	%r12, %rax
	jne	.LBB55_28
# BB#30:                                # %land.rhs.i
	movq	(%r13,%r14), %rsi
	movl	$.L.str.120, %edi
	movq	%rax, %rdx
	callq	strncmp
	testl	%eax, %eax
	je	.LBB55_31
.LBB55_28:                              # %if.else.39
	movq	16(%rsp), %rdi          # 8-byte Reload
	movl	12(%rsp), %esi          # 4-byte Reload
	callq	pdf_page_id
	movq	%rax, %rcx
	movl	$.L.str.135, %esi
	xorl	%eax, %eax
	movq	(%rsp), %r12            # 8-byte Reload
	movq	%r12, %rdi
	movq	%rcx, %rdx
	callq	gs_sprintf
.LBB55_32:                              # %if.end.43
	movq	%r12, %rdi
	callq	strlen
	leal	(%rax,%rbp), %r14d
	movl	$-13, %ecx
	cmpl	$80, %r14d
	ja	.LBB55_36
# BB#33:                                # %if.end.51
	movl	$-15, %ecx
	movzbl	(%rbx), %edx
	cmpl	$91, %edx
	jne	.LBB55_36
# BB#34:                                # %lor.lhs.false.56
	decl	%ebp
	movzbl	(%rbx,%rbp), %edx
	cmpl	$93, %edx
	jne	.LBB55_36
# BB#35:                                # %if.end.65
	cltq
	leaq	(%rax,%r12), %rdi
	incq	%rbx
	movq	%rbx, %rsi
	movq	%rbp, %rdx
	callq	memcpy
	decl	%r14d
	movb	$0, (%r12,%r14)
	movl	%r15d, %ecx
	jmp	.LBB55_36
.LBB55_31:                              # %if.then.36
	movl	12(%rsp), %edx          # 4-byte Reload
	decl	%edx
	movl	$.L.str.134, %esi
	xorl	%eax, %eax
	movq	(%rsp), %r12            # 8-byte Reload
	movq	%r12, %rdi
	callq	gs_sprintf
	jmp	.LBB55_32
.Lfunc_end55:
	.size	pdfmark_make_dest, .Lfunc_end55-pdfmark_make_dest
	.cfi_endproc

	.align	16, 0x90
	.type	pdfmark_page_number,@function
pdfmark_page_number:                    # @pdfmark_page_number
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp335:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp336:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp337:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp338:
	.cfi_def_cfa_offset 40
	subq	$40, %rsp
.Ltmp339:
	.cfi_def_cfa_offset 80
.Ltmp340:
	.cfi_offset %rbx, -40
.Ltmp341:
	.cfi_offset %r12, -32
.Ltmp342:
	.cfi_offset %r14, -24
.Ltmp343:
	.cfi_offset %r15, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movl	26544(%r14), %r12d
	leal	1(%r12), %eax
	movl	%eax, 12(%rsp)
	movq	(%rbx), %r15
	testq	%r15, %r15
	je	.LBB56_11
# BB#1:                                 # %if.else
	movl	$.L.str.136, %edi
	callq	strlen
	movl	8(%rbx), %ebx
	cmpq	%rbx, %rax
	jne	.LBB56_4
# BB#2:                                 # %land.rhs.i
	movl	$.L.str.136, %edi
	movq	%r15, %rsi
	movq	%rax, %rdx
	callq	strncmp
	testl	%eax, %eax
	je	.LBB56_3
.LBB56_4:                               # %if.else.2
	movl	$.L.str.137, %edi
	callq	strlen
	cmpq	%rbx, %rax
	jne	.LBB56_7
# BB#5:                                 # %land.rhs.i.13
	movl	$.L.str.137, %edi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	strncmp
	testl	%eax, %eax
	je	.LBB56_6
.LBB56_7:                               # %if.else.6
	cmpl	$20, %ebx
	ja	.LBB56_10
# BB#8:                                 # %if.end.i
	leaq	16(%rsp), %r12
	movq	%r12, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	memcpy
	movb	$0, 16(%rsp,%rbx)
	leaq	12(%rsp), %rdx
	movl	$.L.str, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	__isoc99_sscanf
	cmpl	$1, %eax
	jne	.LBB56_10
# BB#9:                                 # %pdfmark_scan_int.exit
	movl	12(%rsp), %eax
	jmp	.LBB56_11
.LBB56_10:                              # %if.then.9
	movl	$0, 12(%rsp)
	xorl	%eax, %eax
	jmp	.LBB56_11
.LBB56_3:                               # %if.then.1
	addl	$2, %r12d
.LBB56_6:                               # %if.then.5
	movl	%r12d, 12(%rsp)
	movl	%r12d, %eax
.LBB56_11:                              # %if.end.12
	cmpl	%eax, 26548(%r14)
	jge	.LBB56_13
# BB#12:                                # %if.then.14
	movl	%eax, 26548(%r14)
.LBB56_13:                              # %if.end.16
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end56:
	.size	pdfmark_page_number, .Lfunc_end56-pdfmark_page_number
	.cfi_endproc

	.align	16, 0x90
	.type	ps_source_ok,@function
ps_source_ok:                           # @ps_source_ok
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp344:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp345:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp346:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp347:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp348:
	.cfi_def_cfa_offset 48
.Ltmp349:
	.cfi_offset %rbx, -40
.Ltmp350:
	.cfi_offset %r14, -32
.Ltmp351:
	.cfi_offset %r15, -24
.Ltmp352:
	.cfi_offset %rbp, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movl	8(%rbx), %eax
	cmpl	$2, %eax
	jb	.LBB57_3
# BB#1:                                 # %land.lhs.true
	movq	(%rbx), %rcx
	movzbl	(%rcx), %edx
	cmpl	$40, %edx
	jne	.LBB57_3
# BB#2:                                 # %land.lhs.true.3
	decl	%eax
	movzbl	(%rcx,%rax), %eax
	movl	$1, %r15d
	cmpl	$41, %eax
	je	.LBB57_7
.LBB57_3:                               # %if.else
	callq	gs_program_name
	movq	%rax, %rbp
	callq	gs_revision_number
	movq	%rbp, %rdi
	movq	%rax, %rsi
	callq	eprintf_program_ident
	movl	$.L.str.159, %edi
	movl	$1452, %esi             # imm = 0x5AC
	callq	lprintf_file_and_line
	xorl	%r15d, %r15d
	movl	$.L.str.160, %edi
	xorl	%eax, %eax
	callq	errprintf_nomem
	cmpl	$0, 8(%rbx)
	je	.LBB57_6
# BB#4:                                 # %for.body.lr.ph
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB57_5:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rbx), %rax
	movzbl	(%rax,%rbp), %edx
	movl	$.L.str.161, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	errprintf
	incq	%rbp
	cmpl	8(%rbx), %ebp
	jb	.LBB57_5
.LBB57_6:                               # %for.end
	movl	$.L.str.162, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	errprintf
.LBB57_7:                               # %return
	movl	%r15d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end57:
	.size	ps_source_ok, .Lfunc_end57-ps_source_ok
	.cfi_endproc

	.align	16, 0x90
	.type	start_XObject,@function
start_XObject:                          # @start_XObject
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp353:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp354:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp355:
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
.Ltmp356:
	.cfi_def_cfa_offset 48
.Ltmp357:
	.cfi_offset %rbx, -32
.Ltmp358:
	.cfi_offset %r14, -24
.Ltmp359:
	.cfi_offset %r15, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movl	$1, %esi
	callq	pdf_open_page
	testl	%eax, %eax
	js	.LBB58_6
# BB#1:                                 # %if.end
	movl	9480(%rbx), %r9d
	leaq	8(%rsp), %rcx
	movl	$4, %esi
	xorl	%edx, %edx
	xorl	%r8d, %r8d
	movq	%rbx, %rdi
	callq	pdf_enter_substream
	testl	%eax, %eax
	js	.LBB58_6
# BB#2:                                 # %if.end.4
	movl	$1, 30568(%rbx)
	movq	8(%rsp), %rax
	movq	64(%rax), %r15
	movl	$.L.str.163, %esi
	movq	%rbx, %rdi
	callq	cos_dict_alloc
	movq	%rax, %rcx
	movq	%rcx, 30448(%rbx)
	movl	$-25, %eax
	testq	%rcx, %rcx
	je	.LBB58_6
# BB#3:                                 # %if.end.8
	cmpl	$0, 9524(%rbx)
	je	.LBB58_5
# BB#4:                                 # %if.then.10
	movq	8(%rsp), %rax
	movq	64(%rax), %rdi
	movl	$.L.str.154, %esi
	movl	$1, %edx
	callq	cos_dict_put_c_key_bool
	testl	%eax, %eax
	js	.LBB58_6
.LBB58_5:                               # %if.end.16
	movq	8(%rsp), %rax
	movl	$1, 24(%rax)
	movq	$0, 56(%rax)
	movq	%rax, 40(%r15)
	movq	%r15, (%r14)
	xorl	%eax, %eax
.LBB58_6:                               # %cleanup
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end58:
	.size	start_XObject, .Lfunc_end58-start_XObject
	.cfi_endproc

	.align	16, 0x90
	.type	pdfmark_bind_named_object,@function
pdfmark_bind_named_object:              # @pdfmark_bind_named_object
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp360:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp361:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp362:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp363:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp364:
	.cfi_def_cfa_offset 48
	subq	$32, %rsp
.Ltmp365:
	.cfi_def_cfa_offset 80
.Ltmp366:
	.cfi_offset %rbx, -48
.Ltmp367:
	.cfi_offset %r12, -40
.Ltmp368:
	.cfi_offset %r14, -32
.Ltmp369:
	.cfi_offset %r15, -24
.Ltmp370:
	.cfi_offset %rbp, -16
	movq	%rdx, %r15
	movq	%rsi, %rbx
	movq	%rdi, %r14
	testq	%rbx, %rbx
	je	.LBB59_9
# BB#1:                                 # %land.lhs.true
	movl	8(%rbx), %edx
	testl	%edx, %edx
	je	.LBB59_9
# BB#2:                                 # %if.then
	movq	28760(%r14), %rdi
	movq	(%rbx), %rsi
	callq	cos_dict_find
	movq	%rax, %r12
	testq	%r12, %r12
	je	.LBB59_9
# BB#3:                                 # %if.then.3
	movl	$-15, %eax
	cmpl	$2, (%r12)
	jne	.LBB59_19
# BB#4:                                 # %if.then.5
	movq	8(%r12), %rdi
	movl	$cos_generic_procs, %eax
	cmpq	%rax, (%rdi)
	je	.LBB59_5
# BB#6:                                 # %if.else
	cmpb	$0, 50(%rdi)
	jne	.LBB59_9
# BB#7:                                 # %if.then.13
	movl	$5, %edx
	movq	%r14, %rsi
	callq	cos_write_object
	testl	%eax, %eax
	js	.LBB59_19
# BB#8:                                 # %if.end
	movq	8(%r12), %rax
	movb	$1, 50(%rax)
	jmp	.LBB59_9
.LBB59_5:                               # %if.then.7
	movq	(%r15), %rsi
	movq	8(%rdi), %rdx
	movq	%r14, %rdi
	callq	pdf_reserve_object_id
.LBB59_9:                               # %if.end.27
	movq	(%r15), %rcx
	movq	64(%rcx), %rax
	cmpq	$-1, 8(%rax)
	jne	.LBB59_15
# BB#10:                                # %if.then.31
	testq	%rbx, %rbx
	je	.LBB59_13
# BB#11:                                # %land.lhs.true.33
	cmpl	$0, 8(%rbx)
	je	.LBB59_13
# BB#12:                                # %if.then.36
	movl	$4, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	jmp	.LBB59_14
.LBB59_13:                              # %if.else.38
	movl	$4, %edx
	xorl	%ecx, %ecx
	movl	$1, %r8d
.LBB59_14:                              # %if.end.40
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	pdf_substitute_resource
	movq	26664(%r14), %rdx
	movq	(%r15), %rcx
	orq	%rdx, 56(%rcx)
	testl	%eax, %eax
	js	.LBB59_19
.LBB59_15:                              # %if.end.45
	testq	%rbx, %rbx
	je	.LBB59_18
# BB#16:                                # %land.lhs.true.47
	movl	8(%rbx), %ebp
	testl	%ebp, %ebp
	je	.LBB59_18
# BB#17:                                # %if.then.50
	movq	28760(%r14), %r14
	movq	(%rbx), %rbx
	movq	64(%rcx), %rsi
	leaq	8(%rsp), %rdi
	callq	cos_object_value
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movl	%ebp, %edx
	movq	%rax, %rcx
	callq	cos_dict_put
	testl	%eax, %eax
	js	.LBB59_19
.LBB59_18:                              # %if.end.63
	xorl	%eax, %eax
.LBB59_19:                              # %cleanup.64
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end59:
	.size	pdfmark_bind_named_object, .Lfunc_end59-pdfmark_bind_named_object
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%d"
	.size	.L.str, 3

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"<</F %ld 0 R/I<<"
	.size	.L.str.1, 17

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	">> >>\n"
	.size	.L.str.2, 7

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"[%g %g %g %g %g %g]"
	.size	.L.str.3, 20

	.type	mark_names,@object      # @mark_names
	.section	.rodata,"a",@progbits
	.align	16
mark_names:
	.quad	.L.str.25
	.quad	pdfmark_ANN
	.byte	1                       # 0x1
	.zero	7
	.quad	.L.str.26
	.quad	pdfmark_LNK
	.byte	1                       # 0x1
	.zero	7
	.quad	.L.str.27
	.quad	pdfmark_OUT
	.byte	0                       # 0x0
	.zero	7
	.quad	.L.str.28
	.quad	pdfmark_ARTICLE
	.byte	0                       # 0x0
	.zero	7
	.quad	.L.str.29
	.quad	pdfmark_DEST
	.byte	1                       # 0x1
	.zero	7
	.quad	.L.str.30
	.quad	pdfmark_EMBED
	.byte	1                       # 0x1
	.zero	7
	.quad	.L.str.31
	.quad	pdfmark_PS
	.byte	1                       # 0x1
	.zero	7
	.quad	.L.str.32
	.quad	pdfmark_PAGES
	.byte	0                       # 0x0
	.zero	7
	.quad	.L.str.33
	.quad	pdfmark_PAGE
	.byte	0                       # 0x0
	.zero	7
	.quad	.L.str.34
	.quad	pdfmark_PAGELABEL
	.byte	0                       # 0x0
	.zero	7
	.quad	.L.str.35
	.quad	pdfmark_DOCINFO
	.byte	0                       # 0x0
	.zero	7
	.quad	.L.str.36
	.quad	pdfmark_DOCVIEW
	.byte	0                       # 0x0
	.zero	7
	.quad	.L.str.37
	.quad	pdfmark_BP
	.byte	17                      # 0x11
	.zero	7
	.quad	.L.str.38
	.quad	pdfmark_EP
	.byte	0                       # 0x0
	.zero	7
	.quad	.L.str.39
	.quad	pdfmark_SP
	.byte	22                      # 0x16
	.zero	7
	.quad	.L.str.40
	.quad	pdfmark_OBJ
	.byte	1                       # 0x1
	.zero	7
	.quad	.L.str.41
	.quad	pdfmark_PUT
	.byte	6                       # 0x6
	.zero	7
	.quad	.L.str.42
	.quad	pdfmark_PUTDICT
	.byte	6                       # 0x6
	.zero	7
	.quad	.L.str.43
	.quad	pdfmark_PUTINTERVAL
	.byte	6                       # 0x6
	.zero	7
	.quad	.L.str.44
	.quad	pdfmark_PUTSTREAM
	.byte	14                      # 0xe
	.zero	7
	.quad	.L.str.45
	.quad	pdfmark_APPEND
	.byte	4                       # 0x4
	.zero	7
	.quad	.L.str.46
	.quad	pdfmark_CLOSE
	.byte	6                       # 0x6
	.zero	7
	.quad	.L.str.47
	.quad	pdfmark_NamespacePush
	.byte	0                       # 0x0
	.zero	7
	.quad	.L.str.48
	.quad	pdfmark_NamespacePop
	.byte	0                       # 0x0
	.zero	7
	.quad	.L.str.49
	.quad	pdfmark_NI
	.byte	1                       # 0x1
	.zero	7
	.quad	.L.str.50
	.quad	pdfmark_MP
	.byte	2                       # 0x2
	.zero	7
	.quad	.L.str.51
	.quad	pdfmark_DP
	.byte	0                       # 0x0
	.zero	7
	.quad	.L.str.52
	.quad	pdfmark_BMC
	.byte	2                       # 0x2
	.zero	7
	.quad	.L.str.53
	.quad	pdfmark_BDC
	.byte	0                       # 0x0
	.zero	7
	.quad	.L.str.54
	.quad	pdfmark_EMC
	.byte	0                       # 0x0
	.zero	7
	.quad	.L.str.55
	.quad	pdfmark_StRoleMap
	.byte	0                       # 0x0
	.zero	7
	.quad	.L.str.56
	.quad	pdfmark_StClassMap
	.byte	0                       # 0x0
	.zero	7
	.quad	.L.str.57
	.quad	pdfmark_StPNE
	.byte	1                       # 0x1
	.zero	7
	.quad	.L.str.58
	.quad	pdfmark_StBookmarkRoot
	.byte	0                       # 0x0
	.zero	7
	.quad	.L.str.59
	.quad	pdfmark_StPush
	.byte	0                       # 0x0
	.zero	7
	.quad	.L.str.60
	.quad	pdfmark_StPop
	.byte	0                       # 0x0
	.zero	7
	.quad	.L.str.61
	.quad	pdfmark_StPopAll
	.byte	0                       # 0x0
	.zero	7
	.quad	.L.str.62
	.quad	pdfmark_StBMC
	.byte	0                       # 0x0
	.zero	7
	.quad	.L.str.63
	.quad	pdfmark_StBDC
	.byte	0                       # 0x0
	.zero	7
	.quad	.L.str.64
	.quad	pdfmark_StOBJ
	.byte	0                       # 0x0
	.zero	7
	.quad	.L.str.65
	.quad	pdfmark_StAttr
	.byte	0                       # 0x0
	.zero	7
	.quad	.L.str.66
	.quad	pdfmark_StStore
	.byte	0                       # 0x0
	.zero	7
	.quad	.L.str.67
	.quad	pdfmark_StRetrieve
	.byte	0                       # 0x0
	.zero	7
	.zero	24
	.size	mark_names, 1056

	.type	.L.str.4,@object        # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"/_objdef"
	.size	.L.str.4, 9

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"pdfmark_process(pairs)"
	.size	.L.str.5, 23

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"pdfmark error: Outline node %ld has no action or destination.\n"
	.size	.L.str.6, 63

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"<< "
	.size	.L.str.7, 4

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"/Count %d "
	.size	.L.str.8, 11

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"/Parent %ld 0 R\n"
	.size	.L.str.9, 17

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"/Prev %ld 0 R\n"
	.size	.L.str.10, 15

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"/Next %ld 0 R\n"
	.size	.L.str.11, 15

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"/First %ld 0 R /Last %ld 0 R\n"
	.size	.L.str.12, 30

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	">>\n"
	.size	.L.str.13, 4

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"pdfmark_write_outline"
	.size	.L.str.14, 22

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"<</T %ld 0 R/V %ld 0 R/N %ld 0 R"
	.size	.L.str.15, 33

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"/P %ld 0 R"
	.size	.L.str.16, 11

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"/R%s>>\n"
	.size	.L.str.17, 8

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"[%g %g %g %g]"
	.size	.L.str.18, 14

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"pdfmark_add_pagelabel(PageLabels)"
	.size	.L.str.19, 34

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"pdfmark_add_pagelabel(first)"
	.size	.L.str.20, 29

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"pdfmark_add_pagelabel(dict)"
	.size	.L.str.21, 28

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"/P"
	.size	.L.str.22, 3

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"pdfmark_add_pagelabel(tmp)"
	.size	.L.str.23, 27

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"pdfmark_add_pagelabel(current_label)"
	.size	.L.str.24, 37

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"ANN"
	.size	.L.str.25, 4

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"LNK"
	.size	.L.str.26, 4

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"OUT"
	.size	.L.str.27, 4

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"ARTICLE"
	.size	.L.str.28, 8

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"DEST"
	.size	.L.str.29, 5

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"EMBED"
	.size	.L.str.30, 6

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"PS"
	.size	.L.str.31, 3

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"PAGES"
	.size	.L.str.32, 6

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"PAGE"
	.size	.L.str.33, 5

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"PAGELABEL"
	.size	.L.str.34, 10

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"DOCINFO"
	.size	.L.str.35, 8

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"DOCVIEW"
	.size	.L.str.36, 8

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"BP"
	.size	.L.str.37, 3

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"EP"
	.size	.L.str.38, 3

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"SP"
	.size	.L.str.39, 3

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"OBJ"
	.size	.L.str.40, 4

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"PUT"
	.size	.L.str.41, 4

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	".PUTDICT"
	.size	.L.str.42, 9

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	".PUTINTERVAL"
	.size	.L.str.43, 13

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	".PUTSTREAM"
	.size	.L.str.44, 11

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"APPEND"
	.size	.L.str.45, 7

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"CLOSE"
	.size	.L.str.46, 6

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"NamespacePush"
	.size	.L.str.47, 14

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"NamespacePop"
	.size	.L.str.48, 13

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"NI"
	.size	.L.str.49, 3

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"MP"
	.size	.L.str.50, 3

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"DP"
	.size	.L.str.51, 3

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"BMC"
	.size	.L.str.52, 4

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"BDC"
	.size	.L.str.53, 4

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"EMC"
	.size	.L.str.54, 4

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"StRoleMap"
	.size	.L.str.55, 10

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"StClassMap"
	.size	.L.str.56, 11

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"StPNE"
	.size	.L.str.57, 6

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"StBookmarkRoot"
	.size	.L.str.58, 15

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"StPush"
	.size	.L.str.59, 7

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"StPop"
	.size	.L.str.60, 6

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"StPopAll"
	.size	.L.str.61, 9

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"StBMC"
	.size	.L.str.62, 6

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"StBDC"
	.size	.L.str.63, 6

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"StOBJ"
	.size	.L.str.64, 6

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"StAttr"
	.size	.L.str.65, 7

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"StStore"
	.size	.L.str.66, 8

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"StRetrieve"
	.size	.L.str.67, 11

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"/Text"
	.size	.L.str.68, 6

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"/F"
	.size	.L.str.69, 3

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"%ld"
	.size	.L.str.70, 4

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"Annotation has an invalid /Flags attribute\n"
	.size	.L.str.71, 44

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"Annotation set to non-printing,\n not permitted in PDF/A, reverting to normal PDF output\n"
	.size	.L.str.72, 89

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"Annotation set to non-printing,\n not permitted in PDF/A, annotation will not be present in output file\n"
	.size	.L.str.73, 104

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"Annotation set to non-printing,\n not permitted in PDF/A, aborting conversion\n"
	.size	.L.str.74, 78

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"Annotation set to non-printing,\n not permitted in PDF/A, unrecognised PDFACompatibilityLevel,\nreverting to normal PDF output\n"
	.size	.L.str.75, 126

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"/TrapNet"
	.size	.L.str.76, 9

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"/PrinterMark"
	.size	.L.str.77, 13

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"/Rect"
	.size	.L.str.78, 6

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"/TrimBox"
	.size	.L.str.79, 9

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"/BleedBox"
	.size	.L.str.80, 10

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"/ArtBox"
	.size	.L.str.81, 8

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"/CropBox"
	.size	.L.str.82, 9

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"[ %g %g %g %g ]"
	.size	.L.str.83, 16

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"Annotation (not TrapNet or PrinterMark) on page,\n not permitted in PDF/X, reverting to normal PDF output\n"
	.size	.L.str.84, 106

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"Annotation (not TrapNet or PrinterMark) on page,\n not permitted in PDF/X, annotation will not be present in output file\n"
	.size	.L.str.85, 121

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"Annotation (not TrapNet or PrinterMark) on page,\n not permitted in PDF/X, aborting conversion\n"
	.size	.L.str.86, 95

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"Annotation s(not TrapNet or PrinterMark) on page,\n not permitted in PDF/A, unrecognised PDFACompatibilityLevel,\nreverting to normal PDF output\n"
	.size	.L.str.87, 144

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"Annotation (not TrapNet or PrinterMark) potentially on page (no /Rect in dict),\n not permitted in PDF/X, reverting to normal PDF output\n"
	.size	.L.str.88, 137

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"Annotation (not TrapNet or PrinterMark) potentially on page (no /Rect in dict),\n not permitted in PDF/X, annotation will not be present in output file\n"
	.size	.L.str.89, 152

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"Annotation (not TrapNet or PrinterMark) potentially on page (no /Rect in dict),\n not permitted in PDF/X, aborting conversion\n"
	.size	.L.str.90, 126

	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	"Annotation s(not TrapNet or PrinterMark) potentially on page (no /Rect in dict),\n not permitted in PDF/A, unrecognised PDFACompatibilityLevel,\nreverting to normal PDF output\n"
	.size	.L.str.91, 175

	.type	.L.str.92,@object       # @.str.92
.L.str.92:
	.asciz	"/Type"
	.size	.L.str.92, 6

	.type	.L.str.93,@object       # @.str.93
.L.str.93:
	.asciz	"/Annot"
	.size	.L.str.93, 7

	.type	.L.str.94,@object       # @.str.94
.L.str.94:
	.asciz	"pdfmark_annot"
	.size	.L.str.94, 14

	.type	.L.str.95,@object       # @.str.95
.L.str.95:
	.asciz	" 0"
	.size	.L.str.95, 3

	.type	.L.str.96,@object       # @.str.96
.L.str.96:
	.asciz	"[%lg %lg %lg %lg]%d"
	.size	.L.str.96, 20

	.type	.L.str.97,@object       # @.str.97
.L.str.97:
	.asciz	"/SrcPg"
	.size	.L.str.97, 7

	.type	.L.str.98,@object       # @.str.98
.L.str.98:
	.asciz	"/Color"
	.size	.L.str.98, 7

	.type	.L.str.99,@object       # @.str.99
.L.str.99:
	.asciz	"/C"
	.size	.L.str.99, 3

	.type	.L.str.100,@object      # @.str.100
.L.str.100:
	.asciz	"/Title"
	.size	.L.str.100, 7

	.type	.L.str.101,@object      # @.str.101
.L.str.101:
	.asciz	"/T"
	.size	.L.str.101, 3

	.type	.L.str.102,@object      # @.str.102
.L.str.102:
	.asciz	"/Action"
	.size	.L.str.102, 8

	.type	.L.str.103,@object      # @.str.103
.L.str.103:
	.asciz	"/A"
	.size	.L.str.103, 3

	.type	.L.str.104,@object      # @.str.104
.L.str.104:
	.asciz	"/File"
	.size	.L.str.104, 6

	.type	.L.str.105,@object      # @.str.105
.L.str.105:
	.asciz	"/Dest"
	.size	.L.str.105, 6

	.type	.L.str.106,@object      # @.str.106
.L.str.106:
	.asciz	"/URI"
	.size	.L.str.106, 5

	.type	.L.str.107,@object      # @.str.107
.L.str.107:
	.asciz	"/Page"
	.size	.L.str.107, 6

	.type	.L.str.108,@object      # @.str.108
.L.str.108:
	.asciz	"/View"
	.size	.L.str.108, 6

	.type	.L.str.109,@object      # @.str.109
.L.str.109:
	.asciz	"   **** Warning: Outline has invalid link that was discarded.\n"
	.size	.L.str.109, 63

	.type	.L.str.110,@object      # @.str.110
.L.str.110:
	.asciz	"/Subtype"
	.size	.L.str.110, 9

	.type	.L.str.111,@object      # @.str.111
.L.str.111:
	.asciz	"/Contents"
	.size	.L.str.111, 10

	.type	.L.str.112,@object      # @.str.112
.L.str.112:
	.asciz	"\\n"
	.size	.L.str.112, 3

	.type	.L.str.113,@object      # @.str.113
.L.str.113:
	.asciz	"\\012"
	.size	.L.str.113, 5

	.type	.L.str.114,@object      # @.str.114
.L.str.114:
	.asciz	"pdfmark_put_ao_pairs"
	.size	.L.str.114, 21

	.type	.L.str.115,@object      # @.str.115
.L.str.115:
	.asciz	"/Border"
	.size	.L.str.115, 8

	.type	.L.str.116,@object      # @.str.116
.L.str.116:
	.asciz	"/Count"
	.size	.L.str.116, 7

	.type	.L.str.117,@object      # @.str.117
.L.str.117:
	.asciz	"pdf_xmp_write_translated"
	.size	.L.str.117, 25

	.type	.L.str.118,@object      # @.str.118
.L.str.118:
	.asciz	"/Link"
	.size	.L.str.118, 6

	.type	.L.str.119,@object      # @.str.119
.L.str.119:
	.asciz	"/GoTo"
	.size	.L.str.119, 6

	.type	.L.str.120,@object      # @.str.120
.L.str.120:
	.asciz	"/GoToR"
	.size	.L.str.120, 7

	.type	.L.str.121,@object      # @.str.121
.L.str.121:
	.asciz	"/Launch"
	.size	.L.str.121, 8

	.type	.L.str.122,@object      # @.str.122
.L.str.122:
	.asciz	"/Article"
	.size	.L.str.122, 9

	.type	.L.str.123,@object      # @.str.123
.L.str.123:
	.asciz	"action dict"
	.size	.L.str.123, 12

	.type	.L.str.124,@object      # @.str.124
.L.str.124:
	.asciz	"/S"
	.size	.L.str.124, 3

	.type	.L.str.125,@object      # @.str.125
.L.str.125:
	.asciz	"/Thread"
	.size	.L.str.125, 8

	.type	.L.str.126,@object      # @.str.126
.L.str.126:
	.asciz	"/D"
	.size	.L.str.126, 3

	.type	.L.str.127,@object      # @.str.127
.L.str.127:
	.asciz	"<<"
	.size	.L.str.127, 3

	.type	.L.str.128,@object      # @.str.128
.L.str.128:
	.asciz	">>"
	.size	.L.str.128, 3

	.type	.L.str.129,@object      # @.str.129
.L.str.129:
	.asciz	"%d %d R"
	.size	.L.str.129, 8

	.type	.L.str.130,@object      # @.str.130
.L.str.130:
	.asciz	"[%ld 0 R /XYZ null null null]"
	.size	.L.str.130, 30

	.type	.L.str.131,@object      # @.str.131
.L.str.131:
	.asciz	"Destination page %d lies outside the valid page range.\n"
	.size	.L.str.131, 56

	.type	.L.str.132,@object      # @.str.132
.L.str.132:
	.asciz	"[/XYZ null null null]"
	.size	.L.str.132, 22

	.type	.L.str.133,@object      # @.str.133
.L.str.133:
	.asciz	"[null "
	.size	.L.str.133, 7

	.type	.L.str.134,@object      # @.str.134
.L.str.134:
	.asciz	"[%d "
	.size	.L.str.134, 5

	.type	.L.str.135,@object      # @.str.135
.L.str.135:
	.asciz	"[%ld 0 R "
	.size	.L.str.135, 10

	.type	.L.str.136,@object      # @.str.136
.L.str.136:
	.asciz	"/Next"
	.size	.L.str.136, 6

	.type	.L.str.137,@object      # @.str.137
.L.str.137:
	.asciz	"/Prev"
	.size	.L.str.137, 6

	.type	.L.str.138,@object      # @.str.138
.L.str.138:
	.asciz	"[%lg %lg %lg"
	.size	.L.str.138, 13

	.type	.L.str.139,@object      # @.str.139
.L.str.139:
	.asciz	"[%g %g %g"
	.size	.L.str.139, 10

	.type	.L.str.140,@object      # @.str.140
.L.str.140:
	.asciz	"%lg"
	.size	.L.str.140, 4

	.type	.L.str.141,@object      # @.str.141
.L.str.141:
	.asciz	"%g "
	.size	.L.str.141, 4

	.type	.L.str.142,@object      # @.str.142
.L.str.142:
	.asciz	"outline_levels array"
	.size	.L.str.142, 21

	.type	.L.str.143,@object      # @.str.143
.L.str.143:
	.asciz	"pdfmark_OUT"
	.size	.L.str.143, 12

	.type	.L.str.144,@object      # @.str.144
.L.str.144:
	.asciz	"pdfmark_ARTICLE(contents)"
	.size	.L.str.144, 26

	.type	st_pdf_article,@object  # @st_pdf_article
	.section	.rodata,"a",@progbits
	.align	8
st_pdf_article:
	.long	160                     # 0xa0
	.zero	4
	.quad	.L.str.146
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	pdf_article_reloc_ptrs
	.size	st_pdf_article, 64

	.type	.L.str.145,@object      # @.str.145
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.145:
	.asciz	"pdfmark_ARTICLE(article)"
	.size	.L.str.145, 25

	.type	.L.str.146,@object      # @.str.146
.L.str.146:
	.asciz	"pdf_article_t"
	.size	.L.str.146, 14

	.type	pdf_article_reloc_ptrs,@object # @pdf_article_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
pdf_article_reloc_ptrs:
	.short	2                       # 0x2
	.short	0                       # 0x0
	.zero	4
	.quad	0
	.quad	pdf_article_enum_ptrs
	.size	pdf_article_reloc_ptrs, 24

	.type	pdf_article_enum_ptrs,@object # @pdf_article_enum_ptrs
	.align	2
pdf_article_enum_ptrs:
	.zero	4
	.short	0                       # 0x0
	.short	8                       # 0x8
	.size	pdf_article_enum_ptrs, 8

	.type	.L.str.147,@object      # @.str.147
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.147:
	.asciz	"pdfmark_DEST(Dests)"
	.size	.L.str.147, 20

	.type	.L.str.148,@object      # @.str.148
.L.str.148:
	.asciz	"/FS"
	.size	.L.str.148, 4

	.type	.L.str.149,@object      # @.str.149
.L.str.149:
	.asciz	"/Name"
	.size	.L.str.149, 6

	.type	.L.str.150,@object      # @.str.150
.L.str.150:
	.asciz	"pdfmark_EMBED(EmbeddedFiles)"
	.size	.L.str.150, 29

	.type	.L.str.151,@object      # @.str.151
.L.str.151:
	.asciz	"/DataSource"
	.size	.L.str.151, 12

	.type	.L.str.152,@object      # @.str.152
.L.str.152:
	.asciz	"/Level1"
	.size	.L.str.152, 8

	.type	.L.str.153,@object      # @.str.153
.L.str.153:
	.asciz	" PS\n"
	.size	.L.str.153, 5

	.type	.L.str.154,@object      # @.str.154
.L.str.154:
	.asciz	"/.Global"
	.size	.L.str.154, 9

	.type	.L.str.155,@object      # @.str.155
.L.str.155:
	.asciz	"/XObject"
	.size	.L.str.155, 9

	.type	.L.str.156,@object      # @.str.156
.L.str.156:
	.asciz	"/PS"
	.size	.L.str.156, 4

	.type	.L.str.157,@object      # @.str.157
.L.str.157:
	.asciz	"%ld 0 R"
	.size	.L.str.157, 8

	.type	.L.str.158,@object      # @.str.158
.L.str.158:
	.asciz	"/R%ld Do\n"
	.size	.L.str.158, 10

	.type	.L.str.159,@object      # @.str.159
.L.str.159:
	.asciz	"./devices/vector/gdevpdfm.c"
	.size	.L.str.159, 28

	.type	.L.str.160,@object      # @.str.160
.L.str.160:
	.asciz	"bad PS passthrough: "
	.size	.L.str.160, 21

	.type	.L.str.161,@object      # @.str.161
.L.str.161:
	.asciz	"%c"
	.size	.L.str.161, 3

	.type	.L.str.162,@object      # @.str.162
.L.str.162:
	.asciz	"\n"
	.size	.L.str.162, 2

	.type	.L.str.163,@object      # @.str.163
.L.str.163:
	.asciz	"start_XObject"
	.size	.L.str.163, 14

	.type	.L.str.164,@object      # @.str.164
.L.str.164:
	.asciz	"/Label"
	.size	.L.str.164, 7

	.type	.L.str.165,@object      # @.str.165
.L.str.165:
	.asciz	"/Producer"
	.size	.L.str.165, 10

	.type	.L.str.166,@object      # @.str.166
.L.str.166:
	.asciz	"*Distiller*"
	.size	.L.str.166, 12

	.type	.L.str.167,@object      # @.str.167
	.section	.rodata,"a",@progbits
.L.str.167:
	.asciz	"*\000D\000i\000s\000t\000i\000l\000l\000e\000r*"
	.size	.L.str.167, 21

	.type	.L.str.168,@object      # @.str.168
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.168:
	.asciz	"Producer"
	.size	.L.str.168, 9

	.type	.L.str.169,@object      # @.str.169
.L.str.169:
	.asciz	"/OpenAction"
	.size	.L.str.169, 12

	.type	.L.str.170,@object      # @.str.170
.L.str.170:
	.asciz	"/BBox"
	.size	.L.str.170, 6

	.type	.L.str.171,@object      # @.str.171
.L.str.171:
	.asciz	"[%lg %lg %lg %lg]"
	.size	.L.str.171, 18

	.type	.L.str.172,@object      # @.str.172
.L.str.172:
	.asciz	"pdfmark_PS"
	.size	.L.str.172, 11

	.type	.L.str.173,@object      # @.str.173
.L.str.173:
	.asciz	"/Form"
	.size	.L.str.173, 6

	.type	.L.str.174,@object      # @.str.174
.L.str.174:
	.asciz	"/FormType"
	.size	.L.str.174, 10

	.type	.L.str.175,@object      # @.str.175
.L.str.175:
	.asciz	"1"
	.size	.L.str.175, 2

	.type	.L.str.176,@object      # @.str.176
.L.str.176:
	.asciz	"/Matrix"
	.size	.L.str.176, 8

	.type	.L.str.177,@object      # @.str.177
.L.str.177:
	.asciz	"/Resources"
	.size	.L.str.177, 11

	.type	.L.str.178,@object      # @.str.178
.L.str.178:
	.asciz	"pdfmark_EP"
	.size	.L.str.178, 11

	.type	.L.str.179,@object      # @.str.179
.L.str.179:
	.asciz	"q "
	.size	.L.str.179, 3

	.type	.L.str.180,@object      # @.str.180
.L.str.180:
	.asciz	"cm"
	.size	.L.str.180, 3

	.type	.L.str.181,@object      # @.str.181
.L.str.181:
	.asciz	"/R%ld Do Q\n"
	.size	.L.str.181, 12

	.type	.L.str.182,@object      # @.str.182
.L.str.182:
	.asciz	"/type"
	.size	.L.str.182, 6

	.type	.L.str.183,@object      # @.str.183
.L.str.183:
	.asciz	"/array"
	.size	.L.str.183, 7

	.type	.L.str.184,@object      # @.str.184
.L.str.184:
	.asciz	"/dict"
	.size	.L.str.184, 6

	.type	.L.str.185,@object      # @.str.185
.L.str.185:
	.asciz	"/stream"
	.size	.L.str.185, 8

	.type	setup_pdfmark_stream_compression.fnames,@object # @setup_pdfmark_stream_compression.fnames
	.section	.rodata,"a",@progbits
	.align	8
setup_pdfmark_stream_compression.fnames:
	.quad	.L.str.186
	.quad	.L.str.187
	.quad	.L.str.188
	.quad	.L.str.189
	.quad	.L.str.190
	.quad	.L.str.191
	.quad	.L.str.192
	.quad	.L.str.193
	.quad	.L.str.194
	.quad	.L.str.195
	.quad	.L.str.196
	.size	setup_pdfmark_stream_compression.fnames, 88

	.type	.L.str.186,@object      # @.str.186
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.186:
	.asciz	"/ASCII85Decode"
	.size	.L.str.186, 15

	.type	.L.str.187,@object      # @.str.187
.L.str.187:
	.asciz	"/ASCIIHexDecode"
	.size	.L.str.187, 16

	.type	.L.str.188,@object      # @.str.188
.L.str.188:
	.asciz	"/CCITTFaxDecode"
	.size	.L.str.188, 16

	.type	.L.str.189,@object      # @.str.189
.L.str.189:
	.asciz	"/DCTDecode"
	.size	.L.str.189, 11

	.type	.L.str.190,@object      # @.str.190
.L.str.190:
	.asciz	"/DecodeParms"
	.size	.L.str.190, 13

	.type	.L.str.191,@object      # @.str.191
.L.str.191:
	.asciz	"/Filter"
	.size	.L.str.191, 8

	.type	.L.str.192,@object      # @.str.192
.L.str.192:
	.asciz	"/FlateDecode"
	.size	.L.str.192, 13

	.type	.L.str.193,@object      # @.str.193
.L.str.193:
	.asciz	"/LZWDecode"
	.size	.L.str.193, 11

	.type	.L.str.194,@object      # @.str.194
.L.str.194:
	.asciz	"/RunLengthDecode"
	.size	.L.str.194, 17

	.type	.L.str.195,@object      # @.str.195
.L.str.195:
	.asciz	"/JBIG2Decode"
	.size	.L.str.195, 13

	.type	.L.str.196,@object      # @.str.196
.L.str.196:
	.asciz	"/JPXDecode"
	.size	.L.str.196, 11

	.type	.L.str.197,@object      # @.str.197
.L.str.197:
	.asciz	"setup_pdfmark_stream_compression"
	.size	.L.str.197, 33

	.type	.L.str.198,@object      # @.str.198
.L.str.198:
	.asciz	"setup_image_compression"
	.size	.L.str.198, 24


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
