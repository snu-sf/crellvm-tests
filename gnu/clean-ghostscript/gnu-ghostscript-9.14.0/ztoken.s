	.text
	.file	"ztoken.bc"
	.globl	ztoken
	.align	16, 0x90
	.type	ztoken,@function
ztoken:                                 # @ztoken
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
	subq	$1368, %rsp             # imm = 0x558
.Ltmp6:
	.cfi_def_cfa_offset 1424
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
	movq	%rdi, %r14
	leaq	624(%r14), %r15
	movq	624(%r14), %rbx
	movzbl	1(%rbx), %eax
	cmpl	$3, %eax
	jne	.LBB0_1
# BB#3:                                 # %sw.bb
	movzwl	(%rbx), %ecx
	andl	$16160, %ecx            # imm = 0x3F20
	cmpl	$800, %ecx              # imm = 0x320
	jne	.LBB0_4
# BB#6:                                 # %do.body.12
	movq	8(%rbx), %rcx
	movzwl	264(%rcx), %eax
	testl	%eax, %eax
	jne	.LBB0_7
# BB#8:                                 # %do.body.12
	movl	4(%rbx), %edx
	cmpl	%edx, %eax
	movq	%rbx, %rax
	je	.LBB0_12
# BB#9:                                 # %land.lhs.true
	movzwl	266(%rcx), %eax
	cmpl	%edx, %eax
	movq	%rbx, %rax
	jne	.LBB0_12
# BB#10:                                # %if.then.27
	movq	%rbx, %rdi
	callq	file_switch_to_read
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB0_26
# BB#11:                                # %if.then.27.do.end.36_crit_edge
	movq	(%r15), %rax
	jmp	.LBB0_12
.LBB0_1:                                # %entry
	cmpl	$18, %eax
	jne	.LBB0_2
# BB#16:                                # %sw.bb.51
	movq	%r15, %rdi
	callq	ref_stack_count
	movl	%eax, %r12d
	movl	$-7, %ebp
	testb	$32, (%rbx)
	je	.LBB0_26
# BB#17:                                # %if.end.60
	leaq	(%rsp), %rdx
	xorl	%ebp, %ebp
	xorl	%ecx, %ecx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	gs_scan_string_token_options
	movl	%eax, %r13d
	cmpl	$2, %r13d
	jne	.LBB0_19
# BB#18:                                # %sw.bb.62
	movw	$0, 8(%rbx)
	movw	$256, (%rbx)            # imm = 0x100
	jmp	.LBB0_26
.LBB0_4:                                # %if.then
	movzbl	%al, %eax
	movl	$-7, %ebp
	cmpl	$3, %eax
	je	.LBB0_26
# BB#5:                                 # %cond.true
	movq	%rbx, %rdi
	callq	check_type_failed
	movl	%eax, %ebp
	jmp	.LBB0_26
.LBB0_2:                                # %sw.default
	movq	%rbx, %rdi
	addq	$1368, %rsp             # imm = 0x558
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	check_type_failed       # TAILCALL
.LBB0_7:
	movq	%rbx, %rax
.LBB0_12:                               # %do.end.36
	movq	640(%r14), %rcx
	subq	%rax, %rcx
	cmpq	$15, %rcx
	jg	.LBB0_14
# BB#13:                                # %if.then.44
	movl	$1, 688(%r14)
	movl	$-16, %ebp
	jmp	.LBB0_26
.LBB0_14:                               # %if.end.47
	leaq	(%rsp), %rbp
	xorl	%edx, %edx
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	callq	gs_scanner_init_options
	movl	$1, %edx
	movq	%r14, %rdi
	movq	%rbp, %rsi
	callq	token_continue
	movl	%eax, %ebp
.LBB0_26:                               # %cleanup.111
	movl	%ebp, %eax
	addq	$1368, %rsp             # imm = 0x558
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_19:                               # %sw.default.66
	testl	%r13d, %r13d
	js	.LBB0_20
# BB#23:                                # %do.body.85
	leaq	32(%rbx), %rax
	cmpq	640(%r14), %rax
	jbe	.LBB0_25
# BB#24:                                # %if.then.92
	movl	$2, 688(%r14)
	movl	$-16, %ebp
	jmp	.LBB0_26
.LBB0_20:                               # %if.then.69
	decl	%r12d
	movq	%r15, %rdi
	callq	ref_stack_count
	cmpl	%eax, %r12d
	jae	.LBB0_21
# BB#22:                                # %if.then.75
	movq	%r15, %rdi
	callq	ref_stack_count
	subl	%r12d, %eax
	shlq	$4, %rax
	subq	%rax, (%r15)
	movl	%r13d, %ebp
	jmp	.LBB0_26
.LBB0_25:                               # %if.else.96
	movq	%rax, (%r15)
	movups	(%rsp), %xmm0
	movups	%xmm0, 16(%rbx)
	movw	$1, 40(%rbx)
	movw	$256, 32(%rbx)          # imm = 0x100
	xorl	%ebp, %ebp
	jmp	.LBB0_26
.LBB0_21:
	movl	%r13d, %ebp
	jmp	.LBB0_26
.Lfunc_end0:
	.size	ztoken, .Lfunc_end0-ztoken
	.cfi_endproc

	.align	16, 0x90
	.type	token_continue,@function
token_continue:                         # @token_continue
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
	subq	$24, %rsp
.Ltmp19:
	.cfi_def_cfa_offset 80
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
	movl	%edx, %r15d
	movq	%rsi, %r14
	movq	%rdi, %rbx
	addq	$-16, 624(%rbx)
	leaq	8(%rsp), %r13
	movl	$5, %r12d
	.align	16, 0x90
.LBB1_1:                                # %again
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	movq	%r13, %rsi
	movq	%r14, %rdx
	callq	gs_scan_token
	cmpl	$3, %eax
	jne	.LBB1_2
# BB#11:                                # %sw.bb.43
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	$ztoken_continue, %ecx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movl	%r15d, %edx
	callq	gs_scan_handle_refill
	movl	%eax, %ebp
	testl	%ebp, %ebp
	je	.LBB1_1
# BB#12:                                # %sw.bb.43
	cmpl	$5, %ebp
	je	.LBB1_17
	jmp	.LBB1_13
.LBB1_2:                                # %again
	movq	624(%rbx), %rcx
	cmpl	$2, %eax
	jae	.LBB1_3
# BB#5:                                 # %do.body
	leaq	32(%rcx), %rax
	cmpq	640(%rbx), %rax
	jbe	.LBB1_7
# BB#6:                                 # %if.then.13
	movl	$2, 688(%rbx)
	movl	$-16, %r12d
	jmp	.LBB1_17
.LBB1_3:                                # %again
	jne	.LBB1_4
# BB#8:                                 # %do.body.22
	leaq	16(%rcx), %rax
	cmpq	640(%rbx), %rax
	jbe	.LBB1_10
# BB#9:                                 # %if.then.28
	movl	$1, 688(%rbx)
	movl	$-16, %r12d
	jmp	.LBB1_17
.LBB1_7:                                # %if.else
	movq	%rax, 624(%rbx)
	movups	8(%rsp), %xmm0
	movups	%xmm0, 16(%rcx)
	movw	$1, 40(%rcx)
	movw	$256, 32(%rcx)          # imm = 0x100
	xorl	%ebp, %ebp
	jmp	.LBB1_13
.LBB1_4:                                # %sw.default
	testl	%eax, %eax
	movl	$-18, %ebp
	cmovlel	%eax, %ebp
	leaq	152(%rbx), %rdx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	gs_scanner_error_object
	jmp	.LBB1_13
.LBB1_10:                               # %if.else.32
	movq	%rax, 624(%rbx)
	movw	$0, 24(%rcx)
	movw	$256, 16(%rcx)          # imm = 0x100
	xorl	%ebp, %ebp
.LBB1_13:                               # %sw.epilog.47
	testl	%r15d, %r15d
	jne	.LBB1_16
# BB#14:                                # %sw.epilog.47
	testl	%ebp, %ebp
	jg	.LBB1_16
# BB#15:                                # %if.then.49
	movq	8(%rbx), %rdi
	movl	$.L.str.7, %edx
	movq	%r14, %rsi
	callq	*24(%rdi)
.LBB1_16:                               # %cleanup
	movl	%ebp, %r12d
.LBB1_17:                               # %cleanup
	movl	%r12d, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	token_continue, .Lfunc_end1-token_continue
	.cfi_endproc

	.globl	ztokenexec
	.align	16, 0x90
	.type	ztokenexec,@function
ztokenexec:                             # @ztokenexec
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp26:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp27:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp28:
	.cfi_def_cfa_offset 32
	subq	$1376, %rsp             # imm = 0x560
.Ltmp29:
	.cfi_def_cfa_offset 1408
.Ltmp30:
	.cfi_offset %rbx, -32
.Ltmp31:
	.cfi_offset %r14, -24
.Ltmp32:
	.cfi_offset %r15, -16
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	movzwl	(%rbx), %eax
	andl	$16160, %eax            # imm = 0x3F20
	cmpl	$800, %eax              # imm = 0x320
	jne	.LBB2_1
# BB#3:                                 # %do.body.7
	movq	8(%rbx), %rax
	movzwl	264(%rax), %edx
	testl	%edx, %edx
	jne	.LBB2_7
# BB#4:                                 # %do.body.7
	movl	4(%rbx), %ecx
	cmpl	%ecx, %edx
	je	.LBB2_7
# BB#5:                                 # %land.lhs.true
	movzwl	266(%rax), %eax
	cmpl	%ecx, %eax
	jne	.LBB2_7
# BB#6:                                 # %if.then.22
	movq	%rbx, %rdi
	callq	file_switch_to_read
	testl	%eax, %eax
	js	.LBB2_10
.LBB2_7:                                # %do.end.31
	movq	536(%r14), %rax
	addq	$-16, %rax
	cmpq	%rax, 520(%r14)
	jbe	.LBB2_9
# BB#8:                                 # %if.then.38
	leaq	520(%r14), %rdi
	movl	$1, %esi
	callq	ref_stack_extend
	testl	%eax, %eax
	js	.LBB2_10
.LBB2_9:                                # %if.end.49
	leaq	8(%rsp), %r15
	xorl	%edx, %edx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	gs_scanner_init_options
	movl	$1, %edx
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	tokenexec_continue
	jmp	.LBB2_10
.LBB2_1:                                # %if.then
	movzbl	1(%rbx), %ecx
	movl	$-7, %eax
	cmpl	$3, %ecx
	je	.LBB2_10
# BB#2:                                 # %cond.true
	movq	%rbx, %rdi
	callq	check_type_failed
.LBB2_10:                               # %cleanup.51
	addq	$1376, %rsp             # imm = 0x560
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end2:
	.size	ztokenexec, .Lfunc_end2-ztokenexec
	.cfi_endproc

	.align	16, 0x90
	.type	tokenexec_continue,@function
tokenexec_continue:                     # @tokenexec_continue
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
	movl	%edx, %r14d
	movq	%rsi, %r12
	movq	%rdi, %r13
	addq	$-16, 624(%r13)
	leaq	520(%r13), %r15
	.align	16, 0x90
.LBB3_1:                                # %again
                                        # =>This Inner Loop Header: Depth=1
	movq	520(%r13), %rsi
	movq	536(%r13), %rax
	addq	$-16, %rax
	cmpq	%rax, %rsi
	jbe	.LBB3_4
# BB#2:                                 # %if.then
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	$1, %esi
	movq	%r15, %rdi
	callq	ref_stack_extend
	testl	%eax, %eax
	js	.LBB3_19
# BB#3:                                 # %if.then.if.end.10_crit_edge
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	(%r15), %rsi
.LBB3_4:                                # %if.end.10
                                        #   in Loop: Header=BB3_1 Depth=1
	addq	$16, %rsi
	movq	%r13, %rdi
	movq	%r12, %rdx
	callq	gs_scan_token
	movl	%eax, %ebp
	movl	%ebp, %eax
	cmpl	$5, %ebp
	ja	.LBB3_15
# BB#5:                                 # %if.end.10
                                        #   in Loop: Header=BB3_1 Depth=1
	xorl	%ebx, %ebx
	jmpq	*.LJTI3_0(,%rax,8)
.LBB3_12:                               # %sw.bb.49
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	$ztokenexec_continue, %ecx
	movq	%r13, %rdi
	movq	%r12, %rsi
	movl	%r14d, %edx
	callq	gs_scan_handle_refill
	movl	%eax, %ebx
	testl	%ebx, %ebx
	je	.LBB3_1
# BB#13:                                # %sw.bb.49
	movl	$5, %eax
	cmpl	$5, %ebx
	jne	.LBB3_16
	jmp	.LBB3_19
.LBB3_15:                               # %sw.default
	leaq	152(%r13), %rdx
	movq	%r13, %rdi
	movq	%r12, %rsi
	callq	gs_scanner_error_object
	movl	%ebp, %ebx
.LBB3_16:                               # %sw.epilog.60
	testl	%r14d, %r14d
	jne	.LBB3_18
# BB#17:                                # %if.then.61
	movq	1368(%r12), %rdi
	movl	$.L.str.7, %edx
	movq	%r12, %rsi
	callq	*24(%rdi)
.LBB3_18:                               # %cleanup.64
	movl	%ebx, %eax
.LBB3_19:                               # %cleanup.64
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB3_14:                               # %sw.bb.53
	movq	520(%r13), %rdx
	addq	$16, %rdx
	movq	$ztokenexec_continue, (%rsp)
	movq	%r13, %rdi
	movq	%r12, %rsi
	movl	%ebp, %ecx
	movl	%r14d, %r8d
	callq	ztoken_handle_comment
	jmp	.LBB3_19
.LBB3_6:                                # %sw.bb
	movq	(%r15), %rax
	movzwl	16(%rax), %ecx
	andl	$15552, %ecx            # imm = 0x3CC0
	cmpl	$1216, %ecx             # imm = 0x4C0
	jne	.LBB3_11
# BB#7:                                 # %do.body
	movq	624(%r13), %rcx
	addq	$16, %rcx
	cmpq	640(%r13), %rcx
	jbe	.LBB3_9
# BB#8:                                 # %if.then.32
	movl	$1, 688(%r13)
	movl	$-16, %eax
	jmp	.LBB3_19
.LBB3_10:                               # %sw.bb.44.loopexit
	movq	(%r15), %rax
.LBB3_11:                               # %sw.bb.44
	addq	$16, %rax
	movq	%rax, (%r15)
	movl	$5, %ebx
	jmp	.LBB3_16
.LBB3_9:                                # %if.else
	movq	%rcx, 624(%r13)
	movups	16(%rax), %xmm0
	movups	%xmm0, (%rcx)
	jmp	.LBB3_16
.Lfunc_end3:
	.size	tokenexec_continue, .Lfunc_end3-tokenexec_continue
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI3_0:
	.quad	.LBB3_6
	.quad	.LBB3_10
	.quad	.LBB3_16
	.quad	.LBB3_12
	.quad	.LBB3_14
	.quad	.LBB3_14

	.text
	.globl	ztokenexec_continue
	.align	16, 0x90
	.type	ztokenexec_continue,@function
ztokenexec_continue:                    # @ztokenexec_continue
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp46:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp47:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp48:
	.cfi_def_cfa_offset 32
.Ltmp49:
	.cfi_offset %rbx, -24
.Ltmp50:
	.cfi_offset %r14, -16
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	movzwl	(%rbx), %eax
	andl	$15872, %eax            # imm = 0x3E00
	cmpl	$2048, %eax             # imm = 0x800
	jne	.LBB4_2
# BB#1:                                 # %land.lhs.true
	movq	8(%r14), %rdi
	movq	8(%rbx), %rsi
	callq	*128(%rdi)
	movl	$st_scanner_state_dynamic, %ecx
	cmpq	%rcx, %rax
	je	.LBB4_3
.LBB4_2:                                # %if.then
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	check_type_failed       # TAILCALL
.LBB4_3:                                # %if.end
	movq	8(%rbx), %rsi
	xorl	%edx, %edx
	movq	%r14, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	tokenexec_continue      # TAILCALL
.Lfunc_end4:
	.size	ztokenexec_continue, .Lfunc_end4-ztokenexec_continue
	.cfi_endproc

	.globl	ztoken_handle_comment
	.align	16, 0x90
	.type	ztoken_handle_comment,@function
ztoken_handle_comment:                  # @ztoken_handle_comment
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
	pushq	%rax
.Ltmp57:
	.cfi_def_cfa_offset 64
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
	movl	%r8d, %ebp
	movq	%rdx, (%rsp)            # 8-byte Spill
	movq	%rsi, %r12
	movq	%rdi, %rbx
	movl	$.L.str, %r13d
	cmpl	$4, %ecx
	je	.LBB5_3
# BB#1:                                 # %entry
	movl	$-100, %eax
	cmpl	$5, %ecx
	jne	.LBB5_23
# BB#2:                                 # %sw.bb.1
	movl	$.L.str.1, %r13d
.LBB5_3:                                # %sw.epilog
	leaq	624(%rbx), %r15
	movq	640(%rbx), %rax
	subq	624(%rbx), %rax
	cmpq	$31, %rax
	jg	.LBB5_5
# BB#4:                                 # %if.then
	movl	$2, %esi
	movq	%r15, %rdi
	callq	ref_stack_extend
	testl	%eax, %eax
	js	.LBB5_23
.LBB5_5:                                # %if.end.8
	leaq	520(%rbx), %r14
	movq	520(%rbx), %rdx
	movq	536(%rbx), %rax
	addq	$-48, %rax
	cmpq	%rax, %rdx
	jbe	.LBB5_8
# BB#6:                                 # %if.then.15
	movl	$3, %esi
	movq	%r14, %rdi
	callq	ref_stack_extend
	testl	%eax, %eax
	js	.LBB5_23
# BB#7:                                 # %if.then.15.if.end.22_crit_edge
	movq	(%r14), %rdx
.LBB5_8:                                # %if.end.22
	movq	8(%rbx), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	addq	$48, %rdx
	movq	%r13, %rsi
	callq	names_enter_string
	testl	%eax, %eax
	js	.LBB5_23
# BB#9:                                 # %if.end.30
	testl	%ebp, %ebp
	je	.LBB5_12
# BB#10:                                # %if.then.31
	movq	8(%rbx), %rdi
	movl	$st_scanner_state_dynamic, %esi
	movl	$.L.str.2, %edx
	callq	*72(%rdi)
	movq	%rax, %rbp
	movl	$-25, %eax
	testq	%rbp, %rbp
	je	.LBB5_23
# BB#11:                                # %if.end.39
	movq	8(%rbx), %rax
	movq	%rax, 1368(%rbp)
	movl	$1368, %edx             # imm = 0x558
	movq	%rbp, %rdi
	movq	%r12, %rsi
	callq	memcpy
	movq	%rbp, %r12
.LBB5_12:                               # %if.end.42
	movq	64(%rsp), %rax
	cmpl	$0, 16(%r12)
	jne	.LBB5_14
# BB#13:                                # %if.then.44
	movq	(%r15), %rcx
	movq	(%rsp), %rdx            # 8-byte Reload
	movups	(%rdx), %xmm0
	movups	%xmm0, 32(%rcx)
.LBB5_14:                               # %if.end.48
	movq	520(%rbx), %rcx
	movq	%rax, 24(%rcx)
	movq	520(%rbx), %rax
	movw	$3968, 16(%rax)         # imm = 0xF80
	movl	$0, 20(%rax)
	movq	%r12, 40(%rax)
	movl	$2048, %eax             # imm = 0x800
	addl	56(%rbx), %eax
	movq	520(%rbx), %rsi
	movw	%ax, 32(%rsi)
	movq	8(%rbx), %rax
	addq	$368, %rbx              # imm = 0x170
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	addq	$48, %rsi
	callq	names_index
	movq	%rbx, %rdi
	movl	%eax, %esi
	callq	dstack_find_name_by_index
	movl	16(%r12), %edx
	testq	%rax, %rax
	je	.LBB5_15
# BB#18:                                # %if.else.98
	movq	(%r15), %rcx
	testl	%edx, %edx
	je	.LBB5_20
# BB#19:                                # %if.then.101
	leaq	16(%rcx), %rdx
	movq	%rdx, (%r15)
	movups	(%rcx), %xmm0
	movups	%xmm0, 16(%rcx)
	movl	$1, %edx
	jmp	.LBB5_21
.LBB5_15:                               # %if.then.86
	testl	%edx, %edx
	je	.LBB5_17
# BB#16:                                # %if.then.89
	addq	$-16, (%r15)
.LBB5_17:                               # %if.end.93
	movq	(%r14), %rax
	addq	$32, %rax
	jmp	.LBB5_22
.LBB5_20:                               # %if.else.107
	leaq	32(%rcx), %rdx
	movq	%rdx, (%r15)
	movl	$2, %edx
.LBB5_21:                               # %if.end.112
	shlq	$4, %rdx
	movups	(%r12), %xmm0
	movups	%xmm0, -16(%rcx,%rdx)
	movq	(%r14), %rcx
	movups	(%rax), %xmm0
	movups	%xmm0, 48(%rcx)
	movq	(%r14), %rax
	addq	$48, %rax
.LBB5_22:                               # %if.end.122
	movq	%rax, (%r14)
	movl	$5, %eax
.LBB5_23:                               # %cleanup.123
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	ztoken_handle_comment, .Lfunc_end5-ztoken_handle_comment
	.cfi_endproc

	.globl	ztoken_scanner_options
	.align	16, 0x90
	.type	ztoken_scanner_options,@function
ztoken_scanner_options:                 # @ztoken_scanner_options
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp64:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp65:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp66:
	.cfi_def_cfa_offset 32
.Ltmp67:
	.cfi_offset %rbx, -24
.Ltmp68:
	.cfi_offset %r14, -16
	movl	%esi, %ebx
	movq	%rdi, %r14
	leaq	(%rsp), %rdx
	movl	$.L.str.8, %esi
	callq	dict_find_string
	testl	%eax, %eax
	js	.LBB6_4
# BB#1:                                 # %if.then
	movq	(%rsp), %rax
	movzbl	1(%rax), %eax
	cmpl	$14, %eax
	jne	.LBB6_3
# BB#2:                                 # %if.then.8
	andl	$-17, %ebx
	jmp	.LBB6_4
.LBB6_3:                                # %if.else
	orl	$16, %ebx
.LBB6_4:                                # %if.end.10
	leaq	(%rsp), %rdx
	movl	$.L.str.9, %esi
	movq	%r14, %rdi
	callq	dict_find_string
	testl	%eax, %eax
	js	.LBB6_8
# BB#5:                                 # %if.then.1
	movq	(%rsp), %rax
	movzbl	1(%rax), %eax
	cmpl	$14, %eax
	jne	.LBB6_6
# BB#7:                                 # %if.then.8.1
	andl	$-5, %ebx
	jmp	.LBB6_8
.LBB6_6:                                # %if.else.1
	orl	$4, %ebx
.LBB6_8:                                # %if.end.10.1
	leaq	(%rsp), %rdx
	movl	$.L.str.10, %esi
	movq	%r14, %rdi
	callq	dict_find_string
	testl	%eax, %eax
	js	.LBB6_12
# BB#9:                                 # %if.then.2
	movq	(%rsp), %rax
	movzbl	1(%rax), %eax
	cmpl	$14, %eax
	jne	.LBB6_10
# BB#11:                                # %if.then.8.2
	andl	$-9, %ebx
	jmp	.LBB6_12
.LBB6_10:                               # %if.else.2
	orl	$8, %ebx
.LBB6_12:                               # %if.end.10.2
	leaq	(%rsp), %rdx
	movl	$.L.str.11, %esi
	movq	%r14, %rdi
	callq	dict_find_string
	testl	%eax, %eax
	js	.LBB6_16
# BB#13:                                # %if.then.3
	movq	(%rsp), %rax
	movzbl	1(%rax), %eax
	cmpl	$14, %eax
	jne	.LBB6_14
# BB#15:                                # %if.then.8.3
	andl	$-33, %ebx
	jmp	.LBB6_16
.LBB6_14:                               # %if.else.3
	orl	$32, %ebx
.LBB6_16:                               # %if.end.10.3
	leaq	(%rsp), %rdx
	movl	$.L.str.12, %esi
	movq	%r14, %rdi
	callq	dict_find_string
	testl	%eax, %eax
	js	.LBB6_20
# BB#17:                                # %if.then.4
	movq	(%rsp), %rax
	movzbl	1(%rax), %eax
	cmpl	$14, %eax
	jne	.LBB6_18
# BB#19:                                # %if.then.8.4
	andl	$-65, %ebx
	jmp	.LBB6_20
.LBB6_18:                               # %if.else.4
	orl	$64, %ebx
.LBB6_20:                               # %if.end.10.4
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end6:
	.size	ztoken_scanner_options, .Lfunc_end6-ztoken_scanner_options
	.cfi_endproc

	.globl	ztoken_get_scanner_option
	.align	16, 0x90
	.type	ztoken_get_scanner_option,@function
ztoken_get_scanner_option:              # @ztoken_get_scanner_option
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp69:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp70:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp71:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp72:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp73:
	.cfi_def_cfa_offset 48
.Ltmp74:
	.cfi_offset %rbx, -48
.Ltmp75:
	.cfi_offset %r12, -40
.Ltmp76:
	.cfi_offset %r14, -32
.Ltmp77:
	.cfi_offset %r15, -24
.Ltmp78:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movl	%esi, %r15d
	movq	%rdi, %r12
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB7_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	$-1, %eax
	cmpq	$-80, %rbx
	je	.LBB7_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	named_options+64(%rbx), %rbp
	movq	%rbp, %rdi
	callq	strlen
	movq	8(%r12), %rdx
	movl	4(%r12), %ecx
	movq	%rbp, %rdi
	movl	%eax, %esi
	callq	bytes_compare
	addq	$-16, %rbx
	testl	%eax, %eax
	jne	.LBB7_1
# BB#3:                                 # %if.then
	movq	named_options+80(%rbx), %rax
	movq	%rax, (%r14)
	testl	named_options+88(%rbx), %r15d
	setne	%al
	movzbl	%al, %eax
.LBB7_4:                                # %cleanup
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	ztoken_get_scanner_option, .Lfunc_end7-ztoken_get_scanner_option
	.cfi_endproc

	.align	16, 0x90
	.type	ztoken_continue,@function
ztoken_continue:                        # @ztoken_continue
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp79:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp80:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp81:
	.cfi_def_cfa_offset 32
.Ltmp82:
	.cfi_offset %rbx, -24
.Ltmp83:
	.cfi_offset %r14, -16
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	movzwl	(%rbx), %eax
	andl	$15872, %eax            # imm = 0x3E00
	cmpl	$2048, %eax             # imm = 0x800
	jne	.LBB8_2
# BB#1:                                 # %land.lhs.true
	movq	8(%r14), %rdi
	movq	8(%rbx), %rsi
	callq	*128(%rdi)
	movl	$st_scanner_state_dynamic, %ecx
	cmpq	%rcx, %rax
	je	.LBB8_3
.LBB8_2:                                # %if.then
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	check_type_failed       # TAILCALL
.LBB8_3:                                # %if.end
	movq	8(%rbx), %rsi
	xorl	%edx, %edx
	movq	%r14, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	token_continue          # TAILCALL
.Lfunc_end8:
	.size	ztoken_continue, .Lfunc_end8-ztoken_continue
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%ProcessComment"
	.size	.L.str, 16

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"%ProcessDSCComment"
	.size	.L.str.1, 19

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"ztoken_handle_comment"
	.size	.L.str.2, 22

	.type	named_options,@object   # @named_options
	.section	.rodata,"a",@progbits
	.align	16
named_options:
	.quad	.L.str.8
	.long	16                      # 0x10
	.zero	4
	.quad	.L.str.9
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.10
	.long	8                       # 0x8
	.zero	4
	.quad	.L.str.11
	.long	32                      # 0x20
	.zero	4
	.quad	.L.str.12
	.long	64                      # 0x40
	.zero	4
	.size	named_options, 80

	.type	.L.str.3,@object        # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"1token"
	.size	.L.str.3, 7

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"1.tokenexec"
	.size	.L.str.4, 12

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"2%ztoken_continue"
	.size	.L.str.5, 18

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"2%ztokenexec_continue"
	.size	.L.str.6, 22

	.type	ztoken_op_defs,@object  # @ztoken_op_defs
	.section	.rodata,"a",@progbits
	.globl	ztoken_op_defs
	.align	16
ztoken_op_defs:
	.quad	.L.str.3
	.quad	ztoken
	.quad	.L.str.4
	.quad	ztokenexec
	.quad	.L.str.5
	.quad	ztoken_continue
	.quad	.L.str.6
	.quad	ztokenexec_continue
	.zero	16
	.size	ztoken_op_defs, 80

	.type	.L.str.7,@object        # @.str.7
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.7:
	.asciz	"token_continue"
	.size	.L.str.7, 15

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"PDFScanRules"
	.size	.L.str.8, 13

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"ProcessComment"
	.size	.L.str.9, 15

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"ProcessDSCComment"
	.size	.L.str.10, 18

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"PDFScanInvNum"
	.size	.L.str.11, 14

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"PDFScanUnsigned"
	.size	.L.str.12, 16


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
