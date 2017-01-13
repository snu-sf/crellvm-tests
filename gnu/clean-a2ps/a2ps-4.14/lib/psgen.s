	.text
	.file	"psgen.bc"
	.globl	ps_set_encoding
	.align	16, 0x90
	.type	ps_set_encoding,@function
ps_set_encoding:                        # @ps_set_encoding
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp0:
	.cfi_def_cfa_offset 16
.Ltmp1:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp2:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	set_encoding
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	1528(%rdi), %rdi
	movq	%rsi, 48(%rdi)
	movq	-8(%rbp), %rsi
	movq	1536(%rsi), %rdi
	movq	-16(%rbp), %rsi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	callq	encoding_get_key
	movabsq	$.L.str, %rsi
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	output
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	ps_set_encoding, .Lfunc_end0-ps_set_encoding
	.cfi_endproc

	.globl	ps_end_encoding
	.align	16, 0x90
	.type	ps_end_encoding,@function
ps_end_encoding:                        # @ps_end_encoding
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp3:
	.cfi_def_cfa_offset 16
.Ltmp4:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp5:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	1528(%rdi), %rdi
	cmpq	$0, 48(%rdi)
	je	.LBB1_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	1536(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	1528(%rax), %rax
	movq	48(%rax), %rax
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	encoding_get_key
	movabsq	$.L.str.1, %rsi
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	output
.LBB1_2:                                # %if.end
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rdi
	callq	set_encoding
	movq	-8(%rbp), %rsi
	movq	1528(%rsi), %rsi
	movq	$0, 48(%rsi)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	ps_end_encoding, .Lfunc_end1-ps_end_encoding
	.cfi_endproc

	.globl	ps_switch_encoding
	.align	16, 0x90
	.type	ps_switch_encoding,@function
ps_switch_encoding:                     # @ps_switch_encoding
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp6:
	.cfi_def_cfa_offset 16
.Ltmp7:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp8:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	368(%rsi), %rsi
	cmpq	-16(%rbp), %rsi
	je	.LBB2_9
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	1528(%rax), %rax
	cmpl	$0, 124(%rax)
	jne	.LBB2_6
# BB#2:                                 # %if.then.1
	movq	-8(%rbp), %rax
	movq	1528(%rax), %rax
	cmpl	$0, 140(%rax)
	jne	.LBB2_4
# BB#3:                                 # %if.then.4
	movq	-8(%rbp), %rax
	movq	1536(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	1528(%rax), %rax
	movl	136(%rax), %ecx
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movl	%ecx, %edi
	callq	face_eo_ps
	movabsq	$.L.str.2, %rsi
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	output
	jmp	.LBB2_5
.LBB2_4:                                # %if.else
	movabsq	$.L.str.3, %rsi
	movq	-8(%rbp), %rax
	movq	1536(%rax), %rdi
	movb	$0, %al
	callq	output
.LBB2_5:                                # %if.end
	jmp	.LBB2_6
.LBB2_6:                                # %if.end.7
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	ps_internal_switch_encoding
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 392(%rdi)
	movq	-8(%rbp), %rsi
	movq	1528(%rsi), %rsi
	cmpl	$0, 124(%rsi)
	jne	.LBB2_8
# BB#7:                                 # %if.then.11
	movl	$40, %esi
	movq	-8(%rbp), %rax
	movq	1536(%rax), %rdi
	callq	output_char
.LBB2_8:                                # %if.end.13
	jmp	.LBB2_9
.LBB2_9:                                # %if.end.14
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	ps_switch_encoding, .Lfunc_end2-ps_switch_encoding
	.cfi_endproc

	.align	16, 0x90
	.type	ps_internal_switch_encoding,@function
ps_internal_switch_encoding:            # @ps_internal_switch_encoding
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp9:
	.cfi_def_cfa_offset 16
.Ltmp10:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp11:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	368(%rsi), %rsi
	cmpq	-16(%rbp), %rsi
	je	.LBB3_5
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	1528(%rax), %rax
	cmpq	$0, 48(%rax)
	je	.LBB3_3
# BB#2:                                 # %if.then.1
	movq	-8(%rbp), %rdi
	callq	ps_end_encoding
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	ps_set_encoding
	jmp	.LBB3_4
.LBB3_3:                                # %if.else
	movq	-8(%rbp), %rdi
	callq	ps_end_encoding
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	set_encoding
.LBB3_4:                                # %if.end
	movq	-8(%rbp), %rax
	movq	1528(%rax), %rax
	movl	$0, 140(%rax)
.LBB3_5:                                # %if.end.3
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	ps_internal_switch_encoding, .Lfunc_end3-ps_internal_switch_encoding
	.cfi_endproc

	.globl	page_flush
	.align	16, 0x90
	.type	page_flush,@function
page_flush:                             # @page_flush
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp12:
	.cfi_def_cfa_offset 16
.Ltmp13:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp14:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	xorl	%esi, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	1536(%rdi), %rdi
	callq	output_to_void
	movq	-8(%rbp), %rdi
	cmpl	$0, 144(%rdi)
	je	.LBB4_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	page_end
.LBB4_2:                                # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	page_flush, .Lfunc_end4-page_flush
	.cfi_endproc

	.align	16, 0x90
	.type	page_end,@function
page_end:                               # @page_end
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp15:
	.cfi_def_cfa_offset 16
.Ltmp16:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp17:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movabsq	$.L.str.12, %rdx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	1632(%rax), %rax
	movq	40(%rax), %rax
	subq	$1, %rax
	movq	-8(%rbp), %rcx
	movq	1632(%rcx), %rcx
	movq	48(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	-8(%rbp), %rcx
	movq	1528(%rcx), %rcx
	movq	40(%rcx), %rcx
	movq	%rax, %rsi
	callq	expand_user_string
	movq	%rax, %rdi
	callq	xstrdup
	movabsq	$.L.str.13, %rsi
	movq	-8(%rbp), %rcx
	movq	1528(%rcx), %rcx
	movq	112(%rcx), %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rax
	movq	1536(%rax), %rdi
	movb	$0, %al
	callq	output
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	384(%rcx), %rsi
	callq	ps_push_encoding
	movq	-8(%rbp), %rcx
	cmpq	$0, 432(%rcx)
	je	.LBB5_3
# BB#1:                                 # %lor.lhs.false
	movq	-8(%rbp), %rax
	movq	432(%rax), %rax
	movzbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB5_3
# BB#2:                                 # %if.then
	movl	$40, %esi
	movq	-8(%rbp), %rax
	movq	1536(%rax), %rdi
	callq	output_char
	movabsq	$.L.str.14, %rsi
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	432(%rax), %rdx
	callq	output_marker
	movabsq	$.L.str.15, %rsi
	movq	-8(%rbp), %rax
	movq	1536(%rax), %rdi
	movb	$0, %al
	callq	output
.LBB5_3:                                # %if.end
	movq	-8(%rbp), %rax
	cmpq	$0, 472(%rax)
	je	.LBB5_5
# BB#4:                                 # %lor.lhs.false.12
	movq	-8(%rbp), %rax
	movq	472(%rax), %rax
	movzbl	(%rax), %ecx
	cmpl	$0, %ecx
	jne	.LBB5_9
.LBB5_5:                                # %lor.lhs.false.17
	movq	-8(%rbp), %rax
	cmpq	$0, 464(%rax)
	je	.LBB5_7
# BB#6:                                 # %lor.lhs.false.20
	movq	-8(%rbp), %rax
	movq	464(%rax), %rax
	movzbl	(%rax), %ecx
	cmpl	$0, %ecx
	jne	.LBB5_9
.LBB5_7:                                # %lor.lhs.false.25
	movq	-8(%rbp), %rax
	cmpq	$0, 480(%rax)
	je	.LBB5_22
# BB#8:                                 # %lor.lhs.false.28
	movq	-8(%rbp), %rax
	movq	480(%rax), %rax
	movzbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB5_22
.LBB5_9:                                # %if.then.33
	movq	-8(%rbp), %rax
	cmpq	$0, 472(%rax)
	je	.LBB5_12
# BB#10:                                # %lor.lhs.false.37
	movq	-8(%rbp), %rax
	movq	472(%rax), %rax
	movzbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB5_12
# BB#11:                                # %if.then.42
	movl	$40, %esi
	movq	-8(%rbp), %rax
	movq	1536(%rax), %rdi
	callq	output_char
	movabsq	$.L.str.16, %rsi
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	472(%rax), %rdx
	callq	output_marker
	movabsq	$.L.str.17, %rsi
	movq	-8(%rbp), %rax
	movq	1536(%rax), %rdi
	movb	$0, %al
	callq	output
	jmp	.LBB5_13
.LBB5_12:                               # %if.else
	movabsq	$.L.str.18, %rsi
	movq	-8(%rbp), %rax
	movq	1536(%rax), %rdi
	movb	$0, %al
	callq	output
.LBB5_13:                               # %if.end.47
	movq	-8(%rbp), %rax
	cmpq	$0, 480(%rax)
	je	.LBB5_16
# BB#14:                                # %lor.lhs.false.51
	movq	-8(%rbp), %rax
	movq	480(%rax), %rax
	movzbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB5_16
# BB#15:                                # %if.then.56
	movl	$40, %esi
	movq	-8(%rbp), %rax
	movq	1536(%rax), %rdi
	callq	output_char
	movabsq	$.L.str.19, %rsi
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	480(%rax), %rdx
	callq	output_marker
	movabsq	$.L.str.17, %rsi
	movq	-8(%rbp), %rax
	movq	1536(%rax), %rdi
	movb	$0, %al
	callq	output
	jmp	.LBB5_17
.LBB5_16:                               # %if.else.60
	movabsq	$.L.str.18, %rsi
	movq	-8(%rbp), %rax
	movq	1536(%rax), %rdi
	movb	$0, %al
	callq	output
.LBB5_17:                               # %if.end.62
	movq	-8(%rbp), %rax
	cmpq	$0, 464(%rax)
	je	.LBB5_20
# BB#18:                                # %lor.lhs.false.66
	movq	-8(%rbp), %rax
	movq	464(%rax), %rax
	movzbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB5_20
# BB#19:                                # %if.then.71
	movl	$40, %esi
	movq	-8(%rbp), %rax
	movq	1536(%rax), %rdi
	callq	output_char
	movabsq	$.L.str.20, %rsi
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	464(%rax), %rdx
	callq	output_marker
	movabsq	$.L.str.17, %rsi
	movq	-8(%rbp), %rax
	movq	1536(%rax), %rdi
	movb	$0, %al
	callq	output
	jmp	.LBB5_21
.LBB5_20:                               # %if.else.75
	movabsq	$.L.str.18, %rsi
	movq	-8(%rbp), %rax
	movq	1536(%rax), %rdi
	movb	$0, %al
	callq	output
.LBB5_21:                               # %if.end.77
	movabsq	$.L.str.21, %rsi
	movq	-8(%rbp), %rax
	movq	1536(%rax), %rdi
	movb	$0, %al
	callq	output
.LBB5_22:                               # %if.end.79
	movq	-8(%rbp), %rdi
	callq	ps_end_encoding
	movabsq	$.L.str.22, %rsi
	movq	-8(%rbp), %rdi
	movq	1536(%rdi), %rdi
	movb	$0, %al
	callq	output
	movabsq	$.L.str.23, %rsi
	movq	-8(%rbp), %rdi
	movq	1536(%rdi), %rdi
	movb	$0, %al
	callq	output
	movq	-8(%rbp), %rsi
	movl	$0, 144(%rsi)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	page_end, .Lfunc_end5-page_end
	.cfi_endproc

	.globl	require_fresh_page
	.align	16, 0x90
	.type	require_fresh_page,@function
require_fresh_page:                     # @require_fresh_page
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp18:
	.cfi_def_cfa_offset 16
.Ltmp19:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp20:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpl	$0, 144(%rdi)
	je	.LBB6_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	page_flush
.LBB6_2:                                # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	require_fresh_page, .Lfunc_end6-require_fresh_page
	.cfi_endproc

	.globl	ps_print_char
	.align	16, 0x90
	.type	ps_print_char,@function
ps_print_char:                          # @ps_print_char
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp21:
	.cfi_def_cfa_offset 16
.Ltmp22:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp23:
	.cfi_def_cfa_register %rbp
	subq	$336, %rsp              # imm = 0x150
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	1528(%rdi), %rdi
	cmpl	$0, 132(%rdi)
	je	.LBB7_4
# BB#1:                                 # %land.lhs.true
	cmpl	$12, -12(%rbp)
	je	.LBB7_4
# BB#2:                                 # %land.lhs.true.1
	cmpl	$10, -12(%rbp)
	je	.LBB7_4
# BB#3:                                 # %if.then
	jmp	.LBB7_65
.LBB7_4:                                # %if.end
	movq	-8(%rbp), %rax
	movq	1528(%rax), %rax
	movl	$0, 132(%rax)
	movq	-8(%rbp), %rax
	movq	1528(%rax), %rax
	cmpl	$0, 124(%rax)
	je	.LBB7_23
# BB#5:                                 # %if.then.7
	movq	-8(%rbp), %rax
	movq	1528(%rax), %rax
	cmpl	$0, 120(%rax)
	je	.LBB7_13
# BB#6:                                 # %if.then.10
	movq	-8(%rbp), %rdi
	callq	virtual_begin
	movq	-8(%rbp), %rdi
	movq	1528(%rdi), %rdi
	movl	$0, 120(%rdi)
	movl	-16(%rbp), %eax
	movq	-8(%rbp), %rdi
	movq	1528(%rdi), %rdi
	movl	%eax, 136(%rdi)
	movq	-8(%rbp), %rdi
	movq	1528(%rdi), %rdi
	movl	$0, 140(%rdi)
	movq	-8(%rbp), %rdi
	cmpl	$0, 300(%rdi)
	je	.LBB7_11
# BB#7:                                 # %if.then.16
	movq	-8(%rbp), %rax
	movq	1632(%rax), %rax
	movq	40(%rax), %rax
	subq	$1, %rax
	movq	-8(%rbp), %rcx
	movq	1632(%rcx), %rcx
	movq	48(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movl	136(%rax), %eax
	movq	-8(%rbp), %rcx
	cltd
	idivl	300(%rcx)
	cmpl	$0, %edx
	jne	.LBB7_9
# BB#8:                                 # %if.then.20
	movabsq	$.L.str.4, %rsi
	movq	-8(%rbp), %rax
	movq	1536(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	1632(%rax), %rax
	movq	40(%rax), %rax
	subq	$1, %rax
	movq	-8(%rbp), %rcx
	movq	1632(%rcx), %rcx
	movq	48(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movl	136(%rax), %edx
	movb	$0, %al
	callq	output
	jmp	.LBB7_10
.LBB7_9:                                # %if.else
	movabsq	$.L.str.5, %rsi
	movq	-8(%rbp), %rax
	movq	1536(%rax), %rdi
	movb	$0, %al
	callq	output
.LBB7_10:                               # %if.end.29
	jmp	.LBB7_12
.LBB7_11:                               # %if.else.30
	movl	$40, %esi
	movq	-8(%rbp), %rax
	movq	1536(%rax), %rdi
	callq	output_char
.LBB7_12:                               # %if.end.32
	jmp	.LBB7_22
.LBB7_13:                               # %if.else.33
	movq	-8(%rbp), %rax
	cmpl	$0, 300(%rax)
	je	.LBB7_18
# BB#14:                                # %if.then.36
	movq	-8(%rbp), %rax
	movq	1632(%rax), %rax
	movq	40(%rax), %rax
	subq	$1, %rax
	movq	-8(%rbp), %rcx
	movq	1632(%rcx), %rcx
	movq	48(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movl	136(%rax), %eax
	movq	-8(%rbp), %rcx
	cltd
	idivl	300(%rcx)
	cmpl	$0, %edx
	jne	.LBB7_16
# BB#15:                                # %if.then.47
	movabsq	$.L.str.4, %rsi
	movq	-8(%rbp), %rax
	movq	1536(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	1632(%rax), %rax
	movq	40(%rax), %rax
	subq	$1, %rax
	movq	-8(%rbp), %rcx
	movq	1632(%rcx), %rcx
	movq	48(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movl	136(%rax), %edx
	movb	$0, %al
	callq	output
	jmp	.LBB7_17
.LBB7_16:                               # %if.else.56
	movabsq	$.L.str.5, %rsi
	movq	-8(%rbp), %rax
	movq	1536(%rax), %rdi
	movb	$0, %al
	callq	output
.LBB7_17:                               # %if.end.58
	jmp	.LBB7_21
.LBB7_18:                               # %if.else.59
	movl	$40, %esi
	movq	-8(%rbp), %rax
	movq	1536(%rax), %rdi
	callq	output_char
	xorl	%esi, %esi
	movb	%sil, %cl
	movq	-8(%rbp), %rax
	movq	1528(%rax), %rax
	cmpl	$0, 140(%rax)
	movb	%cl, -277(%rbp)         # 1-byte Spill
	je	.LBB7_20
# BB#19:                                # %land.rhs
	movq	-8(%rbp), %rax
	movq	1528(%rax), %rax
	movl	136(%rax), %ecx
	cmpl	-16(%rbp), %ecx
	sete	%dl
	movb	%dl, -277(%rbp)         # 1-byte Spill
.LBB7_20:                               # %land.end
	movb	-277(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movq	-8(%rbp), %rdx
	movq	1528(%rdx), %rdx
	movl	%ecx, 140(%rdx)
	movl	-16(%rbp), %ecx
	movq	-8(%rbp), %rdx
	movq	1528(%rdx), %rdx
	movl	%ecx, 136(%rdx)
.LBB7_21:                               # %if.end.71
	jmp	.LBB7_22
.LBB7_22:                               # %if.end.72
	movq	-8(%rbp), %rax
	movq	1528(%rax), %rax
	movl	$0, 124(%rax)
.LBB7_23:                               # %if.end.75
	movl	-12(%rbp), %eax
	movl	%eax, %ecx
	subl	$9, %ecx
	movl	%eax, -284(%rbp)        # 4-byte Spill
	movl	%ecx, -288(%rbp)        # 4-byte Spill
	je	.LBB7_34
	jmp	.LBB7_66
.LBB7_66:                               # %if.end.75
	movl	-284(%rbp), %eax        # 4-byte Reload
	subl	$10, %eax
	movl	%eax, -292(%rbp)        # 4-byte Spill
	je	.LBB7_31
	jmp	.LBB7_67
.LBB7_67:                               # %if.end.75
	movl	-284(%rbp), %eax        # 4-byte Reload
	subl	$12, %eax
	movl	%eax, -296(%rbp)        # 4-byte Spill
	jne	.LBB7_54
	jmp	.LBB7_24
.LBB7_24:                               # %sw.bb
	movq	-8(%rbp), %rax
	cmpl	$0, 308(%rax)
	jne	.LBB7_26
# BB#25:                                # %if.then.77
	jmp	.LBB7_53
.LBB7_26:                               # %if.end.78
	movq	-8(%rbp), %rax
	movq	1528(%rax), %rax
	cmpl	$0, 124(%rax)
	jne	.LBB7_28
# BB#27:                                # %if.then.82
	movq	-8(%rbp), %rdi
	callq	end_of_line
	movq	-8(%rbp), %rdi
	movq	1528(%rdi), %rdi
	movl	$1, 124(%rdi)
.LBB7_28:                               # %if.end.85
	movq	-8(%rbp), %rax
	movq	1528(%rax), %rax
	cmpl	$0, 120(%rax)
	je	.LBB7_30
# BB#29:                                # %if.then.89
	movq	-8(%rbp), %rdi
	callq	virtual_begin
.LBB7_30:                               # %if.end.90
	movq	-8(%rbp), %rdi
	callq	virtual_end
	movq	-8(%rbp), %rdi
	movq	1528(%rdi), %rdi
	movl	$1, 120(%rdi)
	jmp	.LBB7_65
.LBB7_31:                               # %sw.bb.93
	movq	-8(%rbp), %rax
	movq	1632(%rax), %rax
	movq	40(%rax), %rax
	subq	$1, %rax
	movq	-8(%rbp), %rcx
	movq	1632(%rcx), %rcx
	movq	48(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movl	136(%rax), %edx
	addl	$1, %edx
	movl	%edx, 136(%rax)
	movq	-8(%rbp), %rax
	movq	1528(%rax), %rax
	movl	$1, 124(%rax)
	movq	-8(%rbp), %rdi
	callq	end_of_line
	movq	-8(%rbp), %rax
	movq	1528(%rax), %rax
	movl	152(%rax), %edx
	movq	-8(%rbp), %rax
	movq	1528(%rax), %rax
	cmpl	16(%rax), %edx
	jl	.LBB7_33
# BB#32:                                # %if.then.106
	movq	-8(%rbp), %rdi
	callq	virtual_end
	movq	-8(%rbp), %rdi
	movq	1528(%rdi), %rdi
	movl	$1, 120(%rdi)
.LBB7_33:                               # %if.end.109
	jmp	.LBB7_65
.LBB7_34:                               # %sw.bb.110
	movq	-8(%rbp), %rax
	cmpl	$0, 308(%rax)
	jne	.LBB7_36
# BB#35:                                # %if.then.113
	jmp	.LBB7_53
.LBB7_36:                               # %if.end.114
	movq	-8(%rbp), %rax
	movq	1528(%rax), %rax
	movl	136(%rax), %ecx
	cmpl	-16(%rbp), %ecx
	je	.LBB7_41
# BB#37:                                # %if.then.118
	movq	-8(%rbp), %rax
	movq	1528(%rax), %rax
	cmpl	$0, 140(%rax)
	jne	.LBB7_39
# BB#38:                                # %if.then.122
	movq	-8(%rbp), %rax
	movq	1536(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	1528(%rax), %rax
	movl	136(%rax), %ecx
	movq	%rdi, -304(%rbp)        # 8-byte Spill
	movl	%ecx, %edi
	callq	face_eo_ps
	movabsq	$.L.str.6, %rsi
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	output
	jmp	.LBB7_40
.LBB7_39:                               # %if.else.126
	movabsq	$.L.str.7, %rsi
	movq	-8(%rbp), %rax
	movq	1536(%rax), %rdi
	movb	$0, %al
	callq	output
.LBB7_40:                               # %if.end.128
	movl	-16(%rbp), %eax
	movq	-8(%rbp), %rcx
	movq	1528(%rcx), %rcx
	movl	%eax, 136(%rcx)
	movq	-8(%rbp), %rcx
	movq	1528(%rcx), %rcx
	movl	$0, 140(%rcx)
.LBB7_41:                               # %if.end.133
	movl	$600, %eax              # imm = 0x258
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movq	1528(%rdx), %rdx
	movq	160(%rdx), %rax
	xorl	%esi, %esi
	movl	%esi, %edx
	divq	%rcx
	movq	-8(%rbp), %rcx
	movq	1528(%rcx), %rcx
	movl	156(%rcx), %esi
	movl	%esi, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB7_43
# BB#42:                                # %cond.true
	movl	$600, %eax              # imm = 0x258
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movq	1528(%rdx), %rdx
	movq	160(%rdx), %rax
	xorl	%esi, %esi
	movl	%esi, %edx
	divq	%rcx
	movq	%rax, -312(%rbp)        # 8-byte Spill
	jmp	.LBB7_44
.LBB7_43:                               # %cond.false
	movq	-8(%rbp), %rax
	movq	1528(%rax), %rax
	movl	156(%rax), %ecx
	movl	%ecx, %eax
	movq	%rax, -312(%rbp)        # 8-byte Spill
.LBB7_44:                               # %cond.end
	movq	-312(%rbp), %rax        # 8-byte Reload
	movq	-8(%rbp), %rcx
	movslq	352(%rcx), %rcx
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	divq	%rcx
	addq	$1, %rax
	movq	-8(%rbp), %rcx
	movslq	352(%rcx), %rcx
	imulq	%rcx, %rax
	movl	%eax, %esi
	movq	-8(%rbp), %rax
	movq	1528(%rax), %rax
	movl	%esi, 156(%rax)
	movq	-8(%rbp), %rax
	movq	1528(%rax), %rax
	imull	$600, 156(%rax), %esi   # imm = 0x258
	movl	%esi, %esi
	movl	%esi, %eax
	movq	-8(%rbp), %rcx
	movq	1528(%rcx), %rcx
	movq	%rax, 160(%rcx)
	movq	-8(%rbp), %rax
	movq	1528(%rax), %rax
	movq	160(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	1528(%rcx), %rcx
	cmpq	8(%rcx), %rax
	jbe	.LBB7_49
# BB#45:                                # %if.then.162
	movq	-8(%rbp), %rax
	testb	$1, 296(%rax)
	je	.LBB7_47
# BB#46:                                # %if.then.164
	movq	-8(%rbp), %rdi
	movl	-16(%rbp), %esi
	callq	fold_line
	jmp	.LBB7_48
.LBB7_47:                               # %if.else.165
	movq	-8(%rbp), %rax
	movq	1528(%rax), %rax
	movl	$1, 132(%rax)
	jmp	.LBB7_65
.LBB7_48:                               # %if.end.168
	jmp	.LBB7_49
.LBB7_49:                               # %if.end.169
	movq	-8(%rbp), %rax
	movq	1528(%rax), %rax
	cmpl	$0, 140(%rax)
	jne	.LBB7_51
# BB#50:                                # %if.then.173
	movq	-8(%rbp), %rax
	movq	1536(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	1528(%rax), %rax
	movl	136(%rax), %ecx
	movq	%rdi, -320(%rbp)        # 8-byte Spill
	movl	%ecx, %edi
	callq	face_eo_ps
	movabsq	$.L.str.8, %rsi
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	output
	movq	-8(%rbp), %rdx
	movq	1528(%rdx), %rdx
	movl	$1, 140(%rdx)
	jmp	.LBB7_52
.LBB7_51:                               # %if.else.180
	movabsq	$.L.str.9, %rsi
	movq	-8(%rbp), %rax
	movq	1536(%rax), %rdi
	movb	$0, %al
	callq	output
.LBB7_52:                               # %if.end.182
	movabsq	$.L.str.10, %rsi
	movq	-8(%rbp), %rax
	movq	1536(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	1528(%rax), %rax
	movl	156(%rax), %edx
	movb	$0, %al
	callq	output
	jmp	.LBB7_65
.LBB7_53:                               # %print
	jmp	.LBB7_54
.LBB7_54:                               # %sw.default
	movb	$0, -272(%rbp)
	movq	-8(%rbp), %rax
	movq	1528(%rax), %rax
	movl	136(%rax), %ecx
	cmpl	-16(%rbp), %ecx
	je	.LBB7_59
# BB#55:                                # %if.then.190
	movq	-8(%rbp), %rax
	movq	1528(%rax), %rax
	cmpl	$0, 140(%rax)
	jne	.LBB7_57
# BB#56:                                # %if.then.194
	movq	-8(%rbp), %rax
	movq	1536(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	1528(%rax), %rax
	movl	136(%rax), %ecx
	movq	%rdi, -328(%rbp)        # 8-byte Spill
	movl	%ecx, %edi
	callq	face_eo_ps
	movabsq	$.L.str.6, %rsi
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	output
	jmp	.LBB7_58
.LBB7_57:                               # %if.else.199
	movabsq	$.L.str.7, %rsi
	movq	-8(%rbp), %rax
	movq	1536(%rax), %rdi
	movb	$0, %al
	callq	output
.LBB7_58:                               # %if.end.201
	movl	-16(%rbp), %eax
	movq	-8(%rbp), %rcx
	movq	1528(%rcx), %rcx
	movl	%eax, 136(%rcx)
	movq	-8(%rbp), %rcx
	movq	1528(%rcx), %rcx
	movl	$0, 140(%rcx)
.LBB7_59:                               # %if.end.206
	leaq	-272(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %eax
	movb	%al, %cl
	movzbl	%cl, %esi
	callq	ps_escape_char
	movl	%eax, -276(%rbp)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %eax
	movb	%al, %cl
	movzbl	%cl, %esi
	callq	char_WX
	movl	%eax, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rdi
	movq	1528(%rdi), %rdi
	addq	160(%rdi), %rdx
	movq	%rdx, 160(%rdi)
	movl	-276(%rbp), %eax
	movq	-8(%rbp), %rdx
	movq	1528(%rdx), %rdx
	addl	156(%rdx), %eax
	movl	%eax, 156(%rdx)
	movq	-8(%rbp), %rdx
	movq	1528(%rdx), %rdx
	movq	160(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	1528(%rdi), %rdi
	cmpq	8(%rdi), %rdx
	jbe	.LBB7_64
# BB#60:                                # %if.then.225
	movq	-8(%rbp), %rax
	testb	$1, 296(%rax)
	je	.LBB7_62
# BB#61:                                # %if.then.228
	movq	-8(%rbp), %rdi
	movl	-16(%rbp), %esi
	callq	fold_line
	movl	-276(%rbp), %esi
	movq	-8(%rbp), %rdi
	movq	1528(%rdi), %rdi
	movl	%esi, 156(%rdi)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movb	%sil, %al
	movzbl	%al, %esi
	callq	char_WX
	movl	%eax, %eax
	movl	%eax, %edi
	movq	-8(%rbp), %rcx
	movq	1528(%rcx), %rcx
	movq	%rdi, 160(%rcx)
	jmp	.LBB7_63
.LBB7_62:                               # %if.else.236
	movq	-8(%rbp), %rax
	movq	1528(%rax), %rax
	movl	$1, 132(%rax)
	jmp	.LBB7_65
.LBB7_63:                               # %if.end.239
	jmp	.LBB7_64
.LBB7_64:                               # %if.end.240
	movabsq	$.L.str.11, %rsi
	leaq	-272(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	1536(%rax), %rdi
	movb	$0, %al
	callq	output
	movq	-8(%rbp), %rdx
	movq	1528(%rdx), %rdx
	movl	148(%rdx), %ecx
	addl	$1, %ecx
	movl	%ecx, 148(%rdx)
.LBB7_65:                               # %sw.epilog
	addq	$336, %rsp              # imm = 0x150
	popq	%rbp
	retq
.Lfunc_end7:
	.size	ps_print_char, .Lfunc_end7-ps_print_char
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI8_0:
	.quad	4603579539098121011     # double 0.59999999999999998
.LCPI8_1:
	.quad	4604480259023595110     # double 0.69999999999999996
	.text
	.align	16, 0x90
	.type	virtual_begin,@function
virtual_begin:                          # @virtual_begin
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp24:
	.cfi_def_cfa_offset 16
.Ltmp25:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp26:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	112(%rdi), %eax
	addl	$1, %eax
	movl	%eax, 112(%rdi)
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movl	112(%rcx), %esi
	callq	print_page
	cmpl	$0, %eax
	je	.LBB8_2
# BB#1:                                 # %if.then
	xorl	%esi, %esi
	movq	-8(%rbp), %rax
	movq	1536(%rax), %rdi
	callq	output_to_void
	movq	-8(%rbp), %rax
	movl	144(%rax), %esi
	addl	$1, %esi
	movl	%esi, 144(%rax)
	jmp	.LBB8_3
.LBB8_2:                                # %if.else
	movl	$1, %esi
	movq	-8(%rbp), %rax
	movq	1536(%rax), %rdi
	callq	output_to_void
.LBB8_3:                                # %if.end
	movq	-8(%rbp), %rax
	cmpl	$1, 144(%rax)
	jne	.LBB8_5
# BB#4:                                 # %if.then.5
	movq	-8(%rbp), %rdi
	callq	page_begin
.LBB8_5:                                # %if.end.6
	movq	-8(%rbp), %rax
	cmpq	$0, 368(%rax)
	jne	.LBB8_7
# BB#6:                                 # %if.then.8
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	392(%rax), %rsi
	callq	ps_set_encoding
.LBB8_7:                                # %if.end.9
	movq	-8(%rbp), %rdi
	callq	file_job_synchronize_pages
	movq	-8(%rbp), %rdi
	callq	file_job_synchronize_sheets
	movabsq	$.L.str.24, %rsi
	movq	-8(%rbp), %rdi
	movq	1536(%rdi), %rdi
	movq	-8(%rbp), %rax
	movl	144(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, %edx
	movb	$0, %al
	callq	output
	movabsq	$.L.str.25, %rsi
	movsd	.LCPI8_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI8_1, %xmm1         # xmm1 = mem[0],zero
	movq	-8(%rbp), %rdi
	movq	1536(%rdi), %rdi
	movq	-8(%rbp), %r8
	cvtss2sd	364(%r8), %xmm2
	mulsd	%xmm2, %xmm1
	mulsd	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	movb	$1, %al
	callq	output
	movq	-8(%rbp), %rsi
	movq	1536(%rsi), %rdi
	movq	-8(%rbp), %rsi
	cmpq	$0, 440(%rsi)
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	je	.LBB8_9
# BB#8:                                 # %lor.lhs.false
	movb	$1, %al
	movq	-8(%rbp), %rcx
	movq	440(%rcx), %rcx
	movzbl	(%rcx), %edx
	cmpl	$0, %edx
	movb	%al, -17(%rbp)          # 1-byte Spill
	jne	.LBB8_14
.LBB8_9:                                # %lor.lhs.false.21
	movq	-8(%rbp), %rax
	cmpq	$0, 448(%rax)
	je	.LBB8_11
# BB#10:                                # %lor.lhs.false.24
	movb	$1, %al
	movq	-8(%rbp), %rcx
	movq	448(%rcx), %rcx
	movzbl	(%rcx), %edx
	cmpl	$0, %edx
	movb	%al, -17(%rbp)          # 1-byte Spill
	jne	.LBB8_14
.LBB8_11:                               # %lor.rhs
	movb	$1, %al
	movq	-8(%rbp), %rcx
	cmpq	$0, 456(%rcx)
	movb	%al, -18(%rbp)          # 1-byte Spill
	je	.LBB8_13
# BB#12:                                # %lor.rhs.31
	movq	-8(%rbp), %rax
	movq	456(%rax), %rax
	movzbl	(%rax), %ecx
	cmpl	$0, %ecx
	sete	%dl
	movb	%dl, -18(%rbp)          # 1-byte Spill
.LBB8_13:                               # %lor.end
	movb	-18(%rbp), %al          # 1-byte Reload
	xorb	$-1, %al
	movb	%al, -17(%rbp)          # 1-byte Spill
.LBB8_14:                               # %lor.end.36
	movb	-17(%rbp), %al          # 1-byte Reload
	movabsq	$.L.str.26, %rsi
	movabsq	$.L.str.28, %rcx
	movabsq	$.L.str.27, %rdx
	testb	$1, %al
	cmovneq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rcx, %rdx
	movb	$0, %al
	callq	output
	movabsq	$.L.str.29, %rsi
	movq	-8(%rbp), %rcx
	movq	1536(%rcx), %rdi
	movb	$0, %al
	callq	output
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	virtual_begin, .Lfunc_end8-virtual_begin
	.cfi_endproc

	.align	16, 0x90
	.type	end_of_line,@function
end_of_line:                            # @end_of_line
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp27:
	.cfi_def_cfa_offset 16
.Ltmp28:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp29:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	1528(%rdi), %rdi
	cmpl	$0, 140(%rdi)
	jne	.LBB9_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	1536(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	1528(%rax), %rax
	movl	136(%rax), %ecx
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movl	%ecx, %edi
	callq	face_eo_ps
	movabsq	$.L.str.42, %rsi
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	output
	movq	-8(%rbp), %rdx
	movq	1528(%rdx), %rdx
	movl	$1, 140(%rdx)
	jmp	.LBB9_3
.LBB9_2:                                # %if.else
	movabsq	$.L.str.43, %rsi
	movq	-8(%rbp), %rax
	movq	1536(%rax), %rdi
	movb	$0, %al
	callq	output
.LBB9_3:                                # %if.end
	movq	-8(%rbp), %rax
	movq	1528(%rax), %rax
	movl	152(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 152(%rax)
	movq	-8(%rbp), %rax
	movq	1528(%rax), %rax
	movl	$0, 156(%rax)
	movq	-8(%rbp), %rax
	movq	1528(%rax), %rax
	movq	$0, 160(%rax)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	end_of_line, .Lfunc_end9-end_of_line
	.cfi_endproc

	.align	16, 0x90
	.type	virtual_end,@function
virtual_end:                            # @virtual_end
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp30:
	.cfi_def_cfa_offset 16
.Ltmp31:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp32:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpq	$0, 440(%rdi)
	je	.LBB10_2
# BB#1:                                 # %lor.lhs.false
	movq	-8(%rbp), %rax
	movq	440(%rax), %rax
	movzbl	(%rax), %ecx
	cmpl	$0, %ecx
	jne	.LBB10_6
.LBB10_2:                               # %lor.lhs.false.4
	movq	-8(%rbp), %rax
	cmpq	$0, 448(%rax)
	je	.LBB10_4
# BB#3:                                 # %lor.lhs.false.7
	movq	-8(%rbp), %rax
	movq	448(%rax), %rax
	movzbl	(%rax), %ecx
	cmpl	$0, %ecx
	jne	.LBB10_6
.LBB10_4:                               # %lor.lhs.false.12
	movq	-8(%rbp), %rax
	cmpq	$0, 456(%rax)
	je	.LBB10_19
# BB#5:                                 # %lor.lhs.false.15
	movq	-8(%rbp), %rax
	movq	456(%rax), %rax
	movzbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB10_19
.LBB10_6:                               # %if.then
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	384(%rax), %rsi
	callq	ps_push_encoding
	movq	-8(%rbp), %rax
	cmpq	$0, 440(%rax)
	je	.LBB10_9
# BB#7:                                 # %lor.lhs.false.23
	movq	-8(%rbp), %rax
	movq	440(%rax), %rax
	movzbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB10_9
# BB#8:                                 # %if.then.28
	movl	$40, %esi
	movq	-8(%rbp), %rax
	movq	1536(%rax), %rdi
	callq	output_char
	movabsq	$.L.str.44, %rsi
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	440(%rax), %rdx
	callq	output_marker
	movabsq	$.L.str.17, %rsi
	movq	-8(%rbp), %rax
	movq	1536(%rax), %rdi
	movb	$0, %al
	callq	output
	jmp	.LBB10_10
.LBB10_9:                               # %if.else
	movabsq	$.L.str.18, %rsi
	movq	-8(%rbp), %rax
	movq	1536(%rax), %rdi
	movb	$0, %al
	callq	output
.LBB10_10:                              # %if.end
	movq	-8(%rbp), %rax
	cmpq	$0, 456(%rax)
	je	.LBB10_13
# BB#11:                                # %lor.lhs.false.35
	movq	-8(%rbp), %rax
	movq	456(%rax), %rax
	movzbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB10_13
# BB#12:                                # %if.then.40
	movl	$40, %esi
	movq	-8(%rbp), %rax
	movq	1536(%rax), %rdi
	callq	output_char
	movabsq	$.L.str.45, %rsi
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	456(%rax), %rdx
	callq	output_marker
	movabsq	$.L.str.17, %rsi
	movq	-8(%rbp), %rax
	movq	1536(%rax), %rdi
	movb	$0, %al
	callq	output
	jmp	.LBB10_14
.LBB10_13:                              # %if.else.44
	movabsq	$.L.str.18, %rsi
	movq	-8(%rbp), %rax
	movq	1536(%rax), %rdi
	movb	$0, %al
	callq	output
.LBB10_14:                              # %if.end.46
	movq	-8(%rbp), %rax
	cmpq	$0, 448(%rax)
	je	.LBB10_17
# BB#15:                                # %lor.lhs.false.50
	movq	-8(%rbp), %rax
	movq	448(%rax), %rax
	movzbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB10_17
# BB#16:                                # %if.then.55
	movl	$40, %esi
	movq	-8(%rbp), %rax
	movq	1536(%rax), %rdi
	callq	output_char
	movabsq	$.L.str.46, %rsi
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	448(%rax), %rdx
	callq	output_marker
	movabsq	$.L.str.17, %rsi
	movq	-8(%rbp), %rax
	movq	1536(%rax), %rdi
	movb	$0, %al
	callq	output
	jmp	.LBB10_18
.LBB10_17:                              # %if.else.59
	movabsq	$.L.str.18, %rsi
	movq	-8(%rbp), %rax
	movq	1536(%rax), %rdi
	movb	$0, %al
	callq	output
.LBB10_18:                              # %if.end.61
	movabsq	$.L.str.47, %rsi
	movq	-8(%rbp), %rax
	movq	1536(%rax), %rdi
	movb	$0, %al
	callq	output
	movq	-8(%rbp), %rdi
	callq	ps_pop_encoding
.LBB10_19:                              # %if.end.63
	movq	-8(%rbp), %rax
	cmpl	$0, 320(%rax)
	je	.LBB10_21
# BB#20:                                # %if.then.64
	movabsq	$.L.str.48, %rsi
	movq	-8(%rbp), %rax
	movq	1536(%rax), %rdi
	movb	$0, %al
	callq	output
.LBB10_21:                              # %if.end.66
	movq	-8(%rbp), %rax
	movl	144(%rax), %ecx
	movq	-8(%rbp), %rax
	movl	132(%rax), %edx
	movq	-8(%rbp), %rax
	imull	136(%rax), %edx
	cmpl	%edx, %ecx
	jne	.LBB10_23
# BB#22:                                # %if.then.69
	movq	-8(%rbp), %rdi
	callq	page_end
.LBB10_23:                              # %if.end.70
	movq	-8(%rbp), %rax
	movq	1528(%rax), %rax
	movl	$0, 152(%rax)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	virtual_end, .Lfunc_end10-virtual_end
	.cfi_endproc

	.align	16, 0x90
	.type	fold_line,@function
fold_line:                              # @fold_line
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp33:
	.cfi_def_cfa_offset 16
.Ltmp34:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp35:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movl	116(%rdi), %esi
	addl	$1, %esi
	movl	%esi, 116(%rdi)
	movq	-8(%rbp), %rdi
	callq	end_of_line
	movq	-8(%rbp), %rdi
	movq	1528(%rdi), %rdi
	movl	152(%rdi), %esi
	movq	-8(%rbp), %rdi
	movq	1528(%rdi), %rdi
	cmpl	16(%rdi), %esi
	jl	.LBB11_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	virtual_end
	movq	-8(%rbp), %rdi
	callq	virtual_begin
	movq	-8(%rbp), %rdi
	movq	1528(%rdi), %rdi
	movl	$0, 140(%rdi)
.LBB11_2:                               # %if.end
	movq	-8(%rbp), %rax
	cmpl	$0, 300(%rax)
	je	.LBB11_4
# BB#3:                                 # %if.then.3
	movabsq	$.L.str.5, %rsi
	movq	-8(%rbp), %rax
	movq	1536(%rax), %rdi
	movb	$0, %al
	callq	output
	jmp	.LBB11_5
.LBB11_4:                               # %if.else
	movl	$40, %esi
	movq	-8(%rbp), %rax
	movq	1536(%rax), %rdi
	callq	output_char
	movq	-8(%rbp), %rax
	movq	1528(%rax), %rax
	movl	136(%rax), %esi
	cmpl	-12(%rbp), %esi
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %esi
	movq	-8(%rbp), %rax
	movq	1528(%rax), %rax
	andl	140(%rax), %esi
	movl	%esi, 140(%rax)
	movl	-12(%rbp), %esi
	movq	-8(%rbp), %rax
	movq	1528(%rax), %rax
	movl	%esi, 136(%rax)
.LBB11_5:                               # %if.end.11
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	fold_line, .Lfunc_end11-fold_line
	.cfi_endproc

	.align	16, 0x90
	.type	ps_escape_char,@function
ps_escape_char:                         # @ps_escape_char
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp36:
	.cfi_def_cfa_offset 16
.Ltmp37:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp38:
	.cfi_def_cfa_register %rbp
	subq	$160, %rsp
	movb	%sil, %al
	movl	$32, %esi
	movq	%rdi, -16(%rbp)
	movb	%al, -17(%rbp)
	movq	%rdx, -32(%rbp)
	movl	$0, -36(%rbp)
	movzbl	-17(%rbp), %ecx
	cmpl	%ecx, %esi
	jg	.LBB12_11
# BB#1:                                 # %land.lhs.true
	movzbl	-17(%rbp), %eax
	cmpl	$127, %eax
	jge	.LBB12_11
# BB#2:                                 # %if.then
	movzbl	-17(%rbp), %eax
	cmpl	$40, %eax
	je	.LBB12_5
# BB#3:                                 # %lor.lhs.false
	movzbl	-17(%rbp), %eax
	cmpl	$41, %eax
	je	.LBB12_5
# BB#4:                                 # %lor.lhs.false.11
	movzbl	-17(%rbp), %eax
	cmpl	$92, %eax
	jne	.LBB12_8
.LBB12_5:                               # %if.then.15
	jmp	.LBB12_6
.LBB12_6:                               # %do.body
	movq	-32(%rbp), %rdi
	callq	strlen
	movl	%eax, %ecx
	movl	%ecx, -40(%rbp)
	movq	-32(%rbp), %rax
	movslq	-40(%rbp), %rdi
	movb	$92, (%rax,%rdi)
	movq	-32(%rbp), %rax
	movslq	-40(%rbp), %rdi
	movb	$0, 1(%rax,%rdi)
# BB#7:                                 # %do.end
	jmp	.LBB12_8
.LBB12_8:                               # %if.end
	jmp	.LBB12_9
.LBB12_9:                               # %do.body.20
	movq	-32(%rbp), %rdi
	callq	strlen
	movl	%eax, %ecx
	movl	%ecx, -44(%rbp)
	movb	-17(%rbp), %dl
	movq	-32(%rbp), %rax
	movslq	-44(%rbp), %rdi
	movb	%dl, (%rax,%rdi)
	movq	-32(%rbp), %rax
	movslq	-44(%rbp), %rdi
	movb	$0, 1(%rax,%rdi)
# BB#10:                                # %do.end.29
	movl	$1, -4(%rbp)
	jmp	.LBB12_77
.LBB12_11:                              # %if.end.30
	movq	-16(%rbp), %rax
	movq	368(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	1528(%rax), %rax
	movl	136(%rax), %esi
	movzbl	-17(%rbp), %edx
	callq	encoding_char_exists
	cmpl	$0, %eax
	je	.LBB12_15
# BB#12:                                # %land.lhs.true.32
	movl	$127, %eax
	movzbl	-17(%rbp), %ecx
	cmpl	%ecx, %eax
	jl	.LBB12_14
# BB#13:                                # %lor.lhs.false.36
	movzbl	-17(%rbp), %eax
	cmpl	$32, %eax
	jge	.LBB12_15
.LBB12_14:                              # %if.then.40
	movabsq	$.L.str.49, %rsi
	movq	-32(%rbp), %rdi
	movq	-32(%rbp), %rdx
	movzbl	-17(%rbp), %ecx
	movb	$0, %al
	callq	sprintf
	movl	$1, -4(%rbp)
	movl	%eax, -92(%rbp)         # 4-byte Spill
	jmp	.LBB12_77
.LBB12_15:                              # %if.end.43
	movq	-16(%rbp), %rax
	movq	1528(%rax), %rax
	movl	144(%rax), %ecx
	incl	%ecx
	movl	%ecx, 144(%rax)
	movq	-16(%rbp), %rax
	movl	304(%rax), %ecx
	movl	%ecx, %eax
	movq	%rax, %rdx
	subq	$5, %rdx
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movq	%rdx, -112(%rbp)        # 8-byte Spill
	ja	.LBB12_76
# BB#78:                                # %if.end.43
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	.LJTI12_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB12_16:                              # %sw.bb
	movabsq	$.L.str.50, %rsi
	movq	-32(%rbp), %rdi
	movzbl	-17(%rbp), %edx
	movb	$0, %al
	callq	sprintf
	movl	$4, -4(%rbp)
	movl	%eax, -116(%rbp)        # 4-byte Spill
	jmp	.LBB12_77
.LBB12_17:                              # %sw.bb.47
	movabsq	$.L.str.51, %rsi
	movq	-32(%rbp), %rdi
	movzbl	-17(%rbp), %edx
	movb	$0, %al
	callq	sprintf
	movl	$4, -4(%rbp)
	movl	%eax, -120(%rbp)        # 4-byte Spill
	jmp	.LBB12_77
.LBB12_18:                              # %sw.bb.50
	jmp	.LBB12_19
.LBB12_19:                              # %do.body.51
	movq	-32(%rbp), %rdi
	callq	strlen
	movl	%eax, %ecx
	movl	%ecx, -48(%rbp)
	movq	-32(%rbp), %rax
	movslq	-48(%rbp), %rdi
	movb	$63, (%rax,%rdi)
	movq	-32(%rbp), %rax
	movslq	-48(%rbp), %rdi
	movb	$0, 1(%rax,%rdi)
# BB#20:                                # %do.end.60
	movl	$1, -4(%rbp)
	jmp	.LBB12_77
.LBB12_21:                              # %sw.bb.61
	jmp	.LBB12_22
.LBB12_22:                              # %do.body.62
	movq	-32(%rbp), %rdi
	callq	strlen
	movl	%eax, %ecx
	movl	%ecx, -52(%rbp)
	movq	-32(%rbp), %rax
	movslq	-52(%rbp), %rdi
	movb	$32, (%rax,%rdi)
	movq	-32(%rbp), %rax
	movslq	-52(%rbp), %rdi
	movb	$0, 1(%rax,%rdi)
# BB#23:                                # %do.end.71
	movl	$1, -4(%rbp)
	jmp	.LBB12_77
.LBB12_24:                              # %sw.bb.72
	movl	$127, %eax
	movzbl	-17(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB12_26
# BB#25:                                # %if.then.76
	movabsq	$.L.str.52, %rsi
	movq	-32(%rbp), %rdi
	callq	strcat
	movl	-36(%rbp), %ecx
	addl	$2, %ecx
	movl	%ecx, -36(%rbp)
	movzbl	-17(%rbp), %ecx
	andl	$127, %ecx
	movb	%cl, %dl
	movb	%dl, -17(%rbp)
	movq	%rax, -128(%rbp)        # 8-byte Spill
.LBB12_26:                              # %if.end.80
	movzbl	-17(%rbp), %eax
	cmpl	$32, %eax
	jge	.LBB12_38
# BB#27:                                # %if.then.84
	jmp	.LBB12_28
.LBB12_28:                              # %do.body.85
	movq	-32(%rbp), %rdi
	callq	strlen
	movl	%eax, %ecx
	movl	%ecx, -56(%rbp)
	movq	-32(%rbp), %rax
	movslq	-56(%rbp), %rdi
	movb	$94, (%rax,%rdi)
	movq	-32(%rbp), %rax
	movslq	-56(%rbp), %rdi
	movb	$0, 1(%rax,%rdi)
# BB#29:                                # %do.end.94
	movl	-36(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -36(%rbp)
	movzbl	-17(%rbp), %eax
	addl	$64, %eax
	movb	%al, %cl
	movb	%cl, -17(%rbp)
	movzbl	-17(%rbp), %eax
	cmpl	$40, %eax
	je	.LBB12_32
# BB#30:                                # %lor.lhs.false.102
	movzbl	-17(%rbp), %eax
	cmpl	$41, %eax
	je	.LBB12_32
# BB#31:                                # %lor.lhs.false.106
	movzbl	-17(%rbp), %eax
	cmpl	$92, %eax
	jne	.LBB12_35
.LBB12_32:                              # %if.then.110
	jmp	.LBB12_33
.LBB12_33:                              # %do.body.111
	movq	-32(%rbp), %rdi
	callq	strlen
	movl	%eax, %ecx
	movl	%ecx, -60(%rbp)
	movq	-32(%rbp), %rax
	movslq	-60(%rbp), %rdi
	movb	$92, (%rax,%rdi)
	movq	-32(%rbp), %rax
	movslq	-60(%rbp), %rdi
	movb	$0, 1(%rax,%rdi)
# BB#34:                                # %do.end.120
	jmp	.LBB12_35
.LBB12_35:                              # %if.end.121
	jmp	.LBB12_36
.LBB12_36:                              # %do.body.122
	movq	-32(%rbp), %rdi
	callq	strlen
	movl	%eax, %ecx
	movl	%ecx, -64(%rbp)
	movb	-17(%rbp), %dl
	movq	-32(%rbp), %rax
	movslq	-64(%rbp), %rdi
	movb	%dl, (%rax,%rdi)
	movq	-32(%rbp), %rax
	movslq	-64(%rbp), %rdi
	movb	$0, 1(%rax,%rdi)
# BB#37:                                # %do.end.131
	jmp	.LBB12_50
.LBB12_38:                              # %if.else
	movzbl	-17(%rbp), %eax
	cmpl	$127, %eax
	jne	.LBB12_40
# BB#39:                                # %if.then.135
	movabsq	$.L.str.53, %rsi
	movq	-32(%rbp), %rdi
	callq	strcat
	movl	-36(%rbp), %ecx
	addl	$2, %ecx
	movl	%ecx, -36(%rbp)
	movq	%rax, -136(%rbp)        # 8-byte Spill
	jmp	.LBB12_49
.LBB12_40:                              # %if.else.138
	movzbl	-17(%rbp), %eax
	cmpl	$40, %eax
	je	.LBB12_43
# BB#41:                                # %lor.lhs.false.142
	movzbl	-17(%rbp), %eax
	cmpl	$41, %eax
	je	.LBB12_43
# BB#42:                                # %lor.lhs.false.146
	movzbl	-17(%rbp), %eax
	cmpl	$92, %eax
	jne	.LBB12_46
.LBB12_43:                              # %if.then.150
	jmp	.LBB12_44
.LBB12_44:                              # %do.body.151
	movq	-32(%rbp), %rdi
	callq	strlen
	movl	%eax, %ecx
	movl	%ecx, -68(%rbp)
	movq	-32(%rbp), %rax
	movslq	-68(%rbp), %rdi
	movb	$92, (%rax,%rdi)
	movq	-32(%rbp), %rax
	movslq	-68(%rbp), %rdi
	movb	$0, 1(%rax,%rdi)
# BB#45:                                # %do.end.160
	jmp	.LBB12_46
.LBB12_46:                              # %if.end.161
	jmp	.LBB12_47
.LBB12_47:                              # %do.body.162
	movq	-32(%rbp), %rdi
	callq	strlen
	movl	%eax, %ecx
	movl	%ecx, -72(%rbp)
	movb	-17(%rbp), %dl
	movq	-32(%rbp), %rax
	movslq	-72(%rbp), %rdi
	movb	%dl, (%rax,%rdi)
	movq	-32(%rbp), %rax
	movslq	-72(%rbp), %rdi
	movb	$0, 1(%rax,%rdi)
# BB#48:                                # %do.end.171
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
.LBB12_49:                              # %if.end.173
	jmp	.LBB12_50
.LBB12_50:                              # %if.end.174
	movl	-36(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB12_77
.LBB12_51:                              # %sw.bb.175
	movl	$127, %eax
	movzbl	-17(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB12_53
# BB#52:                                # %if.then.179
	movabsq	$.L.str.52, %rsi
	movq	-32(%rbp), %rdi
	callq	strcat
	movl	-36(%rbp), %ecx
	addl	$2, %ecx
	movl	%ecx, -36(%rbp)
	movzbl	-17(%rbp), %ecx
	andl	$127, %ecx
	movb	%cl, %dl
	movb	%dl, -17(%rbp)
	movq	%rax, -144(%rbp)        # 8-byte Spill
.LBB12_53:                              # %if.end.185
	movzbl	-17(%rbp), %eax
	cmpl	$32, %eax
	jge	.LBB12_63
# BB#54:                                # %if.then.189
	movabsq	$.L.str.54, %rsi
	movq	-32(%rbp), %rdi
	callq	strcat
	movl	-36(%rbp), %ecx
	addl	$3, %ecx
	movl	%ecx, -36(%rbp)
	movzbl	-17(%rbp), %ecx
	addl	$64, %ecx
	movb	%cl, %dl
	movb	%dl, -17(%rbp)
	movzbl	-17(%rbp), %ecx
	cmpl	$40, %ecx
	movq	%rax, -152(%rbp)        # 8-byte Spill
	je	.LBB12_57
# BB#55:                                # %lor.lhs.false.198
	movzbl	-17(%rbp), %eax
	cmpl	$41, %eax
	je	.LBB12_57
# BB#56:                                # %lor.lhs.false.202
	movzbl	-17(%rbp), %eax
	cmpl	$92, %eax
	jne	.LBB12_60
.LBB12_57:                              # %if.then.206
	jmp	.LBB12_58
.LBB12_58:                              # %do.body.207
	movq	-32(%rbp), %rdi
	callq	strlen
	movl	%eax, %ecx
	movl	%ecx, -76(%rbp)
	movq	-32(%rbp), %rax
	movslq	-76(%rbp), %rdi
	movb	$92, (%rax,%rdi)
	movq	-32(%rbp), %rax
	movslq	-76(%rbp), %rdi
	movb	$0, 1(%rax,%rdi)
# BB#59:                                # %do.end.216
	jmp	.LBB12_60
.LBB12_60:                              # %if.end.217
	jmp	.LBB12_61
.LBB12_61:                              # %do.body.218
	movq	-32(%rbp), %rdi
	callq	strlen
	movl	%eax, %ecx
	movl	%ecx, -80(%rbp)
	movb	-17(%rbp), %dl
	movq	-32(%rbp), %rax
	movslq	-80(%rbp), %rdi
	movb	%dl, (%rax,%rdi)
	movq	-32(%rbp), %rax
	movslq	-80(%rbp), %rdi
	movb	$0, 1(%rax,%rdi)
# BB#62:                                # %do.end.227
	jmp	.LBB12_75
.LBB12_63:                              # %if.else.228
	movzbl	-17(%rbp), %eax
	cmpl	$127, %eax
	jne	.LBB12_65
# BB#64:                                # %if.then.232
	movabsq	$.L.str.55, %rsi
	movq	-32(%rbp), %rdi
	callq	strcat
	movl	-36(%rbp), %ecx
	addl	$3, %ecx
	movl	%ecx, -36(%rbp)
	movq	%rax, -160(%rbp)        # 8-byte Spill
	jmp	.LBB12_74
.LBB12_65:                              # %if.else.235
	movzbl	-17(%rbp), %eax
	cmpl	$40, %eax
	je	.LBB12_68
# BB#66:                                # %lor.lhs.false.239
	movzbl	-17(%rbp), %eax
	cmpl	$41, %eax
	je	.LBB12_68
# BB#67:                                # %lor.lhs.false.243
	movzbl	-17(%rbp), %eax
	cmpl	$92, %eax
	jne	.LBB12_71
.LBB12_68:                              # %if.then.247
	jmp	.LBB12_69
.LBB12_69:                              # %do.body.248
	movq	-32(%rbp), %rdi
	callq	strlen
	movl	%eax, %ecx
	movl	%ecx, -84(%rbp)
	movq	-32(%rbp), %rax
	movslq	-84(%rbp), %rdi
	movb	$92, (%rax,%rdi)
	movq	-32(%rbp), %rax
	movslq	-84(%rbp), %rdi
	movb	$0, 1(%rax,%rdi)
# BB#70:                                # %do.end.257
	jmp	.LBB12_71
.LBB12_71:                              # %if.end.258
	jmp	.LBB12_72
.LBB12_72:                              # %do.body.259
	movq	-32(%rbp), %rdi
	callq	strlen
	movl	%eax, %ecx
	movl	%ecx, -88(%rbp)
	movb	-17(%rbp), %dl
	movq	-32(%rbp), %rax
	movslq	-88(%rbp), %rdi
	movb	%dl, (%rax,%rdi)
	movq	-32(%rbp), %rax
	movslq	-88(%rbp), %rdi
	movb	$0, 1(%rax,%rdi)
# BB#73:                                # %do.end.268
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
.LBB12_74:                              # %if.end.270
	jmp	.LBB12_75
.LBB12_75:                              # %if.end.271
	movl	-36(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB12_77
.LBB12_76:                              # %sw.epilog
	movl	$0, -4(%rbp)
.LBB12_77:                              # %return
	movl	-4(%rbp), %eax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	ps_escape_char, .Lfunc_end12-ps_escape_char
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI12_0:
	.quad	.LBB12_24
	.quad	.LBB12_21
	.quad	.LBB12_18
	.quad	.LBB12_16
	.quad	.LBB12_17
	.quad	.LBB12_51

	.text
	.globl	ps_print_string
	.align	16, 0x90
	.type	ps_print_string,@function
ps_print_string:                        # @ps_print_string
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp39:
	.cfi_def_cfa_offset 16
.Ltmp40:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp41:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
.LBB13_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB13_3
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB13_1 Depth=1
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movzbl	(%rax), %esi
	movl	-20(%rbp), %edx
	callq	ps_print_char
	jmp	.LBB13_1
.LBB13_3:                               # %while.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	ps_print_string, .Lfunc_end13-ps_print_string
	.cfi_endproc

	.globl	ps_print_buffer
	.align	16, 0x90
	.type	ps_print_buffer,@function
ps_print_buffer:                        # @ps_print_buffer
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp42:
	.cfi_def_cfa_offset 16
.Ltmp43:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp44:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movq	-24(%rbp), %rcx
	movq	%rcx, -48(%rbp)
.LBB14_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-48(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jae	.LBB14_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	-8(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	-16(%rbp), %rcx
	movzbl	(%rcx,%rax), %esi
	movl	-36(%rbp), %edx
	callq	ps_print_char
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB14_1
.LBB14_4:                               # %for.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	ps_print_buffer, .Lfunc_end14-ps_print_buffer
	.cfi_endproc

	.globl	ps_begin_file
	.align	16, 0x90
	.type	ps_begin_file,@function
ps_begin_file:                          # @ps_begin_file
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp45:
	.cfi_def_cfa_offset 16
.Ltmp46:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp47:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	1528(%rdi), %rdi
	callq	initialize_ps_status
	movq	-8(%rbp), %rdi
	movq	1632(%rdi), %rdi
	cmpq	$0, 40(%rdi)
	jne	.LBB15_2
# BB#1:                                 # %if.then
	jmp	.LBB15_17
.LBB15_2:                               # %if.end
	movq	-8(%rbp), %rax
	movl	316(%rax), %ecx
	addl	$4, %ecx
	movl	%ecx, %eax
	subl	$3, %ecx
	movq	%rax, -24(%rbp)         # 8-byte Spill
	movl	%ecx, -28(%rbp)         # 4-byte Spill
	ja	.LBB15_13
# BB#18:                                # %if.end
	movq	-24(%rbp), %rax         # 8-byte Reload
	movq	.LJTI15_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB15_3:                               # %sw.bb
	jmp	.LBB15_17
.LBB15_4:                               # %sw.bb.1
	movq	-8(%rbp), %rax
	cmpl	$0, 140(%rax)
	jne	.LBB15_6
# BB#5:                                 # %cond.true
	movq	-8(%rbp), %rax
	movl	132(%rax), %ecx
	movl	%ecx, -32(%rbp)         # 4-byte Spill
	jmp	.LBB15_7
.LBB15_6:                               # %cond.false
	movq	-8(%rbp), %rax
	movl	136(%rax), %ecx
	movl	%ecx, -32(%rbp)         # 4-byte Spill
.LBB15_7:                               # %cond.end
	movl	-32(%rbp), %eax         # 4-byte Reload
	movl	%eax, -12(%rbp)
.LBB15_8:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	movl	112(%rax), %eax
	cltd
	idivl	-12(%rbp)
	cmpl	$0, %edx
	je	.LBB15_10
# BB#9:                                 # %while.body
                                        #   in Loop: Header=BB15_8 Depth=1
	movq	-8(%rbp), %rdi
	callq	virtual_empty_output
	jmp	.LBB15_8
.LBB15_10:                              # %while.end
	jmp	.LBB15_17
.LBB15_11:                              # %sw.bb.4
	movq	-8(%rbp), %rdi
	callq	page_flush
	jmp	.LBB15_17
.LBB15_12:                              # %sw.bb.5
	movq	-8(%rbp), %rdi
	callq	sheet_flush
	jmp	.LBB15_17
.LBB15_13:                              # %sw.default
	movq	-8(%rbp), %rdi
	callq	page_flush
.LBB15_14:                              # %while.cond.6
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	movl	108(%rax), %eax
	movq	-8(%rbp), %rcx
	cltd
	idivl	316(%rcx)
	cmpl	$0, %edx
	je	.LBB15_16
# BB#15:                                # %while.body.10
                                        #   in Loop: Header=BB15_14 Depth=1
	movq	-8(%rbp), %rdi
	callq	page_empty_output
	jmp	.LBB15_14
.LBB15_16:                              # %while.end.11
	jmp	.LBB15_17
.LBB15_17:                              # %sw.epilog
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	ps_begin_file, .Lfunc_end15-ps_begin_file
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI15_0:
	.quad	.LBB15_3
	.quad	.LBB15_4
	.quad	.LBB15_11
	.quad	.LBB15_12

	.text
	.align	16, 0x90
	.type	virtual_empty_output,@function
virtual_empty_output:                   # @virtual_empty_output
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp48:
	.cfi_def_cfa_offset 16
.Ltmp49:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp50:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movabsq	$.L.str.56, %rsi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	macro_meta_sequence_get
	cmpq	$0, %rax
	je	.LBB16_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	virtual_begin
	movq	-8(%rbp), %rdi
	callq	virtual_end
	jmp	.LBB16_5
.LBB16_2:                               # %if.else
	movq	-8(%rbp), %rax
	movl	112(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 112(%rax)
	movq	-8(%rbp), %rax
	movl	144(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 144(%rax)
	movq	-8(%rbp), %rax
	movl	144(%rax), %ecx
	movq	-8(%rbp), %rax
	movl	132(%rax), %edx
	movq	-8(%rbp), %rax
	imull	136(%rax), %edx
	cmpl	%edx, %ecx
	jne	.LBB16_4
# BB#3:                                 # %if.then.3
	movq	-8(%rbp), %rdi
	callq	page_end
.LBB16_4:                               # %if.end
	jmp	.LBB16_5
.LBB16_5:                               # %if.end.4
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	virtual_empty_output, .Lfunc_end16-virtual_empty_output
	.cfi_endproc

	.align	16, 0x90
	.type	sheet_flush,@function
sheet_flush:                            # @sheet_flush
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp51:
	.cfi_def_cfa_offset 16
.Ltmp52:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp53:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	page_flush
	movq	-8(%rbp), %rdi
	cmpl	$1, 128(%rdi)
	je	.LBB17_2
# BB#1:                                 # %lor.lhs.false
	movq	-8(%rbp), %rax
	cmpl	$2, 128(%rax)
	jne	.LBB17_4
.LBB17_2:                               # %land.lhs.true
	movl	$2, %eax
	movq	-8(%rbp), %rcx
	movl	108(%rcx), %edx
	movl	%eax, -12(%rbp)         # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-12(%rbp), %esi         # 4-byte Reload
	idivl	%esi
	cmpl	$0, %edx
	je	.LBB17_4
# BB#3:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	page_empty_output
.LBB17_4:                               # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	sheet_flush, .Lfunc_end17-sheet_flush
	.cfi_endproc

	.align	16, 0x90
	.type	page_empty_output,@function
page_empty_output:                      # @page_empty_output
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp54:
	.cfi_def_cfa_offset 16
.Ltmp55:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp56:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	108(%rdi), %eax
	addl	$1, %eax
	movl	%eax, 108(%rdi)
	movq	-8(%rbp), %rdi
	callq	file_job_synchronize_sheets
	movabsq	$.L.str.57, %rsi
	movq	-8(%rbp), %rdi
	movq	1536(%rdi), %rdi
	movq	-8(%rbp), %rcx
	movl	108(%rcx), %edx
	movb	$0, %al
	callq	output
	movabsq	$.L.str.58, %rsi
	movq	-8(%rbp), %rcx
	movq	1536(%rcx), %rdi
	movb	$0, %al
	callq	output
	movabsq	$.L.str.23, %rsi
	movq	-8(%rbp), %rcx
	movq	1536(%rcx), %rdi
	movb	$0, %al
	callq	output
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	page_empty_output, .Lfunc_end18-page_empty_output
	.cfi_endproc

	.globl	ps_end_file
	.align	16, 0x90
	.type	ps_end_file,@function
ps_end_file:                            # @ps_end_file
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp57:
	.cfi_def_cfa_offset 16
.Ltmp58:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp59:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	1528(%rdi), %rdi
	cmpl	$0, 124(%rdi)
	jne	.LBB19_5
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	1528(%rax), %rax
	cmpl	$0, 140(%rax)
	jne	.LBB19_3
# BB#2:                                 # %if.then.3
	movq	-8(%rbp), %rax
	movq	1536(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	1528(%rax), %rax
	movl	136(%rax), %ecx
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movl	%ecx, %edi
	callq	face_eo_ps
	movabsq	$.L.str.2, %rsi
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	output
	jmp	.LBB19_4
.LBB19_3:                               # %if.else
	movabsq	$.L.str.3, %rsi
	movq	-8(%rbp), %rax
	movq	1536(%rax), %rdi
	movb	$0, %al
	callq	output
.LBB19_4:                               # %if.end
	jmp	.LBB19_5
.LBB19_5:                               # %if.end.6
	movq	-8(%rbp), %rax
	movq	1528(%rax), %rax
	cmpl	$0, 120(%rax)
	jne	.LBB19_7
# BB#6:                                 # %if.then.9
	movq	-8(%rbp), %rdi
	callq	virtual_end
.LBB19_7:                               # %if.end.10
	movq	-8(%rbp), %rdi
	callq	file_job_synchronize_pages
	movq	-8(%rbp), %rdi
	callq	file_job_synchronize_sheets
	movq	-8(%rbp), %rdi
	callq	check_binary_file
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	ps_end_file, .Lfunc_end19-ps_end_file
	.cfi_endproc

	.align	16, 0x90
	.type	check_binary_file,@function
check_binary_file:                      # @check_binary_file
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp60:
	.cfi_def_cfa_offset 16
.Ltmp61:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp62:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	1528(%rdi), %rdi
	cmpl	$120, 148(%rdi)
	jle	.LBB20_5
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	cmpl	$0, 312(%rax)
	jne	.LBB20_4
# BB#2:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	movq	1528(%rax), %rax
	imull	$100, 144(%rax), %eax
	movq	-8(%rbp), %rcx
	movq	1528(%rcx), %rcx
	cltd
	idivl	148(%rcx)
	cmpl	$40, %eax
	jl	.LBB20_4
# BB#3:                                 # %if.then.5
	movabsq	$.L.str.59, %rdi
	callq	gettext
	movl	$1, %edi
	xorl	%esi, %esi
	movq	-8(%rbp), %rcx
	movq	1632(%rcx), %rcx
	movq	40(%rcx), %rcx
	subq	$1, %rcx
	movq	-8(%rbp), %rdx
	movq	1632(%rdx), %rdx
	movq	48(%rdx), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movq	(%rcx), %rcx
	movq	%rax, %rdx
	movb	$0, %al
	callq	error
.LBB20_4:                               # %if.end
	jmp	.LBB20_5
.LBB20_5:                               # %if.end.7
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	check_binary_file, .Lfunc_end20-check_binary_file
	.cfi_endproc

	.align	16, 0x90
	.type	ps_push_encoding,@function
ps_push_encoding:                       # @ps_push_encoding
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp63:
	.cfi_def_cfa_offset 16
.Ltmp64:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp65:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	368(%rsi), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 392(%rdi)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	ps_internal_switch_encoding
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	ps_push_encoding, .Lfunc_end21-ps_push_encoding
	.cfi_endproc

	.align	16, 0x90
	.type	output_marker,@function
output_marker:                          # @output_marker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp66:
	.cfi_def_cfa_offset 16
.Ltmp67:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp68:
	.cfi_def_cfa_register %rbp
	subq	$320, %rsp              # imm = 0x140
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rdx
	movq	1632(%rdx), %rdx
	movq	40(%rdx), %rdx
	subq	$1, %rdx
	movq	-8(%rbp), %rsi
	movq	1632(%rsi), %rsi
	movq	48(%rsi), %rsi
	movq	(%rsi,%rdx,8), %rdx
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rcx
	movq	%rsi, -304(%rbp)        # 8-byte Spill
	movq	%rdx, %rsi
	movq	-304(%rbp), %rdx        # 8-byte Reload
	callq	expand_user_string
	movq	%rax, -32(%rbp)
	movl	$0, -292(%rbp)
.LBB22_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-292(%rbp), %rax
	movq	-32(%rbp), %rcx
	cmpb	$0, (%rcx,%rax)
	je	.LBB22_14
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB22_1 Depth=1
	movslq	-292(%rbp), %rax
	movq	-32(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	decl	%edx
	movl	%edx, %eax
	subl	$7, %edx
	movq	%rax, -312(%rbp)        # 8-byte Spill
	movl	%edx, -316(%rbp)        # 4-byte Spill
	ja	.LBB22_11
# BB#15:                                # %for.body
                                        #   in Loop: Header=BB22_1 Depth=1
	movq	-312(%rbp), %rax        # 8-byte Reload
	movq	.LJTI22_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB22_3:                               # %sw.bb
                                        #   in Loop: Header=BB22_1 Depth=1
	movq	-8(%rbp), %rax
	movq	1536(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	1632(%rax), %rax
	movq	40(%rax), %rax
	subq	$1, %rax
	movq	-8(%rbp), %rcx
	movq	1632(%rcx), %rcx
	movq	48(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	addq	$112, %rax
	movq	%rax, %rsi
	callq	output_delayed_int
	jmp	.LBB22_12
.LBB22_4:                               # %sw.bb.11
                                        #   in Loop: Header=BB22_1 Depth=1
	movq	-8(%rbp), %rax
	movq	1536(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	1632(%rax), %rax
	movq	40(%rax), %rax
	subq	$1, %rax
	movq	-8(%rbp), %rcx
	movq	1632(%rcx), %rcx
	movq	48(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	addq	$104, %rax
	movq	%rax, %rsi
	callq	output_delayed_int
	jmp	.LBB22_12
.LBB22_5:                               # %sw.bb.19
                                        #   in Loop: Header=BB22_1 Depth=1
	movq	-8(%rbp), %rax
	movq	1536(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	1632(%rax), %rax
	movq	40(%rax), %rax
	subq	$1, %rax
	movq	-8(%rbp), %rcx
	movq	1632(%rcx), %rcx
	movq	48(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	addq	$116, %rax
	movq	%rax, %rsi
	callq	output_delayed_int
	jmp	.LBB22_12
.LBB22_6:                               # %sw.bb.27
                                        #   in Loop: Header=BB22_1 Depth=1
	movq	-8(%rbp), %rax
	movq	1536(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	1632(%rax), %rax
	movq	40(%rax), %rax
	subq	$1, %rax
	movq	-8(%rbp), %rcx
	movq	1632(%rcx), %rcx
	movq	48(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	addq	$120, %rax
	movq	%rax, %rsi
	callq	output_delayed_int
	jmp	.LBB22_12
.LBB22_7:                               # %sw.bb.35
                                        #   in Loop: Header=BB22_1 Depth=1
	movq	-8(%rbp), %rax
	movq	1536(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	1632(%rax), %rax
	movq	40(%rax), %rax
	subq	$1, %rax
	movq	-8(%rbp), %rcx
	movq	1632(%rcx), %rcx
	movq	48(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	addq	$136, %rax
	movq	%rax, %rsi
	callq	output_delayed_int
	jmp	.LBB22_12
.LBB22_8:                               # %sw.bb.43
                                        #   in Loop: Header=BB22_1 Depth=1
	movq	-8(%rbp), %rax
	movq	1536(%rax), %rdi
	movq	-8(%rbp), %rax
	addq	$112, %rax
	movq	%rax, %rsi
	callq	output_delayed_int
	jmp	.LBB22_12
.LBB22_9:                               # %sw.bb.46
                                        #   in Loop: Header=BB22_1 Depth=1
	movq	-8(%rbp), %rax
	movq	1536(%rax), %rdi
	movq	-8(%rbp), %rax
	addq	$108, %rax
	movq	%rax, %rsi
	callq	output_delayed_int
	jmp	.LBB22_12
.LBB22_10:                              # %sw.bb.49
                                        #   in Loop: Header=BB22_1 Depth=1
	movq	-8(%rbp), %rax
	movq	1536(%rax), %rdi
	movq	-8(%rbp), %rax
	addq	$120, %rax
	movq	%rax, %rsi
	callq	output_delayed_int
	jmp	.LBB22_12
.LBB22_11:                              # %sw.default
                                        #   in Loop: Header=BB22_1 Depth=1
	leaq	-288(%rbp), %rdx
	movb	$0, -288(%rbp)
	movq	-8(%rbp), %rdi
	movslq	-292(%rbp), %rax
	movq	-32(%rbp), %rcx
	movb	(%rcx,%rax), %sil
	movzbl	%sil, %esi
	callq	ps_escape_char
	leaq	-288(%rbp), %rsi
	movq	-8(%rbp), %rcx
	movq	1536(%rcx), %rdi
	movl	%eax, -320(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	output
.LBB22_12:                              # %sw.epilog
                                        #   in Loop: Header=BB22_1 Depth=1
	jmp	.LBB22_13
.LBB22_13:                              # %for.inc
                                        #   in Loop: Header=BB22_1 Depth=1
	movl	-292(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -292(%rbp)
	jmp	.LBB22_1
.LBB22_14:                              # %for.end
	addq	$320, %rsp              # imm = 0x140
	popq	%rbp
	retq
.Lfunc_end22:
	.size	output_marker, .Lfunc_end22-output_marker
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI22_0:
	.quad	.LBB22_8
	.quad	.LBB22_9
	.quad	.LBB22_10
	.quad	.LBB22_5
	.quad	.LBB22_6
	.quad	.LBB22_7
	.quad	.LBB22_3
	.quad	.LBB22_4

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI23_0:
	.quad	4640537203540230144     # double 180
.LCPI23_1:
	.quad	4614256656543962353     # double 3.1415926500000002
	.text
	.align	16, 0x90
	.type	page_begin,@function
page_begin:                             # @page_begin
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp69:
	.cfi_def_cfa_offset 16
.Ltmp70:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp71:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	$1, 144(%rdi)
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	112(%rax), %esi
	callq	print_page
	cmpl	$0, %eax
	je	.LBB23_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movl	108(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 108(%rax)
.LBB23_2:                               # %if.end
	movq	-8(%rbp), %rax
	movq	1632(%rax), %rax
	movq	40(%rax), %rax
	subq	$1, %rax
	movq	-8(%rbp), %rcx
	movq	1632(%rcx), %rcx
	movq	48(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movl	116(%rax), %edx
	addl	$1, %edx
	movq	-8(%rbp), %rax
	movq	1632(%rax), %rax
	movq	40(%rax), %rax
	subq	$1, %rax
	movq	-8(%rbp), %rcx
	movq	1632(%rcx), %rcx
	movq	48(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movl	%edx, 132(%rax)
	movq	-8(%rbp), %rax
	movq	1536(%rax), %rdi
	callq	output_is_to_void
	cmpl	$0, %eax
	jne	.LBB23_4
# BB#3:                                 # %if.then.11
	movabsq	$.L.str.30, %rsi
	movq	-8(%rbp), %rax
	movq	1536(%rax), %rdi
	movb	$0, %al
	callq	output
	movl	$8, %ecx
	movl	%ecx, %edi
	callq	xmalloc
	movq	-8(%rbp), %rsi
	movq	1528(%rsi), %rsi
	movq	%rax, 112(%rsi)
	movq	-8(%rbp), %rax
	movq	1536(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	1528(%rax), %rax
	movq	112(%rax), %rsi
	callq	output_delayed_string
	movabsq	$.L.str.31, %rsi
	movq	-8(%rbp), %rax
	movq	1536(%rax), %rdi
	movq	-8(%rbp), %rax
	movl	108(%rax), %edx
	movb	$0, %al
	callq	output
.LBB23_4:                               # %if.end.19
	movabsq	$.L.str.32, %rsi
	movq	-8(%rbp), %rax
	movq	1536(%rax), %rdi
	movb	$0, %al
	callq	output
	movabsq	$.L.str.33, %rsi
	movq	-8(%rbp), %rdi
	movq	1536(%rdi), %rdi
	movb	$0, %al
	callq	output
	movq	-8(%rbp), %rsi
	cmpl	$0, 152(%rsi)
	je	.LBB23_8
# BB#5:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	cmpl	$0, 128(%rax)
	je	.LBB23_7
# BB#6:                                 # %lor.lhs.false
	movl	$2, %eax
	movq	-8(%rbp), %rcx
	movl	108(%rcx), %edx
	movl	%eax, -12(%rbp)         # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-12(%rbp), %esi         # 4-byte Reload
	idivl	%esi
	cmpl	$0, %edx
	je	.LBB23_8
.LBB23_7:                               # %if.then.25
	movabsq	$.L.str.34, %rsi
	movq	-8(%rbp), %rax
	movq	1536(%rax), %rdi
	movq	-8(%rbp), %rax
	movl	152(%rax), %edx
	movb	$0, %al
	callq	output
.LBB23_8:                               # %if.end.28
	movq	-8(%rbp), %rax
	cmpl	$1, 124(%rax)
	jne	.LBB23_10
# BB#9:                                 # %if.then.30
	movabsq	$.L.str.35, %rsi
	movq	-8(%rbp), %rax
	movq	1536(%rax), %rdi
	movb	$0, %al
	callq	output
.LBB23_10:                              # %if.end.32
	movabsq	$.L.str.36, %rsi
	movq	-8(%rbp), %rax
	movq	1536(%rax), %rdi
	movb	$0, %al
	callq	output
	movq	-8(%rbp), %rsi
	testb	$1, 324(%rsi)
	je	.LBB23_12
# BB#11:                                # %if.then.35
	movabsq	$.L.str.37, %rsi
	movq	-8(%rbp), %rax
	movq	1536(%rax), %rdi
	movb	$0, %al
	callq	output
.LBB23_12:                              # %if.end.37
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	384(%rax), %rsi
	callq	ps_set_encoding
	movq	-8(%rbp), %rax
	cmpq	$0, 488(%rax)
	je	.LBB23_15
# BB#13:                                # %lor.lhs.false.39
	movq	-8(%rbp), %rax
	movq	488(%rax), %rax
	movzbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB23_15
# BB#14:                                # %if.then.43
	movl	$40, %esi
	movq	-8(%rbp), %rax
	movq	1536(%rax), %rdi
	callq	output_char
	movabsq	$.L.str.38, %rsi
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	488(%rax), %rdx
	callq	output_marker
	movq	-8(%rbp), %rax
	movq	1536(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	336(%rax), %rax
	cvtsi2sdl	8(%rax), %xmm0
	movq	-8(%rbp), %rax
	cvtsi2sdl	152(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movq	-8(%rbp), %rax
	movq	336(%rax), %rax
	cvtsi2sdl	12(%rax), %xmm1
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	atan2
	movabsq	$.L.str.39, %rsi
	movsd	.LCPI23_0, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI23_1, %xmm2        # xmm2 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	cvtss2sd	%xmm0, %xmm0
	divsd	%xmm2, %xmm0
	mulsd	%xmm1, %xmm0
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movb	$1, %al
	callq	output
.LBB23_15:                              # %if.end.56
	movabsq	$.L.str.40, %rsi
	movq	-8(%rbp), %rax
	movq	1536(%rax), %rdi
	movb	$0, %al
	callq	output
	movq	-8(%rbp), %rsi
	movq	1536(%rsi), %rdi
	movq	-8(%rbp), %rsi
	cmpq	$0, 472(%rsi)
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	je	.LBB23_17
# BB#16:                                # %lor.lhs.false.61
	movb	$1, %al
	movq	-8(%rbp), %rcx
	movq	472(%rcx), %rcx
	movzbl	(%rcx), %edx
	cmpl	$0, %edx
	movb	%al, -33(%rbp)          # 1-byte Spill
	jne	.LBB23_22
.LBB23_17:                              # %lor.lhs.false.66
	movq	-8(%rbp), %rax
	cmpq	$0, 464(%rax)
	je	.LBB23_19
# BB#18:                                # %lor.lhs.false.69
	movb	$1, %al
	movq	-8(%rbp), %rcx
	movq	464(%rcx), %rcx
	movzbl	(%rcx), %edx
	cmpl	$0, %edx
	movb	%al, -33(%rbp)          # 1-byte Spill
	jne	.LBB23_22
.LBB23_19:                              # %lor.rhs
	movb	$1, %al
	movq	-8(%rbp), %rcx
	cmpq	$0, 480(%rcx)
	movb	%al, -34(%rbp)          # 1-byte Spill
	je	.LBB23_21
# BB#20:                                # %lor.rhs.76
	movq	-8(%rbp), %rax
	movq	480(%rax), %rax
	movzbl	(%rax), %ecx
	cmpl	$0, %ecx
	sete	%dl
	movb	%dl, -34(%rbp)          # 1-byte Spill
.LBB23_21:                              # %lor.end
	movb	-34(%rbp), %al          # 1-byte Reload
	xorb	$-1, %al
	movb	%al, -33(%rbp)          # 1-byte Spill
.LBB23_22:                              # %lor.end.81
	movb	-33(%rbp), %al          # 1-byte Reload
	movabsq	$.L.str.41, %rsi
	andb	$1, %al
	movzbl	%al, %ecx
	imull	$12, %ecx, %edx
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movb	$0, %al
	callq	output
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	392(%rsi), %rsi
	callq	ps_internal_switch_encoding
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	page_begin, .Lfunc_end23-page_begin
	.cfi_endproc

	.align	16, 0x90
	.type	ps_pop_encoding,@function
ps_pop_encoding:                        # @ps_pop_encoding
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp72:
	.cfi_def_cfa_offset 16
.Ltmp73:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp74:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	392(%rax), %rsi
	callq	ps_internal_switch_encoding
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	ps_pop_encoding, .Lfunc_end24-ps_pop_encoding
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%sdict begin\n"
	.size	.L.str, 14

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"end %% of %sdict\n"
	.size	.L.str.1, 18

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	") %s\n"
	.size	.L.str.2, 6

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	") S\n"
	.size	.L.str.3, 5

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"(%d) # ("
	.size	.L.str.4, 9

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"0 T ("
	.size	.L.str.5, 6

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	") %s\n("
	.size	.L.str.6, 7

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	") S\n("
	.size	.L.str.7, 6

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	") %s"
	.size	.L.str.8, 5

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	") S"
	.size	.L.str.9, 4

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	" %d T ("
	.size	.L.str.10, 8

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"%s"
	.size	.L.str.11, 3

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Page label"
	.size	.L.str.12, 11

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"grestore\n"
	.size	.L.str.13, 10

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"right header"
	.size	.L.str.14, 13

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	") rhead\n"
	.size	.L.str.15, 9

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"center footer"
	.size	.L.str.16, 14

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	") "
	.size	.L.str.17, 3

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"() "
	.size	.L.str.18, 4

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"right footer"
	.size	.L.str.19, 13

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"left footer"
	.size	.L.str.20, 12

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"footer\n"
	.size	.L.str.21, 8

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"pagesave restore\n"
	.size	.L.str.22, 18

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"showpage\n"
	.size	.L.str.23, 10

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"/v %d store\n"
	.size	.L.str.24, 13

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"/x0 x v get %f add sx cw mul add store\n"
	.size	.L.str.25, 40

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"/y0 y v get bfs %s sub store\n"
	.size	.L.str.26, 30

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"th add"
	.size	.L.str.27, 7

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.zero	1
	.size	.L.str.28, 1

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"x0 y0 moveto\n"
	.size	.L.str.29, 14

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"%%%%Page: ("
	.size	.L.str.30, 12

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	") %d\n"
	.size	.L.str.31, 6

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"%%%%BeginPageSetup\n"
	.size	.L.str.32, 20

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"/pagesave save def\n"
	.size	.L.str.33, 20

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"%d 0 translate\n"
	.size	.L.str.34, 16

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"sh 0 translate 90 rotate\n"
	.size	.L.str.35, 26

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"%%%%EndPageSetup\n"
	.size	.L.str.36, 18

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"%% Display the bounding box\n  gsave\n    llx lly moveto\n    2 setlinewidth\n    0.9 setgray\n    urx lly lineto\n    urx ury lineto\n    llx ury lineto\n    closepath stroke\n  grestore\n\n"
	.size	.L.str.37, 181

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"water mark"
	.size	.L.str.38, 11

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	") %4.2f water\n"
	.size	.L.str.39, 15

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"gsave\n"
	.size	.L.str.40, 7

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"llx lly %d add translate\n"
	.size	.L.str.41, 26

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	") %s n\n"
	.size	.L.str.42, 8

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	") N\n"
	.size	.L.str.43, 5

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"center title"
	.size	.L.str.44, 13

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"right title"
	.size	.L.str.45, 12

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"left title"
	.size	.L.str.46, 11

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"title\n"
	.size	.L.str.47, 7

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"border\n"
	.size	.L.str.48, 8

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"%s\\%o"
	.size	.L.str.49, 6

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"\\\\%03o"
	.size	.L.str.50, 7

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"\\\\x%02x"
	.size	.L.str.51, 8

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"M-"
	.size	.L.str.52, 3

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"^?"
	.size	.L.str.53, 3

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"C-"
	.size	.L.str.54, 3

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"C-?"
	.size	.L.str.55, 4

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"opt.virtual.force"
	.size	.L.str.56, 18

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"%%%%Page: (*) %d\n"
	.size	.L.str.57, 18

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"%% Empty Page\n"
	.size	.L.str.58, 15

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"`%s' is a binary file, printing aborted"
	.size	.L.str.59, 40


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
