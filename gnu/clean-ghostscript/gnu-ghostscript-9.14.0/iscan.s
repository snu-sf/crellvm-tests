	.text
	.file	"iscan.bc"
	.align	16, 0x90
	.type	scanner_clear_marks,@function
scanner_clear_marks:                    # @scanner_clear_marks
	.cfi_startproc
# BB#0:                                 # %entry
	andb	$-2, (%rsi)
	andb	$-2, 1112(%rsi)
	andb	$-2, 1224(%rsi)
	retq
.Lfunc_end0:
	.size	scanner_clear_marks, .Lfunc_end0-scanner_clear_marks
	.cfi_endproc

	.align	16, 0x90
	.type	scanner_enum_ptrs,@function
scanner_enum_ptrs:                      # @scanner_enum_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	movl	%ecx, %edx
	cmpl	$3, %ecx
	ja	.LBB1_10
# BB#1:                                 # %entry
	jmpq	*.LJTI1_0(,%rdx,8)
.LBB1_2:                                # %sw.bb.1
	addq	$1224, %rsi             # imm = 0x4C8
	jmp	.LBB1_9
.LBB1_3:                                # %sw.bb.3
	cmpl	$0, 28(%rsi)
	je	.LBB1_5
# BB#4:                                 # %lor.lhs.false
	cmpl	$0, 56(%rsi)
	je	.LBB1_5
# BB#6:                                 # %if.end
	movq	32(%rsi), %rax
	movq	%rax, (%r8)
	movl	48(%rsi), %ecx
	subl	%eax, %ecx
	movl	%ecx, 8(%r8)
	movl	$ptr_string_procs, %eax
	retq
.LBB1_7:                                # %sw.bb.11
	xorl	%eax, %eax
	cmpl	$1, 28(%rsi)
	jne	.LBB1_10
# BB#8:                                 # %if.end.16
	addq	$1112, %rsi             # imm = 0x458
.LBB1_9:                                # %cleanup
	movq	%rsi, (%r8)
	movl	$ptr_ref_procs, %eax
.LBB1_10:                               # %cleanup
	retq
.LBB1_5:                                # %if.then
	movq	$0, (%r8)
	movl	$ptr_struct_procs, %eax
	retq
.Lfunc_end1:
	.size	scanner_enum_ptrs, .Lfunc_end1-scanner_enum_ptrs
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI1_0:
	.quad	.LBB1_9
	.quad	.LBB1_2
	.quad	.LBB1_3
	.quad	.LBB1_7

	.text
	.align	16, 0x90
	.type	scanner_reloc_ptrs,@function
scanner_reloc_ptrs:                     # @scanner_reloc_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp1:
	.cfi_def_cfa_offset 24
	subq	$24, %rsp
.Ltmp2:
	.cfi_def_cfa_offset 48
.Ltmp3:
	.cfi_offset %rbx, -24
.Ltmp4:
	.cfi_offset %r14, -16
	movq	%rcx, %r14
	movq	%rdi, %rbx
	movq	(%r14), %rax
	leaq	16(%rbx), %rsi
	movq	%r14, %rdx
	callq	*40(%rax)
	andb	$-2, (%rbx)
	movl	28(%rbx), %eax
	testl	%eax, %eax
	je	.LBB2_5
# BB#1:                                 # %land.lhs.true
	cmpl	$0, 56(%rbx)
	je	.LBB2_3
# BB#2:                                 # %if.then
	movq	32(%rbx), %rax
	movq	%rax, 8(%rsp)
	movl	48(%rbx), %ecx
	subl	%eax, %ecx
	movl	%ecx, 16(%rsp)
	movq	(%r14), %rax
	leaq	8(%rsp), %rdi
	movq	%r14, %rsi
	callq	*8(%rax)
	movq	8(%rsp), %rax
	movl	16(%rsp), %ecx
	leaq	(%rcx,%rax), %rcx
	movq	%rcx, 48(%rbx)
	movq	40(%rbx), %rcx
	subq	32(%rbx), %rcx
	leaq	(%rcx,%rax), %rcx
	movq	%rcx, 40(%rbx)
	movq	%rax, 32(%rbx)
	movl	28(%rbx), %eax
.LBB2_3:                                # %if.end
	cmpl	$1, %eax
	jne	.LBB2_5
# BB#4:                                 # %if.then.32
	movq	(%r14), %rax
	leaq	1112(%rbx), %rdi
	leaq	1128(%rbx), %rsi
	movq	%r14, %rdx
	callq	*40(%rax)
	andb	$-2, 1112(%rbx)
.LBB2_5:                                # %if.end.46
	movq	(%r14), %rax
	leaq	1224(%rbx), %rdi
	leaq	1240(%rbx), %rsi
	movq	%r14, %rdx
	callq	*40(%rax)
	andb	$-2, 1224(%rbx)
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end2:
	.size	scanner_reloc_ptrs, .Lfunc_end2-scanner_reloc_ptrs
	.cfi_endproc

	.globl	gs_scanner_init_options
	.align	16, 0x90
	.type	gs_scanner_init_options,@function
gs_scanner_init_options:                # @gs_scanner_init_options
	.cfi_startproc
# BB#0:                                 # %entry
	movups	(%rsi), %xmm0
	movups	%xmm0, (%rdi)
	movl	$0, 28(%rdi)
	movl	$0, 16(%rdi)
	movl	%edx, 24(%rdi)
	movw	$0, 1224(%rdi)
	movl	$0, 1240(%rdi)
	movb	$0, 1244(%rdi)
	retq
.Lfunc_end3:
	.size	gs_scanner_init_options, .Lfunc_end3-gs_scanner_init_options
	.cfi_endproc

	.globl	gs_scanner_init_stream_options
	.align	16, 0x90
	.type	gs_scanner_init_stream_options,@function
gs_scanner_init_stream_options:         # @gs_scanner_init_stream_options
	.cfi_startproc
# BB#0:                                 # %entry
	movw	$800, (%rdi)            # imm = 0x320
	movl	$0, 4(%rdi)
	movq	%rsi, 8(%rdi)
	movl	$0, 28(%rdi)
	movl	$0, 16(%rdi)
	movl	%edx, 24(%rdi)
	movw	$0, 1224(%rdi)
	movl	$0, 1240(%rdi)
	movb	$0, 1244(%rdi)
	retq
.Lfunc_end4:
	.size	gs_scanner_init_stream_options, .Lfunc_end4-gs_scanner_init_stream_options
	.cfi_endproc

	.globl	gs_scanner_error_object
	.align	16, 0x90
	.type	gs_scanner_error_object,@function
gs_scanner_error_object:                # @gs_scanner_error_object
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp5:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp6:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp7:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp8:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp9:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp10:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp11:
	.cfi_def_cfa_offset 64
.Ltmp12:
	.cfi_offset %rbx, -56
.Ltmp13:
	.cfi_offset %r12, -48
.Ltmp14:
	.cfi_offset %r13, -40
.Ltmp15:
	.cfi_offset %r14, -32
.Ltmp16:
	.cfi_offset %r15, -24
.Ltmp17:
	.cfi_offset %rbp, -16
	movq	%rdx, %r13
	movq	%rsi, %rbx
	movq	%rdi, %r15
	cmpb	$0, 1225(%rbx)
	je	.LBB5_2
# BB#1:                                 # %if.then
	addq	$1224, %rbx             # imm = 0x4C8
	movups	(%rbx), %xmm0
	movups	%xmm0, (%r13)
.LBB5_8:                                # %return
	xorl	%ebp, %ebp
.LBB5_9:                                # %return
	movl	%ebp, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB5_2:                                # %if.end
	movl	$-1, %ebp
	cmpb	$0, 1244(%rbx)
	je	.LBB5_9
# BB#3:                                 # %if.then.6
	leaq	1244(%rbx), %r12
	movq	%r12, %rdi
	callq	strlen
	movq	%rax, %r14
	cmpl	$0, 1240(%rbx)
	je	.LBB5_6
# BB#4:                                 # %if.then.12
	movq	8(%r15), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	movl	$1, %r8d
	movq	%r12, %rsi
	movl	%r14d, %edx
	movq	%r13, %rcx
	callq	names_ref
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB5_9
# BB#5:                                 # %if.end.20
	orb	$-128, (%r13)
	jmp	.LBB5_8
.LBB5_6:                                # %if.else
	movq	8(%r15), %rdi
	movl	$.L.str.1, %edx
	movl	%r14d, %esi
	callq	*136(%rdi)
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB5_9
# BB#7:                                 # %if.end.33
	movslq	%r14d, %rdx
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	memcpy
	movq	%rbx, 8(%r13)
	movl	56(%r15), %eax
	orl	$112, %eax
	addl	$4608, %eax             # imm = 0x1200
	movw	%ax, (%r13)
	movl	%r14d, 4(%r13)
	jmp	.LBB5_8
.Lfunc_end5:
	.size	gs_scanner_error_object, .Lfunc_end5-gs_scanner_error_object
	.cfi_endproc

	.globl	gs_scan_handle_refill
	.align	16, 0x90
	.type	gs_scan_handle_refill,@function
gs_scan_handle_refill:                  # @gs_scan_handle_refill
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp18:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp19:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp20:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp21:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp22:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp23:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp24:
	.cfi_def_cfa_offset 96
.Ltmp25:
	.cfi_offset %rbx, -56
.Ltmp26:
	.cfi_offset %r12, -48
.Ltmp27:
	.cfi_offset %r13, -40
.Ltmp28:
	.cfi_offset %r14, -32
.Ltmp29:
	.cfi_offset %r15, -24
.Ltmp30:
	.cfi_offset %rbp, -16
	movl	%edx, %r13d
	movq	%rsi, %rbx
	movq	%rdi, %r15
	movq	8(%rbx), %rbp
	movzwl	152(%rbp), %edx
	movl	$-18, %eax
	cmpl	$65535, %edx            # imm = 0xFFFF
	je	.LBB6_11
# BB#1:                                 # %if.end
	movq	%rcx, 8(%rsp)           # 8-byte Spill
	movl	120(%rbp), %r14d
	subl	112(%rbp), %r14d
	movq	%rbp, %rdi
	callq	s_process_read_buf
	movl	%eax, %r12d
	movq	120(%rbp), %rcx
	subq	112(%rbp), %rcx
	xorl	%eax, %eax
	cmpq	%r14, %rcx
	jg	.LBB6_11
# BB#2:                                 # %if.end.18
	testl	%r12d, %r12d
	jne	.LBB6_4
# BB#3:                                 # %if.then.21
	movswl	152(%rbp), %r12d
.LBB6_4:                                # %if.end.24
	leal	4(%r12), %ecx
	cmpl	$2, %ecx
	jae	.LBB6_5
# BB#7:                                 # %sw.bb.26
	testl	%r13d, %r13d
	movq	%rbx, %rbp
	je	.LBB6_10
# BB#8:                                 # %if.then.27
	movq	8(%r15), %rdi
	movl	$st_scanner_state_dynamic, %esi
	movl	$.L.str.2, %edx
	callq	*72(%rdi)
	movq	%rax, %rbp
	movl	$-25, %eax
	testq	%rbp, %rbp
	je	.LBB6_11
# BB#9:                                 # %if.end.34
	movq	8(%r15), %rax
	movq	%rax, 1368(%rbp)
	movl	$1368, %edx             # imm = 0x558
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	callq	memcpy
.LBB6_10:                               # %if.end.37
	movq	%rbp, 24(%rsp)
	movl	$2048, %eax             # imm = 0x800
	addl	56(%r15), %eax
	movw	%ax, 16(%rsp)
	leaq	16(%rsp), %rcx
	movl	$1, %r8d
	movq	%r15, %rdi
	movl	%r12d, %esi
	movq	%rbx, %rdx
	movq	8(%rsp), %r9            # 8-byte Reload
	callq	s_handle_read_exception
	jmp	.LBB6_11
.LBB6_5:                                # %if.end.24
	cmpl	$-2, %r12d
	jne	.LBB6_11
# BB#6:                                 # %sw.bb.25
	movl	$-12, %eax
.LBB6_11:                               # %cleanup.44
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gs_scan_handle_refill, .Lfunc_end6-gs_scan_handle_refill
	.cfi_endproc

	.globl	gs_scan_string_token_options
	.align	16, 0x90
	.type	gs_scan_string_token_options,@function
gs_scan_string_token_options:           # @gs_scan_string_token_options
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp31:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp32:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp33:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp34:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp35:
	.cfi_def_cfa_offset 48
	subq	$1728, %rsp             # imm = 0x6C0
.Ltmp36:
	.cfi_def_cfa_offset 1776
.Ltmp37:
	.cfi_offset %rbx, -48
.Ltmp38:
	.cfi_offset %r12, -40
.Ltmp39:
	.cfi_offset %r14, -32
.Ltmp40:
	.cfi_offset %r15, -24
.Ltmp41:
	.cfi_offset %rbp, -16
	movl	%ecx, %ebp
	movq	%rdx, %r15
	movq	%rsi, %r12
	movq	%rdi, %r14
	movl	$-7, %ebx
	testb	$32, (%r12)
	je	.LBB7_7
# BB#1:                                 # %if.end
	leaq	1376(%rsp), %rbx
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	s_init
	movq	8(%r12), %rsi
	movl	4(%r12), %edx
	movq	%rbx, %rdi
	callq	sread_string
	orl	$1, %ebp
	movw	$800, 8(%rsp)           # imm = 0x320
	movl	$0, 12(%rsp)
	movq	%rbx, 16(%rsp)
	movl	$0, 36(%rsp)
	movl	$0, 24(%rsp)
	movl	%ebp, 32(%rsp)
	movw	$0, 1232(%rsp)
	movl	$0, 1248(%rsp)
	movb	$0, 1252(%rsp)
	leaq	8(%rsp), %rdx
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	gs_scan_token
	movl	%eax, %ebp
	cmpl	$2, %ebp
	jb	.LBB7_8
# BB#2:                                 # %if.end
	movl	$2, %ebx
	je	.LBB7_7
# BB#3:                                 # %if.end
	movl	$-18, %ebx
	cmpl	$3, %ebp
	je	.LBB7_6
# BB#4:                                 # %sw.default
	testl	%ebp, %ebp
	js	.LBB7_5
.LBB7_8:                                # %sw.bb
	leaq	1376(%rsp), %rdi
	callq	stell
	movl	%eax, %ecx
	addq	%rcx, 8(%r12)
	subl	%eax, 4(%r12)
	movl	%ebp, %ebx
	jmp	.LBB7_7
.LBB7_5:
	movl	%ebp, %ebx
.LBB7_6:                                # %if.then.14
	leaq	8(%rsp), %rsi
	leaq	152(%r14), %rdx
	movq	%r14, %rdi
	callq	gs_scanner_error_object
.LBB7_7:                                # %cleanup
	movl	%ebx, %eax
	addq	$1728, %rsp             # imm = 0x6C0
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gs_scan_string_token_options, .Lfunc_end7-gs_scan_string_token_options
	.cfi_endproc

	.globl	gs_scan_token
	.align	16, 0x90
	.type	gs_scan_token,@function
gs_scan_token:                          # @gs_scan_token
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp42:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp43:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp44:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp45:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp46:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp47:
	.cfi_def_cfa_offset 56
	subq	$1560, %rsp             # imm = 0x618
.Ltmp48:
	.cfi_def_cfa_offset 1616
.Ltmp49:
	.cfi_offset %rbx, -56
.Ltmp50:
	.cfi_offset %r12, -48
.Ltmp51:
	.cfi_offset %r13, -40
.Ltmp52:
	.cfi_offset %r14, -32
.Ltmp53:
	.cfi_offset %r15, -24
.Ltmp54:
	.cfi_offset %rbp, -16
	movq	%rdx, %rbp
	movq	%rsi, %r12
	movq	%rdi, 136(%rsp)         # 8-byte Spill
	movq	8(%rbp), %rax
	movq	%rax, 144(%rsp)         # 8-byte Spill
	xorl	%r8d, %r8d
	cmpq	$0, 112(%rdi)
	movl	$0, %eax
	je	.LBB8_2
# BB#1:                                 # %land.rhs
	cmpl	$1, 80(%rdi)
	setg	%al
.LBB8_2:                                # %land.end
	testb	%al, %al
	sete	%r14b
	movl	24(%rbp), %ebx
	movl	184(%rdi), %eax
	andl	$16, %eax
	movl	%eax, 64(%rsp)          # 4-byte Spill
	movl	%ebx, %ecx
	andl	$1, %ecx
	orl	%eax, %ecx
	movl	%ecx, 68(%rsp)          # 4-byte Spill
	movl	$4, %eax
	movl	$65535, %ecx            # imm = 0xFFFF
	cmovnel	%eax, %ecx
	movl	%ecx, 96(%rsp)          # 4-byte Spill
	cmpl	$0, 16(%rbp)
	je	.LBB8_3
# BB#4:                                 # %if.then
	movl	%ebx, %r15d
	leaq	624(%rdi), %rbx
	movq	624(%rdi), %rax
	cmpq	640(%rdi), %rax
	jae	.LBB8_6
# BB#5:                                 # %if.then.17
	addq	$16, %rax
	movq	%rax, (%rbx)
	jmp	.LBB8_9
.LBB8_3:
	movq	%r12, %rax
	jmp	.LBB8_10
.LBB8_6:                                # %if.else
	movq	%rdi, %r13
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	ref_stack_push
	movl	%eax, %r8d
	testl	%r8d, %r8d
	js	.LBB8_7
# BB#8:                                 # %if.else.if.end.27_crit_edge
	movq	(%rbx), %rax
	movq	%r13, %rdi
.LBB8_9:                                # %if.end.31
	movl	%r15d, %ebx
.LBB8_10:                               # %if.end.31
	movq	%rdi, 136(%rsp)         # 8-byte Spill
	movq	%rax, 88(%rsp)          # 8-byte Spill
	movzbl	%r14b, %eax
	orl	$100, %eax
	movl	%eax, 124(%rsp)         # 4-byte Spill
	andl	$2, %ebx
	cmpl	$0, 28(%rbp)
	je	.LBB8_20
# BB#11:                                # %if.then.34
	leaq	176(%rsp), %rdi
	movl	$1368, %edx             # imm = 0x558
	movq	%rbp, %rsi
	callq	memcpy
	cmpl	$0, 232(%rsp)
	jne	.LBB8_14
# BB#12:                                # %land.lhs.true
	movq	208(%rsp), %rcx
	leaq	236(%rsp), %rax
	cmpq	%rax, %rcx
	je	.LBB8_14
# BB#13:                                # %if.then.40
	movl	216(%rsp), %edx
	movl	224(%rsp), %esi
	subl	%ecx, %edx
	subl	%ecx, %esi
	movq	%rax, 208(%rsp)
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	andq	%rcx, %rdx
	leaq	236(%rsp,%rdx), %rax
	movq	%rax, 216(%rsp)
	andq	%rcx, %rsi
	leaq	236(%rsp,%rsi), %rax
	movq	%rax, 224(%rsp)
.LBB8_14:                               # %if.end.71
	movl	$-100, %r15d
	movl	204(%rsp), %eax
	decl	%eax
	cmpl	$3, %eax
	ja	.LBB8_338
# BB#15:                                # %if.end.71
	movq	%r12, 40(%rsp)          # 8-byte Spill
	movq	%rbp, 72(%rsp)          # 8-byte Spill
	movq	216(%rsp), %r8
	jmpq	*.LJTI8_0(,%rax,8)
.LBB8_18:                               # %sw.bb
	leaq	176(%rsp), %rdx
	movq	136(%rsp), %rdi         # 8-byte Reload
	movq	88(%rsp), %rsi          # 8-byte Reload
	callq	*1280(%rsp)
	movq	144(%rsp), %r14         # 8-byte Reload
	movq	112(%r14), %rdi
	movl	$3, %r8d
	cmpl	$3, %eax
	je	.LBB8_330
# BB#19:
	movl	%ebx, 100(%rsp)         # 4-byte Spill
	movq	120(%r14), %rsi
	movl	%eax, %ebx
	jmp	.LBB8_315
.LBB8_20:                               # %if.end.92
	movl	%ebx, 100(%rsp)         # 4-byte Spill
	movq	%r12, 40(%rsp)          # 8-byte Spill
	movl	16(%rbp), %eax
	movl	%eax, 192(%rsp)
	movl	20(%rbp), %eax
	movl	%eax, 196(%rsp)
	movups	(%rbp), %xmm0
	movaps	%xmm0, 176(%rsp)
	movl	24(%rbp), %eax
	movl	%eax, 200(%rsp)
	movw	$0, 1400(%rsp)
	movl	$0, 1416(%rsp)
	movb	$0, 1420(%rsp)
	movq	144(%rsp), %r14         # 8-byte Reload
	leaq	112(%r14), %r13
	movq	112(%r14), %rbx
	movq	120(%r14), %rsi
	leaq	120(%r14), %rcx
.LBB8_21:                               # %top.108.preheader
	leaq	176(%rsp), %r12
	movl	$-18, %r15d
	jmp	.LBB8_22
.LBB8_7:
	movl	%r8d, %r15d
	jmp	.LBB8_338
.LBB8_155:                              # %sw.bb.83
	movl	%ebx, 100(%rsp)         # 4-byte Spill
	movq	144(%rsp), %r14         # 8-byte Reload
	leaq	112(%r14), %r13
	movq	112(%r14), %rbx
	movq	120(%r14), %rdx
	leaq	120(%r14), %rsi
	leaq	491(%rsp), %r12
	jmp	.LBB8_156
.LBB8_17:                               # %if.end.71.cont_name_crit_edge
	movl	name_max_string(%rip), %eax
	movq	144(%rsp), %r14         # 8-byte Reload
	leaq	112(%r14), %rcx
	leaq	120(%r14), %rsi
	movl	124(%rsp), %edx         # 4-byte Reload
	movl	96(%rsp), %r15d         # 4-byte Reload
	jmp	.LBB8_227
.LBB8_16:                               # %if.end.71.for.cond.preheader_crit_edge
	leaq	216(%rsp), %rax
	leaq	224(%rsp), %r12
	leaq	1264(%rsp), %rcx
	xorl	%esi, %esi
	xorl	%edi, %edi
	movq	144(%rsp), %r14         # 8-byte Reload
.LBB8_40:                               # %for.cond.preheader
	movq	%rax, 128(%rsp)         # 8-byte Spill
	movq	%r12, 112(%rsp)         # 8-byte Spill
	movq	%rcx, 32(%rsp)          # 8-byte Spill
	movq	%rsi, 56(%rsp)          # 8-byte Spill
	movq	%rdi, 80(%rsp)          # 8-byte Spill
	leaq	1272(%rsp), %rbp
	leaq	112(%r14), %r13
	movq	%r13, 48(%rsp)          # 8-byte Spill
	movl	124(%rsp), %r15d        # 4-byte Reload
	jmp	.LBB8_41
	.align	16, 0x90
.LBB8_71:                               # %cleanup.thread
                                        #   in Loop: Header=BB8_41 Depth=1
	movq	216(%rsp), %r8
.LBB8_41:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_57 Depth 2
	decq	%r8
	movq	%r8, 160(%rsp)
	movq	224(%rsp), %rax
	decq	%rax
	movq	%rax, 168(%rsp)
	movq	1272(%rsp), %rax
	movzwl	152(%r14), %ecx
	cmpl	$65535, %ecx            # imm = 0xFFFF
	sete	%cl
	movzbl	%cl, %ecx
	movq	%rbp, %rdi
	movq	%r13, %rsi
	leaq	152(%rsp), %rdx
	callq	*16(%rax)
	testl	%ebx, %ebx
	jne	.LBB8_43
# BB#42:                                # %if.then.230
                                        #   in Loop: Header=BB8_41 Depth=1
	movq	160(%rsp), %rcx
	incq	%rcx
	movq	%rcx, 216(%rsp)
.LBB8_43:                               # %if.end.235
                                        #   in Loop: Header=BB8_41 Depth=1
	testl	%eax, %eax
	jne	.LBB8_44
# BB#46:                                # %sw.bb.236
                                        #   in Loop: Header=BB8_41 Depth=1
	movswl	152(%r14), %eax
	testl	%eax, %eax
	js	.LBB8_47
# BB#70:                                # %if.end.250
                                        #   in Loop: Header=BB8_41 Depth=1
	movq	%r14, %rdi
	callq	s_process_read_buf
	jmp	.LBB8_71
	.align	16, 0x90
.LBB8_44:                               # %if.end.235
                                        #   in Loop: Header=BB8_41 Depth=1
	cmpl	$1, %eax
	jne	.LBB8_45
# BB#50:                                # %sw.bb.252
                                        #   in Loop: Header=BB8_41 Depth=1
	testl	%ebx, %ebx
	jne	.LBB8_71
# BB#51:                                # %if.then.254
                                        #   in Loop: Header=BB8_41 Depth=1
	movq	%r14, 144(%rsp)         # 8-byte Spill
	movq	128(%rsp), %rax         # 8-byte Reload
	movq	(%rax), %r14
	movq	(%r12), %rbp
	movq	208(%rsp), %r12
	movl	%ebp, %r13d
	subl	%r12d, %r13d
	cmpl	$9, %r13d
	ja	.LBB8_61
# BB#52:                                # %cond.end.6.i.thread
                                        #   in Loop: Header=BB8_41 Depth=1
	movq	%r14, (%rax)
	movl	$20, %r15d
	jmp	.LBB8_53
.LBB8_61:                               # %cond.end.6.i
                                        #   in Loop: Header=BB8_41 Depth=1
	leal	(%r13,%r13), %r15d
	cmpl	$8388607, %r13d         # imm = 0x7FFFFF
	movl	$16777216, %ecx         # imm = 0x1000000
	cmoval	%ecx, %r15d
	movq	%r14, (%rax)
	cmpl	$16777216, %r13d        # imm = 0x1000000
	jae	.LBB8_62
.LBB8_53:                               # %while.cond.preheader.i
                                        #   in Loop: Header=BB8_41 Depth=1
	movl	%ebx, 100(%rsp)         # 4-byte Spill
	subl	%r12d, %ebp
	movq	1264(%rsp), %rdi
	cmpl	$0, 232(%rsp)
	je	.LBB8_63
# BB#54:                                # %if.then.i.675
                                        #   in Loop: Header=BB8_41 Depth=1
	movl	$.L.str.5, %r8d
	movq	%r12, %rsi
	movl	%ebp, %edx
	movl	%r15d, %ecx
	callq	*152(%rdi)
	movq	%rax, %rbx
	testq	%rbx, %rbx
	jne	.LBB8_65
	jmp	.LBB8_55
.LBB8_63:                               # %if.else.i.679
                                        #   in Loop: Header=BB8_41 Depth=1
	movl	$.L.str.5, %edx
	movl	%r15d, %esi
	callq	*136(%rdi)
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB8_55
# BB#64:                                # %if.end.15.i.684
                                        #   in Loop: Header=BB8_41 Depth=1
	movq	208(%rsp), %rsi
	cmpl	%r15d, %ebp
	cmovael	%r15d, %ebp
	movl	%ebp, %edx
	movq	%rbx, %rdi
	callq	memcpy
	movl	$1, 232(%rsp)
.LBB8_65:                               # %dynamic_resize.exit692.thread
                                        #   in Loop: Header=BB8_41 Depth=1
	subq	%r12, %r14
	movq	%rbx, 208(%rsp)
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	andq	%rax, %r14
	leaq	(%r14,%rbx), %rax
	jmp	.LBB8_66
.LBB8_55:                               # %dynamic_resize.exit692
                                        #   in Loop: Header=BB8_41 Depth=1
	cmpl	%r13d, %r15d
	jbe	.LBB8_60
# BB#56:                                # %while.body.lr.ph.i
                                        #   in Loop: Header=BB8_41 Depth=1
	movl	$1, %r14d
	subl	%r13d, %r14d
	.align	16, 0x90
.LBB8_57:                               # %while.body.i
                                        #   Parent Loop BB8_41 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leal	(%r14,%r15), %eax
	shrl	%eax
	subl	%eax, %r15d
	movq	112(%rsp), %rax         # 8-byte Reload
	movl	(%rax), %ebp
	movq	208(%rsp), %r12
	subl	%r12d, %ebp
	movq	128(%rsp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, 104(%rsp)         # 8-byte Spill
	movq	1264(%rsp), %rdi
	cmpl	$0, 232(%rsp)
	je	.LBB8_67
# BB#58:                                # %if.then.i.414
                                        #   in Loop: Header=BB8_57 Depth=2
	movl	$.L.str.5, %r8d
	movq	%r12, %rsi
	movl	%ebp, %edx
	movl	%r15d, %ecx
	callq	*152(%rdi)
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB8_59
	jmp	.LBB8_69
	.align	16, 0x90
.LBB8_67:                               # %if.else.i
                                        #   in Loop: Header=BB8_57 Depth=2
	movl	$.L.str.5, %edx
	movl	%r15d, %esi
	callq	*136(%rdi)
	movq	%rax, %rbx
	testq	%rbx, %rbx
	jne	.LBB8_68
.LBB8_59:                               # %dynamic_resize.exit
                                        #   in Loop: Header=BB8_57 Depth=2
	cmpl	%r13d, %r15d
	ja	.LBB8_57
	jmp	.LBB8_60
.LBB8_68:                               # %if.end.15.i
                                        #   in Loop: Header=BB8_41 Depth=1
	movq	208(%rsp), %rsi
	cmpl	%r15d, %ebp
	cmovael	%r15d, %ebp
	movl	%ebp, %edx
	movq	%rbx, %rdi
	callq	memcpy
	movl	$1, 232(%rsp)
.LBB8_69:                               # %dynamic_resize.exit.thread
                                        #   in Loop: Header=BB8_41 Depth=1
	movq	104(%rsp), %rcx         # 8-byte Reload
	subl	%r12d, %ecx
	movq	%rbx, 208(%rsp)
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	andq	%rax, %rcx
	leaq	(%rcx,%rbx), %rax
.LBB8_66:                               # %cleanup.thread
                                        #   in Loop: Header=BB8_41 Depth=1
	movq	%rax, 216(%rsp)
	movl	%r15d, %eax
	addq	%rbx, %rax
	movq	%rax, 224(%rsp)
	movq	144(%rsp), %r14         # 8-byte Reload
	movl	100(%rsp), %ebx         # 4-byte Reload
	movl	124(%rsp), %r15d        # 4-byte Reload
	movq	48(%rsp), %r13          # 8-byte Reload
	movq	112(%rsp), %r12         # 8-byte Reload
	leaq	1272(%rsp), %rbp
	movq	216(%rsp), %r8
	jmp	.LBB8_41
.LBB8_60:                               # %if.then.261
	movl	$4, 204(%rsp)
	movl	$-25, %r8d
	jmp	.LBB8_331
.LBB8_45:                               # %cleanup.thread780
	movl	%r15d, 124(%rsp)        # 4-byte Spill
	movl	%ebx, 100(%rsp)         # 4-byte Spill
.LBB8_73:                               # %for.end
	movq	112(%r14), %rdi
	leal	4(%rax), %ecx
	cmpl	$2, %ecx
	jae	.LBB8_74
# BB#339:                               # %sw.bb.278
	movl	$4, 204(%rsp)
	jmp	.LBB8_329
.LBB8_47:                               # %if.then.241
	movzwl	%ax, %edx
	testl	%ebx, %ebx
	sete	%cl
	cmpl	$65535, %edx            # imm = 0xFFFF
	jne	.LBB8_72
# BB#48:                                # %if.then.241
	testb	%cl, %cl
	jne	.LBB8_72
# BB#49:                                # %if.then.246
	movl	$4, 204(%rsp)
	movl	$3, %r8d
	jmp	.LBB8_331
.LBB8_74:                               # %for.end
	movq	%r12, %rcx
	movl	$-18, %r15d
	cmpl	$-1, %eax
	jne	.LBB8_317
# BB#75:                                # %sw.epilog.281
	movq	%r13, %r12
	movq	%rdi, 80(%rsp)          # 8-byte Spill
	movq	136(%rsp), %r13         # 8-byte Reload
	movq	120(%r14), %rax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	movq	128(%rsp), %rax         # 8-byte Reload
	movq	(%rax), %r15
	movq	208(%rsp), %rsi
	subq	%rsi, %r15
	movq	(%rcx), %rbx
	subq	%rsi, %rbx
	movq	1264(%rsp), %rdi
	cmpl	$0, 232(%rsp)
	je	.LBB8_78
# BB#76:                                # %if.then.i.i
	movl	$.L.str.5, %r8d
	movl	%ebx, %edx
	movl	%r15d, %ecx
	callq	*152(%rdi)
	movq	%rax, %rbp
	testq	%rbp, %rbp
	jne	.LBB8_80
	jmp	.LBB8_77
.LBB8_72:                               # %cleanup
	movl	%r15d, 124(%rsp)        # 4-byte Spill
	movl	%ebx, 100(%rsp)         # 4-byte Spill
	movl	$-18, %ebx
	movzwl	%ax, %ecx
	cmpl	$65535, %ecx            # imm = 0xFFFF
	movq	80(%rsp), %rdi          # 8-byte Reload
	movq	56(%rsp), %rsi          # 8-byte Reload
	jne	.LBB8_73
	jmp	.LBB8_315
.LBB8_62:                               # %cleanup.thread782
	movl	$-13, %r15d
	jmp	.LBB8_251
.LBB8_78:                               # %if.else.i.i
	movl	$.L.str.5, %edx
	movl	%r15d, %esi
	callq	*136(%rdi)
	movq	%rax, %rbp
	testq	%rbp, %rbp
	je	.LBB8_77
# BB#79:                                # %if.end.15.i.i
	movq	208(%rsp), %rsi
	cmpl	%r15d, %ebx
	cmovaeq	%r15, %rbx
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	andq	%rax, %rbx
	movq	%rbp, %rdi
	movq	%rbx, %rdx
	callq	memcpy
	movl	$1, 232(%rsp)
.LBB8_80:                               # %dynamic_make_string.exit
	movq	%rbp, 208(%rsp)
	movq	%r15, %rax
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	andq	%rcx, %rax
	leaq	(%rax,%rbp), %rax
	movq	%rax, 216(%rsp)
	movq	%rax, 224(%rsp)
	movq	88(%rsp), %rbx          # 8-byte Reload
	movq	%rbp, 8(%rbx)
	movq	32(%rsp), %rax          # 8-byte Reload
	movq	(%rax), %rdi
	callq	imemory_space
	orl	76(%r13), %eax
	orl	$112, %eax
	addl	$4608, %eax             # imm = 0x1200
	movw	%ax, (%rbx)
	movl	%r15d, 4(%rbx)
	xorl	%r15d, %r15d
	movq	144(%rsp), %r14         # 8-byte Reload
	movq	80(%rsp), %rdi          # 8-byte Reload
	movq	56(%rsp), %rsi          # 8-byte Reload
	jmp	.LBB8_187
.LBB8_77:                               # %if.then.288
	decq	(%r12)
	movl	$4, 204(%rsp)
	movl	$-25, %r8d
	jmp	.LBB8_332
.LBB8_144:                              # %while.cond.preheader
                                        #   in Loop: Header=BB8_22 Depth=1
	movq	%rsi, 56(%rsp)          # 8-byte Spill
	leaq	1(%rdi), %rcx
	movq	88(%rsp), %rsi          # 8-byte Reload
.LBB8_145:                              # %while.cond
                                        #   Parent Loop BB8_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rcx, %r8
	cmpq	56(%rsp), %r8           # 8-byte Folded Reload
	jae	.LBB8_341
# BB#146:                               # %while.body
                                        #   in Loop: Header=BB8_145 Depth=2
	movzbl	(%r8), %eax
	cmpl	$10, %eax
	movq	72(%rsp), %rbp          # 8-byte Reload
	je	.LBB8_147
# BB#148:                               # %while.body
                                        #   in Loop: Header=BB8_145 Depth=2
	cmpl	$12, %eax
	je	.LBB8_147
# BB#149:                               # %while.body
                                        #   in Loop: Header=BB8_145 Depth=2
	leaq	1(%r8), %rcx
	cmpl	$13, %eax
	jne	.LBB8_145
# BB#150:                               # %sw.bb.669
                                        #   in Loop: Header=BB8_22 Depth=1
	movq	%rdi, %rcx
	movq	%r8, %rbx
	decq	%rbx
	movzbl	2(%rbx), %eax
	cmpl	$10, %eax
	jne	.LBB8_152
# BB#151:                               #   in Loop: Header=BB8_22 Depth=1
	addq	$2, %rbx
	jmp	.LBB8_153
.LBB8_147:                              #   in Loop: Header=BB8_22 Depth=1
	movq	%rdi, %rcx
	movq	%r8, %rbx
.LBB8_154:                              # %cleanup.715
                                        #   in Loop: Header=BB8_22 Depth=1
	movq	%rsi, 88(%rsp)          # 8-byte Spill
	movq	136(%rsp), %rdi         # 8-byte Reload
	movq	%r12, %rdx
	callq	scan_comment
	xorl	%r8d, %r8d
	testl	%eax, %eax
	movq	56(%rsp), %rsi          # 8-byte Reload
	movq	112(%rsp), %rcx         # 8-byte Reload
	je	.LBB8_22
	jmp	.LBB8_163
.LBB8_152:                              # %select.mid
                                        #   in Loop: Header=BB8_22 Depth=1
	movq	%r8, %rbx
.LBB8_153:                              # %select.end
                                        #   in Loop: Header=BB8_22 Depth=1
	movq	72(%rsp), %rbp          # 8-byte Reload
	jmp	.LBB8_154
.LBB8_22:                               # %top.108.outer
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_23 Depth 2
                                        #     Child Loop BB8_145 Depth 2
	movq	%rcx, 112(%rsp)         # 8-byte Spill
	movq	%rbp, 72(%rsp)          # 8-byte Spill
	movq	%rbx, %rdi
.LBB8_23:                               # %top.108
                                        #   Parent Loop BB8_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	%rsi, %rdi
	jae	.LBB8_24
# BB#25:                                # %cond.false
                                        #   in Loop: Header=BB8_23 Depth=2
	movzbl	1(%rdi), %eax
	incq	%rdi
	jmp	.LBB8_26
.LBB8_24:                               # %cond.true
                                        #   in Loop: Header=BB8_23 Depth=2
	movq	%rdi, (%r13)
	movl	$1, %esi
	movq	%r14, %rdi
	movl	%r8d, %ebx
	callq	spgetcc
	movl	%ebx, %r8d
	movl	%eax, 252(%r14)
	movq	(%r13), %rdi
	movq	112(%rsp), %rcx         # 8-byte Reload
	movq	(%rcx), %rsi
.LBB8_26:                               # %cond.end
                                        #   in Loop: Header=BB8_23 Depth=2
	leal	2(%rax), %ecx
	cmpl	$161, %ecx
	ja	.LBB8_195
# BB#27:                                # %cond.end
                                        #   in Loop: Header=BB8_23 Depth=2
	xorl	%edx, %edx
	jmpq	*.LJTI8_1(,%rcx,8)
.LBB8_191:                              # %sw.bb.860
	movq	136(%rsp), %rax         # 8-byte Reload
	cmpq	$0, 112(%rax)
	je	.LBB8_197
# BB#192:                               # %land.lhs.true.866
	movq	136(%rsp), %rax         # 8-byte Reload
	cmpl	$2, 80(%rax)
	jl	.LBB8_197
# BB#193:                               # %if.then.870
	movq	%rdi, (%r13)
	leaq	176(%rsp), %rdx
	movq	136(%rsp), %rdi         # 8-byte Reload
	movq	88(%rsp), %rsi          # 8-byte Reload
	callq	scan_binary_token
	movq	(%r13), %rdi
	movl	$3, %r8d
	cmpl	$3, %eax
	je	.LBB8_330
# BB#194:
	movq	112(%rsp), %rcx         # 8-byte Reload
	movq	(%rcx), %rsi
	movl	%eax, %ebx
	jmp	.LBB8_315
.LBB8_195:                              # %sw.default.886
	testl	%eax, %eax
	jns	.LBB8_197
# BB#196:                               # %if.then.889
	movq	136(%rsp), %rax         # 8-byte Reload
	movq	8(%rax), %rax
	movq	192(%rax), %rax
	movq	%rdi, %rbx
	movq	120(%rax), %rdi
	callq	names_memory
	movq	%rbx, %rdi
	movl	$0, 232(%rsp)
	leaq	236(%rsp), %rcx
	leaq	1259(%rsp), %rdx
	movq	%rdx, 224(%rsp)
	movq	%rcx, 208(%rsp)
	movq	%rcx, 216(%rsp)
	movq	%rax, 1264(%rsp)
	movl	$0, 204(%rsp)
	jmp	.LBB8_329
.LBB8_316:                              # %if.then.1261.loopexit1507
	movl	$-12, %r15d
	jmp	.LBB8_317
.LBB8_172:                              # %sw.bb.770
	cmpl	$0, 192(%rsp)
	je	.LBB8_173
# BB#174:                               # %if.then.774
	movl	$3, %r8d
	cmpl	$0, 100(%rsp)           # 4-byte Folded Reload
	je	.LBB8_317
	jmp	.LBB8_330
.LBB8_28:                               # %sw.bb.126
	movl	$4, %eax
	cmpl	$0, 68(%rsp)            # 4-byte Folded Reload
	je	.LBB8_29
.LBB8_197:                              # %begin_name
	movq	$0, 1272(%rsp)
.LBB8_198:                              # %do_name
	movl	124(%rsp), %ebx         # 4-byte Reload
	movl	96(%rsp), %r15d         # 4-byte Reload
.LBB8_199:                              # %do_name
	movq	%rdi, 208(%rsp)
	movl	$0, 232(%rsp)
	leaq	-1(%rsi), %rax
	movq	%rdi, %r8
	.align	16, 0x90
.LBB8_200:                              # %do.body.910
                                        # =>This Inner Loop Header: Depth=1
	cmpq	%rax, %r8
	jae	.LBB8_204
# BB#201:                               # %do.cond.915
                                        #   in Loop: Header=BB8_200 Depth=1
	movzbl	1(%r8), %r9d
	incq	%r8
	cmpl	%r15d, %r9d
	je	.LBB8_200
# BB#202:                               # %do.cond.915
                                        #   in Loop: Header=BB8_200 Depth=1
	movzbl	scan_char_array+4(%r9), %ecx
	cmpl	%ebx, %ecx
	jbe	.LBB8_200
# BB#203:                               # %cleanup.cont.930
	movl	%ebx, 124(%rsp)         # 4-byte Spill
	movb	scan_char_array+4(%r9), %al
	movq	%r8, %rdi
	jmp	.LBB8_140
.LBB8_204:                              # %dyn_name
	movl	%ebx, 124(%rsp)         # 4-byte Spill
	movq	%r14, 144(%rsp)         # 8-byte Spill
	movq	%r8, (%r13)
	movq	%r13, 48(%rsp)          # 8-byte Spill
	incq	%r8
	movq	%r8, 128(%rsp)          # 8-byte Spill
	movq	%r8, 224(%rsp)
	movq	136(%rsp), %rax         # 8-byte Reload
	movq	8(%rax), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	callq	names_memory
	movq	%rax, 1264(%rsp)
	movq	208(%rsp), %rsi
	movq	224(%rsp), %rbp
	movl	name_max_string(%rip), %edx
	movl	%ebp, %r13d
	subl	%esi, %r13d
	movl	$20, %r14d
	cmpl	$10, %r13d
	jb	.LBB8_206
# BB#205:                               # %cond.false.i.436
	movl	%edx, %ecx
	shrl	%ecx
	leal	(%r13,%r13), %r14d
	cmpl	%ecx, %r13d
	cmovael	%edx, %r14d
.LBB8_206:                              # %cond.end.6.i.440
	movq	%rbp, 216(%rsp)
	movl	$-13, %ebx
	cmpl	%edx, %r13d
	jae	.LBB8_215
# BB#207:                               # %while.cond.preheader.i.445
	subq	%rsi, %rbp
	cmpl	$0, 232(%rsp)
	je	.LBB8_220
# BB#208:                               # %if.then.i.706
	movl	$.L.str.5, %r8d
	movq	%rax, %rdi
	movl	%ebp, %edx
	movl	%r14d, %ecx
	callq	*152(%rax)
	movq	%rax, %rbx
	testq	%rbx, %rbx
	jne	.LBB8_222
	jmp	.LBB8_209
.LBB8_220:                              # %if.else.i.710
	movl	$.L.str.5, %edx
	movq	%rax, %rdi
	movl	%r14d, %esi
	callq	*136(%rax)
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB8_209
# BB#221:                               # %if.end.15.i.715
	movq	208(%rsp), %rsi
	cmpl	%r14d, %ebp
	movl	%r14d, %eax
	cmovbl	%ebp, %eax
	movl	%eax, %edx
	movq	%rbx, %rdi
	callq	memcpy
	movl	$1, 232(%rsp)
.LBB8_222:                              # %dynamic_resize.exit723.thread
	movq	%rbx, 208(%rsp)
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	andq	%rax, %rbp
	leaq	(%rbp,%rbx), %r8
	movq	%r8, 216(%rsp)
	movl	%r14d, %eax
	addq	%rbx, %rax
	movl	100(%rsp), %ebx         # 4-byte Reload
	movq	48(%rsp), %rcx          # 8-byte Reload
	movq	112(%rsp), %rsi         # 8-byte Reload
.LBB8_226:                              # %if.end.958
	movq	%rax, 224(%rsp)
	movq	144(%rsp), %r14         # 8-byte Reload
	movl	124(%rsp), %edx         # 4-byte Reload
	movl	name_max_string(%rip), %eax
.LBB8_227:                              # %cont_name
	movl	%eax, 32(%rsp)          # 4-byte Spill
	movq	%rsi, 112(%rsp)         # 8-byte Spill
	movq	%rcx, 48(%rsp)          # 8-byte Spill
	movq	(%rcx), %rdi
	movq	(%rsi), %rsi
	shrl	%eax
	movl	%eax, 28(%rsp)          # 4-byte Spill
	jmp	.LBB8_228
	.align	16, 0x90
.LBB8_256:                              # %if.end.1018
                                        #   in Loop: Header=BB8_228 Depth=1
	movb	%r9b, (%r8)
	incq	%r8
.LBB8_228:                              # %while.cond.967
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_243 Depth 2
	movl	%ebx, %r12d
	cmpq	%rsi, %rdi
	jae	.LBB8_229
# BB#230:                               # %cond.false.983
                                        #   in Loop: Header=BB8_228 Depth=1
	movzbl	1(%rdi), %r9d
	incq	%rdi
	jmp	.LBB8_231
	.align	16, 0x90
.LBB8_229:                              # %cond.true.970
                                        #   in Loop: Header=BB8_228 Depth=1
	movl	%edx, %r13d
	movq	48(%rsp), %rbp          # 8-byte Reload
	movq	%rdi, (%rbp)
	movl	$1, %esi
	movq	%r14, %rdi
	movq	%r8, %rbx
	callq	spgetcc
	movq	%rbx, %r8
	movl	%eax, %r9d
	movl	%r9d, 252(%r14)
	movq	(%rbp), %rdi
	movl	%r13d, %edx
	movq	112(%rsp), %rax         # 8-byte Reload
	movq	(%rax), %rsi
.LBB8_231:                              # %cond.end.986
                                        #   in Loop: Header=BB8_228 Depth=1
	cmpl	%r15d, %r9d
	je	.LBB8_234
# BB#232:                               # %cond.end.986
                                        #   in Loop: Header=BB8_228 Depth=1
	movslq	%r9d, %rax
	movb	scan_char_array+4(%rax), %al
	movzbl	%al, %ecx
	cmpl	%edx, %ecx
	ja	.LBB8_233
.LBB8_234:                              # %while.body.997
                                        #   in Loop: Header=BB8_228 Depth=1
	movq	224(%rsp), %r13
	cmpq	%r13, %r8
	je	.LBB8_236
# BB#235:                               #   in Loop: Header=BB8_228 Depth=1
	movl	%r12d, %ebx
	jmp	.LBB8_256
	.align	16, 0x90
.LBB8_236:                              # %if.then.1002
                                        #   in Loop: Header=BB8_228 Depth=1
	movq	%rdi, 80(%rsp)          # 8-byte Spill
	movl	%edx, 124(%rsp)         # 4-byte Spill
	movq	%r14, 144(%rsp)         # 8-byte Spill
	movq	208(%rsp), %rbp
	movl	%r13d, %r14d
	subl	%ebp, %r14d
	movl	$20, %r15d
	cmpl	$10, %r14d
	movl	32(%rsp), %eax          # 4-byte Reload
	jb	.LBB8_238
# BB#237:                               # %cond.false.i.517
                                        #   in Loop: Header=BB8_228 Depth=1
	leal	(%r14,%r14), %r15d
	cmpl	28(%rsp), %r14d         # 4-byte Folded Reload
	cmovael	%eax, %r15d
.LBB8_238:                              # %cond.end.6.i.521
                                        #   in Loop: Header=BB8_228 Depth=1
	movq	%r8, 216(%rsp)
	movl	$-13, %ebx
	cmpl	%eax, %r14d
	jae	.LBB8_247
# BB#239:                               # %while.cond.preheader.i.526
                                        #   in Loop: Header=BB8_228 Depth=1
	movq	%r8, 128(%rsp)          # 8-byte Spill
	movq	%r9, 104(%rsp)          # 8-byte Spill
	movq	%rsi, 56(%rsp)          # 8-byte Spill
	movl	%r12d, 100(%rsp)        # 4-byte Spill
	subl	%ebp, %r13d
	movq	1264(%rsp), %rdi
	cmpl	$0, 232(%rsp)
	je	.LBB8_252
# BB#240:                               # %if.then.i.737
                                        #   in Loop: Header=BB8_228 Depth=1
	movl	$.L.str.5, %r8d
	movq	%rbp, %rsi
	movl	%r13d, %edx
	movl	%r15d, %ecx
	callq	*152(%rdi)
	movq	%rax, %rbx
	testq	%rbx, %rbx
	jne	.LBB8_254
	jmp	.LBB8_241
.LBB8_252:                              # %if.else.i.741
                                        #   in Loop: Header=BB8_228 Depth=1
	movl	$.L.str.5, %edx
	movl	%r15d, %esi
	callq	*136(%rdi)
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB8_241
# BB#253:                               # %if.end.15.i.746
                                        #   in Loop: Header=BB8_228 Depth=1
	movq	208(%rsp), %rsi
	cmpl	%r15d, %r13d
	cmovael	%r15d, %r13d
	movl	%r13d, %edx
	movq	%rbx, %rdi
	callq	memcpy
	movl	$1, 232(%rsp)
.LBB8_254:                              # %dynamic_resize.exit754.thread
                                        #   in Loop: Header=BB8_228 Depth=1
	movq	128(%rsp), %r8          # 8-byte Reload
	subq	%rbp, %r8
	movq	%rbx, 208(%rsp)
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	andq	%rax, %r8
	leaq	(%r8,%rbx), %r8
	movq	%r8, 216(%rsp)
	movl	%r15d, %eax
	addq	%rbx, %rax
	movq	144(%rsp), %r14         # 8-byte Reload
	movl	96(%rsp), %r15d         # 4-byte Reload
	movq	80(%rsp), %rdi          # 8-byte Reload
	movq	56(%rsp), %rsi          # 8-byte Reload
	movq	104(%rsp), %r9          # 8-byte Reload
	jmp	.LBB8_255
.LBB8_241:                              # %dynamic_resize.exit754
                                        #   in Loop: Header=BB8_228 Depth=1
	movl	$-25, %ebx
	cmpl	%r14d, %r15d
	jbe	.LBB8_247
# BB#242:                               # %while.body.lr.ph.i.528
                                        #   in Loop: Header=BB8_228 Depth=1
	movl	$1, %r13d
	subl	%r14d, %r13d
	.align	16, 0x90
.LBB8_243:                              # %while.body.i.537
                                        #   Parent Loop BB8_228 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leal	(%r13,%r15), %eax
	shrl	%eax
	subl	%eax, %r15d
	movl	224(%rsp), %ebp
	movq	208(%rsp), %r12
	movq	216(%rsp), %rax
	movq	%rax, 128(%rsp)         # 8-byte Spill
	subl	%r12d, %ebp
	movq	1264(%rsp), %rdi
	cmpl	$0, 232(%rsp)
	je	.LBB8_257
# BB#244:                               # %if.then.i.553
                                        #   in Loop: Header=BB8_243 Depth=2
	movl	$.L.str.5, %r8d
	movq	%r12, %rsi
	movl	%ebp, %edx
	movl	%r15d, %ecx
	callq	*152(%rdi)
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB8_245
	jmp	.LBB8_259
	.align	16, 0x90
.LBB8_257:                              # %if.else.i.557
                                        #   in Loop: Header=BB8_243 Depth=2
	movl	$.L.str.5, %edx
	movl	%r15d, %esi
	callq	*136(%rdi)
	movq	%rax, %rbx
	testq	%rbx, %rbx
	jne	.LBB8_258
.LBB8_245:                              # %dynamic_resize.exit570
                                        #   in Loop: Header=BB8_243 Depth=2
	cmpl	%r14d, %r15d
	ja	.LBB8_243
	jmp	.LBB8_246
.LBB8_258:                              # %if.end.15.i.562
                                        #   in Loop: Header=BB8_228 Depth=1
	movq	208(%rsp), %rsi
	cmpl	%r15d, %ebp
	cmovael	%r15d, %ebp
	movl	%ebp, %edx
	movq	%rbx, %rdi
	callq	memcpy
	movl	$1, 232(%rsp)
.LBB8_259:                              # %dynamic_resize.exit570.thread
                                        #   in Loop: Header=BB8_228 Depth=1
	movq	144(%rsp), %r14         # 8-byte Reload
	movq	80(%rsp), %rdi          # 8-byte Reload
	movq	56(%rsp), %rsi          # 8-byte Reload
	movq	104(%rsp), %r9          # 8-byte Reload
	movq	128(%rsp), %rcx         # 8-byte Reload
	subl	%r12d, %ecx
	movq	%rbx, 208(%rsp)
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	andq	%rax, %rcx
	leaq	(%rcx,%rbx), %r8
	movq	%r8, 216(%rsp)
	movl	%r15d, %eax
	addq	%rbx, %rax
	movl	96(%rsp), %r15d         # 4-byte Reload
.LBB8_255:                              # %if.end.1015
                                        #   in Loop: Header=BB8_228 Depth=1
	movq	%rax, 224(%rsp)
	movl	100(%rsp), %ebx         # 4-byte Reload
	movl	124(%rsp), %edx         # 4-byte Reload
	jmp	.LBB8_256
.LBB8_246:
	movl	$-25, %ebx
.LBB8_247:                              # %if.then.1007
	movl	%ebx, %r15d
	cmpl	$0, 232(%rsp)
	jne	.LBB8_250
# BB#248:                               # %land.lhs.true.i.576
	movq	208(%rsp), %rsi
	leaq	236(%rsp), %r14
	cmpq	%r14, %rsi
	je	.LBB8_250
# BB#249:                               # %if.then.i.587
	movl	224(%rsp), %eax
	subl	%esi, %eax
	cltq
	cmpq	$1023, %rax             # imm = 0x3FF
	movl	$1023, %ebp             # imm = 0x3FF
	cmovbeq	%rax, %rbp
	movq	%r14, %rdi
	movq	%rbp, %rdx
	callq	memcpy
	leaq	236(%rsp,%rbp), %rax
	movq	%rax, 216(%rsp)
	movq	%r14, 208(%rsp)
.LBB8_250:                              # %dynamic_save.exit589
	cmpl	$-25, %r15d
	jne	.LBB8_251
# BB#260:                               # %if.end.1012
	movq	80(%rsp), %rdi          # 8-byte Reload
	decq	%rdi
.LBB8_261:                              # %pause_ret
	movl	$3, 204(%rsp)
	movl	$-25, %r8d
	movq	144(%rsp), %r14         # 8-byte Reload
	jmp	.LBB8_330
.LBB8_251:
	movq	144(%rsp), %r14         # 8-byte Reload
	movq	80(%rsp), %rdi          # 8-byte Reload
	jmp	.LBB8_317
.LBB8_233:
	movl	%edx, 124(%rsp)         # 4-byte Spill
	movl	%r12d, 100(%rsp)        # 4-byte Spill
.LBB8_140:                              # %nx
	movzbl	%al, %eax
	addl	$-101, %eax
	cmpl	$3, %eax
	jbe	.LBB8_262
# BB#141:
	movq	%r8, %r12
	jmp	.LBB8_275
.LBB8_262:                              # %nx
	jmpq	*.LJTI8_2(,%rax,8)
.LBB8_266:                              # %sw.bb.1032
	cmpl	$13, %r9d
	jne	.LBB8_267
# BB#268:                               # %if.then.1035
	cmpq	%rsi, %rdi
	jae	.LBB8_269
# BB#271:                               # %if.else.1046
	movq	%r8, %r12
	movzbl	1(%rdi), %eax
	cmpl	$10, %eax
	jne	.LBB8_275
# BB#272:
	incq	%rdi
	jmp	.LBB8_275
.LBB8_263:                              # %sw.bb.1025
	cmpl	%r15d, %r9d
	jne	.LBB8_265
# BB#264:
	movq	%r8, %r12
	jmp	.LBB8_275
.LBB8_265:                              # %sw.bb.1030
	movq	%r8, %r12
	decq	%rdi
	jmp	.LBB8_275
.LBB8_273:                              # %sw.bb.1056
	leal	4(%r9), %eax
	cmpl	$2, %eax
	jb	.LBB8_325
# BB#274:                               # %sw.bb.1056
	movq	%r8, %r12
	movl	$-12, %r15d
	cmpl	$-2, %r9d
	je	.LBB8_317
	jmp	.LBB8_275
.LBB8_209:                              # %dynamic_resize.exit723
	movl	$-25, %ebx
	cmpl	%r13d, %r14d
	jbe	.LBB8_215
# BB#210:                               # %while.body.lr.ph.i.447
	movl	$1, %r12d
	subl	%r13d, %r12d
.LBB8_211:                              # %while.body.i.456
                                        # =>This Inner Loop Header: Depth=1
	leal	(%r12,%r14), %eax
	shrl	%eax
	subl	%eax, %r14d
	movl	224(%rsp), %ebx
	movq	208(%rsp), %r15
	movq	216(%rsp), %rax
	movq	%rax, 104(%rsp)         # 8-byte Spill
	subl	%r15d, %ebx
	movq	1264(%rsp), %rdi
	cmpl	$0, 232(%rsp)
	je	.LBB8_223
# BB#212:                               # %if.then.i.472
                                        #   in Loop: Header=BB8_211 Depth=1
	movl	$.L.str.5, %r8d
	movq	%r15, %rsi
	movl	%ebx, %edx
	movl	%r14d, %ecx
	callq	*152(%rdi)
	movq	%rax, %rbp
	testq	%rbp, %rbp
	je	.LBB8_213
	jmp	.LBB8_225
.LBB8_223:                              # %if.else.i.476
                                        #   in Loop: Header=BB8_211 Depth=1
	movl	$.L.str.5, %edx
	movl	%r14d, %esi
	callq	*136(%rdi)
	movq	%rax, %rbp
	testq	%rbp, %rbp
	jne	.LBB8_224
.LBB8_213:                              # %dynamic_resize.exit489
                                        #   in Loop: Header=BB8_211 Depth=1
	cmpl	%r13d, %r14d
	ja	.LBB8_211
# BB#214:
	movl	$-25, %ebx
.LBB8_215:                              # %if.then.951
	movl	%ebx, %r15d
	cmpl	$0, 232(%rsp)
	jne	.LBB8_218
# BB#216:                               # %land.lhs.true.i.495
	movq	208(%rsp), %rsi
	leaq	236(%rsp), %r14
	cmpq	%r14, %rsi
	je	.LBB8_218
# BB#217:                               # %if.then.i.506
	movl	224(%rsp), %eax
	subl	%esi, %eax
	cltq
	cmpq	$1023, %rax             # imm = 0x3FF
	movl	$1023, %ebp             # imm = 0x3FF
	cmovbeq	%rax, %rbp
	movq	%r14, %rdi
	movq	%rbp, %rdx
	callq	memcpy
	leaq	236(%rsp,%rbp), %rax
	movq	%rax, 216(%rsp)
	movq	%r14, 208(%rsp)
.LBB8_218:                              # %dynamic_save.exit508
	cmpl	$-25, %r15d
	jne	.LBB8_219
# BB#342:                               # %if.end.956
	movl	$3, 204(%rsp)
	movl	$-25, %r8d
	movq	128(%rsp), %rdi         # 8-byte Reload
	movq	144(%rsp), %r14         # 8-byte Reload
	jmp	.LBB8_330
.LBB8_219:
	movq	128(%rsp), %rdi         # 8-byte Reload
	movq	144(%rsp), %r14         # 8-byte Reload
	jmp	.LBB8_317
.LBB8_267:
	movq	%r8, %r12
.LBB8_275:                              # %sw.epilog.1060
	movq	%rdi, 80(%rsp)          # 8-byte Spill
	cmpl	$0, 1276(%rsp)
	je	.LBB8_283
# BB#276:                               # %if.then.1065
	movq	208(%rsp), %rdi
	movzbl	(%rdi), %eax
	cmpl	$43, %eax
	jne	.LBB8_277
# BB#279:                               # %sw.bb.1072
	movq	%r9, %r13
	movq	%rsi, %rbp
	incq	%rdi
	movl	$1, %edx
	jmp	.LBB8_280
.LBB8_277:                              # %if.then.1065
	xorl	%edx, %edx
	movq	%r9, %r13
	movq	%rsi, %rbp
	cmpl	$45, %eax
	jne	.LBB8_280
# BB#278:                               # %sw.bb.1070
	incq	%rdi
	movl	$-1, %edx
.LBB8_280:                              # %sw.epilog.1075
	movq	136(%rsp), %rax         # 8-byte Reload
	movl	184(%rax), %r9d
	leaq	1552(%rsp), %r8
	movq	%r12, %rsi
	movq	88(%rsp), %rcx          # 8-byte Reload
	callq	scan_number
	movl	%eax, %ebx
	cmpl	$-18, %ebx
	movq	%rbp, %rsi
	movq	%r13, %r9
	je	.LBB8_283
# BB#281:                               # %sw.epilog.1075
	cmpl	$1, %ebx
	jne	.LBB8_287
# BB#282:                               # %if.then.1080
	movq	88(%rsp), %rcx          # 8-byte Reload
	movzwl	(%rcx), %eax
	movq	136(%rsp), %rdx         # 8-byte Reload
	orl	76(%rdx), %eax
	movw	%ax, (%rcx)
.LBB8_283:                              # %if.end.1105
	movq	%r9, 104(%rsp)          # 8-byte Spill
	movq	%rsi, 56(%rsp)          # 8-byte Spill
	leaq	1272(%rsp), %r13
	cmpl	$0, 232(%rsp)
	je	.LBB8_296
# BB#284:                               # %if.then.1109
	movq	208(%rsp), %rsi
	movq	%r12, %r15
	subq	%rsi, %r15
	movq	136(%rsp), %rax         # 8-byte Reload
	movq	8(%rax), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	movl	$-1, %r8d
	movl	%r15d, %edx
	movq	88(%rsp), %rcx          # 8-byte Reload
	callq	names_ref
	movl	%eax, %ebx
	testl	%ebx, %ebx
	movl	124(%rsp), %ebp         # 4-byte Reload
	js	.LBB8_290
# BB#285:                               # %if.then.1126
	cmpl	$0, 232(%rsp)
	je	.LBB8_305
# BB#286:                               # %if.then.i.609
	movq	1264(%rsp), %rdi
	movq	208(%rsp), %rsi
	movl	224(%rsp), %edx
	subl	%esi, %edx
	movl	$.L.str.5, %ecx
	callq	*160(%rdi)
	jmp	.LBB8_305
.LBB8_296:                              # %if.else.1152
	movq	136(%rsp), %rax         # 8-byte Reload
	movq	8(%rax), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	movq	208(%rsp), %rsi
	movl	%r12d, %edx
	subl	%esi, %edx
	cmpb	$0, 154(%r14)
	sete	%al
	movzbl	%al, %r8d
	movq	88(%rsp), %rcx          # 8-byte Reload
	callq	names_ref
	movl	%eax, %ebx
	movl	124(%rsp), %ebp         # 4-byte Reload
	jmp	.LBB8_297
.LBB8_290:                              # %if.else.1128
	movq	%r14, 144(%rsp)         # 8-byte Spill
	movq	224(%rsp), %rbp
	movq	208(%rsp), %rbx
	movq	216(%rsp), %r14
	subq	%rbx, %rbp
	movq	1264(%rsp), %rdi
	cmpl	$0, 232(%rsp)
	je	.LBB8_293
# BB#291:                               # %if.then.i.625
	movl	$.L.str.5, %r8d
	movq	%rbx, %rsi
	movl	%ebp, %edx
	movl	%r15d, %ecx
	callq	*152(%rdi)
	movq	%rax, %r13
	testq	%r13, %r13
	jne	.LBB8_295
	jmp	.LBB8_292
.LBB8_287:                              # %if.then.1091
	cmpl	$0, 232(%rsp)
	je	.LBB8_289
# BB#288:                               # %if.then.i.598
	movq	1264(%rsp), %rdi
	movq	%rsi, %r15
	movq	208(%rsp), %rsi
	movl	224(%rsp), %edx
	subl	%esi, %edx
	movl	$.L.str.5, %ecx
	movl	%ebx, %ebp
	callq	*160(%rdi)
	movl	%ebp, %ebx
	movq	%r15, %rsi
.LBB8_289:                              # %cleanup.1102
	movl	$-18, %r15d
	cmpl	$2, 1272(%rsp)
	movq	80(%rsp), %rdi          # 8-byte Reload
	jne	.LBB8_315
	jmp	.LBB8_317
.LBB8_293:                              # %if.else.i.629
	movl	$.L.str.5, %edx
	movl	%r15d, %esi
	callq	*136(%rdi)
	movq	%rax, %r13
	testq	%r13, %r13
	je	.LBB8_292
# BB#294:                               # %if.end.15.i.634
	movq	208(%rsp), %rsi
	cmpl	%r15d, %ebp
	cmovaeq	%r15, %rbp
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	andq	%rax, %rbp
	movq	%r13, %rdi
	movq	%rbp, %rdx
	callq	memcpy
	movl	$1, 232(%rsp)
.LBB8_295:                              # %if.end.1140
	subq	%rbx, %r14
	movq	%r13, 208(%rsp)
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	andq	%rcx, %r14
	leaq	(%r14,%r13), %rax
	movq	%rax, 216(%rsp)
	movq	%r15, %rax
	andq	%rcx, %rax
	leaq	(%rax,%r13), %rax
	movq	%rax, 224(%rsp)
	movq	136(%rsp), %rax         # 8-byte Reload
	movq	8(%rax), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	movl	$2, %r8d
	movq	%r13, %rsi
	movl	%r15d, %edx
	movq	88(%rsp), %rcx          # 8-byte Reload
	callq	names_ref
	movl	%eax, %ebx
	movq	144(%rsp), %r14         # 8-byte Reload
	movl	124(%rsp), %ebp         # 4-byte Reload
	leaq	1272(%rsp), %r13
.LBB8_297:                              # %if.end.1168
	testl	%ebx, %ebx
	movq	80(%rsp), %rdi          # 8-byte Reload
	movq	104(%rsp), %rcx         # 8-byte Reload
	jns	.LBB8_305
# BB#298:                               # %if.then.1171
	cmpl	$-25, %ebx
	jne	.LBB8_299
# BB#300:                               # %if.end.1175
	cmpl	$0, 232(%rsp)
	jne	.LBB8_303
# BB#301:                               # %land.lhs.true.i.648
	movq	%r12, 216(%rsp)
	movq	208(%rsp), %rsi
	leaq	236(%rsp), %r12
	cmpq	%r12, %rsi
	je	.LBB8_303
# BB#302:                               # %if.then.i.659
	movl	224(%rsp), %eax
	subl	%esi, %eax
	cltq
	cmpq	$1023, %rax             # imm = 0x3FF
	movl	$1023, %ebx             # imm = 0x3FF
	cmovbeq	%rax, %rbx
	movq	%rdi, %r15
	movq	%r12, %rdi
	movq	%rbx, %rdx
	movq	%rcx, %rbp
	callq	memcpy
	movq	%rbp, %rcx
	movq	%r15, %rdi
	leaq	236(%rsp,%rbx), %rax
	movq	%rax, 216(%rsp)
	movq	%r12, 208(%rsp)
.LBB8_303:                              # %if.end.1183
	leaq	-1(%rdi), %rax
	cmpl	$-1, %ecx
	cmovneq	%rax, %rdi
	movl	$3, 204(%rsp)
	movl	$-25, %r8d
	jmp	.LBB8_330
.LBB8_299:
	movl	%ebx, %r15d
	jmp	.LBB8_317
.LBB8_292:                              # %cleanup.1149
	movq	80(%rsp), %rdi          # 8-byte Reload
	leaq	-1(%rdi), %rax
	movq	104(%rsp), %rcx         # 8-byte Reload
	cmpl	$-1, %ecx
	cmovneq	%rax, %rdi
	jmp	.LBB8_261
.LBB8_269:                              # %if.then.1038
	movzwl	152(%r14), %eax
	cmpl	$65535, %eax            # imm = 0xFFFF
	je	.LBB8_270
# BB#324:                               # %if.then.1043
	decq	%rdi
.LBB8_325:                              # %pause_name
	movq	%r8, 216(%rsp)
	cmpl	$0, 232(%rsp)
	jne	.LBB8_328
# BB#326:                               # %land.lhs.true.i
	movq	208(%rsp), %rsi
	leaq	236(%rsp), %rbp
	cmpq	%rbp, %rsi
	je	.LBB8_328
# BB#327:                               # %if.then.i
	movl	224(%rsp), %eax
	subl	%esi, %eax
	cltq
	cmpq	$1023, %rax             # imm = 0x3FF
	movl	$1023, %ebx             # imm = 0x3FF
	cmovbeq	%rax, %rbx
	movq	%rdi, %r15
	movq	%rbp, %rdi
	movq	%rbx, %rdx
	callq	memcpy
	movq	%r15, %rdi
	leaq	236(%rsp,%rbx), %rax
	movq	%rax, 216(%rsp)
	movq	%rbp, 208(%rsp)
.LBB8_328:                              # %dynamic_save.exit
	movl	$3, 204(%rsp)
.LBB8_329:                              # %pause_ret
	movl	$3, %r8d
	jmp	.LBB8_330
.LBB8_29:                               # %sw.bb.131
	movb	%al, 1550(%rsp)
	movq	136(%rsp), %rax         # 8-byte Reload
	movq	8(%rax), %rax
	movq	192(%rax), %rax
	movq	%rdi, %r12
	movq	120(%rax), %rdi
	movq	%rsi, %r13
	leaq	1550(%rsp), %rsi
	movl	$1, %edx
	movl	$1, %r8d
	movq	88(%rsp), %rbp          # 8-byte Reload
	movq	%rbp, %rcx
	callq	names_ref
	movq	%r13, %rsi
	movq	%r12, %rdi
	movl	%eax, %ebx
	orb	$-128, (%rbp)
	jmp	.LBB8_315
.LBB8_270:
	movq	%r8, %r12
	jmp	.LBB8_275
.LBB8_224:                              # %if.end.15.i.481
	movq	208(%rsp), %rsi
	cmpl	%r14d, %ebx
	cmovael	%r14d, %ebx
	movl	%ebx, %edx
	movq	%rbp, %rdi
	callq	memcpy
	movl	$1, 232(%rsp)
.LBB8_225:                              # %dynamic_resize.exit489.thread
	movl	100(%rsp), %ebx         # 4-byte Reload
	movq	48(%rsp), %rcx          # 8-byte Reload
	movq	112(%rsp), %rsi         # 8-byte Reload
	movq	104(%rsp), %r12         # 8-byte Reload
	subl	%r15d, %r12d
	movq	%rbp, 208(%rsp)
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	andq	%rax, %r12
	leaq	(%r12,%rbp), %r8
	movq	%r8, 216(%rsp)
	movl	%r14d, %eax
	addq	%rbp, %rax
	movl	96(%rsp), %r15d         # 4-byte Reload
	jmp	.LBB8_226
.LBB8_81:                               # %sw.bb.295
	movq	72(%rsp), %rax          # 8-byte Reload
	testb	$1, 24(%rax)
	jne	.LBB8_83
# BB#82:
	xorl	%eax, %eax
	jmp	.LBB8_84
.LBB8_178:                              # %sw.bb.858
	movl	$1, %edx
	jmp	.LBB8_179
.LBB8_190:                              # %sw.bb.859
	movl	$-1, %edx
.LBB8_179:                              # %nr
	movl	%edx, %eax
	andl	$1, %eax
	movq	%rdi, %rcx
	leaq	(%rax,%rcx), %rdi
	movq	%rcx, %r12
	movq	136(%rsp), %rax         # 8-byte Reload
	movl	184(%rax), %r9d
	leaq	1552(%rsp), %r8
	movq	%rsi, %rbx
	movq	88(%rsp), %rcx          # 8-byte Reload
	callq	scan_number
	cmpl	$1, %eax
	jne	.LBB8_189
# BB#180:                               # %land.lhs.true.825
	movq	1552(%rsp), %rax
	movzbl	-1(%rax), %ecx
	movzbl	scan_char_array+4(%rcx), %edx
	cmpl	$102, %edx
	jne	.LBB8_189
# BB#181:                               # %if.then.832
	leaq	-1(%rax), %rdi
	movzbl	%cl, %ecx
	cmpl	$13, %ecx
	jne	.LBB8_182
# BB#183:                               # %land.lhs.true.837
	movzbl	(%rax), %ecx
	cmpl	$10, %ecx
	movq	88(%rsp), %rcx          # 8-byte Reload
	movq	%rbx, %rsi
	je	.LBB8_185
# BB#184:                               # %select.mid1982
	movq	%rdi, %rax
.LBB8_185:                              # %select.end1981
	movq	%rax, %rdi
	jmp	.LBB8_186
.LBB8_189:                              # %if.end.851
	movabsq	$4294967296, %rax       # imm = 0x100000000
	movq	%rax, 1272(%rsp)
	movq	%r12, %rdi
	movq	%rbx, %rsi
	jmp	.LBB8_198
.LBB8_182:
	movq	88(%rsp), %rcx          # 8-byte Reload
	movq	%rbx, %rsi
.LBB8_186:                              # %if.end.844
	movzwl	(%rcx), %eax
	movq	136(%rsp), %rdx         # 8-byte Reload
	orl	76(%rdx), %eax
	movw	%ax, (%rcx)
	xorl	%r15d, %r15d
	jmp	.LBB8_187
.LBB8_122:                              # %sw.bb.565
	cmpq	%rsi, %rdi
	jae	.LBB8_123
# BB#125:                               # %cond.false.595
	movzbl	1(%rdi), %r9d
	incq	%rdi
	movq	112(%rsp), %rbp         # 8-byte Reload
	movl	96(%rsp), %r15d         # 4-byte Reload
	jmp	.LBB8_126
.LBB8_30:                               # %sw.bb.140
	movq	136(%rsp), %rax         # 8-byte Reload
	cmpl	$2, 80(%rax)
	jl	.LBB8_38
# BB#31:                                # %if.then.144
	cmpq	%rsi, %rdi
	jae	.LBB8_32
# BB#34:                                # %cond.false.169
	movzbl	1(%rdi), %eax
	cmpl	$126, %eax
	jne	.LBB8_35
# BB#37:                                # %do.body.180
	incq	%rdi
	movl	$1, 1296(%rsp)
	movq	$0, 1384(%rsp)
	movl	$0, 1380(%rsp)
	movq	$s_A85D_template, 1272(%rsp)
	movl	$1, 1396(%rsp)
	jmp	.LBB8_39
.LBB8_93:                               # %sw.bb.389
	movq	136(%rsp), %rax         # 8-byte Reload
	cmpl	$2, 80(%rax)
	jl	.LBB8_317
# BB#94:                                # %if.then.393
	cmpq	%rsi, %rdi
	jae	.LBB8_32
# BB#95:                                # %if.end.402
	movq	$0, 1272(%rsp)
	movl	$62, %ebx
	jmp	.LBB8_96
.LBB8_85:                               # %sw.bb.311
	movl	192(%rsp), %ecx
	testl	%ecx, %ecx
	je	.LBB8_87
# BB#86:                                # %sw.bb.311.if.end.355_crit_edge
	movq	%rsi, %r13
	movq	136(%rsp), %rsi         # 8-byte Reload
	movq	624(%rsi), %rax
	movq	632(%rsi), %rdx
	movl	668(%rsi), %esi
	movq	72(%rsp), %rbp          # 8-byte Reload
	jmp	.LBB8_92
.LBB8_98:                               # %sw.bb.411
	movq	192(%rsp), %rax
	testl	%eax, %eax
	je	.LBB8_317
# BB#99:                                # %if.end.416
	movq	136(%rsp), %rdx         # 8-byte Reload
	movq	624(%rdx), %rbx
	leaq	-16(%rbx), %rcx
	movq	%rcx, 624(%rdx)
	subq	632(%rdx), %rbx
	shrq	$4, %rbx
	addl	668(%rdx), %ebx
	subl	%eax, %ebx
	movl	$-13, %r13d
	cmpl	$16777216, %ebx         # imm = 0x1000000
	ja	.LBB8_115
# BB#100:                               # %if.end.446
	movq	%rax, %rcx
	shrq	$32, %rcx
	movq	136(%rsp), %rdx         # 8-byte Reload
	leaq	624(%rdx), %r15
	cmpl	%ecx, %eax
	movq	%rdx, %rax
	leaq	152(%rsp), %rbp
	movq	40(%rsp), %r12          # 8-byte Reload
	cmoveq	%r12, %rbp
	cmpl	$0, 100(%rsp)           # 4-byte Folded Reload
	je	.LBB8_102
# BB#101:                               # %if.then.456
	movl	%r8d, %r13d
	movq	%rsi, 56(%rsp)          # 8-byte Spill
	movq	%rdi, 80(%rsp)          # 8-byte Spill
	movq	$0, 8(%rbp)
	movw	$1024, (%rbp)           # imm = 0x400
	movl	$0, 4(%rbp)
	movq	%r15, %rdi
	movl	%ebx, %esi
	callq	ref_stack_pop
	jmp	.LBB8_110
.LBB8_83:                               # %land.rhs.300
	movq	136(%rsp), %rax         # 8-byte Reload
	cmpl	$2, 80(%rax)
	setl	%al
.LBB8_84:                               # %land.end.304
	movzbl	%al, %eax
	movl	%eax, 1380(%rsp)
	movl	$0, 1384(%rsp)
	movq	$s_PSSD_template, 1272(%rsp)
	jmp	.LBB8_39
.LBB8_123:                              # %land.lhs.true.568
	movzwl	152(%r14), %eax
	cmpl	$65535, %eax            # imm = 0xFFFF
	movl	96(%rsp), %r15d         # 4-byte Reload
	je	.LBB8_124
.LBB8_32:                               # %do.body.148
	decq	%rdi
	movl	$0, 204(%rsp)
	jmp	.LBB8_329
.LBB8_173:
	movl	$2, %r15d
	jmp	.LBB8_187
.LBB8_87:                               # %if.then.315
	movq	136(%rsp), %rcx         # 8-byte Reload
	leaq	624(%rcx), %rbx
	movq	624(%rcx), %rax
	cmpq	640(%rcx), %rax
	jae	.LBB8_89
# BB#88:                                # %if.then.324
	movq	%rsi, %r13
	movq	%rdi, %r12
	addq	$16, %rax
	movq	%rax, (%rbx)
	xorl	%ecx, %ecx
	jmp	.LBB8_91
.LBB8_124:                              # %cond.true.582
	movq	%rdi, (%r13)
	movl	$1, %esi
	movq	%r14, %rdi
	callq	spgetcc
	movl	%eax, %r9d
	movl	%r9d, 252(%r14)
	movq	(%r13), %rdi
	movq	112(%rsp), %rbp         # 8-byte Reload
	movq	(%rbp), %rsi
.LBB8_126:                              # %cond.end.598
	cmpl	$0, 64(%rsp)            # 4-byte Folded Reload
	movl	124(%rsp), %ebx         # 4-byte Reload
	jne	.LBB8_131
# BB#127:                               # %cond.end.598
	cmpl	$47, %r9d
	jne	.LBB8_131
# BB#128:                               # %if.then.604
	movl	$2, 1272(%rsp)
	cmpq	%rsi, %rdi
	jae	.LBB8_129
# BB#130:                               # %cond.false.623
	movzbl	1(%rdi), %r9d
	incq	%rdi
	jmp	.LBB8_132
.LBB8_131:                              # %if.else.628
	movl	$1, 1272(%rsp)
	jmp	.LBB8_132
.LBB8_89:                               # %if.else.329
	movq	%rsi, %r13
	movq	%rdi, %r12
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	ref_stack_push
	movl	%eax, %r8d
	testl	%r8d, %r8d
	js	.LBB8_340
# BB#90:                                # %if.else.329.if.end.340_crit_edge
	movq	(%rbx), %rax
	movl	192(%rsp), %ecx
.LBB8_91:                               # %if.end.340
	leaq	16(%rax), %rdi
	movq	136(%rsp), %rsi         # 8-byte Reload
	movq	632(%rsi), %rdx
	subq	%rdx, %rdi
	shrq	$4, %rdi
	movl	668(%rsi), %esi
	addl	%esi, %edi
	movl	%edi, 196(%rsp)
	movq	72(%rsp), %rbp          # 8-byte Reload
	movq	%r12, %rdi
.LBB8_92:                               # %if.end.355
	movl	%ecx, %ecx
	movq	%rcx, 8(%rax)
	movw	$2816, (%rax)           # imm = 0xB00
	addq	$16, %rax
	subq	%rdx, %rax
	shrq	$4, %rax
	addl	%esi, %eax
	movl	%eax, 192(%rsp)
	movq	%r13, %rsi
	jmp	.LBB8_120
.LBB8_129:                              # %cond.true.610
	movq	%rdi, (%r13)
	movl	$1, %esi
	movq	%r14, %rdi
	callq	spgetcc
	movl	%eax, %r9d
	movl	%r9d, 252(%r14)
	movq	(%r13), %rdi
	movq	(%rbp), %rsi
.LBB8_132:                              # %if.end.632
	movl	$0, 1276(%rsp)
	movslq	%r9d, %rax
	movb	scan_char_array+4(%rax), %al
	movzbl	%al, %ecx
	leal	-102(%rcx), %edx
	cmpl	$3, %edx
	jae	.LBB8_133
# BB#142:                               # %sw.bb.652
	cmpl	%r15d, %r9d
	jne	.LBB8_139
# BB#143:
	movq	%rbp, 112(%rsp)         # 8-byte Spill
	jmp	.LBB8_199
.LBB8_133:                              # %if.end.632
	movq	%rbp, 112(%rsp)         # 8-byte Spill
	cmpl	$101, %ecx
	jne	.LBB8_199
# BB#134:                               # %sw.bb.640
	movl	%ebx, %ebp
	movq	136(%rsp), %rdx         # 8-byte Reload
	cmpq	$0, 112(%rdx)
	je	.LBB8_135
# BB#136:                               # %land.lhs.true.646
	cmpl	%r15d, %r9d
	movq	%r9, %r8
	je	.LBB8_137
# BB#138:                               # %land.lhs.true.646
	cmpl	$2, 80(%rdx)
	movl	%ebp, %ebx
	movq	%r8, %r9
	jl	.LBB8_199
.LBB8_139:                              # %if.end.656
	movl	%ebx, 124(%rsp)         # 4-byte Spill
	movq	$0, 224(%rsp)
	movq	$0, 208(%rsp)
	movl	$0, 232(%rsp)
	xorl	%r8d, %r8d
	jmp	.LBB8_140
.LBB8_102:                              # %if.else.463
	movq	%rsi, 56(%rsp)          # 8-byte Spill
	movq	%rdi, 80(%rsp)          # 8-byte Spill
	leaq	8(%rax), %rcx
	cmpw	$0, 96(%rax)
	je	.LBB8_106
# BB#103:                               # %if.then.466
	movl	$.L.str.3, %r8d
	movq	%rbp, %rdi
	movq	%r15, %rsi
	movl	%ebx, %edx
	callq	make_packed_array
	movl	%eax, %r13d
	testl	%r13d, %r13d
	js	.LBB8_104
# BB#105:                               # %if.end.480
	orb	$-128, (%rbp)
	jmp	.LBB8_110
.LBB8_35:                               # %cond.false.169
	cmpl	$60, %eax
	jne	.LBB8_38
# BB#36:                                # %sw.bb.174
	movq	$0, 1272(%rsp)
	movl	$60, %ebx
.LBB8_96:                               # %try_funny_name
	cmpq	%rsi, %rdi
	movl	124(%rsp), %r15d        # 4-byte Reload
	movl	%r8d, %ebp
	jae	.LBB8_97
# BB#175:                               # %cond.false.795
	movzbl	1(%rdi), %eax
	incq	%rdi
	jmp	.LBB8_176
.LBB8_38:                               # %if.end.195
	movl	$1, 1296(%rsp)
	movl	$-1, 1380(%rsp)
	movq	$s_AXD_template, 1272(%rsp)
.LBB8_39:                               # %str
	movl	100(%rsp), %ebx         # 4-byte Reload
	movq	%rdi, (%r13)
	movq	136(%rsp), %rax         # 8-byte Reload
	movq	8(%rax), %rax
	movl	$0, 232(%rsp)
	leaq	236(%rsp), %r8
	leaq	1259(%rsp), %rcx
	leaq	224(%rsp), %r12
	movq	%rcx, 224(%rsp)
	movq	%r8, 208(%rsp)
	leaq	216(%rsp), %rdx
	movq	%r8, 216(%rsp)
	leaq	1264(%rsp), %rcx
	movq	%rax, 1264(%rsp)
	movq	%rdx, %rax
	jmp	.LBB8_40
.LBB8_97:                               # %cond.true.782
	movq	%rdi, (%r13)
	movl	$1, %esi
	movq	%r14, %rdi
	callq	spgetcc
	movl	%eax, 252(%r14)
	movq	(%r13), %rdi
	movq	112(%rsp), %rcx         # 8-byte Reload
	movq	(%rcx), %rsi
.LBB8_176:                              # %cond.end.798
	cmpl	%ebx, %eax
	jne	.LBB8_177
# BB#304:                               # %cleanup.814
	movq	%rsi, 56(%rsp)          # 8-byte Spill
	movq	%rdi, 80(%rsp)          # 8-byte Spill
	movb	%bl, 1551(%rsp)
	movb	%bl, 1550(%rsp)
	movq	136(%rsp), %rax         # 8-byte Reload
	movq	8(%rax), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	leaq	1550(%rsp), %rsi
	movl	$2, %edx
	movl	$1, %r8d
	movq	88(%rsp), %rcx          # 8-byte Reload
	callq	names_ref
	leaq	1272(%rsp), %r13
	movl	%ebp, %ebx
	movl	%r15d, %ebp
.LBB8_305:                              # %have_name
	movl	(%r13), %eax
	cmpl	$2, %eax
	movq	80(%rsp), %rdi          # 8-byte Reload
	jne	.LBB8_306
# BB#309:                               # %sw.bb.1208
	movq	88(%rsp), %rsi          # 8-byte Reload
	movzbl	1(%rsi), %eax
	cmpl	$13, %eax
	jne	.LBB8_311
# BB#310:                               # %lor.lhs.false
	movq	136(%rsp), %rax         # 8-byte Reload
	leaq	368(%rax), %r13
	movq	8(%rax), %rax
	movq	192(%rax), %rax
	movq	%rdi, %r12
	movq	120(%rax), %rdi
	movq	%rsi, %r15
	callq	names_index
	movq	%r13, %rdi
	movl	%eax, %esi
	callq	dstack_find_name_by_index
	movq	%r15, %rsi
	movq	%r12, %rdi
	testq	%rax, %rax
	je	.LBB8_311
# BB#312:                               # %if.end.1233
	cmpl	$0, 192(%rsp)
	je	.LBB8_314
# BB#313:                               # %land.lhs.true.1237
	movzwl	(%rax), %ecx
	andl	$12, %ecx
	movl	$-7, %r15d
	movq	136(%rsp), %rdx         # 8-byte Reload
	cmpl	56(%rdx), %ecx
	ja	.LBB8_317
.LBB8_314:                              # %if.end.1246
	movl	%ebp, 124(%rsp)         # 4-byte Spill
	movups	(%rax), %xmm0
	movups	%xmm0, (%rsi)
	movzwl	(%rsi), %eax
	movq	136(%rsp), %rcx         # 8-byte Reload
	orl	76(%rcx), %eax
	movw	%ax, (%rsi)
	movq	56(%rsp), %rsi          # 8-byte Reload
	jmp	.LBB8_315
.LBB8_306:                              # %have_name
	movl	%ebp, 124(%rsp)         # 4-byte Spill
	testl	%eax, %eax
	movq	88(%rsp), %rcx          # 8-byte Reload
	movq	56(%rsp), %rsi          # 8-byte Reload
	jne	.LBB8_315
# BB#307:                               # %sw.bb.1194
	movzbl	1(%rcx), %eax
	cmpl	$13, %eax
	jne	.LBB8_315
# BB#308:                               # %if.then.1201
	orb	$-128, (%rcx)
.LBB8_315:                              # %sret
	testl	%ebx, %ebx
	movl	%ebx, %r15d
	js	.LBB8_317
.LBB8_187:                              # %if.end.1287
	cmpl	$0, 192(%rsp)
	je	.LBB8_337
# BB#188:
	movl	%r15d, %r8d
	movq	72(%rsp), %rbp          # 8-byte Reload
.LBB8_120:                              # %snext
	movq	%rdi, %r12
	movq	136(%rsp), %rcx         # 8-byte Reload
	leaq	624(%rcx), %rbx
	movq	624(%rcx), %rax
	cmpq	640(%rcx), %rax
	jae	.LBB8_321
# BB#121:                               # %if.then.1304
	addq	$16, %rax
	movq	%rax, 88(%rsp)          # 8-byte Spill
	movq	%rax, (%rbx)
	jmp	.LBB8_323
.LBB8_337:                              # %if.then.1291
	movq	%rdi, 112(%r14)
	jmp	.LBB8_338
.LBB8_321:                              # %if.else.1309
	movq	%rsi, %r13
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	ref_stack_push
	movl	%eax, %r8d
	testl	%r8d, %r8d
	js	.LBB8_343
# BB#322:                               # %if.else.1309.if.end.1322_crit_edge
	movq	(%rbx), %rax
	movq	%rax, 88(%rsp)          # 8-byte Spill
	movq	%r13, %rsi
.LBB8_323:                              # %if.end.1322
	leaq	112(%r14), %r13
	leaq	120(%r14), %rcx
	movq	%r12, %rbx
	jmp	.LBB8_21
.LBB8_311:                              # %if.then.1223
	movups	(%rsi), %xmm0
	movups	%xmm0, 1400(%rsp)
	orb	$-128, 1400(%rsp)
	movl	$-21, %r15d
	jmp	.LBB8_317
.LBB8_343:                              # %if.else.1316
	movl	%r8d, %r15d
	movq	%r12, 112(%r14)
	movl	$0, 204(%rsp)
	jmp	.LBB8_335
.LBB8_177:                              # %cleanup.814.thread
	decq	%rdi
	movl	$-18, %r15d
	jmp	.LBB8_317
.LBB8_340:                              # %if.else.336
	movq	%r12, %rdi
	decq	%rdi
	movl	$0, 204(%rsp)
	jmp	.LBB8_330
.LBB8_106:                              # %if.else.486
	movq	(%rcx), %rdi
	movq	%rcx, 128(%rsp)         # 8-byte Spill
	movl	$240, %edx
	movl	$.L.str.4, %r8d
	movq	%rbp, %rsi
	movl	%ebx, %ecx
	callq	gs_alloc_ref_array
	movl	%eax, %r13d
	testl	%r13d, %r13d
	js	.LBB8_104
# BB#107:                               # %if.end.499
	movq	128(%rsp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$.L.str.5, 8(%rsp)
	xorl	%ecx, %ecx
	movl	$1, %r8d
	xorl	%r9d, %r9d
	movq	%r15, %rdi
	movq	%rbp, %rsi
	movl	%ebx, %edx
	callq	ref_stack_store
	movl	%eax, %r13d
	testl	%r13d, %r13d
	js	.LBB8_108
# BB#109:                               # %if.end.509
	movq	%r15, %rdi
	movl	%ebx, %esi
	callq	ref_stack_pop
	movq	40(%rsp), %r12          # 8-byte Reload
.LBB8_110:                              # %if.end.513
	movq	192(%rsp), %rdx
	movq	%rdx, %rsi
	shrq	$32, %rsi
	movq	136(%rsp), %rcx         # 8-byte Reload
	movq	624(%rcx), %rax
	movq	632(%rcx), %rcx
	cmpl	%esi, %edx
	jne	.LBB8_117
# BB#111:                               # %if.then.518
	movq	%r12, 40(%rsp)          # 8-byte Spill
	cmpq	%rcx, %rax
	jae	.LBB8_112
# BB#116:                               # %if.else.532
	movl	$1, %esi
	movq	%r15, %rdi
	callq	ref_stack_pop
	jmp	.LBB8_113
.LBB8_117:                              # %if.else.537
	movq	%r12, 40(%rsp)          # 8-byte Spill
	cmpq	%rcx, %rax
	jae	.LBB8_119
# BB#118:                               # %if.then.546
	movq	%r15, %rdi
	callq	ref_stack_pop_block
	movq	(%r15), %rax
.LBB8_119:                              # %cleanup.562
	movl	8(%rax), %ecx
	movl	%ecx, 192(%rsp)
	movups	152(%rsp), %xmm0
	movups	%xmm0, (%rax)
	movq	72(%rsp), %rbp          # 8-byte Reload
	movq	80(%rsp), %rdi          # 8-byte Reload
	movq	56(%rsp), %rsi          # 8-byte Reload
	movl	%r13d, %r8d
	jmp	.LBB8_120
.LBB8_112:                              # %if.then.527
	addq	$-16, %rax
	movq	%rax, (%r15)
.LBB8_113:                              # %cleanup.562.thread
	movl	$0, 192(%rsp)
.LBB8_114:                              # %cleanup.562.thread
	movq	80(%rsp), %rdi          # 8-byte Reload
	movq	56(%rsp), %rsi          # 8-byte Reload
.LBB8_115:                              # %cleanup.562.thread
	movl	%r13d, %ebx
	jmp	.LBB8_315
.LBB8_104:                              # %if.then.473
	addq	$16, (%r15)
	movl	$0, 204(%rsp)
	movq	80(%rsp), %rdi          # 8-byte Reload
	decq	%rdi
	movl	%r13d, %r8d
	jmp	.LBB8_330
.LBB8_341:                              # %cleanup.715.thread
	leaq	236(%rsp), %r15
	movb	$0, 237(%rsp)
	leaq	-1(%r8), %rbx
	subq	%rdi, %r8
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	leaq	-1023(%rcx), %rax
	andq	%r8, %rax
	andq	%rcx, %r8
	cmpq	$1023, %rax             # imm = 0x3FF
	movl	$1023, %ebp             # imm = 0x3FF
	cmovbeq	%r8, %rbp
	movq	%rdi, %rsi
	movq	%r15, %rdi
	movq	%rbp, %rdx
	callq	memcpy
	leaq	236(%rsp,%rbp), %r8
	movq	%r15, 208(%rsp)
	movl	$0, 232(%rsp)
	leaq	491(%rsp), %r12
	movq	56(%rsp), %rdx          # 8-byte Reload
	movq	112(%rsp), %rsi         # 8-byte Reload
	jmp	.LBB8_156
.LBB8_171:                              # %if.then.757
                                        #   in Loop: Header=BB8_156 Depth=1
	movb	%al, (%r8)
	incq	%r8
.LBB8_156:                              # %for.cond.719
                                        # =>This Inner Loop Header: Depth=1
	movq	%rsi, %rbp
	movq	%r8, %r15
	cmpq	%rdx, %rbx
	jae	.LBB8_157
# BB#158:                               # %cond.false.735
                                        #   in Loop: Header=BB8_156 Depth=1
	movzbl	1(%rbx), %eax
	incq	%rbx
	movq	%rbp, %rsi
	jmp	.LBB8_159
.LBB8_157:                              # %cond.true.722
                                        #   in Loop: Header=BB8_156 Depth=1
	movq	%rbx, (%r13)
	movl	$1, %esi
	movq	%r14, %rdi
	callq	spgetcc
	movl	%eax, 252(%r14)
	movq	(%r13), %rbx
	movq	%rbp, %rsi
	movq	(%rsi), %rdx
.LBB8_159:                              # %cond.end.738
                                        #   in Loop: Header=BB8_156 Depth=1
	movl	96(%rsp), %ebp          # 4-byte Reload
	cmpl	$13, %eax
	movq	%r15, %r8
	jbe	.LBB8_160
.LBB8_165:                              # %sw.default.740
                                        #   in Loop: Header=BB8_156 Depth=1
	testl	%eax, %eax
	js	.LBB8_166
# BB#170:                               # %if.end.750
                                        #   in Loop: Header=BB8_156 Depth=1
	cmpq	%r12, %r8
	jae	.LBB8_156
	jmp	.LBB8_171
.LBB8_160:                              # %cond.end.738
                                        #   in Loop: Header=BB8_156 Depth=1
	movl	$13312, %ecx            # imm = 0x3400
	btl	%eax, %ecx
	jae	.LBB8_165
# BB#161:
	movq	%rsi, 112(%rsp)         # 8-byte Spill
	movq	%r13, 48(%rsp)          # 8-byte Spill
	movq	%rdx, %r13
	jmp	.LBB8_162
.LBB8_166:                              # %if.then.743
	leal	4(%rax), %ecx
	cmpl	$2, %ecx
	jae	.LBB8_167
# BB#169:                               # %sw.bb.744
	movq	%r8, 216(%rsp)
	movl	$2, 204(%rsp)
	movl	$3, %r8d
	movq	%rbx, %rdi
.LBB8_330:                              # %pause_ret
	movq	%rdi, 112(%r14)
.LBB8_331:                              # %suspend
	movq	136(%rsp), %r13         # 8-byte Reload
.LBB8_332:                              # %suspend
	movl	%r8d, %r15d
	cmpl	$0, 192(%rsp)
	je	.LBB8_334
# BB#333:                               # %if.then.1336
	addq	$-16, 624(%r13)
.LBB8_334:                              # %save
	movq	72(%rsp), %rbp          # 8-byte Reload
.LBB8_335:                              # %save
	leaq	176(%rsp), %rsi
	movl	$1368, %edx             # imm = 0x558
	movq	%rbp, %rdi
	callq	memcpy
	jmp	.LBB8_338
.LBB8_167:                              # %if.then.743
	movq	%rsi, 112(%rsp)         # 8-byte Spill
	movq	%r13, 48(%rsp)          # 8-byte Spill
	movq	%rdx, %r13
	cmpl	$-1, %eax
	jne	.LBB8_168
.LBB8_162:                              # %end_comment
	movl	%ebp, 96(%rsp)          # 4-byte Spill
	leaq	236(%rsp), %rcx
	leaq	176(%rsp), %rdx
	movq	136(%rsp), %rdi         # 8-byte Reload
	movq	88(%rsp), %rsi          # 8-byte Reload
	callq	scan_comment
	xorl	%r8d, %r8d
	testl	%eax, %eax
	movq	72(%rsp), %rbp          # 8-byte Reload
	movq	%r13, %rsi
	movq	48(%rsp), %r13          # 8-byte Reload
	movq	112(%rsp), %rcx         # 8-byte Reload
	je	.LBB8_21
.LBB8_163:                              # %comment
	testl	%eax, %eax
	js	.LBB8_164
# BB#336:                               # %if.end.1345
	movq	%rbx, 112(%r14)
	movl	$0, 204(%rsp)
	movl	%eax, %r15d
	jmp	.LBB8_335
.LBB8_168:
	movq	%rbx, %rdi
	movl	$-18, %r15d
	jmp	.LBB8_317
.LBB8_164:
	movq	%rbp, 72(%rsp)          # 8-byte Spill
	movq	%rbx, %rdi
	movl	%eax, %r15d
.LBB8_317:                              # %if.then.1261
	movq	%rdi, 112(%r14)
	movq	72(%rsp), %rdi          # 8-byte Reload
	addq	$1224, %rdi             # imm = 0x4C8
	leaq	1400(%rsp), %rsi
	movl	$144, %edx
	callq	memcpy
	cmpl	$0, 192(%rsp)
	movq	40(%rsp), %rcx          # 8-byte Reload
	je	.LBB8_338
# BB#318:                               # %if.then.1270
	cmpl	$-21, %r15d
	movq	136(%rsp), %rdi         # 8-byte Reload
	jne	.LBB8_320
# BB#319:                               # %if.then.1273
	movq	624(%rdi), %rax
	movups	(%rax), %xmm0
	movups	%xmm0, (%rcx)
.LBB8_320:                              # %if.end.1277
	addq	$624, %rdi              # imm = 0x270
	movq	%rdi, %rbx
	callq	ref_stack_count
	leal	1(%rax), %esi
	subl	196(%rsp), %esi
	movq	%rbx, %rdi
	callq	ref_stack_pop
.LBB8_338:                              # %cleanup.1350
	movl	%r15d, %eax
	addq	$1560, %rsp             # imm = 0x618
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB8_135:
	movl	%ebp, %ebx
	jmp	.LBB8_199
.LBB8_108:                              # %if.then.506
	movq	128(%rsp), %rax         # 8-byte Reload
	movq	(%rax), %rdi
	movl	$.L.str.4, %edx
	movq	%rbp, %rsi
	callq	gs_free_ref_array
	jmp	.LBB8_114
.LBB8_137:
	movl	%ebp, %ebx
	jmp	.LBB8_199
.Lfunc_end8:
	.size	gs_scan_token, .Lfunc_end8-gs_scan_token
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI8_0:
	.quad	.LBB8_18
	.quad	.LBB8_155
	.quad	.LBB8_17
	.quad	.LBB8_16
.LJTI8_1:
	.quad	.LBB8_316
	.quad	.LBB8_172
	.quad	.LBB8_23
	.quad	.LBB8_195
	.quad	.LBB8_195
	.quad	.LBB8_195
	.quad	.LBB8_28
	.quad	.LBB8_195
	.quad	.LBB8_195
	.quad	.LBB8_195
	.quad	.LBB8_195
	.quad	.LBB8_23
	.quad	.LBB8_23
	.quad	.LBB8_195
	.quad	.LBB8_23
	.quad	.LBB8_23
	.quad	.LBB8_195
	.quad	.LBB8_195
	.quad	.LBB8_195
	.quad	.LBB8_195
	.quad	.LBB8_195
	.quad	.LBB8_195
	.quad	.LBB8_195
	.quad	.LBB8_195
	.quad	.LBB8_195
	.quad	.LBB8_195
	.quad	.LBB8_195
	.quad	.LBB8_195
	.quad	.LBB8_195
	.quad	.LBB8_195
	.quad	.LBB8_195
	.quad	.LBB8_195
	.quad	.LBB8_195
	.quad	.LBB8_195
	.quad	.LBB8_23
	.quad	.LBB8_197
	.quad	.LBB8_197
	.quad	.LBB8_197
	.quad	.LBB8_197
	.quad	.LBB8_144
	.quad	.LBB8_197
	.quad	.LBB8_197
	.quad	.LBB8_81
	.quad	.LBB8_317
	.quad	.LBB8_197
	.quad	.LBB8_178
	.quad	.LBB8_197
	.quad	.LBB8_190
	.quad	.LBB8_179
	.quad	.LBB8_122
	.quad	.LBB8_179
	.quad	.LBB8_179
	.quad	.LBB8_179
	.quad	.LBB8_179
	.quad	.LBB8_179
	.quad	.LBB8_179
	.quad	.LBB8_179
	.quad	.LBB8_179
	.quad	.LBB8_179
	.quad	.LBB8_179
	.quad	.LBB8_197
	.quad	.LBB8_197
	.quad	.LBB8_30
	.quad	.LBB8_197
	.quad	.LBB8_93
	.quad	.LBB8_197
	.quad	.LBB8_197
	.quad	.LBB8_197
	.quad	.LBB8_197
	.quad	.LBB8_197
	.quad	.LBB8_197
	.quad	.LBB8_197
	.quad	.LBB8_197
	.quad	.LBB8_197
	.quad	.LBB8_197
	.quad	.LBB8_197
	.quad	.LBB8_197
	.quad	.LBB8_197
	.quad	.LBB8_197
	.quad	.LBB8_197
	.quad	.LBB8_197
	.quad	.LBB8_197
	.quad	.LBB8_197
	.quad	.LBB8_197
	.quad	.LBB8_197
	.quad	.LBB8_197
	.quad	.LBB8_197
	.quad	.LBB8_197
	.quad	.LBB8_197
	.quad	.LBB8_197
	.quad	.LBB8_197
	.quad	.LBB8_197
	.quad	.LBB8_197
	.quad	.LBB8_29
	.quad	.LBB8_197
	.quad	.LBB8_29
	.quad	.LBB8_197
	.quad	.LBB8_197
	.quad	.LBB8_197
	.quad	.LBB8_197
	.quad	.LBB8_197
	.quad	.LBB8_197
	.quad	.LBB8_197
	.quad	.LBB8_197
	.quad	.LBB8_197
	.quad	.LBB8_197
	.quad	.LBB8_197
	.quad	.LBB8_197
	.quad	.LBB8_197
	.quad	.LBB8_197
	.quad	.LBB8_197
	.quad	.LBB8_197
	.quad	.LBB8_197
	.quad	.LBB8_197
	.quad	.LBB8_197
	.quad	.LBB8_197
	.quad	.LBB8_197
	.quad	.LBB8_197
	.quad	.LBB8_197
	.quad	.LBB8_197
	.quad	.LBB8_197
	.quad	.LBB8_197
	.quad	.LBB8_197
	.quad	.LBB8_197
	.quad	.LBB8_197
	.quad	.LBB8_85
	.quad	.LBB8_197
	.quad	.LBB8_98
	.quad	.LBB8_197
	.quad	.LBB8_195
	.quad	.LBB8_191
	.quad	.LBB8_191
	.quad	.LBB8_191
	.quad	.LBB8_191
	.quad	.LBB8_191
	.quad	.LBB8_191
	.quad	.LBB8_191
	.quad	.LBB8_191
	.quad	.LBB8_191
	.quad	.LBB8_191
	.quad	.LBB8_191
	.quad	.LBB8_191
	.quad	.LBB8_191
	.quad	.LBB8_191
	.quad	.LBB8_191
	.quad	.LBB8_191
	.quad	.LBB8_191
	.quad	.LBB8_191
	.quad	.LBB8_191
	.quad	.LBB8_191
	.quad	.LBB8_191
	.quad	.LBB8_191
	.quad	.LBB8_191
	.quad	.LBB8_191
	.quad	.LBB8_191
	.quad	.LBB8_191
	.quad	.LBB8_191
	.quad	.LBB8_191
	.quad	.LBB8_191
	.quad	.LBB8_191
	.quad	.LBB8_191
	.quad	.LBB8_191
.LJTI8_2:
	.quad	.LBB8_265
	.quad	.LBB8_266
	.quad	.LBB8_263
	.quad	.LBB8_273

	.text
	.align	16, 0x90
	.type	scan_comment,@function
scan_comment:                           # @scan_comment
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp55:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp56:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp57:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp58:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp59:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp60:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp61:
	.cfi_def_cfa_offset 64
.Ltmp62:
	.cfi_offset %rbx, -56
.Ltmp63:
	.cfi_offset %r12, -48
.Ltmp64:
	.cfi_offset %r13, -40
.Ltmp65:
	.cfi_offset %r14, -32
.Ltmp66:
	.cfi_offset %r15, -24
.Ltmp67:
	.cfi_offset %rbp, -16
	movq	%r8, %rbx
	movq	%rcx, %r15
	movq	%rsi, %r14
	movq	%rdi, %r12
	subq	%r15, %rbx
	cmpl	$2, %ebx
	jb	.LBB9_5
# BB#1:                                 # %land.lhs.true
	movb	1(%r15), %al
	orb	$4, %al
	movzbl	%al, %eax
	cmpl	$37, %eax
	jne	.LBB9_5
# BB#2:                                 # %if.then
	movq	gs_scan_dsc_proc(%rip), %rax
	testq	%rax, %rax
	jne	.LBB9_3
# BB#4:                                 # %if.end
	movl	$5, %ebp
	testb	$8, 24(%rdx)
	jne	.LBB9_7
.LBB9_5:                                # %if.end.16
	movq	gs_scan_comment_proc(%rip), %rax
	testq	%rax, %rax
	je	.LBB9_6
.LBB9_3:                                # %if.then.11
	movq	%r15, %rdi
	movl	%ebx, %esi
	callq	*%rax
	movl	%eax, %ecx
	sarl	$31, %eax
	andl	%ecx, %eax
	jmp	.LBB9_9
.LBB9_6:                                # %if.end.27
	movl	$4, %ebp
	xorl	%eax, %eax
	testb	$4, 24(%rdx)
	je	.LBB9_9
.LBB9_7:                                # %comment
	movq	8(%r12), %rdi
	movl	$.L.str.6, %edx
	movl	%ebx, %esi
	callq	*136(%rdi)
	movq	%rax, %r13
	movl	$-25, %eax
	testq	%r13, %r13
	je	.LBB9_9
# BB#8:                                 # %if.end.39
	movl	%ebx, %edx
	movq	%r13, %rdi
	movq	%r15, %rsi
	callq	memcpy
	movq	%r13, 8(%r14)
	movl	56(%r12), %eax
	orl	$112, %eax
	addl	$4608, %eax             # imm = 0x1200
	movw	%ax, (%r14)
	movl	%ebx, 4(%r14)
	movl	%ebp, %eax
.LBB9_9:                                # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end9:
	.size	scan_comment, .Lfunc_end9-scan_comment
	.cfi_endproc

	.type	gs_scan_dsc_proc,@object # @gs_scan_dsc_proc
	.bss
	.globl	gs_scan_dsc_proc
	.align	8
gs_scan_dsc_proc:
	.quad	0
	.size	gs_scan_dsc_proc, 8

	.type	gs_scan_comment_proc,@object # @gs_scan_comment_proc
	.globl	gs_scan_comment_proc
	.align	8
gs_scan_comment_proc:
	.quad	0
	.size	gs_scan_comment_proc, 8

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"scanner state"
	.size	.L.str, 14

	.type	st_scanner_state_dynamic,@object # @st_scanner_state_dynamic
	.section	.rodata,"a",@progbits
	.globl	st_scanner_state_dynamic
	.align	8
st_scanner_state_dynamic:
	.long	1376                    # 0x560
	.zero	4
	.quad	.L.str
	.quad	0
	.quad	scanner_clear_marks
	.quad	scanner_enum_ptrs
	.quad	scanner_reloc_ptrs
	.quad	0
	.quad	0
	.size	st_scanner_state_dynamic, 64

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"gs_scanner_error_object"
	.size	.L.str.1, 24

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"gs_scan_handle_refill"
	.size	.L.str.2, 22

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"scanner(packed)"
	.size	.L.str.3, 16

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"scanner(proc)"
	.size	.L.str.4, 14

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"scanner"
	.size	.L.str.5, 8

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"scan_comment"
	.size	.L.str.6, 13


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
